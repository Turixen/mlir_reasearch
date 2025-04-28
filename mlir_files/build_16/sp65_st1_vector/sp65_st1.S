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
	.quad	35                              # 0x23
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
	lui	a6, %hi(.L__constant_35xindex)
	addi	a6, a6, %lo(.L__constant_35xindex)
	lui	a7, %hi(.L__constant_35xf64)
	addi	a7, a7, %lo(.L__constant_35xf64)
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
	lui	a1, 40978
	addi	a1, a1, 768
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3ff3e5d53a79d50c              # double 1.2436115535941239
	.quad	0x4021277bbbc8fde2              # double 8.5771158869601472
	.quad	0x400a05045da2834c              # double 3.252449733278274
	.quad	0x4008c4fd7934562b              # double 3.0961865872475491
	.quad	0x401476e485e05d26              # double 5.1161061208906968
	.quad	0x401e2f34c0e90bb2              # double 7.5460996763458059
	.quad	0x4017331ae3148867              # double 5.7999072533876648
	.quad	0x4012708ff7e52f69              # double 4.6099241956361334
	.quad	0x400502035cc46e0b              # double 2.6259829757161746
	.quad	0x40019a0f87d17d41              # double 2.2002249346548131
	.quad	0x40007b3decfcda6a              # double 2.0601767077126185
	.quad	0x4022ca273fb74152              # double 9.3948306952667373
	.quad	0x40131b913911f838              # double 4.7769211690156723
	.quad	0x401c86de5480e5be              # double 7.131707496993327
	.quad	0x3ff5860f6484b4df              # double 1.3452295233249101
	.quad	0x3fbc275218913400              # double 0.109974986074306
	.quad	0x400020c4c3d7b476              # double 2.0160002994730872
	.quad	0x401bdf86f1daddd8              # double 6.968288210853153
	.quad	0x3fe9a7ecf51ddaa0              # double 0.80174873232211396
	.quad	0x3fe6ed8b767bf272              # double 0.71649716512145134
	.quad	0x4021c0031a46b664              # double 8.87502367127599
	.quad	0x4021aea3ccfff1bf              # double 8.8410934507782013
	.quad	0x401b0304423cb1df              # double 6.7529459332986042
	.quad	0x4014d48641b3c49e              # double 5.2075433984729482
	.quad	0x401a180deb01ee3f              # double 6.5234905929497122
	.quad	0x3fff827595918339              # double 1.9693504183307609
	.quad	0x4014ba9d8af9121b              # double 5.1822416033287722
	.quad	0x4012f462f17ad5f4              # double 4.7386586886618609
	.quad	0x3ff18e2c976e8710              # double 1.097210494547145
	.quad	0x401d5135bbadaddf              # double 7.3293065380816804
	.quad	0x402247ddac88692c              # double 9.1403631130711673
	.quad	0x4003467453bf97a0              # double 2.4094015639156652
	.quad	0x3ffd038c0763d068              # double 1.8133659638088151
	.quad	0x3ffb01331b2c7468              # double 1.687792879244876
	.quad	0x4016d421b325b35e              # double 5.7071598045120862
	.quad	0x3fde6ed3dc880440              # double 0.47551437889348236
	.quad	0x401b579f759de8c4              # double 6.8355692269926216
	.quad	0x40215f44df8daf5e              # double 8.6860723362403256
	.quad	0x3fcee539cdad2900              # double 0.24137041609566978
	.quad	0x4023fe44fb4556b0              # double 9.9966200372831224
	.quad	0x4011a2e14bdd296a              # double 4.4090625623451647
	.quad	0x3fb5749a860f1a90              # double 0.083810479859588449
	.quad	0x3ff1c0d659b3ad92              # double 1.1095794204692067
	.quad	0x4017752479c42f7d              # double 5.8643969560615661
	.quad	0x401781c5ae892ae0              # double 5.876730658647574
	.quad	0x4019668311906d18              # double 6.3501093620682454
	.quad	0x400392e02db84c83              # double 2.44671664923368
	.quad	0x401dbd383960dbd0              # double 7.4347847905509781
	.quad	0x4017a94e29617038              # double 5.9153372255059864
	.quad	0x3fe82efaf72852f6              # double 0.75573490403129884
	.quad	0x40235f9d8863547f              # double 9.6867487546207922
	.quad	0x4023d577e7b9a9a9              # double 9.9169304288996773
	.quad	0x401c91170b5010b2              # double 7.1416894691102915
	.quad	0x401e59ae148b1aec              # double 7.5875781259444288
	.quad	0x4023072f1c9550a1              # double 9.5140313083905443
	.quad	0x4012abd9768656f4              # double 4.6678217429632589
	.quad	0x40106c86cef8bd31              # double 4.1059830035513167
	.quad	0x4006ad6e148e25b2              # double 2.8346826177482507
	.quad	0x400970c53304a422              # double 3.1800636277953496
	.quad	0x401c30566af7ec37              # double 7.0472046579189316
	.quad	0x400a847d44a7bcd4              # double 3.3146920551003891
	.quad	0x401e766ef667c9de              # double 7.6156576634261608
	.quad	0x4020a10be38e3b3f              # double 8.3145438300249435
	.quad	0x402031e5b383efac              # double 8.0974556063227609
	.quad	0x4021d1def573f9d6              # double 8.9099041656562967
	.quad	0x4023834d3fcd1430              # double 9.7564487397995379
	.quad	0x4022c0eb3213ba78              # double 9.3767944001276504
	.quad	0x4012bb8df382050b              # double 4.6831586883647658
	.quad	0x4017d62c77734338              # double 5.9591540016270343
	.quad	0x40198772eceec32c              # double 6.3822743435601232
	.quad	0x4023b5da15dabf88              # double 9.8551794843222211
	.quad	0x3ffb117d6134371b              # double 1.6917699620275417
	.quad	0x401713a29699812b              # double 5.7691749125663518
	.quad	0x4015a89db981374c              # double 5.4146641717068853
	.quad	0x4011a4cf1b5a9687              # double 4.410946299938252
	.quad	0x40123b8c428ee73e              # double 4.5581522369118925
	.quad	0x40184d8a2c1ae3e1              # double 6.0757223979389616
	.quad	0x3ff827555d689722              # double 1.5096028946658824
	.quad	0x401654759229a47e              # double 5.5824797475735277
	.quad	0x4003959abc08e3bc              # double 2.4480490389073264
	.quad	0x4020b53450f86f63              # double 8.3539147666230686
	.quad	0x401e1a1824878e92              # double 7.5254827220666289
	.quad	0x401fb7008c9231a2              # double 7.9287130321721708
	.quad	0x4017cc65910cc4cb              # double 5.9496061958354387
	.quad	0x4022b70942aee480              # double 9.3574925268642346
	.quad	0x401ce13d5f9160ba              # double 7.2199606831056204
	.quad	0x3fddb898c59fd86c              # double 0.46439189242608481
	.quad	0x4019bda23055fec6              # double 6.4351890137183485
	.quad	0x4013f7051d7379e2              # double 4.9912304498415967
	.quad	0x40055293e38832ea              # double 2.6653211379947281
	.quad	0x3fd30628c35a1f90              # double 0.29725092961643274
	.quad	0x40230e31aa0c8247              # double 9.5277226581830642
	.quad	0x4016725ddb773fe1              # double 5.6116861621412406
	.quad	0x40224b74b7f774b0              # double 9.1473748673982698
	.quad	0x400b231349909a82              # double 3.3921266314749241
	.quad	0x400c1693cac94664              # double 3.5110240786241764
	.quad	0x3fd9b9b588757054              # double 0.40195978475617733
	.quad	0x401c2739bc50fa0a              # double 7.0383061813759102
	.quad	0x401b33147db82fba              # double 6.7998828548115231
	.quad	0x4004b3bf839370a2              # double 2.5877676276559933
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x4018a10a137f38c5              # double 6.1572649999999998
	.quad	0x402295b2b346130a              # double 9.2923790000000004
	.quad	0x400342b302f72b45              # double 2.4075679999999999
	.quad	0x400869d388a8b08e              # double 3.0516730000000001
	.quad	0x3fe3260913a4f872              # double 0.59839299999999995
	.quad	0x40157501e2584f4c              # double 5.3642649999999996
	.quad	0x4023e4947064ecea              # double 9.9464450000000006
	.quad	0x4023a23c64345cff              # double 9.8168670000000002
	.quad	0x4019ee92923e5b85              # double 6.4829809999999997
	.quad	0x3ff9d21dda059a74              # double 1.6137980000000001
	.quad	0x401e065300581494              # double 7.506176
	.quad	0x40232add9c27e953              # double 9.5837219999999998
	.quad	0x4012ea2163fdd65a              # double 4.7286429999999999
	.quad	0x3fd855475a31a4be              # double 0.38020500000000002
	.quad	0x3fda12d3415b1423              # double 0.40739900000000001
	.quad	0x400b007a28bb0a2d              # double 3.3752330000000001
	.quad	0x400b141d084e831b              # double 3.3848210000000001
	.quad	0x4023bd3c36113405              # double 9.8696000000000001
	.quad	0x40217e6d7a56de33              # double 8.7469289999999997
	.quad	0x401954c404a72eae              # double 6.3327790000000004
	.quad	0x40218959a30984e4              # double 8.768262
	.quad	0x3fc81f18c9fb6135              # double 0.18844900000000001
	.quad	0x401ff52157689ca2              # double 7.9893850000000004
	.quad	0x401e108feac42e99              # double 7.5161740000000003
	.quad	0x4022fad538ac18f8              # double 9.4899079999999997
	.quad	0x401b46922d948dc1              # double 6.8189169999999999
	.quad	0x40223f507e9d94d1              # double 9.1236610000000002
	.quad	0x4011c6a6e32e3822              # double 4.4439960000000003
	.quad	0x40158d6a9c560c7c              # double 5.3881019999999999
	.quad	0x4018ce0f7fcfc3f8              # double 6.2012309999999999
	.quad	0x401d29ecb31c219f              # double 7.2909420000000003
	.quad	0x3ff8d8201cd5f99c              # double 1.552765
	.quad	0x4007dbc23315d702              # double 2.9823040000000001
	.quad	0x400938c7e28240b8              # double 3.1527250000000002
	.quad	0x3fe6b6523704790c              # double 0.70975600000000005
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
