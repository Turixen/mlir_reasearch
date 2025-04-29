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
	.quad	40                              # 0x28
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
	lui	a6, %hi(.L__constant_40xindex)
	addi	a6, a6, %lo(.L__constant_40xindex)
	lui	a7, %hi(.L__constant_40xf64)
	addi	a7, a7, %lo(.L__constant_40xf64)
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
	addi	a1, a1, -2048
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
	.quad	0x4023d7ef012ed892              # double 9.9217453355488807
	.quad	0x4020cea1cccd9e88              # double 8.403578186130531
	.quad	0x3ff341575bbe4982              # double 1.2034524520609868
	.quad	0x401d5d1c64e867cc              # double 7.3409286276673349
	.quad	0x3fce50e97001e708              # double 0.23684423417199008
	.quad	0x4022cbf5bccc70be              # double 9.39835920329676
	.quad	0x401b8c3486ad21fc              # double 6.886919121091065
	.quad	0x401540f3a1d477ae              # double 5.3134293828897352
	.quad	0x40093dc104f86866              # double 3.1551533115680739
	.quad	0x40174f7de98c846a              # double 5.8276287548079413
	.quad	0x401a74abf80d6ce4              # double 6.6139372595018564
	.quad	0x401870d1febce573              # double 6.1101760676186698
	.quad	0x3fc1750cd7264700              # double 0.13638458733890246
	.quad	0x4010fc1dce3693c0              # double 4.2462074490367172
	.quad	0x400333002a9b8b88              # double 2.3999026612013417
	.quad	0x40058ef77b7321de              # double 2.6948079723845089
	.quad	0x3ffc8ea0e6d4b4c1              # double 1.7848214165526743
	.quad	0x401369b1233fc498              # double 4.8532147891684403
	.quad	0x401f1479a60f27a8              # double 7.7699953028440305
	.quad	0x3ffd1a12f5e1c037              # double 1.8188657383689255
	.quad	0x4022ddcda288d81b              # double 9.4332094947858902
	.quad	0x3ff5e93513eacba2              # double 1.3694353845610086
	.quad	0x4019ee20c32c6753              # double 6.4825468536235631
	.quad	0x4021d6e268233920              # double 8.9196960967061045
	.quad	0x4008030ba0ab93ef              # double 3.0014870216714296
	.quad	0x400d30dda7d7d05c              # double 3.6488602745758225
	.quad	0x40220d590a92b626              # double 9.0260699562159736
	.quad	0x401e8b45bc7638c6              # double 7.6360082099110453
	.quad	0x402362ed44b42472              # double 9.69321646403316
	.quad	0x40204c7747acb0de              # double 8.1493475340179735
	.quad	0x40215ba7ad41e07d              # double 8.6790136473575732
	.quad	0x3fe692548881a846              # double 0.70536257420941051
	.quad	0x40227b22bee12c73              # double 9.2404994630689767
	.quad	0x40220569fe1e1090              # double 9.0105742847156591
	.quad	0x4023930fa99b7fc5              # double 9.78722887061293
	.quad	0x40093c73e9bd4764              # double 3.1545179615867927
	.quad	0x40028cce2b5fb04d              # double 2.318752611978232
	.quad	0x4006c97242220f80              # double 2.8483624617237524
	.quad	0x402174ef70dd9a5a              # double 8.7283892889510533
	.quad	0x40182232482c7ab8              # double 6.0333949353359273
	.quad	0x4010615f8f90d792              # double 4.0950910980372033
	.quad	0x400344b7fa18c905              # double 2.4085540331662991
	.quad	0x4004ccb64ac79f9d              # double 2.5999570696039442
	.quad	0x40214a96258e8b53              # double 8.6456767784599489
	.quad	0x40022e455addb908              # double 2.2725932215608999
	.quad	0x401f40892bfcb334              # double 7.8130232689843986
	.quad	0x4019302034aa51ea              # double 6.2969978550868095
	.quad	0x401ce911c6513065              # double 7.2276068675092562
	.quad	0x4020ea0757587650              # double 8.4570872588621171
	.quad	0x3fe78568560a4ce4              # double 0.7350351028893809
	.quad	0x3fda0344ddd2618c              # double 0.40644952451977967
	.quad	0x40026e04fec03c34              # double 2.3037204649367826
	.quad	0x3fff9deb7b074e90              # double 1.9760546499063913
	.quad	0x4018a117286f0f9b              # double 6.1573149030481558
	.quad	0x401ff572ce33e532              # double 7.9896957606481909
	.quad	0x40032368887821c1              # double 2.3922892247830707
	.quad	0x40117f4bf4ab429a              # double 4.3743131856469066
	.quad	0x400fae0f19bd169c              # double 3.9599897394972015
	.quad	0x401a01be827d9358              # double 6.5017032994408837
	.quad	0x4018ab8a65529b55              # double 6.1675201255482834
	.quad	0x401d770cf4947186              # double 7.3662603583910649
	.quad	0x4021f7f86ffce962              # double 8.9843173023443264
	.quad	0x40178e1c14ca9810              # double 5.8887789963391839
	.quad	0x401ff56dc61acdae              # double 7.9896765664920348
	.quad	0x3fee42aad1333042              # double 0.94563809260717613
	.quad	0x4010c3f4f904999f              # double 4.1913641842897098
	.quad	0x401eced30a843f95              # double 7.7019769328325269
	.quad	0x40185caf494dd732              # double 6.0905124143371712
	.quad	0x4015a0aa9c2abbb2              # double 5.4069008256037012
	.quad	0x4016f8daece862a0              # double 5.7430226342045501
	.quad	0x3fc2a6d8f499e2c0              # double 0.14571678107656361
	.quad	0x401c11257ab37ba9              # double 7.0167445346877821
	.quad	0x3ffb0dcedef3310f              # double 1.69087111558753
	.quad	0x4021584941b5584c              # double 8.6724339040630624
	.quad	0x40202114674ead39              # double 8.0646087916889986
	.quad	0x401c6cebadfd24bf              # double 7.1063677964932017
	.quad	0x3fdf5f87924205e8              # double 0.49020566256521514
	.quad	0x402123f09bf4bc54              # double 8.5701950775384503
	.quad	0x4020eec7d4050675              # double 8.4663683181890779
	.quad	0x40203ba2a0195729              # double 8.1164751082356634
	.quad	0x401177ae0dc38c85              # double 4.3668748999217586
	.quad	0x401bb66d3e819f06              # double 6.9281511084188931
	.quad	0x400a1af2f9d42927              # double 3.2631587522383998
	.quad	0x4012fa5a83a3207c              # double 4.7444859093012575
	.quad	0x40210ee954d6993d              # double 8.5291239273034254
	.quad	0x4017e3a05579ab17              # double 5.9722913127432298
	.quad	0x40113d4b6f6ec55a              # double 4.3098580752715296
	.quad	0x4023c1ff51907a19              # double 9.878901051412912
	.quad	0x4021b6b52610a2e3              # double 8.8568508048351244
	.quad	0x401d90e8168389b5              # double 7.3915103452476858
	.quad	0x4017b37d9f512036              # double 5.9252838986649774
	.quad	0x401fc2554e3dcbd4              # double 7.9397785401551637
	.quad	0x4019cbcb0659edda              # double 6.449016665686452
	.quad	0x3ff32a4fd1af4d4f              # double 1.1978300276576481
	.quad	0x40214b75deb9919b              # double 8.6473836518787746
	.quad	0x4015325c8ac571ce              # double 5.2991811450014676
	.quad	0x40230a16769c444a              # double 9.5197026315455737
	.quad	0x3fec4a73028c6da2              # double 0.88408804414523368
	.quad	0x4020dd3aef65c754              # double 8.4320902644864546
	.quad	0x4021b2ecf2becc5c              # double 8.8494640214832358
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_40xindex,@object   # @__constant_40xindex
	.p2align	6, 0x0
.L__constant_40xindex:
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x4020561c9b413986              # double 8.1681869999999996
	.quad	0x4009b9220ff54089              # double 3.2153969999999998
	.quad	0x401d0aab8a5ce5b4              # double 7.2604199999999999
	.quad	0x40125b5aa715831f              # double 4.589213
	.quad	0x4017c7b6fe2e6ea8              # double 5.9450339999999997
	.quad	0x4018ace2089e3433              # double 6.168831
	.quad	0x4020563c105186db              # double 8.1684269999999994
	.quad	0x400821ac57e23f25              # double 3.0164420000000001
	.quad	0x3fac812be48a58b4              # double 0.055673
	.quad	0x4008ac89b0ee49f5              # double 3.084247
	.quad	0x4017e6195464dc23              # double 5.9747060000000003
	.quad	0x4006e545846e8f2a              # double 2.8619490000000001
	.quad	0x3ff0502bc72e275b              # double 1.0195730000000001
	.quad	0x40216a2424a276b8              # double 8.7073070000000001
	.quad	0x4013ecf5f4e4430b              # double 4.9814069999999999
	.quad	0x401046a593a2df93              # double 4.0689909999999996
	.quad	0x40150b1f255f351a              # double 5.2608610000000002
	.quad	0x4016c5b63d3e4ef0              # double 5.6930779999999999
	.quad	0x400d652ac753e708              # double 3.6743980000000001
	.quad	0x4011f1f6cacd184c              # double 4.4862929999999999
	.quad	0x40165163779e9d0f              # double 5.5794810000000004
	.quad	0x4020aac7fbacb429              # double 8.3335570000000008
	.quad	0x400141733226c3b9              # double 2.1569579999999999
	.quad	0x3ffc86af46aa087d              # double 1.7828820000000001
	.quad	0x3fe42832b990afe6              # double 0.62990699999999999
	.quad	0x40126ce8d972cd7d              # double 4.606357
	.quad	0x401cd93bc0a06ea0              # double 7.2121420000000001
	.quad	0x400b4a1511dffc54              # double 3.4111729999999998
	.quad	0x4022f7a52ac753e7              # double 9.4836819999999999
	.quad	0x40086537e2c55c96              # double 3.049423
	.quad	0x400fd84988094e5d              # double 3.9806089999999998
	.quad	0x4020411622813448              # double 8.127122
	.quad	0x3fed8ca3e7d13511              # double 0.92341799999999996
	.quad	0x40215dfcc1871e6d              # double 8.6835690000000003
	.quad	0x401372d38476f2a6              # double 4.8621350000000003
	.quad	0x401361cc100e6afd              # double 4.8455050000000002
	.quad	0x4023f87df5cf2496              # double 9.9853360000000002
	.quad	0x3fea3c23315d701e              # double 0.81984100000000004
	.quad	0x3fe826527a20578e              # double 0.75467799999999996
	.quad	0x400ca9142b302f73              # double 3.5825580000000001
	.size	.L__constant_40xf64, 320

	.section	".note.GNU-stack","",@progbits
