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
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	sd	s11, 8(sp)                      # 8-byte Folded Spill
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
	ld	s10, 224(sp)
	ld	a6, 320(sp)
	ld	t0, 312(sp)
	ld	t1, 304(sp)
	ld	t2, 296(sp)
	ld	t3, 288(sp)
	ld	s11, 280(sp)
	ld	t4, 272(sp)
	ld	s4, 144(sp)
	lwu	a1, 0(a2)
	lwu	a3, 4(a2)
	lwu	a4, 8(a2)
	lwu	a2, 12(a2)
	csrr	a5, vlenb
	li	t5, 10
	li	t6, 80
	slli	a3, a3, 32
	or	s3, a3, a1
	li	s9, 9
	vsetvli	a1, zero, e32, m2, ta, ma
	vid.v	v8
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	ra, a5, 2
	srli	a2, a5, 1
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	s3, s3, 1
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	bge	s3, s2, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	li	s7, 0
	li	s8, 0
	slli	a3, s3, 3
	add	a3, a3, a7
	lwu	a4, 4(a3)
	lwu	a3, 0(a3)
	slli	a4, a4, 32
	or	a3, a3, a4
	mul	s5, s3, t5
	mul	s6, a3, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s0, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	a5, s6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a3
	add	a3, s11, a5
	vmv4r.v	v16, v12
	add	s1, s10, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a3), v0.t
	vle64.v	v20, (s1), v0.t
	add	s0, s0, a2
	add	a5, a5, ra
	add	a1, a1, ra
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a3), v0.t
	sub	a4, a4, a2
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, s0, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a4
	blt	a4, a2, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a2
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s11, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	ld	s11, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 112
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
	.quad	50                              # 0x32
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
	lui	a6, %hi(.L__constant_50xindex)
	addi	a6, a6, %lo(.L__constant_50xindex)
	lui	a7, %hi(.L__constant_50xf64)
	addi	a7, a7, %lo(.L__constant_50xf64)
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
	lui	a1, 40979
	addi	a1, a1, 512
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
	.quad	0x4013ec9270b69915              # double 4.9810273753594361
	.quad	0x4022b4dd3ac8375c              # double 9.3532503480343436
	.quad	0x4016f3ccbae46f93              # double 5.7380856706548853
	.quad	0x402373a642072491              # double 9.7258778222770008
	.quad	0x401fd1471d8fa335              # double 7.9543728465003384
	.quad	0x4012508446a780f1              # double 4.5786295928703433
	.quad	0x4005c65ff831b4ea              # double 2.7218627348107605
	.quad	0x401370c039b0b987              # double 4.8601082815279204
	.quad	0x4006aed687fda1e0              # double 2.8353701233174746
	.quad	0x40128f0ba9ad5bc8              # double 4.6396929275569576
	.quad	0x40219205d52d3cce              # double 8.7852007501336651
	.quad	0x401493e69b0a0ee2              # double 5.1444343781365394
	.quad	0x401982f9adf9f292              # double 6.3779055770688888
	.quad	0x3ffd682b628d8af2              # double 1.8379320001337729
	.quad	0x401d95d2abf7d4ba              # double 7.3963114614500061
	.quad	0x40122b0ea1bdc62f              # double 4.5420480033949806
	.quad	0x40122ac88b758dc2              # double 4.5417806425570593
	.quad	0x40223c7651bdf9d5              # double 9.1180902046589072
	.quad	0x40233eb620a80230              # double 9.6224832730377727
	.quad	0x3fed3addc26e1156              # double 0.9134358212909699
	.quad	0x401b0ae34ac8424c              # double 6.7606326756218316
	.quad	0x401958a013d5ccb4              # double 6.3365481471293386
	.quad	0x401e3edec95adf4a              # double 7.5613967382158283
	.quad	0x401421f1b922c892              # double 5.0331486632805014
	.quad	0x40225c061c393aa0              # double 9.1797341174945473
	.quad	0x3ff2ae2ea7639980              # double 1.1675249613413996
	.quad	0x401916b7275c314a              # double 6.2721830511112078
	.quad	0x40041f07902540a2              # double 2.5151511441582253
	.quad	0x402245796cd5e746              # double 9.1356920252907337
	.quad	0x401d68df396b5fa1              # double 7.3524140331063856
	.quad	0x4000185f1dd2f7a9              # double 2.0119001703269146
	.quad	0x401858d36e619088              # double 6.0867440459297839
	.quad	0x4022916a21fc81d3              # double 9.2840128536926496
	.quad	0x4000e01bca0e061c              # double 2.1094280038385147
	.quad	0x4017a9f953d124b0              # double 5.9159901710892626
	.quad	0x3feff51079b030d0              # double 0.99866508261905018
	.quad	0x402242ed2881edb1              # double 9.1307156237224678
	.quad	0x3ffd696690365bdc              # double 1.8382325776381014
	.quad	0x3fd71a654ed1bef8              # double 0.36098606774520148
	.quad	0x4021b293cb83c18a              # double 8.848783836205957
	.quad	0x401083c1db91720c              # double 4.1286691958926092
	.quad	0x401789f5ddda17df              # double 5.8847269691813997
	.quad	0x4023216b8221bc65              # double 9.5652733484441316
	.quad	0x400e2f760b272b7f              # double 3.7731743689850528
	.quad	0x40214f446899c912              # double 8.6548187911726338
	.quad	0x40133b8d1fd8102a              # double 4.8081555343269802
	.quad	0x4017248f5a6fd66b              # double 5.7857030993232952
	.quad	0x40077070caa14489              # double 2.9299026327576638
	.quad	0x40027ea2a10b4f26              # double 2.311833627851132
	.quad	0x40163dabbbaa5819              # double 5.5602254221648986
	.quad	0x401919fae2daf4c1              # double 6.2753711172237567
	.quad	0x40082496592d0234              # double 3.0178648917065178
	.quad	0x401d87c5ef347d4e              # double 7.3825909972941428
	.quad	0x40109ad8e23a0a9e              # double 4.1512179706502632
	.quad	0x4018c0a367a442c8              # double 6.1881233400351405
	.quad	0x4000cc39b793fed8              # double 2.099719461635555
	.quad	0x40206a5d8dd21dab              # double 8.2077450102795719
	.quad	0x3fe23f421c19922c              # double 0.57022195328005898
	.quad	0x3fab56d318c3cdc0              # double 0.053396794102720246
	.quad	0x40218333520ee0ab              # double 8.7562509196435112
	.quad	0x40209ad98059462b              # double 8.3024406537034192
	.quad	0x400db23c08921062              # double 3.7120285672736353
	.quad	0x4021b45c729a65e9              # double 8.8522678197359301
	.quad	0x3ff3a86a18133f6f              # double 1.2286168041645984
	.quad	0x400b3cf7eb83e45a              # double 3.4047697448373073
	.quad	0x401d393b17a00d46              # double 7.3058894816816231
	.quad	0x4022d389a1e3a4ca              # double 9.4131594267259011
	.quad	0x3ff2af4413502dc8              # double 1.1677895311757869
	.quad	0x3ff69ce53ba743a5              # double 1.4133045511445996
	.quad	0x40207075735cc520              # double 8.2196460772270825
	.quad	0x401456a2266e8626              # double 5.0846029286345011
	.quad	0x400ae5910228e14c              # double 3.3620929878926855
	.quad	0x3ff83a5b5340903d              # double 1.5142472507514093
	.quad	0x401d0f42a87f003e              # double 7.2649027183070398
	.quad	0x3feb4480aaea3c62              # double 0.85211213476021563
	.quad	0x401c3f8f1cf86ad0              # double 7.0620693709012841
	.quad	0x40107534c259dbb1              # double 4.114459072813518
	.quad	0x400e2ce1219e1c34              # double 3.771913778913154
	.quad	0x401835fa13d4e025              # double 6.0527117823294576
	.quad	0x402235ff021774c8              # double 9.1054611829407719
	.quad	0x40217360707c612a              # double 8.7253451492147924
	.quad	0x40065f12cfee5cad              # double 2.7964226002328219
	.quad	0x3fed40a338bcbf4a              # double 0.91414033013823226
	.quad	0x4012aa6d16db8750              # double 4.6664317676057436
	.quad	0x40213e743341a8bd              # double 8.621980287327796
	.quad	0x400b009f8aaf4888              # double 3.3753043017141557
	.quad	0x4017cbe465d58304              # double 5.9491134559218644
	.quad	0x3ff553593f383a1e              # double 1.3328487844006598
	.quad	0x40139f0edb9b1336              # double 4.9053301156425757
	.quad	0x40167d5e4266527e              # double 5.6224298834755455
	.quad	0x4022e32b8206e2bf              # double 9.4436913140683582
	.quad	0x400c7bff1b34b4e4              # double 3.5605451703510074
	.quad	0x401f245953bb3cae              # double 7.7854970057516493
	.quad	0x3fd7f08c7cd9e598              # double 0.3740569323777776
	.quad	0x3ff4a882751e454c              # double 1.2911400389605943
	.quad	0x401d7aba57063c42              # double 7.3698514554553771
	.quad	0x4011e1c16ece65be              # double 4.4704644502139086
	.quad	0x401218b4286e3832              # double 4.5241247479698803
	.quad	0x400b1bd33259c7c5              # double 3.3885864194535054
	.quad	0x3ffd8de1725ec2da              # double 1.8471388309082415
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x4021339170d62bf1              # double 8.6007189999999998
	.quad	0x4016774d594f26af              # double 5.6165060000000002
	.quad	0x402240c154c985f0              # double 9.1264749999999992
	.quad	0x4015921bc126a65d              # double 5.392684
	.quad	0x400bdbfdf7e8038a              # double 3.482418
	.quad	0x3ffa99934efcbd55              # double 1.6624939999999999
	.quad	0x401f97e02645e4e7              # double 7.8983160000000003
	.quad	0x4023c0a19c9d5a18              # double 9.8762329999999991
	.quad	0x4022f745e0b4e11e              # double 9.4829550000000005
	.quad	0x400ebe9fadafd114              # double 3.8430780000000002
	.quad	0x401d664388ebcc6c              # double 7.3498669999999997
	.quad	0x401a583b1d0c8041              # double 6.586163
	.quad	0x401fc5810624dd2f              # double 7.9428749999999999
	.quad	0x3fe4f63c31df761d              # double 0.65505800000000003
	.quad	0x401a5d6909aed56b              # double 6.591221
	.quad	0x3fe23cdfefbf401c              # double 0.56993099999999997
	.quad	0x4016894c87980f56              # double 5.6340810000000001
	.quad	0x3ff4da0168b5cbff              # double 1.3032239999999999
	.quad	0x400ecb3cc4ac6cdb              # double 3.849237
	.quad	0x3fc05e5f30e7ff58              # double 0.12787999999999999
	.quad	0x400891a5ca29845e              # double 3.0711170000000001
	.quad	0x401e738476f2a5a4              # double 7.6128099999999996
	.quad	0x4022e4dc22ab25b3              # double 9.4469919999999998
	.quad	0x40104d15f02c4d66              # double 4.0752790000000001
	.quad	0x401523f4666ec9e2              # double 5.2851119999999998
	.quad	0x4006ff266ba493c9              # double 2.8745850000000002
	.quad	0x40118119ce075f70              # double 4.3760750000000002
	.quad	0x40150eaf6837f7be              # double 5.2643409999999999
	.quad	0x402110c4588a04d1              # double 8.5327479999999998
	.quad	0x400a578f68be2f7b              # double 3.292754
	.quad	0x40114eae5bc87db3              # double 4.3268370000000003
	.quad	0x40222d0f6273929f              # double 9.0880080000000003
	.quad	0x3fc806290eed02cd              # double 0.18768799999999999
	.quad	0x402085abc0e38a7e              # double 8.2610759999999992
	.quad	0x401aaddd6e04c059              # double 6.6697899999999999
	.quad	0x4000217763e4abe7              # double 2.0163410000000002
	.quad	0x40216184e3ffef39              # double 8.6904669999999999
	.quad	0x4000ba52263d816b              # double 2.0909770000000001
	.quad	0x401788cfbfc6540d              # double 5.8836050000000002
	.quad	0x400c58a222d5171e              # double 3.5432779999999999
	.quad	0x40176d30f062d40b              # double 5.8566320000000003
	.quad	0x4022a5fdcdf69878              # double 9.3242019999999996
	.quad	0x401941b0468448cf              # double 6.3141489999999996
	.quad	0x401ee601797cc3a0              # double 7.724615
	.quad	0x3fd34c942d490e67              # double 0.30154900000000001
	.quad	0x40219d810624dd2f              # double 8.8076249999999998
	.quad	0x4020940d4dc65c70              # double 8.2891639999999995
	.quad	0x4018a6cb5350092d              # double 6.1628850000000002
	.quad	0x401a362b6ae7d567              # double 6.5529000000000002
	.quad	0x401270574b407033              # double 4.6097080000000004
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
