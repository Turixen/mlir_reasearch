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
	.quad	9                               # 0x9
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
	lui	a6, %hi(.L__constant_9xindex)
	addi	a6, a6, %lo(.L__constant_9xindex)
	lui	a7, %hi(.L__constant_9xf64)
	addi	a7, a7, %lo(.L__constant_9xf64)
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
	addi	a1, a1, -1792
	vse64.v	v8, (a3)
	vmv.s.x	v8, a1
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse, .Lfunc_end2-assemble_sparse
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_9xindex,@object    # @__constant_9xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_9xindex:
	.quad	4                               # 0x4
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.quad	9                               # 0x9
	.size	.L__constant_9xindex, 72

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	7                               # 0x7
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.size	.L__constant_11xindex, 88

	.type	.L__constant_9xf64,@object      # @__constant_9xf64
	.p2align	6, 0x0
.L__constant_9xf64:
	.quad	0x4021e74906034f40              # double 8.9517290000000002
	.quad	0x40196ede54b48d3b              # double 6.3582700000000001
	.quad	0x4013ba8deb0fadf3              # double 4.9321820000000001
	.quad	0x401397e7c06e19b9              # double 4.8983449999999999
	.quad	0x402133c07ee0b0af              # double 8.6010779999999993
	.quad	0x402175a5b9628cbd              # double 8.7297799999999999
	.quad	0x400ebceaf251c194              # double 3.8422450000000001
	.quad	0x40148e8ea39c51db              # double 5.1392160000000002
	.quad	0x4022d811d3671ac1              # double 9.4220109999999994
	.size	.L__constant_9xf64, 72

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40228382aac136af              # double 9.2568562851768927
	.quad	0x40151b6680d10347              # double 5.2767582061358729
	.quad	0x3ffd59df97111c2b              # double 1.8344417477653774
	.quad	0x40228019484e7aab              # double 9.2501928897666712
	.quad	0x4011875b73e3acc7              # double 4.3821848018371332
	.quad	0x3ffbd55185244556              # double 1.7395796967360488
	.quad	0x4015bf7ad1b2b570              # double 5.4369919553113135
	.quad	0x40215a2de567c8c5              # double 8.6761314095678106
	.quad	0x40120f9b5f861b9a              # double 4.5152411389925877
	.quad	0x4017fa98d3a2c939              # double 5.9947236126047807
	.quad	0x400c2a77166cf628              # double 3.5207349540712762
	.quad	0x4020b67025607713              # double 8.3563243561034479
	.quad	0x3ff677f151c9159b              # double 1.4042828745599312
	.quad	0x4016e4f012030b7e              # double 5.7235720457418875
	.quad	0x4014ae44fc943ba8              # double 5.1701850381349814
	.quad	0x40000cca182a0f04              # double 2.0062448394618304
	.quad	0x401aeb7517edd6cf              # double 6.729938863650843
	.quad	0x40224088978f1342              # double 9.126042114463079
	.quad	0x4023e225e5f8a894              # double 9.9416953912771433
	.quad	0x4019516cb70deeed              # double 6.329516277528211
	.quad	0x402098a9098a0d70              # double 8.2981646519681078
	.quad	0x3ff6aa0c10296c7e              # double 1.4165154105492372
	.quad	0x4023a6763ffc2040              # double 9.8251209254523246
	.quad	0x4018a6467bc8adf5              # double 6.162378248332506
	.quad	0x4011a6cf09e17bea              # double 4.4128991645693336
	.quad	0x40121caa053074a8              # double 4.5279923258614545
	.quad	0x400569686ca63b5c              # double 2.6764687050085012
	.quad	0x401dcca62c262f47              # double 7.449852647619827
	.quad	0x4018e877560667e5              # double 6.2270177308473409
	.quad	0x401f0e4a6d9957bf              # double 7.7639557957499496
	.quad	0x401d5e7bf43e0218              # double 7.3422697222563542
	.quad	0x40136f8418bf48e6              # double 4.8589023463011696
	.quad	0x40107b943e732c03              # double 4.1206826932711946
	.quad	0x402374ac0a2ea68b              # double 9.7278750593134386
	.quad	0x4018efaa6e5404b9              # double 6.2340485800534049
	.quad	0x3ff7fcab5a9bd579              # double 1.4991868533519137
	.quad	0x4006d4bf37cee58a              # double 2.8538803443922847
	.quad	0x401bc3bb3109b123              # double 6.9411437666097155
	.quad	0x3fdb315a3a745898              # double 0.424887234768343
	.quad	0x3feaa7b438a4050c              # double 0.8329716783775054
	.quad	0x401e0fa636cfcab4              # double 7.5152824940038734
	.quad	0x3fb08766b8cc6490              # double 0.064566059223937211
	.quad	0x3ffe9caa03605d93              # double 1.9132480747119629
	.quad	0x3ff7671fbec7c304              # double 1.4626767589908818
	.quad	0x4015288b568d8b31              # double 5.2895940326587132
	.quad	0x40210bfb0685e2bc              # double 8.5233995474276227
	.quad	0x3fead58a8828dc20              # double 0.83856703370736696
	.quad	0x401aa6f80d33775c              # double 6.6630556166327004
	.quad	0x401d8d7c662cb2dd              # double 7.3881698574811852
	.quad	0x40215a23003dd170              # double 8.6760482860051695
	.quad	0x400a77eb468140b6              # double 3.3085542209811036
	.quad	0x400b5df2076f382a              # double 3.4208717900101151
	.quad	0x400f2d6a9601dfa4              # double 3.8971759528466965
	.quad	0x4002e68614eb5201              # double 2.3625604280771317
	.quad	0x4021f45a2c3a4e28              # double 8.9772504635976276
	.quad	0x401adc655f6d1f96              # double 6.7152304563859584
	.quad	0x3fce514425f941f0              # double 0.23685504774267896
	.quad	0x400f074f2ea6fb3e              # double 3.8785689968784984
	.quad	0x40121028b0c8d03f              # double 4.515780222183877
	.quad	0x401f21a3744e8c0e              # double 7.7828500912610377
	.quad	0x3ffd94d4e118d40a              # double 1.8488358300066943
	.quad	0x401cce721d49a3be              # double 7.2016071869083458
	.quad	0x40228417c8cd7a11              # double 9.2579939604593466
	.quad	0x3fe12d1b42f27f7e              # double 0.53675616336475662
	.quad	0x401c416ce0d37f4a              # double 7.0638918999755536
	.quad	0x401febb8cfe59461              # double 7.9801971897005339
	.quad	0x40047add3090825a              # double 2.5599921983814911
	.quad	0x3fed023f37dc15e6              # double 0.90652428541278307
	.quad	0x3ff8b2e53daa5846              # double 1.5436756523900086
	.quad	0x401ad2bd3c0ee0a2              # double 6.7057999977188576
	.quad	0x401f5ce51a45fbd0              # double 7.8407177071776033
	.quad	0x400fabf51cb9e4bb              # double 3.9589636081915081
	.quad	0x4000e9bc153eea51              # double 2.1141282710862375
	.quad	0x400467b9f44ee874              # double 2.5506476484852616
	.quad	0x40165f33020944ba              # double 5.5929680174023648
	.quad	0x4010416660a8d888              # double 4.0638671019606889
	.quad	0x400fd3ecba32c2f2              # double 3.978478865312689
	.quad	0x4023af8dcde04104              # double 9.8428787552115935
	.quad	0x4021b402aae0db08              # double 8.8515828513605044
	.quad	0x401af0e604ea5832              # double 6.7352524536163845
	.quad	0x401ff38657bf3166              # double 7.9878171644635128
	.quad	0x400182660fe7a8ed              # double 2.1886712305614453
	.quad	0x40165aa8871f198a              # double 5.5885335076076306
	.quad	0x4015e357026c6304              # double 5.4720116022733727
	.quad	0x401649975d882913              # double 5.5718664755206815
	.quad	0x4007f42308df7d5c              # double 2.9942074483111991
	.quad	0x3ff31d5e0a491df1              # double 1.194669761827637
	.quad	0x40163e4846865e5f              # double 5.5608225841056926
	.quad	0x40120ec5f2c6753e              # double 4.5144269879941117
	.quad	0x4015c38b481a9f8e              # double 5.4409610048532056
	.quad	0x402370946475b193              # double 9.7198821443242078
	.quad	0x4020d3498aa03084              # double 8.4126704521697845
	.quad	0x40029b4855a7e31a              # double 2.3258215610370714
	.quad	0x4023e1ed5eb90a10              # double 9.9412641144636211
	.quad	0x40180eff5fb59ed2              # double 6.014646048984746
	.quad	0x4003d5c8a7bc8610              # double 2.4793866257102835
	.quad	0x4023814a37d920a0              # double 9.7525193646000048
	.quad	0x4023d4b6887680fe              # double 9.9154551167161991
	.quad	0x3fe4fba523ac4fa8              # double 0.65571839301491242
	.quad	0x4016e1d84e439525              # double 5.7205517033337729
	.size	.L__constant_10x10xf64, 800

	.section	".note.GNU-stack","",@progbits
