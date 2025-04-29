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
	.quad	0x3fe2d8e655b9a38a              # double 0.58897701972192462
	.quad	0x40012fba46768ea5              # double 2.1483045105868137
	.quad	0x4019d9926f4fd5c8              # double 6.4624726669766872
	.quad	0x4018914ab4de7b56              # double 6.1418865452568152
	.quad	0x40189706d82fb838              # double 6.1474870471120582
	.quad	0x400c1b36252b5a51              # double 3.5132868675093865
	.quad	0x401fc8753d644a9e              # double 7.945759734388643
	.quad	0x40044b7a8c339240              # double 2.5368548348654087
	.quad	0x401602a29fc34a19              # double 5.5025734866090028
	.quad	0x4002af42ca7f80ae              # double 2.3355766124878619
	.quad	0x3fe7127f6e3871b2              # double 0.72100802924574325
	.quad	0x402363d60d28fb01              # double 9.6949924576306347
	.quad	0x3fc523357d0d2c68              # double 0.16513699155834449
	.quad	0x4016cb8834ce78f5              # double 5.6987617732067877
	.quad	0x40160d364136f7d1              # double 5.512902277927382
	.quad	0x4010219fd1330165              # double 4.0328362166768317
	.quad	0x4022d2b94b3c4fae              # double 9.4115699301836138
	.quad	0x4011b9fe269eb504              # double 4.4316335710875627
	.quad	0x4011270ddc75d39c              # double 4.2881388136783265
	.quad	0x3ff32f3c405c4e5f              # double 1.1990320695957946
	.quad	0x401ea0b530c60708              # double 7.656941186987531
	.quad	0x3fd4e023f9b9bfc4              # double 0.32618045222534087
	.quad	0x40196de0b80ed8ce              # double 6.3573025473653626
	.quad	0x4001ba7da35df817              # double 2.2160599482585996
	.quad	0x4003e3a7cd46f1fb              # double 2.4861599004054802
	.quad	0x401557bb4ac3f429              # double 5.3356753999806097
	.quad	0x40149b85b1875630              # double 5.1518771876194904
	.quad	0x40143c8ee263ff6e              # double 5.059138810494785
	.quad	0x400724e47cbcbbb0              # double 2.893013929853133
	.quad	0x4022f07811334b00              # double 9.4696660399545181
	.quad	0x401244fb99a8849b              # double 4.5673660287003726
	.quad	0x4016291d63021f37              # double 5.5401511640591741
	.quad	0x3ff074acb05bb783              # double 1.0284850014681701
	.quad	0x400793f537b9bdc9              # double 2.9472450593527566
	.quad	0x40203e1ef04e6f45              # double 8.1213297935243052
	.quad	0x4004722bb8461d37              # double 2.5557474514386302
	.quad	0x400d51884002a02e              # double 3.6648106575776387
	.quad	0x40136165bc0931df              # double 4.8451146488773409
	.quad	0x400676e699fced4e              # double 2.8080570249855219
	.quad	0x402264f011863e32              # double 9.1971440769549169
	.quad	0x401d587a0ee32a45              # double 7.336403114905413
	.quad	0x402341ae365034cc              # double 9.6282822583110814
	.quad	0x4017f0b8e5a06782              # double 5.9850803259995491
	.quad	0x401e0adfdde2319a              # double 7.5106196088130677
	.quad	0x400489acd3c28aaa              # double 2.5672241729492571
	.quad	0x4012fd4b75779373              # double 4.7473581651910193
	.quad	0x401de646caf350a4              # double 7.4748794280059521
	.quad	0x3ff1d50b41045cfd              # double 1.1145126857498433
	.quad	0x401fe29e9c723e4d              # double 7.9713081783989538
	.quad	0x401509d09cb6b6fe              # double 5.2595848547477981
	.quad	0x4020c382777881b9              # double 8.3818547567942563
	.quad	0x401850a517a89904              # double 6.0787547775892143
	.quad	0x4021e702d111d906              # double 8.9511933645521928
	.quad	0x3fc1ff9833ca8a78              # double 0.14061262635103211
	.quad	0x4012e794b95ef6b3              # double 4.7261532749377464
	.quad	0x40221133c1b6f6c4              # double 9.0335979972691191
	.quad	0x3feb0542421f1d38              # double 0.84439194597590639
	.quad	0x4021dcbbe5371d50              # double 8.931121027925343
	.quad	0x4019f6f82274d8d8              # double 6.4911809333627488
	.quad	0x40199b985d147c60              # double 6.4019484084847988
	.quad	0x4016c87b40703f01              # double 5.6957826679715717
	.quad	0x4008bf31d7a3e392              # double 3.0933567854776323
	.quad	0x3fdb39bab53793ac              # double 0.42539851853353627
	.quad	0x40041611cb6bdb61              # double 2.5107761280336693
	.quad	0x40180ebe587de882              # double 6.0143979861114776
	.quad	0x40214ae5ed948ccc              # double 8.6462854617915567
	.quad	0x40153f9c70b65b1f              # double 5.312120209818004
	.quad	0x401894a0ea6a6102              # double 6.1451450946262884
	.quad	0x402332a4f16eeb00              # double 9.5989146659753715
	.quad	0x402084782806860b              # double 8.2587292201960931
	.quad	0x401e8f162e2b0518              # double 7.6397330487973462
	.quad	0x4020b0b184a3e9e2              # double 8.3451043558206415
	.quad	0x40190632fb573ce3              # double 6.2560538551326514
	.quad	0x400d2bfc6b4a9245              # double 3.646477544987905
	.quad	0x4002f263c721958a              # double 2.3683543736576143
	.quad	0x4022556395f5fd46              # double 9.1667754042415588
	.quad	0x400dbb65500296d3              # double 3.7165018320837162
	.quad	0x40061814c65c8231              # double 2.7617583748799679
	.quad	0x401fae538839b03f              # double 7.9202405247888796
	.quad	0x4020082e5907a1bc              # double 8.0159786054435855
	.quad	0x4020882698f1481b              # double 8.2659194750340728
	.quad	0x40108899f651d24f              # double 4.1333998191299335
	.quad	0x401a154fbfedbcfa              # double 6.5208120335439563
	.quad	0x400df5ee32ce7212              # double 3.7450832337619966
	.quad	0x40162089f143b150              # double 5.5317762086454678
	.quad	0x4013aac8785e6a29              # double 4.9167803580881264
	.quad	0x4018961c72fa8430              # double 6.1465928998377848
	.quad	0x4023f7d1da4e9bd0              # double 9.9840229245145622
	.quad	0x4005e7c4954be944              # double 2.7381679214278467
	.quad	0x3ffde4280fd12025              # double 1.8682022683951882
	.quad	0x3ff8033bc0c88b12              # double 1.5007894068336936
	.quad	0x4001c79a7ed10e5e              # double 2.2224626452969423
	.quad	0x40029fabe9ba7f68              # double 2.3279646167792869
	.quad	0x4022504920a26e03              # double 9.1568079183844073
	.quad	0x401f3542d0ff4a89              # double 7.8020126968209604
	.quad	0x401923d9e08286bd              # double 6.2850108222643799
	.quad	0x4003aab9dedfeceb              # double 2.4583623325430515
	.quad	0x40220d4ad6d2c0da              # double 9.0259616024272198
	.quad	0x401ac74490d5c62f              # double 6.6945974951245679
	.quad	0x4000ea4fb346b198              # double 2.1144098287533772
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_40xindex,@object   # @__constant_40xindex
	.p2align	6, 0x0
.L__constant_40xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x401108bb906466b2              # double 4.2585280000000001
	.quad	0x3fe3da07b352a844              # double 0.62036500000000006
	.quad	0x40188387160956c1              # double 6.1284450000000001
	.quad	0x3ff0239a38fbca10              # double 1.0086919999999999
	.quad	0x3ff934b407032980              # double 1.575367
	.quad	0x3fff706705c896dd              # double 1.964942
	.quad	0x3ffbb11a543f1c76              # double 1.7307380000000001
	.quad	0x401fa2999567dbb1              # double 7.9087889999999996
	.quad	0x401f040789613d32              # double 7.7539350000000002
	.quad	0x4015af3f961804da              # double 5.4211410000000004
	.quad	0x4011d4a0a0f4d7ae              # double 4.4576440000000002
	.quad	0x401e0801711947d0              # double 7.5078180000000003
	.quad	0x4023064883fd5022              # double 9.5122719999999994
	.quad	0x3feaf0520d130dfa              # double 0.84183600000000003
	.quad	0x40158d5b24e9c454              # double 5.3880429999999997
	.quad	0x40188acc92146a1a              # double 6.1355459999999997
	.quad	0x4008ae71cda2b5a2              # double 3.085178
	.quad	0x40195e6d15ad106f              # double 6.3422130000000001
	.quad	0x401c14e2f37fbefd              # double 7.020397
	.quad	0x4003e8ede54b48d4              # double 2.4887350000000001
	.quad	0x401761d53cddd6e0              # double 5.8455399999999997
	.quad	0x4012a9a027525461              # double 4.6656500000000003
	.quad	0x3fe074be835dedf2              # double 0.51425100000000001
	.quad	0x4010fe18ac9f2fdc              # double 4.2481410000000004
	.quad	0x4002fc9bc7714339              # double 2.3733439999999999
	.quad	0x40204d8e64b23140              # double 8.1514769999999999
	.quad	0x4022c0027d88c1db              # double 9.3750189999999999
	.quad	0x40067818c5c9a34d              # double 2.8086410000000002
	.quad	0x4015c07aaef2c732              # double 5.4379679999999997
	.quad	0x40049338f7985272              # double 2.5718860000000001
	.quad	0x4018004534bd76ee              # double 6.0002639999999996
	.quad	0x3ff528fe260b2c84              # double 1.322508
	.quad	0x400189c4545846e9              # double 2.192269
	.quad	0x401d2c1615ebfa8f              # double 7.2930529999999996
	.quad	0x401b1f7985271bce              # double 6.7807370000000002
	.quad	0x400c5005814940bc              # double 3.5390730000000001
	.quad	0x4003ae74f2f123c4              # double 2.4601839999999999
	.quad	0x401a552502eec7c9              # double 6.5831489999999997
	.quad	0x4008e2c1b10fd7e4              # double 3.1107209999999998
	.quad	0x401e40ae10492360              # double 7.5631640000000004
	.size	.L__constant_40xf64, 320

	.section	".note.GNU-stack","",@progbits
