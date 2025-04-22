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
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
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
	.size	assemble_sparse_tensor, .Lfunc_end2-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	24                              # 0x18
	.quad	50                              # 0x32
	.quad	68                              # 0x44
	.quad	100                             # 0x64
	.quad	126                             # 0x7e
	.quad	152                             # 0x98
	.quad	177                             # 0xb1
	.quad	203                             # 0xcb
	.quad	230                             # 0xe6
	.quad	253                             # 0xfd
	.quad	281                             # 0x119
	.quad	304                             # 0x130
	.quad	334                             # 0x14e
	.quad	354                             # 0x162
	.quad	378                             # 0x17a
	.quad	404                             # 0x194
	.quad	430                             # 0x1ae
	.quad	451                             # 0x1c3
	.quad	474                             # 0x1da
	.quad	508                             # 0x1fc
	.quad	536                             # 0x218
	.quad	554                             # 0x22a
	.quad	588                             # 0x24c
	.quad	608                             # 0x260
	.quad	632                             # 0x278
	.quad	647                             # 0x287
	.quad	677                             # 0x2a5
	.quad	708                             # 0x2c4
	.quad	731                             # 0x2db
	.quad	754                             # 0x2f2
	.quad	778                             # 0x30a
	.quad	802                             # 0x322
	.quad	832                             # 0x340
	.quad	865                             # 0x361
	.quad	893                             # 0x37d
	.quad	927                             # 0x39f
	.quad	953                             # 0x3b9
	.quad	977                             # 0x3d1
	.quad	996                             # 0x3e4
	.quad	1018                            # 0x3fa
	.quad	1040                            # 0x410
	.quad	1065                            # 0x429
	.quad	1087                            # 0x43f
	.quad	1114                            # 0x45a
	.quad	1139                            # 0x473
	.quad	1163                            # 0x48b
	.quad	1184                            # 0x4a0
	.quad	1200                            # 0x4b0
	.quad	1230                            # 0x4ce
	.quad	1255                            # 0x4e7
	.quad	1276                            # 0x4fc
	.quad	1298                            # 0x512
	.quad	1324                            # 0x52c
	.quad	1353                            # 0x549
	.quad	1376                            # 0x560
	.quad	1402                            # 0x57a
	.quad	1429                            # 0x595
	.quad	1457                            # 0x5b1
	.quad	1473                            # 0x5c1
	.quad	1500                            # 0x5dc
	.quad	1526                            # 0x5f6
	.quad	1549                            # 0x60d
	.quad	1573                            # 0x625
	.quad	1595                            # 0x63b
	.quad	1618                            # 0x652
	.quad	1641                            # 0x669
	.quad	1664                            # 0x680
	.quad	1679                            # 0x68f
	.quad	1710                            # 0x6ae
	.quad	1737                            # 0x6c9
	.quad	1765                            # 0x6e5
	.quad	1789                            # 0x6fd
	.quad	1818                            # 0x71a
	.quad	1847                            # 0x737
	.quad	1876                            # 0x754
	.quad	1910                            # 0x776
	.quad	1943                            # 0x797
	.quad	1970                            # 0x7b2
	.quad	1991                            # 0x7c7
	.quad	2012                            # 0x7dc
	.quad	2037                            # 0x7f5
	.quad	2066                            # 0x812
	.quad	2087                            # 0x827
	.quad	2110                            # 0x83e
	.quad	2131                            # 0x853
	.quad	2150                            # 0x866
	.quad	2174                            # 0x87e
	.quad	2203                            # 0x89b
	.quad	2232                            # 0x8b8
	.quad	2262                            # 0x8d6
	.quad	2290                            # 0x8f2
	.quad	2316                            # 0x90c
	.quad	2334                            # 0x91e
	.quad	2357                            # 0x935
	.quad	2381                            # 0x94d
	.quad	2403                            # 0x963
	.quad	2430                            # 0x97e
	.quad	2454                            # 0x996
	.quad	2472                            # 0x9a8
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
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
	.quad	0x3fbb19d66adb402d              # double 0.105863
	.quad	0x3fea1422ccb3a259              # double 0.81495799999999996
	.quad	0x3fc3ac2df0d41312              # double 0.153692
	.quad	0x3fe7dd872f33ca32              # double 0.74579200000000001
	.quad	0x3fe00e0653005815              # double 0.50171200000000005
	.quad	0x3fe4723033a4723b              # double 0.63893900000000003
	.quad	0x3fe81fdbd2fa0d78              # double 0.75388900000000003
	.quad	0x3fe4ebdb1a6d6990              # double 0.65379100000000001
	.quad	0x3fe63b85e80bed74              # double 0.69476599999999999
	.quad	0x3fe4ccdb7ae5796c              # double 0.650007
	.quad	0x3f90b06c43f5f916              # double 0.016298
	.quad	0x3fce3e39f77292c5              # double 0.23627400000000001
	.quad	0x3febc7c957cd466f              # double 0.86813799999999997
	.quad	0x3fea85ccc89b0ee5              # double 0.82883300000000004
	.quad	0x3fd12e90364388ec              # double 0.26846700000000001
	.quad	0x3fe9a79dd3bafd97              # double 0.80171099999999995
	.quad	0x3fd71fc8f32378ab              # double 0.361315
	.quad	0x3fd0afa7221858bc              # double 0.26072099999999998
	.quad	0x3fcfcbf6e3f78bbd              # double 0.24841199999999999
	.quad	0x3fc13c03bc4d22c9              # double 0.13464400000000001
	.quad	0x3fee823854046413              # double 0.95339600000000002
	.quad	0x3f9b81733226c3b9              # double 0.026860999999999999
	.quad	0x3fd4f81626b2f230              # double 0.32764199999999999
	.quad	0x3fe3521144cbe1eb              # double 0.60376799999999997
	.quad	0x3fdf6fb09203a323              # double 0.49119200000000002
	.quad	0x3fc8c80c73abc947              # double 0.193605
	.quad	0x3fe649ea9a3d2d88              # double 0.696523
	.quad	0x3fe25a09cc319c5a              # double 0.57349099999999997
	.quad	0x3fe7140357a35504              # double 0.72119299999999997
	.quad	0x3fc480f98fa37692              # double 0.160186
	.quad	0x3fddec41dd1a21ea              # double 0.46754499999999999
	.quad	0x3fd223bff8a8f3aa              # double 0.28343200000000002
	.quad	0x3fb5ee99a62ed352              # double 0.085671999999999998
	.quad	0x3fd7748a159817b9              # double 0.36648799999999998
	.quad	0x3f819d66adb402d1              # double 0.0086009999999999992
	.quad	0x3fe252c7b890d5a6              # double 0.57260500000000003
	.quad	0x3fb78d2e514c22ee              # double 0.091997999999999996
	.quad	0x3fdce09fe86833c6              # double 0.45121
	.quad	0x3fce2773e24febd1              # double 0.23557900000000001
	.quad	0x3fe31b9b66f9335d              # double 0.59711999999999998
	.quad	0x3fcd113836a832ba              # double 0.22708800000000001
	.quad	0x3fe2e5604189374c              # double 0.59050000000000002
	.quad	0x3fefc2e9899bf594              # double 0.99254299999999995
	.quad	0x3fc8dadb8348f53c              # double 0.19417899999999999
	.quad	0x3fb697e132b55ef2              # double 0.088255
	.quad	0x3fe543fe5c91d14e              # double 0.66454999999999997
	.quad	0x3fe24e13f4a98aa8              # double 0.57203099999999996
	.quad	0x3fe153543aeab799              # double 0.54142199999999996
	.quad	0x3fe40df58c08b75f              # double 0.62670400000000004
	.quad	0x3fef59f90539fba4              # double 0.97973299999999996
	.quad	0x3fdc2be8bc169c24              # double 0.44018000000000002
	.quad	0x3fe91dcb5781c715              # double 0.784887
	.quad	0x3fd8a7c5ac471b48              # double 0.38524000000000003
	.quad	0x3fd8232096787ce9              # double 0.37714399999999998
	.quad	0x3fe19355475a31a5              # double 0.54923500000000003
	.quad	0x3fefa66fd651b0cd              # double 0.98906700000000002
	.quad	0x3fefa50f840181e0              # double 0.98889899999999997
	.quad	0x3fdc09246bf01323              # double 0.438058
	.quad	0x3fd37c17a89331a1              # double 0.30444900000000003
	.quad	0x3fefb4b51372a38c              # double 0.99080900000000005
	.quad	0x3fe51b823c85c24c              # double 0.65960799999999997
	.quad	0x3fcf7739f340d4dc              # double 0.24582599999999999
	.quad	0x3fe6ef7a0b5ed8d3              # double 0.71673299999999995
	.quad	0x3fcfac471b478423              # double 0.247445
	.quad	0x3fe3d59d55e6bc62              # double 0.61982599999999999
	.quad	0x3fea1e4b44a1f080              # double 0.81619799999999998
	.quad	0x3fd704295a6c5d20              # double 0.35962899999999998
	.quad	0x3fe2e703afb7e910              # double 0.5907
	.quad	0x3feff97cc39ffd61              # double 0.999205
	.quad	0x3fe465e892253112              # double 0.63744000000000001
	.quad	0x3fe2690ff9724745              # double 0.57532499999999998
	.quad	0x3fc274afd5454153              # double 0.14418600000000001
	.quad	0x3feb787f023e9ea1              # double 0.85845899999999997
	.quad	0x3fd08d5c74751ce3              # double 0.25862800000000002
	.quad	0x3feb2435696e58a3              # double 0.84816999999999998
	.quad	0x3fd9099e0e73604a              # double 0.391212
	.quad	0x3fe5e5f9591cd1c8              # double 0.68432300000000001
	.quad	0x3fc660242d05f288              # double 0.17480899999999999
	.quad	0x3fe6f562174c4ce0              # double 0.71745400000000004
	.quad	0x3fdd5c67dfe32a06              # double 0.45876499999999998
	.quad	0x3fcff8f47304039b              # double 0.24978500000000001
	.quad	0x3f8f7dfa00e27e0f              # double 0.015377
	.quad	0x3fc20c49ba5e353f              # double 0.14099999999999999
	.quad	0x3fd30c9d9d3458cd              # double 0.29764499999999999
	.quad	0x3fd989dadfb506dd              # double 0.39903899999999998
	.quad	0x3fd78deb0fadf2ed              # double 0.368037
	.quad	0x3fdc4fd2a62aa194              # double 0.44237199999999999
	.quad	0x3fe08fc504816f00              # double 0.51754999999999995
	.quad	0x3fe343547e06961c              # double 0.60196899999999998
	.quad	0x3fe1043c3a42f1ed              # double 0.53176699999999999
	.quad	0x3fe6aaef2c732592              # double 0.70836600000000005
	.quad	0x3fe7be37de939eae              # double 0.74197000000000002
	.quad	0x3fc3fe32a0663c75              # double 0.156195
	.quad	0x3fe963a7daa4fca4              # double 0.79341499999999998
	.quad	0x3fb168a50507a6bd              # double 0.068002999999999994
	.quad	0x3fa01450efdc9c4e              # double 0.031405000000000002
	.quad	0x3fe0941e9af5ba2c              # double 0.51808100000000001
	.quad	0x3fde9d7774aba387              # double 0.47836099999999998
	.quad	0x3fe3179bfdf7e804              # double 0.59663200000000005
	.quad	0x3fe1e0a41a261bf3              # double 0.55867199999999995
	.quad	0x3fe36f4be835dedf              # double 0.60733599999999999
	.quad	0x3fc3d96e9bbf0dc7              # double 0.15507299999999999
	.quad	0x3fc52ffd1dcd7061              # double 0.16552700000000001
	.quad	0x3fd207e9d94d0dd0              # double 0.28173300000000001
	.quad	0x3fb3b9389b52007e              # double 0.077045000000000002
	.quad	0x3fe4edb50f40e5a3              # double 0.65401699999999996
	.quad	0x3fe1d23d4f15e7c9              # double 0.55691400000000002
	.quad	0x3fe8291d9b1b79d9              # double 0.755019
	.quad	0x3fe52b6d00b45ae6              # double 0.661551
	.quad	0x3fd67457c0b13598              # double 0.35085100000000002
	.quad	0x3fee5dfc9ff92f2b              # double 0.94897299999999996
	.quad	0x3fed2d0c3d25247d              # double 0.91174900000000003
	.quad	0x3fc8ae642bf9830e              # double 0.19282199999999999
	.quad	0x3fe63ac2df0d4131              # double 0.69467299999999998
	.quad	0x3fd55271bcdbbe01              # double 0.33315699999999998
	.quad	0x3fc6a0c282c6ef3d              # double 0.17678099999999999
	.quad	0x3fb771a7e3087875              # double 0.091578000000000007
	.quad	0x3fdec89f40a2877f              # double 0.48099500000000001
	.quad	0x3fd8ab474107314d              # double 0.38545400000000002
	.quad	0x3fbc74b838c111ae              # double 0.111156
	.quad	0x3fdec14c660a2014              # double 0.48054799999999998
	.quad	0x3feb8b6b6e0d23d5              # double 0.86076900000000001
	.quad	0x3fc407ee0b0af5fd              # double 0.15649199999999999
	.quad	0x3fe5af6e82949a56              # double 0.67766499999999996
	.quad	0x3fe707dd44135547              # double 0.71970999999999996
	.quad	0x3fb7d5dc4007570c              # double 0.093106999999999995
	.quad	0x3fdb6feb4a66559f              # double 0.42870599999999998
	.quad	0x3fe7fed20296b335              # double 0.74985599999999997
	.quad	0x3f96b6177ea1c68f              # double 0.022179000000000001
	.quad	0x3fe29018e757928e              # double 0.58008999999999999
	.quad	0x3fa1e6ab9b23dd55              # double 0.034963000000000001
	.quad	0x3fdd40b780346dc6              # double 0.45707500000000001
	.quad	0x3fd6fb4c3c18b503              # double 0.35908800000000002
	.quad	0x3fec2398201cd5fa              # double 0.87934500000000004
	.quad	0x3fef1f0c34c1a8ac              # double 0.97253999999999996
	.quad	0x3fa051eb851eb852              # double 0.031875000000000001
	.quad	0x3fa3edfa43fe5c92              # double 0.038925000000000001
	.quad	0x3fe753f1843c3a43              # double 0.72899700000000001
	.quad	0x3fe7f1d1d4738a3b              # double 0.74826899999999996
	.quad	0x3fd354da4ce8101f              # double 0.30205399999999999
	.quad	0x3fe5c2dcf4623d0c              # double 0.680037
	.quad	0x3fd33a365cb35f3d              # double 0.30042799999999997
	.quad	0x3fef4bcf0b6b6e0d              # double 0.97800399999999998
	.quad	0x3fe378ab0c88a47f              # double 0.60848000000000002
	.quad	0x3fddef6b5d462c34              # double 0.46773799999999999
	.quad	0x3fe91df3300de4c5              # double 0.78490599999999999
	.quad	0x3fd993ab430f4949              # double 0.39963799999999999
	.quad	0x3fcfd8b60f1b25f6              # double 0.24880099999999999
	.quad	0x3fd841e9af5ba2be              # double 0.379023
	.quad	0x3fec3af533f42353              # double 0.88219700000000001
	.quad	0x3fcf005814940bbb              # double 0.242198
	.quad	0x3fdf715c63ae2542              # double 0.49129400000000001
	.quad	0x3fed044ae85b9e8c              # double 0.90677399999999996
	.quad	0x3feb0a0b1bbcf4e8              # double 0.84497599999999995
	.quad	0x3fdd2ea0fd3b29a2              # double 0.45597100000000002
	.quad	0x3fd532b990afe60c              # double 0.33122099999999999
	.quad	0x3fbbad9f0a1be2b5              # double 0.10811800000000001
	.quad	0x3fefa24463065f96              # double 0.98855800000000005
	.quad	0x3fef812599ed7c70              # double 0.98451500000000003
	.quad	0x3fe1f314ca925fe9              # double 0.56092299999999995
	.quad	0x3fec03a7546d3f9e              # double 0.87544599999999995
	.quad	0x3fdf292c49342678              # double 0.48688799999999999
	.quad	0x3fe8739f340d4dc6              # double 0.76411399999999996
	.quad	0x3fcb1a543f1c7582              # double 0.21174100000000001
	.quad	0x3fc60e1f7d73c925              # double 0.17230599999999999
	.quad	0x3fe5394face67d78              # double 0.663246
	.quad	0x3fdefbca1059ea57              # double 0.48411799999999999
	.quad	0x3fe90c154c985f07              # double 0.782725
	.quad	0x3fecb4b2fa93af75              # double 0.89705800000000002
	.quad	0x3fed213c254a3c64              # double 0.91030699999999997
	.quad	0x3fed859641f64495              # double 0.92255699999999996
	.quad	0x3feba3c85c24c405              # double 0.86374300000000004
	.quad	0x3fc67136a400fba9              # double 0.17533000000000001
	.quad	0x3fe806d71f36262d              # double 0.75083500000000003
	.quad	0x3feb408fa7a85016              # double 0.85163100000000003
	.quad	0x3fea3f4eca686e7e              # double 0.82022799999999996
	.quad	0x3fe4fc49fd7a13c2              # double 0.65579699999999996
	.quad	0x3fe9552e2fbe33ad              # double 0.79164800000000002
	.quad	0x3fdbaf102363b257              # double 0.43256
	.quad	0x3fec507852f7f499              # double 0.88482300000000003
	.quad	0x3fe983d577963993              # double 0.79734300000000002
	.quad	0x3fdc42b734b51373              # double 0.44157200000000002
	.quad	0x3fe7272ead9274e2              # double 0.72353299999999998
	.quad	0x3fecf7ccc0379314              # double 0.90524899999999997
	.quad	0x3fdd24e160d887ec              # double 0.455376
	.quad	0x3fe54dd93c46d82c              # double 0.66575300000000004
	.quad	0x3fd6ec7c957cd467              # double 0.358184
	.quad	0x3fe6dcfede97d06c              # double 0.71447700000000003
	.quad	0x3fe55004fb1183b6              # double 0.666018
	.quad	0x3fe17cd466f5019f              # double 0.54648799999999997
	.quad	0x3fe215f45e0b4e12              # double 0.56518000000000002
	.quad	0x3fe8af5989df1173              # double 0.77140500000000001
	.quad	0x3fd35568e820e62a              # double 0.30208800000000002
	.quad	0x3fd2f605ab3aabcd              # double 0.29626599999999997
	.quad	0x3fec2b6f19934efd              # double 0.88030200000000003
	.quad	0x3fe2b953dea465a5              # double 0.58512299999999995
	.quad	0x3fdbc610f0e90bc8              # double 0.43396400000000002
	.quad	0x3fecb17acc4ef88c              # double 0.89666500000000004
	.quad	0x3fd70995aaf78fef              # double 0.35996
	.quad	0x3fd58a3b57c4e2f3              # double 0.33656199999999997
	.quad	0x3fe605100a393ee6              # double 0.68811800000000001
	.quad	0x3fd9163fdd65a145              # double 0.39198300000000003
	.quad	0x3fc9c89f40a2877f              # double 0.201435
	.quad	0x3fd4e496ededaec5              # double 0.32645200000000002
	.quad	0x3fe2ed02cd39da16              # double 0.59143199999999996
	.quad	0x3fe576188b11409a              # double 0.67066599999999998
	.quad	0x3fb825aee631f8a1              # double 0.094325000000000006
	.quad	0x3fc28709741d084f              # double 0.14474600000000001
	.quad	0x3fe0feed45e9185d              # double 0.53111900000000001
	.quad	0x3feb5d56f32bdc27              # double 0.85514400000000002
	.quad	0x3fc4ddc6195464dc              # double 0.163018
	.quad	0x3fe4195aaf78feef              # double 0.62809499999999996
	.quad	0x3fd44a16a4873366              # double 0.31702200000000003
	.quad	0x3fb4bc169c23b795              # double 0.080994999999999998
	.quad	0x3fea39eadd590c0b              # double 0.81957000000000002
	.quad	0x3fc17de0d66f0cfe              # double 0.136654
	.quad	0x3fead1676640a6b9              # double 0.83806199999999997
	.quad	0x3fe344a83b1d0c80              # double 0.60213099999999997
	.quad	0x3fe620e1f7d73c92              # double 0.69151399999999996
	.quad	0x3f9948dc11e42e12              # double 0.024691999999999999
	.quad	0x3fc96aceaaf35e31              # double 0.198572
	.quad	0x3febcd551d68c693              # double 0.868815
	.quad	0x3fe3b6933a0407cc              # double 0.61603699999999995
	.quad	0x3fe008fc9363f573              # double 0.50109700000000001
	.quad	0x3fc31d606317268d              # double 0.14933399999999999
	.quad	0x3fdfe9185cee17a0              # double 0.49860199999999999
	.quad	0x3fe584c059210386              # double 0.67245500000000002
	.quad	0x3fcb5d031055b899              # double 0.21377599999999999
	.quad	0x3fef1357603925bb              # double 0.97111099999999994
	.quad	0x3fb59f4d37c1376d              # double 0.084461999999999995
	.quad	0x3fecd59d55e6bc62              # double 0.90107599999999999
	.quad	0x3fd59c62a1b5c7ce              # double 0.33767000000000003
	.quad	0x3fcfdc26dce39b45              # double 0.24890599999999999
	.quad	0x3f2040bfe3b03e21              # double 1.2400000000000001E-4
	.quad	0x3fdfba83f4eca687              # double 0.49575900000000001
	.quad	0x3fd18800eae18aca              # double 0.273926
	.quad	0x3fe42df2ecf20642              # double 0.63060899999999998
	.quad	0x3feb7bc7f77af640              # double 0.85885999999999996
	.quad	0x3fc05b9e8c47a17f              # double 0.12779599999999999
	.quad	0x3fd5227d028a1dfc              # double 0.33023000000000002
	.quad	0x3fc523f67f4dbdf9              # double 0.16516
	.quad	0x3fd04245f5ad96a7              # double 0.25404500000000002
	.quad	0x3feebf290abb44e5              # double 0.96083499999999999
	.quad	0x3fd5201cd5f99c39              # double 0.33008500000000002
	.quad	0x3f94d4cb9ecf6380              # double 0.020343
	.quad	0x3fea345ae5ffa3ba              # double 0.81889100000000004
	.quad	0x3fe3c4da9003eea2              # double 0.61778
	.quad	0x3febfe974a3400b9              # double 0.87482800000000005
	.quad	0x3fac9ff92f2b66b6              # double 0.055907999999999999
	.quad	0x3fb86540cc78e9f7              # double 0.095295000000000005
	.quad	0x3fe391afc04c8bca              # double 0.61153400000000002
	.quad	0x3fb5c8216c61522a              # double 0.085084999999999993
	.quad	0x3fe4b92c061847f5              # double 0.64760399999999996
	.quad	0x3fe8c93c89f40a28              # double 0.77456499999999995
	.quad	0x3fedaf9ebe9c8861              # double 0.92768799999999996
	.quad	0x3febe9ccb7d41744              # double 0.87229
	.quad	0x3fea4f95d4e8fb01              # double 0.82221500000000003
	.quad	0x3fd079fec99f1ae3              # double 0.25744600000000001
	.quad	0x3fa3b2dd377e1b8f              # double 0.038474000000000001
	.quad	0x3fe4a0dbad3a604e              # double 0.64463599999999999
	.quad	0x3fe49ebc83a96d4c              # double 0.64437699999999998
	.quad	0x3fce611fd5885d31              # double 0.23733899999999999
	.quad	0x3fbea80064a9cdc4              # double 0.119751
	.quad	0x3f95be1a8262456f              # double 0.021232999999999998
	.quad	0x3fe88d002e2328fa              # double 0.76721200000000001
	.quad	0x3fe7577d955714ba              # double 0.72943000000000002
	.quad	0x3fb957689ca18bd6              # double 0.098989999999999994
	.quad	0x3fc17e23f24d8fd6              # double 0.13666200000000001
	.quad	0x3feb741f212d7732              # double 0.85792500000000005
	.quad	0x3fce8e68e3ef2841              # double 0.23872099999999999
	.quad	0x3fe2bfdb4cc25072              # double 0.58592
	.quad	0x3f9647778dd616f8              # double 0.021756999999999999
	.quad	0x3febf74256bca537              # double 0.87393299999999996
	.quad	0x3fd2baf533f42353              # double 0.292661
	.quad	0x3fe3854ef459d990              # double 0.61002299999999998
	.quad	0x3fd4aa6d26740810              # double 0.32290200000000002
	.quad	0x3fce049ecb31c21a              # double 0.234516
	.quad	0x3fe292c061847f56              # double 0.58041399999999999
	.quad	0x3fe771e0828c36db              # double 0.73265100000000005
	.quad	0x3fe74f4a558ea7ce              # double 0.72842899999999999
	.quad	0x3fea76ab5807fed2              # double 0.826986
	.quad	0x3fd5d716d2aa5c5f              # double 0.34125299999999997
	.quad	0x3fe1b88ca3e7d135              # double 0.55377799999999999
	.quad	0x3feea1db877ab325              # double 0.95725800000000005
	.quad	0x3fedb4549b62c775              # double 0.92826299999999995
	.quad	0x3fce10385c67dfe3              # double 0.23487
	.quad	0x3fe9d7cf5f4e4431              # double 0.80759400000000003
	.quad	0x3fe7182ecaeea63b              # double 0.72170199999999995
	.quad	0x3fdeca3e7d135116              # double 0.48109400000000002
	.quad	0x3fed7a89331a08c0              # double 0.92120800000000002
	.quad	0x3fd8cf28c79f6662              # double 0.38764399999999999
	.quad	0x3fd98f2170931013              # double 0.39936100000000002
	.quad	0x3fe0c27a63736cdf              # double 0.52373999999999998
	.quad	0x3fd59656eefa1e3f              # double 0.33730100000000002
	.quad	0x3fe3ca42aed13943              # double 0.61843999999999999
	.quad	0x3fc1ce18266772d6              # double 0.139102
	.quad	0x3fbe936c58eeae9f              # double 0.119437
	.quad	0x3fdc6e6106ab14ec              # double 0.44423699999999999
	.quad	0x3fd9b59578a2a90d              # double 0.40170800000000001
	.quad	0x3fea7a13c254a3c6              # double 0.82740199999999997
	.quad	0x3fe090dbf0563ed1              # double 0.517683
	.quad	0x3fdcfb3fa6defc7a              # double 0.45283499999999999
	.quad	0x3fe0b293d102bc73              # double 0.52179900000000001
	.quad	0x3fcc2d16b97fe8ee              # double 0.22012599999999999
	.quad	0x3fe4191361dc93ea              # double 0.62806099999999998
	.quad	0x3fdca0663c74fb55              # double 0.44729000000000002
	.quad	0x3fdcae297396d091              # double 0.44812999999999997
	.quad	0x3fea69e5e2478855              # double 0.82542700000000002
	.quad	0x3fe4986338b47c74              # double 0.64360200000000001
	.quad	0x3fe2d2a1f8e3ac0c              # double 0.58821199999999996
	.quad	0x3fd2baf102363b25              # double 0.29265999999999998
	.quad	0x3fe1e81a9b8cb8e1              # double 0.55958300000000005
	.quad	0x3febec2699c7bcc3              # double 0.87257700000000005
	.quad	0x3fb136933a0407cc              # double 0.067238999999999993
	.quad	0x3fe50a0b1bbcf4e8              # double 0.65747599999999995
	.quad	0x3fd7b966be7afa72              # double 0.37069099999999999
	.quad	0x3fda625204af9229              # double 0.41225099999999998
	.quad	0x3fe8395c42203600              # double 0.75700199999999995
	.quad	0x3fedee264e48626f              # double 0.93532099999999996
	.quad	0x3fc77036c9c0a8d2              # double 0.183112
	.quad	0x3fd49b5a63f9a49c              # double 0.32198199999999999
	.quad	0x3fe684b5dcc63f14              # double 0.70369999999999999
	.quad	0x3fe67995ee136e72              # double 0.70234200000000002
	.quad	0x3fe053e2d6238da4              # double 0.51024000000000003
	.quad	0x3fc6cdc8754f3776              # double 0.17815500000000001
	.quad	0x3fe2578c436fc159              # double 0.573187
	.quad	0x3fd408787485e3da              # double 0.31301699999999999
	.quad	0x3fe422a2c2374795              # double 0.62922800000000001
	.quad	0x3feca5093964a59c              # double 0.89514599999999999
	.quad	0x3fb7e9424e592967              # double 0.093403
	.quad	0x3fe83024f6598e11              # double 0.75587700000000002
	.quad	0x3fd944a1f080303c              # double 0.394814
	.quad	0x3fe8e4ece9a2c669              # double 0.777945
	.quad	0x3fea86cca2db61bb              # double 0.828955
	.quad	0x3fe78f6cefed6345              # double 0.73625799999999997
	.quad	0x3fd40f6ad70e6f2f              # double 0.31344100000000003
	.quad	0x3fdbcfb762d83c6d              # double 0.43455300000000002
	.quad	0x3fdb1e5c0b999136              # double 0.42372799999999999
	.quad	0x3fb8cf7caa7589f0              # double 0.096916000000000002
	.quad	0x3feca497fa5d28d0              # double 0.895092
	.quad	0x3fead275ee99a62f              # double 0.83819100000000002
	.quad	0x3fdd4727dcbddb98              # double 0.45746799999999999
	.quad	0x3fe4afee6fb4c3c2              # double 0.64647600000000005
	.quad	0x3fd3147ae147ae14              # double 0.29812499999999997
	.quad	0x3fc9b6d43d03968d              # double 0.20089199999999999
	.quad	0x3fdd06fef7c243dd              # double 0.45355200000000001
	.quad	0x3fabb6ed6777079e              # double 0.054129999999999998
	.quad	0x3fd387980f55de59              # double 0.30515100000000001
	.quad	0x3fe152fa0d77b7c8              # double 0.54137900000000005
	.quad	0x3fed7f8ec0f88334              # double 0.921821
	.quad	0x3fe4a8ac5c13fd0d              # double 0.64559
	.quad	0x3fe4923c42a66dbd              # double 0.64285099999999995
	.quad	0x3feacde3b8a19c9d              # double 0.83763299999999996
	.quad	0x3fdc01b866e43aa8              # double 0.43760500000000002
	.quad	0x3fa32d905c033615              # double 0.037456999999999997
	.quad	0x3fee5e353f7ced91              # double 0.94899999999999995
	.quad	0x3fdb2bae03b3e9a7              # double 0.424541
	.quad	0x3fb4de8f6cefed63              # double 0.081520999999999996
	.quad	0x3fc7972474538ef3              # double 0.18429999999999999
	.quad	0x3fdaada33bd9cae2              # double 0.416848
	.quad	0x3fee4d6c2efd438d              # double 0.94695099999999999
	.quad	0x3fd9e2b4959e6256              # double 0.40446199999999999
	.quad	0x3fe8df633ce63a5c              # double 0.77726899999999998
	.quad	0x3fd9894812be48a6              # double 0.39900400000000003
	.quad	0x3fdfce358298cc14              # double 0.49696099999999999
	.quad	0x3feeea7ac81d3aa3              # double 0.96612299999999995
	.quad	0x3fee4db59578a2a9              # double 0.94698599999999999
	.quad	0x3fd27ae147ae147b              # double 0.28875000000000001
	.quad	0x3feb67d77fae3609              # double 0.85642600000000002
	.quad	0x3fd0dc33721d53ce              # double 0.26344000000000001
	.quad	0x3fc256605ee568a5              # double 0.143261
	.quad	0x3fe05c1615ebfa8f              # double 0.51124099999999995
	.quad	0x3fb8ebdd334c5da7              # double 0.097349000000000005
	.quad	0x3fd5b16c1e364bec              # double 0.33895399999999998
	.quad	0x3fd9347e8ccdd93c              # double 0.39382899999999998
	.quad	0x3fd25bb7b6bb1290              # double 0.28684799999999999
	.quad	0x3fd0f6512a94ff00              # double 0.26503399999999999
	.quad	0x3fcfd1351159c497              # double 0.24857199999999999
	.quad	0x3fea9fa97e132b56              # double 0.83199000000000001
	.quad	0x3fec7a85015c2092              # double 0.88995599999999997
	.quad	0x3fd309e55c0fcb4f              # double 0.29747899999999999
	.quad	0x3fc4c3760bf5d788              # double 0.162215
	.quad	0x3fe7fe34b945308c              # double 0.74978100000000003
	.quad	0x3fcbf633ce63a5c2              # double 0.21845100000000001
	.quad	0x3fcccfa69be09bb7              # double 0.22508700000000001
	.quad	0x3fe46ebb341e14be              # double 0.638517
	.quad	0x3fe40dfbd6a593a3              # double 0.62670700000000001
	.quad	0x3fc9d20f2becedd5              # double 0.20172300000000001
	.quad	0x3fe183d35eb7457c              # double 0.547342
	.quad	0x3fedb94face67d78              # double 0.928871
	.quad	0x3fe0c5996744b2b7              # double 0.52412099999999995
	.quad	0x3fe91e12a51e321a              # double 0.78492099999999998
	.quad	0x3fd252a411c2a023              # double 0.28629399999999999
	.quad	0x3fe38f92af9a8cdf              # double 0.61127600000000004
	.quad	0x3fe8fcdee34fc611              # double 0.78086800000000001
	.quad	0x3fe0a8b8f14db595              # double 0.52059599999999995
	.quad	0x3fd6ddebd9018e75              # double 0.35729499999999997
	.quad	0x3fe7df1e0828c36e              # double 0.74598600000000004
	.quad	0x3fd270fbeb9e492c              # double 0.28814600000000001
	.quad	0x3fc7c63ae2541d8f              # double 0.18573700000000001
	.quad	0x3fd72ca57a786c22              # double 0.36209999999999998
	.quad	0x3fcd5ee136e71cda              # double 0.229458
	.quad	0x3fe6cc4cdfaca362              # double 0.71243900000000004
	.quad	0x3fe93c7d5ed06fef              # double 0.78863399999999995
	.quad	0x3fef7ecdd0d8cb08              # double 0.98422900000000002
	.quad	0x3fbdd2d01c0ca601              # double 0.116498
	.quad	0x3fec64a59c065b64              # double 0.88728600000000001
	.quad	0x3fedb3721d53cddd              # double 0.92815499999999995
	.quad	0x3fb9fbc5de9c022a              # double 0.101498
	.quad	0x3fee31c864883fd5              # double 0.943577
	.quad	0x3febf6c050bd87b5              # double 0.87387099999999995
	.quad	0x3fd2c2c1b10fd7e4              # double 0.29313699999999998
	.quad	0x3fc92085b18548aa              # double 0.19630500000000001
	.quad	0x3fd4473471f79421              # double 0.31684600000000002
	.quad	0x3fd1ea033e78e193              # double 0.27990799999999999
	.quad	0x3fe4ae2fbe33acd6              # double 0.64626300000000003
	.quad	0x3fe03cf91a32b12d              # double 0.50744299999999998
	.quad	0x3fc943e100607810              # double 0.197384
	.quad	0x3fba43ed959a3098              # double 0.102599
	.quad	0x3fc2b4bf8fcd67fd              # double 0.14614099999999999
	.quad	0x3fca614163779e9d              # double 0.206093
	.quad	0x3fde2bc2fc69728a              # double 0.47142099999999998
	.quad	0x3fe86e82949a5658              # double 0.76349
	.quad	0x3fe5cbc8c0ce91c9              # double 0.68112600000000001
	.quad	0x3fee99f3c70c996b              # double 0.95629299999999995
	.quad	0x3fe6b3d29563a9f4              # double 0.70945100000000005
	.quad	0x3fe9c408d8ec95c0              # double 0.80518000000000001
	.quad	0x3fec70068db8bac7              # double 0.88867499999999999
	.quad	0x3f96494d50ebaade              # double 0.021763999999999999
	.quad	0x3fdd0247021d10b2              # double 0.453264
	.quad	0x3fea896787ce95fb              # double 0.82927300000000004
	.quad	0x3fef0fe047d3d428              # double 0.97068799999999999
	.quad	0x3fd1913a4f8726d0              # double 0.27448899999999998
	.quad	0x3fcc1a0cf1800a7c              # double 0.21954499999999999
	.quad	0x3fe8163dc486ad2e              # double 0.75271500000000002
	.quad	0x3fdda5b9628cbd12              # double 0.46323999999999999
	.quad	0x3fda316e37154003              # double 0.40926699999999999
	.quad	0x3fe1993708aac96d              # double 0.54995300000000003
	.quad	0x3fdadf58c08b75ea              # double 0.41988199999999998
	.quad	0x3fef752da98676a7              # double 0.98305399999999998
	.quad	0x3fe64710cb295e9e              # double 0.69617499999999999
	.quad	0x3fe6edb940fecdd1              # double 0.71651900000000002
	.quad	0x3fe836006d0d4995              # double 0.75659200000000004
	.quad	0x3fe790c6f7a0b5ee              # double 0.73642300000000005
	.quad	0x3fe0f1715c63ae25              # double 0.52947299999999997
	.quad	0x3fe7be1c9b413986              # double 0.74195699999999998
	.quad	0x3fd25fcc1871e6cd              # double 0.28709699999999999
	.quad	0x3f8450efdc9c4da9              # double 0.0099199999999999999
	.quad	0x3fe403c297bfa4c6              # double 0.62545899999999999
	.quad	0x3fe8d4c122749f0e              # double 0.77597099999999997
	.quad	0x3fd53bf2f5558213              # double 0.33178400000000002
	.quad	0x3fc88fd9fd36f7e4              # double 0.19189000000000001
	.quad	0x3fed883ba3443d47              # double 0.92288000000000003
	.quad	0x3feeab884406c00e              # double 0.95843900000000004
	.quad	0x3fc2f4e874c8ffb9              # double 0.14809900000000001
	.quad	0x3fe1a0dbad3a604e              # double 0.55088599999999999
	.quad	0x3fc177c02afdda8c              # double 0.136467
	.quad	0x3fd8c22ab25b317f              # double 0.386851
	.quad	0x3fede21101b00368              # double 0.93384599999999995
	.quad	0x3fe66390c9107faa              # double 0.699654
	.quad	0x3fd3666666666666              # double 0.30312499999999998
	.quad	0x3fcdd616f86a0989              # double 0.233096
	.quad	0x3fbeab042528ae75              # double 0.119797
	.quad	0x3fe9c53f39d1b2e6              # double 0.80532800000000004
	.quad	0x3fe5572ffd1dcd70              # double 0.66689299999999996
	.quad	0x3fc5c5260f5e41d5              # double 0.17007900000000001
	.quad	0x3fd85000c9539b89              # double 0.37988300000000003
	.quad	0x3feb66f71a7e3088              # double 0.85631900000000005
	.quad	0x3fea0fb00bcbe61d              # double 0.814415
	.quad	0x3fd91ae70c1333b9              # double 0.39226699999999998
	.quad	0x3fe0fb15b573eab3              # double 0.53064999999999996
	.quad	0x3fe992b3cc4ac6ce              # double 0.79915800000000004
	.quad	0x3fe3ea012599ed7c              # double 0.62231499999999995
	.quad	0x3fe907faa044ae86              # double 0.78222400000000003
	.quad	0x3fecbf4a98aa8651              # double 0.89835100000000001
	.quad	0x3feaa3c21187e7c0              # double 0.83248999999999995
	.quad	0x3fdf061847f56217              # double 0.48474699999999998
	.quad	0x3fea2fbc1acde1a0              # double 0.81832700000000002
	.quad	0x3fe6545c78a6dacb              # double 0.69779800000000003
	.quad	0x3fe7d22a6f3f52fc              # double 0.74440499999999998
	.quad	0x3fd4f51ac9afe1da              # double 0.32745999999999997
	.quad	0x3fd2f9ce8d972cd8              # double 0.29649700000000001
	.quad	0x3fe63a96d4c33b54              # double 0.69465200000000005
	.quad	0x3fe67bdad7518b0d              # double 0.70261899999999999
	.quad	0x3fdd4f2ae07e5a79              # double 0.457957
	.quad	0x3fd5894812be48a6              # double 0.33650400000000003
	.quad	0x3fed47fbacb42891              # double 0.91503699999999999
	.quad	0x3fd23764f11b60af              # double 0.28463100000000002
	.quad	0x3fe8053198288052              # double 0.75063400000000002
	.quad	0x3fd278e9f6a93f29              # double 0.28863
	.quad	0x3fe4ef8ceb356da0              # double 0.65424199999999999
	.quad	0x3fee157abb8800eb              # double 0.94012200000000001
	.quad	0x3fe53db3bfb58d15              # double 0.66378199999999998
	.quad	0x3fd1574f722e1ac5              # double 0.27095399999999997
	.quad	0x3fef8d1fa333764f              # double 0.98597699999999999
	.quad	0x3fc54af4f0d844d0              # double 0.16635
	.quad	0x3fe75a4f00ef1349              # double 0.72977400000000003
	.quad	0x3feb293d102bc72e              # double 0.84878399999999998
	.quad	0x3fe555c0fcb4f1e5              # double 0.66671800000000003
	.quad	0x3fef55a9eb2074eb              # double 0.97920700000000004
	.quad	0x3fe0053e2d6238da              # double 0.50063999999999997
	.quad	0x3fdaa1dfb9389b52              # double 0.41613
	.quad	0x3f98e757928e0c9e              # double 0.024320000000000001
	.quad	0x3fe6ed5ae1cde5d2              # double 0.71647400000000006
	.quad	0x3fe7639f77292c49              # double 0.73091099999999998
	.quad	0x3fef91600f34506a              # double 0.98649600000000004
	.quad	0x3fe60cdc8754f377              # double 0.68906999999999996
	.quad	0x3fc003bc4d22c882              # double 0.125114
	.quad	0x3fd09e492bc2fc69              # double 0.25966099999999998
	.quad	0x3fec15ad106ee30d              # double 0.87764600000000004
	.quad	0x3fe20dd82fd75e20              # double 0.56418999999999997
	.quad	0x3fe4d46b26bf876a              # double 0.65093000000000001
	.quad	0x3fd168405b39e27a              # double 0.27198800000000001
	.quad	0x3fecf9aae6c8f755              # double 0.90547699999999998
	.quad	0x3fe896e158750c1c              # double 0.76841800000000004
	.quad	0x3fec010a569b1748              # double 0.87512699999999999
	.quad	0x3fdbcb35f3d7d391              # double 0.434278
	.quad	0x3fd0518f3eccc469              # double 0.25497799999999998
	.quad	0x3fd3394face67d78              # double 0.300373
	.quad	0x3fd300431bde82d8              # double 0.29689100000000002
	.quad	0x3fc08605681ecd4b              # double 0.12909000000000001
	.quad	0x3fe4a1a93293d103              # double 0.64473400000000003
	.quad	0x3fdb586876e1dead              # double 0.42727100000000001
	.quad	0x3fe99dba908a265f              # double 0.80050399999999999
	.quad	0x3fed2df505d0fa59              # double 0.91186
	.quad	0x3fef690364388ebd              # double 0.98156900000000002
	.quad	0x3fef874213a0c6b5              # double 0.98526100000000005
	.quad	0x3fe05126634117f8              # double 0.50990599999999997
	.quad	0x3fad785f8d2e514c              # double 0.057558999999999999
	.quad	0x3fd995bbbe878fac              # double 0.39976400000000001
	.quad	0x3fe6d8fd5cb790fb              # double 0.71398799999999996
	.quad	0x3f89dece5710880e              # double 0.012632000000000001
	.quad	0x3fbfe542e557de0d              # double 0.12459199999999999
	.quad	0x3fe7ce39b456b442              # double 0.74392400000000003
	.quad	0x3fd49f94855da273              # double 0.32224000000000003
	.quad	0x3fe3fe28240b7803              # double 0.62477499999999997
	.quad	0x3fe6816aceaaf35e              # double 0.70329799999999998
	.quad	0x3fe5f9e16d6dc1a4              # double 0.68675299999999995
	.quad	0x3fd409e98dcdb37d              # double 0.31310500000000002
	.quad	0x3fcdaf8df7a4e7ab              # double 0.23191999999999999
	.quad	0x3fe54e28ed5f138c              # double 0.66579100000000002
	.quad	0x3fedbf39d1b2e59b              # double 0.929593
	.quad	0x3fe002e44b6e935c              # double 0.50035300000000005
	.quad	0x3fe6f3775b813016              # double 0.71721999999999997
	.quad	0x3fd5e2478854cdb8              # double 0.34193600000000002
	.quad	0x3fef066a11ec918e              # double 0.96953299999999998
	.quad	0x3fcb1327243137b0              # double 0.21152199999999999
	.quad	0x3fd71bb8c32a8c9c              # double 0.36106700000000003
	.quad	0x3fe4dc725c3dee78              # double 0.65190999999999999
	.quad	0x3fe479f01b866e44              # double 0.63988500000000004
	.quad	0x3fe3ebe9c886162f              # double 0.62254799999999999
	.quad	0x3fe9ae9ccb7d4174              # double 0.80256499999999997
	.quad	0x3fc1f327aa68f4b6              # double 0.140233
	.quad	0x3fc5a6e75ff609dd              # double 0.169156
	.quad	0x3fec47e28240b780              # double 0.88377499999999998
	.quad	0x3fd5c204f2ae07e6              # double 0.33996700000000002
	.quad	0x3fb29be09bb6aa4c              # double 0.072691000000000006
	.quad	0x3fc59b5e95b78cca              # double 0.16880400000000001
	.quad	0x3fec1363f572de44              # double 0.877367
	.quad	0x3febc7bedb7281fe              # double 0.86813300000000004
	.quad	0x3fe6cd7add15f02c              # double 0.71258299999999997
	.quad	0x3fc7e34330d73861              # double 0.18662300000000001
	.quad	0x3fe57f69014b599b              # double 0.67180300000000004
	.quad	0x3fc765d3996fa82f              # double 0.18279500000000001
	.quad	0x3fe65334c5da6a44              # double 0.69765699999999997
	.quad	0x3fc034330d73860a              # double 0.12659300000000001
	.quad	0x3fef34b72c5197a2              # double 0.97518499999999997
	.quad	0x3fec311a543f1c76              # double 0.88099400000000005
	.quad	0x3fd1be835dedf1e1              # double 0.27725300000000003
	.quad	0x3fc2543f1c75818c              # double 0.14319599999999999
	.quad	0x3feef7b395c42203              # double 0.96773699999999995
	.quad	0x3fe465082cf52b91              # double 0.63733300000000004
	.quad	0x3fed7f8ca8198f1d              # double 0.92181999999999997
	.quad	0x3fd8aa19439de482              # double 0.385382
	.quad	0x3fd42749f0e4da0a              # double 0.31489800000000001
	.quad	0x3fe97583a53b8e4c              # double 0.79559500000000005
	.quad	0x3fe2b906466b1e5c              # double 0.58508599999999999
	.quad	0x3fefa54a3c64345d              # double 0.988927
	.quad	0x3faa96d4c33b5393              # double 0.051931999999999999
	.quad	0x3fdc42a66dbd72bd              # double 0.44156800000000002
	.quad	0x3fd4333764f11b61              # double 0.31562600000000002
	.quad	0x3feb238b8ae31d71              # double 0.84808899999999998
	.quad	0x3fe3a85ec3dab5c4              # double 0.61430300000000004
	.quad	0x3feb8c4bd33d2956              # double 0.86087599999999997
	.quad	0x3fecc64ba94bbe44              # double 0.89920599999999994
	.quad	0x3febf4fb549f9485              # double 0.87365499999999996
	.quad	0x3fd148b652370479              # double 0.270063
	.quad	0x3fe6c790b8498809              # double 0.71186099999999997
	.quad	0x3fe160a63305100a              # double 0.54304799999999998
	.quad	0x3fe4cb1cc9646280              # double 0.64979399999999998
	.quad	0x3fc6cc78e9f6a93f              # double 0.178115
	.quad	0x3fd3aa21a719b4dd              # double 0.307259
	.quad	0x3fee48ba83f4eca7              # double 0.94637800000000005
	.quad	0x3fe24f8b588e368f              # double 0.57221
	.quad	0x3fca2888b545c78a              # double 0.20436199999999999
	.quad	0x3fd4eed02cd39da1              # double 0.32707599999999998
	.quad	0x3fd165f9591cd1c8              # double 0.27184900000000001
	.quad	0x3feafb3743632c1f              # double 0.84316599999999997
	.quad	0x3fe80c521dda059a              # double 0.75150399999999995
	.quad	0x3fd98f7985271bce              # double 0.39938200000000001
	.quad	0x3fdff2990f301eac              # double 0.49918200000000001
	.quad	0x3fec461f9f01b867              # double 0.88356000000000001
	.quad	0x3fe13d35eb7457c1              # double 0.53872200000000003
	.quad	0x3fdde2328f9f44d4              # double 0.46693099999999998
	.quad	0x3fc3543aeab7995f              # double 0.151008
	.quad	0x3fde40895d0b73d2              # double 0.47268900000000003
	.quad	0x3fd8b9bed30f062d              # double 0.38633699999999999
	.quad	0x3fafb4e54f7a9197              # double 0.061927000000000003
	.quad	0x3feb0f10a99b6f5d              # double 0.84558900000000004
	.quad	0x3fa6da22f6a50d6b              # double 0.044632999999999999
	.quad	0x3febfbb0e5e67946              # double 0.87447399999999997
	.quad	0x3fc73a68b19a415f              # double 0.18146999999999999
	.quad	0x3fdd2bbecaab8a5d              # double 0.45579500000000001
	.quad	0x3fded84901d19158              # double 0.48195100000000002
	.quad	0x3fd1ec0b5675579b              # double 0.280032
	.quad	0x3feb2b5e529bae47              # double 0.84904400000000002
	.quad	0x3fe2463ae2541d8f              # double 0.57107300000000005
	.quad	0x3fdb302b40f66a55              # double 0.424815
	.quad	0x3f7d2ae8e1d6494d              # double 0.0071209999999999997
	.quad	0x3fec1c9f72f76e61              # double 0.878494
	.quad	0x3fe44f0520d130e0              # double 0.63464600000000004
	.quad	0x3febd7214f0520d1              # double 0.87001099999999998
	.quad	0x3fe3ce874c8ffb8b              # double 0.61896099999999998
	.quad	0x3fc8c204f2ae07e6              # double 0.19342100000000001
	.quad	0x3fe2d89efd86a8fc              # double 0.58894299999999999
	.quad	0x3fd5d38cda6e75ff              # double 0.34103699999999998
	.quad	0x3fd42acfb762d83c              # double 0.31511299999999998
	.quad	0x3fedd33f42352eb6              # double 0.932037
	.quad	0x3faf1de69ad42c3d              # double 0.060775000000000003
	.quad	0x3fef071a3b14a904              # double 0.96961699999999995
	.quad	0x3fd523076c050bd8              # double 0.33026299999999997
	.quad	0x3febb4a87e38eb03              # double 0.86580299999999999
	.quad	0x3fe08f9096bb98c8              # double 0.51752500000000001
	.quad	0x3fe46ddf00abf76a              # double 0.63841199999999998
	.quad	0x3fdd2d7f950b955f              # double 0.45590199999999997
	.quad	0x3fe17f4dbdf8f473              # double 0.54679
	.quad	0x3fd41aef6f8f0414              # double 0.31414399999999998
	.quad	0x3fd8db4cc2507208              # double 0.38838499999999998
	.quad	0x3fdb084a515ce9e6              # double 0.42238100000000001
	.quad	0x3fc31348b220791c              # double 0.14902599999999999
	.quad	0x3fbc68fd199bb279              # double 0.11097700000000001
	.quad	0x3fe85612c6ac215c              # double 0.76050700000000004
	.quad	0x3fcaa137f38c5437              # double 0.20804500000000001
	.quad	0x3fa8051c9f72f76e              # double 0.046913999999999997
	.quad	0x3fb8fe79ee02a77a              # double 0.097632999999999997
	.quad	0x3fe3b42aa9f7b5af              # double 0.61574300000000004
	.quad	0x3fe214a0a0f4d7ae              # double 0.56501800000000002
	.quad	0x3fbba072d1aeb3dd              # double 0.107917
	.quad	0x3fdf15a4acf312b2              # double 0.48569600000000002
	.quad	0x3fceebfec13b9f12              # double 0.24157699999999999
	.quad	0x3fe265a35d67ba23              # double 0.57490699999999995
	.quad	0x3fea9f87f023e9ea              # double 0.83197399999999999
	.quad	0x3fcdfc4c165907d9              # double 0.234262
	.quad	0x3fe3db7281fd9ba2              # double 0.62053800000000003
	.quad	0x3fe605dfa871a3b1              # double 0.68821699999999997
	.quad	0x3fc0ee17a02fb5d0              # double 0.13226599999999999
	.quad	0x3feb025bfad29995              # double 0.84403799999999995
	.quad	0x3fecc1b97353b4b3              # double 0.898648
	.quad	0x3fe0041cc532a498              # double 0.500502
	.quad	0x3fe3633269df97ab              # double 0.60585900000000004
	.quad	0x3fef414e7ee9142b              # double 0.97672199999999997
	.quad	0x3fea15a8deb0fadf              # double 0.81514399999999998
	.quad	0x3fe92c1d29dc725c              # double 0.78663499999999997
	.quad	0x3fdd237cdcca70d2              # double 0.455291
	.quad	0x3fdd5454152b0a70              # double 0.45827200000000001
	.quad	0x3fdb229a5ebb773a              # double 0.423987
	.quad	0x3fc6afb3b7521145              # double 0.17723700000000001
	.quad	0x3fed892684cf073a              # double 0.92299200000000003
	.quad	0x3fe0277e5eaab042              # double 0.50482099999999996
	.quad	0x3fd18711d798d8a9              # double 0.27386899999999997
	.quad	0x3fb86cb966be7afa              # double 0.095408999999999993
	.quad	0x3fe22a94ff0025c0              # double 0.56769800000000004
	.quad	0x3feae2e2b8c75c4b              # double 0.84019600000000005
	.quad	0x3fd03d07c84b5dcc              # double 0.25372499999999998
	.quad	0x3fea21e1d2178f69              # double 0.81663600000000003
	.quad	0x3fec8539fba450ad              # double 0.89126300000000003
	.quad	0x3fd671d1d4738a3b              # double 0.35069699999999998
	.quad	0x3fb5a86940357a35              # double 0.084600999999999996
	.quad	0x3fde04039abf3387              # double 0.468995
	.quad	0x3fb1c4fc1df3300e              # double 0.069412000000000001
	.quad	0x3fdf07bfe7e1fc09              # double 0.484848
	.quad	0x3fdede37585be1a8              # double 0.48231299999999999
	.quad	0x3fee552e2fbe33ad              # double 0.94789800000000002
	.quad	0x3fda3aabcd78c437              # double 0.409831
	.quad	0x3faf02c4d65e4606              # double 0.060567999999999997
	.quad	0x3fb791a32b12d341              # double 0.092065999999999995
	.quad	0x3fe162456f75d9a1              # double 0.54324600000000001
	.quad	0x3fdd59641f644956              # double 0.45858100000000002
	.quad	0x3fe7751ce28ed5f1              # double 0.73304599999999998
	.quad	0x3fed44e0daa0cae6              # double 0.91465799999999997
	.quad	0x3fba0e8427418d69              # double 0.101784
	.quad	0x3fe1e5b4245f5ad9              # double 0.55928999999999995
	.quad	0x3fed6fe4ffc9795b              # double 0.91990899999999998
	.quad	0x3fb3ee6fb4c3c18b              # double 0.077856999999999996
	.quad	0x3fe19185cee17a03              # double 0.549014
	.quad	0x3fb2108c3f3e0371              # double 0.070565000000000003
	.quad	0x3fec78b1572580c3              # double 0.889733
	.quad	0x3fc7e279dd3bafd9              # double 0.18659899999999999
	.quad	0x3fd66afcce1c5825              # double 0.35027999999999998
	.quad	0x3fe08ef77f27fe4c              # double 0.51745200000000002
	.quad	0x3fe0c2784a9478c8              # double 0.52373899999999995
	.quad	0x3fe9d79af1886df8              # double 0.80756899999999998
	.quad	0x3fefd77fae3608d1              # double 0.99505600000000005
	.quad	0x3fb7bd5992428d43              # double 0.092732999999999996
	.quad	0x3fef3964a59c065b              # double 0.97575599999999995
	.quad	0x3fef917b5286b591              # double 0.98650899999999996
	.quad	0x3fde7dcbddb9841b              # double 0.47642800000000002
	.quad	0x3fe1868123810e88              # double 0.54766899999999996
	.quad	0x3fe36177ea1c68ec              # double 0.60564799999999996
	.quad	0x3fdeadb402d16b98              # double 0.479352
	.quad	0x3fdf532617c1bda5              # double 0.48945
	.quad	0x3fc1fb6134ce3de6              # double 0.140484
	.quad	0x3fc160b6f9fcb0c0              # double 0.135764
	.quad	0x3fae050374ff865d              # double 0.058631999999999997
	.quad	0x3fce05f6ba0620ab              # double 0.23455699999999999
	.quad	0x3fbb499d0203e63f              # double 0.10659200000000001
	.quad	0x3fea73c0c1fc8f32              # double 0.82662999999999998
	.quad	0x3feaa6f60e0eb67c              # double 0.83288099999999998
	.quad	0x3fe650f1f57b41c0              # double 0.69738100000000003
	.quad	0x3fb6b68cef672b88              # double 0.088722999999999996
	.quad	0x3fdcd3f5b5fa2270              # double 0.45043699999999998
	.quad	0x3fe3ece9a2c66905              # double 0.62266999999999995
	.quad	0x3fec1dda059a73b4              # double 0.87864399999999998
	.quad	0x3fd7b6f5caf2d7f9              # double 0.37054199999999998
	.quad	0x3fe74a8c154c985f              # double 0.72785
	.quad	0x3fd62ea52ef911cf              # double 0.34659699999999999
	.quad	0x3fc95885d31337eb              # double 0.198014
	.quad	0x3fd9b3f20a73f749              # double 0.40160800000000002
	.quad	0x3fd72e6a76965f52              # double 0.36220799999999997
	.quad	0x3feb60d0247021d1              # double 0.855568
	.quad	0x3fd539a38fbca106              # double 0.33164300000000002
	.quad	0x3fe72c4d65e46067              # double 0.72415799999999997
	.quad	0x3fe83f8b9baa1512              # double 0.75775700000000001
	.quad	0x3fd11d29dc725c3e              # double 0.267405
	.quad	0x3fdab81f969e3c97              # double 0.41748800000000003
	.quad	0x3fdb2645e4e69f06              # double 0.424211
	.quad	0x3f6240746455eaee              # double 0.0022279999999999999
	.quad	0x3fd08ad256798959              # double 0.25847300000000001
	.quad	0x3fd14534bd76ee74              # double 0.26984900000000001
	.quad	0x3fc43e5b8561d430              # double 0.15815299999999999
	.quad	0x3fe6e260b2c83ec9              # double 0.71513400000000005
	.quad	0x3fdc9b1b79d909f2              # double 0.446967
	.quad	0x3fc788ca3e7d1351              # double 0.183862
	.quad	0x3fd0832fcac8e68e              # double 0.25800699999999999
	.quad	0x3fbe76b7ed41b75a              # double 0.11899899999999999
	.quad	0x3fa0a7a41e57d9dc              # double 0.032529000000000002
	.quad	0x3fdb9cb6848beb5b              # double 0.43143999999999999
	.quad	0x3fc42478854cdb7b              # double 0.157363
	.quad	0x3fd9c2e33eff1950              # double 0.40251999999999999
	.quad	0x3fef468cac4b4d05              # double 0.97736199999999995
	.quad	0x3fedb6deb95e5aff              # double 0.92857299999999998
	.quad	0x3fe4ba4d6e47dc38              # double 0.64774200000000004
	.quad	0x3fd4df9bdc69f8c2              # double 0.32614799999999999
	.quad	0x3fe49819d2391d58              # double 0.643567
	.quad	0x3fdf294dd72367e4              # double 0.486896
	.quad	0x3f951611ba3ca750              # double 0.020591999999999999
	.quad	0x3fc8e29f9ce8d973              # double 0.19441600000000001
	.quad	0x3febd16fc9bc7714              # double 0.86931599999999997
	.quad	0x3fd42ead9274e22a              # double 0.31534899999999999
	.quad	0x3fd8e481f53825e1              # double 0.38894699999999999
	.quad	0x3fe28fc71d606317              # double 0.58005099999999998
	.quad	0x3fed1769a91105e2              # double 0.90910800000000003
	.quad	0x3fd7af038e29f9cf              # double 0.37005700000000002
	.quad	0x3fdd7e62dc6e2a80              # double 0.460839
	.quad	0x3feb516db0dd82fd              # double 0.85368999999999995
	.quad	0x3fac9b62c77574f7              # double 0.055872999999999999
	.quad	0x3f9102363b256ffc              # double 0.01661
	.quad	0x3fdbe37585be1a82              # double 0.43575799999999998
	.quad	0x3feef5ec80c73abd              # double 0.96752000000000004
	.quad	0x3fd5d349be8ff328              # double 0.34102100000000002
	.quad	0x3fb662ed352220bc              # double 0.087446999999999997
	.quad	0x3fd0d65e4606748e              # double 0.26308399999999998
	.quad	0x3fe9d55821294574              # double 0.80729300000000003
	.quad	0x3fe0e7d34df04ddb              # double 0.52829899999999996
	.quad	0x3fd9a3fcc9ea9a3d              # double 0.40063399999999999
	.quad	0x3fca1bb8c32a8c9c              # double 0.20397100000000001
	.quad	0x3fe11ae924f227d0              # double 0.53453499999999998
	.quad	0x3fc6945f9df548ed              # double 0.176403
	.quad	0x3fd82bdc26dce39b              # double 0.37767699999999998
	.quad	0x3fda8f29d40ee06e              # double 0.41498800000000002
	.quad	0x3fed2706d5065732              # double 0.91101399999999999
	.quad	0x3fedf23897204296              # double 0.93581800000000004
	.quad	0x3fc9b3b7521144cc              # double 0.200797
	.quad	0x3fe18a2ca9ac3654              # double 0.54811699999999997
	.quad	0x3fd29068986fcdee              # double 0.29006399999999999
	.quad	0x3fd693d5347a5b10              # double 0.352773
	.quad	0x3fd4b4edb2f661f2              # double 0.32354300000000003
	.quad	0x3fedbdea465a5764              # double 0.92943299999999995
	.quad	0x3febd22c881e4713              # double 0.86940600000000001
	.quad	0x3fdeba493c89f40a              # double 0.48011999999999999
	.quad	0x3fd6b9496249a134              # double 0.35505900000000001
	.quad	0x3fbcde093532e7b4              # double 0.112763
	.quad	0x3fe09fc4c165907e              # double 0.51950300000000005
	.quad	0x3fe081a5870da5db              # double 0.51582600000000001
	.quad	0x3fd386ad2dcb1466              # double 0.30509500000000001
	.quad	0x3fec6d7e889c1b54              # double 0.88836599999999998
	.quad	0x3fe418dac258d584              # double 0.62803399999999998
	.quad	0x3fd2a0dbad3a604e              # double 0.29106799999999999
	.quad	0x3fe4702c4d65e460              # double 0.63869299999999996
	.quad	0x3fee2ee2003ab863              # double 0.94322300000000003
	.quad	0x3fea751697f1f9ad              # double 0.826793
	.quad	0x3fd3566cf41f212d              # double 0.30214999999999997
	.quad	0x3fd2f5232d2bb235              # double 0.29621199999999998
	.quad	0x3fcae4c0df58c08b              # double 0.21010599999999999
	.quad	0x3fe3fff79c842fa5              # double 0.624996
	.quad	0x3fc2775fb2edfe76              # double 0.14426800000000001
	.quad	0x3fd31a975afaf859              # double 0.29849799999999999
	.quad	0x3fef8c436fc158fb              # double 0.98587199999999997
	.quad	0x3fe37546d3f9e7b8              # double 0.608066
	.quad	0x3fe6b35b0bbf50e3              # double 0.70939399999999997
	.quad	0x3fe67023e9ea1405              # double 0.70118899999999995
	.quad	0x3fe7623f24d8fd5d              # double 0.73074300000000003
	.quad	0x3feeaf123c42a66e              # double 0.95887100000000003
	.quad	0x3fe732b12d3415b1              # double 0.72493799999999997
	.quad	0x3feafec56d5cfaad              # double 0.84360000000000002
	.quad	0x3fd42f8bdec5f395              # double 0.31540200000000002
	.quad	0x3fe3d1116a8b8f15              # double 0.61927100000000002
	.quad	0x3fe446cb966be7b0              # double 0.63364200000000004
	.quad	0x3fa10c0ad03d9a95              # double 0.033294999999999998
	.quad	0x3fe5a0e410b630a9              # double 0.67588999999999999
	.quad	0x3fd823f24d8fd5cb              # double 0.37719399999999997
	.quad	0x3fa91e85fd04a2fd              # double 0.049061
	.quad	0x3fee27546d3f9e7c              # double 0.94230100000000005
	.quad	0x3fd72e2b8c75c4a8              # double 0.36219299999999999
	.quad	0x3feee512a94ff002              # double 0.96546299999999996
	.quad	0x3fdc4fdf3b645a1d              # double 0.44237500000000002
	.quad	0x3fc09ea140570825              # double 0.12984100000000001
	.quad	0x3fd41dde37585be2              # double 0.31432300000000002
	.quad	0x3fe913e81450efdd              # double 0.78368000000000004
	.quad	0x3fef60ac7da1ec4e              # double 0.98055099999999995
	.quad	0x3fef35d67ba237ce              # double 0.97532200000000002
	.quad	0x3fe8b4b0e1b4bb5e              # double 0.77205699999999999
	.quad	0x3fee6adb402d16b9              # double 0.95054399999999994
	.quad	0x3fed45fe111276fb              # double 0.914794
	.quad	0x3fb7b7952d234eba              # double 0.092645000000000005
	.quad	0x3fe84c729f59ccfb              # double 0.75933200000000001
	.quad	0x3fd525aee631f8a1              # double 0.33042500000000002
	.quad	0x3fe5be3193f6c26a              # double 0.67946700000000004
	.quad	0x3fd6a1be2b4959e6              # double 0.35362199999999999
	.quad	0x3fe67cf1c3265ade              # double 0.70275200000000004
	.quad	0x3fe6371b8aa00193              # double 0.69422700000000004
	.quad	0x3fea45974e65bea1              # double 0.82099500000000003
	.quad	0x3fc57b6bb1290258              # double 0.16782900000000001
	.quad	0x3fd9a1c25d074214              # double 0.40049800000000002
	.quad	0x3fd054434e3369ba              # double 0.25514300000000001
	.quad	0x3fdc5fc3b4f61672              # double 0.44334499999999999
	.quad	0x3feab1a8ef77f280              # double 0.83418700000000001
	.quad	0x3fe82018a43bb40b              # double 0.75391799999999998
	.quad	0x3fce75a31a4bdba1              # double 0.23796500000000001
	.quad	0x3fcd07b784662bae              # double 0.226798
	.quad	0x3fe9ac9081c2e33f              # double 0.802315
	.quad	0x3fed9c4113c68662              # double 0.92532400000000004
	.quad	0x3fdc2220bc382a13              # double 0.439583
	.quad	0x3fddbd4067cf1c32              # double 0.46467599999999998
	.quad	0x3fa7f34938583622              # double 0.046778
	.quad	0x3fdf9628cbd1244a              # double 0.49353999999999998
	.quad	0x3fd5798958d9b5e9              # double 0.33554299999999998
	.quad	0x3f9e71cda2b5a20e              # double 0.029731
	.quad	0x3fd435a858793dd9              # double 0.31577499999999997
	.quad	0x3fe034dcebfec13c              # double 0.50645300000000004
	.quad	0x3fe81105e1c15098              # double 0.75207800000000002
	.quad	0x3fe723422467be55              # double 0.72305399999999997
	.quad	0x3fd205ccc89b0ee5              # double 0.28160400000000002
	.quad	0x3fc60053e2d6238e              # double 0.17188500000000001
	.quad	0x3fd5d87724fa8b4c              # double 0.341337
	.quad	0x3fb87bbb62413db8              # double 0.095638000000000001
	.quad	0x3fe01815a07b352b              # double 0.50294000000000005
	.quad	0x3fdf41d8e8640208              # double 0.48839399999999999
	.quad	0x3fe0de37585be1a8              # double 0.52712599999999998
	.quad	0x3fe8784449dbec25              # double 0.76468100000000006
	.quad	0x3fe8db09a671ef31              # double 0.77673800000000004
	.quad	0x3fed6aaf35e310dc              # double 0.919273
	.quad	0x3fbe65add9c27e95              # double 0.118739
	.quad	0x3fb9f4e4430b178b              # double 0.101393
	.quad	0x3fdb882adc4c9c91              # double 0.43018600000000001
	.quad	0x3fe7446f9b994e1a              # double 0.72710399999999997
	.quad	0x3fea299524bfd2e9              # double 0.81757599999999997
	.quad	0x3fdb9285a921ccd9              # double 0.43081799999999998
	.quad	0x3fe213f8db489093              # double 0.56493800000000005
	.quad	0x3fe2a839042d8c2a              # double 0.58303499999999997
	.quad	0x3fda17e77d523b36              # double 0.40770899999999999
	.quad	0x3fc7395c42203600              # double 0.18143799999999999
	.quad	0x3fedea2f48c2e771              # double 0.93483700000000003
	.quad	0x3fbdc0ebedfa43fe              # double 0.11622499999999999
	.quad	0x3fe216f4384ba0e8              # double 0.56530199999999997
	.quad	0x3fc3456b441bb8c3              # double 0.150556
	.quad	0x3fbc10d7be9856a3              # double 0.10963199999999999
	.quad	0x3fe5a9cdc443914f              # double 0.67697799999999997
	.quad	0x3fd6d8c6d612c6ac              # double 0.35698099999999999
	.quad	0x3feeab430f49491f              # double 0.95840599999999998
	.quad	0x3fda92ddbdb5d895              # double 0.41521400000000003
	.quad	0x3fd8e60807357e67              # double 0.38904
	.quad	0x3feb927f5e84f095              # double 0.86163299999999998
	.quad	0x3fead8f4f93bc0a0              # double 0.83898399999999995
	.quad	0x3fe037739f340d4e              # double 0.50676900000000002
	.quad	0x3fb0d39da16616b5              # double 0.065728999999999996
	.quad	0x3fc4869c66d373b0              # double 0.160358
	.quad	0x3fe0bb213e3e2930              # double 0.52284299999999995
	.quad	0x3fe768ab4fa48302              # double 0.73152700000000004
	.quad	0x3fc3651b0ccbc05d              # double 0.15152299999999999
	.quad	0x3fe9ad70e6f2e8c0              # double 0.80242199999999997
	.quad	0x3fd96748e4755ffe              # double 0.39692899999999998
	.quad	0x3fd3ca0c282c6ef4              # double 0.30920700000000001
	.quad	0x3faf4c09c3ce208a              # double 0.061127000000000001
	.quad	0x3fef0281ba7fc32f              # double 0.96905600000000002
	.quad	0x3fbd76cce5f7403e              # double 0.115094
	.quad	0x3fc9a9c12f09d8c7              # double 0.200493
	.quad	0x3fd844b2b777d0f2              # double 0.379193
	.quad	0x3fefb584b1ab0857              # double 0.99090800000000001
	.quad	0x3fd7bfb58d1526d9              # double 0.37107600000000002
	.quad	0x3fbd31ec0b567558              # double 0.11404300000000001
	.quad	0x3fea49774256bca5              # double 0.82146799999999998
	.quad	0x3feeed373affb04f              # double 0.96645700000000001
	.quad	0x3fec2e40852b4d8c              # double 0.88064600000000003
	.quad	0x3fb3d6e8af81626b              # double 0.077497999999999997
	.quad	0x3fec36fe2e6ea854              # double 0.88171299999999996
	.quad	0x3fdcdc9c4da9003f              # double 0.450965
	.quad	0x3fd3e874c8ffb8b2              # double 0.31106299999999998
	.quad	0x3fefdfc3b4f61672              # double 0.99606499999999998
	.quad	0x3fdf0691ea78af3e              # double 0.48477599999999998
	.quad	0x3feb44d65e460675              # double 0.85215300000000005
	.quad	0x3fe9df15a4acf313              # double 0.80848200000000003
	.quad	0x3fef580a17b0f6ad              # double 0.97949699999999995
	.quad	0x3fe4e940357a3550              # double 0.65347299999999997
	.quad	0x3fc8923e5b8561d4              # double 0.19196299999999999
	.quad	0x3fece225fa658c4c              # double 0.90260600000000001
	.quad	0x3fee5cd0bb6ed677              # double 0.94882999999999995
	.quad	0x3fd88a32f4491299              # double 0.38343500000000003
	.quad	0x3feb78055fbb517a              # double 0.85840099999999997
	.quad	0x3fb2b55ef1fddebe              # double 0.073080000000000006
	.quad	0x3fdd94467381d7dc              # double 0.462175
	.quad	0x3fe2e9fadafd1138              # double 0.59106199999999998
	.quad	0x3fe58858ff759685              # double 0.67289399999999999
	.quad	0x3fd0ba94bbe4473d              # double 0.26138800000000001
	.quad	0x3fe796d0917d6b66              # double 0.73716000000000004
	.quad	0x3fdad85dfa871a3b              # double 0.419456
	.quad	0x3fe1e694898f605b              # double 0.55939700000000003
	.quad	0x3feeb08bb906466b              # double 0.95905099999999998
	.quad	0x3fbdcffeb074a772              # double 0.116455
	.quad	0x3fe8a747d805e5f3              # double 0.77041999999999999
	.quad	0x3fe568b19a415f46              # double 0.66903000000000001
	.quad	0x3fdcd94d0dcfcc5c              # double 0.45076300000000002
	.quad	0x3fe848abd5dc4007              # double 0.75887099999999996
	.quad	0x3fd6a9da597d49d8              # double 0.35411700000000002
	.quad	0x3fe9131876188b11              # double 0.78358099999999997
	.quad	0x3fd0ffb480a5accd              # double 0.26560699999999998
	.quad	0x3fe0161e4f765fd9              # double 0.50270000000000004
	.quad	0x3fd7d89ce4a7b4e5              # double 0.37259599999999998
	.quad	0x3fee66a98244e93e              # double 0.95003199999999999
	.quad	0x3fe3de0f7fcfc3f8              # double 0.62085699999999999
	.quad	0x3fecbe2d6238da3c              # double 0.89821499999999998
	.quad	0x3fed740a2877ee4e              # double 0.92041499999999998
	.quad	0x3fd910b630a91538              # double 0.39164500000000002
	.quad	0x3fe01fbe76c8b439              # double 0.50387499999999996
	.quad	0x3fe165c91d14e3bd              # double 0.54367500000000002
	.quad	0x3f9a3b9ae0c17657              # double 0.025617999999999998
	.quad	0x3fdb89ca18bd6627              # double 0.43028499999999997
	.quad	0x3fda122749f0e4da              # double 0.407358
	.quad	0x3fe8ee2a80064a9d              # double 0.77907300000000002
	.quad	0x3fcb83cf2cf95d4f              # double 0.21496000000000001
	.quad	0x3fee58ec95bff045              # double 0.94835499999999995
	.quad	0x3fe0c7064ece9a2c              # double 0.52429499999999996
	.quad	0x3fef6060fe47991c              # double 0.98051500000000002
	.quad	0x3fe1b17acc4ef88c              # double 0.55291500000000005
	.quad	0x3fda006d0d49949f              # double 0.40627600000000003
	.quad	0x3fcb852f7f498c3b              # double 0.215002
	.quad	0x3fc802afdda8bd23              # double 0.187582
	.quad	0x3fe97e996312f4cf              # double 0.79670399999999997
	.quad	0x3fe1884e831ad213              # double 0.54788899999999996
	.quad	0x3fe2192641b328b7              # double 0.56557000000000002
	.quad	0x3fe51e5c0b999136              # double 0.65995599999999999
	.quad	0x3fe77a1e3eaf6838              # double 0.733657
	.quad	0x3fba860dcb9a9da6              # double 0.10360800000000001
	.quad	0x3fd4d794a6eb91b4              # double 0.325658
	.quad	0x3fba59d12cadddf4              # double 0.102933
	.quad	0x3fcdf82b1f687b14              # double 0.23413600000000001
	.quad	0x3fe5bd09e12a51e3              # double 0.67932599999999999
	.quad	0x3fefbab430f49492              # double 0.99154100000000001
	.quad	0x3fe93242070b8cfc              # double 0.787385
	.quad	0x3feb62a5e785b5b7              # double 0.855792
	.quad	0x3fdd59c49774256c              # double 0.45860400000000001
	.quad	0x3fdd39eadd590c0b              # double 0.45666000000000001
	.quad	0x3fe6578e5c4eb570              # double 0.69818800000000003
	.quad	0x3fd85cfede97d06c              # double 0.38067600000000001
	.quad	0x3fc97110e453d20f              # double 0.198763
	.quad	0x3fd18cac4b4d056c              # double 0.27421099999999998
	.quad	0x3fb6a0232096787d              # double 0.088381000000000001
	.quad	0x3fea5da272862f5a              # double 0.82393000000000005
	.quad	0x3fdb62bf11f926c8              # double 0.427902
	.quad	0x3fe709e12a51e322              # double 0.71995600000000004
	.quad	0x3fe345f17bd8be73              # double 0.60228800000000005
	.quad	0x3fec47baa9b499d0              # double 0.88375599999999999
	.quad	0x3fc7952d234eb9a1              # double 0.18423999999999999
	.quad	0x3feff9420b3d4ae4              # double 0.99917699999999998
	.quad	0x3fcaec743201040c              # double 0.210341
	.quad	0x3fd2249a133c1ce7              # double 0.28348400000000001
	.quad	0x3fe28064a9cdc444              # double 0.57817300000000005
	.quad	0x3fd1bcd35a858794              # double 0.27715000000000001
	.quad	0x3fe5bcf4e874c900              # double 0.67931600000000003
	.quad	0x3fea6757928e0c9e              # double 0.82511500000000004
	.quad	0x3fef824b33daf8df              # double 0.98465499999999994
	.quad	0x3f99b77c02afdda9              # double 0.025114000000000001
	.quad	0x3fde1d2e0e30446b              # double 0.47053099999999998
	.quad	0x3fef673c4f3ba776              # double 0.981352
	.quad	0x3fe13a237cdcca71              # double 0.53834700000000002
	.quad	0x3fdb70c564f97edc              # double 0.42875799999999997
	.quad	0x3fda3a1d323fee2d              # double 0.40979700000000002
	.quad	0x3f92f6e82949a565              # double 0.018519999999999998
	.quad	0x3f9ff151e75360d0              # double 0.031194
	.quad	0x3fecf7c02afdda8c              # double 0.90524300000000001
	.quad	0x3fe86e2435696e59              # double 0.76344500000000004
	.quad	0x3fe68370cdc8754f              # double 0.70354499999999998
	.quad	0x3fe22df71eafee70              # double 0.56811100000000003
	.quad	0x3feffd73c9257860              # double 0.99968900000000004
	.quad	0x3fee7b1e18efbb0e              # double 0.95252899999999996
	.quad	0x3fe9760e0eb67c28              # double 0.79566099999999995
	.quad	0x3fedd51b4fe79ee0              # double 0.93226399999999998
	.quad	0x3fc17ccc03793144              # double 0.13662099999999999
	.quad	0x3febc751ce28ed5f              # double 0.86808099999999999
	.quad	0x3fde0acc0bdcad15              # double 0.46940900000000002
	.quad	0x3fd36a4ca4f440af              # double 0.30336299999999999
	.quad	0x3fe1dbad3a604e1e              # double 0.55806599999999995
	.quad	0x3fce669057d1782d              # double 0.23750499999999999
	.quad	0x3fe38f1f57b41bfc              # double 0.61122100000000001
	.quad	0x3fd2aed1394317ad              # double 0.29192000000000001
	.quad	0x3fd5550870110a13              # double 0.33331499999999997
	.quad	0x3fe66fdeb52c9d17              # double 0.701156
	.quad	0x3fe2b37eb28d8666              # double 0.58441100000000001
	.quad	0x3fe4e10cf5b1c865              # double 0.65247200000000005
	.quad	0x3fc9fe08aefb2aae              # double 0.203065
	.quad	0x3fdbcb252ce032db              # double 0.43427399999999999
	.quad	0x3fe3dba4d6e47dc3              # double 0.62056199999999995
	.quad	0x3fe750aaa7ded6bb              # double 0.72859700000000005
	.quad	0x3fd25b2d4d4024b3              # double 0.28681499999999999
	.quad	0x3fd185c24c404a73              # double 0.273789
	.quad	0x3fd40374ff865d7d              # double 0.31271100000000002
	.quad	0x3fe71c27e9531551              # double 0.72218700000000002
	.quad	0x3fefaf5771001d5c              # double 0.99015399999999997
	.quad	0x3fdc1426fe718a87              # double 0.43873000000000001
	.quad	0x3fd93f141205bc02              # double 0.39447500000000002
	.quad	0x3fddbfa4c61d8623              # double 0.46482200000000001
	.quad	0x3fbd00f776c4827b              # double 0.11329599999999999
	.quad	0x3fe15ed288ce703b              # double 0.542825
	.quad	0x3fdeb6d43d03968d              # double 0.47990899999999997
	.quad	0x3fbe93c03bc4d22d              # double 0.11944200000000001
	.quad	0x3fdbeb7457c0b136              # double 0.43624600000000002
	.quad	0x3fe78bb2bba98eda              # double 0.73580299999999998
	.quad	0x3fd9ff79c842fa51              # double 0.40621800000000002
	.quad	0x3fd7ae3a3a8e7147              # double 0.37000899999999998
	.quad	0x3fde3964a59c065b              # double 0.47225299999999998
	.quad	0x3fe7c49129888f86              # double 0.74274499999999999
	.quad	0x3fd7bc0a06e9ff0d              # double 0.37085200000000001
	.quad	0x3fde9799e518f3ed              # double 0.47800300000000001
	.quad	0x3fd917fc7607c41a              # double 0.39208900000000002
	.quad	0x3fefca1f080303c0              # double 0.99342299999999994
	.quad	0x3feac0d2c386d2ed              # double 0.83603799999999995
	.quad	0x3fec4c144028e4fc              # double 0.88428700000000004
	.quad	0x3fbd212513b5bf6a              # double 0.113787
	.quad	0x3fcdd5cb790fb656              # double 0.23308699999999999
	.quad	0x3fe831c0010c6f7a              # double 0.756073
	.quad	0x3fd1fefbf401c4fc              # double 0.28118799999999999
	.quad	0x3fbdb8bac710cb29              # double 0.11609999999999999
	.quad	0x3fd6381d7dbf4880              # double 0.34717500000000001
	.quad	0x3fe45479d4d83409              # double 0.63531199999999999
	.quad	0x3fe3d40cc78e9f6b              # double 0.61963500000000005
	.quad	0x3fd2418d6909aed5              # double 0.28525099999999998
	.quad	0x3fd8945b6c3760bf              # double 0.38405499999999998
	.quad	0x3fec7f27fe4bcada              # double 0.89052200000000004
	.quad	0x3feb103ea704bc27              # double 0.84573299999999996
	.quad	0x3fbd130df9bdc6a0              # double 0.11357200000000001
	.quad	0x3fd17807789a4591              # double 0.272951
	.quad	0x3fdce325d4a5df22              # double 0.45136399999999999
	.quad	0x3fcb8c2a454de7ea              # double 0.21521499999999999
	.quad	0x3fe3972cd7cf5f4e              # double 0.61220399999999997
	.quad	0x3fd186940357a355              # double 0.273839
	.quad	0x3fed3630a91537a0              # double 0.91286500000000003
	.quad	0x3fe3163baba7b917              # double 0.59646399999999999
	.quad	0x3fc7e90ff9724745              # double 0.18679999999999999
	.quad	0x3f7df43c7d5ed070              # double 0.0073130000000000001
	.quad	0x3fb9ae3e6c4c5975              # double 0.100315
	.quad	0x3fdbfe3f359ff4fd              # double 0.43739299999999998
	.quad	0x3fe05e4e69f05ea2              # double 0.51151199999999997
	.quad	0x3fe0de54b48d3ae7              # double 0.52714000000000005
	.quad	0x3fe479c4113c6866              # double 0.63986399999999999
	.quad	0x3fb08feac42e989a              # double 0.064696000000000004
	.quad	0x3fc0af251c193b3a              # double 0.13034499999999999
	.quad	0x3fe2046a5d6bebe1              # double 0.56303899999999996
	.quad	0x3fe417481b21c476              # double 0.62784200000000001
	.quad	0x3fe14dc011d3671b              # double 0.54074100000000003
	.quad	0x3fac8beb5b2d4d40              # double 0.055754999999999999
	.quad	0x3fd59fcf3dc054ef              # double 0.33787899999999998
	.quad	0x3fe6814727dcbddc              # double 0.70328100000000004
	.quad	0x3fd5ee675147f130              # double 0.34267599999999998
	.quad	0x3fddeaab042528ae              # double 0.46744799999999997
	.quad	0x3fe31cde5d18090b              # double 0.59727399999999997
	.quad	0x3fdf32b12d3415b1              # double 0.48746899999999999
	.quad	0x3fd9fadf2ecf2064              # double 0.40593699999999999
	.quad	0x3fe2d45a5fc7e6b4              # double 0.588422
	.quad	0x3fdbdca8e2e2b8c7              # double 0.43534299999999998
	.quad	0x3fcf6976bc1effa0              # double 0.24540600000000001
	.quad	0x3fe782491afc04c9              # double 0.73465400000000003
	.quad	0x3fe07d30ad46f588              # double 0.51528200000000002
	.quad	0x3fea68f6cefed634              # double 0.82531299999999996
	.quad	0x3fe35f2452c59fb2              # double 0.60536400000000001
	.quad	0x3fd74812be48a58b              # double 0.36377399999999999
	.quad	0x3fe8583e8576cce6              # double 0.760772
	.quad	0x3fe8737329c347e9              # double 0.76409300000000002
	.quad	0x3fdf70a808c8259e              # double 0.49125099999999999
	.quad	0x3fe3b35b0bbf50e3              # double 0.61564399999999997
	.quad	0x3fd2c1bda5119ce0              # double 0.29307499999999997
	.quad	0x3fd03636f3b213e4              # double 0.25330900000000001
	.quad	0x3fa7d1bb4916ca47              # double 0.046522000000000001
	.quad	0x3fd1f9d6f112fd33              # double 0.28087400000000001
	.quad	0x3fd117939a7c17a9              # double 0.26706400000000002
	.quad	0x3fe376cacd184c27              # double 0.60825099999999999
	.quad	0x3fe78b3b320535ca              # double 0.73574600000000001
	.quad	0x3fc3c89f40a2877f              # double 0.15456
	.quad	0x3fb0ed4e4c942d49              # double 0.066120999999999999
	.quad	0x3fcbf444e0daa0cb              # double 0.218392
	.quad	0x3fdfd0203e63e8de              # double 0.49707800000000002
	.quad	0x3f8e4712e40852b5              # double 0.014784
	.quad	0x3fd972bcb5fe542e              # double 0.39762799999999998
	.quad	0x3fd1b9b66f9335d2              # double 0.27695999999999998
	.quad	0x3fe7e8af81626b2f              # double 0.74715399999999998
	.quad	0x3f70b1feeb2d0a24              # double 0.0040759999999999998
	.quad	0x3fe24a7b4e54f7a9              # double 0.57159199999999999
	.quad	0x3fec738c5436b8fa              # double 0.88910500000000003
	.quad	0x3fb3e4cd74927914              # double 0.077710000000000001
	.quad	0x3f893b3a68b19a41              # double 0.012319999999999999
	.quad	0x3febdfb71fbc5dea              # double 0.87105900000000003
	.quad	0x3fc3654d61b2a27f              # double 0.151529
	.quad	0x3fc3a7d24180d3d0              # double 0.153559
	.quad	0x3fd7c9a34ca0c283              # double 0.37168200000000001
	.quad	0x3fd4656eefa1e3eb              # double 0.318691
	.quad	0x3feff26f1dc50ce5              # double 0.998344
	.quad	0x3fdc845564b662fe              # double 0.445577
	.quad	0x3fee1246bf01322f              # double 0.93973099999999998
	.quad	0x3fe404039abf3387              # double 0.62548999999999999
	.quad	0x3f838e6d15ad106f              # double 0.0095490000000000001
	.quad	0x3f9f6fd21ff2e48f              # double 0.030700000000000002
	.quad	0x3feeb2e9ccb7d417              # double 0.95933999999999997
	.quad	0x3f9dd4c76d117b53              # double 0.029132000000000002
	.quad	0x3fcc74e22a2c2374              # double 0.22231699999999999
	.quad	0x3f9617c1bda5119d              # double 0.021575
	.quad	0x3fe18e453d20f2bf              # double 0.54861700000000002
	.quad	0x3fdec3a860dcb9aa              # double 0.48069200000000001
	.quad	0x3fe290f301eabbcb              # double 0.58019399999999999
	.quad	0x3fe6358298cc1440              # double 0.69403199999999998
	.quad	0x3fd466a550870111              # double 0.31876500000000002
	.quad	0x3fe78f301eabbcb2              # double 0.73622900000000002
	.quad	0x3fedb6dca07f66e8              # double 0.92857199999999995
	.quad	0x3fed673a365cb35f              # double 0.91885099999999997
	.quad	0x3feffea3df6db941              # double 0.999834
	.quad	0x3fe27fa1a0cf1801              # double 0.57808000000000004
	.quad	0x3fece4b87bdcf030              # double 0.90291999999999994
	.quad	0x3fb33bc903ea704c              # double 0.075131000000000003
	.quad	0x3fea49d7ba6698bb              # double 0.82151399999999997
	.quad	0x3fe8a6b723ee1bd2              # double 0.77035100000000001
	.quad	0x3fc7afc04c8bc9cd              # double 0.18505099999999999
	.quad	0x3fee84c271fff79d              # double 0.95370600000000005
	.quad	0x3fedd4801f75104d              # double 0.93218999999999996
	.quad	0x3fd8cb295e9e1b09              # double 0.38740000000000002
	.quad	0x3fe5fa97e132b55f              # double 0.68684000000000001
	.quad	0x3fe6dac258d5842b              # double 0.71420399999999995
	.quad	0x3fcf67e414e7ee91              # double 0.24535799999999999
	.quad	0x3fcbbfd71b046845              # double 0.21679200000000001
	.quad	0x3fd315b573eab368              # double 0.29820000000000002
	.quad	0x3fe96559f6ec5b08              # double 0.79362200000000005
	.quad	0x3fbc68b9fdbd2fa1              # double 0.110973
	.quad	0x3fee376922d948dc              # double 0.94426399999999999
	.quad	0x3fe71ddc1e7967cb              # double 0.72239500000000001
	.quad	0x3feb58be7296f651              # double 0.85458299999999998
	.quad	0x3fa136e71cda2b5a              # double 0.033621999999999999
	.quad	0x3fe59524bfd2e947              # double 0.67445600000000006
	.quad	0x3fd98fd5cb790fb6              # double 0.39940399999999998
	.quad	0x3fd5028a1dfb938a              # double 0.32828000000000002
	.quad	0x3fd20a5accd53049              # double 0.28188200000000002
	.quad	0x3fdb6e008e9b38d6              # double 0.428589
	.quad	0x3fe4a3c21187e7c0              # double 0.64498999999999995
	.quad	0x3fc44d013a92a305              # double 0.15859999999999999
	.quad	0x3fedffb267c6b8b7              # double 0.93746300000000005
	.quad	0x3fc2c7b890d5a5b9              # double 0.14671999999999999
	.quad	0x3fd4d8d36b4c7f35              # double 0.32573400000000002
	.quad	0x3fc599029ae4f334              # double 0.16873199999999999
	.quad	0x3fef5798d8a979e1              # double 0.97944299999999995
	.quad	0x3fc25553ef6b5d46              # double 0.143229
	.quad	0x3fac588a04d12019              # double 0.055363000000000002
	.quad	0x3fd2d2630ec31162              # double 0.29409099999999999
	.quad	0x3fdefde2ef4e0115              # double 0.48424600000000001
	.quad	0x3fe59e0e736049ed              # double 0.67554400000000003
	.quad	0x3fdd70329802c0a5              # double 0.45997300000000002
	.quad	0x3fe0938bcdfefbf4              # double 0.518011
	.quad	0x3fc0b8b69552e2fc              # double 0.130637
	.quad	0x3fde01cd5f99c38b              # double 0.46886
	.quad	0x3fd78a7a41e57d9e              # double 0.36782700000000002
	.quad	0x3feb922fad6cb535              # double 0.861595
	.quad	0x3fb9e657b84db9c7              # double 0.101171
	.quad	0x3fd91986b9c304cd              # double 0.392183
	.quad	0x3fe64dfefbf401c5              # double 0.697021
	.quad	0x3fd7e82949a56580              # double 0.37354500000000002
	.quad	0x3fdc48cf7caa758a              # double 0.441944
	.quad	0x3fe8c8366516db0e              # double 0.77444000000000002
	.quad	0x3fe8a65add9c27e9              # double 0.77030699999999996
	.quad	0x3fd14fa48301a7a0              # double 0.270486
	.quad	0x3fc9c1b54195cc85              # double 0.20122399999999999
	.quad	0x3fc35360d0247022              # double 0.15098200000000001
	.quad	0x3fe7222f6a50d6b2              # double 0.72292299999999998
	.quad	0x3fe7948ba83f4eca              # double 0.73688299999999995
	.quad	0x3fe0916ebd4cfd09              # double 0.51775300000000002
	.quad	0x3fe190c9107faa04              # double 0.54892399999999997
	.quad	0x3f9d948dc11e42e1              # double 0.028886999999999999
	.quad	0x3fd2fe8ee6b8305e              # double 0.29678700000000002
	.quad	0x3fa1e4b44a1f0803              # double 0.034948
	.quad	0x3feff92af9a8cdea              # double 0.999166
	.quad	0x3fdd5821294573a8              # double 0.45850400000000002
	.quad	0x3fe214445aa2e3c5              # double 0.56497399999999998
	.quad	0x3fa29131ec0b5675              # double 0.036263999999999998
	.quad	0x3fde042d8c2a454e              # double 0.46900500000000001
	.quad	0x3fe5bd5992428d43              # double 0.67936399999999997
	.quad	0x3fb6f7b17ce52ded              # double 0.089717000000000005
	.quad	0x3fea338d60a63305              # double 0.81879299999999999
	.quad	0x3fe73c579f234656              # double 0.72611599999999998
	.quad	0x3fc01f6cacd184c2              # double 0.12595899999999999
	.quad	0x3fe908f42fe82518              # double 0.78234300000000001
	.quad	0x3fe435b4edb2f662              # double 0.63155600000000001
	.quad	0x3fe568a2ec28b2a7              # double 0.66902300000000003
	.quad	0x3fbbd49d7ba6698c              # double 0.108713
	.quad	0x3fe6e3baba7b9171              # double 0.71529900000000002
	.quad	0x3fcf903211cb039f              # double 0.246588
	.quad	0x3fd66106ab14ec20              # double 0.34967199999999998
	.quad	0x3fe70f4d7add15f0              # double 0.72061799999999998
	.quad	0x3fcdea465a57646b              # double 0.233712
	.quad	0x3fd09db22d0e5604              # double 0.25962499999999999
	.quad	0x3fe77c4e2f37fbf0              # double 0.73392400000000002
	.quad	0x3fdc811f4f50a02c              # double 0.44538100000000003
	.quad	0x3fc44b3c3e74afd5              # double 0.15854599999999999
	.quad	0x3fac35ac8a372607              # double 0.055097
	.quad	0x3fc27e62dc6e2a80              # double 0.144482
	.quad	0x3fc523033a4723ab              # double 0.165131
	.quad	0x3fc02595bbbe8790              # double 0.12614700000000001
	.quad	0x3feeb0ea18372e6a              # double 0.95909599999999995
	.quad	0x3fecb73083558a76              # double 0.89736199999999999
	.quad	0x3fe8069a4df47f99              # double 0.75080599999999997
	.quad	0x3fd276c4827b6fe3              # double 0.28849900000000001
	.quad	0x3fe53d273d5bab22              # double 0.66371500000000005
	.quad	0x3fef23e9ea140571              # double 0.97313400000000005
	.quad	0x3fe957e889c1b542              # double 0.79198100000000005
	.quad	0x3fed55000c9539b9              # double 0.91662600000000005
	.quad	0x3fb72b55ef1fddec              # double 0.090505000000000002
	.quad	0x3fca68a936c58eeb              # double 0.206319
	.quad	0x3fca3e7d1351159c              # double 0.20503199999999999
	.quad	0x3fd15b899392189c              # double 0.27121200000000001
	.quad	0x3fd7dca07f66e86c              # double 0.37284099999999998
	.quad	0x3fdcc7c5260f5e42              # double 0.44969300000000001
	.quad	0x3f8ebbfd71b04684              # double 0.015007
	.quad	0x3fa677d523b3636f              # double 0.043882999999999998
	.quad	0x3fa8a67620ee8d11              # double 0.048145
	.quad	0x3fec39e8c47a17f4              # double 0.88206899999999999
	.quad	0x3fe9ceb356da0169              # double 0.80648200000000003
	.quad	0x3fd0c58eeae9ee46              # double 0.26205800000000001
	.quad	0x3fb18ea7ce0fc2ec              # double 0.068583000000000005
	.quad	0x3fe60d3f1843c3a4              # double 0.68911699999999998
	.quad	0x3fe54db7ae5796c0              # double 0.66573700000000002
	.quad	0x3fee26e978d4fdf4              # double 0.94225000000000003
	.quad	0x3fe0cdfce3150dae              # double 0.52514499999999997
	.quad	0x3fdcc21e1d2178f7              # double 0.44934800000000003
	.quad	0x3fe7d1dcd7060bb3              # double 0.74436800000000003
	.quad	0x3fdfab4b72c5197a              # double 0.49482999999999999
	.quad	0x3fde52da98676a72              # double 0.47380699999999998
	.quad	0x3feb86b7aa25d8d8              # double 0.86019500000000004
	.quad	0x3fc2c7a7c9de0503              # double 0.14671799999999999
	.quad	0x3fef782d38476f2a              # double 0.98341999999999996
	.quad	0x3fd488df37329c34              # double 0.32085399999999997
	.quad	0x3fed5681ecd4aa11              # double 0.91681000000000001
	.quad	0x3fe02ff2a172abef              # double 0.505853
	.quad	0x3fc5932d6ece13f5              # double 0.16855400000000001
	.quad	0x3fde31bde82d7b63              # double 0.47178599999999998
	.quad	0x3f908893b7d84902              # double 0.016146000000000001
	.quad	0x3fd6614df8b15726              # double 0.34968900000000003
	.quad	0x3fd06312f4cf4a56              # double 0.25604700000000002
	.quad	0x3fe7fb45f17bd8be              # double 0.74942299999999995
	.quad	0x3fe937da61e0c5a8              # double 0.78806799999999999
	.quad	0x3feffa3fcc9ea9a4              # double 0.99929800000000001
	.quad	0x3feedbca9691a75d              # double 0.96433000000000002
	.quad	0x3fe5c09c3ce2089e              # double 0.67976199999999998
	.quad	0x3febdc8b86b15f89              # double 0.870672
	.quad	0x3fe2f3dc054ef45a              # double 0.59226800000000002
	.quad	0x3fd4c99f1ae2da55              # double 0.32480599999999998
	.quad	0x3fe39d5c31593e60              # double 0.61295900000000003
	.quad	0x3fef5eebb341e14c              # double 0.98033700000000001
	.quad	0x3fe82a497fa5d28d              # double 0.755162
	.quad	0x3fd126fa3fcc9eaa              # double 0.26800400000000002
	.quad	0x3fefb8023a6ce358              # double 0.99121199999999998
	.quad	0x3fcb3c4f3ba775fb              # double 0.21277799999999999
	.quad	0x3fe5ecebbba55d1c              # double 0.68517099999999997
	.quad	0x3fee0ba6266fd652              # double 0.93892200000000003
	.quad	0x3fd0c8472c0e7bc4              # double 0.26222400000000001
	.quad	0x3f950763a1900820              # double 0.020535999999999999
	.quad	0x3f89f559b3d07c85              # double 0.012675000000000001
	.quad	0x3febbcc4ac6cdaf5              # double 0.86679300000000004
	.quad	0x3fe78a4c1ebc83a9              # double 0.73563199999999995
	.quad	0x3fdc69270b06c43f              # double 0.44391799999999998
	.quad	0x3f8863beec39799e              # double 0.011908999999999999
	.quad	0x3fdef23465625a68              # double 0.48353299999999999
	.quad	0x3fd4f733a8a3f898              # double 0.32758799999999999
	.quad	0x3feef125dd095af3              # double 0.96693700000000004
	.quad	0x3fc69fe86833c600              # double 0.176755
	.quad	0x3fdc227d028a1dfc              # double 0.43960500000000002
	.quad	0x3fe486e19b90ea9e              # double 0.64146499999999995
	.quad	0x3fd75b70691ea78b              # double 0.364956
	.quad	0x3fedf8b1572580c3              # double 0.936608
	.quad	0x3fe68676a7264a17              # double 0.70391400000000004
	.quad	0x3fbd58d9b5e95b79              # double 0.114637
	.quad	0x3fd59170d62bf120              # double 0.33700200000000002
	.quad	0x3f6f59ccfaeff5c7              # double 0.0038270000000000001
	.quad	0x3fd7a7ded6ba8c58              # double 0.36962099999999998
	.quad	0x3fe04a48f96e1587              # double 0.50906799999999996
	.quad	0x3fe159dfdac68a93              # double 0.54222099999999995
	.quad	0x3fbff6c2699c7bcc              # double 0.124859
	.quad	0x3feaa57a786c2268              # double 0.8327
	.quad	0x3fe929d8409e55c1              # double 0.786358
	.quad	0x3fdd0e1719f7f8cb              # double 0.45398500000000003
	.quad	0x3fed9d81f10667f9              # double 0.92547699999999999
	.quad	0x3fefc70eb24a6a87              # double 0.99304899999999995
	.quad	0x3fecd47e06961c37              # double 0.90093900000000005
	.quad	0x3fd5c53f39d1b2e6              # double 0.34016400000000002
	.quad	0x3fd583a109d0635a              # double 0.33615899999999999
	.quad	0x3fca7ed84d338f7a              # double 0.20699600000000001
	.quad	0x3fe45a187a4a48f9              # double 0.63599799999999995
	.quad	0x3fe12c753e707e17              # double 0.53667699999999996
	.quad	0x3fd36e008e9b38d6              # double 0.303589
	.quad	0x3fc0aada33bd9cae              # double 0.130214
	.quad	0x3feb15f88fc9363f              # double 0.84643199999999996
	.quad	0x3fe611e85fd04a30              # double 0.68968600000000002
	.quad	0x3fe746bce8533b10              # double 0.72738499999999995
	.quad	0x3f95d4e8fb00bcbe              # double 0.021319999999999999
	.quad	0x3fefb504c48adeec              # double 0.99084700000000003
	.quad	0x3fe48d49949e8816              # double 0.64224700000000001
	.quad	0x3fee0f8a4c1ebc84              # double 0.93939700000000003
	.quad	0x3fcddb0142f61ed6              # double 0.23324600000000001
	.quad	0x3fe27a7221858bc6              # double 0.57744700000000004
	.quad	0x3fef098d477bbf94              # double 0.969916
	.quad	0x3fe0847d3d4280ae              # double 0.51617299999999999
	.quad	0x3fe2e5907d912557              # double 0.59052300000000002
	.quad	0x3fe3422467be553b              # double 0.60182400000000003
	.quad	0x3fed98090b417ca2              # double 0.92480899999999999
	.quad	0x3fd945308bb90646              # double 0.39484799999999998
	.quad	0x3fbca8f3a9b06812              # double 0.111953
	.quad	0x3fd76e978d4fdf3b              # double 0.36612499999999998
	.quad	0x3fed84ab606b7aa2              # double 0.92244499999999996
	.quad	0x3f7832fcac8e68e4              # double 0.0059080000000000001
	.quad	0x3fd72ea0fd3b29a2              # double 0.36222100000000002
	.quad	0x3fdafaeff5c6c11a              # double 0.421566
	.quad	0x3fdb2b6ae7d566cf              # double 0.42452499999999999
	.quad	0x3fef5564b662fdfc              # double 0.97917399999999998
	.quad	0x3fc080e065300581              # double 0.12893299999999999
	.quad	0x3feae4bcad9ad85e              # double 0.840422
	.quad	0x3fe88f9f44d44567              # double 0.76753199999999999
	.quad	0x3fe6aaeafab53d64              # double 0.70836399999999999
	.quad	0x3fd58f81e8a2ec29              # double 0.33688400000000002
	.quad	0x3fe1e1804d983947              # double 0.55877699999999997
	.quad	0x3fefff540895d0b7              # double 0.99991799999999997
	.quad	0x3fd9aa5c5f7c675a              # double 0.40102300000000002
	.quad	0x3feead59d55e6bc6              # double 0.95866099999999999
	.quad	0x3fd3c3ac929aa1d7              # double 0.30881799999999998
	.quad	0x3fe51700cd855971              # double 0.65905800000000003
	.quad	0x3fe4aa8650e77920              # double 0.64581599999999995
	.quad	0x3fd1e4b87bdcf030              # double 0.27958499999999997
	.quad	0x3feaa30db6a1e81d              # double 0.83240400000000003
	.quad	0x3feefca85caafbc2              # double 0.96834200000000004
	.quad	0x3fed78ec0f883340              # double 0.92101100000000002
	.quad	0x3f8e835dedf1e083              # double 0.014899000000000001
	.quad	0x3fe8a16a48733659              # double 0.76970400000000005
	.quad	0x3fe114a4d2b2bfdb              # double 0.53376999999999997
	.quad	0x3fe3b1e7d9988d2a              # double 0.61546699999999999
	.quad	0x3fca3aafff36ac64              # double 0.20491599999999999
	.quad	0x3fe44a44c7b02d5a              # double 0.63406600000000002
	.quad	0x3fe9f1b691212514              # double 0.81075600000000003
	.quad	0x3fe91791819d2392              # double 0.78412700000000002
	.quad	0x3fc60357a355043e              # double 0.17197699999999999
	.quad	0x3fe7ad0a24463066              # double 0.739873
	.quad	0x3fee954003254e6e              # double 0.95571899999999999
	.quad	0x3fd35d63886594af              # double 0.30257499999999998
	.quad	0x3feb030e3cd9a522              # double 0.84412299999999996
	.quad	0x3fb70c23fab10ba6              # double 0.090028999999999997
	.quad	0x3fe89cd1c7de5083              # double 0.76914300000000002
	.quad	0x3fe80e9f6a93f291              # double 0.75178500000000004
	.quad	0x3fe8bbc6eb0b7c35              # double 0.772922
	.quad	0x3fc0924f227d028a              # double 0.129465
	.quad	0x3fdf6f60e0eb67c3              # double 0.49117300000000003
	.quad	0x3fdaed20296b3355              # double 0.42072300000000001
	.quad	0x3fd78f36694898f6              # double 0.368116
	.quad	0x3fd91cb039ef0f17              # double 0.392376
	.quad	0x3fef53da72a7bd49              # double 0.97898600000000002
	.quad	0x3fc92f3c2dadb835              # double 0.19675400000000001
	.quad	0x3fe3ad05f2884838              # double 0.61487099999999995
	.quad	0x3fd660807357e671              # double 0.34964000000000001
	.quad	0x3fdbaceaaf35e311              # double 0.43242900000000001
	.quad	0x3fe7ff66e86c6584              # double 0.74992700000000001
	.quad	0x3feffec99f1ae2da              # double 0.99985199999999996
	.quad	0x3fe7ab7132724313              # double 0.73967799999999995
	.quad	0x3fc827ae9ab29e4d              # double 0.18871099999999999
	.quad	0x3fe7850df15a4acf              # double 0.73499199999999998
	.quad	0x3fe506594af4f0d8              # double 0.65702499999999997
	.quad	0x3fe3ed30f062d40b              # double 0.62270400000000004
	.quad	0x3fe463ffef39085f              # double 0.63720699999999997
	.quad	0x3fd94028e4fb97bb              # double 0.39454099999999998
	.quad	0x3fcc386d2ed783e0              # double 0.220472
	.quad	0x3fed931a8ef77f28              # double 0.924207
	.quad	0x3fc769fcf3dc054f              # double 0.182922
	.quad	0x3fc5d4ae429e0a42              # double 0.17055300000000001
	.quad	0x3feaec636b096356              # double 0.84135599999999999
	.quad	0x3fecea400fba8827              # double 0.90359500000000004
	.quad	0x3fd19fcb0c026cc2              # double 0.27537800000000001
	.quad	0x3fe6b6177ea1c68f              # double 0.70972800000000003
	.quad	0x3feb1b9b66f9335d              # double 0.84711999999999998
	.quad	0x3fdfa6d698fe6927              # double 0.494558
	.quad	0x3fd38c2a454de7ea              # double 0.30542999999999998
	.quad	0x3fe1ebbdbe3c1052              # double 0.56002700000000005
	.quad	0x3fe809edbf8b9baa              # double 0.75121199999999999
	.quad	0x3fd7227d028a1dfc              # double 0.36148000000000002
	.quad	0x3fd634df04ddb552              # double 0.34697699999999998
	.quad	0x3fc8fcce1c58255b              # double 0.195215
	.quad	0x3fdff0cbaf965b21              # double 0.49907200000000002
	.quad	0x3fe038b8ae31d713              # double 0.50692400000000004
	.quad	0x3fe4415b1422ccb4              # double 0.63297800000000004
	.quad	0x3fc6cd423d9231c6              # double 0.17813899999999999
	.quad	0x3febafa0d77b7c78              # double 0.86518899999999999
	.quad	0x3fc3a975afaf8594              # double 0.153609
	.quad	0x3fcda615a8deb0fb              # double 0.231631
	.quad	0x3fb265061416377a              # double 0.071854000000000001
	.quad	0x3fe347abfb9bed31              # double 0.60249900000000001
	.quad	0x3fec2fb19e731d2e              # double 0.88082199999999999
	.quad	0x3fe359b5e95b78cd              # double 0.60470100000000004
	.quad	0x3fc2c7da1ec4e725              # double 0.14672399999999999
	.quad	0x3fec978b3700474e              # double 0.89349900000000004
	.quad	0x3fefa63736cdf267              # double 0.98904000000000003
	.quad	0x3fd2950b955f7836              # double 0.29034700000000002
	.quad	0x3fec91bc55864452              # double 0.89278999999999997
	.quad	0x3fd6e4ef0281ba80              # double 0.35772300000000001
	.quad	0x3fdda0cae642bf98              # double 0.46293899999999999
	.quad	0x3fd26c97d8cf398f              # double 0.28787800000000002
	.quad	0x3fef817fc7607c42              # double 0.98455800000000004
	.quad	0x3fd8c970f7b9e061              # double 0.387295
	.quad	0x3fee314a90470a81              # double 0.94351700000000005
	.quad	0x3fe050bd87b56b87              # double 0.50985599999999998
	.quad	0x3fcf24c8366516db              # double 0.24331
	.quad	0x3fecc4827b6fe2e7              # double 0.89898800000000001
	.quad	0x3fbed117b5286b59              # double 0.120378
	.quad	0x3fe1da1ec4e7253e              # double 0.55787600000000004
	.quad	0x3fecd2ed783dff3f              # double 0.90074799999999999
	.quad	0x3fe58ad03d9a9542              # double 0.67319499999999999
	.quad	0x3fca65625a682b63              # double 0.20621900000000001
	.quad	0x3fe77d77fae3608d              # double 0.734066
	.quad	0x3fd793e5fb71fbc6              # double 0.36840200000000001
	.quad	0x3fed9fcd24e160d9              # double 0.92575700000000005
	.quad	0x3fe12a433508f649              # double 0.53640900000000002
	.quad	0x3fe8e81450efdc9c              # double 0.77832999999999996
	.quad	0x3fdb4ca925fe974a              # double 0.42655399999999999
	.quad	0x3f7fc9ff92f2b66b              # double 0.0077609999999999997
	.quad	0x3fe16eb91b3f20a7              # double 0.54476599999999997
	.quad	0x3fb787ce95faa8a8              # double 0.091915999999999998
	.quad	0x3fb3759685122318              # double 0.076012999999999997
	.quad	0x3fc91ae2da554b8c              # double 0.196133
	.quad	0x3fd54549b62c7757              # double 0.33235399999999998
	.quad	0x3fd06848beb5b2d5              # double 0.25636500000000001
	.quad	0x3fc4e5929670196e              # double 0.16325600000000001
	.quad	0x3fe5a7e9531550ca              # double 0.67674699999999999
	.quad	0x3f99b3d07c84b5dd              # double 0.025100000000000001
	.quad	0x3fe3148ba83f4eca              # double 0.59625799999999995
	.quad	0x3fea38b26394face              # double 0.81942099999999995
	.quad	0x3fe494a4d2b2bfdb              # double 0.64314499999999997
	.quad	0x3fd5f4e874c8ffb9              # double 0.34307300000000002
	.quad	0x3fe1ee5471715c64              # double 0.56034300000000004
	.quad	0x3fee81bc98a222d5              # double 0.95333699999999999
	.quad	0x3fe2c3ed959a3098              # double 0.58641699999999997
	.quad	0x3fe97396d0917d6b              # double 0.79535999999999996
	.quad	0x3fe87fde7210be94              # double 0.76560899999999998
	.quad	0x3fdaca8198f1d3ed              # double 0.41860999999999998
	.quad	0x3fd90157eed45e92              # double 0.39070700000000003
	.quad	0x3fc5b6ed6777079e              # double 0.16964499999999999
	.quad	0x3fe4aa90cd423d92              # double 0.64582099999999998
	.quad	0x3fc0a7ac81d3aa37              # double 0.13011700000000001
	.quad	0x3feaa05143bf7271              # double 0.83206999999999998
	.quad	0x3fe30d5410f94c88              # double 0.59537700000000005
	.quad	0x3fc48e60807357e6              # double 0.16059499999999999
	.quad	0x3fd03afb7e90ff97              # double 0.25359999999999999
	.quad	0x3fef9f36262cba73              # double 0.98818499999999998
	.quad	0x3fefee88df37329c              # double 0.99786799999999997
	.quad	0x3fe9412f09d8c6d6              # double 0.78920699999999999
	.quad	0x3fecf5515054ac2a              # double 0.90494600000000003
	.quad	0x3fa8afe60c38f367              # double 0.048217000000000003
	.quad	0x3fe112684cf0739b              # double 0.533497
	.quad	0x3f9f6ba0620ab713              # double 0.030683999999999999
	.quad	0x3fd2b71327243138              # double 0.29242400000000002
	.quad	0x3fd23b320535c9e6              # double 0.28486299999999998
	.quad	0x3fdbae3a3a8e7147              # double 0.43250899999999998
	.quad	0x3fd67296f6512a95              # double 0.350744
	.quad	0x3fbd988d2a1f8e3b              # double 0.115609
	.quad	0x3fed02a77a2cecc8              # double 0.90657399999999999
	.quad	0x3feb659af9ebe9c9              # double 0.85615300000000005
	.quad	0x3fede81cb46bacf7              # double 0.93458399999999997
	.quad	0x3feaba1b1960fa16              # double 0.83521800000000002
	.quad	0x3fef7f6f4be835df              # double 0.98430600000000001
	.quad	0x3fe87e23f24d8fd6              # double 0.76539800000000002
	.quad	0x3fcc195464dc22ab              # double 0.219523
	.quad	0x3fdb6fdeb52c9d17              # double 0.428703
	.quad	0x3fd0321e603d5779              # double 0.25305899999999998
	.quad	0x3fdf78c436fc1590              # double 0.49174600000000002
	.quad	0x3fed6a593a2df938              # double 0.91923200000000005
	.quad	0x3feca5093964a59c              # double 0.89514599999999999
	.quad	0x3fca1a3f4666ec9e              # double 0.203926
	.quad	0x3fd8a27ae9ab29e5              # double 0.38491700000000001
	.quad	0x3fb2a3486f049a99              # double 0.072803999999999994
	.quad	0x3fc4768dfbd6a594              # double 0.15986800000000001
	.quad	0x3fe74c61d8622c45              # double 0.728074
	.quad	0x3fc3d145d851654d              # double 0.15482399999999999
	.quad	0x3fe652e514c22ee4              # double 0.69761899999999999
	.quad	0x3fda01c4fc1df330              # double 0.406358
	.quad	0x3fc648f96e158751              # double 0.17410200000000001
	.quad	0x3fb88adeebb341e1              # double 0.095868999999999996
	.quad	0x3feb13e1c9b41398              # double 0.84617699999999996
	.quad	0x3f9c144028e4fb98              # double 0.027421000000000001
	.quad	0x3fe8cc78e9f6a93f              # double 0.77495999999999998
	.quad	0x3fd7e236c15d2d02              # double 0.37318200000000001
	.quad	0x3fe354b2745bf26f              # double 0.60408899999999999
	.quad	0x3fe3706d50657321              # double 0.60747399999999996
	.quad	0x3fe131b584b1ab08              # double 0.53731799999999996
	.quad	0x3fbd197a24894c44              # double 0.11366999999999999
	.quad	0x3fe4de5d18090b41              # double 0.65214399999999995
	.quad	0x3fdd9bf9c62a1b5c              # double 0.46264499999999997
	.quad	0x3fe29c6d1e108c3f              # double 0.58159499999999997
	.quad	0x3fd68d8a979e16d7              # double 0.35238900000000001
	.quad	0x3fa76fd21ff2e48f              # double 0.045775000000000003
	.quad	0x3fe96fd438d1d8a5              # double 0.79490099999999997
	.quad	0x3fc02706d5065732              # double 0.126191
	.quad	0x3fe57e2e6ea85447              # double 0.67165299999999994
	.quad	0x3fe140e7bc3c5bd1              # double 0.53917300000000001
	.quad	0x3fdb87980f55de59              # double 0.43015100000000001
	.quad	0x3fe05f0f5a1016ce              # double 0.51160399999999995
	.quad	0x3fd3ccc89b0ee49f              # double 0.30937399999999998
	.quad	0x3fc273e681a9b8cc              # double 0.14416200000000001
	.quad	0x3fda8259e1f3a57f              # double 0.41420600000000002
	.quad	0x3fefa135daad6020              # double 0.988429
	.quad	0x3feb98cc144028e5              # double 0.862402
	.quad	0x3fd383f91e646f15              # double 0.30492999999999998
	.quad	0x3fee57774aba3876              # double 0.94817700000000005
	.quad	0x3fd0e3821af7d30b              # double 0.26388600000000001
	.quad	0x3fe0b0caa326e115              # double 0.52158099999999996
	.quad	0x3fea28aa433508f6              # double 0.81746399999999997
	.quad	0x3fd763fdd65a1449              # double 0.36547800000000003
	.quad	0x3fe9c21c044284e0              # double 0.80494500000000002
	.quad	0x3fbd6dc1a47a9e2c              # double 0.114956
	.quad	0x3fce93c03bc4d22d              # double 0.23888400000000001
	.quad	0x3fdb72d5e071c53f              # double 0.42888399999999999
	.quad	0x3fabe39f77292c49              # double 0.054470999999999999
	.quad	0x3fe51d14e3bcd35b              # double 0.65980000000000005
	.quad	0x3fdfd87f88765ba7              # double 0.497589
	.quad	0x3fd8e93e1c9b413a              # double 0.38923600000000003
	.quad	0x3feaaa737110e454              # double 0.83330700000000001
	.quad	0x3fe99888f861a60d              # double 0.79986999999999997
	.quad	0x3fc9743e963dc487              # double 0.19886000000000001
	.quad	0x3fd2701d9f4d37c1              # double 0.28809299999999999
	.quad	0x3fea490c4dec1c1d              # double 0.82141699999999995
	.quad	0x3f9ce6c093d96638              # double 0.028223999999999999
	.quad	0x3f9e41d4b6a619db              # double 0.029548000000000001
	.quad	0x3fe2506bbdbe3c10              # double 0.57231699999999996
	.quad	0x3fd09f72f76e6107              # double 0.25973200000000002
	.quad	0x3fef7023e9ea1405              # double 0.98243899999999995
	.quad	0x3fba541d8e864021              # double 0.10284600000000001
	.quad	0x3fdfceaaf35e310e              # double 0.49698900000000001
	.quad	0x3fe20fadf2ecf206              # double 0.56441399999999997
	.quad	0x3fdbc3ce2089e343              # double 0.43382599999999999
	.quad	0x3fd40b7c3504c48b              # double 0.31320100000000001
	.quad	0x3fc658d5842b734b              # double 0.17458599999999999
	.quad	0x3fb45ee568a50508              # double 0.079573000000000005
	.quad	0x3fe544e93e1c9b41              # double 0.66466199999999998
	.quad	0x3fd4b9170d62bf12              # double 0.323797
	.quad	0x3fd207075b3e1438              # double 0.28167900000000001
	.quad	0x3fdc0bdcad14a0a1              # double 0.438224
	.quad	0x3fee4c2d6a9c560c              # double 0.94679899999999994
	.quad	0x3fd0e48626f60e0f              # double 0.26394800000000002
	.quad	0x3fe2529dc725c3df              # double 0.57258500000000001
	.quad	0x3fe9b58afc47e49b              # double 0.80341099999999999
	.quad	0x3fc29c66d373affb              # double 0.145398
	.quad	0x3fe77b7a5f41aef7              # double 0.733823
	.quad	0x3feb6c9c0a8d21bc              # double 0.85700799999999999
	.quad	0x3fd032e3821af7d3              # double 0.253106
	.quad	0x3fddd41b75a74c0a              # double 0.46607100000000001
	.quad	0x3fccf112fd32c626              # double 0.226107
	.quad	0x3fde8650e779207d              # double 0.47694799999999998
	.quad	0x3fe9c0010c6f7a0b              # double 0.80468799999999996
	.quad	0x3fe899bb2788db05              # double 0.76876599999999995
	.quad	0x3fe0345ae5ffa3ba              # double 0.50639100000000004
	.quad	0x3fdbee1bd1ed9dfe              # double 0.43640800000000002
	.quad	0x3feafef7c243dccf              # double 0.84362400000000004
	.quad	0x3fd99107faa044af              # double 0.39947700000000003
	.quad	0x3fbc8b32ce89656f              # double 0.111499
	.quad	0x3fe4b4784230fcf8              # double 0.64702999999999999
	.quad	0x3fb67e846a5d6bec              # double 0.087868000000000002
	.quad	0x3fe05d93c46d82ba              # double 0.51142299999999996
	.quad	0x3fc129f59ccfaeff              # double 0.13409299999999999
	.quad	0x3fd2fbd6a593a2e0              # double 0.29662100000000002
	.quad	0x3fe7c30f49491f2e              # double 0.74256100000000003
	.quad	0x3fc3f0b28522ea10              # double 0.155783
	.quad	0x3fe3dc896dd26b72              # double 0.62067099999999997
	.quad	0x3fe3eb97fe8ee6b8              # double 0.62250899999999998
	.quad	0x3fd101ffb480a5ad              # double 0.26574700000000001
	.quad	0x3fb97eaa2a0a9585              # double 0.099588999999999997
	.quad	0x3fd2fd86a8fc0d2c              # double 0.29672399999999999
	.quad	0x3fecad55a3a08399              # double 0.89615900000000004
	.quad	0x3fcd5525cc426352              # double 0.229161
	.quad	0x3fdaea1c68ec52a4              # double 0.420539
	.quad	0x3fef6d71f36262cc              # double 0.98211000000000003
	.quad	0x3fc639f77292c493              # double 0.17364399999999999
	.quad	0x3fd3524399b2c40d              # double 0.301896
	.quad	0x3fa841cc532a4980              # double 0.047377000000000002
	.quad	0x3febc49ba5e353f8              # double 0.86775000000000002
	.quad	0x3fb702d59d55e6bc              # double 0.089886999999999995
	.quad	0x3fb2bfa8f7db6e50              # double 0.073236999999999997
	.quad	0x3feb73215fcc1872              # double 0.85780400000000001
	.quad	0x3fbe5657fb69984a              # double 0.118505
	.quad	0x3fe170aa21a719b5              # double 0.54500300000000002
	.quad	0x3fe98fbca1059ea5              # double 0.79879599999999995
	.quad	0x3fe1c6540cc78e9f              # double 0.55545999999999995
	.quad	0x3fdbc92ddbdb5d89              # double 0.43415399999999998
	.quad	0x3fe7c024b33daf8e              # double 0.742205
	.quad	0x3fd65718eb895076              # double 0.34906599999999999
	.quad	0x3fe9b1572580c309              # double 0.802898
	.quad	0x3fc0c4bd33d29564              # double 0.13100400000000001
	.quad	0x3fef8366516db0de              # double 0.98479000000000005
	.quad	0x3fee8e68e3ef2841              # double 0.95488399999999996
	.quad	0x3fe1b0ff10ecb74e              # double 0.55285600000000001
	.quad	0x3feefdd872f33ca3              # double 0.96848699999999998
	.quad	0x3fd996787ce95fab              # double 0.39980900000000003
	.quad	0x3fd7c5f394b7b289              # double 0.37145699999999998
	.quad	0x3fd877c88e79aae7              # double 0.38231100000000001
	.quad	0x3f8c49774256bca5              # double 0.013812
	.quad	0x3fcc5ed4a1ad6452              # double 0.22164400000000001
	.quad	0x3fee4185058dde7a              # double 0.94549799999999995
	.quad	0x3fb3c393682730c6              # double 0.077202999999999993
	.quad	0x3fd1bd6e8af81627              # double 0.27718700000000002
	.quad	0x3fdbcb923a29c77a              # double 0.43430000000000002
	.quad	0x3fe7470eb24a6a87              # double 0.72742399999999996
	.quad	0x3fc15579af1886e0              # double 0.13542100000000001
	.quad	0x3fed254e6e221c8a              # double 0.91080399999999995
	.quad	0x3fedfb3743632c1f              # double 0.93691599999999997
	.quad	0x3fd18ecd8dbcec85              # double 0.274341
	.quad	0x3fefaeab7995ee13              # double 0.99007199999999995
	.quad	0x3fe1b3aabcd78c43              # double 0.55318199999999995
	.quad	0x3fe61e55c0fcb4f2              # double 0.69120300000000001
	.quad	0x3fb29c66d373affb              # double 0.072699
	.quad	0x3fead7518b0d0edc              # double 0.83878399999999997
	.quad	0x3fe81ea9a3d2d880              # double 0.75374300000000005
	.quad	0x3feb06db50f40e5a              # double 0.84458699999999998
	.quad	0x3fefe3cfb3311a54              # double 0.99655899999999997
	.quad	0x3fc602a77a2cecc8              # double 0.171956
	.quad	0x3fee144028e4fb98              # double 0.93997200000000002
	.quad	0x3fef8eabffcdab19              # double 0.98616599999999998
	.quad	0x3fd1729b280f12c2              # double 0.27261999999999997
	.quad	0x3fe9c76f2a5a469d              # double 0.80559499999999995
	.quad	0x3fe44a2fcefaa476              # double 0.63405599999999995
	.quad	0x3fee3cc8de2ac322              # double 0.94491999999999998
	.quad	0x3fd1941c8216c615              # double 0.27466499999999999
	.quad	0x3fe9473471f79421              # double 0.78994200000000003
	.quad	0x3fe62c881e4712e4              # double 0.692936
	.quad	0x3fe18d130df9bdc7              # double 0.54847100000000004
	.quad	0x3fed4b167ec7863c              # double 0.915416
	.quad	0x3fd1e5e679463cfb              # double 0.27965699999999999
	.quad	0x3fd54ad794a6eb92              # double 0.33269300000000002
	.quad	0x3fd4867ad8e43244              # double 0.32070799999999999
	.quad	0x3fd172e6a76965f5              # double 0.27263799999999999
	.quad	0x3fe54df266ba493d              # double 0.66576500000000005
	.quad	0x3fd23fee2c98e53f              # double 0.28515200000000002
	.quad	0x3fedc347e8ccdd94              # double 0.93008800000000002
	.quad	0x3fe4024d4cb9ecf6              # double 0.62528099999999998
	.quad	0x3fecce618ce2d1f2              # double 0.90019300000000002
	.quad	0x3fe3a2f05a708ede              # double 0.61363999999999996
	.quad	0x3f892189bd8383ae              # double 0.012271000000000001
	.quad	0x3fc8b86b15f88fc9              # double 0.19312799999999999
	.quad	0x3fa8900c521dda06              # double 0.047974000000000003
	.quad	0x3fd5339c0ebedfa4              # double 0.33127499999999999
	.quad	0x3fe1c31593e5fb72              # double 0.555064
	.quad	0x3fedcb74ddf86e3b              # double 0.93108599999999997
	.quad	0x3fdbb5d894812be5              # double 0.43297400000000003
	.quad	0x3fc5c8754f3775b8              # double 0.17018
	.quad	0x3fef96e7a311e860              # double 0.98717100000000002
	.quad	0x3fe1477143393ab4              # double 0.53997099999999998
	.quad	0x3fe4f0b8cfbfc654              # double 0.65438499999999999
	.quad	0x3fc3b6aa4b9884c7              # double 0.15401200000000001
	.quad	0x3fb34623d0bfa094              # double 0.075288999999999995
	.quad	0x3fde0331e3a7daa5              # double 0.468945
	.quad	0x3fc0f4adbc664d3c              # double 0.132467
	.quad	0x3fef810a569b1748              # double 0.98450199999999998
	.quad	0x3fc6c3c9eecbfb16              # double 0.17785000000000001
	.quad	0x3fa88c60cbf2b23a              # double 0.047946000000000003
	.quad	0x3fe7c4bb1af3a14d              # double 0.74276500000000001
	.quad	0x3fa337867f0aa21a              # double 0.037532999999999997
	.quad	0x3fe7992ea52ef912              # double 0.73744900000000002
	.quad	0x3fe5c1aef6f8f041              # double 0.67989299999999997
	.quad	0x3fc89c12f09d8c6d              # double 0.19226299999999999
	.quad	0x3fe51bcba3012168              # double 0.65964299999999998
	.quad	0x3fe164a38327674d              # double 0.54353499999999999
	.quad	0x3fc9add9c27e9531              # double 0.20061799999999999
	.quad	0x3fea4f67b1c0010c              # double 0.82219299999999995
	.quad	0x3fe60e3476295209              # double 0.68923400000000001
	.quad	0x3fc7960fa15db339              # double 0.18426699999999999
	.quad	0x3fd64827b6fe2e6f              # double 0.34815400000000002
	.quad	0x3fe4b5c9e6687f45              # double 0.64719099999999996
	.quad	0x3fe1c2aed1394318              # double 0.55501500000000004
	.quad	0x3fe8fa0945f9df55              # double 0.78052200000000005
	.quad	0x3fe155a187a4a490              # double 0.54170300000000005
	.quad	0x3feb461f9f01b867              # double 0.85231000000000001
	.quad	0x3fdcea5b530ced4e              # double 0.45180399999999998
	.quad	0x3fe4ff84449dbec2              # double 0.65619099999999997
	.quad	0x3fed52977c88e79b              # double 0.91633200000000004
	.quad	0x3fb1aa715831f03d              # double 0.069006999999999999
	.quad	0x3fd02074ea8da7f4              # double 0.25198100000000001
	.quad	0x3fe27ab7564302b4              # double 0.57747999999999999
	.quad	0x3fe6ea704bc27632              # double 0.71611800000000003
	.quad	0x3fba2c01e68a0d35              # double 0.10223400000000001
	.quad	0x3fe1ad6238da3c21              # double 0.55241499999999999
	.quad	0x3fea19999999999a              # double 0.81562500000000004
	.quad	0x3fd4fc9795b35b0c              # double 0.32791700000000001
	.quad	0x3fc792fb19e731d3              # double 0.184173
	.quad	0x3fd2a57a786c2268              # double 0.29135
	.quad	0x3fda968512231833              # double 0.415437
	.quad	0x3fe915a8deb0fadf              # double 0.78389399999999998
	.quad	0x3fd398fe69270b07              # double 0.30621300000000001
	.quad	0x3feeb3269df97aab              # double 0.95936900000000002
	.quad	0x3fe9dd4845132f88              # double 0.80826200000000004
	.quad	0x3fc7d5a187a4a490              # double 0.18620700000000001
	.quad	0x3fe3bf6e3f78bbd4              # double 0.61711800000000006
	.quad	0x3fd23682730c6717              # double 0.28457700000000002
	.quad	0x3fe5965f5275ee9a              # double 0.67460600000000004
	.quad	0x3fefdd26b723ee1c              # double 0.99574600000000001
	.quad	0x3fe0c883fd502257              # double 0.52447699999999997
	.quad	0x3fdc4aec8d5c7475              # double 0.44207299999999999
	.quad	0x3fcbd566cf41f213              # double 0.21745
	.quad	0x3fe3a89118c197e5              # double 0.61432699999999996
	.quad	0x3fda26a65cf67b1c              # double 0.408609
	.quad	0x3fe13fdf7e8038a0              # double 0.53904700000000005
	.quad	0x3fe9765dbfceb789              # double 0.79569900000000005
	.quad	0x3fdc432ca57a786c              # double 0.44159999999999999
	.quad	0x3fc194face67d780              # double 0.13735900000000001
	.quad	0x3fefbc925785f8d3              # double 0.99176900000000001
	.quad	0x3fca59e1f3a57eaa              # double 0.205868
	.quad	0x3fe580cf9e3864cb              # double 0.67197399999999996
	.quad	0x3fcc9ced0b30b5aa              # double 0.22353899999999999
	.quad	0x3febe18efbb0e5e6              # double 0.87128399999999995
	.quad	0x3fe6c057082491b0              # double 0.71097900000000003
	.quad	0x3fe062888b545c79              # double 0.51202800000000004
	.quad	0x3fe45e0b4e11dbcb              # double 0.63648000000000005
	.quad	0x3fe73352a8438088              # double 0.72501499999999997
	.quad	0x3fed7bca1059ea57              # double 0.92136099999999999
	.quad	0x3fc8a7ce0fc2eba2              # double 0.19262099999999999
	.quad	0x3fd3ba3ca7503b82              # double 0.30824200000000002
	.quad	0x3fdae26d4801f751              # double 0.42007
	.quad	0x3fda0bd87b56b873              # double 0.40697299999999997
	.quad	0x3fef2d70e6f2e8c0              # double 0.97429699999999996
	.quad	0x3fc7947cfa26a22b              # double 0.18421899999999999
	.quad	0x3feb7f2a172abef0              # double 0.85927299999999995
	.quad	0x3fdb74c8ffb8b264              # double 0.42900300000000002
	.quad	0x3fc8d8a979e16d6e              # double 0.19411200000000001
	.quad	0x3fccd0e560418937              # double 0.22512499999999999
	.quad	0x3fe951bf7ad4b274              # double 0.79122899999999996
	.quad	0x3fedb841248d7e02              # double 0.92874199999999996
	.quad	0x3facf3775b813016              # double 0.056544999999999998
	.quad	0x3fb073de1e2de871              # double 0.064268000000000006
	.quad	0x3fad4280ae104923              # double 0.057147999999999997
	.quad	0x3feaa85ec3dab5c4              # double 0.83305300000000004
	.quad	0x3fe1687d2c7b890d              # double 0.54400499999999996
	.quad	0x3fdb85a0be510907              # double 0.430031
	.quad	0x3fdeb4edb2f661f2              # double 0.47979300000000003
	.quad	0x3fe75989df1172ef              # double 0.72968
	.quad	0x3fda59ddc1e7967d              # double 0.41173500000000002
	.quad	0x3fe61cc964628028              # double 0.69101400000000002
	.quad	0x3fe96b0531982880              # double 0.79431399999999996
	.quad	0x3fbcf6f08cc575c0              # double 0.11314299999999999
	.quad	0x3fd8668c26139000              # double 0.38125900000000001
	.quad	0x3fec4ead0c3d2524              # double 0.88460399999999994
	.quad	0x3fedaae07e5a78f2              # double 0.92710899999999996
	.quad	0x3fdf6ad2dcb1465f              # double 0.49089500000000003
	.quad	0x3fe67c32ebe596c8              # double 0.70266099999999998
	.quad	0x3faa398201cd5f9a              # double 0.051220000000000002
	.quad	0x3fad0ebaade657b8              # double 0.056752999999999998
	.quad	0x3feb470eb24a6a87              # double 0.85242399999999996
	.quad	0x3fea1d7774aba387              # double 0.81609699999999996
	.quad	0x3fedd03b81b64e05              # double 0.93166899999999997
	.quad	0x3fe6ea3df6db9410              # double 0.71609400000000001
	.quad	0x3fabe1a8262456f7              # double 0.054455999999999997
	.quad	0x3fc4f5903a7546d4              # double 0.163744
	.quad	0x3fd38cc9a77e5eab              # double 0.30546800000000002
	.quad	0x3fdfb03e20ccff22              # double 0.49513200000000002
	.quad	0x3fc16c1e364bec68              # double 0.13611200000000001
	.quad	0x3fdf81dc0db2702a              # double 0.49230099999999999
	.quad	0x3fa90dbf0563ed0f              # double 0.048932999999999997
	.quad	0x3f80b39192641b33              # double 0.0081550000000000007
	.quad	0x3fe9602c9081c2e3              # double 0.79298999999999997
	.quad	0x3fc828ed5f138bce              # double 0.188749
	.quad	0x3fc40232096787cf              # double 0.15631700000000001
	.quad	0x3fe62fcac8e68e3f              # double 0.69333400000000001
	.quad	0x3fa7e21d96e9bbf1              # double 0.046647000000000001
	.quad	0x3fc41f8e3ac0c62e              # double 0.15721299999999999
	.quad	0x3fdd4e69f05ea24d              # double 0.45791100000000001
	.quad	0x3feddb9e8c47a17f              # double 0.93305899999999997
	.quad	0x3fdb6a7ac81d3aa3              # double 0.42837399999999998
	.quad	0x3fda50efdc9c4da9              # double 0.41119
	.quad	0x3f9d33d29563a9f4              # double 0.028518000000000002
	.quad	0x3f8be5d9e40c8473              # double 0.013622
	.quad	0x3fee370ef566490a              # double 0.94422099999999998
	.quad	0x3fea20ea5b530ced              # double 0.81651799999999997
	.quad	0x3fea17efe0ce0b91              # double 0.81542199999999998
	.quad	0x3f9532617c1bda51              # double 0.0207
	.quad	0x3feb46a5d6bebe16              # double 0.85237399999999997
	.quad	0x3fea25c1c6088d6d              # double 0.81710899999999997
	.quad	0x3fea98d8a979e16d              # double 0.83115799999999995
	.quad	0x3fd53b2dd377e1b9              # double 0.331737
	.quad	0x3fb17b634dad31fd              # double 0.068289000000000002
	.quad	0x3fe3a602c9081c2e              # double 0.61401499999999998
	.quad	0x3fecc3e963dc486b              # double 0.89891500000000002
	.quad	0x3fdcec41dd1a21ea              # double 0.45191999999999999
	.quad	0x3fda6afcce1c5825              # double 0.41277999999999998
	.quad	0x3fd4ae8e1d6494d5              # double 0.323154
	.quad	0x3f82e275ab7dc7ac              # double 0.009221
	.quad	0x3fed67ad8e432442              # double 0.918906
	.quad	0x3fe9709528f190d1              # double 0.79499299999999995
	.quad	0x3fcd84db9c7368ad              # double 0.23061699999999999
	.quad	0x3fe1835bd512ec6c              # double 0.54728500000000002
	.quad	0x3fcbe5c0b9991362              # double 0.217949
	.quad	0x3fe6fa2cecc814d7              # double 0.71803899999999998
	.quad	0x3feeb508f648c719              # double 0.95959899999999997
	.quad	0x3fea570a3d70a3d7              # double 0.823125
	.quad	0x3fed924af0bf1a5d              # double 0.92410800000000004
	.quad	0x3fe51309c7ffde72              # double 0.65857399999999999
	.quad	0x3fed677b395c4220              # double 0.91888199999999997
	.quad	0x3f8ef8487b99d452              # double 0.015122
	.quad	0x3fea7af640639d5e              # double 0.82750999999999997
	.quad	0x3fe8b634dad31fcd              # double 0.77224199999999998
	.quad	0x3fe42aa5c5f7c676              # double 0.63020600000000004
	.quad	0x3fdb0f2389720429              # double 0.42279899999999998
	.quad	0x3fe2deebb341e14c              # double 0.58971200000000001
	.quad	0x3fe6b7e2c55c9603              # double 0.70994699999999999
	.quad	0x3fefa82c6ef3d3a2              # double 0.98927900000000002
	.quad	0x3fd47bb2fec56d5d              # double 0.32005
	.quad	0x3fba4df47f993d53              # double 0.102752
	.quad	0x3fdbea18372e6a77              # double 0.43616300000000002
	.quad	0x3fef6c0f88333fc8              # double 0.98194099999999995
	.quad	0x3fec6f86a098915c              # double 0.88861400000000001
	.quad	0x3fe5844f1a1986ba              # double 0.67240100000000003
	.quad	0x3fe0cf28c79f6662              # double 0.52528799999999998
	.quad	0x3fd18576cce5f740              # double 0.27377099999999999
	.quad	0x3fe6fea1c68ec52a              # double 0.71858299999999997
	.quad	0x3fe58b4e11dbca97              # double 0.67325500000000005
	.quad	0x3fe273fd933e35c6              # double 0.57665900000000003
	.quad	0x3fca2dd7a99fa11b              # double 0.20452400000000001
	.quad	0x3fe1710667f90d9d              # double 0.54504699999999995
	.quad	0x3fe5c8a58b3f63c3              # double 0.68074299999999999
	.quad	0x3feb4b70ac3a860e              # double 0.85295900000000002
	.quad	0x3febcd594f26aec0              # double 0.86881699999999995
	.quad	0x3fcca643cc07aaef              # double 0.223824
	.quad	0x3f94a98aa8650e78              # double 0.020178000000000001
	.quad	0x3fd86ec5b078d930              # double 0.38176100000000002
	.quad	0x3fe63d7f51efb6dd              # double 0.69500700000000004
	.quad	0x3fd65ac471b47842              # double 0.34928999999999999
	.quad	0x3fe70a159817b95a              # double 0.71998099999999998
	.quad	0x3feaa50f840181e0              # double 0.83264899999999997
	.quad	0x3fead7add15f02c5              # double 0.83882800000000002
	.quad	0x3fe05119ce075f70              # double 0.50990000000000002
	.quad	0x3fdea89331a08bfc              # double 0.47903899999999999
	.quad	0x3fe0fe69270b06c4              # double 0.53105599999999997
	.quad	0x3fe0305100a393ee              # double 0.50589799999999996
	.quad	0x3fcc5f41aef6f8f0              # double 0.22165699999999999
	.quad	0x3fe9a83d35eb7458              # double 0.80178700000000003
	.quad	0x3fdf8a3b57c4e2f3              # double 0.49281199999999997
	.quad	0x3fe8cd6c2efd438d              # double 0.77507599999999999
	.quad	0x3fe46fe0ce0b912e              # double 0.63865700000000003
	.quad	0x3fcee05ccc89b0ee              # double 0.24122199999999999
	.quad	0x3fd788333fc86cec              # double 0.36768800000000001
	.quad	0x3fe41e34330d7386              # double 0.628687
	.quad	0x3fd9281ba7fc32ec              # double 0.39307300000000001
	.quad	0x3fee59ddc1e7967d              # double 0.94847000000000004
	.quad	0x3febfae147ae147b              # double 0.87437500000000001
	.quad	0x3fcb3cd573647bab              # double 0.21279400000000001
	.quad	0x3fd618090b417ca2              # double 0.345217
	.quad	0x3fd127dcbddb9842              # double 0.26805800000000002
	.quad	0x3fe17143393ab431              # double 0.545076
	.quad	0x3fe4619da9c99286              # double 0.63691600000000004
	.quad	0x3fe986bdf4c2b51c              # double 0.79769800000000001
	.quad	0x3fe2db035bd512ec              # double 0.58923499999999995
	.quad	0x3fd029f9ce8d972d              # double 0.25256200000000001
	.quad	0x3fe74475e6362a5e              # double 0.72710699999999995
	.quad	0x3fb22c2374794ea0              # double 0.070985999999999994
	.quad	0x3feb02d16b97fe8f              # double 0.84409400000000001
	.quad	0x3fb800c9539b8887              # double 0.093761999999999998
	.quad	0x3fe00705425f2021              # double 0.500857
	.quad	0x3fec8fde2ef4e011              # double 0.89256199999999997
	.quad	0x3fd0a5f84cad57bc              # double 0.26012999999999997
	.quad	0x3fda11233df2a9d6              # double 0.40729599999999999
	.quad	0x3fe619fe43675ddd              # double 0.69067299999999998
	.quad	0x3fe2c13122b7baed              # double 0.58608300000000002
	.quad	0x3fd4830e3cd9a522              # double 0.32049899999999998
	.quad	0x3fcce10cf5b1c865              # double 0.22561800000000001
	.quad	0x3f69c7bcc2938de7              # double 0.0031470000000000001
	.quad	0x3fc356c93a711516              # double 0.151086
	.quad	0x3fb2bf9830e3cd9a              # double 0.073235999999999996
	.quad	0x3fc5b845564b6630              # double 0.169686
	.quad	0x3fe947da1ec4e725              # double 0.79002099999999997
	.quad	0x3fd8485e3da2f8be              # double 0.379417
	.quad	0x3fcc2d7b634dad32              # double 0.220138
	.quad	0x3fe0613d31b9b670              # double 0.51187000000000005
	.quad	0x3fcaf20ea5b530cf              # double 0.210512
	.quad	0x3fecc2784a9478c8              # double 0.89873899999999995
	.quad	0x3f801e2584f4c6e7              # double 0.0078700000000000002
	.quad	0x3fe2695b78cc9a78              # double 0.57536100000000001
	.quad	0x3fabc7b45f17bd8c              # double 0.054258000000000001
	.quad	0x3fc13d74d594f26b              # double 0.134688
	.quad	0x3fef65d18090b418              # double 0.98117900000000002
	.quad	0x3fbedd15f02c4d66              # double 0.120561
	.quad	0x3fd6960b6f9fcb0c              # double 0.352908
	.quad	0x3fe7a5d4a5df223a              # double 0.73899300000000001
	.quad	0x3f94f00ef1348b22              # double 0.020447
	.quad	0x3fcfa1fd1569f490              # double 0.24713099999999999
	.quad	0x3fef82e019b0ab2e              # double 0.98472599999999999
	.quad	0x3fe3f9acffa7eb6c              # double 0.62422800000000001
	.quad	0x3fe85eefe4ffc979              # double 0.76158899999999996
	.quad	0x3fea4404a72ead92              # double 0.82080299999999995
	.quad	0x3fbe4a05dd8f92b0              # double 0.11831700000000001
	.quad	0x3fda219652bd3c36              # double 0.4083
	.quad	0x3fe1d27a20578e5c              # double 0.55694299999999997
	.quad	0x3fb40e8c8abd5dc4              # double 0.078347
	.quad	0x3fa2ba3875925354              # double 0.036576999999999998
	.quad	0x3fe7c5d63886594b              # double 0.7429
	.quad	0x3fd193293d102bc7              # double 0.27460699999999999
	.quad	0x3fea5ce39b456b44              # double 0.82383899999999998
	.quad	0x3fd08986fcdee350              # double 0.25839400000000001
	.quad	0x3fc3e55c0fcb4f1e              # double 0.15543699999999999
	.quad	0x3fcd676640a6b93d              # double 0.22971800000000001
	.quad	0x3fd3a9da597d49d8              # double 0.30724200000000002
	.quad	0x3fe0408fa7a85016              # double 0.50788100000000003
	.quad	0x3fe0c5b4aa9717df              # double 0.52413399999999999
	.quad	0x3fee065300581494              # double 0.93827199999999999
	.quad	0x3fc363f572de43ee              # double 0.15148800000000001
	.quad	0x3fe31e53a81dc0db              # double 0.59745199999999998
	.quad	0x3fec36c3760bf5d8              # double 0.88168500000000005
	.quad	0x3fde7525460aa64c              # double 0.47589999999999999
	.quad	0x3fc8f33ca31e7d9a              # double 0.19492300000000001
	.quad	0x3fe2bc408d8ec95c              # double 0.58548
	.quad	0x3fe3f89c5e6ff7e0              # double 0.62409800000000004
	.quad	0x3fe47038e29f9ce9              # double 0.63869900000000002
	.quad	0x3fb5c0010c6f7a0b              # double 0.084960999999999995
	.quad	0x3fc59ea57214f052              # double 0.168904
	.quad	0x3fd12806af46aa08              # double 0.26806799999999997
	.quad	0x3fe23d4cfd08d4bb              # double 0.56998300000000002
	.quad	0x3fdc4ad362e90364              # double 0.44206699999999999
	.quad	0x3fe7087ca643cc08              # double 0.71978600000000004
	.quad	0x3febe2f5989df117              # double 0.87145499999999998
	.quad	0x3fc5d9e40c8472c1              # double 0.170712
	.quad	0x3fe81611ba3ca750              # double 0.75269399999999997
	.quad	0x3fcb6f6d7625204b              # double 0.214338
	.quad	0x3fdee0828c36da88              # double 0.48245300000000002
	.quad	0x3fe32dfb506dd69d              # double 0.59936299999999998
	.quad	0x3fecf46aa087ca64              # double 0.90483599999999997
	.quad	0x3fe090a569b17482              # double 0.51765700000000003
	.quad	0x3fef84cad57bc7f7              # double 0.98495999999999994
	.quad	0x3fc9352220bc382a              # double 0.196934
	.quad	0x3fef3476295208e1              # double 0.97515399999999996
	.quad	0x3fed2eee957470eb              # double 0.91197899999999998
	.quad	0x3feb1dc50ce4ead1              # double 0.84738400000000003
	.quad	0x3fce801f75104d55              # double 0.238285
	.quad	0x3fcbd5ed06fef7c2              # double 0.21746599999999999
	.quad	0x3fde5d9e40c8472c              # double 0.474464
	.quad	0x3fd3b7a5f41aef70              # double 0.30808400000000002
	.quad	0x3fe108787485e3da              # double 0.53228399999999998
	.quad	0x3fe900e6afcce1c6              # double 0.78136000000000005
	.quad	0x3fea977c88e79aae              # double 0.83099199999999995
	.quad	0x3fe6b5a20ddc6195              # double 0.70967199999999997
	.quad	0x3fcc15e39713ad5c              # double 0.219418
	.quad	0x3feb1af9ebe9c886              # double 0.84704299999999999
	.quad	0x3fe5755ffe6d58c9              # double 0.67057800000000001
	.quad	0x3fd8d944aa53fc01              # double 0.38826100000000002
	.quad	0x3fe66a22b3892ee8              # double 0.70045599999999997
	.quad	0x3fa327aa68f4b620              # double 0.037412000000000001
	.quad	0x3fb530ad46f587d7              # double 0.082774
	.quad	0x3fcdd9018e757929              # double 0.233185
	.quad	0x3fe513250b52439a              # double 0.65858700000000003
	.quad	0x3fe26d3d859c8c93              # double 0.57583499999999999
	.quad	0x3fe4c755ffe6d58d              # double 0.64933300000000005
	.quad	0x3fdd1f2990f301eb              # double 0.45502700000000001
	.quad	0x3fe79947cfa26a23              # double 0.73746100000000003
	.quad	0x3fe27eaa2a0a9585              # double 0.57796199999999998
	.quad	0x3fdc3c536d655e29              # double 0.44118200000000002
	.quad	0x3fe4cd7cf5f4e443              # double 0.650084
	.quad	0x3fe9a7589efd86a9              # double 0.801678
	.quad	0x3fd108ede54b48d4              # double 0.26617000000000002
	.quad	0x3fcf97bb73083559              # double 0.24681800000000001
	.quad	0x3fe7a1a719b4dcec              # double 0.738483
	.quad	0x3fd61cf7878b7a1c              # double 0.34551799999999999
	.quad	0x3f97a5f41aef6f8f              # double 0.023094
	.quad	0x3fcae820e6299525              # double 0.21020900000000001
	.quad	0x3fe04db7ae5796c0              # double 0.50948700000000002
	.quad	0x3fefe4d5d80e496f              # double 0.99668400000000001
	.quad	0x3f68efbb0e5e6794              # double 0.0030439999999999998
	.quad	0x3fdfc0485a0be511              # double 0.49611100000000002
	.quad	0x3fecbbb1f255f352              # double 0.89791200000000004
	.quad	0x3fcdbf6a0dbad3a6              # double 0.232404
	.quad	0x3fd8965b20b8066c              # double 0.38417699999999999
	.quad	0x3fefb5781c714fce              # double 0.99090199999999995
	.quad	0x3fbfdb7f1737542a              # double 0.124443
	.quad	0x3fdf6bacf7446f9c              # double 0.49094700000000002
	.quad	0x3fc4c8eef1bac2df              # double 0.162382
	.quad	0x3fd361565c2d2780              # double 0.30281599999999997
	.quad	0x3fe659ea57214f05              # double 0.69847599999999999
	.quad	0x3fee3fdb4cc25072              # double 0.945295
	.quad	0x3fe57a63736cdf26              # double 0.67118999999999995
	.quad	0x3fd4626f60e0eb68              # double 0.31850800000000001
	.quad	0x3fe157a355043e53              # double 0.54194799999999999
	.quad	0x3fd9e40420f6f08d              # double 0.40454200000000001
	.quad	0x3fe728869c66d374              # double 0.72369700000000003
	.quad	0x3f9728e92d55a3a1              # double 0.022617000000000002
	.quad	0x3fe3fe62dc6e2a80              # double 0.624803
	.quad	0x3fea41ca3a4b5569              # double 0.82053100000000001
	.quad	0x3fc8e653868fd19a              # double 0.19452900000000001
	.quad	0x3fdb6d549731098d              # double 0.42854799999999998
	.quad	0x3fba5d9e40c8472c              # double 0.102991
	.quad	0x3fead05d0fa58f71              # double 0.83793499999999999
	.quad	0x3fcb72abef06b378              # double 0.21443699999999999
	.quad	0x3fec635e74299d88              # double 0.88712999999999997
	.quad	0x3fd7b64e054690de              # double 0.370502
	.quad	0x3fbfa0620ab71327              # double 0.123541
	.quad	0x3feb60b912dba4d7              # double 0.85555700000000001
	.quad	0x3fd3f737da61e0c6              # double 0.31196400000000002
	.quad	0x3fe243aa79bbadc1              # double 0.57076000000000005
	.quad	0x3fd3d47bedb72820              # double 0.30984400000000001
	.quad	0x3fd11dc93ea2d2fe              # double 0.26744299999999999
	.quad	0x3fd8b57c4e2f37fc              # double 0.386077
	.quad	0x3fe5154434e3369c              # double 0.65884600000000004
	.quad	0x3fb5ac79702e6645              # double 0.084663000000000002
	.quad	0x3fd21f255f3519bd              # double 0.28315099999999999
	.quad	0x3fe1eef1bac2df0d              # double 0.56041799999999997
	.quad	0x3fe15f4a1272c94b              # double 0.54288199999999998
	.quad	0x3fe1be596c82e01a              # double 0.55448600000000003
	.quad	0x3fc56aad1d041cc5              # double 0.16731799999999999
	.quad	0x3fd933c60029f16b              # double 0.393785
	.quad	0x3fd8481f53825e14              # double 0.37940200000000002
	.quad	0x3fc39389b52007dd              # double 0.15293999999999999
	.quad	0x3fb112231832fcad              # double 0.066683000000000006
	.quad	0x3fb55e9e1b089a02              # double 0.083474999999999993
	.quad	0x3fc62e1ac57e23f2              # double 0.17328199999999999
	.quad	0x3fe80d173fb7a5f4              # double 0.75159799999999998
	.quad	0x3fe350d2806af46b              # double 0.60361600000000004
	.quad	0x3fde6dca07f66e87              # double 0.47545100000000001
	.quad	0x3fcef0a5efe93187              # double 0.24171899999999999
	.quad	0x3feda0afa2f05a71              # double 0.92586500000000005
	.quad	0x3fe980cb6c7a7c9e              # double 0.79697200000000001
	.quad	0x3fec62c98e53eb3a              # double 0.88705900000000004
	.quad	0x3feaacf95d4e8fb0              # double 0.83361499999999999
	.quad	0x3fd83a4f8726d04e              # double 0.37855899999999998
	.quad	0x3fc642fa5093964a              # double 0.17391899999999999
	.quad	0x3fe07d47bedb7282              # double 0.515293
	.quad	0x3fde4c48adeebb34              # double 0.47340599999999999
	.quad	0x3fd269c66d373b00              # double 0.28770600000000002
	.quad	0x3fef5b163baba7b9              # double 0.97986899999999999
	.quad	0x3fb1e28aa433508f              # double 0.069862999999999995
	.quad	0x3fe58817fc7607c4              # double 0.67286299999999999
	.quad	0x3fdd4317acc4ef89              # double 0.45722000000000002
	.quad	0x3fe7cb89d6adf71f              # double 0.74359600000000003
	.quad	0x3fe03ade225fa659              # double 0.50718600000000003
	.quad	0x3fe59932d6ece13f              # double 0.67495099999999997
	.quad	0x3fdf8d823422467c              # double 0.49301200000000001
	.quad	0x3fc2e008e9b38d61              # double 0.14746200000000001
	.quad	0x3fb3ce63a5c1c609              # double 0.077368000000000006
	.quad	0x3fb6131a8ef77f28              # double 0.086229
	.quad	0x3fccd8a116659d13              # double 0.22536100000000001
	.quad	0x3fcc0ea5b530ced5              # double 0.219197
	.quad	0x3fdd893b7d84901d              # double 0.46150099999999999
	.quad	0x3fe8e8ea39c51dac              # double 0.77843200000000001
	.quad	0x3f87b6bb1290257d              # double 0.011579000000000001
	.quad	0x3fb2278d0cc35ce2              # double 0.070916000000000007
	.quad	0x3fe6ae07e5a78f26              # double 0.70874400000000004
	.quad	0x3fdb049ecb31c21a              # double 0.422157
	.quad	0x3fd8799e518f3ecd              # double 0.38242300000000001
	.quad	0x3fd273e681a9b8cc              # double 0.28832400000000002
	.quad	0x3fc8089e34330d74              # double 0.18776300000000001
	.quad	0x3fe364628027d88c              # double 0.60600399999999999
	.quad	0x3fe7231e7d9988d3              # double 0.72303700000000004
	.quad	0x3fc53b29a1b9f98b              # double 0.16586799999999999
	.quad	0x3feed6b441bb8c33              # double 0.96370900000000003
	.quad	0x3fe13ee1bd1ed9e0              # double 0.53892600000000002
	.quad	0x3fd4e1b089a02752              # double 0.32627499999999998
	.quad	0x3fe3b4a01abd1aa8              # double 0.61579899999999999
	.quad	0x3fe70941c8216c61              # double 0.71987999999999996
	.quad	0x3fc9e4e69f05ea25              # double 0.20229800000000001
	.quad	0x3fe820791c4b9021              # double 0.75396399999999997
	.quad	0x3fd61c087442c7fc              # double 0.34546100000000002
	.quad	0x3fdd5831f03d145e              # double 0.45850800000000003
	.quad	0x3fa1dd7ecbb7f9d7              # double 0.034893
	.quad	0x3fefcface67d77fb              # double 0.99410100000000001
	.quad	0x3fe408b97785729b              # double 0.62606499999999998
	.quad	0x3fe0f59ab6d00b46              # double 0.52998100000000004
	.quad	0x3fc08e15011904b4              # double 0.12933600000000001
	.quad	0x3fee883ba3443d47              # double 0.95413000000000003
	.quad	0x3fdae1f3a57eaa2a              # double 0.420041
	.quad	0x3fbef709b738e6d1              # double 0.120957
	.quad	0x3fe415a4acf312b2              # double 0.62764200000000003
	.quad	0x3fefaf901083dbc2              # double 0.99018099999999998
	.quad	0x3fb7f290abb44e51              # double 0.093545000000000003
	.quad	0x3fe2cd141a6937d2              # double 0.587534
	.quad	0x3fde72ead9274e23              # double 0.47576400000000002
	.quad	0x3fdcdac68a936c59              # double 0.450853
	.quad	0x3feeb886594af4f1              # double 0.96002500000000001
	.quad	0x3fdcc929aa1d755c              # double 0.44977800000000001
	.quad	0x3fe2231832fcac8e              # double 0.56678399999999995
	.quad	0x3fde5de15ca6ca04              # double 0.47448000000000001
	.quad	0x3fd880fdc1615ec0              # double 0.38287300000000002
	.quad	0x3fe2c4ed6fda836f              # double 0.58653900000000003
	.quad	0x3fe6176145953587              # double 0.69035400000000002
	.quad	0x3fdfdd2f1a9fbe77              # double 0.49787500000000001
	.quad	0x3fece787ce95faa9              # double 0.90326300000000004
	.quad	0x3fc2ce4ead0c3d25              # double 0.146921
	.quad	0x3fe890f301eabbcb              # double 0.76769399999999999
	.quad	0x3fe335e95b78cc9a              # double 0.60033099999999995
	.quad	0x3fe6607e5a78f25a              # double 0.69927899999999998
	.quad	0x3fe9b59ff4fd6d7f              # double 0.80342100000000005
	.quad	0x3fd9806af46aa088              # double 0.39846300000000001
	.quad	0x3feb44545846e8f3              # double 0.85209100000000004
	.quad	0x3fe2a69df97aaac1              # double 0.582839
	.quad	0x3fee1dba908a265f              # double 0.94112899999999999
	.quad	0x3fe57cf80dc33722              # double 0.67150500000000002
	.quad	0x3fa3a3ca7503b81b              # double 0.038358999999999997
	.quad	0x3fcbe1f3a57eaa2a              # double 0.217833
	.quad	0x3fe10813cab81f97              # double 0.53223600000000004
	.quad	0x3fecd16b97fe8ee7              # double 0.90056400000000003
	.quad	0x3feb15a6c5d206c8              # double 0.84639299999999995
	.quad	0x3fcf430f49491f2e              # double 0.24423400000000001
	.quad	0x3fdcbd512ec6bce8              # double 0.44905499999999998
	.quad	0x3fd3ae6c8f755369              # double 0.30752099999999999
	.quad	0x3fb1591cd1c7de51              # double 0.067766000000000007
	.quad	0x3fe276922d948dc1              # double 0.57697399999999999
	.quad	0x3f9e3d1cc100e6b0              # double 0.029530000000000001
	.quad	0x3feb6006d0d4994a              # double 0.85547200000000001
	.quad	0x3fd20a45d41fa765              # double 0.28187699999999999
	.quad	0x3fe973f0fe047d3d              # double 0.79540299999999997
	.quad	0x3fdc97460242d05f              # double 0.44673299999999999
	.quad	0x3febc8e25c810a57              # double 0.86827200000000004
	.quad	0x3feaddf43c7d5ed0              # double 0.83959399999999995
	.quad	0x3fe07d04a2fcefaa              # double 0.51526099999999997
	.quad	0x3fea2272862f598a              # double 0.81670500000000001
	.quad	0x3fa38f14db59578a              # double 0.038200999999999999
	.quad	0x3fcd474107314ca9              # double 0.228737
	.quad	0x3fdcab25b317efe1              # double 0.44794600000000001
	.quad	0x3fe6c3ac929aa1d7              # double 0.71138599999999996
	.quad	0x3fefa2339c0ebee0              # double 0.98855000000000003
	.quad	0x3fd13fc43b2dd378              # double 0.26951700000000001
	.quad	0x3fee3764f11b60af              # double 0.94426200000000005
	.quad	0x3fe99c17225b749b              # double 0.80030400000000002
	.quad	0x3fe21ca7d6733ebc              # double 0.565998
	.quad	0x3fe488bb906466b2              # double 0.64169100000000001
	.quad	0x3fd446f587d6f976              # double 0.31683099999999997
	.quad	0x3fcdcda2b5a20ddc              # double 0.23283799999999999
	.quad	0x3febeae9ee45c359              # double 0.87242600000000003
	.quad	0x3fc24f09528f190d              # double 0.143037
	.quad	0x3fd1fbd273d5bab2              # double 0.28099499999999999
	.quad	0x3fca62f5989df117              # double 0.20614499999999999
	.quad	0x3fb507faa044ae86              # double 0.082153000000000003
	.quad	0x3fef328b6d86ec18              # double 0.97492
	.quad	0x3fe3bca1059ea572              # double 0.61677599999999999
	.quad	0x3fd3f4a1272c94b4              # double 0.31180600000000003
	.quad	0x3fe7619da9c99286              # double 0.73066600000000004
	.quad	0x3fe9dd0fa58f7122              # double 0.80823500000000004
	.quad	0x3fd9a8d64d7f0ed4              # double 0.40093000000000001
	.quad	0x3fe06a1e81cb46bb              # double 0.51295400000000002
	.quad	0x3fe4e02645e4e69f              # double 0.652362
	.quad	0x3fe5724fa8b4bf90              # double 0.67020400000000002
	.quad	0x3fdc906466b1e5c1              # double 0.44631300000000002
	.quad	0x3fed1d0635a426bb              # double 0.90979299999999996
	.quad	0x3fe25ec1c1d6cf85              # double 0.57406699999999999
	.quad	0x3fe6d20f2becedd5              # double 0.71314200000000005
	.quad	0x3fd8a02b841248d8              # double 0.38477600000000001
	.quad	0x3fef78183f91e647              # double 0.98341
	.quad	0x3fd68bd230b9dc2f              # double 0.35228399999999999
	.quad	0x3fc6435efa615a8e              # double 0.173931
	.quad	0x3fd3d0cc35ce1826              # double 0.30961899999999998
	.quad	0x3fe787f66e86c658              # double 0.73534699999999997
	.quad	0x3faf8a8f3a9b0681              # double 0.061603999999999999
	.quad	0x3fea9f40a2877ee5              # double 0.83194000000000001
	.quad	0x3feb6c764adff823              # double 0.85699000000000003
	.quad	0x3fe195379fa97e13              # double 0.54946499999999998
	.quad	0x3fd7fb15b573eab3              # double 0.37469999999999998
	.quad	0x3fe167c06e19b90f              # double 0.54391500000000004
	.quad	0x3f9206c8711d798e              # double 0.017604000000000002
	.quad	0x3fbd986b9c304ccf              # double 0.115607
	.quad	0x3fdbf5d78811b1d9              # double 0.43687999999999999
	.quad	0x3fdd8b2e9ccb7d41              # double 0.46161999999999997
	.quad	0x3fe870d62bf11f92              # double 0.76377399999999995
	.quad	0x3fd65e95b78cc9a7              # double 0.34952299999999997
	.quad	0x3fe22e1cde5d1809              # double 0.568129
	.quad	0x3fb90e3476295209              # double 0.097873000000000002
	.quad	0x3fd76d04e618ce2d              # double 0.36602899999999999
	.quad	0x3fe5cc814d72799a              # double 0.68121399999999999
	.quad	0x3fe5a4a276b7ed42              # double 0.67634700000000003
	.quad	0x3fd08f7121ab4b73              # double 0.25875500000000001
	.quad	0x3fd4d16fc9bc7714              # double 0.32528299999999999
	.quad	0x3fefd05af6c69b5a              # double 0.99418399999999996
	.quad	0x3f8af6c69b5a63fa              # double 0.013166000000000001
	.quad	0x3fc03022dd7a99fa              # double 0.126469
	.quad	0x3fdcfd36f7e3d1cc              # double 0.452955
	.quad	0x3feb31098d477bc0              # double 0.84973600000000005
	.quad	0x3fe6b8ed1bf7ad4b              # double 0.71007399999999998
	.quad	0x3fdf7e0ac7da1ec5              # double 0.49206800000000001
	.quad	0x3fd13c07ee0b0af6              # double 0.269289
	.quad	0x3fb0750c1b97353b              # double 0.064285999999999996
	.quad	0x3fde03d145d85165              # double 0.46898299999999998
	.quad	0x3f85821294573a79              # double 0.010501999999999999
	.quad	0x3fcd102bc72e275b              # double 0.22705600000000001
	.quad	0x3fdb08c8259e1f3a              # double 0.42241099999999998
	.quad	0x3fe73486f049a997              # double 0.72516199999999997
	.quad	0x3fe12bc72e275ab8              # double 0.53659400000000002
	.quad	0x3f9be3c105186db5              # double 0.027236
	.quad	0x3fd536544fe36d22              # double 0.33144099999999999
	.quad	0x3fc192d1287c200c              # double 0.137293
	.quad	0x3fea0f1f57b41bfc              # double 0.81434600000000001
	.quad	0x3fdea87e38eb0319              # double 0.47903400000000002
	.quad	0x3fe62682b6284599              # double 0.69220099999999996
	.quad	0x3fa4d1e96c3fc43b              # double 0.040663999999999999
	.quad	0x3fc8a265f0f5a101              # double 0.19245599999999999
	.quad	0x3fe24df47f993d53              # double 0.57201599999999997
	.quad	0x3fce44ae85b9e8c4              # double 0.23647099999999999
	.quad	0x3fbfe48a58b3f63c              # double 0.124581
	.quad	0x3fd1888b545c78a7              # double 0.27395900000000001
	.quad	0x3fdce4ffc9795b36              # double 0.45147700000000002
	.quad	0x3fe3504816f0068e              # double 0.60355000000000003
	.quad	0x3fded4bf0995aaf8              # double 0.48173500000000002
	.quad	0x3fc971e29b6b2af1              # double 0.19878799999999999
	.quad	0x3fedcb0e1b4bb5e1              # double 0.931037
	.quad	0x3fee972abef06b38              # double 0.95595300000000005
	.quad	0x3fda05af6c69b5a6              # double 0.40659699999999999
	.quad	0x3fdee3864cb5bb38              # double 0.48263699999999998
	.quad	0x3fe7e43cc07aaef3              # double 0.74661100000000002
	.quad	0x3fe22cecc814d728              # double 0.56798400000000004
	.quad	0x3fe2cb5dcc63f141              # double 0.58732499999999999
	.quad	0x3fedab042528ae75              # double 0.92712600000000001
	.quad	0x3fe57a46173b85e8              # double 0.67117599999999999
	.quad	0x3fc832f449129889              # double 0.189055
	.quad	0x3fd5bfe3b03e20cd              # double 0.339837
	.quad	0x3fdfd0aed99cbee8              # double 0.497112
	.quad	0x3fe58ace24bba12b              # double 0.67319399999999996
	.quad	0x3fd3ae31d712a0ec              # double 0.30750699999999997
	.quad	0x3fe7d56d19dece57              # double 0.74480299999999999
	.quad	0x3fb1bde82d7b634e              # double 0.069304000000000004
	.quad	0x3fbd34ce3de6149c              # double 0.11408699999999999
	.quad	0x3fd508637bd05af7              # double 0.32863700000000001
	.quad	0x3fc358c08b75ea68              # double 0.151146
	.quad	0x3fe580c73abc9470              # double 0.67196999999999996
	.quad	0x3fe89d4f9c1f85d7              # double 0.76920299999999997
	.quad	0x3fe6cc857f3061c8              # double 0.71246600000000004
	.quad	0x3fd0f141205bc01a              # double 0.26472499999999999
	.quad	0x3fed5e939eadd591              # double 0.91779500000000003
	.quad	0x3fee5117b5286b59              # double 0.94739899999999999
	.quad	0x3fe3a6117720c8cd              # double 0.61402199999999996
	.quad	0x3fe2295a6c5d206d              # double 0.56754800000000005
	.quad	0x3fe9dadfb506dd6a              # double 0.80796800000000002
	.quad	0x3fe4f08cc575c076              # double 0.65436399999999995
	.quad	0x3fedf42352eb5f5f              # double 0.936052
	.quad	0x3fd63e468cac4b4d              # double 0.347551
	.quad	0x3fef5097c80841ee              # double 0.97858800000000001
	.quad	0x3fee7342edbb59de              # double 0.95157000000000003
	.quad	0x3fd0d7be9856a37b              # double 0.26316800000000001
	.quad	0x3fe0c371da37ef5b              # double 0.52385800000000005
	.quad	0x3fe1d0a67620ee8d              # double 0.55671999999999999
	.quad	0x3fe6150dae3e6c4c              # double 0.69006999999999996
	.quad	0x3fe45269595feda6              # double 0.63505999999999996
	.quad	0x3fbad55a3a08398a              # double 0.10481799999999999
	.quad	0x3f941248d7e02646              # double 0.019601
	.quad	0x3fd96ce789e774ef              # double 0.39727200000000001
	.quad	0x3fd458f2e05ccc8a              # double 0.31792900000000002
	.quad	0x3fd8496249a133c2              # double 0.37947900000000001
	.quad	0x3fef91cf355cd91f              # double 0.986549
	.quad	0x3fe3892ccf6be37e              # double 0.61049500000000001
	.quad	0x3facec204f2ae07e              # double 0.056488999999999998
	.quad	0x3fe821a2e7f6f4bf              # double 0.75410600000000005
	.quad	0x3faa684cf0739b02              # double 0.051576999999999998
	.quad	0x3fe61ab8e8ea39c5              # double 0.69076199999999999
	.quad	0x3fc7be121ee67514              # double 0.18548799999999999
	.quad	0x3fe0da09cc319c5a              # double 0.52661599999999997
	.quad	0x3feb6b4202d9cf14              # double 0.85684300000000002
	.quad	0x3fea49d388a8b08e              # double 0.82151200000000002
	.quad	0x3fddd30270f38822              # double 0.46600399999999997
	.quad	0x3fe47d9ba1b19610              # double 0.64033300000000004
	.quad	0x3fecac3c9eecbfb1              # double 0.89602499999999996
	.quad	0x3fe785c896dd26b7              # double 0.73508099999999998
	.quad	0x3fb6b5f5f0b28523              # double 0.088714000000000001
	.quad	0x3fe089a459103c8e              # double 0.51680199999999998
	.quad	0x3febb35d249e44fa              # double 0.865645
	.quad	0x3fd1ac4b4d056c51              # double 0.27614100000000003
	.quad	0x3fd919d66adb402d              # double 0.392202
	.quad	0x3fecadc0980b2420              # double 0.89620999999999995
	.quad	0x3fe9e8be2f7b17ce              # double 0.80966099999999996
	.quad	0x3fc4769ec2ce464a              # double 0.15987000000000001
	.quad	0x3fdba6266fd651b1              # double 0.43201600000000001
	.quad	0x3fef43c18b502abb              # double 0.97702100000000002
	.quad	0x3feff3ade225fa66              # double 0.99849600000000005
	.quad	0x3fe701450efdc9c5              # double 0.71890500000000002
	.quad	0x3f908ede54b48d3b              # double 0.01617
	.quad	0x3fd17c5260f5e41d              # double 0.27321299999999998
	.quad	0x3fe9d71b0468448d              # double 0.807508
	.quad	0x3fdb4463065f9592              # double 0.42604900000000001
	.quad	0x3fc502795703f2d4              # double 0.16413800000000001
	.quad	0x3fe08e5c4eb56fb9              # double 0.517378
	.quad	0x3fe15ece5710880e              # double 0.54282300000000006
	.quad	0x3fde8a7610279570              # double 0.47720099999999999
	.quad	0x3fea54dc65c70436              # double 0.82285900000000001
	.quad	0x3fbc8f648c7192ea              # double 0.111563
	.quad	0x3fece5cf67b1c001              # double 0.90305299999999999
	.quad	0x3fdb7fcb923a29c7              # double 0.42967499999999997
	.quad	0x3fc38adab9f559b4              # double 0.15267500000000001
	.quad	0x3fd6abc947064ecf              # double 0.35423500000000002
	.quad	0x3f8c6195464dc22b              # double 0.013858000000000001
	.quad	0x3fe9e17c1bda511a              # double 0.80877500000000002
	.quad	0x3fee8f7985271bce              # double 0.95501400000000003
	.quad	0x3fe16e0d23d4f15e              # double 0.54468399999999995
	.quad	0x3fddbc87db2b3461              # double 0.46463199999999999
	.quad	0x3fe36d56b00ffda4              # double 0.607097
	.quad	0x3fd5eb3dd11be6e6              # double 0.34248299999999998
	.quad	0x3fda0bc382a12f90              # double 0.406968
	.quad	0x3feb4b2314013ec4              # double 0.85292199999999995
	.quad	0x3fd789a459103c8e              # double 0.36777599999999999
	.quad	0x3feb75e2046c764b              # double 0.85814000000000001
	.quad	0x3fc16848beb5b2d5              # double 0.135995
	.quad	0x3fc8152b0a6fc58b              # double 0.18814600000000001
	.quad	0x3fd39d99029ae4f3              # double 0.30649399999999999
	.quad	0x3feaa27d028a1dfc              # double 0.83233500000000004
	.quad	0x3fd6a65492ff4ba5              # double 0.35390199999999999
	.quad	0x3fde19439de481f5              # double 0.47029199999999999
	.quad	0x3fe10eb67c286f8b              # double 0.53304600000000002
	.quad	0x3fededce39b456b4              # double 0.93527899999999997
	.quad	0x3feedff3f0fe047d              # double 0.96483799999999997
	.quad	0x3fc580b242070b8d              # double 0.16799
	.quad	0x3fdf19220ff54089              # double 0.48590899999999998
	.quad	0x3fbbca7503b81b65              # double 0.108558
	.quad	0x3fd727d028a1dfb9              # double 0.36180499999999999
	.quad	0x3fe74ecc814d727a              # double 0.72836900000000004
	.quad	0x3fe6ba01eeed8905              # double 0.710206
	.quad	0x3fc31b152f3c2dae              # double 0.14926400000000001
	.quad	0x3fea602c9081c2e3              # double 0.82423999999999997
	.quad	0x3fc5c10d7be9856a              # double 0.16995399999999999
	.quad	0x3fe632745bf26f1e              # double 0.69365900000000003
	.quad	0x3f9fcf3dc054ef46              # double 0.031064000000000001
	.quad	0x3fef75989df1172f              # double 0.983105
	.quad	0x3fe83bc0a06e9ff1              # double 0.75729400000000002
	.quad	0x3fe7803254e6e222              # double 0.73439900000000002
	.quad	0x3fc65add9c27e953              # double 0.174648
	.quad	0x3fcb945b6c3760bf              # double 0.21546499999999999
	.quad	0x3fda50e779207d4e              # double 0.411188
	.quad	0x3fc8ca3e7d135116              # double 0.19367200000000001
	.quad	0x3fe1680bed740c41              # double 0.54395099999999996
	.quad	0x3fe16fcdee34fc61              # double 0.54489799999999999
	.quad	0x3feb39ef0f16f438              # double 0.85082199999999997
	.quad	0x3fd72c386d2ed784              # double 0.36207400000000001
	.quad	0x3fb3cafb3b752114              # double 0.077315999999999996
	.quad	0x3fc40a7c5ac471b4              # double 0.15656999999999999
	.quad	0x3fe787485e3da2f9              # double 0.73526400000000003
	.quad	0x3fed14812be48a59              # double 0.90875300000000003
	.quad	0x3fee4a2b9d3cbc49              # double 0.94655400000000001
	.quad	0x3fd27867f0aa21a7              # double 0.28859899999999999
	.quad	0x3fe3b59bc33f8551              # double 0.61591899999999999
	.quad	0x3fed94df8b157258              # double 0.92442299999999999
	.quad	0x3fe78262456f75da              # double 0.73466600000000004
	.quad	0x3fe231e7d9988d2a              # double 0.56859199999999999
	.quad	0x3fbb48d3ae685db7              # double 0.10657999999999999
	.quad	0x3fe47446f9b994e2              # double 0.63919400000000004
	.quad	0x3fe26db50f40e5a3              # double 0.57589199999999996
	.quad	0x3fe1d78c436fc159              # double 0.557562
	.quad	0x3fd89c49774256bd              # double 0.38453900000000002
	.quad	0x3fe91dabe27179c0              # double 0.78487200000000001
	.quad	0x3fe6e084a515ce9e              # double 0.71490699999999996
	.quad	0x3febbf3387160957              # double 0.86709000000000003
	.quad	0x3fae1804d9839475              # double 0.058777000000000003
	.quad	0x3fe71af1886df82b              # double 0.72203899999999999
	.quad	0x3fd26c11a11233df              # double 0.28784599999999999
	.quad	0x3fefded8d36b4c7f              # double 0.99595299999999997
	.quad	0x3fbad4d4024b33db              # double 0.10481
	.quad	0x3fcf2e40852b4d8c              # double 0.24359900000000001
	.quad	0x3fe8230fcf80dc33              # double 0.75427999999999995
	.quad	0x3feeec7a7c9de050              # double 0.96636699999999998
	.quad	0x3fe8557de0d66f0d              # double 0.760436
	.quad	0x3fd16cb5350092cd              # double 0.27226
	.quad	0x3fd8a5efe9318762              # double 0.38512800000000003
	.quad	0x3fe9ac6ac215b9a6              # double 0.80229700000000004
	.quad	0x3fe41bf7ad4b2746              # double 0.62841400000000003
	.quad	0x3fe0a02d9cf13cef              # double 0.51955300000000004
	.quad	0x3feb07a4a48f96e1              # double 0.84468299999999996
	.quad	0x3fa0e453d20f2bed              # double 0.032992
	.quad	0x3fc90ee49f51697f              # double 0.195767
	.quad	0x3fefa2120e1f7d74              # double 0.98853400000000002
	.quad	0x3fd90adcd2d44dcb              # double 0.39128800000000002
	.quad	0x3fcd78359bc33f85              # double 0.23023099999999999
	.quad	0x3fdfc23315d701da              # double 0.496228
	.quad	0x3fbfb03e20ccff22              # double 0.123783
	.quad	0x3fdccc426351def0              # double 0.44996700000000001
	.quad	0x3feb8a7e73a365cb              # double 0.86065599999999998
	.quad	0x3fdde89a88ace24c              # double 0.46732200000000002
	.quad	0x3f8c286f8ad2567a              # double 0.013749000000000001
	.quad	0x3fd0a98eda22f6a5              # double 0.260349
	.quad	0x3fdbcc3e3193f6c2              # double 0.43434099999999998
	.quad	0x3fde008a697aeddd              # double 0.46878300000000001
	.quad	0x3fea717bd8be7297              # double 0.826353
	.quad	0x3fe086a2b1704ff4              # double 0.51643499999999998
	.quad	0x3fe13c31df761cbd              # double 0.53859800000000002
	.quad	0x3fd16f4be835dedf              # double 0.27241799999999999
	.quad	0x3fc4d855970b49e0              # double 0.162852
	.quad	0x3fa37fe08aefb2ab              # double 0.038085000000000001
	.quad	0x3fe8fcfe58601366              # double 0.78088299999999999
	.quad	0x3fe781e2584f4c6e              # double 0.73460499999999995
	.quad	0x3fe712f2b66b6178              # double 0.72106300000000001
	.quad	0x3fdcf4c2b51bd61f              # double 0.45243899999999998
	.quad	0x3fedecca2db61bb0              # double 0.93515499999999996
	.quad	0x3fe560114d2f5dbc              # double 0.66797700000000004
	.quad	0x3fd6885d31337eb3              # double 0.35207300000000002
	.quad	0x3fc8536d655e28aa              # double 0.19004599999999999
	.quad	0x3fd59aaa3ad18d26              # double 0.337565
	.quad	0x3fdf6fd651b0ccbc              # double 0.491201
	.quad	0x3fe05718eb895076              # double 0.51063199999999997
	.quad	0x3fe08d6b228dc982              # double 0.51726300000000003
	.quad	0x3fd7df0d413122b8              # double 0.37298900000000001
	.quad	0x3feae89656eefa1e              # double 0.84089199999999997
	.quad	0x3fdcf81e8a2ec28b              # double 0.45264399999999999
	.quad	0x3fe5523f67f4dbe0              # double 0.66629000000000005
	.quad	0x3fe52a737110e454              # double 0.66143200000000002
	.quad	0x3fd0bef8ceb356da              # double 0.261656
	.quad	0x3fe93a1f4b1ee243              # double 0.78834499999999996
	.quad	0x3fe54c426351def0              # double 0.66555900000000001
	.quad	0x3fecb5b2d4d4024b              # double 0.89717999999999998
	.quad	0x3faea9e6eeb70260              # double 0.059889999999999999
	.quad	0x3fe9585be1a82624              # double 0.79203599999999996
	.quad	0x3fa23e5b8561d430              # double 0.035631999999999997
	.quad	0x3fe4717df19d66ae              # double 0.63885400000000003
	.quad	0x3fc581adea897636              # double 0.16802
	.quad	0x3fe2eb8d82342246              # double 0.59125399999999995
	.quad	0x3fa29563a9f383f1              # double 0.036296000000000002
	.quad	0x3fe897f1f9acffa8              # double 0.76854800000000001
	.quad	0x3f5e108c3f3e0371              # double 0.001835
	.quad	0x3fcdf6ec5b078d93              # double 0.234098
	.quad	0x3fed3675ddd2ae8e              # double 0.91289799999999999
	.quad	0x3fd5dcebfec13b9f              # double 0.341609
	.quad	0x3fd72f23033a4724              # double 0.36225200000000002
	.quad	0x3fd444028e4fb97c              # double 0.31665100000000002
	.quad	0x3fbf77af640639d6              # double 0.12292
	.quad	0x3fe17f7596851223              # double 0.54680899999999999
	.quad	0x3fa61da7b0b39192              # double 0.043194999999999997
	.quad	0x3fe56e45c358afc4              # double 0.66971099999999995
	.quad	0x3feafefe0ce0b913              # double 0.84362700000000002
	.quad	0x3fd738de6ddf00ac              # double 0.362846
	.quad	0x3fd7d1b2e59af9ec              # double 0.372174
	.quad	0x3fc85460aa64c2f8              # double 0.19007499999999999
	.quad	0x3fc22fc69728a611              # double 0.14208299999999999
	.quad	0x3fe7d56084a515cf              # double 0.74479700000000004
	.quad	0x3fe455a5b9628cbd              # double 0.63545499999999999
	.quad	0x3fe098f1d3ed527e              # double 0.51866999999999996
	.quad	0x3fe3f29d40ee06d9              # double 0.62336599999999998
	.quad	0x3fdb744b2b777d0f              # double 0.42897299999999999
	.quad	0x3fabe76c8b439581              # double 0.0545
	.quad	0x3fd4621fafc8b008              # double 0.31848900000000002
	.quad	0x3fe998288051c9f7              # double 0.79982399999999998
	.quad	0x3fe8f3d5bab21816              # double 0.77976500000000004
	.quad	0x3fda5464dc22ab26              # double 0.41140100000000002
	.quad	0x3fe7d0e560418937              # double 0.74424999999999997
	.quad	0x3fe3bc59b8023a6d              # double 0.61674200000000001
	.quad	0x3fe10b39192641b3              # double 0.53261999999999998
	.quad	0x3fda12b1b36bd2b7              # double 0.407391
	.quad	0x3fe26e696a26e547              # double 0.57597799999999999
	.quad	0x3fdb64628027d88c              # double 0.42800199999999999
	.quad	0x3fee89df1172ef0b              # double 0.95433000000000001
	.quad	0x3faa7c9de0503750              # double 0.051732
	.quad	0x3f9325918a009f62              # double 0.018697999999999999
	.quad	0x3fc6aa8eb463497b              # double 0.17707999999999999
	.quad	0x3fd1687f455a7d24              # double 0.27200299999999999
	.quad	0x3fe0901b003686a5              # double 0.51759100000000002
	.quad	0x3fc9de7a743a6480              # double 0.202102
	.quad	0x3feba01040bfe3b0              # double 0.86328899999999997
	.quad	0x3fe0e004b7f5a533              # double 0.52734599999999998
	.quad	0x3fe28153bd167664              # double 0.578287
	.quad	0x3fd6bf6a0dbad3a6              # double 0.355433
	.quad	0x3fe82b5a20ddc619              # double 0.75529199999999996
	.quad	0x3fd5aaa3ad18d25f              # double 0.33854000000000001
	.quad	0x3fe7517a46173b86              # double 0.72869600000000001
	.quad	0x3fe5f59ccfaeff5c              # double 0.68623199999999995
	.quad	0x3fd0ebfa8f7db6e5              # double 0.264403
	.quad	0x3fcef2170931012a              # double 0.24176300000000001
	.quad	0x3fe71ab0856e696a              # double 0.72200799999999998
	.quad	0x3fdac1eff9f87f02              # double 0.41808699999999999
	.quad	0x3fe2f4a1272c94b4              # double 0.59236200000000006
	.quad	0x3fed1e4d5d80e497              # double 0.90994900000000001
	.quad	0x3fe6d3a1d323fee3              # double 0.71333400000000002
	.quad	0x3fe61758e219652c              # double 0.69035000000000002
	.quad	0x3fe5130df9bdc6a0              # double 0.65857600000000005
	.quad	0x3fd05fd8adab9f56              # double 0.25585000000000002
	.quad	0x3fc7b4d48882f0e1              # double 0.18520600000000001
	.quad	0x3fd7c99ae924f228              # double 0.37168000000000001
	.quad	0x3fe0f6534373f317              # double 0.53006900000000001
	.quad	0x3fd9676a7264a16a              # double 0.39693699999999998
	.quad	0x3fd33b29a1b9f98b              # double 0.30048599999999998
	.quad	0x3fe4c36b8f9b1316              # double 0.64885499999999996
	.quad	0x3fe7041461b6d43d              # double 0.719248
	.quad	0x3fd8803cd141a693              # double 0.38282699999999997
	.quad	0x3fe13c3e74afd545              # double 0.53860399999999997
	.quad	0x3fe4778bbd380453              # double 0.63959299999999997
	.quad	0x3fe72f6c69b5a640              # double 0.72453900000000004
	.quad	0x3fd9abc947064ecf              # double 0.40111000000000002
	.quad	0x3fea0242d05f2885              # double 0.81277600000000005
	.quad	0x3fa5c981beb18117              # double 0.042553000000000001
	.quad	0x3fd45e9e1b089a02              # double 0.31827499999999997
	.quad	0x3fde0d66f0cfe154              # double 0.46956799999999999
	.quad	0x3fe1931876188b11              # double 0.54920599999999997
	.quad	0x3fe0fe32a0663c75              # double 0.53103
	.quad	0x3fe6096bb98c7e28              # double 0.68864999999999998
	.quad	0x3fd15072085b1855              # double 0.27053500000000003
	.quad	0x3feee6adb402d16c              # double 0.96565900000000004
	.quad	0x3fae0ed80a17b0f7              # double 0.058707000000000002
	.quad	0x3fd90789613d31ba              # double 0.39108500000000002
	.quad	0x3fcdc8fb86f47b67              # double 0.23269599999999999
	.quad	0x3fb3059641f64495              # double 0.074303999999999995
	.quad	0x3feb4d91eeaa6d26              # double 0.85321899999999995
	.quad	0x3fd040a6b93ccd10              # double 0.25394600000000001
	.quad	0x3fe46b3354c12275              # double 0.63808600000000004
	.quad	0x3fddd373affb04ee              # double 0.46603099999999997
	.quad	0x3fec8db6a1e81cb4              # double 0.89229899999999995
	.quad	0x3fd20af1cb89d6ae              # double 0.281918
	.quad	0x3fe01c51dabe2718              # double 0.50345700000000004
	.quad	0x3f68aeb80ecfa69c              # double 0.0030130000000000001
	.quad	0x3fdf2474538ef34d              # double 0.48659999999999998
	.quad	0x3fd37c3504c48adf              # double 0.304456
	.quad	0x3fd760d887ebf22c              # double 0.365286
	.quad	0x3fdf97891e215337              # double 0.49362400000000001
	.quad	0x3feb8bcbe61cffeb              # double 0.860815
	.quad	0x3fce1a79fec99f1b              # double 0.235183
	.quad	0x3fd19b0ee49f5169              # double 0.27508899999999997
	.quad	0x3fcde1fc08fa7a85              # double 0.233459
	.quad	0x3fea39b23dd54da5              # double 0.81954300000000002
	.quad	0x3fe9827b6fe2e6eb              # double 0.79717800000000005
	.quad	0x3feded938151a438              # double 0.93525100000000005
	.quad	0x3fbd753a3ec02f30              # double 0.11507000000000001
	.quad	0x3fe41ef30a4e379b              # double 0.62877799999999995
	.quad	0x3fea25efe9318762              # double 0.81713100000000005
	.quad	0x3fc55aaf78feef5f              # double 0.16683000000000001
	.quad	0x3fc1b402d16b97ff              # double 0.13830600000000001
	.quad	0x3fa930df9bdc69f9              # double 0.049201000000000002
	.quad	0x3fecb85c67dfe32a              # double 0.897505
	.quad	0x3fc87b890d5a5b96              # double 0.19127
	.quad	0x3fe5801b43526528              # double 0.67188800000000004
	.quad	0x3fecdd97f62b6ae8              # double 0.90205000000000002
	.quad	0x3fe1a7f5e84f0953              # double 0.55175300000000005
	.quad	0x3fe668af81626b2f              # double 0.70027899999999998
	.quad	0x3feb98fc504816f0              # double 0.862425
	.quad	0x3fe510a350d2806b              # double 0.65828100000000001
	.quad	0x3fee3c33f85510d4              # double 0.94484900000000004
	.quad	0x3fd48b2a6b0d9514              # double 0.320994
	.quad	0x3fe38fd7e45803cd              # double 0.61130899999999999
	.quad	0x3fe141e7967caea7              # double 0.53929499999999997
	.quad	0x3fcf9780baa582dc              # double 0.246811
	.quad	0x3fd6ceee0f3cb3e5              # double 0.35637999999999997
	.quad	0x3fba3305100a393f              # double 0.102341
	.quad	0x3fed21af7d30ad47              # double 0.910362
	.quad	0x3fea636b09635611              # double 0.82463600000000004
	.quad	0x3fbc57e23f24d8fd              # double 0.11071599999999999
	.quad	0x3fedb76922d948dc              # double 0.92863899999999999
	.quad	0x3fd146c332f01755              # double 0.26994400000000002
	.quad	0x3fd1f5cf2495e17e              # double 0.28062799999999999
	.quad	0x3fd6616b54e2b064              # double 0.34969600000000001
	.quad	0x3fca0639d5e4a383              # double 0.203315
	.quad	0x3fdb82adc4c9c90c              # double 0.42985099999999998
	.quad	0x3fe0c89f40a2877f              # double 0.52449000000000001
	.quad	0x3fe81873ffac1d2a              # double 0.75298500000000002
	.quad	0x3fda5aa715831f04              # double 0.41178300000000001
	.quad	0x3fc529aa1d755bcd              # double 0.16533400000000001
	.quad	0x3fd2035371971c11              # double 0.28145300000000001
	.quad	0x3fef947cfa26a22b              # double 0.98687599999999997
	.quad	0x3fe40999dcb5781c              # double 0.62617199999999995
	.quad	0x3fe627807789a459              # double 0.69232199999999999
	.quad	0x3fd191f2dc2b0ea2              # double 0.27453300000000003
	.quad	0x3fd8e95faa8a82a5              # double 0.38924399999999998
	.quad	0x3fe10da5daf07bfe              # double 0.53291599999999995
	.quad	0x3fc1c1b54195cc85              # double 0.13872399999999999
	.quad	0x3fe873bc903ea705              # double 0.76412800000000003
	.quad	0x3fca7d34df04ddb5              # double 0.20694599999999999
	.quad	0x3fe8d3f5b5fa2270              # double 0.77587399999999995
	.quad	0x3fb1c3265add9c28              # double 0.069384000000000001
	.quad	0x3fca3ed959a30985              # double 0.205043
	.quad	0x3fc39de481f53826              # double 0.153256
	.quad	0x3fa1f383f0bae89f              # double 0.035061000000000002
	.quad	0x3feffe56473471f8              # double 0.99979700000000004
	.quad	0x3fce91fb3fa6defc              # double 0.23882999999999999
	.quad	0x3fa23f034b0e1b4c              # double 0.035637000000000002
	.quad	0x3fb08ecd8dbcec85              # double 0.064679
	.quad	0x3fec5f1172ef0ae5              # double 0.88660499999999998
	.quad	0x3feeb97785729b28              # double 0.96013999999999999
	.quad	0x3fe12441fea8112c              # double 0.53567600000000004
	.quad	0x3fe4300de4c51117              # double 0.63086600000000004
	.quad	0x3fcf8a7e73a365cb              # double 0.24641399999999999
	.quad	0x3fb77446f9b994e2              # double 0.091618000000000004
	.quad	0x3fb977531db445ed              # double 0.099476999999999996
	.quad	0x3fd23b0813cab820              # double 0.28485300000000002
	.quad	0x3fdffb762d83c6c9              # double 0.49972299999999997
	.quad	0x3fd83704790b8499              # double 0.37835800000000003
	.quad	0x3fe7bb645a1cac08              # double 0.74162499999999998
	.quad	0x3fe0dc182ecaeea6              # double 0.52686699999999997
	.quad	0x3fdb6fdeb52c9d17              # double 0.428703
	.quad	0x3feb24e160d887ec              # double 0.848252
	.quad	0x3feccbb3c81908e6              # double 0.89986600000000005
	.quad	0x3fe6ed56b00ffda4              # double 0.716472
	.quad	0x3fa6e0b0af5fd47c              # double 0.044683
	.quad	0x3fd11e71044f1a1a              # double 0.26748300000000003
	.quad	0x3fdae1049235f80a              # double 0.41998400000000002
	.quad	0x3fbd81cf7878b7a2              # double 0.115262
	.quad	0x3fdebe37de939eae              # double 0.48036000000000001
	.quad	0x3fd7bd72bcb5fe54              # double 0.37093799999999999
	.quad	0x3fcf1633482be8bc              # double 0.242865
	.quad	0x3fe513a0c6b484d7              # double 0.65864599999999995
	.quad	0x3fdb28954a7f8013              # double 0.42435200000000001
	.quad	0x3fd2820e6299524c              # double 0.289188
	.quad	0x3fec53b0813cab82              # double 0.885216
	.quad	0x3fd59192641b328b              # double 0.33700999999999998
	.quad	0x3fe4ea619da9c993              # double 0.65361100000000005
	.quad	0x3fe7f2367e414e7f              # double 0.74831700000000001
	.quad	0x3fd94b09e98dcdb3              # double 0.39520499999999997
	.quad	0x3fbf9335d249e450              # double 0.12334000000000001
	.quad	0x3fdefe9fadafd114              # double 0.48429100000000003
	.quad	0x3fe94039abf33871              # double 0.78908999999999996
	.quad	0x3fc6f6e82949a565              # double 0.17940999999999999
	.quad	0x3fe4e71476af89c6              # double 0.65320800000000001
	.quad	0x3febf89e774eebf6              # double 0.87409899999999996
	.quad	0x3fca155d5f56a7ad              # double 0.20377700000000001
	.quad	0x3fe5bb16c1e364bf              # double 0.67908800000000002
	.quad	0x3fe394db59578a2b              # double 0.61192100000000005
	.quad	0x3fd0fe4ffc9795b3              # double 0.26552199999999998
	.quad	0x3febbb9496249a13              # double 0.86664799999999997
	.quad	0x3fdd7b7414a4d2b3              # double 0.46066000000000001
	.quad	0x3fe6db09a671ef31              # double 0.71423800000000004
	.quad	0x3fdc0ad03d9a9542              # double 0.43815999999999999
	.quad	0x3fdd62a5e785b5b7              # double 0.459146
	.quad	0x3fdfeefa1e3eaf68              # double 0.49896099999999999
	.quad	0x3fe047c957cd466f              # double 0.50876299999999997
	.quad	0x3fe8a39c51dabe27              # double 0.76997199999999999
	.quad	0x3fc89ced0b30b5aa              # double 0.19228899999999999
	.quad	0x3fe7eda22f6a50d7              # double 0.74775800000000003
	.quad	0x3fe0a8bf3bea91da              # double 0.52059900000000003
	.quad	0x3fd1d68405b39e28              # double 0.27871800000000002
	.quad	0x3fe7a29e90795f67              # double 0.73860099999999995
	.quad	0x3fe2e1f18c9fb613              # double 0.59008099999999997
	.quad	0x3fed43526527a205              # double 0.91446799999999995
	.quad	0x3fc5b0ff10ecb74e              # double 0.169464
	.quad	0x3feeac7b890d5a5c              # double 0.95855500000000004
	.quad	0x3fe2105e1c15097d              # double 0.56449800000000006
	.quad	0x3fe61c94f69ca9ef              # double 0.69098899999999996
	.quad	0x3fcb85be1a826245              # double 0.21501899999999999
	.quad	0x3fc6da76d97b30f9              # double 0.17854200000000001
	.quad	0x3fe0eb4a66559f6f              # double 0.52872200000000003
	.quad	0x3fcdf8c21e1d2179              # double 0.234154
	.quad	0x3fadb91f70de8f6d              # double 0.058053
	.quad	0x3fd41d68c692f6e8              # double 0.31429499999999999
	.quad	0x3fd8c0b135979182              # double 0.38676100000000002
	.quad	0x3fe5c8fd9fd36f7e              # double 0.68078499999999997
	.quad	0x3fd7ef954eb13dfb              # double 0.373998
	.quad	0x3fe50ed80a17b0f7              # double 0.65806200000000004
	.quad	0x3fea822bbecaab8a              # double 0.82838999999999996
	.quad	0x3fe70a350d2806af              # double 0.71999599999999997
	.quad	0x3fe7a66ba493c89f              # double 0.73906499999999997
	.quad	0x3febb3aabcd78c43              # double 0.86568199999999995
	.quad	0x3fea7d06bbdbe3c1              # double 0.827762
	.quad	0x3fe237f7be121ee6              # double 0.56933199999999995
	.quad	0x3fbf313be22e5de1              # double 0.12184499999999999
	.quad	0x3fe2b8433d6c7219              # double 0.58499299999999999
	.quad	0x3fea3d20f2becedd              # double 0.81996199999999997
	.quad	0x3fe3d549731098d4              # double 0.61978599999999995
	.quad	0x3fbb446f9b994e1a              # double 0.106513
	.quad	0x3fdbdb22d0e56042              # double 0.43525000000000003
	.quad	0x3fdc231832fcac8e              # double 0.43964199999999998
	.quad	0x3fcdcba301216830              # double 0.23277700000000001
	.quad	0x3fe9ea5d6bebe165              # double 0.809859
	.quad	0x3fec5f8d2e514c23              # double 0.88666400000000001
	.quad	0x3fd0fa615a8deb10              # double 0.26528200000000002
	.quad	0x3fe3a4cc6822ff09              # double 0.61386700000000005
	.quad	0x3fe3e1ed5ae1cde6              # double 0.62132900000000002
	.quad	0x3fdc7168f8e7ddca              # double 0.44442199999999998
	.quad	0x3fecfc5692b3cc4b              # double 0.90580300000000002
	.quad	0x3fd95ff1d81f1066              # double 0.39648099999999997
	.quad	0x3fb48b0079a2834d              # double 0.080245999999999998
	.quad	0x3fb9e3c968943e10              # double 0.101132
	.quad	0x3fe34102ff8ec0f9              # double 0.60168600000000005
	.quad	0x3fd222d0e5604189              # double 0.28337499999999999
	.quad	0x3feab35d249e44fa              # double 0.834395
	.quad	0x3fe9ebd2b6f19935              # double 0.81003700000000001
	.quad	0x3fe2a34eb9a176de              # double 0.58243500000000004
	.quad	0x3fe14317acc4ef89              # double 0.53944000000000003
	.quad	0x3fb770ac3a860dcc              # double 0.091563000000000005
	.quad	0x3fbf7ab324851a87              # double 0.12296600000000001
	.quad	0x3fde16c61522a6f4              # double 0.47014
	.quad	0x3fe6d883ba3443d4              # double 0.71392999999999995
	.quad	0x3f956c93a7115161              # double 0.020922
	.quad	0x3fe8f91e646f1562              # double 0.78041000000000005
	.quad	0x3fca07cc7d1bb491              # double 0.20336299999999999
	.quad	0x3fd5d8b60f1b25f6              # double 0.34135199999999999
	.quad	0x3fea075f6fd21ff3              # double 0.81340000000000001
	.quad	0x3fe65f5ad96a6a01              # double 0.69913999999999998
	.quad	0x3fe40b32ce89656f              # double 0.62636700000000001
	.quad	0x3feeeb8d82342246              # double 0.96625399999999995
	.quad	0x3fedb7aa25d8d79d              # double 0.92867
	.quad	0x3fecd40ee06d9381              # double 0.90088599999999996
	.quad	0x3fe22f9ca5bd944b              # double 0.56831200000000004
	.quad	0x3fda724b76f6d762              # double 0.41322599999999998
	.quad	0x3fe99b8cb8e086be              # double 0.800238
	.quad	0x3fe2cd3e0bd44999              # double 0.58755400000000002
	.quad	0x3fd61a500d5e8d54              # double 0.345356
	.quad	0x3fe21a91105e1c15              # double 0.565743
	.quad	0x3feb9ccb7d41743f              # double 0.86289000000000005
	.quad	0x3feb3e9856a37ac4              # double 0.851391
	.quad	0x3fe53f4cb1897a68              # double 0.66397700000000004
	.quad	0x3fc88c154c985f07              # double 0.191775
	.quad	0x3fe45fce3150dae4              # double 0.63669500000000001
	.quad	0x3feb23e186983516              # double 0.84813000000000005
	.quad	0x3fd4324851a86940              # double 0.31556899999999999
	.quad	0x3fe485553ef6b5d4              # double 0.64127599999999996
	.quad	0x3fe074a3400b88ca              # double 0.51423799999999997
	.quad	0x3f81116a8b8f14db              # double 0.0083339999999999993
	.quad	0x3fd65696e58a32f4              # double 0.34903499999999998
	.quad	0x3fdd30d306a2b170              # double 0.45610499999999998
	.quad	0x3fb9a30984e3ffef              # double 0.100144
	.quad	0x3fc6f9a06a6e32e4              # double 0.17949300000000001
	.quad	0x3fd00828c36da87a              # double 0.250498
	.quad	0x3fd40df58c08b75f              # double 0.31335200000000002
	.quad	0x3fecfe931876188b              # double 0.90607599999999999
	.quad	0x3fc95cd0bb6ed677              # double 0.19814499999999999
	.quad	0x3fcdfd694ccab3ee              # double 0.234296
	.quad	0x3fde1800a7c5ac47              # double 0.47021499999999999
	.quad	0x3fe81afe1da7b0b4              # double 0.75329500000000004
	.quad	0x3fdcaa1511dffc54              # double 0.44788099999999997
	.quad	0x3fe0f06d50657321              # double 0.52934899999999996
	.quad	0x3fbe54d61b2a27f2              # double 0.118482
	.quad	0x3fef54fdf3b645a2              # double 0.97912500000000002
	.quad	0x3fe8ea8b8f14db59              # double 0.77863099999999996
	.quad	0x3fe3449ba5e353f8              # double 0.60212500000000002
	.quad	0x3fa8ae536501e258              # double 0.048204999999999998
	.quad	0x3fe7cc100e6afcce              # double 0.74365999999999999
	.quad	0x3fe11682f944241c              # double 0.53399799999999997
	.quad	0x3fe3c070329802c1              # double 0.61724100000000004
	.quad	0x3fa5e2ac322291fb              # double 0.042744999999999998
	.quad	0x3fe3fdc37a3db3c0              # double 0.62472700000000003
	.quad	0x3fd95fe542e557de              # double 0.396478
	.quad	0x3fe444a4095f2453              # double 0.63337900000000003
	.quad	0x3fd70121682f9442              # double 0.35944399999999999
	.quad	0x3fe292d1287c200c              # double 0.58042199999999999
	.quad	0x3fd5e99e94ab1d50              # double 0.34238400000000002
	.quad	0x3fb2a1a500d5e8d5              # double 0.072778999999999996
	.quad	0x3f80d9d7774aba38              # double 0.0082279999999999992
	.quad	0x3fb8e2f37fbefd00              # double 0.097212999999999993
	.quad	0x3fe7210385c67dfe              # double 0.72277999999999998
	.quad	0x3fef2bd1aa821f2a              # double 0.97409900000000005
	.quad	0x3fc26f71a7e30878              # double 0.14402599999999999
	.quad	0x3f80e23af31b152f              # double 0.0082439999999999995
	.quad	0x3fc6d2999567dbb1              # double 0.17830199999999999
	.quad	0x3fd46b8b69552e30              # double 0.31906400000000001
	.quad	0x3fe28d25edd05293              # double 0.57972999999999997
	.quad	0x3fec90a137f38c54              # double 0.89265499999999997
	.quad	0x3fe4c55432873bc9              # double 0.649088
	.quad	0x3fd066cf41f212d7              # double 0.25627499999999998
	.quad	0x3fee5db5525cc426              # double 0.94893899999999998
	.quad	0x3fed40f238972043              # double 0.91417800000000005
	.quad	0x3fdbd00b45ae5ffa              # double 0.43457299999999999
	.quad	0x3fe8648c7192ea53              # double 0.76227400000000001
	.quad	0x3fe78c692f6e8295              # double 0.73589000000000004
	.quad	0x3fe4f81c714fce74              # double 0.65528699999999995
	.quad	0x3fef57cb2d905c03              # double 0.97946699999999997
	.quad	0x3fd6a8d64d7f0ed4              # double 0.35405500000000001
	.quad	0x3fdc15f45e0b4e12              # double 0.43884000000000001
	.quad	0x3fd21b97353b4b30              # double 0.28293400000000002
	.quad	0x3fda3cea6c1a048e              # double 0.409968
	.quad	0x3fec031055b89939              # double 0.87537399999999999
	.quad	0x3feece3150dae3e7              # double 0.96267000000000002
	.quad	0x3fca87980f55de59              # double 0.207263
	.quad	0x3f8c3504c48adeec              # double 0.013773000000000001
	.quad	0x3fc226e5471715c6              # double 0.14181199999999999
	.quad	0x3fe79dffc5479d4e              # double 0.73803700000000005
	.quad	0x3fe939628cbd1245              # double 0.78825500000000004
	.quad	0x3fd29e6687f455a8              # double 0.29091800000000001
	.quad	0x3f4c79b34a44c7b0              # double 8.6899999999999998E-4
	.quad	0x3fec332f01754b06              # double 0.88124800000000003
	.quad	0x3fddb302f72b4528              # double 0.46405099999999999
	.quad	0x3feeb5dcc63f1412              # double 0.9597
	.quad	0x3fe5f15c63ae2542              # double 0.68571300000000002
	.quad	0x3fe1d96e9bbf0dc7              # double 0.55779199999999995
	.quad	0x3fd23836a832b991              # double 0.28468100000000002
	.quad	0x3fc6b1465e892253              # double 0.177285
	.quad	0x3fe3def8487b99d4              # double 0.62096799999999996
	.quad	0x3fef3b14a90470a8              # double 0.97596199999999999
	.quad	0x3fe80b75ea67e847              # double 0.75139900000000004
	.quad	0x3fe4519bd4067cf2              # double 0.63496200000000003
	.quad	0x3fc6643cc07aaef3              # double 0.17493400000000001
	.quad	0x3fed266ba493c89f              # double 0.91093999999999997
	.quad	0x3fd09e40c8472c0e              # double 0.25965899999999997
	.quad	0x3fd188ca3e7d1351              # double 0.273974
	.quad	0x3fc2516db0dd82fd              # double 0.14310999999999999
	.quad	0x3fba28bb0a2ca9ac              # double 0.102184
	.quad	0x3fcc8b97785729b3              # double 0.22301000000000001
	.quad	0x3fd333a4723aafff              # double 0.30002699999999999
	.quad	0x3fec8635a426bb56              # double 0.89138300000000004
	.quad	0x3fea1b1960fa15db              # double 0.81580799999999998
	.quad	0x3fe426d04e618ce3              # double 0.62973800000000002
	.quad	0x3fead0ebaade657c              # double 0.83800300000000005
	.quad	0x3fd3fa82e87d2c7c              # double 0.31216500000000003
	.quad	0x3fd838c5436b8f9b              # double 0.378465
	.quad	0x3fc5911cf355cd92              # double 0.168491
	.quad	0x3f4d755bccaf709b              # double 8.9899999999999995E-4
	.quad	0x3fe2cf15e7c8d196              # double 0.58777900000000005
	.quad	0x3fe50316a055757d              # double 0.65662699999999996
	.quad	0x3fd57e4de3b8a19d              # double 0.33583400000000002
	.quad	0x3fdc2977c88e79ab              # double 0.44003100000000001
	.quad	0x3fe108b97785729b              # double 0.53231499999999998
	.quad	0x3feea1c475e6362a              # double 0.95724699999999996
	.quad	0x3fd9b71758e21965              # double 0.40179999999999999
	.quad	0x3fe9e28aa433508f              # double 0.80890399999999996
	.quad	0x3fe691148fd9fd37              # double 0.70521
	.quad	0x3fef2c9081c2e33f              # double 0.97419
	.quad	0x3fee6a18372e6a77              # double 0.95045100000000005
	.quad	0x3fe839b024f6598e              # double 0.75704199999999999
	.quad	0x3fef87724fa8b4c0              # double 0.98528400000000004
	.quad	0x3fc8d0cc35ce1826              # double 0.19387199999999999
	.quad	0x3fee1d81f10667f9              # double 0.94110199999999999
	.quad	0x3fa76ad70e6f2e8c              # double 0.045737
	.quad	0x3fefa778140dd3fe              # double 0.98919299999999999
	.quad	0x3fded4801f75104d              # double 0.48171999999999998
	.quad	0x3fee63ef284167a9              # double 0.94969899999999996
	.quad	0x3fc84c8366516db1              # double 0.189835
	.quad	0x3fdb79e59f2ba9d2              # double 0.429315
	.quad	0x3fc9d7342edbb59e              # double 0.20188
	.quad	0x3f9d6e8af81626b3              # double 0.028742
	.quad	0x3fc94267839cd812              # double 0.19733899999999999
	.quad	0x3facb5fe542e557e              # double 0.056076000000000001
	.quad	0x3fea933e35c5b4ab              # double 0.83047400000000005
	.quad	0x3feb43e5321e603d              # double 0.85203799999999996
	.quad	0x3fe5f26d04e618ce              # double 0.68584299999999998
	.quad	0x3fdf5b63d3e4ef03              # double 0.48995300000000003
	.quad	0x3fd081fd9ba1b196              # double 0.257934
	.quad	0x3fea81b003686a4d              # double 0.82833100000000004
	.quad	0x3fea116659d12cae              # double 0.81462400000000001
	.quad	0x3f9c9d16fc9bc771              # double 0.027942999999999999
	.quad	0x3fe7aa087ca643cc              # double 0.739506
	.quad	0x3f804b3c3e74afd5              # double 0.0079559999999999995
	.quad	0x3fee0b86b15f88fd              # double 0.93890700000000005
	.quad	0x3fe794f8b588e369              # double 0.73693500000000001
	.quad	0x3fd3f09528f190d1              # double 0.31155899999999997
	.quad	0x3fe141c3efae7925              # double 0.53927800000000004
	.quad	0x3fe366d7a56de332              # double 0.60630399999999995
	.quad	0x3fcf2acfb762d83c              # double 0.24349399999999999
	.quad	0x3f9bce4217d2849d              # double 0.027154000000000001
	.quad	0x3fd341e9af5ba2be              # double 0.300898
	.quad	0x3fdc72c94b380cb7              # double 0.44450600000000001
	.quad	0x3fb12a737110e454              # double 0.067054000000000002
	.quad	0x3fcd3c60029f16b1              # double 0.228405
	.quad	0x3f8ffbce4217d285              # double 0.015617000000000001
	.quad	0x3fb77542a23bff8b              # double 0.091633000000000006
	.quad	0x3fcd785729b280f1              # double 0.230235
	.quad	0x3fe8e534373f316e              # double 0.77797899999999998
	.quad	0x3fea30db6a1e81cb              # double 0.81846399999999997
	.quad	0x3fc45bf26f1dc50d              # double 0.159056
	.quad	0x3fdc236c15d2d01c              # double 0.439662
	.quad	0x3fc84f6598e10cf6              # double 0.18992300000000001
	.quad	0x3fcae89656eefa1e              # double 0.21022299999999999
	.quad	0x3fe33e24febd09e1              # double 0.60133599999999998
	.quad	0x3fe5678c0053e2d6              # double 0.66888999999999998
	.quad	0x3f700c521dda059a              # double 0.0039179999999999996
	.quad	0x3fca2e2328f9f44d              # double 0.20453299999999999
	.quad	0x3fe5f2e275ab7dc8              # double 0.68589900000000004
	.quad	0x3fbd361dc93ea2d3              # double 0.114107
	.quad	0x3fc0af35e310dbf0              # double 0.13034699999999999
	.quad	0x3fbdd074213a0c6b              # double 0.116462
	.quad	0x3fb23e7d1351159c              # double 0.071265999999999996
	.quad	0x3fe1487b99d451fc              # double 0.54009799999999997
	.quad	0x3fa7d77fae3608d1              # double 0.046566000000000003
	.quad	0x3fed093964a59c06              # double 0.90737599999999996
	.quad	0x3fe2592fb19e731d              # double 0.57338699999999998
	.quad	0x3fe94013ec460ed8              # double 0.789072
	.quad	0x3fc07d028a1dfb94              # double 0.12881500000000001
	.quad	0x3fec2c14c660a201              # double 0.88038099999999997
	.quad	0x3fd007746887a8d6              # double 0.25045499999999998
	.quad	0x3fa929670196d8f5              # double 0.049144
	.quad	0x3fdf42bf9830e3ce              # double 0.48844900000000002
	.quad	0x3f70a78290689870              # double 0.0040660000000000002
	.quad	0x3fe8c15b1422ccb4              # double 0.77360300000000004
	.quad	0x3fea89efd86a8fc1              # double 0.82933800000000002
	.quad	0x3fef89ce4a7b4e55              # double 0.985572
	.quad	0x3feaa4ce8101f31f              # double 0.83261799999999997
	.quad	0x3fd2a0d349be8ff3              # double 0.29106599999999999
	.quad	0x3fe690b630a91538              # double 0.70516500000000004
	.quad	0x3fd89d495182a993              # double 0.3846
	.quad	0x3fd6a3cea6c1a049              # double 0.35374800000000001
	.quad	0x3fd139ef0f16f438              # double 0.26916099999999998
	.quad	0x3fde431bde82d7b6              # double 0.47284599999999999
	.quad	0x3f84f0520d130dfa              # double 0.010224
	.quad	0x3fe18a5482385404              # double 0.54813599999999996
	.quad	0x3fd3b841248d7e02              # double 0.30812099999999998
	.quad	0x3fc8473cd573647c              # double 0.18967400000000001
	.quad	0x3fe9a0dbad3a604e              # double 0.80088599999999999
	.quad	0x3fe3793dd97f62b7              # double 0.60855000000000004
	.quad	0x3fb429cfdd228566              # double 0.078762999999999999
	.quad	0x3f9fb00bcbe61d00              # double 0.030945
	.quad	0x3fe56ce13f4a98ab              # double 0.66954100000000005
	.quad	0x3fdc6ba8c586876e              # double 0.44407099999999999
	.quad	0x3fd7fc158fb43d8a              # double 0.37476100000000001
	.quad	0x3fd383dff3f0fe04              # double 0.30492399999999997
	.quad	0x3feb1800a7c5ac47              # double 0.84667999999999999
	.quad	0x3fecb250b524399b              # double 0.89676699999999998
	.quad	0x3fe2aedbb59ddc1e              # double 0.58384499999999995
	.quad	0x3fe5877ab324851b              # double 0.67278800000000005
	.quad	0x3fe7b56b87379746              # double 0.740896
	.quad	0x3fd51e57d9dba909              # double 0.32997700000000002
	.quad	0x3fe49b43526527a2              # double 0.643953
	.quad	0x3fcadc6e2a80064b              # double 0.20985200000000001
	.quad	0x3fb4b26394face68              # double 0.080847000000000002
	.quad	0x3fd424399b2c40d1              # double 0.31471100000000002
	.quad	0x3fca046412cf0f9d              # double 0.203259
	.quad	0x3feee9ab29e4d5d8              # double 0.96602399999999999
	.quad	0x3fe34399b2c40d0b              # double 0.60200200000000004
	.quad	0x3f935c5b4aa9717e              # double 0.018907
	.quad	0x3fc0df71eafee6fb              # double 0.13181899999999999
	.quad	0x3fe8d39fba450acc              # double 0.77583299999999999
	.quad	0x3fcad5ae1cde5d18              # double 0.209646
	.quad	0x3fd9a20ddc619546              # double 0.40051599999999998
	.quad	0x3fe2fc17a89331a1              # double 0.59327300000000005
	.quad	0x3feec422036006d1              # double 0.96144200000000001
	.quad	0x3fef1b328b6d86ec              # double 0.97206999999999998
	.quad	0x3fc2b4c7f3493858              # double 0.14614199999999999
	.quad	0x3fdb5182a9930be1              # double 0.42685000000000001
	.quad	0x3febdcad14a0a0f5              # double 0.87068800000000002
	.quad	0x3fe06e957470eb25              # double 0.51349900000000004
	.quad	0x3fe13e09bb6aa4ba              # double 0.53882300000000005
	.quad	0x3fe29aa60913a4f8              # double 0.58137799999999995
	.quad	0x3fd3dd4845132f88              # double 0.31038100000000002
	.quad	0x3fc12c0e7bc3c5bd              # double 0.134157
	.quad	0x3fee96fa82e87d2c              # double 0.95592999999999994
	.quad	0x3f86f8f041461b6d              # double 0.011217
	.quad	0x3fecff3ade225fa6              # double 0.90615599999999996
	.quad	0x3fe5c567125dd096              # double 0.68034700000000004
	.quad	0x3fe1991ff7164c73              # double 0.54994200000000004
	.quad	0x3fd4fa58f7121ab5              # double 0.32778000000000002
	.quad	0x3fe25d91ab8e8ea4              # double 0.57392200000000004
	.quad	0x3fe5844284dfce31              # double 0.67239499999999996
	.quad	0x3fe5ce5d5b24e9c4              # double 0.68144099999999996
	.quad	0x3fec5a038194c016              # double 0.885988
	.quad	0x3fe0a17f4128bf3c              # double 0.51971400000000001
	.quad	0x3fb7a1c25d074214              # double 0.092312000000000005
	.quad	0x3fc1f2dc2b0ea183              # double 0.14022399999999999
	.quad	0x3fe110a99b6f5caf              # double 0.53328399999999998
	.quad	0x3fe7eddce7cd0353              # double 0.74778599999999995
	.quad	0x3fd065c70435efa6              # double 0.256212
	.quad	0x3fe9a69be09bb6aa              # double 0.80158799999999997
	.quad	0x3febc3c3a42f1ed1              # double 0.86764699999999995
	.quad	0x3fd89157abb8800f              # double 0.38387100000000002
	.quad	0x3fb4178705425f20              # double 0.078483999999999998
	.quad	0x3fecccee5abc0e39              # double 0.90001600000000004
	.quad	0x3fe1e9899bf5946c              # double 0.55975799999999998
	.quad	0x3fc567ba237cdcca              # double 0.16722799999999999
	.quad	0x3fb68e60807357e6              # double 0.088109999999999993
	.quad	0x3fda95f2452c59fb              # double 0.41540199999999999
	.quad	0x3fef4304ccee5abc              # double 0.97693099999999999
	.quad	0x3fd59c62a1b5c7ce              # double 0.33767000000000003
	.quad	0x3fdc39713ad5bee4              # double 0.44100600000000001
	.quad	0x3fc9508f648c7193              # double 0.197771
	.quad	0x3fe25a33bd9cae21              # double 0.57351099999999999
	.quad	0x3fc78194c0160525              # double 0.183642
	.quad	0x3fcbb3636f3b213e              # double 0.21641199999999999
	.quad	0x3fea14057082491b              # double 0.814944
	.quad	0x3fee442a66dbd72c              # double 0.94582100000000002
	.quad	0x3fcd8e53eb399f5e              # double 0.230906
	.quad	0x3fecc42e9899bf59              # double 0.89894799999999997
	.quad	0x3fea603925bb7b6c              # double 0.82424600000000003
	.quad	0x3fd516a487336588              # double 0.32950699999999999
	.quad	0x3fd84028e4fb97bb              # double 0.37891599999999998
	.quad	0x3fe50611fd5885d3              # double 0.65699099999999999
	.quad	0x3fec9c219eb6390d              # double 0.89405900000000005
	.quad	0x3fda44b6e935b91f              # double 0.41044399999999998
	.quad	0x3fe226394face67d              # double 0.56716599999999995
	.quad	0x3fcc10060780fdc1              # double 0.21923899999999999
	.quad	0x3fbd2189bd8383ae              # double 0.11379300000000001
	.quad	0x3fd06c54bcf0b6b7              # double 0.25661200000000001
	.quad	0x3fd37620ee8d10f5              # double 0.30408499999999999
	.quad	0x3fe98e368f084620              # double 0.79861000000000004
	.quad	0x3fe137f7be121ee6              # double 0.53808199999999995
	.quad	0x3fe8b9de481f5382              # double 0.77268899999999996
	.quad	0x3fe737b07075b3e1              # double 0.72554799999999997
	.quad	0x3fb53af74cd3176a              # double 0.082931000000000004
	.quad	0x3fe7e5321e603d57              # double 0.74672799999999995
	.quad	0x3fec2babead4f590              # double 0.88033099999999997
	.quad	0x3fe3bfa2ad3e920c              # double 0.617143
	.quad	0x3fdef6ba0620ab71              # double 0.48380899999999999
	.quad	0x3fdb32830a0b1bbd              # double 0.424958
	.quad	0x3fc52e6a76965f52              # double 0.16547899999999999
	.quad	0x3fe865f0f5a1016d              # double 0.76244400000000001
	.quad	0x3fe31b9d7fd82774              # double 0.59712100000000001
	.quad	0x3fea074c8ffb8b26              # double 0.81339099999999998
	.quad	0x3fd3592d98bf7f06              # double 0.30231799999999998
	.quad	0x3fed981beb18116f              # double 0.92481800000000003
	.quad	0x3facb7d41743e964              # double 0.056090000000000001
	.quad	0x3feb27136a400fbb              # double 0.84852000000000005
	.quad	0x3fbbdd334c5da6a4              # double 0.108844
	.quad	0x3fe4ae07e5a78f26              # double 0.64624400000000004
	.quad	0x3feccaa9717df19d              # double 0.89973899999999996
	.quad	0x3fb12977c88e79ab              # double 0.067039000000000001
	.quad	0x3fdaa8d64d7f0ed4              # double 0.41655500000000001
	.quad	0x3fee0b73d188f430              # double 0.93889800000000001
	.quad	0x3fae1437c5692b3d              # double 0.058748000000000002
	.quad	0x3fe6336deb95e5b0              # double 0.69377800000000001
	.quad	0x3fc18d3f1843c3a4              # double 0.13712299999999999
	.quad	0x3fb87724fa8b4bf9              # double 0.095568
	.quad	0x3fe025375c8d9f90              # double 0.50454299999999996
	.quad	0x3fe0811d3671ac15              # double 0.51576100000000002
	.quad	0x3fd83e74afd54541              # double 0.37881199999999998
	.quad	0x3fb04a2fcefaa476              # double 0.063631999999999994
	.quad	0x3fddb1bbcf4e874d              # double 0.46397300000000002
	.quad	0x3fdd51a005c4651f              # double 0.45810699999999999
	.quad	0x3fd3487fcb923a2a              # double 0.30130000000000001
	.quad	0x3fedc579f2346562              # double 0.93035599999999996
	.quad	0x3fb13c9abb01c92e              # double 0.067331000000000002
	.quad	0x3fe929ef5232d2bb              # double 0.78636899999999998
	.quad	0x3fc128522ea0fd3b              # double 0.134043
	.quad	0x3fe09a0cf1800a7c              # double 0.51880499999999996
	.quad	0x3fa384ba0e842742              # double 0.038122000000000003
	.quad	0x3feccc122749f0e5              # double 0.89991100000000002
	.quad	0x3fcf04577d955715              # double 0.24232000000000001
	.quad	0x3fe7524bfd2e9468              # double 0.728796
	.quad	0x3fe25423d9231c65              # double 0.57277100000000003
	.quad	0x3fdd45e4e69f05ea              # double 0.45739099999999999
	.quad	0x3fee0ac9f2fdb8fe              # double 0.93881700000000001
	.quad	0x3fefa1a0cf1800a8              # double 0.98848000000000002
	.quad	0x3feb3a3ec02f2f98              # double 0.85085999999999995
	.quad	0x3fe9b30728e92d56              # double 0.80310400000000004
	.quad	0x3fe981d19157abb9              # double 0.79709700000000006
	.quad	0x3fd52c83ec892ab7              # double 0.33084200000000002
	.quad	0x3fbed8a116659d13              # double 0.120493
	.quad	0x3fb1af9ebe9c8861              # double 0.069085999999999995
	.quad	0x3fe3530489d27c39              # double 0.60388399999999998
	.quad	0x3fc0cff21b3aeee9              # double 0.13134599999999999
	.quad	0x3fd4ae7924af0bf2              # double 0.32314900000000002
	.quad	0x3fe7fcb0c026cc1d              # double 0.74959600000000004
	.quad	0x3f96d117b5286b59              # double 0.022282
	.quad	0x3f91f0c34c1a8ac6              # double 0.017520000000000001
	.quad	0x3fd363736cdf266c              # double 0.30294500000000002
	.quad	0x3fe2502ababead4f              # double 0.57228599999999996
	.quad	0x3fe38adeebb341e1              # double 0.61070199999999997
	.quad	0x3f95cd0bb6ed6777              # double 0.02129
	.quad	0x3fe238dc55000c95              # double 0.56944099999999997
	.quad	0x3fa11409a2403148              # double 0.033355999999999997
	.quad	0x3fd144c7b02d59d5              # double 0.26982299999999998
	.quad	0x3fde7c6759ab6d01              # double 0.47634300000000002
	.quad	0x3fe2095f2452c5a0              # double 0.56364400000000003
	.quad	0x3fdc05dd8f92af9b              # double 0.43785800000000002
	.quad	0x3fe5cc016052502f              # double 0.68115300000000001
	.quad	0x3fe2a99524bfd2e9              # double 0.58320099999999997
	.quad	0x3fc22cf52b90a783              # double 0.14199700000000001
	.quad	0x3fda93b7d84901d2              # double 0.41526600000000002
	.quad	0x3fd6dd3bafd976ff              # double 0.35725299999999999
	.quad	0x3fc39cbee807bbb6              # double 0.153221
	.quad	0x3fe67623076c050c              # double 0.70192100000000002
	.quad	0x3fd4336deb95e5b0              # double 0.315639
	.quad	0x3fc1357603925bb8              # double 0.13444400000000001
	.quad	0x3fe755bccaf709b7              # double 0.72921599999999998
	.quad	0x3fce915bdd76683c              # double 0.238811
	.quad	0x3fe344fc1df3300e              # double 0.60217100000000001
	.quad	0x3f84fdf3b645a1cb              # double 0.01025
	.quad	0x3fceaa6d26740810              # double 0.23957600000000001
	.quad	0x3fd72784a9478c87              # double 0.36178700000000003
	.quad	0x3fd7851a86940358              # double 0.36749900000000002
	.quad	0x3f97829068986fce              # double 0.022959
	.quad	0x3fbbf8db4890928a              # double 0.109266
	.quad	0x3fcb1d57ff9b5632              # double 0.21183299999999999
	.quad	0x3febf48a159817b9              # double 0.87360099999999996
	.quad	0x3fd82fdb8fde2ef5              # double 0.37792100000000001
	.quad	0x3fe0a3486f049a99              # double 0.51993199999999995
	.quad	0x3fe3e22a2c237479              # double 0.62135799999999997
	.quad	0x3fb2b87379746024              # double 0.073126999999999998
	.quad	0x3fb8a46e08f21709              # double 0.096258999999999997
	.quad	0x3fddca925fe974a3              # double 0.46548899999999999
	.quad	0x3fe44b7f5a5332ad              # double 0.634216
	.quad	0x3fe18fb224aada34              # double 0.54879100000000003
	.quad	0x3fd0be6a337a80d0              # double 0.26162200000000002
	.quad	0x3fe8bdb7f1737543              # double 0.77315900000000004
	.quad	0x3fd4df7e80389f84              # double 0.32614100000000001
	.quad	0x3fe1a157689ca18c              # double 0.55094500000000002
	.quad	0x3fe8e40420f6f08d              # double 0.77783400000000003
	.quad	0x3fd0273929ed3954              # double 0.25239400000000001
	.quad	0x3fe49fd36f7e3d1d              # double 0.64451000000000003
	.quad	0x3f8b5c7cd898b2ea              # double 0.01336
	.quad	0x3fe8f4cd31769a91              # double 0.77988299999999999
	.quad	0x3fb93122b7baecd0              # double 0.098405999999999993
	.quad	0x3feccb1cc9646280              # double 0.89979399999999998
	.quad	0x3fecf2cf95d4e8fb              # double 0.90464
	.quad	0x3fe7094c447c30d3              # double 0.719885
	.quad	0x3fd4e9f2778140dd              # double 0.32677899999999999
	.quad	0x3fe50dcdb37c99af              # double 0.65793500000000005
	.quad	0x3fea2e3c536d655e              # double 0.81814399999999998
	.quad	0x3feb62ed352220bc              # double 0.85582599999999997
	.quad	0x3fe304d551d68c69              # double 0.59433999999999998
	.quad	0x3fe7f5c6c11a1123              # double 0.74875199999999997
	.quad	0x3feaaecd07852f7f              # double 0.83383799999999997
	.quad	0x3fcee2541d8e8640              # double 0.241282
	.quad	0x3febbdc69f8c21e2              # double 0.86691600000000002
	.quad	0x3fee7bc5de9c022a              # double 0.95260900000000004
	.quad	0x3fe0d07a6bd6e8b0              # double 0.52544900000000005
	.quad	0x3f9ff540895d0b74              # double 0.031209000000000001
	.quad	0x3fd021dda059a73b              # double 0.25206699999999999
	.quad	0x3fe0b30941c8216c              # double 0.52185499999999996
	.quad	0x3feaba797891e215              # double 0.83526299999999998
	.quad	0x3fe29ac14c660a20              # double 0.58139099999999999
	.quad	0x3feb8329802c0a4a              # double 0.859761
	.quad	0x3fe740d6f544bb1b              # double 0.72666500000000001
	.quad	0x3fe481b21c475e63              # double 0.64083199999999996
	.quad	0x3fc38c6d612c6ac2              # double 0.152723
	.quad	0x3fd68c64fdb09a67              # double 0.35231899999999999
	.quad	0x3fc50196d8f4f93c              # double 0.16411100000000001
	.quad	0x3fee444e0daa0cae              # double 0.94583799999999996
	.quad	0x3fea005e5f30e7ff              # double 0.81254499999999996
	.quad	0x3fe271fff79c8430              # double 0.57641600000000004
	.quad	0x3fa5506573215fcc              # double 0.041628999999999999
	.quad	0x3fc9c17225b749ae              # double 0.20121600000000001
	.quad	0x3feb623f24d8fd5d              # double 0.85574300000000003
	.quad	0x3f7fab96f21f6cad              # double 0.0077320000000000002
	.quad	0x3fe2f785729b280f              # double 0.59271499999999999
	.quad	0x3fcef9b994e1a3f4              # double 0.24199599999999999
	.quad	0x3fcc21c8a7a41e58              # double 0.219781
	.quad	0x3fd24af4f0d844d0              # double 0.285825
	.quad	0x3fe72b474107314d              # double 0.72403300000000004
	.quad	0x3fe052d87f88765c              # double 0.51011300000000004
	.quad	0x3fd62a411c2a0232              # double 0.346329
	.quad	0x3fdb7b8d3f1843c4              # double 0.42941600000000002
	.quad	0x3fe6ad9274e22a2c              # double 0.70868799999999998
	.quad	0x3fedff822bbecaac              # double 0.93744000000000005
	.quad	0x3fca2584f4c6e6da              # double 0.20427000000000001
	.quad	0x3fdbb3354c12274a              # double 0.432813
	.quad	0x3fead2674080f990              # double 0.83818400000000004
	.quad	0x3fd3d5d80e496edf              # double 0.30992700000000001
	.quad	0x3fc0008637bd05af              # double 0.12501599999999999
	.quad	0x3fc0b502ababead5              # double 0.130524
	.quad	0x3fed5188f42fe825              # double 0.91620299999999999
	.quad	0x3fe60c38f366948a              # double 0.68899200000000005
	.quad	0x3fe620c282c6ef3d              # double 0.69149899999999997
	.quad	0x3fee26b0d9513f8e              # double 0.94222300000000003
	.quad	0x3fd42d948dc11e43              # double 0.31528200000000001
	.quad	0x3fe230c026cc1ca4              # double 0.56845100000000004
	.quad	0x3fa759253543aeab              # double 0.045601999999999997
	.quad	0x3fe49a0f0a5efe93              # double 0.64380599999999999
	.quad	0x3fec08aac96cc5fc              # double 0.876058
	.quad	0x3fede54f7a919696              # double 0.93424200000000002
	.quad	0x3fd9fe21d96e9bbf              # double 0.406136
	.quad	0x3fe011a975afaf86              # double 0.50215600000000005
	.quad	0x3fe2973d9ec70004              # double 0.58096199999999998
	.quad	0x3fed336deb95e5b0              # double 0.91252800000000001
	.quad	0x3fc2b4395810624e              # double 0.146125
	.quad	0x3f99fa11a975afb0              # double 0.025368000000000002
	.quad	0x3fee798d8a979e17              # double 0.95233800000000002
	.quad	0x3fe912f09d8c6d61              # double 0.78356199999999998
	.quad	0x3fefd4bf0995aaf8              # double 0.99472000000000004
	.quad	0x3fe461804d983947              # double 0.63690199999999997
	.quad	0x3fc6afcce1c58256              # double 0.17724000000000001
	.quad	0x3fd261309c7ffde7              # double 0.28718199999999999
	.quad	0x3fe22be0589acbc9              # double 0.56785600000000003
	.quad	0x3fed80f55de58e65              # double 0.92199200000000003
	.quad	0x3fc70a5efe931876              # double 0.180004
	.quad	0x3fea9693c03bc4d2              # double 0.83088099999999998
	.quad	0x3fd91a11233df2aa              # double 0.39221600000000001
	.quad	0x3fdade00d1b71759              # double 0.41980000000000001
	.quad	0x3fe184577d955715              # double 0.54740500000000003
	.quad	0x3fd2eb5f5f0b2852              # double 0.29561599999999999
	.quad	0x3feb58ab92c06184              # double 0.85457399999999994
	.quad	0x3fbbfc86cebbba56              # double 0.109322
	.quad	0x3fe3d084e831ad21              # double 0.61920399999999998
	.quad	0x3febc81d3aa369fd              # double 0.86817800000000001
	.quad	0x3fe7c5564b662fe0              # double 0.74283900000000002
	.quad	0x3fec9ce8d972cd7d              # double 0.894154
	.quad	0x3fecc7fbacb42891              # double 0.89941199999999999
	.quad	0x3fe5a21858bc59b8              # double 0.676037
	.quad	0x3fce263d816aceab              # double 0.235542
	.quad	0x3fdbf3a14cec41dd              # double 0.43674499999999999
	.quad	0x3fa77985271bcdbc              # double 0.045849000000000001
	.quad	0x3fee9eadd590c0ad              # double 0.95687
	.quad	0x3fda4dad31fcd24e              # double 0.410991
	.quad	0x3fd9cf41f212d773              # double 0.40327499999999999
	.quad	0x3fd505d52c16df40              # double 0.32848100000000002
	.quad	0x3f86d22424a276b8              # double 0.011143
	.quad	0x3fd84dc22ab25b31              # double 0.37974599999999997
	.quad	0x3fc86c7eae5bc87e              # double 0.19081100000000001
	.quad	0x3fc70a88effe2a3d              # double 0.180009
	.quad	0x3fd97b84db9c7369              # double 0.39816400000000002
	.quad	0x3fd1cec84f8f8a4c              # double 0.27824599999999999
	.quad	0x3fdc15336deb95e6              # double 0.43879400000000002
	.quad	0x3fe8cface67d77fb              # double 0.77535100000000001
	.quad	0x3fdd1cc964628028              # double 0.45488200000000001
	.quad	0x3fe3746ed245b292              # double 0.60796300000000003
	.quad	0x3fdf7b4e54f7a919              # double 0.49190099999999998
	.quad	0x3f8fe21d96e9bbf1              # double 0.015568
	.quad	0x3fc6deb0fadf2ecf              # double 0.178671
	.quad	0x3fe65ea033e78e19              # double 0.69905099999999998
	.quad	0x3fd0cce1c58255b0              # double 0.26250499999999999
	.quad	0x3f9be9c886162f16              # double 0.027258999999999999
	.quad	0x3fc5e61cffeb074a              # double 0.17108499999999999
	.quad	0x3fc68438088509c0              # double 0.17591000000000001
	.quad	0x3fee4d63cb817332              # double 0.94694699999999998
	.quad	0x3fecfe4bcad9ad86              # double 0.90604200000000001
	.quad	0x3fc902a3486f049b              # double 0.19539300000000001
	.quad	0x3fc7f8b1572580c3              # double 0.187277
	.quad	0x3fe9a47a9e2bcf92              # double 0.80132800000000004
	.quad	0x3fe0be9c886162f1              # double 0.52326799999999996
	.quad	0x3fddb13dfb0d51f8              # double 0.46394299999999999
	.quad	0x3fd4157abb8800eb              # double 0.31381100000000001
	.quad	0x3fe899da9c99285b              # double 0.76878100000000005
	.quad	0x3fe3f9463cfb3312              # double 0.62417900000000004
	.quad	0x3fc2fdd22856605f              # double 0.148371
	.quad	0x3fedff0cbaf965b2              # double 0.937384
	.quad	0x3fe1cd5d80e496ee              # double 0.55631900000000001
	.quad	0x3fc6ae1049235f81              # double 0.17718700000000001
	.quad	0x3fefb3e78e1932d7              # double 0.990711
	.quad	0x3fe17620ee8d10f5              # double 0.54566999999999999
	.quad	0x3fb943aeab7995ee              # double 0.098688999999999998
	.quad	0x3fed9327243137b0              # double 0.92421299999999995
	.quad	0x3fc200e27e0ef998              # double 0.140652
	.quad	0x3fe3c24c404a72eb              # double 0.61746800000000002
	.quad	0x3fcac2699c7bcc29              # double 0.20905799999999999
	.quad	0x3fed73d7d3910c2c              # double 0.92039099999999995
	.quad	0x3fd17a99fa11a976              # double 0.27310800000000002
	.quad	0x3fe8b9e6ab9b23dd              # double 0.77269299999999996
	.quad	0x3fea08ace24bba13              # double 0.81355900000000003
	.quad	0x3fed50b955f7835a              # double 0.91610400000000003
	.quad	0x3fc58f81e8a2ec29              # double 0.16844200000000001
	.quad	0x3fee49e236c15d2d              # double 0.946519
	.quad	0x3fe8ccf4a558ea7d              # double 0.77501900000000001
	.quad	0x3fd39ca9ef5232d3              # double 0.30643700000000001
	.quad	0x3fbf8f9b13165d3a              # double 0.12328500000000001
	.quad	0x3fdd522a6f3f52fc              # double 0.45813999999999999
	.quad	0x3fef50c804102ff9              # double 0.978611
	.quad	0x3fee603b3e9a6f82              # double 0.94924699999999995
	.quad	0x3fe54ddd6e04c059              # double 0.66575499999999999
	.quad	0x3fe9c8a9bcfd4bf1              # double 0.80574500000000004
	.quad	0x3fe99d66adb402d1              # double 0.80046399999999995
	.quad	0x3fe7183b60285ec4              # double 0.72170800000000002
	.quad	0x3f9e657b84db9c73              # double 0.029683999999999999
	.quad	0x3fe38c5eb313be23              # double 0.61088500000000001
	.quad	0x3fee90fb65668c26              # double 0.95519799999999999
	.quad	0x3fd6e9e1b089a027              # double 0.35802499999999998
	.quad	0x3fedf6a0dbad3a60              # double 0.93635599999999996
	.quad	0x3fe0dd52c16df3f9              # double 0.52701699999999996
	.quad	0x3fbc8765ba6efc37              # double 0.111441
	.quad	0x3fdc99e0e736049f              # double 0.44689200000000001
	.quad	0x3fd7e22e5de15ca7              # double 0.37318000000000001
	.quad	0x3fd4a15db3397dd0              # double 0.322349
	.quad	0x3fda7d8cf398e970              # double 0.41391299999999998
	.quad	0x3fd1d0f6273929ed              # double 0.27837899999999999
	.quad	0x3fd31e9f2778140e              # double 0.29874400000000001
	.quad	0x3fe0a2a6f3f52fc2              # double 0.51985499999999996
	.quad	0x3fece512a94ff002              # double 0.90296299999999996
	.quad	0x3feef60e0eb67c28              # double 0.96753599999999995
	.quad	0x3fdc87229e90795f              # double 0.44574799999999998
	.quad	0x3fe9d6238da3c212              # double 0.80739000000000005
	.quad	0x3feca6d698fe6927              # double 0.895366
	.quad	0x3fe3f0f5a1016ce8              # double 0.62316400000000005
	.quad	0x3fe83d7f51efb6dd              # double 0.75750700000000004
	.quad	0x3fe66d916872b021              # double 0.70087500000000003
	.quad	0x3fe21cd8127b2cc7              # double 0.566021
	.quad	0x3fdb564302b40f67              # double 0.42714000000000002
	.quad	0x3fd248a9bcfd4bf1              # double 0.28568500000000002
	.quad	0x3faf74cd31769a91              # double 0.061438
	.quad	0x3fde7082491afc05              # double 0.47561700000000001
	.quad	0x3fd2c85c24c404a7              # double 0.29347899999999999
	.quad	0x3fbc1eeed8904f6e              # double 0.109847
	.quad	0x3fd44dc65c70435f              # double 0.317247
	.quad	0x3fdb5c4a83b1d0c8              # double 0.427508
	.quad	0x3fd01cc532a497fa              # double 0.25175599999999998
	.quad	0x3fefd851654d61b3              # double 0.99515600000000004
	.quad	0x3fda21ab4b72c519              # double 0.40830499999999997
	.quad	0x3fd96fda836eb4ea              # double 0.39745200000000003
	.quad	0x3fe11f4f50a02b84              # double 0.53507199999999999
	.quad	0x3fdad4ae429e0a42              # double 0.41923100000000002
	.quad	0x3fc76a37ac3eb7cc              # double 0.18292900000000001
	.quad	0x3fe89e492bc2fc69              # double 0.76932199999999995
	.quad	0x3fa5dca4b124d09a              # double 0.042699000000000001
	.quad	0x3fc3f969e3c96894              # double 0.15604899999999999
	.quad	0x3feed3825e13b18e              # double 0.96331900000000004
	.quad	0x3fe62556d19dece5              # double 0.69205799999999995
	.quad	0x3fe130ccbc05d52c              # double 0.53720699999999999
	.quad	0x3fe416d4c33b5393              # double 0.62778699999999998
	.quad	0x3fb9c3ac929aa1d7              # double 0.100642
	.quad	0x3fe834f82f512663              # double 0.75646599999999997
	.quad	0x3fe9558a76102795              # double 0.79169199999999995
	.quad	0x3fdb0fcb4f1e4b45              # double 0.42283900000000002
	.quad	0x3fca2e2328f9f44d              # double 0.20453299999999999
	.quad	0x3fd80d77b7c7820a              # double 0.37582199999999999
	.quad	0x3fec432a8c9b8455              # double 0.88319899999999996
	.quad	0x3fe25f1172ef0ae5              # double 0.57410499999999998
	.quad	0x3fe8dcbddb9841ab              # double 0.77694600000000003
	.quad	0x3fbfd6c7219220ff              # double 0.124371
	.quad	0x3fef33f42352eb5f              # double 0.97509199999999995
	.quad	0x3fe348cb4aec8d5c              # double 0.60263599999999995
	.quad	0x3fe072ae07e5a78f              # double 0.51399899999999998
	.quad	0x3fda87df5cf2495e              # double 0.41454299999999999
	.quad	0x3fe697e56473471f              # double 0.70604199999999995
	.quad	0x3fea11f2dc2b0ea2              # double 0.81469100000000005
	.quad	0x3feb0d64d7f0ed3e              # double 0.84538500000000005
	.quad	0x3fea81b43526527a              # double 0.82833299999999999
	.quad	0x3feec2e9899bf594              # double 0.96129299999999995
	.quad	0x3f7c51dabe27179c              # double 0.006914
	.quad	0x3fd2488c60cbf2b2              # double 0.28567799999999999
	.quad	0x3fef6f911cf355ce              # double 0.98236900000000005
	.quad	0x3fa06c226809d495              # double 0.032074999999999999
	.quad	0x3fe7e99c7bcc2939              # double 0.74726700000000001
	.quad	0x3fd20ef99806f263              # double 0.28216400000000003
	.quad	0x3fc17d9dba908a26              # double 0.13664599999999999
	.quad	0x3fe3491d14e3bcd3              # double 0.60267499999999996
	.quad	0x3fd63636f3b213e4              # double 0.34705900000000001
	.quad	0x3fe931d2e0e30447              # double 0.78733200000000003
	.quad	0x3fdb6312f4cf4a56              # double 0.42792200000000002
	.quad	0x3fe9a3d2d87f8876              # double 0.80124799999999996
	.quad	0x3fe0f5b1c8648840              # double 0.52999200000000002
	.quad	0x3fec03a322af5771              # double 0.875444
	.quad	0x3fd86a37ac3eb7cc              # double 0.38148300000000002
	.quad	0x3fdcfe9fadafd114              # double 0.45304100000000003
	.quad	0x3fe642f405f6ba06              # double 0.69567299999999999
	.quad	0x3fc5a122fad6cb53              # double 0.16897999999999999
	.quad	0x3fe8dbab21815a08              # double 0.77681500000000003
	.quad	0x3f83ade225fa658c              # double 0.0096089999999999995
	.quad	0x3fe8627179bfdf7f              # double 0.76201700000000006
	.quad	0x3fe2f4f93bc0a06f              # double 0.59240400000000004
	.quad	0x3fd5bb6672fba01f              # double 0.339563
	.quad	0x3fe88c5436b8f9b1              # double 0.76712999999999998
	.quad	0x3fe40420f6f08cc5              # double 0.62550399999999995
	.quad	0x3fef31d2e0e30447              # double 0.97483200000000003
	.quad	0x3fe84d0fe8ab4fa5              # double 0.75940700000000005
	.quad	0x3fed73d9ec700043              # double 0.92039199999999999
	.quad	0x3fedd9dfdac68a93              # double 0.93284599999999995
	.quad	0x3fe7cb51372a38b9              # double 0.74356900000000004
	.quad	0x3fed255f3519bd40              # double 0.91081199999999995
	.quad	0x3fee1333b96af039              # double 0.93984400000000001
	.quad	0x3fd67a24894c447c              # double 0.35120499999999999
	.quad	0x3fe384944ed6fda8              # double 0.60993399999999998
	.quad	0x3f863fdd65a14489              # double 0.010864
	.quad	0x3fef00e8c8abd5dc              # double 0.96886099999999997
	.quad	0x3fc88cdea033e78e              # double 0.191799
	.quad	0x3fd4897635e7429a              # double 0.32089000000000001
	.quad	0x3fef0ec52a411c2a              # double 0.970553
	.quad	0x3fea9c7368ad6883              # double 0.83159799999999995
	.quad	0x3fef2ae6c8f75537              # double 0.97398700000000004
	.quad	0x3fd948626f60e0eb              # double 0.39504299999999998
	.quad	0x3faa2dd7a99fa11b              # double 0.051131000000000003
	.quad	0x3fd4f34938583622              # double 0.327349
	.quad	0x3fdb311622813448              # double 0.424871
	.quad	0x3fc1ca643cc07aaf              # double 0.138989
	.quad	0x3fe351526d8b1dd6              # double 0.60367700000000002
	.quad	0x3fbde85fd04a2fcf              # double 0.116827
	.quad	0x3fee3929ed3953df              # double 0.94447800000000004
	.quad	0x3fde261bf37b8d3f              # double 0.47107599999999999
	.quad	0x3fe6f70153bd1676              # double 0.71765199999999996
	.quad	0x3fd4f7ad4b2745bf              # double 0.32761699999999999
	.quad	0x3fa72734f82f5126              # double 0.045220999999999997
	.quad	0x3fe949a9973d9ec7              # double 0.790242
	.quad	0x3fea9c1b54195cc8              # double 0.83155599999999996
	.quad	0x3fcb38cda6e75ff6              # double 0.212671
	.quad	0x3fe07525460aa64c              # double 0.51429999999999998
	.quad	0x3fe49fd36f7e3d1d              # double 0.64451000000000003
	.quad	0x3fc520642396073e              # double 0.165051
	.quad	0x3fcb898b2e9ccb7d              # double 0.21513499999999999
	.quad	0x3fedfec56d5cfaad              # double 0.93735000000000002
	.quad	0x3fd2b5bb384fd2a6              # double 0.29234199999999999
	.quad	0x3fc786b9c304ccee              # double 0.18379899999999999
	.quad	0x3fe2e86a4ca4f441              # double 0.59087100000000004
	.quad	0x3fc20d0aaa7ded6c              # double 0.14102300000000001
	.quad	0x3fd492fb19e731d3              # double 0.32147100000000001
	.quad	0x3fecf6273929ed39              # double 0.90504799999999996
	.quad	0x3fc8064a9cdc4439              # double 0.187692
	.quad	0x3fefcd7cf5f4e443              # double 0.99383399999999999
	.quad	0x3fd41d9b1b79d90a              # double 0.314307
	.quad	0x3fb52d44dca8e2e3              # double 0.082722000000000004
	.quad	0x3fd0bcf0b6b6e0d2              # double 0.26153199999999999
	.quad	0x3fd65dc8323358f3              # double 0.34947400000000001
	.quad	0x3fd554152b0a6fc6              # double 0.33325700000000003
	.quad	0x3fef6277c45cbbc3              # double 0.98077000000000003
	.quad	0x3fa0abf76a2f48c3              # double 0.032562000000000001
	.quad	0x3fe3dd3996fa82e8              # double 0.62075499999999995
	.quad	0x3fd3d1e96c3fc43b              # double 0.30968699999999999
	.quad	0x3fee557de0d66f0d              # double 0.947936
	.quad	0x3fb90be9424e5929              # double 0.097837999999999994
	.quad	0x3fe10a7c5ac471b4              # double 0.53252999999999995
	.quad	0x3feff6a2f48c2e77              # double 0.99885699999999999
	.quad	0x3febec43f5f91601              # double 0.87259100000000001
	.quad	0x3fd45931ca7d6734              # double 0.317944
	.quad	0x3fd64755ffe6d58d              # double 0.34810400000000002
	.quad	0x3fdf5bb7b6bb1290              # double 0.48997299999999999
	.quad	0x3fecbbeec39799e5              # double 0.89794099999999999
	.quad	0x3fe1d3bd1676640a              # double 0.55709699999999995
	.quad	0x3fc9f9df548ecd8e              # double 0.20293800000000001
	.quad	0x3fef173b85e80bed              # double 0.97158599999999994
	.quad	0x3fef3bf727136a40              # double 0.97606999999999999
	.quad	0x3feb9df1172ef0ae              # double 0.86302999999999996
	.quad	0x3fd6e432441fea81              # double 0.357678
	.quad	0x3fe2a62cba732df5              # double 0.582785
	.quad	0x3fdd1be2b4959e62              # double 0.45482699999999998
	.quad	0x3fe445564b662fe0              # double 0.63346400000000003
	.quad	0x3fccc77dd872f33d              # double 0.22483800000000001
	.quad	0x3fbea91d9b1b79d9              # double 0.119768
	.quad	0x3fc872a7bd48cb4b              # double 0.190999
	.quad	0x3fbe3d1cc100e6b0              # double 0.11812
	.quad	0x3fdb1ac57e23f24e              # double 0.42350900000000002
	.quad	0x3fd23005814940bc              # double 0.28418100000000002
	.quad	0x3fc68387df5cf249              # double 0.17588899999999999
	.quad	0x3fc1052934acaff7              # double 0.13297
	.quad	0x3feceaaf35e310dc              # double 0.903648
	.quad	0x3fbe9435ac8a3726              # double 0.119449
	.quad	0x3f378705425f2021              # double 3.59E-4
	.quad	0x3fec478c868b9fdc              # double 0.88373400000000001
	.quad	0x3fc4cb4289118c19              # double 0.16245299999999999
	.quad	0x3fe5e0b6f9fcb0c0              # double 0.68368099999999998
	.quad	0x3fefd9231c64ba95              # double 0.99525600000000002
	.quad	0x3fe0f192ea52ef91              # double 0.52948899999999999
	.quad	0x3fb70318b9346994              # double 0.089890999999999999
	.quad	0x3fea716f4384ba0f              # double 0.82634700000000005
	.quad	0x3fece4c729f59cd0              # double 0.90292700000000004
	.quad	0x3fe96019b0ab2e17              # double 0.79298100000000005
	.quad	0x3fef2593a2df9379              # double 0.973337
	.quad	0x3feb46a5d6bebe16              # double 0.85237399999999997
	.quad	0x3fe86789e774eebf              # double 0.76263899999999996
	.quad	0x3fe81ee02a77a2cf              # double 0.75376900000000002
	.quad	0x3fe65ba0a5269596              # double 0.698685
	.quad	0x3f98bb4d48882f0e              # double 0.024152
	.quad	0x3fc33be22e5de15d              # double 0.15026500000000001
	.quad	0x3fe609b738e6d15b              # double 0.68868600000000002
	.quad	0x3fd15f2cb641700d              # double 0.27143400000000001
	.quad	0x3fc5bd1676640a6c              # double 0.16983300000000001
	.quad	0x3fee216a48733659              # double 0.94157900000000005
	.quad	0x3fde57ff9b56323c              # double 0.47412100000000001
	.quad	0x3fed2396073de1e3              # double 0.91059400000000001
	.quad	0x3fed89a027525461              # double 0.92305000000000004
	.quad	0x3fed1f57b41bfbdf              # double 0.910076
	.quad	0x3fa674d1633482bf              # double 0.043860000000000003
	.quad	0x3fe56f0f16f4384c              # double 0.66980700000000004
	.quad	0x3fec2cc70867ad8e              # double 0.88046599999999997
	.quad	0x3fe229068986fcdf              # double 0.56750800000000001
	.quad	0x3fdb56c93a711516              # double 0.427172
	.quad	0x3fef2617c1bda512              # double 0.97340000000000004
	.quad	0x3fe9abe27179bfdf              # double 0.80223199999999995
	.quad	0x3fd11f9f01b866e4              # double 0.26755499999999999
	.quad	0x3fe043b2dd377e1c              # double 0.50826400000000005
	.quad	0x3fe126efc371da38              # double 0.53600300000000001
	.quad	0x3f9e3a3a8e71476b              # double 0.029519
	.quad	0x3fa301c92ddbdb5e              # double 0.037123000000000003
	.quad	0x3fec16feb4a6655a              # double 0.877807
	.quad	0x3fe5870329802c0a              # double 0.67273099999999997
	.quad	0x3fc4777079e59f2c              # double 0.15989500000000001
	.quad	0x3fdcd72799a1fd15              # double 0.45063199999999998
	.quad	0x3fe718a86d71f362              # double 0.72175999999999996
	.quad	0x3fde31769a91105e              # double 0.47176899999999999
	.quad	0x3fe4a7589efd86a9              # double 0.645428
	.quad	0x3fe58b1feeb2d0a2              # double 0.67323299999999997
	.quad	0x3fb6454de7ea5f85              # double 0.086995000000000003
	.quad	0x3fde03968d759ee9              # double 0.46896900000000002
	.quad	0x3fe65d78811b1d93              # double 0.69891000000000003
	.quad	0x3fe8698fe69270b0              # double 0.76288599999999995
	.quad	0x3fda9285a921ccd9              # double 0.41519299999999998
	.quad	0x3fe6aba387592535              # double 0.70845199999999997
	.quad	0x3fdd329802c0a4a0              # double 0.45621299999999998
	.quad	0x3fe157342edbb59e              # double 0.54189500000000002
	.quad	0x3fe69e2de8709742              # double 0.70680900000000002
	.quad	0x3fee7aaac1094a2c              # double 0.95247400000000004
	.quad	0x3fd7c3e74afd5454              # double 0.371332
	.quad	0x3fdde89656eefa1e              # double 0.46732099999999999
	.quad	0x3fef4916ca46e08f              # double 0.97767199999999998
	.quad	0x3fefff3f0fe047d4              # double 0.99990800000000001
	.quad	0x3fed84ad794a6eb9              # double 0.92244599999999999
	.quad	0x3fef6dc5d6388659              # double 0.98214999999999996
	.quad	0x3fe91fcf3dc054ef              # double 0.78513299999999997
	.quad	0x3fe42187a4a48f97              # double 0.62909300000000001
	.quad	0x3fe5f318fc504817              # double 0.68592500000000001
	.quad	0x3feb1bbadc0980b2              # double 0.84713499999999997
	.quad	0x3fe6db2d4d4024b3              # double 0.71425499999999997
	.quad	0x3fbd0e66cb10342b              # double 0.113501
	.quad	0x3fef27c9de050375              # double 0.973607
	.quad	0x3fe253cbc48f10aa              # double 0.57272900000000004
	.quad	0x3fe88cdc8754f377              # double 0.76719499999999996
	.quad	0x3fe76494d50ebaae              # double 0.73102800000000001
	.quad	0x3fe1dccc89b0ee4a              # double 0.558203
	.quad	0x3fd515b9a5a89b95              # double 0.32945099999999999
	.quad	0x3fea0e6299524bfd              # double 0.81425599999999998
	.quad	0x3fdddd2ae8e1d649              # double 0.46662399999999998
	.quad	0x3fb818c5c9a34ca1              # double 0.094128000000000003
	.quad	0x3fdb8c4bd33d2956              # double 0.43043799999999999
	.quad	0x3fef1044f1a1986c              # double 0.97073600000000004
	.quad	0x3fc0b2d905c03361              # double 0.13045799999999999
	.quad	0x3fdc9c27e9531551              # double 0.44703100000000001
	.quad	0x3fe68d32830a0b1c              # double 0.70473600000000003
	.quad	0x3feab1422ccb3a26              # double 0.83413800000000005
	.quad	0x3fe2b3636f3b213e              # double 0.58439799999999997
	.quad	0x3feadf676ea4228a              # double 0.83977100000000005
	.quad	0x3fdf9fbe76c8b439              # double 0.49412499999999998
	.quad	0x3fe2bd1244a6223e              # double 0.58557999999999999
	.quad	0x3fdb9131ec0b5675              # double 0.43073699999999998
	.quad	0x3fb541d8e8640208              # double 0.083035999999999999
	.quad	0x3fe4ae685db76b3c              # double 0.64629000000000003
	.quad	0x3fdc19a415f45e0b              # double 0.43906499999999998
	.quad	0x3fc1089a02752546              # double 0.133075
	.quad	0x3feb147f13059642              # double 0.846252
	.quad	0x3fdd7570c564f97f              # double 0.46029300000000001
	.quad	0x3fc20f2389720429              # double 0.14108699999999999
	.quad	0x3fd948e4755ffe6d              # double 0.39507399999999998
	.quad	0x3fed2cadddf43c7d              # double 0.91170399999999996
	.quad	0x3fd8080f98fa3769              # double 0.37549199999999999
	.quad	0x3fbde0d66f0cfe15              # double 0.116712
	.quad	0x3fe05b7cfe586013              # double 0.51116799999999996
	.quad	0x3fd7642bf9830e3d              # double 0.36548900000000001
	.quad	0x3fd133d29563a9f4              # double 0.26878800000000003
	.quad	0x3fe565dbfceb7889              # double 0.66868399999999995
	.quad	0x3fc3dcbddb9841ab              # double 0.15517400000000001
	.quad	0x3fed1d4306e5cd4f              # double 0.90982200000000002
	.quad	0x3fb818611fd5885d              # double 0.094121999999999997
	.quad	0x3fd0f8b9baa1511e              # double 0.265181
	.quad	0x3fe90da3c21187e8              # double 0.78291500000000003
	.quad	0x3f9704790b849881              # double 0.022478000000000001
	.quad	0x3fddf75968512232              # double 0.46822200000000003
	.quad	0x3fe41ee675147f13              # double 0.628772
	.quad	0x3fb62089e34330d7              # double 0.086433999999999997
	.quad	0x3fde9270b06c43f6              # double 0.477688
	.quad	0x3fb709528f190d17              # double 0.089985999999999997
	.quad	0x3feafb6134ce3de6              # double 0.84318599999999999
	.quad	0x3fccf49491f2dc2b              # double 0.226214
	.quad	0x3fe5fb09203a322b              # double 0.686894
	.quad	0x3fe98a73f748a15a              # double 0.79815100000000005
	.quad	0x3fef741d084e831b              # double 0.98292400000000001
	.quad	0x3fd056605ee568a5              # double 0.255272
	.quad	0x3fd77739f340d4dc              # double 0.36665199999999998
	.quad	0x3fd698915bdd7668              # double 0.35306199999999999
	.quad	0x3feace5929670197              # double 0.83768900000000002
	.quad	0x3f97724fa8b4bf90              # double 0.022897000000000001
	.quad	0x3fedec15d2d01c0d              # double 0.93506900000000004
	.quad	0x3fdf32e7b3d8e001              # double 0.48748200000000003
	.quad	0x3fe84e8d972cd7cf              # double 0.75958899999999996
	.quad	0x3fe86a4228997c3d              # double 0.76297099999999995
	.quad	0x3fda6f0068db8bac              # double 0.41302499999999998
	.quad	0x3fed39170d62bf12              # double 0.913219
	.quad	0x3fc7ba5e353f7cee              # double 0.18537500000000001
	.quad	0x3fe97b95a294141f              # double 0.79633600000000004
	.quad	0x3fe64d3e0bd44999              # double 0.69692900000000002
	.quad	0x3fd98943e1006078              # double 0.399003
	.quad	0x3fe9bf67f4dbdf8f              # double 0.80461499999999997
	.quad	0x3fe4bc36113404ea              # double 0.64797499999999997
	.quad	0x3fe103a96d4c33b5              # double 0.53169699999999998
	.quad	0x3fd823fab10ba626              # double 0.37719599999999998
	.quad	0x3fda2595bbbe8790              # double 0.40854400000000002
	.quad	0x3fef2830a0b1bbcf              # double 0.97365599999999996
	.quad	0x3fe5938151a43782              # double 0.67425599999999997
	.quad	0x3fbd92fb19e731d3              # double 0.115524
	.quad	0x3fd01049235f8099              # double 0.25099399999999999
	.quad	0x3f808feac42e989a              # double 0.0080870000000000004
	.quad	0x3fb124180d3cff65              # double 0.066957000000000003
	.quad	0x3fdbe679463cfb33              # double 0.435942
	.quad	0x3fe210d38cda6e76              # double 0.564554
	.quad	0x3feb94a2b9d3cbc5              # double 0.86189400000000005
	.quad	0x3fe357689ca18bd6              # double 0.60441999999999996
	.quad	0x3fe1f562174c4ce0              # double 0.56120400000000004
	.quad	0x3fe7827525460aa6              # double 0.73467499999999997
	.quad	0x3fda5daad601ffb5              # double 0.41196700000000003
	.quad	0x3fdc2938de6ddf01              # double 0.44001600000000002
	.quad	0x3fe90769ec2ce465              # double 0.78215500000000004
	.quad	0x3fe8073de1e2de87              # double 0.750884
	.quad	0x3fee8ad256798959              # double 0.95444600000000002
	.quad	0x3fc61a1554fbdad7              # double 0.17267099999999999
	.quad	0x3fccddd6e04c0592              # double 0.22552
	.quad	0x3fe8f0307f23cc8e              # double 0.77932000000000001
	.quad	0x3fe48aaeafab53d6              # double 0.64192899999999997
	.quad	0x3fd757eaa2a0a958              # double 0.36474099999999998
	.quad	0x3fd285dfa871a3b1              # double 0.28942099999999998
	.quad	0x3feef2da122fad6d              # double 0.96714500000000003
	.quad	0x3feb176ff3ade226              # double 0.846611
	.quad	0x3fd88f3eccc46951              # double 0.383743
	.quad	0x3f9214ad362e9036              # double 0.017656999999999999
	.quad	0x3fe4bb7b6bb12902              # double 0.64788599999999996
	.quad	0x3fee2bde3fbbd7b2              # double 0.942855
	.quad	0x3fe96bc1eff9f87f              # double 0.794404
	.quad	0x3fef5173fb7a5f42              # double 0.97869300000000004
	.quad	0x3fed7dda8bd230ba              # double 0.92161300000000002
	.quad	0x3fd3fec99f1ae2da              # double 0.31242599999999998
	.quad	0x3fdfafab53d640ea              # double 0.49509700000000001
	.quad	0x3fe9c4a1f080303c              # double 0.80525299999999999
	.quad	0x3fe3f9096bb98c7e              # double 0.62414999999999998
	.quad	0x3fd8a9b8cb8e086c              # double 0.38535900000000001
	.quad	0x3fe671a3b14a9047              # double 0.701372
	.quad	0x3fb14727dcbddb98              # double 0.067491999999999996
	.quad	0x3fea5e3fbbd7b203              # double 0.82400499999999999
	.quad	0x3f8fceb78897e996              # double 0.015531
	.quad	0x3fe06c95bff04578              # double 0.51325500000000002
	.quad	0x3fec206a6e32e382              # double 0.87895699999999999
	.quad	0x3feca14cec41dd1a              # double 0.89468999999999999
	.quad	0x3fd381dc0db2702a              # double 0.30480099999999999
	.quad	0x3fd098915bdd7668              # double 0.25931199999999999
	.quad	0x3fe6df82b1f687b1              # double 0.71478399999999997
	.quad	0x3fec6b78897e9963              # double 0.88811899999999999
	.quad	0x3fd28e325d4a5df2              # double 0.28992899999999999
	.quad	0x3fb461847f562175              # double 0.079613000000000003
	.quad	0x3fe940010c6f7a0b              # double 0.78906299999999996
	.quad	0x3fe3baa582dbe7f3              # double 0.61653400000000003
	.quad	0x3fe4c96cc5fbf834              # double 0.64958800000000005
	.quad	0x3fd14b838c111ada              # double 0.27023399999999997
	.quad	0x3f96a44417870542              # double 0.022110999999999999
	.quad	0x3fd560e94ee392e2              # double 0.33404
	.quad	0x3fe6626d4801f751              # double 0.699515
	.quad	0x3fdefdb4cc250721              # double 0.48423500000000003
	.quad	0x3fdddbec2480e8c9              # double 0.46654800000000002
	.quad	0x3fdf610f0e90bc7b              # double 0.49029899999999998
	.quad	0x3f9f4906034f3fd9              # double 0.030551999999999999
	.quad	0x3fe3d9ba1b1960fa              # double 0.62032799999999999
	.quad	0x3fe26e3715400325              # double 0.57595399999999997
	.quad	0x3fdb6a161e4f7660              # double 0.42835000000000001
	.quad	0x3fc7a2d72ffd1dcd              # double 0.18465699999999999
	.quad	0x3fed390a7829068a              # double 0.91321300000000005
	.quad	0x3feb24bba12b5e53              # double 0.84823400000000004
	.quad	0x3fa18611fd5885d3              # double 0.034225999999999999
	.quad	0x3fe3f6b7ed41b75a              # double 0.62386699999999995
	.quad	0x3fd42dcb1465e892              # double 0.31529499999999999
	.quad	0x3fc000b029281776              # double 0.12502099999999999
	.quad	0x3fb4b039ef0f16f4              # double 0.080813999999999997
	.quad	0x3fc295d91ab8e8ea              # double 0.14519799999999999
	.quad	0x3fd18d5842b734b5              # double 0.274252
	.quad	0x3fc89f83be6601bd              # double 0.19236800000000001
	.quad	0x3fe97f7164c729f6              # double 0.79680700000000004
	.quad	0x3fd6539756c93a71              # double 0.348852
	.quad	0x3feb918e325d4a5e              # double 0.86151800000000001
	.quad	0x3fe1b5fe542e557e              # double 0.55346600000000001
	.quad	0x3fe63a12b5e529bb              # double 0.69458900000000001
	.quad	0x3feaf4be835dedf2              # double 0.84237600000000001
	.quad	0x3f90c0ad03d9a954              # double 0.01636
	.quad	0x3fedb71fbc5de9c0              # double 0.92860399999999998
	.quad	0x3fe15bf6a0dbad3a              # double 0.54247599999999996
	.quad	0x3fe68d08919ef955              # double 0.70471600000000001
	.quad	0x3fd80dd3fe1975f3              # double 0.37584400000000001
	.quad	0x3fd422c881e4712e              # double 0.31462299999999999
	.quad	0x3fd62007dd441355              # double 0.34570499999999998
	.quad	0x3fe32c7b890d5a5c              # double 0.59918000000000005
	.quad	0x3f88f81e8a2ec28b              # double 0.012192
	.quad	0x3fbd1ba3ca7503b8              # double 0.113703
	.quad	0x3fe87a15db3397dd              # double 0.764903
	.quad	0x3fe817225b749add              # double 0.75282400000000005
	.quad	0x3fe4716f4384ba0f              # double 0.63884700000000005
	.quad	0x3fe0e4d7f0ed3d86              # double 0.52793500000000004
	.quad	0x3fe2b5b2d4d4024b              # double 0.58467999999999998
	.quad	0x3fc24a16a4873366              # double 0.14288600000000001
	.quad	0x3fceaa6d26740810              # double 0.23957600000000001
	.quad	0x3fd3c86cebbba55d              # double 0.30910799999999999
	.quad	0x3fe49c6088d6d3b7              # double 0.64408900000000002
	.quad	0x3fe11c193b3a68b2              # double 0.53468000000000004
	.quad	0x3fe3e2e90364388f              # double 0.62144900000000003
	.quad	0x3fe0939a7c17a893              # double 0.51801799999999998
	.quad	0x3fe55b0bbf50e347              # double 0.66736399999999996
	.quad	0x3fe25b7f1737542a              # double 0.57366899999999998
	.quad	0x3fef526fa3fcc9eb              # double 0.97881300000000004
	.quad	0x3febce52deca2553              # double 0.86893600000000004
	.quad	0x3feca374794ea077              # double 0.894953
	.quad	0x3fd5801711947cfa              # double 0.33594299999999999
	.quad	0x3fe7ceb9a176ddad              # double 0.74398500000000001
	.quad	0x3fe872239e6ab9b2              # double 0.76393299999999997
	.quad	0x3fe0a9fbe76c8b44              # double 0.52075000000000005
	.quad	0x3fd0f487fcb923a3              # double 0.26492500000000002
	.quad	0x3fefc5fbf83382e4              # double 0.99291799999999996
	.quad	0x3fef0abf76a2f48c              # double 0.97006199999999997
	.quad	0x3fad8a5482385404              # double 0.057695999999999997
	.quad	0x3fb6052502eec7c9              # double 0.086015999999999995
	.quad	0x3fe19b9d7fd82774              # double 0.55024600000000001
	.quad	0x3fbd5347a5b0ff11              # double 0.114552
	.quad	0x3fe75fb506dd69d3              # double 0.730433
	.quad	0x3fc99285a921ccd9              # double 0.19978399999999999
	.quad	0x3fe54588a04d1202              # double 0.66473800000000005
	.quad	0x3fe0aeec7c957cd4              # double 0.52135299999999996
	.quad	0x3fe95e54b48d3ae7              # double 0.79276500000000005
	.quad	0x3fe2b93ee5eedcc2              # double 0.58511299999999999
	.quad	0x3fdc428d434a01ac              # double 0.44156200000000001
	.quad	0x3fe72172abef06b3              # double 0.72283299999999995
	.quad	0x3fe9059a73b42cc3              # double 0.78193400000000002
	.quad	0x3fe4a98aa8650e78              # double 0.64569600000000005
	.quad	0x3fe69a7c17a89332              # double 0.70635800000000004
	.quad	0x3fe4519bd4067cf2              # double 0.63496200000000003
	.quad	0x3fe5279357603926              # double 0.66108100000000003
	.quad	0x3fd5cfb762d83c6d              # double 0.34080300000000002
	.quad	0x3fdf4840e1719f80              # double 0.48878500000000003
	.quad	0x3fb9c2e33eff1950              # double 0.10063
	.quad	0x3fcb9c51dabe2718              # double 0.21570800000000001
	.quad	0x3f91fc8f32378ab1              # double 0.017565000000000001
	.quad	0x3fe71988d2a1f8e4              # double 0.72186700000000004
	.quad	0x3fdbb499d0203e64              # double 0.43289800000000001
	.quad	0x3fdf0a84be40420f              # double 0.48501699999999998
	.quad	0x3fec38305d95dd4c              # double 0.88185899999999994
	.quad	0x3fd6131ec0b56755              # double 0.34491699999999997
	.quad	0x3fe999ed7c6fbd27              # double 0.80003999999999997
	.quad	0x3fc10be0ded288ce              # double 0.13317499999999999
	.quad	0x3fe83b01c92ddbdb              # double 0.75720299999999996
	.quad	0x3fd8312f4cf4a559              # double 0.378002
	.quad	0x3f64e7ee9142b303              # double 0.002552
	.quad	0x3fcae10cf5b1c865              # double 0.20999300000000001
	.quad	0x3fe32aed1394317b              # double 0.59899000000000002
	.quad	0x3f498f1d3ed527e5              # double 7.7999999999999999E-4
	.quad	0x3feb46950fc71d60              # double 0.85236599999999995
	.quad	0x3fd43b85e80bed74              # double 0.316133
	.quad	0x3fee9c1f85d744f6              # double 0.95655800000000002
	.quad	0x3fd360b6f9fcb0c0              # double 0.30277799999999999
	.quad	0x3fe849795b35b0bc              # double 0.758969
	.quad	0x3fdd8427418d690a              # double 0.46119100000000002
	.quad	0x3faea78af3e468cb              # double 0.059872000000000002
	.quad	0x3fd527525460aa65              # double 0.33052500000000001
	.quad	0x3fe4b899392189be              # double 0.64753400000000005
	.quad	0x3fe88242d05f2885              # double 0.76590100000000005
	.quad	0x3fec72ef0ae53650              # double 0.88902999999999999
	.quad	0x3fd544284dfce315              # double 0.332285
	.quad	0x3fec409e55c0fcb5              # double 0.88288800000000001
	.quad	0x3fd7abf338716095              # double 0.36986999999999998
	.quad	0x3fdc690de093532e              # double 0.44391199999999997
	.quad	0x3fe582278d0cc35d              # double 0.67213800000000001
	.quad	0x3fc5ce95faa8a82a              # double 0.17036699999999999
	.quad	0x3f5d2178f68be2f8              # double 0.0017780000000000001
	.quad	0x3fe72606fac6045c              # double 0.72339200000000003
	.quad	0x3fe5de3da2f8bdec              # double 0.68337899999999996
	.quad	0x3fdbc11e42e12620              # double 0.43366199999999999
	.quad	0x3fd41cf7878b7a1c              # double 0.31426799999999999
	.quad	0x3fe32c061847f562              # double 0.59912399999999999
	.quad	0x3fd56a012599ed7c              # double 0.33459499999999998
	.quad	0x3fc4149c6f36ef80              # double 0.15687899999999999
	.quad	0x3fe10d25edd05293              # double 0.53285499999999997
	.quad	0x3fe843f811f4f50a              # double 0.758297
	.quad	0x3fac8bc9cd3e0bd4              # double 0.055753999999999998
	.quad	0x3fd0f69014b599aa              # double 0.26504899999999998
	.quad	0x3fe61a261bf37b8d              # double 0.69069199999999997
	.quad	0x3fd693a2df9378ee              # double 0.35276099999999999
	.quad	0x3fee5b877ab32485              # double 0.94867299999999999
	.quad	0x3fa812be48a58b3f              # double 0.047017999999999997
	.quad	0x3febbf8982cb20fb              # double 0.86713099999999999
	.quad	0x3fe6efc58ab92c06              # double 0.71676899999999999
	.quad	0x3fdfb5525cc42635              # double 0.49544199999999999
	.quad	0x3fde4738a3b57c4e              # double 0.47309699999999999
	.quad	0x3fdc53198288051d              # double 0.44257200000000002
	.quad	0x3fe6ff151e75360d              # double 0.718638
	.quad	0x3feba3d2d87f8876              # double 0.86374799999999996
	.quad	0x3fbe131a8ef77f28              # double 0.117479
	.quad	0x3fe39aa3f034b0e2              # double 0.61262700000000003
	.quad	0x3f966a11ec918e32              # double 0.021888999999999999
	.quad	0x3fbb3d07c84b5dcc              # double 0.10639999999999999
	.quad	0x3fe35b4aa9717df2              # double 0.60489400000000004
	.quad	0x3fdb156191148fda              # double 0.42318
	.quad	0x3fded6cf850df15a              # double 0.48186099999999998
	.quad	0x3fdf1a75cd0bb6ed              # double 0.48598999999999998
	.quad	0x3fd2e892253111f1              # double 0.29544500000000001
	.quad	0x3f97d955714b9cb7              # double 0.023290000000000002
	.quad	0x3fbf96af038e29fa              # double 0.123393
	.quad	0x3fdebdbe3c105187              # double 0.48033100000000001
	.quad	0x3fbeb76709fa54c5              # double 0.119986
	.quad	0x3fe181a79fec99f2              # double 0.54707700000000004
	.quad	0x3faf225b749adc90              # double 0.060809000000000002
	.quad	0x3fe9bdddb1209edc              # double 0.804427
	.quad	0x3fc332df505d0fa6              # double 0.14999000000000001
	.quad	0x3febe78e1932d6ed              # double 0.87201600000000001
	.quad	0x3fe731422ccb3a26              # double 0.72476300000000005
	.quad	0x3fb548fd9fd36f7e              # double 0.083144999999999996
	.quad	0x3fd5846e8f29d40f              # double 0.33620800000000001
	.quad	0x3fed292e62131a8f              # double 0.911277
	.quad	0x3fc1f4c2b51bd61f              # double 0.14028199999999999
	.quad	0x3fd48aa00192a737              # double 0.320961
	.quad	0x3fdd199780baa583              # double 0.45468700000000001
	.quad	0x3fe736672fba01ef              # double 0.72539100000000001
	.quad	0x3fbc470a808c825a              # double 0.110459
	.quad	0x3fdeed2cbea4ebdd              # double 0.48322599999999999
	.quad	0x3fdd107746887a8d              # double 0.45412999999999998
	.quad	0x3fec75f4e4430b18              # double 0.88939900000000005
	.quad	0x3fde550ca1cef241              # double 0.473941
	.quad	0x3fe97c0f45176146              # double 0.79639400000000005
	.quad	0x3fb9aab474107315              # double 0.100261
	.quad	0x3fd32a5a469d7343              # double 0.29946
	.quad	0x3fb41355475a31a5              # double 0.078420000000000004
	.quad	0x3fe0610060780fdc              # double 0.51184099999999999
	.quad	0x3fdef57f737da61e              # double 0.483734
	.quad	0x3fed36ed6777079e              # double 0.91295499999999996
	.quad	0x3fc17ef5a964e8b8              # double 0.136687
	.quad	0x3fe3ca07f66e86c6              # double 0.61841199999999996
	.quad	0x3fd01737542a23c0              # double 0.251417
	.quad	0x3fb962bf11f926c8              # double 0.099163000000000001
	.quad	0x3fe4a29a5ebb773a              # double 0.64484900000000001
	.quad	0x3fe412d3415b1423              # double 0.62729800000000002
	.quad	0x3fca1e8a2ec28b2a              # double 0.20405699999999999
	.quad	0x3fe105c67dfe32a0              # double 0.53195499999999996
	.quad	0x3feb5bf26f1dc50d              # double 0.85497400000000001
	.quad	0x3fd19003eea209ab              # double 0.27441500000000002
	.quad	0x3f9af5771001d5c3              # double 0.026327
	.quad	0x3fec28869c66d374              # double 0.87994700000000003
	.quad	0x3fe05703f2d3c793              # double 0.51062200000000002
	.quad	0x3fdd07af20ea5b53              # double 0.453594
	.quad	0x3feff4128bf3bea9              # double 0.99854399999999998
	.quad	0x3fc751ce28ed5f14              # double 0.18218400000000001
	.quad	0x3fbbfda4052d666b              # double 0.10933900000000001
	.quad	0x3fc376ff3ade2260              # double 0.15206900000000001
	.quad	0x3fe4fdd00f776c48              # double 0.65598299999999998
	.quad	0x3fc83d4f15e7c8d2              # double 0.18937100000000001
	.quad	0x3fd61b4fe79ee02a              # double 0.34541699999999997
	.quad	0x3fefa0fb224aada3              # double 0.98840099999999997
	.quad	0x3fde47b677f6b1a3              # double 0.47312700000000002
	.quad	0x3fc32c7b890d5a5c              # double 0.14979500000000001
	.quad	0x3fca90257c914b16              # double 0.20752399999999999
	.quad	0x3fd9bf5946c332f0              # double 0.40230399999999999
	.quad	0x3fdc85d31337eb29              # double 0.44566800000000001
	.quad	0x3fe89945b6c3760c              # double 0.76871
	.quad	0x3fb7d1cc100e6afd              # double 0.093045000000000003
	.quad	0x3fabff47735c182f              # double 0.054682000000000001
	.quad	0x3feeaff8ec0f8833              # double 0.95898099999999997
	.quad	0x3fe61539b888722a              # double 0.69009100000000001
	.quad	0x3feaeba0620ab713              # double 0.84126299999999998
	.quad	0x3fece13f4a98aa86              # double 0.90249599999999996
	.quad	0x3fef1f1ae2da554c              # double 0.97254700000000005
	.quad	0x3feed2630ec31162              # double 0.96318199999999998
	.quad	0x3fd0d87724fa8b4c              # double 0.263212
	.quad	0x3fbec460ed80a17b              # double 0.120184
	.quad	0x3fa609bb6aa4b988              # double 0.043042999999999998
	.quad	0x3fe34fa48301a7a0              # double 0.60347200000000001
	.quad	0x3f943393ab430f49              # double 0.019727999999999999
	.quad	0x3fe5048beb5b2d4d              # double 0.65680499999999997
	.quad	0x3fe5972ef0ae5365              # double 0.674705
	.quad	0x3fa366516db0dd83              # double 0.03789
	.quad	0x3fe92450acc0bdcb              # double 0.78568300000000002
	.quad	0x3fbc6fac6045baf5              # double 0.111079
	.quad	0x3fd1fec99f1ae2da              # double 0.28117599999999998
	.quad	0x3fe3912fd32c625f              # double 0.61147300000000004
	.quad	0x3fcbec02f2f98740              # double 0.21814
	.quad	0x3fe98baa582dbe7f              # double 0.79829899999999998
	.quad	0x3fc2ae85b9e8c47a              # double 0.145951
	.quad	0x3fb170c564f97edc              # double 0.068126999999999993
	.quad	0x3fa8941c8216c615              # double 0.048004999999999999
	.quad	0x3fd978ab0c88a47f              # double 0.39799000000000001
	.quad	0x3fdf15ce9e5e2479              # double 0.48570600000000003
	.quad	0x3fe1be4abe6a337b              # double 0.55447900000000006
	.quad	0x3fd4787ce95faa8b              # double 0.31985400000000003
	.quad	0x3fe322a0a958537e              # double 0.59797699999999998
	.quad	0x3fecd75c0767d34e              # double 0.90128900000000001
	.quad	0x3f9935b91f70de8f              # double 0.024618999999999999
	.quad	0x3fa6b05319828805              # double 0.044313999999999999
	.quad	0x3fd9fe1da7b0b392              # double 0.40613500000000002
	.quad	0x3fb14046412cf0fa              # double 0.067387000000000002
	.quad	0x3fde377e1b8ed1bf              # double 0.47213699999999997
	.quad	0x3fea3b7952d234ec              # double 0.81976000000000004
	.quad	0x3fb8a9cdc443914f              # double 0.096340999999999996
	.quad	0x3fe3cb3c3e74afd5              # double 0.61855899999999997
	.quad	0x3fd976709fa54c55              # double 0.39785399999999999
	.quad	0x3fe01ef30a4e379b              # double 0.50377799999999995
	.quad	0x3fdc7fd82773e250              # double 0.445303
	.quad	0x3fd561b6d43d0397              # double 0.33408900000000002
	.quad	0x3fe7f61aa3f034b1              # double 0.74879200000000001
	.quad	0x3fc1ff9b56323bbc              # double 0.14061299999999999
	.quad	0x3fec9b5c7cd898b3              # double 0.89396500000000001
	.quad	0x3fea77985271bcdc              # double 0.82709900000000002
	.quad	0x3fd2be4cd7492791              # double 0.29286499999999999
	.quad	0x3fe400cf9e3864cb              # double 0.62509899999999996
	.quad	0x3fc8eeb702602c91              # double 0.19478500000000001
	.quad	0x3fed4d8dbcec84f9              # double 0.915717
	.quad	0x3fcf791819d2391d              # double 0.24588299999999999
	.quad	0x3fd74da09cc319c6              # double 0.36411300000000002
	.quad	0x3fe3bcf70153bd16              # double 0.61681699999999995
	.quad	0x3fe4775104d551d7              # double 0.63956500000000005
	.quad	0x3fc58476f2a5a46a              # double 0.168105
	.quad	0x3fdf2ab68cef672c              # double 0.48698200000000003
	.quad	0x3fec50225742dcf4              # double 0.88478199999999995
	.quad	0x3fde5d80e496edee              # double 0.47445700000000002
	.quad	0x3fef94488c60cbf3              # double 0.98685100000000003
	.quad	0x3fdd54fbdad7518b              # double 0.458312
	.quad	0x3fe7b517a46173b8              # double 0.74085599999999996
	.quad	0x3fe222749f0e4da1              # double 0.56670600000000004
	.quad	0x3fe455ef1fddebd9              # double 0.63549
	.quad	0x3fcd2f7f498c3b0c              # double 0.22801199999999999
	.quad	0x3fe6e85553ef6b5d              # double 0.71586099999999997
	.quad	0x3fc019eb6390c910              # double 0.12579099999999999
	.quad	0x3fc26cca2db61bb0              # double 0.14394499999999999
	.quad	0x3fb5c2d27807789a              # double 0.085003999999999996
	.quad	0x3fecc449dbec2481              # double 0.89896100000000001
	.quad	0x3fdb755ffe6d58c9              # double 0.429039
	.quad	0x3fc25aff2a172abf              # double 0.143402
	.quad	0x3fd6fdc1615ebfa9              # double 0.359238
	.quad	0x3fe11e75360d0247              # double 0.534968
	.quad	0x3fe20b1feeb2d0a2              # double 0.56385799999999997
	.quad	0x3fe95f00abf76a2f              # double 0.79284699999999997
	.quad	0x3fc023af31b152f4              # double 0.12608900000000001
	.quad	0x3febd0a45d41fa76              # double 0.86921899999999996
	.quad	0x3fdc5d95dd4c76d1              # double 0.44321199999999999
	.quad	0x3fe7c3504c48adef              # double 0.74259200000000003
	.quad	0x3fe60bd44998d046              # double 0.688944
	.quad	0x3fd2d0b30b5aa716              # double 0.29398800000000003
	.quad	0x3fcdb57c4e2f37fc              # double 0.232101
	.quad	0x3fe745cfede97d07              # double 0.72727200000000003
	.quad	0x3fe9a098915bdd76              # double 0.80085399999999995
	.quad	0x3fda38b47c73eee5              # double 0.40971099999999999
	.quad	0x3fe335e310dbf056              # double 0.60032799999999997
	.quad	0x3fdd52da98676a72              # double 0.45818199999999998
	.quad	0x3feee1dc93ea2d30              # double 0.96507100000000001
	.quad	0x3f8cbccf28c79f66              # double 0.014031999999999999
	.quad	0x3fc42a66dbd72bcb              # double 0.15754399999999999
	.quad	0x3fe4af1455219a84              # double 0.64637199999999995
	.quad	0x3fd9f99806f26289              # double 0.40585900000000003
	.quad	0x3fabbe878fabda0e              # double 0.054188
	.quad	0x3fdef7e3d1cc100e              # double 0.48387999999999998
	.quad	0x3fe86e6fb4c3c18b              # double 0.76348099999999997
	.quad	0x3fcaaf5771001d5c              # double 0.20847599999999999
	.quad	0x3fe44b09e98dcdb3              # double 0.63415999999999995
	.quad	0x3fea4230fcf80dc3              # double 0.82057999999999998
	.quad	0x3fedc894c447c30d              # double 0.93073499999999998
	.quad	0x3fbef4be835dedf2              # double 0.120922
	.quad	0x3fe9d48a9bcfd4bf              # double 0.807195
	.quad	0x3fe8dcd91eeaa6d2              # double 0.77695899999999996
	.quad	0x3fce6a98244e93e2              # double 0.23762800000000001
	.quad	0x3fc527c393682731              # double 0.16527600000000001
	.quad	0x3fef1d084e831ad2              # double 0.97229399999999999
	.quad	0x3fe4fef9db22d0e5              # double 0.65612499999999996
	.quad	0x3fe593b3a68b19a4              # double 0.67427999999999999
	.quad	0x3fe5034091c08744              # double 0.65664699999999998
	.quad	0x3fe2c6ef3d3a1d32              # double 0.58678399999999997
	.quad	0x3fcc68a936c58eeb              # double 0.221944
	.quad	0x3fe3fad6cb535009              # double 0.62436999999999998
	.quad	0x3fdd4fe36d22424a              # double 0.45800099999999999
	.quad	0x3febdda8bd230b9e              # double 0.87080800000000003
	.quad	0x3fd2ec41dd1a21ea              # double 0.29566999999999999
	.quad	0x3feb88fa7a85015c              # double 0.86047099999999998
	.quad	0x3f6d57ff9b56323c              # double 0.0035820000000000001
	.quad	0x3fc4265f0f5a1017              # double 0.15742100000000001
	.quad	0x3fc6862f5989df11              # double 0.17596999999999999
	.quad	0x3fccb9991361dc94              # double 0.224414
	.quad	0x3feb151611ba3ca7              # double 0.84632399999999997
	.quad	0x3fc2529bae46cfc8              # double 0.143146
	.quad	0x3fe2ee06d938151a              # double 0.59155599999999997
	.quad	0x3fd7cefed634549b              # double 0.37200899999999998
	.quad	0x3fdcdf6db940fece              # double 0.45113700000000001
	.quad	0x3fdb18e757928e0d              # double 0.42339500000000002
	.quad	0x3fe8a68f4b61fe22              # double 0.77033200000000002
	.quad	0x3fb8a7b4e54f7a92              # double 0.096309000000000005
	.quad	0x3fe379ebe9c88616              # double 0.60863299999999998
	.quad	0x3fccb220791c4b90              # double 0.224186
	.quad	0x3febc996b76709fa              # double 0.86835799999999996
	.quad	0x3fa7cb4f1e4b44a2              # double 0.046473
	.quad	0x3fcd4117f84449dc              # double 0.228549
	.quad	0x3fd74ad362e90364              # double 0.36394199999999999
	.quad	0x3f733b107746887b              # double 0.0046950000000000004
	.quad	0x3fee045fe1112770              # double 0.93803400000000003
	.quad	0x3fcaeb9a176ddacf              # double 0.210315
	.quad	0x3fe78db48909289e              # double 0.73604800000000004
	.quad	0x3fe98364388ebcc7              # double 0.79728900000000003
	.quad	0x3fbea27f1b691212              # double 0.119667
	.quad	0x3fd72b3461309c80              # double 0.362012
	.quad	0x3feb55bab21815a0              # double 0.85421499999999994
	.quad	0x3fdf0a6b93ccd0ff              # double 0.48501100000000003
	.quad	0x3fc1acd5b6805a2d              # double 0.13808699999999999
	.quad	0x3fe84488c60cbf2b              # double 0.75836599999999998
	.quad	0x3fed70153bd16766              # double 0.91993199999999997
	.quad	0x3fd117ca2120e1f8              # double 0.26707700000000001
	.quad	0x3feb2af1455219a8              # double 0.84899199999999997
	.quad	0x3fe38216c61522a7              # double 0.60963000000000001
	.quad	0x3fe3e9ab29e4d5d8              # double 0.62227399999999999
	.quad	0x3fe2394face67d78              # double 0.569496
	.quad	0x3fec14467381d7dc              # double 0.877475
	.quad	0x3feb938151a43782              # double 0.86175599999999997
	.quad	0x3fe3573215fcc187              # double 0.60439399999999999
	.quad	0x3f5737542a23bff9              # double 0.0014170000000000001
	.quad	0x3feca7631b584b1b              # double 0.89543300000000003
	.quad	0x3fdb9dba908a265f              # double 0.431502
	.quad	0x3fd0e9899bf5946c              # double 0.26425399999999999
	.quad	0x3fd0b6c7a7c9de05              # double 0.261156
	.quad	0x3fd3946c332f0175              # double 0.30593399999999998
	.quad	0x3fec041ede1198af              # double 0.87550300000000003
	.quad	0x3fdda5c5f7c6759b              # double 0.46324300000000002
	.quad	0x3fe7d36501e2584f              # double 0.74455499999999997
	.quad	0x3fd6e59f2ba9d1f6              # double 0.357765
	.quad	0x3fb4101f31f46ed2              # double 0.078370999999999996
	.quad	0x3fe34aff6d330942              # double 0.60290500000000002
	.quad	0x3fd8b07075b3e143              # double 0.38576899999999997
	.quad	0x3fc2eb9a176ddacf              # double 0.147815
	.quad	0x3fe48cb07d0aed9a              # double 0.64217400000000002
	.quad	0x3fe45b61bb05faec              # double 0.63615500000000003
	.quad	0x3fbcef1348b22079              # double 0.113023
	.quad	0x3fd7e9c886162f16              # double 0.37364399999999998
	.quad	0x3fea5e33269df97b              # double 0.82399900000000004
	.quad	0x3fcb28f9f44d4456              # double 0.21218799999999999
	.quad	0x3feb6c61522a6f3f              # double 0.85697999999999996
	.quad	0x3fd56b441bb8c32b              # double 0.33467200000000003
	.quad	0x3f9b4b72c5197a25              # double 0.026655000000000002
	.quad	0x3fe1f2c7325918a0              # double 0.560886
	.quad	0x3fe087a28bb0a2cb              # double 0.51655700000000004
	.quad	0x3fe8ca5bd944aa54              # double 0.774702
	.quad	0x3fe67ebf22c01e69              # double 0.70297200000000004
	.quad	0x3fe93b85e80bed74              # double 0.78851599999999999
	.quad	0x3fe3ff3f0fe047d4              # double 0.62490800000000002
	.quad	0x3fc90acc0bdcad15              # double 0.19564200000000001
	.quad	0x3fee9435ac8a3726              # double 0.955592
	.quad	0x3fea33d4ae429e0a              # double 0.81882699999999997
	.quad	0x3fe085be1a826245              # double 0.51632599999999995
	.quad	0x3fefd6de33269df9              # double 0.99497899999999994
	.quad	0x3fea21af7d30ad47              # double 0.816612
	.quad	0x3fdb1b71758e2196              # double 0.42354999999999998
	.quad	0x3fe71129888f861a              # double 0.72084499999999996
	.quad	0x3fe590cf5b1c8649              # double 0.67392700000000005
	.quad	0x3fd653d640e9d51b              # double 0.34886699999999998
	.quad	0x3fe3798958d9b5e9              # double 0.60858599999999996
	.quad	0x3fdbe1049235f80a              # double 0.43560900000000002
	.quad	0x3fdc0f733a8a3f8a              # double 0.43844300000000003
	.quad	0x3fe9a730c67168f9              # double 0.80165900000000001
	.quad	0x3fc20a0f4d7add16              # double 0.140932
	.quad	0x3fdd12e40852b4d9              # double 0.45427800000000002
	.quad	0x3fb845dc8323358f              # double 0.094815999999999998
	.quad	0x3fdd0b84988094e6              # double 0.45382800000000001
	.quad	0x3fddf359ff4fd6d8              # double 0.46797800000000001
	.quad	0x3fd7e36d22424a27              # double 0.37325599999999998
	.quad	0x3f31d3671ac14c66              # double 2.72E-4
	.quad	0x3fc252b4d8ba40d9              # double 0.143149
	.quad	0x3fcabfec13b9f128              # double 0.208982
	.quad	0x3fd90ced4e4c942d              # double 0.39141399999999998
	.quad	0x3fe25490e66cb103              # double 0.57282299999999997
	.quad	0x3fdc465e89225311              # double 0.44179499999999999
	.quad	0x3fdc180d3cff64d0              # double 0.43896800000000002
	.quad	0x3fe7aba16e7a311f              # double 0.73970100000000005
	.quad	0x3fce4cf0739b024f              # double 0.23672299999999999
	.quad	0x3fc0e12e83a109d0              # double 0.13187199999999999
	.quad	0x3fda94317acc4ef9              # double 0.41529500000000003
	.quad	0x3fd44d72799a1fd1              # double 0.31722699999999998
	.quad	0x3fc0b7e4de3b8a1a              # double 0.13061200000000001
	.quad	0x3fe526a444178705              # double 0.66096699999999997
	.quad	0x3fd7938de6ddf00b              # double 0.36838100000000001
	.quad	0x3fedeee73e681a9c              # double 0.93541300000000004
	.quad	0x3fea71a3b14a9047              # double 0.826372
	.quad	0x3feaca686e7e62dc              # double 0.83720799999999995
	.quad	0x3fe150870110a138              # double 0.54108000000000001
	.quad	0x3fe180389f83be66              # double 0.546902
	.quad	0x3fab4b0e1b4bb5e1              # double 0.053307
	.quad	0x3fbacbea4ebdd335              # double 0.104674
	.quad	0x3fe265c4eb56fb8f              # double 0.57492299999999996
	.quad	0x3fed4185058dde7a              # double 0.91424799999999995
	.quad	0x3fa3b0813cab81f9              # double 0.038455999999999997
	.quad	0x3fe4f8e9f6a93f29              # double 0.655385
	.quad	0x3fe8137d1fe64f55              # double 0.75237900000000002
	.quad	0x3fb235e74299d884              # double 0.071135000000000004
	.quad	0x3fcb92189bd8383b              # double 0.215396
	.quad	0x3f5c2e33eff19503              # double 0.00172
	.quad	0x3feca730c67168f9              # double 0.89540900000000001
	.quad	0x3feb480e8c8abd5e              # double 0.85254600000000003
	.quad	0x3fee0893b7d84902              # double 0.93854700000000002
	.quad	0x3feb681ecd4aa10e              # double 0.85646
	.quad	0x3feccc964628027e              # double 0.89997400000000005
	.quad	0x3fd95aff2a172abf              # double 0.396179
	.quad	0x3faf5a5332acfb76              # double 0.061235999999999999
	.quad	0x3fec22ca9ac36545              # double 0.879247
	.quad	0x3fea74d7add15f03              # double 0.82676300000000003
	.quad	0x3fa4abe6a337a80d              # double 0.040374
	.quad	0x3fe22917507e9d95              # double 0.56751600000000002
	.quad	0x3fd6b0d51f81a587              # double 0.354543
	.quad	0x3feb27dcbddb9842              # double 0.84861600000000004
	.quad	0x3fd09806f262888b              # double 0.25927899999999998
	.quad	0x3fb0b5350092ccf7              # double 0.065265000000000004
	.quad	0x3feafe08aefb2aae              # double 0.84350999999999998
	.quad	0x3fe31af7d30ad46f              # double 0.59704199999999996
	.quad	0x3fce8b86b15f88fd              # double 0.23863300000000001
	.quad	0x3fd7fd8adab9f55a              # double 0.37485000000000002
	.quad	0x3fe23a2df9378ee3              # double 0.56960200000000005
	.quad	0x3fc7e4de3b8a19ca              # double 0.186672
	.quad	0x3fee5ca29845dc83              # double 0.94880799999999998
	.quad	0x3fe7d109070fbeba              # double 0.74426700000000001
	.quad	0x3f9e76427c7c5261              # double 0.029748
	.quad	0x3fe3b9c7368ad688              # double 0.61642799999999998
	.quad	0x3fd0967caea747d8              # double 0.259185
	.quad	0x3feeeaf6837f7be1              # double 0.96618199999999998
	.quad	0x3fba4af0bf1a5ca3              # double 0.10270600000000001
	.quad	0x3fea197e56473472              # double 0.815612
	.quad	0x3fdcc158fb43d89d              # double 0.44930100000000001
	.quad	0x3fe25f30e7ff583a              # double 0.57411999999999996
	.quad	0x3fe6c7f349385836              # double 0.71190799999999999
	.quad	0x3fe5b738e6d15ad1              # double 0.678616
	.quad	0x3fee4102ff8ec0f9              # double 0.94543600000000005
	.quad	0x3fe9a7418d6909af              # double 0.80166700000000002
	.quad	0x3fd82949a5657fb7              # double 0.37752000000000002
	.quad	0x3fed00d801b43526              # double 0.90635299999999996
	.quad	0x3fca496ededaec4a              # double 0.20536599999999999
	.quad	0x3fe6bdee78183f92              # double 0.71068500000000001
	.quad	0x3fec21016ce789e7              # double 0.87902899999999995
	.quad	0x3fe670b49e01de27              # double 0.70125800000000005
	.quad	0x3fde85fd04a2fcf0              # double 0.47692800000000002
	.quad	0x3fc21e4712e40853              # double 0.14154900000000001
	.quad	0x3fe756861e92923e              # double 0.72931199999999996
	.quad	0x3fe73cc4ac6cdaf5              # double 0.72616800000000004
	.quad	0x3febe1049235f80a              # double 0.87121800000000005
	.quad	0x3fdc6d655e28aa43              # double 0.44417699999999999
	.quad	0x3f7c5d63886594af              # double 0.0069249999999999997
	.quad	0x3fe9f1bcdbbe0158              # double 0.81075900000000001
	.quad	0x3fe81572580c3090              # double 0.75261800000000001
	.quad	0x3fc9e0e736049ecb              # double 0.20217599999999999
	.quad	0x3fe9ffb69984a0e4              # double 0.81246499999999999
	.quad	0x3fdbe0221426fe72              # double 0.43555500000000003
	.quad	0x3fefdfb2edfe75bc              # double 0.99605699999999997
	.quad	0x3f87164c729f59cd              # double 0.011273
	.quad	0x3fec61b6d43d0397              # double 0.88692800000000005
	.quad	0x3fe2e9f05ea24cc7              # double 0.59105700000000005
	.quad	0x3fe22176ddaceee1              # double 0.56658500000000001
	.quad	0x3febb1897a67a52b              # double 0.86542200000000002
	.quad	0x3feda4e160d887ec              # double 0.926377
	.quad	0x3fe412b1b36bd2b7              # double 0.62728200000000001
	.quad	0x3f5897a67a52ac75              # double 0.0015009999999999999
	.quad	0x3fe75f2452c59fb2              # double 0.73036400000000001
	.quad	0x3fd1d65a14488c61              # double 0.27870800000000001
	.quad	0x3fd88a3f8982cb21              # double 0.383438
	.quad	0x3faf496aad1d041d              # double 0.061107000000000002
	.quad	0x3fe6dabe27179bfe              # double 0.714202
	.quad	0x3fe59335d249e450              # double 0.67422000000000004
	.quad	0x3fd55f06f6944674              # double 0.33392500000000003
	.quad	0x3fe306fac6045baf              # double 0.59460199999999996
	.quad	0x3fe4bb4b2fa93af7              # double 0.64786299999999997
	.quad	0x3feb91dbca9691a7              # double 0.86155499999999996
	.quad	0x3fd91b8ed1bf7ad5              # double 0.39230700000000002
	.quad	0x3fd8d46f587d6f97              # double 0.38796599999999998
	.quad	0x3fec4069e7fb267c              # double 0.88286299999999995
	.quad	0x3fdf17fc7607c41a              # double 0.48583900000000002
	.quad	0x3fccfdb09a671ef3              # double 0.226492
	.quad	0x3fda296b3354c122              # double 0.40877799999999997
	.quad	0x3fd0446f9b994e1a              # double 0.25417699999999999
	.quad	0x3fe50d66f0cfe154              # double 0.65788599999999997
	.quad	0x3fdde0ded288ce70              # double 0.46684999999999999
	.quad	0x3fe18ed3d859c8c9              # double 0.54868499999999998
	.quad	0x3fbe65add9c27e95              # double 0.118739
	.quad	0x3fe402f0e0a84be4              # double 0.625359
	.quad	0x3fd2a1f4b1ee2435              # double 0.29113499999999998
	.quad	0x3fd60c9539b88872              # double 0.34451799999999999
	.quad	0x3fdba94ff0025bfb              # double 0.43220900000000001
	.quad	0x3fe1f318fc504817              # double 0.56092500000000001
	.quad	0x3fdba81dc0db2703              # double 0.43213600000000002
	.quad	0x3fe5ee696a26e547              # double 0.68535299999999999
	.quad	0x3fca024b33daf8df              # double 0.20319499999999999
	.quad	0x3fc277dd872f33ca              # double 0.14428299999999999
	.quad	0x3fcfd9d3458cd20b              # double 0.248835
	.quad	0x3fc5a35d67ba237d              # double 0.169048
	.quad	0x3fe9b6c3760bf5d8              # double 0.80356000000000005
	.quad	0x3fee0605681ecd4b              # double 0.93823500000000004
	.quad	0x3fc7082cf52b90a8              # double 0.17993700000000001
	.quad	0x3fed31550ca1cef2              # double 0.91227199999999997
	.quad	0x3fed23b7952d234f              # double 0.91061000000000003
	.quad	0x3fc2c7b890d5a5b9              # double 0.14671999999999999
	.quad	0x3fdb0afe60c38f36              # double 0.42254599999999998
	.quad	0x3fe6188094e5d5b2              # double 0.69049099999999997
	.quad	0x3f9c01a36e2eb1c4              # double 0.027349999999999999
	.quad	0x3fe7106ee30caa32              # double 0.72075599999999995
	.quad	0x3feb394face67d78              # double 0.850746
	.quad	0x3fb7d44998d045fe              # double 0.093082999999999999
	.quad	0x3fe61ec918e325d5              # double 0.69125800000000004
	.quad	0x3fef6a209aaa3ad2              # double 0.98170500000000005
	.quad	0x3fda4d8fd5cb7910              # double 0.41098400000000002
	.quad	0x3fec1a11233df2aa              # double 0.87818200000000002
	.quad	0x3fe4ae514c22ee42              # double 0.64627900000000005
	.quad	0x3fcc39b456b441bc              # double 0.22051100000000001
	.quad	0x3fe971dc50ce4ead              # double 0.79514899999999999
	.quad	0x3feda8ac5c13fd0d              # double 0.92684
	.quad	0x3fb920f2becedd48              # double 0.098158999999999996
	.quad	0x3fe5dffe6d58c8ef              # double 0.68359300000000001
	.quad	0x3fe8e68e3ef28416              # double 0.77814399999999995
	.quad	0x3fd07281fd9ba1b2              # double 0.25698900000000002
	.quad	0x3fca9b6b2af14552              # double 0.207868
	.quad	0x3fea946801711948              # double 0.83061600000000002
	.quad	0x3fc3c68ec52a411c              # double 0.154497
	.quad	0x3fd9c5004fb1183b              # double 0.40264899999999998
	.quad	0x3fde404ea4a8c155              # double 0.47267500000000001
	.quad	0x3fe5469b5a63f9a5              # double 0.66486900000000004
	.quad	0x3fd72e7f6f4be836              # double 0.36221300000000001
	.quad	0x3feb5f84cad57bc8              # double 0.85541
	.quad	0x3feaaafff36ac647              # double 0.83337399999999995
	.quad	0x3fe7b721d53cddd7              # double 0.74110500000000001
	.quad	0x3fd121a719b4dcec              # double 0.267679
	.quad	0x3fe07926c7eae5bd              # double 0.51478900000000005
	.quad	0x3fdf7fa5d28d002e              # double 0.49216599999999999
	.quad	0x3fed8856e696a26e              # double 0.92289299999999996
	.quad	0x3fd1f609dcf893fb              # double 0.280642
	.quad	0x3fec8969a0ad8a11              # double 0.89177399999999996
	.quad	0x3fc6ec28b2a6b0d9              # double 0.17908199999999999
	.quad	0x3fc66b59146e4c0e              # double 0.175151
	.quad	0x3fc1ef8487b99d45              # double 0.140122
	.quad	0x3fb2d9be4cd74928              # double 0.073635000000000006
	.quad	0x3feaa0902de00d1b              # double 0.83209999999999995
	.quad	0x3fe00b8f14db5958              # double 0.50141100000000005
	.quad	0x3fe694af4f0d844d              # double 0.70565
	.quad	0x3feef01754b05b7d              # double 0.966808
	.quad	0x3fdce160d887ebf2              # double 0.45125599999999999
	.quad	0x3fd97c3504c48adf              # double 0.398206
	.quad	0x3fae6be7afa72218              # double 0.059416999999999998
	.quad	0x3fe5985058dde7a7              # double 0.67484299999999997
	.quad	0x3fd585015c209247              # double 0.33624300000000001
	.quad	0x3fedb4677b395c42              # double 0.92827199999999999
	.quad	0x3fe5a8b6d86ec17f              # double 0.67684500000000003
	.quad	0x3fe771ac14c660a2              # double 0.732626
	.quad	0x3fd0a426bb55ac04              # double 0.260019
	.quad	0x3fd700a7c5ac471b              # double 0.35941499999999998
	.quad	0x3fca9270b06c43f6              # double 0.207594
	.quad	0x3fec2c343b70ef56              # double 0.88039599999999996
	.quad	0x3fe4d71d1d4738a4              # double 0.65125900000000003
	.quad	0x3fee02c9081c2e34              # double 0.93784
	.quad	0x3faaf640639d5e4a              # double 0.052659999999999998
	.quad	0x3fe0737b8d3f1844              # double 0.51409700000000003
	.quad	0x3feaa2a90cd423d9              # double 0.83235599999999998
	.quad	0x3f987a4a48f96e16              # double 0.023904000000000002
	.quad	0x3fe42ceee0f3cb3e              # double 0.63048499999999996
	.quad	0x3fec68dfbd6a593a              # double 0.88780199999999998
	.quad	0x3fdcbdd76683c298              # double 0.44908700000000001
	.quad	0x3fb513b5bf6a0dbb              # double 0.082332000000000002
	.quad	0x3feff71a7e308787              # double 0.99891399999999996
	.quad	0x3fd694317acc4ef9              # double 0.35279500000000003
	.quad	0x3fe07219220ff541              # double 0.51392800000000005
	.quad	0x3fe1cfd6d7e889c2              # double 0.55662100000000003
	.quad	0x3fd04538ef34d6a1              # double 0.25422499999999998
	.quad	0x3fd80b06c43f5f91              # double 0.37567299999999998
	.quad	0x3feafc5ac471b478              # double 0.84330499999999997
	.quad	0x3fd6b39192641b33              # double 0.35471000000000003
	.quad	0x3fd926aa8eb46349              # double 0.39298499999999997
	.quad	0x3fdfc3b0c4588a05              # double 0.49631900000000001
	.quad	0x3fb2158750c1b973              # double 0.070640999999999995
	.quad	0x3fe091e85fd04a30              # double 0.51781100000000002
	.quad	0x3fea2ab474107315              # double 0.81771300000000002
	.quad	0x3fc17164c729f59d              # double 0.13627300000000001
	.quad	0x3feacd65e4606749              # double 0.83757300000000001
	.quad	0x3fc6174c4cdfaca3              # double 0.17258599999999999
	.quad	0x3fce55b035bd512f              # double 0.23699000000000001
	.quad	0x3feb1c1b54195cc8              # double 0.84718099999999996
	.quad	0x3fe40c1b97353b4b              # double 0.62647799999999998
	.quad	0x3fe463f141205bc0              # double 0.63719999999999999
	.quad	0x3fe768db8bac710d              # double 0.73155000000000003
	.quad	0x3feb55cfaacd9e84              # double 0.85422500000000001
	.quad	0x3fdb456f75d9a0f1              # double 0.42611300000000002
	.quad	0x3f95510d38cda6e7              # double 0.020816999999999999
	.quad	0x3fe998d477bbf940              # double 0.79990600000000001
	.quad	0x3fc3bc33f85510d4              # double 0.15418100000000001
	.quad	0x3fe3ecefed63454a              # double 0.62267300000000003
	.quad	0x3fd3559b3d07c84b              # double 0.30209999999999998
	.quad	0x3fd78b47c73eee52              # double 0.36787599999999998
	.quad	0x3f943d46b26bf877              # double 0.019765000000000001
	.quad	0x3fed8ab4fa48301a              # double 0.92318199999999995
	.quad	0x3fdd53d640e9d51b              # double 0.45824199999999998
	.quad	0x3fe2020c49ba5e35              # double 0.56274999999999997
	.quad	0x3fe449fd7a13c255              # double 0.63403200000000004
	.quad	0x3fedfd06bbdbe3c1              # double 0.937137
	.quad	0x3fd8b39192641b33              # double 0.38596000000000003
	.quad	0x3feb642e12620254              # double 0.85597900000000004
	.quad	0x3feb5b7281fd9ba2              # double 0.85491300000000003
	.quad	0x3f97f950b955f783              # double 0.023411999999999999
	.quad	0x3fd7c43b2dd377e2              # double 0.37135200000000002
	.quad	0x3fe9f9378ee28672              # double 0.81167199999999995
	.quad	0x3fe70e5c4eb56fb9              # double 0.720503
	.quad	0x3fe8477bbf93ff26              # double 0.75872600000000001
	.quad	0x3fda4c8ffb8b2639              # double 0.41092299999999998
	.quad	0x3fb6291fb3fa6df0              # double 0.086565000000000003
	.quad	0x3fe76e30caa326e1              # double 0.73220099999999999
	.quad	0x3fe3bbdbe3c10518              # double 0.61668199999999995
	.quad	0x3fef7c19c17225b7              # double 0.98389899999999996
	.quad	0x3fafacc4ef88b978              # double 0.061865000000000003
	.quad	0x3fe8b23dd54da4cf              # double 0.77175800000000006
	.quad	0x3fd7b9e492bc2fc7              # double 0.37072100000000002
	.quad	0x3fdceea209aaa3ad              # double 0.45206499999999999
	.quad	0x3fc322af5771001d              # double 0.14949599999999999
	.quad	0x3fd738da3c21187e              # double 0.36284499999999997
	.quad	0x3fe77763e4abe6a3              # double 0.73332399999999998
	.quad	0x3fe7e8c47a17f413              # double 0.74716400000000005
	.quad	0x3fd313122b7baecd              # double 0.298039
	.quad	0x3fb58a43bb40b34e              # double 0.084140999999999993
	.quad	0x3fd41322f2734f83              # double 0.313668
	.quad	0x3fe432fcac8e68e4              # double 0.63122400000000001
	.quad	0x3fe6d32e7b3d8e00              # double 0.713279
	.quad	0x3fdcf9e3864cb5bb              # double 0.45275199999999999
	.quad	0x3fd6f96e158750c2              # double 0.35897400000000002
	.quad	0x3fe62c77574f722e              # double 0.69292799999999999
	.quad	0x3fdb329c347e8cce              # double 0.42496400000000001
	.quad	0x3fde8d92fb19e732              # double 0.47739100000000001
	.quad	0x3feed90e23af31b1              # double 0.96399599999999996
	.quad	0x3fe905a0be510907              # double 0.78193699999999999
	.quad	0x3fbe3b8a19c9d5a2              # double 0.11809600000000001
	.quad	0x3fecd58a76102795              # double 0.90106699999999995
	.quad	0x3fe531550ca1cef2              # double 0.66227199999999997
	.quad	0x3fe04065b63d3e4f              # double 0.50786100000000001
	.quad	0x3fdb2c55c96030c2              # double 0.42458099999999999
	.quad	0x3fe07ae7924af0bf              # double 0.51500299999999999
	.quad	0x3fcda1d323fee2ca              # double 0.23150100000000001
	.quad	0x3fe86ffe2a3cea6c              # double 0.76367099999999998
	.quad	0x3fece473471f7942              # double 0.902887
	.quad	0x3fb38b9baa1511e0              # double 0.076349
	.quad	0x3fe2725a250f8402              # double 0.57645900000000005
	.quad	0x3fcb9dfdac68a937              # double 0.21575900000000001
	.quad	0x3fd3df47f993d534              # double 0.31050299999999997
	.quad	0x3fd6a5870da5daf0              # double 0.35385299999999997
	.quad	0x3fd0b5f5f0b28523              # double 0.261106
	.quad	0x3fee515f02c4d65e              # double 0.94743299999999997
	.quad	0x3fcc634117f8444a              # double 0.221779
	.quad	0x3fcfb413986338b4              # double 0.24768299999999999
	.quad	0x3fd89f51697f1f9b              # double 0.38472400000000001
	.quad	0x3fde11c6d1e108c4              # double 0.469835
	.quad	0x3fcdc0db2702a348              # double 0.23244799999999999
	.quad	0x3fe41098d477bbf9              # double 0.62702599999999997
	.quad	0x3fbf14b9cb6848bf              # double 0.12141
	.quad	0x3f7d13d74d594f27              # double 0.0070990000000000003
	.quad	0x3fdda25529fe004b              # double 0.46303299999999997
	.quad	0x3fd1558644523f68              # double 0.270845
	.quad	0x3fe24bf6e3f78bbd              # double 0.57177299999999998
	.quad	0x3feb3c31df761cbd              # double 0.85109800000000002
	.quad	0x3fd164e48626f60e              # double 0.271783
	.quad	0x3fdeccd0fe8ab4fa              # double 0.48125099999999998
	.quad	0x3fe9700abf76a2f5              # double 0.79492700000000005
	.quad	0x3fc3b18548a9bcfd              # double 0.15385499999999999
	.quad	0x3fe8154003254e6e              # double 0.75259399999999999
	.quad	0x3fe3b9991361dc94              # double 0.61640600000000001
	.quad	0x3fea6115592d98bf              # double 0.82435099999999994
	.quad	0x3fe76c80c73abc94              # double 0.73199499999999995
	.quad	0x3fd880346dc5d639              # double 0.38282500000000003
	.quad	0x3fef93b18dac258d              # double 0.98677899999999996
	.quad	0x3fde873365881a15              # double 0.47700199999999998
	.quad	0x3fd0e1ef73c0c1fd              # double 0.26379000000000002
	.quad	0x3fe2e04189374bc7              # double 0.58987500000000004
	.quad	0x3fc0940357a35504              # double 0.12951699999999999
	.quad	0x3fcc2699c7bcc294              # double 0.21992800000000001
	.quad	0x3fe87f1d81f10668              # double 0.765517
	.quad	0x3fe0916872b020c5              # double 0.51775000000000004
	.quad	0x3fe80fd3b29a1ba0              # double 0.75193200000000004
	.quad	0x3fd4c892ab68cef6              # double 0.32474199999999998
	.quad	0x3fc2d0b30b5aa716              # double 0.14699400000000001
	.quad	0x3fe021bc126a65cf              # double 0.50411799999999996
	.quad	0x3fc0a8e2e2b8c75c              # double 0.13015399999999999
	.quad	0x3fbebc5154866a12              # double 0.120061
	.quad	0x3fd8b19e731d2e0e              # double 0.38584099999999999
	.quad	0x3f9a39c51dabe271              # double 0.025610999999999998
	.quad	0x3fd425cc426351df              # double 0.314807
	.quad	0x3fe7737b8d3f1844              # double 0.73284700000000003
	.quad	0x3fe7bd2fa0d77b7c              # double 0.74184399999999995
	.quad	0x3fe7ae09fe86833c              # double 0.73999499999999996
	.quad	0x3fe4328f9f44d445              # double 0.63117199999999996
	.quad	0x3fe2cb5781c714fd              # double 0.58732200000000001
	.quad	0x3fe7fae5796bfca8              # double 0.74937699999999996
	.quad	0x3fe17e974a3400b9              # double 0.54670300000000005
	.quad	0x3fce148344c37e6f              # double 0.23500099999999999
	.quad	0x3fbde364bec679cc              # double 0.11675099999999999
	.quad	0x3fdbd976ff3ade22              # double 0.43514799999999998
	.quad	0x3fe636deb95e5aff              # double 0.69419799999999998
	.quad	0x3fddb78897e99631              # double 0.46432699999999999
	.quad	0x3fdd93d96638433d              # double 0.46214899999999998
	.quad	0x3fd7e30014f8b589              # double 0.37323000000000001
	.quad	0x3fd0fbce4217d285              # double 0.26536900000000002
	.quad	0x3fe51bfbdf090f73              # double 0.65966599999999997
	.quad	0x3fa5df43c7d5ed07              # double 0.042719
	.quad	0x3fe3386b15f88fc9              # double 0.60063699999999998
	.quad	0x3fd6af1886df82b2              # double 0.354437
	.quad	0x3fc19a5a89b951c6              # double 0.13752300000000001
	.quad	0x3fef8da5daf07bfe              # double 0.98604099999999995
	.quad	0x3fe6a923e5b8561d              # double 0.70814699999999997
	.quad	0x3fb27d88c1db0143              # double 0.072228000000000001
	.quad	0x3fe0675360d02470              # double 0.51261299999999999
	.quad	0x3fd660913a4f8727              # double 0.34964400000000001
	.quad	0x3fdc578e5c4eb570              # double 0.44284400000000002
	.quad	0x3fc4ccff21b3aeef              # double 0.16250600000000001
	.quad	0x3fd91be6e6538690              # double 0.39232800000000001
	.quad	0x3fb465f9591cd1c8              # double 0.079681000000000002
	.quad	0x3f92a0ec74320104              # double 0.018192
	.quad	0x3fee9478c868b9fe              # double 0.95562400000000003
	.quad	0x3fe3fec56d5cfaad              # double 0.62485000000000002
	.quad	0x3fe0db0142f61ed6              # double 0.52673400000000004
	.quad	0x3f8db76b3bb83cf3              # double 0.01451
	.quad	0x3fba9595feda6613              # double 0.10384500000000001
	.quad	0x3fb0dd72367e414e              # double 0.065878999999999993
	.quad	0x3fa2b3461309c800              # double 0.036524000000000001
	.quad	0x3fdde9b7bf1e8e61              # double 0.46739000000000003
	.quad	0x3fe9a5d4a5df223a              # double 0.80149300000000001
	.quad	0x3feed916872b020c              # double 0.96399999999999996
	.quad	0x3fcc4da09cc319c6              # double 0.22111900000000001
	.quad	0x3fdefa615a8deb10              # double 0.48403200000000002
	.quad	0x3fc8225fa658c4bd              # double 0.18854899999999999
	.quad	0x3fe70826aa8eb463              # double 0.71974499999999997
	.quad	0x3fe906748e475600              # double 0.78203800000000001
	.quad	0x3fed06a2b1704ff4              # double 0.90705999999999997
	.quad	0x3fd8ee2867275686              # double 0.38953599999999999
	.quad	0x3fe002b1f687b13a              # double 0.50032900000000002
	.quad	0x3fdd512a94ff0026              # double 0.45807900000000001
	.quad	0x3fa1d755bccaf70a              # double 0.034846000000000002
	.quad	0x3fcbff3f0fe047d4              # double 0.218727
	.quad	0x3fe520d9945b6c37              # double 0.66025999999999996
	.quad	0x3fed138151a43782              # double 0.90863099999999997
	.quad	0x3fef598e10cf5b1d              # double 0.97968200000000005
	.quad	0x3fe5dfd04a2fcefb              # double 0.68357100000000004
	.quad	0x3fd3039abf338716              # double 0.297095
	.quad	0x3fc16fc9bc771434              # double 0.13622400000000001
	.quad	0x3fec3b3636f3b214              # double 0.88222800000000001
	.quad	0x3fbef21f6cacd185              # double 0.120882
	.quad	0x3fd05942917507ea              # double 0.25544800000000001
	.quad	0x3fd4eed45e9185cf              # double 0.32707700000000001
	.quad	0x3fe5f623076c050c              # double 0.68629600000000002
	.quad	0x3fe93269df97aaac              # double 0.78740399999999999
	.quad	0x3fd0212d77318fc5              # double 0.252025
	.quad	0x3fe1a63736cdf267              # double 0.55154000000000003
	.quad	0x3fcb8d477bbf93ff              # double 0.215249
	.quad	0x3fe988b11409a240              # double 0.79793599999999998
	.quad	0x3fd4dbfceb78897f              # double 0.32592700000000002
	.quad	0x3fda1059ea57214f              # double 0.407248
	.quad	0x3fe37e9b7bf1e8e6              # double 0.609205
	.quad	0x3fd76ededaec4a41              # double 0.36614200000000002
	.quad	0x3fd83bc4d22c881e              # double 0.37864799999999998
	.quad	0x3fe1c9dbec2480e9              # double 0.55589100000000002
	.quad	0x3fe9103211cb039f              # double 0.78322700000000001
	.quad	0x3fe0637de939eadd              # double 0.51214499999999996
	.quad	0x3fd196030c23fab1              # double 0.274781
	.quad	0x3fe1f064ece9a2c6              # double 0.56059499999999995
	.quad	0x3feb75579af1886e              # double 0.858074
	.quad	0x3fc29b845564b663              # double 0.145371
	.quad	0x3fe6040bfe3b03e2              # double 0.68799399999999999
	.quad	0x3febaa64c2f837b5              # double 0.86455000000000004
	.quad	0x3fe764628027d88c              # double 0.73100399999999999
	.quad	0x3fe950e560418937              # double 0.79112499999999997
	.quad	0x3fe78635a426bb56              # double 0.73513300000000004
	.quad	0x3feb21294573a798              # double 0.84779800000000005
	.quad	0x3fe4187a4a48f96e              # double 0.62798799999999999
	.quad	0x3fe9fc9795b35b0c              # double 0.81208400000000002
	.quad	0x3fe15b6805a2d730              # double 0.542408
	.quad	0x3fe9dcfede97d06c              # double 0.80822700000000002
	.quad	0x3fd1033a4723ab00              # double 0.265822
	.quad	0x3fa1a500d5e8d541              # double 0.034462
	.quad	0x3fbab8305d95dd4c              # double 0.10437299999999999
	.quad	0x3fd37be553ac4f7f              # double 0.30443700000000001
	.quad	0x3fde08f217093101              # double 0.46929599999999999
	.quad	0x3fb05974e65bea0c              # double 0.063865000000000005
	.quad	0x3fdd588e368f0846              # double 0.45852999999999999
	.quad	0x3fde721d53cddd6e              # double 0.475715
	.quad	0x3fb252bd3c361134              # double 0.071575
	.quad	0x3fdcb966be7afa72              # double 0.44881599999999999
	.quad	0x3fe20de4c51116a9              # double 0.56419600000000003
	.quad	0x3fe4b4d48882f0e1              # double 0.64707400000000004
	.quad	0x3fb4f7db6e503fb3              # double 0.081906999999999994
	.quad	0x3fe3c577d955714c              # double 0.61785500000000004
	.quad	0x3fe052b6f19934f0              # double 0.51009700000000002
	.quad	0x3fc34c2b51bd61f6              # double 0.15076200000000001
	.quad	0x3fdd8301a79fec9a              # double 0.461121
	.quad	0x3fd4473cd573647c              # double 0.31684800000000002
	.quad	0x3fe2ad38476f2a5a              # double 0.58364499999999997
	.quad	0x3fe936deb95e5aff              # double 0.78794799999999998
	.quad	0x3fe94b8e086bdf4c              # double 0.79047299999999998
	.quad	0x3feb41919ac79703              # double 0.85175400000000001
	.quad	0x3fcc645e4e69f05f              # double 0.22181300000000001
	.quad	0x3fd292af9a8cdea0              # double 0.29020299999999999
	.quad	0x3fdc0d9d7774aba4              # double 0.43833100000000003
	.quad	0x3fe3b16c1e364bec              # double 0.61540799999999996
	.quad	0x3fe01b5c7cd898b3              # double 0.50334000000000001
	.quad	0x3feda71de69ad42c              # double 0.92664999999999997
	.quad	0x3fc8f48c2e770bd0              # double 0.194963
	.quad	0x3fd1fc32ebe596c8              # double 0.28101799999999999
	.quad	0x3fdcc881e4712e41              # double 0.44973800000000003
	.quad	0x3fee131876188b11              # double 0.93983099999999997
	.quad	0x3fd557de0d66f0d0              # double 0.33348800000000001
	.quad	0x3fe49ab0856e696a              # double 0.64388299999999998
	.quad	0x3fcfaade657b84dc              # double 0.24740200000000001
	.quad	0x3f95ac03ff69014b              # double 0.021163999999999999
	.quad	0x3fbbad3a604e1e71              # double 0.108112
	.quad	0x3fcd4a2b9d3cbc49              # double 0.228826
	.quad	0x3fd8d338f7985272              # double 0.38789200000000001
	.quad	0x3fde51eb851eb852              # double 0.47375
	.quad	0x3feecd50ebaade65              # double 0.96256299999999994
	.quad	0x3fd512ba16e7a312              # double 0.32926800000000001
	.quad	0x3fc2fecdd0d8cb08              # double 0.14840100000000001
	.quad	0x3fe96b463497b741              # double 0.79434499999999997
	.quad	0x3fdf81e8a2ec28b3              # double 0.49230400000000002
	.quad	0x3fe66b78897e9963              # double 0.70061899999999999
	.quad	0x3fdf2e05ccc89b0f              # double 0.48718400000000001
	.quad	0x3fd910f51ac9afe2              # double 0.39166000000000001
	.quad	0x3feab48b220791c5              # double 0.83453900000000003
	.quad	0x3fd26f86a098915c              # double 0.28805700000000001
	.quad	0x3fd3f61aa3f034b1              # double 0.31189600000000001
	.quad	0x3fdcc13b9f127f5f              # double 0.44929400000000003
	.quad	0x3fa6516db0dd82fd              # double 0.043589999999999997
	.quad	0x3fe99acde19fc2a9              # double 0.80014700000000005
	.quad	0x3fbb74ddf86e3b47              # double 0.107252
	.quad	0x3f9ab474107314cb              # double 0.026079000000000001
	.quad	0x3fef26bb55ac03ff              # double 0.97347799999999995
	.quad	0x3fb7ad6cb5350093              # double 0.092490000000000003
	.quad	0x3fbefdda8bd230ba              # double 0.121061
	.quad	0x3fe1a44417870542              # double 0.55130199999999996
	.quad	0x3fe56d41b75a74c1              # double 0.66958700000000004
	.quad	0x3fedab0856e696a2              # double 0.92712799999999995
	.quad	0x3fdfbdd334c5da6a              # double 0.49596099999999999
	.quad	0x3fe421d96e9bbf0e              # double 0.62913200000000002
	.quad	0x3fb84d013a92a305              # double 0.094924999999999995
	.quad	0x3f951b0ccbc05d53              # double 0.020611000000000001
	.quad	0x3fda27a63736cdf2              # double 0.40866999999999998
	.quad	0x3fedc85a0be51090              # double 0.93070699999999995
	.quad	0x3feea441fea8112c              # double 0.95755100000000004
	.quad	0x3fddf0f16f4384ba              # double 0.467831
	.quad	0x3fd65810624dd2f2              # double 0.34912500000000002
	.quad	0x3fe4485a0be51090              # double 0.63383199999999995
	.quad	0x3f9fb6134ce3de61              # double 0.030967999999999999
	.quad	0x3fa851a86940357a              # double 0.047497999999999999
	.quad	0x3fe63aa582dbe7f3              # double 0.69465900000000003
	.quad	0x3fe45cb35f3d7d39              # double 0.63631599999999999
	.quad	0x3fe0d0635a426bb5              # double 0.52543799999999996
	.quad	0x3fc5ee807bbb6241              # double 0.17134099999999999
	.quad	0x3fe8e4a16a487336              # double 0.77790899999999996
	.quad	0x3fb945953586ca8a              # double 0.098718
	.quad	0x3fe3e3b8a19c9d5a              # double 0.62154799999999999
	.quad	0x3fd64b4d056c508b              # double 0.34834599999999999
	.quad	0x3fe3e0e0eb67c287              # double 0.621201
	.quad	0x3fe877ec3547e069              # double 0.76463899999999996
	.quad	0x3fc484a515ce9e5e              # double 0.160298
	.quad	0x3fc9fb2edfe75bc4              # double 0.20297799999999999
	.quad	0x3fe45054ac29bf16              # double 0.63480599999999998
	.quad	0x3febdaa2e3c536d6              # double 0.87043899999999996
	.quad	0x3fd9c8bc9cd3e0bd              # double 0.40287699999999999
	.quad	0x3fef80f55de58e65              # double 0.98449200000000003
	.quad	0x3fc6b1bbcf4e874d              # double 0.17729900000000001
	.quad	0x3fd8d2a62aa1943a              # double 0.38785700000000001
	.quad	0x3fe0e42e12620254              # double 0.52785400000000005
	.quad	0x3fe2665bea0ba1f5              # double 0.57499500000000003
	.quad	0x3fd500ffda4052d6              # double 0.32818599999999998
	.quad	0x3fd32d2fe3f359ff              # double 0.29963299999999998
	.quad	0x3fef2a90cd423d92              # double 0.97394599999999998
	.quad	0x3fe0df394b7b2895              # double 0.52724899999999997
	.quad	0x3fef4e28ed5f138c              # double 0.97829100000000002
	.quad	0x3f9db59578a2a90d              # double 0.029013000000000001
	.quad	0x3fee65a35d67ba23              # double 0.94990699999999995
	.quad	0x3fe6a2291fb3fa6e              # double 0.70729500000000001
	.quad	0x3fd1b1b36bd2b6f2              # double 0.27647100000000002
	.quad	0x3fe2705c896dd26b              # double 0.57621599999999995
	.quad	0x3fed71bef49cf56f              # double 0.92013500000000004
	.quad	0x3fef7e004b7f5a53              # double 0.98413099999999997
	.quad	0x3fae15a8deb0fadf              # double 0.058758999999999999
	.quad	0x3fc91361dc93ea2d              # double 0.19590399999999999
	.quad	0x3fe34ec636b09635              # double 0.60336599999999996
	.quad	0x3fdb37bd05af6c6a              # double 0.42527700000000002
	.quad	0x3fea8a02b841248d              # double 0.82934699999999995
	.quad	0x3fe63d35eb7457c1              # double 0.69497200000000003
	.quad	0x3fe468858ff75968              # double 0.63775899999999996
	.quad	0x3feb8b912dba4d6e              # double 0.86078699999999997
	.quad	0x3feb671cda2b5a21              # double 0.85633700000000001
	.quad	0x3feadc8b86b15f89              # double 0.839422
	.quad	0x3fcd4f61672324c8              # double 0.22898499999999999
	.quad	0x3fe951958969a0ae              # double 0.79120900000000005
	.quad	0x3fe15dc6195464dc              # double 0.54269699999999998
	.quad	0x3fd998e10cf5b1c8              # double 0.39995599999999998
	.quad	0x3fca08e15011904b              # double 0.20339599999999999
	.quad	0x3f6717df19d66adb              # double 0.0028189999999999999
	.quad	0x3fafd50225742dcf              # double 0.062171999999999998
	.quad	0x3fac8c2e770bd018              # double 0.055757000000000001
	.quad	0x3fe60121682f9442              # double 0.68763799999999997
	.quad	0x3f775d13d74d594f              # double 0.0057039999999999999
	.quad	0x3fd1b51372a38b8b              # double 0.27667700000000001
	.quad	0x3fe93be22e5de15d              # double 0.78856000000000004
	.quad	0x3fee5549731098d4              # double 0.94791099999999994
	.quad	0x3fd00cbf2b239a39              # double 0.250778
	.quad	0x3fe51e53a81dc0db              # double 0.65995199999999998
	.quad	0x3fd3c669057d1783              # double 0.30898500000000001
	.quad	0x3fecae1cde5d1809              # double 0.896254
	.quad	0x3fe5467381d7dbf5              # double 0.66485000000000005
	.quad	0x3fe0cead0c3d2524              # double 0.52522899999999995
	.quad	0x3fdb9cf13cee9dd8              # double 0.431454
	.quad	0x3fb65add9c27e953              # double 0.087323999999999999
	.quad	0x3fd84f9c1f85d745              # double 0.379859
	.quad	0x3fc251c9f72f76e6              # double 0.143121
	.quad	0x3fdaefc7a398201d              # double 0.42088500000000001
	.quad	0x3fd8fc5479d4d834              # double 0.390401
	.quad	0x3fe1e0285ec3dab6              # double 0.55861300000000003
	.quad	0x3fdfa2f8bdec5f39              # double 0.49432199999999998
	.quad	0x3fe6948dc11e42e1              # double 0.70563399999999998
	.quad	0x3fcea10e02214270              # double 0.23929
	.quad	0x3fe6fa743a647fdc              # double 0.71807299999999996
	.quad	0x3feec68a936c58ef              # double 0.96173600000000003
	.quad	0x3fc9312b1b36bd2b              # double 0.19681299999999999
	.quad	0x3fefc5c78a6dacac              # double 0.99289300000000002
	.quad	0x3fe5c091c087442c              # double 0.67975699999999994
	.quad	0x3fe5f98fa376922e              # double 0.68671400000000005
	.quad	0x3fe7f26d04e618ce              # double 0.74834299999999998
	.quad	0x3fe17837b4a2339c              # double 0.54592499999999999
	.quad	0x3fdf55219a847b24              # double 0.48957099999999998
	.quad	0x3fd2aaeafab53d64              # double 0.291682
	.quad	0x3fc6b367a0f9096c              # double 0.17735000000000001
	.quad	0x3fcd7d8cf398e970              # double 0.23039399999999999
	.quad	0x3fd108aefb2aae29              # double 0.26615499999999997
	.quad	0x3fd1902de00d1b71              # double 0.27442499999999997
	.quad	0x3f90b630a91537a0              # double 0.016320000000000001
	.quad	0x3fed3f290abb44e5              # double 0.91395999999999999
	.quad	0x3fccb3b320535c9e              # double 0.22423399999999999
	.quad	0x3fc0d8f4f93bc0a0              # double 0.13162099999999999
	.quad	0x3fe3597f62b6ae7d              # double 0.60467499999999996
	.quad	0x3fb6cc1ca3a4b557              # double 0.089052000000000006
	.quad	0x3fdd0afe60c38f36              # double 0.45379599999999998
	.quad	0x3fe00296b3354c12              # double 0.50031599999999998
	.quad	0x3feffe8ab4fa4830              # double 0.99982199999999999
	.quad	0x3fc841c3efae7925              # double 0.18950700000000001
	.quad	0x3feee1a8262456f7              # double 0.96504599999999995
	.quad	0x3fe512018a43bb41              # double 0.65844800000000003
	.quad	0x3fe72fbe33acd5b7              # double 0.72457800000000006
	.quad	0x3fe6ed56b00ffda4              # double 0.716472
	.quad	0x3fedc573a797891e              # double 0.93035299999999999
	.quad	0x3feaf43c7d5ed070              # double 0.84231400000000001
	.quad	0x3fe86ac8605681ed              # double 0.76303500000000002
	.quad	0x3fe7c2b734b51373              # double 0.74251900000000004
	.quad	0x3fb8258d5842b735              # double 0.094323000000000004
	.quad	0x3faaf4cf4a558ea8              # double 0.052649000000000001
	.quad	0x3fd9af5771001d5c              # double 0.40132699999999999
	.quad	0x3fe94ea077036c9c              # double 0.79084799999999999
	.quad	0x3feac892ab68cef6              # double 0.83698399999999995
	.quad	0x3febdc7cd898b2ea              # double 0.87066500000000002
	.quad	0x3fd76a012599ed7c              # double 0.36584499999999998
	.quad	0x3fe071c3265add9c              # double 0.51388699999999998
	.quad	0x3fb2d234eb9a176e              # double 0.073520000000000002
	.quad	0x3faba3ca7503b81b              # double 0.053983999999999997
	.quad	0x3fdbd273d5bab218              # double 0.43472
	.quad	0x3fd696e158750c1c              # double 0.35295900000000002
	.quad	0x3fca1dd1a21ea359              # double 0.20403499999999999
	.quad	0x3fd4c0a06e9ff0cc              # double 0.32425700000000002
	.quad	0x3fe456084a515cea              # double 0.63550200000000001
	.quad	0x3fe6b0df9bdc69f9              # double 0.70909100000000003
	.quad	0x3fedc95182a9930c              # double 0.93082500000000001
	.quad	0x3fb3b9f127f5e84f              # double 0.077055999999999999
	.quad	0x3fecac3eb7cbb3c8              # double 0.89602599999999999
	.quad	0x3fd483cafb3b7521              # double 0.320544
	.quad	0x3fdb26cc1ca3a4b5              # double 0.42424299999999998
	.quad	0x3f8d4d834091c087              # double 0.014308
	.quad	0x3fe6fe9fadafd114              # double 0.71858200000000005
	.quad	0x3feafc8f32378ab1              # double 0.84333000000000002
	.quad	0x3fdd7008a697aede              # double 0.45996300000000001
	.quad	0x3fe2ae05ccc89b0f              # double 0.58374300000000001
	.quad	0x3fec9f10667f90da              # double 0.89441700000000002
	.quad	0x3fdacd855970b49e              # double 0.418794
	.quad	0x3fcee07e5a78f25a              # double 0.241226
	.quad	0x3fe288fc9363f573              # double 0.57922200000000001
	.quad	0x3fe3b6d22424a277              # double 0.61606700000000003
	.quad	0x3fe8cd8ba40d90e2              # double 0.77509099999999997
	.quad	0x3fdb5a5332acfb76              # double 0.42738799999999999
	.quad	0x3fb3e920c069e7fb              # double 0.077775999999999998
	.quad	0x3fe6b76b3bb83cf3              # double 0.70989000000000002
	.quad	0x3fd2bc72e275ab7e              # double 0.29275200000000001
	.quad	0x3fe3abda0dfdef85              # double 0.61472800000000005
	.quad	0x3fe067b80a9de8b4              # double 0.51266100000000003
	.quad	0x3fe28dfdef8487ba              # double 0.57983300000000004
	.quad	0x3fdd6965f5275eea              # double 0.45955800000000002
	.quad	0x3fd97863beec397a              # double 0.39797300000000002
	.quad	0x3fdf1733226c3b92              # double 0.48579099999999997
	.quad	0x3febcb599aa60914              # double 0.86857300000000003
	.quad	0x3f8f7f06705c896e              # double 0.015379
	.quad	0x3fddcd7cf5f4e443              # double 0.465667
	.quad	0x3fec366516db0dd8              # double 0.88163999999999998
	.quad	0x3fa88b545c78a6db              # double 0.047938000000000001
	.quad	0x3fecfdb2b346130a              # double 0.90596900000000002
	.quad	0x3fc547064ece9a2c              # double 0.16622999999999999
	.quad	0x3fec68db8bac710d              # double 0.88780000000000003
	.quad	0x3fdacb3e5753a3ec              # double 0.418655
	.quad	0x3fd1bda5119ce076              # double 0.2772
	.quad	0x3fe868d759ee88df              # double 0.76279799999999998
	.quad	0x3fe72732df505d10              # double 0.72353500000000004
	.quad	0x3fee80c521dda05a              # double 0.95321900000000004
	.quad	0x3fde60dcb9a9da59              # double 0.47466199999999997
	.quad	0x3fdd0f0a5efe9318              # double 0.45404299999999997
	.quad	0x3fd3f3d7d3910c2c              # double 0.31175799999999998
	.quad	0x3fcb09528f190d17              # double 0.21122199999999999
	.quad	0x3fcab463497b7415              # double 0.20863000000000001
	.quad	0x3feb0f190d173fb8              # double 0.84559300000000004
	.quad	0x3fe78eeae9ee45c3              # double 0.73619599999999996
	.quad	0x3fefe4430b178b37              # double 0.99661399999999999
	.quad	0x3fe7f14b9cb6848c              # double 0.74820500000000001
	.quad	0x3fe6cc33b5393251              # double 0.71242700000000003
	.quad	0x3fe3212d77318fc5              # double 0.5978
	.quad	0x3fde78a2a90cd424              # double 0.47611300000000001
	.quad	0x3feddcee17a02fb6              # double 0.93321900000000002
	.quad	0x3fdb462c343b70ef              # double 0.42615799999999998
	.quad	0x3fc7a4052d666a98              # double 0.184693
	.quad	0x3fd8e95b78cc9a78              # double 0.38924300000000001
	.quad	0x3fe57a46173b85e8              # double 0.67117599999999999
	.quad	0x3fc58194c0160525              # double 0.168017
	.quad	0x3fd14b72c5197a25              # double 0.27023000000000003
	.quad	0x3fd35b291b823c86              # double 0.30243900000000001
	.quad	0x3fef8ede54b48d3b              # double 0.98619000000000001
	.quad	0x3fa6efe4ffc9795b              # double 0.044798999999999999
	.quad	0x3fe92bc5154866a1              # double 0.78659299999999999
	.quad	0x3f8296f6512a94ff              # double 0.0090769999999999999
	.quad	0x3fdc64cb5bb384fd              # double 0.44365199999999999
	.quad	0x3fe9c6e08f217093              # double 0.80552699999999999
	.quad	0x3fe2cf2495e17e35              # double 0.58778600000000003
	.quad	0x3fc5c5718eb89507              # double 0.17008799999999999
	.quad	0x3fef3d2d87f88766              # double 0.97621800000000003
	.quad	0x3fd68f190d173fb8              # double 0.35248400000000002
	.quad	0x3fcefc158fb43d8a              # double 0.24206800000000001
	.quad	0x3fc21d755bccaf71              # double 0.14152400000000001
	.quad	0x3fe70a2014727dcc              # double 0.71998600000000001
	.quad	0x3fea3b927d45a5fc              # double 0.81977199999999994
	.quad	0x3fdb711d798d8a98              # double 0.42877900000000002
	.quad	0x3fe382517e77d524              # double 0.60965800000000003
	.quad	0x3fc6d50ebaade658              # double 0.17837700000000001
	.quad	0x3fe9b662fdfc19c1              # double 0.80351399999999995
	.quad	0x3fe05247cb70ac3b              # double 0.51004400000000005
	.quad	0x3fc9ea35935fc3b5              # double 0.20246
	.quad	0x3fe2a71bcdbbe015              # double 0.58289899999999994
	.quad	0x3fce0ff540895d0b              # double 0.23486199999999999
	.quad	0x3fd8a53b8e4b87be              # double 0.38508500000000001
	.quad	0x3fee81bc98a222d5              # double 0.95333699999999999
	.quad	0x3fdf068db8bac711              # double 0.48477500000000001
	.quad	0x3fe6c2699c7bcc29              # double 0.71123199999999998
	.quad	0x3fe7f304039abf34              # double 0.74841500000000005
	.quad	0x3fce3da2f8bdec5f              # double 0.23625599999999999
	.quad	0x3fe7f57b41bfbdf1              # double 0.74871600000000005
	.quad	0x3fdc67f0aa21a71a              # double 0.44384400000000002
	.quad	0x3fe98ad46f587d70              # double 0.79819700000000005
	.quad	0x3fe4bfa4c61d8623              # double 0.64839400000000003
	.quad	0x3fe8e736049ecb32              # double 0.77822400000000003
	.quad	0x3fe2ceebf65dbfcf              # double 0.58775900000000003
	.quad	0x3fbe9802c0a4a05e              # double 0.119507
	.quad	0x3fd39fadafd11383              # double 0.30662099999999998
	.quad	0x3fc60218def416be              # double 0.17193900000000001
	.quad	0x3fe9715831f03d14              # double 0.79508599999999995
	.quad	0x3fd45f2452c59fb2              # double 0.31830700000000001
	.quad	0x3fd5e3f78bbd3804              # double 0.34203899999999998
	.quad	0x3fc94eebf65dbfcf              # double 0.19772100000000001
	.quad	0x3fe96f7e3d1cc101              # double 0.79486000000000001
	.quad	0x3fe5e38c9752977d              # double 0.68402700000000005
	.quad	0x3fef76273929ed39              # double 0.98317299999999996
	.quad	0x3fdf861a60d4562e              # double 0.49256
	.quad	0x3feb619fc2a8869c              # double 0.85566699999999995
	.quad	0x3feefa8f7db6e504              # double 0.968086
	.quad	0x3fe5c2d27807789a              # double 0.68003199999999997
	.quad	0x3fd8134ce3de614a              # double 0.37617800000000001
	.quad	0x3fe71b62c77574f7              # double 0.72209299999999998
	.quad	0x3fcb01b003686a4d              # double 0.21098900000000001
	.quad	0x3fe8c61522a6f3f5              # double 0.77417999999999998
	.quad	0x3fd16a875d56f32c              # double 0.27212700000000001
	.quad	0x3f4733226c3b927d              # double 7.0799999999999997E-4
	.quad	0x3fe3e9ad42c3c9ef              # double 0.62227500000000002
	.quad	0x3fed6594af4f0d84              # double 0.91864999999999996
	.quad	0x3fe605942917507f              # double 0.68818100000000004
	.quad	0x3fb1dd7ecbb7f9d7              # double 0.069786000000000001
	.quad	0x3fe136fc158fb43e              # double 0.53796200000000005
	.quad	0x3fc23b60285ec3db              # double 0.14243700000000001
	.quad	0x3fcf594f26aec072              # double 0.24491299999999999
	.quad	0x3fd90adcd2d44dcb              # double 0.39128800000000002
	.quad	0x3fe3ad83c6c97d8d              # double 0.61493100000000001
	.quad	0x3f917b5286b59147              # double 0.017072
	.quad	0x3fd68882f0e0a84c              # double 0.35208200000000001
	.quad	0x3fb8848387df5cf2              # double 0.095771999999999996
	.quad	0x3fe4af8594291750              # double 0.64642599999999995
	.quad	0x3fa1b1d92b7fe08b              # double 0.03456
	.quad	0x3fee4d466f5019f4              # double 0.94693300000000002
	.quad	0x3fe5449129888f86              # double 0.66461999999999999
	.quad	0x3fd06c6583e8576d              # double 0.25661600000000001
	.quad	0x3fe97de5082cf52c              # double 0.79661800000000004
	.quad	0x3fd23e7d1351159c              # double 0.28506399999999998
	.quad	0x3feb41a6937d1fe6              # double 0.85176399999999997
	.quad	0x3feb531db445ed4a              # double 0.85389599999999999
	.quad	0x3fe7b56323bbc6eb              # double 0.740892
	.quad	0x3fe628e71476af8a              # double 0.69249300000000003
	.quad	0x3fec05d0fa58f712              # double 0.87570999999999999
	.quad	0x3fd276188b11409a              # double 0.28845799999999999
	.quad	0x3fe9e24bba12b5e5              # double 0.80887399999999998
	.quad	0x3fde1a3f4666ec9e              # double 0.47035199999999999
	.quad	0x3fea0bbf50e34763              # double 0.81393400000000005
	.quad	0x3fd21ad6451b9303              # double 0.28288799999999997
	.quad	0x3fd3174c4cdfaca3              # double 0.29829699999999998
	.quad	0x3fe056494d50ebab              # double 0.51053300000000001
	.quad	0x3fa4e4649906cca3              # double 0.040805000000000001
	.quad	0x3fbc49fd7a13c255              # double 0.110504
	.quad	0x3fef7c02afdda8bd              # double 0.98388799999999998
	.quad	0x3fb5d40ee06d9381              # double 0.085266999999999996
	.quad	0x3fca9d94d0dcfcc6              # double 0.20793400000000001
	.quad	0x3feaa9a3d2d87f88              # double 0.83320799999999995
	.quad	0x3fd3b3354c12274a              # double 0.307813
	.quad	0x3fd81a75cd0bb6ed              # double 0.37661499999999998
	.quad	0x3fe674fb549f9485              # double 0.70177999999999996
	.quad	0x3fe8e6b1e5c0b999              # double 0.77816099999999999
	.quad	0x3fc872f33ca31e7e              # double 0.19100800000000001
	.quad	0x3fcfcbd556084a51              # double 0.24840799999999999
	.quad	0x3fe187ebf22c01e7              # double 0.54784200000000005
	.quad	0x3feab6bf444e0daa              # double 0.83480799999999999
	.quad	0x3fcb1dbca9691a76              # double 0.21184500000000001
	.quad	0x3fbc2c5e2cdc011d              # double 0.110052
	.quad	0x3fed41fea8112ba1              # double 0.91430599999999995
	.quad	0x3fe774ba51a005c4              # double 0.73299899999999996
	.quad	0x3fe7786e3b46fdeb              # double 0.73345099999999996
	.quad	0x3fed3b70ef566491              # double 0.91350600000000004
	.quad	0x3fd8f7f498c3b0c4              # double 0.39013399999999998
	.quad	0x3fe653910c2c5e2d              # double 0.69770100000000002
	.quad	0x3f9a0232096787cf              # double 0.025399000000000001
	.quad	0x3fc0d6a161e4f766              # double 0.13155
	.quad	0x3fdaedaec4a4095f              # double 0.42075699999999999
	.quad	0x3fd2351deefe4ffd              # double 0.28449200000000002
	.quad	0x3fef7f36ac647779              # double 0.98427900000000001
	.quad	0x3fd25b8130164841              # double 0.28683500000000001
	.quad	0x3fe4250507a6bd6f              # double 0.62951900000000005
	.quad	0x3fe32d05f2884838              # double 0.59924599999999995
	.quad	0x3fe741df3300de4c              # double 0.72679099999999996
	.quad	0x3fb9dba908a265f1              # double 0.101008
	.quad	0x3fd1caf2d7f950b9              # double 0.27801199999999998
	.quad	0x3fed4d466f5019f4              # double 0.91568300000000002
	.quad	0x3fe01988d2a1f8e4              # double 0.50311700000000004
	.quad	0x3fd7c393682730c6              # double 0.37131199999999998
	.quad	0x3fef04d338f79852              # double 0.96933899999999995
	.quad	0x3fc82478854cdb7b              # double 0.188613
	.quad	0x3fe17fcb923a29c7              # double 0.54684999999999995
	.quad	0x3feb1d5e4a383276              # double 0.84733499999999995
	.quad	0x3fe99ced0b30b5aa              # double 0.80040599999999995
	.quad	0x3fd0a67a52ac753e              # double 0.26016099999999998
	.quad	0x3fe08123810e8859              # double 0.515764
	.quad	0x3fc1a12b5e529bae              # double 0.13773099999999999
	.quad	0x3fdf867f0aa21a72              # double 0.49258400000000002
	.quad	0x3fb1ed06fef7c244              # double 0.070023000000000002
	.quad	0x3fef7caa7589efd8              # double 0.98396799999999995
	.quad	0x3fe3f08cc575c076              # double 0.62311399999999995
	.quad	0x3fde461309c7ffde              # double 0.47302699999999998
	.quad	0x3fece9a4df47f994              # double 0.90352100000000001
	.quad	0x3fed0e1b4bb5e0f8              # double 0.907972
	.quad	0x3fd102ababead4f6              # double 0.26578800000000002
	.quad	0x3fef7ae7924af0bf              # double 0.98375299999999998
	.quad	0x3fd2c47a17f4128c              # double 0.293242
	.quad	0x3fd19e5e2478854d              # double 0.27529100000000001
	.quad	0x3fd418e325d4a5df              # double 0.31401899999999999
	.quad	0x3fbd1b71758e2196              # double 0.1137
	.quad	0x3fbe749f0e4da09d              # double 0.118967
	.quad	0x3fd08e086bdf4c2b              # double 0.25866899999999998
	.quad	0x3fc21d6494d50ebb              # double 0.14152200000000001
	.quad	0x3fd3420b3d4ae42a              # double 0.30090600000000001
	.quad	0x3fe36b7457c0b136              # double 0.60686700000000005
	.quad	0x3fe8956191148fda              # double 0.768235
	.quad	0x3fe5271de69ad42c              # double 0.66102499999999997
	.quad	0x3fe92c0a4a05dd90              # double 0.78662600000000005
	.quad	0x3fe464e48626f60e              # double 0.63731599999999999
	.quad	0x3fe817b5286b5914              # double 0.75289399999999995
	.quad	0x3fc653868fd199bb              # double 0.174424
	.quad	0x3fded7342edbb59e              # double 0.48188500000000001
	.quad	0x3fe05b5b70691ea8              # double 0.51115200000000005
	.quad	0x3fe9d62e09fe8683              # double 0.80739499999999997
	.quad	0x3fc3ee3d5fdcdf6a              # double 0.15570800000000001
	.quad	0x3fd3ecbb7f9d6f11              # double 0.31132399999999999
	.quad	0x3fc304816f0068dc              # double 0.14857500000000001
	.quad	0x3fe2d5e8d5410f95              # double 0.58861200000000002
	.quad	0x3fcba2df9378ee28              # double 0.21590799999999999
	.quad	0x3fe70a137f38c543              # double 0.71997999999999995
	.quad	0x3fef31d92b7fe08b              # double 0.974835
	.quad	0x3fce2ab25b317efe              # double 0.235678
	.quad	0x3fbd29dc725c3dee              # double 0.11391999999999999
	.quad	0x3fd8646f15619115              # double 0.38113000000000002
	.quad	0x3fee228dc981beb2              # double 0.94171800000000006
	.quad	0x3f9118c197e56473              # double 0.016695999999999999
	.quad	0x3fea6cc814d7279a              # double 0.82577900000000004
	.quad	0x3fe83c77143393ab              # double 0.75738099999999997
	.quad	0x3fe431337eb28d86              # double 0.63100599999999996
	.quad	0x3fe22159817b95a3              # double 0.56657100000000005
	.quad	0x3fdd6b441bb8c32b              # double 0.45967200000000003
	.quad	0x3feb902795703f2d              # double 0.86134699999999997
	.quad	0x3fd99c347e8ccdd9              # double 0.40015899999999999
	.quad	0x3fdc8fc9363f572e              # double 0.44627600000000001
	.quad	0x3fe0eaaf35e310dc              # double 0.52864800000000001
	.quad	0x3fdd04ddb5525cc4              # double 0.45342199999999999
	.quad	0x3fd0710880d801b4              # double 0.25689899999999999
	.quad	0x3fd42fe82517e77d              # double 0.31542399999999998
	.quad	0x3fcecf0f9d2bf551              # double 0.24069399999999999
	.quad	0x3fe9bba3443d46b2              # double 0.80415499999999995
	.quad	0x3fc76523704790b8              # double 0.18277399999999999
	.quad	0x3fce0a30db6a1e82              # double 0.23468600000000001
	.quad	0x3fb0fca42aed1394              # double 0.066354999999999997
	.quad	0x3fec8e92d55a3a08              # double 0.89240399999999998
	.quad	0x3fd8fe586013660e              # double 0.39052399999999998
	.quad	0x3fdab780346dc5d6              # double 0.41744999999999999
	.quad	0x3fe5220ff540895d              # double 0.660408
	.quad	0x3fecde529bae46d0              # double 0.90213900000000002
	.quad	0x3fe4ceca686e7e63              # double 0.65024300000000002
	.quad	0x3fd5cce1c58255b0              # double 0.34062999999999999
	.quad	0x3fe264883fd50225              # double 0.57477199999999995
	.quad	0x3fe3d4f3775b8130              # double 0.61974499999999999
	.quad	0x3fd41e8a2ec28b2a              # double 0.31436399999999998
	.quad	0x3fe8ab29e4d5d80e              # double 0.77089399999999997
	.quad	0x3fef846c764adff8              # double 0.98491499999999998
	.quad	0x3fe569a2c669057d              # double 0.66914499999999999
	.quad	0x3fe3a0817fc7607c              # double 0.61334299999999997
	.quad	0x3fe83d3c36113405              # double 0.75747500000000001
	.quad	0x3fedb5b91f70de8f              # double 0.92843299999999995
	.quad	0x3fcce429e0a41a26              # double 0.225713
	.quad	0x3fe007dd44135547              # double 0.50095999999999996
	.quad	0x3fc51a4bdba0a527              # double 0.16486500000000001
	.quad	0x3fe1a2df9378ee28              # double 0.55113199999999996
	.quad	0x3fe17de5082cf52c              # double 0.54661800000000005
	.quad	0x3fe5de939eadd591              # double 0.68342000000000003
	.quad	0x3fe312cf0f9d2bf5              # double 0.59604599999999996
	.quad	0x3fe36047d3d4280b              # double 0.60550300000000001
	.quad	0x3fdc5529fe004b7f              # double 0.44269799999999998
	.quad	0x3fc5432873bc903f              # double 0.16611200000000001
	.quad	0x3fe9a06a6e32e382              # double 0.80083199999999999
	.quad	0x3fec1f7b5aea3162              # double 0.87884300000000004
	.quad	0x3fe3276102795704              # double 0.59855700000000001
	.quad	0x3fcbc475e6362a5e              # double 0.21693299999999999
	.quad	0x3fd64ff0025bfad3              # double 0.34862900000000002
	.quad	0x3fd3c669057d1783              # double 0.30898500000000001
	.quad	0x3fd01d4738a3b57c              # double 0.25178699999999998
	.quad	0x3fe5586a8fc0d2c4              # double 0.66704300000000005
	.quad	0x3fe4c9a34ca0c283              # double 0.64961400000000002
	.quad	0x3fd84c1a8ac5c140              # double 0.37964500000000001
	.quad	0x3fe3239a38fbca10              # double 0.59809599999999996
	.quad	0x3fda1e14bdfd2631              # double 0.408086
	.quad	0x3f84d940789613d3              # double 0.01018
	.quad	0x3fdb7c393682730c              # double 0.42945699999999998
	.quad	0x3fe8abc72e275ab8              # double 0.77096900000000002
	.quad	0x3fa27c17a89331a1              # double 0.036103000000000003
	.quad	0x3fd746f156191149              # double 0.363705
	.quad	0x3fe231572580c309              # double 0.568523
	.quad	0x3fd80ea5b530ced5              # double 0.37589400000000001
	.quad	0x3feb6b91b3f20a74              # double 0.856881
	.quad	0x3fca8d3ae685db77              # double 0.20743500000000001
	.quad	0x3fe6ba8826aa8eb4              # double 0.71026999999999996
	.quad	0x3fe7c96ededaec4a              # double 0.74333899999999997
	.quad	0x3fdd9b8887229e90              # double 0.46261799999999997
	.quad	0x3fd93586ca89fc6e              # double 0.39389200000000002
	.quad	0x3fed5c6e2a80064b              # double 0.91753300000000004
	.quad	0x3fe688b545c78a6e              # double 0.70418800000000004
	.quad	0x3fd6d1b71758e219              # double 0.35654999999999998
	.quad	0x3fe18d8665e02ea9              # double 0.54852599999999996
	.quad	0x3fdbb1ee2435696e              # double 0.43273499999999998
	.quad	0x3fcafe3f359ff4fd              # double 0.21088399999999999
	.quad	0x3fc343e963dc486b              # double 0.15051
	.quad	0x3fe8c1b75a74c09c              # double 0.77364699999999997
	.quad	0x3fef9ca5bd944aa5              # double 0.98787199999999997
	.quad	0x3fec408b75ea67e8              # double 0.88287899999999997
	.quad	0x3feb33508f648c72              # double 0.85001400000000005
	.quad	0x3fe0a003ab862b28              # double 0.51953300000000002
	.quad	0x3fdfe2046c764ae0              # double 0.49817
	.quad	0x3fd4583621fafc8b              # double 0.317884
	.quad	0x3fde87724fa8b4c0              # double 0.47701700000000002
	.quad	0x3fe6d573647baa9b              # double 0.71355599999999997
	.quad	0x3fe5cf97edc7ef17              # double 0.68159099999999995
	.quad	0x3fef1a847b24638d              # double 0.97198700000000004
	.quad	0x3fa0a3d70a3d70a4              # double 0.032500000000000001
	.quad	0x3fe896249a133c1d              # double 0.76832800000000001
	.quad	0x3fdf4be40420f6f1              # double 0.48900700000000002
	.quad	0x3fe6f74cd31769a9              # double 0.71768799999999999
	.quad	0x3fe7d834091c0874              # double 0.74514199999999997
	.quad	0x3feb365cb35f3d7d              # double 0.85038599999999998
	.quad	0x3fba018a43bb40b3              # double 0.101586
	.quad	0x3f6455219a847b24              # double 0.0024819999999999998
	.quad	0x3fea55347a5b0ff1              # double 0.82290099999999999
	.quad	0x3fd7ee3d5fdcdf6a              # double 0.37391600000000003
	.quad	0x3fc3d1ed9dfdac69              # double 0.15484400000000001
	.quad	0x3fc940789613d31c              # double 0.19728000000000001
	.quad	0x3fe138fffbce4218              # double 0.53820800000000002
	.quad	0x3fdcae4b018611fd              # double 0.44813799999999998
	.quad	0x3fe0598e10cf5b1d              # double 0.51093200000000005
	.quad	0x3fdf23422467be55              # double 0.48652699999999999
	.quad	0x3fdb1a6937d1fe65              # double 0.423487
	.quad	0x3fc8e51d25aab474              # double 0.194492
	.quad	0x3fdb216c61522a6f              # double 0.42391499999999999
	.quad	0x3fae93e1c9b41398              # double 0.059721999999999997
	.quad	0x3f6cc74b838c111b              # double 0.0035130000000000001
	.quad	0x3fee82c9081c2e34              # double 0.953465
	.quad	0x3feb8f55de58e64b              # double 0.86124699999999998
	.quad	0x3fe82b68cef672b9              # double 0.75529900000000005
	.quad	0x3fc2cc2d6a9c560c              # double 0.14685599999999999
	.quad	0x3fef8c9d9d3458cd              # double 0.98591499999999998
	.quad	0x3fdb7faa044ae85c              # double 0.42966700000000002
	.quad	0x3fde11904b3c3e75              # double 0.46982200000000002
	.quad	0x3fe604fb1183b603              # double 0.68810800000000005
	.quad	0x3fe8d66cf41f212d              # double 0.77617499999999995
	.quad	0x3fe6c8882f0e0a85              # double 0.71197900000000003
	.quad	0x3fb0b7a1c25d0742              # double 0.065301999999999999
	.quad	0x3fee46cb966be7b0              # double 0.94614200000000004
	.quad	0x3fc4660a2014727e              # double 0.15936400000000001
	.quad	0x3fb3c0a06e9ff0cc              # double 0.077158000000000004
	.quad	0x3fe61dd7ecbb7f9d              # double 0.69114299999999995
	.quad	0x3fa60b2c83ec892b              # double 0.043054000000000002
	.quad	0x3fc0c55c96030c24              # double 0.131023
	.quad	0x3fce6833c60029f1              # double 0.23755499999999999
	.quad	0x3fee04901d19157b              # double 0.93805700000000003
	.quad	0x3fd48c6d612c6ac2              # double 0.321071
	.quad	0x3fc55ce18266772d              # double 0.16689699999999999
	.quad	0x3fcff8012dfd694d              # double 0.24975600000000001
	.quad	0x3fb34aba38759253              # double 0.075358999999999995
	.quad	0x3fe7d1eb851eb852              # double 0.74437500000000001
	.quad	0x3fb0e6c093d96638              # double 0.066020999999999996
	.quad	0x3fbf8e1932d6ece1              # double 0.123262
	.quad	0x3fd9bf1a5ca29846              # double 0.40228900000000001
	.quad	0x3fd67e5a78f25a25              # double 0.351462
	.quad	0x3fec8a958537e2c5              # double 0.89191699999999996
	.quad	0x3fdf679463cfb331              # double 0.49069699999999999
	.quad	0x3fe2cc3c18b502ac              # double 0.58743100000000004
	.quad	0x3fe0d8127b2cc708              # double 0.52637599999999996
	.quad	0x3fd22ca148ba83f5              # double 0.283974
	.quad	0x3fed9ee675147f13              # double 0.925647
	.quad	0x3fa57afea3df6db9              # double 0.041953999999999998
	.quad	0x3fe577e80389f83c              # double 0.67088700000000001
	.quad	0x3fd06f2e8c0485a1              # double 0.25678600000000001
	.quad	0x3fd087df5cf2495e              # double 0.25829299999999999
	.quad	0x3fb7f2e48e8a71de              # double 0.093549999999999994
	.quad	0x3fe53940fecdd0d9              # double 0.66323900000000002
	.quad	0x3fe72059a73b42cc              # double 0.72269899999999998
	.quad	0x3fe0dbe5d9e40c84              # double 0.52684299999999995
	.quad	0x3feea832b990afe6              # double 0.95803199999999999
	.quad	0x3fc782f512663411              # double 0.18368399999999999
	.quad	0x3fe96cefed63454a              # double 0.79454800000000003
	.quad	0x3fd5db8348f53c58              # double 0.34152300000000002
	.quad	0x3fe12bbecaab8a5d              # double 0.53659000000000001
	.quad	0x3fcbbf8b9baa1512              # double 0.216783
	.quad	0x3fe19991361dc93f              # double 0.54999600000000004
	.quad	0x3f9fe1975f2cb641              # double 0.031133999999999998
	.quad	0x3fe44c0379314446              # double 0.63427900000000004
	.quad	0x3fe61a2e7f6f4be8              # double 0.69069599999999998
	.quad	0x3fe06514c22ee419              # double 0.51233899999999999
	.quad	0x3fef4fc1df3300de              # double 0.97848599999999997
	.quad	0x3fe62fa7221858bc              # double 0.69331699999999996
	.quad	0x3fe91f212d773190              # double 0.78505000000000003
	.quad	0x3fcdaf42784a9479              # double 0.23191100000000001
	.quad	0x3fea716f4384ba0f              # double 0.82634700000000005
	.quad	0x3fe8c47e49b1fab9              # double 0.77398599999999995
	.quad	0x3f9f605ab3aabcd8              # double 0.030641000000000002
	.quad	0x3fb0f82f51266341              # double 0.066286999999999999
	.quad	0x3fc14a7f8012dfd7              # double 0.13508600000000001
	.quad	0x3fc4685553ef6b5d              # double 0.15943399999999999
	.quad	0x3fd6994e1a3f4667              # double 0.353107
	.quad	0x3fe1a3a4b5568e82              # double 0.55122599999999999
	.quad	0x3fe6f84449dbec25              # double 0.71780600000000006
	.quad	0x3fe1717bd8be7297              # double 0.545103
	.quad	0x3fe9b0a4e379b77c              # double 0.80281299999999999
	.quad	0x3fe06ef3d3a1d324              # double 0.513544
	.quad	0x3fe6bd0e12e83a11              # double 0.71057800000000004
	.quad	0x3fc465f9591cd1c8              # double 0.159362
	.quad	0x3fd57136a400fba9              # double 0.33503500000000003
	.quad	0x3fc50a1be2b4959e              # double 0.16437099999999999
	.quad	0x3fd96e08f2170931              # double 0.397341
	.quad	0x3fe600de4c51116b              # double 0.68760600000000005
	.quad	0x3fcb6af038e29f9d              # double 0.214201
	.quad	0x3fe22e429e0a41a2              # double 0.56814699999999996
	.quad	0x3fda3964a59c065b              # double 0.40975299999999998
	.quad	0x3f749b62c77574f7              # double 0.0050309999999999999
	.quad	0x3fc2436fc158fb44              # double 0.142683
	.quad	0x3fcee83a109d0636              # double 0.24146200000000001
	.quad	0x3fa2a10e02214270              # double 0.036385000000000001
	.quad	0x3febdeedcc20d563              # double 0.87096300000000004
	.quad	0x3fd48ffb8b263950              # double 0.32128800000000002
	.quad	0x3fd779463cfb3312              # double 0.36677700000000002
	.quad	0x3fd456366d7a56de              # double 0.31776199999999999
	.quad	0x3fe697c5ef62f9ca              # double 0.70602699999999996
	.quad	0x3fecdc91d14e3bcd              # double 0.90192499999999998
	.quad	0x3fc700bcbe61cfff              # double 0.17971000000000001
	.quad	0x3fed4b1465e89225              # double 0.91541499999999998
	.quad	0x3fea5ecc3e3193f7              # double 0.82407200000000003
	.quad	0x3fc5446f9b994e1a              # double 0.16615099999999999
	.quad	0x3fea9a77e5eaab04              # double 0.83135599999999998
	.quad	0x3fe07ccc03793144              # double 0.51523399999999997
	.quad	0x3fe96b50b0f27bb3              # double 0.79435
	.quad	0x3fb055eaee2003ac              # double 0.063811000000000007
	.quad	0x3fefd14a0a0f4d7b              # double 0.99429800000000001
	.quad	0x3fef5099e0e73605              # double 0.97858900000000004
	.quad	0x3fb6aa2a0a958538              # double 0.088534000000000002
	.quad	0x3fe2d43d03968d76              # double 0.58840800000000004
	.quad	0x3fe826c3b927d45a              # double 0.75473199999999996
	.quad	0x3fe2234a87e38eb0              # double 0.56680799999999998
	.quad	0x3fd13ee1bd1ed9e0              # double 0.26946300000000001
	.quad	0x3fe5ee3715400325              # double 0.68532899999999997
	.quad	0x3fb3ffef39085f4a              # double 0.078123999999999998
	.quad	0x3fe3f401c4fc1df3              # double 0.62353599999999998
	.quad	0x3fae85db76b3bb84              # double 0.059615000000000001
	.quad	0x3fca0841ede1198b              # double 0.203377
	.quad	0x3fee538476f2a5a4              # double 0.94769499999999995
	.quad	0x3fed62c77574f723              # double 0.91830800000000001
	.quad	0x3fc758fb43d89ce5              # double 0.18240300000000001
	.quad	0x3fc697aeddce7cd0              # double 0.17650399999999999
	.quad	0x3fe25af6c69b5a64              # double 0.573604
	.quad	0x3fd216bdb1a6d699              # double 0.282638
	.quad	0x3fe9d9ee88df3733              # double 0.80785300000000004
	.quad	0x3f9e132b55ef1fde              # double 0.02937
	.quad	0x3fdd7ec3547e0696              # double 0.46086199999999999
	.quad	0x3fe34ce5f7403dde              # double 0.60313700000000003
	.quad	0x3fe40d002e2328fa              # double 0.62658700000000001
	.quad	0x3fdf35653c9abb02              # double 0.48763400000000001
	.quad	0x3fe6aa087ca643cc              # double 0.708256
	.quad	0x3fd8e924f227d029              # double 0.38923000000000002
	.quad	0x3fe90e5604189375              # double 0.78300000000000003
	.quad	0x3fd0e6644d877250              # double 0.26406200000000002
	.quad	0x3fe2af901083dbc2              # double 0.58393099999999998
	.quad	0x3fdfda5daf07bfe8              # double 0.49770300000000001
	.quad	0x3fea759ee88df373              # double 0.82685799999999998
	.quad	0x3fe5a2ccb3a2595c              # double 0.67612300000000003
	.quad	0x3fd7dbd2fa0d77b8              # double 0.37279200000000001
	.quad	0x3fe77ed84d338f7a              # double 0.73423400000000005
	.quad	0x3fe5d475a31a4bdc              # double 0.68218500000000004
	.quad	0x3fd9743201040bfe              # double 0.39771699999999999
	.quad	0x3fe4bd5bab21815a              # double 0.648115
	.quad	0x3fe2521ff2e48e8a              # double 0.57252499999999995
	.quad	0x3fb4ec41dd1a21ea              # double 0.081729999999999997
	.quad	0x3fe82e9468017119              # double 0.75568599999999997
	.quad	0x3fe54ba51a005c46              # double 0.66548399999999996
	.quad	0x3fb4955b4677b396              # double 0.080404000000000003
	.quad	0x3f918a43bb40b34e              # double 0.017128999999999998
	.quad	0x3fdc0060780fdc16              # double 0.437523
	.quad	0x3fd2008205ff1d82              # double 0.281281
	.quad	0x3fefc710cb295e9e              # double 0.99304999999999999
	.quad	0x3fef9b71758e2196              # double 0.98772499999999996
	.quad	0x3fd25579af1886e0              # double 0.28646700000000003
	.quad	0x3f9ba01eeed8904f              # double 0.026977999999999999
	.quad	0x3fe4ffdc5931ca7d              # double 0.65623299999999996
	.quad	0x3fe7711947cfa26a              # double 0.73255599999999998
	.quad	0x3fc6eee957470eb2              # double 0.17916599999999999
	.quad	0x3fe3719d66adb403              # double 0.60761900000000002
	.quad	0x3fe52c18f81e8a2f              # double 0.66163300000000003
	.quad	0x3fe41635610adcd3              # double 0.62771100000000002
	.quad	0x3fe1328f9f44d445              # double 0.53742199999999996
	.quad	0x3fee60fc2eba27af              # double 0.94933900000000004
	.quad	0x3feba5269595feda              # double 0.86390999999999996
	.quad	0x3fe5e542e557de0d              # double 0.68423599999999996
	.quad	0x3fc29310129cbab6              # double 0.14511299999999999
	.quad	0x3fec776e6106ab15              # double 0.88957900000000001
	.quad	0x3fea8194c0160525              # double 0.828318
	.quad	0x3fbdaff2a172abef              # double 0.115966
	.quad	0x3fdfe39b456b441c              # double 0.49826700000000002
	.quad	0x3fe2ea465a57646b              # double 0.59109800000000001
	.quad	0x3fd97e0ac7da1ec5              # double 0.39831800000000001
	.quad	0x3fea58d1526d8b1e              # double 0.82334200000000002
	.quad	0x3fd888051c9f72f7              # double 0.38330199999999998
	.quad	0x3fd20daa0cae642c              # double 0.282084
	.quad	0x3fb886df82b1f688              # double 0.095808000000000004
	.quad	0x3fbe33eff1950332              # double 0.11798
	.quad	0x3fe036b8f9b13166              # double 0.50668000000000002
	.quad	0x3fef36544fe36d22              # double 0.97538199999999997
	.quad	0x3fc761bb05faebc4              # double 0.18267
	.quad	0x3fe9232096787ce9              # double 0.78553799999999996
	.quad	0x3fd9b641700cd856              # double 0.40174900000000002
	.quad	0x3fee0ff972474539              # double 0.93945000000000001
	.quad	0x3fd61932d6ece13f              # double 0.34528799999999998
	.quad	0x3fba12c6ac215b9a              # double 0.101849
	.quad	0x3fcd45308bb90646              # double 0.22867399999999999
	.quad	0x3fdac714fce746cc              # double 0.41840100000000002
	.quad	0x3fe1bd273d5bab22              # double 0.55434000000000005
	.quad	0x3fe4a5460aa64c30              # double 0.64517500000000005
	.quad	0x3f9c0d2c386d2ed8              # double 0.027394000000000002
	.quad	0x3fe5082491afc04d              # double 0.65724400000000005
	.quad	0x3fd53ac929aa1d75              # double 0.33171299999999998
	.quad	0x3feac22ee41919ac              # double 0.83620399999999994
	.quad	0x3fcde718a86d71f3              # double 0.23361499999999999
	.quad	0x3fe8e17e34b94531              # double 0.77752600000000005
	.quad	0x3fe31be09bb6aa4c              # double 0.59715300000000004
	.quad	0x3fae4f3343fa2ad4              # double 0.059198000000000001
	.quad	0x3feb4a66559f6ec6              # double 0.85283200000000003
	.quad	0x3fd80de093532e7b              # double 0.37584699999999999
	.quad	0x3fe9e290eed02cd4              # double 0.80890700000000004
	.quad	0x3fed758e219652bd              # double 0.92059999999999997
	.quad	0x3fdfc3504c48adef              # double 0.49629600000000001
	.quad	0x3fe2ec43f5f91601              # double 0.59134100000000001
	.quad	0x3fa57ff9b56323bc              # double 0.041992000000000002
	.quad	0x3fd24284dfce3151              # double 0.28531000000000001
	.quad	0x3fbe7bf61aa3f035              # double 0.119079
	.quad	0x3fe065de15ca6ca0              # double 0.51243499999999997
	.quad	0x3fd9cdd50a88effe              # double 0.40318799999999999
	.quad	0x3fba77d523b3636f              # double 0.103391
	.quad	0x3f7455219a847b24              # double 0.0049639999999999997
	.quad	0x3fef4382a12f9011              # double 0.97699100000000005
	.quad	0x3fd186bdf4c2b51c              # double 0.27384900000000001
	.quad	0x3fe411dffc5479d5              # double 0.62718200000000002
	.quad	0x3fbfef5a964e8b7e              # double 0.124746
	.quad	0x3fb1c91d14e3bcd3              # double 0.069474999999999995
	.quad	0x3fe833b7521144cc              # double 0.75631300000000001
	.quad	0x3fbf3b7521144cbe              # double 0.122001
	.quad	0x3fe6708aac96cc60              # double 0.70123800000000003
	.quad	0x3fe88dfbd6a593a3              # double 0.76733200000000001
	.quad	0x3fc7d51b4fe79ee0              # double 0.186191
	.quad	0x3feaa326e115592e              # double 0.83241600000000004
	.quad	0x3fe51f23465625a7              # double 0.66005100000000005
	.quad	0x3fe830813cab81f9              # double 0.75592099999999995
	.quad	0x3fd3455219a847b2              # double 0.30110599999999998
	.quad	0x3fe685f6ba0620ab              # double 0.70385299999999995
	.quad	0x3fc4d22424a276b8              # double 0.162663
	.quad	0x3fde709fa54c5543              # double 0.47562399999999999
	.quad	0x3feb2ff08893b7d8              # double 0.84960199999999997
	.quad	0x3fe368c692f6e829              # double 0.60653999999999997
	.quad	0x3fd55568e820e62a              # double 0.33333800000000002
	.quad	0x3fe0e6be7afa7222              # double 0.52816700000000005
	.quad	0x3feaabdc26dce39b              # double 0.83347899999999997
	.quad	0x3fe0d72de43ed95a              # double 0.52626700000000004
	.quad	0x3fd083b1d0c80410              # double 0.25803799999999999
	.quad	0x3fe4b9496249a134              # double 0.64761800000000003
	.quad	0x3fe8264c2f837b4a              # double 0.75467499999999998
	.quad	0x3fdc14163779e9d1              # double 0.438726
	.quad	0x3fe61feeb2d0a244              # double 0.69139799999999996
	.quad	0x3fb579af1886df83              # double 0.083888000000000004
	.quad	0x3fb005814940bbb2              # double 0.062584000000000001
	.quad	0x3feace7685985ad5              # double 0.83770299999999998
	.quad	0x3fa870b8cfbfc654              # double 0.047735
	.quad	0x3fdee55c0fcb4f1e              # double 0.48274899999999998
	.quad	0x3fc73e681a9b8cb9              # double 0.181592
	.quad	0x3fc1c9abb01c92de              # double 0.13896700000000001
	.quad	0x3fe4a93d102bc72e              # double 0.64565899999999998
	.quad	0x3fb379314445aa2e              # double 0.076067999999999997
	.quad	0x3febf082491afc05              # double 0.87310900000000002
	.quad	0x3fddb9c7368ad688              # double 0.46446399999999999
	.quad	0x3fdc3b927d45a5fc              # double 0.44113599999999997
	.quad	0x3fd08d8ec95bff04              # double 0.25863999999999998
	.quad	0x3fddc5b078d92fb2              # double 0.46519100000000002
	.quad	0x3fef0b26394face6              # double 0.97011099999999995
	.quad	0x3fbda1db877ab325              # double 0.11575100000000001
	.quad	0x3fecdae3e6c4c597              # double 0.90171999999999997
	.quad	0x3fd41d5c31593e60              # double 0.31429200000000002
	.quad	0x3fdde9ea14057082              # double 0.46740199999999998
	.quad	0x3fa50e3476295209              # double 0.041124000000000001
	.quad	0x3fe27b9389b52008              # double 0.57758500000000002
	.quad	0x3fda4ad362e90364              # double 0.41081699999999999
	.quad	0x3fe0262456f75d9a              # double 0.50465599999999999
	.quad	0x3fed854ef459d990              # double 0.92252299999999998
	.quad	0x3fdef5275ee99a63              # double 0.483713
	.quad	0x3fc8abe6a337a80d              # double 0.192746
	.quad	0x3fc61fc8f32378ab              # double 0.172845
	.quad	0x3fc4225fa658c4bd              # double 0.15729899999999999
	.quad	0x3fe6bb0c4588a04d              # double 0.71033299999999999
	.quad	0x3fed1016ce789e77              # double 0.90821399999999997
	.quad	0x3fb5f14983d79075              # double 0.085712999999999998
	.quad	0x3fe3eadf71eafee7              # double 0.622421
	.quad	0x3fd0d3e4ef0281ba              # double 0.26293299999999997
	.quad	0x3fe174080f98fa37              # double 0.54541399999999995
	.quad	0x3fe4d9a52263d817              # double 0.65156800000000004
	.quad	0x3fe753d20f2becee              # double 0.72898200000000002
	.quad	0x3fc0c49ba5e353f8              # double 0.13100000000000001
	.quad	0x3fd287a8d64d7f0f              # double 0.28953000000000001
	.quad	0x3fec493c89f40a28              # double 0.88393999999999995
	.quad	0x3fe3fe8ee6b8305e              # double 0.62482400000000005
	.quad	0x3fe6cd72799a1fd1              # double 0.71257899999999996
	.quad	0x3fd3a1554fbdad75              # double 0.30672199999999999
	.quad	0x3fa81f10667f90da              # double 0.047112000000000001
	.quad	0x3fd7a38b8ae31d71              # double 0.36935699999999999
	.quad	0x3fcbfa1a0cf1800a              # double 0.21856999999999999
	.quad	0x3facadddf43c7d5f              # double 0.056014000000000001
	.quad	0x3fe456b00ffda405              # double 0.63558199999999998
	.quad	0x3fb87a7c9de05037              # double 0.095618999999999996
	.quad	0x3fd2e82d7b634dad              # double 0.29542099999999999
	.quad	0x3fee983947496aad              # double 0.95608199999999999
	.quad	0x3fb5f4e4430b178b              # double 0.085767999999999997
	.quad	0x3fe49813879c4114              # double 0.64356400000000002
	.quad	0x3fb24cf8d716d2aa              # double 0.071486999999999995
	.quad	0x3fcf926c7eae5bc8              # double 0.24665599999999999
	.quad	0x3fe2993b3a68b19a              # double 0.58120499999999997
	.quad	0x3fe7c957cd466f50              # double 0.74332799999999999
	.quad	0x3fe5efd21ff2e48f              # double 0.68552500000000005
	.quad	0x3fdadb402d16b980              # double 0.41963200000000001
	.quad	0x3fca4b5dcc63f141              # double 0.205425
	.quad	0x3fe8a56bca5375c9              # double 0.77019300000000002
	.quad	0x3f9c3d68405b39e2              # double 0.027577999999999998
	.quad	0x3f6691a75cd0bb6f              # double 0.0027550000000000001
	.quad	0x3fd006c43f5f9160              # double 0.250413
	.quad	0x3fe5cd91eeaa6d26              # double 0.68134399999999995
	.quad	0x3fb743419e300150              # double 0.090870000000000006
	.quad	0x3fc874c8ffb8b264              # double 0.19106400000000001
	.quad	0x3fe5d974e65bea0c              # double 0.68279500000000004
	.quad	0x3fe16b356da0168b              # double 0.54433699999999996
	.quad	0x3fd5a1a500d5e8d5              # double 0.33799099999999999
	.quad	0x3fdc41aac53b0814              # double 0.44150800000000001
	.quad	0x3fc6dd82fd75e204              # double 0.17863499999999999
	.quad	0x3fe1507c84b5dcc6              # double 0.54107499999999997
	.quad	0x3fe5c3ac929aa1d7              # double 0.68013599999999996
	.quad	0x3fd0ec0f88333fc8              # double 0.26440799999999998
	.quad	0x3fd2b2fa93af74cd              # double 0.29217399999999999
	.quad	0x3fcee0c9d9d3458d              # double 0.241235
	.quad	0x3fad477bbf93ff26              # double 0.057186000000000001
	.quad	0x3fe4cb295e9e1b09              # double 0.64980000000000004
	.quad	0x3fe1daa4fca42aed              # double 0.55793999999999999
	.quad	0x3fe6630a915379fb              # double 0.69959000000000005
	.quad	0x3fc52b990afe60c4              # double 0.16539300000000001
	.quad	0x3fd25c5b4aa9717e              # double 0.286887
	.quad	0x3fde0bc7b45f17be              # double 0.46946900000000003
	.quad	0x3fe1e9b5a63f9a4a              # double 0.55977900000000003
	.quad	0x3fecb07af20ea5b5              # double 0.89654299999999998
	.quad	0x3fa23b7952d234ec              # double 0.035610000000000003
	.quad	0x3feba01cd5f99c39              # double 0.86329500000000003
	.quad	0x3fc87b02d59d55e7              # double 0.19125400000000001
	.quad	0x3fbed538ac18f81f              # double 0.12044100000000001
	.quad	0x3fdaec3116228134              # double 0.42066599999999998
	.quad	0x3fe787a8d64d7f0f              # double 0.73531000000000002
	.quad	0x3fca39042d8c2a45              # double 0.20486499999999999
	.quad	0x3fdec9de05037500              # double 0.48107100000000003
	.quad	0x3fd47ebaf102363b              # double 0.32023499999999999
	.quad	0x3fef46a5d6bebe16              # double 0.97737399999999997
	.quad	0x3fc1d4280ae10492              # double 0.13928699999999999
	.quad	0x3fe60f47304039ac              # double 0.68936500000000001
	.quad	0x3fdf2c55c96030c2              # double 0.48708099999999999
	.quad	0x3fe92dc8fb86f47b              # double 0.78683899999999996
	.quad	0x3fe26071c53f39d2              # double 0.57427300000000003
	.quad	0x3fcd6c3760bf5d79              # double 0.22986500000000001
	.quad	0x3fe9163779e9d0ea              # double 0.78396200000000005
	.quad	0x3fe089e774eebf66              # double 0.51683400000000002
	.quad	0x3fe786cebbba55d2              # double 0.73520600000000003
	.quad	0x3fe7932d6ece13f5              # double 0.73671600000000004
	.quad	0x3fe3444e0daa0cae              # double 0.60208799999999996
	.quad	0x3fe834202d9cf13d              # double 0.75636300000000001
	.quad	0x3fb742cc2d6a9c56              # double 0.090862999999999999
	.quad	0x3fe89eadd590c0ad              # double 0.76937
	.quad	0x3fda9207d4e09785              # double 0.415163
	.quad	0x3f9271bcdbbe0158              # double 0.018012
	.quad	0x3fe0a57214f0520d              # double 0.52019599999999999
	.quad	0x3fe417b95a294142              # double 0.62789600000000001
	.quad	0x3fedded288ce703b              # double 0.93345
	.quad	0x3fb01a5870da5daf              # double 0.062902
	.quad	0x3fe6d41d8e864021              # double 0.71339300000000005
	.quad	0x3fea781c714fce74              # double 0.82716199999999995
	.quad	0x3fae5668c2613900              # double 0.059253
	.quad	0x3fe869f8c21e1d21              # double 0.76293599999999995
	.quad	0x3fe0e7caea747d80              # double 0.52829499999999996
	.quad	0x3fd056abde3fbbd8              # double 0.25529000000000002
	.quad	0x3fe7af01754b05b8              # double 0.74011300000000002
	.quad	0x3feec226809d4952              # double 0.96120000000000005
	.quad	0x3fcbbe9856a37ac4              # double 0.216754
	.quad	0x3fe1ea897635e743              # double 0.55988000000000004
	.quad	0x3fd892d55a3a083a              # double 0.38396200000000003
	.quad	0x3fee7dfe32a0663c              # double 0.95287999999999994
	.quad	0x3feabc31df761cbd              # double 0.83547300000000002
	.quad	0x3fd1fdf3b645a1cb              # double 0.28112500000000001
	.quad	0x3fca9930be0ded29              # double 0.20780000000000001
	.quad	0x3fd3edd4845132f8              # double 0.31139099999999997
	.quad	0x3fea03925bb7b6bb              # double 0.81293599999999999
	.quad	0x3fecd50870110a13              # double 0.90100499999999994
	.quad	0x3fd4c1c6088d6d3b              # double 0.32432699999999998
	.quad	0x3feff69ec2ce464a              # double 0.99885500000000005
	.quad	0x3fed8f53c579f234              # double 0.92374599999999995
	.quad	0x3fdf86a098915bdd              # double 0.49259199999999997
	.quad	0x3fd45a14488c60cc              # double 0.317998
	.quad	0x3fc74c5da6a44418              # double 0.18201800000000001
	.quad	0x3fbd77c88e79aae7              # double 0.115109
	.quad	0x3fe5f74aba387592              # double 0.68643699999999996
	.quad	0x3fd3f893faf42785              # double 0.31204700000000002
	.quad	0x3fd8e7c49fd7a13c              # double 0.38914599999999999
	.quad	0x3fe4aa5a469d7343              # double 0.64579500000000001
	.quad	0x3fe59a62ed352221              # double 0.67509600000000003
	.quad	0x3fb18cb07d0aed9a              # double 0.068553000000000003
	.quad	0x3fc1ca85caafbc1b              # double 0.13899300000000001
	.quad	0x3fd06848beb5b2d5              # double 0.25636500000000001
	.quad	0x3fdcd352220bc383              # double 0.45039800000000002
	.quad	0x3fc3059641f64495              # double 0.14860799999999999
	.quad	0x3fe6d84901d19158              # double 0.71390200000000004
	.quad	0x3fb4bb1af3a14cec              # double 0.080979999999999996
	.quad	0x3fd594dd72367e41              # double 0.33721099999999998
	.quad	0x3fe72d794a6eb91b              # double 0.72430099999999997
	.quad	0x3fe90ab713272431              # double 0.78255799999999998
	.quad	0x3fcf22f2734f82f5              # double 0.243254
	.quad	0x3fe8fecbb7f9d6f1              # double 0.78110299999999999
	.quad	0x3fcf8130164840e1              # double 0.24612999999999999
	.quad	0x3fd5cc426351def0              # double 0.34059200000000001
	.quad	0x3fcadedaec4a4096              # double 0.209926
	.quad	0x3fcfa908a265f0f6              # double 0.24734600000000001
	.quad	0x3fe916e58a32f449              # double 0.78404499999999999
	.quad	0x3fde72ef0ae53650              # double 0.47576499999999999
	.quad	0x3fd772799a1fd157              # double 0.36636200000000002
	.quad	0x3fbb1b152f3c2dae              # double 0.105882
	.quad	0x3f8417ca2120e1f8              # double 0.0098110000000000002
	.quad	0x3fe881711947cfa2              # double 0.76580099999999995
	.quad	0x3fd586d2ed783dff              # double 0.33635399999999999
	.quad	0x3fea645a1cac0831              # double 0.82474999999999998
	.quad	0x3fe89a9b8cb8e087              # double 0.76887300000000003
	.quad	0x3fb30b8cfbfc6541              # double 0.074395000000000003
	.quad	0x3fe652e514c22ee4              # double 0.69761899999999999
	.quad	0x3fce00eae18ac9f3              # double 0.234403
	.quad	0x3fd384230fcf80dc              # double 0.30493999999999999
	.quad	0x3fb7d2d87f88765c              # double 0.093061000000000005
	.quad	0x3fd74a7f8012dfd7              # double 0.36392200000000002
	.quad	0x3fdbbd7b2031ceaf              # double 0.43343999999999999
	.quad	0x3fe4bcbe61cffeb0              # double 0.64803999999999995
	.quad	0x3fee2999567dbb17              # double 0.94257800000000003
	.quad	0x3fe11a5870da5daf              # double 0.534466
	.quad	0x3fe0cef88b977857              # double 0.52526499999999998
	.quad	0x3fb50e8858ff7597              # double 0.082253000000000007
	.quad	0x3fe3e5d3996fa82f              # double 0.62180500000000005
	.quad	0x3fd90a6b93ccd0ff              # double 0.39126100000000003
	.quad	0x3fec2c59fb1e18f0              # double 0.88041400000000003
	.quad	0x3febb13be22e5de1              # double 0.86538499999999996
	.quad	0x3fb69a8049667b5f              # double 0.088294999999999998
	.quad	0x3fecd78811b1d92b              # double 0.90130999999999994
	.quad	0x3fc7137b07075b3e              # double 0.180282
	.quad	0x3fc2705425f20210              # double 0.14405299999999999
	.quad	0x3fea726d04e618ce              # double 0.82646799999999998
	.quad	0x3feee80e06530058              # double 0.96582699999999999
	.quad	0x3fe256798958d9b6              # double 0.57305600000000001
	.quad	0x3fd7835158b827fa              # double 0.36738999999999999
	.quad	0x3fd860f5e41d4b6a              # double 0.38091799999999998
	.quad	0x3fe89fd5885d3133              # double 0.76951099999999995
	.quad	0x3fe2a817763e4abe              # double 0.58301899999999995
	.quad	0x3feb19c17225b74a              # double 0.84689400000000004
	.quad	0x3feecd6c2efd438d              # double 0.96257599999999998
	.quad	0x3fe10f9096bb98c8              # double 0.53315000000000001
	.quad	0x3fd41ac14c660a20              # double 0.314133
	.quad	0x3fca40d0aaa7ded7              # double 0.20510300000000001
	.quad	0x3fe9581f10667f91              # double 0.79200700000000002
	.quad	0x3fe5736262cba733              # double 0.67033500000000001
	.quad	0x3fecf6f8f041461b              # double 0.90514799999999995
	.quad	0x3fca32c1f42bb667              # double 0.20467399999999999
	.quad	0x3fe9878fabda0dfe              # double 0.79779800000000001
	.quad	0x3f956f75d9a0f0a6              # double 0.020933
	.quad	0x3feecb90214ad363              # double 0.962349
	.quad	0x3fe5a3e39f77292c              # double 0.67625599999999997
	.quad	0x3fe3aa5c5f7c675a              # double 0.61454600000000004
	.quad	0x3fe2c50ce4ead0c4              # double 0.58655400000000002
	.quad	0x3fdfc1acde19fc2b              # double 0.49619600000000003
	.quad	0x3fef844284dfce31              # double 0.98489499999999996
	.quad	0x3fed5c896dd26b72              # double 0.91754599999999997
	.quad	0x3fce1e603d577964              # double 0.23530200000000001
	.quad	0x3fdbd2cbea4ebdd3              # double 0.43474099999999999
	.quad	0x3fc92e8c0485a0be              # double 0.19673299999999999
	.quad	0x3fecbf9e7b80a9df              # double 0.89839100000000005
	.quad	0x3fb7810e8858ff76              # double 0.091813000000000005
	.quad	0x3fc22b94d9407896              # double 0.141955
	.quad	0x3fd28fb00bcbe61d              # double 0.29002
	.quad	0x3fe29bda5119ce07              # double 0.58152499999999996
	.quad	0x3fd4f7b9e060fe48              # double 0.32762000000000002
	.quad	0x3fef8a2ca9ac3654              # double 0.98561699999999996
	.quad	0x3fc8f73c0c1fc8f3              # double 0.195045
	.quad	0x3fd644d87724fa8b              # double 0.34795199999999998
	.quad	0x3fec4f2f123c42a6              # double 0.88466599999999995
	.quad	0x3facc0bdcad14a0a              # double 0.056158
	.quad	0x3fed8283d35eb745              # double 0.92218199999999995
	.quad	0x3feb0b32ce89656f              # double 0.84511700000000001
	.quad	0x3fcd60a63305100a              # double 0.22951199999999999
	.quad	0x3fc55d9a0f0a5eff              # double 0.16691900000000001
	.quad	0x3fd3bc558644523f              # double 0.30836999999999998
	.quad	0x3fea58a548238540              # double 0.82332099999999997
	.quad	0x3fe8d423d9231c65              # double 0.77589600000000003
	.quad	0x3fe7856605ee568a              # double 0.73503399999999997
	.quad	0x3fd8f9acffa7eb6c              # double 0.390239
	.quad	0x3feba426bb55ac04              # double 0.863788
	.quad	0x3fb017ca2120e1f8              # double 0.062863000000000002
	.quad	0x3fc99c5a3e39f773              # double 0.20008400000000001
	.quad	0x3fd90d9d7774aba4              # double 0.39145600000000003
	.quad	0x3fe33fec13b9f128              # double 0.601553
	.quad	0x3fede1c15097c808              # double 0.93380799999999997
	.quad	0x3fe54cc89b0ee49f              # double 0.66562299999999996
	.quad	0x3fe241aac53b0814              # double 0.57051600000000002
	.quad	0x3fae2003ab862b28              # double 0.058838000000000001
	.quad	0x3fe4bac4f7ec3548              # double 0.64779900000000001
	.quad	0x3fed0ba6266fd652              # double 0.90767200000000003
	.quad	0x3fc6aed99cbee808              # double 0.17721100000000001
	.quad	0x3fe5552e2fbe33ad              # double 0.66664800000000002
	.quad	0x3fe1b07d0aed99cc              # double 0.55279400000000001
	.quad	0x3fddd490e66cb103              # double 0.46609899999999999
	.quad	0x3fe74c6e6d9be4cd              # double 0.72807999999999995
	.quad	0x3fee5d701d9f4d38              # double 0.94890600000000002
	.quad	0x3fdaa6ce358298cc              # double 0.416431
	.quad	0x3fbc653005814941              # double 0.110919
	.quad	0x3fd0ba450acc0bdd              # double 0.26136900000000002
	.quad	0x3f9383ad9f0a1be3              # double 0.019057000000000001
	.quad	0x3fe26c8d5c74751d              # double 0.57575100000000001
	.quad	0x3feddddb1209edc0              # double 0.93333200000000005
	.quad	0x3fd6ac8605681ecd              # double 0.35427999999999998
	.quad	0x3fc44f227d028a1e              # double 0.158665
	.quad	0x3fc22036006d0d4a              # double 0.14160800000000001
	.quad	0x3fef71cda2b5a20e              # double 0.98264200000000002
	.quad	0x3fc050507a6bd6e9              # double 0.12745100000000001
	.quad	0x3fda2528ae74f2f1              # double 0.40851799999999999
	.quad	0x3fde0eed02cd39da              # double 0.469661
	.quad	0x3fe1e3d816aceaaf              # double 0.55906299999999998
	.quad	0x3fe88e453d20f2bf              # double 0.76736700000000002
	.quad	0x3feb57b2031ceaf2              # double 0.85445499999999996
	.quad	0x3fe7416df3f96180              # double 0.72673699999999997
	.quad	0x3fdd85f8d2e514c2              # double 0.46130199999999999
	.quad	0x3fe041db0142f61f              # double 0.50803900000000002
	.quad	0x3fd18b69552e2fbe              # double 0.27413399999999999
	.quad	0x3fea260b2c83ec89              # double 0.81714399999999998
	.quad	0x3fb94cb9ecf63800              # double 0.098826999999999998
	.quad	0x3fecf74eebf65dc0              # double 0.90518900000000002
	.quad	0x3f9dec1c1d6cf851              # double 0.029221
	.quad	0x3fb9df86e3b46fdf              # double 0.101067
	.quad	0x3fe14ab1d4f9c1f8              # double 0.54036799999999996
	.quad	0x3fc3cd7060bb2bbb              # double 0.15470700000000001
	.quad	0x3fe2c4651f3e89a9              # double 0.58647400000000005
	.quad	0x3fe87afa7221858c              # double 0.76501200000000002
	.quad	0x3fe929ef5232d2bb              # double 0.78636899999999998
	.quad	0x3fe8c9fb6134ce3e              # double 0.77465600000000001
	.quad	0x3fce745bf26f1dc5              # double 0.237926
	.quad	0x3fee0848387df5cf              # double 0.93851099999999998
	.quad	0x3f9950763a190082              # double 0.024721
	.quad	0x3fae8fd199bb2789              # double 0.059691000000000001
	.quad	0x3fb5ecc3e3193f6c              # double 0.085643999999999998
	.quad	0x3fef9f601797cc3a              # double 0.988205
	.quad	0x3fea7204295a6c5d              # double 0.82641799999999999
	.quad	0x3fd86f8f041461b7              # double 0.38180900000000001
	.quad	0x3fe71cda2b5a20de              # double 0.72227200000000003
	.quad	0x3fb657c914b167ec              # double 0.087276999999999993
	.quad	0x3fefd72367e414e8              # double 0.995012
	.quad	0x3fc178cc9a77e5eb              # double 0.13649900000000001
	.quad	0x3fd9acd9e83e425b              # double 0.401175
	.quad	0x3fe3b6e2eb1c432d              # double 0.61607500000000004
	.quad	0x3fe8753a3ec02f30              # double 0.76431000000000004
	.quad	0x3fd05efe93187619              # double 0.25579800000000003
	.quad	0x3fee08461f9f01b8              # double 0.93850999999999995
	.quad	0x3fd4e2e2b8c75c4b              # double 0.32634800000000003
	.quad	0x3fe48a45d41fa765              # double 0.64187899999999998
	.quad	0x3fa94983d790752e              # double 0.049389000000000002
	.quad	0x3febc7c0f4517614              # double 0.86813399999999996
	.quad	0x3fe67aa044ae85ba              # double 0.70246900000000001
	.quad	0x3fd01e9f2778140e              # double 0.25186900000000001
	.quad	0x3f912c6ac215b9a6              # double 0.016771000000000001
	.quad	0x3fa0a116659d12cb              # double 0.032479000000000001
	.quad	0x3fe7574d594f26af              # double 0.72940700000000003
	.quad	0x3fd23779e9d0e992              # double 0.284636
	.quad	0x3fe0ef8487b99d45              # double 0.52923799999999999
	.quad	0x3fce1709310129cc              # double 0.23507800000000001
	.quad	0x3fb388a8b08dd1e5              # double 0.076303999999999997
	.quad	0x3f8a8d64d7f0ed3e              # double 0.012965000000000001
	.quad	0x3fe3a1a0cf1800a8              # double 0.61348000000000003
	.quad	0x3fddb4f1e4b44a1f              # double 0.464169
	.quad	0x3fdf6a93f290abb4              # double 0.49087999999999998
	.quad	0x3feda745bf26f1dc              # double 0.92666899999999996
	.quad	0x3fb71a08bfc2224f              # double 0.090241000000000002
	.quad	0x3fe2fce0fc2eba28              # double 0.59336900000000004
	.quad	0x3fed73abc947064f              # double 0.92037000000000002
	.quad	0x3fd422ea0fd3b29a              # double 0.31463099999999999
	.quad	0x3f9047d3d4280ae1              # double 0.015899
	.quad	0x3fe46e6d9be4cd75              # double 0.63848000000000005
	.quad	0x3fd01bf7ad4b2746              # double 0.25170700000000001
	.quad	0x3fc335eb7457c0b1              # double 0.15008299999999999
	.quad	0x3fdeb380cb6c7a7d              # double 0.47970600000000002
	.quad	0x3fd261f5be5d9e41              # double 0.28722900000000001
	.quad	0x3fde6cd6c2efd439              # double 0.47539300000000001
	.quad	0x3fe2f038e29f9ce9              # double 0.59182400000000002
	.quad	0x3fcee935b91f70df              # double 0.24149200000000001
	.quad	0x3fe5c49774256bca              # double 0.68024799999999996
	.quad	0x3fdd547e06961c37              # double 0.45828200000000002
	.quad	0x3fbe0221426fe719              # double 0.11722
	.quad	0x3fe54d50ebaade65              # double 0.66568799999999995
	.quad	0x3fe314e1a3f4666f              # double 0.59629900000000002
	.quad	0x3fb7837b4a2339c1              # double 0.091850000000000001
	.quad	0x3fc29adc8fb86f48              # double 0.14535100000000001
	.quad	0x3fa7cf80dc33721d              # double 0.046504999999999998
	.quad	0x3fd44f15e7c8d196              # double 0.31732700000000003
	.quad	0x3fcb46e4c0df58c1              # double 0.21310100000000001
	.quad	0x3fe8445ed4a1ad64              # double 0.75834599999999996
	.quad	0x3fd6e4c942d490e6              # double 0.35771399999999998
	.quad	0x3fed954003254e6e              # double 0.92446899999999999
	.quad	0x3fef59dba908a266              # double 0.97971900000000001
	.quad	0x3fed0ff759685122              # double 0.90819899999999998
	.quad	0x3fe6ec8b43958106              # double 0.71637499999999998
	.quad	0x3fdf30c67168f8e8              # double 0.48735200000000001
	.quad	0x3fd59e98dcdb37ca              # double 0.33780500000000002
	.quad	0x3febfd8cf398e970              # double 0.87470099999999995
	.quad	0x3fed2450acc0bdcb              # double 0.91068300000000002
	.quad	0x3fe5cdc011d3671b              # double 0.68136600000000003
	.quad	0x3fdda0663c74fb55              # double 0.46291500000000002
	.quad	0x3fe38676a7264a17              # double 0.61016400000000004
	.quad	0x3fce427418d6909b              # double 0.236403
	.quad	0x3fe46e807bbb6241              # double 0.63848899999999997
	.quad	0x3fe6d983947496ab              # double 0.71405200000000002
	.quad	0x3fd52dcb1465e892              # double 0.33091999999999999
	.quad	0x3f8fd2630ec31162              # double 0.015538
	.quad	0x3fecabb6672fba02              # double 0.89596100000000001
	.quad	0x3fe5b3e1437c5693              # double 0.67820800000000003
	.quad	0x3fe22a5614df8b15              # double 0.56766799999999995
	.quad	0x3fee56f75d9a0f0a              # double 0.94811599999999996
	.quad	0x3fe1a29845dc8323              # double 0.55109799999999998
	.quad	0x3fe2796bfca85cab              # double 0.577322
	.quad	0x3fd73eb399f5dfec              # double 0.36320200000000002
	.quad	0x3fecbff25e56cd6c              # double 0.89843099999999997
	.quad	0x3fe05987c6327ed8              # double 0.51092899999999997
	.quad	0x3fd1edc7ef177a70              # double 0.280138
	.quad	0x3fe486d506573216              # double 0.641459
	.quad	0x3fd199f5dfeb8d82              # double 0.27502199999999999
	.quad	0x3fe2054046412cf1              # double 0.563141
	.quad	0x3fd254152b0a6fc6              # double 0.28638200000000003
	.quad	0x3fb53be22e5de15d              # double 0.082945000000000005
	.quad	0x3fc2ab4fa48301a8              # double 0.14585300000000001
	.quad	0x3fc06540cc78e9f7              # double 0.12809000000000001
	.quad	0x3fb61719f7f8ca82              # double 0.086290000000000005
	.quad	0x3fc89ce4a7b4e54f              # double 0.19228799999999999
	.quad	0x3fb9d6e04c059210              # double 0.100935
	.quad	0x3fe9556d19dece57              # double 0.79167799999999999
	.quad	0x3fe217939a7c17a9              # double 0.56537800000000005
	.quad	0x3fdb6c1e364bec68              # double 0.42847400000000002
	.quad	0x3fce3db3bfb58d15              # double 0.236258
	.quad	0x3fd70064a9cdc444              # double 0.35939900000000002
	.quad	0x3fe82e44b6e935b9              # double 0.75564799999999999
	.quad	0x3fe3a7ce0fc2eba2              # double 0.61423399999999995
	.quad	0x3fb87b45f17bd8be              # double 0.095630999999999993
	.quad	0x3fe8fcf80dc33722              # double 0.78088000000000002
	.quad	0x3fe6038c111ada77              # double 0.68793300000000002
	.quad	0x3fe348d5c74751ce              # double 0.60264099999999998
	.quad	0x3fe0e85553ef6b5d              # double 0.52836099999999997
	.quad	0x3fe04efcbd556085              # double 0.50964200000000004
	.quad	0x3fe9c8b0079a2835              # double 0.80574800000000002
	.quad	0x3fe20366516db0de              # double 0.56291500000000005
	.quad	0x3fee4d8fd5cb7910              # double 0.94696800000000003
	.quad	0x3fe53e27179bfdf8              # double 0.66383700000000001
	.quad	0x3f9f0cfe154434e3              # double 0.030322999999999999
	.quad	0x3fa94df8b1572581              # double 0.049423000000000002
	.quad	0x3fed9b9f98b71b8b              # double 0.92524700000000004
	.quad	0x3fc095421c044285              # double 0.129555
	.quad	0x3fd79d9d3458cd21              # double 0.36899500000000002
	.quad	0x3fe8b28522ea0fd4              # double 0.77179200000000003
	.quad	0x3fccde43ed959a31              # double 0.22553300000000001
	.quad	0x3f6eeed8904f6dfc              # double 0.0037759999999999998
	.quad	0x3fabaffb04ee7c4a              # double 0.054077
	.quad	0x3fd1d28d002e2329              # double 0.278476
	.quad	0x3fdd4052d666a982              # double 0.45705099999999999
	.quad	0x3fed9e44fa05143c              # double 0.92557
	.quad	0x3fde1287c200c0f0              # double 0.46988099999999999
	.quad	0x3fe34343b70ef566              # double 0.60196099999999997
	.quad	0x3fc5986338b47c74              # double 0.168713
	.quad	0x3fe3bcb5fe542e55              # double 0.61678599999999995
	.quad	0x3fd22602c9081c2e              # double 0.28356999999999999
	.quad	0x3fe63be0157eed46              # double 0.69480900000000001
	.quad	0x3fed4827b6fe2e6f              # double 0.91505800000000004
	.quad	0x3fc0ec9e236c15d3              # double 0.13222100000000001
	.quad	0x3fd4d68837718655              # double 0.32559399999999999
	.quad	0x3feee746cb966be8              # double 0.96573200000000003
	.quad	0x3fbfea0ba1f4b1ee              # double 0.124665
	.quad	0x3f91cc964628027e              # double 0.017382000000000002
	.quad	0x3fb4de6ddf00abf7              # double 0.081518999999999994
	.quad	0x3fe0cc814d72799a              # double 0.52496399999999999
	.quad	0x3fede7d1351159c5              # double 0.93454800000000005
	.quad	0x3fed5feb8d823422              # double 0.91795899999999997
	.quad	0x3febfff583a53b8e              # double 0.87499499999999997
	.quad	0x3fec63cfb3311a54              # double 0.88718399999999997
	.quad	0x3fe5681450efdc9c              # double 0.66895499999999997
	.quad	0x3fe94d6a161e4f76              # double 0.79069999999999996
	.quad	0x3fe144567125dd09              # double 0.53959199999999996
	.quad	0x3fe1124d099e0e73              # double 0.53348399999999996
	.quad	0x3fe5d2b2bfdb4cc2              # double 0.68196999999999997
	.quad	0x3febc67dfe32a066              # double 0.86797999999999997
	.quad	0x3fe45590c0ad03da              # double 0.63544500000000004
	.quad	0x3f9c204f2ae07e5a              # double 0.027466999999999998
	.quad	0x3fe57c71d6063172              # double 0.67144099999999995
	.quad	0x3fe8fb6fe2e6ea85              # double 0.78069299999999997
	.quad	0x3fbd668c26139000              # double 0.114846
	.quad	0x3fb77cfe58601366              # double 0.091750999999999999
	.quad	0x3fd93cd573647bab              # double 0.39433800000000002
	.quad	0x3fee235f80991794              # double 0.94181800000000004
	.quad	0x3fe6fff79c842fa5              # double 0.718746
	.quad	0x3fe00f94c87980f5              # double 0.50190199999999996
	.quad	0x3fc2837f7be121ee              # double 0.14463799999999999
	.quad	0x3fe08bfc2224edf6              # double 0.51708799999999999
	.quad	0x3fc20eae18ac9f30              # double 0.141073
	.quad	0x3fe0f318fc504817              # double 0.52967500000000001
	.quad	0x3fd9cabc5154866a              # double 0.402999
	.quad	0x3fe33cea6c1a048e              # double 0.601186
	.quad	0x3fea22c669057d18              # double 0.81674500000000005
	.quad	0x3fbd1a437824d4cc              # double 0.11368200000000001
	.quad	0x3fdecdb37c99ae92              # double 0.48130499999999998
	.quad	0x3fef8c75c4a83b1d              # double 0.98589599999999999
	.quad	0x3fe0fe974a3400b9              # double 0.53107800000000005
	.quad	0x3fef15b78cc9a77e              # double 0.97140099999999996
	.quad	0x3f8af20ea5b530cf              # double 0.013157
	.quad	0x3fdf71c10d7be985              # double 0.49131799999999998
	.quad	0x3fe5938bcdfefbf4              # double 0.674261
	.quad	0x3fde62a5e785b5b7              # double 0.474771
	.quad	0x3fe37f43419e3001              # double 0.60928499999999997
	.quad	0x3fe7d306a2b17050              # double 0.74451000000000001
	.quad	0x3fe77ce95faa8a83              # double 0.73399800000000004
	.quad	0x3fe83f748a159818              # double 0.75774600000000003
	.quad	0x3fefdf1172ef0ae5              # double 0.99597999999999997
	.quad	0x3fb65a78f25a2510              # double 0.087318000000000006
	.quad	0x3fddfa8b4bf8fcd6              # double 0.46841699999999997
	.quad	0x3fc1f1bef49cf56f              # double 0.14019000000000001
	.quad	0x3fd54677b395c422              # double 0.332426
	.quad	0x3fed0307f23cc8de              # double 0.90661999999999998
	.quad	0x3fc7762d83c6c97e              # double 0.18329400000000001
	.quad	0x3fad801b43526528              # double 0.057618000000000003
	.quad	0x3fd332441fea8113              # double 0.29994300000000002
	.quad	0x3fe72352eb5f5f0b              # double 0.72306199999999998
	.quad	0x3fc0fd4bf0995aaf              # double 0.13272999999999999
	.quad	0x3f8b5c7cd898b2ea              # double 0.01336
	.quad	0x3febec9e236c15d3              # double 0.87263400000000002
	.quad	0x3fe46aa2a0a95853              # double 0.63801699999999995
	.quad	0x3fea5f0f5a1016ce              # double 0.82410399999999995
	.quad	0x3fdb58ea7ce0fc2f              # double 0.42730200000000002
	.quad	0x3fe3b0c026cc1ca4              # double 0.61532600000000004
	.quad	0x3fcbea704bc27632              # double 0.21809200000000001
	.quad	0x3fe8401c4fc1df33              # double 0.757826
	.quad	0x3fbc4bb1af3a14cf              # double 0.11053
	.quad	0x3fba7fe4bcad9ad8              # double 0.10351399999999999
	.quad	0x3fe646c97d8cf399              # double 0.69614100000000001
	.quad	0x3fdd3e3193f6c26a              # double 0.45692100000000002
	.quad	0x3fe89146e4c0df59              # double 0.76773400000000003
	.quad	0x3fec915379fa97e1              # double 0.89273999999999998
	.quad	0x3fcc1a8ac5c13fd1              # double 0.21956000000000001
	.quad	0x3fb70b7c3504c48b              # double 0.090019000000000002
	.quad	0x3fe3ac9d16fc9bc7              # double 0.61482099999999995
	.quad	0x3fea88e368f08462              # double 0.82921
	.quad	0x3fe3aa8869c66d37              # double 0.61456699999999997
	.quad	0x3fefea63b688bda9              # double 0.99736199999999997
	.quad	0x3fc4034f3fd933e3              # double 0.15635099999999999
	.quad	0x3fc43a29c779a6b5              # double 0.158025
	.quad	0x3fecac3a860dcb9b              # double 0.89602400000000004
	.quad	0x3fe2e616b54e2b06              # double 0.59058699999999997
	.quad	0x3fe72e72da122fad              # double 0.72441999999999995
	.quad	0x3fd9836a832b990b              # double 0.398646
	.quad	0x3fb264f54d1e96c4              # double 0.071853
	.quad	0x3fe94a18bd66277c              # double 0.79029499999999996
	.quad	0x3fe870f7b9e060fe              # double 0.76378999999999997
	.quad	0x3fd9f38c5436b8fa              # double 0.40549000000000002
	.quad	0x3fe0e28027d88c1e              # double 0.52764900000000003
	.quad	0x3fdcb8950763a190              # double 0.448766
	.quad	0x3fc00a8d21bc126a              # double 0.12532199999999999
	.quad	0x3fe5f71eafee6fb5              # double 0.68641600000000003
	.quad	0x3fcacb295e9e1b09              # double 0.20932500000000001
	.quad	0x3fe35347a5b0ff11              # double 0.60391600000000001
	.quad	0x3fd25caf2d7f950c              # double 0.28690700000000002
	.quad	0x3fb8f0b6b6e0d23d              # double 0.097422999999999996
	.quad	0x3fee03968d759ee9              # double 0.93793800000000005
	.quad	0x3fedb3e35c5b4aa9              # double 0.92820899999999995
	.quad	0x3fee8c36da87a073              # double 0.95461600000000002
	.quad	0x3fef3b517a46173c              # double 0.97599100000000005
	.quad	0x3fb381626b2f2303              # double 0.076192999999999997
	.quad	0x3fd628a1dfb9389b              # double 0.34622999999999998
	.quad	0x3fe9a6ca03c4b09f              # double 0.80161000000000004
	.quad	0x3fd6cb966be7afa7              # double 0.35617599999999999
	.quad	0x3fe5b70691ea78af              # double 0.67859199999999997
	.quad	0x3fcd0d173fb7a5f4              # double 0.226962
	.quad	0x3fc867f0aa21a71a              # double 0.19067200000000001
	.quad	0x3fc3328b6d86ec18              # double 0.14998
	.quad	0x3fd2931876188b11              # double 0.29022799999999999
	.quad	0x3fd1e681a9b8cb8e              # double 0.279694
	.quad	0x3fe0229a5ebb773a              # double 0.50422400000000001
	.quad	0x3fe421dfb9389b52              # double 0.629135
	.quad	0x3fe126a444178705              # double 0.53596699999999997
	.quad	0x3fc3a43fe5c91d15              # double 0.15345
	.quad	0x3fd21aeb3dd11be7              # double 0.28289300000000001
	.quad	0x3fca2528ae74f2f1              # double 0.204259
	.quad	0x3fda35f3d7d3910c              # double 0.40954299999999999
	.quad	0x3fc05942917507ea              # double 0.127724
	.quad	0x3fd1dd2ae8e1d649              # double 0.27912399999999998
	.quad	0x3fc46173b85e80bf              # double 0.159224
	.quad	0x3fdcd19dece57109              # double 0.45029400000000003
	.quad	0x3fb00420f6f08cc5              # double 0.062562999999999994
	.quad	0x3fdf4f8726d04e62              # double 0.48922900000000002
	.quad	0x3fd1098d477bbf94              # double 0.266208
	.quad	0x3fa811904b3c3e75              # double 0.047009000000000002
	.quad	0x3fd806b7aa25d8d8              # double 0.37541000000000002
	.quad	0x3fea31a6d698fe69              # double 0.81856099999999998
	.quad	0x3fee20296b3354c1              # double 0.94142599999999999
	.quad	0x3fef8dc55000c954              # double 0.98605600000000004
	.quad	0x3fe3744b2b777d0f              # double 0.60794599999999999
	.quad	0x3fbaeddce7cd0353              # double 0.10519199999999999
	.quad	0x3fed1d712a0ec743              # double 0.90984399999999999
	.quad	0x3fe0ae72da122fad              # double 0.52129499999999995
	.quad	0x3fe0dbfad2999568              # double 0.52685300000000002
	.quad	0x3fefc0e7bc3c5bd1              # double 0.99229800000000001
	.quad	0x3fe1ac12ad81adeb              # double 0.55225500000000005
	.quad	0x3fbc8a372606fac6              # double 0.111484
	.quad	0x3fd8f9a06a6e32e4              # double 0.39023600000000003
	.quad	0x3f6595feda661284              # double 0.0026350000000000002
	.quad	0x3fd8a68f4b61fe22              # double 0.38516600000000001
	.quad	0x3fec62f5989df117              # double 0.88707999999999998
	.quad	0x3fc985dfa871a3b1              # double 0.19939799999999999
	.quad	0x3fd374b407032980              # double 0.30399799999999999
	.quad	0x3fdaa1a500d5e8d5              # double 0.41611599999999999
	.quad	0x3fd3b990afe60c39              # double 0.308201
	.quad	0x3fd948882f0e0a85              # double 0.39505200000000001
	.quad	0x3fd6975afaf85943              # double 0.35298800000000002
	.quad	0x3fdb61bf37b8d3f2              # double 0.42784100000000003
	.quad	0x3feb64d3bf2f5558              # double 0.85605799999999999
	.quad	0x3fcf9de481f53826              # double 0.247006
	.quad	0x3fdfe8b3b320535d              # double 0.49857800000000002
	.quad	0x3fe79db0142f61ed              # double 0.73799899999999996
	.quad	0x3fe0becedd484513              # double 0.52329199999999998
	.quad	0x3fd8d5f138bcdff0              # double 0.38805800000000001
	.quad	0x3fe2310fd7e45804              # double 0.56848900000000002
	.quad	0x3fb06e2a80064a9d              # double 0.064181000000000002
	.quad	0x3fee573eab367a10              # double 0.94815000000000005
	.quad	0x3fd3a19439de481f              # double 0.30673699999999998
	.quad	0x3fbade225fa658c5              # double 0.104952
	.quad	0x3fe2be5d9e40c847              # double 0.58573799999999998
	.quad	0x3fe9b72a38b8ae32              # double 0.80360900000000002
	.quad	0x3fda9029ae4f3344              # double 0.415049
	.quad	0x3fed75946c332f01              # double 0.92060299999999995
	.quad	0x3fc8ad601ffb480a              # double 0.19279099999999999
	.quad	0x3fe9cfc829cfdd23              # double 0.80661400000000005
	.quad	0x3fed743201040bfe              # double 0.92043399999999997
	.quad	0x3fd33a365cb35f3d              # double 0.30042799999999997
	.quad	0x3fe1aee84ad794a7              # double 0.55260100000000001
	.quad	0x3fcb1bd61f5be5da              # double 0.211787
	.quad	0x3fdc7789a459103d              # double 0.44479600000000002
	.quad	0x3fec6646f1561911              # double 0.88748499999999997
	.quad	0x3fe433aeee957471              # double 0.63130900000000001
	.quad	0x3fa6ee0f3cb3e575              # double 0.044784999999999998
	.quad	0x3fe617f84449dbec              # double 0.69042599999999998
	.quad	0x3fe552977c88e79b              # double 0.66633200000000004
	.quad	0x3fd141e14bdfd263              # double 0.269646
	.quad	0x3fd34ffc9795b35b              # double 0.301757
	.quad	0x3fdc4c87980f55de              # double 0.44217099999999998
	.quad	0x3fe6ca1f080303c0              # double 0.71217299999999994
	.quad	0x3fe9a4acf312b1b3              # double 0.80135199999999995
	.quad	0x3fd63a53b8e4b87c              # double 0.34731000000000001
	.quad	0x3fe5ed4801f75105              # double 0.68521500000000002
	.quad	0x3fd8e2c98e53eb3a              # double 0.38884200000000002
	.quad	0x3fda8e581cf7878b              # double 0.41493799999999997
	.quad	0x3fe10c9d9d3458cd              # double 0.53278999999999999
	.quad	0x3fc39f340d4dc65c              # double 0.15329599999999999
	.quad	0x3fd56a1e81cb46bb              # double 0.33460200000000001
	.quad	0x3feafdf7e80389f8              # double 0.84350199999999997
	.quad	0x3f98a936c58eeaea              # double 0.024083
	.quad	0x3fe97d2849cb252d              # double 0.79652800000000001
	.quad	0x3fce3c31df761cbd              # double 0.23621200000000001
	.quad	0x3feca57a786c2268              # double 0.8952
	.quad	0x3fc5b8800eae18ad              # double 0.16969300000000001
	.quad	0x3fb077ff151e7536              # double 0.064330999999999999
	.quad	0x3fd94acf312b1b37              # double 0.39519100000000001
	.quad	0x3feb3d07c84b5dcc              # double 0.85119999999999995
	.quad	0x3fdff340d4dc65c7              # double 0.499222
	.quad	0x3fdcda5daf07bfe8              # double 0.45082800000000001
	.quad	0x3feb7b5286b59147              # double 0.85880400000000001
	.quad	0x3fc61f080303c07f              # double 0.172822
	.quad	0x3fd0940fecdd0d8d              # double 0.25903700000000002
	.quad	0x3fe2a5c810a569b1              # double 0.58273699999999995
	.quad	0x3fc165dbfceb7889              # double 0.13592099999999999
	.quad	0x3fee586ec17ebaf1              # double 0.948295
	.quad	0x3fe79ab0856e696a              # double 0.73763299999999998
	.quad	0x3f86bb1290257c91              # double 0.011098999999999999
	.quad	0x3fe592c8c5004fb1              # double 0.67416799999999999
	.quad	0x3f9306e5cd4ed2cc              # double 0.018581
	.quad	0x3fb9f1f14983d790              # double 0.10134799999999999
	.quad	0x3fe3dbc87db2b346              # double 0.62057899999999999
	.quad	0x3fe14c8bc9cd3e0c              # double 0.54059400000000002
	.quad	0x3fef005e5f30e7ff              # double 0.96879499999999996
	.quad	0x3fc26f8ad2567989              # double 0.14402899999999999
	.quad	0x3fdfdbc664d3bf2f              # double 0.49778899999999998
	.quad	0x3fefdabe27179bfe              # double 0.995452
	.quad	0x3fec91b3f20a73f7              # double 0.89278599999999997
	.quad	0x3fed0561d4306e5d              # double 0.90690700000000002
	.quad	0x3fc64bdba0a52696              # double 0.17419000000000001
	.quad	0x3fe4938151a43782              # double 0.64300599999999997
	.quad	0x3fe0bb2bba98eda2              # double 0.52284799999999998
	.quad	0x3fe88acc0bdcad15              # double 0.76694300000000004
	.quad	0x3fe36dc7ef177a70              # double 0.607151
	.quad	0x3fe7cb9ecf638002              # double 0.74360599999999999
	.quad	0x3fe78331e3a7daa5              # double 0.734765
	.quad	0x3fe957cd466f501a              # double 0.79196800000000001
	.quad	0x3fe931098d477bc0              # double 0.78723600000000005
	.quad	0x3fe17e6b3fe9fadb              # double 0.546682
	.quad	0x3fd09531550ca1cf              # double 0.259106
	.quad	0x3f9b9628cbd1244a              # double 0.026939999999999999
	.quad	0x3fd838eb0318b934              # double 0.37847399999999998
	.quad	0x3fc5cbff47735c18              # double 0.17028799999999999
	.quad	0x3fecb17481b21c47              # double 0.89666199999999996
	.quad	0x3fdb7f77af64063a              # double 0.42965500000000001
	.quad	0x3fcfe21d96e9bbf1              # double 0.249088
	.quad	0x3fec4f54d1e96c40              # double 0.88468400000000003
	.quad	0x3fd34c122749f0e5              # double 0.30151800000000001
	.quad	0x3fd7f41f212d7732              # double 0.37427500000000002
	.quad	0x3fe0ab3aabcd78c4              # double 0.52090199999999998
	.quad	0x3fe3c9d7ba6698bb              # double 0.61838899999999997
	.quad	0x3fd69e5e2478854d              # double 0.35341600000000001
	.quad	0x3fb76a400fba8827              # double 0.091465000000000005
	.quad	0x3fd233508f648c72              # double 0.28438200000000002
	.quad	0x3fe79a7c17a89332              # double 0.73760800000000004
	.quad	0x3fd4e4ead0c3d252              # double 0.32647199999999998
	.quad	0x3fe7639d5e4a3832              # double 0.73090999999999995
	.quad	0x3fe8fed20296b335              # double 0.78110599999999997
	.quad	0x3fed6177ea1c68ec              # double 0.91814799999999996
	.quad	0x3fd80dd3fe1975f3              # double 0.37584400000000001
	.quad	0x3fd3232096787ce9              # double 0.29901899999999998
	.quad	0x3f6da597d49d7ba6              # double 0.0036189999999999998
	.quad	0x3fe38d4bad7d7c2d              # double 0.61099800000000004
	.quad	0x3fc5a82e87d2c7b9              # double 0.16919500000000001
	.quad	0x3fe8b3bd9cae2110              # double 0.77194099999999999
	.quad	0x3fddb5cbff47735c              # double 0.46422099999999999
	.quad	0x3feb605ab3aabcd8              # double 0.85551200000000005
	.quad	0x3fe1a502eec7c958              # double 0.55139300000000002
	.quad	0x3fb040f238972043              # double 0.063491000000000006
	.quad	0x3fad10f51ac9afe2              # double 0.056770000000000001
	.quad	0x3fd54ec204f2ae08              # double 0.33293200000000001
	.quad	0x3fd01e03f705857b              # double 0.251832
	.quad	0x3fdea4ca4f440af2              # double 0.47880800000000001
	.quad	0x3fd044f1a1986b9c              # double 0.25420799999999999
	.quad	0x3fe7596a6a01259a              # double 0.72966500000000001
	.quad	0x3fbf59ab6d00b45b              # double 0.122462
	.quad	0x3f9dd3fe1975f2cb              # double 0.029128999999999999
	.quad	0x3fe2a30fcf80dc33              # double 0.58240499999999995
	.quad	0x3fe0c6e8f29d40ee              # double 0.524281
	.quad	0x3fc828e4fb97bb73              # double 0.188748
	.quad	0x3fed2dc4c9c90c4e              # double 0.91183700000000001
	.quad	0x3fea06ee30caa327              # double 0.81334600000000001
	.quad	0x3fde3122b7baecd0              # double 0.47174899999999997
	.quad	0x3fe33122b7baecd0              # double 0.59974799999999995
	.quad	0x3fc54202d9cf13cf              # double 0.166077
	.quad	0x3fe67ba6698bb4d5              # double 0.70259400000000005
	.quad	0x3fe81f36262cba73              # double 0.75380999999999998
	.quad	0x3fef534373f316e3              # double 0.97891399999999995
	.quad	0x3fe0f993d5347a5b              # double 0.53046599999999999
	.quad	0x3fecfb82c2bd7f52              # double 0.90570200000000001
	.quad	0x3fef39abf3387161              # double 0.97579000000000004
	.quad	0x3fe4744b2b777d0f              # double 0.63919599999999999
	.quad	0x3feda6698bb4d489              # double 0.92656400000000005
	.quad	0x3fadcbddb9841aac              # double 0.058195999999999998
	.quad	0x3fdcda836eb4e981              # double 0.45083699999999999
	.quad	0x3fd5e20ccff21b3b              # double 0.341922
	.quad	0x3fe30225742dcf46              # double 0.59401199999999998
	.quad	0x3fdeb9a176ddacef              # double 0.48008000000000001
	.quad	0x3fecea8fc0d2c387              # double 0.90363300000000002
	.quad	0x3fec7df19d66adb4              # double 0.89037399999999999
	.quad	0x3fe75ce9e5e24788              # double 0.73009199999999996
	.quad	0x3fe75fd47bedb728              # double 0.73044799999999999
	.quad	0x3fcb5b0bbf50e347              # double 0.21371599999999999
	.quad	0x3fcf6273929ed395              # double 0.24519199999999999
	.quad	0x3fdd0f6f08cc575c              # double 0.454067
	.quad	0x3fe0cae85b9e8c48              # double 0.52476900000000004
	.quad	0x3fcd779e9d0e9920              # double 0.230213
	.quad	0x3fc1053198288052              # double 0.13297100000000001
	.quad	0x3fec09c5e6ff7dfa              # double 0.876193
	.quad	0x3fe1d0f40e5a35d6              # double 0.55675699999999995
	.quad	0x3fe14f15e7c8d196              # double 0.54090400000000005
	.quad	0x3fe09327243137b0              # double 0.51796299999999995
	.quad	0x3fdd8dc55000c954              # double 0.46177800000000002
	.quad	0x3fe94347e8ccdd94              # double 0.78946300000000002
	.quad	0x3fd7ab1d4f9c1f86              # double 0.36981900000000001
	.quad	0x3fdf27e52157689d              # double 0.48681000000000002
	.quad	0x3fed1ee88df3732a              # double 0.91002300000000003
	.quad	0x3fd0d234eb9a176e              # double 0.26283000000000001
	.quad	0x3fd042fa5093964a              # double 0.25408799999999998
	.quad	0x3fd4230fcf80dc33              # double 0.31463999999999998
	.quad	0x3fdc31f46ed245b3              # double 0.44054900000000002
	.quad	0x3fe0332acfb762d8              # double 0.50624599999999997
	.quad	0x3fb7a52ac753e708              # double 0.092364000000000002
	.quad	0x3fb70ee49f51697f              # double 0.090070999999999998
	.quad	0x3fe9b7ae5796bfcb              # double 0.80367200000000005
	.quad	0x3fe0803eea209aaa              # double 0.51565499999999997
	.quad	0x3fe20a41a261bf38              # double 0.56375200000000003
	.quad	0x3fe0fa4a48f96e16              # double 0.53055300000000005
	.quad	0x3fece1a1db877ab3              # double 0.90254299999999998
	.quad	0x3fe684d12018a43c              # double 0.70371300000000003
	.quad	0x3fe6fb09203a322b              # double 0.718144
	.quad	0x3fd25bd512ec6bcf              # double 0.28685500000000003
	.quad	0x3fe3c04c8bc9cd3e              # double 0.61722399999999999
	.quad	0x3fdcb09e98dcdb38              # double 0.44828000000000001
	.quad	0x3fefdfaca3619978              # double 0.99605399999999999
	.quad	0x3fd5fc47e49b1fac              # double 0.34352300000000002
	.quad	0x3fd03b60285ec3db              # double 0.25362400000000002
	.quad	0x3fe1d3d20f2becee              # double 0.55710700000000002
	.quad	0x3fd045fe111276fb              # double 0.254272
	.quad	0x3fdbb3d4ae429e0a              # double 0.43285099999999999
	.quad	0x3fe69d451fc4c166              # double 0.70669800000000005
	.quad	0x3fdbcc8de2ac3223              # double 0.43436000000000002
	.quad	0x3fe281f53825e13b              # double 0.57836399999999999
	.quad	0x3fd44467381d7dbf              # double 0.31667499999999998
	.quad	0x3fdfffd60e94ee39              # double 0.49998999999999999
	.quad	0x3fc32630ec311623              # double 0.14960300000000001
	.quad	0x3f8d944aa53fc009              # double 0.014442999999999999
	.quad	0x3fda2b3461309c80              # double 0.408887
	.quad	0x3fdeba5a038194c0              # double 0.480124
	.quad	0x3faf28c79f666235              # double 0.060858000000000002
	.quad	0x3fe665c0b9991362              # double 0.69992100000000002
	.quad	0x3fe304d551d68c69              # double 0.59433999999999998
	.quad	0x3fdae9d94d0dcfcc              # double 0.42052299999999998
	.quad	0x3fc022c450268901              # double 0.12606100000000001
	.quad	0x3fe838bef8ceb357              # double 0.75692700000000002
	.quad	0x3fa142f61ed5ae1d              # double 0.033714000000000001
	.quad	0x3fd56e9ff0cbaf96              # double 0.33487699999999998
	.quad	0x3fe3d21144cbe1eb              # double 0.61939299999999997
	.quad	0x3fdcb71b8aa00193              # double 0.44867600000000002
	.quad	0x3fd6084a515ce9e6              # double 0.34425600000000001
	.quad	0x3fe1512018a43bb4              # double 0.541153
	.quad	0x3fed054690de0935              # double 0.90689399999999998
	.quad	0x3fd46a65cf67b1c0              # double 0.318994
	.quad	0x3fd8b8a5ce5b4246              # double 0.38627
	.quad	0x3fc8c9081c2e33f0              # double 0.193635
	.quad	0x3feeee2003ab862b              # double 0.96656799999999998
	.quad	0x3feed332acfb762e              # double 0.96328100000000005
	.quad	0x3fe54b7b28954a80              # double 0.66546400000000006
	.quad	0x3fcf11d798d8a97a              # double 0.242732
	.quad	0x3fd3b21815a07b35              # double 0.30774499999999999
	.quad	0x3fe1c395810624dd              # double 0.55512499999999998
	.quad	0x3fed3dddb1209edc              # double 0.913802
	.quad	0x3fd5c9a77e5eaab0              # double 0.34043299999999999
	.quad	0x3fc8288051c9f72f              # double 0.18873599999999999
	.quad	0x3fd9680e06530058              # double 0.396976
	.quad	0x3fe42f9ca5bd944b              # double 0.63081200000000004
	.quad	0x3fee13986338b47c              # double 0.93989199999999994
	.quad	0x3fea2ab042528ae7              # double 0.81771099999999997
	.quad	0x3fc6435696e58a33              # double 0.17393
	.quad	0x3feb13ea2d2fe3f3              # double 0.84618099999999996
	.quad	0x3fee54cfd08d4bad              # double 0.94785299999999995
	.quad	0x3fe9470c996b7671              # double 0.78992300000000004
	.quad	0x3fe995a8deb0fadf              # double 0.79951899999999998
	.quad	0x3fdb8b71b8aa0019              # double 0.43038599999999999
	.quad	0x3fe068f4b61fe21e              # double 0.51281200000000005
	.quad	0x3fd0c154c985f06f              # double 0.26179999999999998
	.quad	0x3fe0c3fe5c91d14e              # double 0.52392499999999997
	.quad	0x3fd269f4906034f4              # double 0.287717
	.quad	0x3fe0ebfec13b9f12              # double 0.52880799999999994
	.quad	0x3fe73a8a3f8982cb              # double 0.72589599999999999
	.quad	0x3febd09e12a51e32              # double 0.86921599999999999
	.quad	0x3fbc443914f483cb              # double 0.110416
	.quad	0x3fe7e542e557de0d              # double 0.74673599999999996
	.quad	0x3fe23faf42784a94              # double 0.57027399999999995
	.quad	0x3fe6fe8ee6b8305e              # double 0.71857400000000005
	.quad	0x3fe45143bf727137              # double 0.63492000000000004
	.quad	0x3fc7c4113c68661b              # double 0.185671
	.quad	0x3fe0f995ee136e72              # double 0.53046700000000002
	.quad	0x3fe1551f81a5870e              # double 0.54164100000000004
	.quad	0x3fcd7ea1c68ec52a              # double 0.23042699999999999
	.quad	0x3feb17fe8ee6b830              # double 0.84667899999999996
	.quad	0x3fecc8b0079a2835              # double 0.89949800000000002
	.quad	0x3fe38dbad3a604e2              # double 0.61105100000000001
	.quad	0x3fe201322f2734f8              # double 0.56264599999999998
	.quad	0x3fb6c29bf162ae4b              # double 0.088907
	.quad	0x3fe1233bd9cae211              # double 0.535551
	.quad	0x3fc39f98b71b8aa0              # double 0.153308
	.quad	0x3feb61da7b0b3919              # double 0.85569499999999998
	.quad	0x3fe80ccff21b3aef              # double 0.75156400000000001
	.quad	0x3f9ae3e6c4c5974e              # double 0.026259999999999999
	.quad	0x3fe4b675ddd2ae8e              # double 0.64727299999999999
	.quad	0x3fe39ce28ed5f139              # double 0.61290100000000003
	.quad	0x3f8ca643cc07aaef              # double 0.013989
	.quad	0x3fba18372e6a7696              # double 0.10193199999999999
	.quad	0x3fd9e8f29d40ee07              # double 0.40484300000000001
	.quad	0x3fe62ee41919ac79              # double 0.69322399999999995
	.quad	0x3fecc679cc74b839              # double 0.89922800000000003
	.quad	0x3fe3e44523f67f4e              # double 0.62161500000000003
	.quad	0x3fe71a91105e1c15              # double 0.721993
	.quad	0x3fe0224894c447c3              # double 0.50418499999999999
	.quad	0x3fdcb2e59af9ebea              # double 0.44841900000000001
	.quad	0x3fc4b4289118c198              # double 0.161748
	.quad	0x3f8ba5e353f7ced9              # double 0.0135
	.quad	0x3feb31e5c0b99913              # double 0.84984099999999996
	.quad	0x3fe0ca9478c868ba              # double 0.524729
	.quad	0x3fe6333764f11b61              # double 0.69375200000000004
	.quad	0x3fee1fb3fa6defc8              # double 0.94137000000000004
	.quad	0x3fa0e9d51b4fe79f              # double 0.033034000000000001
	.quad	0x3fc64406c00da1a9              # double 0.17395099999999999
	.quad	0x3fb5b291b823c85c              # double 0.084755999999999998
	.quad	0x3fc81a3f4666ec9e              # double 0.188301
	.quad	0x3fa451fc4c165908              # double 0.039688000000000001
	.quad	0x3fee69f05ea24cc7              # double 0.95043200000000005
	.quad	0x3fcfe33269df97ab              # double 0.24912100000000001
	.quad	0x3fd530f49491f2dc              # double 0.33111299999999999
	.quad	0x3feae18ce2d1f1d0              # double 0.84003300000000003
	.quad	0x3fa428f5c28f5c29              # double 0.039375
	.quad	0x3fd53e2d6238da3c              # double 0.33191999999999999
	.quad	0x3fe6348b220791c5              # double 0.69391400000000003
	.quad	0x3fee5b940fecdd0e              # double 0.94867900000000005
	.quad	0x3fe46453d20f2bed              # double 0.63724700000000001
	.quad	0x3fe7691c8eabffce              # double 0.73158100000000004
	.quad	0x3fc8a8869c66d374              # double 0.19264300000000001
	.quad	0x3fe8f9b34a44c7b0              # double 0.78048099999999998
	.quad	0x3fd24677b395c422              # double 0.285551
	.quad	0x3fe14e789e774eec              # double 0.540829
	.quad	0x3fe37d00713f077d              # double 0.60900900000000002
	.quad	0x3fdc6145953586cb              # double 0.44343700000000003
	.quad	0x3fec27bb2fec56d6              # double 0.87985000000000002
	.quad	0x3fb303afb7e90ff9              # double 0.074274999999999994
	.quad	0x3fd08d3f1843c3a4              # double 0.25862099999999999
	.quad	0x3fd66a2f48c2e771              # double 0.35023100000000001
	.quad	0x3fe47baecd07852f              # double 0.64009799999999994
	.quad	0x3fda9984a0e410b6              # double 0.41561999999999999
	.quad	0x3fd0bf50e3476295              # double 0.26167699999999999
	.quad	0x3fed45f9df548ece              # double 0.91479200000000005
	.quad	0x3fdfeeb702602c91              # double 0.49894500000000003
	.quad	0x3fd346d3f9e7b80b              # double 0.30119800000000002
	.quad	0x3fddf3519bd4067d              # double 0.467976
	.quad	0x3fe8174a3400b88d              # double 0.75284300000000004
	.quad	0x3fe55f2a9d627bf6              # double 0.66786699999999999
	.quad	0x3fe321c68ec52a41              # double 0.59787299999999999
	.quad	0x3fc0e1932d6ece14              # double 0.131884
	.quad	0x3fb1e33269df97ab              # double 0.069873000000000005
	.quad	0x3fe58b1bbcf4e875              # double 0.67323100000000002
	.quad	0x3fec3341e14bdfd2              # double 0.88125699999999996
	.quad	0x3feb1a3b14a90471              # double 0.84695200000000004
	.quad	0x3fd87c3504c48adf              # double 0.382581
	.quad	0x3fd110a137f38c54              # double 0.26663999999999999
	.quad	0x3fa01b003686a4ca              # double 0.031455999999999998
	.quad	0x3fec8ed80a17b0f7              # double 0.89243700000000004
	.quad	0x3fe0a64c2f837b4a              # double 0.52029999999999998
	.quad	0x3fd7f7db6e503fb3              # double 0.37450299999999997
	.quad	0x3fef4dcca70d1fa3              # double 0.97824699999999997
	.quad	0x3fd439b8887229e9              # double 0.316023
	.quad	0x3fdb4f5903a7546d              # double 0.42671799999999999
	.quad	0x3fec3e681a9b8cb9              # double 0.88261800000000001
	.quad	0x3fe43879c4113c68              # double 0.63189399999999996
	.quad	0x3fe0854046412cf1              # double 0.516266
	.quad	0x3fe3cda09cc319c6              # double 0.61885100000000004
	.quad	0x3fd4cac4b4d056c5              # double 0.324876
	.quad	0x3fead3d640e9d51b              # double 0.83835899999999997
	.quad	0x3fc04523f67f4dbe              # double 0.12711
	.quad	0x3fde4a98aa8650e7              # double 0.47330299999999997
	.quad	0x3fd2c4c9c90c4dec              # double 0.29326099999999999
	.quad	0x3fe0827fa1a0cf18              # double 0.51593
	.quad	0x3fe26b76709fa54c              # double 0.57561799999999996
	.quad	0x3feb1deacc92146a              # double 0.84740199999999999
	.quad	0x3fc2b851eb851eb8              # double 0.14624999999999999
	.quad	0x3fe260b4e11dbca9              # double 0.57430499999999995
	.quad	0x3f9f98b71b8aa002              # double 0.030856000000000001
	.quad	0x3fee4ef88b977857              # double 0.94713999999999998
	.quad	0x3fd30346dc5d6388              # double 0.29707499999999998
	.quad	0x3fde30e3cd9a5226              # double 0.47173399999999999
	.quad	0x3fcf68be2f7b17ce              # double 0.24538399999999999
	.quad	0x3fb4eebf65dbfceb              # double 0.081767999999999993
	.quad	0x3fede12839042d8c              # double 0.93373499999999998
	.quad	0x3fe2b2e9ccb7d417              # double 0.58433999999999997
	.quad	0x3fe82d03d9a95422              # double 0.75549500000000003
	.quad	0x3f9184c271fff79d              # double 0.017108000000000002
	.quad	0x3fea47607c4199fe              # double 0.82121299999999997
	.quad	0x3fef1db22d0e5604              # double 0.97237499999999998
	.quad	0x3fc64f4c6e6d9be5              # double 0.17429500000000001
	.quad	0x3fdd4a2b9d3cbc49              # double 0.457652
	.quad	0x3fcdac8a372606fb              # double 0.23182800000000001
	.quad	0x3fe817aaac1094a3              # double 0.75288900000000003
	.quad	0x3fdea3fcc9ea9a3d              # double 0.47875899999999999
	.quad	0x3fe6ebe37de939eb              # double 0.71629500000000002
	.quad	0x3fe6a48f96e15875              # double 0.70758799999999999
	.quad	0x3fe64755ffe6d58d              # double 0.69620800000000005
	.quad	0x3fe0c8c2e770bd01              # double 0.52450699999999995
	.quad	0x3fcc9f2fdb8fde2f              # double 0.223608
	.quad	0x3fd6198f1d3ed528              # double 0.34531000000000001
	.quad	0x3fe773de1e2de871              # double 0.73289400000000005
	.quad	0x3fae0114d2f5dbba              # double 0.058602000000000001
	.quad	0x3fd24185058dde7a              # double 0.28524899999999997
	.quad	0x3fe87b58d1526d8b              # double 0.76505699999999999
	.quad	0x3fdd6516db0dd830              # double 0.45929500000000001
	.quad	0x3fe97f3cf70153bd              # double 0.79678199999999999
	.quad	0x3feaea832b990afe              # double 0.84112699999999996
	.quad	0x3fd52456f75d9a0f              # double 0.330343
	.quad	0x3fd7eb80ecfa69be              # double 0.373749
	.quad	0x3fbb5f5f0b28522f              # double 0.10692400000000001
	.quad	0x3fc2e13f4a98aa86              # double 0.14749899999999999
	.quad	0x3fec5147f1305964              # double 0.88492199999999998
	.quad	0x3fee5360d0247022              # double 0.94767800000000002
	.quad	0x3fa96bdb1a6d6990              # double 0.049651000000000001
	.quad	0x3fd1bf444e0daa0d              # double 0.27729900000000002
	.quad	0x3fec1ecf63800219              # double 0.87876100000000001
	.quad	0x3feee362a5e785b6              # double 0.96525700000000003
	.quad	0x3fdb8b1dd5d3dc8c              # double 0.43036600000000003
	.quad	0x3fe7b24a6a875d57              # double 0.74051400000000001
	.quad	0x3fa4d594f26aec07              # double 0.040691999999999999
	.quad	0x3fdf12a94ff0025c              # double 0.485514
	.quad	0x3fe8d9f0a1be2b49              # double 0.77660399999999996
	.quad	0x3fe2b269df97aaac              # double 0.58427899999999999
	.quad	0x3fc46e653868fd1a              # double 0.15961900000000001
	.quad	0x3fea3fdd65a14489              # double 0.82029600000000003
	.quad	0x3fe26fc7a398201d              # double 0.57614500000000002
	.quad	0x3fd197d06bbdbe3c              # double 0.274891
	.quad	0x3fe8372e6a76965f              # double 0.75673599999999996
	.quad	0x3fe6233bd9cae211              # double 0.691801
	.quad	0x3f9893b7d84901d2              # double 0.024001000000000001
	.quad	0x3fb8c0053e2d6239              # double 0.096680000000000002
	.quad	0x3fe218c3b0c4588a              # double 0.565523
	.quad	0x3fc9bd48cb4aec8d              # double 0.20108899999999999
	.quad	0x3fcdf572de43ed96              # double 0.23405300000000001
	.quad	0x3fec403361565c2d              # double 0.88283699999999998
	.quad	0x3fde77c88e79aae7              # double 0.47606100000000001
	.quad	0x3fe0cc25072085b2              # double 0.52492000000000005
	.quad	0x3fefc54bcf0b6b6e              # double 0.99283399999999999
	.quad	0x3fb3d6d7e889c1b5              # double 0.077496999999999996
	.quad	0x3fc3ebd9018e7579              # double 0.155635
	.quad	0x3fbb456b441bb8c3              # double 0.106528
	.quad	0x3fd80af1cb89d6ae              # double 0.375668
	.quad	0x3fe4d9231c64ba95              # double 0.65150600000000003
	.quad	0x3fea94ec204f2ae0              # double 0.83067899999999994
	.quad	0x3fb4cb7d41743e96              # double 0.081229999999999996
	.quad	0x3fec4fd2a62aa194              # double 0.88474399999999997
	.quad	0x3fea5681ecd4aa11              # double 0.82306000000000001
	.quad	0x3fcb8b0d0edc3bd6              # double 0.21518100000000001
	.quad	0x3fd2cf28c79f6662              # double 0.29389399999999999
	.quad	0x3fd0558644523f68              # double 0.25522
	.quad	0x3feabf444e0daa0d              # double 0.83584800000000004
	.quad	0x3fe1640420f6f08d              # double 0.54345900000000003
	.quad	0x3fe4c54de7ea5f85              # double 0.64908500000000002
	.quad	0x3fb2291fb3fa6df0              # double 0.070940000000000003
	.quad	0x3fbda9435ac8a372              # double 0.11586399999999999
	.quad	0x3fcebedfa43fe5c9              # double 0.2402
	.quad	0x3fa5e5082cf52b91              # double 0.042763000000000002
	.quad	0x3fe1fe931876188b              # double 0.56232599999999999
	.quad	0x3fe412ddbdb5d895              # double 0.62730300000000006
	.quad	0x3fd2695d91ab8e8f              # double 0.28768100000000002
	.quad	0x3fe8dbe1a8262457              # double 0.776841
	.quad	0x3fc79b6f5caf2d80              # double 0.18443100000000001
	.quad	0x3feecc271fff79c8              # double 0.96242099999999997
	.quad	0x3fba6cf41f212d77              # double 0.103225
	.quad	0x3fe18f8c64fdb09a              # double 0.54877299999999996
	.quad	0x3fe7b55475a31a4c              # double 0.74088500000000002
	.quad	0x3fe8b1f46ed245b3              # double 0.77172300000000005
	.quad	0x3fee4267839cd812              # double 0.94560599999999995
	.quad	0x3fd6d60e94ee392e              # double 0.35681499999999999
	.quad	0x3feac99f1ae2da55              # double 0.83711199999999997
	.quad	0x3fb474107314ca92              # double 0.079895999999999994
	.quad	0x3feb939c94f69caa              # double 0.86176900000000001
	.quad	0x3fce9731098d477c              # double 0.23898900000000001
	.quad	0x3fee607e5a78f25a              # double 0.94927899999999998
	.quad	0x3fed2cd5b6805a2d              # double 0.91172299999999995
	.quad	0x3fd78a71de69ad43              # double 0.36782500000000001
	.quad	0x3fd95daf07bfe7e2              # double 0.396343
	.quad	0x3f95a07b352a8438              # double 0.02112
	.quad	0x3fe0ff6f4be835df              # double 0.53118100000000001
	.quad	0x3fb0941c8216c615              # double 0.064759999999999998
	.quad	0x3fbe66fd651b0ccc              # double 0.118759
	.quad	0x3f8ee568a50507a7              # double 0.015086
	.quad	0x3fef3b517a46173c              # double 0.97599100000000005
	.quad	0x3fce72085b18548b              # double 0.23785500000000001
	.quad	0x3fd0e631f8a0902e              # double 0.26405000000000001
	.quad	0x3fe0a658c4bd33d3              # double 0.52030600000000005
	.quad	0x3fedb7b6bb129025              # double 0.92867599999999995
	.quad	0x3fe24f28c79f6662              # double 0.57216299999999998
	.quad	0x3fea86d938151a43              # double 0.82896099999999995
	.quad	0x3fe5b3c1ce6c093e              # double 0.67819300000000005
	.quad	0x3fe617edc7ef177a              # double 0.69042099999999995
	.quad	0x3fea5798d8a979e1              # double 0.82319299999999995
	.quad	0x3fd115a8deb0fadf              # double 0.26694699999999999
	.quad	0x3fc102f72b452828              # double 0.13290299999999999
	.quad	0x3fc5cd8127b2cc71              # double 0.17033400000000001
	.quad	0x3fd89691a75cd0bb              # double 0.38418999999999998
	.quad	0x3fc83b0c4588a04d              # double 0.189302
	.quad	0x3fcdf340d4dc65c7              # double 0.233986
	.quad	0x3fda2f5dbb9cf9a0              # double 0.40914099999999998
	.quad	0x3fd7cffa7eb6bf44              # double 0.37206899999999998
	.quad	0x3f88aa00192a7371              # double 0.012043
	.quad	0x3fe0b92e1ef73c0c              # double 0.52260499999999999
	.quad	0x3fc8e06d938151a4              # double 0.19434899999999999
	.quad	0x3fcb545c78a6dacb              # double 0.21351200000000001
	.quad	0x3fd6c88e79aae6c9              # double 0.355991
	.quad	0x3fe0500713f077cd              # double 0.50976900000000003
	.quad	0x3fe7cead0c3d2524              # double 0.74397899999999995
	.quad	0x3fe769bbf0dc768e              # double 0.731657
	.quad	0x3fedbcfd4bf0995b              # double 0.92932000000000003
	.quad	0x3fe32465a57646ae              # double 0.59819299999999997
	.quad	0x3fd6513b5bf6a0dc              # double 0.34870800000000002
	.quad	0x3fceaed1394317ad              # double 0.23971000000000001
	.quad	0x3fdd0407cc7d1bb5              # double 0.45337100000000002
	.quad	0x3fe8131ca7d6733f              # double 0.75233300000000003
	.quad	0x3fe6c66f5019f3c7              # double 0.71172299999999999
	.quad	0x3fe371da37ef5a96              # double 0.60764799999999997
	.quad	0x3fc3a89b951c5c57              # double 0.153583
	.quad	0x3fd73ba3443d46b2              # double 0.36301499999999998
	.quad	0x3fe2746ed245b292              # double 0.57671300000000003
	.quad	0x3fe7626b2f23033a              # double 0.73076399999999997
	.quad	0x3fed373d188f42ff              # double 0.91299300000000005
	.quad	0x3fd039da16616b55              # double 0.25353100000000001
	.quad	0x3fcb4f7a919695d9              # double 0.213363
	.quad	0x3fe05e41d4b6a61a              # double 0.51150600000000002
	.quad	0x3fe649363f572de4              # double 0.69643699999999997
	.quad	0x3fce6490a350d280              # double 0.23744399999999999
	.quad	0x3fa600b029281776              # double 0.042973999999999998
	.quad	0x3f9fa1a0cf1800a8              # double 0.030890000000000001
	.quad	0x3fee248f96e15875              # double 0.94196299999999999
	.quad	0x3fd4c3f811f4f50a              # double 0.324461
	.quad	0x3fefb220791c4b90              # double 0.99049399999999999
	.quad	0x3fed20296b3354c1              # double 0.91017599999999999
	.quad	0x3fe6134267839cd8              # double 0.68985099999999999
	.quad	0x3fe6b4a87e38eb03              # double 0.70955299999999999
	.quad	0x3fee8cbf2b239a39              # double 0.954681
	.quad	0x3fe2f7d0f1f57b42              # double 0.59275100000000003
	.quad	0x3fdbf2ecf2064239              # double 0.43670199999999998
	.quad	0x3fead072085b1855              # double 0.83794500000000005
	.quad	0x3fed6501e2584f4c              # double 0.91857999999999995
	.quad	0x3fe38f9096bb98c8              # double 0.61127500000000001
	.quad	0x3fe7c5e9185cee18              # double 0.74290900000000004
	.quad	0x3fd4cd31769a9110              # double 0.32502399999999998
	.quad	0x3fe72cdc011d3672              # double 0.72422600000000004
	.quad	0x3fe3b5bb384fd2a6              # double 0.61593399999999998
	.quad	0x3fe8531550ca1cef              # double 0.76014199999999998
	.quad	0x3fcbe353f7ced917              # double 0.21787500000000001
	.quad	0x3fe247f77af64064              # double 0.57128500000000004
	.quad	0x3fe6603d57796399              # double 0.69924799999999998
	.quad	0x3fe048301a79feca              # double 0.50881200000000004
	.quad	0x3fea07cc7d1bb491              # double 0.81345199999999995
	.quad	0x3fe2bd96638433d7              # double 0.58564300000000002
	.quad	0x3fe6841248d7e026              # double 0.70362199999999997
	.quad	0x3fef7f6d330941c8              # double 0.98430499999999998
	.quad	0x3fea7d08d4bad7d8              # double 0.82776300000000003
	.quad	0x3fbe3ef284167a96              # double 0.118148
	.quad	0x3fb518d25edd0529              # double 0.082409999999999997
	.quad	0x3fefd4bf0995aaf8              # double 0.99472000000000004
	.quad	0x3fe30dfdef8487ba              # double 0.59545800000000004
	.quad	0x3fd5ad6883771865              # double 0.33870899999999998
	.quad	0x3fa37b4a2339c0ec              # double 0.03805
	.quad	0x3fe625b530ced4e5              # double 0.69210300000000002
	.quad	0x3fe3425f202107b8              # double 0.60185200000000005
	.quad	0x3fe35a78f25a2510              # double 0.60479400000000005
	.quad	0x3fa69a4df47f993d              # double 0.044145999999999998
	.quad	0x3fab2bdc26dce39b              # double 0.053068999999999998
	.quad	0x3fc2ff64cf8d716d              # double 0.148419
	.quad	0x3fcf6da87a072d1b              # double 0.245534
	.quad	0x3fba5119ce075f70              # double 0.1028
	.quad	0x3fef78c21e1d2179              # double 0.983491
	.quad	0x3fc9702e6644d877              # double 0.198736
	.quad	0x3fe1067cf1c3265b              # double 0.53204200000000001
	.quad	0x3fe27efbf401c4fc              # double 0.57800099999999999
	.quad	0x3fea9e0e736049ed              # double 0.83179400000000003
	.quad	0x3fe69f94855da273              # double 0.70698000000000005
	.quad	0x3fef75f2cb641701              # double 0.98314800000000002
	.quad	0x3fc0c6e6d9be4cd7              # double 0.13106999999999999
	.quad	0x3feaf9c1f85d744f              # double 0.84298799999999996
	.quad	0x3fd796d0917d6b66              # double 0.36858000000000002
	.quad	0x3fed147496aad1d0              # double 0.90874699999999997
	.quad	0x3fd94944ed6fda83              # double 0.39509699999999998
	.quad	0x3fe6b0142f61ed5b              # double 0.70899400000000001
	.quad	0x3fe9e19b90ea9e6f              # double 0.80879000000000001
	.quad	0x3fef4013ec460ed8              # double 0.97657199999999999
	.quad	0x3fe0877036c9c0a9              # double 0.51653300000000002
	.quad	0x3fb0c586876e1deb              # double 0.065514000000000003
	.quad	0x3fee3e1a8262456f              # double 0.94508099999999995
	.quad	0x3fca4883fd502257              # double 0.20533799999999999
	.quad	0x3fd288a8b08dd1e5              # double 0.28959099999999999
	.quad	0x3fce788db0574b40              # double 0.23805399999999999
	.quad	0x3fe64471b4784231              # double 0.695855
	.quad	0x3fe67572de43ed96              # double 0.70183700000000004
	.quad	0x3fcafb2aae297397              # double 0.21079000000000001
	.quad	0x3fe12eb3dd11be6e              # double 0.53695099999999996
	.quad	0x3fe8bdf4c2b51bd6              # double 0.77318799999999999
	.quad	0x3fd83d859c8c9321              # double 0.37875500000000001
	.quad	0x3fbaaf78feef5ec8              # double 0.10424
	.quad	0x3fd09a88ace24bba              # double 0.259432
	.quad	0x3fdc0f8c64fdb09a              # double 0.43844899999999998
	.quad	0x3fd33fa2ad3e920c              # double 0.300759
	.quad	0x3fe3aadc4c9c90c5              # double 0.61460700000000001
	.quad	0x3fef56d19dece571              # double 0.97934799999999999
	.quad	0x3fe27121ab4b72c5              # double 0.57630999999999999
	.quad	0x3fcf2e62131a8ef7              # double 0.24360299999999999
	.quad	0x3fde15b9a5a89b95              # double 0.47007599999999999
	.quad	0x3fe52d2bb23571d2              # double 0.66176400000000002
	.quad	0x3fb4898f605ab3ab              # double 0.080224000000000004
	.quad	0x3fe437457c0b1359              # double 0.63174699999999995
	.quad	0x3fe43f3bea91d9b2              # double 0.63271900000000003
	.quad	0x3fe40ced4e4c942d              # double 0.62657799999999997
	.quad	0x3fe9b0d306a2b170              # double 0.80283499999999997
	.quad	0x3fe3119695d91ab9              # double 0.59589700000000001
	.quad	0x3fda5e80bed740c4              # double 0.412018
	.quad	0x3fecf2b239a38fbd              # double 0.90462600000000004
	.quad	0x3fd8aef6f8f04146              # double 0.38567899999999999
	.quad	0x3fd08b47c73eee52              # double 0.25850099999999998
	.quad	0x3fe73c903ea704bc              # double 0.72614299999999998
	.quad	0x3fc12599ed7c6fbd              # double 0.13396
	.quad	0x3fe50316a055757d              # double 0.65662699999999996
	.quad	0x3fbd6e696a26e547              # double 0.114966
	.quad	0x3fe5ff79c842fa51              # double 0.68743600000000005
	.quad	0x3fd09b13165d3997              # double 0.259465
	.quad	0x3fcd78e5c4eb56fc              # double 0.23025200000000001
	.quad	0x3fdc68dfbd6a593a              # double 0.44390099999999999
	.quad	0x3fe23f487fcb923a              # double 0.57022499999999998
	.quad	0x3fd1808c8259e1f4              # double 0.27347100000000002
	.quad	0x3fe78fb00bcbe61d              # double 0.73629
	.quad	0x3fdf352a84380885              # double 0.48762
	.quad	0x3fa45d206c8711d8              # double 0.039773000000000003
	.quad	0x3fec653868fd199c              # double 0.88735600000000003
	.quad	0x3fc7df6db940fece              # double 0.18650600000000001
	.quad	0x3fc776922d948dc1              # double 0.183306
	.quad	0x3fec53fe1975f2cb              # double 0.88525299999999996
	.quad	0x3fe67521144cbe1f              # double 0.70179800000000003
	.quad	0x3fe21437c5692b3d              # double 0.56496800000000003
	.quad	0x3fa1172ef0ae5365              # double 0.03338
	.quad	0x3fdfd7dbf487fcb9              # double 0.49754999999999999
	.quad	0x3feee1c36976bc1f              # double 0.965059
	.quad	0x3fdd9513f8db4891              # double 0.46222400000000002
	.quad	0x3fe697d2849cb253              # double 0.70603300000000002
	.quad	0x3fe834aec8d5c747              # double 0.75643099999999996
	.quad	0x3fdb56d5cfaacd9f              # double 0.42717500000000003
	.quad	0x3fb89d9d3458cd21              # double 0.096155000000000004
	.quad	0x3fd2c7de5082cf53              # double 0.29344900000000002
	.quad	0x3fbfcdab191dde37              # double 0.124232
	.quad	0x3fd41a7e30878748              # double 0.31411699999999998
	.quad	0x3fe94a6a875d56f3              # double 0.79033399999999998
	.quad	0x3fe7f1f14983d790              # double 0.74828399999999995
	.quad	0x3fd60624dd2f1aa0              # double 0.34412500000000001
	.quad	0x3f6815a07b352a84              # double 0.0029399999999999999
	.quad	0x3fc897d06bbdbe3c              # double 0.192133
	.quad	0x3fd94e7685985ad5              # double 0.39541399999999999
	.quad	0x3feedb6805a2d730              # double 0.964283
	.quad	0x3fee2b68cef672b9              # double 0.94279900000000005
	.quad	0x3fecf0c34c1a8ac6              # double 0.90439000000000003
	.quad	0x3fef713ad5bee3d6              # double 0.982572
	.quad	0x3fed8893b7d84902              # double 0.92292200000000002
	.quad	0x3feb69d30270f388              # double 0.85666799999999999
	.quad	0x3fe3e1c15097c808              # double 0.62130799999999997
	.quad	0x3f522749f0e4da0a              # double 0.001108
	.quad	0x3fe5623076c050be              # double 0.66823600000000005
	.quad	0x3fd7a9cdc443914f              # double 0.36973899999999998
	.quad	0x3fe7fd32c625e99f              # double 0.74965800000000005
	.quad	0x3fc16cefed63454a              # double 0.13613700000000001
	.quad	0x3fe2426351deefe5              # double 0.570604
	.quad	0x3fef70563ed0f627              # double 0.98246299999999997
	.quad	0x3fdd33764f11b60b              # double 0.456266
	.quad	0x3fe0ee807bbb6241              # double 0.52911399999999997
	.quad	0x3fe25143bf727137              # double 0.57242000000000004
	.quad	0x3fd88954a7f8012e              # double 0.383382
	.quad	0x3fd23b70ef566491              # double 0.28487800000000002
	.quad	0x3febdbc44bf4cb19              # double 0.87057700000000005
	.quad	0x3fbd6c2efd438d1e              # double 0.11493200000000001
	.quad	0x3fca6088d6d3b6cc              # double 0.206071
	.quad	0x3fe3a2e5de15ca6d              # double 0.61363500000000004
	.quad	0x3fe6bf290abb44e5              # double 0.71083499999999999
	.quad	0x3fe705ab3aabcd79              # double 0.71944200000000003
	.quad	0x3fe4d273d5bab218              # double 0.65068999999999999
	.quad	0x3fc5f0e4da09cc32              # double 0.17141400000000001
	.quad	0x3fed3220791c4b90              # double 0.91236899999999999
	.quad	0x3fa6f0068db8bac7              # double 0.0448
	.quad	0x3fe3de17e34b9453              # double 0.620861
	.quad	0x3fbf2b990afe60c4              # double 0.12175900000000001
	.quad	0x3fe7af6837f7be12              # double 0.74016199999999999
	.quad	0x3fb75b5fa22706d5              # double 0.091238
	.quad	0x3fe6a3d70a3d70a4              # double 0.70750000000000002
	.quad	0x3fb020a30db6a1e8              # double 0.062997999999999998
	.quad	0x3feb7498c3b0c459              # double 0.85798300000000005
	.quad	0x3fef22856605ee57              # double 0.97296400000000005
	.quad	0x3fdb36976bc1effa              # double 0.425207
	.quad	0x3fdf8644523f67f5              # double 0.49257000000000001
	.quad	0x3fc073c4f3ba7760              # double 0.12853300000000001
	.quad	0x3fdaa1c68ec52a41              # double 0.41612399999999999
	.quad	0x3fdfac14c660a201              # double 0.49487799999999998
	.quad	0x3fd2c9081c2e33f0              # double 0.29352
	.quad	0x3fee1a5657fb6998              # double 0.94071499999999996
	.quad	0x3fd6bb341e14bdfd              # double 0.35517599999999999
	.quad	0x3fb0da2b5a20ddc6              # double 0.065828999999999999
	.quad	0x3fe99858bc59b802              # double 0.79984699999999997
	.quad	0x3fd307d0aed99cbf              # double 0.29735200000000001
	.quad	0x3fd2a4b9884c6a3c              # double 0.29130400000000001
	.quad	0x3fc4c6d612c6ac21              # double 0.16231799999999999
	.quad	0x3fce96249a133c1d              # double 0.238957
	.quad	0x3fe44f2064239607              # double 0.63465899999999997
	.quad	0x3fd8d85dfa871a3b              # double 0.388206
	.quad	0x3fb4d7f0ed3d859d              # double 0.081420000000000006
	.quad	0x3fc877ee4e26d480              # double 0.19116
	.quad	0x3fed95d91ab8e8ea              # double 0.92454199999999997
	.quad	0x3fd58b71b8aa0019              # double 0.33663599999999999
	.quad	0x3fb19f5dfeb8d823              # double 0.068837999999999996
	.quad	0x3fea55454152b0a7              # double 0.822909
	.quad	0x3fec7b15b573eab3              # double 0.89002499999999996
	.quad	0x3fd814fce746cb96              # double 0.37628099999999998
	.quad	0x3fe80438088509c0              # double 0.75051500000000004
	.quad	0x3f363779e9d0e992              # double 3.39E-4
	.quad	0x3fe74b5568e820e6              # double 0.72794599999999998
	.quad	0x3feb0954a7f8012e              # double 0.844889
	.quad	0x3fe7c4a83b1d0c80              # double 0.74275599999999997
	.quad	0x3fe0fe8ee6b8305e              # double 0.53107400000000005
	.quad	0x3fb1881a1554fbdb              # double 0.068483000000000002
	.quad	0x3fe8b1d2e0e30447              # double 0.77170700000000003
	.quad	0x3fefcbb5e0f7fcfc              # double 0.99361699999999997
	.quad	0x3fcbee4e26d4801f              # double 0.21820999999999999
	.quad	0x3fb51a975afaf859              # double 0.082436999999999996
	.quad	0x3fdf122749f0e4da              # double 0.485483
	.quad	0x3fe2785942917508              # double 0.57719100000000001
	.quad	0x3fed7d9fd36f7e3d              # double 0.92158499999999999
	.quad	0x3fcbed84d338f798              # double 0.21818599999999999
	.quad	0x3fdfba83f4eca687              # double 0.49575900000000001
	.quad	0x3fe539ef0f16f438              # double 0.66332199999999997
	.quad	0x3fcb351159c49774              # double 0.212557
	.quad	0x3fde3dd54da4ce81              # double 0.472524
	.quad	0x3fc86cb966be7afa              # double 0.19081799999999999
	.quad	0x3fae69ad42c3c9ef              # double 0.059400000000000001
	.quad	0x3fee029cfdd22856              # double 0.93781899999999996
	.quad	0x3fee116ca46e08f2              # double 0.93962699999999999
	.quad	0x3fd3b5d462c343b7              # double 0.307973
	.quad	0x3fd8c9ea9a3d2d88              # double 0.387324
	.quad	0x3fb2e557de0d66f1              # double 0.073812000000000003
	.quad	0x3fd5f7fcfc3f811f              # double 0.34326099999999998
	.quad	0x3fa7f0aa21a719b5              # double 0.046758000000000001
	.quad	0x3fe13365881a1555              # double 0.537524
	.quad	0x3fd894f26aec0725              # double 0.38409100000000002
	.quad	0x3fe8bb8c32a8c9b8              # double 0.77289399999999997
	.quad	0x3fe2b302f72b4528              # double 0.58435199999999998
	.quad	0x3fe7ebc1eff9f87f              # double 0.747529
	.quad	0x3fded1ed9dfdac69              # double 0.48156300000000002
	.quad	0x3fdc399f5dfeb8d8              # double 0.44101699999999999
	.quad	0x3fef56c508b32ce9              # double 0.97934200000000004
	.quad	0x3fa439de481f5382              # double 0.039503999999999997
	.quad	0x3fa95592d98bf7f0              # double 0.049480999999999997
	.quad	0x3fda8ab4fa48301a              # double 0.41471599999999997
	.quad	0x3fde710880d801b4              # double 0.47564899999999999
	.quad	0x3fc8d783dff3f0fe              # double 0.194077
	.quad	0x3fe38fd9fd36f7e4              # double 0.61131000000000002
	.quad	0x3fee57c4e2f37fbf              # double 0.948214
	.quad	0x3fe4db0dd82fd75e              # double 0.65173999999999999
	.quad	0x3f9263d816aceaaf              # double 0.017958999999999999
	.quad	0x3fb40f01fb82c2bd              # double 0.078353999999999993
	.quad	0x3fb655b035bd512f              # double 0.087245000000000003
	.quad	0x3fec9285a921ccd9              # double 0.89288599999999996
	.quad	0x3fe1bac0c62e4d1a              # double 0.55404699999999996
	.quad	0x3fd08bb4d48882f1              # double 0.25852700000000001
	.quad	0x3fe91c0229a5ebb7              # double 0.78466899999999995
	.quad	0x3fe7790b84988095              # double 0.73352600000000001
	.quad	0x3fdea033e78e1933              # double 0.47852800000000001
	.quad	0x3fba25529fe004b8              # double 0.102132
	.quad	0x3feb2dd7a99fa11b              # double 0.84934600000000005
	.quad	0x3fef141e9af5ba2c              # double 0.97120600000000001
	.quad	0x3fd959af9ebe9c88              # double 0.39609899999999998
	.quad	0x3fce9e55c0fcb4f2              # double 0.239207
	.quad	0x3fb5144cbe1eb420              # double 0.082340999999999998
	.quad	0x3fcbb8887229e908              # double 0.21656900000000001
	.quad	0x3fa535653c9abb02              # double 0.041423000000000001
	.quad	0x3fe7b3fa6defc7a4              # double 0.74072000000000005
	.quad	0x3fdfd5a187a4a490              # double 0.49741400000000002
	.quad	0x3fe62adc4c9c90c5              # double 0.69273200000000001
	.quad	0x3fdd26d8b1dd5d3e              # double 0.45549600000000001
	.quad	0x3fd236b4c7f34938              # double 0.28458899999999998
	.quad	0x3fc8b62845996745              # double 0.19305900000000001
	.quad	0x3feda27ae9ab29e5              # double 0.92608400000000002
	.quad	0x3fda76ea4228997c              # double 0.41350799999999999
	.quad	0x3fed33311a543f1c              # double 0.91249899999999994
	.quad	0x3fb8d35a858793de              # double 0.096975000000000005
	.quad	0x3f90c1b97353b4b3              # double 0.016364
	.quad	0x3fe54b966be7afa7              # double 0.66547699999999999
	.quad	0x3fe697f84449dbec              # double 0.70605099999999998
	.quad	0x3fef373d188f42ff              # double 0.97549300000000005
	.quad	0x3fe78aa64c2f837b              # double 0.73567499999999997
	.quad	0x3fed8f6cefed6345              # double 0.92375799999999997
	.quad	0x3fe5f9cc74b838c1              # double 0.68674299999999999
	.quad	0x3fd6be09bb6aa4ba              # double 0.35534900000000003
	.quad	0x3fd07079e59f2baa              # double 0.25686500000000001
	.quad	0x3fb60168b5cbff47              # double 0.085958999999999994
	.quad	0x3fed2686e7e62dc7              # double 0.91095300000000001
	.quad	0x3fdf7a46173b85e8              # double 0.491838
	.quad	0x3fe7cb295e9e1b09              # double 0.74355000000000004
	.quad	0x3fc930f062d40aaf              # double 0.19680600000000001
	.quad	0x3fe7716f4384ba0f              # double 0.73259700000000005
	.quad	0x3fe3ac5197a24895              # double 0.61478500000000003
	.quad	0x3fe77ed634549b63              # double 0.73423300000000002
	.quad	0x3fceda2b5a20ddc6              # double 0.241033
	.quad	0x3fc42a1b5c7cd899              # double 0.15753500000000001
	.quad	0x3feca20791c4b902              # double 0.89477899999999999
	.quad	0x3feff2862f5989df              # double 0.99835499999999999
	.quad	0x3fe8ef30a4e379b7              # double 0.77919799999999995
	.quad	0x3fe3556084a515cf              # double 0.60417200000000004
	.quad	0x3fee893d96638434              # double 0.95425300000000001
	.quad	0x3fe6eabffcdab192              # double 0.71615600000000001
	.quad	0x3fb8f7ec3547e069              # double 0.097532999999999995
	.quad	0x3f74a7f8012dfd69              # double 0.0050429999999999997
	.quad	0x3feadc011d3671ac              # double 0.83935599999999999
	.quad	0x3fd70a9de8b3b320              # double 0.36002299999999998
	.quad	0x3fef566adb402d17              # double 0.97929900000000003
	.quad	0x3fd28eda22f6a50d              # double 0.28996899999999998
	.quad	0x3feb72ae07e5a78f              # double 0.85774899999999998
	.quad	0x3feae95faa8a82a5              # double 0.84098799999999996
	.quad	0x3fc02a12f901083e              # double 0.12628400000000001
	.quad	0x3fdaa92a30553261              # double 0.41657499999999997
	.quad	0x3feeb0ff10ecb74e              # double 0.95910600000000001
	.quad	0x3fe3d785f8d2e515              # double 0.62005900000000003
	.quad	0x3fe8445aa2e3c537              # double 0.75834400000000002
	.quad	0x3fde99029ae4f334              # double 0.47808899999999999
	.quad	0x3faf355cd91eeaa7              # double 0.060954000000000001
	.quad	0x3fe39bcfd4bf0996              # double 0.61277000000000004
	.quad	0x3fc1a8deb0fadf2f              # double 0.13796600000000001
	.quad	0x3fc2e9f6a93f290b              # double 0.14776500000000001
	.quad	0x3fdb89e34330d738              # double 0.43029099999999998
	.quad	0x3fe6edb50f40e5a3              # double 0.71651699999999996
	.quad	0x3fd36c15d2d01c0d              # double 0.30347200000000002
	.quad	0x3fbf5cd0bb6ed677              # double 0.12250999999999999
	.quad	0x3fef64fdb09a671f              # double 0.981078
	.quad	0x3fbd87c6327ed84d              # double 0.115353
	.quad	0x3fd87ae9ab29e4d6              # double 0.38250200000000001
	.quad	0x3feb21b3aeee9574              # double 0.84786399999999995
	.quad	0x3fe49b024f6598e1              # double 0.64392199999999999
	.quad	0x3febde7a743a6480              # double 0.87090800000000002
	.quad	0x3fee1e59f2ba9d1f              # double 0.94120499999999996
	.quad	0x3fea0f4d7add15f0              # double 0.81436799999999998
	.quad	0x3fe8839042d8c2a4              # double 0.76605999999999996
	.quad	0x3fa1322f2734f82f              # double 0.033585999999999998
	.quad	0x3febe7168f8e7ddd              # double 0.87195900000000004
	.quad	0x3fcab417ca2120e2              # double 0.208621
	.quad	0x3feafb5286b59147              # double 0.84317900000000001
	.quad	0x3fe1541d8e864021              # double 0.54151800000000005
	.quad	0x3fccd3e920c069e8              # double 0.225217
	.quad	0x3fea57cb2d905c03              # double 0.82321699999999998
	.quad	0x3fd7a50507a6bd6f              # double 0.36944700000000003
	.quad	0x3fd374bc6a7ef9db              # double 0.30399999999999999
	.quad	0x3fe8c9129888f862              # double 0.77454500000000004
	.quad	0x3fe9749491f2dc2b              # double 0.79548099999999999
	.quad	0x3fd3e79aae6c8f75              # double 0.31101099999999998
	.quad	0x3feee612839042d9              # double 0.96558500000000002
	.quad	0x3fe0a0ad8a11665a              # double 0.51961400000000002
	.quad	0x3feca5a682b62846              # double 0.89522100000000004
	.quad	0x3fe92ab042528ae7              # double 0.78646099999999997
	.quad	0x3fc421d96e9bbf0e              # double 0.15728300000000001
	.quad	0x3fd2fcdee34fc611              # double 0.296684
	.quad	0x3fd5093532e7b3d9              # double 0.32868700000000001
	.quad	0x3fc303a7546d3f9e              # double 0.14854899999999999
	.quad	0x3fe3dfe32a0663c7              # double 0.62107999999999997
	.quad	0x3fc3789a459103c9              # double 0.152118
	.quad	0x3fdec27e9531550d              # double 0.48062100000000002
	.quad	0x3fed99b90ea9e6ef              # double 0.92501500000000003
	.quad	0x3fc6a28fe260b2c8              # double 0.17683599999999999
	.quad	0x3fc8087442c7fbad              # double 0.18775800000000001
	.quad	0x3fe84a83b1d0c804              # double 0.75909599999999999
	.quad	0x3f953e707e175d14              # double 0.020746000000000001
	.quad	0x3fa7bbd7b2031ceb              # double 0.046355
	.quad	0x3fe908d08919ef95              # double 0.78232599999999997
	.quad	0x3fea9da597d49d7c              # double 0.83174400000000003
	.quad	0x3fe4ee04c0592104              # double 0.65405500000000005
	.quad	0x3fde73de1e2de871              # double 0.47582200000000002
	.quad	0x3feab4a01abd1aa8              # double 0.83454899999999999
	.quad	0x3fe31a1554fbdad7              # double 0.59693399999999996
	.quad	0x3fb1de481f53825e              # double 0.069797999999999999
	.quad	0x3fda6ad2dcb1465f              # double 0.41277000000000003
	.quad	0x3fef95a6c5d206c8              # double 0.98701799999999995
	.quad	0x3fe67182235b4edb              # double 0.70135599999999998
	.quad	0x3fd481dc0db2702a              # double 0.32042599999999999
	.quad	0x3fc5d67ba237cdcd              # double 0.17060800000000001
	.quad	0x3fdc10c6f7a0b5ee              # double 0.43852400000000002
	.quad	0x3fe516af038e29fa              # double 0.65901900000000002
	.quad	0x3fd39a62ed352221              # double 0.30629800000000001
	.quad	0x3fdf5e6ff7dfa00e              # double 0.49013899999999999
	.quad	0x3fd79f8c21e1d218              # double 0.36911300000000002
	.quad	0x3fef30468448cf7d              # double 0.97464300000000003
	.quad	0x3f9fd60e94ee392e              # double 0.03109
	.quad	0x3fd59e6256366d7a              # double 0.33779199999999998
	.quad	0x3fe9dfeda6612839              # double 0.808585
	.quad	0x3fc4b28d8665e02f              # double 0.16169900000000001
	.quad	0x3fe3ab474107314d              # double 0.61465800000000004
	.quad	0x3fd1162281344806              # double 0.26697599999999999
	.quad	0x3fecc5c358afc47e              # double 0.89914099999999997
	.quad	0x3fedae85b9e8c47a              # double 0.92755399999999999
	.quad	0x3fe3a30fcf80dc33              # double 0.61365499999999995
	.quad	0x3fe7561d4306e5cd              # double 0.72926199999999997
	.quad	0x3fec0a4a05dd8f93              # double 0.87625600000000003
	.quad	0x3fc45f394b7b2895              # double 0.15915599999999999
	.quad	0x3fed886df82b1f68              # double 0.92290399999999995
	.quad	0x3fcca7c5ac471b48              # double 0.22387000000000001
	.quad	0x3fdebd7b2031ceaf              # double 0.48031499999999999
	.quad	0x3fd8b5cbff47735c              # double 0.38609599999999999
	.quad	0x3fdb960b6f9fcb0c              # double 0.431033
	.quad	0x3fee5675579af188              # double 0.94805399999999995
	.quad	0x3fe54bb3c81908e6              # double 0.66549100000000005
	.quad	0x3fe86e631f8a0903              # double 0.76347500000000001
	.quad	0x3fe63a55d1c3ac93              # double 0.69462100000000004
	.quad	0x3feb5332acfb762e              # double 0.85390600000000005
	.quad	0x3fe9b13165d39970              # double 0.80288000000000004
	.quad	0x3fd4256bca5375c9              # double 0.31478400000000001
	.quad	0x3fe32d1f1cfbb949              # double 0.59925799999999996
	.quad	0x3fe6e9b17481b21c              # double 0.71602699999999997
	.quad	0x3fe0346dc5d63886              # double 0.50639999999999996
	.quad	0x3fe8ae3821af7d31              # double 0.77126700000000004
	.quad	0x3fc0a0dbad3a604e              # double 0.129909
	.quad	0x3f8a038194c01605              # double 0.012702
	.quad	0x3fc556323bbc6eb1              # double 0.16669300000000001
	.quad	0x3fda950763a19008              # double 0.41534599999999999
	.quad	0x3feea231832fcac9              # double 0.95729900000000001
	.quad	0x3fe68060780fdc16              # double 0.70317099999999999
	.quad	0x3fb898b2e9ccb7d4              # double 0.096079999999999998
	.quad	0x3fb5fa54c5543287              # double 0.085850999999999997
	.quad	0x3fe88ea18372e6a7              # double 0.76741099999999995
	.quad	0x3fea46e2a80064aa              # double 0.82115300000000002
	.quad	0x3fd4f2b66b6177ea              # double 0.32731399999999999
	.quad	0x3fc21f31f46ed246              # double 0.14157700000000001
	.quad	0x3fb8a0b1bbcf4e87              # double 0.096201999999999996
	.quad	0x3fc15cb790fb6567              # double 0.13564200000000001
	.quad	0x3fd1d91eeaa6d267              # double 0.27887699999999999
	.quad	0x3fc6054ef459d990              # double 0.172037
	.quad	0x3fbbed0f6273929f              # double 0.109086
	.quad	0x3fd19a1b9f98b71c              # double 0.27503100000000003
	.quad	0x3f9a8bd230b9dc2f              # double 0.025923999999999999
	.quad	0x3fc442d05f288484              # double 0.15828900000000001
	.quad	0x3fcd9e94ab1d4f9c              # double 0.231402
	.quad	0x3fddebedfa43fe5d              # double 0.46752500000000002
	.quad	0x3fc5353b4b2fa93b              # double 0.165687
	.quad	0x3fdec3dab5c39bcc              # double 0.48070400000000002
	.quad	0x3fe8c508b32ce896              # double 0.77405199999999996
	.quad	0x3fb1e95b78cc9a78              # double 0.069967000000000001
	.quad	0x3fd011dffc5479d5              # double 0.25109100000000001
	.quad	0x3fc7fc9ff92f2b67              # double 0.18739700000000001
	.quad	0x3fd674538ef34d6a              # double 0.35085
	.quad	0x3fe3ef1348b22079              # double 0.62293399999999999
	.quad	0x3fd555eaee2003ac              # double 0.33336900000000003
	.quad	0x3fe532fcac8e68e4              # double 0.66247400000000001
	.quad	0x3fec64430b178b37              # double 0.887239
	.quad	0x3fd802c9081c2e34              # double 0.37517
	.quad	0x3fefee4c0df58c09              # double 0.99783900000000003
	.quad	0x3fcf3ab430f49492              # double 0.243979
	.quad	0x3fed22d2fe3f35a0              # double 0.910501
	.quad	0x3fd15c5718eb8950              # double 0.27126099999999997
	.quad	0x3fda965b20b8066c              # double 0.41542699999999999
	.quad	0x3fdf4aec8d5c7475              # double 0.48894799999999999
	.quad	0x3fe528e92d55a3a1              # double 0.66124400000000005
	.quad	0x3fde331a08bfc222              # double 0.47186899999999998
	.quad	0x3feea839042d8c2a              # double 0.95803499999999997
	.quad	0x3fd12c12ad81adeb              # double 0.26831500000000003
	.quad	0x3fd35e071c53f39d              # double 0.30261399999999999
	.quad	0x3fd89a2834d26fa4              # double 0.384409
	.quad	0x3fee8bda9435ac8a              # double 0.95457199999999998
	.quad	0x3fe6490a350d2807              # double 0.69641600000000004
	.quad	0x3fef2d1d041cc533              # double 0.97425700000000003
	.quad	0x3fd6e99a62ed3522              # double 0.35800799999999999
	.quad	0x3fce983d790752db              # double 0.23902100000000001
	.quad	0x3fe9f65dbfceb789              # double 0.81132400000000005
	.quad	0x3fde40bfe3b03e21              # double 0.47270200000000001
	.quad	0x3fe9aea52ef911cf              # double 0.80256899999999998
	.quad	0x3fe363608d08919f              # double 0.605881
	.quad	0x3fe466dbd72bcb60              # double 0.63755600000000001
	.quad	0x3fcd4edb2f661f19              # double 0.22896900000000001
	.quad	0x3fe074b1ee243569              # double 0.51424499999999995
	.quad	0x3fcd9dd3bafd9770              # double 0.231379
	.quad	0x3feeacaff6d33094              # double 0.95857999999999998
	.quad	0x3fe23250b524399b              # double 0.56864199999999998
	.quad	0x3fb2b8b69552e2fc              # double 0.073131000000000002
	.quad	0x3fe538eb0318b934              # double 0.66319799999999995
	.quad	0x3fd674fb549f9485              # double 0.35088999999999998
	.quad	0x3fe49b866e43aa7a              # double 0.64398500000000003
	.quad	0x3fed9e6cd29131ec              # double 0.92558899999999999
	.quad	0x3fdb31ceaf251c19              # double 0.42491499999999999
	.quad	0x3fef986db50f40e6              # double 0.98735700000000004
	.quad	0x3fe85606317268d3              # double 0.76050099999999998
	.quad	0x3fdd29dc725c3dee              # double 0.45567999999999997
	.quad	0x3fe3dafd113836a8              # double 0.62048199999999998
	.quad	0x3fe64c09c3ce208a              # double 0.69678200000000001
	.quad	0x3fc2b66b6177ea1c              # double 0.14619199999999999
	.quad	0x3fdeb256ffc115df              # double 0.47963499999999998
	.quad	0x3fd5a133c1ce6c09              # double 0.33796399999999999
	.quad	0x3fe0da22f6a50d6b              # double 0.52662799999999999
	.quad	0x3fe2d6a161e4f766              # double 0.5887
	.quad	0x3fcd91b3f20a73f7              # double 0.23100899999999999
	.quad	0x3fefd30ced4e4c94              # double 0.99451299999999998
	.quad	0x3feac9235f809918              # double 0.83705300000000005
	.quad	0x3fa9d14e3bcd35a8              # double 0.050424999999999998
	.quad	0x3fd4ea57214f0521              # double 0.32680300000000001
	.quad	0x3fe95785f8d2e515              # double 0.79193400000000003
	.quad	0x3fe9888d6d3b6cbe              # double 0.79791900000000004
	.quad	0x3fd295182a9930be              # double 0.29035
	.quad	0x3fd4b8f57f737da6              # double 0.32378899999999999
	.quad	0x3fe208f861a60d45              # double 0.56359499999999996
	.quad	0x3f90739b024f6599              # double 0.016066
	.quad	0x3fd72328f9f44d44              # double 0.36152099999999998
	.quad	0x3fdf3f141205bc02              # double 0.48822500000000002
	.quad	0x3feb84af922962d0              # double 0.85994700000000002
	.quad	0x3fab3b7521144cbe              # double 0.053187999999999999
	.quad	0x3fea9fe21d96e9bc              # double 0.832017
	.quad	0x3fee45cfede97d07              # double 0.94602200000000003
	.quad	0x3fdeadbc664d3bf3              # double 0.479354
	.quad	0x3fede6e86c6583e8              # double 0.93443699999999996
	.quad	0x3f7f82b1f687b13a              # double 0.0076930000000000002
	.quad	0x3fe86759ab6d00b4              # double 0.76261599999999996
	.quad	0x3fd1b17481b21c47              # double 0.27645599999999998
	.quad	0x3fc6b4f1e4b44a1f              # double 0.177397
	.quad	0x3fcbf90d9d7774ac              # double 0.21853800000000001
	.quad	0x3fc509d0635a426c              # double 0.16436200000000001
	.quad	0x3fe07583a53b8e4c              # double 0.51434500000000005
	.quad	0x3fd6a8fc0d2c386d              # double 0.35406399999999999
	.quad	0x3fd5ccdd93c46d83              # double 0.34062900000000002
	.quad	0x3fd894467381d7dc              # double 0.38405
	.quad	0x3fddc36544fe36d2              # double 0.46505099999999999
	.quad	0x3fd9e27179bfdf7f              # double 0.40444600000000003
	.quad	0x3fe644aa53fc0097              # double 0.695882
	.quad	0x3fe60e3476295209              # double 0.68923400000000001
	.quad	0x3fe8622813448063              # double 0.76198200000000005
	.quad	0x3fe3f4f0d844d014              # double 0.62365000000000004
	.quad	0x3fd88919ef954eb1              # double 0.38336799999999999
	.quad	0x3fc794c016052503              # double 0.184227
	.quad	0x3fe6643675ddd2af              # double 0.69973300000000005
	.quad	0x3fe47f6d330941c8              # double 0.64055499999999999
	.quad	0x3fe31e53a81dc0db              # double 0.59745199999999998
	.quad	0x3fea9f080303c07f              # double 0.83191300000000001
	.quad	0x3fed3964a59c065b              # double 0.91325599999999996
	.quad	0x3fdd67fd3f5b5fa2              # double 0.45947199999999999
	.quad	0x3fee1c5c5718eb89              # double 0.94096199999999997
	.quad	0x3fd1df69878316a0              # double 0.27926099999999998
	.quad	0x3fdf05af6c69b5a6              # double 0.48472199999999999
	.quad	0x3fea30d306a2b170              # double 0.81845999999999997
	.quad	0x3fe3570a3d70a3d7              # double 0.604375
	.quad	0x3f9bc2fc69728a61              # double 0.027111
	.quad	0x3fe3dda272862f5a              # double 0.62080500000000005
	.quad	0x3fcaabcd78c436fc              # double 0.208368
	.quad	0x3fda8583621fafc9              # double 0.41439900000000002
	.quad	0x3fd178b3700474da              # double 0.27299200000000001
	.quad	0x3fb47cd898b2e9cd              # double 0.080030000000000004
	.quad	0x3fdbbcb5fe542e55              # double 0.43339299999999997
	.quad	0x3fc0fc3f811f4f51              # double 0.13269800000000001
	.quad	0x3fe583a53b8e4b88              # double 0.67232000000000003
	.quad	0x3fe9c0bdcad14a0a              # double 0.80477799999999999
	.quad	0x3fef9be09bb6aa4c              # double 0.98777800000000004
	.quad	0x3fe54b81733226c4              # double 0.66546700000000003
	.quad	0x3fe8255d1c3ac92a              # double 0.75456100000000004
	.quad	0x3fe5f5d56f32bdc2              # double 0.68625899999999995
	.quad	0x3fc4f123c42a66dc              # double 0.163609
	.quad	0x3feaa4bfd2e94680              # double 0.83261099999999999
	.quad	0x3fc1dddb1209edc0              # double 0.13958300000000001
	.quad	0x3fd90f776c4827b7              # double 0.391569
	.quad	0x3fabbff8a8f3a9b0              # double 0.054198999999999997
	.quad	0x3fef1f14983d7907              # double 0.97254399999999996
	.quad	0x3fefd25cc426351e              # double 0.99442900000000001
	.quad	0x3fbf38b47c73eee5              # double 0.121959
	.quad	0x3fef9845dc832336              # double 0.98733800000000005
	.quad	0x3fdb7296f6512a95              # double 0.428869
	.quad	0x3fd4cd31769a9110              # double 0.32502399999999998
	.quad	0x3fefe6601bc98a22              # double 0.99687199999999998
	.quad	0x3fdc43fa2ad3e921              # double 0.44164900000000001
	.quad	0x3fe7675579af1887              # double 0.73136400000000001
	.quad	0x3fd39c1b54195cc8              # double 0.30640299999999998
	.quad	0x3fd535b4edb2f662              # double 0.331403
	.quad	0x3fd7f2990f301eac              # double 0.37418200000000001
	.quad	0x3fc311409a240315              # double 0.14896400000000001
	.quad	0x3fe3c1fa76534374              # double 0.61742900000000001
	.quad	0x3fc309203a322af5              # double 0.14871599999999999
	.quad	0x3fd76cb5350092cd              # double 0.36601
	.quad	0x3fdbaec0724b76f7              # double 0.43254100000000001
	.quad	0x3fd4c6de76427c7c              # double 0.32463799999999998
	.quad	0x3f91c9f72f76e610              # double 0.017371999999999999
	.quad	0x3fc0906034f3fd93              # double 0.12940599999999999
	.quad	0x3fbf9a5a89b951c6              # double 0.123449
	.quad	0x3fa4f850df15a4ad              # double 0.040957
	.quad	0x3fd50329802c0a4a              # double 0.328318
	.quad	0x3fe2ae90364388ec              # double 0.58380900000000002
	.quad	0x3fc4767d34df04de              # double 0.15986600000000001
	.quad	0x3fe77eda66128390              # double 0.73423499999999997
	.quad	0x3fe0525892684cf0              # double 0.51005199999999995
	.quad	0x3fe077c45cbbc2b9              # double 0.51461999999999997
	.quad	0x3faebf22c01e68a1              # double 0.060052000000000001
	.quad	0x3fe666b3fe9fadb0              # double 0.70003700000000002
	.quad	0x3fd889331a08bfc2              # double 0.38337399999999999
	.quad	0x3fecc6cdaf4adbc6              # double 0.89926799999999996
	.quad	0x3fcd2a0663c74fb5              # double 0.22784499999999999
	.quad	0x3fdc451761459536              # double 0.44171700000000003
	.quad	0x3fced68837718655              # double 0.240922
	.quad	0x3fe01d0e991ff716              # double 0.50354699999999997
	.quad	0x3fc7589efd86a8fc              # double 0.182392
	.quad	0x3fd4f98fa376922e              # double 0.32773200000000002
	.quad	0x3fecaa79bbadc098              # double 0.89581
	.quad	0x3fe0e09bb6aa4b99              # double 0.52741800000000005
	.quad	0x3fd9dcc63f141206              # double 0.40410000000000001
	.quad	0x3fe761a1db877ab3              # double 0.73066799999999998
	.quad	0x3fd57304039abf34              # double 0.33514500000000003
	.quad	0x3feb1947cfa26a23              # double 0.84683600000000003
	.quad	0x3fc26aa8eb463498              # double 0.14388000000000001
	.quad	0x3fe9019f3c70c997              # double 0.78144800000000003
	.quad	0x3fefd60c7c0f4517              # double 0.99487899999999995
	.quad	0x3fded801b4352652              # double 0.48193399999999997
	.quad	0x3fe3e3821af7d30b              # double 0.62152200000000002
	.quad	0x3fea7952d234eb9a              # double 0.82730999999999999
	.quad	0x3feaf55bccaf709b              # double 0.84245099999999995
	.quad	0x3fee3cf0b6b6e0d2              # double 0.94493899999999997
	.quad	0x3f508c3f3e0370ce              # double 0.00101
	.quad	0x3fd6847f562174c5              # double 0.35183700000000001
	.quad	0x3fc8358afc47e49b              # double 0.189134
	.quad	0x3fec9cffeb074a77              # double 0.89416499999999999
	.quad	0x3fe3b4c1a8ac5c14              # double 0.615815
	.quad	0x3fe7aa8a82a5614e              # double 0.739568
	.quad	0x3fde5f17bd8be729              # double 0.47455399999999998
	.quad	0x3fef71971c10d7bf              # double 0.98261600000000004
	.quad	0x3fd8e9856a37ac3f              # double 0.38925300000000002
	.quad	0x3fe6934699418506              # double 0.70547800000000005
	.quad	0x3fe0c241c3efae79              # double 0.52371299999999998
	.quad	0x3fead69d30270f39              # double 0.83869800000000005
	.quad	0x3fbd18b0d0edc3bd              # double 0.113658
	.quad	0x3fd95d1c3ac929aa              # double 0.39630799999999999
	.quad	0x3fc9e3fbbd7b2032              # double 0.20227000000000001
	.quad	0x3fe56b6bf444e0db              # double 0.66936300000000004
	.quad	0x3fbdbb6aa4b9884c              # double 0.11614099999999999
	.quad	0x3fc2814d72799a20              # double 0.14457100000000001
	.quad	0x3fd45eaab042528b              # double 0.31827800000000001
	.quad	0x3fe929f16b11c6d2              # double 0.78637000000000001
	.quad	0x3fea310129cbab65              # double 0.81848200000000004
	.quad	0x3fe4da5119ce075f              # double 0.65164999999999995
	.quad	0x3fc19fdbd2fa0d78              # double 0.13769100000000001
	.quad	0x3fcfa49c2c1b10fd              # double 0.24721099999999999
	.quad	0x3fe263e6c4c5974e              # double 0.57469499999999996
	.quad	0x3fc816aceaaf35e3              # double 0.188192
	.quad	0x3fee07442c7fbacb              # double 0.93838699999999997
	.quad	0x3fa36113404ea4a9              # double 0.037850000000000002
	.quad	0x3fd357c4e2f37fbf              # double 0.302232
	.quad	0x3fd10e12e83a109d              # double 0.266484
	.quad	0x3fe212b7fe08aefb              # double 0.56478499999999998
	.quad	0x3fc60e7bc3c5bd0e              # double 0.172317
	.quad	0x3fb98aeb80ecfa6a              # double 0.099776000000000003
	.quad	0x3fbe1ef73c0c1fc9              # double 0.11766
	.quad	0x3fca0242d05f2885              # double 0.20319400000000001
	.quad	0x3fd25436b8f9b131              # double 0.28638999999999998
	.quad	0x3fca34c1a8ac5c14              # double 0.204735
	.quad	0x3fd71a005c4651f4              # double 0.36096200000000001
	.quad	0x3fec2d1d041cc533              # double 0.88050700000000004
	.quad	0x3fd23860999dcb58              # double 0.28469100000000003
	.quad	0x3fdf58ea7ce0fc2f              # double 0.48980200000000002
	.quad	0x3fc84883fd502257              # double 0.18971299999999999
	.quad	0x3fe901322f2734f8              # double 0.78139599999999998
	.quad	0x3fe10e325d4a5df2              # double 0.53298299999999998
	.quad	0x3fc40bdcad14a0a1              # double 0.156612
	.quad	0x3fde426fe718a86d              # double 0.47280499999999998
	.quad	0x3fd552ef911cf356              # double 0.33318700000000001
	.quad	0x3fe3ee696a26e547              # double 0.62285299999999999
	.quad	0x3fc40c308feac42f              # double 0.15662200000000001
	.quad	0x3fe1f47b677f6b1a              # double 0.56109399999999998
	.quad	0x3fd85dc8323358f3              # double 0.38072400000000001
	.quad	0x3fec2f09d8c6d613              # double 0.88074200000000002
	.quad	0x3fea60157eed45e9              # double 0.82422899999999999
	.quad	0x3fe6b19a415f45e1              # double 0.70918000000000003
	.quad	0x3fb61e0c5a8155d6              # double 0.086396
	.quad	0x3fe06a747d805e5f              # double 0.51299499999999998
	.quad	0x3fc271a3b14a9047              # double 0.144093
	.quad	0x3fb6cf0f9d2bf551              # double 0.089096999999999996
	.quad	0x3fc7d4845132f87b              # double 0.18617300000000001
	.quad	0x3fdfec7000431bdf              # double 0.49880600000000003
	.quad	0x3fe2535eb7457c0b              # double 0.57267699999999999
	.quad	0x3fe82ad81adea897              # double 0.75522999999999996
	.quad	0x3fd59ad85dfa871a              # double 0.33757599999999999
	.quad	0x3fcb47f13059641f              # double 0.21313299999999999
	.quad	0x3fe832074ea8da7f              # double 0.75610699999999997
	.quad	0x3fd956473471f794              # double 0.39589099999999999
	.quad	0x3fd714488c60cbf3              # double 0.36061300000000002
	.quad	0x3fea704577d95571              # double 0.82620499999999997
	.quad	0x3fea33daf8df7a4e              # double 0.81882999999999995
	.quad	0x3fe20b6523704791              # double 0.56389100000000003
	.quad	0x3fd535f80991793a              # double 0.33141900000000002
	.quad	0x3fec922d948dc11e              # double 0.89284399999999997
	.quad	0x3fe45fce3150dae4              # double 0.63669500000000001
	.quad	0x3fe57c5ef62f9ca6              # double 0.67143200000000003
	.quad	0x3fd1fdda8bd230ba              # double 0.28111900000000001
	.quad	0x3fc47b99d451fc4c              # double 0.160022
	.quad	0x3fe306f262888b54              # double 0.59459799999999996
	.quad	0x3fd97cd035371972              # double 0.39824300000000001
	.quad	0x3fcb682730c67169              # double 0.214116
	.quad	0x3fc175afaf859429              # double 0.136404
	.quad	0x3fea6f3b213e3e29              # double 0.82607799999999998
	.quad	0x3fc3eb6bf444e0db              # double 0.15562200000000001
	.quad	0x3feebfdf7e8038a0              # double 0.96092200000000005
	.quad	0x3fe35c7cd898b2ea              # double 0.60504000000000002
	.quad	0x3fe27d523b3636f4              # double 0.57779800000000003
	.quad	0x3fe26cbb7f9d6f11              # double 0.57577299999999998
	.quad	0x3fe64914b167ec78              # double 0.69642099999999996
	.quad	0x3fd57ff151e75361              # double 0.33593400000000001
	.quad	0x3fcf85058dde7a74              # double 0.24624699999999999
	.quad	0x3fc68e60807357e6              # double 0.17621999999999999
	.quad	0x3fe8cd6a161e4f76              # double 0.77507499999999996
	.quad	0x3fe8b5ac8a372607              # double 0.772177
	.quad	0x3fe41de050374ff8              # double 0.62864699999999996
	.quad	0x3fd97125dd095af3              # double 0.39753100000000002
	.quad	0x3fe8950fc71d6063              # double 0.76819599999999999
	.quad	0x3fe11e9af5ba2be0              # double 0.53498599999999996
	.quad	0x3fd54b9cb6848beb              # double 0.33273999999999998
	.quad	0x3fe2165b20b8066c              # double 0.56522899999999998
	.quad	0x3fecf11f926c7eae              # double 0.90443399999999996
	.quad	0x3faaed99cbee807c              # double 0.052594000000000002
	.quad	0x3fdd5a8155d5f56a              # double 0.45864899999999997
	.quad	0x3fda1b4fe79ee02a              # double 0.40791699999999997
	.quad	0x3fd5bdc69f8c21e2              # double 0.33970800000000001
	.quad	0x3fb96e696a26e547              # double 0.099340999999999999
	.quad	0x3fd32c9081c2e33f              # double 0.299595
	.quad	0x3fe7ce5b4245f5ae              # double 0.74394000000000005
	.quad	0x3fd6a8155d5f56a8              # double 0.35400900000000002
	.quad	0x3fefdaa2e3c536d6              # double 0.99543899999999996
	.quad	0x3fdab14ec204f2ae              # double 0.417072
	.quad	0x3fb9fd1569f49060              # double 0.101518
	.quad	0x3fd393c03bc4d22d              # double 0.30589300000000003
	.quad	0x3fe9a428d434a01b              # double 0.80128900000000003
	.quad	0x3fbbd2849cb252ce              # double 0.108681
	.quad	0x3febaccb3a2595bc              # double 0.86484300000000002
	.quad	0x3fcbbc0a06e9ff0d              # double 0.21667600000000001
	.quad	0x3fe8bf37b8d3f184              # double 0.77334199999999997
	.quad	0x3fa15d4e8fb00bcc              # double 0.033915000000000001
	.quad	0x3fe88307f23cc8de              # double 0.76599499999999998
	.quad	0x3fee4a1ad6451b93              # double 0.946546
	.quad	0x3fddf1f9acffa7eb              # double 0.46789399999999998
	.quad	0x3f87878b7a1c25d0              # double 0.011488999999999999
	.quad	0x3fa8fb43d89ce4a8              # double 0.048792000000000002
	.quad	0x3fd0ab53d640e9d5              # double 0.26045699999999999
	.quad	0x3fdde536501e2585              # double 0.467115
	.quad	0x3fdff166e008e9b4              # double 0.49910900000000002
	.quad	0x3fea03cd141a6938              # double 0.81296400000000002
	.quad	0x3f957eed45e9185d              # double 0.020992
	.quad	0x3fe554c33b539325              # double 0.666597
	.quad	0x3fe0f8ad25679896              # double 0.53035600000000005
	.quad	0x3fd301a79fec99f2              # double 0.29697600000000002
	.quad	0x3fed2ae07e5a78f2              # double 0.91148399999999996
	.quad	0x3fe9cc8de2ac3223              # double 0.80622000000000005
	.quad	0x3fee4ad14a0a0f4d              # double 0.94663299999999995
	.quad	0x3fdc90bc7b45f17c              # double 0.44633400000000001
	.quad	0x3fd520d5629d840a              # double 0.33012900000000001
	.quad	0x3fe116ebd4cfd08d              # double 0.53404799999999997
	.quad	0x3fed7034b0e1b4bb              # double 0.91994699999999996
	.quad	0x3fc9e60c38f36695              # double 0.20233300000000001
	.quad	0x3feba580c308feac              # double 0.86395299999999997
	.quad	0x3fec7efe0ce0b913              # double 0.89050200000000002
	.quad	0x3fe27b30f8c64fdb              # double 0.577538
	.quad	0x3feee9ced0b30b5b              # double 0.96604100000000003
	.quad	0x3fd541205bc01a37              # double 0.33210000000000001
	.quad	0x3f9f48c2e770bd01              # double 0.030550999999999998
	.quad	0x3feb36b2af145522              # double 0.85042700000000004
	.quad	0x3fd48f861a60d456              # double 0.32125999999999999
	.quad	0x3fe1d883ba3443d4              # double 0.55767999999999995
	.quad	0x3fd6676a7264a16a              # double 0.35006199999999998
	.quad	0x3fd9e9b7bf1e8e61              # double 0.40489000000000003
	.quad	0x3fc6990f301eabbd              # double 0.17654600000000001
	.quad	0x3fdaa72a7bd48cb5              # double 0.41645300000000002
	.quad	0x3feaf266ba493c8a              # double 0.84209000000000001
	.quad	0x3fd0ff1d81f10668              # double 0.265571
	.quad	0x3fe10995aaf78fef              # double 0.53242
	.quad	0x3fd5b0f6ad70e6f3              # double 0.33892600000000001
	.quad	0x3fcc39e6ab9b23dd              # double 0.22051699999999999
	.quad	0x3fe8cb5dcc63f141              # double 0.77482499999999999
	.quad	0x3feda1c8a7a41e58              # double 0.92599900000000002
	.quad	0x3fdb322291fb3fa7              # double 0.42493500000000001
	.quad	0x3fe62253111f0c35              # double 0.69169000000000003
	.quad	0x3fc225f202107b78              # double 0.14178299999999999
	.quad	0x3fd0e4fb97bb7308              # double 0.26397599999999999
	.quad	0x3fc620f6f08cc576              # double 0.17288100000000001
	.quad	0x3fdb0de4c51116a9              # double 0.42272300000000002
	.quad	0x3fdf4a38327674d1              # double 0.48890499999999998
	.quad	0x3fa2fb7e90ff9724              # double 0.037074999999999997
	.quad	0x3f94d1a650614163              # double 0.020330999999999998
	.quad	0x3feaf31d2e0e3044              # double 0.84217699999999995
	.quad	0x3fb88882f0e0a84c              # double 0.095833000000000001
	.quad	0x3fd5ac3a860dcb9b              # double 0.33863700000000002
	.quad	0x3fef84f4c6e6d9be              # double 0.98497999999999997
	.quad	0x3fe7a3315d701d9f              # double 0.73867099999999997
	.quad	0x3fe4115592d98bf8              # double 0.62711600000000001
	.quad	0x3fd3c9ea9a3d2d88              # double 0.309199
	.quad	0x3fc61522a6f3f530              # double 0.17252000000000001
	.quad	0x3fec2a821f2990f3              # double 0.880189
	.quad	0x3fe372ae07e5a78f              # double 0.60774899999999998
	.quad	0x3fea03cf2cf95d4f              # double 0.81296500000000005
	.quad	0x3fb32830a0b1bbcf              # double 0.074831999999999996
	.quad	0x3fd996e58a32f449              # double 0.399835
	.quad	0x3fededa0168b5cc0              # double 0.935257
	.quad	0x3fe613b9f127f5e8              # double 0.68990799999999997
	.quad	0x3fe8c9107faa044b              # double 0.77454400000000001
	.quad	0x3fb0ee9dd7ecbb80              # double 0.066141000000000005
	.quad	0x3fb4c9b845564b66              # double 0.081202999999999997
	.quad	0x3fe79fbc5de9c023              # double 0.73824900000000004
	.quad	0x3fc97dfa00e27e0f              # double 0.199157
	.quad	0x3fd1e4712e40852b              # double 0.27956799999999998
	.quad	0x3fe6e1aa3f034b0e              # double 0.71504699999999999
	.quad	0x3fc79e40c8472c0e              # double 0.18451699999999999
	.quad	0x3fe03f83382e44b7              # double 0.50775300000000001
	.quad	0x3fa65cd4ed2cbea5              # double 0.043677000000000001
	.quad	0x3fa8c1db0142f61f              # double 0.048354000000000001
	.quad	0x3fe4c79b34a44c7b              # double 0.649366
	.quad	0x3fe8d8969a0ad8a1              # double 0.77643899999999999
	.quad	0x3fed49081c2e33f0              # double 0.91516500000000001
	.quad	0x3feec579f2346562              # double 0.96160599999999996
	.quad	0x3fd34ba51a005c46              # double 0.30149199999999998
	.quad	0x3fe2dae5ffa3b9ae              # double 0.58922099999999999
	.quad	0x3fd320817fc7607c              # double 0.29885899999999999
	.quad	0x3fd17e77d523b363              # double 0.27334399999999998
	.quad	0x3fd92888b545c78a              # double 0.39309899999999998
	.quad	0x3fedebf444e0daa1              # double 0.93505300000000002
	.quad	0x3fc4c07aaef2c732              # double 0.16212399999999999
	.quad	0x3feb5b7ae5796bfd              # double 0.85491700000000004
	.quad	0x3fe1741f212d7732              # double 0.54542500000000005
	.quad	0x3fe369fcf3dc054f              # double 0.60668800000000001
	.quad	0x3fd233daf8df7a4e              # double 0.28441499999999997
	.quad	0x3fcb6ededaec4a41              # double 0.21432100000000001
	.quad	0x3fedf9f666234a88              # double 0.93676300000000001
	.quad	0x3fde945b6c3760bf              # double 0.47780499999999998
	.quad	0x3fc165668c261390              # double 0.135907
	.quad	0x3fa9e108c3f3e037              # double 0.050545
	.quad	0x3fcac1a048e043a2              # double 0.209034
	.quad	0x3feb31209edbf8ba              # double 0.84974700000000003
	.quad	0x3fcd3e5753a3ec03              # double 0.228465
	.quad	0x3fef7b82c2bd7f52              # double 0.98382700000000001
	.quad	0x3fd9793dd97f62b7              # double 0.39802500000000002
	.quad	0x3fe209ca18bd6627              # double 0.56369499999999995
	.quad	0x3f9234eb9a176ddb              # double 0.017780000000000001
	.quad	0x3fe95cb1465e8922              # double 0.79256499999999996
	.quad	0x3fd5305532617c1c              # double 0.33107500000000001
	.quad	0x3fe9649b1fab96f2              # double 0.79353099999999999
	.quad	0x3fe6afcce1c58256              # double 0.70896000000000003
	.quad	0x3fe8bff69014b59a              # double 0.77343300000000004
	.quad	0x3fe639170d62bf12              # double 0.694469
	.quad	0x3fe46dd052934acb              # double 0.638405
	.quad	0x3fb3305100a393ee              # double 0.074955999999999995
	.quad	0x3fc76db940fecdd1              # double 0.183036
	.quad	0x3feadb6e503fb374              # double 0.83928599999999997
	.quad	0x3fe3bedb7281fd9c              # double 0.61704800000000004
	.quad	0x3fd2eb9a176ddacf              # double 0.29563
	.quad	0x3fd5e121ee675148              # double 0.341866
	.quad	0x3fd6ab862b27cbf7              # double 0.35421900000000001
	.quad	0x3fd4cbc05d52c16e              # double 0.324936
	.quad	0x3fda840e1719f7f9              # double 0.41431000000000001
	.quad	0x3fc9843c3a42f1ed              # double 0.199348
	.quad	0x3fe1fc2eba27ae9b              # double 0.56203400000000003
	.quad	0x3fc7ed8d36b4c7f3              # double 0.18693699999999999
	.quad	0x3fea8f8a4c1ebc84              # double 0.83002200000000003
	.quad	0x3feba7c17a89331a              # double 0.864228
	.quad	0x3fe7ccaf709b738e              # double 0.74373599999999995
	.quad	0x3fe2a6634117f844              # double 0.58281099999999997
	.quad	0x3fed816052502eec              # double 0.92204299999999994
	.quad	0x3fef51b0ccbc05d5              # double 0.97872199999999998
	.quad	0x3fe9a98676a7264a              # double 0.80194399999999999
	.quad	0x3fcdccaf709b738e              # double 0.23280899999999999
	.quad	0x3fdfc1f85d744f5d              # double 0.49621399999999999
	.quad	0x3fd09efd86a8fc0d              # double 0.25970399999999999
	.quad	0x3fe84ddd6e04c059              # double 0.75950499999999999
	.quad	0x3fea7633ce63a5c2              # double 0.82692900000000003
	.quad	0x3fe790fb65668c26              # double 0.73644799999999999
	.quad	0x3f8f455a7d24180d              # double 0.015269
	.quad	0x3fc958a761027957              # double 0.198018
	.quad	0x3fd7e2ef4e0114d3              # double 0.373226
	.quad	0x3fe55fdef8487b9a              # double 0.66795300000000002
	.quad	0x3fe0e73e681a9b8d              # double 0.52822800000000003
	.quad	0x3fe3a7221858bc5a              # double 0.61415200000000003
	.quad	0x3fd3e2541d8e8640              # double 0.31068899999999999
	.quad	0x3fdda00e27e0ef9a              # double 0.46289400000000003
	.quad	0x3fea1fafc8b0079a              # double 0.81636799999999998
	.quad	0x3fe96b65a9a80496              # double 0.79435999999999996
	.quad	0x3fe9a730c67168f9              # double 0.80165900000000001
	.quad	0x3fdb035371971c11              # double 0.42207800000000001
	.quad	0x3fd5ca148ba83f4f              # double 0.34045900000000001
	.quad	0x3fdaf8769ec2ce46              # double 0.42141499999999998
	.quad	0x3f897fe8ee6b8306              # double 0.012451
	.quad	0x3faee58a32f44913              # double 0.060345000000000003
	.quad	0x3fe4648e8a71de6a              # double 0.63727500000000004
	.quad	0x3fd41e646f156191              # double 0.314355
	.quad	0x3fe8a93f290abb45              # double 0.77066000000000001
	.quad	0x3fd5eae18ac9f2fe              # double 0.34246100000000002
	.quad	0x3feab93037d63023              # double 0.83510600000000001
	.quad	0x3fedcfdd22856606              # double 0.93162400000000001
	.quad	0x3fb7eb5b2d4d4025              # double 0.093435000000000004
	.quad	0x3fb1e646f1561911              # double 0.069919999999999996
	.quad	0x3f979b77c02afddb              # double 0.023054000000000002
	.quad	0x3fea04cad57bc7f7              # double 0.81308499999999995
	.quad	0x3fe01af1886df82b              # double 0.50328899999999999
	.quad	0x3fbd71f36262cba7              # double 0.11502
	.quad	0x3f634ce3de6149c7              # double 0.002356
	.quad	0x3fd919eb6390c910              # double 0.39220699999999997
	.quad	0x3fd7a4bdba0a5269              # double 0.36942999999999998
	.quad	0x3fc48f7db6e503fb              # double 0.16062899999999999
	.quad	0x3fd167903211cb04              # double 0.27194600000000002
	.quad	0x3fd1ecc814d7279a              # double 0.28007700000000002
	.quad	0x3fc92fe3f359ff50              # double 0.196774
	.quad	0x3fe9ab25b317efe1              # double 0.80214200000000002
	.quad	0x3fcb475a31a4bdba              # double 0.213115
	.quad	0x3fb9e75360d02470              # double 0.101186
	.quad	0x3fe280a9de8b3b32              # double 0.578206
	.quad	0x3fed9b23dd54da4d              # double 0.92518800000000001
	.quad	0x3fdd71e6cd29131f              # double 0.46007700000000001
	.quad	0x3feefeae5bc87db3              # double 0.96858900000000003
	.quad	0x3fe9144aa53fc009              # double 0.78372699999999995
	.quad	0x3fde704bc27631b6              # double 0.47560400000000003
	.quad	0x3fdfa9a8049667b6              # double 0.49473
	.quad	0x3fdecd3e0bd44999              # double 0.48127700000000001
	.quad	0x3fc8d4d4024b33db              # double 0.193995
	.quad	0x3fd2ae07e5a78f26              # double 0.29187200000000002
	.quad	0x3fd83897204295a7              # double 0.37845400000000001
	.quad	0x3fd0e1eb4202d9cf              # double 0.263789
	.quad	0x3feba0fb224aada3              # double 0.86340099999999997
	.quad	0x3fe5be0370cdc875              # double 0.67944499999999997
	.quad	0x3fdb336deb95e5b0              # double 0.425014
	.quad	0x3fe85fa658c4bd34              # double 0.76167600000000001
	.quad	0x3feeb6f3b213e3e3              # double 0.95983300000000004
	.quad	0x3fba3369b9d7fd82              # double 0.10234699999999999
	.quad	0x3fbff4dbdf8f4730              # double 0.12483
	.quad	0x3fd9597d49d7ba67              # double 0.39608700000000002
	.quad	0x3feae9dd7ecbb7fa              # double 0.84104800000000002
	.quad	0x3fed5bd72bcb5fe5              # double 0.91746099999999997
	.quad	0x3fee332acfb762d8              # double 0.94374599999999997
	.quad	0x3fe4a3c64345cfee              # double 0.64499200000000001
	.quad	0x3fcaf0520d130dfa              # double 0.21045900000000001
	.quad	0x3fefd666a98244e9              # double 0.99492199999999997
	.quad	0x3fe66a22b3892ee8              # double 0.70045599999999997
	.quad	0x3fe3b7a5f41aef70              # double 0.61616800000000005
	.quad	0x3fd55019f3c70c99              # double 0.33301399999999998
	.quad	0x3fbc4b4d056c508b              # double 0.110524
	.quad	0x3fe4da250f840182              # double 0.65162900000000001
	.quad	0x3feae5929670196e              # double 0.84052400000000005
	.quad	0x3fec40010c6f7a0b              # double 0.88281299999999996
	.quad	0x3fbf5a20ddc61954              # double 0.12246899999999999
	.quad	0x3fe6066c2acb85a5              # double 0.68828400000000001
	.quad	0x3fcc03dddb1209ee              # double 0.21886800000000001
	.quad	0x3fe0a04f2ae07e5a              # double 0.51956899999999995
	.quad	0x3feebcf70153bd16              # double 0.96056699999999995
	.quad	0x3fb3f50e34762952              # double 0.077957999999999999
	.quad	0x3fe567a743a647fe              # double 0.66890300000000003
	.quad	0x3fe09dde37585be2              # double 0.51927100000000004
	.quad	0x3fb110b1feeb2d0a              # double 0.066660999999999998
	.quad	0x3fd3371971c10d7c              # double 0.300238
	.quad	0x3fd2325918a009f6              # double 0.28432299999999999
	.quad	0x3fd817507e9d94d1              # double 0.37642300000000001
	.quad	0x3fe9286d71f36263              # double 0.78618500000000002
	.quad	0x3fe3f3cb3e5753a4              # double 0.62351000000000001
	.quad	0x3fd1b328b6d86ec1              # double 0.27655999999999997
	.quad	0x3fcd4be835dedf1e              # double 0.228879
	.quad	0x3fe50d8665e02ea9              # double 0.65790099999999996
	.quad	0x3fe7a26e5471715c              # double 0.73857799999999996
	.quad	0x3fe0a79bbadc0981              # double 0.52046000000000003
	.quad	0x3fa80de4c51116a9              # double 0.046981000000000002
	.quad	0x3fe2dcbddb9841ab              # double 0.58944600000000003
	.quad	0x3fad84901d19157b              # double 0.057652000000000002
	.quad	0x3fdf1e364bec679d              # double 0.48621900000000001
	.quad	0x3fe2982cb20fb225              # double 0.58107600000000004
	.quad	0x3febf3f961804d98              # double 0.87353199999999998
	.quad	0x3fbab2f23033a472              # double 0.104293
	.quad	0x3f82cb641700cd85              # double 0.0091769999999999993
	.quad	0x3fe0b675ddd2ae8e              # double 0.52227299999999999
	.quad	0x3fb5deacc92146a2              # double 0.085429000000000004
	.quad	0x3fd426c3b927d45a              # double 0.31486599999999998
	.quad	0x3fb8268900c521de              # double 0.094338000000000005
	.quad	0x3fd7bc4d22c881e4              # double 0.37086799999999998
	.quad	0x3feef922962cfd8f              # double 0.96791199999999999
	.quad	0x3fe24271fff79c84              # double 0.57061099999999998
	.quad	0x3febf154003254e7              # double 0.87320900000000001
	.quad	0x3fe99dcd7060bb2c              # double 0.80051300000000003
	.quad	0x3fc617d2849cb253              # double 0.17260200000000001
	.quad	0x3fdcf394b7b28955              # double 0.45236700000000002
	.quad	0x3fd3dcdf69878317              # double 0.31035600000000002
	.quad	0x3fe11a3b14a90471              # double 0.53445200000000004
	.quad	0x3fe7793dd97f62b7              # double 0.73355000000000004
	.quad	0x3fde507a6bd6e8b0              # double 0.47366200000000003
	.quad	0x3fef001b43526528              # double 0.96876300000000004
	.quad	0x3fe408dd1e53a81e              # double 0.62608200000000003
	.quad	0x3fe9e0913a4f8727              # double 0.80866300000000002
	.quad	0x3f738de6ddf00abf              # double 0.0047739999999999996
	.quad	0x3fcfbea91d9b1b7a              # double 0.248006
	.quad	0x3fe2870da5daf07c              # double 0.578986
	.quad	0x3fe8734938583622              # double 0.764073
	.quad	0x3fe6f7878b7a1c26              # double 0.71771600000000002
	.quad	0x3febdb0ff10ecb75              # double 0.87049100000000001
	.quad	0x3fadcb9a9da597d5              # double 0.058194000000000003
	.quad	0x3fed7525460aa64c              # double 0.92054999999999997
	.quad	0x3fd90e453d20f2bf              # double 0.39149600000000001
	.quad	0x3fd24b2745bf26f2              # double 0.28583700000000001
	.quad	0x3fe61a36e2eb1c43              # double 0.69069999999999998
	.quad	0x3fed1496249a133c              # double 0.90876299999999998
	.quad	0x3fc4a2b1704ff434              # double 0.161215
	.quad	0x3fd870ac3a860dcc              # double 0.38187700000000002
	.quad	0x3fcc49235f809918              # double 0.22098200000000001
	.quad	0x3fde1f969e3c9689              # double 0.47067799999999999
	.quad	0x3fc2921ccd962068              # double 0.14508399999999999
	.quad	0x3fea77036c9c0a8d              # double 0.82702799999999999
	.quad	0x3fea07bdcf0307f2              # double 0.81344499999999997
	.quad	0x3fc4c93a71151612              # double 0.16239100000000001
	.quad	0x3fe0dda059a73b43              # double 0.52705400000000002
	.quad	0x3fdb3edd8b60f1b2              # double 0.42571199999999998
	.quad	0x3fe729d627bf61aa              # double 0.72385699999999997
	.quad	0x3fd219934efcbd55              # double 0.28281099999999998
	.quad	0x3fc5e7b80a9de8b4              # double 0.17113400000000001
	.quad	0x3fe94be1eb4202da              # double 0.79051300000000002
	.quad	0x3fee4944ed6fda83              # double 0.94644399999999995
	.quad	0x3fc229307af20ea6              # double 0.14188200000000001
	.quad	0x3feb23b57c4e2f38              # double 0.848109
	.quad	0x3fe72096787ce960              # double 0.72272800000000004
	.quad	0x3fe43e835dedf1e1              # double 0.63263100000000005
	.quad	0x3fe5e3497b7414a5              # double 0.68399500000000002
	.quad	0x3fe594dd72367e41              # double 0.67442199999999997
	.quad	0x3fdd3532e7b3d8e0              # double 0.456372
	.quad	0x3fe6e049ecb31c22              # double 0.71487900000000004
	.quad	0x3fdf0f12c27a6373              # double 0.48529499999999998
	.quad	0x3fdec38f36694899              # double 0.480686
	.quad	0x3fe3a8240b780347              # double 0.61427500000000002
	.quad	0x3fe1475e6362a5e8              # double 0.53996200000000005
	.quad	0x3fe37dfa00e27e0f              # double 0.609128
	.quad	0x3fefdf202107b784              # double 0.99598699999999995
	.quad	0x3fe49ae4f3343fa3              # double 0.64390800000000004
	.quad	0x3fe2df2cb641700d              # double 0.58974300000000002
	.quad	0x3fd6b07d0aed99cc              # double 0.354522
	.quad	0x3fc22ed352220bc4              # double 0.14205400000000001
	.quad	0x3fcd28bf3bea91da              # double 0.22780600000000001
	.quad	0x3fdc41e57d9dba91              # double 0.44152200000000003
	.quad	0x3fdbc81d3aa369fd              # double 0.434089
	.quad	0x3fe2ab841248d7e0              # double 0.58343699999999998
	.quad	0x3feb27ded6ba8c58              # double 0.84861699999999995
	.quad	0x3fc27a398201cd60              # double 0.14435500000000001
	.quad	0x3fe2985f06f69446              # double 0.58109999999999995
	.quad	0x3fe31df548ecd8dc              # double 0.59740700000000002
	.quad	0x3fe71e03f705857b              # double 0.722414
	.quad	0x3fc8dcdb37c99ae9              # double 0.19424
	.quad	0x3fbddd7ecbb7f9d7              # double 0.116661
	.quad	0x3feaf822bbecaab9              # double 0.84279000000000004
	.quad	0x3fdcac1094a2b9d4              # double 0.44800200000000001
	.quad	0x3fe22f5126634118              # double 0.568276
	.quad	0x3fd480c308feac43              # double 0.320359
	.quad	0x3fe84dd2f1a9fbe7              # double 0.75949999999999995
	.quad	0x3fd8ad9f0a1be2b5              # double 0.38559700000000002
	.quad	0x3fd939c94f69ca9f              # double 0.394152
	.quad	0x3fde03b3e9a6f827              # double 0.468976
	.quad	0x3fba95c853c14834              # double 0.103848
	.quad	0x3fe2e24bba12b5e5              # double 0.59012399999999998
	.quad	0x3fed1ce28ed5f139              # double 0.90977600000000003
	.quad	0x3fc028cbd1244a62              # double 0.126245
	.quad	0x3feb505f28848388              # double 0.85356100000000001
	.quad	0x3fabf0995aaf78ff              # double 0.05457
	.quad	0x3fd00c8472c0e7bc              # double 0.25076399999999999
	.quad	0x3fe044827b6fe2e7              # double 0.50836300000000001
	.quad	0x3fd8bff47735c183              # double 0.386716
	.quad	0x3fea032fcac8e68e              # double 0.81288899999999997
	.quad	0x3fe9d96851223183              # double 0.80778899999999998
	.quad	0x3fdd833c60029f17              # double 0.46113500000000002
	.quad	0x3fdb877ee4e26d48              # double 0.430145
	.quad	0x3fe91be6e6538690              # double 0.78465600000000002
	.quad	0x3febb5350092ccf7              # double 0.86587000000000003
	.quad	0x3fd68f29d40ee06e              # double 0.35248800000000002
	.quad	0x3fe148e25c810a57              # double 0.54014700000000004
	.quad	0x3fabf61aa3f034b1              # double 0.054612000000000001
	.quad	0x3fe6c508b32ce896              # double 0.71155199999999996
	.quad	0x3fe9a16616b54e2b              # double 0.800952
	.quad	0x3fda8d002e2328fa              # double 0.414856
	.quad	0x3feda253111f0c35              # double 0.92606500000000003
	.quad	0x3fe91fd5885d3133              # double 0.78513599999999995
	.quad	0x3fe8698fe69270b0              # double 0.76288599999999995
	.quad	0x3fcfe0ce0b912dba              # double 0.24904799999999999
	.quad	0x3feffa8b4bf8fcd6              # double 0.99933399999999994
	.quad	0x3fed7b6bb1290258              # double 0.92131600000000002
	.quad	0x3fef9116a8b8f14e              # double 0.98646100000000003
	.quad	0x3fb7ed84d338f798              # double 0.093467999999999996
	.quad	0x3fb378ee28672757              # double 0.076064000000000007
	.quad	0x3fd3f1800a7c5ac4              # double 0.31161499999999998
	.quad	0x3fb65d4a5df2239e              # double 0.087360999999999994
	.quad	0x3feecece9a2c6690              # double 0.96274499999999996
	.quad	0x3fe9653c9abb01c9              # double 0.79360799999999998
	.quad	0x3fe0007dd4413554              # double 0.50005999999999995
	.quad	0x3fe012c27a63736d              # double 0.50229000000000001
	.quad	0x3fdf0c1fc8f32379              # double 0.48511500000000002
	.quad	0x3f61ba3ca7503b82              # double 0.0021640000000000001
	.quad	0x3feb1ce8d972cd7d              # double 0.847279
	.quad	0x3fd45e5aff2a172b              # double 0.31825900000000001
	.quad	0x3fd8d3aa369fcf3e              # double 0.38791900000000001
	.quad	0x3fb391e646f15619              # double 0.076444999999999999
	.quad	0x3fdf0f1b25f633ce              # double 0.48529699999999998
	.quad	0x3fe18e0eb67c2870              # double 0.54859100000000005
	.quad	0x3feaad8e432441ff              # double 0.83368600000000004
	.quad	0x3feb037718655193              # double 0.84417299999999995
	.quad	0x3fbc4988094e5d5b              # double 0.110497
	.quad	0x3fdcb430f49491f3              # double 0.44849800000000001
	.quad	0x3fb6b78897e99631              # double 0.088737999999999997
	.quad	0x3fce372e6a76965f              # double 0.23605899999999999
	.quad	0x3feb25fa658c4bd3              # double 0.84838599999999997
	.quad	0x3fd003dddb1209ee              # double 0.25023600000000001
	.quad	0x3fe3c226809d4952              # double 0.61745000000000005
	.quad	0x3fddb95e5aff2a17              # double 0.46443899999999999
	.quad	0x3fb619da9c99285b              # double 0.086332000000000006
	.quad	0x3fc6861e92923e5c              # double 0.17596800000000001
	.quad	0x3fd5e1cde5d18091              # double 0.34190700000000002
	.quad	0x3fdf42bb6672fba0              # double 0.48844799999999999
	.quad	0x3fd6013a92a30553              # double 0.34382499999999999
	.quad	0x3fba2fcefaa4766c              # double 0.10229199999999999
	.quad	0x3fcb20ea5b530ced              # double 0.21194199999999999
	.quad	0x3fd67d6733ebbfd7              # double 0.35140399999999999
	.quad	0x3fe00af1cb89d6ae              # double 0.501336
	.quad	0x3fe2d92d98bf7f06              # double 0.58901099999999995
	.quad	0x3fe1ab5e529bae47              # double 0.55216900000000002
	.quad	0x3fcc8d8ec95bff04              # double 0.22306999999999999
	.quad	0x3fe83e1650a45d42              # double 0.757579
	.quad	0x3fd768661ae70c13              # double 0.36574699999999999
	.quad	0x3fec7a6defc7a398              # double 0.88994499999999999
	.quad	0x3fe5b3e9a6f826ee              # double 0.67821200000000004
	.quad	0x3fda9f05ea24cc68              # double 0.41595599999999999
	.quad	0x3fc3b645a1cac083              # double 0.154
	.quad	0x3fafcc7d1bb4916d              # double 0.062107000000000002
	.quad	0x3fbc74fb549f9485              # double 0.11115999999999999
	.quad	0x3fe59e12a51e321a              # double 0.67554599999999998
	.quad	0x3fbd40357a355044              # double 0.114261
	.quad	0x3fb95f3519bd4068              # double 0.099109000000000003
	.quad	0x3fd1aaa7ded6ba8c              # double 0.27604099999999998
	.quad	0x3fb2a8b8f14db595              # double 0.072886999999999993
	.quad	0x3fda80303c07ee0b              # double 0.414074
	.quad	0x3fa3c6a7ef9db22d              # double 0.038625
	.quad	0x3fe72862f5989df1              # double 0.72367999999999999
	.quad	0x3fce9bb6aa4b9885              # double 0.23912700000000001
	.quad	0x3f6ca3a4b5568e82              # double 0.003496
	.quad	0x3fb892ccf6be37df              # double 0.095990000000000006
	.quad	0x3fe59b4784230fd0              # double 0.67520500000000006
	.quad	0x3fe392428d434a02              # double 0.61160400000000004
	.quad	0x3fc52ad81adea897              # double 0.16536999999999999
	.quad	0x3fe609efd86a8fc1              # double 0.68871300000000002
	.quad	0x3fdd10b1feeb2d0a              # double 0.45414399999999999
	.quad	0x3fdd58ab92c06184              # double 0.45853699999999997
	.quad	0x3feb6cedd4845133              # double 0.857047
	.quad	0x3fe1b74bc6a7ef9e              # double 0.55362500000000003
	.quad	0x3fca22ab25b317f0              # double 0.204183
	.quad	0x3fe2c36da87a072d              # double 0.58635599999999999
	.quad	0x3fd698a222d5171e              # double 0.35306599999999999
	.quad	0x3fe5297e132b55ef              # double 0.66131499999999999
	.quad	0x3fe5018a43bb40b3              # double 0.65643799999999997
	.quad	0x3fe644545846e8f3              # double 0.69584100000000004
	.quad	0x3fd98c3f3e0370ce              # double 0.39918500000000001
	.quad	0x3fe08807357e670e              # double 0.51660499999999998
	.quad	0x3fe2dcc857f3061c              # double 0.58945099999999995
	.quad	0x3fcf0470a808c826              # double 0.24232300000000001
	.quad	0x3fc6b020c49ba5e3              # double 0.17724999999999999
	.quad	0x3fc4c0ce91c8eac0              # double 0.162134
	.quad	0x3fe04cbe1eb4202e              # double 0.50936800000000004
	.quad	0x3fe1b7baecd07853              # double 0.553678
	.quad	0x3fd25729b280f12c              # double 0.28656999999999999
	.quad	0x3fe0b9b23dd54da5              # double 0.52266800000000002
	.quad	0x3fdc953dea465a57              # double 0.44660899999999998
	.quad	0x3fa49d9d3458cd21              # double 0.040265000000000002
	.quad	0x3feba465a57646ae              # double 0.86381799999999997
	.quad	0x3fa4bd1244a6223e              # double 0.040504999999999999
	.quad	0x3fcf724fa8b4bf90              # double 0.24567600000000001
	.quad	0x3fd20fadf2ecf206              # double 0.28220699999999999
	.quad	0x3febf37329c347e9              # double 0.87346800000000002
	.quad	0x3fedf6c050bd87b5              # double 0.93637099999999995
	.quad	0x3fea5bbbe878fabe              # double 0.82369800000000004
	.quad	0x3fec40a4a05dd8f9              # double 0.88289099999999998
	.quad	0x3fea0f32378ab0c9              # double 0.81435500000000005
	.quad	0x3fdc06d506573216              # double 0.437917
	.quad	0x3fae7a311e85fd05              # double 0.059526000000000003
	.quad	0x3fb5332acfb762d8              # double 0.082811999999999997
	.quad	0x3fd86a832b990afe              # double 0.38150099999999998
	.quad	0x3fd111ba3ca7503c              # double 0.26670700000000003
	.quad	0x3fd2a59c065b63d4              # double 0.29135800000000001
	.quad	0x3fee909f1f14983d              # double 0.95515399999999995
	.quad	0x3fededf82b1f687b              # double 0.93529899999999999
	.quad	0x3fd108398a654930              # double 0.266127
	.quad	0x3fe3adfd694ccab4              # double 0.61498900000000001
	.quad	0x3fe445a3e39f7729              # double 0.63350099999999998
	.quad	0x3fd2dba908a265f1              # double 0.294657
	.quad	0x3fd8f3c70c996b76              # double 0.38987899999999998
	.quad	0x3fd885ec3dab5c3a              # double 0.38317400000000001
	.quad	0x3fd4f8a8f3a9b068              # double 0.327677
	.quad	0x3fd66f2e8c0485a1              # double 0.35053600000000001
	.quad	0x3fe4298aa8650e78              # double 0.63007100000000005
	.quad	0x3fcd1c6d1e108c3f              # double 0.22742999999999999
	.quad	0x3fc3761cbccf28c8              # double 0.15204200000000001
	.quad	0x3fe03c9abb01c92e              # double 0.50739800000000002
	.quad	0x3facda4ce8101f32              # double 0.056353
	.quad	0x3fb8f0a5efe93187              # double 0.097421999999999995
	.quad	0x3fdd1d4b6a619daa              # double 0.45491300000000001
	.quad	0x3fe832ca57a786c2              # double 0.75619999999999998
	.quad	0x3fbde9c0229a5ebb              # double 0.11684799999999999
	.quad	0x3fc36191148fd9fd              # double 0.15141499999999999
	.quad	0x3fe1c2a66dbd72bd              # double 0.55501100000000003
	.quad	0x3fe7d703f2d3c793              # double 0.74499700000000002
	.quad	0x3fefad05f2884838              # double 0.98987099999999994
	.quad	0x3fe58fecdd0d8cb0              # double 0.67381899999999995
	.quad	0x3fe92ab042528ae7              # double 0.78646099999999997
	.quad	0x3fd5c8323358f2e0              # double 0.34034399999999998
	.quad	0x3fea3e48a58b3f64              # double 0.82010300000000002
	.quad	0x3fea5daf07bfe7e2              # double 0.823936
	.quad	0x3fe955b4677b395c              # double 0.79171199999999997
	.quad	0x3fd20999dcb5781c              # double 0.28183599999999998
	.quad	0x3fd3445ed4a1ad64              # double 0.30104799999999998
	.quad	0x3feed83621fafc8b              # double 0.96389299999999999
	.quad	0x3feb577b7c7820a3              # double 0.85442899999999999
	.quad	0x3fc08fd9fd36f7e4              # double 0.12939000000000001
	.quad	0x3fe60298cc144029              # double 0.68781700000000001
	.quad	0x3fe70a0f4d7add16              # double 0.71997800000000001
	.quad	0x3fe3818e757928e1              # double 0.60956500000000002
	.quad	0x3fb8729f59ccfaf0              # double 0.095499
	.quad	0x3fd3d83c6c97d8cf              # double 0.31007299999999999
	.quad	0x3fd3237cdcca70d2              # double 0.299041
	.quad	0x3feb2c29bf162ae5              # double 0.84914100000000003
	.quad	0x3f91c68ec52a411c              # double 0.017358999999999999
	.quad	0x3fea0b6d86ec17ec              # double 0.81389500000000003
	.quad	0x3fda3f9a49c2c1b1              # double 0.410132
	.quad	0x3fef16c82e019b0b              # double 0.97153100000000003
	.quad	0x3fe029973d9ec700              # double 0.505077
	.quad	0x3fec4d5f99c38b05              # double 0.88444500000000004
	.quad	0x3fe6c51dabe2717a              # double 0.71156200000000003
	.quad	0x3fea566f0cfe1544              # double 0.82305099999999997
	.quad	0x3feb666234a87e39              # double 0.85624800000000001
	.quad	0x3fd2ec0724b76f6d              # double 0.29565599999999997
	.quad	0x3fdf4a4d2b2bfdb5              # double 0.48891000000000001
	.quad	0x3fef2aef2c732592              # double 0.97399100000000005
	.quad	0x3fe3ac77574f722e              # double 0.61480299999999999
	.quad	0x3feea4d8fd5cb791              # double 0.957623
	.quad	0x3fe7a50507a6bd6f              # double 0.73889400000000005
	.quad	0x3fe3835371971c11              # double 0.60978100000000002
	.quad	0x3fb111f0c34c1a8b              # double 0.066680000000000003
	.quad	0x3fe5e7fd3f5b5fa2              # double 0.68456899999999998
	.quad	0x3fdfc7325918a00a              # double 0.496533
	.quad	0x3fec94d50ebaade6              # double 0.89316799999999996
	.quad	0x3fc6a71de69ad42c              # double 0.17697499999999999
	.quad	0x3fe20ccff21b3aef              # double 0.56406400000000001
	.quad	0x3fe019a415f45e0b              # double 0.50312999999999997
	.quad	0x3fe2281344806291              # double 0.56739200000000001
	.quad	0x3fd2de225fa658c5              # double 0.29480800000000001
	.quad	0x3fb2d288ce703afb              # double 0.073524999999999993
	.quad	0x3fe1fe4ffc9795b3              # double 0.56229399999999996
	.quad	0x3fd5947064ece9a3              # double 0.33718500000000001
	.quad	0x3fe3fd7e45803cd1              # double 0.62469399999999997
	.quad	0x3fd61e108c3f3e03              # double 0.34558499999999998
	.quad	0x3fcc54bcf0b6b6e1              # double 0.221336
	.quad	0x3fe3dca4b124d09a              # double 0.62068400000000001
	.quad	0x3fd72d4d4024b33e              # double 0.36214000000000002
	.quad	0x3f9e279dd3bafd97              # double 0.029447999999999998
	.quad	0x3f87763e4abe6a33              # double 0.011455999999999999
	.quad	0x3fed1d3458cd20b0              # double 0.90981500000000004
	.quad	0x3fe566b8305d95dd              # double 0.66878899999999997
	.quad	0x3fef5b3e1437c569              # double 0.97988799999999998
	.quad	0x3fe6c14a4d2b2bfe              # double 0.71109500000000003
	.quad	0x3fec49e01de26916              # double 0.88401799999999997
	.quad	0x3fd51409a2403148              # double 0.32934799999999997
	.quad	0x3fedfc69728a6117              # double 0.93706199999999995
	.quad	0x3fd36eac8605681f              # double 0.30363000000000001
	.quad	0x3feb1c0ebedfa440              # double 0.84717500000000001
	.quad	0x3fae41d4b6a619db              # double 0.059096000000000003
	.quad	0x3fc9c8d1958969a1              # double 0.20144100000000001
	.quad	0x3fe445ac471b4784              # double 0.63350499999999998
	.quad	0x3fd116b11c6d1e11              # double 0.26701000000000003
	.quad	0x3fdae1e2de870974              # double 0.42003699999999999
	.quad	0x3fa807fed20296b3              # double 0.046935999999999999
	.quad	0x3fea20620ab71327              # double 0.81645299999999998
	.quad	0x3fb487fcb923a29c              # double 0.080199999999999994
	.quad	0x3feab5b0bbf50e34              # double 0.83467899999999994
	.quad	0x3fe06aaf35e310dc              # double 0.51302300000000001
	.quad	0x3fb057082491afc0              # double 0.063827999999999996
	.quad	0x3fd506ab14ec204f              # double 0.32853199999999999
	.quad	0x3fe2d1654d61b2a2              # double 0.58806099999999994
	.quad	0x3fe3680389f83be6              # double 0.60644699999999996
	.quad	0x3fe842699c7bcc29              # double 0.75810699999999998
	.quad	0x3fce60f5e41d4b6a              # double 0.23733399999999999
	.quad	0x3fdb4b945308bb90              # double 0.42648799999999998
	.quad	0x3fd2d08919ef954f              # double 0.29397800000000002
	.quad	0x3fdd9b024f6598e1              # double 0.462586
	.quad	0x3fdd4523f67f4dbe              # double 0.457345
	.quad	0x3fdf0c8cd63cb817              # double 0.48514099999999999
	.quad	0x3f98c36da87a072d              # double 0.024183
	.quad	0x3fdfe1da7b0b3919              # double 0.49815999999999999
	.quad	0x3fd3de7210be9425              # double 0.31045200000000001
	.quad	0x3fe4805c4651f3e9              # double 0.64066900000000004
	.quad	0x3fc3e14bdfd2630f              # double 0.15531300000000001
	.quad	0x3feede74299d883c              # double 0.96465500000000004
	.quad	0x3fd1d18090b417ca              # double 0.27841199999999999
	.quad	0x3feda0e8427418d7              # double 0.92589200000000005
	.quad	0x3fcec9752977c88e              # double 0.24052299999999999
	.quad	0x3fb0c404a72ead92              # double 0.065490999999999994
	.quad	0x3fcb8eda22f6a50d              # double 0.21529699999999999
	.quad	0x3fd00c34c1a8ac5c              # double 0.250745
	.quad	0x3fe98dd3fe1975f3              # double 0.79856300000000002
	.quad	0x3fe0350d2806af47              # double 0.50647600000000004
	.quad	0x3fdf5929670196d9              # double 0.489817
	.quad	0x3fd32174c4cdfaca              # double 0.29891699999999999
	.quad	0x3fed670196d8f4f9              # double 0.91882399999999997
	.quad	0x3fdfd288ce703afb              # double 0.49722499999999997
	.quad	0x3fe20f75536933a0              # double 0.56438699999999997
	.quad	0x3fddf405f6ba0621              # double 0.46801900000000002
	.quad	0x3fd47225b749adc9              # double 0.319467
	.quad	0x3fdd736049ecb31c              # double 0.46016699999999999
	.quad	0x3fef07fcb923a29c              # double 0.96972499999999994
	.quad	0x3fc8732df505d0fa              # double 0.19101499999999999
	.quad	0x3fec58ba40d90e24              # double 0.88583100000000003
	.quad	0x3fd6e35c5b4aa971              # double 0.35762699999999997
	.quad	0x3fea973d9ec70004              # double 0.83096199999999997
	.quad	0x3fedc1700cd85597              # double 0.929863
	.quad	0x3fea0a67620ee8d1              # double 0.81376999999999999
	.quad	0x3fce8db8bac710cb              # double 0.2387
	.quad	0x3fb998f1d3ed527e              # double 0.099989999999999995
	.quad	0x3fd8f4384ba0e842              # double 0.38990599999999997
	.quad	0x3fd40ff972474539              # double 0.313475
	.quad	0x3fdf693c03bc4d23              # double 0.49079800000000001
	.quad	0x3feed970b49e01de              # double 0.96404299999999998
	.quad	0x3fca2291fb3fa6df              # double 0.20418
	.quad	0x3fe20dd1e53a81dc              # double 0.56418699999999999
	.quad	0x3fa7954eb13dfb0d              # double 0.046060999999999998
	.quad	0x3fe1149e8815e397              # double 0.53376699999999999
	.quad	0x3fe23471f79420b4              # double 0.56890200000000002
	.quad	0x3fc1cc964628027e              # double 0.13905600000000001
	.quad	0x3fed4a8198f1d3ed              # double 0.91534499999999996
	.quad	0x3fdf1a2a4db163bb              # double 0.48597200000000002
	.quad	0x3fd383cafb3b7521              # double 0.304919
	.quad	0x3fd4d68837718655              # double 0.32559399999999999
	.quad	0x3fe0e85db76b3bb8              # double 0.52836499999999997
	.quad	0x3f8f609dcf893faf              # double 0.015321
	.quad	0x3fe9307d0aed99cc              # double 0.787169
	.quad	0x3fc1e86833c6002a              # double 0.139905
	.quad	0x3fe0aa9717df19d6              # double 0.52082399999999995
	.quad	0x3fc157ff9b56323c              # double 0.13549800000000001
	.quad	0x3febbd89ce4a7b4e              # double 0.86688699999999996
	.quad	0x3fe15f28848387df              # double 0.54286599999999996
	.quad	0x3fe0f7036c9c0a8d              # double 0.53015299999999999
	.quad	0x3fe27b69984a0e41              # double 0.577565
	.quad	0x3f74ec204f2ae07e              # double 0.0051079999999999997
	.quad	0x3feee4a9cdc44391              # double 0.96541299999999996
	.quad	0x3fb3c0f451761459              # double 0.077162999999999995
	.quad	0x3febfa1a0cf1800a              # double 0.87427999999999995
	.quad	0x3fd72b66b6177ea2              # double 0.36202400000000001
	.quad	0x3fcf7457c0b13598              # double 0.24573800000000001
	.quad	0x3fc784230fcf80dc              # double 0.18371999999999999
	.quad	0x3fa94f26aec0724b              # double 0.049431999999999997
	.quad	0x3febf4ddf86e3b47              # double 0.873641
	.quad	0x3fe63b18dac258d6              # double 0.69471400000000005
	.quad	0x3fd397353b4b2fa9              # double 0.30610399999999999
	.quad	0x3fe9c586876e1deb              # double 0.80536200000000002
	.quad	0x3fa5b7cfe5860136              # double 0.042417999999999997
	.quad	0x3fe572e05ccc89b1              # double 0.67027300000000001
	.quad	0x3fed079c4113c686              # double 0.90717899999999996
	.quad	0x3fee1a0ad8a11666              # double 0.94067900000000004
	.quad	0x3fc0c73abc947065              # double 0.13108
	.quad	0x3fe3f3dc054ef45a              # double 0.62351800000000002
	.quad	0x3fc7f72f76e6106b              # double 0.18723100000000001
	.quad	0x3fe066d373affb05              # double 0.51255200000000001
	.quad	0x3fd0fc0d2c386d2f              # double 0.26538400000000001
	.quad	0x3fdb036006d0d499              # double 0.42208099999999998
	.quad	0x3fe3f4107314ca92              # double 0.62354299999999996
	.quad	0x3fe0bbb1f255f352              # double 0.52291200000000004
	.quad	0x3febbaf31b152f3c              # double 0.86657099999999998
	.quad	0x3fe6a82e87d2c7b9              # double 0.70803000000000005
	.quad	0x3fe3d29131ec0b56              # double 0.61945399999999995
	.quad	0x3fd2e0828c36da88              # double 0.29495300000000002
	.quad	0x3fba455eaee2003b              # double 0.102621
	.quad	0x3fd0f123c42a66dc              # double 0.26471800000000001
	.quad	0x3fd1ba16e7a311e8              # double 0.27698299999999998
	.quad	0x3fce9ee45c358afc              # double 0.23922399999999999
	.quad	0x3fe0c8b652370479              # double 0.524501
	.quad	0x3feb2e1ac57e23f2              # double 0.84937799999999997
	.quad	0x3fe90fd199bb2789              # double 0.78318100000000002
	.quad	0x3fe4efa615a8deb1              # double 0.654254
	.quad	0x3fe38379314445aa              # double 0.60979899999999998
	.quad	0x3fe18e779207d4e1              # double 0.54864100000000005
	.quad	0x3fd840fecdd0d8cb              # double 0.378967
	.quad	0x3fe8a6223e186983              # double 0.77027999999999996
	.quad	0x3fdfb9fdbd2fa0d7              # double 0.49572699999999997
	.quad	0x3fa9ce8d972cd7cf              # double 0.050403999999999997
	.quad	0x3fecd3953dea465a              # double 0.90082799999999996
	.quad	0x3fd73c968943e100              # double 0.36307299999999998
	.quad	0x3fefed58c8eef1bb              # double 0.99772300000000002
	.quad	0x3fe50cd423d9231c              # double 0.65781599999999996
	.quad	0x3fd9107746887a8d              # double 0.39162999999999998
	.quad	0x3fe0705425f20210              # double 0.51371199999999995
	.quad	0x3fe88c4588a04d12              # double 0.767123
	.quad	0x3fe0b3e1437c5693              # double 0.52195800000000003
	.quad	0x3fc666e43aa79bbb              # double 0.175015
	.quad	0x3fbf8b3700474d9c              # double 0.12321799999999999
	.quad	0x3fed9d9b1b79d90a              # double 0.92548900000000001
	.quad	0x3f98aeb80ecfa69c              # double 0.024104
	.quad	0x3fc15fa22706d506              # double 0.13573099999999999
	.quad	0x3fec58a116659d13              # double 0.88581900000000002
	.quad	0x3fdfcfa26a22b389              # double 0.49704799999999999
	.quad	0x3fd89c5e6ff7dfa0              # double 0.384544
	.quad	0x3fb6e7f6f4be835e              # double 0.089477
	.quad	0x3fe47ced916872b0              # double 0.64024999999999999
	.quad	0x3fdf5219a847b246              # double 0.48938599999999999
	.quad	0x3fdf6366d7a56de3              # double 0.49044199999999999
	.quad	0x3fdc08e581cf7879              # double 0.43804300000000002
	.quad	0x3fe110214ad362e9              # double 0.533219
	.quad	0x3fece69ced0b30b6              # double 0.90315100000000004
	.quad	0x3fef1374bc6a7efa              # double 0.97112500000000002
	.quad	0x3fed889a02752546              # double 0.922925
	.quad	0x3fde8effe2a3cea7              # double 0.47747800000000001
	.quad	0x3fe14545846e8f2a              # double 0.53970600000000002
	.quad	0x3fd84fbdad7518b1              # double 0.37986700000000001
	.quad	0x3fc0c460ed80a17b              # double 0.130993
	.quad	0x3fc058e64b231401              # double 0.12771299999999999
	.quad	0x3fdd8b5cbff47736              # double 0.46163100000000001
	.quad	0x3fdb79463cfb3312              # double 0.42927700000000002
	.quad	0x3fb3784662bae03b              # double 0.076053999999999997
	.quad	0x3fb213a0c6b484d7              # double 0.070611999999999994
	.quad	0x3fe7e544fe36d224              # double 0.74673699999999998
	.quad	0x3fed1fb82c2bd7f5              # double 0.91012199999999999
	.quad	0x3feb5c2f405f6ba0              # double 0.85500299999999995
	.quad	0x3fe0c6ef3d3a1d32              # double 0.52428399999999997
	.quad	0x3fc4d1d8a5482385              # double 0.16265399999999999
	.quad	0x3fc7e8576cce5f74              # double 0.186778
	.quad	0x3fba8bb0a2ca9ac3              # double 0.10369399999999999
	.quad	0x3fb0ce4ead0c3d25              # double 0.065647999999999998
	.quad	0x3fc67a6bd6e8af81              # double 0.17561099999999999
	.quad	0x3fe1ed9be4cd7492              # double 0.56025499999999995
	.quad	0x3fe97345069a4df4              # double 0.79532099999999994
	.quad	0x3fd98a82a5614df9              # double 0.39907900000000002
	.quad	0x3fedbde3fbbd7b20              # double 0.92942999999999997
	.quad	0x3fb73269df97aaac              # double 0.090612999999999999
	.quad	0x3fd0bf727136a401              # double 0.261685
	.quad	0x3fecede33269df98              # double 0.90403900000000004
	.quad	0x3fe56f459d99029b              # double 0.66983300000000001
	.quad	0x3fc601797cc39ffd              # double 0.17191999999999999
	.quad	0x3fd427418d6909af              # double 0.31489600000000001
	.quad	0x3feb989374bc6a7f              # double 0.862375
	.quad	0x3fd55ad96a6a0126              # double 0.33367000000000002
	.quad	0x3fe29eb2074ea8da              # double 0.58187199999999994
	.quad	0x3fcd2f2b66b6177f              # double 0.22800200000000001
	.quad	0x3fd0d30f062d40ab              # double 0.262882
	.quad	0x3fece56eefa1e3eb              # double 0.903007
	.quad	0x3fee08a04d12018a              # double 0.93855299999999997
	.quad	0x3fd5c450268900c5              # double 0.34010699999999999
	.quad	0x3fb4a3c64345cfee              # double 0.080624000000000001
	.quad	0x3fe492f6e82949a5              # double 0.64293999999999996
	.quad	0x3fec650a45d41fa7              # double 0.88733399999999996
	.quad	0x3fefee47dc37a3db              # double 0.99783699999999997
	.quad	0x3fb306c43f5f9160              # double 0.074321999999999999
	.quad	0x3fd05f1bef49cf57              # double 0.255805
	.quad	0x3fe976a7264a16a5              # double 0.79573400000000005
	.quad	0x3fb972ffd1dcd706              # double 0.099410999999999999
	.quad	0x3fc588a8b08dd1e5              # double 0.16823299999999999
	.quad	0x3fb2f826edaa92e6              # double 0.074098999999999998
	.quad	0x3fe534a2339c0ebf              # double 0.66267500000000001
	.quad	0x3fb60902de00d1b7              # double 0.086074999999999999
	.quad	0x3fecfffde7210be9              # double 0.90624899999999997
	.quad	0x3fcf4b05b7cfe586              # double 0.244477
	.quad	0x3fbc521dda059a74              # double 0.110628
	.quad	0x3fb1ccb7d41743e9              # double 0.069529999999999995
	.quad	0x3fef4fc3f811f4f5              # double 0.97848699999999999
	.quad	0x3fd3b3dd11be6e65              # double 0.30785299999999999
	.quad	0x3fe583b3e9a6f827              # double 0.67232700000000001
	.quad	0x3fe4f46887a8d64d              # double 0.65483499999999994
	.quad	0x3fdd7d5ed06fef7c              # double 0.46077699999999999
	.quad	0x3fc237154003254e              # double 0.14230599999999999
	.quad	0x3fce4fa8b4bf8fcd              # double 0.23680599999999999
	.quad	0x3fdd184c271fff7a              # double 0.45460800000000001
	.quad	0x3fcdcbbc2b94d940              # double 0.23277999999999999
	.quad	0x3fd4db7f1737542a              # double 0.32589699999999999
	.quad	0x3fea57d7c2ca148c              # double 0.82322300000000003
	.quad	0x3fd086c226809d49              # double 0.25822499999999998
	.quad	0x3fe18ac7da1ec4e7              # double 0.54819099999999998
	.quad	0x3fd9a14488c60cbf              # double 0.40046799999999999
	.quad	0x3fd39d5a187a4a49              # double 0.306479
	.quad	0x3fb2fd651b0ccbc0              # double 0.074178999999999995
	.quad	0x3fac8d3ae685db77              # double 0.055765000000000002
	.quad	0x3fcba00e27e0ef9a              # double 0.21582200000000001
	.quad	0x3fd3f9b994e1a3f4              # double 0.31211699999999998
	.quad	0x3f75d4e8fb00bcbe              # double 0.0053299999999999997
	.quad	0x3fe6f23aafff36ac              # double 0.71706899999999996
	.quad	0x3fe2468cac4b4d05              # double 0.57111199999999995
	.quad	0x3fecf4cd31769a91              # double 0.90488299999999999
	.quad	0x3fe4b49e01de2691              # double 0.64704799999999996
	.quad	0x3fd4738e6d15ad10              # double 0.31955299999999998
	.quad	0x3fcc6f3f52fc2657              # double 0.22214500000000001
	.quad	0x3fda2391d57ff9b5              # double 0.40842099999999998
	.quad	0x3fefbfd2e9468017              # double 0.99216599999999999
	.quad	0x3fd2567dbb16c1e3              # double 0.28652899999999998
	.quad	0x3fca815e39713ad6              # double 0.20707300000000001
	.quad	0x3fe913532e7b3d8e              # double 0.783609
	.quad	0x3fef966e008e9b39              # double 0.98711300000000001
	.quad	0x3fd3cff64cf8d717              # double 0.30956800000000001
	.quad	0x3fd99c779a6b50b1              # double 0.400175
	.quad	0x3fe28ce0b912dba5              # double 0.57969700000000002
	.quad	0x3fe82e70c1333b97              # double 0.75566900000000004
	.quad	0x3fa5f138bcdfefbf              # double 0.042855999999999998
	.quad	0x3fefbcd78c436fc1              # double 0.99180199999999996
	.quad	0x3fd49567dbb16c1e              # double 0.32161899999999999
	.quad	0x3fe48d4562e09fe8              # double 0.64224499999999995
	.quad	0x3fbba11a975afaf8              # double 0.107927
	.quad	0x3fcdd273d5bab218              # double 0.232985
	.quad	0x3fd16583e8576cce              # double 0.27182099999999998
	.quad	0x3fe5f5c0767d34df              # double 0.686249
	.quad	0x3fcf950331e3a7db              # double 0.24673500000000001
	.quad	0x3fc97b4a2339c0ec              # double 0.199075
	.quad	0x3fe78cd423d9231c              # double 0.73594099999999996
	.quad	0x3fdc1ed5ae1cde5d              # double 0.43938199999999999
	.quad	0x3fe19ea78af3e469              # double 0.55061700000000002
	.quad	0x3fe48a63305100a4              # double 0.64189300000000005
	.quad	0x3fcd83d790752daa              # double 0.23058600000000001
	.quad	0x3feccbff47735c18              # double 0.89990199999999998
	.quad	0x3fdb0d349be8ff32              # double 0.42268099999999997
	.quad	0x3fc334e7685985ad              # double 0.15005199999999999
	.quad	0x3fe319d451fc4c16              # double 0.59690299999999996
	.quad	0x3fea6cebbba55d1c              # double 0.82579599999999997
	.quad	0x3fee64388ebcc6c5              # double 0.94973399999999997
	.quad	0x3fd4ab2e1693c03c              # double 0.32294800000000001
	.quad	0x3fe88c47a17f4129              # double 0.76712400000000003
	.quad	0x3fe6a5c810a569b1              # double 0.70773699999999995
	.quad	0x3fe68a6b93ccd0ff              # double 0.70439700000000005
	.quad	0x3fcb21a2e7f6f4bf              # double 0.21196400000000001
	.quad	0x3fde0f1f57b41bfc              # double 0.46967300000000001
	.quad	0x3fafdf7e80389f84              # double 0.062252000000000002
	.quad	0x3fc1197a24894c44              # double 0.13358999999999999
	.quad	0x3fdaa0902de00d1b              # double 0.41604999999999998
	.quad	0x3fe178012dfd694d              # double 0.54589900000000002
	.quad	0x3fd8675579af1887              # double 0.38130700000000001
	.quad	0x3fd8da4ce8101f32              # double 0.388324
	.quad	0x3fdb65a9a8049668              # double 0.42808000000000002
	.quad	0x3fe50c3d25247cb7              # double 0.657744
	.quad	0x3fb5413122b7baed              # double 0.083026000000000003
	.quad	0x3fd9e503fb374363              # double 0.40460299999999999
	.quad	0x3fd6f1886df82b1f              # double 0.35849199999999998
	.quad	0x3fd20f4517614595              # double 0.28218199999999999
	.quad	0x3fa7e175d13d74d6              # double 0.046642000000000003
	.quad	0x3fd2ab474107314d              # double 0.29170400000000002
	.quad	0x3fe25e6ff7dfa00e              # double 0.57402799999999998
	.quad	0x3fe927136a400fbb              # double 0.78602000000000005
	.quad	0x3fd289656eefa1e4              # double 0.289636
	.quad	0x3fe10ad256798959              # double 0.53257100000000002
	.quad	0x3fe10f3882278d0d              # double 0.53310800000000003
	.quad	0x3fd1c63f141205bc              # double 0.277725
	.quad	0x3fd648c2e770bd01              # double 0.34819099999999997
	.quad	0x3fd06e696a26e547              # double 0.25673899999999999
	.quad	0x3fe6c061847f5621              # double 0.71098399999999995
	.quad	0x3fee5f4e4430b179              # double 0.94913400000000003
	.quad	0x3f726d8b1dd5d3dd              # double 0.0044990000000000004
	.quad	0x3fba2291fb3fa6df              # double 0.10209
	.quad	0x3fe627179bfdf7e8              # double 0.692272
	.quad	0x3fdeea3df6db9410              # double 0.483047
	.quad	0x3fe7beccc46950fc              # double 0.74204099999999995
	.quad	0x3fc270110a137f39              # double 0.14404500000000001
	.quad	0x3fc8580c308feac4              # double 0.19018699999999999
	.quad	0x3fd9a786c226809d              # double 0.40084999999999998
	.quad	0x3fd681c2e33eff19              # double 0.35166999999999998
	.quad	0x3fe070a808c8259e              # double 0.51375199999999999
	.quad	0x3fc7df548ecd8dbd              # double 0.186503
	.quad	0x3fc8ec28b2a6b0d9              # double 0.19470699999999999
	.quad	0x3fe04b72c5197a25              # double 0.50921000000000005
	.quad	0x3fd655193708aac9              # double 0.34894399999999998
	.quad	0x3fdc5154866a11ed              # double 0.44246400000000002
	.quad	0x3fdd64e48626f60e              # double 0.459283
	.quad	0x3fdf78316a055758              # double 0.49171100000000001
	.quad	0x3fb6f533f42352eb              # double 0.089678999999999995
	.quad	0x3fea1754b05b7cfe              # double 0.81534799999999996
	.quad	0x3fd238b04ab606b8              # double 0.28471000000000002
	.quad	0x3fd0988d2a1f8e3b              # double 0.25931100000000001
	.quad	0x3fed1bcdbbe0157f              # double 0.90964400000000001
	.quad	0x3fea2ab8a5ce5b42              # double 0.81771499999999997
	.quad	0x3fcfd2d01c0ca601              # double 0.24862100000000001
	.quad	0x3fedb34a44c7b02d              # double 0.92813599999999996
	.quad	0x3fe312817763e4ac              # double 0.59600900000000001
	.quad	0x3fd30aed99cbee80              # double 0.29754199999999997
	.quad	0x3feaf43632c1f42c              # double 0.84231100000000003
	.quad	0x3fd9d5f99c38b04b              # double 0.40368500000000002
	.quad	0x3fec8afa2f05a709              # double 0.89196500000000001
	.quad	0x3fef95054ac29bf1              # double 0.98694099999999995
	.quad	0x3fec0d73860999dd              # double 0.87664200000000003
	.quad	0x3fd938b47c73eee5              # double 0.39408599999999999
	.quad	0x3fe4dd72367e414e              # double 0.65203199999999994
	.quad	0x3fcad117b5286b59              # double 0.209506
	.quad	0x3fe54af0bf1a5ca3              # double 0.66539800000000004
	.quad	0x3fe77a1e3eaf6838              # double 0.733657
	.quad	0x3f975cd0bb6ed677              # double 0.022814999999999998
	.quad	0x3fe06b399f5dfeb9              # double 0.51308900000000002
	.quad	0x3fd71932d6ece13f              # double 0.36091299999999998
	.quad	0x3fe7f505d0fa58f7              # double 0.74865999999999999
	.quad	0x3fe01b54195cc858              # double 0.50333600000000001
	.quad	0x3fe49a21ea359360              # double 0.64381500000000003
	.quad	0x3fef7b19e731d2e1              # double 0.98377700000000001
	.quad	0x3fee46d3f9e7b80b              # double 0.94614600000000004
	.quad	0x3fedb27674d16335              # double 0.92803500000000005
	.quad	0x3fe7ab6ae7d566cf              # double 0.73967499999999997
	.quad	0x3fd3e41d4b6a619e              # double 0.31079800000000002
	.quad	0x3fee5ab3aabcd78c              # double 0.94857199999999997
	.quad	0x3fef852934acaff7              # double 0.98500500000000001
	.quad	0x3fe9df6ba0620ab7              # double 0.80852299999999999
	.quad	0x3fce3e39f77292c5              # double 0.23627400000000001
	.quad	0x3fdb55970b49e01e              # double 0.42709900000000001
	.quad	0x3fd93621fafc8b00              # double 0.39392899999999997
	.quad	0x3fe0bcc6c54bcf0b              # double 0.52304399999999995
	.quad	0x3f8748a159817b96              # double 0.011369000000000001
	.quad	0x3fe0cf7caa7589f0              # double 0.52532800000000002
	.quad	0x3fe1d96638433d6c              # double 0.55778799999999995
	.quad	0x3fecf6ab5807fed2              # double 0.905111
	.quad	0x3fc0f0281ba7fc33              # double 0.132329
	.quad	0x3fea53dea465a576              # double 0.82273799999999997
	.quad	0x3fdb3704790b8499              # double 0.42523300000000003
	.quad	0x3fae2bf11f926c7f              # double 0.058929000000000002
	.quad	0x3fed4b33daf8df7a              # double 0.91542999999999997
	.quad	0x3fd9b7b28954a7f8              # double 0.401837
	.quad	0x3fb61847f562174c              # double 0.086307999999999996
	.quad	0x3feda8d8665e02eb              # double 0.92686100000000005
	.quad	0x3fe3a495e17e34b9              # double 0.61384099999999997
	.quad	0x3fd9f8f8a4c1ebc8              # double 0.40582099999999999
	.quad	0x3fc4bd230b9dc2f4              # double 0.162022
	.quad	0x3feddb22d0e56042              # double 0.93300000000000005
	.quad	0x3fd74acf312b1b37              # double 0.36394100000000001
	.quad	0x3fe38407cc7d1bb5              # double 0.60986700000000005
	.quad	0x3fec952b0a6fc58b              # double 0.89320900000000003
	.quad	0x3f94d7f0ed3d859d              # double 0.020355000000000002
	.quad	0x3fe50c0053e2d624              # double 0.65771500000000005
	.quad	0x3fefbc4d22c881e4              # double 0.99173599999999995
	.quad	0x3fe1541fa7653437              # double 0.54151899999999997
	.quad	0x3fb323ee1bd1ed9e              # double 0.074767
	.quad	0x3feea645e4e69f06              # double 0.95779700000000001
	.quad	0x3fb31ad2135daad6              # double 0.074628
	.quad	0x3fe6ccaf709b738e              # double 0.71248599999999995
	.quad	0x3fef6616b54e2b06              # double 0.98121199999999997
	.quad	0x3fb837d63022dd7b              # double 0.094602000000000006
	.quad	0x3faf56a7ac81d3aa              # double 0.061207999999999999
	.quad	0x3fc45c5f7c6759ab              # double 0.15906899999999999
	.quad	0x3fe9f3e681a9b8cc              # double 0.81102300000000004
	.quad	0x3fd4d8dbcec84f90              # double 0.32573600000000003
	.quad	0x3fbb6ab5807fed20              # double 0.107097
	.quad	0x3fa140789613d31c              # double 0.033695000000000003
	.quad	0x3fc8a4b9884c6a3c              # double 0.192527
	.quad	0x3fc758afc47e49b2              # double 0.182394
	.quad	0x3fdbf7b5aea3161a              # double 0.43699399999999999
	.quad	0x3fdc55ffe6d58c8f              # double 0.442749
	.quad	0x3fdc6d9be4cd7492              # double 0.44418999999999997
	.quad	0x3fe9577531db445f              # double 0.79192600000000002
	.quad	0x3fc3f1a5ca29845e              # double 0.15581200000000001
	.quad	0x3fee653c9abb01c9              # double 0.94985799999999998
	.quad	0x3fc6b30b5aa71583              # double 0.177339
	.quad	0x3feaf96bfca85cab              # double 0.842947
	.quad	0x3fd2bf2b239a38fc              # double 0.29291800000000001
	.quad	0x3fcfcbb3c81908e6              # double 0.24840400000000001
	.quad	0x3fe26edcc20d562a              # double 0.57603300000000002
	.quad	0x3fdb59f6ec5b078e              # double 0.42736600000000002
	.quad	0x3fedfa5093964a5a              # double 0.93680600000000003
	.quad	0x3fee01e2584f4c6e              # double 0.93772999999999995
	.quad	0x3fd22eb5f5f0b285              # double 0.28410099999999999
	.quad	0x3fe9cd65e4606749              # double 0.80632300000000001
	.quad	0x3fe63cddd6e04c06              # double 0.69493000000000005
	.quad	0x3fd2024f6598e10d              # double 0.281391
	.quad	0x3fec7d6d7e889c1b              # double 0.89031099999999996
	.quad	0x3fe8a8c154c985f0              # double 0.77059999999999995
	.quad	0x3fec16f4384ba0e8              # double 0.87780199999999997
	.quad	0x3fb96a8b8f14db59              # double 0.099281999999999995
	.quad	0x3fd0f67b1c0010c7              # double 0.265044
	.quad	0x3fe384fb1183b603              # double 0.60998300000000005
	.quad	0x3fe8f4a1272c94b4              # double 0.77986200000000005
	.quad	0x3fe7aa2a0a958538              # double 0.73952200000000001
	.quad	0x3fe5a53da72a7bd5              # double 0.67642100000000005
	.quad	0x3feaff2e48e8a71e              # double 0.84365000000000001
	.quad	0x3fef8d173fb7a5f4              # double 0.98597299999999998
	.quad	0x3fd89a1fd1569f49              # double 0.384407
	.quad	0x3f9e1d6494d50ebb              # double 0.029409000000000001
	.quad	0x3fe2a42d05f28848              # double 0.58254099999999998
	.quad	0x3fd3aecd07852f7f              # double 0.30754399999999998
	.quad	0x3fd1ec95bff04578              # double 0.28006500000000001
	.quad	0x3fc840e9d51b4fe8              # double 0.18948100000000001
	.quad	0x3fea672324c83665              # double 0.82508999999999999
	.quad	0x3fe03b60285ec3db              # double 0.50724800000000003
	.quad	0x3fdf964628027d89              # double 0.49354700000000001
	.quad	0x3fc8835dedf1e083              # double 0.19150900000000001
	.quad	0x3fe307c200c0f020              # double 0.59469700000000003
	.quad	0x3fddbc558644523f              # double 0.46461999999999998
	.quad	0x3fcc6e8f29d40ee0              # double 0.22212399999999999
	.quad	0x3fef512ec6bce853              # double 0.97865999999999997
	.quad	0x3fddc9b845564b66              # double 0.46543699999999999
	.quad	0x3feeae33eff19503              # double 0.95876499999999997
	.quad	0x3fcd1ea78af3e469              # double 0.22749800000000001
	.quad	0x3fe7acb641700cd8              # double 0.73983299999999996
	.quad	0x3f7e2478854cdb7b              # double 0.0073590000000000001
	.quad	0x3fd0d8b60f1b25f6              # double 0.26322699999999999
	.quad	0x3fc8f5caf2d7f951              # double 0.19500100000000001
	.quad	0x3fec3f077ccc0379              # double 0.88269399999999998
	.quad	0x3fc1647baa9b499d              # double 0.135879
	.quad	0x3fd2403148776816              # double 0.28516799999999998
	.quad	0x3fee5cbddb9841ab              # double 0.94882100000000003
	.quad	0x3fe567afa7221859              # double 0.66890700000000003
	.quad	0x3fc4c8b439581062              # double 0.16237499999999999
	.quad	0x3fe827fa1a0cf180              # double 0.75488
	.quad	0x3feb464345cfede9              # double 0.85232699999999995
	.quad	0x3fe8ed4801f75105              # double 0.77896500000000002
	.quad	0x3fc3c560c7c0f451              # double 0.15446099999999999
	.quad	0x3fbc5a2d72ffd1dd              # double 0.110751
	.quad	0x3f842fe82517e77d              # double 0.0098569999999999994
	.quad	0x3fb65d5b24e9c454              # double 0.087361999999999995
	.quad	0x3fee69f05ea24cc7              # double 0.95043200000000005
	.quad	0x3fe0698bb4d48883              # double 0.51288400000000001
	.quad	0x3faf47f993d5347a              # double 0.061095999999999998
	.quad	0x3fdc2580c308feac              # double 0.43978899999999999
	.quad	0x3fd769fcf3dc054f              # double 0.365844
	.quad	0x3fecface67d77fae              # double 0.90561599999999998
	.quad	0x3fd0e5796bfca85d              # double 0.26400600000000002
	.quad	0x3fe380cd855970b5              # double 0.60947300000000004
	.quad	0x3fed927913e81451              # double 0.92413000000000001
	.quad	0x3fe0f954eb13dfb1              # double 0.53043600000000002
	.quad	0x3fd4b124d099e0e7              # double 0.32331199999999999
	.quad	0x3fdb5fa658c4bd34              # double 0.42771300000000001
	.quad	0x3fe932acfb762d84              # double 0.78743600000000002
	.quad	0x3fe8d18090b417ca              # double 0.77557399999999999
	.quad	0x3fe15206c8711d7a              # double 0.54126300000000005
	.quad	0x3fe7c05f6ba0620b              # double 0.74223300000000003
	.quad	0x3fedbf1a5ca29846              # double 0.92957800000000002
	.quad	0x3fe3411e42e12620              # double 0.60169899999999998
	.quad	0x3feda8e71476af8a              # double 0.92686800000000003
	.quad	0x3fdb454de7ea5f85              # double 0.42610500000000001
	.quad	0x3fe04a46e08f2171              # double 0.50906700000000005
	.quad	0x3fe35796bfca85cb              # double 0.60444200000000003
	.quad	0x3fc40cd855970b4a              # double 0.156642
	.quad	0x3fe1e4d7f0ed3d86              # double 0.55918500000000004
	.quad	0x3fbda048e043a216              # double 0.115727
	.quad	0x3fee13f290abb44e              # double 0.93993499999999996
	.quad	0x3fe3e050374ff866              # double 0.62113200000000002
	.quad	0x3fe06bedfa43fe5d              # double 0.51317500000000005
	.quad	0x3fd9f07bfe7e1fc1              # double 0.40530300000000002
	.quad	0x3fdd450efdc9c4db              # double 0.45734000000000002
	.quad	0x3fb8b08dd1e53a82              # double 0.096444000000000001
	.quad	0x3fe496312f4cf4a5              # double 0.64333399999999996
	.quad	0x3fd3dd6e04c05921              # double 0.31039
	.quad	0x3fe46173b85e80bf              # double 0.63689600000000002
	.quad	0x3fd7b9c304ccee5b              # double 0.37071300000000001
	.quad	0x3fd51b36bd2b6f1a              # double 0.32978600000000002
	.quad	0x3fcc26f60e0eb67c              # double 0.219939
	.quad	0x3fea21ab4b72c519              # double 0.81660999999999995
	.quad	0x3fa3a0407cc7d1bb              # double 0.038331999999999998
	.quad	0x3fc7f47735c182ed              # double 0.18714800000000001
	.quad	0x3f94dad31fcd24e1              # double 0.020365999999999999
	.quad	0x3fdc7a7c9de05037              # double 0.44497599999999998
	.quad	0x3fa1f98b71b8aa00              # double 0.035106999999999999
	.quad	0x3fa5109070fbeb9e              # double 0.041141999999999998
	.quad	0x3fe70dc11e42e126              # double 0.72042899999999999
	.quad	0x3fe3da5119ce075f              # double 0.62039999999999995
	.quad	0x3fc87d912556d19e              # double 0.191332
	.quad	0x3fd75753a3ec02f3              # double 0.364705
	.quad	0x3fe59d606317268d              # double 0.67546099999999998
	.quad	0x3fef03cf2cf95d4f              # double 0.96921500000000004
	.quad	0x3fe6ce3150dae3e7              # double 0.71267000000000003
	.quad	0x3fe87eda66128390              # double 0.76548499999999997
	.quad	0x3fcd91f70de8f6cf              # double 0.231017
	.quad	0x3fec5807fed20297              # double 0.88574600000000003
	.quad	0x3fe20624dd2f1aa0              # double 0.56325000000000003
	.quad	0x3fe216872b020c4a              # double 0.56525000000000003
	.quad	0x3f9663c74fb549f9              # double 0.021864999999999999
	.quad	0x3fd918266772d5e0              # double 0.39209899999999998
	.quad	0x3faad3c792d1287c              # double 0.052396999999999999
	.quad	0x3fe39b93037d6302              # double 0.61274099999999998
	.quad	0x3f4b6d43d03968d7              # double 8.3699999999999996E-4
	.quad	0x3fb6b063e07a28bb              # double 0.088628999999999999
	.quad	0x3fdcd35eb7457c0b              # double 0.450401
	.quad	0x3fedd9be4cd74928              # double 0.93283000000000005
	.quad	0x3fc1556084a515cf              # double 0.13541800000000001
	.quad	0x3f93cd141a6937d2              # double 0.019337
	.quad	0x3fe685681ecd4aa1              # double 0.70378499999999999
	.quad	0x3fcf03c8e25c810a              # double 0.24230299999999999
	.quad	0x3fa3760bf5d78812              # double 0.038010000000000002
	.quad	0x3fcd90f301eabbcb              # double 0.230986
	.quad	0x3fdb6d86ec17ebaf              # double 0.42856
	.quad	0x3fefbaafff36ac64              # double 0.99153899999999994
	.quad	0x3fd1dc054ef459da              # double 0.27905400000000002
	.quad	0x3fec8cb4aec8d5c7              # double 0.89217599999999997
	.quad	0x3fe6a1016ce789e7              # double 0.70715399999999995
	.quad	0x3fe4b721d53cddd7              # double 0.64735500000000001
	.quad	0x3fccd8d36b4c7f35              # double 0.22536700000000001
	.quad	0x3febc9cf56eac860              # double 0.86838499999999996
	.quad	0x3fd6655193708aad              # double 0.34993400000000002
	.quad	0x3fe2959a30984e40              # double 0.580762
	.quad	0x3fd025fa658c4bd3              # double 0.25231799999999999
	.quad	0x3fefb228dc981beb              # double 0.99049799999999998
	.quad	0x3fc205681ecd4aa1              # double 0.14079
	.quad	0x3fa4d26fa3fcc9eb              # double 0.040668000000000003
	.quad	0x3fea8c77dd872f34              # double 0.82964700000000002
	.quad	0x3fe82d3415b1422d              # double 0.75551800000000002
	.quad	0x3fcfbce4217d284a              # double 0.24795200000000001
	.quad	0x3fd017dae81882ae              # double 0.25145600000000001
	.quad	0x3fef13f8db489093              # double 0.97118800000000005
	.quad	0x3fc684a515ce9e5e              # double 0.175923
	.quad	0x3fe1356323bbc6eb              # double 0.537767
	.quad	0x3f941e9af5ba2be0              # double 0.019647999999999999
	.quad	0x3fea44c5974e65bf              # double 0.82089500000000004
	.quad	0x3fb82b841248d7e0              # double 0.094413999999999997
	.quad	0x3fead2263d816acf              # double 0.83815300000000004
	.quad	0x3fd346f587d6f976              # double 0.30120599999999997
	.quad	0x3fdc6a6a012599ed              # double 0.44399499999999997
	.quad	0x3fddb8cfbfc6540d              # double 0.46440500000000001
	.quad	0x3fd7bedfa43fe5c9              # double 0.37102499999999999
	.quad	0x3fe7a6e115592d99              # double 0.73912100000000003
	.quad	0x3fc1da16616b54e3              # double 0.13946800000000001
	.quad	0x3fefd2b6f19934f0              # double 0.99447200000000002
	.quad	0x3fc6ba5a038194c0              # double 0.177562
	.quad	0x3fbf9baa1511dffc              # double 0.123469
	.quad	0x3fe1f633ce63a5c2              # double 0.56130400000000003
	.quad	0x3fd43486f049a997              # double 0.31570599999999999
	.quad	0x3fe34f26aec0724b              # double 0.60341199999999995
	.quad	0x3fdd17b95a294142              # double 0.454573
	.quad	0x3fda327aa68f4b62              # double 0.409331
	.quad	0x3fe49e3c968943e1              # double 0.644316
	.quad	0x3fe02786c226809d              # double 0.50482499999999997
	.quad	0x3fe5f26d04e618ce              # double 0.68584299999999998
	.quad	0x3fa62c55c96030c2              # double 0.043306999999999998
	.quad	0x3fe80db48909289e              # double 0.75167300000000004
	.quad	0x3fc3fc2224edf612              # double 0.15613199999999999
	.quad	0x3fed3380cb6c7a7d              # double 0.91253700000000004
	.quad	0x3fd2ea24cc6822ff              # double 0.295541
	.quad	0x3fee7e8ccdd93c47              # double 0.95294800000000002
	.quad	0x3fe716f21f6cacd2              # double 0.72155100000000005
	.quad	0x3fda3682730c6717              # double 0.40957700000000002
	.quad	0x3fedf77f27fe4bcb              # double 0.93646200000000002
	.quad	0x3fe4dea24cc68230              # double 0.65217700000000001
	.quad	0x3fd2aaa3ad18d25f              # double 0.29166500000000001
	.quad	0x3f9159c49774256c              # double 0.016944000000000001
	.quad	0x3fe57df5cf2495e1              # double 0.67162599999999995
	.quad	0x3fe42f0bf1a5ca2a              # double 0.63074300000000005
	.quad	0x3fe890e8858ff759              # double 0.76768899999999995
	.quad	0x3fc120a73f748a16              # double 0.13380900000000001
	.quad	0x3fd88405b39e279e              # double 0.38305800000000001
	.quad	0x3fe3053198288052              # double 0.59438400000000002
	.quad	0x3feb356da0168b5d              # double 0.85027200000000003
	.quad	0x3fc69ba5e353f7cf              # double 0.176625
	.quad	0x3fdd8a372606fac6              # double 0.461561
	.quad	0x3fe586f8ad256799              # double 0.67272600000000005
	.quad	0x3fd3d8a979e16d6e              # double 0.31009900000000001
	.quad	0x3fd25af294dd7236              # double 0.28680099999999997
	.quad	0x3fe01960fa15db34              # double 0.50309800000000005
	.quad	0x3fea828c36da87a0              # double 0.82843599999999995
	.quad	0x3fe08e9707182236              # double 0.51740600000000003
	.quad	0x3feb45a8155d5f57              # double 0.85225300000000004
	.quad	0x3fe79b9f98b71b8b              # double 0.73774700000000004
	.quad	0x3fcffe43675ddd2b              # double 0.249947
	.quad	0x3fd8ba6266fd651b              # double 0.386376
	.quad	0x3feda9c99285a922              # double 0.92697600000000002
	.quad	0x3fc6ab474107314d              # double 0.17710200000000001
	.quad	0x3fcc625e99e94ab2              # double 0.221752
	.quad	0x3fe1acb641700cd8              # double 0.55233299999999996
	.quad	0x3fee50ebaade657c              # double 0.94737800000000005
	.quad	0x3fe2f9591cd1c7de              # double 0.59293799999999997
	.quad	0x3fe591e85fd04a30              # double 0.67406100000000002
	.quad	0x3fbfb677f6b1a2a5              # double 0.123878
	.quad	0x3fd1ee9142b302f7              # double 0.28018599999999999
	.quad	0x3fe6d07e9d94d0dd              # double 0.712951
	.quad	0x3fe6c677b395c422              # double 0.711727
	.quad	0x3fcdbcb1cc964628              # double 0.232321
	.quad	0x3fe8525aab474107              # double 0.76005299999999998
	.quad	0x3fdace8533b10774              # double 0.41885499999999998
	.quad	0x3fe38e27e0ef9980              # double 0.61110299999999995
	.quad	0x3fd2af07bfe7e1fc              # double 0.291933
	.quad	0x3fd601b003686a4d              # double 0.34385300000000002
	.quad	0x3fef23ee1bd1ed9e              # double 0.973136
	.quad	0x3fc1926c7eae5bc8              # double 0.13728099999999999
	.quad	0x3fecdf9bdc69f8c2              # double 0.90229599999999999
	.quad	0x3fe21476af89c5e7              # double 0.564998
	.quad	0x3fe5fed634549b63              # double 0.68735800000000002
	.quad	0x3fe785553ef6b5d4              # double 0.73502599999999996
	.quad	0x3fe1a8869c66d374              # double 0.55182200000000003
	.quad	0x3fe82808c8259e1f              # double 0.75488699999999997
	.quad	0x3fe00431bde82d7b              # double 0.50051199999999996
	.quad	0x3fd78c08b75ea67f              # double 0.36792200000000003
	.quad	0x3fe9d4eb13dfb0d5              # double 0.80724099999999999
	.quad	0x3fd217e77d523b36              # double 0.28270899999999999
	.quad	0x3fe20203e63e8dda              # double 0.56274599999999997
	.quad	0x3fdca3b9ae0c1765              # double 0.44749299999999997
	.quad	0x3fda497fa5d28d00              # double 0.41073599999999999
	.quad	0x3fd33250b524399b              # double 0.29994599999999999
	.quad	0x3fbf3e24febd09e1              # double 0.122042
	.quad	0x3fe842c7fbacb429              # double 0.75815200000000005
	.quad	0x3fd0cd29131ec0b5              # double 0.26252199999999998
	.quad	0x3fdde0eb67c286f9              # double 0.46685300000000002
	.quad	0x3fcacda6e75ff60a              # double 0.209401
	.quad	0x3fc62c669057d178              # double 0.17323
	.quad	0x3fcb255f3519bd40              # double 0.21207799999999999
	.quad	0x3fe07bfc6540cc79              # double 0.51513500000000001
	.quad	0x3fced594f26aec07              # double 0.240893
	.quad	0x3fefd425f202107b              # double 0.99464699999999994
	.quad	0x3fe49a500d5e8d54              # double 0.64383699999999999
	.quad	0x3fa476295208e150              # double 0.039964
	.quad	0x3fe12131a8ef77f2              # double 0.53530199999999994
	.quad	0x3febf2e05ccc89b1              # double 0.87339800000000001
	.quad	0x3feb6e99a62ed352              # double 0.85725099999999999
	.quad	0x3feff5e2046c764b              # double 0.99876500000000001
	.quad	0x3fd18d3f1843c3a4              # double 0.27424599999999999
	.quad	0x3fe0ecce5f7403de              # double 0.52890700000000002
	.quad	0x3fa763e4abe6a338              # double 0.045684000000000002
	.quad	0x3fdde963dc486ad3              # double 0.46737000000000001
	.quad	0x3fee050374ff865d              # double 0.93811199999999995
	.quad	0x3fe7609784ec636b              # double 0.730541
	.quad	0x3faf36262cba732e              # double 0.06096
	.quad	0x3fe28aa21a719b4e              # double 0.57942300000000002
	.quad	0x3fc1d909f1f14984              # double 0.139436
	.quad	0x3fd5b43d89ce4a7b              # double 0.33912599999999998
	.quad	0x3fbe06317268d328              # double 0.117282
	.quad	0x3fefb24a6a875d57              # double 0.990514
	.quad	0x3fd655a7d24180d4              # double 0.34897800000000001
	.quad	0x3fe5a0791c4b9021              # double 0.67583899999999997
	.quad	0x3fe6d12ec6bce853              # double 0.71303499999999997
	.quad	0x3fe8f440af1cb89d              # double 0.77981599999999995
	.quad	0x3fe57776c4827b70              # double 0.67083300000000001
	.quad	0x3feb76102795703f              # double 0.85816199999999998
	.quad	0x3fde055fbb517a46              # double 0.46907799999999999
	.quad	0x3fe49f926c7eae5c              # double 0.64447900000000002
	.quad	0x3fef4c660a201472              # double 0.97807599999999995
	.quad	0x3fe89dcb5781c715              # double 0.769262
	.quad	0x3fda17d6b65a9a80              # double 0.40770499999999998
	.quad	0x3feec2b734b51373              # double 0.96126900000000004
	.quad	0x3f9df61240746456              # double 0.029259
	.quad	0x3fdc043e5321e604              # double 0.43775900000000001
	.quad	0x3fd0102bc72e275b              # double 0.25098700000000002
	.quad	0x3fc8262cba732df5              # double 0.188665
	.quad	0x3fe24753e707e176              # double 0.57120700000000002
	.quad	0x3feca67c6b8b6955              # double 0.89532299999999998
	.quad	0x3fe6c4028e4fb97c              # double 0.71142700000000003
	.quad	0x3fe8be07a28bb0a3              # double 0.77319700000000002
	.quad	0x3fd0b6ae7d566cf4              # double 0.26114999999999999
	.quad	0x3fd0cac8e68e3ef3              # double 0.26237700000000003
	.quad	0x3fc7ad8e432441ff              # double 0.18498400000000001
	.quad	0x3feb824b33daf8df              # double 0.85965499999999995
	.quad	0x3fdd3dccea28fe26              # double 0.456897
	.quad	0x3fe8dd72367e414e              # double 0.77703199999999994
	.quad	0x3fe6fcd035371972              # double 0.71836100000000003
	.quad	0x3fc46822ff08893b              # double 0.15942799999999999
	.quad	0x3fe413a4f8726d05              # double 0.62739800000000001
	.quad	0x3fe4aba7b9170d63              # double 0.64595400000000003
	.quad	0x3fd4f8f041461b6d              # double 0.32769399999999999
	.quad	0x3fce8bb0a2ca9ac3              # double 0.23863799999999999
	.quad	0x3fd11db445ed4a1b              # double 0.26743800000000001
	.quad	0x3fc9709b738e6d16              # double 0.19874900000000001
	.quad	0x3fef99392189bd84              # double 0.98745400000000005
	.quad	0x3fed22f8bdec5f39              # double 0.91051899999999997
	.quad	0x3fd2c1c6088d6d3b              # double 0.29307699999999998
	.quad	0x3fd7a21ea35935fc              # double 0.36926999999999999
	.quad	0x3fe0bcdbbe0157ef              # double 0.52305400000000002
	.quad	0x3fdd1172ef0ae536              # double 0.45418999999999998
	.quad	0x3fe104ea4a8c154d              # double 0.53185000000000004
	.quad	0x3fbbc42a66dbd72c              # double 0.108462
	.quad	0x3fc294ccab3edd8b              # double 0.14516599999999999
	.quad	0x3fe62dd377e1b8ed              # double 0.69309399999999999
	.quad	0x3fed54b48d3ae686              # double 0.91659000000000002
	.quad	0x3fd45f633ce63a5c              # double 0.31832199999999999
	.quad	0x3fe700bed740c415              # double 0.71884099999999995
	.quad	0x3fc3f9a49c2c1b11              # double 0.156056
	.quad	0x3fe6aa9b499d0204              # double 0.70832600000000001
	.quad	0x3feb489b0ee49f51              # double 0.85261299999999995
	.quad	0x3fb571f36262cba7              # double 0.083769999999999997
	.quad	0x3fea829cfdd22856              # double 0.82844399999999996
	.quad	0x3fc5b7ae5796bfcb              # double 0.16966800000000001
	.quad	0x3fcc4228997c3d68              # double 0.22076899999999999
	.quad	0x3fedf50c1b97353b              # double 0.93616299999999997
	.quad	0x3fe51bc126a65cf6              # double 0.65963799999999995
	.quad	0x3fc3f5946c332f01              # double 0.15593199999999999
	.quad	0x3fc23bc4d22c881e              # double 0.14244899999999999
	.quad	0x3fb5ea24cc6822ff              # double 0.085604
	.quad	0x3fc8027d88c1db01              # double 0.18757599999999999
	.quad	0x3fc2a0902de00d1b              # double 0.14552499999999999
	.quad	0x3fe4716f4384ba0f              # double 0.63884700000000005
	.quad	0x3fe8ee2c98e53eb4              # double 0.77907400000000004
	.quad	0x3fe4c5b6c3760bf6              # double 0.64913500000000002
	.quad	0x3fd0af3e468cac4b              # double 0.26069599999999998
	.quad	0x3fc290d5a5b9628d              # double 0.14504500000000001
	.quad	0x3fec1be09bb6aa4c              # double 0.87840300000000004
	.quad	0x3feced15ad106ee3              # double 0.90394099999999999
	.quad	0x3fd1c016052502ef              # double 0.27734900000000001
	.quad	0x3fe54cc037931444              # double 0.66561899999999996
	.quad	0x3f99aae6c8f75537              # double 0.025066000000000001
	.quad	0x3fd616ebd4cfd08d              # double 0.34514899999999998
	.quad	0x3fd40ce0b912dba5              # double 0.31328600000000001
	.quad	0x3fdf04c8bc9cd3e1              # double 0.48466700000000001
	.quad	0x3fedf212d77318fc              # double 0.93579999999999996
	.quad	0x3fe41f666234a87e              # double 0.62883299999999998
	.quad	0x3fed6d45e9185cee              # double 0.91958899999999999
	.quad	0x3fedc1b97353b4b3              # double 0.929898
	.quad	0x3fdf21c475e6362a              # double 0.48643599999999998
	.quad	0x3fedf23aafff36ac              # double 0.93581899999999995
	.quad	0x3fd204039abf3387              # double 0.281495
	.quad	0x3fee87852f7f498c              # double 0.95404299999999997
	.quad	0x3fcc7829068986fd              # double 0.222417
	.quad	0x3fd1ea6c1a048e04              # double 0.27993299999999999
	.quad	0x3fed55c0fcb4f1e5              # double 0.91671800000000003
	.quad	0x3feb3762d83c6c98              # double 0.85051100000000002
	.quad	0x3feea28fe260b2c8              # double 0.95734399999999997
	.quad	0x3fea55885d31337f              # double 0.82294100000000003
	.quad	0x3fedc46f9b994e1a              # double 0.93022899999999997
	.quad	0x3feb71cda2b5a20e              # double 0.85764200000000002
	.quad	0x3fd332f01754b05b              # double 0.29998399999999997
	.quad	0x3fcd7fd82773e250              # double 0.230464
	.quad	0x3fd0c4f3ba775fb3              # double 0.262021
	.quad	0x3fee4636b0963561              # double 0.946071
	.quad	0x3fe248c5004fb118              # double 0.57138299999999997
	.quad	0x3fef74107314ca92              # double 0.98291799999999996
	.quad	0x3feb2da98676a726              # double 0.84932399999999997
	.quad	0x3fee70520d130dfa              # double 0.95121100000000003
	.quad	0x3fd9f0e90bc7b45f              # double 0.40532899999999999
	.quad	0x3fde060fe47991bc              # double 0.46911999999999998
	.quad	0x3fec556b00ffda40              # double 0.88542699999999996
	.quad	0x3fec1524bfd2e947              # double 0.87758100000000006
	.quad	0x3fe69b0ccbc05d53              # double 0.70642700000000003
	.quad	0x3fe56bcc6c54bcf1              # double 0.66940900000000003
	.quad	0x3fb3b58d1526d8b2              # double 0.076989000000000001
	.quad	0x3fd2e4ead0c3d252              # double 0.29522199999999998
	.quad	0x3fb4377186551937              # double 0.078971
	.quad	0x3fd2cd35a858793e              # double 0.29377500000000001
	.quad	0x3fb09795b35b0bbf              # double 0.064812999999999996
	.quad	0x3fe73eee52589268              # double 0.72643199999999997
	.quad	0x3fd80980b242070c              # double 0.37558000000000002
	.quad	0x3fd744f1a1986b9c              # double 0.36358299999999999
	.quad	0x3fccababead4f590              # double 0.22398899999999999
	.quad	0x3fe1874a771c970f              # double 0.54776499999999995
	.quad	0x3fc794ea077036ca              # double 0.18423200000000001
	.quad	0x3fd49f44d4456712              # double 0.32222099999999998
	.quad	0x3feaf661f18c9fb6              # double 0.84257599999999999
	.quad	0x3fee350d2806af47              # double 0.94397600000000004
	.quad	0x3fbb67c286f8ad25              # double 0.10705199999999999
	.quad	0x3fefb8c5436b8f9b              # double 0.99130499999999999
	.quad	0x3fe95da6a4441787              # double 0.792682
	.quad	0x3fee901b003686a5              # double 0.95509100000000002
	.quad	0x3fda9192641b328b              # double 0.41513499999999998
	.quad	0x3fe0917d6b65a9a8              # double 0.51776
	.quad	0x3fefad4b2745bf27              # double 0.989904
	.quad	0x3feaeb2af145521a              # double 0.84120700000000004
	.quad	0x3f9a250f840181e0              # double 0.025531999999999999
	.quad	0x3fc9f9acffa7eb6c              # double 0.202932
	.quad	0x3fe0c4156e264e48              # double 0.52393599999999996
	.quad	0x3fd0ced916872b02              # double 0.262625
	.quad	0x3fe9ffcb923a29c7              # double 0.81247499999999995
	.quad	0x3fee9873ffac1d2a              # double 0.95611000000000002
	.quad	0x3fc756c93a711516              # double 0.182336
	.quad	0x3fe46e5abc0e38a8              # double 0.63847100000000001
	.quad	0x3fe2d7abb8800eae              # double 0.58882699999999999
	.quad	0x3fee722e1ac57e24              # double 0.951438
	.quad	0x3fc086833c60029f              # double 0.129105
	.quad	0x3f86c58eeae9ee46              # double 0.011119
	.quad	0x3fd86d19dece5711              # double 0.38165900000000003
	.quad	0x3fea546b26bf876a              # double 0.82280500000000001
	.quad	0x3fe5cc39ffd60e95              # double 0.68118000000000001
	.quad	0x3fd6073de1e2de87              # double 0.344192
	.quad	0x3fcb3ade225fa659              # double 0.21273400000000001
	.quad	0x3fec2847b24638c9              # double 0.87991699999999995
	.quad	0x3fbc2e019b0ab2e1              # double 0.11007699999999999
	.quad	0x3fe6c51dabe2717a              # double 0.71156200000000003
	.quad	0x3fe289a240314877              # double 0.57930099999999995
	.quad	0x3fedb1bbcf4e874d              # double 0.92794600000000005
	.quad	0x3fe6966e008e9b39              # double 0.70586300000000002
	.quad	0x3fa315f88fc9363f              # double 0.037276999999999998
	.quad	0x3fc8596c82e019b1              # double 0.19022900000000001
	.quad	0x3fefb242070b8cfc              # double 0.99051
	.quad	0x3fc3cef240fa9c13              # double 0.154753
	.quad	0x3fec47021d10b1ff              # double 0.88366800000000001
	.quad	0x3fecc918e325d4a6              # double 0.89954800000000001
	.quad	0x3fddaac1094a2b9d              # double 0.46354699999999999
	.quad	0x3fe83acb4289118c              # double 0.75717699999999998
	.quad	0x3fdea1ec4e7253da              # double 0.47863299999999998
	.quad	0x3fc5eccc46950fc7              # double 0.171289
	.quad	0x3fd671151611ba3d              # double 0.35065200000000002
	.quad	0x3fd98672756861e9              # double 0.39883099999999999
	.quad	0x3fcf55f78359bc34              # double 0.244811
	.quad	0x3fb78e7ddca4b125              # double 0.092018000000000003
	.quad	0x3fea5bbbe878fabe              # double 0.82369800000000004
	.quad	0x3fe68af5fd47bedb              # double 0.70446299999999995
	.quad	0x3fea586876e1dead              # double 0.82329200000000002
	.quad	0x3fc12862f5989df1              # double 0.134045
	.quad	0x3fee89d0635a426c              # double 0.95432300000000003
	.quad	0x3fd85703f2d3c793              # double 0.38031100000000001
	.quad	0x3fe3e70e2c12ad82              # double 0.62195500000000004
	.quad	0x3fe20dd616f86a0a              # double 0.56418900000000005
	.quad	0x3fdd67ba237cdcca              # double 0.45945599999999998
	.quad	0x3f848fd9fd36f7e4              # double 0.01004
	.quad	0x3fdb2b734b51372a              # double 0.42452699999999999
	.quad	0x3fe2e4cd74927914              # double 0.59043000000000001
	.quad	0x3fe96358298cc144              # double 0.79337699999999999
	.quad	0x3fb907b784662bae              # double 0.097773999999999999
	.quad	0x3fddd75e2046c765              # double 0.46627000000000002
	.quad	0x3feaf74256bca537              # double 0.84268299999999996
	.quad	0x3fecb2f23033a472              # double 0.89684399999999997
	.quad	0x3fe331ec0b567558              # double 0.59984400000000004
	.quad	0x3fd147baa9b499d0              # double 0.27000299999999999
	.quad	0x3fee7dbf487fcb92              # double 0.95284999999999997
	.quad	0x3fe6220578e5c4eb              # double 0.69165299999999996
	.quad	0x3fead2fa0d77b7c8              # double 0.83825400000000005
	.quad	0x3fcd5b8130164841              # double 0.229355
	.quad	0x3fe10b1bbcf4e875              # double 0.53260600000000002
	.quad	0x3fe72f1a9fbe76c9              # double 0.72450000000000003
	.quad	0x3fe837e4de3b8a1a              # double 0.75682300000000002
	.quad	0x3fe598e325d4a5df              # double 0.67491299999999999
	.quad	0x3fe49f2990f301eb              # double 0.64442900000000003
	.quad	0x3fdf77c88e79aae7              # double 0.49168600000000001
	.quad	0x3fe4f82b1f687b14              # double 0.65529400000000004
	.quad	0x3feb3d4067cf1c32              # double 0.85122699999999996
	.quad	0x3fe139c51dabe271              # double 0.53830199999999995
	.quad	0x3fee1f9ce8d972cd              # double 0.94135899999999995
	.quad	0x3fea94ca925fe975              # double 0.83066300000000004
	.quad	0x3fde1f85d744f5d3              # double 0.47067399999999998
	.quad	0x3fda69014b599aa6              # double 0.412659
	.quad	0x3fe9f0dc768dfbd7              # double 0.81065200000000004
	.quad	0x3fcc8b9fdbd2fa0d              # double 0.22301099999999999
	.quad	0x3fd63361565c2d28              # double 0.34688600000000003
	.quad	0x3feebeb399f5dfec              # double 0.96077900000000004
	.quad	0x3fd803eea209aaa4              # double 0.37524000000000002
	.quad	0x3fecaac1094a2b9d              # double 0.89584399999999997
	.quad	0x3fb56ffc115df655              # double 0.083739999999999995
	.quad	0x3fb4840e1719f7f9              # double 0.080140000000000003
	.quad	0x3fd2b089a0275254              # double 0.29202499999999998
	.quad	0x3feb2674080f98fa              # double 0.84844399999999998
	.quad	0x3fe17d60e94ee393              # double 0.54655500000000001
	.quad	0x3fe9854ac29bf163              # double 0.79752100000000004
	.quad	0x3fdc976bc1eff9f8              # double 0.44674199999999997
	.quad	0x3fe303621fafc8b0              # double 0.594163
	.quad	0x3fdffea3df6db941              # double 0.499917
	.quad	0x3fba1d4306e5cd4f              # double 0.102009
	.quad	0x3fd7084a515ce9e6              # double 0.35988100000000001
	.quad	0x3fd18eb463497b74              # double 0.274335
	.quad	0x3fd7c4ac6cdaf4ae              # double 0.37137900000000001
	.quad	0x3fd1767d34df04de              # double 0.27285700000000002
	.quad	0x3fd7cdfaca361998              # double 0.37194700000000003
	.quad	0x3fe414013ec460ee              # double 0.62744200000000006
	.quad	0x3fbe036006d0d499              # double 0.117239
	.quad	0x3fe16f459d99029b              # double 0.54483300000000001
	.quad	0x3fdd090b417ca212              # double 0.453677
	.quad	0x3fe7eb09635610ae              # double 0.74744100000000002
	.quad	0x3fd9b6aa4b9884c7              # double 0.40177400000000002
	.quad	0x3fe8aa6b0d9513f9              # double 0.77080300000000002
	.quad	0x3fec6238da3c2118              # double 0.88698999999999995
	.quad	0x3fe4d477bbf93ff2              # double 0.65093599999999996
	.quad	0x3fde20ff540895d1              # double 0.47076400000000002
	.quad	0x3fd6f0e4da09cc32              # double 0.35845300000000002
	.quad	0x3fd8ab9f559b3d08              # double 0.38547500000000001
	.quad	0x3fef6f5a964e8b7e              # double 0.98234299999999997
	.quad	0x3fc83925bb7b6bb1              # double 0.189244
	.quad	0x3feb902bc72e275b              # double 0.86134900000000003
	.quad	0x3fcc808c8259e1f4              # double 0.22267300000000001
	.quad	0x3fa8c3f3e0370cdd              # double 0.048370000000000003
	.quad	0x3fb1945b6c3760bf              # double 0.068669999999999995
	.quad	0x3fd3de97d06bbdbe              # double 0.31046099999999999
	.quad	0x3fe8548238540464              # double 0.76031599999999999
	.quad	0x3feea3d4f15e7c8d              # double 0.95749899999999999
	.quad	0x3fcf1526d8b1dd5d              # double 0.24283299999999999
	.quad	0x3fe39c970f7b9e06              # double 0.61286499999999999
	.quad	0x3fe84f41f212d773              # double 0.75967499999999999
	.quad	0x3fd42934acaff6d3              # double 0.31501499999999999
	.quad	0x3fe1b52220bc382a              # double 0.55336099999999999
	.quad	0x3fcb01d19157abb9              # double 0.21099300000000001
	.quad	0x3fe7220bc382a130              # double 0.72290600000000005
	.quad	0x3fe316ededaec4a4              # double 0.596549
	.quad	0x3fec47bcc2938de7              # double 0.88375700000000001
	.quad	0x3fe80407cc7d1bb5              # double 0.75049200000000005
	.quad	0x3fedec9c0a8d21bc              # double 0.93513299999999999
	.quad	0x3f94152b0a6fc58b              # double 0.019612000000000001
	.quad	0x3fee7d34df04ddb5              # double 0.95278399999999996
	.quad	0x3fefc7f562174c4d              # double 0.99315900000000001
	.quad	0x3fe6524bfd2e9468              # double 0.697546
	.quad	0x3fd7221c8a7a41e5              # double 0.36145699999999997
	.quad	0x3fcceb0318b9346a              # double 0.22592200000000001
	.quad	0x3fe86cedd4845133              # double 0.763297
	.quad	0x3fd52602c9081c2e              # double 0.33044499999999999
	.quad	0x3fddf9096bb98c7e              # double 0.46832499999999999
	.quad	0x3fe1d1159c497742              # double 0.55677299999999996
	.quad	0x3feff89a459103c9              # double 0.99909700000000001
	.quad	0x3feac4567125dd09              # double 0.83646699999999996
	.quad	0x3fc4f36694898f60              # double 0.16367799999999999
	.quad	0x3fd2a60d4562e0a0              # double 0.29138500000000001
	.quad	0x3fcb18dac258d584              # double 0.211696
	.quad	0x3feb731f46ed245b              # double 0.85780299999999998
	.quad	0x3fe4ec58eeae9ee4              # double 0.65385099999999996
	.quad	0x3fdb800218def417              # double 0.42968800000000001
	.quad	0x3fdb23b7952d234f              # double 0.42405500000000002
	.quad	0x3fddb8348f53c57a              # double 0.464368
	.quad	0x3fc4b5807fed2029              # double 0.16178899999999999
	.quad	0x3fdd7ef5a964e8b8              # double 0.46087400000000001
	.quad	0x3fcf68d759ee88df              # double 0.24538699999999999
	.quad	0x3fe77674d1633483              # double 0.73321000000000003
	.quad	0x3fe8272ead9274e2              # double 0.75478299999999998
	.quad	0x3fc2adbc664d3bf3              # double 0.145927
	.quad	0x3f93ab430f49491f              # double 0.019207999999999999
	.quad	0x3fd882f944241c3f              # double 0.382994
	.quad	0x3fa52bd3c3611340              # double 0.041349999999999998
	.quad	0x3fd0d49d7ba6698c              # double 0.26297700000000002
	.quad	0x3fe099bd4067cf1c              # double 0.51876699999999998
	.quad	0x3fc7bf50e3476295              # double 0.185526
	.quad	0x3fee9e364bec679d              # double 0.95681300000000002
	.quad	0x3fb6f49cf56eac86              # double 0.089669999999999999
	.quad	0x3fe923b7952d234f              # double 0.78561000000000003
	.quad	0x3fd546fdeb52c9d1              # double 0.33245799999999998
	.quad	0x3fefa452c59fb1e2              # double 0.98880900000000005
	.quad	0x3fa49e8815e39714              # double 0.040272000000000002
	.quad	0x3fd25d5f56a7ac82              # double 0.28694900000000001
	.quad	0x3fddf5232d2bb235              # double 0.46808699999999998
	.quad	0x3fe4d744f5d35654              # double 0.65127800000000002
	.quad	0x3fe3e394face67d7              # double 0.62153099999999994
	.quad	0x3fd9ad2135daad60              # double 0.40119199999999999
	.quad	0x3fcef038e29f9ce9              # double 0.241706
	.quad	0x3fd86195464dc22b              # double 0.38095600000000002
	.quad	0x3fd59e6687f455a8              # double 0.33779300000000001
	.quad	0x3fe00e0221426fe7              # double 0.50170999999999999
	.quad	0x3fead5171e29b6b3              # double 0.83851200000000004
	.quad	0x3fc4514c22ee4192              # double 0.15873100000000001
	.quad	0x3fe3af922962cfd9              # double 0.61518200000000001
	.quad	0x3fe3e50c5eb313be              # double 0.62170999999999998
	.quad	0x3fe06a50d6b228dd              # double 0.51297800000000005
	.quad	0x3fe38fd199bb2789              # double 0.61130600000000002
	.quad	0x3fb4d91eeaa6d267              # double 0.081437999999999997
	.quad	0x3feba9e90795f677              # double 0.86449100000000001
	.quad	0x3fbee2b8c75c4a84              # double 0.120647
	.quad	0x3fe1fabb8800eae2              # double 0.56185700000000005
	.quad	0x3fd09e59f2ba9d1f              # double 0.25966499999999998
	.quad	0x3fd2432873bc903f              # double 0.28534900000000002
	.quad	0x3fd975ff609dcf89              # double 0.39782699999999999
	.quad	0x3fdfb1f687b139c9              # double 0.49523699999999998
	.quad	0x3fd5c2c1b10fd7e4              # double 0.34001199999999998
	.quad	0x3fc4af2d7f950b95              # double 0.16159599999999999
	.quad	0x3f930d306a2b1705              # double 0.018605
	.quad	0x3fe4ec4c5974e65c              # double 0.65384500000000001
	.quad	0x3fe0487db2b34613              # double 0.508849
	.quad	0x3fe250fa58f7121b              # double 0.57238500000000003
	.quad	0x3fdff9ce8d972cd8              # double 0.49962200000000001
	.quad	0x3fe719a847b24639              # double 0.72188200000000002
	.quad	0x3fdccbc8c0ce91c9              # double 0.449938
	.quad	0x3fead532617c1bda              # double 0.83852499999999996
	.quad	0x3feb4399b2c40d0b              # double 0.85200200000000004
	.quad	0x3fe04486ad2dcb14              # double 0.50836499999999996
	.quad	0x3fa4db7ae5796bfd              # double 0.040737000000000002
	.quad	0x3fef5e785b5b7069              # double 0.98028199999999998
	.quad	0x3fdc5f45e0b4e11e              # double 0.44331500000000001
	.quad	0x3fde413db7f17375              # double 0.47273199999999999
	.quad	0x3fe1814b599aa609              # double 0.54703299999999999
	.quad	0x3fd2695d91ab8e8f              # double 0.28768100000000002
	.quad	0x3fb1972cd7cf5f4e              # double 0.068712999999999996
	.quad	0x3fe27af640639d5e              # double 0.57750999999999997
	.quad	0x3fd8f37fbefd0071              # double 0.38986199999999999
	.quad	0x3feda5efe9318762              # double 0.92650600000000005
	.quad	0x3fec02b628459967              # double 0.87533099999999997
	.quad	0x3fa1709310129cbb              # double 0.034062000000000002
	.quad	0x3fc2fd651b0ccbc0              # double 0.14835799999999999
	.quad	0x3fe363c968943e10              # double 0.605931
	.quad	0x3fed3d9cae21101b              # double 0.913771
	.quad	0x3fe42f5989df1173              # double 0.63078000000000001
	.quad	0x3fc6e4a7b4e54f7b              # double 0.17885300000000001
	.quad	0x3fdec90c4dec1c1d              # double 0.48102099999999998
	.quad	0x3fda3e89a88ace25              # double 0.41006700000000001
	.quad	0x3fcd6b11c6d1e109              # double 0.22983000000000001
	.quad	0x3fe66d0f6273929f              # double 0.70081300000000002
	.quad	0x3fdb15bdd76683c3              # double 0.42320200000000002
	.quad	0x3fc13d3a1d323fee              # double 0.134681
	.quad	0x3fd68dc981beb181              # double 0.352404
	.quad	0x3fe0e8ea39c51dac              # double 0.52843200000000001
	.quad	0x3fee08bda9435ac9              # double 0.93856700000000004
	.quad	0x3fb90e3476295209              # double 0.097873000000000002
	.quad	0x3fd4566490a350d3              # double 0.31777300000000003
	.quad	0x3fe6b02b40f66a55              # double 0.709005
	.quad	0x3feac50ce4ead0c4              # double 0.83655400000000001
	.quad	0x3fe24e6c093d9664              # double 0.57207300000000005
	.quad	0x3fde14b599aa6091              # double 0.47001399999999999
	.quad	0x3fe636a832b990b0              # double 0.69417200000000001
	.quad	0x3fee3fb15b573eab              # double 0.94527499999999998
	.quad	0x3fe70cb07d0aed9a              # double 0.72029900000000002
	.quad	0x3fc3739f340d4dc6              # double 0.15196599999999999
	.quad	0x3fe1f318fc504817              # double 0.56092500000000001
	.quad	0x3fdafcf3dc054ef4              # double 0.42168899999999998
	.quad	0x3fd5e0b912dba4d7              # double 0.34184100000000001
	.quad	0x3fe7ecd6c2efd439              # double 0.74766100000000002
	.quad	0x3fe8951611ba3ca7              # double 0.76819899999999997
	.quad	0x3fb5c65c70435efa              # double 0.085057999999999994
	.quad	0x3fdda20578e5c4eb              # double 0.46301399999999998
	.quad	0x3fb27d1351159c49              # double 0.072220999999999994
	.quad	0x3fe004790b849881              # double 0.50054600000000005
	.quad	0x3f9384ba0e842742              # double 0.019061000000000002
	.quad	0x3fbcaa326e115593              # double 0.111972
	.quad	0x3fe3c5e2cdc011d3              # double 0.61790599999999996
	.quad	0x3fc006af46aa087d              # double 0.12520400000000001
	.quad	0x3fee8c75c4a83b1d              # double 0.95464599999999999
	.quad	0x3fbe8049667b5f1c              # double 0.119145
	.quad	0x3fe8d51d68c692f7              # double 0.77601500000000001
	.quad	0x3fb4f01fb82c2bd8              # double 0.081789000000000001
	.quad	0x3fdb6d5065732160              # double 0.42854700000000001
	.quad	0x3fed608d08919ef9              # double 0.91803599999999996
	.quad	0x3f7f1f14983d7907              # double 0.0075979999999999997
	.quad	0x3fccd423d9231c65              # double 0.22522400000000001
	.quad	0x3fdbda76d97b30f9              # double 0.43520900000000001
	.quad	0x3fa353d640e9d51b              # double 0.037748999999999998
	.quad	0x3fcfe963dc486ad3              # double 0.24931
	.quad	0x3fbd6f112fd32c62              # double 0.11497599999999999
	.quad	0x3fcfc1e7967caea7              # double 0.24810499999999999
	.quad	0x3fdd8f42fe82517e              # double 0.46186899999999997
	.quad	0x3fcea350d2806af4              # double 0.23935899999999999
	.quad	0x3fecf51697f1f9ad              # double 0.904918
	.quad	0x3fbd93b3a68b19a4              # double 0.115535
	.quad	0x3fd11522a6f3f530              # double 0.26691500000000001
	.quad	0x3fc926aec0724b77              # double 0.196493
	.quad	0x3fe52699c7bcc294              # double 0.66096200000000005
	.quad	0x3fe81a7c17a89332              # double 0.75323300000000004
	.quad	0x3fda38d1d8a54824              # double 0.40971800000000003
	.quad	0x3fe981adea897636              # double 0.79708000000000001
	.quad	0x3fec0e3ef284167b              # double 0.87673900000000005
	.quad	0x3fab3d07c84b5dcc              # double 0.053199999999999997
	.quad	0x3fd01212513b5bf7              # double 0.25110300000000002
	.quad	0x3fd9603d57796399              # double 0.39649899999999999
	.quad	0x3fd81c4fc1df3301              # double 0.37672800000000001
	.quad	0x3fbe0ab713272431              # double 0.117351
	.quad	0x3fcf15d701d9f4d3              # double 0.24285399999999999
	.quad	0x3fb7991bc5586445              # double 0.092179999999999998
	.quad	0x3fe4fdc5931ca7d6              # double 0.65597799999999995
	.quad	0x3fec051a86940358              # double 0.87562300000000004
	.quad	0x3fbdbb05faebc409              # double 0.116135
	.quad	0x3fe43b23571d1d47              # double 0.63221899999999998
	.quad	0x3fcc321a2e7f6f4c              # double 0.220279
	.quad	0x3fb85c03361565c3              # double 0.095154000000000002
	.quad	0x3fb2031ceaf251c2              # double 0.070360000000000006
	.quad	0x3fe0348d3ae685db              # double 0.50641499999999995
	.quad	0x3fd37f6b1a2a4db1              # double 0.30465199999999998
	.quad	0x3fe7021af7d30ad4              # double 0.71900699999999995
	.quad	0x3fde456b441bb8c3              # double 0.47298699999999999
	.quad	0x3f9158fb43d89ce5              # double 0.016941000000000001
	.quad	0x3fe98870110a137f              # double 0.79790499999999998
	.quad	0x3fe1dac8a3726070              # double 0.55795700000000004
	.quad	0x3fd064345cfede98              # double 0.25611600000000001
	.quad	0x3fe24a5df2239e6b              # double 0.57157800000000003
	.quad	0x3fd41fc8f32378ab              # double 0.31444
	.quad	0x3fd4c81908e581cf              # double 0.32471299999999997
	.quad	0x3fdf5d28d002e233              # double 0.49006100000000002
	.quad	0x3fba6a875d56f32c              # double 0.103188
	.quad	0x3fe67b6bb1290258              # double 0.70256600000000002
	.quad	0x3fe64fd4bf0995ab              # double 0.697245
	.quad	0x3fc754eb13dfb0d5              # double 0.182279
	.quad	0x3fc0fcefaa4766c7              # double 0.132719
	.quad	0x3f81c75818c5c9a3              # double 0.0086809999999999994
	.quad	0x3fc517d6b65a9a80              # double 0.16478999999999999
	.quad	0x3fbeed6777079e5a              # double 0.12081
	.quad	0x3fe15e4a38327675              # double 0.54276000000000002
	.quad	0x3fc4bde3fbbd7b20              # double 0.16204499999999999
	.quad	0x3fed03126e978d50              # double 0.90662500000000001
	.quad	0x3fee63b8a19c9d5a              # double 0.94967299999999999
	.quad	0x3fcc116ebd4cfd09              # double 0.219282
	.quad	0x3fe54e22a2c23748              # double 0.66578800000000005
	.quad	0x3fef2f9a8cdea034              # double 0.97456100000000001
	.quad	0x3fe2f81c714fce74              # double 0.59278699999999995
	.quad	0x3fe435d249e44fa0              # double 0.63156999999999996
	.quad	0x3fe837b28954a7f8              # double 0.756799
	.quad	0x3fdc0e94ee392e1f              # double 0.43839
	.quad	0x3feb6d84d338f798              # double 0.85711899999999996
	.quad	0x3fc736cdf266ba49              # double 0.18135999999999999
	.quad	0x3fece7f6f4be835e              # double 0.90331600000000001
	.quad	0x3fc384fd2a62aa19              # double 0.15249599999999999
	.quad	0x3fe725fe974a3401              # double 0.72338800000000003
	.quad	0x3fdcb93037d63023              # double 0.44880300000000001
	.quad	0x3fed876188b1140a              # double 0.92277600000000004
	.quad	0x3febe89eba6aca79              # double 0.87214599999999998
	.quad	0x3fcaf123c42a66dc              # double 0.210484
	.quad	0x3fe53e7d1351159c              # double 0.66387799999999997
	.quad	0x3fd41569f4906035              # double 0.313807
	.quad	0x3fc501e2584f4c6e              # double 0.16411999999999999
	.quad	0x3fed646ae3a3a8e7              # double 0.91850799999999999
	.quad	0x3fc94fdf3b645a1d              # double 0.19775000000000001
	.quad	0x3fe45ec3dab5c39c              # double 0.63656800000000002
	.quad	0x3fe3392e1ef73c0c              # double 0.60072999999999999
	.quad	0x3fe162cfd8f0c77e              # double 0.54331200000000002
	.quad	0x3fa2706d50657321              # double 0.036013999999999997
	.quad	0x3fd0f65dbfceb789              # double 0.26503700000000002
	.quad	0x3fb6dacabc515486              # double 0.089275999999999994
	.quad	0x3fc19096bb98c7e3              # double 0.13722500000000001
	.quad	0x3fef8509bf9c62a2              # double 0.98499000000000003
	.quad	0x3fd2027525460aa6              # double 0.28139999999999998
	.quad	0x3fdfdd0d8cb07d0b              # double 0.497867
	.quad	0x3fdf5de15ca6ca04              # double 0.49010500000000001
	.quad	0x3fec286b59146e4c              # double 0.87993399999999999
	.quad	0x3fea1d1f601797cc              # double 0.81605499999999997
	.quad	0x3f8986b9c304ccee              # double 0.012463999999999999
	.quad	0x3fef599029ae4f33              # double 0.97968299999999997
	.quad	0x3fcc697aeddce7cd              # double 0.221969
	.quad	0x3fd9c2d27807789a              # double 0.40251599999999998
	.quad	0x3fde4fe36d22424a              # double 0.47362599999999999
	.quad	0x3fddc96cc5fbf834              # double 0.46541900000000003
	.quad	0x3fe98af3e468cac5              # double 0.79821200000000003
	.quad	0x3fdbde093532e7b4              # double 0.43542700000000001
	.quad	0x3fd240f66a550870              # double 0.285215
	.quad	0x3fb9b3f20a73f749              # double 0.10040200000000001
	.quad	0x3fee449fd7a13c25              # double 0.94587699999999997
	.quad	0x3fca9a6f826edaa9              # double 0.20783799999999999
	.quad	0x3fe6144ed6fda837              # double 0.68997900000000001
	.quad	0x3fe12e9680e06530              # double 0.536937
	.quad	0x3fe865f7403dddb1              # double 0.76244699999999999
	.quad	0x3fea1e9f2778140e              # double 0.81623800000000002
	.quad	0x3fb9527e5215768a              # double 0.098915000000000002
	.quad	0x3fe4dd3bafd976ff              # double 0.65200599999999997
	.quad	0x3fe3276965f5275f              # double 0.59856100000000001
	.quad	0x3fdd2917507e9d95              # double 0.45563300000000001
	.quad	0x3f83d74d594f26af              # double 0.0096880000000000004
	.quad	0x3fedf47b677f6b1a              # double 0.93609399999999998
	.quad	0x3fd434549b62c775              # double 0.31569399999999997
	.quad	0x3fda9e30014f8b59              # double 0.41590500000000002
	.quad	0x3fbc064a9cdc4439              # double 0.109471
	.quad	0x3fea138fffbce421              # double 0.81488799999999995
	.quad	0x3feeca85caafbc1b              # double 0.96222200000000002
	.quad	0x3fe4df04ddb5525d              # double 0.65222400000000003
	.quad	0x3fc1e279dd3bafd9              # double 0.13972399999999999
	.quad	0x3fd6737da61e0c5b              # double 0.35079900000000003
	.quad	0x3fc840d0aaa7ded7              # double 0.18947800000000001
	.quad	0x3fdaba3443d46b27              # double 0.41761500000000001
	.quad	0x3feb9bcfd4bf0996              # double 0.86277000000000004
	.quad	0x3fe0723033a4723b              # double 0.51393900000000003
	.quad	0x3fcc0029f16b11c7              # double 0.21875500000000001
	.quad	0x3fc403f705857aff              # double 0.15637100000000001
	.quad	0x3fceeeb702602c91              # double 0.24166000000000001
	.quad	0x3fe51565c2d27807              # double 0.65886199999999995
	.quad	0x3fe42cb4289118c2              # double 0.63045700000000005
	.quad	0x3fe356b873797460              # double 0.60433599999999998
	.quad	0x3fe6f80346dc5d64              # double 0.71777500000000005
	.quad	0x3fbeec4a4095f245              # double 0.120793
	.quad	0x3fe9503fb3743633              # double 0.79104600000000003
	.quad	0x3fd7c6327ed84d34              # double 0.37147200000000002
	.quad	0x3fd0ae3608d0891a              # double 0.260633
	.quad	0x3fdeae9ee45c358b              # double 0.479408
	.quad	0x3fbc9118c197e564              # double 0.11158899999999999
	.quad	0x3feaa43bb40b34e7              # double 0.83254799999999995
	.quad	0x3fc2713f077ccc03              # double 0.14408099999999999
	.quad	0x3fe1d22856605ee5              # double 0.55690399999999995
	.quad	0x3fec4be40420f6f1              # double 0.88426400000000005
	.quad	0x3fc7b9cf9a06a6e3              # double 0.18535799999999999
	.quad	0x3fd1dfc5cdd50a89              # double 0.279283
	.quad	0x3fe936523704790c              # double 0.78788100000000005
	.quad	0x3fe2c6bf01322f27              # double 0.58676099999999998
	.quad	0x3fe0121ab4b72c52              # double 0.50221000000000005
	.quad	0x3fec1a415f45e0b5              # double 0.87820500000000001
	.quad	0x3fd8619da9c99286              # double 0.38095800000000002
	.quad	0x3fd78954a7f8012e              # double 0.367757
	.quad	0x3fe9803ab862b27d              # double 0.79690300000000003
	.quad	0x3fa469f8c21e1d21              # double 0.039870999999999997
	.quad	0x3fe2bc4b09e98dce              # double 0.58548500000000003
	.quad	0x3fd291f70de8f6cf              # double 0.290159
	.quad	0x3fe993d96638433d              # double 0.79929799999999995
	.quad	0x3fee4c2b51bd61f6              # double 0.94679800000000003
	.quad	0x3fe6e4473cd57364              # double 0.71536599999999995
	.quad	0x3fdebc4d22c881e4              # double 0.48024299999999998
	.quad	0x3fd1f9a8cdea033e              # double 0.28086299999999997
	.quad	0x3feea8da7f3cf701              # double 0.95811199999999996
	.quad	0x3fe41cd5f99c38b0              # double 0.62851999999999997
	.quad	0x3fe1856605ee568a              # double 0.54753399999999997
	.quad	0x3fd22fdb8fde2ef5              # double 0.28417100000000001
	.quad	0x3fe3d7d5a9eb2075              # double 0.62009700000000001
	.quad	0x3fccb0fadf2ecf20              # double 0.22415099999999999
	.quad	0x3fd6ea91d9b1b79e              # double 0.35806700000000002
	.quad	0x3fc25614df8b1572              # double 0.14325199999999999
	.quad	0x3feca9dc725c3dee              # double 0.89573499999999995
	.quad	0x3fc748d3ae685db7              # double 0.18190999999999999
	.quad	0x3fcac6a3bddfca00              # double 0.20918700000000001
	.quad	0x3fd9438d1d8a5482              # double 0.39474799999999999
	.quad	0x3fe9b09203a322af              # double 0.80280399999999996
	.quad	0x3fef49d9d3458cd2              # double 0.977765
	.quad	0x3fe5770153bd1676              # double 0.67077699999999996
	.quad	0x3fe28945f9df548f              # double 0.57925700000000002
	.quad	0x3fc560fa15db3398              # double 0.167022
	.quad	0x3fecb69984a0e411              # double 0.89729000000000003
	.quad	0x3fe002f512663411              # double 0.50036099999999994
	.quad	0x3fdd9cb6848beb5b              # double 0.46268999999999999
	.quad	0x3fe9182235b4edb3              # double 0.784196
	.quad	0x3fd1819d2391d580              # double 0.273536
	.quad	0x3fef85a4f00ef135              # double 0.98506400000000005
	.quad	0x3fec0d6f544bb1af              # double 0.87663999999999997
	.quad	0x3fd5b8f57f737da6              # double 0.33941399999999999
	.quad	0x3feb40229a5ebb77              # double 0.85157899999999997
	.quad	0x3fd1831f03d145d8              # double 0.27362799999999998
	.quad	0x3fcbd1aa821f2991              # double 0.217336
	.quad	0x3fdce37585be1a82              # double 0.45138299999999998
	.quad	0x3fb4f345069a4df4              # double 0.081836999999999993
	.quad	0x3fb1e5d18090b418              # double 0.069913000000000003
	.quad	0x3fcaec7c957cd467              # double 0.210342
	.quad	0x3fea7483cafb3b75              # double 0.82672299999999999
	.quad	0x3fec5fc3b4f61672              # double 0.88668999999999998
	.quad	0x3fd29014b599aa61              # double 0.29004400000000002
	.quad	0x3fd2b27cbf6e3f79              # double 0.29214400000000001
	.quad	0x3fbe42bf9830e3ce              # double 0.11820600000000001
	.quad	0x3fd32a5a469d7343              # double 0.29946
	.quad	0x3fd949e01de26916              # double 0.39513399999999999
	.quad	0x3fc124851a869403              # double 0.13392699999999999
	.quad	0x3fe7f5ad96a6a012              # double 0.74873999999999996
	.quad	0x3fd10270f3882279              # double 0.26577400000000001
	.quad	0x3fdb39042d8c2a45              # double 0.42535499999999998
	.quad	0x3fd7904b3c3e74b0              # double 0.36818200000000001
	.quad	0x3fe242fc69728a61              # double 0.57067699999999999
	.quad	0x3fe1098915bdd767              # double 0.53241400000000005
	.quad	0x3fd02ba9d1f60179              # double 0.25266499999999997
	.quad	0x3fd608893b7d8490              # double 0.34427099999999999
	.quad	0x3febc970f7b9e061              # double 0.86834
	.quad	0x3fbe93d102bc72e2              # double 0.11944299999999999
	.quad	0x3feacc404a72ead9              # double 0.83743299999999998
	.quad	0x3fe1f25e56cd6c2f              # double 0.560836
	.quad	0x3faeee957470eb25              # double 0.060414000000000002
	.quad	0x3fecc3f3e0370cdd              # double 0.89892000000000005
	.quad	0x3fd41c1d6cf850df              # double 0.314216
	.quad	0x3fe3f8f25a250f84              # double 0.624139
	.quad	0x3fec698fe69270b0              # double 0.88788599999999995
	.quad	0x3feeda3e39f77293              # double 0.96414100000000002
	.quad	0x3fd1400b88ca3e7d              # double 0.269534
	.quad	0x3fe3bfe5c91d14e4              # double 0.61717500000000003
	.quad	0x3fe5776e6106ab15              # double 0.67082900000000001
	.quad	0x3fe8dddb1209edc0              # double 0.77708200000000005
	.quad	0x3fefd1f601797cc4              # double 0.99438000000000004
	.quad	0x3febc0f88333fc87              # double 0.86730600000000002
	.quad	0x3fe6f6e82949a565              # double 0.71763999999999994
	.quad	0x3fd622d948dc11e4              # double 0.34587699999999999
	.quad	0x3fee4178705425f2              # double 0.945492
	.quad	0x3fe18d8cb07d0aee              # double 0.54852900000000004
	.quad	0x3fdb33c60029f16b              # double 0.425035
	.quad	0x3fefe8a50507a6bd              # double 0.99714899999999995
	.quad	0x3fe463cb81733227              # double 0.63718200000000003
	.quad	0x3fe1753c579f2346              # double 0.54556099999999996
	.quad	0x3fead933e35c5b4b              # double 0.83901400000000004
	.quad	0x3fed1e603d577964              # double 0.90995800000000004
	.quad	0x3fb86887a8d64d7f              # double 0.095344999999999999
	.quad	0x3feb9dc2f405f6ba              # double 0.863008
	.quad	0x3fe3136c58eeae9f              # double 0.59612100000000001
	.quad	0x3fe265796bfca85d              # double 0.57488700000000004
	.quad	0x3fc5a73b42cc2d6b              # double 0.16916600000000001
	.quad	0x3fe49c3ac929aa1d              # double 0.64407099999999995
	.quad	0x3fd5d5629d8409e5              # double 0.34114899999999998
	.quad	0x3fef28fe260b2c84              # double 0.973754
	.quad	0x3fea299d883ba344              # double 0.81757999999999997
	.quad	0x3fec96b97fe8ee6c              # double 0.89339900000000005
	.quad	0x3fe0594d0dcfcc5c              # double 0.51090100000000005
	.quad	0x3fe5e978d4fdf3b6              # double 0.68474999999999997
	.quad	0x3fe3ea63b688bda9              # double 0.62236199999999997
	.quad	0x3fe607e38eb0318c              # double 0.68846300000000005
	.quad	0x3fdd21426fe718a8              # double 0.45515499999999998
	.quad	0x3fdb73b85e80bed7              # double 0.42893799999999999
	.quad	0x3fa1934efcbd5561              # double 0.034327000000000003
	.quad	0x3fe927631b584b1b              # double 0.78605800000000003
	.quad	0x3fd851c5c5718eb9              # double 0.37999100000000002
	.quad	0x3fbcf88333fc86cf              # double 0.113167
	.quad	0x3fc659210385c67e              # double 0.174595
	.quad	0x3fe89e279dd3bafe              # double 0.76930600000000005
	.quad	0x3fead66277c45cbc              # double 0.83867000000000002
	.quad	0x3fe8b2f23033a472              # double 0.77184399999999997
	.quad	0x3fedef0f16f4384c              # double 0.93543200000000004
	.quad	0x3fd7e49f51697f20              # double 0.37332900000000002
	.quad	0x3fdb3b4b2fa93af7              # double 0.42549399999999998
	.quad	0x3fd61ccd96206855              # double 0.34550799999999998
	.quad	0x3fe043f5f91600f3              # double 0.50829599999999997
	.quad	0x3fd01f4b1ee24357              # double 0.25191000000000002
	.quad	0x3fcbd53cddd6e04c              # double 0.217445
	.quad	0x3fb596744b2b777d              # double 0.084326999999999999
	.quad	0x3fbaaac1094a2b9d              # double 0.104168
	.quad	0x3fca0f55de58e64b              # double 0.203593
	.quad	0x3fe7b8c75c4a83b2              # double 0.74130600000000002
	.quad	0x3fe27cce1c58255b              # double 0.577735
	.quad	0x3fd91c0ca600b029              # double 0.39233699999999999
	.quad	0x3feebe7d1351159c              # double 0.96075299999999996
	.quad	0x3f9c7b890d5a5b96              # double 0.027814999999999999
	.quad	0x3fef421e1d2178f7              # double 0.97682100000000005
	.quad	0x3fe880a7c5ac471b              # double 0.76570499999999997
	.quad	0x3fef5c5f7c6759ab              # double 0.98002599999999995
	.quad	0x3fef7af42784a948              # double 0.98375900000000005
	.quad	0x3fdb101b003686a5              # double 0.42285800000000001
	.quad	0x3fe1665bea0ba1f5              # double 0.54374500000000003
	.quad	0x3fef7a7eb6bf444e              # double 0.98370299999999999
	.quad	0x3febc66f5019f3c7              # double 0.86797299999999999
	.quad	0x3fefb380cb6c7a7d              # double 0.99066200000000004
	.quad	0x3fd2ae536501e258              # double 0.29188999999999998
	.quad	0x3fc04302b40f66a5              # double 0.12704499999999999
	.quad	0x3fe2bc74fb549f95              # double 0.58550500000000005
	.quad	0x3fe00f94c87980f5              # double 0.50190199999999996
	.quad	0x3fe94b61fe21d96f              # double 0.79045200000000004
	.quad	0x3fe62e90364388ec              # double 0.69318400000000002
	.quad	0x3f80eed02cd39da1              # double 0.0082679999999999993
	.quad	0x3fedf1fff79c8430              # double 0.93579100000000004
	.quad	0x3fccb220791c4b90              # double 0.224186
	.quad	0x3fabac710cb295ea              # double 0.054050000000000001
	.quad	0x3fa6bc408d8ec95c              # double 0.044405
	.quad	0x3fe670435efa615b              # double 0.70120400000000005
	.quad	0x3feeb317efe0ce0c              # double 0.95936200000000004
	.quad	0x3fed96e58a32f449              # double 0.92466999999999999
	.quad	0x3f87b17ce52deca2              # double 0.011568999999999999
	.quad	0x3fd46eb0b7c3504c              # double 0.31925599999999998
	.quad	0x3fe8365a9a804966              # double 0.75663499999999995
	.quad	0x3fd7ff21b3aeee95              # double 0.37494699999999997
	.quad	0x3fd99db22d0e5604              # double 0.40024999999999999
	.quad	0x3fe6c2c7fbacb429              # double 0.71127700000000005
	.quad	0x3fe0b94d94078961              # double 0.52261999999999997
	.quad	0x3fd824a276b7ed42              # double 0.37723600000000002
	.quad	0x3fed42edbb59ddc2              # double 0.91442000000000001
	.quad	0x3fe20880d801b435              # double 0.56353799999999998
	.quad	0x3fb9f633ce63a5c2              # double 0.101413
	.quad	0x3fd782517e77d524              # double 0.36732900000000002
	.quad	0x3fd3e99e94ab1d50              # double 0.31113400000000002
	.quad	0x3fe4791600f34507              # double 0.63978100000000004
	.quad	0x3fe173647baa9b4a              # double 0.54533600000000004
	.quad	0x3fe2f55de58e64b2              # double 0.59245199999999998
	.quad	0x3fce9680e0653006              # double 0.23896800000000001
	.quad	0x3fe5a5918a009f62              # double 0.67646099999999998
	.quad	0x3fd3e4649906cca3              # double 0.31081500000000001
	.quad	0x3f895e5aff2a172b              # double 0.012387
	.quad	0x3fd0c93a71151612              # double 0.26228200000000002
	.quad	0x3fc091105e1c1509              # double 0.12942699999999999
	.quad	0x3fe22339c0ebedfa              # double 0.56679999999999997
	.quad	0x3fcab6ae7d566cf4              # double 0.2087
	.quad	0x3fb1a133c1ce6c09              # double 0.068865999999999997
	.quad	0x3fd238ac18f81e8a              # double 0.28470899999999999
	.quad	0x3fe4c7304039abf3              # double 0.64931499999999998
	.quad	0x3fba85b9e8c47a18              # double 0.103603
	.quad	0x3fb5d35653c9abb0              # double 0.085255999999999998
	.quad	0x3fea05681ecd4aa1              # double 0.81315999999999999
	.quad	0x3fef3c6a7ef9db23              # double 0.97612500000000002
	.quad	0x3fe19b2e59af9ebf              # double 0.55019300000000004
	.quad	0x3fd9e0a41a261bf3              # double 0.40433599999999997
	.quad	0x3fd679d0a67620ef              # double 0.35118500000000002
	.quad	0x3fe6ab7baecd0785              # double 0.70843299999999998
	.quad	0x3fe8b32f01754b06              # double 0.77187300000000003
	.quad	0x3fce2eec7c957cd4              # double 0.23580699999999999
	.quad	0x3fe24f9c1f85d745              # double 0.572218
	.quad	0x3fe3c866a11ec919              # double 0.61821300000000001
	.quad	0x3f9f901083dbc233              # double 0.030823
	.quad	0x3fe1dcb790fb6567              # double 0.55819300000000005
	.quad	0x3fed533f42352eb6              # double 0.916412
	.quad	0x3fe1b11622813448              # double 0.552867
	.quad	0x3fe652c7b890d5a6              # double 0.69760500000000003
	.quad	0x3fe947da1ec4e725              # double 0.79002099999999997
	.quad	0x3fc8baa582dbe7f3              # double 0.19319600000000001
	.quad	0x3fe2d6de33269df9              # double 0.58872899999999995
	.quad	0x3fb74dad31fcd24e              # double 0.091028999999999998
	.quad	0x3fb40010c6f7a0b6              # double 0.078126000000000001
	.quad	0x3fe271758e219653              # double 0.57635000000000003
	.quad	0x3fd050331e3a7daa              # double 0.25489499999999998
	.quad	0x3fd10d49949e8816              # double 0.26643600000000001
	.quad	0x3faf746887a8d64d              # double 0.061434999999999997
	.quad	0x3fcc8fd9fd36f7e4              # double 0.22314000000000001
	.quad	0x3fe3bcba30121683              # double 0.616788
	.quad	0x3fec61b4bb5e0f80              # double 0.88692700000000002
	.quad	0x3fe832745bf26f1e              # double 0.75615900000000003
	.quad	0x3fe51800a7c5ac47              # double 0.65917999999999999
	.quad	0x3fd65cfede97d06c              # double 0.34942600000000001
	.quad	0x3fd5c69f8c21e1d2              # double 0.34024799999999999
	.quad	0x3fe0da3c21187e7c              # double 0.52664
	.quad	0x3fd2423d9231c64c              # double 0.28529300000000002
	.quad	0x3fe1b60f1b25f634              # double 0.55347400000000002
	.quad	0x3fd8050374ff865d              # double 0.37530599999999997
	.quad	0x3fc9fce3150dae3e              # double 0.20302999999999999
	.quad	0x3fe407075b3e1438              # double 0.62585800000000003
	.quad	0x3fd924b33daf8df8              # double 0.39286500000000002
	.quad	0x3f6f16b11c6d1e11              # double 0.0037950000000000002
	.quad	0x3faa502eec7c957d              # double 0.051393000000000001
	.quad	0x3fe6298eda22f6a5              # double 0.69257299999999999
	.quad	0x3fee6a78af3e468d              # double 0.95049700000000004
	.quad	0x3fe345cfede97d07              # double 0.60227200000000003
	.quad	0x3fe50e0221426fe7              # double 0.65795999999999999
	.quad	0x3fea9db22d0e5604              # double 0.83174999999999998
	.quad	0x3fe33b01c92ddbdb              # double 0.60095299999999996
	.quad	0x3fd9a437824d4cba              # double 0.400648
	.quad	0x3fd02ef911cf355d              # double 0.25286700000000001
	.quad	0x3fcdf0995aaf78ff              # double 0.233905
	.quad	0x3fea2f0bf1a5ca2a              # double 0.81824300000000005
	.quad	0x3fc6f5f4e4430b18              # double 0.17938100000000001
	.quad	0x3fc20d90e23af31b              # double 0.141039
	.quad	0x3feed451fc4c1659              # double 0.96341799999999999
	.quad	0x3febc6c54bcf0b6b              # double 0.86801399999999995
	.quad	0x3fe57f327aa68f4b              # double 0.67177699999999996
	.quad	0x3fce73b42cc2d6aa              # double 0.23790600000000001
	.quad	0x3fda970f7b9e0610              # double 0.41547000000000001
	.quad	0x3fedca46e08f2171              # double 0.93094200000000005
	.quad	0x3fe08642396073de              # double 0.51638899999999999
	.quad	0x3fb87b139c94f69d              # double 0.095628000000000005
	.quad	0x3fea9b068123810f              # double 0.83142400000000005
	.quad	0x3fe5c2699c7bcc29              # double 0.67998199999999998
	.quad	0x3fd3faf859429175              # double 0.312193
	.quad	0x3fe9388ca3e7d135              # double 0.78815299999999999
	.quad	0x3fe5f080303c07ee              # double 0.685608
	.quad	0x3f849e8815e39714              # double 0.010068000000000001
	.quad	0x3fd84b51372a38b9              # double 0.37959700000000002
	.quad	0x3fdfc6e6d9be4cd7              # double 0.49651499999999998
	.quad	0x3fc4cfaeff5c6c12              # double 0.16258800000000001
	.quad	0x3fd1b945308bb906              # double 0.27693299999999998
	.quad	0x3fe3fd32c625e99f              # double 0.62465800000000005
	.quad	0x3fe657646ae3a3a9              # double 0.69816800000000001
	.quad	0x3fe1c0f66a550870              # double 0.55480499999999999
	.quad	0x3fd2027d88c1db01              # double 0.28140199999999999
	.quad	0x3fcba46173b85e81              # double 0.21595400000000001
	.quad	0x3fdffceb78897e99              # double 0.49981199999999998
	.quad	0x3fcc085b18548a9c              # double 0.21900500000000001
	.quad	0x3fed5c011d3671ac              # double 0.91748099999999999
	.quad	0x3fd63e74afd54541              # double 0.34756199999999998
	.quad	0x3fb3b5286b59146e              # double 0.076982999999999995
	.quad	0x3fedf31b152f3c2e              # double 0.93592600000000004
	.quad	0x3fcd3d3a1d323fee              # double 0.228431
	.quad	0x3feaf735c182ecaf              # double 0.84267700000000001
	.quad	0x3fbd3c46d82ba5a0              # double 0.114201
	.quad	0x3fc4f9b13165d399              # double 0.16386999999999999
	.quad	0x3fa07cc7d1bb4917              # double 0.032202000000000001
	.quad	0x3fb5fafc8b0079a3              # double 0.085861000000000007
	.quad	0x3fe2009b30728e93              # double 0.56257400000000002
	.quad	0x3fd6e25c810a569b              # double 0.35756599999999999
	.quad	0x3fe30e3476295209              # double 0.59548400000000001
	.quad	0x3fc9d7d3910c2c5e              # double 0.201899
	.quad	0x3fbe91212513b5bf              # double 0.11940199999999999
	.quad	0x3fc55cbff47735c2              # double 0.16689300000000001
	.quad	0x3fe0ec7eae5bc87e              # double 0.52886900000000003
	.quad	0x3fc65b0ff10ecb75              # double 0.174654
	.quad	0x3fe900b45ae5ffa4              # double 0.78133600000000003
	.quad	0x3fd8048e043a2164              # double 0.375278
	.quad	0x3fab6f5caf2d7f95              # double 0.053584
	.quad	0x3feb9da7b0b39192              # double 0.86299499999999996
	.quad	0x3fe87d6f97679032              # double 0.76531199999999999
	.quad	0x3f9e0b0af5fd47bf              # double 0.029339
	.quad	0x3fd8008e9b38d60a              # double 0.37503399999999998
	.quad	0x3fd8e1ef73c0c1fd              # double 0.38879000000000002
	.quad	0x3fcabc8c0ce91c8f              # double 0.20887900000000001
	.quad	0x3fe8771001d5c316              # double 0.76453400000000005
	.quad	0x3fb70b9dc2f405f7              # double 0.090021000000000004
	.quad	0x3feb4176577531db              # double 0.85174099999999997
	.quad	0x3fbd798d8a979e17              # double 0.115136
	.quad	0x3fee3d4280ae1049              # double 0.94497799999999998
	.quad	0x3fecbca1059ea572              # double 0.89802599999999999
	.quad	0x3fcf2b3cc4ac6cdb              # double 0.243507
	.quad	0x3fe4438d1d8a5482              # double 0.63324599999999998
	.quad	0x3fe28259e1f3a57f              # double 0.57841200000000004
	.quad	0x3fc68919ef954eb1              # double 0.17605899999999999
	.quad	0x3fc3c4c9c90c4dec              # double 0.154443
	.quad	0x3fe30e820e629952              # double 0.59552099999999997
	.quad	0x3fea5eb313be22e6              # double 0.82406000000000001
	.quad	0x3fe9bbe878fabda1              # double 0.80418800000000001
	.quad	0x3fd53f316e371540              # double 0.331982
	.quad	0x3fe4fbb0e5e67946              # double 0.65572399999999997
	.quad	0x3fdbba30121682f9              # double 0.43323899999999999
	.quad	0x3fd7c6327ed84d34              # double 0.37147200000000002
	.quad	0x3feca2d0e5604189              # double 0.89487499999999998
	.quad	0x3fe7b417ca2120e2              # double 0.740734
	.quad	0x3fdb87e38eb0318c              # double 0.43016900000000002
	.quad	0x3fecbe468cac4b4d              # double 0.898227
	.quad	0x3fd9c74fb549f948              # double 0.40278999999999998
	.quad	0x3fe812b5e529bae4              # double 0.75228399999999995
	.quad	0x3fec41ebc83a96d5              # double 0.88304700000000003
	.quad	0x3fef3daf8df7a4e8              # double 0.97628000000000003
	.quad	0x3fe85e2cdc011d36              # double 0.76149599999999995
	.quad	0x3fe14a9ac36544fe              # double 0.54035699999999998
	.quad	0x3fe86f7a0b5ed8d3              # double 0.76360799999999995
	.quad	0x3fb0a5bd944aa540              # double 0.065029000000000003
	.quad	0x3fec5dbb9cf9a06a              # double 0.88644199999999995
	.quad	0x3fea597f62b6ae7d              # double 0.82342499999999996
	.quad	0x3fe64a1059ea5721              # double 0.69654099999999997
	.quad	0x3fe3d8eeae9ee45c              # double 0.62023099999999998
	.quad	0x3fd0b0142f61ed5b              # double 0.26074700000000001
	.quad	0x3fe2e1672324c836              # double 0.59001499999999996
	.quad	0x3fda347a5b0ff10f              # double 0.40945300000000001
	.quad	0x3fe0a41a261bf37c              # double 0.52003200000000005
	.quad	0x3fd56c93a7115161              # double 0.33475199999999999
	.quad	0x3fdf04189374bc6a              # double 0.48462499999999997
	.quad	0x3fbae297396d0918              # double 0.10502
	.quad	0x3fed66f5019f3c71              # double 0.91881800000000002
	.quad	0x3fe61cffeb074a77              # double 0.69103999999999999
	.quad	0x3fe4cd3e0bd44999              # double 0.65005400000000002
	.quad	0x3fb0bd44998d0460              # double 0.065388000000000002
	.quad	0x3fe1369db65ecc3e              # double 0.53791699999999998
	.quad	0x3fe5425072085b18              # double 0.66434499999999996
	.quad	0x3fc62f48c2e770bd              # double 0.173318
	.quad	0x3fe31235f8099179              # double 0.59597299999999997
	.quad	0x3fce674080f98fa3              # double 0.23752599999999999
	.quad	0x3fedcae429e0a41a              # double 0.93101699999999998
	.quad	0x3fe4eec5b078d930              # double 0.65414700000000003
	.quad	0x3fc58db48909289e              # double 0.16838700000000001
	.quad	0x3fe65ef1fddebd90              # double 0.69908999999999999
	.quad	0x3fd95529fe004b7f              # double 0.39582299999999998
	.quad	0x3fdcedc7ef177a70              # double 0.452013
	.quad	0x3fd3bbe0157eed46              # double 0.308342
	.quad	0x3fd59ee02a77a2cf              # double 0.33782200000000001
	.quad	0x3fedf55ffe6d58c9              # double 0.93620300000000001
	.quad	0x3fef6618ce2d1f1d              # double 0.981213
	.quad	0x3feddcc426351def              # double 0.933199
	.quad	0x3febf46887a8d64d              # double 0.87358499999999994
	.quad	0x3f9dca4b124d099e              # double 0.029092
	.quad	0x3fdf942d490e66cb              # double 0.493419
	.quad	0x3fb86583e8576cce              # double 0.095298999999999994
	.quad	0x3fe61c9d5a187a4a              # double 0.69099299999999997
	.quad	0x3faec8f75536933a              # double 0.060127
	.quad	0x3fd844cbe1eb4203              # double 0.37919900000000001
	.quad	0x3fb77b7c7820a30e              # double 0.091728000000000003
	.quad	0x3fbb52fc2656abde              # double 0.106735
	.quad	0x3fb561b2a27f1b69              # double 0.083521999999999999
	.quad	0x3fed007dd4413554              # double 0.90630999999999994
	.quad	0x3fdda84be40420f7              # double 0.463397
	.quad	0x3fe377ea1c68ec53              # double 0.60838800000000004
	.quad	0x3fe04dee34fc610f              # double 0.50951299999999999
	.quad	0x3fe40789613d31ba              # double 0.62592000000000003
	.quad	0x3fe3083fd5022574              # double 0.59475699999999998
	.quad	0x3fe15712a0ec7432              # double 0.541879
	.quad	0x3fe2961a1db877ab              # double 0.58082299999999998
	.quad	0x3fe10ed80a17b0f7              # double 0.53306200000000004
	.quad	0x3fd6790b84988095              # double 0.35113800000000001
	.quad	0x3fc13005814940bc              # double 0.13427800000000001
	.quad	0x3fc0ce789e774eec              # double 0.131301
	.quad	0x3fe1a5332acfb763              # double 0.55141600000000002
	.quad	0x3fe4eefe4ffc9796              # double 0.65417400000000003
	.quad	0x3fe51f36262cba73              # double 0.66005999999999998
	.quad	0x3fc7bd7b2031ceaf              # double 0.18547
	.quad	0x3fd3b60ae9680e06              # double 0.30798599999999998
	.quad	0x3fedf60e0eb67c28              # double 0.93628599999999995
	.quad	0x3fee3ac710cb295f              # double 0.94467500000000004
	.quad	0x3fe75debd9018e75              # double 0.73021499999999995
	.quad	0x3fead375c8d9f905              # double 0.83831299999999997
	.quad	0x3fd1f4f93bc0a06f              # double 0.28057700000000002
	.quad	0x3fc37e889c1b5419              # double 0.15229899999999999
	.quad	0x3fb1f394b7b28955              # double 0.070123000000000005
	.quad	0x3fd50a7829068987              # double 0.328764
	.quad	0x3fe95cd4ed2cbea5              # double 0.79258200000000001
	.quad	0x3fe9275ee99a62ed              # double 0.78605599999999998
	.quad	0x3fd13f5b5fa22707              # double 0.26949200000000001
	.quad	0x3fed2fd32c625e9a              # double 0.91208800000000001
	.quad	0x3fe05a09cc319c5a              # double 0.51099099999999997
	.quad	0x3f86d3b6cbd987c6              # double 0.011146
	.quad	0x3fc6bbfd71b04684              # double 0.17761199999999999
	.quad	0x3fea489d27c39368              # double 0.82136399999999998
	.quad	0x3fe4eef5ec80c73b              # double 0.65417000000000003
	.quad	0x3fe92cb4289118c2              # double 0.78670700000000005
	.quad	0x3fd87caa7589efd8              # double 0.38260899999999998
	.quad	0x3fee7342edbb59de              # double 0.95157000000000003
	.quad	0x3fe2fa4e7ab75643              # double 0.593055
	.quad	0x3fe4f041461b6d44              # double 0.65432800000000002
	.quad	0x3fce1c79b34a44c8              # double 0.23524400000000001
	.quad	0x3feaa57a786c2268              # double 0.8327
	.quad	0x3febad8e432441ff              # double 0.86493600000000004
	.quad	0x3fed9aeb3dd11be7              # double 0.92516100000000001
	.quad	0x3fe210fb65668c26              # double 0.56457299999999999
	.quad	0x3fe72ed783dff3f1              # double 0.724468
	.quad	0x3fd072b884406c01              # double 0.25700200000000001
	.quad	0x3fda26bf8769ec2d              # double 0.40861500000000001
	.quad	0x3fd8091c087442c8              # double 0.375556
	.quad	0x3fd984f4c6e6d9be              # double 0.39873999999999998
	.quad	0x3fd0ef73c0c1fc8f              # double 0.26461499999999999
	.quad	0x3fe0323571d1d474              # double 0.50612900000000005
	.quad	0x3fe16d1394317acc              # double 0.54456499999999997
	.quad	0x3fe1c384ba0e8427              # double 0.55511699999999997
	.quad	0x3feab2ebe596c82e              # double 0.834341
	.quad	0x3fcb84d338f79852              # double 0.21499099999999999
	.quad	0x3f913404ea4a8c15              # double 0.016799999999999999
	.quad	0x3fb1a6f826edaa93              # double 0.068954000000000001
	.quad	0x3fed472c0e7bc3c6              # double 0.91493800000000003
	.quad	0x3fe80fc504816f00              # double 0.75192499999999995
	.quad	0x3fc7022dd7a99fa1              # double 0.179754
	.quad	0x3fedec7c957cd467              # double 0.935118
	.quad	0x3fe9db5d894812be              # double 0.80802799999999997
	.quad	0x3fe5abb8800eae19              # double 0.67721200000000004
	.quad	0x3fa20be5109070fc              # double 0.035247000000000001
	.quad	0x3feb016f0068db8c              # double 0.84392500000000003
	.quad	0x3fda6ed245b291b8              # double 0.41301399999999999
	.quad	0x3fe3178b3700474e              # double 0.59662400000000004
	.quad	0x3fe5b64e054690de              # double 0.678504
	.quad	0x3fe85308bb906467              # double 0.76013600000000003
	.quad	0x3fe866e008e9b38d              # double 0.76255799999999996
	.quad	0x3fee1dd5d3dc8b87              # double 0.94114200000000003
	.quad	0x3faf0bd017dae819              # double 0.060637000000000003
	.quad	0x3fc41700cd855971              # double 0.15695200000000001
	.quad	0x3fd311fd5885d313              # double 0.29797299999999999
	.quad	0x3fe100346dc5d639              # double 0.53127500000000005
	.quad	0x3fed8b60f1b25f63              # double 0.92326399999999997
	.quad	0x3fe3a73b42cc2d6b              # double 0.61416400000000004
	.quad	0x3fe82fb5d031055c              # double 0.75582400000000005
	.quad	0x3fc5a3db3bfb58d1              # double 0.16906299999999999
	.quad	0x3fc9078d92fb19e7              # double 0.19554299999999999
	.quad	0x3fe4b0c67168f8e8              # double 0.64657900000000001
	.quad	0x3fd0988d2a1f8e3b              # double 0.25931100000000001
	.quad	0x3fe831fcd24e160e              # double 0.75610200000000005
	.quad	0x3fefad794a6eb91b              # double 0.98992599999999997
	.quad	0x3fe7ebbdbe3c1052              # double 0.74752700000000005
	.quad	0x3fef1422ccb3a259              # double 0.97120799999999996
	.quad	0x3fd7a7a41e57d9dc              # double 0.36960700000000002
	.quad	0x3f7a1cac083126e9              # double 0.0063749999999999996
	.quad	0x3fd0434e3369b9d8              # double 0.254108
	.quad	0x3fef2b8c75c4a83b              # double 0.97406599999999998
	.quad	0x3fe1afad6cb53501              # double 0.55269500000000005
	.quad	0x3fef1f2fdb8fde2f              # double 0.972557
	.quad	0x3fdcde54b48d3ae7              # double 0.45107000000000003
	.quad	0x3f89c842fa509396              # double 0.012588999999999999
	.quad	0x3fcfe481f53825e1              # double 0.24916099999999999
	.quad	0x3fdbebd09e12a51e              # double 0.43626799999999999
	.quad	0x3fee2d14a0a0f4d8              # double 0.94300300000000003
	.quad	0x3fd37d45a5fc7e6b              # double 0.30452099999999999
	.quad	0x3fc69de8b3b32053              # double 0.17669399999999999
	.quad	0x3fe701344806290f              # double 0.71889700000000001
	.quad	0x3fd6bbbe878fabda              # double 0.355209
	.quad	0x3fe0e46cfc829cfe              # double 0.52788400000000002
	.quad	0x3feaa0620ab71327              # double 0.83207799999999998
	.quad	0x3fd7c4ac6cdaf4ae              # double 0.37137900000000001
	.quad	0x3fddac14c660a201              # double 0.46362799999999998
	.quad	0x3fe88fa58f7121ab              # double 0.76753499999999997
	.quad	0x3fedaa5614df8b15              # double 0.92704299999999995
	.quad	0x3fb5084e831ad213              # double 0.082157999999999995
	.quad	0x3fda6c2699c7bcc3              # double 0.41285100000000002
	.quad	0x3fea2322af577100              # double 0.81678899999999999
	.quad	0x3fe73cfd4bf0995b              # double 0.72619500000000003
	.quad	0x3fe5a7ac81d3aa37              # double 0.67671800000000004
	.quad	0x3fe631183b60285f              # double 0.69349300000000003
	.quad	0x3fe6b8583621fafd              # double 0.71000300000000005
	.quad	0x3fd144fe36d22425              # double 0.26983600000000002
	.quad	0x3fdeeb463497b741              # double 0.48310999999999998
	.quad	0x3fee571b0468448d              # double 0.948133
	.quad	0x3fc54280ae104923              # double 0.16609199999999999
	.quad	0x3fef49a5657fb69a              # double 0.97774000000000005
	.quad	0x3fd114ad362e9036              # double 0.26688699999999999
	.quad	0x3fe629cfdd228566              # double 0.692604
	.quad	0x3fb70ef566490a35              # double 0.090071999999999999
	.quad	0x3fe072f33ca31e7e              # double 0.51403200000000004
	.quad	0x3fc7ccf28c79f666              # double 0.185942
	.quad	0x3fe86c4e7253da73              # double 0.76322100000000004
	.quad	0x3fe47bd6a593a2e0              # double 0.64011700000000005
	.quad	0x3fd01dc0db2702a3              # double 0.25181599999999998
	.quad	0x3fe0d36d655e28aa              # double 0.52580899999999997
	.quad	0x3feee50c5eb313be              # double 0.96545999999999998
	.quad	0x3fe9a39e6ab9b23e              # double 0.80122300000000002
	.quad	0x3fe4eca46e08f217              # double 0.653887
	.quad	0x3fd58244e93e1c9b              # double 0.33607599999999999
	.quad	0x3f82ef0ae536501e              # double 0.0092449999999999997
	.quad	0x3fe046bf01322f27              # double 0.50863599999999998
	.quad	0x3fed9f4b1ee24357              # double 0.92569500000000005
	.quad	0x3fe70637bd05af6c              # double 0.71950899999999995
	.quad	0x3fd71cb039ef0f17              # double 0.361126
	.quad	0x3fe3e00f345069a5              # double 0.62110100000000001
	.quad	0x3fbc5803cd141a69              # double 0.110718
	.quad	0x3fbadc5d63886595              # double 0.104925
	.quad	0x3fd3176ddaceee0f              # double 0.29830499999999999
	.quad	0x3fda2f661f18c9fb              # double 0.40914299999999998
	.quad	0x3fde10be9424e593              # double 0.46977200000000002
	.quad	0x3fef727136a400fc              # double 0.98272000000000003
	.quad	0x3fee3868fd199bb2              # double 0.94438599999999995
	.quad	0x3fe0aab474107315              # double 0.52083800000000002
	.quad	0x3febac42e9899bf6              # double 0.86477800000000005
	.quad	0x3fe53d9cae21101b              # double 0.663771
	.quad	0x3fc0f3882278d0cc              # double 0.13243199999999999
	.quad	0x3fe5f3e89a88ace2              # double 0.68602399999999997
	.quad	0x3fb6cd184c271fff              # double 0.089066999999999993
	.quad	0x3feb0409e55c0fcb              # double 0.84424299999999997
	.quad	0x3fc2c471b4784231              # double 0.14662
	.quad	0x3fdb610adcd2d44e              # double 0.42779800000000001
	.quad	0x3fee03f0bae89eba              # double 0.93798099999999995
	.quad	0x3fe9504c48adeebb              # double 0.79105199999999998
	.quad	0x3fe5955f78359bc3              # double 0.67448399999999997
	.quad	0x3fe424b5568e820e              # double 0.62948099999999996
	.quad	0x3fe6f28848387df6              # double 0.71710600000000002
	.quad	0x3fda19ac79702e66              # double 0.40781699999999999
	.quad	0x3fededa661283904              # double 0.93525999999999998
	.quad	0x3feea979e16d6dc2              # double 0.95818800000000004
	.quad	0x3fe9c36976bc1f00              # double 0.80510400000000004
	.quad	0x3fed9884c6a3bde0              # double 0.92486800000000002
	.quad	0x3fe273eee5258927              # double 0.57665200000000005
	.quad	0x3fea290eed02cd3a              # double 0.81751200000000002
	.quad	0x3fbb1a08bfc2224f              # double 0.105866
	.quad	0x3feaad9274e22a2c              # double 0.83368799999999998
	.quad	0x3fec1d1d4738a3b5              # double 0.87855399999999995
	.quad	0x3fec846412cf0f9d              # double 0.89116099999999998
	.quad	0x3fe88485a0be5109              # double 0.766177
	.quad	0x3fe58724b76f6d76              # double 0.67274699999999998
	.quad	0x3fe24cad57bc7f78              # double 0.57186000000000003
	.quad	0x3fed74f2f123c42a              # double 0.92052599999999996
	.quad	0x3fd24113c68661ae              # double 0.28522199999999998
	.quad	0x3fec1cb252ce032e              # double 0.87850300000000003
	.quad	0x3fbd744f5d35653d              # double 0.11505600000000001
	.quad	0x3fe266256366d7a5              # double 0.57496899999999995
	.quad	0x3fccabc5154866a1              # double 0.223992
	.quad	0x3fe1ef5a964e8b7e              # double 0.56046799999999997
	.quad	0x3feaa21a719b4dcf              # double 0.83228800000000003
	.quad	0x3feecc22ee41919b              # double 0.96241900000000002
	.quad	0x3fd4a133c1ce6c09              # double 0.32233899999999999
	.quad	0x3f9f401c4fc1df33              # double 0.030518
	.quad	0x3fefb914f483cafb              # double 0.99134299999999997
	.quad	0x3fef2c386d2ed784              # double 0.97414800000000001
	.quad	0x3fe8f544bb1af3a1              # double 0.77993999999999997
	.quad	0x3fea338d60a63305              # double 0.81879299999999999
	.quad	0x3fba69df97aaac11              # double 0.10317800000000001
	.quad	0x3fd6f73c0c1fc8f3              # double 0.35883999999999999
	.quad	0x3fed9858bc59b802              # double 0.92484699999999997
	.quad	0x3fec16638433d6c7              # double 0.87773299999999999
	.quad	0x3fd7abe27179bfdf              # double 0.36986599999999997
	.quad	0x3fe48e66cb10342b              # double 0.64238300000000004
	.quad	0x3fe0f1758e219653              # double 0.52947500000000003
	.quad	0x3fc1c0f451761459              # double 0.13870099999999999
	.quad	0x3fe26cacd184c272              # double 0.575766
	.quad	0x3fee1a2c669057d1              # double 0.94069499999999995
	.quad	0x3fd5923a29c779a7              # double 0.33705000000000002
	.quad	0x3fe81a176ddaceee              # double 0.75318499999999999
	.quad	0x3fdf8476f2a5a46a              # double 0.49246000000000001
	.quad	0x3fe2be5b8561d430              # double 0.58573699999999995
	.quad	0x3fcd80baa582dbe8              # double 0.230491
	.quad	0x3fe0bddfc9ff92f3              # double 0.52317800000000003
	.quad	0x3fe3874c8ffb8b26              # double 0.61026599999999998
	.quad	0x3fc22e770bd017db              # double 0.142043
	.quad	0x3fec51958969a0ae              # double 0.88495900000000005
	.quad	0x3f9cc1871e6cd291              # double 0.028081999999999999
	.quad	0x3fc3fb15b573eab3              # double 0.15609999999999999
	.quad	0x3fefdf202107b784              # double 0.99598699999999995
	.quad	0x3fe7f42fe82517e7              # double 0.74855799999999995
	.quad	0x3fe2f88b9778572a              # double 0.59284000000000003
	.quad	0x3fe21930be0ded29              # double 0.56557500000000005
	.quad	0x3fd899bf5946c333              # double 0.384384
	.quad	0x3fc0db0574b40703              # double 0.131684
	.quad	0x3fcee94680171194              # double 0.24149399999999999
	.quad	0x3fdc810624dd2f1b              # double 0.44537500000000002
	.quad	0x3fdd8116ebd4cfd1              # double 0.46100400000000002
	.quad	0x3fea102363b25700              # double 0.81447000000000003
	.quad	0x3fe951fe64f54d1f              # double 0.79125900000000005
	.quad	0x3fed96b97fe8ee6c              # double 0.92464900000000005
	.quad	0x3fe421682f944242              # double 0.62907800000000003
	.quad	0x3fd2bf8fcd67fd3f              # double 0.29294199999999998
	.quad	0x3fe1b89d6adf71eb              # double 0.553786
	.quad	0x3fe9d83e8576cce6              # double 0.807647
	.quad	0x3fb11cc100e6afcd              # double 0.066845000000000002
	.quad	0x3fe541f644955b46              # double 0.66430199999999995
	.quad	0x3fee959c49774257              # double 0.95576300000000003
	.quad	0x3fcc7cc7d1bb4917              # double 0.22255800000000001
	.quad	0x3fd8e9707182235b              # double 0.38924799999999998
	.quad	0x3fd05b5b70691ea8              # double 0.25557600000000003
	.quad	0x3fe6a278d0cc35ce              # double 0.70733299999999999
	.quad	0x3fdf8c5436b8f9b1              # double 0.49293999999999999
	.quad	0x3fdf972cd7cf5f4e              # double 0.49360199999999999
	.quad	0x3fe481344806290f              # double 0.64077200000000001
	.quad	0x3fd25f88fc9363f5              # double 0.28708099999999998
	.quad	0x3fed169e3c968944              # double 0.90901100000000001
	.quad	0x3fca3201040bfe3b              # double 0.204651
	.quad	0x3fee117d6b65a9a8              # double 0.93963499999999999
	.quad	0x3fe84f0b6b6e0d24              # double 0.75964900000000001
	.quad	0x3fd753f7ced91687              # double 0.36449999999999999
	.quad	0x3fcfb549f94855da              # double 0.24772
	.quad	0x3feec371da37ef5b              # double 0.96135800000000004
	.quad	0x3fe806fef7c243dd              # double 0.75085400000000002
	.quad	0x3fd9795f676ea423              # double 0.39803300000000003
	.quad	0x3fd1faacd9e83e42              # double 0.28092499999999998
	.quad	0x3fe10e66cb10342b              # double 0.53300800000000004
	.quad	0x3fe6a3465625a683              # double 0.70743100000000003
	.quad	0x3fe03e4473cd5736              # double 0.50760099999999997
	.quad	0x3fe3b213e3e29308              # double 0.61548800000000004
	.quad	0x3fe336134ce3de61              # double 0.60035099999999997
	.quad	0x3fd4649d388a8b09              # double 0.31864100000000001
	.quad	0x3f78e53eb399f5e0              # double 0.0060780000000000001
	.quad	0x3fe26eeb702602c9              # double 0.57604
	.quad	0x3fe4de1c15097c81              # double 0.65211300000000005
	.quad	0x3fdc677b395c4220              # double 0.44381599999999999
	.quad	0x3fe6067ad8e43244              # double 0.68829099999999999
	.quad	0x3fea9ac79702e664              # double 0.83139399999999996
	.quad	0x3fe3ea960b6f9fcb              # double 0.62238599999999999
	.quad	0x3fd3e6ab9b23dd55              # double 0.31095400000000001
	.quad	0x3fccaa8eb463497b              # double 0.22395499999999999
	.quad	0x3fd0c521dda059a7              # double 0.26203199999999999
	.quad	0x3fe944c37e6f71a8              # double 0.78964400000000001
	.quad	0x3fc5284167a95c85              # double 0.16529099999999999
	.quad	0x3fe741bb8c32a8ca              # double 0.72677400000000003
	.quad	0x3fb113836a832b99              # double 0.066703999999999999
	.quad	0x3fe3b1af3a14cec4              # double 0.61543999999999999
	.quad	0x3fddd17c5ef62f9d              # double 0.46591100000000002
	.quad	0x3fc703f2d3c792d1              # double 0.179808
	.quad	0x3fea1c15097c8084              # double 0.81592799999999998
	.quad	0x3fef8fd7e45803cd              # double 0.98630899999999999
	.quad	0x3fe473a9b0681238              # double 0.63911899999999999
	.quad	0x3fae8986fcdee350              # double 0.059643000000000002
	.quad	0x3fde353f7ced9168              # double 0.47199999999999998
	.quad	0x3feae4a7b4e54f7b              # double 0.84041200000000005
	.quad	0x3fd84d8ba40d90e2              # double 0.37973299999999999
	.quad	0x3fe570cfe154434e              # double 0.67002099999999998
	.quad	0x3fea5ac8a3726070              # double 0.82358200000000004
	.quad	0x3fd0b47c73eee526              # double 0.26101600000000003
	.quad	0x3fb17518b0d0edc4              # double 0.068193000000000004
	.quad	0x3fd5c382a12f9011              # double 0.34005800000000003
	.quad	0x3fe1d41743e963dc              # double 0.55713999999999997
	.quad	0x3fe186f47b677f6b              # double 0.54772399999999999
	.quad	0x3fe25b65ecc3e319              # double 0.57365699999999997
	.quad	0x3f965a14488c60cc              # double 0.021828
	.quad	0x3fcf652bd3c36113              # double 0.24527499999999999
	.quad	0x3f35c209246bf013              # double 3.3199999999999999E-4
	.quad	0x3feb3c48f10a99b7              # double 0.851109
	.quad	0x3fe0ba81dc0db270              # double 0.52276699999999998
	.quad	0x3fb563ed0f627393              # double 0.083556000000000005
	.quad	0x3fd48bda9435ac8a              # double 0.32103599999999999
	.quad	0x3fe2dd11be6e6538              # double 0.58948599999999995
	.quad	0x3fe263fbbd7b2032              # double 0.57470500000000002
	.quad	0x3fe01fea8112ba17              # double 0.50389600000000001
	.quad	0x3fe5f0e6f2e8c048              # double 0.68565699999999996
	.quad	0x3fca0fc2eba27aea              # double 0.20360600000000001
	.quad	0x3fe228438088509c              # double 0.567415
	.quad	0x3fd7aa19439de482              # double 0.369757
	.quad	0x3fee3f93ff25e56d              # double 0.94526100000000002
	.quad	0x3fd4a1986b9c304d              # double 0.32236300000000001
	.quad	0x3fea9d755bccaf71              # double 0.83172100000000004
	.quad	0x3fc85eaab042528b              # double 0.190389
	.quad	0x3fd652f3c2dadb83              # double 0.34881299999999998
	.quad	0x3feae4388ebcc6c5              # double 0.84035899999999997
	.quad	0x3fee733ebbfd71b0              # double 0.95156799999999997
	.quad	0x3fbc5ee568a50508              # double 0.110823
	.quad	0x3fc97ef5a964e8b8              # double 0.199187
	.quad	0x3fd900da1a93293d              # double 0.390677
	.quad	0x3f9734f82f512663              # double 0.022662999999999999
	.quad	0x3fe78b6d86ec17ec              # double 0.73577000000000004
	.quad	0x3fe459578a2a90cd              # double 0.63590599999999997
	.quad	0x3fe24358afc47e4a              # double 0.57072100000000003
	.quad	0x3fc8ddf00abf76a3              # double 0.194273
	.quad	0x3fcb2580c308feac              # double 0.21208199999999999
	.quad	0x3fc425bfad299956              # double 0.15740199999999999
	.quad	0x3fc33250b524399b              # double 0.149973
	.quad	0x3fddcfe154434e33              # double 0.46581299999999998
	.quad	0x3fe9e75ff609dcf9              # double 0.80949400000000005
	.quad	0x3fb14b48d3ae685e              # double 0.067555000000000004
	.quad	0x3fda28ed5f138bce              # double 0.408748
	.quad	0x3f7df86e3b46fdeb              # double 0.0073169999999999997
	.quad	0x3fe6740c4156e265              # double 0.70166600000000001
	.quad	0x3fd4d8b1dd5d3dc9              # double 0.32572600000000002
	.quad	0x3fbdefa615a8deb1              # double 0.116938
	.quad	0x3fac3ce2089e3433              # double 0.055152
	.quad	0x3fc869df97aaac11              # double 0.19073100000000001
	.quad	0x3fe73480a5accd53              # double 0.725159
	.quad	0x3fe1cd056c508b33              # double 0.55627700000000002
	.quad	0x3fe2999780baa583              # double 0.58124900000000002
	.quad	0x3fddba16e7a311e8              # double 0.46448299999999998
	.quad	0x3fce2c9081c2e33f              # double 0.235735
	.quad	0x3fe77414a4d2b2c0              # double 0.73292000000000002
	.quad	0x3fe9b0f8c64fdb0a              # double 0.80285300000000004
	.quad	0x3fdc8ba40d90e23b              # double 0.446023
	.quad	0x3fe869728a611772              # double 0.76287199999999999
	.quad	0x3fdc1b328b6d86ec              # double 0.43915999999999999
	.quad	0x3fa1e2bcf91a32b1              # double 0.034932999999999999
	.quad	0x3fe8de3da2f8bdec              # double 0.77712899999999995
	.quad	0x3fece59af9ebe9c9              # double 0.90302800000000005
	.quad	0x3fe8df2452c59fb2              # double 0.77723900000000001
	.quad	0x3fdac8472c0e7bc4              # double 0.41847400000000001
	.quad	0x3fe6caa9717df19d              # double 0.71223899999999996
	.quad	0x3fa1c5a3e39f7729              # double 0.034710999999999999
	.quad	0x3fc40e736049ecb3              # double 0.156691
	.quad	0x3fde4bec679cc74c              # double 0.47338400000000003
	.quad	0x3fdf361dc93ea2d3              # double 0.487678
	.quad	0x3feaee568a50507a              # double 0.84159399999999995
	.quad	0x3fe49e2de8709742              # double 0.64430900000000002
	.quad	0x3fd27e0ef99806f2              # double 0.28894399999999998
	.quad	0x3fb1a921ccd96207              # double 0.068987000000000007
	.quad	0x3fda6ebd4cfd08d5              # double 0.41300900000000001
	.quad	0x3fe9f0a5efe93187              # double 0.81062599999999996
	.quad	0x3fb368dfbd6a593a              # double 0.075818999999999998
	.quad	0x3feb7b15b573eab3              # double 0.85877499999999996
	.quad	0x3fd47f06705c896e              # double 0.32025300000000001
	.quad	0x3fe7ff3061c79b35              # double 0.74990100000000004
	.quad	0x3feb1da7b0b39192              # double 0.84736999999999996
	.quad	0x3fd99be8ff327aa7              # double 0.40014100000000002
	.quad	0x3fe2154434e3369c              # double 0.56509600000000004
	.quad	0x3fed716b11c6d1e1              # double 0.920095
	.quad	0x3fe3e0807357e671              # double 0.62115500000000001
	.quad	0x3fd0c64ba94bbe44              # double 0.26210299999999997
	.quad	0x3fd3d0f1f57b41c0              # double 0.30962800000000001
	.quad	0x3fca5197a24894c4              # double 0.20561499999999999
	.quad	0x3fd173affb04ee7c              # double 0.27268599999999998
	.quad	0x3f7aa2e3c536d656              # double 0.0065030000000000001
	.quad	0x3fe9b4784230fcf8              # double 0.80327999999999999
	.quad	0x3fe3872b020c49ba              # double 0.61024999999999996
	.quad	0x3fd9f66e86c6583f              # double 0.40566600000000003
	.quad	0x3feafeae5bc87db3              # double 0.84358900000000003
	.quad	0x3fefe93c03bc4d23              # double 0.99722100000000002
	.quad	0x3fe5c5c9a34ca0c3              # double 0.68039400000000005
	.quad	0x3fd083b60285ec3e              # double 0.25803900000000002
	.quad	0x3fec86e5cd4ed2cc              # double 0.891467
	.quad	0x3fdec197e5647347              # double 0.48056599999999999
	.quad	0x3fe90cd423d9231c              # double 0.78281599999999995
	.quad	0x3fea94f483cafb3b              # double 0.83068299999999995
	.quad	0x3fd6ba01eeed8905              # double 0.355103
	.quad	0x3fb7ffbce4217d28              # double 0.093745999999999996
	.quad	0x3fef16030c23fab1              # double 0.97143699999999999
	.quad	0x3fc5136a400fba88              # double 0.164655
	.quad	0x3fe46199780baa58              # double 0.63691399999999998
	.quad	0x3facd22c881e4713              # double 0.056291000000000001
	.quad	0x3fdd01abd1aa821f              # double 0.45322699999999999
	.quad	0x3fe17227d028a1e0              # double 0.54518500000000003
	.quad	0x3fb5b75a74c09c3d              # double 0.084829000000000002
	.quad	0x3fe75c1a47a9e2bd              # double 0.729993
	.quad	0x3fc72b4528283d36              # double 0.181008
	.quad	0x3fe6985271bcdbbe              # double 0.706094
	.quad	0x3fd3940fecdd0d8d              # double 0.30591200000000002
	.quad	0x3fdec729f59ccfaf              # double 0.480906
	.quad	0x3fed975d13d74d59              # double 0.92472699999999997
	.quad	0x3fd4f0c34c1a8ac6              # double 0.32719500000000001
	.quad	0x3f96440f23897204              # double 0.021743999999999999
	.quad	0x3fbf8dd616f86a0a              # double 0.12325800000000001
	.quad	0x3f9c1b97353b4b30              # double 0.027449000000000001
	.quad	0x3feabb9ae0c17657              # double 0.83540099999999995
	.quad	0x3fd113660e51d25b              # double 0.26680900000000002
	.quad	0x3fe88b2c83ec892b              # double 0.76698900000000003
	.quad	0x3fef8dc981beb181              # double 0.98605799999999999
	.quad	0x3fe3ffbacb428912              # double 0.62496700000000005
	.quad	0x3fd7b97785729b28              # double 0.370695
	.quad	0x3faa8a3f8982cb21              # double 0.051836
	.quad	0x3fac7496aad1d042              # double 0.055577000000000001
	.quad	0x3fdd9acffa7eb6bf              # double 0.46257399999999999
	.quad	0x3fee018e757928e1              # double 0.93769000000000002
	.quad	0x3fd56cefed63454a              # double 0.33477400000000002
	.quad	0x3feb480841ede11a              # double 0.85254300000000005
	.quad	0x3fdec75818c5c9a3              # double 0.48091699999999998
	.quad	0x3fd03022dd7a99fa              # double 0.252938
	.quad	0x3fceaa64c2f837b5              # double 0.23957500000000001
	.quad	0x3fd2c0096feb4a66              # double 0.29297099999999998
	.quad	0x3fec70520d130dfa              # double 0.88871100000000003
	.quad	0x3fe165add9c27e95              # double 0.54366199999999998
	.quad	0x3fef75a31a4bdba1              # double 0.98311000000000003
	.quad	0x3fefc4d44567125e              # double 0.99277700000000002
	.quad	0x3fd6299d883ba344              # double 0.34628999999999999
	.quad	0x3fa57b41bfbdf091              # double 0.041956
	.quad	0x3fecbc5154866a12              # double 0.89798800000000001
	.quad	0x3fd0ce032db1e9f2              # double 0.26257399999999997
	.quad	0x3fcbea8112ba16e8              # double 0.21809400000000001
	.quad	0x3fe54f8726d04e62              # double 0.66595800000000005
	.quad	0x3fd8d8b1dd5d3dc9              # double 0.38822600000000002
	.quad	0x3fd26b6e0d23d4f1              # double 0.28780699999999998
	.quad	0x3fdffc58ab92c062              # double 0.49977700000000003
	.quad	0x3fa8af81626b2f23              # double 0.048214
	.quad	0x3fe7275ee99a62ed              # double 0.72355599999999998
	.quad	0x3fe5b93ccd0fe8ab              # double 0.67886199999999997
	.quad	0x3fe350b0f27bb2ff              # double 0.60360000000000003
	.quad	0x3fd2cbab649d388b              # double 0.29368100000000003
	.quad	0x3fd60563ed0f6274              # double 0.34407900000000002
	.quad	0x3fe1a265f0f5a101              # double 0.55107399999999995
	.quad	0x3fe56f9b994e1a3f              # double 0.66987399999999997
	.quad	0x3fd6bf727136a401              # double 0.355435
	.quad	0x3fce94ab1d4f9c20              # double 0.23891200000000001
	.quad	0x3fbcf29d40ee06d9              # double 0.113077
	.quad	0x3fe66baf102363b2              # double 0.70064499999999996
	.quad	0x3fda79e9d0e991ff              # double 0.41369099999999998
	.quad	0x3fe14a600b029281              # double 0.54032899999999995
	.quad	0x3fe90763a1900820              # double 0.78215199999999995
	.quad	0x3fe44b89d6adf71f              # double 0.63422100000000003
	.quad	0x3f77bb73083558a7              # double 0.0057939999999999997
	.quad	0x3fe359dba908a266              # double 0.60471900000000001
	.quad	0x3fd030270f388228              # double 0.25293900000000002
	.quad	0x3f69f5dfeb8d8234              # double 0.0031689999999999999
	.quad	0x3fef84534bd76ee7              # double 0.98490299999999997
	.quad	0x3fea6b1a2a4db164              # double 0.82557400000000003
	.quad	0x3fec48f10a99b6f6              # double 0.88390400000000002
	.quad	0x3fc3209edbf8b9bb              # double 0.14943300000000001
	.quad	0x3fb51f0c34c1a8ac              # double 0.082504999999999995
	.quad	0x3fe262bf11f926c8              # double 0.57455400000000001
	.quad	0x3fd8713f077ccc03              # double 0.38191199999999997
	.quad	0x3fd185553ef6b5d4              # double 0.27376299999999998
	.quad	0x3feb1eafee6fb4c4              # double 0.84749600000000002
	.quad	0x3fe5a6fe718a86d7              # double 0.67663499999999999
	.quad	0x3fd2783dff3f0fe0              # double 0.28858899999999998
	.quad	0x3fd4da3c21187e7c              # double 0.32582
	.quad	0x3fd171b8aa00192a              # double 0.27256599999999997
	.quad	0x3fc6e5de15ca6ca0              # double 0.17888999999999999
	.quad	0x3fa63150dae3e6c5              # double 0.043345000000000002
	.quad	0x3fc7c504816f0069              # double 0.1857
	.quad	0x3fdd8b86b15f88fd              # double 0.46164100000000002
	.quad	0x3fc4523704790b85              # double 0.15875900000000001
	.quad	0x3fb897fa5d28d003              # double 0.096069000000000002
	.quad	0x3fe59d2e0e30446b              # double 0.67543699999999995
	.quad	0x3fe04197e5647347              # double 0.50800699999999999
	.quad	0x3fe10c4588a04d12              # double 0.532748
	.quad	0x3fd4d512ec6bce85              # double 0.32550499999999999
	.quad	0x3fef0c5a8155d5f5              # double 0.97025799999999995
	.quad	0x3fe12de657b84dba              # double 0.53685300000000002
	.quad	0x3fd58fe260b2c83f              # double 0.33690700000000001
	.quad	0x3fecfd63022dd7aa              # double 0.90593100000000004
	.quad	0x3fdcb484d76ab580              # double 0.44851799999999997
	.quad	0x3fbc5c67dfe32a06              # double 0.11078499999999999
	.quad	0x3fddc18b502ababf              # double 0.46493800000000002
	.quad	0x3fc9cab81f969e3d              # double 0.20149900000000001
	.quad	0x3fe8d373affb04ee              # double 0.77581199999999995
	.quad	0x3fe678ec0f883340              # double 0.70226100000000002
	.quad	0x3fe617c3d68405b4              # double 0.69040100000000004
	.quad	0x3fee15db3397dd01              # double 0.940168
	.quad	0x3fdb79b34a44c7b0              # double 0.42930299999999999
	.quad	0x3fe780303c07ee0b              # double 0.734398
	.quad	0x3fc297b7414a4d2b              # double 0.145255
	.quad	0x3fee94940bbb1f25              # double 0.95563699999999996
	.quad	0x3fe88c564f97edc8              # double 0.76713100000000001
	.quad	0x3fe27292c4934268              # double 0.57648600000000005
	.quad	0x3fd0cbd556084a51              # double 0.26244099999999998
	.quad	0x3fe93e61cffeb075              # double 0.78886500000000004
	.quad	0x3fec4167a95c853c              # double 0.88298399999999999
	.quad	0x3fec25fa658c4bd3              # double 0.87963599999999997
	.quad	0x3feec0b780346dc6              # double 0.96102500000000002
	.quad	0x3feb12af9a8cdea0              # double 0.84603099999999997
	.quad	0x3fe4ff64cf8d716d              # double 0.65617599999999998
	.quad	0x3febf0e4da09cc32              # double 0.87315600000000004
	.quad	0x3fdcc4651f3e89a9              # double 0.44948700000000003
	.quad	0x3fe84e54f7a91969              # double 0.75956199999999996
	.quad	0x3feb004d98394749              # double 0.84378699999999995
	.quad	0x3fde9702e6644d87              # double 0.47796699999999998
	.quad	0x3fd78f47304039ac              # double 0.36812
	.quad	0x3fec39bcba301217              # double 0.88204800000000005
	.quad	0x3fd78a9bcfd4bf0a              # double 0.36783500000000002
	.quad	0x3fe8a94dd72367e4              # double 0.77066699999999999
	.quad	0x3f9c182ecaeea63b              # double 0.027435999999999999
	.quad	0x3fe6a856605ee569              # double 0.70804900000000004
	.quad	0x3f6cf355cd91eeaa              # double 0.0035339999999999998
	.quad	0x3fbb122b7baecd08              # double 0.10574600000000001
	.quad	0x3fd856f32bdc26dd              # double 0.38030700000000001
	.quad	0x3fe15a20ddc61954              # double 0.54225199999999996
	.quad	0x3fd81511dffc547a              # double 0.37628600000000001
	.quad	0x3fc5167ec7863bef              # double 0.16474900000000001
	.quad	0x3fe0ee41919ac797              # double 0.529084
	.quad	0x3f89d909f1f14984              # double 0.012621
	.quad	0x3fee2d16b97fe8ee              # double 0.94300399999999995
	.quad	0x3fbfca643cc07aaf              # double 0.124182
	.quad	0x3fe1c7dc37a3db3c              # double 0.555647
	.quad	0x3fe1471d60631727              # double 0.53993100000000005
	.quad	0x3fe07e79ee02a77a              # double 0.51543899999999998
	.quad	0x3fb4a7f8012dfd69              # double 0.080687999999999996
	.quad	0x3fea4447c30d306a              # double 0.82083499999999998
	.quad	0x3fed5f7c6759ab6d              # double 0.917906
	.quad	0x3fc647a9e2bcf91a              # double 0.17406199999999999
	.quad	0x3fed283b1d0c8041              # double 0.911161
	.quad	0x3fc1e121ee675148              # double 0.139683
	.quad	0x3fe2fba450acc0be              # double 0.59321800000000002
	.quad	0x3fe0219220ff5409              # double 0.50409800000000005
	.quad	0x3fc5affb04ee7c4a              # double 0.169433
	.quad	0x3fbf5ad96a6a0126              # double 0.12248000000000001
	.quad	0x3fe354003254e6e2              # double 0.60400399999999999
	.quad	0x3fe3123a29c779a7              # double 0.59597500000000003
	.quad	0x3fe302a5614df8b1              # double 0.59407299999999996
	.quad	0x3fd920535c9e6688              # double 0.392598
	.quad	0x3fe25f1bef49cf57              # double 0.57411000000000001
	.quad	0x3fd1ec5b078d92fb              # double 0.28005099999999999
	.quad	0x3fd1a59c065b63d4              # double 0.27573300000000001
	.quad	0x3fecddedf1e0828c              # double 0.90209099999999997
	.quad	0x3feb0a8f3a9b0681              # double 0.84503899999999998
	.quad	0x3fce9b413986338b              # double 0.23911299999999999
	.quad	0x3fd61554fbdad752              # double 0.34505200000000003
	.quad	0x3fd7f6273929ed39              # double 0.37439899999999998
	.quad	0x3fe0ff1950331e3a              # double 0.53113999999999995
	.quad	0x3fe88aa21a719b4e              # double 0.76692300000000002
	.quad	0x3fed3877ab324852              # double 0.91314300000000004
	.quad	0x3feb55e6bc621b7e              # double 0.854236
	.quad	0x3fe509a88ace24bc              # double 0.65742900000000004
	.quad	0x3fe3e5add9c27e95              # double 0.62178699999999998
	.quad	0x3fe268815e39713b              # double 0.57525700000000002
	.quad	0x3fc22a5e785b5b70              # double 0.14191799999999999
	.quad	0x3fed182cb20fb225              # double 0.90920100000000004
	.quad	0x3fdde12e83a109d0              # double 0.46686899999999998
	.quad	0x3fe8323dd54da4cf              # double 0.75613300000000006
	.quad	0x3fe8b4a01abd1aa8              # double 0.77204899999999999
	.quad	0x3fd9361dc93ea2d3              # double 0.393928
	.quad	0x3f90d5a5b9628cbd              # double 0.01644
	.quad	0x3fee5ad538ac18f8              # double 0.94858799999999998
	.quad	0x3fe8ff38c5436b90              # double 0.78115500000000004
	.quad	0x3fc053fc0096feb5              # double 0.12756300000000001
	.quad	0x3fd5858793dd97f6              # double 0.33627499999999999
	.quad	0x3fe130a4e379b77c              # double 0.537188
	.quad	0x3fd7e7a743a647fe              # double 0.37351400000000001
	.quad	0x3fec4d4024b33db0              # double 0.88443000000000005
	.quad	0x3faf30e7ff583a54              # double 0.060920000000000002
	.quad	0x3fe403c07ee0b0af              # double 0.62545799999999996
	.quad	0x3febe91a75cd0bb7              # double 0.87220500000000001
	.quad	0x3fe1d7eed45e9186              # double 0.55760900000000002
	.quad	0x3fd46c1a048e043a              # double 0.31909799999999999
	.quad	0x3fdcfaacd9e83e42              # double 0.45279999999999998
	.quad	0x3feec6e2a80064aa              # double 0.96177800000000002
	.quad	0x3feeb82a12f90108              # double 0.95998099999999997
	.quad	0x3fe63964a59c065b              # double 0.69450599999999996
	.quad	0x3fc87eb6bf444e0e              # double 0.19136700000000001
	.quad	0x3fd25ad106ee30cb              # double 0.28679300000000002
	.quad	0x3fec30a0b1bbcf4f              # double 0.88093600000000005
	.quad	0x3fa6dfa43fe5c91d              # double 0.044674999999999999
	.quad	0x3fe7630caa326e11              # double 0.73084099999999996
	.quad	0x3fe11780baa582dc              # double 0.53411900000000001
	.quad	0x3fe430ee49f51698              # double 0.63097300000000001
	.quad	0x3fdaf1886df82b1f              # double 0.42099199999999998
	.quad	0x3fe2f6683c297bfa              # double 0.59257899999999997
	.quad	0x3fcf21ab4b72c519              # double 0.24321499999999999
	.quad	0x3fdbae21101b0037              # double 0.43250300000000003
	.quad	0x3fc103c07ee0b0af              # double 0.13292699999999999
	.quad	0x3f7347a5b0ff10ed              # double 0.0047070000000000002
	.quad	0x3fe6a2163fdd65a1              # double 0.70728599999999997
	.quad	0x3fe7186db50f40e6              # double 0.72173200000000004
	.quad	0x3fe395054ac29bf1              # double 0.61194099999999996
	.quad	0x3feee97d06bbdbe4              # double 0.96600200000000002
	.quad	0x3fdca619da9c9928              # double 0.44763799999999998
	.quad	0x3fd0ac79702e6645              # double 0.26052700000000001
	.quad	0x3fed2bae03b3e9a7              # double 0.911582
	.quad	0x3fe318d8a979e16d              # double 0.59678299999999995
	.quad	0x3fe4e412cf0f9d2c              # double 0.652841
	.quad	0x3fc496a26e547171              # double 0.16084699999999999
	.quad	0x3fecd8969a0ad8a1              # double 0.90143899999999999
	.quad	0x3fd9d041cc532a49              # double 0.40333599999999997
	.quad	0x3fe057ff9b56323c              # double 0.51074200000000003
	.quad	0x3feee8dfbd6a593a              # double 0.96592699999999998
	.quad	0x3fd12db61bb05faf              # double 0.26841500000000001
	.quad	0x3fdd4f8f8a4c1ebd              # double 0.45798100000000003
	.quad	0x3fd8f2e05ccc89b1              # double 0.389824
	.quad	0x3feb9d51b4fe79ee              # double 0.862954
	.quad	0x3fe35de9c0229a5f              # double 0.60521400000000003
	.quad	0x3fd39c4113c68662              # double 0.30641200000000002
	.quad	0x3fc62cc2d6a9c561              # double 0.17324100000000001
	.quad	0x3fe5f5ad96a6a012              # double 0.68623999999999996
	.quad	0x3fe88435efa615a9              # double 0.76613900000000001
	.quad	0x3fdbe731d2e0e304              # double 0.43598599999999998
	.quad	0x3fe74da4ce8101f3              # double 0.72822799999999999
	.quad	0x3fb2455eaee2003b              # double 0.071371000000000004
	.quad	0x3fef03fb3743632c              # double 0.96923599999999998
	.quad	0x3fe272474538ef35              # double 0.57645000000000002
	.quad	0x3fd00ef1348b2208              # double 0.25091200000000002
	.quad	0x3fe5b1a8ef77f280              # double 0.67793700000000001
	.quad	0x3fe28dc55000c954              # double 0.57980600000000004
	.quad	0x3fd87e9d94d0dcfd              # double 0.38272800000000001
	.quad	0x3fe8e85985ad538b              # double 0.77836300000000003
	.quad	0x3fc1dbca9691a75d              # double 0.13952000000000001
	.quad	0x3fc54b380cb6c7a8              # double 0.16635800000000001
	.quad	0x3fe6fa7008a697af              # double 0.71807100000000001
	.quad	0x3fe52ea960b6f9fd              # double 0.66194600000000003
	.quad	0x3fd6b884406c00da              # double 0.35501199999999999
	.quad	0x3fe26260b2c83ec9              # double 0.57450900000000005
	.quad	0x3fb9add9c27e9531              # double 0.100309
	.quad	0x3fdf6ca46e08f217              # double 0.491006
	.quad	0x3fbf1c432ca57a78              # double 0.12152499999999999
	.quad	0x3fb15cd91eeaa6d2              # double 0.067822999999999994
	.quad	0x3feea2467be553ac              # double 0.95730899999999996
	.quad	0x3fe148b220791c4c              # double 0.54012400000000005
	.quad	0x3fc3dbdb5d894813              # double 0.15514700000000001
	.quad	0x3fe5a4c1ebc83a97              # double 0.67636200000000002
	.quad	0x3fd31919ac79702e              # double 0.29840699999999998
	.quad	0x3fd8e16d6dc1a47b              # double 0.38875900000000002
	.quad	0x3fe46d22424a276b              # double 0.63832199999999994
	.quad	0x3fe6cdee34fc610f              # double 0.71263799999999999
	.quad	0x3fc1d5bab21815a0              # double 0.13933499999999999
	.quad	0x3fe4709310129cbb              # double 0.63874200000000003
	.quad	0x3fe9522a6f3f52fc              # double 0.79127999999999998
	.quad	0x3fe34da9003eea21              # double 0.60323000000000004
	.quad	0x3fdc556d19dece57              # double 0.442714
	.quad	0x3fe39667b5f1bef5              # double 0.61211000000000004
	.quad	0x3fbf74794ea07703              # double 0.12287099999999999
	.quad	0x3fd226916440f239              # double 0.28360400000000002
	.quad	0x3fbf9357603925bb              # double 0.12334199999999999
	.quad	0x3fe1de7210be9425              # double 0.55840400000000001
	.quad	0x3fe2676ea4228998              # double 0.57512600000000003
	.quad	0x3fdba52ef911cf35              # double 0.43195699999999998
	.quad	0x3fe42be8bc169c24              # double 0.63036000000000003
	.quad	0x3febfdd441355476              # double 0.87473500000000004
	.quad	0x3fa355ac03ff6901              # double 0.037762999999999998
	.quad	0x3fe963864cb5bb38              # double 0.79339899999999997
	.quad	0x3fde877ee4e26d48              # double 0.47702
	.quad	0x3fc8189374bc6a7f              # double 0.18825
	.quad	0x3fdbf1b25f633ce6              # double 0.43662699999999999
	.quad	0x3fd4e14bdfd2630f              # double 0.32625100000000001
	.quad	0x3fc8276b7ed41b76              # double 0.18870300000000001
	.quad	0x3fd9e88df37329c3              # double 0.40481899999999998
	.quad	0x3fe34dc65c70435f              # double 0.603244
	.quad	0x3f785058dde7a744              # double 0.0059360000000000003
	.quad	0x3feec4827b6fe2e7              # double 0.961488
	.quad	0x3fe3e4d7f0ed3d86              # double 0.62168500000000004
	.quad	0x3fddc792d1287c20              # double 0.465306
	.quad	0x3fbcda5daf07bfe8              # double 0.112707
	.quad	0x3fb4258d5842b735              # double 0.078698000000000004
	.quad	0x3f936a400fba8827              # double 0.018960000000000001
	.quad	0x3feb2d42c3c9eecc              # double 0.849275
	.quad	0x3fd7481f53825e14              # double 0.36377700000000002
	.quad	0x3fc1df2a9d627bf6              # double 0.139623
	.quad	0x3fdd19a847b24639              # double 0.45469100000000001
	.quad	0x3fdd2174c4cdfaca              # double 0.45516699999999999
	.quad	0x3fb88b86b15f88fd              # double 0.095879000000000006
	.quad	0x3fde25e56cd6c2f0              # double 0.47106300000000001
	.quad	0x3fedb9ffd60e94ee              # double 0.92895499999999998
	.quad	0x3fe518a86d71f362              # double 0.65925999999999996
	.quad	0x3fe9b8066c2acb86              # double 0.80371400000000004
	.quad	0x3fed442e9899bf59              # double 0.91457299999999997
	.quad	0x3f8324851a869403              # double 0.0093469999999999994
	.quad	0x3fb02730c67168f9              # double 0.063098000000000001
	.quad	0x3fe9bd74d594f26b              # double 0.80437700000000001
	.quad	0x3fde9eadd590c0ad              # double 0.478435
	.quad	0x3fc97121ab4b72c5              # double 0.198765
	.quad	0x3fa90cd423d9231c              # double 0.048925999999999997
	.quad	0x3fbc2b302f72b453              # double 0.11003400000000001
	.quad	0x3fbb56fb8f57f738              # double 0.106796
	.quad	0x3fb83fb3743632c2              # double 0.094722
	.quad	0x3fd7b93469941850              # double 0.37067899999999998
	.quad	0x3fe14e0fc2eba27b              # double 0.54077900000000001
	.quad	0x3fd76473471f7942              # double 0.365506
	.quad	0x3fdfeca25529fe00              # double 0.49881799999999998
	.quad	0x3fe04256bca5375d              # double 0.50809800000000005
	.quad	0x3fde00474d9c6b05              # double 0.46876699999999999
	.quad	0x3fc6f27bb2fec56d              # double 0.17927499999999999
	.quad	0x3fd97d805e5f30e8              # double 0.398285
	.quad	0x3fcda4052d666a98              # double 0.231568
	.quad	0x3fea24e379b77c03              # double 0.81700300000000003
	.quad	0x3fda1c9b41398634              # double 0.40799600000000003
	.quad	0x3f7be3c105186db5              # double 0.0068089999999999999
	.quad	0x3fd90a30db6a1e82              # double 0.39124700000000001
	.quad	0x3fd78a2a90cd423e              # double 0.36780800000000002
	.quad	0x3fdffa69be09bb6b              # double 0.49965900000000002
	.quad	0x3fc94d594f26aec0              # double 0.19767299999999999
	.quad	0x3fe05bb9cf9a06a7              # double 0.51119700000000001
	.quad	0x3fee9d8e86402081              # double 0.95673299999999994
	.quad	0x3fd9ac471b478423              # double 0.40114
	.quad	0x3fcce9b38d60a633              # double 0.225882
	.quad	0x3fe17e7e1fc08fa8              # double 0.54669100000000004
	.quad	0x3fd4d916872b020c              # double 0.32574999999999998
	.quad	0x3fe33d4f15e7c8d2              # double 0.60123400000000005
	.quad	0x3feca2163fdd65a1              # double 0.89478599999999997
	.quad	0x3fd6afd976ff3ade              # double 0.35448299999999999
	.quad	0x3fa0f2becedd4845              # double 0.033101999999999999
	.quad	0x3fe2acbc8c0ce91d              # double 0.58358600000000005
	.quad	0x3fe0e0780fdc1616              # double 0.52740100000000001
	.quad	0x3fed6eb4e981387a              # double 0.91976400000000003
	.quad	0x3fa77079e59f2baa              # double 0.045780000000000001
	.quad	0x3fddc2374794ea07              # double 0.46497899999999998
	.quad	0x3fb198d045fe1112              # double 0.068737999999999994
	.quad	0x3fef888f861a60d4              # double 0.98541999999999996
	.quad	0x3fa07fed20296b33              # double 0.032225999999999998
	.quad	0x3fd09f94855da273              # double 0.25974000000000003
	.quad	0x3fe341f85d744f5d              # double 0.60180299999999998
	.quad	0x3fc0f3b213e3e293              # double 0.132437
	.quad	0x3fdd5cf67b1c0011              # double 0.45879900000000001
	.quad	0x3fa9f666234a87e4              # double 0.050708000000000003
	.quad	0x3fef7f2c3009b307              # double 0.98427399999999998
	.quad	0x3fe0e2845996744b              # double 0.52765099999999998
	.quad	0x3feddf548ecd8dbd              # double 0.93351200000000001
	.quad	0x3fe13fbdf090f734              # double 0.53903100000000004
	.quad	0x3fcd7af640639d5e              # double 0.23031499999999999
	.quad	0x3fc966b6177ea1c7              # double 0.19844700000000001
	.quad	0x3fe2690bc7b45f18              # double 0.57532300000000003
	.quad	0x3fed6d288ce703b0              # double 0.91957500000000003
	.quad	0x3fd4bbe4473cd573              # double 0.32396799999999998
	.quad	0x3fe203d577963993              # double 0.56296800000000002
	.quad	0x3fed325918a009f6              # double 0.91239599999999998
	.quad	0x3fe743b2dd377e1c              # double 0.72701400000000005
	.quad	0x3fed91a32b12d341              # double 0.92402799999999996
	.quad	0x3fc8d4b2745bf26f              # double 0.193991
	.quad	0x3fe80409e55c0fcb              # double 0.75049299999999997
	.quad	0x3fe222c669057d18              # double 0.56674500000000005
	.quad	0x3fdad573647baa9b              # double 0.41927799999999998
	.quad	0x3fcc1450efdc9c4e              # double 0.21937000000000001
	.quad	0x3fcba1db877ab325              # double 0.21587700000000001
	.quad	0x3fef1908e581cf78              # double 0.97180599999999994
	.quad	0x3fd88a50507a6bd7              # double 0.38344200000000001
	.quad	0x3fc1f51697f1f9ad              # double 0.140292
	.quad	0x3fee846412cf0f9d              # double 0.95366099999999998
	.quad	0x3fd958969a0ad8a1              # double 0.396032
	.quad	0x3fd341461b6d43d0              # double 0.30085899999999999
	.quad	0x3fef7c80841ede12              # double 0.98394800000000004
	.quad	0x3fe17a4e7ab75643              # double 0.54618
	.quad	0x3fed56c2efd438d2              # double 0.91684100000000002
	.quad	0x3fee9713ad5bee3d              # double 0.95594199999999996
	.quad	0x3fbc62c343b70ef5              # double 0.11088199999999999
	.quad	0x3fec91ada76d97b3              # double 0.89278299999999999
	.quad	0x3fe63e1869835159              # double 0.69508000000000003
	.quad	0x3fc4fd6d7e889c1b              # double 0.16398399999999999
	.quad	0x3fe00c1b97353b4b              # double 0.50147799999999998
	.quad	0x3fdc39de481f5382              # double 0.44103199999999998
	.quad	0x3fd46fc58ab92c06              # double 0.31932199999999999
	.quad	0x3fd75d074213a0c7              # double 0.36505300000000002
	.quad	0x3fe930be0ded288d              # double 0.78720000000000001
	.quad	0x3fd6433508f648c7              # double 0.34785199999999999
	.quad	0x3fea694ee392e1ef              # double 0.82535499999999995
	.quad	0x3fd863b688bda943              # double 0.38108599999999998
	.quad	0x3feb97f84449dbec              # double 0.86230099999999998
	.quad	0x3fc89e5e2478854d              # double 0.192333
	.quad	0x3fe7218372e6a769              # double 0.72284099999999996
	.quad	0x3fe11fd7a13c254a              # double 0.53513699999999997
	.quad	0x3fe6acf312b1b36c              # double 0.70861200000000002
	.quad	0x3fbc48beb5b2d4d4              # double 0.110485
	.quad	0x3fef0c2e770bd018              # double 0.97023700000000001
	.quad	0x3fc40de4c51116a9              # double 0.15667400000000001
	.quad	0x3feeb5ed8d36b4c8              # double 0.959708
	.quad	0x3faf42dcf4623d0c              # double 0.061057
	.quad	0x3fe7385c67dfe32a              # double 0.72563
	.quad	0x3fc5d6e8af81626b              # double 0.17062099999999999
	.quad	0x3fef8096feb4a665              # double 0.98444699999999996
	.quad	0x3fe30a24463065f9              # double 0.59498799999999996
	.quad	0x3fe145f394b7b289              # double 0.53978899999999996
	.quad	0x3fc4f5dbb9cf9a07              # double 0.16375300000000001
	.quad	0x3fe557abb8800eae              # double 0.66695199999999999
	.quad	0x3feebd3a1d323fee              # double 0.96059899999999998
	.quad	0x3fe1476295208e15              # double 0.539964
	.quad	0x3fe22b3edd8b60f2              # double 0.56777900000000003
	.quad	0x3fce4e618ce2d1f2              # double 0.23676700000000001
	.quad	0x3fd28750c1b97354              # double 0.28950900000000002
	.quad	0x3fe21878316a0557              # double 0.56548699999999996
	.quad	0x3fe37049a9973d9f              # double 0.60745700000000002
	.quad	0x3fe96249a133c1ce              # double 0.79324799999999995
	.quad	0x3feaf227d028a1e0              # double 0.84206000000000003
	.quad	0x3fecbffac1d29dc7              # double 0.89843499999999998
	.quad	0x3fe7fe49b1fab96f              # double 0.74979099999999999
	.quad	0x3fe00dd616f86a0a              # double 0.50168900000000005
	.quad	0x3fb3107746887a8d              # double 0.074469999999999995
	.quad	0x3fea6ad9274e22a3              # double 0.82554300000000003
	.quad	0x3fedf852f7f498c4              # double 0.93656300000000003
	.quad	0x3fe74204f2ae07e6              # double 0.72680900000000004
	.quad	0x3fdc8ac18f81e8a3              # double 0.445969
	.quad	0x3f7771001d5c3159              # double 0.0057229999999999998
	.quad	0x3fde58d9b5e95b79              # double 0.47417300000000001
	.quad	0x3fdfb0468448cf7d              # double 0.49513400000000002
	.quad	0x3fd7ef459d99029b              # double 0.37397900000000001
	.quad	0x3fd1cc78e9f6a93f              # double 0.27810499999999999
	.quad	0x3fbe74f2f123c42a              # double 0.11897199999999999
	.quad	0x3fe74d63cb817332              # double 0.72819699999999998
	.quad	0x3fd91919ac79702e              # double 0.39215699999999998
	.quad	0x3fe8ae3a3a8e7147              # double 0.77126799999999995
	.quad	0x3fdf9da9c99285a9              # double 0.49399799999999999
	.quad	0x3fe1f9d6f112fd33              # double 0.56174800000000003
	.quad	0x3fe2ac083126e979              # double 0.58350000000000002
	.quad	0x3fd32a454de7ea60              # double 0.29945500000000003
	.quad	0x3fd77b84db9c7369              # double 0.36691400000000002
	.quad	0x3fe18157eed45e92              # double 0.54703900000000005
	.quad	0x3fcea9717df19d67              # double 0.23954600000000001
	.quad	0x3fe3af5dbb9cf9a0              # double 0.61515699999999995
	.quad	0x3fee69b7bf1e8e61              # double 0.95040500000000006
	.quad	0x3fdccbea4ebdd335              # double 0.44994600000000001
	.quad	0x3fe6e0e30446b69e              # double 0.71495200000000003
	.quad	0x3fc91782d38476f3              # double 0.19603000000000001
	.quad	0x3fecd04a2fcefaa4              # double 0.90042599999999994
	.quad	0x3febfe6d58c8eef2              # double 0.87480800000000003
	.quad	0x3fe5a07b352a8438              # double 0.67584
	.quad	0x3fde3879c4113c68              # double 0.47219699999999998
	.quad	0x3fa1626b2f23033a              # double 0.033953999999999998
	.quad	0x3fe15fb0d51f81a6              # double 0.54293100000000005
	.quad	0x3fdd1efb6dca07f6              # double 0.45501599999999998
	.quad	0x3fd6c0053e2d6239              # double 0.35547000000000001
	.quad	0x3fe1606748e47560              # double 0.543018
	.quad	0x3feae2d40aaeafab              # double 0.84018899999999996
	.quad	0x3fdd8409e55c0fcb              # double 0.46118399999999998
	.quad	0x3fded21bc126a65d              # double 0.481574
	.quad	0x3fdea30121682f94              # double 0.47869899999999999
	.quad	0x3fad89acbc8c0ce9              # double 0.057690999999999999
	.quad	0x3fe2577d955714ba              # double 0.57318000000000002
	.quad	0x3fc42e5de15ca6ca              # double 0.157665
	.quad	0x3fe7cb74ddf86e3b              # double 0.74358599999999997
	.quad	0x3fc2e49f51697f20              # double 0.14760200000000001
	.quad	0x3fd4a19c9d5a187a              # double 0.32236399999999998
	.quad	0x3feb0f861a60d456              # double 0.84564499999999998
	.quad	0x3fe16eb4e981387a              # double 0.54476400000000003
	.quad	0x3fdfdb22d0e56042              # double 0.49775000000000003
	.quad	0x3fb9f23465625a68              # double 0.101352
	.quad	0x3fe4d97b30f8c650              # double 0.65154800000000002
	.quad	0x3f956191148fd9fd              # double 0.020879999999999999
	.quad	0x3fe5b4d48882f0e1              # double 0.67832400000000004
	.quad	0x3fd87a919695d91b              # double 0.38248100000000002
	.quad	0x3fbe1f6cacd184c2              # double 0.11766699999999999
	.quad	0x3fed89b30728e92d              # double 0.92305899999999996
	.quad	0x3fe3bd48cb4aec8d              # double 0.61685599999999996
	.quad	0x3fc55011904b3c3e              # double 0.16650599999999999
	.quad	0x3fee2ab042528ae7              # double 0.94271099999999997
	.quad	0x3fbb22291fb3fa6e              # double 0.10599
	.quad	0x3fdd401c4fc1df33              # double 0.457038
	.quad	0x3fe03c07ee0b0af6              # double 0.507328
	.quad	0x3fbc804102ff8ec1              # double 0.111332
	.quad	0x3fed7e6f71a7e308              # double 0.92168399999999995
	.quad	0x3fe2d96a6a01259a              # double 0.58904000000000001
	.quad	0x3fdce0c176577532              # double 0.45121800000000001
	.quad	0x3fea5b24e9c45458              # double 0.82362599999999997
	.quad	0x3fed229845dc8323              # double 0.91047299999999998
	.quad	0x3fe047b24638c975              # double 0.50875199999999998
	.quad	0x3fe8eab9b23dd54e              # double 0.77865300000000004
	.quad	0x3fe65bc44bf4cb19              # double 0.69870200000000005
	.quad	0x3fe1ca42aed13943              # double 0.55593999999999999
	.quad	0x3fefb95c42203600              # double 0.99137699999999995
	.quad	0x3fe48c3f3e0370ce              # double 0.64212000000000002
	.quad	0x3feacaf0bf1a5ca3              # double 0.83727300000000004
	.quad	0x3f8868fd199bb279              # double 0.011919000000000001
	.quad	0x3fb07f455a7d2418              # double 0.064441999999999999
	.quad	0x3fefda09cc319c5a              # double 0.99536599999999997
	.quad	0x3fd8f0bae89eba6b              # double 0.38969300000000001
	.quad	0x3fde9f23465625a7              # double 0.47846300000000003
	.quad	0x3fc4a8d21bc126a6              # double 0.16140199999999999
	.quad	0x3fdae321a2e7f6f5              # double 0.42011300000000001
	.quad	0x3fc1ccc89b0ee49f              # double 0.13906199999999999
	.quad	0x3f776577531db446              # double 0.0057120000000000001
	.quad	0x3fdfe5a35d67ba23              # double 0.49839099999999997
	.quad	0x3fd36f0cfe154435              # double 0.30365300000000001
	.quad	0x3fbff2c3009b3073              # double 0.12479800000000001
	.quad	0x3fa339e279dd3bb0              # double 0.037551000000000001
	.quad	0x3fd06f544bb1af3a              # double 0.256795
	.quad	0x3fcc4ec636b09635              # double 0.22115399999999999
	.quad	0x3fb202d9cf13ceea              # double 0.070356000000000002
	.quad	0x3fd134a01abd1aa8              # double 0.26883699999999999
	.quad	0x3fd5f566490a350d              # double 0.34310299999999999
	.quad	0x3fe11b456b441bb9              # double 0.53457900000000003
	.quad	0x3fe6d21ff2e48e8a              # double 0.71314999999999995
	.quad	0x3fe9f72b4528283d              # double 0.81142199999999998
	.quad	0x3febfce746cb966c              # double 0.87462200000000001
	.quad	0x3fcaa6223e186983              # double 0.20819499999999999
	.quad	0x3fc546c332f01755              # double 0.16622200000000001
	.quad	0x3fd5d3910c2c5e2d              # double 0.34103800000000001
	.quad	0x3feb17939a7c17a9              # double 0.84662800000000005
	.quad	0x3fe40ec311622813              # double 0.62680199999999997
	.quad	0x3fc2abf76a2f48c3              # double 0.145873
	.quad	0x3feae36f3b213e3e              # double 0.84026299999999998
	.quad	0x3fc0a83b1d0c8041              # double 0.130134
	.quad	0x3fdc5f02c4d65e46              # double 0.443299
	.quad	0x3fe70ce703afb7e9              # double 0.72032499999999999
	.quad	0x3f52018a43bb40b3              # double 0.0010989999999999999
	.quad	0x3fcab70ac3a860dd              # double 0.20871100000000001
	.quad	0x3fa6dc7ef177a701              # double 0.044651000000000003
	.quad	0x3fa178f68be2f7b1              # double 0.034125999999999997
	.quad	0x3fe16612839042d9              # double 0.54371000000000003
	.quad	0x3fee42a8869c66d3              # double 0.94563699999999995
	.quad	0x3fea95ad106ee30d              # double 0.83077100000000004
	.quad	0x3fd736f7e3d1cc10              # double 0.36273
	.quad	0x3fd10c2c5e2cdc01              # double 0.26636799999999999
	.quad	0x3fcf348b220791c5              # double 0.24379100000000001
	.quad	0x3fb65ce5b4245f5b              # double 0.087355000000000002
	.quad	0x3fed1e774eebf65e              # double 0.90996900000000003
	.quad	0x3fe016feb4a6655a              # double 0.502807
	.quad	0x3fdf9691a75cd0bb              # double 0.49356499999999998
	.quad	0x3fce9db65ecc3e32              # double 0.23918800000000001
	.quad	0x3fe48c7e28240b78              # double 0.64215
	.quad	0x3fd1a57eaa2a0a96              # double 0.27572600000000003
	.quad	0x3fe2db2b3461309c              # double 0.58925399999999994
	.quad	0x3fb0f765fd8adaba              # double 0.066275000000000001
	.quad	0x3fbff11f926c7eae              # double 0.124773
	.quad	0x3f933daf8df7a4e8              # double 0.018790000000000001
	.quad	0x3fada5332acfb763              # double 0.057901000000000001
	.quad	0x3fe029d1f601797d              # double 0.50510500000000003
	.quad	0x3fe58205ff1d81f1              # double 0.672122
	.quad	0x3fd7676ea4228998              # double 0.36568800000000001
	.quad	0x3fe5906cca2db61c              # double 0.67388000000000003
	.quad	0x3fdfc5ef62f9ca5c              # double 0.49645600000000001
	.quad	0x3faf8e3ac0c62e4d              # double 0.061631999999999999
	.quad	0x3fded844d013a92a              # double 0.48194999999999999
	.quad	0x3fdb731098d477bc              # double 0.428898
	.quad	0x3feb3c297bfa4c62              # double 0.85109400000000002
	.quad	0x3fd5b50f40e5a35d              # double 0.33917599999999998
	.quad	0x3fec0e0c9d9d3459              # double 0.87671500000000002
	.quad	0x3fb1249e44fa0514              # double 0.066964999999999997
	.quad	0x3fbc7d5ed06fef7c              # double 0.111288
	.quad	0x3fe2c04a72ead927              # double 0.58597299999999997
	.quad	0x3fdcc9f2fdb8fde3              # double 0.449826
	.quad	0x3fd7203e63e8dda5              # double 0.36134300000000003
	.quad	0x3fd6b9cf9a06a6e3              # double 0.35509099999999999
	.quad	0x3fe412513b5bf6a1              # double 0.62723600000000002
	.quad	0x3fc84a515ce9e5e2              # double 0.18976799999999999
	.quad	0x3fe29aa3f034b0e2              # double 0.58137700000000003
	.quad	0x3fe9029ae4f33440              # double 0.78156800000000004
	.quad	0x3feb3c77143393ab              # double 0.85113099999999997
	.quad	0x3feae050374ff866              # double 0.83988200000000002
	.quad	0x3fe65d9c27e95315              # double 0.69892699999999996
	.quad	0x3fc2e525892684cf              # double 0.147618
	.quad	0x3fe42231832fcac9              # double 0.62917400000000001
	.quad	0x3fe6145d851654d6              # double 0.68998599999999999
	.quad	0x3fde7168f8e7ddca              # double 0.47567199999999998
	.quad	0x3fc6848beb5b2d4d              # double 0.17591999999999999
	.quad	0x3fe2f2b4528283d3              # double 0.59212699999999996
	.quad	0x3fe910624dd2f1aa              # double 0.78325
	.quad	0x3fce2fb5d031055c              # double 0.23583100000000001
	.quad	0x3fa6030c23fab10c              # double 0.042992000000000002
	.quad	0x3fbf2d2bb23571d2              # double 0.121783
	.quad	0x3fdd4fd2a62aa194              # double 0.45799699999999999
	.quad	0x3fdcc3eb7cbb3c82              # double 0.44945800000000002
	.quad	0x3fd7769ec2ce464a              # double 0.36661500000000002
	.quad	0x3fdc5bb7b6bb1290              # double 0.44309799999999999
	.quad	0x3fc0a4b124d099e1              # double 0.130026
	.quad	0x3fc6daf4adbc664d              # double 0.17855699999999999
	.quad	0x3fc370c564f97edc              # double 0.15187899999999999
	.quad	0x3fb9b0ab2e1693c0              # double 0.100352
	.quad	0x3fe2111276fb0920              # double 0.56458399999999997
	.quad	0x3fec7b480a5accd5              # double 0.89004899999999998
	.quad	0x3fd07353b4b2fa94              # double 0.25703900000000002
	.quad	0x3fec7c69728a6117              # double 0.89018699999999995
	.quad	0x3fa973b85e80bed7              # double 0.049710999999999998
	.quad	0x3fca8c60cbf2b23a              # double 0.20740900000000001
	.quad	0x3fdafdb8fde2ef4e              # double 0.421736
	.quad	0x3fd3dff822bbecab              # double 0.31054500000000002
	.quad	0x3fbbcdee34fc610f              # double 0.108611
	.quad	0x3fe333764f11b60b              # double 0.60003200000000001
	.quad	0x3fc9f11f926c7eae              # double 0.20267099999999999
	.quad	0x3fe68c0ad03d9a95              # double 0.70459499999999997
	.quad	0x3fe159ddc1e7967d              # double 0.54222000000000004
	.quad	0x3fdb5ddd2ae8e1d6              # double 0.42760399999999998
	.quad	0x3fe76f86a098915c              # double 0.73236400000000001
	.quad	0x3fe21aa821f2990f              # double 0.56575399999999998
	.quad	0x3fe15bff04577d95              # double 0.54247999999999996
	.quad	0x3feea1b7e0ac7da2              # double 0.95724100000000001
	.quad	0x3feda3443d46b26c              # double 0.92618
	.quad	0x3fc3a52263d816ad              # double 0.153477
	.quad	0x3fe7d01e2584f4c7              # double 0.74415500000000001
	.quad	0x3fb9fb6134ce3de6              # double 0.101492
	.quad	0x3fe6d714b9cb6849              # double 0.71375500000000003
	.quad	0x3fef97fc7607c41a              # double 0.98730300000000004
	.quad	0x3fc2c1ebc83a96d5              # double 0.14654300000000001
	.quad	0x3fd783e8576cce5f              # double 0.36742599999999997
	.quad	0x3fe94b9cb6848beb              # double 0.79047999999999996
	.quad	0x3fbdb9e8c47a17f4              # double 0.116118
	.quad	0x3fc90092ccf6be38              # double 0.19533
	.quad	0x3fe90fadf2ecf206              # double 0.78316399999999997
	.quad	0x3fbaae8e1d6494d5              # double 0.104226
	.quad	0x3fbaababead4f590              # double 0.104182
	.quad	0x3fe6d6605ee568a5              # double 0.713669
	.quad	0x3fce6540cc78e9f7              # double 0.23746500000000001
	.quad	0x3fd0d2806af46aa1              # double 0.26284800000000003
	.quad	0x3fce200c0f01fb83              # double 0.23535300000000001
	.quad	0x3fe7af2b66b6177f              # double 0.74013300000000004
	.quad	0x3fe68b6f9fcb0c02              # double 0.70452099999999995
	.quad	0x3fd7ab474107314d              # double 0.36982900000000002
	.quad	0x3fe25f4c2b51bd62              # double 0.574133
	.quad	0x3fe8f04ddb5525cc              # double 0.77933399999999997
	.quad	0x3fedd8622c450269              # double 0.93266400000000005
	.quad	0x3fdebca9691a75cd              # double 0.480265
	.quad	0x3f9e64f54d1e96c4              # double 0.029682
	.quad	0x3fde5182a9930be1              # double 0.47372500000000001
	.quad	0x3fe2cc9c90c4dec2              # double 0.58747700000000003
	.quad	0x3fea0d0247021d11              # double 0.81408800000000003
	.quad	0x3fdae4cd74927914              # double 0.42021500000000001
	.quad	0x3fd3b1ee2435696e              # double 0.30773499999999998
	.quad	0x3f8800218def416c              # double 0.011719
	.quad	0x3fe49183b60285ec              # double 0.64276299999999997
	.quad	0x3faa2834d26fa3fd              # double 0.051088000000000001
	.quad	0x3fb0d21bc126a65d              # double 0.065706000000000001
	.quad	0x3fdfa2ec28b2a6b1              # double 0.49431900000000001
	.quad	0x3fd1a7008a697aee              # double 0.27581800000000001
	.quad	0x3fb9b0142f61ed5b              # double 0.100343
	.quad	0x3fc9e5753a3ec02f              # double 0.20231499999999999
	.quad	0x3fed65cf67b1c001              # double 0.91867799999999999
	.quad	0x3fd14562e09fe868              # double 0.26985999999999999
	.quad	0x3fc86d71f36262cc              # double 0.19084000000000001
	.quad	0x3fd01f75104d551d              # double 0.25191999999999998
	.quad	0x3fd7effe2a3cea6c              # double 0.37402299999999999
	.quad	0x3fdd3636f3b213e4              # double 0.45643400000000001
	.quad	0x3fe32d2135daad60              # double 0.59925899999999999
	.quad	0x3fb25119ce075f70              # double 0.071550000000000002
	.quad	0x3fc562e90364388f              # double 0.16708100000000001
	.quad	0x3fe792e40852b4d9              # double 0.73668100000000003
	.quad	0x3fbf314ca925fe97              # double 0.121846
	.quad	0x3fde11dbca9691a7              # double 0.46983999999999998
	.quad	0x3fe3a109d0635a42              # double 0.61340799999999995
	.quad	0x3fe88adcd2d44dcb              # double 0.76695100000000005
	.quad	0x3fdd15b573eab368              # double 0.45445000000000002
	.quad	0x3fead38476f2a5a4              # double 0.83831999999999995
	.quad	0x3fc8488c60cbf2b2              # double 0.18971399999999999
	.quad	0x3fe6b3edd8b60f1b              # double 0.70946399999999998
	.quad	0x3fe8219439de481f              # double 0.75409899999999996
	.quad	0x3fe70e94ee392e1f              # double 0.72053
	.quad	0x3fd9aa1d755bccaf              # double 0.40100799999999998
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
