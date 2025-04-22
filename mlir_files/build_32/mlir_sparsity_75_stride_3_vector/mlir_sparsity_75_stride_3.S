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
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	131                             # 0x83
	.quad	144                             # 0x90
	.quad	162                             # 0xa2
	.quad	202                             # 0xca
	.quad	216                             # 0xd8
	.quad	236                             # 0xec
	.quad	280                             # 0x118
	.quad	285                             # 0x11d
	.quad	296                             # 0x128
	.quad	341                             # 0x155
	.quad	356                             # 0x164
	.quad	370                             # 0x172
	.quad	410                             # 0x19a
	.quad	424                             # 0x1a8
	.quad	439                             # 0x1b7
	.quad	483                             # 0x1e3
	.quad	499                             # 0x1f3
	.quad	513                             # 0x201
	.quad	555                             # 0x22b
	.quad	566                             # 0x236
	.quad	587                             # 0x24b
	.quad	629                             # 0x275
	.quad	646                             # 0x286
	.quad	665                             # 0x299
	.quad	706                             # 0x2c2
	.quad	723                             # 0x2d3
	.quad	743                             # 0x2e7
	.quad	791                             # 0x317
	.quad	810                             # 0x32a
	.quad	831                             # 0x33f
	.quad	882                             # 0x372
	.quad	895                             # 0x37f
	.quad	913                             # 0x391
	.quad	955                             # 0x3bb
	.quad	970                             # 0x3ca
	.quad	980                             # 0x3d4
	.quad	1025                            # 0x401
	.quad	1041                            # 0x411
	.quad	1061                            # 0x425
	.quad	1108                            # 0x454
	.quad	1117                            # 0x45d
	.quad	1128                            # 0x468
	.quad	1173                            # 0x495
	.quad	1192                            # 0x4a8
	.quad	1207                            # 0x4b7
	.quad	1250                            # 0x4e2
	.quad	1264                            # 0x4f0
	.quad	1271                            # 0x4f7
	.quad	1321                            # 0x529
	.quad	1338                            # 0x53a
	.quad	1351                            # 0x547
	.quad	1404                            # 0x57c
	.quad	1417                            # 0x589
	.quad	1432                            # 0x598
	.quad	1475                            # 0x5c3
	.quad	1488                            # 0x5d0
	.quad	1502                            # 0x5de
	.quad	1544                            # 0x608
	.quad	1557                            # 0x615
	.quad	1571                            # 0x623
	.quad	1612                            # 0x64c
	.quad	1632                            # 0x660
	.quad	1651                            # 0x673
	.quad	1697                            # 0x6a1
	.quad	1711                            # 0x6af
	.quad	1725                            # 0x6bd
	.quad	1765                            # 0x6e5
	.quad	1777                            # 0x6f1
	.quad	1792                            # 0x700
	.quad	1837                            # 0x72d
	.quad	1849                            # 0x739
	.quad	1863                            # 0x747
	.quad	1916                            # 0x77c
	.quad	1932                            # 0x78c
	.quad	1943                            # 0x797
	.quad	1986                            # 0x7c2
	.quad	1999                            # 0x7cf
	.quad	2015                            # 0x7df
	.quad	2059                            # 0x80b
	.quad	2070                            # 0x816
	.quad	2084                            # 0x824
	.quad	2131                            # 0x853
	.quad	2147                            # 0x863
	.quad	2161                            # 0x871
	.quad	2205                            # 0x89d
	.quad	2222                            # 0x8ae
	.quad	2238                            # 0x8be
	.quad	2281                            # 0x8e9
	.quad	2295                            # 0x8f7
	.quad	2313                            # 0x909
	.quad	2356                            # 0x934
	.quad	2372                            # 0x944
	.quad	2388                            # 0x954
	.quad	2429                            # 0x97d
	.quad	2443                            # 0x98b
	.quad	2456                            # 0x998
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	81                              # 0x51
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	42                              # 0x2a
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	84                              # 0x54
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	56                              # 0x38
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	52                              # 0x34
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	77                              # 0x4d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3fea322af5771002              # double 0.81862400000000002
	.quad	0x3fe5eaee2003ab86              # double 0.68492799999999998
	.quad	0x3fed1b280f12c27a              # double 0.90956499999999996
	.quad	0x3fe16965f5275eea              # double 0.54411600000000004
	.quad	0x3fd2029f16b11c6d              # double 0.28140999999999999
	.quad	0x3fe96c460ed80a18              # double 0.79446700000000003
	.quad	0x3fafac6045baf534              # double 0.061862
	.quad	0x3fcf077ccc037931              # double 0.24241599999999999
	.quad	0x3fec24dd2f1a9fbe              # double 0.87949999999999995
	.quad	0x3fd8fa3b9ae0c176              # double 0.39027299999999998
	.quad	0x3fbcf776c4827b70              # double 0.113151
	.quad	0x3fe3a6266fd651b1              # double 0.61403200000000002
	.quad	0x3f8d69d30270f388              # double 0.014362
	.quad	0x3fdbdc443914f484              # double 0.43531900000000001
	.quad	0x3fe083eea209aaa4              # double 0.51610500000000004
	.quad	0x3fb4f3eccc469510              # double 0.081847000000000003
	.quad	0x3fd9c64ba94bbe44              # double 0.40272799999999997
	.quad	0x3fe5c1b75a74c09c              # double 0.67989699999999997
	.quad	0x3fe7c13122b7baed              # double 0.74233300000000002
	.quad	0x3fc0f7d30ad46f58              # double 0.13256299999999999
	.quad	0x3fe123d70a3d70a4              # double 0.53562500000000002
	.quad	0x3fefec8b43958106              # double 0.99762499999999998
	.quad	0x3fe2007570c564f9              # double 0.56255599999999994
	.quad	0x3fd40789613d31ba              # double 0.31296000000000002
	.quad	0x3fea7caa7589efd8              # double 0.82771799999999995
	.quad	0x3fd072f76e6106ab              # double 0.257017
	.quad	0x3fa04ee7c49fd7a1              # double 0.031851999999999998
	.quad	0x3fd4da597d49d7ba              # double 0.32582699999999998
	.quad	0x3fd185c24c404a73              # double 0.273789
	.quad	0x3fc22d8c2a454de8              # double 0.142015
	.quad	0x3fe96612839042d9              # double 0.79371000000000003
	.quad	0x3feda19c9d5a187a              # double 0.92597799999999997
	.quad	0x3fdcf5771001d5c3              # double 0.452482
	.quad	0x3fdeb00ffda4052d              # double 0.47949599999999998
	.quad	0x3fee117720c8cd64              # double 0.93963200000000002
	.quad	0x3fb1330941c8216c              # double 0.067184999999999995
	.quad	0x3fed76427c7c5261              # double 0.920686
	.quad	0x3fe8b17268d32831              # double 0.77166100000000004
	.quad	0x3fe0433f85510d39              # double 0.50820900000000002
	.quad	0x3fe728f3a9b06812              # double 0.72374899999999998
	.quad	0x3fe6b584b1ab0857              # double 0.70965800000000001
	.quad	0x3fce5faebc408d8f              # double 0.23729500000000001
	.quad	0x3fe0d7a786c22681              # double 0.52632500000000004
	.quad	0x3fee690ff9724745              # double 0.95032499999999998
	.quad	0x3fe6f89c5e6ff7e0              # double 0.71784800000000004
	.quad	0x3fd200a7c5ac471b              # double 0.28128999999999998
	.quad	0x3fdb80bed740c415              # double 0.42973299999999998
	.quad	0x3fe0b97785729b28              # double 0.52263999999999999
	.quad	0x3fee5f1bef49cf57              # double 0.94911000000000001
	.quad	0x3fdfa5b530ced4e5              # double 0.49448900000000001
	.quad	0x3fc7d495182a9931              # double 0.18617500000000001
	.quad	0x3fe3133e35c5b4ab              # double 0.59609900000000005
	.quad	0x3fea1d94d0dcfcc6              # double 0.81611100000000003
	.quad	0x3fb7f83382e44b6f              # double 0.093631000000000006
	.quad	0x3fedd1a650614163              # double 0.93184199999999995
	.quad	0x3fd314ca925fe975              # double 0.29814400000000002
	.quad	0x3fec8d413122b7bb              # double 0.89224300000000001
	.quad	0x3fe90de8f6cefed6              # double 0.78294799999999998
	.quad	0x3fca9f623076c051              # double 0.20798900000000001
	.quad	0x3fd821ee675147f1              # double 0.37707099999999999
	.quad	0x3fe2ed04e618ce2d              # double 0.59143299999999999
	.quad	0x3fb76dca07f66e87              # double 0.091519000000000003
	.quad	0x3fec93682730c671              # double 0.89299399999999995
	.quad	0x3fee18d8a979e16d              # double 0.94053299999999995
	.quad	0x3fddcc857f3061c8              # double 0.46560800000000002
	.quad	0x3fc6bd3c36113405              # double 0.17765
	.quad	0x3fd3727dcbddb984              # double 0.30386299999999999
	.quad	0x3fe11dd1a21ea359              # double 0.53488999999999998
	.quad	0x3fcae52deca2552a              # double 0.210119
	.quad	0x3fe7d4de7ea5f84d              # double 0.74473500000000004
	.quad	0x3fe440e38a7e73a3              # double 0.63292099999999996
	.quad	0x3fb42e019b0ab2e1              # double 0.078826999999999994
	.quad	0x3fe800d3cff64cf9              # double 0.75010100000000002
	.quad	0x3fe2664d3bf2f556              # double 0.57498800000000005
	.quad	0x3fed0ebaade657b8              # double 0.90804799999999997
	.quad	0x3fe9ec82e019b0ab              # double 0.81012099999999998
	.quad	0x3feb7a54c5543287              # double 0.85868299999999997
	.quad	0x3fe6136e71cda2b6              # double 0.68987200000000004
	.quad	0x3fe0bc74fb549f95              # double 0.52300500000000005
	.quad	0x3fe240ca600b0293              # double 0.57040900000000005
	.quad	0x3fce533b10774688              # double 0.23691499999999999
	.quad	0x3fd05b4aa9717df2              # double 0.25557200000000002
	.quad	0x3feb67dfe32a0664              # double 0.85643000000000002
	.quad	0x3fed51bf7ad4b274              # double 0.91622899999999996
	.quad	0x3fdd041461b6d43d              # double 0.453374
	.quad	0x3fc8ee2003ab862b              # double 0.194767
	.quad	0x3f87e996312f4cf5              # double 0.011676000000000001
	.quad	0x3fd58d5410f94c88              # double 0.33675100000000002
	.quad	0x3fe9904d551d68c7              # double 0.79886500000000005
	.quad	0x3fe3c8de2ac32229              # double 0.61826999999999999
	.quad	0x3fd9fa3b9ae0c176              # double 0.40589799999999998
	.quad	0x3fdb675147f13059              # double 0.42818099999999998
	.quad	0x3fe8c02f2f987400              # double 0.77346000000000004
	.quad	0x3fdd2ac753e707e1              # double 0.45573599999999997
	.quad	0x3fe7ee84ad794a6f              # double 0.74786600000000003
	.quad	0x3fb747304039abf3              # double 0.090929999999999997
	.quad	0x3fab68f08461f9f0              # double 0.053534999999999999
	.quad	0x3fb75ce18266772d              # double 0.091260999999999995
	.quad	0x3fd01bf37b8d3f18              # double 0.25170599999999999
	.quad	0x3fd5c74fb549f948              # double 0.34028999999999998
	.quad	0x3feccbec679cc74c              # double 0.89989300000000005
	.quad	0x3feb9b79d909f1f1              # double 0.86272899999999997
	.quad	0x3fe90e410b630a91              # double 0.78298999999999996
	.quad	0x3fdb1b36bd2b6f1a              # double 0.42353600000000002
	.quad	0x3fc66d71f36262cc              # double 0.17521500000000001
	.quad	0x3fdeb93037d63023              # double 0.48005300000000001
	.quad	0x3fc68d3ae685db77              # double 0.17618500000000001
	.quad	0x3f9dea897635e743              # double 0.029215000000000001
	.quad	0x3fdef13cee9dd7ed              # double 0.48347400000000001
	.quad	0x3fdd95b78cc9a77e              # double 0.46226299999999998
	.quad	0x3feaed2aa5c5f7c6              # double 0.84145099999999995
	.quad	0x3fefe659d12cadde              # double 0.99686900000000001
	.quad	0x3fd15a4acf312b1b              # double 0.27113599999999999
	.quad	0x3feee07e5a78f25a              # double 0.96490399999999998
	.quad	0x3fdbe0589acbc8c1              # double 0.43556800000000001
	.quad	0x3fd5077ccc037931              # double 0.32858199999999999
	.quad	0x3f84f82f51266341              # double 0.010239
	.quad	0x3fe72d0c3d25247d              # double 0.72424900000000003
	.quad	0x3fe5075f6fd21ff3              # double 0.65715000000000001
	.quad	0x3fd61b5c7cd898b3              # double 0.34542
	.quad	0x3fdde492bc2fc697              # double 0.46707599999999999
	.quad	0x3fd0577531db445f              # double 0.25533800000000001
	.quad	0x3fd165a14488c60d              # double 0.27182800000000001
	.quad	0x3fb69930be0ded29              # double 0.088275000000000006
	.quad	0x3fe6c38088509bfa              # double 0.71136500000000003
	.quad	0x3fe3dfa22706d506              # double 0.62104899999999996
	.quad	0x3fe24914b167ec78              # double 0.57142099999999996
	.quad	0x3f710c2c5e2cdc01              # double 0.0041619999999999999
	.quad	0x3fed06a098915bdd              # double 0.90705899999999995
	.quad	0x3fdeb5e0f7fcfc40              # double 0.47985100000000003
	.quad	0x3fde3a6ce358298d              # double 0.47231600000000001
	.quad	0x3fd2e38eb0318b93              # double 0.29513899999999998
	.quad	0x3fe260114d2f5dbc              # double 0.57422700000000004
	.quad	0x3fd2fb0d51f81a58              # double 0.29657299999999998
	.quad	0x3fb7bfe7e1fc08fa              # double 0.092771999999999993
	.quad	0x3fb0115df6555c53              # double 0.062765000000000001
	.quad	0x3fb93708aac96cc6              # double 0.098496
	.quad	0x3fbecbb7f9d6f113              # double 0.120296
	.quad	0x3fec6516db0dd830              # double 0.88734000000000002
	.quad	0x3febe78183f91e64              # double 0.87200999999999995
	.quad	0x3fea8140dd3fe197              # double 0.82827799999999996
	.quad	0x3fe2777292c49342              # double 0.57708099999999996
	.quad	0x3fd9534bd76ee73e              # double 0.39570899999999998
	.quad	0x3fcb3ef6b5d462c3              # double 0.21285899999999999
	.quad	0x3fd933ce63a5c1c6              # double 0.393787
	.quad	0x3feff14db59578a3              # double 0.99820600000000003
	.quad	0x3fd12e7b3d8e0008              # double 0.26846199999999998
	.quad	0x3fdb856a37ac3eb8              # double 0.43001800000000001
	.quad	0x3fd2dfdac68a936c              # double 0.29491299999999998
	.quad	0x3fe7fab7564302b4              # double 0.74935499999999999
	.quad	0x3fe9c8d3ae685db7              # double 0.80576499999999995
	.quad	0x3fe249ba5e353f7d              # double 0.57150000000000001
	.quad	0x3fef127913e81451              # double 0.971005
	.quad	0x3fe664de3b8a19ca              # double 0.69981300000000002
	.quad	0x3fde45f9df548ece              # double 0.47302100000000002
	.quad	0x3fe6644d87724fa9              # double 0.69974400000000003
	.quad	0x3fdd38cda6e75ff6              # double 0.456592
	.quad	0x3fdc72e6a76965f5              # double 0.44451299999999999
	.quad	0x3fee1c3265add9c2              # double 0.94094199999999995
	.quad	0x3fe98e94ee392e1f              # double 0.798655
	.quad	0x3fcb48a159817b96              # double 0.21315400000000001
	.quad	0x3fec6b441bb8c32b              # double 0.88809400000000005
	.quad	0x3fb451fc4c165908              # double 0.079376000000000002
	.quad	0x3fd95f84cad57bc8              # double 0.396455
	.quad	0x3fc3d95dd4c76d11              # double 0.15507099999999999
	.quad	0x3fe7901d19157abc              # double 0.73634200000000005
	.quad	0x3fc7c0096feb4a66              # double 0.18554799999999999
	.quad	0x3fe4ee807bbb6241              # double 0.65411399999999997
	.quad	0x3fd0710cb295e9e2              # double 0.25690000000000002
	.quad	0x3fe59986b9c304cd              # double 0.67499100000000001
	.quad	0x3fd6d5842b734b51              # double 0.35678199999999999
	.quad	0x3fbd2ce032db1e9f              # double 0.113966
	.quad	0x3fc6d08919ef954f              # double 0.17823900000000001
	.quad	0x3febcb1ee2435697              # double 0.86854500000000001
	.quad	0x3fca91c087442c80              # double 0.20757300000000001
	.quad	0x3fb765ba6efc371e              # double 0.091396000000000005
	.quad	0x3fd94a05dd8f92b0              # double 0.39514300000000002
	.quad	0x3fe8a54e6e221c8a              # double 0.77017899999999995
	.quad	0x3fb15e17e34b9453              # double 0.067842
	.quad	0x3fe560807357e671              # double 0.66803000000000001
	.quad	0x3fefe4bec679cc75              # double 0.99667300000000003
	.quad	0x3fe86759ab6d00b4              # double 0.76261599999999996
	.quad	0x3fc1cc9ea9a3d2d8              # double 0.13905699999999999
	.quad	0x3fe4eebf65dbfceb              # double 0.65414399999999995
	.quad	0x3fe82dddf43c7d5f              # double 0.75559900000000002
	.quad	0x3fd5090f733a8a40              # double 0.32867800000000003
	.quad	0x3fd7f2a172abef07              # double 0.37418400000000002
	.quad	0x3faabb23571d1d47              # double 0.052208999999999998
	.quad	0x3fb74b51372a38b9              # double 0.090993000000000004
	.quad	0x3fdfb2e59af9ebea              # double 0.49529400000000001
	.quad	0x3fe45ad538ac18f8              # double 0.63608799999999999
	.quad	0x3fe3ce0daa0cae64              # double 0.61890299999999998
	.quad	0x3fe8965907d91255              # double 0.76835299999999995
	.quad	0x3fbbabfb9bed30f0              # double 0.10809299999999999
	.quad	0x3fd0379fa97e132b              # double 0.25339499999999998
	.quad	0x3fddadd9c27e9531              # double 0.46373599999999998
	.quad	0x3fbd435ac8a37260              # double 0.11430899999999999
	.quad	0x3fa2fea3df6db941              # double 0.037099
	.quad	0x3fe2396d0917d6b6              # double 0.56950999999999996
	.quad	0x3fd4f3882278d0cc              # double 0.32736399999999999
	.quad	0x3fe2a9691a75cd0c              # double 0.58318000000000003
	.quad	0x3fc77c5692b3cc4b              # double 0.18348200000000001
	.quad	0x3fd60aaeafab53d6              # double 0.34440199999999999
	.quad	0x3fe01b8023a6ce36              # double 0.50335700000000005
	.quad	0x3fe454bad7d7c2ca              # double 0.63534299999999999
	.quad	0x3fb75371971c10d8              # double 0.091117000000000004
	.quad	0x3fc14ae429e0a41a              # double 0.135098
	.quad	0x3fd7ab68cef672b9              # double 0.36983700000000003
	.quad	0x3fc579e9d0e991ff              # double 0.16778299999999999
	.quad	0x3faeeb4e9813879c              # double 0.060388999999999998
	.quad	0x3fe00a67620ee8d1              # double 0.50126999999999999
	.quad	0x3fea01cf7878b7a2              # double 0.81272100000000003
	.quad	0x3fc9ddc1e7967caf              # double 0.20208000000000001
	.quad	0x3fdfaad601ffb481              # double 0.49480200000000002
	.quad	0x3feadf3300de4c51              # double 0.83974599999999999
	.quad	0x3febad83c6c97d8d              # double 0.86493100000000001
	.quad	0x3fd8f61240746456              # double 0.390019
	.quad	0x3fca92bc2fc69729              # double 0.20760300000000001
	.quad	0x3fe56084a515ce9e              # double 0.66803199999999996
	.quad	0x3fdc87485e3da2f9              # double 0.44575700000000001
	.quad	0x3fdac725c3dee782              # double 0.41840500000000003
	.quad	0x3feaacc70867ad8e              # double 0.83359099999999997
	.quad	0x3fe41567dbb16c1e              # double 0.62761299999999998
	.quad	0x3fc27ea5f84cad58              # double 0.14449000000000001
	.quad	0x3fd5b8e4b87bdcf0              # double 0.33940999999999999
	.quad	0x3fdbe2584f4c6e6e              # double 0.43569000000000002
	.quad	0x3fecf7bbf93ff25e              # double 0.90524099999999996
	.quad	0x3fda379fa97e132b              # double 0.40964499999999998
	.quad	0x3fe5371758e21965              # double 0.66297499999999998
	.quad	0x3fe7a584f4c6e6da              # double 0.73895500000000003
	.quad	0x3fdcb18548a9bcfd              # double 0.44833499999999998
	.quad	0x3fe3aaae297396d1              # double 0.61458500000000005
	.quad	0x3fd207ee0b0af5fd              # double 0.28173399999999998
	.quad	0x3fd7229a5ebb773a              # double 0.361487
	.quad	0x3fbd41c8216c6152              # double 0.114285
	.quad	0x3fcc6fdeb52c9d17              # double 0.222164
	.quad	0x3feab4dcebfec13c              # double 0.83457800000000004
	.quad	0x3fea1af1886df82b              # double 0.81578899999999999
	.quad	0x3fc1d63886594af5              # double 0.13935
	.quad	0x3fdcd3ae685db76b              # double 0.45041999999999999
	.quad	0x3fa510b1feeb2d0a              # double 0.041142999999999999
	.quad	0x3fefbbc903ea704c              # double 0.99167300000000002
	.quad	0x3fdf40d4dc65c704              # double 0.48833199999999999
	.quad	0x3fdcc56d5cfaacda              # double 0.44955000000000001
	.quad	0x3fe594bbe4473cd5              # double 0.67440599999999995
	.quad	0x3fe113059641f645              # double 0.53357200000000005
	.quad	0x3fb70435efa615a9              # double 0.089908000000000002
	.quad	0x3fcbcc1871e6cd29              # double 0.217166
	.quad	0x3fe1f88765ba6efc              # double 0.56158799999999998
	.quad	0x3fee35cbff47735c              # double 0.94406699999999998
	.quad	0x3fd26c2699c7bcc3              # double 0.28785100000000002
	.quad	0x3fcb083558a76102              # double 0.21118799999999999
	.quad	0x3fe288c1db0142f6              # double 0.57919399999999999
	.quad	0x3fe2a2b7baecd078              # double 0.58236299999999996
	.quad	0x3fefa8155d5f56a8              # double 0.98926800000000003
	.quad	0x3fd4e5c4eb56fb8f              # double 0.32652399999999998
	.quad	0x3feb9016ce789e77              # double 0.86133899999999997
	.quad	0x3fe2d9d55e6bc622              # double 0.58909100000000003
	.quad	0x3feb4b61fe21d96f              # double 0.85295200000000004
	.quad	0x3fc36fe2e6ea8544              # double 0.15185199999999999
	.quad	0x3fe21e731d2e0e30              # double 0.56621699999999997
	.quad	0x3fc2e325d4a5df22              # double 0.14755699999999999
	.quad	0x3fe11b90ea9e6eeb              # double 0.53461499999999995
	.quad	0x3fd626634117f844              # double 0.34609299999999998
	.quad	0x3fda7b890d5a5b96              # double 0.41378999999999999
	.quad	0x3fe739c0ebedfa44              # double 0.7258
	.quad	0x3fec57f950b955f8              # double 0.88573900000000005
	.quad	0x3fedfd36f7e3d1cc              # double 0.93715999999999999
	.quad	0x3fe7d935fc3b4f61              # double 0.74526499999999996
	.quad	0x3fdb29068986fcdf              # double 0.42437900000000001
	.quad	0x3fe19bcdbbe0157f              # double 0.55026900000000001
	.quad	0x3fda09784ec636b1              # double 0.40682800000000002
	.quad	0x3fa29d1f601797cc              # double 0.036354999999999998
	.quad	0x3fea95a294141e9b              # double 0.830766
	.quad	0x3fe5a324c8366517              # double 0.67616500000000002
	.quad	0x3fdbbd72bcb5fe54              # double 0.43343799999999999
	.quad	0x3fc4ea39c51dabe2              # double 0.16339799999999999
	.quad	0x3f88e086bdf4c2b5              # double 0.012147
	.quad	0x3fbe04189374bc6a              # double 0.11724999999999999
	.quad	0x3fbd056c508b32cf              # double 0.11336400000000001
	.quad	0x3fe93641700cd856              # double 0.78787300000000005
	.quad	0x3f911947cfa26a23              # double 0.016698000000000001
	.quad	0x3feb887a8d64d7f1              # double 0.86041000000000001
	.quad	0x3fcb3d5347a5b0ff              # double 0.212809
	.quad	0x3fe35573647baa9b              # double 0.60418099999999997
	.quad	0x3fe0c6887a8d64d8              # double 0.52423500000000001
	.quad	0x3fd630984e3ffef4              # double 0.34671600000000002
	.quad	0x3fe23cbc48f10a9a              # double 0.56991400000000003
	.quad	0x3fe9d0203e63e8de              # double 0.80665600000000004
	.quad	0x3fca28027d88c1db              # double 0.204346
	.quad	0x3fc4f1f57b41bfbe              # double 0.163634
	.quad	0x3fb84ddb5525cc42              # double 0.094937999999999994
	.quad	0x3fe0d6b873797460              # double 0.52621099999999998
	.quad	0x3fa4a6ca03c4b09f              # double 0.040335000000000003
	.quad	0x3fd0ee6b8305d95e              # double 0.26455200000000001
	.quad	0x3fed6707e175d13d              # double 0.91882699999999995
	.quad	0x3fdfeb13dfb0d520              # double 0.49872300000000003
	.quad	0x3fc618a43bb40b35              # double 0.172627
	.quad	0x3fb12007dd441355              # double 0.066894999999999996
	.quad	0x3fe372b884406c01              # double 0.60775400000000002
	.quad	0x3fe14d7060bb2bbb              # double 0.54070300000000004
	.quad	0x3fbc2a3486f049aa              # double 0.11001900000000001
	.quad	0x3fca794ea077036d              # double 0.20682700000000001
	.quad	0x3fc073f748a15981              # double 0.12853899999999999
	.quad	0x3fcd2f7f498c3b0c              # double 0.22801199999999999
	.quad	0x3fe4ee58a32f4491              # double 0.65409499999999998
	.quad	0x3fe165fb71fbc5df              # double 0.54369900000000004
	.quad	0x3fe97e08aefb2aae              # double 0.79663499999999998
	.quad	0x3fde109070fbeb9e              # double 0.46976099999999998
	.quad	0x3fe743c5bd0e12e8              # double 0.72702299999999997
	.quad	0x3fe88e043a2163fe              # double 0.76733600000000002
	.quad	0x3fe1a355043e5322              # double 0.55118800000000001
	.quad	0x3fec079a2834d270              # double 0.87592800000000004
	.quad	0x3fe99aed56b00ffe              # double 0.80016200000000004
	.quad	0x3fd1a7e73a365cb3              # double 0.27587299999999998
	.quad	0x3fee4e874c8ffb8b              # double 0.94708599999999998
	.quad	0x3fef800431bde82d              # double 0.98437699999999994
	.quad	0x3fe267ee9142b303              # double 0.575187
	.quad	0x3fe3b62c77574f72              # double 0.61598799999999998
	.quad	0x3fe26dd052934acb              # double 0.575905
	.quad	0x3fdc0c9539b88872              # double 0.43826799999999999
	.quad	0x3fe9c2fc69728a61              # double 0.80505199999999999
	.quad	0x3fc1d7dbf487fcb9              # double 0.1394
	.quad	0x3fc163992c8c5005              # double 0.135852
	.quad	0x3fe61a9973d9ec70              # double 0.690747
	.quad	0x3fec541d8e864021              # double 0.88526800000000005
	.quad	0x3fe09bae46cfc82a              # double 0.51900400000000002
	.quad	0x3fd42046c764ae00              # double 0.31447000000000003
	.quad	0x3fd14e50c5eb313c              # double 0.27040500000000001
	.quad	0x3fdd486f049a9974              # double 0.45754600000000001
	.quad	0x3fe3e39b456b441c              # double 0.62153400000000003
	.quad	0x3fecdd3996fa82e8              # double 0.90200499999999995
	.quad	0x3fed330728e92d56              # double 0.91247900000000004
	.quad	0x3fe4fe80389f83be              # double 0.65606699999999996
	.quad	0x3f73250b524399b3              # double 0.0046740000000000002
	.quad	0x3fbc8461f9f01b86              # double 0.11139499999999999
	.quad	0x3fd466516db0dd83              # double 0.318745
	.quad	0x3fbd0f6273929ed4              # double 0.11351600000000001
	.quad	0x3fed70e6f2e8c048              # double 0.92003199999999996
	.quad	0x3feecf483cafb3b7              # double 0.96280299999999996
	.quad	0x3fc392d1287c200c              # double 0.152918
	.quad	0x3fe47125dd095af3              # double 0.63881200000000005
	.quad	0x3fe393ec460ed80a              # double 0.61180699999999999
	.quad	0x3fea150331e3a7db              # double 0.81506500000000004
	.quad	0x3f93fbbd7b2031cf              # double 0.019515000000000001
	.quad	0x3fd38e53eb399f5e              # double 0.305562
	.quad	0x3feafe75bc44bf4d              # double 0.84356200000000003
	.quad	0x3fcfb2031ceaf252              # double 0.24762000000000001
	.quad	0x3fd9965b20b8066c              # double 0.39980199999999999
	.quad	0x3fbf8ed1bf7ad4b2              # double 0.12327299999999999
	.quad	0x3f562ae4b0186120              # double 0.001353
	.quad	0x3fdcc347e8ccdd94              # double 0.44941900000000001
	.quad	0x3fdbe991ff7164c7              # double 0.43613099999999999
	.quad	0x3fe425bd944aa540              # double 0.62960700000000003
	.quad	0x3fe96bebe1650a46              # double 0.79442400000000002
	.quad	0x3fd43471f79420b4              # double 0.31570100000000001
	.quad	0x3f8e0370cdc8754f              # double 0.014655
	.quad	0x3fef640852b4d8ba              # double 0.98096099999999997
	.quad	0x3fcec386d2ed783e              # double 0.240342
	.quad	0x3fab606b7aa25d8d              # double 0.053469999999999997
	.quad	0x3fc9668c26139000              # double 0.19844200000000001
	.quad	0x3fe66a8b8f14db59              # double 0.70050599999999996
	.quad	0x3fe02aac1094a2ba              # double 0.50520900000000002
	.quad	0x3fe8eaa087ca643d              # double 0.77864100000000003
	.quad	0x3fea30ee49f51698              # double 0.81847300000000001
	.quad	0x3fd288094e5d5b25              # double 0.289553
	.quad	0x3febf7e5eaab0425              # double 0.87401099999999998
	.quad	0x3fba6b8305d95dd5              # double 0.103203
	.quad	0x3fc60f12c27a6373              # double 0.17233499999999999
	.quad	0x3febe72756861e93              # double 0.87196700000000005
	.quad	0x3fdcd8c6d612c6ac              # double 0.45073099999999999
	.quad	0x3fe3f0739b024f66              # double 0.62310200000000004
	.quad	0x3fd9078d92fb19e7              # double 0.39108599999999999
	.quad	0x3fd8a2b5a20ddc62              # double 0.38493100000000002
	.quad	0x3fe8b11622813448              # double 0.771617
	.quad	0x3fe48aa64c2f837b              # double 0.64192499999999997
	.quad	0x3fe28aaeafab53d6              # double 0.57942899999999997
	.quad	0x3fdd19bd4067cf1c              # double 0.45469599999999999
	.quad	0x3fd2b71327243138              # double 0.29242400000000002
	.quad	0x3fb9718eb8950764              # double 0.099389000000000005
	.quad	0x3fec46b484d76ab6              # double 0.88363100000000006
	.quad	0x3fe43395c4220360              # double 0.631297
	.quad	0x3fe275b1c8648840              # double 0.57686700000000002
	.quad	0x3fc6aae297396d09              # double 0.17709
	.quad	0x3fbfaf31b152f3c3              # double 0.123767
	.quad	0x3fe135393250b524              # double 0.53774699999999998
	.quad	0x3fc8ac53b0813cac              # double 0.19275900000000001
	.quad	0x3fd834eb9a176ddb              # double 0.37823000000000001
	.quad	0x3fe4165d3996fa83              # double 0.62773000000000001
	.quad	0x3fabc74fb549f948              # double 0.054254999999999998
	.quad	0x3fee7f950b955f78              # double 0.95307399999999997
	.quad	0x3fdfce0b912dba4d              # double 0.49695099999999998
	.quad	0x3fda049a9973d9ec              # double 0.40653099999999998
	.quad	0x3fec0f32378ab0c9              # double 0.87685500000000005
	.quad	0x3fe16e30caa326e1              # double 0.54470099999999999
	.quad	0x3fe8f08461f9f01c              # double 0.77936000000000005
	.quad	0x3f8ba237cdcca70d              # double 0.013493
	.quad	0x3fe7224edf612407              # double 0.72293799999999997
	.quad	0x3fefab3892ee84ad              # double 0.98965099999999994
	.quad	0x3fd23f5f91600f34              # double 0.28511799999999998
	.quad	0x3fecea747d805e5f              # double 0.90361999999999998
	.quad	0x3febde28aa433509              # double 0.870869
	.quad	0x3fdfc13fd0d0678c              # double 0.49617
	.quad	0x3fddd91ab8e8ea3a              # double 0.46637600000000001
	.quad	0x3fcef8df7a4e7ab7              # double 0.24196999999999999
	.quad	0x3f9db1209edbf8ba              # double 0.028996000000000001
	.quad	0x3fd854c122749f0e              # double 0.38017299999999998
	.quad	0x3f8ef8487b99d452              # double 0.015122
	.quad	0x3fba44e93e1c9b41              # double 0.102614
	.quad	0x3fe71f644955b467              # double 0.72258199999999995
	.quad	0x3fa728c79f666235              # double 0.045233000000000002
	.quad	0x3fe169142b302f73              # double 0.54407700000000003
	.quad	0x3fbe3608d08919f0              # double 0.11801200000000001
	.quad	0x3fa4e789e774eebf              # double 0.040828999999999997
	.quad	0x3fe6e2a80064a9ce              # double 0.71516800000000003
	.quad	0x3feefabb8800eae2              # double 0.96810700000000005
	.quad	0x3fbc9f623076c051              # double 0.111807
	.quad	0x3fe4ae62131a8ef7              # double 0.64628699999999994
	.quad	0x3fe0fd2e94680171              # double 0.53090599999999999
	.quad	0x3fd1467be553ac4f              # double 0.26992699999999997
	.quad	0x3fe421cac083126f              # double 0.62912500000000005
	.quad	0x3fe15ec5f394b7b3              # double 0.54281900000000005
	.quad	0x3fee98aeb80ecfa7              # double 0.95613800000000004
	.quad	0x3fcdbca9691a75cd              # double 0.23232
	.quad	0x3feef36cdf266ba5              # double 0.96721500000000004
	.quad	0x3fd9161a1db877ab              # double 0.39197399999999999
	.quad	0x3fee563886594af5              # double 0.94802500000000001
	.quad	0x3fe21b25f633ce64              # double 0.56581400000000004
	.quad	0x3fd7ae85b9e8c47a              # double 0.37002699999999999
	.quad	0x3fe09309c7ffde72              # double 0.51794899999999999
	.quad	0x3fbc1cb46bacf744              # double 0.10981299999999999
	.quad	0x3fddd19157abb880              # double 0.465916
	.quad	0x3fa82b40f66a5508              # double 0.047204999999999997
	.quad	0x3feee1c79b34a44c              # double 0.96506099999999994
	.quad	0x3f863dc486ad2dcb              # double 0.01086
	.quad	0x3fec176bc1eff9f8              # double 0.87785899999999994
	.quad	0x3fe8563a9f383f0c              # double 0.76052600000000003
	.quad	0x3fc312a94ff0025c              # double 0.149007
	.quad	0x3fca73eee5258927              # double 0.20666300000000001
	.quad	0x3fe5bacf7446f9ba              # double 0.67905400000000005
	.quad	0x3fe62eb3dd11be6e              # double 0.69320099999999996
	.quad	0x3fe1aa62aa19439e              # double 0.55204900000000001
	.quad	0x3f8cec84f8f8a4c2              # double 0.014123
	.quad	0x3fed141e9af5ba2c              # double 0.90870600000000001
	.quad	0x3fe5769014b599aa              # double 0.67072299999999996
	.quad	0x3f98622c45026890              # double 0.023812
	.quad	0x3fcf2630ec311623              # double 0.24335300000000001
	.quad	0x3fe63b29a1b9f98b              # double 0.69472199999999995
	.quad	0x3fea5f28848387df              # double 0.82411599999999996
	.quad	0x3fcbacd5b6805a2d              # double 0.21621199999999999
	.quad	0x3fe47e9d94d0dcfd              # double 0.64045600000000003
	.quad	0x3fdcac1094a2b9d4              # double 0.44800200000000001
	.quad	0x3fb1bed30f062d41              # double 0.069318000000000005
	.quad	0x3fe886b59146e4c1              # double 0.76644400000000001
	.quad	0x3fcd127f5e84f095              # double 0.227127
	.quad	0x3fe27f583a53b8e5              # double 0.57804500000000003
	.quad	0x3fc05bea0ba1f4b2              # double 0.127805
	.quad	0x3fa4d013a92a3055              # double 0.040649999999999999
	.quad	0x3fc4a88effe2a3cf              # double 0.16139400000000001
	.quad	0x3fd43686a4ca4f44              # double 0.315828
	.quad	0x3fe11ffd60e94ee4              # double 0.53515500000000005
	.quad	0x3fd71e4712e40853              # double 0.36122300000000002
	.quad	0x3fdd5410f94c8798              # double 0.458256
	.quad	0x3fdaba6efc371da3              # double 0.41762899999999997
	.quad	0x3fea78e1932d6ece              # double 0.82725599999999999
	.quad	0x3fc6a73f748a1598              # double 0.176979
	.quad	0x3fdacc5b8dc55001              # double 0.41872300000000001
	.quad	0x3fd9f922962cfd8f              # double 0.405831
	.quad	0x3fefb5c7cd898b2f              # double 0.99094000000000004
	.quad	0x3fd9ce39b456b442              # double 0.40321200000000001
	.quad	0x3fe08e325d4a5df2              # double 0.51735799999999998
	.quad	0x3fd46d19dece5711              # double 0.31915900000000003
	.quad	0x3fdd64f11b60ae97              # double 0.45928600000000003
	.quad	0x3fa070da5daf07c0              # double 0.032111000000000001
	.quad	0x3fe4856a37ac3eb8              # double 0.64128600000000002
	.quad	0x3fc5090f733a8a40              # double 0.16433900000000001
	.quad	0x3feab688bda9435b              # double 0.83478200000000002
	.quad	0x3fdc7e56473471f8              # double 0.44521100000000002
	.quad	0x3fd66c58eeae9ee4              # double 0.35036299999999998
	.quad	0x3fe833743632c1f4              # double 0.75628099999999998
	.quad	0x3f9bdad7518b0d0f              # double 0.027202
	.quad	0x3feff867f0aa21a7              # double 0.99907299999999998
	.quad	0x3fb474d9c6b0531a              # double 0.079908000000000006
	.quad	0x3fe23af965b20b80              # double 0.56969899999999996
	.quad	0x3f9fac1d29dc725c              # double 0.030929999999999999
	.quad	0x3fe8f0995aaf78ff              # double 0.77937000000000001
	.quad	0x3fe505fd04a2fcf0              # double 0.65698100000000004
	.quad	0x3fece7d34df04ddb              # double 0.90329899999999996
	.quad	0x3fe432e7b3d8e001              # double 0.63121400000000005
	.quad	0x3fd00c77dd872f34              # double 0.25076100000000001
	.quad	0x3fd953b4b2fa93af              # double 0.39573399999999997
	.quad	0x3fee88ebcc6c54bd              # double 0.95421400000000001
	.quad	0x3fb39e59f2ba9d1f              # double 0.076634999999999995
	.quad	0x3fef8d9945b6c376              # double 0.98603499999999999
	.quad	0x3fea352eb5f5f0b3              # double 0.81899200000000005
	.quad	0x3feb5553ef6b5d46              # double 0.85416599999999998
	.quad	0x3fea2089e34330d7              # double 0.81647199999999998
	.quad	0x3fec59d3458cd20b              # double 0.885965
	.quad	0x3fe7552e2fbe33ad              # double 0.72914800000000002
	.quad	0x3fcab29e4d5d80e5              # double 0.20857600000000001
	.quad	0x3fd2db163baba7b9              # double 0.294622
	.quad	0x3fe2547bedb72820              # double 0.57281300000000002
	.quad	0x3fe651611ba3ca75              # double 0.697434
	.quad	0x3fdd504816f0068e              # double 0.45802500000000002
	.quad	0x3fee0509bf9c62a2              # double 0.93811500000000003
	.quad	0x3fca1f644955b467              # double 0.20408299999999999
	.quad	0x3fd1831f03d145d8              # double 0.27362799999999998
	.quad	0x3fc8bde3fbbd7b20              # double 0.19329499999999999
	.quad	0x3fe4a38327674d16              # double 0.64495999999999998
	.quad	0x3fe4241a261bf37c              # double 0.62940700000000005
	.quad	0x3fb1a62ed352220c              # double 0.068942000000000003
	.quad	0x3fa9804d98394749              # double 0.049806999999999997
	.quad	0x3fdccfcc5b8dc550              # double 0.450183
	.quad	0x3fe924f8726d04e6              # double 0.78576299999999999
	.quad	0x3fb59d451fc4c166              # double 0.084431000000000006
	.quad	0x3fd48c8259e1f3a5              # double 0.32107599999999997
	.quad	0x3fcb46aa087ca644              # double 0.21309400000000001
	.quad	0x3fcd18eb8950763a              # double 0.227323
	.quad	0x3fe0b3e9a6f826ee              # double 0.52196200000000004
	.quad	0x3fde72fba01eeed9              # double 0.47576800000000002
	.quad	0x3fe322df9378ee28              # double 0.59800699999999996
	.quad	0x3fdf7924af0bf1a6              # double 0.49176900000000001
	.quad	0x3fbd13d74d594f27              # double 0.113584
	.quad	0x3fec6d9dfdac68a9              # double 0.88838099999999998
	.quad	0x3fd43e81450efdca              # double 0.31631500000000001
	.quad	0x3fc62d7b634dad32              # double 0.173263
	.quad	0x3fe2ae62131a8ef7              # double 0.58378699999999994
	.quad	0x3fe86b4202d9cf14              # double 0.76309300000000002
	.quad	0x3fe85ab5c39bcba3              # double 0.761073
	.quad	0x3fe42d05f2884838              # double 0.63049599999999995
	.quad	0x3fe352f1a9fbe76d              # double 0.60387500000000005
	.quad	0x3fe83558a7610279              # double 0.75651199999999996
	.quad	0x3fe4f4b1ee243569              # double 0.65486999999999995
	.quad	0x3fe67d08d4bad7d8              # double 0.70276300000000003
	.quad	0x3fe551ed9dfdac69              # double 0.66625100000000004
	.quad	0x3fe09c219eb6390d              # double 0.51905900000000005
	.quad	0x3fefea7264a16a48              # double 0.99736899999999995
	.quad	0x3fc1f8e3ac0c62e5              # double 0.14040800000000001
	.quad	0x3fd43f359ff4fd6d              # double 0.31635799999999997
	.quad	0x3fd2b2d905c03361              # double 0.29216599999999998
	.quad	0x3fea173fb7a5f41b              # double 0.81533800000000001
	.quad	0x3fef72367e414e7f              # double 0.982692
	.quad	0x3fef384db9c7368b              # double 0.97562300000000001
	.quad	0x3fed3eab367a0f91              # double 0.91390000000000005
	.quad	0x3fd3a81dc0db2703              # double 0.30713600000000002
	.quad	0x3fe6ff4128bf3beb              # double 0.71865900000000005
	.quad	0x3fd15d6bebe1650a              # double 0.27132699999999998
	.quad	0x3f82aa5c5f7c675a              # double 0.0091140000000000006
	.quad	0x3fbf840181e03f70              # double 0.123108
	.quad	0x3fea906ee30caa32              # double 0.83013099999999995
	.quad	0x3fb13f4a98aa8651              # double 0.067372000000000001
	.quad	0x3fd89c065b63d3e5              # double 0.384523
	.quad	0x3fe50d9b5e95b78d              # double 0.65791100000000002
	.quad	0x3f5276fb09203a32              # double 0.001127
	.quad	0x3fbfb8e4b87bdcf0              # double 0.123915
	.quad	0x3fd87ea5f84cad58              # double 0.38273000000000001
	.quad	0x3fd89491f2dc2b0f              # double 0.38406800000000002
	.quad	0x3fe79c4da9003eea              # double 0.73782999999999999
	.quad	0x3fef47000431bde8              # double 0.97741699999999998
	.quad	0x3fcf60b6f9fcb0c0              # double 0.245139
	.quad	0x3fe2dd2ae8e1d649              # double 0.58949799999999997
	.quad	0x3fb94024b33daf8e              # double 0.098635
	.quad	0x3fe9994185058dde              # double 0.79995799999999995
	.quad	0x3fefe0285ec3dab6              # double 0.99611300000000003
	.quad	0x3fd5ace67d77fae3              # double 0.33867799999999998
	.quad	0x3fd15a294141e9af              # double 0.27112799999999998
	.quad	0x3fd451697f1f9ad0              # double 0.317469
	.quad	0x3fa6542e557de0d6              # double 0.043610999999999997
	.quad	0x3fecdb20b8066c2b              # double 0.90174900000000002
	.quad	0x3fe53af31b152f3c              # double 0.66344599999999998
	.quad	0x3feaac4f7ec3547e              # double 0.833534
	.quad	0x3fc801b43526527a              # double 0.187552
	.quad	0x3fef39f127f5e84f              # double 0.97582299999999999
	.quad	0x3fa193b3a68b19a4              # double 0.034329999999999999
	.quad	0x3fed66f2e8c0485a              # double 0.91881699999999999
	.quad	0x3fb1c981beb18117              # double 0.069481000000000001
	.quad	0x3fba9b6b2af14552              # double 0.103934
	.quad	0x3fe87a26a22b3893              # double 0.76491100000000001
	.quad	0x3fc5ee6fb4c3c18b              # double 0.17133899999999999
	.quad	0x3fc503d145d85165              # double 0.16417899999999999
	.quad	0x3fd15e2478854cdb              # double 0.27137099999999997
	.quad	0x3fe293e3e29307af              # double 0.58055299999999999
	.quad	0x3fba47991bc55864              # double 0.102655
	.quad	0x3fdeab92c061847f              # double 0.47922199999999998
	.quad	0x3fa5c22ab25b317f              # double 0.042497
	.quad	0x3fdd9613d31b9b67              # double 0.462285
	.quad	0x3fe35cfede97d06c              # double 0.60510200000000003
	.quad	0x3fdcc5fbf83382e4              # double 0.44958399999999998
	.quad	0x3fe5c6b053198288              # double 0.680504
	.quad	0x3fed5e17e34b9453              # double 0.917736
	.quad	0x3fc68ce703afb7e9              # double 0.176175
	.quad	0x3fd4fb2aae297397              # double 0.32783000000000001
	.quad	0x3f94e9813879c411              # double 0.020421999999999999
	.quad	0x3fe43220791c4b90              # double 0.63111899999999999
	.quad	0x3fdf8533b1077469              # double 0.49250500000000003
	.quad	0x3fe3ecdd0d8cb07d              # double 0.622664
	.quad	0x3fe33ccd0fe8ab50              # double 0.60117200000000004
	.quad	0x3fef94d940789614              # double 0.98692000000000001
	.quad	0x3fdb91c4b90214ad              # double 0.43077199999999999
	.quad	0x3fe21dc2f405f6ba              # double 0.566133
	.quad	0x3fd51b4fe79ee02a              # double 0.32979199999999997
	.quad	0x3fc988765ba6efc3              # double 0.19947699999999999
	.quad	0x3f7d6adf71eafee7              # double 0.007182
	.quad	0x3fef18f81e8a2ec3              # double 0.97179800000000005
	.quad	0x3fdf2dba4d6e47dc              # double 0.48716599999999999
	.quad	0x3fd782f512663411              # double 0.36736799999999997
	.quad	0x3febcd9620685554              # double 0.868846
	.quad	0x3fd59702e6644d87              # double 0.33734199999999998
	.quad	0x3fed4768dfbd6a59              # double 0.91496699999999997
	.quad	0x3fec5db76b3bb83d              # double 0.88644000000000001
	.quad	0x3fd39767903211cb              # double 0.306116
	.quad	0x3fe1f5d9a0f0a5f0              # double 0.56126100000000001
	.quad	0x3fea698fe69270b0              # double 0.82538599999999995
	.quad	0x3fe02131a8ef77f2              # double 0.50405199999999994
	.quad	0x3fbdb79d909f1f15              # double 0.11608300000000001
	.quad	0x3fed3bc6eb0b7c35              # double 0.913547
	.quad	0x3fa1d66adb402d17              # double 0.034839000000000002
	.quad	0x3fe2e7210be9424e              # double 0.59071399999999996
	.quad	0x3fc91a005c4651f4              # double 0.196106
	.quad	0x3febfb8b26394fad              # double 0.87445600000000001
	.quad	0x3fca8f7db6e503fb              # double 0.20750399999999999
	.quad	0x3f7a6937d1fe64f5              # double 0.0064479999999999997
	.quad	0x3fe7885d31337eb3              # double 0.73539600000000005
	.quad	0x3fe5fc4e2f37fbf0              # double 0.68704900000000002
	.quad	0x3fbd09d0635a426c              # double 0.113431
	.quad	0x3fe666dbd72bcb60              # double 0.70005600000000001
	.quad	0x3fef77dd872f33ca              # double 0.98338199999999998
	.quad	0x3fd16edaa92e6213              # double 0.27239099999999999
	.quad	0x3fbb9cf9a06a6e33              # double 0.107864
	.quad	0x3fc2b966be7afa72              # double 0.146283
	.quad	0x3fefeda0168b5cc0              # double 0.997757
	.quad	0x3fe9ec1c1d6cf851              # double 0.81007200000000001
	.quad	0x3fd3ab9b23dd54da              # double 0.30734899999999998
	.quad	0x3fce7210be9424e6              # double 0.23785600000000001
	.quad	0x3fd799b2c40d0aaa              # double 0.36875599999999997
	.quad	0x3fe5b020c49ba5e3              # double 0.67774999999999996
	.quad	0x3fe7ecc1ca3a4b55              # double 0.74765099999999995
	.quad	0x3fde1cef240fa9c1              # double 0.47051599999999999
	.quad	0x3fd68be7296f6513              # double 0.35228900000000002
	.quad	0x3fbb4c8ffb8b2639              # double 0.106637
	.quad	0x3fef8008637bd05b              # double 0.984379
	.quad	0x3fd735696e58a32f              # double 0.36263499999999999
	.quad	0x3feae807bbb62414              # double 0.84082400000000001
	.quad	0x3fbfd199bb2788db              # double 0.124292
	.quad	0x3fee54c122749f0e              # double 0.94784599999999997
	.quad	0x3fe8e84ad794a6ec              # double 0.77835600000000004
	.quad	0x3fe5b8b26394face              # double 0.67879599999999995
	.quad	0x3fe2388a8b08dd1e              # double 0.56940199999999996
	.quad	0x3f92bbecaab8a5ce              # double 0.018294999999999999
	.quad	0x3fdb0746455eaee2              # double 0.422319
	.quad	0x3fe0f95703f2d3c8              # double 0.53043700000000005
	.quad	0x3fe520a5269595ff              # double 0.66023500000000002
	.quad	0x3fc213b9f127f5e8              # double 0.14122699999999999
	.quad	0x3fd7fbb0e5e67946              # double 0.37473699999999999
	.quad	0x3fe8544998d045fe              # double 0.76028899999999999
	.quad	0x3fd944bb1af3a14d              # double 0.39482
	.quad	0x3fe8c4a1f080303c              # double 0.77400299999999999
	.quad	0x3fd721f6cacd184c              # double 0.36144799999999999
	.quad	0x3fa6ea854477ff15              # double 0.044757999999999999
	.quad	0x3fc16b228dc981bf              # double 0.13608200000000001
	.quad	0x3fe4b951c5c5718f              # double 0.64762200000000003
	.quad	0x3fae6d373affb04f              # double 0.059427000000000001
	.quad	0x3fb9db877ab32485              # double 0.101006
	.quad	0x3fe24521dda059a7              # double 0.57093899999999997
	.quad	0x3fefdddf43c7d5ed              # double 0.99583399999999999
	.quad	0x3fe2d916872b020c              # double 0.58899999999999997
	.quad	0x3fe2b60285ec3dab              # double 0.58471799999999996
	.quad	0x3fe805dfa871a3b1              # double 0.75071699999999997
	.quad	0x3fb9b54195cc857f              # double 0.100422
	.quad	0x3fe922db61bb05fb              # double 0.78550500000000001
	.quad	0x3feb6d698fe69271              # double 0.85710600000000003
	.quad	0x3fe3ac1b10fd7e46              # double 0.61475900000000006
	.quad	0x3fe7aff2a172abef              # double 0.740228
	.quad	0x3fe357afea3df6dc              # double 0.60445400000000005
	.quad	0x3fee879e59f2ba9d              # double 0.95405499999999999
	.quad	0x3fc8694898f605ab              # double 0.19071299999999999
	.quad	0x3fd5f7a919695d92              # double 0.34324100000000002
	.quad	0x3fe41c5e6ff7dfa0              # double 0.62846299999999999
	.quad	0x3fc772606fac6046              # double 0.18317800000000001
	.quad	0x3fd44a6223e18698              # double 0.31703999999999999
	.quad	0x3fe3916659d12cae              # double 0.61149900000000001
	.quad	0x3fe3b20fb224aada              # double 0.61548599999999998
	.quad	0x3fe654477ff151e7              # double 0.69778799999999996
	.quad	0x3fda30270f388228              # double 0.40918900000000002
	.quad	0x3fe33c89f40a2878              # double 0.60114000000000001
	.quad	0x3fe758c2a454de7f              # double 0.72958500000000004
	.quad	0x3feba2f05a708ede              # double 0.86363999999999996
	.quad	0x3fd99d451fc4c166              # double 0.40022400000000002
	.quad	0x3fe1c41355475a32              # double 0.55518500000000004
	.quad	0x3fce91f2dc2b0ea2              # double 0.23882900000000001
	.quad	0x3fcc36e2eb1c432d              # double 0.22042500000000001
	.quad	0x3fd83458cd20afa3              # double 0.378195
	.quad	0x3fe9767d34df04de              # double 0.79571400000000003
	.quad	0x3fed50635a426bb5              # double 0.91606299999999996
	.quad	0x3fc489e34330d738              # double 0.16045799999999999
	.quad	0x3feecb4f1e4b44a2              # double 0.96231800000000001
	.quad	0x3f66c3fc43b2dd37              # double 0.0027789999999999998
	.quad	0x3fec40181e03f706              # double 0.88282400000000005
	.quad	0x3fecbeb9e492bc30              # double 0.89828200000000002
	.quad	0x3fe9f4107314ca92              # double 0.81104299999999996
	.quad	0x3fe48691ea78af3e              # double 0.64142699999999997
	.quad	0x3fe5728c79f66623              # double 0.67023299999999997
	.quad	0x3fef2f901083dbc2              # double 0.97455599999999998
	.quad	0x3fbefee6fb4c3c19              # double 0.121077
	.quad	0x3fa88787485e3da3              # double 0.047909
	.quad	0x3fe231704ff4341a              # double 0.56853500000000001
	.quad	0x3fc2c5c13fd0d068              # double 0.14666000000000001
	.quad	0x3fe10a73f748a15a              # double 0.53252600000000005
	.quad	0x3fbb37a80cf9e386              # double 0.106318
	.quad	0x3fe989070fbeb9e5              # double 0.79797700000000005
	.quad	0x3fe1e9b17481b21c              # double 0.55977699999999997
	.quad	0x3fdfcc814d72799a              # double 0.49685699999999999
	.quad	0x3fdd7ac3eb7cbb3d              # double 0.46061800000000003
	.quad	0x3fd67fae3608d089              # double 0.35154299999999999
	.quad	0x3f85536933a0407d              # double 0.010413
	.quad	0x3fe86f0cfe154435              # double 0.76355600000000001
	.quad	0x3fd1621fafc8b008              # double 0.27161400000000002
	.quad	0x3fe3b55475a31a4c              # double 0.61588500000000002
	.quad	0x3fcf3d102bc72e27              # double 0.24405099999999999
	.quad	0x3feb6d8d36b4c7f3              # double 0.85712299999999997
	.quad	0x3febf53c579f2346              # double 0.87368599999999996
	.quad	0x3fe12a9930be0ded              # double 0.53644999999999998
	.quad	0x3fe1ddaad601ffb5              # double 0.55830900000000006
	.quad	0x3fcea63305100a39              # double 0.23944699999999999
	.quad	0x3fdfad46f587d6f9              # double 0.49495099999999997
	.quad	0x3fdd9d3458cd20b0              # double 0.46272000000000002
	.quad	0x3fe57d3f5b5fa227              # double 0.671539
	.quad	0x3fe9df6ba0620ab7              # double 0.80852299999999999
	.quad	0x3fe7b82c2bd7f51f              # double 0.741232
	.quad	0x3fe554738a3b57c5              # double 0.66655900000000001
	.quad	0x3fe67e004b7f5a53              # double 0.70288099999999998
	.quad	0x3feec63f141205bc              # double 0.96169999999999999
	.quad	0x3fca433508f648c7              # double 0.205176
	.quad	0x3fc64dc22ab25b31              # double 0.17424799999999999
	.quad	0x3feb5f99c38b04ab              # double 0.85541999999999996
	.quad	0x3fe75ddb1209edc0              # double 0.73020700000000005
	.quad	0x3fa35610adcd2d45              # double 0.037766000000000001
	.quad	0x3fbfc06e19b90eaa              # double 0.12403
	.quad	0x3fe8c6d3f9e7b80b              # double 0.77427100000000004
	.quad	0x3fe755757d5a9eb2              # double 0.729182
	.quad	0x3fe15afaf8594291              # double 0.54235599999999995
	.quad	0x3fed8af1cb89d6ae              # double 0.923211
	.quad	0x3fe00fe047d3d428              # double 0.501938
	.quad	0x3fd13cc07aaef2c7              # double 0.26933299999999999
	.quad	0x3fedfabfb9bed30f              # double 0.936859
	.quad	0x3fe744b6e935b91f              # double 0.72713799999999995
	.quad	0x3f95f0b28522ea10              # double 0.021426000000000001
	.quad	0x3fe2463497b7414a              # double 0.57106999999999997
	.quad	0x3fe7b5ed8d36b4c8              # double 0.74095800000000001
	.quad	0x3fe2558c8eef1bac              # double 0.57294299999999998
	.quad	0x3fcc3c18b502abac              # double 0.220584
	.quad	0x3fd55015c209246c              # double 0.333013
	.quad	0x3fed05058dde7a74              # double 0.90686299999999997
	.quad	0x3fdbae31d712a0ec              # double 0.43250699999999997
	.quad	0x3fe29fd1569f4906              # double 0.582009
	.quad	0x3fdb793dd97f62b7              # double 0.42927500000000002
	.quad	0x3fe56fbd273d5bab              # double 0.66988999999999999
	.quad	0x3feb9ee02a77a2cf              # double 0.86314400000000002
	.quad	0x3f854003254e6e22              # double 0.010376
	.quad	0x3fe4f0e2c12ad81b              # double 0.65440500000000001
	.quad	0x3febdbfceb78897f              # double 0.87060400000000004
	.quad	0x3fd0230fcf80dc33              # double 0.25213999999999998
	.quad	0x3fe7b7414a4d2b2c              # double 0.74112
	.quad	0x3fc071bcdbbe0158              # double 0.128471
	.quad	0x3fe360807357e671              # double 0.60553000000000001
	.quad	0x3fee493c89f40a28              # double 0.94643999999999994
	.quad	0x3fcc4bcad9ad85e0              # double 0.22106300000000001
	.quad	0x3fe98316a055757d              # double 0.79725199999999996
	.quad	0x3fcce4c0df58c08b              # double 0.22573099999999999
	.quad	0x3fc07e73a365cb36              # double 0.128859
	.quad	0x3fe7e5061416377a              # double 0.74670700000000001
	.quad	0x3fc98cda6e75ff61              # double 0.19961100000000001
	.quad	0x3fe7bb8e4b87bdcf              # double 0.741645
	.quad	0x3fe9f1a3b14a9047              # double 0.810747
	.quad	0x3fe60bb906466b1e              # double 0.68893099999999996
	.quad	0x3fc4b81733226c3c              # double 0.16186800000000001
	.quad	0x3fdbea4ebdd334c6              # double 0.43617600000000001
	.quad	0x3fc1636f3b213e3e              # double 0.135847
	.quad	0x3feb1ba3ca7503b8              # double 0.84712399999999999
	.quad	0x3feb43d89ce4a7b5              # double 0.85203200000000001
	.quad	0x3fe4d66adb402d17              # double 0.65117400000000003
	.quad	0x3fe31cde5d18090b              # double 0.59727399999999997
	.quad	0x3fefd05af6c69b5a              # double 0.99418399999999996
	.quad	0x3fee70ae536501e2              # double 0.95125499999999996
	.quad	0x3fa37ef5a964e8b8              # double 0.038078000000000001
	.quad	0x3fecb4dcebfec13c              # double 0.89707800000000004
	.quad	0x3feb73300de4c511              # double 0.85781099999999999
	.quad	0x3fef0cbf2b239a39              # double 0.970306
	.quad	0x3fd2de093532e7b4              # double 0.29480200000000001
	.quad	0x3fd4f87ad080b674              # double 0.32766600000000001
	.quad	0x3fe64083126e978d              # double 0.69537499999999997
	.quad	0x3fefd56d19dece57              # double 0.99480299999999999
	.quad	0x3fe98ca1cef240fb              # double 0.79841700000000004
	.quad	0x3fc1c02afdda8bd2              # double 0.13867699999999999
	.quad	0x3fe170e2c12ad81b              # double 0.54503000000000001
	.quad	0x3fefa220bc382a13              # double 0.988541
	.quad	0x3feaa06c8711d799              # double 0.83208300000000002
	.quad	0x3fb1fea8112ba16e              # double 0.070291999999999993
	.quad	0x3fdac47e49b1fab9              # double 0.41824299999999998
	.quad	0x3fd8a34ca0c282c7              # double 0.384967
	.quad	0x3f7b6c3760bf5d79              # double 0.0066950000000000004
	.quad	0x3fbfbbf93ff25e57              # double 0.123962
	.quad	0x3fe1b00ffda4052d              # double 0.55274199999999996
	.quad	0x3fea4a9cdc443915              # double 0.821608
	.quad	0x3fd638b8ae31d713              # double 0.34721200000000002
	.quad	0x3fcb4bad7d7c2ca1              # double 0.21324699999999999
	.quad	0x3fc825bfad299956              # double 0.18865199999999999
	.quad	0x3fe23352a8438088              # double 0.56876499999999997
	.quad	0x3fd82e8c0485a0be              # double 0.37784099999999998
	.quad	0x3fe358dde7a743a6              # double 0.60459799999999997
	.quad	0x3fd96f19934efcbd              # double 0.39740599999999998
	.quad	0x3fe24bddb9841aac              # double 0.57176099999999996
	.quad	0x3fe82d6a9c560c7c              # double 0.75554399999999999
	.quad	0x3fec5590c0ad03da              # double 0.88544500000000004
	.quad	0x3fee7a8b4bf8fcd6              # double 0.95245899999999994
	.quad	0x3fd9ab8e8ea39c52              # double 0.40109600000000001
	.quad	0x3fc8a43bb40b34e7              # double 0.19251199999999999
	.quad	0x3fd188765ba6efc3              # double 0.27395399999999998
	.quad	0x3fe10461f9f01b86              # double 0.53178499999999995
	.quad	0x3fafdac68a936c59              # double 0.062216
	.quad	0x3febe9707182235b              # double 0.87224599999999997
	.quad	0x3fbab65a9a804966              # double 0.10434499999999999
	.quad	0x3fd628bf3bea91da              # double 0.34623700000000002
	.quad	0x3fd7a06e9ff0cbb0              # double 0.36916700000000002
	.quad	0x3feddf761cbccf29              # double 0.93352800000000002
	.quad	0x3fd6ea5b530ced4e              # double 0.35805399999999998
	.quad	0x3fd813ec460ed80a              # double 0.37621599999999999
	.quad	0x3fe6025bfad29995              # double 0.68778799999999995
	.quad	0x3fb2f9335d249e45              # double 0.074115
	.quad	0x3fe9bef06b37867f              # double 0.804558
	.quad	0x3fd639cd8127b2cc              # double 0.34727799999999998
	.quad	0x3fe9c0ce91c8eac0              # double 0.804786
	.quad	0x3fe2377c02afdda9              # double 0.56927300000000003
	.quad	0x3fc0e9680e065300              # double 0.13212299999999999
	.quad	0x3fc91d606317268d              # double 0.19620899999999999
	.quad	0x3fe53035bd512ec7              # double 0.66213500000000003
	.quad	0x3fee9ad2135daad6              # double 0.956399
	.quad	0x3fd6a4f00ef1348b              # double 0.35381699999999999
	.quad	0x3fd46cdf266ba494              # double 0.31914500000000001
	.quad	0x3fdbd2bf5515054b              # double 0.43473800000000001
	.quad	0x3fea47da1ec4e725              # double 0.82127099999999997
	.quad	0x3fef28283d35eb74              # double 0.97365199999999996
	.quad	0x3fe00bb4d48882f1              # double 0.50142900000000001
	.quad	0x3fe11707182235b5              # double 0.53406100000000001
	.quad	0x3fdf51bd61f5be5e              # double 0.48936400000000002
	.quad	0x3fe99e44fa05143c              # double 0.80057
	.quad	0x3f98fc9363f572de              # double 0.024400999999999999
	.quad	0x3fed080d801b4352              # double 0.90723299999999996
	.quad	0x3fe0da16616b54e3              # double 0.52662200000000003
	.quad	0x3fee052934acaff7              # double 0.93813000000000002
	.quad	0x3fe1c7b677f6b1a3              # double 0.55562900000000004
	.quad	0x3fe51363f572de44              # double 0.65861700000000001
	.quad	0x3fc91758e219652c              # double 0.196025
	.quad	0x3f3f42bb6672fba0              # double 4.7699999999999999E-4
	.quad	0x3fd7e3cd9a52263e              # double 0.37327900000000003
	.quad	0x3feb52f7f498c3b1              # double 0.85387800000000003
	.quad	0x3fd69a2403148777              # double 0.35315800000000003
	.quad	0x3fededfc5cdd50a9              # double 0.93530100000000005
	.quad	0x3fefc38d1d8a5482              # double 0.99262099999999998
	.quad	0x3fe9193d5347a5b1              # double 0.784331
	.quad	0x3fe959a95421c044              # double 0.79219499999999998
	.quad	0x3fd66d4801f75105              # double 0.35042000000000001
	.quad	0x3fe19ee675147f13              # double 0.550647
	.quad	0x3fe1e9f8c21e1d21              # double 0.55981099999999995
	.quad	0x3fa95feda6612839              # double 0.04956
	.quad	0x3fdeef240fa9c12f              # double 0.483346
	.quad	0x3fcd993d5347a5b1              # double 0.231239
	.quad	0x3fdb565c2d278078              # double 0.42714600000000003
	.quad	0x3fc20114d2f5dbba              # double 0.14065800000000001
	.quad	0x3fe808ace24bba13              # double 0.75105900000000003
	.quad	0x3fd4adc8fb86f47b              # double 0.32310699999999998
	.quad	0x3fea21f8e3ac0c63              # double 0.81664700000000001
	.quad	0x3fe9d182a9930be1              # double 0.80682500000000001
	.quad	0x3fe07f562174c4ce              # double 0.515544
	.quad	0x3fdf18ac9f2fdb90              # double 0.48588100000000001
	.quad	0x3fe8612a51e321a3              # double 0.76186100000000001
	.quad	0x3fee7da4052d666b              # double 0.95283700000000005
	.quad	0x3fc9090f733a8a40              # double 0.19558900000000001
	.quad	0x3fc2fdeb52c9d170              # double 0.14837400000000001
	.quad	0x3fc63a8e71476af9              # double 0.17366200000000001
	.quad	0x3fed08637bd05af7              # double 0.90727400000000002
	.quad	0x3fe04c7b02d59d56              # double 0.50933600000000001
	.quad	0x3fe645de9c0229a6              # double 0.69602900000000001
	.quad	0x3fed4bec679cc74c              # double 0.91551800000000005
	.quad	0x3fe24ccccccccccd              # double 0.57187500000000002
	.quad	0x3fca74d1633482bf              # double 0.20669000000000001
	.quad	0x3fe8f6d330941c82              # double 0.78012999999999999
	.quad	0x3fb88a697aeddce8              # double 0.095862000000000003
	.quad	0x3fe544fe36d22425              # double 0.66467200000000004
	.quad	0x3feed2630ec31162              # double 0.96318199999999998
	.quad	0x3fefa92e62131a8f              # double 0.989402
	.quad	0x3fa9ef73c0c1fc8f              # double 0.050654999999999999
	.quad	0x3fd329068986fcdf              # double 0.29937900000000001
	.quad	0x3fddb65a9a804966              # double 0.46425499999999997
	.quad	0x3fcec2374794ea07              # double 0.24030199999999999
	.quad	0x3fe6b0df9bdc69f9              # double 0.70909100000000003
	.quad	0x3fee8ceb356da017              # double 0.95470200000000005
	.quad	0x3fef169a0ad8a116              # double 0.97150899999999996
	.quad	0x3fe4046c764adff8              # double 0.62553999999999998
	.quad	0x3fdab03e20ccff22              # double 0.41700700000000002
	.quad	0x3fd40a4e379b77c0              # double 0.31312899999999999
	.quad	0x3fed89fc6da44849              # double 0.92309399999999997
	.quad	0x3fed0d5629d8409e              # double 0.90787799999999996
	.quad	0x3f96d4801f75104d              # double 0.022294999999999999
	.quad	0x3fc56e8af81626b3              # double 0.167436
	.quad	0x3fc4d70e6f2e8c05              # double 0.16281300000000001
	.quad	0x3fe734a87e38eb03              # double 0.72517799999999999
	.quad	0x3fced5e071c53f3a              # double 0.24090200000000001
	.quad	0x3fe9ff3cf70153bd              # double 0.81240699999999999
	.quad	0x3fecc477ff151e75              # double 0.89898299999999998
	.quad	0x3fea07724fa8b4c0              # double 0.81340900000000005
	.quad	0x3fef2c7b890d5a5c              # double 0.97418000000000004
	.quad	0x3fe884988094e5d6              # double 0.76618600000000003
	.quad	0x3fd9cc144028e4fc              # double 0.40308100000000002
	.quad	0x3fcb7b7414a4d2b3              # double 0.21470500000000001
	.quad	0x3fcd53b4b2fa93af              # double 0.22911699999999999
	.quad	0x3fe6029cfdd22856              # double 0.68781899999999996
	.quad	0x3fe20efbb0e5e679              # double 0.56432899999999997
	.quad	0x3fe84d0bb6ed6777              # double 0.759405
	.quad	0x3fe40e53eb399f5e              # double 0.626749
	.quad	0x3fd3d53cddd6e04c              # double 0.30989
	.quad	0x3fe84d8dbcec84f9              # double 0.759467
	.quad	0x3fedc16bdb1a6d6a              # double 0.92986100000000005
	.quad	0x3fe8666ec9e236c1              # double 0.76250399999999996
	.quad	0x3fe6196744b2b778              # double 0.69060100000000002
	.quad	0x3fcd1f0c34c1a8ac              # double 0.22750999999999999
	.quad	0x3fb529131ec0b567              # double 0.082657999999999995
	.quad	0x3fce1b4bb5e0f7fd              # double 0.235208
	.quad	0x3fdb4aba38759253              # double 0.42643599999999998
	.quad	0x3fbc7e7c06e19b91              # double 0.111305
	.quad	0x3f61cd1c7de5082d              # double 0.002173
	.quad	0x3f990f301eabbcb2              # double 0.024472000000000001
	.quad	0x3fe0b3743632c1f4              # double 0.52190599999999998
	.quad	0x3fc8b313be22e5de              # double 0.192965
	.quad	0x3f95b8561d4306e6              # double 0.021211000000000001
	.quad	0x3fd3b0e1b4bb5e0f              # double 0.30767099999999997
	.quad	0x3fdac200c0f01fb8              # double 0.41809099999999999
	.quad	0x3fe12db402d16b98              # double 0.536829
	.quad	0x3fdd1c25d074213a              # double 0.454843
	.quad	0x3febe47778dd6170              # double 0.87163900000000005
	.quad	0x3fe404c271fff79d              # double 0.62558100000000005
	.quad	0x3fd8587d6f976790              # double 0.38040099999999999
	.quad	0x3fe2a6dacabc5155              # double 0.58286800000000005
	.quad	0x3fe20b34e7685986              # double 0.56386800000000004
	.quad	0x3feca294141e9af6              # double 0.89484600000000003
	.quad	0x3faf9f01b866e43b              # double 0.061760000000000002
	.quad	0x3feb37281fd9ba1b              # double 0.85048299999999999
	.quad	0x3fe2554b8bef8ceb              # double 0.57291199999999998
	.quad	0x3fe26e2eb1c432ca              # double 0.57594999999999996
	.quad	0x3f97689ca18bd662              # double 0.022859999999999998
	.quad	0x3fe1b01a79fec99f              # double 0.55274699999999999
	.quad	0x3fe7831ceaf251c2              # double 0.73475500000000005
	.quad	0x3fe0c942d490e66d              # double 0.52456800000000003
	.quad	0x3fe3e8943e100608              # double 0.62214100000000006
	.quad	0x3fd92c55c96030c2              # double 0.39333099999999999
	.quad	0x3fe7d712a0ec7432              # double 0.745004
	.quad	0x3fd8c17225b749ae              # double 0.38680700000000001
	.quad	0x3fe91a86940357a3              # double 0.78448799999999996
	.quad	0x3fe170ae536501e2              # double 0.54500499999999996
	.quad	0x3fe419780baa582e              # double 0.62810900000000003
	.quad	0x3fc58a86d71f3626              # double 0.16829
	.quad	0x3fd3399f5dfeb8d8              # double 0.30039199999999999
	.quad	0x3fdd132f87ad080b              # double 0.45429599999999998
	.quad	0x3fb99ea57214f052              # double 0.100077
	.quad	0x3fb16638433d6c72              # double 0.067965999999999999
	.quad	0x3febbc60029f16b1              # double 0.86674499999999999
	.quad	0x3febf13cee9dd7ed              # double 0.87319800000000003
	.quad	0x3fd8f3d3a1d323ff              # double 0.38988200000000001
	.quad	0x3fd0a2fcefaa4767              # double 0.25994800000000001
	.quad	0x3fdca77e5eaab042              # double 0.44772299999999998
	.quad	0x3feacc575c0767d3              # double 0.83744399999999997
	.quad	0x3fe677403dddb121              # double 0.70205700000000004
	.quad	0x3fd3a3bddfc9ff93              # double 0.306869
	.quad	0x3fe8de4606748e47              # double 0.77713299999999996
	.quad	0x3fda7d523b3636f4              # double 0.41389900000000002
	.quad	0x3fd4d2c7b890d5a6              # double 0.32536500000000002
	.quad	0x3fe9c90e66cb1034              # double 0.80579299999999998
	.quad	0x3feecca2db61bb06              # double 0.96248
	.quad	0x3fed82602c9081c3              # double 0.92216500000000001
	.quad	0x3febfc158fb43d8a              # double 0.87452200000000002
	.quad	0x3fd381a1554fbdad              # double 0.30478699999999997
	.quad	0x3fed6b80ecfa69be              # double 0.919373
	.quad	0x3fc8af922962cfd9              # double 0.192858
	.quad	0x3fe0031487768167              # double 0.50037600000000004
	.quad	0x3fd4d6451b93037d              # double 0.32557799999999998
	.quad	0x3fdc01cd5f99c38b              # double 0.43761
	.quad	0x3fe8c1a6937d1fe6              # double 0.77363899999999997
	.quad	0x3fde2d40aaeafab5              # double 0.47151199999999999
	.quad	0x3fe6618266772d5e              # double 0.699403
	.quad	0x3fd7dc2f405f6ba0              # double 0.37281399999999998
	.quad	0x3fdd82e44b6e935c              # double 0.46111400000000002
	.quad	0x3fef2617c1bda512              # double 0.97340000000000004
	.quad	0x3fceed4e4c942d49              # double 0.241617
	.quad	0x3fdc7cf5f4e4430b              # double 0.44512699999999999
	.quad	0x3fe83519bd4067cf              # double 0.75648199999999999
	.quad	0x3fe81906cca2db62              # double 0.75305500000000003
	.quad	0x3fa4a48f96e15875              # double 0.040318
	.quad	0x3fcfb738e6d15ad1              # double 0.247779
	.quad	0x3fe8d143bf727137              # double 0.77554500000000004
	.quad	0x3fe3c6f587d6f976              # double 0.61803699999999995
	.quad	0x3feea5742dcf4624              # double 0.95769700000000002
	.quad	0x3febe9899bf5946c              # double 0.87225799999999997
	.quad	0x3fe01c75818c5c9a              # double 0.50347399999999998
	.quad	0x3fea004d98394749              # double 0.81253699999999995
	.quad	0x3fcf324851a86940              # double 0.24372199999999999
	.quad	0x3fc6dcb9a9da597d              # double 0.17861099999999999
	.quad	0x3fd8be6601bc98a2              # double 0.38662099999999999
	.quad	0x3fe81e42e1262025              # double 0.75369399999999998
	.quad	0x3fef01c92ddbdb5e              # double 0.96896800000000005
	.quad	0x3fd0e831ad2135db              # double 0.26417200000000002
	.quad	0x3fd3e36d22424a27              # double 0.31075599999999998
	.quad	0x3feae3736cdf266c              # double 0.84026500000000003
	.quad	0x3fd78409e55c0fcb              # double 0.36743399999999998
	.quad	0x3fe9b89f83be6602              # double 0.80378700000000003
	.quad	0x3fef52ef911cf356              # double 0.97887400000000002
	.quad	0x3fe36cca2db61bb0              # double 0.60702999999999996
	.quad	0x3fe687442c7fbacb              # double 0.70401199999999997
	.quad	0x3fede71cda2b5a21              # double 0.93446200000000001
	.quad	0x3fe8bedb7281fd9c              # double 0.77329800000000004
	.quad	0x3fe066c8f7553693              # double 0.51254699999999997
	.quad	0x3fe257be9856a37b              # double 0.57321100000000003
	.quad	0x3fea21ec4e7253da              # double 0.81664099999999995
	.quad	0x3fc58f4f93bc0a07              # double 0.168436
	.quad	0x3fdd2c59fb1e18f0              # double 0.45583200000000001
	.quad	0x3feb00eae18ac9f3              # double 0.843862
	.quad	0x3fac1615ebfa8f7e              # double 0.054856000000000002
	.quad	0x3fbb01a79fec99f2              # double 0.105494
	.quad	0x3fe512684cf0739b              # double 0.658497
	.quad	0x3feee46ae3a3a8e7              # double 0.96538299999999999
	.quad	0x3fd7cc5fbf83382e              # double 0.37184899999999999
	.quad	0x3fed71e4b44a1f08              # double 0.920153
	.quad	0x3fe84af4f0d844d0              # double 0.75914999999999999
	.quad	0x3feb8a06e9ff0cbb              # double 0.860599
	.quad	0x3fef36bf444e0daa              # double 0.97543299999999999
	.quad	0x3fe007fcb923a29c              # double 0.50097499999999995
	.quad	0x3fe105425f202108              # double 0.53189200000000003
	.quad	0x3fd10cf1800a7c5b              # double 0.26641500000000001
	.quad	0x3fc51e75360d0247              # double 0.164992
	.quad	0x3fce28a1dfb9389b              # double 0.23561499999999999
	.quad	0x3fda7f5e84f09529              # double 0.414024
	.quad	0x3f90c49ba5e353f8              # double 0.016375000000000001
	.quad	0x3fe591d14e3bcd36              # double 0.67405000000000004
	.quad	0x3feac1a8ac5c13fd              # double 0.83613999999999999
	.quad	0x3f9c42e9899bf594              # double 0.027598999999999999
	.quad	0x3fe244f7ec3547e0              # double 0.57091899999999995
	.quad	0x3fab66516db0dd83              # double 0.053515
	.quad	0x3fb22339c0ebedfa              # double 0.070849999999999996
	.quad	0x3fbd37c1376d5497              # double 0.114132
	.quad	0x3feb989df1172ef1              # double 0.86238000000000004
	.quad	0x3fddf8ec0f883340              # double 0.46831800000000001
	.quad	0x3fe2b3354c12274a              # double 0.58437600000000001
	.quad	0x3fc817ebaf102364              # double 0.18823000000000001
	.quad	0x3fecc692f6e8294a              # double 0.89924000000000004
	.quad	0x3fc2b367a0f9096c              # double 0.14610000000000001
	.quad	0x3fea1d3cbc48f10b              # double 0.81606900000000004
	.quad	0x3fca5eaab042528b              # double 0.206014
	.quad	0x3fe22abef06b3786              # double 0.56771799999999994
	.quad	0x3fd9de7210be9425              # double 0.40420200000000001
	.quad	0x3fd39791819d2392              # double 0.30612600000000001
	.quad	0x3fea02e6644d8772              # double 0.81285399999999997
	.quad	0x3fd40285ec3dab5c              # double 0.31265399999999999
	.quad	0x3fe8893964a59c06              # double 0.76675099999999996
	.quad	0x3fe26dcc20d5629e              # double 0.57590300000000005
	.quad	0x3fe4fded6ba8c587              # double 0.65599700000000005
	.quad	0x3fefabe6a337a80d              # double 0.989734
	.quad	0x3fcf250b524399b3              # double 0.24331800000000001
	.quad	0x3fdfd744f5d35654              # double 0.49751400000000001
	.quad	0x3fe9a2d0e5604189              # double 0.80112499999999998
	.quad	0x3fd4dc4c9c90c4df              # double 0.32594600000000001
	.quad	0x3fd624b33daf8df8              # double 0.34599000000000002
	.quad	0x3fd75a250f840182              # double 0.36487700000000001
	.quad	0x3fc87d1351159c49              # double 0.19131699999999999
	.quad	0x3fd6515ce9e5e248              # double 0.34871600000000003
	.quad	0x3fe9d30ced4e4c94              # double 0.80701299999999998
	.quad	0x3f960c7c0f451761              # double 0.021531999999999999
	.quad	0x3fe2df99c38b04ab              # double 0.58979499999999996
	.quad	0x3fd397635e74299e              # double 0.30611500000000003
	.quad	0x3fa39cd8127b2cc7              # double 0.038306
	.quad	0x3fc2f5ec80c73abd              # double 0.14813000000000001
	.quad	0x3fe6ab0856e696a2              # double 0.70837799999999995
	.quad	0x3f84906034f3fd93              # double 0.010041
	.quad	0x3fc8d23d4f15e7c9              # double 0.19391600000000001
	.quad	0x3fe1560e94ee392e              # double 0.54175499999999999
	.quad	0x3fe6cb2fa93af74d              # double 0.71230300000000002
	.quad	0x3fbdc5718eb89507              # double 0.11629399999999999
	.quad	0x3fe48aac96cc5fc0              # double 0.64192800000000005
	.quad	0x3fd0839cd8127b2d              # double 0.25803300000000001
	.quad	0x3fe64f70153bd167              # double 0.69719699999999996
	.quad	0x3fd6c3760bf5d788              # double 0.35568
	.quad	0x3fe75475a31a4bdc              # double 0.72906000000000004
	.quad	0x3fee713cee9dd7ed              # double 0.95132300000000003
	.quad	0x3fe808c3f3e0370d              # double 0.75107000000000002
	.quad	0x3fc9bb384fd2a62b              # double 0.20102600000000001
	.quad	0x3feffaaef2c73259              # double 0.99935099999999998
	.quad	0x3fadafd113836a83              # double 0.057981999999999999
	.quad	0x3fe486705c896dd2              # double 0.64141099999999995
	.quad	0x3fef02bc72e275ab              # double 0.96908399999999994
	.quad	0x3fe6a8672756861f              # double 0.70805700000000005
	.quad	0x3fe7e5492ff4ba52              # double 0.74673900000000004
	.quad	0x3fe803b1d0c80410              # double 0.75045099999999998
	.quad	0x3fe6c58cd20afa2f              # double 0.711615
	.quad	0x3fd90ebaade657b8              # double 0.39152399999999998
	.quad	0x3fa9e40c8472c0e8              # double 0.050568000000000002
	.quad	0x3fd39e6687f455a8              # double 0.30654300000000001
	.quad	0x3fa4f56eac860568              # double 0.040934999999999999
	.quad	0x3fe61fe86833c600              # double 0.69139499999999998
	.quad	0x3fde45bf26f1dc51              # double 0.47300700000000001
	.quad	0x3fd6c9e6687f455a              # double 0.35607299999999997
	.quad	0x3fd069d7342edbb6              # double 0.25646000000000002
	.quad	0x3fba0c38f366948a              # double 0.10174900000000001
	.quad	0x3fe037414a4d2b2c              # double 0.506745
	.quad	0x3fd70ad03d9a9542              # double 0.36003499999999999
	.quad	0x3fc6fe047d3d4281              # double 0.17962700000000001
	.quad	0x3f8354c122749f0e              # double 0.0094389999999999995
	.quad	0x3fd5abbcb1cc9646              # double 0.33860699999999999
	.quad	0x3fdbc36113404ea5              # double 0.43380000000000002
	.quad	0x3fabb320535c9e67              # double 0.054101000000000003
	.quad	0x3fed20a5269595ff              # double 0.91023500000000002
	.quad	0x3fde37c1376d5497              # double 0.47215299999999999
	.quad	0x3fde80c73abc9470              # double 0.47660999999999998
	.quad	0x3feb6bedfa43fe5d              # double 0.85692500000000005
	.quad	0x3fdcb33daf8df7a5              # double 0.44844000000000001
	.quad	0x3fedaccb3a2595bc              # double 0.92734300000000002
	.quad	0x3fefe7a311e85fd0              # double 0.99702599999999997
	.quad	0x3fede28cbd1244a6              # double 0.93390499999999999
	.quad	0x3fe636049ecb31c2              # double 0.69409399999999999
	.quad	0x3fdd30e7ff583a54              # double 0.45611000000000002
	.quad	0x3fac054ef459d990              # double 0.054727999999999999
	.quad	0x3fe0f9314445aa2e              # double 0.53041899999999997
	.quad	0x3fd783be6601bc99              # double 0.36741600000000002
	.quad	0x3feaf86c226809d5              # double 0.84282500000000005
	.quad	0x3fdcce24bba12b5e              # double 0.45008199999999998
	.quad	0x3f97991bc5586445              # double 0.023045
	.quad	0x3fe5c5ac471b4784              # double 0.68037999999999998
	.quad	0x3fe03242070b8cfc              # double 0.506135
	.quad	0x3fc660a2014727dd              # double 0.17482400000000001
	.quad	0x3fd5caa7589efd87              # double 0.34049400000000002
	.quad	0x3fdfb26bf8769ec3              # double 0.49526500000000001
	.quad	0x3fd80fecdd0d8cb0              # double 0.37597199999999997
	.quad	0x3fea57a355043e53              # double 0.82319799999999999
	.quad	0x3fe43cab81f969e4              # double 0.63240600000000002
	.quad	0x3fd81c8a7a41e57e              # double 0.37674200000000002
	.quad	0x3fefaf0e0a84be40              # double 0.99011899999999997
	.quad	0x3fe9d1f81a5870da              # double 0.80688099999999996
	.quad	0x3fea158b827fa1a1              # double 0.81513000000000002
	.quad	0x3fe1428d434a01ac              # double 0.53937400000000002
	.quad	0x3fc77e5eaab04253              # double 0.18354400000000001
	.quad	0x3fcd99dcb5781c71              # double 0.23125799999999999
	.quad	0x3fde0b0af5fd47bf              # double 0.46942400000000001
	.quad	0x3f9ae07e5a78f25a              # double 0.026246999999999999
	.quad	0x3fecdf5cf2495e18              # double 0.90226600000000001
	.quad	0x3fd0eaee2003ab86              # double 0.26433899999999999
	.quad	0x3f9650614163779f              # double 0.021791000000000001
	.quad	0x3fc92617c1bda512              # double 0.19647500000000001
	.quad	0x3fd592189bd8383b              # double 0.33704200000000001
	.quad	0x3fbd5b9a5a89b952              # double 0.114679
	.quad	0x3fd623897204295a              # double 0.34591899999999998
	.quad	0x3fc411dbca9691a7              # double 0.15679499999999999
	.quad	0x3feb43265add9c28              # double 0.85194700000000001
	.quad	0x3fc2f7d30ad46f58              # double 0.14818799999999999
	.quad	0x3fd8bf37b8d3f184              # double 0.38667099999999999
	.quad	0x3fb4011d3671ac15              # double 0.078142000000000003
	.quad	0x3fdf81626b2f2303              # double 0.49227199999999999
	.quad	0x3fdb837718655193              # double 0.42989899999999998
	.quad	0x3fec6501e2584f4c              # double 0.88732999999999995
	.quad	0x3fe4682d7b634dad              # double 0.63771699999999998
	.quad	0x3fe91a6d698fe692              # double 0.78447599999999995
	.quad	0x3fb87c6327ed84d3              # double 0.095647999999999997
	.quad	0x3fe7a1e81cb46bad              # double 0.738514
	.quad	0x3fe15da059a73b43              # double 0.54267900000000002
	.quad	0x3fed10b417ca2121              # double 0.90828900000000001
	.quad	0x3febf5e2046c764b              # double 0.87376500000000001
	.quad	0x3fef307f23cc8de3              # double 0.97467000000000003
	.quad	0x3fde4c55432873bd              # double 0.47340900000000002
	.quad	0x3fd6107b784662bb              # double 0.34475600000000001
	.quad	0x3fe7ab68cef672b9              # double 0.73967400000000005
	.quad	0x3fe4caf709b738e7              # double 0.64977600000000002
	.quad	0x3fecc2352eb5f5f1              # double 0.89870700000000003
	.quad	0x3fe0ab81f969e3c9              # double 0.52093599999999995
	.quad	0x3fc99dba908a265f              # double 0.200126
	.quad	0x3fc4bd6e8af81627              # double 0.16203100000000001
	.quad	0x3fd2470a808c825a              # double 0.28558600000000001
	.quad	0x3fc460999dcb5782              # double 0.15919800000000001
	.quad	0x3fe67de7210be942              # double 0.70286899999999997
	.quad	0x3fdd2374794ea077              # double 0.455289
	.quad	0x3fcf85f06f694467              # double 0.24627499999999999
	.quad	0x3fc58561d4306e5d              # double 0.168133
	.quad	0x3fe39307af20ea5b              # double 0.61169799999999996
	.quad	0x3fbf8ad256798959              # double 0.123212
	.quad	0x3fe796f6512a94ff              # double 0.737178
	.quad	0x3fd15109070fbeba              # double 0.27057100000000001
	.quad	0x3feb95208e150119              # double 0.861954
	.quad	0x3fd001eeed8904f7              # double 0.25011800000000001
	.quad	0x3fafdd441355475a              # double 0.062234999999999999
	.quad	0x3fec6bc621b7e0ac              # double 0.88815599999999994
	.quad	0x3fd3c2a023209678              # double 0.30875399999999997
	.quad	0x3fb491d14e3bcd36              # double 0.080350000000000004
	.quad	0x3fc5651b0ccbc05d              # double 0.16714799999999999
	.quad	0x3feaca4095f2452c              # double 0.83718899999999996
	.quad	0x3fde918a009f6230              # double 0.47763299999999997
	.quad	0x3fea7e308787485e              # double 0.82790399999999997
	.quad	0x3f9ecfe9b7bf1e8e              # double 0.030089999999999999
	.quad	0x3fedf891e215336e              # double 0.93659300000000001
	.quad	0x3f80a569b17481b2              # double 0.0081279999999999998
	.quad	0x3fe8ed7c6fbd273d              # double 0.77898999999999996
	.quad	0x3fd5a187a4a48f97              # double 0.33798400000000001
	.quad	0x3fc73e0370cdc875              # double 0.18157999999999999
	.quad	0x3fe1f8bbd3804535              # double 0.56161300000000003
	.quad	0x3fc7d031055b8994              # double 0.18604100000000001
	.quad	0x3fd41db877ab3248              # double 0.31431399999999998
	.quad	0x3fe3c284dfce3151              # double 0.61749500000000002
	.quad	0x3fd8091c087442c8              # double 0.375556
	.quad	0x3fdff3bea91d9b1b              # double 0.49925199999999997
	.quad	0x3fe10d5842b734b5              # double 0.53287899999999999
	.quad	0x3fd364e8b7e4de3c              # double 0.30303400000000003
	.quad	0x3fd4f0f9d2bf5515              # double 0.327208
	.quad	0x3fe749795b35b0bc              # double 0.727719
	.quad	0x3fea2600b0292817              # double 0.81713899999999995
	.quad	0x3fe13f034b0e1b4c              # double 0.53894200000000003
	.quad	0x3fa4213a0c6b484d              # double 0.039315999999999997
	.quad	0x3fb931fcd24e160e              # double 0.098419000000000006
	.quad	0x3fdb91cd1c7de508              # double 0.43077399999999999
	.quad	0x3fec91f70de8f6cf              # double 0.892818
	.quad	0x3fefee0d23d4f15e              # double 0.99780899999999995
	.quad	0x3fe52a5c5f7c675a              # double 0.66142100000000004
	.quad	0x3fea789e774eebf6              # double 0.82722399999999996
	.quad	0x3fcf20535c9e6688              # double 0.243174
	.quad	0x3fb8aed99cbee808              # double 0.096418000000000004
	.quad	0x3fd7c2c5e2cdc012              # double 0.37126300000000001
	.quad	0x3fec80d801b43526              # double 0.89072799999999996
	.quad	0x3faeefa1e3eaf683              # double 0.060421999999999997
	.quad	0x3fe8a03c4b09e98e              # double 0.76956000000000002
	.quad	0x3fd2f3882278d0cc              # double 0.29611399999999999
	.quad	0x3fe9abffcdab191e              # double 0.80224600000000001
	.quad	0x3fe0377c02afdda9              # double 0.50677300000000003
	.quad	0x3fe066cf41f212d7              # double 0.51254999999999995
	.quad	0x3feb57a13c254a3c              # double 0.85444699999999995
	.quad	0x3fccc46950fc71d6              # double 0.224744
	.quad	0x3fc79d1b2e59af9f              # double 0.18448200000000001
	.quad	0x3fe62d1287c200c1              # double 0.69300200000000001
	.quad	0x3fc4072d1aeb3dd1              # double 0.156469
	.quad	0x3fe43606b7aa25d9              # double 0.63159500000000002
	.quad	0x3fe598a222d5171e              # double 0.67488199999999998
	.quad	0x3fe7625c810a569b              # double 0.73075699999999999
	.quad	0x3f6c64ba94bbe447              # double 0.0034659999999999999
	.quad	0x3f80092ccf6be37e              # double 0.0078300000000000002
	.quad	0x3fea64c2f837b4a2              # double 0.82479999999999998
	.quad	0x3fd07c7c5260f5e4              # double 0.25759799999999999
	.quad	0x3fe25657fb69984a              # double 0.57303999999999999
	.quad	0x3fe887980f55de59              # double 0.76655200000000001
	.quad	0x3fe4eae9ee45c359              # double 0.65367600000000003
	.quad	0x3fa105c03361565c              # double 0.033246999999999999
	.quad	0x3fd2d5a9eb2074eb              # double 0.29429100000000002
	.quad	0x3fe89146e4c0df59              # double 0.76773400000000003
	.quad	0x3fd9aaf78feef5ed              # double 0.40106000000000003
	.quad	0x3fd13836a832b991              # double 0.26905600000000002
	.quad	0x3fdcc43b2dd377e2              # double 0.44947700000000002
	.quad	0x3fe9d1d25aab4741              # double 0.806863
	.quad	0x3fda9df1172ef0ae              # double 0.41588999999999998
	.quad	0x3fe8c3265add9c28              # double 0.77382200000000001
	.quad	0x3fe7c5cbbc2b94d9              # double 0.74289499999999997
	.quad	0x3fd9dd9c27e95315              # double 0.40415099999999998
	.quad	0x3f975e2046c764ae              # double 0.02282
	.quad	0x3fe2d551d68c692f              # double 0.58853999999999995
	.quad	0x3fefb343fa2ad3e9              # double 0.99063299999999998
	.quad	0x3fd3471715c63ae2              # double 0.30121399999999998
	.quad	0x3fec91c6d1e108c4              # double 0.892795
	.quad	0x3fd5f9ce8d972cd8              # double 0.34337200000000001
	.quad	0x3f8291b823c85c25              # double 0.0090670000000000004
	.quad	0x3fcbaeee957470eb              # double 0.216276
	.quad	0x3fd6384ba0e84274              # double 0.34718599999999999
	.quad	0x3fd442d05f288484              # double 0.31657800000000003
	.quad	0x3fc653111f0c34c2              # double 0.17441000000000001
	.quad	0x3fcdfa22706d5065              # double 0.23419599999999999
	.quad	0x3fbccf398e970718              # double 0.112537
	.quad	0x3fe166b6177ea1c7              # double 0.54378800000000005
	.quad	0x3f822424a276b7ed              # double 0.0088579999999999995
	.quad	0x3fec7f3f0fe047d4              # double 0.89053300000000001
	.quad	0x3fc33d5bab21815a              # double 0.15031
	.quad	0x3fe8af9a8cdea034              # double 0.77143600000000001
	.quad	0x3fd285a0be510907              # double 0.289406
	.quad	0x3fc68f6cefed6345              # double 0.17625199999999999
	.quad	0x3fed8ec52a411c2a              # double 0.923678
	.quad	0x3fcc7d9988d2a1f9              # double 0.222583
	.quad	0x3fb6f5771001d5c3              # double 0.089682999999999999
	.quad	0x3fb2e8f29d40ee07              # double 0.073867000000000002
	.quad	0x3fc1a921ccd96207              # double 0.13797400000000001
	.quad	0x3fa04167a95c853c              # double 0.031748999999999999
	.quad	0x3fc816052502eec8              # double 0.18817200000000001
	.quad	0x3f857eed45e9185d              # double 0.010496
	.quad	0x3fec38dc55000c95              # double 0.88194099999999997
	.quad	0x3fefbffcdab191de              # double 0.99218600000000001
	.quad	0x3fece2888b545c79              # double 0.90265300000000004
	.quad	0x3fe3bade225fa659              # double 0.61656100000000003
	.quad	0x3fc346887a8d64d8              # double 0.15059
	.quad	0x3fb7811f4f50a02c              # double 0.091814000000000007
	.quad	0x3fc2536d655e28aa              # double 0.14317099999999999
	.quad	0x3fedd781c714fce7              # double 0.93255699999999997
	.quad	0x3fd69c51dabe2718              # double 0.35329100000000002
	.quad	0x3fe0a294141e9af6              # double 0.51984600000000003
	.quad	0x3fe4de97d06bbdbe              # double 0.65217199999999997
	.quad	0x3fe46a747d805e5f              # double 0.63799499999999998
	.quad	0x3fe7c944ed6fda83              # double 0.74331899999999995
	.quad	0x3faba3a8e71476b0              # double 0.053983000000000003
	.quad	0x3fdc440f23897204              # double 0.44165399999999999
	.quad	0x3fe9e5e02ea960b7              # double 0.809311
	.quad	0x3feda641b328b6d8              # double 0.92654499999999995
	.quad	0x3fd7b2b777d0f1f5              # double 0.37028299999999997
	.quad	0x3fd49d6adf71eaff              # double 0.32210800000000001
	.quad	0x3fda85b9e8c47a18              # double 0.414412
	.quad	0x3fa0746455eaee20              # double 0.032138
	.quad	0x3fbb829068986fce              # double 0.107461
	.quad	0x3fc921709310129d              # double 0.19633300000000001
	.quad	0x3feb293f290abb45              # double 0.84878500000000001
	.quad	0x3fea814b599aa609              # double 0.82828299999999999
	.quad	0x3fe754aa10e02214              # double 0.72908499999999998
	.quad	0x3fb68943e1006078              # double 0.088031999999999999
	.quad	0x3fef38c32a8c9b84              # double 0.97567899999999996
	.quad	0x3fe7b1ca7d6733ec              # double 0.74045300000000003
	.quad	0x3fc89af5ba2be059              # double 0.19222900000000001
	.quad	0x3fdf995aaf78feef              # double 0.49373499999999998
	.quad	0x3fe544e7253da72a              # double 0.66466099999999995
	.quad	0x3fbc286f8ad2567a              # double 0.10999200000000001
	.quad	0x3facd0dcfcc5b8dc              # double 0.056280999999999998
	.quad	0x3fdb3964a59c065b              # double 0.42537799999999998
	.quad	0x3fde679cc74b838c              # double 0.475074
	.quad	0x3fe5d40895d0b73d              # double 0.68213299999999999
	.quad	0x3fed67924af0bf1a              # double 0.91889299999999996
	.quad	0x3fd712a0ec743201              # double 0.360512
	.quad	0x3fa65b20b8066c2b              # double 0.043664000000000001
	.quad	0x3fd503bc4d22c882              # double 0.32835300000000001
	.quad	0x3fe498b502ababeb              # double 0.64364100000000002
	.quad	0x3fcbcbd556084a51              # double 0.21715799999999999
	.quad	0x3fe8d894812be48a              # double 0.77643799999999996
	.quad	0x3fc077bbf93ff25e              # double 0.12865399999999999
	.quad	0x3fd51f81a5870da6              # double 0.33004800000000001
	.quad	0x3fd8a5657fb69985              # double 0.38509500000000002
	.quad	0x3fd9f60e0eb67c28              # double 0.40564299999999998
	.quad	0x3fbcad14a0a0f4d8              # double 0.112016
	.quad	0x3fc71a005c4651f4              # double 0.180481
	.quad	0x3fddf36ef8055fbb              # double 0.46798299999999998
	.quad	0x3f316ebd4cfd08d5              # double 2.6600000000000001E-4
	.quad	0x3fb2bedfa43fe5c9              # double 0.073224999999999998
	.quad	0x3fe38a5269595fee              # double 0.61063500000000004
	.quad	0x3fc9e84f09528f19              # double 0.202402
	.quad	0x3fc175a74c09c3ce              # double 0.136403
	.quad	0x3fc8d0678c0053e3              # double 0.19386
	.quad	0x3fd229bf162ae4b0              # double 0.28379799999999999
	.quad	0x3fd44f0520d130e0              # double 0.31732300000000002
	.quad	0x3fee303c07ee0b0b              # double 0.943388
	.quad	0x3fd442bf9830e3ce              # double 0.31657400000000002
	.quad	0x3f8b85e80bed740c              # double 0.013439
	.quad	0x3fe7860fe47991bc              # double 0.73511499999999996
	.quad	0x3fdf10060780fdc1              # double 0.48535299999999998
	.quad	0x3fe29c0ca600b029              # double 0.58154899999999998
	.quad	0x3fb550763a190082              # double 0.083258999999999999
	.quad	0x3fc3252ce032db1f              # double 0.14957200000000001
	.quad	0x3fe50f98fa376923              # double 0.65815400000000002
	.quad	0x3fd3bdba0a526959              # double 0.30845499999999998
	.quad	0x3feb271de69ad42c              # double 0.84852499999999997
	.quad	0x3fd34abe6a337a81              # double 0.30143700000000001
	.quad	0x3fe5f85f8d2e514c              # double 0.68656899999999998
	.quad	0x3fca8438088509c0              # double 0.20716000000000001
	.quad	0x3fecf84a9478c869              # double 0.90530900000000003
	.quad	0x3faeaf89c5e6ff7e              # double 0.059933
	.quad	0x3fc13aa369fcf3dc              # double 0.134602
	.quad	0x3fd2681669ced0b3              # double 0.287603
	.quad	0x3fea529bae46cfc8              # double 0.82258399999999998
	.quad	0x3fec50fe8ab4fa48              # double 0.88488699999999998
	.quad	0x3fe629068986fcdf              # double 0.69250800000000001
	.quad	0x3fe283d35eb7457c              # double 0.578592
	.quad	0x3fc0f861a60d4563              # double 0.13258
	.quad	0x3febe2ef4e0114d3              # double 0.871452
	.quad	0x3fe432702a3486f0              # double 0.63115699999999997
	.quad	0x3fd0b2e9ccb7d417              # double 0.26091999999999999
	.quad	0x3feae9142b302f73              # double 0.84095200000000003
	.quad	0x3fe03c07ee0b0af6              # double 0.507328
	.quad	0x3fed9c9b41398634              # double 0.92536700000000005
	.quad	0x3fd39bc33f85510d              # double 0.30638199999999999
	.quad	0x3febe6c2acb85a4f              # double 0.871919
	.quad	0x3fcaf6c69b5a63fa              # double 0.21065600000000001
	.quad	0x3fb4477ff151e753              # double 0.079215999999999995
	.quad	0x3fbba7546d3f9e7c              # double 0.10802200000000001
	.quad	0x3fe799b6f5caf2d8              # double 0.737514
	.quad	0x3fbc21f2990f301f              # double 0.109893
	.quad	0x3fe85e6bc621b7e1              # double 0.76152600000000004
	.quad	0x3fe47fe6d58c8eef              # double 0.64061299999999999
	.quad	0x3fb1791819d2391d              # double 0.068253999999999995
	.quad	0x3fe267b80a9de8b4              # double 0.57516100000000003
	.quad	0x3fe284c059210386              # double 0.57870500000000002
	.quad	0x3f63836a832b990b              # double 0.002382
	.quad	0x3fe759ddc1e7967d              # double 0.72972000000000004
	.quad	0x3fe1fc7a398201cd              # double 0.56206999999999996
	.quad	0x3fd036113404ea4b              # double 0.25330000000000003
	.quad	0x3fb7f69014b599aa              # double 0.093605999999999994
	.quad	0x3fc133fc86cebbba              # double 0.13439899999999999
	.quad	0x3fc632873bc903ea              # double 0.17341699999999999
	.quad	0x3fef9e12a51e321a              # double 0.98804599999999998
	.quad	0x3fd0f91a32b12d34              # double 0.265204
	.quad	0x3fdffeb4a66559f7              # double 0.499921
	.quad	0x3fed29da597d49d8              # double 0.91135900000000003
	.quad	0x3fe6828a1dfb938a              # double 0.70343500000000003
	.quad	0x3fe020ddc6195465              # double 0.50401200000000002
	.quad	0x3fd28c75c4a83b1d              # double 0.289823
	.quad	0x3fc20a5accd53049              # double 0.14094100000000001
	.quad	0x3fee5c6e2a80064b              # double 0.94878300000000004
	.quad	0x3fd2d5a187a4a490              # double 0.29428900000000002
	.quad	0x3fd52b3cc4ac6cdb              # double 0.330764
	.quad	0x3fd0fef39085f4a1              # double 0.26556099999999999
	.quad	0x3fcf620ee8d10f52              # double 0.24518000000000001
	.quad	0x3fe72178f68be2f8              # double 0.72283600000000003
	.quad	0x3fe1779420b3d4ae              # double 0.54584699999999997
	.quad	0x3fcbfb71fbc5de9c              # double 0.218611
	.quad	0x3fd10ad03d9a9542              # double 0.26628499999999999
	.quad	0x3fe2720a73f748a1              # double 0.57642099999999996
	.quad	0x3fe530df9bdc69f9              # double 0.66221600000000003
	.quad	0x3fe0cfa48301a7a0              # double 0.52534700000000001
	.quad	0x3fc1f37b8d3f1844              # double 0.14024300000000001
	.quad	0x3fbc9ea9a3d2d880              # double 0.11179600000000001
	.quad	0x3fbcb47c73eee526              # double 0.11212900000000001
	.quad	0x3fd7104d551d68c7              # double 0.36037000000000002
	.quad	0x3feac8dc11e42e12              # double 0.83701899999999996
	.quad	0x3fa4f80dc33721d5              # double 0.040954999999999998
	.quad	0x3fda738e6d15ad10              # double 0.41330299999999998
	.quad	0x3fc88feac42e989a              # double 0.19189200000000001
	.quad	0x3fe65f6fd21ff2e5              # double 0.69915000000000005
	.quad	0x3feb640c8472c0e8              # double 0.85596300000000003
	.quad	0x3fc89cdc443914f5              # double 0.19228700000000001
	.quad	0x3fbcd972cd7cf5f5              # double 0.112693
	.quad	0x3fecb4f82f512663              # double 0.89709099999999997
	.quad	0x3feebbf727136a40              # double 0.96044499999999999
	.quad	0x3fbf4677b395c422              # double 0.122169
	.quad	0x3fe387c200c0f020              # double 0.61032200000000003
	.quad	0x3fc4c386d2ed783e              # double 0.162217
	.quad	0x3f94e1e71044f1a2              # double 0.020393000000000001
	.quad	0x3fea264a16a48733              # double 0.81717399999999996
	.quad	0x3fcb43e100607810              # double 0.213009
	.quad	0x3fbe68e3ef284168              # double 0.118788
	.quad	0x3fd554eb13dfb0d5              # double 0.33330799999999999
	.quad	0x3fe7ebfec13b9f12              # double 0.74755799999999994
	.quad	0x3febb996fa82e87d              # double 0.86640499999999998
	.quad	0x3fb044ae85b9e8c4              # double 0.063547999999999993
	.quad	0x3fd6d7ba6698bb4d              # double 0.35691699999999998
	.quad	0x3fe042c5e2cdc012              # double 0.50815100000000002
	.quad	0x3fe8d25aab474107              # double 0.77567799999999998
	.quad	0x3fd492d55a3a083a              # double 0.32146200000000003
	.quad	0x3fe2c56b441bb8c3              # double 0.58659899999999998
	.quad	0x3fd8f5e41d4b6a62              # double 0.39000800000000002
	.quad	0x3fcd866e43aa79bc              # double 0.23066500000000001
	.quad	0x3fda88df37329c34              # double 0.41460399999999997
	.quad	0x3fefd4434e3369ba              # double 0.99466100000000002
	.quad	0x3fee3037d63022dd              # double 0.94338599999999995
	.quad	0x3fcb91e646f15619              # double 0.21539
	.quad	0x3fb7d4280ae10492              # double 0.093080999999999997
	.quad	0x3fd49f40a2877ee5              # double 0.32222000000000001
	.quad	0x3faa4df47f993d53              # double 0.051375999999999998
	.quad	0x3fed65a57646ae3a              # double 0.91865799999999997
	.quad	0x3fefa8f3a9b06812              # double 0.98937399999999998
	.quad	0x3fd82467be553ac5              # double 0.377222
	.quad	0x3fe5077ab324851b              # double 0.65716300000000005
	.quad	0x3fd43c148344c37e              # double 0.31616699999999998
	.quad	0x3fea42e557de0d67              # double 0.82066600000000001
	.quad	0x3fecb4fa48301a7a              # double 0.897092
	.quad	0x3fe36bce8533b107              # double 0.60690999999999995
	.quad	0x3fe56225fa658c4c              # double 0.66823100000000002
	.quad	0x3fe5a7ce0fc2eba2              # double 0.67673399999999995
	.quad	0x3fe5e25c810a569b              # double 0.68388199999999999
	.quad	0x3fdd12a94ff0025c              # double 0.454264
	.quad	0x3fe4621d96e9bbf1              # double 0.63697700000000002
	.quad	0x3fd4245b291b823d              # double 0.31471900000000003
	.quad	0x3fd1467be553ac4f              # double 0.26992699999999997
	.quad	0x3fecedcc20d5629e              # double 0.90402800000000005
	.quad	0x3fdc158b827fa1a1              # double 0.43881500000000001
	.quad	0x3fd0ea8112ba16e8              # double 0.26431300000000002
	.quad	0x3fe6d1782d38476f              # double 0.71306999999999998
	.quad	0x3fc841a261bf37b9              # double 0.189503
	.quad	0x3fbaa6a012599ed8              # double 0.104105
	.quad	0x3fd174eebf65dbfd              # double 0.272762
	.quad	0x3fbe8c79f666234b              # double 0.11933100000000001
	.quad	0x3fe5934efcbd5561              # double 0.67423200000000005
	.quad	0x3fbd63ed0f627393              # double 0.11480600000000001
	.quad	0x3fd0ee2435696e59              # double 0.26453500000000002
	.quad	0x3fc022a2c2374795              # double 0.126057
	.quad	0x3fe0aac96cc5fbf8              # double 0.52084799999999998
	.quad	0x3fcd51159c497742              # double 0.22903699999999999
	.quad	0x3fe99374bc6a7efa              # double 0.79925000000000002
	.quad	0x3fe740e38a7e73a3              # double 0.72667099999999996
	.quad	0x3fe406876e1deacd              # double 0.62579700000000005
	.quad	0x3fe37b762d83c6c9              # double 0.60882099999999995
	.quad	0x3fa1ec918e325d4a              # double 0.035007999999999997
	.quad	0x3feeab841248d7e0              # double 0.95843699999999998
	.quad	0x3fe4d7f737da61e1              # double 0.65136300000000003
	.quad	0x3febc299d883ba34              # double 0.86750499999999997
	.quad	0x3fe9efd86a8fc0d3              # double 0.81052800000000003
	.quad	0x3fde75d56f32bdc2              # double 0.47594199999999998
	.quad	0x3fead31fcd24e161              # double 0.83827200000000002
	.quad	0x3fe148ba83f4eca7              # double 0.54012800000000005
	.quad	0x3fb30ccbc05d52c1              # double 0.074413999999999994
	.quad	0x3fc977d955714b9d              # double 0.19897000000000001
	.quad	0x3fea6d783dff3f10              # double 0.82586300000000001
	.quad	0x3fec47e49b1fab97              # double 0.88377600000000001
	.quad	0x3fe0819f3c70c997              # double 0.51582300000000003
	.quad	0x3fe7b9fdbd2fa0d7              # double 0.74145399999999995
	.quad	0x3fda32e7b3d8e001              # double 0.40935700000000003
	.quad	0x3fe179591cd1c7de              # double 0.54606299999999997
	.quad	0x3fe0f18c9fb6134d              # double 0.52948600000000001
	.quad	0x3fb1e0e736049ecb              # double 0.069837999999999997
	.quad	0x3fe7fb19e731d2e1              # double 0.74940200000000001
	.quad	0x3fed8ccbc05d52c1              # double 0.92343699999999995
	.quad	0x3fa0ecfa69be09bb              # double 0.033057999999999997
	.quad	0x3fe6b508f648c719              # double 0.70959899999999998
	.quad	0x3fde5c422036006d              # double 0.474381
	.quad	0x3fd4269df97aaac1              # double 0.314857
	.quad	0x3fe5a20578e5c4eb              # double 0.67602799999999996
	.quad	0x3fd9178705425f20              # double 0.39206099999999999
	.quad	0x3fe4fdb4cc250721              # double 0.65597000000000005
	.quad	0x3fe5359ddc1e7968              # double 0.66279500000000002
	.quad	0x3feedbe3c105186e              # double 0.96434200000000003
	.quad	0x3fe0bb2dd377e1b9              # double 0.52284900000000001
	.quad	0x3fcae019b0ab2e17              # double 0.20996400000000001
	.quad	0x3fb675360d024702              # double 0.087725999999999998
	.quad	0x3fe7e4c729f59cd0              # double 0.74667700000000004
	.quad	0x3fd1acbc8c0ce91d              # double 0.27616800000000002
	.quad	0x3fda86db50f40e5a              # double 0.41448099999999999
	.quad	0x3fe022e7f6f4be83              # double 0.50426099999999996
	.quad	0x3fd3092ccf6be37e              # double 0.297435
	.quad	0x3fdaca42aed13943              # double 0.41859499999999999
	.quad	0x3fd89b6b2af14552              # double 0.38448599999999999
	.quad	0x3fd624aada33bd9d              # double 0.34598800000000002
	.quad	0x3fbb721d53cddd6e              # double 0.10721
	.quad	0x3fd51dabe27179c0              # double 0.32993600000000001
	.quad	0x3fb7588e368f0846              # double 0.091194999999999998
	.quad	0x3fdac5bd0e12e83a              # double 0.418319
	.quad	0x3fe4c93ea2d2fe3f              # double 0.64956599999999998
	.quad	0x3fb1a9fbe76c8b44              # double 0.069000000000000006
	.quad	0x3fe4c304ccee5abc              # double 0.64880599999999999
	.quad	0x3fcd40d4dc65c704              # double 0.22854099999999999
	.quad	0x3fcdd10b1feeb2d1              # double 0.23294200000000001
	.quad	0x3f851ac9afe1da7b              # double 0.010305
	.quad	0x3fe283e63e8dda49              # double 0.57860100000000003
	.quad	0x3fed0de8f6cefed6              # double 0.90794799999999998
	.quad	0x3fe5a3c21187e7c0              # double 0.67623999999999995
	.quad	0x3fef4eaf251c193b              # double 0.97835499999999997
	.quad	0x3fe6183b60285ec4              # double 0.69045800000000002
	.quad	0x3fba81669ced0b31              # double 0.103537
	.quad	0x3fdb8d9f90539fba              # double 0.43051899999999999
	.quad	0x3fcf00b45ae5ffa4              # double 0.24220900000000001
	.quad	0x3fe0c9e236c15d2d              # double 0.524644
	.quad	0x3fd9b3b7521144cc              # double 0.40159400000000001
	.quad	0x3fc2dc55000c953a              # double 0.14734900000000001
	.quad	0x3fea64606748e475              # double 0.82475299999999996
	.quad	0x3fe4e0d0247021d1              # double 0.652443
	.quad	0x3fa3ab649d388a8b              # double 0.038417
	.quad	0x3fcd5208e1501190              # double 0.22906599999999999
	.quad	0x3fe27d84901d1915              # double 0.57782199999999995
	.quad	0x3fdc4dcebfec13ba              # double 0.442249
	.quad	0x3f9cb81733226c3c              # double 0.028046000000000001
	.quad	0x3fd84299d883ba34              # double 0.37906499999999999
	.quad	0x3fd4398a65492ff5              # double 0.31601200000000002
	.quad	0x3fe546994185058e              # double 0.66486800000000001
	.quad	0x3fe859b1b79d909f              # double 0.76094899999999999
	.quad	0x3feba56798958d9b              # double 0.86394099999999996
	.quad	0x3fdaa8c9b845564b              # double 0.41655199999999998
	.quad	0x3fe6603f705857b0              # double 0.69924900000000001
	.quad	0x3fe8117f84449dbf              # double 0.75213600000000003
	.quad	0x3fb4fcf80dc33722              # double 0.081985000000000002
	.quad	0x3fc5cca70d1fa333              # double 0.17030799999999999
	.quad	0x3fdd3504c48adeec              # double 0.45636100000000002
	.quad	0x3fed74dbdf8f4730              # double 0.92051499999999997
	.quad	0x3fefb1bde82d7b63              # double 0.99044699999999996
	.quad	0x3fe6ccea28fe260b              # double 0.71251399999999998
	.quad	0x3fcb993d5347a5b1              # double 0.215614
	.quad	0x3fdf3ef284167a96              # double 0.48821700000000001
	.quad	0x3fe895d0b73d188f              # double 0.76828799999999997
	.quad	0x3fe3336bd2b6f199              # double 0.60002699999999998
	.quad	0x3fd146950fc71d60              # double 0.26993299999999998
	.quad	0x3fec616f86a09891              # double 0.88689399999999996
	.quad	0x3fc56113404ea4a9              # double 0.16702500000000001
	.quad	0x3fc71819d2391d58              # double 0.180423
	.quad	0x3fc08e25c810a56a              # double 0.12933800000000001
	.quad	0x3fe5683e425aee63              # double 0.66897499999999999
	.quad	0x3fd6a682b6284599              # double 0.35391299999999998
	.quad	0x3fc823a6ce358299              # double 0.18858800000000001
	.quad	0x3fe4d36d655e28aa              # double 0.65080899999999997
	.quad	0x3fe4d831f03d145e              # double 0.65139100000000005
	.quad	0x3fe097353b4b2fa9              # double 0.51845799999999997
	.quad	0x3fd76c8711d798d9              # double 0.36599900000000002
	.quad	0x3f82a172abef06b3              # double 0.0090969999999999991
	.quad	0x3fcd52b0a6fc58ac              # double 0.22908600000000001
	.quad	0x3fea55970b49e01e              # double 0.82294800000000001
	.quad	0x3febc069e7fb267c              # double 0.86723799999999995
	.quad	0x3fb14f7a919695d9              # double 0.067618999999999999
	.quad	0x3fca85d31337eb29              # double 0.207209
	.quad	0x3fbce9d51b4fe79f              # double 0.112943
	.quad	0x3fe5ba9b06812381              # double 0.67902899999999999
	.quad	0x3fe737baecd07853              # double 0.725553
	.quad	0x3fe8cd8fd5cb7910              # double 0.77509300000000003
	.quad	0x3fc7af20ea5b530d              # double 0.185032
	.quad	0x3fc4642bf9830e3d              # double 0.159307
	.quad	0x3fefb2ce89656ef0              # double 0.99057700000000004
	.quad	0x3fe3fb1183b60286              # double 0.62439800000000001
	.quad	0x3fdc27807789a459              # double 0.439911
	.quad	0x3fda8711d798d8a9              # double 0.41449399999999997
	.quad	0x3fdc2b8c75c4a83b              # double 0.44015799999999999
	.quad	0x3fe800fba8826aa9              # double 0.75012000000000001
	.quad	0x3feec4bd33d29564              # double 0.96151600000000003
	.quad	0x3fec48c5004fb118              # double 0.88388299999999997
	.quad	0x3fe0240d90e23af3              # double 0.50440099999999999
	.quad	0x3fe0ffac1d29dc72              # double 0.53120999999999996
	.quad	0x3fee3f6e3f78bbd4              # double 0.94524300000000005
	.quad	0x3fe7a3cea6c1a049              # double 0.73874600000000001
	.quad	0x3fe48c7192ea52f0              # double 0.64214400000000005
	.quad	0x3fec7748a159817c              # double 0.88956100000000004
	.quad	0x3fe12322af577100              # double 0.53553899999999999
	.quad	0x3fd7acffa7eb6bf4              # double 0.36993399999999999
	.quad	0x3fc8445aa2e3c537              # double 0.189586
	.quad	0x3fd31bef49cf56eb              # double 0.29858000000000001
	.quad	0x3fd5871a3b14a904              # double 0.33637099999999998
	.quad	0x3fe3a19c9d5a187a              # double 0.61347799999999997
	.quad	0x3fed951a437824d5              # double 0.92445100000000002
	.quad	0x3fe12babead4f590              # double 0.53658099999999997
	.quad	0x3feb21f6cacd184c              # double 0.84789599999999998
	.quad	0x3fd6949e8815e397              # double 0.352821
	.quad	0x3fe7d6d19dece571              # double 0.744973
	.quad	0x3f885f06f6944674              # double 0.011900000000000001
	.quad	0x3fb28fd199bb2789              # double 0.072507000000000002
	.quad	0x3fecf4080f98fa37              # double 0.90478899999999995
	.quad	0x3fe2f08cc575c076              # double 0.59186399999999995
	.quad	0x3fddd2e946801712              # double 0.46599800000000002
	.quad	0x3fe00203e63e8dda              # double 0.50024599999999997
	.quad	0x3fd7ad46f587d6f9              # double 0.36995099999999997
	.quad	0x3fe04d898b2e9ccb              # double 0.50946499999999995
	.quad	0x3fd3dcebfec13b9f              # double 0.310359
	.quad	0x3fed0bfc2224edf6              # double 0.90771299999999999
	.quad	0x3fe0785729b280f1              # double 0.51468999999999998
	.quad	0x3fee3e8bc169c23b              # double 0.94513499999999995
	.quad	0x3fe21f9acffa7eb7              # double 0.56635800000000003
	.quad	0x3fe02c625e99e94b              # double 0.50541800000000003
	.quad	0x3fdf5625a682b628              # double 0.48963299999999998
	.quad	0x3fc8f5d35653c9ac              # double 0.19500200000000001
	.quad	0x3fdb31c64ba94bbe              # double 0.42491299999999999
	.quad	0x3fe3d1e53a81dc0e              # double 0.61937200000000003
	.quad	0x3facd9c6b0531983              # double 0.056349000000000003
	.quad	0x3fd24877681669cf              # double 0.28567300000000001
	.quad	0x3fc1e63e8dda48b6              # double 0.13983899999999999
	.quad	0x3fefa5aee631f8a1              # double 0.98897500000000004
	.quad	0x3fd6e98dcdb37c9a              # double 0.35800500000000002
	.quad	0x3fbf21a2e7f6f4bf              # double 0.12160700000000001
	.quad	0x3fd918e757928e0d              # double 0.39214500000000002
	.quad	0x3fd36ddf00abf76a              # double 0.30358099999999999
	.quad	0x3fe095f2452c59fb              # double 0.51830399999999999
	.quad	0x3fdeee30caa326e1              # double 0.483288
	.quad	0x3fea0fadf2ecf206              # double 0.81441399999999997
	.quad	0x3fc7aaef2c732592              # double 0.18490400000000001
	.quad	0x3feb4903ea704bc2              # double 0.85266299999999995
	.quad	0x3fd7350d2806af47              # double 0.36261300000000002
	.quad	0x3fc278d0cc35ce18              # double 0.144312
	.quad	0x3fe955e071c53f3a              # double 0.79173300000000002
	.quad	0x3fd20b780346dc5d              # double 0.28194999999999998
	.quad	0x3fa0379314445aa3              # double 0.031674000000000001
	.quad	0x3fe11a7c17a89332              # double 0.53448300000000004
	.quad	0x3fd8832b990afe61              # double 0.38300600000000001
	.quad	0x3fe5b3f20a73f749              # double 0.67821600000000004
	.quad	0x3fb30025bfad2999              # double 0.074220999999999995
	.quad	0x3fecacd7cf5f4e44              # double 0.89609899999999997
	.quad	0x3fe833c1ce6c093e              # double 0.75631800000000005
	.quad	0x3fe746822ff08894              # double 0.72735700000000003
	.quad	0x3fd2397dd00f776c              # double 0.28475899999999998
	.quad	0x3fe0d460aa64c2f8              # double 0.52592499999999998
	.quad	0x3fed3b4916ca46e1              # double 0.91348700000000005
	.quad	0x3fbf83f0bae89eba              # double 0.12310699999999999
	.quad	0x3fb7b30f8c64fdb1              # double 0.092576000000000006
	.quad	0x3fe68611fd5885d3              # double 0.70386599999999999
	.quad	0x3fe1f724fa8b4bf9              # double 0.561419
	.quad	0x3fc0f7b17ce52ded              # double 0.13255900000000001
	.quad	0x3fbd968512231833              # double 0.115578
	.quad	0x3fe39f601797cc3a              # double 0.613205
	.quad	0x3fe3f42bb6672fba              # double 0.623556
	.quad	0x3fed0d36b4c7f349              # double 0.90786299999999998
	.quad	0x3fa5bf0563ed0f62              # double 0.042472999999999997
	.quad	0x3fb3cc39ffd60e95              # double 0.077335000000000001
	.quad	0x3feb2cf52b90a783              # double 0.84923800000000005
	.quad	0x3fde73797460242d              # double 0.475798
	.quad	0x3feab6bf444e0daa              # double 0.83480799999999999
	.quad	0x3fd6506573215fcc              # double 0.34865699999999999
	.quad	0x3feb659af9ebe9c9              # double 0.85615300000000005
	.quad	0x3fdaca686e7e62dc              # double 0.41860399999999998
	.quad	0x3fe1130be0ded289              # double 0.53357500000000002
	.quad	0x3fc2a044ae85b9e9              # double 0.14551600000000001
	.quad	0x3fe422291fb3fa6e              # double 0.62917000000000001
	.quad	0x3fe8bc23315d701e              # double 0.77296600000000004
	.quad	0x3fe629478c868ba0              # double 0.69253900000000002
	.quad	0x3f9bacb4289118c2              # double 0.027026000000000001
	.quad	0x3fd823422467be55              # double 0.37715199999999999
	.quad	0x3feffc32ebe596c8              # double 0.99953599999999998
	.quad	0x3feafa658c4bd33d              # double 0.84306599999999998
	.quad	0x3fd1bc5de9c0229a              # double 0.27712199999999998
	.quad	0x3fc0f9f44d445671              # double 0.132628
	.quad	0x3fbe1932d6ece13f              # double 0.117572
	.quad	0x3fd566e008e9b38d              # double 0.33440399999999998
	.quad	0x3fe5b7fbefd00714              # double 0.67870900000000001
	.quad	0x3fed7d9dba908a26              # double 0.92158399999999996
	.quad	0x3fec1ef73c0c1fc9              # double 0.87878000000000001
	.quad	0x3fd49f2fdb8fde2f              # double 0.322216
	.quad	0x3fd8d22856605ee5              # double 0.38782699999999998
	.quad	0x3fee061847f56217              # double 0.93824399999999997
	.quad	0x3fe876cacd184c27              # double 0.76450099999999999
	.quad	0x3fe8da426bb55ac0              # double 0.77664299999999997
	.quad	0x3fdcc0c62e4d1a65              # double 0.449266
	.quad	0x3fe5db5d894812be              # double 0.68302799999999997
	.quad	0x3fc549c6f36ef805              # double 0.16631399999999999
	.quad	0x3fed481f53825e14              # double 0.91505400000000003
	.quad	0x3fe2f77af640639d              # double 0.59270999999999996
	.quad	0x3fc226dce39b456b              # double 0.14181099999999999
	.quad	0x3fe7a48d7e02645e              # double 0.73883699999999997
	.quad	0x3fe9913c68661ae7              # double 0.79897899999999999
	.quad	0x3fc259af9ebe9c88              # double 0.14336199999999999
	.quad	0x3fa1157abb8800eb              # double 0.033367000000000001
	.quad	0x3fe67c7607c419a0              # double 0.70269300000000001
	.quad	0x3fac111ada76d97b              # double 0.054817999999999999
	.quad	0x3fcb5a63f9a49c2c              # double 0.213696
	.quad	0x3fc4f1a9fbe76c8b              # double 0.16362499999999999
	.quad	0x3fe748e4755ffe6d              # double 0.72764799999999996
	.quad	0x3fe2ddfa871a3b15              # double 0.58959700000000004
	.quad	0x3fd1550870110a13              # double 0.27081499999999997
	.quad	0x3fe4a0578e5c4eb5              # double 0.64457299999999995
	.quad	0x3fec849cb252ce03              # double 0.89118799999999998
	.quad	0x3fe28f6273929ed4              # double 0.58000300000000005
	.quad	0x3fe7f0f5a1016ce8              # double 0.74816400000000005
	.quad	0x3fe53e0157eed45f              # double 0.66381900000000005
	.quad	0x3fd02749f0e4da0a              # double 0.25239800000000001
	.quad	0x3fe4762f9ca5bd94              # double 0.63942699999999997
	.quad	0x3fd4e3608d08919f              # double 0.326378
	.quad	0x3fe47861a60d4563              # double 0.63969500000000001
	.quad	0x3fe28520d130df9c              # double 0.57875100000000002
	.quad	0x3fe58f98fa376923              # double 0.67377900000000002
	.quad	0x3fbb5579af1886e0              # double 0.10677300000000001
	.quad	0x3fc6988094e5d5b2              # double 0.17652899999999999
	.quad	0x3fe64e9c4545846f              # double 0.69709600000000005
	.quad	0x3fe0cf1e4b44a1f1              # double 0.52528300000000006
	.quad	0x3fe9e4de3b8a19ca              # double 0.80918800000000002
	.quad	0x3fdef5e41d4b6a62              # double 0.48375800000000002
	.quad	0x3fe6d3dc8b86b160              # double 0.71336200000000005
	.quad	0x3fefc05b39e279dd              # double 0.99223099999999997
	.quad	0x3fd5106ee30caa32              # double 0.32912799999999998
	.quad	0x3fbc7304039abf34              # double 0.11113000000000001
	.quad	0x3fd59c9d5a187a4a              # double 0.33768399999999998
	.quad	0x3fc7c8216c61522a              # double 0.18579499999999999
	.quad	0x3f9cad14a0a0f4d8              # double 0.028004000000000001
	.quad	0x3fe1faeddce7cd03              # double 0.56188099999999996
	.quad	0x3fb0a2014727dcbe              # double 0.064972000000000002
	.quad	0x3fe49e215336deb9              # double 0.64430299999999996
	.quad	0x3fa3461309c7ffde              # double 0.037643999999999997
	.quad	0x3fab46994185058e              # double 0.053273000000000001
	.quad	0x3fe8927f5e84f095              # double 0.76788299999999998
	.quad	0x3fa37457c0b13598              # double 0.037997000000000003
	.quad	0x3fdf23f67f4dbdf9              # double 0.48657
	.quad	0x3fe06a4228997c3d              # double 0.51297099999999995
	.quad	0x3fe465b4245f5ad9              # double 0.63741499999999995
	.quad	0x3fe8884c6a3bddfd              # double 0.76663800000000004
	.quad	0x3fc09b951c5c5719              # double 0.129748
	.quad	0x3feafa05143bf727              # double 0.84301999999999999
	.quad	0x3fbd2146a1a500d6              # double 0.113789
	.quad	0x3fefa6f826edaa93              # double 0.98913200000000001
	.quad	0x3fbd38fffbce4218              # double 0.114151
	.quad	0x3fa4432ca57a786c              # double 0.039574999999999999
	.quad	0x3fe168986fcdee35              # double 0.544018
	.quad	0x3fe7f16b11c6d1e1              # double 0.74822
	.quad	0x3fc9e69ad42c3c9f              # double 0.20235
	.quad	0x3f8fb3743632c1f4              # double 0.015479
	.quad	0x3fed1947cfa26a23              # double 0.90933600000000003
	.quad	0x3fe1cb7f5a5332ad              # double 0.556091
	.quad	0x3feee9ea14057082              # double 0.96605399999999997
	.quad	0x3fed671476af89c6              # double 0.91883300000000001
	.quad	0x3fe3cf3fd933e35c              # double 0.61904899999999996
	.quad	0x3fd69e6687f455a8              # double 0.35341800000000001
	.quad	0x3fdb369b9d7fd827              # double 0.42520799999999997
	.quad	0x3fe98eb463497b74              # double 0.79866999999999999
	.quad	0x3fe7d347a5b0ff11              # double 0.74454100000000001
	.quad	0x3fbad106ee30caa3              # double 0.104752
	.quad	0x3fdaa6aca7935760              # double 0.41642299999999999
	.quad	0x3fba1198aeb80ed0              # double 0.101831
	.quad	0x3fe7ef1bac2df0d4              # double 0.74793799999999999
	.quad	0x3fc0fe60c38f3669              # double 0.13276299999999999
	.quad	0x3fda0e0a84be4042              # double 0.407107
	.quad	0x3fcd36262cba732e              # double 0.228215
	.quad	0x3fe974c4cdfaca36              # double 0.79550399999999999
	.quad	0x3fdefb8f57f737da              # double 0.48410399999999998
	.quad	0x3fe9478c868b9fdc              # double 0.78998400000000001
	.quad	0x3fc92acfb762d83c              # double 0.19661899999999999
	.quad	0x3f9122749f0e4da1              # double 0.016733000000000001
	.quad	0x3fd659146e4c0df6              # double 0.34918700000000003
	.quad	0x3fd8b7739f340d4e              # double 0.38619700000000001
	.quad	0x3fe04271fff79c84              # double 0.50811099999999998
	.quad	0x3fe84e3de6149c6f              # double 0.75955099999999998
	.quad	0x3fe3b6c9c0a8d21c              # double 0.61606300000000003
	.quad	0x3fb32bcb5fe542e5              # double 0.074886999999999995
	.quad	0x3fe488ede54b48d4              # double 0.64171500000000004
	.quad	0x3feb2ef911cf355d              # double 0.84948400000000002
	.quad	0x3fd6c9d16fc9bc77              # double 0.356068
	.quad	0x3fe5cd63cb817332              # double 0.68132199999999998
	.quad	0x3fa072f33ca31e7e              # double 0.032127000000000003
	.quad	0x3fe912a737110e45              # double 0.78352699999999997
	.quad	0x3fed586a8fc0d2c4              # double 0.91704300000000005
	.quad	0x3fe0f204295a6c5d              # double 0.52954299999999999
	.quad	0x3fd4d75e2046c765              # double 0.32564500000000002
	.quad	0x3feba65492ff4ba5              # double 0.86405399999999999
	.quad	0x3fc67d9988d2a1f9              # double 0.175708
	.quad	0x3fd8ef5ec80c73ac              # double 0.38961000000000001
	.quad	0x3fe7c447c30d306a              # double 0.74270999999999998
	.quad	0x3fe384d551d68c69              # double 0.60996499999999998
	.quad	0x3fd72778140dd3fe              # double 0.36178399999999999
	.quad	0x3fec9151611ba3ca              # double 0.89273899999999995
	.quad	0x3fe9d2630ec31162              # double 0.80693199999999998
	.quad	0x3fd97c0f45176146              # double 0.39819700000000002
	.quad	0x3fe718cc144028e5              # double 0.721777
	.quad	0x3fc9d5dc4007570c              # double 0.20183899999999999
	.quad	0x3fde4ee7c49fd7a1              # double 0.47356599999999999
	.quad	0x3fc00064a9cdc444              # double 0.12501200000000001
	.quad	0x3fc197edc7ef177a              # double 0.13744899999999999
	.quad	0x3fcfc80841ede11a              # double 0.24829200000000001
	.quad	0x3fea2c4b4d056c51              # double 0.81790700000000005
	.quad	0x3fe500e065300581              # double 0.65635699999999997
	.quad	0x3fd44894c447c30d              # double 0.31692999999999999
	.quad	0x3fe2000eae18ac9f              # double 0.56250699999999998
	.quad	0x3fd62eba27ae9ab3              # double 0.34660200000000002
	.quad	0x3fd3758e219652bd              # double 0.30404999999999999
	.quad	0x3fe2e9270b06c43f              # double 0.59096099999999996
	.quad	0x3feb4957cd466f50              # double 0.85270299999999999
	.quad	0x3fd5bee3d5fdcdf7              # double 0.33977600000000002
	.quad	0x3fa9b93037d63023              # double 0.050241000000000001
	.quad	0x3fe3c5aa2e3c536d              # double 0.61787899999999996
	.quad	0x3fecc934267839ce              # double 0.89956100000000006
	.quad	0x3fe572de43ed959a              # double 0.67027199999999998
	.quad	0x3fe2c256bca5375d              # double 0.58622300000000005
	.quad	0x3fb1093964a59c06              # double 0.066546999999999995
	.quad	0x3fc4e3f78bbd3804              # double 0.16320699999999999
	.quad	0x3fe30b0079a2834d              # double 0.59509299999999998
	.quad	0x3fe429c779a6b50b              # double 0.63009999999999999
	.quad	0x3fb3c504816f0069              # double 0.077225000000000002
	.quad	0x3fdbd7e02645e4e7              # double 0.43505100000000002
	.quad	0x3fed333b96af038e              # double 0.91250399999999998
	.quad	0x3fd5682f944241c4              # double 0.334484
	.quad	0x3fc08c8259e1f3a5              # double 0.12928799999999999
	.quad	0x3feee94898f605ab              # double 0.96597699999999997
	.quad	0x3fdc293d102bc72e              # double 0.44001699999999999
	.quad	0x3fee287c200c0f02              # double 0.942442
	.quad	0x3fefd5d3dc8b86b1              # double 0.99485199999999995
	.quad	0x3fb37a7008a697af              # double 0.076087000000000002
	.quad	0x3fd7c17ebaf10236              # double 0.37118499999999999
	.quad	0x3fe07405f6ba0621              # double 0.51416300000000004
	.quad	0x3fe8c450268900c5              # double 0.77396399999999999
	.quad	0x3faf5f6fd21ff2e5              # double 0.061275000000000003
	.quad	0x3feea89118c197e5              # double 0.95807699999999995
	.quad	0x3fcc5b4245f5ad97              # double 0.22153500000000001
	.quad	0x3fe4cc1871e6cd29              # double 0.64991399999999999
	.quad	0x3f99e9d0e991ff71              # double 0.025305999999999999
	.quad	0x3fe830b178b37004              # double 0.75594399999999994
	.quad	0x3fabb5393250b524              # double 0.054116999999999998
	.quad	0x3fe81151611ba3ca              # double 0.75211399999999995
	.quad	0x3feff5f0b28522ea              # double 0.99877199999999999
	.quad	0x3fe964d5d80e496f              # double 0.79355900000000001
	.quad	0x3fd02a497fa5d28d              # double 0.252581
	.quad	0x3fda868fd199bb28              # double 0.41446300000000003
	.quad	0x3fe730d306a2b170              # double 0.72470999999999997
	.quad	0x3fede0ac7da1ec4e              # double 0.93367599999999995
	.quad	0x3fd349e01de26916              # double 0.30138399999999999
	.quad	0x3fd232c1f42bb667              # double 0.28434799999999999
	.quad	0x3f6210385c67dfe3              # double 0.0022049999999999999
	.quad	0x3fae0f3cb3e5753a              # double 0.058709999999999998
	.quad	0x3fec52e72da122fb              # double 0.88512000000000002
	.quad	0x3fe9638eb0318b93              # double 0.79340299999999997
	.quad	0x3fb69d30270f3882              # double 0.088335999999999997
	.quad	0x3fa7ebf22c01e68a              # double 0.046722
	.quad	0x3fdec9c4da9003ef              # double 0.48106500000000002
	.quad	0x3fcc2bb6672fba02              # double 0.220084
	.quad	0x3fc7bf162ae4b018              # double 0.18551899999999999
	.quad	0x3fe37cb4f1e4b44a              # double 0.60897299999999999
	.quad	0x3febf6db940fecdd              # double 0.87388399999999999
	.quad	0x3fd428672756861f              # double 0.31496600000000002
	.quad	0x3fe10e30446b69db              # double 0.53298199999999996
	.quad	0x3fd38eeae9ee45c3              # double 0.30559799999999998
	.quad	0x3fdac7fbacb42891              # double 0.41845599999999999
	.quad	0x3f939cd8127b2cc7              # double 0.019153
	.quad	0x3fe30effe2a3cea7              # double 0.59558100000000003
	.quad	0x3fa610060780fdc1              # double 0.043090999999999997
	.quad	0x3feb6ff7dfa00e28              # double 0.85741800000000001
	.quad	0x3fd79b8023a6ce36              # double 0.36886600000000003
	.quad	0x3fc972799a1fd157              # double 0.19880600000000001
	.quad	0x3fd19c779a6b50b1              # double 0.275175
	.quad	0x3fe61cbccf28c79f              # double 0.69100799999999996
	.quad	0x3fedc76f2a5a469d              # double 0.93059499999999995
	.quad	0x3fd19253543aeab8              # double 0.27455600000000002
	.quad	0x3fe3ff69014b599b              # double 0.62492800000000004
	.quad	0x3fe46f30a4e379b7              # double 0.63857299999999995
	.quad	0x3fa98d6909aed56b              # double 0.049907
	.quad	0x3fd457abb8800eae              # double 0.31785099999999999
	.quad	0x3fc30dbf0563ed0f              # double 0.14885699999999999
	.quad	0x3fe1ede1198aeb81              # double 0.56028800000000001
	.quad	0x3fdb11d3671ac14c              # double 0.42296299999999998
	.quad	0x3fd21b5c7cd898b3              # double 0.28292
	.quad	0x3fe3add590c0ad04              # double 0.61497000000000002
	.quad	0x3fc0a0902de00d1b              # double 0.12989999999999999
	.quad	0x3fe05ca6ca03c4b1              # double 0.51131000000000004
	.quad	0x3fc3e22e5de15ca7              # double 0.15534000000000001
	.quad	0x3fe818372e6a7696              # double 0.75295599999999996
	.quad	0x3fdc06c8711d798e              # double 0.43791400000000003
	.quad	0x3fc79a1fd1569f49              # double 0.184391
	.quad	0x3fdc5faa8a82a561              # double 0.44333899999999998
	.quad	0x3fe0f0bae89eba6b              # double 0.52938600000000002
	.quad	0x3fe3b1df761cbccf              # double 0.61546299999999998
	.quad	0x3fd62d948dc11e43              # double 0.34653200000000001
	.quad	0x3fedfd45a5fc7e6b              # double 0.93716699999999997
	.quad	0x3fbd308bb906466b              # double 0.114022
	.quad	0x3fe59ccb7d41743f              # double 0.67539000000000005
	.quad	0x3fd54d87724fa8b5              # double 0.33285700000000001
	.quad	0x3fed849ecb31c21a              # double 0.92243900000000001
	.quad	0x3fde8049667b5f1c              # double 0.47658
	.quad	0x3f90247021d10b20              # double 0.015764
	.quad	0x3fda23d0bfa09460              # double 0.40843600000000002
	.quad	0x3fec822ff08893b8              # double 0.89089200000000002
	.quad	0x3fb55831f03d145e              # double 0.083377000000000006
	.quad	0x3fece3baba7b9171              # double 0.90279900000000002
	.quad	0x3fe4c9ff92f2b66b              # double 0.64965799999999996
	.quad	0x3fef775536933a04              # double 0.98331699999999999
	.quad	0x3fef80a9de8b3b32              # double 0.984456
	.quad	0x3fd8afab53d640ea              # double 0.38572200000000001
	.quad	0x3fa40a8d21bc126a              # double 0.039142999999999997
	.quad	0x3fda483cafb3b752              # double 0.410659
	.quad	0x3fa7709b738e6d16              # double 0.045781000000000002
	.quad	0x3feaea0fd3b29a1c              # double 0.84107200000000004
	.quad	0x3fc54ddf86e3b470              # double 0.166439
	.quad	0x3fe0115592d98bf8              # double 0.50211600000000001
	.quad	0x3fa60ce0b912dba5              # double 0.043067000000000001
	.quad	0x3fcd27243137b070              # double 0.22775699999999999
	.quad	0x3fb6bc72e275ab7e              # double 0.088813000000000003
	.quad	0x3fc844fa05143bf7              # double 0.189605
	.quad	0x3fe3cb6c7a7c9de0              # double 0.61858199999999997
	.quad	0x3fe2ac7b890d5a5c              # double 0.58355500000000005
	.quad	0x3fecf219220ff541              # double 0.90455300000000005
	.quad	0x3fea37e4de3b8a1a              # double 0.81932300000000002
	.quad	0x3fcb7204295a6c5d              # double 0.214417
	.quad	0x3fd8eadd590c0ad0              # double 0.38933499999999999
	.quad	0x3fe4196744b2b778              # double 0.62810100000000002
	.quad	0x3fdf8f2170931013              # double 0.49311100000000002
	.quad	0x3fe9df4e4430b179              # double 0.80850900000000003
	.quad	0x3fb5781c714fce74              # double 0.083863999999999994
	.quad	0x3fe5f202107b7846              # double 0.68579199999999996
	.quad	0x3fe3fe8ee6b8305e              # double 0.62482400000000005
	.quad	0x3fd8422036006d0d              # double 0.37903599999999998
	.quad	0x3fe5403dddb1209f              # double 0.66409200000000002
	.quad	0x3fc81c8a7a41e57e              # double 0.18837100000000001
	.quad	0x3fe221c044284dfd              # double 0.56662000000000001
	.quad	0x3fef8672756861e9              # double 0.98516199999999998
	.quad	0x3fc72a6b0d9513f9              # double 0.180982
	.quad	0x3fed2fbc1acde1a0              # double 0.91207700000000002
	.quad	0x3fd5b9b23dd54da5              # double 0.33945900000000001
	.quad	0x3fe107485e3da2f9              # double 0.53213900000000003
	.quad	0x3fcc30121682f944              # double 0.220217
	.quad	0x3fe9d9d99029ae4f              # double 0.80784299999999998
	.quad	0x3fe6f75b81301648              # double 0.71769499999999997
	.quad	0x3fea58bc59b8023a              # double 0.82333199999999995
	.quad	0x3f777963992c8c50              # double 0.005731
	.quad	0x3fc3ef30a4e379b7              # double 0.15573699999999999
	.quad	0x3fd890f301eabbcb              # double 0.38384699999999999
	.quad	0x3fcbb98c7e28240b              # double 0.21659999999999999
	.quad	0x3fed3d68405b39e2              # double 0.91374599999999995
	.quad	0x3f9c2374794ea077              # double 0.027479
	.quad	0x3fe3c85e3da2f8be              # double 0.61820900000000001
	.quad	0x3fc5fb71fbc5de9c              # double 0.171736
	.quad	0x3fc1cdfefbf401c5              # double 0.139099
	.quad	0x3fee044d013a92a3              # double 0.938025
	.quad	0x3fe3d5992428d435              # double 0.61982400000000004
	.quad	0x3feda11ec918e326              # double 0.92591800000000002
	.quad	0x3faca9ac36544fe3              # double 0.055981999999999997
	.quad	0x3fd84d2b2bfdb4cc              # double 0.37970999999999999
	.quad	0x3fd2219eb6390c91              # double 0.283302
	.quad	0x3feb8f7b9e060fe4              # double 0.86126499999999994
	.quad	0x3fe01e4b44a1f080              # double 0.50369799999999998
	.quad	0x3fed1abd1aa821f3              # double 0.90951400000000004
	.quad	0x3feab443d46b26c0              # double 0.83450500000000005
	.quad	0x3fdbdab191dde376              # double 0.43522300000000003
	.quad	0x3fde37154003254e              # double 0.47211199999999998
	.quad	0x3fe63393ab430f49              # double 0.69379599999999997
	.quad	0x3fb32dd377e1b8ed              # double 0.074917999999999998
	.quad	0x3fecee1deacc9214              # double 0.90406699999999995
	.quad	0x3fe5d492ff4ba51a              # double 0.682199
	.quad	0x3fe4939eadd590c1              # double 0.64302000000000004
	.quad	0x3fe9ee1deacc9214              # double 0.81031699999999995
	.quad	0x3fd136b8f9b13166              # double 0.26896500000000001
	.quad	0x3fabbafd976ff3ae              # double 0.054161000000000001
	.quad	0x3fc9bf162ae4b018              # double 0.20114399999999999
	.quad	0x3fe6892ee84ad795              # double 0.70424600000000004
	.quad	0x3fecfecdd0d8cb08              # double 0.90610400000000002
	.quad	0x3fe06466b1e5c0ba              # double 0.51225600000000004
	.quad	0x3fde266ba493c89f              # double 0.47109499999999999
	.quad	0x3fee312d3415b142              # double 0.94350299999999998
	.quad	0x3fee8b630a91537a              # double 0.954515
	.quad	0x3fdd51116a8b8f15              # double 0.45807300000000001
	.quad	0x3feca1101b003687              # double 0.89466100000000004
	.quad	0x3fec5a921ccd9620              # double 0.88605599999999995
	.quad	0x3fc5caf2d7f950b9              # double 0.17025599999999999
	.quad	0x3fe268ab4fa48302              # double 0.57527700000000004
	.quad	0x3feeab5807fed203              # double 0.95841600000000004
	.quad	0x3fb22ee41919ac79              # double 0.071027999999999994
	.quad	0x3fe11e6eeb702603              # double 0.53496500000000002
	.quad	0x3fdad1526d8b1dd6              # double 0.41902600000000001
	.quad	0x3fd3b474107314cb              # double 0.30788900000000002
	.quad	0x3fd18305d95dd4c7              # double 0.27362199999999998
	.quad	0x3fd027ae9ab29e4d              # double 0.25242199999999998
	.quad	0x3fe1e019b0ab2e17              # double 0.55860600000000005
	.quad	0x3fedaf7d30ad46f6              # double 0.92767200000000005
	.quad	0x3fd9f7d73c925786              # double 0.405752
	.quad	0x3fa9129888f861a6              # double 0.04897
	.quad	0x3fe56b93ccd0fe8b              # double 0.66938200000000003
	.quad	0x3f949f94855da273              # double 0.020140000000000002
	.quad	0x3fee7312b1b36bd3              # double 0.95154700000000003
	.quad	0x3feb9248d7e02646              # double 0.86160700000000001
	.quad	0x3fe2f4623d0bfa09              # double 0.59233199999999997
	.quad	0x3fd38cb4aec8d5c7              # double 0.30546299999999998
	.quad	0x3fea692d55a3a084              # double 0.82533900000000004
	.quad	0x3fc6a3f034b0e1b5              # double 0.17687800000000001
	.quad	0x3fe594f483cafb3b              # double 0.67443299999999995
	.quad	0x3fd0dedaec4a4096              # double 0.263602
	.quad	0x3fe5993b3a68b19a              # double 0.67495499999999997
	.quad	0x3fb6235b4edb2f66              # double 0.086476999999999998
	.quad	0x3fccf21f6cacd185              # double 0.22613900000000001
	.quad	0x3fde2778140dd3fe              # double 0.47115899999999999
	.quad	0x3fa80e6afcce1c58              # double 0.046984999999999999
	.quad	0x3fda84d338f79852              # double 0.41435699999999998
	.quad	0x3fe4de0d66f0cfe1              # double 0.65210599999999996
	.quad	0x3fd0de76427c7c52              # double 0.26357799999999998
	.quad	0x3fe3831055b89939              # double 0.60974899999999999
	.quad	0x3fe3182235b4edb3              # double 0.596696
	.quad	0x3fd57136a400fba9              # double 0.33503500000000003
	.quad	0x3fd4185058dde7a7              # double 0.31398399999999999
	.quad	0x3fd18c586876e1df              # double 0.27419100000000002
	.quad	0x3fe9c0af1cb89d6b              # double 0.80477100000000001
	.quad	0x3fe4e38a7e73a366              # double 0.65277600000000002
	.quad	0x3fcd0dcfcc5b8dc5              # double 0.22698399999999999
	.quad	0x3fc80aa64c2f837b              # double 0.18782499999999999
	.quad	0x3fe74c7d1bb4916d              # double 0.72808700000000004
	.quad	0x3fb5b1c864883fd5              # double 0.084744
	.quad	0x3fdd8b47c73eee52              # double 0.46162599999999998
	.quad	0x3feb3ac4f7ec3548              # double 0.85092400000000001
	.quad	0x3fea29068986fcdf              # double 0.81750800000000001
	.quad	0x3fec5f06f6944674              # double 0.88660000000000005
	.quad	0x3fc20ffda4052d66              # double 0.14111299999999999
	.quad	0x3fe0d79af1886df8              # double 0.52631899999999998
	.quad	0x3fd8167ec7863bef              # double 0.37637300000000001
	.quad	0x3fe375f0b28522ea              # double 0.60814699999999999
	.quad	0x3fe79bf7ad4b2746              # double 0.73778900000000003
	.quad	0x3fdb62c77574f723              # double 0.42790400000000001
	.quad	0x3fcd736cdf266ba5              # double 0.23008500000000001
	.quad	0x3feb1207d4e09785              # double 0.84595100000000001
	.quad	0x3feed349be8ff328              # double 0.96329200000000003
	.quad	0x3fee819d2391d580              # double 0.953322
	.quad	0x3fef3bdbe3c10518              # double 0.97605699999999995
	.quad	0x3fbdc22ab25b317f              # double 0.116244
	.quad	0x3fb849129888f862              # double 0.094865000000000004
	.quad	0x3fd72d2bb23571d2              # double 0.36213200000000001
	.quad	0x3fd14488c60cbf2b              # double 0.26980799999999999
	.quad	0x3fd87c8d1958969a              # double 0.382602
	.quad	0x3fdd17b5286b5914              # double 0.45457199999999998
	.quad	0x3fe4a036006d0d4a              # double 0.64455700000000005
	.quad	0x3fe8f5d13d74d595              # double 0.78000700000000001
	.quad	0x3feec896dd26b724              # double 0.961986
	.quad	0x3fd960ae9680e065              # double 0.39652599999999999
	.quad	0x3fe6dcd2d44dca8e              # double 0.71445599999999998
	.quad	0x3fed873de1e2de87              # double 0.922759
	.quad	0x3fb6034f3fd933e3              # double 0.085987999999999995
	.quad	0x3fe6de050374ff86              # double 0.71460199999999996
	.quad	0x3fee3fb15b573eab              # double 0.94527499999999998
	.quad	0x3fef0cac4b4d056c              # double 0.97029699999999996
	.quad	0x3fe343a42f1ed17c              # double 0.60200699999999996
	.quad	0x3fe587746887a8d6              # double 0.67278499999999997
	.quad	0x3fe178c21e1d2179              # double 0.545991
	.quad	0x3fc24606748e4756              # double 0.142762
	.quad	0x3fde3760bf5d7881              # double 0.47212999999999999
	.quad	0x3fd9eb2d0a244630              # double 0.40497899999999998
	.quad	0x3fea7f84449dbec2              # double 0.82806599999999997
	.quad	0x3fdccf95d4e8fb01              # double 0.45017000000000001
	.quad	0x3fd5bd3804534bd7              # double 0.33967399999999998
	.quad	0x3fef04944ed6fda8              # double 0.96930899999999997
	.quad	0x3fe2bdd334c5da6a              # double 0.58567199999999997
	.quad	0x3fd2191148fd9fd3              # double 0.28277999999999998
	.quad	0x3fef9b71758e2196              # double 0.98772499999999996
	.quad	0x3fddfaacd9e83e42              # double 0.46842499999999998
	.quad	0x3fa8f6273929ed39              # double 0.048752999999999998
	.quad	0x3fdc6d330941c821              # double 0.44416499999999998
	.quad	0x3fb8614163779e9d              # double 0.095233999999999999
	.quad	0x3fe65cd4ed2cbea5              # double 0.69883200000000001
	.quad	0x3fe7701fb82c2bd8              # double 0.732437
	.quad	0x3fefe52157689ca2              # double 0.99672000000000005
	.quad	0x3fed9f18c9fb6135              # double 0.92567100000000002
	.quad	0x3feea4e592967019              # double 0.95762899999999995
	.quad	0x3fc3ae3e6c4c5975              # double 0.153755
	.quad	0x3fc71eafee6fb4c4              # double 0.18062400000000001
	.quad	0x3fdb2977c88e79ab              # double 0.42440600000000001
	.quad	0x3fe56805a2d72ffd              # double 0.66894799999999999
	.quad	0x3fe7b677f6b1a2a5              # double 0.74102400000000002
	.quad	0x3fe85375c8d9f905              # double 0.76018799999999997
	.quad	0x3fe74d78c436fc16              # double 0.72820700000000005
	.quad	0x3fa3f9830e3cd9a5              # double 0.039012999999999999
	.quad	0x3fe87e90ff972474              # double 0.76544999999999996
	.quad	0x3fea4fa26a22b389              # double 0.82222099999999998
	.quad	0x3fee89a88ace24bc              # double 0.95430400000000004
	.quad	0x3fe4f6dfc5cdd50b              # double 0.65513600000000005
	.quad	0x3fd8d141a6937d20              # double 0.38777200000000001
	.quad	0x3fbbc6fbd273d5bb              # double 0.108505
	.quad	0x3fd7691ea78af3e4              # double 0.36579099999999998
	.quad	0x3fea89fe86833c60              # double 0.82934499999999999
	.quad	0x3fe642e557de0d67              # double 0.69566600000000001
	.quad	0x3fbb44b2b777d0f2              # double 0.106517
	.quad	0x3fe42d96a6a0125a              # double 0.63056500000000004
	.quad	0x3fe73bc6eb0b7c35              # double 0.726047
	.quad	0x3fe9e1975f2cb641              # double 0.80878799999999995
	.quad	0x3fe9bc81908e581d              # double 0.804261
	.quad	0x3fea4d44567125dd              # double 0.821932
	.quad	0x3fe235fa22706d50              # double 0.56908899999999996
	.quad	0x3fe5127d45a5fc7e              # double 0.65850699999999995
	.quad	0x3fe4c5e4e69f05ea              # double 0.64915699999999998
	.quad	0x3fe2d2849cb252ce              # double 0.588198
	.quad	0x3fde7ecfe9b7bf1f              # double 0.47649000000000002
	.quad	0x3fc02f0e0a84be40              # double 0.12643599999999999
	.quad	0x3fd05be1a8262457              # double 0.255608
	.quad	0x3fe9caab8a5ce5b4              # double 0.80598999999999998
	.quad	0x3f9be6e653868fd2              # double 0.027248000000000001
	.quad	0x3fd404f2ae07e5a8              # double 0.31280200000000002
	.quad	0x3fc7bdad7518b0d1              # double 0.185476
	.quad	0x3fb6fcefaa4766c7              # double 0.089797000000000002
	.quad	0x3fca4901d19157ac              # double 0.20535300000000001
	.quad	0x3fc799e518f3eccc              # double 0.18438399999999999
	.quad	0x3fd6540cc78e9f6b              # double 0.34888000000000002
	.quad	0x3fd116616b54e2b0              # double 0.26699099999999998
	.quad	0x3fe0323358f2e05d              # double 0.50612800000000002
	.quad	0x3fed85729b280f13              # double 0.92254000000000003
	.quad	0x3f8a0f0a5efe9318              # double 0.012723999999999999
	.quad	0x3fcbedf1e0828c37              # double 0.218199
	.quad	0x3fe4707bfe7e1fc1              # double 0.63873100000000005
	.quad	0x3fdb7a743a647fdc              # double 0.42934899999999998
	.quad	0x3fe28359bc33f855              # double 0.57853399999999999
	.quad	0x3fe844241c3efae8              # double 0.75831800000000005
	.quad	0x3fe92d3415b1422d              # double 0.78676800000000002
	.quad	0x3fe6493c89f40a28              # double 0.69643999999999995
	.quad	0x3fa3736cdf266ba5              # double 0.037990000000000003
	.quad	0x3fde5460aa64c2f8              # double 0.47389999999999999
	.quad	0x3fc0686e7e62dc6e              # double 0.128187
	.quad	0x3f8bba55d1c3ac93              # double 0.013539000000000001
	.quad	0x3fca829cfdd22856              # double 0.20711099999999999
	.quad	0x3fe40f2389720429              # double 0.62684799999999996
	.quad	0x3fe61cd3e0bd449a              # double 0.69101900000000005
	.quad	0x3fe731db445ed4a2              # double 0.72483600000000004
	.quad	0x3fd91ec918e325d5              # double 0.39250400000000002
	.quad	0x3fda3a0c6b484d77              # double 0.40979300000000002
	.quad	0x3fea3124d099e0e7              # double 0.81849899999999998
	.quad	0x3fc9cdb37c99ae92              # double 0.20158999999999999
	.quad	0x3fe18c0485a0be51              # double 0.548342
	.quad	0x3fbb065f9591cd1c              # double 0.10556599999999999
	.quad	0x3fca3f572de43ed9              # double 0.20505799999999999
	.quad	0x3fe9c669057d1783              # double 0.80547000000000002
	.quad	0x3fca4a83b1d0c804              # double 0.205399
	.quad	0x3fd2d84901d19158              # double 0.29445100000000002
	.quad	0x3fd2caafbc1acde2              # double 0.29362100000000002
	.quad	0x3fee8754f3775b81              # double 0.95401999999999998
	.quad	0x3fb61ccd96206855              # double 0.086376999999999995
	.quad	0x3fee0c75c4a83b1d              # double 0.93902099999999999
	.quad	0x3fe7951e75360d02              # double 0.73695299999999997
	.quad	0x3fba4e5929670197              # double 0.102758
	.quad	0x3fb17fa5d28d002e              # double 0.068353999999999998
	.quad	0x3fd09274e22a2c23              # double 0.25893899999999997
	.quad	0x3fd9049ecb31c21a              # double 0.390907
	.quad	0x3fe9204295a6c5d2              # double 0.785188
	.quad	0x3fd03dfb0d51f81a              # double 0.25378299999999998
	.quad	0x3fc7966be7afa722              # double 0.184278
	.quad	0x3feea05143bf7271              # double 0.95706999999999998
	.quad	0x3fc10f733a8a3f8a              # double 0.13328400000000001
	.quad	0x3fd7ea960b6f9fcb              # double 0.373693
	.quad	0x3fe24c8de2ac3223              # double 0.57184500000000005
	.quad	0x3fd62d948dc11e43              # double 0.34653200000000001
	.quad	0x3fe2faa8a82a5615              # double 0.59309800000000001
	.quad	0x3fe9f7036c9c0a8d              # double 0.81140299999999999
	.quad	0x3fee03c6c97d8cf4              # double 0.93796100000000004
	.quad	0x3fedc343b70ef566              # double 0.93008599999999997
	.quad	0x3fe5fec99f1ae2da              # double 0.68735199999999996
	.quad	0x3feb2b191dde3758              # double 0.84901099999999996
	.quad	0x3fb5aa0cae642bfa              # double 0.084626000000000006
	.quad	0x3fe8563ed0f62739              # double 0.76052799999999998
	.quad	0x3fe542d6a9c560c8              # double 0.66440900000000003
	.quad	0x3fea5dbfceb78898              # double 0.82394400000000001
	.quad	0x3fefdbd2fa0d77b8              # double 0.99558400000000002
	.quad	0x3fa0dcfcc5b8dc55              # double 0.032936
	.quad	0x3fd8fa1e3eaf6838              # double 0.390266
	.quad	0x3fe78f68be2f7b18              # double 0.73625600000000002
	.quad	0x3fd9044ae85b9e8c              # double 0.39088699999999998
	.quad	0x3feea9e90795f677              # double 0.958241
	.quad	0x3fe674eebf65dbfd              # double 0.70177400000000001
	.quad	0x3fe0878fabda0dfe              # double 0.51654800000000001
	.quad	0x3fe97acc4ef88b97              # double 0.79623999999999995
	.quad	0x3fe0bc68661ae70c              # double 0.52299899999999999
	.quad	0x3fe30a569b17481b              # double 0.59501199999999999
	.quad	0x3fe857470eb24a6b              # double 0.76065400000000005
	.quad	0x3feba6fa3fcc9eaa              # double 0.86413300000000004
	.quad	0x3fd9697aeddce7cd              # double 0.397063
	.quad	0x3fe6405d52c16df4              # double 0.695357
	.quad	0x3fc8c5004fb1183b              # double 0.19351199999999999
	.quad	0x3fedd1ce28ed5f14              # double 0.93186100000000005
	.quad	0x3fe5185cee17a030              # double 0.65922400000000003
	.quad	0x3febbc7d5ed06fef              # double 0.86675899999999995
	.quad	0x3fa6feb4a66559f7              # double 0.044912000000000001
	.quad	0x3faa0e6299524bfd              # double 0.050890999999999999
	.quad	0x3fea977c88e79aae              # double 0.83099199999999995
	.quad	0x3feb0caa326e1156              # double 0.84529600000000005
	.quad	0x3fdb5154866a11ed              # double 0.42683900000000002
	.quad	0x3fd9ec679cc74b84              # double 0.40505400000000003
	.quad	0x3fe43280f12c27a6              # double 0.63116499999999998
	.quad	0x3fa64cd74927913f              # double 0.043555000000000003
	.quad	0x3fe1011904b3c3e7              # double 0.53138399999999997
	.quad	0x3fea0d64d7f0ed3e              # double 0.81413500000000005
	.quad	0x3fdf4c271fff79c8              # double 0.48902299999999999
	.quad	0x3fc1a1ec4e7253da              # double 0.13775399999999999
	.quad	0x3f9ddc1e7967caea              # double 0.029159999999999998
	.quad	0x3fec16aad1d041cc              # double 0.87776699999999996
	.quad	0x3fdb6d373affb04f              # double 0.42854100000000001
	.quad	0x3fd9b242070b8cfc              # double 0.401505
	.quad	0x3f905e1c15097c81              # double 0.015984000000000002
	.quad	0x3fedf5e84f09528f              # double 0.93626799999999999
	.quad	0x3fb8e65bea0ba1f5              # double 0.097265000000000004
	.quad	0x3fe85219a847b246              # double 0.76002199999999998
	.quad	0x3fe1d5970b49e01e              # double 0.55732300000000001
	.quad	0x3fedc1c8216c6152              # double 0.92990499999999998
	.quad	0x3fe22cd7cf5f4e44              # double 0.56797399999999998
	.quad	0x3fb9cd3e0bd44999              # double 0.100788
	.quad	0x3fdc93682730c671              # double 0.44649699999999998
	.quad	0x3f4adea897635e74              # double 8.1999999999999998E-4
	.quad	0x3fe2bba55d1c3ac9              # double 0.58540599999999998
	.quad	0x3feaeae5bc87db2b              # double 0.84117399999999998
	.quad	0x3fdbd31337eb28d8              # double 0.43475799999999998
	.quad	0x3fdbb19a415f45e1              # double 0.43271500000000002
	.quad	0x3fe2b65881a15550              # double 0.58475900000000003
	.quad	0x3fa94d2f5dbb9cfa              # double 0.049417000000000003
	.quad	0x3fea9d627bf61aa4              # double 0.831712
	.quad	0x3fdf2352eb5f5f0b              # double 0.48653099999999999
	.quad	0x3fd4f76e6106ab15              # double 0.327602
	.quad	0x3fc518e325d4a5df              # double 0.164822
	.quad	0x3fe9921ee675147f              # double 0.79908699999999999
	.quad	0x3fe3545a5fc7e6b4              # double 0.604047
	.quad	0x3fe1cf9c1f85d745              # double 0.556593
	.quad	0x3f985fd04a2fcefb              # double 0.023803000000000001
	.quad	0x3fdc9bc33f85510d              # double 0.44700699999999999
	.quad	0x3fe4cbd76ee73e68              # double 0.64988299999999999
	.quad	0x3fdb3647baa9b49a              # double 0.42518800000000001
	.quad	0x3fefa74e22a2c237              # double 0.98917299999999996
	.quad	0x3fdd84901d19157b              # double 0.46121600000000001
	.quad	0x3fe5528283d35eb7              # double 0.66632199999999997
	.quad	0x3fe74c942d490e67              # double 0.72809800000000002
	.quad	0x3fee9e42e1262025              # double 0.95681899999999998
	.quad	0x3fbb48b220791c4c              # double 0.10657800000000001
	.quad	0x3fe6c9bc77143394              # double 0.71212600000000004
	.quad	0x3fa7f0025bfad29a              # double 0.046753000000000003
	.quad	0x3fea8b5aa715831f              # double 0.829511
	.quad	0x3fd3b8305d95dd4c              # double 0.30811699999999997
	.quad	0x3fae115592d98bf8              # double 0.058726
	.quad	0x3fefa2c881e4712e              # double 0.98862099999999997
	.quad	0x3fe1187e7c06e19c              # double 0.53424000000000005
	.quad	0x3fd7fb9389b52008              # double 0.37473000000000001
	.quad	0x3fea09b738e6d15b              # double 0.81368600000000002
	.quad	0x3fdb0d66f0cfe154              # double 0.42269299999999999
	.quad	0x3fb9f212d77318fc              # double 0.10135
	.quad	0x3fdbea18372e6a77              # double 0.43616300000000002
	.quad	0x3fe44c7d1bb4916d              # double 0.63433700000000004
	.quad	0x3f9b66f9335d249e              # double 0.026759999999999999
	.quad	0x3f9db8348f53c57a              # double 0.029023
	.quad	0x3fef895af294dd72              # double 0.98551699999999998
	.quad	0x3fda4c8366516db1              # double 0.41092000000000001
	.quad	0x3fbf66b6177ea1c7              # double 0.12266100000000001
	.quad	0x3fe5b25f633ce63a              # double 0.67802399999999996
	.quad	0x3fe4c2e33eff1950              # double 0.64878999999999998
	.quad	0x3fcc9b280f12c27a              # double 0.22348499999999999
	.quad	0x3fd3feac42e9899c              # double 0.312419
	.quad	0x3fee0a5efe931876              # double 0.93876599999999999
	.quad	0x3f65dd4c76d117b5              # double 0.0026689999999999999
	.quad	0x3f97d41743e963dc              # double 0.023269999999999999
	.quad	0x3fef72cb641700ce              # double 0.98276300000000005
	.quad	0x3fc06b723ee1bd1f              # double 0.128279
	.quad	0x3f9b90214ad362e9              # double 0.026917
	.quad	0x3f91de69ad42c3ca              # double 0.01745
	.quad	0x3fdac23315d701da              # double 0.418103
	.quad	0x3fec9600f345069a              # double 0.89331099999999997
	.quad	0x3fe91bc33f85510d              # double 0.78463899999999998
	.quad	0x3fae957470eb24a7              # double 0.059734000000000002
	.quad	0x3fe503be6601bc99              # double 0.65670700000000004
	.quad	0x3fe6ab430f49491f              # double 0.70840599999999998
	.quad	0x3fe3aa2c2374794f              # double 0.61452300000000004
	.quad	0x3fe3fe73a365cb36              # double 0.62481100000000001
	.quad	0x3fe9d4152b0a6fc6              # double 0.80713900000000005
	.quad	0x3fef423d9231c64c              # double 0.97683600000000003
	.quad	0x3fc34b4070329803              # double 0.15073400000000001
	.quad	0x3fe1e9db65ecc3e3              # double 0.55979699999999999
	.quad	0x3fd0e5321e603d57              # double 0.26398899999999997
	.quad	0x3fd5aed1394317ad              # double 0.33879500000000001
	.quad	0x3fee6b28d8665e03              # double 0.95058100000000001
	.quad	0x3fd67e414e7ee914              # double 0.35145599999999999
	.quad	0x3fe71843c3a42f1f              # double 0.72171200000000002
	.quad	0x3fe5860bb2bba98f              # double 0.67261300000000002
	.quad	0x3fe67bc3c5bd0e13              # double 0.70260800000000001
	.quad	0x3fe1ee8d10f51aca              # double 0.56037000000000003
	.quad	0x3fdc5568e820e62a              # double 0.44271300000000002
	.quad	0x3faec1e364bec67a              # double 0.060073000000000001
	.quad	0x3feccdb37c99ae92              # double 0.90010999999999997
	.quad	0x3fb7955f78359bc3              # double 0.092122999999999997
	.quad	0x3fdf3382e44b6e93              # double 0.48751899999999998
	.quad	0x3fc892c493426784              # double 0.19197900000000001
	.quad	0x3fef43e963dc486b              # double 0.97704000000000001
	.quad	0x3fda82fd75e2046c              # double 0.41424499999999997
	.quad	0x3fe0b5d462c343b7              # double 0.52219599999999999
	.quad	0x3fea996d8f4f93bc              # double 0.83122899999999999
	.quad	0x3fbb1d2e0e30446b              # double 0.10591399999999999
	.quad	0x3fdd784662bae03b              # double 0.46046599999999999
	.quad	0x3fe877a7008a697b              # double 0.76460600000000001
	.quad	0x3feee06748e47560              # double 0.964893
	.quad	0x3f90b84988094e5d              # double 0.016327999999999999
	.quad	0x3fe5ff023e9ea140              # double 0.68737899999999996
	.quad	0x3fc2c79f666234a8              # double 0.14671699999999999
	.quad	0x3feda038194c0160              # double 0.92580799999999996
	.quad	0x3fb4e1e71044f1a2              # double 0.081572000000000005
	.quad	0x3fee524180d3cff6              # double 0.94754099999999997
	.quad	0x3fecbf9c62a1b5c8              # double 0.89839000000000002
	.quad	0x3fec14d940789614              # double 0.87754500000000001
	.quad	0x3fd4663c74fb54a0              # double 0.31874000000000002
	.quad	0x3fde7e175d13d74d              # double 0.47644599999999998
	.quad	0x3fe220c282c6ef3d              # double 0.56649899999999997
	.quad	0x3fe9d634549b62c7              # double 0.80739799999999995
	.quad	0x3fc3097c80841ede              # double 0.148727
	.quad	0x3fd592428d434a02              # double 0.33705200000000002
	.quad	0x3fee356b87379746              # double 0.944021
	.quad	0x3fbcb08dd1e53a82              # double 0.112069
	.quad	0x3f95bfad2999567e              # double 0.021239000000000001
	.quad	0x3fc1a3d2d87f8876              # double 0.13781199999999999
	.quad	0x3fe1cb2d905c0336              # double 0.55605199999999999
	.quad	0x3fecafdb8fde2ef5              # double 0.89646700000000001
	.quad	0x3fe8339c0ebedfa4              # double 0.75629999999999997
	.quad	0x3fd3b45ae5ffa3ba              # double 0.30788300000000002
	.quad	0x3fd625aab4741073              # double 0.346049
	.quad	0x3fd07a1c25d07421              # double 0.25745299999999999
	.quad	0x3fdce7924af0bf1a              # double 0.45163399999999998
	.quad	0x3fdadf761cbccf29              # double 0.41988900000000001
	.quad	0x3fe78bac710cb296              # double 0.73580000000000001
	.quad	0x3fed51b93037d630              # double 0.91622599999999998
	.quad	0x3f5b1d92b7fe08af              # double 0.001655
	.quad	0x3fe6e9c0229a5ebb              # double 0.71603399999999995
	.quad	0x3feb42a454de7ea6              # double 0.851885
	.quad	0x3fe14024b33daf8e              # double 0.53908
	.quad	0x3fea3ccaf709b739              # double 0.81992100000000001
	.quad	0x3fe08dc11e42e126              # double 0.51730399999999999
	.quad	0x3fd711ec918e325d              # double 0.36046899999999998
	.quad	0x3fd388d6d3b6cbda              # double 0.30522700000000003
	.quad	0x3fd8f70153bd1676              # double 0.39007599999999998
	.quad	0x3fed3bc6eb0b7c35              # double 0.913547
	.quad	0x3fc4ff327aa68f4b              # double 0.16403799999999999
	.quad	0x3fd3ba8826aa8eb4              # double 0.30825999999999998
	.quad	0x3fa4f355cd91eeaa              # double 0.040918999999999997
	.quad	0x3fe0fee4e26d4802              # double 0.531115
	.quad	0x3fdd1fc4c165907e              # double 0.45506400000000002
	.quad	0x3f82d905c0336156              # double 0.0092029999999999994
	.quad	0x3feb66149c6f36f0              # double 0.85621100000000006
	.quad	0x3fee8e086bdf4c2b              # double 0.95483799999999996
	.quad	0x3fe2db6a1e81cb47              # double 0.58928400000000003
	.quad	0x3fcf23704790b84a              # double 0.24326900000000001
	.quad	0x3fe16acc92146a1a              # double 0.54428699999999997
	.quad	0x3fecb14013ec460f              # double 0.89663700000000002
	.quad	0x3fe3bab21815a07b              # double 0.61653999999999998
	.quad	0x3fde661ae70c1334              # double 0.47498200000000002
	.quad	0x3fe9cee392e1ef74              # double 0.80650500000000002
	.quad	0x3fe58e4fb97bb731              # double 0.67362200000000005
	.quad	0x3fc84d2b2bfdb4cc              # double 0.189855
	.quad	0x3fefb6c3760bf5d8              # double 0.99106000000000005
	.quad	0x3f98ca8198f1d3ed              # double 0.024209999999999999
	.quad	0x3fd11acde19fc2a9              # double 0.26726100000000003
	.quad	0x3fa2f5989df1172f              # double 0.03703
	.quad	0x3fe67ff79c842fa5              # double 0.703121
	.quad	0x3fdfdc8323358f2e              # double 0.497834
	.quad	0x3f982730c67168f9              # double 0.023587
	.quad	0x3fe5034f3fd933e3              # double 0.65665399999999996
	.quad	0x3fd65b078d92fb1a              # double 0.34930600000000001
	.quad	0x3fbd4e09784ec637              # double 0.114472
	.quad	0x3fde662fdfc19c17              # double 0.47498699999999999
	.quad	0x3fefa7e308787486              # double 0.98924400000000001
	.quad	0x3fde02eec7c957cd              # double 0.46892899999999998
	.quad	0x3fdef151e75360d0              # double 0.48347899999999999
	.quad	0x3fde573a797891e2              # double 0.474074
	.quad	0x3fd5b1422ccb3a26              # double 0.33894400000000002
	.quad	0x3fec122fad6cb535              # double 0.87722
	.quad	0x3f71d9b1b79d909f              # double 0.0043579999999999999
	.quad	0x3fa8c282c6ef3d3a              # double 0.048358999999999999
	.quad	0x3fec9116a8b8f14e              # double 0.89271100000000003
	.quad	0x3fe1267620ee8d11              # double 0.535945
	.quad	0x3fa5f9591cd1c7de              # double 0.042917999999999998
	.quad	0x3fd17d73c9257860              # double 0.27328200000000002
	.quad	0x3fcfad9f0a1be2b5              # double 0.24748600000000001
	.quad	0x3fd52c5197a24895              # double 0.33083000000000001
	.quad	0x3feac4806290eed0              # double 0.83648699999999998
	.quad	0x3feb5a76d97b30f9              # double 0.85479300000000003
	.quad	0x3fc5ab96f21f6cad              # double 0.16929900000000001
	.quad	0x3fe924f00ef1348b              # double 0.78575899999999999
	.quad	0x3fe76c1a048e043a              # double 0.73194599999999999
	.quad	0x3fc717507e9d94d1              # double 0.180399
	.quad	0x3fe10e53eb399f5e              # double 0.532999
	.quad	0x3fd11fa333764f12              # double 0.26755600000000002
	.quad	0x3fd78b26394face6              # double 0.36786799999999997
	.quad	0x3fe9f91a32b12d34              # double 0.81165799999999999
	.quad	0x3feb7e414e7ee914              # double 0.85916199999999998
	.quad	0x3fcc90de093532e8              # double 0.22317100000000001
	.quad	0x3fd604ddb5525cc4              # double 0.34404699999999999
	.quad	0x3fa79830e3cd9a52              # double 0.046082999999999999
	.quad	0x3fe83a604e1e7104              # double 0.75712599999999996
	.quad	0x3fda4c5da6a44418              # double 0.41091100000000003
	.quad	0x3fe17ea3df6db941              # double 0.546709
	.quad	0x3fd3e1e71044f1a2              # double 0.31066300000000002
	.quad	0x3fda9fe004b7f5a5              # double 0.41600799999999999
	.quad	0x3fd293708aac96cc              # double 0.29024899999999998
	.quad	0x3fc3d805e5f30e80              # double 0.15503
	.quad	0x3fce6d9be4cd7492              # double 0.23771999999999999
	.quad	0x3fefa4d099e0e736              # double 0.988869
	.quad	0x3fe6fac81d3aa36a              # double 0.718113
	.quad	0x3fe4054690de0935              # double 0.62564399999999998
	.quad	0x3feccb09e98dcdb3              # double 0.89978499999999995
	.quad	0x3feef8af3e468cac              # double 0.96785699999999996
	.quad	0x3fd65a14488c60cc              # double 0.349248
	.quad	0x3fe088a04d12018a              # double 0.51667799999999997
	.quad	0x3fef05f8d2e514c2              # double 0.96947899999999998
	.quad	0x3fe28fffbce4217d              # double 0.58007799999999998
	.quad	0x3fd632fcac8e68e4              # double 0.346862
	.quad	0x3fef7138bcdfefbf              # double 0.98257099999999997
	.quad	0x3fee2bb8800eae19              # double 0.94283700000000004
	.quad	0x3f604d551d68c693              # double 0.00199
	.quad	0x3fea7c8f32378ab1              # double 0.82770500000000002
	.quad	0x3fe408bb906466b2              # double 0.62606600000000001
	.quad	0x3fe8040bfe3b03e2              # double 0.75049399999999999
	.quad	0x3fed8a7610279570              # double 0.92315199999999997
	.quad	0x3fec59a95421c044              # double 0.88594499999999998
	.quad	0x3fe7ee0b0af5fd48              # double 0.74780800000000003
	.quad	0x3fd6e553ac4f7ec3              # double 0.35774699999999998
	.quad	0x3fc0c0bdcad14a0a              # double 0.130882
	.quad	0x3fe5c0d6f544bb1b              # double 0.67979000000000001
	.quad	0x3fe1b4ce3de6149c              # double 0.55332099999999995
	.quad	0x3fdd61bf37b8d3f2              # double 0.45909100000000003
	.quad	0x3fb4e8427418d691              # double 0.081669000000000005
	.quad	0x3fd9877ee4e26d48              # double 0.398895
	.quad	0x3fcde0f7fcfc3f81              # double 0.233428
	.quad	0x3fe79b79d909f1f1              # double 0.73772899999999997
	.quad	0x3fd20c77dd872f34              # double 0.28201100000000001
	.quad	0x3fb7d028a1dfb939              # double 0.093020000000000005
	.quad	0x3fc81ccd96206855              # double 0.18837899999999999
	.quad	0x3fec43f3e0370cdd              # double 0.88329500000000005
	.quad	0x3feef43632c1f42c              # double 0.96731100000000003
	.quad	0x3fe6b8aa00192a73              # double 0.71004199999999995
	.quad	0x3fe872f9873ffac2              # double 0.76403500000000002
	.quad	0x3febaec28b2a6b0e              # double 0.86508300000000005
	.quad	0x3fe6e1c36976bc1f              # double 0.715059
	.quad	0x3fec691c8eabffce              # double 0.88783100000000004
	.quad	0x3fd35f3d7d3910c3              # double 0.30268800000000001
	.quad	0x3faa839042d8c2a4              # double 0.051784999999999998
	.quad	0x3fc649667b5f1bef              # double 0.17411499999999999
	.quad	0x3fe66ddce7cd0353              # double 0.70091099999999995
	.quad	0x3f9845132f87ad08              # double 0.023701
	.quad	0x3fd15143bf727137              # double 0.27058500000000002
	.quad	0x3fe2acf52b90a783              # double 0.58361300000000005
	.quad	0x3feeae05ccc89b0f              # double 0.95874300000000001
	.quad	0x3fec996312f4cf4a              # double 0.89372399999999996
	.quad	0x3fc3f383f0bae89f              # double 0.15586900000000001
	.quad	0x3fdc4a558ea7ce10              # double 0.44203700000000001
	.quad	0x3fe899e731d2e0e3              # double 0.768787
	.quad	0x3fc9bd61f5be5d9e              # double 0.20109199999999999
	.quad	0x3fe3d306a2b17050              # double 0.61951000000000001
	.quad	0x3fec070da5daf07c              # double 0.875861
	.quad	0x3fc46034f3fd933e              # double 0.15918599999999999
	.quad	0x3fd36f2a5a469d73              # double 0.30365999999999999
	.quad	0x3feb386f47b677f7              # double 0.85063900000000003
	.quad	0x3fd71dc50ce4ead1              # double 0.36119200000000001
	.quad	0x3fc59357603925bb              # double 0.16855899999999999
	.quad	0x3fdfacb85a4f00ef              # double 0.494917
	.quad	0x3fee7b9170d62bf1              # double 0.95258399999999999
	.quad	0x3fe7077681669ced              # double 0.719661
	.quad	0x3fdd0eb67c286f8b              # double 0.45402300000000001
	.quad	0x3fbd13c68661ae71              # double 0.113583
	.quad	0x3fd494855da27286              # double 0.32156499999999999
	.quad	0x3fe8c1205bc01a37              # double 0.77357500000000001
	.quad	0x3fe727d88c1db014              # double 0.72361399999999998
	.quad	0x3fe7d94f26aec072              # double 0.74527699999999997
	.quad	0x3fdd6a6e32e3821b              # double 0.459621
	.quad	0x3fc07f3cf70153bd              # double 0.128883
	.quad	0x3fea83a322af5771              # double 0.828569
	.quad	0x3fcd46a1a500d5e9              # double 0.228718
	.quad	0x3fd60f0e90bc7b46              # double 0.344669
	.quad	0x3fed567ba237cdcd              # double 0.91680700000000004
	.quad	0x3fb13825e13b18db              # double 0.067263000000000003
	.quad	0x3fdb91a32b12d341              # double 0.43076399999999998
	.quad	0x3fcf7f7be121ee67              # double 0.24607799999999999
	.quad	0x3fe6339c0ebedfa4              # double 0.69379999999999997
	.quad	0x3fe329fe004b7f5a              # double 0.59887599999999996
	.quad	0x3fcbf761cbccf28c              # double 0.21848699999999999
	.quad	0x3fde3354c122749f              # double 0.471883
	.quad	0x3fb839ef0f16f438              # double 0.094633999999999996
	.quad	0x3fab98201cd5f99c              # double 0.053894999999999998
	.quad	0x3fdbaa5c5f7c675a              # double 0.43227300000000002
	.quad	0x3fda7ea1c68ec52a              # double 0.41397899999999999
	.quad	0x3fe86ece13f4a98b              # double 0.76352600000000004
	.quad	0x3fa0a8f3a9b06812              # double 0.032538999999999998
	.quad	0x3fe8faa044ae85ba              # double 0.78059400000000001
	.quad	0x3fdae5e2478854ce              # double 0.42028100000000002
	.quad	0x3fcc6f694467381d              # double 0.22214999999999999
	.quad	0x3fdd101f31f46ed2              # double 0.45410899999999998
	.quad	0x3fe332e9ccb7d417              # double 0.59996499999999997
	.quad	0x3feecdc65c70435f              # double 0.962619
	.quad	0x3fe68a915379fa98              # double 0.70441500000000001
	.quad	0x3fe94710cb295e9e              # double 0.78992499999999999
	.quad	0x3fc882491afc04c9              # double 0.19147600000000001
	.quad	0x3fe619d451fc4c16              # double 0.69065299999999996
	.quad	0x3fc9fa43fe5c91d1              # double 0.20294999999999999
	.quad	0x3fc6d0bb6ed67770              # double 0.17824499999999999
	.quad	0x3fe7626d4801f751              # double 0.730765
	.quad	0x3fe431a08bfc2225              # double 0.63105800000000001
	.quad	0x3fec4d9e83e425af              # double 0.88447500000000001
	.quad	0x3fd13c3e74afd545              # double 0.26930199999999999
	.quad	0x3fd296cc5fbf8338              # double 0.29045399999999999
	.quad	0x3fb614df8b157258              # double 0.086255999999999999
	.quad	0x3fcb329c347e8cce              # double 0.212482
	.quad	0x3feb2875d56f32be              # double 0.84868900000000003
	.quad	0x3fe524638c975297              # double 0.66069199999999995
	.quad	0x3fe93b320535c9e6              # double 0.78847599999999995
	.quad	0x3f9fe08aefb2aae3              # double 0.031130000000000001
	.quad	0x3fe2d3ae685db76b              # double 0.58833999999999997
	.quad	0x3fecdd052934acb0              # double 0.90198
	.quad	0x3fd8ae3a3a8e7147              # double 0.38563399999999998
	.quad	0x3fde647baa9b499d              # double 0.474883
	.quad	0x3fe3c73cd573647c              # double 0.61807100000000004
	.quad	0x3fe162b8c75c4a84              # double 0.54330100000000003
	.quad	0x3fc86d2674080f99              # double 0.190831
	.quad	0x3fd98c7e28240b78              # double 0.3992
	.quad	0x3fe590c0ad03d9a9              # double 0.67391999999999996
	.quad	0x3fe55dc8323358f3              # double 0.66769800000000001
	.quad	0x3fdbfb8f57f737da              # double 0.43722899999999998
	.quad	0x3f5f31f46ed245b3              # double 0.0019040000000000001
	.quad	0x3fe694face67d780              # double 0.70568600000000004
	.quad	0x3feefbd273d5bab2              # double 0.96823999999999999
	.quad	0x3fb2cdf266ba493d              # double 0.073455000000000006
	.quad	0x3fd1ec6bce8533b1              # double 0.280055
	.quad	0x3fb2d6cb5350092d              # double 0.073590000000000003
	.quad	0x3fe7e08f21709310              # double 0.74616199999999999
	.quad	0x3fe9ffb267c6b8b7              # double 0.81246300000000005
	.quad	0x3fe7672324c83665              # double 0.73133999999999999
	.quad	0x3fc4ab9b23dd54da              # double 0.16148699999999999
	.quad	0x3f829f59ccfaeff6              # double 0.0090930000000000004
	.quad	0x3fc832e3821af7d3              # double 0.189053
	.quad	0x3feacc74b838c112              # double 0.83745800000000004
	.quad	0x3fe2e72324c83665              # double 0.59071499999999999
	.quad	0x3fe0964c729f59cd              # double 0.518347
	.quad	0x3fc105c03361565c              # double 0.132988
	.quad	0x3fe077f27fe4bcae              # double 0.51464200000000004
	.quad	0x3fd23a42f1ed17c6              # double 0.284806
	.quad	0x3fd9380cb6c7a7ca              # double 0.39404600000000001
	.quad	0x3fc6c08b75ea67e8              # double 0.17775099999999999
	.quad	0x3fd9138fffbce421              # double 0.39181899999999997
	.quad	0x3fd0efbb0e5e6794              # double 0.26463199999999998
	.quad	0x3fd84fa05143bf72              # double 0.37985999999999998
	.quad	0x3fa8c9320d9945b7              # double 0.048410000000000002
	.quad	0x3feae030c23fab11              # double 0.83986700000000003
	.quad	0x3fed10129cbab64a              # double 0.90821200000000002
	.quad	0x3fe592cadddf43c8              # double 0.67416900000000002
	.quad	0x3fe20b3b320535ca              # double 0.56387100000000001
	.quad	0x3fe0b851eb851eb8              # double 0.52249999999999996
	.quad	0x3fdfe4a7b4e54f7b              # double 0.49833100000000002
	.quad	0x3fc6327ed84d338f              # double 0.17341599999999999
	.quad	0x3fdaa0663c74fb55              # double 0.41604000000000002
	.quad	0x3fde4ab606b7aa26              # double 0.47331000000000001
	.quad	0x3fe4c28f5c28f5c3              # double 0.64875000000000005
	.quad	0x3fcae8427418d691              # double 0.21021300000000001
	.quad	0x3fe07e6d58c8eef2              # double 0.51543300000000003
	.quad	0x3fef057082491afc              # double 0.96941399999999999
	.quad	0x3fec8d6b228dc982              # double 0.89226300000000003
	.quad	0x3fe3dc8b86b15f89              # double 0.620672
	.quad	0x3fedf52fc2656abe              # double 0.93618000000000001
	.quad	0x3fdbdc4007570c56              # double 0.43531799999999998
	.quad	0x3fee6b7cbb3c8191              # double 0.95062100000000005
	.quad	0x3f833daf8df7a4e8              # double 0.0093950000000000005
	.quad	0x3fe70dc11e42e126              # double 0.72042899999999999
	.quad	0x3fc6598e10cf5b1d              # double 0.17460800000000001
	.quad	0x3fdf70c996b7670a              # double 0.491259
	.quad	0x3fef3f7f06705c89              # double 0.97650099999999995
	.quad	0x3fcada9003eea20a              # double 0.20979500000000001
	.quad	0x3fe49b0ccbc05d53              # double 0.64392700000000003
	.quad	0x3fe6c3e100607810              # double 0.71141100000000002
	.quad	0x3feb3ac4f7ec3548              # double 0.85092400000000001
	.quad	0x3fe17e889c1b5419              # double 0.54669599999999996
	.quad	0x3fd0dec5f394b7b3              # double 0.26359700000000003
	.quad	0x3fd0d78c436fc159              # double 0.263156
	.quad	0x3fde7ccc03793144              # double 0.47636699999999998
	.quad	0x3fe0cec636b09635              # double 0.52524099999999996
	.quad	0x3f82745bf26f1dc5              # double 0.0090109999999999999
	.quad	0x3fa47368ad688377              # double 0.039942999999999999
	.quad	0x3fbbf811f4f50a03              # double 0.109254
	.quad	0x3fc6785b5b70691f              # double 0.17554800000000001
	.quad	0x3fd041aac53b0814              # double 0.25400800000000001
	.quad	0x3fcd3b96af038e2a              # double 0.228381
	.quad	0x3fdf002e2328f9f4              # double 0.48438599999999998
	.quad	0x3fece2f166e008ea              # double 0.90270300000000003
	.quad	0x3f8fcc1871e6cd29              # double 0.015526
	.quad	0x3fd85c78a6dacabc              # double 0.38064399999999998
	.quad	0x3fa4855da272862f              # double 0.040079999999999998
	.quad	0x3fe9b14ec204f2ae              # double 0.802894
	.quad	0x3fd37a63736cdf26              # double 0.30434499999999998
	.quad	0x3fdef9096bb98c7e              # double 0.48394999999999999
	.quad	0x3fb7c9363f572de4              # double 0.092913999999999997
	.quad	0x3fefad3a604e1e71              # double 0.98989599999999999
	.quad	0x3fb891e215336dec              # double 0.095976000000000005
	.quad	0x3fe927ac81d3aa37              # double 0.78609300000000004
	.quad	0x3fe73e681a9b8cb9              # double 0.72636800000000001
	.quad	0x3feabfd0d0678c00              # double 0.83591499999999996
	.quad	0x3fe8315d701d9f4d              # double 0.75602599999999998
	.quad	0x3fe3feae5bc87db3              # double 0.62483900000000003
	.quad	0x3fd6352220bc382a              # double 0.346993
	.quad	0x3f858fb43d89ce4a              # double 0.010527999999999999
	.quad	0x3fc25f394b7b2895              # double 0.14353099999999999
	.quad	0x3fd32a90cd423d92              # double 0.29947299999999999
	.quad	0x3fdf1b152f3c2dae              # double 0.48602800000000002
	.quad	0x3fd4b402d16b97ff              # double 0.32348700000000002
	.quad	0x3fea9741d084e832              # double 0.83096400000000004
	.quad	0x3fda5625a682b628              # double 0.41150799999999998
	.quad	0x3fee26fe718a86d7              # double 0.94225999999999999
	.quad	0x3fe0d5fdcdf69878              # double 0.52612199999999998
	.quad	0x3fe308094e5d5b25              # double 0.59473100000000001
	.quad	0x3fe1e03d57796399              # double 0.55862299999999998
	.quad	0x3fe66e6d9be4cd75              # double 0.70098000000000005
	.quad	0x3fcbbee3d5fdcdf7              # double 0.21676300000000001
	.quad	0x3fe0f924af0bf1a6              # double 0.53041300000000002
	.quad	0x3feef204295a6c5d              # double 0.96704299999999998
	.quad	0x3fd63ff69014b59a              # double 0.34765400000000002
	.quad	0x3fea6c7863beec39              # double 0.82574099999999995
	.quad	0x3fe1d78a2a90cd42              # double 0.55756099999999997
	.quad	0x3fea146a1a500d5f              # double 0.81499200000000005
	.quad	0x3fd6f8f8a4c1ebc8              # double 0.35894599999999999
	.quad	0x3feab2b55ef1fddf              # double 0.83431500000000003
	.quad	0x3fd626fa3fcc9eaa              # double 0.34612900000000002
	.quad	0x3fec4f2064239607              # double 0.88465899999999997
	.quad	0x3fea28b08dd1e53b              # double 0.81746700000000005
	.quad	0x3fef0b47c73eee52              # double 0.97012699999999996
	.quad	0x3fe713a4f8726d05              # double 0.72114800000000001
	.quad	0x3fb673a365cb35f4              # double 0.087702000000000002
	.quad	0x3fca79bbadc0980b              # double 0.20684
	.quad	0x3fea5c63ae2541d9              # double 0.82377800000000001
	.quad	0x3fe55d35653c9abb              # double 0.667628
	.quad	0x3fcc052d666a9824              # double 0.21890799999999999
	.quad	0x3fdc2ae8e1d6494d              # double 0.44011899999999998
	.quad	0x3fd78cfbfc6540cc              # double 0.36797999999999997
	.quad	0x3fde3b0c4588a04d              # double 0.472354
	.quad	0x3fc58c0053e2d624              # double 0.16833500000000001
	.quad	0x3fee67168f8e7ddd              # double 0.95008400000000004
	.quad	0x3fc4f251c193b3a7              # double 0.16364500000000001
	.quad	0x3fd4af4f0d844d01              # double 0.32319999999999999
	.quad	0x3fdbdaec4a4095f2              # double 0.43523699999999999
	.quad	0x3fee6809d495182b              # double 0.95020000000000004
	.quad	0x3fd87ca643cc07ab              # double 0.382608
	.quad	0x3fec33d6c7219221              # double 0.881328
	.quad	0x3fe5404c8bc9cd3e              # double 0.66409899999999999
	.quad	0x3feb37414a4d2b2c              # double 0.850495
	.quad	0x3fe04f8d716d2aa6              # double 0.50971100000000003
	.quad	0x3fe848ba83f4eca7              # double 0.75887800000000005
	.quad	0x3fc40ff540895d0b              # double 0.15673699999999999
	.quad	0x3fe872580c308feb              # double 0.76395800000000003
	.quad	0x3fe99d8e86402081              # double 0.80048299999999994
	.quad	0x3fd2f0f5a1016ce8              # double 0.29595700000000003
	.quad	0x3fe05423d9231c65              # double 0.51027100000000003
	.quad	0x3fccec5b078d92fb              # double 0.225963
	.quad	0x3fecbee807bbb624              # double 0.89830399999999999
	.quad	0x3fea5573647baa9b              # double 0.82293099999999997
	.quad	0x3fe808df37329c34              # double 0.75108299999999994
	.quad	0x3fdd9a5ebb7739f3              # double 0.46254699999999999
	.quad	0x3fed118c197e5647              # double 0.90839199999999998
	.quad	0x3fe3c7b45f17bd8c              # double 0.61812800000000001
	.quad	0x3fd96a875d56f32c              # double 0.39712700000000001
	.quad	0x3fd0765fd8adab9f              # double 0.25722499999999998
	.quad	0x3fea8d2c386d2ed8              # double 0.82973300000000005
	.quad	0x3fe63076c050bd88              # double 0.69341600000000003
	.quad	0x3fc9fb9389b52008              # double 0.20299
	.quad	0x3fd6838c111ada77              # double 0.35177900000000001
	.quad	0x3fe256777079e59f              # double 0.57305499999999998
	.quad	0x3fe749c90c4dec1c              # double 0.72775699999999999
	.quad	0x3fe2915df6555c53              # double 0.58024500000000001
	.quad	0x3fc9e41d4b6a619e              # double 0.20227400000000001
	.quad	0x3fe413a92a305532              # double 0.62739999999999996
	.quad	0x3fb17b5286b59147              # double 0.068288000000000001
	.quad	0x3fe8746887a8d64d              # double 0.76420999999999994
	.quad	0x3fd9e9d0e991ff71              # double 0.40489599999999998
	.quad	0x3fefb986338b47c7              # double 0.99139699999999997
	.quad	0x3fdcd03968d759ef              # double 0.45020900000000003
	.quad	0x3feaaff8ec0f8833              # double 0.83398099999999997
	.quad	0x3fefbafd976ff3ae              # double 0.99157600000000001
	.quad	0x3fe0d63a9f383f0c              # double 0.52615100000000004
	.quad	0x3fe889bf9c62a1b6              # double 0.76681500000000002
	.quad	0x3fdb9cbee807bbb6              # double 0.43144199999999999
	.quad	0x3feb182235b4edb3              # double 0.846696
	.quad	0x3fe5e3022dd7a9a0              # double 0.68396100000000004
	.quad	0x3fe1d1c9f72f76e6              # double 0.55685899999999999
	.quad	0x3fe6ef3b213e3e29              # double 0.71670299999999998
	.quad	0x3fe109b0ee49f517              # double 0.53243300000000005
	.quad	0x3fe30d972cd7cf5f              # double 0.59540899999999997
	.quad	0x3fc069057d1782d4              # double 0.12820500000000001
	.quad	0x3fb661bf37b8d3f2              # double 0.087429000000000006
	.quad	0x3fe9b7de939eadd6              # double 0.80369500000000005
	.quad	0x3fdb13e81450efdd              # double 0.42309000000000002
	.quad	0x3fd6b9a5a89b951c              # double 0.35508099999999998
	.quad	0x3fe097939a7c17a9              # double 0.51850300000000005
	.quad	0x3fe0e69057d1782d              # double 0.52814499999999998
	.quad	0x3fef74107314ca92              # double 0.98291799999999996
	.quad	0x3fe4aee631f8a090              # double 0.64634999999999998
	.quad	0x3fd089e34330d738              # double 0.25841599999999998
	.quad	0x3fe8e7cd03537197              # double 0.77829599999999999
	.quad	0x3fe06809d495182b              # double 0.51270000000000004
	.quad	0x3fd5fbc5de9c022a              # double 0.34349200000000002
	.quad	0x3fd06030c23fab11              # double 0.25587100000000002
	.quad	0x3fe9d9d99029ae4f              # double 0.80784299999999998
	.quad	0x3fe7fca42aed1394              # double 0.74958999999999997
	.quad	0x3fdf2c669057d178              # double 0.48708499999999999
	.quad	0x3fe52919695d91ac              # double 0.66126700000000005
	.quad	0x3fdb8333fc86cebc              # double 0.42988300000000002
	.quad	0x3fd025cc426351df              # double 0.252307
	.quad	0x3fef9932d6ece13f              # double 0.98745099999999996
	.quad	0x3fe9d3910c2c5e2d              # double 0.80707600000000002
	.quad	0x3fe0d9f6ec5b078e              # double 0.52660700000000005
	.quad	0x3fe7c85a0be51090              # double 0.74320699999999995
	.quad	0x3fef53f5b5fa2270              # double 0.97899899999999995
	.quad	0x3fd53f4eca686e7e              # double 0.33198899999999998
	.quad	0x3fe6d5821294573a              # double 0.71356299999999995
	.quad	0x3feb41db0142f61f              # double 0.85178900000000002
	.quad	0x3fe0bb107746887b              # double 0.52283500000000005
	.quad	0x3fe5ed0f6273929f              # double 0.68518800000000002
	.quad	0x3fe85b1209edbf8c              # double 0.76111700000000004
	.quad	0x3fd7b9a5a89b951c              # double 0.37070599999999998
	.quad	0x3fd78d434a01abd2              # double 0.36799700000000002
	.quad	0x3fe0bcf2cf95d4e9              # double 0.523065
	.quad	0x3fe7fb86f47b677f              # double 0.74945399999999995
	.quad	0x3fec7724fa8b4bf9              # double 0.889544
	.quad	0x3faf4f93bc0a06ea              # double 0.061154
	.quad	0x3fd0bdf090f733a9              # double 0.26159300000000002
	.quad	0x3fc4ced4e4c942d5              # double 0.16256200000000001
	.quad	0x3fd5a9b499d0203e              # double 0.33848299999999998
	.quad	0x3fec5549731098d4              # double 0.88541099999999994
	.quad	0x3fe608bb906466b2              # double 0.68856600000000001
	.quad	0x3fed672b884406c0              # double 0.91884399999999999
	.quad	0x3fec0cf1800a7c5b              # double 0.87658000000000003
	.quad	0x3fe86a76965f5276              # double 0.76299600000000001
	.quad	0x3fc30cb295e9e1b1              # double 0.14882500000000001
	.quad	0x3fc06994185058de              # double 0.128222
	.quad	0x3fc37c45cbbc2b95              # double 0.15223
	.quad	0x3fa0b26394face68              # double 0.032611000000000001
	.quad	0x3febd894812be48a              # double 0.87018799999999996
	.quad	0x3fd989c1b54195cd              # double 0.39903300000000003
	.quad	0x3fd6f9db22d0e560              # double 0.35899999999999999
	.quad	0x3fefe672fba01eef              # double 0.99688100000000001
	.quad	0x3fdf1f18c9fb6135              # double 0.48627300000000001
	.quad	0x3fecc1b54195cc85              # double 0.89864599999999994
	.quad	0x3fe7486cebbba55d              # double 0.72759099999999999
	.quad	0x3fd3481b21c475e6              # double 0.30127599999999999
	.quad	0x3fe90e6d15ad106f              # double 0.78301100000000001
	.quad	0x3fdaeb463497b741              # double 0.42060999999999998
	.quad	0x3fec9f14983d7907              # double 0.89441899999999996
	.quad	0x3fdb5cb790fb6567              # double 0.42753400000000003
	.quad	0x3fcfd3aa369fcf3e              # double 0.24864700000000001
	.quad	0x3fe17b3311a543f2              # double 0.54628900000000002
	.quad	0x3fd7f46ed245b292              # double 0.37429400000000002
	.quad	0x3fdf44ae85b9e8c4              # double 0.48856699999999997
	.quad	0x3fd6fcdab191dde3              # double 0.35918299999999997
	.quad	0x3fa2584f4c6e6d9c              # double 0.035830000000000001
	.quad	0x3fc103c07ee0b0af              # double 0.13292699999999999
	.quad	0x3fd29f3c70c996b7              # double 0.29096899999999998
	.quad	0x3fd224d8fd5cb791              # double 0.283499
	.quad	0x3fea5ba908a265f1              # double 0.823689
	.quad	0x3feca441fea8112c              # double 0.89505100000000004
	.quad	0x3fdf607c4199fe43              # double 0.49026399999999998
	.quad	0x3fe199780baa582e              # double 0.54998400000000003
	.quad	0x3fe5b3269df97aab              # double 0.67811900000000003
	.quad	0x3fdfd89ce4a7b4e5              # double 0.49759599999999998
	.quad	0x3febf1a1986b9c30              # double 0.87324599999999997
	.quad	0x3fd2365881a15550              # double 0.28456700000000001
	.quad	0x3feaa411c2a02321              # double 0.83252800000000005
	.quad	0x3fe511e646f15619              # double 0.65843499999999999
	.quad	0x3fdcc2699c7bcc29              # double 0.44936599999999999
	.quad	0x3fe762fdfc19c172              # double 0.73083399999999998
	.quad	0x3fd0127f5e84f095              # double 0.25112899999999999
	.quad	0x3fc158537e2c55c9              # double 0.13550799999999999
	.quad	0x3fd2dbad3a604e1e              # double 0.29465799999999998
	.quad	0x3fe325870da5daf0              # double 0.59833099999999995
	.quad	0x3fe725e99e94ab1d              # double 0.72337799999999997
	.quad	0x3fb43dab5c39bcba              # double 0.079065999999999997
	.quad	0x3fdc864cb5bb3850              # double 0.44569700000000001
	.quad	0x3fd674c8ffb8b264              # double 0.35087800000000002
	.quad	0x3fef1b152f3c2dae              # double 0.97205600000000003
	.quad	0x3fd8e5c0b9991362              # double 0.38902300000000001
	.quad	0x3fe9a4fca42aed14              # double 0.80139000000000004
	.quad	0x3fcdd755bccaf70a              # double 0.23313400000000001
	.quad	0x3fde1337eb28d866              # double 0.46992299999999998
	.quad	0x3f719ce075f6fd22              # double 0.0043
	.quad	0x3fae9531550ca1cf              # double 0.059732
	.quad	0x3fe951a650614163              # double 0.79121699999999995
	.quad	0x3fd14167a95c853c              # double 0.269617
	.quad	0x3febb7b28954a7f8              # double 0.866174
	.quad	0x3fca5d0fa58f7122              # double 0.20596500000000001
	.quad	0x3feb75cd0bb6ed67              # double 0.85812999999999995
	.quad	0x3fd78bb0a2ca9ac3              # double 0.36790099999999998
	.quad	0x3fe916073de1e2df              # double 0.78393900000000005
	.quad	0x3fdb8d9f90539fba              # double 0.43051899999999999
	.quad	0x3fa5604189374bc7              # double 0.041750000000000002
	.quad	0x3fc8e6a76965f527              # double 0.19453899999999999
	.quad	0x3fcaf68be2f7b17d              # double 0.210649
	.quad	0x3fe11f340d4dc65c              # double 0.53505899999999995
	.quad	0x3fe5751697f1f9ad              # double 0.670543
	.quad	0x3fe660aa64c2f838              # double 0.69930000000000003
	.quad	0x3fe9ce69f05ea24d              # double 0.80644700000000002
	.quad	0x3fa0fd5cb790fb65              # double 0.033182999999999997
	.quad	0x3fe747b677f6b1a3              # double 0.72750400000000004
	.quad	0x3fca6138fffbce42              # double 0.206092
	.quad	0x3fc1ceaf251c193b              # double 0.13911999999999999
	.quad	0x3fdd974e65bea0ba              # double 0.46235999999999999
	.quad	0x3fb46fbd273d5bab              # double 0.079829999999999998
	.quad	0x3fc87d912556d19e              # double 0.191332
	.quad	0x3fc16d117b5286b6              # double 0.13614100000000001
	.quad	0x3feb314445aa2e3c              # double 0.84976399999999996
	.quad	0x3fe243632c1f42bb              # double 0.57072599999999996
	.quad	0x3fe0778359bc33f8              # double 0.51458899999999996
	.quad	0x3fdb3968d759ee89              # double 0.42537900000000001
	.quad	0x3fe34f4c6e6d9be5              # double 0.60343000000000002
	.quad	0x3fe7d0d0678c0054              # double 0.74424000000000001
	.quad	0x3fd496dd26b723ee              # double 0.32170799999999999
	.quad	0x3fecd3671ac14c66              # double 0.900806
	.quad	0x3fdab2e9ccb7d417              # double 0.41716999999999999
	.quad	0x3fc7397dd00f776c              # double 0.18144199999999999
	.quad	0x3fe03c792d1287c2              # double 0.507382
	.quad	0x3fee0064a9cdc444              # double 0.93754800000000004
	.quad	0x3febd454152b0a70              # double 0.86966900000000003
	.quad	0x3fdaac4f7ec3547e              # double 0.416767
	.quad	0x3fdfc97d8cf398e9              # double 0.49667299999999998
	.quad	0x3fcfa3a08398a655              # double 0.24718100000000001
	.quad	0x3fd6330d7386099a              # double 0.34686600000000001
	.quad	0x3fdb4e2f37fbefd0              # double 0.426647
	.quad	0x3fef1b2a27f1b691              # double 0.97206599999999998
	.quad	0x3fda2a0a958537e3              # double 0.40881600000000001
	.quad	0x3fe1f8c64fdb09a6              # double 0.56161799999999995
	.quad	0x3fdf8f57f737da62              # double 0.49312400000000001
	.quad	0x3fd471b8aa00192a              # double 0.31944099999999997
	.quad	0x3fd52dba4d6e47dc              # double 0.33091599999999999
	.quad	0x3fb8e63a5c1c6089              # double 0.097263000000000002
	.quad	0x3fd1bd87b56b8738              # double 0.27719300000000002
	.quad	0x3fc59d7fd82773e2              # double 0.16886899999999999
	.quad	0x3fa6c918e325d4a6              # double 0.044503000000000001
	.quad	0x3fd968943e100608              # double 0.39700800000000003
	.quad	0x3fd412dfd694ccab              # double 0.31365199999999999
	.quad	0x3fc49973d9ec7000              # double 0.16093299999999999
	.quad	0x3fea16db0dd82fd7              # double 0.81528999999999996
	.quad	0x3fe23ae03b3e9a70              # double 0.56968700000000005
	.quad	0x3fc4d905c0336156              # double 0.16287299999999999
	.quad	0x3fee54bf0995aaf8              # double 0.94784500000000004
	.quad	0x3fec74d1633482bf              # double 0.88926000000000005
	.quad	0x3fcd94d940789614              # double 0.231105
	.quad	0x3fea1cb6848beb5b              # double 0.81600499999999998
	.quad	0x3feb016f0068db8c              # double 0.84392500000000003
	.quad	0x3fd78dd1e53a81dc              # double 0.368031
	.quad	0x3fec52d87f88765c              # double 0.88511300000000003
	.quad	0x3fea4e39b456b442              # double 0.82204900000000003
	.quad	0x3fcfb7b6bb129025              # double 0.24779399999999999
	.quad	0x3fe8807570c564f9              # double 0.76568099999999994
	.quad	0x3fe55db5525cc426              # double 0.66768899999999998
	.quad	0x3fe6f6ad70e6f2e9              # double 0.71761200000000003
	.quad	0x3fdc261bf37b8d3f              # double 0.43982599999999999
	.quad	0x3fd9f583a53b8e4c              # double 0.40561000000000003
	.quad	0x3fd451f3e89a88ad              # double 0.31750200000000001
	.quad	0x3fc9a00e27e0ef9a              # double 0.20019700000000001
	.quad	0x3fe3a189bd8383ae              # double 0.61346900000000004
	.quad	0x3fb10b30b5aa7158              # double 0.066576999999999997
	.quad	0x3fea68f6cefed634              # double 0.82531299999999996
	.quad	0x3fe722b7baecd078              # double 0.72298799999999996
	.quad	0x3fe73d556084a516              # double 0.72623700000000002
	.quad	0x3fefa9bae46cfc83              # double 0.98946900000000004
	.quad	0x3fe7eb8950763a19              # double 0.747502
	.quad	0x3fe335b0bbf50e34              # double 0.60030399999999995
	.quad	0x3fdd1e29b6b2af14              # double 0.45496599999999998
	.quad	0x3fb30ab2e1693c04              # double 0.074382000000000004
	.quad	0x3fd2eba27ae9ab2a              # double 0.29563200000000001
	.quad	0x3fc053198288051d              # double 0.12753600000000001
	.quad	0x3fe6e3f359ff4fd7              # double 0.71532600000000002
	.quad	0x3fd172da122fad6d              # double 0.27263500000000002
	.quad	0x3f889613d31b9b67              # double 0.012005
	.quad	0x3fea7e21d96e9bbf              # double 0.82789699999999999
	.quad	0x3fc42e019b0ab2e1              # double 0.15765399999999999
	.quad	0x3fea5054ac29bf16              # double 0.82230599999999998
	.quad	0x3fe9de2046c764ae              # double 0.808365
	.quad	0x3fe428a3f8982cb2              # double 0.62996099999999999
	.quad	0x3fe2fda61e0c5a81              # double 0.59346299999999996
	.quad	0x3fe4e709fa54c554              # double 0.65320299999999998
	.quad	0x3fe3d117b5286b59              # double 0.61927399999999999
	.quad	0x3feaa6d04e618ce3              # double 0.83286300000000002
	.quad	0x3fd9f34938583622              # double 0.405474
	.quad	0x3fe4b5bf6a0dbad4              # double 0.64718600000000004
	.quad	0x3fd5365cb35f3d7d              # double 0.33144299999999999
	.quad	0x3fed4e8d972cd7cf              # double 0.91583899999999996
	.quad	0x3fe56451b93037d6              # double 0.66849599999999998
	.quad	0x3fd3e2d6238da3c2              # double 0.31072
	.quad	0x3fd1d4e4c942d491              # double 0.27861900000000001
	.quad	0x3fe371151611ba3d              # double 0.60755400000000004
	.quad	0x3fdc018e757928e1              # double 0.43759500000000001
	.quad	0x3fdbb3397dd00f77              # double 0.43281399999999998
	.quad	0x3fdb07a6bd6e8af8              # double 0.422342
	.quad	0x3fc908a265f0f5a1              # double 0.195576
	.quad	0x3fd8166e008e9b39              # double 0.37636900000000001
	.quad	0x3fdd1b75a74c09c4              # double 0.45480100000000001
	.quad	0x3fe5ddd6e04c0592              # double 0.68332999999999999
	.quad	0x3fb4ed1bf7ad4b27              # double 0.081742999999999996
	.quad	0x3fe364abe6a337a8              # double 0.60603899999999999
	.quad	0x3fc0bffcdab191de              # double 0.130859
	.quad	0x3fefc0053e2d6239              # double 0.99219000000000001
	.quad	0x3fdbcbee807bbb62              # double 0.43432199999999999
	.quad	0x3fc28dda48b65237              # double 0.144954
	.quad	0x3fdae6149c6f36f0              # double 0.42029300000000003
	.quad	0x3fda8359bc33f855              # double 0.414267
	.quad	0x3fdd06466b1e5c0c              # double 0.45350800000000002
	.quad	0x3fe39172ef0ae536              # double 0.61150499999999997
	.quad	0x3fd5b7cbb3c81909              # double 0.33934300000000001
	.quad	0x3fbee5abc0e38a7e              # double 0.12069199999999999
	.quad	0x3fe6582fd75e2047              # double 0.69826500000000002
	.quad	0x3fdf0f98fa376923              # double 0.48532700000000001
	.quad	0x3fc58e219652bd3c              # double 0.16839999999999999
	.quad	0x3fe4bf85510d38ce              # double 0.64837900000000004
	.quad	0x3fc983621fafc8b0              # double 0.199322
	.quad	0x3fe15573647baa9b              # double 0.54168099999999997
	.quad	0x3fcb72abef06b378              # double 0.21443699999999999
	.quad	0x3febc4b2b777d0f2              # double 0.867761
	.quad	0x3fdded959a30984e              # double 0.46762599999999999
	.quad	0x3fc94528283d35eb              # double 0.19742299999999999
	.quad	0x3fdc055b89939219              # double 0.43782700000000002
	.quad	0x3fda99ed7c6fbd27              # double 0.41564499999999999
	.quad	0x3fe8e2b4959e6256              # double 0.77767399999999998
	.quad	0x3fe2094812be48a6              # double 0.56363300000000005
	.quad	0x3fdce5929670196e              # double 0.45151200000000002
	.quad	0x3fbc0ad03d9a9542              # double 0.10954
	.quad	0x3fad857afea3df6e              # double 0.057659000000000002
	.quad	0x3fe05ad7518b0d0f              # double 0.51108900000000002
	.quad	0x3fb61511dffc547a              # double 0.086259000000000002
	.quad	0x3fef2d6a9c560c7c              # double 0.97429399999999999
	.quad	0x3fd825f202107b78              # double 0.37731599999999998
	.quad	0x3fbdd441355475a3              # double 0.11652
	.quad	0x3feb95d0b73d188f              # double 0.86203799999999997
	.quad	0x3fe0f9f01b866e44              # double 0.53051000000000004
	.quad	0x3fe6c6b26bf8769f              # double 0.71175500000000003
	.quad	0x3fd62ce89656eefa              # double 0.34649099999999999
	.quad	0x3fee97507e9d94d1              # double 0.95597100000000002
	.quad	0x3fea792d1287c201              # double 0.82729200000000003
	.quad	0x3fef7924af0bf1a6              # double 0.98353800000000002
	.quad	0x3fb411b1d92b7fe1              # double 0.078395000000000006
	.quad	0x3fb7dbd2fa0d77b8              # double 0.093198000000000003
	.quad	0x3fec3a2163fdd65a              # double 0.88209599999999999
	.quad	0x3fec21272c94b381              # double 0.87904700000000002
	.quad	0x3fdae5109070fbec              # double 0.42023100000000002
	.quad	0x3fc19e7b80a9de8b              # double 0.13764899999999999
	.quad	0x3fe229d8409e55c1              # double 0.567608
	.quad	0x3fdeb2b777d0f1f5              # double 0.47965799999999997
	.quad	0x3fdb61240746455f              # double 0.42780400000000002
	.quad	0x3fbcfe79ee02a77a              # double 0.113258
	.quad	0x3fb83dab5c39bcba              # double 0.094690999999999997
	.quad	0x3fdb0895d0b73d19              # double 0.42239900000000002
	.quad	0x3fc58a5482385404              # double 0.16828399999999999
	.quad	0x3fee80b029281776              # double 0.95320899999999997
	.quad	0x3f92189bd8383ada              # double 0.017672
	.quad	0x3fe3b69b9d7fd827              # double 0.61604099999999995
	.quad	0x3fd8e657b84db9c7              # double 0.38905899999999999
	.quad	0x3feb63c968943e10              # double 0.855931
	.quad	0x3fc1a15db3397dd0              # double 0.137737
	.quad	0x3fed0ffda4052d66              # double 0.90820199999999995
	.quad	0x3fc9249e44fa0514              # double 0.19642999999999999
	.quad	0x3fe4779207d4e098              # double 0.63959600000000005
	.quad	0x3fe2f3519bd4067d              # double 0.59220200000000001
	.quad	0x3fef36d655e28aa4              # double 0.97544399999999997
	.quad	0x3fe0e5b4245f5ad9              # double 0.52803999999999995
	.quad	0x3fe23b384fd2a62b              # double 0.56972900000000004
	.quad	0x3fcea044ae85b9e9              # double 0.23926600000000001
	.quad	0x3fe6b1bbcf4e874d              # double 0.70919600000000005
	.quad	0x3fe4c7f77af64064              # double 0.64941000000000004
	.quad	0x3fea07746887a8d6              # double 0.81340999999999997
	.quad	0x3fe6a480e8c8abd6              # double 0.70758100000000002
	.quad	0x3fd108aefb2aae29              # double 0.26615499999999997
	.quad	0x3fe767ec7863beec              # double 0.73143599999999998
	.quad	0x3fec4fd8f0c77dd8              # double 0.88474699999999995
	.quad	0x3fe69ad2135daad6              # double 0.706399
	.quad	0x3fe53024f6598e11              # double 0.66212700000000002
	.quad	0x3fe7365881a15550              # double 0.72538400000000003
	.quad	0x3fef1fc08fa7a850              # double 0.97262599999999999
	.quad	0x3f8056c508b32ce9              # double 0.0079780000000000007
	.quad	0x3fdcc81908e581cf              # double 0.44971299999999997
	.quad	0x3fe8cbd33d29563b              # double 0.77488100000000004
	.quad	0x3fd80ec743201041              # double 0.37590200000000001
	.quad	0x3fcbd8adab9f559b              # double 0.21754999999999999
	.quad	0x3fe94cdd93c46d83              # double 0.79063300000000003
	.quad	0x3fedcf2cf95d4e90              # double 0.93154000000000003
	.quad	0x3fbf3a9b06812381              # double 0.121988
	.quad	0x3feeba30121682f9              # double 0.96022799999999997
	.quad	0x3fe489eba6aca793              # double 0.64183599999999996
	.quad	0x3fecd55e6bc621b8              # double 0.90104600000000001
	.quad	0x3fe830df9bdc69f9              # double 0.75596600000000003
	.quad	0x3fed00a7c5ac471b              # double 0.90632999999999997
	.quad	0x3fcceb67c286f8ad              # double 0.225934
	.quad	0x3feddb1c864883fd              # double 0.93299699999999997
	.quad	0x3fba7c286f8ad256              # double 0.10345699999999999
	.quad	0x3fbb8e9f6a93f291              # double 0.107645
	.quad	0x3feac764adff822c              # double 0.83684000000000002
	.quad	0x3fef2398201cd5fa              # double 0.97309500000000004
	.quad	0x3fd432ebe596c82e              # double 0.315608
	.quad	0x3fe310de093532e8              # double 0.59580900000000003
	.quad	0x3fdceba6aca79357              # double 0.45188299999999998
	.quad	0x3fc1dab5c39bcba3              # double 0.139487
	.quad	0x3fe210f733a8a3f9              # double 0.56457100000000005
	.quad	0x3fd5579af1886df8              # double 0.33347199999999999
	.quad	0x3fab4e11dbca9692              # double 0.053330000000000002
	.quad	0x3fec5f7403dddb12              # double 0.886652
	.quad	0x3fc6bd7f51efb6dd              # double 0.17765800000000001
	.quad	0x3fca830a0b1bbcf5              # double 0.207124
	.quad	0x3fdf5c810a569b17              # double 0.49002099999999998
	.quad	0x3fd4554b8bef8ceb              # double 0.31770599999999999
	.quad	0x3fe59b7e0ac7da1f              # double 0.67523100000000003
	.quad	0x3fe958e64b231401              # double 0.79210199999999997
	.quad	0x3feefd1fe64f54d2              # double 0.96839900000000001
	.quad	0x3fce0e0eb67c2870              # double 0.23480400000000001
	.quad	0x3fd9758e219652bd              # double 0.39779999999999999
	.quad	0x3fe9b912dba4d6e4              # double 0.80384199999999994
	.quad	0x3fac2fc69728a611              # double 0.055051999999999997
	.quad	0x3fd5c892ab68cef6              # double 0.34036699999999998
	.quad	0x3fd3830a0b1bbcf5              # double 0.30487300000000001
	.quad	0x3fd00a41a261bf38              # double 0.25062600000000002
	.quad	0x3fe8e3d5fdcdf698              # double 0.77781199999999995
	.quad	0x3fe0d9a73b42cc2d              # double 0.52656899999999995
	.quad	0x3fef7bfc6540cc79              # double 0.983885
	.quad	0x3fd3cb641700cd85              # double 0.30928899999999998
	.quad	0x3fea1c3ce2089e34              # double 0.81594699999999997
	.quad	0x3fe0618ac9f2fdb9              # double 0.511907
	.quad	0x3fda49c6f36ef805              # double 0.41075299999999998
	.quad	0x3fe9ad4b2745bf27              # double 0.80240400000000001
	.quad	0x3fc7573eab367a10              # double 0.18235000000000001
	.quad	0x3fef34202d9cf13d              # double 0.975113
	.quad	0x3fb43b2dd377e1b9              # double 0.079028000000000001
	.quad	0x3fd9e52157689ca2              # double 0.40461000000000003
	.quad	0x3fbb0d73860999dd              # double 0.105674
	.quad	0x3fe597635e74299e              # double 0.67473000000000005
	.quad	0x3fb1655e28aa4335              # double 0.067953
	.quad	0x3fc519ce075f6fd2              # double 0.16485
	.quad	0x3fe2f765fd8adaba              # double 0.5927
	.quad	0x3fbb5ba2be0589ad              # double 0.106867
	.quad	0x3fe94938583621fb              # double 0.790188
	.quad	0x3fcf7403dddb120a              # double 0.245728
	.quad	0x3fd7349385836220              # double 0.36258400000000002
	.quad	0x3fcbb3b7521144cc              # double 0.216422
	.quad	0x3fc50a67620ee8d1              # double 0.16438
	.quad	0x3fe7a1101b003687              # double 0.73841100000000004
	.quad	0x3fe37a6bd6e8af81              # double 0.60869399999999996
	.quad	0x3feea39c51dabe27              # double 0.95747199999999999
	.quad	0x3fd8709741d084e8              # double 0.38187199999999999
	.quad	0x3fc17ad4b2745bf2              # double 0.13656099999999999
	.quad	0x3fc15b1c864883fd              # double 0.13559299999999999
	.quad	0x3fe9cfb762d83c6d              # double 0.80660600000000005
	.quad	0x3fe96a7ac81d3aa3              # double 0.79424799999999995
	.quad	0x3fed1dd7ecbb7f9d              # double 0.90989299999999995
	.quad	0x3fec8f53c579f234              # double 0.89249599999999995
	.quad	0x3fe1ae2541d8e864              # double 0.552508
	.quad	0x3feba8e0c9d9d346              # double 0.86436500000000005
	.quad	0x3feeab9f559b3d08              # double 0.95845000000000002
	.quad	0x3fb793037d63022e              # double 0.092087000000000002
	.quad	0x3fe7d39da16616b5              # double 0.74458199999999997
	.quad	0x3fee77d955714b9d              # double 0.95213000000000003
	.quad	0x3fece8b7e4de3b8a              # double 0.90340799999999999
	.quad	0x3fd7700474d9c6b0              # double 0.36621199999999998
	.quad	0x3fce7ec7863beec4              # double 0.23824400000000001
	.quad	0x3fee71d606317269              # double 0.95139600000000002
	.quad	0x3fdcba3ca7503b82              # double 0.44886700000000002
	.quad	0x3fc3e35c5b4aa971              # double 0.15537599999999999
	.quad	0x3f8dee78183f91e6              # double 0.014615
	.quad	0x3fed019f3c70c997              # double 0.90644800000000003
	.quad	0x3fe3804fb1183b60              # double 0.60941299999999998
	.quad	0x3fc1c4e2f37fbefd              # double 0.138821
	.quad	0x3fe08a67620ee8d1              # double 0.51689499999999999
	.quad	0x3fecd86a8fc0d2c4              # double 0.90141800000000005
	.quad	0x3fc28b0079a2834d              # double 0.144867
	.quad	0x3fef1680e0653006              # double 0.97149700000000005
	.quad	0x3fd67e5eaab04253              # double 0.35146300000000003
	.quad	0x3fc26c8711d798d9              # double 0.14393700000000001
	.quad	0x3feb19567dbb16c2              # double 0.84684300000000001
	.quad	0x3fd784f4c6e6d9be              # double 0.36748999999999998
	.quad	0x3fc5b28954a7f801              # double 0.169511
	.quad	0x3fc52becedd48451              # double 0.16540299999999999
	.quad	0x3fe5b1b152f3c2db              # double 0.67794100000000002
	.quad	0x3fe3a2467be553ac              # double 0.61355899999999997
	.quad	0x3fbc1ebc83a96d4c              # double 0.109844
	.quad	0x3fdb7e38eb0318b9              # double 0.42957899999999999
	.quad	0x3fe29dd3bafd9770              # double 0.58176600000000001
	.quad	0x3fdd5d91ab8e8ea4              # double 0.45883600000000002
	.quad	0x3fdc2c061847f562              # double 0.44018699999999999
	.quad	0x3fe67d6f97679032              # double 0.70281199999999999
	.quad	0x3fe3a1e81cb46bad              # double 0.613514
	.quad	0x3fc72a8c9b845565              # double 0.18098600000000001
	.quad	0x3fd0ef73c0c1fc8f              # double 0.26461499999999999
	.quad	0x3fe1e5604189374c              # double 0.55925000000000002
	.quad	0x3feffd694ccab3ee              # double 0.99968400000000002
	.quad	0x3fe84729f59ccfaf              # double 0.758687
	.quad	0x3fdcffac1d29dc72              # double 0.45310499999999998
	.quad	0x3fd4d0fe8ab4fa48              # double 0.32525599999999999
	.quad	0x3fe77b86f47b677f              # double 0.73382899999999995
	.quad	0x3fe72294141e9af6              # double 0.72297100000000003
	.quad	0x3fe04aff6d330942              # double 0.50915500000000002
	.quad	0x3fe5cf3343fa2ad4              # double 0.68154300000000001
	.quad	0x3fe464c0df58c08b              # double 0.63729899999999995
	.quad	0x3f8c2b0ea18372e7              # double 0.013754000000000001
	.quad	0x3fd6154c985f06f7              # double 0.34505000000000002
	.quad	0x3fda35efa615a8df              # double 0.40954200000000002
	.quad	0x3fe57cc1871e6cd3              # double 0.67147900000000005
	.quad	0x3fef896feb4a6656              # double 0.98552700000000004
	.quad	0x3fee8f53c579f234              # double 0.95499599999999995
	.quad	0x3fe11cffeb074a77              # double 0.53478999999999999
	.quad	0x3fb8714fce746cb9              # double 0.095478999999999994
	.quad	0x3fed418b502ababf              # double 0.91425100000000004
	.quad	0x3fe81dd7ecbb7f9d              # double 0.75364299999999995
	.quad	0x3fedad72ffd1dcd7              # double 0.927423
	.quad	0x3fe7a1709310129d              # double 0.73845700000000003
	.quad	0x3fa103c8e25c810a              # double 0.033231999999999998
	.quad	0x3fea224463065f96              # double 0.81668300000000005
	.quad	0x3fd50f3882278d0d              # double 0.32905400000000001
	.quad	0x3fe67d50225742dd              # double 0.70279700000000001
	.quad	0x3fd1e76c8b439581              # double 0.27975
	.quad	0x3fe6f110e453d20f              # double 0.71692699999999998
	.quad	0x3fec783382e44b6f              # double 0.88967300000000005
	.quad	0x3fe59bb6aa4b9885              # double 0.67525800000000002
	.quad	0x3fe79fa11a975afb              # double 0.738236
	.quad	0x3fda9cf9a06a6e33              # double 0.41583100000000001
	.quad	0x3fdf8a65492ff4ba              # double 0.49282199999999998
	.quad	0x3febd9f4d37c1377              # double 0.87035600000000002
	.quad	0x3fdf2773e24febd1              # double 0.48678300000000002
	.quad	0x3fce549b62c77575              # double 0.236957
	.quad	0x3fd502fb5d031056              # double 0.32830700000000002
	.quad	0x3feb68d972cd7cf6              # double 0.856549
	.quad	0x3fef4f8d716d2aa6              # double 0.97846100000000003
	.quad	0x3fefb63d3e4ef028              # double 0.99099599999999998
	.quad	0x3fee58d36b4c7f35              # double 0.94834300000000005
	.quad	0x3feb201cd5f99c39              # double 0.84767000000000003
	.quad	0x3fc1d89ce4a7b4e5              # double 0.13942299999999999
	.quad	0x3fdd2bd7f51efb6e              # double 0.45580100000000001
	.quad	0x3fdd926c7eae5bc8              # double 0.46206199999999997
	.quad	0x3feb954c985f06f7              # double 0.86197500000000005
	.quad	0x3f7a0ad8a116659d              # double 0.0063579999999999999
	.quad	0x3fd5b5a20ddc6195              # double 0.33921099999999998
	.quad	0x3fe6e2435696e58a              # double 0.71511999999999998
	.quad	0x3fd276295208e150              # double 0.288462
	.quad	0x3feeb269df97aaac              # double 0.95927899999999999
	.quad	0x3fe7b443d46b26c0              # double 0.74075500000000005
	.quad	0x3feadc011d3671ac              # double 0.83935599999999999
	.quad	0x3feb76bc1eff9f88              # double 0.85824400000000001
	.quad	0x3fe4ae2328f9f44d              # double 0.64625699999999997
	.quad	0x3fdd7ed84d338f7a              # double 0.46086700000000003
	.quad	0x3fead97d49d7ba67              # double 0.83904900000000004
	.quad	0x3fe74f0b6b6e0d24              # double 0.72839900000000002
	.quad	0x3fb5955714b9cb68              # double 0.084309999999999996
	.quad	0x3fd9c0ad03d9a954              # double 0.40238499999999999
	.quad	0x3fbde093532e7b3e              # double 0.11670800000000001
	.quad	0x3fe4056a37ac3eb8              # double 0.62566100000000002
	.quad	0x3fb8a19c9d5a187a              # double 0.096215999999999995
	.quad	0x3fe40f68be2f7b18              # double 0.62688100000000002
	.quad	0x3fefbc01a36e2eb2              # double 0.99170000000000003
	.quad	0x3fb0f3eccc469510              # double 0.066222000000000003
	.quad	0x3fa86f694467381d              # double 0.047724999999999997
	.quad	0x3feb0027d88c1db0              # double 0.84376899999999999
	.quad	0x3fc5ff2e48e8a71e              # double 0.17185
	.quad	0x3fd774e65bea0ba2              # double 0.36651
	.quad	0x3fed6670e2c12ad8              # double 0.91875499999999999
	.quad	0x3fe21c0ca600b029              # double 0.56592399999999998
	.quad	0x3fe65cca70d1fa33              # double 0.69882699999999998
	.quad	0x3fef95097c80841f              # double 0.98694300000000001
	.quad	0x3fdc009b30728e93              # double 0.43753700000000001
	.quad	0x3fc60a5accd53049              # double 0.17219100000000001
	.quad	0x3fec1dcf893faf42              # double 0.87863899999999995
	.quad	0x3fb7d199bb2788db              # double 0.093042
	.quad	0x3fd4f1f14983d790              # double 0.32726699999999997
	.quad	0x3fd408b75ea67e84              # double 0.31303199999999998
	.quad	0x3fb5cd8127b2cc71              # double 0.085167000000000007
	.quad	0x3fed06ab14ec204f              # double 0.90706399999999998
	.quad	0x3fdc6de33269df98              # double 0.44420700000000002
	.quad	0x3fe2ee568a50507a              # double 0.59159399999999995
	.quad	0x3fe96ef5ec80c73b              # double 0.79479500000000003
	.quad	0x3fdd1b691212513b              # double 0.45479799999999998
	.quad	0x3fcfc80841ede11a              # double 0.24829200000000001
	.quad	0x3fe58eb67c286f8b              # double 0.67367100000000002
	.quad	0x3fe9e67f90d9d777              # double 0.80938699999999997
	.quad	0x3fdce8d972cd7cf6              # double 0.451712
	.quad	0x3fc422ab25b317f0              # double 0.157308
	.quad	0x3fd4963992c8c500              # double 0.32166899999999998
	.quad	0x3fc5f623076c050c              # double 0.171574
	.quad	0x3fe7f01322f27350              # double 0.74805600000000005
	.quad	0x3fb7256ffc115df6              # double 0.090414999999999995
	.quad	0x3faabcd78c436fc1              # double 0.052221999999999998
	.quad	0x3f86a055757d5a9f              # double 0.011048000000000001
	.quad	0x3fd51c3265add9c2              # double 0.32984599999999997
	.quad	0x3fe2b5f3d7d3910c              # double 0.58471099999999998
	.quad	0x3fea00431bde82d8              # double 0.81253200000000003
	.quad	0x3fd6c51116a8b8f1              # double 0.35577799999999998
	.quad	0x3fefbd4ae429e0a4              # double 0.99185699999999998
	.quad	0x3fe074d1633482bf              # double 0.51426000000000005
	.quad	0x3fb504b3c3e74afd              # double 0.082102999999999995
	.quad	0x3fd63471f79420b4              # double 0.34695100000000001
	.quad	0x3fe48ae1049235f8              # double 0.641953
	.quad	0x3fe0b43d89ce4a7b              # double 0.52200199999999997
	.quad	0x3fe3375a74c09c3d              # double 0.60050700000000001
	.quad	0x3fbb061c79b34a45              # double 0.105562
	.quad	0x3fe263fbbd7b2032              # double 0.57470500000000002
	.quad	0x3fede39d5e4a3832              # double 0.93403499999999995
	.quad	0x3faad96a6a01259a              # double 0.052440000000000001
	.quad	0x3fe7e1b2a27f1b69              # double 0.74630099999999999
	.quad	0x3fb09203a322af57              # double 0.064727999999999994
	.quad	0x3fc1fbbd7b2031cf              # double 0.14049500000000001
	.quad	0x3fe858e864020818              # double 0.760853
	.quad	0x3fec798b71b8aa00              # double 0.88983699999999999
	.quad	0x3fe5dbb7b6bb1290              # double 0.68307099999999998
	.quad	0x3fce1094a2b9d3cc              # double 0.23488100000000001
	.quad	0x3fedd71f36262cba              # double 0.93250999999999995
	.quad	0x3feedf676ea4228a              # double 0.96477100000000005
	.quad	0x3fd697353b4b2fa9              # double 0.35297899999999999
	.quad	0x3fd8c78e9f6a93f3              # double 0.38718000000000002
	.quad	0x3fed545a5fc7e6b4              # double 0.916547
	.quad	0x3fe67f609dcf8940              # double 0.70304900000000004
	.quad	0x3fe8a25529fe004b              # double 0.76981599999999994
	.quad	0x3fc65bf26f1dc50d              # double 0.174681
	.quad	0x3fe117763e4abe6a              # double 0.53411399999999998
	.quad	0x3fe4326bf8769ec3              # double 0.63115500000000002
	.quad	0x3fcc41aac53b0814              # double 0.22075400000000001
	.quad	0x3fde777079e59f2c              # double 0.47604000000000002
	.quad	0x3feed6e04c059210              # double 0.96372999999999998
	.quad	0x3fde59f6ec5b078e              # double 0.47424100000000002
	.quad	0x3fbe81dc0db2702a              # double 0.119169
	.quad	0x3fa559f6ec5b078e              # double 0.041702000000000003
	.quad	0x3fe60956c0d6f545              # double 0.68864000000000003
	.quad	0x3fca9eba6aca7935              # double 0.20796899999999999
	.quad	0x3fd2af038e29f9cf              # double 0.29193200000000002
	.quad	0x3fbea055757d5a9f              # double 0.119634
	.quad	0x3fd8a0fd3b29a1ba              # double 0.384826
	.quad	0x3fe244b90214ad36              # double 0.57088899999999998
	.quad	0x3fe1e5cd4ed2cbea              # double 0.55930199999999997
	.quad	0x3fb3e1fc08fa7a85              # double 0.077667
	.quad	0x3fe8249a133c1ce7              # double 0.75446800000000003
	.quad	0x3fc6cbc8c0ce91c9              # double 0.178094
	.quad	0x3fbeefc371da37ef              # double 0.120846
	.quad	0x3fe08cae642bf983              # double 0.51717299999999999
	.quad	0x3fede3b46fdeb52d              # double 0.93404600000000004
	.quad	0x3fe7341e14bdfd26              # double 0.72511199999999998
	.quad	0x3fba3fcc9ea9a3d3              # double 0.102536
	.quad	0x3fe4f3ba775fb2ee              # double 0.654752
	.quad	0x3fb2e8d10f51ac9b              # double 0.073865
	.quad	0x3fe7e8f08461f9f0              # double 0.74718499999999999
	.quad	0x3fbc2d7b634dad32              # double 0.110069
	.quad	0x3fedfeb28d8665e0              # double 0.93734099999999997
	.quad	0x3fd4b4528283d35f              # double 0.32350600000000002
	.quad	0x3f992ea52ef911cf              # double 0.024591999999999999
	.quad	0x3feef296f6512a95              # double 0.967113
	.quad	0x3fe849c0a8d21bc1              # double 0.75900299999999998
	.quad	0x3fde7cd466f5019f              # double 0.47636899999999999
	.quad	0x3fa01adea897635e              # double 0.031454999999999997
	.quad	0x3fa7cfa26a22b389              # double 0.046505999999999999
	.quad	0x3fd9489d27c39368              # double 0.39505699999999999
	.quad	0x3fe83d5dc4007571              # double 0.75749100000000003
	.quad	0x3f9f2a9d627bf61b              # double 0.030436000000000001
	.quad	0x3fede43cc07aaef3              # double 0.93411100000000002
	.quad	0x3fdacf5f4e4430b1              # double 0.41890699999999997
	.quad	0x3fe61b994e1a3f46              # double 0.69086899999999996
	.quad	0x3fe041ebc83a96d5              # double 0.50804700000000003
	.quad	0x3fec893b7d84901d              # double 0.89175199999999999
	.quad	0x3fec76512a94ff00              # double 0.88944299999999998
	.quad	0x3fed27b2cc70867b              # double 0.91109600000000002
	.quad	0x3fdd2dfd694ccab4              # double 0.455932
	.quad	0x3fb6ed45e9185cee              # double 0.089557999999999998
	.quad	0x3feb640a6b93ccd1              # double 0.855962
	.quad	0x3fdbfcdee34fc611              # double 0.437309
	.quad	0x3fe311d57ff9b563              # double 0.59592699999999998
	.quad	0x3fb0d32830a0b1bc              # double 0.065722000000000003
	.quad	0x3febb94b7b28954a              # double 0.86636899999999994
	.quad	0x3fef8ccff21b3aef              # double 0.985939
	.quad	0x3fe346a5d6bebe16              # double 0.60237399999999997
	.quad	0x3fdc04e1e71044f2              # double 0.43779800000000002
	.quad	0x3fd4cc319c5a3e3a              # double 0.324963
	.quad	0x3fb8b60f1b25f634              # double 0.096528000000000002
	.quad	0x3fe389635610adcd              # double 0.61052099999999998
	.quad	0x3fe14f95d4e8fb01              # double 0.54096500000000003
	.quad	0x3fc9563a9f383f0c              # double 0.19794400000000001
	.quad	0x3fe9a6a875d56f33              # double 0.80159400000000003
	.quad	0x3fe88b1dd5d3dc8c              # double 0.76698200000000005
	.quad	0x3fe64373f316e371              # double 0.69573399999999996
	.quad	0x3fe9fd2a62aa1944              # double 0.81215400000000004
	.quad	0x3fe187af20ea5b53              # double 0.54781299999999999
	.quad	0x3fd2a9f7b5aea316              # double 0.29162399999999999
	.quad	0x3fed75dfeb8d8234              # double 0.92063899999999998
	.quad	0x3fe169e3c968943e              # double 0.54417599999999999
	.quad	0x3faca1f080303c08              # double 0.055923
	.quad	0x3fc4db61bb05faec              # double 0.16294500000000001
	.quad	0x3fe6d57ff9b56324              # double 0.71356200000000003
	.quad	0x3fc6ca9ac36544fe              # double 0.17805799999999999
	.quad	0x3fd1424e59296702              # double 0.26967200000000002
	.quad	0x3feff19d66adb403              # double 0.99824400000000002
	.quad	0x3fdcafcce1c58256              # double 0.44823000000000002
	.quad	0x3fe398a43bb40b35              # double 0.61238300000000001
	.quad	0x3fcf2239e6ab9b24              # double 0.243232
	.quad	0x3f98155d5f56a7ad              # double 0.023519000000000002
	.quad	0x3fe5b220791c4b90              # double 0.67799399999999999
	.quad	0x3fd862d40aaeafab              # double 0.38103199999999998
	.quad	0x3fe84f97edc7ef17              # double 0.75971599999999995
	.quad	0x3fea57625204af92              # double 0.82316699999999998
	.quad	0x3fd1f8d716d2aa5c              # double 0.28081299999999998
	.quad	0x3fe8bfdb4cc25072              # double 0.77342
	.quad	0x3fd706e19b90ea9e              # double 0.35979499999999998
	.quad	0x3fca835dedf1e083              # double 0.20713400000000001
	.quad	0x3fe4387379746024              # double 0.63189099999999998
	.quad	0x3fe597720c8cd63d              # double 0.67473700000000003
	.quad	0x3feaa189bd8383ae              # double 0.83221900000000004
	.quad	0x3fe4ff10ecb74de0              # double 0.65613600000000005
	.quad	0x3fdad91ab8e8ea3a              # double 0.41950100000000001
	.quad	0x3fe870bd017dae82              # double 0.76376200000000005
	.quad	0x3fd867e414e7ee91              # double 0.38134099999999999
	.quad	0x3f989d27c3936827              # double 0.024036999999999999
	.quad	0x3fb839ef0f16f438              # double 0.094633999999999996
	.quad	0x3fc15dbb9cf9a06a              # double 0.13567299999999999
	.quad	0x3fd6457c0b135979              # double 0.34799099999999999
	.quad	0x3faf3e0370cdc875              # double 0.061019999999999998
	.quad	0x3fe2c093d9663843              # double 0.58600799999999997
	.quad	0x3fd1057d1782d384              # double 0.26595999999999997
	.quad	0x3fea846e8f29d40f              # double 0.82866600000000001
	.quad	0x3fea979bfdf7e804              # double 0.83100700000000005
	.quad	0x3fcbbe878fabda0e              # double 0.216752
	.quad	0x3feebbaba7b9170d              # double 0.96040899999999995
	.quad	0x3fed54da4ce8101f              # double 0.91660799999999998
	.quad	0x3fdb6b09635610ae              # double 0.42840800000000001
	.quad	0x3fc59884c6a3bde0              # double 0.16871700000000001
	.quad	0x3fef3d6c72192210              # double 0.976248
	.quad	0x3fe96fac6045baf5              # double 0.79488199999999998
	.quad	0x3feb7ea8112ba16e              # double 0.85921099999999995
	.quad	0x3fa2b324851a8694              # double 0.036523
	.quad	0x3fc8f3c2dadb8349              # double 0.194939
	.quad	0x3fcb6d330941c821              # double 0.21426999999999999
	.quad	0x3fee3dbe3c105187              # double 0.94503700000000002
	.quad	0x3fcf9b3d07c84b5e              # double 0.24692500000000001
	.quad	0x3fe2f54f3775b813              # double 0.592445
	.quad	0x3feb0c868b9fdbd3              # double 0.845279
	.quad	0x3fcac9afe1da7b0b              # double 0.20927999999999999
	.quad	0x3fee0bcbe61cffeb              # double 0.93894
	.quad	0x3fec0915bdd76684              # double 0.87610900000000002
	.quad	0x3f8a1ec4e7253da7              # double 0.012754
	.quad	0x3f99b66f9335d24a              # double 0.02511
	.quad	0x3fbbe43675ddd2af              # double 0.10895100000000001
	.quad	0x3fdbf61240746456              # double 0.436894
	.quad	0x3fea96c61522a6f4              # double 0.830905
	.quad	0x3fed9b13165d3997              # double 0.92518
	.quad	0x3fed5698fe69270b              # double 0.916821
	.quad	0x3fd1ab53d640e9d5              # double 0.27608199999999999
	.quad	0x3fd2059641f64495              # double 0.28159099999999998
	.quad	0x3fe71a3d2d87f887              # double 0.72195299999999996
	.quad	0x3fe7320b8066c2ad              # double 0.72485900000000003
	.quad	0x3fc40296b3354c12              # double 0.156329
	.quad	0x3fe47c6da4484945              # double 0.64018900000000001
	.quad	0x3fe85a31a4bdba0a              # double 0.76100999999999996
	.quad	0x3fd3cc3e3193f6c2              # double 0.30934099999999998
	.quad	0x3fda06748e475600              # double 0.40664400000000001
	.quad	0x3fe9572de43ed95a              # double 0.79189200000000004
	.quad	0x3fdc62aa19439de5              # double 0.44352200000000003
	.quad	0x3fe1dc810a569b17              # double 0.55816699999999997
	.quad	0x3fec02c4d65e4606              # double 0.87533799999999995
	.quad	0x3fe5e1ac57e23f25              # double 0.68379800000000002
	.quad	0x3fed0dc33721d53d              # double 0.90793000000000001
	.quad	0x3fa5a6e75ff609dd              # double 0.042289
	.quad	0x3fc0aa3ad18d25ee              # double 0.13019500000000001
	.quad	0x3fd7586013660e52              # double 0.36476900000000001
	.quad	0x3fe61b71758e2196              # double 0.69084999999999996
	.quad	0x3fdfb484d76ab580              # double 0.49539299999999997
	.quad	0x3feb8a04d12018a4              # double 0.86059799999999997
	.quad	0x3fe0bbaba7b9170d              # double 0.52290899999999996
	.quad	0x3fe920ff540895d1              # double 0.78527800000000003
	.quad	0x3fd8b38d60a63305              # double 0.385959
	.quad	0x3fec112dba4d6e48              # double 0.87709700000000002
	.quad	0x3fe91ceaf251c194              # double 0.78478000000000003
	.quad	0x3fca46412cf0f9d3              # double 0.20526900000000001
	.quad	0x3feba5bd944aa540              # double 0.86398200000000003
	.quad	0x3fe1ceb78897e996              # double 0.55648399999999998
	.quad	0x3fd378ab0c88a47f              # double 0.30424000000000001
	.quad	0x3fe2279bbadc0981              # double 0.56733500000000003
	.quad	0x3fef8f36694898f6              # double 0.986232
	.quad	0x3fef1ba3ca7503b8              # double 0.97212399999999998
	.quad	0x3fe2a6d8b1dd5d3e              # double 0.58286700000000002
	.quad	0x3fdc0663c74fb54a              # double 0.43789
	.quad	0x3fd7113404ea4a8c              # double 0.360425
	.quad	0x3fc7033a4723ab00              # double 0.179786
	.quad	0x3fd46bdf4c2b51bd              # double 0.31908399999999998
	.quad	0x3fe0bb7d84901d19              # double 0.52288699999999999
	.quad	0x3fe8404a72ead927              # double 0.75784799999999997
	.quad	0x3fbf8f68be2f7b18              # double 0.123282
	.quad	0x3fc52756861e9292              # double 0.16526299999999999
	.quad	0x3fe3dc4a83b1d0c8              # double 0.620641
	.quad	0x3fd4d1f601797cc4              # double 0.32531500000000002
	.quad	0x3fe043b70ef56649              # double 0.508266
	.quad	0x3fe9f5989df1172f              # double 0.81123000000000001
	.quad	0x3fb86ee30caa326e              # double 0.095441999999999999
	.quad	0x3fe08520d130df9c              # double 0.51625100000000002
	.quad	0x3fc000b029281776              # double 0.12502099999999999
	.quad	0x3feea7fa1a0cf180              # double 0.958005
	.quad	0x3fd598c7e28240b8              # double 0.33745000000000003
	.quad	0x3fe0479702e6644e              # double 0.50873900000000005
	.quad	0x3fee94d2f5dbb9d0              # double 0.95566700000000004
	.quad	0x3feeba775fb2edfe              # double 0.96026199999999995
	.quad	0x3fe6d1f3e89a88ad              # double 0.71312900000000001
	.quad	0x3fac102ff8ec0f88              # double 0.054810999999999999
	.quad	0x3fee307f23cc8de3              # double 0.94342000000000004
	.quad	0x3fed6ee957470eb2              # double 0.91978899999999997
	.quad	0x3fc7441bb8c32a8d              # double 0.18176600000000001
	.quad	0x3fb4a148ba83f4ed              # double 0.080586000000000005
	.quad	0x3fd3f809917939a8              # double 0.31201400000000001
	.quad	0x3fecba1d323fee2d              # double 0.89771900000000004
	.quad	0x3fe59a8ef77f27fe              # double 0.67511699999999997
	.quad	0x3fe675c28f5c28f6              # double 0.70187500000000003
	.quad	0x3fd6a7b4e54f7a92              # double 0.35398600000000002
	.quad	0x3fafde7210be9425              # double 0.062244000000000001
	.quad	0x3fe623ad18d25edd              # double 0.691855
	.quad	0x3fc74f5903a7546d              # double 0.18210899999999999
	.quad	0x3fe99f7f8ca8198f              # double 0.80071999999999999
	.quad	0x3fd5262cba732df5              # double 0.330455
	.quad	0x3fd9d2e0e30446b7              # double 0.40349600000000002
	.quad	0x3fe094f8b588e369              # double 0.51818500000000001
	.quad	0x3fe1568e820e6299              # double 0.54181599999999996
	.quad	0x3fd39de8b3b32053              # double 0.30651299999999998
	.quad	0x3fd63c9eecbfb15b              # double 0.34744999999999998
	.quad	0x3fef4b2b777d0f1f              # double 0.97792599999999996
	.quad	0x3fdb1a3f4666ec9e              # double 0.42347699999999999
	.quad	0x3fc49363f572de44              # double 0.160748
	.quad	0x3fe4d3e4ef0281ba              # double 0.65086599999999994
	.quad	0x3fd3e24febd09e13              # double 0.31068800000000002
	.quad	0x3fa90e66cb10342b              # double 0.048938000000000002
	.quad	0x3fd2e1cde5d18091              # double 0.29503200000000002
	.quad	0x3fe1e4345cfede98              # double 0.55910700000000002
	.quad	0x3fe65e0b4e11dbcb              # double 0.69898000000000005
	.quad	0x3fe2619b90ea9e6f              # double 0.57441500000000001
	.quad	0x3fe91a9b8cb8e087              # double 0.78449800000000003
	.quad	0x3fbf91600f34506a              # double 0.123312
	.quad	0x3fea36b09635610b              # double 0.81917600000000002
	.quad	0x3f4fe21d96e9bbf1              # double 9.7300000000000001E-4
	.quad	0x3fe3282a5614df8b              # double 0.59865299999999999
	.quad	0x3fb445564b662fe0              # double 0.079183000000000003
	.quad	0x3fd57f5a5332acfb              # double 0.33589799999999997
	.quad	0x3fc1944241c3efae              # double 0.13733699999999999
	.quad	0x3fbd37c1376d5497              # double 0.114132
	.quad	0x3fca454de7ea5f85              # double 0.20524000000000001
	.quad	0x3fd7b70691ea78af              # double 0.37054599999999999
	.quad	0x3fcda4f8726d04e6              # double 0.231597
	.quad	0x3fe196d2aa5c5f7c              # double 0.54966099999999996
	.quad	0x3fd118b934699418              # double 0.26713399999999998
	.quad	0x3fef29e6eeb70260              # double 0.97386499999999998
	.quad	0x3fe69cfbb949624a              # double 0.70666300000000004
	.quad	0x3fe04caf709b738e              # double 0.50936099999999995
	.quad	0x3fc19c1f85d744f6              # double 0.137577
	.quad	0x3febb126e978d4fe              # double 0.86537500000000001
	.quad	0x3fe079c1f85d744f              # double 0.51486299999999996
	.quad	0x3fea285caafbc1ad              # double 0.81742700000000001
	.quad	0x3fea9e03f705857b              # double 0.831789
	.quad	0x3fea1884c6a3bde0              # double 0.81549300000000002
	.quad	0x3fecebcc6c54bcf1              # double 0.90378400000000003
	.quad	0x3fe9a6394face67d              # double 0.80154099999999995
	.quad	0x3fee905c03361566              # double 0.95512200000000003
	.quad	0x3fd8c115df6555c5              # double 0.38678499999999999
	.quad	0x3fd295e5aff2a173              # double 0.29039900000000002
	.quad	0x3fe0c99f1ae2da55              # double 0.52461199999999997
	.quad	0x3fe64e075f6fd220              # double 0.69702500000000001
	.quad	0x3fe506338b47c73f              # double 0.65700700000000001
	.quad	0x3fdb4816f0068db9              # double 0.42627500000000002
	.quad	0x3fd090bc7b45f17c              # double 0.25883400000000001
	.quad	0x3fe13a3ec02f2f98              # double 0.53835999999999995
	.quad	0x3fe4e9984a0e410b              # double 0.65351499999999996
	.quad	0x3fed0dae3e6c4c59              # double 0.90791999999999995
	.quad	0x3fe5bdb7f1737543              # double 0.67940900000000004
	.quad	0x3fe8087442c7fbad              # double 0.75103200000000003
	.quad	0x3fca670e2c12ad82              # double 0.20627000000000001
	.quad	0x3fa30b5aa715831f              # double 0.037196
	.quad	0x3fc67dc37a3db3c0              # double 0.17571300000000001
	.quad	0x3fe96fcdee34fc61              # double 0.79489799999999999
	.quad	0x3fde976ff3ade226              # double 0.477993
	.quad	0x3fd0adc8fb86f47b              # double 0.26060699999999998
	.quad	0x3fa0f041461b6d44              # double 0.033083000000000001
	.quad	0x3feeb417ca2120e2              # double 0.959484
	.quad	0x3fe2fcfe58601366              # double 0.59338299999999999
	.quad	0x3fe708c8259e1f3a              # double 0.71982199999999996
	.quad	0x3fef2d96a6a0125a              # double 0.97431500000000004
	.quad	0x3fd4a1be2b4959e6              # double 0.32237199999999999
	.quad	0x3fd506d0d49949e9              # double 0.32854100000000003
	.quad	0x3fe5bd273d5bab22              # double 0.67934000000000005
	.quad	0x3fc741bfbdf090f7              # double 0.18169399999999999
	.quad	0x3feac70435efa616              # double 0.83679400000000004
	.quad	0x3fe5f84449dbec25              # double 0.68655600000000006
	.quad	0x3feb85425f202108              # double 0.86001700000000003
	.quad	0x3fa930df9bdc69f9              # double 0.049201000000000002
	.quad	0x3fe1f3c70c996b76              # double 0.56100799999999995
	.quad	0x3feb02f512663411              # double 0.84411099999999994
	.quad	0x3fd5f42352eb5f5f              # double 0.343026
	.quad	0x3fc0302b40f66a55              # double 0.12647
	.quad	0x3f96577531db445f              # double 0.021818000000000001
	.quad	0x3fe6dfb506dd69d3              # double 0.714808
	.quad	0x3fd95e2cdc011d36              # double 0.39637299999999998
	.quad	0x3fbc2539756c93a7              # double 0.109943
	.quad	0x3fe9082491afc04d              # double 0.78224400000000005
	.quad	0x3fea3ca9691a75cd              # double 0.81990499999999999
	.quad	0x3fe1435efa615a8e              # double 0.53947400000000001
	.quad	0x3fd588b545c78a6e              # double 0.33646900000000002
	.quad	0x3feb0900c521dda0              # double 0.84484899999999996
	.quad	0x3fadda059a73b42d              # double 0.058304000000000002
	.quad	0x3fc92999567dbb17              # double 0.19658200000000001
	.quad	0x3fa587724fa8b4c0              # double 0.042049000000000003
	.quad	0x3fedd68e820e6299              # double 0.93244099999999996
	.quad	0x3feb2ddbdb5d8948              # double 0.84934799999999999
	.quad	0x3fefa2bbecaab8a6              # double 0.98861500000000002
	.quad	0x3fd5b395c4220360              # double 0.339086
	.quad	0x3fdcc6c54bcf0b6b              # double 0.44963199999999998
	.quad	0x3fdd6c43f5f91601              # double 0.459733
	.quad	0x3fecbe3193f6c26a              # double 0.89821700000000004
	.quad	0x3fcbe1650a45d420              # double 0.21781600000000001
	.quad	0x3fcd701d9f4d37c1              # double 0.22998399999999999
	.quad	0x3fe65846e8f29d41              # double 0.69827600000000001
	.quad	0x3fc80dcb9a9da598              # double 0.187921
	.quad	0x3f9abd5dc4007571              # double 0.026113000000000001
	.quad	0x3fd2de481f53825e              # double 0.294817
	.quad	0x3fe88c75c4a83b1d              # double 0.76714599999999999
	.quad	0x3fee0ed80a17b0f7              # double 0.93931200000000004
	.quad	0x3fc75dbb9cf9a06a              # double 0.18254799999999999
	.quad	0x3fdd606fac6045bb              # double 0.459011
	.quad	0x3fe265753a3ec02f              # double 0.57488499999999998
	.quad	0x3fe1c226809d4952              # double 0.55495000000000005
	.quad	0x3fbb8e29f9ce8d97              # double 0.107638
	.quad	0x3fc29be8ff327aa7              # double 0.14538300000000001
	.quad	0x3fdeae3608d0891a              # double 0.479383
	.quad	0x3fe08a808c8259e2              # double 0.51690700000000001
	.quad	0x3fcd7ae5796bfca8              # double 0.23031299999999999
	.quad	0x3fcb29ed3953dea4              # double 0.21221699999999999
	.quad	0x3fe07865d7cb2d90              # double 0.51469699999999996
	.quad	0x3fd8d76ee73e681b              # double 0.38814900000000002
	.quad	0x3febb089a0275254              # double 0.86529999999999995
	.quad	0x3fee4b70ac3a860e              # double 0.94670900000000002
	.quad	0x3fdf4b8bef8ceb35              # double 0.48898599999999998
	.quad	0x3febe7ad8e432442              # double 0.872031
	.quad	0x3fe6ee2c98e53eb4              # double 0.71657400000000004
	.quad	0x3f3b97353b4b2fa9              # double 4.2099999999999999E-4
	.quad	0x3fd1d69d30270f39              # double 0.27872400000000003
	.quad	0x3fcfd987c6327ed8              # double 0.24882599999999999
	.quad	0x3fd723d4f15e7c8d              # double 0.36156199999999999
	.quad	0x3fea07faa044ae86              # double 0.81347400000000003
	.quad	0x3fe044d65e460675              # double 0.50840300000000005
	.quad	0x3fc2e37154003255              # double 0.147566
	.quad	0x3fde91b3f20a73f7              # double 0.47764299999999998
	.quad	0x3fee343d89ce4a7b              # double 0.94387699999999997
	.quad	0x3fee85985ad538ac              # double 0.95380799999999998
	.quad	0x3fc28e0c9d9d3459              # double 0.14496000000000001
	.quad	0x3fc6384ba0e84274              # double 0.173593
	.quad	0x3fe87542a23bff8b              # double 0.76431400000000005
	.quad	0x3fc09d7342edbb5a              # double 0.129805
	.quad	0x3fde6a1a500d5e8d              # double 0.47522599999999998
	.quad	0x3fdd88333fc86cec              # double 0.46143800000000001
	.quad	0x3fcc7e5a78f25a25              # double 0.222606
	.quad	0x3fc2afdda8bd230c              # double 0.14599200000000001
	.quad	0x3fbeb463497b7415              # double 0.11994
	.quad	0x3feefd5cb790fb65              # double 0.96842799999999995
	.quad	0x3fe1645e4e69f05f              # double 0.54350200000000004
	.quad	0x3fe21b62c77574f7              # double 0.56584299999999998
	.quad	0x3fe2fa3b9ae0c176              # double 0.59304599999999996
	.quad	0x3fd78f0c77dd872f              # double 0.36810599999999999
	.quad	0x3fe93e121ee67514              # double 0.78882699999999994
	.quad	0x3fe05ee99a62ed35              # double 0.51158599999999999
	.quad	0x3fd4dcb9a9da597d              # double 0.32597199999999998
	.quad	0x3fef03f705857aff              # double 0.96923400000000003
	.quad	0x3fc8d92fb19e731d              # double 0.194128
	.quad	0x3feb802e2328f9f4              # double 0.85939699999999996
	.quad	0x3fd4ebaade657b85              # double 0.32688400000000001
	.quad	0x3fb32734f82f5126              # double 0.074816999999999995
	.quad	0x3fe2e5d3996fa82f              # double 0.59055500000000005
	.quad	0x3fc7e6ddf00abf77              # double 0.18673300000000001
	.quad	0x3fed9aed56b00ffe              # double 0.92516200000000004
	.quad	0x3fd371e6cd29131f              # double 0.30382700000000001
	.quad	0x3fe5271fff79c843              # double 0.661026
	.quad	0x3fc96ab5807fed20              # double 0.198569
	.quad	0x3feff15a4acf312b              # double 0.99821199999999998
	.quad	0x3fe9ebaf102363b2              # double 0.81001999999999996
	.quad	0x3fdd691a75cd0bb7              # double 0.45954
	.quad	0x3fe634b0e1b4bb5e              # double 0.69393199999999999
	.quad	0x3fe47ff151e75361              # double 0.64061800000000002
	.quad	0x3fdec65c70435efa              # double 0.48085699999999998
	.quad	0x3fe5c35ac8a37260              # double 0.68009699999999995
	.quad	0x3fd7271fff79c843              # double 0.361763
	.quad	0x3fc7e468cac4b4d0              # double 0.18665799999999999
	.quad	0x3fc7fe974a3400b9              # double 0.18745700000000001
	.quad	0x3fec805e5f30e7ff              # double 0.89066999999999996
	.quad	0x3fe37ecbb7f9d6f1              # double 0.60922799999999999
	.quad	0x3fe4c1aef6f8f041              # double 0.64864299999999997
	.quad	0x3f9b8a5ce5b4245f              # double 0.026894999999999999
	.quad	0x3fdf8427418d690a              # double 0.49244100000000002
	.quad	0x3fe26d45e9185cee              # double 0.57583899999999999
	.quad	0x3fb239713ad5bee4              # double 0.071189000000000002
	.quad	0x3fc9cd67fd3f5b60              # double 0.20158100000000001
	.quad	0x3fd425892684cf07              # double 0.31479099999999999
	.quad	0x3fe2ba775fb2edfe              # double 0.58526199999999995
	.quad	0x3fdd39a38fbca106              # double 0.45664300000000002
	.quad	0x3fdd949e8815e397              # double 0.462196
	.quad	0x3fd3d23d4f15e7c9              # double 0.30970700000000001
	.quad	0x3fc2b3f63c31df76              # double 0.146117
	.quad	0x3fd4bb98c7e28241              # double 0.32395000000000002
	.quad	0x3fce202539756c94              # double 0.23535600000000001
	.quad	0x3fe070995aaf78ff              # double 0.51374500000000001
	.quad	0x3fd5bfdf7e8038a0              # double 0.33983600000000003
	.quad	0x3fe1069e7fb267c7              # double 0.53205800000000003
	.quad	0x3feb1ac14c660a20              # double 0.84701599999999999
	.quad	0x3feedcc20d5629d8              # double 0.96444799999999997
	.quad	0x3fd2088509bf9c63              # double 0.28177000000000002
	.quad	0x3fe0df4e4430b179              # double 0.52725900000000003
	.quad	0x3feba7c7c5260f5e              # double 0.86423099999999997
	.quad	0x3feef1bcdbbe0158              # double 0.967009
	.quad	0x3f7f28848387df5d              # double 0.007607
	.quad	0x3fd3b97353b4b2fb              # double 0.30819400000000002
	.quad	0x3fa345f17bd8be73              # double 0.037643000000000003
	.quad	0x3fd3a808c8259e1f              # double 0.30713099999999999
	.quad	0x3fdfccd962068555              # double 0.49687799999999999
	.quad	0x3fe8704bc27631b6              # double 0.76370800000000005
	.quad	0x3fbb4a98aa8650e7              # double 0.10660699999999999
	.quad	0x3fd311f4f50a02b8              # double 0.29797099999999999
	.quad	0x3fdc7ac81d3aa36a              # double 0.444994
	.quad	0x3fdf2502eec7c958              # double 0.48663400000000001
	.quad	0x3fef04230fcf80dc              # double 0.96925499999999997
	.quad	0x3fd87b2031ceaf25              # double 0.38251499999999999
	.quad	0x3fe8a1bc126a65cf              # double 0.76974299999999996
	.quad	0x3fd883e8576cce5f              # double 0.38305099999999997
	.quad	0x3fbb585be1a82624              # double 0.106817
	.quad	0x3fd2a30db6a1e81d              # double 0.29120200000000002
	.quad	0x3fa743419e300150              # double 0.045435000000000003
	.quad	0x3fdc8b60f1b25f63              # double 0.44600699999999999
	.quad	0x3fe245f17bd8be73              # double 0.57103800000000005
	.quad	0x3feea7f3cf70153c              # double 0.95800200000000002
	.quad	0x3fd4ba3875925354              # double 0.32386599999999999
	.quad	0x3fda5ad538ac18f8              # double 0.41179399999999999
	.quad	0x3fe21d96e9bbf0dc              # double 0.56611199999999995
	.quad	0x3fdb53c579f23465              # double 0.42698799999999998
	.quad	0x3fdbaf922962cfd9              # double 0.432591
	.quad	0x3fe7e82d7b634dad              # double 0.74709199999999998
	.quad	0x3fee0f42fe82517e              # double 0.93936299999999995
	.quad	0x3fcd09741d084e83              # double 0.226851
	.quad	0x3fee3b4f61672325              # double 0.94474000000000002
	.quad	0x3fd7059a73b42cc3              # double 0.35971700000000001
	.quad	0x3fb66e43aa79bbae              # double 0.087620000000000003
	.quad	0x3fe5d7d5a9eb2075              # double 0.68259700000000001
	.quad	0x3fd7a7ac81d3aa37              # double 0.36960900000000002
	.quad	0x3fe86bbfd71b0468              # double 0.76315299999999997
	.quad	0x3fe1ff88765ba6f0              # double 0.56244300000000003
	.quad	0x3fe1073797460243              # double 0.53213100000000002
	.quad	0x3fe2799a1fd1569f              # double 0.57734399999999997
	.quad	0x3fd33e8576cce5f7              # double 0.30069099999999999
	.quad	0x3fdcaf35e310dbf0              # double 0.44819399999999998
	.quad	0x3fc718c9fb6134ce              # double 0.18044399999999999
	.quad	0x3fd0be1650a45d42              # double 0.261602
	.quad	0x3fb039042d8c2a45              # double 0.063369999999999996
	.quad	0x3fe89496249a133c              # double 0.76813799999999998
	.quad	0x3fd8b7414a4d2b2c              # double 0.386185
	.quad	0x3fede68a0d349be9              # double 0.934392
	.quad	0x3fedd38476f2a5a4              # double 0.93206999999999995
	.quad	0x3fec574d594f26af              # double 0.88565700000000003
	.quad	0x3fe838d3f1843c3a              # double 0.75693699999999997
	.quad	0x3fe47c0b13597918              # double 0.64014199999999999
	.quad	0x3fe364d3bf2f5558              # double 0.60605799999999999
	.quad	0x3fd0ebe1650a45d4              # double 0.26439699999999999
	.quad	0x3fe665d7cb2d905c              # double 0.699932
	.quad	0x3fe91847f562174c              # double 0.78421399999999996
	.quad	0x3fd115f88fc9363f              # double 0.26696599999999998
	.quad	0x3fda665e02ea960b              # double 0.41249799999999998
	.quad	0x3fccde3b8a19c9d6              # double 0.22553200000000001
	.quad	0x3fe429b6b2af1455              # double 0.63009199999999999
	.quad	0x3fea6fc9bc771434              # double 0.82614600000000004
	.quad	0x3fdc24e9c4545847              # double 0.439753
	.quad	0x3fe7899392189bd8              # double 0.73554399999999998
	.quad	0x3fd866d7a56de332              # double 0.38127699999999998
	.quad	0x3feeeb3dd11be6e6              # double 0.96621599999999996
	.quad	0x3fe6ffd1dcd7060c              # double 0.71872800000000003
	.quad	0x3fe685caafbc1ace              # double 0.70383200000000001
	.quad	0x3fcf923a29c779a7              # double 0.24665000000000001
	.quad	0x3fdd723aafff36ac              # double 0.46009699999999998
	.quad	0x3feef776c4827b70              # double 0.96770800000000001
	.quad	0x3fdf7cd035371972              # double 0.49199300000000001
	.quad	0x3fc0cee5abc0e38a              # double 0.13131399999999999
	.quad	0x3fe9cb5568e820e6              # double 0.80607099999999998
	.quad	0x3fdba14cec41dd1a              # double 0.43171999999999999
	.quad	0x3fe0bfc86cebbba5              # double 0.52341099999999996
	.quad	0x3fec625e99e94ab2              # double 0.88700800000000002
	.quad	0x3fc6474538ef34d7              # double 0.17405000000000001
	.quad	0x3fe2e3e07a28bb0a              # double 0.59031699999999998
	.quad	0x3fe359c27e953155              # double 0.60470699999999999
	.quad	0x3fe38a8d21bc126a              # double 0.61066299999999996
	.quad	0x3fea55ffe6d58c8f              # double 0.82299800000000001
	.quad	0x3fed9f23465625a7              # double 0.92567600000000005
	.quad	0x3f798f1d3ed527e5              # double 0.0062399999999999999
	.quad	0x3fd6f737da61e0c6              # double 0.35883900000000002
	.quad	0x3fd862e09fe86834              # double 0.38103500000000001
	.quad	0x3fe190d173fb7a5f              # double 0.54892799999999997
	.quad	0x3fdead256798958e              # double 0.47931800000000002
	.quad	0x3fe76e631f8a0903              # double 0.73222500000000001
	.quad	0x3fc909bf9c62a1b6              # double 0.19561000000000001
	.quad	0x3feeaa5a469d7343              # double 0.958295
	.quad	0x3fea7bbd7b2031cf              # double 0.82760500000000004
	.quad	0x3fe3f2a5a469d734              # double 0.62336999999999998
	.quad	0x3fed1795b35b0bbf              # double 0.90912899999999996
	.quad	0x3fe4eb356da0168b              # double 0.65371199999999996
	.quad	0x3fecdc69f8c21e1d              # double 0.90190599999999999
	.quad	0x3fdde48e8a71de6a              # double 0.46707500000000002
	.quad	0x3fdb416bdb1a6d6a              # double 0.42586800000000002
	.quad	0x3fea4af4f0d844d0              # double 0.82164999999999999
	.quad	0x3fd3a8cdea033e79              # double 0.30717800000000001
	.quad	0x3fd2e1a3f4666eca              # double 0.29502200000000001
	.quad	0x3fea22e1ac57e23f              # double 0.81675799999999998
	.quad	0x3fdba8826aa8eb46              # double 0.43215999999999999
	.quad	0x3fbc8b11409a2403              # double 0.111497
	.quad	0x3fe39aef6f8f0414              # double 0.61266299999999996
	.quad	0x3fe4354c122749f1              # double 0.63150600000000001
	.quad	0x3fdd404a72ead927              # double 0.45704899999999998
	.quad	0x3fed7dbf487fcb92              # double 0.92159999999999997
	.quad	0x3fdd89a88ace24bc              # double 0.46152700000000002
	.quad	0x3fd2be5109070fbf              # double 0.29286600000000002
	.quad	0x3fe13e27179bfdf8              # double 0.53883700000000001
	.quad	0x3fc849e44fa05144              # double 0.18975500000000001
	.quad	0x3fe3b83cf2cf95d5              # double 0.61624000000000001
	.quad	0x3f796e9bbf0dc769              # double 0.0062090000000000001
	.quad	0x3fe46b441bb8c32b              # double 0.63809400000000005
	.quad	0x3fdda1b1960fa15e              # double 0.46299400000000002
	.quad	0x3fc63ca7503b81b6              # double 0.17372599999999999
	.quad	0x3fc4f32bdc26dce4              # double 0.16367100000000001
	.quad	0x3fe9f7036c9c0a8d              # double 0.81140299999999999
	.quad	0x3fd16e9ff0cbaf96              # double 0.27237699999999998
	.quad	0x3fd1202107b78466              # double 0.26758599999999999
	.quad	0x3fc1d6cf850df15a              # double 0.13936799999999999
	.quad	0x3fefceb56fb8f57f              # double 0.99398299999999994
	.quad	0x3fe42046c764ae00              # double 0.62894000000000005
	.quad	0x3fca21af7d30ad47              # double 0.204153
	.quad	0x3fe864606748e475              # double 0.76225299999999996
	.quad	0x3fd4f30a4e379b78              # double 0.32733400000000001
	.quad	0x3fc34f50a02b8412              # double 0.15085799999999999
	.quad	0x3fef5490e66cb103              # double 0.97907299999999997
	.quad	0x3fdf050bd87b56b8              # double 0.48468299999999997
	.quad	0x3fdc636b09635611              # double 0.44356800000000002
	.quad	0x3fe0f4538ef34d6a              # double 0.52982499999999999
	.quad	0x3fea4a9cdc443915              # double 0.821608
	.quad	0x3fee69be09bb6aa5              # double 0.95040800000000003
	.quad	0x3fe8cb9ecf638002              # double 0.77485599999999999
	.quad	0x3fdf9a1fd1569f49              # double 0.493782
	.quad	0x3fe0ae09fe86833c              # double 0.52124499999999996
	.quad	0x3fd21a6d698fe692              # double 0.28286299999999998
	.quad	0x3fe1dd13d74d594f              # double 0.55823699999999998
	.quad	0x3febe8ff327aa68f              # double 0.87219199999999997
	.quad	0x3fdf45132f87ad08              # double 0.488591
	.quad	0x3fe174aba3875925              # double 0.54549199999999998
	.quad	0x3fb0f3eccc469510              # double 0.066222000000000003
	.quad	0x3fbeb777d0f1f57b              # double 0.119987
	.quad	0x3fe4db1209edbf8c              # double 0.65174200000000004
	.quad	0x3fb4cdfaca361998              # double 0.081268000000000007
	.quad	0x3fc38eb8950763a2              # double 0.15279300000000001
	.quad	0x3fcffe974a3400b9              # double 0.24995700000000001
	.quad	0x3fee9841aac53b08              # double 0.95608599999999999
	.quad	0x3fe3b4c1a8ac5c14              # double 0.615815
	.quad	0x3fb54b380cb6c7a8              # double 0.083179000000000003
	.quad	0x3fee8cd855970b4a              # double 0.95469300000000001
	.quad	0x3fe3eb78897e9963              # double 0.62249399999999999
	.quad	0x3fa47fdc5931ca7d              # double 0.040037999999999997
	.quad	0x3feba71de69ad42c              # double 0.86414999999999997
	.quad	0x3fe9286b59146e4c              # double 0.78618399999999999
	.quad	0x3fb287e38eb0318c              # double 0.072386000000000006
	.quad	0x3fd71a500d5e8d54              # double 0.360981
	.quad	0x3fed369552e2fbe3              # double 0.91291299999999997
	.quad	0x3fcb08a265f0f5a1              # double 0.211201
	.quad	0x3fe5a8ed5f138bce              # double 0.676871
	.quad	0x3fb3ed0f6273929f              # double 0.077836000000000002
	.quad	0x3fe7f049a9973d9f              # double 0.74808200000000002
	.quad	0x3fc4ba9d1f601798              # double 0.16194500000000001
	.quad	0x3fef21858bc59b80              # double 0.97284199999999998
	.quad	0x3fe2b9a38fbca106              # double 0.58516100000000004
	.quad	0x3fe8d1c7de5082cf              # double 0.77560799999999996
	.quad	0x3fd8efd86a8fc0d3              # double 0.38963900000000001
	.quad	0x3fe0f2fdb8fde2ef              # double 0.52966199999999997
	.quad	0x3fe2bf01322f2735              # double 0.585816
	.quad	0x3fec355cd91eeaa7              # double 0.88151400000000002
	.quad	0x3fd2e586013660e5              # double 0.29525899999999999
	.quad	0x3fcb6be37de939eb              # double 0.21423
	.quad	0x3fc4a7ac81d3aa37              # double 0.16136700000000001
	.quad	0x3fe9a0ab71327243              # double 0.80086299999999999
	.quad	0x3fe3dcb35f3d7d39              # double 0.62069099999999999
	.quad	0x3fdf2f2734f82f51              # double 0.48725299999999999
	.quad	0x3fea89f1f14983d8              # double 0.82933900000000005
	.quad	0x3fed0f6f08cc575c              # double 0.90813399999999999
	.quad	0x3fcd75afaf859429              # double 0.230154
	.quad	0x3fe12645e4e69f06              # double 0.53592200000000001
	.quad	0x3fb9797cc39ffd61              # double 0.099510000000000001
	.quad	0x3fc108cc575c0768              # double 0.133081
	.quad	0x3fd462ae4b018612              # double 0.318523
	.quad	0x3fb7e9b7bf1e8e61              # double 0.093410000000000007
	.quad	0x3fde3009b30728e9              # double 0.47168199999999999
	.quad	0x3fb24b33daf8df7a              # double 0.071459999999999996
	.quad	0x3fe9b400b88ca3e8              # double 0.80322300000000002
	.quad	0x3fda1c044284dfce              # double 0.40795999999999999
	.quad	0x3fec255d1c3ac92a              # double 0.87956100000000004
	.quad	0x3fed4e52deca2553              # double 0.91581100000000004
	.quad	0x3fc56a6a012599ed              # double 0.16730999999999999
	.quad	0x3fdd374ff865d7cb              # double 0.45650099999999999
	.quad	0x3fdbf90d9d7774ac              # double 0.43707600000000002
	.quad	0x3fd6ae297396d091              # double 0.35437999999999997
	.quad	0x3fccf9ca5bd944aa              # double 0.22637299999999999
	.quad	0x3fb0a6eb91b3f20a              # double 0.065046999999999994
	.quad	0x3fed991148fd9fd3              # double 0.92493499999999995
	.quad	0x3fb681fd9ba1b196              # double 0.087920999999999999
	.quad	0x3fe87290abb44e51              # double 0.76398500000000003
	.quad	0x3fe8fdcbddb9841b              # double 0.78098100000000004
	.quad	0x3fc5780346dc5d64              # double 0.16772500000000001
	.quad	0x3fe388db0574b407              # double 0.610456
	.quad	0x3fee37a5f41aef70              # double 0.94429300000000005
	.quad	0x3fd156605ee568a5              # double 0.270897
	.quad	0x3fe455e071c53f3a              # double 0.63548300000000002
	.quad	0x3fe661b6d43d0397              # double 0.69942800000000005
	.quad	0x3febf20642396074              # double 0.87329400000000001
	.quad	0x3fc488bda9435ac9              # double 0.16042300000000001
	.quad	0x3fece004b7f5a533              # double 0.90234599999999998
	.quad	0x3fe59aef6f8f0414              # double 0.67516299999999996
	.quad	0x3feca7ed84d338f8              # double 0.89549900000000004
	.quad	0x3f8cec84f8f8a4c2              # double 0.014123
	.quad	0x3fdee20ccff21b3b              # double 0.482547
	.quad	0x3feba08e15011905              # double 0.86334900000000003
	.quad	0x3fb8de3b8a19c9d6              # double 0.097141000000000005
	.quad	0x3fca75bc44bf4cb2              # double 0.20671800000000001
	.quad	0x3fc5d1a21ea35936              # double 0.17046
	.quad	0x3fb33e681a9b8cb9              # double 0.075171000000000002
	.quad	0x3fe091e646f15619              # double 0.51780999999999999
	.quad	0x3fe2e2b063e07a29              # double 0.59017200000000003
	.quad	0x3fee2e0c17657753              # double 0.94312099999999999
	.quad	0x3fd7f840181e03f7              # double 0.374527
	.quad	0x3fe4aa3f034b0e1b              # double 0.64578199999999997
	.quad	0x3fe57023e9ea1405              # double 0.66993899999999995
	.quad	0x3fb788333fc86cec              # double 0.091922000000000004
	.quad	0x3fe52d2bb23571d2              # double 0.66176400000000002
	.quad	0x3fe05daad601ffb5              # double 0.51143400000000006
	.quad	0x3fd325247cb70ac4              # double 0.29914200000000002
	.quad	0x3fe99081c2e33eff              # double 0.79888999999999999
	.quad	0x3fd95fbf83382e45              # double 0.39646900000000002
	.quad	0x3fe4cfbfc6540cc8              # double 0.65036000000000005
	.quad	0x3febab4d8ba40d91              # double 0.86466100000000001
	.quad	0x3fefaa5e785b5b70              # double 0.98954699999999995
	.quad	0x3fe8c896dd26b724              # double 0.774486
	.quad	0x3fed66c6de76427c              # double 0.91879599999999994
	.quad	0x3feda0945f9df549              # double 0.92585200000000001
	.quad	0x3feff9591cd1c7de              # double 0.99918799999999997
	.quad	0x3fdb8c9fb6134ce4              # double 0.43045800000000001
	.quad	0x3fc75475a31a4bdc              # double 0.18226500000000001
	.quad	0x3fc3aade657b84dc              # double 0.15365200000000001
	.quad	0x3fe2dd56f32bdc27              # double 0.58951900000000002
	.quad	0x3fe745308bb90646              # double 0.72719599999999995
	.quad	0x3fc66bf8769ec2ce              # double 0.17516999999999999
	.quad	0x3fd3cfc829cfdd23              # double 0.30955700000000003
	.quad	0x3f9de481f53825e1              # double 0.029191999999999999
	.quad	0x3fb5e81cb46bacf7              # double 0.085572999999999996
	.quad	0x3fe0fe4bcad9ad86              # double 0.53104200000000001
	.quad	0x3fe0ddb76b3bb83d              # double 0.52706500000000001
	.quad	0x3fe40b5675579af2              # double 0.62638400000000005
	.quad	0x3feea2f8bdec5f39              # double 0.95739399999999997
	.quad	0x3fe1f26f1dc50ce5              # double 0.56084400000000001
	.quad	0x3fe476fd21ff2e49              # double 0.63952500000000001
	.quad	0x3fe7c7c957cd466f              # double 0.74313799999999997
	.quad	0x3fe9c2dadb8348f5              # double 0.80503599999999997
	.quad	0x3fec10a782906898              # double 0.87703299999999995
	.quad	0x3fea1f1cfbb94962              # double 0.81629799999999997
	.quad	0x3fd188b545c78a6e              # double 0.27396900000000002
	.quad	0x3fe7008c8259e1f4              # double 0.71881700000000004
	.quad	0x3feaff1b69121251              # double 0.84364099999999997
	.quad	0x3fe58c73abc94706              # double 0.67339499999999997
	.quad	0x3fd0a9b8cb8e086c              # double 0.26035900000000001
	.quad	0x3fec3a3875925354              # double 0.88210699999999997
	.quad	0x3fbc5681ecd4aa11              # double 0.110695
	.quad	0x3fe604d551d68c69              # double 0.68808999999999998
	.quad	0x3fcb54866a11ec92              # double 0.21351700000000001
	.quad	0x3fefea50d6b228dd              # double 0.99735300000000004
	.quad	0x3fe25b9841aac53b              # double 0.573681
	.quad	0x3fdc3293d102bc73              # double 0.44058700000000001
	.quad	0x3fd337824d4cb9ed              # double 0.300263
	.quad	0x3fba3c42a66dbd73              # double 0.102482
	.quad	0x3fc34bd76ee73e68              # double 0.150752
	.quad	0x3fe31337eb28d866              # double 0.59609599999999996
	.quad	0x3fce1e3eaf6837f8              # double 0.23529800000000001
	.quad	0x3fcd81626b2f2303              # double 0.23051099999999999
	.quad	0x3fbbcdcca70d1fa3              # double 0.108609
	.quad	0x3fefe53005814941              # double 0.99672700000000002
	.quad	0x3febdb61bb05faec              # double 0.87053000000000002
	.quad	0x3feb7635e74299d9              # double 0.85818000000000005
	.quad	0x3fe2bfdd65a14489              # double 0.58592100000000003
	.quad	0x3feb0e757928e0ca              # double 0.84551500000000002
	.quad	0x3fedfcd466f5019f              # double 0.93711299999999997
	.quad	0x3fe0121682f94424              # double 0.50220799999999999
	.quad	0x3fa0848387df5cf2              # double 0.032260999999999998
	.quad	0x3fa150b955f7835a              # double 0.033819000000000002
	.quad	0x3fe86b9c304ccee6              # double 0.76313600000000004
	.quad	0x3fd131d2e0e30447              # double 0.26866600000000002
	.quad	0x3fda2435696e58a3              # double 0.40845999999999999
	.quad	0x3fd99f51697f1f9b              # double 0.40034900000000001
	.quad	0x3fc8a369fcf3dc05              # double 0.19248699999999999
	.quad	0x3fe9d821294573a8              # double 0.80763300000000005
	.quad	0x3fe5fb352a843809              # double 0.68691500000000005
	.quad	0x3fd59478c868b9fe              # double 0.33718700000000001
	.quad	0x3fe8efd21ff2e48f              # double 0.77927500000000005
	.quad	0x3feea5daf07bfe7e              # double 0.95774599999999999
	.quad	0x3fe23bc6eb0b7c35              # double 0.569797
	.quad	0x3fe21b93037d6302              # double 0.56586599999999998
	.quad	0x3fe39c27e9531551              # double 0.61281200000000002
	.quad	0x3fd2ce358298cc14              # double 0.29383599999999999
	.quad	0x3feae0f7fcfc3f81              # double 0.83996199999999999
	.quad	0x3febfe77d523b363              # double 0.87481299999999995
	.quad	0x3fe79554fbdad752              # double 0.73697900000000005
	.quad	0x3fdffa11a975afb0              # double 0.49963800000000003
	.quad	0x3fd377b7c7820a31              # double 0.30418200000000001
	.quad	0x3fe51157abb8800f              # double 0.65836700000000004
	.quad	0x3fe4cafd5454152b              # double 0.649779
	.quad	0x3fd764b2314013ec              # double 0.36552099999999998
	.quad	0x3fe1e5cb35f3d7d4              # double 0.55930100000000005
	.quad	0x3feddee99a62ed35              # double 0.93346099999999999
	.quad	0x3fcbf3b645a1cac1              # double 0.21837500000000001
	.quad	0x3fd98b47c73eee52              # double 0.39912599999999998
	.quad	0x3fe5ec6de76427c8              # double 0.68511100000000003
	.quad	0x3fb327bb2fec56d6              # double 0.074825000000000003
	.quad	0x3fe44d0bb6ed6777              # double 0.634405
	.quad	0x3fe72f944241c3f0              # double 0.72455800000000004
	.quad	0x3feebb688bda9436              # double 0.96037700000000004
	.quad	0x3fcbc779a6b50b0f              # double 0.217025
	.quad	0x3fa41c1d6cf850df              # double 0.039276999999999999
	.quad	0x3feac69728a61177              # double 0.83674199999999999
	.quad	0x3fded4801f75104d              # double 0.48171999999999998
	.quad	0x3fce8f75536933a0              # double 0.23875299999999999
	.quad	0x3fdec2ce4649906d              # double 0.48064000000000001
	.quad	0x3fe1a96f6512a950              # double 0.55193300000000001
	.quad	0x3fc273e681a9b8cc              # double 0.14416200000000001
	.quad	0x3fd3f666234a87e4              # double 0.31191400000000002
	.quad	0x3fc0eebf65dbfceb              # double 0.13228599999999999
	.quad	0x3f8538ac18f81e8a              # double 0.010362
	.quad	0x3fef43dccea28fe2              # double 0.97703399999999996
	.quad	0x3fd3c9c4da9003ef              # double 0.30919000000000002
	.quad	0x3fe21960fa15db34              # double 0.56559800000000005
	.quad	0x3fe092ab68cef673              # double 0.51790400000000003
	.quad	0x3fa778dd616f86a1              # double 0.045844000000000003
	.quad	0x3fea067ad8e43244              # double 0.81329099999999998
	.quad	0x3fe15ad538ac18f8              # double 0.54233799999999999
	.quad	0x3febf8d2e514c22f              # double 0.87412400000000001
	.quad	0x3fe7bfdd65a14489              # double 0.74217100000000003
	.quad	0x3fe03868fd199bb2              # double 0.50688599999999995
	.quad	0x3fe891dbca9691a7              # double 0.76780499999999996
	.quad	0x3fe866f9335d249e              # double 0.76256999999999997
	.quad	0x3fe83877ab324852              # double 0.75689300000000004
	.quad	0x3fe3c3419e300150              # double 0.61758500000000005
	.quad	0x3fd1e35c5b4aa971              # double 0.27950199999999997
	.quad	0x3fe1850df15a4acf              # double 0.54749199999999998
	.quad	0x3f98e368f08461fa              # double 0.024305
	.quad	0x3fbb508f648c7193              # double 0.106698
	.quad	0x3fe41819d2391d58              # double 0.627942
	.quad	0x3f9c6da4484944ed              # double 0.027761999999999998
	.quad	0x3fd8c8eabffcdab2              # double 0.38726300000000002
	.quad	0x3fbf41bfbdf090f7              # double 0.122097
	.quad	0x3fd26a50d6b228dd              # double 0.28773900000000002
	.quad	0x3fcabf1a5ca29846              # double 0.208957
	.quad	0x3fefb93250b5243a              # double 0.99135700000000004
	.quad	0x3fd0c8c5004fb118              # double 0.26225399999999999
	.quad	0x3fcf8f2e05ccc89b              # double 0.246557
	.quad	0x3fd74ea077036c9c              # double 0.364174
	.quad	0x3fede321a2e7f6f5              # double 0.93397600000000003
	.quad	0x3fcbed06fef7c244              # double 0.218171
	.quad	0x3fe1ba9f383f0baf              # double 0.55403100000000005
	.quad	0x3fedbe3e29307af2              # double 0.92947299999999999
	.quad	0x3fe41b6d43d03969              # double 0.62834800000000002
	.quad	0x3feb140789613d32              # double 0.84619500000000003
	.quad	0x3fe8d6e04c059210              # double 0.77622999999999998
	.quad	0x3f9d8a979e16d6dc              # double 0.028849
	.quad	0x3fb68858ff759685              # double 0.088017999999999999
	.quad	0x3fe4262aa19439de              # double 0.62965899999999997
	.quad	0x3fd27204295a6c5d              # double 0.28820899999999999
	.quad	0x3fdfed30f062d40b              # double 0.49885200000000002
	.quad	0x3fe016df3f961805              # double 0.50279200000000002
	.quad	0x3fe94217d2849cb2              # double 0.78931799999999996
	.quad	0x3f8003686a4ca4f4              # double 0.0078189999999999996
	.quad	0x3fe0dca6ca03c4b1              # double 0.52693500000000004
	.quad	0x3fee6e4e26d4801f              # double 0.95096499999999995
	.quad	0x3fde9210385c67e0              # double 0.47766500000000001
	.quad	0x3fde8259e1f3a57f              # double 0.47670600000000002
	.quad	0x3fb37292c4934268              # double 0.075967000000000007
	.quad	0x3fee91a975afaf86              # double 0.95528100000000005
	.quad	0x3fe5e6601bc98a22              # double 0.68437199999999998
	.quad	0x3fe1b037d63022dd              # double 0.55276099999999995
	.quad	0x3fcb78705425f202              # double 0.214613
	.quad	0x3febda921ccd9620              # double 0.87043099999999995
	.quad	0x3fdd8cb07d0aed9a              # double 0.46171200000000001
	.quad	0x3fd32d77318fc505              # double 0.29965000000000003
	.quad	0x3fefc73eee525892              # double 0.99307199999999995
	.quad	0x3fe518b0d0edc3bd              # double 0.65926399999999996
	.quad	0x3f89830e3cd9a522              # double 0.012456999999999999
	.quad	0x3fe059146e4c0df6              # double 0.51087400000000005
	.quad	0x3feb5c8fb86f47b6              # double 0.85504899999999995
	.quad	0x3fe4e40639d5e4a4              # double 0.65283500000000005
	.quad	0x3fe5e43cc07aaef3              # double 0.68411100000000002
	.quad	0x3fc7b59ddc1e7968              # double 0.18523000000000001
	.quad	0x3fde08398a654930              # double 0.469252
	.quad	0x3fee32c83ec892ab              # double 0.94369899999999995
	.quad	0x3f8c03bc4d22c882              # double 0.013679
	.quad	0x3fe1734f82f51266              # double 0.54532599999999998
	.quad	0x3fdf621fafc8b008              # double 0.49036400000000002
	.quad	0x3fddc0bdcad14a0a              # double 0.464889
	.quad	0x3fe02921ccd96207              # double 0.50502100000000005
	.quad	0x3fe205d95dd4c76d              # double 0.56321399999999999
	.quad	0x3fc510f51ac9afe2              # double 0.16458
	.quad	0x3fe7a54823854046              # double 0.73892599999999997
	.quad	0x3fd529563a9f383f              # double 0.330648
	.quad	0x3fa357a355043e53              # double 0.037777999999999999
	.quad	0x3fe81733226c3b92              # double 0.75283199999999995
	.quad	0x3fca534373f316e3              # double 0.20566599999999999
	.quad	0x3fefc3d25247cb71              # double 0.99265400000000003
	.quad	0x3fd55d6bebe1650a              # double 0.33382699999999998
	.quad	0x3fdbb8e086bdf4c3              # double 0.43315900000000002
	.quad	0x3feaa4723aafff37              # double 0.83257400000000004
	.quad	0x3fd8c322291fb3fa              # double 0.38690999999999998
	.quad	0x3fe94d2d44dca8e3              # double 0.79067100000000001
	.quad	0x3fd26e978d4fdf3b              # double 0.28799999999999998
	.quad	0x3feb464ba94bbe44              # double 0.85233099999999994
	.quad	0x3fde14ca925fe975              # double 0.47001900000000002
	.quad	0x3fe1ad14a0a0f4d8              # double 0.55237800000000004
	.quad	0x3fdc3dee78183f92              # double 0.44128000000000001
	.quad	0x3fe2c8605681ecd5              # double 0.58696000000000004
	.quad	0x3fec9b21c475e636              # double 0.89393699999999998
	.quad	0x3fea4a16a4873366              # double 0.82154400000000005
	.quad	0x3fe45362e9036439              # double 0.63517900000000005
	.quad	0x3fe1a4484944ed70              # double 0.55130400000000002
	.quad	0x3fe12fcce1c58256              # double 0.53708500000000003
	.quad	0x3fe7913404ea4a8c              # double 0.73647499999999999
	.quad	0x3feef646ae3a3a8e              # double 0.96756299999999995
	.quad	0x3fe3f6a7264a16a5              # double 0.62385900000000005
	.quad	0x3fecfba8826aa8eb              # double 0.90571999999999997
	.quad	0x3fea4ab1d4f9c1f8              # double 0.82161799999999996
	.quad	0x3fe786290eed02cd              # double 0.73512699999999997
	.quad	0x3fe389289dadfb50              # double 0.61049299999999995
	.quad	0x3fefc2b0ea18372e              # double 0.99251599999999995
	.quad	0x3fe5b992c8c50050              # double 0.67890300000000003
	.quad	0x3fb5244a6223e187              # double 0.082585000000000006
	.quad	0x3feab0292817763e              # double 0.83400399999999997
	.quad	0x3fd47a13c254a3c6              # double 0.31995099999999999
	.quad	0x3fa27d6733ebbfd7              # double 0.036112999999999999
	.quad	0x3fd3b1897a67a52b              # double 0.30771100000000001
	.quad	0x3fc964adff822bbf              # double 0.19838500000000001
	.quad	0x3fe982363b256ffc              # double 0.79714499999999999
	.quad	0x3fbcf8726d04e619              # double 0.113166
	.quad	0x3fed484f8f8a4c1f              # double 0.91507700000000003
	.quad	0x3fe5ab96f21f6cad              # double 0.67719600000000002
	.quad	0x3f97824d4cb9ecf6              # double 0.022957999999999999
	.quad	0x3fe7e3f359ff4fd7              # double 0.74657600000000002
	.quad	0x3fde827fa1a0cf18              # double 0.476715
	.quad	0x3fc48954a7f8012e              # double 0.160441
	.quad	0x3fe5b04ccee5abc1              # double 0.67777100000000001
	.quad	0x3fc586338b47c73f              # double 0.168158
	.quad	0x3fe9d2b90a782907              # double 0.80697300000000005
	.quad	0x3fe10a17b0f6ad71              # double 0.53248200000000001
	.quad	0x3fa2cf312b1b36bd              # double 0.036736999999999999
	.quad	0x3fe3dde9c0229a5f              # double 0.62083900000000003
	.quad	0x3fee3a08398a6549              # double 0.94458399999999998
	.quad	0x3fd0b66f9335d24a              # double 0.26113500000000001
	.quad	0x3fda5460aa64c2f8              # double 0.41139999999999999
	.quad	0x3feff4cb1897a67a              # double 0.99863199999999996
	.quad	0x3fe90ff972474539              # double 0.78320000000000001
	.quad	0x3fb1ca18bd66277c              # double 0.069489999999999996
	.quad	0x3fe3c6c54bcf0b6b              # double 0.61801399999999995
	.quad	0x3fe68abb44e50c5f              # double 0.70443500000000003
	.quad	0x3fe7f27fe4bcad9b              # double 0.74835200000000002
	.quad	0x3fe2a8c79f666235              # double 0.58310300000000004
	.quad	0x3fe206a8fc0d2c38              # double 0.56331299999999995
	.quad	0x3fec1c6b05319829              # double 0.87846900000000006
	.quad	0x3fc190b84988094e              # double 0.13722899999999999
	.quad	0x3fb08eef1bac2df1              # double 0.064681000000000002
	.quad	0x3fdd90e66cb10343              # double 0.46196900000000002
	.quad	0x3fe8b4ce3de6149c              # double 0.77207099999999995
	.quad	0x3fec9db22d0e5604              # double 0.89424999999999998
	.quad	0x3fd8fe7e1fc08fa8              # double 0.39053300000000002
	.quad	0x3fd634f82f512663              # double 0.34698299999999999
	.quad	0x3fee2f2d7f950b95              # double 0.94325899999999996
	.quad	0x3fd23608d08919f0              # double 0.28454800000000002
	.quad	0x3fe6f4aba3875925              # double 0.71736699999999998
	.quad	0x3fae6f5019f3c70d              # double 0.059443000000000003
	.quad	0x3fdcfbd273d5bab2              # double 0.45286999999999999
	.quad	0x3fe8987a4a48f96e              # double 0.76861299999999999
	.quad	0x3f779e16d6dc1a48              # double 0.0057660000000000003
	.quad	0x3fddd74927913e81              # double 0.46626499999999999
	.quad	0x3fd81ed17c5ef630              # double 0.37688100000000002
	.quad	0x3fd0fd04a2fcefaa              # double 0.26544299999999998
	.quad	0x3fd8935b91f70de9              # double 0.383994
	.quad	0x3fce04e1e71044f2              # double 0.23452400000000001
	.quad	0x3fec88dd1e53a81e              # double 0.89170700000000003
	.quad	0x3fea817b95a29414              # double 0.82830599999999998
	.quad	0x3fa9656eefa1e3eb              # double 0.049602
	.quad	0x3fecd2c59fb1e18f              # double 0.900729
	.quad	0x3f7ab7dc7abfb9bf              # double 0.0065230000000000002
	.quad	0x3fe6eadb402d16b9              # double 0.71616899999999994
	.quad	0x3fcfee2435696e59              # double 0.24945500000000001
	.quad	0x3fb70a915379fa98              # double 0.090005000000000002
	.quad	0x3fd29d451fc4c166              # double 0.29084900000000002
	.quad	0x3f9c8b0079a2834d              # double 0.027873999999999999
	.quad	0x3f8eb52c9d16fc9c              # double 0.014994
	.quad	0x3fc52a8c9b845565              # double 0.16536100000000001
	.quad	0x3fe29da16616b54e              # double 0.58174199999999998
	.quad	0x3fefe312f4cf4a56              # double 0.99646900000000005
	.quad	0x3fe42582dbe7f2c3              # double 0.629579
	.quad	0x3fef91a75cd0bb6f              # double 0.98653000000000001
	.quad	0x3fe033b96af038e3              # double 0.50631400000000004
	.quad	0x3fedc8c5004fb118              # double 0.93075799999999997
	.quad	0x3fd011f4f50a02b8              # double 0.25109599999999999
	.quad	0x3fe1d8a116659d13              # double 0.55769400000000002
	.quad	0x3fd8e807bbb62414              # double 0.38916200000000001
	.quad	0x3fee73f748a15981              # double 0.95165599999999995
	.quad	0x3fed96616b54e2b0              # double 0.92460699999999996
	.quad	0x3febba83f4eca687              # double 0.86651800000000001
	.quad	0x3fe630f062d40aaf              # double 0.69347400000000003
	.quad	0x3fecfe9531550ca2              # double 0.90607700000000002
	.quad	0x3fd35471715c63ae              # double 0.30202899999999999
	.quad	0x3fd5fc2224edf612              # double 0.34351399999999999
	.quad	0x3fe87c9795b35b0c              # double 0.76520900000000002
	.quad	0x3fedf56c93a71151              # double 0.93620899999999996
	.quad	0x3fc4b93ccd0fe8ab              # double 0.16190299999999999
	.quad	0x3fb4406c00da1a93              # double 0.079107999999999998
	.quad	0x3fed37ef5a964e8b              # double 0.91307799999999995
	.quad	0x3fd26f112fd32c62              # double 0.28802899999999998
	.quad	0x3fd8ffb8b26394fb              # double 0.39060800000000001
	.quad	0x3fe208bb906466b2              # double 0.56356600000000001
	.quad	0x3fe310a782906898              # double 0.59578299999999995
	.quad	0x3fe034a66559f6ec              # double 0.50642699999999996
	.quad	0x3fe66f6b5d462c34              # double 0.70110099999999997
	.quad	0x3fe7c2917507e9d9              # double 0.74250099999999997
	.quad	0x3fd2e6256366d7a5              # double 0.29529699999999998
	.quad	0x3fdb3e81450efdca              # double 0.42569000000000001
	.quad	0x3fd8d451fc4c1659              # double 0.387959
	.quad	0x3feb5610adcd2d45              # double 0.85425600000000002
	.quad	0x3fe040181e03f706              # double 0.50782400000000005
	.quad	0x3fec6fc7a398201d              # double 0.88864500000000002
	.quad	0x3fe9cd3e0bd44999              # double 0.80630400000000002
	.quad	0x3fec0157eed45e92              # double 0.87516400000000005
	.quad	0x3fec2018a43bb40b              # double 0.87891799999999998
	.quad	0x3fe70c8472c0e7bc              # double 0.72027799999999997
	.quad	0x3fed2294141e9af6              # double 0.91047100000000003
	.quad	0x3fbf35b0bbf50e34              # double 0.12191299999999999
	.quad	0x3fdedeb52c9d16fd              # double 0.48234300000000002
	.quad	0x3feb05ab3aabcd79              # double 0.84444200000000003
	.quad	0x3fec212d77318fc5              # double 0.87905
	.quad	0x3fe13dc69f8c21e2              # double 0.53879100000000002
	.quad	0x3fe62b042528ae75              # double 0.69275100000000001
	.quad	0x3feb4a1ad6451b93              # double 0.852796
	.quad	0x3fede362a5e785b6              # double 0.93400700000000003
	.quad	0x3fd060dcb9a9da59              # double 0.25591199999999997
	.quad	0x3fd5c9f2fdb8fde3              # double 0.340451
	.quad	0x3fe2141e9af5ba2c              # double 0.56495600000000001
	.quad	0x3fc9c84b5dcc63f1              # double 0.20142499999999999
	.quad	0x3fd7733226c3b928              # double 0.36640600000000001
	.quad	0x3fec04e1e71044f2              # double 0.87559600000000004
	.quad	0x3feba8c36da87a07              # double 0.86435099999999998
	.quad	0x3fd7e568a50507a7              # double 0.37337700000000001
	.quad	0x3fcfdb22d0e56042              # double 0.24887500000000001
	.quad	0x3fd1dfe75bc44bf5              # double 0.27929100000000001
	.quad	0x3fedb1fab96f21f7              # double 0.92797600000000002
	.quad	0x3fe417763e4abe6a              # double 0.62786399999999998
	.quad	0x3fe594bdfd2630ec              # double 0.67440699999999998
	.quad	0x3fdec8d5c74751ce              # double 0.48100799999999999
	.quad	0x3fef273b42cc2d6b              # double 0.97353900000000004
	.quad	0x3fe6321e603d5779              # double 0.69361799999999996
	.quad	0x3fce122fad6cb535              # double 0.23493
	.quad	0x3fd3e3d1cc100e6b              # double 0.31078
	.quad	0x3fd039756c93a711              # double 0.25350699999999998
	.quad	0x3febb84db9c7368b              # double 0.86624800000000002
	.quad	0x3fe423400b88ca3e              # double 0.62930299999999995
	.quad	0x3fee385c67dfe32a              # double 0.94438
	.quad	0x3fb0b2a6b0d95140              # double 0.065226000000000006
	.quad	0x3fe7841ede1198af              # double 0.73487800000000003
	.quad	0x3fe9ac669057d178              # double 0.80229499999999998
	.quad	0x3fab721d53cddd6e              # double 0.053605
	.quad	0x3fd2b7a1c25d0742              # double 0.292458
	.quad	0x3fdb09289dadfb50              # double 0.42243399999999998
	.quad	0x3fe12da76d97b310              # double 0.53682300000000005
	.quad	0x3fdcdb5d894812be              # double 0.45088899999999998
	.quad	0x3fedde4a38327675              # double 0.93338500000000002
	.quad	0x3fe23f6c2699c7bd              # double 0.57024200000000003
	.quad	0x3fbe1bf37b8d3f18              # double 0.117614
	.quad	0x3fc6ad70e6f2e8c0              # double 0.17716799999999999
	.quad	0x3fde3e707e175d14              # double 0.47256100000000001
	.quad	0x3fd07ffde7210be9              # double 0.25781199999999999
	.quad	0x3fe1d84901d19158              # double 0.55765200000000004
	.quad	0x3fa051654d61b2a2              # double 0.031870999999999997
	.quad	0x3feb71ed17c5ef63              # double 0.857657
	.quad	0x3fc8832b990afe61              # double 0.19150300000000001
	.quad	0x3fdc91212513b5bf              # double 0.44635799999999998
	.quad	0x3fdb317268d32831              # double 0.42489300000000002
	.quad	0x3fe54523f67f4dbe              # double 0.66469
	.quad	0x3fb94c122749f0e5              # double 0.098817000000000002
	.quad	0x3fe24df47f993d53              # double 0.57201599999999997
	.quad	0x3fe2558ea7ce0fc3              # double 0.57294400000000001
	.quad	0x3fc369b9d7fd8277              # double 0.15166399999999999
	.quad	0x3fe601882adc4c9d              # double 0.68768700000000005
	.quad	0x3fb762f9ca5bd945              # double 0.091354000000000005
	.quad	0x3febcbddb9841aac              # double 0.86863599999999996
	.quad	0x3fe320ab71327243              # double 0.59773799999999999
	.quad	0x3fd364ece9a2c669              # double 0.303035
	.quad	0x3fe865492ff4ba52              # double 0.76236400000000004
	.quad	0x3fb36b8f9b13165d              # double 0.075859999999999997
	.quad	0x3fcf0ff10ecb74de              # double 0.242674
	.quad	0x3fda71cda2b5a20e              # double 0.41319600000000001
	.quad	0x3fbd6b228dc981bf              # double 0.114916
	.quad	0x3fef710667f90d9d              # double 0.98254699999999994
	.quad	0x3fe78323358f2e06              # double 0.73475800000000002
	.quad	0x3fe08bdcad14a0a1              # double 0.517073
	.quad	0x3feca474538ef34d              # double 0.89507499999999995
	.quad	0x3f9aba7b9170d62c              # double 0.026102
	.quad	0x3fd6ba01eeed8905              # double 0.355103
	.quad	0x3fe91f3a57eaa2a1              # double 0.78506200000000004
	.quad	0x3fe42960b6f9fcb1              # double 0.63005100000000003
	.quad	0x3fccd5e8d5410f95              # double 0.22527800000000001
	.quad	0x3fd729a1b9f98b72              # double 0.36191600000000002
	.quad	0x3fd3881a1554fbdb              # double 0.30518200000000001
	.quad	0x3fe313ec460ed80a              # double 0.59618199999999999
	.quad	0x3fb4d7060bb2bbaa              # double 0.081406000000000006
	.quad	0x3fef5041cc532a49              # double 0.97854699999999994
	.quad	0x3fcb9b3d07c84b5e              # double 0.21567500000000001
	.quad	0x3fe86f6f8f041462              # double 0.76360300000000003
	.quad	0x3fda9717df19d66b              # double 0.41547200000000001
	.quad	0x3fc1777d0f1f57b4              # double 0.136459
	.quad	0x3fee998288051c9f              # double 0.95623899999999995
	.quad	0x3fea5f82b1f687b1              # double 0.82415899999999997
	.quad	0x3fcaf5d35653c9ac              # double 0.21062700000000001
	.quad	0x3fe842a8869c66d3              # double 0.75813699999999995
	.quad	0x3fb163886594af4f              # double 0.067924999999999999
	.quad	0x3feba68f4b61fe22              # double 0.86408200000000002
	.quad	0x3fcd45069a4df480              # double 0.22866900000000001
	.quad	0x3fde12ad81adea89              # double 0.46988999999999997
	.quad	0x3fef0789613d31ba              # double 0.96967000000000003
	.quad	0x3fcb25bb7b6bb129              # double 0.212089
	.quad	0x3fe84eb9a176ddad              # double 0.75961000000000001
	.quad	0x3fe13f8fcd67fd3f              # double 0.53900899999999996
	.quad	0x3fc0f4cf4a558ea8              # double 0.13247100000000001
	.quad	0x3fee7a22706d5065              # double 0.95240899999999995
	.quad	0x3fb15000c9539b89              # double 0.067627000000000007
	.quad	0x3febdbcec84f8f8a              # double 0.87058199999999997
	.quad	0x3fea22b7baecd078              # double 0.81673799999999996
	.quad	0x3fe31531550ca1cf              # double 0.59633700000000001
	.quad	0x3fe3a1709310129d              # double 0.61345700000000003
	.quad	0x3fdb474107314ca9              # double 0.42622399999999999
	.quad	0x3fd47e02645e4e6a              # double 0.320191
	.quad	0x3fe923f034b0e1b5              # double 0.78563700000000003
	.quad	0x3fe2a235b4edb2f6              # double 0.58230099999999996
	.quad	0x3fe6fa2f05a708ee              # double 0.71804000000000001
	.quad	0x3fe783cf2cf95d4f              # double 0.73484000000000005
	.quad	0x3fbd5ef1fddebd90              # double 0.11473
	.quad	0x3fe154280ae10492              # double 0.54152299999999998
	.quad	0x3fa3e07a28bb0a2d              # double 0.038822000000000002
	.quad	0x3fe7bde6149c6f37              # double 0.74193100000000001
	.quad	0x3fddf3ade225fa66              # double 0.46799800000000003
	.quad	0x3fd9eed8904f6dfc              # double 0.40520299999999998
	.quad	0x3fc38140dd3fe197              # double 0.15238199999999999
	.quad	0x3fd2f5fd47bedb73              # double 0.29626400000000003
	.quad	0x3fe6ec11a11233df              # double 0.71631699999999998
	.quad	0x3fc7d31b9b66f933              # double 0.18612999999999999
	.quad	0x3fe3258f7121ab4b              # double 0.59833499999999995
	.quad	0x3fd13affb04ee7c5              # double 0.26922600000000002
	.quad	0x3fe5075b3e1437c5              # double 0.65714799999999995
	.quad	0x3fdc8c8abd5dc400              # double 0.44607799999999997
	.quad	0x3fb6e19b90ea9e6f              # double 0.089380000000000001
	.quad	0x3fea4fe36d22424a              # double 0.82225199999999998
	.quad	0x3fb459a73b42cc2d              # double 0.079492999999999994
	.quad	0x3fc559e6256366d8              # double 0.16680600000000001
	.quad	0x3fd29310129cbab6              # double 0.29022599999999998
	.quad	0x3fcea92e62131a8f              # double 0.239538
	.quad	0x3fe5ef112fd32c62              # double 0.68543299999999996
	.quad	0x3fd0374794ea0770              # double 0.25337399999999999
	.quad	0x3fe20df15a4acf31              # double 0.56420199999999998
	.quad	0x3fe2b00bcbe61d00              # double 0.58399000000000001
	.quad	0x3fcb75fb2edfe75c              # double 0.21453800000000001
	.quad	0x3fd4696a26e54717              # double 0.318934
	.quad	0x3fe131ab0856e697              # double 0.53731300000000004
	.quad	0x3fe6e95faa8a82a5              # double 0.71598799999999996
	.quad	0x3fea388ca3e7d135              # double 0.81940299999999999
	.quad	0x3fe01b97353b4b30              # double 0.50336800000000004
	.quad	0x3fe46b0531982880              # double 0.63806399999999996
	.quad	0x3fe835d462c343b7              # double 0.75657099999999999
	.quad	0x3fedebd09e12a51e              # double 0.93503599999999998
	.quad	0x3fe0ee30caa326e1              # double 0.52907599999999999
	.quad	0x3fb6c4a4095f2453              # double 0.088938000000000003
	.quad	0x3fdc09a240314877              # double 0.43808799999999998
	.quad	0x3fb61986b9c304cd              # double 0.086327000000000001
	.quad	0x3fce1198aeb80ed0              # double 0.23491200000000001
	.quad	0x3fe24ca925fe974a              # double 0.57185799999999998
	.quad	0x3fcf0984e3ffef39              # double 0.242478
	.quad	0x3fec3b98c7e28241              # double 0.88227500000000003
	.quad	0x3fec8370cdc8754f              # double 0.89104499999999998
	.quad	0x3fe565de15ca6ca0              # double 0.66868499999999997
	.quad	0x3fc443914f483cb0              # double 0.15831200000000001
	.quad	0x3fec0767d34df04e              # double 0.87590400000000002
	.quad	0x3fdb92fb19e731d3              # double 0.43084600000000001
	.quad	0x3fc7229e90795f67              # double 0.18074399999999999
	.quad	0x3fead46f587d6f97              # double 0.83843199999999996
	.quad	0x3fd2117f84449dbf              # double 0.28231800000000001
	.quad	0x3fe9c9f51697f1fa              # double 0.80590300000000004
	.quad	0x3f8cc20d5629d841              # double 0.014042000000000001
	.quad	0x3fd12e1ef73c0c20              # double 0.26844000000000001
	.quad	0x3fc68155d5f56a7b              # double 0.17582200000000001
	.quad	0x3fdf7160956c0d6f              # double 0.49129499999999998
	.quad	0x3fde2f5989df1173              # double 0.47164
	.quad	0x3fe3a0232096787d              # double 0.61329800000000001
	.quad	0x3fd2b0ab2e1693c0              # double 0.29203299999999999
	.quad	0x3fe5191361dc93ea              # double 0.65931099999999998
	.quad	0x3fefcf13cee9dd7f              # double 0.99402800000000002
	.quad	0x3fc959e6256366d8              # double 0.19805600000000001
	.quad	0x3fe5113404ea4a8c              # double 0.65834999999999999
	.quad	0x3fe69d323fee2c99              # double 0.70668900000000001
	.quad	0x3fe03acd5b6805a3              # double 0.50717800000000002
	.quad	0x3febc0fa9c12f09e              # double 0.86730700000000005
	.quad	0x3fe52543f1c75819              # double 0.66079900000000003
	.quad	0x3fe3f3de1e2de871              # double 0.62351900000000005
	.quad	0x3fefc217d2849cb2              # double 0.99244299999999996
	.quad	0x3fd9d755bccaf70a              # double 0.40376800000000002
	.quad	0x3fe97891e215336e              # double 0.79596800000000001
	.quad	0x3fe669c0229a5ebb              # double 0.70040899999999995
	.quad	0x3fd298b2e9ccb7d4              # double 0.29056999999999999
	.quad	0x3fe9dfaebc408d8f              # double 0.80855500000000002
	.quad	0x3fc90ebaade657b8              # double 0.19576199999999999
	.quad	0x3febfbdad7518b0d              # double 0.87449399999999999
	.quad	0x3fa467dfe32a0664              # double 0.039855000000000002
	.quad	0x3fb36b8f9b13165d              # double 0.075859999999999997
	.quad	0x3fe28bd87b56b873              # double 0.57957099999999995
	.quad	0x3fe2ba365cb35f3d              # double 0.58523099999999995
	.quad	0x3fe3df3300de4c51              # double 0.62099599999999999
	.quad	0x3fc0d98bf7f06706              # double 0.13163900000000001
	.quad	0x3fc6240b780346dc              # double 0.17297499999999999
	.quad	0x3fecd9d7774aba38              # double 0.90159199999999995
	.quad	0x3fd0cb4aec8d5c74              # double 0.26240799999999997
	.quad	0x3fd5de8b3b320536              # double 0.34170800000000001
	.quad	0x3fe89b6b2af14552              # double 0.76897199999999999
	.quad	0x3fe18333fc86cebc              # double 0.54726600000000003
	.quad	0x3fecb945308bb906              # double 0.89761599999999997
	.quad	0x3fe25ac258d5842b              # double 0.57357899999999995
	.quad	0x3fa8068db8bac711              # double 0.046925000000000001
	.quad	0x3fbbbd5992428d43              # double 0.108358
	.quad	0x3fe561f9f01b866e              # double 0.66820999999999997
	.quad	0x3fe34d5d80e496ee              # double 0.60319400000000001
	.quad	0x3fd7cee17a02fb5d              # double 0.372002
	.quad	0x3fead3804534bd77              # double 0.83831800000000001
	.quad	0x3fe2ba6ce358298d              # double 0.58525700000000003
	.quad	0x3fd282e019b0ab2e              # double 0.289238
	.quad	0x3fe7bec2480e8c8b              # double 0.74203600000000003
	.quad	0x3f98904f6dfc5cdd              # double 0.023987999999999999
	.quad	0x3fc2698bb4d48883              # double 0.143846
	.quad	0x3fe959f90539fba4              # double 0.79223299999999996
	.quad	0x3fee4a0e410b630b              # double 0.94654000000000005
	.quad	0x3fe8a845996744b3              # double 0.77054100000000003
	.quad	0x3fe14449dbec2481              # double 0.53958600000000001
	.quad	0x3fe23836a832b991              # double 0.56936200000000003
	.quad	0x3fb243bb40b34e77              # double 0.071346000000000007
	.quad	0x3fe50897e996312f              # double 0.65729899999999997
	.quad	0x3fd1c85c24c404a7              # double 0.27785399999999999
	.quad	0x3fe0e2fbe33acd5b              # double 0.52770799999999995
	.quad	0x3fb1a9003eea209b              # double 0.068985000000000005
	.quad	0x3fe306cebbba55d2              # double 0.59458100000000003
	.quad	0x3feb56238da3c212              # double 0.85426500000000005
	.quad	0x3fecefdeb52c9d17              # double 0.904281
	.quad	0x3fe9d12018a43bb4              # double 0.80677799999999999
	.quad	0x3fd60ce0b912dba5              # double 0.34453600000000001
	.quad	0x3fa3dd54da4ce810              # double 0.038797999999999999
	.quad	0x3fe97ee4e26d4802              # double 0.79674
	.quad	0x3fef21101b003687              # double 0.97278600000000003
	.quad	0x3fd2a86d71f36263              # double 0.29153000000000001
	.quad	0x3f93cfb3311a543f              # double 0.019347
	.quad	0x3feaa8d002e23290              # double 0.83310700000000004
	.quad	0x3fd33cea6c1a048e              # double 0.300593
	.quad	0x3fe86687f455a7d2              # double 0.76251599999999997
	.quad	0x3fe30644523f67f5              # double 0.59451500000000002
	.quad	0x3fedda1016ce789e              # double 0.93286899999999995
	.quad	0x3fabcea6c1a048e0              # double 0.054310999999999998
	.quad	0x3fe6acd39da16617              # double 0.70859700000000003
	.quad	0x3f999ae924f227d0              # double 0.025004999999999999
	.quad	0x3fe4267e846a5d6c              # double 0.62969900000000001
	.quad	0x3fe3eee30caa326e              # double 0.62291099999999999
	.quad	0x3fee6b356da0168b              # double 0.95058699999999996
	.quad	0x3fedbba55d1c3ac9              # double 0.92915599999999998
	.quad	0x3fe15bc664d3bf2f              # double 0.54245299999999996
	.quad	0x3fe39b90ea9e6eeb              # double 0.61273999999999995
	.quad	0x3fd8fc19c17225b7              # double 0.39038699999999998
	.quad	0x3fe9586ca89fc6da              # double 0.79204399999999997
	.quad	0x3fefc6d1e108c3f4              # double 0.99302000000000001
	.quad	0x3fd4d5bab21815a0              # double 0.32554499999999997
	.quad	0x3fa8d38cda6e75ff              # double 0.048488999999999997
	.quad	0x3fd436d22424a277              # double 0.31584600000000002
	.quad	0x3feedfd2630ec311              # double 0.96482199999999995
	.quad	0x3fd6107746887a8d              # double 0.34475499999999998
	.quad	0x3fe0ce48626f60e1              # double 0.52518100000000001
	.quad	0x3fdfd5c31593e5fb              # double 0.49742199999999998
	.quad	0x3fe511ff7164c72a              # double 0.658447
	.quad	0x3fec2f33ca31e7da              # double 0.88076200000000004
	.quad	0x3fd42f05a708ede5              # double 0.31536999999999998
	.quad	0x3fe8052d666a9824              # double 0.75063199999999996
	.quad	0x3fecd130df9bdc6a              # double 0.900536
	.quad	0x3fc7fcc1871e6cd3              # double 0.18740100000000001
	.quad	0x3f9a619da9c99286              # double 0.025763000000000001
	.quad	0x3fc216c61522a6f4              # double 0.14132
	.quad	0x3fedc4a1f080303c              # double 0.93025299999999999
	.quad	0x3fe441f644955b46              # double 0.63305199999999995
	.quad	0x3feaeb09635610ae              # double 0.84119100000000002
	.quad	0x3fc8bd66277c45cc              # double 0.19328000000000001
	.quad	0x3fd6b4916ca46e09              # double 0.354771
	.quad	0x3fad53ef6b5d462c              # double 0.057280999999999999
	.quad	0x3fd440cc78e9f6a9              # double 0.31645499999999999
	.quad	0x3fd5e5753a3ec02f              # double 0.34212999999999999
	.quad	0x3fe18c9539b88872              # double 0.54841099999999998
	.quad	0x3fee38194c016052              # double 0.94434799999999997
	.quad	0x3fe1659f2ba9d1f6              # double 0.543655
	.quad	0x3fe83018611fd588              # double 0.75587099999999996
	.quad	0x3feccf1a1986b9c3              # double 0.900281
	.quad	0x3fe359cae21101b0              # double 0.604711
	.quad	0x3fd214ad362e9036              # double 0.28251199999999999
	.quad	0x3fdccb5fe542e558              # double 0.44991300000000001
	.quad	0x3fe07928e0c9d9d3              # double 0.51478999999999997
	.quad	0x3fc214cec41dd1a2              # double 0.14126
	.quad	0x3fe938023a6ce358              # double 0.78808699999999998
	.quad	0x3fcec4ef88b97785              # double 0.24038499999999999
	.quad	0x3fe16cbb7f9d6f11              # double 0.54452299999999998
	.quad	0x3fcb9f559b3d07c8              # double 0.21579999999999999
	.quad	0x3fead8f0c77dd873              # double 0.83898200000000001
	.quad	0x3fecc7de5082cf53              # double 0.89939800000000003
	.quad	0x3fe398e757928e0d              # double 0.61241500000000004
	.quad	0x3fe63e468cac4b4d              # double 0.695102
	.quad	0x3fc108c3f3e0370d              # double 0.13308
	.quad	0x3fdaf901083dbc23              # double 0.42144799999999999
	.quad	0x3fdca0902de00d1b              # double 0.44729999999999998
	.quad	0x3fbdede1198aeb81              # double 0.116911
	.quad	0x3fe4106466b1e5c1              # double 0.62700100000000003
	.quad	0x3fd7a1016ce789e7              # double 0.36920199999999997
	.quad	0x3fedd0fe8ab4fa48              # double 0.93176199999999998
	.quad	0x3fde463497b7414a              # double 0.47303499999999998
	.quad	0x3fca406c00da1a93              # double 0.205091
	.quad	0x3fd324c404a72eae              # double 0.29911900000000002
	.quad	0x3fab71b8aa00192a              # double 0.053601999999999997
	.quad	0x3fe19c53f39d1b2e              # double 0.55033299999999996
	.quad	0x3fdb653868fd199c              # double 0.42805300000000002
	.quad	0x3fc882730c671690              # double 0.19148100000000001
	.quad	0x3fddb4d8ba40d90e              # double 0.46416299999999999
	.quad	0x3fce0828c36da87a              # double 0.234624
	.quad	0x3fe4600f345069a5              # double 0.63672600000000001
	.quad	0x3f94a6a875d56f33              # double 0.020167000000000001
	.quad	0x3fd8014727dcbddc              # double 0.37507800000000002
	.quad	0x3fe943b0c4588a05              # double 0.78951300000000002
	.quad	0x3fe921b9f98b71b9              # double 0.78536700000000004
	.quad	0x3fdc2cecc814d728              # double 0.44024200000000002
	.quad	0x3fe8903a7546d3fa              # double 0.76760600000000001
	.quad	0x3fe1496cc5fbf834              # double 0.54021300000000005
	.quad	0x3fe68d6b228dc982              # double 0.70476300000000003
	.quad	0x3fea20dbad3a604e              # double 0.81651099999999999
	.quad	0x3fc89b38d60a6330              # double 0.19223699999999999
	.quad	0x3fdca67a52ac753e              # double 0.44766099999999998
	.quad	0x3fb8c7192ea52ef9              # double 0.096787999999999999
	.quad	0x3fd3a2a90cd423d9              # double 0.30680299999999999
	.quad	0x3fe01ea35935fc3b              # double 0.50373999999999997
	.quad	0x3fd2a22f6a50d6b2              # double 0.29114899999999999
	.quad	0x3fda5daf07bfe7e2              # double 0.411968
	.quad	0x3fe36219652bd3c3              # double 0.60572499999999996
	.quad	0x3fdf04c48adeebb3              # double 0.48466599999999999
	.quad	0x3fce00b88ca3e7d1              # double 0.23439699999999999
	.quad	0x3fe90da5daf07bfe              # double 0.78291599999999995
	.quad	0x3fdd07ee0b0af5fd              # double 0.45360899999999998
	.quad	0x3fe9c0010c6f7a0b              # double 0.80468799999999996
	.quad	0x3fe4946c332f0175              # double 0.64311799999999997
	.quad	0x3f8609dcf893faf4              # double 0.010761
	.quad	0x3fcdc957cd466f50              # double 0.232707
	.quad	0x3fbb3508f648c719              # double 0.106278
	.quad	0x3fcffee2c98e53eb              # double 0.24996599999999999
	.quad	0x3f93cb81733226c4              # double 0.019331000000000001
	.quad	0x3feb1680e0653006              # double 0.84649700000000005
	.quad	0x3fe02b3aabcd78c4              # double 0.50527699999999998
	.quad	0x3fec0b8ae31d712a              # double 0.87640899999999999
	.quad	0x3fc0817763e4abe7              # double 0.12895100000000001
	.quad	0x3fe5509bf9c62a1b              # double 0.66608999999999996
	.quad	0x3f8c7b45f17bd8be              # double 0.013906999999999999
	.quad	0x3fe0639f77292c49              # double 0.51216099999999998
	.quad	0x3fe6a8bb0a2ca9ac              # double 0.70809699999999998
	.quad	0x3fcb482385404641              # double 0.213139
	.quad	0x3fe05df43c7d5ed0              # double 0.51146899999999995
	.quad	0x3fe3da8155d5f56a              # double 0.62042299999999995
	.quad	0x3fcb2c16df3f9618              # double 0.212283
	.quad	0x3fed42f405f6ba06              # double 0.91442299999999999
	.quad	0x3fba4bdba0a52696              # double 0.10272000000000001
	.quad	0x3fee44806290eed0              # double 0.94586199999999998
	.quad	0x3fce854477ff151e              # double 0.23844199999999999
	.quad	0x3fe246583e8576cd              # double 0.57108700000000001
	.quad	0x3fc5fc0096feb4a6              # double 0.17175299999999999
	.quad	0x3fd71a86940357a3              # double 0.36099399999999998
	.quad	0x3fd620c069e7fb26              # double 0.34574899999999997
	.quad	0x3fe3e0157eed45e9              # double 0.62110399999999999
	.quad	0x3fb9b3d07c84b5dd              # double 0.1004
	.quad	0x3fd3d790752da986              # double 0.31003199999999997
	.quad	0x3feba7807789a459              # double 0.86419699999999999
	.quad	0x3fc856eefa1e3eaf              # double 0.19015299999999999
	.quad	0x3fd68986fcdee350              # double 0.35214400000000001
	.quad	0x3fddf2f9873ffac2              # double 0.46795500000000001
	.quad	0x3fd5ef06b37867f1              # double 0.34271400000000002
	.quad	0x3fd1ab474107314d              # double 0.27607900000000002
	.quad	0x3fdfd1ed9dfdac69              # double 0.49718800000000002
	.quad	0x3fe8ccd0fe8ab4fa              # double 0.77500199999999997
	.quad	0x3fbd82773e24febd              # double 0.115272
	.quad	0x3fe21b738e6d15ad              # double 0.56585099999999999
	.quad	0x3fe1a65cf67b1c00              # double 0.55155799999999999
	.quad	0x3fe40c9fb6134ce4              # double 0.62654100000000001
	.quad	0x3fed068123810e88              # double 0.90704399999999996
	.quad	0x3fd3bfbdf090f734              # double 0.30857800000000002
	.quad	0x3fa0110a137f38c5              # double 0.031379999999999998
	.quad	0x3fe29f83be6601bd              # double 0.58197200000000004
	.quad	0x3fe099d451fc4c16              # double 0.51877799999999996
	.quad	0x3fc930df9bdc69f9              # double 0.19680400000000001
	.quad	0x3fde5b70691ea78b              # double 0.474331
	.quad	0x3fe081e4712e4085              # double 0.51585599999999998
	.quad	0x3fe3f6640a6b93cd              # double 0.62382700000000002
	.quad	0x3fecf0f5a1016ce8              # double 0.90441400000000005
	.quad	0x3fb4f722e1ac57e2              # double 0.081895999999999996
	.quad	0x3fd64b662fdfc19c              # double 0.34835199999999999
	.quad	0x3fbd69c23b7952d2              # double 0.114895
	.quad	0x3fd3e5f30e7ff584              # double 0.31091000000000002
	.quad	0x3fd0fb2aae297397              # double 0.26533000000000001
	.quad	0x3fe1e634117f8445              # double 0.55935100000000004
	.quad	0x3fd8864883fd5022              # double 0.38319599999999998
	.quad	0x3fe0b317efe0ce0c              # double 0.52186200000000005
	.quad	0x3fd673affb04ee7c              # double 0.35081099999999998
	.quad	0x3fe5a50f840181e0              # double 0.67639899999999997
	.quad	0x3fee6075f6fd21ff              # double 0.94927499999999998
	.quad	0x3fe6267620ee8d11              # double 0.692195
	.quad	0x3fea677f6b1a2a4e              # double 0.82513400000000003
	.quad	0x3fe6369db65ecc3e              # double 0.69416699999999998
	.quad	0x3fd0fae3608d0892              # double 0.26531300000000002
	.quad	0x3fe125375c8d9f90              # double 0.53579299999999996
	.quad	0x3fd1a6266fd651b1              # double 0.27576600000000001
	.quad	0x3f9d1e108c3f3e03              # double 0.028434999999999998
	.quad	0x3fe54db9c7368ad7              # double 0.66573800000000005
	.quad	0x3fe109cc319c5a3e              # double 0.53244599999999997
	.quad	0x3fc157689ca18bd6              # double 0.13547999999999999
	.quad	0x3fc7b7f1737542a2              # double 0.18530099999999999
	.quad	0x3fdb30b9dc2f405f              # double 0.42484899999999998
	.quad	0x3fe85ac258d5842b              # double 0.76107899999999995
	.quad	0x3fe0784449dbec25              # double 0.51468100000000006
	.quad	0x3fc635a426bb55ac              # double 0.173512
	.quad	0x3fc37ca2120e1f7d              # double 0.15224099999999999
	.quad	0x3fd47264a16a4873              # double 0.31948199999999999
	.quad	0x3fd741d4b6a619db              # double 0.36339300000000002
	.quad	0x3fe5893964a59c06              # double 0.67300099999999996
	.quad	0x3fcb240fa9c12f0a              # double 0.212038
	.quad	0x3fedd475a31a4bdc              # double 0.93218500000000004
	.quad	0x3fe02c7da1ec4e72              # double 0.50543099999999996
	.quad	0x3fe6f4384ba0e842              # double 0.71731199999999995
	.quad	0x3fedcadbc664d3bf              # double 0.93101299999999998
	.quad	0x3fe6c3b70ef56649              # double 0.711391
	.quad	0x3fd93b14a90470a8              # double 0.394231
	.quad	0x3fec45d63886594b              # double 0.883525
	.quad	0x3fdff4fd6d7e889c              # double 0.49932799999999999
	.quad	0x3fe49c10d7be9857              # double 0.64405100000000004
	.quad	0x3fe11871e6cd2913              # double 0.53423399999999999
	.quad	0x3fe2da5332acfb76              # double 0.58915099999999998
	.quad	0x3fe6d1697f1f9ad0              # double 0.713063
	.quad	0x3fe157c0b1359792              # double 0.54196200000000005
	.quad	0x3fe6ded06fef7c24              # double 0.71469899999999997
	.quad	0x3fcc7aaef2c73259              # double 0.222494
	.quad	0x3fd1ba450acc0bdd              # double 0.27699400000000002
	.quad	0x3febed71f36262cc              # double 0.87273500000000003
	.quad	0x3fe5d5cb790fb656              # double 0.68234799999999995
	.quad	0x3fdde147ae147ae1              # double 0.46687499999999998
	.quad	0x3fdcec39799e518f              # double 0.45191799999999999
	.quad	0x3fc43af31b152f3c              # double 0.158049
	.quad	0x3fe0756c93a71151              # double 0.51433399999999996
	.quad	0x3fc89eb2074ea8da              # double 0.19234299999999999
	.quad	0x3fefc46950fc71d6              # double 0.992726
	.quad	0x3fec0ed80a17b0f7              # double 0.87681200000000004
	.quad	0x3fef2be27179bfdf              # double 0.97410699999999994
	.quad	0x3fb78cc9a77e5eab              # double 0.091992000000000004
	.quad	0x3fe2be9424e59296              # double 0.58576399999999995
	.quad	0x3fe6dac471b47842              # double 0.71420499999999998
	.quad	0x3fcb7bd8be7296f6              # double 0.21471699999999999
	.quad	0x3fdafb6dca07f66f              # double 0.42159600000000003
	.quad	0x3fbecebbba55d1c4              # double 0.120342
	.quad	0x3fd3b178b3700475              # double 0.30770700000000001
	.quad	0x3fd50b73d188f430              # double 0.32882400000000001
	.quad	0x3fd96659d12cadde              # double 0.396872
	.quad	0x3fdbd97f62b6ae7d              # double 0.43514999999999998
	.quad	0x3fd500d1b71758e2              # double 0.32817499999999999
	.quad	0x3fe875dbb9cf9a07              # double 0.76438700000000004
	.quad	0x3fef718c9fb6134d              # double 0.98261100000000001
	.quad	0x3fe90eb0318b9347              # double 0.78304300000000004
	.quad	0x3fe5a3c85c24c405              # double 0.67624300000000004
	.quad	0x3fc900c521dda05a              # double 0.19533600000000001
	.quad	0x3fe230489d27c393              # double 0.56839399999999995
	.quad	0x3fbb3f63c31df762              # double 0.106436
	.quad	0x3fe175ad96a6a012              # double 0.54561499999999996
	.quad	0x3fd23800218def41              # double 0.28466799999999998
	.quad	0x3fe79057d1782d38              # double 0.73636999999999997
	.quad	0x3fee7ef5a964e8b8              # double 0.95299800000000001
	.quad	0x3feeb5e95b78cc9a              # double 0.95970599999999995
	.quad	0x3fd19c1f85d744f6              # double 0.27515400000000001
	.quad	0x3fe724b5568e820e              # double 0.72323099999999996
	.quad	0x3fdab32ce89656ef              # double 0.417186
	.quad	0x3fee24723aafff37              # double 0.94194900000000004
	.quad	0x3f798f1d3ed527e5              # double 0.0062399999999999999
	.quad	0x3fef128e0c9d9d34              # double 0.97101499999999996
	.quad	0x3fde368f08461f9f              # double 0.47208
	.quad	0x3fefd30489d27c39              # double 0.99450899999999997
	.quad	0x3fd9fdbd2fa0d77b              # double 0.40611199999999997
	.quad	0x3fabad18d25edd05              # double 0.054054999999999999
	.quad	0x3fed331a08bfc222              # double 0.91248799999999997
	.quad	0x3fef20ccff21b3af              # double 0.972754
	.quad	0x3fc10e90bc7b45f1              # double 0.13325699999999999
	.quad	0x3feab64388ebcc6c              # double 0.83474899999999996
	.quad	0x3fd521ee675147f1              # double 0.33019599999999999
	.quad	0x3fc44a8c154c985f              # double 0.158525
	.quad	0x3fef7ec56d5cfaad              # double 0.98422500000000001
	.quad	0x3fb5bb384fd2a62b              # double 0.084888000000000005
	.quad	0x3fcf8f1d3ed527e5              # double 0.246555
	.quad	0x3fefe3d5fdcdf698              # double 0.99656199999999994
	.quad	0x3fdce6b3fe9fadb0              # double 0.45158100000000001
	.quad	0x3feca30121682f94              # double 0.89489799999999997
	.quad	0x3fb04577d955714c              # double 0.063560000000000005
	.quad	0x3fb63c64345cfedf              # double 0.086859000000000006
	.quad	0x3febcb8bef8ceb35              # double 0.86859699999999995
	.quad	0x3fedcec84f8f8a4c              # double 0.93149199999999998
	.quad	0x3fd738da3c21187e              # double 0.36284499999999997
	.quad	0x3fc7126e978d4fdf              # double 0.18024999999999999
	.quad	0x3fe2cca4f440af1d              # double 0.58748100000000003
	.quad	0x3fe13122b7baecd0              # double 0.53724799999999995
	.quad	0x3fb8622c45026890              # double 0.095247999999999999
	.quad	0x3fdbb5d462c343b7              # double 0.432973
	.quad	0x3fd0991ff7164c73              # double 0.25934600000000002
	.quad	0x3fe54906034f3fd9              # double 0.66516399999999998
	.quad	0x3fb5c92ddbdb5d89              # double 0.085100999999999996
	.quad	0x3fd9de093532e7b4              # double 0.40417700000000001
	.quad	0x3fe87aca36199781              # double 0.76498900000000003
	.quad	0x3fed0e9707182236              # double 0.90803100000000003
	.quad	0x3fec6262cba732df              # double 0.88700999999999997
	.quad	0x3fd888ebcc6c54bd              # double 0.383357
	.quad	0x3fc6a4e379b77c03              # double 0.17690700000000001
	.quad	0x3fd8250b524399b3              # double 0.37726100000000001
	.quad	0x3fd269835158b828              # double 0.28769
	.quad	0x3fef9185cee17a03              # double 0.986514
	.quad	0x3fcff9e7b80a9de9              # double 0.24981400000000001
	.quad	0x3fe0042fa5093965              # double 0.50051100000000004
	.quad	0x3fefb6c3760bf5d8              # double 0.99106000000000005
	.quad	0x3fece9899bf5946c              # double 0.90350799999999997
	.quad	0x3fd73293d102bc73              # double 0.36246200000000001
	.quad	0x3fe4a71fff79c843              # double 0.645401
	.quad	0x3fd6c66d373affb0              # double 0.35586099999999998
	.quad	0x3fed40a2877ee4e2              # double 0.91413999999999995
	.quad	0x3fca634117f8444a              # double 0.206154
	.quad	0x3fe52697aeddce7d              # double 0.66096100000000002
	.quad	0x3fdfdff3f0fe047d              # double 0.49804399999999999
	.quad	0x3fcf704ff43419e3              # double 0.245615
	.quad	0x3fb390d9d7774aba              # double 0.076428999999999997
	.quad	0x3fe4452a411c2a02              # double 0.63344299999999998
	.quad	0x3fd6f75536933a04              # double 0.358846
	.quad	0x3fda5c63ae2541d9              # double 0.41188900000000001
	.quad	0x3fd1c1fc8f32378b              # double 0.27746500000000002
	.quad	0x3fea7c9795b35b0c              # double 0.82770900000000002
	.quad	0x3fee6c764adff823              # double 0.95074000000000003
	.quad	0x3fdcd5f99c38b04b              # double 0.45056000000000002
	.quad	0x3fe30d801b435265              # double 0.59539799999999998
	.quad	0x3fa29ae4f3343fa3              # double 0.036338000000000002
	.quad	0x3fd81b866e43aa7a              # double 0.37668000000000001
	.quad	0x3feac0980b242071              # double 0.83601000000000003
	.quad	0x3fdc5614df8b1572              # double 0.44275399999999998
	.quad	0x3fd765907d912557              # double 0.36557400000000001
	.quad	0x3fdf7e3d1cc100e7              # double 0.49208000000000002
	.quad	0x3fd4b81f969e3c97              # double 0.32373800000000003
	.quad	0x3fe6d1efb6dca07f              # double 0.71312699999999996
	.quad	0x3fe7da9eb2074ea9              # double 0.74543700000000002
	.quad	0x3feb44588a04d120              # double 0.85209299999999998
	.quad	0x3fea4b7b28954a80              # double 0.82171400000000006
	.quad	0x3fea9496249a133c              # double 0.83063799999999998
	.quad	0x3fe654d61b2a27f2              # double 0.69785600000000003
	.quad	0x3fe9cf2f123c42a6              # double 0.80654099999999995
	.quad	0x3fc400b029281776              # double 0.15627099999999999
	.quad	0x3fedd771001d5c31              # double 0.93254899999999996
	.quad	0x3febe0285ec3dab6              # double 0.87111300000000003
	.quad	0x3fd4f861a60d4563              # double 0.32766000000000001
	.quad	0x3fc10dcfcc5b8dc5              # double 0.13323399999999999
	.quad	0x3fdb0b0292817764              # double 0.42254700000000001
	.quad	0x3fe01ad42c3c9eed              # double 0.50327500000000003
	.quad	0x3fddeabbcb1cc964              # double 0.46745199999999998
	.quad	0x3f5f75104d551d69              # double 0.00192
	.quad	0x3fd2141e9af5ba2c              # double 0.28247800000000001
	.quad	0x3fdb12f901083dbc              # double 0.42303299999999999
	.quad	0x3fe26ce5710880d8              # double 0.575793
	.quad	0x3fb080c73abc9470              # double 0.064464999999999995
	.quad	0x3fefc1919ac79703              # double 0.99237900000000001
	.quad	0x3fa0247021d10b20              # double 0.031528
	.quad	0x3fe8f5bc44bf4cb2              # double 0.77999700000000005
	.quad	0x3fe29efb6dca07f6              # double 0.58190699999999995
	.quad	0x3fdf7dd00f776c48              # double 0.49205399999999999
	.quad	0x3fd8176ddaceee0f              # double 0.37642999999999999
	.quad	0x3fefc560c7c0f451              # double 0.99284399999999994
	.quad	0x3fe8196b76709fa5              # double 0.75310299999999997
	.quad	0x3fd221fafc8b007a              # double 0.28332400000000002
	.quad	0x3fe195d91ab8e8ea              # double 0.54954199999999997
	.quad	0x3fc1dcf0307f23cd              # double 0.13955500000000001
	.quad	0x3fdf579f23465626              # double 0.48972300000000002
	.quad	0x3fd6aa9717df19d6              # double 0.35416199999999998
	.quad	0x3fe2eb9a176ddacf              # double 0.59126000000000001
	.quad	0x3fd6a3ec02f2f987              # double 0.35375499999999999
	.quad	0x3feb98b934699418              # double 0.86239299999999997
	.quad	0x3fbfe0157eed45e9              # double 0.124513
	.quad	0x3fa54ae429e0a41a              # double 0.041586999999999999
	.quad	0x3fefd1c3ac929aa2              # double 0.99435600000000002
	.quad	0x3fe12278d0cc35ce              # double 0.53545799999999999
	.quad	0x3fe1f59ab6d00b46              # double 0.56123100000000004
	.quad	0x3fe254e2b063e07a              # double 0.57286199999999998
	.quad	0x3fb9b8348f53c57a              # double 0.100467
	.quad	0x3fe2708461f9f01c              # double 0.57623500000000005
	.quad	0x3fcec7863beec398              # double 0.24046400000000001
	.quad	0x3fd4293d102bc72e              # double 0.31501699999999999
	.quad	0x3f82c1f42bb66730              # double 0.0091590000000000005
	.quad	0x3fcd9d6f112fd32c              # double 0.23136699999999999
	.quad	0x3fd442c3c9eecbfb              # double 0.316575
	.quad	0x3fba6bc621b7e0ac              # double 0.10320699999999999
	.quad	0x3fdee6bc621b7e0b              # double 0.48283300000000001
	.quad	0x3fee0fbeb9e492bc              # double 0.93942199999999997
	.quad	0x3fe61c065b63d3e5              # double 0.69092100000000001
	.quad	0x3fa523f67f4dbdf9              # double 0.04129
	.quad	0x3fcefae7924af0bf              # double 0.242032
	.quad	0x3fdd14df8b157258              # double 0.454399
	.quad	0x3fccf4be835dedf2              # double 0.226219
	.quad	0x3fec3a6ce358298d              # double 0.88213200000000003
	.quad	0x3fe739192641b329              # double 0.72572000000000003
	.quad	0x3fe0c0b34e768598              # double 0.52352299999999996
	.quad	0x3fefe41b328b6d87              # double 0.996595
	.quad	0x3fd26a832b990afe              # double 0.28775099999999998
	.quad	0x3fe41c886162f167              # double 0.62848300000000001
	.quad	0x3fd91049235f8099              # double 0.39161899999999999
	.quad	0x3fcb33ebbfd71b04              # double 0.21252199999999999
	.quad	0x3fa704ff43419e30              # double 0.04496
	.quad	0x3fd9d6238da3c212              # double 0.40369500000000003
	.quad	0x3feb077681669ced              # double 0.844661
	.quad	0x3fd28b69552e2fbe              # double 0.28975899999999999
	.quad	0x3fdaf8e3ac0c62e5              # double 0.42144100000000001
	.quad	0x3fc3fd694ccab3ee              # double 0.156171
	.quad	0x3fd72367e414e7ef              # double 0.36153600000000002
	.quad	0x3fdacc2938de6ddf              # double 0.418711
	.quad	0x3fe670d1fa333765              # double 0.70127200000000001
	.quad	0x3fe5d015c209246c              # double 0.68165100000000001
	.quad	0x3fc76ea4228997c4              # double 0.183064
	.quad	0x3fe96425aee631f9              # double 0.79347500000000004
	.quad	0x3fe1963dc486ad2e              # double 0.54959000000000002
	.quad	0x3fe60da5daf07bfe              # double 0.68916599999999995
	.quad	0x3fed805e5f30e7ff              # double 0.92191999999999996
	.quad	0x3fe830ec31162281              # double 0.75597199999999998
	.quad	0x3fe3dc0980b24207              # double 0.62060999999999999
	.quad	0x3fd56c15d2d01c0d              # double 0.33472200000000002
	.quad	0x3fca400fba8826ab              # double 0.20508000000000001
	.quad	0x3feb8fcf80dc3372              # double 0.86130499999999999
	.quad	0x3f8d29dc725c3dee              # double 0.014239999999999999
	.quad	0x3fbff8982cb20fb2              # double 0.124887
	.quad	0x3fc45f84cad57bc8              # double 0.159165
	.quad	0x3fbce3369b9d7fd8              # double 0.112842
	.quad	0x3fd1880d801b4352              # double 0.27392899999999998
	.quad	0x3fdda0d349be8ff3              # double 0.46294099999999999
	.quad	0x3fec7e90ff972474              # double 0.89044999999999996
	.quad	0x3fdd550ca1cef241              # double 0.458316
	.quad	0x3fdd39a38fbca106              # double 0.45664300000000002
	.quad	0x3fe87d21ff2e48e9              # double 0.76527500000000004
	.quad	0x3fdb721d53cddd6e              # double 0.42884
	.quad	0x3fecbb1af3a14cec              # double 0.89783999999999997
	.quad	0x3fe9466d373affb0              # double 0.78984699999999997
	.quad	0x3f9be2b4959e6256              # double 0.027231999999999999
	.quad	0x3fe76427c7c5260f              # double 0.73097599999999996
	.quad	0x3fe76dbd72bcb5fe              # double 0.73214599999999996
	.quad	0x3fdfc7e28240b780              # double 0.49657499999999999
	.quad	0x3fb306b37867f0aa              # double 0.074320999999999998
	.quad	0x3fe93ea704bc2763              # double 0.78889799999999999
	.quad	0x3fcaba40d90e23af              # double 0.20880899999999999
	.quad	0x3fc7af6c69b5a640              # double 0.18504100000000001
	.quad	0x3fb074a771c970f8              # double 0.064280000000000004
	.quad	0x3fde2949a5657fb7              # double 0.47127000000000002
	.quad	0x3fd0c23315d701da              # double 0.261853
	.quad	0x3fe012c061847f56              # double 0.50228899999999999
	.quad	0x3fda58f7121ab4b7              # double 0.41167999999999999
	.quad	0x3fc092bc2fc69729              # double 0.12947800000000001
	.quad	0x3fe8538cda6e75ff              # double 0.76019899999999996
	.quad	0x3fee915592d98bf8              # double 0.955241
	.quad	0x3feb782f51266341              # double 0.85842099999999999
	.quad	0x3fe98bc7b45f17be              # double 0.79831300000000005
	.quad	0x3fe3faa4766c6de7              # double 0.62434599999999996
	.quad	0x3fd8a65cf67b1c00              # double 0.385154
	.quad	0x3fe27e4ffc9795b3              # double 0.57791899999999996
	.quad	0x3fee080b673c4f3c              # double 0.93848200000000003
	.quad	0x3fecea077036c9c1              # double 0.90356800000000004
	.quad	0x3fd10296b3354c12              # double 0.26578299999999999
	.quad	0x3fe2d22c881e4713              # double 0.58815600000000001
	.quad	0x3fe56837f7be121f              # double 0.66897200000000001
	.quad	0x3f8dda059a73b42d              # double 0.014576
	.quad	0x3fc52edfe75bc44c              # double 0.165493
	.quad	0x3fef127d45a5fc7e              # double 0.97100699999999995
	.quad	0x3fe3e158750c1b97              # double 0.62125799999999998
	.quad	0x3fd196d0917d6b66              # double 0.27483000000000002
	.quad	0x3fd6235b4edb2f66              # double 0.34590799999999999
	.quad	0x3f9d50ebaade657c              # double 0.028629000000000002
	.quad	0x3fed848e043a2164              # double 0.922431
	.quad	0x3f9892253111f0c3              # double 0.023994999999999999
	.quad	0x3fd9d9b5e95b78cd              # double 0.40391300000000002
	.quad	0x3fec000c9539b888              # double 0.87500599999999995
	.quad	0x3fd044fa05143bf7              # double 0.25420999999999999
	.quad	0x3fd69baa1511dffc              # double 0.35325099999999998
	.quad	0x3fc1a3a08398a655              # double 0.13780600000000001
	.quad	0x3fc4da4484944ed7              # double 0.162911
	.quad	0x3fec29a3d2d87f88              # double 0.88008299999999995
	.quad	0x3fe7a133c1ce6c09              # double 0.73842799999999997
	.quad	0x3fc500e6afcce1c6              # double 0.16409000000000001
	.quad	0x3fddab324851a869              # double 0.46357399999999999
	.quad	0x3fe76cf206423960              # double 0.73204899999999994
	.quad	0x3fdb4ca925fe974a              # double 0.42655399999999999
	.quad	0x3f9157eed45e9186              # double 0.016937000000000001
	.quad	0x3fc6a222d5171e2a              # double 0.17682300000000001
	.quad	0x3fe5cf67b1c0010c              # double 0.68156799999999995
	.quad	0x3fe2cd07852f7f4a              # double 0.58752800000000005
	.quad	0x3fe691d57ff9b563              # double 0.70530199999999998
	.quad	0x3fe99fbc5de9c023              # double 0.80074900000000004
	.quad	0x3fee6df3f961804e              # double 0.95092200000000005
	.quad	0x3fca07fed20296b3              # double 0.20336899999999999
	.quad	0x3fb6116659d12cae              # double 0.086203000000000001
	.quad	0x3fb9d9b1b79d909f              # double 0.100978
	.quad	0x3fd17cc39ffd60e9              # double 0.27323999999999998
	.quad	0x3fc6a6c1a048e044              # double 0.17696400000000001
	.quad	0x3fbc4fc1df3300de              # double 0.110592
	.quad	0x3fe0ba8e71476af9              # double 0.52277300000000004
	.quad	0x3fe5fb3b7521144d              # double 0.68691800000000003
	.quad	0x3fc3144cbe1eb420              # double 0.149057
	.quad	0x3fdb013ec460ed81              # double 0.42195100000000002
	.quad	0x3faf9335d249e450              # double 0.061670000000000003
	.quad	0x3fc2088d6d3b6cbe              # double 0.14088600000000001
	.quad	0x3fe293d96638433d              # double 0.58054799999999995
	.quad	0x3febea209aaa3ad2              # double 0.87233000000000005
	.quad	0x3fe994573a797892              # double 0.79935800000000001
	.quad	0x3fc8b827fa1a0cf2              # double 0.19312000000000001
	.quad	0x3fc49949e8815e39              # double 0.16092799999999999
	.quad	0x3feea37cdcca70d2              # double 0.957457
	.quad	0x3fd1595bbbe878fb              # double 0.27107900000000001
	.quad	0x3fd1b9a5a89b951c              # double 0.27695599999999998
	.quad	0x3fe2c69b5a63f9a5              # double 0.58674400000000004
	.quad	0x3fcd3e24febd09e1              # double 0.228459
	.quad	0x3fe236f7e3d1cc10              # double 0.56920999999999999
	.quad	0x3fdefe004b7f5a53              # double 0.48425299999999999
	.quad	0x3fd895d91ab8e8ea              # double 0.38414599999999999
	.quad	0x3fe9b0f27bb2fec5              # double 0.80284999999999995
	.quad	0x3faff3ade225fa66              # double 0.062406000000000003
	.quad	0x3fd06f9767903212              # double 0.25681100000000001
	.quad	0x3fbeafff36ac6477              # double 0.11987299999999999
	.quad	0x3f856c0d6f544bb2              # double 0.010460000000000001
	.quad	0x3fccb7995ee136e7              # double 0.224353
	.quad	0x3fd706290eed02cd              # double 0.35975099999999999
	.quad	0x3fdca715831f03d1              # double 0.44769799999999998
	.quad	0x3fd56a9c560c7c0f              # double 0.33463199999999999
	.quad	0x3fe3f10880d801b4              # double 0.62317299999999998
	.quad	0x3fd1858793dd97f6              # double 0.27377499999999999
	.quad	0x3fc1670196d8f4f9              # double 0.13595599999999999
	.quad	0x3fd33465625a682b              # double 0.30007299999999998
	.quad	0x3fdc353f7ced9168              # double 0.44074999999999998
	.quad	0x3fd5e353f7ced917              # double 0.34200000000000003
	.quad	0x3feecb6e935b91f7              # double 0.96233299999999999
	.quad	0x3fca8af81626b2f2              # double 0.20736599999999999
	.quad	0x3fe07110e453d20f              # double 0.51380199999999998
	.quad	0x3fe4d7342edbb59e              # double 0.65127000000000002
	.quad	0x3febf83dff3f0fe0              # double 0.87405299999999996
	.quad	0x3fea7a00e27e0efa              # double 0.82739300000000005
	.quad	0x3fb6861e92923e5c              # double 0.087984000000000007
	.quad	0x3fd38650e779207d              # double 0.30507299999999998
	.quad	0x3f9a83f4eca686e8              # double 0.025894
	.quad	0x3fdf4d44567125dd              # double 0.489091
	.quad	0x3fb15df6555c52e7              # double 0.067839999999999998
	.quad	0x3fc9c0096feb4a66              # double 0.20117299999999999
	.quad	0x3fcc82be8bc169c2              # double 0.22273999999999999
	.quad	0x3fde37cdcca70d20              # double 0.47215600000000002
	.quad	0x3fc8bd7f51efb6dd              # double 0.19328300000000001
	.quad	0x3fba2e6ea8544780              # double 0.102271
	.quad	0x3feaaf944241c3f0              # double 0.83393300000000004
	.quad	0x3fcaf98fa376922e              # double 0.21074100000000001
	.quad	0x3fee55992428d435              # double 0.94794900000000004
	.quad	0x3fe59d627bf61aa4              # double 0.67546200000000001
	.quad	0x3fce4020817fc760              # double 0.23633199999999999
	.quad	0x3fe3ddf00abf76a3              # double 0.620842
	.quad	0x3fc82374794ea077              # double 0.188582
	.quad	0x3fe45d0d8cb07d0b              # double 0.63635900000000001
	.quad	0x3fd759c065b63d3e              # double 0.36485299999999998
	.quad	0x3fda1a261bf37b8d              # double 0.40784599999999999
	.quad	0x3fe0a6394face67d              # double 0.52029099999999995
	.quad	0x3fe7f11b60ae9681              # double 0.74818200000000001
	.quad	0x3fea32ce89656ef0              # double 0.81870200000000004
	.quad	0x3fdfa14cec41dd1a              # double 0.49421999999999999
	.quad	0x3fd5297bfa4c61d8              # double 0.33065699999999998
	.quad	0x3fe2f55582129457              # double 0.59244799999999997
	.quad	0x3fd2d96e9bbf0dc7              # double 0.29452099999999998
	.quad	0x3fd963800218def4              # double 0.396698
	.quad	0x3fc145c78a6dacac              # double 0.13494200000000001
	.quad	0x3febb6d22424a277              # double 0.86606700000000003
	.quad	0x3fe223af31b152f4              # double 0.56685600000000003
	.quad	0x3fab8fffbce4217d              # double 0.053832999999999999
	.quad	0x3fe371c10d7be985              # double 0.60763599999999995
	.quad	0x3fcd87df5cf2495e              # double 0.230709
	.quad	0x3fc75d249e44fa05              # double 0.18253
	.quad	0x3fe98bc382a12f90              # double 0.79831099999999999
	.quad	0x3fe13b7739f340d5              # double 0.53850900000000002
	.quad	0x3fec00bed740c415              # double 0.87509099999999995
	.quad	0x3fb0a808c8259e1f              # double 0.065063999999999997
	.quad	0x3fe20010c6f7a0b6              # double 0.56250800000000001
	.quad	0x3fef85caafbc1ace              # double 0.98508200000000001
	.quad	0x3fea10e23af31b15              # double 0.81456099999999998
	.quad	0x3fc3ea57214f0521              # double 0.15558900000000001
	.quad	0x3fee5e19fc2a886a              # double 0.94898700000000002
	.quad	0x3fdceeb702602c91              # double 0.45207000000000003
	.quad	0x3fd9f63c31df761d              # double 0.40565400000000001
	.quad	0x3fe2018c5c9a34ca              # double 0.56268899999999999
	.quad	0x3fecc3e3193f6c27              # double 0.89891200000000004
	.quad	0x3fefe8f29d40ee07              # double 0.99718600000000001
	.quad	0x3fe63dc054ef459e              # double 0.69503800000000004
	.quad	0x3fdc662bae03b3ea              # double 0.44373600000000002
	.quad	0x3fd55dd095af294e              # double 0.33385100000000001
	.quad	0x3fd97060bb2bba99              # double 0.397484
	.quad	0x3fda6d330941c821              # double 0.41291499999999998
	.quad	0x3fd722ee41919ac8              # double 0.36150700000000002
	.quad	0x3fe08b545c78a6db              # double 0.51700800000000002
	.quad	0x3fe0059a73b42cc3              # double 0.50068400000000002
	.quad	0x3f82c27a63736cdf              # double 0.0091599999999999997
	.quad	0x3fe957646ae3a3a9              # double 0.79191800000000001
	.quad	0x3fe420642396073e              # double 0.62895400000000001
	.quad	0x3fe24e4ead0c3d25              # double 0.57205899999999998
	.quad	0x3fd63b81b64e0547              # double 0.34738200000000002
	.quad	0x3fd391ff7164c72a              # double 0.305786
	.quad	0x3fef7b97bb730835              # double 0.98383699999999996
	.quad	0x3fea559d55e6bc62              # double 0.82295099999999999
	.quad	0x3fe98e820e629952              # double 0.79864599999999997
	.quad	0x3fd1bbc6eb0b7c35              # double 0.277086
	.quad	0x3f9f8f041461b6d4              # double 0.030818999999999999
	.quad	0x3fe25c3bd5992429              # double 0.57375900000000002
	.quad	0x3fbb6fc158fb43d9              # double 0.10717400000000001
	.quad	0x3fe5a4f227d028a2              # double 0.67638500000000001
	.quad	0x3fe7163779e9d0ea              # double 0.72146200000000005
	.quad	0x3fe2c64ba94bbe44              # double 0.58670599999999995
	.quad	0x3fe9f3387160956c              # double 0.81093999999999999
	.quad	0x3fc8b18116ebd4d0              # double 0.19291700000000001
	.quad	0x3fc5ce8533b10774              # double 0.17036499999999999
	.quad	0x3fd214d2f5dbb9d0              # double 0.28252100000000002
	.quad	0x3fef16872b020c4a              # double 0.97150000000000003
	.quad	0x3fd9bac2df0d4131              # double 0.40202399999999999
	.quad	0x3fd5e9c4545846e9              # double 0.342393
	.quad	0x3fe8ef6b5d462c34              # double 0.77922599999999997
	.quad	0x3fed77f27fe4bcae              # double 0.92089200000000004
	.quad	0x3fedf2ae07e5a78f              # double 0.93587399999999998
	.quad	0x3fdf0dcb9a9da598              # double 0.48521700000000001
	.quad	0x3f9e5c91d14e3bcd              # double 0.029649999999999999
	.quad	0x3fcae136e71cda2b              # double 0.20999799999999999
	.quad	0x3fef5e8d5410f94d              # double 0.98029200000000005
	.quad	0x3fd39f16b11c6d1e              # double 0.306585
	.quad	0x3fe6e06961c36977              # double 0.71489400000000003
	.quad	0x3fdfd1dcd7060bb3              # double 0.49718400000000001
	.quad	0x3fdd868fd199bb28              # double 0.46133800000000003
	.quad	0x3fe79795b35b0bbf              # double 0.73725399999999996
	.quad	0x3fc7662fdfc19c17              # double 0.182806
	.quad	0x3fe376ff3ade2260              # double 0.60827600000000004
	.quad	0x3fb6d362e9036439              # double 0.089163000000000006
	.quad	0x3fdc84dfce3150db              # double 0.44561000000000001
	.quad	0x3fed15d2d01c0ca6              # double 0.908914
	.quad	0x3fe4bea704bc2763              # double 0.64827299999999999
	.quad	0x3fafd0d0678c0054              # double 0.062140000000000001
	.quad	0x3fe46a619da9c993              # double 0.63798600000000005
	.quad	0x3fe00676a7264a17              # double 0.50078900000000004
	.quad	0x3fe688ca3e7d1351              # double 0.70419799999999999
	.quad	0x3fd08e9b38d60a63              # double 0.25870399999999999
	.quad	0x3fed3526527a2058              # double 0.91273800000000005
	.quad	0x3fde5043e5321e60              # double 0.47364899999999999
	.quad	0x3fca2a5614df8b15              # double 0.20441699999999999
	.quad	0x3fd05ee568a50508              # double 0.25579200000000002
	.quad	0x3fdc5b291b823c86              # double 0.44306400000000001
	.quad	0x3fdcc67168f8e7de              # double 0.44961200000000001
	.quad	0x3fbc9795b35b0bbf              # double 0.111688
	.quad	0x3fed2c1d29dc725c              # double 0.91163499999999997
	.quad	0x3fdea41a261bf37c              # double 0.47876600000000002
	.quad	0x3fe73fe7e1fc08fa              # double 0.72655099999999995
	.quad	0x3fec9949e8815e39              # double 0.89371199999999995
	.quad	0x3fc136ac647778dd              # double 0.13448099999999999
	.quad	0x3febbe4ef0281ba8              # double 0.866981
	.quad	0x3fcd5feda6612839              # double 0.22949
	.quad	0x3fbf98201cd5f99c              # double 0.123415
	.quad	0x3fe133269df97aab              # double 0.53749400000000003
	.quad	0x3fd4835dedf1e083              # double 0.32051800000000003
	.quad	0x3fe134fe79ee02a7              # double 0.53771899999999995
	.quad	0x3fde502eec7c957d              # double 0.47364400000000001
	.quad	0x3fd48c64fdb09a67              # double 0.32106899999999999
	.quad	0x3fe77a9e2bcf91a3              # double 0.73371799999999998
	.quad	0x3fe2563886594af5              # double 0.57302500000000001
	.quad	0x3fed2808c8259e1f              # double 0.91113699999999997
	.quad	0x3fe742e9899bf594              # double 0.72691799999999995
	.quad	0x3fc86c97d8cf398f              # double 0.19081400000000001
	.quad	0x3fe64edf61240746              # double 0.69712799999999997
	.quad	0x3fd041b328b6d86f              # double 0.25401000000000001
	.quad	0x3fcf9fcb0c026cc2              # double 0.24706400000000001
	.quad	0x3fe28ac3a860dcba              # double 0.57943900000000004
	.quad	0x3feb5783dff3f0fe              # double 0.854433
	.quad	0x3fd3df71eafee6fb              # double 0.31051299999999998
	.quad	0x3fc3d26b723ee1bd              # double 0.154859
	.quad	0x3fe10edc3bd59924              # double 0.53306399999999998
	.quad	0x3fe489635610adcd              # double 0.64177099999999998
	.quad	0x3fe583eea209aaa4              # double 0.67235500000000004
	.quad	0x3fda9a38fbca105a              # double 0.415663
	.quad	0x3fce69c66d373b00              # double 0.23760300000000001
	.quad	0x3fdf2c7b890d5a5c              # double 0.48709000000000002
	.quad	0x3fea64217d2849cb              # double 0.82472299999999998
	.quad	0x3fdce09bb6aa4b99              # double 0.45120900000000003
	.quad	0x3fdfcbccf28c79f6              # double 0.49681399999999998
	.quad	0x3fe19b75a74c09c4              # double 0.55022700000000002
	.quad	0x3fe724fa8b4bf8fd              # double 0.72326400000000002
	.quad	0x3fecf2fdb8fde2ef              # double 0.90466199999999997
	.quad	0x3f838bcdfefbf402              # double 0.0095440000000000004
	.quad	0x3fa449ba5e353f7d              # double 0.039625
	.quad	0x3fe137867f0aa21a              # double 0.53802799999999995
	.quad	0x3fd91669ced0b30b              # double 0.39199299999999998
	.quad	0x3fee5e28aa433509              # double 0.948994
	.quad	0x3fe8436113404ea5              # double 0.75822500000000004
	.quad	0x3fb3c1ce6c093d96              # double 0.077175999999999994
	.quad	0x3fcc852b4d8ba40e              # double 0.22281400000000001
	.quad	0x3fb5eedcc20d562a              # double 0.085676000000000002
	.quad	0x3fe50e9d51b4fe7a              # double 0.65803400000000001
	.quad	0x3febe29f9ce8d973              # double 0.87141400000000002
	.quad	0x3fe16aa4b9884c6a              # double 0.54426799999999997
	.quad	0x3fdd5caafbc1acde              # double 0.45878099999999999
	.quad	0x3fe75379fa97e133              # double 0.72894000000000003
	.quad	0x3feb5aceee0f3cb4              # double 0.85483500000000001
	.quad	0x3fc7ad96a6a0125a              # double 0.18498500000000001
	.quad	0x3f80489d27c39368              # double 0.0079509999999999997
	.quad	0x3fdd37154003254e              # double 0.45648699999999998
	.quad	0x3f9dc486ad2dcb14              # double 0.029069999999999999
	.quad	0x3fe81f6a93f290ac              # double 0.75383500000000003
	.quad	0x3fc4291fb3fa6df0              # double 0.15750500000000001
	.quad	0x3fe1fe846a5d6bec              # double 0.56231900000000001
	.quad	0x3fe0fd0d0678c005              # double 0.53088999999999997
	.quad	0x3feab37eb28d8666              # double 0.83441100000000001
	.quad	0x3fd62d8c2a454de8              # double 0.34653
	.quad	0x3fe3771c970f7b9e              # double 0.60829
	.quad	0x3f7871e6cd29131f              # double 0.0059680000000000002
	.quad	0x3fb1a79fec99f1ae              # double 0.068963999999999998
	.quad	0x3fe18ce4ead0c3d2              # double 0.54844899999999996
	.quad	0x3fc1487fcb923a2a              # double 0.13502500000000001
	.quad	0x3fefd61b2a27f1b7              # double 0.99488600000000004
	.quad	0x3fc4c059210385c6              # double 0.16211999999999999
	.quad	0x3fe2fd0f1f57b41c              # double 0.593391
	.quad	0x3fdd85271bcdbbe0              # double 0.461252
	.quad	0x3fbc614163779e9d              # double 0.110859
	.quad	0x3fee70025bfad29a              # double 0.95117300000000005
	.quad	0x3fe19593e5fb71fc              # double 0.54950900000000003
	.quad	0x3fddc9ff92f2b66b              # double 0.46545399999999998
	.quad	0x3fd31d6494d50ebb              # double 0.29866900000000002
	.quad	0x3fbb4a44c7b02d5a              # double 0.106602
	.quad	0x3fd5c3d25247cb71              # double 0.34007700000000002
	.quad	0x3f7ebfa8f7db6e50              # double 0.0075069999999999998
	.quad	0x3fea26138fffbce4              # double 0.81714799999999998
	.quad	0x3fc5df43c7d5ed07              # double 0.170876
	.quad	0x3fe52ac96cc5fbf8              # double 0.66147299999999998
	.quad	0x3fde89df1172ef0b              # double 0.47716500000000001
	.quad	0x3fba490a350d2807              # double 0.102677
	.quad	0x3fe51ab0856e696a              # double 0.65950799999999998
	.quad	0x3fd0fb97bb730835              # double 0.26535599999999998
	.quad	0x3fd580e8c8abd5dc              # double 0.33599299999999999
	.quad	0x3fd0b4528283d35f              # double 0.26100600000000002
	.quad	0x3fd44b33daf8df7a              # double 0.31708999999999998
	.quad	0x3fcc47c30d306a2b              # double 0.22094
	.quad	0x3f9a1ec4e7253da7              # double 0.025507999999999999
	.quad	0x3fc93415b1422ccb              # double 0.19690199999999999
	.quad	0x3fe45438d1d8a548              # double 0.63528099999999998
	.quad	0x3fd0d72bcb5fe543              # double 0.26313300000000001
	.quad	0x3fe9d04a2fcefaa4              # double 0.80667599999999994
	.quad	0x3fe0c2396073de1e              # double 0.52370899999999998
	.quad	0x3fefedc3bd599243              # double 0.99777400000000004
	.quad	0x3fed28cdea033e79              # double 0.91123100000000001
	.quad	0x3fe8b2d4d4024b34              # double 0.77183000000000001
	.quad	0x3fe412b5e529bae4              # double 0.62728399999999995
	.quad	0x3fdef9f87f023e9f              # double 0.48400700000000002
	.quad	0x3fc05f9df548ecd9              # double 0.127918
	.quad	0x3fb52a51e321a2e8              # double 0.082677
	.quad	0x3fe735cbff47735c              # double 0.72531699999999999
	.quad	0x3fbe5892684cf074              # double 0.11853900000000001
	.quad	0x3fc0a46e08f21709              # double 0.13001799999999999
	.quad	0x3fe7690364388ebd              # double 0.73156900000000002
	.quad	0x3fedf5fd47bedb73              # double 0.93627800000000005
	.quad	0x3fe0d2e72da122fb              # double 0.52574500000000002
	.quad	0x3fe8f2de43ed959a              # double 0.77964699999999998
	.quad	0x3fbf6273929ed395              # double 0.122596
	.quad	0x3fe1f9f666234a88              # double 0.56176300000000001
	.quad	0x3fe2319c5a3e39f7              # double 0.56855599999999995
	.quad	0x3fc8a4f440af1cb9              # double 0.19253400000000001
	.quad	0x3fed0b6d86ec17ec              # double 0.90764500000000003
	.quad	0x3fb4185058dde7a7              # double 0.078495999999999996
	.quad	0x3fb5434a01abd1ab              # double 0.083058000000000007
	.quad	0x3fd30c5a8155d5f5              # double 0.29762899999999998
	.quad	0x3fe5576ee73e681b              # double 0.66692300000000004
	.quad	0x3febee84ad794a6f              # double 0.87286600000000003
	.quad	0x3fe23bafd976ff3b              # double 0.56978600000000001
	.quad	0x3fb2ee957470eb25              # double 0.073953000000000005
	.quad	0x3feeefe931876189              # double 0.96678600000000003
	.quad	0x3fe413f077ccc038              # double 0.62743400000000005
	.quad	0x3fe346c11a11233e              # double 0.60238700000000001
	.quad	0x3feb3b85e80bed74              # double 0.85101599999999999
	.quad	0x3fe8ecc814d7279a              # double 0.77890400000000004
	.quad	0x3fcb0d51f81a5871              # double 0.211344
	.quad	0x3fd1aec4a4095f24              # double 0.27629199999999998
	.quad	0x3fe2f342edbb59de              # double 0.59219500000000003
	.quad	0x3fea2157689ca18c              # double 0.81657000000000001
	.quad	0x3feb7850df15a4ad              # double 0.85843700000000001
	.quad	0x3fe22087ca643cc0              # double 0.56647099999999995
	.quad	0x3fe7b5e529bae46d              # double 0.740954
	.quad	0x3fe238088509bf9c              # double 0.56933999999999996
	.quad	0x3fe010eed02cd39e              # double 0.50206700000000004
	.quad	0x3febd81cf7878b7a              # double 0.87013099999999999
	.quad	0x3fed6caab8a5ce5b              # double 0.91951499999999997
	.quad	0x3f8688bda9435ac9              # double 0.011003000000000001
	.quad	0x3fe1e4628027d88c              # double 0.55912899999999999
	.quad	0x3fe0423315d701da              # double 0.508081
	.quad	0x3fb623bff8a8f3aa              # double 0.086483000000000004
	.quad	0x3fd9b506dd69d302              # double 0.40167399999999998
	.quad	0x3fe7c4523f67f4dc              # double 0.74271500000000001
	.quad	0x3fe00a9bcfd4bf0a              # double 0.50129500000000005
	.quad	0x3fcb748a159817b9              # double 0.21449399999999999
	.quad	0x3fd297edc7ef177a              # double 0.29052299999999998
	.quad	0x3fd4abd5dc400757              # double 0.322988
	.quad	0x3fe60a43bb40b34e              # double 0.68875299999999995
	.quad	0x3fe4c32a8c9b8455              # double 0.64882399999999996
	.quad	0x3fe452ce032db1ea              # double 0.63510800000000001
	.quad	0x3feb6f08cc575c07              # double 0.85730399999999995
	.quad	0x3fe1b4a01abd1aa8              # double 0.55329899999999999
	.quad	0x3fbfe80389f83be6              # double 0.12463399999999999
	.quad	0x3fd893682730c671              # double 0.38399699999999998
	.quad	0x3fe2b940fecdd0d9              # double 0.58511400000000002
	.quad	0x3fe5633269df97ab              # double 0.66835900000000004
	.quad	0x3fc8580c308feac4              # double 0.19018699999999999
	.quad	0x3fdb7036c9c0a8d2              # double 0.42872399999999999
	.quad	0x3f598288051c9f73              # double 0.001557
	.quad	0x3fe417bb73083559              # double 0.62789700000000004
	.quad	0x3fed51ac9afe1da8              # double 0.91622000000000003
	.quad	0x3fe137a80cf9e386              # double 0.53804399999999997
	.quad	0x3fec5126634117f8              # double 0.88490599999999997
	.quad	0x3fe161a8262456f7              # double 0.54317099999999996
	.quad	0x3fea07b784662bae              # double 0.813442
	.quad	0x3fee1d3671ac14c6              # double 0.94106599999999996
	.quad	0x3fed0563ed0f6274              # double 0.90690800000000004
	.quad	0x3fd014a4d2b2bfdb              # double 0.25125999999999998
	.quad	0x3fe48af1cb89d6ae              # double 0.641961
	.quad	0x3fcc1d53cddd6e05              # double 0.21964500000000001
	.quad	0x3fe3e5eedcc20d56              # double 0.62181799999999998
	.quad	0x3feb924af0bf1a5d              # double 0.86160800000000004
	.quad	0x3fedd07c84b5dcc6              # double 0.93169999999999997
	.quad	0x3fc13311a543f1c7              # double 0.13437099999999999
	.quad	0x3fe186d2ed783dff              # double 0.54770799999999997
	.quad	0x3fecb606b7aa25d9              # double 0.89722000000000002
	.quad	0x3fe7241a261bf37c              # double 0.72315700000000005
	.quad	0x3fc1797460242d06              # double 0.136519
	.quad	0x3fec9bc98a222d51              # double 0.89401699999999995
	.quad	0x3fec751266341180              # double 0.88929100000000005
	.quad	0x3fd21b1d92b7fe09              # double 0.28290500000000002
	.quad	0x3fcfec99f1ae2da5              # double 0.24940799999999999
	.quad	0x3fec5330941c8217              # double 0.88515500000000003
	.quad	0x3fe5d0a244630660              # double 0.68171800000000005
	.quad	0x3fded102bc72e276              # double 0.48150700000000002
	.quad	0x3fdfa960b6f9fcb1              # double 0.49471300000000001
	.quad	0x3feeb26bf8769ec3              # double 0.95928000000000002
	.quad	0x3fb92018a43bb40b              # double 0.098145999999999997
	.quad	0x3fc74b599aa60914              # double 0.18198700000000001
	.quad	0x3fe0f83382e44b6f              # double 0.53029800000000005
	.quad	0x3fe18754f3775b81              # double 0.54776999999999998
	.quad	0x3fdaca8198f1d3ed              # double 0.41860999999999998
	.quad	0x3fe5616f86a09891              # double 0.66814399999999996
	.quad	0x3fc3882278d0cc36              # double 0.15259200000000001
	.quad	0x3fe0c8d3ae685db7              # double 0.52451499999999995
	.quad	0x3fee6698bb4d4888              # double 0.95002399999999997
	.quad	0x3fe2299fa11a975b              # double 0.567581
	.quad	0x3fef793ff25e56cd              # double 0.98355099999999995
	.quad	0x3fef4cd530489d28              # double 0.97812900000000002
	.quad	0x3facc2938de6ddf0              # double 0.056172
	.quad	0x3fc264fdb09a671f              # double 0.143707
	.quad	0x3fe01feeb2d0a244              # double 0.50389799999999996
	.quad	0x3fda6f3b213e3e29              # double 0.41303899999999999
	.quad	0x3fe2a5d8d79d0a67              # double 0.58274499999999996
	.quad	0x3fc1fc6da4484945              # double 0.140516
	.quad	0x3fe52d57bc7f77af              # double 0.66178499999999996
	.quad	0x3fd2bd9cae21101b              # double 0.292823
	.quad	0x3fd854046412cf10              # double 0.38012800000000002
	.quad	0x3fec93ea2d2fe3f3              # double 0.89305599999999996
	.quad	0x3fee018a43bb40b3              # double 0.93768799999999997
	.quad	0x3fe86440f2389720              # double 0.76223799999999997
	.quad	0x3fd3a647fdc5931d              # double 0.30702400000000002
	.quad	0x3fe03cafb3b75211              # double 0.50740799999999997
	.quad	0x3fe5a29a5ebb773a              # double 0.67609900000000001
	.quad	0x3fe3e4ead0c3d252              # double 0.62169399999999997
	.quad	0x3fed5e4a38327675              # double 0.91776000000000002
	.quad	0x3fcb310129cbab65              # double 0.21243300000000001
	.quad	0x3fe5c9a77e5eaab0              # double 0.68086599999999997
	.quad	0x3fec954a7f8012e0              # double 0.89322400000000001
	.quad	0x3fda286b59146e4c              # double 0.408717
	.quad	0x3feb7c7c5260f5e4              # double 0.85894599999999998
	.quad	0x3fdc811f4f50a02c              # double 0.44538100000000003
	.quad	0x3fdd8a47ecfe9b7c              # double 0.461565
	.quad	0x3f9fc9bc77143394              # double 0.031043000000000001
	.quad	0x3fe9f9702e6644d8              # double 0.81169899999999995
	.quad	0x3fec1d7774aba387              # double 0.87859699999999996
	.quad	0x3fb3d8383ad9f0a2              # double 0.077518000000000003
	.quad	0x3fe3a0f0a5efe932              # double 0.61339600000000005
	.quad	0x3f8af640639d5e4a              # double 0.013165
	.quad	0x3fd909e98dcdb37d              # double 0.39123000000000002
	.quad	0x3fe92250f840181e              # double 0.785439
	.quad	0x3fcb8f8a4c1ebc84              # double 0.21531800000000001
	.quad	0x3feca91b823c85c2              # double 0.89564299999999997
	.quad	0x3febd5fdcdf69878              # double 0.86987199999999998
	.quad	0x3fd0af7d30ad46f6              # double 0.26071100000000003
	.quad	0x3fa22856605ee569              # double 0.035464000000000002
	.quad	0x3fca7d6733ebbfd7              # double 0.206952
	.quad	0x3fccb18116ebd4d0              # double 0.22416700000000001
	.quad	0x3feedb5525cc4263              # double 0.96427399999999996
	.quad	0x3fe939192641b329              # double 0.78822000000000003
	.quad	0x3fe553d859c8c932              # double 0.66648499999999999
	.quad	0x3fef52b6f19934f0              # double 0.97884700000000002
	.quad	0x3f9430f49491f2dc              # double 0.019717999999999999
	.quad	0x3fc1a543f1c75819              # double 0.13785600000000001
	.quad	0x3fec1dba908a265f              # double 0.87862899999999999
	.quad	0x3fe63343fa2ad3e9              # double 0.69375799999999999
	.quad	0x3fec150331e3a7db              # double 0.87756500000000004
	.quad	0x3fe3c647778dd617              # double 0.617954
	.quad	0x3fc87abfb9bed30f              # double 0.191246
	.quad	0x3fe7ccdfaca36199              # double 0.74375899999999995
	.quad	0x3fe5e5710880d802              # double 0.68425800000000003
	.quad	0x3fa367e414e7ee91              # double 0.037901999999999998
	.quad	0x3fc1db4cc2507208              # double 0.13950499999999999
	.quad	0x3fd7d801b4352652              # double 0.37255899999999997
	.quad	0x3fef637bd05af6c7              # double 0.98089400000000004
	.quad	0x3fef1afc04c8bc9d              # double 0.97204400000000001
	.quad	0x3fedf7a4e7ab7564              # double 0.93647999999999997
	.quad	0x3fa58b60f1b25f63              # double 0.042078999999999998
	.quad	0x3fc4f4f93bc0a06f              # double 0.16372600000000001
	.quad	0x3fd3f2ba9d1f6018              # double 0.31169000000000002
	.quad	0x3fe8ab4d8ba40d91              # double 0.77091100000000001
	.quad	0x3fc193e5fb71fbc6              # double 0.137326
	.quad	0x3fccc918e325d4a6              # double 0.224887
	.quad	0x3fd193d96638433d              # double 0.27464899999999998
	.quad	0x3fc00e27e0ef9980              # double 0.12543199999999999
	.quad	0x3fd432830a0b1bbd              # double 0.315583
	.quad	0x3fdf53c148344c38              # double 0.48948700000000001
	.quad	0x3fde96073de1e2df              # double 0.47790700000000003
	.quad	0x3fca9d16fc9bc771              # double 0.20791899999999999
	.quad	0x3fdba137f38c5437              # double 0.43171500000000002
	.quad	0x3feb54f7a919695e              # double 0.85412200000000005
	.quad	0x3fed0ed3d859c8c9              # double 0.90805999999999998
	.quad	0x3fec990d173fb7a6              # double 0.89368300000000001
	.quad	0x3fd30aed99cbee80              # double 0.29754199999999997
	.quad	0x3fe3f2d1aeb3dd12              # double 0.62339100000000003
	.quad	0x3fc8711d798d8a98              # double 0.19095200000000001
	.quad	0x3f96a2f48c2e770c              # double 0.022106000000000001
	.quad	0x3fd60214ad362e90              # double 0.34387699999999999
	.quad	0x3fdefdcdf6987831              # double 0.48424099999999998
	.quad	0x3fdc94af4f0d844d              # double 0.446575
	.quad	0x3f92263d816aceab              # double 0.017724
	.quad	0x3fe3d6366d7a56de              # double 0.61989899999999998
	.quad	0x3fdb3f811f4f50a0              # double 0.42575099999999999
	.quad	0x3fd5c5fbf83382e4              # double 0.34020899999999998
	.quad	0x3fe45d50a88effe3              # double 0.63639100000000004
	.quad	0x3f6b691212513b5c              # double 0.003346
	.quad	0x3fccdb2f661f18ca              # double 0.225439
	.quad	0x3fee7d84901d1915              # double 0.95282199999999995
	.quad	0x3fa489d27c393682              # double 0.040113999999999997
	.quad	0x3fe4efbb0e5e6794              # double 0.65426399999999996
	.quad	0x3fab384fd2a62aa2              # double 0.053164000000000003
	.quad	0x3fce1be2b4959e62              # double 0.23522599999999999
	.quad	0x3fd8e557de0d66f1              # double 0.38899800000000001
	.quad	0x3fab59791819d239              # double 0.053416999999999999
	.quad	0x3fb6e3e6c4c5974e              # double 0.089414999999999994
	.quad	0x3fdc565c2d278078              # double 0.44277100000000003
	.quad	0x3fefa7fe4bcad9ae              # double 0.98925700000000005
	.quad	0x3fe72e9468017119              # double 0.72443599999999997
	.quad	0x3fcd7acc4ef88b97              # double 0.23030999999999999
	.quad	0x3fcb6145953586cb              # double 0.21390600000000001
	.quad	0x3fd07164c729f59d              # double 0.25692100000000001
	.quad	0x3f9bd2b6f19934f0              # double 0.027171000000000001
	.quad	0x3fe1c567125dd096              # double 0.55534700000000004
	.quad	0x3fcecf312b1b36bd              # double 0.240698
	.quad	0x3fe4e3cfb3311a54              # double 0.65280899999999997
	.quad	0x3fef32b3461309c8              # double 0.974939
	.quad	0x3fd4ba732df505d1              # double 0.32388
	.quad	0x3fc71ab8e8ea39c5              # double 0.180503
	.quad	0x3fe1d69f4906034f              # double 0.55744899999999997
	.quad	0x3fd73b2dd377e1b9              # double 0.362987
	.quad	0x3fe98d38cda6e760              # double 0.798489
	.quad	0x3fc8c5fbf83382e4              # double 0.19354199999999999
	.quad	0x3fd2a012599ed7c7              # double 0.29102
	.quad	0x3fd166be7afa7222              # double 0.27189600000000003
	.quad	0x3fbd86a8fc0d2c38              # double 0.11533599999999999
	.quad	0x3fcf886df82b1f68              # double 0.24635099999999999
	.quad	0x3fea9dece5710881              # double 0.83177800000000002
	.quad	0x3fd2c5d206c8711d              # double 0.29332399999999997
	.quad	0x3fdee4a7b4e54f7b              # double 0.48270600000000002
	.quad	0x3febbf4666ec9e23              # double 0.86709899999999995
	.quad	0x3fe603b1d0c80410              # double 0.68795099999999998
	.quad	0x3feb03afb7e90ff9              # double 0.84419999999999995
	.quad	0x3fcbb5286b59146e              # double 0.21646599999999999
	.quad	0x3fce5269595feda6              # double 0.23688999999999999
	.quad	0x3fddc7fbacb42891              # double 0.46533099999999999
	.quad	0x3fbfda1ec4e7253e              # double 0.124422
	.quad	0x3fd30520d130df9c              # double 0.29718800000000001
	.quad	0x3fe402f72b452828              # double 0.62536199999999997
	.quad	0x3fded9a95421c044              # double 0.48203499999999999
	.quad	0x3fd3a31a4bdba0a5              # double 0.30682999999999999
	.quad	0x3fca176577531db4              # double 0.20383899999999999
	.quad	0x3fda32d6ece13f4b              # double 0.40935300000000002
	.quad	0x3fe62a411c2a0232              # double 0.692658
	.quad	0x3feb89b0ee49f517              # double 0.86055800000000005
	.quad	0x3fcdea35935fc3b5              # double 0.23371
	.quad	0x3fbd041cc532a498              # double 0.113344
	.quad	0x3fc74784230fcf81              # double 0.18187
	.quad	0x3fa9cb46bacf7447              # double 0.050379
	.quad	0x3fe0e65bea0ba1f5              # double 0.52812000000000003
	.quad	0x3fd14577d955714c              # double 0.26986500000000002
	.quad	0x3fdbca7935760392              # double 0.43423299999999998
	.quad	0x3fe7ac36544fe36d              # double 0.73977199999999999
	.quad	0x3fd7d60e94ee392e              # double 0.37243999999999999
	.quad	0x3f9c050bd87b56b8              # double 0.027362999999999998
	.quad	0x3fd08ede54b48d3b              # double 0.25872000000000001
	.quad	0x3feb05510d38cda7              # double 0.84439900000000001
	.quad	0x3fde59791819d239              # double 0.47421099999999999
	.quad	0x3fefc308feac42ea              # double 0.99255800000000005
	.quad	0x3fd1dda059a73b43              # double 0.27915200000000001
	.quad	0x3f9d594f26aec072              # double 0.028660999999999999
	.quad	0x3fec3c297bfa4c62              # double 0.88234400000000002
	.quad	0x3fd7b54195cc857f              # double 0.37043799999999999
	.quad	0x3fb3f0fe047d3d43              # double 0.077896000000000007
	.quad	0x3fd887c200c0f020              # double 0.38328600000000002
	.quad	0x3fd1ac4f7ec3547e              # double 0.276142
	.quad	0x3fe559ba1b1960fa              # double 0.66720299999999999
	.quad	0x3feba7ed84d338f8              # double 0.86424900000000004
	.quad	0x3fc77121ab4b72c5              # double 0.18314
	.quad	0x3fea1e94ab1d4f9c              # double 0.81623299999999998
	.quad	0x3fd8470a808c825a              # double 0.37933600000000001
	.quad	0x3f861b2a27f1b691              # double 0.010794
	.quad	0x3fd4e4cd74927914              # double 0.32646500000000001
	.quad	0x3fd51df761cbccf3              # double 0.32995400000000003
	.quad	0x3fde60e0eb67c287              # double 0.474663
	.quad	0x3fc2319c5a3e39f7              # double 0.14213899999999999
	.quad	0x3fe4edc7ef177a70              # double 0.654026
	.quad	0x3fe972b239a38fbd              # double 0.79525100000000004
	.quad	0x3fe996440f238972              # double 0.799593
	.quad	0x3fe71ac79702e664              # double 0.72201899999999997
	.quad	0x3fd86277c45cbbc3              # double 0.38101000000000002
	.quad	0x3fb9320d9945b6c3              # double 0.098419999999999994
	.quad	0x3feb0427418d690a              # double 0.84425700000000004
	.quad	0x3fcacb4aec8d5c74              # double 0.20932899999999999
	.quad	0x3fde7689ca18bd66              # double 0.47598499999999999
	.quad	0x3fc59c1f85d744f6              # double 0.168827
	.quad	0x3fb5753a3ec02f30              # double 0.083820000000000005
	.quad	0x3fd9fb762d83c6c9              # double 0.40597299999999997
	.quad	0x3fe3e1b089a02752              # double 0.62129999999999996
	.quad	0x3fdc72cd7cf5f4e4              # double 0.44450699999999999
	.quad	0x3fe1d905c0336156              # double 0.55774199999999996
	.quad	0x3feba86d71f36263              # double 0.86431000000000002
	.quad	0x3fce8f6cefed6345              # double 0.23875199999999999
	.quad	0x3fd3feb074a771c9              # double 0.31241999999999998
	.quad	0x3fc1369b9d7fd827              # double 0.13447899999999999
	.quad	0x3fea1d3458cd20b0              # double 0.81606500000000004
	.quad	0x3fe0996fa82e87d3              # double 0.51873000000000002
	.quad	0x3fe7be3c105186db              # double 0.74197199999999996
	.quad	0x3feef45bf26f1dc5              # double 0.96732899999999999
	.quad	0x3fd96eac8605681f              # double 0.39738000000000001
	.quad	0x3fd7b1b36bd2b6f2              # double 0.37022100000000002
	.quad	0x3fe8061e92923e5c              # double 0.75074700000000005
	.quad	0x3febfcf80dc33722              # double 0.87463000000000002
	.quad	0x3fbf89c5e6ff7dfa              # double 0.123196
	.quad	0x3fd4eb18116ebd4d              # double 0.326849
	.quad	0x3fde1205bc01a36e              # double 0.46984999999999999
	.quad	0x3fc05ff1d81f1066              # double 0.12792799999999999
	.quad	0x3fd78c9fb6134ce4              # double 0.36795800000000001
	.quad	0x3fd0c011d3671ac1              # double 0.26172299999999998
	.quad	0x3fed13a92a305532              # double 0.90864999999999996
	.quad	0x3fe959578a2a90cd              # double 0.79215599999999997
	.quad	0x3fd4e111276fb092              # double 0.326237
	.quad	0x3fed24723aafff37              # double 0.91069900000000004
	.quad	0x3fbba20578e5c4eb              # double 0.107941
	.quad	0x3feccefcbd556085              # double 0.90026700000000004
	.quad	0x3fd3c41dd1a21ea3              # double 0.30884499999999998
	.quad	0x3fe59633482be8bc              # double 0.67458499999999999
	.quad	0x3fe9584b1ab0856e              # double 0.79202799999999995
	.quad	0x3fe10b28522ea0fd              # double 0.53261199999999997
	.quad	0x3fe3bacb4289118c              # double 0.61655199999999999
	.quad	0x3f51409a24031487              # double 0.0010529999999999999
	.quad	0x3fd51a500d5e8d54              # double 0.329731
	.quad	0x3fe9f0d413122b7c              # double 0.81064800000000003
	.quad	0x3fee33d8e0008638              # double 0.94382900000000002
	.quad	0x3fd21d68c692f6e8              # double 0.28304499999999999
	.quad	0x3fc63afb7e90ff97              # double 0.173675
	.quad	0x3fe998676a7264a1              # double 0.79985399999999995
	.quad	0x3fc4bb6ed677707a              # double 0.16197
	.quad	0x3fcb7785729b280f              # double 0.214585
	.quad	0x3feb8348f53c579f              # double 0.85977599999999998
	.quad	0x3fe73af965b20b80              # double 0.72594899999999996
	.quad	0x3fe3b16e37154003              # double 0.61540899999999998
	.quad	0x3f734267839cd812              # double 0.0047019999999999996
	.quad	0x3fe83fcc9ea9a3d3              # double 0.75778800000000002
	.quad	0x3fa6f156191148fe              # double 0.044810000000000003
	.quad	0x3fecec9c0a8d21bc              # double 0.90388299999999999
	.quad	0x3fe8a00c0f01fb83              # double 0.76953700000000003
	.quad	0x3fe6aa044ae85b9f              # double 0.70825400000000005
	.quad	0x3fd8841ede1198af              # double 0.38306400000000002
	.quad	0x3fe74855da272863              # double 0.72758
	.quad	0x3fd46ab14ec204f3              # double 0.31901200000000002
	.quad	0x3fee50b955f7835a              # double 0.94735400000000003
	.quad	0x3fe424638c975297              # double 0.62944199999999995
	.quad	0x3fd7826edaa92e62              # double 0.367336
	.quad	0x3fd6a400fba8826b              # double 0.35376000000000002
	.quad	0x3fe24cd530489d28              # double 0.57187900000000003
	.quad	0x3fd10fd7e45803cd              # double 0.266592
	.quad	0x3fd568ec52a411c3              # double 0.33452900000000002
	.quad	0x3fed7023e9ea1405              # double 0.91993899999999995
	.quad	0x3fc8c0c62e4d1a65              # double 0.193383
	.quad	0x3fe45629d8409e56              # double 0.63551800000000003
	.quad	0x3fe606df82b1f688              # double 0.68833900000000003
	.quad	0x3fe63354c122749f              # double 0.69376599999999999
	.quad	0x3fbfba3443d46b27              # double 0.123935
	.quad	0x3fbe5e892253111f              # double 0.11863
	.quad	0x3fccc521dda059a7              # double 0.22476599999999999
	.quad	0x3fd3c8d9f90539fc              # double 0.30913400000000002
	.quad	0x3fc4a4873365881a              # double 0.161271
	.quad	0x3fe44dec1c1d6cf8              # double 0.63451199999999996
	.quad	0x3fb4b5fe542e557e              # double 0.080902000000000001
	.quad	0x3fdcb024f6598e11              # double 0.44825100000000001
	.quad	0x3fe70984e3ffef39              # double 0.719912
	.quad	0x3fe8b0014f8b588e              # double 0.77148499999999998
	.quad	0x3fdbd1244a6223e2              # double 0.43464000000000003
	.quad	0x3fe07c19c17225b7              # double 0.51514899999999997
	.quad	0x3fde1cffeb074a77              # double 0.47051999999999999
	.quad	0x3fd1587d6f976790              # double 0.27102599999999999
	.quad	0x3fd7fa7221858bc6              # double 0.37466100000000002
	.quad	0x3fc72146a1a500d6              # double 0.180703
	.quad	0x3fefffe2a3cea6c2              # double 0.99998600000000004
	.quad	0x3fe9ba42f1ed17c6              # double 0.80398700000000001
	.quad	0x3fd5123810e88590              # double 0.329237
	.quad	0x3fa82eec7c957cd4              # double 0.047232999999999997
	.quad	0x3fb871e6cd29131f              # double 0.095488000000000003
	.quad	0x3fd5586ca89fc6da              # double 0.33352199999999999
	.quad	0x3f77d8cf398e9707              # double 0.0058219999999999999
	.quad	0x3fe0b461309c7ffe              # double 0.52201900000000001
	.quad	0x3fed33f20a73f749              # double 0.91259100000000004
	.quad	0x3fc58a32f4491299              # double 0.16828000000000001
	.quad	0x3fe880b88ca3e7d1              # double 0.76571299999999998
	.quad	0x3fb7c621b7e0ac7e              # double 0.092867000000000005
	.quad	0x3fe09eecbfb15b57              # double 0.51939999999999997
	.quad	0x3fe8504e618ce2d2              # double 0.75980300000000001
	.quad	0x3fd9f587d6f97679              # double 0.405611
	.quad	0x3fe72cecc814d728              # double 0.72423400000000004
	.quad	0x3fc299fa11a975b0              # double 0.14532400000000001
	.quad	0x3fe5ca6ca03c4b0a              # double 0.68096000000000001
	.quad	0x3fdb78dd616f86a1              # double 0.42925200000000002
	.quad	0x3fd8825e13b18dac              # double 0.38295699999999999
	.quad	0x3fe2b836a832b991              # double 0.58498700000000003
	.quad	0x3fe4ca72ead9274e              # double 0.64971299999999998
	.quad	0x3fd7b0ee49f51698              # double 0.370174
	.quad	0x3fb9ceaf251c193b              # double 0.10081
	.quad	0x3fd39a7c17a89332              # double 0.30630400000000002
	.quad	0x3fe1403ff69014b6              # double 0.53909300000000004
	.quad	0x3fb2d6238da3c212              # double 0.073580000000000007
	.quad	0x3fec5755bccaf70a              # double 0.88566100000000003
	.quad	0x3fd2c8a7a41e57da              # double 0.29349700000000001
	.quad	0x3fe573647baa9b4a              # double 0.67033600000000004
	.quad	0x3fe1eeaa6d267408              # double 0.56038399999999999
	.quad	0x3fe83acb4289118c              # double 0.75717699999999998
	.quad	0x3fe0f2c0e7bc3c5c              # double 0.52963300000000002
	.quad	0x3fa643ed959a3098              # double 0.043486999999999998
	.quad	0x3fde6d8f4f93bc0a              # double 0.475437
	.quad	0x3fdb92c8c5004fb1              # double 0.43083399999999999
	.quad	0x3fe5a326e115592e              # double 0.67616600000000004
	.quad	0x3fdce4f3343fa2ad              # double 0.45147399999999999
	.quad	0x3fe65d69d30270f4              # double 0.69890300000000005
	.quad	0x3fb718b934699418              # double 0.090220999999999996
	.quad	0x3fae4cb5bb384fd3              # double 0.059179000000000002
	.quad	0x3fea4cab3edd8b61              # double 0.82185900000000001
	.quad	0x3fd3927d45a5fc7e              # double 0.30581599999999998
	.quad	0x3fef13b9f127f5e8              # double 0.97115799999999996
	.quad	0x3fe67f92f2b66b61              # double 0.70307299999999995
	.quad	0x3faf6ea4228997c4              # double 0.061391000000000001
	.quad	0x3fbef9ca5bd944aa              # double 0.120999
	.quad	0x3fce7d1bb4916ca4              # double 0.23819299999999999
	.quad	0x3fe4e1cffeb074a7              # double 0.65256499999999995
	.quad	0x3fef5831f03d145e              # double 0.97951600000000005
	.quad	0x3fd77c06e19b90eb              # double 0.36694500000000002
	.quad	0x3fe4fba01eeed890              # double 0.65571599999999997
	.quad	0x3fed6d8d36b4c7f3              # double 0.91962299999999997
	.quad	0x3fef922fad6cb535              # double 0.98659499999999999
	.quad	0x3fc8494d50ebaade              # double 0.18973699999999999
	.quad	0x3fdf0f062d40aaeb              # double 0.485292
	.quad	0x3fed6338b47c73ef              # double 0.91836200000000001
	.quad	0x3fef9a38fbca105a              # double 0.98757600000000001
	.quad	0x3fdae310dbf0563f              # double 0.42010900000000001
	.quad	0x3fd202ababead4f6              # double 0.28141300000000002
	.quad	0x3fed08094e5d5b25              # double 0.90723100000000001
	.quad	0x3fe7a235b4edb2f6              # double 0.73855099999999996
	.quad	0x3fa1693c03bc4d23              # double 0.034006000000000002
	.quad	0x3fe5ca8198f1d3ed              # double 0.68096999999999996
	.quad	0x3fd45c4eb56fb8f5              # double 0.31813399999999997
	.quad	0x3fae91a75cd0bb6f              # double 0.059705000000000001
	.quad	0x3fe1a0ad8a11665a              # double 0.55086400000000002
	.quad	0x3fda71b8aa00192a              # double 0.41319099999999997
	.quad	0x3fdc0c564f97edc8              # double 0.438253
	.quad	0x3fedba0620ab7132              # double 0.92895799999999995
	.quad	0x3fdf8c436fc158fb              # double 0.49293599999999999
	.quad	0x3feb269595feda66              # double 0.84845999999999999
	.quad	0x3fe0580a17b0f6ad              # double 0.51074699999999995
	.quad	0x3fd9307af20ea5b5              # double 0.39358399999999999
	.quad	0x3fe2f583a53b8e4c              # double 0.59247000000000005
	.quad	0x3fb594af4f0d844d              # double 0.0843
	.quad	0x3fe4d0092ccf6be3              # double 0.65039499999999995
	.quad	0x3fd7bb341e14bdfd              # double 0.37080099999999999
	.quad	0x3fd7ba55d1c3ac93              # double 0.37074800000000002
	.quad	0x3fce954a7f8012e0              # double 0.238931
	.quad	0x3fe47585be1a8262              # double 0.63934599999999997
	.quad	0x3feef8e9f6a93f29              # double 0.96788499999999999
	.quad	0x3fe326aa8eb46349              # double 0.59846999999999995
	.quad	0x3feee6d58c8eef1c              # double 0.96567800000000003
	.quad	0x3fda3fa6defc7a3a              # double 0.41013500000000003
	.quad	0x3fb7ef8ceb356da0              # double 0.093498999999999999
	.quad	0x3fe0dc768dfbd6a6              # double 0.52691200000000005
	.quad	0x3fdbc0a8d21bc127              # double 0.43363400000000002
	.quad	0x3fed98655193708b              # double 0.92485300000000004
	.quad	0x3fe863e29307af21              # double 0.76219300000000001
	.quad	0x3fe96a854477ff15              # double 0.79425299999999999
	.quad	0x3feb78a2a90cd424              # double 0.85847600000000001
	.quad	0x3fe9d1244a6223e2              # double 0.80678000000000005
	.quad	0x3fd3c2b0ea18372e              # double 0.30875799999999998
	.quad	0x3fcfb4fe79ee02a7              # double 0.24771099999999999
	.quad	0x3fb220ab71327243              # double 0.070810999999999999
	.quad	0x3fe2bd89ce4a7b4e              # double 0.58563699999999996
	.quad	0x3fe5cff0025bfad3              # double 0.68163300000000004
	.quad	0x3fc881d3aa369fcf              # double 0.19146199999999999
	.quad	0x3fe25f99c38b04ab              # double 0.57416999999999996
	.quad	0x3fc0b8bef8ceb357              # double 0.130638
	.quad	0x3fef3ad3a604e1e7              # double 0.97593099999999999
	.quad	0x3fec68ee6b8305d9              # double 0.88780899999999996
	.quad	0x3fe036f19934efcc              # double 0.50670700000000002
	.quad	0x3fbf506dd69d3027              # double 0.122321
	.quad	0x3fc7a543f1c75819              # double 0.18473100000000001
	.quad	0x3fed6f99806f2629              # double 0.91987300000000005
	.quad	0x3fd5abd1aa821f2a              # double 0.33861200000000002
	.quad	0x3fda31b9b66f9336              # double 0.40928500000000001
	.quad	0x3fe222fad6cb5350              # double 0.56677
	.quad	0x3fd13476295208e1              # double 0.26882699999999998
	.quad	0x3fee00713f077ccc              # double 0.93755399999999999
	.quad	0x3fb3e4bcad9ad85e              # double 0.077709
	.quad	0x3feb627179bfdf7f              # double 0.85576700000000006
	.quad	0x3fed958969a0ad8a              # double 0.92450399999999999
	.quad	0x3feb019f3c70c997              # double 0.84394800000000003
	.quad	0x3fe80cf1800a7c5b              # double 0.75158000000000003
	.quad	0x3feb56b228dc981c              # double 0.854333
	.quad	0x3f7d3aa369fcf3dc              # double 0.007136
	.quad	0x3fe46d783dff3f10              # double 0.63836300000000001
	.quad	0x3f983e425aee6320              # double 0.023675000000000002
	.quad	0x3fc15ec80c73abc9              # double 0.13570499999999999
	.quad	0x3fd6233df2a9d628              # double 0.34590100000000001
	.quad	0x3fed6c1e364bec68              # double 0.91944800000000004
	.quad	0x3fe0f544bb1af3a1              # double 0.52993999999999997
	.quad	0x3fb9c2a023209678              # double 0.10062599999999999
	.quad	0x3fe16527a20578e6              # double 0.54359800000000003
	.quad	0x3fe63a0a52695960              # double 0.69458500000000001
	.quad	0x3fde0ffda4052d66              # double 0.46972599999999998
	.quad	0x3fc98b9346994185              # double 0.199572
	.quad	0x3fe89a027525460b              # double 0.76880000000000004
	.quad	0x3fe9e7f6f4be835e              # double 0.80956600000000001
	.quad	0x3feb37d63022dd7b              # double 0.85056600000000004
	.quad	0x3fb323aafff36ac6              # double 0.074762999999999996
	.quad	0x3fe4ad948dc11e43              # double 0.64618900000000001
	.quad	0x3fe47e1fc08fa7a8              # double 0.64039599999999997
	.quad	0x3fea17d49d7ba66a              # double 0.81540900000000005
	.quad	0x3fe0e7cf1c3265ae              # double 0.52829700000000002
	.quad	0x3fea2c6ac215b9a6              # double 0.81792200000000004
	.quad	0x3fd31b4784230fd0              # double 0.29854000000000003
	.quad	0x3fe7ce4ead0c3d25              # double 0.74393399999999998
	.quad	0x3fdaea4228997c3d              # double 0.42054799999999998
	.quad	0x3fc6d01c0ca600b0              # double 0.178226
	.quad	0x3fe12d6ece13f4aa              # double 0.53679600000000005
	.quad	0x3fea5093964a59c0              # double 0.82233599999999996
	.quad	0x3fc457d9dba908a2              # double 0.15893099999999999
	.quad	0x3fe3bae2541d8e86              # double 0.61656299999999997
	.quad	0x3fe1427e9531550d              # double 0.53936700000000004
	.quad	0x3fe273e468cac4b5              # double 0.57664700000000002
	.quad	0x3fe317ca2120e1f8              # double 0.59665400000000002
	.quad	0x3fd03eab367a0f91              # double 0.25382500000000002
	.quad	0x3fcfe74299d883ba              # double 0.24924499999999999
	.quad	0x3fe937ac3eb7cbb4              # double 0.78804600000000002
	.quad	0x3feae351deefe500              # double 0.84024900000000002
	.quad	0x3fe9c226809d4952              # double 0.80495000000000005
	.quad	0x3fde7225b749adc9              # double 0.475717
	.quad	0x3f871da37ef5a965              # double 0.011287
	.quad	0x3fedce3bcd35a858              # double 0.93142499999999995
	.quad	0x3fd1d1244a6223e2              # double 0.27839000000000003
	.quad	0x3feadd82fd75e204              # double 0.83953999999999995
	.quad	0x3fec7f151e75360d              # double 0.890513
	.quad	0x3fee2131a8ef77f2              # double 0.94155199999999994
	.quad	0x3fe6937d1fe64f55              # double 0.70550400000000002
	.quad	0x3fc9ec7863beec39              # double 0.20252899999999999
	.quad	0x3fefeb3bb83cf2d0              # double 0.99746500000000005
	.quad	0x3fcbe8ff327aa68f              # double 0.21804799999999999
	.quad	0x3fd74b124d099e0e              # double 0.36395699999999997
	.quad	0x3fb4dfaca3619978              # double 0.081537999999999999
	.quad	0x3fe4fdb6e503fb37              # double 0.65597099999999997
	.quad	0x3feab8b69552e2fc              # double 0.83504800000000001
	.quad	0x3fe1fa743a647fdc              # double 0.56182299999999996
	.quad	0x3fce35e74299d884              # double 0.23602000000000001
	.quad	0x3f9bccf28c79f666              # double 0.027149
	.quad	0x3fe6b9c94f69ca9f              # double 0.710179
	.quad	0x3fb4c32a8c9b8455              # double 0.081102999999999995
	.quad	0x3fe4081c2e33eff2              # double 0.62599000000000005
	.quad	0x3fdc383ad9f0a1be              # double 0.44093199999999999
	.quad	0x3fe616249a133c1d              # double 0.69020300000000001
	.quad	0x3fe3beee52589268              # double 0.61705699999999997
	.quad	0x3fd4f5232d2bb235              # double 0.32746199999999998
	.quad	0x3fdde920c069e7fb              # double 0.46735399999999999
	.quad	0x3fc2d5ae1cde5d18              # double 0.147146
	.quad	0x3fe61b4fe79ee02a              # double 0.69083399999999995
	.quad	0x3fd97082491afc05              # double 0.39749200000000001
	.quad	0x3fef76fb09203a32              # double 0.98327399999999998
	.quad	0x3fc66f262888b546              # double 0.17526700000000001
	.quad	0x3fb7c04c8bc9cd3e              # double 0.092777999999999999
	.quad	0x3feecd37c1376d55              # double 0.96255100000000004
	.quad	0x3fb75c7cd898b2ea              # double 0.091255000000000002
	.quad	0x3fc83fee2c98e53f              # double 0.18945100000000001
	.quad	0x3fe629f16b11c6d2              # double 0.69262000000000001
	.quad	0x3fd85347a5b0ff11              # double 0.380083
	.quad	0x3fe2132f87ad080b              # double 0.56484199999999996
	.quad	0x3fc7b7c7820a30db              # double 0.18529599999999999
	.quad	0x3fc400c0f01fb82c              # double 0.156273
	.quad	0x3fd0cff64cf8d717              # double 0.26269300000000001
	.quad	0x3fc6b923a29c779a              # double 0.17752499999999999
	.quad	0x3febc32ebe596c83              # double 0.86757600000000001
	.quad	0x3fe55a1cac083127              # double 0.66725000000000001
	.quad	0x3fef7cc7d1bb4917              # double 0.98398200000000002
	.quad	0x3fc4e6c093d96638              # double 0.16329199999999999
	.quad	0x3fdacb9a9da597d5              # double 0.41867700000000002
	.quad	0x3fed7125dd095af3              # double 0.92006200000000005
	.quad	0x3fe6d8cf398e9707              # double 0.71396599999999999
	.quad	0x3fe081d5c31593e6              # double 0.515849
	.quad	0x3fce54152b0a6fc6              # double 0.23694100000000001
	.quad	0x3fa70f3882278d0d              # double 0.045038000000000002
	.quad	0x3fc99357603925bb              # double 0.19980899999999999
	.quad	0x3fe050635a426bb5              # double 0.50981299999999996
	.quad	0x3fcb2830a0b1bbcf              # double 0.21216399999999999
	.quad	0x3fc00357a355043e              # double 0.12510199999999999
	.quad	0x3fe1232b12d3415b              # double 0.53554299999999999
	.quad	0x3fec31ceaf251c19              # double 0.88107999999999997
	.quad	0x3fca512231832fcb              # double 0.20560100000000001
	.quad	0x3fee4d141a6937d2              # double 0.946909
	.quad	0x3fc6f5019f3c70ca              # double 0.17935200000000001
	.quad	0x3fdb191148fd9fd3              # double 0.42340499999999998
	.quad	0x3fe12d234eb9a177              # double 0.53676000000000001
	.quad	0x3fde0346dc5d6388              # double 0.46894999999999998
	.quad	0x3fc8682b62845996              # double 0.19067899999999999
	.quad	0x3fe5e6e43aa79bbb              # double 0.68443500000000002
	.quad	0x3fdab46fdeb52c9d              # double 0.417263
	.quad	0x3fe61081c2e33eff              # double 0.68951499999999999
	.quad	0x3f968943e1006078              # double 0.022008
	.quad	0x3fd775360d024702              # double 0.36652899999999999
	.quad	0x3fe9dc7cd898b2ea              # double 0.80816500000000002
	.quad	0x3fd7921ccd962068              # double 0.36829299999999998
	.quad	0x3fdaa60913a4f872              # double 0.41638399999999998
	.quad	0x3fec95ebfa8f7db7              # double 0.89330100000000001
	.quad	0x3fea9d27c3936827              # double 0.83168399999999998
	.quad	0x3fafd3910c2c5e2d              # double 0.062161000000000001
	.quad	0x3fe6966e008e9b39              # double 0.70586300000000002
	.quad	0x3fbe0ec743201041              # double 0.117413
	.quad	0x3f5711947cfa26a2              # double 0.001408
	.quad	0x3fdeea1405708249              # double 0.48303699999999999
	.quad	0x3fe4899392189bd8              # double 0.64179399999999998
	.quad	0x3fedd9a95421c044              # double 0.93281999999999998
	.quad	0x3fd344178705425f              # double 0.30103099999999999
	.quad	0x3fc45260f5e41d4b              # double 0.15876399999999999
	.quad	0x3fd2b25f633ce63a              # double 0.29213699999999998
	.quad	0x3fe18be5109070fc              # double 0.54832700000000001
	.quad	0x3fe3781a5870da5e              # double 0.60841100000000004
	.quad	0x3fd48e3ac0c62e4d              # double 0.32118099999999999
	.quad	0x3fefe1ac57e23f25              # double 0.99629800000000001
	.quad	0x3fede931876188b1              # double 0.93471599999999999
	.quad	0x3fe7c69728a61177              # double 0.74299199999999999
	.quad	0x3fe7b87df5cf2496              # double 0.74127100000000001
	.quad	0x3fe57edc7ef177a7              # double 0.671736
	.quad	0x3fe48474d9c6b053              # double 0.64116899999999999
	.quad	0x3fe61efb6dca07f6              # double 0.69128199999999995
	.quad	0x3fce0008637bd05b              # double 0.234376
	.quad	0x3fede8a936c58eeb              # double 0.93465100000000001
	.quad	0x3fe4238759253544              # double 0.62933700000000004
	.quad	0x3fef9f623076c051              # double 0.98820600000000002
	.quad	0x3feb0ddc6195464e              # double 0.84544200000000003
	.quad	0x3fdee6f71a7e3088              # double 0.48284700000000003
	.quad	0x3fa95f676ea4228a              # double 0.049556000000000003
	.quad	0x3feb8346dc5d6388              # double 0.85977499999999996
	.quad	0x3fddd50a88effe2a              # double 0.46612799999999999
	.quad	0x3fdb038194c01605              # double 0.42208899999999999
	.quad	0x3fe27c4199fe4367              # double 0.57766799999999996
	.quad	0x3fe86a2b1704ff43              # double 0.76295999999999997
	.quad	0x3fe0ab96f21f6cad              # double 0.52094600000000002
	.quad	0x3fc20afa2f05a709              # double 0.14096
	.quad	0x3fbcf5b1c8648840              # double 0.113124
	.quad	0x3fdb48adeebb341e              # double 0.426311
	.quad	0x3fe3901083dbc233              # double 0.61133599999999999
	.quad	0x3fca92684cf0739b              # double 0.207593
	.quad	0x3fdca2a90cd423d9              # double 0.44742799999999999
	.quad	0x3fc884ad794a6eb9              # double 0.191549
	.quad	0x3fdeba3875925354              # double 0.48011599999999999
	.quad	0x3fe699ed7c6fbd27              # double 0.70628999999999997
	.quad	0x3fecacfd8f0c77de              # double 0.89611700000000005
	.quad	0x3fd8412cf0f9d2bf              # double 0.37897799999999998
	.quad	0x3fd6cf5f4e4430b1              # double 0.35640699999999997
	.quad	0x3fe224edf6124074              # double 0.56700799999999996
	.quad	0x3fe00b545c78a6db              # double 0.50138300000000002
	.quad	0x3fdfa222d5171e2a              # double 0.49427100000000002
	.quad	0x3fb4c3e3193f6c27              # double 0.081114000000000006
	.quad	0x3fe3e4473cd57364              # double 0.62161599999999995
	.quad	0x3fbf71da37ef5a96              # double 0.122831
	.quad	0x3fc0ab0c88a47ed0              # double 0.13022
	.quad	0x3fe574f0d844d014              # double 0.67052500000000004
	.quad	0x3fe72ae297396d09              # double 0.72398499999999999
	.quad	0x3fd44b9cb6848beb              # double 0.31711499999999998
	.quad	0x3fd9276b7ed41b76              # double 0.39303100000000002
	.quad	0x3fb0afb3b7521145              # double 0.065181000000000003
	.quad	0x3fef264c2f837b4a              # double 0.97342499999999998
	.quad	0x3fe9eed45e9185cf              # double 0.81040400000000001
	.quad	0x3fdaf4c2b51bd61f              # double 0.42118899999999998
	.quad	0x3fe4dc78a6dacabc              # double 0.65191299999999996
	.quad	0x3fe9d712a0ec7432              # double 0.807504
	.quad	0x3fe90d7e02645e4e              # double 0.78289699999999995
	.quad	0x3fc6344c37e6f71a              # double 0.17347099999999999
	.quad	0x3f79be4cd7492791              # double 0.0062849999999999998
	.quad	0x3fe85aec4a4095f2              # double 0.76109899999999997
	.quad	0x3fb36d549731098d              # double 0.075886999999999996
	.quad	0x3fd3a2c669057d18              # double 0.30681000000000003
	.quad	0x3fc2344c37e6f71a              # double 0.14222099999999999
	.quad	0x3fd6edb7281fd9ba              # double 0.35825899999999999
	.quad	0x3fe146c764adff82              # double 0.53988999999999998
	.quad	0x3fb49dbec2480e8d              # double 0.080532000000000006
	.quad	0x3fe7a1ab4b72c519              # double 0.73848499999999995
	.quad	0x3fdc810a569b1748              # double 0.44537599999999999
	.quad	0x3fc998d8a979e16d              # double 0.19997699999999999
	.quad	0x3fe77de939eadd59              # double 0.73411999999999999
	.quad	0x3fe7eea63b688bdb              # double 0.74788200000000005
	.quad	0x3fb92674080f98fa              # double 0.098242999999999996
	.quad	0x3fd4e7ff583a53b9              # double 0.32666000000000001
	.quad	0x3fefe807bbb62414              # double 0.99707400000000001
	.quad	0x3fc9a89b951c5c57              # double 0.200458
	.quad	0x3fc4eee0f3cb3e57              # double 0.16353999999999999
	.quad	0x3fe40685553ef6b6              # double 0.62579600000000002
	.quad	0x3fe591904b3c3e75              # double 0.67401900000000003
	.quad	0x3fd41209edbf8b9c              # double 0.31360100000000002
	.quad	0x3fe9c4b6e935b91f              # double 0.80526299999999995
	.quad	0x3fe97d955714b9cb              # double 0.79657999999999995
	.quad	0x3fe31246bf01322f              # double 0.59598099999999998
	.quad	0x3fea9d16fc9bc771              # double 0.83167599999999997
	.quad	0x3fae154434e3369c              # double 0.058756000000000003
	.quad	0x3fea95b78cc9a77e              # double 0.83077599999999996
	.quad	0x3fca15b9a5a89b95              # double 0.203788
	.quad	0x3fdf1376d5497311              # double 0.48556300000000002
	.quad	0x3fcfacde19fc2a88              # double 0.24746299999999999
	.quad	0x3fe924723aafff37              # double 0.78569900000000004
	.quad	0x3fb6de00d1b71759              # double 0.089325000000000002
	.quad	0x3fd9c679cc74b839              # double 0.40273900000000001
	.quad	0x3fe9229a5ebb773a              # double 0.78547400000000001
	.quad	0x3fe57ae147ae147b              # double 0.67125000000000001
	.quad	0x3fd572085b18548b              # double 0.33508500000000002
	.quad	0x3fbdb8887229e908              # double 0.11609700000000001
	.quad	0x3fede4217d2849cb              # double 0.93409799999999998
	.quad	0x3fe3617a02fb5d03              # double 0.60564899999999999
	.quad	0x3fef995cc857f306              # double 0.98747099999999999
	.quad	0x3fc7325918a009f6              # double 0.181224
	.quad	0x3fd18f7121ab4b73              # double 0.27438000000000001
	.quad	0x3fe61650a45d41fa              # double 0.69022399999999995
	.quad	0x3fd9d9a95421c044              # double 0.40390999999999999
	.quad	0x3fd76327ed84d339              # double 0.365427
	.quad	0x3fd6fcf80dc33722              # double 0.35919000000000001
	.quad	0x3fd2b0ccbc05d52c              # double 0.292041
	.quad	0x3fb0c0ce91c8eac0              # double 0.065442
	.quad	0x3fcb220ff540895d              # double 0.211977
	.quad	0x3fe8af837b4a233a              # double 0.77142500000000003
	.quad	0x3fed7483cafb3b75              # double 0.92047299999999999
	.quad	0x3fe7053198288052              # double 0.71938400000000002
	.quad	0x3fe575515054ac2a              # double 0.67057100000000003
	.quad	0x3fe79800a7c5ac47              # double 0.73730499999999999
	.quad	0x3fe947c73eee5259              # double 0.79001200000000005
	.quad	0x3fba73a365cb35f4              # double 0.103327
	.quad	0x3fd88c0053e2d624              # double 0.38354500000000002
	.quad	0x3fed919695d91ab9              # double 0.92402200000000001
	.quad	0x3fc715d701d9f4d3              # double 0.18035399999999999
	.quad	0x3fe2c1ce6c093d96              # double 0.58615799999999996
	.quad	0x3fcd72a38b8ae31d              # double 0.23006099999999999
	.quad	0x3fdb168f8e7ddca5              # double 0.42325200000000002
	.quad	0x3fceadff822bbecb              # double 0.23968500000000001
	.quad	0x3fcaf42fe82517e7              # double 0.21057699999999999
	.quad	0x3fee7eac42e9899c              # double 0.952963
	.quad	0x3fcbb256ffc115df              # double 0.21637999999999999
	.quad	0x3fe1844d013a92a3              # double 0.5474
	.quad	0x3fe4a862f5989df1              # double 0.64555499999999999
	.quad	0x3fe00d434a01abd2              # double 0.50161900000000004
	.quad	0x3fc944d44567125e              # double 0.19741300000000001
	.quad	0x3fe6826edaa92e62              # double 0.70342199999999999
	.quad	0x3fee72474538ef35              # double 0.95145000000000002
	.quad	0x3fec7394b7b28955              # double 0.88910900000000004
	.quad	0x3fc6e69f05ea24cc              # double 0.17891299999999999
	.quad	0x3fd3095af294dd72              # double 0.29744599999999999
	.quad	0x3fdc004fb1183b60              # double 0.43751899999999999
	.quad	0x3feaf507e9d94d0e              # double 0.84241100000000002
	.quad	0x3fb00b242070b8d0              # double 0.062670000000000003
	.quad	0x3feaec8f75536934              # double 0.84137700000000004
	.quad	0x3fd8660a2014727e              # double 0.38122800000000001
	.quad	0x3fb5f57b41bfbdf1              # double 0.085777000000000006
	.quad	0x3fe7fc04c8bc9cd4              # double 0.74951400000000001
	.quad	0x3fd4f88fc9363f57              # double 0.32767099999999999
	.quad	0x3fbb6f9fcb0c026d              # double 0.107172
	.quad	0x3fea6da0168b5cc0              # double 0.82588200000000001
	.quad	0x3fa42d6a9c560c7c              # double 0.039409
	.quad	0x3f9caab8a5ce5b42              # double 0.027994999999999999
	.quad	0x3fe15d1e53a81dc1              # double 0.54261700000000002
	.quad	0x3fd69e279dd3bafe              # double 0.35340300000000002
	.quad	0x3fccd7f0ed3d859d              # double 0.22534000000000001
	.quad	0x3fea5a2b5a20ddc6              # double 0.82350699999999999
	.quad	0x3fc9c5bd0e12e83a              # double 0.201347
	.quad	0x3f8b9b66f9335d25              # double 0.013480000000000001
	.quad	0x3fea945d851654d6              # double 0.83061099999999999
	.quad	0x3fc6cc575c0767d3              # double 0.17811099999999999
	.quad	0x3fe5184a0e410b63              # double 0.659215
	.quad	0x3fcc984e3ffef391              # double 0.22339800000000001
	.quad	0x3fe48d2e514c22ee              # double 0.64223399999999997
	.quad	0x3f838e6d15ad106f              # double 0.0095490000000000001
	.quad	0x3feafb8b26394fad              # double 0.84320600000000001
	.quad	0x3fe973ffac1d29dc              # double 0.79540999999999995
	.quad	0x3fd8d30ad46f587d              # double 0.38788099999999998
	.quad	0x3fef21a719b4dcec              # double 0.972858
	.quad	0x3fb8a936c58eeaea              # double 0.096332
	.quad	0x3fd174213a0c6b48              # double 0.27271299999999998
	.quad	0x3fdb398201cd5f9a              # double 0.42538500000000001
	.quad	0x3fe7465a57646ae4              # double 0.72733800000000004
	.quad	0x3fdce631f8a0902e              # double 0.45155000000000001
	.quad	0x3fe34199fe43675e              # double 0.60175800000000002
	.quad	0x3febbdad7518b0d1              # double 0.86690400000000001
	.quad	0x3fe5613b18dac259              # double 0.66811900000000002
	.quad	0x3fef243137b07076              # double 0.97316800000000003
	.quad	0x3fa3ae685db76b3c              # double 0.038440000000000002
	.quad	0x3fe625b749adc8fc              # double 0.69210400000000005
	.quad	0x3fd5ed959a30984e              # double 0.34262599999999999
	.quad	0x3fdc528ae74f2f12              # double 0.44253799999999999
	.quad	0x3fb2b81f969e3c97              # double 0.073122000000000006
	.quad	0x3fee3f1843c3a42f              # double 0.94520199999999999
	.quad	0x3fdc8a43bb40b34e              # double 0.44593899999999997
	.quad	0x3fe7552e2fbe33ad              # double 0.72914800000000002
	.quad	0x3fd74a1f080303c0              # double 0.36389899999999997
	.quad	0x3fe7fe931876188b              # double 0.74982599999999999
	.quad	0x3fea56a593a2df93              # double 0.82307699999999995
	.quad	0x3fe2729d40ee06d9              # double 0.57649099999999998
	.quad	0x3fd9e8427418d691              # double 0.40480100000000002
	.quad	0x3feafdda8bd230ba              # double 0.84348800000000002
	.quad	0x3fdb164840e1719f              # double 0.42323499999999997
	.quad	0x3fea25119ce075f7              # double 0.817025
	.quad	0x3fd0755bccaf709b              # double 0.25716299999999997
	.quad	0x3fc4c3547e06961c              # double 0.16221099999999999
	.quad	0x3fdfa65cf67b1c00              # double 0.494529
	.quad	0x3fdef6f08cc575c0              # double 0.48382199999999997
	.quad	0x3fe99f4b1ee24357              # double 0.80069500000000005
	.quad	0x3fded434a01abd1b              # double 0.48170200000000002
	.quad	0x3fce6299524bfd2f              # double 0.23738400000000001
	.quad	0x3fee54d61b2a27f2              # double 0.94785600000000003
	.quad	0x3fd930b178b37004              # double 0.39359699999999997
	.quad	0x3fecf78140dd3fe2              # double 0.90521300000000005
	.quad	0x3fc2e2da554b8bf0              # double 0.14754800000000001
	.quad	0x3fe50f1d3ed527e5              # double 0.65809499999999999
	.quad	0x3fb2d0917d6b65aa              # double 0.073495000000000005
	.quad	0x3fddd9c6b0531983              # double 0.46641700000000003
	.quad	0x3fd61e215336deb9              # double 0.34558899999999998
	.quad	0x3fd45c5718eb8950              # double 0.31813599999999997
	.quad	0x3fe8b9a7c17a8933              # double 0.77266299999999999
	.quad	0x3fec0de2ac322292              # double 0.876695
	.quad	0x3fe9200192a73711              # double 0.78515699999999999
	.quad	0x3fee69ea14057082              # double 0.95042899999999997
	.quad	0x3fe900cd855970b5              # double 0.78134800000000004
	.quad	0x3fdfc560c7c0f451              # double 0.49642199999999997
	.quad	0x3feb77985271bcdc              # double 0.85834900000000002
	.quad	0x3fedcda2b5a20ddc              # double 0.93135199999999995
	.quad	0x3fcdc51dabe2717a              # double 0.23257800000000001
	.quad	0x3fdff32bdc26dce4              # double 0.49921700000000002
	.quad	0x3fcb410f94c87981              # double 0.212923
	.quad	0x3fd2b0ccbc05d52c              # double 0.292041
	.quad	0x3fcdaee631f8a090              # double 0.2319
	.quad	0x3fd89e6256366d7a              # double 0.38466699999999998
	.quad	0x3fd9b81733226c3c              # double 0.40186100000000002
	.quad	0x3fd5e696a26e5471              # double 0.34219899999999998
	.quad	0x3fd24373f316e371              # double 0.28536699999999998
	.quad	0x3fed1b866e43aa7a              # double 0.90961000000000003
	.quad	0x3feded373affb04f              # double 0.93520700000000001
	.quad	0x3fe6f42bb6672fba              # double 0.717306
	.quad	0x3fe914c016052503              # double 0.78378300000000001
	.quad	0x3fd8863beec3979a              # double 0.38319300000000001
	.quad	0x3fba3c105186db51              # double 0.102479
	.quad	0x3fe96351deefe500              # double 0.79337400000000002
	.quad	0x3fd20364388ebcc7              # double 0.28145700000000001
	.quad	0x3fdc13b5bf6a0dbb              # double 0.43870300000000001
	.quad	0x3faf4751ce28ed5f              # double 0.061090999999999999
	.quad	0x3fc1ffa3b9ae0c17              # double 0.14061399999999999
	.quad	0x3f92d1f1cfbb9496              # double 0.018379
	.quad	0x3fe5739f340d4dc6              # double 0.67036399999999996
	.quad	0x3fd38f3eccc46951              # double 0.305618
	.quad	0x3fc6b95e5aff2a17              # double 0.177532
	.quad	0x3fe2adba4d6e47dc              # double 0.58370699999999998
	.quad	0x3fe79c0ebedfa440              # double 0.73780000000000001
	.quad	0x3fe6ee47dc37a3db              # double 0.71658699999999997
	.quad	0x3feae670e2c12ad8              # double 0.84062999999999999
	.quad	0x3fe66c2480e8c8ac              # double 0.70070100000000002
	.quad	0x3fd3ec2ce4649907              # double 0.31129000000000001
	.quad	0x3fe68d844d013a93              # double 0.70477500000000004
	.quad	0x3fdd3f811f4f50a0              # double 0.45700099999999999
	.quad	0x3feb4c22ee41919b              # double 0.85304400000000002
	.quad	0x3feaaf9a8cdea034              # double 0.83393600000000001
	.quad	0x3fa0d38cda6e75ff              # double 0.032863999999999997
	.quad	0x3fc1abb8800eae19              # double 0.13805300000000001
	.quad	0x3fed0a45d41fa765              # double 0.90750399999999998
	.quad	0x3fd35421c044284e              # double 0.30201
	.quad	0x3fe132d4d4024b34              # double 0.53745500000000002
	.quad	0x3fe2198f1d3ed528              # double 0.56562000000000001
	.quad	0x3fc05918a009f623              # double 0.127719
	.quad	0x3faf1ef30a4e379b              # double 0.060782999999999997
	.quad	0x3fe208a697aeddce              # double 0.56355599999999995
	.quad	0x3fe13b9ae0c17657              # double 0.53852599999999995
	.quad	0x3fc63150dae3e6c5              # double 0.17338000000000001
	.quad	0x3fc96494d50ebaae              # double 0.198382
	.quad	0x3fe4dccc89b0ee4a              # double 0.651953
	.quad	0x3fe250268900c522              # double 0.57228400000000001
	.quad	0x3fe362f37fbefd00              # double 0.60582899999999995
	.quad	0x3fdafb8f57f737da              # double 0.42160399999999998
	.quad	0x3fe76cdf266ba494              # double 0.73204000000000002
	.quad	0x3f9cbc8c0ce91c8f              # double 0.028063000000000001
	.quad	0x3fd3864020817fc7              # double 0.30506899999999998
	.quad	0x3feb7c5479d4d834              # double 0.85892699999999999
	.quad	0x3fe793f8db489093              # double 0.73681300000000005
	.quad	0x3fddb691212513b6              # double 0.46426800000000001
	.quad	0x3fef03b1d0c80410              # double 0.96920099999999998
	.quad	0x3feb8950763a1901              # double 0.86051200000000005
	.quad	0x3fde010c6f7a0b5f              # double 0.46881400000000001
	.quad	0x3fd846d3f9e7b80b              # double 0.37932300000000002
	.quad	0x3fec98611fd5885d              # double 0.89360099999999998
	.quad	0x3fda8f75536933a0              # double 0.41500599999999999
	.quad	0x3fb9054ac29bf163              # double 0.097737000000000004
	.quad	0x3fc5675579af1887              # double 0.167216
	.quad	0x3fc061c79b34a44c              # double 0.12798399999999999
	.quad	0x3fe9f88765ba6efc              # double 0.81158799999999997
	.quad	0x3fe5feb28d8665e0              # double 0.68734099999999998
	.quad	0x3fc5a96d4c33b539              # double 0.16923299999999999
	.quad	0x3fefd3d4280ae105              # double 0.99460800000000004
	.quad	0x3fd80d0247021d11              # double 0.37579400000000002
	.quad	0x3fef439de481f538              # double 0.97700399999999998
	.quad	0x3fc61ee675147f13              # double 0.172818
	.quad	0x3fef2888b545c78a              # double 0.97369799999999995
	.quad	0x3fea06748e475600              # double 0.81328800000000001
	.quad	0x3febbf8982cb20fb              # double 0.86713099999999999
	.quad	0x3fe86e41919ac797              # double 0.763459
	.quad	0x3fe1c6a3bddfca00              # double 0.55549800000000005
	.quad	0x3fbb342edbb59ddc              # double 0.106265
	.quad	0x3fe146455eaee200              # double 0.53982799999999997
	.quad	0x3fc161804d983947              # double 0.13578799999999999
	.quad	0x3f91b691212513b6              # double 0.017298000000000001
	.quad	0x3fe438b04ab606b8              # double 0.63192000000000004
	.quad	0x3fef5744f5d35654              # double 0.97940300000000002
	.quad	0x3fd5a82a5614df8b              # double 0.338389
	.quad	0x3fd9a500d5e8d541              # double 0.400696
	.quad	0x3fcbba6efc371da3              # double 0.21662699999999999
	.quad	0x3fcd63b256ffc116              # double 0.229605
	.quad	0x3fe8fb0f6ad70e6f              # double 0.78064699999999998
	.quad	0x3fdcf1a1986b9c30              # double 0.45224799999999998
	.quad	0x3fae75147f130596              # double 0.059486999999999998
	.quad	0x3fc04ff43419e300              # double 0.12744
	.quad	0x3fd6c5260f5e41d5              # double 0.35578300000000002
	.quad	0x3fd3606b7aa25d8d              # double 0.30275999999999997
	.quad	0x3fd6ecc3e3193f6c              # double 0.35820099999999999
	.quad	0x3fe918201cd5f99c              # double 0.78419499999999997
	.quad	0x3fc16e8af81626b3              # double 0.136186
	.quad	0x3fc7574f722e1ac5              # double 0.18235199999999999
	.quad	0x3fd7b4528283d35f              # double 0.37038100000000002
	.quad	0x3fe12355043e5322              # double 0.53556300000000001
	.quad	0x3fd06994185058de              # double 0.25644400000000001
	.quad	0x3fe42c81d3aa36a0              # double 0.63043300000000002
	.quad	0x3fee881c2e33eff2              # double 0.95411500000000005
	.quad	0x3fee0a393ee5eedd              # double 0.93874800000000003
	.quad	0x3feb250b524399b3              # double 0.84827200000000003
	.quad	0x3fb1435ac8a37260              # double 0.067433999999999994
	.quad	0x3fe17bedb7281fda              # double 0.54637800000000003
	.quad	0x3fd625fa658c4bd3              # double 0.34606799999999999
	.quad	0x3fe1ea0fd3b29a1c              # double 0.55982200000000004
	.quad	0x3fec9565c2d27807              # double 0.89323699999999995
	.quad	0x3fdb9fa97e132b56              # double 0.43162
	.quad	0x3fe57746887a8d65              # double 0.67081000000000002
	.quad	0x3fe9bbe0157eed46              # double 0.80418400000000001
	.quad	0x3fed70dc768dfbd7              # double 0.92002700000000004
	.quad	0x3fe3f268d32830a1              # double 0.62334100000000003
	.quad	0x3fd69c779a6b50b1              # double 0.3533
	.quad	0x3fe6377186551937              # double 0.694268
	.quad	0x3feb60eb67c286f9              # double 0.85558100000000004
	.quad	0x3fea15b1422ccb3a              # double 0.81514799999999998
	.quad	0x3fe8acd9e83e425b              # double 0.77110000000000001
	.quad	0x3fe6421c044284e0              # double 0.69557000000000002
	.quad	0x3fdf02e2328f9f45              # double 0.48455100000000001
	.quad	0x3feb914b167ec786              # double 0.86148599999999997
	.quad	0x3fd16d2aa5c5f7c6              # double 0.27228799999999997
	.quad	0x3fd1cb5fe542e558              # double 0.27803800000000001
	.quad	0x3fe55e54b48d3ae7              # double 0.66776500000000005
	.quad	0x3fee4a05dd8f92b0              # double 0.94653600000000004
	.quad	0x3fef3da2f8bdec5f              # double 0.97627399999999997
	.quad	0x3fb0f27bb2fec56d              # double 0.066199999999999995
	.quad	0x3fe6f6c69b5a63fa              # double 0.71762400000000004
	.quad	0x3fecc0e5a35d67ba              # double 0.89854699999999998
	.quad	0x3fe6bd2d87f88766              # double 0.71059300000000003
	.quad	0x3fc3ed84d338f798              # double 0.15568599999999999
	.quad	0x3fe0c2cc2d6a9c56              # double 0.52377899999999999
	.quad	0x3feb828c36da87a0              # double 0.85968599999999995
	.quad	0x3fd973365881a155              # double 0.39765699999999998
	.quad	0x3feba7f3cf70153c              # double 0.86425200000000002
	.quad	0x3fb8a0c282c6ef3d              # double 0.096202999999999997
	.quad	0x3fe7da16616b54e3              # double 0.74537200000000003
	.quad	0x3fe21a75cd0bb6ed              # double 0.56572999999999996
	.quad	0x3feb4ce5f7403dde              # double 0.85313700000000003
	.quad	0x3fed96b3354c1227              # double 0.92464599999999997
	.quad	0x3fe17036c9c0a8d2              # double 0.54494799999999999
	.quad	0x3fd2b445ed4a1ad6              # double 0.29225299999999999
	.quad	0x3fc21804d9839475              # double 0.14135800000000001
	.quad	0x3feddefa615a8deb              # double 0.93346899999999999
	.quad	0x3fed8a17b0f6ad71              # double 0.92310700000000001
	.quad	0x3fee308bb906466b              # double 0.94342599999999999
	.quad	0x3fe1bf42352eb5f6              # double 0.55459700000000001
	.quad	0x3fed110c2c5e2cdc              # double 0.90833099999999999
	.quad	0x3fcae2c98e53eb3a              # double 0.21004600000000001
	.quad	0x3fefc8387df5cf25              # double 0.99319100000000004
	.quad	0x3fe3479d4d834092              # double 0.60249200000000003
	.quad	0x3fd0703f2d3c792d              # double 0.256851
	.quad	0x3febd20d130df9be              # double 0.86939100000000002
	.quad	0x3fc10d173fb7a5f4              # double 0.133212
	.quad	0x3fd4046c764adff8              # double 0.31276999999999999
	.quad	0x3fd151e75360d024              # double 0.27062399999999998
	.quad	0x3fdd85d31337eb29              # double 0.46129300000000001
	.quad	0x3fd7ceee0f3cb3e5              # double 0.37200499999999997
	.quad	0x3fef9c64ba94bbe4              # double 0.98784099999999996
	.quad	0x3fbc43d46b26bf87              # double 0.11040999999999999
	.quad	0x3fd4104d551d68c7              # double 0.31349500000000002
	.quad	0x3fb2116659d12cae              # double 0.070578000000000002
	.quad	0x3fb23f141205bc02              # double 0.071275000000000005
	.quad	0x3fd74b2745bf26f2              # double 0.36396200000000001
	.quad	0x3fe02c3c9eecbfb1              # double 0.50539999999999996
	.quad	0x3fe272a38b8ae31d              # double 0.57649399999999995
	.quad	0x3fefedb50f40e5a3              # double 0.99776699999999995
	.quad	0x3fd8e79ee02a77a3              # double 0.38913700000000001
	.quad	0x3fd3229e90795f67              # double 0.29898799999999998
	.quad	0x3fe8ff498c3b0c46              # double 0.78116300000000005
	.quad	0x3fe13d68405b39e2              # double 0.53874599999999995
	.quad	0x3fd50307f23cc8de              # double 0.32830999999999999
	.quad	0x3feab0df9bdc69f9              # double 0.83409100000000003
	.quad	0x3fe2f304039abf34              # double 0.59216500000000005
	.quad	0x3fe62d5171e29b6b              # double 0.69303199999999998
	.quad	0x3fe42715831f03d1              # double 0.62977099999999997
	.quad	0x3fa265061416377a              # double 0.035927000000000001
	.quad	0x3fa61e4f765fd8ae              # double 0.043200000000000002
	.quad	0x3f80f27bb2fec56d              # double 0.0082749999999999993
	.quad	0x3fd32263d816aceb              # double 0.29897400000000002
	.quad	0x3fd9c1b54195cc85              # double 0.40244799999999997
	.quad	0x3fdd04ff43419e30              # double 0.45343
	.quad	0x3f86e264e48626f6              # double 0.011174
	.quad	0x3fc02b51bd61f5be              # double 0.12632199999999999
	.quad	0x3fe576a7264a16a5              # double 0.67073400000000005
	.quad	0x3fe72bba98eda22f              # double 0.72408799999999995
	.quad	0x3fea9096bb98c7e3              # double 0.83015000000000005
	.quad	0x3fe1f39f340d4dc6              # double 0.56098899999999996
	.quad	0x3fd3116659d12cae              # double 0.29793700000000001
	.quad	0x3fc32674080f98fa              # double 0.14961099999999999
	.quad	0x3fe6c8d7e02645e5              # double 0.71201700000000001
	.quad	0x3fd50bdcad14a0a1              # double 0.328849
	.quad	0x3fccb5bb384fd2a6              # double 0.224296
	.quad	0x3f60f94c87980f56              # double 0.0020720000000000001
	.quad	0x3fe5bef8ceb356da              # double 0.679562
	.quad	0x3fb3f0ed3d859c8d              # double 0.077895000000000006
	.quad	0x3fd2490e66cb1034              # double 0.28570899999999999
	.quad	0x3fdf348b220791c5              # double 0.48758200000000002
	.quad	0x3fe1cfe36d22424a              # double 0.55662699999999998
	.quad	0x3fcd8d045fe11127              # double 0.23086599999999999
	.quad	0x3fed960d887ebf23              # double 0.92456700000000003
	.quad	0x3fe19a9b8cb8e087              # double 0.55012300000000003
	.quad	0x3feec3f1c75818c6              # double 0.96141900000000002
	.quad	0x3fd839756c93a711              # double 0.37850699999999998
	.quad	0x3fd2e481f53825e1              # double 0.29519699999999999
	.quad	0x3fba494d50ebaade              # double 0.10268099999999999
	.quad	0x3fea51bb4916ca47              # double 0.82247700000000001
	.quad	0x3fc6a98244e93e1d              # double 0.17704800000000001
	.quad	0x3fe5a8a1dfb9389b              # double 0.67683499999999996
	.quad	0x3fc8e2541d8e8640              # double 0.194407
	.quad	0x3feff04577d95571              # double 0.99807999999999996
	.quad	0x3fe0d551d68c692f              # double 0.52603999999999995
	.quad	0x3fd281908e581cf8              # double 0.28915800000000003
	.quad	0x3f9ee392e1ef73c1              # double 0.030165000000000001
	.quad	0x3fbe9707182235b5              # double 0.119492
	.quad	0x3fde1eeaa6d26741              # double 0.47063700000000003
	.quad	0x3fee98fc504816f0              # double 0.956175
	.quad	0x3fd40cfe154434e3              # double 0.31329299999999999
	.quad	0x3fe8494b380cb6c8              # double 0.75894700000000004
	.quad	0x3f9b7a5f41aef6f9              # double 0.026834
	.quad	0x3f9b8c32a8c9b845              # double 0.026901999999999999
	.quad	0x3fd939da16616b55              # double 0.39415600000000001
	.quad	0x3fd6507a6bd6e8b0              # double 0.34866200000000003
	.quad	0x3fbf4916ca46e08f              # double 0.122209
	.quad	0x3fe6f72b4528283d              # double 0.71767199999999998
	.quad	0x3fe397b5286b5914              # double 0.61226899999999995
	.quad	0x3fe88a71de69ad43              # double 0.76690000000000003
	.quad	0x3fe0845baf533f42              # double 0.51615699999999998
	.quad	0x3fe1d872f33ca31e              # double 0.55767199999999995
	.quad	0x3fe98f98fa376923              # double 0.79877900000000002
	.quad	0x3feb38bac710cb29              # double 0.85067499999999996
	.quad	0x3fce38b04ab606b8              # double 0.23610500000000001
	.quad	0x3fd9d6f976790321              # double 0.40374599999999999
	.quad	0x3fee68533b107747              # double 0.95023500000000005
	.quad	0x3fd49aa60913a4f8              # double 0.32193899999999998
	.quad	0x3fe9df88fc9363f5              # double 0.80853699999999995
	.quad	0x3fa0383ad9f0a1be              # double 0.031678999999999999
	.quad	0x3fe2d352220bc383              # double 0.58829600000000004
	.quad	0x3fa5c896dd26b724              # double 0.042546
	.quad	0x3fd41b003686a4ca              # double 0.31414799999999998
	.quad	0x3f811276fb09203a              # double 0.0083359999999999997
	.quad	0x3fd1ca25529fe005              # double 0.27796300000000002
	.quad	0x3fc98c8eef1bac2e              # double 0.199602
	.quad	0x3fe971d3ed527e52              # double 0.79514499999999999
	.quad	0x3fecd5a187a4a490              # double 0.90107800000000005
	.quad	0x3fdb27e52157689d              # double 0.42431000000000002
	.quad	0x3fec684ad794a6ec              # double 0.88773100000000004
	.quad	0x3fc985b5b70691ea              # double 0.19939299999999999
	.quad	0x3febea400fba8827              # double 0.87234500000000004
	.quad	0x3fc7136a400fba88              # double 0.18028
	.quad	0x3fccec95bff04578              # double 0.22597
	.quad	0x3fe05b70691ea78b              # double 0.51116200000000001
	.quad	0x3fed1361dc93ea2d              # double 0.90861599999999998
	.quad	0x3fe43b05faebc409              # double 0.63220500000000002
	.quad	0x3fef3a29c779a6b5              # double 0.97584999999999999
	.quad	0x3fe8a6aca7935760              # double 0.77034599999999997
	.quad	0x3fe98c9b845564b6              # double 0.79841399999999996
	.quad	0x3fe78f55de58e64b              # double 0.73624699999999998
	.quad	0x3feb55a187a4a490              # double 0.85420300000000005
	.quad	0x3fdc2a454de7ea60              # double 0.44008000000000003
	.quad	0x3feab003686a4ca5              # double 0.83398600000000001
	.quad	0x3fe66eb702602c91              # double 0.70101500000000005
	.quad	0x3fe3ef911cf355ce              # double 0.62299400000000005
	.quad	0x3fe3d119ce075f70              # double 0.61927500000000002
	.quad	0x3fe28a17b0f6ad71              # double 0.57935700000000001
	.quad	0x3fd82b239a38fbca              # double 0.377633
	.quad	0x3fef24b124d099e1              # double 0.97322900000000001
	.quad	0x3fc94fb549f94856              # double 0.197745
	.quad	0x3fec25c3dee78184              # double 0.87961
	.quad	0x3fe0651f3e89a88b              # double 0.51234400000000002
	.quad	0x3faa6a4441787054              # double 0.051591999999999999
	.quad	0x3fb6af89c5e6ff7e              # double 0.088616
	.quad	0x3fd79e774eebf65e              # double 0.36904700000000001
	.quad	0x3fd3a1d323fee2ca              # double 0.30675200000000002
	.quad	0x3fe9a5332acfb763              # double 0.80141600000000002
	.quad	0x3feea3f034b0e1b5              # double 0.95751200000000003
	.quad	0x3fd13250b524399b              # double 0.26869599999999999
	.quad	0x3fc0ce89656eefa2              # double 0.131303
	.quad	0x3fee37b28954a7f8              # double 0.94429899999999999
	.quad	0x3fe3ec93a7115161              # double 0.62262899999999999
	.quad	0x3fb6433508f648c7              # double 0.086962999999999999
	.quad	0x3fec818611fd5886              # double 0.89081100000000002
	.quad	0x3fc795464dc22ab2              # double 0.18424299999999999
	.quad	0x3fef7922962cfd8f              # double 0.98353699999999999
	.quad	0x3fca7589efd86a90              # double 0.20671200000000001
	.quad	0x3fcafc7a398201cd              # double 0.21082999999999999
	.quad	0x3fa76709fa54c554              # double 0.045707999999999999
	.quad	0x3fecee02a77a2ced              # double 0.90405400000000002
	.quad	0x3fe48b220791c4b9              # double 0.641984
	.quad	0x3fe0da708ede54b5              # double 0.52666500000000005
	.quad	0x3fe798a65492ff4c              # double 0.73738400000000004
	.quad	0x3fbc6940357a3550              # double 0.110981
	.quad	0x3fe6a57eaa2a0a96              # double 0.70770200000000005
	.quad	0x3fe7d68a50507a6c              # double 0.74493900000000002
	.quad	0x3fec48eabffcdab2              # double 0.88390100000000005
	.quad	0x3fde64fdb09a671f              # double 0.474914
	.quad	0x3fe16be9c886162f              # double 0.54442299999999999
	.quad	0x3fd1367a0f9096bc              # double 0.26895000000000002
	.quad	0x3fcd504c48adeebb              # double 0.22901299999999999
	.quad	0x3fc1154003254e6e              # double 0.133461
	.quad	0x3fea0d51f81a5871              # double 0.81412600000000002
	.quad	0x3fd1f544bb1af3a1              # double 0.28059499999999998
	.quad	0x3fdc88a04d12018a              # double 0.44583899999999999
	.quad	0x3fe2d6238da3c212              # double 0.58864000000000005
	.quad	0x3fef1c8216c61523              # double 0.97223000000000003
	.quad	0x3fc412839042d8c3              # double 0.15681500000000001
	.quad	0x3fedabc2fc69728a              # double 0.92721699999999996
	.quad	0x3fd7443914f483cb              # double 0.363539
	.quad	0x3fe4a1c475e6362a              # double 0.64474699999999996
	.quad	0x3fe63d2fa0d77b7c              # double 0.69496899999999995
	.quad	0x3fe094b599aa6091              # double 0.51815299999999997
	.quad	0x3fc311ada76d97b3              # double 0.148977
	.quad	0x3fdcb7e4de3b8a1a              # double 0.44872400000000001
	.quad	0x3fd1450268900c52              # double 0.26983699999999999
	.quad	0x3feb471d60631727              # double 0.85243100000000005
	.quad	0x3fbe1c475e6362a6              # double 0.117619
	.quad	0x3fed6221c8a7a41e              # double 0.91822899999999996
	.quad	0x3fcf3586ca89fc6e              # double 0.24382100000000001
	.quad	0x3fddc89f40a2877f              # double 0.46537000000000001
	.quad	0x3fee4853c148344c              # double 0.94632899999999997
	.quad	0x3feaf63c31df761d              # double 0.84255800000000003
	.quad	0x3fef1b823c85c24c              # double 0.97210799999999997
	.quad	0x3fe47603925bb7b7              # double 0.63940600000000003
	.quad	0x3fee20c282c6ef3d              # double 0.94149899999999997
	.quad	0x3fe2b86d2ed783e0              # double 0.58501300000000001
	.quad	0x3fe77e846a5d6bec              # double 0.73419400000000001
	.quad	0x3fb74b51372a38b9              # double 0.090993000000000004
	.quad	0x3fedddc4007570c5              # double 0.93332099999999996
	.quad	0x3fdf6a3bddfc9ff9              # double 0.49085899999999999
	.quad	0x3fe87f8ca8198f1d              # double 0.76556999999999997
	.quad	0x3fcad5c74751ce29              # double 0.209649
	.quad	0x3fe7594af4f0d845              # double 0.72965000000000002
	.quad	0x3fd5e9185cee17a0              # double 0.34235199999999999
	.quad	0x3fe0d6777079e59f              # double 0.52617999999999998
	.quad	0x3fee996b76709fa5              # double 0.95622799999999997
	.quad	0x3feca92817763e4b              # double 0.89564900000000003
	.quad	0x3fee36134ce3de61              # double 0.94410099999999997
	.quad	0x3fd6db445ed4a1ad              # double 0.35713299999999998
	.quad	0x3fea807fed20296b              # double 0.82818599999999998
	.quad	0x3fc7b5e0f7fcfc40              # double 0.18523800000000001
	.quad	0x3fe7bd5fdcdf6988              # double 0.74186700000000005
	.quad	0x3fc719a415f45e0b              # double 0.18046999999999999
	.quad	0x3fef556084a515cf              # double 0.97917200000000004
	.quad	0x3fc0e2eb1c432ca5              # double 0.13192499999999999
	.quad	0x3fed4dfefbf401c5              # double 0.915771
	.quad	0x3fee6f9db22d0e56              # double 0.951125
	.quad	0x3fa0cb6c7a7c9de0              # double 0.032801999999999998
	.quad	0x3f928f5c28f5c28f              # double 0.018124999999999999
	.quad	0x3fc82ad3e920c06a              # double 0.188807
	.quad	0x3fba41700cd85597              # double 0.102561
	.quad	0x3fbdb0bbf50e3476              # double 0.115978
	.quad	0x3fe523a8e71476b0              # double 0.66060300000000005
	.quad	0x3fe5361565c2d278              # double 0.662852
	.quad	0x3fe488919ef954eb              # double 0.64167099999999999
	.quad	0x3fe138f7985271bd              # double 0.53820400000000002
	.quad	0x3fe5bbe878fabda1              # double 0.67918800000000001
	.quad	0x3fbb0bf1a5ca2984              # double 0.10565099999999999
	.quad	0x3fd3ee807bbb6241              # double 0.31143199999999999
	.quad	0x3fd522c881e4712e              # double 0.33024799999999999
	.quad	0x3fe9311c6d1e108c              # double 0.78724499999999997
	.quad	0x3fd90d7be9856a38              # double 0.39144800000000002
	.quad	0x3fe42291fb3fa6df              # double 0.62922
	.quad	0x3fa35286b59146e5              # double 0.037739000000000002
	.quad	0x3fca1c4fc1df3301              # double 0.203989
	.quad	0x3feb1029ae4f3344              # double 0.845723
	.quad	0x3fecd10b1feeb2d1              # double 0.90051800000000004
	.quad	0x3fd48d32830a0b1c              # double 0.32111800000000001
	.quad	0x3fe7e7903211cb04              # double 0.74701700000000004
	.quad	0x3fe684bc27631b58              # double 0.70370299999999997
	.quad	0x3fde940fecdd0d8d              # double 0.47778700000000002
	.quad	0x3fc7e0b4e11dbca9              # double 0.18654499999999999
	.quad	0x3fe4cd2b2bfdb4cc              # double 0.65004499999999998
	.quad	0x3fee96fa82e87d2c              # double 0.95592999999999994
	.quad	0x3fd2a59c065b63d4              # double 0.29135800000000001
	.quad	0x3fef52bb23571d1d              # double 0.97884899999999996
	.quad	0x3fe0de2478854cdb              # double 0.52711699999999995
	.quad	0x3fd9c24c404a72eb              # double 0.40248400000000001
	.quad	0x3fc1594f26aec072              # double 0.13553799999999999
	.quad	0x3fce02c9081c2e34              # double 0.23446
	.quad	0x3fe807bfe7e1fc09              # double 0.750946
	.quad	0x3fd7e7ff583a53b9              # double 0.37353500000000001
	.quad	0x3fd13a2df9378ee3              # double 0.26917600000000003
	.quad	0x3fee91dffc5479d5              # double 0.95530700000000002
	.quad	0x3fe34e22a2c23748              # double 0.60328800000000005
	.quad	0x3feab9d3cbc48f11              # double 0.83518400000000004
	.quad	0x3fc2d78c436fc159              # double 0.147203
	.quad	0x3fef36c15d2d01c1              # double 0.97543400000000002
	.quad	0x3fe2f9096bb98c7e              # double 0.59289999999999998
	.quad	0x3fe39287c200c0f0              # double 0.61163699999999999
	.quad	0x3f8929ed3953dea4              # double 0.012286999999999999
	.quad	0x3fe9ca148ba83f4f              # double 0.80591800000000002
	.quad	0x3fe36516db0dd830              # double 0.60609000000000002
	.quad	0x3fa425d074213a0c              # double 0.039350999999999997
	.quad	0x3fe867cd03537197              # double 0.76267099999999999
	.quad	0x3feb87442c7fbacb              # double 0.86026199999999997
	.quad	0x3fa9715c63ae2542              # double 0.049693000000000001
	.quad	0x3fad74f722e1ac58              # double 0.057533000000000001
	.quad	0x3feb424e59296702              # double 0.85184400000000005
	.quad	0x3fbb0eb24a6a875d              # double 0.105693
	.quad	0x3fe74face67d77fb              # double 0.72847600000000001
	.quad	0x3fd373fb7a5f41af              # double 0.303954
	.quad	0x3fd207f66e86c658              # double 0.28173599999999999
	.quad	0x3fd7a93293d102bc              # double 0.36970199999999998
	.quad	0x3fe817fc7607c41a              # double 0.75292800000000004
	.quad	0x3fdd40fecdd0d8cb              # double 0.457092
	.quad	0x3fe4a31e7d9988d3              # double 0.64491200000000004
	.quad	0x3fc7439de481f538              # double 0.181751
	.quad	0x3fee23bddfc9ff93              # double 0.94186300000000001
	.quad	0x3fe4824f6598e10d              # double 0.640907
	.quad	0x3fed5043e5321e60              # double 0.91604799999999997
	.quad	0x3fdbb691212513b6              # double 0.43301800000000001
	.quad	0x3fe0a7f8012dfd69              # double 0.52050399999999997
	.quad	0x3fef803ab862b27d              # double 0.98440300000000002
	.quad	0x3fea25accd53048a              # double 0.81709900000000002
	.quad	0x3fee0a41a261bf38              # double 0.93875200000000003
	.quad	0x3fee0259e1f3a57f              # double 0.93778700000000004
	.quad	0x3fb93bc0a06e9ff1              # double 0.098568000000000003
	.quad	0x3fe2a0f9096bb98c              # double 0.58214999999999995
	.quad	0x3fb743a647fdc593              # double 0.090875999999999998
	.quad	0x3fe4a059a73b42cc              # double 0.64457399999999998
	.quad	0x3fe2129888f861a6              # double 0.56476999999999999
	.quad	0x3fd4d655e28aa433              # double 0.32558199999999998
	.quad	0x3fd0c903ea704bc2              # double 0.26226899999999997
	.quad	0x3fef4aff6d330942              # double 0.97790500000000002
	.quad	0x3fa4df8b1572580c              # double 0.040767999999999999
	.quad	0x3fe437bd05af6c6a              # double 0.63180400000000003
	.quad	0x3fe293250b52439a              # double 0.58046200000000003
	.quad	0x3fc5104d551d68c7              # double 0.16456000000000001
	.quad	0x3fc92d905c033615              # double 0.19670299999999999
	.quad	0x3fe09d5a187a4a49              # double 0.519208
	.quad	0x3feb4bd33d29563b              # double 0.85300600000000004
	.quad	0x3fef14c87980f55e              # double 0.97128700000000001
	.quad	0x3fb4f0307f23cc8e              # double 0.081790000000000001
	.quad	0x3fd67ffde7210be9              # double 0.35156199999999999
	.quad	0x3fe98984e3ffef39              # double 0.798037
	.quad	0x3feaf03afb7e9100              # double 0.84182500000000005
	.quad	0x3fd87a9e2bcf91a3              # double 0.38248399999999999
	.quad	0x3fe98194c0160525              # double 0.797068
	.quad	0x3fa43fa2ad3e920c              # double 0.039548
	.quad	0x3fe1df6ba0620ab7              # double 0.55852299999999999
	.quad	0x3fe934c5da6a4441              # double 0.78769199999999995
	.quad	0x3fe26af89c5e6ff8              # double 0.57555800000000001
	.quad	0x3fa436976bc1effa              # double 0.039479
	.quad	0x3fe0d76ab5807fed              # double 0.52629599999999999
	.quad	0x3fd3dd22856605ee              # double 0.31037199999999998
	.quad	0x3fd7820a30db6a1f              # double 0.36731200000000003
	.quad	0x3fc7ec3547e06962              # double 0.18689600000000001
	.quad	0x3fe940b5675579af              # double 0.78914899999999999
	.quad	0x3fe9d495182a9931              # double 0.80720000000000003
	.quad	0x3fe93b6672fba01f              # double 0.78850100000000001
	.quad	0x3fc0bb23571d1d47              # double 0.13071099999999999
	.quad	0x3fdf317efe0ce0b9              # double 0.487396
	.quad	0x3fefaada33bd9cae              # double 0.98960599999999999
	.quad	0x3fcbb4e54f7a9197              # double 0.21645800000000001
	.quad	0x3fe0a0b8066c2acc              # double 0.51961900000000005
	.quad	0x3fe754e2b063e07a              # double 0.72911199999999998
	.quad	0x3fe4c08fa7a85016              # double 0.64850600000000003
	.quad	0x3fe51bfbdf090f73              # double 0.65966599999999997
	.quad	0x3fef08a265f0f5a1              # double 0.96980399999999999
	.quad	0x3fc77cbb3c81908e              # double 0.18349399999999999
	.quad	0x3f8f43419e300150              # double 0.015265000000000001
	.quad	0x3fbbeb399f5dfeb9              # double 0.109058
	.quad	0x3fca4588a04d1202              # double 0.20524700000000001
	.quad	0x3fe5fd9988d2a1f9              # double 0.68720700000000001
	.quad	0x3fd2b37867f0aa22              # double 0.29220400000000002
	.quad	0x3fe9e30446b69db6              # double 0.80896199999999996
	.quad	0x3fcf56c93a711516              # double 0.244836
	.quad	0x3fc30435efa615a9              # double 0.148566
	.quad	0x3fd6d5bee3d5fdce              # double 0.356796
	.quad	0x3fd5232096787ce9              # double 0.33026899999999998
	.quad	0x3fd8eea63b688bdb              # double 0.38956600000000002
	.quad	0x3fdd93d102bc72e2              # double 0.46214699999999997
	.quad	0x3fd1c176577531db              # double 0.27743299999999999
	.quad	0x3fada9c99285a922              # double 0.057936000000000001
	.quad	0x3fe23734b51372a4              # double 0.56923900000000005
	.quad	0x3fe97e36d22424a2              # double 0.79665699999999995
	.quad	0x3fc9682730c67169              # double 0.198491
	.quad	0x3fe11e34330d7386              # double 0.534937
	.quad	0x3fec5c50ce4ead0c              # double 0.88626899999999997
	.quad	0x3fd7fa1e3eaf6838              # double 0.374641
	.quad	0x3fb99bf5946c332f              # double 0.100036
	.quad	0x3fd398fa376922d9              # double 0.30621199999999998
	.quad	0x3fe8e1eb4202d9cf              # double 0.77757799999999999
	.quad	0x3fbeef1bac2df0d4              # double 0.120836
	.quad	0x3fd5e80389f83be6              # double 0.34228599999999998
	.quad	0x3fd3aec8d5c74752              # double 0.30754300000000001
	.quad	0x3fdc7df5cf2495e1              # double 0.44518799999999997
	.quad	0x3fcbe9c0229a5ebb              # double 0.21807099999999999
	.quad	0x3fd6a5f41aef6f8f              # double 0.353879
	.quad	0x3fea4f69ca9ef523              # double 0.82219399999999998
	.quad	0x3fd97dfa00e27e0f              # double 0.398314
	.quad	0x3fe2bac0c62e4d1a              # double 0.58529699999999996
	.quad	0x3fa46c764adff823              # double 0.039890000000000002
	.quad	0x3fbcc32a8c9b8455              # double 0.11235299999999999
	.quad	0x3fda2074ea8da7f4              # double 0.40823100000000001
	.quad	0x3fe014ea077036ca              # double 0.50255300000000003
	.quad	0x3fd76c0d6f544bb2              # double 0.36597000000000002
	.quad	0x3fa7d82773e24fec              # double 0.046571000000000001
	.quad	0x3fe2466b1e5c0b9a              # double 0.57109600000000005
	.quad	0x3fef80e27e0ef998              # double 0.98448299999999999
	.quad	0x3fd58ecd8dbcec85              # double 0.336841
	.quad	0x3fd6415f45e0b4e1              # double 0.34773999999999999
	.quad	0x3fe6c87db2b34613              # double 0.711974
	.quad	0x3fe8c98a222d5172              # double 0.77460200000000001
	.quad	0x3fcba24894c447c3              # double 0.21589
	.quad	0x3fe90913a4f8726d              # double 0.782358
	.quad	0x3fdabacf7446f9ba              # double 0.41765200000000002
	.quad	0x3fabc98a222d5172              # double 0.054272000000000001
	.quad	0x3fb3e43675ddd2af              # double 0.077701000000000006
	.quad	0x3fb1adea897635e7              # double 0.069059999999999996
	.quad	0x3fe6589efd86a8fc              # double 0.69831799999999999
	.quad	0x3fb04bf4cb1897a6              # double 0.063658999999999993
	.quad	0x3fe0d81f10667f91              # double 0.52638200000000002
	.quad	0x3fd1dc2b0ea18373              # double 0.27906300000000001
	.quad	0x3f889efd86a8fc0d              # double 0.012022
	.quad	0x3fc8bf4cb1897a68              # double 0.19333800000000001
	.quad	0x3fe05f7403dddb12              # double 0.511652
	.quad	0x3fd5579af1886df8              # double 0.33347199999999999
	.quad	0x3febc6822ff08894              # double 0.86798200000000003
	.quad	0x3fe0c567125dd096              # double 0.52409700000000004
	.quad	0x3fcc43d46b26bf87              # double 0.22081999999999999
	.quad	0x3fe81bae46cfc82a              # double 0.75337900000000002
	.quad	0x3fe00f0c77dd872f              # double 0.50183699999999998
	.quad	0x3fda63baba7b9171              # double 0.41233700000000001
	.quad	0x3fec42d490e66cb1              # double 0.883158
	.quad	0x3feaa7c9de050375              # double 0.832982
	.quad	0x3fee4306e5cd4ed3              # double 0.94568200000000002
	.quad	0x3fc23c85c24c404a              # double 0.14247199999999999
	.quad	0x3f893bc0a06e9ff1              # double 0.012321
	.quad	0x3fef4f1a1986b9c3              # double 0.97840599999999999
	.quad	0x3fb64b662fdfc19c              # double 0.087087999999999999
	.quad	0x3fe30257c914b168              # double 0.59403600000000001
	.quad	0x3fee1d4d834091c1              # double 0.94107700000000005
	.quad	0x3fa8cf398e970718              # double 0.048455999999999999
	.quad	0x3fe124bdba0a5269              # double 0.53573499999999996
	.quad	0x3fe076cefed63455              # double 0.51450300000000004
	.quad	0x3fef52fc2656abde              # double 0.97887999999999997
	.quad	0x3fefcca70d1fa333              # double 0.99373199999999994
	.quad	0x3fe8a59c065b63d4              # double 0.77021600000000001
	.quad	0x3fe67583a53b8e4c              # double 0.70184500000000005
	.quad	0x3fecd9f4d37c1377              # double 0.90160600000000002
	.quad	0x3fe1e4f765fd8adb              # double 0.55920000000000003
	.quad	0x3fe304fb1183b603              # double 0.59435800000000005
	.quad	0x3fe778fabda0dfdf              # double 0.733518
	.quad	0x3fd5d55e6bc621b8              # double 0.34114800000000001
	.quad	0x3fec72c0e7bc3c5c              # double 0.88900800000000002
	.quad	0x3fe2d4d4024b33db              # double 0.58848
	.quad	0x3fea7baa9b499d02              # double 0.827596
	.quad	0x3fe00c804102ff8f              # double 0.50152600000000003
	.quad	0x3fe79ecb31c219eb              # double 0.73813399999999996
	.quad	0x3fc1b17ce52deca2              # double 0.13822899999999999
	.quad	0x3fca2e2328f9f44d              # double 0.20453299999999999
	.quad	0x3f847ae147ae147b              # double 0.01
	.quad	0x3fe4d5d80e496edf              # double 0.65110400000000002
	.quad	0x3fb21f6cacd184c2              # double 0.070791999999999994
	.quad	0x3feb740e5a35d67c              # double 0.85791700000000004
	.quad	0x3fb6f3b213e3e293              # double 0.089656
	.quad	0x3fdcea7ce0fc2eba              # double 0.45181199999999999
	.quad	0x3fea4fede97d06bc              # double 0.82225700000000001
	.quad	0x3fe283126e978d50              # double 0.57850000000000001
	.quad	0x3fd6da7f3cf70154              # double 0.35708600000000001
	.quad	0x3fe7d84901d19158              # double 0.74515200000000004
	.quad	0x3fed52e72da122fb              # double 0.91637000000000002
	.quad	0x3fe8e2a3cea6c1a0              # double 0.77766599999999996
	.quad	0x3fe7ef7c243dccea              # double 0.74798399999999998
	.quad	0x3fe803afb7e90ff9              # double 0.75044999999999995
	.quad	0x3fd5eb4202d9cf14              # double 0.34248400000000001
	.quad	0x3fb3829068986fce              # double 0.076211000000000001
	.quad	0x3fe8cc89b0ee49f5              # double 0.77496799999999999
	.quad	0x3fe2aa497fa5d28d              # double 0.583287
	.quad	0x3fef0e60807357e6              # double 0.97050499999999995
	.quad	0x3fc5c8e25c810a57              # double 0.17019300000000001
	.quad	0x3fea495e17e34b94              # double 0.82145599999999996
	.quad	0x3fdaa2ca9ac36545              # double 0.416186
	.quad	0x3fefaae4b0186120              # double 0.98961100000000001
	.quad	0x3fc216df3f961805              # double 0.141323
	.quad	0x3fec615ebfa8f7db              # double 0.88688599999999995
	.quad	0x3fdd3c89f40a2878              # double 0.45682
	.quad	0x3fd655432873bc90              # double 0.34895399999999999
	.quad	0x3fecd1aeb3dd11be              # double 0.90059599999999995
	.quad	0x3fe0be963dc486ad              # double 0.52326499999999998
	.quad	0x3fe5068b9fdbd2fa              # double 0.65704899999999999
	.quad	0x3fdd6887a8d64d7f              # double 0.459505
	.quad	0x3feb5fd694ccab3f              # double 0.85544900000000001
	.quad	0x3fe3ca771c970f7c              # double 0.61846500000000004
	.quad	0x3fdfd12cadddf43c              # double 0.49714199999999997
	.quad	0x3fe85b2b3461309c              # double 0.76112899999999994
	.quad	0x3fd684167a95c854              # double 0.35181200000000001
	.quad	0x3fcfcaafbc1acde2              # double 0.24837300000000001
	.quad	0x3fe46976bc1effa0              # double 0.63787400000000005
	.quad	0x3fd16eac8605681f              # double 0.27238000000000001
	.quad	0x3feff3882278d0cc              # double 0.99847799999999997
	.quad	0x3fc748f53c579f23              # double 0.18191399999999999
	.quad	0x3fe168cac4b4d057              # double 0.54404200000000003
	.quad	0x3feda10be9424e59              # double 0.92590899999999998
	.quad	0x3fe7afdb8fde2ef5              # double 0.74021700000000001
	.quad	0x3fe826e32e3821af              # double 0.75474699999999995
	.quad	0x3fed313be22e5de1              # double 0.91225999999999996
	.quad	0x3fec395a294141ea              # double 0.88200100000000003
	.quad	0x3fc41fe21d96e9bc              # double 0.157223
	.quad	0x3feb9c842fa50939              # double 0.86285599999999996
	.quad	0x3fed55e6bc621b7e              # double 0.916736
	.quad	0x3fd5f544bb1af3a1              # double 0.34309499999999998
	.quad	0x3fde317268d32831              # double 0.47176800000000002
	.quad	0x3fe8955f78359bc3              # double 0.76823399999999997
	.quad	0x3fe0356fb8f57f73              # double 0.50652299999999995
	.quad	0x3fe4a0d130df9bdc              # double 0.64463099999999995
	.quad	0x3fec58dde7a743a6              # double 0.88584799999999997
	.quad	0x3fcc26809d495183              # double 0.21992500000000001
	.quad	0x3fe5154866a11ec9              # double 0.65884799999999999
	.quad	0x3feff71001d5c316              # double 0.99890900000000005
	.quad	0x3fdc0d2c386d2ed8              # double 0.43830400000000003
	.quad	0x3fe430813cab81f9              # double 0.63092099999999995
	.quad	0x3fafa8d64d7f0ed4              # double 0.061835000000000001
	.quad	0x3fed76427c7c5261              # double 0.920686
	.quad	0x3fe0332acfb762d8              # double 0.50624599999999997
	.quad	0x3fa7623076c050be              # double 0.045671000000000003
	.quad	0x3fefb5675579af19              # double 0.99089400000000005
	.quad	0x3f99f72f76e6106b              # double 0.025357000000000001
	.quad	0x3fe6472e275ab7dc              # double 0.69618899999999995
	.quad	0x3feabb4f61672325              # double 0.83536500000000002
	.quad	0x3fe52de43ed959a3              # double 0.661852
	.quad	0x3fef5c182ecaeea6              # double 0.97999199999999997
	.quad	0x3fe4536501e2584f              # double 0.63517999999999997
	.quad	0x3fe62f8df7a4e7ab              # double 0.69330499999999995
	.quad	0x3fc743aeab7995ee              # double 0.181753
	.quad	0x3fb3f3f0fe047d3d              # double 0.077940999999999996
	.quad	0x3fe19357603925bb              # double 0.54923599999999995
	.quad	0x3fbd0fd7e45803cd              # double 0.113523
	.quad	0x3feb08feac42e98a              # double 0.84484800000000004
	.quad	0x3fe8b7110e453d21              # double 0.77234700000000001
	.quad	0x3fe2ba83f4eca687              # double 0.58526800000000001
	.quad	0x3fe7963baba7b917              # double 0.73708899999999999
	.quad	0x3fb52e72da122fad              # double 0.082739999999999994
	.quad	0x3fe2fe06961c3697              # double 0.59350899999999995
	.quad	0x3fa0316a055757d6              # double 0.031627000000000002
	.quad	0x3fd0dc65c70435f0              # double 0.26345200000000002
	.quad	0x3feffa919695d91b              # double 0.99933700000000003
	.quad	0x3fe925cc426351df              # double 0.78586400000000001
	.quad	0x3fd93bd1676640a7              # double 0.39427600000000002
	.quad	0x3fec89f83be6601c              # double 0.89184200000000002
	.quad	0x3feb736262cba733              # double 0.85783500000000001
	.quad	0x3fc7353b4b2fa93b              # double 0.181312
	.quad	0x3fbc241c3efae792              # double 0.109926
	.quad	0x3fe9e78e1932d6ed              # double 0.80951600000000001
	.quad	0x3fd3638c9752977d              # double 0.30295100000000003
	.quad	0x3fec1c1f85d744f6              # double 0.87843300000000002
	.quad	0x3fe6c56f75d9a0f1              # double 0.71160100000000004
	.quad	0x3fd0aa326e115593              # double 0.26038800000000001
	.quad	0x3fe01198aeb80ed0              # double 0.50214800000000004
	.quad	0x3f984b1ab0856e69              # double 0.023723999999999999
	.quad	0x3feece4217d2849d              # double 0.96267800000000003
	.quad	0x3fe45cf67b1c0011              # double 0.63634800000000002
	.quad	0x3fd9aa433508f649              # double 0.40101700000000001
	.quad	0x3f996638433d6c72              # double 0.024804
	.quad	0x3fd83ce2089e3433              # double 0.378716
	.quad	0x3fcb626b2f23033a              # double 0.21394099999999999
	.quad	0x3fdc754f3775b813              # double 0.44466
	.quad	0x3fe72ed1394317ad              # double 0.72446500000000003
	.quad	0x3fe5391f70de8f6d              # double 0.66322300000000001
	.quad	0x3fe44cb5bb384fd3              # double 0.63436400000000004
	.quad	0x3feee76640a6b93d              # double 0.96574700000000002
	.quad	0x3fe1581adea89763              # double 0.54200499999999996
	.quad	0x3fec94b380cb6c7a              # double 0.89315199999999995
	.quad	0x3fe3f585be1a8262              # double 0.62372099999999997
	.quad	0x3fe717fc7607c41a              # double 0.72167800000000004
	.quad	0x3feeeebb341e14be              # double 0.966642
	.quad	0x3fec45f394b7b289              # double 0.88353899999999996
	.quad	0x3fb0e3369b9d7fd8              # double 0.065966999999999998
	.quad	0x3fe5f7c45cbbc2b9              # double 0.68649499999999997
	.quad	0x3fd156b873797460              # double 0.27091799999999999
	.quad	0x3f99d66adb402d17              # double 0.025232000000000001
	.quad	0x3fd69ea57214f052              # double 0.353433
	.quad	0x3fcbe64f54d1e96c              # double 0.21796599999999999
	.quad	0x3fe10029f16b11c7              # double 0.53127000000000002
	.quad	0x3fc6f1800a7c5ac4              # double 0.17924499999999999
	.quad	0x3fd7834d26fa3fcd              # double 0.36738900000000002
	.quad	0x3fe4948fd9fd36f8              # double 0.64313500000000001
	.quad	0x3fdb54f3775b8130              # double 0.42706
	.quad	0x3fc75a858793dd98              # double 0.18245
	.quad	0x3fed6d4c33b53932              # double 0.91959199999999996
	.quad	0x3fea7bdcf0307f24              # double 0.82762000000000002
	.quad	0x3fcf098d477bbf94              # double 0.242479
	.quad	0x3fed31f03d145d85              # double 0.91234599999999999
	.quad	0x3fe586013660e51d              # double 0.67260799999999998
	.quad	0x3fed471d60631727              # double 0.91493100000000005
	.quad	0x3fdb691212513b5c              # double 0.428288
	.quad	0x3fe6e94ab1d4f9c2              # double 0.715978
	.quad	0x3fe3939c94f69caa              # double 0.61176900000000001
	.quad	0x3fc88900c521dda0              # double 0.19168099999999999
	.quad	0x3fe3f2085b18548b              # double 0.62329500000000004
	.quad	0x3fc801ffb480a5ad              # double 0.18756100000000001
	.quad	0x3fe3e4a16a487336              # double 0.62165899999999996
	.quad	0x3feb16ca46e08f21              # double 0.84653199999999995
	.quad	0x3fbfe5eaab042529              # double 0.124602
	.quad	0x3fe428b4bf8fcd68              # double 0.629969
	.quad	0x3fcde95b78cc9a78              # double 0.233684
	.quad	0x3fe84295a6c5d207              # double 0.75812800000000002
	.quad	0x3fee6ce9a2c66905              # double 0.95079499999999995
	.quad	0x3fd4a90470a808c8              # double 0.32281599999999999
	.quad	0x3fe89478c868b9fe              # double 0.76812400000000003
	.quad	0x3fee3de6149c6f37              # double 0.94505600000000001
	.quad	0x3fb423e9ea140571              # double 0.078673000000000007
	.quad	0x3fef36933a0407cc              # double 0.97541199999999994
	.quad	0x3fe28f9d2bf55150              # double 0.58003099999999996
	.quad	0x3fe2d8b827fa1a0d              # double 0.58895500000000001
	.quad	0x3fd4903211cb039f              # double 0.321301
	.quad	0x3fec5b7f1737542a              # double 0.88616899999999998
	.quad	0x3fbebfa8f7db6e50              # double 0.120112
	.quad	0x3fefee5cd4ed2cbf              # double 0.99784700000000003
	.quad	0x3fce3dbc23315d70              # double 0.236259
	.quad	0x3fe6e1f3a57eaa2a              # double 0.715082
	.quad	0x3fe8cfede97d06bc              # double 0.77538200000000001
	.quad	0x3fe0426bb55ac040              # double 0.508108
	.quad	0x3feaa35935fc3b4f              # double 0.83243999999999996
	.quad	0x3fe8544dca8e2e2c              # double 0.76029100000000005
	.quad	0x3fafdfc19c17225b              # double 0.062253999999999997
	.quad	0x3fdcc21e1d2178f7              # double 0.44934800000000003
	.quad	0x3fdb940789613d32              # double 0.43091000000000002
	.quad	0x3fd1d1e96c3fc43b              # double 0.27843699999999999
	.quad	0x3fdd55e28aa43351              # double 0.45836700000000002
	.quad	0x3fd6b018611fd588              # double 0.35449799999999998
	.quad	0x3fc6e618ce2d1f1d              # double 0.178897
	.quad	0x3fe1e4de3b8a19ca              # double 0.55918800000000002
	.quad	0x3fee64430b178b37              # double 0.949739
	.quad	0x3fd738da3c21187e              # double 0.36284499999999997
	.quad	0x3fdb4ba94bbe4474              # double 0.42649300000000001
	.quad	0x3fea56fb8f57f738              # double 0.82311800000000002
	.quad	0x3fdea276b7ed41b7              # double 0.47866599999999998
	.quad	0x3fe469680e065300              # double 0.63786699999999996
	.quad	0x3fe826a012599ed8              # double 0.75471500000000002
	.quad	0x3fe5251c193b3a69              # double 0.66078000000000003
	.quad	0x3fe42821f2990f30              # double 0.62989899999999999
	.quad	0x3fb7dbd2fa0d77b8              # double 0.093198000000000003
	.quad	0x3feba6e5471715c6              # double 0.86412299999999997
	.quad	0x3f70ea9e6eeb7026              # double 0.00413
	.quad	0x3fee3c85c24c404a              # double 0.94488799999999995
	.quad	0x3fe7ddf00abf76a3              # double 0.745842
	.quad	0x3fda9fcf3dc054ef              # double 0.41600399999999998
	.quad	0x3fd58bcdfefbf402              # double 0.33665800000000001
	.quad	0x3fe9bd145d851655              # double 0.80433100000000002
	.quad	0x3fe993f290abb44e              # double 0.79930999999999996
	.quad	0x3fe1cbf8fcd67fd4              # double 0.556149
	.quad	0x3fee9e7b80a9de8b              # double 0.95684599999999997
	.quad	0x3fe2825e13b18dac              # double 0.57841399999999998
	.quad	0x3fb5ccfaeff5c6c1              # double 0.085158999999999999
	.quad	0x3fe57d30ad46f588              # double 0.67153200000000002
	.quad	0x3fbe37de939eadd6              # double 0.11804000000000001
	.quad	0x3fee886bdf4c2b52              # double 0.95415300000000003
	.quad	0x3fe82704bc27631b              # double 0.75476299999999996
	.quad	0x3feb129cbab649d4              # double 0.84602200000000005
	.quad	0x3fd1314013ec460f              # double 0.26863100000000001
	.quad	0x3fe4ad40aaeafab5              # double 0.64614899999999997
	.quad	0x3fb4605681ecd4aa              # double 0.079594999999999999
	.quad	0x3fe42ed783dff3f1              # double 0.630718
	.quad	0x3fd4083dbc23315d              # double 0.31300299999999998
	.quad	0x3fec16ededaec4a4              # double 0.87779899999999999
	.quad	0x3fed9bc558644524              # double 0.925265
	.quad	0x3fe70b955f78359c              # double 0.72016400000000003
	.quad	0x3fd6013a92a30553              # double 0.34382499999999999
	.quad	0x3fd31001d5c31594              # double 0.29785200000000001
	.quad	0x3fab463497b7414a              # double 0.053269999999999998
	.quad	0x3fe6d1c9f72f76e6              # double 0.71310899999999999
	.quad	0x3fee6d612c6ac216              # double 0.95085200000000003
	.quad	0x3fbd0c1b97353b4b              # double 0.113466
	.quad	0x3fe755b4677b395c              # double 0.72921199999999997
	.quad	0x3fc9bc4d22c881e4              # double 0.20105899999999999
	.quad	0x3fd066772d5e071c              # double 0.25625399999999998
	.quad	0x3fd14a2339c0ebee              # double 0.27015
	.quad	0x3fe7240314877681              # double 0.72314599999999996
	.quad	0x3fe259c27e953155              # double 0.57345699999999999
	.quad	0x3febeb2074ea8da8              # double 0.87245200000000001
	.quad	0x3fe127503b81b64e              # double 0.536049
	.quad	0x3fcc1a36e2eb1c43              # double 0.21955
	.quad	0x3fe2a31a4bdba0a5              # double 0.58240999999999998
	.quad	0x3fe5aa5c5f7c675a              # double 0.67704600000000004
	.quad	0x3fee5610adcd2d45              # double 0.94800600000000002
	.quad	0x3fef123810e88590              # double 0.970974
	.quad	0x3fd7f15a4acf312b              # double 0.37410599999999999
	.quad	0x3fbdac57e23f24d9              # double 0.115911
	.quad	0x3fe024766c6de764              # double 0.50445099999999998
	.quad	0x3fe596616b54e2b0              # double 0.67460699999999996
	.quad	0x3fe521e3eaf6837f              # double 0.66038699999999995
	.quad	0x3fe28b88ca3e7d13              # double 0.57953299999999996
	.quad	0x3fc698fe69270b07              # double 0.17654400000000001
	.quad	0x3fe02fad6cb53501              # double 0.50582000000000005
	.quad	0x3fde18c197e56473              # double 0.47026099999999998
	.quad	0x3fd154a3c64345d0              # double 0.270791
	.quad	0x3fe921c475e6362a              # double 0.78537199999999996
	.quad	0x3fee02bc72e275ab              # double 0.93783399999999995
	.quad	0x3fd70f2389720429              # double 0.36029899999999998
	.quad	0x3fd9593e5fb71fbc              # double 0.39607199999999998
	.quad	0x3fd4cea28fe260b3              # double 0.32511200000000001
	.quad	0x3fe0c827b6fe2e6f              # double 0.52443300000000004
	.quad	0x3fc50a67620ee8d1              # double 0.16438
	.quad	0x3fcf8d823422467c              # double 0.246506
	.quad	0x3fe1b88a8b08dd1e              # double 0.55377699999999996
	.quad	0x3fbbe20ccff21b3b              # double 0.108918
	.quad	0x3fd3bb1f255f351a              # double 0.30829600000000001
	.quad	0x3fd978fabda0dfdf              # double 0.398009
	.quad	0x3f9677b395c42203              # double 0.021940999999999999
	.quad	0x3f8a6aca79357604              # double 0.012899000000000001
	.quad	0x3fd8e82517e77d52              # double 0.38916899999999999
	.quad	0x3fe87b99d451fc4c              # double 0.76508799999999999
	.quad	0x3fcf1aeb3dd11be7              # double 0.243009
	.quad	0x3fe34636b0963561              # double 0.602321
	.quad	0x3fe5c8626f60e0eb              # double 0.68071099999999996
	.quad	0x3fe7a3df6db940ff              # double 0.73875400000000002
	.quad	0x3fe4b7dc7abfb9bf              # double 0.64744400000000002
	.quad	0x3f90346dc5d63886              # double 0.015824999999999999
	.quad	0x3fc4fb00bcbe61d0              # double 0.16391
	.quad	0x3fb2049ecb31c21a              # double 0.070383000000000001
	.quad	0x3fe317a02fb5d031              # double 0.596634
	.quad	0x3fca50b524399b2c              # double 0.20558799999999999
	.quad	0x3fba5accd530489d              # double 0.102948
	.quad	0x3feda11a975afaf8              # double 0.92591599999999996
	.quad	0x3fe9de310dbf0564              # double 0.808373
	.quad	0x3fee0856e696a26e              # double 0.93851799999999996
	.quad	0x3fe25c725c3dee78              # double 0.57378499999999999
	.quad	0x3fe3c714fce746cc              # double 0.61805200000000005
	.quad	0x3fd8620ab7132724              # double 0.38098399999999999
	.quad	0x3fede8cef672b884              # double 0.93466899999999997
	.quad	0x3fc3ae5796bfca86              # double 0.15375800000000001
	.quad	0x3fe59667b5f1bef5              # double 0.67461000000000004
	.quad	0x3fe8f28848387df6              # double 0.77960600000000002
	.quad	0x3fe96d15ad106ee3              # double 0.79456599999999999
	.quad	0x3fea0ac9f2fdb8fe              # double 0.81381700000000001
	.quad	0x3fd98769ec2ce465              # double 0.39889000000000002
	.quad	0x3fe4473471f79421              # double 0.63369200000000003
	.quad	0x3fe8062b27cbf6e4              # double 0.750753
	.quad	0x3fa6ff7dfa00e27e              # double 0.044918
	.quad	0x3fc05accd530489d              # double 0.127771
	.quad	0x3fe4d334c5da6a44              # double 0.65078199999999997
	.quad	0x3fe32d4b2745bf27              # double 0.59927900000000001
	.quad	0x3fd24738a3b57c4e              # double 0.28559699999999999
	.quad	0x3fee5eaee2003ab8              # double 0.94905799999999995
	.quad	0x3fd1cdab191dde37              # double 0.27817799999999998
	.quad	0x3fe51eabbcb1cc96              # double 0.65999399999999997
	.quad	0x3fb2679463cfb331              # double 0.071892999999999999
	.quad	0x3fc1a8826aa8eb46              # double 0.13795499999999999
	.quad	0x3feb7f9f87f023ea              # double 0.85932900000000001
	.quad	0x3fefa730c67168f9              # double 0.98915900000000001
	.quad	0x3fa24d4cb9ecf638              # double 0.035746
	.quad	0x3fda7d06bbdbe3c1              # double 0.413881
	.quad	0x3fb1e69ad42c3c9f              # double 0.069925000000000001
	.quad	0x3fde20ea5b530ced              # double 0.47075899999999998
	.quad	0x3fde39d5e4a38327              # double 0.47227999999999998
	.quad	0x3fd2bf0995aaf790              # double 0.29291
	.quad	0x3fd6f1e4b44a1f08              # double 0.358514
	.quad	0x3f6b79d909f1f14a              # double 0.0033540000000000002
	.quad	0x3fb7966be7afa722              # double 0.092138999999999998
	.quad	0x3fbe4f3343fa2ad4              # double 0.118396
	.quad	0x3fe8b77e1b8ed1bf              # double 0.77239899999999995
	.quad	0x3fc36a6a012599ed              # double 0.15168499999999999
	.quad	0x3feaa37ef5a964e9              # double 0.83245800000000003
	.quad	0x3fe74f97edc7ef17              # double 0.72846599999999995
	.quad	0x3fc07210be9424e6              # double 0.12848100000000001
	.quad	0x3feace3de6149c6f              # double 0.83767599999999998
	.quad	0x3fe7a0d9945b6c37              # double 0.73838499999999996
	.quad	0x3fe0e83a109d0636              # double 0.52834800000000004
	.quad	0x3fd089d27c393682              # double 0.25841199999999998
	.quad	0x3fe2bf24d8fd5cb8              # double 0.58583300000000005
	.quad	0x3fe736544fe36d22              # double 0.72538199999999997
	.quad	0x3fe4afcefaa4766c              # double 0.64646099999999995
	.quad	0x3fafba237cdcca71              # double 0.061967000000000001
	.quad	0x3fcbc664d3bf2f55              # double 0.21699199999999999
	.quad	0x3fc244523f67f4dc              # double 0.14271
	.quad	0x3fdd4fca42aed139              # double 0.45799499999999999
	.quad	0x3fe5f4256bca5376              # double 0.68605300000000002
	.quad	0x3fe42452c59fb1e2              # double 0.62943400000000005
	.quad	0x3fd2fd36f7e3d1cc              # double 0.296705
	.quad	0x3fce8b86b15f88fd              # double 0.23863300000000001
	.quad	0x3fc9d7a99fa11a97              # double 0.20189399999999999
	.quad	0x3fdb7afea3df6db9              # double 0.42938199999999999
	.quad	0x3fe8f16f4384ba0f              # double 0.77947200000000005
	.quad	0x3fe3c906034f3fd9              # double 0.61828899999999998
	.quad	0x3fe62ee2003ab863              # double 0.69322300000000003
	.quad	0x3fec85f6ba0620ab              # double 0.89135299999999995
	.quad	0x3fb4fd9fd36f7e3d              # double 0.081994999999999998
	.quad	0x3fe9db4aa9717df2              # double 0.80801900000000004
	.quad	0x3fc5316e37154003              # double 0.165571
	.quad	0x3fcfb480a5accd53              # double 0.247696
	.quad	0x3fd882e87d2c7b89              # double 0.38299
	.quad	0x3fe4d47bedb72820              # double 0.65093800000000002
	.quad	0x3fe4bc2dadb8348f              # double 0.64797099999999996
	.quad	0x3fe6dd3dc8b86b16              # double 0.714507
	.quad	0x3fe63aa9b499d020              # double 0.69466099999999997
	.quad	0x3fe0f9bfdf7e8039              # double 0.53048700000000004
	.quad	0x3fceff972474538f              # double 0.242175
	.quad	0x3fed5a16616b54e3              # double 0.91724700000000003
	.quad	0x3fc23f78bbd38045              # double 0.14256199999999999
	.quad	0x3fec914d2f5dbb9d              # double 0.892737
	.quad	0x3fe977c02afdda8c              # double 0.79586800000000001
	.quad	0x3fd76909aed56b01              # double 0.365786
	.quad	0x3fbfd03968d759ef              # double 0.12427100000000001
	.quad	0x3fd326634117f844              # double 0.29921799999999998
	.quad	0x3fe5d273d5bab218              # double 0.68193999999999999
	.quad	0x3fe8378cc9a77e5f              # double 0.75678100000000004
	.quad	0x3fe186b15f88fc93              # double 0.54769199999999996
	.quad	0x3fe0a90eed02cd3a              # double 0.52063700000000002
	.quad	0x3fe308aac96cc5fc              # double 0.594808
	.quad	0x3fc3834091c08744              # double 0.152443
	.quad	0x3fec9e3eaf6837f8              # double 0.89431700000000003
	.quad	0x3fc66195464dc22b              # double 0.17485300000000001
	.quad	0x3fe5a4463065f959              # double 0.67630299999999999
	.quad	0x3fd6b95a294141ea              # double 0.35506300000000002
	.quad	0x3fc11b25f633ce64              # double 0.13364100000000001
	.quad	0x3fec006d0d49949f              # double 0.87505200000000005
	.quad	0x3fe491904b3c3e75              # double 0.64276900000000003
	.quad	0x3fecb02d59d55e6c              # double 0.89650600000000002
	.quad	0x3fe4f483cafb3b75              # double 0.65484799999999999
	.quad	0x3fbeccc46950fc72              # double 0.120312
	.quad	0x3fec211ec918e326              # double 0.87904300000000002
	.quad	0x3fe08474d9c6b053              # double 0.51616899999999999
	.quad	0x3fe91b413986338b              # double 0.78457699999999997
	.quad	0x3fea02491afc04c9              # double 0.81277900000000003
	.quad	0x3fc14317acc4ef89              # double 0.13486000000000001
	.quad	0x3fd4d523b3636f3b              # double 0.32550899999999999
	.quad	0x3fdf33df2a9d627c              # double 0.487541
	.quad	0x3fe86631f8a0902e              # double 0.76247500000000001
	.quad	0x3fe6109f1f14983d              # double 0.68952899999999995
	.quad	0x3fbb524399b2c40d              # double 0.106724
	.quad	0x3febc4dca8e2e2b9              # double 0.86778100000000002
	.quad	0x3fc976cce5f7403e              # double 0.198938
	.quad	0x3fdd0e8858ff7597              # double 0.45401200000000003
	.quad	0x3fe68b135979181a              # double 0.70447700000000002
	.quad	0x3fe89835158b8280              # double 0.76858000000000004
	.quad	0x3fe91958969a0ad9              # double 0.78434400000000004
	.quad	0x3fb1b8023a6ce358              # double 0.069213999999999998
	.quad	0x3feb516fc9bc7714              # double 0.85369099999999997
	.quad	0x3fe76e86c6583e85              # double 0.73224199999999995
	.quad	0x3fec2925fe974a34              # double 0.88002299999999999
	.quad	0x3fe7a9d627bf61aa              # double 0.73948199999999997
	.quad	0x3fe3260f5e41d4b7              # double 0.59839600000000004
	.quad	0x3fd848301a79feca              # double 0.37940600000000002
	.quad	0x3fd3093532e7b3d9              # double 0.29743700000000001
	.quad	0x3fe4bc4f3ba775fb              # double 0.64798699999999998
	.quad	0x3fcb502ababead4f              # double 0.21338399999999999
	.quad	0x3fe15757d5a9eb20              # double 0.54191199999999995
	.quad	0x3fefdadd9c27e953              # double 0.99546699999999999
	.quad	0x3fc3d05af6c69b5a              # double 0.15479599999999999
	.quad	0x3fef9ab8e8ea39c5              # double 0.98763699999999998
	.quad	0x3fe243e100607810              # double 0.57078600000000002
	.quad	0x3fba42f1ed17c5ef              # double 0.10258399999999999
	.quad	0x3fb9e26916440f24              # double 0.10111100000000001
	.quad	0x3fe9b8bef8ceb357              # double 0.80380200000000002
	.quad	0x3fe243b2dd377e1c              # double 0.57076400000000005
	.quad	0x3fb5bccaf709b739              # double 0.084912000000000001
	.quad	0x3fc44dca8e2e2b8c              # double 0.15862399999999999
	.quad	0x3fed19d883ba3444              # double 0.90940500000000001
	.quad	0x3fd676c4827b6fe3              # double 0.35099900000000001
	.quad	0x3fe892ddbdb5d895              # double 0.76792800000000006
	.quad	0x3fbc432ca57a786c              # double 0.1104
	.quad	0x3febd67fd3f5b5fa              # double 0.86993399999999999
	.quad	0x3fde042d8c2a454e              # double 0.46900500000000001
	.quad	0x3fd11e4712e40853              # double 0.26747300000000002
	.quad	0x3fd344bf4cb1897a              # double 0.30107099999999998
	.quad	0x3fe871b8aa00192a              # double 0.76388199999999995
	.quad	0x3fae3150dae3e6c5              # double 0.058970000000000002
	.quad	0x3fdd8d1526d8b1dd              # double 0.46173599999999998
	.quad	0x3fd3a0d349be8ff3              # double 0.30669099999999999
	.quad	0x3fc9a5332acfb763              # double 0.200354
	.quad	0x3fd9b677f6b1a2a5              # double 0.40176200000000001
	.quad	0x3fd8dd7a99fa11a9              # double 0.38851799999999997
	.quad	0x3fbc5a708ede54b5              # double 0.11075500000000001
	.quad	0x3f9771c970f7b9e0              # double 0.022894999999999999
	.quad	0x3fca58255b035bd5              # double 0.205815
	.quad	0x3fd3b47c73eee526              # double 0.30789100000000003
	.quad	0x3fee5af6c69b5a64              # double 0.948604
	.quad	0x3fe629003eea209b              # double 0.69250500000000004
	.quad	0x3fe05b09a671ef31              # double 0.51111300000000004
	.quad	0x3febda426bb55ac0              # double 0.87039299999999997
	.quad	0x3fe2ed527e521577              # double 0.59147000000000005
	.quad	0x3fd44c8ffb8b2639              # double 0.31717299999999998
	.quad	0x3fea073bc903ea70              # double 0.81338299999999997
	.quad	0x3fd659ea57214f05              # double 0.34923799999999999
	.quad	0x3feb832b990afe61              # double 0.85976200000000003
	.quad	0x3fef7abda0dfdef8              # double 0.98373299999999996
	.quad	0x3fb7967caea747d8              # double 0.09214
	.quad	0x3fe40d2e514c22ee              # double 0.62660899999999997
	.quad	0x3fd46887a8d64d7f              # double 0.31888
	.quad	0x3fb732bdc26dce3a              # double 0.090618000000000004
	.quad	0x3f971c53f39d1b2e              # double 0.022568999999999999
	.quad	0x3fee84b3c3e74afd              # double 0.95369899999999996
	.quad	0x3fe89f42bb6672fc              # double 0.76944100000000004
	.quad	0x3fb5c087442c7fbb              # double 0.084969000000000003
	.quad	0x3fa9700cd855970b              # double 0.049682999999999998
	.quad	0x3fe8bf961804d984              # double 0.77338700000000004
	.quad	0x3fe4e84cf0739b02              # double 0.65335699999999997
	.quad	0x3fed4b6848beb5b3              # double 0.91545500000000002
	.quad	0x3feba1bc126a65cf              # double 0.86349299999999996
	.quad	0x3fb8b72c5197a249              # double 0.096545000000000006
	.quad	0x3fe7fe0ac7da1ec5              # double 0.74976100000000001
	.quad	0x3fe17f3cf70153bd              # double 0.54678199999999999
	.quad	0x3fd65f56a7ac81d4              # double 0.34956900000000002
	.quad	0x3fd9c5bd0e12e83a              # double 0.402694
	.quad	0x3fe1f518b0d0edc4              # double 0.56116900000000003
	.quad	0x3fd7b912dba4d6e4              # double 0.37067099999999997
	.quad	0x3fe07cf80dc33722              # double 0.51525500000000002
	.quad	0x3fdd8cc575c0767d              # double 0.46171699999999999
	.quad	0x3fe79db0142f61ed              # double 0.73799899999999996
	.quad	0x3fbef01754b05b7d              # double 0.120851
	.quad	0x3fc9419e30014f8b              # double 0.19731499999999999
	.quad	0x3feba958537e2c56              # double 0.86442200000000002
	.quad	0x3fd70e779207d4e1              # double 0.36025800000000002
	.quad	0x3fb3cb70ac3a860e              # double 0.077323000000000002
	.quad	0x3feb4057082491b0              # double 0.85160400000000003
	.quad	0x3fe9eee957470eb2              # double 0.81041399999999997
	.quad	0x3fd2114d2f5dbb9d              # double 0.282306
	.quad	0x3fd3bd2b6f19934f              # double 0.308421
	.quad	0x3fe7b5e0f7fcfc40              # double 0.74095200000000006
	.quad	0x3fd26f7e3d1cc101              # double 0.28805500000000001
	.quad	0x3fbec00da1a93294              # double 0.120118
	.quad	0x3fef5dd8f92af9a9              # double 0.98020600000000002
	.quad	0x3fcace3de6149c6f              # double 0.20941899999999999
	.quad	0x3fe653d640e9d51b              # double 0.69773399999999997
	.quad	0x3fbdc96030c23fab              # double 0.116354
	.quad	0x3fddc254a3c64346              # double 0.46498600000000001
	.quad	0x3fe93f1e8e608073              # double 0.78895499999999996
	.quad	0x3feab3c81908e582              # double 0.83444600000000002
	.quad	0x3fe68489d27c3937              # double 0.70367900000000005
	.quad	0x3fe2d0efdc9c4da9              # double 0.588005
	.quad	0x3fd58644523f67f5              # double 0.33632000000000001
	.quad	0x3fd4953586ca89fc              # double 0.32160699999999998
	.quad	0x3fdbf34d6a161e4f              # double 0.43672499999999997
	.quad	0x3fbec6de76427c7c              # double 0.120222
	.quad	0x3feeed373affb04f              # double 0.96645700000000001
	.quad	0x3fe499bd4067cf1c              # double 0.64376699999999998
	.quad	0x3fc5c2fc69728a61              # double 0.170013
	.quad	0x3fe3bc4d22c881e4              # double 0.61673599999999995
	.quad	0x3fd697e56473471f              # double 0.35302099999999997
	.quad	0x3fe9400fba8826ab              # double 0.78907000000000005
	.quad	0x3fee87fed20296b3              # double 0.95410099999999998
	.quad	0x3fdad74927913e81              # double 0.41938999999999999
	.quad	0x3febcf70153bd167              # double 0.86907199999999996
	.quad	0x3fe3d3996fa82e88              # double 0.61958000000000002
	.quad	0x3fdc01f31f46ed24              # double 0.43761899999999998
	.quad	0x3fcca6117720c8cd              # double 0.22381799999999999
	.quad	0x3fc731ec0b567558              # double 0.18121100000000001
	.quad	0x3fcedea033e78e19              # double 0.24116899999999999
	.quad	0x3fe55247cb70ac3b              # double 0.66629400000000005
	.quad	0x3fe27ce0fc2eba28              # double 0.57774400000000004
	.quad	0x3fdefd82773e24ff              # double 0.48422300000000001
	.quad	0x3fdb1df3300de4c5              # double 0.423703
	.quad	0x3fceaf46aa087ca6              # double 0.23972399999999999
	.quad	0x3fe1675147f13059              # double 0.54386199999999996
	.quad	0x3fd45cf2495e17e3              # double 0.31817299999999998
	.quad	0x3fcf5d2d01c0ca60              # double 0.245031
	.quad	0x3fe1ce874c8ffb8b              # double 0.55646099999999998
	.quad	0x3fd3313be22e5de1              # double 0.29987999999999998
	.quad	0x3fd84e618ce2d1f2              # double 0.37978400000000001
	.quad	0x3fe1130164840e17              # double 0.53356999999999999
	.quad	0x3fe6a37ac3eb7cbb              # double 0.70745599999999997
	.quad	0x3fd875147f130596              # double 0.38214599999999999
	.quad	0x3fe1eb399f5dfeb9              # double 0.55996400000000002
	.quad	0x3feba5fc7e6b3fea              # double 0.864012
	.quad	0x3fe47225b749adc9              # double 0.638934
	.quad	0x3fe1b62845996745              # double 0.55348600000000003
	.quad	0x3fd51e6cd29131ec              # double 0.329982
	.quad	0x3fdf54152b0a6fc6              # double 0.48950700000000003
	.quad	0x3fb8c586876e1deb              # double 0.096764000000000003
	.quad	0x3fd15942917507ea              # double 0.27107300000000001
	.quad	0x3fd5c460ed80a17b              # double 0.340111
	.quad	0x3feebf1a5ca29846              # double 0.96082800000000002
	.quad	0x3feaf1c970f7b9e0              # double 0.84201499999999995
	.quad	0x3fdac4d65e460675              # double 0.41826400000000002
	.quad	0x3fd54fe79ee02a78              # double 0.33300200000000002
	.quad	0x3f6973d9ec700043              # double 0.003107
	.quad	0x3fdb8efbb0e5e679              # double 0.43060199999999998
	.quad	0x3fe3db8561d4306e              # double 0.62054699999999996
	.quad	0x3fe303a322af5771              # double 0.594194
	.quad	0x3feabdc26dce39b4              # double 0.83566399999999996
	.quad	0x3fd147d805e5f30e              # double 0.27000999999999997
	.quad	0x3fd420a30db6a1e8              # double 0.31449199999999999
	.quad	0x3fd436d22424a277              # double 0.31584600000000002
	.quad	0x3fcecbaf965b20b8              # double 0.240591
	.quad	0x3feb27d24180d3d0              # double 0.848611
	.quad	0x3fad8409e55c0fcb              # double 0.057647999999999998
	.quad	0x3fcfad7d7c2ca149              # double 0.24748200000000001
	.quad	0x3fed4bb7f9d6f113              # double 0.915493
	.quad	0x3fd2a5df2239e6ac              # double 0.29137400000000002
	.quad	0x3fe2cde5d18090b4              # double 0.58763399999999999
	.quad	0x3feb0c026cc1ca3a              # double 0.84521599999999997
	.quad	0x3fd645d851654d62              # double 0.34801300000000002
	.quad	0x3fc3a847b24638c9              # double 0.15357299999999999
	.quad	0x3fe9b7995ee136e7              # double 0.80366199999999999
	.quad	0x3febb4fc610f0e91              # double 0.86584300000000003
	.quad	0x3fea41d084e831ad              # double 0.82053399999999999
	.quad	0x3fd2aa369fcf3dc0              # double 0.29163899999999998
	.quad	0x3feb25ca29845dc8              # double 0.84836299999999998
	.quad	0x3fe7d74f722e1ac5              # double 0.74503299999999995
	.quad	0x3fe01d6adf71eaff              # double 0.50359100000000001
	.quad	0x3fae3b256ffc115e              # double 0.059045
	.quad	0x3fbc4e618ce2d1f2              # double 0.110571
	.quad	0x3fe4d8cb07d0aeda              # double 0.65146400000000004
	.quad	0x3fec7f0aa21a719b              # double 0.89050799999999997
	.quad	0x3fe3d7add15f02c5              # double 0.62007800000000002
	.quad	0x3fda3ccd0fe8ab50              # double 0.40996100000000002
	.quad	0x3fbbbc2b94d94079              # double 0.10834000000000001
	.quad	0x3fe7f0b6b6e0d23d              # double 0.74813399999999997
	.quad	0x3fd0cd573647baaa              # double 0.26253300000000002
	.quad	0x3fd57c200c0f01fc              # double 0.33570100000000003
	.quad	0x3fef212d77318fc5              # double 0.97279999999999999
	.quad	0x3fd03c74fb549f95              # double 0.25369000000000003
	.quad	0x3fe55acabc515486              # double 0.66733299999999995
	.quad	0x3fe87368ad688377              # double 0.76408799999999999
	.quad	0x3fbabe37de939eae              # double 0.104465
	.quad	0x3fe2b28b6d86ec18              # double 0.58429500000000001
	.quad	0x3fd6a9e2bcf91a33              # double 0.35411900000000002
	.quad	0x3fe935610adcd2d4              # double 0.78776599999999996
	.quad	0x3fdfb85a4f00ef13              # double 0.49562699999999998
	.quad	0x3feb57a13c254a3c              # double 0.85444699999999995
	.quad	0x3fcd9b5e95b78cca              # double 0.23130400000000001
	.quad	0x3fde0eb24a6a875d              # double 0.46964699999999998
	.quad	0x3fd4823c85c24c40              # double 0.32044899999999998
	.quad	0x3fe66d99cbee807c              # double 0.70087900000000003
	.quad	0x3fe3da4484944ed7              # double 0.620394
	.quad	0x3fcccec41dd1a21f              # double 0.22506000000000001
	.quad	0x3fe0e4755ffe6d59              # double 0.52788800000000002
	.quad	0x3fd948f53c579f23              # double 0.39507799999999998
	.quad	0x3fed985058dde7a7              # double 0.92484299999999997
	.quad	0x3f9b8fde2ef4e011              # double 0.026915999999999999
	.quad	0x3feb486cebbba55d              # double 0.85259099999999999
	.quad	0x3fefbb44e50c5eb3              # double 0.99160999999999999
	.quad	0x3fe199780baa582e              # double 0.54998400000000003
	.quad	0x3fe9919ef954eb14              # double 0.79902600000000001
	.quad	0x3fee11409a240315              # double 0.93960600000000005
	.quad	0x3fd863d3e4ef0282              # double 0.38109300000000002
	.quad	0x3faafc69728a6117              # double 0.052706999999999997
	.quad	0x3fed526fa3fcc9eb              # double 0.91631300000000004
	.quad	0x3feee6cd29131ec1              # double 0.96567400000000003
	.quad	0x3fb45f4a1272c94b              # double 0.079578999999999997
	.quad	0x3fd8c7863beec398              # double 0.38717800000000002
	.quad	0x3fe679b77c02afde              # double 0.70235800000000004
	.quad	0x3feead1aeb3dd11c              # double 0.95863100000000001
	.quad	0x3faf6a2f48c2e771              # double 0.061357000000000002
	.quad	0x3fe19b5c7cd898b3              # double 0.55021500000000001
	.quad	0x3fbd7763e4abe6a3              # double 0.115103
	.quad	0x3fd296e158750c1c              # double 0.29045900000000002
	.quad	0x3fcda89b951c5c57              # double 0.231708
	.quad	0x3fdf2fe3f359ff50              # double 0.48729800000000001
	.quad	0x3feaf4e4430b178b              # double 0.84239399999999998
	.quad	0x3fd174aba3875925              # double 0.27274599999999999
	.quad	0x3fdf22467be553ac              # double 0.48646699999999998
	.quad	0x3fe6cea4a8c154ca              # double 0.71272500000000005
	.quad	0x3fecea22b3892ee8              # double 0.90358099999999997
	.quad	0x3fcdfa11a975afb0              # double 0.23419400000000001
	.quad	0x3fef89310129cbab              # double 0.98549699999999995
	.quad	0x3fbc769ec2ce464a              # double 0.11118500000000001
	.quad	0x3fdbf5275ee99a63              # double 0.436838
	.quad	0x3fd5f505d0fa58f7              # double 0.34308
	.quad	0x3fe3652deca2552a              # double 0.606101
	.quad	0x3fee8066c2acb85a              # double 0.95317399999999997
	.quad	0x3fe2c5564b662fe0              # double 0.58658900000000003
	.quad	0x3fedd5970b49e01e              # double 0.93232300000000001
	.quad	0x3fe66cc5fbf83383              # double 0.70077800000000001
	.quad	0x3fdf20a30db6a1e8              # double 0.48636699999999999
	.quad	0x3fe7aef911cf355d              # double 0.74010900000000002
	.quad	0x3fe2d5885d31337f              # double 0.58856600000000003
	.quad	0x3fe7e7b1c0010c6f              # double 0.74703299999999995
	.quad	0x3fefacf312b1b36c              # double 0.98986200000000001
	.quad	0x3fee89d27c393682              # double 0.95432399999999995
	.quad	0x3fd6c625e99e94ab              # double 0.35584399999999999
	.quad	0x3fe1edd8b60f1b26              # double 0.560284
	.quad	0x3fec08aac96cc5fc              # double 0.876058
	.quad	0x3fe0d8dde7a743a6              # double 0.52647299999999997
	.quad	0x3fe48e8a71de69ad              # double 0.64239999999999997
	.quad	0x3fe0950dae3e6c4c              # double 0.51819499999999996
	.quad	0x3fe58029f16b11c7              # double 0.67189500000000002
	.quad	0x3fc4f30a4e379b78              # double 0.16366700000000001
	.quad	0x3fe55529fe004b7f              # double 0.66664599999999996
	.quad	0x3fec275ee99a62ed              # double 0.87980599999999998
	.quad	0x3fb2ec5b078d92fb              # double 0.073918999999999999
	.quad	0x3fe4e1ac57e23f25              # double 0.65254800000000002
	.quad	0x3fef7f84449dbec2              # double 0.98431599999999997
	.quad	0x3fec394d94078961              # double 0.88199499999999997
	.quad	0x3fe6808c8259e1f4              # double 0.70319200000000004
	.quad	0x3fd122962cfd8f0c              # double 0.26773599999999997
	.quad	0x3fad8f2e05ccc89b              # double 0.057733
	.quad	0x3fdad19157abb880              # double 0.419041
	.quad	0x3fd2800eae18ac9f              # double 0.28906599999999999
	.quad	0x3fe015e17e34b945              # double 0.50267099999999998
	.quad	0x3f8bb1f255f3519c              # double 0.013523
	.quad	0x3fe6d1c7de5082cf              # double 0.71310799999999996
	.quad	0x3feb25b317efe0ce              # double 0.84835199999999999
	.quad	0x3fde80a9de8b3b32              # double 0.476603
	.quad	0x3fe3845dc8323359              # double 0.60990800000000001
	.quad	0x3feefd805e5f30e8              # double 0.968445
	.quad	0x3fdc2339c0ebedfa              # double 0.43964999999999999
	.quad	0x3fd5e5bc87db2b34              # double 0.34214699999999998
	.quad	0x3fe0ee2435696e59              # double 0.52907000000000004
	.quad	0x3feb22d0e5604189              # double 0.84799999999999998
	.quad	0x3fd9f63c31df761d              # double 0.40565400000000001
	.quad	0x3feedc0b9991361e              # double 0.96436100000000002
	.quad	0x3fefb1876188b114              # double 0.99042099999999999
	.quad	0x3fdaaa9f7b5aea31              # double 0.41666399999999998
	.quad	0x3fdeb2e1693c03bc              # double 0.47966799999999998
	.quad	0x3fec8cc144028e50              # double 0.89218200000000003
	.quad	0x3fa248b652370479              # double 0.035711
	.quad	0x3fe2e798958d9b5f              # double 0.59077100000000005
	.quad	0x3fd48b4395810625              # double 0.32100000000000001
	.quad	0x3fcca1dfb9389b52              # double 0.22369
	.quad	0x3fb8302b40f66a55              # double 0.094485
	.quad	0x3fcb4152b0a6fc59              # double 0.21293100000000001
	.quad	0x3fef9c4fc1df3301              # double 0.98783100000000001
	.quad	0x3fe488d2a1f8e3ac              # double 0.64170199999999999
	.quad	0x3fc50a137f38c543              # double 0.16436999999999999
	.quad	0x3fea480a5accd530              # double 0.82129399999999997
	.quad	0x3fd74dcebfec13ba              # double 0.364124
	.quad	0x3fe1ca6ca03c4b0a              # double 0.55596000000000001
	.quad	0x3fe67d199bb2788e              # double 0.70277100000000003
	.quad	0x3fe0d823422467be              # double 0.52638399999999996
	.quad	0x3fe8cf7446f9b995              # double 0.77532400000000001
	.quad	0x3fecbcf2cf95d4e9              # double 0.898065
	.quad	0x3fe7e325d4a5df22              # double 0.74647799999999997
	.quad	0x3fd7312f4cf4a559              # double 0.362377
	.quad	0x3fd9c0724b76f6d7              # double 0.40237099999999998
	.quad	0x3fc9a1554fbdad75              # double 0.200236
	.quad	0x3fce11cb039ef0f1              # double 0.23491799999999999
	.quad	0x3fe5df6ba0620ab7              # double 0.68352299999999999
	.quad	0x3fef296b3354c122              # double 0.97380599999999995
	.quad	0x3fd03c31df761cbd              # double 0.25367400000000001
	.quad	0x3fe7dbe3c105186e              # double 0.74559200000000003
	.quad	0x3fab4959e6256367              # double 0.053294000000000001
	.quad	0x3fe4819d2391d580              # double 0.640822
	.quad	0x3fe24892ab68cef6              # double 0.57135899999999995
	.quad	0x3fbd1e321a2e7f6f              # double 0.113742
	.quad	0x3fddcf4a558ea7ce              # double 0.465777
	.quad	0x3fd2359791819d24              # double 0.28452100000000002
	.quad	0x3fc94c660a201472              # double 0.19764399999999999
	.quad	0x3fedeeae9ee45c36              # double 0.93538600000000005
	.quad	0x3fdb1b25f633ce64              # double 0.42353200000000002
	.quad	0x3fd5bcec84f8f8a5              # double 0.33965600000000001
	.quad	0x3fed7607c4199fe4              # double 0.92065799999999997
	.quad	0x3fa8110a137f38c5              # double 0.047004999999999998
	.quad	0x3fe5aaf1455219a8              # double 0.67711699999999997
	.quad	0x3feaede97d06bbdc              # double 0.84154200000000001
	.quad	0x3fee20535c9e6688              # double 0.941446
	.quad	0x3fe3e78183f91e64              # double 0.62200999999999995
	.quad	0x3fd9d6f976790321              # double 0.40374599999999999
	.quad	0x3fb64ce8101f31f4              # double 0.087110999999999994
	.quad	0x3fb2ff9f87f023ea              # double 0.074213000000000001
	.quad	0x3fe9bacf7446f9ba              # double 0.80405400000000005
	.quad	0x3fdce553ac4f7ec3              # double 0.45149699999999998
	.quad	0x3fc4c0e7bc3c5bd1              # double 0.162137
	.quad	0x3fa31df761cbccf3              # double 0.037338000000000003
	.quad	0x3fc232873bc903ea              # double 0.14216699999999999
	.quad	0x3feafee9142b302f              # double 0.84361699999999995
	.quad	0x3f9fd3b29a1b9f99              # double 0.031081000000000001
	.quad	0x3f96dfc5cdd50a89              # double 0.022338
	.quad	0x3fd9afc8b0079a28              # double 0.40135399999999999
	.quad	0x3fc6d31fcd24e161              # double 0.178318
	.quad	0x3fe3e019b0ab2e17              # double 0.62110600000000005
	.quad	0x3fe685f06f694467              # double 0.70384999999999998
	.quad	0x3fb2c14c660a2014              # double 0.073261999999999994
	.quad	0x3fe7224edf612407              # double 0.72293799999999997
	.quad	0x3fc4214ad362e903              # double 0.15726599999999999
	.quad	0x3fc847c30d306a2b              # double 0.18969
	.quad	0x3fe3fc19c17225b7              # double 0.62452399999999997
	.quad	0x3fbc28b2a6b0d951              # double 0.109996
	.quad	0x3fd66861e92923e6              # double 0.35012100000000002
	.quad	0x3fed2fc47e49b1fb              # double 0.91208100000000003
	.quad	0x3fcf82773e24febd              # double 0.246169
	.quad	0x3fec5e5082cf52b9              # double 0.886513
	.quad	0x3fe83f7ad4b2745c              # double 0.757749
	.quad	0x3febae147ae147ae              # double 0.86499999999999999
	.quad	0x3fce2a9930be0ded              # double 0.235675
	.quad	0x3fe30efdc9c4da90              # double 0.59558
	.quad	0x3fea156191148fda              # double 0.81511
	.quad	0x3fb6d538ac18f81f              # double 0.089191000000000006
	.quad	0x3fc3c957cd466f50              # double 0.154582
	.quad	0x3fbb16a055757d5b              # double 0.10581400000000001
	.quad	0x3fc1b10fd7e45804              # double 0.13821600000000001
	.quad	0x3fb5526d8b1dd5d4              # double 0.083289000000000002
	.quad	0x3fd5fe47991bc558              # double 0.34364499999999998
	.quad	0x3fe4ef4e0114d2f6              # double 0.65421200000000002
	.quad	0x3feb577318fc5048              # double 0.85442499999999999
	.quad	0x3fdd16ebd4cfd08d              # double 0.45452399999999998
	.quad	0x3fedd510d38cda6e              # double 0.93225899999999995
	.quad	0x3fcf3e3e29307af2              # double 0.244087
	.quad	0x3fd0c942d490e66d              # double 0.26228400000000002
	.quad	0x3fcadea033e78e19              # double 0.20991899999999999
	.quad	0x3fee35d894812be5              # double 0.94407300000000005
	.quad	0x3fb3ae3608d0891a              # double 0.076877
	.quad	0x3fdfd080b673c4f4              # double 0.49710100000000002
	.quad	0x3fe477878b7a1c26              # double 0.63959100000000002
	.quad	0x3fe017b7414a4d2b              # double 0.50289499999999998
	.quad	0x3fd20a569b17481b              # double 0.28188099999999999
	.quad	0x3fd95f9df548ecd9              # double 0.39646100000000001
	.quad	0x3feb3280f12c27a6              # double 0.84991499999999998
	.quad	0x3fef0385c67dfe33              # double 0.96918000000000004
	.quad	0x3fd61d96e9bbf0dc              # double 0.34555599999999997
	.quad	0x3fafc243dccea290              # double 0.062029000000000001
	.quad	0x3fd99f40a2877ee5              # double 0.40034500000000001
	.quad	0x3fe57ed634549b63              # double 0.67173300000000002
	.quad	0x3fe870f7b9e060fe              # double 0.76378999999999997
	.quad	0x3fd6226809d49518              # double 0.34584999999999999
	.quad	0x3fd4a80cf9e3864d              # double 0.32275700000000002
	.quad	0x3fe7c567125dd096              # double 0.74284700000000004
	.quad	0x3fd21adea897635e              # double 0.28288999999999997
	.quad	0x3fe178dd616f86a1              # double 0.54600400000000004
	.quad	0x3fd6cd7cf5f4e443              # double 0.356292
	.quad	0x3fe1e41b328b6d87              # double 0.55909500000000001
	.quad	0x3fbf6ab5807fed20              # double 0.122722
	.quad	0x3fd50f49491f2dc3              # double 0.32905800000000002
	.quad	0x3fd9e6c8f7553693              # double 0.40471099999999999
	.quad	0x3fb4de6ddf00abf7              # double 0.081518999999999994
	.quad	0x3fee5a9a8049667b              # double 0.94855999999999996
	.quad	0x3fd8f7a0b5ed8d37              # double 0.39011400000000002
	.quad	0x3fd113db7f173754              # double 0.26683699999999999
	.quad	0x3fa9d0c804102ff9              # double 0.050421000000000001
	.quad	0x3fc8fdb8fde2ef4e              # double 0.195243
	.quad	0x3fef151611ba3ca7              # double 0.97132399999999996
	.quad	0x3fecc2d490e66cb1              # double 0.898783
	.quad	0x3fd9655e28aa4335              # double 0.396812
	.quad	0x3fdc9e44fa05143c              # double 0.44716
	.quad	0x3fe1f49adc8fb86f              # double 0.56110899999999997
	.quad	0x3fdc3a4b5568e821              # double 0.44105800000000001
	.quad	0x3fe16075f6fd21ff              # double 0.54302499999999998
	.quad	0x3fe6cf50a02b8412              # double 0.71280699999999997
	.quad	0x3fe9d1fa333764f1              # double 0.80688199999999999
	.quad	0x3fca8b5cbff47736              # double 0.20737800000000001
	.quad	0x3fdc2d905c033615              # double 0.44028099999999998
	.quad	0x3fea947ae147ae14              # double 0.83062499999999994
	.quad	0x3fe60221426fe719              # double 0.68776000000000004
	.quad	0x3fa462a1b5c7cd8a              # double 0.039815000000000003
	.quad	0x3fe2359146e4c0df              # double 0.56903899999999996
	.quad	0x3fd1675579af1887              # double 0.27193200000000001
	.quad	0x3fcabf22c01e68a1              # double 0.208958
	.quad	0x3fc81b1960fa15db              # double 0.18832699999999999
	.quad	0x3fd21e9f2778140e              # double 0.28311900000000001
	.quad	0x3fd0c332f01754b0              # double 0.26191399999999998
	.quad	0x3fc4b9ecf6380022              # double 0.16192400000000001
	.quad	0x3febf56861e92924              # double 0.87370700000000001
	.quad	0x3feb0ba40d90e23b              # double 0.84517100000000001
	.quad	0x3fb256cd6c2efd44              # double 0.071637000000000006
	.quad	0x3fe48a41a261bf38              # double 0.64187700000000003
	.quad	0x3fe188bda9435ac9              # double 0.54794200000000004
	.quad	0x3fdca01abd1aa822              # double 0.447272
	.quad	0x3feeb85c67dfe32a              # double 0.960005
	.quad	0x3fba0780fdc1615f              # double 0.101677
	.quad	0x3fe7e0d23d4f15e8              # double 0.74619400000000002
	.quad	0x3fec256ffc115df6              # double 0.87956999999999996
	.quad	0x3fed0c6f7a0b5ed9              # double 0.90776800000000002
	.quad	0x3feb52806af46aa1              # double 0.85382100000000005
	.quad	0x3fdac26138fffbce              # double 0.41811399999999999
	.quad	0x3fccbc0e38a7e73a              # double 0.22448899999999999
	.quad	0x3fddc92146a1a501              # double 0.46540100000000001
	.quad	0x3fe2dcebfec13b9f              # double 0.58946799999999999
	.quad	0x3fdc11e85fd04a30              # double 0.43859300000000001
	.quad	0x3fe5c6da4484944f              # double 0.68052400000000002
	.quad	0x3fe6851c9f72f76e              # double 0.70374899999999996
	.quad	0x3fc343d03968d75a              # double 0.150507
	.quad	0x3fe8f89c5e6ff7e0              # double 0.78034800000000004
	.quad	0x3fbd2a411c2a0232              # double 0.113926
	.quad	0x3fdf605ee568a505              # double 0.490257
	.quad	0x3fd82aae297396d1              # double 0.37760500000000002
	.quad	0x3fe263bcd35a8588              # double 0.57467500000000005
	.quad	0x3fdcfddebd9018e7              # double 0.45299499999999998
	.quad	0x3fececc5fbf83383              # double 0.90390300000000001
	.quad	0x3fe195cc857f3062              # double 0.54953600000000002
	.quad	0x3fd6103c8e25c811              # double 0.34474100000000002
	.quad	0x3fe17a7c9de05037              # double 0.54620199999999997
	.quad	0x3fd24dd72367e415              # double 0.28600100000000001
	.quad	0x3fd205ee568a5050              # double 0.28161199999999997
	.quad	0x3fe182f0e0a84be4              # double 0.547234
	.quad	0x3fda384fd2a62aa2              # double 0.40968700000000002
	.quad	0x3feeb9baa1511e00              # double 0.96017200000000002
	.quad	0x3fe4e4f765fd8adb              # double 0.65295000000000003
	.quad	0x3fc60f88333fc86d              # double 0.172349
	.quad	0x3fed58ab92c06184              # double 0.91707399999999994
	.quad	0x3fea014727dcbddc              # double 0.81265600000000004
	.quad	0x3fea834b0e1b4bb6              # double 0.82852700000000001
	.quad	0x3fd6ecbfb15b573f              # double 0.35820000000000002
	.quad	0x3fd6f88333fc86cf              # double 0.35891800000000001
	.quad	0x3fe6cff64cf8d717              # double 0.71288600000000002
	.quad	0x3fd103e20ccff21b              # double 0.26586199999999999
	.quad	0x3fe9b30941c8216c              # double 0.80310499999999995
	.quad	0x3fdb68be2f7b17ce              # double 0.42826799999999998
	.quad	0x3feaf7a7008a697b              # double 0.84273100000000001
	.quad	0x3fe9e94ee392e1ef              # double 0.80972999999999995
	.quad	0x3fdc499d0203e63f              # double 0.44199300000000002
	.quad	0x3fe03c68661ae70c              # double 0.50737399999999999
	.quad	0x3fa20296b3354c12              # double 0.035175999999999999
	.quad	0x3fe1e759ab6d00b4              # double 0.55949099999999996
	.quad	0x3fe2e7ad8e432442              # double 0.590781
	.quad	0x3fef91105e1c1509              # double 0.98645799999999994
	.quad	0x3fd2a9a8049667b6              # double 0.291605
	.quad	0x3fe6c6c764adff82              # double 0.71176499999999998
	.quad	0x3fef40af1cb89d6b              # double 0.97664600000000001
	.quad	0x3fdc5e02ea960b70              # double 0.44323800000000002
	.quad	0x3fd84a01abd1aa82              # double 0.37951699999999999
	.quad	0x3feb612c6ac215ba              # double 0.85561200000000004
	.quad	0x3fe21758e219652c              # double 0.56535000000000002
	.quad	0x3fe8a5df2239e6ac              # double 0.77024800000000004
	.quad	0x3fe657a99fa11a97              # double 0.69820099999999996
	.quad	0x3fde85985ad538ac              # double 0.47690399999999999
	.quad	0x3fe7394d94078961              # double 0.72574499999999997
	.quad	0x3fe2215fcc1871e7              # double 0.56657400000000002
	.quad	0x3fdd1e57d9dba909              # double 0.45497700000000002
	.quad	0x3feefb7e90ff9724              # double 0.96819999999999994
	.quad	0x3f9c2a454de7ea60              # double 0.027505000000000002
	.quad	0x3fe0ad2fe3f359ff              # double 0.52114099999999997
	.quad	0x3fe87df3b645a1cb              # double 0.76537500000000003
	.quad	0x3fd025c3dee78184              # double 0.252305
	.quad	0x3f601083dbc23316              # double 0.0019610000000000001
	.quad	0x3fd43d5347a5b0ff              # double 0.316243
	.quad	0x3fdcc0b5675579af              # double 0.44926199999999999
	.quad	0x3fd0e13b18dac259              # double 0.26374700000000001
	.quad	0x3f9f8ec0f88333fd              # double 0.030818000000000002
	.quad	0x3fde14983d790753              # double 0.47000700000000001
	.quad	0x3fec666234a87e39              # double 0.88749800000000001
	.quad	0x3fe3e66666666666              # double 0.62187499999999996
	.quad	0x3fe08ea9e6eeb702              # double 0.51741499999999996
	.quad	0x3f8b9f127f5e84f1              # double 0.013487000000000001
	.quad	0x3feead4f5903a754              # double 0.95865599999999995
	.quad	0x3fd0c4ac6cdaf4ae              # double 0.26200400000000001
	.quad	0x3fcbe02ea960b6fa              # double 0.217779
	.quad	0x3feaefe931876189              # double 0.84178600000000003
	.quad	0x3fa7cb4f1e4b44a2              # double 0.046473
	.quad	0x3fead907d912556d              # double 0.83899299999999999
	.quad	0x3fec239e6ab9b23e              # double 0.87934800000000002
	.quad	0x3fd35f676ea4228a              # double 0.30269800000000002
	.quad	0x3fd6799a1fd1569f              # double 0.35117199999999998
	.quad	0x3fd83aa79bbadc0a              # double 0.37858000000000003
	.quad	0x3fe0685985ad538b              # double 0.51273800000000003
	.quad	0x3fd885ec3dab5c3a              # double 0.38317400000000001
	.quad	0x3fefd0a244630660              # double 0.99421800000000004
	.quad	0x3fe3fce52deca255              # double 0.62462099999999998
	.quad	0x3fed30f8c64fdb0a              # double 0.91222800000000004
	.quad	0x3fb512fd32c625ea              # double 0.082321000000000005
	.quad	0x3fefb69b9d7fd827              # double 0.99104099999999994
	.quad	0x3fe011dffc5479d5              # double 0.50218200000000002
	.quad	0x3fefc1b75a74c09c              # double 0.99239699999999997
	.quad	0x3f65e7c8d195896a              # double 0.0026740000000000002
	.quad	0x3fe9330728e92d56              # double 0.78747900000000004
	.quad	0x3fe5f944241c3efb              # double 0.68667800000000001
	.quad	0x3fec1dece5710881              # double 0.87865300000000002
	.quad	0x3fe3cc8de2ac3223              # double 0.61872000000000005
	.quad	0x3feb290470a808c8              # double 0.84875699999999998
	.quad	0x3fede05681ecd4aa              # double 0.93363499999999999
	.quad	0x3fe6e0c176577532              # double 0.71493600000000002
	.quad	0x3fe9999780baa583              # double 0.79999900000000002
	.quad	0x3fdda63f9a49c2c2              # double 0.46327200000000002
	.quad	0x3fe1dcf0307f23cd              # double 0.55822000000000005
	.quad	0x3fd2ecdd0d8cb07d              # double 0.295707
	.quad	0x3fc1f9378ee28672              # double 0.14041799999999999
	.quad	0x3fc7645a1cac0831              # double 0.18275
	.quad	0x3fe3f0520d130dfa              # double 0.62308600000000003
	.quad	0x3fe8b5d67ba237ce              # double 0.77219700000000002
	.quad	0x3fde9c0ebedfa440              # double 0.47827500000000001
	.quad	0x3fedec892ab68cef              # double 0.93512399999999996
	.quad	0x3faeee73e681a9b9              # double 0.060413000000000001
	.quad	0x3fc6eaa6d2674081              # double 0.179036
	.quad	0x3fc4cea28fe260b3              # double 0.16255600000000001
	.quad	0x3fe5c988094e5d5b              # double 0.68085099999999998
	.quad	0x3fd99d40ee06d938              # double 0.400223
	.quad	0x3fefdf7403dddb12              # double 0.996027
	.quad	0x3fd765a57646ae3a              # double 0.36557899999999999
	.quad	0x3fe26e5cd4ed2cbf              # double 0.57597200000000004
	.quad	0x3fe8de17e34b9453              # double 0.777111
	.quad	0x3fec4fb1183b6028              # double 0.88472799999999996
	.quad	0x3fc607bbb62413db              # double 0.17211099999999999
	.quad	0x3fe72f0bf1a5ca2a              # double 0.72449300000000005
	.quad	0x3fc189e774eebf66              # double 0.137021
	.quad	0x3fe3fb7e90ff9724              # double 0.62444999999999995
	.quad	0x3fd123810e8858ff              # double 0.26779199999999997
	.quad	0x3fd2fc8f32378ab1              # double 0.29666500000000001
	.quad	0x3fe009f1f14983d8              # double 0.50121400000000005
	.quad	0x3feac61522a6f3f5              # double 0.83667999999999998
	.quad	0x3fe28a0f4d7add16              # double 0.57935300000000001
	.quad	0x3fdfc8de2ac32229              # double 0.49663499999999999
	.quad	0x3fef6dc7ef177a70              # double 0.982151
	.quad	0x3fe72e685db76b3c              # double 0.72441500000000003
	.quad	0x3fdbbb384fd2a62b              # double 0.43330200000000002
	.quad	0x3fe381f31f46ed24              # double 0.60961299999999996
	.quad	0x3fe26d6ba8c58687              # double 0.57585699999999995
	.quad	0x3fcd90214ad362e9              # double 0.230961
	.quad	0x3fc353d640e9d51b              # double 0.15099599999999999
	.quad	0x3fe3260913a4f872              # double 0.59839299999999995
	.quad	0x3fb566cf41f212d7              # double 0.083599999999999994
	.quad	0x3fc89b0ee49f5169              # double 0.19223199999999999
	.quad	0x3fe211105e1c1509              # double 0.56458299999999995
	.quad	0x3fe1486cebbba55d              # double 0.54009099999999999
	.quad	0x3fe2a9cdc443914f              # double 0.58322799999999997
	.quad	0x3fc63e6c4c5974e6              # double 0.17377999999999999
	.quad	0x3fe9f6295208e150              # double 0.81129899999999999
	.quad	0x3fd780b242070b8d              # double 0.36723
	.quad	0x3fe0bf162ae4b018              # double 0.52332599999999996
	.quad	0x3fe1667d77fae361              # double 0.54376100000000005
	.quad	0x3fef9a21ea359360              # double 0.98756500000000002
	.quad	0x3fe192018a43bb41              # double 0.54907300000000003
	.quad	0x3fe4e368f08461fa              # double 0.65276000000000001
	.quad	0x3fd0c2656abde3fc              # double 0.26186500000000001
	.quad	0x3fe2f74cd31769a9              # double 0.59268799999999999
	.quad	0x3fe8cbd987c6327f              # double 0.77488400000000002
	.quad	0x3fd8000c9539b888              # double 0.37500299999999998
	.quad	0x3fd926394face67d              # double 0.39295799999999997
	.quad	0x3feb9e42e1262025              # double 0.86306899999999998
	.quad	0x3fe2ef262888b546              # double 0.59169300000000002
	.quad	0x3fa576ab5807fed2              # double 0.041921
	.quad	0x3fe319439de481f5              # double 0.59683399999999998
	.quad	0x3fe72cffa7eb6bf4              # double 0.72424299999999997
	.quad	0x3f934d26fa3fcc9f              # double 0.018849000000000001
	.quad	0x3fc60999dcb5781c              # double 0.17216799999999999
	.quad	0x3fe9f329c347e8cd              # double 0.81093300000000001
	.quad	0x3fdb43bb40b34e77              # double 0.42600900000000003
	.quad	0x3feb1c15097c8084              # double 0.84717799999999998
	.quad	0x3fef2e5796bfca86              # double 0.97440700000000002
	.quad	0x3fcd9439de481f54              # double 0.23108600000000001
	.quad	0x3fe72322af577100              # double 0.72303899999999999
	.quad	0x3fee58d5842b734b              # double 0.94834399999999996
	.quad	0x3fe034b2fa93af75              # double 0.50643300000000002
	.quad	0x3fe7e2f5989df117              # double 0.74645499999999998
	.quad	0x3fe12b1704ff4342              # double 0.53651000000000004
	.quad	0x3fa31897a67a52ac              # double 0.037296999999999997
	.quad	0x3febc6cfc829cfdd              # double 0.86801899999999999
	.quad	0x3fef0bc382a12f90              # double 0.97018599999999999
	.quad	0x3fd78405b39e279e              # double 0.36743300000000001
	.quad	0x3feae0d887ebf22c              # double 0.83994699999999999
	.quad	0x3fddf46ed245b292              # double 0.46804400000000002
	.quad	0x3fe4b841248d7e02              # double 0.64749199999999996
	.quad	0x3fd1cad57bc7f77b              # double 0.278005
	.quad	0x3fe04b6848beb5b3              # double 0.50920500000000002
	.quad	0x3fefc53d20f2becf              # double 0.99282700000000001
	.quad	0x3fad33f42352eb5f              # double 0.057036999999999997
	.quad	0x3fe23dd97f62b6ae              # double 0.57004999999999995
	.quad	0x3fd47210be9424e6              # double 0.31946200000000002
	.quad	0x3fedcbf8fcd67fd4              # double 0.931149
	.quad	0x3fd2cf1c3265adda              # double 0.29389100000000001
	.quad	0x3feb2f4adbc664d4              # double 0.84952300000000002
	.quad	0x3fe1c7ffde7210bf              # double 0.55566400000000005
	.quad	0x3fa8626f60e0eb68              # double 0.047626000000000002
	.quad	0x3fe624aada33bd9d              # double 0.69197600000000004
	.quad	0x3fe70446b69db65f              # double 0.71927200000000002
	.quad	0x3fe52a0663c74fb5              # double 0.66137999999999997
	.quad	0x3fe54e789e774eec              # double 0.665829
	.quad	0x3fe5f1476af89c5e              # double 0.68570299999999995
	.quad	0x3fe4e2f37fbefd00              # double 0.65270399999999995
	.quad	0x3fe9f623076c050c              # double 0.81129600000000001
	.quad	0x3fe7e8c0485a0be5              # double 0.74716199999999999
	.quad	0x3fdab66b6177ea1c              # double 0.41738399999999998
	.quad	0x3fdde73e681a9b8d              # double 0.46723900000000002
	.quad	0x3fd7a7e308787486              # double 0.36962200000000001
	.quad	0x3fdc38b8ae31d713              # double 0.44096200000000002
	.quad	0x3fe98d2a1f8e3ac1              # double 0.79848200000000003
	.quad	0x3fb6af038e29f9cf              # double 0.088608000000000006
	.quad	0x3fe68198f1d3ed52              # double 0.70331999999999995
	.quad	0x3fed266772d5e072              # double 0.91093800000000003
	.quad	0x3fe37d06bbdbe3c1              # double 0.609012
	.quad	0x3fe825072085b185              # double 0.75451999999999997
	.quad	0x3fdf6909aed56b01              # double 0.490786
	.quad	0x3f9f15e7c8d19589              # double 0.030356999999999999
	.quad	0x3fdd65cb35f3d7d4              # double 0.45933800000000002
	.quad	0x3fe57f1f9acffa7f              # double 0.67176800000000003
	.quad	0x3fce2c343b70ef56              # double 0.23572399999999999
	.quad	0x3fd04e1e71044f1a              # double 0.25476799999999999
	.quad	0x3fcadd052934acb0              # double 0.20987
	.quad	0x3fd2eedcc20d562a              # double 0.29582900000000001
	.quad	0x3fd477079e59f2bb              # double 0.31976500000000002
	.quad	0x3fab69fcf3dc054f              # double 0.053543
	.quad	0x3feb468a936c58ef              # double 0.85236100000000004
	.quad	0x3fd7a41a261bf37c              # double 0.36939100000000002
	.quad	0x3fdf6d938151a438              # double 0.49106300000000003
	.quad	0x3fdc137b07075b3e              # double 0.438689
	.quad	0x3fef9b4fe79ee02a              # double 0.98770899999999995
	.quad	0x3fefbf65dbfceb79              # double 0.99211400000000005
	.quad	0x3fc06c43f5f91601              # double 0.128304
	.quad	0x3fe266772d5e071c              # double 0.57500799999999996
	.quad	0x3fef7709b738e6d1              # double 0.98328099999999996
	.quad	0x3fdb29802c0a4a06              # double 0.42440800000000001
	.quad	0x3fd11c7de5082cf5              # double 0.26736399999999999
	.quad	0x3fc19439de481f54              # double 0.13733600000000001
	.quad	0x3fe9124af0bf1a5d              # double 0.78348300000000004
	.quad	0x3fc4cc92146a1a50              # double 0.162493
	.quad	0x3fdfc7c957cd466f              # double 0.49656899999999998
	.quad	0x3fe1a324c8366517              # double 0.55116500000000002
	.quad	0x3fc615a8deb0fadf              # double 0.17253599999999999
	.quad	0x3fe6c4bd33d29564              # double 0.71151600000000004
	.quad	0x3f8a1f4b1ee24357              # double 0.012755000000000001
	.quad	0x3fbc307f23cc8de3              # double 0.110115
	.quad	0x3fdd7481b21c475e              # double 0.46023599999999998
	.quad	0x3fb40bdcad14a0a1              # double 0.078306000000000001
	.quad	0x3fc342f61ed5ae1d              # double 0.150481
	.quad	0x3fd6a6117720c8cd              # double 0.35388599999999998
	.quad	0x3fd385d744f5d356              # double 0.30504399999999998
	.quad	0x3fee66afcce1c582              # double 0.95003499999999996
	.quad	0x3fd0c7e6b3fe9fae              # double 0.26220100000000002
	.quad	0x3fe4ceaaf35e310e              # double 0.65022800000000003
	.quad	0x3fe28b75ea67e847              # double 0.57952400000000004
	.quad	0x3fe84c4ac6cdaf4b              # double 0.75931300000000002
	.quad	0x3fdf80f55de58e65              # double 0.49224600000000002
	.quad	0x3f774927913e8145              # double 0.0056849999999999999
	.quad	0x3fdaaba7b9170d63              # double 0.41672700000000001
	.quad	0x3fe7e6d15ad106ee              # double 0.74692599999999998
	.quad	0x3fecf5c28f5c28f6              # double 0.90500000000000003
	.quad	0x3fd91975f2cb6417              # double 0.392179
	.quad	0x3fe59c864883fd50              # double 0.67535699999999999
	.quad	0x3fb387f023e9ea14              # double 0.076293
	.quad	0x3fe277121ab4b72c              # double 0.57703499999999996
	.quad	0x3fe16ddf00abf76a              # double 0.54466199999999998
	.quad	0x3fef659f2ba9d1f6              # double 0.981155
	.quad	0x3fd2dea897635e74              # double 0.29483999999999999
	.quad	0x3fd67cf5f4e4430b              # double 0.35137699999999999
	.quad	0x3fba938de6ddf00b              # double 0.103814
	.quad	0x3fdd96cc5fbf8338              # double 0.46232899999999999
	.quad	0x3fdc799a1fd1569f              # double 0.44492199999999998
	.quad	0x3fef28ed5f138bce              # double 0.973746
	.quad	0x3fd396b3354c1227              # double 0.30607299999999998
	.quad	0x3fe7d360d0247022              # double 0.74455300000000002
	.quad	0x3fe3b58afc47e49b              # double 0.61591099999999999
	.quad	0x3fc32e72da122fad              # double 0.14985499999999999
	.quad	0x3fcb1526d8b1dd5d              # double 0.21158299999999999
	.quad	0x3fc30da5daf07bfe              # double 0.14885399999999999
	.quad	0x3fcb985ad538ac19              # double 0.215587
	.quad	0x3fcd98e10cf5b1c8              # double 0.23122799999999999
	.quad	0x3fb0958d9b5e95b8              # double 0.064782000000000006
	.quad	0x3fe8af3e468cac4b              # double 0.77139199999999997
	.quad	0x3fe3942917507e9e              # double 0.61183600000000005
	.quad	0x3fc9ead4f5903a75              # double 0.20247899999999999
	.quad	0x3f8beb9e492bc2fc              # double 0.013632999999999999
	.quad	0x3feac4d44567125e              # double 0.83652700000000002
	.quad	0x3fee6030c23fab11              # double 0.94924200000000003
	.quad	0x3fa5510d38cda6e7              # double 0.041633999999999997
	.quad	0x3feac74538ef34d7              # double 0.83682500000000004
	.quad	0x3fcfe718a86d71f3              # double 0.24923999999999999
	.quad	0x3fea3b23571d1d47              # double 0.81971899999999998
	.quad	0x3fd14477ff151e75              # double 0.26980399999999999
	.quad	0x3fe79a8ef77f27fe              # double 0.73761699999999997
	.quad	0x3fe9afba01eeed89              # double 0.802701
	.quad	0x3fd9430f49491f2e              # double 0.39471800000000001
	.quad	0x3fd9ac53b0813cac              # double 0.40114300000000003
	.quad	0x3fe0c069e7fb267c              # double 0.52348799999999995
	.quad	0x3fd24d22c881e471              # double 0.28595799999999999
	.quad	0x3fd8818c5c9a34ca              # double 0.382907
	.quad	0x3fdf8709741d084f              # double 0.49261700000000003
	.quad	0x3fe4ca66559f6ec6              # double 0.64970700000000003
	.quad	0x3fc9abd1aa821f2a              # double 0.20055600000000001
	.quad	0x3fb4c197e5647347              # double 0.081078999999999998
	.quad	0x3fd2957470eb24a7              # double 0.29037200000000002
	.quad	0x3fbd7efe0ce0b913              # double 0.115219
	.quad	0x3fd835696e58a32f              # double 0.37825999999999999
	.quad	0x3f94b2fa93af74cd              # double 0.020213999999999999
	.quad	0x3fd3bd09e12a51e3              # double 0.30841299999999999
	.quad	0x3f4187e7c06e19b9              # double 5.3499999999999999E-4
	.quad	0x3fc51394317acc4f              # double 0.16466
	.quad	0x3fbaa0ba1f4b1ee2              # double 0.104015
	.quad	0x3fe9ede76427c7c5              # double 0.81029099999999998
	.quad	0x3fe754bad7d7c2ca              # double 0.72909299999999999
	.quad	0x3fd3528f190d1740              # double 0.30191400000000002
	.quad	0x3fb6c5e2cdc011d3              # double 0.088956999999999994
	.quad	0x3fca7ad080b673c5              # double 0.206873
	.quad	0x3fe6b532e7b3d8e0              # double 0.709619
	.quad	0x3fe82e3608d0891a              # double 0.75564100000000001
	.quad	0x3fe6ffcb923a29c7              # double 0.71872499999999995
	.quad	0x3fe71f601797cc3a              # double 0.72258
	.quad	0x3f9aa79bbadc0981              # double 0.026030000000000001
	.quad	0x3feeaf640639d5e5              # double 0.95891000000000004
	.quad	0x3fe80d045fe11127              # double 0.75158899999999995
	.quad	0x3fe0b34e7685985b              # double 0.52188800000000002
	.quad	0x3fd428954a7f8013              # double 0.31497700000000001
	.quad	0x3fd2f1ae2da554b9              # double 0.29600100000000001
	.quad	0x3fe1d8ff75968512              # double 0.55773899999999998
	.quad	0x3fe470b49e01de27              # double 0.63875800000000005
	.quad	0x3fec613d31b9b670              # double 0.88687000000000005
	.quad	0x3fe363e6c4c5974e              # double 0.60594499999999996
	.quad	0x3fa129cbab649d39              # double 0.033522000000000003
	.quad	0x3fc41d7dbf487fcc              # double 0.15715000000000001
	.quad	0x3fed9b584b1ab085              # double 0.92521299999999995
	.quad	0x3fefdd249e44fa05              # double 0.99574499999999999
	.quad	0x3fdb9f340d4dc65c              # double 0.43159199999999998
	.quad	0x3fd7b86b15f88fc9              # double 0.37063099999999999
	.quad	0x3fc232e3821af7d3              # double 0.142178
	.quad	0x3fd67ff583a53b8e              # double 0.35155999999999998
	.quad	0x3fd88fd199bb2789              # double 0.38377800000000001
	.quad	0x3fbb967caea747d8              # double 0.107765
	.quad	0x3fd3b2745bf26f1e              # double 0.30776700000000001
	.quad	0x3fd8318b93469942              # double 0.37802400000000003
	.quad	0x3fec17edc7ef177a              # double 0.87792099999999995
	.quad	0x3fe590cb295e9e1b              # double 0.673925
	.quad	0x3fae63a5c1c6088d              # double 0.059353999999999997
	.quad	0x3fe894db59578a2b              # double 0.76817100000000005
	.quad	0x3fa736262cba732e              # double 0.045335
	.quad	0x3feb284167a95c85              # double 0.84866399999999997
	.quad	0x3fead4bad7d7c2ca              # double 0.83846799999999999
	.quad	0x3fd21fcd24e160d9              # double 0.28319100000000003
	.quad	0x3fe470e2c12ad81b              # double 0.63878000000000001
	.quad	0x3fd94e54f7a91969              # double 0.39540599999999998
	.quad	0x3fe13eb9e492bc30              # double 0.53890700000000002
	.quad	0x3fe5f1d3ed527e52              # double 0.68576999999999999
	.quad	0x3fedc68a936c58ef              # double 0.93048600000000004
	.quad	0x3fd4a96d4c33b539              # double 0.32284099999999999
	.quad	0x3fd8c3d68405b39e              # double 0.38695299999999999
	.quad	0x3fdc11f0c34c1a8b              # double 0.43859500000000001
	.quad	0x3fe49157abb8800f              # double 0.64274200000000004
	.quad	0x3fcde9af5ba2be06              # double 0.23369400000000001
	.quad	0x3fe65ee136e71cda              # double 0.69908199999999998
	.quad	0x3fd3d31337eb28d8              # double 0.30975799999999998
	.quad	0x3fe59307af20ea5b              # double 0.67419799999999996
	.quad	0x3fea42480e8c8abd              # double 0.82059099999999996
	.quad	0x3fd1fa05143bf727              # double 0.280885
	.quad	0x3feb820e6299524c              # double 0.859626
	.quad	0x3fed8fe047d3d428              # double 0.923813
	.quad	0x3fd50852b4d8ba41              # double 0.32863300000000001
	.quad	0x3fe0b67c286f8ad2              # double 0.52227599999999996
	.quad	0x3fe2b1fab96f21f7              # double 0.58422600000000002
	.quad	0x3fd88259e1f3a57f              # double 0.38295600000000002
	.quad	0x3fbaed352220bc38              # double 0.105182
	.quad	0x3fd743675ddd2ae9              # double 0.36348900000000001
	.quad	0x3fb2ad1d041cc533              # double 0.072954000000000005
	.quad	0x3fb1ffa3b9ae0c17              # double 0.070306999999999994
	.quad	0x3fe92ad81adea897              # double 0.78647999999999996
	.quad	0x3fe58364388ebcc7              # double 0.67228900000000003
	.quad	0x3fe13c89f40a2878              # double 0.53864000000000001
	.quad	0x3fe508f42fe82518              # double 0.65734300000000001
	.quad	0x3fd4a69be09bb6aa              # double 0.32266899999999998
	.quad	0x3fd150d2806af46b              # double 0.27055800000000002
	.quad	0x3fe54102ff8ec0f9              # double 0.66418600000000005
	.quad	0x3fe64b2314013ec4              # double 0.69667199999999996
	.quad	0x3fe08ac9f2fdb8fe              # double 0.51694200000000001
	.quad	0x3fe720a73f748a16              # double 0.72273600000000005
	.quad	0x3fd0dfc19c17225b              # double 0.26365699999999997
	.quad	0x3fb62a4db163baba              # double 0.086582999999999993
	.quad	0x3fe5a2c2374794ea              # double 0.676118
	.quad	0x3fc0bb341e14bdfd              # double 0.130713
	.quad	0x3fe925b0ff10ecb7              # double 0.78585099999999997
	.quad	0x3fe95857afea3df7              # double 0.79203400000000002
	.quad	0x3fe5b0be0ded288d              # double 0.67782500000000001
	.quad	0x3fd067ba237cdcca              # double 0.25633099999999998
	.quad	0x3feccf6dfc5cdd51              # double 0.90032100000000004
	.quad	0x3feefeb4a66559f7              # double 0.968592
	.quad	0x3f856323bbc6eb0b              # double 0.010442999999999999
	.quad	0x3fbcdd72367e414e              # double 0.11275399999999999
	.quad	0x3fe1ab990afe60c4              # double 0.55219700000000005
	.quad	0x3fe4aa9f7b5aea31              # double 0.64582799999999996
	.quad	0x3fb29a0ad8a11666              # double 0.072663000000000005
	.quad	0x3fece8dda48b6523              # double 0.90342599999999995
	.quad	0x3fd0b97fe8ee6b83              # double 0.261322
	.quad	0x3fe4f69878316a05              # double 0.65510199999999996
	.quad	0x3fee50c1b97353b5              # double 0.94735800000000003
	.quad	0x3fbe8b2a6b0d9514              # double 0.119311
	.quad	0x3fe81c6b05319829              # double 0.75346900000000006
	.quad	0x3fde0d66f0cfe154              # double 0.46956799999999999
	.quad	0x3fdc0468448cf7cb              # double 0.43776900000000002
	.quad	0x3fe7a67a52ac753e              # double 0.73907199999999995
	.quad	0x3fc926a65cf67b1c              # double 0.196492
	.quad	0x3fd299fe43675ddd              # double 0.29064899999999999
	.quad	0x3fed7d24180d3cff              # double 0.92152599999999996
	.quad	0x3f6461b6d43d0397              # double 0.0024880000000000002
	.quad	0x3f7d63886594af4f              # double 0.007175
	.quad	0x3fee3ce2089e3433              # double 0.94493199999999999
	.quad	0x3fe6071e6cd29132              # double 0.68836900000000001
	.quad	0x3fe10d3ae685db77              # double 0.53286500000000003
	.quad	0x3fcc726d04e618ce              # double 0.222242
	.quad	0x3fd881f53825e13b              # double 0.38293199999999999
	.quad	0x3fdafbf83382e44b              # double 0.42162899999999998
	.quad	0x3feda1a719b4dcec              # double 0.925983
	.quad	0x3fec8b3d4ae429e1              # double 0.89199700000000004
	.quad	0x3feb5b163baba7b9              # double 0.85486899999999999
	.quad	0x3fedc69d7342edbb              # double 0.93049499999999996
	.quad	0x3fe86931876188b1              # double 0.76284099999999999
	.quad	0x3fdf425aee631f8a              # double 0.488425
	.quad	0x3fe34575c0767d35              # double 0.60222900000000001
	.quad	0x3fe3d970b49e01de              # double 0.62029299999999998
	.quad	0x3fe5455219a847b2              # double 0.66471199999999997
	.quad	0x3feafae5796bfca8              # double 0.84312699999999996
	.quad	0x3fdbf01754b05b7d              # double 0.436529
	.quad	0x3feea84167a95c85              # double 0.95803899999999997
	.quad	0x3fdf036c9c0a8d22              # double 0.48458400000000001
	.quad	0x3fe1fb5aea3161a2              # double 0.56193300000000002
	.quad	0x3fec2a821f2990f3              # double 0.880189
	.quad	0x3fda0ccff21b3aef              # double 0.407032
	.quad	0x3fed7fcdab191dde              # double 0.92185099999999998
	.quad	0x3fd9ba3443d46b27              # double 0.40199000000000001
	.quad	0x3fef628aa433508f              # double 0.98077899999999995
	.quad	0x3fe1ac753e707e17              # double 0.55230199999999996
	.quad	0x3fe1adf2ecf20642              # double 0.55248399999999998
	.quad	0x3fd4463cfb3311a5              # double 0.31678699999999999
	.quad	0x3fe9d349be8ff328              # double 0.80704200000000004
	.quad	0x3fe3188d2a1f8e3b              # double 0.59674700000000003
	.quad	0x3fb3cf80dc33721d              # double 0.077384999999999995
	.quad	0x3fbcdb163baba7b9              # double 0.112718
	.quad	0x3fdaa975afaf8594              # double 0.41659299999999999
	.quad	0x3fe2117939a7c17b              # double 0.56463300000000005
	.quad	0x3fea61d8622c4502              # double 0.82444399999999995
	.quad	0x3fde0e94ee392e1f              # double 0.46964
	.quad	0x3f956605ee568a50              # double 0.020896999999999999
	.quad	0x3fe4cad362e90364              # double 0.64975899999999998
	.quad	0x3fec21c044284dfd              # double 0.87912000000000001
	.quad	0x3fc38c75c4a83b1d              # double 0.152724
	.quad	0x3fdfacf7446f9b99              # double 0.49493199999999998
	.quad	0x3fd5bfec13b9f128              # double 0.339839
	.quad	0x3fc0093532e7b3d9              # double 0.125281
	.quad	0x3fdef1950331e3a8              # double 0.48349500000000001
	.quad	0x3fdde3fbbd7b2032              # double 0.46704000000000001
	.quad	0x3fed354c122749f1              # double 0.91275600000000001
	.quad	0x3fe5d1526d8b1dd6              # double 0.68180200000000002
	.quad	0x3fd5082491afc04d              # double 0.32862200000000003
	.quad	0x3fe38e6299524bfd              # double 0.61113099999999998
	.quad	0x3fe0927b2cc70868              # double 0.51788100000000004
	.quad	0x3fc1e6b3fe9fadb0              # double 0.13985300000000001
	.quad	0x3fc1479d4d834092              # double 0.13499800000000001
	.quad	0x3fb8e368f08461fa              # double 0.09722
	.quad	0x3fca24a276b7ed42              # double 0.20424300000000001
	.quad	0x3feea78d0cc35ce2              # double 0.95795300000000005
	.quad	0x3fd3b7c7820a30db              # double 0.30809199999999998
	.quad	0x3fe2da921ccd9620              # double 0.58918099999999995
	.quad	0x3fe566f71a7e3088              # double 0.66881900000000005
	.quad	0x3fe5a76b7ed41b76              # double 0.67668700000000004
	.quad	0x3fdeb545c78a6dad              # double 0.47981400000000002
	.quad	0x3fb1989df1172ef1              # double 0.068735000000000004
	.quad	0x3fee9f40a2877ee5              # double 0.95694000000000001
	.quad	0x3fa2b27cbf6e3f79              # double 0.036518000000000002
	.quad	0x3fc9d8f0c77dd873              # double 0.201933
	.quad	0x3fa45479d4d83409              # double 0.039706999999999999
	.quad	0x3facee17a02fb5d0              # double 0.056503999999999999
	.quad	0x3fdc08d08919ef95              # double 0.43803799999999998
	.quad	0x3fe92df9378ee286              # double 0.78686199999999995
	.quad	0x3f98b827fa1a0cf2              # double 0.024140000000000002
	.quad	0x3fd21d9b1b79d90a              # double 0.283057
	.quad	0x3fe2a917507e9d95              # double 0.58314100000000002
	.quad	0x3fcf78bbd3804535              # double 0.24587200000000001
	.quad	0x3fe0307d0aed99cc              # double 0.50591900000000001
	.quad	0x3fe9f7985271bcdc              # double 0.81147400000000002
	.quad	0x3fc0b2bfdb4cc250              # double 0.13045499999999999
	.quad	0x3fc50fd7e45803cd              # double 0.164546
	.quad	0x3fd75436b8f9b131              # double 0.36451499999999998
	.quad	0x3fedd33f42352eb6              # double 0.932037
	.quad	0x3fe6ac9afe1da7b1              # double 0.70857000000000003
	.quad	0x3fd1759253543aeb              # double 0.27280100000000002
	.quad	0x3fafa69be09bb6aa              # double 0.061817999999999998
	.quad	0x3fe35bfceb78897f              # double 0.60497900000000004
	.quad	0x3fec427418d6909b              # double 0.88311200000000001
	.quad	0x3fe5a40d90e23af3              # double 0.67627599999999999
	.quad	0x3fe56c7863beec39              # double 0.66949099999999995
	.quad	0x3fefb762d83c6c98              # double 0.99113600000000001
	.quad	0x3fe20f3cb3e5753a              # double 0.56435999999999997
	.quad	0x3fd6663c74fb54a0              # double 0.34999000000000002
	.quad	0x3fab95a294141e9b              # double 0.053876
	.quad	0x3fa3547e06961c37              # double 0.037754000000000003
	.quad	0x3fe46490a350d280              # double 0.63727599999999995
	.quad	0x3feeb0b7c3504c49              # double 0.95907200000000003
	.quad	0x3fd73825e13b18db              # double 0.36280200000000001
	.quad	0x3fe7c3a647fdc593              # double 0.74263299999999999
	.quad	0x3fa9116a8b8f14db              # double 0.048960999999999998
	.quad	0x3fe1fe82517e77d5              # double 0.56231799999999998
	.quad	0x3feaeab5807fed20              # double 0.84115099999999998
	.quad	0x3fe0850df15a4acf              # double 0.51624199999999998
	.quad	0x3fea954434e3369c              # double 0.83072100000000004
	.quad	0x3fb5c52e72da1230              # double 0.085040000000000004
	.quad	0x3feaec84f8f8a4c2              # double 0.84137200000000001
	.quad	0x3fd53797460242d0              # double 0.33151799999999998
	.quad	0x3fd06327ed84d339              # double 0.256052
	.quad	0x3fd2c6b053198288              # double 0.293377
	.quad	0x3feeb0270f388228              # double 0.95900300000000004
	.quad	0x3fe78ad03d9a9542              # double 0.73569499999999999
	.quad	0x3fe4eb1c432ca57a              # double 0.65369999999999995
	.quad	0x3fceab25b317efe1              # double 0.23959800000000001
	.quad	0x3fecc5fbf83382e4              # double 0.89916799999999996
	.quad	0x3fcdc853c148344c              # double 0.23267599999999999
	.quad	0x3feac65a57646ae4              # double 0.83671300000000004
	.quad	0x3fe94f0307f23cc9              # double 0.79089500000000001
	.quad	0x3fccf102363b2570              # double 0.226105
	.quad	0x3fe5146801711948              # double 0.65874100000000002
	.quad	0x3fe35173fb7a5f42              # double 0.60369300000000004
	.quad	0x3fe53b6cbd987c63              # double 0.66350399999999998
	.quad	0x3fb75c7cd898b2ea              # double 0.091255000000000002
	.quad	0x3fe88a372606fac6              # double 0.766872
	.quad	0x3fdde536501e2585              # double 0.467115
	.quad	0x3fe2f72d5e071c54              # double 0.59267300000000001
	.quad	0x3f725247cb70ac3b              # double 0.0044730000000000004
	.quad	0x3fe1df6124074645              # double 0.55851799999999996
	.quad	0x3fc6a50507a6bd6f              # double 0.17691100000000001
	.quad	0x3fa0ae1049235f81              # double 0.032578000000000003
	.quad	0x3fe4709b738e6d16              # double 0.63874600000000004
	.quad	0x3fe30cbf2b239a39              # double 0.595306
	.quad	0x3fd51886df82b1f7              # double 0.32962200000000003
	.quad	0x3fe73f85510d38ce              # double 0.72650400000000004
	.quad	0x3feb0e8640208180              # double 0.84552300000000002
	.quad	0x3fe2e3800218def4              # double 0.59027099999999999
	.quad	0x3fcb975f2cb64170              # double 0.215557
	.quad	0x3fcf45e9185cee18              # double 0.24432100000000001
	.quad	0x3fe8607e5a78f25a              # double 0.76177899999999998
	.quad	0x3fe30e1d6494d50f              # double 0.59547300000000003
	.quad	0x3fee7540895d0b74              # double 0.95181300000000002
	.quad	0x3fced655e28aa433              # double 0.24091599999999999
	.quad	0x3fe4ddd2ae8e1d65              # double 0.65207800000000005
	.quad	0x3fd66e978d4fdf3b              # double 0.35049999999999998
	.quad	0x3feca2af5771001d              # double 0.89485899999999996
	.quad	0x3fe895d4e8fb00bd              # double 0.76829000000000003
	.quad	0x3fda8476f2a5a46a              # double 0.41433500000000001
	.quad	0x3fec21c475e6362a              # double 0.87912199999999996
	.quad	0x3fb02b40f66a5508              # double 0.063159999999999994
	.quad	0x3fdd6eb0b7c3504c              # double 0.45988099999999998
	.quad	0x3fdb9e16d6dc1a48              # double 0.43152400000000002
	.quad	0x3fe42795703f2d3c              # double 0.62983199999999995
	.quad	0x3fe8d26fa3fcc9eb              # double 0.77568800000000004
	.quad	0x3fea8d2c386d2ed8              # double 0.82973300000000005
	.quad	0x3fbed4e4c942d491              # double 0.120436
	.quad	0x3fd079aae6c8f755              # double 0.25742599999999999
	.quad	0x3fe2da72a7bd48cb              # double 0.58916599999999997
	.quad	0x3fd1d01c0ca600b0              # double 0.27832699999999999
	.quad	0x3fd4a47a9e2bcf92              # double 0.32253900000000002
	.quad	0x3fddcd20afa2f05a              # double 0.46564499999999998
	.quad	0x3fe59c8a7a41e57e              # double 0.67535900000000004
	.quad	0x3fea0c3f3e0370ce              # double 0.81399500000000002
	.quad	0x3fda580c308feac4              # double 0.41162399999999999
	.quad	0x3fdbf190d173fb7a              # double 0.43661899999999998
	.quad	0x3fee233bd9cae211              # double 0.941801
	.quad	0x3fc9a2be0589acbd              # double 0.20027900000000001
	.quad	0x3fb1b43526527a20              # double 0.069155999999999995
	.quad	0x3fe3bc18b502abac              # double 0.61671100000000001
	.quad	0x3fe029307af20ea6              # double 0.50502800000000003
	.quad	0x3faa1f4b1ee24357              # double 0.051020000000000003
	.quad	0x3fd16d43d03968d7              # double 0.27229399999999998
	.quad	0x3fda9e0a41a261bf              # double 0.41589599999999999
	.quad	0x3fccc8711d798d8b              # double 0.22486700000000001
	.quad	0x3fcc756861e92924              # double 0.222333
	.quad	0x3fc77e670e2c12ae              # double 0.18354500000000001
	.quad	0x3fe854d4024b33db              # double 0.760355
	.quad	0x3feec117f84449dc              # double 0.961071
	.quad	0x3fd3c3f811f4f50a              # double 0.308836
	.quad	0x3f95b4edb2f661f2              # double 0.021198000000000002
	.quad	0x3fed7963992c8c50              # double 0.921068
	.quad	0x3fa9dcd7060bb2bc              # double 0.050513000000000002
	.quad	0x3fcd7a24894c447c              # double 0.23028999999999999
	.quad	0x3fcc17ebaf102364              # double 0.21948000000000001
	.quad	0x3fb367903211cb04              # double 0.075799000000000005
	.quad	0x3fe77077ccc03793              # double 0.73247899999999999
	.quad	0x3fec5454152b0a70              # double 0.88529400000000003
	.quad	0x3fdcf62b6ae7d567              # double 0.45252500000000001
	.quad	0x3fc973c925785f8d              # double 0.19884599999999999
	.quad	0x3fed1fcb0c026cc2              # double 0.91013100000000002
	.quad	0x3fd7effe2a3cea6c              # double 0.37402299999999999
	.quad	0x3fc50edc3bd59924              # double 0.164516
	.quad	0x3fd559bc33f85511              # double 0.33360200000000001
	.quad	0x3fdd04ccee5abc0e              # double 0.45341799999999999
	.quad	0x3fc0b474107314cb              # double 0.13050700000000001
	.quad	0x3fe0c34a01abd1ab              # double 0.52383900000000005
	.quad	0x3febbe9a6f826edb              # double 0.86701700000000004
	.quad	0x3fe2e108c3f3e037              # double 0.58996999999999999
	.quad	0x3fe3989bd8383ada              # double 0.61237900000000001
	.quad	0x3fdaa6f826edaa93              # double 0.41644100000000001
	.quad	0x3fca726d04e618ce              # double 0.206617
	.quad	0x3feb8a43bb40b34e              # double 0.86062799999999995
	.quad	0x3fef8f40e5a35d68              # double 0.98623700000000003
	.quad	0x3fbb284167a95c85              # double 0.106083
	.quad	0x3fe2cdfefbf401c5              # double 0.587646
	.quad	0x3f73a4f8726d04e6              # double 0.0047959999999999999
	.quad	0x3feb870329802c0a              # double 0.86023099999999997
	.quad	0x3feb6baade657b85              # double 0.85689300000000002
	.quad	0x3fe56e5abc0e38a8              # double 0.66972100000000001
	.quad	0x3fd17839cd8127b3              # double 0.27296300000000001
	.quad	0x3fd997fa5d28d003              # double 0.39990100000000001
	.quad	0x3fe0eb2074ea8da8              # double 0.52870200000000001
	.quad	0x3fe08d9f90539fba              # double 0.51728799999999997
	.quad	0x3fed0915bdd76684              # double 0.90735900000000002
	.quad	0x3fe721fd1569f490              # double 0.72289899999999996
	.quad	0x3fd22d1aeb3dd11c              # double 0.28400300000000001
	.quad	0x3fc5353b4b2fa93b              # double 0.165687
	.quad	0x3fe035d462c343b7              # double 0.50657099999999999
	.quad	0x3fec808c8259e1f4              # double 0.89069200000000003
	.quad	0x3fe7f6d97b30f8c6              # double 0.74888299999999997
	.quad	0x3fc48a0d349be8ff              # double 0.16046299999999999
	.quad	0x3f7d0b73d188f430              # double 0.0070910000000000001
	.quad	0x3fe737d84901d191              # double 0.72556699999999996
	.quad	0x3fe5204f2ae07e5a              # double 0.66019399999999995
	.quad	0x3fee9733226c3b92              # double 0.95595699999999995
	.quad	0x3fe0f34d6a161e4f              # double 0.52969999999999995
	.quad	0x3fcc45b291b823c8              # double 0.22087699999999999
	.quad	0x3fe6709d8c6d612c              # double 0.70124699999999995
	.quad	0x3fec0090b417ca21              # double 0.87506899999999999
	.quad	0x3fefad3c792d1288              # double 0.98989700000000002
	.quad	0x3feb62478854cdb8              # double 0.85574700000000004
	.quad	0x3fdcc33b5393250b              # double 0.44941599999999998
	.quad	0x3fd7020c49ba5e35              # double 0.35949999999999999
	.quad	0x3fb4fcd67fd3f5b6              # double 0.081983
	.quad	0x3fe62c647778dd61              # double 0.69291899999999995
	.quad	0x3fececdd0d8cb07d              # double 0.903914
	.quad	0x3fe1db24e9c45458              # double 0.55800099999999997
	.quad	0x3f926c3b927d45a6              # double 0.017991
	.quad	0x3fe17077ccc03793              # double 0.54497899999999999
	.quad	0x3feb6679463cfb33              # double 0.85625899999999999
	.quad	0x3fef59f6ec5b078e              # double 0.97973200000000005
	.quad	0x3fcce496ededaec5              # double 0.22572600000000001
	.quad	0x3fe0d0fa58f7121b              # double 0.52551000000000003
	.quad	0x3fbc91d14e3bcd36              # double 0.1116
	.quad	0x3fe05cdf69878317              # double 0.51133700000000004
	.quad	0x3fc756eac8605682              # double 0.18234
	.quad	0x3fd58094e5d5b24f              # double 0.33597300000000002
	.quad	0x3fddd38476f2a5a4              # double 0.46603499999999998
	.quad	0x3fd802a3486f049b              # double 0.37516100000000002
	.quad	0x3fd57a67a52ac754              # double 0.33559600000000001
	.quad	0x3f952d666a98244f              # double 0.020681000000000001
	.quad	0x3feb0a02b841248d              # double 0.84497199999999995
	.quad	0x3fef94ca925fe975              # double 0.98691300000000004
	.quad	0x3fc69da597d49d7c              # double 0.17668600000000001
	.quad	0x3fe69a2a4db163bb              # double 0.70631900000000003
	.quad	0x3fd8b57c4e2f37fc              # double 0.386077
	.quad	0x3fc1466f5019f3c7              # double 0.134962
	.quad	0x3fd4c3265add9c28              # double 0.324411
	.quad	0x3fe49737542a23c0              # double 0.643459
	.quad	0x3fe257774aba3876              # double 0.57317700000000005
	.quad	0x3fdce468cac4b4d0              # double 0.45144099999999998
	.quad	0x3fd9a86d71f36263              # double 0.40090500000000001
	.quad	0x3fd182f944241c3f              # double 0.273619
	.quad	0x3fb098c3b0c4588a              # double 0.064831
	.quad	0x3fdbbcdfefbf401c              # double 0.43340299999999998
	.quad	0x3fb385510d38cda7              # double 0.076253000000000001
	.quad	0x3fa7f9b56323bbc7              # double 0.046827000000000001
	.quad	0x3fe7d67dbb16c1e3              # double 0.74493299999999996
	.quad	0x3fe7f972474538ef              # double 0.74919999999999998
	.quad	0x3fe0a3b3636f3b21              # double 0.51998299999999997
	.quad	0x3fe2ac81d3aa36a0              # double 0.58355800000000002
	.quad	0x3fccfd75e2046c76              # double 0.22648499999999999
	.quad	0x3fece95d91ab8e8f              # double 0.90348700000000004
	.quad	0x3fd93c579f234656              # double 0.39430799999999999
	.quad	0x3fe923b9ae0c1765              # double 0.78561099999999995
	.quad	0x3fc1a22f6a50d6b2              # double 0.137762
	.quad	0x3fcf8d60a6330510              # double 0.246502
	.quad	0x3fe7ff4ba51a005c              # double 0.74991399999999996
	.quad	0x3fe98ec743201041              # double 0.79867900000000003
	.quad	0x3fe4681ecd4aa10e              # double 0.63771
	.quad	0x3fe280e496ededaf              # double 0.57823400000000003
	.quad	0x3fd1db8bac710cb3              # double 0.27902500000000002
	.quad	0x3fc127a20578e5c5              # double 0.134022
	.quad	0x3fe5a0ccff21b3af              # double 0.67587900000000001
	.quad	0x3fd0a0dbad3a604e              # double 0.25981799999999999
	.quad	0x3fb8919ef954eb14              # double 0.095972000000000001
	.quad	0x3fc3bc98a222d517              # double 0.154193
	.quad	0x3fe2aafbc1acde1a              # double 0.583372
	.quad	0x3fe5fd3b29a1b9fa              # double 0.68716200000000005
	.quad	0x3fb85931ca7d6734              # double 0.095111000000000001
	.quad	0x3fe55703f2d3c793              # double 0.66687200000000002
	.quad	0x3fedf41d084e831b              # double 0.93604900000000002
	.quad	0x3fedea78af3e468d              # double 0.93487200000000004
	.quad	0x3fe23cc6c54bcf0b              # double 0.56991899999999995
	.quad	0x3fed35dcc63f1412              # double 0.912825
	.quad	0x3fde4d099e0e7360              # double 0.47345199999999998
	.quad	0x3fea1554fbdad752              # double 0.81510400000000005
	.quad	0x3fc875bc44bf4cb2              # double 0.19109300000000001
	.quad	0x3fdcee0b0af5fd48              # double 0.45202900000000001
	.quad	0x3fb8b86b15f88fc9              # double 0.096563999999999997
	.quad	0x3fe640b780346dc6              # double 0.69540000000000002
	.quad	0x3fda2c55c96030c2              # double 0.40895599999999999
	.quad	0x3fc9976ff3ade226              # double 0.199934
	.quad	0x3fdd3a5c1c6088d7              # double 0.45668700000000001
	.quad	0x3fdf90d9d7774aba              # double 0.49321599999999999
	.quad	0x3fd72c7325918a01              # double 0.36208800000000002
	.quad	0x3fed41f212d77319              # double 0.9143
	.quad	0x3fcb79d0a67620ef              # double 0.21465500000000001
	.quad	0x3fed52c7b890d5a6              # double 0.91635500000000003
	.quad	0x3fe1ad9f0a1be2b5              # double 0.55244400000000005
	.quad	0x3fece0589acbc8c1              # double 0.90238600000000002
	.quad	0x3fed41a8ac5c13fd              # double 0.91426499999999999
	.quad	0x3fe02cf312b1b36c              # double 0.50548700000000002
	.quad	0x3fd2767d34df04de              # double 0.28848200000000002
	.quad	0x3fd96084a515ce9e              # double 0.39651599999999998
	.quad	0x3fc277ee4e26d480              # double 0.144285
	.quad	0x3fa9f9f01b866e44              # double 0.050735000000000002
	.quad	0x3fec24c404a72eae              # double 0.87948800000000005
	.quad	0x3fd5ade225fa658c              # double 0.33873799999999998
	.quad	0x3fdc503fb3743633              # double 0.44239800000000001
	.quad	0x3f9d188f42fe8251              # double 0.028413999999999998
	.quad	0x3fe2efe931876189              # double 0.59178600000000003
	.quad	0x3fdc946c332f0175              # double 0.44655899999999998
	.quad	0x3fc213db7f173754              # double 0.141231
	.quad	0x3fecad87f88765ba              # double 0.89618299999999995
	.quad	0x3fb7480a5accd530              # double 0.090942999999999996
	.quad	0x3fe72afbc1acde1a              # double 0.723997
	.quad	0x3fd9051c9f72f76e              # double 0.39093699999999998
	.quad	0x3fd92467be553ac5              # double 0.392847
	.quad	0x3fb62d40aaeafab5              # double 0.086627999999999997
	.quad	0x3f8c504816f0068e              # double 0.013825
	.quad	0x3fe13d577963992d              # double 0.53873800000000005
	.quad	0x3fe19f6ec5b078d9              # double 0.55071199999999998
	.quad	0x3fec23c42a66dbd7              # double 0.87936599999999998
	.quad	0x3fd323e5b8561d43              # double 0.299066
	.quad	0x3faa6202539756c9              # double 0.051528999999999998
	.quad	0x3fe696659d12cade              # double 0.70585900000000001
	.quad	0x3fd289fc6da44849              # double 0.28967199999999999
	.quad	0x3fdede2ac3222920              # double 0.48231000000000002
	.quad	0x3fc1c5718eb89507              # double 0.13883799999999999
	.quad	0x3fe1f967caea747e              # double 0.56169500000000006
	.quad	0x3fe832a27f1b6912              # double 0.75618099999999999
	.quad	0x3fefcdd93c46d82c              # double 0.99387800000000003
	.quad	0x3fdef87f023e9ea1              # double 0.48391699999999999
	.quad	0x3fdc42528ae74f2f              # double 0.441548
	.quad	0x3fcb343fa2ad3e92              # double 0.212532
	.quad	0x3fe7a19652bd3c36              # double 0.73847499999999999
	.quad	0x3fc612f901083dbc              # double 0.172454
	.quad	0x3fdd75ff609dcf89              # double 0.46032699999999999
	.quad	0x3fadea67e846a5d7              # double 0.058429000000000002
	.quad	0x3fe1680389f83be6              # double 0.54394699999999996
	.quad	0x3fadbec2480e8c8b              # double 0.058096000000000002
	.quad	0x3fe621af7d30ad47              # double 0.691612
	.quad	0x3fd5d306a2b17050              # double 0.341005
	.quad	0x3fc02ca148ba83f5              # double 0.126362
	.quad	0x3fe75e56cd6c2efd              # double 0.73026599999999997
	.quad	0x3fddec2480e8c8ac              # double 0.46753800000000001
	.quad	0x3fe9054046412cf1              # double 0.781891
	.quad	0x3fc9b8b26394face              # double 0.20094899999999999
	.quad	0x3fdc3e468cac4b4d              # double 0.441301
	.quad	0x3fe51bb8c32a8c9c              # double 0.65963400000000005
	.quad	0x3fe744e50c5eb314              # double 0.72716000000000003
	.quad	0x3fb125aab4741073              # double 0.066980999999999999
	.quad	0x3fd66965f5275eea              # double 0.35018300000000002
	.quad	0x3fc428b2a6b0d951              # double 0.15749199999999999
	.quad	0x3fee9d30270f3882              # double 0.95668799999999998
	.quad	0x3fd31c92ddbdb5d9              # double 0.29861900000000002
	.quad	0x3fead4a1ad6451b9              # double 0.83845599999999998
	.quad	0x3fd6546d3f9e7b81              # double 0.34890300000000002
	.quad	0x3fd12513b5bf6a0e              # double 0.26788800000000001
	.quad	0x3fe6335b0bbf50e3              # double 0.69376899999999997
	.quad	0x3fb7e132b55ef1fe              # double 0.093280000000000001
	.quad	0x3fe5cfaeff5c6c12              # double 0.68160200000000004
	.quad	0x3fe4c4178705425f              # double 0.64893699999999999
	.quad	0x3feabd33d29563aa              # double 0.83559600000000001
	.quad	0x3fd656c93a711516              # double 0.349047
	.quad	0x3fe91044f1a1986c              # double 0.78323600000000004
	.quad	0x3fad21bc126a65cf              # double 0.056897999999999997
	.quad	0x3fd8aba387592535              # double 0.38547599999999999
	.quad	0x3fcc514c22ee4192              # double 0.22123100000000001
	.quad	0x3fefc5f9df548ece              # double 0.99291700000000005
	.quad	0x3fdb55f3519bd406              # double 0.42712099999999997
	.quad	0x3fec2b862b27cbf7              # double 0.88031300000000001
	.quad	0x3fdf25fa658c4bd3              # double 0.48669299999999999
	.quad	0x3fda4efcbd556085              # double 0.41107100000000002
	.quad	0x3fedbe09bb6aa4ba              # double 0.92944800000000005
	.quad	0x3fe07807789a4591              # double 0.514652
	.quad	0x3fe4a272862f598a              # double 0.64483000000000001
	.quad	0x3fee8d5c74751ce3              # double 0.95475600000000005
	.quad	0x3fd5b5781c714fce              # double 0.33920099999999997
	.quad	0x3fc42b5a20ddc619              # double 0.15757299999999999
	.quad	0x3fd6958d9b5e95b8              # double 0.35287800000000002
	.quad	0x3fe6e3b46fdeb52d              # double 0.71529600000000004
	.quad	0x3fee06f694467382              # double 0.93835000000000002
	.quad	0x3fe3c404a72ead92              # double 0.61767799999999995
	.quad	0x3fe00a9bcfd4bf0a              # double 0.50129500000000005
	.quad	0x3fef771eafee6fb5              # double 0.98329100000000002
	.quad	0x3fd78f57f737da62              # double 0.36812400000000001
	.quad	0x3fcc70eb24a6a876              # double 0.222196
	.quad	0x3fe1b397dd00f777              # double 0.55317300000000003
	.quad	0x3fcbcf0b6b6e0d24              # double 0.217256
	.quad	0x3fa4bf2b239a38fc              # double 0.040521000000000001
	.quad	0x3fe6f4fd6d7e889c              # double 0.71740599999999999
	.quad	0x3fef2ba387592535              # double 0.97407699999999997
	.quad	0x3fd732df505d0fa6              # double 0.36248000000000002
	.quad	0x3fce9595feda6613              # double 0.23894000000000001
	.quad	0x3fd42a8869c66d37              # double 0.31509599999999999
	.quad	0x3fd45e41d4b6a61a              # double 0.31825300000000001
	.quad	0x3fd99ab6d00b45ae              # double 0.40006799999999998
	.quad	0x3fe952d01c0ca601              # double 0.79135900000000003
	.quad	0x3fe951351159c497              # double 0.79116299999999995
	.quad	0x3fe36f0f16f4384c              # double 0.60730700000000004
	.quad	0x3fdbdac68a936c59              # double 0.435228
	.quad	0x3fe49fc08fa7a850              # double 0.64450099999999999
	.quad	0x3fdb5caafbc1acde              # double 0.42753099999999999
	.quad	0x3fee86ad2dcb1466              # double 0.95394000000000001
	.quad	0x3fcee69f05ea24cc              # double 0.24141299999999999
	.quad	0x3fd4172ef0ae5365              # double 0.313915
	.quad	0x3fec97268d32830a              # double 0.893451
	.quad	0x3fe6ecb31c219eb6              # double 0.71639399999999998
	.quad	0x3fd1f9ce8d972cd8              # double 0.28087200000000001
	.quad	0x3fd54ec636b09635              # double 0.33293299999999998
	.quad	0x3fe0dc5718eb8950              # double 0.52689699999999995
	.quad	0x3fef97e56473471f              # double 0.98729199999999994
	.quad	0x3fdd3e07a28bb0a3              # double 0.45691100000000001
	.quad	0x3fd99c7ffde7210c              # double 0.400177
	.quad	0x3fe747de5082cf53              # double 0.72752300000000003
	.quad	0x3fc671ef30a4e37a              # double 0.17535200000000001
	.quad	0x3fe7517e77d523b3              # double 0.72869799999999996
	.quad	0x3fc8a5accd53048a              # double 0.192556
	.quad	0x3fd2033e78e1932d              # double 0.28144799999999998
	.quad	0x3fea76e82949a565              # double 0.82701499999999994
	.quad	0x3fe612be48a58b3f              # double 0.68978799999999996
	.quad	0x3fdbb291b823c85c              # double 0.43277399999999999
	.quad	0x3f96577531db445f              # double 0.021818000000000001
	.quad	0x3fd3bb6ed677707a              # double 0.30831500000000001
	.quad	0x3fb8b8066c2acb86              # double 0.096558000000000004
	.quad	0x3fa4b9ecf6380022              # double 0.040481000000000003
	.quad	0x3fe0335b0bbf50e3              # double 0.50626899999999997
	.quad	0x3f9f1455219a847b              # double 0.030351
	.quad	0x3fd89df97aaac109              # double 0.38464199999999998
	.quad	0x3f7b6805a2d72ffd              # double 0.0066909999999999999
	.quad	0x3fc4a94ff0025bfb              # double 0.161417
	.quad	0x3fdff53c579f2346              # double 0.49934299999999998
	.quad	0x3fe0339c0ebedfa4              # double 0.50629999999999997
	.quad	0x3fdb281fd9ba1b19              # double 0.42432399999999998
	.quad	0x3fcf81b64e054691              # double 0.246146
	.quad	0x3fe340852b4d8ba4              # double 0.60162599999999999
	.quad	0x3fddf7985271bcdc              # double 0.46823700000000001
	.quad	0x3f774f722e1ac57e              # double 0.0056909999999999999
	.quad	0x3fe061847f562175              # double 0.51190400000000003
	.quad	0x3feebaba7b9170d6              # double 0.96029399999999998
	.quad	0x3fecacbea4ebdd33              # double 0.89608699999999997
	.quad	0x3fe1e4f11b60ae97              # double 0.55919700000000006
	.quad	0x3f9045fe111276fb              # double 0.015892
	.quad	0x3fca2fcefaa4766c              # double 0.20458399999999999
	.quad	0x3fd2faeff5c6c11a              # double 0.296566
	.quad	0x3fdc4e50c5eb313c              # double 0.44228000000000001
	.quad	0x3fcbe9856a37ac3f              # double 0.21806400000000001
	.quad	0x3fe8a2dd7a99fa12              # double 0.76988100000000004
	.quad	0x3fb9084e831ad213              # double 0.097782999999999995
	.quad	0x3fc25f5ad96a6a01              # double 0.143535
	.quad	0x3fef229a5ebb773a              # double 0.97297400000000001
	.quad	0x3fd577ee4e26d480              # double 0.33544499999999999
	.quad	0x3febe53c9abb01c9              # double 0.87173299999999998
	.quad	0x3f99f44d44567126              # double 0.025346
	.quad	0x3fe0aadc4c9c90c5              # double 0.52085700000000001
	.quad	0x3fea9a49c2c1b110              # double 0.83133400000000002
	.quad	0x3fcf2a38b8ae31d7              # double 0.243476
	.quad	0x3fdc19d66adb402d              # double 0.439077
	.quad	0x3fa66a11ec918e32              # double 0.043777999999999997
	.quad	0x3fd2b9170d62bf12              # double 0.292547
	.quad	0x3fbd42e557de0d67              # double 0.114302
	.quad	0x3fd18c3f3e0370ce              # double 0.27418500000000001
	.quad	0x3febb1183b60285f              # double 0.86536800000000003
	.quad	0x3fe6a6ce358298cc              # double 0.70786199999999999
	.quad	0x3fe856909aed56b0              # double 0.76056699999999999
	.quad	0x3fe145bd0e12e83a              # double 0.53976299999999999
	.quad	0x3fee008637bd05af              # double 0.93756399999999995
	.quad	0x3fe62f7d30ad46f6              # double 0.69329700000000005
	.quad	0x3fe4c84944ed6fdb              # double 0.64944900000000005
	.quad	0x3feda37cdcca70d2              # double 0.926207
	.quad	0x3febec8f75536934              # double 0.87262700000000004
	.quad	0x3fe4cc35ce182667              # double 0.64992799999999995
	.quad	0x3fdd285a921ccd96              # double 0.45558799999999999
	.quad	0x3fc69b8cb8e086be              # double 0.176622
	.quad	0x3fdbb7b28954a7f8              # double 0.433087
	.quad	0x3fc9f0c34c1a8ac6              # double 0.20266000000000001
	.quad	0x3fe071758e219653              # double 0.51385000000000003
	.quad	0x3fe18c32a8c9b845              # double 0.54836399999999996
	.quad	0x3fc35d0b73d188f4              # double 0.15127699999999999
	.quad	0x3fe510be9424e593              # double 0.65829400000000005
	.quad	0x3fe109e774eebf66              # double 0.53245900000000002
	.quad	0x3fe51973d9ec7000              # double 0.65935699999999997
	.quad	0x3fd6193f6c2699c8              # double 0.34529100000000001
	.quad	0x3fb18d045fe11127              # double 0.068557999999999994
	.quad	0x3fce75e6362a5e78              # double 0.23797299999999999
	.quad	0x3fae368f08461f9f              # double 0.05901
	.quad	0x3fe182f72b452828              # double 0.54723699999999997
	.quad	0x3fe141e14bdfd263              # double 0.53929199999999999
	.quad	0x3fdb1212513b5bf7              # double 0.42297800000000002
	.quad	0x3fddd1351159c497              # double 0.46589399999999997
	.quad	0x3fea96d4c33b5393              # double 0.83091199999999998
	.quad	0x3fce4a4095f2452c              # double 0.23664099999999999
	.quad	0x3fdcaad1d041cc53              # double 0.44792599999999999
	.quad	0x3fef7dd441355476              # double 0.98411000000000004
	.quad	0x3fe54a9ef5232d2c              # double 0.66535900000000003
	.quad	0x3fea549949e8815e              # double 0.82282699999999998
	.quad	0x3fd87c6b8b69552e              # double 0.38259399999999999
	.quad	0x3fe70e2e2b8c75c5              # double 0.72048100000000004
	.quad	0x3fd9b074a771c971              # double 0.401395
	.quad	0x3fe348c0ce91c8eb              # double 0.60263100000000003
	.quad	0x3fe0f10cb295e9e2              # double 0.52942500000000003
	.quad	0x3f9c49774256bca5              # double 0.027623999999999999
	.quad	0x3fea653868fd199c              # double 0.82485600000000003
	.quad	0x3fece542e557de0d              # double 0.90298599999999996
	.quad	0x3fe3c0b135979182              # double 0.61727200000000004
	.quad	0x3fe8231e7d9988d3              # double 0.75428700000000004
	.quad	0x3fe580e8c8abd5dc              # double 0.67198599999999997
	.quad	0x3fa87b99d451fc4c              # double 0.047817999999999999
	.quad	0x3fe3378ab0c88a48              # double 0.60053000000000001
	.quad	0x3fd5611ba3ca7504              # double 0.33405200000000002
	.quad	0x3fe2315d701d9f4d              # double 0.56852599999999998
	.quad	0x3fca33269df97aab              # double 0.20468600000000001
	.quad	0x3fbf923a29c779a7              # double 0.123325
	.quad	0x3fe8b061c79b34a4              # double 0.77153099999999996
	.quad	0x3fdbf4666ec9e237              # double 0.43679200000000001
	.quad	0x3fe8312f4cf4a559              # double 0.75600400000000001
	.quad	0x3fb51fb3fa6defc8              # double 0.082515000000000005
	.quad	0x3fe97f822bbecaac              # double 0.79681500000000005
	.quad	0x3fefe325d4a5df22              # double 0.99647799999999997
	.quad	0x3fe762c77574f723              # double 0.73080800000000001
	.quad	0x3fd3d9cf13cee9dd              # double 0.31016899999999997
	.quad	0x3fed4d24e160d888              # double 0.91566700000000001
	.quad	0x3fb1620685553ef7              # double 0.067902000000000004
	.quad	0x3fcd76d549731099              # double 0.230189
	.quad	0x3fefb9b23dd54da5              # double 0.99141800000000002
	.quad	0x3fc908ede54b48d4              # double 0.19558500000000001
	.quad	0x3fd2a14cec41dd1a              # double 0.29109499999999999
	.quad	0x3fd033fc86cebbba              # double 0.25317299999999998
	.quad	0x3fec354195cc857f              # double 0.88150099999999998
	.quad	0x3fd8122b7baecd08              # double 0.37610900000000003
	.quad	0x3fbdf23465625a68              # double 0.116977
	.quad	0x3fd48e086bdf4c2b              # double 0.32116899999999998
	.quad	0x3fd1a55d1c3ac92a              # double 0.27571800000000002
	.quad	0x3fdd6da87a072d1b              # double 0.459818
	.quad	0x3fea701754b05b7d              # double 0.826183
	.quad	0x3feb995cc857f306              # double 0.86247099999999999
	.quad	0x3fe6314ec204f2ae              # double 0.693519
	.quad	0x3feba2ca9ac36545              # double 0.863622
	.quad	0x3fe23eaf6837f7be              # double 0.57015199999999999
	.quad	0x3fb2cc3e3193f6c2              # double 0.073428999999999994
	.quad	0x3fe063baba7b9171              # double 0.51217400000000002
	.quad	0x3fef22bbecaab8a6              # double 0.97299000000000002
	.quad	0x3fdbd5bab21815a0              # double 0.43491999999999997
	.quad	0x3fee1a7c17a89332              # double 0.94073300000000004
	.quad	0x3fe5b30941c8216c              # double 0.67810499999999996
	.quad	0x3fe4e325d4a5df22              # double 0.65272799999999997
	.quad	0x3fcb44806290eed0              # double 0.213028
	.quad	0x3feade2478854cdb              # double 0.83961699999999995
	.quad	0x3fc00af1cb89d6ae              # double 0.125334
	.quad	0x3fe76994185058de              # double 0.73163800000000001
	.quad	0x3fe7179bfdf7e804              # double 0.72163200000000005
	.quad	0x3fc0492bc2fc6973              # double 0.12723300000000001
	.quad	0x3fbb4916ca46e08f              # double 0.106584
	.quad	0x3feafc7a398201cd              # double 0.84331999999999996
	.quad	0x3fd291f2dc2b0ea2              # double 0.29015800000000003
	.quad	0x3fd5797891e21533              # double 0.33553899999999998
	.quad	0x3fc869835158b828              # double 0.19072
	.quad	0x3fb643dccea28fe2              # double 0.086972999999999994
	.quad	0x3f8f0dc768dfbd6a              # double 0.015162999999999999
	.quad	0x3fedde82d7b634db              # double 0.93341200000000002
	.quad	0x3fb948882f0e0a85              # double 0.098763000000000004
	.quad	0x3fe81960fa15db34              # double 0.75309800000000004
	.quad	0x3fdc6b26bf8769ec              # double 0.44403999999999999
	.quad	0x3feba699c7bcc294              # double 0.86408700000000004
	.quad	0x3f99d7774aba3876              # double 0.025236000000000001
	.quad	0x3feaf294dd72367e              # double 0.84211199999999997
	.quad	0x3fd195464dc22ab2              # double 0.27473599999999998
	.quad	0x3fef0ace24bba12b              # double 0.97006899999999995
	.quad	0x3fd1c197e5647347              # double 0.27744099999999999
	.quad	0x3fe399ae924f227d              # double 0.61251
	.quad	0x3fe0fbdf090f733b              # double 0.53074600000000005
	.quad	0x3fc02bcf91a32b13              # double 0.126337
	.quad	0x3feba0b8066c2acc              # double 0.86336900000000005
	.quad	0x3fe6562e09fe8683              # double 0.69801999999999997
	.quad	0x3fba5accd530489d              # double 0.102948
	.quad	0x3fd4810e8858ff76              # double 0.32037700000000002
	.quad	0x3fddc6cdaf4adbc6              # double 0.46525899999999998
	.quad	0x3fe17befd00713f0              # double 0.54637899999999995
	.quad	0x3fd567381d7dbf48              # double 0.33442499999999997
	.quad	0x3fe8058793dd97f6              # double 0.75067499999999998
	.quad	0x3fed61719f7f8ca8              # double 0.91814499999999999
	.quad	0x3fe1e28ed5f138bd              # double 0.55890600000000001
	.quad	0x3fd43f748a159818              # double 0.31637300000000002
	.quad	0x3fe3bea2d2fe3f36              # double 0.61702100000000004
	.quad	0x3fee23fee2c98e54              # double 0.941894
	.quad	0x3feb761240746456              # double 0.85816300000000001
	.quad	0x3fc5533f42352eb6              # double 0.166603
	.quad	0x3fefaab042528ae7              # double 0.98958599999999996
	.quad	0x3fe6c213a0c6b485              # double 0.71119100000000002
	.quad	0x3fdaffcdab191dde              # double 0.42186299999999999
	.quad	0x3fd79f2778140dd4              # double 0.369089
	.quad	0x3fe468d759ee88df              # double 0.63779799999999998
	.quad	0x3fd6e1fc08fa7a85              # double 0.357543
	.quad	0x3fd6acb85a4f00ef              # double 0.354292
	.quad	0x3fe67b24638c9753              # double 0.70253200000000005
	.quad	0x3fd4e33269df97ab              # double 0.32636700000000002
	.quad	0x3fe46cebbba55d1c              # double 0.63829599999999997
	.quad	0x3fcd986b9c304ccf              # double 0.231214
	.quad	0x3fe58d0cc35ce182              # double 0.67346799999999996
	.quad	0x3fee752977c88e7a              # double 0.95180200000000004
	.quad	0x3faf36cdf266ba49              # double 0.060964999999999998
	.quad	0x3fddd8ba40d90e24              # double 0.46635300000000002
	.quad	0x3fe96b9c304ccee6              # double 0.79438600000000004
	.quad	0x3fda55d1c3ac929b              # double 0.41148800000000002
	.quad	0x3feb4ba732df505d              # double 0.85298499999999999
	.quad	0x3fde264e48626f61              # double 0.47108800000000001
	.quad	0x3fce746cb966be7b              # double 0.237928
	.quad	0x3fcbc66d373affb0              # double 0.21699299999999999
	.quad	0x3fed15af294dd723              # double 0.90889699999999995
	.quad	0x3fd10e23af31b153              # double 0.266488
	.quad	0x3fee4013ec460ed8              # double 0.94532199999999999
	.quad	0x3fefa17b0f6ad70e              # double 0.98846199999999995
	.quad	0x3fdf99029ae4f334              # double 0.49371399999999999
	.quad	0x3fb74e11dbca9692              # double 0.091035000000000004
	.quad	0x3fe39a91105e1c15              # double 0.612618
	.quad	0x3fed6e75ff609dd0              # double 0.91973400000000005
	.quad	0x3fe73fc43b2dd378              # double 0.72653400000000001
	.quad	0x3fc28605681ecd4b              # double 0.14471500000000001
	.quad	0x3fee16616b54e2b0              # double 0.94023199999999996
	.quad	0x3fd94845132f87ad              # double 0.395036
	.quad	0x3fee967ec7863bef              # double 0.95587100000000003
	.quad	0x3fd3309c7ffde721              # double 0.299842
	.quad	0x3fd499285a921cce              # double 0.32184800000000002
	.quad	0x3fefad490e66cb10              # double 0.98990299999999998
	.quad	0x3fdbe8815e39713b              # double 0.43606600000000001
	.quad	0x3fedff3ade225fa6              # double 0.93740599999999996
	.quad	0x3febc32ca57a786c              # double 0.86757499999999998
	.quad	0x3fe15b8130164841              # double 0.54242000000000001
	.quad	0x3fd9e6b3fe9fadb0              # double 0.40470600000000001
	.quad	0x3fd14649906cca2e              # double 0.26991500000000002
	.quad	0x3fe22a497fa5d28d              # double 0.567662
	.quad	0x3fe90d5410f94c88              # double 0.78287700000000005
	.quad	0x3fec347e8ccdd93c              # double 0.88140799999999996
	.quad	0x3fe3ec8d5c74751d              # double 0.62262600000000001
	.quad	0x3feadf37329c347f              # double 0.83974800000000005
	.quad	0x3febf021d10b1fef              # double 0.87306300000000003
	.quad	0x3fd8b078d92fb19e              # double 0.38577099999999998
	.quad	0x3fdbcea6c1a048e0              # double 0.43448799999999999
	.quad	0x3fd7c0df58c08b76              # double 0.371147
	.quad	0x3fd2e453d20f2bed              # double 0.295186
	.quad	0x3fe4d9a30984e400              # double 0.65156700000000001
	.quad	0x3fe23760bf5d7881              # double 0.56925999999999999
	.quad	0x3fdc6223e1869835              # double 0.44349
	.quad	0x3fce9435ac8a3726              # double 0.238898
	.quad	0x3fccfa0d77b7c782              # double 0.226381
	.quad	0x3fe9b18b93469942              # double 0.80292300000000005
	.quad	0x3fd0b6672fba01ef              # double 0.261133
	.quad	0x3fd798915bdd7668              # double 0.36868699999999999
	.quad	0x3fcb4b2745bf26f2              # double 0.213231
	.quad	0x3fdf02645e4e69f0              # double 0.48452099999999998
	.quad	0x3fe60915bdd76684              # double 0.68860900000000003
	.quad	0x3fefd73860999dcb              # double 0.99502199999999996
	.quad	0x3fede694898f605b              # double 0.93439700000000003
	.quad	0x3fb06c764adff823              # double 0.064155000000000004
	.quad	0x3fe6202539756c94              # double 0.69142400000000004
	.quad	0x3fd6ade225fa658c              # double 0.35436299999999998
	.quad	0x3fe56b4202d9cf14              # double 0.66934300000000002
	.quad	0x3fdae2f37fbefd00              # double 0.42010199999999998
	.quad	0x3fe334d48882f0e1              # double 0.60019900000000004
	.quad	0x3fc727a20578e5c5              # double 0.180897
	.quad	0x3fd0a05dd8f92afa              # double 0.25978800000000002
	.quad	0x3fed8bc382a12f90              # double 0.92331099999999999
	.quad	0x3fc931a08bfc2225              # double 0.196827
	.quad	0x3feb966be7afa722              # double 0.86211199999999999
	.quad	0x3fd0bbb62413db7f              # double 0.26145699999999999
	.quad	0x3fdd1bde82d7b635              # double 0.45482600000000001
	.quad	0x3fc28e368f084620              # double 0.14496500000000001
	.quad	0x3fec907b784662bb              # double 0.89263700000000001
	.quad	0x3fefebd2b6f19935              # double 0.997537
	.quad	0x3fc3e1650a45d420              # double 0.15531600000000001
	.quad	0x3fa001711947cfa2              # double 0.031260999999999997
	.quad	0x3fe1f38c5436b8fa              # double 0.56098000000000003
	.quad	0x3fdb9d16fc9bc771              # double 0.43146299999999999
	.quad	0x3fc5c5cdd50a88f0              # double 0.170099
	.quad	0x3fd034eb9a176ddb              # double 0.25323000000000001
	.quad	0x3fe77f79c842fa51              # double 0.73431100000000005
	.quad	0x3fd0601bc98a222d              # double 0.25586599999999998
	.quad	0x3fca3ac0c62e4d1a              # double 0.20491799999999999
	.quad	0x3fcc8711d798d8a9              # double 0.22287199999999999
	.quad	0x3fcd8a2a90cd423e              # double 0.23077900000000001
	.quad	0x3fec6b356da0168b              # double 0.88808699999999996
	.quad	0x3fdd19ac79702e66              # double 0.45469199999999999
	.quad	0x3fc595feda661284              # double 0.16864000000000001
	.quad	0x3fd6d49d7ba6698c              # double 0.35672700000000002
	.quad	0x3fc0e9899bf5946c              # double 0.13212699999999999
	.quad	0x3fe1ababead4f590              # double 0.55220599999999997
	.quad	0x3fe97d88c1db0143              # double 0.796574
	.quad	0x3fddde9c0229a5ec              # double 0.46671200000000002
	.quad	0x3fe066256366d7a5              # double 0.51246899999999995
	.quad	0x3fcd4a98aa8650e7              # double 0.22883899999999999
	.quad	0x3fb8adab9f559b3d              # double 0.0964
	.quad	0x3fd9267839cd8128              # double 0.39297300000000002
	.quad	0x3fe357082491afc0              # double 0.60437399999999997
	.quad	0x3fe398fa376922d9              # double 0.61242399999999997
	.quad	0x3fe8ee3b46fdeb53              # double 0.77908100000000002
	.quad	0x3fcb3986338b47c7              # double 0.21269299999999999
	.quad	0x3fed15aaf78feef6              # double 0.90889500000000001
	.quad	0x3fd2f112fd32c626              # double 0.295964
	.quad	0x3fd57ab324851a87              # double 0.33561400000000002
	.quad	0x3fd9f850df15a4ad              # double 0.405781
	.quad	0x3fcf66d7a56de332              # double 0.24532599999999999
	.quad	0x3fed1da597d49d7c              # double 0.90986900000000003
	.quad	0x3febd59d55e6bc62              # double 0.86982599999999999
	.quad	0x3fe32d6cb5350093              # double 0.59929500000000002
	.quad	0x3fef4504816f0069              # double 0.97717500000000001
	.quad	0x3fd1872b020c49ba              # double 0.27387499999999998
	.quad	0x3fe790d173fb7a5f              # double 0.73642799999999997
	.quad	0x3fe51c6d1e108c3f              # double 0.65971999999999997
	.quad	0x3feb66afcce1c582              # double 0.85628499999999996
	.quad	0x3fe0406e19b90eaa              # double 0.50786500000000001
	.quad	0x3fe7f66a55087011              # double 0.74883
	.quad	0x3fe2c13db7f17375              # double 0.58608899999999997
	.quad	0x3fe7dbe1a8262457              # double 0.745591
	.quad	0x3fe74e09784ec637              # double 0.72827600000000003
	.quad	0x3fbee4c0df58c08b              # double 0.12067799999999999
	.quad	0x3fecba6efc371da3              # double 0.89775799999999994
	.quad	0x3fec08c8259e1f3a              # double 0.87607199999999996
	.quad	0x3fe2e7ddca4b124d              # double 0.590804
	.quad	0x3fee25ce5b4245f6              # double 0.94211500000000004
	.quad	0x3fdd807789a45910              # double 0.46096599999999999
	.quad	0x3fdb3bb40b34e768              # double 0.42551899999999998
	.quad	0x3fe425e353f7ced9              # double 0.62962499999999999
	.quad	0x3fbf84230fcf80dc              # double 0.12311
	.quad	0x3fb8333fc86cebbc              # double 0.094532000000000005
	.quad	0x3fd19c2c1b10fd7e              # double 0.27515699999999998
	.quad	0x3fd48d64d7f0ed3e              # double 0.32113000000000003
	.quad	0x3fe313ee5eedcc21              # double 0.59618300000000002
	.quad	0x3fb5f7f8ca8198f2              # double 0.085815000000000002
	.quad	0x3fdac2bd7f51efb7              # double 0.41813600000000001
	.quad	0x3fd859b8023a6ce3              # double 0.38047599999999998
	.quad	0x3fb47a7c9de05037              # double 0.079993999999999996
	.quad	0x3fdcf16b11c6d1e1              # double 0.452235
	.quad	0x3fecb242070b8cfc              # double 0.89676
	.quad	0x3fe2aca9ac365450              # double 0.58357700000000001
	.quad	0x3fc1b5d894812be5              # double 0.13836200000000001
	.quad	0x3fe9971e29b6b2af              # double 0.79969699999999999
	.quad	0x3faf9096bb98c7e3              # double 0.061650000000000003
	.quad	0x3fec919ce075f6fd              # double 0.89277499999999999
	.quad	0x3fe654562e09fe87              # double 0.69779500000000005
	.quad	0x3fe512d3415b1423              # double 0.65854800000000002
	.quad	0x3fdc648c7192ea53              # double 0.443637
	.quad	0x3fab738e6d15ad10              # double 0.053615999999999997
	.quad	0x3fdb01eeed8904f7              # double 0.42199300000000001
	.quad	0x3fbc41cc532a4980              # double 0.110379
	.quad	0x3fd39ddc1e7967cb              # double 0.30651
	.quad	0x3fe7f92d1287c201              # double 0.74916700000000003
	.quad	0x3fe23d07c84b5dcc              # double 0.56994999999999996
	.quad	0x3fea53953dea465a              # double 0.82270299999999996
	.quad	0x3febbe4abe6a337b              # double 0.86697900000000006
	.quad	0x3fb339f340d4dc66              # double 0.075103000000000003
	.quad	0x3fb032441fea8113              # double 0.063267000000000004
	.quad	0x3fe2fa4c61d8622c              # double 0.59305399999999997
	.quad	0x3fec80dc33721d54              # double 0.89073000000000002
	.quad	0x3fe1ef5caf2d7f95              # double 0.56046899999999999
	.quad	0x3fea374794ea0770              # double 0.81924799999999998
	.quad	0x3fc6ee30caa326e1              # double 0.179144
	.quad	0x3fe2970b49e01de2              # double 0.58093799999999995
	.quad	0x3fedd6473471f794              # double 0.93240699999999998
	.quad	0x3fe8192a737110e4              # double 0.75307199999999996
	.quad	0x3fe6b5a426bb55ac              # double 0.709673
	.quad	0x3fd08d434a01abd2              # double 0.25862200000000002
	.quad	0x3fced5b6805a2d73              # double 0.240897
	.quad	0x3fb48754f3775b81              # double 0.080189999999999997
	.quad	0x3fe40bfa0945f9df              # double 0.62646199999999996
	.quad	0x3fd37c957cd466f5              # double 0.304479
	.quad	0x3fe8d6a593a2df93              # double 0.77620199999999995
	.quad	0x3fe70af5fd47bedb              # double 0.72008799999999995
	.quad	0x3fec4b945308bb90              # double 0.88422599999999996
	.quad	0x3fc133226c3b927d              # double 0.13437299999999999
	.quad	0x3fec1129888f861a              # double 0.87709499999999996
	.quad	0x3fb5f3519bd4067d              # double 0.085744000000000001
	.quad	0x3f82b020c49ba5e3              # double 0.0091249999999999994
	.quad	0x3fe77776c4827b70              # double 0.73333300000000001
	.quad	0x3fe5e646f1561911              # double 0.68435999999999997
	.quad	0x3febff0ed3d859c9              # double 0.87488500000000002
	.quad	0x3fb362a5e785b5b7              # double 0.075724
	.quad	0x3fec7cbd556084a5              # double 0.89022699999999999
	.quad	0x3fa0db2702a3486f              # double 0.032922
	.quad	0x3fe61a1db877ab32              # double 0.69068799999999997
	.quad	0x3fcbf83382e44b6f              # double 0.21851200000000001
	.quad	0x3fef9ef5232d2bb2              # double 0.98815399999999998
	.quad	0x3fd3e2cdc011d367              # double 0.31071799999999999
	.quad	0x3fce696a26e54717              # double 0.237592
	.quad	0x3fe09dc725c3dee8              # double 0.51926000000000005
	.quad	0x3f756e264e48626f              # double 0.0052319999999999997
	.quad	0x3fd07d24180d3cff              # double 0.25763799999999998
	.quad	0x3feaeb26bf8769ec              # double 0.84120499999999998
	.quad	0x3fe0465a57646ae4              # double 0.50858800000000004
	.quad	0x3fe7b1dd5d3dc8b8              # double 0.74046199999999995
	.quad	0x3fe5de3b8a19c9d6              # double 0.68337800000000004
	.quad	0x3facf2f123c42a67              # double 0.056541000000000001
	.quad	0x3fe13f8982cb20fb              # double 0.53900599999999999
	.quad	0x3fbd23a29c779a6b              # double 0.113825
	.quad	0x3fe3322d0e560419              # double 0.59987500000000005
	.quad	0x3fe4c39bcba30121              # double 0.64887799999999995
	.quad	0x3fbddffc5479d4d8              # double 0.116699
	.quad	0x3fe40472c0e7bc3c              # double 0.62554299999999996
	.quad	0x3fe4c182ecaeea64              # double 0.64862200000000003
	.quad	0x3fd4337eb28d8666              # double 0.31564300000000001
	.quad	0x3fc52b66b6177ea2              # double 0.16538700000000001
	.quad	0x3fd97952d234eb9a              # double 0.39802999999999999
	.quad	0x3fd548dc11e42e12              # double 0.33257199999999998
	.quad	0x3fe114dd72367e41              # double 0.53379699999999997
	.quad	0x3fecda4f00ef1349              # double 0.90164900000000003
	.quad	0x3fdcc43b2dd377e2              # double 0.44947700000000002
	.quad	0x3fde7570c564f97f              # double 0.47591800000000001
	.quad	0x3fee7cd67fd3f5b6              # double 0.952739
	.quad	0x3fe770e4da09cc32              # double 0.73253100000000004
	.quad	0x3fd90b0f27bb2fec              # double 0.39129999999999998
	.quad	0x3fab96f21f6cacd2              # double 0.053886000000000003
	.quad	0x3fcb7e6f71a7e308              # double 0.21479599999999999
	.quad	0x3fd68ede54b48d3b              # double 0.35247000000000001
	.quad	0x3fefd651b0ccbc06              # double 0.99491200000000002
	.quad	0x3fe7ab4959e62563              # double 0.73965899999999996
	.quad	0x3fd0e3d5fdcdf698              # double 0.26390599999999997
	.quad	0x3feb1cbccf28c79f              # double 0.84725799999999996
	.quad	0x3fce0f345069a4df              # double 0.23483899999999999
	.quad	0x3feb63a190082060              # double 0.855912
	.quad	0x3fe7aa3f034b0e1b              # double 0.73953199999999997
	.quad	0x3fc4bc83a96d4c34              # double 0.16200300000000001
	.quad	0x3fd73443d46b26c0              # double 0.36256500000000003
	.quad	0x3fd63c579f234656              # double 0.34743299999999999
	.quad	0x3fed7778dd616f87              # double 0.92083400000000004
	.quad	0x3fd4e364bec679cc              # double 0.32637899999999997
	.quad	0x3fd3e008e9b38d61              # double 0.31054900000000002
	.quad	0x3fb007fed20296b3              # double 0.062621999999999997
	.quad	0x3fe547e28240b780              # double 0.66502499999999998
	.quad	0x3fd54e9c4545846f              # double 0.33292300000000002
	.quad	0x3fe8900e6afcce1c              # double 0.76758499999999996
	.quad	0x3feaf60e0eb67c28              # double 0.84253599999999995
	.quad	0x3fd2630a915379fb              # double 0.28729500000000002
	.quad	0x3fef4c7d1bb4916d              # double 0.97808700000000003
	.quad	0x3fc202a77a2cecc8              # double 0.140706
	.quad	0x3fefaea0fd3b29a2              # double 0.99006700000000003
	.quad	0x3fe18d5c74751ce3              # double 0.54850600000000005
	.quad	0x3fe210d9d7774aba              # double 0.56455699999999998
	.quad	0x3fee720642396074              # double 0.95141900000000001
	.quad	0x3fd48f47304039ac              # double 0.321245
	.quad	0x3fd45a20ddc61954              # double 0.31800099999999998
	.quad	0x3fd65eaee2003ab8              # double 0.34952899999999998
	.quad	0x3fefb8f7985271bd              # double 0.99132900000000001
	.quad	0x3fe773e24febd09e              # double 0.73289599999999999
	.quad	0x3fed9c9b41398634              # double 0.92536700000000005
	.quad	0x3faa7a85015c2092              # double 0.051715999999999998
	.quad	0x3fd0d0bfa0945f9e              # double 0.262741
	.quad	0x3fd6bdf090f733a9              # double 0.35534300000000002
	.quad	0x3fc2cdd0d8cb07d1              # double 0.14690600000000001
	.quad	0x3fe9b05532617c1c              # double 0.80277500000000001
	.quad	0x3fe0f25a250f8402              # double 0.52958400000000005
	.quad	0x3fd8c393682730c6              # double 0.38693699999999998
	.quad	0x3fd65be1a8262457              # double 0.349358
	.quad	0x3fdb1eeed8904f6e              # double 0.423763
	.quad	0x3fc547304039abf3              # double 0.16623499999999999
	.quad	0x3fc0639d5e4a3832              # double 0.12803999999999999
	.quad	0x3fdd8a222d5171e3              # double 0.46155600000000002
	.quad	0x3fe589efd86a8fc1              # double 0.67308800000000002
	.quad	0x3fcd1d1d4738a3b5              # double 0.22745099999999999
	.quad	0x3fd3ab1d4f9c1f86              # double 0.30731900000000001
	.quad	0x3fe332d2bb23571d              # double 0.59995399999999999
	.quad	0x3fe518090b417ca2              # double 0.65918399999999999
	.quad	0x3fdc5c4eb56fb8f5              # double 0.44313399999999997
	.quad	0x3fe02369fcf3dc05              # double 0.50432299999999997
	.quad	0x3fe067620ee8d10f              # double 0.51261999999999996
	.quad	0x3fed908a265f0f5a              # double 0.92389399999999999
	.quad	0x3fe33c87db2b3461              # double 0.60113899999999998
	.quad	0x3fea7cbd556084a5              # double 0.82772699999999999
	.quad	0x3fed1930be0ded29              # double 0.90932500000000005
	.quad	0x3fd5b584b1ab0857              # double 0.33920400000000001
	.quad	0x3feaf204295a6c5d              # double 0.84204299999999999
	.quad	0x3fe93588e368f084              # double 0.78778499999999995
	.quad	0x3fec0b8cfbfc6541              # double 0.87641000000000002
	.quad	0x3fccc5004fb1183b              # double 0.22476199999999999
	.quad	0x3fdcc36976bc1f00              # double 0.44942700000000002
	.quad	0x3fee039042d8c2a4              # double 0.93793499999999996
	.quad	0x3fe673c2dadb8349              # double 0.701631
	.quad	0x3fc8c0c62e4d1a65              # double 0.193383
	.quad	0x3fe6efe4ffc9795b              # double 0.71678399999999998
	.quad	0x3fc658d5842b734b              # double 0.17458599999999999
	.quad	0x3fb2f1455219a848              # double 0.073994000000000004
	.quad	0x3fd60b8cfbfc6541              # double 0.34445500000000001
	.quad	0x3fd647e49b1fab97              # double 0.348138
	.quad	0x3fd60fe47991bc56              # double 0.34472000000000003
	.quad	0x3fc98db48909289e              # double 0.19963700000000001
	.quad	0x3fe1ec3760bf5d79              # double 0.56008500000000006
	.quad	0x3fe9cad362e90364              # double 0.80600899999999997
	.quad	0x3fde9118c197e564              # double 0.47760599999999998
	.quad	0x3fdb0f3882278d0d              # double 0.42280400000000001
	.quad	0x3fe0ef2c7325918a              # double 0.529196
	.quad	0x3fe0936c58eeae9f              # double 0.51799600000000001
	.quad	0x3fe91f72f76e6107              # double 0.78508900000000004
	.quad	0x3fe0e7c8d195896a              # double 0.52829400000000004
	.quad	0x3fe33b6672fba01f              # double 0.60100100000000001
	.quad	0x3fd17baecd07852f              # double 0.27317399999999997
	.quad	0x3fe0889a02752546              # double 0.516675
	.quad	0x3fd11e8a2ec28b2a              # double 0.26748899999999998
	.quad	0x3fed7bdad7518b0d              # double 0.92136899999999999
	.quad	0x3fee8841ede1198b              # double 0.95413300000000001
	.quad	0x3f880baa582dbe7f              # double 0.011741
	.quad	0x3fe1676640a6b93d              # double 0.54387200000000002
	.quad	0x3fe496638433d6c7              # double 0.64335799999999999
	.quad	0x3fbd4bdfd2630ec3              # double 0.114439
	.quad	0x3fb682e87d2c7b89              # double 0.087934999999999999
	.quad	0x3fecc26fe718a86d              # double 0.89873499999999995
	.quad	0x3fe01fcf3dc054ef              # double 0.50388299999999997
	.quad	0x3fe135a20ddc6195              # double 0.53779699999999997
	.quad	0x3fe5e75147f13059              # double 0.68448699999999996
	.quad	0x3fe11cd5f99c38b0              # double 0.53476999999999997
	.quad	0x3fe2a3f8982cb210              # double 0.58251600000000003
	.quad	0x3fe33c1acde19fc3              # double 0.60108700000000004
	.quad	0x3feaf8ec0f883340              # double 0.84288600000000002
	.quad	0x3fed9769a91105e2              # double 0.92473300000000003
	.quad	0x3fe21170d62bf120              # double 0.56462900000000005
	.quad	0x3fe9e16b54e2b064              # double 0.80876700000000001
	.quad	0x3fd6cd466f5019f4              # double 0.35627900000000001
	.quad	0x3f8a597d49d7ba67              # double 0.012866000000000001
	.quad	0x3faee6106ab14ec2              # double 0.060349
	.quad	0x3fe7a235b4edb2f6              # double 0.73855099999999996
	.quad	0x3fe47826edaa92e6              # double 0.63966699999999999
	.quad	0x3fedba12b5e529bb              # double 0.92896400000000001
	.quad	0x3fe846455eaee200              # double 0.75857799999999997
	.quad	0x3fdb92146a1a500d              # double 0.43079099999999998
	.quad	0x3fc1700cd855970b              # double 0.13623199999999999
	.quad	0x3fe47d73c9257860              # double 0.64031400000000005
	.quad	0x3fdcc5974e65bea1              # double 0.44956000000000002
	.quad	0x3fcc82f944241c3f              # double 0.222747
	.quad	0x3fe3552e2fbe33ad              # double 0.60414800000000002
	.quad	0x3feb35c9e6687f45              # double 0.85031599999999996
	.quad	0x3fe7e1869835158c              # double 0.74628000000000005
	.quad	0x3fd04906034f3fd9              # double 0.25445699999999999
	.quad	0x3feceaf251c193b4              # double 0.90368000000000003
	.quad	0x3fe3ef2a5a469d73              # double 0.62294499999999997
	.quad	0x3fee667b5f1bef4a              # double 0.95001000000000002
	.quad	0x3fe92187a4a48f97              # double 0.78534300000000001
	.quad	0x3fefbbbc6eb0b7c3              # double 0.99166699999999996
	.quad	0x3feb2ea960b6f9fd              # double 0.84944600000000003
	.quad	0x3fea7fac1d29dc72              # double 0.82808499999999996
	.quad	0x3fd123d0bfa09460              # double 0.26781100000000002
	.quad	0x3fd57d73c9257860              # double 0.33578200000000002
	.quad	0x3fe472a5a469d734              # double 0.63899499999999998
	.quad	0x3febd0247021d10b              # double 0.86915799999999999
	.quad	0x3fd2d40ee06d9381              # double 0.29419299999999998
	.quad	0x3fa91212513b5bf7              # double 0.048966000000000003
	.quad	0x3fb3b43d89ce4a7b              # double 0.076968999999999996
	.quad	0x3fe71713ad5bee3d              # double 0.72156699999999996
	.quad	0x3fe5e3f78bbd3804              # double 0.68407799999999996
	.quad	0x3fb9707182235b4f              # double 0.099372000000000002
	.quad	0x3fdc0ba6266fd652              # double 0.43821100000000002
	.quad	0x3fe625f633ce63a6              # double 0.69213400000000003
	.quad	0x3fed36f3b213e3e3              # double 0.91295800000000005
	.quad	0x3fe6054690de0935              # double 0.68814399999999998
	.quad	0x3feceadb402d16b9              # double 0.90366899999999994
	.quad	0x3fe7647fdc5931ca              # double 0.73101799999999995
	.quad	0x3fe4a24463065f96              # double 0.64480800000000005
	.quad	0x3fcaa93f290abb45              # double 0.20829
	.quad	0x3f90196d8f4f93bc              # double 0.015722
	.quad	0x3fec0512231832fd              # double 0.87561900000000004
	.quad	0x3fd8cea6c1a048e0              # double 0.38761299999999999
	.quad	0x3feb7bd48cb4aec9              # double 0.85886600000000002
	.quad	0x3fdb9146e4c0df59              # double 0.43074200000000001
	.quad	0x3fd624c404a72eae              # double 0.34599400000000002
	.quad	0x3fefaa0232096788              # double 0.98950300000000002
	.quad	0x3fef5ab191dde376              # double 0.97982100000000005
	.quad	0x3fe3daff2a172abf              # double 0.62048300000000001
	.quad	0x3fe471843c3a42f2              # double 0.63885700000000001
	.quad	0x3fbc54de7ea5f84d              # double 0.11067
	.quad	0x3fe2af46aa087ca6              # double 0.58389599999999997
	.quad	0x3fbf253da72a7bd5              # double 0.12166200000000001
	.quad	0x3fe888b75ea67e84              # double 0.76668899999999995
	.quad	0x3feb5393250b5244              # double 0.85395200000000004
	.quad	0x3f9abcd78c436fc1              # double 0.026110999999999999
	.quad	0x3fe4d0870110a138              # double 0.65045500000000001
	.quad	0x3fdd2c12ad81adeb              # double 0.45581500000000003
	.quad	0x3fb24dd2f1a9fbe7              # double 0.071499999999999994
	.quad	0x3fd12be0589acbc9              # double 0.26830300000000001
	.quad	0x3fe3b08787485e3e              # double 0.61529900000000004
	.quad	0x3fe7c81908e581cf              # double 0.74317599999999995
	.quad	0x3fe2d9ee88df3733              # double 0.58910300000000004
	.quad	0x3fe6eb0fadf2ecf2              # double 0.716194
	.quad	0x3fb395c422036007              # double 0.076504000000000003
	.quad	0x3fe55ee34fc610f1              # double 0.66783300000000001
	.quad	0x3fe712253111f0c3              # double 0.72096499999999997
	.quad	0x3fdfadfb506dd69d              # double 0.49499399999999999
	.quad	0x3fe63db1a6d698fe              # double 0.69503099999999995
	.quad	0x3fefff2a172abef0              # double 0.99989799999999995
	.quad	0x3fe82674080f98fa              # double 0.75469399999999998
	.quad	0x3fe9bfdf7e8038a0              # double 0.80467200000000005
	.quad	0x3fd2debd9018e758              # double 0.29484500000000002
	.quad	0x3fd465061416377a              # double 0.318666
	.quad	0x3fe1acb85a4f00ef              # double 0.55233399999999999
	.quad	0x3fe0e2584f4c6e6e              # double 0.52763000000000004
	.quad	0x3fe2e837f7be121f              # double 0.59084700000000001
	.quad	0x3fe9250b524399b3              # double 0.78577200000000003
	.quad	0x3fd1b80a9de8b3b3              # double 0.27685799999999999
	.quad	0x3fd0f5946c332f01              # double 0.26498899999999997
	.quad	0x3fe173cb3e5753a4              # double 0.54538500000000001
	.quad	0x3fe9bccaf709b739              # double 0.80429600000000001
	.quad	0x3fe682d16b97fe8f              # double 0.70346900000000001
	.quad	0x3fd5d744f5d35654              # double 0.34126400000000001
	.quad	0x3feaf93ff25e56cd              # double 0.84292599999999995
	.quad	0x3fe3e490a350d280              # double 0.62165099999999995
	.quad	0x3fe54a48f96e1587              # double 0.66531799999999996
	.quad	0x3fe606034f3fd934              # double 0.68823400000000001
	.quad	0x3fbb5696e58a32f4              # double 0.10679
	.quad	0x3fa742dcf4623d0c              # double 0.045432
	.quad	0x3fe7bf61aa3f034b              # double 0.74211199999999999
	.quad	0x3fefe16f86a09891              # double 0.99626899999999996
	.quad	0x3fea8f301eabbcb2              # double 0.82997900000000002
	.quad	0x3feb8c6b484d76ab              # double 0.86089099999999996
	.quad	0x3fdc558a76102795              # double 0.44272099999999998
	.quad	0x3fef71c970f7b9e0              # double 0.98263999999999995
	.quad	0x3fe7e672fba01eef              # double 0.74688100000000002
	.quad	0x3fed26e115592d99              # double 0.91099600000000003
	.quad	0x3fd18ca8198f1d3f              # double 0.27421000000000001
	.quad	0x3fc1e2ef4e0114d3              # double 0.139738
	.quad	0x3fe8988094e5d5b2              # double 0.76861599999999997
	.quad	0x3fe974751ce28ed6              # double 0.79546600000000001
	.quad	0x3fee02fb5d031056              # double 0.93786400000000003
	.quad	0x3fc13215fcc1871e              # double 0.13434099999999999
	.quad	0x3fd8617c1bda511a              # double 0.38095000000000001
	.quad	0x3fdbd5ae1cde5d18              # double 0.434917
	.quad	0x3fefb70cdc8754f3              # double 0.99109499999999994
	.quad	0x3fe5c4b09e98dcdb              # double 0.68025999999999998
	.quad	0x3fa2f61ed5ae1cde              # double 0.037033999999999997
	.quad	0x3f55097c80841ede              # double 0.001284
	.quad	0x3fe7004102ff8ec1              # double 0.718781
	.quad	0x3fe1502eec7c957d              # double 0.54103800000000002
	.quad	0x3fd8ff865d7cb2d9              # double 0.390596
	.quad	0x3fd6c914b167ec78              # double 0.35602299999999998
	.quad	0x3fc54c09c3ce208a              # double 0.166383
	.quad	0x3fabf39d1b2e59b0              # double 0.054593000000000003
	.quad	0x3fc8d4562e09fe87              # double 0.19398000000000001
	.quad	0x3fe5f503b81b64e0              # double 0.68615899999999996
	.quad	0x3fe7ef049a9973da              # double 0.74792700000000001
	.quad	0x3fd3ac215b9a5a8a              # double 0.30738100000000002
	.quad	0x3fd39fa54c554328              # double 0.30661899999999997
	.quad	0x3fe45e3da2f8bdec              # double 0.63650399999999996
	.quad	0x3fd6e43675ddd2af              # double 0.35767900000000002
	.quad	0x3feadd701d9f4d38              # double 0.83953100000000003
	.quad	0x3fb8e0daa0cae643              # double 0.097181000000000003
	.quad	0x3fdf7a17f4128bf4              # double 0.49182700000000001
	.quad	0x3fa2c3c9eecbfb16              # double 0.036650000000000002
	.quad	0x3fec21ad6451b930              # double 0.87911099999999998
	.quad	0x3fe2529bae46cfc8              # double 0.57258399999999998
	.quad	0x3fe2fa5d28d002e2              # double 0.59306199999999998
	.quad	0x3fe2475c4a83b1d1              # double 0.57121100000000002
	.quad	0x3fe7f63c31df761d              # double 0.74880800000000003
	.quad	0x3febb361565c2d28              # double 0.86564700000000006
	.quad	0x3fb32756861e9292              # double 0.074818999999999997
	.quad	0x3fc8259e1f3a57eb              # double 0.18864800000000001
	.quad	0x3fe8a990f301eabc              # double 0.77069900000000002
	.quad	0x3fe6658e64b23140              # double 0.69989699999999999
	.quad	0x3fe933ebbfd71b04              # double 0.78758799999999995
	.quad	0x3fe279fcb0c026cc              # double 0.57739099999999999
	.quad	0x3fe79c779a6b50b1              # double 0.73785000000000001
	.quad	0x3fe912be48a58b3f              # double 0.78353799999999996
	.quad	0x3fe2a832b990afe6              # double 0.58303199999999999
	.quad	0x3fe8acf7446f9b99              # double 0.77111399999999997
	.quad	0x3fe0cca0c282c6ef              # double 0.52497899999999997
	.quad	0x3f7f98b71b8aa002              # double 0.0077140000000000004
	.quad	0x3fdfbb83cf2cf95d              # double 0.49581999999999998
	.quad	0x3fc255c0fcb4f1e5              # double 0.14324200000000001
	.quad	0x3fcc32096787ce96              # double 0.220277
	.quad	0x3fdbd2e514c22ee4              # double 0.43474699999999999
	.quad	0x3fc7a9973d9ec700              # double 0.184863
	.quad	0x3fcb1fb3fa6defc8              # double 0.21190500000000001
	.quad	0x3fe997396d0917d7              # double 0.79971000000000003
	.quad	0x3fee93b5bf6a0dbb              # double 0.95553100000000002
	.quad	0x3fc87bcc2938de6e              # double 0.191278
	.quad	0x3fee1baa1511dffc              # double 0.94087699999999996
	.quad	0x3fd26e58a32f4491              # double 0.28798499999999999
	.quad	0x3fee7861a60d4563              # double 0.95219500000000001
	.quad	0x3fe1cbb1af3a14cf              # double 0.55611500000000003
	.quad	0x3fd44d013a92a305              # double 0.31719999999999998
	.quad	0x3fda755ffe6d58c9              # double 0.413414
	.quad	0x3fe6d6494d50ebab              # double 0.71365800000000001
	.quad	0x3fe11d7dbf487fcc              # double 0.53485000000000005
	.quad	0x3fd31626b2f23034              # double 0.29822700000000002
	.quad	0x3fca9d16fc9bc771              # double 0.20791899999999999
	.quad	0x3fe786db50f40e5a              # double 0.73521199999999998
	.quad	0x3fd6344c37e6f71a              # double 0.34694199999999997
	.quad	0x3fe1a9478c868ba0              # double 0.55191400000000002
	.quad	0x3fd71f969e3c9689              # double 0.36130299999999999
	.quad	0x3fe47a58f7121ab5              # double 0.63993500000000003
	.quad	0x3fe1f7ec3547e069              # double 0.56151399999999996
	.quad	0x3fe2e6fd651b0ccc              # double 0.59069700000000003
	.quad	0x3fce5a469d7342ee              # double 0.23713000000000001
	.quad	0x3feebcc07aaef2c7              # double 0.96054099999999997
	.quad	0x3fee46bf01322f27              # double 0.94613599999999998
	.quad	0x3fba075f6fd21ff3              # double 0.101675
	.quad	0x3fe55ab191dde376              # double 0.66732100000000005
	.quad	0x3fe2f8ee28672757              # double 0.59288700000000005
	.quad	0x3fd6f5ad96a6a012              # double 0.35874499999999998
	.quad	0x3fd242dcf4623d0c              # double 0.285331
	.quad	0x3fcc8216c61522a7              # double 0.22272
	.quad	0x3fda2e90364388ec              # double 0.40909200000000001
	.quad	0x3fb30446b69db65f              # double 0.074284000000000003
	.quad	0x3fd7cd07852f7f4a              # double 0.37188900000000003
	.quad	0x3fd43b18dac258d6              # double 0.31610700000000003
	.quad	0x3fde6c8f75536934              # double 0.47537600000000002
	.quad	0x3fb914b167ec7864              # double 0.097972000000000003
	.quad	0x3fee1a1b9f98b71c              # double 0.94068700000000005
	.quad	0x3fec7de2ef4e0115              # double 0.89036700000000002
	.quad	0x3fe017aaac1094a3              # double 0.50288900000000003
	.quad	0x3fe477a4e7ab7564              # double 0.63960499999999998
	.quad	0x3fbd46801711947d              # double 0.114357
	.quad	0x3fea62413db7f173              # double 0.82449399999999995
	.quad	0x3fecded288ce703b              # double 0.9022
	.quad	0x3fef4dc22ab25b31              # double 0.97824199999999994
	.quad	0x3fe2fdae81882adc              # double 0.59346699999999997
	.quad	0x3fe0d3eb399f5dff              # double 0.52586900000000003
	.quad	0x3feeab3892ee84ad              # double 0.95840099999999994
	.quad	0x3fda42917507e9d9              # double 0.41031299999999998
	.quad	0x3feb6fbd273d5bab              # double 0.85738999999999999
	.quad	0x3fe821a93293d103              # double 0.75410900000000003
	.quad	0x3fe9afb19e731d2e              # double 0.80269699999999999
	.quad	0x3fe6ec41dd1a21ea              # double 0.71633999999999998
	.quad	0x3fc7844d013a92a3              # double 0.183725
	.quad	0x3fea98aeb80ecfa7              # double 0.83113800000000004
	.quad	0x3fd6c74b838c111b              # double 0.35591400000000001
	.quad	0x3fd37863beec397a              # double 0.30422300000000002
	.quad	0x3fe00f301eabbcb2              # double 0.50185400000000002
	.quad	0x3fed121682f94424              # double 0.90845799999999998
	.quad	0x3fe68cf1800a7c5b              # double 0.70470500000000003
	.quad	0x3f9fa4c61d8622c4              # double 0.030901999999999999
	.quad	0x3fc5aeddce7cd035              # double 0.16939899999999999
	.quad	0x3fc43dff3f0fe048              # double 0.158142
	.quad	0x3fb487a8d64d7f0f              # double 0.080195000000000002
	.quad	0x3fd21bda5119ce07              # double 0.28294999999999998
	.quad	0x3fdd29845dc83233              # double 0.45565899999999998
	.quad	0x3fe1f2f555821294              # double 0.56090799999999996
	.quad	0x3fa2ccd530489d28              # double 0.036719000000000002
	.quad	0x3fd621ab4b72c519              # double 0.34580499999999997
	.quad	0x3fc6f911cf355cd9              # double 0.179476
	.quad	0x3fecebb98c7e2824              # double 0.90377499999999999
	.quad	0x3fe7af81626b2f23              # double 0.740174
	.quad	0x3fc90d306a2b1705              # double 0.195715
	.quad	0x3fe8a8c79f666235              # double 0.77060300000000004
	.quad	0x3fc86b9c304ccee6              # double 0.19078400000000001
	.quad	0x3fe84471b4784231              # double 0.758355
	.quad	0x3fee9f2dc2b0ea18              # double 0.95693099999999997
	.quad	0x3fa86290eed02cd4              # double 0.047627000000000003
	.quad	0x3fe60f68be2f7b18              # double 0.68938100000000002
	.quad	0x3fe272c5197a2489              # double 0.57650999999999997
	.quad	0x3fe0c4e7253da72a              # double 0.52403599999999995
	.quad	0x3fdfbb73083558a7              # double 0.49581599999999998
	.quad	0x3fe8011b1d92b7fe              # double 0.750135
	.quad	0x3fbb7574f722e1ac              # double 0.107261
	.quad	0x3fe7fa3fcc9ea9a4              # double 0.74929800000000001
	.quad	0x3fe802795703f2d4              # double 0.75030200000000002
	.quad	0x3fd74e831ad2135e              # double 0.36416700000000002
	.quad	0x3fdd8c9752977c89              # double 0.46170600000000001
	.quad	0x3fc95579af1886e0              # double 0.19792100000000001
	.quad	0x3fe0e1aa3f034b0e              # double 0.52754699999999999
	.quad	0x3fd52ea960b6f9fd              # double 0.33097300000000002
	.quad	0x3fe714ee392e1ef7              # double 0.72130499999999997
	.quad	0x3fc186013660e51d              # double 0.136902
	.quad	0x3f8e3e29307af20f              # double 0.014767000000000001
	.quad	0x3fe9d24399b2c40d              # double 0.806917
	.quad	0x3fe9f5e2046c764b              # double 0.81126500000000001
	.quad	0x3feb2619da9c9928              # double 0.84840099999999996
	.quad	0x3fe99335d249e450              # double 0.79922000000000004
	.quad	0x3fe48ce91c8eac00              # double 0.64220100000000002
	.quad	0x3fd6f3d3a1d323ff              # double 0.35863200000000001
	.quad	0x3fe153198288051d              # double 0.54139400000000004
	.quad	0x3fb74fb549f94856              # double 0.091060000000000002
	.quad	0x3fe01409a2403148              # double 0.50244599999999995
	.quad	0x3fc4ccb3a2595bbc              # double 0.162497
	.quad	0x3fdc348f53c579f2              # double 0.44070799999999999
	.quad	0x3fd67eb28d8665e0              # double 0.35148299999999999
	.quad	0x3fd829bae46cfc83              # double 0.37754700000000002
	.quad	0x3fe71e94ab1d4f9c              # double 0.72248299999999999
	.quad	0x3fcadcf4623d0bfa              # double 0.209868
	.quad	0x3fd7093532e7b3d9              # double 0.35993700000000001
	.quad	0x3fe770ac3a860dcc              # double 0.73250400000000004
	.quad	0x3fed085f4a1272c9              # double 0.90727199999999997
	.quad	0x3fc2d4c33b539325              # double 0.147118
	.quad	0x3fef43c18b502abb              # double 0.97702100000000002
	.quad	0x3fe22fdda8bd230c              # double 0.56834300000000004
	.quad	0x3fea5e6ddf00abf7              # double 0.82402699999999995
	.quad	0x3feca4180d3cff65              # double 0.89503100000000002
	.quad	0x3fe8ab4528283d36              # double 0.77090700000000001
	.quad	0x3fe4f50a02b84125              # double 0.65491200000000005
	.quad	0x3fc4c575c0767d35              # double 0.162276
	.quad	0x3fee12018a43bb41              # double 0.93969800000000003
	.quad	0x3fe68433d6c72192              # double 0.70363799999999999
	.quad	0x3fe8a90abb44e50c              # double 0.77063499999999995
	.quad	0x3fe5275ab7dc7ac0              # double 0.66105400000000003
	.quad	0x3fe71270b06c43f6              # double 0.721001
	.quad	0x3fe8483ec892ab69              # double 0.75881900000000002
	.quad	0x3fdb2d5171e29b6b              # double 0.42464099999999999
	.quad	0x3fe6b23dd54da4cf              # double 0.70925800000000006
	.quad	0x3fe2a4b5568e820e              # double 0.58260599999999996
	.quad	0x3fd15e28aa433509              # double 0.271372
	.quad	0x3fe74069e7fb267c              # double 0.72661299999999995
	.quad	0x3fad0e5604189375              # double 0.056750000000000002
	.quad	0x3fe5039042d8c2a4              # double 0.65668499999999996
	.quad	0x3fefc45aa2e3c537              # double 0.99271900000000001
	.quad	0x3fe97e1975f2cb64              # double 0.79664299999999999
	.quad	0x3fcbfe004b7f5a53              # double 0.21868899999999999
	.quad	0x3fe0df37329c347f              # double 0.52724800000000005
	.quad	0x3fecb0fcf80dc337              # double 0.89660499999999999
	.quad	0x3fef79ebe9c88616              # double 0.98363299999999998
	.quad	0x3fb98bc59b8023a7              # double 0.099789000000000003
	.quad	0x3fc9886df82b1f68              # double 0.19947599999999999
	.quad	0x3fefb825e13b18db              # double 0.99122900000000002
	.quad	0x3fee6709fa54c554              # double 0.95007799999999997
	.quad	0x3fe5fa52ac753e70              # double 0.68680699999999995
	.quad	0x3fea930be0ded289              # double 0.83045000000000002
	.quad	0x3fecddfc9ff92f2b              # double 0.90209799999999996
	.quad	0x3f716ebd4cfd08d5              # double 0.0042560000000000002
	.quad	0x3fa919695d91ab8f              # double 0.049022000000000003
	.quad	0x3fee7457c0b13598              # double 0.95170200000000004
	.quad	0x3fa7d50225742dcf              # double 0.046546999999999998
	.quad	0x3fd160f1b25f633d              # double 0.27154200000000001
	.quad	0x3fcf3bf2f5558213              # double 0.24401700000000001
	.quad	0x3fd4c7abfb9bed31              # double 0.324687
	.quad	0x3fe25a0be5109071              # double 0.573492
	.quad	0x3fe0f76c4827b6fe              # double 0.53020299999999998
	.quad	0x3f927a20578e5c4f              # double 0.018044000000000001
	.quad	0x3fddfcbd556084a5              # double 0.468551
	.quad	0x3fabec460ed80a18              # double 0.054537000000000002
	.quad	0x3fe2cea28fe260b3              # double 0.58772400000000002
	.quad	0x3fd78c6d612c6ac2              # double 0.367946
	.quad	0x3fe99d53cddd6e05              # double 0.80045500000000003
	.quad	0x3fe92a4b9884c6a4              # double 0.78641300000000002
	.quad	0x3fdcb1a6d698fe69              # double 0.44834299999999999
	.quad	0x3feea19439de481f              # double 0.95722399999999996
	.quad	0x3fe377f27fe4bcae              # double 0.60839200000000004
	.quad	0x3fbcd9e83e425aee              # double 0.11269999999999999
	.quad	0x3fef1c9b41398634              # double 0.97224200000000005
	.quad	0x3fec0895d0b73d19              # double 0.87604800000000005
	.quad	0x3fd1e5c0b9991362              # double 0.27964800000000001
	.quad	0x3fef09bb6aa4b988              # double 0.96993799999999996
	.quad	0x3fbf79e9d0e991ff              # double 0.12295399999999999
	.quad	0x3fe79b4784230fd0              # double 0.73770500000000006
	.quad	0x3fe89cd1c7de5083              # double 0.76914300000000002
	.quad	0x3fd2a8ef77f27fe5              # double 0.29156100000000001
	.quad	0x3fe4e4c0df58c08b              # double 0.65292399999999995
	.quad	0x3fd8774256bca537              # double 0.38227899999999998
	.quad	0x3fcd4d9c6b053198              # double 0.228931
	.quad	0x3fd7a22b3892ee85              # double 0.36927300000000002
	.quad	0x3fef2569b17481b2              # double 0.97331699999999999
	.quad	0x3fe85d15f02c4d66              # double 0.76136300000000001
	.quad	0x3fcc8c26138fffbd              # double 0.223027
	.quad	0x3fc1903211cb039f              # double 0.137213
	.quad	0x3fdc88d2a1f8e3ac              # double 0.445851
	.quad	0x3fe26362a5e785b6              # double 0.57463200000000003
	.quad	0x3fedb99f5dfeb8d8              # double 0.92890899999999998
	.quad	0x3fdecfede97d06bc              # double 0.48144100000000001
	.quad	0x3fcf2af1455219a8              # double 0.24349799999999999
	.quad	0x3fc0ce4ead0c3d25              # double 0.131296
	.quad	0x3fee441fea8112ba              # double 0.94581599999999999
	.quad	0x3feac7abfb9bed31              # double 0.83687400000000001
	.quad	0x3fd2e12620253975              # double 0.29499199999999998
	.quad	0x3fd5ec2ce4649907              # double 0.34254000000000001
	.quad	0x3fd642d05f288484              # double 0.34782800000000003
	.quad	0x3fefe39d5e4a3832              # double 0.99653499999999995
	.quad	0x3fc7ff8a8f3a9b07              # double 0.18748600000000001
	.quad	0x3fd12eba27ae9ab3              # double 0.26847700000000002
	.quad	0x3fcc635a426bb55b              # double 0.22178200000000001
	.quad	0x3f715592d98bf7f0              # double 0.0042319999999999997
	.quad	0x3fdddb7f1737542a              # double 0.46652199999999999
	.quad	0x3fca7bc3c5bd0e13              # double 0.206902
	.quad	0x3fe8f6555c52e72e              # double 0.78007000000000004
	.quad	0x3faae0e30446b69e              # double 0.052497000000000002
	.quad	0x3fe860a2014727dd              # double 0.76179600000000003
	.quad	0x3fe3bf077ccc0379              # double 0.61706899999999998
	.quad	0x3fbe323bbc6eb0b8              # double 0.117954
	.quad	0x3fdaad6451b93038              # double 0.41683300000000001
	.quad	0x3fd6bbbe878fabda              # double 0.355209
	.quad	0x3fe5e134ce3de615              # double 0.68374100000000004
	.quad	0x3fb1e071c53f39d2              # double 0.069831000000000004
	.quad	0x3fdda4ce8101f31f              # double 0.46318399999999998
	.quad	0x3fef645c358afc48              # double 0.98100100000000001
	.quad	0x3fd3e19fc2a8869c              # double 0.31064599999999998
	.quad	0x3fd72b55ef1fddec              # double 0.36202000000000001
	.quad	0x3fbe38a7e73a365d              # double 0.118052
	.quad	0x3fe9e13f4a98aa86              # double 0.80874599999999996
	.quad	0x3fc9d1569f490603              # double 0.20170099999999999
	.quad	0x3fd085b18548a9bd              # double 0.25816
	.quad	0x3f989374bc6a7efa              # double 0.024
	.quad	0x3fd3d72bcb5fe543              # double 0.31000800000000001
	.quad	0x3fb772e6a76965f5              # double 0.091596999999999998
	.quad	0x3fe1ce874c8ffb8b              # double 0.55646099999999998
	.quad	0x3fe780a9de8b3b32              # double 0.734456
	.quad	0x3fde0cd423d9231c              # double 0.46953299999999998
	.quad	0x3fd6b990afe60c39              # double 0.355076
	.quad	0x3fbc10f94c87980f              # double 0.109634
	.quad	0x3fec9c6d1e108c3f              # double 0.89409499999999997
	.quad	0x3f949235f8099179              # double 0.020088999999999999
	.quad	0x3fd7dbd72bcb5fe5              # double 0.37279299999999999
	.quad	0x3fcb7625204af923              # double 0.21454300000000001
	.quad	0x3fd44d013a92a305              # double 0.31719999999999998
	.quad	0x3feeda8bd230b9dc              # double 0.96417799999999997
	.quad	0x3fea07f66e86c658              # double 0.81347199999999997
	.quad	0x3fdd628027d88c1e              # double 0.45913700000000002
	.quad	0x3fddc521dda059a7              # double 0.46515699999999999
	.quad	0x3fd24fe79ee02a78              # double 0.28612700000000002
	.quad	0x3fe795c63ae2541e              # double 0.73703300000000005
	.quad	0x3fe7e5907d912557              # double 0.74677300000000002
	.quad	0x3fe341a47a9e2bd0              # double 0.60176300000000005
	.quad	0x3fdc013a92a30553              # double 0.43757499999999999
	.quad	0x3fee61847f562175              # double 0.94940400000000003
	.quad	0x3fcd50fc71d60631              # double 0.22903399999999999
	.quad	0x3fe917481b21c476              # double 0.78409200000000001
	.quad	0x3fdf1a47a9e2bcf9              # double 0.48597899999999999
	.quad	0x3fdb7e308787485e              # double 0.42957699999999999
	.quad	0x3fe9dfdac68a936c              # double 0.80857599999999996
	.quad	0x3fd24f82f5126634              # double 0.286103
	.quad	0x3fbe038194c01605              # double 0.117241
	.quad	0x3fe7ace89656eefa              # double 0.73985699999999999
	.quad	0x3fdd2fc2656abde4              # double 0.45604
	.quad	0x3fd46fe718a86d72              # double 0.31933
	.quad	0x3fe3e37bd05af6c7              # double 0.62151900000000004
	.quad	0x3fe17f5a5332acfb              # double 0.54679599999999995
	.quad	0x3fe14cff21b3aeef              # double 0.54064900000000005
	.quad	0x3fe55fa658c4bd34              # double 0.66792600000000002
	.quad	0x3fb00e7bc3c5bd0e              # double 0.062720999999999999
	.quad	0x3fd44c9c90c4dec2              # double 0.31717600000000001
	.quad	0x3fdb47baa9b499d0              # double 0.42625299999999999
	.quad	0x3fee17204295a6c6              # double 0.94032300000000002
	.quad	0x3fe25857afea3df7              # double 0.57328400000000002
	.quad	0x3fe4b32ce89656ef              # double 0.646872
	.quad	0x3fa74ba51a005c46              # double 0.045498999999999998
	.quad	0x3fe9906034f3fd93              # double 0.79887399999999997
	.quad	0x3fe3239e6ab9b23e              # double 0.59809800000000002
	.quad	0x3f99baa1511dffc5              # double 0.025125999999999999
	.quad	0x3fe1f7ab324851a8              # double 0.56148299999999995
	.quad	0x3fde042528ae74f3              # double 0.469003
	.quad	0x3fe7ee7e62dc6e2b              # double 0.74786300000000006
	.quad	0x3fe7ce6e221c8a7a              # double 0.74394899999999997
	.quad	0x3fd94de3b8a19c9d              # double 0.39537899999999998
	.quad	0x3feedf394b7b2895              # double 0.96474899999999996
	.quad	0x3fee7cc7d1bb4917              # double 0.95273200000000002
	.quad	0x3fc6839042d8c2a4              # double 0.17588999999999999
	.quad	0x3fe4376f6d762520              # double 0.63176699999999997
	.quad	0x3fd468a0d349be90              # double 0.318886
	.quad	0x3fbaa26e5471715c              # double 0.10404099999999999
	.quad	0x3fc7f8b1572580c3              # double 0.187277
	.quad	0x3fdf0a2877ee4e27              # double 0.48499500000000001
	.quad	0x3fed16ededaec4a4              # double 0.90904899999999999
	.quad	0x3fdcaf8df7a4e7ab              # double 0.44821499999999997
	.quad	0x3f94c55432873bc9              # double 0.020284
	.quad	0x3fd2cc46950fc71d              # double 0.29371799999999998
	.quad	0x3feb8cbf2b239a39              # double 0.860931
	.quad	0x3fcc1ffb480a5acd              # double 0.219726
	.quad	0x3febf5b5fa22706d              # double 0.87374399999999997
	.quad	0x3fd52e72da122fad              # double 0.33095999999999998
	.quad	0x3fdf0de093532e7b              # double 0.48522199999999999
	.quad	0x3fde05c896dd26b7              # double 0.46910299999999999
	.quad	0x3fea60bf5d78811b              # double 0.82430999999999999
	.quad	0x3f947f562174c4ce              # double 0.020017
	.quad	0x3fc5606b7aa25d8d              # double 0.16700499999999999
	.quad	0x3fe927c9de050375              # double 0.786107
	.quad	0x3fd2cda6e75ff60a              # double 0.29380200000000001
	.quad	0x3faf92af9a8cdea0              # double 0.061665999999999999
	.quad	0x3fe498aeb80ecfa7              # double 0.64363800000000004
	.quad	0x3fe98f1f57b41bfc              # double 0.79872100000000001
	.quad	0x3fe580d801b43526              # double 0.67197799999999996
	.quad	0x3fc70ab2e1693c04              # double 0.18001400000000001
	.quad	0x3fea7405f6ba0621              # double 0.82666300000000004
	.quad	0x3fdc2d72ffd1dcd7              # double 0.440274
	.quad	0x3fe2e52deca2552a              # double 0.590476
	.quad	0x3fcd05186db50f41              # double 0.226718
	.quad	0x3fe81fb1e18efbb1              # double 0.75386900000000001
	.quad	0x3fea96f4384ba0e8              # double 0.83092699999999997
	.quad	0x3fd1ccee5abc0e39              # double 0.27813300000000002
	.quad	0x3fdad41743e963dc              # double 0.41919499999999998
	.quad	0x3fd5700cd855970b              # double 0.33496399999999998
	.quad	0x3fca2962cfd8f0c7              # double 0.20438799999999999
	.quad	0x3fc4d898b2e9ccb8              # double 0.16286
	.quad	0x3fda78359bc33f85              # double 0.41358699999999998
	.quad	0x3fc4cfc829cfdd23              # double 0.16259100000000001
	.quad	0x3fa367e414e7ee91              # double 0.037901999999999998
	.quad	0x3fc3e2ac322291fb              # double 0.15535499999999999
	.quad	0x3fe44d573647baaa              # double 0.63444100000000003
	.quad	0x3fd607ee0b0af5fd              # double 0.34423399999999998
	.quad	0x3fe43399f5dfeb8e              # double 0.63129900000000005
	.quad	0x3fa70c564f97edc8              # double 0.045016
	.quad	0x3fda85ec3dab5c3a              # double 0.41442400000000001
	.quad	0x3fe9c7c957cd466f              # double 0.80563799999999997
	.quad	0x3fbe8bd230b9dc2f              # double 0.119321
	.quad	0x3fe7784cad57bc7f              # double 0.73343499999999995
	.quad	0x3fc42fc69728a611              # double 0.15770799999999999
	.quad	0x3f9ac81d3aa369fd              # double 0.026154
	.quad	0x3fe69711947cfa27              # double 0.70594100000000004
	.quad	0x3fe94d8dbcec84f9              # double 0.790717
	.quad	0x3fedffa5d28d002e              # double 0.93745699999999998
	.quad	0x3feb5aa2e3c536d6              # double 0.85481399999999996
	.quad	0x3fb789a459103c8e              # double 0.091943999999999997
	.quad	0x3fe3fd1bb4916ca4              # double 0.62464699999999995
	.quad	0x3fedc44bf4cb1898              # double 0.93021200000000004
	.quad	0x3fd084ec636b0963              # double 0.25811299999999998
	.quad	0x3fd1e878fabda0e0              # double 0.27981400000000001
	.quad	0x3fef680389f83be6              # double 0.98144699999999996
	.quad	0x3fcea337a80cf9e4              # double 0.23935600000000001
	.quad	0x3fd14c48adeebb34              # double 0.27028099999999999
	.quad	0x3fe797fc7607c41a              # double 0.73730300000000004
	.quad	0x3fc6d5842b734b51              # double 0.17839099999999999
	.quad	0x3fef637154003255              # double 0.98088900000000001
	.quad	0x3feef31d2e0e3044              # double 0.96717699999999995
	.quad	0x3fe6284be40420f7              # double 0.69241900000000001
	.quad	0x3fce3422467be554              # double 0.23596600000000001
	.quad	0x3fd61101b003686a              # double 0.34478799999999998
	.quad	0x3fe5f5ddd2ae8e1d              # double 0.68626299999999996
	.quad	0x3fe34ba94bbe4474              # double 0.60298600000000002
	.quad	0x3fe3fe5eaab04253              # double 0.62480100000000005
	.quad	0x3fed0010c6f7a0b6              # double 0.90625800000000001
	.quad	0x3fc014c660a20147              # double 0.125634
	.quad	0x3fed78fabda0dfdf              # double 0.921018
	.quad	0x3fe437de939eadd6              # double 0.63182000000000005
	.quad	0x3fd8ec0724b76f6d              # double 0.38940599999999997
	.quad	0x3fe3f8d4fdf3b646              # double 0.62412500000000004
	.quad	0x3fe3c7820a30db6a              # double 0.61810399999999999
	.quad	0x3feed44567125dd1              # double 0.96341200000000004
	.quad	0x3fefb33764f11b61              # double 0.99062700000000003
	.quad	0x3fe6c85e3da2f8be              # double 0.71195900000000001
	.quad	0x3fe0b8da3c21187e              # double 0.52256499999999995
	.quad	0x3faaa369fcf3dc05              # double 0.052027999999999998
	.quad	0x3fee7de0d66f0cfe              # double 0.95286599999999999
	.quad	0x3fbf163baba7b917              # double 0.121433
	.quad	0x3fd2013660e51d26              # double 0.28132400000000002
	.quad	0x3fe6ef8ad2567989              # double 0.71674099999999996
	.quad	0x3fe480da1a93293d              # double 0.64072899999999999
	.quad	0x3fc6dec1c1d6cf85              # double 0.178673
	.quad	0x3fe340c1fc8f3238              # double 0.60165500000000005
	.quad	0x3fed6fac6045baf5              # double 0.91988199999999998
	.quad	0x3fe1f4a3400b88ca              # double 0.56111299999999997
	.quad	0x3fe8941205bc01a3              # double 0.76807499999999995
	.quad	0x3fdc322291fb3fa7              # double 0.44056000000000001
	.quad	0x3fcffc32ebe596c8              # double 0.249884
	.quad	0x3fe57f3493858362              # double 0.67177799999999999
	.quad	0x3fdd765ba6efc372              # double 0.46034900000000001
	.quad	0x3fe75c4651f3e89b              # double 0.73001400000000005
	.quad	0x3fd3aafbc1acde1a              # double 0.307311
	.quad	0x3fd00ded288ce704              # double 0.25085000000000002
	.quad	0x3fec6177ea1c68ec              # double 0.88689799999999996
	.quad	0x3fea0e10cf5b1c86              # double 0.81421699999999997
	.quad	0x3fa129cbab649d39              # double 0.033522000000000003
	.quad	0x3fb1c31593e5fb72              # double 0.069383
	.quad	0x3fd84241c3efae79              # double 0.37904399999999999
	.quad	0x3fa609bb6aa4b988              # double 0.043042999999999998
	.quad	0x3fce68b19a415f46              # double 0.23757
	.quad	0x3fbfc148344c37e7              # double 0.124043
	.quad	0x3fd2f038e29f9ce9              # double 0.29591200000000001
	.quad	0x3fe3df2a9d627bf6              # double 0.62099199999999999
	.quad	0x3fefac9d16fc9bc7              # double 0.98982099999999995
	.quad	0x3fd9821af7d30ad4              # double 0.39856599999999998
	.quad	0x3fc7b3a68b19a416              # double 0.18517
	.quad	0x3fe3f04ff43419e3              # double 0.623085
	.quad	0x3fd87d805e5f30e8              # double 0.38266
	.quad	0x3fda14a0a0f4d7ae              # double 0.40750900000000001
	.quad	0x3fe6a9e4d5d80e49              # double 0.70823899999999995
	.quad	0x3fef3eea209aaa3b              # double 0.97643000000000002
	.quad	0x3fd06ea4228997c4              # double 0.25675300000000001
	.quad	0x3fe310880d801b43              # double 0.59576799999999996
	.quad	0x3fe429e0a41a261c              # double 0.63011200000000001
	.quad	0x3fa572ffd1dcd706              # double 0.041893
	.quad	0x3fdf234eb9a176de              # double 0.48653000000000002
	.quad	0x3fde36694898f606              # double 0.47207100000000002
	.quad	0x3fc1e4b44a1f0803              # double 0.139792
	.quad	0x3fecd49949e8815e              # double 0.90095199999999998
	.quad	0x3fd8fa7221858bc6              # double 0.39028600000000002
	.quad	0x3fe245e0b4e11dbd              # double 0.57103000000000004
	.quad	0x3fd127631b584b1b              # double 0.26802900000000002
	.quad	0x3fddb91f70de8f6d              # double 0.464424
	.quad	0x3fd1706d50657321              # double 0.27248699999999998
	.quad	0x3fb7f0995aaf78ff              # double 0.093515000000000001
	.quad	0x3fd68b26394face6              # double 0.35224299999999997
	.quad	0x3fe70079a2834d27              # double 0.718808
	.quad	0x3fb9f5ad96a6a012              # double 0.101405
	.quad	0x3fdb0431bde82d7b              # double 0.42213099999999998
	.quad	0x3fe9e57d9dba908a              # double 0.80926399999999998
	.quad	0x3fedb0d51f81a587              # double 0.92783599999999999
	.quad	0x3fe23089a0275254              # double 0.56842499999999996
	.quad	0x3febc4028e4fb97c              # double 0.86767700000000003
	.quad	0x3fb0ff540895d0b7              # double 0.066395999999999997
	.quad	0x3fee155f78359bc3              # double 0.94010899999999997
	.quad	0x3fec96b97fe8ee6c              # double 0.89339900000000005
	.quad	0x3fec319e731d2e0e              # double 0.88105699999999998
	.quad	0x3fd76a37ac3eb7cc              # double 0.36585800000000002
	.quad	0x3fd4a7503b81b64e              # double 0.322712
	.quad	0x3fe9e787ce95faa9              # double 0.80951300000000004
	.quad	0x3fbfaf8594291750              # double 0.12377199999999999
	.quad	0x3fe342d6a9c560c8              # double 0.60190900000000003
	.quad	0x3fea86f262888b54              # double 0.82897299999999995
	.quad	0x3fe21439de481f54              # double 0.56496900000000005
	.quad	0x3fe46f8f041461b7              # double 0.63861800000000002
	.quad	0x3fe9cba732df505d              # double 0.80610999999999999
	.quad	0x3fe04c70867ad8e4              # double 0.50933099999999998
	.quad	0x3fe1f4a558ea7ce1              # double 0.561114
	.quad	0x3fe460242d05f288              # double 0.63673599999999997
	.quad	0x3fd2cedd48451330              # double 0.29387600000000003
	.quad	0x3fe1f94ea077036d              # double 0.56168300000000004
	.quad	0x3fe1dd377e1b8ed2              # double 0.55825400000000003
	.quad	0x3fe6f229e90795f6              # double 0.71706099999999995
	.quad	0x3fe9b20535c9e668              # double 0.80298099999999994
	.quad	0x3fea28bd230b9dc3              # double 0.81747300000000001
	.quad	0x3fe01f36262cba73              # double 0.50380999999999998
	.quad	0x3fb7eed45e9185cf              # double 0.093488000000000002
	.quad	0x3fe605ccc89b0ee5              # double 0.68820800000000004
	.quad	0x3fd350efdc9c4da9              # double 0.301815
	.quad	0x3fdc9f2fdb8fde2f              # double 0.447216
	.quad	0x3fe89d8e86402081              # double 0.76923299999999994
	.quad	0x3fed9899bf5946c3              # double 0.92487799999999998
	.quad	0x3fd2a36e2eb1c433              # double 0.29122500000000001
	.quad	0x3fe6ef6b5d462c34              # double 0.71672599999999997
	.quad	0x3fc8e1bd1ed9dfdb              # double 0.19438900000000001
	.quad	0x3fc029f9ce8d972d              # double 0.126281
	.quad	0x3fef929ed3953dea              # double 0.98664799999999997
	.quad	0x3fde24d099e0e736              # double 0.470997
	.quad	0x3fc540bbb1f255f3              # double 0.16603799999999999
	.quad	0x3fec4d6c2efd438d              # double 0.88445099999999999
	.quad	0x3fb7d34df04ddb55              # double 0.093067999999999998
	.quad	0x3fc02278d0cc35ce              # double 0.126052
	.quad	0x3fb688bda9435ac9              # double 0.088024000000000005
	.quad	0x3fe8a1af7d30ad47              # double 0.769737
	.quad	0x3fa45692b3cc4ac7              # double 0.039723000000000001
	.quad	0x3fcf6273929ed395              # double 0.24519199999999999
	.quad	0x3fd2a6b50b0f27bb              # double 0.29142499999999999
	.quad	0x3fca4b5568e820e6              # double 0.205424
	.quad	0x3fd362c343b70ef5              # double 0.30290299999999998
	.quad	0x3fc87c5ac471b478              # double 0.19129499999999999
	.quad	0x3fd5ec39799e518f              # double 0.34254299999999999
	.quad	0x3fed46c332f01755              # double 0.91488800000000003
	.quad	0x3fd35d031055b899              # double 0.30255199999999999
	.quad	0x3fdfbbd3804534bd              # double 0.49583899999999997
	.quad	0x3fe0cf3fd933e35c              # double 0.52529899999999996
	.quad	0x3fd2a3b14a90470b              # double 0.29124100000000003
	.quad	0x3fe63cb3e5753a3f              # double 0.69491000000000003
	.quad	0x3fe6f6be37de939f              # double 0.71762000000000004
	.quad	0x3feef59ab6d00b46              # double 0.96748100000000004
	.quad	0x3fb8870110a137f4              # double 0.095810000000000006
	.quad	0x3fdcb70ac3a860dd              # double 0.44867200000000002
	.quad	0x3fd9317efe0ce0b9              # double 0.393646
	.quad	0x3fe3e3fdd65a1449              # double 0.62158100000000005
	.quad	0x3fed30e1b4bb5e0f              # double 0.91221699999999994
	.quad	0x3fdd4fdb09a671ef              # double 0.45799899999999999
	.quad	0x3fe9ace4649906cd              # double 0.80235500000000004
	.quad	0x3fc3d25aab474107              # double 0.15485699999999999
	.quad	0x3fe4371fbc5de9c0              # double 0.63172899999999998
	.quad	0x3fd2a8f3a9b06812              # double 0.29156199999999999
	.quad	0x3feb44dca8e2e2b9              # double 0.85215600000000002
	.quad	0x3fe43b2fec56d5d0              # double 0.63222500000000004
	.quad	0x3feaa72a7bd48cb5              # double 0.83290600000000004
	.quad	0x3faaa8a82a5614e0              # double 0.052068000000000003
	.quad	0x3fd6511dffc5479d              # double 0.34870099999999998
	.quad	0x3fe2ec6583e8576d              # double 0.59135700000000002
	.quad	0x3fe0ecc814d7279a              # double 0.52890400000000004
	.quad	0x3fd56fc58ab92c06              # double 0.33494699999999999
	.quad	0x3fc72f09d8c6d613              # double 0.18112300000000001
	.quad	0x3fdac31df761cbcd              # double 0.418159
	.quad	0x3fe48a2877ee4e27              # double 0.64186500000000002
	.quad	0x3fe5d2135daad602              # double 0.681894
	.quad	0x3fe72888b545c78a              # double 0.72369799999999995
	.quad	0x3fd77e0ef99806f2              # double 0.36706899999999998
	.quad	0x3fd47ebaf102363b              # double 0.32023499999999999
	.quad	0x3fe5b2d4d4024b34              # double 0.67808000000000002
	.quad	0x3fd0b6a1e81cb46c              # double 0.26114700000000002
	.quad	0x3fc9bad3a604e1e7              # double 0.201014
	.quad	0x3fdf26527a20578e              # double 0.48671399999999998
	.quad	0x3fd12a0232096788              # double 0.26818900000000001
	.quad	0x3fdb7913e81450f0              # double 0.42926500000000001
	.quad	0x3fba5753a3ec02f3              # double 0.102895
	.quad	0x3fd69b8cb8e086be              # double 0.353244
	.quad	0x3fe659c6b0531983              # double 0.69845900000000005
	.quad	0x3fc86138fffbce42              # double 0.190467
	.quad	0x3fe9d4a1ad6451b9              # double 0.80720599999999998
	.quad	0x3fe1881a1554fbdb              # double 0.54786400000000002
	.quad	0x3fec5c422036006d              # double 0.88626199999999999
	.quad	0x3fd66394face67d7              # double 0.34982799999999997
	.quad	0x3fe2dc5b4aa9717e              # double 0.58939900000000001
	.quad	0x3feb502ababead4f              # double 0.85353599999999996
	.quad	0x3fee945f9df548ed              # double 0.95561200000000002
	.quad	0x3fb6a411c2a02321              # double 0.088441000000000006
	.quad	0x3fec8fd9fd36f7e4              # double 0.89256000000000002
	.quad	0x3fd782ba5a038195              # double 0.36735400000000001
	.quad	0x3fea40bbb1f255f3              # double 0.82040199999999996
	.quad	0x3fccd8d36b4c7f35              # double 0.22536700000000001
	.quad	0x3fdd48f96e158751              # double 0.45757900000000001
	.quad	0x3fcb93037d63022e              # double 0.215424
	.quad	0x3fdc24e592967019              # double 0.43975199999999998
	.quad	0x3febf84ec636b096              # double 0.87406099999999998
	.quad	0x3fbda1554fbdad75              # double 0.115743
	.quad	0x3fc3dadfb506dd6a              # double 0.155117
	.quad	0x3fd90f6ad70e6f2f              # double 0.39156600000000003
	.quad	0x3fd7c9fb6134ce3e              # double 0.37170300000000001
	.quad	0x3fe4f8d0cc35ce18              # double 0.65537299999999998
	.quad	0x3fe57cbd556084a5              # double 0.67147699999999999
	.quad	0x3feb6364bec679cc              # double 0.85588299999999994
	.quad	0x3fdd2e2328f9f44d              # double 0.45594099999999999
	.quad	0x3fec0ffda4052d66              # double 0.87695199999999995
	.quad	0x3fec622e5de15ca7              # double 0.88698500000000002
	.quad	0x3fea95c853c14834              # double 0.83078399999999996
	.quad	0x3fef14f69ca9ef52              # double 0.97130899999999998
	.quad	0x3fd32ef911cf355d              # double 0.29974200000000001
	.quad	0x3fe56c4e7253da73              # double 0.66947100000000004
	.quad	0x3fde84fd2a62aa19              # double 0.47686699999999999
	.quad	0x3fcdc9363f572de4              # double 0.23270299999999999
	.quad	0x3fc8e1a3f4666eca              # double 0.194386
	.quad	0x3fdb62aa19439de5              # double 0.42789700000000003
	.quad	0x3feba32f44912989              # double 0.86367000000000005
	.quad	0x3fa61cbccf28c79f              # double 0.043187999999999997
	.quad	0x3fefb532e7b3d8e0              # double 0.99086899999999999
	.quad	0x3fd3adc0980b2420              # double 0.30747999999999998
	.quad	0x3fe695cc857f3062              # double 0.70578600000000002
	.quad	0x3feb3c297bfa4c62              # double 0.85109400000000002
	.quad	0x3fe251c3ac929aa2              # double 0.57248100000000002
	.quad	0x3fe1103a7546d3fa              # double 0.53323100000000001
	.quad	0x3fe04e3bcd35a858              # double 0.50954999999999995
	.quad	0x3fe36a055757d5aa              # double 0.60669200000000001
	.quad	0x3fca6c332f01754b              # double 0.206427
	.quad	0x3fd621f2990f301f              # double 0.34582200000000002
	.quad	0x3fe9a05143bf7271              # double 0.80081999999999998
	.quad	0x3feac8ecd8dbcec8              # double 0.83702699999999997
	.quad	0x3fc2533b10774688              # double 0.14316499999999999
	.quad	0x3fd78deb0fadf2ed              # double 0.368037
	.quad	0x3f81fbc5de9c022a              # double 0.0087810000000000006
	.quad	0x3fd67b99d451fc4c              # double 0.351294
	.quad	0x3fe6e466b1e5c0ba              # double 0.71538100000000004
	.quad	0x3feeb56b87379746              # double 0.959646
	.quad	0x3fd885db76b3bb84              # double 0.38317000000000001
	.quad	0x3fe57cf80dc33722              # double 0.67150500000000002
	.quad	0x3feafc80841ede12              # double 0.84332300000000004
	.quad	0x3feb45b6c3760bf6              # double 0.85226000000000002
	.quad	0x3fe52d490e66cb10              # double 0.66177799999999998
	.quad	0x3fe14a89fc6da448              # double 0.54034899999999997
	.quad	0x3fe0f0a808c8259e              # double 0.52937699999999999
	.quad	0x3fab1df761cbccf3              # double 0.052963000000000003
	.quad	0x3fc4e746cb966be8              # double 0.16330800000000001
	.quad	0x3fe48fb43d89ce4a              # double 0.64254199999999995
	.quad	0x3fea496ededaec4a              # double 0.82146399999999997
	.quad	0x3feb3dbc23315d70              # double 0.85128599999999999
	.quad	0x3fd8ac3eb7cbb3c8              # double 0.38551299999999999
	.quad	0x3fad634549b62c77              # double 0.057397999999999998
	.quad	0x3fe9ee43aa79bbae              # double 0.81033500000000003
	.quad	0x3fe4c866a11ec919              # double 0.64946300000000001
	.quad	0x3fcc72b020c49ba6              # double 0.22225
	.quad	0x3fedd12cadddf43c              # double 0.93178399999999994
	.quad	0x3fec94ec204f2ae0              # double 0.89317899999999994
	.quad	0x3fe5f9335d249e45              # double 0.68667
	.quad	0x3feb94e7ee9142b3              # double 0.861927
	.quad	0x3fb7fd3f5b5fa227              # double 0.093708
	.quad	0x3fe06394face67d7              # double 0.51215599999999994
	.quad	0x3fe4aa60913a4f87              # double 0.64579799999999998
	.quad	0x3fca44e0daa0cae6              # double 0.20522699999999999
	.quad	0x3feeade00d1b7176              # double 0.95872500000000005
	.quad	0x3fc5b2bba98eda23              # double 0.169517
	.quad	0x3feff98b71b8aa00              # double 0.99921199999999998
	.quad	0x3fd35daad601ffb5              # double 0.30259200000000003
	.quad	0x3fba7dbb16c1e365              # double 0.103481
	.quad	0x3fdaeb399f5dfeb9              # double 0.42060700000000001
	.quad	0x3fe9e8ad68837718              # double 0.80965299999999996
	.quad	0x3f5ec918e325d4a6              # double 0.001879
	.quad	0x3fdecd5f99c38b05              # double 0.48128500000000002
	.quad	0x3fe140f238972043              # double 0.53917800000000005
	.quad	0x3fe3e3f572de43ee              # double 0.62157700000000005
	.quad	0x3fef0e1d6494d50f              # double 0.97047300000000003
	.quad	0x3f753ac4f7ec3548              # double 0.0051830000000000001
	.quad	0x3fdf58255b035bd5              # double 0.489755
	.quad	0x3feabb1290257c91              # double 0.83533599999999997
	.quad	0x3fe0f2239e6ab9b2              # double 0.52955799999999997
	.quad	0x3fb263e8dda48b65              # double 0.071836999999999998
	.quad	0x3fed9ef5232d2bb2              # double 0.92565399999999998
	.quad	0x3fa8795f676ea423              # double 0.047801000000000003
	.quad	0x3fed433721d53cde              # double 0.91445500000000002
	.quad	0x3fddf03d145d8516              # double 0.46778799999999998
	.quad	0x3fe4a07b352a8438              # double 0.64459
	.quad	0x3fdeae9ee45c358b              # double 0.479408
	.quad	0x3fe23d145d851655              # double 0.56995600000000002
	.quad	0x3fc14f0d844d013b              # double 0.13522500000000001
	.quad	0x3fed1f4f50a02b84              # double 0.91007199999999999
	.quad	0x3fe4c896dd26b724              # double 0.64948600000000001
	.quad	0x3fd207789a459104              # double 0.28170600000000001
	.quad	0x3fe32fba01eeed89              # double 0.599576
	.quad	0x3feef3c0c1fc8f32              # double 0.96725499999999998
	.quad	0x3feeb0df9bdc69f9              # double 0.95909100000000002
	.quad	0x3fdb2a0232096788              # double 0.42443900000000001
	.quad	0x3fc759ccfaeff5c7              # double 0.18242800000000001
	.quad	0x3fe7b6e935b91f71              # double 0.74107800000000001
	.quad	0x3fd441bfbdf090f7              # double 0.31651299999999999
	.quad	0x3fe550e991ff7165              # double 0.66612700000000002
	.quad	0x3fdb159c49774257              # double 0.42319400000000001
	.quad	0x3fe4f6e6106ab14f              # double 0.65513900000000003
	.quad	0x3fdf79702e6644d8              # double 0.49178699999999997
	.quad	0x3fb168f8e7ddca4b              # double 0.068007999999999999
	.quad	0x3fd0750c1b97353b              # double 0.25714399999999998
	.quad	0x3fd2e29b6b2af145              # double 0.29508099999999998
	.quad	0x3fd513f077ccc038              # double 0.32934200000000002
	.quad	0x3fec6731d2e0e304              # double 0.88759699999999996
	.quad	0x3feb9c6088d6d3b7              # double 0.86283900000000002
	.quad	0x3fb3a19008205ff2              # double 0.076684000000000002
	.quad	0x3fe3f60bf5d78812              # double 0.62378500000000003
	.quad	0x3fd3c38f36694899              # double 0.308811
	.quad	0x3fbc07ee0b0af5fd              # double 0.109496
	.quad	0x3fe194e5d5b24e9c              # double 0.54942599999999997
	.quad	0x3fef266dbd72bcb6              # double 0.973441
	.quad	0x3fd28ad688377186              # double 0.28972399999999998
	.quad	0x3fda5f7c6759ab6d              # double 0.412078
	.quad	0x3fea2b92c061847f              # double 0.81781899999999996
	.quad	0x3f9cb923a29c779a              # double 0.028049999999999999
	.quad	0x3fdef8c21e1d2179              # double 0.483933
	.quad	0x3fe7ecdaf4adbc66              # double 0.74766299999999997
	.quad	0x3fb352977c88e79b              # double 0.075479000000000004
	.quad	0x3fe6708ede54b48d              # double 0.70123999999999997
	.quad	0x3fe37225b749adc9              # double 0.607684
	.quad	0x3fe3a2cecc814d72              # double 0.61362399999999995
	.quad	0x3fe3a8c9b845564b              # double 0.61435399999999996
	.quad	0x3fca3736cdf266ba              # double 0.20480999999999999
	.quad	0x3febf8897e996313              # double 0.874089
	.quad	0x3fabbc4d22c881e4              # double 0.054170999999999997
	.quad	0x3fde077036c9c0a9              # double 0.46920400000000001
	.quad	0x3fea045564b662fe              # double 0.813029
	.quad	0x3fb02d6a9c560c7c              # double 0.063192999999999999
	.quad	0x3fd3e00d1b71758e              # double 0.31054999999999999
	.quad	0x3fe63994e1a3f466              # double 0.69452899999999995
	.quad	0x3fadcf67b1c0010c              # double 0.058222999999999997
	.quad	0x3fee5d76683c297c              # double 0.948909
	.quad	0x3fe3fae3608d0892              # double 0.62437600000000004
	.quad	0x3fd4d1d8a5482385              # double 0.32530799999999999
	.quad	0x3fe141bfbdf090f7              # double 0.53927599999999998
	.quad	0x3fe7e236c15d2d02              # double 0.74636400000000003
	.quad	0x3fbcc996b76709fa              # double 0.112451
	.quad	0x3fe584d983947497              # double 0.67246700000000004
	.quad	0x3fe7209edbf8b9bb              # double 0.72273200000000004
	.quad	0x3fe5896dd26b723f              # double 0.67302600000000001
	.quad	0x3fe7487db2b34613              # double 0.727599
	.quad	0x3fc44f09528f190d              # double 0.158662
	.quad	0x3fe56557de0d66f1              # double 0.66862100000000002
	.quad	0x3feb13ab430f4949              # double 0.84615099999999999
	.quad	0x3fe7698fe69270b0              # double 0.73163599999999995
	.quad	0x3fa3927d45a5fc7e              # double 0.038226999999999997
	.quad	0x3fe22b4b72c5197a              # double 0.56778499999999998
	.quad	0x3fec80a7c5ac471b              # double 0.89070499999999997
	.quad	0x3feb68e60807357e              # double 0.85655499999999996
	.quad	0x3fef0435efa615a9              # double 0.96926400000000001
	.quad	0x3fe9d23704790b85              # double 0.80691100000000004
	.quad	0x3fc468b9fdbd2fa1              # double 0.159446
	.quad	0x3fd9b89d6adf71eb              # double 0.401893
	.quad	0x3fb274080f98fa37              # double 0.072082999999999994
	.quad	0x3fd55425f202107b              # double 0.33326099999999997
	.quad	0x3fc73b7521144cbe              # double 0.181502
	.quad	0x3fc0548238540464              # double 0.127579
	.quad	0x3fee5495182a9931              # double 0.94782500000000003
	.quad	0x3fed1e0a41a261bf              # double 0.90991699999999998
	.quad	0x3fe38aac96cc5fc0              # double 0.61067800000000005
	.quad	0x3fe5b3764f11b60b              # double 0.67815700000000001
	.quad	0x3fd40053e2d6238e              # double 0.31252000000000002
	.quad	0x3fdcea2d2fe3f35a              # double 0.451793
	.quad	0x3fee178f68be2f7b              # double 0.94037599999999999
	.quad	0x3fe519c7bcc2938e              # double 0.65939700000000001
	.quad	0x3fd2d83c6c97d8cf              # double 0.29444799999999999
	.quad	0x3fa138fffbce4218              # double 0.033638000000000001
	.quad	0x3fe8671ef30a4e38              # double 0.76258800000000004
	.quad	0x3fe72480e8c8abd6              # double 0.72320600000000002
	.quad	0x3fe9fef7c243dccf              # double 0.81237400000000004
	.quad	0x3fee02c6ef3d3a1d              # double 0.93783899999999998
	.quad	0x3fa66ea854477ff1              # double 0.043812999999999998
	.quad	0x3fe724b124d099e1              # double 0.72322900000000001
	.quad	0x3fe072c7325918a0              # double 0.514011
	.quad	0x3f96b2f23033a472              # double 0.022166999999999999
	.quad	0x3febb61bb05faebc              # double 0.86597999999999997
	.quad	0x3fab9e060fe47992              # double 0.053940000000000002
	.quad	0x3fe0f318fc504817              # double 0.52967500000000001
	.quad	0x3fe665a35d67ba23              # double 0.69990699999999995
	.quad	0x3fe9aca57a786c22              # double 0.80232499999999995
	.quad	0x3fe4b400b88ca3e8              # double 0.64697300000000002
	.quad	0x3fc70bf1a5ca2984              # double 0.18005199999999999
	.quad	0x3fcf22962cfd8f0c              # double 0.24324299999999999
	.quad	0x3fe141e57d9dba91              # double 0.53929400000000005
	.quad	0x3fe470bf1a5ca298              # double 0.63876299999999997
	.quad	0x3feebb85e80bed74              # double 0.96039099999999999
	.quad	0x3fadf47f993d5348              # double 0.058506000000000002
	.quad	0x3fd76ec9e236c15d              # double 0.36613699999999999
	.quad	0x3fdfaafff36ac647              # double 0.49481199999999997
	.quad	0x3fe772862f5989df              # double 0.73272999999999999
	.quad	0x3fd8b66b6177ea1c              # double 0.38613399999999998
	.quad	0x3fc6c64fdb09a672              # double 0.177927
	.quad	0x3fe7bbd3804534bd              # double 0.74167799999999995
	.quad	0x3f9cef240fa9c12f              # double 0.028256
	.quad	0x3fe932ebe596c82e              # double 0.787466
	.quad	0x3fec2378ab0c88a4              # double 0.87932999999999994
	.quad	0x3fb1886df82b1f68              # double 0.068487999999999993
	.quad	0x3fe0ba9d1f601798              # double 0.52278000000000002
	.quad	0x3fd83f52fc2656ac              # double 0.37886500000000001
	.quad	0x3feff08cc575c076              # double 0.99811399999999995
	.quad	0x3fe12074ea8da7f4              # double 0.53521200000000002
	.quad	0x3fdfb4edb2f661f2              # double 0.49541800000000003
	.quad	0x3fd9d883ba3443d4              # double 0.40383999999999998
	.quad	0x3fa1a719b4dcebff              # double 0.034478000000000002
	.quad	0x3fe62e6644d87725              # double 0.693164
	.quad	0x3fb6d4d4024b33db              # double 0.089185
	.quad	0x3fc369b9d7fd8277              # double 0.15166399999999999
	.quad	0x3fc62528ae74f2f1              # double 0.173009
	.quad	0x3fd932c625e99e95              # double 0.39372400000000002
	.quad	0x3fd6a294141e9af6              # double 0.35367300000000002
	.quad	0x3fe0d69b17481b22              # double 0.52619700000000003
	.quad	0x3fd440ee06d93815              # double 0.31646299999999999
	.quad	0x3fd3fad6cb535009              # double 0.31218499999999999
	.quad	0x3fc47e175d13d74d              # double 0.16009799999999999
	.quad	0x3fe859a52263d817              # double 0.76094300000000004
	.quad	0x3fee19bd4067cf1c              # double 0.94064199999999997
	.quad	0x3fb8bf8fcd67fd3f              # double 0.096672999999999995
	.quad	0x3f87d9dba908a266              # double 0.011646
	.quad	0x3fe9b825e13b18db              # double 0.80372900000000003
	.quad	0x3fb130ced4e4c943              # double 0.067151000000000002
	.quad	0x3fe45712a0ec7432              # double 0.635629
	.quad	0x3fe120f0a5efe932              # double 0.53527100000000005
	.quad	0x3fef88feac42e98a              # double 0.98547300000000004
	.quad	0x3fd4825e13b18dac              # double 0.32045699999999999
	.quad	0x3fef2e9468017119              # double 0.97443599999999996
	.quad	0x3fd19dcf893faf42              # double 0.27525699999999997
	.quad	0x3fc4cd5b6805a2d7              # double 0.16251699999999999
	.quad	0x3fe0bd76ee73e682              # double 0.52312800000000004
	.quad	0x3fe5fe889c1b5419              # double 0.68732099999999996
	.quad	0x3fe3dd1a21ea3593              # double 0.62073999999999996
	.quad	0x3fe5a426bb55ac04              # double 0.676288
	.quad	0x3fef99157abb8801              # double 0.987437
	.quad	0x3fbe584f4c6e6d9c              # double 0.118535
	.quad	0x3feb37a80cf9e386              # double 0.85054399999999997
	.quad	0x3fe9c68cac4b4d05              # double 0.80548699999999995
	.quad	0x3feb76102795703f              # double 0.85816199999999998
	.quad	0x3fed4b81733226c4              # double 0.91546700000000003
	.quad	0x3fc7fcdab191dde3              # double 0.18740399999999999
	.quad	0x3fe5a44a6223e187              # double 0.67630500000000005
	.quad	0x3fac6801711947d0              # double 0.055481000000000003
	.quad	0x3fd7483cafb3b752              # double 0.363784
	.quad	0x3fba1e71044f1a1a              # double 0.10202700000000001
	.quad	0x3fe2b365881a1555              # double 0.584399
	.quad	0x3fecd579af1886e0              # double 0.90105900000000005
	.quad	0x3feab64388ebcc6c              # double 0.83474899999999996
	.quad	0x3fe0662bae03b3ea              # double 0.51247200000000004
	.quad	0x3fe18327674d1633              # double 0.54725999999999997
	.quad	0x3fef51b4fe79ee03              # double 0.97872400000000003
	.quad	0x3fdba1e81cb46bad              # double 0.431757
	.quad	0x3fd537d63022dd7b              # double 0.33153300000000002
	.quad	0x3fd1a6266fd651b1              # double 0.27576600000000001
	.quad	0x3fe2c27c7c5260f6              # double 0.58624100000000001
	.quad	0x3fca49e44fa05144              # double 0.20538000000000001
	.quad	0x3feb08765ba6efc3              # double 0.84478299999999995
	.quad	0x3f98e4755ffe6d59              # double 0.024309000000000001
	.quad	0x3fdd71cda2b5a20e              # double 0.46007100000000001
	.quad	0x3fe4be553ac4f7ec              # double 0.64823399999999998
	.quad	0x3f9f06f694467382              # double 0.030300000000000001
	.quad	0x3fe59d66adb402d1              # double 0.67546399999999995
	.quad	0x3fd650d2806af46b              # double 0.34868300000000002
	.quad	0x3fdf441bb8c32a8d              # double 0.48853200000000002
	.quad	0x3fba136e71cda2b6              # double 0.10185900000000001
	.quad	0x3fdc50d2806af46b              # double 0.44243300000000002
	.quad	0x3fecd5d1c3ac929b              # double 0.90110100000000004
	.quad	0x3fe2c914b167ec78              # double 0.58704599999999996
	.quad	0x3fe2c692f6e8294a              # double 0.58674000000000004
	.quad	0x3fd971a3b14a9047              # double 0.397561
	.quad	0x3fd19e01de269164              # double 0.27526899999999999
	.quad	0x3feefcdcca70d1fa              # double 0.96836699999999998
	.quad	0x3fe7f7f6b1a2a4db              # double 0.74901899999999999
	.quad	0x3fee7f327aa68f4b              # double 0.95302699999999996
	.quad	0x3fb04e831ad2135e              # double 0.063698000000000005
	.quad	0x3fe31e94ab1d4f9c              # double 0.59748299999999999
	.quad	0x3fc565ecc3e3193f              # double 0.16717299999999999
	.quad	0x3fcbf141205bc01a              # double 0.21829999999999999
	.quad	0x3fde727dcbddb984              # double 0.47573799999999999
	.quad	0x3fe3d490e66cb103              # double 0.61969799999999997
	.quad	0x3fc8155d5f56a7ad              # double 0.18815200000000001
	.quad	0x3fe3ce160d887ebf              # double 0.61890699999999998
	.quad	0x3feaa730c67168f9              # double 0.83290900000000001
	.quad	0x3fd96feb4a66559f              # double 0.39745599999999998
	.quad	0x3fd9aaeafab53d64              # double 0.401057
	.quad	0x3fbf39e279dd3bb0              # double 0.121977
	.quad	0x3fa492bc2fc69729              # double 0.040182000000000002
	.quad	0x3feb9ad2135daad6              # double 0.862649
	.quad	0x3fe7e295208e1501              # double 0.74640899999999999
	.quad	0x3fd21b93037d6302              # double 0.28293299999999999
	.quad	0x3fc5756c93a71151              # double 0.16764599999999999
	.quad	0x3fbe580c308feac4              # double 0.118531
	.quad	0x3fcfb1e9f2778141              # double 0.247617
	.quad	0x3fd9e831ad2135db              # double 0.40479700000000002
	.quad	0x3fdb2f2734f82f51              # double 0.42475299999999999
	.quad	0x3fd3685985ad538b              # double 0.30324400000000001
	.quad	0x3fb485c24c404a73              # double 0.080166000000000001
	.quad	0x3fb228aa433508f6              # double 0.070932999999999996
	.quad	0x3fe3fe6f71a7e308              # double 0.62480899999999995
	.quad	0x3fee7dd441355476              # double 0.95286000000000004
	.quad	0x3fc2366516db0dd8              # double 0.14228499999999999
	.quad	0x3fd3bbe878fabda1              # double 0.30834400000000001
	.quad	0x3feab4784230fcf8              # double 0.83452999999999999
	.quad	0x3fc18b7a1c25d074              # double 0.137069
	.quad	0x3fe61a415f45e0b5              # double 0.69070500000000001
	.quad	0x3fe7c13fd0d0678c              # double 0.74234
	.quad	0x3fe4685fd04a2fcf              # double 0.637741
	.quad	0x3fe9ab96f21f6cad              # double 0.80219600000000002
	.quad	0x3fe5d16fc9bc7714              # double 0.68181599999999998
	.quad	0x3fe9bfa2ad3e920c              # double 0.80464299999999999
	.quad	0x3fe4aae4b0186120              # double 0.64586100000000002
	.quad	0x3fe49df3300de4c5              # double 0.64428099999999999
	.quad	0x3fbc4ff43419e300              # double 0.110595
	.quad	0x3fde61cffeb074a7              # double 0.47471999999999998
	.quad	0x3fdba14057082492              # double 0.43171700000000002
	.quad	0x3fd3b59578a2a90d              # double 0.30795800000000001
	.quad	0x3fef0f0c77dd872f              # double 0.97058699999999997
	.quad	0x3feba38fbca1059f              # double 0.86371600000000004
	.quad	0x3f79780baa582dbe              # double 0.0062179999999999996
	.quad	0x3fe7991dde37585c              # double 0.73744100000000001
	.quad	0x3fc70fbeb9e492bc              # double 0.18016799999999999
	.quad	0x3fd89d2bf5515055              # double 0.38459300000000002
	.quad	0x3fe19b4fe79ee02a              # double 0.55020899999999995
	.quad	0x3fe7c213a0c6b485              # double 0.74244100000000002
	.quad	0x3fe17c2224edf612              # double 0.54640299999999997
	.quad	0x3feac99285a921cd              # double 0.83710600000000002
	.quad	0x3fe0e8dfbd6a593a              # double 0.52842699999999998
	.quad	0x3fe71cc964628028              # double 0.72226400000000002
	.quad	0x3f7c0ebedfa43fe6              # double 0.0068500000000000002
	.quad	0x3fc810624dd2f1aa              # double 0.188
	.quad	0x3fc7f45e0b4e11dc              # double 0.18714500000000001
	.quad	0x3fb44d22c881e471              # double 0.079301999999999997
	.quad	0x3fb70e7ff583a53c              # double 0.090065000000000006
	.quad	0x3fe3c7abfb9bed31              # double 0.61812400000000001
	.quad	0x3fe0de8709741d08              # double 0.52716399999999997
	.quad	0x3fcb9d12cadddf44              # double 0.21573100000000001
	.quad	0x3fe65b940fecdd0e              # double 0.69867900000000005
	.quad	0x3fd4a76534373f31              # double 0.32271699999999998
	.quad	0x3f9f15e7c8d19589              # double 0.030356999999999999
	.quad	0x3fcf48cb4aec8d5c              # double 0.24440899999999999
	.quad	0x3fbabc408d8ec95c              # double 0.104435
	.quad	0x3fdaa78290689870              # double 0.41647400000000001
	.quad	0x3fca7c393682730c              # double 0.20691599999999999
	.quad	0x3fe58aed99cbee80              # double 0.67320899999999995
	.quad	0x3faf1fff79c842fa              # double 0.060790999999999998
	.quad	0x3fdd72d5e071c53f              # double 0.46013399999999999
	.quad	0x3fd09a95421c0443              # double 0.25943500000000003
	.quad	0x3fbb852f7f498c3b              # double 0.107501
	.quad	0x3fe99b75a74c09c4              # double 0.80022700000000002
	.quad	0x3fefa3854046412d              # double 0.988711
	.quad	0x3fd81fe21d96e9bc              # double 0.376946
	.quad	0x3fbc3b81b64e0547              # double 0.11028300000000001
	.quad	0x3fafb30f8c64fdb1              # double 0.061913000000000003
	.quad	0x3fed35b4edb2f662              # double 0.91280600000000001
	.quad	0x3fe8b1704ff4341a              # double 0.77166000000000001
	.quad	0x3fb06ec17ebaf102              # double 0.064189999999999997
	.quad	0x3fdf111276fb0920              # double 0.48541699999999999
	.quad	0x3fb1ae70c1333b97              # double 0.069068000000000004
	.quad	0x3fefb968d759ee89              # double 0.99138300000000001
	.quad	0x3fe41aa821f2990f              # double 0.62825399999999998
	.quad	0x3fb6c0724b76f6d7              # double 0.088873999999999995
	.quad	0x3fd4433d6c721922              # double 0.316604
	.quad	0x3fe803e425aee632              # double 0.750475
	.quad	0x3f929c347e8ccdd9              # double 0.018173999999999999
	.quad	0x3fc5b5e95b78cc9a              # double 0.16961399999999999
	.quad	0x3fe6e5ecc3e3193f              # double 0.71556699999999995
	.quad	0x3fdd5e28aa433509              # double 0.458872
	.quad	0x3fd239ef0f16f438              # double 0.28478599999999998
	.quad	0x3fd9190d173fb7a6              # double 0.392154
	.quad	0x3fec58ff75968512              # double 0.88586399999999998
	.quad	0x3fafbd8be7296f65              # double 0.061992999999999999
	.quad	0x3fb699a62ed35222              # double 0.088281999999999999
	.quad	0x3fa8fa15db3397dd              # double 0.048783
	.quad	0x3fafcdcca70d1fa3              # double 0.062116999999999999
	.quad	0x3feff7db6e503fb3              # double 0.99900599999999994
	.quad	0x3fe61552e2fbe33b              # double 0.69010300000000002
	.quad	0x3fe2e7967caea748              # double 0.59077000000000002
	.quad	0x3fd4d1a21ea35936              # double 0.325295
	.quad	0x3fb0e11dbca9691a              # double 0.065934999999999994
	.quad	0x3fde3eb7cbb3c819              # double 0.472578
	.quad	0x3fdf6045baf533f4              # double 0.49025099999999999
	.quad	0x3fe5c01a36e2eb1c              # double 0.67969999999999997
	.quad	0x3fe6e84ad794a6ec              # double 0.71585600000000005
	.quad	0x3fe59094a2b9d3cc              # double 0.67389900000000003
	.quad	0x3fea6b3354c12275              # double 0.82558600000000004
	.quad	0x3fde5b573eab367a              # double 0.474325
	.quad	0x3fc041b328b6d86f              # double 0.12700500000000001
	.quad	0x3feff2abef06b378              # double 0.99837299999999995
	.quad	0x3fcb6ddaceee0f3d              # double 0.21429000000000001
	.quad	0x3fbe4f8726d04e62              # double 0.11840100000000001
	.quad	0x3fcc2c55c96030c2              # double 0.22010299999999999
	.quad	0x3fe323a4b5568e82              # double 0.59810099999999999
	.quad	0x3fef011b1d92b7fe              # double 0.968885
	.quad	0x3fc65072085b1855              # double 0.17433000000000001
	.quad	0x3fdf806290eed02d              # double 0.49221100000000001
	.quad	0x3fe33ce2089e3433              # double 0.60118199999999999
	.quad	0x3fafd651b0ccbc06              # double 0.062182000000000001
	.quad	0x3fd2893b7d84901d              # double 0.28962599999999999
	.quad	0x3fdbe6c093d96638              # double 0.43595899999999999
	.quad	0x3fefc14e7ee9142b              # double 0.99234699999999997
	.quad	0x3fde2031ceaf251c              # double 0.47071499999999999
	.quad	0x3fe83608d08919f0              # double 0.75659600000000005
	.quad	0x3fede41919ac7970              # double 0.93409399999999998
	.quad	0x3fd6b78897e99631              # double 0.35495199999999999
	.quad	0x3fe84ca70d1fa333              # double 0.75935699999999995
	.quad	0x3fbc1a47a9e2bcf9              # double 0.109776
	.quad	0x3fdcf42bb6672fba              # double 0.452403
	.quad	0x3fdb4c2b51bd61f6              # double 0.42652400000000001
	.quad	0x3fd460c7c0f45176              # double 0.318407
	.quad	0x3fc6a875d56f32be              # double 0.17701600000000001
	.quad	0x3fb1fa22706d5065              # double 0.070222999999999994
	.quad	0x3f84d50ebaade658              # double 0.010172
	.quad	0x3f9c059210385c68              # double 0.027365
	.quad	0x3fecf253da72a7bd              # double 0.90458099999999997
	.quad	0x3fe9f4906034f3fe              # double 0.81110400000000005
	.quad	0x3fe72b884406c00e              # double 0.72406400000000004
	.quad	0x3fd18af81626b2f2              # double 0.27410699999999999
	.quad	0x3feef65ba6efc372              # double 0.96757300000000002
	.quad	0x3fc919d66adb402d              # double 0.196101
	.quad	0x3fe359f0a1be2b49              # double 0.60472899999999996
	.quad	0x3fdc25b749adc8fc              # double 0.43980200000000003
	.quad	0x3fe2ca2339c0ebee              # double 0.587175
	.quad	0x3fe3516fc9bc7714              # double 0.60369099999999998
	.quad	0x3fe31f340d4dc65c              # double 0.59755899999999995
	.quad	0x3fa3e07a28bb0a2d              # double 0.038822000000000002
	.quad	0x3fe6d55c52e72da1              # double 0.71354499999999998
	.quad	0x3fe015db3397dd01              # double 0.502668
	.quad	0x3fc8f3a9b0681238              # double 0.194936
	.quad	0x3fd92c7325918a01              # double 0.39333800000000002
	.quad	0x3feba95a6c5d206d              # double 0.86442300000000005
	.quad	0x3fe0522856605ee5              # double 0.51002899999999995
	.quad	0x3fefb0014f8b588e              # double 0.99023499999999998
	.quad	0x3fba1d755bccaf71              # double 0.10201200000000001
	.quad	0x3fdd9129888f861a              # double 0.46198499999999998
	.quad	0x3fe327dcbddb9842              # double 0.59861600000000004
	.quad	0x3f9c311622813448              # double 0.027531
	.quad	0x3fc552f3c2dadb83              # double 0.16659399999999999
	.quad	0x3fe55f78359bc340              # double 0.66790400000000005
	.quad	0x3febb5350092ccf7              # double 0.86587000000000003
	.quad	0x3fe132c40d0aaa7e              # double 0.53744700000000001
	.quad	0x3fe1b30728e92d56              # double 0.55310400000000004
	.quad	0x3fe663dc486ad2dd              # double 0.69969000000000003
	.quad	0x3fd25d13d74d594f              # double 0.28693099999999999
	.quad	0x3fe2447c30d306a3              # double 0.57086000000000003
	.quad	0x3fc2de19fc2a886a              # double 0.14740300000000001
	.quad	0x3fe47034b0e1b4bb              # double 0.63869699999999996
	.quad	0x3fbe5d28d002e233              # double 0.11860900000000001
	.quad	0x3fee38cb8e086bdf              # double 0.94443299999999997
	.quad	0x3fe0691a75cd0bb7              # double 0.51283000000000001
	.quad	0x3fd8faebc408d8ed              # double 0.39031500000000002
	.quad	0x3fd1b990afe60c39              # double 0.276951
	.quad	0x3f919c9d5a187a4a              # double 0.017198999999999999
	.quad	0x3fe148605681ecd5              # double 0.54008500000000004
	.quad	0x3fde854cdb7ae579              # double 0.47688599999999998
	.quad	0x3fd28a2ec28b2a6b              # double 0.289684
	.quad	0x3fda558ea7ce0fc3              # double 0.411472
	.quad	0x3fa28e92d55a3a08              # double 0.036243999999999998
	.quad	0x3fe527589efd86a9              # double 0.661053
	.quad	0x3fe95ed8d36b4c7f              # double 0.79282799999999998
	.quad	0x3fe8715a4acf312b              # double 0.76383699999999999
	.quad	0x3fe2db5fa22706d5              # double 0.589279
	.quad	0x3fe0c7a7c9de0503              # double 0.52437199999999995
	.quad	0x3fd20afe60c38f36              # double 0.28192099999999998
	.quad	0x3fd5c536d655e28b              # double 0.34016200000000002
	.quad	0x3fe991cf355cd91f              # double 0.79904900000000001
	.quad	0x3fd2a7b4e54f7a92              # double 0.29148600000000002
	.quad	0x3fcf96b76709fa55              # double 0.24678700000000001
	.quad	0x3fe34729f59ccfaf              # double 0.602437
	.quad	0x3fc8dd052934acb0              # double 0.194245
	.quad	0x3fdbab8e8ea39c52              # double 0.43234600000000001
	.quad	0x3fb954003254e6e2              # double 0.098937999999999998
	.quad	0x3f86ba8c586876e2              # double 0.011098
	.quad	0x3febe74080f98fa3              # double 0.87197899999999995
	.quad	0x3fc0383ad9f0a1be              # double 0.126716
	.quad	0x3fe15d56f32bdc27              # double 0.54264400000000002
	.quad	0x3fd48676a7264a17              # double 0.32070700000000002
	.quad	0x3fda43e963dc486b              # double 0.41039500000000001
	.quad	0x3fe8afa2f05a708f              # double 0.77144000000000001
	.quad	0x3fe75cee17a02fb6              # double 0.73009400000000002
	.quad	0x3fee07f023e9ea14              # double 0.93846899999999999
	.quad	0x3fe73fee2c98e53f              # double 0.72655400000000003
	.quad	0x3fafd6b65a9a8049              # double 0.062184999999999997
	.quad	0x3fedcfb549f94856              # double 0.93160500000000002
	.quad	0x3fec97aeddce7cd0              # double 0.89351599999999998
	.quad	0x3fca6c11a11233df              # double 0.206423
	.quad	0x3fa0a265f0f5a101              # double 0.032488999999999997
	.quad	0x3fd9a83b1d0c8041              # double 0.400893
	.quad	0x3fe26e525892684d              # double 0.57596700000000001
	.quad	0x3fde24a276b7ed42              # double 0.47098600000000002
	.quad	0x3fe4a617c1bda512              # double 0.64527500000000004
	.quad	0x3fcdc64345cfede9              # double 0.23261299999999999
	.quad	0x3fe9998aeb80ecfa              # double 0.79999299999999995
	.quad	0x3fdad8d36b4c7f35              # double 0.41948400000000002
	.quad	0x3f86fe2e6ea85447              # double 0.011226999999999999
	.quad	0x3fe1f342edbb59de              # double 0.56094500000000003
	.quad	0x3fea9e8a2ec28b2a              # double 0.83185299999999995
	.quad	0x3fe0d6cd6c2efd44              # double 0.52622100000000005
	.quad	0x3fead3f5b5fa2270              # double 0.83837399999999995
	.quad	0x3fe76138fffbce42              # double 0.73061799999999999
	.quad	0x3fc969c23b7952d2              # double 0.19853999999999999
	.quad	0x3febc3504c48adef              # double 0.86759200000000003
	.quad	0x3fb3b1e18efbb0e6              # double 0.076933000000000001
	.quad	0x3fefc5ed4a1ad645              # double 0.99291099999999998
	.quad	0x3fbcec41dd1a21ea              # double 0.11298
	.quad	0x3fef5e69ad42c3ca              # double 0.98027500000000001
	.quad	0x3fe97f23cc8de2ac              # double 0.79676999999999997
	.quad	0x3fd1148344c37e6f              # double 0.26687699999999998
	.quad	0x3fbd790752da9867              # double 0.11512799999999999
	.quad	0x3fa6a63b688bda94              # double 0.044236999999999999
	.quad	0x3fc5996744b2b778              # double 0.16874400000000001
	.quad	0x3fd339a38fbca106              # double 0.30039300000000002
	.quad	0x3fec1b75a74c09c4              # double 0.87835200000000002
	.quad	0x3fece55e28aa4335              # double 0.902999
	.quad	0x3feb8281ba7fc32f              # double 0.85968100000000003
	.quad	0x3fed960fa15db339              # double 0.92456799999999995
	.quad	0x3fcdaf4adbc664d4              # double 0.23191200000000001
	.quad	0x3fc47064ece9a2c6              # double 0.15967999999999999
	.quad	0x3fdd236c15d2d01c              # double 0.455287
	.quad	0x3fdc874c8ffb8b26              # double 0.44575799999999999
	.quad	0x3fe57b00bcbe61d0              # double 0.671265
	.quad	0x3fd387b99d451fc5              # double 0.30515900000000001
	.quad	0x3fe8e8ee6b8305d9              # double 0.77843399999999996
	.quad	0x3fb4f765fd8adaba              # double 0.0819
	.quad	0x3fdbb4784230fcf8              # double 0.43289
	.quad	0x3fda0791c4b90215              # double 0.40671200000000002
	.quad	0x3fee4ddb5525cc42              # double 0.94700399999999996
	.quad	0x3fe088893b7d8490              # double 0.51666699999999999
	.quad	0x3fdc4406c00da1a9              # double 0.44165199999999999
	.quad	0x3febb8088509bf9c              # double 0.86621499999999995
	.quad	0x3fc9f0ed3d859c8d              # double 0.20266500000000001
	.quad	0x3fe45a4acf312b1b              # double 0.63602199999999998
	.quad	0x3fd2469d7342edbb              # double 0.28555999999999998
	.quad	0x3fc5a3ec02f2f987              # double 0.16906499999999999
	.quad	0x3fcb723ee1bd1eda              # double 0.214424
	.quad	0x3fd9b13dfb0d51f8              # double 0.40144299999999999
	.quad	0x3fb8b3d4ae429e0a              # double 0.096493999999999996
	.quad	0x3febf2f123c42a67              # double 0.87340600000000002
	.quad	0x3f4abd1aa821f299              # double 8.1599999999999999E-4
	.quad	0x3fe9d26fa3fcc9eb              # double 0.80693800000000004
	.quad	0x3fdab2a27f1b6912              # double 0.417153
	.quad	0x3fe6c5b6c3760bf6              # double 0.71163500000000002
	.quad	0x3fb7d1bb4916ca47              # double 0.093044000000000002
	.quad	0x3feb39eadd590c0b              # double 0.85082000000000002
	.quad	0x3fc55c182ecaeea6              # double 0.16687299999999999
	.quad	0x3fe1a52ce032db1f              # double 0.55141300000000004
	.quad	0x3fe185e80bed740c              # double 0.54759599999999997
	.quad	0x3feb9b17481b21c4              # double 0.86268199999999994
	.quad	0x3fe97540895d0b74              # double 0.79556300000000002
	.quad	0x3fcd680e06530058              # double 0.229738
	.quad	0x3fdb7863beec397a              # double 0.42922300000000002
	.quad	0x3fe1ac386d2ed784              # double 0.55227300000000001
	.quad	0x3fe08ce0b912dba5              # double 0.51719700000000002
	.quad	0x3fab8433d6c72192              # double 0.053742999999999999
	.quad	0x3fdefecdd0d8cb08              # double 0.48430200000000001
	.quad	0x3fb3821af7d30ad4              # double 0.076203999999999994
	.quad	0x3fd44855da272863              # double 0.316915
	.quad	0x3feb6ea854477ff1              # double 0.85725799999999996
	.quad	0x3f4f212d77318fc5              # double 9.4999999999999999E-4
	.quad	0x3fd67ab324851a87              # double 0.35123900000000002
	.quad	0x3fe219bb2788db05              # double 0.56564099999999995
	.quad	0x3fb8e28ed5f138bd              # double 0.097207000000000002
	.quad	0x3fd46f47b677f6b2              # double 0.31929200000000002
	.quad	0x3fd7f7d73c925786              # double 0.374502
	.quad	0x3fdc3458cd20afa3              # double 0.440695
	.quad	0x3fc11769a91105e2              # double 0.13352700000000001
	.quad	0x3fe6807357e670e3              # double 0.70318000000000003
	.quad	0x3fe501b866e43aa8              # double 0.65646000000000004
	.quad	0x3fd7278d0cc35ce2              # double 0.36178900000000003
	.quad	0x3fe73ffac1d29dc7              # double 0.72655999999999998
	.quad	0x3fd80a17b0f6ad71              # double 0.37561600000000001
	.quad	0x3fc8cb74ddf86e3b              # double 0.19370899999999999
	.quad	0x3fdc372e6a76965f              # double 0.44086799999999998
	.quad	0x3fe8954434e3369c              # double 0.76822100000000004
	.quad	0x3fefe5082cf52b91              # double 0.99670800000000003
	.quad	0x3fd7e7c8d195896a              # double 0.37352200000000002
	.quad	0x3f9eb0fadf2ecf20              # double 0.029971999999999999
	.quad	0x3fd5ad7518b0d0ee              # double 0.33871200000000001
	.quad	0x3fe88c9752977c89              # double 0.76716200000000001
	.quad	0x3fe9878b7a1c25d0              # double 0.79779599999999995
	.quad	0x3fe12163fdd65a14              # double 0.53532599999999997
	.quad	0x3fe868533b107747              # double 0.76273500000000005
	.quad	0x3fb814f8b588e369              # double 0.094070000000000001
	.quad	0x3fe5bbe4473cd573              # double 0.67918599999999996
	.quad	0x3fe177f06705c897              # double 0.54589100000000002
	.quad	0x3fa0f3eccc469510              # double 0.033111000000000002
	.quad	0x3fed69813879c411              # double 0.91912899999999997
	.quad	0x3fef2d8c2a454de8              # double 0.97431
	.quad	0x3fec2c40d0aaa7df              # double 0.88040200000000002
	.quad	0x3fa262cba732df50              # double 0.035909999999999997
	.quad	0x3fed34e11dbca969              # double 0.91270499999999999
	.quad	0x3fdbb313be22e5de              # double 0.432805
	.quad	0x3feb47abfb9bed31              # double 0.85249900000000001
	.quad	0x3fecb220791c4b90              # double 0.89674399999999999
	.quad	0x3fd3eef1bac2df0d              # double 0.31145899999999999
	.quad	0x3f929cfdd2285660              # double 0.018176999999999999
	.quad	0x3feefd21ff2e48e9              # double 0.96840000000000003
	.quad	0x3fedfe2c55c96031              # double 0.93727700000000003
	.quad	0x3fd95568e820e62a              # double 0.39583800000000002
	.quad	0x3fc7820a30db6a1f              # double 0.18365600000000001
	.quad	0x3feece789e774eec              # double 0.962704
	.quad	0x3fb60e736049ecb3              # double 0.086157999999999998
	.quad	0x3fbdfb82c2bd7f52              # double 0.117119
	.quad	0x3fdb5019f3c70c99              # double 0.42676399999999998
	.quad	0x3fe043547e06961c              # double 0.50821899999999998
	.quad	0x3fc4cca2db61bb06              # double 0.162495
	.quad	0x3fd5aec0724b76f7              # double 0.33879100000000001
	.quad	0x3fef39d1b2e59afa              # double 0.97580800000000001
	.quad	0x3fd6099e0e73604a              # double 0.344337
	.quad	0x3fd4deb52c9d16fd              # double 0.32609300000000002
	.quad	0x3fea12cadddf43c8              # double 0.81479400000000002
	.quad	0x3fce00d1b71758e2              # double 0.2344
	.quad	0x3fe7982cb20fb225              # double 0.73732600000000004
	.quad	0x3fc5c6eb0b7c3505              # double 0.17013300000000001
	.quad	0x3fd691c8eabffcdb              # double 0.35264800000000002
	.quad	0x3fe7f6a93f290abb              # double 0.74885999999999997
	.quad	0x3fe32af35e310dbf              # double 0.598993
	.quad	0x3fdd4f8f8a4c1ebd              # double 0.45798100000000003
	.quad	0x3fc2247021d10b20              # double 0.141737
	.quad	0x3fd5d5629d8409e5              # double 0.34114899999999998
	.quad	0x3fc0111ada76d97b              # double 0.12552199999999999
	.quad	0x3fd73c74fb549f95              # double 0.36306500000000003
	.quad	0x3fe40ce91c8eac00              # double 0.62657600000000002
	.quad	0x3feaaba16e7a311f              # double 0.83345100000000005
	.quad	0x3fb558a761027957              # double 0.083384
	.quad	0x3fe4958750c1b973              # double 0.64325299999999996
	.quad	0x3fe65fc7e6b3fea0              # double 0.69919200000000004
	.quad	0x3fbc00a7c5ac471b              # double 0.109385
	.quad	0x3fddb3d07c84b5dd              # double 0.46410000000000001
	.quad	0x3febc2bf9830e3ce              # double 0.86752300000000004
	.quad	0x3fe52593a2df9379              # double 0.66083700000000001
	.quad	0x3fc9e95b78cc9a78              # double 0.202434
	.quad	0x3fd6d82773e24fec              # double 0.35694300000000001
	.quad	0x3fdab8d3f1843c3a              # double 0.41753099999999999
	.quad	0x3fe1ec58eeae9ee4              # double 0.56010099999999996
	.quad	0x3fce1709310129cc              # double 0.23507800000000001
	.quad	0x3feb276d97b30f8c              # double 0.84856299999999995
	.quad	0x3fea0789613d31ba              # double 0.81342000000000003
	.quad	0x3fda84d76ab58080              # double 0.414358
	.quad	0x3fe8458cd20afa2f              # double 0.75849
	.quad	0x3fe1193f6c2699c8              # double 0.53433200000000003
	.quad	0x3fdf065300581494              # double 0.484761
	.quad	0x3fe6178b3700474e              # double 0.69037400000000004
	.quad	0x3fe0d8904f6dfc5d              # double 0.52643600000000002
	.quad	0x3fe25aad601ffb48              # double 0.573569
	.quad	0x3fef391d57ff9b56              # double 0.97572199999999998
	.quad	0x3fe15a09cc319c5a              # double 0.54224099999999997
	.quad	0x3fe8b393ab430f49              # double 0.77192099999999997
	.quad	0x3fdbc35ce1826677              # double 0.43379899999999999
	.quad	0x3fd68305d95dd4c7              # double 0.35174699999999998
	.quad	0x3fededdce7cd0353              # double 0.93528599999999995
	.quad	0x3fefaf6837f7be12              # double 0.99016199999999999
	.quad	0x3fe25e8b3b320536              # double 0.57404100000000002
	.quad	0x3fef865300581494              # double 0.98514699999999999
	.quad	0x3fe09c864883fd50              # double 0.51910699999999999
	.quad	0x3fe7522c881e4713              # double 0.72878100000000001
	.quad	0x3f9ead4f5903a754              # double 0.029957999999999999
	.quad	0x3feecf6598e10cf6              # double 0.96281700000000003
	.quad	0x3fe5449774256bca              # double 0.66462299999999996
	.quad	0x3fec46f36ef80560              # double 0.88366100000000002
	.quad	0x3fab91f70de8f6cf              # double 0.053848
	.quad	0x3fa74bc6a7ef9db2              # double 0.045499999999999999
	.quad	0x3fe5a0afa2f05a71              # double 0.67586500000000005
	.quad	0x3fd301bc98a222d5              # double 0.29698099999999999
	.quad	0x3fea8be9424e5929              # double 0.82957899999999996
	.quad	0x3fe625ce5b4245f6              # double 0.69211500000000004
	.quad	0x3fee5cd7060bb2bc              # double 0.94883300000000003
	.quad	0x3fb26223e1869835              # double 0.071809999999999999
	.quad	0x3fe3125dd095af29              # double 0.59599199999999997
	.quad	0x3fdc34f3fd933e36              # double 0.44073200000000001
	.quad	0x3fb84a6223e18698              # double 0.094884999999999997
	.quad	0x3feed38ef34d6a16              # double 0.96332499999999999
	.quad	0x3fe68a936c58eeaf              # double 0.70441600000000004
	.quad	0x3fed07485e3da2f9              # double 0.90713900000000003
	.quad	0x3fdf9930be0ded29              # double 0.49372500000000002
	.quad	0x3fb8d530489d27c4              # double 0.097003000000000005
	.quad	0x3febab990afe60c4              # double 0.86469700000000004
	.quad	0x3fb5fb82c2bd7f52              # double 0.085869
	.quad	0x3fc40746455eaee2              # double 0.156472
	.quad	0x3feaa3ca7503b81b              # double 0.83249399999999996
	.quad	0x3fe4bcf70153bd16              # double 0.64806699999999995
	.quad	0x3fcb1cb039ef0f17              # double 0.211813
	.quad	0x3feb20f6f08cc576              # double 0.84777400000000003
	.quad	0x3f728f190d173fb8              # double 0.0045310000000000003
	.quad	0x3fb98bf7f06705c9              # double 0.099792000000000006
	.quad	0x3fe121b1960fa15e              # double 0.53536300000000003
	.quad	0x3fea0f66a5508701              # double 0.81437999999999999
	.quad	0x3fd3ab1d4f9c1f86              # double 0.30731900000000001
	.quad	0x3f6018e757928e0d              # double 0.0019650000000000002
	.quad	0x3fb87e38eb0318b9              # double 0.095675999999999997
	.quad	0x3fe988aac96cc5fc              # double 0.797933
	.quad	0x3fe1f9a2834d26fa              # double 0.56172299999999997
	.quad	0x3fe34219eb6390c9              # double 0.60181899999999999
	.quad	0x3fc669ced0b30b5b              # double 0.17510400000000001
	.quad	0x3fcc03925bb7b6bb              # double 0.218859
	.quad	0x3fb69ced0b30b5aa              # double 0.088331999999999993
	.quad	0x3fe7e1cbccf28c7a              # double 0.746313
	.quad	0x3fdf81669ced0b31              # double 0.49227300000000002
	.quad	0x3fd4b7564302b40f              # double 0.32368999999999998
	.quad	0x3fe4c710cb295e9e              # double 0.64929999999999999
	.quad	0x3fcabdd334c5da6a              # double 0.20891799999999999
	.quad	0x3fdde5ffa3b9ae0c              # double 0.46716299999999999
	.quad	0x3fd16c6583e8576d              # double 0.27224100000000001
	.quad	0x3fe36864020817fc              # double 0.60649299999999995
	.quad	0x3fd2ef1fddebd902              # double 0.29584500000000002
	.quad	0x3fecf6e82949a565              # double 0.90513999999999994
	.quad	0x3fefdb899392189c              # double 0.99554900000000001
	.quad	0x3feff7ea1c68ec53              # double 0.99901300000000003
	.quad	0x3fe63af102363b25              # double 0.69469499999999995
	.quad	0x3fecd097c80841ee              # double 0.90046300000000001
	.quad	0x3fc154da4ce8101f              # double 0.13540199999999999
	.quad	0x3fbf7ad4b2745bf2              # double 0.12296799999999999
	.quad	0x3fe96e9bbf0dc769              # double 0.79475200000000001
	.quad	0x3fb6b13dfb0d51f8              # double 0.088641999999999999
	.quad	0x3fe475579af1886e              # double 0.639324
	.quad	0x3fee2e770bd017db              # double 0.94317200000000001
	.quad	0x3fece707e175d13d              # double 0.90320199999999995
	.quad	0x3fcf5b6805a2d730              # double 0.244977
	.quad	0x3fed0ac5c13fd0d0              # double 0.90756499999999996
	.quad	0x3fe75e95b78cc9a7              # double 0.73029599999999995
	.quad	0x3fe17f151e75360d              # double 0.546763
	.quad	0x3fb2bdc26dce39b4              # double 0.073207999999999995
	.quad	0x3fe3a839042d8c2a              # double 0.61428499999999997
	.quad	0x3fe6f8d2e514c22f              # double 0.71787400000000001
	.quad	0x3fd3c5931ca7d673              # double 0.30893399999999999
	.quad	0x3fc0f672b884406c              # double 0.132521
	.quad	0x3fea7644955b4678              # double 0.82693700000000003
	.quad	0x3fe44ebfec13b9f1              # double 0.63461299999999998
	.quad	0x3fe9e3baba7b9171              # double 0.80904900000000002
	.quad	0x3fd086a8fc0d2c38              # double 0.25821899999999998
	.quad	0x3fcbe2584f4c6e6e              # double 0.21784500000000001
	.quad	0x3fe402cb20fb224b              # double 0.62534100000000004
	.quad	0x3fe6dd377e1b8ed2              # double 0.71450400000000003
	.quad	0x3f968fd199bb2789              # double 0.022033000000000001
	.quad	0x3fe6c7abfb9bed31              # double 0.71187400000000001
	.quad	0x3fdb0ddc6195464e              # double 0.42272100000000001
	.quad	0x3fef073797460243              # double 0.96963100000000002
	.quad	0x3fe929e4d5d80e49              # double 0.78636399999999995
	.quad	0x3fed3c6eb0b7c350              # double 0.91362699999999997
	.quad	0x3fefd740c4156e26              # double 0.99502599999999997
	.quad	0x3fb5ad2135daad60              # double 0.084672999999999998
	.quad	0x3fe0d42c3c9eecc0              # double 0.52590000000000003
	.quad	0x3fc05b5b70691ea8              # double 0.12778800000000001
	.quad	0x3fda30db6a1e81cb              # double 0.40923199999999998
	.quad	0x3f90f8c64fdb09a6              # double 0.016573999999999998
	.quad	0x3fe3c9c2c1b10fd8              # double 0.61837900000000001
	.quad	0x3fe3095af294dd72              # double 0.59489199999999998
	.quad	0x3fea986b9c304ccf              # double 0.83110600000000001
	.quad	0x3fc60c308feac42f              # double 0.17224700000000001
	.quad	0x3fd3d2bf5515054b              # double 0.30973800000000001
	.quad	0x3fe17d7a13c254a4              # double 0.54656700000000003
	.quad	0x3feb62131a8ef77f              # double 0.85572199999999998
	.quad	0x3fb7f737da61e0c6              # double 0.093616000000000004
	.quad	0x3fa6b50b0f27bb30              # double 0.044350000000000001
	.quad	0x3fec1c0010c6f7a1              # double 0.87841800000000003
	.quad	0x3fe097c80841ede1              # double 0.51852799999999999
	.quad	0x3fedea6c1a048e04              # double 0.93486599999999997
	.quad	0x3feb3edd8b60f1b2              # double 0.85142399999999996
	.quad	0x3fe94e4430b178b3              # double 0.79080399999999995
	.quad	0x3fc2e23af31b152f              # double 0.14752899999999999
	.quad	0x3fd09c12f09d8c6d              # double 0.25952599999999998
	.quad	0x3fe6640420f6f08d              # double 0.69970900000000003
	.quad	0x3fdb59210385c67e              # double 0.427315
	.quad	0x3fe23838c111ada7              # double 0.56936299999999995
	.quad	0x3fddfe36d22424a2              # double 0.46864099999999997
	.quad	0x3fcc5ba6efc371da              # double 0.22154699999999999
	.quad	0x3fe83f359ff4fd6d              # double 0.75771599999999995
	.quad	0x3fe48129cbab649d              # double 0.64076699999999998
	.quad	0x3fd262d40aaeafab              # double 0.28728199999999998
	.quad	0x3fe7db402d16b980              # double 0.74551400000000001
	.quad	0x3fc19b3d07c84b5e              # double 0.13755000000000001
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
