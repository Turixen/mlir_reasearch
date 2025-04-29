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
	.quad	0x40105af80b75478a              # double 4.0888368406612106
	.quad	0x4015f363d9e312d1              # double 5.4876855892986933
	.quad	0x400c28eb7c753dc0              # double 3.5199804042128733
	.quad	0x3fe8c82a69f12e98              # double 0.77443428699321526
	.quad	0x3fec713c67a93ffe              # double 0.88882274862589816
	.quad	0x401263253eed8c86              # double 4.5968217689979891
	.quad	0x3fcc4ef63d0b4e58              # double 0.22115972500488357
	.quad	0x401ec08288d6ee4b              # double 7.6879979497130745
	.quad	0x400f067a95fd2b6f              # double 3.878163501537919
	.quad	0x4017af74c3608f5b              # double 5.921343853729776
	.quad	0x401c7bfdc4782e94              # double 7.1210852335313071
	.quad	0x4022f6e7fe1764b4              # double 9.4822387126499521
	.quad	0x40090b004934c686              # double 3.1303716391783523
	.quad	0x400818640b990484              # double 3.0119095712730672
	.quad	0x3fe87eae2e05fd5c              # double 0.7654639147657849
	.quad	0x401577fe5002c9d9              # double 5.3671810628606744
	.quad	0x4016caf7c0222c13              # double 5.6982107182366404
	.quad	0x400dc3a82c4ccd6c              # double 3.7205356083811036
	.quad	0x3ff5ef9e91c83c2f              # double 1.3710008329978896
	.quad	0x3ff2acb1fa677f53              # double 1.1671619206826633
	.quad	0x401a16325c172e55              # double 6.521676482119422
	.quad	0x400f80207816a8ec              # double 3.9375619298854101
	.quad	0x3ffca11b1f349895              # double 1.7893325060809151
	.quad	0x4015a62b4be052a6              # double 5.4122745376268195
	.quad	0x4019da8c03ff4d8e              # double 6.4634247421812585
	.quad	0x4013732fed322303              # double 4.8624875127650311
	.quad	0x4019d6e123230f70              # double 6.4598432054661856
	.quad	0x40134886c07688ca              # double 4.8208265373561492
	.quad	0x402354dfce0ac32b              # double 9.6657699955117859
	.quad	0x3fea9577750c302c              # double 0.83074543820248925
	.quad	0x400cc7b8842032e6              # double 3.5975199053121854
	.quad	0x4015c387f581d219              # double 5.4409483299719108
	.quad	0x4005124295b6197c              # double 2.6339160629460689
	.quad	0x3fd156722c3ab528              # double 0.27090124434728802
	.quad	0x3ff9bb6107639641              # double 1.608246830809904
	.quad	0x4023d5e10eee39a8              # double 9.9177326837351102
	.quad	0x4018760aac87a75d              # double 6.1152750928684698
	.quad	0x40225bb642fbf63e              # double 9.1791249210901888
	.quad	0x400f7b10da478056              # double 3.9350907376356572
	.quad	0x4022016b7392828e              # double 9.0027729145379247
	.quad	0x40228c65c3be69d0              # double 9.274213902467551
	.quad	0x40177908ca212f25              # double 5.8681975920442584
	.quad	0x40173103e38f0c3e              # double 5.7978663974818669
	.quad	0x400381a4e903b01a              # double 2.4383028225183923
	.quad	0x402203ab9bf298f2              # double 9.0071686490668732
	.quad	0x40168bb3503efee0              # double 5.6364262140702692
	.quad	0x40147d97c991034e              # double 5.1226493353613716
	.quad	0x3fd7d2b5ac23c9bc              # double 0.37223569689299629
	.quad	0x401a0b4a6bfb1e78              # double 6.5110260841389547
	.quad	0x40159719a5d858c6              # double 5.3975587762162771
	.quad	0x3fd362d6bf0a5044              # double 0.30290764480855992
	.quad	0x400bb1fc5e2ae52e              # double 3.4619071347084605
	.quad	0x401e737a5a584602              # double 7.6127714268091058
	.quad	0x4011ce87dcaf9ce4              # double 4.4516901476083355
	.quad	0x3ffa679a12250db8              # double 1.6502934178141526
	.quad	0x3ffd3c69768977c5              # double 1.8272490148878984
	.quad	0x401e84f86d6c63fe              # double 7.6298539254576081
	.quad	0x3fdb0664921e6cf8              # double 0.42226518887919395
	.quad	0x401692457ec7c3a9              # double 5.642843228285451
	.quad	0x40203f0141424ecf              # double 8.1230564492647357
	.quad	0x401235e8b8174631              # double 4.5526455654340205
	.quad	0x400ee95712619b1e              # double 3.8639356075322118
	.quad	0x4010da122ec0f24e              # double 4.2129599862351608
	.quad	0x4020f9b45a34cf32              # double 8.4877041043724581
	.quad	0x40209ff9e76a49d2              # double 8.3124534909483465
	.quad	0x4021727bfb67f312              # double 8.7236021580115768
	.quad	0x401184da983ec411              # double 4.379740122633863
	.quad	0x40212427f9649a24              # double 8.5706174788766205
	.quad	0x4020188468d1c0a7              # double 8.0478852039380637
	.quad	0x401c1e967658cf44              # double 7.0298708430962655
	.quad	0x401858ff97804d2f              # double 6.0869125053462048
	.quad	0x4023df75ec2ad846              # double 9.936446552496033
	.quad	0x3fef47f40fcfa890              # double 0.97753336990469286
	.quad	0x40139fb7b53f0ce8              # double 4.9059742278798026
	.quad	0x4020db13a7ed9f84              # double 8.427884338146903
	.quad	0x3fce244cdbf04320              # double 0.23548279513536219
	.quad	0x400c89e5e86adc38              # double 3.5673330457316546
	.quad	0x3ff2b6a0f03981ef              # double 1.1695870765471417
	.quad	0x4023e73f3a821964              # double 9.9516542705357053
	.quad	0x3feacb7a4d8c4f94              # double 0.83733859201537308
	.quad	0x400b212c39c37d18              # double 3.3911976349624062
	.quad	0x4012c3cfcfd625bf              # double 4.6912224268393734
	.quad	0x401ec19d65fa4f9e              # double 7.6890769895580018
	.quad	0x4022ba946f5a2d78              # double 9.3644137189464657
	.quad	0x3ff16f040bc95af6              # double 1.0896034679805644
	.quad	0x4020f3554a6bee00              # double 8.4752600914716822
	.quad	0x402238491025294c              # double 9.109932426964086
	.quad	0x3ff51a5d30e76dbb              # double 1.31893653014309
	.quad	0x4003a3ba3eeb955b              # double 2.45494507938808
	.quad	0x401fc3e1d576945f              # double 7.9412911752343395
	.quad	0x400113b4c316ddc4              # double 2.1346221200326188
	.quad	0x40131302a683134e              # double 4.7685647981168824
	.quad	0x3fe1972eb76d9b4a              # double 0.54970489335833261
	.quad	0x4021ce17816699fc              # double 8.9025230825181935
	.quad	0x4023ef14ebdc03cd              # double 9.9669564920494853
	.quad	0x3ff4a60a046b6caf              # double 1.2905368969575581
	.quad	0x40220fffa8260799              # double 9.0312473818228671
	.quad	0x401b431c0feaa868              # double 6.8155367361997392
	.quad	0x401d4474d9e1f56e              # double 7.3168520015873195
	.quad	0x3ffd6a0dc6ac66af              # double 1.8383920441323587
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_40xindex,@object   # @__constant_40xindex
	.p2align	6, 0x0
.L__constant_40xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	5                               # 0x5
	.size	.L__constant_40xindex, 320

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.size	.L__constant_11xindex, 88

	.type	.L__constant_40xf64,@object     # @__constant_40xf64
	.p2align	6, 0x0
.L__constant_40xf64:
	.quad	0x4001e8094e5d5b25              # double 2.238299
	.quad	0x4014bbea0ba1f4b2              # double 5.1835100000000001
	.quad	0x40096383ad9f0a1c              # double 3.1735910000000001
	.quad	0x401c38d36b4c7f35              # double 7.0554940000000004
	.quad	0x40122a372606fac6              # double 4.541226
	.quad	0x3feba89dadfb506e              # double 0.86433300000000002
	.quad	0x4023166256366d7a              # double 9.5437189999999994
	.quad	0x40193f06705c896e              # double 6.3115480000000002
	.quad	0x40128da48b652370              # double 4.6383229999999998
	.quad	0x401d15985ad538ac              # double 7.2710889999999999
	.quad	0x400f914c22ee4192              # double 3.9459460000000002
	.quad	0x3fdf89a027525461              # double 0.49277500000000002
	.quad	0x3fe69a3d2d87f887              # double 0.70632799999999996
	.quad	0x4010c098d477bbf9              # double 4.1880829999999998
	.quad	0x4023c185271bcdbc              # double 9.8779690000000002
	.quad	0x4020accf8d716d2b              # double 8.3375210000000006
	.quad	0x3fde201040bfe3b0              # double 0.47070699999999999
	.quad	0x3ff7b45ae5ffa3ba              # double 1.4815320000000001
	.quad	0x3fce6412cf0f9d2c              # double 0.237429
	.quad	0x4023c6aad1d041cc              # double 9.8880219999999994
	.quad	0x4020daefb2aae297              # double 8.4276099999999996
	.quad	0x4010db4528283d36              # double 4.2141310000000001
	.quad	0x3ffcfdd00f776c48              # double 1.811966
	.quad	0x401c417c5ef62f9d              # double 7.0639510000000003
	.quad	0x401f66d698fe6927              # double 7.8504279999999999
	.quad	0x400fea92e62131a9              # double 3.989538
	.quad	0x401d5bac2df0d413              # double 7.3395239999999999
	.quad	0x3fa8958d9b5e95b8              # double 0.048016000000000003
	.quad	0x4020be60a2014728              # double 8.3718310000000002
	.quad	0x4004e8e820e62995              # double 2.6137239999999999
	.quad	0x4019a2ca148ba83f              # double 6.4089739999999997
	.quad	0x4023cac493426784              # double 9.8960310000000006
	.quad	0x4013c96cc5fbf834              # double 4.9467040000000004
	.quad	0x3fec54b2745bf26f              # double 0.88533899999999999
	.quad	0x40097f865d7cb2d9              # double 3.187268
	.quad	0x40126c2b0ea18373              # double 4.6056330000000001
	.quad	0x3ffb02bd7f51efb7              # double 1.688169
	.quad	0x4022c5549731098d              # double 9.3854109999999995
	.quad	0x40227f2ecf206424              # double 9.2484040000000007
	.quad	0x400b9e1c15097c81              # double 3.4522020000000002
	.size	.L__constant_40xf64, 320

	.section	".note.GNU-stack","",@progbits
