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
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	118                             # 0x76
	.quad	129                             # 0x81
	.quad	149                             # 0x95
	.quad	195                             # 0xc3
	.quad	212                             # 0xd4
	.quad	226                             # 0xe2
	.quad	269                             # 0x10d
	.quad	289                             # 0x121
	.quad	299                             # 0x12b
	.quad	340                             # 0x154
	.quad	362                             # 0x16a
	.quad	375                             # 0x177
	.quad	423                             # 0x1a7
	.quad	437                             # 0x1b5
	.quad	459                             # 0x1cb
	.quad	504                             # 0x1f8
	.quad	517                             # 0x205
	.quad	530                             # 0x212
	.quad	570                             # 0x23a
	.quad	590                             # 0x24e
	.quad	607                             # 0x25f
	.quad	655                             # 0x28f
	.quad	671                             # 0x29f
	.quad	686                             # 0x2ae
	.quad	730                             # 0x2da
	.quad	745                             # 0x2e9
	.quad	758                             # 0x2f6
	.quad	803                             # 0x323
	.quad	821                             # 0x335
	.quad	832                             # 0x340
	.quad	875                             # 0x36b
	.quad	895                             # 0x37f
	.quad	913                             # 0x391
	.quad	958                             # 0x3be
	.quad	972                             # 0x3cc
	.quad	992                             # 0x3e0
	.quad	1038                            # 0x40e
	.quad	1052                            # 0x41c
	.quad	1065                            # 0x429
	.quad	1109                            # 0x455
	.quad	1125                            # 0x465
	.quad	1145                            # 0x479
	.quad	1187                            # 0x4a3
	.quad	1204                            # 0x4b4
	.quad	1219                            # 0x4c3
	.quad	1264                            # 0x4f0
	.quad	1279                            # 0x4ff
	.quad	1292                            # 0x50c
	.quad	1334                            # 0x536
	.quad	1349                            # 0x545
	.quad	1364                            # 0x554
	.quad	1403                            # 0x57b
	.quad	1415                            # 0x587
	.quad	1430                            # 0x596
	.quad	1476                            # 0x5c4
	.quad	1495                            # 0x5d7
	.quad	1511                            # 0x5e7
	.quad	1559                            # 0x617
	.quad	1575                            # 0x627
	.quad	1588                            # 0x634
	.quad	1635                            # 0x663
	.quad	1650                            # 0x672
	.quad	1660                            # 0x67c
	.quad	1702                            # 0x6a6
	.quad	1715                            # 0x6b3
	.quad	1733                            # 0x6c5
	.quad	1774                            # 0x6ee
	.quad	1791                            # 0x6ff
	.quad	1808                            # 0x710
	.quad	1850                            # 0x73a
	.quad	1865                            # 0x749
	.quad	1885                            # 0x75d
	.quad	1929                            # 0x789
	.quad	1947                            # 0x79b
	.quad	1963                            # 0x7ab
	.quad	2008                            # 0x7d8
	.quad	2021                            # 0x7e5
	.quad	2035                            # 0x7f3
	.quad	2083                            # 0x823
	.quad	2097                            # 0x831
	.quad	2112                            # 0x840
	.quad	2157                            # 0x86d
	.quad	2176                            # 0x880
	.quad	2188                            # 0x88c
	.quad	2233                            # 0x8b9
	.quad	2240                            # 0x8c0
	.quad	2248                            # 0x8c8
	.quad	2289                            # 0x8f1
	.quad	2303                            # 0x8ff
	.quad	2318                            # 0x90e
	.quad	2361                            # 0x939
	.quad	2375                            # 0x947
	.quad	2396                            # 0x95c
	.quad	2433                            # 0x981
	.quad	2441                            # 0x989
	.quad	2460                            # 0x99c
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	64                              # 0x40
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	74                              # 0x4a
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
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	20                              # 0x14
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	50                              # 0x32
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	31                              # 0x1f
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	47                              # 0x2f
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
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
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	35                              # 0x23
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
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	40                              # 0x28
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
	.quad	0x3fde5b959623fb3c              # double 0.47433986341632184
	.quad	0x3fdb19276dacc5a2              # double 0.42341027937353648
	.quad	0x3faeaa1aeefc6240              # double 0.059891549752312034
	.quad	0x3fefb73cbbc02900              # double 0.99111782712978425
	.quad	0x3fc17af750b52a84              # double 0.1365651268082112
	.quad	0x3fedede19776e527              # double 0.93528823454758914
	.quad	0x3fd52ed823b53336              # double 0.33098414885607796
	.quad	0x3fd96c3d81c69b3a              # double 0.39723146127146303
	.quad	0x3febd8260542b924              # double 0.87013531711071268
	.quad	0x3fe0ced29f34ac83              # double 0.52524691672205426
	.quad	0x3fd4ebc267d5315c              # double 0.32688961162491181
	.quad	0x3fe90b917c4d0e76              # double 0.7826621463540977
	.quad	0x3fab2609a59a2290              # double 0.053024579491709578
	.quad	0x3fd190e9bf2d4654              # double 0.27446979207625088
	.quad	0x3fe95631d55abe56              # double 0.7917718092994146
	.quad	0x3fef94969684803e              # double 0.98688821218457412
	.quad	0x3feb8817a7e1ceb0              # double 0.86036284245934347
	.quad	0x3fe232266476673a              # double 0.56862182256302352
	.quad	0x3fc16ad8d7690b40              # double 0.13607321279604356
	.quad	0x3fe01e0cb25a489d              # double 0.50366816362863498
	.quad	0x3fbb5e56dfc178e0              # double 0.10690825426852113
	.quad	0x3fe4bb87286524d0              # double 0.64789159669558138
	.quad	0x3fd9dcc7dab4ae8a              # double 0.40410038335787901
	.quad	0x3fd3362492c6bb7c              # double 0.30017961820242767
	.quad	0x3fe27bc0f2fbb3c0              # double 0.57760665376337528
	.quad	0x3fd72b7dff05b2b8              # double 0.36202955154912386
	.quad	0x3fe247bcbd4549ca              # double 0.57125699011731368
	.quad	0x3fac8626b1ebd2f0              # double 0.055710992068190524
	.quad	0x3fee97ed9fba228f              # double 0.9560459251088832
	.quad	0x3fe747dbe7fb8978              # double 0.72752185162634841
	.quad	0x3f73f0bf51a71b80              # double 0.0048682664295885969
	.quad	0x3fed056989817316              # double 0.90691067558836624
	.quad	0x3fe6f12c8b340fa5              # double 0.71694018543393112
	.quad	0x3fef8eb78e969c75              # double 0.98617151116640278
	.quad	0x3fe908fd2c49befd              # double 0.78234728479398508
	.quad	0x3fe4cad3bb5dca2a              # double 0.64975916476243367
	.quad	0x3fc5357c263cb56c              # double 0.16569473139808666
	.quad	0x3feaa7250d9905ad              # double 0.83290341049012329
	.quad	0x3fe9fb7139b3d997              # double 0.81194363851573115
	.quad	0x3fed59ea7c2196fa              # double 0.91722606891991565
	.quad	0x3feb754868d659df              # double 0.85806675411259536
	.quad	0x3fc0f19170f677d4              # double 0.13237207427749687
	.quad	0x3feb0ab16f2090ed              # double 0.8450553102925632
	.quad	0x3fe4ac1e372acabb              # double 0.64601050162158147
	.quad	0x3fbff2a6a9cb99a0              # double 0.1247963108577097
	.quad	0x3fe95960ef214e78              # double 0.79216047959421498
	.quad	0x3fdc3c185fc0c050              # double 0.44116792059776788
	.quad	0x3fc1c93de534d3f0              # double 0.13895391170231575
	.quad	0x3fec9c5a3c2f6a54              # double 0.89408599619793927
	.quad	0x3fd8568f7a258a76              # double 0.38028323105223849
	.quad	0x3fef14c6ea61d4f4              # double 0.97128625657810951
	.quad	0x3fab2da20bf45870              # double 0.053082527121817047
	.quad	0x3fa9dafcb1985a40              # double 0.050498863867848076
	.quad	0x3fe80cc0e36790cd              # double 0.751556820058363
	.quad	0x3fee29756618f0d0              # double 0.94256086293128227
	.quad	0x3fe2d5a241f39241              # double 0.58857834702627809
	.quad	0x3fe657f791b85114              # double 0.69823816739020339
	.quad	0x3fe7589910c7b757              # double 0.72956517484065386
	.quad	0x3fb177a3a4f764e0              # double 0.068231799864765019
	.quad	0x3fd9c15b24714b1a              # double 0.40242651518671979
	.quad	0x3fc0013e9704f4ac              # double 0.12503797887794599
	.quad	0x3f91342c95b6cec0              # double 0.016800591123412145
	.quad	0x3fa17a72cf146f10              # double 0.034137332704828549
	.quad	0x3fe1a111feecf3b9              # double 0.55091190138011037
	.quad	0x3fce374529df1b90              # double 0.23606171173579726
	.quad	0x3fcc6905117ee164              # double 0.2219549498966088
	.quad	0x3fbafecb78765958              # double 0.10545036021207943
	.quad	0x3feeb40b3fbacc07              # double 0.95947802016451155
	.quad	0x3fdc01c47ed1136c              # double 0.43760788330501188
	.quad	0x3fec8d48e4bd3f27              # double 0.89224667239793554
	.quad	0x3fd98fc04a7cf610              # double 0.39939887308341415
	.quad	0x3fd24458543150f2              # double 0.28542144987046847
	.quad	0x3fe741cada894a3e              # double 0.72678129847401585
	.quad	0x3fe2b22c5bbdefed              # double 0.58424966734264461
	.quad	0x3fd6619c02b8e836              # double 0.34970760598992301
	.quad	0x3fd51e33d0dbf0a0              # double 0.32996840855026655
	.quad	0x3fd3c66c07c266da              # double 0.30898571737053049
	.quad	0x3fe234656d76930a              # double 0.56889602069404188
	.quad	0x3fd7f227d94fc848              # double 0.37415500852433015
	.quad	0x3fdea8f6dbf45b96              # double 0.47906276206907117
	.quad	0x3fe96410f15ef32b              # double 0.79346511023286348
	.quad	0x3fda1ce424f18f98              # double 0.40801337821744132
	.quad	0x3fd456814795503a              # double 0.31777984610130583
	.quad	0x3fd8378249e49516              # double 0.37838799682715896
	.quad	0x3fe90e09e1e84a52              # double 0.78296369669471688
	.quad	0x3fe3269c613144b1              # double 0.59846323950673341
	.quad	0x3fefc4e019f9619c              # double 0.9927826411540539
	.quad	0x3fd7e3b11947ce64              # double 0.37327220410154482
	.quad	0x3fdce85d292d73b2              # double 0.45168236752743518
	.quad	0x3feb9ebfef6eeb1e              # double 0.86312863125144523
	.quad	0x3fe24ad058aba82b              # double 0.57163255041564776
	.quad	0x3fd2aec98647f9b2              # double 0.29191816438096929
	.quad	0x3fbf89399692cb70              # double 0.12318763662442023
	.quad	0x3fd95e0c65167306              # double 0.39636525985569937
	.quad	0x3fd30e1f53541f1c              # double 0.29773696076925815
	.quad	0x3fe303be0094a2fc              # double 0.59420681107903262
	.quad	0x3fc69658ad721fa4              # double 0.17646320790322279
	.quad	0x3fe5e8075f8d9460              # double 0.68457382834152369
	.quad	0x3fdd02729e5bbe18              # double 0.45327439751324183
	.quad	0x3fdb1b111e4757b4              # double 0.4235270305338148
	.quad	0x3fdc30bce9eb1c92              # double 0.44047472804636201
	.quad	0x3f7d3083d210a880              # double 0.0071263455620657057
	.quad	0x3fd2ad882a968762              # double 0.29184154662117667
	.quad	0x3fb8b0397e3fc6c8              # double 0.096438973734417677
	.quad	0x3fe189900d3dc79a              # double 0.54804232202717462
	.quad	0x3fdb4e9036f3fe50              # double 0.4266701256419525
	.quad	0x3fec0775c7b8cc2d              # double 0.87591065414597369
	.quad	0x3fe1aa8e1010cd38              # double 0.55206969392603522
	.quad	0x3f820465d3505580              # double 0.0087974505532126823
	.quad	0x3fe475de5fe20941              # double 0.6393882630075397
	.quad	0x3fcc849726842434              # double 0.22279633885071493
	.quad	0x3fee3235125f18e3              # double 0.94362882221392075
	.quad	0x3fe7bf7aa0c459fb              # double 0.74212390327266975
	.quad	0x3fed9fe5fa0d269f              # double 0.92576884115370095
	.quad	0x3fe131be8ba50ff8              # double 0.5373223044812212
	.quad	0x3fc732f69ccb6c18              # double 0.18124277740466321
	.quad	0x3fd75f4d6e4105f0              # double 0.36519180075637703
	.quad	0x3fdc2e841594a2f4              # double 0.44033910853845204
	.quad	0x3f7be31792ea5800              # double 0.0068083687644016067
	.quad	0x3fb1f792fbe83bd0              # double 0.070183931828281532
	.quad	0x3fce073b1a3af450              # double 0.2345956686093893
	.quad	0x3febf20bd0153944              # double 0.87329664841835397
	.quad	0x3fea569db4d51d2b              # double 0.82307324713557273
	.quad	0x3fe76bcda0e4a581              # double 0.73190957474177776
	.quad	0x3fda24bd06174dec              # double 0.40849233240916649
	.quad	0x3fc5466dcbc2d2bc              # double 0.16621181916493366
	.quad	0x3fd834272bbe5148              # double 0.37818316718882672
	.quad	0x3fe425a97be6d91a              # double 0.62959741782723033
	.quad	0x3fee0fc781737dee              # double 0.93942618640352094
	.quad	0x3fd38143670b9fbc              # double 0.30476460516956272
	.quad	0x3fe6f1dba1ee37ad              # double 0.71702367426927582
	.quad	0x3fed6edbe58de55e              # double 0.91978258929081469
	.quad	0x3fe3e36c52cd9df7              # double 0.62151161358354912
	.quad	0x3fdd04ad14346cfc              # double 0.45341040585635972
	.quad	0x3fc5db92c82e9b94              # double 0.17076334738268584
	.quad	0x3fee8e072982b8d6              # double 0.95483739955468638
	.quad	0x3fe3fd562af6c8e6              # double 0.62467487708479719
	.quad	0x3fbe2d875121dbf0              # double 0.11788221102493401
	.quad	0x3fc1a3cd7189e0bc              # double 0.13781135600925676
	.quad	0x3fee1e250a958a8d              # double 0.94117977206436054
	.quad	0x3fed26e5811bc08b              # double 0.91099810806737602
	.quad	0x3fd39bb44b9306da              # double 0.30637843494706163
	.quad	0x3fe6e3884de20734              # double 0.71527495585926326
	.quad	0x3fc8fc350594ca5c              # double 0.19519675037880091
	.quad	0x3fc5e0bcae08f8d0              # double 0.17092092988781937
	.quad	0x3fee6c67cbdeeba0              # double 0.95073308771621967
	.quad	0x3feb2ff4800b90dd              # double 0.84960389145683346
	.quad	0x3fa10015deff3590              # double 0.033203776809027308
	.quad	0x3fb6dbb908deaf90              # double 0.089290203729147643
	.quad	0x3fe9f7e6c932ee1b              # double 0.81151141449612696
	.quad	0x3fe8b3d2b1ac58b7              # double 0.77195105268290021
	.quad	0x3fdb6a0f8c1bd8fe              # double 0.42834843332765604
	.quad	0x3fd8f067c72f7402              # double 0.38967318011947338
	.quad	0x3fef451bb0d29106              # double 0.97718605552339066
	.quad	0x3fee2574a20e6207              # double 0.94207221652601525
	.quad	0x3fecb0a706f43a07              # double 0.89656401975827371
	.quad	0x3fe0e272fafe7b9f              # double 0.52764271757392922
	.quad	0x3fd81e7eee3664b0              # double 0.37686131728112127
	.quad	0x3fe740dfc752b9e5              # double 0.72666920595457596
	.quad	0x3fe0e5ff0b0e70ee              # double 0.5280757156320115
	.quad	0x3fdbb4e088ae04ae              # double 0.43291486117966371
	.quad	0x3fdf0c57d4bcfe2a              # double 0.48512836241931956
	.quad	0x3f937080c61310e0              # double 0.018983852471834761
	.quad	0x3fdfc1f2aeda0e74              # double 0.49621264529580533
	.quad	0x3fee6c7e166ff0b8              # double 0.95074371702459981
	.quad	0x3fc8d2696e96eae0              # double 0.19392125987891173
	.quad	0x3fe1036cd073a4e9              # double 0.53166809762219913
	.quad	0x3fe5e5b394c6614a              # double 0.68428973252870517
	.quad	0x3fec578454c8a097              # double 0.88568321761433111
	.quad	0x3feacb10e4396bfb              # double 0.83728832793292385
	.quad	0x3fb9b7ed662bfae8              # double 0.10046275848797459
	.quad	0x3fe18e1ca9b3f083              # double 0.54859765191169207
	.quad	0x3f7b2bd118f6d200              # double 0.0066335838195539232
	.quad	0x3fe4566bb787c126              # double 0.63554941030273393
	.quad	0x3fabbb1b7d80da30              # double 0.054161891050558686
	.quad	0x3fe21d29ab070cc6              # double 0.56605990794960159
	.quad	0x3fe737617044860c              # double 0.72551032950667738
	.quad	0x3fed54d0de12f3ca              # double 0.91660350202402552
	.quad	0x3fcf19b18ab3b5b0              # double 0.24297160408552321
	.quad	0x3fc048726e01b4b8              # double 0.12721090670985347
	.quad	0x3fedd3e0cc32d034              # double 0.93211402781026331
	.quad	0x3fbe6023cc474b98              # double 0.11865447747486113
	.quad	0x3fdacac05ca52018              # double 0.41862496421208695
	.quad	0x3fd8feca3e7e26ae              # double 0.39055114844141314
	.quad	0x3fe232210f636ba8              # double 0.56861927991427752
	.quad	0x3fdc42d73a32865e              # double 0.44157963450752458
	.quad	0x3fe3a82078a6880b              # double 0.61427329601815595
	.quad	0x3fd863eca9342318              # double 0.38109890483660669
	.quad	0x3fc6478eb1d39d20              # double 0.17405875857296227
	.quad	0x3f8e0f80af0b4a00              # double 0.014678006498262341
	.quad	0x3fa0943177b46910              # double 0.032380624639886446
	.quad	0x3fec700b818efa3e              # double 0.88867736153026278
	.quad	0x3fdc9dda001d2cfe              # double 0.4471344948876349
	.quad	0x3fd6765fc35bca90              # double 0.35097498014435136
	.quad	0x3fd14cbea252e7d4              # double 0.27030912258089512
	.quad	0x3faea998a61f92a0              # double 0.059887666968085229
	.quad	0x3fb99b1bfcc47d38              # double 0.10002303048212446
	.quad	0x3fe829e923e60436              # double 0.75511605273653148
	.quad	0x3fb6d344797b7d60              # double 0.089161185892853378
	.quad	0x3fd2025a8aa38a04              # double 0.2813936571020863
	.quad	0x3fb2d4eed9327d18              # double 0.073561599756875373
	.quad	0x3feb3672cd5d725d              # double 0.85039653883320521
	.quad	0x3fdba5b60bd79d04              # double 0.43198920399159157
	.quad	0x3fe6e574624b5dc3              # double 0.71550959776043788
	.quad	0x3fef1d1e50d78425              # double 0.97230449475694469
	.quad	0x3fc9a63e74a39854              # double 0.20038586325898911
	.quad	0x3fc533309f32da74              # double 0.16562469266291979
	.quad	0x3fec3a93e35bd352              # double 0.88215059667582296
	.quad	0x3fe9e551a8046195              # double 0.8092430383285768
	.quad	0x3fd0083172fad8c4              # double 0.25050007084372461
	.quad	0x3fa05d50ca8232e0              # double 0.031961941452299802
	.quad	0x3faa519466139560              # double 0.051403653584012998
	.quad	0x3fe633916d94a8ee              # double 0.69379493143540372
	.quad	0x3fd823c4574a04a0              # double 0.37718304180459405
	.quad	0x3fe10efd922d6ff3              # double 0.53307989645281706
	.quad	0x3fe735132fe5a66d              # double 0.72522887568375227
	.quad	0x3f9889b7b65a8ac0              # double 0.023962851052270251
	.quad	0x3fee50276a7eb84e              # double 0.94728442001156465
	.quad	0x3febd32c9bde31e1              # double 0.8695281070991393
	.quad	0x3fe1977a261ec04f              # double 0.54974086232506092
	.quad	0x3fde5f6accb4267a              # double 0.47457380285832296
	.quad	0x3fe92f1f7795f3d6              # double 0.78700230938522497
	.quad	0x3fc4472e3ffbdc68              # double 0.15842226146898786
	.quad	0x3fea08310f6e1470              # double 0.8134999562613654
	.quad	0x3fec4a4b66e227ae              # double 0.88406915754716464
	.quad	0x3fde7288be23eb32              # double 0.47574060982121857
	.quad	0x3fdc470bffb39712              # double 0.44183635683872169
	.quad	0x3fe04ad3966db4c8              # double 0.50913409596037074
	.quad	0x3fe5fd4e943636d4              # double 0.68717125842678195
	.quad	0x3fe1a6d771163911              # double 0.55161640250460853
	.quad	0x3fef41c96e719e16              # double 0.97678062029894153
	.quad	0x3fb3303657d90558              # double 0.074954410979463204
	.quad	0x3fdaa1df7fd571ce              # double 0.41612994655386337
	.quad	0x3fd5723c8941f544              # double 0.33509744075839287
	.quad	0x3fd50ed69637b600              # double 0.32903065366448914
	.quad	0x3fbdd503017879a8              # double 0.11653155122664904
	.quad	0x3fe8be49479e7063              # double 0.77322830188814995
	.quad	0x3fef0c6a06a0d9c1              # double 0.97026540083498258
	.quad	0x3fa1210af8848150              # double 0.033455221974011295
	.quad	0x3fea40c75a09c298              # double 0.82040755830356016
	.quad	0x3fe67c074662799e              # double 0.70264018771176828
	.quad	0x3fe88d8639fe8a7b              # double 0.76727591826450181
	.quad	0x3fd1e35227006736              # double 0.27949956711528345
	.quad	0x3fa5aa7a7a434100              # double 0.042316272186896597
	.quad	0x3fec7b3e8ab8a3d0              # double 0.89004447072977122
	.quad	0x3fd5678cd881befa              # double 0.33444520133251354
	.quad	0x3feb66e587e18f05              # double 0.85631062068247898
	.quad	0x3fe368eb07eb2633              # double 0.60655738398162951
	.quad	0x3fe2b58e1c68d81b              # double 0.5846624903558707
	.quad	0x3fe0ce85f8471fd8              # double 0.52521036617053607
	.quad	0x3fec0514904bcbc8              # double 0.87562015707805418
	.quad	0x3fe6d4402c5f9b65              # double 0.71340950648014412
	.quad	0x3fe6739bb2b249cd              # double 0.70161232854507605
	.quad	0x3feed98e43073c31              # double 0.96405709353883228
	.quad	0x3fec9299afe0c1b0              # double 0.89289554930842563
	.quad	0x3f83d4662cea90c0              # double 0.0096824629266126782
	.quad	0x3fd1e5ba9312131e              # double 0.27964653360713665
	.quad	0x3fe397d58faa223b              # double 0.61228445109833929
	.quad	0x3fe4c681c71cd1c8              # double 0.64923180474448206
	.quad	0x3fd101749838aae8              # double 0.26571383347861266
	.quad	0x3fda0e09739ff446              # double 0.40710674563871796
	.quad	0x3fe9fab71b8c952d              # double 0.8118548906392441
	.quad	0x3fe9872c591ad0b2              # double 0.79775063899298559
	.quad	0x3fdde7dcd47a3758              # double 0.46727677106615806
	.quad	0x3fd6fef836a97280              # double 0.35931210840298178
	.quad	0x3fb0485e297d4908              # double 0.063604245309111573
	.quad	0x3fe225de2084da40              # double 0.56712251998289531
	.quad	0x3fa3f0ecdd4aaa60              # double 0.038947488797323571
	.quad	0x3fddbe7be231b528              # double 0.4647512158324667
	.quad	0x3f85481c7c5c1800              # double 0.010391447587164038
	.quad	0x3fe5158bafd95b45              # double 0.65888008447186819
	.quad	0x3fbaf86efbe925a0              # double 0.10535329485096279
	.quad	0x3fe3f1afe50e175e              # double 0.62325281846345226
	.quad	0x3fe4b3b4d40de5f6              # double 0.64693681160787153
	.quad	0x3fc480f8850ddc10              # double 0.16018587586197031
	.quad	0x3febb7172f501c83              # double 0.86609992256934765
	.quad	0x3fe704fde808f834              # double 0.71935935324996203
	.quad	0x3feb7e5af0b7230d              # double 0.85917422308657054
	.quad	0x3fa78e8014247320              # double 0.046009066065584969
	.quad	0x3fe7a5207f2f861e              # double 0.7389070972532783
	.quad	0x3fc6269bc3deac18              # double 0.17305323661761984
	.quad	0x3fe8e86510153832              # double 0.77836850300969318
	.quad	0x3feb31ec9f3ad1cf              # double 0.84984427547038333
	.quad	0x3fe5d8538252d601              # double 0.68265700773071114
	.quad	0x3fea69b3896d008a              # double 0.82540299263929851
	.quad	0x3fc97463c75418cc              # double 0.198864433601733
	.quad	0x3fd7fc409668b4e4              # double 0.3747712582433691
	.quad	0x3feef40bf75e7e6e              # double 0.96729086221962546
	.quad	0x3fce3c8725e53074              # double 0.23622216558794984
	.quad	0x3fd50697a3ec4728              # double 0.32852736480809819
	.quad	0x3fc646f608f2040c              # double 0.17404056011949398
	.quad	0x3fdd10b70e1c5868              # double 0.45414520624161137
	.quad	0x3fd50bd2552f3a0c              # double 0.32884653395459007
	.quad	0x3fe4b431773f2314              # double 0.64699624338490702
	.quad	0x3fdd719382e312c0              # double 0.46005714208540027
	.quad	0x3fefd2a63806fb92              # double 0.99446402495219588
	.quad	0x3fd1cc33a71025aa              # double 0.27808848681214704
	.quad	0x3fe65c8aab469325              # double 0.69879659130365168
	.quad	0x3febc6159494c464              # double 0.86793021220922783
	.quad	0x3fe68b4486c87ab6              # double 0.70450044941738699
	.quad	0x3fc62898e51bd7a0              # double 0.17311392962409133
	.quad	0x3fe9bc082d237436              # double 0.80420311752425877
	.quad	0x3fc1ab7889b736a0              # double 0.13804537510298065
	.quad	0x3fd0269a22683768              # double 0.25235608444278634
	.quad	0x3fab53f25853fac0              # double 0.053374837190849345
	.quad	0x3fd8630047e25aea              # double 0.38104254741612797
	.quad	0x3fce32af2a5f25f4              # double 0.23592176026276912
	.quad	0x3fec63f5f93f1986              # double 0.88720225029901267
	.quad	0x3fef245aa7eb0e32              # double 0.9731877593662317
	.quad	0x3fd59ae3e53cfe06              # double 0.33757874857471426
	.quad	0x3fdf625a84c47348              # double 0.49037802663388108
	.quad	0x3fd3a4ca4545b27a              # double 0.30693299069279301
	.quad	0x3fcd06aadba6f394              # double 0.22676597333147852
	.quad	0x3fc7c1bf42ede9ec              # double 0.18560019271883677
	.quad	0x3fe957366c6a8a59              # double 0.79189606833490267
	.quad	0x3feed3d59bdb14b1              # double 0.96335869255621819
	.quad	0x3fd2c781504614dc              # double 0.29342682685121502
	.quad	0x3fe17cc38d033b7e              # double 0.54647996465233439
	.quad	0x3fe89ff0aedbf94b              # double 0.76952394630624477
	.quad	0x3fe659ca7b98ced3              # double 0.69846080913563424
	.quad	0x3fb03724e22370a8              # double 0.06334143181760743
	.quad	0x3fdf81f0e8711a7a              # double 0.49230597209353955
	.quad	0x3fe4c9bf44091345              # double 0.64962733543561824
	.quad	0x3fed8ab4bbfd296c              # double 0.92318188397011402
	.quad	0x3fe7df22916bc1f6              # double 0.74598816301846571
	.quad	0x3fdd026f8713e48e              # double 0.4532736605756974
	.quad	0x3fc82f8f6d704e8c              # double 0.188951424061646
	.quad	0x3fe64ee689c8c26a              # double 0.69713141356448927
	.quad	0x3fd644346f1d5d2e              # double 0.34791289187474461
	.quad	0x3fece53f81428455              # double 0.90298438306866535
	.quad	0x3fc6d11a582d4688              # double 0.17825631433020228
	.quad	0x3fe1896149adf6c1              # double 0.54802002325569543
	.quad	0x3f70298a1e11a800              # double 0.0039458651745949425
	.quad	0x3fec184afbdaeb5c              # double 0.87796544256648756
	.quad	0x3fe94a9a4cb68c3d              # double 0.79035677893660472
	.quad	0x3fe694030ab9db84              # double 0.70556785674021727
	.quad	0x3fc7af141c28998c              # double 0.18503047347003265
	.quad	0x3fea03883541c32c              # double 0.81293115998969289
	.quad	0x3fe0781dd7dc7af2              # double 0.51466266785049997
	.quad	0x3f8519dc67bad340              # double 0.010303232112485738
	.quad	0x3fd2522f5faccd8a              # double 0.2862661775900156
	.quad	0x3fec87d1a38421fd              # double 0.89157945572611619
	.quad	0x3fdede03d377b16e              # double 0.48230071688774145
	.quad	0x3fdfcf64543d6cea              # double 0.49703319765622089
	.quad	0x3fb6829ef55e2a08              # double 0.087930617241149034
	.quad	0x3fd7571f6aee8980              # double 0.36469254915768801
	.quad	0x3fb1568b35ba2ac8              # double 0.067726803414340897
	.quad	0x3fdc4b2c17504e4c              # double 0.44208814884880065
	.quad	0x3fcae0ada2b941dc              # double 0.20998163648120183
	.quad	0x3feac93069e7f2c6              # double 0.83705921826148066
	.quad	0x3fe8aba6ef4d713b              # double 0.77095362414141932
	.quad	0x3fd9d0a44a65871a              # double 0.40335948243419895
	.quad	0x3fe1bf1f5f2562b0              # double 0.55458038886270877
	.quad	0x3fd93ef62d5d0dd8              # double 0.3944678729060036
	.quad	0x3fc7aee390b8f778              # double 0.18502468649415582
	.quad	0x3fed7167a6ee254b              # double 0.92009337047162754
	.quad	0x3fed3f4e60df0ca4              # double 0.91397780342267198
	.quad	0x3fe540875ff6ca71              # double 0.6641270517632859
	.quad	0x3fd64a35fdfc13ee              # double 0.34827947428885764
	.quad	0x3fe4cf38fbfb4511              # double 0.65029572692052018
	.quad	0x3fe2827d96115884              # double 0.57842902479275482
	.quad	0x3fe6d74822fb9bdf              # double 0.71377951462352118
	.quad	0x3fece97e32792975              # double 0.90350255830826021
	.quad	0x3fe6fe72c41921fe              # double 0.71856058407234946
	.quad	0x3fe41f0f55570acf              # double 0.62879149120302624
	.quad	0x3fe6904ced212a84              # double 0.70511480631223877
	.quad	0x3fe4e4d9621eeaf7              # double 0.65293568767751153
	.quad	0x3fe0da40f713b7c5              # double 0.5266423059199431
	.quad	0x3fe9c20cd954e309              # double 0.80493776748252899
	.quad	0x3fd1d28889558af6              # double 0.27847493564165349
	.quad	0x3fd7f98e96f90290              # double 0.37460674994876175
	.quad	0x3fd708b9d6576b38              # double 0.35990758830819258
	.quad	0x3fbc302685b4f620              # double 0.11010971798256053
	.quad	0x3fc6e9f26b4f70e0              # double 0.17901449432145622
	.quad	0x3fec0d3e18b30439              # double 0.8766165239723086
	.quad	0x3fced3887133192c              # double 0.24083047416042669
	.quad	0x3fc6d288604a0b94              # double 0.17829994870779997
	.quad	0x3fd73291e286a928              # double 0.3624615394752646
	.quad	0x3fe50222d28a8102              # double 0.65651074525160902
	.quad	0x3fd1a8c59f42cf28              # double 0.27592602303342284
	.quad	0x3fe044c085dc4d69              # double 0.50839258331909065
	.quad	0x3fbdaf82da62ac60              # double 0.1159593375365815
	.quad	0x3faecb17e93c8880              # double 0.060143229695555966
	.quad	0x3feecf34aa948549              # double 0.96279366795003185
	.quad	0x3fe48100713f2d86              # double 0.64074728125108105
	.quad	0x3fcc1eee960df6ac              # double 0.21969396902925575
	.quad	0x3fe148649efc64b4              # double 0.54008704235015736
	.quad	0x3fe006edb4143a2a              # double 0.50084576770479328
	.quad	0x3feea3a3c721e6af              # double 0.95747555630733483
	.quad	0x3fc5a3eed68036fc              # double 0.1690653369300249
	.quad	0x3fed3af9662de9c2              # double 0.91344900090125969
	.quad	0x3fc08303cb5f4940              # double 0.12899825506480944
	.quad	0x3fcb51932f715214              # double 0.21342696968589847
	.quad	0x3fe72df0a016eed2              # double 0.72435790317055138
	.quad	0x3fc886d7a7d729a4              # double 0.19161506362281699
	.quad	0x3fe55b800756a071              # double 0.66741944726255842
	.quad	0x3fa399bde79868e0              # double 0.038282331963459759
	.quad	0x3fe01ac96ad83e6d              # double 0.50326987140756574
	.quad	0x3fded6c4ec11c1b8              # double 0.48185847333573006
	.quad	0x3fe1f7f023c88eb5              # double 0.56151587475729647
	.quad	0x3fe3f1a569bcbde0              # double 0.62324782039462079
	.quad	0x3fe64f8ac892adaa              # double 0.69720973181158752
	.quad	0x3fe5673fe9b7ab1f              # double 0.66885371826115037
	.quad	0x3fd089d60d08d34c              # double 0.25841285012147774
	.quad	0x3fe37b6fddfd68bb              # double 0.60881799085043242
	.quad	0x3fe4169a2f66ce75              # double 0.62775906808970083
	.quad	0x3fda1179ee22e44a              # double 0.40731666808602951
	.quad	0x3fec9feebbb59c41              # double 0.89452301656718458
	.quad	0x3fea56be3e749123              # double 0.82308876226719396
	.quad	0x3fe6ae0cace32e5d              # double 0.70874627844882421
	.quad	0x3fe666e4395d0bae              # double 0.70005999759483983
	.quad	0x3fec2231f1631afe              # double 0.87917420526431989
	.quad	0x3fa64d302a1e2da0              # double 0.043557648793547843
	.quad	0x3fbddc9db7413f88              # double 0.11664758419033039
	.quad	0x3fe2e83b70829847              # double 0.59084865545879317
	.quad	0x3fd6daff7b4411d4              # double 0.35711657560048349
	.quad	0x3fd88b08c5513f7e              # double 0.38348597783350857
	.quad	0x3fbca24ef0ba7db0              # double 0.1118516290393845
	.quad	0x3fdf5e2605344ce0              # double 0.49012136944038609
	.quad	0x3fcb2baa86e6f04c              # double 0.21227008425728611
	.quad	0x3fc6291ef99a4088              # double 0.17312991321205495
	.quad	0x3fe4a80b3f5892fb              # double 0.64551317569984634
	.quad	0x3feb56e1b3ce8dd3              # double 0.85435567015195557
	.quad	0x3fd77ead3b063c4a              # double 0.3671067310724011
	.quad	0x3fdc8ee5a99aa420              # double 0.44622174799821046
	.quad	0x3fd9fb48bc91ab40              # double 0.40596216597502988
	.quad	0x3feff500dc83d68a              # double 0.99865763730368085
	.quad	0x3f88e76d58f4cf00              # double 0.012160162236433347
	.quad	0x3f991c2a3e4b22c0              # double 0.024521503498166508
	.quad	0x3fe9c31dc995114d              # double 0.80506791469137229
	.quad	0x3fc93f8380288d04              # double 0.19725078351721248
	.quad	0x3fe96a0aba81ef26              # double 0.79419456889397533
	.quad	0x3fd1e1eb16b47fb8              # double 0.27941395966808669
	.quad	0x3fda1420e460185c              # double 0.4074785452106704
	.quad	0x3fd026aabcd86d70              # double 0.25236004297194992
	.quad	0x3fa161a90229e3f0              # double 0.033948213113894954
	.quad	0x3fed3b3392cb818d              # double 0.9134767405594616
	.quad	0x3fe8dfe6cdd03ec1              # double 0.77733173559132507
	.quad	0x3fd799abdf8304d8              # double 0.36875435664485456
	.quad	0x3fc245a80e13efe4              # double 0.14275074660679288
	.quad	0x3fd8351d875f2bea              # double 0.37824190349482356
	.quad	0x3fde57cadfdc4364              # double 0.47410842763297567
	.quad	0x3fdc4d0c9932f610              # double 0.44220271073194883
	.quad	0x3fcae28195df6db8              # double 0.2100374204445481
	.quad	0x3fe84ca90cbccbdb              # double 0.75935795295515207
	.quad	0x3fe4e00ea6273685              # double 0.6523507352046215
	.quad	0x3fd7ed6b41eb6536              # double 0.37386590421154453
	.quad	0x3fefe3f565f7dda1              # double 0.99657697597188044
	.quad	0x3fda758257159ec6              # double 0.41342218880025106
	.quad	0x3fe146fd48b81726              # double 0.53991569712591025
	.quad	0x3fa37642a36fc540              # double 0.038011629534489888
	.quad	0x3feaa474fbe74dac              # double 0.83257531356723779
	.quad	0x3fc03f74477586b0              # double 0.12693646897519306
	.quad	0x3fb84c2bef341d40              # double 0.094912286662396816
	.quad	0x3fef7ca2ebf20e07              # double 0.98396440585241939
	.quad	0x3fd71f66108dae08              # double 0.3612914239554077
	.quad	0x3fd3f7d0e3cfd628              # double 0.31200048682453252
	.quad	0x3fe2f4b4cf9a156e              # double 0.59237137362712899
	.quad	0x3fe9bfe5dc18896c              # double 0.80467503535719009
	.quad	0x3feeceafce43e5f7              # double 0.96273031507661144
	.quad	0x3fd97d25d120f350              # double 0.39826341078496785
	.quad	0x3fe14257f2f91708              # double 0.53934857803025782
	.quad	0x3fdd26972234ef2e              # double 0.45548036900048572
	.quad	0x3fcda443c5de0af0              # double 0.23157546197406687
	.quad	0x3fd7c35d56e763f2              # double 0.37129910933214127
	.quad	0x3fb285ff2c23b1b0              # double 0.072357128406742133
	.quad	0x3fe43f3465f1f42a              # double 0.63271541510733198
	.quad	0x3fb573166ca72160              # double 0.08378734734208626
	.quad	0x3f87518c67fe8640              # double 0.011386010097171995
	.quad	0x3feebf6ed7cdb446              # double 0.96086828374030442
	.quad	0x3fe02362fbda5d54              # double 0.50431966009174767
	.quad	0x3fcb376dbb70c954              # double 0.2126290478932541
	.quad	0x3fe9169f9ef7ce04              # double 0.78401166008410472
	.quad	0x3fe730d5b54e8960              # double 0.7247112790248984
	.quad	0x3fe3fc077dca171a              # double 0.6245152909111511
	.quad	0x3fda2db7bf665fe2              # double 0.40904039088627375
	.quad	0x3fd9c723c3715f38              # double 0.40277952276436535
	.quad	0x3fc6a1858dd8b334              # double 0.17680425096605179
	.quad	0x3fc6feb563abb324              # double 0.17964808813794619
	.quad	0x3fc091ac96ca4200              # double 0.12944562304302565
	.quad	0x3fdefe38a91732fe              # double 0.48426643860584295
	.quad	0x3fbafc14472cb958              # double 0.10540892350829745
	.quad	0x3fd538a48d96e5c0              # double 0.33158220126241744
	.quad	0x3f837f0b014bff80              # double 0.0095196590204975617
	.quad	0x3fc3269cf0964fd8              # double 0.14961587665004461
	.quad	0x3fee9ffa1c5b47d8              # double 0.95702844179526902
	.quad	0x3fed2fcf43e5db33              # double 0.91208613644889736
	.quad	0x3f94b08a19c9fdc0              # double 0.020204694580113758
	.quad	0x3fc97d31b490b660              # double 0.19913312260307503
	.quad	0x3fdc1cebe8248bce              # double 0.43926522894088016
	.quad	0x3fa8175f82334650              # double 0.047053322452154434
	.quad	0x3fc9779891366268              # double 0.19896227922869802
	.quad	0x3fc37027699ca024              # double 0.15186016709162786
	.quad	0x3fde9780e60a0f8c              # double 0.47799704041266788
	.quad	0x3fe1d8f064d228c1              # double 0.55773181621159307
	.quad	0x3fe773e459c1c35f              # double 0.73289697199480119
	.quad	0x3fd3db1fde600832              # double 0.31024929729767614
	.quad	0x3fdc7e7ab8fa937c              # double 0.4452196890290947
	.quad	0x3fe60cd1d06984c7              # double 0.6890648909140048
	.quad	0x3fe88fb5c4b13d9f              # double 0.76754272858117989
	.quad	0x3fe1be12d7b0511d              # double 0.55445234419542866
	.quad	0x3fadf320f3c47920              # double 0.058495549923679002
	.quad	0x3fa69a4cd67dfae0              # double 0.044145966704481898
	.quad	0x3fe11f5609cf3a1f              # double 0.53507520595468694
	.quad	0x3fe59bdb46a7c720              # double 0.67527545738105133
	.quad	0x3fd82e3b739fe9ba              # double 0.37782179156752316
	.quad	0x3fc3e5cce4f969e8              # double 0.15545045071014774
	.quad	0x3feaaff7e624edb8              # double 0.83398051214265134
	.quad	0x3feda316fea393a4              # double 0.92615842565702566
	.quad	0x3fe430460ae0009d              # double 0.63089277385735765
	.quad	0x3fdf2577a7f48600              # double 0.48666182901260413
	.quad	0x3fe5abcbdfcd1d60              # double 0.67722123824288971
	.quad	0x3febfe0280bb19e5              # double 0.87475705282923555
	.quad	0x3fc38982ab4d4f00              # double 0.15263398517947024
	.quad	0x3fe93f91d337f12f              # double 0.78900996450059846
	.quad	0x3fc0a6fa40717bac              # double 0.13009575029988463
	.quad	0x3feca849e34f15a2              # double 0.8955430450084132
	.quad	0x3fd1734ea2668e3c              # double 0.27266279086527212
	.quad	0x3fd3475d85333fd0              # double 0.30123079307395262
	.quad	0x3fc133a7b5303978              # double 0.13438888880814281
	.quad	0x3fd0d1898493e51e              # double 0.2627891344742056
	.quad	0x3fe7683b6a4d6635              # double 0.73147364389587344
	.quad	0x3f935aea66e131c0              # double 0.018901503114010287
	.quad	0x3fd393768fcad68e              # double 0.30587543527813288
	.quad	0x3fe6c7fa4e113e6c              # double 0.71191134688883784
	.quad	0x3fded37e51382c20              # double 0.48165853435119921
	.quad	0x3fe5edca2b5f9900              # double 0.68527706595776294
	.quad	0x3fef380a7fe554ed              # double 0.97559094409612401
	.quad	0x3fdfc15438c019b4              # double 0.4961748651698159
	.quad	0x3feb2afc9ad0f38e              # double 0.84899740445654159
	.quad	0x3fdde52de7ee0bdc              # double 0.46711299561883179
	.quad	0x3fe969dc50c2ccb0              # double 0.79417243741626997
	.quad	0x3fedb0194040fe52              # double 0.92774641561113413
	.quad	0x3fe0916818861416              # double 0.5177498320559859
	.quad	0x3fea2a33ec8f1129              # double 0.81765171244527324
	.quad	0x3fed9ba38440fd9f              # double 0.92524886923631644
	.quad	0x3feee685ddafc68f              # double 0.96564000414055495
	.quad	0x3fc67c244f3d0e2c              # double 0.17566350812022458
	.quad	0x3faaf0826fc91090              # double 0.052616192002944762
	.quad	0x3fc7bc064f94489c              # double 0.18542555700020535
	.quad	0x3fb8d09e2b4390d0              # double 0.096933255732042811
	.quad	0x3fe9b5d0bb63c17e              # double 0.80344425773186834
	.quad	0x3fe8166dfd81a8b1              # double 0.75273799431785993
	.quad	0x3fef36ff72d78307              # double 0.97546360425994371
	.quad	0x3fd484a49a0ec380              # double 0.32059588474935907
	.quad	0x3fea85ef82547528              # double 0.82884955840169017
	.quad	0x3fe6764145eabce1              # double 0.70193542152074084
	.quad	0x3fd0fc99f7e9d8c4              # double 0.26541756830500796
	.quad	0x3fe811ddbd127632              # double 0.75218092849872265
	.quad	0x3fcf5cb117d7b5a8              # double 0.24501622833433356
	.quad	0x3fc80996d9da1e24              # double 0.18779264104181081
	.quad	0x3fe684dc4626be83              # double 0.70371831609186619
	.quad	0x3fe46b83da3f213c              # double 0.63812439562119705
	.quad	0x3fe0502357e16211              # double 0.50978247799054277
	.quad	0x3fea7d8420aa7440              # double 0.82782179241224441
	.quad	0x3fe61be511a120a8              # double 0.69090512698405337
	.quad	0x3fdb7188c1786714              # double 0.428804577766287
	.quad	0x3feaf1330edc1383              # double 0.84194329168586568
	.quad	0x3fe6578f670b68eb              # double 0.6981884968365909
	.quad	0x3fe45388f9c56b34              # double 0.63519715102606833
	.quad	0x3fef9fd0f180ba6b              # double 0.9882588116505081
	.quad	0x3fac6e99ad54a800              # double 0.055531313332110699
	.quad	0x3fee8970e30b676c              # double 0.95427746147764258
	.quad	0x3fee4d92169c34ab              # double 0.94696907440233724
	.quad	0x3fde3fb1072d8986              # double 0.47263742161717237
	.quad	0x3fceb89cd8600af0              # double 0.24000893178170868
	.quad	0x3fec7bf2400259f9              # double 0.8901301622561838
	.quad	0x3fe733a7e5298f6d              # double 0.72505564459104976
	.quad	0x3fd5accdfbcc8d2e              # double 0.33867215718983601
	.quad	0x3fc26ac525d6be88              # double 0.14388336513137667
	.quad	0x3fe6a211e7d547cf              # double 0.70728392867953882
	.quad	0x3fed2c3853266106              # double 0.91164795150965072
	.quad	0x3fc6b2194e4f8f2c              # double 0.17731014560478664
	.quad	0x3fddb45370a8f43a              # double 0.46413122178984489
	.quad	0x3fda4581c7c3f1ea              # double 0.41049236782399012
	.quad	0x3fd8df621b5263ca              # double 0.38863423030994382
	.quad	0x3febbaf486d1fe01              # double 0.86657167751394593
	.quad	0x3fb265694d4c4840              # double 0.071859914180351758
	.quad	0x3f9b24e2b3dd04c0              # double 0.026507894733417414
	.quad	0x3fdce18fcb5b5da2              # double 0.45126719340393084
	.quad	0x3fefec108e23b420              # double 0.99756648789992041
	.quad	0x3fea9137116c9ef5              # double 0.83022645381148996
	.quad	0x3fc8c6022865ebfc              # double 0.19354273769917529
	.quad	0x3fda8854941db454              # double 0.41457094635444958
	.quad	0x3fe5e53f8b85d2b7              # double 0.68423440218483378
	.quad	0x3fe27c4e4f47620f              # double 0.57767405971668662
	.quad	0x3fe1ce5e5559b3d4              # double 0.55644146604538003
	.quad	0x3fd01160b21e4a62              # double 0.25106065172545844
	.quad	0x3fe804901968b4a8              # double 0.75055699312874413
	.quad	0x3fe03b6ff11b47a8              # double 0.50725552645802896
	.quad	0x3fe7b4dc47548dff              # double 0.74082769328782649
	.quad	0x3fdc3311f1ade7ba              # double 0.44061707116599858
	.quad	0x3fd196a994261aea              # double 0.27482070415173487
	.quad	0x3fcdb5cdfae058ec              # double 0.23211073636839019
	.quad	0x3fd959e3eb3a41ea              # double 0.39611146899645056
	.quad	0x3fe553b3902f3683              # double 0.66646745835323917
	.quad	0x3fd30a6819f34612              # double 0.29751017126281554
	.quad	0x3fc3b8d36510736c              # double 0.15407793459680919
	.quad	0x3fd75f71d90d8984              # double 0.36520048328943511
	.quad	0x3fefdd04fccf5525              # double 0.99572991730625359
	.quad	0x3fc0905f98ec7410              # double 0.12940592734312917
	.quad	0x3fd9ecd5df3810cc              # double 0.40508028792124828
	.quad	0x3fe6f865114dd56a              # double 0.71782163028426038
	.quad	0x3fb0eb9f27324718              # double 0.0660953016943292
	.quad	0x3fc901a770ab90a0              # double 0.19536297799561897
	.quad	0x3fbc409e89499e30              # double 0.1103610119986278
	.quad	0x3fea0cae74302a95              # double 0.81404802983282087
	.quad	0x3fdee353089ba5d4              # double 0.4826247772276393
	.quad	0x3fe08bbae2a952cc              # double 0.51705688733871957
	.quad	0x3fe4d81f810d2d72              # double 0.65138220982900763
	.quad	0x3fea1233296c7eb5              # double 0.81472166147792413
	.quad	0x3fecff0a849d848d              # double 0.90613294507433439
	.quad	0x3fc1fe58a6b80998              # double 0.14057453289576638
	.quad	0x3fda13ad30b2536e              # double 0.40745095973516399
	.quad	0x3fcf2fe6bdddc404              # double 0.24364933272184441
	.quad	0x3fe0df492563effd              # double 0.52725655844506003
	.quad	0x3fe95609c1b28422              # double 0.79175269919881353
	.quad	0x3fe634b8507a84af              # double 0.69393554419015924
	.quad	0x3fe969c7ee2966a1              # double 0.79416271701775909
	.quad	0x3fe5c3bf0dbad60f              # double 0.68014481240851576
	.quad	0x3fb7c985ed5c2b98              # double 0.092918749284008562
	.quad	0x3fd955f030da14e6              # double 0.39587025423709432
	.quad	0x3fd5db27290ff280              # double 0.34150103578557633
	.quad	0x3fe42836734f64c0              # double 0.62990877648839927
	.quad	0x3fe14b456a212ac2              # double 0.54043837288312369
	.quad	0x3feb532c3003b2cf              # double 0.85390290620633802
	.quad	0x3fe8339d77c6e497              # double 0.75630067247324717
	.quad	0x3fe4f8613590647b              # double 0.65531979047513234
	.quad	0x3fedcb4844a067b3              # double 0.9310647335398613
	.quad	0x3fd52ba14c8e4de6              # double 0.33078796840820102
	.quad	0x3fc4b01c83e79424              # double 0.16162449303297521
	.quad	0x3fedb71430538fb7              # double 0.92859849394562033
	.quad	0x3fe148ee96cc2167              # double 0.54015283062566943
	.quad	0x3fe4ee588b94922b              # double 0.65409495603359369
	.quad	0x3fe29a28f2fa8bd2              # double 0.58131835419441757
	.quad	0x3fe09aee7f75aaa7              # double 0.51891255278072357
	.quad	0x3fd33a0db91f1d06              # double 0.30041831091189442
	.quad	0x3fe7a0783f9a85f8              # double 0.73833858892993387
	.quad	0x3fec4cae8da75187              # double 0.88436057726589545
	.quad	0x3fe43f426448c2c4              # double 0.63272208773386085
	.quad	0x3fe8381c5c731ca4              # double 0.75684946114133255
	.quad	0x3fdec33096c3589e              # double 0.48066343996959826
	.quad	0x3fd9ac3d28b3b73c              # double 0.4011376283150303
	.quad	0x3fc825779930d0ac              # double 0.1886434076310527
	.quad	0x3fedd2f689c0594b              # double 0.93200232414782513
	.quad	0x3fcef5430232041c              # double 0.24185979468532615
	.quad	0x3fcd567644555c60              # double 0.22920111023515499
	.quad	0x3fc390368a346ea0              # double 0.15283853290826688
	.quad	0x3fdedd536b673a54              # double 0.48225865830037162
	.quad	0x3fd74e178c090586              # double 0.36414135623280008
	.quad	0x3feffb736aeef1b6              # double 0.99944468388962693
	.quad	0x3fe03177e2a5d21e              # double 0.50603861109863479
	.quad	0x3fe0f2f4f45f2d72              # double 0.52965781906952558
	.quad	0x3fe00be024e67c3c              # double 0.50144965369316408
	.quad	0x3fe796f39b76825a              # double 0.7371767078767093
	.quad	0x3f99e66ff0002d40              # double 0.025293110869865076
	.quad	0x3febfdca40f6904a              # double 0.8747302311717331
	.quad	0x3fb3d6f723332de0              # double 0.07749886140225426
	.quad	0x3fe784d7bd7c2762              # double 0.73496615418228495
	.quad	0x3fd60b733694ab24              # double 0.34444885568761863
	.quad	0x3fee1d55895431e6              # double 0.94108082601593135
	.quad	0x3fb941d2011ed000              # double 0.098660588525319781
	.quad	0x3febdcec72165c57              # double 0.87071821482357847
	.quad	0x3fa8265de06c0a30              # double 0.047167714734332455
	.quad	0x3fd84be096688468              # double 0.37963118255908634
	.quad	0x3fec4745e648b860              # double 0.88370032288890953
	.quad	0x3fd1c65aee7f0efa              # double 0.27773164072662804
	.quad	0x3fe8421c132b0969              # double 0.75807002776882115
	.quad	0x3fdd706a2e9a96aa              # double 0.459986253272613
	.quad	0x3fe72ea16d852822              # double 0.72444220915463498
	.quad	0x3fd90477741c3b52              # double 0.39089762057203814
	.quad	0x3fe89a3c9079df71              # double 0.76882770746213513
	.quad	0x3fda29f32c65051c              # double 0.40881041846667343
	.quad	0x3fd867ee4bd1753c              # double 0.38134343532677284
	.quad	0x3fdfff6f264c1828              # double 0.49996546497311778
	.quad	0x3fe07c4dd1cc6aaa              # double 0.51517382599134476
	.quad	0x3fc356ca28b606e0              # double 0.15108611095279567
	.quad	0x3f9d4b2e165cda40              # double 0.028607101550017555
	.quad	0x3fe302b70a7c2b49              # double 0.59408142135485165
	.quad	0x3fede2ccb2091403              # double 0.93393549702216239
	.quad	0x3fe34f4e79112e40              # double 0.60343097349090868
	.quad	0x3fe71d158c57bdf2              # double 0.72230031405155004
	.quad	0x3fca18ee0e5be228              # double 0.20388580037230608
	.quad	0x3fddedf431df586c              # double 0.46764855261188276
	.quad	0x3feb777d8601499f              # double 0.85833622143609378
	.quad	0x3fe526543ff3341f              # double 0.66092884531247253
	.quad	0x3fe1b1226e7ee665              # double 0.55287286359016419
	.quad	0x3fd8da2b5799e9ae              # double 0.3883159976463969
	.quad	0x3fd176e0f109bb6c              # double 0.27288077868336447
	.quad	0x3fe097a962acbbd9              # double 0.51851338646326461
	.quad	0x3fd128d50e74c44e              # double 0.26811720287065988
	.quad	0x3fdf9c796f07c758              # double 0.49392543642817577
	.quad	0x3fdf30bb5e64c4de              # double 0.48734935968520954
	.quad	0x3fe51b8e41abe1b4              # double 0.65961373163650316
	.quad	0x3fd47520d517f3c4              # double 0.31964894113462727
	.quad	0x3fdcac59bdf7f8ba              # double 0.44801944305062202
	.quad	0x3fc0390f43e8912c              # double 0.12674132171481156
	.quad	0x3fe46f80dbc74544              # double 0.63861124921292189
	.quad	0x3fe32afbfe276528              # double 0.59899711265021427
	.quad	0x3fe2a04b5253f0f6              # double 0.58206716613452048
	.quad	0x3fecf236891b0796              # double 0.90456702021059487
	.quad	0x3fe247b2e0a6871b              # double 0.57125228764582248
	.quad	0x3fb01c25daed9d38              # double 0.062929502438795804
	.quad	0x3fdbc07b35667fdc              # double 0.43362312521821678
	.quad	0x3fe7da787e947c0e              # double 0.74541878435764075
	.quad	0x3fd1e95b7f87e8da              # double 0.27986800626935138
	.quad	0x3fa98eb159caa730              # double 0.049916784487619714
	.quad	0x3fb600258e1a5ca8              # double 0.085939738457784132
	.quad	0x3fe89960d8288376              # double 0.76872293680581438
	.quad	0x3fdff263f784250e              # double 0.49916934176924677
	.quad	0x3fe183b59d37b217              # double 0.54732781130366248
	.quad	0x3fb49abb28b9ad70              # double 0.080486009066296437
	.quad	0x3fe653ff9f358fcc              # double 0.69775372596313323
	.quad	0x3fe92e11dfa9af4b              # double 0.78687375721117669
	.quad	0x3fb22ffd0f798510              # double 0.071044746664046921
	.quad	0x3fec3f9320ebf699              # double 0.8827605860712594
	.quad	0x3fb0083229cb2e98              # double 0.062625060275588118
	.quad	0x3f89d3d13c76fe40              # double 0.012611040742625979
	.quad	0x3fe7178d76291bd2              # double 0.72162507131803921
	.quad	0x3fe84ea1c0ef0039              # double 0.75959861452429955
	.quad	0x3fd5df467ee545e6              # double 0.34175264732502197
	.quad	0x3fa861b1be864af0              # double 0.04762034846057428
	.quad	0x3fcc408609883898              # double 0.22071910348353607
	.quad	0x3fe8ddccb82a674e              # double 0.77707515687800721
	.quad	0x3fe96538e88054e7              # double 0.79360623751076964
	.quad	0x3fe95fe227b5ada3              # double 0.79295451885029811
	.quad	0x3feffd670f520b5f              # double 0.99968293182642387
	.quad	0x3fd19b2518558260              # double 0.27509429336899949
	.quad	0x3fdd5ef53f200022              # double 0.45892077602911929
	.quad	0x3f688378dedaca00              # double 0.0029923783066234666
	.quad	0x3fd0b9666fdbc3c4              # double 0.2613159267776235
	.quad	0x3fe5da459d7658e0              # double 0.68289452318529342
	.quad	0x3fe526ce5a715c50              # double 0.66098706879246016
	.quad	0x3fd4c7901d447d56              # double 0.32468035562665898
	.quad	0x3fef2620ac6ef46e              # double 0.97340425184633061
	.quad	0x3fb2d423d2a89688              # double 0.07354949849158221
	.quad	0x3fee4a469944ce98              # double 0.94656686721141891
	.quad	0x3fecad687e9c6ea7              # double 0.89616799095843624
	.quad	0x3feaef4f59b9f10f              # double 0.84171264195131978
	.quad	0x3fdc1b9ef3b9a014              # double 0.4391858463409346
	.quad	0x3fd30401dea87fda              # double 0.29711958641018799
	.quad	0x3fd52b4cf0a635c0              # double 0.33076785565284794
	.quad	0x3fc3004979d47e50              # double 0.14844625900967623
	.quad	0x3fe01e7baad9e6a2              # double 0.50372107858057213
	.quad	0x3fe29d718efb6ae5              # double 0.58171918798629163
	.quad	0x3fe9428c54155b3a              # double 0.7893735544447289
	.quad	0x3fc2ce441663a970              # double 0.14691973775127165
	.quad	0x3fd7f906e2d51b5a              # double 0.37457439567190465
	.quad	0x3fc297a824e1cb68              # double 0.14525319863204378
	.quad	0x3fef6bbfd17a6e1b              # double 0.9819029895183492
	.quad	0x3fe43df6f3733471              # double 0.63256404446441483
	.quad	0x3f973c918f28b860              # double 0.022691988337264823
	.quad	0x3fda13a8b8c011d0              # double 0.40744989435213785
	.quad	0x3fdc6a65587e50f0              # double 0.44399388925491134
	.quad	0x3fef4f6787eea1c7              # double 0.97844292210816596
	.quad	0x3fe5c9ce9db0fe9c              # double 0.68088465499018325
	.quad	0x3fcc067db6be0ef8              # double 0.21894809172601248
	.quad	0x3fba1c7cd2e24958              # double 0.10199718616994369
	.quad	0x3fe8fdedc0819a89              # double 0.78099715803985348
	.quad	0x3feea354c1fa7a77              # double 0.95743787657177293
	.quad	0x3fd69cb55b758d58              # double 0.35331472331582381
	.quad	0x3fd7fdb30a832cda              # double 0.37485958124734753
	.quad	0x3fb03e2aa4a51100              # double 0.063448586651308148
	.quad	0x3fea212ed7d1b723              # double 0.81655065681636463
	.quad	0x3fedd65176413011              # double 0.93241189095124544
	.quad	0x3f96533ac8033fa0              # double 0.021801870782666932
	.quad	0x3fe07aed6aaf11a5              # double 0.51500578724567403
	.quad	0x3fe67f6d625f7009              # double 0.70305508817136897
	.quad	0x3fee858a1aea9cc5              # double 0.95380120522613565
	.quad	0x3fdca70ce4dfbc48              # double 0.44769594527219114
	.quad	0x3fce0b8fca90af4c              # double 0.23472783461454083
	.quad	0x3fe22a099584d0d4              # double 0.56763152315991272
	.quad	0x3fd31456101aa82a              # double 0.29811622212094113
	.quad	0x3fd21b81476a9630              # double 0.28292877172711695
	.quad	0x3fd72e1a561a2800              # double 0.36218889625945394
	.quad	0x3fe9b4e18bf8436c              # double 0.80333020532462517
	.quad	0x3f92d93289cc22a0              # double 0.018406667385564845
	.quad	0x3fd30ea34381ff38              # double 0.2977684172874322
	.quad	0x3fea4a6db66d7b54              # double 0.82158551817324587
	.quad	0x3fd44d5335e7e924              # double 0.31721954597709812
	.quad	0x3fc12d0f97cd9ce8              # double 0.13418764984383036
	.quad	0x3f90ee8bb8134160              # double 0.016534979925212467
	.quad	0x3fc3793af3e867d4              # double 0.15213715467035505
	.quad	0x3fbb519769e890a8              # double 0.10671373687415786
	.quad	0x3fee0349a06060c8              # double 0.93790131877451532
	.quad	0x3fef899f47c96384              # double 0.98554958363375577
	.quad	0x3fc14422ea59f0b8              # double 0.13489185755668642
	.quad	0x3fbc29d57ddf86d8              # double 0.11001333544802649
	.quad	0x3fe60a3816236b74              # double 0.68874744724176518
	.quad	0x3fbd1b3796779388              # double 0.1136965505935007
	.quad	0x3fe78886865257ad              # double 0.73541570887276964
	.quad	0x3fcbfee5d181007c              # double 0.21871636132891925
	.quad	0x3fe3cecf99a951c6              # double 0.61899547588341686
	.quad	0x3feecf85d3e5c6e1              # double 0.96283236871951427
	.quad	0x3fe3671917355ce7              # double 0.60633520634555971
	.quad	0x3fd96433e7a23a66              # double 0.39674089069823137
	.quad	0x3fdbf537c7c8fa82              # double 0.43684191236744863
	.quad	0x3fe9f1f4ab9a07d8              # double 0.81078561321214249
	.quad	0x3fd7eafe791819be              # double 0.37371789765930064
	.quad	0x3fda0d9c50d66508              # double 0.40708072561535902
	.quad	0x3fd4d8ff74781eb8              # double 0.32574449895808355
	.quad	0x3fcb8d42969ce9e8              # double 0.2152484164633528
	.quad	0x3fe3c2d348cdb2f1              # double 0.61753238887248874
	.quad	0x3fd32385f20acff4              # double 0.29904316555916854
	.quad	0x3fc3973c34e1f568              # double 0.15305283147965132
	.quad	0x3f6bf7dbdcc0fb00              # double 0.0034140867410593634
	.quad	0x3fe1f02328283c03              # double 0.56056363909908702
	.quad	0x3fea4ab171435924              # double 0.8216178142709265
	.quad	0x3fec3f74f8ba196c              # double 0.88274620608789922
	.quad	0x3feed804af3d7e80              # double 0.96386942125896269
	.quad	0x3fe89d18c0d88292              # double 0.7691768423574834
	.quad	0x3fee009efb05d04a              # double 0.93757580783722827
	.quad	0x3fc4e8b62c2e5078              # double 0.16335179478904016
	.quad	0x3fe6d9ced05b130f              # double 0.7140878743599347
	.quad	0x3fe354af25d9d8ad              # double 0.60408742325559717
	.quad	0x3fd79888aa8ae6c2              # double 0.36868492750691584
	.quad	0x3fe0ff0602023c14              # double 0.53113079445199896
	.quad	0x3fd1f479143826ee              # double 0.28054644560380282
	.quad	0x3feabc3b8ad6c231              # double 0.83547761074993876
	.quad	0x3fed5551614f6b40              # double 0.9166647816267428
	.quad	0x3fea46b7bcf353f9              # double 0.82113253502268357
	.quad	0x3fe0f934ae6666e4              # double 0.53042062819005453
	.quad	0x3fc3521af6c002d4              # double 0.15094315574972106
	.quad	0x3fb98f19d0d31840              # double 0.0998397955728203
	.quad	0x3fd358e002bf0060              # double 0.30229950206922318
	.quad	0x3fe0c2f1be558ac8              # double 0.5237969129051061
	.quad	0x3fca537c2c8cd618              # double 0.20567276168155568
	.quad	0x3fd047d01b28577c              # double 0.25438311245067502
	.quad	0x3fb87082f3ff5770              # double 0.095466789788898998
	.quad	0x3fe66af7def5502d              # double 0.70055764719518765
	.quad	0x3fdb38bf64997b8e              # double 0.42533860038923244
	.quad	0x3fde54dca71b653c              # double 0.47392956084293636
	.quad	0x3fefc09bda8e4620              # double 0.99226181685134307
	.quad	0x3fecdd8ab7e6709f              # double 0.90204368513106548
	.quad	0x3fbd6b64ebe8ac20              # double 0.11491995582098058
	.quad	0x3f6dba6f1552d000              # double 0.0036289376826861286
	.quad	0x3fcf6040d3fc73d4              # double 0.24512491560827121
	.quad	0x3fd7b3e1303b0e66              # double 0.3703539820673768
	.quad	0x3fe05015e5399518              # double 0.50977606554502852
	.quad	0x3fe4fa1236c19f81              # double 0.65552626318547891
	.quad	0x3fd198daf62e2c6e              # double 0.2749545482735759
	.quad	0x3fb0e504413954e0              # double 0.065994516300026174
	.quad	0x3fe780eeb05126da              # double 0.7344888156596554
	.quad	0x3fe3753ea41556a1              # double 0.60806209609537032
	.quad	0x3fe41dd5e9c7940c              # double 0.62864204082564035
	.quad	0x3fc897ea3c376054              # double 0.19213607731103599
	.quad	0x3fd667490705735e              # double 0.3500540321891118
	.quad	0x3fccf54bc62a3620              # double 0.22623583961505833
	.quad	0x3fb46e85d1c1f700              # double 0.079811443052644648
	.quad	0x3fb45d02a82cbe08              # double 0.079544225748343078
	.quad	0x3fd963fe7e5e19fc              # double 0.39672815647682547
	.quad	0x3fe9a5ceb3d7cb3b              # double 0.8014901650006786
	.quad	0x3fde777ece71e012              # double 0.476043416601443
	.quad	0x3fd77f212beb2906              # double 0.36713437355923906
	.quad	0x3fe6f4d9b71b9eb3              # double 0.71738897097835375
	.quad	0x3fc5d19e6e9030a0              # double 0.1704595603808956
	.quad	0x3fe04da3c76d8c29              # double 0.50947750998273478
	.quad	0x3fcab9ddd5892bc4              # double 0.20879719664148244
	.quad	0x3feaa405b31990cd              # double 0.83252224903528715
	.quad	0x3fe9ec46d55e5dfb              # double 0.81009236978110211
	.quad	0x3fdd0acc32b081f8              # double 0.45378403616089669
	.quad	0x3fd81e10ee16758c              # double 0.37683509112124436
	.quad	0x3fe63e04f9acbc93              # double 0.69507073177909928
	.quad	0x3fe608d18ebd562d              # double 0.6885764873392809
	.quad	0x3feefab887d87d57              # double 0.96810556919437373
	.quad	0x3fd2667729442620              # double 0.28750399618056299
	.quad	0x3fc2fcb29283e29c              # double 0.14833671716748575
	.quad	0x3fd86f8d5ad2b0a4              # double 0.3818086039489208
	.quad	0x3feba02f30147c77              # double 0.86330375090245937
	.quad	0x3f6277da15aefa00              # double 0.0022544154612369471
	.quad	0x3fb20be0f09afc30              # double 0.070493754140429798
	.quad	0x3fefb39631d0784b              # double 0.99067220429766089
	.quad	0x3fdd8c85dbaa2d2a              # double 0.46170183612476257
	.quad	0x3fd7a762d81b9758              # double 0.36959143738055422
	.quad	0x3fd2423abe334a2a              # double 0.28529232572796792
	.quad	0x3fe3e4b3b5aec943              # double 0.6216677235118272
	.quad	0x3feb60345ed928f6              # double 0.85549372220091757
	.quad	0x3fe4aef67f9956d2              # double 0.64635777398754102
	.quad	0x3fe0112163c87cb9              # double 0.50209111679932683
	.quad	0x3fd37a3c454a3702              # double 0.30433565870849588
	.quad	0x3fea3b06d562b3b4              # double 0.81970540692201732
	.quad	0x3fdd0f1a2f6620fa              # double 0.45404677037051011
	.quad	0x3fe2cb9a9cbbe0f0              # double 0.58735399829950374
	.quad	0x3fecb020e5d536c7              # double 0.89650006188613751
	.quad	0x3fd6f9c13b1b8706              # double 0.35899382374019273
	.quad	0x3fea12350ab23fac              # double 0.81472255791776637
	.quad	0x3fef6f97d6ff0362              # double 0.98237220755991594
	.quad	0x3fda052b858b48de              # double 0.40656555215276835
	.quad	0x3feaa2cef0d3bb54              # double 0.8323740676549769
	.quad	0x3fe40aa385fa663c              # double 0.62629867713548704
	.quad	0x3fd403ef47dcb0a6              # double 0.31274015443592373
	.quad	0x3fe921834d1f9565              # double 0.78534092963370183
	.quad	0x3fef15949a309f47              # double 0.97138433566303994
	.quad	0x3fdb7f6904024f72              # double 0.42965150252825091
	.quad	0x3fe40a95d2e42467              # double 0.62629214467700656
	.quad	0x3fc825fdd5232c7c              # double 0.18865940959071625
	.quad	0x3fc590abec508ab8              # double 0.1684775260810818
	.quad	0x3fd2fd6c82b6532e              # double 0.29671776547302187
	.quad	0x3fda88def1658e16              # double 0.41460393499275605
	.quad	0x3fe0d94bd64f5c90              # double 0.52652541978285861
	.quad	0x3fd5eca010e786b6              # double 0.34256745959110491
	.quad	0x3fe6d8721eb3b897              # double 0.71392160412303241
	.quad	0x3fe36455a1602d5f              # double 0.60599786299409775
	.quad	0x3fa98e27aefe07c0              # double 0.049912681685796212
	.quad	0x3fdaaa63d8cd8b1a              # double 0.41664978191526958
	.quad	0x3fdb0fa71322e580              # double 0.42283036106854155
	.quad	0x3fed61f3c7bd7bfd              # double 0.918207063787008
	.quad	0x3fec1c495c970e4c              # double 0.87845295032497849
	.quad	0x3fed86a17020391d              # double 0.92268440150818132
	.quad	0x3fe77ce6e1f213bc              # double 0.73399681215288792
	.quad	0x3fdffe34229bbb52              # double 0.49989035968512952
	.quad	0x3fae8c0754370300              # double 0.059662083654535181
	.quad	0x3fe069ef719a3810              # double 0.51293155849430327
	.quad	0x3fd5c0d1b666e6a2              # double 0.33989374935809213
	.quad	0x3fe53d6c202b101b              # double 0.66374784739355464
	.quad	0x3fdbe8e20f1a4e44              # double 0.43608905291441524
	.quad	0x3fec89c42f619f3f              # double 0.89181718115012376
	.quad	0x3fca6c038ba78904              # double 0.20642132109703237
	.quad	0x3fdc9d3986753e02              # double 0.44709623461400849
	.quad	0x3fed7c0fcaf530fc              # double 0.92139424934569502
	.quad	0x3fde8a855875d25a              # double 0.47720464361853987
	.quad	0x3fdeeb3e1ab81ea4              # double 0.48310806855486477
	.quad	0x3fe77258553f3670              # double 0.7327081360796921
	.quad	0x3fe250857e0a5cc8              # double 0.5723292791107264
	.quad	0x3fdb706ab3f11312              # double 0.42873637745314952
	.quad	0x3fe930e700a5eac4              # double 0.78721952559075036
	.quad	0x3f950db4f4a2a8e0              # double 0.020560100013121807
	.quad	0x3feb48ea18cb5911              # double 0.85265068857805393
	.quad	0x3fe6a17ae6fdf084              # double 0.70721192470183825
	.quad	0x3feb8bea9c07c56c              # double 0.86082964396170558
	.quad	0x3fdc0ac505cc1b76              # double 0.4381573254217338
	.quad	0x3fe7e4a5c621f0ab              # double 0.74666107843178986
	.quad	0x3fee00de5bbe689f              # double 0.93760602873523513
	.quad	0x3fd22466d8250ca6              # double 0.28347178562052944
	.quad	0x3fba3232f0d4b980              # double 0.10232847575819015
	.quad	0x3fe7c821d0d6a656              # double 0.74318018711819422
	.quad	0x3fc7dc28ec196c9c              # double 0.18640624550139229
	.quad	0x3feb46818ef59141              # double 0.85235670015075737
	.quad	0x3fc04202939adf3c              # double 0.12701446730874888
	.quad	0x3fd68396b227db02              # double 0.35178153417602698
	.quad	0x3febd310d2aea0c9              # double 0.869514857758099
	.quad	0x3fb266c67712b8d0              # double 0.071880725927914613
	.quad	0x3fcffeb2061160a0              # double 0.24996018692286714
	.quad	0x3fd7ce4af8bc74ac              # double 0.37196611681595004
	.quad	0x3fe9af3c89b6ded2              # double 0.80264117142993485
	.quad	0x3fd50c599f582212              # double 0.32887878952945571
	.quad	0x3fe6350f3d12a441              # double 0.69397699287686276
	.quad	0x3fb2ee5f9bc56658              # double 0.073949790506412483
	.quad	0x3fb516af8d2d9cc8              # double 0.082377407042815709
	.quad	0x3fed16551eb50fa9              # double 0.90897613523019516
	.quad	0x3fe643cd5515dce8              # double 0.69577662103884297
	.quad	0x3fc938e983265cf4              # double 0.19704932121087604
	.quad	0x3fbbc4ccf473c5c8              # double 0.10847168891975578
	.quad	0x3f9c877bc72a2540              # double 0.027860578566593519
	.quad	0x3fef928548738fbe              # double 0.98663581991831228
	.quad	0x3fe6fab9de2d64ca              # double 0.7181062068367734
	.quad	0x3fd61b93bbff96a4              # double 0.34543317183702471
	.quad	0x3fe4597828693831              # double 0.63592155354286295
	.quad	0x3fe78cf5727d10b1              # double 0.73595688210527588
	.quad	0x3fee9275a8de806d              # double 0.95537837011580751
	.quad	0x3fd88c61cabfb106              # double 0.38356823730170253
	.quad	0x3fe1de9c9185599d              # double 0.55842426702547565
	.quad	0x3fed399badf59aae              # double 0.91328224159663818
	.quad	0x3fc94a71d952ae24              # double 0.19758437262986306
	.quad	0x3feaa6c695387d66              # double 0.83285836357746912
	.quad	0x3fdfdff31b7c6c70              # double 0.49804380115683156
	.quad	0x3fc593e117f25ac8              # double 0.16857541722557401
	.quad	0x3fcce9fe716375b8              # double 0.22589092766331276
	.quad	0x3fec005bd45a30fb              # double 0.87504378771839642
	.quad	0x3fea51b811f4f201              # double 0.82247546679678873
	.quad	0x3fdd8391d49b1252              # double 0.46115537416725261
	.quad	0x3fe3c95abd358e3f              # double 0.61832940058634012
	.quad	0x3fea21f8a8d89098              # double 0.81664689042783589
	.quad	0x3fe0aa05e59d4d1d              # double 0.52075476500104723
	.quad	0x3fd34eeadf7863d8              # double 0.30169174025792023
	.quad	0x3feaa49300e17c63              # double 0.83258962795288161
	.quad	0x3fee0af2bedeeb3e              # double 0.93883645324181209
	.quad	0x3fe8e7ea56055967              # double 0.77830998230892312
	.quad	0x3fee46eb49ee82e4              # double 0.94615711631567167
	.quad	0x3fbc1feda01846e0              # double 0.10986218603673192
	.quad	0x3fd13774afeed0e0              # double 0.26900975399918359
	.quad	0x3fec80617d6e6d68              # double 0.89067148683845421
	.quad	0x3fe73e295053f8f0              # double 0.72633805932107798
	.quad	0x3fd3507002f83760              # double 0.30178451814651019
	.quad	0x3fdb4318bf5f91ac              # double 0.4259702557449383
	.quad	0x3fd9efcbb3c5ede4              # double 0.40526096874211093
	.quad	0x3fc8a23ba6835484              # double 0.19245095854299532
	.quad	0x3fe8b22ca4811119              # double 0.77174980287284989
	.quad	0x3fe3bcec33aae007              # double 0.61681184855751858
	.quad	0x3fefc747df61c173              # double 0.99307626370686674
	.quad	0x3fdab572084bf43c              # double 0.41732455072616736
	.quad	0x3fe624409276fe9e              # double 0.69192532164011644
	.quad	0x3fd79116486704a4              # double 0.36823041029499337
	.quad	0x3fe5701faa00e9eb              # double 0.66993697360822801
	.quad	0x3fc7013e7bf49d08              # double 0.17972546627536468
	.quad	0x3fcbb712e714635c              # double 0.21652447016893006
	.quad	0x3fdaece385c26e40              # double 0.42070854246569311
	.quad	0x3fe16981fb418afe              # double 0.5441293628067283
	.quad	0x3fd20e3a53b7d274              # double 0.28211839843360242
	.quad	0x3fe9781cf374114d              # double 0.79591224240770375
	.quad	0x3fe15ce76bcc2450              # double 0.54259081892190331
	.quad	0x3fc1383aa44d2b44              # double 0.13452847502261467
	.quad	0x3fea3a1131454f45              # double 0.81958827613059582
	.quad	0x3fed1914cf411091              # double 0.90931168059661804
	.quad	0x3fdcd0e8e70df606              # double 0.45025084079665623
	.quad	0x3fe6e7d87698ce54              # double 0.71580145991760924
	.quad	0x3feb5a9907f897f6              # double 0.8548092990574776
	.quad	0x3fe3138d8e346de8              # double 0.59613683485389135
	.quad	0x3fa2259d514e4150              # double 0.035443226027498498
	.quad	0x3fa9827fb68437c0              # double 0.049823752431719992
	.quad	0x3fdecd74651cfe32              # double 0.48128995775548156
	.quad	0x3fbfd27f3d1e9e10              # double 0.12430567972352713
	.quad	0x3fe76658993d5815              # double 0.73124341897596656
	.quad	0x3fccc7987d61b158              # double 0.22484117624424971
	.quad	0x3fd36e960a3dc734              # double 0.30362463951233853
	.quad	0x3fea31417c16c5b0              # double 0.81851267086147139
	.quad	0x3fe4168795dc6e5d              # double 0.62775019902933205
	.quad	0x3fe14a20a779e13f              # double 0.54029877386259517
	.quad	0x3fca05cbc693b880              # double 0.20330187984604109
	.quad	0x3fd1921a675cd3ea              # double 0.27454242795948736
	.quad	0x3feba49f90dbc1ae              # double 0.86384561817799521
	.quad	0x3fecb2f33b4c82ea              # double 0.89684449750720074
	.quad	0x3fe5150191164e1b              # double 0.6588142236454958
	.quad	0x3fae28a49f91ca10              # double 0.058903831938455053
	.quad	0x3fe09c0e799fd53a              # double 0.51904987101321542
	.quad	0x3fe3d284c48f4f39              # double 0.61944807425104564
	.quad	0x3fe16e22a64a117b              # double 0.54469425657639137
	.quad	0x3fd56a0f8c81044e              # double 0.33459843369570741
	.quad	0x3fddc989b298d3b2              # double 0.46542589608298635
	.quad	0x3fc2ac04ea2aba34              # double 0.14587460931712004
	.quad	0x3fece46edf892d72              # double 0.90288489970536845
	.quad	0x3fec1cb463c02ee4              # double 0.87850398523866291
	.quad	0x3fe44d63d5ece6d8              # double 0.63444701940826587
	.quad	0x3fea9841fc72a1d5              # double 0.83108615213591952
	.quad	0x3fe81dc7475c6f06              # double 0.75363506257733159
	.quad	0x3fe4a668812266c7              # double 0.64531350347098104
	.quad	0x3fb365bb8b295d38              # double 0.075771066164965428
	.quad	0x3f9b1b7944274060              # double 0.026471991333722023
	.quad	0x3fc73a71282e9108              # double 0.18147100889212475
	.quad	0x3fe520b36b3483dc              # double 0.66024180353644679
	.quad	0x3fe72a44c1d108ad              # double 0.72390973906319334
	.quad	0x3fe1ffe88b6762e6              # double 0.56248881556811337
	.quad	0x3fc803f6133a61cc              # double 0.18762088717336523
	.quad	0x3fe60cfca16e478e              # double 0.68908530740212526
	.quad	0x3fac71659a343250              # double 0.055552649568288204
	.quad	0x3fdf9c4df51e00ba              # double 0.49391507088877129
	.quad	0x3fee1b055cdb8fbc              # double 0.94079845558416463
	.quad	0x3fdf4feb9638d704              # double 0.48925294561500743
	.quad	0x3fe2627eab4c3e85              # double 0.5745232911740038
	.quad	0x3fe300f1fd60437a              # double 0.59386538970475944
	.quad	0x3fe027a21aa8969e              # double 0.50483803946254446
	.quad	0x3fdbba479e640140              # double 0.43324461429439864
	.quad	0x3fe7e07d8384e3fe              # double 0.74615359961819627
	.quad	0x3fdd0f9fbef96a30              # double 0.45407861375648206
	.quad	0x3fc6d5e15ca26a7c              # double 0.17840210936704526
	.quad	0x3fedebf0a00dafb8              # double 0.9350512624782743
	.quad	0x3feebc6b894e83e7              # double 0.96050049607958676
	.quad	0x3fe2660ec1255091              # double 0.57495820735722891
	.quad	0x3faefb9d89f15820              # double 0.060513423050608361
	.quad	0x3fe3ae8c06a9d909              # double 0.61505700398882468
	.quad	0x3fdc027cfef77246              # double 0.43765187167244723
	.quad	0x3fba8f92da9c9fa8              # double 0.10375326001360341
	.quad	0x3fa39d8e84631970              # double 0.038311437283072958
	.quad	0x3fe8ec6663ecf327              # double 0.77885741726604329
	.quad	0x3f7a811fa4b17480              # double 0.0064707981174169094
	.quad	0x3fb86b9af42989c0              # double 0.095391926393438631
	.quad	0x3fe27053a6eb721a              # double 0.57621176339631863
	.quad	0x3fd34f9e61612646              # double 0.30173453817096563
	.quad	0x3fc8da8d1d25a2bc              # double 0.1941696541137129
	.quad	0x3fe01232c1fb9115              # double 0.5022214688038128
	.quad	0x3fe81da94c38c88c              # double 0.75362076651642118
	.quad	0x3fdbab531a80cbe6              # double 0.43233182514376123
	.quad	0x3fe1bbe12f61c1af              # double 0.55418452505369042
	.quad	0x3fe30f4bf5285909              # double 0.59561727411599563
	.quad	0x3fe5c1e077a01102              # double 0.67991660465534687
	.quad	0x3fc532f93ebfb714              # double 0.16561809123907578
	.quad	0x3fe44237b78658c0              # double 0.63308320851026423
	.quad	0x3fbf216d14ecf8b0              # double 0.12160379181748016
	.quad	0x3fd556bae6c131d2              # double 0.33341858420024295
	.quad	0x3fe16a58bed15e9e              # double 0.54423177022086455
	.quad	0x3fc285dc25145698              # double 0.14471008120078888
	.quad	0x3fe07000bf44aaaf              # double 0.51367223126483974
	.quad	0x3f962df5da6a82c0              # double 0.021659699874933436
	.quad	0x3fd54ec46bfbc5a0              # double 0.33293257279646049
	.quad	0x3fee3f968627a6ff              # double 0.94526220514418913
	.quad	0x3fe4f76c4ebd5362              # double 0.65520301226443345
	.quad	0x3fe5a70a94da4814              # double 0.67664078781877146
	.quad	0x3fb507255519fa38              # double 0.082140286709525223
	.quad	0x3fd1ae0e5a58010e              # double 0.27624853918679626
	.quad	0x3fe0450a670daa26              # double 0.50842781188595576
	.quad	0x3fe1d33884af2b81              # double 0.55703378596204811
	.quad	0x3fcfa1dd3c2a7308              # double 0.24712720334800786
	.quad	0x3fe1a17e3b4c029f              # double 0.55096351224354467
	.quad	0x3fd6f26ba889bf46              # double 0.35854617556377766
	.quad	0x3fec6ca6c5d1c5fe              # double 0.88826311718565854
	.quad	0x3fcf32925c5a7dc8              # double 0.24373082646796562
	.quad	0x3fdb0e726e9a7f6a              # double 0.42275677491306018
	.quad	0x3fdb2d8e9632389e              # double 0.42465557735057213
	.quad	0x3fe2624af6355043              # double 0.57449863517332067
	.quad	0x3fdc227a21bbbc4e              # double 0.43960431379577336
	.quad	0x3fdf5a20ab2b918c              # double 0.48987595287169294
	.quad	0x3fd6c47e66624e22              # double 0.35574302671850166
	.quad	0x3fdf253fe77d274a              # double 0.48664853674255382
	.quad	0x3fc58c9c9f3ff62c              # double 0.16835363174316009
	.quad	0x3fe558845f1b3e04              # double 0.66705530715438544
	.quad	0x3fa3fb22fe5d72a0              # double 0.039025395918291794
	.quad	0x3fc4d008b9355854              # double 0.16259869616868861
	.quad	0x3fe15f1723f98f8e              # double 0.54285771395051241
	.quad	0x3fd923e027f71920              # double 0.39281467345098697
	.quad	0x3fe4e03150630502              # double 0.65236726475282603
	.quad	0x3fdf643c8daa9584              # double 0.49049295267681026
	.quad	0x3fa7268f4c2e6cf0              # double 0.045216062592965289
	.quad	0x3fe61cf226d945c2              # double 0.69103343570366627
	.quad	0x3fd6ae3c5d81d8f4              # double 0.35438450938762789
	.quad	0x3fd7da6ef4ccb204              # double 0.37270711809358681
	.quad	0x3fc812a3f6ab2d24              # double 0.18806886238449139
	.quad	0x3fd0324ea4ad1c50              # double 0.25307050782834484
	.quad	0x3fd36411809bb7da              # double 0.30298268851663368
	.quad	0x3fe5c6a9c088cdf1              # double 0.68050086597798842
	.quad	0x3fc565e8c0eee7f0              # double 0.16717252178733544
	.quad	0x3fe2ea87f8b35975              # double 0.59112928938229337
	.quad	0x3f9cb781bce69820              # double 0.028043772844874693
	.quad	0x3fa7a1a738d1b930              # double 0.046155191121999173
	.quad	0x3f3d3dfc522d0000              # double 4.4619951420443726E-4
	.quad	0x3fcd5e093a326348              # double 0.22943225232736553
	.quad	0x3fb6396172e8c080              # double 0.086813059381485757
	.quad	0x3fe9e27e564bb261              # double 0.80889813284518308
	.quad	0x3fe0e112588cccdb              # double 0.5274745683185772
	.quad	0x3fb0f9ddee552808              # double 0.06631266659420032
	.quad	0x3fbe1d30bc4e5290              # double 0.11763290974915663
	.quad	0x3fef2c8b2c1714df              # double 0.97418745623931701
	.quad	0x3fc58c9270ee0d44              # double 0.16835241808085233
	.quad	0x3fd55e63fff1baa6              # double 0.33388614649349291
	.quad	0x3fe615e5bb3da349              # double 0.69017302103484568
	.quad	0x3f9bf5860cf7a200              # double 0.027303785840475214
	.quad	0x3fce1c5a376ed864              # double 0.23524024683655675
	.quad	0x3fd18137c5a91b34              # double 0.27351183226385278
	.quad	0x3fc8e67c2e84f4ec              # double 0.19453384658292039
	.quad	0x3fe1ae890ca22eae              # double 0.55255558459744747
	.quad	0x3fe5292f5f2d71e9              # double 0.66127747144088034
	.quad	0x3fce28eda99f2edc              # double 0.23562403471293336
	.quad	0x3fb6929a1b324a70              # double 0.088174468650586979
	.quad	0x3fda1625eb962a70              # double 0.40760181433203169
	.quad	0x3fc71d49693d6bec              # double 0.18058126104992256
	.quad	0x3fd863ee1b30720c              # double 0.38109924941252937
	.quad	0x3fd04e01029997fc              # double 0.25476098302749484
	.quad	0x3f85d918fb9899c0              # double 0.010667987039664761
	.quad	0x3fefbf916dc9be80              # double 0.99213477557164254
	.quad	0x3fd100556e6b70fe              # double 0.26564536841557629
	.quad	0x3fd475796f0b952a              # double 0.31967006534826459
	.quad	0x3fe65bfd9d18160d              # double 0.69872933084906352
	.quad	0x3fec603312d14273              # double 0.88674310374524479
	.quad	0x3fc680f6a3a2e064              # double 0.17581065168429
	.quad	0x3fe01e665565c58d              # double 0.50371090583046085
	.quad	0x3fea8f77f4b4df45              # double 0.83001325411076066
	.quad	0x3fc0288d3a143028              # double 0.12623753867990328
	.quad	0x3fe9f38099ed684e              # double 0.8109744078058243
	.quad	0x3fed4b88306de30a              # double 0.91547021349751501
	.quad	0x3fe176ae06da2395              # double 0.5457372793035683
	.quad	0x3fecbeace5d4dded              # double 0.89827580346076064
	.quad	0x3f5e90df457ca600              # double 0.0018655949006166628
	.quad	0x3fe2e0db1ab9142c              # double 0.58994822711304584
	.quad	0x3fee1571533ab975              # double 0.94011751418820089
	.quad	0x3fecf4e38181f579              # double 0.90489363951171164
	.quad	0x3fdf95f7a96a79be              # double 0.49352828545115901
	.quad	0x3fbf54c7fecd9348              # double 0.12238740893151345
	.quad	0x3f58ea5297008a00              # double 0.0015207106153033445
	.quad	0x3fea9ce7ab83c98d              # double 0.83165343760474431
	.quad	0x3fe58e05b82bc6a8              # double 0.6735867116060108
	.quad	0x3fd5d7d8fa106242              # double 0.34129928989708358
	.quad	0x3fe82c8212db4bd0              # double 0.75543311770376853
	.quad	0x3fd6867e59eae684              # double 0.3519588354207388
	.quad	0x3fe567b1ca74d804              # double 0.66890801946897271
	.quad	0x3fde7815f866bd2a              # double 0.47607945688192166
	.quad	0x3fbf6137da039900              # double 0.12257718155487751
	.quad	0x3fa0bc64604f9270              # double 0.032687317616169831
	.quad	0x3fe8d1c42a59a816              # double 0.7756062342789416
	.quad	0x3fe87bee36501a48              # double 0.76512823684681397
	.quad	0x3fddaaf593d72020              # double 0.46355952680142032
	.quad	0x3fd77d9459996132              # double 0.36703976392665816
	.quad	0x3fe224fbd262b2a8              # double 0.56701460925031189
	.quad	0x3fd116d17d4806b0              # double 0.26701771959788356
	.quad	0x3fde0dcf4ecc1054              # double 0.46959288306266456
	.quad	0x3fe74381c57f2697              # double 0.72699059079714601
	.quad	0x3fda2ebbaccf8476              # double 0.40910236240421882
	.quad	0x3fe39eb2fd88619d              # double 0.61312245863068748
	.quad	0x3fea1c42f0577a76              # double 0.81594988767376608
	.quad	0x3fe250519213af3e              # double 0.57230452089923012
	.quad	0x3fc1f82dd42dbd84              # double 0.14038632259642381
	.quad	0x3fed3fff6d3839eb              # double 0.91406222660026282
	.quad	0x3feff66ad5e2d4f4              # double 0.99883024000760523
	.quad	0x3fe6cff4bd3d30b3              # double 0.7128852554392523
	.quad	0x3fcbcaf4f23f66d4              # double 0.21713125065325889
	.quad	0x3fd51b6d5d843b6e              # double 0.32979902393792926
	.quad	0x3fda03460582fd1a              # double 0.40644979990243402
	.quad	0x3fbb44b7f73dbfc0              # double 0.10651731287157329
	.quad	0x3fe63211afd0273c              # double 0.69361194933410486
	.quad	0x3fe7786d3248df44              # double 0.73345050641271614
	.quad	0x3fdc0a22d4ee81ba              # double 0.43811865610225775
	.quad	0x3fe393a5433909f3              # double 0.61177313928084087
	.quad	0x3fb194915387b6a8              # double 0.068673212903116565
	.quad	0x3fe898c0ea1016f4              # double 0.7686466762104076
	.quad	0x3f6b7fcc4dfeea00              # double 0.0033568373036960697
	.quad	0x3fca570e2d61353c              # double 0.20578171935850686
	.quad	0x3fc78004ec519f74              # double 0.18359433688169313
	.quad	0x3fe1f61bb993ed61              # double 0.56129251714393658
	.quad	0x3fe1c4f3431fafbd              # double 0.55529177770721783
	.quad	0x3fe70221c21bcf96              # double 0.71901023780673046
	.quad	0x3fe60599499820bf              # double 0.68818344472767723
	.quad	0x3fe21986b750cfd8              # double 0.56561599544374541
	.quad	0x3fea5271baeb2e01              # double 0.82256399638703226
	.quad	0x3f5465e98c4c6800              # double 0.0012450009100519743
	.quad	0x3fde8a4c39260c10              # double 0.47719102459831308
	.quad	0x3fedfd7528c78551              # double 0.93718965496752038
	.quad	0x3fec517d8fa93246              # double 0.88494756754659742
	.quad	0x3fd392de27b46a10              # double 0.30583909871498438
	.quad	0x3fe38d204021835b              # double 0.610977292304692
	.quad	0x3fe867b0de2f2b86              # double 0.7626575793777739
	.quad	0x3fd60b8412957bfe              # double 0.34445287527881863
	.quad	0x3fdd8e8c1dc28ae4              # double 0.46182539850467053
	.quad	0x3fd4d24fb9c76224              # double 0.32533639090027777
	.quad	0x3fd9b5900f9244dc              # double 0.4017067100586027
	.quad	0x3fe9fcf24c13f5be              # double 0.81212725504854411
	.quad	0x3feb055035a98ffb              # double 0.84439859848907817
	.quad	0x3fc957ffce84d634              # double 0.19799802383356424
	.quad	0x3fcb5b5c08c89628              # double 0.21372557095416878
	.quad	0x3fc4b536552a16a4              # double 0.16178015860002859
	.quad	0x3fcc98845f088808              # double 0.22340445175456147
	.quad	0x3fd14df4c3f85acc              # double 0.27038306367596188
	.quad	0x3fd3909a36c93caa              # double 0.3057008299846965
	.quad	0x3fd54844828435fc              # double 0.33253586526629397
	.quad	0x3fea503f59b35c1b              # double 0.82229583282139929
	.quad	0x3fe22976396d26e9              # double 0.56756125656212675
	.quad	0x3fd635f68117ed22              # double 0.34704363447936448
	.quad	0x3fece67e2090e66f              # double 0.90313631401586558
	.quad	0x3fe525f08c548193              # double 0.6608813038656528
	.quad	0x3fdf3d6172b67b20              # double 0.48812137796805821
	.quad	0x3fef2832deeb3a77              # double 0.97365706957664499
	.quad	0x3fed37db75fe6fe5              # double 0.91306851430590241
	.quad	0x3fc4ac751433c14c              # double 0.1615129803317451
	.quad	0x3fcc7ba869fca588              # double 0.2225237386240162
	.quad	0x3fad339175ef2e30              # double 0.057034059187199282
	.quad	0x3fb5170c104da7f0              # double 0.082382921200092829
	.quad	0x3feda451fdd09b73              # double 0.92630862782685452
	.quad	0x3feeb345b281badf              # double 0.9593838201961623
	.quad	0x3fe12ed3736f92a9              # double 0.53696606203137265
	.quad	0x3fc5d2077a8502e8              # double 0.17047208292390015
	.quad	0x3fabc6264ffa26c0              # double 0.054246136916004328
	.quad	0x3fdb986e2dccd202              # double 0.4311786124483491
	.quad	0x3fde2180fe4e9370              # double 0.47079491457616651
	.quad	0x3fe01fde831d274e              # double 0.50389028175525552
	.quad	0x3fe2e6ac9c2461e7              # double 0.59065847870357124
	.quad	0x3fe2bd6a941cc7e6              # double 0.58562210968215989
	.quad	0x3fecdacabc4760e0              # double 0.90170799992759143
	.quad	0x3fc2daefa4ad6cbc              # double 0.14730639973536153
	.quad	0x3fe317a269450f9c              # double 0.5966350608873543
	.quad	0x3fe631bb06c8fd45              # double 0.69357062649934476
	.quad	0x3fedc7770a748fb5              # double 0.93059875528387315
	.quad	0x3fe5037561b365bb              # double 0.65667218286687701
	.quad	0x3fb4e23973f4cca0              # double 0.081576910791044899
	.quad	0x3f9d5361cb1664c0              # double 0.028638389606929548
	.quad	0x3fdf2a77be7c92c2              # double 0.48696702577789719
	.quad	0x3feb8b5b63e2e997              # double 0.8607613516717717
	.quad	0x3fe848a72ff02a7d              # double 0.75886878359717935
	.quad	0x3fdfa95efc87d818              # double 0.49471258794017237
	.quad	0x3fd68834dc3c0b2e              # double 0.3520633841255173
	.quad	0x3fe261e414dce63a              # double 0.5744495780447274
	.quad	0x3fefa961c79efe1b              # double 0.98942650784005381
	.quad	0x3fd0fe80d5f10b22              # double 0.26553364651424449
	.quad	0x3fbb09c4bd9fa3d8              # double 0.10561780576212187
	.quad	0x3fd576d72f31d33c              # double 0.33537845238543063
	.quad	0x3fc7851a57634198              # double 0.18374947802523134
	.quad	0x3fc2d7dfe40e6440              # double 0.1472129691653965
	.quad	0x3fea50bb8295ea35              # double 0.82235503678322763
	.quad	0x3fd4a27547a91698              # double 0.32241565702529718
	.quad	0x3fe5f4da8f685cb6              # double 0.68613937386807922
	.quad	0x3fdf5bbc5280fa28              # double 0.48997409874928843
	.quad	0x3fc55fed35b80ff0              # double 0.16698994753835406
	.quad	0x3fee1730b674f4f8              # double 0.94033084522348442
	.quad	0x3fd5ccf07dedffc4              # double 0.34063350961514183
	.quad	0x3fe0e757ba87775a              # double 0.52824007445790788
	.quad	0x3fef4ae9609c7b8f              # double 0.97789448613535678
	.quad	0x3fe35757316f6886              # double 0.60441169410047801
	.quad	0x3fec86d4dbbe7158              # double 0.89145892065748011
	.quad	0x3fe2dff19ae8c4b9              # double 0.5898368859835933
	.quad	0x3fc06244e3cdcab4              # double 0.12799893496738479
	.quad	0x3fc0e00f5740577c              # double 0.13183776626891219
	.quad	0x3fe300a6d2fc199f              # double 0.59382954795801257
	.quad	0x3feb87b4d77573af              # double 0.86031572419925861
	.quad	0x3fcdb18ba86e663c              # double 0.23198075985128408
	.quad	0x3fbfbb2577bb2848              # double 0.1239493768036094
	.quad	0x3fe2c722bc691ef2              # double 0.58680855559302203
	.quad	0x3fd347a7461ea83e              # double 0.30124837730057041
	.quad	0x3fdba017b8cd9b92              # double 0.43164628073866951
	.quad	0x3fed6a9ceddc7491              # double 0.91926428277260375
	.quad	0x3fe4c83a108e7dec              # double 0.64944174989426307
	.quad	0x3fda9fe17d2876fe              # double 0.41600835058657981
	.quad	0x3fe02a965e9a0546              # double 0.50519865490802185
	.quad	0x3fddbdc04d09211c              # double 0.46470649264348807
	.quad	0x3fde1b54dbd9f298              # double 0.47041818113192724
	.quad	0x3fe78b4557105f06              # double 0.73575083737066005
	.quad	0x3fcf726098396bec              # double 0.24567801888301177
	.quad	0x3fed3fb82d60780f              # double 0.91402825224554529
	.quad	0x3fec13eebff5b636              # double 0.87743318073416421
	.quad	0x3fd725079035755a              # double 0.361635104016235
	.quad	0x3fcf3c6e6d144b34              # double 0.24403171850334504
	.quad	0x3febec3e9bb66dfa              # double 0.87258844769115673
	.quad	0x3fc1650cafd961fc              # double 0.13589628778824181
	.quad	0x3fecca0c957d9811              # double 0.89966420361884236
	.quad	0x3fe193a0ee70b1ef              # double 0.54927107401232245
	.quad	0x3fdb2f6a585e4536              # double 0.42476900701247489
	.quad	0x3fd648cb7ef7a38a              # double 0.34819304846910681
	.quad	0x3fe1dcacda0976ce              # double 0.55818789086671372
	.quad	0x3fe3b2695a8ec13f              # double 0.61552875220335312
	.quad	0x3fb53918c2a053a0              # double 0.082902476802998226
	.quad	0x3fd2fe12c392dce2              # double 0.29675740336410972
	.quad	0x3fe524580e10762c              # double 0.66068651911672793
	.quad	0x3fd6e520b6c18a54              # double 0.3577348503805855
	.quad	0x3fdadecf510bb890              # double 0.41984923281314313
	.quad	0x3fe31e17f1e7bc20              # double 0.59742352721321268
	.quad	0x3feb9613c7e47a77              # double 0.86206997910978955
	.quad	0x3fdf5dceebb68b4c              # double 0.49010060328344163
	.quad	0x3fce8677e8d9f1ec              # double 0.23847864980406486
	.quad	0x3fee03735142b7f4              # double 0.93792119857039191
	.quad	0x3fd7252587f51f12              # double 0.36164224888897067
	.quad	0x3fc6677569bb4adc              # double 0.17503230726887054
	.quad	0x3fe974cc69e367db              # double 0.79550762826260824
	.quad	0x3fef162b1b71c863              # double 0.9714561019921003
	.quad	0x3fe77ab3907e558e              # double 0.73372820111642212
	.quad	0x3fc2b4d532978360              # double 0.14614357919983956
	.quad	0x3fe1fa7b4343213e              # double 0.56182635438111794
	.quad	0x3fd94f526cd7b9a4              # double 0.39546642903487794
	.quad	0x3fe833c9399be875              # double 0.75632153751145259
	.quad	0x3fec0eb83e82efb4              # double 0.87679683884879588
	.quad	0x3feaedc1aafabbb8              # double 0.84152301210803326
	.quad	0x3fea8b919e53fe55              # double 0.82953720973450606
	.quad	0x3fc3c2a25614ceb4              # double 0.15437726214587644
	.quad	0x3fb185d65aecc490              # double 0.068448445509391442
	.quad	0x3fe9b1d3cae0d7ef              # double 0.80295743584315271
	.quad	0x3fdc61ddcff3710c              # double 0.44347329433163973
	.quad	0x3fe1e3f2a655bbc9              # double 0.5590756653526735
	.quad	0x3fe431bb3518a464              # double 0.63107071276057214
	.quad	0x3f873ee8f19d3780              # double 0.011350459931829482
	.quad	0x3fe838c2a8800d24              # double 0.75692875776477253
	.quad	0x3fd031ea982e61b0              # double 0.25304665433352636
	.quad	0x3fee93401e8efee5              # double 0.95547491043541
	.quad	0x3fe4e78cfaff3490              # double 0.65326546690779885
	.quad	0x3fe6df80af7bbdd1              # double 0.71478304170698881
	.quad	0x3feee172b1b541db              # double 0.96502051075554662
	.quad	0x3fea9be7ae7f7666              # double 0.83153137284871259
	.quad	0x3fa755944eda33f0              # double 0.045574793458491913
	.quad	0x3fe754a2cc455c04              # double 0.72908153435389567
	.quad	0x3fc4f41f86cc8d50              # double 0.1637000473211665
	.quad	0x3fef2b9a3ff52276              # double 0.97407257549009674
	.quad	0x3f86a392335162c0              # double 0.011054174605463429
	.quad	0x3fdd23f2c58b3948              # double 0.45531911174193285
	.quad	0x3fd82ab8f1d4d670              # double 0.37760757080409402
	.quad	0x3fe68468d80238ac              # double 0.70366327466196799
	.quad	0x3fe362328b70104f              # double 0.60573699220595667
	.quad	0x3fe7ab6f6ce5dd49              # double 0.73967715520022026
	.quad	0x3fcbadc3f8ab86e8              # double 0.21624040262309241
	.quad	0x3fdb0a0cc868ce66              # double 0.42248839923124704
	.quad	0x3fc8bc9a8dc49290              # double 0.19325572893389564
	.quad	0x3feec05e80c389b2              # double 0.96098256253417547
	.quad	0x3fe449c00ec067d6              # double 0.63400271302384215
	.quad	0x3fd16ce1dc9999a6              # double 0.2722706465050585
	.quad	0x3fd270fc46bff49c              # double 0.28814608487284388
	.quad	0x3fcfba12c8a02d8c              # double 0.24786600872208131
	.quad	0x3fe30cbc047d742c              # double 0.59530449749911929
	.quad	0x3feaeee03fab1e73              # double 0.84165966449013607
	.quad	0x3fe018d70e2733ff              # double 0.50303223385128593
	.quad	0x3fbcebe88912fd98              # double 0.11297467562234542
	.quad	0x3fd7bdff13645002              # double 0.37097145932898468
	.quad	0x3fe8ac1f776e4052              # double 0.77101109815886049
	.quad	0x3fe9428b5657b541              # double 0.78937308181563293
	.quad	0x3fe6b6512baa8a68              # double 0.70975550201940241
	.quad	0x3fe39b05e81aff6f              # double 0.61267371495340039
	.quad	0x3fea2c6c5c1be934              # double 0.81792276372951855
	.quad	0x3fd53ed8a9c2c658              # double 0.33196083620268757
	.quad	0x3fd0832403cafb88              # double 0.25800419207001157
	.quad	0x3fe493dfb9c0aff9              # double 0.64305101661511721
	.quad	0x3f6770d18b5a9a00              # double 0.0028614132559880989
	.quad	0x3fe34bd13ae6b398              # double 0.60300504211555772
	.quad	0x3fde8510a1a1e906              # double 0.47687164101047619
	.quad	0x3fd2ffb1bb1a5534              # double 0.29685633918537069
	.quad	0x3fe4a81d1d12f3bf              # double 0.64552169493219214
	.quad	0x3fef106e5d4fb463              # double 0.97075575089332877
	.quad	0x3fd72ca8e0d31da8              # double 0.36210081058058075
	.quad	0x3fe18ede8780750f              # double 0.54869009461586582
	.quad	0x3fe1027a47ee6939              # double 0.5315524487407749
	.quad	0x3fc94937f83faef4              # double 0.19754695531388899
	.quad	0x3fdfbbb1bc56a810              # double 0.49583094971114949
	.quad	0x3fcfb7844bdfeacc              # double 0.24778798775499522
	.quad	0x3fd87f7b7f27fe5a              # double 0.38278090875244219
	.quad	0x3fe102779ed780cb              # double 0.53155118011275115
	.quad	0x3fd01ac1823d097a              # double 0.25163305014225268
	.quad	0x3fe78493d8a72a85              # double 0.73493377985990149
	.quad	0x3fe36269ff7618b1              # double 0.60576343436038915
	.quad	0x3feef9422f65074e              # double 0.96792706734434275
	.quad	0x3fc0d37e493e212c              # double 0.13145426346114542
	.quad	0x3fef192139329e18              # double 0.97181759997778538
	.quad	0x3fb49ab8b174fe88              # double 0.080485862087693261
	.quad	0x3fd5d9ac766294c2              # double 0.34141074715655517
	.quad	0x3fc19e65c5aabd80              # double 0.13764640952784291
	.quad	0x3fe6c7091251c0b1              # double 0.7117963178443657
	.quad	0x3fe4b3b791da1833              # double 0.64693811880784435
	.quad	0x3fe4f0b0e02fc66e              # double 0.6543812159199669
	.quad	0x3fbba6f8bc5a5e80              # double 0.10801653479063056
	.quad	0x3fe2fc682d20515e              # double 0.59331139386862808
	.quad	0x3fc5f51671162fe8              # double 0.17154198190507874
	.quad	0x3fa1bb19bd135600              # double 0.034630588846692234
	.quad	0x3fed99741d94105b              # double 0.92498212601686747
	.quad	0x3fdbbe7a3b247e98              # double 0.43350082183494854
	.quad	0x3fe05f03c02505f9              # double 0.51159846809622345
	.quad	0x3fe6bb96bc9a3fcc              # double 0.71039902531082921
	.quad	0x3fe80f1f01715c22              # double 0.75184583932685123
	.quad	0x3fe94545d6bb7cee              # double 0.78970615329663274
	.quad	0x3fed429674b569af              # double 0.91437838358551982
	.quad	0x3fe35bd9839b206f              # double 0.60496211723603988
	.quad	0x3fe20097957ef1c0              # double 0.56257228086865751
	.quad	0x3fcaa0c216aed7fc              # double 0.20803094966475999
	.quad	0x3fc2695366dfa400              # double 0.14383928797840895
	.quad	0x3fd4b0f96870110e              # double 0.32330165099144004
	.quad	0x3fab4001ec28fd50              # double 0.053222713544978206
	.quad	0x3fd35d2b749371ec              # double 0.30256163009997183
	.quad	0x3fec5042d812f19f              # double 0.88479749872162816
	.quad	0x3fee740e18a39aff              # double 0.95166687786408477
	.quad	0x3fc2f46183c3f8f0              # double 0.1480829137216868
	.quad	0x3fe074dc59bb9f15              # double 0.51426522756534843
	.quad	0x3fe00f53efaa0b48              # double 0.50187107858105495
	.quad	0x3fdbdeb9db401958              # double 0.43546911631746843
	.quad	0x3fef4ff1a32177b2              # double 0.97850877629729482
	.quad	0x3fe8c3f935d4e8e3              # double 0.77392254365920754
	.quad	0x3fe3a975d4d0e2d1              # double 0.6144360691606271
	.quad	0x3fa29796f2d0fc30              # double 0.03631278719012021
	.quad	0x3fcfb3133c4e31ec              # double 0.24765243954278959
	.quad	0x3fe2bb64651bd3b2              # double 0.58537502048294798
	.quad	0x3fe8e6a9210294a6              # double 0.77815681884080301
	.quad	0x3fee327567109b37              # double 0.94365949754578693
	.quad	0x3f85f9e7410708c0              # double 0.010730559036236875
	.quad	0x3fe99cc8847eeade              # double 0.80038858297424631
	.quad	0x3fe69c0abc439476              # double 0.70654808779057876
	.quad	0x3fd492b1a7fdd130              # double 0.32145348935525231
	.quad	0x3fed507c828db450              # double 0.9160749959825214
	.quad	0x3fe4536cceed114a              # double 0.63518371978038002
	.quad	0x3f2614e33b71f000              # double 1.6846917944579598E-4
	.quad	0x3fd6529f92c29658              # double 0.34879292804757744
	.quad	0x3feef8cc8f3392f3              # double 0.96787097901378016
	.quad	0x3fe60258aded6017              # double 0.68778642625966568
	.quad	0x3fe1b65d3c24a4da              # double 0.55351125475604168
	.quad	0x3fd3a01c40802a92              # double 0.30664736079112587
	.quad	0x3fd75e3482de1328              # double 0.3651248243334515
	.quad	0x3fcd6c0570d594ac              # double 0.22985904702651305
	.quad	0x3fe93a374e65f26e              # double 0.7883564501967848
	.quad	0x3fcf102ef9b2aebc              # double 0.24268138115200155
	.quad	0x3fd878ab7e12364c              # double 0.38236510573992599
	.quad	0x3fe553da27a06c12              # double 0.66648586024837386
	.quad	0x3fe7a6acd6f5cd34              # double 0.73909608826071471
	.quad	0x3fe2a52110a24ae4              # double 0.58265736817187674
	.quad	0x3fdb21282c200e00              # double 0.42389873799422162
	.quad	0x3fed225be0427554              # double 0.91044420052245778
	.quad	0x3fc23fdab18478f0              # double 0.14257367771001084
	.quad	0x3fe5528d5381fbc5              # double 0.66632715520960828
	.quad	0x3fe49cb6f1e64752              # double 0.64413020368577123
	.quad	0x3fdee378cddb4dd2              # double 0.48263378241719324
	.quad	0x3fed4ca2a7ef54da              # double 0.91560490417273432
	.quad	0x3fda2c0630657d62              # double 0.40893702245917585
	.quad	0x3fc42596ecf1b138              # double 0.15739714211975708
	.quad	0x3fe6c7423640c5fe              # double 0.71182356449406803
	.quad	0x3fee1f6c67a031f1              # double 0.94133587111860895
	.quad	0x3fe51296c82f1f48              # double 0.65851916407061939
	.quad	0x3fe3494860d2a389              # double 0.602695645434424
	.quad	0x3fe828e0fecad64f              # double 0.75499009861113986
	.quad	0x3fc234702938378c              # double 0.14222528469730056
	.quad	0x3fdb5055077afeea              # double 0.42677808504593762
	.quad	0x3fdd4b92217df5f6              # double 0.45773747702318646
	.quad	0x3fdf73d991ec6454              # double 0.49144591570217711
	.quad	0x3fe2c8f3feb859d9              # double 0.58703040838264109
	.quad	0x3fe99aec883707e1              # double 0.80016161541447783
	.quad	0x3fd2a71eef5248d4              # double 0.29145024653656759
	.quad	0x3fe44174ff9355d0              # double 0.63299035946936932
	.quad	0x3fbda015708da6e8              # double 0.1157239341534041
	.quad	0x3fddfa8c48cbe5c4              # double 0.46841723546057445
	.quad	0x3fee3e8b12ce4a58              # double 0.94513467476856316
	.quad	0x3fe033fecfae9913              # double 0.50634708941359674
	.quad	0x3fd65100f196a570              # double 0.34869407265303831
	.quad	0x3fd7aad5e6e69644              # double 0.36980197476291132
	.quad	0x3fee5409e1cae994              # double 0.94775861835596453
	.quad	0x3fe7f05243056ec2              # double 0.74808610048372537
	.quad	0x3fe1e1b298350a4d              # double 0.55880098083464136
	.quad	0x3fce756ab0497a1c              # double 0.23795827491535781
	.quad	0x3fd014d93ad75d6a              # double 0.2512724947568673
	.quad	0x3fc81ed32460bf34              # double 0.18844069744363312
	.quad	0x3fe7bfa0c82f3ffc              # double 0.7421420965056309
	.quad	0x3fe9aabf49ec49d5              # double 0.80209316671453712
	.quad	0x3fd551d7e6dac898              # double 0.33312032265087899
	.quad	0x3fd1b75d3e5dabb8              # double 0.27681666460437837
	.quad	0x3fc0a9b5772b0444              # double 0.13017910307647373
	.quad	0x3fd67b016afbc2dc              # double 0.35125766227342381
	.quad	0x3fb85703f8aec428              # double 0.095077751363320417
	.quad	0x3fe2db2483cd9fe2              # double 0.58925081007782532
	.quad	0x3fe6cd24fbf78f60              # double 0.71254204952536426
	.quad	0x3fa588a3b23086a0              # double 0.042058101178793494
	.quad	0x3fe4a7414c27a98c              # double 0.6454168784523957
	.quad	0x3fedb515e71ab414              # double 0.92835517060814476
	.quad	0x3fdecab0bc596508              # double 0.48112123864628176
	.quad	0x3fbb361f5d5d2178              # double 0.10629459409131481
	.quad	0x3fe99d7d32e3ce81              # double 0.80047473849704442
	.quad	0x3fe50b4714cd2f02              # double 0.65762666762154276
	.quad	0x3febf4097f5b7da9              # double 0.8735396850060414
	.quad	0x3fa1e0e3f2211110              # double 0.034918902689726861
	.quad	0x3fd5cf5e5cf94846              # double 0.3407817752787462
	.quad	0x3fec5fbe8e5873ce              # double 0.88668754388674542
	.quad	0x3fe5e220450a44f5              # double 0.68385327801129725
	.quad	0x3fea97cc616f083b              # double 0.83103007345221813
	.quad	0x3fe6a66aba1baa02              # double 0.70781456326705006
	.quad	0x3fe825b1311031d6              # double 0.75460109312694601
	.quad	0x3f946c6ababb1880              # double 0.019944827696939615
	.quad	0x3feb728436df44b2              # double 0.85772906033721186
	.quad	0x3fc92f6b5aae6e2c              # double 0.19675962379265977
	.quad	0x3f73762b96f6aa80              # double 0.0047513678286273953
	.quad	0x3fe03e178b7473cc              # double 0.50757958638461664
	.quad	0x3fe5e7aabbc15137              # double 0.68452965422560552
	.quad	0x3fe4b8e9532d7399              # double 0.64757219548811229
	.quad	0x3fb042e12b34edb8              # double 0.063520501183055411
	.quad	0x3fe71d711351a0e3              # double 0.72234395764556003
	.quad	0x3fe551ff27212ff4              # double 0.66625936167247213
	.quad	0x3fbb2da520b70d70              # double 0.10616523789126631
	.quad	0x3fe717f1dd4427eb              # double 0.72167294708310459
	.quad	0x3fdd4486c081f7d0              # double 0.45730751800135483
	.quad	0x3feec15c0f65c080              # double 0.96110346801107482
	.quad	0x3feafb27a0b8c1f2              # double 0.84315854445418226
	.quad	0x3fe5710535565383              # double 0.67004642884658983
	.quad	0x3fe40c71b0039334              # double 0.62651905420043486
	.quad	0x3fddab30bbb27d0e              # double 0.46357363061720569
	.quad	0x3feb6d74fed0b5b2              # double 0.85711145180328274
	.quad	0x3fc47c10315f4e14              # double 0.16003611002689466
	.quad	0x3fb0d230e1e5b650              # double 0.065707259321891032
	.quad	0x3fe743961c94caf0              # double 0.7270002897479042
	.quad	0x3fd92bc3047434dc              # double 0.39329600748972182
	.quad	0x3fee86b8ee6a71d3              # double 0.95394560399614148
	.quad	0x3f922fb6ff58ed80              # double 0.017760142645995014
	.quad	0x3fd02d40887e9c92              # double 0.25276196794079298
	.quad	0x3fdc0288e5e40466              # double 0.43765470934164907
	.quad	0x3fe19c99b14e8d31              # double 0.55036625509493409
	.quad	0x3febad24efe1304b              # double 0.86488577701084901
	.quad	0x3fe87ca7bcf7b623              # double 0.76521670253504614
	.quad	0x3fd4f5346227afcc              # double 0.32746610246135499
	.quad	0x3fc083f1cb7032dc              # double 0.12902662690648625
	.quad	0x3fea9e59f60f741e              # double 0.8318300062052264
	.quad	0x3fe945799446f0c7              # double 0.789730825046285
	.quad	0x3fec27c0db32638f              # double 0.87985270320779019
	.quad	0x3fb6d76ae9eb4b68              # double 0.089224512204322814
	.quad	0x3fe6ed9cd354c10c              # double 0.71650544429397334
	.quad	0x3fe578ea9267d422              # double 0.67101029009666413
	.quad	0x3fcff2ebfcca9050              # double 0.2496008858044001
	.quad	0x3fd10284967fbf22              # double 0.26577868172806707
	.quad	0x3fa520ea9cc01460              # double 0.04126675761657661
	.quad	0x3fc6aa2ea1a67b18              # double 0.17706854718286347
	.quad	0x3fd9a19e8d6c0050              # double 0.40048946200113722
	.quad	0x3fd8b5c89e4def28              # double 0.38609519442956008
	.quad	0x3fec9a7189da32dc              # double 0.89385296749386666
	.quad	0x3fc10f91a74703f8              # double 0.13328762691347129
	.quad	0x3fec51cb17ca4649              # double 0.88498453756819473
	.quad	0x3fcf98306edcddc8              # double 0.24683194554539356
	.quad	0x3fe82588b50ed40a              # double 0.75458178866267756
	.quad	0x3fe81929937d1233              # double 0.75307158285483522
	.quad	0x3fe536dcfdd26e83              # double 0.66294717383011947
	.quad	0x3fe3aa9ba046f743              # double 0.61457616142409
	.quad	0x3fc35de0a20f1838              # double 0.15130241311106984
	.quad	0x3fe5835b5c9a2d2f              # double 0.67228477560403188
	.quad	0x3fe74a0fae8e4082              # double 0.72779068081764842
	.quad	0x3fe8842528052bed              # double 0.76613099876828772
	.quad	0x3fdcb9555e7c0d24              # double 0.44881185748109176
	.quad	0x3f9c9c2236993f00              # double 0.027939352590975908
	.quad	0x3fd9abf54804bf1c              # double 0.401120491343123
	.quad	0x3fe233e3588bb2b6              # double 0.56883399290162262
	.quad	0x3fb68f91f791c998              # double 0.088128207151191851
	.quad	0x3fd37644933086b2              # double 0.30409349798183449
	.quad	0x3fc2fc5f2a8f04c0              # double 0.14832677438793063
	.quad	0x3f54a3ce03a8f600              # double 0.0012597572191589412
	.quad	0x3fe3229da97bbcbc              # double 0.59797556974617505
	.quad	0x3fd28a2e99f1161e              # double 0.28968396218655978
	.quad	0x3fd597d41124523e              # double 0.33739186929713927
	.quad	0x3fedafbc0fe12e19              # double 0.92770197965132006
	.quad	0x3fde3a63e2629c64              # double 0.47231385333947729
	.quad	0x3fd633fbeeebce0a              # double 0.34692285854473026
	.quad	0x3fc1cea60a087e1c              # double 0.13911891450787628
	.quad	0x3fee182767af9248              # double 0.94044847727907043
	.quad	0x3fbcf343c041e628              # double 0.11308692401680587
	.quad	0x3fbe0472bad53308              # double 0.11725537358615779
	.quad	0x3fec7ae550c0fb06              # double 0.89000192424995883
	.quad	0x3fe6177887386e11              # double 0.69036508951416142
	.quad	0x3fc130b860decabc              # double 0.13429932336801709
	.quad	0x3fe8847cdea7abd8              # double 0.76617282378480933
	.quad	0x3fc48155f75bd4d0              # double 0.16019701555311494
	.quad	0x3feb80832ed42215              # double 0.85943755289287316
	.quad	0x3f508b2d04018600              # double 0.0010097446065845395
	.quad	0x3fed880798ee918f              # double 0.92285518521798504
	.quad	0x3fe0a24f46f0e86a              # double 0.51981319289849393
	.quad	0x3fd8cba2786595e8              # double 0.38742887265683956
	.quad	0x3fef010aee4df7e0              # double 0.96887728256092131
	.quad	0x3fa84f0a90d649d0              # double 0.04747803705244602
	.quad	0x3fe4a813aab151dc              # double 0.64551719034585231
	.quad	0x3fbe295029c062b8              # double 0.11781788844417462
	.quad	0x3fddca3909960c26              # double 0.46546770034928142
	.quad	0x3fde1f3c6a371c00              # double 0.47065649387917574
	.quad	0x3fdf3e00fff81c86              # double 0.48815941807738061
	.quad	0x3fe4890687b0fb84              # double 0.64172674658026141
	.quad	0x3fea0ad100132c7f              # double 0.8138203622305723
	.quad	0x3fe332fdcc2fe1af              # double 0.59997453575402016
	.quad	0x3fe470245b95f115              # double 0.63868921172937354
	.quad	0x3fe184ac7e55c908              # double 0.54744553255866979
	.quad	0x3fe820494634466d              # double 0.75394118987806069
	.quad	0x3fe3814829b31718              # double 0.60953148025939452
	.quad	0x3fe0092547dd7f8f              # double 0.50111640964677118
	.quad	0x3fd681949a891154              # double 0.35165896502828287
	.quad	0x3fc4ffdaf1efae28              # double 0.16405808270734323
	.quad	0x3fd7e577183fdd48              # double 0.37338044517624214
	.quad	0x3fb1c16ba1600f38              # double 0.069357611559152654
	.quad	0x3fd78b6ca657437c              # double 0.36788479084230352
	.quad	0x3fe0c009826183e4              # double 0.52344203438780967
	.quad	0x3fc56dd80314d710              # double 0.16741466665705973
	.quad	0x3feb60f0489f3a91              # double 0.85558332618696131
	.quad	0x3fe82223dfd97e3b              # double 0.75416749687787588
	.quad	0x3fee95aca68a73fc              # double 0.95577080276018433
	.quad	0x3fdb68514450c452              # double 0.42824203177867048
	.quad	0x3fdc89324d0016b2              # double 0.44587380904736584
	.quad	0x3fdb8d019cce88e6              # double 0.43048134148751982
	.quad	0x3feb227f1075b127              # double 0.8479609796027362
	.quad	0x3feeffe699b89401              # double 0.96873788856157727
	.quad	0x3fd41763ed1387f8              # double 0.31392763282758507
	.quad	0x3fcbeb0a84f15630              # double 0.21811038485854928
	.quad	0x3fe3d04f34b48fa6              # double 0.61917839330680091
	.quad	0x3fe9508a7d6bfaa2              # double 0.79108166214412656
	.quad	0x3fe1c58ff6624690              # double 0.55536649820187911
	.quad	0x3fecd1dbf218a52e              # double 0.90061757358959027
	.quad	0x3fe3af64735db2d7              # double 0.61516020328925947
	.quad	0x3fe632174b0b28f2              # double 0.69361462265922413
	.quad	0x3fe4c7326b98502b              # double 0.64931603445666519
	.quad	0x3fea7a2b2c299fb0              # double 0.82741316438204215
	.quad	0x3fe0a0c8b42e341c              # double 0.51962695304394257
	.quad	0x3fe0e2d768d9e93d              # double 0.52769060591462102
	.quad	0x3fee23d251f49e5b              # double 0.94187274939481413
	.quad	0x3fe47e80a9b0f90b              # double 0.64044221060592699
	.quad	0x3fcbaf90309941c0              # double 0.21629526494008466
	.quad	0x3fedab5defbc0e79              # double 0.92716881583369493
	.quad	0x3fd838313d3d1eae              # double 0.37842970829340572
	.quad	0x3fed9912f31a6506              # double 0.92493579369616508
	.quad	0x3fd890c91af23f9c              # double 0.38383700973008117
	.quad	0x3fd9edd1b0ccd7b2              # double 0.40514032617226825
	.quad	0x3fecb39160a07d4d              # double 0.89691990730708826
	.quad	0x3fd34b697777f398              # double 0.3014777819333232
	.quad	0x3fcff00993c56a3c              # double 0.24951286044491094
	.quad	0x3fba25a4b4aee940              # double 0.10213689242565227
	.quad	0x3fd60b05825fb9e6              # double 0.34442270023182997
	.quad	0x3fef44381c0dde86              # double 0.9770775363858355
	.quad	0x3fe33ae1a1d6cc14              # double 0.60093766793431991
	.quad	0x3fe374ab6beeeb7f              # double 0.60799189644545482
	.quad	0x3fb15404e8cb2138              # double 0.06768828090128387
	.quad	0x3fc99f7e3a671784              # double 0.20017984248823606
	.quad	0x3feb4e02165e6daf              # double 0.8532724797145671
	.quad	0x3fe1fac552775dd0              # double 0.56186166865057352
	.quad	0x3fe6bcde1d4c25f2              # double 0.71055513116988167
	.quad	0x3fd6596e790e504e              # double 0.3492084676920556
	.quad	0x3fc936da487dd4f4              # double 0.19698647060037155
	.quad	0x3fc311034df931f8              # double 0.14895669276519619
	.quad	0x3fdc94a46006d458              # double 0.44657239320378528
	.quad	0x3fe7fc52371d68a0              # double 0.74955092205643225
	.quad	0x3fd99d169f4a20a4              # double 0.40021291308995388
	.quad	0x3fd215cded73f17c              # double 0.28258083523521527
	.quad	0x3fc410f4aa25ab28              # double 0.15676744754758798
	.quad	0x3fd29e6ad0d622ee              # double 0.29091902155100413
	.quad	0x3fe98173102097c3              # double 0.79705193662515972
	.quad	0x3fcb4bace45df55c              # double 0.21324692869886064
	.quad	0x3fa9b499bdf4c6e0              # double 0.050205997884757769
	.quad	0x3fe696ae5c1efaad              # double 0.70589368812928444
	.quad	0x3fe0495fdae0c721              # double 0.50895684003464592
	.quad	0x3fe5e12acac46ea6              # double 0.68373622515669719
	.quad	0x3fea0b6cd6277a42              # double 0.813894670743885
	.quad	0x3fd9c2f156d4e242              # double 0.40252336005827172
	.quad	0x3fe59850b0e85d63              # double 0.67484316398887889
	.quad	0x3fd8d23afc82ea92              # double 0.38783144625964738
	.quad	0x3fd10e177a49c5fc              # double 0.26648508970455942
	.quad	0x3fdf874a69db8e88              # double 0.4926324876562167
	.quad	0x3fd2d505ea2f7f0e              # double 0.29425189847641853
	.quad	0x3fd9bc4d731ee05c              # double 0.4021180748200146
	.quad	0x3fd6b4c83b4c5ffc              # double 0.35478406706670262
	.quad	0x3fe9a80fcf77cdf4              # double 0.80176535149661143
	.quad	0x3fed33c06d053fc0              # double 0.91256734173838794
	.quad	0x3fecc5cd5a6d3c18              # double 0.89914577161278242
	.quad	0x3febef2861be0273              # double 0.87294406023290916
	.quad	0x3fe64eff5e2faaad              # double 0.69714325328580673
	.quad	0x3fe7575cd3014532              # double 0.72941437923342378
	.quad	0x3fd0631bf876b9ba              # double 0.25604914917030508
	.quad	0x3fd3d00f2e8d8912              # double 0.30957393213442785
	.quad	0x3feb6d3720d6cd13              # double 0.85708195127372944
	.quad	0x3f86d861189f4a40              # double 0.011154898227606513
	.quad	0x3fef4ebe09cfc8bf              # double 0.97836210171069371
	.quad	0x3fd45e328beac708              # double 0.31824935592440839
	.quad	0x3fd3d5084bcb4d78              # double 0.3098774662186865
	.quad	0x3fb0b7f86b832e10              # double 0.065307165382528121
	.quad	0x3fd98358b98dc400              # double 0.39864175911412758
	.quad	0x3fd28524adeb7d68              # double 0.28937642082561021
	.quad	0x3fb74875f27d4bb8              # double 0.09094941301491033
	.quad	0x3fd1f8050a9f7ff0              # double 0.28076292073637799
	.quad	0x3fee3119b55f331b              # double 0.94349370407289557
	.quad	0x3fd3e23c0095b176              # double 0.31068325097182681
	.quad	0x3fe81d1f896905ad              # double 0.75355507696092661
	.quad	0x3fdf7948f55030ba              # double 0.49177764850970684
	.quad	0x3fedfc231058353c              # double 0.93702843849465677
	.quad	0x3fe965dd9cc953a0              # double 0.79368477461195041
	.quad	0x3fe89b0477281e9e              # double 0.76892302773281407
	.quad	0x3fe0d6c051a6b820              # double 0.5262147516966742
	.quad	0x3fecf66e4eb0861b              # double 0.90508189553310403
	.quad	0x3fdef980775b765c              # double 0.48397838264449944
	.quad	0x3fe1559686361c13              # double 0.54169775212438009
	.quad	0x3fe7d3e4647ee6fe              # double 0.74461574199742109
	.quad	0x3fd3469e0cb6bb38              # double 0.30118514291364162
	.quad	0x3fedf685365b9ea3              # double 0.93634281746649994
	.quad	0x3f9663ef59ca81a0              # double 0.021865596633348638
	.quad	0x3fc23465c50a6260              # double 0.14222404595490712
	.quad	0x3f925bd79919ee80              # double 0.017928475112496844
	.quad	0x3fcc78471cb8a728              # double 0.22242058660895592
	.quad	0x3fd566930c988e6a              # double 0.33438564519949543
	.quad	0x3fb2003a0588de58              # double 0.070315958358031394
	.quad	0x3fc9b825b2705168              # double 0.20093222821072776
	.quad	0x3fcf29c0d024fb00              # double 0.24346170581153359
	.quad	0x3fdace9bed7f97e0              # double 0.41886041825489251
	.quad	0x3fcd8b6603435c04              # double 0.23081660422641914
	.quad	0x3fee03c466d3bbdf              # double 0.93795986255087971
	.quad	0x3fda349a003cad36              # double 0.40946054480692184
	.quad	0x3fe2f1095b62869d              # double 0.59192340706450219
	.quad	0x3fdb393b25237f2e              # double 0.42536810519048884
	.quad	0x3fe92cac4ec3c000              # double 0.78670325645180128
	.quad	0x3fe06b1254ff806d              # double 0.51307026482755946
	.quad	0x3fdcddb645568da2              # double 0.45103222628878303
	.quad	0x3fe4dc9576ae2c2a              # double 0.65192673854597172
	.quad	0x3fcc3fb3051a4c4c              # double 0.22069394826084687
	.quad	0x3fdf19c303c6316a              # double 0.48594737404416455
	.quad	0x3fbb3ba1b8965c40              # double 0.10637865788008671
	.quad	0x3fec20eddfe25687              # double 0.87901967742318809
	.quad	0x3fdf76815a7f8b0a              # double 0.49160798871723499
	.quad	0x3fe56a91eac65016              # double 0.66925903181482016
	.quad	0x3fb3deb10136be18              # double 0.07761675147661895
	.quad	0x3fe3aa5a055b0283              # double 0.61454487844464756
	.quad	0x3fea5bee97a65cf3              # double 0.82372216815102062
	.quad	0x3fedfea27498e8a8              # double 0.93733332417402426
	.quad	0x3fe297f592a347ff              # double 0.5810497154254789
	.quad	0x3fcd1940e8f69aa4              # double 0.22733317732964509
	.quad	0x3fd7cdf3a92ba29a              # double 0.37194530029823059
	.quad	0x3fe333df721f9460              # double 0.60008213319509807
	.quad	0x3fcb1e585d2f1524              # double 0.2118635611533729
	.quad	0x3feed8c7481b5f51              # double 0.96396221240409307
	.quad	0x3fdda29dfc423384              # double 0.46305036196354643
	.quad	0x3fd6d7646733b60a              # double 0.35689649656600919
	.quad	0x3fea88351af720f5              # double 0.82912688509625687
	.quad	0x3fc42a266c68e2d8              # double 0.15753631871645868
	.quad	0x3fe4950b6ef52daf              # double 0.64319392844611467
	.quad	0x3fef85584fedc85c              # double 0.98502746211148517
	.quad	0x3fe345467792fe92              # double 0.60220645288787211
	.quad	0x3fe1db948503e214              # double 0.55805421809697231
	.quad	0x3fea11de45697326              # double 0.81468118245138466
	.quad	0x3fde3110d4f265fe              # double 0.47174473567574171
	.quad	0x3fed492575586d99              # double 0.9151789943602352
	.quad	0x3fef2cb2a7da9d28              # double 0.97420628341652548
	.quad	0x3fe5a8d302781bd2              # double 0.67685842973957677
	.quad	0x3fc9c5c8058665dc              # double 0.20134830732130993
	.quad	0x3fe641c083b77798              # double 0.69552636838828885
	.quad	0x3fdb825051ca0f12              # double 0.42982871997104255
	.quad	0x3fd015565c8e3992              # double 0.25130232847814071
	.quad	0x3fe9d153496a7522              # double 0.80680240954430738
	.quad	0x3fef6c596b4223cc              # double 0.98197623204134165
	.quad	0x3fe02b48943f8cb9              # double 0.50528363184675762
	.quad	0x3fef7faa52c70cf3              # double 0.98433414618958037
	.quad	0x3fe402b6fa555a99              # double 0.62533139127011161
	.quad	0x3fe8eff19f54c30f              # double 0.77929001921993002
	.quad	0x3fd25a85ce66d380              # double 0.28677506596005031
	.quad	0x3fe06d506712c5ad              # double 0.51334400302419214
	.quad	0x3fd8f57ed8537652              # double 0.38998385549152659
	.quad	0x3fe9ade5494dde1b              # double 0.80247749631138576
	.quad	0x3fdb2269a7169f88              # double 0.42397538487647823
	.quad	0x3fbd3ccbd50e7960              # double 0.11420892669273064
	.quad	0x3fef7f3dcae23c27              # double 0.98428239465454658
	.quad	0x3fdbb7527ecb7780              # double 0.43306410200408862
	.quad	0x3fd0b6ff1950658a              # double 0.26116921875071653
	.quad	0x3fe985a9f087acb3              # double 0.79756638506423483
	.quad	0x3fd22543f4c36396              # double 0.28352450277957908
	.quad	0x3fd88712e28abcd4              # double 0.38324424861180018
	.quad	0x3fe697b406174165              # double 0.70601845922105311
	.quad	0x3fd56bbebb2e231a              # double 0.3347012355739466
	.quad	0x3fda22ee0495ff3e              # double 0.40838194320530252
	.quad	0x3fe424c9d07a3964              # double 0.62949076383828784
	.quad	0x3fedc778726c73f3              # double 0.93059942577713028
	.quad	0x3fea0ca00ee27dff              # double 0.81404116542029203
	.quad	0x3fe9b0ff3cd0ec44              # double 0.802856081754165
	.quad	0x3f9e0a5344d70020              # double 0.029336262776041733
	.quad	0x3fecf003bdfd59d7              # double 0.90429865939477849
	.quad	0x3fe2e8a7038bfaf3              # double 0.59089995091184588
	.quad	0x3fdb6491c9b12f90              # double 0.42801327415940538
	.quad	0x3fc9b70d7357da08              # double 0.20089882022848848
	.quad	0x3f88ebc3dcca0280              # double 0.01216843621773589
	.quad	0x3fe94eb6af6c4e26              # double 0.79085859548871862
	.quad	0x3fdddca2262403b8              # double 0.46659139370609237
	.quad	0x3fcdefe1046424c4              # double 0.23388302530682925
	.quad	0x3fe4a6ff0e25b682              # double 0.6453852917017715
	.quad	0x3fec8163bed9b294              # double 0.89079463267769876
	.quad	0x3fdd029db9d3223e              # double 0.45328467509219539
	.quad	0x3fe79ec21909128e              # double 0.73812966241583111
	.quad	0x3feb6019a377af17              # double 0.85548097541092971
	.quad	0x3fb25573a4891fe8              # double 0.071616389913401357
	.quad	0x3fea0e5593abbba4              # double 0.81424979059180602
	.quad	0x3f876767d04e7f40              # double 0.011427699131501989
	.quad	0x3fec89882784e97d              # double 0.89178855627623899
	.quad	0x3fe23d5031419511              # double 0.56998452778194253
	.quad	0x3fef6483217ed0cc              # double 0.98101955930771955
	.quad	0x3fee81ba5a67a442              # double 0.95333593041608133
	.quad	0x3fcdb9b69af2c328              # double 0.23223002019724359
	.quad	0x3fda001ff7927ee6              # double 0.40625762154557632
	.quad	0x3fedde7f7d987724              # double 0.93341040163406718
	.quad	0x3fe813e3311e4073              # double 0.75242766946213491
	.quad	0x3fdf790de785a5ec              # double 0.49176356896950213
	.quad	0x3feadb337c935d7f              # double 0.83925794917278995
	.quad	0x3fe1501d10021351              # double 0.5410294830950112
	.quad	0x3fd25eccd17ea1cc              # double 0.28703613718473941
	.quad	0x3fd67a382c24af04              # double 0.35120968161457733
	.quad	0x3fddcb635ca404fa              # double 0.46553882643645716
	.quad	0x3fed3d1d393ed016              # double 0.91371022396788493
	.quad	0x3fe8eb5572ed6cd0              # double 0.77872726866498887
	.quad	0x3f80d793482fde80              # double 0.0082236772923203194
	.quad	0x3fb6f92ee4e9ecb8              # double 0.089739733588362181
	.quad	0x3fe73ee2e034d310              # double 0.72642654218961589
	.quad	0x3feee8ab33078644              # double 0.9659019467037031
	.quad	0x3fd7e5c508680314              # double 0.37339902707030714
	.quad	0x3fcde9360c72f3e8              # double 0.23367953880179404
	.quad	0x3febf0f754995f9c              # double 0.8731648113562076
	.quad	0x3fca85805d1d6be8              # double 0.20719914003970463
	.quad	0x3fe6ca78d8733c1f              # double 0.71221582675378048
	.quad	0x3fb3c743555bd3a0              # double 0.077259262408758023
	.quad	0x3fe2e7e58be7bee5              # double 0.59080769849057602
	.quad	0x3fe0d1fdb1346a3b              # double 0.52563366518308585
	.quad	0x3fd52dbf9c31bd90              # double 0.33091726544713485
	.quad	0x3fc1ea083db946c8              # double 0.1399545956979209
	.quad	0x3fc37fa3e301cb60              # double 0.15233276924444805
	.quad	0x3fe64fb8aa40eb95              # double 0.69723160984664168
	.quad	0x3fd7459bd8adeba0              # double 0.36362358245940563
	.quad	0x3fca962d0b3e87a8              # double 0.20770800637279518
	.quad	0x3fd9a1b01e4afb1e              # double 0.40049365003862814
	.quad	0x3fe1d4359f2226a8              # double 0.55715447502844473
	.quad	0x3fd9745e1f3a3c72              # double 0.39772751855429711
	.quad	0x3fc0b7b48763a5c0              # double 0.1306062375145256
	.quad	0x3fec6f4c9f593a67              # double 0.88858634112132229
	.quad	0x3fe7c686502db8cc              # double 0.74298396739848149
	.quad	0x3fe9b07ee11a9f2d              # double 0.80279487577079112
	.quad	0x3fec59e8ec8ef492              # double 0.88597532465759543
	.quad	0x3fdad49e64fbe5b2              # double 0.41922721730915236
	.quad	0x3fd920b9fb6bbf5c              # double 0.39262246659108313
	.quad	0x3fe95a239f0dbd08              # double 0.79225331368607588
	.quad	0x3fa53154e8058c60              # double 0.041391995737989573
	.quad	0x3feaad70b668744b              # double 0.83367190958564075
	.quad	0x3fe9e3092a697dc9              # double 0.80896433147057067
	.quad	0x3fea983f0cad2152              # double 0.83108475185239628
	.quad	0x3fd8685acb5cead6              # double 0.38136930331863306
	.quad	0x3fec8e3887da081f              # double 0.8923609402993441
	.quad	0x3fd589dbcd5afe38              # double 0.3365392213272318
	.quad	0x3fceb68ac2008178              # double 0.23994574043991768
	.quad	0x3fec14c59d4e303c              # double 0.87753563617435004
	.quad	0x3fd45329c23e26dc              # double 0.31757587403317955
	.quad	0x3febcf1d6df087ff              # double 0.86903258774350423
	.quad	0x3feba74db903ae1a              # double 0.86417280326481039
	.quad	0x3fe9685344cebcee              # double 0.79398501814821798
	.quad	0x3fee08cc10ba8815              # double 0.93857386843979163
	.quad	0x3fe4b41b6feaed86              # double 0.64698573931620795
	.quad	0x3fd9f82e7810802a              # double 0.40577279782337661
	.quad	0x3feda62c72940e7b              # double 0.92653486612876124
	.quad	0x3fc6713cfb010b9c              # double 0.17533075576838264
	.quad	0x3fec07139ee88847              # double 0.87586384808333484
	.quad	0x3fe1a3ba64ae4567              # double 0.55123634018142986
	.quad	0x3fe0ba68f029c6aa              # double 0.52275511652824957
	.quad	0x3fe7c69e488b4f4f              # double 0.74299539727005903
	.quad	0x3fea9020b6b945b8              # double 0.83009372413851334
	.quad	0x3fed0bbebcf477cd              # double 0.90768372445358525
	.quad	0x3fe3d0d7fed33f4a              # double 0.61924361963790742
	.quad	0x3fecf2fcb14e6455              # double 0.9046615088474349
	.quad	0x3f915b5ac6e7bd80              # double 0.016950052633487811
	.quad	0x3fb77dc07dd4b9c8              # double 0.091762572021912736
	.quad	0x3fe5c06fc6cb2a2e              # double 0.67974079920651831
	.quad	0x3fd63ddfe76c4702              # double 0.34752652740381518
	.quad	0x3fe4817fec9fe930              # double 0.64080806937935186
	.quad	0x3fd41bc28f684cf4              # double 0.31419433598166724
	.quad	0x3feede058a709386              # double 0.96460225142492173
	.quad	0x3fda8a2cb4491bf4              # double 0.41468350988401359
	.quad	0x3fd8297258f1ef0a              # double 0.37752970396080399
	.quad	0x3fe5f6cf46fd917e              # double 0.68637813439686091
	.quad	0x3fb6cdc8d8b195c0              # double 0.089077523139699188
	.quad	0x3fe7471f8ac5ced3              # double 0.72743203262367684
	.quad	0x3fd02d0f68fad410              # double 0.25275025607999257
	.quad	0x3fd138d133c92fac              # double 0.26909284646239473
	.quad	0x3feff7646965a510              # double 0.99894924722062406
	.quad	0x3fe5a17e1a1962ef              # double 0.67596345040791828
	.quad	0x3fdb6521bce82d0a              # double 0.42804759452765551
	.quad	0x3fea20aa93ae27b9              # double 0.81648758739287708
	.quad	0x3fe14200759d0742              # double 0.53930685969701408
	.quad	0x3fdf011a1b66b6ae              # double 0.48444225955868603
	.quad	0x3fe1f0645be394d2              # double 0.560594729872401
	.quad	0x3feb68f5b6a7afee              # double 0.85656247782526207
	.quad	0x3fe0f9818d19dbd6              # double 0.5304572826270213
	.quad	0x3fde37dc4a25ffd4              # double 0.47215945473726362
	.quad	0x3fe2bc7e0dfa3ce8              # double 0.585509326267041
	.quad	0x3fefc8825a6b5b13              # double 0.99322621974974578
	.quad	0x3fea16960b77091c              # double 0.81525709380392497
	.quad	0x3feccd1e07eaf35d              # double 0.90003873392525302
	.quad	0x3feab3e6c9715bdc              # double 0.83446063370035572
	.quad	0x3fbf4ffaef12bb70              # double 0.122314151160692
	.quad	0x3fd0d8efb06c4024              # double 0.26324074009699161
	.quad	0x3fdd8e3fa6c4fd36              # double 0.46180716787417297
	.quad	0x3fee53e2bc458d83              # double 0.94773995181860504
	.quad	0x3fe768a93be3ff25              # double 0.73152600953469415
	.quad	0x3fcfb28325721da4              # double 0.24763526276022418
	.quad	0x3fd7178a8c292210              # double 0.36081184089246765
	.quad	0x3fed0341ca1a2855              # double 0.90664758179742455
	.quad	0x3fe9e48210925fca              # double 0.80914405094790109
	.quad	0x3fe24482e43a5946              # double 0.57086319518820328
	.quad	0x3fd9d3f55d2f809a              # double 0.40356191730644186
	.quad	0x3fa0737e26ff9380              # double 0.032131140003719416
	.quad	0x3fc08e97061b7238              # double 0.12935149954036418
	.quad	0x3fef3a24c626809f              # double 0.97584761334657688
	.quad	0x3fd928594d82e5b6              # double 0.39308769769157992
	.quad	0x3fb4888e9ff36ee0              # double 0.080208696413531566
	.quad	0x3fe87d7edd150e3d              # double 0.76531928234221136
	.quad	0x3fc1a887c83e9a40              # double 0.13795563962522017
	.quad	0x3fc7b05dfeb33c88              # double 0.1850697988179244
	.quad	0x3fddca2481e89342              # double 0.46546280561806352
	.quad	0x3feef326df60f338              # double 0.96718162182478462
	.quad	0x3fef449ba0368bd0              # double 0.97712498942962078
	.quad	0x3fe1db17b5b89c38              # double 0.55799470417412689
	.quad	0x3fedc1b9216d6e96              # double 0.92989784745027992
	.quad	0x3fc8ed79da6a19fc              # double 0.19474719204681878
	.quad	0x3fdfa3d30235760a              # double 0.49437403884607589
	.quad	0x3fdeec5b41c86f40              # double 0.48317605423084231
	.quad	0x3fe5199f2b3f9ccc              # double 0.65937765547723748
	.quad	0x3fedd65f58c2b2af              # double 0.9324185117344167
	.quad	0x3fee8e5a6631dd57              # double 0.95487709007185628
	.quad	0x3fd5244995c9df00              # double 0.33033980968274079
	.quad	0x3fd1ed351719c85e              # double 0.28010298973015846
	.quad	0x3fc07f6bee15a390              # double 0.12888859868260427
	.quad	0x3feee7b953cd0323              # double 0.96578661315297542
	.quad	0x3feff5ed51409033              # double 0.9987703883130109
	.quad	0x3fecbfcada943389              # double 0.89841215792840601
	.quad	0x3fe4aa6bf05182eb              # double 0.64580342232883703
	.quad	0x3fc31cc2af4543a0              # double 0.1493152004063889
	.quad	0x3fee2071340956c4              # double 0.94146022952437435
	.quad	0x3fe6cf4c04481498              # double 0.71280480228655829
	.quad	0x3fef107272a541fe              # double 0.97075769797999079
	.quad	0x3fa91707811b5e60              # double 0.049003824720497802
	.quad	0x3fae6c7916921500              # double 0.059421333317951408
	.quad	0x3fcd77fe52a756f4              # double 0.23022440944503553
	.quad	0x3fef7997700dc6a9              # double 0.98359271893987909
	.quad	0x3fd69dd27b91e8d8              # double 0.35338270251635384
	.quad	0x3fbb87a076d11a88              # double 0.10753825093079616
	.quad	0x3fcb1b0dfd6056a4              # double 0.21176314231768345
	.quad	0x3fea0a685b3ad5fa              # double 0.81377046411824883
	.quad	0x3fe377b9eda6f729              # double 0.60836502472350162
	.quad	0x3fe1f8693467f2e4              # double 0.56157360301548609
	.quad	0x3fd4fddc5c4174a0              # double 0.32799443253845517
	.quad	0x3fcb120f2bc0fea0              # double 0.2114886249200838
	.quad	0x3fe832e61a6c7c4a              # double 0.75621323738949653
	.quad	0x3fef33cf61c9f954              # double 0.97507447337538133
	.quad	0x3fe25e74b440caaf              # double 0.57403025823290033
	.quad	0x3fb6f1d4d0876110              # double 0.089627552900655382
	.quad	0x3fb5943127b01f18              # double 0.084292480649420631
	.quad	0x3fe010c66c807483              # double 0.50204774085763437
	.quad	0x3fee502119851a5b              # double 0.94728140816080086
	.quad	0x3f985af8da9a87e0              # double 0.023784530966288631
	.quad	0x3fd0ae9867c546ee              # double 0.26065645345543842
	.quad	0x3fb3c3dbfc03ba18              # double 0.077207325961105133
	.quad	0x3fb8c927ec8da700              # double 0.096819396259572698
	.quad	0x3fda45e7a13d088c              # double 0.41051665063799514
	.quad	0x3fdfb0e8e2696ff4              # double 0.49517271147283215
	.quad	0x3fd4b183ed65e38a              # double 0.32333467658423187
	.quad	0x3fbc874c6c5220f0              # double 0.11143949169684553
	.quad	0x3fe6291ca2a5a7f1              # double 0.69251853720675005
	.quad	0x3fe750dc82e14b56              # double 0.72862077295790573
	.quad	0x3fced312373f6c88              # double 0.24081638047832521
	.quad	0x3fb6da4a45d3bcc8              # double 0.089268343017226859
	.quad	0x3fed3cba068de9a7              # double 0.9136629226698475
	.quad	0x3fd22f71b9378914              # double 0.28414576613990161
	.quad	0x3fd4a892e51672d4              # double 0.32278892871708575
	.quad	0x3fe0f102f499c005              # double 0.52942035459091186
	.quad	0x3fef46282c7e5df3              # double 0.97731407823715554
	.quad	0x3fe45c2e3acf4571              # double 0.63625251280079287
	.quad	0x3fdae8cb4d9cec2e              # double 0.42045862750427687
	.quad	0x3fc30ad76a0d3aec              # double 0.1487683551626654
	.quad	0x3fd7e2e38c404032              # double 0.37322319694885941
	.quad	0x3febd60099ea84fe              # double 0.86987333356606178
	.quad	0x3fdb65b12f6621a6              # double 0.42808179501346399
	.quad	0x3fe5f4f36df0b2e2              # double 0.68615123245907861
	.quad	0x3fc5f1eb1e36164c              # double 0.17144526457939191
	.quad	0x3fef76dd4bb21157              # double 0.98325981888096236
	.quad	0x3f83dd7668bd2500              # double 0.0096997500146636106
	.quad	0x3fe5c5d993f4a368              # double 0.68040160081464496
	.quad	0x3fee691b41ab16d3              # double 0.95033037973254364
	.quad	0x3fedb59bedbfee3e              # double 0.92841907916540101
	.quad	0x3fd04990ed3b1752              # double 0.25449011962006296
	.quad	0x3fe0dba3f1834fe0              # double 0.52681157274718871
	.quad	0x3fe1d6460a460d69              # double 0.55740644461222388
	.quad	0x3fd848685de8c1a8              # double 0.37941941424198911
	.quad	0x3fd43e38f567c406              # double 0.31629775967945795
	.quad	0x3fcd7faa9c23891c              # double 0.2304585707088983
	.quad	0x3fecb746716868e0              # double 0.8973724570271564
	.quad	0x3fe307dae47bbb51              # double 0.59470886827134894
	.quad	0x3fe787abfd86af56              # double 0.73531150357073716
	.quad	0x3fe52d45b82de798              # double 0.66177640888712386
	.quad	0x3fd18a1d31668a96              # double 0.27405481170914336
	.quad	0x3fe95c587822877b              # double 0.79252265418857293
	.quad	0x3fb400d4f1bf22f0              # double 0.078137692470715114
	.quad	0x3fe805f19fdb14e4              # double 0.75072556707223414
	.quad	0x3fed871d3c4958b0              # double 0.9227434327574624
	.quad	0x3fd3b8781f0283da              # double 0.30813410785964168
	.quad	0x3feb3c064c4d029f              # double 0.85107722189430379
	.quad	0x3fd82abb879669a8              # double 0.37760818711253785
	.quad	0x3feb10896a502863              # double 0.84576864971428412
	.quad	0x3fddaaaf1b9fbc16              # double 0.46354272554066378
	.quad	0x3fc39da228b227f4              # double 0.15324809062104772
	.quad	0x3fc37787aceb3a38              # double 0.15208526557258195
	.quad	0x3fe0945b0bec9822              # double 0.518109820641943
	.quad	0x3fe852d0deb7c195              # double 0.76010936259813155
	.quad	0x3fda60b5c4a9862a              # double 0.41215271191876701
	.quad	0x3fca51e8e810b918              # double 0.20562468844713844
	.quad	0x3fe2268bab746e8b              # double 0.56720527159946366
	.quad	0x3fadc1cda17696b0              # double 0.058119226417415404
	.quad	0x3fdc3b215da573a6              # double 0.44110902924676976
	.quad	0x3fe1a3ddd16589a8              # double 0.55125323198108322
	.quad	0x3fba3d8c65980a88              # double 0.10250165443725667
	.quad	0x3fef68754705a1dd              # double 0.98150123473629558
	.quad	0x3fe3b07cadeb9617              # double 0.61529382675934385
	.quad	0x3fd5a4cb99b18fd6              # double 0.33818330773487781
	.quad	0x3fd19243c8d31806              # double 0.27455229388976965
	.quad	0x3febd40b84457472              # double 0.86963439783325058
	.quad	0x3fb48a3688a253e0              # double 0.080233963354046534
	.quad	0x3fec5305ed24c3bd              # double 0.88513466183768907
	.quad	0x3fd40b04298ed8a4              # double 0.3131723790969636
	.quad	0x3fe0fe3c211f20d8              # double 0.53103453129827027
	.quad	0x3fdaf946fd50c438              # double 0.42146467912522523
	.quad	0x3fe09aa63b6b7187              # double 0.51887809377107963
	.quad	0x3fe4934528b843d0              # double 0.64297731354792553
	.quad	0x3fd16ae47d202212              # double 0.27214920253075647
	.quad	0x3fd06e73e006882e              # double 0.2567414939641165
	.quad	0x3fb4c82566030068              # double 0.08117898693581227
	.quad	0x3fe094a92311ae18              # double 0.51814705705095587
	.quad	0x3fe1c2403f1bdf4e              # double 0.55496227575256696
	.quad	0x3fe50aff1152ff20              # double 0.65759232886918895
	.quad	0x3fedb926c5cd00f2              # double 0.9288514960572043
	.quad	0x3f79ea047cd24280              # double 0.0063266921325896286
	.quad	0x3fe95f8b544017ca              # double 0.79291311698102018
	.quad	0x3fc0cd1be1d49cf0              # double 0.13125942732697338
	.quad	0x3fd03c2697c4e85c              # double 0.2536713106270605
	.quad	0x3fbcac1e35a34de0              # double 0.11200131234664168
	.quad	0x3f9d4ec3a387a580              # double 0.028620774131842719
	.quad	0x3fe6c4b0bd2ad136              # double 0.71151005694131331
	.quad	0x3fc0d54b40f4c61c              # double 0.13150921508490476
	.quad	0x3fe61b5619c62b8a              # double 0.69083695444111126
	.quad	0x3fd358c23820db20              # double 0.30229239922793916
	.quad	0x3fe1ef5502504268              # double 0.56046534015520155
	.quad	0x3fcae1ba5a2dde38              # double 0.21001366999893079
	.quad	0x3fef7fc2a795ee14              # double 0.98434574824881559
	.quad	0x3fe83042f3b87497              # double 0.75589130021730255
	.quad	0x3fca9f6484ba4098              # double 0.207989277656911
	.quad	0x3fe603509f01e062              # double 0.68790465408438828
	.quad	0x3fd185a1163120fc              # double 0.27378108184031169
	.quad	0x3fbabe1d864651d0              # double 0.10446342971983502
	.quad	0x3fe45c26f0c68c40              # double 0.63624903704147329
	.quad	0x3fe1e6efe214d946              # double 0.55944055706530871
	.quad	0x3fc04269df60ebd4              # double 0.12702678115041854
	.quad	0x3fe3632ad6058886              # double 0.60585538674446648
	.quad	0x3fe3ff866b7200fd              # double 0.62494202599921744
	.quad	0x3fbcc2c627130308              # double 0.1123470158954768
	.quad	0x3fe69b32af2dba3a              # double 0.70644506659102224
	.quad	0x3fa434d013ed00f0              # double 0.039465429718349543
	.quad	0x3fdaf1a8b2213906              # double 0.420999692873821
	.quad	0x3f841c17c6f9e800              # double 0.009819207916041961
	.quad	0x3fec151060940215              # double 0.87757128584786648
	.quad	0x3fe10905f410bbf2              # double 0.53235147160546448
	.quad	0x3f9bc149ca708780              # double 0.02710452364056648
	.quad	0x3fd9fd733a9c7046              # double 0.4060943672536762
	.quad	0x3fd251f947b53aba              # double 0.28625328066565781
	.quad	0x3fd0a432d75a11f0              # double 0.26002188711598162
	.quad	0x3fe98d66bf6e9f45              # double 0.79851090802274227
	.quad	0x3feb6db573d585b6              # double 0.85714218734590619
	.quad	0x3fec9e32251cabb5              # double 0.8943110203593877
	.quad	0x3fd69de890e3b718              # double 0.35338796758047542
	.quad	0x3fefa1aa40bbedf8              # double 0.98848450320605163
	.quad	0x3fdc4a87330aba00              # double 0.44204883560715302
	.quad	0x3fe5087b1cbb73cc              # double 0.65728526698841838
	.quad	0x3fe471cb6090cbd0              # double 0.63889092312308016
	.quad	0x3fe810c5b70b9599              # double 0.75204740286851568
	.quad	0x3feb89b2f929637a              # double 0.86055897392644387
	.quad	0x3fe27dda28ee8f6b              # double 0.57786281580454835
	.quad	0x3fc84a2f90857ee0              # double 0.18976397091591135
	.quad	0x3fd36bac2a451572              # double 0.3034468090812289
	.quad	0x3fcf8901a12050cc              # double 0.24636860244266356
	.quad	0x3fe5ef0d2df97b3c              # double 0.68543108920480433
	.quad	0x3feb99a0eaf46df0              # double 0.86250348939523569
	.quad	0x3fc61a66836c376c              # double 0.17268067757725747
	.quad	0x3fef66a904f37850              # double 0.98128176657679411
	.quad	0x3fe50e18ff6dfccd              # double 0.65797090424157434
	.quad	0x3fc5d5404c4089d0              # double 0.17057040904280862
	.quad	0x3fd4e2a4fe0ad784              # double 0.32633328255484906
	.quad	0x3fe1669d4a5c7fa6              # double 0.54377617381759502
	.quad	0x3fd89cb7d387043c              # double 0.38456531197522614
	.quad	0x3fb3a6dc98bdbec8              # double 0.076764857569055711
	.quad	0x3fe597e38cd247eb              # double 0.67479112152272813
	.quad	0x3fea863b8dd15358              # double 0.82888581942334394
	.quad	0x3fe254721b892183              # double 0.57280831697521284
	.quad	0x3faf2b6ae3f083b0              # double 0.060878124546668189
	.quad	0x3fe4836b0a454b3d              # double 0.6410422516440587
	.quad	0x3fe9dc452b7e1cd2              # double 0.80813845152524721
	.quad	0x3fe571821062ed0e              # double 0.67010596466517014
	.quad	0x3fe75c71d74861be              # double 0.73003475234423099
	.quad	0x3fd92bc7e2e5e768              # double 0.3932971683312787
	.quad	0x3fbaccd99b27d918              # double 0.10468826330165759
	.quad	0x3fd943e4f6c685da              # double 0.39476894473236046
	.quad	0x3fdbbf82465a43ac              # double 0.43356377477999319
	.quad	0x3fbce9244417ad50              # double 0.11293245947279229
	.quad	0x3fec3b2dc2152594              # double 0.88222396761664123
	.quad	0x3fd50a17d5fc4fb4              # double 0.32874103447943104
	.quad	0x3fe27895adc9632b              # double 0.57721980993946909
	.quad	0x3fed359296b9b6b0              # double 0.91278962553561449
	.quad	0x3fdee9a4302eff6e              # double 0.48301033692768314
	.quad	0x3fe1bed24f417baf              # double 0.55454364280364199
	.quad	0x3fd2d1f4cb4b776e              # double 0.29406471112257904
	.quad	0x3fe4699d88b74fc7              # double 0.63789250089984584
	.quad	0x3fd60272a12b8806              # double 0.34389940013181819
	.quad	0x3fe30bf0047b80ca              # double 0.59520722270465254
	.quad	0x3fe0d109eb37ac19              # double 0.52551742497360288
	.quad	0x3fc8df5f9e98f6b4              # double 0.19431681865710504
	.quad	0x3fca805f9a541db8              # double 0.20704264674735184
	.quad	0x3fd4fdc731bdd1d4              # double 0.3279893861538572
	.quad	0x3fe740e5e8e6440d              # double 0.72667212951830751
	.quad	0x3fb3b92427539c18              # double 0.077043780900212133
	.quad	0x3fd11f0cc2868a66              # double 0.26752013203273461
	.quad	0x3fcbf01318bd93f8              # double 0.21826399524721274
	.quad	0x3feb666681ec069f              # double 0.85625005126367515
	.quad	0x3fecff13ccd029aa              # double 0.90613737108769965
	.quad	0x3fe28a5fdb9a19c1              # double 0.57939141169554642
	.quad	0x3fc4cae504256d50              # double 0.1624418516392816
	.quad	0x3fdbbb1a4b243ea4              # double 0.43329484308285715
	.quad	0x3fe35e6fd871d5b0              # double 0.60527794145916936
	.quad	0x3feca1054c9155ac              # double 0.89465584711677115
	.quad	0x3f93f77e174eff00              # double 0.019498796627657633
	.quad	0x3fc9809ef7b6ce48              # double 0.19923770041860878
	.quad	0x3fe59defe4ca2d77              # double 0.6755294292974402
	.quad	0x3fe001e272cbe7ab              # double 0.50023004933540471
	.quad	0x3fe1805abfc1449b              # double 0.54691827251567149
	.quad	0x3fde3e7ddf9a1bba              # double 0.47256419025546459
	.quad	0x3feb6c14ceba4129              # double 0.85694351555324488
	.quad	0x3fe9fcfb918cafe0              # double 0.81213167598388835
	.quad	0x3fe5421365886dcd              # double 0.66431588965081689
	.quad	0x3fd3cb54b60ecee6              # double 0.30928533343397502
	.quad	0x3f9a731fab05e920              # double 0.025829787076397825
	.quad	0x3fe82e56ee7840a4              # double 0.75565668655510309
	.quad	0x3fd8da57feebc91e              # double 0.38832664389259886
	.quad	0x3fea6f55d02512e3              # double 0.82609072354588553
	.quad	0x3fe0ac25af3b623e              # double 0.52101406311982834
	.quad	0x3fd9ec64a7672718              # double 0.40505329463904749
	.quad	0x3fefa46654b053a7              # double 0.98881832638527533
	.quad	0x3feb40e931ade43e              # double 0.85167369559270134
	.quad	0x3fed4939171fd798              # double 0.91518835560303824
	.quad	0x3fe9d71f2d43c2b2              # double 0.80750998345145875
	.quad	0x3fd4b72b656b418e              # double 0.32367978004642672
	.quad	0x3fbf6c5e0e991cb8              # double 0.12274730545424262
	.quad	0x3feb3b4097aec648              # double 0.85098294854669465
	.quad	0x3fe529c3cfc1f88f              # double 0.66134825303721978
	.quad	0x3fdbf121d5315afa              # double 0.43659253902062256
	.quad	0x3fdb66f61d64e826              # double 0.42815926428341056
	.quad	0x3fdc66cfd55cdd2c              # double 0.44377513729291951
	.quad	0x3fec2d5fea9ca32e              # double 0.88053890059118145
	.quad	0x3fc8b76e0a5ffbf0              # double 0.19309783464993258
	.quad	0x3fd338d756f51628              # double 0.30034430972986792
	.quad	0x3fabc7853db81a30              # double 0.054256595405650976
	.quad	0x3feaa238e568037a              # double 0.83230252080839695
	.quad	0x3fe2f8449cbbc87b              # double 0.59280615436570316
	.quad	0x3fef4c5b035431fe              # double 0.97807074213193324
	.quad	0x3fca24f42afd5b8c              # double 0.20425273989777926
	.quad	0x3fe845f1b8cf9e5c              # double 0.75853811355495848
	.quad	0x3fa396985ca33740              # double 0.038258324917122
	.quad	0x3fdb5fbc6520efda              # double 0.42771825672002495
	.quad	0x3fd413a3b7ca000c              # double 0.31369870136404709
	.quad	0x3fcc52b257289198              # double 0.22127370124611612
	.quad	0x3fef42ba58d916cd              # double 0.97689549782872975
	.quad	0x3fd823f5d3d8726e              # double 0.37719484031712269
	.quad	0x3feebe26051ac04e              # double 0.96071148869487799
	.quad	0x3fb43e27f30e9ab0              # double 0.079073426094150134
	.quad	0x3fe0b878c81dcbff              # double 0.52251853070481491
	.quad	0x3fd7a1e22f981500              # double 0.36925558708055917
	.quad	0x3fef9d0ef0e6b816              # double 0.98792216349625295
	.quad	0x3fe1e26c5de53b1d              # double 0.55888956393195921
	.quad	0x3fcd943bb1405330              # double 0.23108621744963775
	.quad	0x3fdd058fd8fc7868              # double 0.45346447172221938
	.quad	0x3fc9043108a6c0bc              # double 0.19544041559629999
	.quad	0x3fe0eb4f4e25415e              # double 0.52872433913038797
	.quad	0x3fbf676e5e34c418              # double 0.12267198371843369
	.quad	0x3fe7c4c23db8749d              # double 0.74276840262213606
	.quad	0x3fe6d256cfa77b1e              # double 0.71317616040673548
	.quad	0x3fdb7cbb102978a8              # double 0.42948795870132495
	.quad	0x3fe9f1f654b2c106              # double 0.81078640501621702
	.quad	0x3fe2a4b6dee11a93              # double 0.58260673075786185
	.quad	0x3fe675639f11a704              # double 0.70182972973017899
	.quad	0x3fefd0a10a8f545e              # double 0.99421741545178199
	.quad	0x3fc1df152716a1a4              # double 0.13962044151891206
	.quad	0x3fea0cf30a8a9155              # double 0.81408073481410759
	.quad	0x3fc3d042f8f82aa8              # double 0.15479313999852207
	.quad	0x3fe8dea3d080702f              # double 0.77717772219648917
	.quad	0x3fdf9c9376a8930a              # double 0.49393164241546172
	.quad	0x3fee2a2f807bb34a              # double 0.94264960379005314
	.quad	0x3fe5848fb6fe234c              # double 0.67243180981413664
	.quad	0x3fcdc2168b97c7c4              # double 0.23248559776362587
	.quad	0x3fd6aefe0771df5a              # double 0.35443068244011544
	.quad	0x3fd4811714183e54              # double 0.32037903749821806
	.quad	0x3fed642b75f4f7ad              # double 0.91847775495965822
	.quad	0x3fcf90c2ee3650cc              # double 0.24660526877835875
	.quad	0x3fee8269914331da              # double 0.95341947909906399
	.quad	0x3fcd3d635ddde2c0              # double 0.22843591769539806
	.quad	0x3fdb2c605aef403c              # double 0.42458351974801523
	.quad	0x3fecadf4e4c081f7              # double 0.89623493841287327
	.quad	0x3fb244a4ed4cc408              # double 0.07135992806867375
	.quad	0x3fe99e94e3a4212a              # double 0.80060810528906257
	.quad	0x3fc504bb62b86ac0              # double 0.16420690841990471
	.quad	0x3fc1aa2556b3e4d4              # double 0.13800493939905911
	.quad	0x3fe60176183ed0a4              # double 0.68767838225769085
	.quad	0x3feac236a5f191d9              # double 0.83620769892564362
	.quad	0x3fc49c93337ed56c              # double 0.16102828993249874
	.quad	0x3fcf1fd315fb6a1c              # double 0.24315870831817754
	.quad	0x3fbfbe99addef280              # double 0.12400207991499634
	.quad	0x3fee6463f914ddc3              # double 0.94975470207912627
	.quad	0x3fd408e1501ccd68              # double 0.31304200004088623
	.quad	0x3fe5d9f60cd68162              # double 0.68285658366589197
	.quad	0x3feb4b48bce2d0c5              # double 0.85293995754047869
	.quad	0x3fe1c65b8f0ed041              # double 0.55546358052243516
	.quad	0x3fe59c357cb34ebb              # double 0.67531847339201734
	.quad	0x3fe0074ce33ec17f              # double 0.50089115508858117
	.quad	0x3feb854f605149f1              # double 0.86002320110338648
	.quad	0x3facf63beeaf4790              # double 0.056566117178262876
	.quad	0x3fa1f183bc828ec0              # double 0.035045735131715272
	.quad	0x3fe9efd6da1d47c4              # double 0.81052725410904047
	.quad	0x3fece58cd3c20484              # double 0.90302125319443904
	.quad	0x3fea4223f1c25800              # double 0.82057378023705496
	.quad	0x3fd7d6ba5202e3ba              # double 0.37248094567217616
	.quad	0x3fda9f5fd0e40cda              # double 0.41597743415350197
	.quad	0x3f8ba31fd0349640              # double 0.013494728604722117
	.quad	0x3fc902bbac813df8              # double 0.19539590762222736
	.quad	0x3fcea6ed48141304              # double 0.23946920413450112
	.quad	0x3fc68e214a2dbc1c              # double 0.17621246454243156
	.quad	0x3fb1c3e8ae96e810              # double 0.069395582794556043
	.quad	0x3fcfe0122c02b2b4              # double 0.2490256037612163
	.quad	0x3fe9fdde3862d0af              # double 0.81223975193872444
	.quad	0x3fe4f228a8d359b2              # double 0.65456040357348955
	.quad	0x3fd0ee3ea71bb5c4              # double 0.26454130477108273
	.quad	0x3fe260466faf5830              # double 0.57425233663048481
	.quad	0x3fdd0cba14e956da              # double 0.45390178720604768
	.quad	0x3fd10bf55329a9fe              # double 0.26635487672197644
	.quad	0x3fee296a9c4e0452              # double 0.9425557186915603
	.quad	0x3fe29dbb9a2bc5ee              # double 0.58175449477692864
	.quad	0x3fdf9b2ad2fc5a6a              # double 0.49384565929486846
	.quad	0x3fb58d9792164758              # double 0.084191773572709905
	.quad	0x3fbe0a052ca180c8              # double 0.11734039630528337
	.quad	0x3feae7f6e15a15e2              # double 0.84081596387903468
	.quad	0x3fe9aa05b8a5b8eb              # double 0.80200468124328717
	.quad	0x3fea0a36af94c19c              # double 0.81374677937678852
	.quad	0x3fc3115ea4f4e0b0              # double 0.14896758131522381
	.quad	0x3fdb474e003e8c9a              # double 0.42622709297047268
	.quad	0x3fe36a28bc67dd57              # double 0.60670887754433067
	.quad	0x3fe78efc0fe841da              # double 0.73620417696843821
	.quad	0x3fd156c41d2719fa              # double 0.27092078062960889
	.quad	0x3fefdf5aa3736492              # double 0.99601489948249111
	.quad	0x3fc272895076149c              # double 0.14412037304660863
	.quad	0x3fd13efc233aba42              # double 0.26946929397937336
	.quad	0x3fd999818b7aef6c              # double 0.39999426480402778
	.quad	0x3fc273ab982baa34              # double 0.14415497713282976
	.quad	0x3feb2249259a1f1f              # double 0.84793526977680134
	.quad	0x3fd5ff8ad472a226              # double 0.34372206446508569
	.quad	0x3fcd2d16d073ac18              # double 0.22793851068794946
	.quad	0x3fd768d9581c80aa              # double 0.36577447514174344
	.quad	0x3fc428d8f18ea294              # double 0.15749656481536489
	.quad	0x3fefed4f269438a7              # double 0.9977184060569656
	.quad	0x3fdbd08aefac7bee              # double 0.43460343747750485
	.quad	0x3fea369fc2ec47a7              # double 0.81916797705547573
	.quad	0x3fe24c72541e3c8a              # double 0.57183185986822704
	.quad	0x3fd79c0c4ec4ce30              # double 0.36889941875708399
	.quad	0x3fe17bdd9de9affc              # double 0.54637032358505122
	.quad	0x3fe47ea9bfaa3a99              # double 0.64046180185853807
	.quad	0x3fed157726f9aad2              # double 0.90887029278141029
	.quad	0x3fc89bf653e35fa4              # double 0.1922595891580815
	.quad	0x3feb7e6abcd57d1d              # double 0.85918175584439249
	.quad	0x3fe7767a6f9f1922              # double 0.73321267891950392
	.quad	0x3fe3d5ad90d4dd91              # double 0.61983373916057094
	.quad	0x3fe31843431f30d0              # double 0.59671176061376663
	.quad	0x3feb751db1bd8572              # double 0.85804638590722804
	.quad	0x3fbc90444acba330              # double 0.11157633615551954
	.quad	0x3fc6b1eddd135208              # double 0.1773049668760367
	.quad	0x3fe0710377c3de40              # double 0.51379559890387583
	.quad	0x3fe981bba0e11184              # double 0.79708653852189614
	.quad	0x3fe6683731e590e6              # double 0.70022163148362604
	.quad	0x3fe7a6fb2c42a533              # double 0.739133440443004
	.quad	0x3fd68f51933f7d4e              # double 0.35249747638404905
	.quad	0x3fe8b6862893867d              # double 0.77228076863339334
	.quad	0x3fd2980d45182120              # double 0.29053050754056819
	.quad	0x3fd92c506b50b568              # double 0.39332972030645985
	.quad	0x3fd3249a1d8e74fa              # double 0.29910900961279163
	.quad	0x3fe6106f99dc60f9              # double 0.68950634051273518
	.quad	0x3fe145df9c48c13c              # double 0.53977947735078358
	.quad	0x3fe121bce37fd48a              # double 0.5353683894487784
	.quad	0x3fea2d629785bf90              # double 0.81804017633656834
	.quad	0x3fea3445c05cdb71              # double 0.81888091631740967
	.quad	0x3fe46294c8440467              # double 0.63703383554833415
	.quad	0x3fe52b3874992e87              # double 0.66152594349974059
	.quad	0x3feda2446cc7a0dc              # double 0.92605801816992139
	.quad	0x3fdf261e2666dc0e              # double 0.48670152425933189
	.quad	0x3fe2fe802ea4c165              # double 0.59356698141168052
	.quad	0x3fc380592c266ba8              # double 0.1523543801857532
	.quad	0x3fd17d1bc7083e24              # double 0.27326101719606499
	.quad	0x3fee12fe59cf93bc              # double 0.93981854954892396
	.quad	0x3fea054252186d48              # double 0.81314197572957259
	.quad	0x3fea76caa177b4b7              # double 0.82700091873780124
	.quad	0x3fe17b4cbc24a863              # double 0.54630123850553181
	.quad	0x3febaa5754e3af51              # double 0.86454359607658138
	.quad	0x3fdb02f0c5250dd2              # double 0.42205447437683319
	.quad	0x3feda3a794e97d66              # double 0.92622737011326417
	.quad	0x3febce36a840848a              # double 0.86892254697535631
	.quad	0x3fe0d8673bbbf246              # double 0.52641641299084863
	.quad	0x3feb33d8a57a40ab              # double 0.8500788909896263
	.quad	0x3fe4e486bc158f2a              # double 0.65289627776335135
	.quad	0x3fe3204125269f05              # double 0.59768731361415972
	.quad	0x3fe8d1f4ce25ed77              # double 0.77562942755996189
	.quad	0x3fd38c3b280125ba              # double 0.30543402582824408
	.quad	0x3fd30f31b907a3d6              # double 0.29780238217659638
	.quad	0x3fcf936acda0aa88              # double 0.24668631592188128
	.quad	0x3fd82e829fc258f6              # double 0.37783876039010467
	.quad	0x3fbf0dac84d42860              # double 0.12130239718331515
	.quad	0x3fcfe52089b67640              # double 0.24917990421538327
	.quad	0x3fb845fec31b24c0              # double 0.094818041451747881
	.quad	0x3fee98c398f22ace              # double 0.95614795562991062
	.quad	0x3fe24420c2c86ea1              # double 0.57081640285055724
	.quad	0x3fcd263ec3c119c4              # double 0.2277296500999012
	.quad	0x3fd582d797c3af7e              # double 0.33611097164861536
	.quad	0x3fee2bbc0ad30209              # double 0.94283868898497858
	.quad	0x3fe3e0dac2033d7d              # double 0.62119806187722271
	.quad	0x3fed9de534a25705              # double 0.92552433281045465
	.quad	0x3fc409e61c9a6d50              # double 0.1565520896591388
	.quad	0x3fea0685d3a6d3d5              # double 0.8132962354489971
	.quad	0x3fc9b060d9070f34              # double 0.20069513890313717
	.quad	0x3fe2d94c02187a15              # double 0.5890255013399065
	.quad	0x3fd783887550c2ae              # double 0.36740313965405391
	.quad	0x3f80be0364487640              # double 0.0081749215105971773
	.quad	0x3fe6fcda417202ed              # double 0.7183657911519653
	.quad	0x3fe760ac18e3ad42              # double 0.73055081235126118
	.quad	0x3f8ae4b7ecbb14c0              # double 0.013131558334303128
	.quad	0x3fe1e1077206b241              # double 0.55871937056287646
	.quad	0x3fb9d66e5a6fa128              # double 0.10092820842658468
	.quad	0x3feb329a80dfbbde              # double 0.84992718859382044
	.quad	0x3fcca3c80450e778              # double 0.22374820910209414
	.quad	0x3fd886cd2eabdd64              # double 0.38322763021229478
	.quad	0x3fe9bbb16af845c5              # double 0.80416174786130823
	.quad	0x3fe689feb71ca5b0              # double 0.70434509052318184
	.quad	0x3fecfd5fb0dd9e16              # double 0.90592941803055527
	.quad	0x3fbb1e985716d4e8              # double 0.10593559385491214
	.quad	0x3fd92141f63bfada              # double 0.39265488668745052
	.quad	0x3fabc6b490f798b0              # double 0.054250376411617451
	.quad	0x3fd041744f1d7490              # double 0.25399501539306701
	.quad	0x3fe23586d2950816              # double 0.56903401498152806
	.quad	0x3fd73dfbfb1a9f7a              # double 0.36315822145342447
	.quad	0x3fad4272378054f0              # double 0.057147568965015938
	.quad	0x3fc0ba15e6199bf8              # double 0.13067888007500961
	.quad	0x3feb546e2a18f081              # double 0.85405643674995713
	.quad	0x3fd8ca8d34c9e2de              # double 0.38736276774538492
	.quad	0x3fcaff13b4738f08              # double 0.21090933142760826
	.quad	0x3fe04c453177ec5a              # double 0.5093103376560848
	.quad	0x3fe0aae88bf08c4f              # double 0.52086284000359651
	.quad	0x3fdbabeec0e10b9c              # double 0.43236893497322071
	.quad	0x3fe208565995b80d              # double 0.56351773736037247
	.quad	0x3fe7f34bfd474c41              # double 0.74844932049234825
	.quad	0x3fe7d53abc1d7c53              # double 0.74477898350950011
	.quad	0x3fe08879da19654f              # double 0.51665966603756341
	.quad	0x3fbd41ad73f44dd8              # double 0.11428340989032593
	.quad	0x3fe7cf0ca14a7a3d              # double 0.74402457716116255
	.quad	0x3fe097fbe4659674              # double 0.51855272873645086
	.quad	0x3fe5dbdddc237487              # double 0.68308918948936614
	.quad	0x3fefa6fd2aafd0d4              # double 0.98913439118634949
	.quad	0x3fdd56fa5f4d7746              # double 0.45843371683973932
	.quad	0x3fe1de5b32d76cb2              # double 0.55839309625607414
	.quad	0x3fe7417162cab258              # double 0.72673863692541385
	.quad	0x3fd18874b09c03fe              # double 0.27395360228553034
	.quad	0x3fe5ca7e3905c57f              # double 0.68096839081970006
	.quad	0x3fe60e331334dadf              # double 0.68923333884489668
	.quad	0x3feb61f77bf212c7              # double 0.85570882995724495
	.quad	0x3fe5f1f162d2c891              # double 0.68578404714050312
	.quad	0x3fc5c41e5d495f08              # double 0.17004756503114771
	.quad	0x3fe3f20f9c369a91              # double 0.62329845915231108
	.quad	0x3fec1a9f6b171aed              # double 0.87824984470429757
	.quad	0x3fe1086584eb9ebf              # double 0.53227497063650009
	.quad	0x3fba8c54ff66ab18              # double 0.10370379672410157
	.quad	0x3fe5128b632c742a              # double 0.65851373071530372
	.quad	0x3fd86353cbece718              # double 0.38106245913114511
	.quad	0x3fed669f30d81a70              # double 0.9187770799624797
	.quad	0x3feaf74203520619              # double 0.84268284462467868
	.quad	0x3fc82f75c8145a40              # double 0.18894836682803096
	.quad	0x3fd520be8c707152              # double 0.33012355532425375
	.quad	0x3fe6b84137a83f5d              # double 0.70999203558492818
	.quad	0x3fdfd4fc62baa5c0              # double 0.49737462655556541
	.quad	0x3f9275ee3b48a480              # double 0.018027994507211265
	.quad	0x3fe18bbb1f37cbb2              # double 0.54830700013405065
	.quad	0x3fd3308eaeaf3aa6              # double 0.29983870562584014
	.quad	0x3fb208b1751e7ef0              # double 0.070445147603546365
	.quad	0x3fcd49a98fab6a50              # double 0.22881049647442575
	.quad	0x3fdbdb2c965135f4              # double 0.43525232963005966
	.quad	0x3fce3ebe8b329ea0              # double 0.23628980442776015
	.quad	0x3fed29f4976163ac              # double 0.91137151304711983
	.quad	0x3fc310af43ed8d20              # double 0.14894667450708088
	.quad	0x3fca2f1f30c95040              # double 0.20456304437777995
	.quad	0x3feb791f9a2bc105              # double 0.8585355769301094
	.quad	0x3fe19dc1825e1a6a              # double 0.55050731146259335
	.quad	0x3fd3ab944ad539e8              # double 0.30734736736203994
	.quad	0x3fe1537d6ce64d82              # double 0.54144164342362466
	.quad	0x3fae0b0c9b34ef00              # double 0.058678049036158697
	.quad	0x3fe165a93af4ff66              # double 0.5436597968582475
	.quad	0x3febe09c633ab731              # double 0.87116832142576162
	.quad	0x3fe3e93416c1cb6d              # double 0.62221722073296137
	.quad	0x3fe624b90dc821ca              # double 0.69198277179480638
	.quad	0x3fb042c010e8c398              # double 0.063518528106909833
	.quad	0x3fdd4929e8b0e0c2              # double 0.45759055827830875
	.quad	0x3fe2c414f7799b68              # double 0.58643577895132371
	.quad	0x3fdeebbc12317f3c              # double 0.48313810135549651
	.quad	0x3fd3980e9bfcf580              # double 0.30615582688536591
	.quad	0x3fea8d358037c6b3              # double 0.82973742525628891
	.quad	0x3fea252c6bc4d7bf              # double 0.81703778313271147
	.quad	0x3fdb7296455c7cf4              # double 0.42886883519709262
	.quad	0x3fe196d97a798a8e              # double 0.54966424866536712
	.quad	0x3fd17013a4df8ca6              # double 0.27246562100317318
	.quad	0x3fe7ececf20c54ed              # double 0.74767157816918728
	.quad	0x3fee615619a2b563              # double 0.94938187605809465
	.quad	0x3fd0d4e02b548688              # double 0.26299289924109148
	.quad	0x3fea6535baff7307              # double 0.82485472224252099
	.quad	0x3fe383e36a1c85fd              # double 0.60984965062033292
	.quad	0x3fd6816c6072b650              # double 0.35164937418708053
	.quad	0x3fc5857d9f7f3da0              # double 0.16813631332341306
	.quad	0x3fe6c0d333658049              # double 0.71103820837380127
	.quad	0x3fed893d7bf2f693              # double 0.92300295075229355
	.quad	0x3fe924b48c5f52fd              # double 0.7857306234023721
	.quad	0x3fe72975bec001c1              # double 0.72381102805962183
	.quad	0x3fe37da2639d1b0a              # double 0.60908622222709252
	.quad	0x3fec72a9b1e52e24              # double 0.88899693246043343
	.quad	0x3fe625e87c7395a6              # double 0.69212745959219002
	.quad	0x3fc49c86385502a8              # double 0.16102674246396487
	.quad	0x3fd9b221176bea9c              # double 0.4014971474386273
	.quad	0x3fcad0341ea2e2c8              # double 0.20947886939918292
	.quad	0x3fe986dfa06553b7              # double 0.79771405532175421
	.quad	0x3fe5bfdeee38c576              # double 0.67967173125923241
	.quad	0x3fc57dc95039aa7c              # double 0.16790119569062145
	.quad	0x3fdabd530f959284              # double 0.417805447787295
	.quad	0x3fedec5220dd0530              # double 0.9350977556097515
	.quad	0x3fbdace0e0c8a010              # double 0.11591916549571146
	.quad	0x3fe2594a89624806              # double 0.57339979965968335
	.quad	0x3fca9345905c6948              # double 0.20761937664867447
	.quad	0x3fe144a234dd33a0              # double 0.53962812733663057
	.quad	0x3fe8e486b8a64375              # double 0.77789627136563289
	.quad	0x3fc80e9a7f9835d0              # double 0.18794566374019306
	.quad	0x3fe421f6d04cf155              # double 0.62914601024344086
	.quad	0x3fe5ff5a97dfb9b0              # double 0.68742112791897192
	.quad	0x3fc460a16ac82808              # double 0.15919892991979645
	.quad	0x3fc4844ad9196564              # double 0.16028724289462126
	.quad	0x3fda62cdcf47852a              # double 0.41228051416517764
	.quad	0x3fcc7ff88f1588a8              # double 0.22265536295441746
	.quad	0x3fd383803e6b00d2              # double 0.30490118117815002
	.quad	0x3fd8e86c52608686              # double 0.38918598217615175
	.quad	0x3fe91de00e319dd6              # double 0.78489687702397748
	.quad	0x3fe27f63f241d881              # double 0.57805058780537888
	.quad	0x3fee1a7eda329bd7              # double 0.94073431603180324
	.quad	0x3fb0763549153f20              # double 0.064303713171508736
	.quad	0x3fe84816667e5270              # double 0.75879974382639936
	.quad	0x3fe39859302b7930              # double 0.61234721573035777
	.quad	0x3fc3a41d6deaf7a0              # double 0.15344589106638029
	.quad	0x3fc46542988476b4              # double 0.15934021422520106
	.quad	0x3fc80b9bab9b0144              # double 0.18785425070928785
	.quad	0x3fdfd28bf5781886              # double 0.49722575160593185
	.quad	0x3fd29112aa041ce0              # double 0.29010454753047377
	.quad	0x3fe1743d11770993              # double 0.545439275847729
	.quad	0x3f87624d74687740              # double 0.01141796599864231
	.quad	0x3fd1e257d045aeee              # double 0.27943988169748379
	.quad	0x3fe422f93e64ae92              # double 0.62926923929394918
	.quad	0x3fe6be194b482dca              # double 0.71070542052751162
	.quad	0x3f858402fc67c340              # double 0.010505698516654172
	.quad	0x3fdbc59a1f64e45c              # double 0.43393567148047452
	.quad	0x3fd77035895997ee              # double 0.36622370160182427
	.quad	0x3fd2f09decdb1020              # double 0.29593608980599306
	.quad	0x3fee2ec58106a5b3              # double 0.94320941162475547
	.quad	0x3fc3e05c483e364c              # double 0.1552844383954145
	.quad	0x3fe11cc62a45ccf3              # double 0.53476246124628657
	.quad	0x3fe856aa13704074              # double 0.76057914539889148
	.quad	0x3fbaa86c6c2a5778              # double 0.10413243904835479
	.quad	0x3fef65a355ffbd39              # double 0.98115698620487201
	.quad	0x3fb0dde1daeb6420              # double 0.06588565439905425
	.quad	0x3fa0be57aeeed000              # double 0.032702198127850579
	.quad	0x3fd82f2b867068d0              # double 0.37787902954881947
	.quad	0x3feda999c469e97a              # double 0.92695320474676568
	.quad	0x3fd177ece7612b30              # double 0.27294466586743038
	.quad	0x3fec60b81d96b9a3              # double 0.88680654315048846
	.quad	0x3feb1d9e7e75eeed              # double 0.84736561488486262
	.quad	0x3fd576470d5ab27e              # double 0.3353440885937643
	.quad	0x3fe3a24e8279d358              # double 0.61356282695360687
	.quad	0x3fe147e8b84808eb              # double 0.540027961659033
	.quad	0x3fe8dd88a837fd3a              # double 0.7770427022477755
	.quad	0x3fcc6ff40af45790              # double 0.22216654333959385
	.quad	0x3fe991a14be51b03              # double 0.79902710746031891
	.quad	0x3fea1976d40511d3              # double 0.81560841951482599
	.quad	0x3fe389bc78df22d0              # double 0.61056350333918807
	.quad	0x3fa84238fee75ef0              # double 0.047380238643823236
	.quad	0x3fd3836272c4a582              # double 0.30489407737567131
	.quad	0x3fe4af3610b996a9              # double 0.64638808504669953
	.quad	0x3fe0cdb849850d9d              # double 0.52511228904079454
	.quad	0x3fb0daa12c25d808              # double 0.06583602264240096
	.quad	0x3fe20403ddf7f08c              # double 0.56299012521005087
	.quad	0x3fcd529a847ca398              # double 0.22908336133084783
	.quad	0x3fe4ccb86045cc72              # double 0.64999026110889546
	.quad	0x3fecc4b588509081              # double 0.89901234268155872
	.quad	0x3fd8f666e7e19072              # double 0.39003918308868102
	.quad	0x3fc45ba0066a83c0              # double 0.15904617608341987
	.quad	0x3fe87dbce0b2e1d2              # double 0.76534885298229427
	.quad	0x3fd6ecceaa0c7f8a              # double 0.35820356947260079
	.quad	0x3fb6d58d74658e30              # double 0.08919605342594461
	.quad	0x3fe6c4dd6b319ae2              # double 0.71153136192591782
	.quad	0x3fc9f976ca5a996c              # double 0.2029255378776712
	.quad	0x3fbc3b2d3a2642d8              # double 0.110277964302678
	.quad	0x3fbdfd42910782a0              # double 0.11714569130664154
	.quad	0x3fd19d66a2996292              # double 0.27523198965858697
	.quad	0x3f8d7f35cf477d00              # double 0.014402790439759006
	.quad	0x3f9797bab3678360              # double 0.023039738845798907
	.quad	0x3fdecc7a2946a0b2              # double 0.48123029738281808
	.quad	0x3fd742ad7dc33132              # double 0.36344468385211137
	.quad	0x3fdcd00ee7344498              # double 0.45019886568577183
	.quad	0x3fe9d4705e12aafa              # double 0.80718248723618946
	.quad	0x3fd9866072638fc6              # double 0.3988267056540703
	.quad	0x3fe4fc0d565f1377              # double 0.65576807851230867
	.quad	0x3fe43d11ba4c9351              # double 0.63245474230334697
	.quad	0x3fea26c717da841d              # double 0.8172336069002345
	.quad	0x3fdfc76a5dfe3dd0              # double 0.49654635600105923
	.quad	0x3feab2490f65d32c              # double 0.83426335341809965
	.quad	0x3fcafe29d15dc00c              # double 0.21088144991836122
	.quad	0x3fefe54772442869              # double 0.99673816983819307
	.quad	0x3fdec6d0dcf726a8              # double 0.48088475779204964
	.quad	0x3fc7809262829e10              # double 0.18361120042867229
	.quad	0x3fbb1262c4cc4ad0              # double 0.10574929527892185
	.quad	0x3fd5a3fc179b6718              # double 0.33813383393645458
	.quad	0x3fe8a1b983c16d0b              # double 0.76974178060064113
	.quad	0x3fdff67101235fda              # double 0.49941659079695244
	.quad	0x3fe34492b34e7d12              # double 0.60212073345965877
	.quad	0x3fc8b8d0f33dee6c              # double 0.19314014317557182
	.quad	0x3fd671650b50f8b2              # double 0.35067106347186006
	.quad	0x3fe5f15f14b5542b              # double 0.68571428341477281
	.quad	0x3fc8f29c24275df0              # double 0.19490386739083432
	.quad	0x3fec10b4c8576389              # double 0.87703932885334368
	.quad	0x3fef104ac5924f4b              # double 0.97073877895534488
	.quad	0x3fe7b5fbaa0c89bc              # double 0.74096472943011049
	.quad	0x3fcce562a04c15e0              # double 0.22575028254520557
	.quad	0x3faa635bf9acfa00              # double 0.051539301136006799
	.quad	0x3fe1b3a337b072c8              # double 0.55317841412360114
	.quad	0x3fef9aeddc77e977              # double 0.98766224918590139
	.quad	0x3fdd8544cfeaa0d2              # double 0.46125908188197429
	.quad	0x3fd4964787481e06              # double 0.32167232714752492
	.quad	0x3fe9dd8f8a150d4c              # double 0.80829598397432667
	.quad	0x3fc9abcf8a95444c              # double 0.20055574671508436
	.quad	0x3fe89c32ad7e6157              # double 0.7690671337650582
	.quad	0x3fda59c4e4a0fc20              # double 0.41172907187496044
	.quad	0x3fc0c503a8e74344              # double 0.13101239917025442
	.quad	0x3fe679be32750e55              # double 0.70236120085651044
	.quad	0x3fd9c8bc54833674              # double 0.40287693265131641
	.quad	0x3fee56157b7d9e56              # double 0.9480082904746705
	.quad	0x3fd5db6ff9587e2e              # double 0.34151839590228661
	.quad	0x3feb22c81dc5db33              # double 0.84799581351294362
	.quad	0x3fef1ba75c5758cc              # double 0.97212570224180572
	.quad	0x3fec582cc0d858aa              # double 0.88576352753695642
	.quad	0x3f9586e80b54a020              # double 0.021022439662516601
	.quad	0x3fc2945a9848c59c              # double 0.14515240131144658
	.quad	0x3fd46d2a8d9314d0              # double 0.31916297746313393
	.quad	0x3fea484e4d8221eb              # double 0.82132640016885483
	.quad	0x3fe0d6766240131d              # double 0.52617949666509711
	.quad	0x3fe7df2556508aeb              # double 0.74598948343586124
	.quad	0x3fe71e4349acee39              # double 0.72244419469593091
	.quad	0x3fcabecf96dd4454              # double 0.20894808641836227
	.quad	0x3feed44ae811a9f7              # double 0.96341462446190362
	.quad	0x3fb83b30b37796e0              # double 0.094653171363087817
	.quad	0x3fcbbd65d73bb9ec              # double 0.21671746262968783
	.quad	0x3fec698111726dde              # double 0.88787892730345752
	.quad	0x3fe77e5a48e5fa60              # double 0.7341739105029994
	.quad	0x3fc4b8e67944dab8              # double 0.16189270898185781
	.quad	0x3fed09e7a7808f0c              # double 0.90745909419317305
	.quad	0x3fcb5a872afc0fb4              # double 0.21370019530161033
	.quad	0x3fdee4c83f37e6e6              # double 0.48271375821751261
	.quad	0x3fc5dd36b3ef80e4              # double 0.17081340585628546
	.quad	0x3fb7b9d24c755a38              # double 0.092679160753825651
	.quad	0x3fdf7068712703fa              # double 0.49123583841361518
	.quad	0x3fcf6d34afe12e28              # double 0.2455201967990075
	.quad	0x3fa4809a088ab390              # double 0.040043653052044381
	.quad	0x3feeff788e80012e              # double 0.96868541557345167
	.quad	0x3fcdc8a02263c944              # double 0.23268510512532192
	.quad	0x3fd14b11868d431c              # double 0.27020681514572842
	.quad	0x3fee74040fbb6d92              # double 0.9516620929020283
	.quad	0x3fd127d691969d0c              # double 0.26805652825937965
	.quad	0x3fde1ff906f2de2a              # double 0.47070146254142975
	.quad	0x3fe1a744102fc54f              # double 0.55166819726415806
	.quad	0x3fbc5e9dd7d64828              # double 0.11081873435458134
	.quad	0x3fd5b61f8daa3b64              # double 0.33924092134923556
	.quad	0x3fe28d2d91f1ec74              # double 0.57973364357839197
	.quad	0x3f69ef20f73c2300              # double 0.0031657832968260413
	.quad	0x3fe602be52220a22              # double 0.68783489266963138
	.quad	0x3feea3567ac2cc0d              # double 0.95743869759314892
	.quad	0x3fe828e75df56783              # double 0.7549931368950954
	.quad	0x3fd943f1459ac128              # double 0.39477187917056478
	.quad	0x3fe28ed05acc6021              # double 0.57993333562899718
	.quad	0x3fc34833ed27f40c              # double 0.15064095573316683
	.quad	0x3fe5ac28b8df85c5              # double 0.67726551158937609
	.quad	0x3f7a655a79568e80              # double 0.0064443143977858108
	.quad	0x3fdaef88bc2d1102              # double 0.42087000252310258
	.quad	0x3fe9d0aecace13f0              # double 0.80672397241926141
	.quad	0x3fd178377c8b706e              # double 0.27296244776312661
	.quad	0x3feef670f17a6707              # double 0.96758315242479475
	.quad	0x3fcdc9d6ab097820              # double 0.23272212363639344
	.quad	0x3fe037a73033fb70              # double 0.50679358877810721
	.quad	0x3fefe80ec94b5010              # double 0.99707736315986217
	.quad	0x3fbb32fea3ca8c48              # double 0.10624686716850917
	.quad	0x3fe3a4b0d42e0eb9              # double 0.61385384980572788
	.quad	0x3fe13be0833a9a48              # double 0.53855920439384253
	.quad	0x3febdf3bca9e03a0              # double 0.87100019048385846
	.quad	0x3feae1f1277772e2              # double 0.8400808115798919
	.quad	0x3fdaf6718f1ee88c              # double 0.4212917230285107
	.quad	0x3fc5459fff0cf6e0              # double 0.16618728593487386
	.quad	0x3fe402f38de6091c              # double 0.62536027636113856
	.quad	0x3fd1064a4b285cb8              # double 0.26600892390838338
	.quad	0x3fe8fdfdb4f2d6c6              # double 0.78100476590653822
	.quad	0x3feff00df66b4d1e              # double 0.99805353287448262
	.quad	0x3fe491a7ef782b92              # double 0.64278027316446384
	.quad	0x3fcfe2f36b8d3674              # double 0.249113490596233
	.quad	0x3fea4bae96d881f3              # double 0.82173852407509995
	.quad	0x3fda1fc92b053fcc              # double 0.40819005204411662
	.quad	0x3fdc4249bcf52564              # double 0.4415459008492546
	.quad	0x3fcac30febc726a8              # double 0.20907782566637434
	.quad	0x3fed4ebde4fc16b5              # double 0.91586203311518111
	.quad	0x3fd5b1366e71dc54              # double 0.33894120011922735
	.quad	0x3fc7fc5817818510              # double 0.18738843105078518
	.quad	0x3fecbe223af9f377              # double 0.89820968169043069
	.quad	0x3fe3a3531ab40e33              # double 0.61368708816048068
	.quad	0x3fe00509a468526a              # double 0.50061494932977024
	.quad	0x3fdb9c21ed79ef28              # double 0.43140457335515459
	.quad	0x3fc9fc8985278cd0              # double 0.20301932336506079
	.quad	0x3f770e489bdddf00              # double 0.0056288563044899487
	.quad	0x3fca1fe6b2800e40              # double 0.20409854617911272
	.quad	0x3fd9a95e65125ae6              # double 0.40096244688304095
	.quad	0x3fed33944654a4da              # double 0.91254628883794031
	.quad	0x3fe3b54377b60541              # double 0.61587689763124598
	.quad	0x3fec57165b8043a7              # double 0.88563077803893442
	.quad	0x3fee8a0b202e1d1e              # double 0.95435100827390662
	.quad	0x3fdece733030396c              # double 0.48135070520301926
	.quad	0x3fe54ebccdd95e28              # double 0.66586151318455666
	.quad	0x3fe8af64a5b51e3e              # double 0.7714102970575778
	.quad	0x3fcf51d1c749c730              # double 0.24468443137043883
	.quad	0x3fd18b007b0cf7ac              # double 0.27410900131860205
	.quad	0x3fc30b5eb2c68d5c              # double 0.14878448228146623
	.quad	0x3feb6d05fc337eae              # double 0.85705851800954291
	.quad	0x3fe5dc2e6e37ebce              # double 0.6831276085571234
	.quad	0x3fb371924fdcd1e8              # double 0.075951714036655127
	.quad	0x3f93991eb0bda9c0              # double 0.019138793504149154
	.quad	0x3fc5c3ea429bb418              # double 0.17004135372499785
	.quad	0x3fdc971f21956738              # double 0.44672373084687278
	.quad	0x3fd980bd6d24cfc0              # double 0.39848266275953037
	.quad	0x3fc63244c860a990              # double 0.17340907844602471
	.quad	0x3fe14f51f2d44ce9              # double 0.5409326308021295
	.quad	0x3fd3a562e024d4aa              # double 0.30696937455224804
	.quad	0x3fd0a626c16579de              # double 0.26014107595793046
	.quad	0x3fe203f89f699928              # double 0.56298476348164161
	.quad	0x3fb75c3c5ce7efb0              # double 0.091251156503800556
	.quad	0x3fe103d21c55950f              # double 0.53171639951747973
	.quad	0x3fe3caad68eca785              # double 0.61849089139035185
	.quad	0x3f920c1244413a60              # double 0.017624173561041068
	.quad	0x3fe96d7b4eb0d436              # double 0.79461446160588056
	.quad	0x3fc46599c00e0248              # double 0.15935060384437549
	.quad	0x3fecb3408f4830db              # double 0.89688137039913884
	.quad	0x3fe27cc41d6f10b8              # double 0.57773023365782361
	.quad	0x3fed582e542cc8ea              # double 0.91701427879732234
	.quad	0x3feea58bc84676b1              # double 0.95770825496921053
	.quad	0x3fc774f4a6550ad4              # double 0.18325670358361512
	.quad	0x3fc96486c463c978              # double 0.19838032330842359
	.quad	0x3fea953682908743              # double 0.83071446896449463
	.quad	0x3fc766158c546f90              # double 0.1828028617099986
	.quad	0x3fed7dd4e94de5ce              # double 0.92161031310313901
	.quad	0x3fd04b342c4aee5c              # double 0.25459007573565429
	.quad	0x3fe561624829925d              # double 0.66813768476692881
	.quad	0x3fe80bbe829cd11a              # double 0.75143361578242041
	.quad	0x3fbc7475c1f753e8              # double 0.11115203843594623
	.quad	0x3fea4a394af4c6aa              # double 0.82156052245973865
	.quad	0x3fd2667a5ebed6de              # double 0.28750476124274182
	.quad	0x3fe28603bb2bef42              # double 0.57885920102078381
	.quad	0x3fecbfc799f6ebf0              # double 0.89841060706328157
	.quad	0x3febf83233a290cd              # double 0.87404737553563339
	.quad	0x3fd048c73c329d30              # double 0.2544420326107284
	.quad	0x3fd56e0975570086              # double 0.33484112223596474
	.quad	0x3fb9b29ade0dbee0              # double 0.10038154526932486
	.quad	0x3fea287deedf09ca              # double 0.81744286207713768
	.quad	0x3feb4cdae1a0e842              # double 0.85313171451640124
	.quad	0x3fd7930759fe3032              # double 0.36834892071124437
	.quad	0x3fb7bbacc9ae4b08              # double 0.092707442511066884
	.quad	0x3f7bac24cfba7400              # double 0.006755965990717705
	.quad	0x3fd5be6c5426d1c0              # double 0.33974750726636316
	.quad	0x3fd45dec7bc10028              # double 0.31823265157072678
	.quad	0x3fe865a8fe476baf              # double 0.76240968383659957
	.quad	0x3fe7b6c0b9d93605              # double 0.74105869577914574
	.quad	0x3feafef5f5fd8643              # double 0.84362314267145455
	.quad	0x3fc8139b39045668              # double 0.18809833797483866
	.quad	0x3feabcc46f96d654              # double 0.83554288668410459
	.quad	0x3f9d967f8947a240              # double 0.028894417528052552
	.quad	0x3fda150e216f81a4              # double 0.40753510728066034
	.quad	0x3fe89b22ba1d39f4              # double 0.76893745756552656
	.quad	0x3fe01e8ed23e52e6              # double 0.50373021186041167
	.quad	0x3fe4a56f310f250c              # double 0.64519462186686516
	.quad	0x3fc48e487ab1f148              # double 0.16059213629695024
	.quad	0x3fb263428a82d190              # double 0.071827086273350327
	.quad	0x3fe29d985ebe1e86              # double 0.58173769478249038
	.quad	0x3fe637615075c9af              # double 0.69426027026047687
	.quad	0x3fd9ba63530172d6              # double 0.40200121980687464
	.quad	0x3fd9236e64499bfe              # double 0.39278754991249787
	.quad	0x3fdfea468b0237c0              # double 0.49867404532494319
	.quad	0x3fb02fdd160e4c20              # double 0.063230340847710398
	.quad	0x3fe24a7cec1db8fe              # double 0.57159277073313297
	.quad	0x3fdf61a3aed30012              # double 0.49033443520238607
	.quad	0x3fdf1193006c7a6e              # double 0.48544764558201947
	.quad	0x3feb3968d1539c80              # double 0.85075798877814179
	.quad	0x3fd8f334ff1ddbba              # double 0.3898441783307437
	.quad	0x3fe9ef7027c872a6              # double 0.8104782845508296
	.quad	0x3fd50134f13bf5da              # double 0.32819865758923827
	.quad	0x3fe5d68e380ca811              # double 0.68244086215168143
	.quad	0x3feb19634317ce61              # double 0.84684908966159977
	.quad	0x3fe21232a8d3fe9c              # double 0.56472142194975872
	.quad	0x3fdc37a722bc29e4              # double 0.44089678184596282
	.quad	0x3fe4bda941511e87              # double 0.64815199620439123
	.quad	0x3fe9362db0a9d3c0              # double 0.78786358360832054
	.quad	0x3fd3faec79aa3cbc              # double 0.31219016915651898
	.quad	0x3fde8e5a1bc96454              # double 0.47743847573798814
	.quad	0x3fc8da534f10c9e0              # double 0.19416276322006265
	.quad	0x3f56c8dc9dc72a00              # double 0.0013906626182796922
	.quad	0x3fee56fa5da96d8a              # double 0.94811743062329978
	.quad	0x3fe5e1e343f303e7              # double 0.68382418891280572
	.quad	0x3fb6c954bdb7e848              # double 0.089009567563978043
	.quad	0x3fb0be62888a4b60              # double 0.06540504296780858
	.quad	0x3fcc0efa83e5a5e0              # double 0.21920710983549352
	.quad	0x3fe9d28b4e5281ba              # double 0.80695119187662745
	.quad	0x3fa5a7575d9717b0              # double 0.042292337584100337
	.quad	0x3fce32621d23fe78              # double 0.23591257498627605
	.quad	0x3f8ee384dc6f2c00              # double 0.015082395531768711
	.quad	0x3fedda4ab960a61e              # double 0.9328969593672729
	.quad	0x3fe5e8b26191909d              # double 0.68465537124986364
	.quad	0x3fd0fe4541aa0f7e              # double 0.26551944172410191
	.quad	0x3fef75b83950fa15              # double 0.98312007135956724
	.quad	0x3fdcecd0ee399b6e              # double 0.45195410980379946
	.quad	0x3fed610a2999bb58              # double 0.91809566617107929
	.quad	0x3f6d5617b9ad7d00              # double 0.0035810912499268932
	.quad	0x3fd1637d5b53d040              # double 0.27169736784640364
	.quad	0x3fd3960bab829490              # double 0.30603305577307882
	.quad	0x3fd3ef1d0b15f486              # double 0.31146932680696471
	.quad	0x3fc2736944b0b41c              # double 0.14414707044616726
	.quad	0x3fe01b228c98ea9d              # double 0.50331237278381347
	.quad	0x3fc82b38e1ff85bc              # double 0.18881903681817203
	.quad	0x3fe9e46a20222c52              # double 0.80913263584205652
	.quad	0x3fee5f6603be6508              # double 0.94914532405087559
	.quad	0x3fa80b79cf2e1090              # double 0.046962553539772078
	.quad	0x3fc4d667b161e90c              # double 0.16279312287571945
	.quad	0x3fb36e0212d02bb0              # double 0.075897340386446243
	.quad	0x3feda62507f3a35d              # double 0.92653132966107032
	.quad	0x3fb9b99b945c27d8              # double 0.10048839923925301
	.quad	0x3fe6062ceb31532b              # double 0.68825384079045671
	.quad	0x3fdef3261b8ff83e              # double 0.48359062854422408
	.quad	0x3fd38c67f492adde              # double 0.30544470676497137
	.quad	0x3fe5cfd581afd529              # double 0.68162036256277247
	.quad	0x3fe351c9781ccda9              # double 0.60373376330828876
	.quad	0x3fb8e9e7675d1148              # double 0.097319090590706314
	.quad	0x3feeff97402e840f              # double 0.9687000516461256
	.quad	0x3feb1063438d06da              # double 0.84575045770199186
	.quad	0x3fee280557e37b89              # double 0.94238536039107246
	.quad	0x3fe77ebfaba99e3f              # double 0.73422225501867178
	.quad	0x3fcb25af31353434              # double 0.21208753493047683
	.quad	0x3fd5e82786b87486              # double 0.34229458004285396
	.quad	0x3fe7d388e4cdefe6              # double 0.74457211197249928
	.quad	0x3feb75275df99d21              # double 0.85805099825384812
	.quad	0x3fb03e189fcc4a88              # double 0.063447512639223658
	.quad	0x3fd3ffd3320b1d08              # double 0.31248931777049949
	.quad	0x3feac8a940584905              # double 0.83699476783138549
	.quad	0x3fe08acc667c2dcd              # double 0.51694316879859914
	.quad	0x3fed145d2b75e7fc              # double 0.90873583305733474
	.quad	0x3fa824b234650350              # double 0.047154969116042111
	.quad	0x3fe641829addc726              # double 0.69549684760406616
	.quad	0x3fdb48a5c00792ec              # double 0.42630904915703982
	.quad	0x3fe25c9fedd8164f              # double 0.57380672887729556
	.quad	0x3fe6b3914c5b5bc4              # double 0.70941986955119107
	.quad	0x3febad7a51ecca4a              # double 0.86492649079293327
	.quad	0x3fe2d8da463cddb4              # double 0.58897126882850737
	.quad	0x3fc2abd7aabbf5fc              # double 0.1458692153609461
	.quad	0x3fed4ffc34a799ba              # double 0.91601381572836904
	.quad	0x3fc8671d7d16ba28              # double 0.19064682586527337
	.quad	0x3fe188f94723125b              # double 0.54797042745537838
	.quad	0x3fe798fbd660c8ca              # double 0.73742477293696962
	.quad	0x3fe61d7743ac8e08              # double 0.69109690873705265
	.quad	0x3fdebc3c9606c5cc              # double 0.48023905421277102
	.quad	0x3f8b7a9aa9c4a940              # double 0.013417442613520181
	.quad	0x3fe2d0f09bab3d39              # double 0.58800535587389569
	.quad	0x3fe60c4ca1cec9a2              # double 0.68900138476447048
	.quad	0x3fd2526e8d9fa688              # double 0.28628124075348937
	.quad	0x3fe56977406b2142              # double 0.66912424642308843
	.quad	0x3fd8f0c2b38c4a62              # double 0.38969485792146064
	.quad	0x3fc32112bde9e22c              # double 0.14944681428075179
	.quad	0x3f913d311d8af780              # double 0.016834990909721181
	.quad	0x3fd2c06905b0729a              # double 0.29299378924933139
	.quad	0x3feaff181ce88bd0              # double 0.84363942762535693
	.quad	0x3fee0dd89546e5e3              # double 0.93919018893864992
	.quad	0x3fbe411c4a8101b8              # double 0.11818100756591476
	.quad	0x3fe93a7d118286df              # double 0.78838971538445068
	.quad	0x3fa1ea9e740f0b30              # double 0.034993125598268171
	.quad	0x3fc48b5ca2863be8              # double 0.16050298629531246
	.quad	0x3fec75ea4eee09a8              # double 0.88939395347579353
	.quad	0x3fec54c6bca6356c              # double 0.88534867139393957
	.quad	0x3fdadd365095e6ce              # double 0.41975171918566623
	.quad	0x3fd14467c2004c3c              # double 0.26980012841631029
	.quad	0x3fed9121e4d96d6f              # double 0.92396635720380782
	.quad	0x3fe37c07378646b8              # double 0.6088901600325789
	.quad	0x3fe7b14f12d7c600              # double 0.74039415054556912
	.quad	0x3fc9db86d32720f4              # double 0.20201192197988116
	.quad	0x3feff8dfd496c761              # double 0.99913016816411126
	.quad	0x3fe91d7248226294              # double 0.78484453285917021
	.quad	0x3fe1d0c59bb0e7c5              # double 0.55673485191731997
	.quad	0x3fda37819ac01e26              # double 0.40963783371305096
	.quad	0x3fe128b5a4a5c4c2              # double 0.53621942670556444
	.quad	0x3fd82a08e052dbb8              # double 0.37756559282882618
	.quad	0x3fd5ec723f0bda4e              # double 0.34255653530945984
	.quad	0x3fef18e3509b1133              # double 0.9717880796747863
	.quad	0x3fcbbef33f346efc              # double 0.21676483713314798
	.quad	0x3fd37193f0278060              # double 0.30380724384850133
	.quad	0x3fa70aa03ad8ab80              # double 0.04500294416751327
	.quad	0x3fef7813798e2417              # double 0.98340772382028063
	.quad	0x3fe58f08d94d77c4              # double 0.67371027414241569
	.quad	0x3feef0c452b9a66c              # double 0.9668904891706922
	.quad	0x3fe14304e55694d8              # double 0.53943104546183474
	.quad	0x3fba47e19e54fca0              # double 0.10265932193304872
	.quad	0x3fe53acedb07d4aa              # double 0.6634287145558535
	.quad	0x3fd25ad9f729bb6a              # double 0.28679513108266141
	.quad	0x3faedb934b003710              # double 0.060268977074981689
	.quad	0x3fcad293561b1cc8              # double 0.20955125526800189
	.quad	0x3fd465075b4b2ff6              # double 0.31866630473518798
	.quad	0x3faf5041ad3e19f0              # double 0.061159183881546286
	.quad	0x3fe2c0ef9c4a1560              # double 0.5860517551924822
	.quad	0x3fe7eca7d9bdea4a              # double 0.74763863113123219
	.quad	0x3fd64294c71b59ac              # double 0.34781379169489912
	.quad	0x3fdfa0a9920bf544              # double 0.49418105375646726
	.quad	0x3fe566048c1a92f1              # double 0.66870334018730493
	.quad	0x3fdcd6a21f1df16e              # double 0.45060017622724657
	.quad	0x3f9f0a647877ea80              # double 0.03031308160096069
	.quad	0x3fdf3bc0b3f0b0e2              # double 0.48802201816830693
	.quad	0x3fe6340e957c6fa5              # double 0.69385461040973395
	.quad	0x3fd4f729f7d6c132              # double 0.32758568957344203
	.quad	0x3fd543c03e116c54              # double 0.3322601896413222
	.quad	0x3fdb61a08f771a72              # double 0.42783369074132971
	.quad	0x3fe5d7f810038b1a              # double 0.68261340263083814
	.quad	0x3fb9cbc0a9d745b8              # double 0.1007652678156522
	.quad	0x3f90126177d63b80              # double 0.015695116938839515
	.quad	0x3fdbec3b6c8db86a              # double 0.43629346466958074
	.quad	0x3feeb05f4b41c1f8              # double 0.95902981470686565
	.quad	0x3fce33ef89eb8c60              # double 0.23595995172863393
	.quad	0x3fd54266c7ee79a2              # double 0.33217782520832817
	.quad	0x3fde01362f9175f6              # double 0.46882395406086574
	.quad	0x3fd7a2d527ac3d64              # double 0.36931351541803381
	.quad	0x3fc855b79125619c              # double 0.19011587702949562
	.quad	0x3fefa36f79103cb1              # double 0.98870061536026387
	.quad	0x3fdc4c0bbd236df2              # double 0.44214147062822839
	.quad	0x3fc8d0fc91c3914c              # double 0.19387776486758879
	.quad	0x3fe35f2ee61da5d1              # double 0.60536904282087722
	.quad	0x3fe12d5e16d7ba93              # double 0.53678802930319802
	.quad	0x3fc477cb23edd618              # double 0.15990580801342058
	.quad	0x3fd679e4b75fcbe8              # double 0.35118978412282198
	.quad	0x3fd4ebdaffe31546              # double 0.32689547528237417
	.quad	0x3fcfa87e20653f8c              # double 0.24732948858081405
	.quad	0x3fdb7928b09fbca8              # double 0.42926995514330679
	.quad	0x3fdfdf038a0ad00c              # double 0.49798668366133891
	.quad	0x3fe2e1891389981d              # double 0.59003118339456118
	.quad	0x3fe488d7f71025bb              # double 0.64170454267985322
	.quad	0x3fee23b3fcf6840b              # double 0.94185828596903443
	.quad	0x3fdbe90c16deb8b6              # double 0.43609907372855206
	.quad	0x3fcc7fdf9c524c58              # double 0.22265238888630523
	.quad	0x3fd27ca18428b9a8              # double 0.28885686784897269
	.quad	0x3fe59a0ecad09cba              # double 0.67505588161738861
	.quad	0x3fea5345884aac3c              # double 0.82266499156447236
	.quad	0x3fd3242ebf314bda              # double 0.2990834109415893
	.quad	0x3fd39573eba57692              # double 0.3059968758806032
	.quad	0x3fb28fb880e4d808              # double 0.072505504101030849
	.quad	0x3fec299a62f8ec37              # double 0.88007850008523902
	.quad	0x3fbad79c71562fa0              # double 0.10485246436127094
	.quad	0x3fefe2f5fb0c60b4              # double 0.99645518334275218
	.quad	0x3fec133185ae14b4              # double 0.87734294995666184
	.quad	0x3fdc60350dc2907e              # double 0.4433720239997071
	.quad	0x3fe40206fd5051f8              # double 0.62524747348157828
	.quad	0x3fe015f906253ed8              # double 0.50268222046176003
	.quad	0x3fd3d298209fdc8c              # double 0.30972865282041862
	.quad	0x3fbae8d6048c9240              # double 0.10511529551565335
	.quad	0x3fbfef1703f62d68              # double 0.12474197241515628
	.quad	0x3fe98c7ea222e7fc              # double 0.79840022723442372
	.quad	0x3fd9a7153af60c6a              # double 0.40082293279573966
	.quad	0x3fe9518544813e99              # double 0.79120124225478883
	.quad	0x3fe56091058ebcf1              # double 0.66803790173972122
	.quad	0x3fe80d8901161f43              # double 0.75165224277677856
	.quad	0x3faabd13d70252d0              # double 0.052223796840882408
	.quad	0x3fefd0a7ecde8e00              # double 0.99422069800897361
	.quad	0x3fbdb08657d23e50              # double 0.11597480434488117
	.quad	0x3fc58b8467b521e0              # double 0.16832022727818607
	.quad	0x3fe092ebceb80f02              # double 0.51793470740128122
	.quad	0x3fa855e6aff3cfb0              # double 0.047530373552859273
	.quad	0x3fe9d575d11fdad7              # double 0.80730715603462044
	.quad	0x3f9800b547e68ce0              # double 0.023440201295341079
	.quad	0x3fdc6628dd55359e              # double 0.4437353288129432
	.quad	0x3fbf19ae27a4b798              # double 0.12148560016495791
	.quad	0x3fe86d03740bd285              # double 0.76330731072683078
	.quad	0x3fea9a1553acaef4              # double 0.83130899756130682
	.quad	0x3fed04a7f7677421              # double 0.906818373881496
	.quad	0x3fe90e6590cb3395              # double 0.78300741462736545
	.quad	0x3fe47706b837bb3c              # double 0.63952957134265587
	.quad	0x3fdf6338b3913f38              # double 0.49043099914432586
	.quad	0x3feb0fc7ba0d219d              # double 0.84567629182952297
	.quad	0x3fd5a9dcc80c1004              # double 0.33849257980205061
	.quad	0x3fc9e0e0944506f0              # double 0.20217520942428946
	.quad	0x3fe02ff6d43cbb08              # double 0.50585500195106281
	.quad	0x3fd25af1db47a87e              # double 0.28680082716039823
	.quad	0x3fe0fac9a20ae9b5              # double 0.53061372422171493
	.quad	0x3f9bd7edfbcbca40              # double 0.027190893643771696
	.quad	0x3fd6b0c11dbca7b6              # double 0.3545382299804446
	.quad	0x3fdfa49518e214c2              # double 0.49442031316750612
	.quad	0x3fec78b570a4f18e              # double 0.88973495484201393
	.quad	0x3fe0126bb7d02afd              # double 0.50224862957961103
	.quad	0x3fe24ea85509378b              # double 0.57210175140947805
	.quad	0x3fd9666247eff500              # double 0.39687401795511335
	.quad	0x3fdba3165e3e5c3c              # double 0.43182906344867766
	.quad	0x3fecb94cd6f941ae              # double 0.89761964785616555
	.quad	0x3fc828dd29f08d90              # double 0.18874706790766682
	.quad	0x3fe9c38199ca079d              # double 0.80511550938557586
	.quad	0x3fd9276c33261c52              # double 0.39303116793638992
	.quad	0x3fcb2803a9e526c0              # double 0.21215863986645012
	.quad	0x3fe22942b8125b99              # double 0.56753669692521946
	.quad	0x3feb81e2c1586d5b              # double 0.85960519564416005
	.quad	0x3fddc780f623432c              # double 0.46530174290551218
	.quad	0x3fe295ef13739e8a              # double 0.58080247687480946
	.quad	0x3fc4073996d63478              # double 0.15647048821520904
	.quad	0x3fe8580029d58a47              # double 0.76074226542216017
	.quad	0x3fe5b009bda4f3dc              # double 0.67773901977454498
	.quad	0x3fb25bddf07d4ee0              # double 0.071714278424504396
	.quad	0x3fef0f230001d74b              # double 0.97059774400143206
	.quad	0x3fd67309fa3b48dc              # double 0.35077142178228171
	.quad	0x3fc01a56c3bfee80              # double 0.12580380018322401
	.quad	0x3fd999f9be7802d6              # double 0.40002292252033322
	.quad	0x3fe9966a23424c75              # double 0.799611157288736
	.quad	0x3fec25904e5e3488              # double 0.87958541208503593
	.quad	0x3fd2a119e2afbe96              # double 0.29108283173898408
	.quad	0x3f9d81ec401c6660              # double 0.028815928853055062
	.quad	0x3fa3c20868475070              # double 0.038589728097265019
	.quad	0x3fb190ba0d3f83d8              # double 0.068614605173493159
	.quad	0x3fd9c2abe31d1c12              # double 0.40250680140565109
	.quad	0x3fd8867724a9efa6              # double 0.3832071168942498
	.quad	0x3fe4ee14ac7e3736              # double 0.65406259241146958
	.quad	0x3fbd72ab74450280              # double 0.11503097141850027
	.quad	0x3fefefe1c6338a20              # double 0.99803246222683483
	.quad	0x3fef8daebc12638a              # double 0.98604523403911171
	.quad	0x3fdd3db9ce35ad74              # double 0.45689244401611195
	.quad	0x3fe8314f72e3a806              # double 0.75601932944596295
	.quad	0x3fc98df5190c6370              # double 0.19964469645563154
	.quad	0x3fec539a147bc92f              # double 0.88520530701342703
	.quad	0x3fd307baf6989e0a              # double 0.29734682161003489
	.quad	0x3fd20c225db99c66              # double 0.28199061539493753
	.quad	0x3fe9392aa86d2f5a              # double 0.78822834869195479
	.quad	0x3fe14a3f54847824              # double 0.54031340129200034
	.quad	0x3fe6e892d5ce48a5              # double 0.71589032896942639
	.quad	0x3fe837bf712da167              # double 0.75680515389562408
	.quad	0x3fd4f6e172c6ff8c              # double 0.3275683995125227
	.quad	0x3fb865cefb659550              # double 0.095303474785017217
	.quad	0x3fc8a2f3b9786650              # double 0.19247290187995469
	.quad	0x3fe77428e14045e7              # double 0.73292964929913473
	.quad	0x3f843e4c63b7cb80              # double 0.0098844497615340198
	.quad	0x3fe869a397326565              # double 0.76289538889538433
	.quad	0x3feeefa52507fdab              # double 0.96675355179461541
	.quad	0x3fd8668da710e68c              # double 0.38125935854950721
	.quad	0x3fe2184b7d78d254              # double 0.56546568399660169
	.quad	0x3fe756c7607dced0              # double 0.72934311719878941
	.quad	0x3fea4c09a2ad42c5              # double 0.82178193829357638
	.quad	0x3fe1da8930c5108e              # double 0.55792674565647515
	.quad	0x3fd054bfbd575496              # double 0.2551726674112812
	.quad	0x3fe14af1cc0ac3eb              # double 0.5403985009380653
	.quad	0x3feeae12d1232529              # double 0.95874920699239851
	.quad	0x3fea9574fcde86ad              # double 0.83074426067851947
	.quad	0x3fdfe68c968d486e              # double 0.49844660475094471
	.quad	0x3fed599556f403df              # double 0.91718546851199878
	.quad	0x3fb60197a816cc20              # double 0.085961798226705799
	.quad	0x3fd156592c97c650              # double 0.27089528422138631
	.quad	0x3fe11a2036a01ad1              # double 0.53443918866181594
	.quad	0x3fe587d4d3e2644e              # double 0.6728309763303828
	.quad	0x3fea2c7af744c3f3              # double 0.81792972845698697
	.quad	0x3fe942d3dbe13b9c              # double 0.7894076628234532
	.quad	0x3fe5c62123234ea0              # double 0.6804357229506941
	.quad	0x3fe587336d36341f              # double 0.67275401430527271
	.quad	0x3fef4dd46e298657              # double 0.9782507087331379
	.quad	0x3fccbd97491f6600              # double 0.22453585691873457
	.quad	0x3fe5e6ece52eb60a              # double 0.68443913232994302
	.quad	0x3feaef1b822b054e              # double 0.84168792174765783
	.quad	0x3fe9b2b920950df1              # double 0.80306679118842628
	.quad	0x3fe29f20cb20d031              # double 0.58192481683227559
	.quad	0x3fd9ab68e2b345a4              # double 0.40108701838206628
	.quad	0x3fe2a6bde0bf1e87              # double 0.58285421272098936
	.quad	0x3fbbdd7395215220              # double 0.10884783163903267
	.quad	0x3fbde0eecd3ae260              # double 0.11671345243929343
	.quad	0x3fe53db3cab82905              # double 0.66378202050808055
	.quad	0x3fb37c219730c860              # double 0.0761128419988224
	.quad	0x3feb592684231df9              # double 0.85463262374918181
	.quad	0x3fe6b4ab16952c06              # double 0.70955423746761492
	.quad	0x3fef02754061d404              # double 0.96905005049359305
	.quad	0x3fd172f99aa21ffc              # double 0.27264251805217987
	.quad	0x3febeeb673a89292              # double 0.87288973416851179
	.quad	0x3fe5c98493c4d665              # double 0.6808493505584009
	.quad	0x3fd345575740ef2a              # double 0.3011072494589252
	.quad	0x3fdf234f8a0d59f2              # double 0.48653019410758624
	.quad	0x3fef19b532ceae6f              # double 0.97188815997419719
	.quad	0x3fd7a267c080499a              # double 0.36928743170678902
	.quad	0x3fe1b10c85831f24              # double 0.5528624160442388
	.quad	0x3fe6aaff3a65c355              # double 0.70837365537418384
	.quad	0x3fcb1fb0ed5cf11c              # double 0.21190463628762124
	.quad	0x3fc35ac4bbc17978              # double 0.15120753448259072
	.quad	0x3fd76521a3f12136              # double 0.36554757127716486
	.quad	0x3fd23f57c1117518              # double 0.28511613706889838
	.quad	0x3fe4cbadcc35629a              # double 0.64986314663390776
	.quad	0x3fe2f7d7705dce76              # double 0.59275409647530242
	.quad	0x3fed406f2c1cab77              # double 0.91411551108954725
	.quad	0x3fd198471c761f58              # double 0.27491929797587522
	.quad	0x3fee502f369f3926              # double 0.94728813808777512
	.quad	0x3fe9d0cc1fd38ab3              # double 0.80673795906144219
	.quad	0x3fb99103d3e70630              # double 0.099869002565377895
	.quad	0x3fe219d6bcd20f5d              # double 0.56565415267003127
	.quad	0x3fcf14be47203a40              # double 0.2428205344480876
	.quad	0x3fe296d59b46ba08              # double 0.58091240241429976
	.quad	0x3fba5c05ba18be28              # double 0.10296664994597704
	.quad	0x3fcbed8d49a43cc4              # double 0.21818700881747166
	.quad	0x3febb321fac0bcce              # double 0.86561678862735802
	.quad	0x3fc17753ad2a7494              # double 0.13645406680453631
	.quad	0x3fe578cd8ea9e443              # double 0.67099645484916726
	.quad	0x3febf3eeb38be4c8              # double 0.87352690761249452
	.quad	0x3fd70bd8e84f5218              # double 0.3600981014872402
	.quad	0x3fbfb866e3d8f6d8              # double 0.12390749991115102
	.quad	0x3fe6d5eb486a418c              # double 0.71361316817824294
	.quad	0x3fea2390f24f9702              # double 0.81684157682749992
	.quad	0x3fe4421929bd0ca3              # double 0.63306863929792134
	.quad	0x3fe857c7a21b81e8              # double 0.76071530973063961
	.quad	0x3fee303df18e9781              # double 0.94338891200162334
	.quad	0x3fdcbe29f225f3a2              # double 0.44910668036737367
	.quad	0x3fe70da35678c386              # double 0.72041479958544197
	.quad	0x3fe24856cf4e84e9              # double 0.57133045663445359
	.quad	0x3fd6bb89560d0be4              # double 0.35519631770529103
	.quad	0x3fd1c7389391da1e              # double 0.27778448496920471
	.quad	0x3fda84c2b5730734              # double 0.41435306281720163
	.quad	0x3fd27075814e2572              # double 0.28811395289866149
	.quad	0x3fd29187f83311a4              # double 0.29013251531821482
	.quad	0x3fedd3ef439ff215              # double 0.93212092597929319
	.quad	0x3fee8caaad13d805              # double 0.95467122844888819
	.quad	0x3fd7c42fe25991d8              # double 0.37134930710297231
	.quad	0x3fd0a447e6d38c8a              # double 0.26002690831791908
	.quad	0x3fc1cdaf86562660              # double 0.13908952769661465
	.quad	0x3fee04f581142929              # double 0.93810534678167301
	.quad	0x3fa75a9890d483a0              # double 0.045613067321262024
	.quad	0x3fee28f2de7a7da8              # double 0.94249862149074647
	.quad	0x3fe350de83a4b7b3              # double 0.60362172805411374
	.quad	0x3fef6e37691e3822              # double 0.98220415621631596
	.quad	0x3fcce849e5283c64              # double 0.22583888711276068
	.quad	0x3fee8917b6e8ab38              # double 0.95423494076144432
	.quad	0x3fe5466838cd7482              # double 0.66484461874246414
	.quad	0x3fe2384db91cd1c3              # double 0.56937299876022285
	.quad	0x3fe03b0f5c62ac02              # double 0.50720947307615938
	.quad	0x3fdc3b39e9697828              # double 0.44111488145961397
	.quad	0x3fe86e6af27f50c4              # double 0.76347873080023775
	.quad	0x3fe54112d1e4998d              # double 0.66419354433746636
	.quad	0x3fe2db4a4b4bb7b8              # double 0.58926882463651165
	.quad	0x3f90c00ef820e200              # double 0.016357644934233306
	.quad	0x3fe6d1d6a9a63f75              # double 0.71311505446099821
	.quad	0x3fef461eb379bae3              # double 0.97730956128893031
	.quad	0x3fe7c4abcc6efbe1              # double 0.74275770119117734
	.quad	0x3fd6742376388bea              # double 0.35083853287704747
	.quad	0x3fe5cddefe3f0ffe              # double 0.68138074548232885
	.quad	0x3fe15f7bc0731ab9              # double 0.54290568912332227
	.quad	0x3fee2768da69914a              # double 0.94231074007670057
	.quad	0x3fe2e05a0b7f92c9              # double 0.58988668676155342
	.quad	0x3fe4f4768f7a0595              # double 0.65484169028074979
	.quad	0x3fed69f4dedb4d80              # double 0.91918414618196209
	.quad	0x3fecad9fcba50fc6              # double 0.89619436048860091
	.quad	0x3fe519d414429692              # double 0.65940288502743472
	.quad	0x3fe2874acab4b40a              # double 0.57901515570631656
	.quad	0x3fe3b5cf5e55057f              # double 0.61594360756150468
	.quad	0x3fe1e9737ba27010              # double 0.55974744937293686
	.quad	0x3fe18fa6a09eeb14              # double 0.54878550883526822
	.quad	0x3feec30f2ef8716d              # double 0.96131095098421115
	.quad	0x3fe4e1ec2ce85449              # double 0.6525784375286402
	.quad	0x3fdba37ef2f44afc              # double 0.43185399747851227
	.quad	0x3fdd8663ed14a5f2              # double 0.46132753517539904
	.quad	0x3fcb4829421853b0              # double 0.21313968398376693
	.quad	0x3fe6074ad036fca1              # double 0.68839016596747993
	.quad	0x3fca39ccf8555b28              # double 0.20488893628745442
	.quad	0x3fdfec6c10d65b9e              # double 0.49880506176253359
	.quad	0x3feb1887dd65a536              # double 0.8467444729005027
	.quad	0x3fc0c523d5c2b98c              # double 0.13101623475581581
	.quad	0x3fe9df51b864699c              # double 0.80851064695461927
	.quad	0x3fd5dc99d0b4a6aa              # double 0.34158940678990268
	.quad	0x3fe29cf9adb6378a              # double 0.5816620247658062
	.quad	0x3fd2899ca1d90e5e              # double 0.28964916043716993
	.quad	0x3fe4ed9261de318b              # double 0.65400046458084782
	.quad	0x3fa919892e146440              # double 0.049022948145826195
	.quad	0x3fe4f87c15195960              # double 0.65533260460760445
	.quad	0x3faf6938887b6010              # double 0.061349646244423295
	.quad	0x3fe2f29d24a40ba8              # double 0.5921159473076516
	.quad	0x3fc4771fdc694714              # double 0.15988538992183321
	.quad	0x3fcedbb49dcbdb3c              # double 0.24107988076112885
	.quad	0x3fec4091fd21201a              # double 0.88288211287818119
	.quad	0x3fe76d750341ba7c              # double 0.73211146007618266
	.quad	0x3fdc844d6de58f9e              # double 0.44557510120488952
	.quad	0x3fa16ec4834712f0              # double 0.034048214936353349
	.quad	0x3fe5b7444a7cff5a              # double 0.67862143085947513
	.quad	0x3fe664d1a6870ad9              # double 0.69980700039772181
	.quad	0x3fe883e466172d23              # double 0.76610011996800542
	.quad	0x3fe614696632b92c              # double 0.68999166451047733
	.quad	0x3fc2fbd736802cf4              # double 0.14831056748548799
	.quad	0x3fdeb2340e2b7106              # double 0.47962666877516857
	.quad	0x3f9596f54543a7e0              # double 0.021083671906047985
	.quad	0x3fef5c5d81e687aa              # double 0.9800250565642632
	.quad	0x3fd3124aead83c90              # double 0.29799149450350004
	.quad	0x3fe04358f7760add              # double 0.50822113353964549
	.quad	0x3fecd3493e07ff64              # double 0.90079176059223842
	.quad	0x3feb3edca93e68d9              # double 0.85142357879092423
	.quad	0x3fe84770b421ede2              # double 0.75872073347221325
	.quad	0x3fdfd1b9fb91b86c              # double 0.49717568938547774
	.quad	0x3fd64d4ad0bac56e              # double 0.34846754440066874
	.quad	0x3fe4512ce36a2d86              # double 0.63490909974045517
	.quad	0x3fd089d84a1cb140              # double 0.25841338384158874
	.quad	0x3fa5343c66688c50              # double 0.041414153576874058
	.quad	0x3feff638d2de6d0a              # double 0.99880639252970238
	.quad	0x3fba8647039b7f98              # double 0.10361141050407097
	.quad	0x3fc6df5f8fb10f70              # double 0.17869181171601722
	.quad	0x3feca5360118b0a6              # double 0.89516735281133175
	.quad	0x3fd0c01a16e77f18              # double 0.2617249702143325
	.quad	0x3fd5a7cac591013e              # double 0.33836621564480029
	.quad	0x3fe4fcc1322edff0              # double 0.6558538417948494
	.quad	0x3fe88fc8551bc456              # double 0.76755158064600937
	.quad	0x3fbce71d3e731438              # double 0.11290152334829962
	.quad	0x3fec6f086ae27d34              # double 0.88855381847307635
	.quad	0x3fdf455eb7d8e14e              # double 0.4886090083487219
	.quad	0x3fb228db8e70faa8              # double 0.070935938144411126
	.quad	0x3fcec8bb7cefadc0              # double 0.24050086594011866
	.quad	0x3fd25d887b261e44              # double 0.28695880914935779
	.quad	0x3fd0a6ad775c3fb6              # double 0.26017319351467039
	.quad	0x3f8e7de9ecd20b00              # double 0.014888598956763754
	.quad	0x3fe41b9fb6392db0              # double 0.62837205496309956
	.quad	0x3fd43958f71af0d0              # double 0.31600021487589647
	.quad	0x3fefc904d62b1331              # double 0.99328843908060637
	.quad	0x3fecb6e1dd55a106              # double 0.89732449750320664
	.quad	0x3fcf24181f516b08              # double 0.24328900841904777
	.quad	0x3fe58a6efe8af8a7              # double 0.67314862933541952
	.quad	0x3fe50dad3381256c              # double 0.65791950282543388
	.quad	0x3fe9e26d4168d4b4              # double 0.80888998770992381
	.quad	0x3fe3e1476100063f              # double 0.62124985642748942
	.quad	0x3fc538f3978af9c4              # double 0.16580052280001045
	.quad	0x3fafdf75a628afb0              # double 0.062251736195633511
	.quad	0x3fd004483aaac640              # double 0.25026136140067834
	.quad	0x3f93e793a1ec5ba0              # double 0.019438082464229844
	.quad	0x3fd828c382266f22              # double 0.37748801908468199
	.quad	0x3fb4434804f5c6e0              # double 0.079151631556466651
	.quad	0x3fe94c0ae21baea4              # double 0.79053253328080019
	.quad	0x3fe002eb4e91af2e              # double 0.50035634370349213
	.quad	0x3fe1a8f59272c78c              # double 0.55187491038508218
	.quad	0x3fd08730fb9fa63a              # double 0.25825142452831396
	.quad	0x3fef87d1cdfd6566              # double 0.98532953483951924
	.quad	0x3fc7ca1b107ca604              # double 0.18585527710938277
	.quad	0x3fd5ac7c533b7700              # double 0.33865268829491413
	.quad	0x3fed33f426840f92              # double 0.91259200594548617
	.quad	0x3fc409e8628f7768              # double 0.15655236065407085
	.quad	0x3f5030a69f73fe00              # double 9.8816177143123962E-4
	.quad	0x3faee174320c8e80              # double 0.060313826665404413
	.quad	0x3fd703ee53eb9eca              # double 0.35961492724753141
	.quad	0x3fe84cca09a95f04              # double 0.75937368285210071
	.quad	0x3fae686e20e01c60              # double 0.059390489113916756
	.quad	0x3fc20f888d6b615c              # double 0.14109904198881906
	.quad	0x3fefd204c569a57b              # double 0.99438704068340599
	.quad	0x3fec8c157f08ad8d              # double 0.89210009394939649
	.quad	0x3fee4d6eeab0197d              # double 0.94695230329016022
	.quad	0x3fdd3337395658ee              # double 0.45625095939011728
	.quad	0x3fe6676f6489123b              # double 0.7001263583738998
	.quad	0x3fe88eadf0f32b1d              # double 0.76741692600748801
	.quad	0x3fe93fb962424386              # double 0.78902882758312454
	.quad	0x3f9dd2736b652ae0              # double 0.029123118810541082
	.quad	0x3fd0f872c79841ec              # double 0.26516408435511951
	.quad	0x3f9090a5278d2ac0              # double 0.016176777400043418
	.quad	0x3fedcaa0816f8b7f              # double 0.93098473816313276
	.quad	0x3fcd1ccb824d1e04              # double 0.22744125234952162
	.quad	0x3fee12025741767d              # double 0.93969838182574927
	.quad	0x3fd95c01221c1968              # double 0.39624050456077109
	.quad	0x3fec0c0fa180910f              # double 0.87647229712868746
	.quad	0x3fe461bc0fc858ac              # double 0.63693049509563116
	.quad	0x3fe3cbb72b9d4d5c              # double 0.61861761587571662
	.quad	0x3fe84896cb0c75f7              # double 0.75886096628136002
	.quad	0x3fb5813c749926f0              # double 0.08400323721539471
	.quad	0x3fc87f7ed92a9628              # double 0.19139085391832222
	.quad	0x3fdda44ef294c24a              # double 0.46315358819541486
	.quad	0x3fc54572bc28acdc              # double 0.16618189036794362
	.quad	0x3fea4a7af96feca4              # double 0.82159184187129996
	.quad	0x3fe77388a057130e              # double 0.73285323444778938
	.quad	0x3fd0daf6b1b3c028              # double 0.2633644805309836
	.quad	0x3fc969994c2bccdc              # double 0.19853512019435626
	.quad	0x3fbd09123d706d68              # double 0.11341966629008982
	.quad	0x3fd93d4ed16a5554              # double 0.39436693621367636
	.quad	0x3fdada3cbc3abec8              # double 0.41957014447960406
	.quad	0x3fe7cd26bf090d8d              # double 0.74379288970560398
	.quad	0x3fe69fa69230dc29              # double 0.7069886069574568
	.quad	0x3fb7acf815e2c928              # double 0.092483048766358267
	.quad	0x3fbcd1d37b158ec8              # double 0.11257669215188593
	.quad	0x3fe56cfdefe9a845              # double 0.66955468042329669
	.quad	0x3fe0bcdd89911ea9              # double 0.5230548560002336
	.quad	0x3fe1bee6380de7cd              # double 0.5545531363306907
	.quad	0x3fe4189824988cac              # double 0.62800223491321594
	.quad	0x3fd04b9d19220784              # double 0.25461509184253139
	.quad	0x3fb71e209cf94488              # double 0.090303457568795875
	.quad	0x3fe668bb369df4e6              # double 0.70028458278070782
	.quad	0x3fe367deb936ec47              # double 0.60642944502559082
	.quad	0x3fe7b64ae72f93d4              # double 0.74100251344190804
	.quad	0x3fdf2f7f80311406              # double 0.48727405089113096
	.quad	0x3fe9259fcc8724ff              # double 0.78584279963357051
	.quad	0x3fe9f19cb3fa164d              # double 0.81074366714228463
	.quad	0x3fd5b4fd9dd2cf12              # double 0.33917179501007511
	.quad	0x3fe4cf8323d8aca6              # double 0.65033108712431864
	.quad	0x3fbe2edf84ba0670              # double 0.11790272703549376
	.quad	0x3fdb0b57c07b59bc              # double 0.42256730839781276
	.quad	0x3fd197b9966aa462              # double 0.27488555611723176
	.quad	0x3fef53a5cea56b24              # double 0.97896089897708238
	.quad	0x3fd36d2fb263efbe              # double 0.3035392038434529
	.quad	0x3fea80521320e08f              # double 0.82816413627644347
	.quad	0x3fc4b330531e784c              # double 0.16171840723558473
	.quad	0x3fd0bc278f6f20e2              # double 0.26148404128299607
	.quad	0x3fbf12bfa47681b0              # double 0.12137983098228378
	.quad	0x3fe3fd96ceac16a6              # double 0.62470569959323963
	.quad	0x3fc9540febf1d528              # double 0.19787787457213679
	.quad	0x3fea0600a0b7c0ce              # double 0.81323272123520396
	.quad	0x3fe21501026d98e5              # double 0.56506395792237341
	.quad	0x3fec1780b5956c6f              # double 0.87786899056972156
	.quad	0x3feea11f5e1b1952              # double 0.95716827755021883
	.quad	0x3fe78cd6c8c0662e              # double 0.7359422608307733
	.quad	0x3fe29298ed4d930c              # double 0.5803951868843753
	.quad	0x3feb137b9a9b6435              # double 0.84612827488593345
	.quad	0x3f9f074c803deea0              # double 0.03030128033377244
	.quad	0x3fe6392b2d8c7f91              # double 0.69447859665159417
	.quad	0x3fd94c18bacf049a              # double 0.39526956790002432
	.quad	0x3fe7dd536e7036c8              # double 0.7457673222540615
	.quad	0x3faa8c126b5b5130              # double 0.051849914174143641
	.quad	0x3fe9483e963e41a3              # double 0.79006890625355586
	.quad	0x3fe681094cb21099              # double 0.70325150470354736
	.quad	0x3fd348e1348e1bf0              # double 0.30132322437606174
	.quad	0x3fe90bee7d1a63db              # double 0.78270649370380896
	.quad	0x3fe120deeb64bc17              # double 0.53526254630367276
	.quad	0x3fe7958f1dea0ad9              # double 0.73700671999571477
	.quad	0x3fd4d86a48e34f8e              # double 0.32570893400156187
	.quad	0x3f5a7da8aa339e00              # double 0.0016168734662701523
	.quad	0x3fe91512fff0aede              # double 0.78382253635706056
	.quad	0x3fe23868b41c5713              # double 0.5693858640467816
	.quad	0x3fcef3f8572925ac              # double 0.24182037597556183
	.quad	0x3fd54a46d520385a              # double 0.33265848935196163
	.quad	0x3fe92ed1b5450206              # double 0.78696523098193505
	.quad	0x3fe5312b33f5f560              # double 0.66225204609478894
	.quad	0x3fdc2aa2bad0d018              # double 0.44010227435797011
	.quad	0x3fdad6b8b6790322              # double 0.41935556239700322
	.quad	0x3fed9866801e2b55              # double 0.92485356352822612
	.quad	0x3fe8ad270241f682              # double 0.77113676491690364
	.quad	0x3fd6dc2d9e2c5618              # double 0.35718861052132089
	.quad	0x3fe2e3dcda2681c6              # double 0.59031527144912199
	.quad	0x3fe3936b10bd4baa              # double 0.61174538869305661
	.quad	0x3fdc5a4793561bda              # double 0.44301022899929665
	.quad	0x3fe02d022c897ee5              # double 0.50549420069361573
	.quad	0x3faee1ac25fc9df0              # double 0.060315494191225727
	.quad	0x3febb347fea8d53a              # double 0.86563491571602147
	.quad	0x3fb2fee254c69010              # double 0.074201722809960069
	.quad	0x3fcd03731e988188              # double 0.22666777604991872
	.quad	0x3fc85e30a202c6fc              # double 0.19037444983182883
	.quad	0x3fd8f9fcb9b7c3e0              # double 0.39025800835139357
	.quad	0x3f989884b76fb260              # double 0.024019311615051442
	.quad	0x3fb88c4a2f2a1fb8              # double 0.095890652193815096
	.quad	0x3fbf13aa43092eb0              # double 0.12139381538980376
	.quad	0x3fec4bceaaa1498f              # double 0.88425381971528505
	.quad	0x3fd89ef7230c3340              # double 0.38470247671721225
	.quad	0x3fe09f0e234f37a3              # double 0.51941592117667701
	.quad	0x3fe56082ae86e32d              # double 0.66803106391225742
	.quad	0x3fc634bba1dbf538              # double 0.17348428157121432
	.quad	0x3fe3f71ae2341688              # double 0.62391418629040718
	.quad	0x3fedf5d819a91e32              # double 0.93626027118529564
	.quad	0x3fef9a3aca8667b0              # double 0.98757686191242122
	.quad	0x3fe795eb92587bdb              # double 0.73705080588467398
	.quad	0x3fefde361f82f201              # double 0.99587541727629524
	.quad	0x3fe6856e1f5f8793              # double 0.70378786208697119
	.quad	0x3fc61b32740a2778              # double 0.1727049891090322
	.quad	0x3fc03e7a61d4faf8              # double 0.12690667893362906
	.quad	0x3fea8b84d0495aff              # double 0.82953110390630502
	.quad	0x3f98f731c20e9ee0              # double 0.024380471677118432
	.quad	0x3fe25382bc363b6b              # double 0.57269417533994493
	.quad	0x3fe61c6be599bcaf              # double 0.69096941799025113
	.quad	0x3fec2137bef85b99              # double 0.87905490206582038
	.quad	0x3fe12ad34aacea16              # double 0.53647770485923973
	.quad	0x3fefe5da1645dbef              # double 0.99680809354947352
	.quad	0x3fea4e76437cbb31              # double 0.82207787686443201
	.quad	0x3fa44b7702a89010              # double 0.039638251375691991
	.quad	0x3fdd8f271b027892              # double 0.46186235082303384
	.quad	0x3fcd86e147ea0a00              # double 0.2306787110465649
	.quad	0x3fd9679dcd886f80              # double 0.39694924422814637
	.quad	0x3fee05b16bd761af              # double 0.93819495260964014
	.quad	0x3fc4f30178583b88              # double 0.16366594673351309
	.quad	0x3fe6c5249def9bb9              # double 0.71156531187886352
	.quad	0x3fcb13a5b1caea1c              # double 0.21153708630829804
	.quad	0x3fe54f174a949342              # double 0.66590466085890676
	.quad	0x3fd949c8286ef0fc              # double 0.39512828777857556
	.quad	0x3fe1ccd7ec33c354              # double 0.55625530369989429
	.quad	0x3f622d06ecdc4500              # double 0.0022187361963764696
	.quad	0x3fe951e3cb04ff87              # double 0.79124631550074376
	.quad	0x3fc4c288fb2fc8bc              # double 0.16218673958753083
	.quad	0x3fe48df97dc8ab47              # double 0.64233088080559575
	.quad	0x3fec13c78bc2fa45              # double 0.87741448685830703
	.quad	0x3fc77c5e98c9b638              # double 0.18348295650814506
	.quad	0x3fd5fe44d0fad654              # double 0.34364433677851491
	.quad	0x3fdf830cf54017cc              # double 0.49237369489889882
	.quad	0x3fd12effae5d123a              # double 0.26849357631388993
	.quad	0x3fee96334cebf051              # double 0.95583500884777994
	.quad	0x3fef636e9ade065a              # double 0.98088770148769844
	.quad	0x3fe884e704b45177              # double 0.76622343939611326
	.quad	0x3fb088db870c83d0              # double 0.064588280173224932
	.quad	0x3fb76898e39a8da8              # double 0.091439776961627417
	.quad	0x3fc6feef036a1f34              # double 0.17965495745397109
	.quad	0x3fe5cfa2746d7263              # double 0.68159601917029666
	.quad	0x3fc970d7e4c4dbdc              # double 0.19875620527611104
	.quad	0x3f9a63854d61c280              # double 0.025770266387953544
	.quad	0x3fe0d2b1cfe07869              # double 0.52571955300278461
	.quad	0x3fd9a93d4d8bf0fe              # double 0.4009545571605172
	.quad	0x3fe54fb60d1c41ce              # double 0.665980363470277
	.quad	0x3fd9183a86a5f056              # double 0.39210379742849477
	.quad	0x3fd6975120424dca              # double 0.35298565054219166
	.quad	0x3fac28397b6df920              # double 0.054994388882720679
	.quad	0x3fea4f25f1951f40              # double 0.82216164764484034
	.quad	0x3feddc437b4eb85b              # double 0.93313764651771736
	.quad	0x3feb795bd20bf200              # double 0.85856429123629141
	.quad	0x3fc89c07a55c09ec              # double 0.19226165365405679
	.quad	0x3fca3cef360a4d20              # double 0.20498457087215005
	.quad	0x3fe62697e37e536e              # double 0.69221109802547942
	.quad	0x3fdd12bec3eba478              # double 0.45426911480769361
	.quad	0x3fc28755596b31cc              # double 0.14475504747532708
	.quad	0x3fe96ff69e204eec              # double 0.79491740116142528
	.quad	0x3fb7929cee40c4c8              # double 0.092080887000309919
	.quad	0x3fd0d0344cb36b12              # double 0.26270778169934872
	.quad	0x3fea38e1fe7f9ad2              # double 0.81944369990091048
	.quad	0x3fead698dbf9c183              # double 0.83869593585954794
	.quad	0x3fdcb2473d84fd78              # double 0.44838124282610847
	.quad	0x3f84432d98af8b00              # double 0.0098937570782644535
	.quad	0x3fe41e3378754f65              # double 0.62868665244102984
	.quad	0x3fe86c492ab33b96              # double 0.76321848239773504
	.quad	0x3fe12b93b6c7d592              # double 0.53656945895515862
	.quad	0x3fe87d76e5ebdd98              # double 0.76531548410905526
	.quad	0x3fc331df3c843694              # double 0.14995947317986646
	.quad	0x3fd61178847edf80              # double 0.34481633128188349
	.quad	0x3fd42f2af51c3770              # double 0.31537889420075427
	.quad	0x3fe786d636972088              # double 0.73520956670928772
	.quad	0x3fe489615c32b89c              # double 0.64177005774924423
	.quad	0x3fa07be3a1650580              # double 0.032195199443331823
	.quad	0x3fed7e7076db31de              # double 0.92168448652369839
	.quad	0x3fe71bc9e67e266d              # double 0.72214217203254594
	.quad	0x3fec834d53b8200a              # double 0.89102808333791583
	.quad	0x3fc6b115ea36a710              # double 0.17727922378735927
	.quad	0x3fefac3166c19956              # double 0.98976965016917506
	.quad	0x3fd93304b56ecf6a              # double 0.39373891561557761
	.quad	0x3fe57c9d6abfd231              # double 0.67146178101990561
	.quad	0x3fd5d15139f0a85c              # double 0.34090071352205142
	.quad	0x3fe79d596022566f              # double 0.73795765663335355
	.quad	0x3fdb8834bc83be50              # double 0.43018835458403704
	.quad	0x3fef0f5d143f1c80              # double 0.97062543825531122
	.quad	0x3fe3aef5ff8cf689              # double 0.61510753547891384
	.quad	0x3fda90cad940ef34              # double 0.41508742538620713
	.quad	0x3fe3c21870a7a63c              # double 0.61744329455286318
	.quad	0x3fd9d9dd83b2a09c              # double 0.40392244206533134
	.quad	0x3fd3f4dcbf8077a2              # double 0.31182020856237547
	.quad	0x3f962777096833c0              # double 0.021634921979103217
	.quad	0x3fd7c06eb179c6d4              # double 0.37112014133081783
	.quad	0x3fee20587d7c522b              # double 0.94144844540511963
	.quad	0x3fe4c13312418885              # double 0.64858392301199841
	.quad	0x3fe1aec8f91ba057              # double 0.55258606580629077
	.quad	0x3fea910f60d49ef6              # double 0.83020752823082833
	.quad	0x3fead476af5d5027              # double 0.83843549967651121
	.quad	0x3fe2680d80dc9d71              # double 0.57520175140682117
	.quad	0x3fb0c4f43d0578c8              # double 0.065505280397221033
	.quad	0x3fe8adf6e8af4426              # double 0.77123589941232207
	.quad	0x3fbfef0d89244178              # double 0.12474140737709216
	.quad	0x3fe98c53e25fff28              # double 0.79837984289040254
	.quad	0x3fc6bf49d82cec80              # double 0.17771266036456623
	.quad	0x3fee967703c86605              # double 0.95586729754285271
	.quad	0x3fd41be045e4eacc              # double 0.31420142007452223
	.quad	0x3fe6367c811a6f8d              # double 0.6941511651561868
	.quad	0x3fdf9f3427e6c22e              # double 0.49409202477093828
	.quad	0x3fe7e8cfa3258c06              # double 0.74716932167609751
	.quad	0x3fd58e89595cbf7e              # double 0.33682473875796137
	.quad	0x3fe09b65354f1519              # double 0.51896915828607171
	.quad	0x3f9c743c830a1980              # double 0.027787156579984096
	.quad	0x3fee1d450b0fcc62              # double 0.94107296143046093
	.quad	0x3fd3e6d553c60276              # double 0.3109639471149771
	.quad	0x3fe9334145d5a8ec              # double 0.78750671042987852
	.quad	0x3fef957aaf5820e9              # double 0.98699697729992152
	.quad	0x3fb32f60fca095e0              # double 0.074941693951209754
	.quad	0x3fc0ba642318d608              # double 0.13068820680352666
	.quad	0x3fe3f474ba05e435              # double 0.62359081585521514
	.quad	0x3fe91ced23ce3f67              # double 0.78478104584972364
	.quad	0x3fe9f1935ce9f879              # double 0.81073921344046973
	.quad	0x3f9c8bff3f9acea0              # double 0.02787779641830801
	.quad	0x3fb03a228e52a708              # double 0.063387069460670742
	.quad	0x3feb61a2f82b149f              # double 0.85566853018157818
	.quad	0x3fe94468d6565f99              # double 0.78960077154896446
	.quad	0x3fef580dcd0b2113              # double 0.97949876830628779
	.quad	0x3fb3a62f312c9b00              # double 0.07675452185194942
	.quad	0x3fe0be4f55b3f6a2              # double 0.52323118914474187
	.quad	0x3fca61a8d5cd0e28              # double 0.20610533179761714
	.quad	0x3fac5c2c6a3a1c10              # double 0.055390727965509368
	.quad	0x3fdfb19ed7ceadbc              # double 0.49521609377799414
	.quad	0x3fdb5d733090f26c              # double 0.42757873289864423
	.quad	0x3feeb325b22cbccd              # double 0.95936856078869825
	.quad	0x3fca749dd6aef9c4              # double 0.2066838548907538
	.quad	0x3feace4daf1ab1bd              # double 0.83768352699330928
	.quad	0x3fd3ee4c1f1a63e0              # double 0.31141951596651829
	.quad	0x3f9cc5d1814dcbc0              # double 0.028098367230494636
	.quad	0x3fe6371920ccd323              # double 0.69422584921139607
	.quad	0x3fc3a19f6a262e9c              # double 0.15336983378471281
	.quad	0x3fee1ae3e83167cb              # double 0.94078250265305863
	.quad	0x3fe08b97519b44e1              # double 0.51703992785237685
	.quad	0x3fe8ef146f302aa6              # double 0.77918454853473373
	.quad	0x3fe91d4d08169c44              # double 0.78482677058935523
	.quad	0x3fc75b699b51b6e4              # double 0.18247718891091502
	.quad	0x3fe721f6371e0f95              # double 0.72289572491762277
	.quad	0x3fee8a7c1d38832a              # double 0.95440488536050805
	.quad	0x3fc64f02cad32b3c              # double 0.1742862215381481
	.quad	0x3fb0863925572ea0              # double 0.064548083893152697
	.quad	0x3fe0eccf78251278              # double 0.5289075228289013
	.quad	0x3fc4af508e40cab8              # double 0.16160017915679759
	.quad	0x3fe210a74c21d02b              # double 0.56453289861247435
	.quad	0x3fcb9e0621b344ac              # double 0.21576000829239683
	.quad	0x3fe3c42e557ffc2b              # double 0.61769787501532869
	.quad	0x3fefb00d024adffe              # double 0.99024057815313404
	.quad	0x3fe3bd2f21657b90              # double 0.61684376261460905
	.quad	0x3fe728746ef53de6              # double 0.72368833228568685
	.quad	0x3fcf3840c1162cfc              # double 0.2439042036824971
	.quad	0x3fe63ad91b398876              # double 0.69468360249835714
	.quad	0x3fb351ef7e7209a8              # double 0.075468986864541621
	.quad	0x3fee01cae1ed2f1e              # double 0.93771881223935671
	.quad	0x3fb7df7edf716f90              # double 0.093254022170581984
	.quad	0x3feff7e62ecfcd9a              # double 0.99901112692753036
	.quad	0x3febabb7faef861a              # double 0.86471175204150375
	.quad	0x3fbfbda5c5fb3920              # double 0.12398754199532336
	.quad	0x3fb09deb2957f270              # double 0.064909646600378457
	.quad	0x3feb00095a18e917              # double 0.84375445935373505
	.quad	0x3fec7908c3e2f902              # double 0.88977468737701337
	.quad	0x3fe1f2b53f75378a              # double 0.56087744135014472
	.quad	0x3fd0691b70481cfe              # double 0.25641523327836058
	.quad	0x3fef0274400ab0f9              # double 0.96904957302243055
	.quad	0x3fe302afb8b13362              # double 0.59407793114369789
	.quad	0x3fd4c5aa767cddf2              # double 0.32456456729002447
	.quad	0x3fe2b6b0f5d6e83d              # double 0.58480117812656085
	.quad	0x3fc13a7d8622fd28              # double 0.13459748315470077
	.quad	0x3fecb6f3973f6338              # double 0.89733295002506619
	.quad	0x3fe266ec4e6e6e40              # double 0.57506385153414641
	.quad	0x3fb08bc5488787d8              # double 0.064632730681778994
	.quad	0x3fef580acbd72c29              # double 0.97949733555413331
	.quad	0x3fd89f5cb2a56f2a              # double 0.38472669073029186
	.quad	0x3fe3a06b9b6fc9ea              # double 0.6133325610992959
	.quad	0x3fe1ac1880eac260              # double 0.55225777796847453
	.quad	0x3fe32a4ccf5f6625              # double 0.59891357901068842
	.quad	0x3fe4943c5b3100ed              # double 0.643095186336749
	.quad	0x3fe79e341b674e9d              # double 0.73806195595030355
	.quad	0x3fe47aee5f784ff5              # double 0.64000624319532895
	.quad	0x3fec8a381f3c1ca8              # double 0.89187246418523092
	.quad	0x3fd53ff50952aafe              # double 0.33202863607827726
	.quad	0x3fa9d349c64039c0              # double 0.050440125895068189
	.quad	0x3fe78759d2daaf1a              # double 0.73527232344119686
	.quad	0x3fe99eab35b96fef              # double 0.80061874859847915
	.quad	0x3fe53e7645cbc0a4              # double 0.66387475616467784
	.quad	0x3fabc4509d854340              # double 0.0542321388517224
	.quad	0x3fe5f9eb40837af3              # double 0.68675768471061216
	.quad	0x3fd073fdea398386              # double 0.25707958100797901
	.quad	0x3fe5624907f1ab80              # double 0.66824771453444498
	.quad	0x3fe59b34042ce7bc              # double 0.67519570174703558
	.quad	0x3fd894b198e53e56              # double 0.38407554560851531
	.quad	0x3fd1040c943e5ac2              # double 0.26587213971053469
	.quad	0x3fc34ebf9dd89ecc              # double 0.15084071357090634
	.quad	0x3fd4b2fb88400ce2              # double 0.32342422776873836
	.quad	0x3fd60850b322f6e4              # double 0.34425752157026879
	.quad	0x3fe5d52cf3dd808d              # double 0.68227241163187247
	.quad	0x3fe2c7ba8b30c000              # double 0.58688094316130446
	.quad	0x3fd890788be3773a              # double 0.38381780301084556
	.quad	0x3fe59d75dc11bd61              # double 0.67547123892101635
	.quad	0x3fec9fcb566e2ded              # double 0.8945061386197587
	.quad	0x3fe2258545d0b7cf              # double 0.56708015094567965
	.quad	0x3fe12df6134495df              # double 0.53686050189270051
	.quad	0x3fe3a70a3916d0a9              # double 0.61414061689585708
	.quad	0x3fd51f9b34922670              # double 0.33005409368397576
	.quad	0x3fd6cca048e5a3e2              # double 0.35623938673830768
	.quad	0x3fe8cffe2a2baf79              # double 0.77538974987463327
	.quad	0x3feb25b96b432795              # double 0.84835501622841269
	.quad	0x3fb476cae4d514b0              # double 0.07993763052680225
	.quad	0x3fbc10d8d9456c90              # double 0.10963206581566198
	.quad	0x3fe8576f87526d7d              # double 0.76067329816889606
	.quad	0x3fe97eeb902d8cc6              # double 0.79674318465949834
	.quad	0x3fed8ed99d793493              # double 0.92368775135550363
	.quad	0x3fb4e618b7c4b048              # double 0.081635994782744636
	.quad	0x3fc81d1a8b59b3e0              # double 0.1883881740972404
	.quad	0x3fd820533176223e              # double 0.3769729598066397
	.quad	0x3feda21079914d0a              # double 0.92603324645679774
	.quad	0x3fe3a49251db30d2              # double 0.61383930194417702
	.quad	0x3fa8a36a7e66ef70              # double 0.048121765069906952
	.quad	0x3fd42bc712608f5c              # double 0.31517197413108078
	.quad	0x3fdbcf3689f934fe              # double 0.43452228044482399
	.quad	0x3fe934bb96d0ec8b              # double 0.78768710571547851
	.quad	0x3fc53184411522c8              # double 0.16557362726077529
	.quad	0x3fda0f4e77f82a38              # double 0.40718423572312501
	.quad	0x3fd05f4617955c50              # double 0.25581505110807701
	.quad	0x3fe9377702194d35              # double 0.78802061471870977
	.quad	0x3fcdbddda2365f64              # double 0.23235674305464749
	.quad	0x3fedb9414f3263f2              # double 0.92886414974338849
	.quad	0x3fc781991085f9a8              # double 0.18364251429370637
	.quad	0x3feb36f85fb7cf1a              # double 0.85046023077890998
	.quad	0x3fbecc4c92eedba0              # double 0.12030485713226691
	.quad	0x3fe05bc62f12f5af              # double 0.51120289987709622
	.quad	0x3fe2ea49e0a1bd56              # double 0.59109968064687268
	.quad	0x3fea212a74f30ff8              # double 0.8165485653084934
	.quad	0x3f97ece7cbbee5c0              # double 0.023364660082483502
	.quad	0x3fe0f328c7fac56b              # double 0.52968253191481318
	.quad	0x3fcda6bcea202c20              # double 0.23165093833844796
	.quad	0x3feee3aede2cbd12              # double 0.96529334443576631
	.quad	0x3febf8a49c179520              # double 0.874101929538174
	.quad	0x3fdd18b95d09379c              # double 0.45463403783366529
	.quad	0x3fd37a1367b7fcae              # double 0.30432591561106903
	.quad	0x3fb859fa984a2988              # double 0.09512296884546434
	.quad	0x3fb1367c5d1902a8              # double 0.067237637261323813
	.quad	0x3fe286cda74c564c              # double 0.57895548510959705
	.quad	0x3fd77d5620f1927a              # double 0.36702492921020957
	.quad	0x3fefe044de570de3              # double 0.99612658906738393
	.quad	0x3fc3d9663bcc34e0              # double 0.15507200164612467
	.quad	0x3fa5933b276dfe90              # double 0.04213890892333183
	.quad	0x3fe252384d77c391              # double 0.57253661280093315
	.quad	0x3fedaadd6d94d904              # double 0.92710753824829383
	.quad	0x3fd13fae56c33bd6              # double 0.26951178048051128
	.quad	0x3fe37bcd7740f4c6              # double 0.60886262218232257
	.quad	0x3fdb59a4192db100              # double 0.42734625300251139
	.quad	0x3fddb8d0bbc36d14              # double 0.46440523468273054
	.quad	0x3fc8dd47b407d334              # double 0.19425293245844844
	.quad	0x3fdb95b98f3e92aa              # double 0.43101347912515087
	.quad	0x3fdffcd687dd8646              # double 0.49980700748537676
	.quad	0x3fec032aae5b7910              # double 0.87538656286395344
	.quad	0x3fd28773ef03554c              # double 0.28951738682856809
	.quad	0x3fe7e4b05ca7a487              # double 0.74666612717295855
	.quad	0x3fcbeb0d0817f9c4              # double 0.21811068434904091
	.quad	0x3fc87d49c27b33e0              # double 0.19132349010615624
	.quad	0x3fe770e2c4c88a6e              # double 0.73253000673532909
	.quad	0x3fee9933966db21c              # double 0.95620135670248229
	.quad	0x3fed68c4d23261cf              # double 0.91903916410506692
	.quad	0x3fd4b93e175b645c              # double 0.32380630761105578
	.quad	0x3fc4907f58ff8a68              # double 0.16065971227279197
	.quad	0x3fe3dffaa4a0bdf0              # double 0.62109119562040682
	.quad	0x3fc5246ca73d3a88              # double 0.16517408529258071
	.quad	0x3fdda3fba56105f8              # double 0.46313372755329807
	.quad	0x3fdf9971e9941fd0              # double 0.49374053774272131
	.quad	0x3fdfe783a809fbfc              # double 0.49850551042612756
	.quad	0x3fd10bc216e30838              # double 0.26634266123813033
	.quad	0x3febf00deb5eb70c              # double 0.87305351229380923
	.quad	0x3feaa4f83942d467              # double 0.83263789352225792
	.quad	0x3feb00aedf5a91a7              # double 0.8438333856943715
	.quad	0x3fdca049e4b7c2d4              # double 0.44728324256634022
	.quad	0x3fe4180bacf7628e              # double 0.62793525488366853
	.quad	0x3fe95b2b6e3ac88d              # double 0.79237910775397469
	.quad	0x3fc9af0aec456dfc              # double 0.20065437828712607
	.quad	0x3fe383a4d55616c4              # double 0.60981980960124149
	.quad	0x3fe9301c554f3009              # double 0.78712288534143326
	.quad	0x3fe73b25e6ffb094              # double 0.72597022168112568
	.quad	0x3fed9e4f285eaf39              # double 0.92557485470522416
	.quad	0x3fbe7adb75fdfa00              # double 0.11906215315500646
	.quad	0x3fcc575f32033b1c              # double 0.22141637746832366
	.quad	0x3fe7959e7c175049              # double 0.73701404797112346
	.quad	0x3fec7a95b089c55c              # double 0.88996395568953401
	.quad	0x3fe60ac2aea73c69              # double 0.68881353485074925
	.quad	0x3feee64a55c3cfe1              # double 0.96561161757426472
	.quad	0x3fe2028b899e394f              # double 0.56281067732360579
	.quad	0x3fe7d67174083240              # double 0.74492714560035012
	.quad	0x3fd538e33d1b5d38              # double 0.33159714667768325
	.quad	0x3fe552f5cf04b5cf              # double 0.6663769763305768
	.quad	0x3fee2c439afaf50d              # double 0.94290333051290676
	.quad	0x3fd3af50f8c9b0f2              # double 0.30757545753182491
	.quad	0x3fead588e900e814              # double 0.83856626041893145
	.quad	0x3fe5ae8d30a31626              # double 0.67755755900788439
	.quad	0x3fdf69c46a61cbc8              # double 0.49083052052372667
	.quad	0x3fca0c10f017e688              # double 0.20349323008831655
	.quad	0x3fd0d5754ae6c702              # double 0.2630284530124386
	.quad	0x3fe9493edf26738d              # double 0.79019111236594741
	.quad	0x3fd7a92ac2a50c10              # double 0.36970013626358966
	.quad	0x3fc41ee504168ed8              # double 0.15719282817473501
	.quad	0x3feb02c379c1d5b7              # double 0.84408735066124663
	.quad	0x3febd1a9bb3751c0              # double 0.86934362950938038
	.quad	0x3fe235e63cb691b2              # double 0.56907951219596087
	.quad	0x3fd036361c7483a4              # double 0.25330879954167984
	.quad	0x3fde1fa2df7c14d0              # double 0.47068092178990373
	.quad	0x3fea9c9983b3ef82              # double 0.83161617015092326
	.quad	0x3fe0800af8971caf              # double 0.51563023140706388
	.quad	0x3fe0bc3374a8e93d              # double 0.52297375474089558
	.quad	0x3fe6f05465a31fc7              # double 0.71683711863533339
	.quad	0x3fe698080bbe80c4              # double 0.70605852407245395
	.quad	0x3fe4a1cea9f9c63a              # double 0.64475186537146745
	.quad	0x3fc6ac2939fae088              # double 0.1771289380174077
	.quad	0x3fd368a922921a5e              # double 0.30326298118635531
	.quad	0x3fec0ad5fc47efd8              # double 0.87632273934968463
	.quad	0x3fe4393b42e2c457              # double 0.63198626578936057
	.quad	0x3fe5faef793d1b63              # double 0.6868817680304854
	.quad	0x3fc945eb2894fcd8              # double 0.19744624597112792
	.quad	0x3fea9a1fb3f14920              # double 0.83131394524597013
	.quad	0x3fe298482382002d              # double 0.58108908591385033
	.quad	0x3fe349a382ee6500              # double 0.60273910114770501
	.quad	0x3fed2b73f844f661              # double 0.911554322148458
	.quad	0x3fe1d07841dc3194              # double 0.55669796813303885
	.quad	0x3fcac61c282b33d0              # double 0.20917083703389361
	.quad	0x3fe847e407e6e83e              # double 0.75877572577815733
	.quad	0x3fea150ef53bb427              # double 0.81507060906517814
	.quad	0x3fa133eaf36fc0a0              # double 0.033599226204274801
	.quad	0x3fed6812968e1a23              # double 0.91895417599954887
	.quad	0x3fcc469a900ede50              # double 0.22090465578161167
	.quad	0x3fd082483ba97b8e              # double 0.25795179201480145
	.quad	0x3fea365967801e8c              # double 0.81913442816672121
	.quad	0x3f9abb10d48c96e0              # double 0.026104224179241409
	.quad	0x3feb8ea267b373c1              # double 0.86116142515276561
	.quad	0x3fda8bb54cb7b8ca              # double 0.41477711193045919
	.quad	0x3feb0453159f4e68              # double 0.84427789900878469
	.quad	0x3fe9533b367ef7d9              # double 0.79141007083648696
	.quad	0x3fe4a82ec2f3a127              # double 0.64553011013507422
	.quad	0x3feda6421c9962ab              # double 0.92654519639753141
	.quad	0x3fd03e6b4a4582ce              # double 0.25380975964621377
	.quad	0x3feb807657d7f120              # double 0.85943143040598002
	.quad	0x3fe55850656c32c2              # double 0.66703052338706237
	.quad	0x3fde818f7f54a94c              # double 0.47665774759902457
	.quad	0x3febff693ebe311c              # double 0.87492811445693829
	.quad	0x3fbb9180759bdbe0              # double 0.10768893119153189
	.quad	0x3fe43b8373c92590              # double 0.63226482977295184
	.quad	0x3fd3fd2fed4e872a              # double 0.3123283212136011
	.quad	0x3fd6b46e11d0a0a4              # double 0.35476257076016737
	.quad	0x3f7ba5288681f200              # double 0.0067493041061621462
	.quad	0x3fc9f2b68d91f830              # double 0.20271951592070669
	.quad	0x3fe1a49dee5f53e2              # double 0.55134483868698347
	.quad	0x3fedcea61ab0ee76              # double 0.93147568905938161
	.quad	0x3fe5ebdd1ac0fd65              # double 0.68504195428242254
	.quad	0x3fd2760586572ee6              # double 0.28845346564479113
	.quad	0x3fe1c3ece4cf39f7              # double 0.55516667069770065
	.quad	0x3feeb17a64e841b4              # double 0.95916480740020526
	.quad	0x3fd169ee07649dd4              # double 0.27209044191337495
	.quad	0x3fe314805b82b534              # double 0.59625261185798317
	.quad	0x3fe68ca9a3e260d5              # double 0.70467073448801421
	.quad	0x3fdff3a3aeff69e0              # double 0.49924556817646071
	.quad	0x3fba9a43f31a74a8              # double 0.10391640362873267
	.quad	0x3fe85f22a58ec2e2              # double 0.76161320052605341
	.quad	0x3fd2cad1f566e440              # double 0.29362915959388047
	.quad	0x3fd24013ca32cd96              # double 0.28516096826498349
	.quad	0x3fe148c4e0b42935              # double 0.54013294112636479
	.quad	0x3fe107499dcbc90c              # double 0.53213959521807075
	.quad	0x3fee4e6472d9e3d4              # double 0.94706938201772539
	.quad	0x3facf7c326a2f5c0              # double 0.056577776399972191
	.quad	0x3fe7129505702035              # double 0.72101832449062064
	.quad	0x3fd23d0e3fd3a21a              # double 0.28497654183459675
	.quad	0x3fea3ff6dd809f22              # double 0.82030814420884135
	.quad	0x3fd4f6ab3b6fcfd0              # double 0.32755547336932711
	.quad	0x3fde1c3aee10af66              # double 0.47047303436806087
	.quad	0x3fd09da7d243344c              # double 0.25962253125618839
	.quad	0x3fe7332899b01651              # double 0.72499494568973877
	.quad	0x3fec89a1b72a17f0              # double 0.89180074476530358
	.quad	0x3fc506eefe4ae430              # double 0.16427409569385665
	.quad	0x3fef68055089fb90              # double 0.98144784670135898
	.quad	0x3fdffa1d4a0bb5f2              # double 0.49964077216176783
	.quad	0x3fdd18b7615aba88              # double 0.45463356501833418
	.quad	0x3fe205a9ae1c921a              # double 0.56319126135037156
	.quad	0x3fdeefdd4754a47c              # double 0.48339015928156193
	.quad	0x3fed3337848a48b2              # double 0.91250205885650915
	.quad	0x3fe21ffb59afbb81              # double 0.56640403286824903
	.quad	0x3f722b4503884a80              # double 0.0044357963420390556
	.quad	0x3fcc51e1831d9f40              # double 0.2212488069737848
	.quad	0x3fdb86ca429d7ca6              # double 0.43010193353070247
	.quad	0x3fe1bcdfb7665e9a              # double 0.55430589504517802
	.quad	0x3fda38761299e44e              # double 0.40969611946599549
	.quad	0x3fe78b0ebc9ca49b              # double 0.73572480047473066
	.quad	0x3fdbb93fedf97fd2              # double 0.43318174590785674
	.quad	0x3fe452e5d627330e              # double 0.63511936022550386
	.quad	0x3fee60f65e85d9f8              # double 0.9493362280034594
	.quad	0x3fe810cd0eea4727              # double 0.75205090439906008
	.quad	0x3fd4a2473534ddd8              # double 0.32240467258404015
	.quad	0x3fdc02e3b311bf98              # double 0.43767635810126526
	.quad	0x3fdd0353cc1cbeba              # double 0.45332808430519445
	.quad	0x3fddd51b488961f2              # double 0.4661319931379061
	.quad	0x3fdc3ab77b01972a              # double 0.44108378422093841
	.quad	0x3feadaa2b8460b6b              # double 0.83918891898097792
	.quad	0x3fea5467d8c3fa70              # double 0.82280342423457675
	.quad	0x3f5bf456c25b5200              # double 0.0017062041528578265
	.quad	0x3fd40b920e9d12ae              # double 0.313206209441243
	.quad	0x3fde49db9349797e              # double 0.47325791724679067
	.quad	0x3fefe3d1dd6a45c0              # double 0.99656003232137635
	.quad	0x3fe5929318987ad4              # double 0.67414240650017598
	.quad	0x3fe2a23b0bd4bce8              # double 0.58230354605430268
	.quad	0x3fd7a5176fb2d756              # double 0.36945138843599545
	.quad	0x3fe4e8973bdf07c4              # double 0.65339242642971174
	.quad	0x3fe49ac12b918672              # double 0.64389093884910964
	.quad	0x3fc2641694be8134              # double 0.14367944968126667
	.quad	0x3fec55570c8b6c6b              # double 0.885417484761445
	.quad	0x3fdce3b1a5a62020              # double 0.45139733482983679
	.quad	0x3fca8de0d98de6f0              # double 0.20745478270310214
	.quad	0x3fe0ab9f1c45e6c5              # double 0.52094989320831842
	.quad	0x3fe0049411f095e2              # double 0.50055888656487135
	.quad	0x3fea7b3505f0855a              # double 0.82753993187013042
	.quad	0x3fefd5fe1fd77e1b              # double 0.99487215251059823
	.quad	0x3fd2ea1877043ee0              # double 0.29553805945123024
	.quad	0x3fd82c1a5894628c              # double 0.37769182825426451
	.quad	0x3fccdae8ac4a2738              # double 0.22543056881505108
	.quad	0x3fc7edb9aeb5cf8c              # double 0.18694230108996768
	.quad	0x3fe074af07d06afb              # double 0.51424361730764134
	.quad	0x3fc601b2a316f630              # double 0.1719268127762219
	.quad	0x3fe5770e72f9c5ce              # double 0.67078325706659725
	.quad	0x3fd07b36d41f96b0              # double 0.25752039637732604
	.quad	0x3fc53451c84629e0              # double 0.16565916327483787
	.quad	0x3fa606a40dabe6f0              # double 0.04301941553963029
	.quad	0x3fd8df6a7d20e7ea              # double 0.38863622874816761
	.quad	0x3fc6e6ae90281ea8              # double 0.17891485251333461
	.quad	0x3fe5aaff58a0e72b              # double 0.67712371168383834
	.quad	0x3fa79541edc09e80              # double 0.046060619614135767
	.quad	0x3fdba8af2cfa3a2e              # double 0.43217067138985754
	.quad	0x3fed2feb4785f07f              # double 0.912099494642021
	.quad	0x3f9c97d858618ca0              # double 0.027922993082381553
	.quad	0x3fda5c3a45670022              # double 0.41187912728855924
	.quad	0x3fc65e6bf55a8914              # double 0.17475652198943037
	.quad	0x3fe7b60cc79312cd              # double 0.74097289065738325
	.quad	0x3fe0b3e7c2c7f021              # double 0.52196109812894431
	.quad	0x3fea51c355cb69ea              # double 0.82248083836321695
	.quad	0x3fbce1ff044621a8              # double 0.112823427718587
	.quad	0x3fd5a415d5c31afa              # double 0.33813997149665875
	.quad	0x3fd5f8ca90958e0a              # double 0.3433100139575066
	.quad	0x3fdf5d3aa855bef4              # double 0.49006525458297223
	.quad	0x3fe79987dd204457              # double 0.73749154270820838
	.quad	0x3fe60a4a5c801ea7              # double 0.68875616137025453
	.quad	0x3fbac66cf63be718              # double 0.10459023486683028
	.quad	0x3fe459ce4e19f14d              # double 0.6359626317421686
	.quad	0x3fe7d4ffeafdfcd8              # double 0.74475093743231024
	.quad	0x3fe811cbbfcb9256              # double 0.75217235050201725
	.quad	0x3fee01830c87c5f7              # double 0.93768455931984718
	.quad	0x3fdeb9c4005512b2              # double 0.48008823425724778
	.quad	0x3fd6db9ab5eada72              # double 0.35715358510370898
	.quad	0x3fea6f0435062191              # double 0.82605181080093548
	.quad	0x3fea5fc09fa64cb6              # double 0.82418852979244295
	.quad	0x3fd4942a96ada294              # double 0.32154335703538917
	.quad	0x3fe9587b6c83ca56              # double 0.79205104059503628
	.quad	0x3fd3ded2631e70c6              # double 0.31047496490078819
	.quad	0x3fe2adea8188fa61              # double 0.58372998523539021
	.quad	0x3fe410b80986fce8              # double 0.62704088078308207
	.quad	0x3fb01ca9d2305980              # double 0.062937368217125922
	.quad	0x3fe04f6276ec6b5f              # double 0.50969050624130918
	.quad	0x3fcfd97c53e98264              # double 0.24882463547966716
	.quad	0x3fadcf9cdc5bdc40              # double 0.058224584483405284
	.quad	0x3fe7a0b746280371              # double 0.73836864187624773
	.quad	0x3fcaf2f9f023364c              # double 0.21054004884210753
	.quad	0x3feb7340408de332              # double 0.85781872375728185
	.quad	0x3fd01fccbba31b84              # double 0.25194090198458974
	.quad	0x3f7e959b7ec94e80              # double 0.0074668954881250693
	.quad	0x3f408fcd00367000              # double 5.0542363935646151E-4
	.quad	0x3fe0922ff116d79c              # double 0.51784512603511557
	.quad	0x3fedba5424285ddf              # double 0.92899519979522072
	.quad	0x3fedc674e7d1ebf8              # double 0.93047566678376281
	.quad	0x3fe24e0eb4638d76              # double 0.57202849609568207
	.quad	0x3feee72cba876740              # double 0.96571957045964751
	.quad	0x3fe09370b5385df5              # double 0.51799807924811481
	.quad	0x3fe8699811ad61da              # double 0.76288989498703619
	.quad	0x3fce04d435eb2ff4              # double 0.23452236778973623
	.quad	0x3fcb1cb97ca69dec              # double 0.21181410395114086
	.quad	0x3fe3d8f5e2fd767b              # double 0.62023443540574819
	.quad	0x3fb3bbeb4ff0e888              # double 0.077086169258935411
	.quad	0x3fe9bc5410520aae              # double 0.80423930347054351
	.quad	0x3fd79d7d8ffcc584              # double 0.36898745595234339
	.quad	0x3fe0c2d60fc77588              # double 0.52378371316778871
	.quad	0x3fe8009ac2dd1a48              # double 0.75007379588425582
	.quad	0x3fd6cad32390c706              # double 0.35612944100567778
	.quad	0x3fc25b037be253c8              # double 0.1434025149252689
	.quad	0x3fddd227946d56be              # double 0.46595181937059837
	.quad	0x3fe972dcbdc1e600              # double 0.7952712732505347
	.quad	0x3fe5c1468ba4d922              # double 0.6798432090206783
	.quad	0x3fdea6a75f9ef54e              # double 0.47892174089414119
	.quad	0x3fba143874c0c210              # double 0.10187104082502452
	.quad	0x3fe84129721faf57              # double 0.75795433320807148
	.quad	0x3fd23b3623694614              # double 0.28486398180129524
	.quad	0x3feebc2a5cc2b6e9              # double 0.96046941869073265
	.quad	0x3fd1c7c9ee9d3f54              # double 0.27781914045498479
	.quad	0x3fe93e12df38dbe6              # double 0.78882735822741945
	.quad	0x3fd0f4dc2eb2201a              # double 0.26494507370125719
	.quad	0x3fe4b8753db67bed              # double 0.64751684239661034
	.quad	0x3fc58b6ec4911a1c              # double 0.16831764791477688
	.quad	0x3fe1deda1e9c4216              # double 0.55845361689177042
	.quad	0x3fdf50c712897b18              # double 0.48930527506119992
	.quad	0x3fea14950390ab73              # double 0.81501246162711849
	.quad	0x3fe2ad8ed27c68ff              # double 0.58368626699964909
	.quad	0x3fee8a82cfe8c1de              # double 0.9544080792166445
	.quad	0x3fcbf20dff61d394              # double 0.21832442254858775
	.quad	0x3fe35d8efc580815              # double 0.60517071996605643
	.quad	0x3fa81c91f1ce4f20              # double 0.047092972533532285
	.quad	0x3fc14c0117368c8c              # double 0.13513196595622323
	.quad	0x3fee4b9be10d7798              # double 0.94672960239016656
	.quad	0x3fc7de1f18e129c8              # double 0.18646610941716646
	.quad	0x3fed6e9865180b72              # double 0.91975040192515523
	.quad	0x3fedf225c3b3cb45              # double 0.9358090231238313
	.quad	0x3fd752ad09a724da              # double 0.36442113821665389
	.quad	0x3feb6904ff44dbd8              # double 0.85656976563665932
	.quad	0x3fe4836711af5648              # double 0.6410403581055073
	.quad	0x3fe88096f34564a8              # double 0.76569697870140363
	.quad	0x3fd529513467dd48              # double 0.33064680211778752
	.quad	0x3fe8dec40d2e6aeb              # double 0.77719309401012759
	.quad	0x3fe23a676a3586b4              # double 0.56962939018213499
	.quad	0x3fd2382405c5ee5c              # double 0.28467655719552964
	.quad	0x3fd08d8aef379d72              # double 0.25863908158358762
	.quad	0x3fe2ce9f37ce0698              # double 0.58772240542767218
	.quad	0x3fddbabbf37e05b0              # double 0.46452235010664378
	.quad	0x3fdfaa30a4f4d8a6              # double 0.4947625742819447
	.quad	0x3fe7bcc0d46c5283              # double 0.74179116715329518
	.quad	0x3fee8bdf122b1781              # double 0.95457414196492618
	.quad	0x3fe3576645822b19              # double 0.60441888404725141
	.quad	0x3fd9ecf4190749a6              # double 0.40508749431787761
	.quad	0x3fdba855158ee3c8              # double 0.43214919190682766
	.quad	0x3fe422651974ec6f              # double 0.62919859859483818
	.quad	0x3fb0794979009ca8              # double 0.06435069278869554
	.quad	0x3fda613e9eda2bbc              # double 0.41218534005082197
	.quad	0x3fed6d9c662531f3              # double 0.91963024091961498
	.quad	0x3fe3b689eb07e2c4              # double 0.61603256134466067
	.quad	0x3fef184ae0280842              # double 0.97171539097349346
	.quad	0x3fe8e6962376e355              # double 0.77814776350633486
	.quad	0x3fd2b9a3ea4e1572              # double 0.29258058434819312
	.quad	0x3fe0836895799758              # double 0.51604108042077268
	.quad	0x3fefa273e5155751              # double 0.98858065359920932
	.quad	0x3fecb8a2ce9b5402              # double 0.89753856995469072
	.quad	0x3fe33b458ff09eaa              # double 0.60098531831041169
	.quad	0x3fe0d322496ff978              # double 0.52577318518869642
	.quad	0x3fdc115af5086b06              # double 0.43855928353302465
	.quad	0x3fd86f4fe779bbda              # double 0.38179395298987873
	.quad	0x3fe8f08e02932e81              # double 0.77936459067264263
	.quad	0x3fce27e0b61ffb1c              # double 0.23559197323626158
	.quad	0x3fc83fc64e715d74              # double 0.18944624738899629
	.quad	0x3fe36dfd70b0d1a7              # double 0.60717651376630932
	.quad	0x3fd53e4be093bf52              # double 0.33192727023469104
	.quad	0x3fde4e54beb80bbc              # double 0.47353094696898856
	.quad	0x3fc62ced29183224              # double 0.17324604517524833
	.quad	0x3fdc379ec1a4ceda              # double 0.44089478407407301
	.quad	0x3fda043dcd9d7efa              # double 0.40650887565242011
	.quad	0x3fd7133e8e7e3082              # double 0.36054958262753456
	.quad	0x3fd0ce6186cb46de              # double 0.26259649432641463
	.quad	0x3feb925a5629ed45              # double 0.86161534146177898
	.quad	0x3fc8412d30c57004              # double 0.18948902970703341
	.quad	0x3fdd41fff200e950              # double 0.45715330727729953
	.quad	0x3fd397e9eb40d1ea              # double 0.3061470792192994
	.quad	0x3fe7d38eb1ecd71a              # double 0.74457487822539581
	.quad	0x3fe490ac9affdfcc              # double 0.6426604297002938
	.quad	0x3fee9f37b050965f              # double 0.95693573414309785
	.quad	0x3fcf2944535f7dc8              # double 0.24344686575839902
	.quad	0x3faabade72673eb0              # double 0.052206946816679589
	.quad	0x3fc2da3309e3f814              # double 0.14728391631064197
	.quad	0x3fc3bc7125032cb0              # double 0.15418829257246136
	.quad	0x3fa30bac51f7e890              # double 0.037198433881671211
	.quad	0x3fef87e0246ccbd9              # double 0.98533637155775999
	.quad	0x3fd46954e5cc8daa              # double 0.31892893258392496
	.quad	0x3fde79d77b9e022c              # double 0.47618662902826503
	.quad	0x3fef0e2020604f78              # double 0.97047430346945784
	.quad	0x3fe390f58fcef583              # double 0.61144521796784124
	.quad	0x3fd2d6047bc18546              # double 0.29431259236851692
	.quad	0x3fec2703910b52e0              # double 0.87976244286491223
	.quad	0x3fe79bbeefb4faa8              # double 0.73776194398654571
	.quad	0x3fe862a54879705e              # double 0.7620417037501388
	.quad	0x3fe714beb85db637              # double 0.72128234871860897
	.quad	0x3fd7f6fed066c5e4              # double 0.37445040084557335
	.quad	0x3fed903daf68544d              # double 0.92385753878864707
	.quad	0x3fcbd61bcd3794f0              # double 0.21747157593123445
	.quad	0x3fe5f32f84d3ad74              # double 0.68593574469325214
	.quad	0x3fe658dd8e501729              # double 0.69834783359030894
	.quad	0x3fdf332b812edd62              # double 0.48749816527875656
	.quad	0x3fd4e40477b3577e              # double 0.32641708077914433
	.quad	0x3fe0b017f81bae63              # double 0.52149580439204291
	.quad	0x3fb559bc43325db0              # double 0.083400503545240978
	.quad	0x3fe081261781ba16              # double 0.51576523390923756
	.quad	0x3f8778ab29bfe340              # double 0.011460625850291728
	.quad	0x3fe77d6452e99849              # double 0.73405662721484888
	.quad	0x3f8fdd38d298ea40              # double 0.015558666159553813
	.quad	0x3fcb94616d2c0be0              # double 0.21546571570078665
	.quad	0x3fe46e458595ea30              # double 0.63846088496149456
	.quad	0x3fb20f3d48ebb138              # double 0.070545034697436004
	.quad	0x3fe39dfb8559472b              # double 0.61303497357059678
	.quad	0x3fca020528a6599c              # double 0.2031866501317382
	.quad	0x3fddba4287821358              # double 0.46449340089048041
	.quad	0x3feaf3f09455bd5d              # double 0.84227780315078926
	.quad	0x3fd12ff8a0b1c888              # double 0.2685529298097511
	.quad	0x3fd270491def994a              # double 0.28810336993628438
	.quad	0x3fe3cd87bc74ea9f              # double 0.61883913810682489
	.quad	0x3fe4e46c0a35a1b7              # double 0.6528835486797594
	.quad	0x3fcbc6fbf2381c58              # double 0.21701001479252358
	.quad	0x3fb21b66c60b8940              # double 0.070730613089414085
	.quad	0x3fb761e723f2ae90              # double 0.091337629581796031
	.quad	0x3fe2b019a247822d              # double 0.58399659819776206
	.quad	0x3f90cee8201d67a0              # double 0.016414286575446746
	.quad	0x3feb2369fca03c9f              # double 0.84807299939156511
	.quad	0x3fd32ecc0e434954              # double 0.2997312678609394
	.quad	0x3fe83df8f1547cba              # double 0.75756499418994072
	.quad	0x3fdeaf0af1449da4              # double 0.47943376122790426
	.quad	0x3fe85f45c9a03067              # double 0.76162995700861991
	.quad	0x3feb0c14315fdb58              # double 0.84522447246022647
	.quad	0x3fc118305ad814a4              # double 0.13355068622346267
	.quad	0x3fd420606e2a7dbc              # double 0.31447611578365886
	.quad	0x3fe3f1019b45664b              # double 0.62316971136460475
	.quad	0x3fed09e92b17f388              # double 0.90745981613837134
	.quad	0x3fb5898f71633978              # double 0.084130253965872259
	.quad	0x3fef4eae623dafd3              # double 0.9783546370285826
	.quad	0x3fddafac14f6eae6              # double 0.46384717986408786
	.quad	0x3fee93ee0026f210              # double 0.95555782346451856
	.quad	0x3f9d4a2a2f864fc0              # double 0.028603228712725359
	.quad	0x3fc8483a5cf27bfc              # double 0.18970422304570878
	.quad	0x3fed36ff3c59df2a              # double 0.91296350276295368
	.quad	0x3fe84364ca913101              # double 0.75822677196404709
	.quad	0x3fb38853aff1a180              # double 0.076298933463140983
	.quad	0x3fd4a0fc7e0d850a              # double 0.32232582387776232
	.quad	0x3f81b555f40e1d40              # double 0.0086466517548290378
	.quad	0x3fdf174e647fd210              # double 0.48579749884018586
	.quad	0x3fc54257b55ce438              # double 0.16608711581810254
	.quad	0x3fd7ebd7e6b8c7ec              # double 0.37376973658967816
	.quad	0x3fd605f291f4e7a8              # double 0.34411300901012476
	.quad	0x3fe402a686b05162              # double 0.62532354647059329
	.quad	0x3fe219e4b24a7057              # double 0.56566080877702063
	.quad	0x3fca2c833d120424              # double 0.20448341829254091
	.quad	0x3fec1b8a579fcedb              # double 0.87836186517821646
	.quad	0x3fe02d6aadf65e76              # double 0.50554403283145066
	.quad	0x3fd9bc3c53ae650e              # double 0.40211399242396417
	.quad	0x3fb82558de63a970              # double 0.094319872183097563
	.quad	0x3fd3da9d14ae855e              # double 0.31021811504077401
	.quad	0x3fea9dd5ef4994b7              # double 0.83176705108475957
	.quad	0x3fcbabd8346f25d8              # double 0.21618177948248163
	.quad	0x3fe5836f8520428a              # double 0.67229438782858719
	.quad	0x3feb1447620f441f              # double 0.84622544433853253
	.quad	0x3fe73a7cba674485              # double 0.72588955313598602
	.quad	0x3fda35c17c14f9da              # double 0.40953099362732603
	.quad	0x3fc78d1c458e6b18              # double 0.18399384876541869
	.quad	0x3fea063beae07499              # double 0.81326099275942731
	.quad	0x3fed87e37bf6cd61              # double 0.92283796512348826
	.quad	0x3f9d4c76c6a96de0              # double 0.028611999392848975
	.quad	0x3fe714bd9bbdcb23              # double 0.721281818563828
	.quad	0x3fd03c3e5732a110              # double 0.25367697253615606
	.quad	0x3fd0b7a79bd3bafa              # double 0.26120939462172965
	.quad	0x3fe22f0b6dec1de7              # double 0.56824275464253737
	.quad	0x3fc96df44473754c              # double 0.19866803495726015
	.quad	0x3fdba1a37714d9c6              # double 0.43174063328788426
	.quad	0x3fe71f59a10b6c18              # double 0.72257691816355685
	.quad	0x3fddf7437c890200              # double 0.46821677362098058
	.quad	0x3fe4a4d6fe449168              # double 0.64512204801262119
	.quad	0x3fe00a0fa0379426              # double 0.50122815410998522
	.quad	0x3fcb8442aa66f914              # double 0.21497376747533592
	.quad	0x3fb2b9918e2a2d68              # double 0.073144051750366423
	.quad	0x3fd2f812acfe4e46              # double 0.29639117139706561
	.quad	0x3fbdee3e996f6f40              # double 0.1169165730092887
	.quad	0x3f7015dbab4bbc80              # double 0.0039270954919025103
	.quad	0x3fe9c8a4d2d5b791              # double 0.80574265650442289
	.quad	0x3fe7272babe2d397              # double 0.72353156634800342
	.quad	0x3fcf0abec9c2d66c              # double 0.2425154194985909
	.quad	0x3fd243ec5cd03df6              # double 0.28539570869267494
	.quad	0x3fe53db99a33b149              # double 0.66378479116023315
	.quad	0x3fbb2805ce5bae40              # double 0.10607944763221955
	.quad	0x3fc980118bd5c4b4              # double 0.1992208416736837
	.quad	0x3fcac4c59c41a76c              # double 0.20913000230512624
	.quad	0x3fec2415f24d4997              # double 0.87940499615278866
	.quad	0x3fb12fe96721e2a8              # double 0.067137324980545032
	.quad	0x3fc655bf5afed3c8              # double 0.17449180548797316
	.quad	0x3fedd76e681cbde4              # double 0.93254776319912169
	.quad	0x3fe7cf922efcb1f2              # double 0.74408826043287335
	.quad	0x3fe0df709247a9af              # double 0.52727535791682623
	.quad	0x3fd1197e981ecace              # double 0.26718106132026953
	.quad	0x3fa94c32ab253ef0              # double 0.049409469024451869
	.quad	0x3fe913ddd1ae48d4              # double 0.7836751075103856
	.quad	0x3fb232e50c3c4070              # double 0.071089091765544898
	.quad	0x3fda920111de92d4              # double 0.41516138787328072
	.quad	0x3fcab53d34e0ecf8              # double 0.20865597803081193
	.quad	0x3fd628f2a44349a0              # double 0.34624925652783567
	.quad	0x3fd541c3a45c2318              # double 0.3321389298512698
	.quad	0x3fe4bef4b9283e13              # double 0.64831005252375673
	.quad	0x3fd4f2962ef32eac              # double 0.32730631432489576
	.quad	0x3fecd35bf9b27c80              # double 0.9008006932161976
	.quad	0x3feb30d11eb74d15              # double 0.84970909117910998
	.quad	0x3fe7862ae7860876              # double 0.7351278802818928
	.quad	0x3fedc5f146dec0cb              # double 0.9304129013235295
	.quad	0x3fe8efe0d5cf3c02              # double 0.77928201446218304
	.quad	0x3fd3ac1e9999cdcc              # double 0.30738034248426227
	.quad	0x3feb1962d2e6fed0              # double 0.8468488806901977
	.quad	0x3fe477541d45ccbc              # double 0.63956647603335837
	.quad	0x3f971ee3fcbe51e0              # double 0.022578775693164022
	.quad	0x3fe3c2a7bd6683d9              # double 0.61751162521624814
	.quad	0x3fd34bebc74022fa              # double 0.30150885065135891
	.quad	0x3fe51f22551948c2              # double 0.66005055065968343
	.quad	0x3fc211d97873a934              # double 0.14116972333369804
	.quad	0x3fd46d54b9696400              # double 0.3191730318699797
	.quad	0x3fe1b103e9fb3d48              # double 0.55285831164830146
	.quad	0x3fe9147ef0278340              # double 0.78375193505426211
	.quad	0x3fdfff4ed2116540              # double 0.49995775713394508
	.quad	0x3fec7e4d25313419              # double 0.89041764511205479
	.quad	0x3fd6a205f98dc2be              # double 0.35363911982043905
	.quad	0x3fde93dff0cc1822              # double 0.47777555957179818
	.quad	0x3fe15534843f4fc4              # double 0.54165101842453867
	.quad	0x3fe9e7f2d4a3a45c              # double 0.80956403285120925
	.quad	0x3fd93bbf32d7b542              # double 0.3942716595182284
	.quad	0x3fe407958f6371a3              # double 0.62592580800587816
	.quad	0x3fe388126387e491              # double 0.61036033095946796
	.quad	0x3fe9afddcb08b710              # double 0.80271806387983879
	.quad	0x3fe792a97292bf1a              # double 0.73665306451400459
	.quad	0x3fe87f09f1dc55ea              # double 0.76550767172255729
	.quad	0x3fd150b402c024fc              # double 0.27055073040590094
	.quad	0x3fee20ad36513cf4              # double 0.94148884400229215
	.quad	0x3fe7fdcd451f931c              # double 0.74973166943218272
	.quad	0x3fd8a20c530355ce              # double 0.38489063364735621
	.quad	0x3fe6edf64ef9272b              # double 0.71654811310256628
	.quad	0x3fee6dd6a0a0fea3              # double 0.95090800640896977
	.quad	0x3feb9df7148c7e71              # double 0.8630328561157069
	.quad	0x3fabefda8adc8fd0              # double 0.054564313364863559
	.quad	0x3fef6e7531505d5e              # double 0.98223361617685234
	.quad	0x3feb979757d9ac50              # double 0.86225478323229687
	.quad	0x3fe00d096536b6a1              # double 0.50159139412217624
	.quad	0x3fe3ae2c2c7cd6ee              # double 0.61501129807467492
	.quad	0x3fef1e7e132c2304              # double 0.97247222656832876
	.quad	0x3fd47232257a11c2              # double 0.31946996364447611
	.quad	0x3fe60975705f173c              # double 0.68865463206814281
	.quad	0x3fe2e1255a05bb32              # double 0.58998363096711715
	.quad	0x3feda3401ef5abec              # double 0.9261780361824754
	.quad	0x3fdc6e9ea014e840              # double 0.44425168641067003
	.quad	0x3fe3bd57266d382a              # double 0.616862845470455
	.quad	0x3fdab2b1477bbe8e              # double 0.41715652447508311
	.quad	0x3f74f85b5e005900              # double 0.0051196640997857035
	.quad	0x3feb5ae90b85e89a              # double 0.85484745264627127
	.quad	0x3fed27dfc49f2aa7              # double 0.91111744311031806
	.quad	0x3fd2f0bd50c4c9b6              # double 0.2959435738331665
	.quad	0x3fd57b841d3d8398              # double 0.33566382270333284
	.quad	0x3fb7fb9119c2c250              # double 0.093682354726078331
	.quad	0x3feb27bd71e276d1              # double 0.84860107653704564
	.quad	0x3fe24f6ea44abe96              # double 0.57219631279254446
	.quad	0x3fc1adc40c7d382c              # double 0.1381154118520852
	.quad	0x3fe03db624ff53da              # double 0.50753314233827074
	.quad	0x3fe63deb74472a93              # double 0.69505856237931807
	.quad	0x3fef5221e0e20715              # double 0.97877592012830183
	.quad	0x3fe95e7c045ee5c8              # double 0.79278374532366858
	.quad	0x3fe76733dee3bc04              # double 0.73134797604677759
	.quad	0x3fe79cee8a718a23              # double 0.73790671386479223
	.quad	0x3fb820a6cd2ae828              # double 0.094248223390338226
	.quad	0x3fb5efb73deed0f0              # double 0.085689022655802693
	.quad	0x3fd2b99237f70c26              # double 0.29257636514029384
	.quad	0x3fea8076ef922f89              # double 0.82818171302049948
	.quad	0x3fe2cf8846aedfd3              # double 0.58783353619855416
	.quad	0x3fd8c6affdb3763c              # double 0.38712692046633257
	.quad	0x3fe7680ee5672310              # double 0.73145241551637419
	.quad	0x3fb6891f1ff39f20              # double 0.088029809284873028
	.quad	0x3fc6ffba3d1d89dc              # double 0.17967918380880021
	.quad	0x3fe7a807d558f4ed              # double 0.73926154775076969
	.quad	0x3fd49aea50204b1a              # double 0.32195527863329831
	.quad	0x3fd1edf7d2cc0754              # double 0.28014941774028057
	.quad	0x3fd8e772ecb8edfe              # double 0.38912652127666536
	.quad	0x3fec21fd9ee9e226              # double 0.87914925611318462
	.quad	0x3fa3a0c971373d40              # double 0.038336081571851199
	.quad	0x3faa55f4976ba8f0              # double 0.051437037929490503
	.quad	0x3fee91aee7fcbb86              # double 0.95528359708792787
	.quad	0x3fd0a94e40bc6974              # double 0.26033359834550329
	.quad	0x3fe211f26625f83e              # double 0.56469078017085628
	.quad	0x3fe3b606f383d5d7              # double 0.61597011147994862
	.quad	0x3fa086684ffd2880              # double 0.032275447620649267
	.quad	0x3fb608eb034d1490              # double 0.086073578172618292
	.quad	0x3fee7bc3afbd7071              # double 0.95260795902460249
	.quad	0x3fe587b666fc3b86              # double 0.67281646837533127
	.quad	0x3fd6f1ace314095a              # double 0.35850069213497238
	.quad	0x3fc31c09e7e2d41c              # double 0.14929317305146206
	.quad	0x3fe986304bb73e08              # double 0.79763045109024322
	.quad	0x3fae4383ee4d5450              # double 0.059108851279838448
	.quad	0x3fc02449a487e8e4              # double 0.12610741170630668
	.quad	0x3f8fa5410d602200              # double 0.015451915951431694
	.quad	0x3fb42382d07573c8              # double 0.078666854756604399
	.quad	0x3fe72f5615199005              # double 0.72452835198464582
	.quad	0x3fea79557265d137              # double 0.82731125205331224
	.quad	0x3f8efc4ee79dc3c0              # double 0.01512967724167591
	.quad	0x3fe2d890cdf3b16f              # double 0.58893623566613751
	.quad	0x3fe1af0281cf92f0              # double 0.5526135001533401
	.quad	0x3fe97e01c8ac1017              # double 0.79663170999311006
	.quad	0x3fdefc6e19cb13a6              # double 0.48415710944055446
	.quad	0x3fe3bc4903c34529              # double 0.61673403487126166
	.quad	0x3fb8baed941522f8              # double 0.096602295544595651
	.quad	0x3fa715133c308480              # double 0.045082665536264166
	.quad	0x3fd4928c92fc8c82              # double 0.32144464830543751
	.quad	0x3fe835857fdd57c5              # double 0.75653338407095616
	.quad	0x3fd9fb5e0abc5bb2              # double 0.40596724556365438
	.quad	0x3fc0a6708e39c4ac              # double 0.13007933563816232
	.quad	0x3fe237a6f88517f0              # double 0.56929348506014144
	.quad	0x3feee3048ff254c9              # double 0.96521213640758063
	.quad	0x3fd05a5e7609c024              # double 0.25551568534047164
	.quad	0x3fd8a5a6d5a6395a              # double 0.38511057724180875
	.quad	0x3fe81dcffda216df              # double 0.75363921678282597
	.quad	0x3fdb7d09c3ed7eda              # double 0.42950672277036761
	.quad	0x3fc5465aac7c5570              # double 0.16620953962471274
	.quad	0x3fec58f1a8c65ba3              # double 0.8858574196227561
	.quad	0x3fe762037da6b573              # double 0.73071455518008432
	.quad	0x3fe249a03081f2e1              # double 0.57148751711028123
	.quad	0x3fefaf819e6b6b34              # double 0.99017411176041614
	.quad	0x3fcf8705fbea68b4              # double 0.24630808640069335
	.quad	0x3fea55b1b1ca3dc1              # double 0.82296070789919196
	.quad	0x3f8e1df0acb0ad80              # double 0.014705543775639596
	.quad	0x3fe3a65aff15035b              # double 0.61405706234664181
	.quad	0x3fca4c39a38d1a60              # double 0.20545120702645914
	.quad	0x3fd3721b0bcadd80              # double 0.30383945609670349
	.quad	0x3fead24770bdfc65              # double 0.83816883106181861
	.quad	0x3feedc6aff6f60e1              # double 0.96440648927366734
	.quad	0x3fec865f5511ac1d              # double 0.89140287985845001
	.quad	0x3fe46dc14bbf428e              # double 0.6383978347240189
	.quad	0x3fd8a1c99d649516              # double 0.38487472887421015
	.quad	0x3fcab45dde389494              # double 0.20862935400615312
	.quad	0x3fee5b0d536ea889              # double 0.94861475272524942
	.quad	0x3fcc6c312237fd78              # double 0.22205175562701718
	.quad	0x3fd3bff6f58633dc              # double 0.30859159447646589
	.quad	0x3fbb31fb5f0ab738              # double 0.10623141355855814
	.quad	0x3fe3c4ca70e2fb1e              # double 0.61777231262371735
	.quad	0x3fe4eec39ef6173b              # double 0.65414601370932901
	.quad	0x3fd45c71e61375e8              # double 0.31814238994942778
	.quad	0x3fc14b9a53b34904              # double 0.13511971556597058
	.quad	0x3fe6b9c86911c1c0              # double 0.71017857095107928
	.quad	0x3fe97ffdaec3f77c              # double 0.79687389501462702
	.quad	0x3fbe2e1027842138              # double 0.11789036717175783
	.quad	0x3fce2cd20c64d0d0              # double 0.23574281315962375
	.quad	0x3fe4e191cdc0a8a6              # double 0.65253534494447218
	.quad	0x3fe4d97702af3582              # double 0.65154600643442984
	.quad	0x3fde5eeed87fdee4              # double 0.47454424994019306
	.quad	0x3fdb6abe63e0aca8              # double 0.42839011911082503
	.quad	0x3fe037685165e0a7              # double 0.50676360986746694
	.quad	0x3fc0fee3b8315c98              # double 0.13277861112394329
	.quad	0x3fe6c2192d9f3810              # double 0.71119364653145745
	.quad	0x3fd11dbc3db16ea2              # double 0.26743989968029258
	.quad	0x3fe44e10528641b2              # double 0.63452926748327898
	.quad	0x3fcd81734609a2e8              # double 0.23051300926024187
	.quad	0x3fe40a67706354d8              # double 0.62627002669128284
	.quad	0x3fed7e21621ff5e2              # double 0.92164677777298842
	.quad	0x3fc7f26257ce3a80              # double 0.18708447730428546
	.quad	0x3fdff781c9fa976c              # double 0.49948162769793814
	.quad	0x3fbdafde78cd50f0              # double 0.11596479844348884
	.quad	0x3fe84423aa39a057              # double 0.7583177876194992
	.quad	0x3fd2fee6d79f82ec              # double 0.29680796677534604
	.quad	0x3fec6929c400dc96              # double 0.88783729822070501
	.quad	0x3fdd405ec20f2d64              # double 0.45705384207822974
	.quad	0x3fed3877cea3d1cb              # double 0.91314306601867068
	.quad	0x3fe162fcb6d153a5              # double 0.54333339411333681
	.quad	0x3fe5ea000915a70b              # double 0.6848144700463491
	.quad	0x3fb516f92b943b88              # double 0.082381795062458463
	.quad	0x3fd2a4ce48a002fa              # double 0.2913089474896392
	.quad	0x3fe8b6698fb511bc              # double 0.77226713245232003
	.quad	0x3fda2475583d1d56              # double 0.40847524277747504
	.quad	0x3fe64b1c27e6d179              # double 0.69666869920051433
	.quad	0x3fd074214f0728d6              # double 0.25708801953863991
	.quad	0x3fe20e202fa0eca3              # double 0.56422433187926335
	.quad	0x3fa0cc917f7a1d40              # double 0.032810732661398223
	.quad	0x3fe633f447d2fddf              # double 0.69384206798707371
	.quad	0x3fb8b8fa62822368              # double 0.096572541284457025
	.quad	0x3f3d201eb00fa800              # double 4.444193764913118E-4
	.quad	0x3fe58da7ba97e90e              # double 0.67354189342521109
	.quad	0x3fc28215d10b19dc              # double 0.14459488589473224
	.quad	0x3f9d49cc7ade5240              # double 0.02860183238915881
	.quad	0x3feef7567a4b6a77              # double 0.9676926029745364
	.quad	0x3fb87824348cd7d0              # double 0.095583212690001362
	.quad	0x3fe055e9fd983af7              # double 0.51048755197720552
	.quad	0x3fe4dd7100c42153              # double 0.65203142308841178
	.quad	0x3fcfbe86629eccb0              # double 0.24800185981221068
	.quad	0x3fe0cf5c88a075a5              # double 0.52531267819329186
	.quad	0x3fe838c99e4a506c              # double 0.75693207660743899
	.quad	0x3fe1318d9fa45764              # double 0.53729897670812621
	.quad	0x3fd8234da4cd4a9c              # double 0.37715474218308898
	.quad	0x3fcdce64137f81a8              # double 0.23286105110220245
	.quad	0x3feead8b0214cbe9              # double 0.95868444830409516
	.quad	0x3fe130b9930b6850              # double 0.53719786376610479
	.quad	0x3fe742ec43c01b28              # double 0.72691930038931662
	.quad	0x3feb32fad71c653e              # double 0.84997312558986216
	.quad	0x3fedfb3383e844f2              # double 0.93691421282906462
	.quad	0x3fe9e4db983ad3c7              # double 0.80918674213773378
	.quad	0x3fc0f7d32f38bb0c              # double 0.13256301694624317
	.quad	0x3fe91c87baa6cc6b              # double 0.78473268943197405
	.quad	0x3fe2b21b16ff4f21              # double 0.58424143306408294
	.quad	0x3f54ade00b346400              # double 0.0012621581962035666
	.quad	0x3fe19c3bbe83bf57              # double 0.55032145700350099
	.quad	0x3fbe50fd6dbf0830              # double 0.11842330865241091
	.quad	0x3fe604be1d2927cb              # double 0.68807893462621317
	.quad	0x3fd7715cc485e58c              # double 0.36629409019186521
	.quad	0x3fdcc15320509e7c              # double 0.44929960399392832
	.quad	0x3fc1c6798a7a6e7c              # double 0.13886946927674504
	.quad	0x3fe15b9923fca55b              # double 0.54243142155352631
	.quad	0x3fec0e14c66fabaa              # double 0.87671889073441389
	.quad	0x3fcbbff1dacadd78              # double 0.21679518874382686
	.quad	0x3fccdbc705c8fe54              # double 0.22545707495190703
	.quad	0x3fe6e648d7c6d9c1              # double 0.71561090606592626
	.quad	0x3fd07ac35be03a10              # double 0.25749286625151147
	.quad	0x3fb3d8d5796853c0              # double 0.077527372494230029
	.quad	0x3fc69e521961e43c              # double 0.17670656432508902
	.quad	0x3fa01cad8aa356d0              # double 0.031468794988240512
	.quad	0x3fc5c7e03f9249ec              # double 0.17016223053049317
	.quad	0x3fe8835121771782              # double 0.76602989708111147
	.quad	0x3fdb78c7017811c4              # double 0.42924666541537371
	.quad	0x3fdc666311220bea              # double 0.44374920533317541
	.quad	0x3fea8179e39c98d4              # double 0.82830519156848447
	.quad	0x3fd45dd8835c37bc              # double 0.3182278902830793
	.quad	0x3fbef5e4f5996e68              # double 0.12093955036237392
	.quad	0x3fe0a5c4ada426d8              # double 0.52023538507747968
	.quad	0x3fead573f698b490              # double 0.83855627215747752
	.quad	0x3fea217306d45e16              # double 0.81658316930674135
	.quad	0x3fdacd3c46efc4ce              # double 0.41877657821085001
	.quad	0x3fe435689a8ac4db              # double 0.63151960548398323
	.quad	0x3fe1c52fa6d41363              # double 0.55532057365108434
	.quad	0x3fe84f2325cdbbbd              # double 0.75966031440281478
	.quad	0x3fdd55d925a71e80              # double 0.45836476017982619
	.quad	0x3fed4d988917d400              # double 0.91572214866630475
	.quad	0x3fe90a3379984874              # double 0.78249524830813621
	.quad	0x3fd11a8b56a42b8a              # double 0.26724513493598379
	.quad	0x3fe874c7e39465f9              # double 0.76425547074467126
	.quad	0x3fe6eeafcae5ee05              # double 0.71663655880496491
	.quad	0x3fde7848e27f341e              # double 0.47609159582936111
	.quad	0x3fde31a31cb34e46              # double 0.47177961161398618
	.quad	0x3fedbb049ca757ee              # double 0.92907934757636013
	.quad	0x3fc51254b9090d28              # double 0.1646219161503748
	.quad	0x3fec8cb382ebd863              # double 0.89217544146118788
	.quad	0x3fc2d687002d67e0              # double 0.14717185505543195
	.quad	0x3fbff06985e6e578              # double 0.12476214903917604
	.quad	0x3fd95ce07a916f66              # double 0.39629375428716285
	.quad	0x3fded9a4eeae09a2              # double 0.48203395184114062
	.quad	0x3fec053ced359ed0              # double 0.87563940362903203
	.quad	0x3fefb7d87161c6b7              # double 0.99119207520398944
	.quad	0x3fe8a987c1b34b5d              # double 0.77069461662390959
	.quad	0x3fe99fc97a235215              # double 0.80075525145599846
	.quad	0x3fcd3ce241727734              # double 0.22842052646313393
	.quad	0x3fef7f4c21126f0c              # double 0.98428923091293674
	.quad	0x3fcd2367c2f9a460              # double 0.22764298458358478
	.quad	0x3fd010bc46e56d38              # double 0.25102145122010056
	.quad	0x3fe9bea15203406e              # double 0.80452028291803201
	.quad	0x3fcb7cb82ba592c4              # double 0.21474363452138878
	.quad	0x3facbb9fd0257810              # double 0.056118959578029259
	.quad	0x3fe49f905d39fe8f              # double 0.6444780178862447
	.quad	0x3fe7b395a54b2d4b              # double 0.74067194255750601
	.quad	0x3fdb50d9f0113bfc              # double 0.42680977291178102
	.quad	0x3fefed99b9c96136              # double 0.99775396620228807
	.quad	0x3fb11035a2884ed8              # double 0.066653587513708756
	.quad	0x3fedb68720d42dc8              # double 0.92853123103980639
	.quad	0x3fe9febd7c0e0ff5              # double 0.81234621266821583
	.quad	0x3fdb480cf3d76c3a              # double 0.42627261936803829
	.quad	0x3fee860ddee5199a              # double 0.9538640359322017
	.quad	0x3fee3edfa0c959eb              # double 0.94517499354952628
	.quad	0x3fe278fe46e08e4c              # double 0.57726968615720287
	.quad	0x3feb1b85ccc20628              # double 0.84710969917086221
	.quad	0x3fd8780b44730ce0              # double 0.38232690510285572
	.quad	0x3fec2d3ce13fdc20              # double 0.88052219385179242
	.quad	0x3fe70191d2668284              # double 0.71894160360177795
	.quad	0x3fe019eb2b758d7d              # double 0.50316389549372753
	.quad	0x3fd4b32ea5c2c3bc              # double 0.32343641460016292
	.quad	0x3fce545dca38d660              # double 0.23694965719339489
	.quad	0x3fc5e8d859bfc53c              # double 0.17116836912422595
	.quad	0x3fedbca8fc6722b6              # double 0.92927979752956591
	.quad	0x3fe2876825678488              # double 0.57902915292301405
	.quad	0x3fe80f6a2624a351              # double 0.75188167047336141
	.quad	0x3fdabbee76c6f970              # double 0.4177204284605045
	.quad	0x3fd7a57070af9bea              # double 0.3694726086090997
	.quad	0x3fe734ac9b64048d              # double 0.72517996167893417
	.quad	0x3fd06ce377212dd2              # double 0.25664602884054688
	.quad	0x3fe1f98be302d8b9              # double 0.56171221101865065
	.quad	0x3fe1a271b83b8a8f              # double 0.55107961638380398
	.quad	0x3fe6779ce80c1166              # double 0.70210118600566029
	.quad	0x3fd56090136d4044              # double 0.3340187253679725
	.quad	0x3feee198acee6c5e              # double 0.96503862167027044
	.quad	0x3fd3b82cff2999ba              # double 0.30811619680607871
	.quad	0x3fde980772e9ea7e              # double 0.47802911970180861
	.quad	0x3fc3056d90882148              # double 0.14860314900603044
	.quad	0x3fed3a11a264683b              # double 0.9133384868357618
	.quad	0x3fbf1bab8d0ff6b8              # double 0.12151596254258379
	.quad	0x3fd1e46385411c8a              # double 0.27956474316710767
	.quad	0x3fea082b0336a27b              # double 0.81349707248325787
	.quad	0x3fd431f0091d019a              # double 0.31554795160266169
	.quad	0x3fd34078019c326c              # double 0.30080986172905599
	.quad	0x3fe920e947482a25              # double 0.78526748583073369
	.quad	0x3fb5712a1ad68f40              # double 0.083758002807880594
	.quad	0x3fd74940cfbe1a88              # double 0.36384601867067845
	.quad	0x3fed4ffc42fa6c53              # double 0.9160138424080152
	.quad	0x3fe7cf8946f8c73d              # double 0.74408401357343446
	.quad	0x3fed64efa1b1ef8c              # double 0.9185712965113324
	.quad	0x3fca08b7e1f49928              # double 0.20339106114369909
	.quad	0x3fd68a7e5030f4d6              # double 0.35220296698737508
	.quad	0x3fb543fb0754abd0              # double 0.083068551339848584
	.quad	0x3fec3dcce8b01698              # double 0.88254399725765875
	.quad	0x3f7e94b8bdbed400              # double 0.0074660507634023431
	.quad	0x3fb39353f3226530              # double 0.076466795786832575
	.quad	0x3fd4dd1d3eed463e              # double 0.32599574227524275
	.quad	0x3fa7e88c07cfb7c0              # double 0.046696067765750637
	.quad	0x3fc02fd2532db5a4              # double 0.12645939885571267
	.quad	0x3fd92ec74d08f8cc              # double 0.3934801342292189
	.quad	0x3fde268262634966              # double 0.47110042198359847
	.quad	0x3fe3580328938b40              # double 0.60449369359080407
	.quad	0x3fd66c9b99fd8c7a              # double 0.35037889516951959
	.quad	0x3fd107e8b3162410              # double 0.26610772599139043
	.quad	0x3fd506ff53c5da9a              # double 0.32855208569473293
	.quad	0x3feef0d7e9c8b5ba              # double 0.96689983044568995
	.quad	0x3fe6b204ec26d39d              # double 0.70923086284038883
	.quad	0x3fa85b79419610c0              # double 0.047572888618590436
	.quad	0x3fdd31ca9afff4ec              # double 0.45616402756407015
	.quad	0x3feb93add03c5415              # double 0.86177721663500739
	.quad	0x3fd147b6c3b9121a              # double 0.27000207055633185
	.quad	0x3fec90e8a16e49e3              # double 0.89268905190902748
	.quad	0x3fec836aba43a89d              # double 0.89104210262054873
	.quad	0x3fd560372721242a              # double 0.33399752446399822
	.quad	0x3fe482e504f8edf0              # double 0.64097834559600919
	.quad	0x3fe1058871968e07              # double 0.53192541299034779
	.quad	0x3fb8838e66e1a060              # double 0.095757389180677332
	.quad	0x3fd6f5f9970415ca              # double 0.35876312015201661
	.quad	0x3fccf111172c00d4              # double 0.22610677367629839
	.quad	0x3fd0ef84136f5248              # double 0.26461889169630526
	.quad	0x3fc43d405ef376a0              # double 0.15811924587517456
	.quad	0x3fe5099a7fff77db              # double 0.65742230414957292
	.quad	0x3fd32008c49006c6              # double 0.29883021541182264
	.quad	0x3fa3e25119620030              # double 0.038836035107124522
	.quad	0x3feff73b307d7175              # double 0.99892959089952049
	.quad	0x3fd8f79cadd1c07e              # double 0.3901130387739683
	.quad	0x3f8ebc7b134f8780              # double 0.015007936026396385
	.quad	0x3fe492717e1e1202              # double 0.6428763831359563
	.quad	0x3fec0da03e88148c              # double 0.87666332448192596
	.quad	0x3fc5357f681216f0              # double 0.16569511968207662
	.quad	0x3fed6b9c62573bed              # double 0.91938609320811582
	.quad	0x3fe5586ba7ab3b94              # double 0.66704352138354972
	.quad	0x3feedbedeeb15ef2              # double 0.96434685344408266
	.quad	0x3fb2513406058458              # double 0.071551562757592335
	.quad	0x3fc36e3fa165f2d4              # double 0.15180201893590228
	.quad	0x3feacb762fdf6516              # double 0.83733662939190157
	.quad	0x3fbc9c7a2f47b660              # double 0.1117626538686749
	.quad	0x3fe88ffc3a11994c              # double 0.76757632581283408
	.quad	0x3feb5b7e738f1a23              # double 0.85491869516483054
	.quad	0x3fdfdc76cc35d238              # double 0.49783105795293947
	.quad	0x3fd99d564d268028              # double 0.40022809538095538
	.quad	0x3feb8605fe3629b5              # double 0.86011027956674602
	.quad	0x3fcd1108f565265c              # double 0.22708236677344729
	.quad	0x3fe9809bb9911752              # double 0.79694925540455075
	.quad	0x3f99208619b1c3c0              # double 0.0245381310637105
	.quad	0x3fef706b36d57747              # double 0.98247299871193483
	.quad	0x3fcd8fd211b01f70              # double 0.23095155585928806
	.quad	0x3fd864389d6f2c64              # double 0.38111701368752038
	.quad	0x3fe7d34ddcfdc75e              # double 0.7445439640270981
	.quad	0x3fc58ce195b06214              # double 0.16836185273201976
	.quad	0x3feee299340ea5b3              # double 0.96516094367432569
	.quad	0x3fdbdd1fb28481a2              # double 0.43537132676467583
	.quad	0x3fcb842d998a50cc              # double 0.21497125622830138
	.quad	0x3fe14ea2ca649292              # double 0.54084910898071059
	.quad	0x3fdf775883b8f112              # double 0.49165928710478213
	.quad	0x3fdcf421b0557080              # double 0.4524006101617104
	.quad	0x3fefdde4112d3ba9              # double 0.99583628992865158
	.quad	0x3fd7a922f6227cf4              # double 0.36969827686875978
	.quad	0x3fed9c38e3f343d6              # double 0.92532009622129396
	.quad	0x3fb6d09ec8a394c0              # double 0.089120792373779345
	.quad	0x3fe8eac753022f9e              # double 0.77865949833493509
	.quad	0x3fe28e7d088397d2              # double 0.57989360487840202
	.quad	0x3fe0a52983e437a4              # double 0.52016139755300062
	.quad	0x3fea7f7226177ff5              # double 0.82805736007503461
	.quad	0x3fd47e87b7a18aa4              # double 0.32022278721539466
	.quad	0x3fb11b8d85cff620              # double 0.066826672715216251
	.quad	0x3fd8f47a82e8f710              # double 0.38992178711110714
	.quad	0x3fe8d0c74dd99849              # double 0.77548566060136992
	.quad	0x3fdcb10f176473e0              # double 0.4483068207208003
	.quad	0x3face7779011b3f0              # double 0.056453453384939567
	.quad	0x3fd6e9777e3fb4f8              # double 0.35799968079557187
	.quad	0x3feaf7914991e873              # double 0.84272064561015581
	.quad	0x3fc4bdf98006d734              # double 0.16204756499581097
	.quad	0x3fe44175068077dd              # double 0.63299037237060995
	.quad	0x3fef57c71cd848ca              # double 0.97946506150972223
	.quad	0x3fe653b9ef3e211b              # double 0.69772049643600853
	.quad	0x3fd3fd3406e6801c              # double 0.3123292987238544
	.quad	0x3fda7eea7cdd3286              # double 0.41399633592372032
	.quad	0x3fd149fb98879b36              # double 0.27014055152396865
	.quad	0x3fc7355dee852758              # double 0.18131612917414475
	.quad	0x3fd592e98a529d8c              # double 0.3370918131644991
	.quad	0x3fcbc79595f07510              # double 0.21702833005193911
	.quad	0x3fe6531b3f7a6f10              # double 0.6976448287782393
	.quad	0x3fe84f9f3e87dad0              # double 0.75971948826812685
	.quad	0x3fca3e0af6869f64              # double 0.2050183967341993
	.quad	0x3fa130a98c6de560              # double 0.033574388878103489
	.quad	0x3fb10d2178fa82a0              # double 0.066606609378605075
	.quad	0x3fddcc9e70f55f52              # double 0.46561394721128579
	.quad	0x3fcf59a64e979404              # double 0.24492338979248995
	.quad	0x3fbedd3c0bf53b88              # double 0.1205632714456738
	.quad	0x3fdf597700c7a544              # double 0.48983550144346943
	.quad	0x3fdc411ff9e1c28e              # double 0.44147490885283325
	.quad	0x3fe759fa8fc54220              # double 0.72973373489555016
	.quad	0x3fc51207f3faa258              # double 0.16461276448287054
	.quad	0x3fe428216a9b6358              # double 0.62989874669720347
	.quad	0x3fea754c7502f25e              # double 0.8268186841374463
	.quad	0x3fddc87bc50c41c0              # double 0.4653615402503668
	.quad	0x3fe869e0b30a30c3              # double 0.76292452782356468
	.quad	0x3fe7bce9dbe90cc2              # double 0.74181073142280973
	.quad	0x3feefd6c23482eec              # double 0.9684353531933687
	.quad	0x3fe6dc5a100fb33f              # double 0.71439841401079451
	.quad	0x3fe671b18e2a72d1              # double 0.70137861029396664
	.quad	0x3f7b02d97185e480              # double 0.0065945142636049114
	.quad	0x3fd5549be3422ca0              # double 0.33328911965572594
	.quad	0x3fe0bcb46c3b7086              # double 0.52303525103663229
	.quad	0x3fd64cdbae2080c4              # double 0.34844104771219642
	.quad	0x3fe4a41eefdd182e              # double 0.64503428314561062
	.quad	0x3f9bf5283d7c3000              # double 0.027302387955430163
	.quad	0x3fd91b1864e66528              # double 0.39227876523507854
	.quad	0x3fdd7049e4ba2b8e              # double 0.45997855507510443
	.quad	0x3faa4c7b3fa03bc0              # double 0.051364757077059675
	.quad	0x3fee5c9d52eb41de              # double 0.94880548663246222
	.quad	0x3fd01a927aa5b7e0              # double 0.25162183739928246
	.quad	0x3fe49c15f59c5de5              # double 0.64405343981610186
	.quad	0x3fd2de209617ffe6              # double 0.29480757386772749
	.quad	0x3fe1b18329f28911              # double 0.55291898911335313
	.quad	0x3fdcef7ae69d010a              # double 0.45211670418576999
	.quad	0x3fe9838455966e8e              # double 0.79730431286175629
	.quad	0x3feefb65f3f0cafd              # double 0.96818826336524888
	.quad	0x3fd3fa7e4720b216              # double 0.31216389604631567
	.quad	0x3fe078002b419a14              # double 0.51464851807105783
	.quad	0x3fdd813a01b51478              # double 0.46101236502392551
	.quad	0x3fec4be60277fee3              # double 0.88426495058226029
	.quad	0x3fe679f22a187e6f              # double 0.70238598081409787
	.quad	0x3fe5f1cc575d1aee              # double 0.68576638282033087
	.quad	0x3fc2af23a186bf14              # double 0.14596982371357881
	.quad	0x3fe7343dd7fc5f77              # double 0.72512714562161207
	.quad	0x3fee84e58488fd74              # double 0.95372272382512202
	.quad	0x3fdacde5b7335420              # double 0.41881697550462782
	.quad	0x3fd6018f76064c64              # double 0.34384523893203878
	.quad	0x3febb96c30e1bd41              # double 0.86638459727502248
	.quad	0x3fca6ba641ec1bd8              # double 0.20641020029890345
	.quad	0x3fe5ae18d4e76836              # double 0.67750207503127657
	.quad	0x3fc42a51e08c7570              # double 0.15754149879732493
	.quad	0x3fedffa501133045              # double 0.93745660982086376
	.quad	0x3fe263d5c1b07ac7              # double 0.57468688802676915
	.quad	0x3fe7d632276dd888              # double 0.74489696217530454
	.quad	0x3fd685029d4a8a7a              # double 0.35186829910723072
	.quad	0x3fea0024623a8496              # double 0.8125173491026938
	.quad	0x3fdfe04f0eda101c              # double 0.49806572389957338
	.quad	0x3fec40042728917f              # double 0.88281448028696718
	.quad	0x3fe93f986cc5226a              # double 0.78901311153556475
	.quad	0x3fed3bab864e764e              # double 0.91353393775688985
	.quad	0x3fe8039d2d3c6d78              # double 0.75044115863003835
	.quad	0x3fe7994ce5f21a0a              # double 0.73746342574378443
	.quad	0x3fea5f2833faa0f6              # double 0.82411584999229492
	.quad	0x3fac5bba3bf5d020              # double 0.055387325114594654
	.quad	0x3fbd669325225c90              # double 0.11484641701314247
	.quad	0x3fe5445c54aed35c              # double 0.66459480800277104
	.quad	0x3fe1319f8247582b              # double 0.53730750508362257
	.quad	0x3fe13aa07197b14a              # double 0.53840658365292282
	.quad	0x3fd6cace9db5188e              # double 0.35612836266626224
	.quad	0x3fd7f58bc47d4a14              # double 0.37436193645876981
	.quad	0x3febc86c45576396              # double 0.86821569007143995
	.quad	0x3fd20c0a0b4f2f7e              # double 0.28198481659341457
	.quad	0x3fd6be787cb10154              # double 0.35537540604493256
	.quad	0x3fd00c587a4859f4              # double 0.25075351659452783
	.quad	0x3fd683a6399009a4              # double 0.35178523656227356
	.quad	0x3fe5ccfc93f4f495              # double 0.68127278230498922
	.quad	0x3fd274276169ca1a              # double 0.28833946717273451
	.quad	0x3fee3dc2e970b644              # double 0.94503923028759873
	.quad	0x3fd367c114eaf72e              # double 0.30320765536076777
	.quad	0x3fe891664c1321a9              # double 0.76774897440286793
	.quad	0x3fd14f4658ba6096              # double 0.2704635492787103
	.quad	0x3fe9fd0d5faf2441              # double 0.8121401661711688
	.quad	0x3fe7031485cc17aa              # double 0.71912599689743684
	.quad	0x3fdd2592c97cdc66              # double 0.45541829754387775
	.quad	0x3fe67318e98caa51              # double 0.7015499650490914
	.quad	0x3fe40a21ed413691              # double 0.62623688067260919
	.quad	0x3fa787ef33d192a0              # double 0.045958972049253477
	.quad	0x3feb9cd178386105              # double 0.86289285164369345
	.quad	0x3fec11b4f3dde3ea              # double 0.87716148023821217
	.quad	0x3fa1bec8c58de060              # double 0.034658693423751386
	.quad	0x3fe55ca00eac43e4              # double 0.66755679002573887
	.quad	0x3fee8c3a77f203c4              # double 0.9546177237208373
	.quad	0x3fc54dcd39e52018              # double 0.1664368183794529
	.quad	0x3f62328684dfb400              # double 0.0022213580441445835
	.quad	0x3fe501fbc7ccf9f6              # double 0.65649212859699335
	.quad	0x3fddcc9570bfac0c              # double 0.46561180124871338
	.quad	0x3fe41f5a78c653cd              # double 0.62882731999217756
	.quad	0x3fec4ba187f68169              # double 0.88423229747062948
	.quad	0x3fa7520347d8bb90              # double 0.045547583122576119
	.quad	0x3fd64a1de4390552              # double 0.34827372825028136
	.quad	0x3fc9704c3a60d5fc              # double 0.19873955584050396
	.quad	0x3fc1efaba02d8ae4              # double 0.14012666054903555
	.quad	0x3fc33776115cfefc              # double 0.15013004157844267
	.quad	0x3fe48fd7d897451b              # double 0.6425589781084996
	.quad	0x3fe51dee551f5393              # double 0.65990368485892004
	.quad	0x3fe16ce83e859a07              # double 0.54454433642678246
	.quad	0x3feb75eb199bb177              # double 0.85814433099362375
	.quad	0x3fe70e0cba2e2c9c              # double 0.72046505320885812
	.quad	0x3fe262d5c5e9b37f              # double 0.57456482558119137
	.quad	0x3fe85d92172c27d1              # double 0.76142220044970987
	.quad	0x3fd36a0b9606b4b8              # double 0.30334748888965235
	.quad	0x3f955f742d7eb7c0              # double 0.020871939923089888
	.quad	0x3fecc17e4da7a7e1              # double 0.89861979643796641
	.quad	0x3fe6cec9413c8012              # double 0.71274245015593096
	.quad	0x3fb8c974b89c5058              # double 0.096823973723361489
	.quad	0x3fd9175a373ab32e              # double 0.39205031770215981
	.quad	0x3fc4aefcb8173cb0              # double 0.16159018505866163
	.quad	0x3fc8b145c205d860              # double 0.19290992711802613
	.quad	0x3fdec397431661d8              # double 0.48068791915423281
	.quad	0x3fd16f97dc742e76              # double 0.27243610886282654
	.quad	0x3fd14ab9e2ac72ea              # double 0.27018592010590103
	.quad	0x3fbb295bdabb5d48              # double 0.10609983530172429
	.quad	0x3fcb8a107894adcc              # double 0.21515088927968262
	.quad	0x3fe9954723a77bda              # double 0.79947239841191764
	.quad	0x3fcf3ef84fadcaf8              # double 0.24410919085092764
	.quad	0x3feb0a89c2d88183              # double 0.84503639274412057
	.quad	0x3fd999ef5edee740              # double 0.40002044930189484
	.quad	0x3fc358863ee5c430              # double 0.15113905020874219
	.quad	0x3fe22afb4e4049ec              # double 0.5677467850057929
	.quad	0x3fd3814bbda64464              # double 0.30476659317452559
	.quad	0x3fe68d3da5f730f6              # double 0.7047413102641531
	.quad	0x3fd70dbfadd995a2              # double 0.36021415689023162
	.quad	0x3fd34922617bf89a              # double 0.30133876342723342
	.quad	0x3feb4a97ddebb064              # double 0.85285561889533001
	.quad	0x3fa0d9ecc3e05fc0              # double 0.032912634764385995
	.quad	0x3f907e4813efd880              # double 0.016106725899554863
	.quad	0x3fb630ae4d41bd38              # double 0.086680311070939875
	.quad	0x3fe32dc4ea482447              # double 0.59933706052937274
	.quad	0x3fef3a29d034cffc              # double 0.97585001626293843
	.quad	0x3f83d9f04918d600              # double 0.0096930286700667167
	.quad	0x3fd9aee8d8ba39d2              # double 0.40130063214101341
	.quad	0x3fe4045d4f635c29              # double 0.62553277497761883
	.quad	0x3fee91103e46c9e3              # double 0.9552079407060855
	.quad	0x3fddd06abbe6b032              # double 0.46584575986594523
	.quad	0x3fefca9d2fc3077b              # double 0.99348315552218424
	.quad	0x3fd3e9c56fd0a968              # double 0.31114326400224579
	.quad	0x3fde3557003b7f5c              # double 0.47200560591408247
	.quad	0x3fe3942e93add103              # double 0.61183861583279542
	.quad	0x3fd0aeea87a5ad7a              # double 0.26067603346628909
	.quad	0x3feb9bd619e86bfb              # double 0.86277298984657536
	.quad	0x3fe5d1e27999becd              # double 0.68187068700896136
	.quad	0x3fe54eb1a672687d              # double 0.66585619458352563
	.quad	0x3fe50fd9d1f72757              # double 0.6581849194419459
	.quad	0x3fc5fafa529de3e0              # double 0.17172173532506374
	.quad	0x3fc5aa0dd784018c              # double 0.16925213835930852
	.quad	0x3fddf944b6200390              # double 0.46833913598680343
	.quad	0x3fc1783aaf6a24e8              # double 0.13648160519759434
	.quad	0x3fe6f73c262bc3a4              # double 0.71768004851593448
	.quad	0x3fcfd1b075f5744c              # double 0.2485867095919353
	.quad	0x3fefef234bbdf752              # double 0.99794163506860856
	.quad	0x3fef5f88eb6a4dfd              # double 0.98041196803609376
	.quad	0x3fc06dd914526328              # double 0.12835229389454494
	.quad	0x3fab843545592bd0              # double 0.053743042674419095
	.quad	0x3feebc3745d6e78a              # double 0.96047557487985213
	.quad	0x3fe643205579e083              # double 0.69569412893817206
	.quad	0x3fee73436ac24ecb              # double 0.95157023288126064
	.quad	0x3fea5ffbb804f0e7              # double 0.82421670857686713
	.quad	0x3fb60100632a3dd8              # double 0.085952781877714712
	.quad	0x3fda2c3578c4400e              # double 0.40894829553235545
	.quad	0x3fd6960b69d0ef6a              # double 0.35290799459084232
	.quad	0x3fe6018919db344e              # double 0.68768744516422387
	.quad	0x3fc3db10e84ac2a8              # double 0.1551228651274148
	.quad	0x3fdfbd277ec74aaa              # double 0.49592006092749819
	.quad	0x3fbe99a18abe7380              # double 0.11953172337821449
	.quad	0x3fe55e5e03a56cf1              # double 0.66776943885943585
	.quad	0x3fdf242a1edd0778              # double 0.48658230794909896
	.quad	0x3fe4702de4291db0              # double 0.6386937576543712
	.quad	0x3feaaae1dd92f251              # double 0.83335965419935054
	.quad	0x3fef325d4ad097f2              # double 0.97489800083417166
	.quad	0x3f9bc91ed1176140              # double 0.027134400855943541
	.quad	0x3fe01d727272e5cf              # double 0.50359461167607289
	.quad	0x3fd8fe188a638932              # double 0.3905087806180233
	.quad	0x3fe5e122bd23f3c0              # double 0.68373238507739842
	.quad	0x3fde40f03f793b92              # double 0.47271352957334856
	.quad	0x3fe6075dfbd04a55              # double 0.68839930708265717
	.quad	0x3fe09bc94201edb3              # double 0.51901686565491045
	.quad	0x3fd74d301839f900              # double 0.36408617368569196
	.quad	0x3fc7f91edb9fb448              # double 0.18729005550213373
	.quad	0x3fb12f857b6d74c8              # double 0.067131369241411609
	.quad	0x3fe28cebe1c80cd1              # double 0.5797023210328921
	.quad	0x3fa6a64362abcd60              # double 0.044237237734615631
	.quad	0x3fce69e9f59dc4e4              # double 0.23760723584158605
	.quad	0x3fe1ce4280bf350c              # double 0.55642819543723609
	.quad	0x3fd1abcb67b070ca              # double 0.2761105072584199
	.quad	0x3fe195897124ab9e              # double 0.54950401399888782
	.quad	0x3fdb399142697b7e              # double 0.42538863645125236
	.quad	0x3fa1cb6284a90bd0              # double 0.034754828161133511
	.quad	0x3fe483ed14827903              # double 0.64110425954621097
	.quad	0x3fe8127b84211bcb              # double 0.75225616270551521
	.quad	0x3fe069ebc856401f              # double 0.51292981270126237
	.quad	0x3fbe821b8ceed588              # double 0.1191727847170424
	.quad	0x3faeb7c8b0d78f70              # double 0.059995910250818407
	.quad	0x3fe7f816b103434c              # double 0.74903425762941244
	.quad	0x3fbcae8b43f52928              # double 0.11203833016512432
	.quad	0x3fe49b35a7c50288              # double 0.64394648330206028
	.quad	0x3fe2c70d7f0324d1              # double 0.58679842764936485
	.quad	0x3fad7c5730c160e0              # double 0.0575892683997965
	.quad	0x3fdd513a36ddfe8c              # double 0.45808272703286756
	.quad	0x3fd8b1b6f5576e82              # double 0.38584684332975183
	.quad	0x3fece3c31b1b35e5              # double 0.90280299467275127
	.quad	0x3fdb06f4d66eb668              # double 0.42229958477660157
	.quad	0x3fd45281253cd390              # double 0.31753567348942457
	.quad	0x3fe0f7493f4abc94              # double 0.53018629419047381
	.quad	0x3fc3bca808b16750              # double 0.15419483589613003
	.quad	0x3fdb8c0be7e67814              # double 0.43042276045332639
	.quad	0x3fc4e101901c70dc              # double 0.16311664139437354
	.quad	0x3fd567b98de730b0              # double 0.33445586068843181
	.quad	0x3fe0ebee49301922              # double 0.52880014700420852
	.quad	0x3fe8fb381fb75425              # double 0.78066641039425078
	.quad	0x3fe2f7c74253c731              # double 0.59274638132612811
	.quad	0x3fd21559ef9b7ce0              # double 0.28255318068654667
	.quad	0x3fd1216c15dda9b8              # double 0.2676649297269722
	.quad	0x3fe71354a51396e4              # double 0.72110969773777045
	.quad	0x3fe48afc00c7f37f              # double 0.64196586754370333
	.quad	0x3fe10c71dd6db88f              # double 0.53276913879177978
	.quad	0x3fd1ecfa3212b1a0              # double 0.28008894815391194
	.quad	0x3fd48d969d7edc92              # double 0.32114186649727927
	.quad	0x3fe154b5c5565857              # double 0.54159058134497229
	.quad	0x3fd9725b8489bf18              # double 0.39760482733889679
	.quad	0x3fe420b6cf015a14              # double 0.62899341994017499
	.quad	0x3fee37bed1ebc9d2              # double 0.9443048572559809
	.quad	0x3fedb82e3b552c3e              # double 0.92873298252505498
	.quad	0x3fc611cc407d67e0              # double 0.1724181475536275
	.quad	0x3fc9ece7211a34b0              # double 0.2025422011978768
	.quad	0x3faa1606c1afdf50              # double 0.050949298041756408
	.quad	0x3fc63e750f2da56c              # double 0.17378104439857667
	.quad	0x3fd710b93de6d9f6              # double 0.36039572758764338
	.quad	0x3fc0a6360b454134              # double 0.13007236051863347
	.quad	0x3fdbdfc034d5b7f2              # double 0.43553166541721489
	.quad	0x3fe92bcebc3398c4              # double 0.78659760244479359
	.quad	0x3fe552dc41406a4e              # double 0.66636479134042204
	.quad	0x3fec8fd9b8a05867              # double 0.8925598722442033
	.quad	0x3fbdb4ca2751ff48              # double 0.11603988132446574
	.quad	0x3fe8ecad3f650e0b              # double 0.77889120466028439
	.quad	0x3fc2a41d2dc8d2a4              # double 0.14563336120194947
	.quad	0x3fe0e89f9313322a              # double 0.52839640355666018
	.quad	0x3fa823fc2bb95550              # double 0.047149544083974093
	.quad	0x3fe5768bb11a7467              # double 0.6707209071206649
	.quad	0x3fa86f2e2a488110              # double 0.047723238622213171
	.quad	0x3fe82770b3361d34              # double 0.75481448175643217
	.quad	0x3fe1e37094dcbc77              # double 0.559013643976768
	.quad	0x3fd25b9939c037b6              # double 0.28684073104602292
	.quad	0x3fe130976a596016              # double 0.53718157550156564
	.quad	0x3fc52389353828f8              # double 0.16514697168924619
	.quad	0x3fe25bb5f31d19c4              # double 0.5736951587976411
	.quad	0x3fb50b7166c92e08              # double 0.082205855936244743
	.quad	0x3fe6aaae8e6f4a81              # double 0.70833518809588736
	.quad	0x3fd90b4502901bc4              # double 0.39131283998761668
	.quad	0x3fe18342f40968ef              # double 0.54727313674382383
	.quad	0x3fe6c18ab4454660              # double 0.71112570962050015
	.quad	0x3fe7a202521f906c              # double 0.73852649726587805
	.quad	0x3febb8fdd61e9c9c              # double 0.86633197612981716
	.quad	0x3fe75a1340844df7              # double 0.72974550820293771
	.quad	0x3fa2bb3d638ff920              # double 0.036584776309597666
	.quad	0x3fba98094cdfe288              # double 0.10388239027805402
	.quad	0x3fbfd788f5695ce0              # double 0.12438255301946155
	.quad	0x3fd27c4c26cdb5b6              # double 0.28883651532563748
	.quad	0x3f972527f8118140              # double 0.022602676883594741
	.quad	0x3fa05d8d8bcf1f40              # double 0.031963752094780862
	.quad	0x3fa244bff5e5de70              # double 0.035680769697987169
	.quad	0x3fd93a1a1dff8b2a              # double 0.39417126588357354
	.quad	0x3febd260999db310              # double 0.86943082812430994
	.quad	0x3fe3ad7bdc893475              # double 0.61492722581318893
	.quad	0x3fe10dca1cc2a649              # double 0.5329332887387831
	.quad	0x3fe47c8cd744164a              # double 0.64020387691625413
	.quad	0x3fc6d9c281aa2b20              # double 0.17852050143513853
	.quad	0x3fe4f8c410b3fc35              # double 0.65536692869489477
	.quad	0x3fc31f07a89d2950              # double 0.149384457903873
	.quad	0x3fe142e95a6c919d              # double 0.53941791211086676
	.quad	0x3feda1a76b241625              # double 0.92598315168351475
	.quad	0x3fb7fac8783e0060              # double 0.09367039619064732
	.quad	0x3fef17505daee9fd              # double 0.9715959386588221
	.quad	0x3fa2a4a850fb7330              # double 0.036412486920858078
	.quad	0x3fdf48609cd65812              # double 0.48879256549969441
	.quad	0x3feb5638165a24ea              # double 0.854274791389938
	.quad	0x3fef5328236a671e              # double 0.97890097539059062
	.quad	0x3fe51844589f5973              # double 0.65921227749895051
	.quad	0x3fe799195c90c8d8              # double 0.73743885115825503
	.quad	0x3fdbbe46871d86d8              # double 0.43348849482400231
	.quad	0x3feba72837110b03              # double 0.86415491824331558
	.quad	0x3feffcaafa972354              # double 0.99959324782785552
	.quad	0x3fc02399b74bb6f4              # double 0.12608643960941601
	.quad	0x3fab778a9499ab80              # double 0.053646402969056872
	.quad	0x3fcbae9d5ce37c54              # double 0.2162663177068419
	.quad	0x3f91063540aa4fa0              # double 0.016625244209151568
	.quad	0x3fed71ba90d6e51c              # double 0.92013290680839388
	.quad	0x3fc05722038de0dc              # double 0.12765908406777882
	.quad	0x3fb27bdf9474a460              # double 0.072202657455493036
	.quad	0x3fdb3aa153170016              # double 0.42545350183718378
	.quad	0x3feb79b81726c74c              # double 0.85860828897259855
	.quad	0x3fece7337876e260              # double 0.90322278526498323
	.quad	0x3fc0212b1d5eb7dc              # double 0.12601221975404442
	.quad	0x3fcaa583118369b0              # double 0.2081760249628366
	.quad	0x3fce2bd6df709bb0              # double 0.23571287069463898
	.quad	0x3fe55eb66663ac4e              # double 0.66781158445281519
	.quad	0x3fcec0b00afd4540              # double 0.24025536095227018
	.quad	0x3fe7d0ca8d81710d              # double 0.7442372096807347
	.quad	0x3fb55154ce7d5db0              # double 0.083272266781355908
	.quad	0x3feece4ace5260ed              # double 0.96268215462899109
	.quad	0x3fea367e86e103bb              # double 0.81915212958858008
	.quad	0x3fe6d3f7a9d6821f              # double 0.71337493106335959
	.quad	0x3fd72247b064fe9c              # double 0.36146728731180544
	.quad	0x3fd0c7ef8e82fad4              # double 0.2622031108584626
	.quad	0x3fd876fe5b61ae2c              # double 0.38226279186230516
	.quad	0x3fe80766a8af50db              # double 0.75090344377761242
	.quad	0x3feb49dc2a9429c2              # double 0.85276611629642951
	.quad	0x3fc783239b26a4c4              # double 0.18368954730730114
	.quad	0x3fbec10890938e30              # double 0.12013295678803426
	.quad	0x3fe08238f01a9f6c              # double 0.51589629073440113
	.quad	0x3fe7c6d13974311b              # double 0.7430196878572447
	.quad	0x3fd5dcec57c5c13c              # double 0.34160908290415981
	.quad	0x3fe6edd52d9159c3              # double 0.71653231525379402
	.quad	0x3fa642589328f1b0              # double 0.043474929775104143
	.quad	0x3feae737570b61dd              # double 0.84072463036414613
	.quad	0x3fd850874d665696              # double 0.37991507109232125
	.quad	0x3f848df7ab465980              # double 0.010036406435386835
	.quad	0x3fef958666f2b168              # double 0.98700256449732837
	.quad	0x3fd75dcfcdbfaafe              # double 0.36510081379553572
	.quad	0x3fd80521b3067692              # double 0.37531321032461407
	.quad	0x3fe4c940454074cb              # double 0.64956677938212104
	.quad	0x3fe4d508713def68              # double 0.65100500218930524
	.quad	0x3fc32de80c10d19c              # double 0.14983845318932942
	.quad	0x3fe66b459905d7bf              # double 0.70059471022863551
	.quad	0x3fd360f1d8ed2838              # double 0.30279203590601211
	.quad	0x3fe5a33e7e0cdf1b              # double 0.67617725962824993
	.quad	0x3fc5246240b9e64c              # double 0.16517284546334776
	.quad	0x3fbe65643ef22708              # double 0.11873461281552633
	.quad	0x3fe2642de5d6b0c6              # double 0.57472891702993745
	.quad	0x3fda929672acb638              # double 0.41519700239846058
	.quad	0x3fcfa5a7690e3dc8              # double 0.24724285726231998
	.quad	0x3fda19cce77569b4              # double 0.40782473185904711
	.quad	0x3f94b872051573c0              # double 0.020234853325167057
	.quad	0x3fda815b300d0fb0              # double 0.41414527599794848
	.quad	0x3fb351b7709465c0              # double 0.07546564577605519
	.quad	0x3fef0c202d6ab03a              # double 0.97023018713435438
	.quad	0x3fe19e6b7af823e6              # double 0.55058835999909372
	.quad	0x3fecf8b5fd4fb19e              # double 0.90536021685470636
	.quad	0x3fb991e01f353af8              # double 0.099882133120654859
	.quad	0x3fc46ce743b6f668              # double 0.15957346731549937
	.quad	0x3fbd9fa9416a99f0              # double 0.11571748587684971
	.quad	0x3fd2336ddd4071fe              # double 0.28438898665061163
	.quad	0x3fd92b977d2e82a2              # double 0.39328562950871959
	.quad	0x3fecb83f8f734753              # double 0.89749124543798542
	.quad	0x3fe79469d6fb8f02              # double 0.73686687458800315
	.quad	0x3fef9947ded7d8a4              # double 0.98746102832844373
	.quad	0x3fa24bd1018b8350              # double 0.03573468345508124
	.quad	0x3fe635d8c3d0061b              # double 0.69407308811804869
	.quad	0x3fd0bf2ea601dcb2              # double 0.26166883670471031
	.quad	0x3fe1ed82b22f0e71              # double 0.56024298478628343
	.quad	0x3fe2e4a4bc866cf0              # double 0.59041058369930788
	.quad	0x3fcc73d2b0b165b0              # double 0.22228463771425089
	.quad	0x3fee198936077105              # double 0.9406171851401558
	.quad	0x3fc8230ee9eb8660              # double 0.18856989309192596
	.quad	0x3fca5821526c92e0              # double 0.2058145191632752
	.quad	0x3fb0b37849cd13d8              # double 0.065238492982714447
	.quad	0x3fe430e2591ced2e              # double 0.63096730618364005
	.quad	0x3fdaed3922fc0188              # double 0.42072895447201875
	.quad	0x3feab3e41370d1f2              # double 0.83445934102070241
	.quad	0x3fe43e9e6f4df482              # double 0.63264390696680572
	.quad	0x3fd84549f3d432d2              # double 0.37922905742088375
	.quad	0x3fe6fd25a1bd2192              # double 0.71840173329933266
	.quad	0x3fe8a4446e58f817              # double 0.77005216171505964
	.quad	0x3fe1ceb9c1becd1d              # double 0.556485060128043
	.quad	0x3fe3b83289f4a7d7              # double 0.61623503632039955
	.quad	0x3fdffe092f10cef4              # double 0.49988011928802156
	.quad	0x3fed0b04a9595099              # double 0.90759499622301398
	.quad	0x3fe6a223d6338fda              # double 0.70729247890676139
	.quad	0x3fac405fcf3fe9a0              # double 0.055178636597662534
	.quad	0x3fc1db09000c7974              # double 0.13949692251567181
	.quad	0x3fd6c254e5f695b8              # double 0.35561106164308454
	.quad	0x3fe79fde1bb735c9              # double 0.73826508916106903
	.quad	0x3fe7ad018e43ac9a              # double 0.73986890588766419
	.quad	0x3fea5aa1e766aebe              # double 0.82356352992561432
	.quad	0x3fe4f4c0d6bbc752              # double 0.65487710895670603
	.quad	0x3fe56ebe776bcf97              # double 0.66976855587425888
	.quad	0x3fe532958e18454b              # double 0.66242482903377586
	.quad	0x3fddd5af53fd7e50              # double 0.46616728975457011
	.quad	0x3fe674dddd4f02c6              # double 0.70176594948142035
	.quad	0x3fea7ae2595134df              # double 0.82750050968902744
	.quad	0x3feefa895e741c66              # double 0.96808308074913607
	.quad	0x3fee730e6a54d41a              # double 0.95154495971530939
	.quad	0x3fb52f26b55afd40              # double 0.082750720287539714
	.quad	0x3fd6d47144b345c0              # double 0.35671645840656296
	.quad	0x3fe9a91c8fc81db7              # double 0.8018935020672221
	.quad	0x3fc707ef3d365a70              # double 0.17992964257128419
	.quad	0x3fbedaec9083d350              # double 0.12052801635929922
	.quad	0x3fd8e8eacaf2c306              # double 0.38921613520783216
	.quad	0x3fe302e24701dec7              # double 0.59410203808416717
	.quad	0x3fe56f553955a4b7              # double 0.66984044263985865
	.quad	0x3fda9ac98354f5ac              # double 0.41569745850923812
	.quad	0x3fdd0397d2356430              # double 0.45334430244617163
	.quad	0x3fea21e7a9f2b27a              # double 0.81663878624892949
	.quad	0x3fc0d5111b952a60              # double 0.13150228354273263
	.quad	0x3fdb082969bb0de2              # double 0.42237315488111282
	.quad	0x3fee061f5272a489              # double 0.93824735739794207
	.quad	0x3fe373bc61f72b7f              # double 0.60787791379821943
	.quad	0x3fea6d9f7e603c52              # double 0.82588171656414944
	.quad	0x3fe4877a278f9a46              # double 0.64153774000880825
	.quad	0x3fec3e33a1536922              # double 0.88259297856282992
	.quad	0x3fa5f596d30fe2c0              # double 0.042889321579371309
	.quad	0x3fdc4ff4e2ecbd62              # double 0.44238016281720693
	.quad	0x3fe57c9fa90c2013              # double 0.67146285073340761
	.quad	0x3fb87447577ba750              # double 0.095524271829757312
	.quad	0x3fdc9411f38a62a0              # double 0.44653748305567298
	.quad	0x3fcb234f79aac42c              # double 0.21201508942388736
	.quad	0x3fe97fcc0b2d0184              # double 0.79685022528433124
	.quad	0x3fed676917aebec0              # double 0.91887335420138782
	.quad	0x3fdd2f9eded5498a              # double 0.45603153000879415
	.quad	0x3fe47321646e3c60              # double 0.63905400863030692
	.quad	0x3fea17928a58675c              # double 0.81537749310085017
	.quad	0x3fe6404cf2a95c2f              # double 0.6953491916164064
	.quad	0x3fe59eb90deed00f              # double 0.67562535020124581
	.quad	0x3fd2d18e9cf730ea              # double 0.29404034928007994
	.quad	0x3fd02ab418acdfca              # double 0.25260641488739266
	.quad	0x3fee76f0d713527e              # double 0.9520191384022636
	.quad	0x3fe00854d0ab4734              # double 0.50101700549769257
	.quad	0x3fedce3128695f7d              # double 0.93141992466824741
	.quad	0x3feb481851fad228              # double 0.85255065929101637
	.quad	0x3fd335a0e34157dc              # double 0.30014822190184787
	.quad	0x3fe3b0a810f0e4c9              # double 0.61531451519763281
	.quad	0x3fb2fae1051200c8              # double 0.074140609491226361
	.quad	0x3fe9cec2be7a5968              # double 0.80648934557647767
	.quad	0x3fe7345f07029172              # double 0.72514296883723106
	.quad	0x3fd5d4daff15171a              # double 0.34111666593922652
	.quad	0x3fe369b71cb18d49              # double 0.60665469745837541
	.quad	0x3fc9f6f7c05ef60c              # double 0.20284935849296948
	.quad	0x3fef4e66f1c832ab              # double 0.97832057211924927
	.quad	0x3fe34919f3bc9c81              # double 0.60267350773655448
	.quad	0x3fe4df8afdbf95cc              # double 0.65228795585852017
	.quad	0x3fcc4e5ee42321e8              # double 0.22114168300164683
	.quad	0x3fe77d3d167cbba3              # double 0.73403791801489537
	.quad	0x3f8c62783e005900              # double 0.013859691040164268
	.quad	0x3feb43bb16657390              # double 0.85201792120243347
	.quad	0x3fec3bb14f879b6e              # double 0.8822866967501406
	.quad	0x3fe43c3210af51e9              # double 0.63234809168585315
	.quad	0x3fe3c96dbfc115fd              # double 0.61833846523285241
	.quad	0x3fcfaec3495e28c4              # double 0.24752083856976104
	.quad	0x3fd32235f2b2df42              # double 0.29896305752798835
	.quad	0x3f95051937702020              # double 0.020527261742273706
	.quad	0x3fd75513da737806              # double 0.36456772168264739
	.quad	0x3fd70a497ce5dfb6              # double 0.36000287243904994
	.quad	0x3fcb6fd763107524              # double 0.21435062729953203
	.quad	0x3fe6fb6496db9846              # double 0.71818761314785529
	.quad	0x3fc487bce4238564              # double 0.16039239062869648
	.quad	0x3fbe59f1f0977140              # double 0.11855995296304389
	.quad	0x3faf0577ed7b3e70              # double 0.060588596095496494
	.quad	0x3fb54bc250b11e38              # double 0.083187241268313339
	.quad	0x3fa9939a0e311360              # double 0.049954237205872998
	.quad	0x3fecc446b7827e95              # double 0.8989595016646087
	.quad	0x3fe8f4bbfe702911              # double 0.77987479872652632
	.quad	0x3fd8b5ac96e91f7a              # double 0.38608851182333803
	.quad	0x3fea2a172ef53538              # double 0.81763800784543772
	.quad	0x3fd3f6afa2e39fb2              # double 0.31193152339119046
	.quad	0x3fe0d0f89708cf18              # double 0.52550916193874553
	.quad	0x3fe0179b8e3eb5e6              # double 0.50288179189891191
	.quad	0x3fb92ca0290e74f8              # double 0.098337183021118935
	.quad	0x3fe5d19fd23b55e6              # double 0.68183890400785852
	.quad	0x3fea67285c6b3591              # double 0.82509248781723177
	.quad	0x3fa7711439cf3c30              # double 0.045784599358391964
	.quad	0x3fa51fb4f4ef0230              # double 0.041257529162525564
	.quad	0x3fe01595c0bbca8d              # double 0.50263488429330183
	.quad	0x3fb0f604679c55a8              # double 0.066253924651695884
	.quad	0x3fd3ca5e25314828              # double 0.30922654754715717
	.quad	0x3fe16d54f5ad8c62              # double 0.54459617599458121
	.quad	0x3fbaca0ee9184418              # double 0.10464566412726162
	.quad	0x3fd96003e8cc92c2              # double 0.39648530706680785
	.quad	0x3fe09a817dc25026              # double 0.51886057436286559
	.quad	0x3fe4aa7e0668efcf              # double 0.64581204654631985
	.quad	0x3fee39b898bda079              # double 0.94454603035138895
	.quad	0x3fea99125ccb9f90              # double 0.83118551372625582
	.quad	0x3fed9589dfedea3c              # double 0.9245042203541014
	.quad	0x3fe39526830114f0              # double 0.61195684038889731
	.quad	0x3f6accda075f4a00              # double 0.0032715090155559512
	.quad	0x3fe93d63494b9d86              # double 0.78874363246443191
	.quad	0x3fec273178042f33              # double 0.87978433075611517
	.quad	0x3fef744ff0c465c7              # double 0.98294827484931424
	.quad	0x3fd263bb65f33314              # double 0.28733715969137674
	.quad	0x3fd14c07afd4583a              # double 0.27026550455900955
	.quad	0x3fe7302eceb07391              # double 0.72463169449803122
	.quad	0x3fc9ddfc667e7bd0              # double 0.20208697323411551
	.quad	0x3fe6bdab882740b1              # double 0.71065308182189402
	.quad	0x3fe1b824d6204e26              # double 0.553728502478809
	.quad	0x3fccb66b404089cc              # double 0.22431698453244875
	.quad	0x3fe227b4736e9aab              # double 0.56734678788491999
	.quad	0x3fdfc63dafd56972              # double 0.49647466822866371
	.quad	0x3f927f0b918e0320              # double 0.018062763937908177
	.quad	0x3feb3ae7cdd346ff              # double 0.8509406108880454
	.quad	0x3feea64f183c6436              # double 0.95780138715338725
	.quad	0x3fed908409bfc6ca              # double 0.92389108566404698
	.quad	0x3fdc670ea7351f08              # double 0.44379011467798124
	.quad	0x3fedc93ef63622a5              # double 0.93081615532090167
	.quad	0x3fe837191f69a035              # double 0.75672584662698361
	.quad	0x3fdce7fc204703f4              # double 0.45165923263635865
	.quad	0x3fcb7d0b25a1122c              # double 0.2147535260902641
	.quad	0x3fbfad94a0ccac20              # double 0.12374237943429067
	.quad	0x3fdffd8853473928              # double 0.49984939701689024
	.quad	0x3fe284b355ef83bd              # double 0.57869879516885414
	.quad	0x3fe4f6825f68310c              # double 0.65509146341494917
	.quad	0x3fc526fe156e2e30              # double 0.16525245710759995
	.quad	0x3feb97522e68050a              # double 0.86222180427299233
	.quad	0x3fc81c615fcc9458              # double 0.1883661000985366
	.quad	0x3fbd9e8e9cd49338              # double 0.11570063904634942
	.quad	0x3fd351c702a05dfe              # double 0.30186629539954868
	.quad	0x3fe8ef241fc600be              # double 0.77919203000785564
	.quad	0x3fe07db6f14ead88              # double 0.51534602289523068
	.quad	0x3fd2b63b1cc1e0f4              # double 0.29237249191602577
	.quad	0x3fc0af158783abbc              # double 0.13034314267073721
	.quad	0x3fe9ea2695ebd395              # double 0.80983285218700252
	.quad	0x3fd6c1e5871de0b6              # double 0.35558450884810655
	.quad	0x3fec7dab6e2f8fc2              # double 0.890340533453575
	.quad	0x3fd75bf13007fac8              # double 0.36498670282882673
	.quad	0x3febb66464c37234              # double 0.86601466827739281
	.quad	0x3fd25377108b0006              # double 0.28634430518650367
	.quad	0x3fa3347e2b897d60              # double 0.037509863676627786
	.quad	0x3fdff8a5120351d8              # double 0.49955107459143511
	.quad	0x3fe257366188a11d              # double 0.57314604806473179
	.quad	0x3fe252c34e93f749              # double 0.57260289523376529
	.quad	0x3fea0816e957e978              # double 0.81348748755344413
	.quad	0x3f86be43817b4b00              # double 0.011105086697545286
	.quad	0x3fe9bd048b9fcb59              # double 0.8043234564814653
	.quad	0x3fe0ab22dcf543bf              # double 0.52089064746734681
	.quad	0x3fe61d71e8107410              # double 0.69109435391476559
	.quad	0x3fe364642e437833              # double 0.6060048011384026
	.quad	0x3fd3cef940578b42              # double 0.30950766833682419
	.quad	0x3fedd8a6ce9b9e7d              # double 0.9326967273054404
	.quad	0x3fdae33ca5b9d1f6              # double 0.42011943992773071
	.quad	0x3fd3e054d73894e6              # double 0.31056710260084086
	.quad	0x3fefa11e20480a96              # double 0.98841768555606069
	.quad	0x3fe71ee312b322ed              # double 0.72252038624091386
	.quad	0x3fc4389e13dd17ac              # double 0.15797782869247834
	.quad	0x3fc53e306cef121c              # double 0.16596036261593461
	.quad	0x3feb9d8d3ced391e              # double 0.86298238658654092
	.quad	0x3feb509cf11770aa              # double 0.85359046066470978
	.quad	0x3fd41deb787d04f2              # double 0.31432616011086545
	.quad	0x3fd6331e3be0e020              # double 0.34687000129224721
	.quad	0x3fe2a16f70eb9d41              # double 0.58220645956763672
	.quad	0x3fd1177dfb420b86              # double 0.26705884491837428
	.quad	0x3fc36f072c0a5ae4              # double 0.15182580614483421
	.quad	0x3fd98f5240e400bc              # double 0.39937263810135071
	.quad	0x3fd3739f37d817f6              # double 0.30393200353171268
	.quad	0x3feebb1b4cca317f              # double 0.96034016607295302
	.quad	0x3fa80db2bc8e42a0              # double 0.046979508893064237
	.quad	0x3fee8cab6f61bb28              # double 0.95467159036875148
	.quad	0x3fd544acf850eeb0              # double 0.33231662988303423
	.quad	0x3f87e94c6629f740              # double 0.011675450198932347
	.quad	0x3fe437cf34389985              # double 0.63181266974861272
	.quad	0x3fc24360df5cf41c              # double 0.14268122583772047
	.quad	0x3fd49046d6e61080              # double 0.32130595194053768
	.quad	0x3feddbbcb6e6140e              # double 0.93307338449869959
	.quad	0x3fc3698318625934              # double 0.15165747347482184
	.quad	0x3fee2c6a41675562              # double 0.94292176031255459
	.quad	0x3fe4eaeadf89b3d0              # double 0.65367644939180458
	.quad	0x3fddecf2a9227a32              # double 0.46758715169008547
	.quad	0x3fed6d123fe240a6              # double 0.9195643661241959
	.quad	0x3fd2e3fed150b1ea              # double 0.29516573372782651
	.quad	0x3fd27da26a64dc9e              # double 0.2889181174281904
	.quad	0x3fe914225cf04b3a              # double 0.78370779182510053
	.quad	0x3fb5a8513345d838              # double 0.084599566476612931
	.quad	0x3fe9187f6d8106cd              # double 0.78424044978620489
	.quad	0x3fe0cc4cced49427              # double 0.52493896862563794
	.quad	0x3fcab14ef3602224              # double 0.20853602298326834
	.quad	0x3fd5f05d5e76ca86              # double 0.34279569840433799
	.quad	0x3fd6635daf6a9ce6              # double 0.34981481676591242
	.quad	0x3fe75ec47b34847b              # double 0.73031829894547629
	.quad	0x3fecca437281ce18              # double 0.89969036450060269
	.quad	0x3fe68c23da19bc0a              # double 0.70460693929442297
	.quad	0x3fd0ebcb89fc134e              # double 0.26439178919854534
	.quad	0x3fed68be6d84e523              # double 0.91903611555531872
	.quad	0x3fd35c3f4a57f0a6              # double 0.3025053239832779
	.quad	0x3feaeb79ce9d1e29              # double 0.84124460558172587
	.quad	0x3fd75d9ad99a59ec              # double 0.36508818865095694
	.quad	0x3febc044e76617df              # double 0.86722035594061342
	.quad	0x3fda6e9eb63a196c              # double 0.41300170703507066
	.quad	0x3fbb510dc1013910              # double 0.10670553171187103
	.quad	0x3fdbdbae74212924              # double 0.43528329220557027
	.quad	0x3fd513ee62862a62              # double 0.32934150334827994
	.quad	0x3fbdebe065d05010              # double 0.11688044057547153
	.quad	0x3fef164cc839869f              # double 0.97147215944660902
	.quad	0x3fdf7ad89f7bd9d4              # double 0.49187293600644222
	.quad	0x3fc7e1bf02b9a51c              # double 0.18657672532143799
	.quad	0x3fbe73770d82d678              # double 0.1189493568407104
	.quad	0x3fe2b9e82f37afb3              # double 0.58519372198269648
	.quad	0x3fdfe319e5ea3f32              # double 0.49823615505828223
	.quad	0x3fd5415c90fa54a6              # double 0.33211435468667572
	.quad	0x3fd6afd217fe03dc              # double 0.35448124258988201
	.quad	0x3fa1a951cdfda420              # double 0.034494930644378252
	.quad	0x3fd491bd06c44e6e              # double 0.32139516506979404
	.quad	0x3fe7e2a3c914f129              # double 0.74641598962583544
	.quad	0x3fe13ccb0057290b              # double 0.53867101732729006
	.quad	0x3fd3f5854b1a4ff6              # double 0.31186039289718737
	.quad	0x3fda299fa0a2fac2              # double 0.40879049956485514
	.quad	0x3fe2143d86c288e6              # double 0.56497074432652705
	.quad	0x3fe0e92e36a753bd              # double 0.52846441912208031
	.quad	0x3fe10545fb641961              # double 0.53189372157866555
	.quad	0x3fdb195b0f29fefe              # double 0.42342258911956765
	.quad	0x3fd4d5a836c70666              # double 0.3255405936180068
	.quad	0x3fe889497c3c5afb              # double 0.76675867333219061
	.quad	0x3fe3ee05d1010c0c              # double 0.62280550786124556
	.quad	0x3fd38d9d808e94d4              # double 0.30551850847616646
	.quad	0x3fe686c5d9262ef1              # double 0.70395176326698394
	.quad	0x3fc034273dcb4b94              # double 0.12659159199992287
	.quad	0x3fd6bd6d1a8bc6f4              # double 0.35531165687926536
	.quad	0x3fe6daa8756fa78e              # double 0.71419165550945407
	.quad	0x3fe46d752bd2b774              # double 0.63836153563691633
	.quad	0x3fd7bb93bd6e46d8              # double 0.37082379817102895
	.quad	0x3fe08d47bf0aad53              # double 0.51724612534364167
	.quad	0x3fdb08645f3fd0ea              # double 0.42238721181571626
	.quad	0x3f747af8bb047a80              # double 0.0050000873600583029
	.quad	0x3fbe151617b62590              # double 0.11750925139326385
	.quad	0x3feedee1fb6b8b80              # double 0.96470736604202045
	.quad	0x3fd19d49b558f082              # double 0.27522509298047038
	.quad	0x3fe4355f325927ca              # double 0.63151511987347786
	.quad	0x3fcd144ab89c07cc              # double 0.22718175901542137
	.quad	0x3fbd9287f79cffc8              # double 0.11551713748212855
	.quad	0x3fe6d34391e473cb              # double 0.71328905577285562
	.quad	0x3fc69d48246dacc4              # double 0.17667485979777642
	.quad	0x3fbaebb27dab3890              # double 0.10515895431601252
	.quad	0x3fe17d4c0f9c3d05              # double 0.54654505776298434
	.quad	0x3fe476b4ed25d35e              # double 0.63949056928559478
	.quad	0x3fc262f6557cd348              # double 0.14364508794974484
	.quad	0x3f40cc056ae55400              # double 5.1260246781714702E-4
	.quad	0x3fe689f66b1e82dd              # double 0.70434113427844702
	.quad	0x3fb119bf38293910              # double 0.066799117289722654
	.quad	0x3fe6feadc31f2140              # double 0.71858871564567295
	.quad	0x3fe9667a888b594a              # double 0.79375960034193693
	.quad	0x3fea0a63ed11e287              # double 0.81376835158069205
	.quad	0x3fe633e18d2ea301              # double 0.69383313727038864
	.quad	0x3fb9439c20ddf5b8              # double 0.098687894844224355
	.quad	0x3fec2d0daabf04c7              # double 0.88049968098507569
	.quad	0x3fc8e9e1f0200b50              # double 0.19463752961027092
	.quad	0x3fec5d68ee4d3428              # double 0.88640257399822975
	.quad	0x3feaeac1b532231e              # double 0.84115682020010119
	.quad	0x3fe3429e3ba06e14              # double 0.60188209195934173
	.quad	0x3fd0f17ca1973f52              # double 0.26473918705322774
	.quad	0x3fc3deada469f5dc              # double 0.15523310211203423
	.quad	0x3fcda2b5f0fa4c10              # double 0.23152803675165545
	.quad	0x3fd27c716f3552ea              # double 0.28884540424523542
	.quad	0x3feab4cd948d74b3              # double 0.83457068456814054
	.quad	0x3fc5a13d88e7a128              # double 0.16898316559605431
	.quad	0x3fb9da370d94df48              # double 0.10098594743328448
	.quad	0x3fb42dddb86d2758              # double 0.078824861074420993
	.quad	0x3fe0dd2e9295bf29              # double 0.52699974660751991
	.quad	0x3fd150e6976e9c34              # double 0.27056278980529958
	.quad	0x3f9ce52de497f940              # double 0.02821799953198334
	.quad	0x3fe493c5a9e963d6              # double 0.64303858934283187
	.quad	0x3fd842d2b56bce42              # double 0.37907855717569217
	.quad	0x3fc4cc8e6ba7ec3c              # double 0.16249256378782373
	.quad	0x3fe093bad2025552              # double 0.51803341882138398
	.quad	0x3fa2c3430cce5260              # double 0.036645980180001869
	.quad	0x3fe2be43df18d464              # double 0.58572572301512738
	.quad	0x3fe13d6334878fc1              # double 0.53874359378504988
	.quad	0x3fedeeb375d9bbab              # double 0.93538830774001747
	.quad	0x3fe99c9113d4a187              # double 0.80036214707529119
	.quad	0x3fe8df31c47f4a4a              # double 0.77724541071285924
	.quad	0x3fe2ace0dee6ac00              # double 0.58360332045901941
	.quad	0x3fe76f2acb93e4b8              # double 0.73232021104117617
	.quad	0x3fe3c83caf560d5e              # double 0.61819299931850558
	.quad	0x3fda1dc3559215c2              # double 0.40806659084804775
	.quad	0x3fb0f9bfac6d9c00              # double 0.066310863110274454
	.quad	0x3feddb527fd8877d              # double 0.93302273721586426
	.quad	0x3fe79cb0a388453f              # double 0.7378771966925014
	.quad	0x3fad855660105f80              # double 0.057657908655698087
	.quad	0x3fb3a574cc7a8980              # double 0.076743411943004602
	.quad	0x3fc6c77277a7af80              # double 0.17796164362459521
	.quad	0x3fe1c77eba7ca068              # double 0.55560242102820911
	.quad	0x3fe346033d47bac5              # double 0.60229646652973001
	.quad	0x3f8edd09645503c0              # double 0.015070031523125027
	.quad	0x3fcda23ac13f55a0              # double 0.23151335178287713
	.quad	0x3fea77e13167457e              # double 0.82713374756910674
	.quad	0x3fe89dde370a8f35              # double 0.76927099943393407
	.quad	0x3fd32c19372cb336              # double 0.29956655872483695
	.quad	0x3fc6eaeb1278d88c              # double 0.17904413606601499
	.quad	0x3fe1e7035773c203              # double 0.55944983559135186
	.quad	0x3fe7be4168ca2368              # double 0.74197454897612847
	.quad	0x3fdeef90b4feb018              # double 0.48337190318375312
	.quad	0x3fd0f315fb7d8638              # double 0.26483678397753208
	.quad	0x3fe045ee96305e11              # double 0.50853661855484422
	.quad	0x3fe8c6ce1837ef87              # double 0.77426819544005887
	.quad	0x3fb4cf2c664cc280              # double 0.08128621575884587
	.quad	0x3fe92aae0ad1274e              # double 0.78645994293877108
	.quad	0x3fef9ac3f9fa5084              # double 0.98764227699076956
	.quad	0x3fe823ba2da2570f              # double 0.75436123764913698
	.quad	0x3feba87b8439e1d3              # double 0.86431670976076658
	.quad	0x3fe598650f71ca48              # double 0.67485287682058814
	.quad	0x3fd671d89c864512              # double 0.35069861684412829
	.quad	0x3fe4d9ebf74cdb93              # double 0.65160177517724305
	.quad	0x3fd026e52993c5a8              # double 0.25237397251393157
	.quad	0x3fce8816aa29a0f4              # double 0.23852809246751117
	.quad	0x3fd4cba9d30f712a              # double 0.32493062602385925
	.quad	0x3fdd34e6cca2f46e              # double 0.4563538549808247
	.quad	0x3fcd896c556d7e30              # double 0.23075632258677237
	.quad	0x3fb458060b39fa80              # double 0.079468133679236885
	.quad	0x3fb5c4c8bdcf4e78              # double 0.085033937778740909
	.quad	0x3fea564bcbcc5484              # double 0.82303418926552796
	.quad	0x3fcd712c2ee84a9c              # double 0.23001625337982012
	.quad	0x3fe6f65f4ff35405              # double 0.71757474532444177
	.quad	0x3fcd56bf77496430              # double 0.22920983624024549
	.quad	0x3febcbac2e7eafd4              # double 0.86861237603215579
	.quad	0x3fca7681dc8560bc              # double 0.20674155490519819
	.quad	0x3fe0b3fe8e2b305b              # double 0.52197196738553531
	.quad	0x3fe81b3468131aa8              # double 0.75332088782382289
	.quad	0x3fe4a077a45fdeea              # double 0.64458829979318222
	.quad	0x3fe8f22e1ff524b5              # double 0.77956300965992986
	.quad	0x3fe58b5907009e15              # double 0.67326022498758908
	.quad	0x3fed1a59e914b568              # double 0.90946670077907488
	.quad	0x3fe8e0f332163b9e              # double 0.77745971472346631
	.quad	0x3fe9d125a158cd5d              # double 0.80678063881934359
	.quad	0x3fe9551ca8708ebc              # double 0.79163964174627876
	.quad	0x3fd307a42d335dce              # double 0.29734138883710848
	.quad	0x3fd76f390bf841fe              # double 0.36616350335046366
	.quad	0x3fe2399f5b7867f9              # double 0.56953399529743287
	.quad	0x3fe4d5daca648b54              # double 0.65110530404886413
	.quad	0x3fda9a3007501670              # double 0.41566086496491206
	.quad	0x3fdbd0eeddeece46              # double 0.43462726281288544
	.quad	0x3fec991fa6d9241b              # double 0.89369185054340805
	.quad	0x3fd97038eea07352              # double 0.39747451117891786
	.quad	0x3fd02bf1da918c8a              # double 0.25268217415413885
	.quad	0x3fea35ce93e68b1e              # double 0.81906823050335098
	.quad	0x3fe7697aed4dab7a              # double 0.73162599895782354
	.quad	0x3fb5deb3bec9f0c8              # double 0.085429414824775951
	.quad	0x3fdd70e0857ba64c              # double 0.46001446757745579
	.quad	0x3fd8074c8ba6926e              # double 0.37544549596558496
	.quad	0x3fec7985eff19df0              # double 0.88983437408472632
	.quad	0x3fe8ec502353dfbd              # double 0.77884680652549998
	.quad	0x3feba0bf08740e88              # double 0.86337234164280208
	.quad	0x3f767089758d5a00              # double 0.0054784173488173771
	.quad	0x3fe38d7ae6708b17              # double 0.61102051742304553
	.quad	0x3feb916d370befa5              # double 0.86150227309507399
	.quad	0x3fa14ab47c2f4210              # double 0.033773079070332668
	.quad	0x3fddd08e8fd2a774              # double 0.46585430188371579
	.quad	0x3fe942600a8d4601              # double 0.78935243664653865
	.quad	0x3febe89487ba2d7d              # double 0.87214113721113018
	.quad	0x3fb26ffeaa25fb60              # double 0.072021404781464238
	.quad	0x3fa1df0841c03890              # double 0.034904726053455737
	.quad	0x3fef134d87afdf8a              # double 0.97110630513542273
	.quad	0x3fd78da25da8d520              # double 0.36801966806827302
	.quad	0x3fe885b91cdba4dc              # double 0.76632362018895205
	.quad	0x3fcc6dddd41c537c              # double 0.22210286004033353
	.quad	0x3fe3dfa775cd140c              # double 0.62105153091454346
	.quad	0x3fe7f3d0ea7ce761              # double 0.7485127048341661
	.quad	0x3fede508bec812d9              # double 0.93420827161807118
	.quad	0x3febd5c98034cdc0              # double 0.86984705963407549
	.quad	0x3fb1f01dac9faf38              # double 0.070070128101801354
	.quad	0x3feb27b5bc432a86              # double 0.84859740037912057
	.quad	0x3fe2d96a40143cd5              # double 0.58903992190780718
	.quad	0x3fc91a163b32ccf0              # double 0.19610860720204171
	.quad	0x3fd9246db1ef8500              # double 0.39284841896558476
	.quad	0x3feb605f8bf2dc34              # double 0.85551431020474533
	.quad	0x3fe6d00e3abe5f03              # double 0.71289741013876584
	.quad	0x3fe203690ab964fe              # double 0.56291629881448535
	.quad	0x3fd419be5bfafb1c              # double 0.31407126409969677
	.quad	0x3fef977c68a6c038              # double 0.98724193992348485
	.quad	0x3fd58f5908445b74              # double 0.33687425429655282
	.quad	0x3fc171b510d88ffc              # double 0.13628257105403907
	.quad	0x3fde95bd85dcbc1e              # double 0.47788942406163126
	.quad	0x3fe9207d5b3419ea              # double 0.78521602452457029
	.quad	0x3fd09e0700423186              # double 0.25964522385836408
	.quad	0x3fd1e765f192e3f4              # double 0.27974842635336405
	.quad	0x3fdef2265edebbda              # double 0.4835296560731287
	.quad	0x3fe7fe2eb58a7755              # double 0.74977813203052313
	.quad	0x3fe348b13612afd5              # double 0.6026235633958047
	.quad	0x3fef002544f61396              # double 0.9687677714251659
	.quad	0x3fc8c6b828d3513c              # double 0.19356443398886281
	.quad	0x3fef7b7ac494ab20              # double 0.98382318873095542
	.quad	0x3fc5bbbf854ce074              # double 0.16979211815646844
	.quad	0x3fc2127a7dcd1c34              # double 0.14118891852032933
	.quad	0x3fe53ebc53d720f3              # double 0.66390816092555693
	.quad	0x3fd7ccc83d9ae94a              # double 0.37187391296506134
	.quad	0x3fe71b558edccc4b              # double 0.72208669569807549
	.quad	0x3f7356e381851600              # double 0.0047215353918708125
	.quad	0x3fc4d8c839e7d190              # double 0.16286566569727912
	.quad	0x3fb38ba375436148              # double 0.076349464539252954
	.quad	0x3fe98b0e4cfcc65f              # double 0.79822459255792555
	.quad	0x3fe795b426b5c916              # double 0.73702437935415577
	.quad	0x3fea9ea1942d1186              # double 0.83186415615686893
	.quad	0x3fead4444eef16ff              # double 0.83841147820268691
	.quad	0x3f8063a13fe10e40              # double 0.0080025289172517277
	.quad	0x3fd85e7c4e53bf2e              # double 0.38076694153913848
	.quad	0x3fb50272b35d8b18              # double 0.082068604269391776
	.quad	0x3fd7223e49233ae2              # double 0.36146504537911828
	.quad	0x3fe2f30a8932fefa              # double 0.59216810986251223
	.quad	0x3fc5eb285fa169cc              # double 0.17123894376238835
	.quad	0x3fefe6f4ea59d340              # double 0.99694295665413079
	.quad	0x3fe679cb578be2d4              # double 0.70236746882354817
	.quad	0x3fc87ccf6e9688b8              # double 0.19130890750699847
	.quad	0x3fd73f6f762d44ac              # double 0.36324678936677901
	.quad	0x3fb8b67e177f6e58              # double 0.09653461526561935
	.quad	0x3fde3878f411e476              # double 0.47219680628729266
	.quad	0x3fec26cf7193a753              # double 0.87973758871997132
	.quad	0x3fc1819a2716e350              # double 0.13676764401113894
	.quad	0x3fe3160cf3e361f1              # double 0.59644172319809574
	.quad	0x3fcfce8111ef70a8              # double 0.24848950744388287
	.quad	0x3fea29d86e69199f              # double 0.81760808529434204
	.quad	0x3fe1bbeca30ff260              # double 0.55418998573402334
	.quad	0x3fe818c799253651              # double 0.75302486334994445
	.quad	0x3f9ee6efa956f9c0              # double 0.030177826605489733
	.quad	0x3fd53140fa08a514              # double 0.33113121430740589
	.quad	0x3fba8b89532d84d8              # double 0.10369165688236437
	.quad	0x3feaafd4dffb88bc              # double 0.83396381136505892
	.quad	0x3fe46cd664890427              # double 0.6382858241632946
	.quad	0x3fe9ed1eceb8c3d8              # double 0.81019535422648925
	.quad	0x3fdbf2805cc79c50              # double 0.43667611179848098
	.quad	0x3fb8daaefb491d28              # double 0.097086845730804172
	.quad	0x3feb48bade5cdcf5              # double 0.85262816839431699
	.quad	0x3fdd048a2ac26d80              # double 0.45340208221178813
	.quad	0x3fa00b65fd4f9b40              # double 0.03133696286368215
	.quad	0x3fa7d445c7d96380              # double 0.046541386266375717
	.quad	0x3fd159c88fb12140              # double 0.27110494644559324
	.quad	0x3fe2deeac6cfc5de              # double 0.58971155958550603
	.quad	0x3fe77dedc72d3191              # double 0.73412217046420569
	.quad	0x3fe7343af4df8466              # double 0.72512576891689373
	.quad	0x3fd32f9db8bba588              # double 0.29978125610667705
	.quad	0x3fb68f7c7189a7f8              # double 0.0881269242469499
	.quad	0x3fe75e6be863d51f              # double 0.73027606381097943
	.quad	0x3fcdaa22d0f29834              # double 0.23175463869591939
	.quad	0x3fed7384a3fc6f26              # double 0.92035133389024248
	.quad	0x3fe2cdb2a68a8942              # double 0.58760960128373818
	.quad	0x3fea2177abd48971              # double 0.81658538399305602
	.quad	0x3fe196adf866c943              # double 0.54964350238723403
	.quad	0x3fc9320be42012f0              # double 0.19683979643755078
	.quad	0x3fe5f7caf80cc809              # double 0.68649815032245087
	.quad	0x3fc6da47514240a4              # double 0.17853633372988498
	.quad	0x3fe0506a2df6b5da              # double 0.50981625535285535
	.quad	0x3fea636633267ff9              # double 0.82463369360266292
	.quad	0x3fedc3c5a51ff237              # double 0.93014795542655448
	.quad	0x3fe38a4374cc6f6f              # double 0.61062786876889941
	.quad	0x3fe96e4cca447819              # double 0.79471435075152208
	.quad	0x3feb0dafce1bc8ed              # double 0.8454207444722478
	.quad	0x3fdf72990da48f3c              # double 0.49136949856096002
	.quad	0x3fed74dcb57078d3              # double 0.92051539838191798
	.quad	0x3fe95a95491408cb              # double 0.79230751298043722
	.quad	0x3fe9c9c01ea46356              # double 0.80587774262230982
	.quad	0x3fd561a0fde8d982              # double 0.33408379360061968
	.quad	0x3fda61e5ec5dd3b4              # double 0.41222522814433238
	.quad	0x3fe3cfc689e77cab              # double 0.61911322531149915
	.quad	0x3fc3eefcc800e110              # double 0.15573081746857342
	.quad	0x3fb14e5cb4307a38              # double 0.067601961127800148
	.quad	0x3fdaf8e20bddcbea              # double 0.42144061240031638
	.quad	0x3f998edf12402b80              # double 0.024959073532993425
	.quad	0x3fe36c7739d58ebe              # double 0.60699044509643563
	.quad	0x3fda6e5d514948bc              # double 0.41298611581909106
	.quad	0x3fe31e1b97841ec5              # double 0.59742526619898995
	.quad	0x3feea3c83de337dd              # double 0.95749294364372484
	.quad	0x3fe6f5efbbb39b71              # double 0.71752154026476778
	.quad	0x3fbe5e1b1d8e5b28              # double 0.1186234423788447
	.quad	0x3fe4117356acffcf              # double 0.62713019303191142
	.quad	0x3feeb60cdbd92f57              # double 0.9597229284204144
	.quad	0x3f9e3163c478df60              # double 0.029485281817158593
	.quad	0x3fe9dc285a6c9cdd              # double 0.8081247106646533
	.quad	0x3fd9ac27ce6664ba              # double 0.40113253742454058
	.quad	0x3fb74bc7d3c0a390              # double 0.091000069806467687
	.quad	0x3fd54fa8938fff38              # double 0.33298696909331538
	.quad	0x3fd4059dd109dfcc              # double 0.31284280218050919
	.quad	0x3fb4e2941a83f8a8              # double 0.081582313989175703
	.quad	0x3fe2f93835a3a8fc              # double 0.5929223106043362
	.quad	0x3fc8d5b48920215c              # double 0.1940217656667852
	.quad	0x3fda5b5076fea90e              # double 0.41182338352759096
	.quad	0x3fc671bbcc143020              # double 0.17534587349689534
	.quad	0x3fec837756cddf68              # double 0.8910481162447299
	.quad	0x3fe36be9dfa50a3e              # double 0.60692304306605371
	.quad	0x3fdba3e9c08a1fca              # double 0.43187946131410782
	.quad	0x3fe5959a22c8a49f              # double 0.67451197427466869
	.quad	0x3fd7d1d2fd4b3da0              # double 0.37218165145619686
	.quad	0x3fe18e2ba0aa02a5              # double 0.54860478763301457
	.quad	0x3fe055f4d9c0b777              # double 0.51049273042529719
	.quad	0x3fd8f75686dbced4              # double 0.3900963131884343
	.quad	0x3fe5a5810d58567e              # double 0.67645313841303767
	.quad	0x3fc88210b33ec94c              # double 0.19146927597246088
	.quad	0x3fd1d2a63cee5606              # double 0.27848201704304676
	.quad	0x3fa2d7213cca5d30              # double 0.036797560377801353
	.quad	0x3fc8e32593c01d7c              # double 0.19443196977975308
	.quad	0x3fa25a27e87873e0              # double 0.035844084861515801
	.quad	0x3fe13d7ea321c3e6              # double 0.53875667440126729
	.quad	0x3fd8ac054c79aec6              # double 0.38549931019109029
	.quad	0x3fecca945489cac8              # double 0.89972893248917618
	.quad	0x3fe485c7a77cd5ee              # double 0.64133055412702134
	.quad	0x3fcd308e40392004              # double 0.22804430137534848
	.quad	0x3fd7e048d506a030              # double 0.37306423953350798
	.quad	0x3fdb5433e914eac6              # double 0.42701432954678997
	.quad	0x3fd5ffac2841bd2a              # double 0.34373001033141526
	.quad	0x3fd309ca707a640e              # double 0.29747258171261215
	.quad	0x3fdd295636edbc3c              # double 0.45564799656034771
	.quad	0x3fc0c2934825fbf4              # double 0.13093796751851949
	.quad	0x3fae2a3a85f668b0              # double 0.0589159287003026
	.quad	0x3feb1aadf7ada561              # double 0.84700678229016202
	.quad	0x3fd4f5823b0ab14a              # double 0.32748466268346432
	.quad	0x3fe67131ca6931e8              # double 0.70131768735296607
	.quad	0x3fe6f080632999b1              # double 0.71685809486080221
	.quad	0x3fde6fd630759f84              # double 0.47557596905107169
	.quad	0x3fc6403aed726ba4              # double 0.17383514970864866
	.quad	0x3fdd73390bc7fe00              # double 0.46015764379987445
	.quad	0x3fe567978c126fba              # double 0.66889550550285226
	.quad	0x3fe8365af8888601              # double 0.75663517514857415
	.quad	0x3fe950e6ac166a00              # double 0.79112561808443616
	.quad	0x3fe6b5c58a1a29f3              # double 0.70968892071806378
	.quad	0x3fe7d82b9795071e              # double 0.74513797384154024
	.quad	0x3fd9747cc7af5054              # double 0.39773482799978876
	.quad	0x3f856cfc8153e3c0              # double 0.010461781212585453
	.quad	0x3fd63a75e7c0fa66              # double 0.34731814987381993
	.quad	0x3fb075e4b48bb080              # double 0.064298910215883964
	.quad	0x3fe87fc5f44bcf2e              # double 0.76559732164466765
	.quad	0x3fe04e54a08c5a02              # double 0.50956183774070518
	.quad	0x3fcd6b66f3e39f7c              # double 0.22984015377664579
	.quad	0x3fe4a317f54c6304              # double 0.64490888509598721
	.quad	0x3fa2b484808f9fe0              # double 0.036533489888654236
	.quad	0x3fe55e67bf24c44c              # double 0.66777407963503199
	.quad	0x3fd6a19654303f60              # double 0.3536125013497351
	.quad	0x3fdfb7f4f656f772              # double 0.49560283714878672
	.quad	0x3fd6add5fa6e0062              # double 0.3543600984194254
	.quad	0x3fef53d90d648dde              # double 0.97898533454684489
	.quad	0x3fe847db9b1ad86f              # double 0.75877170843047093
	.quad	0x3fada813f283eff0              # double 0.057922957757881366
	.quad	0x3fc3004b308487c0              # double 0.14844646328952926
	.quad	0x3fe23c4ba69e5abd              # double 0.56986029188814025
	.quad	0x3fb86fa8439df7a8              # double 0.09545375490958341
	.quad	0x3fe04a710179ff0d              # double 0.50908708847416195
	.quad	0x3fddd2dff950886a              # double 0.46599578234793759
	.quad	0x3fd9acaae5add8a4              # double 0.40116379193876583
	.quad	0x3fd84263488d3618              # double 0.37905199132078016
	.quad	0x3fdb6be1b44a31f6              # double 0.4284595738070317
	.quad	0x3f904e950b233380              # double 0.015924767308024723
	.quad	0x3fe1d30f1b1f56a6              # double 0.55701403901430946
	.quad	0x3fe778089de5a27a              # double 0.73340254630336621
	.quad	0x3fe4e09e02958043              # double 0.65241909508404949
	.quad	0x3fe3df3c8d5ff8c4              # double 0.62100055324824455
	.quad	0x3fc275104210e258              # double 0.14419749475361487
	.quad	0x3fe8c8d0c53b612e              # double 0.77451361200204416
	.quad	0x3fcc44c42b0b5890              # double 0.22084858037732547
	.quad	0x3fd3258f4e187ed6              # double 0.29916746737033628
	.quad	0x3fe75e1602c7a4fe              # double 0.73023510497037569
	.quad	0x3fcc2a30300efefc              # double 0.22003748270616785
	.quad	0x3fc6ce450c8db960              # double 0.17816985238045913
	.quad	0x3fe0bad6dcd6a726              # double 0.52280753262059387
	.quad	0x3fee5288b71913b3              # double 0.94757495652503676
	.quad	0x3fc9e6717f6a8950              # double 0.20234507295124127
	.quad	0x3fd1eb56fe920a3e              # double 0.27998900280377714
	.quad	0x3fe5422c7edddc42              # double 0.66432785776749648
	.quad	0x3fe28e2f38076ddb              # double 0.57985650008361789
	.quad	0x3febd7465639533c              # double 0.87002865639315229
	.quad	0x3fc2c388ee009d3c              # double 0.1465922510262575
	.quad	0x3fd5ae2f8582b61a              # double 0.33875644720214526
	.quad	0x3fd1de7a2de22dda              # double 0.27920393448650105
	.quad	0x3f84f5e15486cf40              # double 0.010234604255721202
	.quad	0x3fef29ce77f6ba72              # double 0.97385333471704727
	.quad	0x3fd95ede6b5c0726              # double 0.39641533359837167
	.quad	0x3fc3d19efc068078              # double 0.15483462625434519
	.quad	0x3f9e7a00b0d1dda0              # double 0.029762278358672511
	.quad	0x3fe80fa30a1b2eb0              # double 0.7519087979685164
	.quad	0x3fd35ec118d37adc              # double 0.30265834259436786
	.quad	0x3fe1de140ac128e4              # double 0.55835916615003756
	.quad	0x3fc254beaaa182c8              # double 0.14321120578372004
	.quad	0x3fe7eacd1dc6e66b              # double 0.74741226020632945
	.quad	0x3feaeeddce126623              # double 0.84165849922573377
	.quad	0x3fd31c4f4dc7f600              # double 0.29860289188204092
	.quad	0x3fdf93a23efa7a08              # double 0.49338585043179295
	.quad	0x3feed8f724545a59              # double 0.96398503394704981
	.quad	0x3fdba6b1bdd0c934              # double 0.43204921280552644
	.quad	0x3fe26ecaca84c11f              # double 0.57602443270119241
	.quad	0x3fea975e8a2f409b              # double 0.83097769726920789
	.quad	0x3fe3b9d6afb668c4              # double 0.61643537825445849
	.quad	0x3fdb003f110c904a              # double 0.42189003624867338
	.quad	0x3fe6b2018a58f5a1              # double 0.70922925015445426
	.quad	0x3f94a38121bdbfc0              # double 0.020154969868087624
	.quad	0x3fc5eeacba4f80f0              # double 0.17134627434916849
	.quad	0x3fe47fc30761146e              # double 0.64059592667821419
	.quad	0x3fe7e5034c2279a6              # double 0.74670567388584597
	.quad	0x3fd1ffadd56537b4              # double 0.28123040999787041
	.quad	0x3fdaac7c69d15e18              # double 0.41677770932935365
	.quad	0x3f62d026163d2b00              # double 0.0022965186962314865
	.quad	0x3fceb8da74f57d14              # double 0.24001627646337254
	.quad	0x3fef878815cbab42              # double 0.98529438263845059
	.quad	0x3f9f14bad1a7b920              # double 0.030352515264831514
	.quad	0x3fe93dbbe05bc4f0              # double 0.78878587551130686
	.quad	0x3fc49c0c18583d94              # double 0.16101218403535411
	.quad	0x3f8a18b913a4ec80              # double 0.012742467796320378
	.quad	0x3fe29a2e171a9a48              # double 0.58132080566867561
	.quad	0x3fe259bb008df850              # double 0.57345342739405147
	.quad	0x3f886b4a5e5dc400              # double 0.01192339039309509
	.quad	0x3fe9a40c5193bb1d              # double 0.80127540524503937
	.quad	0x3fe1dfae8f669818              # double 0.55855491645775412
	.quad	0x3fe0784a6d07c9f0              # double 0.51468392653469941
	.quad	0x3fcb1d0f2c062da0              # double 0.21182431840530302
	.quad	0x3fe60c2e9d3df328              # double 0.6889870711453101
	.quad	0x3fe030dc2b51205a              # double 0.50596435985881816
	.quad	0x3fe99de7812c20f6              # double 0.80052542904834811
	.quad	0x3f5c9c570d9f6200              # double 0.0017462587479625258
	.quad	0x3fe02dd9846e62f0              # double 0.50559688439815709
	.quad	0x3fdc79ac058490a4              # double 0.44492626704073701
	.quad	0x3fe72a5cccefb1af              # double 0.72392120386716907
	.quad	0x3fe791697306238b              # double 0.73650047746296943
	.quad	0x3fd8e07b15e934fc              # double 0.38870122089140557
	.quad	0x3fd7080faebe3e6e              # double 0.35986702027091766
	.quad	0x3fe0f589e8390079              # double 0.52997298580159147
	.quad	0x3fe206434419e64d              # double 0.56326449681291424
	.quad	0x3fd4ee896f1ef3e6              # double 0.32705913402224807
	.quad	0x3fe16f5588e5a13b              # double 0.5448405908364643
	.quad	0x3fe2c8d99247ca86              # double 0.58701780863187092
	.quad	0x3feacfa1f3b15290              # double 0.83784577938293303
	.quad	0x3fe4b3145ee75749              # double 0.64686029945253509
	.quad	0x3fe8d768678e5a0f              # double 0.7762949011401491
	.quad	0x3fe5d67b367867ba              # double 0.68243179930436004
	.quad	0x3fef691aa7ff283b              # double 0.98158009349686581
	.quad	0x3fe8135c1a53f4ee              # double 0.75236325399569437
	.quad	0x3fd2bbee180b8e50              # double 0.29272034023435811
	.quad	0x3fd1d53fffc26aae              # double 0.27864074684627382
	.quad	0x3fd11ac237df61f8              # double 0.2672582193022488
	.quad	0x3fe380fe4e3027eb              # double 0.60949626227488574
	.quad	0x3fedfec63109b936              # double 0.93735036447268416
	.quad	0x3fd4e02dd9aa00c0              # double 0.32618280655152532
	.quad	0x3fbec7f1eff00ef0              # double 0.120238419607684
	.quad	0x3fe66d4ad2c24c60              # double 0.70084134258139485
	.quad	0x3feaa5bb930ef106              # double 0.83273104402863463
	.quad	0x3fe8f3eae3df7ff9              # double 0.77977509027914416
	.quad	0x3fd7920c68b957f0              # double 0.36828909136727273
	.quad	0x3fe788c90bfbea9b              # double 0.73544742909082872
	.quad	0x3fec5507eb574005              # double 0.88537975277904535
	.quad	0x3fe3e4df6df7ba61              # double 0.6216885707670593
	.quad	0x3fd7d2ef482d70b0              # double 0.37224943207344108
	.quad	0x3fe383028396fc76              # double 0.60974240971689997
	.quad	0x3fa335beb2c35c20              # double 0.037519416162176578
	.quad	0x3fe91140fd72ec0b              # double 0.78335618497601567
	.quad	0x3fd1a60b7dde2fe4              # double 0.27575957576550381
	.quad	0x3fa18709ddf24730              # double 0.034233387320581676
	.quad	0x3fbc89b64c0a93b8              # double 0.11147631985166029
	.quad	0x3fd17b6c6a6118ac              # double 0.27315817249872043
	.quad	0x3fe534c62d402730              # double 0.662692154293131
	.quad	0x3fbeed450e63a1b0              # double 0.12080794907854542
	.quad	0x3fe153207f0a3481              # double 0.54139733135674828
	.quad	0x3fc81aea35af6768              # double 0.188321377004111
	.quad	0x3fcf5797529f62cc              # double 0.24486056837374404
	.quad	0x3fd29499396e2e90              # double 0.29031973465382865
	.quad	0x3fc629dd79dc5d08              # double 0.17315262270197018
	.quad	0x3fe0af95ff43e855              # double 0.52143382889267775
	.quad	0x3fb201f472909d60              # double 0.070342328996607417
	.quad	0x3fca3b2fad077f38              # double 0.20493122051902346
	.quad	0x3fe40229096a983f              # double 0.62526370848787127
	.quad	0x3fc745fcb969e994              # double 0.18182333997158351
	.quad	0x3fd73683b5255e78              # double 0.36270229997669601
	.quad	0x3fe306ec6fc309bd              # double 0.59459516361703602
	.quad	0x3fef7c9552586869              # double 0.98395792086672628
	.quad	0x3fee305d4c9f5787              # double 0.94340386357610917
	.quad	0x3fe1f7d9f4e0ceb4              # double 0.56150529697193585
	.quad	0x3fec84dfc5e50ac4              # double 0.89121998454387396
	.quad	0x3fef5a6f5f017979              # double 0.97978943401157814
	.quad	0x3fed823755f05de6              # double 0.92214552674243744
	.quad	0x3fd6205ec4a44354              # double 0.34572571948324549
	.quad	0x3fddc8b56038885c              # double 0.46537527462544914
	.quad	0x3fad7a2d22c4ee60              # double 0.057572756284994808
	.quad	0x3fc3f91c24a9212c              # double 0.15603973188468367
	.quad	0x3fe4e30b08d1b32d              # double 0.65271522257316905
	.quad	0x3fc3df715ebe6eac              # double 0.1552564346901496
	.quad	0x3fe3b1c6f3c8b0bb              # double 0.61545131315280999
	.quad	0x3fe980b46f85cdd0              # double 0.79696103841564003
	.quad	0x3fda31b9326d40a6              # double 0.40928487705697092
	.quad	0x3fc745ced5ab94e8              # double 0.18181786950223189
	.quad	0x3fec474dc7d94d4b              # double 0.88370408089614594
	.quad	0x3fec40d0bed5e5b6              # double 0.88291203758779235
	.quad	0x3fef94688a77ac63              # double 0.9868662552302222
	.quad	0x3fe0235b2c2391df              # double 0.50431593533408747
	.quad	0x3fcafdd1b7f1a7cc              # double 0.21087094766272541
	.quad	0x3fe1b0e20673da34              # double 0.55284215221656163
	.quad	0x3fde4f320e1f9842              # double 0.47358371142616218
	.quad	0x3fec0a5967560653              # double 0.87626333411044255
	.quad	0x3fe57a648b9b0ee7              # double 0.67119052187669304
	.quad	0x3fd74f1da8600102              # double 0.36420384829399677
	.quad	0x3fd07c0f6a722268              # double 0.25757203478909796
	.quad	0x3fe6f5276fbdeb66              # double 0.7174260313471279
	.quad	0x3fd39655550e9a40              # double 0.3060506182322662
	.quad	0x3fd7b510076f5c22              # double 0.37042618490289858
	.quad	0x3fe0ef14632a84e6              # double 0.52918452614190126
	.quad	0x3fec413af5e16894              # double 0.88296268485580009
	.quad	0x3fd0bec5331dda38              # double 0.26164369575363677
	.quad	0x3fc77f06022821c0              # double 0.18356394868193426
	.quad	0x3fa5ab613400ac60              # double 0.042323148344018291
	.quad	0x3fe854eb946e9b09              # double 0.76036623945842152
	.quad	0x3fe05af40b9ccc48              # double 0.51110269802155361
	.quad	0x3fd350ee34e62b92              # double 0.30181460538795435
	.quad	0x3fd2ef3ea09cc9e8              # double 0.29585233387766019
	.quad	0x3f9a4117a0dd8320              # double 0.025638932412564874
	.quad	0x3fca00462f8e9194              # double 0.20313336679567995
	.quad	0x3fe4e55fd7f0856d              # double 0.6529998033112584
	.quad	0x3fd93a7205659d96              # double 0.39419222380680574
	.quad	0x3fefc2a6e12cd4ef              # double 0.99251121501461436
	.quad	0x3fe6ceb346dd4028              # double 0.71273197022128887
	.quad	0x3fda004cf0ef6656              # double 0.40626834420036084
	.quad	0x3febb0d74d23f089              # double 0.8653370386741851
	.quad	0x3fe173b4c6050e66              # double 0.54537428546650513
	.quad	0x3fb597a101afa4d0              # double 0.084344923888824085
	.quad	0x3fe255da93f254da              # double 0.57298020263501859
	.quad	0x3fe6fedd80ffc657              # double 0.71861148066654834
	.quad	0x3fea12be5f2a87f3              # double 0.8147880419458019
	.quad	0x3fd7993bbaa8b624              # double 0.36872761944218468
	.quad	0x3fefa5cb5aa43ac2              # double 0.98898856833860571
	.quad	0x3fec29a9355111ff              # double 0.88008556760229328
	.quad	0x3fee70a9fab854ce              # double 0.95125292748221013
	.quad	0x3fe5fbc6fe7b1dfa              # double 0.6869845362024869
	.quad	0x3fd9d486357dd13a              # double 0.4035964510324167
	.quad	0x3fd8a51c4d27ae1e              # double 0.38507754835765862
	.quad	0x3fd5c9a54f96b0fe              # double 0.34043247959449718
	.quad	0x3fec52f17c6d067c              # double 0.88512491514138913
	.quad	0x3fd5aec51632fe9c              # double 0.33879210632219681
	.quad	0x3fd19864417dcad2              # double 0.27492624660150711
	.quad	0x3fd2b318913f8374              # double 0.29218115028748248
	.quad	0x3fe74707656d2014              # double 0.72742051896875859
	.quad	0x3feb113b45a72572              # double 0.84585345844349846
	.quad	0x3fee47d0b7b8853e              # double 0.94626651652303173
	.quad	0x3fe0c205736f57d2              # double 0.52368423982511048
	.quad	0x3fe57a1fc0de8619              # double 0.67115771932384682
	.quad	0x3fed7bd9fafa907f              # double 0.92136858958521362
	.quad	0x3fe674e9b28b8845              # double 0.70177159187392901
	.quad	0x3fd4ed131f48408a              # double 0.32696989111810437
	.quad	0x3fef3d7591d0a665              # double 0.9762523506116848
	.quad	0x3fca04012ca72b90              # double 0.20324721031496695
	.quad	0x3fe958f5f28c466d              # double 0.79210946438452157
	.quad	0x3fee54a746a627e1              # double 0.94783366964952276
	.quad	0x3feba5abd1e7f1a6              # double 0.86397353169700319
	.quad	0x3fe4fcd9208cbe4a              # double 0.65586525304201726
	.quad	0x3feb37879775c3a2              # double 0.85052852232012222
	.quad	0x3fc39d851d608cd0              # double 0.1532446282809361
	.quad	0x3fee724f67484b32              # double 0.95145387813895455
	.quad	0x3fd049702b55242c              # double 0.25448230964372232
	.quad	0x3fe94d72b9b168d1              # double 0.79070411937871132
	.quad	0x3fd2d99255351a62              # double 0.29452951737440547
	.quad	0x3fe64565f36e0e11              # double 0.69597146553900491
	.quad	0x3fdeb4ee0dcda03e              # double 0.47979308460208248
	.quad	0x3fe1850ec7c0b899              # double 0.54749239935132998
	.quad	0x3fba8df9bd4e73d8              # double 0.10372887489070537
	.quad	0x3fd0263f75d16de0              # double 0.25233446603462362
	.quad	0x3fe93c68fe4451d9              # double 0.7886242834234124
	.quad	0x3fd4e45434a8db10              # double 0.32643609182871192
	.quad	0x3fd34351d7d9be68              # double 0.30098386840015801
	.quad	0x3fe3b2395d5824d1              # double 0.61550586921034711
	.quad	0x3fe9211d7688239e              # double 0.78529236937275804
	.quad	0x3fe5080242b4ffca              # double 0.65722764042583859
	.quad	0x3fe8a85daf0e6768              # double 0.7705524844234164
	.quad	0x3fe624d889b1967f              # double 0.69199778455067917
	.quad	0x3fcde9daae2896ec              # double 0.233699164427143
	.quad	0x3fee74fcc4d6e689              # double 0.95178068585592357
	.quad	0x3fca53f1d34015b0              # double 0.20568678679425778
	.quad	0x3fd627b7edd0e7ac              # double 0.34617422317716762
	.quad	0x3fc48de97396ac0c              # double 0.16058080810520925
	.quad	0x3fbe265acc5a4c38              # double 0.1177727459819814
	.quad	0x3f8cb1c65096a0c0              # double 0.014010953268396853
	.quad	0x3fbb71268ecb2408              # double 0.1071952913872708
	.quad	0x3fed0b3eb1662385              # double 0.90762266777265721
	.quad	0x3fe0b1bc3370d4d3              # double 0.52169618651410088
	.quad	0x3feb6d6b2ce0032c              # double 0.85710676922471895
	.quad	0x3fd0615ebcfd0d88              # double 0.2559429975119305
	.quad	0x3fe2b6f0e560f62a              # double 0.58483166504419626
	.quad	0x3fe9e0dbf31a2360              # double 0.80869863015059806
	.quad	0x3fb690ba8c909158              # double 0.088145884816701936
	.quad	0x3fd63185768d057a              # double 0.34677254273636715
	.quad	0x3fe34d31c0b21f8d              # double 0.60317313800713779
	.quad	0x3fef3c0b9b0eafd2              # double 0.97607975277559889
	.quad	0x3fcde6a36fd3f878              # double 0.23360102615692191
	.quad	0x3fe22dee314094a4              # double 0.56810674304565056
	.quad	0x3fd375be1674eafe              # double 0.30406143372572092
	.quad	0x3fc0b575f4d2c228              # double 0.13053774313222388
	.quad	0x3fe898b7c7b5247a              # double 0.76864232068432092
	.quad	0x3fd8cd1d7ba0d8a0              # double 0.38751923630787566
	.quad	0x3fd1b909f493143c              # double 0.27691887745124055
	.quad	0x3fdec27ad56d96f0              # double 0.48062010614954342
	.quad	0x3fe288858363b6b2              # double 0.57916522657406788
	.quad	0x3fed8d2a0902a9bf              # double 0.92348195800632726
	.quad	0x3fe314cb60900cf6              # double 0.59628838405515583
	.quad	0x3fe68b04df12258e              # double 0.7044700962880357
	.quad	0x3fc7e99c6878e308              # double 0.18681674100096068
	.quad	0x3fbdafbc4a183360              # double 0.1159627610106333
	.quad	0x3fe401dbde5cdcc7              # double 0.62522691183303258
	.quad	0x3fe8e47fcd75074c              # double 0.77789297226284181
	.quad	0x3fce874030659334              # double 0.23850252497791191
	.quad	0x3faf2e3604827fd0              # double 0.060899436998851919
	.quad	0x3feacf81fa1c20be              # double 0.83783053254685291
	.quad	0x3fe12296917df1c8              # double 0.53547218719864365
	.quad	0x3fead5e805c55dd2              # double 0.83861161353245905
	.quad	0x3fd8ecc870833ee4              # double 0.38945208537641762
	.quad	0x3fe701b8e714628e              # double 0.71896023876895909
	.quad	0x3fdd32a19afb46f8              # double 0.45621528754155305
	.quad	0x3fbebf3c8194f4b0              # double 0.12010553516025158
	.quad	0x3f9f747b12738940              # double 0.030717776299647115
	.quad	0x3fe30bfbe7ead9c6              # double 0.59521289154400203
	.quad	0x3fac03d64bfdc3c0              # double 0.054716774727132655
	.quad	0x3fe04cf6ffd239ff              # double 0.50939512219503047
	.quad	0x3feaf34993d27ac5              # double 0.84219817039032618
	.quad	0x3fb6feef105a0870              # double 0.089827481739151116
	.quad	0x3fd7d2b5189bcf9e              # double 0.37223555949389631
	.quad	0x3fe7a70cfa9b25a2              # double 0.73914193102352876
	.quad	0x3fd6c57e0db040ee              # double 0.35580397927061724
	.quad	0x3fdd904945a3b9fa              # double 0.46193153191316549
	.quad	0x3fda04cb9f1d1e0c              # double 0.40654268778277536
	.quad	0x3fe2bad8b6a1d452              # double 0.58530841513005272
	.quad	0x3fe9552f3ec0f704              # double 0.79164850479693926
	.quad	0x3fed95760b6fb2e4              # double 0.92449476464898028
	.quad	0x3f97ebba0e284780              # double 0.023360163797469635
	.quad	0x3fb188f3b6220a70              # double 0.068495971647317466
	.quad	0x3fc2f66936248f98              # double 0.14814486640636626
	.quad	0x3fd96a280258857a              # double 0.39710426549034816
	.quad	0x3fe7ed4f38551812              # double 0.74771843912526692
	.quad	0x3fdf4e831577c3ee              # double 0.48916699501484018
	.quad	0x3fdddf04e449e7c8              # double 0.46673700612847968
	.quad	0x3fe77c44c6fdddf3              # double 0.73391951432762281
	.quad	0x3fe22785ddcaf4d6              # double 0.56732457465082109
	.quad	0x3fe752c7932eb912              # double 0.72885493036827342
	.quad	0x3fc6da7f559d9ee0              # double 0.17854301147894258
	.quad	0x3fd069cb963478da              # double 0.25645723026708611
	.quad	0x3fefaf7fc51dc4f3              # double 0.99017323016428659
	.quad	0x3fea119eb4b2bd4c              # double 0.81465087216012355
	.quad	0x3fe96e89e6f76515              # double 0.79474349127409261
	.quad	0x3fe6630af0d9f50f              # double 0.69959017792976563
	.quad	0x3fe20ca0b812a1f3              # double 0.56404148055759007
	.quad	0x3fe5594e52df8e66              # double 0.66715160547432784
	.quad	0x3fe64ed4bed2541b              # double 0.69712292928545894
	.quad	0x3fc0c9bc43bf46fc              # double 0.13115647609679815
	.quad	0x3fe86f3b8d7bcbde              # double 0.76357820161353707
	.quad	0x3fc8f1e91b52b0a4              # double 0.19488252481585733
	.quad	0x3feab5556dd4aa71              # double 0.83463546229661578
	.quad	0x3fe32ca2d8b16c55              # double 0.59919874499190462
	.quad	0x3fe4ab606197b97a              # double 0.64591998158520814
	.quad	0x3fe9891f630689db              # double 0.7979885992138479
	.quad	0x3fdb46b9788cf7da              # double 0.42619168064618196
	.quad	0x3fddec5b05542322              # double 0.4675509979284006
	.quad	0x3fe77108be6cba40              # double 0.73254811470344094
	.quad	0x3feba4a45baa092d              # double 0.86384790328182748
	.quad	0x3fb3917f4f5d4ea8              # double 0.076438862682432274
	.quad	0x3fe46f672d5733be              # double 0.63859900336830555
	.quad	0x3fe6e5dcc3a743de              # double 0.71555937017012261
	.quad	0x3fe295cc5214a1b3              # double 0.58078590422979059
	.quad	0x3fb5e2602f016e18              # double 0.085485469318364316
	.quad	0x3fe7cdfb548664d4              # double 0.74389425762924555
	.quad	0x3fc5a83020188828              # double 0.16919519011668283
	.quad	0x3fe5d9ee6c99f942              # double 0.68285294734213431
	.quad	0x3fec3fe3b260645b              # double 0.88279900397459288
	.quad	0x3fe7a126d5d97bfe              # double 0.73842183845033538
	.quad	0x3fe263bfa9a47038              # double 0.57467635281819351
	.quad	0x3fe3e93827d39a0e              # double 0.62221915987612575
	.quad	0x3fed49760cf47f00              # double 0.91521742372785297
	.quad	0x3fe1352c0f26f5b1              # double 0.53774073562060754
	.quad	0x3f9ce482789054c0              # double 0.028215445145254092
	.quad	0x3feb31674a7826b0              # double 0.84978069824975044
	.quad	0x3fe80bb7382b68fb              # double 0.75143013926142943
	.quad	0x3fd4d5db32cd15e0              # double 0.32555274926229849
	.quad	0x3fe6a477d7bc4243              # double 0.70757667671029656
	.quad	0x3fe417bb275ae272              # double 0.62789685904051695
	.quad	0x3fe5d1524543d26f              # double 0.681801924975458
	.quad	0x3fedd6c6f976568a              # double 0.93246792529198896
	.quad	0x3fbf59182c2b6870              # double 0.12245322302206474
	.quad	0x3fde71174928b220              # double 0.47565252441816774
	.quad	0x3fec8a4592ac04ae              # double 0.89187887808670552
	.quad	0x3fedb522c7639e46              # double 0.92836131041708181
	.quad	0x3fe6cd2771dc3f97              # double 0.71254322279308979
	.quad	0x3fe8eefca4cf69d9              # double 0.77917320432180326
	.quad	0x3fc27993a64eccf4              # double 0.14433522816180011
	.quad	0x3fe132abde71612a              # double 0.53743546911122064
	.quad	0x3fe0d13fbb343194              # double 0.52554308474786859
	.quad	0x3feea8aa4360f843              # double 0.95808900031966748
	.quad	0x3fdaa118d2c802b8              # double 0.4160825785075235
	.quad	0x3fe8fee56afea996              # double 0.78111525437752749
	.quad	0x3fe0f3f2e8405f68              # double 0.52977891313183267
	.quad	0x3fd06c1ddd9f8b44              # double 0.25659891741650065
	.quad	0x3fd1151a13ae0b20              # double 0.26691295549260197
	.quad	0x3fd47b0f994762c2              # double 0.32001104324949037
	.quad	0x3fe172c5d84bfc03              # double 0.54526035542937767
	.quad	0x3fee77cbcbc18278              # double 0.95212354465554849
	.quad	0x3fe2527f70d1ed9c              # double 0.57257053408777692
	.quad	0x3fc52a64ce4fca5c              # double 0.16535625528156828
	.quad	0x3fd0093d6b13a39e              # double 0.25056395966253742
	.quad	0x3fdb92e2421a9c84              # double 0.43084007697547855
	.quad	0x3fe5f13ce6ccb9f8              # double 0.68569798543995741
	.quad	0x3fe3fdd8dc19d530              # double 0.6247371958585628
	.quad	0x3fd515239ce3bf80              # double 0.32941522904638276
	.quad	0x3fc25159540ba6fc              # double 0.14310757259163853
	.quad	0x3fade9e451ed6f70              # double 0.058425078392899787
	.quad	0x3fe3c8a8edaddb7d              # double 0.61824461385445739
	.quad	0x3fd45bf2c4341eb6              # double 0.31811207924372853
	.quad	0x3fdae1e9bade715c              # double 0.42003863572042177
	.quad	0x3fc24b67cfa85ebc              # double 0.14292619361434855
	.quad	0x3fbfe14fe91b8558              # double 0.12453174058056982
	.quad	0x3fc62512175c51f0              # double 0.17300630703597575
	.quad	0x3fe5eb3d15ecba13              # double 0.68496565134211307
	.quad	0x3fe833a3a7ceebfd              # double 0.75630362296158149
	.quad	0x3fe2ed020aad5017              # double 0.59143163762428486
	.quad	0x3feb25b1b2dcde27              # double 0.84835133489736314
	.quad	0x3fed1f2922cb1c82              # double 0.91005379481875104
	.quad	0x3fe49277bb152383              # double 0.64287935771527349
	.quad	0x3fe3d1a6bbaf331a              # double 0.6193421998701496
	.quad	0x3fe9ccc3071ab826              # double 0.80624534022877437
	.quad	0x3fe3362cbbd84590              # double 0.60036312759818777
	.quad	0x3fdf5b66e7c0ca68              # double 0.48995373375070139
	.quad	0x3fd5b0669baee008              # double 0.33889165118625941
	.quad	0x3fe9a1acd12da9db              # double 0.8009857259287928
	.quad	0x3fe0eae7852e5149              # double 0.52867485057735408
	.quad	0x3fd3bd09bb1dd3f4              # double 0.30841296456429679
	.quad	0x3fe5d9b44277ae43              # double 0.68282521230634818
	.quad	0x3fdd29e08f16dc0c              # double 0.45568098043025951
	.quad	0x3fe48aeae2f1ebbc              # double 0.64195770573802902
	.quad	0x3fb52988c27aeb30              # double 0.082665011864190729
	.quad	0x3fd376f3f38b196a              # double 0.30413531096964752
	.quad	0x3feabfeb67a0f12c              # double 0.83592767944313584
	.quad	0x3fd6c3862044cbfc              # double 0.35568383361095335
	.quad	0x3fea18de7a9c8831              # double 0.81553577373074948
	.quad	0x3fedbebb01d5aae6              # double 0.92953253134086533
	.quad	0x3fedcb53d8277731              # double 0.93107025354013306
	.quad	0x3fe7edaf93f8d1c8              # double 0.74776438618442231
	.quad	0x3fe7e71b468e809d              # double 0.74696124821277332
	.quad	0x3fefbfb5e9cba644              # double 0.99215217269119948
	.quad	0x3fd0b5fe1d15977e              # double 0.26110794868724685
	.quad	0x3fdb72e591d072be              # double 0.42888774146721775
	.quad	0x3fb288806eabbb50              # double 0.072395350474591114
	.quad	0x3fb13848d56b5398              # double 0.067265083412463844
	.quad	0x3fd8537cf403fdec              # double 0.38009570912978918
	.quad	0x3fd952eaf8ac775a              # double 0.39568590435543671
	.quad	0x3fe6179d25254421              # double 0.69038254981035518
	.quad	0x3fedeb228c15375e              # double 0.93495299682556854
	.quad	0x3fe980b282b2d28b              # double 0.796960120459134
	.quad	0x3fadd24e7cb27cc0              # double 0.058245136949375276
	.quad	0x3fdf0df2c9664c9c              # double 0.4852263418953926
	.quad	0x3fe077d6e576b32c              # double 0.51462883774875001
	.quad	0x3fe9e3f76f2a7d3c              # double 0.80907794677833733
	.quad	0x3fe2c1ecf6442be0              # double 0.58617256258855477
	.quad	0x3fe7025321080310              # double 0.71903377963471549
	.quad	0x3fe1e2e120fcd525              # double 0.55894524042983973
	.quad	0x3fe2aa4856a8ddf3              # double 0.58328644681654251
	.quad	0x3fbc3a2f440e4b80              # double 0.11026282702941437
	.quad	0x3fc6d2f7cccbcc10              # double 0.17831323146637645
	.quad	0x3f950f055d623440              # double 0.020565112900431837
	.quad	0x3fd95172bedb8822              # double 0.39559620512420868
	.quad	0x3fd1a966007265a8              # double 0.27596426051749257
	.quad	0x3fd4e34cea1bcbce              # double 0.32637331831136585
	.quad	0x3f9aafc34183c1e0              # double 0.026061106561373282
	.quad	0x3fec3f42fdf591cd              # double 0.88272237397591768
	.quad	0x3fdd2a9f52b1a9c0              # double 0.45572646213136281
	.quad	0x3fe41f44df988d3c              # double 0.62881702109408577
	.quad	0x3fea6af51ec72c26              # double 0.82555633555728458
	.quad	0x3fe8eb82f30e2d0f              # double 0.77874896499398172
	.quad	0x3fc01c57451e1fac              # double 0.12586489558111447
	.quad	0x3fe08b3414191005              # double 0.51699260640498379
	.quad	0x3fd9ef078f06c172              # double 0.40521420447750878
	.quad	0x3f8e055a46eb7dc0              # double 0.014658646859458169
	.quad	0x3fd051cfcc8b5970              # double 0.25499339079887928
	.quad	0x3fe5e7b0e0a965b3              # double 0.68453258399238448
	.quad	0x3fd8b49310df9a3c              # double 0.3860213913707502
	.quad	0x3feb91f2e77a3f01              # double 0.86156602106527214
	.quad	0x3fe3c1947e7fb7a6              # double 0.61738037783446909
	.quad	0x3fefa446df4bf359              # double 0.98880332577355567
	.quad	0x3fe0eb3c15b69f78              # double 0.52871517411129698
	.quad	0x3fe776551f44c717              # double 0.73319488627587048
	.quad	0x3fc6d0b70a883a78              # double 0.17824447645439867
	.quad	0x3fe53a08fccc6fd8              # double 0.66333436369631738
	.quad	0x3fea1703bfa30787              # double 0.81530940465039314
	.quad	0x3fee3f60211f8563              # double 0.94523626775132319
	.quad	0x3fbc1c086c566960              # double 0.10980274815520863
	.quad	0x3fd277f83195db50              # double 0.2885723575813488
	.quad	0x3fde97e547577804              # double 0.47802097289047674
	.quad	0x3fe72d717053c14a              # double 0.72429725588703175
	.quad	0x3fdb58d1861479a4              # double 0.42729604810474542
	.quad	0x3fd2b925cf0faa0a              # double 0.29255051823443579
	.quad	0x3fd7313c2dc64a42              # double 0.36238007040188702
	.quad	0x3fef72de5f3e05bf              # double 0.98277205087668295
	.quad	0x3fe2a8e5aee02bd9              # double 0.58311733394054521
	.quad	0x3facd9d33f83bf40              # double 0.05634937429738196
	.quad	0x3fad26b498c92150              # double 0.056935924196809595
	.quad	0x3fdf05d14c7cc07e              # double 0.48473007649864275
	.quad	0x3fd40cc3b8fe278a              # double 0.31327908578588703
	.quad	0x3fd0053d00b6d7a2              # double 0.25031971997975166
	.quad	0x3fe9171ee2fe164e              # double 0.78407234510877699
	.quad	0x3fe11a48ef87ddeb              # double 0.53445860656114286
	.quad	0x3fe4297884d1b3cb              # double 0.63006235066642924
	.quad	0x3fe58e0de98ee157              # double 0.67359061829396694
	.quad	0x3fecec8f79737168              # double 0.90387700768364443
	.quad	0x3fe7c3d61bef54d6              # double 0.74265580612213955
	.quad	0x3fa5e80c10615d10              # double 0.042786004066039607
	.quad	0x3fc5642ec5f744c4              # double 0.16711983362487193
	.quad	0x3feccd24298fcc4e              # double 0.90004165761491506
	.quad	0x3fe4eb27a4de8b0e              # double 0.65370542717968916
	.quad	0x3fe7ad3d05765653              # double 0.73989726130339262
	.quad	0x3fcf9779eb818240              # double 0.24681018828688828
	.quad	0x3fb625ebb2401790              # double 0.086516123788980658
	.quad	0x3fe085cd3461aafa              # double 0.51633320074810674
	.quad	0x3fdb198ee22d14bc              # double 0.42343494498738798
	.quad	0x3fee433b723b381d              # double 0.94570705710225733
	.quad	0x3fe940250d6e9d6d              # double 0.7890801679940701
	.quad	0x3fee8d31e14f05ac              # double 0.95473569875337238
	.quad	0x3fe0b2473d5dfb05              # double 0.52176248536838499
	.quad	0x3fd0c2040889068c              # double 0.26184178193589314
	.quad	0x3f9159c7a8d588c0              # double 0.016944045715157285
	.quad	0x3fecf7eccb976729              # double 0.90526427997540282
	.quad	0x3fe3ffee197340d2              # double 0.6249914643358585
	.quad	0x3fdf98fd27072088              # double 0.49371269999802125
	.quad	0x3fd10bc3e8a91c70              # double 0.26634309502373466
	.quad	0x3fe06fc28afdda81              # double 0.51364256998824953
	.quad	0x3fc6e2da19a63180              # double 0.17879797222520821
	.quad	0x3fe04c663211c753              # double 0.50932607440175059
	.quad	0x3fc454e79168cad8              # double 0.15884108161988908
	.quad	0x3fecdf56fcf46278              # double 0.90226315884781538
	.quad	0x3fd87532e55a3912              # double 0.38215324781130378
	.quad	0x3fc9901f09409424              # double 0.19971073104639558
	.quad	0x3fa2de58a41b1880              # double 0.036852617294742096
	.quad	0x3fa5da058e620fe0              # double 0.042678998594993578
	.quad	0x3fcb30c4b3fc61fc              # double 0.21242579258320393
	.quad	0x3fe3dce01fdb53f8              # double 0.62071233961125838
	.quad	0x3fef6c3171757a2f              # double 0.98195717010441352
	.quad	0x3fdd30e8cfa4fa2e              # double 0.4561101939943083
	.quad	0x3fd2aab76bdc3cfc              # double 0.29166970761521305
	.quad	0x3feefe722b4ce16c              # double 0.96856029946415622
	.quad	0x3fde93b7b06997b2              # double 0.47776596286564221
	.quad	0x3fbae6416a9a3330              # double 0.10507592060657767
	.quad	0x3fa3fe2b639210a0              # double 0.039048534302339677
	.quad	0x3fa8dea637b93650              # double 0.048573679258521296
	.quad	0x3fe0b2c6c2ca3c05              # double 0.52182329220693247
	.quad	0x3fdb1e57f3d664f0              # double 0.42372702419522934
	.quad	0x3fef92ac5a187319              # double 0.98665444943216862
	.quad	0x3fe17af9d92aff03              # double 0.54626171508422805
	.quad	0x3fe37bae74dbb8a8              # double 0.60884783576854762
	.quad	0x3fe2b97caf9dc0ad              # double 0.58514246273081982
	.quad	0x3fe832fa4c04bf98              # double 0.75622286651013138
	.quad	0x3fee38eef03c3e0b              # double 0.94444987221680898
	.quad	0x3fdb8d8c7174867c              # double 0.43051444129569183
	.quad	0x3fe15412e60c9190              # double 0.54151291781868061
	.quad	0x3fed3533d3c7c1cd              # double 0.91274443972911856
	.quad	0x3fc9f94b38b0e4d0              # double 0.20292034404864134
	.quad	0x3fc0aaa8004499d4              # double 0.13020801556667883
	.quad	0x3fe0d8f568141ed0              # double 0.52648420646525018
	.quad	0x3fe10943bbb6bb56              # double 0.53238093054629121
	.quad	0x3fee61ced9557344              # double 0.94943945358281967
	.quad	0x3fdbfcc13ccdb4a2              # double 0.43730193078847368
	.quad	0x3fe3026ba319ae76              # double 0.59404546599894448
	.quad	0x3f9ed4e87e9dd640              # double 0.030109055259762707
	.quad	0x3fe46d7c7b3a6d79              # double 0.63836502140058748
	.quad	0x3fe5f502b3267b5a              # double 0.68615851393029037
	.quad	0x3fe81cad67b70dd6              # double 0.753500654762713
	.quad	0x3fe0840b25758ba1              # double 0.51611859623186629
	.quad	0x3fefaf0243ef3631              # double 0.99011338489953548
	.quad	0x3fef158724554794              # double 0.97137791725457356
	.quad	0x3fef0d8a94615d03              # double 0.97040299397022555
	.quad	0x3fe99a1361512119              # double 0.80005806929787859
	.quad	0x3fe4bf0b41ab3b12              # double 0.64832079721404257
	.quad	0x3fe0d361088489fc              # double 0.52580310500735505
	.quad	0x3fe74e9c8dccad1c              # double 0.72834613509386115
	.quad	0x3fe4f9cf96993fc1              # double 0.65549449361605394
	.quad	0x3fdaf9445f39dcf8              # double 0.42146405505577844
	.quad	0x3fe272f65f4f4932              # double 0.57653349509408813
	.quad	0x3fcb964bf49b6b80              # double 0.2155241913195276
	.quad	0x3feb410702e3fd8b              # double 0.85168791355674622
	.quad	0x3feca912bf1f9ed3              # double 0.8956388218766399
	.quad	0x3fad3bbbfbe40a60              # double 0.057096361635576853
	.quad	0x3fc0dc0f1cd8e39c              # double 0.13171566875987828
	.quad	0x3fd5037f6df57560              # double 0.32833848703542934
	.quad	0x3fe045ca9e416858              # double 0.50851946744229348
	.quad	0x3fe0065110c01557              # double 0.50077107688472722
	.quad	0x3fe10c8c35239cca              # double 0.53278169993145608
	.quad	0x3fe538b343303671              # double 0.66317141649933664
	.quad	0x3fd452203b4e3822              # double 0.31751256743962319
	.quad	0x3fd7415ceb2950fa              # double 0.36336443867664026
	.quad	0x3fd15a3acc9205ac              # double 0.27113218286111862
	.quad	0x3fd6ecb964311126              # double 0.35819849762289591
	.quad	0x3fcea765d9c7b054              # double 0.23948357709685075
	.quad	0x3fdcf6c66453f118              # double 0.45256194875379796
	.quad	0x3fef401f2caf5310              # double 0.97657736518394422
	.quad	0x3fceaa0c829d5ec0              # double 0.23956447961494653
	.quad	0x3fe7a4ff2d60551f              # double 0.73889120924528473
	.quad	0x3fb2cf6fc4ce7a48              # double 0.073477731274104063
	.quad	0x3fe8526446213320              # double 0.76005757996754041
	.quad	0x3fe36023942e8ad9              # double 0.60548571531065953
	.quad	0x3feeb09490688f73              # double 0.95905521588109221
	.quad	0x3fecea54c3a50b50              # double 0.90360487186294769
	.quad	0x3fd3e4e0bb1d51f2              # double 0.3108445956507061
	.quad	0x3fd0b9b0b9b7dc3c              # double 0.26133363853972802
	.quad	0x3fd4ef6c0ccd85b4              # double 0.32711316347384956
	.quad	0x3fe9e028248f4256              # double 0.80861289158390082
	.quad	0x3feec0e014c81e76              # double 0.96104435023239776
	.quad	0x3fd436db207e4b24              # double 0.31584814236809877
	.quad	0x3fe57a2df488b08b              # double 0.67116449127708344
	.quad	0x3fe131f8f995daf7              # double 0.53735016581671757
	.quad	0x3fbb22e376f6c6b0              # double 0.10600110678094654
	.quad	0x3fdcf4af19698da6              # double 0.45243432504340786
	.quad	0x3fe9c56b9b968dd3              # double 0.80534916294385039
	.quad	0x3fb4256131532d40              # double 0.078695368330206072
	.quad	0x3fa4515c89310e30              # double 0.039683238741897831
	.quad	0x3fd4e3fd635dde72              # double 0.32641539291169075
	.quad	0x3fe8ce4023295937              # double 0.77517706744655512
	.quad	0x3f9bd23575b37a20              # double 0.027169070538429207
	.quad	0x3f98c65f73cfd040              # double 0.024194232410039485
	.quad	0x3fbdc1ea044d44d0              # double 0.11624014477753808
	.quad	0x3fdbc558746a16d6              # double 0.43392001503557986
	.quad	0x3fe1ab4e30d81c10              # double 0.55216130771521144
	.quad	0x3fcf10732a5c7ca8              # double 0.24268951004430517
	.quad	0x3fe13550b70f4081              # double 0.53775821451019123
	.quad	0x3fb180d734d970c0              # double 0.068372202303581098
	.quad	0x3fc20eebcfbe5db4              # double 0.14108035701495469
	.quad	0x3fe11f6a31caa01f              # double 0.5350848171701762
	.quad	0x3fe1f3ed8cd72e0d              # double 0.56102635867995476
	.quad	0x3fedb669cedde527              # double 0.9285172500960116
	.quad	0x3fd30fb7e5d890a4              # double 0.29783437200445406
	.quad	0x3fd53360c7ae3c8e              # double 0.33126086711940494
	.quad	0x3fea3bd79fbc8b24              # double 0.81980496595892704
	.quad	0x3fe42f248d4dd9c1              # double 0.63075473402459903
	.quad	0x3fe782d4489fafd1              # double 0.73472036537486407
	.quad	0x3feedeaf4790aef0              # double 0.96468318917820106
	.quad	0x3fd6520b93bd83c0              # double 0.34875764301073886
	.quad	0x3fcec8f87aafce08              # double 0.24050813665927273
	.quad	0x3fbe3294d9d46b60              # double 0.11795931165799578
	.quad	0x3fbc545b74115048              # double 0.11066218932802585
	.quad	0x3fc85e76b9a25c2c              # double 0.19038280548258635
	.quad	0x3fd6c081cb9158f8              # double 0.355499695583958
	.quad	0x3fd7368ce1b209b4              # double 0.36270448723385162
	.quad	0x3fd96f174c138e50              # double 0.39740545682272899
	.quad	0x3fc415f07d63a924              # double 0.15691953775905987
	.quad	0x3fd624d8afabde5e              # double 0.3459989276447909
	.quad	0x3fe6d3a26dbd409f              # double 0.7133342879624428
	.quad	0x3feecb6576bbe2f0              # double 0.96232865514966015
	.quad	0x3facbaa69b574200              # double 0.056111532652384
	.quad	0x3fdeecb1b121f4ee              # double 0.48319666193113064
	.quad	0x3fde5ccce008707e              # double 0.47441408041209587
	.quad	0x3fe4f2a3739f8a34              # double 0.6546189554467845
	.quad	0x3fe503b2310d1207              # double 0.65670117931637229
	.quad	0x3fec70eb17939911              # double 0.88878397564693234
	.quad	0x3fcbfc6cf186cc24              # double 0.21864091676033681
	.quad	0x3fe6890c9d2e5818              # double 0.70422964763088469
	.quad	0x3fe9bce843d387a5              # double 0.80430997130701043
	.quad	0x3f8119e9deff9980              # double 0.0083502074412080685
	.quad	0x3fe4bd41696a8d4b              # double 0.64810247983079117
	.quad	0x3fe8eaac8da79b70              # double 0.7786467329686797
	.quad	0x3f8261b97526b180              # double 0.0089754570843403325
	.quad	0x3fe58ff7fe509ca5              # double 0.67382430716397279
	.quad	0x3fe1a52c3ed9c4fe              # double 0.55141269946594185
	.quad	0x3fea3da8ebd4719c              # double 0.82002683697242018
	.quad	0x3fe0d7db0108bd3b              # double 0.52634954645137755
	.quad	0x3f78feae73354200              # double 0.0061022581533767273
	.quad	0x3fad00f5bdfb7d80              # double 0.056647948685845328
	.quad	0x3f90436db9f55100              # double 0.015882219767562766
	.quad	0x3fdd0fc3af973ef6              # double 0.45408718249835489
	.quad	0x3fdc9312a9b04a4a              # double 0.44647661753802892
	.quad	0x3fda3650fa918ef6              # double 0.4095652052840103
	.quad	0x3fb455254fbcd190              # double 0.079424221007519557
	.quad	0x3fda9e87b2c55de8              # double 0.41592590768911331
	.quad	0x3fdd408d4a2441dc              # double 0.457064936069427
	.quad	0x3fc46abe73cdca54              # double 0.15950756697164314
	.quad	0x3fc03083b3e928f0              # double 0.12648054394441699
	.quad	0x3fe729bae1ccac92              # double 0.72384399510828445
	.quad	0x3fdfa24c58770ad8              # double 0.49428089751397186
	.quad	0x3fe6c454a345f8fd              # double 0.71146613969156614
	.quad	0x3fe592bced72f993              # double 0.67416235329419505
	.quad	0x3fd13d1b3d5b237c              # double 0.26935463897512313
	.quad	0x3fe1c4223a9b4a87              # double 0.55519210287668919
	.quad	0x3fd508d1f5519bf4              # double 0.32866333920395552
	.quad	0x3fefd08d506e2cee              # double 0.9942080088525509
	.quad	0x3feb04ee8efc35b3              # double 0.84435203482433108
	.quad	0x3fcfb96b71d590bc              # double 0.24784606035530554
	.quad	0x3fb85f2ba7fc4900              # double 0.095202187072832344
	.quad	0x3fe5aaddfda60661              # double 0.67710780659417591
	.quad	0x3fe38e9ea6d951df              # double 0.61115963542630058
	.quad	0x3fec300d2212ff23              # double 0.88086563735121037
	.quad	0x3fe92db0eddcedc9              # double 0.78682753045671305
	.quad	0x3fce66c84413ecb4              # double 0.23751166652787037
	.quad	0x3fd56e1779218afa              # double 0.33484446362687914
	.quad	0x3fdd435442e83e98              # double 0.45723444494158505
	.quad	0x3fd6bec911d20c04              # double 0.35539461841852948
	.quad	0x3fca9d46b5d339c4              # double 0.20792468908480377
	.quad	0x3fe8b32ebad5a141              # double 0.77187286845313718
	.quad	0x3feea0fccbf00707              # double 0.95715179282726204
	.quad	0x3fefc02068c7048b              # double 0.9922029539522027
	.quad	0x3fe6a6f973171af8              # double 0.70788261869969826
	.quad	0x3fd3b520dd9a88a6              # double 0.30793019906026087
	.quad	0x3fdcfc19a31b69b2              # double 0.45288697174478465
	.quad	0x3fce0fed7ce2b744              # double 0.23486107442789195
	.quad	0x3fed73fc6ffcdd32              # double 0.92040845749480682
	.quad	0x3fd915f9214c1a2e              # double 0.39196613551794968
	.quad	0x3fdf47c2d3ff7b6c              # double 0.48875494673659747
	.quad	0x3fcddf77b9e8fc44              # double 0.23338219239846769
	.quad	0x3fd074fd1368b344              # double 0.25714041610153893
	.quad	0x3fbd8b9190574f78              # double 0.11541089796020099
	.quad	0x3fd2ea332a4d20a8              # double 0.29554442530617075
	.quad	0x3fca77ff4fb77c78              # double 0.20678702728671161
	.quad	0x3fa76fd9987913a0              # double 0.045775222647115088
	.quad	0x3f9ceeafdd18dd20              # double 0.028254268521974102
	.quad	0x3fbdaf54ed89e480              # double 0.11595660018237375
	.quad	0x3feedbdbe2e72e22              # double 0.96433824841500759
	.quad	0x3fd2d3a8235b44ca              # double 0.2941685052183628
	.quad	0x3fd40581e0aaca30              # double 0.31283614101554047
	.quad	0x3fd302fe2ec9f00e              # double 0.29705767220707535
	.quad	0x3fe03749aaf1f9bf              # double 0.50674899471032819
	.quad	0x3fd3e93f7b2c7296              # double 0.31111132649110951
	.quad	0x3fd7aa4e4069c910              # double 0.36976963320115974
	.quad	0x3fc3b6cb4cd99c30              # double 0.15401593449061712
	.quad	0x3fdc1c6020a09852              # double 0.43923190294515735
	.quad	0x3fe5cb6acecafcdb              # double 0.6810812033581003
	.quad	0x3fdf14bd2a4dacc2              # double 0.48564080363457773
	.quad	0x3fe1e1cf33e8f0f8              # double 0.55881462229402157
	.quad	0x3fdc6fd7d51440e2              # double 0.44432636078364685
	.quad	0x3fe0c3ba3b49ace7              # double 0.52389251308104867
	.quad	0x3fe126dff73bc1f6              # double 0.53599546706942536
	.quad	0x3fe008593c2325a4              # double 0.50101911302151736
	.quad	0x3fe0aa557b84c146              # double 0.52079271435472019
	.quad	0x3fd6cb6cc6f62b78              # double 0.35616607122272326
	.quad	0x3fe4104cb72bf5cf              # double 0.62698970580793822
	.quad	0x3fe1b6285f9136d7              # double 0.5534860483691898
	.quad	0x3fe277ecbc9720a9              # double 0.57713925203372185
	.quad	0x3fec90fe9c6cc532              # double 0.89269953300223492
	.quad	0x3fed853f4ac8331c              # double 0.92251553159585197
	.quad	0x3fd7143f13981ee8              # double 0.3606107417440243
	.quad	0x3fd85c0690c9d954              # double 0.38061679973124751
	.quad	0x3feeee2ea4db5fd0              # double 0.96657497595423969
	.quad	0x3fc24e9a41bd41a0              # double 0.14302375993657979
	.quad	0x3fe2f5a2a6f3ebb4              # double 0.59248478515598046
	.quad	0x3feda43f75c16f1f              # double 0.92629979132786733
	.quad	0x3fef7ed8dd461d9f              # double 0.98423426835590877
	.quad	0x3feb819682bd3c7c              # double 0.85956883940697492
	.quad	0x3fb4b65f03a45318              # double 0.080907762898572932
	.quad	0x3fe2111be1df6d0d              # double 0.56458849063656802
	.quad	0x3fd9bebd6cd814ee              # double 0.4022668421678891
	.quad	0x3fe9b02280996d41              # double 0.80275082699828471
	.quad	0x3fe9c27ca5cd5166              # double 0.8049910772629516
	.quad	0x3fada2112e013cd0              # double 0.057877098909210667
	.quad	0x3fedc4a275be2551              # double 0.93025324818260391
	.quad	0x3fe293e0e8654a22              # double 0.58055158033159082
	.quad	0x3fe86d9f2a70ec9e              # double 0.76338156022338288
	.quad	0x3fe8ab6a77a7db2a              # double 0.77092479105235623
	.quad	0x3fe35842d7634266              # double 0.60452405994335545
	.quad	0x3fb2886ff9e67a80              # double 0.072394369612519327
	.quad	0x3fe81b498f795cae              # double 0.75333097479133015
	.quad	0x3febac5dc8a784ff              # double 0.86479081335360763
	.quad	0x3fb2c775b6ace2e8              # double 0.073356015299292587
	.quad	0x3fde0c5c5327fee8              # double 0.46950443382955465
	.quad	0x3febc3c533b85105              # double 0.86764774419364754
	.quad	0x3fd2dd09fc78b4e2              # double 0.29474115043087867
	.quad	0x3fe18ef144c9ce5e              # double 0.54869903025832989
	.quad	0x3fdcac910995c94e              # double 0.44803262649579245
	.quad	0x3fe968d653b305a8              # double 0.79404751155396003
	.quad	0x3fa4f668ab9714c0              # double 0.040942450471939562
	.quad	0x3feda15339acad8d              # double 0.92594300522380169
	.quad	0x3fee588a72e98e33              # double 0.94830820506871871
	.quad	0x3fda61992f32a0ec              # double 0.41220693215519932
	.quad	0x3fe5e06b8617b68a              # double 0.68364502134291283
	.quad	0x3fb77418cab5fc70              # double 0.091615247240030006
	.quad	0x3fc8ee5f692d69a8              # double 0.19477455745329775
	.quad	0x3fedc96eaef33ca3              # double 0.93083891076993941
	.quad	0x3fe258ee42587f00              # double 0.57335579832212602
	.quad	0x3fa65a8f98b9c0b0              # double 0.0436596750195134
	.quad	0x3fe7e0684682b5b2              # double 0.74614347240065215
	.quad	0x3fcf5d50a741e418              # double 0.24503524939407906
	.quad	0x3fe25862de8c4d91              # double 0.57328933206956567
	.quad	0x3fdd7f5c6ccc3c3c              # double 0.46089850067886906
	.quad	0x3fc2c61af9dcaef0              # double 0.14667069626135953
	.quad	0x3feeb9381525df19              # double 0.96010975008445875
	.quad	0x3fc93afcdc1ff400              # double 0.1971126627758224
	.quad	0x3fe2b36db6822499              # double 0.58440290113607596
	.quad	0x3fd8648b2b836c84              # double 0.38113669633248315
	.quad	0x3fdd7f6df12642d2              # double 0.46090267705680532
	.quad	0x3feedaf4be809ba5              # double 0.96422803122992617
	.quad	0x3fe3dcaa60e2c2cf              # double 0.62068671153073207
	.quad	0x3fe2edbcd274b8ff              # double 0.59152070145299251
	.quad	0x3fd50d39baac27f2              # double 0.32893222074255768
	.quad	0x3fea4b7ba27cbb66              # double 0.82171422706401809
	.quad	0x3f73ff251f140a80              # double 0.0048819971136732088
	.quad	0x3fe237da8b75f599              # double 0.56931807745393137
	.quad	0x3fd741f4194bef52              # double 0.3634004828488645
	.quad	0x3fec497979584191              # double 0.88396905613085341
	.quad	0x3fd9c5cb26712bfa              # double 0.402697360554782
	.quad	0x3fa9d3f1f597c5c0              # double 0.050445138196561157
	.quad	0x3fe0113aa7eb2fa0              # double 0.50210316464061933
	.quad	0x3feece78e72f2b63              # double 0.96270413544821697
	.quad	0x3feb1f7ad0e80975              # double 0.84759274293928277
	.quad	0x3fe2700e7444f456              # double 0.57617876728876172
	.quad	0x3fd13bf6403e82ba              # double 0.26928478502126618
	.quad	0x3fe48462c97fb397              # double 0.64116038661232977
	.quad	0x3fdfe8ee59564da0              # double 0.49859198307350461
	.quad	0x3fc53d891f9ae820              # double 0.16594041865556708
	.quad	0x3feb9262a6f55200              # double 0.86161930665053887
	.quad	0x3fefeabd59969f8b              # double 0.99740474221924679
	.quad	0x3fe2c05346ec6182              # double 0.58597720958918864
	.quad	0x3fe0a48177e1db2e              # double 0.52008126654150089
	.quad	0x3febec650fa9eaab              # double 0.87260678347896226
	.quad	0x3fcb74afb620cb6c              # double 0.21449848549817874
	.quad	0x3fee927f27cd8513              # double 0.95538289808260612
	.quad	0x3fd9c8d90bbc5be8              # double 0.40288377901145944
	.quad	0x3fe78cf58399c9cd              # double 0.73595691397923135
	.quad	0x3fb7622232e20388              # double 0.091341149733137894
	.quad	0x3fe73f0ea3b52404              # double 0.72644741033684612
	.quad	0x3febb01440d79f18              # double 0.86524403252130622
	.quad	0x3fd11bb6635b30b8              # double 0.26731643393282978
	.quad	0x3fd93f8c4ba92e1c              # double 0.39450366390949099
	.quad	0x3fe0582f7dfee342              # double 0.51076483353163149
	.quad	0x3fe3f25171d7eef8              # double 0.6233298514848391
	.quad	0x3fe63247c0656be4              # double 0.69363772942903923
	.quad	0x3fe6c1ebfcb6ea4d              # double 0.71117209776213886
	.quad	0x3fc82c549fbf9a68              # double 0.18885286140649105
	.quad	0x3fe366f4c4270ece              # double 0.60631788550423393
	.quad	0x3fcdd93eeae80afc              # double 0.23319231481590197
	.quad	0x3fe95187e692720b              # double 0.79120249780277285
	.quad	0x3fc77eb6ccb50e50              # double 0.18355450625868963
	.quad	0x3fefc3074a24ec88              # double 0.99255718690200556
	.quad	0x3fb334543ab4cc70              # double 0.075017227490023818
	.quad	0x3fe45d4ab3532349              # double 0.63638815903059609
	.quad	0x3fcf13931d68c714              # double 0.24278487144470573
	.quad	0x3fef10d8223e0897              # double 0.97080618560746045
	.quad	0x3fd1c3d871972ebe              # double 0.27757845967128592
	.quad	0x3fd97087ac749458              # double 0.39749328461977518
	.quad	0x3fe22ba8ba7d09f0              # double 0.56782947944185302
	.quad	0x3fea41c8f6154864              # double 0.82053039610969991
	.quad	0x3fcd4320e7435a14              # double 0.22861110012191033
	.quad	0x3fd54477e7e43550              # double 0.33230397840164461
	.quad	0x3fdfe1f83955819c              # double 0.498167091360324
	.quad	0x3febbb0da5dee401              # double 0.86658365627874911
	.quad	0x3fe4ca55e74356f9              # double 0.64969916504443781
	.quad	0x3fdc12b4bcaaf350              # double 0.43864172386729638
	.quad	0x3fdf085a067fa560              # double 0.48488474497442802
	.quad	0x3fe9bf65c04352a5              # double 0.80461394835818523
	.quad	0x3fe34b4d911cd0e9              # double 0.60294226019189268
	.quad	0x3fcf00da991defc8              # double 0.24221355892575347
	.quad	0x3fe9fdbe63f545c2              # double 0.81222457430902062
	.quad	0x3fc47d80f9d610c4              # double 0.1600800723937309
	.quad	0x3fe533b3ae64bee7              # double 0.66256126462209586
	.quad	0x3fec35ec3a006395              # double 0.88158236816808488
	.quad	0x3fd22ad48c726eb6              # double 0.28386415210273286
	.quad	0x3fa4316cb0d0e9e0              # double 0.039439579566948657
	.quad	0x3f8d5a31e895a2c0              # double 0.014332189474502655
	.quad	0x3fec1682fc72e242              # double 0.87774800592803381
	.quad	0x3fe2dba587e793d5              # double 0.58931232971064651
	.quad	0x3fd8ac198fea0270              # double 0.38550414136992739
	.quad	0x3fe5f5c7db3b144c              # double 0.68625252550612847
	.quad	0x3f9fdb5d9ff3e100              # double 0.031110251319632631
	.quad	0x3fc3aefb882a10cc              # double 0.15377754353187922
	.quad	0x3fe2318a1baf9cb1              # double 0.56854730040949708
	.quad	0x3fd8ba15eeb749e0              # double 0.38635776817423384
	.quad	0x3fe27a004810484d              # double 0.57739271235392098
	.quad	0x3fd0665e73ad3f12              # double 0.25624810501629824
	.quad	0x3fed2de010b4f379              # double 0.91185000670485217
	.quad	0x3fe6e5a27c6f57c1              # double 0.71553158096025282
	.quad	0x3fe3ac784106dcc9              # double 0.61480343533084991
	.quad	0x3fd4f60bf0e26afa              # double 0.32751749538299146
	.quad	0x3fa134d2c0ff1e10              # double 0.033606134471082183
	.quad	0x3f8398a677b63e80              # double 0.0095685010226411737
	.quad	0x3fe5b65df729de5d              # double 0.67851160310869896
	.quad	0x3fd1edddbe1b1a92              # double 0.28014319958712364
	.quad	0x3fd8cda48c186d08              # double 0.38755143815224402
	.quad	0x3fe2bd0981022505              # double 0.58557582089375215
	.quad	0x3fe30849f6484849              # double 0.59476183034917895
	.quad	0x3fdb9352f230d9a2              # double 0.43086694385001512
	.quad	0x3fee199cf4e0f41c              # double 0.94062660053134861
	.quad	0x3fee938d1a98d55f              # double 0.95551161951759045
	.quad	0x3fda8a2a539d4c20              # double 0.41468294301484043
	.quad	0x3fd066ffdca30034              # double 0.25628658815913075
	.quad	0x3fd42629aec9b91a              # double 0.31482927388323534
	.quad	0x3fd8449b436e91ba              # double 0.37918740830562181
	.quad	0x3fdc6b9cfc547b22              # double 0.44406819001771869
	.quad	0x3fdd64abe374560e              # double 0.45926949703547926
	.quad	0x3fcf8714361c4400              # double 0.2463097824297904
	.quad	0x3fe4ced68b10b9a9              # double 0.65024878655622331
	.quad	0x3fca4d6a890e0e6c              # double 0.20548755352148207
	.quad	0x3fedff9cbcbeb00e              # double 0.93745266784890346
	.quad	0x3fe8ec938a88fd62              # double 0.77887894685401826
	.quad	0x3fe01f5e2f2bbd85              # double 0.50382909024294575
	.quad	0x3fe91b4bd3985bc8              # double 0.78458205535104586
	.quad	0x3fd54e884eb9dea2              # double 0.33291824043360851
	.quad	0x3fd647475850918e              # double 0.34810050606235954
	.quad	0x3fe150a406eb8731              # double 0.54109383918350862
	.quad	0x3fecc1fdbe4f48de              # double 0.89868056459297541
	.quad	0x3fef20d864a2ef4f              # double 0.97275943427619349
	.quad	0x3fed4489e91971ef              # double 0.91461654212213073
	.quad	0x3fca1a1d03b544bc              # double 0.2039219158273563
	.quad	0x3fe8a00c951ebfc8              # double 0.76953724980375515
	.quad	0x3fd3c3bd7b82030c              # double 0.30882203160585742
	.quad	0x3fe33ab7afdd70b8              # double 0.60091766689904258
	.quad	0x3fc18fe35c61ca94              # double 0.13720361719932284
	.quad	0x3fc41f0e472fe8ec              # double 0.15719774700102762
	.quad	0x3fe2a2c3d735dbff              # double 0.58236877473143511
	.quad	0x3fee77d322ea4ddf              # double 0.95212704486260324
	.quad	0x3fe55d0a1eb42340              # double 0.66760736462411074
	.quad	0x3fe7ff43c7287b3c              # double 0.74991024873802514
	.quad	0x3fbc436c9be741c8              # double 0.11040381246789999
	.quad	0x3fe0f3527a4acc1f              # double 0.5297024143714032
	.quad	0x3fd315a9b0e4b70a              # double 0.29819719576595161
	.quad	0x3fe8e64a48369e2b              # double 0.77811159233255489
	.quad	0x3fdc27af8c21345a              # double 0.43992222485105048
	.quad	0x3fc68ca5ae2e91c4              # double 0.17616721158004911
	.quad	0x3fe5d71581c09683              # double 0.68250537245030818
	.quad	0x3fe31d35afe1363c              # double 0.59731563903341778
	.quad	0x3fdab816a047eb08              # double 0.41748586323198866
	.quad	0x3fc57ee09817c45c              # double 0.16793448854835702
	.quad	0x3fe09b46c3220e2c              # double 0.51895464050216367
	.quad	0x3fea85126b3d0f9a              # double 0.82874413437865546
	.quad	0x3fd0bf8d9d824de4              # double 0.26169147855509167
	.quad	0x3fdfa374d4b945c0              # double 0.49435158513832889
	.quad	0x3fc68e302d3bd500              # double 0.1762142392032402
	.quad	0x3fde369b37db38f6              # double 0.47208290533752917
	.quad	0x3fe8ffac29f55b25              # double 0.78121002383236215
	.quad	0x3fd220c1aefe5e0c              # double 0.28324930276127769
	.quad	0x3fc10ddfb8aa3154              # double 0.13323589817845038
	.quad	0x3fe69c38b55fa806              # double 0.70657000946562287
	.quad	0x3fc757ea4b396528              # double 0.18237045929962759
	.quad	0x3fc0acefeaebfbc0              # double 0.13027762385169517
	.quad	0x3fd49cac5e9fe7dc              # double 0.32206258049666103
	.quad	0x3fb7cbac99c264b0              # double 0.092951571978477032
	.quad	0x3fe15a8cc029a606              # double 0.54230344325805002
	.quad	0x3fcdefe54a84ce90              # double 0.23388353479969171
	.quad	0x3fe891f8dd165e91              # double 0.76781886273507116
	.quad	0x3fe308ec94c92baa              # double 0.59483937320452651
	.quad	0x3fe817f753e262fd              # double 0.7529255522123034
	.quad	0x3fe6b40cb2e49d1f              # double 0.70947871151011899
	.quad	0x3f955818259faca0              # double 0.020843865677232842
	.quad	0x3fe63ede5a1dae1c              # double 0.69517438507813578
	.quad	0x3fe718fbd751b829              # double 0.72179977469000278
	.quad	0x3feac3343b6cdd6d              # double 0.83632861715788709
	.quad	0x3fe3d58c53812e3c              # double 0.61981788930410842
	.quad	0x3fdaaaf1a0970a30              # double 0.41668358500115499
	.quad	0x3fd64218cf8867a2              # double 0.34778423563840921
	.quad	0x3feb4068091c691d              # double 0.85161210803497378
	.quad	0x3fc14baf0cc7bfe4              # double 0.13512218593632419
	.quad	0x3fe3244c6f2c6212              # double 0.59818097795056446
	.quad	0x3fbb96a3b53cf810              # double 0.10776732611427087
	.quad	0x3fc57a9aca196d70              # double 0.16780409687167319
	.quad	0x3fdde136ca69c466              # double 0.46687097327146032
	.quad	0x3fdb3a2fa1f79b9a              # double 0.42542639557944428
	.quad	0x3fe499de8503c439              # double 0.6437828634208308
	.quad	0x3fe30d55b6ba9e14              # double 0.59537778558018539
	.quad	0x3fc200fecc583a54              # double 0.14065537431493402
	.quad	0x3fe21a7d963a7658              # double 0.56573371259191685
	.quad	0x3fa5feebb8f44fd0              # double 0.042960516288217954
	.quad	0x3fd3a3d6f2ece6f6              # double 0.30687497828658594
	.quad	0x3fea48f085f50163              # double 0.82140375293242263
	.quad	0x3fdf5dab0a592858              # double 0.49009204874585555
	.quad	0x3fe663a5217a2301              # double 0.69966370142455514
	.quad	0x3fbb6926c362ae68              # double 0.10707323331978957
	.quad	0x3fdda3c27c7b38dc              # double 0.46312009960537437
	.quad	0x3fede28ef5036748              # double 0.93390605787428971
	.quad	0x3fb0cc01f176f850              # double 0.065612908793782454
	.quad	0x3fe50927c3abd77e              # double 0.65736759392778743
	.quad	0x3fd7a96356a66e54              # double 0.36971362554479481
	.quad	0x3fe71ac3448ec4da              # double 0.7220169390695006
	.quad	0x3fb3b6868b40a120              # double 0.077003869054014462
	.quad	0x3fd488e834b5a95a              # double 0.32085614345000624
	.quad	0x3fa0ea253b375f30              # double 0.033036387899925024
	.quad	0x3fee08c05e1f880a              # double 0.93856829055244018
	.quad	0x3fe16215a151a901              # double 0.54322320468534724
	.quad	0x3fe2fcf0eaebec8c              # double 0.59337659724350678
	.quad	0x3fe79c48b349a3a6              # double 0.73782763497466841
	.quad	0x3fd682557510dd9a              # double 0.35170494491782167
	.quad	0x3fe664a614122b19              # double 0.69978622360335685
	.quad	0x3f9531f7256ad7a0              # double 0.020698415430807082
	.quad	0x3fa3a9bd78fbadd0              # double 0.038404389399001482
	.quad	0x3fda345ee0b404de              # double 0.40944644874259761
	.quad	0x3fbf294f6d4a5948              # double 0.12172409456465971
	.quad	0x3fe78cb9acbfe8de              # double 0.73592838039555963
	.quad	0x3fe106193cec09b6              # double 0.53199445628006603
	.quad	0x3fee3852b28f39a7              # double 0.94437537073990974
	.quad	0x3fd744be163ab636              # double 0.36357071085771808
	.quad	0x3fee22fa2efa9193              # double 0.94176968741935452
	.quad	0x3fef822d9f8de0f5              # double 0.98464089549000155
	.quad	0x3fe1803ded19615d              # double 0.54690452869821693
	.quad	0x3fee18fb0e9b6ba2              # double 0.94054940083457361
	.quad	0x3fc4aa4cb0333f7c              # double 0.16144713023686197
	.quad	0x3fb65c815f41f038              # double 0.087349019771807757
	.quad	0x3feb79515a00ed58              # double 0.8585592992671236
	.quad	0x3fe5b367a712b863              # double 0.67815001136274267
	.quad	0x3facaf8a5fd32310              # double 0.0560267679189278
	.quad	0x3feb14e8b0c8f008              # double 0.84630236175826301
	.quad	0x3fecc6aef75a0f4f              # double 0.89925335226915049
	.quad	0x3fe8b93fe719979e              # double 0.77261347901070443
	.quad	0x3fe31bce9d3f6614              # double 0.59714441978866484
	.quad	0x3feb91d26b9510d7              # double 0.86155053150334993
	.quad	0x3fd16407f92ac6de              # double 0.27173041660999597
	.quad	0x3fe9010a98f7124a              # double 0.78137712360382605
	.quad	0x3f8ee7d81faf5840              # double 0.015090645281741755
	.quad	0x3fe90eb7576b9cb3              # double 0.78304640840806028
	.quad	0x3fee2832411072df              # double 0.94240677554952501
	.quad	0x3fe3db6f1398a155              # double 0.62053636386284927
	.quad	0x3fb7d889eedf7740              # double 0.093147869890768398
	.quad	0x3fe3d05982c7760c              # double 0.61918330710222014
	.quad	0x3fd155386749dc0e              # double 0.27082643591660449
	.quad	0x3fa089724e1e6010              # double 0.032298633609741612
	.quad	0x3fc03e32f4de5934              # double 0.12689816433403112
	.quad	0x3fc69d766461fcb0              # double 0.17668037320615815
	.quad	0x3fc72885bd3b411c              # double 0.18092414607827656
	.quad	0x3fd8d750b88f86ce              # double 0.38814180396557851
	.quad	0x3fe8e129473cb801              # double 0.77748550332557909
	.quad	0x3fca0b0f99080fd0              # double 0.20346255275955949
	.quad	0x3fe006c6ba2b4644              # double 0.50082718239918522
	.quad	0x3fdca5273afa4a5a              # double 0.44758015403309559
	.quad	0x3fcc2dd78a81d9fc              # double 0.22014898551033457
	.quad	0x3fe159f37df9d9ff              # double 0.54223036389049628
	.quad	0x3fe57045d7f48dbd              # double 0.6699551790119852
	.quad	0x3fe8d60b4951c009              # double 0.77612842865164666
	.quad	0x3fe180eefc8ec4e0              # double 0.54698895766901146
	.quad	0x3fd46b1ebb2949f0              # double 0.31903808858365235
	.quad	0x3feeee0954beb241              # double 0.96655718375911459
	.quad	0x3fe6289b2a2156f1              # double 0.69245680073319538
	.quad	0x3fd22ed160c5a240              # double 0.28410753679648693
	.quad	0x3feee8b6903bd86b              # double 0.96590736551912692
	.quad	0x3fef729e2a8db4da              # double 0.9827414351581425
	.quad	0x3fb9066e7fd82188              # double 0.09775438901136202
	.quad	0x3fe315a94f89af85              # double 0.59639421019299788
	.quad	0x3fe4883c15a0b1ed              # double 0.64163021301425049
	.quad	0x3fefcc1668f1bd2b              # double 0.99366302964145825
	.quad	0x3fe355fa7d6307e8              # double 0.60424541940323895
	.quad	0x3fe592e6c952a173              # double 0.6741823131642789
	.quad	0x3fe70f74460fec9a              # double 0.72063649829887599
	.quad	0x3fd3dc201faa0a02              # double 0.31031039325912968
	.quad	0x3f779d0c854d5480              # double 0.0057650078859597942
	.quad	0x3fd8c0082f23d426              # double 0.38672070125113789
	.quad	0x3fe2451e411a27a4              # double 0.57093727793948235
	.quad	0x3feccda6aa269e36              # double 0.9001038859614201
	.quad	0x3fecda65ac8cfc0c              # double 0.90165981007874185
	.quad	0x3fe9e17f347867c4              # double 0.80877647636520366
	.quad	0x3fd888dab6cde282              # double 0.38335292674995725
	.quad	0x3f841177f26beec0              # double 0.0097989436012463349
	.quad	0x3feacd75697b8822              # double 0.83758040048656235
	.quad	0x3fcc759a7a4349d0              # double 0.22233897180428963
	.quad	0x3fd270ac9e3ce880              # double 0.28812709286615501
	.quad	0x3fcd1fa4a64c18d0              # double 0.22752817268355452
	.quad	0x3fea6122145d9bcb              # double 0.82435707070987385
	.quad	0x3fe80959fb2e9677              # double 0.75114153918248305
	.quad	0x3fe2e87d97bf1a9b              # double 0.590880199794657
	.quad	0x3feb59c0b8684d21              # double 0.85470615403247419
	.quad	0x3fb2480fb371e170              # double 0.071412068662430661
	.quad	0x3f8f35ed1ebb8f00              # double 0.015239574909578391
	.quad	0x3fd3ffda5cb29dca              # double 0.31249102642547355
	.quad	0x3fe339be7eb6944b              # double 0.60079884289428642
	.quad	0x3fd9de15f0e01974              # double 0.404180035810348
	.quad	0x3fe0be58b4ec4a3d              # double 0.52323565804028471
	.quad	0x3fe67127e3b8a570              # double 0.70131296612559701
	.quad	0x3fe5c83ac5827f34              # double 0.68069208694576
	.quad	0x3fe5499ac3728ee0              # double 0.6652349297841873
	.quad	0x3fec51ef4be43de0              # double 0.88500180075237366
	.quad	0x3fcf865f3a2152a0              # double 0.24628820742022572
	.quad	0x3fcd1c09908c17d0              # double 0.22741813238115904
	.quad	0x3fc20856ea16b004              # double 0.14087950162991103
	.quad	0x3fe77b2082c59f43              # double 0.73378015080832204
	.quad	0x3fc047b3ed0a8c34              # double 0.12718819689061578
	.quad	0x3fe6c267dbc3f7d7              # double 0.71123116419743837
	.quad	0x3fefe548baa3628b              # double 0.99673878147867023
	.quad	0x3fe68278c4533aa3              # double 0.70342672676800466
	.quad	0x3febc6b673120147              # double 0.86800692057298867
	.quad	0x3fe3fadc97df8144              # double 0.62437276518543472
	.quad	0x3fe837634f2baac8              # double 0.75676122153284897
	.quad	0x3fe08e20706b30a2              # double 0.51734945256022891
	.quad	0x3fd488cfcfda04e8              # double 0.32085032747279607
	.quad	0x3fe3b8d2b2da5155              # double 0.61631140644252957
	.quad	0x3fbe7347623cc8a8              # double 0.11894651554465219
	.quad	0x3fe7f1044ca25dfc              # double 0.74817099540354048
	.quad	0x3fe3fb606bb63616              # double 0.62443562543347997
	.quad	0x3fba272b310cc3a8              # double 0.10216016719347343
	.quad	0x3fd3bfcd7eb12470              # double 0.30858170864355028
	.quad	0x3fea3e625d6865bc              # double 0.82011526340209384
	.quad	0x3fee6642848d7d6a              # double 0.94998289002607561
	.quad	0x3fe093ad53d6118b              # double 0.51802698492297006
	.quad	0x3f8edd6cda328900              # double 0.015070772560936252
	.quad	0x3fea45c9bc6c2708              # double 0.82101904679549964
	.quad	0x3fec9f1243cebfb0              # double 0.89441788905786801
	.quad	0x3fe494edf3db9916              # double 0.64317987087705109
	.quad	0x3fefb3ae6c67b5f9              # double 0.99068375752329906
	.quad	0x3fe1b7dd6508b25c              # double 0.5536944363898999
	.quad	0x3fef2d5e5e85c820              # double 0.97428816281740537
	.quad	0x3fe37fc3ab8c5118              # double 0.60934623246660902
	.quad	0x3fd90af885136bbe              # double 0.39129460330667232
	.quad	0x3fea52fbc8427b8e              # double 0.82262982476446367
	.quad	0x3fe12186a921d98e              # double 0.53534253152501932
	.quad	0x3fd27028fbbcccb6              # double 0.28809570869197942
	.quad	0x3fc28eee62d645d0              # double 0.14498691392922902
	.quad	0x3fe40e2bc5a388b0              # double 0.62672985650376312
	.quad	0x3fe83f8c465b4842              # double 0.75775731793897472
	.quad	0x3fc662c431484310              # double 0.17488911062584878
	.quad	0x3fe697bf69ba4d08              # double 0.70602389001797494
	.quad	0x3fe49ff675fa136f              # double 0.64452670137744217
	.quad	0x3fe917835efba824              # double 0.78412025977491284
	.quad	0x3fe3a1d3e0cee202              # double 0.61350435169066508
	.quad	0x3feccdf31bc9a814              # double 0.90014033725060693
	.quad	0x3fdcd194e27b3adc              # double 0.45029184453316673
	.quad	0x3fec9647139c461c              # double 0.89334443884053227
	.quad	0x3fe1b6459cc5b917              # double 0.55349999065018352
	.quad	0x3fc061363511af64              # double 0.12796666709197801
	.quad	0x3fe1b2d18c00de13              # double 0.55307843536769707
	.quad	0x3fb506ec3766b130              # double 0.082136882329625349
	.quad	0x3fecd97bfa4ff2b7              # double 0.90154837502594531
	.quad	0x3fe29f2a86373e8d              # double 0.58192945684455
	.quad	0x3fed2d39aea20295              # double 0.91177066905955206
	.quad	0x3fe250e963d878a0              # double 0.57237691403476632
	.quad	0x3f7baf715242e980              # double 0.0067591120352353817
	.quad	0x3fe76163739e584c              # double 0.73063824254746512
	.quad	0x3fe0d74210f54b07              # double 0.52627662002700581
	.quad	0x3fca354b64e1a15c              # double 0.20475141931388918
	.quad	0x3fb769ce1a324320              # double 0.091458207507696176
	.quad	0x3fad288c043f3660              # double 0.056949973600791237
	.quad	0x3fe5f090d6f3469e              # double 0.68561593992690795
	.quad	0x3fed6e673b8da333              # double 0.91972695952890715
	.quad	0x3fdeb47e78361820              # double 0.47976648082146944
	.quad	0x3fdd2e1da7f937ea              # double 0.45593968776381522
	.quad	0x3fdb6126fc6cf6c0              # double 0.4278047051519529
	.quad	0x3fe76758ffa014bc              # double 0.73136567999667745
	.quad	0x3f9c5afa22fe3960              # double 0.027690800081069056
	.quad	0x3fe935124cfc53e0              # double 0.78772845302830418
	.quad	0x3fcc4e021bdb73f0              # double 0.22113062248436632
	.quad	0x3fe863074dac856b              # double 0.76208844347654059
	.quad	0x3fd9c1e2d715c3ca              # double 0.40245886806866038
	.quad	0x3fde231b6af99c6a              # double 0.47089276739865815
	.quad	0x3fc9b37a9d7f04e0              # double 0.2007897633575686
	.quad	0x3fcc939b0039df00              # double 0.22325456152952228
	.quad	0x3fe1831064dff570              # double 0.54724902822606047
	.quad	0x3fe74f24396fb132              # double 0.72841082780863631
	.quad	0x3fe662fce7ba0d2c              # double 0.69958348521359914
	.quad	0x3fe2cf3cac732cc9              # double 0.58779748612996585
	.quad	0x3fdf3a1d356999ca              # double 0.48792200294556365
	.quad	0x3fb3160ee77e3248              # double 0.074555331723055507
	.quad	0x3fe21e6b699c8ed3              # double 0.5662133276677771
	.quad	0x3fb8e3075399b918              # double 0.097214181814454625
	.quad	0x3fe21480e50b9483              # double 0.56500286803624566
	.quad	0x3fe1426f0fe61685              # double 0.53935959916334808
	.quad	0x3fef04ce1d82c551              # double 0.96933656467278173
	.quad	0x3fea4172a4210666              # double 0.82048923546262809
	.quad	0x3fe16f43cfccde42              # double 0.5448321398352578
	.quad	0x3fe984d78b9da0bb              # double 0.797466061293583
	.quad	0x3febdc37f675f972              # double 0.87063215386278459
	.quad	0x3f705adc76082f80              # double 0.0039929019699335155
	.quad	0x3f90691d55614960              # double 0.016025980316336841
	.quad	0x3f9021d363ef8240              # double 0.015754034971793951
	.quad	0x3feff171cf37b6e7              # double 0.9982232138842989
	.quad	0x3fe227de61b7c6ae              # double 0.56736678205034763
	.quad	0x3fe0f5ea3a95be90              # double 0.53001891558047198
	.quad	0x3fea81080590ec55              # double 0.82825089537744623
	.quad	0x3feedc8298886d1b              # double 0.96441774169526028
	.quad	0x3fe061c9d7e2d7d4              # double 0.51193706670050654
	.quad	0x3fca02e4c89baae0              # double 0.20321330828968254
	.quad	0x3fef3802b5178608              # double 0.97558722848424483
	.quad	0x3fdbad69a4a90378              # double 0.43245926933382561
	.quad	0x3fb1a1a42d9e3a90              # double 0.068872700822092847
	.quad	0x3fd2c5dedcf00dde              # double 0.29332706047008894
	.quad	0x3fddd3ffc1984c20              # double 0.46606439500573238
	.quad	0x3fe801d921879947              # double 0.75022560642973068
	.quad	0x3fe18ba0431a3bac              # double 0.54829419237090837
	.quad	0x3fd7cb1b5cc1ab60              # double 0.3717716604066279
	.quad	0x3fcb0822f1f7c3c8              # double 0.21118580641589646
	.quad	0x3fe1f174d44c9825              # double 0.56072465386092019
	.quad	0x3feee3b515a42d17              # double 0.96529630877322147
	.quad	0x3fd7dd89738be708              # double 0.3728965404876452
	.quad	0x3fd4790826b3c07c              # double 0.31988719729907422
	.quad	0x3fe2320bd20f913d              # double 0.56860915210248886
	.quad	0x3fb4f54eaceb4ca8              # double 0.081868092743479282
	.quad	0x3fdde192a39f538c              # double 0.46689287165400439
	.quad	0x3fd8c86208516498              # double 0.38723040401743836
	.quad	0x3fe564eff9396bd2              # double 0.66857145954724673
	.quad	0x3fe6b9bb55b42d0b              # double 0.71017233599687424
	.quad	0x3fd68c1fc6673fea              # double 0.35230249762844201
	.quad	0x3fe5c2d21ff55e63              # double 0.68003183595551453
	.quad	0x3fe23e4407920be1              # double 0.57010079840290129
	.quad	0x3feef1ff15b15e1c              # double 0.96704057919390917
	.quad	0x3fea0426f718cd0e              # double 0.81300686131581457
	.quad	0x3fe06a653cc27ace              # double 0.51298772685171357
	.quad	0x3fa655f415b7a880              # double 0.043624522830058687
	.quad	0x3fb2bf7d89c417a0              # double 0.073234411367677499
	.quad	0x3fe714ff72a13665              # double 0.72131321323986397
	.quad	0x3fdbfb5ea4af95d4              # double 0.43721738894086326
	.quad	0x3fe66b490a300455              # double 0.70059635152586941
	.quad	0x3fe2177cff0d7f15              # double 0.56536722006782958
	.quad	0x3fe1a3355313f20b              # double 0.55117288805155462
	.quad	0x3fe9b03f0b42b2d4              # double 0.80276443671535924
	.quad	0x3fdeec85a65f1bd8              # double 0.48318616149157156
	.quad	0x3fce2157cf900bb0              # double 0.23539254794021991
	.quad	0x3fe2dd5d6086c644              # double 0.58952206471276059
	.quad	0x3fe1fe24af83fcb6              # double 0.56227335243592935
	.quad	0x3fe696d6c0fcaef6              # double 0.70591294949323813
	.quad	0x3f6cfc5e6a206800              # double 0.0035383075746837633
	.quad	0x3feeff4b2f55e3d7              # double 0.96866378064361924
	.quad	0x3fe52cd9794a72d6              # double 0.66172479333507783
	.quad	0x3fe8546000bf3aac              # double 0.76029968400856295
	.quad	0x3fe06f7110368812              # double 0.5136037174854684
	.quad	0x3fe5cdca09bfc081              # double 0.68137075332744257
	.quad	0x3fe35f2849b394e1              # double 0.60536589045355182
	.quad	0x3fe01ba2fed0055e              # double 0.50337362068254854
	.quad	0x3fc48ace27e20074              # double 0.16048600146678249
	.quad	0x3fec94d5d911b005              # double 0.8931683768873887
	.quad	0x3fe96c64e076bb63              # double 0.79448169556222259
	.quad	0x3fe25d30c2bf0545              # double 0.57387578998911037
	.quad	0x3fe219e636a230ac              # double 0.56566153212181325
	.quad	0x3fb12b6ff7d940f8              # double 0.067069051752017717
	.quad	0x3fe2d02cf7a30b05              # double 0.58791206709460708
	.quad	0x3fefb31157fb74cc              # double 0.99060885604890236
	.quad	0x3fdb4230ef204540              # double 0.42591498710779163
	.quad	0x3fe4510c86293a78              # double 0.63489366725282448
	.quad	0x3fee48308648724f              # double 0.94631220080516154
	.quad	0x3fe53790eb22392d              # double 0.66303296970889891
	.quad	0x3fd5e0490a52798c              # double 0.34181428916954171
	.quad	0x3fdeda6e536f78de              # double 0.48208196781150814
	.quad	0x3fee2f5e5afc4617              # double 0.94328229685396792
	.quad	0x3fe31fd5f191c55e              # double 0.5976361959603016
	.quad	0x3fadcb1d21bdffe0              # double 0.058190260285300388
	.quad	0x3fe15e9e548aa2c5              # double 0.54280010711689697
	.quad	0x3fdef63610dee58c              # double 0.48377753875282603
	.quad	0x3fbd73dd96fcaaf8              # double 0.11504921852307948
	.quad	0x3fec30cbf660cd02              # double 0.88095663185814055
	.quad	0x3fd4d576b6e1a50a              # double 0.32552879199518314
	.quad	0x3fba61cbdb2a1210              # double 0.10305475331012581
	.quad	0x3fc43aff7b67c8b0              # double 0.15805047536520567
	.quad	0x3fd52bdceaba64ba              # double 0.33080218241373027
	.quad	0x3fe6ebefb1a8b94c              # double 0.71630081843412929
	.quad	0x3fed7da4ae729b0e              # double 0.92158731529056737
	.quad	0x3fd6b7fd2acef794              # double 0.35497979336275276
	.quad	0x3fd134258bee5a1a              # double 0.26880777993338401
	.quad	0x3fd9cc7628c70c0e              # double 0.40310434324436606
	.quad	0x3fd879148e6b8afc              # double 0.38239015491687645
	.quad	0x3feaa000f7b7ec9f              # double 0.83203171141157728
	.quad	0x3fafbe058bab9fe0              # double 0.061996625232324964
	.quad	0x3fd0cd4b57386534              # double 0.2625301696549116
	.quad	0x3fe468a67568e74c              # double 0.63777468616101762
	.quad	0x3fbce816b8c91758              # double 0.11291639338841486
	.quad	0x3fe8c2e08a067a8d              # double 0.77378870924060694
	.quad	0x3fe41f29dcae77fe              # double 0.62880414106234617
	.quad	0x3fe4dce61e361a7c              # double 0.65196519756939564
	.quad	0x3fc43eddd3857d20              # double 0.158168533594087
	.quad	0x3fe282a4145c8a03              # double 0.57844737984515893
	.quad	0x3fe7775e7cc9b4b2              # double 0.73332142231597275
	.quad	0x3fe2d6980a6fba7a              # double 0.58869554556242965
	.quad	0x3fe8101637f302ce              # double 0.75196371963110109
	.quad	0x3fbbd1916746f478              # double 0.10866650363364438
	.quad	0x3fb0246fea9341b0              # double 0.063055987138119773
	.quad	0x3fcf7e42b9989920              # double 0.24604066908177291
	.quad	0x3fe5c07cca5e5ec3              # double 0.67974700474857064
	.quad	0x3fe66da1513e196b              # double 0.70088258617105959
	.quad	0x3f6f1aaff2e6a100              # double 0.0037969051838510071
	.quad	0x3fe95ceca5076db3              # double 0.7925933097098351
	.quad	0x3fc1688d6dea9cfc              # double 0.13600318781866594
	.quad	0x3fe640c026008c01              # double 0.69540412351886982
	.quad	0x3fdfb6fb14057bb4              # double 0.49554326014725381
	.quad	0x3fe655d4c0723464              # double 0.69797742449885591
	.quad	0x3fea6a526bf7c31c              # double 0.82547875487771049
	.quad	0x3fdc79892606241a              # double 0.44491795266418566
	.quad	0x3fe2771e87c756e9              # double 0.57704092520972694
	.quad	0x3f98fe38f6f6b800              # double 0.024407281945677539
	.quad	0x3fc321a70a3d6538              # double 0.14946449279777041
	.quad	0x3fd60e471ee5fcb8              # double 0.34462144868298195
	.quad	0x3fdcfa835a581fb6              # double 0.45279010603598679
	.quad	0x3fd1b9ed8a270862              # double 0.27697313777401267
	.quad	0x3feaac2988ceda32              # double 0.83351589889827538
	.quad	0x3fb47cbf3fb4c6c8              # double 0.080028489163647909
	.quad	0x3f73843ec54b4280              # double 0.004764790723769452
	.quad	0x3fef15b94086b1e6              # double 0.97140181162609163
	.quad	0x3feab15772c221a3              # double 0.83414814389930247
	.quad	0x3fe27a2655e3ed27              # double 0.57741085792023206
	.quad	0x3fe9bdc809c3cb2e              # double 0.80441667468253342
	.quad	0x3f754d369a4dab00              # double 0.0052005894584492562
	.quad	0x3fe00364c6113cd8              # double 0.50041426358248042
	.quad	0x3fe3befc04e9f8f3              # double 0.61706353149182147
	.quad	0x3fd2b882346952fa              # double 0.29251151197722403
	.quad	0x3fd73ecbf78eec62              # double 0.36320780921568574
	.quad	0x3fd2563a8ba097e8              # double 0.28651298175316109
	.quad	0x3fdb3d4184544286              # double 0.42561376498000703
	.quad	0x3fd7e160c3a80256              # double 0.37313098055895944
	.quad	0x3feaaf38b4834cdf              # double 0.83388934379982149
	.quad	0x3fa54c68caf83da0              # double 0.04159858205468514
	.quad	0x3fec369a891a126b              # double 0.88166548516944709
	.quad	0x3fb7f82687bee050              # double 0.093630226269739269
	.quad	0x3fc110ddc539d888              # double 0.13332721834348527
	.quad	0x3fa2883a3ee57520              # double 0.036195583513043639
	.quad	0x3fd75723150b3d2c              # double 0.36469342284267969
	.quad	0x3fe10cb7fe0ee2ab              # double 0.53280257817012477
	.quad	0x3fe725bb54ef817a              # double 0.72335592831591033
	.quad	0x3fca8d1a8cb4880c              # double 0.20743114347811831
	.quad	0x3fea205fdacd6b56              # double 0.81645195708129381
	.quad	0x3fed6d68ee70b816              # double 0.91960569925663793
	.quad	0x3fbe9779f2e81700              # double 0.11949884586655557
	.quad	0x3fbdaddc02c4df10              # double 0.11593413417437781
	.quad	0x3fc1296aba8c6f80              # double 0.13407644375626759
	.quad	0x3fc7c957d2a74b1c              # double 0.18583200250449117
	.quad	0x3fd0cbd386e1ae1a              # double 0.26244056865718479
	.quad	0x3fc7d17fdd718d74              # double 0.18608091652559333
	.quad	0x3fe6d11d041864dc              # double 0.71302653121815807
	.quad	0x3fdb03d9d2679a76              # double 0.42211003825506255
	.quad	0x3fd5eda2290b85d2              # double 0.34262899406720948
	.quad	0x3fc3c237ab5e1e6c              # double 0.15436454646645659
	.quad	0x3feb11130a81b56a              # double 0.84583427478871198
	.quad	0x3fdd44ade578d442              # double 0.45731685075162798
	.quad	0x3fe4f313ffeab861              # double 0.65467262252583336
	.quad	0x3fdca0e08530d308              # double 0.44731915480524309
	.quad	0x3fea26c5ceff1d8a              # double 0.8172329943562755
	.quad	0x3fd14346970ebfec              # double 0.26973118545265495
	.quad	0x3fd52ab3ea1852ae              # double 0.33073137150612808
	.quad	0x3fe859584b25686f              # double 0.76090635945298668
	.quad	0x3fc2969ae2b29fd4              # double 0.14522110051370751
	.quad	0x3fbc8de17df1aea0              # double 0.11153992962652604
	.quad	0x3fefba266b209bef              # double 0.99147339747730522
	.quad	0x3fcfaa430c6f0b80              # double 0.24738348109357489
	.quad	0x3f5b2854558d4c00              # double 0.0016575645042464782
	.quad	0x3fef687f81b37da0              # double 0.98150611240628293
	.quad	0x3fd0ff49a62f5e4c              # double 0.26558152417189684
	.quad	0x3fee95f8833eb394              # double 0.95580697664046221
	.quad	0x3fe015197a3ae0e3              # double 0.50257562516256049
	.quad	0x3fc62d154a07e9d8              # double 0.17325082888403531
	.quad	0x3fdbf9311a8c65d8              # double 0.43708446114177724
	.quad	0x3fe3a6f4c2c20678              # double 0.61413038290648014
	.quad	0x3fea7599ec109bad              # double 0.82685562235280019
	.quad	0x3fea1c119f758afe              # double 0.81592637199750562
	.quad	0x3fbe9739af33e240              # double 0.11949501540574037
	.quad	0x3fc70218882c4140              # double 0.17975145958963346
	.quad	0x3fb66c4b1e7e10d8              # double 0.087589926666683637
	.quad	0x3fe4585f884ec9e5              # double 0.63578774092303247
	.quad	0x3fecf533b4da5872              # double 0.90493188212236775
	.quad	0x3fb3d071e5498478              # double 0.077399366834940753
	.quad	0x3fc5e4b7ebfc4158              # double 0.17104243300173994
	.quad	0x3fcf1b4ef43e8720              # double 0.24302088666905153
	.quad	0x3feb5746412c7091              # double 0.85440361718385038
	.quad	0x3fe77f120a0f5a1b              # double 0.73426153149449946
	.quad	0x3fd668c26bcbe9fe              # double 0.35014400984769611
	.quad	0x3fe09be602cb395a              # double 0.51903057618782644
	.quad	0x3fdf785804624b5e              # double 0.49172020366784419
	.quad	0x3fed8abdaa0352d3              # double 0.92318614202175764
	.quad	0x3fc14e9fb60814e4              # double 0.13521191013584322
	.quad	0x3fc49443dd6c60d8              # double 0.16077469169318337
	.quad	0x3fc92bbccb2007e0              # double 0.19664726179331549
	.quad	0x3fb592e0a3de24e0              # double 0.084272422796988433
	.quad	0x3fef89123b9ac43b              # double 0.98548232690348613
	.quad	0x3fd25a4148a36252              # double 0.28675872891975474
	.quad	0x3fe6f0bc375f8f41              # double 0.71688662352651289
	.quad	0x3fd316a79f6f48d8              # double 0.29825773782535014
	.quad	0x3fd94eeb749693a6              # double 0.39544187913480255
	.quad	0x3fc39aa3d48815c4              # double 0.1531567371131769
	.quad	0x3fdf9059bff2fed6              # double 0.4931854605201641
	.quad	0x3feb52d4dbe119f1              # double 0.85386126465965451
	.quad	0x3fe227a44861e8c5              # double 0.56733907830427965
	.quad	0x3fdda7138b1f67b4              # double 0.46332253061484185
	.quad	0x3fe38c1cd70294ab              # double 0.61085359567791409
	.quad	0x3fa4d0a0d77c9eb0              # double 0.040654207520046781
	.quad	0x3fc27344fd89e708              # double 0.14414274577921327
	.quad	0x3fd8a135f1f6a42c              # double 0.38483952168695867
	.quad	0x3fcb9c491d6c7378              # double 0.21570695816708585
	.quad	0x3fdfa1621bbd722c              # double 0.49422505101191194
	.quad	0x3fd6faeb2b27c062              # double 0.35906485762007467
	.quad	0x3fdf9ac310d9a16a              # double 0.49382092137832123
	.quad	0x3fb16f42dca62b10              # double 0.068103960866363389
	.quad	0x3fee3247a2f0eba7              # double 0.94363767456467407
	.quad	0x3fc0d24f0a82a988              # double 0.1314181138344106
	.quad	0x3fe7a7e9c50f0842              # double 0.73924721229582979
	.quad	0x3f9bd9173687bc20              # double 0.027195322707424308
	.quad	0x3fd47f638b425ce4              # double 0.32027519797834558
	.quad	0x3fbbbb8d419c74f8              # double 0.1083305630858894
	.quad	0x3fec5312d802f69a              # double 0.88514082135926064
	.quad	0x3faf030b915817c0              # double 0.060570107929421635
	.quad	0x3fe36f467e4196ee              # double 0.60733341845908995
	.quad	0x3fc136371383dcec              # double 0.13446701481709711
	.quad	0x3fd5b084b4596544              # double 0.33889882671572402
	.quad	0x3fcb1ced2893b7a0              # double 0.2118202636842712
	.quad	0x3fe1c7d562da6db1              # double 0.55564374263069827
	.quad	0x3fe108566f4e0ead              # double 0.53226777781715884
	.quad	0x3fd6cd4b0fc95962              # double 0.35628010312702518
	.quad	0x3fe09a3ba0be09d8              # double 0.51882726092326958
	.quad	0x3fe34ca6a3af6169              # double 0.60310680360548219
	.quad	0x3fd644f4cc5d05d0              # double 0.34795875508652063
	.quad	0x3fd65c2f07d9998c              # double 0.34937644735909923
	.quad	0x3fbb426e81671e00              # double 0.10648241671798786
	.quad	0x3fe67890e4b50c1c              # double 0.70221752805116777
	.quad	0x3fce0aaf15eb1f88              # double 0.23470104761349497
	.quad	0x3fc75223d78c7650              # double 0.18219421410406023
	.quad	0x3fe580d800816471              # double 0.67197799776762512
	.quad	0x3fc2d1ee2fec3a64              # double 0.14703156795481498
	.quad	0x3fdbefcffa61a0fe              # double 0.43651198817543946
	.quad	0x3feebecdbd436a02              # double 0.96079146352286693
	.quad	0x3fea1719e5a79edf              # double 0.81531996588179456
	.quad	0x3fe1e830d5d35036              # double 0.55959359896451732
	.quad	0x3fed3fc3e0a1e0ec              # double 0.91403383134368487
	.quad	0x3fd4cd53aec5952c              # double 0.3250321585422451
	.quad	0x3fe4b99329f268fc              # double 0.64765318100697256
	.quad	0x3fe1abefee8e94d6              # double 0.55223843186527222
	.quad	0x3fdad5896cf225da              # double 0.41928325309035375
	.quad	0x3fe4f0c29234e522              # double 0.65438965373974534
	.quad	0x3fe06ca353260505              # double 0.51326147308296355
	.quad	0x3fe204dbfed70417              # double 0.56309318326396152
	.quad	0x3fedc64f73575a28              # double 0.93045780685026092
	.quad	0x3fcbff08aaf29dd8              # double 0.21872051569992723
	.quad	0x3fc266432a1e87c4              # double 0.14374579960445832
	.quad	0x3fd73b17e8d73dea              # double 0.36298177469595194
	.quad	0x3fd99e8609ed705a              # double 0.40030051202280037
	.quad	0x3fe5c6b9ab866575              # double 0.68050845623945
	.quad	0x3fe2c466c0c94f89              # double 0.58647477773273338
	.quad	0x3fa291dd3339a840              # double 0.036269104483679815
	.quad	0x3fd8be7fc473e5c0              # double 0.38662714180790303
	.quad	0x3fed74442d6fff26              # double 0.92044266581067258
	.quad	0x3fceb6081b967470              # double 0.23993016573959691
	.quad	0x3fe1a97cf53b1674              # double 0.5519394673980984
	.quad	0x3fc81f1bda5d7b1c              # double 0.18844936525689426
	.quad	0x3fe0f656333e369a              # double 0.53007040031816932
	.quad	0x3fedc0359016d7ee              # double 0.92971304075649441
	.quad	0x3fd8b4bc58987684              # double 0.38603123332891465
	.quad	0x3fdf482cad5306f6              # double 0.48878018308833704
	.quad	0x3fd98b918f855b04              # double 0.39914359107699249
	.quad	0x3fed1af992609afa              # double 0.909542833226481
	.quad	0x3fd313a5c4e7e4c2              # double 0.29807419041715033
	.quad	0x3fd1c76d69f60d7a              # double 0.2777970824028767
	.quad	0x3fd8122a0b981efc              # double 0.37610865719078368
	.quad	0x3fd444905920f326              # double 0.31668480590797043
	.quad	0x3fe44c45e326370e              # double 0.63431066861241603
	.quad	0x3fdc1bb88873013a              # double 0.43919194531555983
	.quad	0x3fe4246ee28ab8aa              # double 0.62944740530453669
	.quad	0x3fe61a61f92e5942              # double 0.69072054546521877
	.quad	0x3fe4d6c10dcb93f4              # double 0.65121510214214462
	.quad	0x3fc0d1e94343dc4c              # double 0.13140598091533418
	.quad	0x3fddd903c4dec8c4              # double 0.46637052751169628
	.quad	0x3fcbccd26337c1d4              # double 0.21718816609019476
	.quad	0x3fd3ced635d8b846              # double 0.30949931391194629
	.quad	0x3fe8762cdda3b987              # double 0.76442569054579301
	.quad	0x3fda8c4a83608ac4              # double 0.41481268720432873
	.quad	0x3feedee86c3e4189              # double 0.96471043721435123
	.quad	0x3fd5c5e86e6cb7ac              # double 0.34020434173259662
	.quad	0x3f7c3603f6172a80              # double 0.0068874506700448146
	.quad	0x3fd5f400cff0a484              # double 0.34301777178422577
	.quad	0x3fcf7a637b07a450              # double 0.2459225035411543
	.quad	0x3fdcfdfe2751494e              # double 0.45300248946764021
	.quad	0x3fc24a2a335890ac              # double 0.14288833148123581
	.quad	0x3fe425f22efb47a4              # double 0.62963208366476353
	.quad	0x3fd22e933d896944              # double 0.28409272202920399
	.quad	0x3fcbf9f67fce9368              # double 0.21856576195309718
	.quad	0x3fdcd27932df81fe              # double 0.45034627883981659
	.quad	0x3fa127e51d1f57e0              # double 0.03350749950884313
	.quad	0x3fd86bbac7b7c63c              # double 0.38157529357622244
	.quad	0x3fdf55704db24826              # double 0.48958976352253314
	.quad	0x3fc8f2ee0b5befe4              # double 0.19491363100666981
	.quad	0x3fdb91712159c642              # double 0.43075207001593097
	.quad	0x3feb000593a4f333              # double 0.84375265919479714
	.quad	0x3fb427394e38edc8              # double 0.078723508450756374
	.quad	0x3fe11fc79fc7352c              # double 0.53512936789198795
	.quad	0x3fd31d35cb51b5c0              # double 0.29865784507168414
	.quad	0x3fd0ec863b2afbfa              # double 0.26443630006900742
	.quad	0x3fe7fbb0058f4bd5              # double 0.74947358213318671
	.quad	0x3fb523db7bb03810              # double 0.082578389832832721
	.quad	0x3fe4f39c7238ad28              # double 0.65473768528810172
	.quad	0x3fe3faf07f32d451              # double 0.62438225596873498
	.quad	0x3fe2357fc2306172              # double 0.56903064658676628
	.quad	0x3fd4ff5a6e9e547c              # double 0.3280855255373536
	.quad	0x3fe5c548fcee1087              # double 0.68033265495661588
	.quad	0x3fe87d907890c37d              # double 0.76532767818399317
	.quad	0x3fea3ec9c7299dc5              # double 0.82016457461298187
	.quad	0x3fe9d6e7d5e17b2d              # double 0.80748359464255304
	.quad	0x3fe26afe86118150              # double 0.57556081948500015
	.quad	0x3fd93c650c393672              # double 0.39431120103549866
	.quad	0x3fe5e5eacb2da3e4              # double 0.68431605990656097
	.quad	0x3fe99bb581b2e569              # double 0.8002574475459997
	.quad	0x3fed435b8e16bc54              # double 0.91447236777993134
	.quad	0x3fe88b584c08aa36              # double 0.76700987673149856
	.quad	0x3fea71aa410c0afe              # double 0.82637512878895314
	.quad	0x3fc715ad175e456c              # double 0.18034900322940517
	.quad	0x3fdc652c96783dca              # double 0.44367518133455219
	.quad	0x3fe4cdd9127d3363              # double 0.65012792216439796
	.quad	0x3feba72f9a42698f              # double 0.86415844086450189
	.quad	0x3fd0ac4c694f2776              # double 0.26051626476384315
	.quad	0x3fe44ccdf196be49              # double 0.63437554536171448
	.quad	0x3fe58a2436bf74b4              # double 0.67311297123855818
	.quad	0x3fdf2b9f0cb88f94              # double 0.48703743212012651
	.quad	0x3fe7ac30449b6aba              # double 0.73976910972427068
	.quad	0x3fcae35233434a14              # double 0.21006228926724246
	.quad	0x3fe82bee36bcea01              # double 0.75536261263852122
	.quad	0x3f8dd92af1805e40              # double 0.014574370856322294
	.quad	0x3fe5afea618fbe2b              # double 0.67772406630496584
	.quad	0x3fee59a7052bd694              # double 0.94844389925011052
	.quad	0x3fe675a21428386b              # double 0.70185951172767369
	.quad	0x3fef25ca596e693d              # double 0.9733630892472217
	.quad	0x3fd9b59f64620fd6              # double 0.40171036532433158
	.quad	0x3fec7b0ec019c110              # double 0.8900216819729696
	.quad	0x3fe70fdfdec74f47              # double 0.72068780433117119
	.quad	0x3fd2063203c12504              # double 0.28162813536307874
	.quad	0x3faa0f6930177a80              # double 0.050898825760431698
	.quad	0x3fe5d36057b9e4cf              # double 0.68205277570737077
	.quad	0x3fe2766fe8698f92              # double 0.57695765870129123
	.quad	0x3fdf7009f0baca6e              # double 0.49121330746417058
	.quad	0x3fee6ff79ccb33d1              # double 0.95116787551671156
	.quad	0x3fe1e2107841b1a3              # double 0.55884574401493514
	.quad	0x3fde62b9916502a2              # double 0.47477568815888038
	.quad	0x3fe829a60b2219b4              # double 0.75508405851797144
	.quad	0x3fe766d51d78c5c9              # double 0.7313027930851429
	.quad	0x3fccf059f039f598              # double 0.22608494024090642
	.quad	0x3fdef33ba1d9f498              # double 0.48359576040076879
	.quad	0x3feec35492fa2957              # double 0.9613440390251452
	.quad	0x3fd17317db63210e              # double 0.27264973091634281
	.quad	0x3fee3f2cb2b9dab4              # double 0.94521174342556557
	.quad	0x3fe0a700f4ab45c0              # double 0.52038619791908758
	.quad	0x3fefa8322cd5ddf2              # double 0.98928173787038376
	.quad	0x3fea047afa47266e              # double 0.81304692156227332
	.quad	0x3fd7c711fc234854              # double 0.37152528403124063
	.quad	0x3fd7caa4e6f9bcd0              # double 0.37174341732220473
	.quad	0x3fd791c54775a18a              # double 0.36827213266817493
	.quad	0x3fc9fc96aca69544              # double 0.20302089147768687
	.quad	0x3fc52bbd8cda80d8              # double 0.1653973520051355
	.quad	0x3fd5be51a4af66b4              # double 0.33974114496741525
	.quad	0x3fe8f9354c2fb6de              # double 0.78042092209008351
	.quad	0x3fd0609e269bf372              # double 0.25589708109310216
	.quad	0x3fe479144dacfb90              # double 0.6397801892379551
	.quad	0x3fe5071b0b577b7f              # double 0.65711738791638641
	.quad	0x3fdac3f193ef8f18              # double 0.41820945212224236
	.quad	0x3f8acd51d0b5f580              # double 0.01308692854103799
	.quad	0x3f8a649a7fa45c40              # double 0.012887198467565253
	.quad	0x3fbeabb59bbdbae8              # double 0.11980757763170014
	.quad	0x3fd74f6e81e105a4              # double 0.36422312434668869
	.quad	0x3fc5a13501c68c00              # double 0.16898214899728714
	.quad	0x3fd099734fccb10e              # double 0.25936587136199385
	.quad	0x3fd23d230bd0f584              # double 0.28498150018625545
	.quad	0x3feb69bc49ca850e              # double 0.85665716564486316
	.quad	0x3fe4903b603bc2b6              # double 0.64260643764108383
	.quad	0x3fe3f9f5fcb704d4              # double 0.62426280363447484
	.quad	0x3fe7f2e568375955              # double 0.74840040545204067
	.quad	0x3fe5ad4529803244              # double 0.67740114312761834
	.quad	0x3fe3554a962853bb              # double 0.60416154220239748
	.quad	0x3fef36f41d41dc3c              # double 0.97545819963750757
	.quad	0x3fe8a2d66fc1adc4              # double 0.76987764193966556
	.quad	0x3fc2533968128174              # double 0.1431648023763149
	.quad	0x3feb4603ab36db5d              # double 0.85229667129793152
	.quad	0x3fea4f8cfe55b5b3              # double 0.82221078562513694
	.quad	0x3fc2e8a3e9b9e4ec              # double 0.14772461807641635
	.quad	0x3fee98891b5dc286              # double 0.9561200651642856
	.quad	0x3fd66bf01b8c8526              # double 0.35033800783465308
	.quad	0x3fd6f6d2e877cf16              # double 0.35881493284181099
	.quad	0x3fdcaeaaf37b2966              # double 0.4481608751053926
	.quad	0x3fc35bbe4e4c1b3c              # double 0.15123728583440676
	.quad	0x3feef10f6b127f1a              # double 0.9669262973074837
	.quad	0x3fc2dcb41419e86c              # double 0.14736033421997108
	.quad	0x3fd928cc50acc9a6              # double 0.39311511877454064
	.quad	0x3fd750b7b8264cb4              # double 0.36430161460266253
	.quad	0x3fe0aaef58c9c6ca              # double 0.52086608258670108
	.quad	0x3fe20c5ab4bd9aec              # double 0.56400809574992428
	.quad	0x3fa309f49145a7d0              # double 0.037185328229341175
	.quad	0x3feb73ae2bac7ce6              # double 0.8578711369517833
	.quad	0x3fe593d757358693              # double 0.67429701836609224
	.quad	0x3fe17b72e2dea966              # double 0.54631943045141607
	.quad	0x3fae752556820790              # double 0.059487501916932861
	.quad	0x3fd8014f43ac8c40              # double 0.37507993325033695
	.quad	0x3fd6d40707307132              # double 0.35669112875054332
	.quad	0x3fe8c18f3f87307d              # double 0.77362787635639985
	.quad	0x3f9eb5932ce9f320              # double 0.029989528290104706
	.quad	0x3fdc37384d9eac2a              # double 0.44087035732326518
	.quad	0x3fc86dd469664b70              # double 0.19085173746551787
	.quad	0x3fdd1c3922e2931e              # double 0.4548476067232502
	.quad	0x3fcc890bfab08978              # double 0.22293233624175079
	.quad	0x3fd05694514b0a30              # double 0.25528438509732876
	.quad	0x3fdf8c2813e1d1c0              # double 0.49292947713481894
	.quad	0x3fec97fa93968865              # double 0.89355210138115793
	.quad	0x3fab3f8e5fe2e7e0              # double 0.05321926994788817
	.quad	0x3fe20188cb993d2f              # double 0.56268729939794138
	.quad	0x3febc0852436df61              # double 0.86725098679651691
	.quad	0x3fd9cf57d4cd3ca4              # double 0.40328021794716506
	.quad	0x3fed4a53e36db8fb              # double 0.91532320422791658
	.quad	0x3fe6d5a4977d3599              # double 0.71357946002688089
	.quad	0x3fe4c4baf0b39565              # double 0.64901492130290406
	.quad	0x3fd6401e84edd02a              # double 0.34766352635711206
	.quad	0x3fee9410f9d0850a              # double 0.95557450096035379
	.quad	0x3fe1f70c9c60b7f7              # double 0.56140738050976224
	.quad	0x3fcd047eb7178ff4              # double 0.22669967594185858
	.quad	0x3fe64372180452f8              # double 0.69573311510848068
	.quad	0x3fec6506e246e432              # double 0.88733238405905568
	.quad	0x3fea82e38621b82c              # double 0.82847763249970318
	.quad	0x3fc1f4bbc7740f84              # double 0.14028117407735519
	.quad	0x3fee3d755bbac95e              # double 0.94500224986976966
	.quad	0x3fec3a9c159619c5              # double 0.88215450492935388
	.quad	0x3fe25bc5fc4fad35              # double 0.57370280532396711
	.quad	0x3f93cd4f8f7d1840              # double 0.019337885983326197
	.quad	0x3fcb38a88b36a8d0              # double 0.21266657636198838
	.quad	0x3fe4ed1d8dcc54f7              # double 0.65394475645976413
	.quad	0x3fd11de37e2bea18              # double 0.26744925805511022
	.quad	0x3fea9cfcea791234              # double 0.83166356845374034
	.quad	0x3fe6497132a99a3e              # double 0.69646510977765508
	.quad	0x3fe63f3820f1cf74              # double 0.69521719393240611
	.quad	0x3fdfe6467e87706c              # double 0.49842989307740626
	.quad	0x3feff883b2d38da4              # double 0.99908623625781389
	.quad	0x3fe17d13f41671b7              # double 0.54651830361722531
	.quad	0x3feaab0b8d7ff911              # double 0.83337953221033179
	.quad	0x3fc0db6142ae7158              # double 0.1316949439614159
	.quad	0x3febd0ab89f0794b              # double 0.86922242108611536
	.quad	0x3fe72a6c5b442b40              # double 0.72392862153478887
	.quad	0x3fcdeacf071efb74              # double 0.23372829292017239
	.quad	0x3fe3327411bd90be              # double 0.59990886177958891
	.quad	0x3fca39c3a115efec              # double 0.20488782277595818
	.quad	0x3fe4f65c31124d9a              # double 0.65507325729633981
	.quad	0x3fc39f9a38708b6c              # double 0.15330817943421537
	.quad	0x3fe7fc826558c612              # double 0.74957389635364025
	.quad	0x3fab83be9f2431a0              # double 0.053739506651342639
	.quad	0x3fe22b2f68a9271c              # double 0.56777162972977946
	.quad	0x3feb4fa1446d9aec              # double 0.85347045292732337
	.quad	0x3fd67301340e7dc6              # double 0.35076932986882203
	.quad	0x3fcab3add522a9f0              # double 0.2086083689403746
	.quad	0x3fe6a02d0f613cb1              # double 0.70705273631928922
	.quad	0x3fa35e320d3fccc0              # double 0.037828029744468861
	.quad	0x3faeffd60067b690              # double 0.06054562334962299
	.quad	0x3fe9e1e0d3792927              # double 0.80882302573562448
	.quad	0x3fd4122e2414a34e              # double 0.31360963366983163
	.quad	0x3fe54ed8736a7514              # double 0.6658746961799431
	.quad	0x3fdbcf7be685b578              # double 0.43453881751960166
	.quad	0x3fdc4a043cd826fc              # double 0.44201761190252831
	.quad	0x3fda132212d30018              # double 0.40741779173186066
	.quad	0x3fe03be3a578bab4              # double 0.50731069868728307
	.quad	0x3feff2b63147ef9d              # double 0.99837789178080849
	.quad	0x3fb8a58730eb73c0              # double 0.096275758212370555
	.quad	0x3fefcabaa70dfdbd              # double 0.99349720599996482
	.quad	0x3fdf848f9d6fc1d8              # double 0.49246588110602607
	.quad	0x3fee1c36c0b82712              # double 0.94094407692429827
	.quad	0x3fe4fe67e2f7fce9              # double 0.65605539636444832
	.quad	0x3fe5da48c4757ab5              # double 0.68289602633361446
	.quad	0x3fcf3946da475bc0              # double 0.24393544824735436
	.quad	0x3fe97ae0b071f613              # double 0.79624971830316082
	.quad	0x3fd3c32f71076a3e              # double 0.30878816640839435
	.quad	0x3fd512de0e7d784e              # double 0.32927657523203357
	.quad	0x3fe3134c3585e40a              # double 0.59610567525589997
	.quad	0x3fdf5c9aac6136e0              # double 0.49002711137732824
	.quad	0x3f8ad3391393a980              # double 0.013098188314377479
	.quad	0x3fd145b5d025ec02              # double 0.26987977339712199
	.quad	0x3febc81a1e8decbf              # double 0.86817651717810651
	.quad	0x3feae86b4f7dde60              # double 0.8408714821407095
	.quad	0x3fee13ec1dc02fe7              # double 0.93993192492189059
	.quad	0x3fd757bf5c82a878              # double 0.36473068269936659
	.quad	0x3fdb4e5b847aee18              # double 0.42665756165999502
	.quad	0x3fd393f1db53f2bc              # double 0.30590483111135902
	.quad	0x3fe4c945d74786dc              # double 0.64956943556554902
	.quad	0x3fe23bc53154f093              # double 0.5697961772452963
	.quad	0x3fe647d8e2e88fe1              # double 0.69627041166358705
	.quad	0x3fe9fca926f2d417              # double 0.8120923767770617
	.quad	0x3fd15dd2f638dc92              # double 0.27135156674507599
	.quad	0x3fe27b9416956951              # double 0.5775852624022183
	.quad	0x3fdd7df3eab61168              # double 0.46081254883781364
	.quad	0x3fdcfae04491aace              # double 0.45281225868408803
	.quad	0x3febe4ef5059526e              # double 0.87169614499232551
	.quad	0x3fe2fb257efc7458              # double 0.59315752794249033
	.quad	0x3fd539522373b49c              # double 0.33162358724696062
	.quad	0x3fe4529d49e8c5be              # double 0.63508476672557612
	.quad	0x3fe9602289642977              # double 0.79298521837453861
	.quad	0x3fe4f2b5b1572fb0              # double 0.65462765347318985
	.quad	0x3fb0636c3eb86860              # double 0.064017072022040988
	.quad	0x3fee2673aed168a7              # double 0.94219383377209887
	.quad	0x3fdf4c79fa0e8338              # double 0.48904275340651138
	.quad	0x3fef6c46d23b991d              # double 0.98196736394018879
	.quad	0x3fed2c354717e6ec              # double 0.91164649854110058
	.quad	0x3fec2f61f3d1e4eb              # double 0.88078401204179835
	.quad	0x3fd48e0f774a8cec              # double 0.32117067956478595
	.quad	0x3fe8c9b8be648273              # double 0.77462422548349108
	.quad	0x3fb17dc19eb03398              # double 0.068325139276750213
	.quad	0x3fb980a2782bc9f8              # double 0.099619058931956661
	.quad	0x3f9de472bd16e200              # double 0.02919177321538946
	.quad	0x3fd6a69edd730232              # double 0.3539197123136858
	.quad	0x3fe6e9a175433ec2              # double 0.71601937201372601
	.quad	0x3fe3e5fa34ad787b              # double 0.62182340897176347
	.quad	0x3fe61fc0dbbc9002              # double 0.69137614171313566
	.quad	0x3fefb2bd74e348dc              # double 0.99056885556845086
	.quad	0x3fec66efdafa3033              # double 0.88756554383281239
	.quad	0x3fefc37e991dc127              # double 0.99261407762063391
	.quad	0x3fdb4d1a21108866              # double 0.4265809367080976
	.quad	0x3fe7bf40c3be1477              # double 0.74209631186444269
	.quad	0x3f69ae606bc95800              # double 0.0031349070762116682
	.quad	0x3fe1d24439658eb7              # double 0.55691729746145924
	.quad	0x3fc1eef6096df7c0              # double 0.14010501346996129
	.quad	0x3fe573f47dca2ae2              # double 0.67040466850570746
	.quad	0x3fe6c4be65bab37a              # double 0.71151656979564781
	.quad	0x3fd486b6b3bea382              # double 0.3207222705191769
	.quad	0x3fceb330b2173044              # double 0.23984345146016228
	.quad	0x3fef0b925963a71a              # double 0.97016255816308505
	.quad	0x3fc00c7089d50038              # double 0.12537962656097235
	.quad	0x3fe673439385020a              # double 0.70157030880369686
	.quad	0x3fe6fdc43c8061f9              # double 0.71847736183832389
	.quad	0x3fe50c5ff9b28abe              # double 0.6577606083777352
	.quad	0x3fdcacf6c0540874              # double 0.44805687696510366
	.quad	0x3fe278204934c665              # double 0.5771638326461469
	.quad	0x3fc59bfb90ada104              # double 0.16882271351210687
	.quad	0x3fd8ce58c46486b2              # double 0.38759440592739758
	.quad	0x3fef5aacfb876a71              # double 0.97981881262542291
	.quad	0x3fdbb46d2c5efb18              # double 0.43288735707385362
	.quad	0x3fee9f1217a21558              # double 0.95691780677649784
	.quad	0x3fd71a717b5cd208              # double 0.36098897025229393
	.quad	0x3fa00eee5383e120              # double 0.031363914198609288
	.quad	0x3fbb5205591141d8              # double 0.1067202894639715
	.quad	0x3fe1276501a43799              # double 0.53605890579796089
	.quad	0x3fd015ea6158da62              # double 0.25133761889029504
	.quad	0x3fe5c00b4b45472f              # double 0.67969288541119066
	.quad	0x3fbb06c69cff93f8              # double 0.10557214100806778
	.quad	0x3fee9f7adcad866f              # double 0.95696776486529511
	.quad	0x3fe2a0d82d0f736b              # double 0.58213433075762333
	.quad	0x3fdeaeb7e03ed078              # double 0.4794139566322495
	.quad	0x3fdbefd9e2528b04              # double 0.4365143499546067
	.quad	0x3fc468ae64f08818              # double 0.15944461754503503
	.quad	0x3fd21ec9aa46adac              # double 0.28312913540386364
	.quad	0x3fef1db371cc7bd8              # double 0.97237560488053542
	.quad	0x3fdf94207f47d72c              # double 0.4934159510588525
	.quad	0x3fd8143860a55564              # double 0.37623414457387683
	.quad	0x3fd214703451860a              # double 0.28249745473121435
	.quad	0x3fbd00478ad9cb18              # double 0.11328551425848976
	.quad	0x3fe701d55b837de7              # double 0.71897380708463465
	.quad	0x3fe2e52e8be1353f              # double 0.5904762966180569
	.quad	0x3fc56668e9f7fb28              # double 0.16718779968501818
	.quad	0x3fcc3087b1fbfea0              # double 0.22023101988451277
	.quad	0x3fdbcbbb5fb7fb6a              # double 0.43430981013800951
	.quad	0x3fd9261e6cbb0070              # double 0.39295158975801936
	.quad	0x3fbee061019f5cd0              # double 0.12061125077831325
	.quad	0x3fe1553c8006acf7              # double 0.54165482525914299
	.quad	0x3fd720eeb77c1b64              # double 0.36138503950535594
	.quad	0x3fe07b8c939182cf              # double 0.51508168050721703
	.quad	0x3fd1b18c877aee74              # double 0.27646172743309383
	.quad	0x3fb6889b92f5c950              # double 0.088021968249255566
	.quad	0x3fefcc7dcab03906              # double 0.99371232593128478
	.quad	0x3fe3030506fe0588              # double 0.59411860814741235
	.quad	0x3fe18e2d5186814e              # double 0.54860559390002961
	.quad	0x3fe4220c695ede67              # double 0.62915630893890018
	.quad	0x3fe5059d8c9fd338              # double 0.65693547692953924
	.quad	0x3fe170a2631439db              # double 0.54499930716866218
	.quad	0x3fb582e1b4488048              # double 0.084028345598654686
	.quad	0x3fef08cb569440a3              # double 0.96982352170927688
	.quad	0x3febf6dabb6becc7              # double 0.87388359647538827
	.quad	0x3fe77b10055603a9              # double 0.73377228777109338
	.quad	0x3fc524580bf7339c              # double 0.16517162880191172
	.quad	0x3fd39d46e454ed52              # double 0.30647442148229687
	.quad	0x3fe07d3aebc9427f              # double 0.51528688480364326
	.quad	0x3fc67e9e0a2788d4              # double 0.17573905464002471
	.quad	0x3fcf4b6491c6af88              # double 0.24448830717062386
	.quad	0x3fef84dd6024a0b9              # double 0.9849688413423997
	.quad	0x3fe414cc5b7e8e42              # double 0.62753885145179589
	.quad	0x3fe20da539134fac              # double 0.56416569850488463
	.quad	0x3f924c375c7d1e60              # double 0.017868866939606654
	.quad	0x3fe32de1acf7595e              # double 0.59935077459776287
	.quad	0x3feb7c324db07fc8              # double 0.85891070531578695
	.quad	0x3fc3d8bdc554ffd8              # double 0.15505191932061169
	.quad	0x3fe49a99e0a77b1c              # double 0.64387220266130241
	.quad	0x3fe0dda10ca5c02f              # double 0.52705433340270769
	.quad	0x3fea84265b979aaf              # double 0.82863157166578627
	.quad	0x3fc294db1f79b690              # double 0.14516772305380643
	.quad	0x3fd353a29fe0c516              # double 0.30197969067656183
	.quad	0x3fcf17b7fa4010d4              # double 0.24291133612871951
	.quad	0x3fe1619abce3cb52              # double 0.54316460506957243
	.quad	0x3fecdf03693b961a              # double 0.90222330621026292
	.quad	0x3fc00f432cdf92f8              # double 0.12546577159005046
	.quad	0x3fdb347f9f2c1d02              # double 0.42507925552531856
	.quad	0x3fd298bbe2072018              # double 0.29057213852911579
	.quad	0x3feaabc842f3ed41              # double 0.83346951557852134
	.quad	0x3fc5962a33897800              # double 0.16864516750769099
	.quad	0x3fe9d24310731a11              # double 0.80691674435439797
	.quad	0x3fe65e6c0291b0a8              # double 0.69902611257341096
	.quad	0x3fce560f9197dc00              # double 0.23700136765521052
	.quad	0x3fe8f785169d6535              # double 0.78021482865293612
	.quad	0x3fc569f742293594              # double 0.16729632120624827
	.quad	0x3fd3ccadfed3eb8c              # double 0.30936765561607937
	.quad	0x3fe6db0dd80f3a23              # double 0.71423999976270058
	.quad	0x3fc4946922b0b098              # double 0.16077913469178351
	.quad	0x3fe334c1f764d4c4              # double 0.60019014662852799
	.quad	0x3fc0bd9b0b3d3728              # double 0.13078630493912979
	.quad	0x3fe7cadff9154464              # double 0.74351500176466034
	.quad	0x3fd7f933baa52f52              # double 0.37458508708072202
	.quad	0x3fef800e7ebd43cd              # double 0.98438191179058665
	.quad	0x3fc04019d25cc760              # double 0.12695620318987277
	.quad	0x3fec6609609fb0c1              # double 0.88745564338525906
	.quad	0x3fe8fc292ac1d312              # double 0.78078134871484139
	.quad	0x3fe3de404b5f8c64              # double 0.62088026734671731
	.quad	0x3fe8f6ebd4bcff67              # double 0.78014174986308837
	.quad	0x3fe48153cfd582e2              # double 0.64078703491767564
	.quad	0x3fed0ce3cf05aeac              # double 0.90782347139380226
	.quad	0x3fb431c5734c2c20              # double 0.078884449623885633
	.quad	0x3feef96c118536f4              # double 0.96794703885981769
	.quad	0x3febd14d52b3fecf              # double 0.86929956582022239
	.quad	0x3fdbc0637db3f01c              # double 0.43361747050926325
	.quad	0x3fd323c0a1552406              # double 0.29905715708861214
	.quad	0x3fd048bfc6a4f4bc              # double 0.25444025420058458
	.quad	0x3fc802a5a766d5d8              # double 0.18758078264151723
	.quad	0x3fadd68dea4a2e10              # double 0.0582775448320626
	.quad	0x3fde82f45f822684              # double 0.47674283339492995
	.quad	0x3fe677d1bd2b62d2              # double 0.70212637850917248
	.quad	0x3fedf1d8a10f8e87              # double 0.93577224213773114
	.quad	0x3fe108c79bce5952              # double 0.53232174330586646
	.quad	0x3fe920bb93425ce4              # double 0.78524569284027423
	.quad	0x3f7361bc40f35900              # double 0.0047318795834228045
	.quad	0x3fd08c39f5b8ff9c              # double 0.2585587405810601
	.quad	0x3fed96860a6a9d93              # double 0.92462446245638075
	.quad	0x3fe9ce21ef0c910e              # double 0.80641266526484556
	.quad	0x3f8f98ce72345880              # double 0.015428173885578156
	.quad	0x3fe7637ceac9092a              # double 0.73089452606681005
	.quad	0x3fdb98c6c573144a              # double 0.4311997345178652
	.quad	0x3fda72573d3ea8d2              # double 0.41322880726751265
	.quad	0x3fe341c4ed3d473c              # double 0.6017784722882662
	.quad	0x3fdd3dea45c29998              # double 0.456903999447968
	.quad	0x3fe7a59c51a226da              # double 0.73896614021324614
	.quad	0x3fd51ad27f5ea7ee              # double 0.32976210058643474
	.quad	0x3fedb2b6882e5f46              # double 0.92806555364493515
	.quad	0x3fcf00d9828c8a54              # double 0.24221342920744127
	.quad	0x3fd8f9704b12642a              # double 0.39022452670320951
	.quad	0x3fe2324ca5aaaf71              # double 0.5686400638273722
	.quad	0x3fd80878b118248c              # double 0.37551705641141875
	.quad	0x3fe8ee795c4ffd49              # double 0.77911060361649576
	.quad	0x3fb7ce1f85020a10              # double 0.092988939259193381
	.quad	0x3fe713afa8d3b443              # double 0.72115309690492102
	.quad	0x3f754f5191f1f280              # double 0.005202597268291087
	.quad	0x3fec16fa32aec3c2              # double 0.87780485056838864
	.quad	0x3fd6ae1b5995bab8              # double 0.35437663792155716
	.quad	0x3fee544dfeccec50              # double 0.9477910973140613
	.quad	0x3fdd764aa92648d0              # double 0.46034494894514655
	.quad	0x3fc9c701d6b75960              # double 0.20138571724119014
	.quad	0x3fd90f7d73cb4234              # double 0.39157043750768428
	.quad	0x3fe0a3c05551c83e              # double 0.51998917259175648
	.quad	0x3febe01580c49023              # double 0.87110400342908567
	.quad	0x3fbabd6e4f212ab0              # double 0.10445298606752362
	.quad	0x3fe89c06e60da63d              # double 0.76904625828064577
	.quad	0x3fe9bd6692961d7d              # double 0.80437019949106026
	.quad	0x3fc08e693934a68c              # double 0.12934603970761704
	.quad	0x3fecd3fe44a52a8f              # double 0.90087808043729634
	.quad	0x3fe55fd7378e7964              # double 0.66794930315863299
	.quad	0x3fe7c634f2438209              # double 0.74294516865853766
	.quad	0x3fe51f23a58b2790              # double 0.66005117733696927
	.quad	0x3fd60e0bbdee44e6              # double 0.34460729167865478
	.quad	0x3fde983c40c3b7f8              # double 0.47804170918141109
	.quad	0x3fec820c5f49bdb1              # double 0.89087504015872387
	.quad	0x3fdd9d44e4481166              # double 0.46272394459835764
	.quad	0x3fd27863d7e3addc              # double 0.28859802325197648
	.quad	0x3fee0580ee0886d7              # double 0.93817183009033556
	.quad	0x3fcc3cd494967920              # double 0.22060639624846434
	.quad	0x3fee53a097bd0950              # double 0.9477084125176507
	.quad	0x3fe88e3481bd29b6              # double 0.7673590215647923
	.quad	0x3febf739c1b4117b              # double 0.87392890770620058
	.quad	0x3fc9db672369a8bc              # double 0.2020081446565366
	.quad	0x3fd59f1b6573448c              # double 0.33783612162830745
	.quad	0x3fe1f51fa9c8906d              # double 0.56117232476073087
	.quad	0x3fc0aba483820414              # double 0.13023811742098756
	.quad	0x3fe0842c2b57bfc1              # double 0.51613434281716064
	.quad	0x3fe9df58b0ae1949              # double 0.80851397044970341
	.quad	0x3fd03ced9079c7d8              # double 0.2537187491317332
	.quad	0x3fe8417e7f88c0bb              # double 0.75799488934537551
	.quad	0x3fee951a317fd3b4              # double 0.95570096652828917
	.quad	0x3fea5ccf07414d77              # double 0.82382918755540302
	.quad	0x3fe96707941a4e8d              # double 0.79382685591049695
	.quad	0x3fa5aa8884fa1a50              # double 0.042316690666713286
	.quad	0x3fee67b0a8386dc9              # double 0.95015747886230273
	.quad	0x3fdbeaa5a03a61de              # double 0.43619671485205724
	.quad	0x3fe267b126864276              # double 0.57515771412188488
	.quad	0x3fd04d73dba0b73a              # double 0.25472732971217094
	.quad	0x3fe986066ba05303              # double 0.79761048336749274
	.quad	0x3fd12677f13cd046              # double 0.26797293241839204
	.quad	0x3fa51e3b9e0817c0              # double 0.04124628357025939
	.quad	0x3fd8e6909e8bf772              # double 0.38907256587105288
	.quad	0x3fc055982442d2b0              # double 0.12761213083799339
	.quad	0x3fa556ca531e88d0              # double 0.041677782675166974
	.quad	0x3fed4dfd27654f43              # double 0.91577012724381068
	.quad	0x3fdc703ae3fc2f82              # double 0.44434997810525811
	.quad	0x3fe29c42c6f4eeb3              # double 0.58157481058829885
	.quad	0x3fc2ab264e26ea44              # double 0.14584807220474449
	.quad	0x3feb2d4909a4e53c              # double 0.84927799113862745
	.quad	0x3fe6767a0fc91ffb              # double 0.70196250041135444
	.quad	0x3fe713f07c077eb4              # double 0.72118400787800008
	.quad	0x3fd646640e5afe34              # double 0.34804631616495674
	.quad	0x3fedae7b03c5bb74              # double 0.92754889237208582
	.quad	0x3fdcb7607ca0b2e6              # double 0.44869243784596191
	.quad	0x3fd9dd10961f9506              # double 0.40411772404179691
	.quad	0x3feebf3b7855ab04              # double 0.96084378722056884
	.quad	0x3fc7958a3359c78c              # double 0.18425109393461658
	.quad	0x3fe4447aabb866ed              # double 0.63335927523732283
	.quad	0x3fdbe2fefe0ec342              # double 0.43572974024123223
	.quad	0x3fe7d7de138273d9              # double 0.74510101137604601
	.quad	0x3fe9b0b901b49744              # double 0.80282259305088432
	.quad	0x3fd9da1296996bac              # double 0.40393509585345089
	.quad	0x3fdc79d038658070              # double 0.44493489749402837
	.quad	0x3fd91998eb1eb8be              # double 0.39218733750284318
	.quad	0x3fb58a736d23eef0              # double 0.084143842835995519
	.quad	0x3fed59348c8e9fab              # double 0.91713931515277147
	.quad	0x3fde5b068705600e              # double 0.4743057554783271
	.quad	0x3fe16de33fddf2ab              # double 0.54466402505894018
	.quad	0x3fe9f410448a3701              # double 0.81104291331004685
	.quad	0x3fecd2aa7f34e895              # double 0.90071606488278866
	.quad	0x3fdf25f831b920be              # double 0.48669247489716472
	.quad	0x3fd6585c8f1f19cc              # double 0.34914316155154945
	.quad	0x3fd00f8b26d24db0              # double 0.25094870368158251
	.quad	0x3fc541596132f354              # double 0.16605679746671831
	.quad	0x3fdbf2cdfd779fb0              # double 0.43669461968101597
	.quad	0x3fe042a3dc787743              # double 0.50813477574022448
	.quad	0x3fec817399c0954c              # double 0.89080219297162832
	.quad	0x3feee30e5cd1ccb4              # double 0.96521680954756172
	.quad	0x3fe8def7966a8782              # double 0.77721766832495143
	.quad	0x3fe61f62c5b3758b              # double 0.69133127797583549
	.quad	0x3fc1450048829624              # double 0.13491824665577312
	.quad	0x3fb33c7baa1faba0              # double 0.075141648325070864
	.quad	0x3fc3f14a3a153ba0              # double 0.15580108486252886
	.quad	0x3fe15246ba7760e7              # double 0.54129349154666506
	.quad	0x3feec43137b68366              # double 0.96144925004419401
	.quad	0x3fd6e71fe7463cfa              # double 0.35785672746074193
	.quad	0x3feb0748dedf3ad2              # double 0.84463923959432408
	.quad	0x3fe6e1c29696dbbd              # double 0.71505860721560277
	.quad	0x3fdd6b5aec691e3e              # double 0.45967743956541429
	.quad	0x3fc5cc5e9c08fbac              # double 0.17029936427021874
	.quad	0x3fed809402d681fb              # double 0.92194557718545356
	.quad	0x3fdf46a78608a622              # double 0.48868740166889968
	.quad	0x3fd5f20c71ab3232              # double 0.34289847469770784
	.quad	0x3feef9ddcd509f61              # double 0.96800127125332491
	.quad	0x3fc9abfbfbc2bf58              # double 0.20056104462627888
	.quad	0x3fdc51d87748b56a              # double 0.44249545716123484
	.quad	0x3fa4dd60245e5f70              # double 0.040751461448222837
	.quad	0x3fd1290c96ce93a4              # double 0.26813044287910714
	.quad	0x3fe467b9db65f816              # double 0.63766186572297801
	.quad	0x3fb836df0af715c0              # double 0.094587268998188812
	.quad	0x3fd3144b541b322e              # double 0.29811366284846741
	.quad	0x3fd41be75504b79c              # double 0.31420310309010246
	.quad	0x3fdf5c91ea59bf72              # double 0.4900250233249529
	.quad	0x3fe42dafa146330d              # double 0.63057691096182256
	.quad	0x3fca92773753afc0              # double 0.20759477807530224
	.quad	0x3fdbdabb868fae58              # double 0.43522537365672553
	.quad	0x3fc5e41dfb82425c              # double 0.17102408199982022
	.quad	0x3fe0d6f9dc1961a3              # double 0.52624218929399935
	.quad	0x3fd6c7ca6afdca28              # double 0.35594425629020288
	.quad	0x3fddff21b0e3bedc              # double 0.46869699739816695
	.quad	0x3fd5423081f0d4d2              # double 0.33216488542104827
	.quad	0x3fe8fb16729f3e95              # double 0.78065035235518343
	.quad	0x3fcba8e0ae608828              # double 0.2160912372065138
	.quad	0x3fdbf058862537aa              # double 0.43654454326758219
	.quad	0x3fd91f8521403f48              # double 0.39254883048214539
	.quad	0x3fdf9f35c69f131c              # double 0.49409241100902235
	.quad	0x3fd2279fa835d4ba              # double 0.28366843630585559
	.quad	0x3fbbe6187ac2a298              # double 0.10897973057820776
	.quad	0x3fee1d0955b6ff55              # double 0.94104449025324277
	.quad	0x3fd8108d59436250              # double 0.37601026265250415
	.quad	0x3fe68c4939372aeb              # double 0.70462475943471981
	.quad	0x3fd0c2c151609d66              # double 0.26188691088687788
	.quad	0x3fee38d864e225eb              # double 0.94443912223613091
	.quad	0x3fe76641deb12c83              # double 0.73123258108661593
	.quad	0x3fd049ae65527718              # double 0.25449714560260039
	.quad	0x3fa19886ec321c90              # double 0.034366813976754007
	.quad	0x3fceeee87b334840              # double 0.24166589751854595
	.quad	0x3fe381078da37fea              # double 0.60950067199519009
	.quad	0x3fe72b3abaf216ce              # double 0.72402702820610343
	.quad	0x3febdeca3106a618              # double 0.87094602179894576
	.quad	0x3fd9a7a092c7a912              # double 0.40085615476586256
	.quad	0x3fe633f8763f647c              # double 0.69384406180610325
	.quad	0x3fdb5c306cbc2b2e              # double 0.42750177973418857
	.quad	0x3fd9ba54be058250              # double 0.40199774319447545
	.quad	0x3fe0ec4d7c99788a              # double 0.52884554229582759
	.quad	0x3fe0c57e54591aa5              # double 0.52410809015494364
	.quad	0x3fd85689fc55d7a8              # double 0.38028192178841858
	.quad	0x3fef93dba5e4d350              # double 0.98679907227652031
	.quad	0x3febade761bd4008              # double 0.86497849549960026
	.quad	0x3fee48bb70328879              # double 0.94637844003251737
	.quad	0x3fe91dcd578e8922              # double 0.78488795376714315
	.quad	0x3feabf025b600ae4              # double 0.83581655356132644
	.quad	0x3fb73911bdf67370              # double 0.090714558484661145
	.quad	0x3fc0f590a23f9320              # double 0.13249404833109057
	.quad	0x3fd13d2b367007c0              # double 0.26935844722913416
	.quad	0x3fce77c112cf213c              # double 0.23802960794842842
	.quad	0x3fd732005f700f82              # double 0.36242684669581859
	.quad	0x3fedeccb5e3e5425              # double 0.93515556723526017
	.quad	0x3fe0ce02242a2a95              # double 0.52514750541134225
	.quad	0x3fd3c5a01d4aae50              # double 0.30893710003394848
	.quad	0x3fe42db9d7ba3a30              # double 0.63058178076045657
	.quad	0x3febc881410194c6              # double 0.86822569557684726
	.quad	0x3fb03a4184155a58              # double 0.063388914820600717
	.quad	0x3fdc4007a538363e              # double 0.44140807280277616
	.quad	0x3f9ffa77d8cd4c00              # double 0.03122889767412218
	.quad	0x3fefff3de0448ab7              # double 0.99990743448537144
	.quad	0x3fdbd69de48313a2              # double 0.43497416797282018
	.quad	0x3fc0195ece6568dc              # double 0.12577424123703096
	.quad	0x3fbada71219c6ae8              # double 0.10489565916615684
	.quad	0x3fd7149fea8eb806              # double 0.36063383012776773
	.quad	0x3fe82c4e6648ef5e              # double 0.75540847756881724
	.quad	0x3fe714c49da44cea              # double 0.72128515996373932
	.quad	0x3fa30543fa364800              # double 0.037149547856770937
	.quad	0x3fe15f677563211b              # double 0.5428960125655381
	.quad	0x3fda3609e34e5338              # double 0.40954825589988131
	.quad	0x3fb43a51e10e0848              # double 0.079014890141508975
	.quad	0x3feefded14ddc815              # double 0.96849683833557043
	.quad	0x3fe6bfaf27d66c2b              # double 0.71089895039347561
	.quad	0x3febdfc73784259d              # double 0.87106667368896107
	.quad	0x3fd418aef02a6e78              # double 0.31400655225454654
	.quad	0x3fd4a0e571575f7a              # double 0.32232032841192615
	.quad	0x3fea943b2cacb480              # double 0.83059462285531538
	.quad	0x3fe810ef972a1d37              # double 0.75206737064664864
	.quad	0x3fc5fbb55ed13f34              # double 0.17174403314356257
	.quad	0x3fb0891c5d683940              # double 0.064592144779656913
	.quad	0x3fb5f433acb0cf48              # double 0.085757474575811732
	.quad	0x3feee909ee690868              # double 0.96594711842068381
	.quad	0x3fd6e9f7680954b4              # double 0.35803017768678136
	.quad	0x3fd7502b5c407266              # double 0.36426815041503458
	.quad	0x3fdb73d13476feaa              # double 0.4289439213134566
	.quad	0x3fecf72441607719              # double 0.9051686550990069
	.quad	0x3fe42ce3bc54847e              # double 0.63047968657714626
	.quad	0x3feb0b15b6763c1b              # double 0.84510312687951072
	.quad	0x3fe26b44e5d03654              # double 0.57559437642494027
	.quad	0x3feff782272a4e7e              # double 0.99896342896904833
	.quad	0x3fedea9db4af24df              # double 0.93488965310930527
	.quad	0x3feeaa99e5640b24              # double 0.95832533648385664
	.quad	0x3fea35e513efd413              # double 0.81907895940696773
	.quad	0x3f92dd3b06730cc0              # double 0.018422052639618824
	.quad	0x3fe006f5e7997a69              # double 0.50084967836648986
	.quad	0x3fa4026e47030b30              # double 0.039081045311397111
	.quad	0x3fe0d0255b32c42b              # double 0.52540843784493541
	.quad	0x3fee080438fd4aa5              # double 0.93847857599969997
	.quad	0x3fe8654350a4d67f              # double 0.76236119986306494
	.quad	0x3fec4a06d8102c29              # double 0.88403646659697188
	.quad	0x3fe0fe1c45532b62              # double 0.53101933994308248
	.quad	0x3fcd0ee45dee95a4              # double 0.22701696955225004
	.quad	0x3fdf531b13fc6c16              # double 0.48944737388382131
	.quad	0x3fe30405cfee2745              # double 0.59424105273613093
	.quad	0x3fd03aca0893b718              # double 0.25358820760344392
	.quad	0x3fe34c7dfc7b3a24              # double 0.60308741867794824
	.quad	0x3fd4c1a66f1c7f82              # double 0.32431946612086204
	.quad	0x3fd33a51de6cde94              # double 0.30043455811708353
	.quad	0x3fd1996c772994d6              # double 0.27498923909145156
	.quad	0x3fdeba637c3bdbc2              # double 0.480126258203594
	.quad	0x3febbbe26aabdf2e              # double 0.86668511232617162
	.quad	0x3fee12e1b6d106b2              # double 0.9398048945078783
	.quad	0x3fb8a9123b976480              # double 0.09632982210986718
	.quad	0x3fca900908a136a8              # double 0.20752060815214191
	.quad	0x3feb0b024b5f262a              # double 0.84509386750250326
	.quad	0x3fccb46ed422cb5c              # double 0.22425637586783409
	.quad	0x3f69c46560331600              # double 0.0031454067226117655
	.quad	0x3fe6752ae7ce842c              # double 0.70180268549677782
	.quad	0x3fd5e0d017acf0c8              # double 0.3418464881140264
	.quad	0x3fd0329c9275c180              # double 0.25308908751232906
	.quad	0x3fe2011f36cb65ae              # double 0.56263695432715166
	.quad	0x3fd2a1d0c75fd096              # double 0.29112643690246764
	.quad	0x3fe0e96fb0f16a2d              # double 0.52849564131913029
	.quad	0x3fddea13b55cd232              # double 0.46741192542257004
	.quad	0x3fe9433a23656370              # double 0.78945643342295391
	.quad	0x3fee21833c3cebf4              # double 0.94159089818219721
	.quad	0x3fbcee3f0ff3aca8              # double 0.11301035060357612
	.quad	0x3fe1434dd3f67b6f              # double 0.5394658222102019
	.quad	0x3fe6f81de674a300              # double 0.71778769503461604
	.quad	0x3fe74c9b2fc81ca3              # double 0.72810134250984893
	.quad	0x3fe1610adc5e7b5e              # double 0.54309599915346118
	.quad	0x3fcd338052768f98              # double 0.2281341936733241
	.quad	0x3fd410cae02af5fa              # double 0.31352493182552588
	.quad	0x3fe88c663f6f614d              # double 0.76713859929717787
	.quad	0x3fb8c7fe10ed8738              # double 0.096801642544531386
	.quad	0x3fc192c9f1fd47e0              # double 0.13729214015853497
	.quad	0x3fe360056f6f2ed8              # double 0.60547134174836525
	.quad	0x3fec4b04bf047e28              # double 0.88415753658404572
	.quad	0x3fe4e114f9940b98              # double 0.65247582193147746
	.quad	0x3fe841147f95c306              # double 0.7579443447012586
	.quad	0x3fd88acf5b5ac618              # double 0.38347228928896149
	.quad	0x3fb61789f3e86930              # double 0.086296674773994608
	.quad	0x3fdef08a3788da40              # double 0.48343139098452426
	.quad	0x3fed2ad8ccbc82f3              # double 0.91148033130238415
	.quad	0x3fe8b4c14bf14514              # double 0.77206482727538849
	.quad	0x3fee315136e7067d              # double 0.94352017138608313
	.quad	0x3fd521b1c1047e38              # double 0.33018154000635347
	.quad	0x3fe9c1b8f93f0a89              # double 0.80489777260693629
	.quad	0x3fe9c1870154f4b1              # double 0.80487394580963756
	.quad	0x3fd5d2da852e9e1c              # double 0.34099448209824046
	.quad	0x3fd320c764fba520              # double 0.29887566434497792
	.quad	0x3fd16374d2d0db56              # double 0.27169533336148299
	.quad	0x3fae2e30cc199bf0              # double 0.058946156420283446
	.quad	0x3fdc942476d4d4b6              # double 0.44654189686418577
	.quad	0x3fe08b5c6937556e              # double 0.51701183843640108
	.quad	0x3fd812e6de7eb0f6              # double 0.37615367630020502
	.quad	0x3fe5cbf1275431d9              # double 0.68114526444838497
	.quad	0x3fe2df5acf71cc9d              # double 0.58976498142728284
	.quad	0x3fe26a5af90ce0c2              # double 0.57548283236157993
	.quad	0x3fd44d5658fbdc76              # double 0.31722029390170492
	.quad	0x3fe81c444d398c2f              # double 0.75345053751914814
	.quad	0x3fe5c58a355e92c4              # double 0.68036375449863629
	.quad	0x3fed67927b97eea9              # double 0.91889309062340374
	.quad	0x3fe1affd8ead6027              # double 0.55273321024561006
	.quad	0x3fe4903ef0599eee              # double 0.64260813659072169
	.quad	0x3fe079cae55c4f24              # double 0.51486725613583362
	.quad	0x3fe6bb1ad91f6ed4              # double 0.71033995062631528
	.quad	0x3fe9aa887624b0ef              # double 0.80206702303760646
	.quad	0x3fce372c60f2948c              # double 0.23605875715034974
	.quad	0x3fe2ac80c8bc1bab              # double 0.58355750280394625
	.quad	0x3fba54a1733251b0              # double 0.10285386145034781
	.quad	0x3fc2aed90e4bdb38              # double 0.14596093366682239
	.quad	0x3fd42ca54488b68a              # double 0.31522494976784599
	.quad	0x3fcb640cafbbcaf0              # double 0.21399077015629286
	.quad	0x3fd491b3602ef012              # double 0.32139286415963497
	.quad	0x3fd17fcce9a973d4              # double 0.27342531984851104
	.quad	0x3fc2b82a816bd810              # double 0.14624530143163428
	.quad	0x3fd9e120be339012              # double 0.40436571668965471
	.quad	0x3fd273659c8a14f8              # double 0.28829326903389996
	.quad	0x3fd4fa35615eef94              # double 0.32777151593085674
	.quad	0x3fe5f934adbb082f              # double 0.68667062694317405
	.quad	0x3fe6c4bd51e56b15              # double 0.71151605601639523
	.quad	0x3fd60f141e05a9e8              # double 0.34467032367561368
	.quad	0x3fe615c501140509              # double 0.69015741549097342
	.quad	0x3f94d384297ad920              # double 0.020338120490770994
	.quad	0x3fcbc7ba49b0da54              # double 0.21703270528969887
	.quad	0x3fc33139573bb7d8              # double 0.14993969687878805
	.quad	0x3fd08e4c62d4face              # double 0.25868520404393969
	.quad	0x3fd0b7d443261ed0              # double 0.2612200408698131
	.quad	0x3fe90cb25474b7c4              # double 0.7827998780755867
	.quad	0x3fe0cd20409c2e18              # double 0.5250397931972115
	.quad	0x3fe0825786894344              # double 0.51591087605093167
	.quad	0x3fe9ff9f0102b49f              # double 0.81245374867798492
	.quad	0x3fda5b0d75b19c9c              # double 0.41180740827116735
	.quad	0x3fc920ed51257f50              # double 0.19631735288839502
	.quad	0x3fe6a1713fae54d2              # double 0.70720732152644872
	.quad	0x3fe54d32fa6203b5              # double 0.66567372229484667
	.quad	0x3feced97be8f1498              # double 0.90400302141701427
	.quad	0x3fbf3799efbfeef8              # double 0.12194215873017444
	.quad	0x3fc3e112baf06b24              # double 0.15530618789565509
	.quad	0x3fe593d859fa69dd              # double 0.67429750036108838
	.quad	0x3fe66c9869870825              # double 0.7007562695582733
	.quad	0x3fd82724f99d8328              # double 0.37738918663494525
	.quad	0x3fe4736ed6ea9558              # double 0.63909093833778297
	.quad	0x3fb1fa8079f11968              # double 0.070228605051942616
	.quad	0x3fe059c10c642e8a              # double 0.51095631046469348
	.quad	0x3fec12a302c6984e              # double 0.87727499525204578
	.quad	0x3fc9b7747f0297a4              # double 0.20091110421816183
	.quad	0x3fd768a137c40a78              # double 0.36576109357716957
	.quad	0x3fe063f09da9bfd7              # double 0.51219969552584643
	.quad	0x3fbdd6365df384f0              # double 0.11654987138492223
	.quad	0x3fd341da9f0d48ce              # double 0.30089440853511185
	.quad	0x3fc23fd693a8d980              # double 0.14257318696918375
	.quad	0x3fd33f1000645448              # double 0.30072402990601121
	.quad	0x3fe2b61b83fb4614              # double 0.58472991731304313
	.quad	0x3fdbd249d5148582              # double 0.43470998581513964
	.quad	0x3feb570979a4c585              # double 0.85437463530085778
	.quad	0x3fd11d0b4873c046              # double 0.26739770961194542
	.quad	0x3fa87c586a926bd0              # double 0.047823679932853858
	.quad	0x3fee83b6c6ec59b9              # double 0.95357836582370858
	.quad	0x3fed2f1eaa0a47f2              # double 0.91200192652672585
	.quad	0x3febe721fac036bc              # double 0.87196444487354751
	.quad	0x3fe1510356caa504              # double 0.54113928748589091
	.quad	0x3fcad78d69f3b460              # double 0.20970313714443289
	.quad	0x3fd7008826c48396              # double 0.35940746103192944
	.quad	0x3fe94df4d60297b1              # double 0.79076616095402674
	.quad	0x3fa102e87a53b170              # double 0.033225312168584931
	.quad	0x3fed539d8f37dc75              # double 0.91645696613603767
	.quad	0x3fe0c7b21ff724f7              # double 0.52437692874187192
	.quad	0x3fddb62241eb775e              # double 0.46424156606177813
	.quad	0x3fe0a1e6c944032d              # double 0.51976336774541709
	.quad	0x3fef544928f6ef77              # double 0.97903879166504637
	.quad	0x3fd97906fd6ed1f8              # double 0.39801192044549749
	.quad	0x3fac3276fda39d70              # double 0.055072515928084154
	.quad	0x3fec05e32444306c              # double 0.87571866114877883
	.quad	0x3fdadeccaf90b6ec              # double 0.4198486055855557
	.quad	0x3fefe93b8379a8fb              # double 0.99722076109654211
	.quad	0x3fc29ecf404c3624              # double 0.14547148360763729
	.quad	0x3fa1d505d4302b60              # double 0.034828359748721338
	.quad	0x3fc28c289c544c14              # double 0.14490230210557853
	.quad	0x3fe9803c96cd1b5e              # double 0.79690389111861371
	.quad	0x3fde6a69125f1806              # double 0.47524477762306139
	.quad	0x3fe037adbc88852b              # double 0.50679671118647229
	.quad	0x3fde9462430ec9d8              # double 0.47780663059816453
	.quad	0x3fd03cf08db349ea              # double 0.25371946180271598
	.quad	0x3fe3c68c603aca04              # double 0.61798685831882993
	.quad	0x3fe72171d926cee3              # double 0.7228326073877408
	.quad	0x3fd81e06093a5e92              # double 0.37683249379322448
	.quad	0x3fe3f65ad8329e8d              # double 0.62382261491889468
	.quad	0x3fee1aceabf62164              # double 0.94077237688274495
	.quad	0x3fc5267aad913624              # double 0.16523679232561606
	.quad	0x3fb821adc7a5f7e0              # double 0.094263898126853984
	.quad	0x3f89689cc04af900              # double 0.012406563394844472
	.quad	0x3fe76e65a13c6103              # double 0.73222619525316224
	.quad	0x3fe01637851635f4              # double 0.50271202081211053
	.quad	0x3fc5a5107558dfd0              # double 0.16909986238328978
	.quad	0x3f904ce11d04faa0              # double 0.015918271442610377
	.quad	0x3fe44dbe52d3246d              # double 0.63449016739572317
	.quad	0x3fe2a3a67c630f8e              # double 0.58247684759452212
	.quad	0x3fed6179460e87c7              # double 0.91814864809952546
	.quad	0x3fb56fe7817eee58              # double 0.083738774409476746
	.quad	0x3f5b65b1db77b400              # double 0.0016721951377534072
	.quad	0x3fe83f92f5979c6b              # double 0.75776050536377448
	.quad	0x3fe9b16ab4741abc              # double 0.80290732617216731
	.quad	0x3fbd032234147a80              # double 0.11332906505092843
	.quad	0x3fe50a2b0d9a2ca7              # double 0.65749123245895624
	.quad	0x3fe8dd10c17714f1              # double 0.7769855288139792
	.quad	0x3fb45cd2f4776680              # double 0.079541382488423906
	.quad	0x3fea838967d078ec              # double 0.82855673099746018
	.quad	0x3fb389218a521b30              # double 0.076311203260144067
	.quad	0x3fe7b58436b3f501              # double 0.74090777095958071
	.quad	0x3fe29f14b7cfac44              # double 0.58191905880574568
	.quad	0x3f9d95cde4ec3400              # double 0.028891770455675925
	.quad	0x3fb50a0bfece1400              # double 0.08218455286812798
	.quad	0x3fc313602055c8e4              # double 0.14902879313337458
	.quad	0x3fe1732b7703126f              # double 0.54530881161242728
	.quad	0x3fe953defe666da2              # double 0.79148816764375263
	.quad	0x3fd06b7ae1228cd6              # double 0.25656005845867236
	.quad	0x3fceb5586540c3dc              # double 0.23990921920770247
	.quad	0x3fe60ab345837c8a              # double 0.68880618645552372
	.quad	0x3fe8774a776805f5              # double 0.76456187554884869
	.quad	0x3fb844dce8e093a0              # double 0.094800764899061196
	.quad	0x3fefb1ae1d3803c9              # double 0.99043946940229787
	.quad	0x3fd4ba1a53312b7a              # double 0.32385881542420913
	.quad	0x3fe592ca61341946              # double 0.67416876778660462
	.quad	0x3fe7170f2b34d30e              # double 0.72156485022296279
	.quad	0x3fcb237f154c3768              # double 0.21202076473167186
	.quad	0x3fbef2478f7f6910              # double 0.12088439229356518
	.quad	0x3fdc8e46d616eec8              # double 0.4461838808744969
	.quad	0x3fe342d7a73d13f9              # double 0.60190947212015466
	.quad	0x3feb48336537986d              # double 0.8525635697267383
	.quad	0x3febcacaeac57bf8              # double 0.86850496152680901
	.quad	0x3fe426058645818a              # double 0.62964130616096381
	.quad	0x3fd8310ba0fe019c              # double 0.37799349519630154
	.quad	0x3fb7ac507cb7af28              # double 0.092473059128391655
	.quad	0x3fd6ff3698e616ea              # double 0.35932698184511358
	.quad	0x3fd07b3d3923c102              # double 0.25752192096753401
	.quad	0x3fd872c3f3fd45c2              # double 0.38200472666821039
	.quad	0x3fd946eacfe395e6              # double 0.39495344449673409
	.quad	0x3fb65477c97c4778              # double 0.087226378145968897
	.quad	0x3fdf4d1c2d9a66d2              # double 0.4890814252226906
	.quad	0x3fea1a9d699b6395              # double 0.81574888826718228
	.quad	0x3feca22b379636f1              # double 0.89479599816124111
	.quad	0x3fef0cba3b12ca0b              # double 0.97030364549419922
	.quad	0x3febb4e4c3fef421              # double 0.86583174019290621
	.quad	0x3fdbd4065149ee78              # double 0.43481595934256445
	.quad	0x3fdece777a0ef710              # double 0.48135172767420986
	.quad	0x3fd227b002c7592c              # double 0.28367233535154202
	.quad	0x3fea656978fdd180              # double 0.82487939482830086
	.quad	0x3fed06759b911a34              # double 0.90703850158826648
	.quad	0x3fd28f108565df70              # double 0.28998196627752915
	.quad	0x3fe833a1c96199d8              # double 0.75630273182178609
	.quad	0x3fc5ec32ed5aa950              # double 0.17127071942861471
	.quad	0x3fc7a1c7a1547540              # double 0.18462462785184108
	.quad	0x3fee2a37baf328ce              # double 0.94265352738991637
	.quad	0x3fe241f49f9bbd38              # double 0.57055121587283164
	.quad	0x3fe5c6cce343d383              # double 0.680517619969223
	.quad	0x3fe54b3fac01a856              # double 0.66543563456549282
	.quad	0x3fcf82ff11f43ef0              # double 0.24618519188560795
	.quad	0x3fe99a97a593844d              # double 0.80012113894566428
	.quad	0x3fe50ba66ab83c1e              # double 0.65767212718663237
	.quad	0x3f8c149062547040              # double 0.013711097718037135
	.quad	0x3fe998c31755b072              # double 0.79989771421015932
	.quad	0x3feed88ac252a59f              # double 0.96393335298232674
	.quad	0x3fdcda2521fecb04              # double 0.45081451721050336
	.quad	0x3f8a6cc210285480              # double 0.01290275203522584
	.quad	0x3feccd29938e2a83              # double 0.9000442392292175
	.quad	0x3fb1846de274ce88              # double 0.068426959788491115
	.quad	0x3fd50ea76735b734              # double 0.3290194042118515
	.quad	0x3fe0842f2674aefc              # double 0.51613576422593566
	.quad	0x3fe2fae439bd9e55              # double 0.59312640454749987
	.quad	0x3fe3202c8688599e              # double 0.59767748142148824
	.quad	0x3fea7f62688ccd90              # double 0.82804985446857593
	.quad	0x3fbe0de8a48db9b0              # double 0.1173997308485244
	.quad	0x3fe13a47eef48026              # double 0.53836437865175379
	.quad	0x3fe2678c83c786e9              # double 0.57514024484791293
	.quad	0x3febca35dde1e83d              # double 0.86843388878265382
	.quad	0x3fb554783e5c26a0              # double 0.08332015535793369
	.quad	0x3fe7433d3e59ea6a              # double 0.72695791414237232
	.quad	0x3fe422d6756651f1              # double 0.62925265245081452
	.quad	0x3feaf98359185c4e              # double 0.84295813943288933
	.quad	0x3feab0996fb95f78              # double 0.83405753918758219
	.quad	0x3fe28f1ca46094f0              # double 0.57996971230445915
	.quad	0x3fd30a5b9900835e              # double 0.297507190147419
	.quad	0x3fe0243b776973f1              # double 0.50442288706437755
	.quad	0x3fdd38883010d0e2              # double 0.45657543844141746
	.quad	0x3fd059b7e1e817b6              # double 0.25547596989815291
	.quad	0x3fca9109f182fa54              # double 0.20755123417434851
	.quad	0x3feaf174a71661b6              # double 0.84197456964743966
	.quad	0x3fe2a0f2bb98b8bb              # double 0.58214699401812398
	.quad	0x3fc09e88b1fd8498              # double 0.12983807269032321
	.quad	0x3fb3e0c60720e5f0              # double 0.077648522129400765
	.quad	0x3feb64b8bbf548d4              # double 0.85604511938643179
	.quad	0x3fba0b252ddf5720              # double 0.10173256273205
	.quad	0x3fead652e1d55b07              # double 0.83866256816949736
	.quad	0x3fb56042c52f84b0              # double 0.083500073567409627
	.quad	0x3fe93de1792266b2              # double 0.7888038030534601
	.quad	0x3fe09ba5feebd5df              # double 0.51900005139640004
	.quad	0x3fcded9c7a2220e0              # double 0.2338138195375512
	.quad	0x3fe7304dae4ce575              # double 0.72464641612093195
	.quad	0x3fecfc7d4f9130ec              # double 0.90582147160014647
	.quad	0x3feb30631122a240              # double 0.84965661379562363
	.quad	0x3fed174f58e88232              # double 0.90909545292749372
	.quad	0x3fe4517b4323e180              # double 0.63494647134125159
	.quad	0x3fcc128dfaeab400              # double 0.21931624175832098
	.quad	0x3fa9df6bf5dac8a0              # double 0.050532697450209385
	.quad	0x3fe2908419052cb3              # double 0.58014111410866176
	.quad	0x3f84f20c81f1e240              # double 0.01022729655800092
	.quad	0x3fe64008a0e8a6ca              # double 0.6953166144132521
	.quad	0x3fd254e99f35b0a6              # double 0.28643265292954323
	.quad	0x3fa7deb7ed1e6e20              # double 0.046621082015203763
	.quad	0x3fed5d89cd34ac94              # double 0.91766824797868418
	.quad	0x3fd593cc7af3e60e              # double 0.33714591986753895
	.quad	0x3fdf378abbf7f73e              # double 0.48776501041708176
	.quad	0x3feda504b6d3a382              # double 0.9263938494524242
	.quad	0x3fdca6dcac4d2240              # double 0.44768444849299627
	.quad	0x3fd23f2cdfc1afa0              # double 0.2851059136507903
	.quad	0x3fdab8c0f8d7389c              # double 0.41752647686815592
	.quad	0x3fcf8045eefd7ad8              # double 0.24610208672944256
	.quad	0x3fe87d1010c049c8              # double 0.76526644965843449
	.quad	0x3fe2405dd9c275a1              # double 0.57035725146458927
	.quad	0x3fe6b80b654ad176              # double 0.70996637138027441
	.quad	0x3fdf9ac31c2db6f2              # double 0.49382093192876575
	.quad	0x3fe930deccb84a7e              # double 0.78721561416962493
	.quad	0x3fc668d93a944ac4              # double 0.17507472381892886
	.quad	0x3fc996f7288d3520              # double 0.19991960029657552
	.quad	0x3fe7316fd4529e5e              # double 0.72478476971896177
	.quad	0x3fb5c916a4537e50              # double 0.08509961616390993
	.quad	0x3fe74edf1bb9c312              # double 0.72837787070429472
	.quad	0x3fe510d6e388be34              # double 0.65830559196724048
	.quad	0x3f8bf3b644ff5a80              # double 0.013648437481532882
	.quad	0x3fde5eaf344b5230              # double 0.47452907664163302
	.quad	0x3fd8342d1d5af3c4              # double 0.37818458430029644
	.quad	0x3feb3a5cd8b90030              # double 0.85087435082096441
	.quad	0x3fd09540756c1d08              # double 0.259109606428368
	.quad	0x3fe05c1454e7469d              # double 0.51124016363810976
	.quad	0x3fd6f88e592e4ba6              # double 0.35892065724436362
	.quad	0x3fe20bd5e9535279              # double 0.56394477435476553
	.quad	0x3fc39501237df5e8              # double 0.15298475487718055
	.quad	0x3f936745aa2bcda0              # double 0.018948639403743806
	.quad	0x3feac708fa3a56d7              # double 0.83679627297052661
	.quad	0x3fa716269c4e6e30              # double 0.045090872364394463
	.quad	0x3fe546e2309e4758              # double 0.66490277763135008
	.quad	0x3fe41c20ceb590c0              # double 0.62843361256502561
	.quad	0x3fd5a55c6dbf3c92              # double 0.33821783750040268
	.quad	0x3fe1e0013712767a              # double 0.55859432941697595
	.quad	0x3fde8623091310c4              # double 0.47693706403903158
	.quad	0x3fc05a288c1706c0              # double 0.12775141563729697
	.quad	0x3fd21610fdb3c25c              # double 0.28259682441333722
	.quad	0x3fe1df7152829bb1              # double 0.5585257159735787
	.quad	0x3fef8c8d1fccbb27              # double 0.9859071370209208
	.quad	0x3fb63e56c4ad8bf8              # double 0.086888716713971692
	.quad	0x3feb216de68ba503              # double 0.84783072498717649
	.quad	0x3fb3e8c7d2eb3c48              # double 0.077770699495190887
	.quad	0x3fdbac52bf42c168              # double 0.43239277532395315
	.quad	0x3fd2f6235d3b0900              # double 0.29627307991553664
	.quad	0x3fc7f834d5eaf454              # double 0.18726215787129041
	.quad	0x3fd354faeeecd8ee              # double 0.3020617802861939
	.quad	0x3fe97698b4049666              # double 0.79572711143255215
	.quad	0x3fdb885df9bda6dc              # double 0.43019818676712673
	.quad	0x3feec9a5cac162df              # double 0.96211518860499356
	.quad	0x3fe2c560e28073b7              # double 0.58659404982210261
	.quad	0x3fe8345948b77104              # double 0.75639023020224316
	.quad	0x3feb87c56a0883ea              # double 0.86032362661000872
	.quad	0x3fe484e584d84d21              # double 0.64122272440218719
	.quad	0x3fab43d714295630              # double 0.053251954280011282
	.quad	0x3fac5243cccc5b40              # double 0.05531513094881868
	.quad	0x3fd51c53ba5d7714              # double 0.32985394668308854
	.quad	0x3fc8ce9c7eff8774              # double 0.19380527688104687
	.quad	0x3fe25a2d837711a1              # double 0.57350803066997369
	.quad	0x3fea6fa2d3c9dc4e              # double 0.82612744679398431
	.quad	0x3fd8646852aa571e              # double 0.38112838814537209
	.quad	0x3fd8d8cddd852d94              # double 0.3882326758655037
	.quad	0x3fdc163db0d5028a              # double 0.4388574816585239
	.quad	0x3fda36d37b8608d2              # double 0.40959631979798161
	.quad	0x3fde0d9b63f883aa              # double 0.46958050501603543
	.quad	0x3fe0c713bbdc8c35              # double 0.52430140201284436
	.quad	0x3fc49879fe4d9a1c              # double 0.16090321461815982
	.quad	0x3fa2e1fba5a1aff0              # double 0.036880363434505514
	.quad	0x3fd6fe70130409e2              # double 0.35927965027818065
	.quad	0x3fd8aa17c20ba454              # double 0.38538164090875182
	.quad	0x3fd76983304d55e6              # double 0.36581496922494094
	.quad	0x3fee1033503a4352              # double 0.9394775931305992
	.quad	0x3fe9f75dd8bf4c95              # double 0.81144611676644962
	.quad	0x3fc9916af3480f70              # double 0.19975029829958713
	.quad	0x3fdda5c172a37610              # double 0.46324192233245842
	.quad	0x3fd34120acbb7cfc              # double 0.30085007542034226
	.quad	0x3fb8bcaf06adaf70              # double 0.096629084711535417
	.quad	0x3fecba63788347bf              # double 0.89775250947626961
	.quad	0x3fe54af71bd4a4df              # double 0.66540103374168413
	.quad	0x3fe01359e371f17f              # double 0.5023621980940759
	.quad	0x3fd4939f0a0b1748              # double 0.32151008587640151
	.quad	0x3fd7b0260525726c              # double 0.37012625219884998
	.quad	0x3fe5ac225e38fb3b              # double 0.67726248171661696
	.quad	0x3fb084582a02cda0              # double 0.064519415146426784
	.quad	0x3fdad90574f3c49e              # double 0.41949592991938711
	.quad	0x3fe5835426f2bea5              # double 0.67228133780550492
	.quad	0x3fde108f4a20e3fa              # double 0.46976072539433711
	.quad	0x3f73eb0783b3c500              # double 0.0048628133329071677
	.quad	0x3fe6fd1f1f554a7d              # double 0.7183986293769774
	.quad	0x3fef1167cf47ecc7              # double 0.97087469563066342
	.quad	0x3fbf5540a4a7a668              # double 0.12239460010428049
	.quad	0x3fec0eea146ceabb              # double 0.87682060231539738
	.quad	0x3feb1595464c1764              # double 0.84638465623787029
	.quad	0x3fdd0185ce877f2a              # double 0.45321793717265513
	.quad	0x3fd4ea9d668d6c98              # double 0.32681975378881978
	.quad	0x3f971eeacb6f5fa0              # double 0.022578877131166686
	.quad	0x3fcb4b7e47186b68              # double 0.21324137183622871
	.quad	0x3fdb632abf5ee3a8              # double 0.42792767227688921
	.quad	0x3fd77520775570d2              # double 0.3665238538139991
	.quad	0x3fb0c24f03e1b8e8              # double 0.065464914748847414
	.quad	0x3fd02af11c33b152              # double 0.25262096170515236
	.quad	0x3fec826f70307295              # double 0.89092227851831984
	.quad	0x3fed54e0b0f03fa3              # double 0.91661104734702226
	.quad	0x3fc284d547e879fc              # double 0.14467874537599801
	.quad	0x3fbf970500aece58              # double 0.12339812533064654
	.quad	0x3fed362decbc1908              # double 0.91286369549996582
	.quad	0x3fed5f57fb9c73b0              # double 0.91788863318253355
	.quad	0x3fee43a89ff1a232              # double 0.94575911749877251
	.quad	0x3fd6912701b2d290              # double 0.35260939756271004
	.quad	0x3fdc7539027796be              # double 0.44465470543796559
	.quad	0x3fe5f95b2e79f985              # double 0.68668898656305599
	.quad	0x3fe79f09de5c53b7              # double 0.73816388540091438
	.quad	0x3fe7ee02ffef426f              # double 0.74780416476467149
	.quad	0x3fdea1530a319d30              # double 0.47859645839203591
	.quad	0x3fe6a77fe6675cbe              # double 0.70794672966703565
	.quad	0x3fdac1a814eccd9e              # double 0.41806985896547555
	.quad	0x3fe723c80530230f              # double 0.72311783803260876
	.quad	0x3fb33df2446d4940              # double 0.075163976388727072
	.quad	0x3fe67d7b7b1a820a              # double 0.70281766933118317
	.quad	0x3f90cb0a0afc78a0              # double 0.016399533196015725
	.quad	0x3fe1a77a4daf9967              # double 0.55169406102212981
	.quad	0x3fd018eee15c78e4              # double 0.25152179725581747
	.quad	0x3fc6a62cba049dcc              # double 0.17694624979888685
	.quad	0x3fc8cc49aec1f474              # double 0.1937343695935031
	.quad	0x3fdfa993cf7c626c              # double 0.49472518217365891
	.quad	0x3fb513e4a4f9c180              # double 0.082334795262573479
	.quad	0x3fd4e74212bb96c8              # double 0.32661487416622181
	.quad	0x3fec41aa4707cfcb              # double 0.88301576493403766
	.quad	0x3fc1ee2fc10c76d0              # double 0.14008137632565942
	.quad	0x3fe73c1927eeab53              # double 0.72608621405866314
	.quad	0x3fcf9e0be2eb8dc8              # double 0.24701069431385592
	.quad	0x3fe08dcc1f24c636              # double 0.51730924685234103
	.quad	0x3fd3c467bd1ae4be              # double 0.30886262385645213
	.quad	0x3fb28c8184bc7f28              # double 0.072456450373007741
	.quad	0x3feca0cbfee76501              # double 0.89462852273860005
	.quad	0x3fec87e0649143da              # double 0.89158649103239473
	.quad	0x3fd4f62929227c96              # double 0.32752446190893048
	.quad	0x3fd8c89fb6ed617c              # double 0.38724511016837204
	.quad	0x3feb93de80560b30              # double 0.86180043283125052
	.quad	0x3fde02caa594f206              # double 0.46892038507556355
	.quad	0x3fee7813c9a4b3b2              # double 0.95215787299604515
	.quad	0x3feeb6726d9dd7e8              # double 0.95977136048781819
	.quad	0x3fdbab430ae92a8a              # double 0.43232799592502913
	.quad	0x3fe62cdefefc1946              # double 0.69297742654524863
	.quad	0x3fe4202306c9f9c7              # double 0.62892295194597458
	.quad	0x3feed2a8d58db4cc              # double 0.96321527204204349
	.quad	0x3fcb906a92ad3f28              # double 0.21534473573637425
	.quad	0x3fecc803a9714d8e              # double 0.89941580862289228
	.quad	0x3fd686fe80c41324              # double 0.3519893891791972
	.quad	0x3fd7ee01d692aa18              # double 0.37390180544267215
	.quad	0x3fe54fc409039312              # double 0.66598703156032202
	.quad	0x3fa3d2af7acd6ca0              # double 0.038716777554065773
	.quad	0x3fe5ebc6663595eb              # double 0.68503112757451612
	.quad	0x3fef0480925804da              # double 0.96929958899286395
	.quad	0x3fc14919324fc518              # double 0.13504328686352873
	.quad	0x3fe238d2945aa2b0              # double 0.56943634963416478
	.quad	0x3feb89d02a30b314              # double 0.86057289352683818
	.quad	0x3fd8f0f4cb8f0ca6              # double 0.38970680121219414
	.quad	0x3fd757d0c203e86c              # double 0.36473483034899945
	.quad	0x3fc14ff656de9ba4              # double 0.13525275460889674
	.quad	0x3fe78c5aa082e0a3              # double 0.73588305806972121
	.quad	0x3fd592d38c775fb8              # double 0.3370865699521306
	.quad	0x3fa924a9f1253ae0              # double 0.049107847868631316
	.quad	0x3f919d161d0ef700              # double 0.017200799487674168
	.quad	0x3fdcfcb0029a3586              # double 0.45292282346857637
	.quad	0x3fd3fa5b8281f8f0              # double 0.31215560669796982
	.quad	0x3fe492fa1807c529              # double 0.64294151967456969
	.quad	0x3fe074b574c6fe7c              # double 0.51424668129034456
	.quad	0x3feaa363614e511c              # double 0.83244484906257154
	.quad	0x3fd32875c3504938              # double 0.29934448312373574
	.quad	0x3fe97b122c427bfc              # double 0.79627331394647127
	.quad	0x3fcaab210893d0c4              # double 0.20834744376009529
	.quad	0x3fdf40d45525b950              # double 0.48833187403842704
	.quad	0x3f60bd0a24b73c00              # double 0.0020432661164941912
	.quad	0x3fee705b6611c888              # double 0.95121545730059242
	.quad	0x3fb731eca28cec78              # double 0.090605535206963128
	.quad	0x3fc348cf61fb8244              # double 0.15065948757457381
	.quad	0x3fb8b8a87a3d9b18              # double 0.096567659229190972
	.quad	0x3fe406effdd86c94              # double 0.62584685877972612
	.quad	0x3faf15ac882db970              # double 0.060712234137883736
	.quad	0x3fe1abfdfb31b1ac              # double 0.55224513112402951
	.quad	0x3fdb27ab708eeeb8              # double 0.42429624549889011
	.quad	0x3fda9b9aee1285ae              # double 0.41574738740208772
	.quad	0x3fd2dc4f01f2e27a              # double 0.29469657125768089
	.quad	0x3fddb42fb75c9d24              # double 0.46412270456717608
	.quad	0x3fe37309b713633a              # double 0.60779271847704952
	.quad	0x3fef81ebb4d0b814              # double 0.98460946383943559
	.quad	0x3fddc23ac6bf9022              # double 0.46497983368885987
	.quad	0x3fdd955acff124fa              # double 0.46224088961442045
	.quad	0x3fd4751bafae58e6              # double 0.31964771419860794
	.quad	0x3fd77e10c1c92796              # double 0.36706942486181882
	.quad	0x3fec00718ca36b22              # double 0.87505414455822383
	.quad	0x3fd4750b98ae761a              # double 0.3196438780813381
	.quad	0x3feb544f6c7b35bb              # double 0.85404177844764406
	.quad	0x3fc61eb12e724ac0              # double 0.17281164901631563
	.quad	0x3fedd5a59b67338b              # double 0.93232994415449022
	.quad	0x3fe1839fd33355cd              # double 0.54731742143729323
	.quad	0x3fed2a19c4ec87b5              # double 0.91138924085338735
	.quad	0x3fd5930081b7c000              # double 0.33709728877784073
	.quad	0x3fc8e0f2f70912b8              # double 0.19436490118291316
	.quad	0x3fe16e43068b3eb5              # double 0.54470969465361085
	.quad	0x3fe9fd4f3ef62c12              # double 0.81217157647313543
	.quad	0x3fee73a04b12ab9c              # double 0.95161451971704336
	.quad	0x3fce9f0f842e2044              # double 0.23922914461241096
	.quad	0x3fc684a81c97e904              # double 0.17592336078798365
	.quad	0x3fb5c57f29f82160              # double 0.085044811006928622
	.quad	0x3fecd9088ff99c0d              # double 0.90149334068417064
	.quad	0x3fcec27955943914              # double 0.24030987433111106
	.quad	0x3fd6a281cd861c04              # double 0.35366864271821918
	.quad	0x3fe543367b8357da              # double 0.66445469020504366
	.quad	0x3fb06658354d9508              # double 0.064061654103699905
	.quad	0x3fc0bfabce97b3d0              # double 0.13084933841255841
	.quad	0x3fe12f46a32c43a0              # double 0.5370209872217977
	.quad	0x3fe12e04df897cc8              # double 0.53686755809385378
	.quad	0x3feb6907f67719d6              # double 0.85657117974988739
	.quad	0x3fde756c8ec96600              # double 0.47591699546828181
	.quad	0x3fcfb1f4dc03855c              # double 0.24761830084666314
	.quad	0x3feffca5be8a1168              # double 0.99959075178825873
	.quad	0x3fcf2366e5e8f5c0              # double 0.24326788164209567
	.quad	0x3fb47e6c2a4d5250              # double 0.0800540545727213
	.quad	0x3fe35b8c6a624b3d              # double 0.6049253537952165
	.quad	0x3fdf539d4395f09c              # double 0.48947841262975955
	.quad	0x3faf044524adbbc0              # double 0.060579453208326139
	.quad	0x3fee0d8499c71627              # double 0.93915014300063582
	.quad	0x3fc48af708df6a34              # double 0.1604908746074486
	.quad	0x3fd0b94440e3e260              # double 0.26130777680331185
	.quad	0x3fd6d6f6bcf15b0e              # double 0.35687035037464987
	.quad	0x3fc59ecc985480b4              # double 0.16890866697304363
	.quad	0x3fe2ed29d947c237              # double 0.59145061910209662
	.quad	0x3fe0fd801b0f0dff              # double 0.53094487461970619
	.quad	0x3fe3973b0fa2728c              # double 0.61221077970147197
	.quad	0x3feddab13ec6a8ae              # double 0.93294584523143498
	.quad	0x3fb4a7e74cc52620              # double 0.080687004320815436
	.quad	0x3fe00c18ebd8b3e9              # double 0.50147672714012714
	.quad	0x3fe1f2b770a7073f              # double 0.56087848665649875
	.quad	0x3fdcb2d6b7497fda              # double 0.44841545008784822
	.quad	0x3fd925a73b976906              # double 0.39292317218281914
	.quad	0x3fe1aca2e544e55e              # double 0.55232376841665221
	.quad	0x3fd5a7e37b29f9c4              # double 0.33837210681658925
	.quad	0x3feea460b998f3f5              # double 0.95756565331941934
	.quad	0x3fee584aac09df55              # double 0.9482777938965038
	.quad	0x3f9552666fa753c0              # double 0.020822144093319173
	.quad	0x3fee76075bda7a19              # double 0.95190780582544499
	.quad	0x3fea58f5a72369e4              # double 0.82335932392316779
	.quad	0x3fe78c3f3400c655              # double 0.73586998135415149
	.quad	0x3fdcc1224c1a3bc0              # double 0.44928796226389167
	.quad	0x3fa1f41f771b07c0              # double 0.035065635003334261
	.quad	0x3fe78dccdea5fb63              # double 0.73605960355767441
	.quad	0x3fef82b53ad89735              # double 0.98470555775995782
	.quad	0x3fe15bb6f4020e6f              # double 0.54244563730067152
	.quad	0x3fd2f63dd1cc5daa              # double 0.29627938736072201
	.quad	0x3fcfa05e44bc0968              # double 0.24708155018022215
	.quad	0x3fa3fc4de0be1ba0              # double 0.03903430336418201
	.quad	0x3fd679cf8337aaea              # double 0.35118472875789897
	.quad	0x3fcb646b16942150              # double 0.21400202372047739
	.quad	0x3fefd7faeda92b56              # double 0.99511476915481967
	.quad	0x3fd5bee254faa058              # double 0.33977564142924654
	.quad	0x3fddffb076630ca0              # double 0.46873103677007499
	.quad	0x3fe5a63c89d314d8              # double 0.6765425388226971
	.quad	0x3f86e1bbfae65540              # double 0.011172741503097883
	.quad	0x3fe05c8902dbb897              # double 0.5112958007646452
	.quad	0x3fe8d1df7bea65ca              # double 0.77561926080959975
	.quad	0x3f759b755be73c80              # double 0.005275209840376438
	.quad	0x3fc187632d3a5b28              # double 0.13694419582744755
	.quad	0x3f922192c9faea80              # double 0.017706197336091467
	.quad	0x3fb4866f7d3efd70              # double 0.080176323011064587
	.quad	0x3fe8a9a99d767c08              # double 0.77071076158961294
	.quad	0x3fe46fcaf311dd68              # double 0.63864657854621232
	.quad	0x3fc36bb4d2e45db0              # double 0.15172443673575975
	.quad	0x3feaea32752c7485              # double 0.84108851323584644
	.quad	0x3fe1614733e3d16c              # double 0.54312477240322954
	.quad	0x3fe0320cec362faa              # double 0.50610967764941006
	.quad	0x3fd9fd52af16913a              # double 0.40608660791828621
	.quad	0x3fef7b4237cf32a4              # double 0.98379622364298713
	.quad	0x3fc341f71e265280              # double 0.15045060131219046
	.quad	0x3fef3b031d3cf5d4              # double 0.97595363340922824
	.quad	0x3fe253fc9f5db797              # double 0.57275229574382791
	.quad	0x3fd11fdf38c85dec              # double 0.2675703100698843
	.quad	0x3fe10208d5485c89              # double 0.53149835259218137
	.quad	0x3fe3a5d8da3f0fa9              # double 0.61399500490414483
	.quad	0x3feee68cf5481317              # double 0.96564338594962151
	.quad	0x3fd44f03850fd2c2              # double 0.31732261652295446
	.quad	0x3fec36a12ee1c95f              # double 0.88166865498196134
	.quad	0x3fe2794bb1981231              # double 0.57730660139401924
	.quad	0x3feb8c2a05b03884              # double 0.86085988150604508
	.quad	0x3fe0115042684f7e              # double 0.50211346597869499
	.quad	0x3fef68a0c472b363              # double 0.98152197235831939
	.quad	0x3f8f002fc66f0580              # double 0.015137074702468167
	.quad	0x3fed5197366ecf88              # double 0.91620979911248046
	.quad	0x3fe8e8773ac6599c              # double 0.77837716559843128
	.quad	0x3fefb5376fa4e5d7              # double 0.99087116055960222
	.quad	0x3fdba74d4a6a4f4e              # double 0.43208629862896408
	.quad	0x3fe47f440c9f9e41              # double 0.64053537812737471
	.quad	0x3f9b43d3211af800              # double 0.026625918288793571
	.quad	0x3fe9617c706d2fb4              # double 0.79315015753080908
	.quad	0x3f91993189dd99c0              # double 0.017185949363374808
	.quad	0x3fe989e01be798d2              # double 0.79808049631244615
	.quad	0x3fefd10e01eb54ad              # double 0.99426937460761666
	.quad	0x3fbdfb65b445c120              # double 0.11711726809676692
	.quad	0x3fcb718c8d613330              # double 0.2144027414637093
	.quad	0x3fe2db9eb9d5f599              # double 0.58930908485460798
	.quad	0x3fe940da5ec7b410              # double 0.78916662704216556
	.quad	0x3fe3e219d756ee1e              # double 0.62135021265516222
	.quad	0x3fe5b6494ff289bd              # double 0.67850175490121212
	.quad	0x3fbd18f200c7ac68              # double 0.1136618854431376
	.quad	0x3fe2ec06e4bac4ab              # double 0.591311880814961
	.quad	0x3fe70dbcfda63026              # double 0.72042703190664237
	.quad	0x3fe9e0a72373acdf              # double 0.80867344783964856
	.quad	0x3fc1faaeae1408e4              # double 0.14046271800913879
	.quad	0x3fe914c2892a2b21              # double 0.78378416814789287
	.quad	0x3fd965b1fe63a95a              # double 0.39683198778825146
	.quad	0x3fdea0a8bba2f022              # double 0.47855585407137557
	.quad	0x3fdbd8da578fc45c              # double 0.43511065054832954
	.quad	0x3fb7cf69852cd578              # double 0.093008608830890682
	.quad	0x3fc1e68a4270c740              # double 0.13984802478949554
	.quad	0x3fd5ea470288d5e8              # double 0.34242415664206627
	.quad	0x3fb73fd30a7e5a88              # double 0.090817632734209508
	.quad	0x3fda26b0cd1fdd70              # double 0.40861148864447383
	.quad	0x3fa2b77c33cb0280              # double 0.036556130716694391
	.quad	0x3fe47ad8ffa33f58              # double 0.63999605111346636
	.quad	0x3fe065df7c5aa564              # double 0.51243566787631467
	.quad	0x3fca2816dbca4c14              # double 0.20434842807716846
	.quad	0x3fc5eff3101139dc              # double 0.17138517651115037
	.quad	0x3fd8cacf210ae9b6              # double 0.38737848498172001
	.quad	0x3fe088c21c18e75b              # double 0.51669412124395409
	.quad	0x3fea0d542673e711              # double 0.81412704000760716
	.quad	0x3fefefd10c6436eb              # double 0.99802448673446286
	.quad	0x3fe82860cbe6733b              # double 0.75492896866089809
	.quad	0x3fed5d69b1bd3fb7              # double 0.91765293802926962
	.quad	0x3fcc769b3741c298              # double 0.22236957738961816
	.quad	0x3fe975d89230777f              # double 0.79563549568750591
	.quad	0x3fc806cfc35e04f4              # double 0.18770787276665823
	.quad	0x3fbef246d13fdfb8              # double 0.12088434799795678
	.quad	0x3fe108968983c464              # double 0.53229834421484812
	.quad	0x3fdbb3e72d01c5f0              # double 0.43285540957648916
	.quad	0x3fdbb13a38c67a18              # double 0.43269210380995693
	.quad	0x3fe956d3a32bc221              # double 0.79184896344492384
	.quad	0x3febaaeb1e7e4358              # double 0.8646140666552169
	.quad	0x3fe40688b66d26ce              # double 0.62579761152411506
	.quad	0x3fc78fca96ed1fb4              # double 0.18407566422888311
	.quad	0x3fed355560abd917              # double 0.91276043778524041
	.quad	0x3fc854861a74886c              # double 0.19007946292646538
	.quad	0x3fee0d8ff5f98319              # double 0.93915555993962407
	.quad	0x3fef613dc26e396c              # double 0.9806202695342967
	.quad	0x3fe77543c877181a              # double 0.73306454804765342
	.quad	0x3fe7838958aae8c2              # double 0.73480670278447513
	.quad	0x3fe07e687157a91c              # double 0.51543066155616968
	.quad	0x3feed0bb41ab331c              # double 0.96297991586616005
	.quad	0x3fe80c7877b738b3              # double 0.75152228719686887
	.quad	0x3fe74a7e8e7510ec              # double 0.72784354995431277
	.quad	0x3fef486fa8cfd66d              # double 0.97759230586116319
	.quad	0x3fed3b96759043e3              # double 0.91352389299038028
	.quad	0x3fb92ed9c4e49cb0              # double 0.098371134347518873
	.quad	0x3fd2f569c50e8dee              # double 0.29622883075555151
	.quad	0x3fe02311f92965dd              # double 0.504281031269041
	.quad	0x3fe49ea4f7dc78d3              # double 0.64436577234644188
	.quad	0x3fac88c8809ee730              # double 0.055731073094149486
	.quad	0x3fc59c7ae485e248              # double 0.16883789213513212
	.quad	0x3fc88796e182448c              # double 0.19163785945105294
	.quad	0x3fe0892722bab6b7              # double 0.51674229415012618
	.quad	0x3fc022d5496f3648              # double 0.12606302343049181
	.quad	0x3fe4f2c64e44ab4e              # double 0.65463557516827975
	.quad	0x3fcbda95db1ebe98              # double 0.21760819625113892
	.quad	0x3febc7539b5f686c              # double 0.86808185907581281
	.quad	0x3fe5773b94d84613              # double 0.67080477782491454
	.quad	0x3fe81e76ddd39815              # double 0.75371878934379544
	.quad	0x3febc963ce90f5f3              # double 0.86833372445079104
	.quad	0x3fc14d28b1908d8c              # double 0.13516720457219511
	.quad	0x3fb96561a8f27270              # double 0.099203208681908128
	.quad	0x3fdc00804993764e              # double 0.43753058610113704
	.quad	0x3fb6ac46c9e3ad60              # double 0.088566231049914901
	.quad	0x3fd266189c506d6e              # double 0.28748145356231347
	.quad	0x3fefcdf65e6b2f2b              # double 0.99389189187193005
	.quad	0x3fe67c75bb554323              # double 0.70269285763251721
	.quad	0x3fb5cb7b31a9e6d8              # double 0.085136127114221138
	.quad	0x3fd628787b4be90e              # double 0.34622013130832918
	.quad	0x3fe3a390567abdc9              # double 0.61371628656882493
	.quad	0x3fee1a855ef16d7f              # double 0.94073742431230289
	.quad	0x3fb71cdd15648fe0              # double 0.090284173701149495
	.quad	0x3fb08d59bfbeb0a0              # double 0.064656838715281939
	.quad	0x3fdbf7a16656c6b6              # double 0.43698916429557799
	.quad	0x3fe2403dc7f3d8e9              # double 0.57034195950725775
	.quad	0x3fdc82acd47cf55c              # double 0.44547577620308743
	.quad	0x3fe894da1560c43c              # double 0.76817039657010566
	.quad	0x3fbc750d828d16e8              # double 0.11116108357699839
	.quad	0x3fdc89d72f7f594a              # double 0.44591312063621003
	.quad	0x3fda5200d12289be              # double 0.41125507758456681
	.quad	0x3fc7482d6fb24140              # double 0.18189018205567642
	.quad	0x3fe53f5615e52dc4              # double 0.66398147846614863
	.quad	0x3fd537824ac26974              # double 0.33151299763417019
	.quad	0x3fde2298b21ab4b2              # double 0.470861600809097
	.quad	0x3fd6335e51ee62b2              # double 0.34688528061955559
	.quad	0x3fe55258994d07ff              # double 0.66630201284010571
	.quad	0x3fedb4469d2f8e66              # double 0.92825632763237986
	.quad	0x3fd97e31d471a1b8              # double 0.39832731005165156
	.quad	0x3fe97e1de49801e8              # double 0.79664511344168165
	.quad	0x3fec6e44e8ebefba              # double 0.88846059315209591
	.quad	0x3fe6b7cdc4635073              # double 0.7099369846059872
	.quad	0x3fd6c2c8a3a198d8              # double 0.3556386564217866
	.quad	0x3fc0fd16903d4374              # double 0.13272363703665813
	.quad	0x3fe2252b512e89cb              # double 0.56703725677317018
	.quad	0x3fe67481c6c6a202              # double 0.7017220384923919
	.quad	0x3fd0cc9b16824f88              # double 0.26248814771792484
	.quad	0x3fddec08f4a42676              # double 0.46753143206351611
	.quad	0x3fdfdf88cb461f62              # double 0.49801845408409495
	.quad	0x3fe13ac81019f240              # double 0.53842547554774711
	.quad	0x3fb59ee26c168cb8              # double 0.08445563448781257
	.quad	0x3f8ce5ce503b0440              # double 0.014110194991532876
	.quad	0x3fdc46e6f07d02b0              # double 0.44182752118289681
	.quad	0x3fd658d6a10fcae2              # double 0.34917226532631507
	.quad	0x3fd7d5042f4f874a              # double 0.37237648601705031
	.quad	0x3fd2a00dbcc6ea7a              # double 0.29101890025382426
	.quad	0x3fa9e4f51044e910              # double 0.050574930416091957
	.quad	0x3fda6eeafe42c080              # double 0.41301989393378591
	.quad	0x3fd2f9b390a26c8a              # double 0.29649056553325492
	.quad	0x3feff1077228cd49              # double 0.99817249581102729
	.quad	0x3fb56e12fd07f680              # double 0.083710848593876008
	.quad	0x3fd1f2853e96cff8              # double 0.28042727577417237
	.quad	0x3fbaa356d0b4e8c8              # double 0.10405485720994812
	.quad	0x3fe82b5aac451622              # double 0.75529225965937408
	.quad	0x3feff23672cf5508              # double 0.99831697868162994
	.quad	0x3fe95eb3b0487bf1              # double 0.7928102915792562
	.quad	0x3fc8cdd2d21fb6fc              # double 0.19378123531298985
	.quad	0x3fc7d2b031be73dc              # double 0.18611719540504523
	.quad	0x3fca136b502fd10c              # double 0.20371762671823779
	.quad	0x3fdbe1a426bc6236              # double 0.43564704687881617
	.quad	0x3fda5fe16422ae08              # double 0.41210207728246973
	.quad	0x3fe65dc975b21032              # double 0.69894860255636204
	.quad	0x3fa0300f9a3a4710              # double 0.031616675926796955
	.quad	0x3fe4100ca68999a6              # double 0.62695915724616635
	.quad	0x3fd8d04c1a7ad756              # double 0.38771345697329218
	.quad	0x3fbea5232ee66290              # double 0.11970729727762319
	.quad	0x3fec1236964f9abd              # double 0.87722329480751393
	.quad	0x3fe1407590521769              # double 0.53911855876570514
	.quad	0x3fda139d5455712e              # double 0.40744717822760179
	.quad	0x3fe4dc7727bedc38              # double 0.65191228640367793
	.quad	0x3fd9a36be99dcb88              # double 0.40059945882892878
	.quad	0x3fd703d59623e290              # double 0.35960902845503373
	.quad	0x3fe1528efdb1184d              # double 0.54132794903922277
	.quad	0x3fea287cf9ed7c3c              # double 0.81744240583419225
	.quad	0x3fdffe54bdc490d6              # double 0.49989813358321322
	.quad	0x3fd66bad8a774de6              # double 0.35032213708947635
	.quad	0x3fe65d8090f3d66a              # double 0.6989138442138032
	.quad	0x3fc1c9cf5cf1c6b4              # double 0.13897125280668876
	.quad	0x3fc0ce73165e1704              # double 0.1313003405777452
	.quad	0x3fe5ffb6a592159f              # double 0.68746502244964691
	.quad	0x3fc2434ad30892f8              # double 0.14267859749192957
	.quad	0x3fd3a08922a2f7fe              # double 0.3066733206031812
	.quad	0x3fd6b4446bd2717e              # double 0.35475264100548276
	.quad	0x3fe29c953f4422cf              # double 0.5816141353289711
	.quad	0x3feff3d29a1cf083              # double 0.9985135087986382
	.quad	0x3fd41778e35877f4              # double 0.3139326305553134
	.quad	0x3fc4e3fe1a7f3b54              # double 0.16320778173254757
	.quad	0x3fda0a9ead76e38a              # double 0.40689818324931848
	.quad	0x3fd4dd7c60ce0912              # double 0.32601842359157829
	.quad	0x3fdb536fc93f0e7a              # double 0.42696756985626616
	.quad	0x3fe6c8ef580a0ff4              # double 0.71202819056679667
	.quad	0x3fe982f0cab1e539              # double 0.79723395909164829
	.quad	0x3fd0547a40702a28              # double 0.25515610020434787
	.quad	0x3fc0d8a81a4359d8              # double 0.13161183626534867
	.quad	0x3fed723435dacc2a              # double 0.92019091146938092
	.quad	0x3fd0833b9edfb682              # double 0.25800982012774665
	.quad	0x3fbeb05668b062a8              # double 0.11987819724925919
	.quad	0x3fe38c66457626d4              # double 0.61088861052231858
	.quad	0x3fdeeee65e658418              # double 0.4833312913743284
	.quad	0x3fee3a5c939878eb              # double 0.94462422206177388
	.quad	0x3fc39666940efcc0              # double 0.15302736501141645
	.quad	0x3fe252d19e142446              # double 0.57260971903554814
	.quad	0x3fd54f828aba4ada              # double 0.33297790095927626
	.quad	0x3fe19d1d41bc9f8b              # double 0.55042898978443711
	.quad	0x3f9cb94a8ea67da0              # double 0.028050579983412427
	.quad	0x3fef8aa89a8231d2              # double 0.98567609956222157
	.quad	0x3fc3e95b89adadf0              # double 0.15555900785999155
	.quad	0x3fe702adf43be378              # double 0.7190770883745321
	.quad	0x3fe6b7e4a6363d2a              # double 0.70994789565330518
	.quad	0x3f9df01a57ae45c0              # double 0.029236232377632509
	.quad	0x3fcd392084df15b8              # double 0.22830587852346951
	.quad	0x3fdf84e42717fdf8              # double 0.49248603646989819
	.quad	0x3fc97f9676f1f2cc              # double 0.19920616920344114
	.quad	0x3f8ea42570119700              # double 0.014961521608892081
	.quad	0x3feb409d6eb0f1b1              # double 0.85163756961224213
	.quad	0x3fd59f8f5d60fc48              # double 0.33786377066639206
	.quad	0x3fe1d7899404fdbb              # double 0.5575607195859712
	.quad	0x3fd158649bd75ef0              # double 0.27102008074642381
	.quad	0x3fe8818f1972d2bf              # double 0.76581530542770071
	.quad	0x3fe757844389fe5f              # double 0.72943318549364367
	.quad	0x3fe234aa8fd27b15              # double 0.56892898645660017
	.quad	0x3fa194ebbb2bb4f0              # double 0.034339300725926836
	.quad	0x3fe0c61393432e82              # double 0.52417925607865379
	.quad	0x3fe3332c7c7cc292              # double 0.59999679864820821
	.quad	0x3fef4b1bf75f3010              # double 0.97791860880670534
	.quad	0x3fd2f1d855fd1700              # double 0.29601105115249027
	.quad	0x3fee1056bd2603f1              # double 0.93949448531213708
	.quad	0x3fe436befdc8b75a              # double 0.63168286864468404
	.quad	0x3fed8142a43472ef              # double 0.92202884742036229
	.quad	0x3fcd7809c7d1f9cc              # double 0.23022577530714583
	.quad	0x3fa2c7129f4b2fe0              # double 0.036675054497748993
	.quad	0x3fef10bc074131ce              # double 0.97079278389861101
	.quad	0x3fe66ce858c5c75f              # double 0.70079438532250637
	.quad	0x3fea2414c5d3118d              # double 0.81690443646998434
	.quad	0x3fe690356c5001e7              # double 0.70510359911719156
	.quad	0x3fd47dce9e6a7dd2              # double 0.32017865629492548
	.quad	0x3fb718c553fe0198              # double 0.090221722608481492
	.quad	0x3fe3bd0ac121b9df              # double 0.61682641716998521
	.quad	0x3fe613c39996d747              # double 0.68991260526556963
	.quad	0x3fea971114262cb7              # double 0.8309407609498497
	.quad	0x3fc20c80171fdc14              # double 0.14100648049472453
	.quad	0x3fdd43355fc3d0d6              # double 0.45722708084146058
	.quad	0x3fd895e55dcbada6              # double 0.38414892348984109
	.quad	0x3fe2399c5ea59178              # double 0.56953257070249119
	.quad	0x3fd0ea6e96a82610              # double 0.2643085929163087
	.quad	0x3fd7ff75c33ed6c0              # double 0.3749670416540134
	.quad	0x3fe6814da9f05fbd              # double 0.70328410330966273
	.quad	0x3fe555fe9d3858ae              # double 0.66674738604594608
	.quad	0x3f683ee093eccd00              # double 0.0029596697126180738
	.quad	0x3fbf2191ddbf32f0              # double 0.12160598434202163
	.quad	0x3fb4c04570596850              # double 0.081058826378837212
	.quad	0x3fe8d9b7e9e9b121              # double 0.77657695470910337
	.quad	0x3fe55a155ad96d10              # double 0.66724651092536824
	.quad	0x3febe48084c7c54f              # double 0.87164331372893311
	.quad	0x3fcaabd34c360c58              # double 0.20836869450804119
	.quad	0x3fe151a42e1dd5d7              # double 0.54121598250520264
	.quad	0x3fe5001e51dd8aaa              # double 0.65626445760093088
	.quad	0x3fe223ef476ecaef              # double 0.5668865580722392
	.quad	0x3fe82f76e2cb1b58              # double 0.75579399390776825
	.quad	0x3fc508f3b269bd90              # double 0.16433569156241079
	.quad	0x3fd5866c5611ba1c              # double 0.3363295403022748
	.quad	0x3fdcfe947a87d036              # double 0.45303832975264713
	.quad	0x3fe57ce402588e24              # double 0.67149544199168476
	.quad	0x3fea418f1912854d              # double 0.82050280472700765
	.quad	0x3fc36fa3b1aa08a8              # double 0.15184446501740934
	.quad	0x3fd4669000993ff6              # double 0.31875991877041032
	.quad	0x3fd073a0e22d690e              # double 0.25705740058551008
	.quad	0x3fe1d99882915867              # double 0.55781198026194267
	.quad	0x3fe4f857c9e392a0              # double 0.65531529838024838
	.quad	0x3fd2685376557c6a              # double 0.28761755519912546
	.quad	0x3fa467e8aae8eb40              # double 0.039855261672036679
	.quad	0x3fee704c7d7df09f              # double 0.95120834837100066
	.quad	0x3fe596cf9b1160ad              # double 0.67465954100318515
	.quad	0x3fe10449873e7574              # double 0.53177334227409156
	.quad	0x3fa7d5c7a2c34e00              # double 0.046552885645407827
	.quad	0x3fdbafb88ba15c94              # double 0.43260015140317276
	.quad	0x3fdef64c340cdc2c              # double 0.48378281672507017
	.quad	0x3fe04ae6d705b015              # double 0.50914327618147814
	.quad	0x3fc118a42433ec68              # double 0.1335644890567409
	.quad	0x3fec87815da8a58b              # double 0.89154117863397297
	.quad	0x3fd2e13aee192ea0              # double 0.2949969601802227
	.quad	0x3fe255caeb8b1113              # double 0.57297273640191049
	.quad	0x3fec1b572ec0007d              # double 0.87833747034893828
	.quad	0x3fea7ba083e6ce16              # double 0.82759118806865462
	.quad	0x3fa08295a0e88a70              # double 0.032246280567297059
	.quad	0x3fd3ed79dbe646de              # double 0.31136938547670734
	.quad	0x3fe2b7366f7b9ef0              # double 0.5848648240471146
	.quad	0x3fee397498099508              # double 0.94451360411463358
	.quad	0x3fa309c5caa175b0              # double 0.037183934197610014
	.quad	0x3fe96bde17107caf              # double 0.79441742424741857
	.quad	0x3fedc8f8916e4d88              # double 0.93078258900133992
	.quad	0x3fb744e8c7d92ae8              # double 0.090895222464648762
	.quad	0x3fd4f5587a5ba7a4              # double 0.32747470807100343
	.quad	0x3fdafecd340e633a              # double 0.4218018539773315
	.quad	0x3fe5317c38e3625f              # double 0.6622906790826838
	.quad	0x3fd401ae87f7b69e              # double 0.31260264661873716
	.quad	0x3fcbdd3833b78afc              # double 0.2176885845684281
	.quad	0x3fed9a985d2d59fa              # double 0.92512148092902113
	.quad	0x3f82f91d91aaabc0              # double 0.0092642126158660742
	.quad	0x3fdea5a40c3dcfd0              # double 0.47885991282896345
	.quad	0x3fb5173bda1ed238              # double 0.082385769607591253
	.quad	0x3fcea7bf1494dd48              # double 0.23949421410518767
	.quad	0x3fedf0dc8955275a              # double 0.93565203497676497
	.quad	0x3fcef03d950bdc40              # double 0.24170655992176826
	.quad	0x3fe85c4236b007d4              # double 0.76126204186607049
	.quad	0x3fecf60620645318              # double 0.90503221823255142
	.quad	0x3fdc8faca50e9ec2              # double 0.44626918906076807
	.quad	0x3fdd6c35837c3e5a              # double 0.4597295555149451
	.quad	0x3fe37ff0c1bb395e              # double 0.6093677314582171
	.quad	0x3fefa101dd293f03              # double 0.98840420909434134
	.quad	0x3fd02e99563f5900              # double 0.25284417555430139
	.quad	0x3fd57cc9bcf76d30              # double 0.33574145749817585
	.quad	0x3fdccd21ffc1e3c6              # double 0.45002031303698364
	.quad	0x3fea07867e043215              # double 0.81341862309051527
	.quad	0x3f963052ca444900              # double 0.021668714137441647
	.quad	0x3fe3dc59680e9e59              # double 0.62064810107853952
	.quad	0x3f91d863de18c240              # double 0.017427025252063411
	.quad	0x3fe1240ae0636626              # double 0.5356497175773185
	.quad	0x3f9e1a8d383b1260              # double 0.029398161465694961
	.quad	0x3fd32e61312607ae              # double 0.29970578956283134
	.quad	0x3fe5b3aee6cc0abe              # double 0.67818398549601233
	.quad	0x3fe54a6b23892303              # double 0.66533429089130924
	.quad	0x3fc00cd0c14b1ec4              # double 0.12539109647899782
	.quad	0x3fc446f990cc1878              # double 0.15841598100832122
	.quad	0x3fdc86f7b53cf332              # double 0.44573776911765883
	.quad	0x3fed88dd14a6933b              # double 0.92295698197685938
	.quad	0x3fe70ca42166596f              # double 0.72029310725592477
	.quad	0x3fc7b4cec795dea0              # double 0.1852053141153549
	.quad	0x3fe8df42fafd3198              # double 0.77725361844345553
	.quad	0x3fc2285e0744a5d4              # double 0.14185691218271634
	.quad	0x3fd1996ff190191c              # double 0.27499006834149653
	.quad	0x3fd2c2118c0038e6              # double 0.29309500381431375
	.quad	0x3fd1c8d1d640c2c6              # double 0.27788206027166173
	.quad	0x3febdba4f5f1366a              # double 0.8705620578345592
	.quad	0x3fae23fa6ea22730              # double 0.058868242268614757
	.quad	0x3fddd95636281dde              # double 0.46639018334141535
	.quad	0x3fccd9d4c35ecfe8              # double 0.22539767779892306
	.quad	0x3fc1652935680058              # double 0.13589968784072215
	.quad	0x3fd9fc2a4b643b52              # double 0.40601594316915623
	.quad	0x3fe585fc39b3d8af              # double 0.67260562200569562
	.quad	0x3facf3690cb4d600              # double 0.056544573594162983
	.quad	0x3fd7df46d0b2b996              # double 0.37300272350958019
	.quad	0x3f60cb816962c300              # double 0.0020501639911220115
	.quad	0x3feca80aa354d8fc              # double 0.89551288510008886
	.quad	0x3fd535f876c61dfa              # double 0.33141910170567679
	.quad	0x3fe5359cefc4901c              # double 0.66279455976155388
	.quad	0x3fd9264eeef2c9ea              # double 0.39296315512470292
	.quad	0x3f9ec82e0631c480              # double 0.03006050026710172
	.quad	0x3fb0de48d7fece38              # double 0.065891792996631504
	.quad	0x3fe59972f7afa351              # double 0.67498157859982133
	.quad	0x3fe3ba750c839af0              # double 0.61651089138180559
	.quad	0x3fd07d532caf954c              # double 0.25764922489027664
	.quad	0x3fe21a8900a0301b              # double 0.56573915598119429
	.quad	0x3fe25109fb1f3bfc              # double 0.57239245459811583
	.quad	0x3fd8b890f752a044              # double 0.38626503136265833
	.quad	0x3fb6b87932aa7c48              # double 0.08875234114610564
	.quad	0x3fd15006b0b7eaee              # double 0.27050940759333642
	.quad	0x3feac8dc0fb3d435              # double 0.83701899592290963
	.quad	0x3fa3c9a5b4701680              # double 0.03864782168970482
	.quad	0x3fe397ba5200800b              # double 0.61227146163946722
	.quad	0x3fa177691072f0b0              # double 0.034114154107983352
	.quad	0x3fdefabee1e04fb4              # double 0.48405429895614849
	.quad	0x3fd843279ecc5540              # double 0.3790988016856609
	.quad	0x3fae3d58b061afe0              # double 0.059061786204295919
	.quad	0x3fe24545ff104df5              # double 0.57095622841956006
	.quad	0x3fdf5dd0c7315a44              # double 0.49010104610843919
	.quad	0x3fd1ab83d8498866              # double 0.27609344598579921
	.quad	0x3fe0a978253696ae              # double 0.52068717258653918
	.quad	0x3fe1b6b08e097d53              # double 0.55355098477950049
	.quad	0x3fece6c1e9225eb9              # double 0.90316863569292771
	.quad	0x3feef9b90637796d              # double 0.96798373426626727
	.quad	0x3fe94c99ccab4928              # double 0.7906006810610835
	.quad	0x3fd627399ca30b90              # double 0.34614410683223529
	.quad	0x3fb30dacce2cf348              # double 0.074427414260708535
	.quad	0x3fe8f76c12f60fad              # double 0.78020290091852973
	.quad	0x3fa437ef86b31af0              # double 0.03948925513537016
	.quad	0x3fe5dc179f0b0017              # double 0.68311673224525549
	.quad	0x3fd8e4eade11793c              # double 0.38897201238968981
	.quad	0x3fc7e6d43b602f28              # double 0.18673184298710876
	.quad	0x3fdbe07f6c0a8886              # double 0.43557725478070386
	.quad	0x3fe29baa466a1f27              # double 0.58150209191169189
	.quad	0x3fd23e3a6c1c23ec              # double 0.28504810865029984
	.quad	0x3fbd93f94b5e9640              # double 0.11553915109706114
	.quad	0x3fe42fd6c23b35fc              # double 0.63083970962333025
	.quad	0x3fd69c8989cedd14              # double 0.35330427606409498
	.quad	0x3fe7c21b7a241242              # double 0.74244474273343308
	.quad	0x3fe86fd516b3c0c4              # double 0.76365141328826569
	.quad	0x3fe31ab57fe0ed8d              # double 0.59701037384313482
	.quad	0x3fe1ec4106879375              # double 0.56008960032759936
	.quad	0x3fd750f6c0213678              # double 0.36431664240522066
	.quad	0x3fc3e46e73a297a8              # double 0.15540867468115249
	.quad	0x3fec2d3810150221              # double 0.88051989689853738
	.quad	0x3fe4217cfbcd8ac2              # double 0.62908791713956469
	.quad	0x3fe54b0e2ea6eedb              # double 0.66541203605398935
	.quad	0x3fb4738b32e3b460              # double 0.07988805763643958
	.quad	0x3fe15cf63f76465d              # double 0.54259788889812521
	.quad	0x3fe13dd7dbcedfb2              # double 0.53879921847600643
	.quad	0x3fd55a1de2dc952a              # double 0.33362528948267089
	.quad	0x3fe002cc6cc606ba              # double 0.50034161801178034
	.quad	0x3fe9a68b2dbdbeea              # double 0.80158003743960404
	.quad	0x3fe9b4eed792788e              # double 0.80333654502807561
	.quad	0x3fbb342c0ff9d780              # double 0.10626483335530956
	.quad	0x3fd3747a24f31050              # double 0.30398419960352374
	.quad	0x3feac9dc14d68b49              # double 0.83714107580122132
	.quad	0x3feb3dea2c09b996              # double 0.85130795098466439
	.quad	0x3fbb7971a15df0d8              # double 0.1073218363725944
	.quad	0x3feb00dc343e2900              # double 0.84385500148462711
	.quad	0x3fd5d1a317b88bae              # double 0.34092023197643584
	.quad	0x3fbfe50c748d4a68              # double 0.12458875508790757
	.quad	0x3fedcf442dc16a3a              # double 0.93155106484056849
	.quad	0x3fe9a144c309c4fa              # double 0.80093610852614394
	.quad	0x3fb46c8cce2b4078              # double 0.079781341871468459
	.quad	0x3fed992977f2f863              # double 0.9249465315586004
	.quad	0x3fe69e8807af173c              # double 0.70685197354098461
	.quad	0x3fdeb79af314c05c              # double 0.47995637644181044
	.quad	0x3fd0064f64e44c04              # double 0.2503851399680459
	.quad	0x3fe90c713314f5f0              # double 0.78276882149628868
	.quad	0x3fccc2b6c38fd418              # double 0.22469219731252177
	.quad	0x3fd964897db9bbca              # double 0.39676129606135346
	.quad	0x3fe6ac8463ed10eb              # double 0.70855922238163538
	.quad	0x3f9b14697f582fe0              # double 0.026445053479662195
	.quad	0x3fca0f8201cbb5dc              # double 0.20359826171572493
	.quad	0x3fe69cece6c3574f              # double 0.70665593214901345
	.quad	0x3fef41920505ccf3              # double 0.97675419789302819
	.quad	0x3fdf001d7c30c946              # double 0.48438202980027645
	.quad	0x3fa5f567083d8c40              # double 0.04288789725867348
	.quad	0x3fe3ef046e87e45d              # double 0.62292691791584398
	.quad	0x3fe855fcfe394c44              # double 0.76049661305513227
	.quad	0x3fbdf0c9320c1f38              # double 0.11695535156115688
	.quad	0x3faf52fb629befd0              # double 0.061179977214095183
	.quad	0x3fbabe3574757eb0              # double 0.10446485608326372
	.quad	0x3fe2627fe0efa841              # double 0.57452386792034116
	.quad	0x3fd67cd72f3f0ef4              # double 0.351369663371073
	.quad	0x3fa253b4925a38c0              # double 0.035794871201788592
	.quad	0x3fd5eca10ca5b2c4              # double 0.34256769404491316
	.quad	0x3fe8208b9562caf5              # double 0.7539728086179297
	.quad	0x3fac12e1569fbd40              # double 0.054831544708458413
	.quad	0x3fe9df44c539fdae              # double 0.80850447197729181
	.quad	0x3fe449ba605a9903              # double 0.63400000399704515
	.quad	0x3fa0f35e2d082d00              # double 0.03310674953180559
	.quad	0x3fd2791550600ade              # double 0.2886403355516175
	.quad	0x3fe0643536528135              # double 0.51223240480252363
	.quad	0x3fc74c4d9461ad00              # double 0.18201608414833714
	.quad	0x3fd3722da143695a              # double 0.3038438868367358
	.quad	0x3fe99bf253b59031              # double 0.80028644895037904
	.quad	0x3fe202f3772247bf              # double 0.56286023395863782
	.quad	0x3fee22ad46bfb32d              # double 0.94173301523332997
	.quad	0x3fe6f9f85080afa6              # double 0.71801391337566112
	.quad	0x3fcb601cc386d8cc              # double 0.21387061640934346
	.quad	0x3fc72542fc7ea948              # double 0.18082463578077523
	.quad	0x3fcfd3e3a37c45bc              # double 0.24865384562194304
	.quad	0x3fe69443394b3e5d              # double 0.70559846105784241
	.quad	0x3fd14e36d83e9ffe              # double 0.27039881818427591
	.quad	0x3fe964f3d0f7fb2f              # double 0.793573291913935
	.quad	0x3fd61ccc24afcb56              # double 0.34550765593228527
	.quad	0x3fef0daef150d0cb              # double 0.97042033321351917
	.quad	0x3fcb212d546057ac              # double 0.21194998378694885
	.quad	0x3fdf50fe26acd208              # double 0.48931840683806671
	.quad	0x3fcad1abd1a7fa70              # double 0.20952365624539793
	.quad	0x3fcb6bfd0ad329f4              # double 0.21423304585034908
	.quad	0x3fe96058fec0fcf7              # double 0.79301118618596333
	.quad	0x3fdcc23395e4c00c              # double 0.44935311925928612
	.quad	0x3fd314aad7f5df26              # double 0.29813643541227675
	.quad	0x3fe10a3297ca53de              # double 0.53249482771445478
	.quad	0x3fece5d1ea22e596              # double 0.90305419664143716
	.quad	0x3fd48491bf23355e              # double 0.32059138932966913
	.quad	0x3feb8a6c38c44c24              # double 0.86064730727446603
	.quad	0x3fee1028c5c4f84b              # double 0.93947256686056713
	.quad	0x3fe79867cf4329b5              # double 0.73735418778351536
	.quad	0x3fd9d8c0ba1ad77c              # double 0.40385454344083604
	.quad	0x3fe6422790dbf050              # double 0.69557550709533622
	.quad	0x3fe7844d3ea87a40              # double 0.73490011442101633
	.quad	0x3fe3b0523ebc0e30              # double 0.61527359249925517
	.quad	0x3fefb134f22444c9              # double 0.99038169186874214
	.quad	0x3fedfc6ad7779241              # double 0.93706266482747236
	.quad	0x3fe6ae2cb27e18f7              # double 0.7087615476782777
	.quad	0x3fd4242cff351f8c              # double 0.31470799372299818
	.quad	0x3fd5201acb8ba7aa              # double 0.33008451344960099
	.quad	0x3fe2dd930a1019aa              # double 0.58954765286835209
	.quad	0x3fc6648efea9cb6c              # double 0.1749438041184378
	.quad	0x3fe4bdcf8c4a9c26              # double 0.64817025566742781
	.quad	0x3fe11aca0fda6d04              # double 0.53452017875989144
	.quad	0x3feffdb13ed6b3b9              # double 0.99971830628566415
	.quad	0x3fde59c3dc5e9d48              # double 0.47422882576434633
	.quad	0x3fbfb19762e92e98              # double 0.12380357899490446
	.quad	0x3fd191d67bffe7e8              # double 0.27452623471583459
	.quad	0x3feb110c66f5cb1d              # double 0.8458311091365861
	.quad	0x3fd6bcfbe0061a4a              # double 0.35528466107681267
	.quad	0x3fef2dd5b65df83e              # double 0.97434507006233395
	.quad	0x3fe74408e0bc037f              # double 0.72705501454775845
	.quad	0x3fd9ab4b5dd1123c              # double 0.40107998048577875
	.quad	0x3fdc92e2315aa63c              # double 0.44646506137596353
	.quad	0x3fb46f0a8b986a78              # double 0.079819354134466169
	.quad	0x3fd11aae246f6db8              # double 0.2672534328282512
	.quad	0x3fdb2dda60760d7c              # double 0.42467364711793443
	.quad	0x3fecd973db328fd5              # double 0.90154450237286687
	.quad	0x3fd138430056b798              # double 0.26905894311027501
	.quad	0x3fb270c2292e3d20              # double 0.072033057264196731
	.quad	0x3fda7b5d4227cece              # double 0.41377955875871641
	.quad	0x3fe82336c73780b7              # double 0.75429858121426363
	.quad	0x3fe0996f19ec2de7              # double 0.5187297350216199
	.quad	0x3fe8c92bf60d0887              # double 0.77455709511583926
	.quad	0x3fe9e4cb2776a5c0              # double 0.80917890269954995
	.quad	0x3fee0a460a6b76a8              # double 0.93875410113442558
	.quad	0x3fefe25c3bbaed7c              # double 0.99638187089969632
	.quad	0x3fe61390731deaca              # double 0.68988821491014929
	.quad	0x3fd4df6bef9496a4              # double 0.3261365737583708
	.quad	0x3fd9d1888464c92c              # double 0.40341389588424437
	.quad	0x3fe9fa58642f2619              # double 0.81180972640248961
	.quad	0x3fe19677d6e1d312              # double 0.54961769074597755
	.quad	0x3fc2243a24c90f4c              # double 0.14173056408082585
	.quad	0x3fef5b44208c4f02              # double 0.97989088398978219
	.quad	0x3fe228ad37ec0f10              # double 0.56746540949140645
	.quad	0x3feff943f3368805              # double 0.99917790892163849
	.quad	0x3feb0190f616c75a              # double 0.84394119323972494
	.quad	0x3fdd6dcab5b6dd16              # double 0.45982616181886848
	.quad	0x3fd95f2eb8c0d9d8              # double 0.39643447916333008
	.quad	0x3fc3c1ee9cd89164              # double 0.15435583742613368
	.quad	0x3fe923d3da730127              # double 0.78562348047129127
	.quad	0x3fcdc0d6171c18f8              # double 0.23244739654928259
	.quad	0x3fea8428d0af8382              # double 0.82863274344354942
	.quad	0x3fdde0ce61a31b20              # double 0.46684608015896067
	.quad	0x3fec44c15bde3215              # double 0.88339298193892779
	.quad	0x3febe77f5512a286              # double 0.87200895896701591
	.quad	0x3fd74eb39fa1e9bc              # double 0.3641785677824847
	.quad	0x3fdb8b2954885d94              # double 0.43036874060768437
	.quad	0x3fe58671cb969eb3              # double 0.67266168368674639
	.quad	0x3fe9dcbd4ae037e6              # double 0.80819573044004467
	.quad	0x3fd459d82e9ea5a8              # double 0.31798367073732914
	.quad	0x3fa777316fa04d10              # double 0.045831246258012937
	.quad	0x3f87f6c4c9228e40              # double 0.011701142681267318
	.quad	0x3fe7849c72d866a2              # double 0.73493788176275054
	.quad	0x3fec223a200a8130              # double 0.87917810686125186
	.quad	0x3fe11b0d7fa3a868              # double 0.53455233506725808
	.quad	0x3fedd069a77faf71              # double 0.93169100489238421
	.quad	0x3fa18959a9e99fa0              # double 0.034251024237902827
	.quad	0x3fcca7cefa347578              # double 0.2238711091712664
	.quad	0x3fe1fd5d02e36dc0              # double 0.56217814029826485
	.quad	0x3fe757cfa4ec9cd4              # double 0.72946912967463584
	.quad	0x3fee0807098aa89b              # double 0.93847991813278797
	.quad	0x3fcf96269161665c              # double 0.24676973436980887
	.quad	0x3fd1d62bbb6d5288              # double 0.27869694999143535
	.quad	0x3f94e58412405cc0              # double 0.020406783689477903
	.quad	0x3fb22dde36aa2ba0              # double 0.07101239046657648
	.quad	0x3fc96744f71ee930              # double 0.198464031853129
	.quad	0x3fe0f3420f275ebc              # double 0.5296945854160735
	.quad	0x3fea8885240b5aee              # double 0.8291650489798863
	.quad	0x3fe495740a7cbb58              # double 0.64324380920684643
	.quad	0x3fbdced772065f10              # double 0.11643740209398978
	.quad	0x3fa6d3cf8e196300              # double 0.044584737869348245
	.quad	0x3fe595e1bb8def98              # double 0.6745461142704583
	.quad	0x3fee08364da343f1              # double 0.93850245631813156
	.quad	0x3fdce942a10c8f6c              # double 0.45173707702109911
	.quad	0x3fd3b82952a2464c              # double 0.30811532087054583
	.quad	0x3fda9fdcfad41ec0              # double 0.41600727553348449
	.quad	0x3fe86b6a69bf561c              # double 0.76311226514616548
	.quad	0x3fd888c0e035ec68              # double 0.38334676642961663
	.quad	0x3fe44922123d3edd              # double 0.63392737924911169
	.quad	0x3fd127f3a6c55aba              # double 0.26806346212599019
	.quad	0x3fd6e1c096e2e79c              # double 0.35752882704729827
	.quad	0x3feafb143f0ad791              # double 0.84314930260619481
	.quad	0x3feab223cc248b58              # double 0.83424558517104241
	.quad	0x3fca660d1c22b64c              # double 0.20623935579117114
	.quad	0x3fd86e68f585bce2              # double 0.38173889138029271
	.quad	0x3fb457a3bd0aa958              # double 0.079462274220224116
	.quad	0x3fcc82318be59608              # double 0.22272319155597153
	.quad	0x3f902fd5e6e55fc0              # double 0.015807478158734289
	.quad	0x3fd1f2aace6ba2e4              # double 0.28043623121497618
	.quad	0x3fec0ff42a5aa82f              # double 0.87694748184481408
	.quad	0x3feb8ae6c15b0415              # double 0.86070573582412868
	.quad	0x3fcd1d763f58ea1c              # double 0.22746160596018761
	.quad	0x3fe778a8522eaafc              # double 0.73347869921903408
	.quad	0x3fe70f7162b3e2ea              # double 0.72063512113444728
	.quad	0x3fe11ed5c8bf525b              # double 0.5350140496107757
	.quad	0x3feb4665821c0780              # double 0.85234332477578789
	.quad	0x3fcc0fb2081c72f8              # double 0.21922898670245394
	.quad	0x3fe6da3216f022be              # double 0.7141352127083207
	.quad	0x3fe47d2743a872e1              # double 0.64027751173452085
	.quad	0x3fdd93b0c1718234              # double 0.46213930979687068
	.quad	0x3fddbc68c76b7a5e              # double 0.46462459063142159
	.quad	0x3feaaba9efd1ea07              # double 0.83345505561675359
	.quad	0x3fe436f0b01e002c              # double 0.63170656583679863
	.quad	0x3fd0c74b8b414a7e              # double 0.26216400717854771
	.quad	0x3fe9064131c0c638              # double 0.78201350896251309
	.quad	0x3fc90a7e59f338e4              # double 0.19563273803800663
	.quad	0x3fc89ee21485c4d4              # double 0.19234872819973836
	.quad	0x3fe1c69900634ddc              # double 0.55549287868273778
	.quad	0x3fde14551242472e              # double 0.4699909857091481
	.quad	0x3fea057d309e1b9b              # double 0.81317004676462845
	.quad	0x3fe02ca8a727e094              # double 0.50545151374446329
	.quad	0x3fd8d095da87b158              # double 0.38773104039025474
	.quad	0x3fb36b689008b210              # double 0.075857672848265389
	.quad	0x3fe3a94e4fe6a6f0              # double 0.61441722493802153
	.quad	0x3fbbadad2af73000              # double 0.1081188421150614
	.quad	0x3fe28c1382733c02              # double 0.57959914663831591
	.quad	0x3fdfa63190f1e7a0              # double 0.4945186534383712
	.quad	0x3fd4e8ada7531120              # double 0.32670155849725013
	.quad	0x3fea8e82a35035b8              # double 0.82989627740032912
	.quad	0x3fc31902985a25d0              # double 0.14920074881619749
	.quad	0x3fdb7adf7cbab026              # double 0.42937457256880618
	.quad	0x3fd375742a69d23c              # double 0.3040438093369493
	.quad	0x3fe70eda4096dc96              # double 0.7205630551824409
	.quad	0x3fde91e595019438              # double 0.47765483428367217
	.quad	0x3fb09d9dac687e58              # double 0.064905027953949257
	.quad	0x3fbdf924a41e7ed8              # double 0.11708287245573545
	.quad	0x3fe15f549566ad94              # double 0.54288701228999736
	.quad	0x3fc450af267d7c30              # double 0.15871228579905639
	.quad	0x3fd2b98413227e02              # double 0.29257299297930228
	.quad	0x3fc7024f71874784              # double 0.1797580055559217
	.quad	0x3fc46f737bb13cf8              # double 0.15965121783890601
	.quad	0x3fca6aebf416e440              # double 0.20638799112728812
	.quad	0x3fd75a211e20f884              # double 0.36487605993523453
	.quad	0x3fcac80ba7a725c8              # double 0.20922990499665972
	.quad	0x3fe17822435b2da8              # double 0.54591477542401368
	.quad	0x3fed74582767d15e              # double 0.9204521913184569
	.quad	0x3fe0d5c716b81704              # double 0.52609590947460605
	.quad	0x3feb7856ea81efa6              # double 0.85843988229998014
	.quad	0x3fee54a6153bcef9              # double 0.94783310076897387
	.quad	0x3fd2dc15886d6a04              # double 0.29468286822307754
	.quad	0x3fe6aca8568e462b              # double 0.70857636361524123
	.quad	0x3fe77503ae9bad0f              # double 0.73303398230692263
	.quad	0x3fc389e99219c6b0              # double 0.15264625200102477
	.quad	0x3fdfd2a5cfabcd40              # double 0.49723191528683586
	.quad	0x3fea43ef7ff3a19e              # double 0.82079291334689564
	.quad	0x3f9cf4904811cac0              # double 0.02827668609502143
	.quad	0x3fe1b73eb4bbac71              # double 0.55361876773294061
	.quad	0x3fecfc8436639a77              # double 0.90582476256243083
	.quad	0x3fec06c6963d78dd              # double 0.87582711547636516
	.quad	0x3fd64c2b5003d2c4              # double 0.34839899839361643
	.quad	0x3fec2fd823e9cb06              # double 0.8808403684073205
	.quad	0x3feb291ffe1c5658              # double 0.84877013808245305
	.quad	0x3fe11ecc87067c1c              # double 0.53500963565955173
	.quad	0x3fc6f63c9eccbb18              # double 0.17938955072300966
	.quad	0x3fe81a78780bd0d9              # double 0.75323127218737362
	.quad	0x3fdb862340e51dd8              # double 0.43006211602593458
	.quad	0x3fcb8d43c7a54284              # double 0.21524855850522695
	.quad	0x3fe0bc9b619d5887              # double 0.5230233103309424
	.quad	0x3fd58af3ae6646e8              # double 0.33660594969943114
	.quad	0x3fefa20ff68ab5a0              # double 0.988533002402324
	.quad	0x3fb247a084230e58              # double 0.071405441532129799
	.quad	0x3fd0cdfd74d9b1a2              # double 0.26257263575714707
	.quad	0x3fee0c614a62c181              # double 0.9390112355086303
	.quad	0x3febf0178c63157b              # double 0.87305810374588988
	.quad	0x3fed8e90408369f8              # double 0.92365276909123306
	.quad	0x3fc520df2fad1ab4              # double 0.16506566837252523
	.quad	0x3fe2141edf825c48              # double 0.56495612768311165
	.quad	0x3fe4c15a12559aa9              # double 0.64860251980720307
	.quad	0x3fec4e419d174fb5              # double 0.88455277139518407
	.quad	0x3fe97a6482eb7123              # double 0.79619050569775529
	.quad	0x3fe1f56e26c8848d              # double 0.56120975088937686
	.quad	0x3fd96622aa81d870              # double 0.39685885096640217
	.quad	0x3fdd37a5f62dd6c8              # double 0.45652150193141638
	.quad	0x3feeddd0839c493c              # double 0.96457696633505163
	.quad	0x3feb03bcf254aa51              # double 0.84420630769938942
	.quad	0x3fdb80842a694bde              # double 0.42971901075105545
	.quad	0x3fe64db5e514711f              # double 0.69698614828260819
	.quad	0x3fe660e18fc74780              # double 0.69932630616879976
	.quad	0x3fc56e0d0dfe3220              # double 0.16742098983049036
	.quad	0x3fc5b3f2c4f981e8              # double 0.16955408685591
	.quad	0x3fec5173a9f06b30              # double 0.88494284812199986
	.quad	0x3fd7afa0aa3e3dbc              # double 0.37009445786767592
	.quad	0x3fa28ef31693ec60              # double 0.036246868616182537
	.quad	0x3fbbf8a121ecd5a8              # double 0.10926253393411989
	.quad	0x3fe743ff755d77f4              # double 0.72705052302239759
	.quad	0x3fb081101ed00160              # double 0.064469344637477999
	.quad	0x3fe5ad68d6b40d34              # double 0.67741815504306269
	.quad	0x3fca36120cb9b9f4              # double 0.20477510091173168
	.quad	0x3fe0b050f551ff27              # double 0.52152297891732224
	.quad	0x3fd6789a7ab5e302              # double 0.35111104949423588
	.quad	0x3fdd1f34ce6ab4e8              # double 0.45502967985051024
	.quad	0x3fda93ac0e3a35d6              # double 0.41526318921463934
	.quad	0x3fc1dc3066288e48              # double 0.13953213680462029
	.quad	0x3fc6e557b3e59e0c              # double 0.17887398036985791
	.quad	0x3feaba932189fb1e              # double 0.83527523565848916
	.quad	0x3fba015c9d502468              # double 0.10158327904368181
	.quad	0x3fdbae4021460c86              # double 0.43251040696504395
	.quad	0x3fd1cacabaa48084              # double 0.27800243593993224
	.quad	0x3fe896103ebacac9              # double 0.76831829311262212
	.quad	0x3fd11e4ea3ca25f6              # double 0.26747480387766076
	.quad	0x3fa9a153b59ee890              # double 0.050058952255725875
	.quad	0x3fc973f919673744              # double 0.19885171642675392
	.quad	0x3fb60a793ac27ac0              # double 0.086097313733698222
	.quad	0x3fd8467dac9dcdba              # double 0.37930242402145675
	.quad	0x3fe55879771d36e8              # double 0.66705010666347864
	.quad	0x3fe4a73066edf2cf              # double 0.64540882209220196
	.quad	0x3feba5f7bc9ccd65              # double 0.86400973165875128
	.quad	0x3fe4302a79fd1cf4              # double 0.63087962938234776
	.quad	0x3fde08856d93d86e              # double 0.46927009297303968
	.quad	0x3fe266b16acd7f79              # double 0.57503577098758207
	.quad	0x3fdef488a3850f26              # double 0.48367515534140393
	.quad	0x3fb2e78f6f72c340              # double 0.07384582968621789
	.quad	0x3fe3c8dcb5b68fbc              # double 0.61826930514188616
	.quad	0x3fdad4884756b5c0              # double 0.41922194449110961
	.quad	0x3fea3de25001cea3              # double 0.82005420328501477
	.quad	0x3fdba4cb0d4556c6              # double 0.43193317695600475
	.quad	0x3fc5ad2d15b56e8c              # double 0.16934741554256438
	.quad	0x3fe938ab14052d41              # double 0.7881675139446217
	.quad	0x3fb97d29ce79e988              # double 0.099566090497239412
	.quad	0x3fecb06ca851516b              # double 0.89653618692913761
	.quad	0x3fe6888a3457815b              # double 0.70416746352206461
	.quad	0x3fe489294f9b25d3              # double 0.64174333141380158
	.quad	0x3fe3bf13dd79b0c7              # double 0.61707490212349903
	.quad	0x3fe498ef358f3a52              # double 0.64366875134312296
	.quad	0x3f92c7ad6a867e40              # double 0.018339833857338173
	.quad	0x3fe144f662e8c4cf              # double 0.5396682674237584
	.quad	0x3fd0c1d2c02ec4d2              # double 0.26183003204193966
	.quad	0x3fea15b2ae94bceb              # double 0.81514867875912722
	.quad	0x3fee228e845d53ed              # double 0.94171834804967391
	.quad	0x3feff49c0d150335              # double 0.99860956721395288
	.quad	0x3fdd3fc1c49ff85c              # double 0.45701641275070926
	.quad	0x3fd7084c61554992              # double 0.35988149171057515
	.quad	0x3fb143fe3d8b1880              # double 0.067443742776136517
	.quad	0x3fd886d14e7e6c20              # double 0.38322861352361492
	.quad	0x3fe9e5a7e49fb67c              # double 0.80928415921307772
	.quad	0x3fed94262d3cfc66              # double 0.92433461032477449
	.quad	0x3fe6687f5e0bfe38              # double 0.70025604599499669
	.quad	0x3fe990197c16bebc              # double 0.79884027706244564
	.quad	0x3fe7d00679aeb3b8              # double 0.74414371267413681
	.quad	0x3fe178f481f07180              # double 0.5460150277972815
	.quad	0x3fd2ea853ff7daf2              # double 0.29556399580853487
	.quad	0x3fa7e6182d0d0fd0              # double 0.046677356242554091
	.quad	0x3fc2baa23a140e60              # double 0.14632060848099382
	.quad	0x3fe2b02434dcb004              # double 0.58400163960095641
	.quad	0x3fbd9b5c9c425160              # double 0.115651882313903
	.quad	0x3fd3f4432a9e5806              # double 0.31178359186139948
	.quad	0x3fd06f2caabde5e4              # double 0.25678555177691309
	.quad	0x3fe58fc501a5f4b1              # double 0.67379999467779872
	.quad	0x3fc2c5e0ae75c5a0              # double 0.14666374701077434
	.quad	0x3fe8ccb075f947a8              # double 0.77498648683307625
	.quad	0x3fd192452f978c1e              # double 0.274552628017945
	.quad	0x3fef6b2b8f365b65              # double 0.98183229418905837
	.quad	0x3fc1a6c5addfa568              # double 0.13790198316500413
	.quad	0x3fe344f6bf2ad6f0              # double 0.60216843926784058
	.quad	0x3feb553f8b630946              # double 0.85415627693172591
	.quad	0x3fc90e9eb7ec54a8              # double 0.19575866680739762
	.quad	0x3feea987341d8211              # double 0.95819435290110466
	.quad	0x3fc0d2ccad254bf0              # double 0.13143309072856324
	.quad	0x3fd405450255e8c8              # double 0.31282162883838938
	.quad	0x3fef330bbfb3569d              # double 0.97498118821632184
	.quad	0x3fec2673eb6f86b0              # double 0.87969394668126277
	.quad	0x3fe598b4eb20b915              # double 0.67489095614817762
	.quad	0x3fe3ac0a8f7130d2              # double 0.61475112930340914
	.quad	0x3fe27862c0f2ca78              # double 0.57719552693590881
	.quad	0x3fc190fa7ec42460              # double 0.13723689260249028
	.quad	0x3fed417f4386090a              # double 0.91424525440405202
	.quad	0x3fdfe0365bddcb80              # double 0.498059835160511
	.quad	0x3fc87c94f1df50ec              # double 0.19130193529293338
	.quad	0x3fe6fa384aa60ae5              # double 0.71804442004971902
	.quad	0x3fd2172dd9b6d740              # double 0.28266474019197929
	.quad	0x3fd56f64c35ca2cc              # double 0.33492392614656974
	.quad	0x3fe25aacd7ace5cd              # double 0.57356874584291406
	.quad	0x3fd28b4979cd700e              # double 0.28975140471243399
	.quad	0x3fedd87d7efe84ce              # double 0.93267702868993196
	.quad	0x3fef09693b14ee73              # double 0.96989881076247141
	.quad	0x3fec053e47ca7884              # double 0.87564004918728288
	.quad	0x3fde27ec676fe7c8              # double 0.47118673421175261
	.quad	0x3fe5bcbf0a6394a3              # double 0.6792903139982126
	.quad	0x3fe2234693c0773d              # double 0.56680611474778397
	.quad	0x3fe6455c80b7e5c8              # double 0.69596696033766481
	.quad	0x3fc0ec3529fb4180              # double 0.13220848607899072
	.quad	0x3fefb0d6b154de3a              # double 0.99033674845754338
	.quad	0x3fda074d72bc5e72              # double 0.40669571118039649
	.quad	0x3fe4e7491bee726a              # double 0.65323310332639761
	.quad	0x3fca6fd902aac240              # double 0.20653832082963852
	.quad	0x3feba41a59bcc20b              # double 0.86378209616492663
	.quad	0x3fd3232e2d572e82              # double 0.2990222399500696
	.quad	0x3fb99c9fb2aba298              # double 0.1000461398322251
	.quad	0x3feeda67d65bbda7              # double 0.96416084162585924
	.quad	0x3fe344b0fded246e              # double 0.60213517756450385
	.quad	0x3fe7e88bc863e93f              # double 0.74713696612096914
	.quad	0x3fd5cdde3b95c356              # double 0.34069019144867718
	.quad	0x3fef4b10292644e8              # double 0.97791297947892719
	.quad	0x3fe2d5a00d6c7f68              # double 0.58857729551162397
	.quad	0x3fe0b44736a9f7cc              # double 0.52200661350775013
	.quad	0x3fce7d621067a8c0              # double 0.23820138741513652
	.quad	0x3fe5d52eae3d84ac              # double 0.68227323561963749
	.quad	0x3fc783a1f8c82c30              # double 0.18370461127810378
	.quad	0x3fdbffe2db326492              # double 0.43749305158559892
	.quad	0x3fe0d0b933daacf4              # double 0.52547893646024457
	.quad	0x3fef7d91ecac48b8              # double 0.98407837128822617
	.quad	0x3fee74e38ee8eef7              # double 0.95176866447533726
	.quad	0x3fedfcc797e880e6              # double 0.93710689229558564
	.quad	0x3fea44df2f6968da              # double 0.82090720424755692
	.quad	0x3fef69a339f40fab              # double 0.98164521521583958
	.quad	0x3feb98185008ba71              # double 0.86231628066691546
	.quad	0x3fe330746904ba9f              # double 0.59966488372250015
	.quad	0x3fc64b6d592563cc              # double 0.17417685368380231
	.quad	0x3fea3487e7fb0e58              # double 0.81891246136405993
	.quad	0x3fdc7e4c3cefb938              # double 0.44520860625097525
	.quad	0x3fef2993a7a44809              # double 0.97382529013180019
	.quad	0x3fdddc1704fd696e              # double 0.46655822264951652
	.quad	0x3feaf9da4ac00d21              # double 0.84299959754608633
	.quad	0x3fb1884f06be8b68              # double 0.068486155649720382
	.quad	0x3fd9e6051081080e              # double 0.40466429340097043
	.quad	0x3fe7fb2a658fa9d4              # double 0.74940986477059334
	.quad	0x3fe0be55eceb30b5              # double 0.52323433182893686
	.quad	0x3fe9bb50b311d9a0              # double 0.80411562895351451
	.quad	0x3fe28f8344fd872c              # double 0.58001864885975385
	.quad	0x3fe2ff86bb6a8030              # double 0.59369217495623694
	.quad	0x3fd3726f987125ce              # double 0.30385961424744046
	.quad	0x3fc3bf111c8106d4              # double 0.15426839725301156
	.quad	0x3fe168b2b63627d9              # double 0.54403052890961157
	.quad	0x3fed414c096d1b47              # double 0.91422082749418443
	.quad	0x3fe1261da5f1f95d              # double 0.53590280924963063
	.quad	0x3fd296e00f63b0c4              # double 0.29045869353172926
	.quad	0x3fee0c26c74ed6e8              # double 0.93898333480202911
	.quad	0x3fdde550148bfd66              # double 0.46712114340330968
	.quad	0x3fe7326f97e7873d              # double 0.72490672749356799
	.quad	0x3fc4470ad0da8e84              # double 0.15841803739487059
	.quad	0x3fe3f22e3f8b9921              # double 0.62331306849663204
	.quad	0x3fe7ed11c825481f              # double 0.74768914309447954
	.quad	0x3fd5d712f4d88c5e              # double 0.34125207815868019
	.quad	0x3fd4912d770da07a              # double 0.32136093736927018
	.quad	0x3fc0cc9dc3eff948              # double 0.13124439303642021
	.quad	0x3fe66813f1f54ac7              # double 0.70020482308822174
	.quad	0x3fd4433e07b35eba              # double 0.31660414459245667
	.quad	0x3fbb2e358bec46e8              # double 0.10617384592140022
	.quad	0x3fd3d2389751a6dc              # double 0.30970587517968595
	.quad	0x3fd6b4d7a4aa19b4              # double 0.35478774147523073
	.quad	0x3fea9f85b37418bb              # double 0.83197293328773669
	.quad	0x3fec33f9a2075f1b              # double 0.88134462019204152
	.quad	0x3feaa6b6e9c87166              # double 0.83285089169252724
	.quad	0x3fe08a1ac542def2              # double 0.51685846831875737
	.quad	0x3fd985c4c8b39160              # double 0.39878959274053294
	.quad	0x3fed2427dff4cfa1              # double 0.91066354505027303
	.quad	0x3fcfc588fcfd28b4              # double 0.24821579316114184
	.quad	0x3fda00409062beea              # double 0.40626539325874822
	.quad	0x3fe0654431d938be              # double 0.51236161933936564
	.quad	0x3fed5539e4a94898              # double 0.91665358219531168
	.quad	0x3fa46ee52c6469b0              # double 0.039908563298200916
	.quad	0x3fd7bc24fdb20f8e              # double 0.37085842871624031
	.quad	0x3fe85a71122bbd77              # double 0.76104024456974073
	.quad	0x3fe573c70acfae83              # double 0.67038299666951706
	.quad	0x3fd2c720cdc94940              # double 0.29340381714168373
	.quad	0x3fb2ec66b1f00010              # double 0.073919695321819967
	.quad	0x3feb229501d1d3b6              # double 0.84797144275090974
	.quad	0x3fd8b3936600c78c              # double 0.38596043549761627
	.quad	0x3fee8aeba7f0a68d              # double 0.95445807266988114
	.quad	0x3fb59893c3922298              # double 0.084359393355166623
	.quad	0x3fdaf9c56a8324a2              # double 0.42149482156362172
	.quad	0x3fed38e785a790bc              # double 0.91319633583454828
	.quad	0x3fde6b1e16250738              # double 0.47528793489992749
	.quad	0x3fb67a8663aa08a0              # double 0.087807082492903366
	.quad	0x3fdd56b569dfd74c              # double 0.45841727580351654
	.quad	0x3fe605479c9f7429              # double 0.68814449873355443
	.quad	0x3fab3b55e9b7c030              # double 0.053187069683076849
	.quad	0x3febb3c11a76228c              # double 0.86569266479735196
	.quad	0x3fdc304021b56b44              # double 0.44044497768270596
	.quad	0x3fdc4cd6d3b506ae              # double 0.44218989061856007
	.quad	0x3febf2c38d712bbe              # double 0.87338426232724209
	.quad	0x3fefe6aa21c190bf              # double 0.9969072970675582
	.quad	0x3fefa64267b4cd93              # double 0.98904533629540691
	.quad	0x3fd27056c9f785d4              # double 0.28810662959412281
	.quad	0x3fd34e1a34265fea              # double 0.30164198963893674
	.quad	0x3fe08dc1c8abf933              # double 0.51730431741433447
	.quad	0x3fcc17ba20bdaf64              # double 0.21947409247092786
	.quad	0x3fcf75c295b40b64              # double 0.24578125295382869
	.quad	0x3fdd52bddb7f294e              # double 0.45817514834620432
	.quad	0x3fc3e04fdffa1b10              # double 0.15528295933128122
	.quad	0x3fead66edf14c2a3              # double 0.83867591448332168
	.quad	0x3fe5f4b3b57c01bc              # double 0.68612084814235841
	.quad	0x3fd702e517a92730              # double 0.35955169020290878
	.quad	0x3fe46ef84f38f66b              # double 0.63854613755365841
	.quad	0x3fe4025b91910b36              # double 0.62528780394527561
	.quad	0x3fe3dc19b7571a41              # double 0.62061773117677188
	.quad	0x3fe8d20a02fd984c              # double 0.77563953956701814
	.quad	0x3fd4cbb0db383df2              # double 0.32493230255292282
	.quad	0x3fe823366fc2b87f              # double 0.754298418314434
	.quad	0x3fbf510d3effa158              # double 0.12233050144243884
	.quad	0x3fd4c073168d1484              # double 0.32424618913893988
	.quad	0x3fcc770a614fb67c              # double 0.22238282920391217
	.quad	0x3fe6570c90cde56c              # double 0.6981261089523918
	.quad	0x3fe7ae0ab3990ebf              # double 0.73999533727370437
	.quad	0x3fcd8d5f1ac3f3f8              # double 0.23087681586176223
	.quad	0x3fb235d0734309a0              # double 0.071133640422920141
	.quad	0x3fe6be59de782d37              # double 0.7107362122637032
	.quad	0x3feca29caa8a6497              # double 0.89485009487829614
	.quad	0x3fe5c32270c94bfa              # double 0.68007013348176248
	.quad	0x3fd007f5ed5f566a              # double 0.25048587971591607
	.quad	0x3fe7e416e35d34d0              # double 0.74659294516609442
	.quad	0x3fd6a48214ad59b8              # double 0.35379077929738001
	.quad	0x3fcaddfeb40e5ddc              # double 0.20989974777033538
	.quad	0x3fe262a8d871dca4              # double 0.57454340242738455
	.quad	0x3fbd7a8dfedffcf8              # double 0.11515128586323786
	.quad	0x3fd1b711c2ca5030              # double 0.27679866812218545
	.quad	0x3fedc3831a4e2161              # double 0.93011622560247187
	.quad	0x3fdcf19a4e1335e4              # double 0.45224626183047989
	.quad	0x3fe82e86da7ff5df              # double 0.75567953754187644
	.quad	0x3fc8781ad0be3194              # double 0.19116530602003634
	.quad	0x3fec854daf0bf84c              # double 0.89127239407367531
	.quad	0x3fe59310bf9c2a2d              # double 0.67420232223350285
	.quad	0x3fddb53ecb29e20a              # double 0.46418733444400628
	.quad	0x3fddf4e9bce769c6              # double 0.46807330558445093
	.quad	0x3fe6d40696087e8d              # double 0.71338204673152605
	.quad	0x3fc1adb6dcc86b80              # double 0.13811383991636816
	.quad	0x3fce6b9e55614a84              # double 0.23765925568530488
	.quad	0x3fd5a69639dfc7a4              # double 0.33829265262385833
	.quad	0x3fe607f4c3257c9c              # double 0.68847120394265771
	.quad	0x3fec71ee8c48fb06              # double 0.8889076938574767
	.quad	0x3fd591eb13024a3e              # double 0.33703114372579879
	.quad	0x3fe0979bf7c54fe1              # double 0.51850698845600729
	.quad	0x3fecc55cda24b257              # double 0.89909212690470042
	.quad	0x3faa1eab7d8a8e50              # double 0.051015242647988956
	.quad	0x3fe4259d829f7b6f              # double 0.62959170830059275
	.quad	0x3fd5e48dd972726a              # double 0.34207483515800752
	.quad	0x3feb03a60c687295              # double 0.84419538901745972
	.quad	0x3fd55bef0462c672              # double 0.33373618534378757
	.quad	0x3fee04e108b48f3e              # double 0.93809558582550046
	.quad	0x3fed567419357d60              # double 0.91680340694066941
	.quad	0x3feb896507d3c952              # double 0.86052180794494348
	.quad	0x3fe24daf690ab927              # double 0.57198305622094814
	.quad	0x3fee9b2f03c27137              # double 0.95644331678662453
	.quad	0x3fe1c07ae26137c0              # double 0.55474609579845691
	.quad	0x3fa0822445f5fe80              # double 0.032242902317190847
	.quad	0x3fdc7c9d504cb766              # double 0.44510586587681755
	.quad	0x3fe65bc101fd1557              # double 0.69870043171310214
	.quad	0x3febd5035273e238              # double 0.8697525606540415
	.quad	0x3fe406713c086884              # double 0.62578641629376408
	.quad	0x3feff022ad89a769              # double 0.99806341070255399
	.quad	0x3faa487a6c1d24a0              # double 0.051334214875688788
	.quad	0x3fd8e753f5cb50f4              # double 0.38911913874950632
	.quad	0x3fe5e2505d54d01d              # double 0.6838762114407505
	.quad	0x3fec1b589eef5ea6              # double 0.87833815614699939
	.quad	0x3fef0112ff64e10a              # double 0.96888112908985247
	.quad	0x3fe1ec9a4643237b              # double 0.5601321575460213
	.quad	0x3fef893013015a74              # double 0.98549655639619837
	.quad	0x3fe70dcb3bf76e55              # double 0.72043382370197639
	.quad	0x3fbc38b4c0f6cde8              # double 0.11024026595151037
	.quad	0x3fd7b88d35700b20              # double 0.3706391355373615
	.quad	0x3fdd641c412ff106              # double 0.45923525205559235
	.quad	0x3fdc60325ce8366e              # double 0.44337138245541652
	.quad	0x3fdd360a43e1505c              # double 0.45642334584159072
	.quad	0x3fcd15a6af07905c              # double 0.22722323938717437
	.quad	0x3fcc48bfdef3a628              # double 0.22097013841930502
	.quad	0x3fe0ca4f9a16c5f6              # double 0.52469616027354848
	.quad	0x3fbf5e6ae9e53a78              # double 0.12253444872224317
	.quad	0x3febf59efb4854c6              # double 0.8737330348837069
	.quad	0x3fd55d0da02ec8ce              # double 0.33380451815459089
	.quad	0x3fd5f0b3d50d4f48              # double 0.34281631284578795
	.quad	0x3fe97114b050b752              # double 0.79505381046849721
	.quad	0x3fc10f87b532f390              # double 0.13328644130333744
	.quad	0x3fd693b885aa9f86              # double 0.35276616147393047
	.quad	0x3fd7b52f27a01dde              # double 0.37043360585854923
	.quad	0x3fd2856a8c427d74              # double 0.28939307877768461
	.quad	0x3fe054e71caac30d              # double 0.51036410903006557
	.quad	0x3fe664719a2e79fd              # double 0.6997612010343911
	.quad	0x3fc800bbb63a90c4              # double 0.18752237699403029
	.quad	0x3fe08e609749a4d8              # double 0.51738004253743508
	.quad	0x3fe43423e7e58755              # double 0.63136477749160724
	.quad	0x3feba5d79abad6dc              # double 0.86399440975830144
	.quad	0x3fe226e9898b023b              # double 0.56725003112666827
	.quad	0x3fd960a557b9af6e              # double 0.39652379576613483
	.quad	0x3f9bb85f4301c000              # double 0.027070511307499601
	.quad	0x3f90b6cd1a289500              # double 0.016322331163014958
	.quad	0x3fdefc26c585aabc              # double 0.48414010323783052
	.quad	0x3fe41163380c19b7              # double 0.62712250658733282
	.quad	0x3fdd6b847a44e2be              # double 0.45968734684315027
	.quad	0x3fe064efda6204b8              # double 0.51232140210063104
	.quad	0x3fbd8c03d54714a8              # double 0.11541770894025893
	.quad	0x3fc8239170c4d7fc              # double 0.18858545309348063
	.quad	0x3f9e9e1d7c54cf40              # double 0.029900036538676789
	.quad	0x3fd4b1e1bdd5f38c              # double 0.32335704363486495
	.quad	0x3fd6489d94adc512              # double 0.34818210143483086
	.quad	0x3fed06b0d9480e7d              # double 0.90706674993312186
	.quad	0x3fd1170237a325ca              # double 0.26702933724717737
	.quad	0x3fcb445b4de5f160              # double 0.21302357963203189
	.quad	0x3fb40220d6ea5f60              # double 0.078157474965676155
	.quad	0x3fd90f79b1ee1268              # double 0.39156954170201752
	.quad	0x3fc3d7a456b7041c              # double 0.1550183700001363
	.quad	0x3fdd053999b30e8c              # double 0.45344390878401764
	.quad	0x3fe54a202a2136c8              # double 0.66529854038682235
	.quad	0x3fd98541e487aa42              # double 0.39875838582398526
	.quad	0x3fe1d668f478b175              # double 0.55742309330302808
	.quad	0x3fc4b0ea47dc27bc              # double 0.16164902218616628
	.quad	0x3fd51f0dd9a7894a              # double 0.33002039199177047
	.quad	0x3fe19ba238bddd8f              # double 0.55024825174671033
	.quad	0x3fea1a6e4ffe7f57              # double 0.81572642921308158
	.quad	0x3fb9d585e80b6b70              # double 0.10091435351516309
	.quad	0x3fdd16fd90b6e110              # double 0.45452822811377391
	.quad	0x3fa715937ef898f0              # double 0.045086488007926806
	.quad	0x3fc616e55fe54d20              # double 0.172573730300976
	.quad	0x3fe8f5eaa682c5e9              # double 0.78001911660811374
	.quad	0x3fd7dcf41af4b696              # double 0.37286093361294925
	.quad	0x3fdee17b739ffb86              # double 0.48251234332558857
	.quad	0x3fb36335a9068210              # double 0.075732568517658416
	.quad	0x3fe41e0a8c6ee007              # double 0.6286671393236255
	.quad	0x3fb7b79b65222b58              # double 0.092645370665349502
	.quad	0x3fe66a3d2a8ae7e2              # double 0.70046861943341932
	.quad	0x3fe0e7a1a8e99542              # double 0.52827532759389606
	.quad	0x3fa4974a54b17a20              # double 0.040216753805669692
	.quad	0x3fed9437c556d257              # double 0.92434299986650614
	.quad	0x3fcb7f26bbb7ce64              # double 0.21481784978788021
	.quad	0x3febe76101ef3e43              # double 0.87199449899521431
	.quad	0x3fea9a112b4f5857              # double 0.83130701502774229
	.quad	0x3fe2be0874d3c277              # double 0.58569739167985702
	.quad	0x3fac98bdc1eda2e0              # double 0.055852823183902833
	.quad	0x3fa4d3b448dd9b80              # double 0.040677675146802095
	.quad	0x3fc0ebb98bd3ba90              # double 0.1321937496899932
	.quad	0x3fe3f34cec74d6e7              # double 0.62344976599589763
	.quad	0x3fe7e5b775183b4c              # double 0.74679158086824193
	.quad	0x3fefb8f3c5a84c78              # double 0.991327177095072
	.quad	0x3fe304a94f400264              # double 0.59431901434443235
	.quad	0x3fd403fa236d403a              # double 0.31274274310726791
	.quad	0x3fe41b7ca410705d              # double 0.62835533183853054
	.quad	0x3fede7e2926279bb              # double 0.93455628004794933
	.quad	0x3fc3634e1f8765a0              # double 0.15146805324074553
	.quad	0x3fc9f7475c723cc8              # double 0.20285884870506821
	.quad	0x3fece8f996a1107f              # double 0.90343932552106299
	.quad	0x3fee4518da6d0f0b              # double 0.94593470250444633
	.quad	0x3fdf45cb9f8ec7b2              # double 0.48863497335252781
	.quad	0x3fe97416f7c0aa14              # double 0.7954211081426501
	.quad	0x3fe1c0b0e6b1a57b              # double 0.55477185304077581
	.quad	0x3fe908211728f98b              # double 0.78224234126518988
	.quad	0x3feba4c94ef6d2a0              # double 0.86386552260099236
	.quad	0x3fec53ab74dd447b              # double 0.88521359276832301
	.quad	0x3fca93a99075e2f0              # double 0.2076312976239687
	.quad	0x3fe08c9af7a1249c              # double 0.51716373791818482
	.quad	0x3fb659f39bdd3210              # double 0.087310052445168873
	.quad	0x3fe12fb420fa5052              # double 0.53707319680189358
	.quad	0x3fe66ce0372fea47              # double 0.70079050806754928
	.quad	0x3fc4e1449d89386c              # double 0.16312463466823901
	.quad	0x3fe5121bbe6708ba              # double 0.6584604948805215
	.quad	0x3fcaf90de2d9201c              # double 0.21072553230828894
	.quad	0x3fd589accc343de8              # double 0.33652801458171533
	.quad	0x3fe862397b3df722              # double 0.76199029989922828
	.quad	0x3fb2bd7389b85470              # double 0.073203297732406858
	.quad	0x3fd3e3e142b22e1e              # double 0.31078368676455337
	.quad	0x3fd60acff379b654              # double 0.34440993096254613
	.quad	0x3fe6471b9b713b55              # double 0.69618015632463914
	.quad	0x3fe979426e526bcb              # double 0.79605218455560001
	.quad	0x3fbdf0f5973c2f30              # double 0.11695799772513449
	.quad	0x3feee10425cf5ab5              # double 0.9649677980877046
	.quad	0x3fdc9cf1dc101022              # double 0.44707914820196681
	.quad	0x3feddd7ee2d0d7a2              # double 0.93328804302176516
	.quad	0x3fe0e09bf930e5ad              # double 0.52741812391393739
	.quad	0x3febbe072ae1e037              # double 0.86694677710966672
	.quad	0x3fdf1a32a1b2e8a2              # double 0.48597398558525573
	.quad	0x3fc7ad57fa9cebf4              # double 0.18497752892457664
	.quad	0x3fef2d6e5d16a25a              # double 0.9742957895405866
	.quad	0x3fe76be6e1f6a9b5              # double 0.73192161687375423
	.quad	0x3fce5f1924c404e8              # double 0.2372771672744769
	.quad	0x3fa5c9d73e8ba100              # double 0.042555548081340433
	.quad	0x3fed547b3fee900d              # double 0.91656267630287547
	.quad	0x3fcd57317ecf08e0              # double 0.22922342960197906
	.quad	0x3fb5c1f59ad15b18              # double 0.084990835473359616
	.quad	0x3fc5f3a4c6aca6c4              # double 0.17149791432284733
	.quad	0x3fdb15b9647a3b44              # double 0.42320093929531688
	.quad	0x3fe9124937319869              # double 0.78348217754388572
	.quad	0x3fe64a518e3f7cff              # double 0.69657209189236358
	.quad	0x3febc122d9246689              # double 0.86732618723472499
	.quad	0x3fe8d342e02536c8              # double 0.77578872469322224
	.quad	0x3feb75a1ea8d0373              # double 0.85810943422994368
	.quad	0x3fa3cab22a5c3b10              # double 0.038655822440082699
	.quad	0x3fe4968c8fbd1e71              # double 0.64337757181142596
	.quad	0x3fda35cd949fe838              # double 0.40953387750744552
	.quad	0x3feddc9394b83510              # double 0.93317584082402227
	.quad	0x3f8304598b020cc0              # double 0.0092856402918698455
	.quad	0x3fa4ede990db4790              # double 0.040877627308545716
	.quad	0x3fe775fac5467039              # double 0.73315180330565177
	.quad	0x3fde6dd2b6ccecbe              # double 0.47545307017908189
	.quad	0x3f94040a4da314e0              # double 0.019546662319744779
	.quad	0x3fec2f165bab3a26              # double 0.88074796585153048
	.quad	0x3fe553411c60f52c              # double 0.66641288321230752
	.quad	0x3fe7a3c51050f513              # double 0.73874142824903044
	.quad	0x3fa719adeb519b40              # double 0.045117793059765265
	.quad	0x3fed474b8e655c21              # double 0.91495302020746661
	.quad	0x3fcb3c1f706bc088              # double 0.21277230252554014
	.quad	0x3fe998c89bd28720              # double 0.79990034517343033
	.quad	0x3fa2ce3daca8c010              # double 0.03672974331527723
	.quad	0x3fe9a63fdc5fcef6              # double 0.80154412309499778
	.quad	0x3fef6ff3557e0944              # double 0.98241583535881504
	.quad	0x3fbaa694ef9b8cf8              # double 0.10410433625979809
	.quad	0x3fd13df5ed89ff0e              # double 0.26940677830860771
	.quad	0x3fe7d9a4675da4c9              # double 0.74531765164024322
	.quad	0x3fefd12431d80861              # double 0.99427995429165261
	.quad	0x3fdcb7dc71194d5a              # double 0.44872199101265198
	.quad	0x3fef1b2c8ad4a693              # double 0.97206713786472886
	.quad	0x3fea2debd4ce10b7              # double 0.8181056171747717
	.quad	0x3fd4aeda67c3c32e              # double 0.32317218907614886
	.quad	0x3fd66ea275d3841a              # double 0.35050260073154649
	.quad	0x3fe12d9ecde0f120              # double 0.53681888781241938
	.quad	0x3fe1c8a2bd39f5f6              # double 0.55574166258128233
	.quad	0x3fdf2fa5c097e026              # double 0.48728317077575622
	.quad	0x3fe2764bb65c9f32              # double 0.5769403993371951
	.quad	0x3fed60ae25fddcf2              # double 0.91805179043049479
	.quad	0x3fe1c3435b33ee1e              # double 0.55508582890564973
	.quad	0x3fd1d62f0e54a410              # double 0.27869774245715551
	.quad	0x3faf2605f49c27e0              # double 0.060836969480149383
	.quad	0x3fe5690fc008e4ac              # double 0.66907489306244861
	.quad	0x3feee26818c4e599              # double 0.96513752782554995
	.quad	0x3fd589dc8fb7ab92              # double 0.3365394023409688
	.quad	0x3fef9f91514db1ac              # double 0.98822847251499501
	.quad	0x3fd8c8699bd37298              # double 0.38723221032504673
	.quad	0x3fecf644fb4cd86e              # double 0.90506218988481435
	.quad	0x3f8d6644415086c0              # double 0.014355214350931234
	.quad	0x3fe63d99023c7fca              # double 0.69501924931318482
	.quad	0x3f57afa88d23ea00              # double 0.0014456888207506902
	.quad	0x3fe285756793f091              # double 0.57879133443886321
	.quad	0x3fbdd11d54870410              # double 0.11647208512933127
	.quad	0x3fe1abd7b86f9bed              # double 0.5522268869652841
	.quad	0x3fdfcdfca3fc3790              # double 0.49694744123632351
	.quad	0x3fe39d79580ea5e2              # double 0.61297290037799379
	.quad	0x3fc8507f226ab40c              # double 0.1899565618563489
	.quad	0x3fe36baf3f649fb8              # double 0.60689508801896519
	.quad	0x3fc9c4b943408230              # double 0.2013160303477135
	.quad	0x3fdcf1bdbcbd0d84              # double 0.45225470954411429
	.quad	0x3fd1d2c03a1e1750              # double 0.27848821330586748
	.quad	0x3fd480ab199c4062              # double 0.32035329342853036
	.quad	0x3feeea39311befa9              # double 0.96609172431589229
	.quad	0x3fcf4657d2d08068              # double 0.24433419984507343
	.quad	0x3fdba7ee4006d0e2              # double 0.43212467434501722
	.quad	0x3fe70a5890a7381b              # double 0.7200129342325029
	.quad	0x3f819767777cdbc0              # double 0.0085895617809067514
	.quad	0x3fe65e4995f68d4b              # double 0.69900969781557742
	.quad	0x3febfb5802876979              # double 0.87443161481796416
	.quad	0x3fba2b6b96766600              # double 0.10222504065895777
	.quad	0x3fee046b3e32b59e              # double 0.93803941867888674
	.quad	0x3fe6da393421706a              # double 0.71413860494386694
	.quad	0x3fd4b8e637b598a8              # double 0.3237853569065785
	.quad	0x3fedddd8ff5d6b67              # double 0.93333101154290155
	.quad	0x3fe75239511462e8              # double 0.7287870963656049
	.quad	0x3fa5a4651e918920              # double 0.042269859296327761
	.quad	0x3fefcad6a8bc8797              # double 0.99351056057297426
	.quad	0x3fc454c3b90bf848              # double 0.15883680854307358
	.quad	0x3fea47e571558a05              # double 0.82127639899800953
	.quad	0x3fdf5cc4a904e8fe              # double 0.49003712182788195
	.quad	0x3fe81a797f973c1e              # double 0.75323176307745476
	.quad	0x3fc46c4ceb144f24              # double 0.15955506781085049
	.quad	0x3fb55c2a2519c920              # double 0.083437570627016289
	.quad	0x3fddacff92b0a5f0              # double 0.46368398022840918
	.quad	0x3fdcf68009f26fe8              # double 0.45254517527950933
	.quad	0x3fe052bcd9241cda              # double 0.51009981546749406
	.quad	0x3febee0051894807              # double 0.87280288624811042
	.quad	0x3fe7edc2c9171e13              # double 0.74777354503106819
	.quad	0x3fb390b8ee7dd678              # double 0.076427038407780645
	.quad	0x3fde8713dd5c0236              # double 0.47699448220376739
	.quad	0x3fe3468e50cffbc0              # double 0.60236278327635517
	.quad	0x3fea6441191b328d              # double 0.82473807242929953
	.quad	0x3fe8f407221dbfcf              # double 0.77978855765649679
	.quad	0x3fe5e7947ea133cd              # double 0.68451904995310431
	.quad	0x3fe6e883b5fc89f8              # double 0.71588311714395925
	.quad	0x3fe38c7cc1efdda7              # double 0.6108993327933846
	.quad	0x3fe1cb077ec90766              # double 0.55603384745357398
	.quad	0x3fc99f9e164111ec              # double 0.200183640352534
	.quad	0x3fd24d1eee920e6a              # double 0.28595708177474555
	.quad	0x3fec61c3da323c66              # double 0.88693420998050665
	.quad	0x3fd60220f1beaa50              # double 0.34387992484940799
	.quad	0x3fda211db8af5dcc              # double 0.4082712462963769
	.quad	0x3faac2be04e75980              # double 0.052267015551183071
	.quad	0x3fe9aafcf969add6              # double 0.80212258065642561
	.quad	0x3fd11d7678f7442c              # double 0.26742326558184248
	.quad	0x3fe3f19947a268d7              # double 0.62324203482719553
	.quad	0x3fe79886c0675480              # double 0.73736894205889314
	.quad	0x3fe911c4f46d4c0b              # double 0.78341911067616488
	.quad	0x3fe97cae63a74ebd              # double 0.79646987403471992
	.quad	0x3fcd7ea1f1798028              # double 0.23042701998474624
	.quad	0x3fe6172139e6f0c9              # double 0.69032346066480799
	.quad	0x3fe653f4a606f699              # double 0.69774849345386081
	.quad	0x3fdb2a1434ad0f20              # double 0.42444329399244118
	.quad	0x3fcaa738d5f91fe4              # double 0.208228210906099
	.quad	0x3fedee04287e8820              # double 0.93530471715007834
	.quad	0x3fce4ca97772dcfc              # double 0.23671453793006225
	.quad	0x3fe2b32b848d0c19              # double 0.58437133683071629
	.quad	0x3fd9e82780710e80              # double 0.40479457419517217
	.quad	0x3fede91699bf5228              # double 0.93470315960673123
	.quad	0x3fdaa48566049eea              # double 0.41629157030773334
	.quad	0x3fe12081c1b4876d              # double 0.53521812279744341
	.quad	0x3fe66c7a1032a869              # double 0.70074179805420755
	.quad	0x3fe95953858cd4d9              # double 0.79215408405311927
	.quad	0x3fd0b9b9d475ce92              # double 0.26133580921234867
	.quad	0x3fc462ef36639ea4              # double 0.15926923900336931
	.quad	0x3fe254c0e8b850e7              # double 0.57284589245912521
	.quad	0x3fe706468c0f54c1              # double 0.71951606135794333
	.quad	0x3fbc24ba69a59d30              # double 0.10993542746802087
	.quad	0x3fec9dacf9f793ab              # double 0.8942475206537116
	.quad	0x3fa04de58bf51620              # double 0.031844304403915169
	.quad	0x3fe14ceb8ec4bd4a              # double 0.54063966640925654
	.quad	0x3fdd7aebca1c3712              # double 0.46062750565839494
	.quad	0x3fec689d81bb5fd5              # double 0.88777041757838993
	.quad	0x3fe565f70b35f1a4              # double 0.66869690122216641
	.quad	0x3fe8a2f9c0670927              # double 0.76989448145494499
	.quad	0x3fe15713a69dc343              # double 0.54187948744047565
	.quad	0x3fc51b53d026bc54              # double 0.16489646590841522
	.quad	0x3fe624494e21ed7d              # double 0.69192948589572689
	.quad	0x3fe953ae62adb034              # double 0.79146498940600062
	.quad	0x3fd0f9478bf9defe              # double 0.26521481198822972
	.quad	0x3fe24a17ab72f4ad              # double 0.57154448972837246
	.quad	0x3fc834bdea0a68d4              # double 0.18910955360190107
	.quad	0x3fee736748af137b              # double 0.95158733554909192
	.quad	0x3fa25c093f01b390              # double 0.035858429852715479
	.quad	0x3febaab4825aa0da              # double 0.86458802661675382
	.quad	0x3fd2644ead28633c              # double 0.28737227353990469
	.quad	0x3fd16ac9ecf6ba00              # double 0.27214286938661303
	.quad	0x3fe4a3a6e372dd4e              # double 0.64497703956195962
	.quad	0x3fe2c1433308dd39              # double 0.58609161346149741
	.quad	0x3fd08e9eeb93f31e              # double 0.25870488172204087
	.quad	0x3fd702b5ac17e8ce              # double 0.35954038434978208
	.quad	0x3fd5e238d6de0e16              # double 0.34193249686379212
	.quad	0x3fc810ce75056fa8              # double 0.18801289285590639
	.quad	0x3fdf30f5dbb07746              # double 0.48736330465350297
	.quad	0x3fd500256ac4c688              # double 0.32813392092348481
	.quad	0x3fb8bad1c5ab4788              # double 0.096600638159797581
	.quad	0x3fead6764154c0ea              # double 0.83867943534826606
	.quad	0x3fedcd5408ae9801              # double 0.93131448455528709
	.quad	0x3fe56c48641eeb72              # double 0.66946811251487603
	.quad	0x3fdaeaff00aa0ba4              # double 0.42059302391879272
	.quad	0x3f9c4272a812fba0              # double 0.027597228535110596
	.quad	0x3fee5418215caa2b              # double 0.94776541248331136
	.quad	0x3fe463856ea010ba              # double 0.63714858633513605
	.quad	0x3fe265806833f339              # double 0.57489033081183216
	.quad	0x3fd4312e80f43800              # double 0.31550181000864086
	.quad	0x3fb128161568f3e0              # double 0.067017917849582442
	.quad	0x3fecfe61530a82c1              # double 0.90605226725536891
	.quad	0x3fd7acc00fb80b14              # double 0.36991883788157165
	.quad	0x3fd96f04ef4c5280              # double 0.39740107888182052
	.quad	0x3fb8ee27101898c8              # double 0.0973839201256822
	.quad	0x3fe5658e19f47f7f              # double 0.66864686078405089
	.quad	0x3febd4c26f4d78fa              # double 0.86972161997599007
	.quad	0x3fed9b986221710c              # double 0.92524356046809108
	.quad	0x3fe62cd6f114b804              # double 0.69297358595008562
	.quad	0x3fca187be8ca8594              # double 0.20387219301941839
	.quad	0x3fee48681415403e              # double 0.94633869097197709
	.quad	0x3fe414aec561ae37              # double 0.62752474356734111
	.quad	0x3fc89b34c1fc5aec              # double 0.19223651382409146
	.quad	0x3fa5a3a11ac9d560              # double 0.042264017601079784
	.quad	0x3fea3ff2fc4c7246              # double 0.82030629422258339
	.quad	0x3fe81fcb1c668ea0              # double 0.75388103053088073
	.quad	0x3fd097bd6d08b28a              # double 0.25926147125100185
	.quad	0x3fede1d429f2efee              # double 0.93381698792609114
	.quad	0x3fee9a903fa4787d              # double 0.95636761121910718
	.quad	0x3fd9b6633276b926              # double 0.4017570488748724
	.quad	0x3fd69b540555d582              # double 0.35323048134826973
	.quad	0x3fea27b9b0434306              # double 0.81734928537670792
	.quad	0x3fef181a65938598              # double 0.97169227446663608
	.quad	0x3fe4c1e6b2f52f1a              # double 0.6486695761936716
	.quad	0x3fdb5b7f99a333b8              # double 0.42745962146437533
	.quad	0x3fadb2f94ef38760              # double 0.058006087195976219
	.quad	0x3fa2e773d019ec50              # double 0.036922091629968734
	.quad	0x3fe1d5f3570088c7              # double 0.55736701004595879
	.quad	0x3fc5d685f25b96a4              # double 0.17060922941089018
	.quad	0x3fb0e8f83f1b0a60              # double 0.066054835707328063
	.quad	0x3fee5a49f076a41e              # double 0.94852158513561213
	.quad	0x3fc6e70a01286d48              # double 0.17892575317896786
	.quad	0x3fe73d904bf3d08d              # double 0.72626509508565251
	.quad	0x3febda1f11d3908b              # double 0.87037614328120705
	.quad	0x3fe8cb29003416f0              # double 0.77479982413998805
	.quad	0x3fe2ac4b599746b9              # double 0.58353202341296317
	.quad	0x3fa3d10dea9cbea0              # double 0.038704333199686802
	.quad	0x3fe88c753021530a              # double 0.76714572334694364
	.quad	0x3fd42141650a78ca              # double 0.31452975146556794
	.quad	0x3fec93308f89238c              # double 0.89296749147716658
	.quad	0x3fe59966095b34d9              # double 0.67497541263005723
	.quad	0x3fe411bc2b777b82              # double 0.62716492166133286
	.quad	0x3fe84e686e981415              # double 0.75957128143693586
	.quad	0x3fbfa7b113bf1c60              # double 0.12365252239315927
	.quad	0x3fefe370eee56deb              # double 0.99651381167808261
	.quad	0x3fee73058066204a              # double 0.9515407092849355
	.quad	0x3fe0ef8c1f91fe52              # double 0.52924162069389014
	.quad	0x3feed7a9cfc52450              # double 0.96382608966917793
	.quad	0x3fbe4d60eaa2f7d0              # double 0.1183682034343001
	.quad	0x3feca259d1383abe              # double 0.89481821883403945
	.quad	0x3fe58411129bf856              # double 0.6723714221441337
	.quad	0x3f900f903fb4d040              # double 0.015684369934391151
	.quad	0x3fa68ce998564490              # double 0.044043826909850314
	.quad	0x3fbee3ed2466bb20              # double 0.1206653798933357
	.quad	0x3fa35df4f4abb9d0              # double 0.03782620894149924
	.quad	0x3fedd419a753b054              # double 0.93214113884961102
	.quad	0x3fece24d7387116d              # double 0.90262482227312335
	.quad	0x3fbd63147a2cc0c8              # double 0.1147930906561242
	.quad	0x3fc3222b5969cfbc              # double 0.14948026529202518
	.quad	0x3fdb5c3e0d68b16e              # double 0.42750502881496899
	.quad	0x3fe23d813f09d511              # double 0.57000791847409193
	.quad	0x3fc8dc0c47e576a8              # double 0.19421533117831769
	.quad	0x3faf86b159bef0c0              # double 0.061574499326043419
	.quad	0x3fddc4c7050abb7a              # double 0.46513534061789807
	.quad	0x3fe36fb616885ff5              # double 0.60738663102074375
	.quad	0x3fe791f5eca44537              # double 0.73656746119573924
	.quad	0x3fa1644ada488990              # double 0.033968295236508017
	.quad	0x3fe5163c85180591              # double 0.65896440501107822
	.quad	0x3fc41a0151bcc2f0              # double 0.15704361430245894
	.quad	0x3fe8c92d95e42b99              # double 0.77455786967890383
	.quad	0x3fe544649fe71541              # double 0.66459876280774932
	.quad	0x3fe605ddfa20c63c              # double 0.688216198474215
	.quad	0x3fe723d184332e43              # double 0.72312236614511283
	.quad	0x3fc1a277e2282204              # double 0.13777063887415875
	.quad	0x3fee335c3a0d704d              # double 0.94376956308725257
	.quad	0x3fdd0d9fbcd9f9fa              # double 0.45395654146696496
	.quad	0x3fb1054288a8bba8              # double 0.066486509670297012
	.quad	0x3fc227eaa9e53838              # double 0.14184315963433547
	.quad	0x3fe7c9f3abb8cc45              # double 0.74340232409884577
	.quad	0x3fe57efa7d3602c3              # double 0.67175030188817464
	.quad	0x3fe31c36c4b70618              # double 0.59719408436666566
	.quad	0x3fc6f1ef874c6d98              # double 0.17925829035162333
	.quad	0x3fe73fc6b079a9de              # double 0.72653517215558927
	.quad	0x3fe10eab70211820              # double 0.53304073238610172
	.quad	0x3fedfad1aa4859a1              # double 0.93686755426715618
	.quad	0x3fe9bbc0539035d2              # double 0.80416885682068995
	.quad	0x3fc1f71bda81b714              # double 0.14035366219780399
	.quad	0x3fef1a17baa5228d              # double 0.97193514303315142
	.quad	0x3fe833bc19d5cf1f              # double 0.75631527944503663
	.quad	0x3fe812b16c896cc6              # double 0.75228186796757579
	.quad	0x3fe05fcf7861a5c8              # double 0.51169560920714563
	.quad	0x3fea42f5343af446              # double 0.82067356301525574
	.quad	0x3fe9c4ab7fe3f6de              # double 0.80525755861864545
	.quad	0x3fd18acc424aa44c              # double 0.27409655069147187
	.quad	0x3fa5f193675fc5b0              # double 0.042858702057752551
	.quad	0x3fcab873870ea854              # double 0.20875400633423402
	.quad	0x3fc4aaf147ce6378              # double 0.16146675115740172
	.quad	0x3fcdd147bcd85494              # double 0.23294922562550779
	.quad	0x3fb98952b5378748              # double 0.099751633875283408
	.quad	0x3fdbfdcb700b9102              # double 0.43736539785301443
	.quad	0x3fd0765c1c27a728              # double 0.25722410916806604
	.quad	0x3feeb66bac8b493e              # double 0.95976813983933318
	.quad	0x3fcbbce1f4f43b98              # double 0.21670174084325988
	.quad	0x3fe54359ed4bbe57              # double 0.66447159144258705
	.quad	0x3fd627f0edfbadf0              # double 0.34618781319178904
	.quad	0x3fe25a22629c49a7              # double 0.57350272426474624
	.quad	0x3fc16bf0691afccc              # double 0.13610654003239231
	.quad	0x3fc7a352e4123854              # double 0.18467174660003371
	.quad	0x3fd6a43f07411770              # double 0.35377479275154311
	.quad	0x3fedbcdf59828cd4              # double 0.92930572016157464
	.quad	0x3fd51f87c14708f0              # double 0.33004945635560912
	.quad	0x3fef3540e3d380d0              # double 0.975250668499962
	.quad	0x3fea2c5979eb2886              # double 0.81791375934814492
	.quad	0x3fd90108a829ea0e              # double 0.3906880991195586
	.quad	0x3fc23bafe5067264              # double 0.14244650538320791
	.quad	0x3fe5c3a9f4678a18              # double 0.68013475165600124
	.quad	0x3fee28adb01816a4              # double 0.94246563332918187
	.quad	0x3fc5f6535a629224              # double 0.17157976067859793
	.quad	0x3fd4735311410886              # double 0.31953884777988895
	.quad	0x3fcde42b57497f74              # double 0.23352567445817451
	.quad	0x3fc8cc637c3c8fc8              # double 0.19373744550932614
	.quad	0x3fee9b1235f2e16d              # double 0.95642958199372929
	.quad	0x3fe0c5a5ae56f825              # double 0.52412685442664453
	.quad	0x3fe9d34da30a4458              # double 0.80704385608454299
	.quad	0x3fb0c8e51fe9dfb0              # double 0.065565414706610481
	.quad	0x3feb7ce012eecd24              # double 0.85899356553855854
	.quad	0x3fd05fca23a4d8c8              # double 0.2558465335927278
	.quad	0x3fd24b639f8ebc70              # double 0.28585138875764127
	.quad	0x3fec568c8cd873e7              # double 0.88556506642237032
	.quad	0x3fcbb4f3b3181698              # double 0.21645971531704755
	.quad	0x3f8c521f097d2880              # double 0.013828508832052444
	.quad	0x3fb96230022471e8              # double 0.099154472849881992
	.quad	0x3fd169bd42eda618              # double 0.27207881484955143
	.quad	0x3feb4741eaf70a1d              # double 0.85244842425919709
	.quad	0x3fdbcdb5e86ee522              # double 0.43443057726433854
	.quad	0x3fb840bbe7df8320              # double 0.09473776255573485
	.quad	0x3fe46c59675ef358              # double 0.63822622480038671
	.quad	0x3fc860e6a6231864              # double 0.19045718300020831
	.quad	0x3fd51d525ad0e1b8              # double 0.32991465443367529
	.quad	0x3fe3d31ae8e8c9b4              # double 0.61951966753104282
	.quad	0x3fe35509db26b064              # double 0.60413067629771122
	.quad	0x3fe57ef6060a8466              # double 0.67174817256831143
	.quad	0x3fde2cbf16804344              # double 0.47148110577932223
	.quad	0x3fe8965b5d161650              # double 0.76835411244310059
	.quad	0x3fdb59b71e5d68e6              # double 0.42735078778572555
	.quad	0x3faa49a02174d400              # double 0.051342968067196182
	.quad	0x3fd78e4227910c60              # double 0.3680577646629839
	.quad	0x3fe3fa1c14d9f375              # double 0.62428096840413494
	.quad	0x3fd98fc4d780eefa              # double 0.3993999580886648
	.quad	0x3fee76013f1b81c6              # double 0.95190489125894184
	.quad	0x3fce8aff67d8a98c              # double 0.23861687250730446
	.quad	0x3fe3d1e158f3b87d              # double 0.61937014935917001
	.quad	0x3fefb16a17c7ee12              # double 0.99040703434678989
	.quad	0x3fa8a4c7ff8620c0              # double 0.048132181112181538
	.quad	0x3fd37fe09dd734ce              # double 0.30468001760602881
	.quad	0x3fdcc40ab671ebbc              # double 0.44946544472594119
	.quad	0x3fc5530e43b90b08              # double 0.16659715945032638
	.quad	0x3fb4e7fa3fd8b938              # double 0.081664696300070783
	.quad	0x3fe3f97f0e491c20              # double 0.62420609274056815
	.quad	0x3fab2d94af85f320              # double 0.053082128931214223
	.quad	0x3fe1667dfbcb6da9              # double 0.54376124552384397
	.quad	0x3fca514936eb73d4              # double 0.20560565168025724
	.quad	0x3fe3b83688216007              # double 0.61623694026911913
	.quad	0x3fdc57dac0623794              # double 0.4428622130152402
	.quad	0x3fef4bc1c7a5f911              # double 0.97799767488302979
	.quad	0x3fd77212d7df1b1e              # double 0.366337500392932
	.quad	0x3fe1b7e87fce1edc              # double 0.55369973146386142
	.quad	0x3fcd792549920980              # double 0.23025957195575231
	.quad	0x3fe239e887afd51b              # double 0.56956888676964768
	.quad	0x3fd751e460f8115a              # double 0.36437329740171764
	.quad	0x3fe7f3709f2798ec              # double 0.74846678814790612
	.quad	0x3fe64bc58486dc39              # double 0.69674945720806314
	.quad	0x3fe868c6d09c0767              # double 0.76279011482277503
	.quad	0x3fd4c0a5686f4d4a              # double 0.32425818632801351
	.quad	0x3fe93f35ab23be02              # double 0.78896602082926415
	.quad	0x3fe0461e7559fe87              # double 0.50855944557402288
	.quad	0x3fe69db2c40886c3              # double 0.70675028121714722
	.quad	0x3fe132382098c0c9              # double 0.53738027922192899
	.quad	0x3fd5b667317282e8              # double 0.33925800160254349
	.quad	0x3fd424748a9fe8a2              # double 0.31472505128443562
	.quad	0x3fb35036dd245660              # double 0.075442723264438794
	.quad	0x3fe561ee82f91e17              # double 0.66820455151259039
	.quad	0x3fe14d69ac0c8b16              # double 0.54069980243034155
	.quad	0x3fdb9b74b691a394              # double 0.43136327580446587
	.quad	0x3fe87e1ac7bb1c90              # double 0.76539362916891385
	.quad	0x3fdee76bc8c62668              # double 0.48287481886709438
	.quad	0x3fe4cce8337cb4af              # double 0.65001306587295982
	.quad	0x3feb7809c4a4538b              # double 0.85840309530850456
	.quad	0x3fc4666a14430988              # double 0.15937543858860814
	.quad	0x3fd6f6c088803ce8              # double 0.35881055193108446
	.quad	0x3fcfacd3463e13a0              # double 0.24746170930680211
	.quad	0x3fd756915d734550              # double 0.36465868116382172
	.quad	0x3fe1eeb2c40dd03e              # double 0.56038797656811545
	.quad	0x3fe730e26aa69e60              # double 0.72471733885044998
	.quad	0x3fec311a492771af              # double 0.8809939793387026
	.quad	0x3fed370c227fbe0f              # double 0.91296965349278192
	.quad	0x3fd9c5767806e95c              # double 0.40267717095743705
	.quad	0x3fdf27907f29cb00              # double 0.48678982179914954
	.quad	0x3fe3cd679db6ed6a              # double 0.61882382205605535
	.quad	0x3f95b8962e24cba0              # double 0.021211954656972787
	.quad	0x3fc0da4c80d2ff2c              # double 0.13166195192570151
	.quad	0x3fe9f8c8310fe67f              # double 0.81161889631694339
	.quad	0x3fd8ab11d05d86e8              # double 0.38544125888993941
	.quad	0x3fe601e71db02e99              # double 0.68773227499464717
	.quad	0x3feafbcc377764b4              # double 0.84323702653195775
	.quad	0x3fc0326c740bbf8c              # double 0.12653880754760072
	.quad	0x3febe1a59b514fc3              # double 0.87129478774522118
	.quad	0x3fe0dc055c3ea570              # double 0.52685802475495613
	.quad	0x3fed6a9ede2ef41d              # double 0.91926520724485139
	.quad	0x3febd85fdc1fd132              # double 0.8701628970434625
	.quad	0x3fc64fd46ece6928              # double 0.17431121263946037
	.quad	0x3fed34945b86e3a6              # double 0.91266839863157112
	.quad	0x3fcef80823d0d768              # double 0.24194432972734181
	.quad	0x3fe8e574e2b2aea9              # double 0.77800983693073988
	.quad	0x3fd7218738a2e4b6              # double 0.36142139941109563
	.quad	0x3f9dd6b4fe326be0              # double 0.029139354720069011
	.quad	0x3fe6155906d7cc8a              # double 0.69010592781559521
	.quad	0x3fc6836e98cd221c              # double 0.17588598690987645
	.quad	0x3fefe634526604fb              # double 0.99685112088641802
	.quad	0x3fcdbd01ca9d85c8              # double 0.2323305358250265
	.quad	0x3fa2e4d8a47d6070              # double 0.036902208403888248
	.quad	0x3fe83311b3f39843              # double 0.7562340273550564
	.quad	0x3fee4920a19621e1              # double 0.94642669257978806
	.quad	0x3fedaa1916b4524e              # double 0.92701391634415997
	.quad	0x3fd03d4b6bb95e7a              # double 0.25374112625056677
	.quad	0x3fe9f4aa8409f092              # double 0.81111646450837527
	.quad	0x3fed65c5ca20c502              # double 0.9186734149754161
	.quad	0x3fe95661928b22f8              # double 0.79179457303788947
	.quad	0x3fdc1d2e1d51b7a0              # double 0.43928101409152909
	.quad	0x3fd5a08a455646b2              # double 0.33792359133904448
	.quad	0x3fea62b431629a85              # double 0.82454881330052443
	.quad	0x3feb79023a3ada06              # double 0.8585215699484372
	.quad	0x3fc26636b246c3f8              # double 0.14374431328681658
	.quad	0x3fe0566d6d1f161d              # double 0.51055022537974859
	.quad	0x3fe706b793c88bb9              # double 0.71956995834295079
	.quad	0x3fccf42c46d99970              # double 0.22620156726334129
	.quad	0x3feb0f0008a97e2e              # double 0.84558107082188427
	.quad	0x3feec771112d20f2              # double 0.96184590677969894
	.quad	0x3fd87f93f4d436ec              # double 0.38278674038961813
	.quad	0x3fefdd12b5a962fc              # double 0.9957364605025698
	.quad	0x3fe9b140daf5659e              # double 0.80288737073276528
	.quad	0x3fea270242c29804              # double 0.81726182021225257
	.quad	0x3feb153ca25e34af              # double 0.84634238922594374
	.quad	0x3fe781c4a4c5fcff              # double 0.73459083730986652
	.quad	0x3fe7d3654c88620a              # double 0.74455513904382653
	.quad	0x3fcbed6dffcedccc              # double 0.21818327894809497
	.quad	0x3fefd8f55634ec14              # double 0.99523417317630213
	.quad	0x3fbb017c24bb26c8              # double 0.10549140831713111
	.quad	0x3fe8bccbb8ad97f0              # double 0.77304636068288168
	.quad	0x3fee80d0d5be0b0f              # double 0.95322458025506929
	.quad	0x3fe2c1a2722b906b              # double 0.5861370305906467
	.quad	0x3fdfcd387fe78320              # double 0.49690067759188317
	.quad	0x3fdb1a6f5e41d3b6              # double 0.4234884663085795
	.quad	0x3fe300c24dc3232f              # double 0.59384265125217961
	.quad	0x3fe2fa152bc881ee              # double 0.59302767325794803
	.quad	0x3fcd1fb460a9616c              # double 0.22753004760557916
	.quad	0x3fd3c3f9514e3158              # double 0.3088362974165384
	.quad	0x3fa514804f9c6730              # double 0.041172036855824934
	.quad	0x3fee128595ab4190              # double 0.9397609637472204
	.quad	0x3fe1dea3d8afbb0d              # double 0.55842773744174823
	.quad	0x3fa6cba57b01fd30              # double 0.044522448793026803
	.quad	0x3f71ea6620a1a200              # double 0.0043739308694985546
	.quad	0x3fd95f79e843bfd6              # double 0.39645240480512933
	.quad	0x3fb0a3cb89696198              # double 0.064999314353718751
	.quad	0x3fe4891ef3603463              # double 0.64173839124999821
	.quad	0x3fe3935e75b5507d              # double 0.6117393778790895
	.quad	0x3fe4e28279232d56              # double 0.6526501050915765
	.quad	0x3fd72f51a961dc0c              # double 0.36226312199818334
	.quad	0x3fdbf8ca36d79a9c              # double 0.43705993037876012
	.quad	0x3fb85a00e0b25c20              # double 0.095123343331906529
	.quad	0x3febd204bd2f90d8              # double 0.86938702535965273
	.quad	0x3feae8526563edc6              # double 0.84085960200121046
	.quad	0x3fd0804e691ed008              # double 0.25783119455013592
	.quad	0x3fe9e953b77760b4              # double 0.80973230202928059
	.quad	0x3feae0655a9493c6              # double 0.83989207927208365
	.quad	0x3fb3c6c9c4500060              # double 0.077252016475541918
	.quad	0x3fc8ddabbe7daed8              # double 0.19426485825839879
	.quad	0x3fd4dddb81648916              # double 0.32604110370643136
	.quad	0x3fe06ca4ead0bcbb              # double 0.51326223242167346
	.quad	0x3fe4fa2d4fc18994              # double 0.65553918435425595
	.quad	0x3fd78ba9175c9784              # double 0.3678992012158846
	.quad	0x3fe48fff9e402e2e              # double 0.64257794292774917
	.quad	0x3feddf10c78eba01              # double 0.93347968078688848
	.quad	0x3fd60e155e02c284              # double 0.34460958653202334
	.quad	0x3fe2b166402ea86b              # double 0.58415520225140705
	.quad	0x3fd4cf5f4b66dc7e              # double 0.32515699733216497
	.quad	0x3fe6dc7c02c5a2c4              # double 0.71441460172089721
	.quad	0x3fc5520fe1e63a74              # double 0.1665668347381658
	.quad	0x3fcf8adb6d19a99c              # double 0.24642508341942182
	.quad	0x3fef2747afae6a49              # double 0.97354492485767096
	.quad	0x3fe6eb893386264b              # double 0.71625194609914311
	.quad	0x3fd3595804cd27f2              # double 0.30232811421285455
	.quad	0x3fcaf8a4c23ac454              # double 0.21071300014367245
	.quad	0x3fc39be9c08cd8e4              # double 0.15319559003700711
	.quad	0x3fca0167e6e9c7f0              # double 0.20316790366228998
	.quad	0x3fd63c8fc76197ec              # double 0.34744638892004676
	.quad	0x3fe408af488fd7b0              # double 0.62606014415972844
	.quad	0x3fe469b5ed7f9dce              # double 0.63790413271356683
	.quad	0x3fa29d8c7140a960              # double 0.036358250450876595
	.quad	0x3fdb9e68e6a5ed40              # double 0.43154356502755675
	.quad	0x3fb2d23ab4398390              # double 0.073520344734346432
	.quad	0x3fc9b6e578e48cf8              # double 0.20089405444114283
	.quad	0x3fea10c7ecff2584              # double 0.81454845703517309
	.quad	0x3fadd9f9a7da5980              # double 0.058303643932208438
	.quad	0x3feba87928f454d5              # double 0.86431558607969328
	.quad	0x3fe51b091be9c587              # double 0.65955024196425505
	.quad	0x3fe846e0d644c4ae              # double 0.75865213250485453
	.quad	0x3fca4409eb7d6d50              # double 0.20520137785465886
	.quad	0x3fe01fee4dd273ff              # double 0.50389781188607674
	.quad	0x3fe3999104a5a5a5              # double 0.61249590785626096
	.quad	0x3fd5c4bc7daa86c4              # double 0.34013283035356445
	.quad	0x3fe37b77a06ad815              # double 0.60882169085994298
	.quad	0x3fc3278f8b8801e0              # double 0.14964479744959558
	.quad	0x3fe40bbe9f1a0e7f              # double 0.62643366884772422
	.quad	0x3fe6e5df558d8d79              # double 0.7155605956035479
	.quad	0x3fd70f5b1eb25894              # double 0.36031225202294448
	.quad	0x3fca38b444919fbc              # double 0.20485547397697512
	.quad	0x3fe2eb0f84bca566              # double 0.59119392323661368
	.quad	0x3fb133feb3263070              # double 0.067199629533378546
	.quad	0x3fdb256ac6a7be10              # double 0.42415875816274795
	.quad	0x3fef69bc456eed45              # double 0.98165715752785642
	.quad	0x3fbef75d23146f10              # double 0.12096197229805861
	.quad	0x3fd00ecba4f6bb20              # double 0.25090304479356185
	.quad	0x3fcd4417e2a7a3f4              # double 0.22864054267054679
	.quad	0x3fd68889e147629e              # double 0.35208365440261413
	.quad	0x3fc67486cfa9f904              # double 0.17543110980836485
	.quad	0x3feb95cb28349104              # double 0.86203534939389259
	.quad	0x3fc040b7c164c110              # double 0.12697503035588698
	.quad	0x3fe8d360437f9c0d              # double 0.77580273803039435
	.quad	0x3feeadfb673e1e71              # double 0.95873804249363392
	.quad	0x3fea4652ab816d76              # double 0.82108434197600277
	.quad	0x3fc0738ec7fa0f4c              # double 0.12852654232494343
	.quad	0x3fe2e8c906df9eb5              # double 0.590916169571719
	.quad	0x3fda8fa6a537342c              # double 0.41501775869693591
	.quad	0x3fe9da4d86ba3b24              # double 0.80789829553564063
	.quad	0x3fd5f566aea8a33c              # double 0.34310309463994648
	.quad	0x3fad454d414ac200              # double 0.057169355602471938
	.quad	0x3fcad01ef69c7b34              # double 0.20947634736600096
	.quad	0x3fd8a959f8fe794e              # double 0.385336392553559
	.quad	0x3fc18346e65323dc              # double 0.13681875463797055
	.quad	0x3febe7eb8b37c1d9              # double 0.87206055823304063
	.quad	0x3fae602ff9653370              # double 0.05932760161758821
	.quad	0x3fef304f0bf28946              # double 0.97464706738927798
	.quad	0x3fe646760db82c81              # double 0.69610121421409599
	.quad	0x3fcee9d5956db1c8              # double 0.24151105686486418
	.quad	0x3fc5900dfffdaa70              # double 0.16845870017580777
	.quad	0x3fe83314b7d7d036              # double 0.75623546511497497
	.quad	0x3fee52fc3ceb67f9              # double 0.94763004206038126
	.quad	0x3fc35f4b19b5fb80              # double 0.15134562259114759
	.quad	0x3fcfffe3b8216d24              # double 0.24999662867308203
	.quad	0x3f7257c3c8184680              # double 0.0044782302588984857
	.quad	0x3fe126c525da79aa              # double 0.5359826793026532
	.quad	0x3fc48b721d6c403c              # double 0.16050554691946839
	.quad	0x3fe0de8cca687f5b              # double 0.52716674359178783
	.quad	0x3fdf9b3f09ad28e4              # double 0.49385047860108799
	.quad	0x3fdc1c98de01a73a              # double 0.43924543075864941
	.quad	0x3fece049b36f8cb7              # double 0.90237889333766119
	.quad	0x3fec13e3b4979ed3              # double 0.87742791435172263
	.quad	0x3fd048fe3c8bf75a              # double 0.25445514595764041
	.quad	0x3fe2696a634a95bb              # double 0.57536811249581576
	.quad	0x3fe5b52a3c29414d              # double 0.67836486578202371
	.quad	0x3fdc7aea0eb1e5c0              # double 0.445002092695713
	.quad	0x3fd8747c49ab878e              # double 0.38210971063937726
	.quad	0x3fe423afd99e8302              # double 0.6293563127875077
	.quad	0x3fb3c54cb2ab9be8              # double 0.077229302998247484
	.quad	0x3fd10cbe8f908614              # double 0.26640285510993178
	.quad	0x3fc9394261dc5b90              # double 0.19705991533620848
	.quad	0x3fd06abef7cc2c7a              # double 0.25651525687198495
	.quad	0x3fdbf3c005dc82ea              # double 0.43675232479476611
	.quad	0x3fef96a245f4de39              # double 0.9871379247987938
	.quad	0x3feff5e99e865658              # double 0.99876862489572726
	.quad	0x3fcf8d4b9adcf984              # double 0.24649949132613014
	.quad	0x3fe3717b74ca1f5f              # double 0.60760281382043135
	.quad	0x3f86771665123080              # double 0.010969328841632597
	.quad	0x3fddd8f38423d290              # double 0.46636665252962306
	.quad	0x3fe3b69983dac8c6              # double 0.61603999855858471
	.quad	0x3fd28aeb53c63f84              # double 0.28972895794958498
	.quad	0x3fe02f24bc1f5265              # double 0.50575482123037985
	.quad	0x3fd6637ff1333772              # double 0.34982298426336123
	.quad	0x3feabce55877df82              # double 0.83555857924419308
	.quad	0x3fe3d03b106b3ed4              # double 0.61916878897496952
	.quad	0x3fdca5ccd1894c0c              # double 0.4476196333172886
	.quad	0x3fb4c92fbd7ba1b0              # double 0.081194862137300871
	.quad	0x3fc778aa57a75b54              # double 0.18336991577117578
	.quad	0x3fbad66e357013e8              # double 0.10483444981225853
	.quad	0x3fc2415d7dc0f194              # double 0.14261978760067662
	.quad	0x3fdca1e74b6b7944              # double 0.44738180508820258
	.quad	0x3fbb7a056d2ee858              # double 0.10733064571005124
	.quad	0x3fe746fc2eda53ac              # double 0.72741517210908091
	.quad	0x3fee4bb839460948              # double 0.9467431181549637
	.quad	0x3fe79f75c653f44b              # double 0.73821533904959702
	.quad	0x3fd374f4c8f3076e              # double 0.30401343940695014
	.quad	0x3fec044b1c1d3d96              # double 0.87552409640368256
	.quad	0x3fd840be869da930              # double 0.37895167490082127
	.quad	0x3fea9ca2f68fd7c6              # double 0.83162067562693021
	.quad	0x3fcd162806909248              # double 0.22723865814727362
	.quad	0x3fd7e15244c3782c              # double 0.37312752452078501
	.quad	0x3fea4f32fbcfed84              # double 0.82216786558221643
	.quad	0x3fbca63bf8898c00              # double 0.11191153352551453
	.quad	0x3fee5acbb94ce0f1              # double 0.94858347121683384
	.quad	0x3fe4f09585bf629d              # double 0.65436817286088778
	.quad	0x3fc8643a314f0c98              # double 0.19055869491248667
	.quad	0x3feaf5e16335219c              # double 0.84251469971154646
	.quad	0x3fed50a253fe3c99              # double 0.91609302906899182
	.quad	0x3fe77e219f2c7c90              # double 0.73414689148548185
	.quad	0x3fed10c0f0bcf26e              # double 0.90829512614398111
	.quad	0x3fde1915b9edad80              # double 0.470281058855754
	.quad	0x3fee530a8dc3c8e9              # double 0.94763686836657002
	.quad	0x3feba1a8ead78815              # double 0.86348386638224162
	.quad	0x3fc4b8d0564b1f14              # double 0.1618900700907423
	.quad	0x3fd26841a87b119c              # double 0.28761331036755577
	.quad	0x3fe8f0ccac61929a              # double 0.77939447086517366
	.quad	0x3fe0623efe34e0ad              # double 0.51199292802541196
	.quad	0x3fba9e20de1be380              # double 0.1039753477342753
	.quad	0x3fed80a64f1fc375              # double 0.92195430234833842
	.quad	0x3fc20454663de4c0              # double 0.14075713150285729
	.quad	0x3fe985fc34a7e009              # double 0.79760561260536733
	.quad	0x3fe4dfd789dc47fb              # double 0.6523244564616556
	.quad	0x3fefa99aa08274e5              # double 0.98945361470728399
	.quad	0x3fdf8373f4cdf5e4              # double 0.49239825159733486
	.quad	0x3fe14256e9ced83d              # double 0.53934808412191837
	.quad	0x3fe2527ad1fc3930              # double 0.57256833088630366
	.quad	0x3fe9c7d1761f0bae              # double 0.80564187117157871
	.quad	0x3fc3899737bff31c              # double 0.15263643476637234
	.quad	0x3fe1e68e13a99482              # double 0.55939391937558036
	.quad	0x3fc1692dfd0534cc              # double 0.13602232794293057
	.quad	0x3fdff95e8c862db6              # double 0.49959529612598474
	.quad	0x3fb28ed6314d5b30              # double 0.072492014919913528
	.quad	0x3fe8972e6c959f00              # double 0.7684547539510902
	.quad	0x3fd1facfcd2a10ea              # double 0.28093333278253729
	.quad	0x3fde2c6cbe271a8a              # double 0.47146147317509046
	.quad	0x3fd0f263bc7da4ee              # double 0.26479428679756623
	.quad	0x3fa2504809cf0690              # double 0.035768748471594169
	.quad	0x3fd28e4be4c75da4              # double 0.28993508664776813
	.quad	0x3fecc7b73de9450b              # double 0.89937936870606572
	.quad	0x3fd8b2ff46e5e706              # double 0.38592512057913131
	.quad	0x3fd594fd99d143e8              # double 0.33721866627916919
	.quad	0x3fedda23a906e161              # double 0.93287833226262873
	.quad	0x3fed3d420330275d              # double 0.91372776625324159
	.quad	0x3fe2d9ad6479761a              # double 0.58907193778913158
	.quad	0x3fd1878d70e50344              # double 0.27389846825467523
	.quad	0x3fea86c7673d0257              # double 0.82895250476583271
	.quad	0x3fd9be144ab6294c              # double 0.40222651763965156
	.quad	0x3fe3657a367e4c72              # double 0.60613737719758221
	.quad	0x3fed0e5a86162ea6              # double 0.90800214947508517
	.quad	0x3fdebba929f9f9e6              # double 0.48020390605225172
	.quad	0x3fa4e362cf74df10              # double 0.040797317337306294
	.quad	0x3fd048d9829125ba              # double 0.25444638968164279
	.quad	0x3fe4a9bdeb617b40              # double 0.64572044346628132
	.quad	0x3f8c8a82688b0800              # double 0.013936060729410116
	.quad	0x3fdb72adc1f78ad0              # double 0.42887443487249488
	.quad	0x3fc3f412bc231b30              # double 0.15588602243789174
	.quad	0x3fd8f06ae425a444              # double 0.38967392234787135
	.quad	0x3fe617c01ed77cbb              # double 0.69039922736910542
	.quad	0x3fc04927ecea726c              # double 0.12723254268793782
	.quad	0x3fedc6eb81514aa5              # double 0.93053221947987608
	.quad	0x3fd4cbf32582bbee              # double 0.32494810736801483
	.quad	0x3fe6158573214a32              # double 0.69012711035094854
	.quad	0x3fcb456a83462ffc              # double 0.21305591020461623
	.quad	0x3f9ca8d7b7bc1f60              # double 0.027987833585057742
	.quad	0x3fd0d35f2d2a7d74              # double 0.26290110979785841
	.quad	0x3fd9098520b12114              # double 0.39120605652398521
	.quad	0x3fe262573448bc9f              # double 0.57450447284454131
	.quad	0x3fdf5dca7ad8354e              # double 0.49009954449214355
	.quad	0x3fe45e00fc7eec03              # double 0.63647507968505612
	.quad	0x3fb0880d77eb2d28              # double 0.064575998093620357
	.quad	0x3fe8919bb432feb9              # double 0.76777444071918588
	.quad	0x3fed62ac9044e047              # double 0.91829517533825189
	.quad	0x3fd53764e94989d4              # double 0.33150599271735115
	.quad	0x3fd16d7f3ac3ae6e              # double 0.27230816591938989
	.quad	0x3fc05238d53b2390              # double 0.1275092164198921
	.quad	0x3fe803a6b1d165cb              # double 0.7504456971175214
	.quad	0x3fe6b6ce84619eee              # double 0.70981527190903448
	.quad	0x3fd3e50c8ea9ef54              # double 0.31085504467022429
	.quad	0x3fc302109ea89408              # double 0.14850051638600825
	.quad	0x3fea028b0faf344b              # double 0.81281045020444631
	.quad	0x3fe1839c26d8b2a2              # double 0.54731566989137925
	.quad	0x3fef19e0bf769b2c              # double 0.97190892596413425
	.quad	0x3fc4415c7610c0c8              # double 0.1582446648112692
	.quad	0x3fd01d1f740ebec6              # double 0.25177751859426356
	.quad	0x3fd6ebf9a504a1ae              # double 0.35815278163002062
	.quad	0x3fd40e19d6e5ace0              # double 0.31336065279056236
	.quad	0x3fd688f04f0b51ec              # double 0.35210807532464972
	.quad	0x3fe52ca72bfd5e38              # double 0.66170080749265647
	.quad	0x3fbdebad90568ab8              # double 0.1168774106395557
	.quad	0x3fe1faf62f3c6132              # double 0.5618849680495599
	.quad	0x3fe3e48128c6af28              # double 0.62164361919483202
	.quad	0x3febbbbf89a3f693              # double 0.86666848071009139
	.quad	0x3fe8007056562a4c              # double 0.75005356657613608
	.quad	0x3fb5d4601be42200              # double 0.0852718418210614
	.quad	0x3fe84904091b1c0e              # double 0.75891305712218737
	.quad	0x3fc62d9938e35f34              # double 0.17326655652754541
	.quad	0x3fe8f0e2483f3a1c              # double 0.77940477476824154
	.quad	0x3fb676277d60e568              # double 0.087740390882478203
	.quad	0x3fe34d0b75a37a13              # double 0.60315487839017334
	.quad	0x3fe18d518a6bfaeb              # double 0.54850079570300403
	.quad	0x3f937805adfe1860              # double 0.01901253580538087
	.quad	0x3fd40a679803fee4              # double 0.31313505025171495
	.quad	0x3fe02806e77942a1              # double 0.50488610467626327
	.quad	0x3fe858e8408f6b9d              # double 0.76085293397351317
	.quad	0x3fe034585c1fb126              # double 0.50638978951386515
	.quad	0x3fcc2487bd1fc7a8              # double 0.21986481413437997
	.quad	0x3fdff5a2051fd92e              # double 0.49936724186354098
	.quad	0x3fe4dc49739e4faa              # double 0.65189049321860648
	.quad	0x3fd4f0a061e651c8              # double 0.32718667564884329
	.quad	0x3fc9ca6d4f602f48              # double 0.20149008155601167
	.quad	0x3fd9d67c6f4ccc42              # double 0.40371619099750344
	.quad	0x3fef6725ff3a6032              # double 0.98134136056160615
	.quad	0x3fe66ffa94c10ef7              # double 0.70116929105321801
	.quad	0x3fe362073c43d1ef              # double 0.60571634073727221
	.quad	0x3fe081ffe6a2e17e              # double 0.51586909338134013
	.quad	0x3fe89573018860c1              # double 0.76824331569061866
	.quad	0x3fb18d196a968e80              # double 0.068559254190910579
	.quad	0x3fd079afd3ffee46              # double 0.25742717459772668
	.quad	0x3fe8697344ddbf9e              # double 0.76287234735899623
	.quad	0x3fe0e149c3200f9c              # double 0.52750099287412722
	.quad	0x3fdef9f58d1ffa80              # double 0.48400629789095007
	.quad	0x3fe382bee8c1b70f              # double 0.60971017322819587
	.quad	0x3feca689ad4bd1f2              # double 0.89532932135494847
	.quad	0x3fcc865ea3236dac              # double 0.2228506371092015
	.quad	0x3fe02148863b162f              # double 0.50406290261225262
	.quad	0x3fec9bb38fe21f08              # double 0.89400652029232308
	.quad	0x3feafb1f1a37e3b1              # double 0.84315447922482722
	.quad	0x3fd0aecd3eecec84              # double 0.26066905160013953
	.quad	0x3fcae378f39db814              # double 0.2100669087917032
	.quad	0x3febebfe6ba18da7              # double 0.87255784055416974
	.quad	0x3fd4737707352906              # double 0.31954742149231696
	.quad	0x3fe486b2b7b7b110              # double 0.64144264108975513
	.quad	0x3fe9253f2f52d04b              # double 0.78579673045033738
	.quad	0x3fc4273719fc94f0              # double 0.15744675415877607
	.quad	0x3fd33110f436673e              # double 0.29986976479414185
	.quad	0x3fd3858295915faa              # double 0.30502380949246322
	.quad	0x3f90da0cf46de640              # double 0.016456797045498073
	.quad	0x3feff423c565616e              # double 0.99855221322927235
	.quad	0x3fdf099e2967804a              # double 0.48496202510250852
	.quad	0x3fcde91eefea1ac8              # double 0.233676783700693
	.quad	0x3fe7f1e08397c3f1              # double 0.74827600194669064
	.quad	0x3fd6d6fcecbe0468              # double 0.35687182540283979
	.quad	0x3fecc0b245cf6825              # double 0.89852250704575864
	.quad	0x3fcd5272056aa1f8              # double 0.22907853378752896
	.quad	0x3fe80a3d1684f730              # double 0.75124983213729557
	.quad	0x3fe63bc83be35449              # double 0.69479762741924234
	.quad	0x3fea6b6175487d06              # double 0.82560799509875049
	.quad	0x3fe2477633a27e50              # double 0.57122335514936573
	.quad	0x3feb750c0eb0fd97              # double 0.85803797597320652
	.quad	0x3fd4206d37cda920              # double 0.31447916459605274
	.quad	0x3fe54f56b3d4bf8e              # double 0.66593489764453451
	.quad	0x3febfb54d0835d5e              # double 0.87443009114478421
	.quad	0x3fc28404a89f4ad4              # double 0.14465387567050547
	.quad	0x3fe29b01a8413292              # double 0.58142168867341781
	.quad	0x3fe9310bb6d932bf              # double 0.78723703110298249
	.quad	0x3fe461f465c61996              # double 0.63695735814762844
	.quad	0x3fe193ee6e0a7a62              # double 0.54930802814835666
	.quad	0x3fe2e3e46060ca0d              # double 0.5903188593277392
	.quad	0x3fedb7e043369854              # double 0.92869580390539363
	.quad	0x3fd0236dd5ceda06              # double 0.2521624172181024
	.quad	0x3fe7a7b153efa5df              # double 0.73922029870771755
	.quad	0x3fe2b5336c78bedd              # double 0.58461924730178405
	.quad	0x3fe7639ba4c004db              # double 0.73090917756794782
	.quad	0x3fea123b0436d9ea              # double 0.81472540686700978
	.quad	0x3fe014cdbde4f6a3              # double 0.50253951157329302
	.quad	0x3fe620d94f7f266b              # double 0.69150987173743539
	.quad	0x3fd2cbbe34d776a6              # double 0.29368548546140472
	.quad	0x3fe164d51c2f3d13              # double 0.54355865006246729
	.quad	0x3feac3ab71a8acd2              # double 0.83638546179772733
	.quad	0x3fe7b3c9d4a09fcd              # double 0.74069682625576549
	.quad	0x3fad7b812e9c2830              # double 0.057582890453048541
	.quad	0x3fe8337b9dd10951              # double 0.75628453086418734
	.quad	0x3fb7128cea61b4f8              # double 0.090126807424628086
	.quad	0x3fd2f67b9fd80758              # double 0.29629412278892664
	.quad	0x3fecb0f5f70363d4              # double 0.89660166020177678
	.quad	0x3fe21fa8d5125fb3              # double 0.56636468520718208
	.quad	0x3fe2e4162fc20a98              # double 0.59034261062363935
	.quad	0x3fdebef2113d4418              # double 0.48040439303901072
	.quad	0x3fe1653697c9f93f              # double 0.54360513349801198
	.quad	0x3fc323560546ce7c              # double 0.14951586969037922
	.quad	0x3fe2f22b3fd39d90              # double 0.59206163850915239
	.quad	0x3fd09ede101f5716              # double 0.25969649862723665
	.quad	0x3fd3ccb4e7112946              # double 0.30936930241718519
	.quad	0x3fd196139b8917a4              # double 0.27478494824424105
	.quad	0x3fd2c2da3b6c2bda              # double 0.29314285090430092
	.quad	0x3fe7f9754f345d73              # double 0.74920144528998234
	.quad	0x3fe996c5845d2dda              # double 0.79965473034229295
	.quad	0x3fdd48bb536fdcdc              # double 0.45756419323101993
	.quad	0x3fedb68873237634              # double 0.92853186119072583
	.quad	0x3fcc3ac227ba9ac4              # double 0.22054316463364476
	.quad	0x3fe89e5bbf741f22              # double 0.76933085816651592
	.quad	0x3fe9398f2fc774b4              # double 0.78827628452167752
	.quad	0x3fb6842d6d221bc0              # double 0.087954367774826459
	.quad	0x3fe9df7f7b4d6386              # double 0.80853246767502251
	.quad	0x3fda076eaed0366c              # double 0.40670363494505213
	.quad	0x3fdef1dfafbae438              # double 0.48351280366074745
	.quad	0x3fe1accc7bae1b01              # double 0.55234359890241091
	.quad	0x3fad977bafd58d00              # double 0.057796349729665408
	.quad	0x3fcbaf4ca86392e4              # double 0.2162872144901008
	.quad	0x3fbd7e49b07cbab8              # double 0.11520824965257759
	.quad	0x3fc014164a6d4f34              # double 0.12561300882463799
	.quad	0x3fcf10de8734d1d0              # double 0.24270230867263232
	.quad	0x3fc1913194802270              # double 0.13724345923425885
	.quad	0x3fdf0c9c4ca09a12              # double 0.48514468653812159
	.quad	0x3fe4b7ba0b0a36de              # double 0.64742757946234142
	.quad	0x3fe0fcfcde80bda3              # double 0.53088229615780269
	.quad	0x3fe74b8db2a795df              # double 0.72797284024698772
	.quad	0x3fe0f3a9d9f17984              # double 0.52974407736819318
	.quad	0x3fc939a8758e0020              # double 0.19707208385443753
	.quad	0x3fdb2ff8597ec56e              # double 0.4248028635002673
	.quad	0x3fae748a10a21af0              # double 0.059482874422476573
	.quad	0x3fd672da5a107f8a              # double 0.35076006694179596
	.quad	0x3fc4162b57ed11e0              # double 0.15692655366196018
	.quad	0x3fe67906ee2f51f7              # double 0.70227381248929432
	.quad	0x3fc2debeffd3b6d0              # double 0.14742267123749864
	.quad	0x3fee7ab6474b88f5              # double 0.95247949528518794
	.quad	0x3feec0af219f6944              # double 0.96102100912984456
	.quad	0x3fb00e651f170b18              # double 0.062719650354705059
	.quad	0x3fe1cf79ad9b0f2f              # double 0.55657657534945837
	.quad	0x3fd7aa9c4702152e              # double 0.36978823599231958
	.quad	0x3fe6ed73b38fb94c              # double 0.71648583479490346
	.quad	0x3fc85c10fc5dfc30              # double 0.19030964205373513
	.quad	0x3fdd6acb4279481a              # double 0.4596431874425676
	.quad	0x3fe8372dbd4d9651              # double 0.75673567746407333
	.quad	0x3fc6a012a0b7d044              # double 0.17676003310737276
	.quad	0x3fe645994afa1571              # double 0.69599594730304493
	.quad	0x3fe33473bc0ac1fe              # double 0.60015284277875458
	.quad	0x3fbb89dc9d23f740              # double 0.10757235371053486
	.quad	0x3fdfaf5fe382cdbc              # double 0.49507901399484999
	.quad	0x3fcf341c8cd60ed4              # double 0.24377781750455674
	.quad	0x3fdd793faaefd3ec              # double 0.46052543347405961
	.quad	0x3fd5f1f302ecccfe              # double 0.34289241109509294
	.quad	0x3fdfaa5a6252f7ca              # double 0.49477252580606701
	.quad	0x3fd0f0dc1795e18c              # double 0.26470091155308562
	.quad	0x3fc2f6858e33f380              # double 0.14814824527266168
	.quad	0x3fe6f7ee1d03365e              # double 0.71776490847123475
	.quad	0x3fe37b34bf9a0088              # double 0.60878980085546264
	.quad	0x3fdde157160b38de              # double 0.46687867310255438
	.quad	0x3fdd51dd5f32f10e              # double 0.45812162682320057
	.quad	0x3fe691295c542245              # double 0.7052199176114945
	.quad	0x3febeecf9ab8e540              # double 0.87290172785939291
	.quad	0x3fa71d7d8db443b0              # double 0.04514686922823985
	.quad	0x3febfbce9f7a83f6              # double 0.87448817394408596
	.quad	0x3fec46a83030a06b              # double 0.88362512027835061
	.quad	0x3fdf191103256cde              # double 0.48590493495221476
	.quad	0x3fa8fe666a9d8560              # double 0.048815918459477414
	.quad	0x3fc1f90629f88a40              # double 0.14041211175306678
	.quad	0x3fe43f149dce609c              # double 0.63270026036754556
	.quad	0x3fd7388f2df5239a              # double 0.36282710540813812
	.quad	0x3fcd7b42b10ece88              # double 0.23032411237146655
	.quad	0x3feee1964da482b6              # double 0.96503749050687904
	.quad	0x3fdf6a9ac7408ddc              # double 0.49088162859172058
	.quad	0x3fe89f79721fa7ed              # double 0.76946708955551701
	.quad	0x3fdc3b07e5d6de74              # double 0.44110295720336201
	.quad	0x3fc8ceaf3e97cd98              # double 0.19380751186654943
	.quad	0x3fd05c96e6fd95cc              # double 0.25565121228859478
	.quad	0x3faf435b4fdc38f0              # double 0.061060765741887013
	.quad	0x3fc4bcb9b518f12c              # double 0.16200944273612927
	.quad	0x3fdb93466580e5b2              # double 0.4308639518017926
	.quad	0x3fd1b8484ad83e76              # double 0.27687270459225688
	.quad	0x3fe157b7d675b01d              # double 0.54195777784980559
	.quad	0x3fbbb9f568448b80              # double 0.10830625339126065
	.quad	0x3fedaef5baa39b80              # double 0.92760740712115819
	.quad	0x3fc8ecef2c8b683c              # double 0.19473066020037944
	.quad	0x3fdd118412bff308              # double 0.45419408637080538
	.quad	0x3feb71fe38c6462c              # double 0.85766516770144596
	.quad	0x3faa56911107ec00              # double 0.051441701249096639
	.quad	0x3fc528101cea1130              # double 0.1652851239379145
	.quad	0x3fc97cac1e4db1d0              # double 0.19911719779646697
	.quad	0x3fb4bb64fecd50b0              # double 0.0809844133448816
	.quad	0x3fe44c088226e11c              # double 0.63428140087401941
	.quad	0x3fde66d665a16e7a              # double 0.47502670216429232
	.quad	0x3fe50366ac3889db              # double 0.6566651691139741
	.quad	0x3fdf48479f650dbc              # double 0.48878660741703661
	.quad	0x3fe2558851afa1ae              # double 0.57294097856816051
	.quad	0x3fc63915c60eb778              # double 0.17361709757590993
	.quad	0x3fcbe14f3399d098              # double 0.21781339664051269
	.quad	0x3fb7f252420ebd88              # double 0.093541279914225339
	.quad	0x3fcdcb67be5b1754              # double 0.23276993555753711
	.quad	0x3fed5f0f58c5469d              # double 0.91785399759301678
	.quad	0x3fd92d5af572f26e              # double 0.39339326829557464
	.quad	0x3fe55c875c4f3cfd              # double 0.66754501370624519
	.quad	0x3fd28b0384703550              # double 0.2897347253172784
	.quad	0x3fe7380950bccbb7              # double 0.72559037941970572
	.quad	0x3fd3a13816bed174              # double 0.30671503277996881
	.quad	0x3fdbcd37eab28b08              # double 0.43440053863211903
	.quad	0x3fd12e10378a4a0c              # double 0.26843648361060057
	.quad	0x3fed9294d572803e              # double 0.92414323510093488
	.quad	0x3fe4ee2e374df86e              # double 0.65407477189707008
	.quad	0x3fe8d49511457072              # double 0.77594998715677677
	.quad	0x3fecbe01e3f23044              # double 0.89819426079476061
	.quad	0x3fc2f42a758ea2b0              # double 0.14807635059448421
	.quad	0x3fe5e1abf2f13251              # double 0.68379781198161471
	.quad	0x3fe5804d3d4953d5              # double 0.6719118306160633
	.quad	0x3fb0505ad18d71b8              # double 0.063726116333277072
	.quad	0x3fef120bdbe145a2              # double 0.97095292039209746
	.quad	0x3fdf0550c65d6c36              # double 0.4846994340093177
	.quad	0x3fc517d2d8e4ccd8              # double 0.16478953924670381
	.quad	0x3fb5f17ea17c0d28              # double 0.085716165947861911
	.quad	0x3fd49bfd810d6696              # double 0.32202088930862638
	.quad	0x3fe0a996a6b08488              # double 0.52070171886966055
	.quad	0x3fe79d3eb294df46              # double 0.7379449356003327
	.quad	0x3fe31beebd4cf3cf              # double 0.59715973828098778
	.quad	0x3fd73b410e5f4586              # double 0.36299158481150362
	.quad	0x3fe8a335205f5795              # double 0.76992279360523475
	.quad	0x3fef885c3a173d75              # double 0.98539553972106708
	.quad	0x3fefda9c0282ccc4              # double 0.99543571939866426
	.quad	0x3fd656a98321db24              # double 0.34903943830379291
	.quad	0x3fd82ae652d5f8b2              # double 0.37761838998256814
	.quad	0x3f7a22fb21d44280              # double 0.0063810167169014997
	.quad	0x3fedd8b09542ee86              # double 0.93270138886096343
	.quad	0x3fd8889726a7f9ba              # double 0.38333681845679346
	.quad	0x3fd86db9961396fc              # double 0.3816970792380372
	.quad	0x3fe03de5cbe720d6              # double 0.50755586457037327
	.quad	0x3fd7cf5c18ea0068              # double 0.37203123505606195
	.quad	0x3fef8cbed5c9ba47              # double 0.98593084102123718
	.quad	0x3fe65da8d2633e54              # double 0.69893303958265074
	.quad	0x3feebf58a76f55b6              # double 0.96085770322922914
	.quad	0x3fe2bdc8b5f6fd90              # double 0.58566699543000489
	.quad	0x3fed2b53ca08fc8f              # double 0.91153897724133681
	.quad	0x3fc4a41e70b6d1a0              # double 0.16125851157779625
	.quad	0x3fc05493decb0aac              # double 0.12758110407420042
	.quad	0x3fd6e2d504a6eef8              # double 0.35759473280243936
	.quad	0x3fe82f1797109cfb              # double 0.75574855332243318
	.quad	0x3fefc7350fcac9fc              # double 0.99306729397204618
	.quad	0x3fec06020542475c              # double 0.87573338534478351
	.quad	0x3fe59f2178a9c72e              # double 0.67567514006643647
	.quad	0x3fdd4f72eea06718              # double 0.457974179300082
	.quad	0x3fe8a6f6ecf07a3b              # double 0.77038141514987701
	.quad	0x3fe64a1214ad72cc              # double 0.69654182470875403
	.quad	0x3fd8afb4907624b4              # double 0.38572420222824211
	.quad	0x3fed0796e244ef78              # double 0.90717643922060542
	.quad	0x3fecaf1c51952120              # double 0.89637580808724592
	.quad	0x3fec7fe331c1e0f1              # double 0.89061126440267746
	.quad	0x3fe5ccce8ea1202d              # double 0.6812508378725447
	.quad	0x3fe5622b9acaa3d9              # double 0.66823368294455598
	.quad	0x3fefbab36eaf39c9              # double 0.99154063814221971
	.quad	0x3fe063fb8fec8a44              # double 0.51220491514352107
	.quad	0x3fef7db69f6c102a              # double 0.98409587037213453
	.quad	0x3fd09c933cc750ac              # double 0.25955658851058661
	.quad	0x3feb61479b7e9d07              # double 0.8556249653819642
	.quad	0x3fda82b2b5ab7474              # double 0.41422717801271536
	.quad	0x3fa943538defd490              # double 0.04934178454997451
	.quad	0x3fe38da69636a5c2              # double 0.61104134882514693
	.quad	0x3fe4567ec9d77518              # double 0.63555850431626748
	.quad	0x3fb4e0b745ed0d50              # double 0.081553892680905848
	.quad	0x3fed546aa5cc16cd              # double 0.91655475981016254
	.quad	0x3fceaaba1247c0d4              # double 0.23958516972152799
	.quad	0x3fef89d17a1dedca              # double 0.9855735192390338
	.quad	0x3fa042db96c86e50              # double 0.031760084301109104
	.quad	0x3fd52cec61e12e8e              # double 0.33086690481716452
	.quad	0x3fe0ed06084ca046              # double 0.52893354054413844
	.quad	0x3fd50f9c1fe09818              # double 0.32907775033015829
	.quad	0x3fc24f48e38454c8              # double 0.14304457768654388
	.quad	0x3feb69145c47786d              # double 0.85657709143903349
	.quad	0x3fe13170a91f4e83              # double 0.53728516608903509
	.quad	0x3fe0ea28a232e1c5              # double 0.52858382873005694
	.quad	0x3fe14ef6b59a964e              # double 0.54088912457945937
	.quad	0x3fda90fc9790d57c              # double 0.4150992851385451
	.quad	0x3fef15e29996ce49              # double 0.97142152784221835
	.quad	0x3fd136d8ac390fa2              # double 0.26897255724565572
	.quad	0x3f973f8ee28425c0              # double 0.022703392577602122
	.quad	0x3fdcd0d973abee6c              # double 0.45024715705924367
	.quad	0x3fe9be5a4f9b2dd3              # double 0.8044864229972809
	.quad	0x3feeac840c026497              # double 0.95855905862403545
	.quad	0x3fd9d5ba58d9ba1a              # double 0.40366991688543552
	.quad	0x3fed372442bdfcef              # double 0.91298115764211996
	.quad	0x3fda62dcda4c3080              # double 0.41228410070539923
	.quad	0x3fe2e71fde234928              # double 0.59071343790336517
	.quad	0x3fba2395a60b1b38              # double 0.10210547736924702
	.quad	0x3fa4d18b32471310              # double 0.040661191832930155
	.quad	0x3fea71f0ae8eec1c              # double 0.82640871137062132
	.quad	0x3fb39746559b6a90              # double 0.076527019405526752
	.quad	0x3fe1a5eaa8a3f49d              # double 0.55150349557483802
	.quad	0x3fd4775f47615174              # double 0.31978589983670891
	.quad	0x3fdcc3b7ac4e58d6              # double 0.4494456465412332
	.quad	0x3fd4341b327fd2b8              # double 0.31568031245778228
	.quad	0x3fedf49b3648e46e              # double 0.93610916712272085
	.quad	0x3f8f5a6d560b94c0              # double 0.015309194744484222
	.quad	0x3fd349d7b89cffe0              # double 0.30138199833527146
	.quad	0x3fda81df627a5248              # double 0.41417679421400466
	.quad	0x3fefd46c0891cbf9              # double 0.99468042062505823
	.quad	0x3fe866d745eccf81              # double 0.76255382210955258
	.quad	0x3fcb8801ece57bdc              # double 0.215088120147782
	.quad	0x3fa49bc4a3f240b0              # double 0.040250916493392963
	.quad	0x3fc000297ace59c8              # double 0.12500494476689838
	.quad	0x3fd50100c37276cc              # double 0.32818621718056984
	.quad	0x3fbd7190e14ff908              # double 0.1150141286925398
	.quad	0x3feef24572ff613d              # double 0.96707413158859589
	.quad	0x3fe3fea4f7faca43              # double 0.6248345225670352
	.quad	0x3fe5aaa9bcaadd5b              # double 0.67708289002522848
	.quad	0x3fe043759ca7a289              # double 0.50823479267735749
	.quad	0x3fe420b2dd33eda9              # double 0.62899153903656668
	.quad	0x3fe9243ac07eff36              # double 0.78567254635706862
	.quad	0x3fef46f7e9f2a1b5              # double 0.97741313641477367
	.quad	0x3fe68602d7d12b02              # double 0.70385877753992099
	.quad	0x3febfe26b0701fef              # double 0.87477430782837284
	.quad	0x3fea5a33cd012117              # double 0.82351102867054038
	.quad	0x3fe97a6beac077c2              # double 0.79619403696028024
	.quad	0x3faecda723f1efc0              # double 0.060162757051301252
	.quad	0x3fe880e449bf89a8              # double 0.76573385623878654
	.quad	0x3fcb52557b795464              # double 0.2134501316928975
	.quad	0x3fea627c11c7ef67              # double 0.82452205155230451
	.quad	0x3fd62ac834f3a62e              # double 0.3463612095934846
	.quad	0x3fe635a9b82c3c42              # double 0.69405065509079855
	.quad	0x3fe0a37aceea6a4e              # double 0.51995602048129697
	.quad	0x3fe17fe70fd9a939              # double 0.54686310859441456
	.quad	0x3fec7a1ba3c3e12b              # double 0.8899057577646422
	.quad	0x3fe77a60f9c06952              # double 0.7336888196908069
	.quad	0x3fef27d49b74f863              # double 0.97361212122610785
	.quad	0x3fdc037caecfecda              # double 0.43771283217911405
	.quad	0x3fec42ceb3cb220e              # double 0.88315520397105884
	.quad	0x3fe8b83284d8244b              # double 0.77248502679970821
	.quad	0x3fa3978cffec7770              # double 0.038265615692792632
	.quad	0x3feaf83b7de6a692              # double 0.8428018054011821
	.quad	0x3fe1e83db7b057a3              # double 0.55959974171377203
	.quad	0x3fd627702620915a              # double 0.3461571094833481
	.quad	0x3fd03b956a8b75de              # double 0.25363669781458309
	.quad	0x3fd389702cfbe8a6              # double 0.30526356118174147
	.quad	0x3fe9bf5f49581c23              # double 0.80461086583170915
	.quad	0x3fbec5d4f444e3d8              # double 0.12020617450333704
	.quad	0x3fb152858a8f0fb8              # double 0.067665430381622538
	.quad	0x3fe31a00d88ad45b              # double 0.59692423146646989
	.quad	0x3fd77e5a18405d44              # double 0.36708690994551696
	.quad	0x3fd4607c0d8bbfd0              # double 0.31838895151940694
	.quad	0x3fea6795023363af              # double 0.82514429502326958
	.quad	0x3fef2af44adf2dba              # double 0.97399344085118078
	.quad	0x3fecaebdf921b9b9              # double 0.89633082064192771
	.quad	0x3fe1696b3766c851              # double 0.54411850758175195
	.quad	0x3fea4f7973b821b0              # double 0.8222014675275684
	.quad	0x3fcc22d29aa12608              # double 0.21981270361202143
	.quad	0x3fe14d1ae8d61a62              # double 0.54066224552009268
	.quad	0x3fe82f22c5068ef7              # double 0.75575388413969236
	.quad	0x3fe3b30c53f8032e              # double 0.61560646438747368
	.quad	0x3fda830ddeb01034              # double 0.41424891230440442
	.quad	0x3fe503593fc14685              # double 0.65665876819748858
	.quad	0x3fef8bdf1005b8bb              # double 0.98582413796773182
	.quad	0x3fd7c04ef6692bd4              # double 0.37111257613713389
	.quad	0x3fedff7458fd9d57              # double 0.93743340855591384
	.quad	0x3fe90bee54a62556              # double 0.78270641835221499
	.quad	0x3fef5eb037c66363              # double 0.9803086366037913
	.quad	0x3fe4025a5e838d48              # double 0.62528723201504821
	.quad	0x3fd815d9021eb574              # double 0.37633347708727816
	.quad	0x3f95dcaa3b202d00              # double 0.021349582537408374
	.quad	0x3fe21e5fc6344510              # double 0.56620777808908151
	.quad	0x3fe9948d9d64df63              # double 0.79938393345853986
	.quad	0x3fd47339b5e213b4              # double 0.319532802219608
	.quad	0x3fd03beb2b7ea868              # double 0.2536571430924881
	.quad	0x3fcf3706161a1ae4              # double 0.24386669234464542
	.quad	0x3fd98cac796bfeae              # double 0.39921104295351995
	.quad	0x3fd8aadd16ed4274              # double 0.38542868842072342
	.quad	0x3fc20d13e54d9734              # double 0.14102410026969781
	.quad	0x3fe9b2a18ec2e438              # double 0.80305555232110404
	.quad	0x3fb144775282f2f8              # double 0.067450959820188561
	.quad	0x3fe836e5251745b5              # double 0.75670106167142726
	.quad	0x3fd67b2759feba2c              # double 0.35126670635773638
	.quad	0x3fddc7295deb8216              # double 0.46528085872526626
	.quad	0x3fe4d11ebeeb64c9              # double 0.65052735604253897
	.quad	0x3feaf18e14e150df              # double 0.84198669508125679
	.quad	0x3fc78bb2e7880af0              # double 0.18395077042813268
	.quad	0x3fed1f216c0876cf              # double 0.91005011654098122
	.quad	0x3fb4b8b80b933598              # double 0.080943587137161876
	.quad	0x3fe66dd51c8bca8e              # double 0.7009072835483765
	.quad	0x3fe71f2de10deec3              # double 0.72255605655615118
	.quad	0x3fe6cee19f963353              # double 0.7127540699890268
	.quad	0x3fb5526cda9b8270              # double 0.083288958903276144
	.quad	0x3fe7280dd237081f              # double 0.72363940293894646
	.quad	0x3fe48585e80f6ca1              # double 0.64129920315044242
	.quad	0x3fd609de5923366c              # double 0.34435232834662233
	.quad	0x3fec6d7349544245              # double 0.88836063692185319
	.quad	0x3feac5b30c20546a              # double 0.83663322800078999
	.quad	0x3feb87bef316457e              # double 0.86032054403237601
	.quad	0x3fb0328f07483b60              # double 0.063271464612836947
	.quad	0x3fd169aa9df06be8              # double 0.27207436965698983
	.quad	0x3fdc352657a76848              # double 0.44074400482134424
	.quad	0x3fd99e49e2dd91c8              # double 0.40028617052874127
	.quad	0x3fedcdb88d3e0221              # double 0.9313624151837453
	.quad	0x3fdd8331d99c95a8              # double 0.46113249064577611
	.quad	0x3fe6b0378e99cac5              # double 0.70901086665829693
	.quad	0x3fe3231c027fc6b1              # double 0.59803581703291375
	.quad	0x3fdb0f903ab5c8cc              # double 0.42282491429717761
	.quad	0x3fea7e28de945d69              # double 0.82790034744804786
	.quad	0x3fe6e95d5ac095a3              # double 0.71598689770751311
	.quad	0x3fbb6c5a8c4b7e68              # double 0.10712209630173108
	.quad	0x3fe11e788143faba              # double 0.53496957060982386
	.quad	0x3fc9930e4bc99b30              # double 0.1998002882057448
	.quad	0x3fe5dacaed7ce3c4              # double 0.68295809158654963
	.quad	0x3fdace2f59a61e92              # double 0.41883453135276583
	.quad	0x3fda14e6b343c7d0              # double 0.4075257063515183
	.quad	0x3fe718d24e75a626              # double 0.72177996944555356
	.quad	0x3fed39584fa7706d              # double 0.91325011784966892
	.quad	0x3feda86833b7b877              # double 0.92680749989609879
	.quad	0x3fd368ddc6093966              # double 0.30327553119140871
	.quad	0x3fd99111096f2766              # double 0.39947915955837343
	.quad	0x3fe133420369dfb9              # double 0.53750706354821098
	.quad	0x3fd82a96a23ff7de              # double 0.37759939045633739
	.quad	0x3fede5519ec7add2              # double 0.93424302112310387
	.quad	0x3fe7bf115fd02d1c              # double 0.7420737143851599
	.quad	0x3fe4fd992601a409              # double 0.65595681594015887
	.quad	0x3fd5f115aad3b7a6              # double 0.34283963854147215
	.quad	0x3fe1b810c96db541              # double 0.55371894208443717
	.quad	0x3fe24438e8efda2e              # double 0.57082791800968891
	.quad	0x3fe1ca6798681199              # double 0.55595760123155735
	.quad	0x3fe7888e163a9a41              # double 0.73541931478104783
	.quad	0x3fef51bc19ab45bf              # double 0.97872738851054197
	.quad	0x3fd53a96f3ae0452              # double 0.33170102879382057
	.quad	0x3fecbab51fd42967              # double 0.89779144493631413
	.quad	0x3fd945a4cb4164dc              # double 0.39487571572460722
	.quad	0x3f6d24e06de43900              # double 0.0035576232322745982
	.quad	0x3fd092ae600e3342              # double 0.25895270710389096
	.quad	0x3fe314da03e1596f              # double 0.59629536397805605
	.quad	0x3fea2ba1ddf8a652              # double 0.81782620767371328
	.quad	0x3fe0954fa53ddc6e              # double 0.51822645448454607
	.quad	0x3fbc1d67bea60cf8              # double 0.10982368855006885
	.quad	0x3feb3d9c0754ca21              # double 0.85127068931462102
	.quad	0x3fdd73d939ed1252              # double 0.46019583374826312
	.quad	0x3fe6bb8c58eae6e8              # double 0.7103940712615584
	.quad	0x3fcc08d66f240ed4              # double 0.21901970316695574
	.quad	0x3fb44408f8a33da0              # double 0.079163132383874402
	.quad	0x3fc8f039ed8199f0              # double 0.19483112427697291
	.quad	0x3fdde32c19ef7eba              # double 0.46699049504057266
	.quad	0x3f65fe9735c77100              # double 0.0026848748513953469
	.quad	0x3fd6e5fa87c24ad8              # double 0.35778678186140445
	.quad	0x3fe3bcb59a6fccfa              # double 0.61678581393644483
	.quad	0x3fe8758f84905bf4              # double 0.7643506611956341
	.quad	0x3fd40d7268e318e6              # double 0.31332073443299036
	.quad	0x3fe5184e1e1e931f              # double 0.65921693690015448
	.quad	0x3f97853b575bb180              # double 0.022969176489753718
	.quad	0x3fc63c3ce801d6f4              # double 0.17371331528163803
	.quad	0x3fda3cc4b661b074              # double 0.40995900927260398
	.quad	0x3fe84aa0f26236b2              # double 0.75910994854503699
	.quad	0x3fa7837fc10a0e90              # double 0.045925133051267442
	.quad	0x3fe3ce8eb786464a              # double 0.61896453709250321
	.quad	0x3fddc2701f24a372              # double 0.46499255219764912
	.quad	0x3fe2d2d3d856952d              # double 0.58823578122670528
	.quad	0x3fe7d3d47649cc49              # double 0.74460814574411771
	.quad	0x3febd70e761ad8f0              # double 0.87000201289518309
	.quad	0x3fe6662ce9871d13              # double 0.69997258768936133
	.quad	0x3feefce89e0e7db3              # double 0.96837263937407269
	.quad	0x3faa7bc637470590              # double 0.051725572822316157
	.quad	0x3fba6a257ece3a08              # double 0.10318216653670487
	.quad	0x3fe51506bafcde85              # double 0.65881668587731268
	.quad	0x3fe47f055c112d2c              # double 0.64050548536161989
	.quad	0x3fb3dbba23c0a370              # double 0.077571519592891879
	.quad	0x3fce5536d4ba68a4              # double 0.2369755305015292
	.quad	0x3fb1400f717af7a8              # double 0.067383732991372569
	.quad	0x3fe20a7d82240973              # double 0.56378055017584783
	.quad	0x3fe70fef1d5f5673              # double 0.72069507347869288
	.quad	0x3fdaacad3db7691e              # double 0.41678935076710555
	.quad	0x3fef682fe22d8971              # double 0.98146814513556368
	.quad	0x3fd50277cb11a6b4              # double 0.32827563124611037
	.quad	0x3fd1a34792c0c8d8              # double 0.2755907948623082
	.quad	0x3fe7d2eb9f15bc08              # double 0.74449711867589574
	.quad	0x3fe177b00e3150a5              # double 0.54586031696318982
	.quad	0x3fee8cad3e5617d9              # double 0.95467245268877854
	.quad	0x3fe358258bfcc8af              # double 0.60451009122177435
	.quad	0x3feac0757b7b52a0              # double 0.83599351995015425
	.quad	0x3fc1bf72f3a790e4              # double 0.13865506074137735
	.quad	0x3f946e2ced099760              # double 0.019951536147707727
	.quad	0x3fede0ed805c5a8f              # double 0.93370699949703517
	.quad	0x3fed4ecf3d2a413e              # double 0.91587030359554666
	.quad	0x3fd05da34a79e658              # double 0.25571520112098289
	.quad	0x3fe356ece635eab0              # double 0.60436100924501623
	.quad	0x3fc59fae29f4cbe0              # double 0.16893555687565165
	.quad	0x3fdca01d33c0e2cc              # double 0.44727258733796016
	.quad	0x3fcc692647e847c0              # double 0.22195890914059468
	.quad	0x3fdd518dcb8c275a              # double 0.45810265424426222
	.quad	0x3feec73eb50853bc              # double 0.96182189329066813
	.quad	0x3fd416c580e66464              # double 0.31388986194503432
	.quad	0x3fdf5d8aaa817846              # double 0.49008433009101215
	.quad	0x3fe219d89dd03a36              # double 0.56565504858901394
	.quad	0x3fe70f41d3ada987              # double 0.72061244338446862
	.quad	0x3fb178fdf112fe20              # double 0.068252440792087032
	.quad	0x3fd81d94f532e03c              # double 0.37680553384007331
	.quad	0x3fb69dd2790e2968              # double 0.088345675043603245
	.quad	0x3fe6388d60313082              # double 0.69440335071114156
	.quad	0x3fc2b52ac9b01394              # double 0.14615378234898613
	.quad	0x3fee9260d5971867              # double 0.95536843983496744
	.quad	0x3fb2ed8d06527130              # double 0.07393723873469038
	.quad	0x3fb2224e195a4190              # double 0.07083595389327102
	.quad	0x3fec47754a322311              # double 0.88372292033554534
	.quad	0x3fd9031b46896360              # double 0.39081460846278127
	.quad	0x3fe29c5170d46d45              # double 0.58158180272167981
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
