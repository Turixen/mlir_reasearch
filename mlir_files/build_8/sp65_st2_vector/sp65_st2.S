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
	.quad	0x400d57bdaaf83978              # double 3.6678422314645864
	.quad	0x40181d51984a62e2              # double 6.0286315722848673
	.quad	0x4021dc8159e2a4ba              # double 8.9306743706859955
	.quad	0x402071a6813d0bee              # double 8.2219734560985351
	.quad	0x3fff26d4bc05fcfe              # double 1.9469802231467948
	.quad	0x401675ff174d6936              # double 5.6152309075353539
	.quad	0x401d3f78967a5322              # double 7.3119834434662909
	.quad	0x3ffd384207291a50              # double 1.8262348441800391
	.quad	0x40109f36871a6b18              # double 4.1554814443468544
	.quad	0x40152012aff7f73b              # double 5.2813212866874961
	.quad	0x400565909301886e              # double 2.6745921597330868
	.quad	0x401ccd48cffc7f7a              # double 7.2004730699408075
	.quad	0x40153322f42cb137              # double 5.2999380256917936
	.quad	0x402088a757c29bf9              # double 8.2669017243442671
	.quad	0x401ed6be137f5986              # double 7.7097094580152596
	.quad	0x401e9c39a636d222              # double 7.6525636645278912
	.quad	0x400349e0c6b86c18              # double 2.4110732579261018
	.quad	0x3fe5ca245f1efa4c              # double 0.68092554643937708
	.quad	0x400bb119d0d8757d              # double 3.4614750209863687
	.quad	0x3fd25691f393e214              # double 0.28653382098085101
	.quad	0x400de9c674e9ecc0              # double 3.739148057354754
	.quad	0x40151beff9ea9c6e              # double 5.2772826241917823
	.quad	0x3fd3d47431c7a924              # double 0.30984215604134335
	.quad	0x4015d8b7e4f2733d              # double 5.4616390011768177
	.quad	0x4023292bd97a4aea              # double 9.5804126703055381
	.quad	0x4020acccb0da2a90              # double 8.3374991670910106
	.quad	0x4013f5d460e0989d              # double 4.9900679719050034
	.quad	0x40044120618621ae              # double 2.5318000430163101
	.quad	0x400f5f5d3ce558ef              # double 3.9215645558825751
	.quad	0x3fab81fabdea7a40              # double 0.053726039584252039
	.quad	0x401230c81b86bc74              # double 4.5476383496271531
	.quad	0x4021317adc9aa8b2              # double 8.5966404856484111
	.quad	0x4015c8a9367efb4a              # double 5.4459579958918969
	.quad	0x40198eb5c3d00662              # double 6.3893652530401557
	.quad	0x40097c1b42cfa227              # double 3.1855988711943328
	.quad	0x3fe634733c2a31f0              # double 0.69390260458891184
	.quad	0x40115e02a92f7f74              # double 4.3418070254555126
	.quad	0x400a82d8d2233497              # double 3.3138901154512257
	.quad	0x4022b70b1a6ee858              # double 9.3575065861115689
	.quad	0x4015b9843260c110              # double 5.431168353228955
	.quad	0x3ffaff65bd9248e7              # double 1.6873528866895471
	.quad	0x400b86d1a973ab64              # double 3.4408295858788041
	.quad	0x4022f2ea096ebdbc              # double 9.4744418094331805
	.quad	0x402390abf48f1930              # double 9.7825619148903513
	.quad	0x400f8fe644f119c5              # double 3.9452634225919803
	.quad	0x3fcaf413cd8b3c48              # double 0.21057364975283321
	.quad	0x40146eb75eb96e7f              # double 5.1081213761023028
	.quad	0x3ffe4243ee4f02a8              # double 1.8911780651980425
	.quad	0x4023e969e3521bb8              # double 9.9558859861116246
	.quad	0x40181f2c35bde7d9              # double 6.0304420849951947
	.quad	0x40210d8d6e89d71d              # double 8.5264696639310902
	.quad	0x3feb80b98b45c5b4              # double 0.85946347428960345
	.quad	0x401639a6b5d8213b              # double 5.5563000119366803
	.quad	0x402246ce2735e5d0              # double 9.1382915738385293
	.quad	0x4014d9993aea6877              # double 5.2124985890933351
	.quad	0x3ff7320608fc4421              # double 1.4497127867691761
	.quad	0x401fde3b9eebc54c              # double 7.9670243102458009
	.quad	0x3fe43a34684be48a              # double 0.63210506792451437
	.quad	0x4006603c98a6b45c              # double 2.7969905782579598
	.quad	0x3fe1b2c98ef504da              # double 0.55307462617215752
	.quad	0x3fdd90d7c3b7d3f8              # double 0.46196550477117126
	.quad	0x4012eb092949b1b4              # double 4.7295271350125638
	.quad	0x3fff9056168e5b81              # double 1.9727383500191709
	.quad	0x3fff96794a34ad3b              # double 1.9742367647803138
	.quad	0x401743359b8f0c4e              # double 5.8156341844615564
	.quad	0x400c3d6d37ef124b              # double 3.5299934739908045
	.quad	0x40143fbbe42dfc1a              # double 5.0622401860300901
	.quad	0x4021524ad6f1b85c              # double 8.6607272310322329
	.quad	0x400fd2015bff9157              # double 3.9775416552894671
	.quad	0x3fcc4635751e06b0              # double 0.22089260309808401
	.quad	0x40236f3608e3f91f              # double 9.7172091272628318
	.quad	0x4022af03cfad7263              # double 9.3418259524561957
	.quad	0x4022dac22d474686              # double 9.4272627019411281
	.quad	0x401f0b4b68052be8              # double 7.7610298398167074
	.quad	0x3fffc3c59443c352              # double 1.9852958480443772
	.quad	0x4006181d0943eab4              # double 2.7617741321422162
	.quad	0x4009c26334d4e1a3              # double 3.2199157836405035
	.quad	0x401ef9f8ffd2d652              # double 7.744113919490319
	.quad	0x3fac803305f5a440              # double 0.055665583112223249
	.quad	0x4022c104eae5f22c              # double 9.3769906430907994
	.quad	0x40195911809a4cd0              # double 6.3369808286835934
	.quad	0x402102f50baa24b7              # double 8.5057757992930032
	.quad	0x3ff5a92924fead47              # double 1.3537990040884595
	.quad	0x40147d9041c61876              # double 5.1226206090124062
	.quad	0x3ff35b5157803e93              # double 1.209794370461087
	.quad	0x40031af59dcb7d62              # double 2.3881637885785247
	.quad	0x3fee25e179b82326              # double 0.94212411664293394
	.quad	0x3ffbd0eba5fdaf7f              # double 1.7385059818288651
	.quad	0x400dca5a0d6ca7d8              # double 3.7238045738967962
	.quad	0x3fc7256df2f732c0              # double 0.18082975734286855
	.quad	0x40206392de326873              # double 8.1944798885853967
	.quad	0x4016f87e0977c5f6              # double 5.7426682929376422
	.quad	0x3ff28a459869a67a              # double 1.1587577775593716
	.quad	0x40102edc10d5dd98              # double 4.045761359265633
	.quad	0x4023bba9d51d5884              # double 9.8665300939867464
	.quad	0x4021ce89439cbc88              # double 8.9033909920529055
	.quad	0x4019e8ef1b06c997              # double 6.4774746153729188
	.quad	0x4018f324ed7f775a              # double 6.2374455555962758
	.quad	0x4021d785e08f1e73              # double 8.9209432768541088
	.quad	0x400939d06eecd240              # double 3.1532295862218973
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_35xindex,@object   # @__constant_35xindex
	.p2align	6, 0x0
.L__constant_35xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.size	.L__constant_35xindex, 280

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.size	.L__constant_11xindex, 88

	.type	.L__constant_35xf64,@object     # @__constant_35xf64
	.p2align	6, 0x0
.L__constant_35xf64:
	.quad	0x4016ab0c88a47ed0              # double 5.6670400000000001
	.quad	0x401f23b107746888              # double 7.7848550000000003
	.quad	0x4021911a32b12d34              # double 8.7834029999999998
	.quad	0x40010692f6e8294a              # double 2.1282100000000002
	.quad	0x4022a720ea5b530d              # double 9.3264230000000001
	.quad	0x4004cfad6cb53501              # double 2.6014050000000002
	.quad	0x401b2c69f8c21e1d              # double 6.7933729999999999
	.quad	0x402030b5cbff4773              # double 8.0951369999999994
	.quad	0x3ffe29d8409e55c1              # double 1.885216
	.quad	0x4007ac9ea9a3d2d8              # double 2.9592869999999998
	.quad	0x4012c11b60ae9681              # double 4.6885810000000001
	.quad	0x40009762d83c6c98              # double 2.0739190000000001
	.quad	0x401abf809917939a              # double 6.6870139999999996
	.quad	0x40030a58b3f63c32              # double 2.3800520000000001
	.quad	0x4022b9d81f106680              # double 9.3629770000000008
	.quad	0x401820c23fab10ba              # double 6.0319909999999997
	.quad	0x401b0ab474107315              # double 6.7604540000000002
	.quad	0x40229b87160956c1              # double 9.3037650000000003
	.quad	0x3ff5fec99f1ae2da              # double 1.3747039999999999
	.quad	0x402080b0f27bb2ff              # double 8.2513500000000004
	.quad	0x401e83f077ccc038              # double 7.6288470000000003
	.quad	0x3fea91a32b12d341              # double 0.83027799999999996
	.quad	0x3fdc5c4a83b1d0c8              # double 0.443133
	.quad	0x3ff2d2ab68cef673              # double 1.1764330000000001
	.quad	0x3fe8344a1f080304              # double 0.75638300000000002
	.quad	0x4017da176ddaceee              # double 5.9629799999999999
	.quad	0x4002a6d938151a43              # double 2.3314689999999998
	.quad	0x401b3858793dd97f              # double 6.8050249999999997
	.quad	0x401360e6f2e8c048              # double 4.8446309999999997
	.quad	0x400f951697f1f9ad              # double 3.947797
	.quad	0x402163cff64cf8d7              # double 8.6949459999999998
	.quad	0x401454aba3875925              # double 5.0826859999999998
	.quad	0x4004f31ec0b56755              # double 2.6187109999999998
	.quad	0x3fd8a9bcfd4bf099              # double 0.38535999999999998
	.quad	0x402130bae89eba6b              # double 8.5951760000000004
	.size	.L__constant_35xf64, 280

	.section	".note.GNU-stack","",@progbits
