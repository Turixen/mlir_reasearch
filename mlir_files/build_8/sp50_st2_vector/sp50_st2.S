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
	csrr	s1, vlenb
	li	t5, 10
	li	t6, 80
	slli	a3, a3, 32
	or	s3, a3, a1
	li	s9, 9
	vsetvli	a1, zero, e32, m4, ta, ma
	vid.v	v4
	slli	a2, a2, 32
	or	s2, a2, a4
	slli	ra, s1, 3
	vsetvli	zero, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
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
	slli	a2, s3, 3
	add	a2, a2, a7
	lwu	a3, 4(a2)
	lwu	a2, 0(a2)
	slli	a3, a3, 32
	or	a2, a2, a3
	mul	s5, s3, t5
	mul	s6, a2, t6
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s8, s8, 1
	addi	s7, s7, 80
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	blt	s9, s8, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a2, 0
	add	a3, s8, s5
	slli	a3, a3, 3
	add	a3, a3, s4
	fld	fa5, 0(a3)
	li	a4, 10
	mv	a1, s7
	mv	s0, s6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m4, ta, ma
	vmslt.vx	v0, v4, a3
	add	a3, s11, s0
	vmv8r.v	v24, v8
	add	a5, s10, a1
	vmv8r.v	v16, v8
	vsetvli	zero, zero, e64, m8, ta, mu
	vle64.v	v24, (a3), v0.t
	vle64.v	v16, (a5), v0.t
	add	a2, a2, s1
	add	s0, s0, ra
	add	a1, a1, ra
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vse64.v	v16, (a3), v0.t
	sub	a4, a4, s1
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s9, a2, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a3, a4
	blt	a4, s1, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a3, s1
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
	.quad	0x40125495e6f3896d              # double 4.5826030813353613
	.quad	0x402026656bee6fd0              # double 8.0749925354538448
	.quad	0x401d7d5127951e62              # double 7.3723798928036519
	.quad	0x4001f068efe610c0              # double 2.2423876516423604
	.quad	0x401a7876785cf3b5              # double 6.6176394278272044
	.quad	0x400cc1c364c795b2              # double 3.5946109651001388
	.quad	0x40195dec36d261af              # double 6.3417213979632114
	.quad	0x3fea2bf12457eb84              # double 0.81786400888755439
	.quad	0x402391a716c8fe53              # double 9.7844779129365289
	.quad	0x40189711e609de74              # double 6.1475292151950391
	.quad	0x4004cda5933a7e36              # double 2.6004134657121325
	.quad	0x4021228bdb19d590              # double 8.5674732655559467
	.quad	0x40113655fd1fca0a              # double 4.303062396111736
	.quad	0x401d6b126abbda45              # double 7.3545624425083291
	.quad	0x4014b50ccfa9c28a              # double 5.1768066832888824
	.quad	0x3fd29a009ed8e7e4              # double 0.29064956200056558
	.quad	0x400c04c081364638              # double 3.5023202986419868
	.quad	0x402284467422a61a              # double 9.2583500187202397
	.quad	0x3ff42d78ee529e07              # double 1.2611016568642996
	.quad	0x4006e7b3ee82bc00              # double 2.8631361611983266
	.quad	0x3fff2d872192d5b6              # double 1.9486151992290224
	.quad	0x402273c92fd3eed5              # double 9.2261443086821746
	.quad	0x4007464587b33024              # double 2.9093123055991033
	.quad	0x4022acddc95e2cdd              # double 9.3376295974216479
	.quad	0x401b8f8046f9be95              # double 6.8901377763683245
	.quad	0x40055833544c84a8              # double 2.668066652856016
	.quad	0x4013b33bef2152ec              # double 4.9250333179559043
	.quad	0x400e4c89f870bd9c              # double 3.7873725327878685
	.quad	0x4013855eb1ec3941              # double 4.8802440452985261
	.quad	0x40124001ff39e5fc              # double 4.5625076178634991
	.quad	0x40191877afb49984              # double 6.2738940671901027
	.quad	0x4021cf177e2fcade              # double 8.904476111730613
	.quad	0x3fd79279dcbcf548              # double 0.36831518703896338
	.quad	0x4021e30f716d9584              # double 8.9434771963376604
	.quad	0x3fe7daefcc289b1a              # double 0.74547567248086755
	.quad	0x3ffd7968eaf5549e              # double 1.8421410730418653
	.quad	0x400ca21a73737a3e              # double 3.5791520137420596
	.quad	0x4023df69b682f3d1              # double 9.9363534006933225
	.quad	0x4021320c75433659              # double 8.5977512974306354
	.quad	0x4018833d69ca6c1e              # double 6.128163960437659
	.quad	0x401ecdc127f85368              # double 7.7009321446720164
	.quad	0x40098a9954cbb8e2              # double 3.1926752686186868
	.quad	0x4021c78916e35ef5              # double 8.8897177841713333
	.quad	0x402245ad94b65034              # double 9.1360899422216803
	.quad	0x40163651cb1f6fb7              # double 5.5530463922440765
	.quad	0x4003cc85b9d4afb4              # double 2.4748644369155617
	.quad	0x400a75e24d2a5f78              # double 3.307560541968936
	.quad	0x401ebae9f80be705              # double 7.6825331456436787
	.quad	0x400bf7f3dd217504              # double 3.4960706020198149
	.quad	0x4003de1b043f74ec              # double 2.4834499675622421
	.quad	0x4017df8e8176c988              # double 5.9683170536758396
	.quad	0x401283b05dfdcd1a              # double 4.6286024747999139
	.quad	0x3fbcb0ee7d55c7e0              # double 0.11207476196230415
	.quad	0x400c860a99240c7c              # double 3.5654499019743167
	.quad	0x3ff6474949fb9588              # double 1.39240387820732
	.quad	0x400f19b2627a67f3              # double 3.8875472730260241
	.quad	0x401b86de02512cbf              # double 6.8817062723202858
	.quad	0x401e9e2dc4864449              # double 7.6544714648198999
	.quad	0x3ff1549f1478beaa              # double 1.0831595229791824
	.quad	0x3ff8bf7025276cf4              # double 1.5467378093078965
	.quad	0x40117657368b23a1              # double 4.3655670664237798
	.quad	0x401034ce5ab71b25              # double 4.0515684293994001
	.quad	0x40065e702ca6efa0              # double 2.7961123932308993
	.quad	0x402122188ba8045f              # double 8.5665935175513237
	.quad	0x40025b53728a3e72              # double 2.2945927570761393
	.quad	0x401ca1324f7ef430              # double 7.1574184819447026
	.quad	0x4010a7ff8ab09117              # double 4.1640607519405171
	.quad	0x401b2dd09a270a4a              # double 6.7947410665825121
	.quad	0x40231edeb773ffe3              # double 9.5602929429150602
	.quad	0x4007fc90d25beb14              # double 2.9983231005002242
	.quad	0x40163bc408ca2c98              # double 5.558364999141439
	.quad	0x4023dc8b6b899d46              # double 9.930751190708758
	.quad	0x401782c22fc4e2bd              # double 5.8776938880843632
	.quad	0x401bcae0878cbf23              # double 6.9481221370367932
	.quad	0x4022518f534fa7a2              # double 9.1592966112837679
	.quad	0x40058392534e49f3              # double 2.689243937327086
	.quad	0x400f872f19933868              # double 3.9410078046849328
	.quad	0x40192e210e879bab              # double 6.2950479765194514
	.quad	0x4019d800605e72ca              # double 6.4609389360090947
	.quad	0x4012dbfab94a5f0f              # double 4.7148236228602078
	.quad	0x400e0687f6d46a7d              # double 3.7531890185903749
	.quad	0x4010dcf4be023eda              # double 4.2157773674841454
	.quad	0x400a52f852a0588e              # double 3.2905127005752268
	.quad	0x4011ff2a01931e90              # double 4.4991836782497927
	.quad	0x4020f3d68ae64dc2              # double 8.4762462049610612
	.quad	0x40125984dc30fc18              # double 4.5874208836458124
	.quad	0x400bc41472ace7b9              # double 3.470742126371047
	.quad	0x401b0536244114aa              # double 6.7550893463823432
	.quad	0x40222f0f05f7dad8              # double 9.0919114937836838
	.quad	0x40077dadef1378f8              # double 2.9363669088189646
	.quad	0x4023f173373cb3af              # double 9.971582151565455
	.quad	0x3ffa4a9795108b3c              # double 1.643210966380777
	.quad	0x4009829b1286731c              # double 3.1887723395615364
	.quad	0x4002d9a598e27436              # double 2.3562728828533421
	.quad	0x4015c6789459eea6              # double 5.4438193492784759
	.quad	0x3ff22f79a2d5fb3f              # double 1.1365906105781531
	.quad	0x3ff8010f52a25777              # double 1.5002587535759326
	.quad	0x401fcf61b2401151              # double 7.9525211192706857
	.quad	0x3ff2b0c4055afb45              # double 1.1681556901164225
	.quad	0x3ffda299a64f8a3a              # double 1.8521973129760583
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.size	.L__constant_50xindex, 400

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x40143549731098d4              # double 5.0520379999999996
	.quad	0x4023468f4b61fe22              # double 9.6378120000000003
	.quad	0x401a517763e4abe7              # double 6.5795570000000003
	.quad	0x3fe1ff4ba51a005c              # double 0.56241399999999997
	.quad	0x3fc9d45a5fc7e6b4              # double 0.201793
	.quad	0x400f42949a5657fb              # double 3.9075099999999998
	.quad	0x3feba845996744b3              # double 0.86429100000000003
	.quad	0x3ffee581cf7878b8              # double 1.9310320000000001
	.quad	0x3ffb5bd8383ad9f1              # double 1.7099230000000001
	.quad	0x3ff1724a6a875d57              # double 1.090403
	.quad	0x4020304f2ae07e5a              # double 8.0943539999999992
	.quad	0x401d3ea7ce0fc2ec              # double 7.3111870000000003
	.quad	0x4020aab3cc4ac6ce              # double 8.3334030000000006
	.quad	0x4020347d1bb4916d              # double 8.1025170000000006
	.quad	0x400d81fc8f32378b              # double 3.6884700000000001
	.quad	0x4020458904f6dfc6              # double 8.1358110000000003
	.quad	0x402124024b33daf9              # double 8.5703300000000002
	.quad	0x40114bddfc9ff92f              # double 4.3240889999999998
	.quad	0x4023e62281344806              # double 9.9494819999999997
	.quad	0x4007bbd9cae21102              # double 2.9667240000000001
	.quad	0x40022ae3a3a8e714              # double 2.2709419999999998
	.quad	0x3fc5219220ff5409              # double 0.16508700000000001
	.quad	0x4019978897e99631              # double 6.3979819999999998
	.quad	0x40173a715831f03d              # double 5.8070729999999999
	.quad	0x3fd1ee957470eb25              # double 0.28018700000000002
	.quad	0x4016edf3300de4c5              # double 5.7323729999999999
	.quad	0x3fea12231832fcad              # double 0.81471400000000005
	.quad	0x400f4d740c4156e2              # double 3.9128189999999998
	.quad	0x4007fab0856e696a              # double 2.9974069999999999
	.quad	0x402360943e100608              # double 9.6886310000000008
	.quad	0x3ffd01bb8c32a8ca              # double 1.8129230000000001
	.quad	0x4003a11a975afaf8              # double 2.4536639999999998
	.quad	0x3fe7f53c579f2346              # double 0.74868599999999996
	.quad	0x3fd07a85015c2092              # double 0.25747799999999998
	.quad	0x4019861240746456              # double 6.3809290000000001
	.quad	0x400ede3c968943e1              # double 3.858514
	.quad	0x4023f2c322291fb4              # double 9.974145
	.quad	0x401f199ed7c6fbd2              # double 7.7750199999999996
	.quad	0x400bd94317acc4f0              # double 3.4810850000000002
	.quad	0x4013f7c73eee5259              # double 4.9919710000000004
	.quad	0x4023c737542a23c0              # double 9.889094
	.quad	0x4012b2e1693c03bc              # double 4.6746879999999997
	.quad	0x3ff3efa7221858bc              # double 1.2460089999999999
	.quad	0x400594e8fb00bcbe              # double 2.6977099999999998
	.quad	0x40193c18b502abac              # double 6.3086880000000001
	.quad	0x4022bd29563a9f38              # double 9.3694559999999995
	.quad	0x3fdc78b3700474da              # double 0.44486700000000001
	.quad	0x4004a16d6dc1a47b              # double 2.5788220000000002
	.quad	0x400d5671ac14c661              # double 3.6672090000000002
	.quad	0x401b92db61bb05fb              # double 6.8934150000000001
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
