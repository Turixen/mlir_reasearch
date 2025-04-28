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
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	s0, 72(sp)                      # 8-byte Folded Spill
	sd	s1, 64(sp)                      # 8-byte Folded Spill
	sd	s2, 56(sp)                      # 8-byte Folded Spill
	sd	s3, 48(sp)                      # 8-byte Folded Spill
	sd	s4, 40(sp)                      # 8-byte Folded Spill
	sd	s5, 32(sp)                      # 8-byte Folded Spill
	sd	s6, 24(sp)                      # 8-byte Folded Spill
	sd	s7, 16(sp)                      # 8-byte Folded Spill
	sd	s8, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
	.cfi_offset s4, -40
	.cfi_offset s5, -48
	.cfi_offset s6, -56
	.cfi_offset s7, -64
	.cfi_offset s8, -72
	li	t6, 0
	li	t5, 0
	ld	s7, 192(sp)
	ld	a6, 288(sp)
	ld	t0, 280(sp)
	ld	t1, 272(sp)
	ld	t2, 264(sp)
	ld	t3, 256(sp)
	ld	s8, 248(sp)
	ld	t4, 240(sp)
	ld	s3, 112(sp)
	li	s6, 9
	li	s2, 80
	vsetivli	zero, 4, e32, m1, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m2, ta, ma
	vmv.v.i	v10, 0
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	t6, t6, 80
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	blt	s6, t5, .LBB0_11
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	slli	a1, t5, 3
	add	a1, a1, a2
	lwu	a4, 4(a1)
	lwu	a5, 0(a1)
	lwu	s0, 12(a1)
	lwu	a1, 8(a1)
	slli	a4, a4, 32
	or	s5, a4, a5
	slli	s0, s0, 32
	or	s4, s0, a1
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s5, s5, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s5, s4, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	a1, 0
	slli	a4, s5, 3
	add	a5, a7, a4
	lwu	s0, 4(a5)
	lwu	a5, 0(a5)
	add	a4, a4, s3
	fld	fa5, 0(a4)
	slli	s0, s0, 32
	or	a5, a5, s0
	mul	s0, a5, s2
	li	a5, 10
	mv	a4, t6
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	zero, zero, e32, m1, ta, ma
	vmslt.vx	v0, v8, s1
	add	a3, s8, s0
	vmv2r.v	v12, v10
	add	s1, s7, a4
	vmv2r.v	v14, v10
	vsetvli	zero, zero, e64, m2, ta, mu
	vle64.v	v12, (a3), v0.t
	vle64.v	v14, (s1), v0.t
	addi	a1, a1, 4
	addi	s0, s0, 32
	addi	a4, a4, 32
	vfmul.vf	v14, v14, fa5
	vfadd.vv	v12, v12, v14
	vse64.v	v12, (a3), v0.t
	addi	a5, a5, -4
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, a1, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	li	a3, 4
	mv	s1, a5
	blt	a5, a3, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	li	s1, 4
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	ld	s0, 72(sp)                      # 8-byte Folded Reload
	ld	s1, 64(sp)                      # 8-byte Folded Reload
	ld	s2, 56(sp)                      # 8-byte Folded Reload
	ld	s3, 48(sp)                      # 8-byte Folded Reload
	ld	s4, 40(sp)                      # 8-byte Folded Reload
	ld	s5, 32(sp)                      # 8-byte Folded Reload
	ld	s6, 24(sp)                      # 8-byte Folded Reload
	ld	s7, 16(sp)                      # 8-byte Folded Reload
	ld	s8, 8(sp)                       # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	addi	sp, sp, 80
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
	ld	t3, 432(sp)
	sd	s0, 160(sp)
	sd	s1, 168(sp)
	sd	zero, 176(sp)
	li	s0, 1
	lui	t0, %hi(.L__constant_10x10xf64_0)
	addi	t0, t0, %lo(.L__constant_10x10xf64_0)
	lui	t1, 228023
	lui	t2, 4257
	addi	t4, sp, 184
	slli	t1, t1, 2
	addi	a0, t2, -1526
	addi	s1, t1, -273
	sd	t3, 96(sp)
	sd	s1, 104(sp)
	sd	t0, 112(sp)
	sd	s0, 152(sp)
	vse64.v	v12, (sp)
	vmv.s.x	v10, a0
	lui	a0, 41121
	addi	a0, a0, -1536
	vmv.s.x	v11, a0
	addi	a0, sp, 120
	vsetivli	zero, 4, e64, m2, ta, ma
	vsext.vf8	v12, v10
	vse64.v	v12, (t4)
	addi	s1, sp, 64
	vsext.vf8	v12, v11
	vse64.v	v12, (a0)
	addi	a0, sp, 224
	vse64.v	v8, (s1)
	call	sparse_dense_matmul
	li	a6, 0
	li	a1, 0
	ld	a2, 232(sp)
	li	a3, 9
	lui	a4, %hi(.L__constant_10x10xf64)
	addi	a4, a4, %lo(.L__constant_10x10xf64)
	j	.LBB2_2
.LBB2_1:                                #   in Loop: Header=BB2_2 Depth=1
	addi	a1, a1, 1
	addi	a6, a6, 80
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	blt	a3, a1, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	li	a5, 0
	mv	s1, a6
	bltz	a3, .LBB2_1
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add	a0, a2, s1
	fld	fa5, 0(a0)
	add	a0, a4, s1
	fld	fa4, 0(a0)
	addi	a5, a5, 1
	feq.d	a0, fa5, fa4
	and	s0, s0, a0
	addi	s1, s1, 8
	bge	a3, a5, .LBB2_4
	j	.LBB2_1
.LBB2_5:
	andi	s0, s0, 1
	bnez	s0, .LBB2_7
# %bb.6:
	li	a0, 33
	j	.LBB2_8
.LBB2_7:
	li	a0, 11
.LBB2_8:
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
	.type	.L__constant_10x10xf64_0,@object # @__constant_10x10xf64_0
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_10x10xf64_0:
	.quad	0x40033e39f77292c5              # double 2.4053840000000002
	.quad	0x4021faec4a4095f2              # double 8.9900839999999995
	.quad	0x3ffbac3a860dcb9b              # double 1.7295480000000001
	.quad	0x3fe29435ac8a3726              # double 0.580592
	.quad	0x4022779a8cdea034              # double 9.2336010000000001
	.quad	0x4021d7ae5796bfcb              # double 8.9212520000000008
	.quad	0x3fe75c896dd26b72              # double 0.73004599999999997
	.quad	0x4023aa73f748a15a              # double 9.8329160000000009
	.quad	0x401bf8c868b9fdbd              # double 6.9929519999999998
	.quad	0x3ffa9510d38cda6e              # double 1.6613929999999999
	.quad	0x40238e432441fea8              # double 9.7778559999999998
	.quad	0x3fe4d6605ee568a5              # double 0.651169
	.quad	0x400d0c6a3bddfca0              # double 3.631062
	.quad	0x40115436fc158fb4              # double 4.3322409999999998
	.quad	0x4005b62845996745              # double 2.7139440000000001
	.quad	0x401489c17225b74a              # double 5.1345270000000003
	.quad	0x400d1b1e18efbb0e              # double 3.6382409999999998
	.quad	0x4020dc4806290eed              # double 8.430237
	.quad	0x40123a2c2374794f              # double 4.5568090000000003
	.quad	0x40233ad234eb9a17              # double 9.6148849999999992
	.quad	0x40039a14488c60cc              # double 2.450234
	.quad	0x4022304b5dcc63f1              # double 9.0943249999999995
	.quad	0x4018390bc7b45f18              # double 6.0557090000000002
	.quad	0x40214b3df2a9d628              # double 8.6469570000000004
	.quad	0x4017ade050374ff8              # double 5.9198009999999996
	.quad	0x401faa4723aafff3              # double 7.9162869999999996
	.quad	0x40158789a459103d              # double 5.3823610000000004
	.quad	0x3ffc9a9b8cb8e087              # double 1.7877460000000001
	.quad	0x3ff2130be0ded289              # double 1.12965
	.quad	0x3fe21813879c4114              # double 0.56543900000000002
	.quad	0x401778e4fb97bb73              # double 5.868061
	.quad	0x3fdc821af7d30ad4              # double 0.44544099999999998
	.quad	0x40058d8a979e16d7              # double 2.6941120000000001
	.quad	0x40118a821f2990f3              # double 4.385262
	.quad	0x3ff1fe4bcad9ad86              # double 1.124584
	.quad	0x400f929131ec0b56              # double 3.9465659999999998
	.quad	0x400f97b7414a4d2b              # double 3.9490799999999999
	.quad	0x3ffdd0bc7b45f17c              # double 1.863461
	.quad	0x3fe0d7c914b167ec              # double 0.52634099999999995
	.quad	0x4022aef62f9ca5be              # double 9.3417220000000007
	.quad	0x401365154866a11f              # double 4.8487140000000002
	.quad	0x40060cac4b4d056c              # double 2.7561879999999999
	.quad	0x4008af10a99b6f5d              # double 3.0854810000000001
	.quad	0x3ffcce90bc7b45f1              # double 1.8004309999999999
	.quad	0x40033d744f5d3565              # double 2.4050069999999999
	.quad	0x3fe7f3300de4c511              # double 0.74843599999999999
	.quad	0x401840ce4ead0c3d              # double 6.0632869999999999
	.quad	0x40163b8a5ce5b424              # double 5.5581449999999997
	.quad	0x3fcaae9680e06530              # double 0.208453
	.quad	0x401bd08dd1e53a82              # double 6.9536660000000001
	.quad	0x4014511b1d92b7fe              # double 5.079205
	.quad	0x401c87253da72a7c              # double 7.1319780000000002
	.quad	0x3fda1d6494d50ebb              # double 0.40804400000000002
	.quad	0x40125c7219220ff5              # double 4.5902789999999998
	.quad	0x4008fa8155d5f56a              # double 3.1223169999999998
	.quad	0x401f466277c45cbc              # double 7.8187350000000002
	.quad	0x4021d8752da98677              # double 8.9227690000000006
	.quad	0x3fd6e95b78cc9a78              # double 0.35799300000000001
	.quad	0x4019458a32f44913              # double 6.3179100000000004
	.quad	0x40217ffcdab191de              # double 8.7499760000000002
	.quad	0x401572435696e58a              # double 5.3615849999999998
	.quad	0x401b7e64f54d1e97              # double 6.8734320000000002
	.quad	0x401f5cb89d6adf72              # double 7.8405480000000001
	.quad	0x3ffef85d744f5d35              # double 1.9356359999999999
	.quad	0x40101c37e6f71a7e              # double 4.0275569999999998
	.quad	0x40036b5d462c343b              # double 2.4274239999999998
	.quad	0x402279a975afaf86              # double 9.2376210000000007
	.quad	0x401201422ccb3a26              # double 4.5012290000000004
	.quad	0x4021f569b17481b2              # double 8.9793219999999998
	.quad	0x40235d8dbcec84f9              # double 9.682722
	.quad	0x400c7756c93a7115              # double 3.558271
	.quad	0x401715e99e94ab1d              # double 5.7713989999999997
	.quad	0x4015079a2834d270              # double 5.2574240000000003
	.quad	0x40214366516db0de              # double 8.6316400000000009
	.quad	0x3ff220242d05f288              # double 1.1328469999999999
	.quad	0x40219aaef2c73259              # double 8.8021159999999998
	.quad	0x40203c6a7ef9db23              # double 8.1180000000000003
	.quad	0x3fe4ddaceee0f3cb              # double 0.65205999999999997
	.quad	0x401160e0a84be404              # double 4.3446069999999999
	.quad	0x400decfc829cfdd2              # double 3.7407159999999999
	.quad	0x3ff03dd334c5da6a              # double 1.0150939999999999
	.quad	0x401ce1ed9dfdac69              # double 7.2206330000000003
	.quad	0x401aaa30984e3fff              # double 6.666201
	.quad	0x3ff96c93a7115161              # double 1.589008
	.quad	0x4021fb6a832b990b              # double 8.991047
	.quad	0x4021f8c176577532              # double 8.9858510000000003
	.quad	0x40225ea9e6eeb702              # double 9.1848899999999993
	.quad	0x4020f909070fbeba              # double 8.4863970000000002
	.quad	0x401b491212513b5c              # double 6.821358
	.quad	0x401d783382e44b6f              # double 7.3673840000000004
	.quad	0x402196787ce95fab              # double 8.7938880000000008
	.quad	0x401ad4f3fd933e36              # double 6.7079620000000002
	.quad	0x40219711f926c7eb              # double 8.7950590000000002
	.quad	0x40225ba1b1960fa1              # double 9.1789679999999993
	.quad	0x40166de00d1b7176              # double 5.6073000000000004
	.quad	0x4021876ab5807fed              # double 8.7644859999999998
	.quad	0x4014ad362e903644              # double 5.1691520000000004
	.quad	0x401319d1f601797d              # double 4.7752150000000002
	.quad	0x4014c375c8d9f905              # double 5.1908789999999998
	.quad	0x4010173affb04ee8              # double 4.0226860000000002
	.size	.L__constant_10x10xf64_0, 800

	.type	.L__constant_10x10xf64,@object  # @__constant_10x10xf64
	.p2align	6, 0x0
.L__constant_10x10xf64:
	.quad	0x40540e54c985f06f              # double 80.223924999999994
	.quad	0x406693e4b2314014              # double 180.621667
	.quad	0x405c9e536933a040              # double 114.47384099999999
	.quad	0x4062f94e0b912dba              # double 151.79077699999999
	.quad	0x405c6636501e2585              # double 113.597065
	.quad	0x40697c955b4677b4              # double 203.89323200000001
	.quad	0x406872f4107314cb              # double 195.59229300000001
	.quad	0x4050cb4883fd5022              # double 67.176300999999995
	.quad	0x405b36e7d566cf42              # double 108.8579
	.quad	0x405f535af294dd72              # double 125.302426
	.quad	0x406faead7f950b95              # double 253.45867899999999
	.quad	0x406076cb018611fd              # double 131.71228099999999
	.quad	0x40691c4bc8c0ce92              # double 200.88425100000001
	.quad	0x40659738d8234224              # double 172.72568899999999
	.quad	0x406153343d89ce4a              # double 138.60012699999999
	.quad	0x4069680f345069a5              # double 203.251856
	.quad	0x4068d7e605ee568a              # double 198.74682899999999
	.quad	0x40686c81f31f46ed              # double 195.390863
	.quad	0x406525d935fc3b4f              # double 169.18276499999999
	.quad	0x407217cf51ac9afe              # double 289.48811499999999
	.quad	0x40524382c2bd7f52              # double 73.054856000000001
	.quad	0x4056d1354c12274a              # double 91.268878000000001
	.quad	0x4048c22cecc814d7              # double 49.516995999999999
	.quad	0x404feb1950331e3a              # double 63.836709999999997
	.quad	0x4048b2c332f01755              # double 49.396582000000002
	.quad	0x405551de3fbbd7b2              # double 85.27919
	.quad	0x405c96ea35935fc4              # double 114.358045
	.quad	0x403b1b93ee5eedcc              # double 27.107726
	.quad	0x40540f41e9af5ba3              # double 80.238398000000003
	.quad	0x405ddaf77292c493              # double 119.421353
	.quad	0x405ccbe85b9e8c48              # double 115.18605700000001
	.quad	0x40539dec02f2f987              # double 78.467529999999996
	.quad	0x40576d22f2734f83              # double 93.705258
	.quad	0x40508923810e8859              # double 66.142792
	.quad	0x404f475dbb9cf9a0              # double 62.557547999999997
	.quad	0x405276d5fdcdf698              # double 73.856810999999993
	.quad	0x40600c584901d191              # double 128.38577699999999
	.quad	0x4056136e7e62dc6e              # double 88.303618999999998
	.quad	0x4052d6a43bb40b35              # double 75.353774000000001
	.quad	0x4066bb8d413122b8              # double 181.86099300000001
	.quad	0x40443cf61672324d              # double 40.476260000000003
	.quad	0x404d93cb9a9da598              # double 59.154651000000001
	.quad	0x404d59b2b346130a              # double 58.700766000000002
	.quad	0x403f4b10dbf0563f              # double 31.293226000000001
	.quad	0x4052910cb295e9e2              # double 74.266400000000004
	.quad	0x405545ccff21b3af              # double 85.090637
	.quad	0x40541c9fc2a8869c              # double 80.447250999999994
	.quad	0x4053ff738a3b57c5              # double 79.991427000000001
	.quad	0x404bc095af294dd7              # double 55.504567999999999
	.quad	0x4057ac9e2bcf91a3              # double 94.697153999999997
	.quad	0x40652125b9628cbd              # double 169.035855
	.quad	0x406722edb940fece              # double 185.09151900000001
	.quad	0x40631a300bcbe61d              # double 152.818365
	.quad	0x4060581f70de8f6d              # double 130.753838
	.quad	0x4061b1fced916873              # double 141.56212500000001
	.quad	0x4067a75434a01abd              # double 189.229029
	.quad	0x406ed658dde7a744              # double 246.69834800000001
	.quad	0x406108eeeb702603              # double 136.27916500000001
	.quad	0x4064654d96206855              # double 163.16572099999999
	.quad	0x406fd01dc0db2703              # double 254.50363200000001
	.quad	0x40671cfe0ac7da1f              # double 184.90601100000001
	.quad	0x406c190bd230b9dc              # double 224.78269299999999
	.quad	0x40674f1fa97e132b              # double 186.47261499999999
	.quad	0x406ad727e3087875              # double 214.72361900000001
	.quad	0x4061f45031055b8a              # double 143.63478900000001
	.quad	0x4070c99286b59147              # double 268.59827300000001
	.quad	0x4070942bffcdab19              # double 265.26074199999999
	.quad	0x405ec331876188b1              # double 123.049898
	.quad	0x40683f3407032980              # double 193.975101
	.quad	0x406bc49ca9ef5233              # double 222.14412400000001
	.quad	0x40294f5903a7546d              # double 12.654976
	.quad	0x4028e2d14a0a0f4d              # double 12.443002999999999
	.quad	0x40123dea465a5764              # double 4.5604639999999996
	.quad	0x402016368f084620              # double 8.0433850000000007
	.quad	0x401c173b85e80bed              # double 7.0226879999999996
	.quad	0x40254e670e2c12ae              # double 10.653130000000001
	.quad	0x4033013ad5bee3d6              # double 19.004804
	.quad	0x401efed634549b63              # double 7.7488640000000001
	.quad	0x40202caf922962d0              # double 8.0872770000000003
	.quad	0x4033f62584f4c6e7              # double 19.961510000000001
	.quad	0x405022c5d6388659              # double 64.543324999999996
	.quad	0x404ca2324c836651              # double 57.267159999999997
	.quad	0x40468d2135daad60              # double 45.102575999999999
	.quad	0x403d440181e03f70              # double 29.265647999999999
	.quad	0x4043f0c21e1d2179              # double 39.880924
	.quad	0x403fcbb96af038e3              # double 31.795798000000001
	.quad	0x4056a33e963dc487              # double 90.550695000000004
	.quad	0x404f279fc2a8869c              # double 62.309562999999997
	.quad	0x4042d66cc1ca3a4b              # double 37.675193999999998
	.quad	0x4058ca5ed4a1ad64              # double 99.162037999999995
	.quad	0x40555c94812be48a              # double 85.446563999999995
	.quad	0x40540804f2ae07e6              # double 80.125302000000005
	.quad	0x405701d145d85165              # double 92.028397999999995
	.quad	0x404c786e75ff609e              # double 56.940871000000001
	.quad	0x4057ffccab3edd8b              # double 95.996866999999994
	.quad	0x405baeb44a1f0803              # double 110.729754
	.quad	0x405c497abfb9bed3              # double 113.148117
	.quad	0x405f8f7c8d195897              # double 126.24197700000001
	.quad	0x40565b1e2584f4c7              # double 89.423715000000001
	.quad	0x406091c9c2c1b110              # double 132.555879
	.size	.L__constant_10x10xf64, 800

	.type	.L__constant_11xindex,@object   # @__constant_11xindex
	.p2align	6, 0x0
.L__constant_11xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.size	.L__constant_11xindex, 88

	.type	.L__constant_50xindex,@object   # @__constant_50xindex
	.p2align	6, 0x0
.L__constant_50xindex:
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.size	.L__constant_50xindex, 400

	.type	.L__constant_50xf64,@object     # @__constant_50xf64
	.p2align	6, 0x0
.L__constant_50xf64:
	.quad	0x3ffa3314ca925fe9              # double 1.6374709999999999
	.quad	0x3ff0a26c3b927d46              # double 1.0396540000000001
	.quad	0x3fdcc647778dd617              # double 0.449602
	.quad	0x4023cccdb7ae5797              # double 9.9000070000000004
	.quad	0x3fe30fde2ef4e011              # double 0.59568699999999997
	.quad	0x400e2bd76ee73e68              # double 3.771407
	.quad	0x4019793ff25e56cd              # double 6.3684079999999996
	.quad	0x401a87d955714b9d              # double 6.6326650000000003
	.quad	0x3ffb983b60285ec4              # double 1.724666
	.quad	0x400a617f4128bf3c              # double 3.297606
	.quad	0x3ff9fecbb7f9d6f1              # double 1.624706
	.quad	0x4020c22b7baecd08              # double 8.3792380000000009
	.quad	0x40030e19b90ea9e7              # double 2.381885
	.quad	0x4021a9fcd24e160e              # double 8.8320070000000008
	.quad	0x400eb1e75360d024              # double 3.8368669999999998
	.quad	0x400b39fcb0c026cc              # double 3.403314
	.quad	0x3ff05d0203e63e8e              # double 1.022707
	.quad	0x4013d33bd9cae211              # double 4.956283
	.quad	0x3fe501c2e33eff19              # double 0.65646499999999997
	.quad	0x401891fb3fa6defc              # double 6.1425599999999996
	.quad	0x3ff50829cfdd2285              # double 1.3144929999999999
	.quad	0x4020fff759685122              # double 8.4999339999999997
	.quad	0x3ff10c38f366948a              # double 1.0654840000000001
	.quad	0x4017dc04c8bc9cd4              # double 5.9648620000000001
	.quad	0x401b198fe69270b0              # double 6.7749629999999996
	.quad	0x40202c78c868b9fe              # double 8.0868590000000005
	.quad	0x401cb8cd63cb8173              # double 7.1804709999999998
	.quad	0x3ff3c9774256bca5              # double 1.236686
	.quad	0x400073d102bc72e2              # double 2.0565509999999998
	.quad	0x4017196c3fc43b2e              # double 5.7748270000000002
	.quad	0x400e7fcfc3f811f5              # double 3.812408
	.quad	0x4018ae69270b06c4              # double 6.1703229999999998
	.quad	0x4013b51f3e89a88b              # double 4.9268770000000002
	.quad	0x40100e0589acbc8c              # double 4.013693
	.quad	0x40019c443914f484              # double 2.2013020000000001
	.quad	0x3ff54142f61ed5ae              # double 1.328433
	.quad	0x401a79a459103c8e              # double 6.6187909999999999
	.quad	0x3f97f5a5332acfb7              # double 0.023397999999999999
	.quad	0x3fe4bd87b56b8738              # double 0.64813600000000005
	.quad	0x3fcefe4ffc9795b3              # double 0.24213599999999999
	.quad	0x4020e33fe9fadafd              # double 8.4438469999999999
	.quad	0x40145aa4fca42aed              # double 5.0885199999999999
	.quad	0x400d08a71de69ad4              # double 3.6292249999999999
	.quad	0x40196d97f62b6ae8              # double 6.3570250000000001
	.quad	0x4015a16f4384ba0f              # double 5.4076510000000004
	.quad	0x400f480841ede11a              # double 3.9101720000000002
	.quad	0x401b3826aa8eb463              # double 6.8048349999999997
	.quad	0x40208c297bfa4c62              # double 8.2737540000000003
	.quad	0x4014ab3b7521144d              # double 5.1672190000000002
	.quad	0x4015ced9dfdac68b              # double 5.4520030000000004
	.size	.L__constant_50xf64, 400

	.section	".note.GNU-stack","",@progbits
