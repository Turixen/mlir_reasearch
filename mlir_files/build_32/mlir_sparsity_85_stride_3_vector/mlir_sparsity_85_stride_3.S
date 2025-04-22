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
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
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
	.size	assemble_sparse_tensor, .Lfunc_end2-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	121                             # 0x79
	.quad	125                             # 0x7d
	.quad	128                             # 0x80
	.quad	166                             # 0xa6
	.quad	169                             # 0xa9
	.quad	173                             # 0xad
	.quad	210                             # 0xd2
	.quad	211                             # 0xd3
	.quad	214                             # 0xd6
	.quad	252                             # 0xfc
	.quad	256                             # 0x100
	.quad	257                             # 0x101
	.quad	294                             # 0x126
	.quad	296                             # 0x128
	.quad	298                             # 0x12a
	.quad	332                             # 0x14c
	.quad	336                             # 0x150
	.quad	343                             # 0x157
	.quad	379                             # 0x17b
	.quad	382                             # 0x17e
	.quad	384                             # 0x180
	.quad	419                             # 0x1a3
	.quad	426                             # 0x1aa
	.quad	430                             # 0x1ae
	.quad	466                             # 0x1d2
	.quad	471                             # 0x1d7
	.quad	472                             # 0x1d8
	.quad	511                             # 0x1ff
	.quad	514                             # 0x202
	.quad	514                             # 0x202
	.quad	552                             # 0x228
	.quad	556                             # 0x22c
	.quad	558                             # 0x22e
	.quad	594                             # 0x252
	.quad	597                             # 0x255
	.quad	599                             # 0x257
	.quad	637                             # 0x27d
	.quad	642                             # 0x282
	.quad	648                             # 0x288
	.quad	685                             # 0x2ad
	.quad	690                             # 0x2b2
	.quad	694                             # 0x2b6
	.quad	731                             # 0x2db
	.quad	735                             # 0x2df
	.quad	736                             # 0x2e0
	.quad	773                             # 0x305
	.quad	778                             # 0x30a
	.quad	781                             # 0x30d
	.quad	816                             # 0x330
	.quad	821                             # 0x335
	.quad	824                             # 0x338
	.quad	859                             # 0x35b
	.quad	862                             # 0x35e
	.quad	863                             # 0x35f
	.quad	901                             # 0x385
	.quad	906                             # 0x38a
	.quad	910                             # 0x38e
	.quad	946                             # 0x3b2
	.quad	950                             # 0x3b6
	.quad	951                             # 0x3b7
	.quad	987                             # 0x3db
	.quad	994                             # 0x3e2
	.quad	1000                            # 0x3e8
	.quad	1039                            # 0x40f
	.quad	1041                            # 0x411
	.quad	1044                            # 0x414
	.quad	1086                            # 0x43e
	.quad	1091                            # 0x443
	.quad	1097                            # 0x449
	.quad	1136                            # 0x470
	.quad	1139                            # 0x473
	.quad	1143                            # 0x477
	.quad	1178                            # 0x49a
	.quad	1183                            # 0x49f
	.quad	1191                            # 0x4a7
	.quad	1228                            # 0x4cc
	.quad	1231                            # 0x4cf
	.quad	1240                            # 0x4d8
	.quad	1275                            # 0x4fb
	.quad	1278                            # 0x4fe
	.quad	1282                            # 0x502
	.quad	1321                            # 0x529
	.quad	1328                            # 0x530
	.quad	1333                            # 0x535
	.quad	1368                            # 0x558
	.quad	1373                            # 0x55d
	.quad	1375                            # 0x55f
	.quad	1412                            # 0x584
	.quad	1417                            # 0x589
	.quad	1422                            # 0x58e
	.quad	1459                            # 0x5b3
	.quad	1463                            # 0x5b7
	.quad	1464                            # 0x5b8
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
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
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	54                              # 0x36
	.quad	31                              # 0x1f
	.quad	52                              # 0x34
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	34                              # 0x22
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
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
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	80                              # 0x50
	.quad	6                               # 0x6
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	16                              # 0x10
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	29                              # 0x1d
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	81                              # 0x51
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
	.quad	58                              # 0x3a
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	90                              # 0x5a
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	93                              # 0x5d
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
	.quad	50                              # 0x32
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	59                              # 0x3b
	.quad	88                              # 0x58
	.quad	37                              # 0x25
	.quad	49                              # 0x31
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
	.quad	74                              # 0x4a
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	78                              # 0x4e
	.quad	9                               # 0x9
	.quad	66                              # 0x42
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
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	73                              # 0x49
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	49                              # 0x31
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	54                              # 0x36
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
	.quad	26                              # 0x1a
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	30                              # 0x1e
	.quad	81                              # 0x51
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	53                              # 0x35
	.quad	96                              # 0x60
	.quad	32                              # 0x20
	.quad	95                              # 0x5f
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
	.quad	25                              # 0x19
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
	.quad	64                              # 0x40
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	74                              # 0x4a
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	59                              # 0x3b
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	35                              # 0x23
	.quad	63                              # 0x3f
	.quad	87                              # 0x57
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	13                              # 0xd
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	34                              # 0x22
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	81                              # 0x51
	.quad	87                              # 0x57
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
	.quad	28                              # 0x1c
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
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	11                              # 0xb
	.quad	42                              # 0x2a
	.quad	71                              # 0x47
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	3                               # 0x3
	.quad	59                              # 0x3b
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	30                              # 0x1e
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	78                              # 0x4e
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
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
	.quad	33                              # 0x21
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
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	51                              # 0x33
	.quad	82                              # 0x52
	.quad	8                               # 0x8
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	11                              # 0xb
	.quad	55                              # 0x37
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
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
	.quad	29                              # 0x1d
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	29                              # 0x1d
	.quad	46                              # 0x2e
	.quad	72                              # 0x48
	.quad	10                              # 0xa
	.quad	37                              # 0x25
	.quad	58                              # 0x3a
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
	.quad	50                              # 0x32
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
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	17                              # 0x11
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	44                              # 0x2c
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	43                              # 0x2b
	.quad	68                              # 0x44
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	57                              # 0x39
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
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
	.quad	46                              # 0x2e
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	33                              # 0x21
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	95                              # 0x5f
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
	.quad	31                              # 0x1f
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
	.quad	20                              # 0x14
	.quad	36                              # 0x24
	.quad	54                              # 0x36
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	42                              # 0x2a
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	29                              # 0x1d
	.quad	71                              # 0x47
	.quad	81                              # 0x51
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
	.quad	68                              # 0x44
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
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	69                              # 0x45
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3fc9202107b78466              # double 0.196293
	.quad	0x3fe3071e6cd29132              # double 0.59461900000000001
	.quad	0x3fd07fb267c6b8b7              # double 0.25779400000000002
	.quad	0x3fc76b3bb83cf2d0              # double 0.18296000000000001
	.quad	0x3fe678c21e1d2179              # double 0.702241
	.quad	0x3fe7645a1cac0831              # double 0.73099999999999998
	.quad	0x3fe88edc3bd59924              # double 0.76743899999999998
	.quad	0x3fef1ae4f3343fa3              # double 0.97203300000000003
	.quad	0x3fdaa8deb0fadf2f              # double 0.41655700000000001
	.quad	0x3fd3253da72a7bd5              # double 0.29914800000000003
	.quad	0x3fe4b88ebcc6c54c              # double 0.64752900000000002
	.quad	0x3fe2017dae81882b              # double 0.56268200000000002
	.quad	0x3fe31adea897635e              # double 0.59702999999999995
	.quad	0x3fc3e4e69f05ea25              # double 0.15542300000000001
	.quad	0x3fe1c32a8c9b8455              # double 0.55507399999999996
	.quad	0x3fc0751ce28ed5f1              # double 0.12857399999999999
	.quad	0x3fddf202107b7846              # double 0.46789599999999998
	.quad	0x3fefc6d1e108c3f4              # double 0.99302000000000001
	.quad	0x3fe3573c925785f9              # double 0.60439900000000002
	.quad	0x3fd8945308bb9064              # double 0.38405299999999998
	.quad	0x3feee916440f2389              # double 0.96595299999999995
	.quad	0x3fdbaa60913a4f87              # double 0.43227399999999999
	.quad	0x3feaca4b124d099e              # double 0.83719399999999999
	.quad	0x3fd11f14983d7907              # double 0.26752199999999998
	.quad	0x3fea441355475a32              # double 0.82081000000000004
	.quad	0x3fed6084a515ce9e              # double 0.91803199999999996
	.quad	0x3fd412d3415b1423              # double 0.31364900000000001
	.quad	0x3fea29131ec0b567              # double 0.81751399999999996
	.quad	0x3fefdec5f394b7b3              # double 0.99594400000000005
	.quad	0x3fe61e83e425aee6              # double 0.69122499999999998
	.quad	0x3fe610060780fdc1              # double 0.68945599999999996
	.quad	0x3fe796030c23fab1              # double 0.73706199999999999
	.quad	0x3feaa1f2990f301f              # double 0.83226900000000004
	.quad	0x3fee87bfe7e1fc09              # double 0.954071
	.quad	0x3fe1ba53b8e4b87c              # double 0.55399500000000002
	.quad	0x3fe768123810e886              # double 0.73145400000000005
	.quad	0x3fe39830e3cd9a52              # double 0.61232799999999998
	.quad	0x3fd4bfb9bed30f06              # double 0.32420199999999999
	.quad	0x3fda5bab21815a08              # double 0.41184500000000002
	.quad	0x3fe553f39d1b2e5a              # double 0.66649800000000003
	.quad	0x3fe3db2f661f18ca              # double 0.620506
	.quad	0x3fe06fd00713f078              # double 0.51364900000000002
	.quad	0x3fe133f42352eb5f              # double 0.53759199999999996
	.quad	0x3fe1024b33daf8df              # double 0.53152999999999995
	.quad	0x3fa14ea077036c9c              # double 0.033803
	.quad	0x3fc1804534bd76ee              # double 0.13672699999999999
	.quad	0x3fe4ad3415b1422d              # double 0.64614300000000002
	.quad	0x3fe83dba0a526959              # double 0.75753499999999996
	.quad	0x3fd04b6e935b91f7              # double 0.254604
	.quad	0x3fd03365881a1555              # double 0.253137
	.quad	0x3fe6bc558644523f              # double 0.71048999999999995
	.quad	0x3fe0c9afe1da7b0b              # double 0.52461999999999998
	.quad	0x3fe82921ccd96207              # double 0.75502100000000005
	.quad	0x3f42be48a58b3f64              # double 5.7200000000000003E-4
	.quad	0x3fe9d2cbea4ebdd3              # double 0.80698199999999998
	.quad	0x3febe9ec2ce46499              # double 0.872305
	.quad	0x3fd01d4738a3b57c              # double 0.25178699999999998
	.quad	0x3fe791f2dc2b0ea2              # double 0.73656600000000005
	.quad	0x3fefd590c0ad03da              # double 0.99482000000000004
	.quad	0x3feaa3a6ce358299              # double 0.83247700000000002
	.quad	0x3fe7b96073de1e2e              # double 0.74137900000000001
	.quad	0x3fcf0c026cc1ca3a              # double 0.24255399999999999
	.quad	0x3fd525918a009f62              # double 0.33041799999999999
	.quad	0x3fce7924af0bf1a6              # double 0.23807200000000001
	.quad	0x3f78dde7a743a648              # double 0.006071
	.quad	0x3fa1d495182a9931              # double 0.034825000000000002
	.quad	0x3fdc47a17f4128bf              # double 0.44187199999999999
	.quad	0x3fe0d17c5ef62f9d              # double 0.52557200000000004
	.quad	0x3fe87a7c9de05037              # double 0.76495199999999997
	.quad	0x3fe384c48adeebb3              # double 0.60995699999999997
	.quad	0x3fea035bd512ec6c              # double 0.81291000000000002
	.quad	0x3fe00c8472c0e7bc              # double 0.50152799999999997
	.quad	0x3fe67cdab191dde3              # double 0.70274099999999995
	.quad	0x3febbe8bc169c23b              # double 0.86700999999999995
	.quad	0x3fbfbd1676640a6c              # double 0.12397900000000001
	.quad	0x3fefa2a4db163bac              # double 0.98860400000000003
	.quad	0x3fdcfbc5de9c022a              # double 0.45286700000000002
	.quad	0x3fe221c8a7a41e58              # double 0.56662400000000002
	.quad	0x3fcf9029ae4f3344              # double 0.246587
	.quad	0x3fd1dbb16c1e364c              # double 0.279034
	.quad	0x3fe513879c4113c7              # double 0.65863400000000005
	.quad	0x3fec2c6ef3d3a1d3              # double 0.88042399999999998
	.quad	0x3fe190cd423d9232              # double 0.54892600000000003
	.quad	0x3fe753bf2f555821              # double 0.72897299999999998
	.quad	0x3feee777079e59f3              # double 0.96575500000000003
	.quad	0x3fca5faebc408d8f              # double 0.20604500000000001
	.quad	0x3fe77cdee34fc611              # double 0.73399300000000001
	.quad	0x3fecbd9a95421c04              # double 0.89814499999999997
	.quad	0x3fe885ab3aabcd79              # double 0.76631700000000003
	.quad	0x3fc634c1a8ac5c14              # double 0.173485
	.quad	0x3fe786013660e51d              # double 0.73510799999999998
	.quad	0x3fe2ab5807fed203              # double 0.58341600000000005
	.quad	0x3fdb3d859c8c9321              # double 0.42563000000000001
	.quad	0x3fee1c51dabe2718              # double 0.94095700000000004
	.quad	0x3fefbd4ae429e0a4              # double 0.99185699999999998
	.quad	0x3fe099ae924f227d              # double 0.51876
	.quad	0x3fc97c0b13597918              # double 0.199098
	.quad	0x3fd254d61b2a27f2              # double 0.28642800000000002
	.quad	0x3fe6e8b5cbff4773              # double 0.71590699999999996
	.quad	0x3fe1a2f6a50d6b23              # double 0.55114300000000005
	.quad	0x3fb0bfe3b03e20cd              # double 0.065428
	.quad	0x3fee61522a6f3f53              # double 0.94938
	.quad	0x3fd7c59b8023a6ce              # double 0.37143599999999999
	.quad	0x3fee5523b3636f3b              # double 0.94789299999999999
	.quad	0x3fe3e9813879c411              # double 0.62225399999999997
	.quad	0x3feac27a63736cdf              # double 0.83623999999999998
	.quad	0x3fb6582dbe7f2c30              # double 0.087282999999999999
	.quad	0x3fd6596851223183              # double 0.34920699999999999
	.quad	0x3fe1a159817b95a3              # double 0.55094600000000005
	.quad	0x3feef58c08b75ea6              # double 0.96747399999999995
	.quad	0x3fefd5cfaacd9e84              # double 0.99485000000000001
	.quad	0x3fd8df1e0828c36e              # double 0.38861800000000002
	.quad	0x3fe19986b9c304cd              # double 0.54999100000000001
	.quad	0x3fe0e5625a682b63              # double 0.52800100000000005
	.quad	0x3fed62de8709741d              # double 0.918319
	.quad	0x3f904c48adeebb34              # double 0.015916
	.quad	0x3fecd5bee3d5fdce              # double 0.901092
	.quad	0x3fc399cbee807bbb              # double 0.15313099999999999
	.quad	0x3fb7bca1059ea572              # double 0.092721999999999998
	.quad	0x3fe522ca9ac36545              # double 0.660497
	.quad	0x3fcb1d1d4738a3b5              # double 0.21182599999999999
	.quad	0x3fec82539756c93a              # double 0.89090899999999995
	.quad	0x3fe662456f75d9a1              # double 0.69949600000000001
	.quad	0x3fed1b1fab96f21f              # double 0.90956099999999995
	.quad	0x3fb4dfaca3619978              # double 0.081537999999999999
	.quad	0x3fe9f6922d948dc1              # double 0.81134899999999999
	.quad	0x3fc03d0bfa0945fa              # double 0.126863
	.quad	0x3fa841aac53b0814              # double 0.047376000000000001
	.quad	0x3fe4c5f9df548ece              # double 0.64916700000000005
	.quad	0x3fe6cbc8c0ce91c9              # double 0.71237600000000001
	.quad	0x3fe3158fb43d89ce              # double 0.59638199999999997
	.quad	0x3fd9b0468448cf7d              # double 0.40138400000000002
	.quad	0x3fc6d4aa10e02214              # double 0.178365
	.quad	0x3fdafd2630ec3116              # double 0.42170099999999999
	.quad	0x3fc37da61e0c5a81              # double 0.15227199999999999
	.quad	0x3febda250f840182              # double 0.87037900000000001
	.quad	0x3fa8bac710cb295f              # double 0.048300000000000003
	.quad	0x3fef13ff25e56cd7              # double 0.97119100000000002
	.quad	0x3fecf036c9c0a8d2              # double 0.90432299999999999
	.quad	0x3fe520a958537e2c              # double 0.66023699999999996
	.quad	0x3fd327136a400fbb              # double 0.29926000000000003
	.quad	0x3feebc9cd3e0bd45              # double 0.96052400000000004
	.quad	0x3fd54fa8b4bf8fcd              # double 0.33298699999999998
	.quad	0x3fe4f4ddf86e3b47              # double 0.654891
	.quad	0x3feac046412cf0fa              # double 0.83597100000000002
	.quad	0x3fd52fe3f359ff50              # double 0.33104800000000001
	.quad	0x3fcee5bc87db2b34              # double 0.24138599999999999
	.quad	0x3fd7e4bcad9ad85e              # double 0.373336
	.quad	0x3fb4a4e379b77c03              # double 0.080641000000000004
	.quad	0x3fe08ebedfa43fe6              # double 0.51742500000000002
	.quad	0x3fe4061a60d4562e              # double 0.625745
	.quad	0x3fceb7fe08aefb2b              # double 0.23999000000000001
	.quad	0x3fd4e05ccc89b0ee              # double 0.32619399999999998
	.quad	0x3fb65a250f840182              # double 0.087313000000000001
	.quad	0x3fe6c54152b0a6fc              # double 0.71157899999999996
	.quad	0x3fb2cdf266ba493d              # double 0.073455000000000006
	.quad	0x3fe27049a9973d9f              # double 0.57620700000000002
	.quad	0x3fedd9641f644956              # double 0.93278700000000003
	.quad	0x3fec0092ccf6be38              # double 0.87507000000000001
	.quad	0x3fb5a8bd230b9dc3              # double 0.084606000000000001
	.quad	0x3f80e453d20f2bed              # double 0.0082480000000000001
	.quad	0x3fe98a393ee5eedd              # double 0.79812300000000003
	.quad	0x3fd62fb5d031055c              # double 0.34666200000000003
	.quad	0x3fe8880f98fa3769              # double 0.76660899999999998
	.quad	0x3fe30266772d5e07              # double 0.59404299999999999
	.quad	0x3fec944028e4fb98              # double 0.89309700000000003
	.quad	0x3fdead96a6a0125a              # double 0.47934500000000002
	.quad	0x3fe7e9878316a055              # double 0.74725699999999995
	.quad	0x3fefb74ddf86e3b4              # double 0.99112599999999995
	.quad	0x3fd3c9795b35b0bc              # double 0.309172
	.quad	0x3fe7b96073de1e2e              # double 0.74137900000000001
	.quad	0x3fbc2e1262025397              # double 0.110078
	.quad	0x3fa2d948dc11e42e              # double 0.036814
	.quad	0x3fd4de76427c7c52              # double 0.32607799999999998
	.quad	0x3fd467ec7863beec              # double 0.31884299999999999
	.quad	0x3fe351e75360d024              # double 0.60374799999999995
	.quad	0x3fc99fc2a8869c67              # double 0.200188
	.quad	0x3fed45b291b823c8              # double 0.91475799999999996
	.quad	0x3fe6c5aa2e3c536d              # double 0.71162899999999996
	.quad	0x3fcada87a072d1af              # double 0.20979400000000001
	.quad	0x3fc73a71151611ba              # double 0.18147099999999999
	.quad	0x3fec40c1fc8f3238              # double 0.88290500000000005
	.quad	0x3fe44f95d4e8fb01              # double 0.63471500000000003
	.quad	0x3fabc5de9c0229a6              # double 0.054244000000000001
	.quad	0x3fec1a52263d816b              # double 0.87821300000000002
	.quad	0x3fd50ea5b530ced5              # double 0.32901900000000001
	.quad	0x3fed3024f6598e11              # double 0.91212700000000002
	.quad	0x3fe6877ee4e26d48              # double 0.70404
	.quad	0x3fecf07182235b4f              # double 0.90435100000000002
	.quad	0x3fdb0a6fc58ab92c              # double 0.422512
	.quad	0x3fe4a0a5269595ff              # double 0.64461000000000002
	.quad	0x3fd11da7b0b39192              # double 0.26743499999999998
	.quad	0x3fdb362e90364389              # double 0.425182
	.quad	0x3fd478316a055758              # double 0.31983600000000001
	.quad	0x3fd0d0b73d188f43              # double 0.262739
	.quad	0x3fc2aef2c7325919              # double 0.14596400000000001
	.quad	0x3fbe2339c0ebedfa              # double 0.117725
	.quad	0x3fe6c98a222d5172              # double 0.71210200000000001
	.quad	0x3fe7510f51ac9afe              # double 0.72864499999999999
	.quad	0x3fe76f3b213e3e29              # double 0.73232799999999998
	.quad	0x3fa58a116659d12d              # double 0.042069000000000002
	.quad	0x3fe3858dde7a743a              # double 0.61005299999999996
	.quad	0x3fc1dd76683c297c              # double 0.139571
	.quad	0x3f8a8a3f8982cb21              # double 0.012959
	.quad	0x3faed7e889c1b542              # double 0.060241000000000003
	.quad	0x3fdb25d074213a0c              # double 0.42418299999999998
	.quad	0x3fd92003ab862b28              # double 0.39257900000000001
	.quad	0x3fee58255b035bd5              # double 0.94825999999999999
	.quad	0x3fe5f9873ffac1d3              # double 0.68671000000000004
	.quad	0x3fee0dbad3a604e2              # double 0.93917600000000001
	.quad	0x3fe5f71eafee6fb5              # double 0.68641600000000003
	.quad	0x3fe4c3bb40b34e77              # double 0.64889300000000005
	.quad	0x3fe013b9f127f5e8              # double 0.50240799999999997
	.quad	0x3fe741f644955b46              # double 0.72680199999999995
	.quad	0x3fd059253543aeab              # double 0.25544099999999997
	.quad	0x3fa7d86a8fc0d2c4              # double 0.046573000000000003
	.quad	0x3fe06a3161a1db87              # double 0.51296299999999995
	.quad	0x3fd15332acfb762e              # double 0.27070300000000003
	.quad	0x3fbccee5abc0e38a              # double 0.11253199999999999
	.quad	0x3fce15a07b352a84              # double 0.23503499999999999
	.quad	0x3fe3bce2089e3433              # double 0.61680699999999999
	.quad	0x3fe84d4ed2cbea4f              # double 0.75943700000000003
	.quad	0x3fe6b682730c6717              # double 0.70977900000000005
	.quad	0x3feef94855da2728              # double 0.96792999999999995
	.quad	0x3fc96dd26b723ee2              # double 0.19866400000000001
	.quad	0x3fd17292c4934268              # double 0.27261800000000003
	.quad	0x3fd3d8904f6dfc5d              # double 0.31009300000000001
	.quad	0x3fe03b2788db0575              # double 0.50722100000000003
	.quad	0x3fc4f156191148fe              # double 0.16361500000000001
	.quad	0x3fdfcaafbc1acde2              # double 0.49674600000000002
	.quad	0x3feee89656eefa1e              # double 0.96589199999999997
	.quad	0x3feef9e3864cb5bb              # double 0.96800399999999997
	.quad	0x3fd6c00da1a93294              # double 0.35547200000000001
	.quad	0x3fe61bf9c62a1b5c              # double 0.69091499999999995
	.quad	0x3fe370691ea78af4              # double 0.60747200000000001
	.quad	0x3fec9183b60285ec              # double 0.89276299999999997
	.quad	0x3fe0c9eecbfb15b5              # double 0.52464999999999995
	.quad	0x3fbba16e7a311e86              # double 0.107932
	.quad	0x3fb9a975afaf8594              # double 0.100242
	.quad	0x3fea883dbc23315d              # double 0.82913099999999995
	.quad	0x3fe6a786c226809d              # double 0.70794999999999997
	.quad	0x3fe81563a9f383f1              # double 0.75261100000000003
	.quad	0x3fe8a235b4edb2f6              # double 0.76980099999999996
	.quad	0x3fec004534bd76ee              # double 0.87503299999999995
	.quad	0x3fc12a51e321a2e8              # double 0.134104
	.quad	0x3fdc53e707e175d1              # double 0.44262099999999999
	.quad	0x3fcaad81adea8976              # double 0.20841999999999999
	.quad	0x3fefb8130164840e              # double 0.99121999999999999
	.quad	0x3fd2426351deefe5              # double 0.285302
	.quad	0x3fe3403361565c2d              # double 0.60158699999999998
	.quad	0x3fdbabda0dfdef85              # double 0.43236400000000003
	.quad	0x3fe908ede54b48d4              # double 0.78234000000000003
	.quad	0x3fd9354c122749f1              # double 0.39387800000000001
	.quad	0x3fef355ef1fddebe              # double 0.97526500000000005
	.quad	0x3fe67def8487b99d              # double 0.70287299999999997
	.quad	0x3feaaca793576039              # double 0.83357599999999998
	.quad	0x3fee5c1615ebfa8f              # double 0.94874099999999995
	.quad	0x3fd72452c59fb1e2              # double 0.36159200000000002
	.quad	0x3fd4e39f77292c49              # double 0.32639299999999999
	.quad	0x3fdffbb517a46174              # double 0.49973800000000002
	.quad	0x3feb9363f572de44              # double 0.861742
	.quad	0x3fe8341e14bdfd26              # double 0.75636199999999998
	.quad	0x3fd091dde37585be              # double 0.25890299999999999
	.quad	0x3feb62e09fe86834              # double 0.85582000000000002
	.quad	0x3fd046a5d6bebe16              # double 0.25431199999999998
	.quad	0x3fe70051c9f72f77              # double 0.71878900000000001
	.quad	0x3fe3f525460aa64c              # double 0.62367499999999998
	.quad	0x3fe7b77c02afdda9              # double 0.74114800000000003
	.quad	0x3fd405143bf72713              # double 0.31280999999999998
	.quad	0x3fe4db749adc8fb8              # double 0.65178899999999995
	.quad	0x3fe18f9f44d44567              # double 0.54878199999999999
	.quad	0x3fd7db76b3bb83cf              # double 0.37276999999999999
	.quad	0x3fe322856605ee57              # double 0.59796400000000005
	.quad	0x3fb495d0b73d188f              # double 0.080410999999999996
	.quad	0x3fd682773e24febd              # double 0.351713
	.quad	0x3fe26957470eb24a              # double 0.57535899999999995
	.quad	0x3f92bf11f926c7eb              # double 0.018307
	.quad	0x3fee7def8487b99d              # double 0.95287299999999997
	.quad	0x3fd769fcf3dc054f              # double 0.365844
	.quad	0x3f7cc63f141205bc              # double 0.007025
	.quad	0x3fe90cc78e9f6a94              # double 0.78281
	.quad	0x3fd30a915379fa98              # double 0.29752000000000001
	.quad	0x3fd3a072d1aeb3dd              # double 0.306668
	.quad	0x3fe83e1650a45d42              # double 0.757579
	.quad	0x3fdfc6759ab6d00b              # double 0.49648799999999998
	.quad	0x3fe4054046412cf1              # double 0.625641
	.quad	0x3fdfc49774256bca              # double 0.49637399999999998
	.quad	0x3fe13890d5a5b963              # double 0.53815500000000005
	.quad	0x3f7b4677b395c422              # double 0.006659
	.quad	0x3fdff3d7d3910c2c              # double 0.49925799999999998
	.quad	0x3fd2240314877681              # double 0.28344799999999998
	.quad	0x3fe93ffef39085f5              # double 0.78906200000000004
	.quad	0x3fecc5479d4d8341              # double 0.89908200000000005
	.quad	0x3fd0e69f05ea24cc              # double 0.26407599999999998
	.quad	0x3fedeec17ebaf102              # double 0.93539499999999998
	.quad	0x3fe8ebd09e12a51e              # double 0.77878599999999998
	.quad	0x3fe5f8c64fdb09a6              # double 0.68661799999999995
	.quad	0x3fbae5ffa3b9ae0c              # double 0.105072
	.quad	0x3fe9bc23315d701e              # double 0.80421600000000004
	.quad	0x3fec3f76a2f48c2e              # double 0.88274699999999995
	.quad	0x3fe3ea91d9b1b79e              # double 0.62238400000000005
	.quad	0x3fedd7060bb2bbaa              # double 0.93249800000000005
	.quad	0x3fe8fb7e90ff9724              # double 0.78069999999999994
	.quad	0x3fc0f345069a4df4              # double 0.13242399999999999
	.quad	0x3fb28900c521dda0              # double 0.072402999999999995
	.quad	0x3fbaf2734f82f512              # double 0.10526199999999999
	.quad	0x3fe2df3f961804da              # double 0.58975200000000005
	.quad	0x3fc0541d8e864021              # double 0.12756700000000001
	.quad	0x3feb39da16616b55              # double 0.85081200000000001
	.quad	0x3fe3b691212513b6              # double 0.61603600000000003
	.quad	0x3fea8614163779ea              # double 0.82886700000000002
	.quad	0x3fedf3343fa2ad3f              # double 0.93593800000000005
	.quad	0x3fe906961c36976c              # double 0.78205400000000002
	.quad	0x3fe616d8f4f93bc1              # double 0.69028900000000004
	.quad	0x3fe7099e0e73604a              # double 0.71992400000000001
	.quad	0x3fdbf01322f27350              # double 0.43652800000000003
	.quad	0x3fc6d8904f6dfc5d              # double 0.178484
	.quad	0x3fd1a1d323fee2ca              # double 0.27550200000000002
	.quad	0x3fe5354e2b063e08              # double 0.66275700000000004
	.quad	0x3fed679cc74b838c              # double 0.91889799999999999
	.quad	0x3fee2f4491298890              # double 0.94327000000000005
	.quad	0x3fd0d6238da3c212              # double 0.26307000000000003
	.quad	0x3fde18b0d0edc3bd              # double 0.47025699999999998
	.quad	0x3fea7d1351159c49              # double 0.82776799999999995
	.quad	0x3fec92d77318fc50              # double 0.89292499999999997
	.quad	0x3fe7e21d96e9bbf1              # double 0.74635200000000002
	.quad	0x3fed4bbc2b94d940              # double 0.91549499999999994
	.quad	0x3feaee2c98e53eb4              # double 0.84157400000000004
	.quad	0x3fe3548a9bcfd4bf              # double 0.60407
	.quad	0x3fd9228134480629              # double 0.392731
	.quad	0x3fda20578e5c4eb5              # double 0.40822399999999998
	.quad	0x3fbbf6f4be835dee              # double 0.109237
	.quad	0x3fde24febd09e12a              # double 0.47100799999999998
	.quad	0x3fd4fabda0dfdef8              # double 0.32780399999999998
	.quad	0x3febab884406c00e              # double 0.86468900000000004
	.quad	0x3fe88dc768dfbd6a              # double 0.76730699999999996
	.quad	0x3fd6ebc408d8ec96              # double 0.35814000000000001
	.quad	0x3fe4d18d25edd053              # double 0.65058000000000005
	.quad	0x3fc2513b5bf6a0dc              # double 0.14310400000000001
	.quad	0x3fe860956c0d6f54              # double 0.76178999999999996
	.quad	0x3fd0359791819d24              # double 0.25327100000000002
	.quad	0x3fbddc50ce4ead0c              # double 0.116643
	.quad	0x3fc258ab92c06184              # double 0.14333099999999999
	.quad	0x3fdfc8472c0e7bc4              # double 0.49659900000000001
	.quad	0x3fd1d7e45803cd14              # double 0.27880199999999999
	.quad	0x3fd62e72da122fad              # double 0.34658499999999998
	.quad	0x3fc425d074213a0c              # double 0.15740399999999999
	.quad	0x3fd5b39e279dd3bb              # double 0.339088
	.quad	0x3fe06b0318b9346a              # double 0.51306300000000005
	.quad	0x3fcc4febd09e12a5              # double 0.221189
	.quad	0x3fe06fda836eb4ea              # double 0.51365400000000005
	.quad	0x3fe6512a94ff0026              # double 0.69740800000000003
	.quad	0x3fed67a0f9096bba              # double 0.91890000000000005
	.quad	0x3fdc4dec1c1d6cf8              # double 0.44225599999999998
	.quad	0x3fe8ac96cc5fbf83              # double 0.77106799999999998
	.quad	0x3fce48c7192ea52f              # double 0.236596
	.quad	0x3fd93be6601bc98a              # double 0.39428099999999999
	.quad	0x3fd42834d26fa3fd              # double 0.31495400000000001
	.quad	0x3feac79b34a44c7b              # double 0.836866
	.quad	0x3fe552e2fbe33acd              # double 0.66636799999999996
	.quad	0x3fed7dcdf6987831              # double 0.92160699999999995
	.quad	0x3fee9a0f0a5efe93              # double 0.95630599999999999
	.quad	0x3fda17d6b65a9a80              # double 0.40770499999999998
	.quad	0x3fc51359791819d2              # double 0.16465299999999999
	.quad	0x3fc4061847f56217              # double 0.15643599999999999
	.quad	0x3fcc94898f605ab4              # double 0.22328300000000001
	.quad	0x3fdb7e8ccdd93c47              # double 0.42959900000000001
	.quad	0x3fa56e8af81626b3              # double 0.041859
	.quad	0x3fe4a411c2a02321              # double 0.64502800000000005
	.quad	0x3fe134d056c508b3              # double 0.53769699999999998
	.quad	0x3fe6220ddc619546              # double 0.69165699999999997
	.quad	0x3fe50e23af31b153              # double 0.65797600000000001
	.quad	0x3fe1aa51e321a2e8              # double 0.552041
	.quad	0x3fe6be24febd09e1              # double 0.71071099999999998
	.quad	0x3fe53e2f7b17ce53              # double 0.66384100000000001
	.quad	0x3fe90f42fe82517e              # double 0.78311299999999995
	.quad	0x3fe4e15ca6ca03c5              # double 0.65251000000000003
	.quad	0x3fd9ca686e7e62dc              # double 0.40297899999999998
	.quad	0x3f803afb7e90ff97              # double 0.0079249999999999997
	.quad	0x3fdf41aef6f8f041              # double 0.48838399999999998
	.quad	0x3fd6272862f5989e              # double 0.34614
	.quad	0x3fd523854046412d              # double 0.330293
	.quad	0x3fb71a1986b9c305              # double 0.090242000000000003
	.quad	0x3fe0a92817763e4b              # double 0.52064900000000003
	.quad	0x3feede69ad42c3ca              # double 0.96465000000000001
	.quad	0x3fd9e6256366d7a5              # double 0.40467199999999998
	.quad	0x3fefb005814940bc              # double 0.99023700000000003
	.quad	0x3fd3e4a7b4e54f7b              # double 0.31083100000000002
	.quad	0x3fe08622c4502689              # double 0.516374
	.quad	0x3fca0956c0d6f545              # double 0.20341000000000001
	.quad	0x3fd18198f1d3ed52              # double 0.27353499999999997
	.quad	0x3fe10fa7a85015c2              # double 0.533161
	.quad	0x3fd37bfe7e1fc090              # double 0.30444300000000002
	.quad	0x3fe4cba51a005c46              # double 0.64985899999999996
	.quad	0x3fc629d8409e55c1              # double 0.173152
	.quad	0x3f9e1b089a027525              # double 0.029399999999999999
	.quad	0x3fc4046c764adff8              # double 0.156385
	.quad	0x3fb0eebf65dbfceb              # double 0.066142999999999993
	.quad	0x3feffc4199fe4367              # double 0.99954299999999995
	.quad	0x3fe22f48c2e770bd              # double 0.568272
	.quad	0x3fef1ab8e8ea39c5              # double 0.97201199999999998
	.quad	0x3fb61be2b4959e62              # double 0.086362999999999995
	.quad	0x3fc025d8d79d0a67              # double 0.12615499999999999
	.quad	0x3fc0e7ff583a53b9              # double 0.13208
	.quad	0x3fc3c86cebbba55d              # double 0.154554
	.quad	0x3fef3efae7924af1              # double 0.97643800000000002
	.quad	0x3fd5fcb4f1e4b44a              # double 0.34354899999999999
	.quad	0x3feca20ddc619546              # double 0.89478199999999997
	.quad	0x3fcc2a66dbd72bcb              # double 0.22004399999999999
	.quad	0x3fb5d052934acaff              # double 0.085209999999999994
	.quad	0x3fef03925bb7b6bb              # double 0.96918599999999999
	.quad	0x3fe215b573eab368              # double 0.56515000000000004
	.quad	0x3fed3c169c23b795              # double 0.91358499999999998
	.quad	0x3fd40789613d31ba              # double 0.31296000000000002
	.quad	0x3febad01c0ca600b              # double 0.864869
	.quad	0x3fedb34e7685985b              # double 0.92813800000000002
	.quad	0x3fd3ae9ab29e4d5e              # double 0.30753200000000003
	.quad	0x3fdbd9945b6c3761              # double 0.43515500000000001
	.quad	0x3fc6de00d1b71759              # double 0.17865
	.quad	0x3fd82b7fe08aefb3              # double 0.37765500000000002
	.quad	0x3faaa38b8ae31d71              # double 0.052028999999999999
	.quad	0x3fcc3947496aad1d              # double 0.220498
	.quad	0x3feafa919695d91b              # double 0.84308700000000003
	.quad	0x3fd98ede54b48d3b              # double 0.39934500000000001
	.quad	0x3feffb0f6ad70e6f              # double 0.99939699999999997
	.quad	0x3fed1ea57214f052              # double 0.90999099999999999
	.quad	0x3fed3e39f77292c5              # double 0.91384600000000005
	.quad	0x3feaffac1d29dc72              # double 0.84370999999999996
	.quad	0x3fe5897e996312f5              # double 0.67303400000000002
	.quad	0x3fbbe90ff9724745              # double 0.109025
	.quad	0x3fe4e41b328b6d87              # double 0.65284500000000001
	.quad	0x3fe239e279dd3bb0              # double 0.56956600000000002
	.quad	0x3fd62ec28b2a6b0e              # double 0.34660400000000002
	.quad	0x3fdd5197a24894c4              # double 0.45810499999999998
	.quad	0x3fe41ba5e353f7cf              # double 0.62837500000000002
	.quad	0x3fb7ea704bc27632              # double 0.093421000000000004
	.quad	0x3fc3bdbe3c105187              # double 0.154228
	.quad	0x3fe8eee957470eb2              # double 0.77916399999999997
	.quad	0x3fd2057d1782d384              # double 0.28158499999999997
	.quad	0x3fedf1bac2df0d41              # double 0.93575799999999998
	.quad	0x3fd260c7c0f45176              # double 0.287157
	.quad	0x3fe4807fed20296b              # double 0.64068599999999998
	.quad	0x3fcd8fde2ef4e011              # double 0.23095299999999999
	.quad	0x3faeb4c7f3493858              # double 0.059972999999999999
	.quad	0x3fbccd20afa2f05a              # double 0.11250499999999999
	.quad	0x3fd8bcc6c54bcf0b              # double 0.38652199999999998
	.quad	0x3fed146a1a500d5f              # double 0.90874200000000005
	.quad	0x3fd303b81b64e054              # double 0.29710199999999998
	.quad	0x3fdc2478854cdb7b              # double 0.43972600000000001
	.quad	0x3fc323d4f15e7c8d              # double 0.149531
	.quad	0x3fbcf0e90bc7b45f              # double 0.113051
	.quad	0x3fe32a044ae85b9f              # double 0.59887900000000005
	.quad	0x3fef462e4d1a6506              # double 0.97731699999999999
	.quad	0x3fe4b4528283d35f              # double 0.64701200000000003
	.quad	0x3fe49ac14c660a20              # double 0.64389099999999999
	.quad	0x3fe0da250f840182              # double 0.52662900000000001
	.quad	0x3fd6b23571d1d474              # double 0.35462700000000003
	.quad	0x3fdbfc3b4f616723              # double 0.43726999999999999
	.quad	0x3fed540895d0b73d              # double 0.91650799999999999
	.quad	0x3fdbff972474538f              # double 0.437475
	.quad	0x3fd296bb98c7e282              # double 0.29044999999999999
	.quad	0x3fba83d35eb7457c              # double 0.103574
	.quad	0x3fd440d90e23af32              # double 0.31645800000000002
	.quad	0x3fc3d9988d2a1f8e              # double 0.15507799999999999
	.quad	0x3fd512e40852b4d9              # double 0.32927800000000002
	.quad	0x3fcd85a4f00ef135              # double 0.23064100000000001
	.quad	0x3fd5c9b413986339              # double 0.34043600000000002
	.quad	0x3f92189bd8383ada              # double 0.017672
	.quad	0x3fee4a3400b88ca4              # double 0.94655800000000001
	.quad	0x3fe7347a5b0ff10f              # double 0.72515600000000002
	.quad	0x3fed21f6cacd184c              # double 0.91039599999999998
	.quad	0x3fe8e8101f31f46f              # double 0.77832800000000002
	.quad	0x3fd3ab4fa48301a8              # double 0.30733100000000002
	.quad	0x3fd71a60d4562e0a              # double 0.360985
	.quad	0x3fde79a2834d26fa              # double 0.47617399999999999
	.quad	0x3fe993b3a68b19a4              # double 0.79927999999999999
	.quad	0x3feb0409e55c0fcb              # double 0.84424299999999997
	.quad	0x3fea6d30f062d40b              # double 0.82582900000000004
	.quad	0x3fedcf52b90a7829              # double 0.931558
	.quad	0x3fc7e6d58c8eef1c              # double 0.18673200000000001
	.quad	0x3fe141700cd85597              # double 0.539238
	.quad	0x3fe953bd1676640a              # double 0.79147199999999995
	.quad	0x3fde04295a6c5d20              # double 0.46900399999999998
	.quad	0x3fecddd4c76d117b              # double 0.90207899999999996
	.quad	0x3fe3df00abf76a2f              # double 0.62097199999999997
	.quad	0x3fe8397bb7308356              # double 0.75701700000000005
	.quad	0x3fddc0d6f544bb1b              # double 0.464895
	.quad	0x3fe3b2aae297396d              # double 0.61556
	.quad	0x3fea5c26dce39b45              # double 0.82374899999999995
	.quad	0x3fe0902363b25700              # double 0.51759500000000003
	.quad	0x3fe1780fdc1615ec              # double 0.545906
	.quad	0x3fc8420f6f08cc57              # double 0.18951599999999999
	.quad	0x3fe67d7a13c254a4              # double 0.70281700000000003
	.quad	0x3fba5881a1554fbe              # double 0.102913
	.quad	0x3fe052bb23571d1d              # double 0.51009899999999997
	.quad	0x3fca66d373affb05              # double 0.206263
	.quad	0x3fc40d23d4f15e7d              # double 0.15665100000000001
	.quad	0x3f79934efcbd5561              # double 0.0062440000000000004
	.quad	0x3feee8661ae70c13              # double 0.96586899999999997
	.quad	0x3fe86d43d03968d7              # double 0.76333799999999996
	.quad	0x3fdf057d1782d384              # double 0.48470999999999997
	.quad	0x3fe31d7ba6698bb5              # double 0.59734900000000002
	.quad	0x3fdf636f3b213e3e              # double 0.49044399999999999
	.quad	0x3fe70c2a454de7ea              # double 0.72023499999999996
	.quad	0x3fe161932d6ece14              # double 0.543161
	.quad	0x3fe0088d6d3b6cbe              # double 0.50104400000000004
	.quad	0x3fe2e6516db0dd83              # double 0.590615
	.quad	0x3fde294dd72367e4              # double 0.471271
	.quad	0x3fe1b317efe0ce0c              # double 0.55311200000000005
	.quad	0x3fb7c81908e581cf              # double 0.092896999999999993
	.quad	0x3fdee61cffeb074a              # double 0.48279499999999997
	.quad	0x3fe9fd5454152b0a              # double 0.81217399999999995
	.quad	0x3fd8cf41f212d773              # double 0.38764999999999999
	.quad	0x3fe774f722e1ac58              # double 0.73302800000000001
	.quad	0x3fd9e99a62ed3522              # double 0.40488299999999999
	.quad	0x3fe2629d8409e55c              # double 0.57453799999999999
	.quad	0x3fbd3836a832b991              # double 0.114139
	.quad	0x3fd6f91e646f1562              # double 0.35895500000000002
	.quad	0x3fe5c983d790752e              # double 0.68084900000000004
	.quad	0x3fe1c5974e65bea1              # double 0.55537000000000003
	.quad	0x3fd6c3f3e0370cdd              # double 0.35571000000000003
	.quad	0x3fc776ee73e681aa              # double 0.18331700000000001
	.quad	0x3fcc67b5f1bef49d              # double 0.221915
	.quad	0x3fc49363f572de44              # double 0.160748
	.quad	0x3fe644d87724fa8b              # double 0.69590399999999997
	.quad	0x3fd7db5d894812be              # double 0.37276399999999998
	.quad	0x3fe98daa0cae642c              # double 0.798543
	.quad	0x3f84c22ee41919ac              # double 0.010135999999999999
	.quad	0x3feec96030c23fab              # double 0.96208199999999999
	.quad	0x3fd687f455a7d242              # double 0.35204800000000003
	.quad	0x3fe69fe43675ddd3              # double 0.70701800000000004
	.quad	0x3fcd90c0ad03d9a9              # double 0.23097999999999999
	.quad	0x3fda7b890d5a5b96              # double 0.41378999999999999
	.quad	0x3fd21355475a31a5              # double 0.28243000000000001
	.quad	0x3fd0593e5fb71fbc              # double 0.25544699999999998
	.quad	0x3fd2209246bf0132              # double 0.28323799999999999
	.quad	0x3fd495e9e1b089a0              # double 0.32164999999999999
	.quad	0x3fe1df5f0b28522f              # double 0.55851700000000004
	.quad	0x3fd5a94bbe4473cd              # double 0.33845799999999998
	.quad	0x3fd22917507e9d95              # double 0.28375800000000001
	.quad	0x3fe191ba3ca7503c              # double 0.54903900000000005
	.quad	0x3fd3675ddd2ae8e2              # double 0.30318400000000001
	.quad	0x3fee74e0114d2f5e              # double 0.95176700000000003
	.quad	0x3fa70ed3d859c8c9              # double 0.045034999999999999
	.quad	0x3fdc122b7baecd08              # double 0.43860900000000003
	.quad	0x3fe616b97fe8ee6c              # double 0.69027400000000005
	.quad	0x3fd15fbb517a4617              # double 0.27146799999999999
	.quad	0x3fb1394317acc4f0              # double 0.067280000000000006
	.quad	0x3fcfb0ee49f51698              # double 0.247587
	.quad	0x3fe88984e3ffef39              # double 0.766787
	.quad	0x3fd4c17a89331a09              # double 0.32430900000000001
	.quad	0x3facebfec13b9f12              # double 0.056487999999999997
	.quad	0x3feb3b384fd2a62b              # double 0.85097900000000004
	.quad	0x3fe6f87485e3da30              # double 0.71782900000000005
	.quad	0x3fd65e4a38327675              # double 0.34950500000000001
	.quad	0x3fe3502eec7c957d              # double 0.60353800000000002
	.quad	0x3fca3b03e20ccff2              # double 0.204926
	.quad	0x3fa739f340d4dc66              # double 0.045364000000000002
	.quad	0x3fe017c3d68405b4              # double 0.50290100000000004
	.quad	0x3f98f6cefed63455              # double 0.024379000000000001
	.quad	0x3fe433aeee957471              # double 0.63130900000000001
	.quad	0x3feab4784230fcf8              # double 0.83452999999999999
	.quad	0x3fb229307af20ea6              # double 0.070941000000000004
	.quad	0x3fedf080303c07ee              # double 0.935608
	.quad	0x3fde44f1a1986b9c              # double 0.47295799999999999
	.quad	0x3fe7be6a337a80d0              # double 0.74199400000000004
	.quad	0x3fe1ef566490a351              # double 0.56046600000000002
	.quad	0x3fd291e646f15619              # double 0.290155
	.quad	0x3fd4377e1b8ed1bf              # double 0.31588699999999997
	.quad	0x3fec1b6f5caf2d80              # double 0.87834900000000005
	.quad	0x3fed23443d46b26c              # double 0.910555
	.quad	0x3fe41344806290ef              # double 0.62735200000000002
	.quad	0x3fc39652bd3c3611              # double 0.15302499999999999
	.quad	0x3fbb7e0ac7da1ec5              # double 0.107392
	.quad	0x3fec00841ede1199              # double 0.87506300000000004
	.quad	0x3fc17c80841ede12              # double 0.13661200000000001
	.quad	0x3fc9677f6b1a2a4e              # double 0.19847100000000001
	.quad	0x3fa646ae3a3a8e71              # double 0.043507999999999998
	.quad	0x3fe0cc319c5a3e3a              # double 0.524926
	.quad	0x3fbea337a80cf9e4              # double 0.11967800000000001
	.quad	0x3fc32e0e30446b6a              # double 0.149843
	.quad	0x3fb8dbf0563ed0f6              # double 0.097105999999999997
	.quad	0x3fd95158b827fa1a              # double 0.39559
	.quad	0x3fd2398a65492ff5              # double 0.28476200000000002
	.quad	0x3fb34bb5e0f7fcfc              # double 0.075373999999999997
	.quad	0x3fe9926634117f84              # double 0.79912099999999997
	.quad	0x3fb4fadf2ecf2064              # double 0.081952999999999998
	.quad	0x3fba0aa64c2f837b              # double 0.101725
	.quad	0x3fcd8548a9bcfd4c              # double 0.23063
	.quad	0x3fb08d5c74751ce3              # double 0.064657000000000006
	.quad	0x3fe5e236c15d2d02              # double 0.68386400000000003
	.quad	0x3fdf109d0635a427              # double 0.48538900000000001
	.quad	0x3fc1b280f12c27a6              # double 0.13825999999999999
	.quad	0x3fe97b80a9de8b3b              # double 0.79632599999999998
	.quad	0x3fe23c2b94d94079              # double 0.56984500000000005
	.quad	0x3fd6f5be5d9e40c8              # double 0.35874899999999998
	.quad	0x3fe97ba8826aa8eb              # double 0.79634499999999997
	.quad	0x3feb8fa15db3397e              # double 0.86128300000000002
	.quad	0x3fd44067cf1c3266              # double 0.31643100000000002
	.quad	0x3fc879d4d834091c              # double 0.191218
	.quad	0x3fe801eabbcb1cc9              # double 0.75023399999999996
	.quad	0x3fec37f7be121ee6              # double 0.88183199999999995
	.quad	0x3fbd5b899392189c              # double 0.114678
	.quad	0x3fed62584f4c6e6e              # double 0.91825500000000004
	.quad	0x3fe0806f262888b5              # double 0.51567799999999997
	.quad	0x3fecba27ae9ab29e              # double 0.89772399999999997
	.quad	0x3fdf60bb2bba98ee              # double 0.49027900000000002
	.quad	0x3fc8f98fa376922e              # double 0.19511600000000001
	.quad	0x3fef87e5a78f25a2              # double 0.98533899999999996
	.quad	0x3f9dd1a21ea35936              # double 0.02912
	.quad	0x3fbd1b4fe79ee02a              # double 0.11369799999999999
	.quad	0x3fe984ee7c49fd7a              # double 0.79747699999999999
	.quad	0x3fd5807357e670e3              # double 0.33596500000000001
	.quad	0x3fe21f644955b467              # double 0.56633199999999995
	.quad	0x3fdc20d130df9bdc              # double 0.43950299999999998
	.quad	0x3fe18df58c08b75f              # double 0.54857900000000004
	.quad	0x3fbc3126e978d4fe              # double 0.110125
	.quad	0x3f9981beb18116ec              # double 0.024909000000000001
	.quad	0x3fefd2bf5515054b              # double 0.99447600000000002
	.quad	0x3fdb78140dd3fe19              # double 0.42920399999999997
	.quad	0x3fec851c9f72f76e              # double 0.89124899999999996
	.quad	0x3fe7c5a8155d5f57              # double 0.74287800000000004
	.quad	0x3fed067f0aa21a72              # double 0.90704300000000004
	.quad	0x3fe13e10060780fe              # double 0.53882600000000003
	.quad	0x3fc103f2d3c792d1              # double 0.132933
	.quad	0x3fd9ed634549b62c              # double 0.40511399999999997
	.quad	0x3fe0ecb10342aa9f              # double 0.52889299999999995
	.quad	0x3fcd25e56cd6c2f0              # double 0.227719
	.quad	0x3feeb0ced4e4c943              # double 0.95908300000000001
	.quad	0x3fee8c8472c0e7bc              # double 0.95465299999999997
	.quad	0x3fd5c3d25247cb71              # double 0.34007700000000002
	.quad	0x3fd05b0ff10ecb75              # double 0.25555800000000001
	.quad	0x3fed4677b395c422              # double 0.914852
	.quad	0x3f99014b599aa609              # double 0.024419
	.quad	0x3fc655970b49e01e              # double 0.174487
	.quad	0x3fed0fb86f47b678              # double 0.908169
	.quad	0x3fe9134acaff6d33              # double 0.783605
	.quad	0x3fb0a6b93ccd0fe9              # double 0.065044000000000005
	.quad	0x3fec3775b8130165              # double 0.88177000000000005
	.quad	0x3fd70470a808c826              # double 0.35964600000000002
	.quad	0x3fd421144cbe1eb4              # double 0.31451899999999999
	.quad	0x3f8cc2938de6ddf0              # double 0.014043
	.quad	0x3fddc70867ad8e43              # double 0.46527299999999999
	.quad	0x3fc26d4801f75105              # double 0.14396
	.quad	0x3fe27d523b3636f4              # double 0.57779800000000003
	.quad	0x3fee60ce0b912dba              # double 0.94931699999999997
	.quad	0x3fc385f8d2e514c2              # double 0.15252599999999999
	.quad	0x3fec88dd1e53a81e              # double 0.89170700000000003
	.quad	0x3fd2b9170d62bf12              # double 0.292547
	.quad	0x3fcfe5e2478854ce              # double 0.24920300000000001
	.quad	0x3fe85bc664d3bf2f              # double 0.76120299999999996
	.quad	0x3fe8c3bf727136a4              # double 0.77389499999999999
	.quad	0x3fa2dd7a99fa11a9              # double 0.036845999999999997
	.quad	0x3fe9987c6327ed85              # double 0.79986400000000002
	.quad	0x3fe800ecfa69be0a              # double 0.75011300000000003
	.quad	0x3fed2072d1aeb3dd              # double 0.91021099999999999
	.quad	0x3fca2396073de1e3              # double 0.204211
	.quad	0x3fd697353b4b2fa9              # double 0.35297899999999999
	.quad	0x3fecd64f97edc7ef              # double 0.90116099999999999
	.quad	0x3fc7c89f40a2877f              # double 0.18581
	.quad	0x3fd3df97aaac1095              # double 0.31052200000000002
	.quad	0x3fe98fc2eba27aea              # double 0.79879900000000004
	.quad	0x3fe6972cd7cf5f4e              # double 0.70595399999999997
	.quad	0x3fd6cb70ac3a860e              # double 0.35616700000000001
	.quad	0x3feb0c996b7670a0              # double 0.84528800000000003
	.quad	0x3fef66b3fe9fadb0              # double 0.98128700000000002
	.quad	0x3fd353fc0096feb5              # double 0.30200100000000002
	.quad	0x3f967b1c0010c6f8              # double 0.021954000000000001
	.quad	0x3fead330941c8217              # double 0.83828000000000003
	.quad	0x3fec72ef0ae53650              # double 0.88902999999999999
	.quad	0x3feb7e974a3400b9              # double 0.85920300000000005
	.quad	0x3f9af2d7f950b956              # double 0.026317
	.quad	0x3fe5c929aa1d755c              # double 0.68080600000000002
	.quad	0x3fe4b59bc33f8551              # double 0.64716899999999999
	.quad	0x3fc6660a2014727e              # double 0.17498900000000001
	.quad	0x3fc7d4c76d117b53              # double 0.18618100000000001
	.quad	0x3fe15bb9cf9a06a7              # double 0.54244700000000001
	.quad	0x3fef4a686e7e62dc              # double 0.97783299999999995
	.quad	0x3fef4ef672b88440              # double 0.97838899999999995
	.quad	0x3fe70b545c78a6db              # double 0.72013300000000002
	.quad	0x3fe518958d9b5e96              # double 0.65925100000000003
	.quad	0x3fdfefe0ce0b912e              # double 0.49901600000000002
	.quad	0x3fe8f2f555821294              # double 0.77965799999999996
	.quad	0x3fc384fd2a62aa19              # double 0.15249599999999999
	.quad	0x3fec06c00da1a933              # double 0.87582400000000005
	.quad	0x3fc32eb5f5f0b285              # double 0.149863
	.quad	0x3fdd04ff43419e30              # double 0.45343
	.quad	0x3fe34fc3f811f4f5              # double 0.603487
	.quad	0x3fddef8487b99d45              # double 0.46774399999999999
	.quad	0x3fe88bf5d78811b2              # double 0.76708500000000002
	.quad	0x3fe0cf5f4e4430b1              # double 0.52531399999999995
	.quad	0x3fe2b10342aa9f7b              # double 0.58410799999999996
	.quad	0x3fe1e514c22ee419              # double 0.55921399999999999
	.quad	0x3feef1886df82b1f              # double 0.96698399999999995
	.quad	0x3fcd2e40852b4d8c              # double 0.22797400000000001
	.quad	0x3fbc1c714fce746d              # double 0.109809
	.quad	0x3fe2c779a6b50b0f              # double 0.58684999999999998
	.quad	0x3fe4c37e6f71a7e3              # double 0.648864
	.quad	0x3fe1e1719f7f8ca8              # double 0.55876999999999999
	.quad	0x3fda1e215336deb9              # double 0.40808899999999998
	.quad	0x3fe5892684cf073a              # double 0.67299200000000003
	.quad	0x3fe848cf7caa758a              # double 0.75888800000000001
	.quad	0x3fc5aa0cae642bfa              # double 0.16925200000000001
	.quad	0x3fc72f33ca31e7da              # double 0.18112800000000001
	.quad	0x3fd084406c00da1b              # double 0.25807200000000002
	.quad	0x3fed571b0468448d              # double 0.916883
	.quad	0x3fe183361565c2d2              # double 0.54726699999999995
	.quad	0x3fe7ffef39085f4a              # double 0.74999199999999999
	.quad	0x3fb5f255f3519bd4              # double 0.085729
	.quad	0x3fd7789613d31b9b              # double 0.36673499999999998
	.quad	0x3fe9b8b04ab606b8              # double 0.80379500000000004
	.quad	0x3fbe1ea35935fc3b              # double 0.117655
	.quad	0x3fdb01eabbcb1cc9              # double 0.42199199999999998
	.quad	0x3fe7500d5e8d5411              # double 0.728522
	.quad	0x3fed66772d5e071c              # double 0.91875799999999996
	.quad	0x3fbc69e7fb267c6c              # double 0.11099100000000001
	.quad	0x3fbe85caafbc1ace              # double 0.119229
	.quad	0x3fd81be6e6538690              # double 0.37670300000000001
	.quad	0x3feeb5c182ecaeea              # double 0.95968699999999996
	.quad	0x3fd164c729f59cd0              # double 0.27177600000000002
	.quad	0x3fd1e019b0ab2e17              # double 0.27930300000000002
	.quad	0x3fe83c05d52c16df              # double 0.75732699999999997
	.quad	0x3fb1423d9231c64c              # double 0.067417000000000005
	.quad	0x3fc8231832fcac8e              # double 0.18857099999999999
	.quad	0x3fd5fb3743632c1f              # double 0.34345799999999999
	.quad	0x3fd675536933a040              # double 0.35091099999999997
	.quad	0x3feee7be553ac4f8              # double 0.965789
	.quad	0x3fe7b31c219eb639              # double 0.74061399999999999
	.quad	0x3fd15e17e34b9453              # double 0.271368
	.quad	0x3fbb00ef1348b220              # double 0.10548299999999999
	.quad	0x3fb9495182a9930c              # double 0.098775000000000001
	.quad	0x3fc049b1fab96f22              # double 0.127249
	.quad	0x3fe9800eae18ac9f              # double 0.79688199999999998
	.quad	0x3fdc73c925785f8d              # double 0.44456699999999999
	.quad	0x3fe77a02fb5d0310              # double 0.73364399999999996
	.quad	0x3fee5017dae81883              # double 0.94727700000000004
	.quad	0x3fed0bc59b8023a7              # double 0.90768700000000002
	.quad	0x3fc7e004b7f5a533              # double 0.186524
	.quad	0x3fea06e5cd4ed2cc              # double 0.813342
	.quad	0x3fd59bbf0dc768e0              # double 0.33763100000000001
	.quad	0x3fe32bd1aa821f2a              # double 0.59909900000000005
	.quad	0x3feedc9e6687f456              # double 0.96443100000000004
	.quad	0x3fe5bb645a1cac08              # double 0.67912499999999998
	.quad	0x3fc5a57eaa2a0a96              # double 0.16911300000000001
	.quad	0x3f694185058dde7a              # double 0.0030829999999999998
	.quad	0x3feca02fb5d03105              # double 0.89455399999999996
	.quad	0x3fb8fbb9496249a1              # double 0.097590999999999997
	.quad	0x3fcca4c1ebc83a97              # double 0.223778
	.quad	0x3fbf6d7625204af9              # double 0.122764
	.quad	0x3fd6c5bd0e12e83a              # double 0.355819
	.quad	0x3fdd2e4d1a650614              # double 0.455951
	.quad	0x3fd7d2999567dbb1              # double 0.37222899999999998
	.quad	0x3fea19c17225b74a              # double 0.81564400000000004
	.quad	0x3fbb4a1272c94b38              # double 0.106599
	.quad	0x3fdf67dfe32a0664              # double 0.49071500000000001
	.quad	0x3fefd5c52e72da12              # double 0.99484499999999998
	.quad	0x3fdf08398a654930              # double 0.484877
	.quad	0x3fe9f2d1aeb3dd12              # double 0.81089100000000003
	.quad	0x3fb150225742dcf4              # double 0.067628999999999995
	.quad	0x3fee53e0bd44998d              # double 0.947739
	.quad	0x3fe2e4a7b4e54f7b              # double 0.59041200000000005
	.quad	0x3fb0f2495e17e34c              # double 0.066197000000000006
	.quad	0x3fe0d4fbdad7518b              # double 0.52599899999999999
	.quad	0x3fd104ff43419e30              # double 0.26593
	.quad	0x3fdee36d22424a27              # double 0.48263099999999998
	.quad	0x3fef3fe3b03e20cd              # double 0.976549
	.quad	0x3fed6a9e6eeb7026              # double 0.919265
	.quad	0x3fe0fbf401c4fc1e              # double 0.53075600000000001
	.quad	0x3fd7f6b5d462c344              # double 0.37443300000000002
	.quad	0x3fe61f8e3ac0c62e              # double 0.69135199999999997
	.quad	0x3fecba9f383f0baf              # double 0.89778100000000005
	.quad	0x3fdea4e379b77c03              # double 0.47881400000000002
	.quad	0x3fd0152f3c2dadb8              # double 0.25129299999999999
	.quad	0x3fdc90364388ebcc              # double 0.44630199999999998
	.quad	0x3fe4648626f60e0f              # double 0.63727100000000003
	.quad	0x3fe72871a3b14a90              # double 0.72368699999999997
	.quad	0x3fe2f86e3b46fdeb              # double 0.59282599999999996
	.quad	0x3fda61cffeb074a7              # double 0.41221999999999998
	.quad	0x3fa2291fb3fa6df0              # double 0.035470000000000002
	.quad	0x3fec64c51116a8b9              # double 0.88730100000000001
	.quad	0x3feb19ef954eb13e              # double 0.846916
	.quad	0x3fee26b50b0f27bb              # double 0.94222499999999998
	.quad	0x3fea36a832b990b0              # double 0.81917200000000001
	.quad	0x3fd0147ae147ae14              # double 0.25124999999999997
	.quad	0x3fe30b1dd5d3dc8c              # double 0.59510700000000005
	.quad	0x3fe17c8b0079a283              # double 0.54645299999999997
	.quad	0x3fc27e49b1fab96f              # double 0.144479
	.quad	0x3fc16d86ec17ebaf              # double 0.136155
	.quad	0x3fe267c06e19b90f              # double 0.57516500000000004
	.quad	0x3fe8da31a4bdba0a              # double 0.77663499999999996
	.quad	0x3fd774d9c6b0531a              # double 0.36650700000000003
	.quad	0x3fcb4aec8d5c7475              # double 0.213224
	.quad	0x3fea18e53eb399f6              # double 0.81553900000000001
	.quad	0x3fda2120e1f7d73d              # double 0.40827200000000002
	.quad	0x3fee77b7c7820a31              # double 0.95211400000000002
	.quad	0x3fde70e2c12ad81b              # double 0.47564000000000001
	.quad	0x3fe9f0c996b7670a              # double 0.810643
	.quad	0x3fde5c2d2780778a              # double 0.47437600000000002
	.quad	0x3fb0fa26a22b3893              # double 0.066317000000000001
	.quad	0x3fcca2c2374794ea              # double 0.223717
	.quad	0x3fed6c52a411c2a0              # double 0.91947299999999998
	.quad	0x3fe1c15d2d01c0ca              # double 0.55485399999999996
	.quad	0x3fec98aa8650e779              # double 0.89363599999999999
	.quad	0x3feb2cc70867ad8e              # double 0.84921599999999997
	.quad	0x3fe4d48cb4aec8d6              # double 0.65094600000000002
	.quad	0x3fd03476295208e1              # double 0.25320199999999998
	.quad	0x3f90d73860999dcb              # double 0.016445999999999999
	.quad	0x3fe55e7210be9425              # double 0.66777900000000001
	.quad	0x3fb38854cdb7ae58              # double 0.076299000000000006
	.quad	0x3fe41212513b5bf7              # double 0.62720600000000004
	.quad	0x3feacde7ea5f84cb              # double 0.83763500000000002
	.quad	0x3fd3112fd32c625f              # double 0.29792400000000002
	.quad	0x3fe8d7c914b167ec              # double 0.77634099999999994
	.quad	0x3fd53a1d323fee2d              # double 0.33167200000000002
	.quad	0x3f956861e92923e6              # double 0.020906000000000001
	.quad	0x3fe9ba98eda22f6a              # double 0.80402799999999996
	.quad	0x3fee296b3354c122              # double 0.94255599999999995
	.quad	0x3fed1e0828c36da8              # double 0.90991599999999995
	.quad	0x3fec502eec7c957d              # double 0.88478800000000002
	.quad	0x3fe98a7a41e57d9e              # double 0.79815400000000003
	.quad	0x3fd1cdc443914f48              # double 0.27818399999999999
	.quad	0x3fee0a116659d12d              # double 0.93872900000000004
	.quad	0x3feaca6ca03c4b0a              # double 0.83721000000000001
	.quad	0x3fd473d9ec700043              # double 0.31957099999999999
	.quad	0x3fe59af1886df82b              # double 0.67516399999999999
	.quad	0x3fdd9e6687f455a8              # double 0.46279300000000001
	.quad	0x3fd0fc86cebbba56              # double 0.26541300000000001
	.quad	0x3fefaf9ca5bd944b              # double 0.99018700000000003
	.quad	0x3f8d41fa76534374              # double 0.014286
	.quad	0x3fe371172ef0ae53              # double 0.60755499999999996
	.quad	0x3fe8a3486f049a99              # double 0.76993199999999995
	.quad	0x3fa68405b39e279e              # double 0.043976000000000001
	.quad	0x3fd93b85e80bed74              # double 0.394258
	.quad	0x3fb8507a6bd6e8b0              # double 0.094978000000000006
	.quad	0x3fd8939a7c17a893              # double 0.38400899999999999
	.quad	0x3f743393ab430f49              # double 0.0049319999999999998
	.quad	0x3fe8ec3fc43b2dd3              # double 0.77883899999999995
	.quad	0x3feb3b7f9d6f1130              # double 0.85101300000000002
	.quad	0x3fd5a5f41aef6f8f              # double 0.338254
	.quad	0x3fe72643cc07aaef              # double 0.72342099999999998
	.quad	0x3fa352c9d16fc9bc              # double 0.037740999999999997
	.quad	0x3fda4eebf65dbfcf              # double 0.41106700000000002
	.quad	0x3fef7b5f1bef49cf              # double 0.98380999999999996
	.quad	0x3fbb96f21f6cacd2              # double 0.10777200000000001
	.quad	0x3fdcf8d716d2aa5c              # double 0.45268799999999998
	.quad	0x3fe3499ae924f228              # double 0.60273500000000002
	.quad	0x3fe7529dc725c3df              # double 0.72883500000000001
	.quad	0x3fd5ee807bbb6241              # double 0.34268199999999999
	.quad	0x3fa0509bf9c62a1b              # double 0.031864999999999997
	.quad	0x3fe18b47c73eee52              # double 0.54825199999999996
	.quad	0x3febc70c996b7671              # double 0.86804800000000004
	.quad	0x3fe6bfc0096feb4a              # double 0.71090699999999996
	.quad	0x3fdb440f23897204              # double 0.42602899999999999
	.quad	0x3fd83764f11b60af              # double 0.37838100000000002
	.quad	0x3fa926a65cf67b1c              # double 0.049123
	.quad	0x3fd37625204af923              # double 0.30408600000000002
	.quad	0x3fdbf91a32b12d34              # double 0.437079
	.quad	0x3feb9b4dcebfec14              # double 0.86270800000000003
	.quad	0x3fef14940bbb1f25              # double 0.97126199999999995
	.quad	0x3fc3476af89c5e70              # double 0.150617
	.quad	0x3fe0c07ee0b0af60              # double 0.52349800000000002
	.quad	0x3fc7b1960fa15db3              # double 0.18510699999999999
	.quad	0x3fe814c660a20147              # double 0.75253599999999998
	.quad	0x3fd4c7bcc2938de7              # double 0.32469100000000001
	.quad	0x3fcdbe5d9e40c847              # double 0.232372
	.quad	0x3fe4de97d06bbdbe              # double 0.65217199999999997
	.quad	0x3fefb076c050bd88              # double 0.99029100000000003
	.quad	0x3fb097d8cf398e97              # double 0.064817
	.quad	0x3fec68c26138fffc              # double 0.88778800000000002
	.quad	0x3fe9f7ccc0379314              # double 0.81149899999999997
	.quad	0x3feaeda4484944ed              # double 0.84150899999999995
	.quad	0x3fcb7446f9b994e2              # double 0.21448600000000001
	.quad	0x3fd66c5d206c8712              # double 0.35036400000000001
	.quad	0x3fcd17939a7c17a9              # double 0.22728200000000001
	.quad	0x3fd821e603d57796              # double 0.37706899999999999
	.quad	0x3fca107314ca9260              # double 0.203627
	.quad	0x3fe3da1cac083127              # double 0.62037500000000001
	.quad	0x3fef6b76709fa54c              # double 0.98186799999999996
	.quad	0x3fed2d6451b93038              # double 0.91179100000000002
	.quad	0x3fcb7518b0d0edc4              # double 0.21451100000000001
	.quad	0x3fe20288051c9f73              # double 0.562809
	.quad	0x3fe675a5332acfb7              # double 0.70186099999999996
	.quad	0x3fde666666666666              # double 0.47499999999999998
	.quad	0x3fee19e0e736049f              # double 0.94065900000000002
	.quad	0x3fe815e7c8d19589              # double 0.75267399999999995
	.quad	0x3fe1b4d6a161e4f7              # double 0.55332499999999996
	.quad	0x3fd8db9c7368ad69              # double 0.38840400000000003
	.quad	0x3f91333b96af038e              # double 0.016796999999999999
	.quad	0x3fe6c3d89ce4a7b5              # double 0.71140700000000001
	.quad	0x3fedddedf1e0828c              # double 0.93334099999999997
	.quad	0x3fd51b10fd7e4580              # double 0.32977699999999999
	.quad	0x3fc39b994e1a3f46              # double 0.15318599999999999
	.quad	0x3fe39ce28ed5f139              # double 0.61290100000000003
	.quad	0x3feb35ac8a372607              # double 0.850302
	.quad	0x3fd9067cf1c3265b              # double 0.39102100000000001
	.quad	0x3fb31876188b1141              # double 0.074592000000000006
	.quad	0x3fa607e5a78f25a2              # double 0.043028999999999998
	.quad	0x3fed03ea704bc276              # double 0.90672799999999998
	.quad	0x3fe7e425aee631f9              # double 0.74660000000000004
	.quad	0x3fd34a05dd8f92b0              # double 0.30139300000000002
	.quad	0x3fdbe27e0ef99807              # double 0.435699
	.quad	0x3fd04c37e6f71a7e              # double 0.25465199999999999
	.quad	0x3fcea32f44912989              # double 0.23935500000000001
	.quad	0x3fe2c0f88333fc87              # double 0.58605600000000002
	.quad	0x3feb1b280f12c27a              # double 0.84706499999999996
	.quad	0x3fd4392e1ef73c0c              # double 0.31598999999999999
	.quad	0x3fe2fde2ef4e0115              # double 0.59349200000000002
	.quad	0x3fdfb7aa25d8d79d              # double 0.495585
	.quad	0x3fec9e16d6dc1a48              # double 0.89429800000000004
	.quad	0x3fc182a12f901084              # double 0.136799
	.quad	0x3fe00d1fa333764f              # double 0.50160199999999999
	.quad	0x3fea620685553ef7              # double 0.82446600000000003
	.quad	0x3fc4e8fb00bcbe62              # double 0.16336000000000001
	.quad	0x3fd437b4a2339c0f              # double 0.31590000000000001
	.quad	0x3fa4243dccea28fe              # double 0.039338999999999999
	.quad	0x3fe9d204af922963              # double 0.80688700000000002
	.quad	0x3fe781669ced0b31              # double 0.73454600000000003
	.quad	0x3fe670dc768dfbd7              # double 0.70127700000000004
	.quad	0x3fece54f7a919696              # double 0.90299200000000002
	.quad	0x3fde746455eaee20              # double 0.475854
	.quad	0x3fd92014727dcbde              # double 0.39258300000000002
	.quad	0x3fc3d55e6bc621b8              # double 0.154949
	.quad	0x3fe68f16f4384ba1              # double 0.70496700000000001
	.quad	0x3fd50ca1cef240fb              # double 0.32889600000000002
	.quad	0x3fe0a52ef911cf35              # double 0.52016399999999996
	.quad	0x3fd8b60285ec3dab              # double 0.38610899999999998
	.quad	0x3feedab191dde376              # double 0.96419600000000005
	.quad	0x3fdfba6266fd651b              # double 0.495751
	.quad	0x3fe51207d4e09785              # double 0.65845100000000001
	.quad	0x3fc812f09d8c6d61              # double 0.188078
	.quad	0x3fc572bcb5fe542e              # double 0.16756399999999999
	.quad	0x3fe18d1526d8b1dd              # double 0.54847199999999996
	.quad	0x3fea9094a2b9d3cc              # double 0.83014900000000002
	.quad	0x3fd8126a65cf67b2              # double 0.37612400000000001
	.quad	0x3fc8fe36d22424a2              # double 0.19525799999999999
	.quad	0x3fd2fbfc6540cc79              # double 0.29663
	.quad	0x3fe98a99b6f5caf3              # double 0.79816900000000002
	.quad	0x3feb3ba775fb2ee0              # double 0.85103200000000001
	.quad	0x3feb4d20afa2f05a              # double 0.85316499999999995
	.quad	0x3fe1aef2c7325919              # double 0.55260600000000004
	.quad	0x3fe7500f776c4828              # double 0.72852300000000003
	.quad	0x3fd81ea35935fc3b              # double 0.37686999999999998
	.quad	0x3fe956c0d6f544bb              # double 0.79183999999999999
	.quad	0x3fdddbc664d3bf2f              # double 0.46653899999999998
	.quad	0x3fec6111276fb092              # double 0.886849
	.quad	0x3fe384944ed6fda8              # double 0.60993399999999998
	.quad	0x3feb1d0c80410300              # double 0.84729600000000005
	.quad	0x3fcdb784662bae04              # double 0.23216300000000001
	.quad	0x3fd2b05b7cfe5860              # double 0.292014
	.quad	0x3fe7fdb4cc250721              # double 0.74972000000000005
	.quad	0x3fce485a0be51090              # double 0.23658299999999999
	.quad	0x3fed56605ee568a5              # double 0.916794
	.quad	0x3fb67381d7dbf488              # double 0.0877
	.quad	0x3fcb152f3c2dadb8              # double 0.21158399999999999
	.quad	0x3f99b17481b21c47              # double 0.025090999999999999
	.quad	0x3fea10f51ac9afe2              # double 0.81457000000000002
	.quad	0x3fe1a174c4cdfaca              # double 0.55095899999999998
	.quad	0x3fd78aa433508f65              # double 0.36783700000000003
	.quad	0x3fe6ff4dbdf8f473              # double 0.718665
	.quad	0x3fc8d887ebf22c02              # double 0.194108
	.quad	0x3fe027daa4fca42b              # double 0.50486500000000001
	.quad	0x3fb4d6a161e4f766              # double 0.0814
	.quad	0x3fe4cd76ab5807ff              # double 0.65008100000000002
	.quad	0x3fcc497fa5d28d00              # double 0.22099299999999999
	.quad	0x3fd21b4784230fd0              # double 0.28291500000000003
	.quad	0x3fd9f965b20b8067              # double 0.40584700000000001
	.quad	0x3fe3bc60029f16b1              # double 0.61674499999999999
	.quad	0x3febb7e6f71a7e31              # double 0.86619900000000005
	.quad	0x3fc227bf61aa3f03              # double 0.14183799999999999
	.quad	0x3feaeeac8605681f              # double 0.84163500000000002
	.quad	0x3feeda1a93293d10              # double 0.96412399999999998
	.quad	0x3fed62456f75d9a1              # double 0.91824600000000001
	.quad	0x3fa28b6d86ec17ec              # double 0.036220000000000002
	.quad	0x3feb573c925785f9              # double 0.85439900000000002
	.quad	0x3fdd7008a697aede              # double 0.45996300000000001
	.quad	0x3fd5e2c98e53eb3a              # double 0.34196700000000002
	.quad	0x3fe48e1f7d73c925              # double 0.64234899999999995
	.quad	0x3fe940a4a05dd8f9              # double 0.78914099999999998
	.quad	0x3febb38d60a63305              # double 0.86566799999999999
	.quad	0x3fcc00431bde82d8              # double 0.21875800000000001
	.quad	0x3fd8553ac4f7ec35              # double 0.38020199999999998
	.quad	0x3fb7c664d3bf2f55              # double 0.092870999999999995
	.quad	0x3fe3c20f6f08cc57              # double 0.61743899999999996
	.quad	0x3fe6a059a73b42cc              # double 0.70707399999999998
	.quad	0x3fd4656eefa1e3eb              # double 0.318691
	.quad	0x3fe6084406c00da2              # double 0.68850900000000004
	.quad	0x3fb12849cb252ce0              # double 0.067020999999999997
	.quad	0x3fd3e878fabda0e0              # double 0.31106400000000001
	.quad	0x3fc5fa658c4bd33d              # double 0.171704
	.quad	0x3fe569dd7ecbb7fa              # double 0.66917300000000002
	.quad	0x3fc3e8ccdd93c46e              # double 0.15554200000000001
	.quad	0x3fe7f666234a87e4              # double 0.74882800000000004
	.quad	0x3fe0d1ed9dfdac69              # double 0.52562600000000004
	.quad	0x3fd10c34c1a8ac5c              # double 0.26637
	.quad	0x3feaf0c996b7670a              # double 0.841893
	.quad	0x3fda0d5a5b9628cc              # double 0.40706500000000001
	.quad	0x3fd0ca85caafbc1b              # double 0.26236100000000001
	.quad	0x3fe6c855da272863              # double 0.711955
	.quad	0x3fc1b4fe79ee02a7              # double 0.13833599999999999
	.quad	0x3fef9b6b2af14552              # double 0.98772199999999999
	.quad	0x3fd23aeab7995ee1              # double 0.28484599999999999
	.quad	0x3fe172cd7cf5f4e4              # double 0.54526399999999997
	.quad	0x3fedc3d46b26bf87              # double 0.93015499999999995
	.quad	0x3fe41932d6ece13f              # double 0.62807599999999997
	.quad	0x3fd90407cc7d1bb5              # double 0.39087100000000002
	.quad	0x3f8d6a593a2df938              # double 0.014363000000000001
	.quad	0x3fe5dfc5cdd50a89              # double 0.68356600000000001
	.quad	0x3fc260999dcb5782              # double 0.14357300000000001
	.quad	0x3faef3d3a1d323ff              # double 0.060454000000000001
	.quad	0x3fb5a921ccd96207              # double 0.084612000000000007
	.quad	0x3fed756eac860568              # double 0.92058499999999999
	.quad	0x3fd3cc144028e4fc              # double 0.30933100000000002
	.quad	0x3fc060aa64c2f838              # double 0.12795000000000001
	.quad	0x3fdc2f166e008e9b              # double 0.44037399999999999
	.quad	0x3fe856d7e889c1b5              # double 0.76060099999999997
	.quad	0x3fd16d330941c821              # double 0.27228999999999998
	.quad	0x3fc3545c78a6dacb              # double 0.15101200000000001
	.quad	0x3fa2098915bdd767              # double 0.035229000000000003
	.quad	0x3fec462c343b70ef              # double 0.88356599999999996
	.quad	0x3fcd42784a9478c8              # double 0.22859099999999999
	.quad	0x3fb0b7c3504c48ae              # double 0.065304000000000001
	.quad	0x3fd5a964e8b7e4de              # double 0.33846399999999999
	.quad	0x3fe72c3eb7cbb3c8              # double 0.72415099999999999
	.quad	0x3fde47a5b0ff10ed              # double 0.47312300000000002
	.quad	0x3fe8f1c53f39d1b3              # double 0.77951300000000001
	.quad	0x3fcaa7b4e54f7a92              # double 0.20824300000000001
	.quad	0x3fe8a4873365881a              # double 0.77008399999999999
	.quad	0x3fc7cb2d905c0336              # double 0.185888
	.quad	0x3fc7fb71fbc5de9c              # double 0.187361
	.quad	0x3fe7d66cf41f212d              # double 0.74492499999999995
	.quad	0x3fe8d95feda66128              # double 0.77653499999999998
	.quad	0x3fd78bda9435ac8a              # double 0.36791099999999999
	.quad	0x3fdf0346dc5d6388              # double 0.48457499999999998
	.quad	0x3febdb1422ccb3a2              # double 0.87049299999999996
	.quad	0x3fef7ed41b75a74c              # double 0.98423199999999999
	.quad	0x3fd9d4280ae10492              # double 0.40357399999999999
	.quad	0x3fed7822bbecaab9              # double 0.92091500000000004
	.quad	0x3fea2db61bb05faf              # double 0.81808000000000003
	.quad	0x3fdfc6540cc78e9f              # double 0.49647999999999998
	.quad	0x3fbe28240b780347              # double 0.1178
	.quad	0x3fe28f6ad70e6f2f              # double 0.58000700000000005
	.quad	0x3fd75d31337eb28e              # double 0.36506300000000003
	.quad	0x3fea0fde2ef4e011              # double 0.81443699999999997
	.quad	0x3fe7737542a23c00              # double 0.73284400000000005
	.quad	0x3fcb988d2a1f8e3b              # double 0.21559300000000001
	.quad	0x3fcd5caf2d7f950c              # double 0.22939100000000001
	.quad	0x3fc5d798d8a979e1              # double 0.17064199999999999
	.quad	0x3fe2c90c4dec1c1d              # double 0.58704199999999995
	.quad	0x3fe97aaac1094a2c              # double 0.79622400000000004
	.quad	0x3fe865a14488c60d              # double 0.76240600000000003
	.quad	0x3faee158750c1b97              # double 0.060312999999999999
	.quad	0x3fda92e62131a8ef              # double 0.41521599999999997
	.quad	0x3fecab6d00b45ae6              # double 0.895926
	.quad	0x3fdcf1737542a23c              # double 0.452237
	.quad	0x3fd9e047d3d4280b              # double 0.40431400000000001
	.quad	0x3fb6a3161a1db878              # double 0.088426000000000005
	.quad	0x3fe4fddebd9018e7              # double 0.65598999999999996
	.quad	0x3fc6f9b994e1a3f4              # double 0.17949599999999999
	.quad	0x3fd0de37585be1a8              # double 0.26356299999999999
	.quad	0x3fedf913e81450f0              # double 0.93665500000000002
	.quad	0x3fc7ce63a5c1c609              # double 0.18598600000000001
	.quad	0x3fec9cfbb949624a              # double 0.89416300000000004
	.quad	0x3fe812fd32c625ea              # double 0.75231800000000004
	.quad	0x3fea19ae924f227d              # double 0.815635
	.quad	0x3feaa67620ee8d11              # double 0.83282
	.quad	0x3fc060bb2bba98ee              # double 0.12795200000000001
	.quad	0x3fd295aaf78feef6              # double 0.290385
	.quad	0x3fd4667b5f1bef4a              # double 0.31875500000000001
	.quad	0x3febe9c0229a5ebb              # double 0.87228399999999995
	.quad	0x3fcc7746887a8d65              # double 0.22239
	.quad	0x3fe3bf4cb1897a68              # double 0.61710200000000004
	.quad	0x3fed6490a350d280              # double 0.91852599999999995
	.quad	0x3fd96177ea1c68ec              # double 0.39657399999999998
	.quad	0x3fe5cae85b9e8c48              # double 0.68101900000000004
	.quad	0x3fc95d91ab8e8ea4              # double 0.19816800000000001
	.quad	0x3f969878316a0557              # double 0.022065999999999999
	.quad	0x3fe6eae18ac9f2fe              # double 0.71617200000000003
	.quad	0x3fcde17e34b94531              # double 0.23344400000000001
	.quad	0x3fe598e53eb399f6              # double 0.67491400000000001
	.quad	0x3fd4433508f648c7              # double 0.31660199999999999
	.quad	0x3fefa2b1704ff434              # double 0.98860999999999998
	.quad	0x3fb6d18d25edd053              # double 0.089135000000000006
	.quad	0x3fe227b4e54f7a92              # double 0.56734700000000005
	.quad	0x3fe4cbad7d7c2ca1              # double 0.64986299999999997
	.quad	0x3fe72261bf37b8d4              # double 0.72294700000000001
	.quad	0x3fb194185058dde8              # double 0.068666000000000005
	.quad	0x3fb5bb05faebc409              # double 0.084885000000000002
	.quad	0x3fea90e8858ff759              # double 0.83018899999999995
	.quad	0x3fe993dfb0d51f82              # double 0.79930100000000004
	.quad	0x3fdcca89fc6da448              # double 0.44986199999999998
	.quad	0x3fcf661f18c9fb61              # double 0.24530399999999999
	.quad	0x3fe2439ffd60e94f              # double 0.57075500000000001
	.quad	0x3fe71e85fd04a2fd              # double 0.72247600000000001
	.quad	0x3fce1ef73c0c1fc9              # double 0.23532
	.quad	0x3fc486ad2dcb1466              # double 0.16036
	.quad	0x3fe0542a23bff8a9              # double 0.51027400000000001
	.quad	0x3fe3972abef06b38              # double 0.61220300000000005
	.quad	0x3fc8e9ccb7d41744              # double 0.194635
	.quad	0x3fb9f77292c49342              # double 0.10143199999999999
	.quad	0x3fe1d601ffb480a6              # double 0.55737400000000004
	.quad	0x3fe9310dbf0563ed              # double 0.78723799999999999
	.quad	0x3fe545e2cdc011d3              # double 0.66478099999999996
	.quad	0x3fc6427c7c5260f6              # double 0.173904
	.quad	0x3fefbb341e14bdfd              # double 0.99160199999999998
	.quad	0x3fe7fab10ba62670              # double 0.74935200000000002
	.quad	0x3fda37110e453d21              # double 0.409611
	.quad	0x3fc557de0d66f0d0              # double 0.166744
	.quad	0x3fddeeaa6d267408              # double 0.467692
	.quad	0x3fc9f7be121ee675              # double 0.202873
	.quad	0x3fef000431bde82d              # double 0.96875199999999994
	.quad	0x3fd950bd87b56b87              # double 0.39555299999999999
	.quad	0x3fe523810e8858ff              # double 0.66058399999999995
	.quad	0x3fef08e581cf7879              # double 0.96983600000000003
	.quad	0x3f9481f53825e13b              # double 0.020027
	.quad	0x3fa61d2178f68be3              # double 0.043191
	.quad	0x3faaf640639d5e4a              # double 0.052659999999999998
	.quad	0x3fd8ade225fa658c              # double 0.38561299999999998
	.quad	0x3fd6f6598e10cf5b              # double 0.35878599999999999
	.quad	0x3fd97a56de33269e              # double 0.398092
	.quad	0x3fe1668a0d349be9              # double 0.543767
	.quad	0x3feb607e5a78f25a              # double 0.85552899999999998
	.quad	0x3fe56238da3c2118              # double 0.66823999999999995
	.quad	0x3fd3f30a4e379b78              # double 0.31170900000000001
	.quad	0x3fd38fa7a85015c2              # double 0.305643
	.quad	0x3fe410d7be9856a3              # double 0.62705599999999995
	.quad	0x3fc377d955714b9d              # double 0.15209500000000001
	.quad	0x3fa26f1dc50ce4eb              # double 0.036004000000000001
	.quad	0x3fea7aa68f4b61fe              # double 0.82747199999999999
	.quad	0x3fdc24febd09e12a              # double 0.43975799999999998
	.quad	0x3fe94007570c5650              # double 0.78906600000000005
	.quad	0x3fa2c2374794ea07              # double 0.036637999999999997
	.quad	0x3fd981b64e054691              # double 0.39854200000000001
	.quad	0x3fe4edd26b723ee2              # double 0.65403100000000003
	.quad	0x3fbf8f68be2f7b18              # double 0.123282
	.quad	0x3fe01578a2a90cd4              # double 0.50262099999999998
	.quad	0x3fe0050bd87b56b8              # double 0.50061599999999995
	.quad	0x3fe908a47ecfe9b8              # double 0.78230500000000003
	.quad	0x3fe5f1d3ed527e52              # double 0.68576999999999999
	.quad	0x3fd13d96638433d7              # double 0.26938400000000001
	.quad	0x3fcf2f5558212945              # double 0.24363199999999999
	.quad	0x3fc92a27f1b69121              # double 0.196599
	.quad	0x3fd9a5accd53048a              # double 0.40073700000000001
	.quad	0x3fe2dc6195464dc2              # double 0.58940199999999998
	.quad	0x3fc6860dcb9a9da6              # double 0.17596600000000001
	.quad	0x3f9559b3d07c84b6              # double 0.02085
	.quad	0x3fdc9fbe76c8b439              # double 0.44724999999999998
	.quad	0x3fdd56bca5375c8e              # double 0.45841900000000002
	.quad	0x3fe9c96249a133c2              # double 0.80583300000000002
	.quad	0x3fe3561b2a27f1b7              # double 0.60426100000000005
	.quad	0x3fc12a411c2a0232              # double 0.134102
	.quad	0x3fd52e557de0d66f              # double 0.330953
	.quad	0x3fe09a73b42cc2d7              # double 0.51885400000000004
	.quad	0x3fe28240b780346e              # double 0.57840000000000003
	.quad	0x3fe820ea5b530ced              # double 0.75401799999999997
	.quad	0x3fa8e29f9ce8d973              # double 0.048604000000000001
	.quad	0x3fda1a21ea359360              # double 0.40784500000000001
	.quad	0x3fed3bf93ff25e57              # double 0.91357100000000002
	.quad	0x3fd62328f9f44d44              # double 0.34589599999999998
	.quad	0x3fe2dfdef8487b9a              # double 0.58982800000000002
	.quad	0x3fd50bc7b45f17be              # double 0.32884400000000003
	.quad	0x3fead434a01abd1b              # double 0.83840400000000004
	.quad	0x3fd629ed3953dea4              # double 0.34630899999999998
	.quad	0x3fe47a0b5ed8d36b              # double 0.63989799999999997
	.quad	0x3fc367caea747d80              # double 0.15160499999999999
	.quad	0x3fef7f10ecb74de0              # double 0.98426100000000005
	.quad	0x3feddffa3b9ae0c1              # double 0.93359099999999995
	.quad	0x3fee4c2b51bd61f6              # double 0.94679800000000003
	.quad	0x3f8d21ff2e48e8a7              # double 0.014225
	.quad	0x3fda9c2c1b10fd7e              # double 0.41578199999999998
	.quad	0x3fd20431bde82d7b              # double 0.28150599999999998
	.quad	0x3fea75b5fa22706d              # double 0.82686899999999997
	.quad	0x3fe473f52fc2656b              # double 0.63915500000000003
	.quad	0x3fed5045fe111277              # double 0.916049
	.quad	0x3fe43b7b6bb12902              # double 0.63226099999999996
	.quad	0x3feaa3c21187e7c0              # double 0.83248999999999995
	.quad	0x3f91f53825e13b19              # double 0.017537000000000001
	.quad	0x3fa6ae3a3a8e7147              # double 0.044297999999999997
	.quad	0x3fbabba98eda22f7              # double 0.104426
	.quad	0x3fa07182235b4edb              # double 0.032115999999999999
	.quad	0x3fdc81a1554fbdad              # double 0.44541199999999997
	.quad	0x3fcc69728a611772              # double 0.221968
	.quad	0x3fc3756c93a71151              # double 0.15202099999999999
	.quad	0x3fc887229e90795f              # double 0.19162399999999999
	.quad	0x3fefe7a743a647fe              # double 0.99702800000000003
	.quad	0x3fe0ebf444e0daa1              # double 0.52880300000000002
	.quad	0x3fc018a43bb40b35              # double 0.125752
	.quad	0x3fbb3f961804d984              # double 0.10643900000000001
	.quad	0x3fc6ae642bf9830e              # double 0.17719699999999999
	.quad	0x3fbe9435ac8a3726              # double 0.119449
	.quad	0x3fb7a7008a697aee              # double 0.092392000000000001
	.quad	0x3fec5c11e42e1262              # double 0.886239
	.quad	0x3fe134c1a8ac5c14              # double 0.53769
	.quad	0x3fe77807789a4591              # double 0.733402
	.quad	0x3fe619999999999a              # double 0.69062500000000004
	.quad	0x3f7bad3a604e1e71              # double 0.006757
	.quad	0x3fc80b2c83ec892b              # double 0.18784100000000001
	.quad	0x3fd31a8ac5c13fd1              # double 0.29849500000000001
	.quad	0x3feefc9bc7714339              # double 0.96833599999999997
	.quad	0x3fc7e310dbf0563f              # double 0.18661700000000001
	.quad	0x3f96295208e15012              # double 0.021642000000000002
	.quad	0x3fe071800a7c5ac4              # double 0.51385499999999995
	.quad	0x3fec681669ced0b3              # double 0.887706
	.quad	0x3f99ad85dfa871a4              # double 0.025076000000000001
	.quad	0x3fe1eafcce1c5825              # double 0.55993499999999996
	.quad	0x3fe4a21858bc59b8              # double 0.644787
	.quad	0x3fd2f9f87f023e9f              # double 0.29650700000000002
	.quad	0x3fecff865d7cb2d9              # double 0.906192
	.quad	0x3fe79595feda6613              # double 0.73701000000000005
	.quad	0x3fb6c5197a24894c              # double 0.088944999999999996
	.quad	0x3fe4b1a8ef77f280              # double 0.64668700000000001
	.quad	0x3faf6b1a2a4db164              # double 0.061364000000000002
	.quad	0x3fc313ad5bee3d60              # double 0.149038
	.quad	0x3fdfa78af3e468cb              # double 0.49460100000000001
	.quad	0x3fdec918e325d4a6              # double 0.48102400000000001
	.quad	0x3fe6cd37c1376d55              # double 0.71255100000000005
	.quad	0x3fef883ba3443d47              # double 0.98538000000000003
	.quad	0x3feff47304039abf              # double 0.99858999999999997
	.quad	0x3fc4a6d2674080fa              # double 0.16134100000000001
	.quad	0x3fdf464dc22ab25b              # double 0.48866599999999999
	.quad	0x3fdf56f75d9a0f0a              # double 0.48968299999999998
	.quad	0x3fdeb2b777d0f1f5              # double 0.47965799999999997
	.quad	0x3fd84141e9af5ba3              # double 0.37898300000000001
	.quad	0x3feeda1cac083127              # double 0.964125
	.quad	0x3fe4219eb6390c91              # double 0.629104
	.quad	0x3feb994185058dde              # double 0.86245799999999995
	.quad	0x3feaa8e2e2b8c75c              # double 0.83311599999999996
	.quad	0x3fbb6006d0d4994a              # double 0.106934
	.quad	0x3fcfe718a86d71f3              # double 0.24923999999999999
	.quad	0x3fee7a3fcc9ea9a4              # double 0.95242300000000001
	.quad	0x3fe9c82385404641              # double 0.80568099999999998
	.quad	0x3fe42acfb762d83c              # double 0.63022599999999995
	.quad	0x3fee8c996b7670a0              # double 0.95466300000000003
	.quad	0x3fe001f53825e13b              # double 0.50023899999999999
	.quad	0x3fd5a91105e1c151              # double 0.33844400000000002
	.quad	0x3fd6dcdf69878317              # double 0.35723100000000002
	.quad	0x3feb678e1932d6ed              # double 0.85639100000000001
	.quad	0x3fd85208e1501190              # double 0.38000699999999998
	.quad	0x3fcea8869c66d374              # double 0.23951800000000001
	.quad	0x3fed5bc23315d702              # double 0.91745100000000002
	.quad	0x3fddf37329c347e9              # double 0.46798400000000001
	.quad	0x3faed288ce703afb              # double 0.060199999999999997
	.quad	0x3f5b25f633ce63a6              # double 0.0016570000000000001
	.quad	0x3fe9073bc903ea70              # double 0.78213299999999997
	.quad	0x3fefd8e64b231401              # double 0.99522699999999997
	.quad	0x3fd089a88ace24bc              # double 0.25840200000000002
	.quad	0x3fa5b1209edbf8ba              # double 0.042367000000000002
	.quad	0x3fe3d0c1b97353b5              # double 0.61923300000000003
	.quad	0x3fcc7daa4fca42af              # double 0.22258500000000001
	.quad	0x3fe3d099e0e73605              # double 0.61921400000000004
	.quad	0x3f87e4de3b8a19ca              # double 0.011667
	.quad	0x3fdcbd1ed9dfdac7              # double 0.44904300000000003
	.quad	0x3fd985a4f00ef135              # double 0.39878200000000003
	.quad	0x3fd516d6dc1a47aa              # double 0.32951900000000001
	.quad	0x3fe4e8f4b61fe21e              # double 0.65343700000000005
	.quad	0x3fd3aef6f8f04146              # double 0.30755399999999999
	.quad	0x3fc8df47f993d534              # double 0.19431399999999999
	.quad	0x3fc8a2014727dcbe              # double 0.192444
	.quad	0x3fedf4d7add15f03              # double 0.93613800000000003
	.quad	0x3fea35bd512ec6bd              # double 0.81906000000000001
	.quad	0x3fb9e8d5410f94c8              # double 0.10120899999999999
	.quad	0x3f90232096787ce9              # double 0.015758999999999999
	.quad	0x3feb88e15011904b              # double 0.86045899999999997
	.quad	0x3fd67b5286b59147              # double 0.35127700000000001
	.quad	0x3fbc0e38a7e73a36              # double 0.10959199999999999
	.quad	0x3f90a569b17481b2              # double 0.016256
	.quad	0x3fe02775fb2edfe7              # double 0.50481699999999996
	.quad	0x3fd5122749f0e4da              # double 0.329233
	.quad	0x3fd4ccf6be37de94              # double 0.32501000000000002
	.quad	0x3feebb8800eae18b              # double 0.96039200000000002
	.quad	0x3fd8b3aabcd78c43              # double 0.38596599999999998
	.quad	0x3f956abde3fbbd7b              # double 0.020915
	.quad	0x3fc16f112fd32c62              # double 0.13620199999999999
	.quad	0x3fea2737110e453d              # double 0.81728699999999999
	.quad	0x3fe82ff2a172abef              # double 0.755853
	.quad	0x3fdd0abb44e50c5f              # double 0.45378000000000002
	.quad	0x3fe77a072d1aeb3e              # double 0.73364600000000002
	.quad	0x3fc9d5c31593e5fb              # double 0.20183599999999999
	.quad	0x3fe3caf2d7f950b9              # double 0.61852399999999996
	.quad	0x3fedb73affb04ee8              # double 0.92861700000000003
	.quad	0x3fd2e696a26e5471              # double 0.29532399999999998
	.quad	0x3fea9dc93ea2d2fe              # double 0.83176099999999997
	.quad	0x3fb399a1fd1569f5              # double 0.076563000000000006
	.quad	0x3fd0e4b87bdcf030              # double 0.26395999999999997
	.quad	0x3fd45371971c10d8              # double 0.31759300000000001
	.quad	0x3fd66e264e48626f              # double 0.35047299999999998
	.quad	0x3fb87b99d451fc4c              # double 0.095635999999999999
	.quad	0x3fdf09bb6aa4b988              # double 0.48496899999999998
	.quad	0x3fe917f1f9acffa8              # double 0.78417300000000001
	.quad	0x3fe0d701d9f4d37c              # double 0.52624599999999999
	.quad	0x3fd669fcf3dc054f              # double 0.350219
	.quad	0x3fb9565c2d278078              # double 0.098974000000000006
	.quad	0x3fcf229e90795f67              # double 0.24324399999999999
	.quad	0x3fe86afab53d640f              # double 0.76305900000000004
	.quad	0x3fefc73eee525892              # double 0.99307199999999995
	.quad	0x3fe1511dffc5479d              # double 0.54115199999999997
	.quad	0x3fcb667b5f1bef4a              # double 0.21406500000000001
	.quad	0x3fe79fc8f32378ab              # double 0.73825499999999999
	.quad	0x3fbcc3d25247cb71              # double 0.112363
	.quad	0x3fed86b37867f0aa              # double 0.92269299999999999
	.quad	0x3fe52e81882adc4d              # double 0.66192700000000004
	.quad	0x3f8cd5f99c38b04b              # double 0.014080000000000001
	.quad	0x3fe2c04c8bc9cd3e              # double 0.58597399999999999
	.quad	0x3fe9956191148fda              # double 0.799485
	.quad	0x3fdb25e13b18dac2              # double 0.42418699999999998
	.quad	0x3fef9aa821f2990f              # double 0.98762899999999997
	.quad	0x3fc4201cd5f99c39              # double 0.15723000000000001
	.quad	0x3fe7441fea8112ba              # double 0.72706599999999999
	.quad	0x3fe968cef672b884              # double 0.79404399999999997
	.quad	0x3fe2f4f722e1ac58              # double 0.59240300000000001
	.quad	0x3fd35ce5b4245f5b              # double 0.30254500000000001
	.quad	0x3fe45e657b84db9c              # double 0.63652299999999995
	.quad	0x3fe701cb46bacf74              # double 0.71896899999999997
	.quad	0x3febc18b502ababf              # double 0.86737600000000004
	.quad	0x3fe67ff9b56323bc              # double 0.70312200000000002
	.quad	0x3fd0e05ccc89b0ee              # double 0.26369399999999998
	.quad	0x3fdaa6f3f52fc265              # double 0.41643999999999998
	.quad	0x3fd743201040bfe4              # double 0.36347200000000002
	.quad	0x3fef4aa9717df19d              # double 0.97786399999999995
	.quad	0x3fe432873bc903ea              # double 0.63116799999999995
	.quad	0x3fe15bca9691a75d              # double 0.54245500000000002
	.quad	0x3fe67a2cecc814d7              # double 0.70241399999999998
	.quad	0x3fc11a543f1c7582              # double 0.13361600000000001
	.quad	0x3fc8cb6c7a7c9de0              # double 0.19370799999999999
	.quad	0x3fb84e7253da72a8              # double 0.094947000000000004
	.quad	0x3f87fa5d28d002e2              # double 0.011708
	.quad	0x3fec5b09a671ef31              # double 0.88611300000000004
	.quad	0x3f93458cd20afa2f              # double 0.01882
	.quad	0x3fee7a58f7121ab5              # double 0.95243500000000003
	.quad	0x3fc350225742dcf4              # double 0.15088299999999999
	.quad	0x3fe2b21e603d5779              # double 0.58424299999999996
	.quad	0x3fdf72de43ed959a              # double 0.49138599999999999
	.quad	0x3fc3f6db940fecdd              # double 0.155971
	.quad	0x3fe526117720c8cd              # double 0.66089699999999996
	.quad	0x3fa20ad8a116659d              # double 0.035238999999999999
	.quad	0x3fd61372a38b8ae3              # double 0.34493699999999999
	.quad	0x3fdd666ec9e236c1              # double 0.45937699999999998
	.quad	0x3fe5da9eb2074ea9              # double 0.68293700000000002
	.quad	0x3feab71da37ef5a9              # double 0.83485299999999996
	.quad	0x3fe3c6ef3d3a1d32              # double 0.61803399999999997
	.quad	0x3fe4f2f123c42a67              # double 0.65465600000000002
	.quad	0x3fe749adc8fb86f4              # double 0.72774399999999995
	.quad	0x3fe786d71f36262d              # double 0.73521000000000003
	.quad	0x3fecb59bc33f8551              # double 0.89716899999999999
	.quad	0x3fefb9cb6848beb6              # double 0.99143000000000003
	.quad	0x3fb8d91eeaa6d267              # double 0.097062999999999997
	.quad	0x3fd6c422036006d1              # double 0.35572100000000001
	.quad	0x3fd1a60d4562e0a0              # double 0.27576000000000001
	.quad	0x3fbae5bc87db2b34              # double 0.10506799999999999
	.quad	0x3fecf42bb6672fba              # double 0.904806
	.quad	0x3fd5f893faf42785              # double 0.34329700000000002
	.quad	0x3feb4083126e978d              # double 0.85162499999999997
	.quad	0x3fa6223e18698351              # double 0.043229999999999998
	.quad	0x3fe02ccf6be37de9              # double 0.50546999999999997
	.quad	0x3fe3afee6fb4c3c2              # double 0.61522600000000005
	.quad	0x3fd7cc814d72799a              # double 0.37185699999999999
	.quad	0x3fe23b107746887b              # double 0.56971000000000005
	.quad	0x3fe3cb4070329803              # double 0.61856100000000003
	.quad	0x3f8055b89939218a              # double 0.0079760000000000005
	.quad	0x3fe9d43aeab7995f              # double 0.80715700000000001
	.quad	0x3f9d7fd82773e250              # double 0.028808
	.quad	0x3fe91e83e425aee6              # double 0.78497499999999998
	.quad	0x3fbf90d9d7774aba              # double 0.123304
	.quad	0x3fdd231832fcac8e              # double 0.45526699999999998
	.quad	0x3fe61a1db877ab32              # double 0.69068799999999997
	.quad	0x3fe809374bc6a7f0              # double 0.75112500000000004
	.quad	0x3fc40e9d51b4fe7a              # double 0.156696
	.quad	0x3fe8f32378ab0c89              # double 0.77968000000000004
	.quad	0x3fd318a86d71f362              # double 0.29837999999999998
	.quad	0x3fe8009917939a7c              # double 0.75007299999999998
	.quad	0x3fdb8ee286727568              # double 0.43059599999999998
	.quad	0x3fe1efc371da37ef              # double 0.56051799999999996
	.quad	0x3fc601eeed8904f7              # double 0.171934
	.quad	0x3fcd378ee2867275              # double 0.22825799999999999
	.quad	0x3fd0a3ca7503b81b              # double 0.25999699999999998
	.quad	0x3fd0961c36976bc2              # double 0.259162
	.quad	0x3fe4ac3a860dcb9b              # double 0.64602400000000004
	.quad	0x3fe5801d5c31593e              # double 0.67188899999999996
	.quad	0x3feec10b630a9153              # double 0.96106499999999994
	.quad	0x3fb6073de1e2de87              # double 0.086047999999999999
	.quad	0x3fcb16a055757d5b              # double 0.21162800000000001
	.quad	0x3fc6cbe1eb4202da              # double 0.17809700000000001
	.quad	0x3fedda1cac083127              # double 0.93287500000000001
	.quad	0x3fdf0ef566490a35              # double 0.485288
	.quad	0x3fd0003ab862b27d              # double 0.25001400000000001
	.quad	0x3feb950fc71d6063              # double 0.86194599999999999
	.quad	0x3fcff1737542a23c              # double 0.249556
	.quad	0x3fe74f97edc7ef17              # double 0.72846599999999995
	.quad	0x3fe813836a832b99              # double 0.752382
	.quad	0x3fe6e49906cca2db              # double 0.71540499999999996
	.quad	0x3faae429e0a41a26              # double 0.052521999999999999
	.quad	0x3fd053c9abb01c93              # double 0.25511400000000001
	.quad	0x3fd0d1aa821f2991              # double 0.262797
	.quad	0x3fe720817fc7607c              # double 0.72271799999999997
	.quad	0x3fd19d883ba3443d              # double 0.27523999999999998
	.quad	0x3feeea5f84cad57c              # double 0.96611000000000002
	.quad	0x3fb3acd5b6805a2d              # double 0.076855999999999994
	.quad	0x3fe5744b2b777d0f              # double 0.67044599999999999
	.quad	0x3fe09a06a6e32e38              # double 0.51880199999999999
	.quad	0x3fe0f53a3ec02f30              # double 0.52993500000000004
	.quad	0x3fe66f2e8c0485a1              # double 0.70107200000000003
	.quad	0x3fd151e75360d024              # double 0.27062399999999998
	.quad	0x3fdf1b54195cc858              # double 0.486043
	.quad	0x3fca000000000000              # double 0.203125
	.quad	0x3fa6fd86a8fc0d2c              # double 0.044902999999999998
	.quad	0x3fe6569f4906034f              # double 0.69807399999999997
	.quad	0x3fe1d74f722e1ac5              # double 0.55753299999999995
	.quad	0x3f959210385c67e0              # double 0.021065
	.quad	0x3fd9ebe596c82e02              # double 0.40502300000000002
	.quad	0x3fe430ff10ecb74e              # double 0.63098100000000001
	.quad	0x3fef781626b2f230              # double 0.98340899999999998
	.quad	0x3feb91c6d1e108c4              # double 0.861545
	.quad	0x3fe1b039ef0f16f4              # double 0.55276199999999998
	.quad	0x3fd8a75cd0bb6ed6              # double 0.38521499999999997
	.quad	0x3fe14b5568e820e6              # double 0.54044599999999998
	.quad	0x3faf064ece9a2c67              # double 0.060595000000000003
	.quad	0x3fe7baa1511dffc5              # double 0.74153199999999997
	.quad	0x3fee036006d0d499              # double 0.93791199999999997
	.quad	0x3fd6d373affb04ee              # double 0.35665599999999997
	.quad	0x3fece0370cdc8755              # double 0.90237000000000001
	.quad	0x3fe61bd61f5be5da              # double 0.69089800000000001
	.quad	0x3fda7110e453d20f              # double 0.41315099999999999
	.quad	0x3fe0c61f9f01b867              # double 0.52418500000000001
	.quad	0x3fe499f1ae2da555              # double 0.64379200000000003
	.quad	0x3fc46ea854477ff1              # double 0.15962699999999999
	.quad	0x3fe1d7774aba3876              # double 0.55755200000000005
	.quad	0x3fbdb77c02afdda9              # double 0.116081
	.quad	0x3fe7a2c881e4712e              # double 0.73862099999999997
	.quad	0x3fe066be7afa7222              # double 0.51254200000000005
	.quad	0x3fdfe5fb71fbc5df              # double 0.49841200000000002
	.quad	0x3fd387d2c7b890d6              # double 0.30516500000000002
	.quad	0x3fe07bf1e8e60807              # double 0.51512999999999998
	.quad	0x3fe66b80ecfa69be              # double 0.700623
	.quad	0x3feabc1acde19fc3              # double 0.83546200000000004
	.quad	0x3fe40344c37e6f72              # double 0.62539900000000004
	.quad	0x3fe296aad1d041cc              # double 0.58089199999999996
	.quad	0x3fd6854cdb7ae579              # double 0.35188599999999998
	.quad	0x3fe6486ad2dcb146              # double 0.69633999999999996
	.quad	0x3fe2547bedb72820              # double 0.57281300000000002
	.quad	0x3fe019d451fc4c16              # double 0.50315299999999996
	.quad	0x3fe62b7995ee136e              # double 0.69280699999999995
	.quad	0x3fedd3c148344c38              # double 0.93209900000000001
	.quad	0x3fe7a86940357a35              # double 0.73930799999999997
	.quad	0x3f9dc7ef177a7009              # double 0.029083000000000001
	.quad	0x3fe359cae21101b0              # double 0.604711
	.quad	0x3fd4c21187e7c06e              # double 0.32434499999999999
	.quad	0x3fcbc2b94d940789              # double 0.21687999999999999
	.quad	0x3febf2cd7cf5f4e4              # double 0.87338899999999997
	.quad	0x3fda84cad57bc7f7              # double 0.41435499999999997
	.quad	0x3fd3292817763e4b              # double 0.29938700000000001
	.quad	0x3fe568a0d349be90              # double 0.66902200000000001
	.quad	0x3fe3ed8904f6dfc6              # double 0.62274600000000002
	.quad	0x3fc14ad362e90364              # double 0.13509599999999999
	.quad	0x3fc6db7281fd9ba2              # double 0.17857200000000001
	.quad	0x3fa90a99b6f5caf3              # double 0.048909000000000001
	.quad	0x3fdf918a009f6230              # double 0.49325799999999997
	.quad	0x3fd5c1d29dc725c4              # double 0.33995500000000001
	.quad	0x3fc01e81cb46bacf              # double 0.12593099999999999
	.quad	0x3fde5f6fd21ff2e5              # double 0.47457500000000002
	.quad	0x3fdb371da37ef5a9              # double 0.42523899999999998
	.quad	0x3fd5b9cf9a06a6e3              # double 0.33946599999999999
	.quad	0x3fe5d6366d7a56de              # double 0.68239899999999998
	.quad	0x3fc3150dae3e6c4c              # double 0.14907999999999999
	.quad	0x3fb570d62bf11f92              # double 0.083752999999999994
	.quad	0x3fe4007bbb62413e              # double 0.62505900000000003
	.quad	0x3fc3adb8348f53c5              # double 0.15373899999999999
	.quad	0x3fd708a265f0f5a1              # double 0.359902
	.quad	0x3fdd405b39e279dd              # double 0.45705299999999999
	.quad	0x3fe22c6cdaf4adbc              # double 0.56792299999999996
	.quad	0x3fd912cf0f9d2bf5              # double 0.39177299999999998
	.quad	0x3fc732617c1bda51              # double 0.181225
	.quad	0x3fd9ac7da1ec4e72              # double 0.40115299999999998
	.quad	0x3fe4b09e98dcdb38              # double 0.64656000000000002
	.quad	0x3fe76fd651b0ccbc              # double 0.732402
	.quad	0x3fe77562174c4ce0              # double 0.73307900000000003
	.quad	0x3f86c7a7c9de0503              # double 0.011122999999999999
	.quad	0x3fe898c197e56473              # double 0.76864699999999997
	.quad	0x3fe1a28bb0a2ca9b              # double 0.55109200000000003
	.quad	0x3fd0d55e6bc621b8              # double 0.26302300000000001
	.quad	0x3fe5a5119ce075f7              # double 0.6764
	.quad	0x3fd68c9fb6134ce4              # double 0.35233300000000001
	.quad	0x3fdd9ab6d00b45ae              # double 0.46256799999999998
	.quad	0x3fe3957abb8800eb              # double 0.61199700000000001
	.quad	0x3fdd820a30db6a1f              # double 0.46106200000000003
	.quad	0x3fe6f0025bfad29a              # double 0.71679800000000005
	.quad	0x3feda2cecc814d72              # double 0.92612399999999995
	.quad	0x3fc4a925fe974a34              # double 0.161412
	.quad	0x3fb6f32bdc26dce4              # double 0.089648000000000005
	.quad	0x3fc2fad6cb535009              # double 0.14828
	.quad	0x3fdb471715c63ae2              # double 0.42621399999999998
	.quad	0x3fe2dd0fa58f7122              # double 0.58948500000000004
	.quad	0x3f7da16616b54e2b              # double 0.007234
	.quad	0x3fd7ba237cdcca71              # double 0.37073600000000001
	.quad	0x3fc6d506573215fd              # double 0.17837600000000001
	.quad	0x3fe86c764adff823              # double 0.76324000000000003
	.quad	0x3fe0ac3a860dcb9b              # double 0.52102400000000004
	.quad	0x3fe1352eb5f5f0b3              # double 0.53774200000000005
	.quad	0x3fe6fe8ab4fa4830              # double 0.71857199999999999
	.quad	0x3f912f901083dbc2              # double 0.016782999999999999
	.quad	0x3fe424e160d887ec              # double 0.62950200000000001
	.quad	0x3fec9359791819d2              # double 0.89298699999999998
	.quad	0x3fe1bb4d48882f0e              # double 0.554114
	.quad	0x3fdee2cdc011d367              # double 0.48259299999999999
	.quad	0x3fe7c0d6f544bb1b              # double 0.74229000000000001
	.quad	0x3fe162ef4e0114d3              # double 0.543327
	.quad	0x3fb8852b4d8ba40e              # double 0.095782000000000006
	.quad	0x3fe7e9270b06c43f              # double 0.74721099999999996
	.quad	0x3fdc04a2fcefaa47              # double 0.43778299999999998
	.quad	0x3fe6ecd29131ec0b              # double 0.71640899999999996
	.quad	0x3fe9ec02f2f98740              # double 0.81006
	.quad	0x3fe50fe69270b06c              # double 0.65819099999999997
	.quad	0x3fe454da4ce8101f              # double 0.63535799999999998
	.quad	0x3f974a3400b88ca4              # double 0.022744
	.quad	0x3fb8cf5b1c864884              # double 0.096914
	.quad	0x3fedd9d99029ae4f              # double 0.93284299999999998
	.quad	0x3fe61ea9a3d2d880              # double 0.69124300000000005
	.quad	0x3fe940db2702a348              # double 0.78916699999999995
	.quad	0x3fc8bcb5fe542e55              # double 0.19325899999999999
	.quad	0x3fd85c24c404a72f              # double 0.38062400000000002
	.quad	0x3fc571327243137b              # double 0.167517
	.quad	0x3fdcfde2ef4e0115              # double 0.45299600000000001
	.quad	0x3fe128deb0fadf2f              # double 0.53623900000000002
	.quad	0x3fed86ad2dcb1466              # double 0.92269000000000001
	.quad	0x3fc43f9a49c2c1b1              # double 0.158191
	.quad	0x3fe7ccf4a558ea7d              # double 0.74376900000000001
	.quad	0x3fd5c5b078d92fb2              # double 0.34019100000000002
	.quad	0x3fe6cb7b28954a80              # double 0.71233900000000006
	.quad	0x3fdece4649906cca              # double 0.48133999999999999
	.quad	0x3fe3dc4007570c56              # double 0.62063599999999997
	.quad	0x3fa1f6cacd184c27              # double 0.035085999999999999
	.quad	0x3fdec88e79aae6c9              # double 0.480991
	.quad	0x3fc10995aaf78fef              # double 0.133105
	.quad	0x3fe190c4dec1c1d7              # double 0.54892200000000002
	.quad	0x3fd9229a5ebb773a              # double 0.392737
	.quad	0x3f7d99029ae4f334              # double 0.0072259999999999998
	.quad	0x3fc80c282c6ef3d4              # double 0.18787100000000001
	.quad	0x3fd60bfe3b03e20d              # double 0.34448200000000001
	.quad	0x3fe4ac0a4a05dd90              # double 0.64600100000000005
	.quad	0x3fdebb83cf2cf95d              # double 0.48019499999999998
	.quad	0x3fb1be2b4959e625              # double 0.069307999999999995
	.quad	0x3fd80a99b6f5caf3              # double 0.37564700000000001
	.quad	0x3febcf6dfc5cdd51              # double 0.86907100000000004
	.quad	0x3fda2bc2fc69728a              # double 0.40892099999999998
	.quad	0x3fd64a6a875d56f3              # double 0.34829199999999999
	.quad	0x3fd90a9de8b3b320              # double 0.39127299999999998
	.quad	0x3fe7cd5d80e496ee              # double 0.74381900000000001
	.quad	0x3fd3b66f9335d24a              # double 0.30801000000000001
	.quad	0x3fe762ae4b018612              # double 0.730796
	.quad	0x3fd146f156191149              # double 0.269955
	.quad	0x3fe200baa582dbe8              # double 0.56258900000000001
	.quad	0x3fe707ca643cc07b              # double 0.71970100000000004
	.quad	0x3fe0d887ebf22c02              # double 0.52643200000000001
	.quad	0x3fefcece9a2c6690              # double 0.99399499999999996
	.quad	0x3fc3a4a48f96e158              # double 0.15346199999999999
	.quad	0x3fc65f394b7b2895              # double 0.17478099999999999
	.quad	0x3fe7e94ccab3edd9              # double 0.74722900000000003
	.quad	0x3fb5e731d2e0e304              # double 0.085558999999999996
	.quad	0x3fa229c779a6b50b              # double 0.035475
	.quad	0x3fe3062f5989df11              # double 0.59450499999999995
	.quad	0x3fce6f8ad2567989              # double 0.23777899999999999
	.quad	0x3fecbc0e38a7e73a              # double 0.89795599999999998
	.quad	0x3fec9294573a7979              # double 0.89289300000000005
	.quad	0x3feb68f4b61fe21e              # double 0.85656200000000005
	.quad	0x3fd4b78897e99631              # double 0.32370199999999999
	.quad	0x3fa81c0ca600b029              # double 0.047088999999999999
	.quad	0x3fdf074ea8da7f3d              # double 0.484821
	.quad	0x3fe2e81ecd4aa10e              # double 0.590835
	.quad	0x3fe593f077ccc038              # double 0.67430900000000005
	.quad	0x3fb72f76e6106ab1              # double 0.090567999999999996
	.quad	0x3fe499999999999a              # double 0.64375000000000004
	.quad	0x3fe5a2a90cd423d9              # double 0.67610599999999998
	.quad	0x3fba55c0fcb4f1e5              # double 0.102871
	.quad	0x3fe96a897635e743              # double 0.79425500000000004
	.quad	0x3fe90d9945b6c376              # double 0.78290999999999999
	.quad	0x3fe703d577963993              # double 0.71921800000000002
	.quad	0x3fc83382e44b6e93              # double 0.18907199999999999
	.quad	0x3fb0cb7d41743e96              # double 0.065604999999999997
	.quad	0x3fe0533d29563a9f              # double 0.51016099999999998
	.quad	0x3fda82e019b0ab2e              # double 0.414238
	.quad	0x3feaa9c12f09d8c7              # double 0.83322200000000002
	.quad	0x3fe24408d8ec95c0              # double 0.57080500000000001
	.quad	0x3fba702a3486f04a              # double 0.103274
	.quad	0x3fbce0008637bd06              # double 0.112793
	.quad	0x3fc70bfa0945f9df              # double 0.18005299999999999
	.quad	0x3fce2f405f6ba062              # double 0.235817
	.quad	0x3feef1044f1a1987              # double 0.96692100000000003
	.quad	0x3fdc99806f262889              # double 0.44686900000000002
	.quad	0x3fa87dd441355476              # double 0.047835000000000003
	.quad	0x3fe92a10e0221427              # double 0.786385
	.quad	0x3fc108bb906466b2              # double 0.133079
	.quad	0x3fd2efbf401c4fc2              # double 0.29588300000000001
	.quad	0x3fdcaec4a4095f24              # double 0.44816699999999998
	.quad	0x3feb75be5d9e40c8              # double 0.85812299999999997
	.quad	0x3fb87ee0b0af5fd4              # double 0.095685999999999993
	.quad	0x3fd9a93af74cd317              # double 0.40095399999999998
	.quad	0x3fe6eddce7cd0353              # double 0.71653599999999995
	.quad	0x3fe6284be40420f7              # double 0.69241900000000001
	.quad	0x3fdbd7cf5f4e4431              # double 0.43504700000000002
	.quad	0x3fe8aa8869c66d37              # double 0.77081699999999997
	.quad	0x3fa549731098d478              # double 0.041576000000000002
	.quad	0x3fe8a9c12f09d8c7              # double 0.77072200000000002
	.quad	0x3fdca82a5614df8b              # double 0.447764
	.quad	0x3fec5e6ff7dfa00e              # double 0.88652799999999998
	.quad	0x3fef50870110a138              # double 0.97858
	.quad	0x3fe4090b417ca212              # double 0.62610399999999999
	.quad	0x3fe3e3d3e4ef0282              # double 0.62156100000000003
	.quad	0x3fde76cce5f7403e              # double 0.47600100000000001
	.quad	0x3fef4ce3de6149c7              # double 0.978136
	.quad	0x3fcc195cc857f306              # double 0.219524
	.quad	0x3fdb3b18dac258d6              # double 0.42548200000000003
	.quad	0x3fe671dc50ce4ead              # double 0.70139899999999999
	.quad	0x3fd20724b76f6d76              # double 0.28168599999999999
	.quad	0x3fe2c1a261bf37b9              # double 0.58613700000000002
	.quad	0x3fef2355043e5322              # double 0.97306300000000001
	.quad	0x3fe6d2e0e30446b7              # double 0.71324200000000004
	.quad	0x3f861fe21d96e9bc              # double 0.010803
	.quad	0x3fe587aaef2c7326              # double 0.67281100000000005
	.quad	0x3fc5c8d9f90539fc              # double 0.17019200000000001
	.quad	0x3fdc0a0b1bbcf4e8              # double 0.43811299999999997
	.quad	0x3fc5a05143bf7271              # double 0.16895499999999999
	.quad	0x3fe6f7ea1c68ec53              # double 0.71776300000000004
	.quad	0x3fc01719f7f8ca82              # double 0.12570500000000001
	.quad	0x3fe3db2d4d4024b3              # double 0.62050499999999997
	.quad	0x3fef4d6e47dc37a4              # double 0.97820200000000001
	.quad	0x3fe9bdf6db940fed              # double 0.80443900000000002
	.quad	0x3fd7102363b25700              # double 0.36036000000000001
	.quad	0x3fe20fdc1615ebfb              # double 0.56443600000000005
	.quad	0x3fd7254e6e221c8a              # double 0.36165199999999997
	.quad	0x3fe5bc2b94d94079              # double 0.67922000000000005
	.quad	0x3fe0469f8c21e1d2              # double 0.50862099999999999
	.quad	0x3fec220578e5c4eb              # double 0.87915299999999996
	.quad	0x3fe4ef30a4e379b7              # double 0.65419799999999995
	.quad	0x3fec2f2734f82f51              # double 0.88075599999999998
	.quad	0x3fdb47c30d306a2b              # double 0.426255
	.quad	0x3fef8c282c6ef3d4              # double 0.98585900000000004
	.quad	0x3fdbbce4217d284a              # double 0.43340400000000001
	.quad	0x3fed5974e65bea0c              # double 0.91717000000000004
	.quad	0x3fe4b1c64ba94bbe              # double 0.64670099999999997
	.quad	0x3fd3c8216c61522a              # double 0.30908999999999998
	.quad	0x3fd301f75104d552              # double 0.29699500000000001
	.quad	0x3fd071c10d7be985              # double 0.25694299999999998
	.quad	0x3fc33458cd20afa3              # double 0.150035
	.quad	0x3fc325bb7b6bb129              # double 0.149589
	.quad	0x3fcef45176145953              # double 0.24183099999999999
	.quad	0x3fe45a63f9a49c2c              # double 0.63603399999999999
	.quad	0x3fd3b86b15f88fc9              # double 0.30813099999999999
	.quad	0x3fef1d388a8b08dd              # double 0.97231699999999998
	.quad	0x3fe45d5b24e9c454              # double 0.63639599999999996
	.quad	0x3fc34ac29bf162ae              # double 0.15071899999999999
	.quad	0x3fde7dd872f33ca3              # double 0.47643099999999999
	.quad	0x3fd3ffbce4217d28              # double 0.31248399999999998
	.quad	0x3fe66215336deb96              # double 0.69947300000000001
	.quad	0x3fee131876188b11              # double 0.93983099999999997
	.quad	0x3fd90c4dec1c1d6d              # double 0.391376
	.quad	0x3fbd126634117f84              # double 0.113562
	.quad	0x3fcbac471b478423              # double 0.216195
	.quad	0x3fea5349be8ff328              # double 0.82266700000000004
	.quad	0x3fec905c03361566              # double 0.89262200000000003
	.quad	0x3fc35147f1305964              # double 0.150918
	.quad	0x3fe7b32ce89656ef              # double 0.740622
	.quad	0x3fe12dfb506dd69d              # double 0.53686299999999998
	.quad	0x3feeb6390c9107fb              # double 0.95974400000000004
	.quad	0x3fdc68fd199bb279              # double 0.44390800000000002
	.quad	0x3fefaadc4c9c90c5              # double 0.98960700000000001
	.quad	0x3fef66c2acb85a4f              # double 0.98129399999999999
	.quad	0x3fc334d6a161e4f7              # double 0.15004999999999999
	.quad	0x3f9d1e53a81dc0db              # double 0.028435999999999999
	.quad	0x3fe438e6d15ad107              # double 0.63194600000000001
	.quad	0x3fdba958537e2c56              # double 0.43221100000000001
	.quad	0x3fea6df82b1f687b              # double 0.82592399999999999
	.quad	0x3fe1667f90d9d777              # double 0.54376199999999997
	.quad	0x3feae312f4cf4a56              # double 0.84021900000000005
	.quad	0x3fc0756861e92924              # double 0.128583
	.quad	0x3fead821294573a8              # double 0.83888300000000005
	.quad	0x3fd6d65e4606748e              # double 0.35683399999999998
	.quad	0x3feefe8ee6b8305e              # double 0.96857400000000005
	.quad	0x3fc4b9b23dd54da5              # double 0.16191700000000001
	.quad	0x3fd9b1d92b7fe08b              # double 0.40148
	.quad	0x3fd226bf8769ec2d              # double 0.28361500000000001
	.quad	0x3fd2c9bc77143394              # double 0.29356300000000002
	.quad	0x3fe0ce69f05ea24d              # double 0.52519700000000002
	.quad	0x3fe62d6451b93038              # double 0.69304100000000002
	.quad	0x3fcbaaa3ad18d25f              # double 0.216145
	.quad	0x3fd3300de4c51117              # double 0.29980800000000002
	.quad	0x3fe2c5aa2e3c536d              # double 0.58662899999999996
	.quad	0x3fe97d8cf398e970              # double 0.79657599999999995
	.quad	0x3fd4a9e6eeb70260              # double 0.32286999999999999
	.quad	0x3fc3359791819d24              # double 0.15007300000000001
	.quad	0x3fd842c7fbacb429              # double 0.37907600000000002
	.quad	0x3fee3a6ce358298d              # double 0.94463200000000003
	.quad	0x3fbb6e3f78bbd380              # double 0.107151
	.quad	0x3fcd7bc7f77af640              # double 0.23033999999999999
	.quad	0x3fa2875d56f32bdc              # double 0.036188999999999999
	.quad	0x3fee3402d16b97ff              # double 0.94384900000000005
	.quad	0x3feb5a921ccd9620              # double 0.85480599999999995
	.quad	0x3fe51014b599aa61              # double 0.65821300000000005
	.quad	0x3fce65cf67b1c001              # double 0.237482
	.quad	0x3fe0d1aa821f2991              # double 0.52559400000000001
	.quad	0x3feb1aa821f2990f              # double 0.84700399999999998
	.quad	0x3fbe774eebf65dc0              # double 0.119008
	.quad	0x3fe5882491afc04d              # double 0.67286900000000005
	.quad	0x3fe18b8066c2acb8              # double 0.54827899999999996
	.quad	0x3fea88509bf9c62a              # double 0.82913999999999999
	.quad	0x3fe30edc3bd59924              # double 0.59556399999999998
	.quad	0x3fa25b530ced4e4d              # double 0.035853000000000003
	.quad	0x3fe99806f262888b              # double 0.79980799999999996
	.quad	0x3fe1e147ae147ae1              # double 0.55874999999999997
	.quad	0x3fe581a9b8cb8e08              # double 0.67207799999999995
	.quad	0x3fe544156e264e48              # double 0.66456099999999996
	.quad	0x3fe28791c4b90215              # double 0.57904900000000004
	.quad	0x3fe577878b7a1c26              # double 0.67084100000000002
	.quad	0x3fef9f4906034f40              # double 0.98819400000000001
	.quad	0x3fec555c52e72da1              # double 0.88541999999999998
	.quad	0x3fd69118c197e564              # double 0.35260599999999998
	.quad	0x3fdfce0fc2eba27b              # double 0.496952
	.quad	0x3fe8ffd82773e250              # double 0.78123100000000001
	.quad	0x3fc24fa05143bf72              # double 0.14305499999999999
	.quad	0x3feac20d5629d841              # double 0.83618800000000004
	.quad	0x3fd23c42a66dbd73              # double 0.28492800000000001
	.quad	0x3fe2ae46cfc829d0              # double 0.58377400000000002
	.quad	0x3fdb70a808c8259e              # double 0.42875099999999999
	.quad	0x3fefd102bc72e276              # double 0.99426400000000004
	.quad	0x3fe649d16fc9bc77              # double 0.69651099999999999
	.quad	0x3fe47a0d77b7c782              # double 0.639899
	.quad	0x3fe15c22ab25b318              # double 0.54249700000000001
	.quad	0x3fe05ef62f9ca5be              # double 0.51159200000000005
	.quad	0x3fd0cf850df15a4b              # double 0.26266600000000001
	.quad	0x3fa7b02d59d55e6c              # double 0.046266000000000002
	.quad	0x3fd1b40b34e7685a              # double 0.27661400000000003
	.quad	0x3fddcbccf28c79f6              # double 0.46556399999999998
	.quad	0x3fe3a3315d701d9f              # double 0.61367099999999997
	.quad	0x3f92dba4d6e47dc3              # double 0.018415999999999998
	.quad	0x3fa4a98aa8650e78              # double 0.040356000000000003
	.quad	0x3fe4e14df8b15726              # double 0.65250300000000006
	.quad	0x3fe2f1d81f106680              # double 0.59202200000000005
	.quad	0x3fe8c74fb549f948              # double 0.77432999999999996
	.quad	0x3feba7d028a1dfb9              # double 0.86423499999999998
	.quad	0x3fe0d1d68c692f6f              # double 0.52561500000000005
	.quad	0x3feeccc46950fc72              # double 0.96249600000000002
	.quad	0x3fd23201040bfe3b              # double 0.284302
	.quad	0x3fef42d27807789a              # double 0.97690699999999997
	.quad	0x3fd12d4d4024b33e              # double 0.26839000000000002
	.quad	0x3fcc0c308feac42f              # double 0.21912200000000001
	.quad	0x3fc1384fd2a62aa2              # double 0.13453100000000001
	.quad	0x3fd9f633ce63a5c2              # double 0.40565200000000001
	.quad	0x3fd033df2a9d627c              # double 0.253166
	.quad	0x3fcc6801711947d0              # double 0.22192400000000001
	.quad	0x3fe6aba16e7a311f              # double 0.70845100000000005
	.quad	0x3f94299d883ba344              # double 0.019689999999999999
	.quad	0x3fc8be7296f6512b              # double 0.19331200000000001
	.quad	0x3fc59ebe9c886163              # double 0.168907
	.quad	0x3fc15c8d9f9053a0              # double 0.13563700000000001
	.quad	0x3fe615bff04577d9              # double 0.69015499999999996
	.quad	0x3fe2a6ca03c4b09f              # double 0.58286000000000004
	.quad	0x3fec05b7cfe58601              # double 0.87569799999999998
	.quad	0x3fb000fba8826aa9              # double 0.062515000000000001
	.quad	0x3fdec9752977c88e              # double 0.48104599999999997
	.quad	0x3fc23e9ea1405708              # double 0.142536
	.quad	0x3fdba14057082492              # double 0.43171700000000002
	.quad	0x3fea477574f722e2              # double 0.82122300000000004
	.quad	0x3fea65604189374c              # double 0.82487500000000002
	.quad	0x3fe2e1975f2cb641              # double 0.59003799999999995
	.quad	0x3fd2a2014727dcbe              # double 0.29113800000000001
	.quad	0x3fec01344806290f              # double 0.87514700000000001
	.quad	0x3f8bb16c1e364bec              # double 0.013521999999999999
	.quad	0x3fc7882278d0cc36              # double 0.18384200000000001
	.quad	0x3fe7c883fd502257              # double 0.74322699999999997
	.quad	0x3fef50b955f7835a              # double 0.97860400000000003
	.quad	0x3fee3126e978d4fe              # double 0.94350000000000001
	.quad	0x3fd6c5de9c0229a6              # double 0.355827
	.quad	0x3fe532fcac8e68e4              # double 0.66247400000000001
	.quad	0x3fe20828c36da87a              # double 0.563496
	.quad	0x3fcc005c4651f3e9              # double 0.21876100000000001
	.quad	0x3fdf3a71151611ba              # double 0.48794199999999999
	.quad	0x3f68f1d3ed527e52              # double 0.003045
	.quad	0x3fc5b7952d234eba              # double 0.16966500000000001
	.quad	0x3feb2b10ba6266fd              # double 0.84900699999999996
	.quad	0x3fecf0c996b7670a              # double 0.904393
	.quad	0x3fe621c475e6362a              # double 0.69162199999999996
	.quad	0x3fe06b50b0f27bb3              # double 0.5131
	.quad	0x3fece687f455a7d2              # double 0.90314099999999997
	.quad	0x3fdd6b26bf8769ec              # double 0.45966499999999999
	.quad	0x3feefed20296b335              # double 0.96860599999999996
	.quad	0x3fdafeac42e9899c              # double 0.421794
	.quad	0x3fc68d6d3b6cbd98              # double 0.17619099999999999
	.quad	0x3fca746cb966be7b              # double 0.206678
	.quad	0x3fe91884c6a3bde0              # double 0.78424300000000002
	.quad	0x3fdd3d4ae429e0a4              # double 0.45686599999999999
	.quad	0x3fe9d7ba6698bb4d              # double 0.80758399999999997
	.quad	0x3fa0b0d0edc3bd5a              # double 0.032599000000000003
	.quad	0x3fe523aafff36ac6              # double 0.66060399999999997
	.quad	0x3fb863497b7414a5              # double 0.095265000000000002
	.quad	0x3fe77d45a5fc7e6b              # double 0.73404199999999997
	.quad	0x3fddc0df58c08b76              # double 0.464897
	.quad	0x3fecfc6fbd273d5c              # double 0.90581500000000003
	.quad	0x3fe2ab8c75c4a83b              # double 0.58344099999999999
	.quad	0x3fe315336deb95e6              # double 0.59633800000000003
	.quad	0x3fe32dfd694ccab4              # double 0.59936400000000001
	.quad	0x3fe29dcd7060bb2c              # double 0.58176300000000003
	.quad	0x3fe8a478854cdb7b              # double 0.77007700000000001
	.quad	0x3fbca4b124d099e1              # double 0.111888
	.quad	0x3fe90aa8650e7792              # double 0.782551
	.quad	0x3fe00d8cb07d0aee              # double 0.50165400000000004
	.quad	0x3fe3148344c37e6f              # double 0.59625399999999995
	.quad	0x3fd89a0ad8a11666              # double 0.38440200000000002
	.quad	0x3fdd9b23dd54da4d              # double 0.46259400000000001
	.quad	0x3fe86fe931876189              # double 0.76366100000000003
	.quad	0x3fca2afdda8bd231              # double 0.20443700000000001
	.quad	0x3fd44ad362e90364              # double 0.31706699999999999
	.quad	0x3feeb0ccbc05d52c              # double 0.95908199999999999
	.quad	0x3fec45ac471b4784              # double 0.88350499999999998
	.quad	0x3f9a5614df8b1572              # double 0.025718999999999999
	.quad	0x3fe95e7c8d195897              # double 0.79278400000000004
	.quad	0x3f7672324c836651              # double 0.0054799999999999996
	.quad	0x3fef951611ba3ca7              # double 0.98694899999999996
	.quad	0x3fabab862b27cbf7              # double 0.054043000000000001
	.quad	0x3fee390a7829068a              # double 0.94446300000000005
	.quad	0x3fda2845996744b3              # double 0.40870800000000002
	.quad	0x3fe751697f1f9ad0              # double 0.728688
	.quad	0x3fd38d8665e02ea9              # double 0.30551299999999998
	.quad	0x3fd989dadfb506dd              # double 0.39903899999999998
	.quad	0x3fea179bfdf7e804              # double 0.81538200000000005
	.quad	0x3fee6e978d4fdf3b              # double 0.95099999999999996
	.quad	0x3fecc4f5d35653ca              # double 0.89904300000000004
	.quad	0x3fdd28a1dfb9389b              # double 0.45560499999999998
	.quad	0x3f7ab4b72c5197a2              # double 0.0065199999999999998
	.quad	0x3fe64ec204f2ae08              # double 0.69711400000000001
	.quad	0x3fe08d1526d8b1dd              # double 0.51722199999999996
	.quad	0x3fe8ae5ffa3b9ae1              # double 0.77128600000000003
	.quad	0x3fda6ba493c89f41              # double 0.41282000000000002
	.quad	0x3fd0b124d099e0e7              # double 0.26081199999999999
	.quad	0x3fe5348f53c579f2              # double 0.66266599999999998
	.quad	0x3fd80b0f27bb2fec              # double 0.37567499999999998
	.quad	0x3fdda47ecfe9b7bf              # double 0.46316499999999999
	.quad	0x3fe57d5ed06fef7c              # double 0.67155399999999998
	.quad	0x3fba006d0d49949f              # double 0.10156900000000001
	.quad	0x3fba5dd095af294e              # double 0.102994
	.quad	0x3fee122fad6cb535              # double 0.93972
	.quad	0x3fee9fea8112ba17              # double 0.95702100000000001
	.quad	0x3fb076d117b5286b              # double 0.064312999999999995
	.quad	0x3fc08ede54b48d3b              # double 0.12936
	.quad	0x3fd777036c9c0a8d              # double 0.36663899999999999
	.quad	0x3fdf4959e6256367              # double 0.48885200000000001
	.quad	0x3feb8cae642bf983              # double 0.86092299999999999
	.quad	0x3fcf04ab606b7aa2              # double 0.24232999999999999
	.quad	0x3fe85e33269df97b              # double 0.76149900000000004
	.quad	0x3fe15256798958da              # double 0.54130100000000003
	.quad	0x3fd141d084e831ad              # double 0.26964199999999999
	.quad	0x3fe567c8d195896a              # double 0.66891900000000004
	.quad	0x3fb0cdfaca361998              # double 0.065643000000000007
	.quad	0x3fd273affb04ee7c              # double 0.28831099999999998
	.quad	0x3fdfc6f7a0b5ed8d              # double 0.49651899999999999
	.quad	0x3fc3445ed4a1ad64              # double 0.15052399999999999
	.quad	0x3feeb2dd377e1b8f              # double 0.95933400000000002
	.quad	0x3fe08a958537e2c5              # double 0.51691699999999996
	.quad	0x3fdc5186db50f40e              # double 0.44247599999999998
	.quad	0x3fef09118c197e56              # double 0.96985699999999997
	.quad	0x3fe91c36976bc1f0              # double 0.784694
	.quad	0x3fe74da09cc319c6              # double 0.72822600000000004
	.quad	0x3fb5f1f14983d790              # double 0.085722999999999993
	.quad	0x3fb1bccaf709b739              # double 0.069287000000000001
	.quad	0x3feec842fa509396              # double 0.96194599999999997
	.quad	0x3fcaa8b08dd1e53b              # double 0.20827300000000001
	.quad	0x3fe95ee34fc610f1              # double 0.79283300000000001
	.quad	0x3fe76353f7ced917              # double 0.73087500000000005
	.quad	0x3fb11d9b1b79d90a              # double 0.066858000000000001
	.quad	0x3fee1e4b44a1f080              # double 0.94119799999999998
	.quad	0x3fcd65fd8adab9f5              # double 0.22967499999999999
	.quad	0x3faaf23033a4723b              # double 0.052629000000000002
	.quad	0x3fb7c914b167ec78              # double 0.092911999999999995
	.quad	0x3fee2b4528283d36              # double 0.94278200000000001
	.quad	0x3fd9c33b5393250b              # double 0.40254099999999998
	.quad	0x3fc6d3a604e1e710              # double 0.17833399999999999
	.quad	0x3fe0b736cdf266ba              # double 0.52236499999999997
	.quad	0x3fc8fb6dca07f66f              # double 0.19517300000000001
	.quad	0x3fe6f16b11c6d1e1              # double 0.71697
	.quad	0x3fbcf398e9707182              # double 0.113092
	.quad	0x3fde13660e51d25b              # double 0.46993400000000002
	.quad	0x3fd8f7985271bcdc              # double 0.39011200000000001
	.quad	0x3fe31e30014f8b59              # double 0.59743500000000005
	.quad	0x3fd30fbeb9e492bc              # double 0.29783599999999999
	.quad	0x3fd4f505d0fa58f7              # double 0.327455
	.quad	0x3fda994e1a3f4667              # double 0.415607
	.quad	0x3f8bb4916ca46e09              # double 0.013528
	.quad	0x3fb6ebc408d8ec96              # double 0.089535000000000003
	.quad	0x3fe3d7060bb2bbaa              # double 0.61999800000000005
	.quad	0x3fe1a24463065f96              # double 0.55105800000000005
	.quad	0x3fe579f01b866e44              # double 0.67113500000000004
	.quad	0x3feef2c3009b3073              # double 0.96713400000000004
	.quad	0x3fe3eadf71eafee7              # double 0.622421
	.quad	0x3fdd0a808c8259e2              # double 0.453766
	.quad	0x3fd93397dd00f777              # double 0.39377400000000001
	.quad	0x3fd6b0fadf2ecf20              # double 0.35455199999999998
	.quad	0x3fd19e2bcf91a32b              # double 0.275279
	.quad	0x3f68a43bb40b34e7              # double 0.0030079999999999998
	.quad	0x3feb92dfd694ccab              # double 0.86167899999999997
	.quad	0x3fd6778140dd3fe2              # double 0.35104400000000002
	.quad	0x3fe332617c1bda51              # double 0.59989999999999999
	.quad	0x3fef7bedb7281fda              # double 0.98387800000000003
	.quad	0x3fc8eba27ae9ab2a              # double 0.194691
	.quad	0x3fcbc90c4dec1c1d              # double 0.21707299999999999
	.quad	0x3fefd2f5dbb9cf9a              # double 0.994502
	.quad	0x3fecec7000431bdf              # double 0.90386200000000005
	.quad	0x3fc003bc4d22c882              # double 0.125114
	.quad	0x3fd68cfbfc6540cc              # double 0.35235499999999997
	.quad	0x3f921a2e7f6f4be8              # double 0.017677999999999999
	.quad	0x3fe067168f8e7ddd              # double 0.51258400000000004
	.quad	0x3fc3bcec84f8f8a5              # double 0.15420300000000001
	.quad	0x3fec18548a9bcfd5              # double 0.87797000000000003
	.quad	0x3fc4f05a708ede55              # double 0.16358500000000001
	.quad	0x3fd13033a4723ab0              # double 0.268567
	.quad	0x3fdebce8533b1077              # double 0.48027999999999998
	.quad	0x3fd378140dd3fe19              # double 0.30420399999999997
	.quad	0x3fdf6dce39b456b4              # double 0.49107699999999999
	.quad	0x3fe6294bbe4473cd              # double 0.69254099999999996
	.quad	0x3fefcc7b02d59d56              # double 0.99371100000000001
	.quad	0x3fe351244a6223e2              # double 0.60365500000000005
	.quad	0x3fd36f1561911490              # double 0.30365500000000001
	.quad	0x3fe485a921ccd962              # double 0.641316
	.quad	0x3fb48f53c579f234              # double 0.080311999999999995
	.quad	0x3fe3f51ac9afe1da              # double 0.62366999999999995
	.quad	0x3fdff67f4dbdf8f4              # double 0.49941999999999998
	.quad	0x3fe7c64345cfede9              # double 0.74295199999999995
	.quad	0x3fc728bf3bea91da              # double 0.18093100000000001
	.quad	0x3fa2eff5c6c11a11              # double 0.036986999999999999
	.quad	0x3fcf8d2e514c22ee              # double 0.24649599999999999
	.quad	0x3fdeac96cc5fbf83              # double 0.47928399999999999
	.quad	0x3fd36c2efd438d1e              # double 0.30347800000000003
	.quad	0x3fba2a6f3f52fc26              # double 0.10221
	.quad	0x3fdd8e10cf5b1c86              # double 0.46179599999999998
	.quad	0x3feba43137b07076              # double 0.86379300000000003
	.quad	0x3fee7383f0bae89f              # double 0.95160100000000003
	.quad	0x3fe5c1919ac79703              # double 0.67987900000000001
	.quad	0x3fea6b4a66559f6f              # double 0.82559700000000003
	.quad	0x3fe5d62174c4cdfb              # double 0.68238900000000002
	.quad	0x3fd851d68c692f6f              # double 0.37999500000000003
	.quad	0x3fd13dfb0d51f81a              # double 0.26940799999999998
	.quad	0x3fd93e0370cdc875              # double 0.39440999999999998
	.quad	0x3fe51fbc5de9c023              # double 0.66012400000000004
	.quad	0x3fed55193708aac9              # double 0.91663799999999995
	.quad	0x3fd95f2452c59fb2              # double 0.39643200000000001
	.quad	0x3fe4cf312b1b36bd              # double 0.65029199999999998
	.quad	0x3feba7d45a5fc7e7              # double 0.86423700000000003
	.quad	0x3fe59c347e8ccdd9              # double 0.67531799999999997
	.quad	0x3feff62d83c6c97e              # double 0.99880100000000005
	.quad	0x3fdf9a8cdea033e8              # double 0.49380800000000002
	.quad	0x3fd1eb5b2d4d4025              # double 0.27999000000000002
	.quad	0x3fc700abf76a2f49              # double 0.17970800000000001
	.quad	0x3fc94a4d2b2bfdb5              # double 0.19758000000000001
	.quad	0x3fdbc8bc9cd3e0bd              # double 0.43412699999999999
	.quad	0x3fc949adc8fb86f4              # double 0.19756099999999999
	.quad	0x3fe6048beb5b2d4d              # double 0.68805499999999997
	.quad	0x3fe5e6adb402d16c              # double 0.68440900000000005
	.quad	0x3fe3c028e4fb97bb              # double 0.61720699999999995
	.quad	0x3fd1af709b738e6d              # double 0.276333
	.quad	0x3fd860780fdc1616              # double 0.380888
	.quad	0x3fe135a426bb55ac              # double 0.537798
	.quad	0x3fa871c53f39d1b3              # double 0.047743000000000001
	.quad	0x3fd6d940789613d3              # double 0.35700999999999999
	.quad	0x3fc8ebfec13b9f12              # double 0.19470199999999999
	.quad	0x3fdbd33d29563a9f              # double 0.43476799999999999
	.quad	0x3fd75ff609dcf894              # double 0.365232
	.quad	0x3fd9343b70ef5665              # double 0.39381300000000002
	.quad	0x3fe0576cce5f7404              # double 0.51067200000000001
	.quad	0x3fe68aa64c2f837b              # double 0.70442499999999997
	.quad	0x3fd1268d32830a0b              # double 0.26797799999999999
	.quad	0x3fcaa17b0f6ad70e              # double 0.20805299999999999
	.quad	0x3feff9e9d0e991ff              # double 0.99925699999999995
	.quad	0x3fe26618ce2d1f1d              # double 0.574963
	.quad	0x3fb6c3c9eecbfb16              # double 0.088925000000000004
	.quad	0x3fe731897a67a52b              # double 0.72479700000000002
	.quad	0x3feaaab042528ae7              # double 0.83333599999999997
	.quad	0x3fecb201040bfe3b              # double 0.896729
	.quad	0x3fe9acc92146a1a5              # double 0.802342
	.quad	0x3fed80841ede1199              # double 0.92193800000000004
	.quad	0x3fddc99ae924f228              # double 0.46543000000000001
	.quad	0x3fcdd798d8a979e1              # double 0.23314199999999999
	.quad	0x3fd1c093d9663843              # double 0.27737899999999999
	.quad	0x3fc88aa433508f65              # double 0.19173100000000001
	.quad	0x3fed57214f0520d1              # double 0.91688599999999998
	.quad	0x3fe4b242070b8cfc              # double 0.64676
	.quad	0x3fe85d50a88effe3              # double 0.76139100000000004
	.quad	0x3f520e1f7d73c925              # double 0.0011019999999999999
	.quad	0x3fd8ccaf709b738e              # double 0.38749299999999998
	.quad	0x3fec77c243dccea3              # double 0.88961900000000005
	.quad	0x3fe1cdc8754f3776              # double 0.55637000000000003
	.quad	0x3fcb403dddb1209f              # double 0.212898
	.quad	0x3fe355970b49e01e              # double 0.60419800000000001
	.quad	0x3fec74dbdf8f4730              # double 0.88926499999999997
	.quad	0x3fdc72d1aeb3dd12              # double 0.44450800000000001
	.quad	0x3fd2dfb506dd69d3              # double 0.294904
	.quad	0x3fe8aa2c2374794f              # double 0.77077300000000004
	.quad	0x3fc7fe4bcad9ad86              # double 0.187448
	.quad	0x3fdcf901083dbc23              # double 0.45269799999999999
	.quad	0x3fe6821294573a79              # double 0.70337799999999995
	.quad	0x3fcfa6f826edaa93              # double 0.247283
	.quad	0x3fd56f0cfe154435              # double 0.33490300000000001
	.quad	0x3feedddf43c7d5ed              # double 0.96458399999999999
	.quad	0x3fc811a11233df2b              # double 0.18803800000000001
	.quad	0x3fc66d5065732160              # double 0.17521100000000001
	.quad	0x3fccaf1455219a84              # double 0.22409299999999999
	.quad	0x3fe1c0746455eaee              # double 0.55474299999999999
	.quad	0x3fd6abb01c92ddbe              # double 0.35422900000000002
	.quad	0x3fd6620685553ef7              # double 0.34973300000000002
	.quad	0x3fef45bd0e12e83a              # double 0.97726299999999999
	.quad	0x3fddeefe4ffc9796              # double 0.46771200000000002
	.quad	0x3febb3dd11be6e65              # double 0.86570599999999998
	.quad	0x3fe0b6bd2b6f1993              # double 0.52230699999999997
	.quad	0x3fe15a250f840182              # double 0.54225400000000001
	.quad	0x3fe879dd3bafd977              # double 0.764876
	.quad	0x3f98cd63cb817332              # double 0.024220999999999999
	.quad	0x3fba3ad18d25edd0              # double 0.10246
	.quad	0x3fea8aaa7ded6ba9              # double 0.82942700000000003
	.quad	0x3fc8ec41dd1a21ea              # double 0.19470999999999999
	.quad	0x3fd84ccab3edd8b6              # double 0.379687
	.quad	0x3fdadeb52c9d16fd              # double 0.41984300000000002
	.quad	0x3fe7418b502ababf              # double 0.72675100000000004
	.quad	0x3fd909bb6aa4b988              # double 0.39121899999999998
	.quad	0x3fd6a7ce0fc2eba2              # double 0.35399199999999997
	.quad	0x3fd6e25c810a569b              # double 0.35756599999999999
	.quad	0x3fdd65ba6efc371e              # double 0.45933400000000002
	.quad	0x3fee8870110a137f              # double 0.95415499999999998
	.quad	0x3fdd06dd69d30271              # double 0.453544
	.quad	0x3fefc60029f16b12              # double 0.99292000000000002
	.quad	0x3fd5160d887ebf23              # double 0.32947100000000001
	.quad	0x3fbd014b599aa609              # double 0.113301
	.quad	0x3fd37bd8be7296f6              # double 0.30443399999999998
	.quad	0x3fa58ea7ce0fc2ec              # double 0.042104000000000003
	.quad	0x3fefb8561d4306e6              # double 0.99125200000000002
	.quad	0x3fe96368f08461fa              # double 0.79338500000000001
	.quad	0x3fef91d14e3bcd36              # double 0.98655000000000004
	.quad	0x3fe1b4b51372a38c              # double 0.55330900000000005
	.quad	0x3fc485a0be510907              # double 0.160328
	.quad	0x3fd9c065b63d3e4f              # double 0.402368
	.quad	0x3fd0cd4ed2cbea4f              # double 0.26253100000000001
	.quad	0x3fd5935b91f70de9              # double 0.337119
	.quad	0x3fbeab5807fed203              # double 0.11980200000000001
	.quad	0x3fd0c2dadb8348f5              # double 0.26189299999999999
	.quad	0x3fe0d2e946801712              # double 0.52574600000000005
	.quad	0x3fd8c5ef62f9ca5c              # double 0.38708100000000001
	.quad	0x3fd6709fa54c5543              # double 0.35062399999999999
	.quad	0x3fdb6bb98c7e2824              # double 0.42845
	.quad	0x3fc86c8711d798d9              # double 0.19081200000000001
	.quad	0x3f86922d948dc11e              # double 0.011021
	.quad	0x3fe819dece571088              # double 0.75315799999999999
	.quad	0x3fe83e5753a3ec03              # double 0.75761000000000001
	.quad	0x3fc16bdb1a6d6990              # double 0.136104
	.quad	0x3fd9a5d6bebe1651              # double 0.40074700000000002
	.quad	0x3fcb8b9346994185              # double 0.215197
	.quad	0x3fe293059641f645              # double 0.58044700000000005
	.quad	0x3fe9903ea704bc27              # double 0.79885799999999996
	.quad	0x3fd1bba98eda22f7              # double 0.27707900000000002
	.quad	0x3f8f8f47304039ac              # double 0.01541
	.quad	0x3fe76c8b43958106              # double 0.73199999999999998
	.quad	0x3fedd64f97edc7ef              # double 0.93241099999999999
	.quad	0x3fe3535c9e6687f4              # double 0.60392599999999996
	.quad	0x3fe09fd1569f4906              # double 0.519509
	.quad	0x3fc10ee49f51697f              # double 0.133267
	.quad	0x3fe91c4545846e8f              # double 0.78470099999999998
	.quad	0x3fa5a9003eea209b              # double 0.042305000000000002
	.quad	0x3fbe743a647fdc59              # double 0.118961
	.quad	0x3fb1b5fa22706d50              # double 0.069182999999999995
	.quad	0x3fdceed45e9185cf              # double 0.45207700000000001
	.quad	0x3fe7b84988094e5d              # double 0.74124599999999996
	.quad	0x3fde57e23f24d8fd              # double 0.47411399999999998
	.quad	0x3fd520a73f748a16              # double 0.33011800000000002
	.quad	0x3fd6d2c386d2ed78              # double 0.35661399999999999
	.quad	0x3fe5140357a35504              # double 0.65869299999999997
	.quad	0x3fa5aec4a4095f24              # double 0.042348999999999998
	.quad	0x3fee35b0bbf50e34              # double 0.94405399999999994
	.quad	0x3fa7d82773e24fec              # double 0.046571000000000001
	.quad	0x3fd031c64ba94bbe              # double 0.25303799999999999
	.quad	0x3fef6136e71cda2b              # double 0.98061699999999996
	.quad	0x3fcbda597d49d7ba              # double 0.21760099999999999
	.quad	0x3fe1a2c450268901              # double 0.55111900000000003
	.quad	0x3fe6f676ea422899              # double 0.71758599999999995
	.quad	0x3f95e28aa433508f              # double 0.021371999999999999
	.quad	0x3fe59dcd7060bb2c              # double 0.67551300000000003
	.quad	0x3fd0154866a11ec9              # double 0.25129899999999999
	.quad	0x3fd6c60cbf2b239a              # double 0.35583799999999999
	.quad	0x3fd940d0aaa7ded7              # double 0.39458100000000002
	.quad	0x3fe3b3fa6defc7a4              # double 0.61572000000000005
	.quad	0x3fd1157eed45e918              # double 0.26693699999999998
	.quad	0x3fe5ecaab8a5ce5b              # double 0.68513999999999997
	.quad	0x3fe70389f83be660              # double 0.71918199999999999
	.quad	0x3fe229dc725c3dee              # double 0.56760999999999995
	.quad	0x3fe94d6e47dc37a4              # double 0.79070200000000001
	.quad	0x3fe13e5fb71fbc5e              # double 0.53886400000000001
	.quad	0x3fd9fc58ab92c062              # double 0.40602700000000003
	.quad	0x3fed045fe1112770              # double 0.90678400000000003
	.quad	0x3febbcc2938de6de              # double 0.86679200000000001
	.quad	0x3fabf01322f27350              # double 0.054566000000000003
	.quad	0x3fb4a88effe2a3cf              # double 0.080697000000000005
	.quad	0x3fe840bdcad14a0a              # double 0.75790299999999999
	.quad	0x3fe80d4bad7d7c2d              # double 0.75162300000000004
	.quad	0x3fe32c9081c2e33f              # double 0.59919
	.quad	0x3feb294bbe4473cd              # double 0.84879099999999996
	.quad	0x3fe7c7c5260f5e42              # double 0.74313600000000002
	.quad	0x3fe84024b33daf8e              # double 0.75783
	.quad	0x3fd781f53825e13b              # double 0.36730699999999999
	.quad	0x3fd7c9752977c88e              # double 0.37167099999999997
	.quad	0x3fe759dfdac68a93              # double 0.72972099999999995
	.quad	0x3fe9307d0aed99cc              # double 0.787169
	.quad	0x3feec0df58c08b76              # double 0.96104400000000001
	.quad	0x3fd5312b1b36bd2b              # double 0.33112599999999998
	.quad	0x3fe371e8e6080735              # double 0.60765499999999995
	.quad	0x3fcbca8e2e2b8c76              # double 0.21711900000000001
	.quad	0x3fef9932d6ece13f              # double 0.98745099999999996
	.quad	0x3fe9566f0cfe1544              # double 0.79180099999999997
	.quad	0x3fe8fdf19d66adb4              # double 0.78099899999999999
	.quad	0x3fefe92f6e82949a              # double 0.99721499999999996
	.quad	0x3fe0afea3df6db94              # double 0.52147399999999999
	.quad	0x3fee6eefa1e3eaf7              # double 0.95104200000000005
	.quad	0x3fe9eae9ee45c359              # double 0.80992600000000003
	.quad	0x3fee86fac6045baf              # double 0.95397699999999996
	.quad	0x3fe7399d451fc4c1              # double 0.72578299999999996
	.quad	0x3fd71bc558644524              # double 0.36107
	.quad	0x3fd3df69878316a0              # double 0.31051099999999998
	.quad	0x3fd132f87ad080b6              # double 0.26873599999999997
	.quad	0x3fe25ad31fcd24e1              # double 0.57358699999999996
	.quad	0x3fadbbe0157eed46              # double 0.058074000000000001
	.quad	0x3f6882adc4c9c90c              # double 0.0029919999999999999
	.quad	0x3fd544ae85b9e8c4              # double 0.33231699999999997
	.quad	0x3fe790a137f38c54              # double 0.73640499999999998
	.quad	0x3fc6ccf6be37de94              # double 0.17813000000000001
	.quad	0x3fad16fc9bc77143              # double 0.056815999999999998
	.quad	0x3fec1c10d7be9857              # double 0.87842600000000004
	.quad	0x3fad7ff9b56323bc              # double 0.057617000000000002
	.quad	0x3feff3ade225fa66              # double 0.99849600000000005
	.quad	0x3fd2a35935fc3b4f              # double 0.29121999999999998
	.quad	0x3fe0d6cd6c2efd44              # double 0.52622100000000005
	.quad	0x3fba0f4d7add15f0              # double 0.101796
	.quad	0x3fbe9003eea209ab              # double 0.11938500000000001
	.quad	0x3fcfffac1d29dc72              # double 0.24998999999999999
	.quad	0x3fe4c189374bc6a8              # double 0.64862500000000001
	.quad	0x3fd20f55de58e64b              # double 0.28218599999999999
	.quad	0x3fea87d0aed99cbf              # double 0.82907900000000001
	.quad	0x3fe5f9b994e1a3f4              # double 0.68673399999999996
	.quad	0x3fe9f5536933a040              # double 0.81119699999999995
	.quad	0x3fe3543aeab7995f              # double 0.60403200000000001
	.quad	0x3fe319bb2788db05              # double 0.59689099999999995
	.quad	0x3fec82773e24febd              # double 0.890926
	.quad	0x3fe93fb3743632c2              # double 0.78902600000000001
	.quad	0x3febc386d2ed783e              # double 0.867618
	.quad	0x3fe8c8ffb8b26395              # double 0.774536
	.quad	0x3fe63ff25e56cd6c              # double 0.69530599999999998
	.quad	0x3fdf63992c8c5005              # double 0.490454
	.quad	0x3feea5dd095af295              # double 0.95774700000000001
	.quad	0x3feaa14057082492              # double 0.83218400000000003
	.quad	0x3fd24245f5ad96a7              # double 0.28529500000000002
	.quad	0x3fafc49fd7a13c25              # double 0.062046999999999998
	.quad	0x3fe55a1016ce789e              # double 0.66724399999999995
	.quad	0x3fec29e90795f677              # double 0.88011600000000001
	.quad	0x3fe8d72799a1fd15              # double 0.77626399999999995
	.quad	0x3fd55cee17a02fb6              # double 0.33379700000000001
	.quad	0x3fd4dc0db2702a35              # double 0.32593100000000003
	.quad	0x3fe61cc100e6afcd              # double 0.69101000000000001
	.quad	0x3fd773c0c1fc8f32              # double 0.36643999999999999
	.quad	0x3fe997481b21c476              # double 0.79971700000000001
	.quad	0x3fe950efdc9c4da9              # double 0.79113
	.quad	0x3fcddd3bafd976ff              # double 0.23331399999999999
	.quad	0x3fde999dcb5781c7              # double 0.478126
	.quad	0x3feb47064ece9a2c              # double 0.85241999999999995
	.quad	0x3fe96ee30caa326e              # double 0.79478599999999999
	.quad	0x3fe006f47b677f6b              # double 0.50084899999999999
	.quad	0x3fef8848387df5cf              # double 0.98538599999999998
	.quad	0x3fbd4e7ee9142b30              # double 0.114479
	.quad	0x3fe82ce032db1e9f              # double 0.75547799999999998
	.quad	0x3fd73ef284167a96              # double 0.36321700000000001
	.quad	0x3feeeddaceee0f3d              # double 0.96653500000000003
	.quad	0x3fe90ac5c13fd0d0              # double 0.78256499999999996
	.quad	0x3fda06bbdbe3c105              # double 0.40666099999999999
	.quad	0x3fdc0e7ff583a53c              # double 0.43838500000000002
	.quad	0x3fe9b1f255f3519c              # double 0.80297200000000001
	.quad	0x3fe74d551d68c693              # double 0.72819
	.quad	0x3fbfbbb62413db7f              # double 0.123958
	.quad	0x3fdd98fa376922d9              # double 0.46246199999999998
	.quad	0x3feb8e4da09cc31a              # double 0.86112100000000003
	.quad	0x3fc94fe79ee02a78              # double 0.19775100000000001
	.quad	0x3fed6aceaaf35e31              # double 0.91928799999999999
	.quad	0x3fbd043e5321e604              # double 0.113346
	.quad	0x3fc32934acaff6d3              # double 0.14969499999999999
	.quad	0x3fe8a2dd7a99fa12              # double 0.76988100000000004
	.quad	0x3fef6308787485e4              # double 0.98083900000000001
	.quad	0x3fc481882adc4c9d              # double 0.16020300000000001
	.quad	0x3f63059641f64495              # double 0.0023219999999999998
	.quad	0x3f774927913e8145              # double 0.0056849999999999999
	.quad	0x3fe01e18efbb0e5e              # double 0.50367399999999996
	.quad	0x3fe7494f69ca9ef5              # double 0.72769899999999998
	.quad	0x3feaaf0e0a84be40              # double 0.83386899999999997
	.quad	0x3f901c0ca600b029              # double 0.015731999999999999
	.quad	0x3fd176b3bb83cf2d              # double 0.27287
	.quad	0x3fc4fdeb52c9d170              # double 0.16399900000000001
	.quad	0x3fd69a2c669057d1              # double 0.35315999999999997
	.quad	0x3fd58d25edd05293              # double 0.33673999999999998
	.quad	0x3fd6d3bafd976ff4              # double 0.35667300000000002
	.quad	0x3fdf1deefe4ffc98              # double 0.48620200000000002
	.quad	0x3fde86a4ca4f440b              # double 0.476968
	.quad	0x3fdb6ca03c4b09ea              # double 0.42850500000000002
	.quad	0x3fd84c447c30d307              # double 0.37965500000000002
	.quad	0x3fa814b599aa6091              # double 0.047032999999999998
	.quad	0x3fe1c36b8f9b1316              # double 0.55510499999999996
	.quad	0x3fd590d9d7774aba              # double 0.33696599999999999
	.quad	0x3fe6eb313be22e5e              # double 0.71621000000000001
	.quad	0x3fd29cf56eac8605              # double 0.29082999999999998
	.quad	0x3fe43f444e0daa0d              # double 0.63272300000000004
	.quad	0x3fcc8461f9f01b86              # double 0.22278999999999999
	.quad	0x3fd492189bd8383b              # double 0.32141700000000001
	.quad	0x3fd4f51ac9afe1da              # double 0.32745999999999997
	.quad	0x3fe388e9b38d60a6              # double 0.61046299999999998
	.quad	0x3fe9f1151611ba3d              # double 0.81067900000000004
	.quad	0x3fd06ec5b078d930              # double 0.25676100000000002
	.quad	0x3fea21db877ab325              # double 0.81663300000000005
	.quad	0x3fce5ffa3b9ae0c1              # double 0.23730399999999999
	.quad	0x3fe57afea3df6db9              # double 0.67126399999999997
	.quad	0x3fd3d54da4ce8102              # double 0.309894
	.quad	0x3feef401c4fc1df3              # double 0.96728599999999997
	.quad	0x3fe41ec2ce464990              # double 0.62875499999999995
	.quad	0x3fd881e8a2ec28b3              # double 0.38292900000000002
	.quad	0x3fea97635e74299e              # double 0.83098000000000005
	.quad	0x3fcea47ecfe9b7bf              # double 0.239395
	.quad	0x3fe7e1a3f4666eca              # double 0.74629400000000001
	.quad	0x3fc8e94680171194              # double 0.19461899999999999
	.quad	0x3fd456605ee568a5              # double 0.317772
	.quad	0x3fe8061847f56217              # double 0.75074399999999997
	.quad	0x3fe1b09e98dcdb38              # double 0.55281000000000002
	.quad	0x3fe195d701d9f4d3              # double 0.54954099999999995
	.quad	0x3fef79b13165d399              # double 0.98360499999999995
	.quad	0x3fe7d8383ad9f0a2              # double 0.74514400000000003
	.quad	0x3fbed3c792d1287c              # double 0.120419
	.quad	0x3fe923db3bfb58d1              # double 0.78562699999999996
	.quad	0x3fb85db76b3bb83d              # double 0.095180000000000001
	.quad	0x3fe4fd113836a833              # double 0.65589200000000003
	.quad	0x3fe3b8f36694898f              # double 0.61632699999999996
	.quad	0x3fd20b3d4ae429e1              # double 0.28193600000000002
	.quad	0x3fe62dd590c0ad04              # double 0.69309500000000002
	.quad	0x3fe7b838c111ada7              # double 0.74123799999999995
	.quad	0x3fc2800eae18ac9f              # double 0.14453299999999999
	.quad	0x3fe53fb9bed30f06              # double 0.66402899999999998
	.quad	0x3fe90f6ad70e6f2f              # double 0.78313200000000005
	.quad	0x3fec145b6c3760bf              # double 0.87748499999999996
	.quad	0x3fc47d5ed06fef7c              # double 0.160076
	.quad	0x3fe6ca59c065b63d              # double 0.71220099999999997
	.quad	0x3fc13458cd20afa3              # double 0.13441
	.quad	0x3fe2c7000431bde8              # double 0.58679199999999998
	.quad	0x3fe727b2cc70867b              # double 0.72359600000000002
	.quad	0x3feaa4ebdd334c5e              # double 0.83263200000000004
	.quad	0x3fcbde26916440f2              # double 0.21771699999999999
	.quad	0x3fe92b777d0f1f58              # double 0.78655600000000003
	.quad	0x3f9afc47e49b1fac              # double 0.026353000000000001
	.quad	0x3fea85b18548a9bd              # double 0.82882
	.quad	0x3febaa4b9884c6a4              # double 0.86453800000000002
	.quad	0x3fe16872b020c49c              # double 0.54400000000000004
	.quad	0x3fb5421c044284e0              # double 0.083040000000000003
	.quad	0x3fcf085f4a1272c9              # double 0.24244299999999999
	.quad	0x3fe8b9bed30f062d              # double 0.77267399999999997
	.quad	0x3fbdefb6dca07f67              # double 0.116939
	.quad	0x3fe6e848beb5b2d5              # double 0.71585500000000002
	.quad	0x3fd17a4a48f96e16              # double 0.27308900000000003
	.quad	0x3fead06bbdbe3c10              # double 0.83794199999999996
	.quad	0x3fe20ea5b530ced5              # double 0.56428800000000001
	.quad	0x3feff81c714fce74              # double 0.99903699999999995
	.quad	0x3fd809f1f14983d8              # double 0.37560700000000002
	.quad	0x3fae9a2c669057d1              # double 0.059769999999999997
	.quad	0x3f91711947cfa26a              # double 0.017033
	.quad	0x3fbb913e81450efe              # double 0.107685
	.quad	0x3fd6c669057d1783              # double 0.35586000000000001
	.quad	0x3fe8fcfe58601366              # double 0.78088299999999999
	.quad	0x3fe9883dbc23315d              # double 0.79788099999999995
	.quad	0x3fd4a13c254a3c64              # double 0.32234099999999999
	.quad	0x3fb89b738e6d15ad              # double 0.096121999999999999
	.quad	0x3fe5a9a3d2d87f88              # double 0.67695799999999995
	.quad	0x3fe49deefe4ffc98              # double 0.64427900000000005
	.quad	0x3fe1e11dbca9691a              # double 0.55872999999999995
	.quad	0x3fada597d49d7ba6              # double 0.057903999999999997
	.quad	0x3fec3545c78a6dad              # double 0.88150300000000004
	.quad	0x3feb4e7ee9142b30              # double 0.85333199999999998
	.quad	0x3fcf56eac8605682              # double 0.24484
	.quad	0x3fe8dbbe0157eed4              # double 0.77682399999999995
	.quad	0x3fd04c1ebc83a96d              # double 0.25464599999999998
	.quad	0x3fcb2007dd441355              # double 0.21191499999999999
	.quad	0x3fe423cea6c1a049              # double 0.62937100000000001
	.quad	0x3fef1d041cc532a5              # double 0.97229200000000004
	.quad	0x3fee4a66559f6ec6              # double 0.94658200000000003
	.quad	0x3fe3d271bcdbbe01              # double 0.61943899999999996
	.quad	0x3fc12018a43bb40b              # double 0.13379199999999999
	.quad	0x3feb78f47304039b              # double 0.85851500000000003
	.quad	0x3fc9e8815e39713b              # double 0.202408
	.quad	0x3fb9f71eafee6fb5              # double 0.101427
	.quad	0x3fc99cf13cee9dd8              # double 0.200102
	.quad	0x3feccd61b2a27f1b              # double 0.90007099999999995
	.quad	0x3fd22839042d8c2a              # double 0.28370499999999998
	.quad	0x3fedfa26a22b3893              # double 0.93678600000000001
	.quad	0x3f7fc2a8869c66d3              # double 0.0077539999999999996
	.quad	0x3fe4f7be121ee675              # double 0.65524199999999999
	.quad	0x3fdf3a797891e215              # double 0.48794399999999999
	.quad	0x3fe2e56473471f79              # double 0.59050199999999997
	.quad	0x3fe28b4bf8fcd680              # double 0.57950400000000002
	.quad	0x3fd9a6c5d206c871              # double 0.40080399999999999
	.quad	0x3fec14ff0025bfad              # double 0.87756299999999998
	.quad	0x3fefb62a5e785b5b              # double 0.99098699999999995
	.quad	0x3f64a4d2b2bfdb4d              # double 0.0025200000000000001
	.quad	0x3fac560c7c0f4517              # double 0.055343999999999997
	.quad	0x3fcca497fa5d28d0              # double 0.223773
	.quad	0x3fe0d8255b035bd5              # double 0.52638499999999999
	.quad	0x3fe1363f572de43f              # double 0.53787200000000002
	.quad	0x3fd3c4bd33d29564              # double 0.30888300000000002
	.quad	0x3fe126a65cf67b1c              # double 0.535968
	.quad	0x3feea1d96e9bbf0e              # double 0.95725700000000002
	.quad	0x3fe0aac96cc5fbf8              # double 0.52084799999999998
	.quad	0x3fc61e14bdfd2631              # double 0.172793
	.quad	0x3fcd8793dd97f62b              # double 0.23069999999999999
	.quad	0x3fc8fe79ee02a77a              # double 0.195266
	.quad	0x3fed14ad362e9036              # double 0.90877399999999997
	.quad	0x3fd343e5321e603d              # double 0.30101899999999998
	.quad	0x3fc309c7ffde7211              # double 0.14873600000000001
	.quad	0x3fdbe79aae6c8f75              # double 0.43601099999999998
	.quad	0x3fd0ed916872b021              # double 0.26450000000000001
	.quad	0x3fcbfc8f32378ab1              # double 0.21864500000000001
	.quad	0x3fe463ef284167a9              # double 0.63719899999999996
	.quad	0x3fd32fd32c625e9a              # double 0.299794
	.quad	0x3febf74256bca537              # double 0.87393299999999996
	.quad	0x3fecd65a14488c61              # double 0.90116600000000002
	.quad	0x3fee7d2a62aa1944              # double 0.95277900000000004
	.quad	0x3fb3aa1511dffc54              # double 0.076813999999999993
	.quad	0x3fb7293d102bc72e              # double 0.090472999999999997
	.quad	0x3feaca42aed13943              # double 0.83718999999999999
	.quad	0x3fe437414a4d2b2c              # double 0.631745
	.quad	0x3fb413ec460ed80a              # double 0.078428999999999998
	.quad	0x3feca29c779a6b51              # double 0.89485000000000003
	.quad	0x3fe6a77e5eaab042              # double 0.70794599999999996
	.quad	0x3fc21b64e054690e              # double 0.141461
	.quad	0x3fe3ccec41dd1a22              # double 0.61876500000000001
	.quad	0x3fc2178705425f20              # double 0.141343
	.quad	0x3fee605ab3aabcd8              # double 0.94926200000000005
	.quad	0x3fbe2424a276b7ed              # double 0.117739
	.quad	0x3fd8f190d173fb7a              # double 0.38974399999999998
	.quad	0x3fd296a6a012599f              # double 0.29044500000000001
	.quad	0x3fd444a1f080303c              # double 0.316689
	.quad	0x3fdc93ee5eedcc21              # double 0.44652900000000001
	.quad	0x3faea161e4f765fe              # double 0.059825000000000003
	.quad	0x3feb7d113836a833              # double 0.85901700000000003
	.quad	0x3fa08398a65492ff              # double 0.032253999999999998
	.quad	0x3fe6ed783dff3f10              # double 0.71648800000000001
	.quad	0x3fd3b1183b60285f              # double 0.30768400000000001
	.quad	0x3fd51f255f3519bd              # double 0.33002599999999999
	.quad	0x3fd14bbe4473cd57              # double 0.27024799999999999
	.quad	0x3fd483a96d4c33b5              # double 0.32053599999999999
	.quad	0x3fc287980f55de59              # double 0.144763
	.quad	0x3fe4f3c925785f8d              # double 0.65475899999999998
	.quad	0x3fe4cff21b3aeee9              # double 0.65038399999999996
	.quad	0x3fb5ecf63800218e              # double 0.085647
	.quad	0x3fd32773e24febd1              # double 0.29928300000000002
	.quad	0x3fe61c25d074213a              # double 0.69093599999999999
	.quad	0x3fd027ed84d338f8              # double 0.25243700000000002
	.quad	0x3feac8323358f2e0              # double 0.83693799999999995
	.quad	0x3fb0262456f75d9a              # double 0.063081999999999999
	.quad	0x3fea2e3821af7d31              # double 0.81814200000000004
	.quad	0x3fce00192a737111              # double 0.234378
	.quad	0x3fdcf05ea24cc682              # double 0.45217099999999999
	.quad	0x3fea0dd3fe1975f3              # double 0.81418800000000002
	.quad	0x3fde5a9a8049667b              # double 0.47427999999999998
	.quad	0x3fe31ec4e7253da7              # double 0.59750599999999998
	.quad	0x3fdfc558644523f6              # double 0.49641999999999997
	.quad	0x3fed30c4588a04d1              # double 0.91220299999999999
	.quad	0x3fd1831f03d145d8              # double 0.27362799999999998
	.quad	0x3fd11b8ed1bf7ad5              # double 0.26730700000000002
	.quad	0x3fe95f6db940fece              # double 0.79289900000000002
	.quad	0x3feafe5c91d14e3c              # double 0.84355000000000002
	.quad	0x3fed0828c36da87a              # double 0.907246
	.quad	0x3fdaeb91b3f20a74              # double 0.420628
	.quad	0x3feaf80fdc1615ec              # double 0.842781
	.quad	0x3fecd55c52e72da1              # double 0.90104499999999998
	.quad	0x3fd7b7fe08aefb2b              # double 0.37060500000000002
	.quad	0x3fe5997e56473472              # double 0.674987
	.quad	0x3feecaa53fc00970              # double 0.96223700000000001
	.quad	0x3fe1256366d7a56e              # double 0.53581400000000001
	.quad	0x3f971fff79c842fa              # double 0.022582999999999999
	.quad	0x3fe030856e696a27              # double 0.50592300000000001
	.quad	0x3feba19652bd3c36              # double 0.86347499999999999
	.quad	0x3fd9f85510d38cda              # double 0.40578199999999998
	.quad	0x3fe597fc7607c41a              # double 0.67480300000000004
	.quad	0x3fce5564b662fdfc              # double 0.236981
	.quad	0x3fd4133c1ce6c094              # double 0.31367400000000001
	.quad	0x3fe473797460242d              # double 0.639096
	.quad	0x3fd4321e603d5779              # double 0.31555899999999998
	.quad	0x3fec31d0c8041030              # double 0.881081
	.quad	0x3fcfaf533f42352f              # double 0.24753800000000001
	.quad	0x3fe8f440af1cb89d              # double 0.77981599999999995
	.quad	0x3fe4966e008e9b39              # double 0.64336300000000002
	.quad	0x3fd92f2734f82f51              # double 0.39350299999999999
	.quad	0x3f283f91e646f156              # double 1.85E-4
	.quad	0x3fcef0f9d2bf5515              # double 0.241729
	.quad	0x3fcf49b62c77574f              # double 0.24443699999999999
	.quad	0x3fa77af640639d5e              # double 0.045859999999999998
	.quad	0x3fd1d7be9856a37b              # double 0.27879300000000001
	.quad	0x3fe49bfdf7e8038a              # double 0.644042
	.quad	0x3fea917b5286b591              # double 0.83025899999999997
	.quad	0x3fd13ec892ab68cf              # double 0.269457
	.quad	0x3fd8bdad7518b0d1              # double 0.386577
	.quad	0x3fe303e20ccff21b              # double 0.59422399999999997
	.quad	0x3fd081e4712e4085              # double 0.25792799999999999
	.quad	0x3fdf7c243dccea29              # double 0.491952
	.quad	0x3fe89ae0c1765775              # double 0.76890599999999998
	.quad	0x3fcbdedf1e0828c3              # double 0.21773899999999999
	.quad	0x3fce8f10a99b6f5d              # double 0.23874100000000001
	.quad	0x3fda902de00d1b71              # double 0.41504999999999997
	.quad	0x3fc72cd7cf5f4e44              # double 0.18105599999999999
	.quad	0x3fad2999567dbb17              # double 0.056958000000000002
	.quad	0x3fe2368cef672b88              # double 0.56915899999999997
	.quad	0x3fb944cbe1eb4203              # double 0.098706000000000002
	.quad	0x3fe15de15ca6ca04              # double 0.54271000000000003
	.quad	0x3fec77db6e503fb3              # double 0.88963099999999995
	.quad	0x3fdcc13fd0d0678c              # double 0.449295
	.quad	0x3feab2b3461309c8              # double 0.834314
	.quad	0x3fa8642396073de2              # double 0.047639000000000001
	.quad	0x3fdcf20642396074              # double 0.45227200000000001
	.quad	0x3fe92caff6d33094              # double 0.78670499999999998
	.quad	0x3fb41f644955b467              # double 0.078603999999999993
	.quad	0x3fb60a73f748a15a              # double 0.086097000000000006
	.quad	0x3fbf4eca686e7e63              # double 0.122296
	.quad	0x3fde8bb0a2ca9ac3              # double 0.47727599999999998
	.quad	0x3fe151b4fe79ee03              # double 0.54122400000000004
	.quad	0x3fe7a65f0f5a1017              # double 0.73905900000000002
	.quad	0x3fed1bd8383ad9f1              # double 0.90964900000000004
	.quad	0x3fdb96dd26b723ee              # double 0.43108299999999999
	.quad	0x3fe0b39e279dd3bb              # double 0.521926
	.quad	0x3fe122ad3e920c07              # double 0.53548300000000004
	.quad	0x3fd3c393682730c6              # double 0.30881199999999998
	.quad	0x3fde8c79f666234b              # double 0.47732400000000003
	.quad	0x3fda5421c044284e              # double 0.411385
	.quad	0x3fe9b66516db0dd8              # double 0.80351499999999998
	.quad	0x3fd205c03361565c              # double 0.28160099999999999
	.quad	0x3fd9a08398a65493              # double 0.400422
	.quad	0x3fde64345cfede98              # double 0.47486600000000001
	.quad	0x3fd9a5614df8b157              # double 0.40071899999999999
	.quad	0x3feb6ca89fc6da45              # double 0.85701400000000005
	.quad	0x3feca9e0a41a261c              # double 0.895737
	.quad	0x3fedc8909289dae0              # double 0.93073300000000003
	.quad	0x3fedd5b24e9c4546              # double 0.93233600000000005
	.quad	0x3fa1c3efae7924af              # double 0.034698
	.quad	0x3f6e3864cb5bb385              # double 0.003689
	.quad	0x3fbdb4784230fcf8              # double 0.116035
	.quad	0x3fcf031055b89939              # double 0.242281
	.quad	0x3facd8127b2cc708              # double 0.056335999999999997
	.quad	0x3fc92ca57a786c22              # double 0.19667499999999999
	.quad	0x3fdbc7b02d59d55e              # double 0.43406299999999998
	.quad	0x3fa2e0e30446b69e              # double 0.036872000000000002
	.quad	0x3fdd66dbd72bcb60              # double 0.45940300000000001
	.quad	0x3feb1635610adcd3              # double 0.84646100000000002
	.quad	0x3fe2cefcbd556085              # double 0.58776700000000004
	.quad	0x3fd742e9899bf594              # double 0.36345899999999998
	.quad	0x3fe72352eb5f5f0b              # double 0.72306199999999998
	.quad	0x3fe05bb16c1e364c              # double 0.51119300000000001
	.quad	0x3fdd99aa60913a50              # double 0.46250400000000003
	.quad	0x3fe861e2de870974              # double 0.76194899999999998
	.quad	0x3feda4ebdd334c5e              # double 0.92638200000000004
	.quad	0x3fb473471f79420b              # double 0.079883999999999997
	.quad	0x3fec04fb1183b603              # double 0.87560800000000005
	.quad	0x3fd244a1f080303c              # double 0.285439
	.quad	0x3fe7b6134ce3de61              # double 0.74097599999999997
	.quad	0x3fe831422ccb3a26              # double 0.75601300000000005
	.quad	0x3fe85d3bafd976ff              # double 0.76138099999999997
	.quad	0x3fed6e8f29d40ee0              # double 0.91974599999999995
	.quad	0x3fd62da554b8bef9              # double 0.34653600000000001
	.quad	0x3fe4db291b823c86              # double 0.65175300000000003
	.quad	0x3fc303f2d3c792d1              # double 0.148558
	.quad	0x3fe216cc5fbf8338              # double 0.56528299999999998
	.quad	0x3fe736fe2e6ea854              # double 0.72546299999999997
	.quad	0x3fe334dcebfec13c              # double 0.60020300000000004
	.quad	0x3fc0c0379314445b              # double 0.13086600000000001
	.quad	0x3fbbf23cc8de2ac3              # double 0.109165
	.quad	0x3fb2cfe9b7bf1e8e              # double 0.073484999999999995
	.quad	0x3fe0810624dd2f1b              # double 0.51575000000000004
	.quad	0x3fc65fb71fbc5dea              # double 0.17479600000000001
	.quad	0x3fdbf0d413122b7c              # double 0.43657400000000002
	.quad	0x3fe5b6390c9107fb              # double 0.67849400000000004
	.quad	0x3fec8405b39e279e              # double 0.89111600000000002
	.quad	0x3fdbf8ca8198f1d4              # double 0.43706
	.quad	0x3fa6bcc6c54bcf0b              # double 0.044408999999999997
	.quad	0x3fcf2c27a63736ce              # double 0.243535
	.quad	0x3fcc7136a400fba9              # double 0.22220500000000001
	.quad	0x3fe7bb57c4e2f380              # double 0.74161900000000003
	.quad	0x3fd290539fba450b              # double 0.29005900000000001
	.quad	0x3fea83a96d4c33b5              # double 0.82857199999999998
	.quad	0x3fe45f3b645a1cac              # double 0.636625
	.quad	0x3fdccb07d0aed99d              # double 0.44989200000000001
	.quad	0x3fe0e1f3a57eaa2a              # double 0.527582
	.quad	0x3fd1dc768dfbd6a6              # double 0.27908100000000002
	.quad	0x3f83d8e0008637bd              # double 0.0096909999999999999
	.quad	0x3fedfbf61aa3f035              # double 0.93700700000000003
	.quad	0x3fee13879c4113c7              # double 0.93988400000000005
	.quad	0x3fd327c7c5260f5e              # double 0.29930299999999999
	.quad	0x3fe5089c1b54195d              # double 0.65730100000000002
	.quad	0x3feb8cb4aec8d5c7              # double 0.86092599999999997
	.quad	0x3fee682730c67169              # double 0.950214
	.quad	0x3fddea747d805e5f              # double 0.46743499999999999
	.quad	0x3fe1f1348b220792              # double 0.56069400000000003
	.quad	0x3feb475a31a4bdba              # double 0.85246
	.quad	0x3feef8f8a4c1ebc8              # double 0.96789199999999997
	.quad	0x3fd69d2bf5515055              # double 0.35334300000000002
	.quad	0x3fd0154866a11ec9              # double 0.25129899999999999
	.quad	0x3fdab445ed4a1ad6              # double 0.41725299999999999
	.quad	0x3fe484d12018a43c              # double 0.64121300000000003
	.quad	0x3fe190ecb74ddf87              # double 0.54894100000000001
	.quad	0x3fa2261bf37b8d3f              # double 0.035446999999999999
	.quad	0x3fd8743632c1f42c              # double 0.38209300000000002
	.quad	0x3fdfd45e9185cee1              # double 0.49733699999999997
	.quad	0x3fde89b0ee49f517              # double 0.47715400000000002
	.quad	0x3fcc65492ff4ba52              # double 0.22184100000000001
	.quad	0x3fdd8abd5dc40075              # double 0.46159299999999998
	.quad	0x3febf57928e0c9da              # double 0.87371500000000002
	.quad	0x3fecf8769ec2ce46              # double 0.90532999999999997
	.quad	0x3fe0e52bd3c36113              # double 0.52797499999999997
	.quad	0x3fdee4c942d490e6              # double 0.48271399999999998
	.quad	0x3fc9f0bae89eba6b              # double 0.20265900000000001
	.quad	0x3fed355cd91eeaa7              # double 0.91276400000000002
	.quad	0x3fe671b0468448cf              # double 0.70137799999999995
	.quad	0x3fa2c4934267839d              # double 0.036656000000000001
	.quad	0x3fb62c12ad81adeb              # double 0.086610000000000006
	.quad	0x3fe62788db0574b4              # double 0.692326
	.quad	0x3fa3e81450efdc9c              # double 0.038879999999999998
	.quad	0x3fe23c126a65cf68              # double 0.56983300000000003
	.quad	0x3fb276fb09203a32              # double 0.072127999999999998
	.quad	0x3febff9b56323bbc              # double 0.87495199999999995
	.quad	0x3fa767d34df04ddb              # double 0.045713999999999998
	.quad	0x3fe3dd7ecbb7f9d7              # double 0.62078800000000001
	.quad	0x3fb7400b88ca3e7d              # double 0.090820999999999999
	.quad	0x3fef83cd141a6938              # double 0.98483900000000001
	.quad	0x3fa04ff43419e300              # double 0.031859999999999999
	.quad	0x3fd6361565c2d278              # double 0.347051
	.quad	0x3fed60999dcb5782              # double 0.91804200000000002
	.quad	0x3fe69eabbcb1cc96              # double 0.70686899999999997
	.quad	0x3fe8187e7c06e19c              # double 0.75299000000000004
	.quad	0x3fe379e3864cb5bb              # double 0.60862899999999998
	.quad	0x3fda24aada33bd9d              # double 0.40848800000000002
	.quad	0x3fb0c6f7a0b5ed8d              # double 0.065535999999999997
	.quad	0x3fd07d5a9eb2074f              # double 0.25765100000000002
	.quad	0x3fe0bd944aa53fc0              # double 0.523142
	.quad	0x3feb345ae5ffa3ba              # double 0.85014100000000004
	.quad	0x3fe213dfb0d51f82              # double 0.56492600000000004
	.quad	0x3fd2ced4e4c942d5              # double 0.29387400000000002
	.quad	0x3fef0913a4f8726d              # double 0.96985799999999999
	.quad	0x3fd7f7f8ca8198f2              # double 0.37451000000000001
	.quad	0x3fcb43632c1f42bb              # double 0.21299399999999999
	.quad	0x3fd297cc39ffd60f              # double 0.29051500000000002
	.quad	0x3fe065b63d3e4ef0              # double 0.51241599999999998
	.quad	0x3fdbf7f498c3b0c4              # double 0.43700899999999998
	.quad	0x3fe0e770bd017daf              # double 0.52825200000000005
	.quad	0x3fd37fbacb428912              # double 0.30467100000000003
	.quad	0x3feaf4adbc664d3c              # double 0.842368
	.quad	0x3fe4201040bfe3b0              # double 0.62891399999999997
	.quad	0x3fd338e6d15ad107              # double 0.300348
	.quad	0x3fe59d3671ac14c6              # double 0.67544099999999996
	.quad	0x3fe2d013a92a3055              # double 0.58789999999999998
	.quad	0x3fe533c81908e582              # double 0.66257100000000002
	.quad	0x3fe3b6006d0d4995              # double 0.61596700000000004
	.quad	0x3fc45bf26f1dc50d              # double 0.159056
	.quad	0x3fe38e757928e0ca              # double 0.61114000000000002
	.quad	0x3fe9f9fcb0c026cc              # double 0.81176599999999998
	.quad	0x3fef718c9fb6134d              # double 0.98261100000000001
	.quad	0x3feed3953dea465a              # double 0.96332799999999996
	.quad	0x3f8d2630ec311623              # double 0.014233000000000001
	.quad	0x3fb5131ec0b56755              # double 0.082322999999999993
	.quad	0x3fec272862f5989e              # double 0.87978000000000001
	.quad	0x3fe487229e90795f              # double 0.64149599999999996
	.quad	0x3fd8971c10d7be98              # double 0.38422299999999998
	.quad	0x3fa004b7f5a5332b              # double 0.031286000000000001
	.quad	0x3fd94adbc664d3bf              # double 0.39519399999999999
	.quad	0x3fee432ca57a786c              # double 0.94569999999999998
	.quad	0x3fd251eb851eb852              # double 0.28625
	.quad	0x3fa865b63d3e4ef0              # double 0.047650999999999999
	.quad	0x3fa860dcb9a9da59              # double 0.047613999999999997
	.quad	0x3fef04ea4a8c154d              # double 0.96935000000000004
	.quad	0x3fe1204af922962d              # double 0.535192
	.quad	0x3fec6e73e681a9b9              # double 0.88848300000000002
	.quad	0x3feeda89b951c5c5              # double 0.96417699999999995
	.quad	0x3fe5bc7d5ed06fef              # double 0.67925899999999995
	.quad	0x3fdb3b85e80bed74              # double 0.425508
	.quad	0x3fe0915df6555c53              # double 0.51774500000000001
	.quad	0x3fc50d0edc3bd599              # double 0.164461
	.quad	0x3fe37d6f97679032              # double 0.60906199999999999
	.quad	0x3fe5e00b02928177              # double 0.68359899999999996
	.quad	0x3fda7878b7a1c25d              # double 0.413603
	.quad	0x3fe561a8262456f7              # double 0.66817099999999996
	.quad	0x3fe8785510d38cda              # double 0.76468899999999995
	.quad	0x3fd36cbd987c6328              # double 0.303512
	.quad	0x3fd8ac1d29dc725c              # double 0.38550499999999999
	.quad	0x3fe5a44a6223e187              # double 0.67630500000000005
	.quad	0x3fe9b10342aa9f7b              # double 0.80285799999999996
	.quad	0x3fa3dea465a57647              # double 0.038808000000000002
	.quad	0x3fcc003254e6e222              # double 0.21875600000000001
	.quad	0x3fee75946c332f01              # double 0.95185299999999995
	.quad	0x3fd58f10a99b6f5d              # double 0.33685700000000002
	.quad	0x3fea0140dd3fe197              # double 0.81265299999999996
	.quad	0x3f9e996312f4cf4a              # double 0.029881999999999999
	.quad	0x3fe7500f776c4828              # double 0.72852300000000003
	.quad	0x3fe9834d26fa3fcd              # double 0.79727800000000004
	.quad	0x3fecf33a8a3f8983              # double 0.90469100000000002
	.quad	0x3fe5f5fd47bedb73              # double 0.68627800000000005
	.quad	0x3fcd09741d084e83              # double 0.226851
	.quad	0x3fd92a51e321a2e8              # double 0.393208
	.quad	0x3fd94a44c7b02d5a              # double 0.39515800000000001
	.quad	0x3fe7db4cc2507208              # double 0.74551999999999996
	.quad	0x3fb7afd976ff3ade              # double 0.092526999999999998
	.quad	0x3fefffc7607c419a              # double 0.999973
	.quad	0x3fd5c3504c48adef              # double 0.34004600000000001
	.quad	0x3fe14c857f3061c8              # double 0.54059100000000004
	.quad	0x3fe4cda9003eea21              # double 0.65010500000000004
	.quad	0x3fe9b6134ce3de61              # double 0.80347599999999997
	.quad	0x3fe1d62bf11f926c              # double 0.55739399999999995
	.quad	0x3fecf954eb13dfb1              # double 0.90543600000000002
	.quad	0x3fd03c792d1287c2              # double 0.253691
	.quad	0x3fe96be7afa72218              # double 0.79442199999999996
	.quad	0x3fe60cbf2b239a39              # double 0.689056
	.quad	0x3fe9dd8f92af9a8d              # double 0.80829600000000001
	.quad	0x3fb70e4da09cc31a              # double 0.090062000000000003
	.quad	0x3fe166fb4c3c18b5              # double 0.543821
	.quad	0x3feabf3387160957              # double 0.83584000000000003
	.quad	0x3fd22b990afe60c4              # double 0.28391100000000002
	.quad	0x3feeb7952d234eba              # double 0.95991000000000004
	.quad	0x3fd4d590c0ad03da              # double 0.32553500000000002
	.quad	0x3fc7dc8323358f2e              # double 0.186417
	.quad	0x3f942a23bff8a8f4              # double 0.019692000000000001
	.quad	0x3fdf05d52c16df40              # double 0.48473100000000002
	.quad	0x3fca1f7d73c92578              # double 0.20408599999999999
	.quad	0x3fe14d3bf2f55582              # double 0.54067799999999999
	.quad	0x3fcc311e85fd04a3              # double 0.220249
	.quad	0x3fde1b2a27f1b691              # double 0.47040799999999999
	.quad	0x3fe9321a2e7f6f4c              # double 0.78736600000000001
	.quad	0x3fdb09b30728e92d              # double 0.42246699999999998
	.quad	0x3fc5b2a27f1b6912              # double 0.169514
	.quad	0x3fcbf36262cba733              # double 0.218365
	.quad	0x3fe2efa82e87d2c8              # double 0.59175500000000003
	.quad	0x3fb06d1e108c3f3e              # double 0.064165
	.quad	0x3fdbfff36ac64778              # double 0.43749700000000002
	.quad	0x3fe6e8405b39e27a              # double 0.71585100000000002
	.quad	0x3fe1a62cba732df5              # double 0.551535
	.quad	0x3fdc73929ed3953e              # double 0.444554
	.quad	0x3fef23315d701d9f              # double 0.97304599999999996
	.quad	0x3fe29ec2ce464990              # double 0.58187999999999995
	.quad	0x3fe7746aa087ca64              # double 0.73296099999999997
	.quad	0x3fe6611ba3ca7504              # double 0.69935400000000003
	.quad	0x3feb0522ea0fd3b3              # double 0.84437700000000004
	.quad	0x3fd538ac18f81e8a              # double 0.33158399999999999
	.quad	0x3fc6da4484944ed7              # double 0.178536
	.quad	0x3fe0f6683c297bfa              # double 0.53007899999999997
	.quad	0x3fe622877ee4e26d              # double 0.69171499999999997
	.quad	0x3fdc05c896dd26b7              # double 0.43785299999999999
	.quad	0x3fef2977c88e79ab              # double 0.97381200000000001
	.quad	0x3fc4fa48301a79ff              # double 0.16388800000000001
	.quad	0x3fa74f722e1ac57e              # double 0.045527999999999999
	.quad	0x3fc17774aba38759              # double 0.136458
	.quad	0x3fd911f926c7eae6              # double 0.39172200000000001
	.quad	0x3fdb36fc158fb43e              # double 0.42523100000000003
	.quad	0x3fe3aa8650e77920              # double 0.61456599999999995
	.quad	0x3fba02539756c93a              # double 0.10159799999999999
	.quad	0x3fd920817fc7607c              # double 0.39260899999999999
	.quad	0x3fedc33b5393250b              # double 0.93008199999999996
	.quad	0x3fd8996744b2b778              # double 0.38436300000000001
	.quad	0x3fec482e019b0ab3              # double 0.88381100000000001
	.quad	0x3fb6450acc0bdcad              # double 0.086990999999999999
	.quad	0x3f8f01322f2734f8              # double 0.015139
	.quad	0x3fea0b7e4de3b8a2              # double 0.81390300000000004
	.quad	0x3fb1de58e64b2314              # double 0.069799
	.quad	0x3f78622c45026890              # double 0.005953
	.quad	0x3fd0f62b6ae7d567              # double 0.26502500000000001
	.quad	0x3fec8f605ab3aabd              # double 0.89250200000000002
	.quad	0x3fd946994185058e              # double 0.39493400000000001
	.quad	0x3fe4ba8826aa8eb4              # double 0.64776999999999996
	.quad	0x3fef1a52263d816b              # double 0.97196300000000002
	.quad	0x3fdf7e670e2c12ae              # double 0.49209000000000003
	.quad	0x3fcd44028e4fb97c              # double 0.22863800000000001
	.quad	0x3fe7ea57214f0521              # double 0.74735600000000002
	.quad	0x3fd6fe718a86d71f              # double 0.35927999999999999
	.quad	0x3fe6cf70153bd167              # double 0.71282199999999996
	.quad	0x3fd49e774eebf65e              # double 0.32217200000000001
	.quad	0x3febdedaec4a4096              # double 0.87095400000000001
	.quad	0x3feb549f94855da2              # double 0.85407999999999995
	.quad	0x3feacc447c30d307              # double 0.83743500000000004
	.quad	0x3fe9461f9f01b867              # double 0.78981000000000001
	.quad	0x3fd91aa821f2990f              # double 0.39225199999999999
	.quad	0x3fe698288051c9f7              # double 0.70607399999999998
	.quad	0x3fe58995aaf78fef              # double 0.673045
	.quad	0x3fe47a7c9de05037              # double 0.63995199999999997
	.quad	0x3fdb30ced4e4c943              # double 0.42485400000000001
	.quad	0x3fe41780baa582dc              # double 0.62786900000000001
	.quad	0x3fe5f41f212d7732              # double 0.68605000000000005
	.quad	0x3fa7ecbb7f9d6f11              # double 0.046727999999999999
	.quad	0x3fec5d13d74d594f              # double 0.88636199999999998
	.quad	0x3fee634fc610f0e9              # double 0.94962299999999999
	.quad	0x3fda0c34c1a8ac5c              # double 0.406995
	.quad	0x3fdb37d1fe64f54d              # double 0.42528199999999999
	.quad	0x3fde7dae81882adc              # double 0.47642099999999998
	.quad	0x3fdc35efa615a8df              # double 0.44079200000000002
	.quad	0x3fb903b81b64e054              # double 0.097712999999999994
	.quad	0x3fc3029ae4f33440              # double 0.14851700000000001
	.quad	0x3fef63022dd7a9a0              # double 0.98083600000000004
	.quad	0x3fcce0e30446b69e              # double 0.22561300000000001
	.quad	0x3fed66e653868fd2              # double 0.91881100000000004
	.quad	0x3fd0c69728a61177              # double 0.26212099999999999
	.quad	0x3fe31fa97e132b56              # double 0.59761500000000001
	.quad	0x3fe7a94573a79789              # double 0.73941299999999999
	.quad	0x3fd8376d5497310a              # double 0.37838300000000002
	.quad	0x3fd15097c80841ee              # double 0.27054400000000001
	.quad	0x3fdf711d798d8a98              # double 0.49127900000000002
	.quad	0x3fc0fc610f0e90bc              # double 0.13270199999999999
	.quad	0x3fdef08461f9f01c              # double 0.48343000000000003
	.quad	0x3fd0dfc5cdd50a89              # double 0.263658
	.quad	0x3fec5dd8f92af9a9              # double 0.88645600000000002
	.quad	0x3fe052849cb252ce              # double 0.510073
	.quad	0x3fd5ababead4f590              # double 0.33860299999999999
	.quad	0x3fd491d9b1b79d91              # double 0.32140200000000002
	.quad	0x3fde3cd573647bab              # double 0.47246300000000002
	.quad	0x3fe987db2b346131              # double 0.79783400000000004
	.quad	0x3feed2e946801712              # double 0.96324600000000005
	.quad	0x3fdacb6848beb5b3              # double 0.41866500000000001
	.quad	0x3fdd09e12a51e322              # double 0.45372800000000002
	.quad	0x3fe9f112fd32c626              # double 0.81067800000000001
	.quad	0x3fed23e7d135115a              # double 0.91063300000000003
	.quad	0x3fdedf8b1572580c              # double 0.48239399999999999
	.quad	0x3fe01bb8c32a8c9c              # double 0.50338400000000005
	.quad	0x3feab84988094e5d              # double 0.83499599999999996
	.quad	0x3fcd8cfbfc6540cc              # double 0.23086499999999999
	.quad	0x3fea8dae3e6c4c59              # double 0.82979499999999995
	.quad	0x3fe2bcddd6e04c06              # double 0.58555500000000005
	.quad	0x3fd3cb89d6adf71f              # double 0.30929800000000002
	.quad	0x3fe6fd36f7e3d1cc              # double 0.71840999999999999
	.quad	0x3fe310752da98677              # double 0.59575900000000004
	.quad	0x3fefd59d55e6bc62              # double 0.99482599999999999
	.quad	0x3fe2872d1aeb3dd1              # double 0.57900099999999999
	.quad	0x3fe1f0bf1a5ca298              # double 0.56063799999999997
	.quad	0x3fe64588a04d1202              # double 0.69598800000000005
	.quad	0x3fbdd99029ae4f33              # double 0.116601
	.quad	0x3fc71f70de8f6cf0              # double 0.180647
	.quad	0x3f92b4528283d35f              # double 0.018266000000000001
	.quad	0x3fdddc26dce39b45              # double 0.46656199999999998
	.quad	0x3fee1b25f633ce64              # double 0.94081400000000003
	.quad	0x3fa33c3e74afd545              # double 0.037568999999999998
	.quad	0x3fe4dd2f1a9fbe77              # double 0.65200000000000002
	.quad	0x3fab2441fea8112c              # double 0.053011000000000003
	.quad	0x3fefc2acb85a4f01              # double 0.992514
	.quad	0x3fdb37824d4cb9ed              # double 0.425263
	.quad	0x3fda51c9f72f76e6              # double 0.411242
	.quad	0x3fe19b5a63f9a49c              # double 0.55021399999999998
	.quad	0x3fddc69f8c21e1d2              # double 0.46524799999999999
	.quad	0x3fcd2428d434a01b              # double 0.22766600000000001
	.quad	0x3fa434a01abd1aa8              # double 0.039463999999999999
	.quad	0x3fec35e310dbf056              # double 0.88157799999999997
	.quad	0x3fc18de6ddf00abf              # double 0.13714299999999999
	.quad	0x3fe65f41aef6f8f0              # double 0.69912799999999997
	.quad	0x3fc1acbc8c0ce91d              # double 0.13808400000000001
	.quad	0x3fdf3c4f3ba775fb              # double 0.48805599999999999
	.quad	0x3feb808c8259e1f4              # double 0.85944200000000003
	.quad	0x3fdaafd5454152b1              # double 0.41698200000000002
	.quad	0x3feacde7ea5f84cb              # double 0.83763500000000002
	.quad	0x3fdf0d73860999dd              # double 0.48519600000000002
	.quad	0x3fe66bb341e14be0              # double 0.70064700000000002
	.quad	0x3fcd74bc6a7ef9db              # double 0.230125
	.quad	0x3fab8bac710cb296              # double 0.053800000000000001
	.quad	0x3fd1c56d5cfaacda              # double 0.27767500000000001
	.quad	0x3fe2caeea63b688c              # double 0.58727200000000002
	.quad	0x3fe0f416bdb1a6d7              # double 0.52979600000000004
	.quad	0x3fdaa550870110a1              # double 0.41633999999999999
	.quad	0x3feda64e48626f61              # double 0.92655100000000001
	.quad	0x3fe3ce379b77c02b              # double 0.618923
	.quad	0x3f85a964e8b7e4de              # double 0.010577
	.quad	0x3fdc44b6e935b91f              # double 0.44169399999999998
	.quad	0x3fdab3edd8b60f1b              # double 0.41723199999999999
	.quad	0x3fe0549731098d47              # double 0.51032599999999995
	.quad	0x3fc06e5471715c64              # double 0.12836700000000001
	.quad	0x3fbed698fe69270b              # double 0.120462
	.quad	0x3fefbe3c105186db              # double 0.99197199999999996
	.quad	0x3fe16f0cfe154435              # double 0.54480600000000001
	.quad	0x3fdfbba55d1c3ac9              # double 0.49582799999999999
	.quad	0x3fd9d9e83e425aee              # double 0.40392499999999998
	.quad	0x3fdf1ed17c5ef630              # double 0.48625600000000002
	.quad	0x3fe70e0a84be4042              # double 0.72046399999999999
	.quad	0x3fcad67fd3f5b5fa              # double 0.209671
	.quad	0x3fef67924af0bf1a              # double 0.98139299999999996
	.quad	0x3fe21285a921ccd9              # double 0.56476099999999996
	.quad	0x3fe116ca46e08f21              # double 0.53403199999999995
	.quad	0x3fb895d0b73d188f              # double 0.096035999999999996
	.quad	0x3fe2e9878316a055              # double 0.59100699999999995
	.quad	0x3fd415f45e0b4e12              # double 0.31384000000000001
	.quad	0x3fe680a5accd5305              # double 0.70320400000000005
	.quad	0x3fdd15e39713ad5c              # double 0.454461
	.quad	0x3fcb8a7610279570              # double 0.21516299999999999
	.quad	0x3fc146801711947d              # double 0.134964
	.quad	0x3fe4a8d002e23290              # double 0.64560700000000004
	.quad	0x3fb7d4e09784ec63              # double 0.093091999999999994
	.quad	0x3fc04f00ef1348b2              # double 0.127411
	.quad	0x3fc7af4adbc664d4              # double 0.18503700000000001
	.quad	0x3fdcffda4052d667              # double 0.45311600000000002
	.quad	0x3f9ea747d805e5f3              # double 0.029935
	.quad	0x3fd28919ef954eb1              # double 0.28961799999999999
	.quad	0x3fb7152f3c2dadb8              # double 0.090166999999999997
	.quad	0x3fcd7867f0aa21a7              # double 0.230237
	.quad	0x3fe1af9a8cdea034              # double 0.55268600000000001
	.quad	0x3fda3ffef39085f5              # double 0.41015600000000002
	.quad	0x3fd0756c93a71151              # double 0.25716699999999998
	.quad	0x3fb50a99b6f5caf3              # double 0.082193000000000002
	.quad	0x3fb95ae1cde5d181              # double 0.099043000000000006
	.quad	0x3fed9d7ba6698bb5              # double 0.92547400000000002
	.quad	0x3f8316e371540032              # double 0.0093209999999999994
	.quad	0x3fe61394317acc4f              # double 0.68989
	.quad	0x3fdb1832fcac8e69              # double 0.42335200000000001
	.quad	0x3fc07c0f45176146              # double 0.12878600000000001
	.quad	0x3fe057d3910c2c5e              # double 0.51072099999999998
	.quad	0x3fb03382e44b6e93              # double 0.063285999999999995
	.quad	0x3fdfbbba55d1c3ad              # double 0.49583300000000002
	.quad	0x3fe7c256bca5375d              # double 0.74247300000000005
	.quad	0x3fe19b866e43aa7a              # double 0.55023500000000003
	.quad	0x3fe926bf8769ec2d              # double 0.78598000000000001
	.quad	0x3fdf4b380cb6c7a8              # double 0.48896600000000001
	.quad	0x3fe5eab7995ee137              # double 0.68490200000000001
	.quad	0x3fc9dea465a57647              # double 0.20210700000000001
	.quad	0x3fe277318fc50481              # double 0.57704999999999995
	.quad	0x3fd91deefe4ffc98              # double 0.39245200000000002
	.quad	0x3fe9214cec41dd1a              # double 0.78531499999999999
	.quad	0x3fe00c4156e264e5              # double 0.50149600000000005
	.quad	0x3feb9c2c1b10fd7e              # double 0.86281399999999997
	.quad	0x3feda55d1c3ac92a              # double 0.92643600000000004
	.quad	0x3fec7b24638c9753              # double 0.89003200000000005
	.quad	0x3fa92231832fcac9              # double 0.049089000000000001
	.quad	0x3fd90dcfcc5b8dc5              # double 0.39146799999999998
	.quad	0x3fe91e731d2e0e30              # double 0.78496699999999997
	.quad	0x3fd050331e3a7daa              # double 0.25489499999999998
	.quad	0x3feceaceaaf35e31              # double 0.90366299999999999
	.quad	0x3fbfe33acd5b6806              # double 0.12456100000000001
	.quad	0x3fcfda48b6523704              # double 0.24884899999999999
	.quad	0x3fc147cfa26a22b4              # double 0.13500400000000001
	.quad	0x3fa97bb73083558a              # double 0.049771999999999997
	.quad	0x3fd998f605ab3aac              # double 0.39996100000000001
	.quad	0x3fefc15f45e0b4e1              # double 0.99235499999999998
	.quad	0x3fc1e23f24d8fd5d              # double 0.13971700000000001
	.quad	0x3fe1ad905c033615              # double 0.55243699999999996
	.quad	0x3fdef30a4e379b78              # double 0.48358400000000001
	.quad	0x3fde8665e02ea961              # double 0.47695300000000002
	.quad	0x3fd1d2391d57ff9b              # double 0.27845599999999998
	.quad	0x3fd11c0010c6f7a1              # double 0.26733400000000002
	.quad	0x3fe29e279dd3bafe              # double 0.58180600000000005
	.quad	0x3fdb80d3cff64cf9              # double 0.42973800000000001
	.quad	0x3fd1de657b84db9c              # double 0.27919899999999997
	.quad	0x3fc3d859c8c9320e              # double 0.15504000000000001
	.quad	0x3fdb7f77af64063a              # double 0.42965500000000001
	.quad	0x3fdc7cfa26a22b39              # double 0.44512800000000002
	.quad	0x3fcc26fe718a86d7              # double 0.21994
	.quad	0x3fc7107faa044ae8              # double 0.18019099999999999
	.quad	0x3fd02b5a20ddc619              # double 0.25264599999999998
	.quad	0x3fe5c9f2fdb8fde3              # double 0.68090200000000001
	.quad	0x3fe6af61ed5ae1ce              # double 0.70890900000000001
	.quad	0x3fc7404ea4a8c155              # double 0.18165000000000001
	.quad	0x3fd17db6e503fb37              # double 0.27329799999999999
	.quad	0x3febd870da5daf08              # double 0.87017100000000003
	.quad	0x3fee947f13059642              # double 0.955627
	.quad	0x3fe6ed97b30f8c65              # double 0.716503
	.quad	0x3fd7f05a708ede55              # double 0.37404500000000002
	.quad	0x3fe825f633ce63a6              # double 0.75463400000000003
	.quad	0x3fe63f2b239a38fc              # double 0.69521100000000002
	.quad	0x3fd4811b1d92b7fe              # double 0.32038
	.quad	0x3fd95c39bcba3012              # double 0.396254
	.quad	0x3f61f0c34c1a8ac6              # double 0.0021900000000000001
	.quad	0x3fd399806f262889              # double 0.30624400000000002
	.quad	0x3fed78a2a90cd424              # double 0.92097600000000001
	.quad	0x3fd7221858bc59b8              # double 0.361456
	.quad	0x3feb0dac258d5843              # double 0.84541900000000003
	.quad	0x3fe80f1b25f633ce              # double 0.75184399999999996
	.quad	0x3fe8ecce5f7403de              # double 0.77890700000000002
	.quad	0x3fe6a03e63e8dda5              # double 0.70706100000000005
	.quad	0x3fd029cfdd228566              # double 0.252552
	.quad	0x3fed22339c0ebee0              # double 0.91042500000000003
	.quad	0x3fe8e9878316a055              # double 0.77850699999999995
	.quad	0x3fd934d6a161e4f7              # double 0.39384999999999998
	.quad	0x3fe5b15b573eab36              # double 0.67789999999999995
	.quad	0x3f87f3061c79b34a              # double 0.011694
	.quad	0x3fe76c3547e06962              # double 0.73195900000000003
	.quad	0x3faa5072085b1855              # double 0.051395000000000003
	.quad	0x3fecdb163baba7b9              # double 0.90174399999999999
	.quad	0x3fe5ca57a786c227              # double 0.68095000000000006
	.quad	0x3fe4fbb0e5e67946              # double 0.65572399999999997
	.quad	0x3fefde54b48d3ae7              # double 0.99589000000000005
	.quad	0x3fda4c76d117b528              # double 0.41091699999999998
	.quad	0x3fde0008637bd05b              # double 0.468752
	.quad	0x3fc1efb6dca07f67              # double 0.140128
	.quad	0x3fb03675ddd2ae8e              # double 0.063330999999999998
	.quad	0x3fce0e496ededaec              # double 0.23481099999999999
	.quad	0x3fdd8183f91e646f              # double 0.46103
	.quad	0x3fe47995ee136e72              # double 0.63984200000000002
	.quad	0x3fed7a3fcc9ea9a4              # double 0.92117300000000001
	.quad	0x3fe832d2bb23571d              # double 0.75620399999999999
	.quad	0x3fced6909aed56b0              # double 0.240923
	.quad	0x3fe699f5dfeb8d82              # double 0.70629399999999998
	.quad	0x3fd70afe60c38f36              # double 0.36004599999999998
	.quad	0x3fc5ac81d3aa36a0              # double 0.16932700000000001
	.quad	0x3faebe596c82e01a              # double 0.060046000000000002
	.quad	0x3fdb524bfd2e9468              # double 0.426898
	.quad	0x3fbf75104d551d69              # double 0.12288
	.quad	0x3feda0be51090710              # double 0.92587200000000003
	.quad	0x3fe03a2163fdd65a              # double 0.50709599999999999
	.quad	0x3fb5146e4c0df58c              # double 0.082343
	.quad	0x3fe6606fac6045bb              # double 0.699272
	.quad	0x3feba52ce032db1f              # double 0.86391300000000004
	.quad	0x3fd11950331e3a7e              # double 0.26717000000000002
	.quad	0x3fe0cb923a29c77a              # double 0.52485000000000004
	.quad	0x3fbd5bee3d5fdcdf              # double 0.11468399999999999
	.quad	0x3fe73497b7414a4d              # double 0.72516999999999998
	.quad	0x3fc6582dbe7f2c30              # double 0.174566
	.quad	0x3fddaf2d7f950b95              # double 0.46381699999999998
	.quad	0x3fe1379fa97e132b              # double 0.53803999999999996
	.quad	0x3fe1f3519bd4067d              # double 0.56095200000000001
	.quad	0x3fb868db8bac710d              # double 0.095350000000000004
	.quad	0x3fe6c9bc77143394              # double 0.71212600000000004
	.quad	0x3fc3c504816f0069              # double 0.15445
	.quad	0x3fe0a352eb5f5f0b              # double 0.51993699999999998
	.quad	0x3fe9b4b51372a38c              # double 0.80330900000000005
	.quad	0x3fda1fcd24e160d9              # double 0.40819100000000003
	.quad	0x3fd962bae03b3e9a              # double 0.39665099999999998
	.quad	0x3fc93c925785f8d3              # double 0.197161
	.quad	0x3fef7e6f71a7e308              # double 0.98418399999999994
	.quad	0x3fef2630ec311623              # double 0.97341200000000005
	.quad	0x3fdf2ce89656eefa              # double 0.48711599999999999
	.quad	0x3fe523fcc9ea9a3d              # double 0.66064299999999998
	.quad	0x3feca6defc7a3982              # double 0.89537
	.quad	0x3fdd81d7dbf487fd              # double 0.46105000000000002
	.quad	0x3fe1b862b27cbf6e              # double 0.55375799999999997
	.quad	0x3fef853c148344c3              # double 0.98501399999999994
	.quad	0x3fa28eb463497b74              # double 0.036244999999999999
	.quad	0x3f7a1554fbdad752              # double 0.0063680000000000004
	.quad	0x3fe5fd2a62aa1944              # double 0.68715400000000004
	.quad	0x3fc566e008e9b38d              # double 0.16720199999999999
	.quad	0x3fe65634549b62c7              # double 0.69802299999999995
	.quad	0x3fed9c886162f167              # double 0.92535800000000001
	.quad	0x3fd34d056c508b33              # double 0.30157600000000001
	.quad	0x3febde071c53f39d              # double 0.87085299999999999
	.quad	0x3fa3a5e353f7ced9              # double 0.038374999999999999
	.quad	0x3fe745996744b2b7              # double 0.72724599999999995
	.quad	0x3fedb90214ad362f              # double 0.92883400000000005
	.quad	0x3fc63704790b8499              # double 0.17355400000000001
	.quad	0x3fd4d63886594af5              # double 0.325575
	.quad	0x3fed9bed30f062d4              # double 0.92528399999999999
	.quad	0x3fce45dc8323358f              # double 0.236507
	.quad	0x3fd5c8d5c74751ce              # double 0.34038299999999999
	.quad	0x3fd7306e5cd4ed2d              # double 0.36233100000000001
	.quad	0x3fcce8ea39c51dac              # double 0.225858
	.quad	0x3fe479378ee28672              # double 0.63979699999999995
	.quad	0x3fe6ab239a38fbca              # double 0.70839099999999999
	.quad	0x3fd450a02b841249              # double 0.31742100000000001
	.quad	0x3fe95dbb9cf9a06a              # double 0.79269199999999995
	.quad	0x3feccc2938de6ddf              # double 0.899922
	.quad	0x3fd1e67d77fae361              # double 0.27969300000000002
	.quad	0x3fe429b068123811              # double 0.63008900000000001
	.quad	0x3fe832e3821af7d3              # double 0.756212
	.quad	0x3fe732d2bb23571d              # double 0.72495399999999999
	.quad	0x3fc05f9591cd1c7e              # double 0.127917
	.quad	0x3fe81e96c3fc43b3              # double 0.75373400000000002
	.quad	0x3fb6e40852b4d8ba              # double 0.089416999999999996
	.quad	0x3fec28027d88c1db              # double 0.879884
	.quad	0x3fdaeb52c9d16fca              # double 0.42061300000000001
	.quad	0x3fb295e9e1b089a0              # double 0.072599999999999998
	.quad	0x3fe95ba0a5269596              # double 0.792435
	.quad	0x3fe5c37e6f71a7e3              # double 0.680114
	.quad	0x3fcd437c5692b3cc              # double 0.22862199999999999
	.quad	0x3fe4f37329c347e9              # double 0.65471800000000002
	.quad	0x3fe0c39ffd60e94f              # double 0.52388000000000001
	.quad	0x3fee1c0ca600b029              # double 0.94092399999999998
	.quad	0x3fe9c898f605ab3b              # double 0.80573700000000004
	.quad	0x3fd87a1c25d07421              # double 0.38245299999999999
	.quad	0x3fe51b1960fa15db              # double 0.65955799999999998
	.quad	0x3fe01cda2b5a20de              # double 0.50352200000000003
	.quad	0x3fdeba237cdcca71              # double 0.48011100000000001
	.quad	0x3fda7b07075b3e14              # double 0.41375899999999999
	.quad	0x3fd98b9baa1511e0              # double 0.399146
	.quad	0x3fe986573215fcc2              # double 0.79764900000000005
	.quad	0x3fbb727136a400fc              # double 0.107215
	.quad	0x3fbdb65ecc3e3194              # double 0.116064
	.quad	0x3fe0b506dd69d302              # double 0.52209799999999995
	.quad	0x3fe95d744f5d3565              # double 0.79265799999999997
	.quad	0x3fef6596c82e019b              # double 0.98115099999999999
	.quad	0x3fe06d549731098d              # double 0.51334599999999997
	.quad	0x3fedb87bdcf0307f              # double 0.92876999999999998
	.quad	0x3fe558cd20afa2f0              # double 0.66708999999999996
	.quad	0x3fc9099e0e73604a              # double 0.195606
	.quad	0x3fe702ba5a038195              # double 0.71908300000000003
	.quad	0x3fd54adff822bbed              # double 0.33269500000000002
	.quad	0x3fbee642bf9830e4              # double 0.120701
	.quad	0x3fc184230fcf80dc              # double 0.13684499999999999
	.quad	0x3fd2b75a74c09c3d              # double 0.29244100000000001
	.quad	0x3fcb289dadfb506e              # double 0.212177
	.quad	0x3fd3fe43675ddd2b              # double 0.31239400000000001
	.quad	0x3fc833a4723aafff              # double 0.18907599999999999
	.quad	0x3fed2af9a8cdea03              # double 0.91149599999999997
	.quad	0x3fd27bbb62413db8              # double 0.288802
	.quad	0x3fa1ba7fc32ebe59              # double 0.034625999999999997
	.quad	0x3fd3c1f85d744f5d              # double 0.30871399999999999
	.quad	0x3fed0bc7b45f17be              # double 0.90768800000000005
	.quad	0x3fdabccaf709b739              # double 0.41777300000000001
	.quad	0x3fe65d56f32bdc27              # double 0.69889400000000002
	.quad	0x3fed89d6adf71eb0              # double 0.92307600000000001
	.quad	0x3f8c200c0f01fb83              # double 0.013733
	.quad	0x3fc0e6b8305d95dd              # double 0.13204099999999999
	.quad	0x3fcd036c9c0a8d22              # double 0.22666700000000001
	.quad	0x3fea51ac9afe1da8              # double 0.82247000000000003
	.quad	0x3fe882491afc04c9              # double 0.76590400000000003
	.quad	0x3fe0121682f94424              # double 0.50220799999999999
	.quad	0x3fd7eb4e9813879c              # double 0.37373699999999999
	.quad	0x3fefca8e2e2b8c76              # double 0.99347600000000003
	.quad	0x3fe3bf727136a401              # double 0.61712
	.quad	0x3fd3a4bdba0a5269              # double 0.30692999999999998
	.quad	0x3f4e3eaf6837f7be              # double 9.2299999999999999E-4
	.quad	0x3fddf67f4dbdf8f4              # double 0.46816999999999998
	.quad	0x3fe2771001d5c316              # double 0.57703400000000005
	.quad	0x3fee9aa821f2990f              # double 0.95637899999999998
	.quad	0x3fddfa3b9ae0c176              # double 0.46839799999999998
	.quad	0x3fe5a1c8a7a41e58              # double 0.67599900000000002
	.quad	0x3fe1599aa60913a5              # double 0.542188
	.quad	0x3fd41f3e89a88ace              # double 0.31440699999999999
	.quad	0x3fddff0025bfad2a              # double 0.46868900000000002
	.quad	0x3fe5985ad538ac19              # double 0.674848
	.quad	0x3fe345f9df548ece              # double 0.60229200000000005
	.quad	0x3fc89b0ee49f5169              # double 0.19223199999999999
	.quad	0x3fe153e707e175d1              # double 0.54149199999999997
	.quad	0x3fecb1e7d9988d2a              # double 0.89671699999999999
	.quad	0x3fac40f238972043              # double 0.055183000000000003
	.quad	0x3fd88997c3d68406              # double 0.38339800000000002
	.quad	0x3fbe67c6b8b69553              # double 0.118771
	.quad	0x3fcb79d0a67620ef              # double 0.21465500000000001
	.quad	0x3fd6e779207d4e09              # double 0.35787799999999997
	.quad	0x3fed1c7bcc2938de              # double 0.90972699999999995
	.quad	0x3fe1315f88fc9364              # double 0.537277
	.quad	0x3fd9a36199780baa              # double 0.40059699999999998
	.quad	0x3fec44007570c565              # double 0.883301
	.quad	0x3fec9791819d2392              # double 0.89350200000000002
	.quad	0x3fd93dfb0d51f81a              # double 0.39440799999999998
	.quad	0x3fdf6a4ca4f440af              # double 0.49086299999999999
	.quad	0x3fe3032b990afe61              # double 0.59413700000000003
	.quad	0x3faaa10e02214270              # double 0.052010000000000001
	.quad	0x3fdf2b3461309c80              # double 0.487012
	.quad	0x3fd48023a6ce3583              # double 0.32032100000000002
	.quad	0x3fc2bacf7446f9ba              # double 0.14632600000000001
	.quad	0x3fee88c8259e1f3a              # double 0.95419699999999996
	.quad	0x3fe6d2bf5515054b              # double 0.71322600000000003
	.quad	0x3fe6c89f40a2877f              # double 0.71199000000000001
	.quad	0x3fed79314445aa2e              # double 0.92104399999999997
	.quad	0x3fae7c8d1958969a              # double 0.059544
	.quad	0x3fc3c925785f8d2e              # double 0.15457599999999999
	.quad	0x3fce19e30014f8b6              # double 0.23516500000000001
	.quad	0x3fe30ca8198f1d3f              # double 0.59529500000000002
	.quad	0x3fdde060fe47991c              # double 0.46682000000000001
	.quad	0x3fc785b5b70691ea              # double 0.18376799999999999
	.quad	0x3fe1a554b8bef8cf              # double 0.55143200000000003
	.quad	0x3fd018655193708b              # double 0.25148900000000002
	.quad	0x3fdd0346dc5d6388              # double 0.45332499999999998
	.quad	0x3fdd16c61522a6f4              # double 0.454515
	.quad	0x3fa2b0a6fc58ab93              # double 0.036504000000000002
	.quad	0x3fea2263d816aceb              # double 0.81669800000000004
	.quad	0x3f912a94ff0025c0              # double 0.016764000000000001
	.quad	0x3fefe991ff7164c7              # double 0.99726199999999998
	.quad	0x3fd0dc2b0ea18373              # double 0.26343800000000001
	.quad	0x3fe430f6ad70e6f3              # double 0.63097700000000001
	.quad	0x3f83a81dc0db2703              # double 0.0095980000000000006
	.quad	0x3fe2901b003686a5              # double 0.58009100000000002
	.quad	0x3fd54fca42aed139              # double 0.33299499999999999
	.quad	0x3fe1393ab430f495              # double 0.53823600000000005
	.quad	0x3fea3a4723aafff3              # double 0.81961399999999995
	.quad	0x3fc8854cdb7ae579              # double 0.19156799999999999
	.quad	0x3fe66fa3fcc9ea9a              # double 0.70112799999999997
	.quad	0x3fec62174c4cdfad              # double 0.88697400000000004
	.quad	0x3fdead256798958e              # double 0.47931800000000002
	.quad	0x3fc37635e74299d9              # double 0.15204500000000001
	.quad	0x3fde635610adcd2d              # double 0.47481299999999999
	.quad	0x3fe0d9c065b63d3e              # double 0.52658099999999997
	.quad	0x3fdfac2df0d41312              # double 0.49488399999999999
	.quad	0x3fe2b27ed84d338f              # double 0.58428899999999995
	.quad	0x3fc87cc7d1bb4917              # double 0.19130800000000001
	.quad	0x3fe2d814940bbb1f              # double 0.58887699999999998
	.quad	0x3fedb2df505d0fa6              # double 0.92808500000000005
	.quad	0x3feb0e0c9d9d3459              # double 0.84546500000000002
	.quad	0x3fefc5fbf83382e4              # double 0.99291799999999996
	.quad	0x3fe1fa02fb5d0310              # double 0.56176899999999996
	.quad	0x3fe887570c564f98              # double 0.76652100000000001
	.quad	0x3fec2847b24638c9              # double 0.87991699999999995
	.quad	0x3fd6acabc5154867              # double 0.35428900000000002
	.quad	0x3f8bf401c4fc1df3              # double 0.013649
	.quad	0x3fc8be1650a45d42              # double 0.193301
	.quad	0x3fda3e9ea1405708              # double 0.41007199999999999
	.quad	0x3fd6bfca85caafbc              # double 0.35545599999999999
	.quad	0x3fe2cdbbe0157eed              # double 0.58761399999999997
	.quad	0x3f812c27a63736ce              # double 0.0083850000000000001
	.quad	0x3fe687faa044ae86              # double 0.70409900000000003
	.quad	0x3fd75b91f70de8f7              # double 0.36496400000000001
	.quad	0x3fe431b79d909f1f              # double 0.63106899999999999
	.quad	0x3fedb02f72b45283              # double 0.92775700000000005
	.quad	0x3fc8c38f36694899              # double 0.193468
	.quad	0x3fcb983947496aad              # double 0.215583
	.quad	0x3fea896feb4a6656              # double 0.82927700000000004
	.quad	0x3fd4a9478c868ba0              # double 0.32283200000000001
	.quad	0x3fe5e82949a56580              # double 0.68459000000000003
	.quad	0x3fd6731098d477bc              # double 0.350773
	.quad	0x3fedfd5a9eb2074f              # double 0.93717700000000004
	.quad	0x3fd336d22424a277              # double 0.30022100000000002
	.quad	0x3fe74ab606b7aa26              # double 0.72787000000000002
	.quad	0x3fe110f94c87980f              # double 0.53332199999999996
	.quad	0x3fd16a22b3892ee8              # double 0.27210299999999998
	.quad	0x3fdc21af7d30ad47              # double 0.439556
	.quad	0x3fe9d72ffd1dcd70              # double 0.80751799999999996
	.quad	0x3fbdd798d8a979e1              # double 0.11657099999999999
	.quad	0x3fe6ab990afe60c4              # double 0.70844700000000005
	.quad	0x3fd14d834091c087              # double 0.27035599999999999
	.quad	0x3fd5ddc6195464dc              # double 0.34166099999999999
	.quad	0x3fe7e56abde3fbbd              # double 0.74675499999999995
	.quad	0x3fe7f82f51266341              # double 0.74904599999999999
	.quad	0x3fea2ae8e1d6494d              # double 0.81773799999999996
	.quad	0x3fe171b25f633ce6              # double 0.54512899999999997
	.quad	0x3fef999dcb5781c7              # double 0.98750199999999999
	.quad	0x3fd141248d7e0264              # double 0.26960099999999998
	.quad	0x3fefdd4a5df2239e              # double 0.99576299999999995
	.quad	0x3fefc8a58b3f63c3              # double 0.99324299999999998
	.quad	0x3fad3e4ef0281ba8              # double 0.057116
	.quad	0x3fe575a964e8b7e5              # double 0.67061300000000001
	.quad	0x3fda4a6eb91b3f21              # double 0.41079300000000002
	.quad	0x3fed9edbf8b9baa1              # double 0.92564199999999996
	.quad	0x3fec42c5e2cdc012              # double 0.88315100000000002
	.quad	0x3fc7062d40aaeafb              # double 0.17987600000000001
	.quad	0x3feef5104d551d69              # double 0.96741500000000002
	.quad	0x3fe53734b51372a4              # double 0.66298900000000005
	.quad	0x3fe5536d655e28aa              # double 0.66643399999999997
	.quad	0x3fe1e004b7f5a533              # double 0.55859599999999998
	.quad	0x3fdca01abd1aa822              # double 0.447272
	.quad	0x3fbc916ca46e08f2              # double 0.111594
	.quad	0x3fe37457c0b13598              # double 0.60795200000000005
	.quad	0x3fb6a68f4b61fe22              # double 0.088479000000000002
	.quad	0x3fe283bc4d22c882              # double 0.57858100000000001
	.quad	0x3fd4d17c5ef62f9d              # double 0.32528600000000002
	.quad	0x3fda573215fcc187              # double 0.41157199999999999
	.quad	0x3fd95154866a11ed              # double 0.39558900000000002
	.quad	0x3fb2cd184c271fff              # double 0.073441999999999993
	.quad	0x3fd857cd466f501a              # double 0.380359
	.quad	0x3fde5d206c8711d8              # double 0.47443400000000002
	.quad	0x3fda2a27f1b69121              # double 0.40882299999999999
	.quad	0x3fcc97aeddce7cd0              # double 0.22337899999999999
	.quad	0x3fe09fa333764f12              # double 0.51948700000000003
	.quad	0x3fe2f74cd31769a9              # double 0.59268799999999999
	.quad	0x3fdbfa7a85015c21              # double 0.43716300000000002
	.quad	0x3fbad1394317acc5              # double 0.104755
	.quad	0x3fea861c79b34a45              # double 0.82887100000000002
	.quad	0x3fd3c710cb295e9e              # double 0.30902499999999999
	.quad	0x3fe3172474538ef3              # double 0.59657499999999997
	.quad	0x3fdebd987c6327ee              # double 0.48032200000000003
	.quad	0x3fefda09cc319c5a              # double 0.99536599999999997
	.quad	0x3fb191ff7164c72a              # double 0.068634000000000001
	.quad	0x3feba86940357a35              # double 0.86430799999999997
	.quad	0x3fcbfec13b9f127f              # double 0.21871199999999999
	.quad	0x3fedf97cc39ffd61              # double 0.93670500000000001
	.quad	0x3feb8f840181e03f              # double 0.86126899999999995
	.quad	0x3fd63886594af4f1              # double 0.34720000000000001
	.quad	0x3fdc777079e59f2c              # double 0.44479000000000002
	.quad	0x3feea2f8bdec5f39              # double 0.95739399999999997
	.quad	0x3fd717a89331a08c              # double 0.360819
	.quad	0x3fe3a0f6f08cc576              # double 0.61339900000000003
	.quad	0x3fb3ad8e432441ff              # double 0.076867000000000005
	.quad	0x3fe146088d6d3b6d              # double 0.53979900000000003
	.quad	0x3fdade54b48d3ae7              # double 0.41982000000000003
	.quad	0x3fcce29f9ce8d973              # double 0.22566600000000001
	.quad	0x3fe46672fba01eef              # double 0.63750600000000002
	.quad	0x3feb473abc947065              # double 0.85244500000000001
	.quad	0x3fdbab21815a07b3              # double 0.43231999999999998
	.quad	0x3fd1e707e175d13d              # double 0.27972599999999997
	.quad	0x3fc774ff865d7cb3              # double 0.183258
	.quad	0x3fdfb69db65ecc3e              # double 0.49552099999999999
	.quad	0x3fe2e9142b302f73              # double 0.59095200000000003
	.quad	0x3fd8e0ac7da1ec4e              # double 0.38871299999999998
	.quad	0x3fe55b0142f61ed6              # double 0.66735900000000004
	.quad	0x3f9dd4845132f87b              # double 0.029131000000000001
	.quad	0x3fa956e264e48627              # double 0.049491
	.quad	0x3fe9bcf4e874c900              # double 0.80431600000000003
	.quad	0x3fc1fceb78897e99              # double 0.14053099999999999
	.quad	0x3fed94af4f0d844d              # double 0.9244
	.quad	0x3f738fffbce4217d              # double 0.0047759999999999999
	.quad	0x3fe9e9c4545846e9              # double 0.80978600000000001
	.quad	0x3fe4ae44b6e935b9              # double 0.64627299999999999
	.quad	0x3fc6812be48a58b4              # double 0.175817
	.quad	0x3fc5a1b9f98b71b9              # double 0.16899800000000001
	.quad	0x3fcaaec8d5c74752              # double 0.20845900000000001
	.quad	0x3fbd2d1287c200c1              # double 0.113969
	.quad	0x3fd1e7296f6512a9              # double 0.27973399999999998
	.quad	0x3fe427eb6bf444e1              # double 0.62987300000000002
	.quad	0x3fd09dd7ecbb7f9d              # double 0.25963399999999998
	.quad	0x3fe8d2674080f990              # double 0.77568400000000004
	.quad	0x3fe11f2ba9d1f601              # double 0.53505499999999995
	.quad	0x3f71eeaa6d267408              # double 0.0043779999999999999
	.quad	0x3fde8ca8198f1d3f              # double 0.47733500000000001
	.quad	0x3fd6218def416bdb              # double 0.34579799999999999
	.quad	0x3fc3d92b7fe08af0              # double 0.15506500000000001
	.quad	0x3fdc1101b003686a              # double 0.43853799999999998
	.quad	0x3fb93b3a68b19a41              # double 0.098559999999999995
	.quad	0x3fec32b3461309c8              # double 0.881189
	.quad	0x3fb1359791819d24              # double 0.067224000000000006
	.quad	0x3f8c5ac471b47842              # double 0.013845
	.quad	0x3fc6e7f6f4be835e              # double 0.178954
	.quad	0x3fe7f1455219a848              # double 0.74820200000000003
	.quad	0x3fb3d5bab21815a0              # double 0.077479999999999993
	.quad	0x3fda06dd69d30271              # double 0.406669
	.quad	0x3fe8928e0c9d9d34              # double 0.76788999999999996
	.quad	0x3fe04fb3311a543f              # double 0.50972899999999999
	.quad	0x3fe88d3f1843c3a4              # double 0.76724199999999997
	.quad	0x3fe8a7d45a5fc7e7              # double 0.77048700000000003
	.quad	0x3feef07bfe7e1fc1              # double 0.96685600000000004
	.quad	0x3fe9c16bdb1a6d6a              # double 0.80486100000000005
	.quad	0x3fdbe2bcf91a32b1              # double 0.43571399999999999
	.quad	0x3fe319524bfd2e94              # double 0.59684099999999995
	.quad	0x3fe062a5e785b5b7              # double 0.512042
	.quad	0x3fda7939a7c17a89              # double 0.41364899999999999
	.quad	0x3fe3c68448cf7caa              # double 0.61798299999999995
	.quad	0x3fe03aa9b499d020              # double 0.50716099999999997
	.quad	0x3fedfb5f1bef49cf              # double 0.93693499999999996
	.quad	0x3fe5bf6e3f78bbd4              # double 0.67961800000000006
	.quad	0x3fcc7a0f9096bb99              # double 0.22247500000000001
	.quad	0x3fc5b9f127f5e84f              # double 0.169737
	.quad	0x3fe2683a109d0636              # double 0.57522300000000004
	.quad	0x3fc316b11c6d1e11              # double 0.14913000000000001
	.quad	0x3fe7266772d5e072              # double 0.72343800000000003
	.quad	0x3fcc371da37ef5a9              # double 0.22043199999999999
	.quad	0x3fa40724b76f6d76              # double 0.039116999999999999
	.quad	0x3fe960d0247021d1              # double 0.793068
	.quad	0x3fc15011904b3c3e              # double 0.13525599999999999
	.quad	0x3fdd16b97fe8ee6c              # double 0.45451200000000003
	.quad	0x3feaacbc8c0ce91d              # double 0.83358600000000005
	.quad	0x3fba94ff0025bfad              # double 0.103836
	.quad	0x3fe624ebdd334c5e              # double 0.69200700000000004
	.quad	0x3fda3a0c6b484d77              # double 0.40979300000000002
	.quad	0x3fe60848387df5cf              # double 0.68851099999999998
	.quad	0x3fe38817fc7607c4              # double 0.61036299999999999
	.quad	0x3fa4aab8a5ce5b42              # double 0.040364999999999998
	.quad	0x3fb4b8e086bdf4c3              # double 0.080946000000000004
	.quad	0x3fb361cbccf28c7a              # double 0.075711000000000001
	.quad	0x3fdf598e10cf5b1d              # double 0.48984100000000003
	.quad	0x3fe30ecb74ddf86e              # double 0.59555599999999997
	.quad	0x3fea5b8dc55000c9              # double 0.82367599999999996
	.quad	0x3fd04cbe1eb4202e              # double 0.25468400000000002
	.quad	0x3fdf1da7b0b39192              # double 0.48618499999999998
	.quad	0x3fe9b5c7cd898b2f              # double 0.80344000000000004
	.quad	0x3fd14449dbec2481              # double 0.26979300000000001
	.quad	0x3fee91ab8e8ea39c              # double 0.95528199999999996
	.quad	0x3fe8667d77fae361              # double 0.76251100000000005
	.quad	0x3fe8209246bf0132              # double 0.75397599999999998
	.quad	0x3fd261e4f765fd8b              # double 0.28722500000000001
	.quad	0x3fc971a7e3087875              # double 0.19878100000000001
	.quad	0x3fd2c026cc1ca3a5              # double 0.29297800000000002
	.quad	0x3fc5fbd6a593a2e0              # double 0.17174800000000001
	.quad	0x3fcfbcc2938de6de              # double 0.247948
	.quad	0x3fe180c521dda05a              # double 0.54696900000000004
	.quad	0x3fe99424e5929670              # double 0.79933399999999999
	.quad	0x3fe6204295a6c5d2              # double 0.691438
	.quad	0x3f8aa25d8d79d0a6              # double 0.013004999999999999
	.quad	0x3fe614d940789614              # double 0.69004500000000002
	.quad	0x3fca584f4c6e6d9c              # double 0.20582
	.quad	0x3fe439b456b441bc              # double 0.63204400000000005
	.quad	0x3fe8978d4fdf3b64              # double 0.76849999999999996
	.quad	0x3fe9ceebf65dbfcf              # double 0.80650900000000003
	.quad	0x3fe222339c0ebee0              # double 0.56667500000000004
	.quad	0x3fe23193f6c2699c              # double 0.56855199999999995
	.quad	0x3fb9eb6390c91080              # double 0.101248
	.quad	0x3fdfaf8594291750              # double 0.49508799999999997
	.quad	0x3fef8f88333fc86d              # double 0.986271
	.quad	0x3fe1d46b26bf876a              # double 0.55718000000000001
	.quad	0x3feaf3a57eaa2a0b              # double 0.84224200000000005
	.quad	0x3fdb9ce075f6fd22              # double 0.43145
	.quad	0x3fdcd12cadddf43c              # double 0.45026699999999997
	.quad	0x3fc62a80064a9cdc              # double 0.17317199999999999
	.quad	0x3fc323f67f4dbdf9              # double 0.149535
	.quad	0x3fe5d987c6327ed8              # double 0.68280399999999997
	.quad	0x3fb48cc575c0767d              # double 0.080272999999999997
	.quad	0x3fdb4b838c111ada              # double 0.42648399999999997
	.quad	0x3fe01f2778140dd4              # double 0.503803
	.quad	0x3fe36d373affb04f              # double 0.60708200000000001
	.quad	0x3fdde0d23d4f15e8              # double 0.46684700000000001
	.quad	0x3fee4c51116a8b8f              # double 0.94681599999999999
	.quad	0x3fe68c0f01fb82c3              # double 0.70459700000000003
	.quad	0x3fe57f1f9acffa7f              # double 0.67176800000000003
	.quad	0x3fefdeb7457c0b13              # double 0.99593699999999996
	.quad	0x3fee17b0f6ad70e7              # double 0.94039200000000001
	.quad	0x3fc02602c9081c2e              # double 0.12615999999999999
	.quad	0x3fe63649d388a8b1              # double 0.69412700000000005
	.quad	0x3fec3a7fc32ebe59              # double 0.88214099999999995
	.quad	0x3fd7204af922962d              # double 0.361346
	.quad	0x3fd1d8cb07d0aeda              # double 0.27885700000000002
	.quad	0x3fc38d3f1843c3a4              # double 0.15274799999999999
	.quad	0x3fc12641b328b6d8              # double 0.13397999999999999
	.quad	0x3fd90f062d40aaeb              # double 0.391542
	.quad	0x3fb62e09fe86833c              # double 0.086639999999999995
	.quad	0x3fe5eebd4cfd08d5              # double 0.68539300000000003
	.quad	0x3fb5989df1172ef1              # double 0.084360000000000004
	.quad	0x3fe228f5c28f5c29              # double 0.5675
	.quad	0x3fda4f6dfc5cdd51              # double 0.41109800000000002
	.quad	0x3fedd143bf727137              # double 0.93179500000000004
	.quad	0x3fe0abe6a337a80d              # double 0.520984
	.quad	0x3fe47ed84d338f7a              # double 0.64048400000000005
	.quad	0x3fecce11dbca9692              # double 0.90015500000000004
	.quad	0x3fe094c016052503              # double 0.51815800000000001
	.quad	0x3fe41a027525460b              # double 0.62817500000000004
	.quad	0x3fe7a49e44fa0514              # double 0.73884499999999997
	.quad	0x3fc0e29f9ce8d973              # double 0.13191600000000001
	.quad	0x3fd6bea91d9b1b7a              # double 0.35538700000000001
	.quad	0x3fdf729f59ccfaf0              # double 0.491371
	.quad	0x3fda367e414e7ee9              # double 0.409576
	.quad	0x3fe4cb35f3d7d391              # double 0.64980599999999999
	.quad	0x3fcebfb9bed30f06              # double 0.240226
	.quad	0x3fe0978705425f20              # double 0.51849699999999999
	.quad	0x3fefddd4c76d117b              # double 0.99582899999999996
	.quad	0x3fef1efd86a8fc0d              # double 0.97253299999999998
	.quad	0x3fef2c710cb295ea              # double 0.97417500000000001
	.quad	0x3fd807b352a84381              # double 0.37547000000000003
	.quad	0x3fe7559b3d07c84b              # double 0.72919999999999996
	.quad	0x3fe5b9cb6848beb6              # double 0.67893000000000003
	.quad	0x3fe41719f7f8ca82              # double 0.62782000000000004
	.quad	0x3fd3cee5abc0e38a              # double 0.30950299999999997
	.quad	0x3f9014b599aa6091              # double 0.015703999999999999
	.quad	0x3fe008c1db0142f6              # double 0.50106899999999999
	.quad	0x3fe9322d0e560419              # double 0.78737500000000005
	.quad	0x3fe138ef34d6a162              # double 0.53820000000000001
	.quad	0x3fc0e1a3f4666eca              # double 0.131886
	.quad	0x3fe86af251c193b4              # double 0.76305500000000003
	.quad	0x3fe93aeee957470f              # double 0.78844400000000003
	.quad	0x3fe5ac18f81e8a2f              # double 0.67725800000000003
	.quad	0x3fd3cf91a32b12d3              # double 0.30954399999999999
	.quad	0x3feb5aad601ffb48              # double 0.854819
	.quad	0x3fe99a34ca0c282c              # double 0.80007399999999995
	.quad	0x3fe4fe3f359ff4fd              # double 0.65603599999999995
	.quad	0x3fd198b2e9ccb7d4              # double 0.27494499999999999
	.quad	0x3fc5862b27cbf6e4              # double 0.168157
	.quad	0x3fe377ec3547e069              # double 0.60838899999999996
	.quad	0x3f9c7f77af64063a              # double 0.027830000000000001
	.quad	0x3fe69986b9c304cd              # double 0.70624100000000001
	.quad	0x3fe70164840e171a              # double 0.71892
	.quad	0x3feac393682730c6              # double 0.83637399999999995
	.quad	0x3fec1cde5d18090b              # double 0.87852399999999997
	.quad	0x3fd7c3d25247cb71              # double 0.37132700000000002
	.quad	0x3fe894ff0025bfad              # double 0.76818799999999998
	.quad	0x3fe3ebd4cfd08d4c              # double 0.62253800000000004
	.quad	0x3fcb1044f1a1986c              # double 0.21143400000000001
	.quad	0x3fddf49cf56eac86              # double 0.468055
	.quad	0x3fe80e5604189375              # double 0.75175000000000003
	.quad	0x3fe014b9cb6848bf              # double 0.50253000000000003
	.quad	0x3fdd076c050bd87b              # double 0.45357799999999998
	.quad	0x3fc1c2d27807789a              # double 0.13875799999999999
	.quad	0x3fd5f90539fba451              # double 0.34332400000000002
	.quad	0x3feba0be51090710              # double 0.86337200000000003
	.quad	0x3fd9faf859429175              # double 0.405943
	.quad	0x3fdbca3e7d135116              # double 0.43421900000000002
	.quad	0x3fdfbe1a8262456f              # double 0.49597799999999997
	.quad	0x3fd80ac7da1ec4e7              # double 0.37565799999999999
	.quad	0x3fe1f4ba51a005c4              # double 0.56112399999999996
	.quad	0x3fc609aaa3ad18d2              # double 0.17216999999999999
	.quad	0x3fe12515ce9e5e24              # double 0.53577699999999995
	.quad	0x3fef8dc981beb181              # double 0.98605799999999999
	.quad	0x3fe33a8e71476af9              # double 0.60089800000000004
	.quad	0x3fcf5f78359bc340              # double 0.24510100000000001
	.quad	0x3fe1a68b19a415f4              # double 0.55157999999999996
	.quad	0x3feec97b7414a4d3              # double 0.96209500000000003
	.quad	0x3feb11c8eabffcdb              # double 0.84592100000000003
	.quad	0x3fe74a148ba83f4f              # double 0.72779300000000002
	.quad	0x3fef00f776c4827b              # double 0.96886799999999995
	.quad	0x3fa3f22c01e68a0d              # double 0.038956999999999999
	.quad	0x3fe679b994e1a3f4              # double 0.70235899999999996
	.quad	0x3fc9cf91a32b12d3              # double 0.20164699999999999
	.quad	0x3fd207bbb62413db              # double 0.28172199999999997
	.quad	0x3fe359cf13cee9dd              # double 0.60471299999999995
	.quad	0x3feefdbb16c1e365              # double 0.96847300000000002
	.quad	0x3fe7ebacf7446f9c              # double 0.74751900000000004
	.quad	0x3fcd625a682b6284              # double 0.22956399999999999
	.quad	0x3fc28858ff759685              # double 0.144786
	.quad	0x3fd9b9e8c47a17f4              # double 0.401972
	.quad	0x3f9f7db6e503fb37              # double 0.030752999999999999
	.quad	0x3feb90257c914b16              # double 0.86134599999999995
	.quad	0x3fcf612c6ac215ba              # double 0.24515300000000001
	.quad	0x3fe5de37585be1a8              # double 0.68337599999999998
	.quad	0x3fefb67a0f9096bc              # double 0.99102500000000004
	.quad	0x3fe09eecbfb15b57              # double 0.51939999999999997
	.quad	0x3f9cb5fe542e557e              # double 0.028038
	.quad	0x3fd19bed30f062d4              # double 0.275142
	.quad	0x3fe37d60e94ee393              # double 0.60905500000000001
	.quad	0x3fce0053e2d6238e              # double 0.23438500000000001
	.quad	0x3fef7cc9ea9a3d2e              # double 0.98398300000000005
	.quad	0x3fd53dbc23315d70              # double 0.33189299999999999
	.quad	0x3fef0f648c7192ea              # double 0.97062899999999996
	.quad	0x3fccae07e5a78f26              # double 0.22406100000000001
	.quad	0x3fef64b018611fd6              # double 0.98104100000000005
	.quad	0x3fdfec0724b76f6d              # double 0.49878099999999997
	.quad	0x3fcb04039abf3387              # double 0.21106
	.quad	0x3fd8e21d96e9bbf1              # double 0.38880100000000001
	.quad	0x3fbbd48cb4aec8d6              # double 0.108712
	.quad	0x3fe06c679cc74b84              # double 0.51323300000000005
	.quad	0x3fe192923e5b8562              # double 0.54914200000000002
	.quad	0x3fe66f1561911490              # double 0.70106000000000002
	.quad	0x3f8b60ae9680e065              # double 0.013368
	.quad	0x3fea4d31769a9110              # double 0.82192299999999996
	.quad	0x3fde28c79f666235              # double 0.47123900000000002
	.quad	0x3fae581cf7878b7a              # double 0.059265999999999999
	.quad	0x3fda2a172abef06b              # double 0.40881899999999999
	.quad	0x3fe7db4245f5ad97              # double 0.74551500000000004
	.quad	0x3fd5d1aeb3dd11be              # double 0.34092299999999998
	.quad	0x3fba9c347e8ccdd9              # double 0.103946
	.quad	0x3fdbe82517e77d52              # double 0.43604399999999999
	.quad	0x3fe09244a6223e18              # double 0.51785499999999995
	.quad	0x3fed20b3d4ae429e              # double 0.910242
	.quad	0x3fe191be6e653869              # double 0.549041
	.quad	0x3fde038e29f9ce8e              # double 0.46896700000000002
	.quad	0x3fd1a1a93293d103              # double 0.27549200000000001
	.quad	0x3feea4febd09e12a              # double 0.95764099999999996
	.quad	0x3fdc2bdc26dce39b              # double 0.44017699999999998
	.quad	0x3fc1657fb69984a1              # double 0.13591
	.quad	0x3fedf68dfbd6a594              # double 0.93634700000000004
	.quad	0x3fe47f0ed3d859c9              # double 0.64051000000000002
	.quad	0x3fd27c06e19b90eb              # double 0.28882000000000002
	.quad	0x3fd429dc725c3dee              # double 0.31505499999999997
	.quad	0x3fd8d5bab21815a0              # double 0.38804499999999997
	.quad	0x3fc2dfa43fe5c91d              # double 0.14745
	.quad	0x3fdc71d1d4738a3b              # double 0.44444699999999998
	.quad	0x3fc2685553ef6b5d              # double 0.14380899999999999
	.quad	0x3f95b5fa22706d50              # double 0.021201999999999999
	.quad	0x3fd5807789a45910              # double 0.33596599999999999
	.quad	0x3fc0ba7b9170d62c              # double 0.130691
	.quad	0x3fd5953586ca89fc              # double 0.33723199999999998
	.quad	0x3f9f71eafee6fb4c              # double 0.030707999999999999
	.quad	0x3fed260b2c83ec89              # double 0.91089399999999998
	.quad	0x3fd803361565c2d2              # double 0.37519599999999997
	.quad	0x3fe4b3f20a73f749              # double 0.64696600000000004
	.quad	0x3fd2250f840181e0              # double 0.28351199999999999
	.quad	0x3fcf94a6eb91b3f2              # double 0.246724
	.quad	0x3fdbddb1209edbf9              # double 0.43540600000000002
	.quad	0x3feb09a027525461              # double 0.84492500000000004
	.quad	0x3fe9a2120e1f7d74              # double 0.80103400000000002
	.quad	0x3fed1a1986b9c305              # double 0.90943600000000002
	.quad	0x3fe9709741d084e8              # double 0.79499399999999998
	.quad	0x3fe86a5b530ced4e              # double 0.76298299999999997
	.quad	0x3fe349e01de26916              # double 0.60276799999999997
	.quad	0x3fd377e5eaab0425              # double 0.30419299999999999
	.quad	0x3fc280b673c4f3ba              # double 0.14455299999999999
	.quad	0x3fadbec2480e8c8b              # double 0.058096000000000002
	.quad	0x3fc55c39bcba3012              # double 0.166877
	.quad	0x3fd45260f5e41d4b              # double 0.31752799999999998
	.quad	0x3fcc8b4bf8fcd680              # double 0.223001
	.quad	0x3fd6e7c06e19b90f              # double 0.35789500000000002
	.quad	0x3fad2b2bfdb4cc25              # double 0.05697
	.quad	0x3feee3e6c4c5974e              # double 0.96531999999999996
	.quad	0x3fb192ea52ef911d              # double 0.068648000000000001
	.quad	0x3fe805100a393ee6              # double 0.75061800000000001
	.quad	0x3fec9e6687f455a8              # double 0.89433600000000002
	.quad	0x3fe882b628459967              # double 0.76595599999999997
	.quad	0x3fef644955b4677b              # double 0.98099199999999997
	.quad	0x3fe0a94bbe4473cd              # double 0.52066599999999996
	.quad	0x3fd571044f1a1987              # double 0.33502300000000002
	.quad	0x3fe63c0e38a7e73a              # double 0.69483099999999998
	.quad	0x3fbac01e68a0d34a              # double 0.104494
	.quad	0x3feea1d96e9bbf0e              # double 0.95725700000000002
	.quad	0x3fecc3137b07075b              # double 0.89881299999999997
	.quad	0x3fee116ca46e08f2              # double 0.93962699999999999
	.quad	0x3fe467f90d9d7775              # double 0.63769200000000004
	.quad	0x3fee9e75360d0247              # double 0.956843
	.quad	0x3febe075f6fd21ff              # double 0.87114999999999998
	.quad	0x3fb8bfe3b03e20cd              # double 0.096678
	.quad	0x3fe4c450268900c5              # double 0.64896399999999999
	.quad	0x3fe1d5b035bd512f              # double 0.55733500000000002
	.quad	0x3fe717bfa4c61d86              # double 0.72164899999999998
	.quad	0x3fd1aac53b0813cb              # double 0.27604800000000002
	.quad	0x3fa206e9ff0cbaf9              # double 0.035208999999999997
	.quad	0x3fc6059a73b42cc3              # double 0.172046
	.quad	0x3fe9aac1094a2b9d              # double 0.80209399999999997
	.quad	0x3fea158537e2c55d              # double 0.81512700000000005
	.quad	0x3fdd24af0bf1a5ca              # double 0.45536399999999999
	.quad	0x3fedf62b6ae7d567              # double 0.93630000000000002
	.quad	0x3fe3cad9ad85dfa8              # double 0.61851199999999995
	.quad	0x3fea3c59b8023a6d              # double 0.81986700000000001
	.quad	0x3fe83bf50e347629              # double 0.75731899999999996
	.quad	0x3fb3a3443d46b26c              # double 0.07671
	.quad	0x3fe2546d3f9e7b81              # double 0.57280600000000004
	.quad	0x3fd0704790b84988              # double 0.256853
	.quad	0x3fbf7d30ad46f588              # double 0.123004
	.quad	0x3fd1aa53fc0096ff              # double 0.27602100000000002
	.quad	0x3fbfbcc2938de6de              # double 0.123974
	.quad	0x3fc403dddb1209ee              # double 0.15636800000000001
	.quad	0x3fc0e81882adc4ca              # double 0.13208300000000001
	.quad	0x3fea522ea0fd3b2a              # double 0.82253200000000004
	.quad	0x3fe22e3c536d655e              # double 0.56814399999999998
	.quad	0x3fc80b3d4ae429e1              # double 0.18784300000000001
	.quad	0x3feaf891e215336e              # double 0.84284300000000001
	.quad	0x3fe671e4b44a1f08              # double 0.701403
	.quad	0x3fdf27cbf6e3f78c              # double 0.48680400000000001
	.quad	0x3fec1a5a89b951c6              # double 0.87821700000000003
	.quad	0x3fe11ab4b72c5198              # double 0.53451000000000004
	.quad	0x3fd63e681a9b8cb9              # double 0.34755900000000001
	.quad	0x3f8a0ad8a116659d              # double 0.012716
	.quad	0x3fd371c53f39d1b3              # double 0.30381900000000001
	.quad	0x3fe3cc0bdcad14a1              # double 0.61865800000000004
	.quad	0x3fdbbe09bb6aa4ba              # double 0.43347400000000003
	.quad	0x3fe94d65e4606749              # double 0.79069800000000001
	.quad	0x3fdf1886df82b1f7              # double 0.48587200000000003
	.quad	0x3fd486940357a355              # double 0.320714
	.quad	0x3fe22be6a337a80d              # double 0.567859
	.quad	0x3fe939bed30f062d              # double 0.78829899999999997
	.quad	0x3fe9dee568a50508              # double 0.80845900000000004
	.quad	0x3fe5d269595feda6              # double 0.68193499999999996
	.quad	0x3fcc038194c01605              # double 0.218857
	.quad	0x3fdf22a2c2374795              # double 0.486489
	.quad	0x3fb0d5e8d5410f95              # double 0.065764000000000003
	.quad	0x3faa9bae46cfc82a              # double 0.051969000000000001
	.quad	0x3fe51c25d074213a              # double 0.65968599999999999
	.quad	0x3fecbe78e1932d6f              # double 0.89825100000000002
	.quad	0x3fbee43aa79bbadc              # double 0.12067
	.quad	0x3f7ecf63800218df              # double 0.007522
	.quad	0x3fef9f601797cc3a              # double 0.988205
	.quad	0x3fec740c4156e265              # double 0.88916600000000001
	.quad	0x3fca15a8deb0fadf              # double 0.20378599999999999
	.quad	0x3fe9926c7eae5bc8              # double 0.79912399999999995
	.quad	0x3feac73471f79421              # double 0.83681700000000003
	.quad	0x3fea3a0c6b484d77              # double 0.81958600000000004
	.quad	0x3fe04258d5842b73              # double 0.50809899999999997
	.quad	0x3fe7cf6be37de93a              # double 0.74407000000000001
	.quad	0x3fd3f53825e13b19              # double 0.31184200000000001
	.quad	0x3fe9ee158750c1b9              # double 0.81031299999999995
	.quad	0x3fed819d2391d580              # double 0.922072
	.quad	0x3fc5512ec6bce853              # double 0.16653999999999999
	.quad	0x3fe194db59578a2b              # double 0.54942100000000005
	.quad	0x3fed2fb5d031055c              # double 0.91207400000000005
	.quad	0x3fe86603d577963a              # double 0.76245300000000005
	.quad	0x3fd5525892684cf0              # double 0.33315099999999997
	.quad	0x3fe273de1e2de871              # double 0.57664400000000005
	.quad	0x3fd96c4827b6fe2e              # double 0.39723399999999998
	.quad	0x3fed355475a31a4c              # double 0.91276000000000001
	.quad	0x3fe8de310dbf0564              # double 0.777123
	.quad	0x3fc6dc011d3671ac              # double 0.178589
	.quad	0x3fce4dca8e2e2b8c              # double 0.23674899999999999
	.quad	0x3fa30c88a47ecfea              # double 0.037205000000000002
	.quad	0x3fe9b704790b8499              # double 0.80359100000000006
	.quad	0x3fec39f98b71b8aa              # double 0.882077
	.quad	0x3fe24477ff151e75              # double 0.57085799999999998
	.quad	0x3fd0f3cb3e5753a4              # double 0.26488
	.quad	0x3fda294141e9af5c              # double 0.40876800000000002
	.quad	0x3fd47a52ac753e70              # double 0.31996599999999997
	.quad	0x3fde5e17e34b9453              # double 0.474493
	.quad	0x3fe9d25247cb70ac              # double 0.80692399999999997
	.quad	0x3fda573eab367a10              # double 0.41157500000000002
	.quad	0x3fefd818c5c9a34d              # double 0.99512900000000004
	.quad	0x3fe7918e325d4a5e              # double 0.73651800000000001
	.quad	0x3fdb4b4070329803              # double 0.42646800000000001
	.quad	0x3fc35de58e64b231              # double 0.15130299999999999
	.quad	0x3fe4a5bd944aa540              # double 0.64523200000000003
	.quad	0x3fe2c0852b4d8ba4              # double 0.58600099999999999
	.quad	0x3feddea465a57647              # double 0.93342800000000004
	.quad	0x3fa2fc47e49b1fac              # double 0.037081000000000003
	.quad	0x3fd5378ab0c88a48              # double 0.331515
	.quad	0x3fb752977c88e79b              # double 0.091104000000000004
	.quad	0x3feb2599ed7c6fbd              # double 0.84833999999999998
	.quad	0x3f84c3c18b502abb              # double 0.010139
	.quad	0x3fcc2ecaeea63b69              # double 0.22017800000000001
	.quad	0x3fe5465c70435efa              # double 0.66483899999999996
	.quad	0x3fcda7c9de050375              # double 0.231683
	.quad	0x3fe244d87724fa8b              # double 0.57090399999999997
	.quad	0x3fb344e50c5eb314              # double 0.075270000000000004
	.quad	0x3fdde40852b4d8ba              # double 0.46704299999999999
	.quad	0x3fd529e0a41a261c              # double 0.330681
	.quad	0x3fcce075f6fd21ff              # double 0.22559999999999999
	.quad	0x3fe28b5ed8d36b4c              # double 0.57951299999999994
	.quad	0x3fb1846e8f29d40f              # double 0.068427000000000002
	.quad	0x3fc273cd573647bb              # double 0.14415900000000001
	.quad	0x3fe777f27fe4bcae              # double 0.73339200000000004
	.quad	0x3fed9ceaf251c194              # double 0.92540500000000003
	.quad	0x3fe45506573215fd              # double 0.63537900000000003
	.quad	0x3fea9c560c7c0f45              # double 0.83158399999999999
	.quad	0x3fe865f30e7ff584              # double 0.76244500000000003
	.quad	0x3fec629d8409e55c              # double 0.88703799999999999
	.quad	0x3fb0dee34fc610f1              # double 0.065901000000000001
	.quad	0x3fe8e8ab4fa48302              # double 0.77840200000000004
	.quad	0x3fd9425aee631f8a              # double 0.394675
	.quad	0x3fea74256bca5376              # double 0.82667800000000002
	.quad	0x3fc70edc3bd59924              # double 0.180141
	.quad	0x3fe1ec5b078d92fb              # double 0.56010199999999999
	.quad	0x3fcde86833c6002a              # double 0.233655
	.quad	0x3fe161f7d73c9258              # double 0.54320900000000005
	.quad	0x3fe44bff47735c18              # double 0.63427699999999998
	.quad	0x3fd2cdc443914f48              # double 0.29380899999999999
	.quad	0x3fe9a856605ee569              # double 0.80179900000000004
	.quad	0x3fd9a2d2fe3f35a0              # double 0.400563
	.quad	0x3fe866d373affb05              # double 0.76255200000000001
	.quad	0x3fe138a19c9d5a18              # double 0.53816299999999995
	.quad	0x3fc6d362e9036439              # double 0.17832600000000001
	.quad	0x3fea6ef8055fbb51              # double 0.82604599999999995
	.quad	0x3fa284be40420f6f              # double 0.036169
	.quad	0x3fb21cffeb074a77              # double 0.070754999999999998
	.quad	0x3fe0824d4cb9ecf6              # double 0.51590599999999998
	.quad	0x3fd2b97785729b28              # double 0.29257
	.quad	0x3fd4a6d698fe6927              # double 0.322683
	.quad	0x3fd18c64fdb09a67              # double 0.27419399999999999
	.quad	0x3fcc7d6f97679032              # double 0.222578
	.quad	0x3fef5c52e72da123              # double 0.98002
	.quad	0x3fa2fbe33acd5b68              # double 0.037078
	.quad	0x3fdf0a9de8b3b320              # double 0.48502299999999998
	.quad	0x3fbd2630ec311623              # double 0.11386400000000001
	.quad	0x3fd0d08d4bad7d7c              # double 0.26272899999999999
	.quad	0x3f71e96c3fc43b2e              # double 0.0043730000000000002
	.quad	0x3fb7e02645e4e69f              # double 0.093264
	.quad	0x3fe87b99d451fc4c              # double 0.76508799999999999
	.quad	0x3fe0af8df7a4e7ab              # double 0.52142999999999995
	.quad	0x3fb57dae81882adc              # double 0.083948999999999996
	.quad	0x3fa4a05dd8f92afa              # double 0.040286000000000002
	.quad	0x3fea0307f23cc8de              # double 0.81286999999999998
	.quad	0x3fe7c73471f79421              # double 0.74306700000000003
	.quad	0x3fee8f6cefed6345              # double 0.95500799999999997
	.quad	0x3fdd4107314ca926              # double 0.457094
	.quad	0x3fd201cd5f99c38b              # double 0.28136
	.quad	0x3fcdac4f7ec3547e              # double 0.231821
	.quad	0x3f58efbb0e5e6794              # double 0.0015219999999999999
	.quad	0x3fe4bac710cb295f              # double 0.64780000000000004
	.quad	0x3fe091819d2391d5              # double 0.51776199999999994
	.quad	0x3fc5592d98bf7f06              # double 0.16678399999999999
	.quad	0x3fdde0c176577532              # double 0.46684300000000001
	.quad	0x3fe03cc8de2ac322              # double 0.50741999999999998
	.quad	0x3fc8ad8a116659d1              # double 0.192796
	.quad	0x3fd0d495182a9931              # double 0.26297500000000001
	.quad	0x3fdcb4b2fa93af75              # double 0.44852900000000001
	.quad	0x3fc280ae10492360              # double 0.14455200000000001
	.quad	0x3fee31b36bd2b6f2              # double 0.94356700000000004
	.quad	0x3feac75a31a4bdba              # double 0.836835
	.quad	0x3feb3a0e8427418d              # double 0.85083699999999995
	.quad	0x3fe9a1a0cf1800a8              # double 0.80098000000000003
	.quad	0x3fe188e9b38d60a6              # double 0.54796299999999998
	.quad	0x3fe7638c9752977d              # double 0.73090200000000005
	.quad	0x3fe09da16616b54e              # double 0.51924199999999998
	.quad	0x3fe292bc2fc69729              # double 0.58041200000000004
	.quad	0x3fa4c1ebc83a96d5              # double 0.040542000000000002
	.quad	0x3fe6af9ca5bd944b              # double 0.70893700000000004
	.quad	0x3fda1b60ae9680e0              # double 0.40792099999999998
	.quad	0x3fe67403dddb120a              # double 0.70166200000000001
	.quad	0x3fe24bcad9ad85e0              # double 0.57175200000000004
	.quad	0x3fd33358f2e05ccd              # double 0.30000900000000003
	.quad	0x3fdea36e2eb1c433              # double 0.47872500000000001
	.quad	0x3fe6d3f1843c3a43              # double 0.71337200000000001
	.quad	0x3fce6d3f9e7b80aa              # double 0.237709
	.quad	0x3fe3fa00e27e0efa              # double 0.62426800000000005
	.quad	0x3fe3c7d5ed06fef8              # double 0.61814400000000003
	.quad	0x3fe30c9539b88872              # double 0.59528599999999998
	.quad	0x3fde6cb5350092cd              # double 0.475385
	.quad	0x3fcc88509bf9c62a              # double 0.22291
	.quad	0x3fb072d1aeb3dd12              # double 0.064252000000000004
	.quad	0x3fe9c8216c61522a              # double 0.80567999999999995
	.quad	0x3fd93e5b8561d430              # double 0.39443099999999998
	.quad	0x3fef8d0aaa7ded6c              # double 0.98596700000000003
	.quad	0x3fb8de3b8a19c9d6              # double 0.097141000000000005
	.quad	0x3fceb884406c00da              # double 0.240006
	.quad	0x3fcdf01b866e43aa              # double 0.23388999999999999
	.quad	0x3feac107314ca926              # double 0.836063
	.quad	0x3feae136e71cda2b              # double 0.83999199999999996
	.quad	0x3fdd9ee88df3732a              # double 0.46282400000000001
	.quad	0x3fd54a4095f2452c              # double 0.33265699999999998
	.quad	0x3fe0db1a6d698fe7              # double 0.52674600000000005
	.quad	0x3fec69c23b7952d2              # double 0.88790999999999998
	.quad	0x3fef086bdf4c2b52              # double 0.96977800000000003
	.quad	0x3fd087229e90795f              # double 0.25824799999999998
	.quad	0x3fed0763a1900820              # double 0.90715199999999995
	.quad	0x3fedddd4c76d117b              # double 0.93332899999999996
	.quad	0x3fa34677b395c422              # double 0.037647
	.quad	0x3fe6f18655193709              # double 0.71698300000000004
	.quad	0x3fdc093532e7b3d9              # double 0.43806200000000001
	.quad	0x3fe918201cd5f99c              # double 0.78419499999999997
	.quad	0x3fe86fae7924af0c              # double 0.763633
	.quad	0x3fccc7a7c9de0503              # double 0.22484299999999999
	.quad	0x3fe484e831ad2136              # double 0.64122400000000002
	.quad	0x3fb4bc169c23b795              # double 0.080994999999999998
	.quad	0x3fea6a50d6b228dd              # double 0.82547800000000005
	.quad	0x3fb2a19439de481f              # double 0.072777999999999995
	.quad	0x3fe83a0620ab7132              # double 0.75708299999999995
	.quad	0x3fb323fee2c98e54              # double 0.074768000000000001
	.quad	0x3fc6554b8bef8ceb              # double 0.17447799999999999
	.quad	0x3feb6705c896dd27              # double 0.85632600000000003
	.quad	0x3fec493c89f40a28              # double 0.88393999999999995
	.quad	0x3fb16a8b8f14db59              # double 0.068031999999999995
	.quad	0x3fe305e80bed740c              # double 0.59447099999999997
	.quad	0x3fb7e77d523b3637              # double 0.093376000000000001
	.quad	0x3fdab6805a2d7300              # double 0.41738900000000001
	.quad	0x3fedf5019f3c70ca              # double 0.93615800000000005
	.quad	0x3fede864020817fc              # double 0.93461799999999994
	.quad	0x3fbc095f2452c5a0              # double 0.109518
	.quad	0x3fe48aac96cc5fc0              # double 0.64192800000000005
	.quad	0x3fe0e5ba6efc371e              # double 0.52804300000000004
	.quad	0x3fe5a1a2e7f6f4bf              # double 0.67598100000000005
	.quad	0x3fe339799e518f3f              # double 0.60076600000000002
	.quad	0x3fcfe225fa658c4c              # double 0.249089
	.quad	0x3fc27dc37a3db3c0              # double 0.14446300000000001
	.quad	0x3fe7451116a8b8f1              # double 0.72718099999999997
	.quad	0x3fd69717df19d66b              # double 0.35297200000000001
	.quad	0x3fedcd63cb817332              # double 0.93132199999999998
	.quad	0x3fdbb2f23033a472              # double 0.43279699999999999
	.quad	0x3fe97b82c2bd7f52              # double 0.79632700000000001
	.quad	0x3fedb4aa9717df1a              # double 0.92830400000000002
	.quad	0x3fecbfe5c91d14e4              # double 0.89842500000000002
	.quad	0x3fd3d7dbf487fcb9              # double 0.31004999999999999
	.quad	0x3fb26c4c5974e65c              # double 0.071965000000000001
	.quad	0x3febcbfd2e946801              # double 0.86865099999999995
	.quad	0x3f8bcb1cc9646280              # double 0.013571
	.quad	0x3fe2a50b524399b3              # double 0.58264700000000003
	.quad	0x3fd83a4f8726d04e              # double 0.37855899999999998
	.quad	0x3fd6deca25529fe0              # double 0.357348
	.quad	0x3fca625e99e94ab2              # double 0.206127
	.quad	0x3fccb367a0f9096c              # double 0.22422500000000001
	.quad	0x3fd29f127f5e84f1              # double 0.29095900000000002
	.quad	0x3fd726351deefe50              # double 0.361707
	.quad	0x3fe721c8a7a41e58              # double 0.72287400000000002
	.quad	0x3fe16bb98c7e2824              # double 0.5444
	.quad	0x3fd8e59f2ba9d1f6              # double 0.389015
	.quad	0x3fe87ef177a7008a              # double 0.76549599999999995
	.quad	0x3fed1c347e8ccdd9              # double 0.90969299999999997
	.quad	0x3fefa35f80991794              # double 0.98869300000000004
	.quad	0x3fc02435696e58a3              # double 0.12610499999999999
	.quad	0x3fced60a63305101              # double 0.24090700000000001
	.quad	0x3fd8079a2834d270              # double 0.37546400000000002
	.quad	0x3fe58ecb74ddf86e              # double 0.67368099999999997
	.quad	0x3f7b035bd512ec6c              # double 0.0065950000000000002
	.quad	0x3fd5aaf78feef5ed              # double 0.33856000000000003
	.quad	0x3feba28fe260b2c8              # double 0.86359399999999997
	.quad	0x3fc60b45ae5ffa3c              # double 0.17221900000000001
	.quad	0x3fe6fa2ad3e920c0              # double 0.71803799999999995
	.quad	0x3fe4b74bc6a7ef9e              # double 0.64737500000000003
	.quad	0x3fe1147064ece9a3              # double 0.53374500000000002
	.quad	0x3f97b9e060fe4799              # double 0.02317
	.quad	0x3fd34299d883ba34              # double 0.30093999999999999
	.quad	0x3f88d4fdf3b645a2              # double 0.012125
	.quad	0x3febb242070b8cfc              # double 0.86551
	.quad	0x3fea81a1554fbdad              # double 0.82832399999999995
	.quad	0x3fb5835158b827fa              # double 0.084034999999999998
	.quad	0x3fd62e2328f9f44d              # double 0.34656599999999999
	.quad	0x3fe697353b4b2fa9              # double 0.70595799999999997
	.quad	0x3fbc213a0c6b484d              # double 0.10988199999999999
	.quad	0x3fe0c07ee0b0af60              # double 0.52349800000000002
	.quad	0x3fe9327674d16335              # double 0.78741000000000005
	.quad	0x3fd9ecaeea63b689              # double 0.40507100000000001
	.quad	0x3fd83d3a1d323fee              # double 0.37873699999999999
	.quad	0x3fd43f811f4f50a0              # double 0.31637599999999999
	.quad	0x3fe68d413122b7bb              # double 0.70474300000000001
	.quad	0x3fee761ed5ae1cde              # double 0.95191899999999996
	.quad	0x3feed6c508b32ce9              # double 0.96371700000000004
	.quad	0x3fad271bcdbbe015              # double 0.056938999999999997
	.quad	0x3fdfe536501e2585              # double 0.498365
	.quad	0x3fd53ad18d25edd0              # double 0.33171499999999998
	.quad	0x3fee8cf9e3864cb6              # double 0.95470900000000003
	.quad	0x3fed282c6ef3d3a2              # double 0.91115400000000002
	.quad	0x3fe56cebbba55d1c              # double 0.66954599999999997
	.quad	0x3fe5c43f5f91600f              # double 0.68020599999999998
	.quad	0x3fed62b063e07a29              # double 0.91829700000000003
	.quad	0x3fda1e4f765fd8ae              # double 0.40810000000000002
	.quad	0x3fe9013cab81f96a              # double 0.78140100000000001
	.quad	0x3fe66616b54e2b06              # double 0.69996199999999997
	.quad	0x3fe63f2b239a38fc              # double 0.69521100000000002
	.quad	0x3fdce91c8eabffce              # double 0.45172800000000002
	.quad	0x3fe66b8950763a19              # double 0.700627
	.quad	0x3fd6c158fb43d89d              # double 0.35555100000000001
	.quad	0x3fe188d6d3b6cbda              # double 0.54795400000000005
	.quad	0x3fe3ea465a57646b              # double 0.62234800000000001
	.quad	0x3fea7f8012dfd695              # double 0.82806400000000002
	.quad	0x3fc6bb8800eae18b              # double 0.17759800000000001
	.quad	0x3fd3678c0053e2d6              # double 0.30319499999999999
	.quad	0x3fefb8ed1bf7ad4b              # double 0.99132399999999998
	.quad	0x3fbe054690de0935              # double 0.117268
	.quad	0x3fed216c61522a6f              # double 0.91032999999999997
	.quad	0x3fd9184c271fff7a              # double 0.39210800000000001
	.quad	0x3fe8765fd8adab9f              # double 0.76444999999999996
	.quad	0x3fb755ef1fddebd9              # double 0.091155
	.quad	0x3fed6ed6777079e6              # double 0.91978000000000004
	.quad	0x3fde0ff10ecb74de              # double 0.469723
	.quad	0x3fb0079a2834d270              # double 0.062616000000000005
	.quad	0x3fd3c0980b242071              # double 0.30863000000000002
	.quad	0x3fc986c226809d49              # double 0.19942499999999999
	.quad	0x3fe6a9b6b2af1455              # double 0.70821699999999999
	.quad	0x3fc2fc7a398201cd              # double 0.14832999999999999
	.quad	0x3fe78e8ea39c51db              # double 0.73615200000000003
	.quad	0x3fde9b23dd54da4d              # double 0.47821900000000001
	.quad	0x3fea1ff2e48e8a72              # double 0.81640000000000001
	.quad	0x3fd20da5daf07bfe              # double 0.28208299999999997
	.quad	0x3fbce1e71044f1a2              # double 0.11282200000000001
	.quad	0x3fcbb16c1e364bec              # double 0.21635199999999999
	.quad	0x3fd12bf11f926c7f              # double 0.26830700000000002
	.quad	0x3fe4632e3821af7d              # double 0.63710699999999998
	.quad	0x3fe37a2ad3e920c0              # double 0.60866299999999995
	.quad	0x3fe4e939eadd590c              # double 0.65347
	.quad	0x3fee3ee5eedcc20d              # double 0.94517799999999996
	.quad	0x3fd8c64345cfede9              # double 0.38710099999999997
	.quad	0x3fc8bd1aa821f299              # double 0.193271
	.quad	0x3fe77268d32830a1              # double 0.73271600000000003
	.quad	0x3fef6f112fd32c62              # double 0.98230799999999996
	.quad	0x3fcac7c957cd466f              # double 0.20922199999999999
	.quad	0x3fce2541d8e86402              # double 0.235512
	.quad	0x3fc8bd09e12a51e3              # double 0.193269
	.quad	0x3fd34046412cf0fa              # double 0.30079800000000001
	.quad	0x3fe2f993d5347a5b              # double 0.59296599999999999
	.quad	0x3fb721d53cddd6e0              # double 0.090359999999999996
	.quad	0x3fe26ed6777079e6              # double 0.57603000000000004
	.quad	0x3fb0e69f05ea24cc              # double 0.066018999999999994
	.quad	0x3fe5eb93ccd0fe8b              # double 0.68500700000000003
	.quad	0x3fdcf559b3d07c85              # double 0.45247500000000002
	.quad	0x3fd3a6223e186983              # double 0.30701499999999998
	.quad	0x3fcc62131a8ef77f              # double 0.221743
	.quad	0x3fc84523f67f4dbe              # double 0.18961
	.quad	0x3fc803cd141a6938              # double 0.187616
	.quad	0x3feac31bde82d7b6              # double 0.83631699999999998
	.quad	0x3fde4e7685985ad5              # double 0.47353899999999999
	.quad	0x3fd24373f316e371              # double 0.28536699999999998
	.quad	0x3fa16c3fc43b2dd3              # double 0.034028999999999997
	.quad	0x3fe492d55a3a083a              # double 0.64292400000000005
	.quad	0x3fe23de1e2de8709              # double 0.57005399999999995
	.quad	0x3fb781d7dbf487fd              # double 0.091825000000000004
	.quad	0x3fdd53b4b2fa93af              # double 0.45823399999999997
	.quad	0x3fc309289dadfb50              # double 0.14871699999999999
	.quad	0x3fea5b39e279dd3c              # double 0.82363600000000003
	.quad	0x3fcdf2dc2b0ea183              # double 0.23397399999999999
	.quad	0x3fc84241c3efae79              # double 0.189522
	.quad	0x3fe72dbe7f2c300a              # double 0.72433400000000003
	.quad	0x3fc2469d7342edbb              # double 0.14277999999999999
	.quad	0x3fe59b7e0ac7da1f              # double 0.67523100000000003
	.quad	0x3fcb5842b734b513              # double 0.21363099999999999
	.quad	0x3fddb8ae31d712a1              # double 0.464397
	.quad	0x3fcd00ffda4052d6              # double 0.22659299999999999
	.quad	0x3fedc3ce2089e343              # double 0.93015199999999998
	.quad	0x3fe7468ec52a411c              # double 0.72736299999999998
	.quad	0x3fd6c9c0a8d21bc1              # double 0.35606399999999999
	.quad	0x3fe09285a921ccd9              # double 0.51788599999999996
	.quad	0x3fee2c1b10fd7e46              # double 0.94288400000000006
	.quad	0x3fca743201040bfe              # double 0.20667099999999999
	.quad	0x3f9ed3953dea465a              # double 0.030103999999999999
	.quad	0x3fdb64c729f59cd0              # double 0.42802600000000002
	.quad	0x3fe5288effe2a3cf              # double 0.66120100000000004
	.quad	0x3fc9f41aef6f8f04              # double 0.202762
	.quad	0x3fd5361dc93ea2d3              # double 0.331428
	.quad	0x3fb15885d31337eb              # double 0.067756999999999998
	.quad	0x3fb6b063e07a28bb              # double 0.088628999999999999
	.quad	0x3fc0428d434a01ac              # double 0.12703100000000001
	.quad	0x3fefbaeee957470f              # double 0.99156900000000003
	.quad	0x3fe840724b76f6d7              # double 0.75786699999999996
	.quad	0x3fd5fc4c165907d9              # double 0.343524
	.quad	0x3feec27418d6909b              # double 0.961237
	.quad	0x3fdf48626f60e0eb              # double 0.48879299999999998
	.quad	0x3fe0e503fb374363              # double 0.52795599999999998
	.quad	0x3fe50826aa8eb463              # double 0.65724499999999997
	.quad	0x3fe07c0f45176146              # double 0.51514400000000005
	.quad	0x3fe53864cb5bb385              # double 0.663134
	.quad	0x3fe5e0807357e671              # double 0.68365500000000001
	.quad	0x3fe67cac8e68e3ef              # double 0.70271899999999998
	.quad	0x3fb55831f03d145e              # double 0.083377000000000006
	.quad	0x3fe1b1f46ed245b3              # double 0.55297300000000005
	.quad	0x3fddf5caf2d7f951              # double 0.46812700000000002
	.quad	0x3fe66b6e0d23d4f1              # double 0.70061399999999996
	.quad	0x3fec6e7e62dc6e2b              # double 0.88848800000000006
	.quad	0x3fe88826aa8eb463              # double 0.76661999999999997
	.quad	0x3fd10a84be40420f              # double 0.26626699999999998
	.quad	0x3fe9da09cc319c5a              # double 0.80786599999999997
	.quad	0x3fd26bf444e0daa1              # double 0.28783900000000001
	.quad	0x3fec51a005c4651f              # double 0.88496399999999997
	.quad	0x3fbfaa68f4b61fe2              # double 0.123694
	.quad	0x3fe9f414a4d2b2c0              # double 0.81104500000000002
	.quad	0x3fcd14013ec460ee              # double 0.22717300000000001
	.quad	0x3fe801450efdc9c5              # double 0.75015500000000002
	.quad	0x3fe987314ca925ff              # double 0.79775300000000005
	.quad	0x3fa716d2aa5c5f7c              # double 0.045095999999999997
	.quad	0x3fe7c81f53825e14              # double 0.74317900000000003
	.quad	0x3fd181733226c3b9              # double 0.27352599999999999
	.quad	0x3fd9eefa1e3eaf68              # double 0.40521099999999999
	.quad	0x3fe5363b256ffc11              # double 0.66286999999999996
	.quad	0x3fe1c5718eb89507              # double 0.55535199999999996
	.quad	0x3feea4e7ab756430              # double 0.95762999999999998
	.quad	0x3fec33daf8df7a4e              # double 0.88132999999999995
	.quad	0x3fcd492ff4ba51a0              # double 0.228796
	.quad	0x3fd157d9dba908a2              # double 0.27098699999999998
	.quad	0x3fe3e9ab29e4d5d8              # double 0.62227399999999999
	.quad	0x3fd08bc59b8023a7              # double 0.25853100000000001
	.quad	0x3fe17294dd72367e              # double 0.54523699999999997
	.quad	0x3fc97995ee136e72              # double 0.19902300000000001
	.quad	0x3fe767967caea748              # double 0.73139500000000002
	.quad	0x3fd7fb549f94855e              # double 0.37471500000000002
	.quad	0x3fe677b9e060fe48              # double 0.70211500000000004
	.quad	0x3fe9495182a9930c              # double 0.79020000000000001
	.quad	0x3fec9b8aa00192a7              # double 0.89398699999999998
	.quad	0x3fdfafaf85942917              # double 0.49509799999999998
	.quad	0x3fcbb3397dd00f77              # double 0.21640699999999999
	.quad	0x3fd1fe79ee02a77a              # double 0.28115699999999999
	.quad	0x3f7eedcc20d5629e              # double 0.0075510000000000004
	.quad	0x3fd917ebaf102364              # double 0.39208500000000002
	.quad	0x3f91f75104d551d7              # double 0.017545000000000002
	.quad	0x3fc4450acc0bdcad              # double 0.158357
	.quad	0x3fe91be4cd749279              # double 0.78465499999999999
	.quad	0x3fd64b2b777d0f1f              # double 0.34833799999999998
	.quad	0x3fe2f166e008e9b4              # double 0.59196800000000005
	.quad	0x3f9aed99cbee807c              # double 0.026297000000000001
	.quad	0x3fca06a6e32e3822              # double 0.20332800000000001
	.quad	0x3fc58ceb356da017              # double 0.16836300000000001
	.quad	0x3fdf950763a19008              # double 0.49347099999999999
	.quad	0x3fe5f440af1cb89d              # double 0.68606599999999995
	.quad	0x3fea32ca57a786c2              # double 0.81869999999999998
	.quad	0x3fed07f23cc8de2b              # double 0.90722000000000003
	.quad	0x3febab474107314d              # double 0.86465800000000004
	.quad	0x3fac9b845564b663              # double 0.055874
	.quad	0x3fdc5d206c8711d8              # double 0.44318400000000002
	.quad	0x3fcb0435efa615a9              # double 0.211066
	.quad	0x3fc10e7ff583a53c              # double 0.13325500000000001
	.quad	0x3fe88a915379fa98              # double 0.76691500000000001
	.quad	0x3feac319c5a3e39f              # double 0.83631599999999995
	.quad	0x3fe546045baf533f              # double 0.66479699999999997
	.quad	0x3feb60c9d9d3458d              # double 0.85556500000000002
	.quad	0x3fe7c05f6ba0620b              # double 0.74223300000000003
	.quad	0x3fea2d2135daad60              # double 0.81800899999999998
	.quad	0x3fdbbbe878fabda1              # double 0.43334400000000001
	.quad	0x3fcb5bab21815a08              # double 0.21373500000000001
	.quad	0x3fe92276b7ed41b7              # double 0.78545699999999996
	.quad	0x3fe626eb91b3f20a              # double 0.69225099999999995
	.quad	0x3fca57f3061c79b3              # double 0.20580899999999999
	.quad	0x3fd632e7b3d8e001              # double 0.34685700000000003
	.quad	0x3fd4c1ca3a4b5569              # double 0.32432800000000001
	.quad	0x3feec6fbd273d5bb              # double 0.96179000000000003
	.quad	0x3fefa055757d5a9f              # double 0.98832200000000003
	.quad	0x3fb194af4f0d844d              # double 0.068675
	.quad	0x3fd316c1e364bec6              # double 0.29826399999999997
	.quad	0x3fdc9e34330d7386              # double 0.447156
	.quad	0x3fcff4a98aa8650e              # double 0.24965399999999999
	.quad	0x3febda16616b54e3              # double 0.87037200000000003
	.quad	0x3fe88a8b08dd1e54              # double 0.76691200000000003
	.quad	0x3fe2cf398e970718              # double 0.58779599999999999
	.quad	0x3fcb0e4da09cc31a              # double 0.21137400000000001
	.quad	0x3fdbc36544fe36d2              # double 0.43380099999999999
	.quad	0x3fdb70c1333b96af              # double 0.428757
	.quad	0x3fb394a6eb91b3f2              # double 0.076486999999999999
	.quad	0x3fe7a5f633ce63a6              # double 0.73900900000000003
	.quad	0x3fea0f041461b6d4              # double 0.81433299999999997
	.quad	0x3fdac31df761cbcd              # double 0.418159
	.quad	0x3fef0055fbb517a4              # double 0.96879099999999995
	.quad	0x3fe8ff1737542a24              # double 0.78113900000000002
	.quad	0x3fd176188b11409a              # double 0.27283299999999999
	.quad	0x3fdd59b3d07c84b6              # double 0.45860000000000001
	.quad	0x3fc757cd466f501a              # double 0.182367
	.quad	0x3fad759ee88df373              # double 0.057537999999999999
	.quad	0x3fd2d5bab21815a0              # double 0.29429499999999997
	.quad	0x3fe70f88333fc86d              # double 0.72064600000000001
	.quad	0x3fe1e3f141205bc0              # double 0.55907499999999999
	.quad	0x3febc6c11a11233e              # double 0.86801200000000001
	.quad	0x3fd3e37585be1a82              # double 0.31075799999999998
	.quad	0x3faddf6555c52e73              # double 0.058345000000000001
	.quad	0x3fea04db9c7368ad              # double 0.81309299999999995
	.quad	0x3fdc0870110a137f              # double 0.43801499999999999
	.quad	0x3febf3343fa2ad3f              # double 0.87343800000000005
	.quad	0x3fea319c5a3e39f7              # double 0.81855599999999995
	.quad	0x3fe67b9389b52008              # double 0.70258500000000002
	.quad	0x3fd6622c45026890              # double 0.349742
	.quad	0x3fedd1d68c692f6f              # double 0.93186500000000005
	.quad	0x3feb28f9f44d4456              # double 0.84875199999999995
	.quad	0x3fe0c2c7fbacb429              # double 0.52377700000000005
	.quad	0x3fda3265add9c27f              # double 0.40932600000000002
	.quad	0x3fee44b09e98dcdb              # double 0.94588499999999998
	.quad	0x3fe608ca3e7d1351              # double 0.68857299999999999
	.quad	0x3fd227913e81450f              # double 0.283665
	.quad	0x3fdc55e28aa43351              # double 0.44274200000000002
	.quad	0x3fcbed84d338f798              # double 0.21818599999999999
	.quad	0x3fb4fdb09a671ef3              # double 0.081995999999999999
	.quad	0x3fe63c1ce6c093d9              # double 0.69483799999999996
	.quad	0x3f8352a843808851              # double 0.0094350000000000006
	.quad	0x3fd4a98aa8650e78              # double 0.32284800000000002
	.quad	0x3feea63736cdf267              # double 0.95779000000000003
	.quad	0x3fe0189df1172ef1              # double 0.50300500000000004
	.quad	0x3fe861cde5d18091              # double 0.76193900000000003
	.quad	0x3fe84d466f5019f4              # double 0.75943300000000002
	.quad	0x3fcfa797891e2153              # double 0.24730199999999999
	.quad	0x3fe0cd2b2bfdb4cc              # double 0.52504499999999998
	.quad	0x3fe56c93a7115161              # double 0.66950399999999999
	.quad	0x3feca1ff2e48e8a7              # double 0.89477499999999999
	.quad	0x3fee9d2178f68be3              # double 0.956681
	.quad	0x3f977c02afdda8bd              # double 0.022934
	.quad	0x3fb8f2170931012a              # double 0.097444000000000002
	.quad	0x3fe1a74c09c3ce21              # double 0.55167200000000005
	.quad	0x3feaf43e963dc487              # double 0.84231500000000004
	.quad	0x3fb52a0ec7432010              # double 0.082672999999999996
	.quad	0x3fd9a60913a4f872              # double 0.40075899999999998
	.quad	0x3fdb29bae46cfc83              # double 0.42442200000000002
	.quad	0x3fa03d35eb7457c1              # double 0.031717000000000002
	.quad	0x3fe9adb8348f53c5              # double 0.80245599999999995
	.quad	0x3fbf8151a437824d              # double 0.123067
	.quad	0x3fee8270f3882279              # double 0.95342300000000002
	.quad	0x3fe70f81e8a2ec29              # double 0.72064300000000003
	.quad	0x3fcef48c2e770bd0              # double 0.241838
	.quad	0x3fe2c3dab5c39bcc              # double 0.58640800000000004
	.quad	0x3fe8a9717df19d67              # double 0.77068400000000004
	.quad	0x3f923bff8a8f3a9b              # double 0.017807
	.quad	0x3fd0a7d6733ebbfd              # double 0.26024399999999998
	.quad	0x3fe075c4a83b1d0d              # double 0.51437600000000006
	.quad	0x3fee4a18bd66277c              # double 0.94654499999999996
	.quad	0x3fc2ab042528ae75              # double 0.145844
	.quad	0x3feab76f6d762520              # double 0.83489199999999996
	.quad	0x3fd800f345069a4e              # double 0.375058
	.quad	0x3fefe73e681a9b8d              # double 0.99697800000000003
	.quad	0x3feb94f483cafb3b              # double 0.86193299999999995
	.quad	0x3fe227d24180d3d0              # double 0.567361
	.quad	0x3fc331769a91105e              # double 0.149947
	.quad	0x3fd977292c493426              # double 0.39789799999999997
	.quad	0x3fdddd377e1b8ed2              # double 0.46662700000000001
	.quad	0x3fdd5f78359bc340              # double 0.45895200000000003
	.quad	0x3fe1b6deb95e5aff              # double 0.55357299999999998
	.quad	0x3fe9737b8d3f1844              # double 0.79534700000000002
	.quad	0x3fe7b020c49ba5e3              # double 0.74024999999999996
	.quad	0x3fe8be9ea1405708              # double 0.77326899999999998
	.quad	0x3fe1021d10b1feeb              # double 0.53150799999999998
	.quad	0x3fd2b630a91537a0              # double 0.29237000000000002
	.quad	0x3fe46f5232d2bb23              # double 0.63858899999999996
	.quad	0x3fce6f587d6f9768              # double 0.23777300000000001
	.quad	0x3fd1b0e1b4bb5e0f              # double 0.27642099999999997
	.quad	0x3fea165907d91255              # double 0.81522799999999995
	.quad	0x3f8df43c7d5ed070              # double 0.014626
	.quad	0x3fcebedfa43fe5c9              # double 0.2402
	.quad	0x3fe9f3471f79420b              # double 0.81094699999999997
	.quad	0x3fb52d77318fc505              # double 0.082725000000000007
	.quad	0x3fee914d2f5dbb9d              # double 0.955237
	.quad	0x3fe05ce9e5e24788              # double 0.51134199999999996
	.quad	0x3feac122749f0e4e              # double 0.83607600000000004
	.quad	0x3facf0f9d2bf5515              # double 0.056526
	.quad	0x3fd9c521dda059a7              # double 0.40265699999999999
	.quad	0x3fde58ea7ce0fc2f              # double 0.47417700000000002
	.quad	0x3fd63b70ef566491              # double 0.34737800000000002
	.quad	0x3fd871f36262cba7              # double 0.38195499999999999
	.quad	0x3fd2be9424e59296              # double 0.29288199999999998
	.quad	0x3fc8aac1094a2b9d              # double 0.19271099999999999
	.quad	0x3fe2b0856e696a27              # double 0.58404800000000001
	.quad	0x3fdaf10ecb74ddf8              # double 0.42096299999999998
	.quad	0x3fdbb35b0bbf50e3              # double 0.43282199999999998
	.quad	0x3fc7055b89939219              # double 0.17985100000000001
	.quad	0x3fd0ce789e774eec              # double 0.262602
	.quad	0x3fc0051c9f72f76e              # double 0.12515599999999999
	.quad	0x3fc4cacd184c2720              # double 0.162439
	.quad	0x3fdc88051c9f72f7              # double 0.44580199999999998
	.quad	0x3fe2e5d9e40c8473              # double 0.59055800000000003
	.quad	0x3fe69ad42c3c9eed              # double 0.70640000000000003
	.quad	0x3fbc359bc33f8551              # double 0.110193
	.quad	0x3fee4b018611fd59              # double 0.94665600000000005
	.quad	0x3fec1e7fb267c6b9              # double 0.87872300000000003
	.quad	0x3fef73a57eaa2a0b              # double 0.98286700000000004
	.quad	0x3fcf042528ae74f3              # double 0.242314
	.quad	0x3fe8b1f687b139c9              # double 0.77172399999999997
	.quad	0x3fc5da9435ac8a37              # double 0.170733
	.quad	0x3fe25fe542e557de              # double 0.57420599999999999
	.quad	0x3fe9965b20b8066c              # double 0.79960399999999998
	.quad	0x3fe2a1187e7c06e2              # double 0.58216500000000004
	.quad	0x3fe543bb40b34e77              # double 0.66451800000000005
	.quad	0x3fe917a89331a08c              # double 0.784138
	.quad	0x3fe8e0dcb9a9da59              # double 0.77744899999999995
	.quad	0x3fe198b2e9ccb7d4              # double 0.54988999999999999
	.quad	0x3fda7be553ac4f7f              # double 0.41381200000000001
	.quad	0x3f4f7d73c9257860              # double 9.6100000000000005E-4
	.quad	0x3fc4be48a58b3f64              # double 0.16205700000000001
	.quad	0x3fd1b7c7820a30db              # double 0.27684199999999998
	.quad	0x3fd9055b89939219              # double 0.39095200000000002
	.quad	0x3fe872d3c792d128              # double 0.76401699999999995
	.quad	0x3fd56ea854477ff1              # double 0.33487899999999998
	.quad	0x3fcc0bfe3b03e20d              # double 0.21911600000000001
	.quad	0x3fc0575c0767d34e              # double 0.127666
	.quad	0x3fe166f5019f3c71              # double 0.54381800000000002
	.quad	0x3f6e0a41a261bf38              # double 0.0036670000000000001
	.quad	0x3fe78c6b484d76ab              # double 0.73589099999999996
	.quad	0x3fe38d38cda6e760              # double 0.610989
	.quad	0x3fdc7ec3547e0696              # double 0.44523699999999999
	.quad	0x3fef5f7c6759ab6d              # double 0.98040599999999999
	.quad	0x3fa8817fc7607c42              # double 0.047863000000000003
	.quad	0x3feb6086bdf4c2b5              # double 0.85553299999999999
	.quad	0x3fe6fd3b29a1b9fa              # double 0.71841200000000005
	.quad	0x3febf455a7d24181              # double 0.87357600000000002
	.quad	0x3fcdfa76534373f3              # double 0.234206
	.quad	0x3fc9b4cc25072086              # double 0.20083000000000001
	.quad	0x3fc3b317efe0ce0c              # double 0.15390300000000001
	.quad	0x3fe93ce8533b1077              # double 0.78868499999999997
	.quad	0x3fea9d6cf850df16              # double 0.83171700000000004
	.quad	0x3fd1f1bac2df0d41              # double 0.28037899999999999
	.quad	0x3fe8049235f80991              # double 0.75055799999999995
	.quad	0x3fe959641f644956              # double 0.79216200000000003
	.quad	0x3fd6805e5f30e7ff              # double 0.35158499999999998
	.quad	0x3fdaefd438d1d8a5              # double 0.42088799999999998
	.quad	0x3fe222856605ee57              # double 0.56671400000000005
	.quad	0x3fd232b990afe60c              # double 0.28434599999999999
	.quad	0x3fe297785729b281              # double 0.58099000000000001
	.quad	0x3fd2523f67f4dbe0              # double 0.28627000000000002
	.quad	0x3fdeae4f3343fa2b              # double 0.47938900000000001
	.quad	0x3fb77cfe58601366              # double 0.091750999999999999
	.quad	0x3fe1c12f09d8c6d6              # double 0.55483199999999999
	.quad	0x3fd87fed20296b33              # double 0.38280799999999998
	.quad	0x3fe387d2c7b890d6              # double 0.61033000000000004
	.quad	0x3fdfadc8fb86f47b              # double 0.49498199999999998
	.quad	0x3fddc6583e8576cd              # double 0.46523100000000001
	.quad	0x3f4d5c31593e5fb7              # double 8.9599999999999998E-4
	.quad	0x3fe52478854cdb7b              # double 0.66070200000000001
	.quad	0x3fa0807357e670e3              # double 0.032230000000000002
	.quad	0x3f93f4a98aa8650e              # double 0.019487999999999998
	.quad	0x3fc56e58a32f4491              # double 0.16743
	.quad	0x3fe63c6c97d8cf3a              # double 0.69487600000000005
	.quad	0x3fe0dfdac68a936c              # double 0.52732599999999996
	.quad	0x3fda8088509bf9c6              # double 0.41409499999999999
	.quad	0x3fc53c2dadb8348f              # double 0.16589899999999999
	.quad	0x3fe7211ec918e326              # double 0.72279300000000002
	.quad	0x3feb55c96030c240              # double 0.85422200000000004
	.quad	0x3fd98915bdd76684              # double 0.39899200000000001
	.quad	0x3fe239496249a134              # double 0.56949300000000003
	.quad	0x3fdcd6fda836eb4f              # double 0.45062200000000002
	.quad	0x3fa9e731d2e0e304              # double 0.050591999999999998
	.quad	0x3fed6939eadd590c              # double 0.91909499999999999
	.quad	0x3fefea5d6bebe165              # double 0.99735899999999999
	.quad	0x3fd2bf7f06705c89              # double 0.29293799999999998
	.quad	0x3fd12edfe75bc44c              # double 0.268486
	.quad	0x3fee250b524399b3              # double 0.94202200000000003
	.quad	0x3fd9ce8d972cd7cf              # double 0.40323199999999998
	.quad	0x3fd7c2df0d413123              # double 0.37126900000000002
	.quad	0x3feed783dff3f0fe              # double 0.963808
	.quad	0x3fe5a788db0574b4              # double 0.676701
	.quad	0x3fdd728a6117720d              # double 0.46011600000000002
	.quad	0x3fd57eaa2a0a9585              # double 0.33585599999999999
	.quad	0x3fe2c169c23b7953              # double 0.58611000000000002
	.quad	0x3fdfa237cdcca70d              # double 0.49427599999999999
	.quad	0x3feeb1960fa15db3              # double 0.95917799999999997
	.quad	0x3fdb306e5cd4ed2d              # double 0.42483100000000001
	.quad	0x3fe355347a5b0ff1              # double 0.60415099999999999
	.quad	0x3fe47127f5e84f09              # double 0.63881299999999996
	.quad	0x3fe056494d50ebab              # double 0.51053300000000001
	.quad	0x3fe7457c0b135979              # double 0.72723199999999999
	.quad	0x3fe03e78e1932d6f              # double 0.50762600000000002
	.quad	0x3fe506f47b677f6b              # double 0.65709899999999999
	.quad	0x3fd1bae46cfc829d              # double 0.277032
	.quad	0x3fc0203e63e8dda5              # double 0.12598400000000001
	.quad	0x3fd05a5fc7e6b3ff              # double 0.25551600000000002
	.quad	0x3fe3d946c332f017              # double 0.62027299999999996
	.quad	0x3fee1b5a63f9a49c              # double 0.94083899999999998
	.quad	0x3fef38151a437825              # double 0.97559600000000001
	.quad	0x3f9789e774eebf66              # double 0.022987
	.quad	0x3fa710ecb74ddf87              # double 0.045051000000000001
	.quad	0x3fdafb58d1526d8b              # double 0.42159099999999999
	.quad	0x3fced62bf11f926c              # double 0.24091099999999999
	.quad	0x3fe862ed352220bc              # double 0.76207599999999997
	.quad	0x3fe7fe28240b7803              # double 0.74977499999999997
	.quad	0x3fc6bc05d52c16df              # double 0.17761299999999999
	.quad	0x3fc9f4eca686e7e6              # double 0.202787
	.quad	0x3fe817f4128bf3bf              # double 0.75292400000000004
	.quad	0x3fca72324c836651              # double 0.20660999999999999
	.quad	0x3fd106317268d328              # double 0.26600299999999999
	.quad	0x3fe1bcc2938de6de              # double 0.55429200000000001
	.quad	0x3fe5d0a67620ee8d              # double 0.68171999999999999
	.quad	0x3fecee41919ac797              # double 0.904084
	.quad	0x3f892e1ef73c0c20              # double 0.012295
	.quad	0x3fe2b78cc9a77e5f              # double 0.58490600000000004
	.quad	0x3fde392e1ef73c0c              # double 0.47223999999999999
	.quad	0x3fbaf9fcb0c026cc              # double 0.105377
	.quad	0x3fd9dae3e6c4c597              # double 0.40398499999999998
	.quad	0x3fea77d955714b9d              # double 0.82713000000000003
	.quad	0x3fe9d1aeb3dd11be              # double 0.80684599999999995
	.quad	0x3fe71a1986b9c305              # double 0.72193600000000002
	.quad	0x3fdfe53a81dc0db2              # double 0.49836599999999998
	.quad	0x3fb094c447c30d30              # double 0.064769999999999994
	.quad	0x3fe8e8986fcdee35              # double 0.778393
	.quad	0x3fd548387df5cf25              # double 0.33253300000000002
	.quad	0x3fe3dd377e1b8ed2              # double 0.62075400000000003
	.quad	0x3fa88205ff1d81f1              # double 0.047867
	.quad	0x3fd0e03b3e9a6f82              # double 0.26368599999999998
	.quad	0x3fe29e4d5d80e497              # double 0.58182400000000001
	.quad	0x3fa295e9e1b089a0              # double 0.036299999999999999
	.quad	0x3feb50635a426bb5              # double 0.85356299999999996
	.quad	0x3feffdd441355476              # double 0.99973500000000004
	.quad	0x3fd739085f4a1273              # double 0.36285600000000001
	.quad	0x3fd71715c63ae254              # double 0.36078399999999999
	.quad	0x3febb9799e518f3f              # double 0.86639100000000002
	.quad	0x3fe02e0c17657753              # double 0.50562099999999999
	.quad	0x3fed8d38cda6e760              # double 0.923489
	.quad	0x3fd570e2c12ad81b              # double 0.33501500000000001
	.quad	0x3fc95350092ccf6c              # double 0.197855
	.quad	0x3fd1cea6c1a048e0              # double 0.27823799999999999
	.quad	0x3fe10357a355043e              # double 0.53165799999999996
	.quad	0x3fe91815a07b352b              # double 0.78419000000000005
	.quad	0x3fc05332acfb762e              # double 0.12753900000000001
	.quad	0x3feecb039ef0f16f              # double 0.96228199999999997
	.quad	0x3fef546f587d6f97              # double 0.97905699999999995
	.quad	0x3feabafb7e90ff97              # double 0.83532499999999998
	.quad	0x3fdbf92af9a8cdea              # double 0.437083
	.quad	0x3fe372085b18548b              # double 0.60767000000000004
	.quad	0x3fd5e1b8ed1bf7ad              # double 0.34190199999999998
	.quad	0x3fd466c2acb85a4f              # double 0.318772
	.quad	0x3fe2101d19157abc              # double 0.56446700000000005
	.quad	0x3fadb9628cbd1245              # double 0.058055000000000002
	.quad	0x3fcfba2be0589acc              # double 0.24786900000000001
	.quad	0x3fcca67e846a5d6c              # double 0.223831
	.quad	0x3fdf5de58e64b231              # double 0.49010599999999999
	.quad	0x3fe8e04189374bc7              # double 0.77737500000000004
	.quad	0x3fc59fa11a975afb              # double 0.168934
	.quad	0x3fe2973d9ec70004              # double 0.58096199999999998
	.quad	0x3fe2a5a038194c01              # double 0.58271799999999996
	.quad	0x3fe4ff972474538f              # double 0.65620000000000001
	.quad	0x3fe568be2f7b17ce              # double 0.66903599999999996
	.quad	0x3fe5f2f9873ffac2              # double 0.68591000000000002
	.quad	0x3fe1b88ebcc6c54c              # double 0.55377900000000002
	.quad	0x3fa0cf7caa7589f0              # double 0.032833000000000001
	.quad	0x3fea573647baa9b5              # double 0.82314600000000004
	.quad	0x3fe4116872b020c5              # double 0.62712500000000004
	.quad	0x3fe01b1960fa15db              # double 0.50330799999999998
	.quad	0x3fd527c393682731              # double 0.33055200000000001
	.quad	0x3fd3eb8d82342246              # double 0.31125199999999997
	.quad	0x3feb330b5aa71583              # double 0.84998099999999999
	.quad	0x3fe38882f0e0a84c              # double 0.61041400000000001
	.quad	0x3fe814e1a3f4666f              # double 0.75254900000000002
	.quad	0x3faca90470a808c8              # double 0.055976999999999999
	.quad	0x3fec36c15d2d01c1              # double 0.88168400000000002
	.quad	0x3fe71a08bfc2224f              # double 0.72192800000000001
	.quad	0x3fe8e8a0d349be90              # double 0.77839700000000001
	.quad	0x3fe7ec52a411c2a0              # double 0.74759799999999998
	.quad	0x3fb3b3743632c1f4              # double 0.076956999999999998
	.quad	0x3fd145308bb90646              # double 0.26984799999999998
	.quad	0x3fe9c8d1958969a1              # double 0.80576400000000004
	.quad	0x3fc594f26aec0725              # double 0.16860800000000001
	.quad	0x3f8e1eb4202d9cf1              # double 0.014707
	.quad	0x3fe17e7e1fc08fa8              # double 0.54669100000000004
	.quad	0x3fdb7a398201cd60              # double 0.42933500000000002
	.quad	0x3fe60cb4aec8d5c7              # double 0.68905099999999997
	.quad	0x3fe417a46173b85f              # double 0.62788600000000006
	.quad	0x3fd1795b35b0bbf5              # double 0.273032
	.quad	0x3fee5df43c7d5ed0              # double 0.94896899999999995
	.quad	0x3fe685c03361565c              # double 0.70382699999999998
	.quad	0x3fe4eb5d462c343b              # double 0.65373099999999995
	.quad	0x3fe65e19fc2a886a              # double 0.69898700000000002
	.quad	0x3fef2c3009b30729              # double 0.974144
	.quad	0x3fd5f2b239a38fbd              # double 0.34293800000000002
	.quad	0x3fd2b0ea18372e6a              # double 0.29204799999999997
	.quad	0x3fdeaa9b499d0204              # double 0.47916300000000001
	.quad	0x3feba5e13b18dac2              # double 0.86399899999999996
	.quad	0x3fd183cf2cf95d4f              # double 0.27367000000000002
	.quad	0x3fd5c33721d53cde              # double 0.34004000000000001
	.quad	0x3fee36f7e3d1cc10              # double 0.94420999999999999
	.quad	0x3fd83aafff36ac64              # double 0.37858199999999997
	.quad	0x3fef596638433d6c              # double 0.97966299999999995
	.quad	0x3fd35a74c09c3ce2              # double 0.302396
	.quad	0x3fcbeb18116ebd4d              # double 0.218112
	.quad	0x3fe3795f676ea423              # double 0.60856600000000005
	.quad	0x3fd5bbecaab8a5ce              # double 0.33959499999999998
	.quad	0x3fef1f6a93f290ac              # double 0.97258500000000003
	.quad	0x3fac1a6937d1fe65              # double 0.054889
	.quad	0x3fe7e4755ffe6d59              # double 0.74663800000000002
	.quad	0x3fd2d3458cd20afa              # double 0.29414499999999999
	.quad	0x3fe4d9dba908a266              # double 0.65159400000000001
	.quad	0x3fd454b48d3ae686              # double 0.31767000000000001
	.quad	0x3fe2004b7f5a5333              # double 0.56253600000000004
	.quad	0x3fe67e0ef99806f2              # double 0.70288799999999996
	.quad	0x3fdd0eed02cd39da              # double 0.454036
	.quad	0x3fa93165d3996fa8              # double 0.049204999999999999
	.quad	0x3fe5b945308bb906              # double 0.67886599999999997
	.quad	0x3fe5552c16df3f96              # double 0.66664699999999999
	.quad	0x3fd6ed7c6fbd273d              # double 0.35824499999999998
	.quad	0x3fd3f52fc2656abe              # double 0.31184000000000001
	.quad	0x3fb4a5bd944aa540              # double 0.080654000000000003
	.quad	0x3faffeb074a771c9              # double 0.062489999999999997
	.quad	0x3fdc5c52e72da123              # double 0.443135
	.quad	0x3fec5ffc5479d4d8              # double 0.88671699999999998
	.quad	0x3fecb44806290eed              # double 0.897007
	.quad	0x3fe783d35eb7457c              # double 0.734842
	.quad	0x3f9e59f2ba9d1f60              # double 0.02964
	.quad	0x3fe776534373f317              # double 0.73319400000000001
	.quad	0x3fedce4649906cca              # double 0.93142999999999998
	.quad	0x3fe93417ca2120e2              # double 0.787609
	.quad	0x3fc3b2702a3486f0              # double 0.15388299999999999
	.quad	0x3fd8e596c82e019b              # double 0.389013
	.quad	0x3fd88f4f93bc0a07              # double 0.383747
	.quad	0x3fec0283d35eb745              # double 0.87530699999999995
	.quad	0x3fe1be596c82e01a              # double 0.55448600000000003
	.quad	0x3fda6e8af81626b3              # double 0.412997
	.quad	0x3fbd2b2bfdb4cc25              # double 0.11394
	.quad	0x3fed9f16b11c6d1e              # double 0.92566999999999999
	.quad	0x3fbfe69270b06c44              # double 0.124612
	.quad	0x3fce0620ab713272              # double 0.23456199999999999
	.quad	0x3fef9d798d8a979e              # double 0.98797299999999999
	.quad	0x3fc4bc621b7e0ac8              # double 0.161999
	.quad	0x3fd934d6a161e4f7              # double 0.39384999999999998
	.quad	0x3fe328954a7f8013              # double 0.59870400000000001
	.quad	0x3fefb910c2c5e2ce              # double 0.99134100000000003
	.quad	0x3fe5ec5b078d92fb              # double 0.68510199999999999
	.quad	0x3fd05232d2bb2357              # double 0.25501699999999999
	.quad	0x3fe38fabda0dfdf0              # double 0.61128800000000005
	.quad	0x3fd672c94b380cb7              # double 0.35075600000000001
	.quad	0x3fe4f83382e44b6f              # double 0.65529800000000005
	.quad	0x3fe70357a355043e              # double 0.71915799999999996
	.quad	0x3fd83ea704bc2763              # double 0.37882399999999999
	.quad	0x3fe30512231832fd              # double 0.59436900000000004
	.quad	0x3fdf09d495182a99              # double 0.48497499999999999
	.quad	0x3fd3ccf28c79f666              # double 0.30938399999999999
	.quad	0x3fd84b018611fd59              # double 0.37957800000000003
	.quad	0x3fc8e70c1333b96b              # double 0.194551
	.quad	0x3feaafab53d640ea              # double 0.83394400000000002
	.quad	0x3fef01fd9ba1b196              # double 0.96899299999999999
	.quad	0x3fcc815e39713ad6              # double 0.22269800000000001
	.quad	0x3fe2b4a44c7b02d6              # double 0.58455100000000004
	.quad	0x3fe199d66adb402d              # double 0.55002899999999999
	.quad	0x3fee2036006d0d4a              # double 0.94143200000000005
	.quad	0x3fa852d666a98245              # double 0.047507000000000001
	.quad	0x3fdda94ff0025bfb              # double 0.46345900000000001
	.quad	0x3fccabc5154866a1              # double 0.223992
	.quad	0x3fd6fbb0e5e67946              # double 0.35911199999999999
	.quad	0x3fe673797460242d              # double 0.701596
	.quad	0x3fd2e3c968943e10              # double 0.295153
	.quad	0x3fe8ec460ed80a18              # double 0.77884200000000003
	.quad	0x3fb955b4677b395c              # double 0.098963999999999996
	.quad	0x3fa304039abf3387              # double 0.037139999999999999
	.quad	0x3fe102de00d1b717              # double 0.53159999999999996
	.quad	0x3fcd314445aa2e3c              # double 0.22806599999999999
	.quad	0x3fd17967caea747e              # double 0.27303500000000003
	.quad	0x3fef98e325d4a5df              # double 0.98741299999999998
	.quad	0x3fd018e757928e0d              # double 0.25152000000000002
	.quad	0x3fdbcb85a4f00ef1              # double 0.43429699999999999
	.quad	0x3fd77210be9424e6              # double 0.36633700000000002
	.quad	0x3fd3f0739b024f66              # double 0.31155100000000002
	.quad	0x3fefbe2f7b17ce53              # double 0.99196600000000001
	.quad	0x3fe9b6f5caf2d7f9              # double 0.80358399999999996
	.quad	0x3fe349906cca2db6              # double 0.60272999999999999
	.quad	0x3fb5a2f8bdec5f39              # double 0.084517999999999996
	.quad	0x3fc3662fdfc19c17              # double 0.151556
	.quad	0x3feef0739b024f66              # double 0.96685200000000004
	.quad	0x3fd816b11c6d1e11              # double 0.37638500000000003
	.quad	0x3fea4007570c5650              # double 0.82031600000000005
	.quad	0x3fd0c38b04ab606b              # double 0.26193499999999997
	.quad	0x3fe26c679cc74b84              # double 0.57573300000000005
	.quad	0x3fe891bc55864452              # double 0.76778999999999997
	.quad	0x3fd1fca42aed1394              # double 0.28104499999999999
	.quad	0x3fedb4fc610f0e91              # double 0.92834300000000003
	.quad	0x3fd168f4b61fe21e              # double 0.27203100000000002
	.quad	0x3fe71fa54c554328              # double 0.72261299999999995
	.quad	0x3fcc44955b4677b4              # double 0.22084300000000001
	.quad	0x3fede440f2389720              # double 0.93411299999999997
	.quad	0x3fea63e6c4c5974e              # double 0.82469499999999996
	.quad	0x3fd673cd573647bb              # double 0.35081800000000002
	.quad	0x3fe34b81733226c4              # double 0.60296700000000003
	.quad	0x3fad3c579f234656              # double 0.057100999999999999
	.quad	0x3fe0a4894c447c31              # double 0.52008500000000002
	.quad	0x3fcd87160956c0d7              # double 0.230685
	.quad	0x3fcdc2ca148ba83f              # double 0.23250699999999999
	.quad	0x3fbccd423d9231c6              # double 0.112507
	.quad	0x3fef87a6bd6e8af8              # double 0.98530899999999999
	.quad	0x3fc165b20b8066c3              # double 0.13591600000000001
	.quad	0x3fea3c2dadb8348f              # double 0.81984599999999996
	.quad	0x3f85c31593e5fb72              # double 0.010626
	.quad	0x3fa41ce6c093d966              # double 0.039282999999999998
	.quad	0x3fd79bdc69f8c21e              # double 0.36888799999999999
	.quad	0x3fcc38088509bf9c              # double 0.22045999999999999
	.quad	0x3fecc6c97d8cf399              # double 0.89926600000000001
	.quad	0x3fbb29802c0a4a06              # double 0.106102
	.quad	0x3fa637bd05af6c6a              # double 0.043394000000000002
	.quad	0x3feabd5bab21815a              # double 0.835615
	.quad	0x3fa53d20f2becedd              # double 0.041481999999999998
	.quad	0x3fadd67ba237cdcd              # double 0.058277000000000002
	.quad	0x3fec8342aa9f7b5b              # double 0.89102300000000001
	.quad	0x3fe9751697f1f9ad              # double 0.795543
	.quad	0x3f92bc72e275ab7e              # double 0.018297000000000001
	.quad	0x3fc6084a515ce9e6              # double 0.172128
	.quad	0x3fe6586876e1dead              # double 0.69829200000000002
	.quad	0x3fb9794a6eb91b3f              # double 0.099506999999999998
	.quad	0x3fc79b994e1a3f46              # double 0.18443599999999999
	.quad	0x3fe140895d0b73d2              # double 0.53912800000000005
	.quad	0x3fe40242d05f2885              # double 0.62527600000000005
	.quad	0x3fb50507a6bd6e8b              # double 0.082108
	.quad	0x3fa428b2a6b0d951              # double 0.039372999999999998
	.quad	0x3fec540ee06d9381              # double 0.88526099999999996
	.quad	0x3fea4ab606b7aa26              # double 0.82162000000000002
	.quad	0x3feaa925fe974a34              # double 0.83314799999999999
	.quad	0x3fda1a36e2eb1c43              # double 0.40784999999999999
	.quad	0x3fcde1a8262456f7              # double 0.23344899999999999
	.quad	0x3fe5a730c67168f9              # double 0.67665900000000001
	.quad	0x3fc8a276b7ed41b7              # double 0.19245799999999999
	.quad	0x3fe1e32a0663c750              # double 0.55898000000000003
	.quad	0x3fee3923a29c779a              # double 0.94447499999999995
	.quad	0x3fcc3b9ae0c17657              # double 0.22056899999999999
	.quad	0x3fd10b630a91537a              # double 0.26632
	.quad	0x3fc17460242d05f3              # double 0.13636400000000001
	.quad	0x3fdb6a37ac3eb7cc              # double 0.42835800000000002
	.quad	0x3fb6af9a8cdea034              # double 0.088617000000000001
	.quad	0x3fe066cf41f212d7              # double 0.51254999999999995
	.quad	0x3fc06d82ba5a0382              # double 0.12834200000000001
	.quad	0x3fd925e56cd6c2f0              # double 0.39293800000000001
	.quad	0x3fe992f901083dbc              # double 0.79919099999999998
	.quad	0x3fd0e3c105186db5              # double 0.263901
	.quad	0x3fb062e4d1a65061              # double 0.064008999999999996
	.quad	0x3fe2dd1e53a81dc1              # double 0.58949200000000002
	.quad	0x3fecd7de0d66f0d0              # double 0.90135100000000001
	.quad	0x3fc43f24d8fd5cb8              # double 0.15817700000000001
	.quad	0x3fac0f66a5508701              # double 0.054805
	.quad	0x3fe908d6d3b6cbda              # double 0.78232900000000005
	.quad	0x3feea4228997c3d7              # double 0.95753600000000005
	.quad	0x3fd65ec80c73abc9              # double 0.34953499999999998
	.quad	0x3fce5fc7e6b3fea0              # double 0.23729800000000001
	.quad	0x3fec39799e518f3f              # double 0.88201600000000002
	.quad	0x3fd7aa582dbe7f2c              # double 0.36977199999999999
	.quad	0x3fc6751ce28ed5f1              # double 0.17544899999999999
	.quad	0x3fcc1bb05faebc41              # double 0.21959500000000001
	.quad	0x3fe7cc532a497fa6              # double 0.74369200000000002
	.quad	0x3fe3c47c30d306a3              # double 0.61773500000000003
	.quad	0x3fc8388ebcc6c54c              # double 0.18922600000000001
	.quad	0x3fe619ce075f6fd2              # double 0.69064999999999999
	.quad	0x3fed89c3ce2089e3              # double 0.92306699999999997
	.quad	0x3fded20f2becedd5              # double 0.48157100000000003
	.quad	0x3fe1f394b7b28955              # double 0.56098400000000004
	.quad	0x3fcb89ce4a7b4e55              # double 0.215143
	.quad	0x3fb673b42cc2d6aa              # double 0.087703000000000003
	.quad	0x3fe3df090f733a8a              # double 0.62097599999999997
	.quad	0x3fc0ae9ee45c358b              # double 0.130329
	.quad	0x3fdb078d92fb19e7              # double 0.42233599999999999
	.quad	0x3fde2007dd441355              # double 0.47070499999999998
	.quad	0x3fea4c532a497fa6              # double 0.82181700000000002
	.quad	0x3fd3de8b3b320536              # double 0.31045800000000001
	.quad	0x3f8c829cfdd22856              # double 0.013920999999999999
	.quad	0x3fdd3b320535c9e6              # double 0.45673799999999998
	.quad	0x3fea8eed02cd39da              # double 0.82994699999999999
	.quad	0x3fe02bead4f5903a              # double 0.50536099999999995
	.quad	0x3fec8f27bb2fec57              # double 0.89247500000000002
	.quad	0x3fe1fe974a3400b9              # double 0.56232800000000005
	.quad	0x3fb3d9ba1b1960fa              # double 0.077540999999999998
	.quad	0x3fc751c5c5718eb9              # double 0.18218300000000001
	.quad	0x3fe82f102363b257              # double 0.755745
	.quad	0x3fe7508f648c7193              # double 0.72858400000000001
	.quad	0x3fdbbe22e5de15ca              # double 0.43347999999999998
	.quad	0x3fdb68cac4b4d057              # double 0.42827100000000001
	.quad	0x3fe06bf22c01e68a              # double 0.51317699999999999
	.quad	0x3fd7ece13f4a98ab              # double 0.37383300000000003
	.quad	0x3fd7ada76d97b310              # double 0.36997400000000003
	.quad	0x3fe0441fea8112ba              # double 0.50831599999999999
	.quad	0x3fe01e1b089a0275              # double 0.50367499999999998
	.quad	0x3fd05d462c343b71              # double 0.255693
	.quad	0x3fe7dee34fc610f1              # double 0.74595800000000001
	.quad	0x3fe04c426351def0              # double 0.50930900000000001
	.quad	0x3fcbe98dcdb37c9a              # double 0.21806500000000001
	.quad	0x3fd8f77292c49342              # double 0.39010299999999998
	.quad	0x3f7755bccaf709b7              # double 0.0056969999999999998
	.quad	0x3fbbf3387160956c              # double 0.10918
	.quad	0x3fe2135fc3b4f616              # double 0.56486499999999995
	.quad	0x3fe1cd594f26aec0              # double 0.55631699999999995
	.quad	0x3fe54ac4b4d056c5              # double 0.665377
	.quad	0x3fe4f70de8f6ceff              # double 0.65515800000000002
	.quad	0x3feb2fb7e90ff972              # double 0.84957499999999997
	.quad	0x3fc33ba775fb2ee0              # double 0.150258
	.quad	0x3fe37a311e85fd05              # double 0.60866600000000004
	.quad	0x3fdadc22ab25b318              # double 0.419686
	.quad	0x3fee902de00d1b71              # double 0.95509999999999995
	.quad	0x3fe599cbee807bbb              # double 0.67502399999999996
	.quad	0x3fdfb2aae297396d              # double 0.49528
	.quad	0x3fe172b020c49ba6              # double 0.54525000000000001
	.quad	0x3fb63fab10ba6267              # double 0.086909
	.quad	0x3fef6ff3ade225fa              # double 0.98241599999999996
	.quad	0x3fdd7c4e2f37fbf0              # double 0.46071200000000001
	.quad	0x3fe1c02afdda8bd2              # double 0.55470799999999998
	.quad	0x3fd4f3061c79b34a              # double 0.32733299999999999
	.quad	0x3fd5ede54b48d3ae              # double 0.34264499999999998
	.quad	0x3fed4b44a1f08030              # double 0.91543799999999997
	.quad	0x3fe29cb039ef0f17              # double 0.58162700000000001
	.quad	0x3feedc13fd0d0679              # double 0.96436500000000002
	.quad	0x3fe13bb40b34e768              # double 0.53853799999999996
	.quad	0x3fdb875d56f32bdc              # double 0.43013699999999999
	.quad	0x3feed9578a2a90cd              # double 0.96403099999999997
	.quad	0x3fef9348b220791c              # double 0.98672899999999996
	.quad	0x3fd5e3369b9d7fd8              # double 0.34199299999999999
	.quad	0x3fe48e5a35d67ba2              # double 0.64237699999999998
	.quad	0x3fd78a3f8982cb21              # double 0.367813
	.quad	0x3fe97efe0ce0b913              # double 0.79675200000000002
	.quad	0x3fe7ddca4b124d0a              # double 0.74582400000000004
	.quad	0x3fd1f5cf2495e17e              # double 0.28062799999999999
	.quad	0x3fe9c2f837b4a234              # double 0.80505000000000004
	.quad	0x3f9cd141a6937d20              # double 0.028142
	.quad	0x3fd0ab3aabcd78c4              # double 0.26045099999999999
	.quad	0x3fc5ef177a7008a7              # double 0.17135900000000001
	.quad	0x3fed681ecd4aa10e              # double 0.91896
	.quad	0x3fec641f644955b4              # double 0.88722199999999995
	.quad	0x3fe5280cf9e3864d              # double 0.66113900000000003
	.quad	0x3fef0e66cb10342b              # double 0.97050800000000003
	.quad	0x3fea010a569b1748              # double 0.81262699999999999
	.quad	0x3feee2f166e008ea              # double 0.96520300000000003
	.quad	0x3fd62f01754b05b8              # double 0.34661900000000001
	.quad	0x3fdfb8ae31d712a1              # double 0.495647
	.quad	0x3fde8fcd67fd3f5b              # double 0.47752699999999998
	.quad	0x3fea7ffbce4217d3              # double 0.82812300000000005
	.quad	0x3fe2d011904b3c3e              # double 0.58789899999999995
	.quad	0x3fa9ac36544fe36d              # double 0.050141999999999999
	.quad	0x3fdd4167a95c853c              # double 0.457117
	.quad	0x3fdc5faa8a82a561              # double 0.44333899999999998
	.quad	0x3fd136544fe36d22              # double 0.26894099999999999
	.quad	0x3fe0a31832fcac8e              # double 0.51990899999999995
	.quad	0x3fedd85be1a82624              # double 0.93266099999999996
	.quad	0x3fd009203a322af5              # double 0.25055699999999997
	.quad	0x3fe3ad83c6c97d8d              # double 0.61493100000000001
	.quad	0x3fca337a80cf9e38              # double 0.20469599999999999
	.quad	0x3fd610cb295e9e1b              # double 0.344775
	.quad	0x3fed043c3a42f1ed              # double 0.90676699999999999
	.quad	0x3fd87e56473471f8              # double 0.38271100000000002
	.quad	0x3fd1792d1287c201              # double 0.27302100000000001
	.quad	0x3fd4dd93c46d82ba              # double 0.32602399999999998
	.quad	0x3fe93b62413db7f1              # double 0.78849899999999995
	.quad	0x3fdb6117720c8cd6              # double 0.42780099999999999
	.quad	0x3fe719999999999a              # double 0.72187500000000004
	.quad	0x3fc3486f049a9974              # double 0.150648
	.quad	0x3f99b52007dd4413              # double 0.025104999999999999
	.quad	0x3fda7a072d1aeb3e              # double 0.41369800000000001
	.quad	0x3febb8cda6e75ff6              # double 0.866309
	.quad	0x3feaad6a9c560c7c              # double 0.83366899999999999
	.quad	0x3fcb0e0221426fe7              # double 0.211365
	.quad	0x3fd601b866e43aa8              # double 0.34385500000000002
	.quad	0x3fcd9d7774aba387              # double 0.23136799999999999
	.quad	0x3fe2436fc158fb44              # double 0.57073200000000002
	.quad	0x3fc7d9f4d37c1377              # double 0.186339
	.quad	0x3fedcde7ea5f84cb              # double 0.93138500000000002
	.quad	0x3fca1bb8c32a8c9c              # double 0.20397100000000001
	.quad	0x3fe7205dd8f92afa              # double 0.72270100000000004
	.quad	0x3fc864c2f837b4a2              # double 0.19057499999999999
	.quad	0x3fe4f71865519371              # double 0.65516300000000005
	.quad	0x3fea9615ebfa8f7e              # double 0.83082100000000003
	.quad	0x3f998cc144028e50              # double 0.024951000000000001
	.quad	0x3fed39d5e4a38327              # double 0.91330999999999996
	.quad	0x3fd0a3f034b0e1b5              # double 0.26000600000000001
	.quad	0x3fd6ae03b3e9a6f8              # double 0.35437099999999999
	.quad	0x3fdbe5796bfca85d              # double 0.43588100000000002
	.quad	0x3fc95393250b5244              # double 0.19786300000000001
	.quad	0x3fe33300de4c5111              # double 0.59997599999999995
	.quad	0x3fd23482be8bc16a              # double 0.28445500000000001
	.quad	0x3fe44bcad9ad85e0              # double 0.63425200000000004
	.quad	0x3fde03c4b09e98dd              # double 0.46898000000000001
	.quad	0x3fe1b8fffbce4218              # double 0.55383300000000002
	.quad	0x3fea46aa087ca644              # double 0.82112600000000002
	.quad	0x3fed43fe5c91d14e              # double 0.91454999999999997
	.quad	0x3fe0c7b02d59d55e              # double 0.52437599999999995
	.quad	0x3fd18950763a1901              # double 0.27400600000000003
	.quad	0x3fc111be6e653869              # double 0.133354
	.quad	0x3fddac647778dd61              # double 0.46364699999999998
	.quad	0x3fec7401c4fc1df3              # double 0.88916099999999998
	.quad	0x3feb70196d8f4f94              # double 0.85743400000000002
	.quad	0x3fba64c2f837b4a2              # double 0.1031
	.quad	0x3feec39bcba30121              # double 0.96137799999999995
	.quad	0x3fccd2a1f8e3ac0c              # double 0.22517799999999999
	.quad	0x3fd935610adcd2d4              # double 0.39388299999999998
	.quad	0x3fdc58b827fa1a0d              # double 0.442915
	.quad	0x3fca86df82b1f688              # double 0.20724100000000001
	.quad	0x3fe75e3da2f8bdec              # double 0.73025399999999996
	.quad	0x3fc4adff822bbecb              # double 0.16156000000000001
	.quad	0x3fd9969a0ad8a116              # double 0.39981699999999998
	.quad	0x3fe93f93ff25e56d              # double 0.78901100000000002
	.quad	0x3fc85cbbc2b94d94              # double 0.19033
	.quad	0x3fef06ab14ec204f              # double 0.96956399999999998
	.quad	0x3fd306a6e32e3822              # double 0.29728100000000002
	.quad	0x3fdc1327243137b0              # double 0.43866899999999998
	.quad	0x3fedf9f87f023e9f              # double 0.93676400000000004
	.quad	0x3fb9b25f633ce63a              # double 0.100378
	.quad	0x3fdabfad2999567e              # double 0.41794900000000001
	.quad	0x3fe6c868b9fdbd30              # double 0.71196400000000004
	.quad	0x3fe54a9ef5232d2c              # double 0.66535900000000003
	.quad	0x3f8d8622c4502689              # double 0.014416
	.quad	0x3faff9d6f112fd33              # double 0.062453000000000002
	.quad	0x3fb918e325d4a5df              # double 0.098035999999999998
	.quad	0x3fd4692f6e82949a              # double 0.31891999999999998
	.quad	0x3fe914b7b28954a8              # double 0.783779
	.quad	0x3fe8bb645a1cac08              # double 0.77287499999999998
	.quad	0x3fe78baa582dbe7f              # double 0.73579899999999998
	.quad	0x3fe74358afc47e4a              # double 0.72697100000000003
	.quad	0x3fd14666ec9e236c              # double 0.269922
	.quad	0x3fa6b4e9813879c4              # double 0.044349
	.quad	0x3fc612a51e321a2e              # double 0.17244399999999999
	.quad	0x3fee76e6106ab14f              # double 0.95201400000000003
	.quad	0x3fcc556d19dece57              # double 0.221357
	.quad	0x3fe84bf8fcd67fd4              # double 0.759274
	.quad	0x3fe01c8c9320d994              # double 0.50348499999999996
	.quad	0x3fda574f722e1ac5              # double 0.41157899999999997
	.quad	0x3fe7f7fcfc3f811f              # double 0.74902199999999997
	.quad	0x3fe4d568e820e62a              # double 0.65105100000000005
	.quad	0x3fdd74a771c970f8              # double 0.46024500000000002
	.quad	0x3fed0d8cb07d0aee              # double 0.90790400000000004
	.quad	0x3fef2224edf61240              # double 0.97291799999999994
	.quad	0x3fe1d3198288051d              # double 0.55701900000000004
	.quad	0x3fec6e6fb4c3c18b              # double 0.88848099999999997
	.quad	0x3fef72cd7cf5f4e4              # double 0.98276399999999997
	.quad	0x3feb667d77fae361              # double 0.85626100000000005
	.quad	0x3fe4c343b70ef566              # double 0.64883599999999997
	.quad	0x3fe239b23dd54da5              # double 0.56954300000000002
	.quad	0x3fb29c347e8ccdd9              # double 0.072695999999999997
	.quad	0x3fe664abe6a337a8              # double 0.69978899999999999
	.quad	0x3fe5d7774aba3876              # double 0.68255200000000005
	.quad	0x3fbf0691ea78af3e              # double 0.121194
	.quad	0x3fd55004fb1183b6              # double 0.333009
	.quad	0x3fd8a437824d4cba              # double 0.385023
	.quad	0x3fdc66e008e9b38d              # double 0.44377899999999998
	.quad	0x3fe2287e38eb0319              # double 0.56744300000000003
	.quad	0x3fd29ccfaeff5c6c              # double 0.290821
	.quad	0x3fd5afc04c8bc9cd              # double 0.33885199999999999
	.quad	0x3fe2496ededaec4a              # double 0.57146399999999997
	.quad	0x3fd5a4095f2452c6              # double 0.33813700000000002
	.quad	0x3fe3f329c347e8cd              # double 0.62343300000000001
	.quad	0x3fd0ac710cb295ea              # double 0.26052500000000001
	.quad	0x3fe1a2f48c2e770c              # double 0.55114200000000002
	.quad	0x3fe0914b167ec786              # double 0.51773599999999997
	.quad	0x3fcf650a45d41fa7              # double 0.24527099999999999
	.quad	0x3fdb5143bf727137              # double 0.42683500000000002
	.quad	0x3fd7a14488c60cbf              # double 0.36921799999999999
	.quad	0x3fddd5fdcdf69878              # double 0.46618599999999999
	.quad	0x3f7653c9abb01c93              # double 0.0054510000000000001
	.quad	0x3fc6efbb0e5e6794              # double 0.17919099999999999
	.quad	0x3fe26c636b096356              # double 0.57573099999999999
	.quad	0x3feec842fa509396              # double 0.96194599999999997
	.quad	0x3fcd17720c8cd63d              # double 0.22727800000000001
	.quad	0x3fc654690de09353              # double 0.17445099999999999
	.quad	0x3fc295af294dd723              # double 0.14519299999999999
	.quad	0x3fce0157eed45e92              # double 0.23441600000000001
	.quad	0x3fd4b72c5197a249              # double 0.32368000000000002
	.quad	0x3fecb419e30014f9              # double 0.89698500000000003
	.quad	0x3fb69eb2074ea8da              # double 0.088358999999999993
	.quad	0x3fee72b020c49ba6              # double 0.95150000000000001
	.quad	0x3f88ca8198f1d3ed              # double 0.012104999999999999
	.quad	0x3fe2329a1b9f98b7              # double 0.56867699999999999
	.quad	0x3fefbf39d1b2e59b              # double 0.992093
	.quad	0x3fec679aae6c8f75              # double 0.88764699999999996
	.quad	0x3fe0662dc6e2a800              # double 0.51247299999999996
	.quad	0x3fdf7607c4199fe4              # double 0.49157899999999999
	.quad	0x3fe334cc25072086              # double 0.60019500000000003
	.quad	0x3fe5988f42fe8251              # double 0.67487299999999995
	.quad	0x3fbe7525460aa64c              # double 0.118975
	.quad	0x3fe9a6202539756d              # double 0.80152900000000005
	.quad	0x3fabff25e56cd6c3              # double 0.054681
	.quad	0x3fc0c34c1a8ac5c1              # double 0.13095999999999999
	.quad	0x3fede89eba6aca79              # double 0.93464599999999998
	.quad	0x3fd7e4e69f05ea25              # double 0.37334600000000001
	.quad	0x3fa97f62b6ae7d56              # double 0.049799999999999997
	.quad	0x3fc319934efcbd55              # double 0.14921799999999999
	.quad	0x3feb2e87d2c7b891              # double 0.84943000000000002
	.quad	0x3fe34cdfaca36199              # double 0.60313399999999995
	.quad	0x3fea3d29563a9f38              # double 0.81996599999999997
	.quad	0x3fd05ba6efc371da              # double 0.25559399999999999
	.quad	0x3fed556d19dece57              # double 0.91667799999999999
	.quad	0x3feed5bee3d5fdce              # double 0.963592
	.quad	0x3fe03b42cc2d6a9c              # double 0.50723399999999996
	.quad	0x3fe05634549b62c7              # double 0.51052299999999995
	.quad	0x3fe61cb039ef0f17              # double 0.69100200000000001
	.quad	0x3fe5aab042528ae7              # double 0.67708599999999997
	.quad	0x3feb2396073de1e3              # double 0.84809400000000001
	.quad	0x3fdebb7739f340d5              # double 0.48019200000000001
	.quad	0x3fedbdc8b86b15f9              # double 0.92941700000000005
	.quad	0x3fe896c3fc43b2dd              # double 0.76840399999999998
	.quad	0x3fcfe1975f2cb641              # double 0.24907199999999999
	.quad	0x3fee3906466b1e5c              # double 0.94446099999999999
	.quad	0x3fe6951c5c5718ec              # double 0.70570200000000005
	.quad	0x3fef00d1b71758e2              # double 0.96884999999999999
	.quad	0x3feba58f7121ab4b              # double 0.86395999999999995
	.quad	0x3fd6aed99cbee808              # double 0.35442200000000001
	.quad	0x3fec31f03d145d85              # double 0.88109599999999999
	.quad	0x3fe94f0307f23cc9              # double 0.79089500000000001
	.quad	0x3fd480d801b43526              # double 0.32036399999999998
	.quad	0x3feecb5781c714fd              # double 0.96232200000000001
	.quad	0x3fe2eac215b9a5a9              # double 0.59115700000000004
	.quad	0x3fd725aee631f8a1              # double 0.36167500000000002
	.quad	0x3fe5dd052934acb0              # double 0.68323
	.quad	0x3fcaf7b9e060fe48              # double 0.21068500000000001
	.quad	0x3fe13a98eda22f6a              # double 0.53840299999999996
	.quad	0x3fe7cf2f123c42a6              # double 0.74404099999999995
	.quad	0x3fd9679cc74b838c              # double 0.396949
	.quad	0x3fe376683c297bfa              # double 0.60820399999999997
	.quad	0x3fdc29b6b2af1455              # double 0.44004599999999999
	.quad	0x3fd96d86ec17ebaf              # double 0.39731
	.quad	0x3fe48a65492ff4ba              # double 0.64189399999999996
	.quad	0x3fe76872b020c49c              # double 0.73150000000000004
	.quad	0x3f60a350d2806af4              # double 0.0020309999999999998
	.quad	0x3feeae0c17657753              # double 0.95874599999999998
	.quad	0x3fc0e043a2163fdd              # double 0.13184399999999999
	.quad	0x3fdc27e9531550ca              # double 0.43993599999999999
	.quad	0x3fef2059a73b42cc              # double 0.97269899999999998
	.quad	0x3fddd6494d50ebab              # double 0.46620400000000001
	.quad	0x3fd573f748a15981              # double 0.33520299999999997
	.quad	0x3feb33636f3b213e              # double 0.85002299999999997
	.quad	0x3fdb73eab367a0f9              # double 0.42895
	.quad	0x3fe9e22e5de15ca7              # double 0.80886000000000002
	.quad	0x3fedaecd07852f7f              # double 0.92758799999999997
	.quad	0x3fe5017fc7607c42              # double 0.65643300000000004
	.quad	0x3fe183cd141a6938              # double 0.54733900000000002
	.quad	0x3fec949e8815e397              # double 0.89314199999999999
	.quad	0x3fc54245f5ad96a7              # double 0.16608500000000001
	.quad	0x3fd6e09784ec636b              # double 0.357458
	.quad	0x3fe3c9f72f76e610              # double 0.61840399999999995
	.quad	0x3fe8776c4827b6fe              # double 0.76457799999999998
	.quad	0x3fe9afdb8fde2ef5              # double 0.80271700000000001
	.quad	0x3fd11016ce789e77              # double 0.26660699999999998
	.quad	0x3f92d87f88765ba7              # double 0.018404
	.quad	0x3fdec059210385c6              # double 0.48048999999999997
	.quad	0x3fe77735c182ecaf              # double 0.73330200000000001
	.quad	0x3fdaf7b9e060fe48              # double 0.42137000000000002
	.quad	0x3fddef9db22d0e56              # double 0.46775
	.quad	0x3fe6ae70c1333b97              # double 0.70879400000000004
	.quad	0x3fdda16a48733659              # double 0.46297700000000003
	.quad	0x3fbc04fb1183b603              # double 0.10945100000000001
	.quad	0x3fe2c347e8ccdd94              # double 0.58633800000000003
	.quad	0x3feade28aa433509              # double 0.839619
	.quad	0x3fbf8a19c9d5a188              # double 0.123201
	.quad	0x3fd393bc0a06e9ff              # double 0.305892
	.quad	0x3fe94c9ea9a3d2d8              # double 0.79060299999999994
	.quad	0x3fe3f0ed3d859c8d              # double 0.62316000000000005
	.quad	0x3faaeb1c432ca57a              # double 0.052574999999999997
	.quad	0x3fe21c7de5082cf5              # double 0.56597799999999998
	.quad	0x3fd70b242070b8d0              # double 0.36005500000000001
	.quad	0x3fd982be8bc169c2              # double 0.39860499999999999
	.quad	0x3fe9e75579af1887              # double 0.80948900000000001
	.quad	0x3fe1edd8b60f1b26              # double 0.560284
	.quad	0x3fb607e5a78f25a2              # double 0.086057999999999995
	.quad	0x3fd0f15a4acf312b              # double 0.26473099999999999
	.quad	0x3fb2cdaf4adbc665              # double 0.073451000000000002
	.quad	0x3fac0f4517614595              # double 0.054803999999999999
	.quad	0x3fe069f4906034f4              # double 0.512934
	.quad	0x3fd509edbf8b9baa              # double 0.328731
	.quad	0x3fe34588a04d1202              # double 0.60223800000000005
	.quad	0x3fd0ed783dff3f10              # double 0.26449400000000001
	.quad	0x3fbe098915bdd767              # double 0.11733300000000001
	.quad	0x3fe12b0ea18372e7              # double 0.53650600000000004
	.quad	0x3fc5f2fdb8fde2ef              # double 0.17147799999999999
	.quad	0x3fb8ee392e1ef73c              # double 0.097384999999999999
	.quad	0x3faf36ac647778dd              # double 0.060963999999999997
	.quad	0x3fc863ae2541d8e8              # double 0.19054199999999999
	.quad	0x3fe8345cfede97d0              # double 0.75639199999999995
	.quad	0x3fe964f11b60ae97              # double 0.79357200000000006
	.quad	0x3fb5984a0e410b63              # double 0.084354999999999999
	.quad	0x3fe8d675579af188              # double 0.77617899999999995
	.quad	0x3feda65f0f5a1017              # double 0.92655900000000002
	.quad	0x3fdcca9ef5232d2c              # double 0.44986700000000002
	.quad	0x3fc5dfa871a3b14b              # double 0.17088800000000001
	.quad	0x3fe469014b599aa6              # double 0.637818
	.quad	0x3fe16ba493c89f41              # double 0.54439000000000004
	.quad	0x3fbf58d1526d8b1e              # double 0.122449
	.quad	0x3fe3634b945308bc              # double 0.60587100000000005
	.quad	0x3fecc31df761cbcd              # double 0.89881800000000001
	.quad	0x3fd87f84449dbec2              # double 0.38278299999999998
	.quad	0x3fe42a433508f649              # double 0.63015900000000002
	.quad	0x3fd57a85015c2092              # double 0.33560299999999998
	.quad	0x3fee7eb4a66559f7              # double 0.95296700000000001
	.quad	0x3fee476af89c5e70              # double 0.946218
	.quad	0x3fecf141205bc01a              # double 0.90444999999999998
	.quad	0x3fb105af6c69b5a6              # double 0.066492999999999997
	.quad	0x3fe393c89f40a287              # double 0.61178999999999994
	.quad	0x3fe467210be9424e              # double 0.63758899999999996
	.quad	0x3febf08cc575c076              # double 0.87311399999999995
	.quad	0x3fe6f5e84f09528f              # double 0.71751799999999999
	.quad	0x3feb33636f3b213e              # double 0.85002299999999997
	.quad	0x3fe13e9ea1405708              # double 0.53889399999999998
	.quad	0x3f93465625a682b6              # double 0.018822999999999999
	.quad	0x3fe1a055757d5a9f              # double 0.55082200000000003
	.quad	0x3fdbb3c81908e582              # double 0.43284800000000001
	.quad	0x3fd2aa4b9884c6a4              # double 0.29164400000000001
	.quad	0x3fef633ce63a5c1c              # double 0.98086399999999995
	.quad	0x3feb35fa22706d50              # double 0.85033899999999996
	.quad	0x3fb5844d013a92a3              # double 0.08405
	.quad	0x3fb26dbd72bcb5fe              # double 0.071986999999999995
	.quad	0x3feece831ad2135e              # double 0.96270900000000004
	.quad	0x3fc6bba98eda22f7              # double 0.17760200000000001
	.quad	0x3fca9ecb31c219eb              # double 0.20797099999999999
	.quad	0x3fb2b28d8665e02f              # double 0.073037000000000005
	.quad	0x3fcd62f9ca5bd945              # double 0.22958300000000001
	.quad	0x3fd75f2452c59fb2              # double 0.36518200000000001
	.quad	0x3fe6deaee2003ab8              # double 0.71468299999999996
	.quad	0x3fe891c8eabffcdb              # double 0.76779600000000003
	.quad	0x3fbd1276fb09203a              # double 0.113563
	.quad	0x3fe03fd0d0678c00              # double 0.50778999999999996
	.quad	0x3fb97720c8cd63cc              # double 0.099474000000000006
	.quad	0x3fe5ca05dd8f92b0              # double 0.68091100000000004
	.quad	0x3feeae74f2f123c4              # double 0.95879599999999998
	.quad	0x3fdc2b884406c00e              # double 0.44015700000000002
	.quad	0x3fe4b2d2bb23571d              # double 0.64682899999999999
	.quad	0x3fb731b152f3c2db              # double 0.090602000000000002
	.quad	0x3f7cae21101b0037              # double 0.0070020000000000004
	.quad	0x3fce044284dfce31              # double 0.23450499999999999
	.quad	0x3fcb4b2745bf26f2              # double 0.213231
	.quad	0x3fe31246bf01322f              # double 0.59598099999999998
	.quad	0x3fe90a4a05dd8f93              # double 0.78250600000000003
	.quad	0x3fdb9a0ad8a11666              # double 0.43127700000000002
	.quad	0x3fe2b0a2ca9ac365              # double 0.58406199999999997
	.quad	0x3fe27110e453d20f              # double 0.57630199999999998
	.quad	0x3fec6034f3fd933e              # double 0.88674399999999998
	.quad	0x3fd148dc11e42e12              # double 0.27007199999999998
	.quad	0x3fca18a43bb40b35              # double 0.203877
	.quad	0x3fd409070fbeb9e5              # double 0.31305100000000002
	.quad	0x3fec204f2ae07e5a              # double 0.87894399999999995
	.quad	0x3fe5eb26bf8769ec              # double 0.68495499999999998
	.quad	0x3fea8e1f7d73c925              # double 0.82984899999999995
	.quad	0x3fe37e4de3b8a19d              # double 0.60916800000000004
	.quad	0x3feefd06bbdbe3c1              # double 0.96838699999999999
	.quad	0x3fcf760bf5d78812              # double 0.24579000000000001
	.quad	0x3fc6304ccee5abc1              # double 0.173349
	.quad	0x3fcb92428d434a02              # double 0.21540100000000001
	.quad	0x3febf32bdc26dce4              # double 0.87343400000000004
	.quad	0x3fe40b7e4de3b8a2              # double 0.62640300000000004
	.quad	0x3fce9d8c6d612c6b              # double 0.23918300000000001
	.quad	0x3fd290b417ca2121              # double 0.29008200000000001
	.quad	0x3fe1c2a454de7ea6              # double 0.55501
	.quad	0x3fefec6de76427c8              # double 0.99761100000000002
	.quad	0x3fba42f1ed17c5ef              # double 0.10258399999999999
	.quad	0x3feac5e9185cee18              # double 0.83665900000000004
	.quad	0x3fa0ba83f4eca687              # double 0.032673000000000001
	.quad	0x3fe4bb42cc2d6a9c              # double 0.64785899999999996
	.quad	0x3fee04ee7c49fd7a              # double 0.93810199999999999
	.quad	0x3fe96ea854477ff1              # double 0.79475799999999996
	.quad	0x3fe46e99a62ed352              # double 0.63850099999999999
	.quad	0x3fefd35a858793de              # double 0.99455000000000005
	.quad	0x3fe0b1df761cbccf              # double 0.52171299999999998
	.quad	0x3face831ad2135db              # double 0.056459000000000002
	.quad	0x3fae47991bc55864              # double 0.059139999999999998
	.quad	0x3fc26dacabc51548              # double 0.14397199999999999
	.quad	0x3fefb5350092ccf7              # double 0.99087000000000002
	.quad	0x3fd3f88765ba6efc              # double 0.31204399999999999
	.quad	0x3fd2284dfce3150e              # double 0.28371000000000002
	.quad	0x3fe8fd4bf0995aaf              # double 0.78091999999999995
	.quad	0x3fe59667b5f1bef5              # double 0.67461000000000004
	.quad	0x3fb01a6937d1fe65              # double 0.062903000000000001
	.quad	0x3fd16ae7d566cf42              # double 0.27215
	.quad	0x3fee1198aeb80ed0              # double 0.93964800000000004
	.quad	0x3fd0fa2ad3e920c0              # double 0.26526899999999998
	.quad	0x3fed4100e6afcce2              # double 0.91418500000000003
	.quad	0x3fd9e03f705857b0              # double 0.404312
	.quad	0x3fbeb723ee1bd1ee              # double 0.11998200000000001
	.quad	0x3fdb6d6dc1a47a9e              # double 0.42855399999999999
	.quad	0x3fe3b4aa9717df1a              # double 0.61580400000000002
	.quad	0x3fe5640e9d51b4fe              # double 0.66846399999999995
	.quad	0x3fd49a49c2c1b110              # double 0.32191700000000001
	.quad	0x3fd6485a0be51090              # double 0.34816599999999998
	.quad	0x3fe6dd894812be49              # double 0.71454300000000004
	.quad	0x3fd1443d46b26bf8              # double 0.26978999999999997
	.quad	0x3fb1102bc72e275b              # double 0.066653000000000004
	.quad	0x3fde7c45cbbc2b95              # double 0.47633500000000001
	.quad	0x3fdf4b90214ad363              # double 0.488987
	.quad	0x3fec381b64e05469              # double 0.88184899999999999
	.quad	0x3fe94a9478c868ba              # double 0.790354
	.quad	0x3faae429e0a41a26              # double 0.052521999999999999
	.quad	0x3feaf9f23465625a              # double 0.84301099999999995
	.quad	0x3fe195421c044285              # double 0.54947000000000001
	.quad	0x3fe4fff36ac64778              # double 0.65624400000000005
	.quad	0x3fe8527a20578e5c              # double 0.76006799999999996
	.quad	0x3f8a1d323fee2c99              # double 0.012751
	.quad	0x3f9df5cf2495e17e              # double 0.029257999999999999
	.quad	0x3febe91c8eabffce              # double 0.87220600000000004
	.quad	0x3fde5b3e1437c569              # double 0.47431899999999999
	.quad	0x3fe765d5b24e9c45              # double 0.73118099999999997
	.quad	0x3fe2f2d3c792d128              # double 0.59214199999999995
	.quad	0x3fde3700474d9c6b              # double 0.472107
	.quad	0x3fde96f6512a94ff              # double 0.477964
	.quad	0x3fd85796bfca85cb              # double 0.38034600000000002
	.quad	0x3feec0096feb4a66              # double 0.96094199999999996
	.quad	0x3fe4de9e1b089a02              # double 0.65217499999999995
	.quad	0x3fcbe3e29307af21              # double 0.217892
	.quad	0x3fed808637bd05af              # double 0.92193899999999995
	.quad	0x3febc573a797891e              # double 0.86785299999999999
	.quad	0x3f99524bfd2e9468              # double 0.024728
	.quad	0x3fba444178705426              # double 0.102604
	.quad	0x3fd6306e5cd4ed2d              # double 0.34670600000000001
	.quad	0x3fe106705c896dd2              # double 0.53203599999999995
	.quad	0x3feaa474538ef34d              # double 0.83257499999999995
	.quad	0x3fa328954a7f8013              # double 0.037419000000000001
	.quad	0x3fe695a4acf312b2              # double 0.70576700000000003
	.quad	0x3fe9bfcc9ea9a3d3              # double 0.80466300000000002
	.quad	0x3fdcf6273929ed39              # double 0.45252399999999998
	.quad	0x3fd7ec636b096356              # double 0.373803
	.quad	0x3fd1ffcdab191dde              # double 0.28123799999999999
	.quad	0x3fce3e3193f6c26a              # double 0.23627300000000001
	.quad	0x3fa1da16616b54e3              # double 0.034867000000000002
	.quad	0x3fef09070fbeb9e5              # double 0.96985200000000004
	.quad	0x3fad29bae46cfc83              # double 0.056959000000000003
	.quad	0x3f9634117f84449e              # double 0.021683000000000001
	.quad	0x3f8d51b4fe79ee03              # double 0.014316000000000001
	.quad	0x3fc92dc2b0ea1837              # double 0.19670899999999999
	.quad	0x3fc28e92d55a3a08              # double 0.14497599999999999
	.quad	0x3fd7d66277c45cbc              # double 0.37246000000000001
	.quad	0x3fe55d701d9f4d38              # double 0.66765600000000003
	.quad	0x3fe2395c42203600              # double 0.56950199999999995
	.quad	0x3fd85bccaf709b74              # double 0.38060300000000002
	.quad	0x3fe957e889c1b542              # double 0.79198100000000005
	.quad	0x3fdd30ced4e4c943              # double 0.45610400000000001
	.quad	0x3fe9d68c692f6e83              # double 0.80744000000000005
	.quad	0x3fd8b1b79d909f1f              # double 0.385847
	.quad	0x3f715bdd76683c29              # double 0.0042379999999999996
	.quad	0x3fe7005a2d72ffd2              # double 0.71879300000000002
	.quad	0x3fbd7ff9b56323bc              # double 0.115234
	.quad	0x3fe0aad81adea897              # double 0.52085499999999996
	.quad	0x3feb61b4bb5e0f80              # double 0.85567700000000002
	.quad	0x3fd0ab3edd8b60f2              # double 0.26045200000000002
	.quad	0x3fe4453f39d1b2e6              # double 0.63345300000000004
	.quad	0x3fec7b8d3f1843c4              # double 0.89008200000000003
	.quad	0x3fae9f6a93f290ac              # double 0.059810000000000002
	.quad	0x3fe68728e92d55a4              # double 0.70399900000000004
	.quad	0x3fd83dee78183f92              # double 0.37878000000000001
	.quad	0x3fdb98c3b0c4588a              # double 0.431199
	.quad	0x3fc938476f2a5a47              # double 0.19703000000000001
	.quad	0x3fe26a4873365882              # double 0.57547400000000004
	.quad	0x3febe75147f13059              # double 0.87198699999999996
	.quad	0x3fd30fba8826aa8f              # double 0.29783500000000002
	.quad	0x3fd0e4cd74927914              # double 0.26396500000000001
	.quad	0x3fd6dc5931ca7d67              # double 0.35719899999999999
	.quad	0x3fe65df00abf76a3              # double 0.698967
	.quad	0x3fe54aa326e11559              # double 0.66536099999999998
	.quad	0x3feae2cba732df50              # double 0.84018499999999996
	.quad	0x3feb36d00b45ae60              # double 0.850441
	.quad	0x3fe6a400fba8826b              # double 0.70752000000000004
	.quad	0x3fe50ce91c8eac00              # double 0.65782600000000002
	.quad	0x3f7675579af1886e              # double 0.005483
	.quad	0x3fe3b912dba4d6e4              # double 0.61634199999999995
	.quad	0x3fe6178d4fdf3b64              # double 0.69037499999999996
	.quad	0x3fd3eac8605681ed              # double 0.31120500000000001
	.quad	0x3fd5affb04ee7c4a              # double 0.338866
	.quad	0x3fe626916440f239              # double 0.69220800000000005
	.quad	0x3feff9b994e1a3f4              # double 0.99923399999999995
	.quad	0x3fe5c463065f9592              # double 0.68022300000000002
	.quad	0x3f9ac14c660a2014              # double 0.026127999999999998
	.quad	0x3fd646d82ba5a038              # double 0.34807399999999999
	.quad	0x3fd7ea39c51dabe2              # double 0.37367099999999998
	.quad	0x3fe6531337eb28d8              # double 0.69764099999999996
	.quad	0x3fd6c18f81e8a2ec              # double 0.35556399999999999
	.quad	0x3fc0027d88c1db01              # double 0.12507599999999999
	.quad	0x3fd6e41919ac7970              # double 0.35767199999999999
	.quad	0x3fe729da597d49d8              # double 0.72385900000000003
	.quad	0x3fceed80a17b0f6b              # double 0.241623
	.quad	0x3fbbe08aefb2aae3              # double 0.10889500000000001
	.quad	0x3fedc8366516db0e              # double 0.93069000000000002
	.quad	0x3fe55a14488c60cc              # double 0.66724600000000001
	.quad	0x3fa8d9945b6c3761              # double 0.048535000000000002
	.quad	0x3fc640e1719f7f8d              # double 0.17385500000000001
	.quad	0x3fe65d6bebe1650a              # double 0.69890399999999997
	.quad	0x3fea3a12b5e529bb              # double 0.81958900000000001
	.quad	0x3fd3a515ce9e5e24              # double 0.30695099999999997
	.quad	0x3fee01eabbcb1cc9              # double 0.93773399999999996
	.quad	0x3fe2dcca70d1fa33              # double 0.58945199999999998
	.quad	0x3fe6ba3875925354              # double 0.71023199999999997
	.quad	0x3feed2a62aa1943a              # double 0.96321400000000001
	.quad	0x3fed7763e4abe6a3              # double 0.92082399999999998
	.quad	0x3fc46c11a11233df              # double 0.159548
	.quad	0x3fe5d9146e4c0df6              # double 0.68274900000000005
	.quad	0x3fe14fc3f811f4f5              # double 0.540987
	.quad	0x3fe63ea4ebdd334c              # double 0.69514699999999996
	.quad	0x3fcb77af640639d6              # double 0.21459
	.quad	0x3fe860c9d9d3458d              # double 0.76181500000000002
	.quad	0x3fdc92ff4ba51a00              # double 0.44647199999999998
	.quad	0x3fe77c3b4f616723              # double 0.73391499999999998
	.quad	0x3fe492d3415b1423              # double 0.64292300000000002
	.quad	0x3fd41dfb9389b520              # double 0.31433
	.quad	0x3feefdd441355476              # double 0.96848500000000004
	.quad	0x3fe3bb9496249a13              # double 0.61664799999999997
	.quad	0x3fc269595feda661              # double 0.14384
	.quad	0x3fd6112ba16e7a31              # double 0.34479799999999999
	.quad	0x3fece266fd651b0d              # double 0.90263700000000002
	.quad	0x3fd174e65bea0ba2              # double 0.27276
	.quad	0x3fec661cffeb074a              # double 0.88746499999999995
	.quad	0x3fea4fbfc6540cc8              # double 0.82223500000000005
	.quad	0x3fdbdb3397dd00f7              # double 0.43525399999999997
	.quad	0x3fed01beb18116ec              # double 0.90646300000000001
	.quad	0x3fbfdae81882adc5              # double 0.124434
	.quad	0x3fe5639b456b441c              # double 0.66840900000000003
	.quad	0x3fe94521dda059a7              # double 0.78968899999999997
	.quad	0x3fded4b2745bf26f              # double 0.48173199999999999
	.quad	0x3fdf81b64e054691              # double 0.49229200000000001
	.quad	0x3faad1aeb3dd11be              # double 0.052380999999999997
	.quad	0x3fe5a8049667b5f2              # double 0.67676000000000003
	.quad	0x3fe87eed45e9185d              # double 0.76549400000000001
	.quad	0x3fd8ee0f3cb3e575              # double 0.38952999999999999
	.quad	0x3fd065a9a8049668              # double 0.25620500000000002
	.quad	0x3fe31754b05b7cfe              # double 0.59659799999999996
	.quad	0x3febd1bb4916ca47              # double 0.86935200000000001
	.quad	0x3feee54b48d3ae68              # double 0.96548999999999995
	.quad	0x3fe2664f54d1e96c              # double 0.57498899999999997
	.quad	0x3fe9573860999dcb              # double 0.79189699999999996
	.quad	0x3fd7e1bd1ed9dfdb              # double 0.37315300000000001
	.quad	0x3fe1da72a7bd48cb              # double 0.55791599999999997
	.quad	0x3fdfa871a3b14a90              # double 0.49465599999999998
	.quad	0x3fea2cf95d4e8fb0              # double 0.81798999999999999
	.quad	0x3f8000431bde82d8              # double 0.0078130000000000005
	.quad	0x3fecfcbf6e3f78bc              # double 0.90585300000000001
	.quad	0x3fe9db2702a3486f              # double 0.808002
	.quad	0x3fe604cf0739b025              # double 0.688087
	.quad	0x3fc159f6ec5b078e              # double 0.13555800000000001
	.quad	0x3fd66290eed02cd4              # double 0.34976600000000002
	.quad	0x3fd8ea1c68ec52a4              # double 0.389289
	.quad	0x3feb15b573eab368              # double 0.84640000000000004
	.quad	0x3fb4ef459d99029b              # double 0.081776000000000001
	.quad	0x3fe893059641f645              # double 0.76794700000000005
	.quad	0x3feca30fcf80dc33              # double 0.89490499999999995
	.quad	0x3f953543aeab7996              # double 0.020711
	.quad	0x3fd57a8d64d7f0ed              # double 0.33560499999999999
	.quad	0x3fe2887ca643cc08              # double 0.57916100000000004
	.quad	0x3fe6f7318fc50481              # double 0.71767499999999995
	.quad	0x3fe31cc74b838c11              # double 0.59726299999999999
	.quad	0x3fdf5393250b5244              # double 0.48947600000000002
	.quad	0x3fe58578e5c4eb57              # double 0.672543
	.quad	0x3fd205ea24cc6823              # double 0.281611
	.quad	0x3fe954f15e7c8d19              # double 0.79161899999999996
	.quad	0x3fe37cd035371972              # double 0.60898600000000003
	.quad	0x3fc789b52007dd44              # double 0.18389
	.quad	0x3fcc7008a697aede              # double 0.22216900000000001
	.quad	0x3fd763e07a28bb0a              # double 0.36547099999999999
	.quad	0x3fda0e410b630a91              # double 0.40711999999999998
	.quad	0x3fe1c68661ae70c1              # double 0.55548399999999998
	.quad	0x3fca3a08398a6549              # double 0.20489599999999999
	.quad	0x3fea66362a5e785b              # double 0.82497699999999996
	.quad	0x3fd50bd44998d046              # double 0.328847
	.quad	0x3fd38bf7f06705c9              # double 0.30541800000000002
	.quad	0x3fe6f9d4d834091c              # double 0.717997
	.quad	0x3fe936e71cda2b5a              # double 0.78795199999999999
	.quad	0x3fdc64020817fc76              # double 0.443604
	.quad	0x3feb5377e1b8ed1c              # double 0.853939
	.quad	0x3fd8f97edc7ef178              # double 0.39022800000000002
	.quad	0x3fe6774256bca537              # double 0.70205799999999996
	.quad	0x3fb78327674d1633              # double 0.091844999999999996
	.quad	0x3fc8444178705426              # double 0.189583
	.quad	0x3feeb5bf6a0dbad4              # double 0.95968600000000003
	.quad	0x3fe255193708aac9              # double 0.57288799999999995
	.quad	0x3fd8fc86cebbba56              # double 0.39041300000000001
	.quad	0x3fee62c98e53eb3a              # double 0.94955900000000004
	.quad	0x3fd2a2e3c536d656              # double 0.29119200000000001
	.quad	0x3fc6827b6fe2e6eb              # double 0.17585700000000001
	.quad	0x3f88cb07d0aed99d              # double 0.012106
	.quad	0x3fd836d655e28aa4              # double 0.37834699999999999
	.quad	0x3f7e5d18090b417d              # double 0.0074130000000000003
	.quad	0x3fe4dd80e496edee              # double 0.65203900000000004
	.quad	0x3fb698676a7264a1              # double 0.088262999999999994
	.quad	0x3fe521a500d5e8d5              # double 0.66035699999999997
	.quad	0x3fd27afea3df6db9              # double 0.28875699999999999
	.quad	0x3fefcf6598e10cf6              # double 0.99406700000000003
	.quad	0x3fda07075b3e1438              # double 0.40667900000000001
	.quad	0x3fb6a67e846a5d6c              # double 0.088478000000000001
	.quad	0x3fede0b2c83ec893              # double 0.93367900000000004
	.quad	0x3fec548cb4aec8d6              # double 0.88532100000000002
	.quad	0x3fb39b13165d3997              # double 0.076585
	.quad	0x3fddd59d55e6bc62              # double 0.46616299999999999
	.quad	0x3fe80f96e158750c              # double 0.75190299999999998
	.quad	0x3fbec81d3aa369fd              # double 0.120241
	.quad	0x3fe16b4a66559f6f              # double 0.54434700000000003
	.quad	0x3fd2f47f993d5348              # double 0.29617300000000002
	.quad	0x3fe4052502eec7c9              # double 0.62562799999999996
	.quad	0x3fc161c36976bc1f              # double 0.135796
	.quad	0x3feee8ccdd93c46e              # double 0.96591800000000005
	.quad	0x3fe26e02a77a2ced              # double 0.57592900000000002
	.quad	0x3fe5798fa376922e              # double 0.67108900000000005
	.quad	0x3feea543f1c75819              # double 0.95767400000000003
	.quad	0x3fe715054ac29bf1              # double 0.72131599999999996
	.quad	0x3fe9fc58ab92c062              # double 0.81205400000000005
	.quad	0x3fec8192a737110e              # double 0.89081699999999997
	.quad	0x3fe9acf7446f9b99              # double 0.80236399999999997
	.quad	0x3fe0e5b4245f5ad9              # double 0.52803999999999995
	.quad	0x3fe9f50e34762952              # double 0.811164
	.quad	0x3f622749f0e4da0a              # double 0.0022160000000000001
	.quad	0x3fd5e98dcdb37c9a              # double 0.34238000000000002
	.quad	0x3fe42fd32c625e9a              # double 0.63083800000000001
	.quad	0x3fcf886594af4f0e              # double 0.24635000000000001
	.quad	0x3fcc0ae9680e0653              # double 0.219083
	.quad	0x3fdfcd35a858793e              # double 0.49690000000000001
	.quad	0x3fe8abae03b3e9a7              # double 0.770957
	.quad	0x3feb4b6e935b91f7              # double 0.85295799999999999
	.quad	0x3f9d530489d27c39              # double 0.028636999999999999
	.quad	0x3fab0b9dc2f405f7              # double 0.052823000000000002
	.quad	0x3fe04d1e96c3fc44              # double 0.50941400000000003
	.quad	0x3fe3db6805a2d730              # double 0.620533
	.quad	0x3fe36bc408d8ec96              # double 0.60690500000000003
	.quad	0x3fe71593e5fb71fc              # double 0.72138400000000003
	.quad	0x3fbfa46173b85e81              # double 0.123602
	.quad	0x3fd0d1bb4916ca47              # double 0.26280100000000001
	.quad	0x3fe83f6a0dbad3a6              # double 0.757741
	.quad	0x3fc9eb313be22e5e              # double 0.20249
	.quad	0x3fe17125dd095af3              # double 0.54506200000000005
	.quad	0x3fe0d3a81dc0db27              # double 0.525837
	.quad	0x3fc25119ce075f70              # double 0.1431
	.quad	0x3fec0e79aae6c8f7              # double 0.87676699999999996
	.quad	0x3fd07a5b0ff10ecb              # double 0.25746799999999997
	.quad	0x3fe2c6c11a11233e              # double 0.58676200000000001
	.quad	0x3fb7cbd556084a51              # double 0.092953999999999995
	.quad	0x3fb3fdd65a14488c              # double 0.078091999999999995
	.quad	0x3fe442352eb5f5f1              # double 0.63308200000000003
	.quad	0x3fe1da5fc7e6b3ff              # double 0.55790700000000004
	.quad	0x3fd26d0917d6b65b              # double 0.28790500000000002
	.quad	0x3fe938f14db59579              # double 0.78820100000000004
	.quad	0x3fe2c319c5a3e39f              # double 0.58631599999999995
	.quad	0x3fb87c84b5dcc63f              # double 0.095649999999999999
	.quad	0x3fcbcc857f3061c8              # double 0.21717900000000001
	.quad	0x3fded0d0678c0054              # double 0.48149500000000001
	.quad	0x3fe7f43e963dc487              # double 0.74856500000000004
	.quad	0x3fe8490c4dec1c1d              # double 0.75891699999999995
	.quad	0x3fd0530489d27c39              # double 0.25506699999999999
	.quad	0x3fdd2ff8ec0f8833              # double 0.45605299999999999
	.quad	0x3faeff5c6c11a112              # double 0.060541999999999999
	.quad	0x3fd2b91b3f20a73f              # double 0.29254799999999997
	.quad	0x3fb43bf727136a40              # double 0.079039999999999999
	.quad	0x3fe400bed740c415              # double 0.62509099999999995
	.quad	0x3fec8902de00d1b7              # double 0.89172499999999999
	.quad	0x3fed0a24463065f9              # double 0.90748799999999996
	.quad	0x3fe9b36deb95e5b0              # double 0.80315300000000001
	.quad	0x3fe2ee2a80064a9d              # double 0.59157300000000002
	.quad	0x3fbbb6cbd987c632              # double 0.10825799999999999
	.quad	0x3fe31ed5ae1cde5d              # double 0.59751399999999999
	.quad	0x3fcd1b584b1ab085              # double 0.22739699999999999
	.quad	0x3f90ab7132724313              # double 0.016278999999999998
	.quad	0x3faec15d2d01c0ca              # double 0.060068999999999997
	.quad	0x3fb5008205ff1d82              # double 0.082039
	.quad	0x3fa3415b1422ccb4              # double 0.037608000000000003
	.quad	0x3fe19e492bc2fc69              # double 0.55057199999999995
	.quad	0x3fe436a619da9c99              # double 0.63167099999999998
	.quad	0x3fe44e3369b9d7fe              # double 0.63454600000000005
	.quad	0x3fedde56cd6c2efd              # double 0.93339099999999997
	.quad	0x3fc761672324c836              # double 0.18265999999999999
	.quad	0x3fd9403148776816              # double 0.39454299999999998
	.quad	0x3fabc77143393ab4              # double 0.054255999999999999
	.quad	0x3fdba78af3e468cb              # double 0.43210100000000001
	.quad	0x3fcaba27ae9ab29e              # double 0.20880599999999999
	.quad	0x3fe9a745bf26f1dc              # double 0.80166899999999996
	.quad	0x3fee5a6612839043              # double 0.94853500000000002
	.quad	0x3f991ea78af3e469              # double 0.024531000000000001
	.quad	0x3fd6785f8d2e514c              # double 0.35109699999999999
	.quad	0x3fdab5a20ddc6195              # double 0.41733599999999998
	.quad	0x3fec97ca2120e1f8              # double 0.89352900000000002
	.quad	0x3fd63d35eb7457c1              # double 0.34748600000000002
	.quad	0x3fe9547e06961c37              # double 0.79156400000000005
	.quad	0x3fe52122fad6cb53              # double 0.66029499999999997
	.quad	0x3fe5c35ac8a37260              # double 0.68009699999999995
	.quad	0x3fe89b1b79d909f2              # double 0.76893400000000001
	.quad	0x3feb2e4b018611fd              # double 0.84940099999999996
	.quad	0x3fe4b28b6d86ec18              # double 0.64679500000000001
	.quad	0x3fb0a2120e1f7d74              # double 0.064973000000000003
	.quad	0x3fe781ba7fc32ebe              # double 0.73458599999999996
	.quad	0x3fef83d35eb7457c              # double 0.98484199999999999
	.quad	0x3fd9a71de69ad42c              # double 0.40082499999999999
	.quad	0x3fe7b17481b21c47              # double 0.74041199999999996
	.quad	0x3fe61cbee807bbb6              # double 0.69100899999999998
	.quad	0x3fe52bb44e50c5eb              # double 0.66158499999999998
	.quad	0x3fe6bebbfd71b047              # double 0.71078300000000005
	.quad	0x3fe5c003254e6e22              # double 0.67968899999999999
	.quad	0x3fd032b12d3415b1              # double 0.25309399999999999
	.quad	0x3fccfa376922d949              # double 0.226386
	.quad	0x3fb903b81b64e054              # double 0.097712999999999994
	.quad	0x3fe9da9003eea20a              # double 0.80793000000000004
	.quad	0x3fea079c4113c686              # double 0.81342899999999996
	.quad	0x3fd018a43bb40b35              # double 0.25150400000000001
	.quad	0x3fede63c74fb54a0              # double 0.93435500000000004
	.quad	0x3fe814e7ee9142b3              # double 0.752552
	.quad	0x3fe0f0e0a84be404              # double 0.52940399999999999
	.quad	0x3fc818266772d5e0              # double 0.18823699999999999
	.quad	0x3fe302a5614df8b1              # double 0.59407299999999996
	.quad	0x3fe31da597d49d7c              # double 0.59736900000000004
	.quad	0x3fe2131a8ef77f28              # double 0.564832
	.quad	0x3fd1d75e2046c765              # double 0.27877000000000002
	.quad	0x3fe8d0247021d10b              # double 0.77540799999999999
	.quad	0x3fd4b45ae5ffa3ba              # double 0.32350800000000002
	.quad	0x3fbe821f2990f302              # double 0.119173
	.quad	0x3fd48b1572580c31              # double 0.32098900000000002
	.quad	0x3fea3ed527e52157              # double 0.82016999999999995
	.quad	0x3fe4945d851654d6              # double 0.64311099999999999
	.quad	0x3fefcedf61240746              # double 0.99400299999999997
	.quad	0x3fd2366516db0dd8              # double 0.28456999999999999
	.quad	0x3fe01c714fce746d              # double 0.50347200000000003
	.quad	0x3fe100713f077ccc              # double 0.531304
	.quad	0x3fd1ad4b2745bf27              # double 0.276202
	.quad	0x3fe9a3f4666ec9e2              # double 0.80126399999999998
	.quad	0x3fee2dbc664d3bf3              # double 0.943083
	.quad	0x3fda6f5caf2d7f95              # double 0.413047
	.quad	0x3fb9feeb2d0a2446              # double 0.101546
	.quad	0x3fce851a86940358              # double 0.23843700000000001
	.quad	0x3fe51654d61b2a28              # double 0.65897600000000001
	.quad	0x3f858d9b5e95b78d              # double 0.010524
	.quad	0x3fe130d0edc3bd5a              # double 0.53720900000000005
	.quad	0x3fe6d5a5b9628cbd              # double 0.71357999999999999
	.quad	0x3fec764cf8d716d3              # double 0.88944100000000004
	.quad	0x3fc3f90539fba451              # double 0.15603700000000001
	.quad	0x3fc7e603d577963a              # double 0.18670700000000001
	.quad	0x3fdabddfc9ff92f3              # double 0.41783900000000002
	.quad	0x3fe80dfbd6a593a3              # double 0.75170700000000001
	.quad	0x3feed892684cf074              # double 0.96393700000000004
	.quad	0x3fee6d41b75a74c1              # double 0.95083700000000004
	.quad	0x3fb9a0ad8a11665a              # double 0.100108
	.quad	0x3fcaf5f4e4430b18              # double 0.21063100000000001
	.quad	0x3fd474751ce28ed6              # double 0.319608
	.quad	0x3fdc11dbca9691a7              # double 0.43858999999999998
	.quad	0x3fd73db3bfb58d15              # double 0.36314099999999999
	.quad	0x3fc13affb04ee7c5              # double 0.13461300000000001
	.quad	0x3fd75e310dbf0564              # double 0.365124
	.quad	0x3fee706d50657321              # double 0.95122399999999996
	.quad	0x3fe4a070b8cfbfc6              # double 0.64458499999999996
	.quad	0x3fd492f2b66b6178              # double 0.321469
	.quad	0x3fd563a5c1c6088d              # double 0.33420699999999998
	.quad	0x3fde18611fd5885d              # double 0.47023799999999999
	.quad	0x3fe957518b0d0edc              # double 0.79190899999999997
	.quad	0x3fc436b09635610b              # double 0.157919
	.quad	0x3fe5dc4eb56fb8f5              # double 0.68314299999999994
	.quad	0x3fe8c545846e8f2a              # double 0.77408100000000002
	.quad	0x3fe8095af294dd72              # double 0.75114199999999998
	.quad	0x3fd6d07c84b5dcc6              # double 0.35647499999999999
	.quad	0x3fd9de5d18090b41              # double 0.40419699999999997
	.quad	0x3fe4274e22a2c237              # double 0.62979799999999997
	.quad	0x3fec085f4a1272c9              # double 0.87602199999999997
	.quad	0x3fd28333fc86cebc              # double 0.28925800000000002
	.quad	0x3feb2161e4f765fe              # double 0.84782500000000005
	.quad	0x3fc65918a009f623              # double 0.174594
	.quad	0x3fb1abf338716095              # double 0.069029999999999994
	.quad	0x3fed59e83e425aee              # double 0.91722499999999996
	.quad	0x3fed36a619da9c99              # double 0.91292099999999998
	.quad	0x3fb8000000000000              # double 0.09375
	.quad	0x3fe49afe1da7b0b4              # double 0.64392000000000005
	.quad	0x3fdac9752977c88e              # double 0.41854599999999997
	.quad	0x3fe1ab324851a869              # double 0.55214799999999997
	.quad	0x3fc0abe6a337a80d              # double 0.130246
	.quad	0x3fd6dfeb8d823422              # double 0.35741699999999998
	.quad	0x3fe9fd30ad46f588              # double 0.81215700000000002
	.quad	0x3fd2f359ff4fd6d8              # double 0.29610300000000001
	.quad	0x3fe5641919ac7970              # double 0.66846899999999998
	.quad	0x3facb20fb224aada              # double 0.056045999999999999
	.quad	0x3fe4005e5f30e7ff              # double 0.62504499999999996
	.quad	0x3fe65d2ae8e1d649              # double 0.69887299999999997
	.quad	0x3f64f69ca9ef5233              # double 0.0025590000000000001
	.quad	0x3fe55a0168b5cbff              # double 0.66723699999999997
	.quad	0x3fe09fab96f21f6d              # double 0.51949100000000004
	.quad	0x3fcb06c43f5f9160              # double 0.211144
	.quad	0x3f96c9c0a8d21bc1              # double 0.022253999999999999
	.quad	0x3fed9ccfaeff5c6c              # double 0.92539199999999999
	.quad	0x3fd7d987c6327ed8              # double 0.37265199999999998
	.quad	0x3fe6253b8e4b87be              # double 0.69204500000000002
	.quad	0x3fee67685985ad54              # double 0.95012300000000005
	.quad	0x3fadda6a44417870              # double 0.058306999999999998
	.quad	0x3fdb3e5fb71fbc5e              # double 0.425682
	.quad	0x3fe7a917507e9d95              # double 0.73939100000000002
	.quad	0x3fc02f8bdec5f395              # double 0.12645100000000001
	.quad	0x3fc5525460aa64c3              # double 0.166575
	.quad	0x3fefe1cde5d18091              # double 0.99631400000000003
	.quad	0x3fedbc36113404ea              # double 0.92922499999999997
	.quad	0x3fd450fc71d60631              # double 0.31744299999999998
	.quad	0x3fb1a1986b9c304d              # double 0.068872000000000003
	.quad	0x3fbc7f562174c4ce              # double 0.111318
	.quad	0x3fa52b0a6fc58ab9              # double 0.041343999999999999
	.quad	0x3fb25918a009f623              # double 0.071672
	.quad	0x3fc3d29563a9f384              # double 0.154864
	.quad	0x3fc8a8b8f14db595              # double 0.19264899999999999
	.quad	0x3fd90535c9e6687f              # double 0.39094299999999998
	.quad	0x3fe4ed655e28aa43              # double 0.65397899999999998
	.quad	0x3fe9aa7589efd86b              # double 0.80205800000000005
	.quad	0x3fd2d8a548238540              # double 0.29447299999999998
	.quad	0x3fbfdf6db940fece              # double 0.124503
	.quad	0x3feffd2c7b890d5a              # double 0.99965499999999996
	.quad	0x3fc78255b035bd51              # double 0.18366499999999999
	.quad	0x3fdd26e5471715c6              # double 0.45549899999999999
	.quad	0x3fd47a8d64d7f0ed              # double 0.31997999999999999
	.quad	0x3fe42ca57a786c22              # double 0.63044999999999995
	.quad	0x3fedc83a96d4c33b              # double 0.93069199999999996
	.quad	0x3f821ab4b72c5198              # double 0.0088400000000000006
	.quad	0x3fe44c25072085b2              # double 0.63429500000000005
	.quad	0x3fe0cad14a0a0f4d              # double 0.52475799999999995
	.quad	0x3fe8325b317efe0d              # double 0.75614700000000001
	.quad	0x3fe0a71151611ba4              # double 0.52039400000000002
	.quad	0x3f90e736049ecb32              # double 0.016507000000000001
	.quad	0x3fee2f01754b05b8              # double 0.94323800000000002
	.quad	0x3fe2020817fc7608              # double 0.56274800000000003
	.quad	0x3fe48dc981beb181              # double 0.64230799999999999
	.quad	0x3feaea63b688bda9              # double 0.84111199999999997
	.quad	0x3fe0579af1886df8              # double 0.51069399999999998
	.quad	0x3fed858bc59b8024              # double 0.92255200000000003
	.quad	0x3fe2035dedf1e083              # double 0.56291100000000005
	.quad	0x3fcf020c49ba5e35              # double 0.24224999999999999
	.quad	0x3fd804ff43419e30              # double 0.375305
	.quad	0x3fd7f1a9fbe76c8b              # double 0.37412499999999999
	.quad	0x3fd64a98aa8650e7              # double 0.34830299999999997
	.quad	0x3fec90257c914b16              # double 0.89259599999999995
	.quad	0x3fd5302b40f66a55              # double 0.331065
	.quad	0x3fc4a65492ff4ba5              # double 0.161326
	.quad	0x3fd0d17c5ef62f9d              # double 0.26278600000000002
	.quad	0x3f7de8b3b320535d              # double 0.0073020000000000003
	.quad	0x3fb374cd31769a91              # double 0.076000999999999999
	.quad	0x3fe29d9d3458cd21              # double 0.58174000000000003
	.quad	0x3f8fe974a3400b89              # double 0.015582
	.quad	0x3fe6d3a81dc0db27              # double 0.713337
	.quad	0x3feaa9435ac8a372              # double 0.83316199999999996
	.quad	0x3fea3f9a49c2c1b1              # double 0.82026399999999999
	.quad	0x3fb7c32ebe596c83              # double 0.092822000000000002
	.quad	0x3fb03b81b64e0547              # double 0.063408000000000006
	.quad	0x3fe5ef112fd32c62              # double 0.68543299999999996
	.quad	0x3fe3e2c55c96030c              # double 0.62143199999999998
	.quad	0x3fe1de26916440f2              # double 0.55836799999999998
	.quad	0x3fe792ddbdb5d895              # double 0.73667800000000006
	.quad	0x3f38b502ababead5              # double 3.77E-4
	.quad	0x3f8182a9930be0df              # double 0.0085500000000000003
	.quad	0x3f846d3f9e7b80aa              # double 0.0099740000000000002
	.quad	0x3fc3620685553ef7              # double 0.15142900000000001
	.quad	0x3fc042aed1394318              # double 0.12703500000000001
	.quad	0x3fc3165d3996fa83              # double 0.14912
	.quad	0x3fee76f6d7625205              # double 0.95202200000000003
	.quad	0x3fc3884c6a3bddfd              # double 0.15259700000000001
	.quad	0x3fdf1bbcf4e874c9              # double 0.486068
	.quad	0x3fed2a23bff8a8f4              # double 0.91139400000000003
	.quad	0x3fd9a4df47f993d5              # double 0.40068799999999999
	.quad	0x3fc73a9b06812381              # double 0.181476
	.quad	0x3fe2c806290eed03              # double 0.58691700000000002
	.quad	0x3fd084406c00da1b              # double 0.25807200000000002
	.quad	0x3fc91337eb28d866              # double 0.19589899999999999
	.quad	0x3fc88d6d3b6cbd98              # double 0.19181599999999999
	.quad	0x3fe48c4bd33d2956              # double 0.64212599999999997
	.quad	0x3fe6f6f08cc575c0              # double 0.71764399999999995
	.quad	0x3fe0215b9a5a89b9              # double 0.50407199999999996
	.quad	0x3fe4f8e7ddca4b12              # double 0.65538399999999997
	.quad	0x3fd05c24c404a72f              # double 0.25562400000000002
	.quad	0x3fbbb6ed6777079e              # double 0.10826
	.quad	0x3f96bf8769ec2ce4              # double 0.022214999999999999
	.quad	0x3fe9d1aa821f2991              # double 0.80684400000000001
	.quad	0x3fef7e7e1fc08fa8              # double 0.98419100000000003
	.quad	0x3fe970f16f4384ba              # double 0.79503699999999999
	.quad	0x3fe30c9320d9945b              # double 0.59528499999999995
	.quad	0x3fd68feef5ec80c7              # double 0.35253499999999999
	.quad	0x3fe1e496ededaec5              # double 0.55915400000000004
	.quad	0x3fdb0bae89eba6ad              # double 0.42258800000000002
	.quad	0x3fe5d2d44dca8e2e              # double 0.68198599999999998
	.quad	0x3fc3d35653c9abb0              # double 0.154887
	.quad	0x3feea719b4dcebff              # double 0.95789800000000002
	.quad	0x3fcdc85c24c404a7              # double 0.23267699999999999
	.quad	0x3fdc5bab21815a08              # double 0.44309500000000002
	.quad	0x3fd9f9c62a1b5c7d              # double 0.40587000000000001
	.quad	0x3fe3254a3c64345d              # double 0.598302
	.quad	0x3fed85510d38cda7              # double 0.92252400000000001
	.quad	0x3fe8e7e62dc6e2a8              # double 0.778308
	.quad	0x3fe2bfd933e35c5b              # double 0.58591899999999997
	.quad	0x3fc44662bae03b3f              # double 0.15839800000000001
	.quad	0x3fbb559b3d07c84b              # double 0.10677499999999999
	.quad	0x3fec658e64b23140              # double 0.88739699999999999
	.quad	0x3fe142b0ea18372e              # double 0.53939099999999995
	.quad	0x3fcfb8a19c9d5a18              # double 0.24782199999999999
	.quad	0x3fe0eaa6d2674081              # double 0.528644
	.quad	0x3fe27c3f811f4f51              # double 0.57766700000000004
	.quad	0x3fdec9afe1da7b0b              # double 0.48105999999999999
	.quad	0x3fe56a3bddfc9ff9              # double 0.66921799999999998
	.quad	0x3fec8a0b1bbcf4e8              # double 0.89185099999999995
	.quad	0x3fed7f8012dfd695              # double 0.92181400000000002
	.quad	0x3fd2b499d0203e64              # double 0.29227300000000001
	.quad	0x3fe305f8d2e514c2              # double 0.59447899999999998
	.quad	0x3fed96d0917d6b66              # double 0.92466000000000004
	.quad	0x3fd9acd184c27200              # double 0.401173
	.quad	0x3fd1a393ee5eedcc              # double 0.27560899999999999
	.quad	0x3fd555ac03ff6901              # double 0.33335399999999998
	.quad	0x3fe1e62bae03b3ea              # double 0.55934700000000004
	.quad	0x3fe7ccc037931444              # double 0.74374399999999996
	.quad	0x3feb2af78feef5ed              # double 0.84899500000000006
	.quad	0x3fd7b08dd1e53a82              # double 0.37015100000000001
	.quad	0x3fe9070110a137f4              # double 0.78210500000000005
	.quad	0x3fe4b3311a543f1c              # double 0.64687399999999995
	.quad	0x3fe531422ccb3a26              # double 0.66226300000000005
	.quad	0x3fe151c7de5082cf              # double 0.54123299999999996
	.quad	0x3fe568b3b320535d              # double 0.66903100000000004
	.quad	0x3fbaa8fc0d2c386d              # double 0.104141
	.quad	0x3fe1151c5c5718ec              # double 0.53382700000000005
	.quad	0x3fabea704bc27632              # double 0.054523000000000002
	.quad	0x3fa80a5accd53049              # double 0.046954000000000003
	.quad	0x3feb2a21a719b4dd              # double 0.84889300000000001
	.quad	0x3feaf55de58e64b2              # double 0.84245199999999998
	.quad	0x3fd38023a6ce3583              # double 0.30469600000000002
	.quad	0x3fe2e071c53f39d2              # double 0.58989800000000003
	.quad	0x3f9caf2d7f950b95              # double 0.028011999999999999
	.quad	0x3fc58e9f6a93f291              # double 0.16841500000000001
	.quad	0x3fe99f4906034f40              # double 0.80069400000000002
	.quad	0x3fc5d53cddd6e04c              # double 0.17057
	.quad	0x3fbd360d0247021d              # double 0.114106
	.quad	0x3fd222c450268901              # double 0.28337200000000001
	.quad	0x3f7752977c88e79b              # double 0.0056940000000000003
	.quad	0x3fecc61b6d43d039              # double 0.89918299999999995
	.quad	0x3f90d4dc65c70436              # double 0.016437
	.quad	0x3fbdb63d3e4ef028              # double 0.116062
	.quad	0x3fedc52e72da1230              # double 0.93032000000000004
	.quad	0x3feb8fcd67fd3f5b              # double 0.86130399999999996
	.quad	0x3fda6c0d6f544bb2              # double 0.41284500000000002
	.quad	0x3fc39d909f1f1498              # double 0.15324599999999999
	.quad	0x3fd455219a847b24              # double 0.31769599999999998
	.quad	0x3fdb9331a08bfc22              # double 0.43085899999999999
	.quad	0x3fee9f36262cba73              # double 0.95693499999999998
	.quad	0x3fe1b18548a9bcfd              # double 0.55291999999999997
	.quad	0x3fee43c3a42f1ed1              # double 0.94577199999999995
	.quad	0x3fe2c102ff8ec0f9              # double 0.58606100000000005
	.quad	0x3fdaec0f88333fc8              # double 0.42065799999999998
	.quad	0x3fc268c26138fffc              # double 0.14382200000000001
	.quad	0x3fcb9c5a3e39f773              # double 0.21570900000000001
	.quad	0x3fee3269df97aaac              # double 0.94365399999999999
	.quad	0x3fcce8533b107747              # double 0.22584000000000001
	.quad	0x3fcdcc964628027e              # double 0.23280600000000001
	.quad	0x3f3de26916440f24              # double 4.5600000000000003E-4
	.quad	0x3fefd5e071c53f3a              # double 0.99485800000000002
	.quad	0x3fe5377e1b8ed1bf              # double 0.66302399999999995
	.quad	0x3f9efb2aae297397              # double 0.030255000000000001
	.quad	0x3fdf8bbd3804534c              # double 0.49290400000000001
	.quad	0x3fd9c3c5bd0e12e8              # double 0.40257399999999999
	.quad	0x3fead2a1f8e3ac0c              # double 0.83821199999999995
	.quad	0x3feec0980b242071              # double 0.96101000000000003
	.quad	0x3fb3ba775fb2edfe              # double 0.077063999999999993
	.quad	0x3fde1f9acffa7eb7              # double 0.47067900000000001
	.quad	0x3fd6486f049a9974              # double 0.34817100000000001
	.quad	0x3fc58f92af9a8cdf              # double 0.16844400000000001
	.quad	0x3fe8fa311e85fd05              # double 0.78054100000000004
	.quad	0x3fe845ae5ffa3b9b              # double 0.75850600000000001
	.quad	0x3fe94ba94bbe4474              # double 0.79048600000000002
	.quad	0x3fe24ee9dd7ecbb8              # double 0.572133
	.quad	0x3fd0f24d8fd5cb79              # double 0.264789
	.quad	0x3fe45ebfa8f7db6e              # double 0.63656599999999997
	.quad	0x3fed28112ba16e7a              # double 0.91114099999999998
	.quad	0x3fb14ab1d4f9c1f8              # double 0.067545999999999995
	.quad	0x3fe9b8c32a8c9b84              # double 0.80380399999999996
	.quad	0x3fd5540cc78e9f6b              # double 0.33325500000000002
	.quad	0x3fe738ac18f81e8a              # double 0.72566799999999998
	.quad	0x3faa7e9531550ca2              # double 0.051747000000000001
	.quad	0x3fcb6d5cfaacd9e8              # double 0.21427499999999999
	.quad	0x3fc71476af89c5e7              # double 0.180312
	.quad	0x3fe52137f38c5437              # double 0.66030500000000003
	.quad	0x3fef5efe93187619              # double 0.98034600000000005
	.quad	0x3fd38b69552e2fbe              # double 0.30538399999999999
	.quad	0x3febcccccccccccd              # double 0.86875000000000002
	.quad	0x3fec44b90214ad36              # double 0.88338899999999998
	.quad	0x3fedf4666ec9e237              # double 0.93608400000000003
	.quad	0x3fd6402d16b97fe9              # double 0.347667
	.quad	0x3fa479d4d834091c              # double 0.039992
	.quad	0x3fc801711947cfa2              # double 0.18754399999999999
	.quad	0x3fbe6c7eae5bc87e              # double 0.118843
	.quad	0x3fe3afe3f359ff50              # double 0.61522100000000002
	.quad	0x3febb3a68b19a416              # double 0.86568000000000001
	.quad	0x3f7c93ea2d2fe3f3              # double 0.0069769999999999997
	.quad	0x3fd85c209246bf01              # double 0.38062299999999999
	.quad	0x3fc3d75e2046c765              # double 0.15501000000000001
	.quad	0x3fea649d388a8b09              # double 0.82478200000000002
	.quad	0x3fe04bf6e3f78bbd              # double 0.50927299999999998
	.quad	0x3fb3ef284167a95d              # double 0.077868000000000007
	.quad	0x3fd22de8709741d1              # double 0.28405200000000003
	.quad	0x3fc19567dbb16c1e              # double 0.13737199999999999
	.quad	0x3fc5463cfb3311a5              # double 0.16620599999999999
	.quad	0x3fde3996fa82e87d              # double 0.47226499999999999
	.quad	0x3fd27c30d306a2b1              # double 0.28882999999999998
	.quad	0x3fee050bd87b56b8              # double 0.93811599999999994
	.quad	0x3fdc2070b8cfbfc6              # double 0.43947999999999998
	.quad	0x3fe0b2cc70867ad9              # double 0.52182600000000001
	.quad	0x3fd401b003686a4d              # double 0.31260300000000002
	.quad	0x3fe922424a276b7f              # double 0.78543200000000002
	.quad	0x3fe9f3bea91d9b1b              # double 0.81100399999999995
	.quad	0x3fdddfce3150dae4              # double 0.46678500000000001
	.quad	0x3fb5899bf5946c33              # double 0.084130999999999997
	.quad	0x3fc1d6bebe1650a4              # double 0.13936599999999999
	.quad	0x3fd23137b07075b4              # double 0.28425400000000001
	.quad	0x3feeb48909289dae              # double 0.959538
	.quad	0x3fe21dcd7060bb2c              # double 0.56613800000000003
	.quad	0x3fc8e50c5eb313be              # double 0.19449
	.quad	0x3fe639496249a134              # double 0.69449300000000003
	.quad	0x3fe346eb0b7c3505              # double 0.60240700000000003
	.quad	0x3fc1d145d851654d              # double 0.13919899999999999
	.quad	0x3fcf57eed45e9186              # double 0.24487100000000001
	.quad	0x3fed784662bae03b              # double 0.92093199999999997
	.quad	0x3fe89731098d477c              # double 0.76845600000000002
	.quad	0x3fd04adff822bbed              # double 0.25457000000000002
	.quad	0x3fefae3608d0891a              # double 0.99001600000000001
	.quad	0x3fe4b30941c8216c              # double 0.64685499999999996
	.quad	0x3fc9264a16a48733              # double 0.19648099999999999
	.quad	0x3fd9afe1da7b0b39              # double 0.40135999999999999
	.quad	0x3fed20578e5c4eb5              # double 0.91019799999999995
	.quad	0x3feacd76ab5807ff              # double 0.83758100000000002
	.quad	0x3fb331b152f3c2db              # double 0.074977000000000002
	.quad	0x3fee4e032db1e9f2              # double 0.94702299999999995
	.quad	0x3fe972606fac6046              # double 0.79521200000000003
	.quad	0x3fe1b3fc86cebbba              # double 0.55322099999999996
	.quad	0x3fe714d2f5dbb9d0              # double 0.72129200000000004
	.quad	0x3fd23eea209aaa3b              # double 0.28509000000000001
	.quad	0x3fade310dbf0563f              # double 0.058373000000000001
	.quad	0x3fe5b04039abf338              # double 0.67776499999999995
	.quad	0x3fecb59146e4c0df              # double 0.89716399999999996
	.quad	0x3fea046412cf0f9d              # double 0.81303599999999998
	.quad	0x3fec0b0292817764              # double 0.87634400000000001
	.quad	0x3fe64e054690de09              # double 0.69702399999999998
	.quad	0x3fe793c254a3c643              # double 0.73678699999999997
	.quad	0x3fec1b54195cc858              # double 0.87833600000000001
	.quad	0x3fec50acc0bdcad1              # double 0.88484799999999997
	.quad	0x3fcf8090b417ca21              # double 0.246111
	.quad	0x3fe388e79aae6c8f              # double 0.61046199999999995
	.quad	0x3feb329802c0a4a0              # double 0.84992599999999995
	.quad	0x3fe55892684cf074              # double 0.66706200000000004
	.quad	0x3fb2d8b1dd5d3dc9              # double 0.073619000000000004
	.quad	0x3fedd330941c8217              # double 0.93203000000000003
	.quad	0x3fe0238fbca1059f              # double 0.50434100000000004
	.quad	0x3fe780064a9cdc44              # double 0.73437799999999998
	.quad	0x3fe8ba3443d46b27              # double 0.77273000000000003
	.quad	0x3fdf4a16a4873366              # double 0.48889700000000003
	.quad	0x3fe76da661283904              # double 0.73213499999999998
	.quad	0x3fd6bf487fcb923a              # double 0.35542499999999999
	.quad	0x3fa6568a50507a6c              # double 0.043629000000000001
	.quad	0x3fc48d3ae685db77              # double 0.16056000000000001
	.quad	0x3fd555d1c3ac929b              # double 0.33336300000000002
	.quad	0x3fe4543f1c75818c              # double 0.63528399999999996
	.quad	0x3fce579f23465626              # double 0.23704900000000001
	.quad	0x3fcdb078d92fb19e              # double 0.23194799999999999
	.quad	0x3fef17507e9d94d1              # double 0.97159600000000001
	.quad	0x3fec524399b2c40d              # double 0.885042
	.quad	0x3fc0bc27631b584b              # double 0.130742
	.quad	0x3fe290667f90d9d7              # double 0.58012699999999995
	.quad	0x3fcc55fbb517a461              # double 0.22137399999999999
	.quad	0x3fd2dda059a73b43              # double 0.29477700000000001
	.quad	0x3fe78a24463065f9              # double 0.73561299999999996
	.quad	0x3fe8086bdf4c2b52              # double 0.75102800000000003
	.quad	0x3feba27ae9ab29e5              # double 0.86358400000000002
	.quad	0x3fee10539fba450b              # double 0.93949300000000002
	.quad	0x3fb37a1c25d07421              # double 0.076081999999999997
	.quad	0x3fe2b7cbb3c81909              # double 0.58493600000000001
	.quad	0x3f9f44d44567125e              # double 0.030536000000000001
	.quad	0x3fde38b8ae31d713              # double 0.47221200000000002
	.quad	0x3fe8fb69984a0e41              # double 0.78069
	.quad	0x3fee0b8cfbfc6541              # double 0.93891000000000002
	.quad	0x3fa0ea39c51dabe2              # double 0.033036999999999997
	.quad	0x3fe6278f25a250f8              # double 0.69232899999999997
	.quad	0x3fd8703f2d3c792d              # double 0.381851
	.quad	0x3fe1f0ae536501e2              # double 0.56062999999999996
	.quad	0x3fce2291fb3fa6df              # double 0.23543
	.quad	0x3fd1f9d6f112fd33              # double 0.28087400000000001
	.quad	0x3fe623e186983516              # double 0.69188000000000005
	.quad	0x3fc2c892ab68cef6              # double 0.14674599999999999
	.quad	0x3fe805e5f30e7ff6              # double 0.75072000000000005
	.quad	0x3feec9b413986339              # double 0.96212200000000003
	.quad	0x3fdad462c343b70f              # double 0.419213
	.quad	0x3fc862b27cbf6e3f              # double 0.19051199999999999
	.quad	0x3fe3e5710880d802              # double 0.62175800000000003
	.quad	0x3fed95f88fc9363f              # double 0.92455699999999996
	.quad	0x3fae30a915379fa9              # double 0.058964999999999997
	.quad	0x3fd7dc8fb86f47b6              # double 0.37283699999999997
	.quad	0x3fdbd2f1a9fbe76d              # double 0.43475000000000003
	.quad	0x3fe669a91105e1c1              # double 0.70039799999999997
	.quad	0x3fe859fb1e18efbb              # double 0.76098399999999999
	.quad	0x3fda8b827fa1a0cf              # double 0.41476499999999999
	.quad	0x3fb0bfd2e9468017              # double 0.065426999999999999
	.quad	0x3fddaa68f4b61fe2              # double 0.46352599999999999
	.quad	0x3fa4814d72799a20              # double 0.040049000000000001
	.quad	0x3fc1714b9cb6848c              # double 0.13627
	.quad	0x3fde457c0b135979              # double 0.47299099999999999
	.quad	0x3fefc3265add9c28              # double 0.992572
	.quad	0x3fc4e9dd7ecbb7fa              # double 0.163387
	.quad	0x3fcddc2f405f6ba0              # double 0.23328199999999999
	.quad	0x3fda2ae8e1d6494d              # double 0.40886899999999998
	.quad	0x3fe4000eae18ac9f              # double 0.62500699999999998
	.quad	0x3fdf29131ec0b567              # double 0.48688199999999998
	.quad	0x3fd4b9b23dd54da5              # double 0.32383400000000001
	.quad	0x3fe4ca6223e18698              # double 0.64970499999999998
	.quad	0x3feae0e0eb67c287              # double 0.839951
	.quad	0x3fb7c254a3c64346              # double 0.092809000000000002
	.quad	0x3fdeb402d16b97ff              # double 0.47973700000000002
	.quad	0x3fc79873ffac1d2a              # double 0.18434
	.quad	0x3fdd4c0df58c08b7              # double 0.45776699999999998
	.quad	0x3fe6fcdee34fc611              # double 0.71836800000000001
	.quad	0x3fec75ddd2ae8e1d              # double 0.88938799999999996
	.quad	0x3fbf14ca925fe975              # double 0.12141100000000001
	.quad	0x3fe534d26fa3fcca              # double 0.66269800000000001
	.quad	0x3fe0702e6644d877              # double 0.51369399999999998
	.quad	0x3fe09802c0a4a05e              # double 0.51855600000000002
	.quad	0x3fe6a4095f2452c6              # double 0.70752400000000004
	.quad	0x3fd3187e7c06e19c              # double 0.29837000000000002
	.quad	0x3fea7b677f6b1a2a              # double 0.82756399999999997
	.quad	0x3fc025d074213a0c              # double 0.12615399999999999
	.quad	0x3fe28b9dc2f405f7              # double 0.57954300000000003
	.quad	0x3feff9767903211d              # double 0.99920200000000003
	.quad	0x3f96694898f605ab              # double 0.021885999999999999
	.quad	0x3fb31c219eb6390d              # double 0.074648000000000006
	.quad	0x3fcddb4cc2507208              # double 0.23325499999999999
	.quad	0x3fdad3415b1422cd              # double 0.41914400000000002
	.quad	0x3fd7984a0e410b63              # double 0.36867
	.quad	0x3fc3f10667f90d9d              # double 0.15579299999999999
	.quad	0x3fdb8d5842b734b5              # double 0.430502
	.quad	0x3fb385729b280f13              # double 0.076255000000000003
	.quad	0x3fca1bc98a222d51              # double 0.20397299999999999
	.quad	0x3fdf121ee675147f              # double 0.485481
	.quad	0x3fdf33c1ce6c093e              # double 0.48753400000000002
	.quad	0x3fe22cffa7eb6bf4              # double 0.56799299999999997
	.quad	0x3fdbd8b60f1b25f6              # double 0.43510199999999999
	.quad	0x3fd5947496aad1d0              # double 0.33718599999999999
	.quad	0x3fe42bef06b37868              # double 0.63036300000000001
	.quad	0x3fe1dce39b456b44              # double 0.55821399999999999
	.quad	0x3fc5bb517a46173c              # double 0.16977900000000001
	.quad	0x3fccd43d03968d76              # double 0.22522700000000001
	.quad	0x3fd831487768166a              # double 0.37800800000000001
	.quad	0x3fd29b52007dd441              # double 0.29072999999999999
	.quad	0x3fd34fb549f94856              # double 0.30174000000000001
	.quad	0x3fe0707e175d13d7              # double 0.51373199999999997
	.quad	0x3febf37da61e0c5b              # double 0.87347300000000005
	.quad	0x3feca6266fd651b1              # double 0.89528200000000002
	.quad	0x3fd3be6e653868fd              # double 0.30849799999999999
	.quad	0x3fec78f041461b6d              # double 0.88976299999999997
	.quad	0x3fe6113a4f8726d0              # double 0.68960299999999997
	.quad	0x3fed14317acc4ef9              # double 0.90871500000000005
	.quad	0x3fea8b9991361dc9              # double 0.82954099999999997
	.quad	0x3fec4916ca46e08f              # double 0.88392199999999999
	.quad	0x3fd888094e5d5b25              # double 0.383303
	.quad	0x3fdcb890d5a5b963              # double 0.44876500000000002
	.quad	0x3fa56bca5375c8da              # double 0.041838
	.quad	0x3fe379df548ecd8e              # double 0.60862700000000003
	.quad	0x3fe1498c3b0c4589              # double 0.54022800000000004
	.quad	0x3fe2cb74ddf86e3b              # double 0.58733599999999997
	.quad	0x3fe08f40e5a35d68              # double 0.51748700000000003
	.quad	0x3fad898b2e9ccb7d              # double 0.057689999999999998
	.quad	0x3fd8384fd2a62aa2              # double 0.37843700000000002
	.quad	0x3fe040d4dc65c704              # double 0.50791399999999998
	.quad	0x3fe3b964a59c065b              # double 0.61638099999999996
	.quad	0x3fc4fdc1615ebfa9              # double 0.163994
	.quad	0x3fd3e1b8ed1bf7ad              # double 0.31065199999999998
	.quad	0x3fd39146e4c0df59              # double 0.30574200000000001
	.quad	0x3fe4e931876188b1              # double 0.65346599999999999
	.quad	0x3feacab606b7aa26              # double 0.83724500000000002
	.quad	0x3fdc560c7c0f4517              # double 0.44275199999999998
	.quad	0x3fda517614595358              # double 0.41122199999999998
	.quad	0x3fa11dffc5479d4e              # double 0.033432000000000003
	.quad	0x3feefd71b0468449              # double 0.96843800000000002
	.quad	0x3fea0b45ae5ffa3c              # double 0.81387600000000004
	.quad	0x3feb3a14cec41dd2              # double 0.85084000000000004
	.quad	0x3fde3fee2c98e53f              # double 0.47265200000000002
	.quad	0x3fc468a936c58eeb              # double 0.159444
	.quad	0x3fec56323bbc6eb1              # double 0.88552200000000003
	.quad	0x3fd37f27fe4bcada              # double 0.30463600000000002
	.quad	0x3fe7711b60ae9681              # double 0.73255700000000001
	.quad	0x3fb14ea077036c9c              # double 0.067605999999999999
	.quad	0x3fe56b24a6a875d5              # double 0.66932899999999995
	.quad	0x3feae02a77a2cecd              # double 0.83986400000000005
	.quad	0x3fef013ec460ed81              # double 0.96890200000000004
	.quad	0x3fe758969a0ad8a1              # double 0.72956399999999999
	.quad	0x3fe21c17225b749b              # double 0.56592900000000002
	.quad	0x3fe320b5ed8d36b5              # double 0.59774300000000002
	.quad	0x3fede577531db446              # double 0.93426100000000001
	.quad	0x3fd0d199bb2788db              # double 0.262793
	.quad	0x3fd53bddfc9ff92f              # double 0.33177899999999999
	.quad	0x3fdc86f8ad256799              # double 0.44573800000000002
	.quad	0x3fe8573860999dcb              # double 0.76064699999999996
	.quad	0x3fc2485a0be51090              # double 0.14283299999999999
	.quad	0x3fca4ece9a2c6690              # double 0.20552999999999999
	.quad	0x3fe43e9856a37ac4              # double 0.63264100000000001
	.quad	0x3fe6b417ca2120e2              # double 0.709484
	.quad	0x3fa1af1886df82b2              # double 0.034539
	.quad	0x3fee4f893faf4278              # double 0.94720899999999996
	.quad	0x3fbbfad2999567dc              # double 0.109296
	.quad	0x3fea84ab606b7aa2              # double 0.82869499999999996
	.quad	0x3fd95a2d72ffd1dd              # double 0.39612900000000001
	.quad	0x3fdc12ad81adea89              # double 0.43863999999999997
	.quad	0x3f7fa97e132b55ef              # double 0.0077299999999999999
	.quad	0x3feac30f49491f2e              # double 0.83631100000000003
	.quad	0x3fe0506573215fcc              # double 0.50981399999999999
	.quad	0x3fc786db50f40e5a              # double 0.18380299999999999
	.quad	0x3fe728b08dd1e53b              # double 0.72371700000000005
	.quad	0x3feefd3f5b5fa227              # double 0.96841399999999999
	.quad	0x3fe4c7f77af64064              # double 0.64941000000000004
	.quad	0x3f7960fa15db3398              # double 0.0061960000000000001
	.quad	0x3f9b9ae0c1765775              # double 0.026957999999999999
	.quad	0x3fd7e5c91d14e3bd              # double 0.37340000000000001
	.quad	0x3fd80a137f38c543              # double 0.37561499999999998
	.quad	0x3fa3c59b8023a6ce              # double 0.038616999999999999
	.quad	0x3fdbf4e0114d2f5e              # double 0.43682100000000001
	.quad	0x3fc3573647baa9b5              # double 0.15109900000000001
	.quad	0x3fe0f4f0d844d014              # double 0.52990000000000004
	.quad	0x3fe7fdae81882adc              # double 0.74971699999999996
	.quad	0x3fdf1600f345069a              # double 0.48571799999999998
	.quad	0x3fec5dedf1e0828c              # double 0.88646599999999997
	.quad	0x3fd08611fd5885d3              # double 0.258183
	.quad	0x3f90f94c87980f56              # double 0.016576
	.quad	0x3fea5f45e0b4e11e              # double 0.82413000000000003
	.quad	0x3fe5823422467be5              # double 0.67214399999999996
	.quad	0x3fe2ad2fe3f359ff              # double 0.58364099999999997
	.quad	0x3fdcb0fadf2ecf20              # double 0.44830199999999998
	.quad	0x3fd5b356da0168b6              # double 0.33907100000000001
	.quad	0x3fe1648626f60e0f              # double 0.54352100000000003
	.quad	0x3fe3803cd141a693              # double 0.60940399999999995
	.quad	0x3faf47304039abf3              # double 0.061089999999999998
	.quad	0x3fc596312f4cf4a5              # double 0.16864599999999999
	.quad	0x3fe715e17e34b945              # double 0.72142099999999998
	.quad	0x3fc791b3f20a73f7              # double 0.18413399999999999
	.quad	0x3fde4a3400b88ca4              # double 0.47327900000000001
	.quad	0x3fc35432873bc904              # double 0.151007
	.quad	0x3fe69958969a0ad9              # double 0.70621900000000004
	.quad	0x3fdb43bb40b34e77              # double 0.42600900000000003
	.quad	0x3fadb573eab367a1              # double 0.058025
	.quad	0x3fd10b45ae5ffa3c              # double 0.26631300000000002
	.quad	0x3fd99a30984e3fff              # double 0.400036
	.quad	0x3fc173d188f42fe8              # double 0.136347
	.quad	0x3fe2bbafd976ff3b              # double 0.58541100000000001
	.quad	0x3f19f3c70c996b76              # double 9.8999999999999994E-5
	.quad	0x3fd29c4545846e8f              # double 0.29078799999999999
	.quad	0x3fedf05ea24cc682              # double 0.93559199999999998
	.quad	0x3fe9bc42a66dbd73              # double 0.80423100000000003
	.quad	0x3fb11c2a02320968              # double 0.066836000000000007
	.quad	0x3fe4055da272862f              # double 0.62565499999999996
	.quad	0x3fd594d940789614              # double 0.33721000000000001
	.quad	0x3fee8637bd05af6c              # double 0.95388399999999995
	.quad	0x3fd77e4de3b8a19d              # double 0.36708400000000002
	.quad	0x3fca5e353f7ced91              # double 0.20599999999999999
	.quad	0x3feddd590c0ad03e              # double 0.93327000000000004
	.quad	0x3feb509e12a51e32              # double 0.85359099999999999
	.quad	0x3fd14a38327674d1              # double 0.27015499999999998
	.quad	0x3feb099bf5946c33              # double 0.84492299999999998
	.quad	0x3fe67177a7008a69              # double 0.70135099999999995
	.quad	0x3fde6bb55ac03ff7              # double 0.47532400000000002
	.quad	0x3fc1df761cbccf29              # double 0.13963200000000001
	.quad	0x3fd409203a322af5              # double 0.31305699999999997
	.quad	0x3fe1b96073de1e2e              # double 0.55387900000000001
	.quad	0x3fed537e2c55c960              # double 0.91644199999999997
	.quad	0x3fddd73860999dcb              # double 0.46626099999999998
	.quad	0x3feb9f0a1be2b496              # double 0.86316400000000004
	.quad	0x3fd36a3bddfc9ff9              # double 0.30335899999999999
	.quad	0x3fddf8b1572580c3              # double 0.468304
	.quad	0x3fe23d512ec6bce8              # double 0.56998499999999996
	.quad	0x3fe2879e59f2ba9d              # double 0.57905499999999999
	.quad	0x3fd1f1886df82b1f              # double 0.28036699999999998
	.quad	0x3fed117720c8cd64              # double 0.90838200000000002
	.quad	0x3fa58a116659d12d              # double 0.042069000000000002
	.quad	0x3feddbf0563ed0f6              # double 0.93309799999999998
	.quad	0x3feec1b54195cc85              # double 0.96114599999999994
	.quad	0x3fe907a6bd6e8af8              # double 0.78218399999999999
	.quad	0x3fe491409a240315              # double 0.64273100000000005
	.quad	0x3fef4095f2452c5a              # double 0.976634
	.quad	0x3fdcbf37b8d3f184              # double 0.44917099999999999
	.quad	0x3fb31c864883fd50              # double 0.074653999999999998
	.quad	0x3fccd338f7985272              # double 0.22519600000000001
	.quad	0x3fe17bd48cb4aec9              # double 0.54636600000000002
	.quad	0x3fdddedaec4a4096              # double 0.466727
	.quad	0x3fe74445aa2e3c53              # double 0.72708399999999995
	.quad	0x3fd4b018611fd588              # double 0.32324799999999998
	.quad	0x3feac99285a921cd              # double 0.83710600000000002
	.quad	0x3fe95e2046c764ae              # double 0.79274
	.quad	0x3fd925aee631f8a1              # double 0.39292500000000002
	.quad	0x3fc0edd4845132f8              # double 0.13225799999999999
	.quad	0x3fcaa1d755bccaf7              # double 0.208064
	.quad	0x3fec6dd69d30270f              # double 0.88840799999999998
	.quad	0x3fe99efd86a8fc0d              # double 0.80065799999999998
	.quad	0x3fd8bbf93ff25e57              # double 0.38647300000000001
	.quad	0x3fe0403148776816              # double 0.50783599999999995
	.quad	0x3fd143a647fdc593              # double 0.26975399999999999
	.quad	0x3fc3f0dc768dfbd7              # double 0.15578800000000001
	.quad	0x3fe2a95e9e1b089a              # double 0.583175
	.quad	0x3fea29aa1d755bcd              # double 0.81758600000000003
	.quad	0x3f99a847b24638c9              # double 0.025055999999999998
	.quad	0x3fdaf5f4e4430b18              # double 0.42126200000000003
	.quad	0x3fe61157abb8800f              # double 0.68961700000000004
	.quad	0x3feab37a80cf9e38              # double 0.83440899999999996
	.quad	0x3fee7a0f9096bb99              # double 0.95240000000000002
	.quad	0x3fd14abe6a337a81              # double 0.27018700000000001
	.quad	0x3fe3e76a7264a16a              # double 0.62199899999999997
	.quad	0x3fde1426fe718a87              # double 0.46998000000000001
	.quad	0x3fc869057d1782d4              # double 0.19070500000000001
	.quad	0x3fdb553ef6b5d463              # double 0.42707800000000001
	.quad	0x3fe3523d4f15e7c9              # double 0.60378900000000002
	.quad	0x3fdf4eb13dfb0d52              # double 0.489178
	.quad	0x3fe3fb480a5accd5              # double 0.62442399999999998
	.quad	0x3fed9e18efbb0e5e              # double 0.92554899999999996
	.quad	0x3fea7a54c5543287              # double 0.82743299999999997
	.quad	0x3fdaf1a1986b9c30              # double 0.42099799999999998
	.quad	0x3fe3955f78359bc3              # double 0.61198399999999997
	.quad	0x3fe7688377186552              # double 0.73150800000000005
	.quad	0x3fed151e75360d02              # double 0.90882799999999997
	.quad	0x3fcc19b90ea9e6ef              # double 0.21953500000000001
	.quad	0x3f9a8bd230b9dc2f              # double 0.025923999999999999
	.quad	0x3fd1f5903a7546d4              # double 0.280613
	.quad	0x3fd82d59d55e6bc6              # double 0.37776799999999999
	.quad	0x3fe8612a51e321a3              # double 0.76186100000000001
	.quad	0x3fd489118c197e56              # double 0.32086599999999998
	.quad	0x3fddb7b6bb129025              # double 0.46433799999999997
	.quad	0x3fe78ea5b530ced5              # double 0.73616300000000001
	.quad	0x3fe0ef049a9973da              # double 0.52917700000000001
	.quad	0x3fedbb2fec56d5d0              # double 0.92910000000000004
	.quad	0x3feb41fea8112ba1              # double 0.85180599999999995
	.quad	0x3fe5eb4e9813879c              # double 0.68497399999999997
	.quad	0x3fd070c1333b96af              # double 0.256882
	.quad	0x3fca4bc27631b585              # double 0.20543700000000001
	.quad	0x3fc549731098d478              # double 0.16630400000000001
	.quad	0x3fdfaf4f0d844d01              # double 0.49507499999999999
	.quad	0x3fe5963779e9d0ea              # double 0.67458700000000005
	.quad	0x3fdd6df82b1f687b              # double 0.459837
	.quad	0x3fe59461b6d43d04              # double 0.67436300000000005
	.quad	0x3fd970e6f2e8c048              # double 0.39751599999999998
	.quad	0x3fc3420b3d4ae42a              # double 0.150453
	.quad	0x3fe77ef7c243dccf              # double 0.73424900000000004
	.quad	0x3fc37c3504c48adf              # double 0.152228
	.quad	0x3fdd2ab25b317efe              # double 0.455731
	.quad	0x3fe13fad2999567e              # double 0.53902300000000003
	.quad	0x3fc4ca600b029281              # double 0.16242599999999999
	.quad	0x3fe6c60029f16b12              # double 0.71167000000000002
	.quad	0x3fcb6273929ed395              # double 0.21394199999999999
	.quad	0x3fee3e4cd7492791              # double 0.94510499999999997
	.quad	0x3fa9cf13cee9dd7f              # double 0.050408000000000001
	.quad	0x3feadf4e4430b179              # double 0.83975900000000003
	.quad	0x3fe989203a322af5              # double 0.79798899999999995
	.quad	0x3fe1ff38c5436b90              # double 0.56240500000000004
	.quad	0x3fb9cc100e6afcce              # double 0.10077
	.quad	0x3fe0dbca9691a75d              # double 0.52683000000000002
	.quad	0x3fcb37542a23bff9              # double 0.21262600000000001
	.quad	0x3fc145f9df548ece              # double 0.13494800000000001
	.quad	0x3fac2a23bff8a8f4              # double 0.055009000000000002
	.quad	0x3fef37ac3eb7cbb4              # double 0.97554600000000002
	.quad	0x3fdaed634549b62c              # double 0.42073899999999997
	.quad	0x3fe840229a5ebb77              # double 0.75782899999999997
	.quad	0x3fdbad96a6a0125a              # double 0.43247000000000002
	.quad	0x3f92c7b890d5a5b9              # double 0.018339999999999999
	.quad	0x3fc5c829cfdd2285              # double 0.17017099999999999
	.quad	0x3fe71693c03bc4d2              # double 0.72150599999999998
	.quad	0x3fd508f648c7192f              # double 0.32867200000000002
	.quad	0x3fc30c4dec1c1d6d              # double 0.148813
	.quad	0x3fe6daf8df7a4e7b              # double 0.71423000000000003
	.quad	0x3fd15347a5b0ff11              # double 0.270708
	.quad	0x3fe3731f46ed245b              # double 0.60780299999999998
	.quad	0x3fc13c9abb01c92e              # double 0.134662
	.quad	0x3fd81cb039ef0f17              # double 0.376751
	.quad	0x3fdbe37154003255              # double 0.43575700000000001
	.quad	0x3fb883ec892ab68d              # double 0.095763000000000001
	.quad	0x3fe1f4128bf3bea9              # double 0.56104399999999999
	.quad	0x3f87b9e060fe4799              # double 0.011585
	.quad	0x3fd5ea5b530ced4e              # double 0.34242899999999998
	.quad	0x3fdef2e48e8a71de              # double 0.48357499999999998
	.quad	0x3fec6df3f961804e              # double 0.88842200000000005
	.quad	0x3fe84d5f99c38b05              # double 0.75944500000000004
	.quad	0x3f7801b43526527a              # double 0.0058609999999999999
	.quad	0x3fe2936e71cda2b6              # double 0.58049700000000004
	.quad	0x3fe9699e94ab1d50              # double 0.79414300000000004
	.quad	0x3fece1804d983947              # double 0.90252699999999997
	.quad	0x3fa89b30728e92d5              # double 0.048058999999999998
	.quad	0x3febdefa615a8deb              # double 0.87096899999999999
	.quad	0x3fdd3a7daa4fca43              # double 0.45669500000000002
	.quad	0x3fc46bf8769ec2ce              # double 0.15954499999999999
	.quad	0x3fc9a35d67ba237d              # double 0.200298
	.quad	0x3fe3da059a73b42d              # double 0.62036400000000003
	.quad	0x3fe5aec28b2a6b0e              # double 0.67758300000000005
	.quad	0x3fef2d601ffb480a              # double 0.97428899999999996
	.quad	0x3fd19774256bca53              # double 0.27486899999999997
	.quad	0x3fe41ae2da554b8c              # double 0.62828200000000001
	.quad	0x3fc3d2ae8e1d6495              # double 0.154867
	.quad	0x3feeb4245f5ad96a              # double 0.95948999999999995
	.quad	0x3fed28112ba16e7a              # double 0.91114099999999998
	.quad	0x3fedbd89ce4a7b4e              # double 0.92938699999999996
	.quad	0x3fe9073bc903ea70              # double 0.78213299999999997
	.quad	0x3fe4b65881a15550              # double 0.64725900000000003
	.quad	0x3fde89acbc8c0ce9              # double 0.47715299999999999
	.quad	0x3feb672756861e93              # double 0.85634200000000005
	.quad	0x3fee4243dccea290              # double 0.94558900000000001
	.quad	0x3fc36a1e81cb46bb              # double 0.15167600000000001
	.quad	0x3f8234eb9a176ddb              # double 0.0088900000000000003
	.quad	0x3fed3a493c89f40a              # double 0.91336499999999998
	.quad	0x3fdbc521dda059a7              # double 0.43390699999999999
	.quad	0x3fee7e86833c6003              # double 0.95294500000000004
	.quad	0x3f945a5fc7e6b3ff              # double 0.019876000000000001
	.quad	0x3febc13db7f17375              # double 0.86733899999999997
	.quad	0x3fc0cf28c79f6662              # double 0.13132199999999999
	.quad	0x3fe47e931876188b              # double 0.64045099999999999
	.quad	0x3fda58ab92c06184              # double 0.41166199999999997
	.quad	0x3febaebc408d8ec9              # double 0.86507999999999996
	.quad	0x3fda397dd00f776c              # double 0.40975899999999998
	.quad	0x3fe6a795703f2d3c              # double 0.70795699999999995
	.quad	0x3f9f809917939a7c              # double 0.030764
	.quad	0x3fd3c065b63d3e4f              # double 0.308618
	.quad	0x3fd8ec5f394b7b29              # double 0.38942700000000002
	.quad	0x3fa57b2031ceaf25              # double 0.041954999999999999
	.quad	0x3fc3d944aa53fc01              # double 0.15506800000000001
	.quad	0x3fdf7939a7c17a89              # double 0.49177399999999999
	.quad	0x3fb6cebbba55d1c4              # double 0.089092000000000005
	.quad	0x3fedbff04577d955              # double 0.92967999999999995
	.quad	0x3fcee7ff583a53b9              # double 0.241455
	.quad	0x3fbfe52157689ca2              # double 0.12459000000000001
	.quad	0x3fefdc9e6687f456              # double 0.99568100000000004
	.quad	0x3fee5c5d63886595              # double 0.94877500000000003
	.quad	0x3fab70cdc8754f37              # double 0.053594999999999997
	.quad	0x3fb9c0767d34df05              # double 0.100593
	.quad	0x3fed1426fe718a87              # double 0.90871000000000002
	.quad	0x3fe3e073de1e2de8              # double 0.62114899999999995
	.quad	0x3fe30d8cb07d0aee              # double 0.59540400000000004
	.quad	0x3fe64b1ab0856e69              # double 0.69666799999999995
	.quad	0x3fe446c11a11233e              # double 0.63363700000000001
	.quad	0x3fce83d35eb7457c              # double 0.238398
	.quad	0x3fee252ef911cf35              # double 0.94203899999999996
	.quad	0x3fc392d98bf7f067              # double 0.152919
	.quad	0x3fbb5b4edb2f661f              # double 0.106862
	.quad	0x3feca24894c447c3              # double 0.89480999999999999
	.quad	0x3fe1245d41fa7653              # double 0.53568899999999997
	.quad	0x3fe35a57646ae3a4              # double 0.60477800000000004
	.quad	0x3f96fc58ab92c062              # double 0.022447000000000002
	.quad	0x3fed6f99806f2629              # double 0.91987300000000005
	.quad	0x3feb3484d76ab580              # double 0.85016099999999994
	.quad	0x3fd7888b545c78a7              # double 0.36770900000000001
	.quad	0x3fd1322291fb3fa7              # double 0.26868500000000001
	.quad	0x3fe7e6c6de76427c              # double 0.74692099999999995
	.quad	0x3fb48e8a71de69ad              # double 0.080299999999999996
	.quad	0x3fdf15e39713ad5c              # double 0.485711
	.quad	0x3fdd59210385c67e              # double 0.458565
	.quad	0x3fd221144cbe1eb4              # double 0.28326899999999999
	.quad	0x3fbb6f9fcb0c026d              # double 0.107172
	.quad	0x3f97d0f1f57b41c0              # double 0.023258000000000001
	.quad	0x3fcd4e0114d2f5dc              # double 0.22894300000000001
	.quad	0x3feb922749f0e4da              # double 0.861591
	.quad	0x3fe2f2fba01eeed9              # double 0.59216100000000005
	.quad	0x3fe8cb252ce032db              # double 0.77479799999999999
	.quad	0x3fdb06c8711d798e              # double 0.42228900000000003
	.quad	0x3fbe8900c521dda0              # double 0.119278
	.quad	0x3fe068be2f7b17ce              # double 0.51278599999999996
	.quad	0x3fb730a4e379b77c              # double 0.090586
	.quad	0x3feff6a93f290abb              # double 0.99885999999999997
	.quad	0x3fdf02f2f9873ffb              # double 0.48455500000000001
	.quad	0x3fd23b5393250b52              # double 0.28487099999999999
	.quad	0x3fc398bf7f06705d              # double 0.15309900000000001
	.quad	0x3fef2b6f19934efd              # double 0.97405200000000002
	.quad	0x3fe1baf74cd3176a              # double 0.55407300000000004
	.quad	0x3fe0c968943e1006              # double 0.524586
	.quad	0x3fe49958969a0ad9              # double 0.64371900000000004
	.quad	0x3fe4e473471f7942              # double 0.652887
	.quad	0x3fee9081c2e33eff              # double 0.95513999999999999
	.quad	0x3fc8a7ef9db22d0e              # double 0.19262499999999999
	.quad	0x3fe7262456f75d9a              # double 0.72340599999999999
	.quad	0x3fdd68b9fdbd2fa1              # double 0.45951700000000001
	.quad	0x3fd2fed20296b335              # double 0.29680299999999998
	.quad	0x3fe6806af46aa088              # double 0.70317600000000002
	.quad	0x3fe4767f4dbdf8f4              # double 0.63946499999999995
	.quad	0x3fe48a2877ee4e27              # double 0.64186500000000002
	.quad	0x3fce0ef1348b2208              # double 0.23483100000000001
	.quad	0x3fe793037d63022e              # double 0.73669600000000002
	.quad	0x3fdadd3fe1975f2d              # double 0.41975400000000002
	.quad	0x3fe20655193708ab              # double 0.56327300000000002
	.quad	0x3fe77a24894c447c              # double 0.73365999999999998
	.quad	0x3fec9c8eabffcdab              # double 0.89411099999999999
	.quad	0x3fe16e115592d98c              # double 0.544686
	.quad	0x3fc25c03361565c3              # double 0.143433
	.quad	0x3fa4ab1d4f9c1f86              # double 0.040368000000000001
	.quad	0x3fe55909f1f14984              # double 0.66711900000000002
	.quad	0x3fd89ff0cbaf965b              # double 0.38476199999999999
	.quad	0x3fd94df04ddb5526              # double 0.39538200000000001
	.quad	0x3f6b75a74c09c3ce              # double 0.0033519999999999999
	.quad	0x3fed1e731d2e0e30              # double 0.90996699999999997
	.quad	0x3fd17521144cbe1f              # double 0.27277400000000002
	.quad	0x3fea45cdd50a88f0              # double 0.821021
	.quad	0x3fe0d57de0d66f0d              # double 0.526061
	.quad	0x3fea0dda48b65237              # double 0.814191
	.quad	0x3fded7e45803cd14              # double 0.48192699999999999
	.quad	0x3fe79b068123810f              # double 0.73767400000000005
	.quad	0x3fdb3abc947064ed              # double 0.42546
	.quad	0x3fd163beec39799e              # double 0.27171299999999998
	.quad	0x3fc962413db7f173              # double 0.19831099999999999
	.quad	0x3fc6522ea0fd3b2a              # double 0.17438300000000001
	.quad	0x3fd1fbeb9e492bc3              # double 0.281001
	.quad	0x3fce2c77574f722e              # double 0.235732
	.quad	0x3f7ad7518b0d0edc              # double 0.0065529999999999998
	.quad	0x3fe4ef36ef8055fc              # double 0.65420100000000003
	.quad	0x3fd7072085b18549              # double 0.35981000000000002
	.quad	0x3fe343914f483cb0              # double 0.60199800000000003
	.quad	0x3fedee1deacc9214              # double 0.93531699999999995
	.quad	0x3feb9f080303c07f              # double 0.86316300000000001
	.quad	0x3fd8162281344806              # double 0.37635099999999999
	.quad	0x3fe034117f84449e              # double 0.50635600000000003
	.quad	0x3f9ee9142b302f73              # double 0.030186000000000001
	.quad	0x3fe1b1bbcf4e874d              # double 0.55294600000000005
	.quad	0x3fef1fec99f1ae2e              # double 0.97264700000000004
	.quad	0x3fc658b3f63c31df              # double 0.17458199999999999
	.quad	0x3fe82c3c9eecbfb1              # double 0.75539999999999996
	.quad	0x3feefa743a647fdc              # double 0.96807299999999996
	.quad	0x3fef00f12c27a637              # double 0.96886499999999997
	.quad	0x3fe860eb67c286f9              # double 0.76183100000000004
	.quad	0x3fe23fc6540cc78f              # double 0.57028500000000004
	.quad	0x3fec9ca3a4b5568f              # double 0.89412100000000005
	.quad	0x3faefd86a8fc0d2c              # double 0.060527999999999998
	.quad	0x3fe882b841248d7e              # double 0.765957
	.quad	0x3fd0655193708aad              # double 0.25618400000000002
	.quad	0x3fe1959e6256366d              # double 0.54951399999999995
	.quad	0x3fe2f27fe4bcad9b              # double 0.59210200000000002
	.quad	0x3fd35f633ce63a5c              # double 0.30269699999999999
	.quad	0x3fe35657fb69984a              # double 0.60428999999999999
	.quad	0x3fb431df761cbccf              # double 0.078885999999999998
	.quad	0x3fca91b823c85c25              # double 0.20757200000000001
	.quad	0x3fb0bba12b5e529c              # double 0.065363000000000004
	.quad	0x3fdddb7281fd9ba2              # double 0.46651900000000002
	.quad	0x3fe903a96d4c33b5              # double 0.78169699999999998
	.quad	0x3fe7ec9e236c15d3              # double 0.74763400000000002
	.quad	0x3faecce5f7403dde              # double 0.060157000000000002
	.quad	0x3febabe48a58b3f6              # double 0.86473299999999997
	.quad	0x3fe5e71ef30a4e38              # double 0.68446300000000004
	.quad	0x3fe175ea67e846a6              # double 0.54564400000000002
	.quad	0x3fdeb04ee7c49fd8              # double 0.47951100000000002
	.quad	0x3fd2cf9a06a6e32e              # double 0.29392099999999999
	.quad	0x3fdb8fd9fd36f7e4              # double 0.43065500000000001
	.quad	0x3fef4ca925fe974a              # double 0.97810799999999998
	.quad	0x3fe0be78e1932d6f              # double 0.52325100000000002
	.quad	0x3fdcde7ea5f84cad              # double 0.45107999999999998
	.quad	0x3fee826cc1ca3a4b              # double 0.95342099999999996
	.quad	0x3fb8d07852f7f499              # double 0.096931000000000003
	.quad	0x3fdf1f42bb6672fc              # double 0.48628300000000002
	.quad	0x3fca89d27c393682              # double 0.20733099999999999
	.quad	0x3fefa135daad6020              # double 0.988429
	.quad	0x3fdf45c78a6dacac              # double 0.48863400000000001
	.quad	0x3fe472da122fad6d              # double 0.63902000000000003
	.quad	0x3fea3b0e5e679464              # double 0.81970900000000002
	.quad	0x3fe5b925bb7b6bb1              # double 0.67885099999999998
	.quad	0x3feb29b068123811              # double 0.84883900000000001
	.quad	0x3fee354e2b063e08              # double 0.94400700000000004
	.quad	0x3fef40d4dc65c704              # double 0.97666399999999997
	.quad	0x3fe4b7521144cbe2              # double 0.64737800000000001
	.quad	0x3fe02d55a3a08399              # double 0.50553400000000004
	.quad	0x3fe9d0225742dcf4              # double 0.80665699999999995
	.quad	0x3fe3e991ff7164c7              # double 0.62226199999999998
	.quad	0x3fdca8deb0fadf2f              # double 0.44780700000000001
	.quad	0x3fa7cc1871e6cd29              # double 0.046478999999999999
	.quad	0x3fd8304ccee5abc1              # double 0.37794800000000001
	.quad	0x3fe72dff822bbecb              # double 0.72436500000000004
	.quad	0x3fd045baf533f423              # double 0.25425599999999998
	.quad	0x3fe14050bd87b56c              # double 0.53910100000000005
	.quad	0x3fcfea465a57646b              # double 0.249337
	.quad	0x3fd9108c3f3e0371              # double 0.39163500000000001
	.quad	0x3fcddc8b86b15f89              # double 0.233293
	.quad	0x3fefbc60029f16b1              # double 0.99174499999999998
	.quad	0x3fd3836eb4e98138              # double 0.30489699999999997
	.quad	0x3fe763ed0f627393              # double 0.73094800000000004
	.quad	0x3fe1b49be8ff327b              # double 0.55329700000000004
	.quad	0x3faffc7607c419a0              # double 0.062473000000000001
	.quad	0x3fd2acd184c27200              # double 0.291798
	.quad	0x3fc5b6d43d03968d              # double 0.16964199999999999
	.quad	0x3fd8a3161a1db878              # double 0.38495400000000002
	.quad	0x3fee128bf3bea91e              # double 0.93976400000000004
	.quad	0x3feb0902de00d1b7              # double 0.84484999999999999
	.quad	0x3fdbc69728a61177              # double 0.43399599999999999
	.quad	0x3fde228dc981beb2              # double 0.47085900000000003
	.quad	0x3fe4f9b994e1a3f4              # double 0.65548399999999996
	.quad	0x3fed009917939a7c              # double 0.90632299999999998
	.quad	0x3fddeb356da0168b              # double 0.46748099999999998
	.quad	0x3fd824d4cb9ecf64              # double 0.37724800000000003
	.quad	0x3fd4b8e4b87bdcf0              # double 0.32378499999999999
	.quad	0x3fd4dcc63f141206              # double 0.32597500000000001
	.quad	0x3fe10db0574b4070              # double 0.53292099999999998
	.quad	0x3fdb4f3343fa2ad4              # double 0.426709
	.quad	0x3fedbac2df0d4131              # double 0.92904799999999998
	.quad	0x3fea902363b25700              # double 0.83009500000000003
	.quad	0x3fb3dac68a936c59              # double 0.077557000000000001
	.quad	0x3feb5bad3a604e1e              # double 0.85494099999999995
	.quad	0x3fce0642396073de              # double 0.234566
	.quad	0x3fd1b96f21f6cacd              # double 0.27694299999999999
	.quad	0x3fe847735c182ecb              # double 0.75872200000000001
	.quad	0x3fc0eed8904f6dfc              # double 0.13228899999999999
	.quad	0x3fd012a0ec743201              # double 0.251137
	.quad	0x3fefed82ba5a0382              # double 0.99774300000000005
	.quad	0x3fd51904b3c3e74b              # double 0.329652
	.quad	0x3fd523704790b84a              # double 0.33028800000000003
	.quad	0x3fda8283d35eb745              # double 0.41421599999999997
	.quad	0x3f7476af89c5e6ff              # double 0.0049959999999999996
	.quad	0x3fd1f2452c59fb1e              # double 0.28041199999999999
	.quad	0x3fc1f3061c79b34a              # double 0.14022899999999999
	.quad	0x3fe0e2fbe33acd5b              # double 0.52770799999999995
	.quad	0x3fdde820e6299525              # double 0.46729300000000001
	.quad	0x3fe3d141a6937d20              # double 0.61929400000000001
	.quad	0x3fe9db1c864883fd              # double 0.80799699999999997
	.quad	0x3fca347e8ccdd93c              # double 0.20472699999999999
	.quad	0x3faf61ed5ae1cde6              # double 0.061294000000000001
	.quad	0x3fefd362e9036439              # double 0.99455400000000004
	.quad	0x3fa4a1cef240fa9c              # double 0.040296999999999999
	.quad	0x3fda64840e1719f8              # double 0.412385
	.quad	0x3fdab10342aa9f7b              # double 0.41705399999999998
	.quad	0x3fd3536933a0407d              # double 0.30196600000000001
	.quad	0x3fef29e2bcf91a33              # double 0.97386300000000003
	.quad	0x3fa2c5e2cdc011d3              # double 0.036665999999999997
	.quad	0x3fe49ed17c5ef630              # double 0.64438700000000004
	.quad	0x3fabfa2ad3e920c0              # double 0.054642999999999997
	.quad	0x3fc574f722e1ac58              # double 0.167632
	.quad	0x3fd364b2314013ec              # double 0.30302099999999998
	.quad	0x3fc2a27f1b691212              # double 0.14558399999999999
	.quad	0x3fce588a04d12019              # double 0.23707700000000001
	.quad	0x3fd91b152f3c2dae              # double 0.39227800000000002
	.quad	0x3fe9b7cbb3c81909              # double 0.80368600000000001
	.quad	0x3fe93baba7b9170d              # double 0.78853399999999996
	.quad	0x3fceb5807fed2029              # double 0.23991399999999999
	.quad	0x3fa406c00da1a933              # double 0.039114000000000003
	.quad	0x3fe8d18090b417ca              # double 0.77557399999999999
	.quad	0x3fdfb1ee2435696e              # double 0.49523499999999998
	.quad	0x3feaa09aaa3ad18d              # double 0.83210499999999998
	.quad	0x3fd9b07d0aed99cc              # double 0.401397
	.quad	0x3fc5d1782d38476f              # double 0.170455
	.quad	0x3fd1916440f23897              # double 0.27449899999999999
	.quad	0x3fee62dc6e2a8006              # double 0.94956799999999997
	.quad	0x3fd883be6601bc99              # double 0.38304100000000002
	.quad	0x3fe70e432441fea8              # double 0.72049099999999999
	.quad	0x3fe4e4dc22ab25b3              # double 0.65293699999999999
	.quad	0x3fd86266fd651b0d              # double 0.38100600000000001
	.quad	0x3fd4f01b866e43aa              # double 0.32715499999999997
	.quad	0x3fccb4d8ba40d90e              # double 0.224269
	.quad	0x3fe3c169c23b7953              # double 0.61736000000000002
	.quad	0x3fe34cf6be37de94              # double 0.60314500000000004
	.quad	0x3feaf2085b18548b              # double 0.84204500000000004
	.quad	0x3fe7c6759ab6d00b              # double 0.74297599999999997
	.quad	0x3feeb5675579af19              # double 0.95964400000000005
	.quad	0x3fea5ecc3e3193f7              # double 0.82407200000000003
	.quad	0x3fb98b1dd5d3dc8c              # double 0.099779000000000006
	.quad	0x3fda06af46aa087d              # double 0.40665800000000002
	.quad	0x3fe0b7824d4cb9ed              # double 0.522401
	.quad	0x3fea899e0e73604a              # double 0.82929900000000001
	.quad	0x3fca37ef5a964e8b              # double 0.20483199999999999
	.quad	0x3fece00f345069a5              # double 0.90235100000000001
	.quad	0x3fe800cd855970b5              # double 0.75009800000000004
	.quad	0x3fdeba5e353f7cee              # double 0.48012500000000002
	.quad	0x3f6bb8c32a8c9b84              # double 0.0033839999999999999
	.quad	0x3fd971476af89c5e              # double 0.39753899999999998
	.quad	0x3fdb94185058dde8              # double 0.43091400000000002
	.quad	0x3fc979fa97e132b5              # double 0.19903499999999999
	.quad	0x3fa37ef5a964e8b8              # double 0.038078000000000001
	.quad	0x3fec2e85b9e8c47a              # double 0.88067899999999999
	.quad	0x3fb0f4a558ea7ce1              # double 0.066233
	.quad	0x3fdf791c4b90214b              # double 0.49176700000000001
	.quad	0x3fd41aef6f8f0414              # double 0.31414399999999998
	.quad	0x3f93a08398a65493              # double 0.019167
	.quad	0x3fcb35b0bbf50e34              # double 0.21257599999999999
	.quad	0x3fe41290257c914b              # double 0.62726599999999999
	.quad	0x3fc8f86a098915be              # double 0.195081
	.quad	0x3fab4fe79ee02a78              # double 0.053344000000000003
	.quad	0x3f968e820e629952              # double 0.022027999999999999
	.quad	0x3fd58372e6a76966              # double 0.336148
	.quad	0x3fd4ded288ce703b              # double 0.3261
	.quad	0x3fe93b81b64e0547              # double 0.78851400000000005
	.quad	0x3fc16e264e48626f              # double 0.13617399999999999
	.quad	0x3fd3b912dba4d6e4              # double 0.30817099999999997
	.quad	0x3fd250331e3a7daa              # double 0.28614499999999998
	.quad	0x3fd5c58255b035bd              # double 0.34017999999999998
	.quad	0x3fdbc53b0813cab8              # double 0.43391299999999999
	.quad	0x3f7269595feda661              # double 0.0044949999999999999
	.quad	0x3fdf51372a38b8ae              # double 0.48933199999999999
	.quad	0x3feb369fcf3dc055              # double 0.85041800000000001
	.quad	0x3fedd3fc0096feb5              # double 0.93212700000000004
	.quad	0x3fe1407ee0b0af60              # double 0.53912300000000002
	.quad	0x3fa33a8a3f8982cb              # double 0.037555999999999999
	.quad	0x3fa4443914f483cb              # double 0.039583
	.quad	0x3f955000c9539b89              # double 0.020813000000000002
	.quad	0x3fb7d566cf41f213              # double 0.093100000000000002
	.quad	0x3fdb2b51bd61f5be              # double 0.42451899999999998
	.quad	0x3fe8f5e6362a5e78              # double 0.78001699999999996
	.quad	0x3fe88feac42e989a              # double 0.76756800000000003
	.quad	0x3fde6ec9e236c15d              # double 0.47551199999999999
	.quad	0x3fd3c2374794ea07              # double 0.30872899999999998
	.quad	0x3fd4dbdf8f473040              # double 0.32591999999999999
	.quad	0x3fe7baafff36ac64              # double 0.74153899999999995
	.quad	0x3fd2effe2a3cea6c              # double 0.29589799999999999
	.quad	0x3fb7f9d6f112fd33              # double 0.093656000000000003
	.quad	0x3fea31e7d9988d2a              # double 0.81859199999999999
	.quad	0x3fdc652bd3c36113              # double 0.44367499999999999
	.quad	0x3fe294b167ec7864              # double 0.58065100000000003
	.quad	0x3feb895af294dd72              # double 0.86051699999999998
	.quad	0x3fe65ff609dcf894              # double 0.699214
	.quad	0x3fee8fd7e45803cd              # double 0.95505899999999999
	.quad	0x3fe82c7325918a01              # double 0.75542600000000004
	.quad	0x3fdde3eaf6837f7c              # double 0.46703600000000001
	.quad	0x3fd782adc4c9c90c              # double 0.36735099999999998
	.quad	0x3fba48f96e158751              # double 0.102676
	.quad	0x3fc36deb95e5aff3              # double 0.15179200000000001
	.quad	0x3fee4ba0e8427419              # double 0.94673200000000002
	.quad	0x3fcd4202d9cf13cf              # double 0.228577
	.quad	0x3fe00f68be2f7b18              # double 0.50188100000000002
	.quad	0x3fe897ebaf102364              # double 0.76854500000000003
	.quad	0x3fd4f71eafee6fb5              # double 0.32758300000000001
	.quad	0x3fefa5375c8d9f90              # double 0.98891799999999996
	.quad	0x3fcd22a6f3f52fc2              # double 0.22761999999999999
	.quad	0x3feafc158fb43d8a              # double 0.84327200000000002
	.quad	0x3febd3e920c069e8              # double 0.869618
	.quad	0x3feb72f76e6106ab              # double 0.85778399999999999
	.quad	0x3fea319e731d2e0e              # double 0.81855699999999998
	.quad	0x3fb5e2ac322291fb              # double 0.085489999999999997
	.quad	0x3fd97ffde7210be9              # double 0.39843699999999999
	.quad	0x3fc649667b5f1bef              # double 0.17411499999999999
	.quad	0x3fe3219008205ff2              # double 0.59784700000000002
	.quad	0x3fe7185271bcdbbe              # double 0.721719
	.quad	0x3fecd5b89939218a              # double 0.90108900000000003
	.quad	0x3fdbeb24a6a875d5              # double 0.43622699999999998
	.quad	0x3fe988893b7d8490              # double 0.79791699999999999
	.quad	0x3fd8a1059ea57215              # double 0.384828
	.quad	0x3fea62478854cdb8              # double 0.82449700000000004
	.quad	0x3fea8e496ededaec              # double 0.82986899999999996
	.quad	0x3fe2900c521dda06              # double 0.58008400000000004
	.quad	0x3fe7e3150dae3e6c              # double 0.74646999999999997
	.quad	0x3fee20945f9df549              # double 0.94147700000000001
	.quad	0x3fe0f9702e6644d8              # double 0.53044899999999995
	.quad	0x3fee6ed6777079e6              # double 0.95103000000000004
	.quad	0x3fd08f3a9b068124              # double 0.25874200000000003
	.quad	0x3fe0842fa5093965              # double 0.51613600000000004
	.quad	0x3fe78d9f90539fba              # double 0.73603799999999997
	.quad	0x3fdebe1eb4202d9d              # double 0.480354
	.quad	0x3fe44ec204f2ae08              # double 0.63461400000000001
	.quad	0x3fdcbee3d5fdcdf7              # double 0.44915100000000002
	.quad	0x3fca22ab25b317f0              # double 0.204183
	.quad	0x3fd0e8af81626b2f              # double 0.26420199999999999
	.quad	0x3febd3b6cbd987c6              # double 0.86959399999999998
	.quad	0x3fc405ab3aabcd79              # double 0.15642300000000001
	.quad	0x3fd9a05dd8f92afa              # double 0.40041300000000002
	.quad	0x3fc40a7c5ac471b4              # double 0.15656999999999999
	.quad	0x3fe38a5269595fee              # double 0.61063500000000004
	.quad	0x3fdbcbc8c0ce91c9              # double 0.434313
	.quad	0x3fc3cb9a9da597d5              # double 0.15465100000000001
	.quad	0x3fe98487b99d4520              # double 0.79742800000000002
	.quad	0x3feb824b33daf8df              # double 0.85965499999999995
	.quad	0x3fb7cb4f1e4b44a2              # double 0.092946
	.quad	0x3fda04ee7c49fd7a              # double 0.406551
	.quad	0x3fd669fcf3dc054f              # double 0.350219
	.quad	0x3fd18ace24bba12b              # double 0.27409699999999998
	.quad	0x3fc7ed527e521577              # double 0.18693000000000001
	.quad	0x3fe6e05681ecd4aa              # double 0.71488499999999999
	.quad	0x3feff84662bae03b              # double 0.99905699999999997
	.quad	0x3faf9357603925bb              # double 0.061670999999999997
	.quad	0x3fecb7e0ac7da1ec              # double 0.89744599999999996
	.quad	0x3fe98b3700474d9c              # double 0.79824399999999995
	.quad	0x3fd8923e5b8561d4              # double 0.38392599999999999
	.quad	0x3fcc80303c07ee0b              # double 0.222662
	.quad	0x3fd3a17f4128bf3c              # double 0.306732
	.quad	0x3fbe9563a9f383f1              # double 0.119467
	.quad	0x3fe995b35b0bbf51              # double 0.79952400000000001
	.quad	0x3fc46290eed02cd4              # double 0.15925800000000001
	.quad	0x3fef4cdb7ae5796c              # double 0.978132
	.quad	0x3f92f661f18c9fb6              # double 0.018518
	.quad	0x3fe0c27631b584b2              # double 0.52373800000000004
	.quad	0x3fe4afcac8e68e3f              # double 0.64645900000000001
	.quad	0x3fdf42f61ed5ae1d              # double 0.48846200000000001
	.quad	0x3fc266ba493c89f4              # double 0.14376
	.quad	0x3fdc604189374bc7              # double 0.44337500000000002
	.quad	0x3fdf0f3cb3e5753a              # double 0.48530499999999999
	.quad	0x3fed105c03361566              # double 0.90824700000000003
	.quad	0x3fe62656abde3fbc              # double 0.69218000000000002
	.quad	0x3fc8147ae147ae14              # double 0.18812499999999999
	.quad	0x3fe197353b4b2fa9              # double 0.54970799999999997
	.quad	0x3fe3e30ec3116228              # double 0.62146699999999999
	.quad	0x3fc063f9a49c2c1b              # double 0.128051
	.quad	0x3fdb116ebd4cfd09              # double 0.42293900000000001
	.quad	0x3fd6817fc7607c42              # double 0.35165400000000002
	.quad	0x3fee7c5ac471b478              # double 0.95267999999999997
	.quad	0x3fe9b87379746024              # double 0.80376599999999998
	.quad	0x3fb45c896dd26b72              # double 0.079536999999999996
	.quad	0x3fe052a1f8e3ac0c              # double 0.51008699999999996
	.quad	0x3fd7b34a44c7b02d              # double 0.37031799999999998
	.quad	0x3febe66234a87e39              # double 0.87187300000000001
	.quad	0x3fd06ab9b23dd54e              # double 0.25651400000000002
	.quad	0x3fc0788db0574b40              # double 0.12867899999999999
	.quad	0x3feed2e0e30446b7              # double 0.96324200000000004
	.quad	0x3fd320ddc6195465              # double 0.29888100000000001
	.quad	0x3fe7be5fb71fbc5e              # double 0.74198900000000001
	.quad	0x3fcd703f2d3c792d              # double 0.229988
	.quad	0x3fde3dee78183f92              # double 0.47253000000000001
	.quad	0x3fdd850df15a4acf              # double 0.46124599999999999
	.quad	0x3fdb502eec7c957d              # double 0.42676900000000001
	.quad	0x3fa01a79fec99f1b              # double 0.031452000000000001
	.quad	0x3fa8b0079a2834d2              # double 0.048217999999999997
	.quad	0x3fe7a513b5bf6a0e              # double 0.73890100000000003
	.quad	0x3fc1f5f91600f345              # double 0.140319
	.quad	0x3fb9a836eb4e9814              # double 0.10022300000000001
	.quad	0x3fe427fe4bcad9ae              # double 0.62988200000000005
	.quad	0x3fad66adb402d16c              # double 0.057424000000000003
	.quad	0x3fe210214ad362e9              # double 0.564469
	.quad	0x3fe6fd7a13c254a4              # double 0.71844200000000003
	.quad	0x3fe8256bca5375c9              # double 0.75456800000000002
	.quad	0x3fe93ef6b5d462c3              # double 0.78893599999999997
	.quad	0x3feba8027d88c1db              # double 0.864259
	.quad	0x3fe44319c5a3e39f              # double 0.63319099999999995
	.quad	0x3fec0d08919ef955              # double 0.87659100000000001
	.quad	0x3fd3678c0053e2d6              # double 0.30319499999999999
	.quad	0x3fe1956e264e4862              # double 0.54949099999999995
	.quad	0x3feac50ce4ead0c4              # double 0.83655400000000001
	.quad	0x3fe38cdc8754f377              # double 0.61094499999999996
	.quad	0x3fd51248d7e02646              # double 0.32924100000000001
	.quad	0x3fc40baa582dbe7f              # double 0.156606
	.quad	0x3f67bd8be7296f65              # double 0.002898
	.quad	0x3fe38270f3882279              # double 0.60967300000000002
	.quad	0x3fe2972cd7cf5f4e              # double 0.58095399999999997
	.quad	0x3fd683b60285ec3e              # double 0.35178900000000002
	.quad	0x3fb14877681669cf              # double 0.067512000000000003
	.quad	0x3fd8b96f21f6cacd              # double 0.38631799999999999
	.quad	0x3fcec692f6e8294a              # double 0.24043500000000001
	.quad	0x3fcda0168b5cbff4              # double 0.23144799999999999
	.quad	0x3fe87bf401c4fc1e              # double 0.76513100000000001
	.quad	0x3fef18c197e56473              # double 0.97177199999999996
	.quad	0x3fe9d25247cb70ac              # double 0.80692399999999997
	.quad	0x3fe68446b69db65f              # double 0.70364700000000002
	.quad	0x3fb352220bc382a1              # double 0.075471999999999997
	.quad	0x3fbefd651b0ccbc0              # double 0.12105399999999999
	.quad	0x3febb5f1bef49cf5              # double 0.86595999999999995
	.quad	0x3fead905c0336156              # double 0.83899199999999996
	.quad	0x3fdf8c111ada76d9              # double 0.49292399999999997
	.quad	0x3feb8ff759685122              # double 0.86132399999999998
	.quad	0x3fe93ea0ba1f4b1f              # double 0.78889500000000001
	.quad	0x3fbe66ec9e236c16              # double 0.118758
	.quad	0x3fd30d23d4f15e7d              # double 0.29767700000000002
	.quad	0x3fdf705425f20210              # double 0.49123099999999997
	.quad	0x3fce5985ad538ac2              # double 0.23710700000000001
	.quad	0x3fc696dd26b723ee              # double 0.176479
	.quad	0x3fdf6e696a26e547              # double 0.49111399999999999
	.quad	0x3f65e5aff2a172ac              # double 0.002673
	.quad	0x3fea79e9d0e991ff              # double 0.82738199999999995
	.quad	0x3fd8d9513f8db489              # double 0.388264
	.quad	0x3fb8c6f7a0b5ed8d              # double 0.096785999999999997
	.quad	0x3f943526527a2058              # double 0.019734000000000002
	.quad	0x3fc8df2ecf206424              # double 0.19431100000000001
	.quad	0x3fecf954eb13dfb1              # double 0.90543600000000002
	.quad	0x3fe54d7add15f02c              # double 0.66570799999999997
	.quad	0x3fad73860999dcb5              # double 0.057521999999999997
	.quad	0x3fe6b45f17bd8be7              # double 0.70951799999999998
	.quad	0x3fa91276fb09203a              # double 0.048968999999999999
	.quad	0x3fe79435ac8a3726              # double 0.736842
	.quad	0x3fe1a44c7b02d59d              # double 0.55130599999999996
	.quad	0x3fa7b84db9c7368b              # double 0.046328000000000001
	.quad	0x3fef4daf4adbc665              # double 0.97823300000000001
	.quad	0x3fef50870110a138              # double 0.97858
	.quad	0x3fe62d7b634dad32              # double 0.693052
	.quad	0x3fec0f29d40ee06e              # double 0.87685100000000005
	.quad	0x3fea98b2e9ccb7d4              # double 0.83113999999999998
	.quad	0x3fe87cefaa4766c7              # double 0.76525100000000001
	.quad	0x3fe1b29c347e8cce              # double 0.55305300000000002
	.quad	0x3fce66559f6ec5b0              # double 0.23749799999999999
	.quad	0x3fe0f221858bc59c              # double 0.52955700000000006
	.quad	0x3febf75968512232              # double 0.87394400000000005
	.quad	0x3fe426a22b3892ef              # double 0.62971600000000005
	.quad	0x3fbcabc5154866a1              # double 0.111996
	.quad	0x3fe78fa15db3397e              # double 0.73628300000000002
	.quad	0x3fd1a68b19a415f4              # double 0.27578999999999998
	.quad	0x3fe3fbe76c8b4396              # double 0.62450000000000006
	.quad	0x3fe0db6805a2d730              # double 0.526783
	.quad	0x3fe667cd03537197              # double 0.70017099999999999
	.quad	0x3fe39e0828c36da8              # double 0.61304099999999995
	.quad	0x3fe8a1c25d074214              # double 0.76974600000000004
	.quad	0x3fc3830e3cd9a522              # double 0.15243699999999999
	.quad	0x3fdb61bb05faebc4              # double 0.42784
	.quad	0x3fe1c68a936c58ef              # double 0.55548600000000004
	.quad	0x3fdf5c6c11a11234              # double 0.49001600000000001
	.quad	0x3fe0f8183f91e647              # double 0.53028500000000001
	.quad	0x3fbe974a3400b88d              # double 0.119496
	.quad	0x3fd4e33eff195033              # double 0.32636999999999999
	.quad	0x3fe1797891e21533              # double 0.54607799999999995
	.quad	0x3fccfee6fb4c3c19              # double 0.22652900000000001
	.quad	0x3fedc024b33daf8e              # double 0.929705
	.quad	0x3fd65ba2be0589ad              # double 0.34934300000000001
	.quad	0x3fd0f26aec0724b7              # double 0.26479599999999998
	.quad	0x3fddd6cb5350092d              # double 0.46623500000000001
	.quad	0x3fa95b78cc9a77e6              # double 0.049526000000000001
	.quad	0x3fda8283d35eb745              # double 0.41421599999999997
	.quad	0x3fecb8b04ab606b8              # double 0.89754500000000004
	.quad	0x3fdb56861e92923e              # double 0.42715599999999998
	.quad	0x3fd58feac42e989a              # double 0.33690900000000001
	.quad	0x3fdf541d8e864021              # double 0.48950900000000003
	.quad	0x3fb59d66adb402d1              # double 0.084432999999999994
	.quad	0x3fd9dfb9389b5200              # double 0.40427999999999997
	.quad	0x3fcb4bf0995aaf79              # double 0.213255
	.quad	0x3fe5f9a6b50b0f28              # double 0.68672500000000003
	.quad	0x3fdcee5abc0e38a8              # double 0.45204800000000001
	.quad	0x3fec4df266ba493d              # double 0.88451500000000005
	.quad	0x3fdfe62131a8ef78              # double 0.498421
	.quad	0x3fe42fb3b7521145              # double 0.63082300000000002
	.quad	0x3fe0e48e8a71de6a              # double 0.52790000000000004
	.quad	0x3fd7ee84ad794a6f              # double 0.37393300000000002
	.quad	0x3fe07f950b955f78              # double 0.51557399999999998
	.quad	0x3fe4f85942917508              # double 0.65531600000000001
	.quad	0x3fd75e95b78cc9a7              # double 0.36514799999999997
	.quad	0x3fda5ee136e71cda              # double 0.41204099999999999
	.quad	0x3feb60ded288ce70              # double 0.85557499999999997
	.quad	0x3fe158f92af9a8ce              # double 0.54211100000000001
	.quad	0x3fee3d09e12a51e3              # double 0.94495099999999999
	.quad	0x3fdf1554fbdad752              # double 0.48567700000000003
	.quad	0x3fe35eb95e5aff2a              # double 0.60531299999999999
	.quad	0x3fc98afc47e49b20              # double 0.19955400000000001
	.quad	0x3fe6ee935b91f70e              # double 0.71662300000000001
	.quad	0x3fe9d5ae1cde5d18              # double 0.807334
	.quad	0x3fd0538ef34d6a16              # double 0.25509999999999999
	.quad	0x3fa9a027525460aa              # double 0.050049999999999997
	.quad	0x3fa8ec3116228134              # double 0.048676999999999998
	.quad	0x3fe13b62413db7f1              # double 0.53849899999999995
	.quad	0x3fd267c6b8b69553              # double 0.28758400000000001
	.quad	0x3fc076d97b30f8c6              # double 0.12862699999999999
	.quad	0x3fcc4399b2c40d0b              # double 0.22081300000000001
	.quad	0x3fbf6e935b91f70e              # double 0.122781
	.quad	0x3fe9d0e779207d4e              # double 0.806751
	.quad	0x3fbc8e9b38d60a63              # double 0.111551
	.quad	0x3fcf77af640639d6              # double 0.24584
	.quad	0x3fdc1376d5497311              # double 0.43868800000000002
	.quad	0x3fe61a005c4651f4              # double 0.69067400000000001
	.quad	0x3fc81b4bb5e0f7fd              # double 0.188333
	.quad	0x3fe7c0df58c08b76              # double 0.74229400000000001
	.quad	0x3fea9d5c31593e60              # double 0.83170900000000003
	.quad	0x3fdae8af81626b2f              # double 0.42045199999999999
	.quad	0x3fdf17763e4abe6a              # double 0.48580699999999999
	.quad	0x3fc91ac9afe1da7b              # double 0.19613
	.quad	0x3fdabea4ebdd334c              # double 0.41788599999999998
	.quad	0x3fed15bdd76683c3              # double 0.90890400000000005
	.quad	0x3fa6a2f48c2e770c              # double 0.044212000000000001
	.quad	0x3fe6dca4b124d09a              # double 0.71443400000000001
	.quad	0x3fd33621fafc8b00              # double 0.30017899999999997
	.quad	0x3fd5433d6c721922              # double 0.332229
	.quad	0x3fe1a3db3bfb58d1              # double 0.55125199999999996
	.quad	0x3fe3890d5a5b9629              # double 0.61048000000000002
	.quad	0x3fead8665e02ea96              # double 0.838916
	.quad	0x3fcb321e603d5779              # double 0.21246699999999999
	.quad	0x3fd1a055757d5a9f              # double 0.27541100000000002
	.quad	0x3fd94c729f59ccfb              # double 0.395291
	.quad	0x3fcb9ebe9c886163              # double 0.215782
	.quad	0x3fe600389f83be66              # double 0.687527
	.quad	0x3fe5b660e51d25ab              # double 0.67851300000000003
	.quad	0x3febdfdcdf698783              # double 0.87107699999999999
	.quad	0x3f9346dc5d638866              # double 0.018825000000000001
	.quad	0x3fe0d2fc2656abde              # double 0.52575499999999997
	.quad	0x3fc185271bcdbbe0              # double 0.136876
	.quad	0x3f511ada76d97b31              # double 0.001044
	.quad	0x3fd31a6d698fe692              # double 0.29848799999999998
	.quad	0x3fd7e27e0ef99807              # double 0.373199
	.quad	0x3fe7116a8b8f14db              # double 0.72087599999999996
	.quad	0x3fd40789613d31ba              # double 0.31296000000000002
	.quad	0x3fe688ce703afb7f              # double 0.70420000000000005
	.quad	0x3feccc532a497fa6              # double 0.89994200000000002
	.quad	0x3fe073471f79420b              # double 0.51407199999999997
	.quad	0x3fee9d7ba6698bb5              # double 0.95672400000000002
	.quad	0x3f9cbccf28c79f66              # double 0.028063999999999999
	.quad	0x3fe1aa8c9b845565              # double 0.55206900000000003
	.quad	0x3fe404a515ce9e5e              # double 0.62556699999999998
	.quad	0x3fee4a3a4b5568e8              # double 0.94656099999999998
	.quad	0x3fee16e7a311e860              # double 0.94029600000000002
	.quad	0x3fda5f202107b784              # double 0.41205599999999998
	.quad	0x3fce94e5d5b24e9c              # double 0.23891899999999999
	.quad	0x3fcf7efe0ce0b913              # double 0.246063
	.quad	0x3fee7075b3e1437c              # double 0.95122799999999996
	.quad	0x3fcbb6134ce3de61              # double 0.21649399999999999
	.quad	0x3fe84230fcf80dc3              # double 0.75807999999999998
	.quad	0x3fe5d76cce5f7404              # double 0.68254700000000001
	.quad	0x3fe7a71fff79c843              # double 0.739151
	.quad	0x3fedc7b24638c975              # double 0.93062699999999998
	.quad	0x3fecd72ffd1dcd70              # double 0.90126799999999996
	.quad	0x3fd165cf67b1c001              # double 0.271839
	.quad	0x3fe066cb10342aaa              # double 0.512548
	.quad	0x3fe8f6a2f48c2e77              # double 0.78010699999999999
	.quad	0x3fd20dc768dfbd6a              # double 0.28209099999999998
	.quad	0x3fe761240746455f              # double 0.73060800000000004
	.quad	0x3fd0635e74299d88              # double 0.25606499999999999
	.quad	0x3feebe2d6238da3c              # double 0.96071499999999998
	.quad	0x3fea9dadfb506dd7              # double 0.83174800000000004
	.quad	0x3fe748387df5cf25              # double 0.72756600000000005
	.quad	0x3fedd36501e2584f              # double 0.93205499999999997
	.quad	0x3feb2908a265f0f6              # double 0.84875900000000004
	.quad	0x3fe38259e1f3a57f              # double 0.60966200000000004
	.quad	0x3fece798958d9b5f              # double 0.90327100000000005
	.quad	0x3feca8e4fb97bb73              # double 0.895617
	.quad	0x3feba897635e742a              # double 0.86433000000000004
	.quad	0x3fdfe0589acbc8c1              # double 0.49806800000000001
	.quad	0x3fd27b784662bae0              # double 0.28878599999999999
	.quad	0x3fcf35e310dbf056              # double 0.24383199999999999
	.quad	0x3fef5f9591cd1c7e              # double 0.98041800000000001
	.quad	0x3fba9ccb7d41743f              # double 0.10395500000000001
	.quad	0x3fe5428d434a01ac              # double 0.66437400000000002
	.quad	0x3fe4bdee78183f92              # double 0.64818500000000001
	.quad	0x3fc60dbad3a604e2              # double 0.172294
	.quad	0x3fd673471f79420b              # double 0.35078599999999999
	.quad	0x3fa27221858bc59c              # double 0.036027000000000003
	.quad	0x3fe241355475a31a              # double 0.57045999999999997
	.quad	0x3fc06516db0dd830              # double 0.128085
	.quad	0x3fd9fc6da4484945              # double 0.406032
	.quad	0x3fe4725c3dee7818              # double 0.63895999999999997
	.quad	0x3fd598b2e9ccb7d4              # double 0.33744499999999999
	.quad	0x3fd09799e518f3ed              # double 0.25925300000000001
	.quad	0x3fed6ce13f4a98ab              # double 0.91954100000000005
	.quad	0x3fcc78e9f6a93f29              # double 0.22244
	.quad	0x3fef58ba40d90e24              # double 0.97958100000000003
	.quad	0x3fd5f20a73f748a1              # double 0.34289799999999998
	.quad	0x3fe13fc43b2dd378              # double 0.53903400000000001
	.quad	0x3fe273affb04ee7c              # double 0.57662199999999997
	.quad	0x3fe2f327aa68f4b6              # double 0.59218199999999999
	.quad	0x3fd267f4dbdf8f47              # double 0.28759499999999999
	.quad	0x3fe6877ccc037931              # double 0.70403899999999997
	.quad	0x3fed332f01754b06              # double 0.91249800000000003
	.quad	0x3fb82eba27ae9ab3              # double 0.094463000000000005
	.quad	0x3feb010e8858ff76              # double 0.84387900000000005
	.quad	0x3feff182235b4edb              # double 0.99823099999999997
	.quad	0x3fcc69ced0b30b5b              # double 0.22197900000000001
	.quad	0x3fe57574f722e1ac              # double 0.67058799999999996
	.quad	0x3fdfc45cbbc2b94e              # double 0.49636000000000002
	.quad	0x3fde28e0c9d9d346              # double 0.47124500000000002
	.quad	0x3fc9b1d0c8041030              # double 0.200739
	.quad	0x3fe1526d8b1dd5d4              # double 0.54131200000000002
	.quad	0x3fe9a8049667b5f2              # double 0.80176000000000003
	.quad	0x3fb6250f840181e0              # double 0.086502999999999997
	.quad	0x3fc259fb1e18efbb              # double 0.143371
	.quad	0x3fddc7e6b3fe9fae              # double 0.46532600000000002
	.quad	0x3fc6b945308bb906              # double 0.17752899999999999
	.quad	0x3fe6bf0dc768dfbd              # double 0.71082199999999995
	.quad	0x3fdf615a8deb0fae              # double 0.490317
	.quad	0x3fe2d7928e0c9d9d              # double 0.58881499999999998
	.quad	0x3f6b6f5caf2d7f95              # double 0.003349
	.quad	0x3fe8766e86c6583f              # double 0.76445700000000005
	.quad	0x3fce686e7e62dc6e              # double 0.237562
	.quad	0x3fb44ee7c49fd7a1              # double 0.079328999999999997
	.quad	0x3fcfd590c0ad03da              # double 0.24870500000000001
	.quad	0x3fd32089e34330d7              # double 0.29886099999999999
	.quad	0x3fe7a5efe9318762              # double 0.73900600000000005
	.quad	0x3fe252ac753e707e              # double 0.57259199999999999
	.quad	0x3fd5c560c7c0f451              # double 0.34017199999999997
	.quad	0x3fcf7121ab4b72c5              # double 0.24564
	.quad	0x3fccd91eeaa6d267              # double 0.22537599999999999
	.quad	0x3fc616f0068db8bb              # double 0.17257500000000001
	.quad	0x3fba9973d9ec7000              # double 0.103904
	.quad	0x3fdab88ca3e7d135              # double 0.417514
	.quad	0x3fec2f37fbefd007              # double 0.88076399999999999
	.quad	0x3fd2fbbd7b2031cf              # double 0.29661500000000002
	.quad	0x3fe746f587d6f976              # double 0.72741199999999995
	.quad	0x3fc1b23dd54da4cf              # double 0.13825200000000001
	.quad	0x3fe7780dc33721d5              # double 0.73340499999999997
	.quad	0x3fe3a0168b5cbff4              # double 0.61329199999999995
	.quad	0x3fddd3e920c069e8              # double 0.466059
	.quad	0x3fd32f33ca31e7da              # double 0.29975600000000002
	.quad	0x3fb023fab10ba626              # double 0.063048999999999994
	.quad	0x3fb89b738e6d15ad              # double 0.096121999999999999
	.quad	0x3febff3ade225fa6              # double 0.87490599999999996
	.quad	0x3fe94fa69be09bb7              # double 0.79097300000000004
	.quad	0x3fefe49d388a8b09              # double 0.99665700000000001
	.quad	0x3fd3e29b6b2af145              # double 0.31070599999999998
	.quad	0x3fcfae03b3e9a6f8              # double 0.247498
	.quad	0x3fe70de2ac322292              # double 0.720445
	.quad	0x3fa94d2f5dbb9cfa              # double 0.049417000000000003
	.quad	0x3fee3f63c31df762              # double 0.94523800000000002
	.quad	0x3fe082363b256ffc              # double 0.51589499999999999
	.quad	0x3fdd05b7cfe58601              # double 0.45347399999999999
	.quad	0x3fd2f53c579f2346              # double 0.29621799999999998
	.quad	0x3feaa1cac083126f              # double 0.83225000000000005
	.quad	0x3fe34ca0c282c6ef              # double 0.60310399999999997
	.quad	0x3fac9a133c1ce6c1              # double 0.055863000000000003
	.quad	0x3fe1501c0ca600b0              # double 0.54102899999999998
	.quad	0x3fa4a7d6733ebbfd              # double 0.040342999999999997
	.quad	0x3fdfd28d002e2329              # double 0.497226
	.quad	0x3fcb6a26e5471716              # double 0.21417700000000001
	.quad	0x3fe7625e99e94ab2              # double 0.73075800000000002
	.quad	0x3fe2321e603d5779              # double 0.56861799999999996
	.quad	0x3fbf69b9d7fd8277              # double 0.122707
	.quad	0x3fd6dfa871a3b14b              # double 0.35740100000000002
	.quad	0x3fcc834d26fa3fcd              # double 0.22275700000000001
	.quad	0x3feee672fba01eef              # double 0.96563100000000001
	.quad	0x3fe9cefed634549b              # double 0.80651799999999996
	.quad	0x3f8ecf63800218df              # double 0.015044
	.quad	0x3fd5d701d9f4d37c              # double 0.341248
	.quad	0x3fe210e8858ff759              # double 0.56456399999999995
	.quad	0x3fe822df9378ee28              # double 0.75425699999999996
	.quad	0x3fb3f61aa3f034b1              # double 0.077974000000000002
	.quad	0x3fcc1a93293d102c              # double 0.21956100000000001
	.quad	0x3fe05885d31337eb              # double 0.51080599999999998
	.quad	0x3febad6a9c560c7c              # double 0.86491899999999999
	.quad	0x3fe8219eb6390c91              # double 0.754104
	.quad	0x3fdb8a372606fac6              # double 0.430311
	.quad	0x3fe514d2f5dbb9d0              # double 0.65879200000000004
	.quad	0x3fc9206c8711d799              # double 0.196302
	.quad	0x3fd4c51116a8b8f1              # double 0.32452799999999998
	.quad	0x3fe2ed0f6273929f              # double 0.59143800000000002
	.quad	0x3fef2ea747d805e6              # double 0.97444500000000001
	.quad	0x3fd12c83ec892ab7              # double 0.26834200000000002
	.quad	0x3fec0155d5f56a7b              # double 0.87516300000000002
	.quad	0x3fe64a2120e1f7d7              # double 0.69654899999999997
	.quad	0x3fe634fa48301a7a              # double 0.693967
	.quad	0x3fecadd7a99fa11b              # double 0.89622100000000005
	.quad	0x3fbf8f68be2f7b18              # double 0.123282
	.quad	0x3fc55c0767d34df0              # double 0.16687099999999999
	.quad	0x3fe006af46aa087d              # double 0.50081600000000004
	.quad	0x3fd77b139c94f69d              # double 0.36688700000000002
	.quad	0x3f698288051c9f73              # double 0.003114
	.quad	0x3fe58a009f623077              # double 0.67309600000000003
	.quad	0x3fe2c49fd7a13c25              # double 0.58650199999999997
	.quad	0x3fd444c7b02d59d5              # double 0.31669799999999998
	.quad	0x3fefcef240fa9c13              # double 0.994012
	.quad	0x3fcb986b9c304ccf              # double 0.215589
	.quad	0x3fce10f94c87980f              # double 0.23489299999999999
	.quad	0x3fbbf737da61e0c6              # double 0.109241
	.quad	0x3fe0ea0ba1f4b1ee              # double 0.52856999999999998
	.quad	0x3feae79ee02a77a3              # double 0.84077400000000002
	.quad	0x3fdefb3743632c1f              # double 0.48408299999999999
	.quad	0x3fc8ac322291fb40              # double 0.19275500000000001
	.quad	0x3fe031f8a0902de0              # double 0.50609999999999999
	.quad	0x3fde6bdf4c2b51bd              # double 0.47533399999999998
	.quad	0x3fe593660e51d25b              # double 0.67424300000000004
	.quad	0x3fc7a5ca29845dc8              # double 0.18474699999999999
	.quad	0x3fe6ec97d8cf398f              # double 0.71638100000000005
	.quad	0x3fa73c4f3ba775fb              # double 0.045381999999999999
	.quad	0x3fee5cbddb9841ab              # double 0.94882100000000003
	.quad	0x3fdf476af89c5e70              # double 0.488734
	.quad	0x3fc9550ca1cef241              # double 0.197908
	.quad	0x3f85fdcdf6987831              # double 0.010737999999999999
	.quad	0x3fecee696a26e547              # double 0.90410299999999999
	.quad	0x3fe88d23d4f15e7d              # double 0.76722900000000005
	.quad	0x3fed3b40b34e7686              # double 0.91348300000000004
	.quad	0x3fefa1cef240fa9c              # double 0.98850199999999999
	.quad	0x3fd420d5629d840a              # double 0.31450400000000001
	.quad	0x3fde38e6d15ad107              # double 0.472223
	.quad	0x3f9ff21b3aeee957              # double 0.031196999999999999
	.quad	0x3fe4b7c3504c48ae              # double 0.64743200000000001
	.quad	0x3fedde2cdc011d36              # double 0.93337099999999995
	.quad	0x3fe789dadfb506dd              # double 0.73557799999999995
	.quad	0x3fdfaf4adbc664d4              # double 0.49507400000000001
	.quad	0x3fe98db2702a3487              # double 0.79854700000000001
	.quad	0x3fe3d7d1782d3847              # double 0.62009499999999995
	.quad	0x3fd7fc7607c419a0              # double 0.37478400000000001
	.quad	0x3fea48e8a71de69b              # double 0.82140000000000002
	.quad	0x3fef62c77574f723              # double 0.98080800000000001
	.quad	0x3fd3cd423d9231c6              # double 0.30940299999999998
	.quad	0x3fd26512a94ff002              # double 0.28741899999999998
	.quad	0x3fcd160956c0d6f5              # double 0.22723499999999999
	.quad	0x3fe649c4da9003ef              # double 0.69650500000000004
	.quad	0x3fec7b6bb1290258              # double 0.89006600000000002
	.quad	0x3fe54f0b6b6e0d24              # double 0.66589900000000002
	.quad	0x3fdfd04e618ce2d2              # double 0.497089
	.quad	0x3fdb03968d759ee9              # double 0.42209400000000002
	.quad	0x3fe803126e978d50              # double 0.75037500000000001
	.quad	0x3fe92085b18548aa              # double 0.78522000000000003
	.quad	0x3feb2f837b4a233a              # double 0.84955000000000003
	.quad	0x3fe0b0e7ff583a54              # double 0.52159500000000003
	.quad	0x3fe5b3fc86cebbba              # double 0.67822099999999996
	.quad	0x3fed9b866e43aa7a              # double 0.92523500000000003
	.quad	0x3fe3c7ffde7210bf              # double 0.61816400000000005
	.quad	0x3fe755757d5a9eb2              # double 0.729182
	.quad	0x3fe920d9945b6c37              # double 0.78525999999999996
	.quad	0x3febc5154866a11f              # double 0.86780800000000002
	.quad	0x3fd0ae46cfc829d0              # double 0.26063700000000001
	.quad	0x3fe99b5e95b78cca              # double 0.80021600000000004
	.quad	0x3fea9f0a1be2b496              # double 0.83191400000000004
	.quad	0x3fac9fb6134ce3de              # double 0.055905999999999997
	.quad	0x3fcdcd91eeaa6d26              # double 0.23283599999999999
	.quad	0x3fd86fa82e87d2c8              # double 0.38181500000000002
	.quad	0x3fe710257c914b16              # double 0.72072099999999995
	.quad	0x3fd1e004b7f5a533              # double 0.27929799999999999
	.quad	0x3fe45d7cb2d905c0              # double 0.63641199999999998
	.quad	0x3fe794983d790753              # double 0.73688900000000002
	.quad	0x3fe432a497fa5d29              # double 0.63118200000000002
	.quad	0x3fc77518b0d0edc4              # double 0.18326100000000001
	.quad	0x3fca0d5e8d5410f9              # double 0.20353299999999999
	.quad	0x3fda68f08461f9f0              # double 0.41265499999999999
	.quad	0x3fdbe9d0e991ff71              # double 0.43614599999999998
	.quad	0x3fcdaad601ffb481              # double 0.23177600000000001
	.quad	0x3fe6b2b3461309c8              # double 0.709314
	.quad	0x3fe3c8c9320d9946              # double 0.61826000000000003
	.quad	0x3fe820c8cd63cb81              # double 0.75400199999999995
	.quad	0x3fa22a2c2374794f              # double 0.035478000000000003
	.quad	0x3fec72734f82f512              # double 0.88897099999999996
	.quad	0x3fe0f59253543aeb              # double 0.52997700000000003
	.quad	0x3fe0d3b29a1b9f99              # double 0.52584200000000003
	.quad	0x3fe2f1e6cd29131f              # double 0.59202900000000003
	.quad	0x3fc1ed7c6fbd273d              # double 0.14005999999999999
	.quad	0x3fe33cc6c54bcf0b              # double 0.60116899999999995
	.quad	0x3fce4a38327674d1              # double 0.23663999999999999
	.quad	0x3fc6b2a6b0d95140              # double 0.17732700000000001
	.quad	0x3fddcd573647baaa              # double 0.46565800000000002
	.quad	0x3fefdc37a3db3bfb              # double 0.99563199999999996
	.quad	0x3fe265e02ea960b7              # double 0.574936
	.quad	0x3fe30bc7b45f17be              # double 0.59518800000000005
	.quad	0x3fc9496aad1d041d              # double 0.19755300000000001
	.quad	0x3febdc9c4da9003f              # double 0.87068000000000001
	.quad	0x3fd963baba7b9171              # double 0.39671200000000001
	.quad	0x3fef6a93f290abb4              # double 0.98175999999999996
	.quad	0x3fdd1eb851eb851f              # double 0.45500000000000002
	.quad	0x3f8785f8d2e514c2              # double 0.011486
	.quad	0x3f86872b020c49ba              # double 0.010999999999999999
	.quad	0x3feef5f2cb641701              # double 0.96752300000000002
	.quad	0x3fa9bcfd4bf0995b              # double 0.050270000000000002
	.quad	0x3fef602ea960b6fa              # double 0.980491
	.quad	0x3fe8d7c4e2f37fbf              # double 0.776339
	.quad	0x3febbb8e4b87bdcf              # double 0.866645
	.quad	0x3fe07829068986fd              # double 0.51466800000000001
	.quad	0x3fe32849cb252ce0              # double 0.59866799999999998
	.quad	0x3fca2f05a708ede5              # double 0.20455999999999999
	.quad	0x3fe4440af1cb89d7              # double 0.63330600000000004
	.quad	0x3fe9288ace24bba1              # double 0.78619899999999998
	.quad	0x3fa1df761cbccf29              # double 0.034908000000000002
	.quad	0x3fea9e8c47a17f41              # double 0.83185399999999998
	.quad	0x3fe553543aeab799              # double 0.66642199999999996
	.quad	0x3fca23e9ea140571              # double 0.20422100000000001
	.quad	0x3fd6a58f7121ab4b              # double 0.35385499999999998
	.quad	0x3fe8e53c9abb01c9              # double 0.77798299999999998
	.quad	0x3fec32df505d0fa6              # double 0.88121000000000005
	.quad	0x3fd13f2d3c792d13              # double 0.26948100000000003
	.quad	0x3fea5de58e64b231              # double 0.82396199999999997
	.quad	0x3fdeb4070329802c              # double 0.479738
	.quad	0x3fee04167a95c854              # double 0.93799900000000002
	.quad	0x3fe549adc8fb86f4              # double 0.66524399999999995
	.quad	0x3fd14b6e935b91f7              # double 0.270229
	.quad	0x3fc3db877ab32485              # double 0.155137
	.quad	0x3fc8088509bf9c63              # double 0.18776000000000001
	.quad	0x3fe7eb5f5f0b2852              # double 0.74748199999999998
	.quad	0x3fbb05ea24cc6823              # double 0.105559
	.quad	0x3fbebfca85caafbc              # double 0.120114
	.quad	0x3fec513f8db48909              # double 0.88491799999999998
	.quad	0x3fe6b7c99ae924f2              # double 0.70993499999999998
	.quad	0x3fb755043e5321e6              # double 0.091140999999999999
	.quad	0x3fee19e94ab1d4fa              # double 0.94066300000000003
	.quad	0x3fed8e0008637bd0              # double 0.92358399999999996
	.quad	0x3fe33124d099e0e7              # double 0.59974899999999998
	.quad	0x3fe82aa3ad18d25f              # double 0.75520500000000002
	.quad	0x3fd16fb09203a323              # double 0.27244200000000002
	.quad	0x3fe5abd1aa821f2a              # double 0.67722400000000005
	.quad	0x3fe4d5c74751ce29              # double 0.65109600000000001
	.quad	0x3fe7f90752da9867              # double 0.74914899999999995
	.quad	0x3fb967dbb16c1e36              # double 0.099240999999999995
	.quad	0x3fe02018a43bb40b              # double 0.50391799999999998
	.quad	0x3fda40d4dc65c704              # double 0.41020699999999999
	.quad	0x3fb1f0f5a1016ce8              # double 0.070083000000000006
	.quad	0x3fe67605ab3aabcd              # double 0.70190699999999995
	.quad	0x3fed97d8cf398e97              # double 0.924786
	.quad	0x3fe661e92923e5b8              # double 0.69945199999999996
	.quad	0x3fb5dde37585be1b              # double 0.085417000000000007
	.quad	0x3fefd1958969a0ae              # double 0.99433400000000005
	.quad	0x3fd906e19b90ea9e              # double 0.39104499999999998
	.quad	0x3fed959c49774257              # double 0.92451300000000003
	.quad	0x3fe38d413122b7bb              # double 0.61099300000000001
	.quad	0x3fd026aec0724b77              # double 0.252361
	.quad	0x3feb7521144cbe1f              # double 0.85804800000000003
	.quad	0x3fe94f3fd933e35c              # double 0.79092399999999996
	.quad	0x3fe4c8c7192ea52f              # double 0.649509
	.quad	0x3fd9bd3c36113405              # double 0.402175
	.quad	0x3fe5d6323bbc6eb1              # double 0.68239700000000003
	.quad	0x3fc86c1a048e043a              # double 0.190799
	.quad	0x3fe85c4651f3e89b              # double 0.76126400000000005
	.quad	0x3feff83be6601bca              # double 0.99905200000000005
	.quad	0x3fee0af3e468cac5              # double 0.93883700000000003
	.quad	0x3fc1f609dcf893fb              # double 0.140321
	.quad	0x3fe3f0153bd16766              # double 0.62305699999999997
	.quad	0x3fe73f78bbd38045              # double 0.72649799999999998
	.quad	0x3fe4a7f1b6912125              # double 0.64550099999999999
	.quad	0x3fd209528f190d17              # double 0.28181899999999999
	.quad	0x3fe3a77c45cbbc2c              # double 0.61419500000000005
	.quad	0x3fe1d95bbbe878fb              # double 0.55778300000000003
	.quad	0x3fc9b899392189be              # double 0.20094600000000001
	.quad	0x3fe3c016052502ef              # double 0.61719800000000002
	.quad	0x3fef97c80841ede1              # double 0.98727799999999998
	.quad	0x3fefa3f24d8fd5cb              # double 0.98876299999999994
	.quad	0x3fe7be09bb6aa4ba              # double 0.74194800000000005
	.quad	0x3fe2af01754b05b8              # double 0.58386300000000002
	.quad	0x3fdc009b30728e93              # double 0.43753700000000001
	.quad	0x3fe5bcff64cf8d71              # double 0.67932099999999995
	.quad	0x3fe833dd11be6e65              # double 0.75633099999999998
	.quad	0x3faf19f7f8ca8199              # double 0.060745
	.quad	0x3fe260eb67c286f9              # double 0.57433100000000004
	.quad	0x3fe396e158750c1c              # double 0.61216800000000005
	.quad	0x3fe867ad8e432442              # double 0.762656
	.quad	0x3fe59a6d698fe692              # double 0.67510099999999995
	.quad	0x3fe60064a9cdc444              # double 0.68754800000000005
	.quad	0x3feb19c17225b74a              # double 0.84689400000000004
	.quad	0x3fd1b52c9d16fc9c              # double 0.27668300000000001
	.quad	0x3fedc73abc947065              # double 0.93057000000000001
	.quad	0x3fb136d655e28aa4              # double 0.067242999999999997
	.quad	0x3fe75fd47bedb728              # double 0.73044799999999999
	.quad	0x3fc626aa8eb46349              # double 0.17305499999999999
	.quad	0x3fc9fdcdf6987831              # double 0.20305799999999999
	.quad	0x3febf47f993d5348              # double 0.87359600000000004
	.quad	0x3fe9ea6e32e3821b              # double 0.809867
	.quad	0x3fe2761ed5ae1cde              # double 0.57691899999999996
	.quad	0x3fe88d6d3b6cbd98              # double 0.76726399999999995
	.quad	0x3fe1af9a8cdea034              # double 0.55268600000000001
	.quad	0x3fd4aa044ae85b9f              # double 0.32287700000000003
	.quad	0x3fe359f0a1be2b49              # double 0.60472899999999996
	.quad	0x3fe6e4ba94bbe447              # double 0.71542099999999997
	.quad	0x3fd558750c1b9735              # double 0.33352399999999999
	.quad	0x3f9f0025bfad2999              # double 0.030273999999999999
	.quad	0x3fd349f94855da27              # double 0.30138999999999999
	.quad	0x3fea74666ec9e237              # double 0.82670900000000003
	.quad	0x3faadbc664d3bf2f              # double 0.052457999999999998
	.quad	0x3fd4b5b2d4d4024b              # double 0.32358999999999999
	.quad	0x3fbed0d49949e881              # double 0.12037399999999999
	.quad	0x3fd450a88effe2a4              # double 0.31742300000000001
	.quad	0x3fe56cfa69be09bb              # double 0.66955299999999995
	.quad	0x3fec2ddbdb5d8948              # double 0.88059799999999999
	.quad	0x3fe5669ad42c3c9f              # double 0.66877500000000001
	.quad	0x3fc8adf71eafee70              # double 0.19280900000000001
	.quad	0x3feef9702e6644d8              # double 0.96794899999999994
	.quad	0x3fd188c60cbf2b24              # double 0.27397300000000002
	.quad	0x3fbf8a19c9d5a188              # double 0.123201
	.quad	0x3feef1971c10d7bf              # double 0.96699100000000004
	.quad	0x3fe11e2bcf91a32b              # double 0.53493299999999999
	.quad	0x3fd78f47304039ac              # double 0.36812
	.quad	0x3fe3b738e6d15ad1              # double 0.616116
	.quad	0x3fef0c6d612c6ac2              # double 0.97026699999999999
	.quad	0x3fea64606748e475              # double 0.82475299999999996
	.quad	0x3fe6360285ec3dab              # double 0.69409299999999996
	.quad	0x3fab02f72b452828              # double 0.052756999999999998
	.quad	0x3f75c63ae2541d8f              # double 0.0053160000000000004
	.quad	0x3fe94ea077036c9c              # double 0.79084799999999999
	.quad	0x3fcff3f961804d98              # double 0.24963299999999999
	.quad	0x3fe32c9081c2e33f              # double 0.59919
	.quad	0x3fc64ef88b977857              # double 0.174285
	.quad	0x3fc3be878fabda0e              # double 0.154252
	.quad	0x3fc0064a9cdc4439              # double 0.125192
	.quad	0x3fc1cfd4bf0995ab              # double 0.139155
	.quad	0x3fa5ed288ce703b0              # double 0.042825000000000002
	.quad	0x3fe5c61b6d43d039              # double 0.68043299999999995
	.quad	0x3fbddebd9018e758              # double 0.11668000000000001
	.quad	0x3fd5ba4d6e47dc38              # double 0.33949600000000002
	.quad	0x3fc2b20fb224aada              # double 0.14605899999999999
	.quad	0x3fec98bd66277c46              # double 0.89364500000000002
	.quad	0x3fd9d6e47dc37a3e              # double 0.40374100000000002
	.quad	0x3fe6352c9d16fc9c              # double 0.69399100000000002
	.quad	0x3feadd5f56a7ac82              # double 0.83952300000000002
	.quad	0x3fed133e35c5b4ab              # double 0.90859900000000005
	.quad	0x3fe1433508f648c7              # double 0.53945399999999999
	.quad	0x3fe2400fba8826ab              # double 0.57032000000000005
	.quad	0x3febfbca1059ea57              # double 0.87448599999999999
	.quad	0x3fcfdb3397dd00f7              # double 0.24887699999999999
	.quad	0x3fce23d9231c64bb              # double 0.23546900000000001
	.quad	0x3fe407f023e9ea14              # double 0.625969
	.quad	0x3fea5f0b28522ea1              # double 0.824102
	.quad	0x3fe2919695d91ab9              # double 0.58027200000000001
	.quad	0x3fe8fed634549b63              # double 0.78110800000000002
	.quad	0x3fc4471b47842310              # double 0.15842000000000001
	.quad	0x3fc8f9e3864cb5bb              # double 0.19512599999999999
	.quad	0x3fbfd2849cb252ce              # double 0.124306
	.quad	0x3fe08ec743201041              # double 0.51742900000000003
	.quad	0x3fee441355475a32              # double 0.94581000000000004
	.quad	0x3fe315c209246bf0              # double 0.59640599999999999
	.quad	0x3fd541b328b6d86f              # double 0.33213500000000001
	.quad	0x3fc1fbd6a593a2e0              # double 0.14049800000000001
	.quad	0x3fef9df1172ef0ae              # double 0.98802999999999996
	.quad	0x3fe51fc2a8869c67              # double 0.66012700000000002
	.quad	0x3fd9450268900c52              # double 0.39483699999999999
	.quad	0x3fe8ff51efb6dca0              # double 0.78116699999999994
	.quad	0x3fa3cc6c54bcf0b7              # double 0.038669000000000002
	.quad	0x3fc0a433508f648c              # double 0.13001099999999999
	.quad	0x3fcc049ecb31c21a              # double 0.218891
	.quad	0x3fdd3964a59c065b              # double 0.45662799999999998
	.quad	0x3fceb9a176ddacef              # double 0.24004
	.quad	0x3fe7b2e1693c03bc              # double 0.74058599999999997
	.quad	0x3fe827e0ef99806f              # double 0.75486799999999998
	.quad	0x3fe9cac4b4d056c5              # double 0.806002
	.quad	0x3fe83d9231c64ba9              # double 0.75751599999999997
	.quad	0x3fccb8e8ea39c51e              # double 0.22439300000000001
	.quad	0x3feee2413db7f173              # double 0.96511899999999994
	.quad	0x3fba1be2b4959e62              # double 0.101988
	.quad	0x3fe8ca148ba83f4f              # double 0.77466800000000002
	.quad	0x3fd79abb01c92ddc              # double 0.36881900000000001
	.quad	0x3fdfa7589efd86a9              # double 0.494589
	.quad	0x3fdc2dcb1465e892              # double 0.44029499999999999
	.quad	0x3fd17e77d523b363              # double 0.27334399999999998
	.quad	0x3fe4d9253543aeab              # double 0.65150699999999995
	.quad	0x3fea17f62b6ae7d5              # double 0.81542499999999996
	.quad	0x3fc52c0e7bc3c5bd              # double 0.165407
	.quad	0x3fd85f0f5a1016ce              # double 0.38080199999999997
	.quad	0x3fe8e102795703f3              # double 0.77746700000000002
	.quad	0x3fc9420b3d4ae42a              # double 0.197328
	.quad	0x3fe401e8a2ec28b3              # double 0.62523300000000004
	.quad	0x3fc6f112fd32c626              # double 0.179232
	.quad	0x3fd018a009f62307              # double 0.25150299999999998
	.quad	0x3fe816c3fc43b2dd              # double 0.75277899999999998
	.quad	0x3fea7f90d9d7774b              # double 0.82807200000000003
	.quad	0x3fec15b573eab368              # double 0.87765000000000004
	.quad	0x3fe3e9ca9ef5232d              # double 0.62228899999999998
	.quad	0x3fec94face67d780              # double 0.89318600000000004
	.quad	0x3fe4c886162f166e              # double 0.649478
	.quad	0x3fe5446f9b994e1a              # double 0.66460399999999997
	.quad	0x3fe05454152b0a70              # double 0.51029400000000003
	.quad	0x3fedf3d188f42fe8              # double 0.93601299999999998
	.quad	0x3fd0b5aa715831f0              # double 0.26108799999999999
	.quad	0x3fe3e74299d883ba              # double 0.62197999999999998
	.quad	0x3fe01e4f765fd8ae              # double 0.50370000000000004
	.quad	0x3fc354c985f06f69              # double 0.15102499999999999
	.quad	0x3fdca9c12f09d8c7              # double 0.44786100000000001
	.quad	0x3fcd2391d57ff9b5              # double 0.22764799999999999
	.quad	0x3fa523f67f4dbdf9              # double 0.04129
	.quad	0x3fd3c89b0ee49f51              # double 0.30911899999999998
	.quad	0x3fde57a355043e53              # double 0.47409899999999999
	.quad	0x3fbe6e75ff609dd0              # double 0.11887300000000001
	.quad	0x3fefd5e8d5410f95              # double 0.99486200000000002
	.quad	0x3fe0317acc4ef88c              # double 0.50604000000000005
	.quad	0x3fe9cbd33d29563b              # double 0.80613100000000004
	.quad	0x3feeedd052934acb              # double 0.96653
	.quad	0x3fe708a265f0f5a1              # double 0.719804
	.quad	0x3fda33a0407cc7d2              # double 0.40940100000000001
	.quad	0x3fe9e92b3cc4ac6d              # double 0.80971300000000002
	.quad	0x3fe8788db0574b40              # double 0.76471599999999995
	.quad	0x3fe5c7c30d306a2b              # double 0.68063499999999999
	.quad	0x3fda49e8815e3971              # double 0.41076099999999999
	.quad	0x3fd1096feb4a6656              # double 0.26620100000000002
	.quad	0x3feb75360d024702              # double 0.85805799999999999
	.quad	0x3fe9ec95bff04578              # double 0.81013000000000002
	.quad	0x3fd9fc371da37ef6              # double 0.40601900000000002
	.quad	0x3fb1dadfb506dd6a              # double 0.069746000000000002
	.quad	0x3fee076e1deacc92              # double 0.93840699999999999
	.quad	0x3fec859a73b42cc3              # double 0.89130900000000002
	.quad	0x3fee19029ae4f334              # double 0.94055299999999997
	.quad	0x3fbb1737542a23c0              # double 0.105823
	.quad	0x3fe2cd1a65061416              # double 0.58753699999999998
	.quad	0x3fdf11233df2a9d6              # double 0.48542099999999999
	.quad	0x3fe677f06705c897              # double 0.70214100000000002
	.quad	0x3fd429cbab649d39              # double 0.31505100000000003
	.quad	0x3f86e0d23d4f15e8              # double 0.011171
	.quad	0x3fee681ecd4aa10e              # double 0.95021
	.quad	0x3fddacffa7eb6bf4              # double 0.46368399999999999
	.quad	0x3feafc2656abde40              # double 0.84328000000000003
	.quad	0x3feb6e0b0af5fd48              # double 0.85718300000000003
	.quad	0x3fd7ea704bc27632              # double 0.37368400000000002
	.quad	0x3fdfa8826aa8eb46              # double 0.49465999999999999
	.quad	0x3fe188a8b08dd1e5              # double 0.54793199999999997
	.quad	0x3fea8e736049ecb3              # double 0.82988899999999999
	.quad	0x3fe7e1d8622c4502              # double 0.74631899999999995
	.quad	0x3fe273dc054ef45a              # double 0.57664300000000002
	.quad	0x3fe5e6a98244e93e              # double 0.68440699999999999
	.quad	0x3fde07e5a78f25a2              # double 0.46923199999999998
	.quad	0x3fb19b90ea9e6eeb              # double 0.068779999999999994
	.quad	0x3fdb72e275ab7dc8              # double 0.42888700000000002
	.quad	0x3fc097f1f9acffa8              # double 0.129637
	.quad	0x3fe46b4c7f349386              # double 0.63809800000000005
	.quad	0x3fd56d373affb04f              # double 0.33479100000000001
	.quad	0x3fe2d031055b8994              # double 0.58791400000000005
	.quad	0x3fd47dc37a3db3c0              # double 0.32017600000000002
	.quad	0x3fe2ebebe1650a46              # double 0.59129900000000002
	.quad	0x3fe4186338b47c74              # double 0.62797700000000001
	.quad	0x3fe5f811f4f50a03              # double 0.68653200000000003
	.quad	0x3fb2f60e0eb67c28              # double 0.074066999999999994
	.quad	0x3fe309917939a7c1              # double 0.59491799999999995
	.quad	0x3fe7e1975f2cb641              # double 0.74628799999999995
	.quad	0x3f9e39713ad5bee4              # double 0.029516000000000001
	.quad	0x3fe899dcb5781c71              # double 0.76878199999999997
	.quad	0x3fcf456b441bb8c3              # double 0.244306
	.quad	0x3fd059210385c67e              # double 0.25544
	.quad	0x3fe54cd0fe8ab4fa              # double 0.66562699999999997
	.quad	0x3fee9c193b3a68b2              # double 0.95655500000000004
	.quad	0x3fb9707182235b4f              # double 0.099372000000000002
	.quad	0x3fe81676640a6b94              # double 0.75274200000000002
	.quad	0x3fd5f4128bf3bea9              # double 0.34302199999999999
	.quad	0x3fce425aee631f8a              # double 0.2364
	.quad	0x3fc382773e24febd              # double 0.152419
	.quad	0x3feed000c9539b89              # double 0.96289100000000005
	.quad	0x3fe2f1b25f633ce6              # double 0.59200399999999997
	.quad	0x3fd8e66cb10342ab              # double 0.38906400000000002
	.quad	0x3fe39e8a2ec28b2a              # double 0.61310299999999995
	.quad	0x3fe1297396d0917d              # double 0.53630999999999995
	.quad	0x3fd3a76965f5275f              # double 0.307093
	.quad	0x3f988b97785729b3              # double 0.023970000000000002
	.quad	0x3fe9cd6e47dc37a4              # double 0.80632700000000001
	.quad	0x3fe697e996312f4d              # double 0.706044
	.quad	0x3fe79dc50ce4ead1              # double 0.73800900000000003
	.quad	0x3fbdf9df548ecd8e              # double 0.117094
	.quad	0x3fecec8f75536934              # double 0.90387700000000004
	.quad	0x3fec8cdea033e78e              # double 0.89219599999999999
	.quad	0x3fb44be40420f6f1              # double 0.079283000000000006
	.quad	0x3fc8ba83f4eca687              # double 0.193192
	.quad	0x3fe2395e5aff2a17              # double 0.56950299999999998
	.quad	0x3fed5ef1fddebd90              # double 0.91783999999999999
	.quad	0x3fc2532a497fa5d3              # double 0.14316300000000001
	.quad	0x3fd0cbff47735c18              # double 0.26245099999999999
	.quad	0x3fcd05e1c15097c8              # double 0.226742
	.quad	0x3fd126c7eae5bc88              # double 0.26799200000000001
	.quad	0x3fe07b480a5accd5              # double 0.51504899999999998
	.quad	0x3fc15379fa97e133              # double 0.13536000000000001
	.quad	0x3fe92eee957470eb              # double 0.78697899999999998
	.quad	0x3fc96ac647778dd6              # double 0.198571
	.quad	0x3fcc8fe260b2c83f              # double 0.22314100000000001
	.quad	0x3fed33d29563a9f4              # double 0.91257600000000005
	.quad	0x3fe6c3bb40b34e77              # double 0.71139300000000005
	.quad	0x3fdd30ec31162281              # double 0.45611099999999999
	.quad	0x3fd09a8cdea033e8              # double 0.25943300000000002
	.quad	0x3fdfb7414a4d2b2c              # double 0.49556
	.quad	0x3fe0364388ebcc6c              # double 0.50662399999999996
	.quad	0x3fc86e32e3821af8              # double 0.190863
	.quad	0x3febf73e24febd0a              # double 0.87393100000000001
	.quad	0x3fd5b9ecf6380022              # double 0.33947300000000002
	.quad	0x3fd4ce703afb7e91              # double 0.3251
	.quad	0x3fed26eb91b3f20a              # double 0.91100099999999995
	.quad	0x3fea7c71d6063172              # double 0.82769099999999995
	.quad	0x3fa1a79fec99f1ae              # double 0.034481999999999999
	.quad	0x3fd2c2ce4649906d              # double 0.29314000000000001
	.quad	0x3fafe0ef99806f26              # double 0.062262999999999999
	.quad	0x3febb584b1ab0857              # double 0.86590800000000001
	.quad	0x3fe9ec00da1a9329              # double 0.81005899999999997
	.quad	0x3fc3ab0856e696a2              # double 0.15365699999999999
	.quad	0x3fc7e4cd74927914              # double 0.18667
	.quad	0x3fd0bbcf4e874c90              # double 0.261463
	.quad	0x3fca0f7fcfc3f812              # double 0.203598
	.quad	0x3fe42fa0d77b7c78              # double 0.63081399999999999
	.quad	0x3fc299bf5946c333              # double 0.145317
	.quad	0x3fe68fadf2ecf206              # double 0.70503899999999997
	.quad	0x3fe152391d57ff9b              # double 0.54128699999999996
	.quad	0x3fe94e5d5b24e9c4              # double 0.79081599999999996
	.quad	0x3fd5b9c304ccee5b              # double 0.33946300000000001
	.quad	0x3fe2771865519371              # double 0.57703800000000005
	.quad	0x3fe25c3dee781840              # double 0.57376000000000005
	.quad	0x3fe5d8d79d0a6762              # double 0.68271999999999999
	.quad	0x3fe04892ab68cef6              # double 0.50885899999999995
	.quad	0x3fd8008637bd05af              # double 0.37503199999999998
	.quad	0x3fb1159c49774257              # double 0.066736000000000004
	.quad	0x3fe36c56d5cfaace              # double 0.60697500000000004
	.quad	0x3fee157689ca18bd              # double 0.94011999999999996
	.quad	0x3fa687f455a7d242              # double 0.044006000000000003
	.quad	0x3fd85714b9cb6849              # double 0.38031500000000001
	.quad	0x3fc895208e150119              # double 0.192051
	.quad	0x3fdfbfe3b03e20cd              # double 0.496087
	.quad	0x3fdb774256bca537              # double 0.42915399999999998
	.quad	0x3fe868f8e7ddca4b              # double 0.76281399999999999
	.quad	0x3fb53122b7baecd0              # double 0.082780999999999993
	.quad	0x3fde16d6dc1a47aa              # double 0.47014400000000001
	.quad	0x3fef7ebd09e12a52              # double 0.98422100000000001
	.quad	0x3fe5a231832fcac9              # double 0.67604900000000001
	.quad	0x3fe48661ae70c133              # double 0.64140399999999997
	.quad	0x3fe8307af20ea5b5              # double 0.75591799999999998
	.quad	0x3fe93f7ced916873              # double 0.78900000000000003
	.quad	0x3fec8f12c27a6373              # double 0.89246499999999995
	.quad	0x3faf136a400fba88              # double 0.060694999999999999
	.quad	0x3fdd151e75360d02              # double 0.45441399999999998
	.quad	0x3fd346e8f29d40ee              # double 0.301203
	.quad	0x3fd28da7f3cf7015              # double 0.28989599999999999
	.quad	0x3fef04cad57bc7f7              # double 0.96933499999999994
	.quad	0x3fd5cdc8754f3776              # double 0.34068500000000002
	.quad	0x3fc6bdec5f394b7b              # double 0.177671
	.quad	0x3fe30ea39c51dabe              # double 0.59553699999999998
	.quad	0x3fdc50331e3a7daa              # double 0.44239499999999998
	.quad	0x3fcd71c10d7be985              # double 0.23003399999999999
	.quad	0x3fe81635610adcd3              # double 0.75271100000000002
	.quad	0x3fec18bd66277c46              # double 0.87802000000000002
	.quad	0x3fedc58eeae9ee46              # double 0.93036600000000003
	.quad	0x3fea20791c4b9021              # double 0.81646399999999997
	.quad	0x3fd9ac9f2fdb8fde              # double 0.40116099999999999
	.quad	0x3fd70620ab713272              # double 0.35974899999999999
	.quad	0x3fb9f0c34c1a8ac6              # double 0.10133
	.quad	0x3fd50e5a35d67ba2              # double 0.32900099999999999
	.quad	0x3fecd0917d6b65aa              # double 0.90046000000000004
	.quad	0x3fe0e9bbf0dc768e              # double 0.528532
	.quad	0x3fecf01322f27350              # double 0.90430600000000005
	.quad	0x3fadbf8b9baa1512              # double 0.058102000000000001
	.quad	0x3fe0af2b66b6177f              # double 0.52138300000000004
	.quad	0x3fd83c60029f16b1              # double 0.37868499999999999
	.quad	0x3feddf809917939a              # double 0.93353299999999995
	.quad	0x3fc6a0902de00d1b              # double 0.17677499999999999
	.quad	0x3fddf5515054ac2a              # double 0.46809800000000001
	.quad	0x3fe9a01040bfe3b0              # double 0.80078899999999997
	.quad	0x3fe9a176ddaceee1              # double 0.80096000000000001
	.quad	0x3fef0ec52a411c2a              # double 0.970553
	.quad	0x3fe21f080303c07f              # double 0.56628800000000001
	.quad	0x3fd2f202107b7846              # double 0.29602099999999998
	.quad	0x3fa6b37867f0aa22              # double 0.044338000000000002
	.quad	0x3fd9cb81733226c4              # double 0.40304600000000002
	.quad	0x3fec4e24bba12b5e              # double 0.88453899999999996
	.quad	0x3fd390d5a5b9628d              # double 0.30571500000000001
	.quad	0x3fe99a8ef77f27fe              # double 0.80011699999999997
	.quad	0x3fdc40ee06d93815              # double 0.44146299999999999
	.quad	0x3fcfda8bd230b9dc              # double 0.24885699999999999
	.quad	0x3f9e4712e40852b5              # double 0.029568000000000001
	.quad	0x3fde494d50ebaade              # double 0.47322399999999998
	.quad	0x3fe7a90470a808c8              # double 0.73938199999999998
	.quad	0x3fe55c6c11a11234              # double 0.66753200000000001
	.quad	0x3fe7d85be1a82624              # double 0.74516099999999996
	.quad	0x3fe6a71151611ba4              # double 0.70789400000000002
	.quad	0x3febc669057d1783              # double 0.86797000000000002
	.quad	0x3f03ec460ed80a18              # double 3.8000000000000002E-5
	.quad	0x3fddf9ce8d972cd8              # double 0.46837200000000001
	.quad	0x3fd46c332f01754b              # double 0.319104
	.quad	0x3fe54e89656eefa2              # double 0.66583700000000001
	.quad	0x3fd35b9e8c47a17f              # double 0.30246699999999999
	.quad	0x3fdbf993d5347a5b              # double 0.437108
	.quad	0x3feea0b3d4ae429e              # double 0.957117
	.quad	0x3fe70e71476af89c              # double 0.72051299999999996
	.quad	0x3f93504c48adeebb              # double 0.018860999999999999
	.quad	0x3fe8df8f4730403a              # double 0.77729000000000004
	.quad	0x3fe88b8f14db5958              # double 0.76703600000000005
	.quad	0x3fdb037d63022dd8              # double 0.42208800000000002
	.quad	0x3fd5caeea63b688c              # double 0.34051100000000001
	.quad	0x3fe7e1049235f80a              # double 0.74621800000000005
	.quad	0x3fa3864cb5bb3850              # double 0.038134000000000001
	.quad	0x3feec38d1d8a5482              # double 0.96137099999999998
	.quad	0x3feeaac1094a2b9d              # double 0.95834399999999997
	.quad	0x3fe93320535c9e67              # double 0.78749100000000005
	.quad	0x3fe30fde2ef4e011              # double 0.59568699999999997
	.quad	0x3fe3a3e9ea140571              # double 0.61375900000000005
	.quad	0x3fe26fef7c243dcd              # double 0.57616400000000001
	.quad	0x3fec47a398201cd6              # double 0.883745
	.quad	0x3fef5e95b78cc9a7              # double 0.98029599999999994
	.quad	0x3fe6fef177a7008a              # double 0.71862099999999995
	.quad	0x3febc959e6256367              # double 0.86832900000000002
	.quad	0x3fea967a95c853c1              # double 0.83086899999999997
	.quad	0x3fe765a14488c60d              # double 0.73115600000000003
	.quad	0x3fd74256bca5375d              # double 0.36342400000000002
	.quad	0x3fe57a0d77b7c782              # double 0.671149
	.quad	0x3feb7c19c17225b7              # double 0.85889899999999997
	.quad	0x3fe9248b65237048              # double 0.78571100000000005
	.quad	0x3fe77041461b6d44              # double 0.73245300000000002
	.quad	0x3fcad9c6b0531983              # double 0.20977100000000001
	.quad	0x3fe9abef06b37868              # double 0.80223800000000001
	.quad	0x3fcf7eb28d8665e0              # double 0.24605399999999999
	.quad	0x3feab90a7829068a              # double 0.83508800000000005
	.quad	0x3febf89e774eebf6              # double 0.87409899999999996
	.quad	0x3fe151c9f72f76e6              # double 0.54123399999999999
	.quad	0x3fecdd052934acb0              # double 0.90198
	.quad	0x3fe69b328b6d86ec              # double 0.70644499999999999
	.quad	0x3fdebc3c5bd0e12f              # double 0.48023900000000003
	.quad	0x3fe3c9774256bca5              # double 0.61834299999999998
	.quad	0x3fe1a9f16b11c6d2              # double 0.55199500000000001
	.quad	0x3fe0b52007dd4413              # double 0.52210999999999996
	.quad	0x3fa007570c564f98              # double 0.031306
	.quad	0x3fec9ec0b567557a              # double 0.89437900000000004
	.quad	0x3fb550ebaade657c              # double 0.083266000000000007
	.quad	0x3fb24c942d490e67              # double 0.071481000000000003
	.quad	0x3fb91600f345069a              # double 0.097991999999999995
	.quad	0x3fc7ec13b9f127f6              # double 0.186892
	.quad	0x3fc2f049a9973d9f              # double 0.14795800000000001
	.quad	0x3fe96659d12cadde              # double 0.79374400000000001
	.quad	0x3fd7d2e514c22ee4              # double 0.37224699999999999
	.quad	0x3fd6c4934267839d              # double 0.35574800000000001
	.quad	0x3fd723af31b152f4              # double 0.36155300000000001
	.quad	0x3fe0855da272862f              # double 0.51627999999999996
	.quad	0x3fda4ba94bbe4474              # double 0.41086800000000001
	.quad	0x3fe997dd00f776c5              # double 0.79978800000000005
	.quad	0x3f50385c67dfe32a              # double 9.8999999999999999E-4
	.quad	0x3fe64039abf33871              # double 0.69533999999999996
	.quad	0x3fedacb4289118c2              # double 0.92733200000000005
	.quad	0x3fdcfe154434e337              # double 0.45300800000000002
	.quad	0x3fd5d0fe8ab4fa48              # double 0.34088099999999999
	.quad	0x3fd1d495182a9931              # double 0.27860000000000001
	.quad	0x3feb48b652370479              # double 0.852626
	.quad	0x3fca4fa8b4bf8fcd              # double 0.20555599999999999
	.quad	0x3fecec2699c7bcc3              # double 0.90382700000000005
	.quad	0x3fe57a4c61d8622c              # double 0.67117899999999997
	.quad	0x3fe46933a0407cc8              # double 0.63784200000000002
	.quad	0x3fe190dbf0563ed1              # double 0.548933
	.quad	0x3fa5e529bae46cfd              # double 0.042764000000000003
	.quad	0x3fec05ad538ac190              # double 0.87569300000000005
	.quad	0x3f865ba6efc371da              # double 0.010917
	.quad	0x3fb1fbf83382e44b              # double 0.070250999999999994
	.quad	0x3fe9886594af4f0e              # double 0.79790000000000005
	.quad	0x3fec0d887ebf22c0              # double 0.87665199999999999
	.quad	0x3fd623897204295a              # double 0.34591899999999998
	.quad	0x3fd670e2c12ad81b              # double 0.35064000000000001
	.quad	0x3fe7634b945308bc              # double 0.73087100000000005
	.quad	0x3fe35e15ca6ca03c              # double 0.60523499999999997
	.quad	0x3fd19d0203e63e8e              # double 0.27520800000000001
	.quad	0x3fd374ff865d7cb3              # double 0.30401600000000001
	.quad	0x3fa93836a832b991              # double 0.049257000000000002
	.quad	0x3feb83c07ee0b0af              # double 0.85983299999999996
	.quad	0x3fd34e7ab7564303              # double 0.30166500000000002
	.quad	0x3fde35f80991793a              # double 0.47204400000000002
	.quad	0x3fe75675579af188              # double 0.72930399999999995
	.quad	0x3fe45ba0a5269596              # double 0.636185
	.quad	0x3f66df3f961804da              # double 0.0027920000000000002
	.quad	0x3fa538476f2a5a47              # double 0.041445000000000003
	.quad	0x3fb5a0cf1800a7c6              # double 0.084485000000000004
	.quad	0x3fc7f5c6c11a1123              # double 0.18718799999999999
	.quad	0x3fd9b7952d234eba              # double 0.40183000000000002
	.quad	0x3fcd568e820e6299              # double 0.22920399999999999
	.quad	0x3fe5285caafbc1ad              # double 0.66117700000000001
	.quad	0x3fef99e0e736049f              # double 0.98753400000000002
	.quad	0x3fecec8711d798d9              # double 0.90387300000000004
	.quad	0x3fe23c254a3c6434              # double 0.56984199999999996
	.quad	0x3fa45a8155d5f56a              # double 0.039752999999999997
	.quad	0x3fe48285ec3dab5c              # double 0.64093299999999997
	.quad	0x3fed45d41fa76534              # double 0.91477399999999997
	.quad	0x3fef27b0b3919264              # double 0.97359499999999998
	.quad	0x3fc7e81cb46bacf7              # double 0.18677099999999999
	.quad	0x3fe50d844d013a93              # double 0.65790000000000004
	.quad	0x3fdf004b7f5a5333              # double 0.48439300000000002
	.quad	0x3fa835dedf1e0829              # double 0.047286000000000002
	.quad	0x3fe50cf5b1c86488              # double 0.65783199999999997
	.quad	0x3fbb7d955714b9cb              # double 0.10738499999999999
	.quad	0x3fd817763e4abe6a              # double 0.37643199999999999
	.quad	0x3fe01e215336deb9              # double 0.50367799999999996
	.quad	0x3fe97e9fadafd114              # double 0.79670700000000005
	.quad	0x3fe575e41d4b6a62              # double 0.67064100000000004
	.quad	0x3fe6b1ad2135daad              # double 0.70918899999999996
	.quad	0x3fbd64b662fdfc1a              # double 0.114818
	.quad	0x3fce54477ff151e7              # double 0.23694699999999999
	.quad	0x3fefd2a411c2a023              # double 0.99446299999999998
	.quad	0x3fd51e71044f1a1a              # double 0.32998300000000003
	.quad	0x3fd48140dd3fe197              # double 0.32038899999999998
	.quad	0x3fe44c0bdcad14a1              # double 0.63428300000000004
	.quad	0x3fef6fc371da37ef              # double 0.98239299999999996
	.quad	0x3fe2e6cd29131ec1              # double 0.59067400000000003
	.quad	0x3fdff7ced916872b              # double 0.4995
	.quad	0x3fee7dd00f776c48              # double 0.95285799999999998
	.quad	0x3fe6b3aeee957471              # double 0.70943400000000001
	.quad	0x3f9435efa615a8df              # double 0.019737000000000001
	.quad	0x3fd02c01e68a0d35              # double 0.25268600000000002
	.quad	0x3fdacadddf43c7d6              # double 0.418632
	.quad	0x3fdfa797891e2153              # double 0.49460399999999999
	.quad	0x3fe791f4f50a02b8              # double 0.73656699999999997
	.quad	0x3fa5c9c4da9003ef              # double 0.042555000000000003
	.quad	0x3fe3e583e8576cce              # double 0.62176699999999996
	.quad	0x3fe0dd095af294dd              # double 0.52698199999999995
	.quad	0x3fe719fa11a975b0              # double 0.72192100000000003
	.quad	0x3fd42f2734f82f51              # double 0.31537799999999999
	.quad	0x3fe1f1348b220792              # double 0.56069400000000003
	.quad	0x3fd329e90795f677              # double 0.299433
	.quad	0x3fc5141205bc01a3              # double 0.16467499999999999
	.quad	0x3fee11f2dc2b0ea2              # double 0.93969100000000005
	.quad	0x3fe22291fb3fa6df              # double 0.56672
	.quad	0x3fef4d4cb9ecf638              # double 0.97818599999999999
	.quad	0x3fe55f8b1572580c              # double 0.66791299999999998
	.quad	0x3fddb70691ea78af              # double 0.46429599999999999
	.quad	0x3fe32a9f7b5aea31              # double 0.59895299999999996
	.quad	0x3fe930121682f944              # double 0.78711799999999998
	.quad	0x3fe4a005c4651f3f              # double 0.64453400000000005
	.quad	0x3fe3402afdda8bd2              # double 0.60158299999999998
	.quad	0x3fe2cb641700cd85              # double 0.58732799999999996
	.quad	0x3fc77d06bbdbe3c1              # double 0.183503
	.quad	0x3f8a6698bb4d4888              # double 0.012891
	.quad	0x3fc5a14488c60cbf              # double 0.168984
	.quad	0x3f71c8eabffcdab2              # double 0.0043420000000000004
	.quad	0x3feef1348b220792              # double 0.96694400000000003
	.quad	0x3fc30752da98676a              # double 0.14866099999999999
	.quad	0x3fcbf2d3c792d128              # double 0.21834799999999999
	.quad	0x3fc8a8fc0d2c386d              # double 0.19265699999999999
	.quad	0x3fe40807357e670e              # double 0.62597999999999998
	.quad	0x3fbb84ec636b0963              # double 0.107497
	.quad	0x3fe5b1183b60285f              # double 0.67786800000000003
	.quad	0x3fd2217d2849cb25              # double 0.28329399999999999
	.quad	0x3feba413db7f1737              # double 0.86377899999999996
	.quad	0x3fe072cb641700ce              # double 0.51401300000000005
	.quad	0x3fe9ee264e48626f              # double 0.81032099999999996
	.quad	0x3fe9b0121682f944              # double 0.80274299999999998
	.quad	0x3feed5eaee2003ac              # double 0.96361300000000005
	.quad	0x3fed9656eefa1e3f              # double 0.92460200000000003
	.quad	0x3fe59c044284dfce              # double 0.67529499999999998
	.quad	0x3fe2f2778140dd40              # double 0.59209800000000001
	.quad	0x3feb8ea9e6eeb702              # double 0.86116499999999996
	.quad	0x3fe1d084e831ad21              # double 0.55670399999999998
	.quad	0x3fdaaac53b0813cb              # double 0.41667300000000002
	.quad	0x3fdde38eb0318b93              # double 0.46701399999999998
	.quad	0x3fda8183f91e646f              # double 0.414155
	.quad	0x3fee8e8427418d69              # double 0.954897
	.quad	0x3fc821af7d30ad47              # double 0.188528
	.quad	0x3fdfc1c6088d6d3b              # double 0.49620199999999998
	.quad	0x3fe81081c2e33eff              # double 0.75201499999999999
	.quad	0x3fe9ee7e62dc6e2b              # double 0.81036300000000006
	.quad	0x3fd9dfb506dd69d3              # double 0.404279
	.quad	0x3fe89d2178f68be3              # double 0.769181
	.quad	0x3fd618116ebd4cfd              # double 0.345219
	.quad	0x3fec6a3161a1db87              # double 0.88796299999999995
	.quad	0x3fed7c3b4f616723              # double 0.92141499999999998
	.quad	0x3fed5f9bdc69f8c2              # double 0.91792099999999999
	.quad	0x3fb94e2b063e07a3              # double 0.098849000000000006
	.quad	0x3fb5b4784230fcf8              # double 0.084784999999999999
	.quad	0x3fc185d744f5d356              # double 0.13689699999999999
	.quad	0x3fed6fbd273d5bab              # double 0.91988999999999999
	.quad	0x3fceb124d099e0e7              # double 0.23978099999999999
	.quad	0x3fe2f80dc33721d5              # double 0.59277999999999997
	.quad	0x3fd151654d61b2a2              # double 0.27059299999999997
	.quad	0x3fbd4bcf0b6b6e0d              # double 0.114438
	.quad	0x3fe4deacc92146a2              # double 0.65218200000000004
	.quad	0x3fe9ad42c3c9eecc              # double 0.8024
	.quad	0x3fdb8e4fb97bb731              # double 0.43056100000000003
	.quad	0x3fe7638c9752977d              # double 0.73090200000000005
	.quad	0x3fe51bde82d7b635              # double 0.65965200000000002
	.quad	0x3fc8d25edd052935              # double 0.19392000000000001
	.quad	0x3fdc91a75cd0bb6f              # double 0.44639000000000001
	.quad	0x3fd21159c4977425              # double 0.28230899999999998
	.quad	0x3fdd2352eb5f5f0b              # double 0.45528099999999999
	.quad	0x3fe996249a133c1d              # double 0.79957800000000001
	.quad	0x3fec3929ed3953df              # double 0.88197800000000004
	.quad	0x3fe862d40aaeafab              # double 0.76206399999999996
	.quad	0x3feb3677f6b1a2a5              # double 0.85039900000000002
	.quad	0x3fd0cb46bacf7447              # double 0.262407
	.quad	0x3fe63178b3700475              # double 0.69353900000000002
	.quad	0x3fec913c68661ae7              # double 0.89272899999999999
	.quad	0x3fe038a7e73a365d              # double 0.50691600000000003
	.quad	0x3fd890ff97247454              # double 0.38385000000000002
	.quad	0x3fe6582773e24fec              # double 0.69826100000000002
	.quad	0x3fead3b8e4b87bdd              # double 0.83834500000000001
	.quad	0x3fdf4c6a3bddfca0              # double 0.489039
	.quad	0x3fd9b1422ccb3a26              # double 0.40144400000000002
	.quad	0x3fe9d4fdf3b645a2              # double 0.80725000000000002
	.quad	0x3fed301a79fec99f              # double 0.91212199999999999
	.quad	0x3fc26c3b927d45a6              # double 0.143928
	.quad	0x3fbae7c49fd7a13c              # double 0.105099
	.quad	0x3fd30dc768dfbd6a              # double 0.29771599999999998
	.quad	0x3f9e492bc2fc6973              # double 0.029576000000000002
	.quad	0x3fecd88c1db0142f              # double 0.90143399999999996
	.quad	0x3fc7a0d77b7c7821              # double 0.18459600000000001
	.quad	0x3faa43dccea28fe2              # double 0.051298999999999997
	.quad	0x3fe08d6f544bb1af              # double 0.51726499999999997
	.quad	0x3fd3b14ec204f2ae              # double 0.307697
	.quad	0x3fdc315d701d9f4d              # double 0.44051299999999999
	.quad	0x3fe347021d10b1ff              # double 0.60241800000000001
	.quad	0x3fbf69a91105e1c1              # double 0.122706
	.quad	0x3fe63b0e5e679464              # double 0.69470900000000002
	.quad	0x3fd2dc2f405f6ba0              # double 0.29468899999999998
	.quad	0x3fe64bdfd2630ec3              # double 0.69676199999999999
	.quad	0x3fecf327aa68f4b6              # double 0.90468199999999999
	.quad	0x3fcfb7a5f41aef70              # double 0.24779200000000001
	.quad	0x3feffff9b56323bc              # double 0.99999700000000002
	.quad	0x3fe4d759ee88df37              # double 0.65128799999999998
	.quad	0x3fb01b866e43aa7a              # double 0.062920000000000004
	.quad	0x3feea64a16a48733              # double 0.95779899999999996
	.quad	0x3fdc05faebc408d9              # double 0.437865
	.quad	0x3fd7afbc1acde1a0              # double 0.37010100000000001
	.quad	0x3fd51dc93ea2d2fe              # double 0.32994299999999999
	.quad	0x3fd7201cd5f99c39              # double 0.36133500000000002
	.quad	0x3fb7f64cf8d716d3              # double 0.093602000000000005
	.quad	0x3fe05aea3161a1dc              # double 0.51109800000000005
	.quad	0x3fcaaceaaf35e311              # double 0.208402
	.quad	0x3feba11a975afaf8              # double 0.86341599999999996
	.quad	0x3fd2913a4f8726d0              # double 0.29011399999999998
	.quad	0x3fee1bdc69f8c21e              # double 0.94090099999999999
	.quad	0x3fe8fc6759ab6d01              # double 0.78081100000000003
	.quad	0x3fe5f9335d249e45              # double 0.68667
	.quad	0x3fe525093964a59c              # double 0.660771
	.quad	0x3fe6db7281fd9ba2              # double 0.71428800000000003
	.quad	0x3fed56c508b32ce9              # double 0.91684200000000005
	.quad	0x3feacbdba0a52696              # double 0.83738500000000005
	.quad	0x3fa5d82fd75e2047              # double 0.042665000000000002
	.quad	0x3fed9ec7000431be              # double 0.92563200000000001
	.quad	0x3febe916440f2389              # double 0.87220299999999995
	.quad	0x3fe025072085b185              # double 0.50451999999999997
	.quad	0x3fec6503fb374363              # double 0.88733099999999998
	.quad	0x3fb8102ff8ec0f88              # double 0.093996999999999997
	.quad	0x3fe0eccc46950fc7              # double 0.52890599999999999
	.quad	0x3fe10d51f81a5871              # double 0.53287600000000002
	.quad	0x3fe761650a45d420              # double 0.73063900000000004
	.quad	0x3fdd159c49774257              # double 0.45444400000000001
	.quad	0x3fd6f39d1b2e59b0              # double 0.35861900000000002
	.quad	0x3f89b34a44c7b02d              # double 0.012548999999999999
	.quad	0x3fd682d38476f2a6              # double 0.35173500000000002
	.quad	0x3fe2677f6b1a2a4e              # double 0.57513400000000003
	.quad	0x3feca9b068123811              # double 0.89571400000000001
	.quad	0x3fb38066c2acb85a              # double 0.076177999999999996
	.quad	0x3fe5df761cbccf29              # double 0.68352800000000002
	.quad	0x3fdcf36694898f60              # double 0.45235599999999998
	.quad	0x3fe2d0cc35ce1826              # double 0.58798799999999996
	.quad	0x3fedb82a12f90108              # double 0.92873099999999997
	.quad	0x3fccd7c6fbd273d6              # double 0.22533500000000001
	.quad	0x3fb91697f1f9ad00              # double 0.098001000000000004
	.quad	0x3fd93c579f234656              # double 0.39430799999999999
	.quad	0x3fd9277c45cbbc2c              # double 0.39303500000000002
	.quad	0x3fd4e97d06bbdbe4              # double 0.32675100000000001
	.quad	0x3fe8e950fc71d606              # double 0.77848099999999998
	.quad	0x3fea0a116659d12d              # double 0.81372900000000004
	.quad	0x3fd8b43d89ce4a7b              # double 0.38600099999999998
	.quad	0x3fec8b86b15f88fd              # double 0.89203200000000005
	.quad	0x3fd08a116659d12d              # double 0.25842700000000002
	.quad	0x3fec8366516db0de              # double 0.89104000000000005
	.quad	0x3fe9384ba0e84274              # double 0.78812199999999998
	.quad	0x3faa5ce5b4245f5b              # double 0.051490000000000001
	.quad	0x3fca09fe86833c60              # double 0.20343
	.quad	0x3fed1d0c80410300              # double 0.90979600000000005
	.quad	0x3fc2c9c0a8d21bc1              # double 0.146782
	.quad	0x3fec53e920c069e8              # double 0.885243
	.quad	0x3fd78c0ce91c8eac              # double 0.367923
	.quad	0x3fed401a36e2eb1c              # double 0.91407499999999997
	.quad	0x3fc897d06bbdbe3c              # double 0.192133
	.quad	0x3fcd8b3700474d9c              # double 0.23081099999999999
	.quad	0x3fe9c08fa7a85016              # double 0.80475600000000003
	.quad	0x3fdb1248d7e02646              # double 0.42299100000000001
	.quad	0x3fbf1c10d7be9857              # double 0.12152200000000001
	.quad	0x3fe6d58ea7ce0fc3              # double 0.71356900000000001
	.quad	0x3fee43526527a205              # double 0.94571799999999995
	.quad	0x3fea5b3397dd00f7              # double 0.82363299999999995
	.quad	0x3fd2a6b50b0f27bb              # double 0.29142499999999999
	.quad	0x3fe6adcd2d44dca9              # double 0.70871600000000001
	.quad	0x3feb2619da9c9928              # double 0.84840099999999996
	.quad	0x3fe644d44567125e              # double 0.69590200000000002
	.quad	0x3fdaf2e05ccc89b1              # double 0.421074
	.quad	0x3fe22ae297396d09              # double 0.56773499999999999
	.quad	0x3fa3827fa1a0cf18              # double 0.038105
	.quad	0x3fdab4d056c508b3              # double 0.41728599999999999
	.quad	0x3fe2cc271fff79c8              # double 0.58742099999999997
	.quad	0x3fa31c432ca57a78              # double 0.037324999999999997
	.quad	0x3fe662b063e07a29              # double 0.69954700000000003
	.quad	0x3fdc68db8bac710d              # double 0.44390000000000002
	.quad	0x3fd6500d5e8d5411              # double 0.348636
	.quad	0x3fe1e455eaee2004              # double 0.55912300000000004
	.quad	0x3f94289118c197e5              # double 0.019685999999999999
	.quad	0x3fe5507a6bd6e8b0              # double 0.66607400000000005
	.quad	0x3fe4ff0aa21a719b              # double 0.65613299999999997
	.quad	0x3fbe59f2ba9d1f60              # double 0.11856
	.quad	0x3fe95e95b78cc9a7              # double 0.79279599999999995
	.quad	0x3feef58e219652bd              # double 0.96747499999999997
	.quad	0x3fead98e10cf5b1d              # double 0.83905700000000005
	.quad	0x3fde90d173fb7a5f              # double 0.47758899999999999
	.quad	0x3fe6bf61aa3f034b              # double 0.71086199999999999
	.quad	0x3fdf8dc981beb181              # double 0.493029
	.quad	0x3fe1a2ca9ac36545              # double 0.551122
	.quad	0x3fb352a843808851              # double 0.075480000000000005
	.quad	0x3fe0ac753e707e17              # double 0.52105199999999996
	.quad	0x3fba7d6733ebbfd7              # double 0.103476
	.quad	0x3fe6b686a4ca4f44              # double 0.709781
	.quad	0x3fd32d27807789a4              # double 0.29963099999999998
	.quad	0x3fe8d5b89939218a              # double 0.77608900000000003
	.quad	0x3fcf830e3cd9a522              # double 0.24618699999999999
	.quad	0x3fca3b81b64e0547              # double 0.20494100000000001
	.quad	0x3f9f8fcd67fd3f5b              # double 0.030821999999999999
	.quad	0x3fef1550ca1cef24              # double 0.97135199999999999
	.quad	0x3fecc33b5393250b              # double 0.89883199999999996
	.quad	0x3fd67a4e7ab75643              # double 0.351215
	.quad	0x3fe86f0281ba7fc3              # double 0.76355099999999998
	.quad	0x3fedd2674080f990              # double 0.93193400000000004
	.quad	0x3fd56f5019f3c70d              # double 0.33491900000000002
	.quad	0x3f9991ff7164c72a              # double 0.024971
	.quad	0x3fe7807fed20296b              # double 0.73443599999999998
	.quad	0x3fd7ca1cef240faa              # double 0.37171100000000001
	.quad	0x3fa33c3e74afd545              # double 0.037568999999999998
	.quad	0x3fa0bdec5f394b7b              # double 0.032698999999999999
	.quad	0x3fecb77e1b8ed1bf              # double 0.89739899999999995
	.quad	0x3fda027525460aa6              # double 0.40639999999999998
	.quad	0x3fd5d694ccab3ede              # double 0.34122200000000003
	.quad	0x3fc7bbb62413db7f              # double 0.185416
	.quad	0x3fcf0a45d41fa765              # double 0.24250099999999999
	.quad	0x3fd6463cfb3311a5              # double 0.34803699999999999
	.quad	0x3fda854cdb7ae579              # double 0.41438599999999998
	.quad	0x3fe94271fff79c84              # double 0.78936099999999997
	.quad	0x3fc94df04ddb5526              # double 0.19769100000000001
	.quad	0x3fceb042528ae74f              # double 0.23975399999999999
	.quad	0x3fc5649d388a8b09              # double 0.167133
	.quad	0x3fdec33b5393250b              # double 0.48066599999999998
	.quad	0x3fba317268d32831              # double 0.10231700000000001
	.quad	0x3fecef5caf2d7f95              # double 0.90421899999999999
	.quad	0x3fda9c0a8d21bc12              # double 0.41577399999999998
	.quad	0x3fd5ef6b5d462c34              # double 0.34273799999999999
	.quad	0x3fb6c9afe1da7b0b              # double 0.089014999999999997
	.quad	0x3fe91d3458cd20b0              # double 0.78481500000000004
	.quad	0x3fb1e75360d02470              # double 0.069935999999999998
	.quad	0x3feb5349be8ff328              # double 0.85391700000000004
	.quad	0x3fe0e36d22424a27              # double 0.52776199999999995
	.quad	0x3feb2a454de7ea60              # double 0.84891000000000005
	.quad	0x3fb7d976ff3ade22              # double 0.093161999999999994
	.quad	0x3fdb22c450268901              # double 0.42399700000000001
	.quad	0x3fd4454152b0a6fc              # double 0.31672699999999998
	.quad	0x3fdf75e2046c764b              # double 0.49157000000000001
	.quad	0x3fcecc2d6a9c560c              # double 0.24060599999999999
	.quad	0x3fd0c4fc1df3300e              # double 0.26202300000000001
	.quad	0x3fe51ea35935fc3b              # double 0.65998999999999997
	.quad	0x3fecb4bf8fcd67fd              # double 0.89706399999999997
	.quad	0x3fbb9b994e1a3f46              # double 0.10784299999999999
	.quad	0x3fc28ffb8b263950              # double 0.14501900000000001
	.quad	0x3fe9015c209246bf              # double 0.781416
	.quad	0x3fe26bdd334c5da7              # double 0.57566700000000004
	.quad	0x3fd0e086bdf4c2b5              # double 0.26370399999999999
	.quad	0x3fee5f6fd21ff2e5              # double 0.94915000000000005
	.quad	0x3fe6aafdda8bd231              # double 0.70837300000000003
	.quad	0x3fabe425aee631f9              # double 0.054475000000000003
	.quad	0x3fcbd26b723ee1bd              # double 0.217359
	.quad	0x3fd75ae5ffa3b9ae              # double 0.364923
	.quad	0x3fc94e874c8ffb8b              # double 0.197709
	.quad	0x3fd52b0a6fc58ab9              # double 0.33075199999999999
	.quad	0x3fef6f3d3a1d3240              # double 0.982329
	.quad	0x3fb96bebe1650a46              # double 0.099303000000000002
	.quad	0x3fc1f6c2699c7bcc              # double 0.140343
	.quad	0x3fbe56de33269df9              # double 0.11851299999999999
	.quad	0x3fec84c271fff79d              # double 0.89120600000000005
	.quad	0x3fbabde3fbbd7b20              # double 0.10446
	.quad	0x3f9917d6b65a9a80              # double 0.024504999999999999
	.quad	0x3fd9d8ec95bff045              # double 0.40386499999999997
	.quad	0x3fe3057afea3df6e              # double 0.59441900000000003
	.quad	0x3fe96ebd4cfd08d5              # double 0.79476800000000003
	.quad	0x3fe3e5a14488c60d              # double 0.62178100000000003
	.quad	0x3fd96a3bddfc9ff9              # double 0.39710899999999999
	.quad	0x3fe028155d5f56a8              # double 0.50489300000000004
	.quad	0x3fd22ddbdb5d8948              # double 0.284049
	.quad	0x3fdc35daad601ffb              # double 0.44078699999999998
	.quad	0x3fe573fd933e35c6              # double 0.67040900000000003
	.quad	0x3fea9372a38b8ae3              # double 0.83049899999999999
	.quad	0x3fd9bb384fd2a62b              # double 0.40205200000000002
	.quad	0x3fd155043e5321e6              # double 0.270814
	.quad	0x3fe3976577531db4              # double 0.61223099999999997
	.quad	0x3fd385fd04a2fcf0              # double 0.30505300000000002
	.quad	0x3fcd6ddaceee0f3d              # double 0.22991500000000001
	.quad	0x3fdc9563a9f383f1              # double 0.44661800000000001
	.quad	0x3fe59a79fec99f1b              # double 0.67510700000000001
	.quad	0x3fe61b97353b4b30              # double 0.69086800000000004
	.quad	0x3fde7d3d4280ae10              # double 0.47639399999999998
	.quad	0x3fdb4b2fa93af74d              # double 0.42646400000000001
	.quad	0x3fe3eb702602c908              # double 0.62248999999999999
	.quad	0x3fdef572de43ed96              # double 0.48373100000000002
	.quad	0x3fe5d7c2ca148ba8              # double 0.68258799999999997
	.quad	0x3fb0dae3e6c4c597              # double 0.065839999999999996
	.quad	0x3fdabd512ec6bce8              # double 0.41780499999999998
	.quad	0x3fe9a41c3efae792              # double 0.80128299999999997
	.quad	0x3fd0b9e8c47a17f4              # double 0.261347
	.quad	0x3fe2d24e160d887f              # double 0.58817200000000003
	.quad	0x3fd6c31593e5fb72              # double 0.355657
	.quad	0x3feb1b75a74c09c4              # double 0.84710200000000002
	.quad	0x3fd6b75a74c09c3d              # double 0.35494100000000001
	.quad	0x3fbe9e1b089a0275              # double 0.1196
	.quad	0x3feca4dd2f1a9fbe              # double 0.89512499999999995
	.quad	0x3fccbf6e3f78bbd4              # double 0.22459200000000001
	.quad	0x3fec27e0ef99806f              # double 0.87986799999999998
	.quad	0x3fd2987c6327ed85              # double 0.29055700000000001
	.quad	0x3fd023b3636f3b21              # double 0.25217899999999999
	.quad	0x3feb87160956c0d7              # double 0.86024
	.quad	0x3fbd0268900c521e              # double 0.113318
	.quad	0x3fd088333fc86cec              # double 0.25831300000000001
	.quad	0x3fe37e670e2c12ae              # double 0.60918000000000005
	.quad	0x3fe819bd4067cf1c              # double 0.75314199999999997
	.quad	0x3fe500b45ae5ffa4              # double 0.65633600000000003
	.quad	0x3fc8df82b1f687b1              # double 0.19432099999999999
	.quad	0x3fd04bad7d7c2ca1              # double 0.25461899999999998
	.quad	0x3fe30a67620ee8d1              # double 0.59501999999999999
	.quad	0x3fc396e158750c1c              # double 0.15304200000000001
	.quad	0x3fd2d5f99c38b04b              # double 0.29431000000000002
	.quad	0x3febd86a8fc0d2c4              # double 0.87016800000000005
	.quad	0x3fee18b2e9ccb7d4              # double 0.94051499999999998
	.quad	0x3fe2c2f837b4a234              # double 0.58630000000000004
	.quad	0x3fbbd82773e24fec              # double 0.108767
	.quad	0x3fe70344c37e6f72              # double 0.71914900000000004
	.quad	0x3fef541fa7653437              # double 0.97901899999999997
	.quad	0x3fed02c2bd7f51f0              # double 0.90658700000000003
	.quad	0x3fec76e82949a565              # double 0.88951499999999994
	.quad	0x3fd840c4156e264e              # double 0.37895299999999998
	.quad	0x3fe27192ea52ef91              # double 0.57636399999999999
	.quad	0x3fceb2074ea8da7f              # double 0.23980799999999999
	.quad	0x3fea7164c729f59d              # double 0.82634200000000002
	.quad	0x3fe0af251c193b3a              # double 0.52137999999999995
	.quad	0x3fc6739b024f6599              # double 0.175403
	.quad	0x3fef708461f9f01c              # double 0.98248500000000005
	.quad	0x3f90667f90d9d777              # double 0.016015999999999999
	.quad	0x3fc310cb295e9e1b              # double 0.14895
	.quad	0x3fd39ea140570825              # double 0.30655700000000002
	.quad	0x3fdca5ca29845dc8              # double 0.44761899999999999
	.quad	0x3fcdd13d74d594f2              # double 0.23294799999999999
	.quad	0x3fe908c1db0142f6              # double 0.78231899999999999
	.quad	0x3feb72c5197a2489              # double 0.85775999999999997
	.quad	0x3fe4b9cf9a06a6e3              # double 0.64768199999999998
	.quad	0x3fe3da426bb55ac0              # double 0.62039299999999997
	.quad	0x3fcce0f3cb3e5754              # double 0.22561500000000001
	.quad	0x3fdd4be40420f6f1              # double 0.45775700000000002
	.quad	0x3fe5eedaa92e6213              # double 0.68540699999999999
	.quad	0x3fe8373083558a76              # double 0.75673699999999999
	.quad	0x3fecdfdcdf698783              # double 0.90232699999999999
	.quad	0x3fe125b530ced4e5              # double 0.53585300000000002
	.quad	0x3fee51116a8b8f15              # double 0.94739600000000002
	.quad	0x3fe16cb74ddf86e4              # double 0.54452100000000003
	.quad	0x3fe011b60ae9680e              # double 0.502162
	.quad	0x3fde374ff865d7cb              # double 0.47212599999999999
	.quad	0x3fd7a2e3c536d656              # double 0.36931700000000001
	.quad	0x3fd0b95a294141ea              # double 0.26131300000000002
	.quad	0x3fb33b320535c9e6              # double 0.075121999999999994
	.quad	0x3fd1fea3df6db941              # double 0.281167
	.quad	0x3fc1c2fc69728a61              # double 0.138763
	.quad	0x3fb7f36ac647778e              # double 0.093558000000000002
	.quad	0x3fc042d05f288484              # double 0.12703900000000001
	.quad	0x3fe78bd017dae819              # double 0.73581700000000005
	.quad	0x3fe967c6b8b69553              # double 0.79391800000000001
	.quad	0x3fe7ff0025bfad2a              # double 0.74987800000000004
	.quad	0x3fba38eb0318b934              # double 0.10243099999999999
	.quad	0x3feca1a93293d103              # double 0.89473400000000003
	.quad	0x3fe9b7f1737542a2              # double 0.80370399999999997
	.quad	0x3fd3e1b8ed1bf7ad              # double 0.31065199999999998
	.quad	0x3fec6e78183f91e6              # double 0.88848499999999997
	.quad	0x3fedd3e707e175d1              # double 0.93211699999999997
	.quad	0x3fec87d0aed99cbf              # double 0.89157900000000001
	.quad	0x3fdc1cffeb074a77              # double 0.43926999999999999
	.quad	0x3fc98e0008637bd0              # double 0.19964599999999999
	.quad	0x3feed8e64b231401              # double 0.96397699999999997
	.quad	0x3fc6862f5989df11              # double 0.17596999999999999
	.quad	0x3fda331e3a7daa50              # double 0.40937000000000001
	.quad	0x3fe7cf0520d130e0              # double 0.74402100000000004
	.quad	0x3fcbcf5f4e4430b1              # double 0.21726599999999999
	.quad	0x3fe3ed3d859c8c93              # double 0.62270999999999999
	.quad	0x3f858537e2c55c96              # double 0.010508
	.quad	0x3fee20cae642bf98              # double 0.94150299999999997
	.quad	0x3fe4a00c0f01fb83              # double 0.64453700000000003
	.quad	0x3fe011d57ff9b563              # double 0.50217699999999998
	.quad	0x3fd4a400fba8826b              # double 0.32251000000000002
	.quad	0x3fdd86f049a9973e              # double 0.46136100000000002
	.quad	0x3fe62a6d26740810              # double 0.69267900000000004
	.quad	0x3fea3f290abb44e5              # double 0.82020999999999999
	.quad	0x3fd8db6a1e81cb47              # double 0.38839200000000002
	.quad	0x3fcaee84ad794a6f              # double 0.21040400000000001
	.quad	0x3fd6152b0a6fc58b              # double 0.34504200000000002
	.quad	0x3f9b328b6d86ec18              # double 0.02656
	.quad	0x3feac2f61ed5ae1d              # double 0.83629900000000001
	.quad	0x3fd13ba3443d46b2              # double 0.26926499999999998
	.quad	0x3fde053e2d6238da              # double 0.46906999999999999
	.quad	0x3fcc718a86d71f36              # double 0.222215
	.quad	0x3fea2f42784a9479              # double 0.81826900000000002
	.quad	0x3fe8ee568a50507a              # double 0.77909399999999995
	.quad	0x3fb868661ae70c13              # double 0.095342999999999997
	.quad	0x3fe704790b849881              # double 0.71929600000000005
	.quad	0x3f794e1a3f4666ed              # double 0.0061780000000000003
	.quad	0x3fdbecf206423960              # double 0.43633699999999997
	.quad	0x3fca15b1422ccb3a              # double 0.203787
	.quad	0x3fcb14013ec460ee              # double 0.21154800000000001
	.quad	0x3fdbe5321e603d57              # double 0.43586399999999997
	.quad	0x3fec62d40aaeafab              # double 0.88706399999999996
	.quad	0x3feaf2a9d627bf62              # double 0.84212200000000004
	.quad	0x3fd6c2699c7bcc29              # double 0.35561599999999999
	.quad	0x3fa2d31fcd24e161              # double 0.036767000000000001
	.quad	0x3feebe40420f6f09              # double 0.96072400000000002
	.quad	0x3fd9819d2391d580              # double 0.398536
	.quad	0x3fe130728e92d55a              # double 0.53716399999999997
	.quad	0x3feff727136a4010              # double 0.99892000000000003
	.quad	0x3fbc1040bfe3b03e              # double 0.109623
	.quad	0x3fd8dc725c3dee78              # double 0.38845499999999999
	.quad	0x3fe588e581cf7879              # double 0.67296100000000003
	.quad	0x3fd7c8d9f90539fc              # double 0.37163400000000002
	.quad	0x3fefefb09203a323              # double 0.99800900000000003
	.quad	0x3fcb44f5d35653ca              # double 0.21304200000000001
	.quad	0x3fce213a0c6b484d              # double 0.23538899999999999
	.quad	0x3fe259e6256366d8              # double 0.57347400000000004
	.quad	0x3fba85a921ccd962              # double 0.103602
	.quad	0x3fe233b96af038e3              # double 0.56881400000000004
	.quad	0x3fcb451fc4c16590              # double 0.21304699999999999
	.quad	0x3fdde111276fb092              # double 0.466862
	.quad	0x3fab5525cc426352              # double 0.053384000000000001
	.quad	0x3fc4c1b97353b4b3              # double 0.162162
	.quad	0x3faf5fb2edfe75bc              # double 0.061276999999999998
	.quad	0x3fe6a502eec7c958              # double 0.70764300000000002
	.quad	0x3fe93d4f15e7c8d2              # double 0.78873400000000005
	.quad	0x3fe1fd0d0678c005              # double 0.56213999999999997
	.quad	0x3fe63402d16b97ff              # double 0.69384900000000005
	.quad	0x3fac2dcf4623d0c0              # double 0.055037000000000003
	.quad	0x3fe16aee2003ab86              # double 0.54430299999999998
	.quad	0x3fd98e68e3ef2841              # double 0.39931699999999998
	.quad	0x3fdc223e18698351              # double 0.43958999999999998
	.quad	0x3fe4a42aed139431              # double 0.64503999999999995
	.quad	0x3fe983ec892ab68d              # double 0.79735400000000001
	.quad	0x3fe945cbbc2b94d9              # double 0.78976999999999997
	.quad	0x3fc15c182ecaeea6              # double 0.13562299999999999
	.quad	0x3fe23f8db4890929              # double 0.57025800000000004
	.quad	0x3fe64395810624dd              # double 0.69574999999999998
	.quad	0x3fd95082cf52b90a              # double 0.39553899999999997
	.quad	0x3fe6437c5692b3cc              # double 0.69573799999999997
	.quad	0x3fbae503fb374363              # double 0.105057
	.quad	0x3feb37f5a5332ad0              # double 0.85058100000000003
	.quad	0x3fd35b78cc9a77e6              # double 0.302458
	.quad	0x3fe83d145d851655              # double 0.75745600000000002
	.quad	0x3fc731098d477bc0              # double 0.18118400000000001
	.quad	0x3fd442bf9830e3ce              # double 0.31657400000000002
	.quad	0x3fe80ab2e1693c04              # double 0.75130600000000002
	.quad	0x3fe7da63f9a49c2c              # double 0.74540899999999999
	.quad	0x3fcb03d9a95421c0              # double 0.21105499999999999
	.quad	0x3fb936c58eeae9ee              # double 0.098491999999999996
	.quad	0x3fb6ee957470eb25              # double 0.089578000000000005
	.quad	0x3fee6c11a11233df              # double 0.95069199999999998
	.quad	0x3fe2af1ed17c5ef6              # double 0.58387699999999998
	.quad	0x3fbcb4e11dbca969              # double 0.112135
	.quad	0x3fded8f4f93bc0a0              # double 0.48199199999999998
	.quad	0x3fdd2d6a9c560c7c              # double 0.455897
	.quad	0x3fce52b4d8ba40d9              # double 0.236899
	.quad	0x3fe4a11cb039ef0f              # double 0.64466699999999999
	.quad	0x3fe8ba1b1960fa16              # double 0.77271800000000002
	.quad	0x3fe6f6f4be835dee              # double 0.71764600000000001
	.quad	0x3fc97f498c3b0c46              # double 0.19919700000000001
	.quad	0x3fd4bfb15b573eab              # double 0.32419999999999999
	.quad	0x3feee81669ced0b3              # double 0.96583099999999999
	.quad	0x3fe9c3fe5c91d14e              # double 0.80517499999999997
	.quad	0x3fc231c64ba94bbe              # double 0.14214399999999999
	.quad	0x3fd6e2e6ea854478              # double 0.357599
	.quad	0x3fdb8cb07d0aed9a              # double 0.43046200000000001
	.quad	0x3fd542917507e9d9              # double 0.33218799999999998
	.quad	0x3fd20fba8826aa8f              # double 0.28221000000000002
	.quad	0x3fc2292817763e4b              # double 0.14188100000000001
	.quad	0x3fe5f85729b280f1              # double 0.68656499999999998
	.quad	0x3fd6fc610f0e90bc              # double 0.35915399999999997
	.quad	0x3fdf65fd8adab9f5              # double 0.49059999999999998
	.quad	0x3fe5ccfd08d4bad8              # double 0.68127300000000002
	.quad	0x3fe2e7be553ac4f8              # double 0.59078900000000001
	.quad	0x3fe9a35d67ba237d              # double 0.80119200000000002
	.quad	0x3fec5ec80c73abc9              # double 0.88656999999999997
	.quad	0x3fea36c58eeae9ee              # double 0.81918599999999997
	.quad	0x3fdbb5fe542e557e              # double 0.43298300000000001
	.quad	0x3fe480baa582dbe8              # double 0.64071400000000001
	.quad	0x3f55a07b352a8438              # double 0.00132
	.quad	0x3fe48d2806af46aa              # double 0.642231
	.quad	0x3fc5fcfc3f811f4f              # double 0.17178299999999999
	.quad	0x3fecbf65dbfceb79              # double 0.89836400000000005
	.quad	0x3fe8fc7e6b3fe9fb              # double 0.78082200000000002
	.quad	0x3fea211a975afaf8              # double 0.81654099999999996
	.quad	0x3fe231f687b139c9              # double 0.56859899999999997
	.quad	0x3fe6b443d46b26c0              # double 0.70950500000000005
	.quad	0x3fde1e9af5ba2be0              # double 0.47061799999999998
	.quad	0x3fde97a67a52ac75              # double 0.47800599999999999
	.quad	0x3fd141e14bdfd263              # double 0.269646
	.quad	0x3fd4450268900c52              # double 0.31671199999999999
	.quad	0x3f9aa087ca643cc0              # double 0.026002999999999998
	.quad	0x3fdf51eb851eb852              # double 0.489375
	.quad	0x3fe5e514c22ee419              # double 0.68421399999999999
	.quad	0x3fe25e2ac3222920              # double 0.57399500000000003
	.quad	0x3fbe2cdc011d3672              # double 0.117872
	.quad	0x3fee404c8bc9cd3e              # double 0.94534899999999999
	.quad	0x3fc55e071c53f39d              # double 0.166932
	.quad	0x3fe08b0292817764              # double 0.51696900000000001
	.quad	0x3fe72d1aeb3dd11c              # double 0.72425600000000001
	.quad	0x3fe66820e6299525              # double 0.70021100000000003
	.quad	0x3fd9075f6fd21ff3              # double 0.39107500000000001
	.quad	0x3fd783dff3f0fe04              # double 0.36742399999999997
	.quad	0x3fa810a569b17482              # double 0.047002000000000002
	.quad	0x3fed6ecbfb15b574              # double 0.919775
	.quad	0x3feb4508b32ce896              # double 0.85217699999999996
	.quad	0x3fddf45176145953              # double 0.46803699999999998
	.quad	0x3fd7b56323bbc6eb              # double 0.370446
	.quad	0x3fed3fe7e1fc08fa              # double 0.91405099999999995
	.quad	0x3fe120e6299524c0              # double 0.53526600000000002
	.quad	0x3fd7f99c38b04ab6              # double 0.37461
	.quad	0x3fe49ef30a4e379b              # double 0.64440299999999995
	.quad	0x3fdf5821294573a8              # double 0.48975400000000002
	.quad	0x3fdfb8bac710cb29              # double 0.49564999999999998
	.quad	0x3fdb1dda059a73b4              # double 0.42369699999999999
	.quad	0x3fc67f77af64063a              # double 0.175765
	.quad	0x3fe9bac929aa1d75              # double 0.80405099999999996
	.quad	0x3fd18b2a6b0d9514              # double 0.274119
	.quad	0x3fe32c53b0813cac              # double 0.59916100000000005
	.quad	0x3fc577c88e79aae7              # double 0.16771800000000001
	.quad	0x3fe870025bfad29a              # double 0.76367300000000005
	.quad	0x3fecaab042528ae7              # double 0.89583599999999997
	.quad	0x3febc92bc2fc6973              # double 0.86830700000000005
	.quad	0x3fe149c2c1b10fd8              # double 0.54025400000000001
	.quad	0x3f9655193708aac9              # double 0.021808999999999999
	.quad	0x3fd5512ec6bce853              # double 0.33307999999999999
	.quad	0x3feba08e15011905              # double 0.86334900000000003
	.quad	0x3fd5937d1fe64f55              # double 0.33712700000000001
	.quad	0x3fe3334c5da6a444              # double 0.60001199999999999
	.quad	0x3fc77b2031ceaf25              # double 0.183445
	.quad	0x3fd615011904b3c4              # double 0.34503200000000001
	.quad	0x3fb12c061847f562              # double 0.067077999999999999
	.quad	0x3fe407b56b873797              # double 0.62594099999999997
	.quad	0x3f3cf7878b7a1c26              # double 4.4200000000000001E-4
	.quad	0x3fe229b280f12c28              # double 0.56759000000000004
	.quad	0x3fdd8a82a5614df9              # double 0.46157900000000002
	.quad	0x3fea3a1d323fee2d              # double 0.81959400000000004
	.quad	0x3fe9d3da72a7bd49              # double 0.80711100000000002
	.quad	0x3fe38ff327aa68f5              # double 0.61132200000000003
	.quad	0x3fec1934efcbd556              # double 0.878077
	.quad	0x3feeb96073de1e2e              # double 0.96012900000000001
	.quad	0x3fdede2ac3222920              # double 0.48231000000000002
	.quad	0x3fe9cf26aec0724b              # double 0.80653699999999995
	.quad	0x3fe1ae0c17657753              # double 0.55249599999999999
	.quad	0x3fee214f0520d131              # double 0.94156600000000001
	.quad	0x3fd74916ca46e08f              # double 0.36383599999999999
	.quad	0x3fe2305faebc408e              # double 0.56840500000000005
	.quad	0x3fd6c0db2702a348              # double 0.35552099999999998
	.quad	0x3fda3c21187e7c07              # double 0.40992000000000001
	.quad	0x3fe13e8bc169c23b              # double 0.53888499999999995
	.quad	0x3fe14c7d1bb4916d              # double 0.54058700000000004
	.quad	0x3fe45c9e6687f456              # double 0.63630600000000004
	.quad	0x3fc3a6c5d206c871              # double 0.153527
	.quad	0x3fdf4228997c3d68              # double 0.48841299999999999
	.quad	0x3feea77c45cbbc2c              # double 0.95794500000000004
	.quad	0x3fe8c7c0f4517614              # double 0.77438399999999996
	.quad	0x3fd924a276b7ed42              # double 0.39286100000000002
	.quad	0x3fe0803254e6e222              # double 0.51564900000000002
	.quad	0x3fd9a958537e2c56              # double 0.40096100000000001
	.quad	0x3fdfbacf7446f9ba              # double 0.49577700000000002
	.quad	0x3fcefb09203a322b              # double 0.242036
	.quad	0x3fd5ccdd93c46d83              # double 0.34062900000000002
	.quad	0x3fe3e534373f316e              # double 0.62172899999999998
	.quad	0x3fdf766c6de76428              # double 0.49160300000000001
	.quad	0x3fe3fcac8e68e3ef              # double 0.62459399999999998
	.quad	0x3fde3b7521144cbe              # double 0.47237899999999999
	.quad	0x3fe0f2474538ef35              # double 0.52957500000000002
	.quad	0x3fc6a70d1fa33376              # double 0.17697299999999999
	.quad	0x3fe79eeaa6d26741              # double 0.73814900000000006
	.quad	0x3f9973d9ec700043              # double 0.024856
	.quad	0x3fa898d477bbf940              # double 0.048041
	.quad	0x3fec3fa2ad3e920c              # double 0.88276799999999999
	.quad	0x3feb083771865519              # double 0.84475299999999998
	.quad	0x3fd135f80991793a              # double 0.26891900000000002
	.quad	0x3fe8ce50c5eb313c              # double 0.77518500000000001
	.quad	0x3fd100fba8826aa9              # double 0.265685
	.quad	0x3f936f7e3d1cc101              # double 0.01898
	.quad	0x3fcb1df761cbccf3              # double 0.21185200000000001
	.quad	0x3fdabdad7518b0d1              # double 0.417827
	.quad	0x3fe1f0b28522ea10              # double 0.56063200000000002
	.quad	0x3fba41c3efae7925              # double 0.102566
	.quad	0x3fbcd2f5dbb9cf9a              # double 0.112594
	.quad	0x3fbd4a1ad6451b93              # double 0.114412
	.quad	0x3fd16f7e3d1cc101              # double 0.27243000000000001
	.quad	0x3fcc70eb24a6a876              # double 0.222196
	.quad	0x3fe0da059a73b42d              # double 0.52661400000000003
	.quad	0x3fc0e0008637bd06              # double 0.13183600000000001
	.quad	0x3fe1e3193f6c269a              # double 0.55897200000000002
	.quad	0x3fd0b26394face68              # double 0.26088800000000001
	.quad	0x3fdd76102795703f              # double 0.46033099999999999
	.quad	0x3fec94face67d780              # double 0.89318600000000004
	.quad	0x3fa5bea0ba1f4b1f              # double 0.042470000000000001
	.quad	0x3fcf91361dc93ea3              # double 0.246619
	.quad	0x3fe7ff972474538f              # double 0.74995000000000001
	.quad	0x3fce1bda5119ce07              # double 0.23522499999999999
	.quad	0x3fed0c5c9a34ca0c              # double 0.90775899999999998
	.quad	0x3fda65e02ea960b7              # double 0.412468
	.quad	0x3fe2e1aa3f034b0e              # double 0.59004699999999999
	.quad	0x3febfa85015c2092              # double 0.87433099999999997
	.quad	0x3fef68be2f7b17ce              # double 0.98153599999999996
	.quad	0x3fe095fcc1871e6d              # double 0.51830900000000002
	.quad	0x3fe6d4b6a619da9d              # double 0.71346600000000004
	.quad	0x3fe675caf2d7f951              # double 0.70187900000000003
	.quad	0x3fc09424e5929670              # double 0.129521
	.quad	0x3fdffbacb4289119              # double 0.49973600000000001
	.quad	0x3fcaf355cd91eeaa              # double 0.21055099999999999
	.quad	0x3fa3ec02f2f98740              # double 0.03891
	.quad	0x3fe6f648c7192ea5              # double 0.71756399999999998
	.quad	0x3fd368cac4b4d057              # double 0.30327100000000001
	.quad	0x3fdc43a647fdc593              # double 0.44162899999999999
	.quad	0x3fe6cbe40420f6f1              # double 0.71238900000000005
	.quad	0x3fc9aed56b00ffda              # double 0.20064799999999999
	.quad	0x3fbbe1975f2cb641              # double 0.10891099999999999
	.quad	0x3fd3c24c404a72eb              # double 0.30873400000000001
	.quad	0x3fe46a5b530ced4e              # double 0.63798299999999997
	.quad	0x3fdace2d1f1cfbb9              # double 0.41883399999999998
	.quad	0x3fc7f05ea24cc682              # double 0.18702299999999999
	.quad	0x3fc548ecd8dbcec8              # double 0.16628799999999999
	.quad	0x3fe5b9e279dd3bb0              # double 0.67894100000000002
	.quad	0x3fae7b1c0010c6f8              # double 0.059533000000000003
	.quad	0x3fe8d05f28848388              # double 0.77543600000000001
	.quad	0x3fcab71327243138              # double 0.20871200000000001
	.quad	0x3fe90dbf0563ed0f              # double 0.78292799999999996
	.quad	0x3fd38c436fc158fb              # double 0.30543599999999999
	.quad	0x3fec9edbf8b9baa1              # double 0.89439199999999996
	.quad	0x3fb5da272862f599              # double 0.085360000000000005
	.quad	0x3fee267839cd8128              # double 0.94219600000000003
	.quad	0x3fc4405b39e279dd              # double 0.15821399999999999
	.quad	0x3fcb2c625e99e94b              # double 0.21229200000000001
	.quad	0x3fee0ebaade657b8              # double 0.93929799999999996
	.quad	0x3fe8ccf4a558ea7d              # double 0.77501900000000001
	.quad	0x3fa75d78811b1d93              # double 0.045635000000000002
	.quad	0x3fec9806f262888b              # double 0.89355799999999996
	.quad	0x3fea138de6ddf00b              # double 0.81488700000000003
	.quad	0x3fb797cc39ffd60f              # double 0.092160000000000006
	.quad	0x3fdc465625a682b6              # double 0.44179299999999999
	.quad	0x3fe58151a437824d              # double 0.67203599999999997
	.quad	0x3fe2c0b780346dc6              # double 0.58602500000000002
	.quad	0x3fedbf290abb44e5              # double 0.92958499999999999
	.quad	0x3faed117b5286b59              # double 0.060188999999999999
	.quad	0x3fe6088f861a60d4              # double 0.68854499999999996
	.quad	0x3fd38bd230b9dc2f              # double 0.30540899999999999
	.quad	0x3fefb5fc3b4f6167              # double 0.99096499999999998
	.quad	0x3fe8f2085b18548b              # double 0.77954500000000004
	.quad	0x3fe184230fcf80dc              # double 0.54737999999999998
	.quad	0x3fe4d2c7b890d5a6              # double 0.65073000000000003
	.quad	0x3f689374bc6a7efa              # double 0.0030000000000000001
	.quad	0x3fe0312f4cf4a559              # double 0.50600400000000001
	.quad	0x3fd08433d6c72192              # double 0.25806899999999999
	.quad	0x3fb68661ae70c133              # double 0.087987999999999997
	.quad	0x3fd2f1c75818c5ca              # double 0.29600700000000002
	.quad	0x3febca03c4b09e99              # double 0.86841000000000002
	.quad	0x3fc42bcf91a32b13              # double 0.157587
	.quad	0x3feed610adcd2d45              # double 0.96363100000000001
	.quad	0x3fd0f840181e03f7              # double 0.265152
	.quad	0x3fd5be8bc169c23b              # double 0.33975499999999997
	.quad	0x3fc209784ec636b1              # double 0.14091400000000001
	.quad	0x3fdb6473471f7942              # double 0.428006
	.quad	0x3fb9dfa871a3b14b              # double 0.10106900000000001
	.quad	0x3fe8d9bc33f85511              # double 0.77657900000000002
	.quad	0x3fb7b70ef566490a              # double 0.092636999999999997
	.quad	0x3fd7a60913a4f872              # double 0.36950899999999998
	.quad	0x3fd4aacd9e83e426              # double 0.32292500000000002
	.quad	0x3fe15785f8d2e515              # double 0.54193400000000003
	.quad	0x3fc2d07852f7f499              # double 0.14698700000000001
	.quad	0x3f93db7f1737542a              # double 0.019392
	.quad	0x3fe24fc1df3300de              # double 0.57223599999999997
	.quad	0x3fccf672b884406c              # double 0.226271
	.quad	0x3fef3a83f4eca687              # double 0.97589300000000001
	.quad	0x3fe7656eefa1e3eb              # double 0.731132
	.quad	0x3fd0d273d5bab218              # double 0.262845
	.quad	0x3fe4ab367a0f9097              # double 0.64590000000000003
	.quad	0x3fe65579af1886e0              # double 0.69793400000000005
	.quad	0x3fece92923e5b856              # double 0.90346199999999999
	.quad	0x3fd4f15e7c8d1959              # double 0.32723200000000002
	.quad	0x3fd5942d490e66cb              # double 0.337169
	.quad	0x3f9a398201cd5f9a              # double 0.025610000000000001
	.quad	0x3f8e596c82e019b1              # double 0.014819000000000001
	.quad	0x3fe563f141205bc0              # double 0.66844999999999999
	.quad	0x3fde09e98dcdb37d              # double 0.46935500000000002
	.quad	0x3fec0c88a47ecfea              # double 0.87653000000000003
	.quad	0x3feb996b76709fa5              # double 0.86247799999999997
	.quad	0x3fe48abb44e50c5f              # double 0.64193500000000003
	.quad	0x3fd5dea033e78e19              # double 0.34171299999999999
	.quad	0x3fef7ffde7210be9              # double 0.98437399999999997
	.quad	0x3feef92f2b66b617              # double 0.96791799999999994
	.quad	0x3fea8a5ce5b4245f              # double 0.82938999999999996
	.quad	0x3fee16249a133c1d              # double 0.94020300000000001
	.quad	0x3fd6653c9abb01c9              # double 0.34992899999999999
	.quad	0x3fe2ffbce4217d28              # double 0.59371799999999997
	.quad	0x3fa8b19a415f45e1              # double 0.048230000000000002
	.quad	0x3fe9332f01754b06              # double 0.78749800000000003
	.quad	0x3fee0fc504816f00              # double 0.93942499999999995
	.quad	0x3fe422424a276b7f              # double 0.62918200000000002
	.quad	0x3fead6fda836eb4f              # double 0.83874400000000005
	.quad	0x3fdd8359bc33f855              # double 0.461142
	.quad	0x3f9ed6777079e59f              # double 0.030114999999999999
	.quad	0x3fa81b866e43aa7a              # double 0.047085000000000002
	.quad	0x3fd8311a543f1c76              # double 0.37799700000000003
	.quad	0x3feaa450acc0bdcb              # double 0.83255800000000002
	.quad	0x3fedf4128bf3bea9              # double 0.93604399999999999
	.quad	0x3fe04842fa509396              # double 0.50882099999999997
	.quad	0x3fef0079a2834d27              # double 0.968808
	.quad	0x3fed8750c1b97354              # double 0.92276800000000003
	.quad	0x3fe62ee631f8a090              # double 0.69322499999999998
	.quad	0x3fe1a708ede54b49              # double 0.55164000000000002
	.quad	0x3fb0299d883ba344              # double 0.063134999999999997
	.quad	0x3fbf0c77dd872f34              # double 0.121284
	.quad	0x3fc659a73b42cc2d              # double 0.17461099999999999
	.quad	0x3feb4ea077036c9c              # double 0.85334799999999999
	.quad	0x3fdb5350092ccf6c              # double 0.42696000000000001
	.quad	0x3fa3ff25e56cd6c3              # double 0.039056
	.quad	0x3fed8438088509c0              # double 0.92239000000000004
	.quad	0x3fd8bdb5d894812c              # double 0.38657900000000001
	.quad	0x3fedca0e410b630b              # double 0.93091500000000005
	.quad	0x3fda1fc8f32378ab              # double 0.40819
	.quad	0x3fe6c42c7fbacb43              # double 0.71144700000000005
	.quad	0x3f9b3c3e74afd545              # double 0.026596999999999999
	.quad	0x3fe8231c64ba94bc              # double 0.75428600000000001
	.quad	0x3fcc62456f75d9a1              # double 0.221749
	.quad	0x3fa69ec2ce464990              # double 0.044179999999999997
	.quad	0x3fd2b167ec7863bf              # double 0.292078
	.quad	0x3fe4f1151611ba3d              # double 0.65442900000000004
	.quad	0x3fe4c024b33daf8e              # double 0.648455
	.quad	0x3fe78759253543af              # double 0.73527200000000004
	.quad	0x3fd1636b09635611              # double 0.27169300000000002
	.quad	0x3fefed3b6cbd987c              # double 0.99770899999999995
	.quad	0x3fd9e7924af0bf1a              # double 0.40475899999999998
	.quad	0x3fe6f1bac2df0d41              # double 0.71700799999999998
	.quad	0x3fecf060bb2bba99              # double 0.90434300000000001
	.quad	0x3fd7656eefa1e3eb              # double 0.365566
	.quad	0x3fe63e61cffeb075              # double 0.69511500000000004
	.quad	0x3fb7d4067cf1c326              # double 0.093078999999999995
	.quad	0x3fe2555c52e72da1              # double 0.57291999999999998
	.quad	0x3fe5c11c2a023209              # double 0.67982299999999996
	.quad	0x3fee697f1f9acffa              # double 0.95037799999999995
	.quad	0x3fe067afa7221859              # double 0.51265700000000003
	.quad	0x3fec42699c7bcc29              # double 0.88310699999999998
	.quad	0x3fe443393ab430f5              # double 0.63320600000000005
	.quad	0x3fee7a17f4128bf4              # double 0.95240400000000002
	.quad	0x3fe7d26b723ee1bd              # double 0.74443599999999999
	.quad	0x3f42be48a58b3f64              # double 5.7200000000000003E-4
	.quad	0x3fee754f3775b813              # double 0.95182
	.quad	0x3f6769a91105e1c1              # double 0.0028579999999999999
	.quad	0x3fed969c23b7952d              # double 0.92463499999999998
	.quad	0x3fd5d8904f6dfc5d              # double 0.34134300000000001
	.quad	0x3fe9becedd484513              # double 0.80454199999999998
	.quad	0x3fd1dc443914f484              # double 0.27906900000000001
	.quad	0x3fe8203e63e8dda5              # double 0.75393600000000005
	.quad	0x3fd7d9b5e95b78cd              # double 0.37266300000000002
	.quad	0x3fe16df1e0828c37              # double 0.54467100000000002
	.quad	0x3fedfa658c4bd33d              # double 0.93681599999999998
	.quad	0x3fed8e9d51b4fe7a              # double 0.92365900000000001
	.quad	0x3fe07b3d8e000863              # double 0.51504399999999995
	.quad	0x3fec625c810a569b              # double 0.88700699999999999
	.quad	0x3fd5eab367a0f909              # double 0.34244999999999998
	.quad	0x3fe90e0221426fe7              # double 0.78295999999999999
	.quad	0x3fe26889c1b54196              # double 0.57526100000000002
	.quad	0x3fcd93ee5eedcc21              # double 0.231077
	.quad	0x3f857689ca18bd66              # double 0.01048
	.quad	0x3fec329a1b9f98b7              # double 0.88117699999999999
	.quad	0x3fef671044f1a198              # double 0.98133099999999995
	.quad	0x3fe88854cdb7ae58              # double 0.76664200000000005
	.quad	0x3fec1f53825e13b2              # double 0.87882400000000005
	.quad	0x3fe9955f78359bc3              # double 0.79948399999999997
	.quad	0x3fcdadfb506dd69d              # double 0.23187199999999999
	.quad	0x3fd7816f0068db8c              # double 0.36727500000000002
	.quad	0x3fd8ad6451b93038              # double 0.38558300000000001
	.quad	0x3fe8742784a9478d              # double 0.76417900000000005
	.quad	0x3fe71d755bccaf71              # double 0.72234600000000004
	.quad	0x3fd496a26e547171              # double 0.32169399999999998
	.quad	0x3fe9432a8c9b8455              # double 0.78944899999999996
	.quad	0x3fe1624febd09e13              # double 0.54325100000000004
	.quad	0x3fd46c0d6f544bb2              # double 0.31909500000000002
	.quad	0x3fcc92a305532618              # double 0.22322500000000001
	.quad	0x3fec6c58eeae9ee4              # double 0.88822599999999996
	.quad	0x3fe5e7f0aa21a71a              # double 0.68456300000000003
	.quad	0x3fb66c2acb85a4f0              # double 0.087587999999999999
	.quad	0x3fd3d19157abb880              # double 0.309666
	.quad	0x3fdb06e5cd4ed2cc              # double 0.422296
	.quad	0x3fe3130be0ded289              # double 0.59607500000000002
	.quad	0x3fcf70d62bf11f92              # double 0.24563099999999999
	.quad	0x3fe63632c1f42bb6              # double 0.69411599999999996
	.quad	0x3fcffa1a0cf1800a              # double 0.24981999999999999
	.quad	0x3fe6d7fb69984a0e              # double 0.71386499999999997
	.quad	0x3fe0b69984a0e411              # double 0.52229000000000003
	.quad	0x3fceab2e1693c03c              # double 0.23959900000000001
	.quad	0x3fe167e846a5d6bf              # double 0.54393400000000003
	.quad	0x3fe51e55c0fcb4f2              # double 0.65995300000000001
	.quad	0x3fc8f4b61fe21d97              # double 0.194968
	.quad	0x3fcfb2788db0574b              # double 0.24763399999999999
	.quad	0x3fe930b9dc2f405f              # double 0.78719799999999995
	.quad	0x3fe2b0dd82fd75e2              # double 0.58409
	.quad	0x3fef641d4b6a619e              # double 0.98097100000000004
	.quad	0x3fce5de15ca6ca04              # double 0.23724000000000001
	.quad	0x3feb08a04d12018a              # double 0.84480299999999997
	.quad	0x3feaebacf7446f9c              # double 0.84126900000000004
	.quad	0x3fe9e004b7f5a533              # double 0.80859599999999998
	.quad	0x3fc232db1e9f2778              # double 0.142177
	.quad	0x3fe7b4117f84449e              # double 0.74073100000000003
	.quad	0x3fdc3aa369fcf3dc              # double 0.441079
	.quad	0x3fe19e7967caea74              # double 0.55059499999999995
	.quad	0x3fdece9a2c669058              # double 0.48136000000000001
	.quad	0x3fc179a6b50b0f28              # double 0.13652500000000001
	.quad	0x3fc58d716d2aa5c6              # double 0.168379
	.quad	0x3fe7b252ce032db2              # double 0.74051800000000001
	.quad	0x3fe07f023e9ea140              # double 0.51550399999999996
	.quad	0x3fcf4c016052502f              # double 0.244507
	.quad	0x3fd9dd2f1a9fbe77              # double 0.40412500000000001
	.quad	0x3fe3d525cc426352              # double 0.61976900000000001
	.quad	0x3fed45846e8f29d4              # double 0.91473599999999999
	.quad	0x3febdd9c27e95315              # double 0.87080199999999996
	.quad	0x3feebd09e12a51e3              # double 0.96057599999999998
	.quad	0x3fc39e83e425aee6              # double 0.15327499999999999
	.quad	0x3fd1f3cf70153bd1              # double 0.28050599999999998
	.quad	0x3fe87cb2d905c033              # double 0.76522199999999996
	.quad	0x3fd199c38b04ab60              # double 0.27500999999999998
	.quad	0x3fd9335d249e44fa              # double 0.39376
	.quad	0x3fdadaa4fca42aed              # double 0.419595
	.quad	0x3fed4b1897a67a53              # double 0.91541700000000004
	.quad	0x3f987d2c7b890d5a              # double 0.023914999999999999
	.quad	0x3fd828c79f666235              # double 0.37748900000000002
	.quad	0x3fe833ca31e7d999              # double 0.75632200000000005
	.quad	0x3f47b0f6ad70e6f3              # double 7.2300000000000001E-4
	.quad	0x3febbb8a19c9d5a2              # double 0.86664300000000005
	.quad	0x3fc746c332f01755              # double 0.18184700000000001
	.quad	0x3fefa13c254a3c64              # double 0.98843199999999997
	.quad	0x3fc5bbd7b2031ceb              # double 0.169795
	.quad	0x3fef39d7fd82773e              # double 0.97581099999999998
	.quad	0x3fe1e1b8ed1bf7ad              # double 0.55880399999999997
	.quad	0x3fb76cacd184c272              # double 0.091502
	.quad	0x3feb8a958537e2c5              # double 0.86066699999999996
	.quad	0x3fe66ab5807fed20              # double 0.70052599999999998
	.quad	0x3fe93e920c069e80              # double 0.78888800000000003
	.quad	0x3fe05e0f7fcfc3f8              # double 0.51148199999999999
	.quad	0x3f9c83a96d4c33b5              # double 0.027845999999999999
	.quad	0x3fe4b5d249e44fa0              # double 0.64719499999999996
	.quad	0x3fe827c9de050375              # double 0.754857
	.quad	0x3fe7539da16616b5              # double 0.72895699999999997
	.quad	0x3fe49ac79702e664              # double 0.64389399999999997
	.quad	0x3fd663dc486ad2dd              # double 0.34984500000000002
	.quad	0x3fed593c46d82ba6              # double 0.91714300000000004
	.quad	0x3fe995703f2d3c79              # double 0.79949199999999998
	.quad	0x3fd387f88765ba6f              # double 0.305174
	.quad	0x3fd90114d2f5dbba              # double 0.39069100000000001
	.quad	0x3fe91e92923e5b85              # double 0.78498199999999996
	.quad	0x3fe545132f87ad08              # double 0.664682
	.quad	0x3fda6c7eae5bc87e              # double 0.41287200000000002
	.quad	0x3fc6917d6b65a9a8              # double 0.176315
	.quad	0x3fecfe80389f83be              # double 0.90606699999999996
	.quad	0x3f94f0d844d013a9              # double 0.020449999999999999
	.quad	0x3fd440dd3fe1975f              # double 0.31645899999999999
	.quad	0x3fe6f950b955f783              # double 0.71793399999999996
	.quad	0x3fe8a0b5ed8d36b5              # double 0.76961800000000002
	.quad	0x3fc5508f648c7193              # double 0.166521
	.quad	0x3fe831960fa15db3              # double 0.75605299999999998
	.quad	0x3fca04b7f5a5332b              # double 0.20326900000000001
	.quad	0x3fb8358afc47e49b              # double 0.094566999999999998
	.quad	0x3fdeb28d8665e02f              # double 0.47964800000000002
	.quad	0x3fe634aa9717df1a              # double 0.69392900000000002
	.quad	0x3fe9d9be4cd74928              # double 0.80783000000000005
	.quad	0x3fd06cd29131ec0b              # double 0.25664199999999998
	.quad	0x3fe7893b7d84901d              # double 0.73550199999999999
	.quad	0x3fe56c43f5f91601              # double 0.66946600000000001
	.quad	0x3fa1348b220791c5              # double 0.033604000000000002
	.quad	0x3fdddf5cf2495e18              # double 0.46675800000000001
	.quad	0x3fe2c28b2a6b0d95              # double 0.58624799999999999
	.quad	0x3fdfda597d49d7ba              # double 0.49770199999999998
	.quad	0x3feb278d0cc35ce2              # double 0.84857800000000005
	.quad	0x3fe7c8b220791c4c              # double 0.74324900000000005
	.quad	0x3fbb90752da98677              # double 0.107673
	.quad	0x3fee913e81450efe              # double 0.95523000000000002
	.quad	0x3fca488c60cbf2b2              # double 0.20533899999999999
	.quad	0x3feedaa715831f04              # double 0.96419100000000002
	.quad	0x3fc1a28bb0a2ca9b              # double 0.13777300000000001
	.quad	0x3feb8c73abc94706              # double 0.86089499999999997
	.quad	0x3f991d9b1b79d90a              # double 0.024527
	.quad	0x3fea5cf893faf428              # double 0.82384900000000005
	.quad	0x3fe3a187a4a48f97              # double 0.61346800000000001
	.quad	0x3f95158b827fa1a1              # double 0.020590000000000001
	.quad	0x3fe79fc6da448494              # double 0.73825399999999997
	.quad	0x3fdd630ec3116228              # double 0.459171
	.quad	0x3fd4b178b3700475              # double 0.32333200000000001
	.quad	0x3fef3059641f6449              # double 0.97465199999999996
	.quad	0x3fdeb0dd82fd75e2              # double 0.479545
	.quad	0x3fe868e60807357e              # double 0.76280499999999996
	.quad	0x3fe0ab7995ee136e              # double 0.52093199999999995
	.quad	0x3fe07204295a6c5d              # double 0.51391799999999999
	.quad	0x3fe9255b035bd513              # double 0.78581000000000001
	.quad	0x3fda4f61672324c8              # double 0.41109499999999999
	.quad	0x3fed8a0b1bbcf4e8              # double 0.92310099999999995
	.quad	0x3fe11dde37585be2              # double 0.53489600000000004
	.quad	0x3fd4ddfc9ff92f2b              # double 0.32604899999999998
	.quad	0x3fd7aac1094a2b9d              # double 0.36979699999999999
	.quad	0x3fe85e2cdc011d36              # double 0.76149599999999995
	.quad	0x3fe616e158750c1c              # double 0.69029300000000005
	.quad	0x3fd0045baf533f42              # double 0.25026599999999999
	.quad	0x3fee61049235f80a              # double 0.94934300000000005
	.quad	0x3fdd6833c60029f1              # double 0.45948499999999998
	.quad	0x3faa5f41aef6f8f0              # double 0.051507999999999998
	.quad	0x3fe14b945308bb90              # double 0.54047599999999996
	.quad	0x3feb4dd0d8cb07d1              # double 0.85324900000000004
	.quad	0x3fe2cbd33d29563b              # double 0.58738100000000004
	.quad	0x3fe89057d1782d38              # double 0.76761999999999997
	.quad	0x3fd76c050bd87b57              # double 0.36596800000000002
	.quad	0x3fdd068123810e88              # double 0.45352199999999998
	.quad	0x3fea08fc9363f573              # double 0.81359700000000001
	.quad	0x3fe41fec99f1ae2e              # double 0.62889700000000004
	.quad	0x3fd4f251c193b3a7              # double 0.32729000000000003
	.quad	0x3fcd7ee4e26d4802              # double 0.230435
	.quad	0x3fef8b9baa1511e0              # double 0.985792
	.quad	0x3f9a92e62131a8ef              # double 0.025950999999999998
	.quad	0x3fdbb93ccd0fe8ab              # double 0.43318099999999998
	.quad	0x3fd47b677f6b1a2a              # double 0.32003199999999998
	.quad	0x3fef08ace24bba13              # double 0.96980900000000003
	.quad	0x3fd1754f3775b813              # double 0.272785
	.quad	0x3fddf77f27fe4bcb              # double 0.46823100000000001
	.quad	0x3fb166be7afa7222              # double 0.067974000000000007
	.quad	0x3fdc324851a86940              # double 0.44056899999999999
	.quad	0x3fd0fc2656abde40              # double 0.26539000000000001
	.quad	0x3fea5634549b62c7              # double 0.82302299999999995
	.quad	0x3fe8b3c3e74afd54              # double 0.77194399999999996
	.quad	0x3fe8fcfa26a22b39              # double 0.78088100000000005
	.quad	0x3fcc5d7cb2d905c0              # double 0.22160299999999999
	.quad	0x3fe2692b3cc4ac6d              # double 0.57533800000000002
	.quad	0x3fb21565c2d27807              # double 0.070638999999999993
	.quad	0x3fde0dae3e6c4c59              # double 0.46958499999999997
	.quad	0x3fc4c322291fb3fa              # double 0.16220499999999999
	.quad	0x3fee6c84f8f8a4c2              # double 0.95074700000000001
	.quad	0x3fef4c729f59ccfb              # double 0.978082
	.quad	0x3fe9c36544fe36d2              # double 0.80510199999999998
	.quad	0x3fea63779e9d0e99              # double 0.82464199999999999
	.quad	0x3f59b0ab2e1693c0              # double 0.0015679999999999999
	.quad	0x3fe9e0f1b25f633d              # double 0.80870900000000001
	.quad	0x3fdc682730c67169              # double 0.443857
	.quad	0x3fe3e30a915379fb              # double 0.62146500000000005
	.quad	0x3fdb9d8c6d612c6b              # double 0.43149100000000001
	.quad	0x3fd0d19dece57109              # double 0.26279400000000003
	.quad	0x3f826fa3fcc9ea9a              # double 0.0090019999999999996
	.quad	0x3fe016c1e364bec6              # double 0.50277799999999995
	.quad	0x3fdf057d1782d384              # double 0.48470999999999997
	.quad	0x3fbf3e78e1932d6f              # double 0.122047
	.quad	0x3fbbd34df04ddb55              # double 0.108693
	.quad	0x3fe9f81e8a2ec28b              # double 0.81153799999999998
	.quad	0x3fe8b636f3b213e4              # double 0.77224300000000001
	.quad	0x3fc66c2acb85a4f0              # double 0.175176
	.quad	0x3fea8854cdb7ae58              # double 0.82914200000000005
	.quad	0x3fd9e15011904b3c              # double 0.40437699999999999
	.quad	0x3fef112dba4d6e48              # double 0.97084700000000001
	.quad	0x3fcd3700474d9c6b              # double 0.228241
	.quad	0x3fe9765ba6efc372              # double 0.79569800000000002
	.quad	0x3fec28bf3bea91da              # double 0.87997400000000003
	.quad	0x3fd88cbd1244a622              # double 0.38358999999999999
	.quad	0x3fef9a2403148777              # double 0.98756600000000005
	.quad	0x3fc6523704790b85              # double 0.17438400000000001
	.quad	0x3fc0aae297396d09              # double 0.130215
	.quad	0x3fc2c6de76427c7c              # double 0.14669399999999999
	.quad	0x3fe7a9717df19d67              # double 0.73943400000000004
	.quad	0x3fec6978d4fdf3b6              # double 0.88787499999999997
	.quad	0x3fc5f6cacd184c27              # double 0.171594
	.quad	0x3fd2dd65a14488c6              # double 0.294763
	.quad	0x3fecf143393ab431              # double 0.904451
	.quad	0x3fcaa67e846a5d6c              # double 0.208206
	.quad	0x3fd6cc07aaef2c73              # double 0.35620299999999999
	.quad	0x3fe40dfdef8487ba              # double 0.62670800000000004
	.quad	0x3fe441871e6cd291              # double 0.63299899999999998
	.quad	0x3fe67761cbccf28c              # double 0.70207299999999995
	.quad	0x3fa5d6e04c059210              # double 0.042654999999999998
	.quad	0x3fb626809d495183              # double 0.086525000000000005
	.quad	0x3fd2eb9a176ddacf              # double 0.29563
	.quad	0x3fd84f1a1986b9c3              # double 0.379828
	.quad	0x3fd83a57eaa2a0a9              # double 0.37856099999999998
	.quad	0x3feb3d790752da98              # double 0.85125399999999996
	.quad	0x3f970691ea78af3e              # double 0.022485999999999999
	.quad	0x3fe28bd44998d046              # double 0.579569
	.quad	0x3fc00242d05f2885              # double 0.12506900000000001
	.quad	0x3fcbea5f84cad57c              # double 0.21809000000000001
	.quad	0x3fd193d96638433d              # double 0.27464899999999998
	.quad	0x3fd1a0e410b630a9              # double 0.275445
	.quad	0x3fe4b647baa9b49a              # double 0.64725100000000002
	.quad	0x3fd7bcfd4bf0995b              # double 0.37091000000000002
	.quad	0x3feb3cc8de2ac322              # double 0.85116999999999998
	.quad	0x3fd4ef0281ba7fc3              # double 0.32708799999999999
	.quad	0x3fe5fb17ce52deca              # double 0.68690099999999998
	.quad	0x3fe3f4a1272c94b4              # double 0.62361200000000006
	.quad	0x3feb845baf533f42              # double 0.85990699999999998
	.quad	0x3fe96b6177ea1c69              # double 0.79435800000000001
	.quad	0x3fa123810e8858ff              # double 0.033473999999999997
	.quad	0x3fb3f972474538ef              # double 0.078024999999999997
	.quad	0x3fc4672756861e93              # double 0.15939800000000001
	.quad	0x3fa9ec0b5675579b              # double 0.050629
	.quad	0x3fe62497fa5d28d0              # double 0.691967
	.quad	0x3fea967a95c853c1              # double 0.83086899999999997
	.quad	0x3fe78f301eabbcb2              # double 0.73622900000000002
	.quad	0x3fe7271fff79c843              # double 0.723526
	.quad	0x3fe919c38b04ab60              # double 0.78439499999999995
	.quad	0x3fcf5c52e72da123              # double 0.245005
	.quad	0x3fe1c9b1fab96f22              # double 0.555871
	.quad	0x3fdcd912556d19df              # double 0.45074900000000001
	.quad	0x3fa806af46aa087d              # double 0.046926000000000002
	.quad	0x3fa77e3d1cc100e7              # double 0.045885000000000002
	.quad	0x3fdc34eb9a176ddb              # double 0.44073000000000001
	.quad	0x3fecede33269df98              # double 0.90403900000000004
	.quad	0x3feceedcc20d562a              # double 0.90415800000000002
	.quad	0x3fea5ac03ff69015              # double 0.82357800000000003
	.quad	0x3fe7e8c692f6e829              # double 0.74716499999999997
	.quad	0x3fe80a116659d12d              # double 0.75122900000000004
	.quad	0x3fc08d9f90539fba              # double 0.12932199999999999
	.quad	0x3fd4ff7596851223              # double 0.32809199999999999
	.quad	0x3fe6b6b4c7f34938              # double 0.70980299999999996
	.quad	0x3fda25a682b62846              # double 0.40854800000000002
	.quad	0x3fc8a8e2e2b8c75c              # double 0.19265399999999999
	.quad	0x3fd930d73860999e              # double 0.39360600000000001
	.quad	0x3fae4d7f0ed3d85a              # double 0.059185000000000001
	.quad	0x3feb47ecfe9b7bf2              # double 0.85253000000000001
	.quad	0x3fe6ec2acb85a4f0              # double 0.71632899999999999
	.quad	0x3fe30f92af9a8cdf              # double 0.59565100000000004
	.quad	0x3feaa5460aa64c30              # double 0.83267500000000005
	.quad	0x3fefa0dbad3a604e              # double 0.98838599999999999
	.quad	0x3fda3968d759ee89              # double 0.40975400000000001
	.quad	0x3fc90247021d10b2              # double 0.195382
	.quad	0x3fc66601bc98a223              # double 0.174988
	.quad	0x3fe3c6c11a11233e              # double 0.61801200000000001
	.quad	0x3fedb3636f3b213e              # double 0.92814799999999997
	.quad	0x3fcda0f0a5efe932              # double 0.23147400000000001
	.quad	0x3fec711d798d8a98              # double 0.88880800000000004
	.quad	0x3fd721a2e7f6f4bf              # double 0.36142800000000003
	.quad	0x3fed5035371971c1              # double 0.91604099999999999
	.quad	0x3fdc8e7ddca4b125              # double 0.44619700000000001
	.quad	0x3fd0c23fab10ba62              # double 0.26185599999999998
	.quad	0x3fa1fe004b7f5a53              # double 0.035140999999999999
	.quad	0x3fe8a16c61522a6f              # double 0.76970499999999997
	.quad	0x3fea1bae46cfc82a              # double 0.81587900000000002
	.quad	0x3fedaa2a0a958538              # double 0.92702200000000001
	.quad	0x3fec483ec892ab69              # double 0.88381900000000002
	.quad	0x3fda2dd7a99fa11b              # double 0.40904800000000002
	.quad	0x3fdc2bfdb4cc2507              # double 0.44018499999999999
	.quad	0x3fe48088509bf9c6              # double 0.64068999999999998
	.quad	0x3fd2b3f63c31df76              # double 0.29223399999999999
	.quad	0x3fb9fc8f32378ab1              # double 0.10151
	.quad	0x3fe05744f5d35654              # double 0.51065300000000002
	.quad	0x3fd93422467be554              # double 0.39380700000000002
	.quad	0x3fb7f66e86c6583f              # double 0.093604000000000007
	.quad	0x3fc45a921ccd9620              # double 0.15901399999999999
	.quad	0x3fe7f000431bde83              # double 0.74804700000000002
	.quad	0x3fb710342aa9f7b6              # double 0.090091000000000004
	.quad	0x3fe6b2e9ccb7d417              # double 0.70933999999999997
	.quad	0x3fe0dbbe0157eed4              # double 0.52682399999999996
	.quad	0x3fb3abfb9bed30f0              # double 0.076842999999999994
	.quad	0x3fe83cc2938de6de              # double 0.75741700000000001
	.quad	0x3fc2d72799a1fd15              # double 0.14719099999999999
	.quad	0x3fcf691a75cd0bb7              # double 0.245395
	.quad	0x3fdf7d0aed99cbef              # double 0.49200700000000003
	.quad	0x3fe089edbf8b9baa              # double 0.51683699999999999
	.quad	0x3fad154866a11ec9              # double 0.056802999999999999
	.quad	0x3fc3fea8112ba16e              # double 0.15620899999999999
	.quad	0x3fec0a41a261bf38              # double 0.87625200000000003
	.quad	0x3fdb98d8a979e16d              # double 0.43120399999999998
	.quad	0x3fd5f1172ef0ae53              # double 0.34283999999999998
	.quad	0x3fea900a393ee5ef              # double 0.83008300000000002
	.quad	0x3fd313db7f173754              # double 0.29808699999999999
	.quad	0x3fc3348b220791c5              # double 0.15004100000000001
	.quad	0x3fea714db59578a3              # double 0.82633100000000004
	.quad	0x3fe02c7fbacb4289              # double 0.50543199999999999
	.quad	0x3fdcdd93c46d82ba              # double 0.45102399999999998
	.quad	0x3fe5d78a2a90cd42              # double 0.68256099999999997
	.quad	0x3fdd8366516db0de              # double 0.46114500000000003
	.quad	0x3fe10c8472c0e7bc              # double 0.53277799999999997
	.quad	0x3fd8ee675147f130              # double 0.38955099999999998
	.quad	0x3fd0fa93af74cd31              # double 0.26529399999999997
	.quad	0x3fe135e310dbf056              # double 0.53782799999999997
	.quad	0x3feb82ba5a038195              # double 0.85970800000000003
	.quad	0x3fe834ce3de6149c              # double 0.75644599999999995
	.quad	0x3fee74e874c8ffb9              # double 0.95177100000000003
	.quad	0x3fc4fd9fd36f7e3d              # double 0.16399
	.quad	0x3feb485c24c404a7              # double 0.85258299999999998
	.quad	0x3f9ebe596c82e01a              # double 0.030023000000000001
	.quad	0x3fc1b7c7820a30db              # double 0.13842099999999999
	.quad	0x3fe0a333764f11b6              # double 0.519922
	.quad	0x3febd9b1b79d909f              # double 0.87032399999999999
	.quad	0x3fc7fef39085f4a1              # double 0.187468
	.quad	0x3fe73636f3b213e4              # double 0.72536800000000001
	.quad	0x3feba50b524399b3              # double 0.86389700000000003
	.quad	0x3fca6223e1869835              # double 0.20612
	.quad	0x3fd8572de43ed95a              # double 0.38032100000000002
	.quad	0x3fa304ab606b7aa2              # double 0.037144999999999997
	.quad	0x3fe6ef06b37867f1              # double 0.71667800000000004
	.quad	0x3fe63f034b0e1b4c              # double 0.69519200000000003
	.quad	0x3fe792a94ff0025c              # double 0.736653
	.quad	0x3fdd4477ff151e75              # double 0.45730399999999999
	.quad	0x3fdef911cf355cd9              # double 0.48395199999999999
	.quad	0x3fd2f3300de4c511              # double 0.296093
	.quad	0x3fee38fde2ef4e01              # double 0.94445699999999999
	.quad	0x3fb2fe1da7b0b392              # double 0.074190000000000006
	.quad	0x3fee689656eefa1e              # double 0.95026699999999997
	.quad	0x3fd759210385c67e              # double 0.364815
	.quad	0x3fe4cff64cf8d717              # double 0.65038600000000002
	.quad	0x3fc0f55de58e64b2              # double 0.13248799999999999
	.quad	0x3fe73d9cae21101b              # double 0.726271
	.quad	0x3f9ed20296b3354c              # double 0.030098
	.quad	0x3fee7ce746cb966c              # double 0.95274700000000001
	.quad	0x3fc625742dcf4624              # double 0.17301800000000001
	.quad	0x3fe407724fa8b4c0              # double 0.62590900000000005
	.quad	0x3fe579207d4e0978              # double 0.67103599999999997
	.quad	0x3fec4ec636b09635              # double 0.88461599999999996
	.quad	0x3fd7acf312b1b36c              # double 0.36993100000000001
	.quad	0x3fea41b54195cc85              # double 0.82052099999999994
	.quad	0x3fe7b7aa25d8d79d              # double 0.74117
	.quad	0x3fdedde37585be1b              # double 0.48229300000000003
	.quad	0x3fc958537e2c55c9              # double 0.19800799999999999
	.quad	0x3fef9aaa3ad18d26              # double 0.98763000000000001
	.quad	0x3fdf94573a797892              # double 0.49342900000000001
	.quad	0x3fec8caa326e1156              # double 0.89217100000000005
	.quad	0x3fe8a76102795704              # double 0.770432
	.quad	0x3fd1d6a9c560c7c1              # double 0.278727
	.quad	0x3fca76295208e150              # double 0.206731
	.quad	0x3fb1d3671ac14c66              # double 0.069631999999999999
	.quad	0x3fe6a4df47f993d5              # double 0.70762599999999998
	.quad	0x3fd631db445ed4a2              # double 0.34679300000000002
	.quad	0x3fed9b003686a4ca              # double 0.92517099999999997
	.quad	0x3feaf04790b84988              # double 0.841831
	.quad	0x3fd5ffa3b9ae0c17              # double 0.34372799999999998
	.quad	0x3fe2798d8a979e17              # double 0.57733800000000002
	.quad	0x3f7a6b50b0f27bb3              # double 0.00645
	.quad	0x3fed1c560c7c0f45              # double 0.90970899999999999
	.quad	0x3feae09bb6aa4b99              # double 0.83991800000000005
	.quad	0x3fa8064a9cdc4439              # double 0.046922999999999999
	.quad	0x3fda3bafd976ff3b              # double 0.40989300000000001
	.quad	0x3fa24acf312b1b37              # double 0.035727000000000002
	.quad	0x3fd4f02c4d65e460              # double 0.32715899999999998
	.quad	0x3fe13a01eeed8905              # double 0.538331
	.quad	0x3fe29acbc8c0ce92              # double 0.58139600000000002
	.quad	0x3fe8465e89225311              # double 0.75858999999999999
	.quad	0x3fe43c382a12f901              # double 0.632351
	.quad	0x3fef5f00abf76a2f              # double 0.98034699999999996
	.quad	0x3fd4b51bd61f5be6              # double 0.32355400000000001
	.quad	0x3f82f3c2dadb8349              # double 0.009254
	.quad	0x3f7b003686a4ca4f              # double 0.0065919999999999998
	.quad	0x3fe3302d59d55e6c              # double 0.59963100000000003
	.quad	0x3fd8461b6d43d039              # double 0.37927899999999998
	.quad	0x3fcdf993d5347a5b              # double 0.234179
	.quad	0x3fecf78359bc33f8              # double 0.90521399999999996
	.quad	0x3feb13c46d82ba5a              # double 0.846163
	.quad	0x3fea26223e186983              # double 0.81715499999999996
	.quad	0x3fe8c3b2dd377e1c              # double 0.77388900000000004
	.quad	0x3fc1144cbe1eb420              # double 0.133432
	.quad	0x3fe21b34a44c7b03              # double 0.56582100000000002
	.quad	0x3fcea6e32e3821af              # double 0.23946799999999999
	.quad	0x3fe7f060bb2bba99              # double 0.74809300000000001
	.quad	0x3fe2d4801f75104d              # double 0.58843999999999996
	.quad	0x3fe2ed5f138bcdff              # double 0.591476
	.quad	0x3fd15058dde7a744              # double 0.27052900000000002
	.quad	0x3fc4fd113836a833              # double 0.16397300000000001
	.quad	0x3fe6fd3b29a1b9fa              # double 0.71841200000000005
	.quad	0x3febd043e5321e60              # double 0.86917299999999997
	.quad	0x3fc89e5e2478854d              # double 0.192333
	.quad	0x3feeba1f4b1ee243              # double 0.96021999999999996
	.quad	0x3fc9f3b645a1cac1              # double 0.20275000000000001
	.quad	0x3fb7470eb24a6a87              # double 0.090927999999999995
	.quad	0x3fe41c1b54195cc8              # double 0.62843099999999996
	.quad	0x3fcd23aafff36ac6              # double 0.22765099999999999
	.quad	0x3f961b6d43d03969              # double 0.021589000000000001
	.quad	0x3fd0ad85dfa871a4              # double 0.26059100000000002
	.quad	0x3fe53059641f6449              # double 0.66215199999999996
	.quad	0x3feb14bdfd2630ec              # double 0.84628199999999997
	.quad	0x3fe52f01754b05b8              # double 0.66198800000000002
	.quad	0x3fea6f1bac2df0d4              # double 0.82606299999999999
	.quad	0x3fe775903a7546d4              # double 0.733101
	.quad	0x3fef36b09635610b              # double 0.97542600000000001
	.quad	0x3fe397bb73083559              # double 0.61227200000000004
	.quad	0x3fb11f81a5870da6              # double 0.066887000000000002
	.quad	0x3fc7ab7564302b41              # double 0.18492
	.quad	0x3fdc6a50d6b228dd              # double 0.44398900000000002
	.quad	0x3fe5f3a9b0681238              # double 0.68599399999999999
	.quad	0x3fc5912dba4d6e48              # double 0.168493
	.quad	0x3fe8d5410f94c87a              # double 0.77603200000000006
	.quad	0x3fe4018a43bb40b3              # double 0.62518799999999997
	.quad	0x3fe29e90795f676f              # double 0.58185600000000004
	.quad	0x3f8a0b5ed8d36b4c              # double 0.012716999999999999
	.quad	0x3fe16fbb0e5e6794              # double 0.54488899999999996
	.quad	0x3fbef1a9fbe76c8b              # double 0.120875
	.quad	0x3fe889bb6aa4b988              # double 0.76681299999999997
	.quad	0x3fe3aa6d26740810              # double 0.61455400000000004
	.quad	0x3fe9244a6223e187              # double 0.78568000000000005
	.quad	0x3fdaaafbc1acde1a              # double 0.416686
	.quad	0x3fe772239e6ab9b2              # double 0.73268299999999997
	.quad	0x3fe410c2c5e2cdc0              # double 0.62704599999999999
	.quad	0x3fb6e7d566cf41f2              # double 0.089474999999999998
	.quad	0x3fd241461b6d43d0              # double 0.28523399999999999
	.quad	0x3fd15903a7546d40              # double 0.27105800000000002
	.quad	0x3fc00a5accd53049              # double 0.12531600000000001
	.quad	0x3fdc8f36694898f6              # double 0.446241
	.quad	0x3feb6798958d9b5f              # double 0.85639600000000005
	.quad	0x3fedc8e25c810a57              # double 0.93077200000000004
	.quad	0x3fe4a4c1ebc83a97              # double 0.64511200000000002
	.quad	0x3fd8fa11a975afb0              # double 0.39026300000000003
	.quad	0x3f9b5525cc426352              # double 0.026692
	.quad	0x3fd1dfb9389b5200              # double 0.27927999999999997
	.quad	0x3fd39d40ee06d938              # double 0.306473
	.quad	0x3fe5009d495182aa              # double 0.65632500000000005
	.quad	0x3feee7e62dc6e2a8              # double 0.96580799999999999
	.quad	0x3fe7e6f2e8c0485a              # double 0.74694199999999999
	.quad	0x3fb229307af20ea6              # double 0.070941000000000004
	.quad	0x3fbcad14a0a0f4d8              # double 0.112016
	.quad	0x3fe9be5109070fbf              # double 0.80448200000000003
	.quad	0x3fcff92f2b66b617              # double 0.24979199999999999
	.quad	0x3fef51569f490603              # double 0.97867899999999996
	.quad	0x3fcc45a1cac08312              # double 0.22087499999999999
	.quad	0x3fedd55a3a08398a              # double 0.93229399999999996
	.quad	0x3fe1ee04c0592104              # double 0.56030500000000005
	.quad	0x3fedb380cb6c7a7d              # double 0.92816200000000004
	.quad	0x3fef001f75104d55              # double 0.96876499999999998
	.quad	0x3fee7cdab191dde3              # double 0.95274099999999995
	.quad	0x3fd976f2a5a469d7              # double 0.39788499999999999
	.quad	0x3fd767b1c0010c6f              # double 0.36570399999999997
	.quad	0x3fda1dfb9389b520              # double 0.40808
	.quad	0x3fd3d74d594f26af              # double 0.31001600000000001
	.quad	0x3fefb19c5a3e39f7              # double 0.99043099999999995
	.quad	0x3fe047f349385836              # double 0.50878299999999999
	.quad	0x3fe50fd5cb790fb6              # double 0.65818299999999996
	.quad	0x3fb1616f86a09891              # double 0.067892999999999995
	.quad	0x3fe3222706d50657              # double 0.59791899999999998
	.quad	0x3fcc5fc7e6b3fea0              # double 0.22167300000000001
	.quad	0x3fc124af0bf1a5ca              # double 0.133932
	.quad	0x3fc35629d8409e56              # double 0.15106700000000001
	.quad	0x3f83dc8b86b15f89              # double 0.009698
	.quad	0x3fe3abe6a337a80d              # double 0.614734
	.quad	0x3fc24e69f05ea24d              # double 0.14301800000000001
	.quad	0x3fb5a2c669057d18              # double 0.084515000000000007
	.quad	0x3fdc43632c1f42bb              # double 0.44161299999999998
	.quad	0x3fcb606317268d33              # double 0.21387900000000001
	.quad	0x3fd692189bd8383b              # double 0.35266700000000001
	.quad	0x3fe449d9d3458cd2              # double 0.634015
	.quad	0x3fdc1b10fd7e4580              # double 0.43915199999999999
	.quad	0x3fea302f72b45283              # double 0.81838200000000005
	.quad	0x3feae3022dd7a9a0              # double 0.84021100000000004
	.quad	0x3fe1c14c660a2014              # double 0.55484599999999995
	.quad	0x3fdb99e94ab1d4fa              # double 0.43126900000000001
	.quad	0x3fcc69b5a63f9a4a              # double 0.22197600000000001
	.quad	0x3feda9a1b9f98b72              # double 0.92695700000000003
	.quad	0x3fefca0a0f4d7add              # double 0.99341299999999999
	.quad	0x3fc0aa7ded6ba8c6              # double 0.13020300000000001
	.quad	0x3fb2c7863beec398              # double 0.073357000000000006
	.quad	0x3fd442d05f288484              # double 0.31657800000000003
	.quad	0x3fe52da554b8bef9              # double 0.66182200000000002
	.quad	0x3fb3b4b2fa93af75              # double 0.076976000000000003
	.quad	0x3fefb0c026cc1ca4              # double 0.99032600000000003
	.quad	0x3fe87e718a86d71f              # double 0.76543499999999998
	.quad	0x3fda5097c80841ee              # double 0.41116900000000001
	.quad	0x3feca3161a1db878              # double 0.89490800000000004
	.quad	0x3fe04f765fd8adac              # double 0.50970000000000004
	.quad	0x3fec89d0635a426c              # double 0.89182300000000003
	.quad	0x3fd73bd9cae21102              # double 0.36302800000000002
	.quad	0x3febc99ae924f228              # double 0.86836000000000002
	.quad	0x3fe5cd013a92a305              # double 0.68127499999999996
	.quad	0x3fdc481b21c475e6              # double 0.44190099999999999
	.quad	0x3f91b71758e21965              # double 0.017299999999999999
	.quad	0x3fc6dbdf8f473040              # double 0.17858499999999999
	.quad	0x3fd279702e6644d8              # double 0.28866199999999997
	.quad	0x3fe2e1309c7ffde7              # double 0.58998899999999999
	.quad	0x3f91b152f3c2dadc              # double 0.017278000000000002
	.quad	0x3fec6ae5bc87db2b              # double 0.88804899999999998
	.quad	0x3fe8490c4dec1c1d              # double 0.75891699999999995
	.quad	0x3fd6d2aa5c5f7c67              # double 0.35660799999999998
	.quad	0x3fe1e76640a6b93d              # double 0.55949700000000002
	.quad	0x3feba65add9c27e9              # double 0.86405699999999996
	.quad	0x3fe1a20791c4b902              # double 0.55102899999999999
	.quad	0x3fe50d173fb7a5f4              # double 0.65784799999999999
	.quad	0x3fc72d5e071c53f4              # double 0.18107200000000001
	.quad	0x3fb86ad2dcb1465f              # double 0.095380000000000006
	.quad	0x3f893037d63022dd              # double 0.012298999999999999
	.quad	0x3fec172cd7cf5f4e              # double 0.87782899999999997
	.quad	0x3fc9accd530489d2              # double 0.20058599999999999
	.quad	0x3feb5909f1f14984              # double 0.85461900000000001
	.quad	0x3fe3cd9c6b053198              # double 0.61884899999999998
	.quad	0x3fdc8c32a8c9b845              # double 0.44605699999999998
	.quad	0x3fdd6705c896dd27              # double 0.45941300000000002
	.quad	0x3fd32de43ed959a3              # double 0.299676
	.quad	0x3fe0651f3e89a88b              # double 0.51234400000000002
	.quad	0x3fd7823854046413              # double 0.36732300000000001
	.quad	0x3fcec4bd33d29564              # double 0.24037900000000001
	.quad	0x3fd8bd72bcb5fe54              # double 0.38656299999999999
	.quad	0x3fdc1eeed8904f6e              # double 0.439388
	.quad	0x3fd8d4aa10e02214              # double 0.38797999999999999
	.quad	0x3fd2494d50ebaade              # double 0.28572399999999998
	.quad	0x3fef9e1d2178f68c              # double 0.98805100000000001
	.quad	0x3fc853b8e4b87bdd              # double 0.190055
	.quad	0x3fd4290257c914b1              # double 0.31500299999999998
	.quad	0x3fea0dac258d5843              # double 0.81416900000000003
	.quad	0x3fe67985271bcdbc              # double 0.70233400000000001
	.quad	0x3fca881e4712e408              # double 0.20727899999999999
	.quad	0x3fef3e707e175d14              # double 0.97637200000000001
	.quad	0x3fcd65f5275ee99a              # double 0.22967399999999999
	.quad	0x3fc8751ce28ed5f1              # double 0.19107399999999999
	.quad	0x3fbd76145953586d              # double 0.115083
	.quad	0x3fde85b5b70691ea              # double 0.47691099999999997
	.quad	0x3fe1edb50f40e5a3              # double 0.56026699999999996
	.quad	0x3fdd0e23af31b153              # double 0.453988
	.quad	0x3fd102c0a4a05dd9              # double 0.265793
	.quad	0x3fe8655e28aa4335              # double 0.762374
	.quad	0x3fdd7368ad688377              # double 0.46016899999999999
	.quad	0x3fecbfbbd7b2031d              # double 0.89840500000000001
	.quad	0x3feac577d955714c              # double 0.83660500000000004
	.quad	0x3fe676ddaceee0f4              # double 0.70201000000000002
	.quad	0x3fec60d66f0cfe15              # double 0.88682099999999997
	.quad	0x3fafe43675ddd2af              # double 0.062288000000000003
	.quad	0x3fec5eb95e5aff2a              # double 0.88656299999999999
	.quad	0x3fe64677b395c422              # double 0.696102
	.quad	0x3fedb4c5da6a4441              # double 0.92831699999999995
	.quad	0x3fe4a378ab0c88a4              # double 0.64495499999999995
	.quad	0x3fc3fd2630ec3116              # double 0.156163
	.quad	0x3fe5f1886df82b1f              # double 0.68573399999999995
	.quad	0x3fdcb4070329802c              # double 0.448488
	.quad	0x3fd760dcb9a9da59              # double 0.36528699999999997
	.quad	0x3fed580c308feac4              # double 0.91699799999999997
	.quad	0x3fdfa85caafbc1ad              # double 0.49465100000000001
	.quad	0x3fa033c60029f16b              # double 0.031645
	.quad	0x3fbc8a9bcfd4bf0a              # double 0.11149000000000001
	.quad	0x3fd838433d6c7219              # double 0.37843399999999999
	.quad	0x3fd15a7d24180d3d              # double 0.271148
	.quad	0x3fce01ffb480a5ad              # double 0.23443600000000001
	.quad	0x3fd733c60029f16b              # double 0.362535
	.quad	0x3fdd75ab7dc7abfc              # double 0.46030700000000002
	.quad	0x3fdd891e215336df              # double 0.46149400000000002
	.quad	0x3fc115df6555c52e              # double 0.13347999999999999
	.quad	0x3fed1691a75cd0bb              # double 0.90900499999999995
	.quad	0x3fc9577963992c8c              # double 0.19798199999999999
	.quad	0x3fe9a569b17481b2              # double 0.80144199999999999
	.quad	0x3fef7d5885d31338              # double 0.984051
	.quad	0x3fde43a647fdc593              # double 0.47287899999999999
	.quad	0x3fe19c51dabe2718              # double 0.55033200000000004
	.quad	0x3fe767be553ac4f8              # double 0.73141400000000001
	.quad	0x3fe352bf5515054b              # double 0.60385100000000003
	.quad	0x3fedd1569f490603              # double 0.93180399999999997
	.quad	0x3fe9a61e0c5a8156              # double 0.80152800000000002
	.quad	0x3fdf53b0813cab82              # double 0.489483
	.quad	0x3fd0b9e8c47a17f4              # double 0.261347
	.quad	0x3fdca4ca4f440af2              # double 0.44755800000000001
	.quad	0x3fe7397bb7308356              # double 0.72576700000000005
	.quad	0x3fed80713f077ccc              # double 0.92192899999999999
	.quad	0x3fe2bb384fd2a62b              # double 0.58535400000000004
	.quad	0x3fe9b5f5f0b28523              # double 0.80346200000000001
	.quad	0x3fd465cf67b1c001              # double 0.318714
	.quad	0x3fb8e3369b9d7fd8              # double 0.097216999999999998
	.quad	0x3fe2886df82b1f68              # double 0.57915399999999995
	.quad	0x3fd0e2328f9f44d4              # double 0.26380599999999998
	.quad	0x3feb550225742dcf              # double 0.85412699999999997
	.quad	0x3fd0d4aa10e02214              # double 0.26297999999999999
	.quad	0x3fd02c4d65e46067              # double 0.25270399999999998
	.quad	0x3fd5743e963dc487              # double 0.33522000000000002
	.quad	0x3feaaaac1094a2ba              # double 0.83333400000000002
	.quad	0x3fe9474751ce28ed              # double 0.78995099999999996
	.quad	0x3fe93dccea28fe26              # double 0.788794
	.quad	0x3fb03dab5c39bcba              # double 0.063440999999999997
	.quad	0x3fdce0370cdc8755              # double 0.451185
	.quad	0x3fd5064ece9a2c67              # double 0.32851000000000002
	.quad	0x3fe74a9cdc443915              # double 0.727858
	.quad	0x3fc01b2a27f1b691              # double 0.125829
	.quad	0x3fdde0ac7da1ec4e              # double 0.46683799999999998
	.quad	0x3fec6e675147f130              # double 0.88847699999999996
	.quad	0x3fdfa19439de481f              # double 0.49423699999999998
	.quad	0x3fcca087ca643cc0              # double 0.22364899999999999
	.quad	0x3f9da059a73b42cc              # double 0.028931999999999999
	.quad	0x3fe40509bf9c62a2              # double 0.62561500000000003
	.quad	0x3fe3058bc59b8024              # double 0.59442700000000004
	.quad	0x3fd72eb5f5f0b285              # double 0.36222599999999999
	.quad	0x3fda23e9ea140571              # double 0.40844200000000003
	.quad	0x3fed48ecd8dbcec8              # double 0.91515199999999997
	.quad	0x3fed45f17bd8be73              # double 0.91478800000000005
	.quad	0x3fd2df2239e6ab9b              # double 0.29486899999999999
	.quad	0x3fc6f47b677f6b1a              # double 0.179336
	.quad	0x3fe842070b8cfbfc              # double 0.75805999999999995
	.quad	0x3feaa480e8c8abd6              # double 0.83258100000000002
	.quad	0x3fd3d9cf13cee9dd              # double 0.31016899999999997
	.quad	0x3fe0855b89939219              # double 0.51627900000000004
	.quad	0x3fe5d36501e2584f              # double 0.68205499999999997
	.quad	0x3fc153825e13b18e              # double 0.13536100000000001
	.quad	0x3facdf69878316a0              # double 0.056391999999999998
	.quad	0x3fe9525edd052935              # double 0.79130500000000004
	.quad	0x3fda56605ee568a5              # double 0.411522
	.quad	0x3fdce8bc169c23b8              # double 0.45170500000000002
	.quad	0x3f9936c58eeae9ee              # double 0.024622999999999999
	.quad	0x3fe3b986338b47c7              # double 0.61639699999999997
	.quad	0x3fe49461b6d43d04              # double 0.64311300000000005
	.quad	0x3fe8d204af922963              # double 0.77563700000000002
	.quad	0x3fe2000218def417              # double 0.56250100000000003
	.quad	0x3fee823422467be5              # double 0.95339399999999996
	.quad	0x3fa7c957cd466f50              # double 0.046457999999999999
	.quad	0x3fd925dd095af295              # double 0.39293600000000001
	.quad	0x3fe8eac215b9a5a9              # double 0.77865700000000004
	.quad	0x3fe3533d29563a9f              # double 0.60391099999999998
	.quad	0x3fe4872d1aeb3dd1              # double 0.64150099999999999
	.quad	0x3fe938b47c73eee5              # double 0.78817199999999998
	.quad	0x3fc9af31b152f3c3              # double 0.200659
	.quad	0x3feb8c32a8c9b845              # double 0.86086399999999996
	.quad	0x3fcfe99e94ab1d50              # double 0.24931700000000001
	.quad	0x3fe5474b838c111b              # double 0.66495300000000002
	.quad	0x3fd7a415f45e0b4e              # double 0.36939
	.quad	0x3fe632c625e99e95              # double 0.69369800000000004
	.quad	0x3fe06a7ac81d3aa3              # double 0.51299799999999995
	.quad	0x3fce5fd8adab9f56              # double 0.23730000000000001
	.quad	0x3fc2ce4649906cca              # double 0.14692
	.quad	0x3fe9e1cde5d18091              # double 0.80881400000000003
	.quad	0x3feeb48909289dae              # double 0.959538
	.quad	0x3fecd5e4a3832767              # double 0.90110999999999997
	.quad	0x3fd9ceb356da0169              # double 0.40324100000000002
	.quad	0x3fdab9841aac53b1              # double 0.41757300000000003
	.quad	0x3fc2fd438d1d8a55              # double 0.14835400000000001
	.quad	0x3fec01083dbc2331              # double 0.87512599999999996
	.quad	0x3fec4ba732df505d              # double 0.88423499999999999
	.quad	0x3fd6f840181e03f7              # double 0.358902
	.quad	0x3fc28027d88c1db0              # double 0.144536
	.quad	0x3fe287f023e9ea14              # double 0.579094
	.quad	0x3fe07b86f47b677f              # double 0.51507899999999995
	.quad	0x3fc892f6e82949a5              # double 0.19198499999999999
	.quad	0x3fe46ad9274e22a3              # double 0.63804300000000003
	.quad	0x3fd609fe86833c60              # double 0.34436
	.quad	0x3fdd1b584b1ab085              # double 0.45479399999999998
	.quad	0x3fd0540cc78e9f6b              # double 0.25513000000000002
	.quad	0x3fdd99dcb5781c71              # double 0.46251599999999998
	.quad	0x3febe1b8ed1bf7ad              # double 0.87130399999999997
	.quad	0x3fe701cf7878b7a2              # double 0.71897100000000003
	.quad	0x3fe1a5892684cf07              # double 0.55145699999999997
	.quad	0x3fefdec3dab5c39c              # double 0.99594300000000002
	.quad	0x3fbe4cc6822ff089              # double 0.11835900000000001
	.quad	0x3fd01e6cd29131ec              # double 0.251857
	.quad	0x3fefc27418d6909b              # double 0.992487
	.quad	0x3fabb57c4e2f37fc              # double 0.054119
	.quad	0x3fdfe0c176577532              # double 0.49809300000000001
	.quad	0x3fe7177a7008a698              # double 0.72161600000000004
	.quad	0x3fdb2491afc04c8c              # double 0.42410700000000001
	.quad	0x3fc83bc4d22c881e              # double 0.18932399999999999
	.quad	0x3fe9cf1e4b44a1f1              # double 0.80653300000000006
	.quad	0x3fcf0a88effe2a3d              # double 0.242509
	.quad	0x3fd9178f68be2f7b              # double 0.39206299999999999
	.quad	0x3fe5d24399b2c40d              # double 0.681917
	.quad	0x3fd33a9f383f0baf              # double 0.30045300000000003
	.quad	0x3fe871c3265add9c              # double 0.76388699999999998
	.quad	0x3fde8a2ec28b2a6b              # double 0.477184
	.quad	0x3fb44e7253da72a8              # double 0.079322000000000004
	.quad	0x3fea908e581cf788              # double 0.83014600000000005
	.quad	0x3fea734938583622              # double 0.826573
	.quad	0x3fbeac96cc5fbf83              # double 0.119821
	.quad	0x3fdaee0b0af5fd48              # double 0.42077900000000001
	.quad	0x3febaf405f6ba062              # double 0.865143
	.quad	0x3fe232031ceaf252              # double 0.56860500000000003
	.quad	0x3f9dbd2fa0d77b7c              # double 0.029041999999999998
	.quad	0x3fdf661ae70c1334              # double 0.49060700000000002
	.quad	0x3fe442bf9830e3ce              # double 0.63314800000000004
	.quad	0x3fecaf48c2e770bd              # double 0.896397
	.quad	0x3fde831f03d145d8              # double 0.47675299999999998
	.quad	0x3fe67ab96f21f6cb              # double 0.70248100000000002
	.quad	0x3fe0b7b8d3f1843c              # double 0.52242699999999997
	.quad	0x3fe26c8b43958106              # double 0.57574999999999998
	.quad	0x3feae3e29307af21              # double 0.84031800000000001
	.quad	0x3fee8ac9f2fdb8fe              # double 0.95444200000000001
	.quad	0x3fd26f19934efcbd              # double 0.28803099999999998
	.quad	0x3fdf5dbb9cf9a06a              # double 0.49009599999999998
	.quad	0x3fa71e8e60807358              # double 0.045155000000000001
	.quad	0x3fd73bb40b34e768              # double 0.36301899999999998
	.quad	0x3fd093faf42784a9              # double 0.25903199999999998
	.quad	0x3feec7da1ec4e725              # double 0.96189599999999997
	.quad	0x3fdf0e9d51b4fe7a              # double 0.485267
	.quad	0x3fe355ae1cde5d18              # double 0.604209
	.quad	0x3fc78ee286727568              # double 0.18404799999999999
	.quad	0x3fa6f672b884406c              # double 0.044849
	.quad	0x3fe47f3493858362              # double 0.64052799999999999
	.quad	0x3fbbe86833c6002a              # double 0.109015
	.quad	0x3fe710ba6266fd65              # double 0.72079199999999999
	.quad	0x3feee6b3fe9fadb0              # double 0.96566200000000002
	.quad	0x3fe43b60285ec3db              # double 0.63224800000000003
	.quad	0x3fe6f0c1333b96af              # double 0.716889
	.quad	0x3fe97f23cc8de2ac              # double 0.79676999999999997
	.quad	0x3fe1615a8deb0fae              # double 0.54313400000000001
	.quad	0x3fd4856e696a26e5              # double 0.32064399999999998
	.quad	0x3fe8580c308feac4              # double 0.76074799999999997
	.quad	0x3fc9afb7e90ff972              # double 0.20067499999999999
	.quad	0x3fc981cf7878b7a2              # double 0.19927400000000001
	.quad	0x3fcaa62aa19439de              # double 0.20819599999999999
	.quad	0x3fbe946801711948              # double 0.119452
	.quad	0x3fe5ac647778dd61              # double 0.67729399999999995
	.quad	0x3fe6cc1a8ac5c140              # double 0.71241500000000002
	.quad	0x3fe140aaeafab53d              # double 0.53914399999999996
	.quad	0x3fef92d3415b1423              # double 0.98667300000000002
	.quad	0x3fc44f7ec3547e07              # double 0.15867600000000001
	.quad	0x3fdd7b84db9c7369              # double 0.46066400000000002
	.quad	0x3fc69435ac8a3726              # double 0.176398
	.quad	0x3fb102de00d1b717              # double 0.066449999999999995
	.quad	0x3fdfbed740c4156e              # double 0.49602299999999999
	.quad	0x3f9798958d9b5e96              # double 0.023043000000000001
	.quad	0x3fed329c347e8cce              # double 0.91242800000000002
	.quad	0x3fd5db877ab32485              # double 0.34152399999999999
	.quad	0x3fdbc9320d9945b7              # double 0.43415500000000001
	.quad	0x3fefb293d102bc73              # double 0.99054900000000001
	.quad	0x3fc769a91105e1c1              # double 0.18291199999999999
	.quad	0x3fef318dac258d58              # double 0.97479899999999997
	.quad	0x3fede3cfb3311a54              # double 0.93405899999999997
	.quad	0x3fd08d60a6330510              # double 0.258629
	.quad	0x3fe739085f4a1273              # double 0.72571200000000002
	.quad	0x3feb0dc981beb181              # double 0.84543299999999999
	.quad	0x3fed297e132b55ef              # double 0.91131499999999999
	.quad	0x3fd98793dd97f62b              # double 0.39889999999999998
	.quad	0x3fecca9cdc443915              # double 0.899733
	.quad	0x3fd66594af4f0d84              # double 0.34994999999999998
	.quad	0x3fc0ac647778dd61              # double 0.13026099999999999
	.quad	0x3fa730c67168f8e8              # double 0.045294000000000001
	.quad	0x3fc1b43d89ce4a7b              # double 0.13831299999999999
	.quad	0x3fef7202107b7846              # double 0.98266699999999996
	.quad	0x3fd0a57646ae3a3b              # double 0.26009900000000002
	.quad	0x3fe90d77b7c7820a              # double 0.78289399999999998
	.quad	0x3fd27acc4ef88b97              # double 0.28874499999999997
	.quad	0x3f7dcc63f141205c              # double 0.0072750000000000002
	.quad	0x3fe551a21ea35936              # double 0.666215
	.quad	0x3fd55daad601ffb5              # double 0.33384200000000003
	.quad	0x3fac68448cf7caa7              # double 0.055482999999999998
	.quad	0x3fef9e279dd3bafe              # double 0.98805600000000005
	.quad	0x3fd1ea897635e743              # double 0.27994000000000002
	.quad	0x3fd8adcd2d44dca9              # double 0.38560800000000001
	.quad	0x3fc37a80cf9e3865              # double 0.15217600000000001
	.quad	0x3fd8d71f36262cba              # double 0.38812999999999998
	.quad	0x3fe3b5807fed2029              # double 0.61590599999999995
	.quad	0x3fef68427418d691              # double 0.98147700000000004
	.quad	0x3fe142938de6ddf0              # double 0.539377
	.quad	0x3fd2b8bac710cb29              # double 0.29252499999999998
	.quad	0x3fd10ecfa69be09c              # double 0.26652900000000002
	.quad	0x3fc48d5410f94c88              # double 0.16056300000000001
	.quad	0x3fd3d44998d045fe              # double 0.309832
	.quad	0x3fd152934acaff6d              # double 0.27066499999999999
	.quad	0x3fe859d3458cd20b              # double 0.760965
	.quad	0x3fc60cae642bf983              # double 0.172262
	.quad	0x3fe015dd4c76d118              # double 0.50266900000000003
	.quad	0x3fd02839042d8c2a              # double 0.25245499999999998
	.quad	0x3fe9b9f98b71b8aa              # double 0.803952
	.quad	0x3fe1973d9ec70004              # double 0.54971199999999998
	.quad	0x3fddf748a159817c              # double 0.46821800000000002
	.quad	0x3fe37b6fe2e6ea85              # double 0.60881799999999997
	.quad	0x3fd6a22b3892ee85              # double 0.35364800000000002
	.quad	0x3feacd4024b33db0              # double 0.83755500000000005
	.quad	0x3fda63305100a394              # double 0.412304
	.quad	0x3fc0726d04e618ce              # double 0.128492
	.quad	0x3fc5b6cbd987c632              # double 0.16964099999999999
	.quad	0x3fd2ef2c7325918a              # double 0.295848
	.quad	0x3fa18611fd5885d3              # double 0.034225999999999999
	.quad	0x3fc2559f6ec5b079              # double 0.143238
	.quad	0x3fddc6195464dc23              # double 0.46521600000000002
	.quad	0x3fdfacabc5154867              # double 0.49491400000000002
	.quad	0x3fb53458cd20afa3              # double 0.082830000000000001
	.quad	0x3fd1ae6c8f755369              # double 0.27627099999999999
	.quad	0x3fe3d11be6e65387              # double 0.61927600000000005
	.quad	0x3fdc82b1f687b13a              # double 0.44547700000000001
	.quad	0x3fd7baba7b9170d6              # double 0.37077199999999999
	.quad	0x3feb1c2e33eff195              # double 0.84719
	.quad	0x3fe22a1d755bccaf              # double 0.56764099999999995
	.quad	0x3fef97a02fb5d031              # double 0.98725899999999999
	.quad	0x3faf80346dc5d639              # double 0.061525000000000003
	.quad	0x3fa706b37867f0aa              # double 0.044972999999999999
	.quad	0x3fbe09784ec636b1              # double 0.11733200000000001
	.quad	0x3fe21ce6c093d966              # double 0.56602799999999998
	.quad	0x3fead8d79d0a6762              # double 0.83896999999999999
	.quad	0x3fed35a63f9a49c3              # double 0.91279900000000003
	.quad	0x3fbe63d816aceaaf              # double 0.118711
	.quad	0x3fd440ee06d93815              # double 0.31646299999999999
	.quad	0x3fddaf4adbc664d4              # double 0.46382400000000001
	.quad	0x3feff10a99b6f5cb              # double 0.998174
	.quad	0x3fccc332f01754b0              # double 0.22470699999999999
	.quad	0x3fd517c5ef62f9ca              # double 0.32957599999999998
	.quad	0x3feba98eda22f6a5              # double 0.86444799999999999
	.quad	0x3fd4053e2d6238da              # double 0.31281999999999999
	.quad	0x3fe6bde82d7b634e              # double 0.71068200000000004
	.quad	0x3fe4234eb9a176de              # double 0.62931000000000004
	.quad	0x3fb068fd199bb279              # double 0.064102000000000006
	.quad	0x3fd95564b662fdfc              # double 0.39583699999999999
	.quad	0x3fe370ae536501e2              # double 0.60750499999999996
	.quad	0x3fd56544fe36d224              # double 0.33430599999999999
	.quad	0x3fef8348f53c579f              # double 0.98477599999999998
	.quad	0x3fefc3cc07aaef2c              # double 0.99265099999999995
	.quad	0x3fe1431bde82d7b6              # double 0.53944199999999998
	.quad	0x3fead0f840181e04              # double 0.838009
	.quad	0x3fe9d527e5215769              # double 0.80727000000000004
	.quad	0x3fa8fffbce4217d3              # double 0.048828000000000003
	.quad	0x3fea2055757d5a9f              # double 0.81644700000000003
	.quad	0x3fd71b4bb5e0f7fd              # double 0.361041
	.quad	0x3febfaeff5c6c11a              # double 0.87438199999999999
	.quad	0x3fede6d9be4cd749              # double 0.93442999999999998
	.quad	0x3fe07487fcb923a3              # double 0.51422500000000004
	.quad	0x3fed2d6238da3c21              # double 0.91178999999999999
	.quad	0x3fefc8d5c74751ce              # double 0.99326599999999998
	.quad	0x3febb6544fe36d22              # double 0.86600699999999997
	.quad	0x3f963e07a28bb0a3              # double 0.021721000000000001
	.quad	0x3fe20f776c4827b7              # double 0.564388
	.quad	0x3fc439b456b441bc              # double 0.15801100000000001
	.quad	0x3fde11f926c7eae6              # double 0.46984700000000001
	.quad	0x3fda7e9531550ca2              # double 0.41397600000000001
	.quad	0x3feb57eaa2a0a958              # double 0.85448199999999996
	.quad	0x3fc63fcc9ea9a3d3              # double 0.173822
	.quad	0x3fdf42c3c9eecbfb              # double 0.48845
	.quad	0x3fc1d15f02c4d65e              # double 0.13920199999999999
	.quad	0x3fe62a25d8d79d0a              # double 0.69264499999999996
	.quad	0x3fdf7c88e79aae6d              # double 0.49197600000000002
	.quad	0x3fe23ebe1650a45d              # double 0.57015899999999997
	.quad	0x3fd82c59fb1e18f0              # double 0.37770700000000001
	.quad	0x3fe6186338b47c74              # double 0.69047700000000001
	.quad	0x3fe02e642bf9830e              # double 0.50566299999999997
	.quad	0x3fdcb2314013ec46              # double 0.448376
	.quad	0x3fe5a49a133c1ce7              # double 0.67634300000000003
	.quad	0x3fe8dc0767d34df0              # double 0.77685899999999997
	.quad	0x3fda22c01e68a0d3              # double 0.40837099999999998
	.quad	0x3fd30c9d9d3458cd              # double 0.29764499999999999
	.quad	0x3fe91bb6aa4b9885              # double 0.78463300000000002
	.quad	0x3fe6278f25a250f8              # double 0.69232899999999997
	.quad	0x3fee214f0520d131              # double 0.94156600000000001
	.quad	0x3fc575ea67e846a6              # double 0.167661
	.quad	0x3fd076cce5f7403e              # double 0.25725100000000001
	.quad	0x3fd250c5eb313be2              # double 0.28617999999999999
	.quad	0x3fe12f965b20b806              # double 0.53705899999999995
	.quad	0x3fee4a558ea7ce10              # double 0.94657400000000003
	.quad	0x3fe20d7be9856a38              # double 0.56414600000000004
	.quad	0x3fd58d1958969a0b              # double 0.33673700000000001
	.quad	0x3fc85ae5ffa3b9ae              # double 0.190274
	.quad	0x3fedf7b17ce52ded              # double 0.93648600000000004
	.quad	0x3fedd441355475a3              # double 0.93215999999999999
	.quad	0x3fe966299524bfd3              # double 0.79372100000000001
	.quad	0x3fcb3471f79420b4              # double 0.212538
	.quad	0x3fa439ffd60e94ee              # double 0.039504999999999998
	.quad	0x3fd03f6c2699c7bd              # double 0.25387100000000001
	.quad	0x3fdf85c67dfe32a0              # double 0.49253999999999998
	.quad	0x3fdcb9a5a89b951c              # double 0.44883099999999998
	.quad	0x3fe864b87bdcf030              # double 0.76229499999999994
	.quad	0x3fe50a24463065f9              # double 0.65748799999999996
	.quad	0x3fda2a0ec7432010              # double 0.40881699999999999
	.quad	0x3fe7403bc4d22c88              # double 0.72659099999999999
	.quad	0x3fed4bf2b239a390              # double 0.91552100000000003
	.quad	0x3fd65c2d2780778a              # double 0.34937600000000002
	.quad	0x3fea1d10b1feeb2d              # double 0.816048
	.quad	0x3fedc610f0e90bc8              # double 0.93042800000000003
	.quad	0x3fe2b62e90364389              # double 0.58473900000000001
	.quad	0x3fe67fc9795b35b1              # double 0.70309900000000003
	.quad	0x3fda43393ab430f5              # double 0.41035300000000002
	.quad	0x3fec5b7cfe586013              # double 0.88616799999999996
	.quad	0x3fe384a0e410b631              # double 0.60994000000000004
	.quad	0x3feafeb6bf444e0e              # double 0.84359300000000004
	.quad	0x3fedd48cb4aec8d6              # double 0.93219600000000002
	.quad	0x3fe5ab1704ff4342              # double 0.67713500000000004
	.quad	0x3fa62e2b8c75c4a8              # double 0.043320999999999998
	.quad	0x3fec27a63736cdf2              # double 0.87983999999999996
	.quad	0x3fd749774256bca5              # double 0.36385899999999999
	.quad	0x3fdb710cb295e9e2              # double 0.42877500000000002
	.quad	0x3fd72c5197a24895              # double 0.36208000000000001
	.quad	0x3fec508919ef954f              # double 0.88483100000000003
	.quad	0x3fb750c1b97353b5              # double 0.091076000000000004
	.quad	0x3fa48f32378ab0c9              # double 0.040155000000000003
	.quad	0x3fce7a5b0ff10ecb              # double 0.23810899999999999
	.quad	0x3fe40b0292817764              # double 0.62634400000000001
	.quad	0x3fd0f1843c3a42f2              # double 0.264741
	.quad	0x3febb2b990afe60c              # double 0.86556699999999997
	.quad	0x3fcfc3c5bd0e12e8              # double 0.24816199999999999
	.quad	0x3fee0e90bc7b45f1              # double 0.93927799999999995
	.quad	0x3fe2ba109d0635a4              # double 0.58521299999999998
	.quad	0x3fd94ac6cdaf4adc              # double 0.39518900000000001
	.quad	0x3fe7b11409a24031              # double 0.74036599999999997
	.quad	0x3fd6ca148ba83f4f              # double 0.35608400000000001
	.quad	0x3fef212d77318fc5              # double 0.97279999999999999
	.quad	0x3fc52e1ef73c0c20              # double 0.16547000000000001
	.quad	0x3feea23e18698351              # double 0.95730499999999996
	.quad	0x3fe807e5a78f25a2              # double 0.75096399999999996
	.quad	0x3fe6bf727136a401              # double 0.71087
	.quad	0x3fee129cbab649d4              # double 0.93977200000000005
	.quad	0x3fe338583621fafd              # double 0.60062800000000005
	.quad	0x3fe613faf42784a9              # double 0.68993899999999997
	.quad	0x3fca67e846a5d6bf              # double 0.20629600000000001
	.quad	0x3fc4bdc26dce39b4              # double 0.16204099999999999
	.quad	0x3fe1769ec2ce464a              # double 0.54573000000000005
	.quad	0x3fbfc2dadb8348f5              # double 0.124067
	.quad	0x3fe13c6eb0b7c350              # double 0.53862699999999997
	.quad	0x3fe35510d38cda6e              # double 0.60413399999999995
	.quad	0x3fd191d9b1b79d91              # double 0.27452700000000002
	.quad	0x3fd994ee392e1ef7              # double 0.39971499999999999
	.quad	0x3fde586876e1dead              # double 0.47414600000000001
	.quad	0x3fe71359791819d2              # double 0.72111199999999998
	.quad	0x3fec28bb0a2ca9ac              # double 0.87997199999999997
	.quad	0x3fe4734938583622              # double 0.639073
	.quad	0x3fe3d8622c450269              # double 0.62016400000000005
	.quad	0x3fea4280ae104923              # double 0.82061799999999996
	.quad	0x3fe6a81fd9ba1b19              # double 0.70802299999999996
	.quad	0x3fb5bf7ad4b2745c              # double 0.084953000000000001
	.quad	0x3fde12f09d8c6d61              # double 0.46990599999999999
	.quad	0x3fe3742784a9478d              # double 0.60792900000000005
	.quad	0x3fdb61bf37b8d3f2              # double 0.42784100000000003
	.quad	0x3fe3b62845996745              # double 0.61598600000000003
	.quad	0x3fe99cf7878b7a1c              # double 0.80041099999999998
	.quad	0x3fe3d1b4fe79ee03              # double 0.61934900000000004
	.quad	0x3fd9dd5d3dc8b86b              # double 0.404136
	.quad	0x3fd2765fd8adab9f              # double 0.28847499999999998
	.quad	0x3fdbfab10ba62670              # double 0.43717600000000001
	.quad	0x3fc9ae0c17657753              # double 0.200624
	.quad	0x3fdf9a1fd1569f49              # double 0.493782
	.quad	0x3fe8795b35b0bbf5              # double 0.76481399999999999
	.quad	0x3fc7b899392189be              # double 0.18532100000000001
	.quad	0x3fd893037d63022e              # double 0.38397300000000001
	.quad	0x3fa3f077ccc03793              # double 0.038943999999999999
	.quad	0x3fefcf1e4b44a1f1              # double 0.99403300000000005
	.quad	0x3fe6f3b645a1cac1              # double 0.71725000000000005
	.quad	0x3fe65568e820e62a              # double 0.69792600000000005
	.quad	0x3fe0e427c7c5260f              # double 0.52785099999999996
	.quad	0x3fe788a265f0f5a1              # double 0.735429
	.quad	0x3fe1f28e92d55a3a              # double 0.560859
	.quad	0x3feda0535c9e6688              # double 0.92582100000000001
	.quad	0x3fe78e8427418d69              # double 0.736147
	.quad	0x3fdb149c6f36ef80              # double 0.42313299999999998
	.quad	0x3fe10678c0053e2d              # double 0.53203999999999996
	.quad	0x3fc92b6f19934efd              # double 0.19663800000000001
	.quad	0x3fa50d0678c0053e              # double 0.041114999999999999
	.quad	0x3feade5aff2a172b              # double 0.83964300000000003
	.quad	0x3fe9befae7924af1              # double 0.80456300000000003
	.quad	0x3fd4432ca57a786c              # double 0.31659999999999999
	.quad	0x3fe00ec311622813              # double 0.50180199999999997
	.quad	0x3f742917507e9d95              # double 0.0049220000000000002
	.quad	0x3fd350331e3a7daa              # double 0.30176999999999998
	.quad	0x3fd432617c1bda51              # double 0.31557499999999999
	.quad	0x3fe1caf0bf1a5ca3              # double 0.55602300000000004
	.quad	0x3fd75b317efe0ce1              # double 0.36494100000000002
	.quad	0x3fe2be1437c5692b              # double 0.58570299999999997
	.quad	0x3feb097a67a52ac7              # double 0.84490699999999996
	.quad	0x3fe2c2bd7f51efb7              # double 0.58627200000000002
	.quad	0x3fb6c9afe1da7b0b              # double 0.089014999999999997
	.quad	0x3fe455dc4007570c              # double 0.63548099999999996
	.quad	0x3fc4cef672b88440              # double 0.16256599999999999
	.quad	0x3fe454c76d117b53              # double 0.63534900000000005
	.quad	0x3feaff5a5332acfb              # double 0.84367099999999995
	.quad	0x3fe8923a29c779a7              # double 0.76785000000000003
	.quad	0x3fd12ce89656eefa              # double 0.26836599999999999
	.quad	0x3fccac8e68e3ef28              # double 0.22401599999999999
	.quad	0x3fae86c6583e8577              # double 0.059622000000000001
	.quad	0x3fb155e6bc621b7e              # double 0.067716999999999999
	.quad	0x3fbc6a6e32e3821b              # double 0.110999
	.quad	0x3fe7bebe1650a45d              # double 0.74203399999999997
	.quad	0x3fec4fc610f0e90c              # double 0.88473800000000002
	.quad	0x3fe85a9435ac8a37              # double 0.76105699999999998
	.quad	0x3fcb778dd616f86a              # double 0.214586
	.quad	0x3fd8662fdfc19c17              # double 0.38123699999999999
	.quad	0x3fef0e820e629952              # double 0.97052099999999997
	.quad	0x3fed8eb24a6a875d              # double 0.92366899999999996
	.quad	0x3fce348f53c579f2              # double 0.23597899999999999
	.quad	0x3fdef6512a94ff00              # double 0.48378399999999999
	.quad	0x3fe83677f6b1a2a5              # double 0.75664900000000002
	.quad	0x3fd4fdf3b645a1cb              # double 0.32800000000000001
	.quad	0x3fd05c182ecaeea6              # double 0.25562099999999999
	.quad	0x3fdc40f238972043              # double 0.44146400000000002
	.quad	0x3fefc003254e6e22              # double 0.99218899999999999
	.quad	0x3fd4dbfceb78897f              # double 0.32592700000000002
	.quad	0x3fe688bda9435ac9              # double 0.70419200000000004
	.quad	0x3fc1daceee0f3cb4              # double 0.13949
	.quad	0x3fe00dbf0563ed0f              # double 0.50167799999999996
	.quad	0x3fd003686a4ca4f4              # double 0.25020799999999999
	.quad	0x3fe6556084a515cf              # double 0.69792200000000004
	.quad	0x3fc3f3a57eaa2a0b              # double 0.15587300000000001
	.quad	0x3fe637dc7abfb9bf              # double 0.69431900000000002
	.quad	0x3fe4fa1e3eaf6838              # double 0.655532
	.quad	0x3fe9ebcc6c54bcf1              # double 0.81003400000000003
	.quad	0x3fe7518b0d0edc3c              # double 0.72870400000000002
	.quad	0x3feaa1dfb9389b52              # double 0.83226
	.quad	0x3fe109dadfb506dd              # double 0.53245299999999995
	.quad	0x3fc535f3d7d3910c              # double 0.165709
	.quad	0x3fe5fbdad7518b0d              # double 0.68699399999999999
	.quad	0x3f7754b05b7cfe58              # double 0.0056959999999999997
	.quad	0x3fe7ccfd08d4bad8              # double 0.74377300000000002
	.quad	0x3fc9464dc22ab25b              # double 0.19745799999999999
	.quad	0x3fe9f4d1633482bf              # double 0.81113500000000005
	.quad	0x3fecdb4cc2507208              # double 0.90176999999999996
	.quad	0x3fa99b4dcebfec14              # double 0.050013000000000002
	.quad	0x3fd0af251c193b3a              # double 0.26068999999999998
	.quad	0x3fd840bbb1f255f3              # double 0.37895099999999998
	.quad	0x3fbc77ee4e26d480              # double 0.111205
	.quad	0x3fedb8c111ada76e              # double 0.92880300000000005
	.quad	0x3fdfe1cde5d18091              # double 0.49815700000000002
	.quad	0x3fd6a4d6e47dc37a              # double 0.35381099999999999
	.quad	0x3fba2174c4cdfaca              # double 0.102073
	.quad	0x3fa9cbee807bbb62              # double 0.050383999999999998
	.quad	0x3fee65492ff4ba52              # double 0.94986400000000004
	.quad	0x3fc8b0d0edc3bd5a              # double 0.19289600000000001
	.quad	0x3fd223aafff36ac6              # double 0.28342699999999998
	.quad	0x3fe67646ae3a3a8e              # double 0.70193799999999995
	.quad	0x3fde077ccc037931              # double 0.46920699999999999
	.quad	0x3fe0217f4128bf3c              # double 0.50408900000000001
	.quad	0x3fdb4fdb09a671ef              # double 0.42674899999999999
	.quad	0x3fef8bb4d48882f1              # double 0.98580400000000001
	.quad	0x3feddbc87db2b346              # double 0.93307899999999999
	.quad	0x3fe72d1287c200c1              # double 0.72425200000000001
	.quad	0x3fe328112ba16e7a              # double 0.59864099999999998
	.quad	0x3fe0a23e18698351              # double 0.51980499999999996
	.quad	0x3fd022749f0e4da1              # double 0.25210300000000002
	.quad	0x3fea8c5004fb1184              # double 0.82962800000000003
	.quad	0x3fa78d4fdf3b645a              # double 0.045999999999999999
	.quad	0x3fef9d0203e63e8e              # double 0.98791600000000002
	.quad	0x3fd2cc0bdcad14a1              # double 0.29370400000000002
	.quad	0x3fe1ec460ed80a18              # double 0.56009200000000003
	.quad	0x3fe610539fba450b              # double 0.68949300000000002
	.quad	0x3fee6a67e846a5d7              # double 0.95048900000000003
	.quad	0x3fe9482be8bc169c              # double 0.79005999999999998
	.quad	0x3fea99ce075f6fd2              # double 0.83127499999999999
	.quad	0x3fcc045baf533f42              # double 0.21888299999999999
	.quad	0x3fb4468448cf7caa              # double 0.079200999999999993
	.quad	0x3fd5533f42352eb6              # double 0.333206
	.quad	0x3fb3a0945f9df549              # double 0.076669000000000001
	.quad	0x3fec50b73d188f43              # double 0.884853
	.quad	0x3fe0ea2f48c2e771              # double 0.52858700000000003
	.quad	0x3fd141d084e831ad              # double 0.26964199999999999
	.quad	0x3fdc76ab5807fed2              # double 0.444743
	.quad	0x3fd9b39e279dd3bb              # double 0.401588
	.quad	0x3fee1bbf0dc768e0              # double 0.94088700000000002
	.quad	0x3fd7fd82773e24ff              # double 0.37484800000000001
	.quad	0x3feb36d655e28aa4              # double 0.85044399999999997
	.quad	0x3fe25be7f2c3009b              # double 0.57371899999999998
	.quad	0x3fe8c070329802c1              # double 0.77349100000000004
	.quad	0x3fdd1fa333764f12              # double 0.45505600000000002
	.quad	0x3fd3a7f8012dfd69              # double 0.30712699999999998
	.quad	0x3fe4053e2d6238da              # double 0.62563999999999997
	.quad	0x3fdceebb341e14be              # double 0.452071
	.quad	0x3fb048387df5cf25              # double 0.063602000000000006
	.quad	0x3fdebe1650a45d42              # double 0.480352
	.quad	0x3fdb3458cd20afa3              # double 0.42507
	.quad	0x3fb4896dd26b723f              # double 0.080222000000000002
	.quad	0x3fe02131a8ef77f2              # double 0.50405199999999994
	.quad	0x3fecb302f72b4528              # double 0.89685199999999998
	.quad	0x3fee5c486ad2dcb1              # double 0.94876499999999997
	.quad	0x3fe34f2f123c42a6              # double 0.60341599999999995
	.quad	0x3fd54d338f798527              # double 0.33283699999999999
	.quad	0x3fe4c6ef3d3a1d32              # double 0.64928399999999997
	.quad	0x3fe9a938de6ddf01              # double 0.80190700000000004
	.quad	0x3fb30fe047d3d428              # double 0.074460999999999999
	.quad	0x3fe941d8e8640208              # double 0.78928799999999999
	.quad	0x3fd67c6327ed84d3              # double 0.35134199999999999
	.quad	0x3fd41b43526527a2              # double 0.314164
	.quad	0x3fde2c669057d178              # double 0.47145999999999999
	.quad	0x3fde0a24463065f9              # double 0.46936899999999998
	.quad	0x3feeab8a5ce5b424              # double 0.95843999999999995
	.quad	0x3fd5914f483cafb4              # double 0.33699400000000002
	.quad	0x3fd2cf5b1c864884              # double 0.293906
	.quad	0x3fed2ea3161a1db8              # double 0.91194299999999995
	.quad	0x3fe18db2702a3487              # double 0.54854700000000001
	.quad	0x3fe8448adeebb342              # double 0.75836700000000001
	.quad	0x3fdf2e2b8c75c4a8              # double 0.48719299999999999
	.quad	0x3fc7fb71fbc5de9c              # double 0.187361
	.quad	0x3fd8f3e468cac4b5              # double 0.38988600000000001
	.quad	0x3fd32849cb252ce0              # double 0.29933399999999999
	.quad	0x3fd22ca9ac365450              # double 0.28397600000000001
	.quad	0x3fea0b11409a2403              # double 0.81385099999999999
	.quad	0x3fce7b1c0010c6f8              # double 0.23813200000000001
	.quad	0x3fe490eed02cd39e              # double 0.64269200000000004
	.quad	0x3fec69c886162f16              # double 0.88791299999999995
	.quad	0x3fd1c6c11a11233e              # double 0.277756
	.quad	0x3fe521d53cddd6e0              # double 0.66037999999999997
	.quad	0x3fd329563a9f383f              # double 0.299398
	.quad	0x3fe7a597d49d7ba6              # double 0.73896399999999995
	.quad	0x3fa6b7457c0b1359              # double 0.044366999999999997
	.quad	0x3fc04c51116a8b8f              # double 0.127329
	.quad	0x3fe64d8127b2cc71              # double 0.69696100000000005
	.quad	0x3fb010e8858ff759              # double 0.062757999999999994
	.quad	0x3fe12f6a50d6b229              # double 0.53703800000000002
	.quad	0x3fe79a415f45e0b5              # double 0.73758000000000001
	.quad	0x3febbd07c84b5dcc              # double 0.86682499999999995
	.quad	0x3fd2faca36199781              # double 0.29655700000000002
	.quad	0x3fdc63d3e4ef0282              # double 0.44359300000000002
	.quad	0x3fbe12b5e529bae4              # double 0.11747299999999999
	.quad	0x3fec3c21187e7c07              # double 0.88234000000000001
	.quad	0x3fe5d1eb851eb852              # double 0.68187500000000001
	.quad	0x3fde8b588e368f08              # double 0.47725499999999998
	.quad	0x3fda141205bc01a3              # double 0.40747499999999998
	.quad	0x3febb9eadd590c0b              # double 0.86644500000000002
	.quad	0x3fe9d9e83e425aee              # double 0.80784999999999996
	.quad	0x3fea79591cd1c7de              # double 0.82731299999999997
	.quad	0x3fa575c0767d34df              # double 0.041914
	.quad	0x3fde24f6598e10cf              # double 0.47100599999999998
	.quad	0x3fe64a2fcefaa476              # double 0.69655599999999995
	.quad	0x3fed51f81a5870da              # double 0.91625599999999996
	.quad	0x3fbfbd9cae21101b              # double 0.123987
	.quad	0x3fe515e17e34b945              # double 0.65892099999999998
	.quad	0x3fc9d5ed06fef7c2              # double 0.20184099999999999
	.quad	0x3fd02d40aaeafab5              # double 0.25276199999999999
	.quad	0x3fedadadb8348f54              # double 0.92745100000000002
	.quad	0x3fda1a9fbe76c8b4              # double 0.40787499999999999
	.quad	0x3fef6f1dc50ce4eb              # double 0.98231400000000002
	.quad	0x3fe510795f676ea4              # double 0.65826099999999999
	.quad	0x3fdd8fb00bcbe61d              # double 0.461895
	.quad	0x3fe0798958d9b5e9              # double 0.51483599999999996
	.quad	0x3fede6c093d96638              # double 0.93441799999999997
	.quad	0x3fd077d523b3636f              # double 0.25731399999999999
	.quad	0x3fe6dba4d6e47dc3              # double 0.71431199999999995
	.quad	0x3fea87f88765ba6f              # double 0.829098
	.quad	0x3fd2fe21d96e9bbf              # double 0.296761
	.quad	0x3fcd2c1f42bb6673              # double 0.227909
	.quad	0x3fdc425aee631f8a              # double 0.44155
	.quad	0x3fdf10d7be9856a3              # double 0.48540299999999997
	.quad	0x3feca220bc382a13              # double 0.894791
	.quad	0x3feed8be7296f651              # double 0.96395799999999998
	.quad	0x3fe73e24febd09e1              # double 0.72633599999999998
	.quad	0x3fdc3393ab430f49              # double 0.44064799999999998
	.quad	0x3fe773c0c1fc8f32              # double 0.73287999999999998
	.quad	0x3fdc8fc9363f572e              # double 0.44627600000000001
	.quad	0x3fb9b499d0203e64              # double 0.100412
	.quad	0x3fd1d6ece13f4a99              # double 0.27874300000000002
	.quad	0x3fe351e108c3f3e0              # double 0.60374499999999998
	.quad	0x3fc986876e1deacd              # double 0.19941800000000001
	.quad	0x3fde9567dbb16c1e              # double 0.47786899999999999
	.quad	0x3fde7d1fe64f54d2              # double 0.476387
	.quad	0x3f955ef1fddebd90              # double 0.02087
	.quad	0x3fdf42917507e9d9              # double 0.48843799999999998
	.quad	0x3fe554845132f87b              # double 0.66656700000000002
	.quad	0x3fc65d8d79d0a676              # double 0.17473
	.quad	0x3f9a1cac083126e9              # double 0.025499999999999998
	.quad	0x3fe36ab367a0f909              # double 0.60677499999999995
	.quad	0x3fe17c2ca148ba84              # double 0.546408
	.quad	0x3fd3a597d49d7ba6              # double 0.30698199999999998
	.quad	0x3fe96323bbc6eb0b              # double 0.79335199999999995
	.quad	0x3fea2979e16d6dc2              # double 0.81756300000000004
	.quad	0x3fe14dfce3150dae              # double 0.54076999999999997
	.quad	0x3fe9fac6045baf53              # double 0.81186199999999997
	.quad	0x3fd7bb62413db7f1              # double 0.37081199999999997
	.quad	0x3fcd8ac9f2fdb8fe              # double 0.230798
	.quad	0x3fc2d349be8ff328              # double 0.14707300000000001
	.quad	0x3fd2bf9830e3cd9a              # double 0.29294399999999998
	.quad	0x3fdd5ff609dcf894              # double 0.458982
	.quad	0x3fe4ce3bcd35a858              # double 0.65017499999999995
	.quad	0x3fd1c6327ed84d34              # double 0.27772200000000002
	.quad	0x3fb11a543f1c7582              # double 0.066808000000000006
	.quad	0x3fc3a493c89f40a3              # double 0.15346000000000001
	.quad	0x3fdb12dba4d6e47e              # double 0.42302600000000001
	.quad	0x3fdf48cf7caa758a              # double 0.488819
	.quad	0x3fb650c5eb313be2              # double 0.087169999999999997
	.quad	0x3fd80e90bc7b45f1              # double 0.37588899999999997
	.quad	0x3feb7867f0aa21a7              # double 0.85844799999999999
	.quad	0x3fbaf2b66b6177ea              # double 0.105266
	.quad	0x3fee823a6ce3582a              # double 0.95339700000000005
	.quad	0x3fdd119ce075f6fd              # double 0.45419999999999999
	.quad	0x3fc12f7f498c3b0c              # double 0.13426199999999999
	.quad	0x3fda294dd72367e4              # double 0.408771
	.quad	0x3fda6fb8f57f737e              # double 0.41306900000000002
	.quad	0x3feba6202539756d              # double 0.86402900000000005
	.quad	0x3fd76c9c0a8d21bc              # double 0.366004
	.quad	0x3fe2d6e696a26e54              # double 0.58873299999999995
	.quad	0x3fd77ed41b75a74c              # double 0.367116
	.quad	0x3fe5b59146e4c0df              # double 0.67841399999999996
	.quad	0x3fcfc1ce6c093d96              # double 0.24810199999999999
	.quad	0x3fdd973d9ec70004              # double 0.46235599999999999
	.quad	0x3fe9e5add9c27e95              # double 0.80928699999999998
	.quad	0x3fe4f2f9873ffac2              # double 0.65466000000000002
	.quad	0x3fae97d06bbdbe3c              # double 0.059752
	.quad	0x3fcbc5de9c0229a6              # double 0.216976
	.quad	0x3fd37c7820a30db7              # double 0.30447200000000002
	.quad	0x3fb8b1feeb2d0a24              # double 0.096465999999999996
	.quad	0x3fd08d21bc126a66              # double 0.25861400000000001
	.quad	0x3fd60a2014727dcc              # double 0.34436800000000001
	.quad	0x3fecb3e9a6f826ee              # double 0.89696200000000004
	.quad	0x3fc65e2478854cdb              # double 0.17474799999999999
	.quad	0x3fdf41cc532a4980              # double 0.48839100000000002
	.quad	0x3fcf20e1f7d73c92              # double 0.24319099999999999
	.quad	0x3febc2b51bd61f5c              # double 0.86751800000000001
	.quad	0x3fc93f8db4890929              # double 0.19725200000000001
	.quad	0x3fe8a355043e5322              # double 0.76993800000000001
	.quad	0x3fa60d4562e09fe8              # double 0.043069999999999997
	.quad	0x3fedeb18116ebd4d              # double 0.934948
	.quad	0x3fe557cd466f501a              # double 0.66696800000000001
	.quad	0x3fdd5ccc89b0ee4a              # double 0.458789
	.quad	0x3feb70b06c43f5f9              # double 0.85750599999999999
	.quad	0x3fe7c560c7c0f451              # double 0.74284399999999995
	.quad	0x3f94a1272c94b381              # double 0.020146000000000001
	.quad	0x3fc1b9170d62bf12              # double 0.138461
	.quad	0x3feffbd8be7296f6              # double 0.99949299999999996
	.quad	0x3feb0f6cefed6345              # double 0.84563299999999997
	.quad	0x3fdf42c3c9eecbfb              # double 0.48845
	.quad	0x3fed3aba7b9170d6              # double 0.91341899999999998
	.quad	0x3faf9aae6c8f7553              # double 0.061726999999999997
	.quad	0x3fe20eabffcdab19              # double 0.56429099999999999
	.quad	0x3fe62b4528283d36              # double 0.69278200000000001
	.quad	0x3fe87d7c2ca148bb              # double 0.76531800000000005
	.quad	0x3fd48ed5f138bce0              # double 0.321218
	.quad	0x3fd38d716d2aa5c6              # double 0.305508
	.quad	0x3fec1a0ad8a11666              # double 0.87817900000000004
	.quad	0x3f88eb8950763a19              # double 0.012168
	.quad	0x3fe3c8c9320d9946              # double 0.61826000000000003
	.quad	0x3fd00e0a84be4042              # double 0.250857
	.quad	0x3fcb0a137f38c543              # double 0.21124499999999999
	.quad	0x3fea06ee30caa327              # double 0.81334600000000001
	.quad	0x3fe13b3a68b19a41              # double 0.53847999999999996
	.quad	0x3fd7e453d20f2bed              # double 0.373311
	.quad	0x3fbfd0d0678c0054              # double 0.12428
	.quad	0x3fcd3cd573647bab              # double 0.22841900000000001
	.quad	0x3feba34ca0c282c7              # double 0.86368400000000001
	.quad	0x3fd54c942d490e67              # double 0.33279900000000001
	.quad	0x3fe40064a9cdc444              # double 0.62504800000000005
	.quad	0x3fe94d29131ec0b5              # double 0.79066899999999996
	.quad	0x3feae1f7d73c9258              # double 0.84008400000000005
	.quad	0x3fcd63a190082060              # double 0.229603
	.quad	0x3fe6df809917939a              # double 0.71478299999999995
	.quad	0x3fe437995ee136e7              # double 0.63178699999999999
	.quad	0x3fe7bd2d87f88766              # double 0.74184300000000003
	.quad	0x3fe56473471f7942              # double 0.668512
	.quad	0x3fd8a43bb40b34e7              # double 0.38502399999999998
	.quad	0x3fe42ee41919ac79              # double 0.63072399999999995
	.quad	0x3feea363b256ffc1              # double 0.95744499999999999
	.quad	0x3fd5e4649906cca3              # double 0.34206500000000001
	.quad	0x3fd03c536d655e29              # double 0.25368200000000002
	.quad	0x3fe8ce4430b178b3              # double 0.77517899999999995
	.quad	0x3fa7fcb923a29c78              # double 0.046850000000000003
	.quad	0x3fe4e21d96e9bbf1              # double 0.65260200000000002
	.quad	0x3fe3a71151611ba4              # double 0.61414400000000002
	.quad	0x3fbe403148776816              # double 0.11816699999999999
	.quad	0x3fd88eb8950763a2              # double 0.38371100000000002
	.quad	0x3fe774e4430b178b              # double 0.73301899999999998
	.quad	0x3f97de5082cf52b9              # double 0.023309
	.quad	0x3fe6891e215336df              # double 0.70423800000000003
	.quad	0x3fc13dfb0d51f81a              # double 0.13470399999999999
	.quad	0x3fefbb57c4e2f380              # double 0.99161900000000003
	.quad	0x3fe224edf6124074              # double 0.56700799999999996
	.quad	0x3fe9aec28b2a6b0e              # double 0.80258300000000005
	.quad	0x3fd89c94f69ca9ef              # double 0.38455699999999998
	.quad	0x3fedcb7d41743e96              # double 0.93108999999999997
	.quad	0x3fcc2cd39da16617              # double 0.22011800000000001
	.quad	0x3febc200c0f01fb8              # double 0.86743199999999998
	.quad	0x3fe1cf52b90a7829              # double 0.556558
	.quad	0x3fa25375c8d9f905              # double 0.035792999999999998
	.quad	0x3fb3d2b6f19934f0              # double 0.077434000000000002
	.quad	0x3fd52f87ad080b67              # double 0.33102599999999999
	.quad	0x3fdd6440f2389720              # double 0.45924399999999999
	.quad	0x3fd2644523f67f4e              # double 0.28737000000000001
	.quad	0x3fc29c0229a5ebb7              # double 0.14538599999999999
	.quad	0x3fe5fd08d4bad7d8              # double 0.68713800000000003
	.quad	0x3f9b93ccd0fe8ab5              # double 0.026931
	.quad	0x3fcfc422036006d1              # double 0.248173
	.quad	0x3fdaaa19439de482              # double 0.416632
	.quad	0x3fe3d54fbdad7519              # double 0.61978900000000003
	.quad	0x3faa4095f2452c5a              # double 0.051274
	.quad	0x3fe2982cb20fb225              # double 0.58107600000000004
	.quad	0x3fe0f51ce28ed5f1              # double 0.52992099999999998
	.quad	0x3fe30b0079a2834d              # double 0.59509299999999998
	.quad	0x3fc3717df19d66ae              # double 0.15190100000000001
	.quad	0x3fe44be835dedf1e              # double 0.634266
	.quad	0x3fe246e8f29d40ee              # double 0.571156
	.quad	0x3fbfa56de33269e0              # double 0.12361800000000001
	.quad	0x3fea5350092ccf6c              # double 0.82267000000000001
	.quad	0x3fe9e8cac4b4d057              # double 0.80966700000000003
	.quad	0x3fe791904b3c3e75              # double 0.73651900000000003
	.quad	0x3febd097c80841ee              # double 0.86921300000000001
	.quad	0x3fe88dcb9a9da598              # double 0.76730900000000002
	.quad	0x3fd69fadafd11383              # double 0.35349599999999998
	.quad	0x3fc2d477bbf93ff2              # double 0.14710899999999999
	.quad	0x3fe86a6c1a048e04              # double 0.76299099999999997
	.quad	0x3fe9d759ee88df37              # double 0.80753799999999998
	.quad	0x3f91804d98394749              # double 0.017090999999999999
	.quad	0x3fcc7210be9424e6              # double 0.22223100000000001
	.quad	0x3fe433b5393250b5              # double 0.63131199999999998
	.quad	0x3fe58c7192ea52f0              # double 0.67339400000000005
	.quad	0x3fca4944ed6fda83              # double 0.20536099999999999
	.quad	0x3fe054845132f87b              # double 0.51031700000000002
	.quad	0x3fe76612839042d9              # double 0.73121000000000003
	.quad	0x3fab04039abf3387              # double 0.052764999999999999
	.quad	0x3fec27418d6909af              # double 0.87979200000000002
	.quad	0x3fd9c99ae924f228              # double 0.40293000000000001
	.quad	0x3fe57ccc03793144              # double 0.67148399999999997
	.quad	0x3fe8b089a0275254              # double 0.77154999999999995
	.quad	0x3f6d30270f388228              # double 0.0035630000000000002
	.quad	0x3fe72f3a14cec41e              # double 0.72451500000000002
	.quad	0x3fcc21c044284dfd              # double 0.21978
	.quad	0x3fe3bed959a30985              # double 0.61704700000000001
	.quad	0x3feb92b7fe08aefb              # double 0.86165999999999998
	.quad	0x3fb06ac215b9a5a9              # double 0.064129000000000005
	.quad	0x3fe357603925bb7b              # double 0.60441599999999995
	.quad	0x3fd56b4c7f349386              # double 0.33467400000000003
	.quad	0x3febae03b3e9a6f8              # double 0.86499199999999998
	.quad	0x3fd06a50d6b228dd              # double 0.25648900000000002
	.quad	0x3fec32702a3486f0              # double 0.88115699999999997
	.quad	0x3fe15ed288ce703b              # double 0.542825
	.quad	0x3fb357c4e2f37fbf              # double 0.075558
	.quad	0x3fcf29f59ccfaeff              # double 0.24346799999999999
	.quad	0x3fe62ecd07852f7f              # double 0.69321299999999997
	.quad	0x3fe4f47304039abf              # double 0.65483999999999998
	.quad	0x3fe54ebbba55d1c4              # double 0.66586100000000004
	.quad	0x3fedbd46b26bf877              # double 0.92935500000000004
	.quad	0x3fe5ab7564302b41              # double 0.67718
	.quad	0x3fcc1672324c8366              # double 0.21943499999999999
	.quad	0x3faae9899bf5946c              # double 0.052562999999999999
	.quad	0x3febd3c9abb01c93              # double 0.86960300000000001
	.quad	0x3fea9be09bb6aa4c              # double 0.83152800000000004
	.quad	0x3faae5bc87db2b34              # double 0.052533999999999997
	.quad	0x3fbd5c96030c23fb              # double 0.114694
	.quad	0x3fdeea077036c9c1              # double 0.48303400000000002
	.quad	0x3fe19700cd855971              # double 0.54968300000000003
	.quad	0x3fea38348f53c57a              # double 0.81936100000000001
	.quad	0x3fe7e83a109d0636              # double 0.74709800000000004
	.quad	0x3fe8e3b8a19c9d5a              # double 0.77779799999999999
	.quad	0x3f8465e892253112              # double 0.0099600000000000001
	.quad	0x3fe95ca6ca03c4b1              # double 0.79256000000000004
	.quad	0x3fe76683c297bfa5              # double 0.73126400000000003
	.quad	0x3fca55d1c3ac929b              # double 0.20574400000000001
	.quad	0x3fd57735c182ecaf              # double 0.335401
	.quad	0x3fefbd3a1d323fee              # double 0.99184899999999998
	.quad	0x3feb50fa58f7121b              # double 0.85363500000000003
	.quad	0x3fe103e63e8dda49              # double 0.53172600000000003
	.quad	0x3fd9c964628027d9              # double 0.40291700000000003
	.quad	0x3fc37fe8ee6b8306              # double 0.152341
	.quad	0x3fbc3aa79bbadc0a              # double 0.11027000000000001
	.quad	0x3fe3a2f2734f82f5              # double 0.61364099999999999
	.quad	0x3fdbd68837718655              # double 0.43496899999999999
	.quad	0x3fdca82a5614df8b              # double 0.447764
	.quad	0x3fe5c964628027d9              # double 0.68083400000000005
	.quad	0x3fe3cc0bdcad14a1              # double 0.61865800000000004
	.quad	0x3fe4859a73b42cc3              # double 0.64130900000000002
	.quad	0x3fd912513b5bf6a1              # double 0.39174300000000001
	.quad	0x3faadd377e1b8ed2              # double 0.052469000000000002
	.quad	0x3fc460029f16b11c              # double 0.15917999999999999
	.quad	0x3fd0feb074a771c9              # double 0.26554499999999998
	.quad	0x3fcea65cf67b1c00              # double 0.239452
	.quad	0x3fbcb6d86ec17ebb              # double 0.112165
	.quad	0x3fba1f9f01b866e4              # double 0.102045
	.quad	0x3faa8283d35eb745              # double 0.051776999999999997
	.quad	0x3fe685b39e279dd4              # double 0.70382100000000003
	.quad	0x3fede5f9591cd1c8              # double 0.93432300000000001
	.quad	0x3feece22a2c23748              # double 0.96266300000000004
	.quad	0x3fe08221426fe719              # double 0.51588500000000004
	.quad	0x3fddcaa326e11559              # double 0.46549299999999999
	.quad	0x3fdda6d2674080fa              # double 0.46330700000000002
	.quad	0x3fee2f07bfe7e1fc              # double 0.94324099999999999
	.quad	0x3fe9af5ba2be058a              # double 0.80265600000000004
	.quad	0x3fdac3dab5c39bcc              # double 0.41820400000000002
	.quad	0x3fe9c5931ca7d673              # double 0.80536799999999997
	.quad	0x3f94812be48a58b4              # double 0.020024
	.quad	0x3fe40121682f9442              # double 0.62513799999999997
	.quad	0x3f8862b27cbf6e3f              # double 0.011906999999999999
	.quad	0x3fe579e7b80a9de9              # double 0.67113100000000003
	.quad	0x3fe3d883ba3443d4              # double 0.62017999999999995
	.quad	0x3fe7a0a958537e2c              # double 0.73836199999999996
	.quad	0x3fe2d92d98bf7f06              # double 0.58901099999999995
	.quad	0x3fd6b9ecf6380022              # double 0.35509800000000002
	.quad	0x3febc5564b662fe0              # double 0.86783900000000002
	.quad	0x3fefa94bbe4473cd              # double 0.98941599999999996
	.quad	0x3fc452deca2552a0              # double 0.158779
	.quad	0x3fd522706d506573              # double 0.33022699999999999
	.quad	0x3fee68986fcdee35              # double 0.950268
	.quad	0x3fd69d9d3458cd21              # double 0.35337000000000002
	.quad	0x3fc17225b749adc9              # double 0.136296
	.quad	0x3fed90a350d2806b              # double 0.92390600000000001
	.quad	0x3fb88bfc2224edf6              # double 0.095885999999999999
	.quad	0x3feecc1ebc83a96d              # double 0.96241699999999996
	.quad	0x3fe69973d9ec7000              # double 0.70623199999999997
	.quad	0x3fbfd3d4280ae105              # double 0.12432600000000001
	.quad	0x3fc1a69be09bb6aa              # double 0.13789699999999999
	.quad	0x3fe299f1ae2da555              # double 0.58129200000000003
	.quad	0x3feefd3b29a1b9fa              # double 0.96841200000000005
	.quad	0x3fb06d82ba5a0382              # double 0.064171000000000006
	.quad	0x3fe29a5657fb6998              # double 0.58133999999999997
	.quad	0x3fdc6e71cda2b5a2              # double 0.444241
	.quad	0x3fed615a8deb0fae              # double 0.91813400000000001
	.quad	0x3fa98548a9bcfd4c              # double 0.049845
	.quad	0x3fe0d3671ac14c66              # double 0.525806
	.quad	0x3fdf0203e63e8dda              # double 0.48449799999999998
	.quad	0x3feee20ab7132724              # double 0.96509299999999997
	.quad	0x3fc75371971c10d8              # double 0.18223400000000001
	.quad	0x3fe2e0fa15db3398              # double 0.58996300000000002
	.quad	0x3fb32096787ce960              # double 0.074716000000000005
	.quad	0x3fe23606b7aa25d9              # double 0.56909500000000002
	.quad	0x3fd76577531db446              # double 0.365568
	.quad	0x3fd03bd1676640a7              # double 0.25365100000000002
	.quad	0x3fdb35e74299d884              # double 0.42516500000000002
	.quad	0x3fd7a3400b88ca3e              # double 0.36933899999999997
	.quad	0x3fd1827fa1a0cf18              # double 0.27359
	.quad	0x3fed0a4a05dd8f93              # double 0.90750600000000003
	.quad	0x3fd9a85015c20924              # double 0.40089799999999998
	.quad	0x3fe456a593a2df93              # double 0.63557699999999995
	.quad	0x3fc8770bd017dae8              # double 0.191133
	.quad	0x3fe14806290eed03              # double 0.54004200000000002
	.quad	0x3fd23165d3996fa8              # double 0.28426499999999999
	.quad	0x3fcb5dd4c76d117b              # double 0.21380099999999999
	.quad	0x3fc8c4a4095f2453              # double 0.19350100000000001
	.quad	0x3fda5360d0247022              # double 0.41133900000000001
	.quad	0x3fd0dbb16c1e364c              # double 0.263409
	.quad	0x3fdff60e0eb67c28              # double 0.49939299999999998
	.quad	0x3fab8d1d8a548238              # double 0.053810999999999998
	.quad	0x3f88f68be2f7b17d              # double 0.012189
	.quad	0x3fd3631f8a0902de              # double 0.302925
	.quad	0x3fe6aea3161a1db8              # double 0.70881799999999995
	.quad	0x3fe78ff540895d0b              # double 0.73632299999999995
	.quad	0x3fc5e707e175d13d              # double 0.17111299999999999
	.quad	0x3fe6b52007dd4413              # double 0.70960999999999996
	.quad	0x3fc0b71327243138              # double 0.13058700000000001
	.quad	0x3fb1908e581cf788              # double 0.068612000000000006
	.quad	0x3fe9e2de8709741d              # double 0.808944
	.quad	0x3fe02856605ee569              # double 0.50492400000000004
	.quad	0x3feeb397dd00f777              # double 0.95942300000000002
	.quad	0x3fc8f2e8c0485a0c              # double 0.194913
	.quad	0x3fef8ce2d1f1cfbc              # double 0.98594800000000004
	.quad	0x3fcbbef49cf56ead              # double 0.21676500000000001
	.quad	0x3fd5fadafd113837              # double 0.34343600000000002
	.quad	0x3fb5f58c08b75ea6              # double 0.085777999999999993
	.quad	0x3fc5b71fbc5de9c0              # double 0.169651
	.quad	0x3fa4122749f0e4da              # double 0.039201
	.quad	0x3fdc52157689ca19              # double 0.44251000000000001
	.quad	0x3fe29b9f98b71b8b              # double 0.58149700000000004
	.quad	0x3fe632031ceaf252              # double 0.69360500000000003
	.quad	0x3fe55b877ab32485              # double 0.66742299999999999
	.quad	0x3fefc52e72da1230              # double 0.99282000000000004
	.quad	0x3fdd9e3c968943e1              # double 0.462783
	.quad	0x3fea5d2f1a9fbe77              # double 0.82387500000000002
	.quad	0x3fd4f63c31df761d              # double 0.32752900000000001
	.quad	0x3fec29eb2074ea8e              # double 0.88011700000000004
	.quad	0x3fef1c92ddbdb5d9              # double 0.97223800000000004
	.quad	0x3fe335696e58a32f              # double 0.60026999999999997
	.quad	0x3fd50bb2bba98eda              # double 0.32883899999999999
	.quad	0x3fe9f08461f9f01c              # double 0.81061000000000005
	.quad	0x3fccbf3bea91d9b2              # double 0.22458600000000001
	.quad	0x3feeb19a415f45e1              # double 0.95918000000000003
	.quad	0x3febd208e1501190              # double 0.86938899999999997
	.quad	0x3feec829cfdd2285              # double 0.96193399999999995
	.quad	0x3fe8217f4128bf3c              # double 0.754089
	.quad	0x3fe673e24febd09e              # double 0.70164599999999999
	.quad	0x3fe564840e1719f8              # double 0.66852
	.quad	0x3fb9d14e3bcd35a8              # double 0.10085
	.quad	0x3fe6bcf70153bd16              # double 0.71056699999999995
	.quad	0x3fe819fe43675ddd              # double 0.75317299999999998
	.quad	0x3fd61c0010c6f7a1              # double 0.34545900000000002
	.quad	0x3fd0e18266772d5e              # double 0.263764
	.quad	0x3fec940bbb1f255f              # double 0.89307199999999998
	.quad	0x3fe0e49906cca2db              # double 0.52790499999999996
	.quad	0x3fe1880303c07ee1              # double 0.54785300000000003
	.quad	0x3fe5e2a1b5c7cd8a              # double 0.68391500000000005
	.quad	0x3fe6e55193708aad              # double 0.71549300000000005
	.quad	0x3fd4155d5f56a7ad              # double 0.31380400000000003
	.quad	0x3fdf6f3f52fc2657              # double 0.49116500000000002
	.quad	0x3feb0f190d173fb8              # double 0.84559300000000004
	.quad	0x3feb394d94078961              # double 0.85074499999999997
	.quad	0x3fed077ccc037931              # double 0.90716399999999997
	.quad	0x3fb7c621b7e0ac7e              # double 0.092867000000000005
	.quad	0x3fbaed783dff3f10              # double 0.105186
	.quad	0x3fe49633482be8bc              # double 0.64333499999999999
	.quad	0x3f9311e85fd04a30              # double 0.018623000000000001
	.quad	0x3fe6282c6ef3d3a2              # double 0.69240400000000002
	.quad	0x3fe62337a80cf9e4              # double 0.69179900000000005
	.quad	0x3fe25f6db940fece              # double 0.57414900000000002
	.quad	0x3fe7b2db1e9f2778              # double 0.74058299999999999
	.quad	0x3fe3de6bc621b7e1              # double 0.62090100000000004
	.quad	0x3fed0a7a41e57d9e              # double 0.90752900000000003
	.quad	0x3faea1a500d5e8d5              # double 0.059826999999999998
	.quad	0x3fb39cd8127b2cc7              # double 0.076612
	.quad	0x3fe625332acfb763              # double 0.69204100000000002
	.quad	0x3fde11a11233df2b              # double 0.46982600000000002
	.quad	0x3fed660a2014727e              # double 0.91870600000000002
	.quad	0x3fe4897204295a6c              # double 0.64177799999999996
	.quad	0x3fe5d604189374bc              # double 0.68237499999999995
	.quad	0x3fe8ca643cc07aaf              # double 0.77470600000000001
	.quad	0x3fc3e154434e336a              # double 0.15531400000000001
	.quad	0x3fedde679463cfb3              # double 0.93339899999999998
	.quad	0x3fa98dcdb37c99af              # double 0.049910000000000003
	.quad	0x3fd1fc8f32378ab1              # double 0.28104000000000001
	.quad	0x3fe746a5d6bebe16              # double 0.72737399999999997
	.quad	0x3fdab76b3bb83cf3              # double 0.41744500000000001
	.quad	0x3fbf0d0edc3bd599              # double 0.121293
	.quad	0x3fcc42b734b51373              # double 0.22078600000000001
	.quad	0x3fe7e544fe36d224              # double 0.74673699999999998
	.quad	0x3fd01ab0856e696a              # double 0.25162899999999999
	.quad	0x3fe03affb04ee7c5              # double 0.50720200000000004
	.quad	0x3fced1633482be8c              # double 0.24076500000000001
	.quad	0x3fe96451b93037d6              # double 0.79349599999999998
	.quad	0x3feb71d606317269              # double 0.85764600000000002
	.quad	0x3fe5633269df97ab              # double 0.66835900000000004
	.quad	0x3fd047e06961c369              # double 0.25438699999999997
	.quad	0x3fe53743632c1f43              # double 0.66299600000000003
	.quad	0x3fa57d7c2ca148bb              # double 0.041973000000000003
	.quad	0x3feff09528f190d1              # double 0.99811799999999994
	.quad	0x3fc2e4755ffe6d59              # double 0.14759700000000001
	.quad	0x3fd6ba5e353f7cee              # double 0.35512500000000002
	.quad	0x3fd2dfdef8487b9a              # double 0.29491400000000001
	.quad	0x3fda35ce18266773              # double 0.40953400000000001
	.quad	0x3fd5755bccaf709b              # double 0.33528799999999997
	.quad	0x3fdb1f18c9fb6135              # double 0.42377300000000001
	.quad	0x3fd7c1ca3a4b5569              # double 0.37120300000000001
	.quad	0x3fd98c36da87a073              # double 0.39918300000000001
	.quad	0x3fd711dffc5479d5              # double 0.36046600000000001
	.quad	0x3f8deefe4ffc9796              # double 0.014616000000000001
	.quad	0x3fea074213a0c6b5              # double 0.81338600000000005
	.quad	0x3fe3378ee2867275              # double 0.60053199999999995
	.quad	0x3fe36a5f84cad57c              # double 0.60673500000000002
	.quad	0x3fe800da1a93293d              # double 0.75010399999999999
	.quad	0x3fb1f72f76e6106b              # double 0.070178000000000004
	.quad	0x3fbc7dc37a3db3c0              # double 0.111294
	.quad	0x3fe7f05a708ede55              # double 0.74809000000000003
	.quad	0x3fd7c81d3aa369fd              # double 0.371589
	.quad	0x3fbd3005814940bc              # double 0.114014
	.quad	0x3fbe4b44a1f08030              # double 0.118336
	.quad	0x3fc8350d2806af47              # double 0.18911900000000001
	.quad	0x3f8184c271fff79d              # double 0.0085540000000000008
	.quad	0x3fe31bf37b8d3f18              # double 0.59716199999999997
	.quad	0x3fd1ea5f84cad57c              # double 0.27993000000000001
	.quad	0x3fe155757d5a9eb2              # double 0.541682
	.quad	0x3fcb783dff3f0fe0              # double 0.21460699999999999
	.quad	0x3fe89a3f4666ec9e              # double 0.76882899999999998
	.quad	0x3fe74a3e7d135116              # double 0.72781300000000004
	.quad	0x3fe6718655193709              # double 0.70135800000000004
	.quad	0x3fd1491f2dc2b0ea              # double 0.27008799999999999
	.quad	0x3fe6973b85e80bed              # double 0.70596099999999995
	.quad	0x3febb3f42352eb5f              # double 0.86571699999999996
	.quad	0x3fde76b3bb83cf2d              # double 0.475995
	.quad	0x3fd2d8e864020818              # double 0.294489
	.quad	0x3fdd1b9f98b71b8b              # double 0.45481100000000002
	.quad	0x3fc208637bd05af7              # double 0.14088100000000001
	.quad	0x3fd6e9899bf5946c              # double 0.35800399999999999
	.quad	0x3fe7f59ccfaeff5c              # double 0.74873199999999995
	.quad	0x3fe80dc768dfbd6a              # double 0.75168199999999996
	.quad	0x3fe609784ec636b1              # double 0.68865600000000005
	.quad	0x3fe22d77318fc505              # double 0.56805000000000005
	.quad	0x3f925529fe004b7f              # double 0.017902999999999999
	.quad	0x3fe2bbb40b34e768              # double 0.58541299999999996
	.quad	0x3fd1ae6c8f755369              # double 0.27627099999999999
	.quad	0x3fc9a34ca0c282c7              # double 0.200296
	.quad	0x3fc16d86ec17ebaf              # double 0.136155
	.quad	0x3fe4fc73eee52589              # double 0.65581699999999998
	.quad	0x3fe9b042528ae74f              # double 0.80276599999999998
	.quad	0x3fda9906cca2db62              # double 0.41559000000000001
	.quad	0x3fee407cc7d1bb49              # double 0.94537199999999999
	.quad	0x3f88d5842b734b51              # double 0.012126
	.quad	0x3fe8d18d25edd053              # double 0.77558000000000005
	.quad	0x3fe343393ab430f5              # double 0.60195600000000005
	.quad	0x3fda494d50ebaade              # double 0.41072399999999998
	.quad	0x3fd1b841248d7e02              # double 0.27687099999999998
	.quad	0x3fc50214ad362e90              # double 0.16412599999999999
	.quad	0x3feef5fd47bedb73              # double 0.96752800000000005
	.quad	0x3fe9a46bf01322f2              # double 0.80132099999999995
	.quad	0x3fbdc39bcba30121              # double 0.11626599999999999
	.quad	0x3fe8122749f0e4da              # double 0.752216
	.quad	0x3fda4217d2849cb2              # double 0.41028399999999998
	.quad	0x3fbf7e2c55c96031              # double 0.123019
	.quad	0x3fe75cee17a02fb6              # double 0.73009400000000002
	.quad	0x3fc7d0f1f57b41c0              # double 0.18606400000000001
	.quad	0x3fe469ab29e4d5d8              # double 0.63789899999999999
	.quad	0x3fe816aceaaf35e3              # double 0.75276799999999999
	.quad	0x3fef6075f6fd21ff              # double 0.98052499999999997
	.quad	0x3fe26594af4f0d84              # double 0.57489999999999997
	.quad	0x3fe330d9513f8db5              # double 0.59971300000000005
	.quad	0x3fcc4c2f837b4a23              # double 0.22107499999999999
	.quad	0x3fe4976bc1eff9f8              # double 0.64348399999999994
	.quad	0x3fbac7b890d5a5b9              # double 0.10460999999999999
	.quad	0x3fdfcf312b1b36bd              # double 0.49702099999999999
	.quad	0x3fea6034f3fd933e              # double 0.82424399999999998
	.quad	0x3fea321c475e6363              # double 0.81861700000000004
	.quad	0x3fc7c0010c6f7a0b              # double 0.18554699999999999
	.quad	0x3fe7c1376d549731              # double 0.742336
	.quad	0x3fee3ebe1650a45d              # double 0.94515899999999997
	.quad	0x3fd75a858793dd98              # double 0.3649
	.quad	0x3fea01f10667f90e              # double 0.81273700000000004
	.quad	0x3fcbacffa7eb6bf4              # double 0.21621699999999999
	.quad	0x3fd451dabe27179c              # double 0.317496
	.quad	0x3fe8aeab7995ee13              # double 0.77132199999999995
	.quad	0x3fe8e931876188b1              # double 0.77846599999999999
	.quad	0x3fb2f405f6ba0621              # double 0.074036000000000005
	.quad	0x3fcdc93ea2d2fe3f              # double 0.23270399999999999
	.quad	0x3f850a88effe2a3d              # double 0.010274
	.quad	0x3fe03ad3a604e1e7              # double 0.50718099999999999
	.quad	0x3fc0a8d21bc126a6              # double 0.13015199999999999
	.quad	0x3fe44adff822bbed              # double 0.63414000000000004
	.quad	0x3fdccc9ea9a3d2d8              # double 0.44998899999999997
	.quad	0x3fe0fb3311a543f2              # double 0.53066400000000002
	.quad	0x3feca00c0f01fb83              # double 0.89453700000000003
	.quad	0x3fbded288ce703b0              # double 0.1169
	.quad	0x3fe8380cb6c7a7ca              # double 0.75684200000000001
	.quad	0x3fe74388ebcc6c55              # double 0.72699400000000003
	.quad	0x3fe170a5efe93187              # double 0.54500099999999996
	.quad	0x3faa0f2becedd484              # double 0.050896999999999998
	.quad	0x3fb37af640639d5e              # double 0.076094999999999996
	.quad	0x3fe6871c53f39d1b              # double 0.70399299999999998
	.quad	0x3fe33d1ed9dfdac7              # double 0.60121100000000005
	.quad	0x3fef2c4d65e46067              # double 0.97415799999999996
	.quad	0x3fe543675ddd2ae9              # double 0.66447800000000001
	.quad	0x3fe6eb0fadf2ecf2              # double 0.716194
	.quad	0x3fec479702e6644e              # double 0.88373900000000005
	.quad	0x3fec0d6f544bb1af              # double 0.87663999999999997
	.quad	0x3fc9e90ff9724745              # double 0.20242499999999999
	.quad	0x3fc64449dbec2481              # double 0.173959
	.quad	0x3fecccdb7ae5796c              # double 0.900007
	.quad	0x3fd31a6937d1fe65              # double 0.298487
	.quad	0x3fc191b3f20a73f7              # double 0.13725899999999999
	.quad	0x3fe1fbb9496249a1              # double 0.56197799999999998
	.quad	0x3fe8ac1d29dc725c              # double 0.77100999999999997
	.quad	0x3fe377036c9c0a8d              # double 0.60827799999999999
	.quad	0x3fe3288ce703afb8              # double 0.59870000000000001
	.quad	0x3fcc0e9d51b4fe7a              # double 0.219196
	.quad	0x3fc562e09fe86834              # double 0.16708000000000001
	.quad	0x3fea817b95a29414              # double 0.82830599999999998
	.quad	0x3fc4a32f44912989              # double 0.16123000000000001
	.quad	0x3fe7cf722e1ac57e              # double 0.74407299999999998
	.quad	0x3fc82480e8c8abd6              # double 0.188614
	.quad	0x3fe46fa82e87d2c8              # double 0.63863000000000003
	.quad	0x3fe8874213a0c6b5              # double 0.76651100000000005
	.quad	0x3fe83aa369fcf3dc              # double 0.75715799999999999
	.quad	0x3fe83af533f42353              # double 0.75719700000000001
	.quad	0x3fc3d145d851654d              # double 0.15482399999999999
	.quad	0x3f9b9cb6848beb5b              # double 0.026964999999999999
	.quad	0x3fe86d82ba5a0382              # double 0.76336800000000005
	.quad	0x3fe5d68405b39e28              # double 0.68243600000000004
	.quad	0x3fd84bcf0b6b6e0d              # double 0.37962699999999999
	.quad	0x3fec9cb46bacf744              # double 0.89412899999999995
	.quad	0x3feae64f54d1e96c              # double 0.84061399999999997
	.quad	0x3fb32452c59fb1e2              # double 0.074773000000000006
	.quad	0x3fc470435efa615b              # double 0.15967600000000001
	.quad	0x3fcde108c3f3e037              # double 0.23343
	.quad	0x3fec2a454de7ea60              # double 0.88016000000000005
	.quad	0x3fedf954eb13dfb1              # double 0.93668600000000002
	.quad	0x3fe123ec02f2f987              # double 0.53563499999999997
	.quad	0x3fd14228997c3d68              # double 0.26966299999999999
	.quad	0x3fe89361dc93ea2d              # double 0.76799099999999998
	.quad	0x3fea5b18548a9bd0              # double 0.82362000000000002
	.quad	0x3fef2ffb04ee7c4a              # double 0.974607
	.quad	0x3fd81fd5885d3133              # double 0.37694299999999997
	.quad	0x3fc6b0856e696a27              # double 0.177262
	.quad	0x3fe85629d8409e56              # double 0.76051800000000003
	.quad	0x3fd0887a8d64d7f1              # double 0.25833
	.quad	0x3fd9b0d9513f8db5              # double 0.40141900000000003
	.quad	0x3fe7e0828c36da88              # double 0.74615600000000004
	.quad	0x3fea99524bfd2e94              # double 0.83121599999999995
	.quad	0x3fd1512a94ff0026              # double 0.27057900000000001
	.quad	0x3fa40bdcad14a0a1              # double 0.039153
	.quad	0x3fc6a9f7b5aea316              # double 0.177062
	.quad	0x3fe4a12b5e529bae              # double 0.64467399999999997
	.quad	0x3fe45436b8f9b131              # double 0.63527999999999996
	.quad	0x3fc0dfaca3619978              # double 0.131826
	.quad	0x3fee65c4eb56fb8f              # double 0.94992299999999996
	.quad	0x3fb32378ab0c88a4              # double 0.074759999999999993
	.quad	0x3fd1064a9cdc4439              # double 0.266009
	.quad	0x3f706ab14ec204f3              # double 0.0040080000000000003
	.quad	0x3fe3cd423d9231c6              # double 0.61880599999999997
	.quad	0x3fe7a67e846a5d6c              # double 0.73907400000000001
	.quad	0x3fd9db8348f53c58              # double 0.40402300000000002
	.quad	0x3fef3dd11be6e654              # double 0.97629600000000005
	.quad	0x3fe8ee568a50507a              # double 0.77909399999999995
	.quad	0x3fe2a480e8c8abd6              # double 0.58258100000000002
	.quad	0x3fe796b54e2b063e              # double 0.737147
	.quad	0x3fe4a97e132b55ef              # double 0.64568999999999999
	.quad	0x3fc048a58b3f63c3              # double 0.127217
	.quad	0x3fd4832fcac8e68e              # double 0.32050699999999999
	.quad	0x3fd64eb56fb8f57f              # double 0.34855399999999997
	.quad	0x3fd6802c0a4a05de              # double 0.35157300000000002
	.quad	0x3fed8665e02ea961              # double 0.92265600000000003
	.quad	0x3fea8bdcad14a0a1              # double 0.829573
	.quad	0x3fef570e6f2e8c05              # double 0.97937700000000005
	.quad	0x3fef94face67d780              # double 0.98693600000000004
	.quad	0x3fe2cef672b88440              # double 0.58776399999999995
	.quad	0x3feec31bde82d7b6              # double 0.96131699999999998
	.quad	0x3fbb9496249a133c              # double 0.107736
	.quad	0x3fea1ae4f3343fa3              # double 0.81578300000000004
	.quad	0x3fb4b588e368f084              # double 0.080894999999999995
	.quad	0x3fef91cb039ef0f1              # double 0.98654699999999995
	.quad	0x3feae9680e065300              # double 0.84099199999999996
	.quad	0x3fd1adc0980b2420              # double 0.27622999999999998
	.quad	0x3feafa0b5ed8d36b              # double 0.84302299999999997
	.quad	0x3fe77ee4e26d4802              # double 0.73424
	.quad	0x3feace2f37fbefd0              # double 0.837669
	.quad	0x3fe3f648c7192ea5              # double 0.62381399999999998
	.quad	0x3fd508a697aeddce              # double 0.32865299999999997
	.quad	0x3fd2c985f06f6944              # double 0.29354999999999998
	.quad	0x3fdd8e8a71de69ad              # double 0.46182499999999999
	.quad	0x3fd5749adc8fb86f              # double 0.33524199999999998
	.quad	0x3fc8d698fe69270b              # double 0.194049
	.quad	0x3fda23bff8a8f3aa              # double 0.40843200000000002
	.quad	0x3fd2b49e01de2691              # double 0.29227399999999998
	.quad	0x3fc791c4b90214ad              # double 0.18413599999999999
	.quad	0x3fe2a322af577100              # double 0.58241399999999999
	.quad	0x3fe981c714fce747              # double 0.79709200000000002
	.quad	0x3fec0655193708ab              # double 0.87577300000000002
	.quad	0x3fe0169a0ad8a116              # double 0.50275899999999996
	.quad	0x3feb75a5332acfb7              # double 0.85811099999999996
	.quad	0x3fe4a4c61d8622c4              # double 0.64511399999999997
	.quad	0x3fca5c91d14e3bcd              # double 0.20594999999999999
	.quad	0x3fdcf34938583622              # double 0.452349
	.quad	0x3fc77c0b13597918              # double 0.183473
	.quad	0x3fecae81882adc4d              # double 0.89630200000000004
	.quad	0x3fe19c087442c7fc              # double 0.55029700000000004
	.quad	0x3fe127fe4bcad9ae              # double 0.53613200000000005
	.quad	0x3fe0a8f9f44d4456              # double 0.52062699999999995
	.quad	0x3fe4c11a11233df3              # double 0.64857200000000004
	.quad	0x3fd9ad6cb5350093              # double 0.40121000000000001
	.quad	0x3fe21270b06c43f6              # double 0.564751
	.quad	0x3fe6650a45d41fa7              # double 0.69983399999999996
	.quad	0x3fdd6672fba01eef              # double 0.45937800000000001
	.quad	0x3fe625edd052934b              # double 0.69213000000000002
	.quad	0x3fe813ad5bee3d60              # double 0.75240200000000001
	.quad	0x3fe055193708aac9              # double 0.51038799999999995
	.quad	0x3fe759b5e95b78cd              # double 0.72970100000000004
	.quad	0x3fa73929ed3953df              # double 0.045358000000000002
	.quad	0x3fe6907faa044ae8              # double 0.70513899999999996
	.quad	0x3fef8c3f3e0370ce              # double 0.98587000000000002
	.quad	0x3fe77a13c254a3c6              # double 0.73365199999999997
	.quad	0x3fbd5f02c4d65e46              # double 0.114731
	.quad	0x3fc6771c970f7b9e              # double 0.17551
	.quad	0x3fc0e6d15ad106ee              # double 0.13204399999999999
	.quad	0x3fc9e5aff2a172ac              # double 0.202322
	.quad	0x3f9715831f03d146              # double 0.022543000000000001
	.quad	0x3fcf913e81450efe              # double 0.24662000000000001
	.quad	0x3fec5c0db2702a35              # double 0.88623700000000005
	.quad	0x3fee7034b0e1b4bb              # double 0.95119699999999996
	.quad	0x3fe930b178b37004              # double 0.78719399999999994
	.quad	0x3fc2cd9e83e425af              # double 0.1469
	.quad	0x3fd219220ff54089              # double 0.28278399999999998
	.quad	0x3fe94c8bc9cd3e0c              # double 0.79059400000000001
	.quad	0x3fec59e6256366d8              # double 0.88597400000000004
	.quad	0x3feaba29c779a6b5              # double 0.835225
	.quad	0x3fdd2157689ca18c              # double 0.45516000000000001
	.quad	0x3fe36a57214f0521              # double 0.60673100000000002
	.quad	0x3fedba0620ab7132              # double 0.92895799999999995
	.quad	0x3fb256bca5375c8e              # double 0.071636000000000005
	.quad	0x3fe72d6ece13f4aa              # double 0.72429600000000005
	.quad	0x3fe2b4e3369b9d80              # double 0.58458100000000002
	.quad	0x3fe3563ed0f62739              # double 0.60427799999999998
	.quad	0x3fbe9cbab649d389              # double 0.119579
	.quad	0x3fd5c1615ebfa8f8              # double 0.33992800000000001
	.quad	0x3fea3e553ac4f7ec              # double 0.82010899999999997
	.quad	0x3fef0ae9680e0653              # double 0.97008199999999999
	.quad	0x3fe4acd5b6805a2d              # double 0.64609799999999995
	.quad	0x3fe213e5fb71fbc6              # double 0.56492900000000001
	.quad	0x3fed624dd2f1a9fc              # double 0.91825000000000001
	.quad	0x3fe686e5cd4ed2cc              # double 0.70396700000000001
	.quad	0x3fe4c2f837b4a234              # double 0.64880000000000004
	.quad	0x3fb5c96030c23fab              # double 0.085103999999999999
	.quad	0x3fbd3543aeab7996              # double 0.114094
	.quad	0x3fcd482be8bc169c              # double 0.228765
	.quad	0x3fdaa1e81cb46bad              # double 0.416132
	.quad	0x3f6db65ecc3e3194              # double 0.003627
	.quad	0x3fe6b836a832b991              # double 0.70998700000000003
	.quad	0x3f6b34a44c7b02d6              # double 0.0033210000000000002
	.quad	0x3fe5ac343b70ef56              # double 0.67727099999999996
	.quad	0x3fe92d5171e29b6b              # double 0.78678199999999998
	.quad	0x3fc5ae2da554b8bf              # double 0.169378
	.quad	0x3fe507bdcf0307f2              # double 0.65719499999999997
	.quad	0x3fe26c93a7115161              # double 0.57575399999999999
	.quad	0x3fdab78897e99631              # double 0.41745199999999999
	.quad	0x3fe77f06705c896e              # double 0.73425600000000002
	.quad	0x3fe0b5fe542e557e              # double 0.52221600000000001
	.quad	0x3fe703d577963993              # double 0.71921800000000002
	.quad	0x3fa0a71de69ad42c              # double 0.032524999999999998
	.quad	0x3fd954690de09353              # double 0.39577699999999999
	.quad	0x3fd14df8b1572581              # double 0.27038400000000001
	.quad	0x3fba6299524bfd2f              # double 0.10306700000000001
	.quad	0x3fea8c5a8155d5f5              # double 0.82963299999999995
	.quad	0x3fb7f4dbdf8f4730              # double 0.093579999999999996
	.quad	0x3fc6d8ba40d90e24              # double 0.17848900000000001
	.quad	0x3fe2d8f7121ab4b7              # double 0.58898499999999998
	.quad	0x3fd62ce032db1e9f              # double 0.34648899999999999
	.quad	0x3fea297e132b55ef              # double 0.81756499999999999
	.quad	0x3fd72d5171e29b6b              # double 0.36214099999999999
	.quad	0x3fe9682b62845996              # double 0.79396599999999995
	.quad	0x3fcb05f28848387e              # double 0.211119
	.quad	0x3fe3a52263d816ad              # double 0.61390800000000001
	.quad	0x3fe5e10f0e90bc7b              # double 0.68372299999999997
	.quad	0x3fb507746887a8d6              # double 0.082144999999999995
	.quad	0x3fd1b7414a4d2b2c              # double 0.27681
	.quad	0x3fa3de1e2de87097              # double 0.038803999999999998
	.quad	0x3fe723bddfc9ff93              # double 0.72311300000000001
	.quad	0x3fd85ff609dcf894              # double 0.380857
	.quad	0x3fe1b56fb8f57f73              # double 0.55339799999999995
	.quad	0x3fcd84230fcf80dc              # double 0.23059499999999999
	.quad	0x3fbc944ed6fda837              # double 0.111638
	.quad	0x3fe4992641b328b7              # double 0.64369500000000002
	.quad	0x3fde3a4723aafff3              # double 0.47230699999999998
	.quad	0x3f9804d983947497              # double 0.023456000000000001
	.quad	0x3fd18cc144028e50              # double 0.27421600000000002
	.quad	0x3fe4a0dbad3a604e              # double 0.64463599999999999
	.quad	0x3fde62888b545c79              # double 0.47476400000000002
	.quad	0x3f8c0096feb4a665              # double 0.013672999999999999
	.quad	0x3fcf9dece5710881              # double 0.247007
	.quad	0x3fe13b8c32a8c9b8              # double 0.53851899999999997
	.quad	0x3fd2f3300de4c511              # double 0.296093
	.quad	0x3fdeb456b441bb8c              # double 0.47975699999999999
	.quad	0x3fe963e8dda48b65              # double 0.79344599999999998
	.quad	0x3fe3cfd8f0c77dd8              # double 0.61912199999999995
	.quad	0x3fc284f8f8a4c1ec              # double 0.14468300000000001
	.quad	0x3fc138d60a633051              # double 0.134547
	.quad	0x3fc368dfbd6a593a              # double 0.151638
	.quad	0x3fdc2a5614df8b15              # double 0.44008399999999998
	.quad	0x3fea022bbecaab8a              # double 0.81276499999999996
	.quad	0x3fbc6833c60029f1              # double 0.11096499999999999
	.quad	0x3fe13a27ae9ab29e              # double 0.53834899999999997
	.quad	0x3fd6bbba55d1c3ad              # double 0.35520800000000002
	.quad	0x3fcd1bbcf4e874c9              # double 0.227409
	.quad	0x3fd4eb91b3f20a74              # double 0.326878
	.quad	0x3fecf355cd91eeaa              # double 0.90470399999999995
	.quad	0x3fdd240b780346dc              # double 0.45532499999999998
	.quad	0x3fdf68405b39e27a              # double 0.49073800000000001
	.quad	0x3fb1c044284dfce3              # double 0.069339999999999999
	.quad	0x3fe6b53b4b2fa93b              # double 0.709623
	.quad	0x3fd062e90364388f              # double 0.25603700000000001
	.quad	0x3fac6195464dc22b              # double 0.055432000000000002
	.quad	0x3fb309a671ef30a5              # double 0.074366000000000002
	.quad	0x3fdc6bd6e8af8162              # double 0.44408199999999998
	.quad	0x3fc445dc8323358f              # double 0.158382
	.quad	0x3fd8634dad31fcd2              # double 0.38106099999999998
	.quad	0x3f935d249e44fa05              # double 0.01891
	.quad	0x3fed02d9cf13ceea              # double 0.90659800000000001
	.quad	0x3fea403148776816              # double 0.82033599999999995
	.quad	0x3fa99f3c70c996b7              # double 0.050042999999999997
	.quad	0x3fe80a17b0f6ad71              # double 0.75123200000000001
	.quad	0x3fa71e4b44a1f080              # double 0.045152999999999999
	.quad	0x3fa2c5197a24894c              # double 0.036659999999999998
	.quad	0x3f9fea8112ba16e8              # double 0.031168000000000001
	.quad	0x3fe91a9fbe76c8b4              # double 0.78449999999999997
	.quad	0x3fbff9830e3cd9a5              # double 0.124901
	.quad	0x3feace379b77c02b              # double 0.837673
	.quad	0x3fd02bc72e275ab8              # double 0.25267200000000001
	.quad	0x3fcbecf63800218e              # double 0.218169
	.quad	0x3fe002e2328f9f45              # double 0.50035200000000002
	.quad	0x3fe587485e3da2f9              # double 0.67276400000000003
	.quad	0x3fda6d7e889c1b54              # double 0.41293299999999999
	.quad	0x3fe552178f68be2f              # double 0.66627099999999995
	.quad	0x3fc21b10fd7e4580              # double 0.14145099999999999
	.quad	0x3fceb4c7f3493858              # double 0.23989199999999999
	.quad	0x3fe9993f6c2699c8              # double 0.79995700000000003
	.quad	0x3fd561e0c5a8155d              # double 0.33409899999999998
	.quad	0x3fceccee5abc0e39              # double 0.24062900000000001
	.quad	0x3fd8a400fba8826b              # double 0.38501000000000002
	.quad	0x3fefe779207d4e09              # double 0.99700599999999994
	.quad	0x3fdaa41e57d9dba9              # double 0.416267
	.quad	0x3feeb5b91f70de8f              # double 0.95968299999999995
	.quad	0x3fcd8b2e9ccb7d41              # double 0.23080999999999999
	.quad	0x3fe91bf5946c332f              # double 0.784663
	.quad	0x3fb63b03e20ccff2              # double 0.086837999999999998
	.quad	0x3fe09756c93a7115              # double 0.51847399999999999
	.quad	0x3fe1052b4d8ba40e              # double 0.53188100000000005
	.quad	0x3feb845baf533f42              # double 0.85990699999999998
	.quad	0x3fb60aa64c2f837b              # double 0.086099999999999996
	.quad	0x3fbd31db445ed4a2              # double 0.114042
	.quad	0x3fecd24399b2c40d              # double 0.900667
	.quad	0x3fe27d0d0678c005              # double 0.57776499999999997
	.quad	0x3fd852157689ca19              # double 0.38001000000000001
	.quad	0x3fe37583a53b8e4c              # double 0.60809500000000005
	.quad	0x3fd58f32378ab0c9              # double 0.33686500000000003
	.quad	0x3fea6d2cbea4ebdd              # double 0.82582699999999998
	.quad	0x3fe93cf70153bd16              # double 0.78869199999999995
	.quad	0x3f6c7ffde7210be9              # double 0.0034789999999999999
	.quad	0x3fca110a137f38c5              # double 0.20364499999999999
	.quad	0x3fe419ef954eb13e              # double 0.628166
	.quad	0x3fe4734d6a161e4f              # double 0.63907499999999995
	.quad	0x3fd1af251c193b3a              # double 0.27631499999999998
	.quad	0x3fe8b66f9335d24a              # double 0.77227000000000001
	.quad	0x3fe36e9ff0cbaf96              # double 0.60725399999999996
	.quad	0x3fd6e09fe86833c6              # double 0.35746
	.quad	0x3fe8060dcb9a9da6              # double 0.75073900000000005
	.quad	0x3fe257d5a9eb2075              # double 0.57322200000000001
	.quad	0x3feff21f6cacd185              # double 0.99830600000000002
	.quad	0x3fdbdc55000c953a              # double 0.43532300000000002
	.quad	0x3fb944dca8e2e2b9              # double 0.098707000000000003
	.quad	0x3feea01040bfe3b0              # double 0.95703899999999997
	.quad	0x3fc54163779e9d0f              # double 0.16605800000000001
	.quad	0x3fdffe260b2c83ed              # double 0.49988700000000003
	.quad	0x3fa5a20ddc619546              # double 0.042251999999999998
	.quad	0x3fed2caff6d33094              # double 0.91170499999999998
	.quad	0x3fc866a98244e93e              # double 0.190633
	.quad	0x3fcf3b96af038e2a              # double 0.244006
	.quad	0x3fda429e0a41a262              # double 0.41031600000000001
	.quad	0x3fe403be6601bc99              # double 0.62545700000000004
	.quad	0x3fe7077681669ced              # double 0.719661
	.quad	0x3fe136262cba732e              # double 0.53786
	.quad	0x3fc694c447c30d30              # double 0.17641499999999999
	.quad	0x3fe24f355cd91eeb              # double 0.57216900000000004
	.quad	0x3fe49e603d577964              # double 0.64433300000000004
	.quad	0x3fc6940357a35504              # double 0.17639199999999999
	.quad	0x3fe7676c8b439581              # double 0.731375
	.quad	0x3fa69878316a0557              # double 0.044131999999999998
	.quad	0x3fe5434c1a8ac5c1              # double 0.66446499999999997
	.quad	0x3feb031ceaf251c2              # double 0.84413000000000005
	.quad	0x3fd58b5cbff47736              # double 0.33663100000000001
	.quad	0x3fe7fad080b673c5              # double 0.74936700000000001
	.quad	0x3fe0bb341e14bdfd              # double 0.52285199999999998
	.quad	0x3fef766a55087011              # double 0.98320499999999999
	.quad	0x3fd12157689ca18c              # double 0.26766000000000001
	.quad	0x3fe3d126634117f8              # double 0.61928099999999997
	.quad	0x3fef0123810e8859              # double 0.968889
	.quad	0x3fd0f316e3715400              # double 0.26483699999999999
	.quad	0x3fe2d59d55e6bc62              # double 0.58857599999999999
	.quad	0x3fcc8a7a41e57d9e              # double 0.22297600000000001
	.quad	0x3fc933ebbfd71b04              # double 0.19689699999999999
	.quad	0x3fe3746887a8d64d              # double 0.60795999999999994
	.quad	0x3fd0bcf0b6b6e0d2              # double 0.26153199999999999
	.quad	0x3fd8f961804d9839              # double 0.39022099999999998
	.quad	0x3fe567d77fae3609              # double 0.66892600000000002
	.quad	0x3fe6d59f6ec5b079              # double 0.71357700000000002
	.quad	0x3fe38101f31f46ed              # double 0.60949799999999998
	.quad	0x3fe43b4d48882f0e              # double 0.632239
	.quad	0x3fe7e0dcb9a9da59              # double 0.74619899999999995
	.quad	0x3fe8933c1ce6c094              # double 0.76797300000000001
	.quad	0x3fd3ada76d97b310              # double 0.30747400000000003
	.quad	0x3fd70abb44e50c5f              # double 0.36003000000000002
	.quad	0x3fe9494f69ca9ef5              # double 0.79019899999999998
	.quad	0x3fb02c4d65e46067              # double 0.063175999999999996
	.quad	0x3fdb4a5df2239e6b              # double 0.42641400000000002
	.quad	0x3fe51d57ff9b5632              # double 0.65983199999999997
	.quad	0x3fcb0c88a47ecfea              # double 0.21132000000000001
	.quad	0x3fdbca7503b81b65              # double 0.43423200000000001
	.quad	0x3fec97a02fb5d031              # double 0.893509
	.quad	0x3fd61782d38476f3              # double 0.34518500000000002
	.quad	0x3fe152135daad602              # double 0.541269
	.quad	0x3fe7dd4c76d117b5              # double 0.74576399999999998
	.quad	0x3fe3a91b823c85c2              # double 0.61439299999999997
	.quad	0x3fd789b0ee49f517              # double 0.36777900000000002
	.quad	0x3fe0d536933a0408              # double 0.52602700000000002
	.quad	0x3fe2781e8a2ec28b              # double 0.57716299999999998
	.quad	0x3fca9949e8815e39              # double 0.20780299999999999
	.quad	0x3fed70c77dd872f3              # double 0.92001699999999997
	.quad	0x3fc653e2d6238da4              # double 0.17443500000000001
	.quad	0x3fdee9424e592967              # double 0.482987
	.quad	0x3fe155885d31337f              # double 0.54169100000000003
	.quad	0x3fd1f1455219a848              # double 0.28035100000000002
	.quad	0x3fd0e4b018611fd6              # double 0.26395800000000003
	.quad	0x3fdebf3bea91d9b2              # double 0.48042200000000002
	.quad	0x3fd49081c2e33eff              # double 0.32131999999999999
	.quad	0x3fe35fa43fe5c91d              # double 0.60542499999999999
	.quad	0x3fe5144241c3efae              # double 0.65872299999999995
	.quad	0x3fc4257c914b167f              # double 0.15739400000000001
	.quad	0x3fe75ef8487b99d4              # double 0.73034299999999996
	.quad	0x3fe1047d3d4280ae              # double 0.53179799999999999
	.quad	0x3fd26f9767903212              # double 0.28806100000000001
	.quad	0x3fec6b441bb8c32b              # double 0.88809400000000005
	.quad	0x3fed86fcdee34fc6              # double 0.92272799999999999
	.quad	0x3fe280cb6c7a7c9e              # double 0.57822200000000001
	.quad	0x3fda9b068123810f              # double 0.41571200000000003
	.quad	0x3fea2cf7446f9b99              # double 0.81798899999999997
	.quad	0x3fb41cc532a497fa              # double 0.078563999999999994
	.quad	0x3feebb8a19c9d5a2              # double 0.96039300000000005
	.quad	0x3fe5d5219a847b24              # double 0.68226699999999996
	.quad	0x3fe27a80cf9e3865              # double 0.57745400000000002
	.quad	0x3fe3ccb1897a67a5              # double 0.61873699999999998
	.quad	0x3fe4cddb5525cc42              # double 0.65012899999999996
	.quad	0x3fccdb940fecdd0e              # double 0.22545100000000001
	.quad	0x3fd6cb5350092ccf              # double 0.35615999999999998
	.quad	0x3fd7fa0945f9df55              # double 0.37463600000000002
	.quad	0x3fd4cd39da16616b              # double 0.32502599999999998
	.quad	0x3fc6d03d9a95421c              # double 0.17823
	.quad	0x3fdc12cf0f9d2bf5              # double 0.43864799999999998
	.quad	0x3fcd89a459103c8e              # double 0.230763
	.quad	0x3fed6c17ebaf1023              # double 0.91944499999999996
	.quad	0x3feb59ccfaeff5c7              # double 0.85471200000000003
	.quad	0x3fee8cf398e97072              # double 0.95470600000000005
	.quad	0x3fe1a2ad3e920c07              # double 0.55110800000000004
	.quad	0x3fe8403ff69014b6              # double 0.75784300000000004
	.quad	0x3fc9e414e7ee9143              # double 0.20227300000000001
	.quad	0x3fc9c810a569b175              # double 0.20141800000000001
	.quad	0x3fd89d7774aba387              # double 0.38461099999999998
	.quad	0x3fde42e557de0d67              # double 0.472833
	.quad	0x3fc03f572de43ed9              # double 0.12693299999999999
	.quad	0x3fd36c332f01754b              # double 0.303479
	.quad	0x3fe5f3343fa2ad3f              # double 0.68593800000000005
	.quad	0x3f7edf1e0828c36e              # double 0.0075370000000000003
	.quad	0x3fe11d323fee2c99              # double 0.53481400000000001
	.quad	0x3feddaa2e3c536d6              # double 0.93293899999999996
	.quad	0x3fd5a5c5f7c6759b              # double 0.33824300000000002
	.quad	0x3fd52e1ef73c0c20              # double 0.33094000000000001
	.quad	0x3fe239042d8c2a45              # double 0.56945999999999997
	.quad	0x3fe582602c9081c3              # double 0.67216500000000001
	.quad	0x3fc2d97b30f8c650              # double 0.147262
	.quad	0x3fec41743e963dc5              # double 0.88299000000000005
	.quad	0x3fdd00d5e8d54110              # double 0.45317600000000002
	.quad	0x3fea4c8bc9cd3e0c              # double 0.82184400000000001
	.quad	0x3feb0e3ac0c62e4d              # double 0.84548699999999999
	.quad	0x3fdc5cbbc2b94d94              # double 0.44316
	.quad	0x3fe1f403dddb120a              # double 0.56103700000000001
	.quad	0x3fd8f0ed3d859c8d              # double 0.38970500000000002
	.quad	0x3fac1d4b6a619daa              # double 0.054911000000000001
	.quad	0x3fdec4f7ec3547e0              # double 0.48077199999999998
	.quad	0x3fe46d8d36b4c7f3              # double 0.63837299999999997
	.quad	0x3fe8887442c7fbad              # double 0.76665700000000003
	.quad	0x3fe21e7967caea74              # double 0.56621999999999995
	.quad	0x3feb1dd7ecbb7f9d              # double 0.84739299999999995
	.quad	0x3fd7354c122749f1              # double 0.36262800000000001
	.quad	0x3fac621b7e0ac7da              # double 0.055435999999999999
	.quad	0x3fc1cbe61cffeb07              # double 0.13903499999999999
	.quad	0x3fb9d323fee2c98e              # double 0.100878
	.quad	0x3fe6e2eb1c432ca5              # double 0.71519999999999995
	.quad	0x3fcc8b08dd1e53a8              # double 0.222993
	.quad	0x3fb0db163baba7b9              # double 0.065842999999999999
	.quad	0x3fc039799e518f3f              # double 0.12675400000000001
	.quad	0x3fe36b6e0d23d4f1              # double 0.60686399999999996
	.quad	0x3fe121294573a798              # double 0.53529800000000005
	.quad	0x3fdee68a0d349be9              # double 0.482821
	.quad	0x3fe2f95f676ea423              # double 0.59294100000000005
	.quad	0x3fc0c1ca3a4b5569              # double 0.130914
	.quad	0x3fcc7075b3e1437c              # double 0.22218199999999999
	.quad	0x3fca9bd8383ad9f1              # double 0.20788100000000001
	.quad	0x3fe8063beec3979a              # double 0.75076100000000001
	.quad	0x3fd0bca5375c8da0              # double 0.26151400000000002
	.quad	0x3fe37f1950331e3a              # double 0.60926499999999995
	.quad	0x3fdde34330d73861              # double 0.46699600000000002
	.quad	0x3fef4a3e7d135116              # double 0.97781300000000004
	.quad	0x3fe1bbd1676640a7              # double 0.55417700000000003
	.quad	0x3fc5950331e3a7db              # double 0.16861000000000001
	.quad	0x3fd9a4d6e47dc37a              # double 0.40068599999999999
	.quad	0x3fe36b67c286f8ad              # double 0.60686099999999998
	.quad	0x3fab8bac710cb296              # double 0.053800000000000001
	.quad	0x3fd524d8fd5cb791              # double 0.330374
	.quad	0x3fab7eb28d8665e0              # double 0.053700999999999999
	.quad	0x3fe276f08cc575c0              # double 0.57701899999999995
	.quad	0x3fcff559b3d07c85              # double 0.24967500000000001
	.quad	0x3fe7293f290abb45              # double 0.72378500000000001
	.quad	0x3feade33269df97b              # double 0.83962400000000004
	.quad	0x3feae13d31b9b670              # double 0.83999500000000005
	.quad	0x3fd1c32ebe596c83              # double 0.27753800000000001
	.quad	0x3fed8c436fc158fb              # double 0.92337199999999997
	.quad	0x3fa9fe004b7f5a53              # double 0.050765999999999999
	.quad	0x3fe676f8f041461b              # double 0.70202299999999995
	.quad	0x3fd5b068123810e9              # double 0.33889200000000003
	.quad	0x3fe2eaf6837f7be1              # double 0.59118199999999999
	.quad	0x3fb97a46173b85e8              # double 0.099521999999999999
	.quad	0x3fbfea5f84cad57c              # double 0.12467
	.quad	0x3fe5956c0d6f544c              # double 0.67449000000000003
	.quad	0x3fdd041cc532a498              # double 0.453376
	.quad	0x3fe8cfd6d7e889c2              # double 0.77537100000000003
	.quad	0x3fea23b14a90470b              # double 0.81685700000000006
	.quad	0x3fd0760bf5d78812              # double 0.25720500000000002
	.quad	0x3fe2d675579af188              # double 0.58867899999999995
	.quad	0x3fef2161e4f765fe              # double 0.97282500000000005
	.quad	0x3fe7f822bbecaab9              # double 0.74904000000000004
	.quad	0x3fe26c3116228134              # double 0.57570699999999997
	.quad	0x3feefc6327ed84d3              # double 0.96830899999999997
	.quad	0x3fe7b6113404ea4b              # double 0.74097500000000005
	.quad	0x3fec99a1fd1569f5              # double 0.89375400000000005
	.quad	0x3fe112253111f0c3              # double 0.53346499999999997
	.quad	0x3fe8b5e74299d884              # double 0.77220500000000003
	.quad	0x3fe13422467be554              # double 0.53761400000000004
	.quad	0x3fe7bbf50e347629              # double 0.74169399999999996
	.quad	0x3fc932f01754b05b              # double 0.19686699999999999
	.quad	0x3fded60a63305101              # double 0.48181400000000002
	.quad	0x3feba5460aa64c30              # double 0.86392500000000005
	.quad	0x3fc4f0b6b6e0d23d              # double 0.16359599999999999
	.quad	0x3fed48c2e770bd01              # double 0.91513199999999995
	.quad	0x3fe3f96bfca85cab              # double 0.624197
	.quad	0x3fed3cab81f969e4              # double 0.91365600000000002
	.quad	0x3fe460913a4f8727              # double 0.63678800000000002
	.quad	0x3fe7988b11409a24              # double 0.737371
	.quad	0x3fd570da5daf07c0              # double 0.33501300000000001
	.quad	0x3fe83a27ae9ab29e              # double 0.75709899999999997
	.quad	0x3fd01b9b66f9335d              # double 0.25168499999999999
	.quad	0x3fd2d04a2fcefaa4              # double 0.29396299999999997
	.quad	0x3fca9fd7a13c254a              # double 0.20800299999999999
	.quad	0x3fdc4ac29bf162ae              # double 0.44206299999999998
	.quad	0x3feac9cd3e0bd44a              # double 0.83713400000000004
	.quad	0x3fed97cc39ffd60f              # double 0.92478000000000005
	.quad	0x3fd2008205ff1d82              # double 0.281281
	.quad	0x3fea04662bae03b4              # double 0.813037
	.quad	0x3fcd4801f75104d5              # double 0.22875999999999999
	.quad	0x3fe5ae924f227d03              # double 0.67756000000000005
	.quad	0x3fd57edc7ef177a7              # double 0.335868
	.quad	0x3fec5ca8e2e2b8c7              # double 0.88631099999999996
	.quad	0x3fe058dde7a743a6              # double 0.51084799999999997
	.quad	0x3fc06117720c8cd6              # double 0.12796299999999999
	.quad	0x3fcb351159c49774              # double 0.212557
	.quad	0x3fe44343b70ef566              # double 0.63321099999999997
	.quad	0x3fe123400b88ca3e              # double 0.53555299999999995
	.quad	0x3fe9222706d50657              # double 0.78541899999999998
	.quad	0x3fdbfea3df6db941              # double 0.437417
	.quad	0x3fc7ed634549b62c              # double 0.18693199999999999
	.quad	0x3fe8d97f62b6ae7d              # double 0.77654999999999996
	.quad	0x3fe4c925785f8d2e              # double 0.64955399999999996
	.quad	0x3fdbfe154434e337              # double 0.43738300000000002
	.quad	0x3fd8efb2aae29739              # double 0.38962999999999998
	.quad	0x3fc918090b417ca2              # double 0.196046
	.quad	0x3fd2b7995ee136e7              # double 0.29245599999999999
	.quad	0x3fd908c8259e1f3a              # double 0.39116099999999998
	.quad	0x3fe6762b6ae7d567              # double 0.70192500000000002
	.quad	0x3fceb9d3cbc48f11              # double 0.24004600000000001
	.quad	0x3f5b8aa00192a737              # double 0.001681
	.quad	0x3fe158127b2cc708              # double 0.54200099999999996
	.quad	0x3fe3fd63022dd7aa              # double 0.62468100000000004
	.quad	0x3fe9e425aee631f9              # double 0.80910000000000004
	.quad	0x3fee3de1e2de8709              # double 0.94505399999999995
	.quad	0x3fe8dcd7060bb2bc              # double 0.77695800000000003
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
