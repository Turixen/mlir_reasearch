	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	sparse_dense_matmul             # -- Begin function sparse_dense_matmul
	.p2align	1
	.type	sparse_dense_matmul,@function
sparse_dense_matmul:                    # @sparse_dense_matmul
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	s0, 88(sp)                      # 8-byte Folded Spill
	sd	s1, 80(sp)                      # 8-byte Folded Spill
	sd	s2, 72(sp)                      # 8-byte Folded Spill
	sd	s3, 64(sp)                      # 8-byte Folded Spill
	sd	s4, 56(sp)                      # 8-byte Folded Spill
	sd	s5, 48(sp)                      # 8-byte Folded Spill
	sd	s6, 40(sp)                      # 8-byte Folded Spill
	sd	s7, 32(sp)                      # 8-byte Folded Spill
	sd	s8, 24(sp)                      # 8-byte Folded Spill
	sd	s9, 16(sp)                      # 8-byte Folded Spill
	sd	s10, 8(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	.cfi_offset s9, -80
	.cfi_offset s10, -88
	li	t6, 0
	li	t5, 0
	ld	s7, 208(sp)
	ld	a6, 304(sp)
	ld	t0, 296(sp)
	ld	t1, 288(sp)
	ld	t2, 280(sp)
	ld	t3, 272(sp)
	ld	s8, 264(sp)
	ld	t4, 256(sp)
	ld	s3, 128(sp)
	csrr	a1, vlenb
	li	s6, 9
	slli	s9, a1, 2
	srli	s10, a1, 1
	li	s2, 80
	vsetvli	a3, zero, e32, m2, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 80
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a3, t5, 3
	add	a3, a3, a2
	lwu	a4, 4(a3)
	lwu	a5, 0(a3)
	lwu	s0, 12(a3)
	lwu	a3, 8(a3)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	s1, 0
	slli	a3, s5, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, s3
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	s0, a4, s2
	li	a3, 10
	mv	a1, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a5
	add	a5, s8, s0
	vmv4r.v	v16, v12
	add	a4, s7, a1
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v16, (a5), v0.t
	vle64.v	v20, (a4), v0.t
	add	s1, s1, s10
	add	s0, s0, s9
	add	a1, a1, s9
	vfmul.vf	v20, v20, fa5
	vfadd.vv	v16, v16, v20
	vse64.v	v16, (a5), v0.t
	sub	a3, a3, s10
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, s1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	a5, a3
	blt	a3, s10, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	a5, s10
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 88(sp)                      # 8-byte Folded Reload
	ld	s1, 80(sp)                      # 8-byte Folded Reload
	ld	s2, 72(sp)                      # 8-byte Folded Reload
	ld	s3, 64(sp)                      # 8-byte Folded Reload
	ld	s4, 56(sp)                      # 8-byte Folded Reload
	ld	s5, 48(sp)                      # 8-byte Folded Reload
	ld	s6, 40(sp)                      # 8-byte Folded Reload
	ld	s7, 32(sp)                      # 8-byte Folded Reload
	ld	s8, 24(sp)                      # 8-byte Folded Reload
	ld	s9, 16(sp)                      # 8-byte Folded Reload
	ld	s10, 8(sp)                      # 8-byte Folded Reload
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
	addi	sp, sp, 96
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sparse_dense_matmul, .Lfunc_end0-sparse_dense_matmul
	.cfi_endproc
                                        # -- End function
	.globl	compute_sum                     # -- Begin function compute_sum
	.p2align	1
	.type	compute_sum,@function
compute_sum:                            # @compute_sum
	.cfi_startproc
# %bb.0:
	li	a6, 0
	li	a2, 0
	fmv.d.x	fa0, zero
	li	a3, 9
	j	.LBB1_2
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	addi	a2, a2, 1
	addi	a6, a6, 80
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	blt	a3, a2, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	li	a4, 0
	mv	a0, a6
	bltz	a3, .LBB1_1
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a5, a1, a0
	fld	fa5, 0(a5)
	addi	a4, a4, 1
	fadd.d	fa0, fa0, fa5
	addi	a0, a0, 8
	bge	a3, a4, .LBB1_4
	j	.LBB1_1
.LBB1_5:
	ret
.Lfunc_end1:
	.size	compute_sum, .Lfunc_end1-compute_sum
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
	call	assemble_sparse_tensor
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
	call	sparse_dense_matmul
	ld	a4, 256(sp)
	ld	a5, 264(sp)
	ld	a6, 272(sp)
	ld	a0, 224(sp)
	ld	a1, 232(sp)
	ld	a2, 240(sp)
	ld	a3, 248(sp)
	call	compute_sum
	fcvt.w.d	a0, fa0, rtz
	ld	ra, 456(sp)                     # 8-byte Folded Reload
	ld	s0, 448(sp)                     # 8-byte Folded Reload
	ld	s1, 440(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 464
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
.LCPI3_0:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_11xindex)
	addi	a1, a1, %lo(.L__constant_11xindex)
	lui	a7, %hi(.L__constant_50xindex)
	addi	a7, a7, %lo(.L__constant_50xindex)
	lui	t0, %hi(.L__constant_50xf64)
	addi	t0, t0, %lo(.L__constant_50xf64)
	li	a6, 11
	li	t1, 10
	lui	a4, 228023
	lui	a2, %hi(.LCPI3_0)
	addi	a2, a2, %lo(.LCPI3_0)
	addi	a3, a0, 56
	lui	a5, %hi(.LCPI3_1)
	addi	a5, a5, %lo(.LCPI3_1)
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	ld	a2, 80(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	addi	a1, a0, 16
	sd	t1, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a5)
	addi	a0, a0, 96
	lui	a2, 40979
	addi	a2, a2, 512
	vse64.v	v8, (a1)
	vmv.s.x	v8, a2
	vsext.vf8	v10, v8
	vse64.v	v10, (a0)
	ret
.Lfunc_end3:
	.size	assemble_sparse_tensor, .Lfunc_end3-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x402305c5718eb895              # double 9.5112719999999999
	.quad	0x40144fa58f7121ab              # double 5.0777799999999997
	.quad	0x40207c057082491b              # double 8.242229
	.quad	0x400e00fdc1615ec0              # double 3.7504840000000002
	.quad	0x4007a1847f562175              # double 2.9538660000000001
	.quad	0x401d7b65ecc3e319              # double 7.3705059999999998
	.quad	0x400bc095f2452c5a              # double 3.469036
	.quad	0x3ff188e9b38d60a6              # double 1.095926
	.quad	0x4007c9478c868ba0              # double 2.9732810000000001
	.quad	0x4020878f68be2f7b              # double 8.2647659999999998
	.quad	0x4022e3198288051d              # double 9.4435540000000006
	.quad	0x4022ce41f644955b              # double 9.4028469999999995
	.quad	0x40212619da9c9928              # double 8.5744159999999994
	.quad	0x4016255eaee2003b              # double 5.5364940000000002
	.quad	0x3fe22856605ee569              # double 0.56742400000000004
	.quad	0x4022f009917939a8              # double 9.4688230000000004
	.quad	0x4012c65e89225311              # double 4.6937199999999999
	.quad	0x400f6ff6d330941d              # double 3.9296700000000002
	.quad	0x400a324180d3cff6              # double 3.2745389999999999
	.quad	0x401824ccee5abc0e              # double 6.0359379999999998
	.quad	0x3ff3dedf1e0828c3              # double 1.2419119999999999
	.quad	0x4013d8548a9bcfd5              # double 4.9612600000000002
	.quad	0x400761c92ddbdb5e              # double 2.9227470000000002
	.quad	0x3ff7b76922d948dc              # double 1.482278
	.quad	0x40055b0bbf50e347              # double 2.6694559999999998
	.quad	0x40114aa6d2674081              # double 4.322902
	.quad	0x400721da7b0b3919              # double 2.8915299999999999
	.quad	0x401f1cdd0d8cb07d              # double 7.7781869999999999
	.quad	0x4002583c6c97d8cf              # double 2.2930839999999999
	.quad	0x3fe1f824d4cb9ecf              # double 0.56154099999999996
	.quad	0x400e8c9107faa045              # double 3.8186360000000001
	.quad	0x401d599e94ab1d50              # double 7.3375190000000003
	.quad	0x3fc90b84988094e6              # double 0.195664
	.quad	0x3ffe70c564f97edc              # double 1.9025319999999999
	.quad	0x3fe126937d1fe64f              # double 0.53595899999999996
	.quad	0x4021cf8f041461b7              # double 8.9053880000000003
	.quad	0x40115c7325918a01              # double 4.3402830000000003
	.quad	0x3ff78abe6a337a81              # double 1.471373
	.quad	0x400ab5cd0bb6ed67              # double 3.3387699999999998
	.quad	0x400f8adab9f559b4              # double 3.9428000000000001
	.quad	0x4023c3f9c62a1b5c              # double 9.8827649999999991
	.quad	0x402321e59f2ba9d2              # double 9.5662050000000001
	.quad	0x4023b7b267c6b8b7              # double 9.8587830000000007
	.quad	0x401de6672fba01ef              # double 7.4750030000000001
	.quad	0x3ffa05d52c16df40              # double 1.6264240000000001
	.quad	0x4021b1e108c3f3e0              # double 8.8474199999999996
	.quad	0x401cb126e978d4fe              # double 7.173
	.quad	0x4017af6e82949a56              # double 5.9213199999999997
	.quad	0x3ff4746fdeb52c9d              # double 1.278427
	.quad	0x401c031a4bdba0a5              # double 7.0030299999999999
	.quad	0x401e3d4845132f88              # double 7.5598460000000002
	.quad	0x402208a116659d13              # double 9.0168540000000004
	.quad	0x3fe6468cac4b4d05              # double 0.69611199999999995
	.quad	0x3feab41e14bdfd26              # double 0.83448699999999998
	.quad	0x4011bf3b645a1cac              # double 4.43675
	.quad	0x40224481d3aa36a0              # double 9.1338030000000003
	.quad	0x400f8605681ecd4b              # double 3.9404400000000002
	.quad	0x4012c36544fe36d2              # double 4.6908159999999999
	.quad	0x401a297bfa4c61d8              # double 6.5405119999999997
	.quad	0x401cddc8323358f3              # double 7.2165840000000001
	.quad	0x400080daa0cae643              # double 2.0629170000000001
	.quad	0x400ad856a37ac3eb              # double 3.3556339999999998
	.quad	0x3ff1cf94c87980f5              # double 1.1131789999999999
	.quad	0x4012ba31e7d9988d              # double 4.6818309999999999
	.quad	0x40105671ef30a4e3              # double 4.0844189999999996
	.quad	0x3fe703fd50225743              # double 0.71923700000000002
	.quad	0x401c52dfd694ccab              # double 7.0809319999999998
	.quad	0x4010ea83b1d0c804              # double 4.2290179999999999
	.quad	0x40185fbeb9e492bc              # double 6.0935009999999998
	.quad	0x4010539fba450acc              # double 4.081664
	.quad	0x4016538f36694899              # double 5.581601
	.quad	0x4017b8359bc33f85              # double 5.9298919999999997
	.quad	0x4021b62ef4e0114d              # double 8.8558269999999997
	.quad	0x40203a5fa658c4bd              # double 8.1140109999999996
	.quad	0x3ffa5c37a3db3bfb              # double 1.6475139999999999
	.quad	0x4011a045baf533f4              # double 4.4065159999999999
	.quad	0x3feca877ee4e26d5              # double 0.89556500000000006
	.quad	0x4006399e518f3ecd              # double 2.7781340000000001
	.quad	0x40206757f737da62              # double 8.2018430000000002
	.quad	0x401c38d759ee88df              # double 7.0555089999999998
	.quad	0x401c4014b599aa61              # double 7.0625790000000004
	.quad	0x400cb8b47c73eee5              # double 3.5901879999999999
	.quad	0x4022d0edc3bd5992              # double 9.4080639999999995
	.quad	0x401de6555c52e72e              # double 7.4749350000000003
	.quad	0x4002e6dbd72bcb60              # double 2.362724
	.quad	0x40177da272862f5a              # double 5.8726900000000004
	.quad	0x3fe9660a2014727e              # double 0.79370600000000002
	.quad	0x3fece136e71cda2b              # double 0.90249199999999996
	.quad	0x401d6b12d3415b14              # double 7.3545639999999999
	.quad	0x4004ed6dc1a47a9e              # double 2.6159319999999999
	.quad	0x401c85dfeb8d8234              # double 7.1307369999999999
	.quad	0x400aabe5109070fc              # double 3.333933
	.quad	0x3ff1f9b77c02afde              # double 1.1234660000000001
	.quad	0x4003262f5989df11              # double 2.3936449999999998
	.quad	0x40218f76a2f48c2e              # double 8.7802019999999992
	.quad	0x400dec1d29dc725c              # double 3.7402899999999999
	.quad	0x400296f4384ba0e8              # double 2.3237079999999999
	.quad	0x400f98fabda0dfdf              # double 3.949697
	.quad	0x3fed9dc93ea2d2fe              # double 0.92551099999999997
	.quad	0x401f4e3193f6c26a              # double 7.8263610000000003
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.size	.L__constant_50xindex, 400

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x40231e24febd09e1              # double 9.5588759999999997
	.quad	0x401c69cc319c5a3e              # double 7.1033179999999998
	.quad	0x4014703e20ccff22              # double 5.1096120000000003
	.quad	0x400757b8d3f1843c              # double 2.9178329999999999
	.quad	0x3fca6efc371da37f              # double 0.206512
	.quad	0x4005574b40703298              # double 2.667624
	.quad	0x40236adafd113837              # double 9.7087020000000006
	.quad	0x4015cde9c0229a5f              # double 5.4510870000000002
	.quad	0x40207be468cac4b5              # double 8.2419770000000003
	.quad	0x4018e1e81cb46bad              # double 6.220612
	.quad	0x40195fde2ef4e011              # double 6.3436209999999997
	.quad	0x4022e80a393ee5ef              # double 9.4532030000000002
	.quad	0x400051e7d9988d2a              # double 2.0399929999999999
	.quad	0x4005299b6f5caf2d              # double 2.6453159999999998
	.quad	0x401a4b1f255f351a              # double 6.5733610000000002
	.quad	0x400a9ebd09e12a52              # double 3.3275090000000001
	.quad	0x3ffdede33269df98              # double 1.8705780000000001
	.quad	0x401dccb46bacf744              # double 7.4499069999999996
	.quad	0x3fcbfb0d51f81a58              # double 0.21859899999999999
	.quad	0x40224ca1272c94b4              # double 9.1496670000000008
	.quad	0x3fe62d96a6a0125a              # double 0.69306500000000004
	.quad	0x400b71876188b114              # double 3.430434
	.quad	0x4000cc00da1a9329              # double 2.0996109999999999
	.quad	0x4018f705c896dd27              # double 6.2412330000000003
	.quad	0x3fd44199fe43675e              # double 0.31650400000000001
	.quad	0x3fec2806af46aa08              # double 0.87988599999999995
	.quad	0x4020ad2849cb252d              # double 8.3381980000000002
	.quad	0x40186303c07ee0b1              # double 6.0966940000000003
	.quad	0x401ac41fa7653437              # double 6.6915269999999998
	.quad	0x4012e49be8ff327b              # double 4.7232510000000003
	.quad	0x40201f498c3b0c46              # double 8.0611080000000008
	.quad	0x3fea1cb6848beb5b              # double 0.81600499999999998
	.quad	0x40231b88a8b08dd2              # double 9.5537770000000002
	.quad	0x401baa311e85fd05              # double 6.9162030000000003
	.quad	0x40115ad2135daad6              # double 4.338692
	.quad	0x4023051aa821f299              # double 9.5099689999999998
	.quad	0x3fd50e8c8abd5dc4              # double 0.329013
	.quad	0x4023b55eaee2003b              # double 9.8542380000000004
	.quad	0x401a8b46fdeb52ca              # double 6.6360130000000002
	.quad	0x4023056605ee568a              # double 9.5105439999999994
	.quad	0x4017372f76e6106b              # double 5.8038920000000003
	.quad	0x4019bc0a8d21bc12              # double 6.4336339999999996
	.quad	0x400cc5ab3aabcd79              # double 3.5965180000000001
	.quad	0x4018f2135daad602              # double 6.236402
	.quad	0x400bb54c122749f1              # double 3.463524
	.quad	0x401a2b65668c2614              # double 6.5423790000000004
	.quad	0x3fd258dde7a743a6              # double 0.28667399999999998
	.quad	0x40110c43b2dd377e              # double 4.2619769999999999
	.quad	0x401d00f4d7add15f              # double 7.250934
	.quad	0x401c0b56fb8f57f7              # double 7.0110739999999998
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
