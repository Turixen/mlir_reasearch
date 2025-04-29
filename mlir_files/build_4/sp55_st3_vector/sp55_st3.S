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
	.quad	45                              # 0x2d
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
	lui	a6, %hi(.L__constant_45xindex)
	addi	a6, a6, %lo(.L__constant_45xindex)
	lui	a7, %hi(.L__constant_45xf64)
	addi	a7, a7, %lo(.L__constant_45xf64)
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
	addi	a1, a1, -768
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_45xindex,@object   # @__constant_45xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_45xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.size	.L__constant_45xindex, 360

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.size	.L__constant_11xindex, 88

	.type	.L__constant_45xf64,@object     # @__constant_45xf64
	.p2align	6, 0x0
.L__constant_45xf64:
	.quad	0x401ad9ef5232d2bb              # double 6.7128269999999999
	.quad	0x401e6f51697f1f9b              # double 7.6087090000000001
	.quad	0x40138d61f5be5d9e              # double 4.8880689999999998
	.quad	0x40213113404ea4a9              # double 8.5958500000000004
	.quad	0x4009186f47b677f7              # double 3.1369310000000001
	.quad	0x3fd765e4606748e4              # double 0.36559399999999997
	.quad	0x40235fa43fe5c91d              # double 9.6867999999999998
	.quad	0x4023bb4b51372a39              # double 9.8658090000000004
	.quad	0x3fd7d3a604e1e710              # double 0.37229299999999999
	.quad	0x400afdb65ecc3e32              # double 3.3738830000000002
	.quad	0x4010cc5cdd50a88f              # double 4.199573
	.quad	0x401ed8283d35eb74              # double 7.7110909999999997
	.quad	0x401564e7685985ad              # double 5.3485389999999997
	.quad	0x400a2b93ccd0fe8b              # double 3.2712780000000001
	.quad	0x401f02135daad602              # double 7.752027
	.quad	0x4022b0e6f2e8c048              # double 9.3455119999999993
	.quad	0x400e8258d5842b73              # double 3.8136459999999999
	.quad	0x401388112ba16e7a              # double 4.8828779999999998
	.quad	0x4008d66c6de76428              # double 3.1046990000000001
	.quad	0x400b785c67dfe32a              # double 3.43377
	.quad	0x4021e303c07ee0b1              # double 8.9433880000000006
	.quad	0x40171578e5c4eb57              # double 5.770969
	.quad	0x402379ae70c1333c              # double 9.7376590000000007
	.quad	0x401b2f9fcb0c026d              # double 6.7965080000000002
	.quad	0x400154aba3875925              # double 2.1663429999999999
	.quad	0x400e8919ef954eb1              # double 3.8169439999999999
	.quad	0x40151d933e35c5b5              # double 5.2788820000000003
	.quad	0x400cb08bb906466b              # double 3.5862039999999999
	.quad	0x4021633e1437c569              # double 8.6938329999999997
	.quad	0x4016af08893b7d85              # double 5.6709310000000004
	.quad	0x401a2107faa044af              # double 6.5322570000000004
	.quad	0x4011931550ca1cef              # double 4.3936359999999999
	.quad	0x3fd6ffde7210be94              # double 0.35936699999999999
	.quad	0x40232b3700474d9c              # double 9.5844039999999992
	.quad	0x402102ab8a5ce5b4              # double 8.5052149999999997
	.quad	0x3fe5ae3e6c4c5975              # double 0.67752000000000001
	.quad	0x401066e08f217093              # double 4.1004659999999999
	.quad	0x400b06f9b994e1a4              # double 3.378406
	.quad	0x3fe8df266ba493c9              # double 0.77724000000000004
	.quad	0x4011824463065f96              # double 4.3772140000000004
	.quad	0x401dcd9be4cd7492              # double 7.4507899999999996
	.quad	0x3ffdd54003254e6e              # double 1.864563
	.quad	0x4023f151e75360d0              # double 9.9713279999999997
	.quad	0x3ff6b215fcc1871e              # double 1.4184779999999999
	.quad	0x4003efa615a8deb1              # double 2.492016
	.size	.L__constant_45xf64, 360

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x3fd7ef73699fe4ec              # double 0.37398991885090882
	.quad	0x3fec09aa6568ddb6              # double 0.8761798840195556
	.quad	0x402297051cb9f786              # double 9.2949608780870783
	.quad	0x4022937bb0cae5df              # double 9.2880530593565123
	.quad	0x4014e5060f2953ea              # double 5.2236559266066056
	.quad	0x4020a1ac8953b0ea              # double 8.315769473520465
	.quad	0x401872c2b9412a57              # double 6.112070936777477
	.quad	0x40221bfb1e4ba656              # double 9.0546502559038053
	.quad	0x401668e7f9c18d84              # double 5.6024474167237521
	.quad	0x4022589bf6a4b4d2              # double 9.1730649066979915
	.quad	0x4006a0e82bd014b6              # double 2.8285678313137295
	.quad	0x4002c8190348c5c3              # double 2.3477039581855208
	.quad	0x3feb9a54a53c1d4c              # double 0.8625891902201288
	.quad	0x3fe2ac8ce7172694              # double 0.58356328139162139
	.quad	0x3fecb5b227760380              # double 0.89717967707848345
	.quad	0x4013a313a1c39d8e              # double 4.9092545772213168
	.quad	0x3fe6610857942042              # double 0.69934479813765216
	.quad	0x3ffd3530a4ccdd1f              # double 1.8254858434209564
	.quad	0x3fd64be8b9e1b190              # double 0.34838312294484641
	.quad	0x3fd02c1ab281776c              # double 0.25269191200447128
	.quad	0x4021c8f51a3c5ada              # double 8.8924949835467721
	.quad	0x4023c7ff9a904045              # double 9.8906219769561491
	.quad	0x4016a49b6b5872b6              # double 5.660749127648776
	.quad	0x4010a662da23e1de              # double 4.1624864658737959
	.quad	0x401dd8a19775ec8e              # double 7.4615539231991885
	.quad	0x40219c41055e4bc5              # double 8.8051835706336394
	.quad	0x3fe2f6ef9de291ea              # double 0.59264355503961252
	.quad	0x40023d934c7f3b8c              # double 2.280066106446105
	.quad	0x40229dc9e515f7a0              # double 9.3081809605899366
	.quad	0x4015a30dbf912cc7              # double 5.4092321331365332
	.quad	0x401da0b8a42be6bc              # double 7.4069543506427031
	.quad	0x401a57bc8c63e72b              # double 6.5856801925636246
	.quad	0x40069060aa2441d4              # double 2.8204968731226732
	.quad	0x401fddff4812d086              # double 7.966794134281491
	.quad	0x40225f052b999cec              # double 9.1855863213554229
	.quad	0x401d7e300cfb406c              # double 7.3732301739074551
	.quad	0x3fff745e776088df              # double 1.9659104026000518
	.quad	0x4021549a282d06af              # double 8.6652386240924368
	.quad	0x4013377ed46f63a9              # double 4.8041947548853523
	.quad	0x40205dc763d8f3e9              # double 8.1831618501982621
	.quad	0x40154599f20fc5ce              # double 5.31797006818074
	.quad	0x401b4cc5f6d3de7c              # double 6.8249739233793854
	.quad	0x4021a00010224c03              # double 8.8125004808298453
	.quad	0x401a6dc8ae8fa344              # double 6.6072108531159905
	.quad	0x3ffd283b62608b45              # double 1.8223222582680176
	.quad	0x400929e97f93268e              # double 3.1454648939878274
	.quad	0x40231cf07f353ddf              # double 9.556522345780591
	.quad	0x401b9bcf2caac131              # double 6.9021574954243059
	.quad	0x3fc80e0dc59f0d00              # double 0.18792888783909945
	.quad	0x401e25498e4a8f57              # double 7.5364134057052387
	.quad	0x4012c5dd8219903c              # double 4.6932277992346449
	.quad	0x4011dc0ac9890c64              # double 4.4648849000833231
	.quad	0x400bfcffb34ba8a6              # double 3.4985345847572544
	.quad	0x4000381f70899298              # double 2.0274037162765346
	.quad	0x4020a2ac77edde49              # double 8.317722080027254
	.quad	0x40203b7b8902f3c6              # double 8.1161768737891968
	.quad	0x3fc8ac39389e9658              # double 0.19275584473250507
	.quad	0x401dc857b7fbd698              # double 7.4456471202335237
	.quad	0x40020464b095254e              # double 2.2521451755061781
	.quad	0x401aae7baa479233              # double 6.6703936201270606
	.quad	0x401883612d58cfca              # double 6.1283003888565393
	.quad	0x40239cf3bac8f6b9              # double 9.8065470094983187
	.quad	0x4016be38d0a66aec              # double 5.6857636071751863
	.quad	0x3ffef89410196bd3              # double 1.9356880787733999
	.quad	0x4020cf3b13a76fd5              # double 8.4047475950136832
	.quad	0x3ffc9b57586e95d0              # double 1.7879250959753001
	.quad	0x4015469894669e34              # double 5.3189414203293843
	.quad	0x4010cf58b161b53b              # double 4.2024867740522565
	.quad	0x3fd56591f2cc7cbc              # double 0.33432434759920304
	.quad	0x401f4f64e17b4a84              # double 7.8275332671643163
	.quad	0x400ee28fc9be9899              # double 3.8606258164682683
	.quad	0x400f22fc8066cfa6              # double 3.8920831710219828
	.quad	0x3fe155358c3ea99a              # double 0.5416515101581354
	.quad	0x3fd7e2b6a4fa5064              # double 0.37321249114143584
	.quad	0x3fdabbcfda777b14              # double 0.41771313032761381
	.quad	0x400a3288487a5234              # double 3.2746740019158782
	.quad	0x401e0d896a5558ff              # double 7.5132195105163637
	.quad	0x4016000405fca557              # double 5.5000153480007929
	.quad	0x40172c5dab2f53b6              # double 5.793326067699061
	.quad	0x3ff97cdccbbeacf6              # double 1.5929840048582355
	.quad	0x4021529d7db1f943              # double 8.6613578109505678
	.quad	0x400e833ec3af5248              # double 3.8140845573309754
	.quad	0x400521d11f46d808              # double 2.6415121501440844
	.quad	0x402251143f503a1d              # double 9.158357599776588
	.quad	0x3fb679a6ca3da850              # double 0.087793754935462375
	.quad	0x401e99588c0eccd0              # double 7.6497518428834184
	.quad	0x4020a0559e0b21e7              # double 8.313153208598079
	.quad	0x4014813c1da48fe7              # double 5.1262058860483881
	.quad	0x401d36a9c31f1091              # double 7.3033819663725277
	.quad	0x400840aedce3355a              # double 3.0315835244024756
	.quad	0x401bfe5ec4b11a20              # double 6.9984083874792589
	.quad	0x4004f7e782398d0c              # double 2.6210470365346108
	.quad	0x400f8ae303835c88              # double 3.9428158068145116
	.quad	0x3ff0838cebb57f00              # double 1.0321168143636328
	.quad	0x40069186c8a45f80              # double 2.8210578608668015
	.quad	0x401f2d7c69962973              # double 7.7944199083234364
	.quad	0x4002f95f49da54d8              # double 2.3717637796167814
	.quad	0x40228fe31afc4ee0              # double 9.2810295517915051
	.quad	0x400bb81e3d8af483              # double 3.4649014289885272
	.quad	0x4013a6a066027c33              # double 4.9127212466255967
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
