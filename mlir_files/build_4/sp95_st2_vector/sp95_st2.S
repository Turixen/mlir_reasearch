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
	.quad	5                               # 0x5
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
	lui	a6, %hi(.L__constant_5xindex)
	addi	a6, a6, %lo(.L__constant_5xindex)
	lui	a7, %hi(.L__constant_5xf64)
	addi	a7, a7, %lo(.L__constant_5xf64)
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
	lui	a1, 40976
	addi	a1, a1, 1280
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
	.quad	0x4000c25f7d045878              # double 2.0949086920691649
	.quad	0x3fef3c2a0f1c66ac              # double 0.97609427405696669
	.quad	0x3fdde02d8e4d1138              # double 0.46680773636423423
	.quad	0x401f00739846bd0c              # double 7.7504409592795689
	.quad	0x4023dbb0efc3fc70              # double 9.9290842940083337
	.quad	0x401d8b48812da4a1              # double 7.386018770609696
	.quad	0x4022194e5d15d1fa              # double 9.0494259919296276
	.quad	0x4000142036b87bbc              # double 2.009827067856774
	.quad	0x3febce98ed099096              # double 0.86896940513954024
	.quad	0x40087ddc546e8bfd              # double 3.0614554020153251
	.quad	0x3ff3c2ebc3017194              # double 1.2350881211669718
	.quad	0x3ffcd375c32bc270              # double 1.8016259788384126
	.quad	0x401b1ab6346f60c5              # double 6.776085681245779
	.quad	0x4020d2f43d713ba7              # double 8.4120196533893488
	.quad	0x401d9d19f9a0b577              # double 7.403419399675264
	.quad	0x3fe0a983ce791c72              # double 0.52069273306632469
	.quad	0x401f5ee0d895d96a              # double 7.8426545945606936
	.quad	0x3fecc71af914f184              # double 0.89930485390463887
	.quad	0x4009fc079d13cdda              # double 3.2480613967579588
	.quad	0x4020b0c1b37d8def              # double 8.3452278223766978
	.quad	0x400ae8c44f61d0a7              # double 3.363655681774691
	.quad	0x40222f8163845423              # double 9.0927840327295311
	.quad	0x401967b350832317              # double 6.3512699680366245
	.quad	0x4010834b4798f90b              # double 4.1282168566815569
	.quad	0x402141542cfb3497              # double 8.6275953346869709
	.quad	0x400a339ccaff67f7              # double 3.2752014025872955
	.quad	0x401ad7cb28605d92              # double 6.7107359227005805
	.quad	0x401d7a804525dd05              # double 7.3696299366340599
	.quad	0x401b0a7ca1738573              # double 6.7602410532721136
	.quad	0x401c0b3c0c6883ac              # double 7.0109712542334073
	.quad	0x40224eb9f5c49efe              # double 9.1537625124469706
	.quad	0x4022cac6060d9e3d              # double 9.3960420505164794
	.quad	0x4016a70aa4be8406              # double 5.6631265393525663
	.quad	0x4001586d74493dfb              # double 2.1681775173999518
	.quad	0x3fe231226d0f3002              # double 0.568497860914704
	.quad	0x3fcebc8bd6b0a648              # double 0.24012897475158668
	.quad	0x401962d2376baab2              # double 6.3465050372566782
	.quad	0x401208c4f5027645              # double 4.5085638315918617
	.quad	0x401d609251367424              # double 7.344308155964459
	.quad	0x401b4b3b3dad706a              # double 6.82346817370499
	.quad	0x4002bd20f4136197              # double 2.3423480099119831
	.quad	0x402168dad8416b48              # double 8.70479465292523
	.quad	0x3fdbf3b45bceba84              # double 0.43674954381541675
	.quad	0x40042276592214f0              # double 2.5168272937322556
	.quad	0x4021f7a888b4bca8              # double 8.9837076874376436
	.quad	0x40229ec8e3641765              # double 9.3101264056856028
	.quad	0x3fe2c141e4570590              # double 0.58609099004404364
	.quad	0x4008b835877ba989              # double 3.0899458489049647
	.quad	0x4001f1689e0d99cc              # double 2.2428753230953813
	.quad	0x4018cdc4efa7df07              # double 6.2009465643129777
	.quad	0x40015eee6a7a425c              # double 2.1713531797943642
	.quad	0x3fffe59e836afa05              # double 1.9935593732367363
	.quad	0x3ff80beae436c8d1              # double 1.5029095568284456
	.quad	0x400b00ba81463e47              # double 3.3753557300149484
	.quad	0x400bbf0a2aeec05f              # double 3.4682811121092949
	.quad	0x4015e4f928c2c5a1              # double 5.4736067170028102
	.quad	0x4011f208e68817dc              # double 4.4863620777668665
	.quad	0x40120a64073ebecb              # double 4.5101472026869471
	.quad	0x401fde8577bcbc37              # double 7.9673060139603455
	.quad	0x3fcac6c5adc86640              # double 0.20919104562271862
	.quad	0x3ff46d1e11d54930              # double 1.2766400047881454
	.quad	0x4013b43309d8c404              # double 4.9259759462884212
	.quad	0x401cad244024cbef              # double 7.1690835974177238
	.quad	0x401a4a5a29afdbef              # double 6.572609568937863
	.quad	0x4021d2b2814e8d1f              # double 8.9115181358707201
	.quad	0x4020fea5e8cee293              # double 8.4973595383210405
	.quad	0x4012fd1577df3844              # double 4.7471522073738619
	.quad	0x40230b6f57de8d9f              # double 9.5223338565036197
	.quad	0x3fffd61a35483574              # double 1.9897710877733887
	.quad	0x4021969f1db9d8c7              # double 8.7941827096332315
	.quad	0x4014a9c6f1ca93b7              # double 5.1657979755299754
	.quad	0x40042a8191021439              # double 2.5207549408683261
	.quad	0x400011575c9fd252              # double 2.0084674106858893
	.quad	0x401f15ab2602d288              # double 7.7711606921408318
	.quad	0x4021e5333546391d              # double 8.9476563118192249
	.quad	0x3fc846d7ff543c20              # double 0.18966197936285401
	.quad	0x40130f2613fcd85f              # double 4.7647936938356841
	.quad	0x40233733da6f8bf7              # double 9.6078174840131236
	.quad	0x4023da334ca1b64a              # double 9.9261726329233575
	.quad	0x401dbdeabed57628              # double 7.4354657953058804
	.quad	0x3ffb8a5db1212cb2              # double 1.7212807578205624
	.quad	0x40230fa9304bb409              # double 9.5305876820002755
	.quad	0x40135c57cf7bf964              # double 4.8401787204187237
	.quad	0x40034957d4c78502              # double 2.4108120559109247
	.quad	0x402175afac59430a              # double 8.7298559054338689
	.quad	0x4013059453e09d9b              # double 4.755448637566043
	.quad	0x4020fca686f74f7f              # double 8.4934580017941226
	.quad	0x4015d9a195b387b4              # double 5.4625304594828101
	.quad	0x40062e9a99a8b682              # double 2.7727558140384767
	.quad	0x401a4689331ac879              # double 6.5688827500435929
	.quad	0x3fb1d2f4b2470960              # double 0.069625180744912196
	.quad	0x3ff18a944400afa4              # double 1.0963328033785524
	.quad	0x40124571aadfc208              # double 4.5678164195128446
	.quad	0x40204183d22a4357              # double 8.1279588390913613
	.quad	0x401424e8fae6850d              # double 5.0360449984739377
	.quad	0x3fefd685f95c47c8              # double 0.99493693068711142
	.quad	0x4017fa239c0d5d16              # double 5.994276464763308
	.quad	0x40178017808f6491              # double 5.8750896537323039
	.quad	0x401090fe176e3915              # double 4.1415942822479979
	.quad	0x3ff5a1f963521fac              # double 1.3520444755285821
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	6                               # 0x6
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x40234991bc558644              # double 9.6436899999999994
	.quad	0x401c6f2f55582129              # double 7.1085789999999998
	.quad	0x400b1bbd7b2031cf              # double 3.3885450000000001
	.quad	0x40090979e16d6dc2              # double 3.1296270000000002
	.quad	0x4014a1db0142f61f              # double 5.1580620000000001
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
