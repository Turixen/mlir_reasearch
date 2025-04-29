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
	.quad	0x4016b001a6fba4dc              # double 5.6718813029376314
	.quad	0x4016aac989d1e7ac              # double 5.6667844328275514
	.quad	0x400ae879654bfdbe              # double 3.363512793904845
	.quad	0x401125954666c7e6              # double 4.2867022514564947
	.quad	0x40073e3a778cfd52              # double 2.9053849544431296
	.quad	0x4022375a9c6fb98b              # double 9.1081131826765809
	.quad	0x400fba9432b4ffaa              # double 3.9661029778944412
	.quad	0x401229287cb80f2c              # double 4.5401935088482723
	.quad	0x401da35faedb0122              # double 7.4095446892900174
	.quad	0x400df7b10f7e0784              # double 3.7459431848846538
	.quad	0x402048310408887a              # double 8.1409989605347057
	.quad	0x4017023933ea079a              # double 5.7521713363256826
	.quad	0x4021b6099228939c              # double 8.8555417704135876
	.quad	0x400f81c51407c2d2              # double 3.9383641781681513
	.quad	0x3ffd8783de54a0f9              # double 1.8455847439564066
	.quad	0x4022ce1df78044c3              # double 9.4025723785474664
	.quad	0x4017818e23341fb1              # double 5.8765187740863647
	.quad	0x4011995713dc194e              # double 4.3997462370956111
	.quad	0x401ba3e78a0c02d0              # double 6.9100629396277355
	.quad	0x4010a4c060e4bfa0              # double 4.1608901157013918
	.quad	0x3fee9dd79c7c3eba              # double 0.95676785052815849
	.quad	0x401af11ae6dadb92              # double 6.7354541846351754
	.quad	0x40228b20e92f4016              # double 9.2717354650667794
	.quad	0x40083c69c0a350c2              # double 3.0294985818710254
	.quad	0x402296d92effe4d1              # double 9.2946257293100718
	.quad	0x401507fbe8f5d29a              # double 5.257796897891831
	.quad	0x3ff9d239b4779492              # double 1.613824562978412
	.quad	0x401d928e3223a76f              # double 7.3931205591451166
	.quad	0x3fe09af915d97204              # double 0.51891760127506403
	.quad	0x3fb1458f750b0cb0              # double 0.067467657160750205
	.quad	0x401d44dc69b968b4              # double 7.3172470588125869
	.quad	0x401c43c4e26c2bc8              # double 7.0661807421228744
	.quad	0x4022f483fde22cfd              # double 9.4775695170014788
	.quad	0x4010c692d5d44a25              # double 4.1939195071049982
	.quad	0x40152da89ae18117              # double 5.2945884895455242
	.quad	0x401bf8a82bb31c43              # double 6.9928290203161536
	.quad	0x401a85bd83514cbc              # double 6.6306057470675874
	.quad	0x4023fa25f9f39034              # double 9.9885709867304299
	.quad	0x40002a5ecb51a746              # double 2.0206886181157726
	.quad	0x4008b180f4d31ea4              # double 3.0866717459610573
	.quad	0x4018bcbac4b7d6ae              # double 6.1843062150198147
	.quad	0x402078bfcb8be33a              # double 8.2358382805119739
	.quad	0x401486d4391c2a5b              # double 5.1316689418259456
	.quad	0x4020d77d2cd092d1              # double 8.4208768848997426
	.quad	0x40116e8d2ce2b4da              # double 4.3579604161615979
	.quad	0x401a2a8b61799432              # double 6.5415473204093804
	.quad	0x40122133d4ae3494              # double 4.5324242812468079
	.quad	0x3fefd4cce14fc25a              # double 0.99472660070575647
	.quad	0x4015b64802b3207b              # double 5.4280090734320039
	.quad	0x3fd416b4a7a1fe4c              # double 0.31388584490193661
	.quad	0x4003a59e3444639f              # double 2.4558681567545615
	.quad	0x4007fd9ac62ae56c              # double 2.9988303644028544
	.quad	0x3ff9d657d332d5af              # double 1.6148298501915226
	.quad	0x4004225f6addf478              # double 2.5167835568413999
	.quad	0x401c2b3df1ec68ca              # double 7.0422284889738851
	.quad	0x401f5a850365aff0              # double 7.838398030358789
	.quad	0x4014ad8a90aeeae0              # double 5.1694738966714056
	.quad	0x40161d9f1ed6dc56              # double 5.5289273089066082
	.quad	0x4020e2757927f293              # double 8.4423024998916727
	.quad	0x4018ed1405637788              # double 6.2315216867408552
	.quad	0x400b9ec76265e58a              # double 3.4525287330004106
	.quad	0x401761d81fa6b204              # double 5.8455510087483198
	.quad	0x4006ef5d514653d4              # double 2.8668772077166782
	.quad	0x401601d6345a866f              # double 5.501793687844482
	.quad	0x400752b63830803d              # double 2.9153866185952482
	.quad	0x3ff78c01b89448bb              # double 1.471681328785549
	.quad	0x3facd0dbe979a6a0              # double 0.056280967951193306
	.quad	0x3ff0838f4918341f              # double 1.0321190696006466
	.quad	0x401510e8cce16475              # double 5.2665130627220735
	.quad	0x3ffd8ae5b2a642e5              # double 1.8464104631895506
	.quad	0x3fd80a8c0fad664c              # double 0.3756437447642369
	.quad	0x400083e16c247c50              # double 2.0643948029169579
	.quad	0x4003522c89fd4a60              # double 2.4151240139411101
	.quad	0x3fdd513a0f369c48              # double 0.45808269010234826
	.quad	0x401c67efd4e5232e              # double 7.1015008225302108
	.quad	0x40185a5eb07b38bc              # double 6.0882518363197811
	.quad	0x4007a5d9d7a127bc              # double 2.9559819074683826
	.quad	0x401def5bc33fe483              # double 7.4837484843966448
	.quad	0x401f4581107bde13              # double 7.8178751540758808
	.quad	0x4012c851afa988f1              # double 4.6956241080499561
	.quad	0x4014d102c79b045a              # double 5.2041121662487857
	.quad	0x40114e937b2bba23              # double 4.3267344708861257
	.quad	0x3fe0fe58327fe574              # double 0.5310479151077474
	.quad	0x4014f87ae98a4d3e              # double 5.2426563730871845
	.quad	0x4020b8cfadb02620              # double 8.3609594609761757
	.quad	0x3ff89db787e5c348              # double 1.5385051067825817
	.quad	0x401e848ec324b077              # double 7.6294508448737508
	.quad	0x401a62fd55a53e30              # double 6.5966695196253085
	.quad	0x3fe150f19bdc9abc              # double 0.54113083307023357
	.quad	0x400646022b1c38db              # double 2.7841838233936023
	.quad	0x4005427e8e01b922              # double 2.6574679464603301
	.quad	0x401ece1cf572cc16              # double 7.7012823439900071
	.quad	0x4012a446a46c44ce              # double 4.6604257289011013
	.quad	0x4023a45425793781              # double 9.8209544859380475
	.quad	0x40216eb4398d5dd6              # double 8.7162187562052331
	.quad	0x4017b0362482a4e6              # double 5.9220815376986362
	.quad	0x401c5020145f1409              # double 7.0782473738700071
	.quad	0x401d96400cd0c3fc              # double 7.3967287065906895
	.quad	0x4017fb16da4a79de              # double 5.9952043636280603
	.quad	0x40226960b2fdec51              # double 9.2058158812489257
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_5xindex,@object    # @__constant_5xindex
	.p2align	6, 0x0
.L__constant_5xindex:
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.size	.L__constant_5xindex, 40

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.quad	5                               # 0x5
	.size	.L__constant_11xindex, 88

	.type	.L__constant_5xf64,@object      # @__constant_5xf64
	.p2align	6, 0x0
.L__constant_5xf64:
	.quad	0x4001398e10cf5b1d              # double 2.1531030000000002
	.quad	0x4007f4067cf1c326              # double 2.9941529999999998
	.quad	0x4018b8a116659d13              # double 6.1803020000000002
	.quad	0x4023c040bfe3b03e              # double 9.8754939999999998
	.quad	0x3ff6ff316e371540              # double 1.437303
	.size	.L__constant_5xf64, 40

	.section	".note.GNU-stack","",@progbits
