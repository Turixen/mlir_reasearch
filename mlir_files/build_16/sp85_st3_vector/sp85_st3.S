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
	.quad	15                              # 0xf
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
	lui	a6, %hi(.L__constant_15xindex)
	addi	a6, a6, %lo(.L__constant_15xindex)
	lui	a7, %hi(.L__constant_15xf64)
	addi	a7, a7, %lo(.L__constant_15xf64)
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
	addi	a1, a1, -256
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
	.quad	0x4017ba8a1c5c4b54              # double 5.9321674758274021
	.quad	0x4022e580ca92eef4              # double 9.4482482246744226
	.quad	0x4002396e8ff87d34              # double 2.2780429122646186
	.quad	0x3f410b6db00bb000              # double 5.2016120761555484E-4
	.quad	0x40194358a6e08142              # double 6.315767867520039
	.quad	0x3ff7b6a4378c5d03              # double 1.4820902032714123
	.quad	0x3fc1ae3a57f013f0              # double 0.13812951368177506
	.quad	0x400fc7d380badade              # double 3.9725713784240346
	.quad	0x400ae86008183e46              # double 3.3634644157789664
	.quad	0x4015ba7afaedd078              # double 5.4321097571993207
	.quad	0x40210b01b6072303              # double 8.5214974292480345
	.quad	0x401d8cbbe68e1057              # double 7.3874355339249496
	.quad	0x401a37461d5efd92              # double 6.5539784039714437
	.quad	0x4023af30588733e2              # double 9.8421657242815321
	.quad	0x3ffe59567f7a5e66              # double 1.8968110065087784
	.quad	0x402174a1930c24f4              # double 8.7277952148747104
	.quad	0x3ff741d6db55e9bf              # double 1.453574044017486
	.quad	0x3f969efdac7a4540              # double 0.022090877201269565
	.quad	0x401c8959e2f2131d              # double 7.1341319523096702
	.quad	0x3ffcaddc84799061              # double 1.7924466299819175
	.quad	0x401fab33986d36fb              # double 7.9171890083941844
	.quad	0x3fe96f766a7c515a              # double 0.79485626981708468
	.quad	0x401d03def23cf896              # double 7.2537801599229592
	.quad	0x4001176e3532d7c8              # double 2.136440673460104
	.quad	0x400e9ff5757ff8c0              # double 3.828104894607435
	.quad	0x3ff452aeab5fb1f1              # double 1.2701861089982425
	.quad	0x4014442755b1d986              # double 5.0665563001442759
	.quad	0x3fd5821868d382dc              # double 0.33606538998541935
	.quad	0x3ff6a74f7c623bba              # double 1.4158472880114759
	.quad	0x400be1c11565bdde              # double 3.4852315589593976
	.quad	0x400a716db769a9cd              # double 3.3053850487824321
	.quad	0x4010cf751b52ac73              # double 4.202595164223669
	.quad	0x401ec6ae9e3ceb62              # double 7.6940254902536669
	.quad	0x3ff4e52b93ac401e              # double 1.3059497612448534
	.quad	0x402011bc737c654c              # double 8.0346408929205139
	.quad	0x400182d4a31b67a8              # double 2.1888821356523813
	.quad	0x40222139637bbd4a              # double 9.0648909653233609
	.quad	0x3fe7aa724110d8e2              # double 0.73955643375554936
	.quad	0x3fe1db5753677b44              # double 0.55802503862273811
	.quad	0x401ef7f7a0929b63              # double 7.7421555604440497
	.quad	0x3ff814d2e26a81ff              # double 1.5050839275719452
	.quad	0x401fad3a4ac98817              # double 7.9191676793580176
	.quad	0x402345dd522804c5              # double 9.6364541696406238
	.quad	0x40211f74ec289eb7              # double 8.5614389228424965
	.quad	0x40157698c2e216d6              # double 5.3658171129697703
	.quad	0x40234f57d4449374              # double 9.6549669583998607
	.quad	0x3ff5b491cc4d13ae              # double 1.3565843563567159
	.quad	0x401f20f0f99962a0              # double 7.7821692466610841
	.quad	0x400992e5b678538a              # double 3.1967272048445396
	.quad	0x402086ba1d7ab411              # double 8.2631386959347157
	.quad	0x40164a4531f1da38              # double 5.5725295833458901
	.quad	0x401287a30bfa5a49              # double 4.6324579116395137
	.quad	0x3ff90accc80a9967              # double 1.5651367010228456
	.quad	0x3fd7fdc8ef2f7330              # double 0.37486480100578756
	.quad	0x401ea046eb8c8124              # double 7.65652053875991
	.quad	0x3fd3aa972d6777e4              # double 0.30728702005387576
	.quad	0x4023f8326084ec10              # double 9.984759346223683
	.quad	0x402007cdc20a6058              # double 8.0152416837374147
	.quad	0x401a2de9f87e14e7              # double 6.5448378397897846
	.quad	0x4015f2f26677f31a              # double 5.4872528086387096
	.quad	0x3ff536d3a27e87ec              # double 1.3258854243690577
	.quad	0x400bc6358ef22e3e              # double 3.4717818420083679
	.quad	0x3fe7a6e41360be30              # double 0.73912242684122553
	.quad	0x4012b0eaebf903c7              # double 4.6727711554276032
	.quad	0x4023b774ee21fead              # double 9.858313981675872
	.quad	0x4023bddd5aef925a              # double 9.870829431290236
	.quad	0x40223f14830132c4              # double 9.1232033671343586
	.quad	0x4003c5a9ca43acc2              # double 2.4715152551558228
	.quad	0x401dbeb25a985ee7              # double 7.4362272410869314
	.quad	0x4020ad782ef76de6              # double 8.3388075520551403
	.quad	0x3fe7d4538d4ac6b8              # double 0.74466874691116569
	.quad	0x3ff1608c7a2dc3e6              # double 1.086071469555685
	.quad	0x3fed8649147bce82              # double 0.9226422691412639
	.quad	0x402283aefe26eae1              # double 9.2571944639689168
	.quad	0x4019c637efc46169              # double 6.4435727561579847
	.quad	0x3fcc1b6769d47bc0              # double 0.21958630244713895
	.quad	0x401920e1577015e3              # double 6.282109609810024
	.quad	0x401cc4ffb9696ec5              # double 7.1923817606545457
	.quad	0x3fd570a3bd136dac              # double 0.33499997581904029
	.quad	0x4023f6c5726dc6b2              # double 9.9819751509670347
	.quad	0x3fe6d6aca5d520e8              # double 0.71370537175337478
	.quad	0x3fe5ef4b01900604              # double 0.68546057038491925
	.quad	0x4008b693000dd0d6              # double 3.0891475681511151
	.quad	0x40066e755f6ab3ba              # double 2.8039348082006343
	.quad	0x40194f25f77db5ee              # double 6.3272932692029666
	.quad	0x3ffb7e1e513404ff              # double 1.7182906314849899
	.quad	0x400a9ee8c382dfb0              # double 3.3275923990549572
	.quad	0x400438e9311f7a5e              # double 2.5277885282260248
	.quad	0x401e49eb39eb696f              # double 7.572186379426383
	.quad	0x4015406aa7e32cca              # double 5.3129068596273985
	.quad	0x3fd1930ce1b8454c              # double 0.27460023920965138
	.quad	0x40017b22d155fdce              # double 2.1851250032775402
	.quad	0x402194b9ec1f0428              # double 8.7904809749471298
	.quad	0x3fd8c249c4761cac              # double 0.38685840783768799
	.quad	0x4014de79267ed914              # double 5.2172590269967891
	.quad	0x401a3a59a726d472              # double 6.5569826238107556
	.quad	0x4017da37650e65ee              # double 5.9631019392049733
	.quad	0x401b6a7123a9568e              # double 6.8539472171884324
	.quad	0x401a3ae2fc3ebb4f              # double 6.5575065053261161
	.quad	0x4017a57e789f4a22              # double 5.9116152617666859
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_15xindex,@object   # @__constant_15xindex
	.p2align	6, 0x0
.L__constant_15xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.size	.L__constant_15xindex, 120

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.size	.L__constant_11xindex, 88

	.type	.L__constant_15xf64,@object     # @__constant_15xf64
	.p2align	6, 0x0
.L__constant_15xf64:
	.quad	0x40190857afea3df7              # double 6.2581470000000001
	.quad	0x3fe49bf7ad4b2746              # double 0.64403900000000003
	.quad	0x4014ff3a14cec41e              # double 5.2492450000000002
	.quad	0x401b2630a91537a0              # double 6.7872950000000003
	.quad	0x40018558644523f6              # double 2.1901099999999998
	.quad	0x400231c9f72f76e6              # double 2.274311
	.quad	0x401e0b59146e4c0e              # double 7.511082
	.quad	0x401f7409e55c0fcb              # double 7.8633189999999997
	.quad	0x401b584a515ce9e6              # double 6.8362210000000001
	.quad	0x401b0345cfede97d              # double 6.753196
	.quad	0x4007b44aa53fc009              # double 2.9630329999999998
	.quad	0x4019dac2df0d4131              # double 6.4636339999999999
	.quad	0x400679d3cbc48f11              # double 2.8094860000000001
	.quad	0x4020f666cb10342b              # double 8.4812530000000006
	.quad	0x40029024f6598e11              # double 2.3203830000000001
	.size	.L__constant_15xf64, 120

	.section	".note.GNU-stack","",@progbits
