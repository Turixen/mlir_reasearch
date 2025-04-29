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
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)                     # 8-byte Folded Spill
	sd	s0, 144(sp)                     # 8-byte Folded Spill
	sd	s1, 136(sp)                     # 8-byte Folded Spill
	sd	s2, 128(sp)                     # 8-byte Folded Spill
	sd	s3, 120(sp)                     # 8-byte Folded Spill
	sd	s4, 112(sp)                     # 8-byte Folded Spill
	sd	s5, 104(sp)                     # 8-byte Folded Spill
	sd	s6, 96(sp)                      # 8-byte Folded Spill
	sd	s7, 88(sp)                      # 8-byte Folded Spill
	sd	s8, 80(sp)                      # 8-byte Folded Spill
	sd	s9, 72(sp)                      # 8-byte Folded Spill
	sd	s10, 64(sp)                     # 8-byte Folded Spill
	sd	s11, 56(sp)                     # 8-byte Folded Spill
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
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xa0, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 160 + 16 * vlenb
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s10, 272(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 368(a1)
	sd	a1, 32(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 360(a1)
	sd	a1, 24(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a1, 352(a1)
	sd	a1, 16(sp)                      # 8-byte Folded Spill
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s11, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s4, 192(a1)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	li	s9, 9
	slli	a3, a3, 32
	or	s3, a3, a1
	slli	ra, a5, 4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	t1, a5, 1
	slli	t0, a5, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s5, 0
	li	s8, 0
	slli	a1, s3, 3
	add	a1, a1, a7
	lwu	a2, 4(a1)
	lwu	a1, 0(a1)
	slli	a2, a2, 32
	or	a1, a1, a2
	mul	s6, s3, t5
	mul	s7, a1, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s5, s5, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	add	a1, s8, s6
	slli	a1, a1, 3
	add	a1, a1, s4
	fld	fa5, 0(a1)
	li	a2, 10
	mv	s0, s5
	mv	a4, s7
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a6, zero, e32, m8, ta, ma
	vmv.v.x	v8, a1
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 48
	vs8r.v	v8, (a1)                        # Unknown-size Folded Spill
	add	a1, s11, a4
	vsetvli	a5, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a3, sp, 48
	vs8r.v	v8, (a3)                        # Unknown-size Folded Spill
	add	a5, s10, s0
	vsetvli	a3, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v0, (a3)                        # Unknown-size Folded Reload
	vsetvli	a3, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a3, vlenb
	slli	a3, a3, 3
	add	a3, a3, sp
	addi	a3, a3, 48
	vl8r.v	v16, (a3)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	a3, a1, t0
	vmv1r.v	v0, v6
	vle64.v	v8, (a3), v0.t
	csrr	a6, vlenb
	slli	a6, a6, 3
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v8, (a6)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a6, sp, 48
	vl8r.v	v24, (a6)                       # Unknown-size Folded Reload
	vle64.v	v24, (a1), v0.t
	vle64.v	v16, (a5), v0.t
	add	a5, a5, t0
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a5), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a5, vlenb
	slli	a5, a5, 3
	add	a5, a5, sp
	addi	a5, a5, 48
	vl8r.v	v24, (a5)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (a3), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (a1), v0.t
	add	s1, s1, t1
	add	a4, a4, ra
	add	s0, s0, ra
	sub	a2, a2, t1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a1, a2
	blt	a2, t1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a1, t1
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	ld	a1, 16(sp)                      # 8-byte Folded Reload
	sd	a1, 32(a0)
	ld	a1, 24(sp)                      # 8-byte Folded Reload
	sd	a1, 40(a0)
	ld	a1, 32(sp)                      # 8-byte Folded Reload
	sd	a1, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	sp, sp, a0
	.cfi_def_cfa sp, 160
	ld	ra, 152(sp)                     # 8-byte Folded Reload
	ld	s0, 144(sp)                     # 8-byte Folded Reload
	ld	s1, 136(sp)                     # 8-byte Folded Reload
	ld	s2, 128(sp)                     # 8-byte Folded Reload
	ld	s3, 120(sp)                     # 8-byte Folded Reload
	ld	s4, 112(sp)                     # 8-byte Folded Reload
	ld	s5, 104(sp)                     # 8-byte Folded Reload
	ld	s6, 96(sp)                      # 8-byte Folded Reload
	ld	s7, 88(sp)                      # 8-byte Folded Reload
	ld	s8, 80(sp)                      # 8-byte Folded Reload
	ld	s9, 72(sp)                      # 8-byte Folded Reload
	ld	s10, 64(sp)                     # 8-byte Folded Reload
	ld	s11, 56(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 160
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
	li	a0, 864
	call	malloc
	mv	s0, a0
	addi	a0, a0, 63
	andi	s1, a0, -64
	addi	a0, sp, 280
	call	assemble_sparse
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
	lui	t1, %hi(.L__constant_10x10xf64)
	addi	t1, t1, %lo(.L__constant_10x10xf64)
	lui	s1, 228023
	lui	t2, 4257
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 41121
	addi	s1, t2, -1526
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, -1536
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
	fld	fa5, 88(a0)
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
	.p2align	5, 0x0                          # -- Begin function assemble_sparse
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse
	.p2align	1
	.type	assemble_sparse,@function
assemble_sparse:                        # @assemble_sparse
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	li	t3, 10
	lui	a6, %hi(.L__constant_9xindex)
	addi	a6, a6, %lo(.L__constant_9xindex)
	lui	a7, %hi(.L__constant_9xf64)
	addi	a7, a7, %lo(.L__constant_9xf64)
	li	t0, 2
	lui	t2, 228023
	lui	a4, %hi(.LCPI2_0)
	addi	a4, a4, %lo(.LCPI2_0)
	addi	a5, a0, 56
	lui	t1, %hi(.LCPI2_1)
	addi	t1, t1, %lo(.LCPI2_1)
	addi	a3, a0, 16
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a4)
	addi	a4, a1, %lo(.L__constant_11xindex)
	ld	a1, %lo(.L__constant_11xindex+8)(a1)
	slli	t2, t2, 2
	addi	a2, t2, -273
	sd	a2, 0(a0)
	sd	a4, 8(a0)
	sd	a6, 48(a0)
	sd	a7, 88(a0)
	mul	a2, a1, t3
	sd	t3, 128(a0)
	sd	t0, 136(a0)
	sd	a1, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a5)
	vle64.v	v8, (t1)
	addi	a0, a0, 96
	lui	a1, 40977
	addi	a1, a1, -1792
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_9xindex,@object    # @__constant_9xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_9xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	6                               # 0x6
	.size	.L__constant_9xindex, 72

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.size	.L__constant_11xindex, 88

	.type	.L__constant_9xf64,@object      # @__constant_9xf64
	.p2align	6, 0x0
.L__constant_9xf64:
	.quad	0x401bc454152b0a70              # double 6.9417270000000002
	.quad	0x4011e3c2dadb8349              # double 4.472423
	.quad	0x40214965f5275eea              # double 8.6433560000000007
	.quad	0x401c8545c78a6dad              # double 7.1301490000000003
	.quad	0x40226e4e48626f61              # double 9.2154410000000002
	.quad	0x3ff86d8904f6dfc6              # double 1.526742
	.quad	0x4016be99e94ab1d5              # double 5.686134
	.quad	0x401c8f3b645a1cac              # double 7.139875
	.quad	0x40161a48301a79ff              # double 5.5256660000000002
	.size	.L__constant_9xf64, 72

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fda1d433294a0f0              # double 0.40803604068288646
	.quad	0x40235e13cc608c5c              # double 9.6837447994095597
	.quad	0x401dc42c91110fd7              # double 7.4415762583411924
	.quad	0x40234ad3894114e2              # double 9.6461451427407532
	.quad	0x40014a47cc9186c6              # double 2.1612697584067488
	.quad	0x3ff158acd1f3133e              # double 1.0841491891053034
	.quad	0x4017555df9f0aa48              # double 5.8333663037433965
	.quad	0x4012bc086f489df1              # double 4.6836259258338808
	.quad	0x40162b1f0ac64cc3              # double 5.5421106036694168
	.quad	0x401f5f93a094bfa0              # double 7.8433365908421422
	.quad	0x40152993145bcee8              # double 5.2906001263652129
	.quad	0x400ecf8220190042              # double 3.8513224132184698
	.quad	0x401df64c9a84ec52              # double 7.4905265945081556
	.quad	0x4020fa6f7a16e185              # double 8.4891317513399915
	.quad	0x40148a4a1abe518a              # double 5.1350483111058427
	.quad	0x4021fb113c8ee85c              # double 8.990365879483015
	.quad	0x3ff46a34e8ef2257              # double 1.2759293650616621
	.quad	0x401b1f9befe5b492              # double 6.7808682903243085
	.quad	0x40187c72bc988162              # double 6.1215314357835684
	.quad	0x4021cb43a9d6c97e              # double 8.8970006060305842
	.quad	0x401e6668bb1ed9d8              # double 7.60000889182853
	.quad	0x4022b8566f2b7741              # double 9.3600344410475617
	.quad	0x3ffe54aead40c0ad              # double 1.8956743972485512
	.quad	0x40218ba259d732f6              # double 8.7727230143732235
	.quad	0x3fd2109ecc812418              # double 0.28226442309511546
	.quad	0x4023402cc7a1843f              # double 9.6253416428245355
	.quad	0x4001d13358624cba              # double 2.2271487145422642
	.quad	0x3fd91cc222e17da4              # double 0.39238027006464393
	.quad	0x40168d4a5bcd5c3c              # double 5.637978968056867
	.quad	0x4008ac7c24482918              # double 3.0842211565515179
	.quad	0x3ff718af21505069              # double 1.4435263921086749
	.quad	0x401ae34249084002              # double 6.7219325457845134
	.quad	0x40160e217506b8cd              # double 5.5137995038368901
	.quad	0x401c1e5f638f7135              # double 7.0296607548046284
	.quad	0x4022649c72696e06              # double 9.1965060952852689
	.quad	0x400d2eead99dd066              # double 3.6479088784490612
	.quad	0x401f6ef8ac7420b1              # double 7.8583704896811221
	.quad	0x4012f073f9ace345              # double 4.7348174106380769
	.quad	0x40229ba02153a96e              # double 9.3039560713411582
	.quad	0x40176f339db86f93              # double 5.858595337278433
	.quad	0x4023fb8bc5e0a2bd              # double 9.991300758048391
	.quad	0x40027bc37ddf4bc2              # double 2.3104314645547399
	.quad	0x4004f9b57d8f75de              # double 2.6219281968503614
	.quad	0x402275d4e533cdcc              # double 9.2301398874032187
	.quad	0x3ff7705d438d5865              # double 1.4649326933627205
	.quad	0x3fa7b9e8cedf42a0              # double 0.046340251210158501
	.quad	0x40180acc9bce7aa5              # double 6.0105461449408368
	.quad	0x4020f30eab61a077              # double 8.474721294085823
	.quad	0x400894dada00ffaa              # double 3.0726830512575889
	.quad	0x4021710f5520b0f8              # double 8.7208201029211381
	.quad	0x3ff86742b55ac4f0              # double 1.5252101024782938
	.quad	0x3fde977282a0e448              # double 0.47799360996902296
	.quad	0x4021d3082e6de93e              # double 8.9121717938584162
	.quad	0x4012eeaa9e043c70              # double 4.7330727281651974
	.quad	0x40158531ffff7bac              # double 5.3800735473331933
	.quad	0x401a3ee8f6a276be              # double 6.5614355599079186
	.quad	0x401d61e54e4d59c2              # double 7.3456012949667997
	.quad	0x3ffa79de73453306              # double 1.654753160738609
	.quad	0x4022f81f8fa77435              # double 9.4846157924567737
	.quad	0x40109e0ad3734ffa              # double 4.1543381728297337
	.quad	0x402008e5c1d79b26              # double 8.0173779082957246
	.quad	0x40115b5a5ebc54f6              # double 4.3392119219254166
	.quad	0x40134b9169530ab6              # double 4.8237968880591122
	.quad	0x4017b5118b191a23              # double 5.9268247350760559
	.quad	0x400af217db868e8e              # double 3.3682095671118253
	.quad	0x401e5f0189f6a70e              # double 7.5927793080134176
	.quad	0x3fcf5b8642a0ea40              # double 0.24498060468052252
	.quad	0x3fd188628cdd8e38              # double 0.27394927746192677
	.quad	0x3fd1b24878f8e768              # double 0.27650653661441149
	.quad	0x3ff5193c71d5ce20              # double 1.3186611601530629
	.quad	0x3ff50ce4b9494665              # double 1.3156478154891371
	.quad	0x4020128da0e0273f              # double 8.0362367890953674
	.quad	0x3fdc5a5706afc944              # double 0.44301391270632373
	.quad	0x40001cf3057f0f24              # double 2.0141354016685842
	.quad	0x4015093512d57d93              # double 5.2589915221027637
	.quad	0x400d0d9f37d4ddfb              # double 3.6316513406597983
	.quad	0x40043a6c08e05ac8              # double 2.5285263722865672
	.quad	0x40205f9b4223c3a4              # double 8.1867314022691246
	.quad	0x401db7de5ae24c48              # double 7.4295591545697519
	.quad	0x3ff8a3216f97478e              # double 1.5398268088360711
	.quad	0x3fa9d619ada5b340              # double 0.050461580702949593
	.quad	0x3fe63402876457b6              # double 0.69384886211150021
	.quad	0x401cdd9ab48eaded              # double 7.2164104663929551
	.quad	0x3feeccc77f7fcb64              # double 0.9624974718302437
	.quad	0x401811a7185c7b63              # double 6.0172389799543877
	.quad	0x40203cd277751430              # double 8.1187932329576995
	.quad	0x4009b7861f432d8c              # double 3.2146112863899301
	.quad	0x401688744e86a166              # double 5.6332561750099099
	.quad	0x3fed930d5712bd7a              # double 0.92420069700703711
	.quad	0x4011c47204fbc9e6              # double 4.4418411997489553
	.quad	0x3ff65bccaf8c29ac              # double 1.397412000400986
	.quad	0x401fe4a4e933f40a              # double 7.9732853353461994
	.quad	0x40040d3654005d44              # double 2.5064512789355451
	.quad	0x3fc937447b5417c0              # double 0.19699913045786666
	.quad	0x40227e01a70ce939              # double 9.2461063578854112
	.quad	0x4019ee512b054e92              # double 6.4827315065373501
	.quad	0x4014b14952a035bf              # double 5.1731312666210547
	.quad	0x4019b0edf2266722              # double 6.4227826915683028
	.quad	0x4019342cddfe6765              # double 6.3009524046445664
	.quad	0x3feb7db33bc9ae50              # double 0.8590942542773039
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
