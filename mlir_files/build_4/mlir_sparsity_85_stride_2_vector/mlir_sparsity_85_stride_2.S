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
	addi	sp, sp, -144
	.cfi_def_cfa_offset 144
	sd	ra, 136(sp)                     # 8-byte Folded Spill
	sd	s0, 128(sp)                     # 8-byte Folded Spill
	sd	s1, 120(sp)                     # 8-byte Folded Spill
	sd	s2, 112(sp)                     # 8-byte Folded Spill
	sd	s3, 104(sp)                     # 8-byte Folded Spill
	sd	s4, 96(sp)                      # 8-byte Folded Spill
	sd	s5, 88(sp)                      # 8-byte Folded Spill
	sd	s6, 80(sp)                      # 8-byte Folded Spill
	sd	s7, 72(sp)                      # 8-byte Folded Spill
	sd	s8, 64(sp)                      # 8-byte Folded Spill
	sd	s9, 56(sp)                      # 8-byte Folded Spill
	sd	s10, 48(sp)                     # 8-byte Folded Spill
	sd	s11, 40(sp)                     # 8-byte Folded Spill
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
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0x90, 0x01, 0x22, 0x11, 0x10, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 144 + 16 * vlenb
	li	s3, 0
	li	t5, 0
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s7, 256(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	a6, 352(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t0, 344(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t1, 336(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t2, 328(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t3, 320(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	s8, 312(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t4, 304(a1)
	csrr	a1, vlenb
	slli	a1, a1, 4
	add	a1, a1, sp
	ld	t6, 176(a1)
	csrr	s10, vlenb
	li	s6, 99
	li	s2, 800
	slli	s9, s10, 4
	slli	s11, s10, 1
	slli	s10, s10, 3
	j	.LBB0_2
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addi	t5, t5, 1
	addi	s3, s3, 800
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
	or	s4, a4, a5
	slli	s0, s0, 32
	or	s5, s0, a3
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=2
	addi	s4, s4, 1
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	bge	s4, s5, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	li	ra, 0
	slli	a3, s4, 3
	add	a4, a7, a3
	lwu	a5, 4(a4)
	lwu	a4, 0(a4)
	add	a3, a3, t6
	fld	fa5, 0(a3)
	slli	a5, a5, 32
	or	a4, a4, a5
	mul	a4, a4, s2
	li	a3, 100
	mv	a5, s3
	j	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=3
	vsetvli	a1, zero, e32, m8, ta, ma
	vmv.v.x	v8, s1
	sd	a0, 8(sp)                       # 8-byte Folded Spill
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	s1, s8, a4
	vsetvli	a1, zero, e64, m8, ta, ma
	vmv.v.i	v8, 0
	addi	a0, sp, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	add	a1, s7, a5
	vsetvli	s0, zero, e32, m8, ta, ma
	vid.v	v24
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vl8r.v	v0, (a0)                        # Unknown-size Folded Reload
	vsetvli	s0, zero, e32, m4, ta, ma
	vmslt.vv	v7, v24, v0
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vl8r.v	v16, (a0)                       # Unknown-size Folded Reload
	vmslt.vv	v6, v28, v20
	vsetvli	zero, zero, e64, m8, ta, mu
	vmv.v.i	v16, 0
	add	s0, s1, s10
	vmv1r.v	v0, v6
	vle64.v	v8, (s0), v0.t
	csrr	a0, vlenb
	slli	a0, a0, 3
	add	a0, a0, sp
	addi	a0, a0, 32
	vs8r.v	v8, (a0)                        # Unknown-size Folded Spill
	vmv1r.v	v0, v7
	addi	a0, sp, 32
	vl8r.v	v24, (a0)                       # Unknown-size Folded Reload
	ld	a0, 8(sp)                       # 8-byte Folded Reload
	vle64.v	v24, (s1), v0.t
	vle64.v	v16, (a1), v0.t
	add	a1, a1, s10
	vmv.v.i	v8, 0
	vmv1r.v	v0, v6
	vle64.v	v8, (a1), v0.t
	vfmul.vf	v16, v16, fa5
	vfadd.vv	v16, v24, v16
	vfmul.vf	v8, v8, fa5
	csrr	a1, vlenb
	slli	a1, a1, 3
	add	a1, a1, sp
	addi	a1, a1, 32
	vl8r.v	v24, (a1)                       # Unknown-size Folded Reload
	vfadd.vv	v8, v24, v8
	vse64.v	v8, (s0), v0.t
	vmv1r.v	v0, v7
	vse64.v	v16, (s1), v0.t
	add	ra, ra, s11
	add	a4, a4, s9
	add	a5, a5, s9
	sub	a3, a3, s11
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	s6, ra, .LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=3
	mv	s1, a3
	blt	a3, s11, .LBB0_7
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=3
	mv	s1, s11
	j	.LBB0_7
.LBB0_11:
	sd	t4, 0(a0)
	sd	s8, 8(a0)
	sd	t3, 16(a0)
	sd	t2, 24(a0)
	sd	t1, 32(a0)
	sd	t0, 40(a0)
	sd	a6, 48(a0)
	csrr	a0, vlenb
	slli	a0, a0, 4
	add	sp, sp, a0
	.cfi_def_cfa sp, 144
	ld	ra, 136(sp)                     # 8-byte Folded Reload
	ld	s0, 128(sp)                     # 8-byte Folded Reload
	ld	s1, 120(sp)                     # 8-byte Folded Reload
	ld	s2, 112(sp)                     # 8-byte Folded Reload
	ld	s3, 104(sp)                     # 8-byte Folded Reload
	ld	s4, 96(sp)                      # 8-byte Folded Reload
	ld	s5, 88(sp)                      # 8-byte Folded Reload
	ld	s6, 80(sp)                      # 8-byte Folded Reload
	ld	s7, 72(sp)                      # 8-byte Folded Reload
	ld	s8, 64(sp)                      # 8-byte Folded Reload
	ld	s9, 56(sp)                      # 8-byte Folded Reload
	ld	s10, 48(sp)                     # 8-byte Folded Reload
	ld	s11, 40(sp)                     # 8-byte Folded Reload
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
	addi	sp, sp, 144
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	sparse_dense_matmul, .Lfunc_end0-sparse_dense_matmul
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
	lui	a0, 20
	addiw	a0, a0, -1856
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
	lui	t1, %hi(.L__constant_100x100xf64)
	addi	t1, t1, %lo(.L__constant_100x100xf64)
	lui	s1, 228023
	lui	t2, 5702
	addi	t3, sp, 184
	slli	s1, s1, 2
	addi	s1, s1, -273
	sd	a0, 96(sp)
	sd	s1, 104(sp)
	sd	t1, 112(sp)
	sd	t0, 152(sp)
	lui	a0, 411206
	addi	s1, t2, 1124
	vse64.v	v12, (sp)
	vmv.s.x	v10, s1
	addi	s1, sp, 120
	addi	a0, a0, 1024
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
	ld	a0, 232(sp)
	fld	fa5, 808(a0)
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
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
.LCPI2_0:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
.LCPI2_2:
	.quad	0                               # 0x0
	.quad	101                             # 0x65
	.quad	1                               # 0x1
	.quad	3735928559                      # 0xdeadbeef
	.text
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
	.cfi_startproc
# %bb.0:
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
	lui	a7, %hi(.L__constant_1500xindex)
	addi	a7, a7, %lo(.L__constant_1500xindex)
	lui	t0, %hi(.L__constant_1500xf64)
	addi	t0, t0, %lo(.L__constant_1500xf64)
	li	a6, 101
	li	a5, 100
	lui	a4, 228023
	lui	a2, %hi(.LCPI2_0)
	addi	a2, a2, %lo(.LCPI2_0)
	addi	a3, a0, 96
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a2)
	lui	a2, %hi(.LCPI2_1)
	addi	a2, a2, %lo(.LCPI2_1)
	vle64.v	v10, (a2)
	ld	a2, 800(a1)
	slli	a4, a4, 2
	addi	a4, a4, -273
	sd	a4, 0(a0)
	sd	a1, 8(a0)
	sd	a7, 48(a0)
	sd	t0, 88(a0)
	lui	a1, %hi(.LCPI2_2)
	addi	a1, a1, %lo(.LCPI2_2)
	sd	a5, 128(a0)
	sd	a6, 136(a0)
	sd	a2, 144(a0)
	sd	a2, 152(a0)
	vse64.v	v8, (a3)
	vle64.v	v8, (a1)
	addi	a1, a0, 56
	vse64.v	v10, (a1)
	addi	a0, a0, 16
	vse64.v	v8, (a0)
	ret
.Lfunc_end2:
	.size	assemble_sparse_tensor, .Lfunc_end2-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fef8ce2d1f1cfbc              # double 0.98594800000000004
	.quad	0x3fae2584f4c6e6da              # double 0.058880000000000002
	.quad	0x3fe1844d013a92a3              # double 0.5474
	.quad	0x3fb53543aeab7996              # double 0.082844
	.quad	0x3fdf6084a515ce9e              # double 0.49026599999999998
	.quad	0x3fd01ea35935fc3b              # double 0.25186999999999998
	.quad	0x3fc391b3f20a73f7              # double 0.15288399999999999
	.quad	0x3fd8babead4f5904              # double 0.38639800000000002
	.quad	0x3fd0cb039ef0f16f              # double 0.26239099999999999
	.quad	0x3fe5efed634549b6              # double 0.68553799999999998
	.quad	0x3fef6e3d5fdcdf6a              # double 0.98220700000000005
	.quad	0x3fc41c58255b035c              # double 0.157115
	.quad	0x3feb305319828805              # double 0.84964899999999999
	.quad	0x3fd7bfa0945f9df5              # double 0.37107099999999998
	.quad	0x3fe860e51d25aab4              # double 0.76182799999999994
	.quad	0x3fecb1bbcf4e874d              # double 0.89669600000000005
	.quad	0x3fb21975f2cb6417              # double 0.070701
	.quad	0x3fe5257c914b167f              # double 0.66082600000000002
	.quad	0x3fe3cbe1eb4202da              # double 0.61863800000000002
	.quad	0x3fedcee9dd7ecbb8              # double 0.931508
	.quad	0x3fdac5931ca7d673              # double 0.41830899999999999
	.quad	0x3fe7a09cc319c5a4              # double 0.73835600000000001
	.quad	0x3fd6a4bdba0a5269              # double 0.35380499999999998
	.quad	0x3fe140d6f544bb1b              # double 0.53916500000000001
	.quad	0x3fd8f6e82949a565              # double 0.39006999999999997
	.quad	0x3fe8fbb73083558a              # double 0.78072699999999995
	.quad	0x3fc0e11dbca9691a              # double 0.13186999999999999
	.quad	0x3feffcb923a29c78              # double 0.99960000000000004
	.quad	0x3fe43854046412cf              # double 0.63187599999999999
	.quad	0x3fa3cb1cc9646280              # double 0.038658999999999999
	.quad	0x3fede4b662fdfc1a              # double 0.93416900000000003
	.quad	0x3fedb4245f5ad96a              # double 0.92823999999999995
	.quad	0x3fe1c508b32ce896              # double 0.55530199999999996
	.quad	0x3feb51c9f72f76e6              # double 0.85373399999999999
	.quad	0x3fd779b34a44c7b0              # double 0.36680299999999999
	.quad	0x3fe9615011904b3c              # double 0.79312899999999997
	.quad	0x3fd1e19b90ea9e6f              # double 0.279395
	.quad	0x3fe85ef1fddebd90              # double 0.76158999999999999
	.quad	0x3fe380e8c8abd5dc              # double 0.60948599999999997
	.quad	0x3fe63c1acde19fc3              # double 0.69483700000000004
	.quad	0x3fd92b55ef1fddec              # double 0.39327000000000001
	.quad	0x3fe188f217093101              # double 0.54796699999999998
	.quad	0x3fda759685122318              # double 0.41342699999999999
	.quad	0x3f956c0d6f544bb2              # double 0.020920000000000001
	.quad	0x3fe9104d551d68c7              # double 0.78324000000000005
	.quad	0x3fe3fb7e90ff9724              # double 0.62444999999999995
	.quad	0x3fe77cbf6e3f78bc              # double 0.73397800000000002
	.quad	0x3fefb3a8a3f8982d              # double 0.99068100000000003
	.quad	0x3fc649774256bca5              # double 0.17411699999999999
	.quad	0x3fca047d3d4280ae              # double 0.203262
	.quad	0x3fd2d96e9bbf0dc7              # double 0.29452099999999998
	.quad	0x3fcb6f6d7625204b              # double 0.214338
	.quad	0x3fc846b69db65ecc              # double 0.18965799999999999
	.quad	0x3fe171fbc5de9c02              # double 0.54516399999999998
	.quad	0x3fe07e73a365cb36              # double 0.51543600000000001
	.quad	0x3fe012ddbdb5d895              # double 0.50230300000000006
	.quad	0x3fdb9baa1511dffc              # double 0.43137599999999998
	.quad	0x3fed537e2c55c960              # double 0.91644199999999997
	.quad	0x3fb99a95421c0443              # double 0.10001500000000001
	.quad	0x3fe72f533f42352f              # double 0.72452700000000003
	.quad	0x3fe54e2b063e07a3              # double 0.66579200000000005
	.quad	0x3fedcb4070329803              # double 0.93106100000000003
	.quad	0x3fbc74ea8da7f3cf              # double 0.11115899999999999
	.quad	0x3fed21e1d2178f69              # double 0.91038600000000003
	.quad	0x3fd2ecedd4845133              # double 0.295711
	.quad	0x3fea583c6c97d8cf              # double 0.82327099999999998
	.quad	0x3fe0c3dee78183f9              # double 0.52390999999999999
	.quad	0x3fe6169a0ad8a116              # double 0.69025899999999996
	.quad	0x3fdcf0b28522ea10              # double 0.45219100000000001
	.quad	0x3fdc1bac2df0d413              # double 0.439189
	.quad	0x3fe5372a38b8ae32              # double 0.66298400000000002
	.quad	0x3fec7c3d68405b3a              # double 0.89016600000000001
	.quad	0x3fe17fdc5931ca7d              # double 0.54685799999999996
	.quad	0x3fdab4f61672324d              # double 0.41729500000000003
	.quad	0x3fe99947cfa26a23              # double 0.79996100000000003
	.quad	0x3fe1e173b85e80bf              # double 0.55877100000000002
	.quad	0x3fe6082491afc04d              # double 0.68849400000000005
	.quad	0x3fcbc60029f16b12              # double 0.21698000000000001
	.quad	0x3fe29fb82c2bd7f5              # double 0.58199699999999999
	.quad	0x3feefdbb16c1e365              # double 0.96847300000000002
	.quad	0x3f8742dcf4623d0c              # double 0.011358
	.quad	0x3fe092e83a109d06              # double 0.51793299999999998
	.quad	0x3fd467ad8e432442              # double 0.318828
	.quad	0x3f90c2c5e2cdc012              # double 0.016368000000000001
	.quad	0x3fe59ae2da554b8c              # double 0.67515700000000001
	.quad	0x3fd41fc4c165907e              # double 0.31443900000000002
	.quad	0x3f98d9b5e95b78cd              # double 0.024268000000000001
	.quad	0x3fd2555c52e72da1              # double 0.28645999999999999
	.quad	0x3fe97afea3df6db9              # double 0.79626399999999997
	.quad	0x3fdb74107314ca92              # double 0.42895899999999998
	.quad	0x3feef301eabbcb1d              # double 0.96716400000000002
	.quad	0x3fb5e56cd6c2efd4              # double 0.085531999999999997
	.quad	0x3fcfcdb37c99ae92              # double 0.24846499999999999
	.quad	0x3faf05ea24cc6823              # double 0.060592
	.quad	0x3fec7cd898b2e9cd              # double 0.89024000000000003
	.quad	0x3fd4a60d4562e0a0              # double 0.32263500000000001
	.quad	0x3fef563a9f383f0c              # double 0.97927600000000003
	.quad	0x3fdb5fb71fbc5dea              # double 0.42771700000000001
	.quad	0x3fc30856e696a26e              # double 0.14869199999999999
	.quad	0x3fca68448cf7caa7              # double 0.20630699999999999
	.quad	0x3fdff79420b3d4ae              # double 0.49948599999999999
	.quad	0x3fe5eebd4cfd08d5              # double 0.68539300000000003
	.quad	0x3fd3eadd590c0ad0              # double 0.31120999999999999
	.quad	0x3fbc70867ad8e432              # double 0.111092
	.quad	0x3fd07a85015c2092              # double 0.25747799999999998
	.quad	0x3fa8958d9b5e95b8              # double 0.048016000000000003
	.quad	0x3fe57d00713f077d              # double 0.67150900000000002
	.quad	0x3fde8fa7a85015c2              # double 0.477518
	.quad	0x3fa7a52ac753e708              # double 0.046182000000000001
	.quad	0x3fed24d8fd5cb791              # double 0.910748
	.quad	0x3feda09cc319c5a4              # double 0.92585600000000001
	.quad	0x3fc50edc3bd59924              # double 0.164516
	.quad	0x3febc2e9899bf594              # double 0.86754299999999995
	.quad	0x3f938c5436b8f9b1              # double 0.019089999999999999
	.quad	0x3fc6cf28c79f6662              # double 0.17819699999999999
	.quad	0x3fd30e5604189375              # double 0.29775000000000001
	.quad	0x3fd33f077ccc0379              # double 0.30072199999999999
	.quad	0x3fd5dbf0563ed0f6              # double 0.34154899999999999
	.quad	0x3fdfe9856a37ac3f              # double 0.49862800000000002
	.quad	0x3fc0b9fdbd2fa0d7              # double 0.13067599999999999
	.quad	0x3fd13e425aee6320              # double 0.26942500000000003
	.quad	0x3fd402e6644d8772              # double 0.31267699999999998
	.quad	0x3fbdb90ea9e6eeb7              # double 0.116105
	.quad	0x3fd330270f388228              # double 0.29981400000000002
	.quad	0x3fd841bb8c32a8ca              # double 0.37901200000000002
	.quad	0x3faf1e8e60807358              # double 0.060780000000000001
	.quad	0x3fde4b7b28954a80              # double 0.47335700000000003
	.quad	0x3fc1002e2328f9f4              # double 0.13281799999999999
	.quad	0x3fcae5a35d67ba23              # double 0.21013299999999999
	.quad	0x3fde2e2b8c75c4a8              # double 0.47156799999999999
	.quad	0x3fdb9a7c17a89332              # double 0.43130400000000002
	.quad	0x3fd7feeb2d0a2446              # double 0.37493399999999999
	.quad	0x3fac14e7ee9142b3              # double 0.054847
	.quad	0x3fe28e60807357e6              # double 0.57987999999999995
	.quad	0x3fe4ff77af64063a              # double 0.65618500000000002
	.quad	0x3fd99b77c02afddb              # double 0.40011400000000003
	.quad	0x3fc0383ad9f0a1be              # double 0.126716
	.quad	0x3fc275ab7dc7abfc              # double 0.14421600000000001
	.quad	0x3fe3d675579af188              # double 0.61992899999999995
	.quad	0x3fc0c122749f0e4e              # double 0.13089400000000001
	.quad	0x3fc44bb1af3a14cf              # double 0.15856000000000001
	.quad	0x3fed16bb98c7e282              # double 0.90902499999999997
	.quad	0x3fd6e5471715c63b              # double 0.35774400000000001
	.quad	0x3fe38cc35ce18266              # double 0.61093299999999995
	.quad	0x3fd6dfdac68a936c              # double 0.35741299999999998
	.quad	0x3fef0db0574b4070              # double 0.97042099999999998
	.quad	0x3fdc3f290abb44e5              # double 0.441355
	.quad	0x3feea0e410b630a9              # double 0.95713999999999999
	.quad	0x3fe33aa79bbadc0a              # double 0.60091000000000006
	.quad	0x3fe1d12018a43bb4              # double 0.556778
	.quad	0x3fad0b0f27bb2fec              # double 0.056724999999999998
	.quad	0x3fc25a57646ae3a4              # double 0.14338200000000001
	.quad	0x3fdb8372e6a76966              # double 0.429898
	.quad	0x3fe98afe60c38f36              # double 0.79821699999999995
	.quad	0x3feed8e219652bd4              # double 0.96397500000000002
	.quad	0x3fd84f1e4b44a1f1              # double 0.37982900000000003
	.quad	0x3fdc0a0f4d7add16              # double 0.438114
	.quad	0x3fedba42f1ed17c6              # double 0.92898700000000001
	.quad	0x3fc052c59fb1e18f              # double 0.127526
	.quad	0x3fef36e71cda2b5a              # double 0.97545199999999999
	.quad	0x3fe15373affb04ee              # double 0.54143699999999995
	.quad	0x3fe1fb1e18efbb0e              # double 0.56190399999999996
	.quad	0x3fe2957abb8800eb              # double 0.58074700000000001
	.quad	0x3fc384901d19157b              # double 0.15248300000000001
	.quad	0x3fe934aec8d5c747              # double 0.78768099999999996
	.quad	0x3fc3a73b42cc2d6b              # double 0.15354100000000001
	.quad	0x3fc0e18266772d5e              # double 0.131882
	.quad	0x3fcec083126e978d              # double 0.24024999999999999
	.quad	0x3fe5e991ff7164c7              # double 0.68476199999999998
	.quad	0x3fb0a979e16d6dc2              # double 0.065086000000000005
	.quad	0x3fe1a9e2bcf91a33              # double 0.55198800000000003
	.quad	0x3fcfbeec39799e52              # double 0.24801400000000001
	.quad	0x3fe3aef0ae536502              # double 0.61510500000000001
	.quad	0x3fdcae31d712a0ec              # double 0.44813199999999997
	.quad	0x3fecd6f976790321              # double 0.90124199999999999
	.quad	0x3febfc957cd466f5              # double 0.874583
	.quad	0x3fe868d32830a0b2              # double 0.76279600000000003
	.quad	0x3fe3dc2d2780778a              # double 0.62062700000000004
	.quad	0x3fef40f01fb82c2c              # double 0.97667700000000001
	.quad	0x3fef1ed3953dea46              # double 0.97251299999999996
	.quad	0x3fdcc55c96030c24              # double 0.449546
	.quad	0x3fe32bb23571d1d4              # double 0.59908399999999995
	.quad	0x3fe4f166e008e9b4              # double 0.65446800000000005
	.quad	0x3fea2ce4649906cd              # double 0.81798000000000004
	.quad	0x3fb4216c61522a6f              # double 0.078634999999999997
	.quad	0x3fbac764adff822c              # double 0.104605
	.quad	0x3fe8e53a81dc0db2              # double 0.77798199999999995
	.quad	0x3fc6ae536501e258              # double 0.17719499999999999
	.quad	0x3feabb98c7e28241              # double 0.83540000000000003
	.quad	0x3fe45f99c38b04ab              # double 0.63666999999999996
	.quad	0x3feb097c80841ede              # double 0.84490799999999999
	.quad	0x3fdb0995aaf78fef              # double 0.42246
	.quad	0x3fb8d3f1843c3a43              # double 0.096984000000000001
	.quad	0x3fdcdcb5781c7150              # double 0.45097100000000001
	.quad	0x3fdfec8d5c74751d              # double 0.49881300000000001
	.quad	0x3fdf3cbc48f10a9a              # double 0.48808200000000002
	.quad	0x3fcd3d8e0008637c              # double 0.22844100000000001
	.quad	0x3fb8d2c386d2ed78              # double 0.096965999999999997
	.quad	0x3fdacfb3311a543f              # double 0.41892699999999999
	.quad	0x3fe1cbba12b5e52a              # double 0.55611900000000003
	.quad	0x3fd23892ee84ad79              # double 0.28470299999999998
	.quad	0x3fd688f42fe82518              # double 0.35210900000000001
	.quad	0x3fed05ff1d81f106              # double 0.90698199999999995
	.quad	0x3fd9df58c08b75ea              # double 0.40425699999999998
	.quad	0x3fec897c80841ede              # double 0.89178299999999999
	.quad	0x3fb9f212d77318fc              # double 0.10135
	.quad	0x3fe29b1fab96f21f              # double 0.58143599999999995
	.quad	0x3fe73912dba4d6e4              # double 0.72571699999999995
	.quad	0x3fcf1e29b6b2af14              # double 0.24310799999999999
	.quad	0x3fdcf9ce8d972cd8              # double 0.45274700000000001
	.quad	0x3fe572dc2b0ea183              # double 0.67027099999999995
	.quad	0x3fd5ea39c51dabe2              # double 0.34242099999999998
	.quad	0x3fd2f0aa21a719b5              # double 0.29593900000000001
	.quad	0x3fc66f587d6f9768              # double 0.17527300000000001
	.quad	0x3f978fabda0dfdf0              # double 0.023009000000000002
	.quad	0x3feba23bff8a8f3b              # double 0.86355400000000004
	.quad	0x3fd0934699418506              # double 0.25898900000000002
	.quad	0x3fed8fcd67fd3f5b              # double 0.92380399999999996
	.quad	0x3fd0a24894c447c3              # double 0.259905
	.quad	0x3fedfbd05af6c69b              # double 0.93698899999999996
	.quad	0x3fb08eef1bac2df1              # double 0.064681000000000002
	.quad	0x3fed4c20d5629d84              # double 0.91554299999999999
	.quad	0x3fe960a41a261bf3              # double 0.79304699999999995
	.quad	0x3fedf901083dbc23              # double 0.93664599999999998
	.quad	0x3fe6a98eda22f6a5              # double 0.70819799999999999
	.quad	0x3fe33d44998d0460              # double 0.60122900000000001
	.quad	0x3fd41c10d7be9857              # double 0.31421300000000002
	.quad	0x3fc639f77292c493              # double 0.17364399999999999
	.quad	0x3fd8a1db877ab325              # double 0.38487900000000003
	.quad	0x3fc284cf0739b025              # double 0.144678
	.quad	0x3fe0dcbddb9841ab              # double 0.52694600000000003
	.quad	0x3fd532b55ef1fddf              # double 0.33122000000000001
	.quad	0x3fe483c8e25c810a              # double 0.64108699999999996
	.quad	0x3fef74a1272c94b4              # double 0.98298700000000005
	.quad	0x3fec08c1db0142f6              # double 0.87606899999999999
	.quad	0x3feab08bb906466b              # double 0.83405099999999999
	.quad	0x3fceb3892ee84ad8              # double 0.23985400000000001
	.quad	0x3fd21615ebfa8f7e              # double 0.28259800000000002
	.quad	0x3fc527b2cc70867b              # double 0.165274
	.quad	0x3fe60787485e3da3              # double 0.688419
	.quad	0x3feeb892ee84ad79              # double 0.96003099999999996
	.quad	0x3fe60433d6c72192              # double 0.68801299999999999
	.quad	0x3feebf24d8fd5cb8              # double 0.96083300000000004
	.quad	0x3fdaaffb04ee7c4a              # double 0.416991
	.quad	0x3fed327cbf6e3f79              # double 0.91241300000000003
	.quad	0x3febf99c38b04ab6              # double 0.87422
	.quad	0x3fce1af7d30ad46f              # double 0.23519799999999999
	.quad	0x3fb98c5c9a34ca0c              # double 0.099797999999999997
	.quad	0x3fd87de0d66f0cfe              # double 0.382683
	.quad	0x3fd46fd21ff2e48f              # double 0.31932500000000003
	.quad	0x3fe82e5bc87db2b3              # double 0.75565899999999997
	.quad	0x3fd4739f340d4dc6              # double 0.31955699999999998
	.quad	0x3fd23700474d9c6b              # double 0.284607
	.quad	0x3feab66f9335d24a              # double 0.83477000000000001
	.quad	0x3fd3cd3e0bd44999              # double 0.30940200000000001
	.quad	0x3fc2fc0d2c386d2f              # double 0.148317
	.quad	0x3f5ecd4aa10e0221              # double 0.0018799999999999999
	.quad	0x3fe0022dd7a99fa1              # double 0.50026599999999999
	.quad	0x3fe9abc72e275ab8              # double 0.80221900000000002
	.quad	0x3fdbb823c85c24c4              # double 0.433114
	.quad	0x3fed6bfca85caafc              # double 0.91943200000000002
	.quad	0x3fc2f96e158750c2              # double 0.14823700000000001
	.quad	0x3fd5dd9c27e95315              # double 0.34165099999999998
	.quad	0x3fcddb09a671ef31              # double 0.23324700000000001
	.quad	0x3fdbb063e07a28bb              # double 0.432641
	.quad	0x3fe5d0f6273929ed              # double 0.68175799999999998
	.quad	0x3fe89dde37585be2              # double 0.76927100000000004
	.quad	0x3fed267e846a5d6c              # double 0.910949
	.quad	0x3fee16aad1d041cc              # double 0.94026699999999996
	.quad	0x3f99667b5f1bef4a              # double 0.024805000000000001
	.quad	0x3feb183b60285ec4              # double 0.84670800000000001
	.quad	0x3fbb5d462c343b71              # double 0.106892
	.quad	0x3fe65ebd9018e758              # double 0.69906500000000005
	.quad	0x3fe3141205bc01a3              # double 0.59619999999999995
	.quad	0x3fed2dd9c27e9531              # double 0.91184699999999996
	.quad	0x3feffb24638c9753              # double 0.99940700000000004
	.quad	0x3fce1fafc8b0079a              # double 0.235342
	.quad	0x3f9804d983947497              # double 0.023456000000000001
	.quad	0x3fe00c7e28240b78              # double 0.501525
	.quad	0x3fca2706d5065732              # double 0.204316
	.quad	0x3fc96a50d6b228dd              # double 0.19855700000000001
	.quad	0x3fe9e40852b4d8ba              # double 0.80908599999999997
	.quad	0x3fe621ea35935fc4              # double 0.69164000000000003
	.quad	0x3fd795e9e1b089a0              # double 0.36852499999999999
	.quad	0x3fdf0c9d9d3458cd              # double 0.48514499999999999
	.quad	0x3f95e6bc621b7e0b              # double 0.021388000000000001
	.quad	0x3fd3af5771001d5c              # double 0.30757699999999999
	.quad	0x3fee8ec743201041              # double 0.95492900000000003
	.quad	0x3fe75b5d894812be              # double 0.72990299999999997
	.quad	0x3fbc77ff151e7536              # double 0.111206
	.quad	0x3fcad106ee30caa3              # double 0.209504
	.quad	0x3fed03fd50225743              # double 0.90673700000000002
	.quad	0x3fe6f11f926c7eae              # double 0.71693399999999996
	.quad	0x3fd6e093532e7b3e              # double 0.35745700000000002
	.quad	0x3fe99a77e5eaab04              # double 0.80010599999999998
	.quad	0x3fe74f80dc33721d              # double 0.72845499999999996
	.quad	0x3f9253111f0c34c2              # double 0.017895000000000001
	.quad	0x3fe15885d31337eb              # double 0.54205599999999998
	.quad	0x3fe9a45b291b823d              # double 0.80131300000000005
	.quad	0x3fc4fbb0e5e67946              # double 0.16393099999999999
	.quad	0x3fd06e86c6583e85              # double 0.25674599999999997
	.quad	0x3fee014727dcbddc              # double 0.93765600000000004
	.quad	0x3fd2a76965f5275f              # double 0.291468
	.quad	0x3fddada33bd9cae2              # double 0.463723
	.quad	0x3fa97a02fb5d0310              # double 0.049758999999999998
	.quad	0x3fdd7c45cbbc2b95              # double 0.46071000000000001
	.quad	0x3fec4f5903a7546d              # double 0.88468599999999997
	.quad	0x3fa81e2584f4c6e7              # double 0.047105000000000001
	.quad	0x3fd108b32ce89657              # double 0.266156
	.quad	0x3fd1d49949e8815e              # double 0.27860099999999999
	.quad	0x3fe6f09d8c6d612c              # double 0.71687199999999995
	.quad	0x3fbc2a12f901083e              # double 0.110017
	.quad	0x3fc36b8737974602              # double 0.15171899999999999
	.quad	0x3fe6d592d98bf7f0              # double 0.71357099999999996
	.quad	0x3fed70c77dd872f3              # double 0.92001699999999997
	.quad	0x3fe820945f9df549              # double 0.75397700000000001
	.quad	0x3fedf5f2cb641701              # double 0.93627300000000002
	.quad	0x3fe60aac96cc5fc0              # double 0.68880300000000005
	.quad	0x3fc34877681669cf              # double 0.15064900000000001
	.quad	0x3fe5a5fe974a3401              # double 0.67651300000000003
	.quad	0x3fd3e892253111f1              # double 0.31107000000000001
	.quad	0x3fc52806af46aa08              # double 0.16528399999999999
	.quad	0x3fe52be0589acbc9              # double 0.66160600000000003
	.quad	0x3fa5379fa97e132b              # double 0.041439999999999998
	.quad	0x3fc0046412cf0f9d              # double 0.125134
	.quad	0x3fe595f45e0b4e12              # double 0.67455500000000002
	.quad	0x3fdf54b48d3ae686              # double 0.48954500000000001
	.quad	0x3fca7d6733ebbfd7              # double 0.206952
	.quad	0x3fe1125785f8d2e5              # double 0.53348899999999999
	.quad	0x3fe0e0f5e41d4b6a              # double 0.52746099999999996
	.quad	0x3fe45a78f25a2510              # double 0.63604400000000005
	.quad	0x3fde60f5e41d4b6a              # double 0.47466799999999998
	.quad	0x3fef05d95dd4c76d              # double 0.96946399999999999
	.quad	0x3fe9f8dd616f86a1              # double 0.81162900000000004
	.quad	0x3fe8ac493426783a              # double 0.77103100000000002
	.quad	0x3fe52b0a6fc58ab9              # double 0.66150399999999998
	.quad	0x3fd4f077ccc03793              # double 0.327177
	.quad	0x3fd96177ea1c68ec              # double 0.39657399999999998
	.quad	0x3fe6570c564f97ee              # double 0.69812600000000002
	.quad	0x3fe7d1deefe4ffc9              # double 0.74436899999999995
	.quad	0x3fe9d26527a20579              # double 0.80693300000000001
	.quad	0x3fd1a52ac753e708              # double 0.27570600000000001
	.quad	0x3fd176ddaceee0f4              # double 0.27288000000000001
	.quad	0x3fe0498a222d5172              # double 0.50897700000000001
	.quad	0x3febbb9ae0c17657              # double 0.86665099999999995
	.quad	0x3feeb81b64e05469              # double 0.95997399999999999
	.quad	0x3fecc764adff822c              # double 0.89934000000000002
	.quad	0x3fba4dd2f1a9fbe7              # double 0.10274999999999999
	.quad	0x3fe83890d5a5b963              # double 0.75690500000000005
	.quad	0x3fd16cc1ca3a4b55              # double 0.27226299999999998
	.quad	0x3feb79d2bf551505              # double 0.85862099999999997
	.quad	0x3fefc5132f87ad08              # double 0.99280699999999999
	.quad	0x3fdbafcce1c58256              # double 0.43260500000000002
	.quad	0x3fe63dec5f394b7b              # double 0.69505899999999998
	.quad	0x3fe980fba8826aa9              # double 0.79699500000000001
	.quad	0x3fdd8d823422467c              # double 0.46176200000000001
	.quad	0x3fdffe08aefb2aae              # double 0.49987999999999999
	.quad	0x3fd161ed5ae1cde6              # double 0.27160200000000001
	.quad	0x3fee770153bd1676              # double 0.95202699999999996
	.quad	0x3fb7ba775fb2edfe              # double 0.092688999999999993
	.quad	0x3fcf8b9baa1511e0              # double 0.246448
	.quad	0x3fedb4df04ddb552              # double 0.92832899999999996
	.quad	0x3fd80f98fa376923              # double 0.37595200000000001
	.quad	0x3fd02231832fcac9              # double 0.25208700000000001
	.quad	0x3fd56e653868fd1a              # double 0.33486300000000002
	.quad	0x3fb58eeae9ee45c3              # double 0.084211999999999995
	.quad	0x3fe35cb9a9da597d              # double 0.60506899999999997
	.quad	0x3fd74ead0c3d2524              # double 0.36417699999999997
	.quad	0x3fdc1ac57e23f24e              # double 0.43913400000000002
	.quad	0x3fda6777079e59f3              # double 0.41256500000000002
	.quad	0x3fe51eff9f87f024              # double 0.66003400000000001
	.quad	0x3fed88aac96cc5fc              # double 0.922933
	.quad	0x3fe3626b2f23033a              # double 0.60576399999999997
	.quad	0x3fe567a743a647fe              # double 0.66890300000000003
	.quad	0x3fe1d601ffb480a6              # double 0.55737400000000004
	.quad	0x3fc60841ede1198b              # double 0.172127
	.quad	0x3fece62fdfc19c17              # double 0.90309899999999999
	.quad	0x3fcbda16616b54e3              # double 0.21759300000000001
	.quad	0x3fd26df82b1f687b              # double 0.287962
	.quad	0x3fb37f38c5436b90              # double 0.076160000000000005
	.quad	0x3fc30f94c87980f5              # double 0.14891299999999999
	.quad	0x3fe4a80f12c27a63              # double 0.64551499999999995
	.quad	0x3fdf036c9c0a8d22              # double 0.48458400000000001
	.quad	0x3fd8ed1bf7ad4b27              # double 0.38947199999999998
	.quad	0x3fc909bf9c62a1b6              # double 0.19561000000000001
	.quad	0x3fe3e4b018611fd6              # double 0.62166600000000005
	.quad	0x3fd1784a9478c869              # double 0.27296700000000002
	.quad	0x3fe4ff2a172abef0              # double 0.65614799999999995
	.quad	0x3fd4388ebcc6c54c              # double 0.31595200000000001
	.quad	0x3fd3fcfc3f811f4f              # double 0.31231599999999998
	.quad	0x3fd5fe154434e337              # double 0.34363300000000002
	.quad	0x3fe5df3519bd4068              # double 0.68349700000000002
	.quad	0x3fbc944ed6fda837              # double 0.111638
	.quad	0x3fdbb020c49ba5e3              # double 0.43262499999999998
	.quad	0x3fe2e0ae9680e065              # double 0.58992699999999998
	.quad	0x3fee69270b06c43f              # double 0.95033599999999996
	.quad	0x3fc93bd1676640a7              # double 0.19713800000000001
	.quad	0x3fd4f2a9d627bf62              # double 0.32731100000000002
	.quad	0x3fe36fc9bc771434              # double 0.60739600000000005
	.quad	0x3fc13721d53cddd7              # double 0.134495
	.quad	0x3fbbe49b1fab96f2              # double 0.108957
	.quad	0x3fc54751ce28ed5f              # double 0.166239
	.quad	0x3fe24016052502ef              # double 0.57032300000000002
	.quad	0x3fd7ffb04ee7c4a0              # double 0.37498100000000001
	.quad	0x3fefe030c23fab11              # double 0.99611700000000003
	.quad	0x3fdb28027d88c1db              # double 0.424317
	.quad	0x3fbba908a265f0f6              # double 0.10804800000000001
	.quad	0x3feae6dbd72bcb60              # double 0.84068100000000001
	.quad	0x3fda14c660a20147              # double 0.40751799999999999
	.quad	0x3fe53b8e4b87bdcf              # double 0.66352
	.quad	0x3feca9f9ce8d972d              # double 0.89574900000000002
	.quad	0x3fee698fe69270b0              # double 0.95038599999999995
	.quad	0x3fe6ec3dab5c39bd              # double 0.71633800000000003
	.quad	0x3fc773e24febd09e              # double 0.183224
	.quad	0x3fe68a9de8b3b320              # double 0.70442099999999996
	.quad	0x3fd0d2fe3f359ff5              # double 0.262878
	.quad	0x3fb23443d46b26c0              # double 0.071110000000000007
	.quad	0x3fe09ec7000431be              # double 0.51938200000000001
	.quad	0x3fca16c61522a6f4              # double 0.20382
	.quad	0x3fe6a9f383f0bae9              # double 0.70824600000000004
	.quad	0x3fa24b124d099e0e              # double 0.035728999999999997
	.quad	0x3fea3a0a52695960              # double 0.819585
	.quad	0x3fd1525892684cf0              # double 0.27065099999999997
	.quad	0x3fd751fc4c165908              # double 0.36437900000000001
	.quad	0x3fd8b5aa715831f0              # double 0.38608799999999999
	.quad	0x3fe201ecd4aa10e0              # double 0.56273499999999999
	.quad	0x3feaa630ec311623              # double 0.83278700000000005
	.quad	0x3fae060fe47991bc              # double 0.058639999999999998
	.quad	0x3fde5ec3dab5c39c              # double 0.47453400000000001
	.quad	0x3fe738ae31d712a1              # double 0.72566900000000001
	.quad	0x3fe8cc9c90c4dec2              # double 0.77497700000000003
	.quad	0x3feb79fec99f1ae3              # double 0.85864200000000002
	.quad	0x3fe2d1633482be8c              # double 0.58806000000000003
	.quad	0x3fe66060fe47991c              # double 0.69926500000000003
	.quad	0x3fd7231832fcac8e              # double 0.36151699999999998
	.quad	0x3fd248e4755ffe6d              # double 0.28569899999999998
	.quad	0x3fe155a7d24180d4              # double 0.54170600000000002
	.quad	0x3fcb6f6512a94ff0              # double 0.214337
	.quad	0x3fe717e56473471f              # double 0.72166699999999995
	.quad	0x3fe24a46e08f2171              # double 0.57156700000000005
	.quad	0x3fe22400fba8826b              # double 0.56689500000000004
	.quad	0x3fe3b122b7baecd0              # double 0.61537299999999995
	.quad	0x3fa4ab606b7aa25e              # double 0.040370000000000003
	.quad	0x3fed3886594af4f1              # double 0.91315000000000002
	.quad	0x3fc411cb039ef0f1              # double 0.15679299999999999
	.quad	0x3fef97268d32830a              # double 0.987201
	.quad	0x3fe9f2c7325918a0              # double 0.81088599999999999
	.quad	0x3fed8678c0053e2d              # double 0.92266499999999996
	.quad	0x3fc67570c564f97f              # double 0.175459
	.quad	0x3fc18d92fb19e732              # double 0.137133
	.quad	0x3fe1b532e7b3d8e0              # double 0.553369
	.quad	0x3fafd438d1d8a548              # double 0.062165999999999999
	.quad	0x3feab4edb2f661f2              # double 0.83458600000000005
	.quad	0x3fcdee3d5fdcdf6a              # double 0.23383300000000001
	.quad	0x3f9c8a7a41e57d9e              # double 0.027872000000000001
	.quad	0x3fe289ce4a7b4e55              # double 0.579322
	.quad	0x3fee098915bdd767              # double 0.93866400000000005
	.quad	0x3fcc0cd855970b4a              # double 0.219142
	.quad	0x3fed330728e92d56              # double 0.91247900000000004
	.quad	0x3fe1a5785f8d2e51              # double 0.55144899999999997
	.quad	0x3fdedd095af294dd              # double 0.48224099999999998
	.quad	0x3fd1e4ef0281ba80              # double 0.27959800000000001
	.quad	0x3fe8fbd48cb4aec9              # double 0.78074100000000002
	.quad	0x3fb0ca1cef240faa              # double 0.065584000000000003
	.quad	0x3fee1c7bcc2938de              # double 0.94097699999999995
	.quad	0x3fdd94b7b28954a8              # double 0.462202
	.quad	0x3fd2fae3608d0892              # double 0.29656300000000002
	.quad	0x3fd383947496aad2              # double 0.30490600000000001
	.quad	0x3fc377b7c7820a31              # double 0.152091
	.quad	0x3fd15870da5daf08              # double 0.27102300000000001
	.quad	0x3fee5c358afc47e5              # double 0.94875600000000004
	.quad	0x3fda289118c197e5              # double 0.40872599999999998
	.quad	0x3fe209a027525461              # double 0.56367500000000004
	.quad	0x3fe0f3083558a761              # double 0.529667
	.quad	0x3fdfe646f1561911              # double 0.49842999999999998
	.quad	0x3fef0eb24a6a875d              # double 0.97054399999999996
	.quad	0x3fe2f61ed5ae1cde              # double 0.59254399999999996
	.quad	0x3fe2b4d056c508b3              # double 0.58457199999999998
	.quad	0x3fd831b9b66f9336              # double 0.37803500000000001
	.quad	0x3fe094ea077036ca              # double 0.51817800000000003
	.quad	0x3fe474299d883ba3              # double 0.63917999999999997
	.quad	0x3fe57abfb9bed30f              # double 0.671234
	.quad	0x3fd9ae9ee45c358b              # double 0.401283
	.quad	0x3fd11672324c8366              # double 0.26699499999999998
	.quad	0x3fe2d2bb23571d1d              # double 0.58822399999999997
	.quad	0x3fe2c5a5fc7e6b40              # double 0.58662700000000001
	.quad	0x3fcc96787ce95fab              # double 0.22334200000000001
	.quad	0x3fec5323fee2c98e              # double 0.88514899999999996
	.quad	0x3fe7800a7c5ac472              # double 0.73438000000000003
	.quad	0x3fe90dfdef8487ba              # double 0.78295800000000004
	.quad	0x3fce58b3f63c31df              # double 0.23708199999999999
	.quad	0x3fe3b7585be1a826              # double 0.61613099999999998
	.quad	0x3fea25accd53048a              # double 0.81709900000000002
	.quad	0x3fae0fa15db3397e              # double 0.058713000000000001
	.quad	0x3fbc6ab14ec204f3              # double 0.111003
	.quad	0x3fe6a671ef30a4e3              # double 0.70781799999999995
	.quad	0x3fb8489d27c39368              # double 0.094857999999999998
	.quad	0x3fe75dd2ae8e1d65              # double 0.73020300000000005
	.quad	0x3fd37c6fbd273d5c              # double 0.30447000000000002
	.quad	0x3fee5fc7e6b3fea0              # double 0.94919200000000003
	.quad	0x3fd4fcdee34fc611              # double 0.327934
	.quad	0x3fee6f694467381d              # double 0.95109999999999995
	.quad	0x3f8b402d16b97fe9              # double 0.013306
	.quad	0x3fed333fc86cebbc              # double 0.91250600000000003
	.quad	0x3fde48adeebb341e              # double 0.473186
	.quad	0x3fed1cfbb949624a              # double 0.90978800000000004
	.quad	0x3fe4ddcc63f14120              # double 0.65207499999999996
	.quad	0x3fcc88a47ecfe9b8              # double 0.22292000000000001
	.quad	0x3fe771a3b14a9047              # double 0.732622
	.quad	0x3fd59e0e736049ed              # double 0.33777200000000002
	.quad	0x3fdd261bf37b8d3f              # double 0.45545099999999999
	.quad	0x3fc7b4a2339c0ebf              # double 0.1852
	.quad	0x3fe2476f2a5a469d              # double 0.57121999999999995
	.quad	0x3fecb1487768166a              # double 0.89664100000000002
	.quad	0x3fe37c3f811f4f51              # double 0.60891700000000004
	.quad	0x3fd4da33bd9cae21              # double 0.325818
	.quad	0x3fcce18ac9f2fdb9              # double 0.225633
	.quad	0x3fc9f8ca8198f1d4              # double 0.202905
	.quad	0x3fc25d41fa765343              # double 0.14347099999999999
	.quad	0x3feb955f78359bc3              # double 0.86198399999999997
	.quad	0x3fb317ce52deca25              # double 0.074581999999999996
	.quad	0x3fc043f5f91600f3              # double 0.12707399999999999
	.quad	0x3fa3201040bfe3b0              # double 0.037353999999999998
	.quad	0x3fe7cdd93c46d82c              # double 0.74387800000000004
	.quad	0x3fee4e9a2c669058              # double 0.94709500000000002
	.quad	0x3f434ce3de6149c7              # double 5.8900000000000001E-4
	.quad	0x3fda7c17a89331a1              # double 0.41382400000000003
	.quad	0x3fddf4c2b51bd61f              # double 0.46806399999999998
	.quad	0x3fe40476f2a5a46a              # double 0.62554500000000002
	.quad	0x3fd421294573a798              # double 0.31452400000000003
	.quad	0x3fe760ae9680e065              # double 0.73055199999999998
	.quad	0x3fed18fe69270b07              # double 0.90930100000000003
	.quad	0x3fc98066c2acb85a              # double 0.19923099999999999
	.quad	0x3feb7a17f4128bf4              # double 0.85865400000000002
	.quad	0x3fd0869c66d373b0              # double 0.258216
	.quad	0x3fe7d17a46173b86              # double 0.74432100000000001
	.quad	0x3fe9bd8e0008637c              # double 0.80438900000000002
	.quad	0x3fe8ba53b8e4b87c              # double 0.77274500000000001
	.quad	0x3feeadd7a99fa11b              # double 0.95872100000000004
	.quad	0x3fd05ba6efc371da              # double 0.25559399999999999
	.quad	0x3fc8a0d349be8ff3              # double 0.192408
	.quad	0x3fdb429e0a41a262              # double 0.42594100000000001
	.quad	0x3fd1866a11ec918e              # double 0.27382899999999999
	.quad	0x3fdd76b7ed41b75a              # double 0.46037099999999997
	.quad	0x3fe7e138fffbce42              # double 0.74624299999999999
	.quad	0x3fe1d6b65a9a8049              # double 0.55745999999999996
	.quad	0x3fef5cfcc5b8dc55              # double 0.98010099999999999
	.quad	0x3fe3358f2e05ccc9              # double 0.60028800000000004
	.quad	0x3fc9da7b0b391926              # double 0.20197999999999999
	.quad	0x3fe4bcc2938de6de              # double 0.64804200000000001
	.quad	0x3fe56149c6f36ef8              # double 0.668126
	.quad	0x3fe1299524bfd2e9              # double 0.53632599999999997
	.quad	0x3fd13547e06961c3              # double 0.26887699999999998
	.quad	0x3fe4d9513f8db489              # double 0.651528
	.quad	0x3fd124febd09e12a              # double 0.26788299999999998
	.quad	0x3fe987ad080b673c              # double 0.79781199999999996
	.quad	0x3fdb7839cd8127b3              # double 0.42921300000000001
	.quad	0x3fe84504816f0069              # double 0.75842500000000002
	.quad	0x3fe66a0ba1f4b1ee              # double 0.70044499999999998
	.quad	0x3fe1682949a56580              # double 0.54396500000000003
	.quad	0x3fec624bba12b5e5              # double 0.88699899999999998
	.quad	0x3fed8ae31d712a0f              # double 0.92320400000000002
	.quad	0x3fbcc5974e65bea1              # double 0.11239
	.quad	0x3fe74669057d1783              # double 0.72734500000000002
	.quad	0x3fe90854cdb7ae58              # double 0.78226700000000005
	.quad	0x3fcabef06b37867f              # double 0.208952
	.quad	0x3fe6c6b8b69552e3              # double 0.711758
	.quad	0x3fefb0af5fd47bee              # double 0.99031800000000003
	.quad	0x3febf219220ff541              # double 0.87330300000000005
	.quad	0x3fa935daad601ffb              # double 0.049238999999999998
	.quad	0x3fc971fbc5de9c02              # double 0.198791
	.quad	0x3fde5d744f5d3565              # double 0.47445399999999999
	.quad	0x3feae162f166e009              # double 0.84001300000000001
	.quad	0x3fe64ba732df505d              # double 0.69673499999999999
	.quad	0x3fdfca57a786c227              # double 0.49672500000000003
	.quad	0x3fe5d61f5be5d9e4              # double 0.68238799999999999
	.quad	0x3fc24ccee5abc0e4              # double 0.14296900000000001
	.quad	0x3fe9203e63e8dda5              # double 0.78518600000000005
	.quad	0x3fa6e6d9be4cd749              # double 0.044729999999999999
	.quad	0x3fd70e5a35d67ba2              # double 0.36025099999999999
	.quad	0x3fdb162f166e008f              # double 0.42322900000000002
	.quad	0x3fe907d912556d1a              # double 0.78220800000000001
	.quad	0x3feedb48909289db              # double 0.96426800000000001
	.quad	0x3fd1bf444e0daa0d              # double 0.27729900000000002
	.quad	0x3fe3896feb4a6656              # double 0.61052700000000004
	.quad	0x3fe77bf61aa3f035              # double 0.73388200000000003
	.quad	0x3fe1efac6045baf5              # double 0.56050699999999998
	.quad	0x3fe1f48a159817b9              # double 0.56110099999999996
	.quad	0x3fca4a38327674d1              # double 0.20538999999999999
	.quad	0x3f8c39bcba301217              # double 0.013782000000000001
	.quad	0x3fd1e432441fea81              # double 0.279553
	.quad	0x3fd712513b5bf6a1              # double 0.36049300000000001
	.quad	0x3fea57646ae3a3a9              # double 0.82316800000000001
	.quad	0x3fe51c51dabe2718              # double 0.65970700000000004
	.quad	0x3fe9289b951c5c57              # double 0.78620699999999999
	.quad	0x3fef5e41d4b6a61a              # double 0.98025600000000002
	.quad	0x3fe1cc25072085b2              # double 0.55617000000000005
	.quad	0x3fce5a682b62845a              # double 0.23713400000000001
	.quad	0x3fd08e043a2163fe              # double 0.25866800000000001
	.quad	0x3fce9e4d5d80e497              # double 0.239206
	.quad	0x3fd9eb67c286f8ad              # double 0.40499299999999999
	.quad	0x3fd8952d234eb9a1              # double 0.38410499999999997
	.quad	0x3fd6d6f976790321              # double 0.35687099999999999
	.quad	0x3fd9f2d7f950b956              # double 0.405447
	.quad	0x3fe2b882278d0cc3              # double 0.58502299999999996
	.quad	0x3fec4e39b456b442              # double 0.88454900000000003
	.quad	0x3fe45ab5c39bcba3              # double 0.636073
	.quad	0x3fd4bb6ed677707a              # double 0.32394000000000001
	.quad	0x3fef35e95b78cc9a              # double 0.97533099999999995
	.quad	0x3fc7d60e94ee392e              # double 0.18622
	.quad	0x3fdd2afdda8bd231              # double 0.45574900000000002
	.quad	0x3fef61c15097c808              # double 0.98068299999999997
	.quad	0x3fd33361565c2d28              # double 0.30001100000000003
	.quad	0x3fd19a88ace24bba              # double 0.275057
	.quad	0x3fe8e21fafc8b008              # double 0.77760300000000004
	.quad	0x3fec8116ebd4cfd1              # double 0.89075800000000005
	.quad	0x3fecba7fc32ebe59              # double 0.89776599999999995
	.quad	0x3fe546bf01322f27              # double 0.66488599999999998
	.quad	0x3fd8f9fcb0c026cc              # double 0.39025799999999999
	.quad	0x3feaea93f290abb4              # double 0.84113499999999996
	.quad	0x3fc230446b69db66              # double 0.142098
	.quad	0x3fed587b56b87379              # double 0.91705099999999995
	.quad	0x3fe365f30e7ff584              # double 0.60619500000000004
	.quad	0x3fec6451b93037d6              # double 0.88724599999999998
	.quad	0x3fe24dcca70d1fa3              # double 0.57199699999999998
	.quad	0x3fb0e13f4a98aa86              # double 0.065936999999999996
	.quad	0x3feb76145953586d              # double 0.85816400000000004
	.quad	0x3fb9d95dd4c76d11              # double 0.10097299999999999
	.quad	0x3fd0fede97d06bbe              # double 0.26555600000000001
	.quad	0x3fe980b45ae5ffa4              # double 0.79696100000000003
	.quad	0x3fe88292817763e5              # double 0.76593900000000004
	.quad	0x3f9a78af3e468cac              # double 0.025850999999999999
	.quad	0x3fef2656abde3fbc              # double 0.97343000000000001
	.quad	0x3fe68d4fdf3b645a              # double 0.70474999999999999
	.quad	0x3fe3f212d77318fc              # double 0.62329999999999997
	.quad	0x3fb68848387df5cf              # double 0.088016999999999998
	.quad	0x3fa468cac4b4d057              # double 0.039862000000000002
	.quad	0x3fe69d6adf71eaff              # double 0.70671600000000001
	.quad	0x3fe1c914b167ec78              # double 0.55579599999999996
	.quad	0x3fba3486f049a997              # double 0.102364
	.quad	0x3fdac6540cc78e9f              # double 0.41835499999999998
	.quad	0x3fe115703f2d3c79              # double 0.53386699999999998
	.quad	0x3f92f7b17ce52ded              # double 0.018523000000000001
	.quad	0x3fcf5f5f0b28522f              # double 0.24509800000000001
	.quad	0x3fe376ea4228997c              # double 0.60826599999999997
	.quad	0x3fefbb8c32a8c9b8              # double 0.99164399999999996
	.quad	0x3fecc5308bb90646              # double 0.89907099999999995
	.quad	0x3fc971f36262cba7              # double 0.19878999999999999
	.quad	0x3fb492ccf6be37df              # double 0.080365000000000006
	.quad	0x3fedf0fbeb9e492c              # double 0.93566700000000002
	.quad	0x3f8436b8f9b13166              # double 0.0098700000000000003
	.quad	0x3fe439bcba301217              # double 0.63204800000000005
	.quad	0x3fa1fd5885d31338              # double 0.035136000000000001
	.quad	0x3fe4801d5c31593e              # double 0.64063899999999996
	.quad	0x3fe6c816f0068db9              # double 0.71192500000000003
	.quad	0x3fefab3461309c80              # double 0.989649
	.quad	0x3fd8c471b4784231              # double 0.38699
	.quad	0x3fd559d99029ae4f              # double 0.33360899999999999
	.quad	0x3fde03a7546d3f9e              # double 0.46897299999999997
	.quad	0x3fe66de76427c7c5              # double 0.70091599999999998
	.quad	0x3fa4f2ae07e5a78f              # double 0.040913999999999999
	.quad	0x3fdf296f6512a950              # double 0.486904
	.quad	0x3fedd3f9e7b80a9e              # double 0.93212600000000001
	.quad	0x3f8c30d306a2b170              # double 0.013764999999999999
	.quad	0x3f9872f33ca31e7e              # double 0.023876000000000001
	.quad	0x3fd14eb13dfb0d52              # double 0.270428
	.quad	0x3fdfa871a3b14a90              # double 0.49465599999999998
	.quad	0x3fcb265add9c27e9              # double 0.21210799999999999
	.quad	0x3fe2e7e62dc6e2a8              # double 0.590808
	.quad	0x3fb27b9170d62bf1              # double 0.072197999999999998
	.quad	0x3fee617e34b94531              # double 0.94940100000000005
	.quad	0x3fe64cf0739b024f              # double 0.69689199999999996
	.quad	0x3fba2ee41919ac79              # double 0.10227799999999999
	.quad	0x3fbc54690de09353              # double 0.110663
	.quad	0x3fe61b7e0ac7da1f              # double 0.69085600000000003
	.quad	0x3fdc79bbadc0980b              # double 0.44492999999999999
	.quad	0x3fc3a86940357a35              # double 0.15357699999999999
	.quad	0x3fd13c536d655e29              # double 0.26930700000000002
	.quad	0x3fe08fc2eba27aea              # double 0.51754900000000004
	.quad	0x3fc21fd1569f4906              # double 0.141596
	.quad	0x3fe62a9f7b5aea31              # double 0.69270299999999996
	.quad	0x3fd4c1ca3a4b5569              # double 0.32432800000000001
	.quad	0x3fbda133c1ce6c09              # double 0.115741
	.quad	0x3fc83eaf6837f7be              # double 0.189413
	.quad	0x3fcc864020817fc7              # double 0.22284699999999999
	.quad	0x3fee8d5c74751ce3              # double 0.95475600000000005
	.quad	0x3fe35f394b7b2895              # double 0.60537399999999997
	.quad	0x3fe3dbb16c1e364c              # double 0.62056800000000001
	.quad	0x3fc56102795703f3              # double 0.167023
	.quad	0x3fe9655193708aad              # double 0.79361800000000005
	.quad	0x3fee56d3b6cbd988              # double 0.94809900000000002
	.quad	0x3f71fd5885d31338              # double 0.0043920000000000001
	.quad	0x3fd062e4d1a65061              # double 0.25603599999999999
	.quad	0x3fd29e83e425aee6              # double 0.29092499999999999
	.quad	0x3fe56f88b9778573              # double 0.66986500000000004
	.quad	0x3fe6602c9081c2e3              # double 0.69923999999999997
	.quad	0x3fe77c286f8ad256              # double 0.73390599999999995
	.quad	0x3febd2f3c2dadb83              # double 0.86950099999999997
	.quad	0x3fe711a32b12d341              # double 0.72090299999999996
	.quad	0x3fd58d0cc35ce182              # double 0.33673399999999998
	.quad	0x3fc4385c67dfe32a              # double 0.15797
	.quad	0x3fb722f2734f82f5              # double 0.090376999999999999
	.quad	0x3fdc8512231832fd              # double 0.44562200000000002
	.quad	0x3fc46644d87724fb              # double 0.15937100000000001
	.quad	0x3fea413986338b48              # double 0.82046200000000002
	.quad	0x3fd84ad362e90364              # double 0.37956699999999999
	.quad	0x3feb2aa3ad18d25f              # double 0.84895500000000002
	.quad	0x3fd1943e10060781              # double 0.274673
	.quad	0x3fdc182235b4edb3              # double 0.438973
	.quad	0x3fec73b213e3e293              # double 0.889123
	.quad	0x3f964b2314013ec4              # double 0.021770999999999999
	.quad	0x3fd5c5931ca7d673              # double 0.34018399999999999
	.quad	0x3fed94af4f0d844d              # double 0.9244
	.quad	0x3fd3bce8533b1077              # double 0.30840499999999998
	.quad	0x3fa5095af294dd72              # double 0.041086999999999999
	.quad	0x3fe76bf22c01e68a              # double 0.73192699999999999
	.quad	0x3fc54057082491b0              # double 0.16602600000000001
	.quad	0x3fece28672756862              # double 0.90265200000000001
	.quad	0x3feb9a32b12d3416              # double 0.86257300000000003
	.quad	0x3fe9342aa9f7b5af              # double 0.78761800000000004
	.quad	0x3fb0abb44e50c5eb              # double 0.065119999999999997
	.quad	0x3fe04d5d80e496ee              # double 0.50944400000000001
	.quad	0x3fbf7963992c8c50              # double 0.122946
	.quad	0x3fe2913e81450efe              # double 0.58023000000000002
	.quad	0x3fc7ed8d36b4c7f3              # double 0.18693699999999999
	.quad	0x3fe36b69db65ecc4              # double 0.60686200000000001
	.quad	0x3fe46f60e0eb67c3              # double 0.63859600000000005
	.quad	0x3fe37d933e35c5b5              # double 0.60907900000000004
	.quad	0x3fd0b4e54f7a9197              # double 0.26104100000000002
	.quad	0x3fd0ac753e707e17              # double 0.26052599999999998
	.quad	0x3feacef240fa9c13              # double 0.83776200000000001
	.quad	0x3fe0eeac8605681f              # double 0.52913500000000002
	.quad	0x3fe9b226c3b927d4              # double 0.80299699999999996
	.quad	0x3feaee6b8305d95e              # double 0.84160400000000002
	.quad	0x3fdbd2999567dbb1              # double 0.43472899999999998
	.quad	0x3fde115df6555c53              # double 0.46981000000000001
	.quad	0x3fe3a1426fe718a8              # double 0.61343499999999995
	.quad	0x3fb0c282c6ef3d3a              # double 0.065467999999999998
	.quad	0x3febb547e06961c3              # double 0.86587899999999995
	.quad	0x3fe5acaff6d33094              # double 0.67732999999999999
	.quad	0x3f9f9b13165d3997              # double 0.030865
	.quad	0x3fe9ab6f19934efd              # double 0.80217700000000003
	.quad	0x3fd14d37c1376d55              # double 0.27033800000000002
	.quad	0x3fe5854690de0935              # double 0.67251899999999998
	.quad	0x3fe2da122fad6cb5              # double 0.58911999999999998
	.quad	0x3fbda847b24638c9              # double 0.11584899999999999
	.quad	0x3fe5ede33269df98              # double 0.68528900000000004
	.quad	0x3fda558ea7ce0fc3              # double 0.411472
	.quad	0x3fe933b107746888              # double 0.78756000000000004
	.quad	0x3feb713059641f64              # double 0.85756699999999996
	.quad	0x3fec7c3b4f616723              # double 0.89016499999999998
	.quad	0x3fd8107faa044ae8              # double 0.37600699999999998
	.quad	0x3fe1ddb3397dd00f              # double 0.55831299999999995
	.quad	0x3fbbe77d523b3637              # double 0.109001
	.quad	0x3fea0f840181e03f              # double 0.81439399999999995
	.quad	0x3fe31e3864cb5bb4              # double 0.59743900000000005
	.quad	0x3fe7c6bacf7446fa              # double 0.74300900000000003
	.quad	0x3fd82b66b6177ea2              # double 0.37764900000000001
	.quad	0x3fe137281fd9ba1b              # double 0.53798299999999999
	.quad	0x3fef650e779207d5              # double 0.98108600000000001
	.quad	0x3fa7141205bc01a3              # double 0.045074999999999997
	.quad	0x3fde9378ee286727              # double 0.47775099999999998
	.quad	0x3fca20b3d4ae429e              # double 0.204123
	.quad	0x3fa76427c7c5260f              # double 0.045685999999999997
	.quad	0x3fed266ba493c89f              # double 0.91093999999999997
	.quad	0x3feb426351deefe5              # double 0.851854
	.quad	0x3fdad4738a3b57c5              # double 0.41921700000000001
	.quad	0x3feb4a57a786c227              # double 0.85282500000000006
	.quad	0x3fe8e0e51d25aab4              # double 0.77745299999999994
	.quad	0x3fc3774256bca537              # double 0.15207699999999999
	.quad	0x3fe87401c4fc1df3              # double 0.76416099999999998
	.quad	0x3fe6c6aa087ca644              # double 0.71175100000000002
	.quad	0x3fe2dc1615ebfa8f              # double 0.58936599999999995
	.quad	0x3fd87dae81882adc              # double 0.38267099999999998
	.quad	0x3fdcca8e2e2b8c76              # double 0.44986300000000001
	.quad	0x3fc66d0d49949e88              # double 0.175203
	.quad	0x3fa762b6ae7d566d              # double 0.045675
	.quad	0x3fdde9dd7ecbb7fa              # double 0.46739900000000001
	.quad	0x3fb065c70435efa6              # double 0.064052999999999999
	.quad	0x3fbcbccf28c79f66              # double 0.11225599999999999
	.quad	0x3fe667dbb16c1e36              # double 0.70017799999999997
	.quad	0x3fe48d10f51ac9b0              # double 0.64222000000000001
	.quad	0x3fe2065d7cb2d906              # double 0.56327700000000003
	.quad	0x3feb2c55c96030c2              # double 0.84916199999999997
	.quad	0x3fe59fd1569f4906              # double 0.675759
	.quad	0x3fd887229e90795f              # double 0.38324799999999998
	.quad	0x3fec0941c8216c61              # double 0.87612999999999996
	.quad	0x3fec6af038e29f9d              # double 0.88805400000000001
	.quad	0x3fcb5a5b9628cbd1              # double 0.213695
	.quad	0x3fed17d6b65a9a80              # double 0.90915999999999997
	.quad	0x3fd63bc903ea704c              # double 0.34739900000000001
	.quad	0x3fd1e83a109d0636              # double 0.27979900000000002
	.quad	0x3fd7e275ab7dc7ac              # double 0.373197
	.quad	0x3fa089e34330d738              # double 0.032301999999999997
	.quad	0x3fba147ae147ae14              # double 0.10187499999999999
	.quad	0x3fe33f8db4890929              # double 0.60150800000000004
	.quad	0x3fe56dc7ef177a70              # double 0.669651
	.quad	0x3fed28155d5f56a8              # double 0.91114300000000004
	.quad	0x3fd74488c60cbf2b              # double 0.36355799999999999
	.quad	0x3feed0763a190082              # double 0.962947
	.quad	0x3fe8e3e6c4c5974e              # double 0.77781999999999996
	.quad	0x3fd5a8b4bf8fcd68              # double 0.338422
	.quad	0x3fcf86db50f40e5a              # double 0.24630299999999999
	.quad	0x3fbdf548ecd8dbcf              # double 0.117024
	.quad	0x3fcc01bc98a222d5              # double 0.218803
	.quad	0x3fd45f8d2e514c23              # double 0.318332
	.quad	0x3fd850092ccf6be3              # double 0.37988499999999997
	.quad	0x3fad73647baa9b4a              # double 0.057521000000000003
	.quad	0x3fe3a7c17a89331a              # double 0.614228
	.quad	0x3fc17bf1e8e60807              # double 0.13659499999999999
	.quad	0x3fe4a5785f8d2e51              # double 0.64519899999999997
	.quad	0x3fededf3f961804e              # double 0.93529700000000005
	.quad	0x3fe46679463cfb33              # double 0.63750899999999999
	.quad	0x3fec0c4588a04d12              # double 0.876498
	.quad	0x3fea89f1f14983d8              # double 0.82933900000000005
	.quad	0x3fe292ccf6be37df              # double 0.58042000000000005
	.quad	0x3fe6470435efa616              # double 0.69616900000000004
	.quad	0x3febffb69984a0e4              # double 0.87496499999999999
	.quad	0x3fccfe3f359ff4fd              # double 0.22650899999999999
	.quad	0x3fc3a1e3eaf6837f              # double 0.15337799999999999
	.quad	0x3fe867168f8e7ddd              # double 0.76258400000000004
	.quad	0x3faa6defc7a39820              # double 0.051619999999999999
	.quad	0x3fd51b64e054690e              # double 0.32979700000000001
	.quad	0x3fdc54046412cf10              # double 0.44262800000000002
	.quad	0x3fdade8b3b320536              # double 0.41983300000000001
	.quad	0x3fc3c0fcb4f1e4b4              # double 0.15432699999999999
	.quad	0x3fe4e746cb966be8              # double 0.65323200000000003
	.quad	0x3fd1a7e73a365cb3              # double 0.27587299999999998
	.quad	0x3fe0df82b1f687b1              # double 0.52728399999999997
	.quad	0x3fdd085b18548a9c              # double 0.45363500000000001
	.quad	0x3fd703d145d85165              # double 0.35960799999999998
	.quad	0x3fe0b69b9d7fd827              # double 0.52229099999999995
	.quad	0x3fe1270b06c43f60              # double 0.53601600000000005
	.quad	0x3fcfc8d1958969a1              # double 0.24831600000000001
	.quad	0x3fb5003eea209aaa              # double 0.082034999999999996
	.quad	0x3fd4e4f765fd8adb              # double 0.32647500000000002
	.quad	0x3feff28a6117720d              # double 0.99835700000000004
	.quad	0x3fe9d27e5215768a              # double 0.80694500000000002
	.quad	0x3fe19d16fc9bc771              # double 0.55042599999999997
	.quad	0x3fea8605681ecd4b              # double 0.82886000000000004
	.quad	0x3fdf72ead9274e23              # double 0.49138900000000002
	.quad	0x3fd0eccc46950fc7              # double 0.26445299999999999
	.quad	0x3fea0bb906466b1e              # double 0.81393099999999996
	.quad	0x3fef702602c9081c              # double 0.98243999999999997
	.quad	0x3fe18153bd167664              # double 0.547037
	.quad	0x3fd265e892253112              # double 0.28747
	.quad	0x3fdff5771001d5c3              # double 0.499357
	.quad	0x3fec7b5f1bef49cf              # double 0.89005999999999996
	.quad	0x3fec56084a515cea              # double 0.88550200000000001
	.quad	0x3fcf16b97fe8ee6c              # double 0.24288100000000001
	.quad	0x3fe642b302f72b45              # double 0.69564199999999998
	.quad	0x3feff574f722e1ac              # double 0.99871299999999996
	.quad	0x3feb59af9ebe9c88              # double 0.85469799999999996
	.quad	0x3fe01c9b41398634              # double 0.50349200000000005
	.quad	0x3fe2718a86d71f36              # double 0.57635999999999998
	.quad	0x3fc5be09bb6aa4ba              # double 0.16986200000000001
	.quad	0x3feaf9378ee28672              # double 0.84292199999999995
	.quad	0x3fecccbc05d52c17              # double 0.89999200000000001
	.quad	0x3fa9565c2d278078              # double 0.049487000000000003
	.quad	0x3fef98c7e28240b8              # double 0.98740000000000005
	.quad	0x3fe7635c5b4aa971              # double 0.73087899999999995
	.quad	0x3fe0578a2a90cd42              # double 0.51068599999999997
	.quad	0x3fd5bf162ae4b018              # double 0.33978799999999998
	.quad	0x3fd1bf5515054ac3              # double 0.27730300000000002
	.quad	0x3fd9c7820a30db6a              # double 0.40280199999999999
	.quad	0x3fe600baa582dbe8              # double 0.68758900000000001
	.quad	0x3fed6013660e51d2              # double 0.91797799999999996
	.quad	0x3fd035b91f70de8f              # double 0.25327899999999998
	.quad	0x3fca5f41aef6f8f0              # double 0.20603199999999999
	.quad	0x3feb27bf61aa3f03              # double 0.84860199999999997
	.quad	0x3fef9e5c0b999136              # double 0.98808099999999999
	.quad	0x3fef54a5df2239e7              # double 0.97908300000000003
	.quad	0x3fb7ac710cb295ea              # double 0.092475000000000001
	.quad	0x3fddc0ca600b0293              # double 0.46489200000000003
	.quad	0x3fe4258b3f63c31e              # double 0.629583
	.quad	0x3fe872c5197a2489              # double 0.76400999999999997
	.quad	0x3fe09eb2074ea8da              # double 0.51937199999999994
	.quad	0x3fcf2edfe75bc44c              # double 0.243618
	.quad	0x3fa60b2c83ec892b              # double 0.043054000000000002
	.quad	0x3fef2ec28b2a6b0e              # double 0.97445800000000005
	.quad	0x3feb8b545c78a6db              # double 0.86075800000000002
	.quad	0x3fd9b9c7368ad688              # double 0.40196399999999999
	.quad	0x3fe7958fb43d89ce              # double 0.73700699999999997
	.quad	0x3fd6d53cddd6e04c              # double 0.356765
	.quad	0x3fcf75d13d74d595              # double 0.245783
	.quad	0x3fda7214f0520d13              # double 0.413213
	.quad	0x3feb75a5332acfb7              # double 0.85811099999999996
	.quad	0x3fd574cd31769a91              # double 0.335254
	.quad	0x3feb6f60e0eb67c3              # double 0.85734600000000005
	.quad	0x3f95a250f840181e              # double 0.021127
	.quad	0x3fdf1b691212513b              # double 0.48604799999999998
	.quad	0x3fecbbff8a8f3a9b              # double 0.897949
	.quad	0x3fd95efa615a8deb              # double 0.396422
	.quad	0x3fdf68b9fdbd2fa1              # double 0.49076700000000001
	.quad	0x3fe386290eed02cd              # double 0.61012699999999997
	.quad	0x3fd1a1ad6451b930              # double 0.27549299999999999
	.quad	0x3feafec3547e0696              # double 0.84359899999999999
	.quad	0x3fea37eb28d8665e              # double 0.819326
	.quad	0x3f85afaf85942917              # double 0.010588999999999999
	.quad	0x3fe72af9a8cdea03              # double 0.72399599999999997
	.quad	0x3fd3f46aa087ca64              # double 0.31179299999999999
	.quad	0x3fb057e23f24d8fd              # double 0.063840999999999995
	.quad	0x3fbe8cef672b8844              # double 0.119338
	.quad	0x3fd0aaeafab53d64              # double 0.260432
	.quad	0x3fdb5a5332acfb76              # double 0.42738799999999999
	.quad	0x3fd972abef06b378              # double 0.39762399999999998
	.quad	0x3fe88b28522ea0fd              # double 0.76698699999999997
	.quad	0x3fde84e3ffef3908              # double 0.47686099999999998
	.quad	0x3fc216616b54e2b0              # double 0.14130799999999999
	.quad	0x3fcfe5c0b9991362              # double 0.249199
	.quad	0x3fec28b08dd1e53b              # double 0.87996700000000005
	.quad	0x3fe6b150dae3e6c5              # double 0.70914500000000003
	.quad	0x3fe4c156e264e486              # double 0.64860099999999998
	.quad	0x3f9857f3061c79b3              # double 0.023772999999999999
	.quad	0x3fbc650e779207d5              # double 0.110917
	.quad	0x3fef220ff540895d              # double 0.97290799999999999
	.quad	0x3fcb9af9ebe9c886              # double 0.215667
	.quad	0x3fdf113c68661ae7              # double 0.485427
	.quad	0x3fd98887229e9079              # double 0.39895799999999998
	.quad	0x3fdb450acc0bdcad              # double 0.426089
	.quad	0x3fe542eba27ae9ab              # double 0.66441899999999998
	.quad	0x3fdcc9795b35b0bc              # double 0.449797
	.quad	0x3fd4c7368ad68837              # double 0.32465899999999998
	.quad	0x3fe1407cc7d1bb49              # double 0.53912199999999999
	.quad	0x3fd17570c564f97f              # double 0.27279300000000001
	.quad	0x3fe04b8e086bdf4c              # double 0.50922299999999998
	.quad	0x3fa4eca686e7e62e              # double 0.040868000000000002
	.quad	0x3fc62d40aaeafab5              # double 0.17325599999999999
	.quad	0x3fd44f97edc7ef17              # double 0.31735799999999997
	.quad	0x3fd76edaa92e6213              # double 0.36614099999999999
	.quad	0x3fe6b79fa97e132b              # double 0.70991499999999996
	.quad	0x3fe56e675147f130              # double 0.66972699999999996
	.quad	0x3fde97d49d7ba66a              # double 0.47801700000000003
	.quad	0x3fca69f8c21e1d21              # double 0.20635899999999999
	.quad	0x3fb5f0e4da09cc32              # double 0.085707000000000005
	.quad	0x3fd769b5a63f9a4a              # double 0.36582700000000001
	.quad	0x3fb9f8e3ac0c62e5              # double 0.101454
	.quad	0x3fddf2f123c42a67              # double 0.46795300000000001
	.quad	0x3f8ed0f6273929ed              # double 0.015047
	.quad	0x3fb996312f4cf4a5              # double 0.099947999999999995
	.quad	0x3fe5dc8323358f2e              # double 0.683168
	.quad	0x3fe20ded288ce704              # double 0.56420000000000003
	.quad	0x3fe130574b407033              # double 0.53715100000000005
	.quad	0x3fe5d17a46173b86              # double 0.68182100000000001
	.quad	0x3fdf84c271fff79d              # double 0.49247800000000003
	.quad	0x3fe55931ca7d6734              # double 0.66713800000000001
	.quad	0x3fedb95e5aff2a17              # double 0.92887799999999998
	.quad	0x3fc00ee8d10f51ad              # double 0.12545500000000001
	.quad	0x3fe1a1c475e6362a              # double 0.55099699999999996
	.quad	0x3fd45ddd2ae8e1d6              # double 0.31822899999999998
	.quad	0x3fd5c6bce8533b10              # double 0.34025499999999997
	.quad	0x3fe0b163baba7b91              # double 0.52165399999999995
	.quad	0x3fdfa411c2a02321              # double 0.49438900000000002
	.quad	0x3fe1bbc4d22c881e              # double 0.55417099999999997
	.quad	0x3fe7e2a5e785b5b7              # double 0.746417
	.quad	0x3fba93f290abb44e              # double 0.10382
	.quad	0x3fd9460ed80a17b1              # double 0.394901
	.quad	0x3fdc6cce5f7403de              # double 0.44414100000000001
	.quad	0x3fd4523f67f4dbe0              # double 0.31752000000000002
	.quad	0x3feb23b7952d234f              # double 0.84811000000000003
	.quad	0x3fd46bb98c7e2824              # double 0.319075
	.quad	0x3fed7b71fbc5de9c              # double 0.92131899999999999
	.quad	0x3fe2e41700cd8559              # double 0.59034299999999995
	.quad	0x3fdc259e1f3a57eb              # double 0.43979600000000002
	.quad	0x3fec7965b20b8067              # double 0.88981900000000003
	.quad	0x3fe710cd423d9232              # double 0.72080100000000003
	.quad	0x3fd2c3504c48adef              # double 0.29317100000000001
	.quad	0x3fe8bdaf8df7a4e8              # double 0.77315500000000004
	.quad	0x3fc17b95a294141f              # double 0.13658400000000001
	.quad	0x3fe2c0fa9c12f09e              # double 0.58605700000000005
	.quad	0x3febd0225742dcf4              # double 0.86915699999999995
	.quad	0x3fd7c36113404ea5              # double 0.37130000000000002
	.quad	0x3f8b9170d62bf120              # double 0.013461000000000001
	.quad	0x3fd97ee0b0af5fd4              # double 0.39836899999999997
	.quad	0x3fe43b7d84901d19              # double 0.63226199999999999
	.quad	0x3fe94cf28c79f666              # double 0.79064299999999998
	.quad	0x3fd31f8a0902de01              # double 0.29880000000000001
	.quad	0x3fec647fdc5931ca              # double 0.88726799999999995
	.quad	0x3fefcdf8b1572581              # double 0.99389300000000002
	.quad	0x3fed57f3061c79b3              # double 0.91698599999999997
	.quad	0x3fd3f861a60d4563              # double 0.31203500000000001
	.quad	0x3fcbd61f5be5d9e4              # double 0.217472
	.quad	0x3fb1845dc8323359              # double 0.068426000000000001
	.quad	0x3fd5859c8c9320da              # double 0.33628000000000002
	.quad	0x3fc04c6a3bddfca0              # double 0.127332
	.quad	0x3fe9145b6c3760bf              # double 0.78373499999999996
	.quad	0x3fdcee2003ab862b              # double 0.45203399999999999
	.quad	0x3febc14a4d2b2bfe              # double 0.86734500000000003
	.quad	0x3fed897a67a52ac7              # double 0.92303199999999996
	.quad	0x3fa13293d102bc73              # double 0.033589000000000001
	.quad	0x3feb128bf3bea91e              # double 0.84601400000000004
	.quad	0x3feb69835158b828              # double 0.85663
	.quad	0x3fd7a265f0f5a101              # double 0.36928699999999998
	.quad	0x3fd7e1198aeb80ed              # double 0.373114
	.quad	0x3fd84e0114d2f5dc              # double 0.37976100000000002
	.quad	0x3fca05814940bbb2              # double 0.203293
	.quad	0x3fe308bfc2224edf              # double 0.59481799999999996
	.quad	0x3fe317720c8cd63d              # double 0.59661200000000003
	.quad	0x3fcac660a2014728              # double 0.209179
	.quad	0x3fe9fcf3dc054ef4              # double 0.81212799999999996
	.quad	0x3fdf1e364bec679d              # double 0.48621900000000001
	.quad	0x3fdeb54195cc857f              # double 0.47981299999999999
	.quad	0x3fb9510d38cda6e7              # double 0.098892999999999995
	.quad	0x3fef6473471f7942              # double 0.981012
	.quad	0x3fd136e71cda2b5a              # double 0.26897599999999999
	.quad	0x3fef05f28848387e              # double 0.969476
	.quad	0x3fe71d2e0e30446b              # double 0.72231199999999995
	.quad	0x3fd561309c7ffde7              # double 0.33405699999999999
	.quad	0x3fd30c62e4d1a650              # double 0.29763099999999998
	.quad	0x3fc665e02ea960b7              # double 0.174984
	.quad	0x3fec4cc46950fc72              # double 0.88437100000000002
	.quad	0x3fe1521bc126a65d              # double 0.541273
	.quad	0x3fe33c42a66dbd73              # double 0.60110600000000003
	.quad	0x3f9f0fe047d3d428              # double 0.030334
	.quad	0x3fd962b27cbf6e3f              # double 0.39664899999999997
	.quad	0x3fbe6c2acb85a4f0              # double 0.118838
	.quad	0x3fce949a5657fb6a              # double 0.23891000000000001
	.quad	0x3fa8d349be8ff328              # double 0.048487000000000002
	.quad	0x3fbe6fa3fcc9ea9a              # double 0.118891
	.quad	0x3fe29c0229a5ebb7              # double 0.58154399999999995
	.quad	0x3fdc545846e8f29d              # double 0.44264799999999999
	.quad	0x3fdbf51ac9afe1da              # double 0.43683499999999997
	.quad	0x3fdc0ca1cef240fb              # double 0.43827100000000002
	.quad	0x3fec8a99b6f5caf3              # double 0.89191900000000002
	.quad	0x3fe6a5d8d79d0a67              # double 0.70774499999999996
	.quad	0x3fa93a4f8726d04e              # double 0.049272999999999997
	.quad	0x3fda3dccea28fe26              # double 0.410022
	.quad	0x3fe1e6c093d96638              # double 0.55941799999999997
	.quad	0x3fcba860dcb9a9da              # double 0.21607599999999999
	.quad	0x3fee3641700cd856              # double 0.94412300000000005
	.quad	0x3fd163e8dda48b65              # double 0.27172299999999999
	.quad	0x3fe21df1172ef0ae              # double 0.56615499999999996
	.quad	0x3f8f090f733a8a40              # double 0.015154000000000001
	.quad	0x3fc1cb70ac3a860e              # double 0.13902100000000001
	.quad	0x3fbb48c2e770bd01              # double 0.10657899999999999
	.quad	0x3fc07980f55de58e              # double 0.12870799999999999
	.quad	0x3fdfa57646ae3a3b              # double 0.49447400000000002
	.quad	0x3fbbac929aa1d756              # double 0.108102
	.quad	0x3fe9147064ece9a3              # double 0.78374500000000002
	.quad	0x3fc7d21ff2e48e8a              # double 0.18609999999999999
	.quad	0x3f99081c2e33eff2              # double 0.024445000000000001
	.quad	0x3fef81882adc4c9d              # double 0.98456200000000004
	.quad	0x3fe231d92b7fe08b              # double 0.56858500000000001
	.quad	0x3fc83aafff36ac64              # double 0.18929099999999999
	.quad	0x3fe1021d10b1feeb              # double 0.53150799999999998
	.quad	0x3fe8cc814d72799a              # double 0.77496399999999999
	.quad	0x3feb9e646f156191              # double 0.86308499999999999
	.quad	0x3fd8d27807789a46              # double 0.38784600000000002
	.quad	0x3fd69f7b5aea3162              # double 0.35348400000000002
	.quad	0x3fd5a8c154c985f0              # double 0.33842499999999998
	.quad	0x3fe329478c868ba0              # double 0.59878900000000002
	.quad	0x3fd2bbf93ff25e57              # double 0.29272300000000001
	.quad	0x3fed04ab606b7aa2              # double 0.90681999999999996
	.quad	0x3fe5c083126e978d              # double 0.67974999999999997
	.quad	0x3fe8f71eafee6fb5              # double 0.78016600000000003
	.quad	0x3fc92f33ca31e7da              # double 0.19675300000000001
	.quad	0x3fde432ca57a786c              # double 0.47284999999999999
	.quad	0x3fcec54bcf0b6b6e              # double 0.240396
	.quad	0x3fd2d1633482be8c              # double 0.29403000000000001
	.quad	0x3fd8b8ed1bf7ad4b              # double 0.38628699999999999
	.quad	0x3fb6f5989df1172f              # double 0.089685000000000001
	.quad	0x3fd0f4d7add15f03              # double 0.26494400000000001
	.quad	0x3fefe147ae147ae1              # double 0.99624999999999996
	.quad	0x3fd193d96638433d              # double 0.27464899999999998
	.quad	0x3febbe40420f6f09              # double 0.86697400000000002
	.quad	0x3fd0675ddd2ae8e2              # double 0.25630900000000001
	.quad	0x3fb58e10cf5b1c86              # double 0.084198999999999996
	.quad	0x3fc4ab81f969e3c9              # double 0.16148399999999999
	.quad	0x3fe7564302b40f67              # double 0.72928000000000004
	.quad	0x3fe1d1aa821f2991              # double 0.55684400000000001
	.quad	0x3fd2fcbd556084a5              # double 0.296676
	.quad	0x3fadb63d3e4ef028              # double 0.058030999999999999
	.quad	0x3fc2dd7a99fa11a9              # double 0.14738399999999999
	.quad	0x3fe3e76a7264a16a              # double 0.62199899999999997
	.quad	0x3fc5774aba387592              # double 0.16770299999999999
	.quad	0x3fda6b0d9513f8db              # double 0.41278399999999998
	.quad	0x3fed1b52007dd441              # double 0.90958499999999998
	.quad	0x3fe8da122fad6cb5              # double 0.77661999999999998
	.quad	0x3fe61e14bdfd2631              # double 0.69117200000000001
	.quad	0x3fc7e931876188b1              # double 0.186804
	.quad	0x3fde6013660e51d2              # double 0.47461399999999998
	.quad	0x3fea9f9acffa7eb7              # double 0.83198300000000003
	.quad	0x3fc78f7121ab4b73              # double 0.18406500000000001
	.quad	0x3fea469728a61177              # double 0.82111699999999999
	.quad	0x3fdaef8055fbb518              # double 0.42086800000000002
	.quad	0x3fe8f35c182ecaef              # double 0.77970700000000004
	.quad	0x3f9ee136e71cda2b              # double 0.030155999999999999
	.quad	0x3fd2f8c21e1d2179              # double 0.296433
	.quad	0x3fbe7d1351159c49              # double 0.11909599999999999
	.quad	0x3feab2ca57a786c2              # double 0.83432499999999998
	.quad	0x3fe9dc1e7967caea              # double 0.80811999999999995
	.quad	0x3fc21344806290ef              # double 0.14121300000000001
	.quad	0x3fee1cfdd2285660              # double 0.94103899999999995
	.quad	0x3fe67036c9c0a8d2              # double 0.70119799999999999
	.quad	0x3fec91f0c34c1a8b              # double 0.89281500000000003
	.quad	0x3fc710dbf0563ed1              # double 0.180202
	.quad	0x3faa6d8b1dd5d3dd              # double 0.051617000000000003
	.quad	0x3fe2d66f0cfe1544              # double 0.58867599999999998
	.quad	0x3fe3e2c343b70ef5              # double 0.62143099999999996
	.quad	0x3fee99cbee807bbb              # double 0.95627399999999996
	.quad	0x3fdead70e6f2e8c0              # double 0.47933599999999998
	.quad	0x3fef144cbe1eb420              # double 0.97122799999999998
	.quad	0x3fe09e060fe47992              # double 0.51929000000000003
	.quad	0x3fdbe718a86d71f3              # double 0.43597999999999998
	.quad	0x3fbfac929aa1d756              # double 0.123727
	.quad	0x3fd9f9b13165d399              # double 0.40586499999999998
	.quad	0x3f850ebaade657b8              # double 0.010281999999999999
	.quad	0x3feeddb9841aac54              # double 0.96456600000000003
	.quad	0x3fecb126e978d4fe              # double 0.89662500000000001
	.quad	0x3fe86978d4fdf3b6              # double 0.76287499999999997
	.quad	0x3feceb6177ea1c69              # double 0.90373300000000001
	.quad	0x3fe163fbbd7b2032              # double 0.54345500000000002
	.quad	0x3fdd045baf533f42              # double 0.45339099999999999
	.quad	0x3fec2135daad6020              # double 0.879054
	.quad	0x3fdd0789613d31ba              # double 0.45358500000000002
	.quad	0x3fef873365881a15              # double 0.98525399999999996
	.quad	0x3fed525892684cf0              # double 0.91630199999999995
	.quad	0x3fe0d22c881e4713              # double 0.52565600000000001
	.quad	0x3feaa63d816aceab              # double 0.83279300000000001
	.quad	0x3fe6fa743a647fdc              # double 0.71807299999999996
	.quad	0x3fd2b517a46173b8              # double 0.29230299999999998
	.quad	0x3fcb57a355043e53              # double 0.213612
	.quad	0x3feb7401c4fc1df3              # double 0.85791099999999998
	.quad	0x3fe2bf39d1b2e59b              # double 0.585843
	.quad	0x3fe8f5ba2be0589b              # double 0.77999600000000002
	.quad	0x3fc4319c5a3e39f7              # double 0.15776399999999999
	.quad	0x3fadc52e72da1230              # double 0.058145000000000002
	.quad	0x3fda115592d98bf8              # double 0.407308
	.quad	0x3feec5c5718eb895              # double 0.96164199999999999
	.quad	0x3fcab3f63c31df76              # double 0.208617
	.quad	0x3fe6c3eb7cbb3c82              # double 0.71141600000000005
	.quad	0x3fcc8f42fe82517e              # double 0.22312199999999999
	.quad	0x3fde2d7b634dad32              # double 0.471526
	.quad	0x3fd8c8259e1f3a58              # double 0.387216
	.quad	0x3fd5cf63800218df              # double 0.340783
	.quad	0x3fc7fda4052d666b              # double 0.18742800000000001
	.quad	0x3fe6514c22ee4192              # double 0.69742400000000004
	.quad	0x3fe146173b85e80c              # double 0.53980600000000001
	.quad	0x3fd60d9513f8db49              # double 0.34457900000000002
	.quad	0x3fe1097635e7429a              # double 0.53240500000000002
	.quad	0x3fdee525892684cf              # double 0.482736
	.quad	0x3fc181cf7878b7a2              # double 0.13677400000000001
	.quad	0x3fed5e8d5410f94d              # double 0.91779200000000005
	.quad	0x3fd5dd97f62b6ae8              # double 0.34165000000000001
	.quad	0x3fd27ca643cc07ab              # double 0.288858
	.quad	0x3fdf7f62b6ae7d56              # double 0.49214999999999998
	.quad	0x3fcee29f9ce8d973              # double 0.24129100000000001
	.quad	0x3fac968943e10060              # double 0.055835999999999997
	.quad	0x3fe2c45aa2e3c537              # double 0.58646900000000002
	.quad	0x3f812fd32c625e9a              # double 0.0083920000000000002
	.quad	0x3fcef944241c3efb              # double 0.241982
	.quad	0x3fe787c200c0f020              # double 0.73532200000000003
	.quad	0x3fc30856e696a26e              # double 0.14869199999999999
	.quad	0x3fb1797cc39ffd61              # double 0.068260000000000001
	.quad	0x3feab6933a0407cc              # double 0.83478699999999994
	.quad	0x3feddebd9018e758              # double 0.93344000000000005
	.quad	0x3facbfb15b573eab              # double 0.056149999999999999
	.quad	0x3fc2bec679cc74b8              # double 0.14644699999999999
	.quad	0x3fde003ab862b27d              # double 0.46876400000000001
	.quad	0x3fe973bc903ea705              # double 0.79537800000000003
	.quad	0x3fe2d23f67f4dbe0              # double 0.58816500000000005
	.quad	0x3fd3d5e4a3832767              # double 0.30992999999999998
	.quad	0x3fea06c226809d49              # double 0.81332499999999996
	.quad	0x3fe5c0aaeafab53d              # double 0.67976899999999996
	.quad	0x3fd97dc37a3db3c0              # double 0.39830100000000002
	.quad	0x3fda7143393ab431              # double 0.413163
	.quad	0x3fd40713f077ccc0              # double 0.31293199999999999
	.quad	0x3f961d4306e5cd4f              # double 0.021596000000000001
	.quad	0x3fe34bba12b5e52a              # double 0.60299400000000003
	.quad	0x3fe7c3dab5c39bcc              # double 0.74265800000000004
	.quad	0x3fedbdd334c5da6a              # double 0.92942199999999997
	.quad	0x3fc34bb5e0f7fcfc              # double 0.15074799999999999
	.quad	0x3fe187ca643cc07b              # double 0.54782600000000004
	.quad	0x3fe279a49c2c1b11              # double 0.577349
	.quad	0x3fe65bfad2999568              # double 0.69872800000000002
	.quad	0x3fc563779e9d0e99              # double 0.167098
	.quad	0x3fe396f6512a94ff              # double 0.612178
	.quad	0x3f86a4873365881a              # double 0.011056
	.quad	0x3fedcb44a1f08030              # double 0.93106299999999997
	.quad	0x3fe3dd1a21ea3593              # double 0.62073999999999996
	.quad	0x3fec80b45ae5ffa4              # double 0.89071100000000003
	.quad	0x3fe6668c26139000              # double 0.70001800000000003
	.quad	0x3feb1bef49cf56eb              # double 0.84716000000000002
	.quad	0x3fbddb0142f61ed6              # double 0.116623
	.quad	0x3fe1cf8b588e368f              # double 0.556585
	.quad	0x3fe6f559b3d07c85              # double 0.71745000000000003
	.quad	0x3fe3082278d0cc36              # double 0.59474300000000002
	.quad	0x3fe51e14bdfd2631              # double 0.65992200000000001
	.quad	0x3fe896d6dc1a47aa              # double 0.76841300000000001
	.quad	0x3fe118a009f62307              # double 0.53425599999999995
	.quad	0x3fd8e3ef284167a9              # double 0.38891199999999998
	.quad	0x3fe32aa19439de48              # double 0.59895399999999999
	.quad	0x3fce4230fcf80dc3              # double 0.23639499999999999
	.quad	0x3f920791c4b90215              # double 0.017607000000000001
	.quad	0x3fba6a875d56f32c              # double 0.103188
	.quad	0x3fe3f90fb65668c2              # double 0.62415299999999996
	.quad	0x3fdfa04d12018a44              # double 0.49415900000000001
	.quad	0x3fe1f2606fac6046              # double 0.56083700000000003
	.quad	0x3fdf8d3f1843c3a4              # double 0.49299599999999999
	.quad	0x3fe74b1465e89225              # double 0.72791499999999998
	.quad	0x3fee6e49f51697f2              # double 0.950963
	.quad	0x3fe26aa087ca643d              # double 0.57551600000000003
	.quad	0x3fa209edbf8b9baa              # double 0.035231999999999999
	.quad	0x3fad9791819d2392              # double 0.057797000000000001
	.quad	0x3feb7eeb2d0a2446              # double 0.85924299999999998
	.quad	0x3fd6bcdfefbf401c              # double 0.35527799999999998
	.quad	0x3fc2445aa2e3c537              # double 0.142711
	.quad	0x3fe2bb57c4e2f380              # double 0.58536900000000003
	.quad	0x3fc31ae2da554b8c              # double 0.149258
	.quad	0x3f706cca2db61bb0              # double 0.0040099999999999997
	.quad	0x3fdc1ec918e325d5              # double 0.43937900000000002
	.quad	0x3fd8bb7f9d6f1130              # double 0.38644400000000001
	.quad	0x3febc9e8815e3971              # double 0.86839699999999997
	.quad	0x3fecd710880d801b              # double 0.90125299999999997
	.quad	0x3fe8527a20578e5c              # double 0.76006799999999996
	.quad	0x3fbc4028e4fb97bb              # double 0.11035399999999999
	.quad	0x3fd04dec1c1d6cf8              # double 0.25475599999999998
	.quad	0x3feee1d4306e5cd5              # double 0.965067
	.quad	0x3fe83df090f733a9              # double 0.75756100000000004
	.quad	0x3fd76134ce3de615              # double 0.36530800000000002
	.quad	0x3f943a2163fdd65a              # double 0.019753
	.quad	0x3fe67ad4b2745bf2              # double 0.70249399999999995
	.quad	0x3fda0867ad8e4324              # double 0.40676299999999999
	.quad	0x3fe57243137b0707              # double 0.67019799999999996
	.quad	0x3fe4866e43aa79bc              # double 0.64141000000000004
	.quad	0x3fde346dc5d63886              # double 0.47194999999999998
	.quad	0x3fd118266772d5e0              # double 0.26709899999999998
	.quad	0x3fe8e481f53825e1              # double 0.77789399999999997
	.quad	0x3fdf528ae74f2f12              # double 0.48941299999999999
	.quad	0x3fd8e5fb71fbc5df              # double 0.38903700000000002
	.quad	0x3f71b3f20a73f749              # double 0.0043220000000000003
	.quad	0x3fd7ad6cb5350093              # double 0.36996000000000001
	.quad	0x3fe8e10060780fdc              # double 0.77746599999999999
	.quad	0x3fcf5a187a4a48f9              # double 0.24493699999999999
	.quad	0x3fe04ffc9795b35b              # double 0.50976399999999999
	.quad	0x3fc6fcf80dc33722              # double 0.179595
	.quad	0x3fbaef1bac2df0d4              # double 0.105211
	.quad	0x3fd21ef30a4e379b              # double 0.28313899999999997
	.quad	0x3fe04258d5842b73              # double 0.50809899999999997
	.quad	0x3fb42de00d1b7176              # double 0.078825000000000006
	.quad	0x3fe4cf15e7c8d196              # double 0.65027900000000005
	.quad	0x3fd5852b4d8ba40e              # double 0.33625300000000002
	.quad	0x3fec5ee34fc610f1              # double 0.88658300000000001
	.quad	0x3fe2b005814940bc              # double 0.58398700000000003
	.quad	0x3fad6a7ac81d3aa3              # double 0.057452999999999997
	.quad	0x3fb5b3d07c84b5dd              # double 0.084775000000000003
	.quad	0x3fe013682730c671              # double 0.50236899999999995
	.quad	0x3fd3d0e560418937              # double 0.30962499999999998
	.quad	0x3fc025742dcf4624              # double 0.12614300000000001
	.quad	0x3fd06d1e108c3f3e              # double 0.25666
	.quad	0x3fd57ecbb7f9d6f1              # double 0.335864
	.quad	0x3fdba593a2df9379              # double 0.431981
	.quad	0x3fdbdfb9389b5200              # double 0.43552999999999997
	.quad	0x3fa83211cb039ef1              # double 0.047257
	.quad	0x3fc371b8aa00192a              # double 0.15190799999999999
	.quad	0x3fe5abb23571d1d4              # double 0.67720899999999995
	.quad	0x3feadd6e04c05921              # double 0.83953
	.quad	0x3fc64fa05143bf72              # double 0.17430499999999999
	.quad	0x3fed93a0c6b484d7              # double 0.92427099999999995
	.quad	0x3fc367125dd095af              # double 0.151583
	.quad	0x3fe136cbd987c632              # double 0.53793899999999994
	.quad	0x3fdf6a50d6b228dd              # double 0.49086400000000002
	.quad	0x3fb981f10667f90e              # double 0.099639000000000005
	.quad	0x3fa38c111ada76d9              # double 0.038177999999999997
	.quad	0x3fb750d2806af46b              # double 0.091077000000000005
	.quad	0x3fb01eff9f87f024              # double 0.062973000000000001
	.quad	0x3fe2d8c08b75ea68              # double 0.58895900000000001
	.quad	0x3fce08c8259e1f3a              # double 0.23464299999999999
	.quad	0x3fc216c61522a6f4              # double 0.14132
	.quad	0x3fe5e8900c521dda              # double 0.684639
	.quad	0x3fcb952d234eb9a1              # double 0.21548999999999999
	.quad	0x3fb2e924f227d029              # double 0.073870000000000005
	.quad	0x3fe76d84d338f798              # double 0.73211899999999996
	.quad	0x3fc5abe27179bfdf              # double 0.16930799999999999
	.quad	0x3fc20d887ebf22c0              # double 0.141038
	.quad	0x3fefbfcc9ea9a3d3              # double 0.99216300000000001
	.quad	0x3fe016ce789e774f              # double 0.50278400000000001
	.quad	0x3fe79f2990f301eb              # double 0.73817900000000003
	.quad	0x3fe33708aac96cc6              # double 0.600468
	.quad	0x3fd168986fcdee35              # double 0.272009
	.quad	0x3fe705814940bbb2              # double 0.71942200000000001
	.quad	0x3fe844028e4fb97c              # double 0.75830200000000003
	.quad	0x3fe830d306a2b170              # double 0.75595999999999997
	.quad	0x3fe70c49ba5e353f              # double 0.72024999999999995
	.quad	0x3fef1b52007dd441              # double 0.97208499999999997
	.quad	0x3fa93dd97f62b6ae              # double 0.049299999999999997
	.quad	0x3fecdd031055b899              # double 0.90197899999999998
	.quad	0x3fe2c27418d6909b              # double 0.58623700000000001
	.quad	0x3fee46d612c6ac21              # double 0.94614699999999996
	.quad	0x3fed8bfa0945f9df              # double 0.92333699999999996
	.quad	0x3fa5c0b9991361dd              # double 0.042486000000000003
	.quad	0x3fd7f4d7add15f03              # double 0.37431900000000001
	.quad	0x3fd8d666a98244e9              # double 0.38808599999999999
	.quad	0x3feb213a0c6b484d              # double 0.84780599999999995
	.quad	0x3fd846bf01322f27              # double 0.37931799999999999
	.quad	0x3fecd5970b49e01e              # double 0.90107300000000001
	.quad	0x3fc39cbee807bbb6              # double 0.153221
	.quad	0x3fe594ee392e1ef7              # double 0.67442999999999997
	.quad	0x3fcb0b28522ea0fd              # double 0.21127799999999999
	.quad	0x3fc77fe8ee6b8306              # double 0.183591
	.quad	0x3fd3543f1c75818c              # double 0.30201699999999998
	.quad	0x3fec3f359ff4fd6d              # double 0.88271599999999995
	.quad	0x3facad9ad85dfa87              # double 0.056011999999999999
	.quad	0x3f95432873bc903f              # double 0.020764000000000001
	.quad	0x3fdb2b1b36bd2b6f              # double 0.42450599999999999
	.quad	0x3fe8830e3cd9a522              # double 0.76599799999999996
	.quad	0x3fdc154434e3369c              # double 0.43879800000000002
	.quad	0x3f747f13059641f6              # double 0.0050039999999999998
	.quad	0x3fa4e69f05ea24cc              # double 0.040821999999999997
	.quad	0x3fa5f88fc9363f57              # double 0.042911999999999999
	.quad	0x3fc4f67b1c0010c7              # double 0.163772
	.quad	0x3fe64e831ad2135e              # double 0.69708400000000004
	.quad	0x3fd76bdb1a6d6990              # double 0.36595800000000001
	.quad	0x3fdcf3dc054ef45a              # double 0.45238400000000001
	.quad	0x3fdd37bd05af6c6a              # double 0.45652700000000002
	.quad	0x3fd3966be7afa722              # double 0.30605599999999999
	.quad	0x3fe5ec2acb85a4f0              # double 0.68507899999999999
	.quad	0x3fef26c5d206c871              # double 0.97348299999999998
	.quad	0x3feaee6d9be4cd75              # double 0.84160500000000005
	.quad	0x3fe0cbee807bbb62              # double 0.52489399999999997
	.quad	0x3fd99988d2a1f8e4              # double 0.39999600000000002
	.quad	0x3fd0fc19c17225b7              # double 0.26538699999999998
	.quad	0x3f984db9c7368ad7              # double 0.023734000000000002
	.quad	0x3fd690abb44e50c6              # double 0.35258
	.quad	0x3f9d6cb5350092cd              # double 0.028735
	.quad	0x3fec5f88fc9363f5              # double 0.88666199999999995
	.quad	0x3fca0b34e7685986              # double 0.20346700000000001
	.quad	0x3fd2acabc5154867              # double 0.29178900000000002
	.quad	0x3fc9d084e831ad21              # double 0.20167599999999999
	.quad	0x3fc3eaab042528ae              # double 0.15559899999999999
	.quad	0x3fc57b0f6ad70e6f              # double 0.16781799999999999
	.quad	0x3fe7be1a8262456f              # double 0.74195599999999995
	.quad	0x3f9e5109070fbeba              # double 0.029606
	.quad	0x3feb8b30b5aa7158              # double 0.86074099999999998
	.quad	0x3fa4af709b738e6d              # double 0.040400999999999999
	.quad	0x3fe0bf2d3c792d13              # double 0.52333700000000005
	.quad	0x3fe12a4b9884c6a4              # double 0.53641300000000003
	.quad	0x3fe24664d3bf2f55              # double 0.57109299999999996
	.quad	0x3fee02d7b634dad3              # double 0.93784699999999999
	.quad	0x3fc61869835158b8              # double 0.17262
	.quad	0x3fd8b6a619da9c99              # double 0.38614799999999999
	.quad	0x3fdadb877ab32485              # double 0.41964899999999999
	.quad	0x3fe97e996312f4cf              # double 0.79670399999999997
	.quad	0x3fa0eb8950763a19              # double 0.033047
	.quad	0x3fe3a0b1bbcf4e87              # double 0.61336599999999997
	.quad	0x3fd095464dc22ab2              # double 0.25911099999999998
	.quad	0x3f94d3bf2f555821              # double 0.020338999999999999
	.quad	0x3fe69676640a6b94              # double 0.70586700000000002
	.quad	0x3fd636b4c7f34938              # double 0.34708899999999998
	.quad	0x3feb8b417ca2120e              # double 0.86074899999999999
	.quad	0x3fecafbc1acde1a0              # double 0.89645200000000002
	.quad	0x3febe24dd2f1a9fc              # double 0.87137500000000001
	.quad	0x3fe25fa43fe5c91d              # double 0.57417499999999999
	.quad	0x3fe69b994e1a3f46              # double 0.70649399999999996
	.quad	0x3fd261a60d4562e1              # double 0.28721000000000002
	.quad	0x3fd538327674d163              # double 0.33155499999999999
	.quad	0x3feb5fe111276fb1              # double 0.85545400000000005
	.quad	0x3fed56a7ac81d3aa              # double 0.91682799999999998
	.quad	0x3fcc9307af20ea5b              # double 0.22323699999999999
	.quad	0x3fc3e77d523b3637              # double 0.155502
	.quad	0x3fad3996fa82e87d              # double 0.057079999999999999
	.quad	0x3fbee74f2f123c43              # double 0.120717
	.quad	0x3febf98fa376922e              # double 0.87421400000000005
	.quad	0x3fe0d55e6bc621b8              # double 0.52604600000000001
	.quad	0x3fb95f02c4d65e46              # double 0.099105999999999999
	.quad	0x3fe16a22b3892ee8              # double 0.54420599999999997
	.quad	0x3fe53b85e80bed74              # double 0.66351599999999999
	.quad	0x3f59ce075f6fd220              # double 0.001575
	.quad	0x3fc3a2be0589acbd              # double 0.15340400000000001
	.quad	0x3fd638b47c73eee5              # double 0.34721099999999999
	.quad	0x3fdf7bfe7e1fc090              # double 0.49194300000000002
	.quad	0x3f9ba6aca7935760              # double 0.027002999999999999
	.quad	0x3fdd29e0a41a261c              # double 0.455681
	.quad	0x3fd4533f42352eb6              # double 0.317581
	.quad	0x3fd0aa25d8d79d0a              # double 0.26038499999999998
	.quad	0x3fc364e8b7e4de3c              # double 0.15151700000000001
	.quad	0x3fb5057d1782d384              # double 0.082114999999999994
	.quad	0x3fc4cf4a558ea7ce              # double 0.162576
	.quad	0x3fe2e8e60807357e              # double 0.59092999999999996
	.quad	0x3fc4ae642bf9830e              # double 0.16157199999999999
	.quad	0x3feee5710880d802              # double 0.96550800000000003
	.quad	0x3fea1b584b1ab085              # double 0.81583799999999995
	.quad	0x3fec9a459103c8e2              # double 0.89383199999999996
	.quad	0x3fe691b3f20a73f7              # double 0.70528599999999997
	.quad	0x3fbc3dbc23315d70              # double 0.110317
	.quad	0x3fc863305100a394              # double 0.190527
	.quad	0x3f8d09e12a51e322              # double 0.014179000000000001
	.quad	0x3fd808a265f0f5a1              # double 0.375527
	.quad	0x3fcbd10b1feeb2d1              # double 0.21731700000000001
	.quad	0x3fe03417ca2120e2              # double 0.506359
	.quad	0x3fe8a25d8d79d0a6              # double 0.76981999999999995
	.quad	0x3fef90e66cb10343              # double 0.98643800000000003
	.quad	0x3fec80713f077ccc              # double 0.89067899999999999
	.quad	0x3fedcd7cf5f4e443              # double 0.931334
	.quad	0x3fe81335d249e450              # double 0.75234500000000004
	.quad	0x3fde97353b4b2fa9              # double 0.47797899999999999
	.quad	0x3fd1f51266341180              # double 0.28058300000000003
	.quad	0x3fc1438d1d8a5482              # double 0.13487399999999999
	.quad	0x3febbb213e3e2930              # double 0.86659299999999995
	.quad	0x3fd704a72ead9275              # double 0.35965900000000001
	.quad	0x3fe9d1c7de5082cf              # double 0.80685799999999996
	.quad	0x3fe741c3efae7925              # double 0.72677800000000004
	.quad	0x3fed3df090f733a9              # double 0.91381100000000004
	.quad	0x3fd6b1704ff4341a              # double 0.35458000000000001
	.quad	0x3fdd7a13c254a3c6              # double 0.46057599999999999
	.quad	0x3fb0049667b5f1bf              # double 0.062570000000000001
	.quad	0x3fa714983d790753              # double 0.045079000000000001
	.quad	0x3fcf15b573eab368              # double 0.24285000000000001
	.quad	0x3fec6d3f9e7b80aa              # double 0.88833600000000001
	.quad	0x3fd68a7a41e57d9e              # double 0.35220200000000002
	.quad	0x3fcfb00bcbe61d00              # double 0.24756
	.quad	0x3fba014727dcbddc              # double 0.10158200000000001
	.quad	0x3fe181cd5f99c38b              # double 0.547095
	.quad	0x3fe3d0331e3a7daa              # double 0.61916499999999997
	.quad	0x3fc4e935b91f70df              # double 0.16336700000000001
	.quad	0x3fead7a786c22681              # double 0.83882500000000004
	.quad	0x3fefa12513b5bf6a              # double 0.98842099999999999
	.quad	0x3fef026aa8eb4635              # double 0.96904500000000004
	.quad	0x3fe669ab29e4d5d8              # double 0.70039899999999999
	.quad	0x3fd41a6937d1fe65              # double 0.314112
	.quad	0x3fe6ab063e07a28c              # double 0.70837700000000003
	.quad	0x3fec0e757928e0ca              # double 0.87676500000000002
	.quad	0x3fd801e68a0d349c              # double 0.375116
	.quad	0x3fe0869a4df47f99              # double 0.51643099999999997
	.quad	0x3fda1c53f39d1b2e              # double 0.40797899999999998
	.quad	0x3fc31de69ad42c3d              # double 0.14935000000000001
	.quad	0x3fe70e38a7e73a36              # double 0.72048599999999996
	.quad	0x3fe8f0e2c12ad81b              # double 0.77940500000000001
	.quad	0x3fe007bdcf0307f2              # double 0.50094499999999997
	.quad	0x3fa2324c8366516e              # double 0.035540000000000002
	.quad	0x3fe03bc903ea704c              # double 0.50729800000000003
	.quad	0x3fe99f81a5870da6              # double 0.80072100000000002
	.quad	0x3fe8fa355043e532              # double 0.78054299999999999
	.quad	0x3fd5944ed6fda837              # double 0.337177
	.quad	0x3febb60285ec3dab              # double 0.86596799999999996
	.quad	0x3fc8647778dd6170              # double 0.19056600000000001
	.quad	0x3fa54801f75104d5              # double 0.041564999999999998
	.quad	0x3feca29e90795f67              # double 0.89485099999999995
	.quad	0x3fdb76d117b5286b              # double 0.42912699999999998
	.quad	0x3fbff4dbdf8f4730              # double 0.12483
	.quad	0x3fefb4a2339c0ebf              # double 0.99080000000000001
	.quad	0x3fe8f449129888f8              # double 0.77981999999999996
	.quad	0x3fd862c77574f723              # double 0.38102900000000001
	.quad	0x3fc72367e414e7ef              # double 0.18076800000000001
	.quad	0x3fe62550870110a1              # double 0.69205499999999998
	.quad	0x3fe10b1572580c31              # double 0.53260300000000005
	.quad	0x3fe342c3c9eecbfb              # double 0.60189999999999999
	.quad	0x3fee77dd872f33ca              # double 0.95213199999999998
	.quad	0x3fee100a393ee5ef              # double 0.93945800000000002
	.quad	0x3feba337a80cf9e4              # double 0.86367400000000005
	.quad	0x3fc65b078d92fb1a              # double 0.174653
	.quad	0x3fd966b6177ea1c7              # double 0.39689400000000002
	.quad	0x3f97cbb3c81908e6              # double 0.023238000000000002
	.quad	0x3fd499e94ab1d4fa              # double 0.32189400000000001
	.quad	0x3fc1d29dc725c3df              # double 0.13924
	.quad	0x3fe7596851223183              # double 0.72966399999999998
	.quad	0x3fd43b14a90470a8              # double 0.316106
	.quad	0x3fe594b7b28954a8              # double 0.674404
	.quad	0x3fdde0e30446b69e              # double 0.46685100000000002
	.quad	0x3fc5f034b0e1b4bb              # double 0.17139299999999999
	.quad	0x3fdec6c97d8cf399              # double 0.480883
	.quad	0x3fd7f1c75818c5ca              # double 0.37413200000000002
	.quad	0x3febebb1290257c9              # double 0.87252099999999999
	.quad	0x3fead55c52e72da1              # double 0.83854499999999998
	.quad	0x3fec818e757928e1              # double 0.89081500000000002
	.quad	0x3fc4c3fc43b2dd37              # double 0.16223099999999999
	.quad	0x3fa2c6ef3d3a1d32              # double 0.036673999999999998
	.quad	0x3fea6b8b69552e30              # double 0.82562800000000003
	.quad	0x3fc7e74299d883ba              # double 0.18674499999999999
	.quad	0x3fb892bc2fc69729              # double 0.095989000000000005
	.quad	0x3fe0fa63736cdf26              # double 0.53056499999999995
	.quad	0x3fdd25c810a569b1              # double 0.45543099999999997
	.quad	0x3fd5db48909289db              # double 0.34150900000000001
	.quad	0x3fe25c52e72da123              # double 0.57377
	.quad	0x3fdb7d9dba908a26              # double 0.42954199999999998
	.quad	0x3fe24422036006d1              # double 0.57081700000000002
	.quad	0x3fe0679ee02a77a3              # double 0.51264900000000002
	.quad	0x3fc7309c7ffde721              # double 0.181171
	.quad	0x3fe63b9496249a13              # double 0.69477299999999997
	.quad	0x3fd952a411c2a023              # double 0.39566899999999999
	.quad	0x3fe9e47991bc5586              # double 0.80913999999999997
	.quad	0x3fdd114d2f5dbb9d              # double 0.454181
	.quad	0x3fc752977c88e79b              # double 0.18220800000000001
	.quad	0x3fdd0ded288ce704              # double 0.45397500000000002
	.quad	0x3fde76d549731099              # double 0.47600300000000001
	.quad	0x3fecb821af7d30ad              # double 0.89747699999999997
	.quad	0x3f8423d9231c64bb              # double 0.0098340000000000007
	.quad	0x3fed01a79fec99f2              # double 0.90645200000000004
	.quad	0x3fc67e5a78f25a25              # double 0.175731
	.quad	0x3fbf7585be1a8262              # double 0.122887
	.quad	0x3fac8909289dadfb              # double 0.055732999999999998
	.quad	0x3fece0f7fcfc3f81              # double 0.90246199999999999
	.quad	0x3fdcbc558644523f              # double 0.44899499999999998
	.quad	0x3fd3524bfd2e9468              # double 0.301898
	.quad	0x3fd526527a20578e              # double 0.33046399999999998
	.quad	0x3fa33a8a3f8982cb              # double 0.037555999999999999
	.quad	0x3fdd33bd9cae2110              # double 0.45628299999999999
	.quad	0x3fda02539756c93a              # double 0.40639199999999998
	.quad	0x3fe3ba109d0635a4              # double 0.61646299999999998
	.quad	0x3fd50cbaf965b20c              # double 0.32890200000000003
	.quad	0x3fe7d12231832fcb              # double 0.74427900000000002
	.quad	0x3fe672ba9d1f6018              # double 0.70150500000000005
	.quad	0x3fdaf0068db8bac7              # double 0.4209
	.quad	0x3fe4e3992c8c5005              # double 0.652783
	.quad	0x3fe4efd86a8fc0d3              # double 0.65427800000000003
	.quad	0x3fafd1569f490603              # double 0.062143999999999998
	.quad	0x3fc2d1e108c3f3e0              # double 0.14702999999999999
	.quad	0x3fb620ff540895d1              # double 0.086441000000000004
	.quad	0x3fdc9731098d477c              # double 0.44672800000000001
	.quad	0x3fe8e91a75cd0bb7              # double 0.77845500000000001
	.quad	0x3fcdd28d002e2329              # double 0.232988
	.quad	0x3fc0209246bf0132              # double 0.12599399999999999
	.quad	0x3fe6b8e086bdf4c3              # double 0.71006800000000003
	.quad	0x3fc603e63e8dda49              # double 0.17199400000000001
	.quad	0x3fed73eab367a0f9              # double 0.9204
	.quad	0x3fe618bb4d48882f              # double 0.69051899999999999
	.quad	0x3fe85b078d92fb1a              # double 0.76111200000000001
	.quad	0x3fe02eb80ecfa69c              # double 0.50570300000000001
	.quad	0x3fdbe6a76965f527              # double 0.43595299999999998
	.quad	0x3fe12847b24638c9              # double 0.53616699999999995
	.quad	0x3fd857d9dba908a2              # double 0.38036199999999998
	.quad	0x3fdc15f45e0b4e12              # double 0.43884000000000001
	.quad	0x3fe50deb0fadf2ed              # double 0.65794900000000001
	.quad	0x3fe0e29f9ce8d973              # double 0.52766400000000002
	.quad	0x3fe791f926c7eae6              # double 0.73656900000000003
	.quad	0x3fe80329802c0a4a              # double 0.750386
	.quad	0x3fe8b868fd199bb2              # double 0.77251099999999995
	.quad	0x3feb9420b3d4ae43              # double 0.86183200000000004
	.quad	0x3fec497b7414a4d3              # double 0.88397000000000003
	.quad	0x3feb6a2f48c2e771              # double 0.85671200000000003
	.quad	0x3fe0c49129888f86              # double 0.52399499999999999
	.quad	0x3feba2ad3e920c07              # double 0.86360800000000004
	.quad	0x3fb06b8b69552e30              # double 0.064141000000000004
	.quad	0x3fd6fc1df3300de5              # double 0.35913800000000001
	.quad	0x3fe6da5fc7e6b3ff              # double 0.71415700000000004
	.quad	0x3feb747b677f6b1a              # double 0.85796899999999998
	.quad	0x3fe655885d31337f              # double 0.69794100000000003
	.quad	0x3fe2da78f25a2510              # double 0.58916900000000005
	.quad	0x3fed0b630a91537a              # double 0.90764
	.quad	0x3f943d46b26bf877              # double 0.019765000000000001
	.quad	0x3fd8f5a964e8b7e5              # double 0.38999400000000001
	.quad	0x3fd518eb8950763a              # double 0.32964599999999999
	.quad	0x3feb61f3a57eaa2a              # double 0.855707
	.quad	0x3fe2455000c9539c              # double 0.57096100000000005
	.quad	0x3fe914727dcbddba              # double 0.78374600000000005
	.quad	0x3fe66b09635610ae              # double 0.70056600000000002
	.quad	0x3fc4115df6555c53              # double 0.15678
	.quad	0x3fd6765fd8adab9f              # double 0.35097499999999998
	.quad	0x3fdbe18ac9f2fdb9              # double 0.435641
	.quad	0x3fc794b7b28954a8              # double 0.184226
	.quad	0x3feb3f444e0daa0d              # double 0.85147300000000004
	.quad	0x3fdee9680e065300              # double 0.48299599999999998
	.quad	0x3feb215336deb95e              # double 0.84781799999999996
	.quad	0x3fe60cb8e086bdf5              # double 0.68905300000000003
	.quad	0x3fc1cfb3311a543f              # double 0.139151
	.quad	0x3fe195f676ea4229              # double 0.54955600000000004
	.quad	0x3febc7abfb9bed31              # double 0.86812400000000001
	.quad	0x3fd4f0cbaf965b21              # double 0.32719700000000002
	.quad	0x3fc72806af46aa08              # double 0.18090899999999999
	.quad	0x3fd1fd47bedb7282              # double 0.281084
	.quad	0x3fda6b723ee1bd1f              # double 0.41280800000000001
	.quad	0x3fefbe61cffeb075              # double 0.99199000000000003
	.quad	0x3fecee675147f130              # double 0.90410199999999996
	.quad	0x3fe38c5a8155d5f5              # double 0.61088299999999995
	.quad	0x3fda0a24463065f9              # double 0.40686899999999998
	.quad	0x3fef29cdc443914f              # double 0.97385299999999996
	.quad	0x3fd01f6cacd184c2              # double 0.25191799999999998
	.quad	0x3fd9da72a7bd48cb              # double 0.40395799999999998
	.quad	0x3fd828240b780347              # double 0.37745000000000001
	.quad	0x3fd936544fe36d22              # double 0.39394099999999999
	.quad	0x3fda4ae85b9e8c48              # double 0.41082200000000002
	.quad	0x3fb79e7b80a9de8b              # double 0.092261999999999997
	.quad	0x3fd027418d6909af              # double 0.25239600000000001
	.quad	0x3fde1094a2b9d3cc              # double 0.46976200000000001
	.quad	0x3fe3381733226c3c              # double 0.60059700000000005
	.quad	0x3fed048e043a2164              # double 0.906806
	.quad	0x3fec8520d130df9c              # double 0.89125100000000001
	.quad	0x3fc5eb4a66559f6f              # double 0.17124300000000001
	.quad	0x3fed0e219652bd3c              # double 0.90797499999999997
	.quad	0x3fe45dc6195464dc              # double 0.63644699999999998
	.quad	0x3fe7f6fb09203a32              # double 0.74889899999999998
	.quad	0x3fb96d8f4f93bc0a              # double 0.099327999999999999
	.quad	0x3fbe7ab7564302b4              # double 0.11906
	.quad	0x3fe14e5d5b24e9c4              # double 0.54081599999999996
	.quad	0x3febf8a6dacabc51              # double 0.87410299999999996
	.quad	0x3fe1ad490e66cb10              # double 0.55240299999999998
	.quad	0x3fe85bc01a36e2eb              # double 0.76119999999999999
	.quad	0x3fd4d5e8d5410f95              # double 0.32555600000000001
	.quad	0x3fe7b31e3a7daa50              # double 0.74061500000000002
	.quad	0x3fe949cf56eac860              # double 0.79025999999999996
	.quad	0x3fe1f7e1b8ed1bf8              # double 0.56150900000000004
	.quad	0x3fd36bd2b6f19935              # double 0.303456
	.quad	0x3fee214cec41dd1a              # double 0.94156499999999999
	.quad	0x3fdb7ef177a7008a              # double 0.42962299999999998
	.quad	0x3fb680064a9cdc44              # double 0.087890999999999997
	.quad	0x3fdadc1a47a9e2bd              # double 0.419684
	.quad	0x3fea10ea9e6eeb70              # double 0.81456499999999998
	.quad	0x3fd6b2e9ccb7d417              # double 0.35466999999999999
	.quad	0x3fc3c26dce39b457              # double 0.15437100000000001
	.quad	0x3fc29235f8099179              # double 0.14508699999999999
	.quad	0x3fec02fd75e2046c              # double 0.87536499999999994
	.quad	0x3fea8f01fb82c2bd              # double 0.82995699999999994
	.quad	0x3fea035158b827fa              # double 0.81290499999999999
	.quad	0x3fd0b0fadf2ecf20              # double 0.26080199999999998
	.quad	0x3feddca6ca03c4b1              # double 0.93318500000000004
	.quad	0x3fefb23dd54da4cf              # double 0.99050800000000005
	.quad	0x3fd86922d948dc12              # double 0.38141700000000001
	.quad	0x3fd270c1333b96af              # double 0.288132
	.quad	0x3fea470c996b7671              # double 0.82117300000000004
	.quad	0x3fef5ab7dc7abfba              # double 0.97982400000000003
	.quad	0x3fe3d3f5b5fa2270              # double 0.61962399999999995
	.quad	0x3fccd330941c8217              # double 0.22519500000000001
	.quad	0x3fe63c42a66dbd73              # double 0.69485600000000003
	.quad	0x3fbb14445aa2e3c5              # double 0.105778
	.quad	0x3fecc1a6937d1fe6              # double 0.89863899999999997
	.quad	0x3f9999dcb5781c71              # double 0.025000999999999999
	.quad	0x3fc74c7f34938583              # double 0.18202199999999999
	.quad	0x3fc9a0e8427418d7              # double 0.20022300000000001
	.quad	0x3fa0adab9f559b3d              # double 0.032575
	.quad	0x3fed23a4b5568e82              # double 0.91060099999999999
	.quad	0x3fc9fef39085f4a1              # double 0.203093
	.quad	0x3fe14bc48f10a99b              # double 0.54049899999999995
	.quad	0x3fb42cb20fb224ab              # double 0.078807000000000002
	.quad	0x3fe094e1a3f4666f              # double 0.51817400000000002
	.quad	0x3fcf003eea209aaa              # double 0.24219499999999999
	.quad	0x3febdba4d6e47dc3              # double 0.87056199999999995
	.quad	0x3fe19dece5710881              # double 0.55052800000000002
	.quad	0x3fe5c5f7c6759ab7              # double 0.68041600000000002
	.quad	0x3fdeb79d909f1f15              # double 0.47995700000000002
	.quad	0x3fe8b99d451fc4c1              # double 0.77265799999999996
	.quad	0x3fd80f94c87980f5              # double 0.37595099999999998
	.quad	0x3fd9791c4b90214b              # double 0.39801700000000001
	.quad	0x3fef19d2391d5800              # double 0.97190200000000004
	.quad	0x3fdbe6d58c8eef1c              # double 0.43596400000000002
	.quad	0x3fe416d6dc1a47aa              # double 0.62778800000000001
	.quad	0x3fc5fe3b03e20cd0              # double 0.171821
	.quad	0x3fbae5cd4ed2cbea              # double 0.105069
	.quad	0x3fc1f5f91600f345              # double 0.140319
	.quad	0x3f9fed20296b3355              # double 0.031178000000000001
	.quad	0x3feee494d50ebaae              # double 0.96540300000000001
	.quad	0x3fe1015c209246bf              # double 0.531416
	.quad	0x3fc1e5082cf52b91              # double 0.13980200000000001
	.quad	0x3fea831ad2135dab              # double 0.82850400000000002
	.quad	0x3febe2b6ae7d566d              # double 0.87142500000000001
	.quad	0x3fed742bb6672fba              # double 0.920431
	.quad	0x3fc487442c7fbacb              # double 0.16037799999999999
	.quad	0x3fe5805e5f30e7ff              # double 0.67191999999999996
	.quad	0x3fca429e0a41a262              # double 0.20515800000000001
	.quad	0x3fb0904f6dfc5cdd              # double 0.064701999999999996
	.quad	0x3fe4ce9813879c41              # double 0.65021899999999999
	.quad	0x3fba603d57796399              # double 0.103031
	.quad	0x3f9fca85caafbc1b              # double 0.031046000000000001
	.quad	0x3fefe79cc74b838c              # double 0.99702299999999999
	.quad	0x3fea8c692f6e8295              # double 0.82964000000000004
	.quad	0x3fee39c51dabe271              # double 0.94455199999999995
	.quad	0x3f73e5fb71fbc5df              # double 0.0048580000000000003
	.quad	0x3fcb58644523f67f              # double 0.21363499999999999
	.quad	0x3fe226b723ee1bd2              # double 0.56722600000000001
	.quad	0x3fe94152b0a6fc59              # double 0.78922400000000004
	.quad	0x3fc855fbb517a461              # double 0.19012399999999999
	.quad	0x3fe3097a67a52ac7              # double 0.59490699999999996
	.quad	0x3fd2bd76ee73e682              # double 0.29281400000000002
	.quad	0x3fea67f2c3009b30              # double 0.82518899999999995
	.quad	0x3feb6c1e364bec68              # double 0.85694800000000004
	.quad	0x3fa2ff08893b7d85              # double 0.037102000000000003
	.quad	0x3fdf2edbb59ddc1e              # double 0.48723499999999997
	.quad	0x3fc11cda2b5a20de              # double 0.13369300000000001
	.quad	0x3fcee1693c03bc4d              # double 0.241254
	.quad	0x3fe085985ad538ac              # double 0.51630799999999999
	.quad	0x3fdd1ae70c1333b9              # double 0.45476699999999998
	.quad	0x3fe86c02f2f98740              # double 0.763185
	.quad	0x3fdc79c4113c6866              # double 0.44493199999999999
	.quad	0x3fe71e3864cb5bb4              # double 0.72243900000000005
	.quad	0x3fe3dfdef8487b9a              # double 0.62107800000000002
	.quad	0x3fe3740a2877ee4e              # double 0.60791499999999998
	.quad	0x3fd7e39f77292c49              # double 0.37326799999999999
	.quad	0x3fe38123810e8859              # double 0.609514
	.quad	0x3fe19a9b8cb8e087              # double 0.55012300000000003
	.quad	0x3fe9e3d3e4ef0282              # double 0.80906100000000003
	.quad	0x3fd04801f75104d5              # double 0.25439499999999998
	.quad	0x3fc6b295e9e1b08a              # double 0.17732500000000001
	.quad	0x3fe64db9c7368ad7              # double 0.69698800000000005
	.quad	0x3fe08d9f90539fba              # double 0.51728799999999997
	.quad	0x3fed36694898f606              # double 0.91289200000000004
	.quad	0x3fe866e008e9b38d              # double 0.76255799999999996
	.quad	0x3fee2e3e6c4c5975              # double 0.94314500000000001
	.quad	0x3fe6cacaff6d3309              # double 0.71225499999999997
	.quad	0x3fedcec204f2ae08              # double 0.93148900000000001
	.quad	0x3fb94690de093533              # double 0.098733000000000001
	.quad	0x3fb4083126e978d5              # double 0.07825
	.quad	0x3fe496d8f4f93bc1              # double 0.64341400000000004
	.quad	0x3fd6d916872b020c              # double 0.35699999999999998
	.quad	0x3fe1f4384ba0e842              # double 0.56106199999999995
	.quad	0x3f9e43675ddd2ae9              # double 0.029554
	.quad	0x3fab48f53c579f23              # double 0.053290999999999998
	.quad	0x3fe808aac96cc5fc              # double 0.751058
	.quad	0x3fe7b2a27f1b6912              # double 0.74055599999999999
	.quad	0x3fc0106ab14ec205              # double 0.125501
	.quad	0x3fda1476af89c5e7              # double 0.407499
	.quad	0x3fd380ae10492360              # double 0.30472900000000003
	.quad	0x3fb3a2df9378ee28              # double 0.076703999999999994
	.quad	0x3fdbe9b38d60a633              # double 0.436139
	.quad	0x3fc5739f340d4dc6              # double 0.16759099999999999
	.quad	0x3fe79b951c5c5719              # double 0.73774200000000001
	.quad	0x3fe1205dd8f92afa              # double 0.53520100000000004
	.quad	0x3fe932314013ec46              # double 0.78737699999999999
	.quad	0x3fe9f3c925785f8d              # double 0.81100899999999998
	.quad	0x3fae70c1333b96af              # double 0.059454
	.quad	0x3fc7f9e7b80a9de9              # double 0.18731400000000001
	.quad	0x3fde388a8b08dd1e              # double 0.47220099999999998
	.quad	0x3fdbd3bafd976ff4              # double 0.43479800000000002
	.quad	0x3fe91754b05b7cfe              # double 0.78409799999999996
	.quad	0x3feb7b5286b59147              # double 0.85880400000000001
	.quad	0x3fd1c3265add9c28              # double 0.277536
	.quad	0x3fdf1f2990f301eb              # double 0.48627700000000001
	.quad	0x3fd1bd0e12e83a11              # double 0.27716400000000002
	.quad	0x3fd4bddfc9ff92f3              # double 0.32408900000000002
	.quad	0x3fe8b85e80bed741              # double 0.77250600000000003
	.quad	0x3fe568d972cd7cf6              # double 0.669049
	.quad	0x3fe379db22d0e560              # double 0.60862499999999997
	.quad	0x3fa74be835dedf1e              # double 0.045501
	.quad	0x3fdd3e5753a3ec03              # double 0.45693
	.quad	0x3fe22ade657b84dc              # double 0.56773300000000004
	.quad	0x3fe1895d0b73d189              # double 0.54801800000000001
	.quad	0x3fd9e80389f83be6              # double 0.40478599999999998
	.quad	0x3fdf8e9707182236              # double 0.49307800000000002
	.quad	0x3fd4507a6bd6e8b0              # double 0.31741200000000003
	.quad	0x3fe88f47304039ac              # double 0.76749
	.quad	0x3feccc35ce182667              # double 0.89992799999999995
	.quad	0x3fe35158b827fa1a              # double 0.60367999999999999
	.quad	0x3fd31ee2435696e6              # double 0.29876000000000003
	.quad	0x3fe44ca0c282c6ef              # double 0.63435399999999997
	.quad	0x3fba631f8a0902de              # double 0.103075
	.quad	0x3fce427c7c5260f6              # double 0.236404
	.quad	0x3fcc5a1cac083127              # double 0.2215
	.quad	0x3fedd352220bc383              # double 0.93204600000000004
	.quad	0x3fd2f85510d38cda              # double 0.29640699999999998
	.quad	0x3fe3c7fbacb42891              # double 0.61816199999999999
	.quad	0x3fe4d7c4e2f37fbf              # double 0.651339
	.quad	0x3fe8abf11f926c7f              # double 0.77098900000000004
	.quad	0x3f5ce6c093d96638              # double 0.0017639999999999999
	.quad	0x3fd79ea140570825              # double 0.36905700000000002
	.quad	0x3fec9fb3fa6defc8              # double 0.89449500000000004
	.quad	0x3fcd04e618ce2d1f              # double 0.226712
	.quad	0x3fca77dd872f33ca              # double 0.20678299999999999
	.quad	0x3fe9036a832b990b              # double 0.781667
	.quad	0x3fe5ad03d9a95422              # double 0.67737000000000003
	.quad	0x3fe0eb484d76ab58              # double 0.528721
	.quad	0x3fe9cb35f3d7d391              # double 0.80605599999999999
	.quad	0x3fed21ad6451b930              # double 0.91036099999999998
	.quad	0x3fef522c881e4713              # double 0.97878100000000001
	.quad	0x3fedc2c3c9eecbfb              # double 0.93002499999999999
	.quad	0x3fe70655193708ab              # double 0.71952300000000002
	.quad	0x3fc93c36113404ea              # double 0.19714999999999999
	.quad	0x3fd103a7546d3f9e              # double 0.26584799999999997
	.quad	0x3feaa29c779a6b51              # double 0.83235000000000003
	.quad	0x3fee2619da9c9928              # double 0.94215099999999996
	.quad	0x3fe6d1b71758e219              # double 0.71309999999999996
	.quad	0x3fe25f3519bd4068              # double 0.57412200000000002
	.quad	0x3fa39b23dd54da4d              # double 0.038293000000000001
	.quad	0x3fee6dc5d6388659              # double 0.95089999999999997
	.quad	0x3fea57060bb2bbaa              # double 0.82312300000000005
	.quad	0x3fed89efd86a8fc1              # double 0.92308800000000002
	.quad	0x3fca686e7e62dc6e              # double 0.206312
	.quad	0x3fc559e6256366d8              # double 0.16680600000000001
	.quad	0x3fe6430b178b3700              # double 0.69568399999999997
	.quad	0x3fe88c3d25247cb7              # double 0.767119
	.quad	0x3fd156bca5375c8e              # double 0.27091900000000002
	.quad	0x3fd17503b81b64e0              # double 0.27276699999999998
	.quad	0x3fe43c59b8023a6d              # double 0.63236700000000001
	.quad	0x3fd28f0c77dd872f              # double 0.28998099999999999
	.quad	0x3fd9df2239e6ab9b              # double 0.40424399999999999
	.quad	0x3fd17cfa26a22b39              # double 0.27325300000000002
	.quad	0x3fcbe28240b78034              # double 0.21784999999999999
	.quad	0x3fe48f9f44d44567              # double 0.64253199999999999
	.quad	0x3fef262ed352220c              # double 0.97341100000000002
	.quad	0x3fd1bda0dfdef848              # double 0.27719899999999997
	.quad	0x3fe2c1a8ac5c13fd              # double 0.58613999999999999
	.quad	0x3fe4496ededaec4a              # double 0.63396399999999997
	.quad	0x3fe0e38c9752977d              # double 0.52777700000000005
	.quad	0x3fe91c7bcc2938de              # double 0.78472699999999995
	.quad	0x3fd9201040bfe3b0              # double 0.39258199999999999
	.quad	0x3f93f39d1b2e59b0              # double 0.019484000000000001
	.quad	0x3fe5c7bcc2938de7              # double 0.68063200000000001
	.quad	0x3fdf154434e3369c              # double 0.48567300000000002
	.quad	0x3fb121dda059a73b              # double 0.066922999999999996
	.quad	0x3febf227d028a1e0              # double 0.87331000000000003
	.quad	0x3fe67405f6ba0621              # double 0.70166300000000004
	.quad	0x3fe95959a30984e4              # double 0.792157
	.quad	0x3fd49fa11a975afb              # double 0.322243
	.quad	0x3fe15c11e42e1262              # double 0.542489
	.quad	0x3f86adf71eafee70              # double 0.011074000000000001
	.quad	0x3fe45421c044284e              # double 0.63527
	.quad	0x3fe451deefe4ffc9              # double 0.63499399999999995
	.quad	0x3fde5232d2bb2357              # double 0.47376699999999999
	.quad	0x3fba1b4bb5e0f7fd              # double 0.101979
	.quad	0x3fd8ed352220bc38              # double 0.38947799999999999
	.quad	0x3febdaa715831f04              # double 0.87044100000000002
	.quad	0x3feea0c49ba5e354              # double 0.957125
	.quad	0x3faf9ce8d972cd7d              # double 0.061744
	.quad	0x3fe5443b2dd377e2              # double 0.66457900000000003
	.quad	0x3fef0fd5cb790fb6              # double 0.97068299999999996
	.quad	0x3fd4a6dacabc5155              # double 0.32268400000000003
	.quad	0x3fe2bb55ac03ff69              # double 0.585368
	.quad	0x3feaabcb5fe542e5              # double 0.83347099999999996
	.quad	0x3fc4996b76709fa5              # double 0.16093199999999999
	.quad	0x3fe2ec5b078d92fb              # double 0.59135199999999999
	.quad	0x3fdeb6d86ec17ebb              # double 0.47991
	.quad	0x3f952c9d16fc9bc7              # double 0.020677999999999998
	.quad	0x3fd2970f7b9e0610              # double 0.29047000000000001
	.quad	0x3fee165907d91255              # double 0.94022799999999995
	.quad	0x3fc574794ea07703              # double 0.16761699999999999
	.quad	0x3f98c7e28240b780              # double 0.024199999999999999
	.quad	0x3fe523b57c4e2f38              # double 0.660609
	.quad	0x3fb3704790b84988              # double 0.075931999999999999
	.quad	0x3fe2f37da61e0c5b              # double 0.59222300000000005
	.quad	0x3feffdc1615ebfa9              # double 0.999726
	.quad	0x3f8144cbe1eb4203              # double 0.0084320000000000002
	.quad	0x3fc9f81a5870da5e              # double 0.20288400000000001
	.quad	0x3fc646e8f29d40ee              # double 0.174039
	.quad	0x3fe44c9ea9a3d2d8              # double 0.63435299999999994
	.quad	0x3fc92bfdb4cc2507              # double 0.196655
	.quad	0x3fed0090b417ca21              # double 0.90631899999999999
	.quad	0x3fadc6e2a80064aa              # double 0.058158000000000001
	.quad	0x3fe1616d6dc1a47b              # double 0.54314300000000004
	.quad	0x3fcd6f9767903212              # double 0.22996800000000001
	.quad	0x3fb9f644955b4678              # double 0.101414
	.quad	0x3fe0aabcd78c4370              # double 0.52084200000000003
	.quad	0x3fe519220ff54089              # double 0.65931799999999996
	.quad	0x3fe20476f2a5a46a              # double 0.56304500000000002
	.quad	0x3fc2a38b8ae31d71              # double 0.145616
	.quad	0x3fc216616b54e2b0              # double 0.14130799999999999
	.quad	0x3febba71151611ba              # double 0.86650899999999997
	.quad	0x3f6ab8e8ea39c51e              # double 0.0032620000000000001
	.quad	0x3fd0d0e560418937              # double 0.26274999999999998
	.quad	0x3fe28605681ecd4b              # double 0.57886000000000004
	.quad	0x3fe35095af294dd7              # double 0.60358699999999998
	.quad	0x3fe9c7021d10b1ff              # double 0.80554300000000001
	.quad	0x3fae9b38d60a6330              # double 0.059777999999999998
	.quad	0x3fe1c7863beec398              # double 0.55560600000000004
	.quad	0x3fcd84f4c6e6d9be              # double 0.23061999999999999
	.quad	0x3fdb0d9d7774aba4              # double 0.42270600000000003
	.quad	0x3fd493964a59c066              # double 0.32150800000000002
	.quad	0x3fe38a393ee5eedd              # double 0.61062300000000003
	.quad	0x3fdee90bc7b45f18              # double 0.48297400000000001
	.quad	0x3fdb40ee06d93815              # double 0.42583799999999999
	.quad	0x3fe9ccdfaca36199              # double 0.80625899999999995
	.quad	0x3fe35b6a1e81cb47              # double 0.60490900000000003
	.quad	0x3fe9755582129457              # double 0.79557299999999997
	.quad	0x3fedaa0ec7432010              # double 0.92700899999999997
	.quad	0x3fc163dc486ad2dd              # double 0.13586000000000001
	.quad	0x3fcbf7f8ca8198f2              # double 0.218505
	.quad	0x3fe10d759ee88df3              # double 0.53289299999999995
	.quad	0x3fea2e2541d8e864              # double 0.81813299999999999
	.quad	0x3fe2a3cea6c1a049              # double 0.58249600000000001
	.quad	0x3fe127913e81450f              # double 0.53608
	.quad	0x3fe5e1bf37b8d3f2              # double 0.68380700000000005
	.quad	0x3fb4fe69270b06c4              # double 0.082006999999999997
	.quad	0x3fb17bd8be7296f6              # double 0.068295999999999996
	.quad	0x3fd51f5be5d9e40d              # double 0.33003900000000003
	.quad	0x3fd54abe6a337a81              # double 0.33268700000000001
	.quad	0x3fdaf11b60ae9681              # double 0.42096600000000001
	.quad	0x3fe2c11c2a023209              # double 0.58607299999999996
	.quad	0x3fc0f4cf4a558ea8              # double 0.13247100000000001
	.quad	0x3fe25ca4b124d09a              # double 0.57380900000000001
	.quad	0x3fe270c564f97edc              # double 0.57626599999999994
	.quad	0x3fd0b8e8ea39c51e              # double 0.26128600000000002
	.quad	0x3fc00841ede1198b              # double 0.125252
	.quad	0x3fd73d68405b39e2              # double 0.36312299999999997
	.quad	0x3fe83f50e3476295              # double 0.75772899999999999
	.quad	0x3fec50b955f7835a              # double 0.88485400000000003
	.quad	0x3fd21c087442c7fc              # double 0.28296100000000002
	.quad	0x3fb4fe047d3d4281              # double 0.082001000000000004
	.quad	0x3fe607bdcf0307f2              # double 0.68844499999999997
	.quad	0x3fbca1272c94b381              # double 0.111834
	.quad	0x3fdde8576cce5f74              # double 0.467306
	.quad	0x3fd14ee392e1ef74              # double 0.27044000000000001
	.quad	0x3fcd9b024f6598e1              # double 0.231293
	.quad	0x3fc0c70867ad8e43              # double 0.131074
	.quad	0x3fee31cc96462802              # double 0.94357899999999995
	.quad	0x3fdc6ebd4cfd08d5              # double 0.44425900000000001
	.quad	0x3fe00a04d12018a4              # double 0.50122299999999997
	.quad	0x3fab72a38b8ae31d              # double 0.053608999999999997
	.quad	0x3fca7aaef2c73259              # double 0.206869
	.quad	0x3feb5a14488c60cc              # double 0.854746
	.quad	0x3fe4461f9f01b867              # double 0.63356000000000001
	.quad	0x3fe71e0a41a261bf              # double 0.72241699999999998
	.quad	0x3fcb5e4a38327675              # double 0.21381500000000001
	.quad	0x3fe91e34330d7386              # double 0.784937
	.quad	0x3fdfc2374794ea07              # double 0.49622899999999998
	.quad	0x3fcb121ab4b72c52              # double 0.21149000000000001
	.quad	0x3fdc451fc4c16590              # double 0.44171899999999997
	.quad	0x3fd3c8f32378ab0d              # double 0.30914000000000003
	.quad	0x3fe7caba38759253              # double 0.74349699999999996
	.quad	0x3fd251b0ccbc05d5              # double 0.28623599999999999
	.quad	0x3fe24a2fcefaa476              # double 0.57155599999999995
	.quad	0x3fd4355cd91eeaa7              # double 0.31575700000000001
	.quad	0x3fe4ead9274e22a3              # double 0.65366800000000003
	.quad	0x3fe114a6eb91b3f2              # double 0.533771
	.quad	0x3fde643cc07aaef3              # double 0.47486800000000001
	.quad	0x3fc3a871a3b14a90              # double 0.15357799999999999
	.quad	0x3fe1dde15ca6ca04              # double 0.55833500000000003
	.quad	0x3fc3dbf487fcb924              # double 0.15515000000000001
	.quad	0x3fc4fba01eeed890              # double 0.16392899999999999
	.quad	0x3feee9014b599aa6              # double 0.965943
	.quad	0x3fde3d1cc100e6b0              # double 0.47248000000000001
	.quad	0x3fe379bdc69f8c22              # double 0.60861100000000001
	.quad	0x3fc50a915379fa98              # double 0.164385
	.quad	0x3fe0157689ca18bd              # double 0.50261999999999996
	.quad	0x3fdaab7564302b41              # double 0.416715
	.quad	0x3fe46c5f394b7b29              # double 0.63822900000000005
	.quad	0x3fe2b9b66f9335d2              # double 0.58516999999999997
	.quad	0x3fe3d330941c8217              # double 0.61953000000000003
	.quad	0x3fe30433d6c72192              # double 0.59426299999999999
	.quad	0x3fdb745bf26f1dc5              # double 0.428977
	.quad	0x3fd900192a737111              # double 0.39063100000000001
	.quad	0x3fcc1d8622c45027              # double 0.21965100000000001
	.quad	0x3fe5961e4f765fd9              # double 0.67457500000000004
	.quad	0x3fd5631b584b1ab1              # double 0.33417400000000003
	.quad	0x3fdaa52ac753e708              # double 0.41633100000000001
	.quad	0x3fb269df97aaac11              # double 0.071928000000000006
	.quad	0x3fe425f84cad57bc              # double 0.62963499999999994
	.quad	0x3f95515054ac29bf              # double 0.020818
	.quad	0x3fd2ce95faa8a82a              # double 0.29385899999999998
	.quad	0x3fe7e02a77a2cecd              # double 0.74611400000000005
	.quad	0x3fe445b291b823c8              # double 0.63350799999999996
	.quad	0x3fd3fa11a975afb0              # double 0.31213800000000003
	.quad	0x3fe33c6eb0b7c350              # double 0.60112699999999997
	.quad	0x3fe1608d08919ef9              # double 0.54303599999999996
	.quad	0x3fe34649906cca2e              # double 0.60233000000000003
	.quad	0x3fcccffa7eb6bf44              # double 0.22509699999999999
	.quad	0x3fdb6876e1deacc9              # double 0.42825099999999999
	.quad	0x3fb04b2b777d0f1f              # double 0.063646999999999995
	.quad	0x3fbaaf1455219a84              # double 0.10423399999999999
	.quad	0x3fdd8d6909aed56b              # double 0.461756
	.quad	0x3fc7980f55de58e6              # double 0.18432799999999999
	.quad	0x3fed57f950b955f8              # double 0.91698900000000005
	.quad	0x3fdca2a4db163bac              # double 0.44742700000000002
	.quad	0x3fe1674080f98fa3              # double 0.54385399999999995
	.quad	0x3fd8f47735c182ed              # double 0.38992100000000002
	.quad	0x3fb03a96d4c33b54              # double 0.063394000000000006
	.quad	0x3feadde9c0229a5f              # double 0.83958900000000003
	.quad	0x3fc38f81e8a2ec29              # double 0.15281700000000001
	.quad	0x3fc8f55de58e64b2              # double 0.19498799999999999
	.quad	0x3fe2b5c5b4aa9718              # double 0.58468900000000001
	.quad	0x3fd1641b328b6d87              # double 0.271735
	.quad	0x3fe813cee9dd7ecc              # double 0.75241800000000003
	.quad	0x3fec2f709b738e6d              # double 0.88079099999999999
	.quad	0x3fd2958537e2c55d              # double 0.29037600000000002
	.quad	0x3fe078feef5ec80c              # double 0.51476999999999995
	.quad	0x3fc16f32bdc26dce              # double 0.13620599999999999
	.quad	0x3fea4face67d77fb              # double 0.82222600000000001
	.quad	0x3fd9565c2d278078              # double 0.39589600000000003
	.quad	0x3fe3f9ca5bd944aa              # double 0.62424199999999996
	.quad	0x3fd3c779a6b50b0f              # double 0.30904999999999999
	.quad	0x3f8a74c09c3ce209              # double 0.012918000000000001
	.quad	0x3f8df6db940fecdd              # double 0.014631
	.quad	0x3fda950fc71d6063              # double 0.41534799999999999
	.quad	0x3fe1db2b3461309c              # double 0.55800399999999994
	.quad	0x3fd7f1b25f633ce6              # double 0.37412699999999999
	.quad	0x3fe57559b3d07c85              # double 0.67057500000000003
	.quad	0x3feba4766c6de764              # double 0.86382599999999998
	.quad	0x3fe647368ad68837              # double 0.69619299999999995
	.quad	0x3feae00b02928177              # double 0.83984899999999996
	.quad	0x3fea064a9cdc4439              # double 0.81326799999999999
	.quad	0x3fedd9c27e953155              # double 0.93283199999999999
	.quad	0x3fe8aa94ff0025c0              # double 0.77082300000000004
	.quad	0x3fd016bdb1a6d699              # double 0.251388
	.quad	0x3fd2a6e32e3821af              # double 0.29143599999999997
	.quad	0x3fe1e1f7d73c9258              # double 0.55883400000000005
	.quad	0x3fd46b3bb83cf2d0              # double 0.31904500000000002
	.quad	0x3fa86ab14ec204f3              # double 0.047689000000000002
	.quad	0x3fe4a4228997c3d7              # double 0.64503600000000005
	.quad	0x3fe0919ce075f6fd              # double 0.51777499999999999
	.quad	0x3fec6b15f88fc936              # double 0.88807199999999997
	.quad	0x3fee1cdc443914f5              # double 0.94102300000000005
	.quad	0x3fe6f000431bde83              # double 0.71679700000000002
	.quad	0x3fe8186b9c304ccf              # double 0.75298100000000001
	.quad	0x3fe218c3b0c4588a              # double 0.565523
	.quad	0x3fa8a0902de00d1b              # double 0.048099999999999997
	.quad	0x3f640789613d31ba              # double 0.0024450000000000001
	.quad	0x3fe607357e670e2c              # double 0.68837999999999999
	.quad	0x3fed2e31d712a0ec              # double 0.91188899999999994
	.quad	0x3fd9d523b3636f3b              # double 0.40363399999999999
	.quad	0x3f89628cbd1244a6              # double 0.012395
	.quad	0x3fb0d759ee88df37              # double 0.065785999999999997
	.quad	0x3fdc8f3eccc46951              # double 0.446243
	.quad	0x3fef4e5f7403dddb              # double 0.97831699999999999
	.quad	0x3fe5a40d90e23af3              # double 0.67627599999999999
	.quad	0x3fd7a5f41aef6f8f              # double 0.369504
	.quad	0x3fee37e4de3b8a1a              # double 0.94432300000000002
	.quad	0x3fdc3443d46b26c0              # double 0.44069000000000003
	.quad	0x3fe77863beec397a              # double 0.73344600000000004
	.quad	0x3fecbe27179bfdf8              # double 0.89821200000000001
	.quad	0x3fdfe935b91f70df              # double 0.49860900000000002
	.quad	0x3fe0a5df2239e6ac              # double 0.52024800000000004
	.quad	0x3fd3ac929aa1d756              # double 0.30740800000000001
	.quad	0x3fde4ef459d9902a              # double 0.47356900000000002
	.quad	0x3fd9199bb2788db0              # double 0.39218799999999998
	.quad	0x3fe1c4b09e98dcdb              # double 0.55525999999999998
	.quad	0x3fd2839042d8c2a4              # double 0.28927999999999998
	.quad	0x3fcab88ca3e7d135              # double 0.208757
	.quad	0x3facc3e3193f6c27              # double 0.056182000000000003
	.quad	0x3fe611819d2391d5              # double 0.68963699999999994
	.quad	0x3fed579d0a67620f              # double 0.91694500000000001
	.quad	0x3fbd06cca2db61bb              # double 0.113385
	.quad	0x3fef2a0232096788              # double 0.97387800000000002
	.quad	0x3fd07f77af64063a              # double 0.25778000000000001
	.quad	0x3fce20c49ba5e354              # double 0.235375
	.quad	0x3fd0c40d0aaa7ded              # double 0.26196599999999998
	.quad	0x3fcb9a7c17a89332              # double 0.21565200000000001
	.quad	0x3fca5aab47410731              # double 0.20589199999999999
	.quad	0x3fef8ab0c88a47ed              # double 0.98568
	.quad	0x3fda855da272862f              # double 0.41438999999999998
	.quad	0x3fdffac6045baf53              # double 0.49968099999999999
	.quad	0x3fea448f10a99b6f              # double 0.82086899999999996
	.quad	0x3fec81c0ca600b03              # double 0.89083900000000005
	.quad	0x3fe1912556d19ded              # double 0.54896800000000001
	.quad	0x3fb44955b4677b39              # double 0.079243999999999995
	.quad	0x3fd687df5cf2495e              # double 0.35204299999999999
	.quad	0x3fd7bb55ac03ff69              # double 0.370809
	.quad	0x3fe40b2c83ec892b              # double 0.62636400000000003
	.quad	0x3feaf481b21c475e              # double 0.84234699999999996
	.quad	0x3fbe8155d5f56a7b              # double 0.119161
	.quad	0x3fd271044f1a1987              # double 0.28814800000000002
	.quad	0x3fec9ede1198aeb8              # double 0.89439299999999999
	.quad	0x3fe2dab5c39bcba3              # double 0.589198
	.quad	0x3fed3fc0096feb4a              # double 0.91403199999999996
	.quad	0x3fefaff2a172abef              # double 0.99022799999999999
	.quad	0x3fc84c729f59ccfb              # double 0.189833
	.quad	0x3fdbad57bc7f77af              # double 0.43245499999999998
	.quad	0x3fa8780fdc1615ec              # double 0.047791
	.quad	0x3fd8f39d1b2e59b0              # double 0.38986900000000002
	.quad	0x3fe19c886162f167              # double 0.55035800000000001
	.quad	0x3fd572da122fad6d              # double 0.33513500000000002
	.quad	0x3fce387df5cf2496              # double 0.236099
	.quad	0x3fefc74751ce28ed              # double 0.99307599999999995
	.quad	0x3fd3d790752da986              # double 0.31003199999999997
	.quad	0x3fe989b30728e92d              # double 0.79805899999999996
	.quad	0x3fd357ff9b56323c              # double 0.30224600000000001
	.quad	0x3fe39ca5bd944aa5              # double 0.61287199999999997
	.quad	0x3fe32337a80cf9e4              # double 0.59804900000000005
	.quad	0x3fed24c8366516db              # double 0.91073999999999999
	.quad	0x3fcc3e5b8561d430              # double 0.22065299999999999
	.quad	0x3fdfe9899bf5946c              # double 0.49862899999999999
	.quad	0x3fe1f71eafee6fb5              # double 0.56141600000000003
	.quad	0x3fea6a897635e743              # double 0.82550500000000004
	.quad	0x3fa38887229e9079              # double 0.038150999999999997
	.quad	0x3fe0e1fe21d96e9c              # double 0.52758700000000003
	.quad	0x3fea795f676ea423              # double 0.82731600000000005
	.quad	0x3fe633b96af038e3              # double 0.69381400000000004
	.quad	0x3fe1e86a4ca4f441              # double 0.55962100000000004
	.quad	0x3fb524e160d887ec              # double 0.082594000000000001
	.quad	0x3fe9ca5bd944aa54              # double 0.805952
	.quad	0x3f92c061847f5621              # double 0.018311999999999998
	.quad	0x3fec7b352a843809              # double 0.89004000000000005
	.quad	0x3fc9f7a4e7ab7564              # double 0.20286999999999999
	.quad	0x3fef471715c63ae2              # double 0.97742799999999996
	.quad	0x3fcf11a543f1c758              # double 0.242726
	.quad	0x3fe4e503fb374363              # double 0.65295599999999998
	.quad	0x3fe51769a91105e2              # double 0.65910800000000003
	.quad	0x3f8388a8b08dd1e5              # double 0.0095379999999999996
	.quad	0x3fd0972cd7cf5f4e              # double 0.25922699999999999
	.quad	0x3faf394b7b28954a              # double 0.060983999999999997
	.quad	0x3fee1df97aaac109              # double 0.94115899999999997
	.quad	0x3fdc62456f75d9a1              # double 0.443498
	.quad	0x3fd5b48909289dae              # double 0.339144
	.quad	0x3fbcb7c3504c48ae              # double 0.112179
	.quad	0x3fe69cfdd2285660              # double 0.70666399999999996
	.quad	0x3feca8155d5f56a8              # double 0.89551800000000004
	.quad	0x3fa51394317acc4f              # double 0.041165
	.quad	0x3fecbc83a96d4c34              # double 0.89801200000000003
	.quad	0x3fe72d3c792d1288              # double 0.72427200000000003
	.quad	0x3fefbe63e8dda48b              # double 0.99199099999999995
	.quad	0x3fe2ba9d1f601798              # double 0.58528000000000002
	.quad	0x3fd2c07ee0b0af60              # double 0.29299900000000001
	.quad	0x3fd6b42cc2d6a9c5              # double 0.35474699999999998
	.quad	0x3fda9357603925bb              # double 0.41524299999999997
	.quad	0x3fd3239a38fbca10              # double 0.29904799999999998
	.quad	0x3fe45614df8b1572              # double 0.63550799999999996
	.quad	0x3fc8775fb2edfe76              # double 0.19114300000000001
	.quad	0x3fe0f1843c3a42f2              # double 0.52948200000000001
	.quad	0x3fd434ca0c282c6f              # double 0.315722
	.quad	0x3fad2a411c2a0232              # double 0.056963
	.quad	0x3fd166f0cfe15443              # double 0.27190799999999998
	.quad	0x3fd07e49b1fab96f              # double 0.25770799999999999
	.quad	0x3fce426351deefe5              # double 0.236401
	.quad	0x3feaf2606fac6046              # double 0.84208700000000003
	.quad	0x3fee5c8fb86f47b6              # double 0.94879899999999995
	.quad	0x3fe2b5a858793dd9              # double 0.58467499999999994
	.quad	0x3f9536d655e28aa4              # double 0.020716999999999999
	.quad	0x3fe6da48b6523704              # double 0.71414599999999995
	.quad	0x3fede78183f91e64              # double 0.93450999999999995
	.quad	0x3fea841ede1198af              # double 0.82862800000000003
	.quad	0x3fe0283d35eb7458              # double 0.50491200000000003
	.quad	0x3fe0296b3354c122              # double 0.50505599999999995
	.quad	0x3fe9d49f94855da2              # double 0.80720499999999995
	.quad	0x3febdd5b24e9c454              # double 0.87077099999999996
	.quad	0x3fed86338b47c73f              # double 0.92263200000000001
	.quad	0x3f7f72f76e6106ab              # double 0.0076779999999999999
	.quad	0x3fe830a6fc58ab93              # double 0.75593900000000003
	.quad	0x3fe35a059a73b42d              # double 0.60473900000000003
	.quad	0x3fe40e94ee392e1f              # double 0.62678
	.quad	0x3fe8e76a7264a16a              # double 0.77824899999999997
	.quad	0x3feed7b84db9c737              # double 0.96383300000000005
	.quad	0x3fd1d438d1d8a548              # double 0.27857799999999999
	.quad	0x3fe9fd933e35c5b5              # double 0.81220400000000004
	.quad	0x3fd37fbefd00713f              # double 0.304672
	.quad	0x3fd77de5082cf52c              # double 0.36705900000000002
	.quad	0x3f951f3e89a88ace              # double 0.020627
	.quad	0x3fd4da9003eea20a              # double 0.32584000000000002
	.quad	0x3fe8566adb402d17              # double 0.76054900000000003
	.quad	0x3fe7a8826aa8eb46              # double 0.73931999999999998
	.quad	0x3fe96f8055fbb518              # double 0.79486100000000004
	.quad	0x3fe9f381d7dbf488              # double 0.810975
	.quad	0x3fbe2b5a20ddc619              # double 0.117849
	.quad	0x3fc10acc0bdcad15              # double 0.13314200000000001
	.quad	0x3fe4ec69b5a63f9a              # double 0.65385899999999997
	.quad	0x3fea9717df19d66b              # double 0.83094400000000002
	.quad	0x3fe6fcaa7589efd8              # double 0.71834299999999995
	.quad	0x3fbb85b5b70691ea              # double 0.10750899999999999
	.quad	0x3fe98dc981beb181              # double 0.79855799999999999
	.quad	0x3f9a6b50b0f27bb3              # double 0.0258
	.quad	0x3fe85c28f5c28f5c              # double 0.76124999999999998
	.quad	0x3fc74d2f5dbb9cfa              # double 0.18204300000000001
	.quad	0x3fea749cf56eac86              # double 0.826735
	.quad	0x3fe63a860dcb9a9e              # double 0.69464400000000004
	.quad	0x3fc096d4c33b5393              # double 0.129603
	.quad	0x3fd4fe974a3400b9              # double 0.32803900000000003
	.quad	0x3fee75ad96a6a012              # double 0.95186499999999996
	.quad	0x3fc408e15011904b              # double 0.15652099999999999
	.quad	0x3fe4e2cdc011d367              # double 0.65268599999999999
	.quad	0x3fecd57bc7f77af6              # double 0.90105999999999997
	.quad	0x3fe420fd3b29a1ba              # double 0.629027
	.quad	0x3fec12556d19dece              # double 0.87723799999999996
	.quad	0x3fb6d46f587d6f97              # double 0.089178999999999994
	.quad	0x3fcc2ea0fd3b29a2              # double 0.22017300000000001
	.quad	0x3fdf3bf2f5558213              # double 0.48803400000000002
	.quad	0x3fa41f85d744f5d3              # double 0.039302999999999998
	.quad	0x3fa1eafee6fb4c3c              # double 0.034995999999999999
	.quad	0x3fd7f922962cfd8f              # double 0.374581
	.quad	0x3fd9950763a19008              # double 0.39972099999999999
	.quad	0x3fe681a1554fbdad              # double 0.70332399999999995
	.quad	0x3fe3116ebd4cfd09              # double 0.59587800000000002
	.quad	0x3fc7e518f3eccc47              # double 0.18667900000000001
	.quad	0x3fb496ededaec4a4              # double 0.080427999999999999
	.quad	0x3fbdffd60e94ee39              # double 0.117185
	.quad	0x3fe48229a5ebb774              # double 0.64088900000000004
	.quad	0x3fd7b749adc8fb87              # double 0.370562
	.quad	0x3fec0ab713272431              # double 0.87630799999999998
	.quad	0x3fe4958537e2c55d              # double 0.64325200000000005
	.quad	0x3fcc9d7342edbb5a              # double 0.223555
	.quad	0x3fd76cfc829cfdd2              # double 0.36602699999999999
	.quad	0x3fd4bd87b56b8738              # double 0.32406800000000002
	.quad	0x3fd1b7c7820a30db              # double 0.27684199999999998
	.quad	0x3fe7e18ac9f2fdb9              # double 0.746282
	.quad	0x3fd8694898f605ab              # double 0.38142599999999999
	.quad	0x3fd53c254a3c6434              # double 0.33179599999999998
	.quad	0x3fb6996312f4cf4a              # double 0.088277999999999995
	.quad	0x3feb75c8d9f9053a              # double 0.858128
	.quad	0x3fd05e39713ad5bf              # double 0.25575100000000001
	.quad	0x3fea50b30b5aa716              # double 0.82235100000000005
	.quad	0x3fe7631d712a0ec7              # double 0.73084899999999997
	.quad	0x3fe88605681ecd4b              # double 0.76636000000000004
	.quad	0x3fe429f9ce8d972d              # double 0.63012400000000002
	.quad	0x3fb68e60807357e6              # double 0.088109999999999993
	.quad	0x3fe87f9d6f112fd3              # double 0.76557799999999998
	.quad	0x3fe67f822bbecaac              # double 0.70306500000000005
	.quad	0x3fe206c43f5f9160              # double 0.56332599999999999
	.quad	0x3fd9a16a48733659              # double 0.40047700000000003
	.quad	0x3fd6a78f25a250f8              # double 0.35397699999999999
	.quad	0x3fef244c7b02d59d              # double 0.97318099999999996
	.quad	0x3feea1a0cf1800a8              # double 0.95723000000000002
	.quad	0x3fd4c5d63886594b              # double 0.324575
	.quad	0x3fc5b823c85c24c4              # double 0.169682
	.quad	0x3fd53369b9d7fd82              # double 0.33126299999999997
	.quad	0x3fb4f67b1c0010c7              # double 0.081886
	.quad	0x3fe51a9973d9ec70              # double 0.659497
	.quad	0x3fdd06705c896dd2              # double 0.45351799999999998
	.quad	0x3fbc22ab25b317f0              # double 0.109904
	.quad	0x3feccf312b1b36bd              # double 0.90029199999999998
	.quad	0x3f9f71a7e3087875              # double 0.030707000000000002
	.quad	0x3fe357470eb24a6b              # double 0.60440400000000005
	.quad	0x3fe081e8a2ec28b3              # double 0.51585800000000004
	.quad	0x3f9472c0e7bc3c5c              # double 0.019969000000000001
	.quad	0x3fe4860999dcb578              # double 0.64136199999999999
	.quad	0x3fb175afaf859429              # double 0.068201999999999999
	.quad	0x3fe0412f09d8c6d6              # double 0.50795699999999999
	.quad	0x3fea2de8709741d1              # double 0.81810400000000005
	.quad	0x3fe61fab96f21f6d              # double 0.69136600000000004
	.quad	0x3fd7d245b291b824              # double 0.37220900000000001
	.quad	0x3fe5c71715c63ae2              # double 0.68055299999999996
	.quad	0x3fd9d0b73d188f43              # double 0.403364
	.quad	0x3fc1673c4f3ba776              # double 0.135963
	.quad	0x3feace28ed5f138c              # double 0.83766600000000002
	.quad	0x3fcb84fd2a62aa19              # double 0.21499599999999999
	.quad	0x3fca21c044284dfd              # double 0.204155
	.quad	0x3feabca31e7d9989              # double 0.83552700000000002
	.quad	0x3fe827913e81450f              # double 0.75483
	.quad	0x3fe5dd4a5df2239e              # double 0.68326299999999995
	.quad	0x3fe7d86876e1dead              # double 0.74516700000000002
	.quad	0x3fe49157abb8800f              # double 0.64274200000000004
	.quad	0x3fd904c059210386              # double 0.39091500000000001
	.quad	0x3fa35a426bb55ac0              # double 0.037797999999999998
	.quad	0x3fe4986b9c304ccf              # double 0.64360600000000001
	.quad	0x3fd2a54c55432874              # double 0.29133900000000001
	.quad	0x3fedd20afa2f05a7              # double 0.93189
	.quad	0x3fe4dcebfec13b9f              # double 0.65196799999999999
	.quad	0x3faa96b3354c1227              # double 0.051930999999999998
	.quad	0x3fe7873bc903ea70              # double 0.73525799999999997
	.quad	0x3fef34117f84449e              # double 0.97510600000000003
	.quad	0x3f634ce3de6149c7              # double 0.002356
	.quad	0x3fd39b13165d3997              # double 0.30634
	.quad	0x3fdd565c2d278078              # double 0.45839600000000003
	.quad	0x3fdbb6a1e81cb46c              # double 0.43302200000000002
	.quad	0x3fe2817dae81882b              # double 0.57830700000000002
	.quad	0x3fdac9d9d3458cd2              # double 0.41857
	.quad	0x3fe2afd75e2046c7              # double 0.58396499999999996
	.quad	0x3fa9ff92f2b66b61              # double 0.050777999999999997
	.quad	0x3fec9e3c968943e1              # double 0.894316
	.quad	0x3feefecbb7f9d6f1              # double 0.96860299999999999
	.quad	0x3fcc2bbecaab8a5d              # double 0.220085
	.quad	0x3fde6045baf533f4              # double 0.47462599999999999
	.quad	0x3fecf3d3a1d323ff              # double 0.90476400000000001
	.quad	0x3fde27525460aa65              # double 0.47115000000000001
	.quad	0x3fd48ae31d712a0f              # double 0.32097700000000001
	.quad	0x3fe265ffa3b9ae0c              # double 0.57495099999999999
	.quad	0x3fdf94185058dde8              # double 0.49341400000000002
	.quad	0x3fdbc5e6ff7dfa01              # double 0.43395400000000001
	.quad	0x3fbe1fd1569f4906              # double 0.117673
	.quad	0x3fde25204af92296              # double 0.47101599999999999
	.quad	0x3fe7ef954eb13dfb              # double 0.74799599999999999
	.quad	0x3fd8b37867f0aa22              # double 0.38595400000000002
	.quad	0x3fd37418d6909aed              # double 0.30396099999999998
	.quad	0x3feba3ad18d25edd              # double 0.86373
	.quad	0x3fdc6876e1deacc9              # double 0.44387599999999999
	.quad	0x3fad0b524399b2c4              # double 0.056727
	.quad	0x3fd624cc6822ff09              # double 0.34599600000000003
	.quad	0x3fc3fe2a3cea6c1a              # double 0.156194
	.quad	0x3fc25b317efe0ce1              # double 0.14340800000000001
	.quad	0x3fe581e68a0d349c              # double 0.67210700000000001
	.quad	0x3fdee02a77a2cecd              # double 0.48243200000000003
	.quad	0x3fe3dd052934acb0              # double 0.62073
	.quad	0x3fe877dd872f33ca              # double 0.76463199999999998
	.quad	0x3fe525269595feda              # double 0.66078499999999996
	.quad	0x3fd01adea897635e              # double 0.25163999999999997
	.quad	0x3fdeb7f9d6f112fd              # double 0.47997899999999999
	.quad	0x3fe638c5436b8f9b              # double 0.69442999999999999
	.quad	0x3fef7064ece9a2c6              # double 0.98246999999999995
	.quad	0x3fd4103c8e25c811              # double 0.31349100000000002
	.quad	0x3fe7529131ec0b56              # double 0.72882899999999995
	.quad	0x3fea697f1f9acffa              # double 0.82537799999999995
	.quad	0x3fc05d7cb2d905c0              # double 0.12785299999999999
	.quad	0x3fedf67d34df04de              # double 0.93633900000000003
	.quad	0x3fddaffb04ee7c4a              # double 0.463866
	.quad	0x3fe42b649d388a8b              # double 0.630297
	.quad	0x3fdeecaeea63b689              # double 0.48319600000000001
	.quad	0x3fd2d25edd052935              # double 0.29409000000000002
	.quad	0x3fe3d04e618ce2d2              # double 0.61917800000000001
	.quad	0x3fd2c58255b035bd              # double 0.29330499999999998
	.quad	0x3fe2643cc07aaef3              # double 0.57473600000000002
	.quad	0x3fb7c1bda5119ce0              # double 0.092799999999999994
	.quad	0x3feba41c3efae792              # double 0.86378299999999997
	.quad	0x3fbbbaecd07852f8              # double 0.108321
	.quad	0x3fece3e29307af21              # double 0.90281800000000001
	.quad	0x3fe50dcdb37c99af              # double 0.65793500000000005
	.quad	0x3fedaeafab53d641              # double 0.92757400000000001
	.quad	0x3fe81886df82b1f7              # double 0.75299400000000005
	.quad	0x3fd42cf95d4e8fb0              # double 0.315245
	.quad	0x3fef9ea78af3e469              # double 0.98811700000000002
	.quad	0x3f9a7f8012dfd695              # double 0.025877000000000001
	.quad	0x3fdd1eff9f87f024              # double 0.455017
	.quad	0x3feceb313be22e5e              # double 0.90371000000000001
	.quad	0x3fc9ca18bd66277c              # double 0.20147999999999999
	.quad	0x3fa94fce746cb967              # double 0.049437000000000002
	.quad	0x3fe07e32a0663c75              # double 0.515405
	.quad	0x3fc7af42784a9479              # double 0.18503600000000001
	.quad	0x3fa475818c5c9a35              # double 0.039959000000000001
	.quad	0x3febcc22ee41919b              # double 0.86866900000000002
	.quad	0x3fd18c21e1d2178f              # double 0.27417799999999998
	.quad	0x3fdd70da5daf07c0              # double 0.46001300000000001
	.quad	0x3fe5115bdd76683c              # double 0.65836899999999998
	.quad	0x3fe562e09fe86834              # double 0.66832000000000003
	.quad	0x3fd1babead4f5904              # double 0.27702300000000002
	.quad	0x3fc10574b407032a              # double 0.13297900000000001
	.quad	0x3fd83d4ae429e0a4              # double 0.37874099999999999
	.quad	0x3fe841ce6c093d96              # double 0.75803299999999996
	.quad	0x3fd53393ab430f49              # double 0.33127299999999998
	.quad	0x3fece82d7b634dad              # double 0.90334199999999998
	.quad	0x3fb68e92d55a3a08              # double 0.088112999999999997
	.quad	0x3fcce4f3343fa2ad              # double 0.22573699999999999
	.quad	0x3feeededaec4a409              # double 0.96654399999999995
	.quad	0x3fdeb95e5aff2a17              # double 0.48006399999999999
	.quad	0x3feb34f82f512663              # double 0.85021599999999997
	.quad	0x3fa397785729b281              # double 0.038265
	.quad	0x3fe1cc61d8622c45              # double 0.556199
	.quad	0x3fd637fbefd00714              # double 0.347167
	.quad	0x3fed148fd9fd36f8              # double 0.90876000000000001
	.quad	0x3fcbe3d1cc100e6b              # double 0.21789
	.quad	0x3febfcd67fd3f5b6              # double 0.874614
	.quad	0x3f95b18548a9bcfd              # double 0.021184999999999999
	.quad	0x3f6f83be6601bc99              # double 0.0038470000000000002
	.quad	0x3fe145a8155d5f57              # double 0.53975300000000004
	.quad	0x3fc6771c970f7b9e              # double 0.17551
	.quad	0x3feb7ace67d77fae              # double 0.85874099999999998
	.quad	0x3fd965907d912557              # double 0.39682400000000001
	.quad	0x3fd41b866e43aa7a              # double 0.31418000000000001
	.quad	0x3fdb7fae3608d089              # double 0.42966799999999999
	.quad	0x3fcadf505d0fa58f              # double 0.20993999999999999
	.quad	0x3fe313ea2d2fe3f3              # double 0.59618099999999996
	.quad	0x3fcf21ee675147f1              # double 0.24322299999999999
	.quad	0x3fe5c8f75536933a              # double 0.680782
	.quad	0x3fe0dffa3b9ae0c1              # double 0.52734099999999995
	.quad	0x3fb0816f0068db8c              # double 0.064475000000000005
	.quad	0x3fc80cf9e3864cb6              # double 0.18789600000000001
	.quad	0x3f97ae9ab29e4d5e              # double 0.023127000000000002
	.quad	0x3fef4a4b124d099e              # double 0.97781899999999999
	.quad	0x3fcbb738e6d15ad1              # double 0.216529
	.quad	0x3fdd34373f316e37              # double 0.456312
	.quad	0x3fd08cbd1244a622              # double 0.25858999999999999
	.quad	0x3fd30afa2f05a709              # double 0.297545
	.quad	0x3fb4197e56473472              # double 0.078514
	.quad	0x3fe460956c0d6f54              # double 0.63678999999999997
	.quad	0x3fd8145953586ca9              # double 0.37624200000000002
	.quad	0x3fd47bd05af6c69b              # double 0.32005699999999998
	.quad	0x3fe7b16e37154003              # double 0.74040899999999998
	.quad	0x3fd295f2452c59fb              # double 0.29040199999999999
	.quad	0x3fe3ffaa044ae85c              # double 0.62495900000000004
	.quad	0x3fc977d955714b9d              # double 0.19897000000000001
	.quad	0x3fef157eed45e918              # double 0.97137399999999995
	.quad	0x3fd8b5d031055b8a              # double 0.38609700000000002
	.quad	0x3fc9e76c8b439581              # double 0.202375
	.quad	0x3fc4b862b27cbf6e              # double 0.16187699999999999
	.quad	0x3fd938433d6c7219              # double 0.39405899999999999
	.quad	0x3fe870f5a1016ce8              # double 0.76378900000000005
	.quad	0x3fef82d9cf13ceea              # double 0.98472300000000001
	.quad	0x3fd4a10e02214270              # double 0.32233000000000001
	.quad	0x3fe68e7bc3c5bd0e              # double 0.70489299999999999
	.quad	0x3fe9f9e16d6dc1a4              # double 0.81175299999999994
	.quad	0x3fe0db22d0e56042              # double 0.52675000000000005
	.quad	0x3fed8f062d40aaeb              # double 0.923709
	.quad	0x3feb3d8e0008637c              # double 0.85126400000000002
	.quad	0x3fe28fabda0dfdf0              # double 0.58003800000000005
	.quad	0x3fe247991bc55864              # double 0.57123999999999997
	.quad	0x3fd93d5bab21815a              # double 0.39437
	.quad	0x3fe3dc7ef177a701              # double 0.62066600000000005
	.quad	0x3fed0f062d40aaeb              # double 0.908084
	.quad	0x3fe187d0aed99cbf              # double 0.54782900000000001
	.quad	0x3fefaec28b2a6b0e              # double 0.99008300000000005
	.quad	0x3fe9196312f4cf4a              # double 0.78434899999999996
	.quad	0x3fc8d6dc1a47a9e3              # double 0.19405700000000001
	.quad	0x3fe934d056c508b3              # double 0.78769699999999998
	.quad	0x3fc79a95421c0443              # double 0.18440500000000001
	.quad	0x3fe1d58a76102795              # double 0.55731699999999995
	.quad	0x3feda84be40420f7              # double 0.92679400000000001
	.quad	0x3fdb19157abb8801              # double 0.423406
	.quad	0x3fe66e696a26e547              # double 0.70097799999999999
	.quad	0x3fc5c2224edf6124              # double 0.169987
	.quad	0x3fd7c68a936c58ef              # double 0.37149300000000002
	.quad	0x3fe966772d5e071c              # double 0.79375799999999996
	.quad	0x3fe5071a3b14a904              # double 0.65711699999999995
	.quad	0x3f8b48909289dae0              # double 0.013322000000000001
	.quad	0x3fcd84449dbec248              # double 0.230599
	.quad	0x3fc7cebfec13b9f1              # double 0.185997
	.quad	0x3fc7e21d96e9bbf1              # double 0.186588
	.quad	0x3fba3f4666ec9e23              # double 0.10252799999999999
	.quad	0x3febd4bcf0b6b6e1              # double 0.86971900000000002
	.quad	0x3fd523aafff36ac6              # double 0.33030199999999998
	.quad	0x3fadd41fa7653437              # double 0.058258999999999998
	.quad	0x3fe4a2ab25b317f0              # double 0.64485700000000001
	.quad	0x3fe5d0bfa0945f9e              # double 0.681732
	.quad	0x3fe8a647fdc5931d              # double 0.77029800000000004
	.quad	0x3fe80c436fc158fb              # double 0.75149699999999997
	.quad	0x3fe7480e8c8abd5e              # double 0.72754600000000003
	.quad	0x3fe5bb14a90470a8              # double 0.679087
	.quad	0x3fb474d9c6b0531a              # double 0.079908000000000006
	.quad	0x3fd838151a437825              # double 0.37842300000000001
	.quad	0x3feefce0fc2eba28              # double 0.96836900000000003
	.quad	0x3fea909070fbeb9e              # double 0.83014699999999997
	.quad	0x3fd739d5e4a38327              # double 0.36290499999999998
	.quad	0x3fc8706d50657321              # double 0.19093099999999999
	.quad	0x3fed3884406c00da              # double 0.91314899999999999
	.quad	0x3fedc046412cf0fa              # double 0.92972100000000002
	.quad	0x3f9062d40aaeafab              # double 0.016001999999999999
	.quad	0x3fd6fa7221858bc6              # double 0.35903600000000002
	.quad	0x3fe800c308feac43              # double 0.75009300000000001
	.quad	0x3fe8c4b6e935b91f              # double 0.77401299999999995
	.quad	0x3fed0efdc9c4da90              # double 0.90808
	.quad	0x3f55ca6ca03c4b0a              # double 0.00133
	.quad	0x3f9930be0ded288d              # double 0.0246
	.quad	0x3fe0fb82c2bd7f52              # double 0.53070200000000001
	.quad	0x3fe1cee7c49fd7a1              # double 0.55650699999999997
	.quad	0x3fe19042d8c2a455              # double 0.54886000000000001
	.quad	0x3fe75dd6e04c0592              # double 0.73020499999999999
	.quad	0x3fb8901d19157abc              # double 0.095949000000000006
	.quad	0x3fd7a3e39f77292c              # double 0.36937799999999998
	.quad	0x3fd23a9b06812381              # double 0.284827
	.quad	0x3fd80dd82fd75e20              # double 0.37584499999999998
	.quad	0x3fad64302b40f66a              # double 0.057404999999999998
	.quad	0x3fc985ad538ac190              # double 0.19939200000000001
	.quad	0x3fd3b29e4d5d80e5              # double 0.30777700000000002
	.quad	0x3fec427c7c5260f6              # double 0.88311600000000001
	.quad	0x3fd4133c1ce6c094              # double 0.31367400000000001
	.quad	0x3fddbd7f51efb6dd              # double 0.46469100000000002
	.quad	0x3fc0f901083dbc23              # double 0.13259899999999999
	.quad	0x3fba6256366d7a57              # double 0.103063
	.quad	0x3fd33f034b0e1b4c              # double 0.30072100000000002
	.quad	0x3fa26bd6e8af8162              # double 0.035978999999999997
	.quad	0x3fc3fcc9ea9a3d2e              # double 0.15615200000000001
	.quad	0x3fd43269df97aaac              # double 0.315577
	.quad	0x3febd8ba40d90e24              # double 0.87020600000000003
	.quad	0x3fd8dec5f394b7b3              # double 0.38859700000000003
	.quad	0x3fc2bf22c01e68a1              # double 0.146458
	.quad	0x3fee7adf2ecf2064              # double 0.95249899999999998
	.quad	0x3fa2e1cde5d18091              # double 0.036879000000000002
	.quad	0x3fed98244e93e1ca              # double 0.92482200000000003
	.quad	0x3fc07589efd86a90              # double 0.12858700000000001
	.quad	0x3fe17ec3547e0696              # double 0.54672399999999999
	.quad	0x3f648ba83f4eca68              # double 0.0025079999999999998
	.quad	0x3f9d51f81a5870da              # double 0.028632999999999999
	.quad	0x3fea3912dba4d6e4              # double 0.81946699999999994
	.quad	0x3fa4eb78897e9963              # double 0.040858999999999999
	.quad	0x3fa7e7c06e19b90f              # double 0.046690000000000002
	.quad	0x3fad05af6c69b5a6              # double 0.056683999999999998
	.quad	0x3fd8d477bbf93ff2              # double 0.38796799999999998
	.quad	0x3fdbb00ffda4052d              # double 0.43262099999999998
	.quad	0x3fd328522ea0fd3b              # double 0.29933599999999999
	.quad	0x3fdc1c7de5082cf5              # double 0.43923899999999999
	.quad	0x3fdd2d490e66cb10              # double 0.45588899999999999
	.quad	0x3fe0b74ff865d7cb              # double 0.52237699999999998
	.quad	0x3fe0fd651b0ccbc0              # double 0.53093199999999996
	.quad	0x3fdde820e6299525              # double 0.46729300000000001
	.quad	0x3fe434528283d35f              # double 0.63138700000000003
	.quad	0x3fefc4156e264e48              # double 0.99268599999999995
	.quad	0x3feb7487fcb923a3              # double 0.85797500000000004
	.quad	0x3fe5a48b65237048              # double 0.67633600000000005
	.quad	0x3fef0cf5b1c86488              # double 0.97033199999999997
	.quad	0x3fc5227d028a1dfc              # double 0.16511500000000001
	.quad	0x3fe85a6e75ff609e              # double 0.76103900000000002
	.quad	0x3fbd7396d0917d6b              # double 0.11504499999999999
	.quad	0x3fe98ce4ead0c3d2              # double 0.79844899999999996
	.quad	0x3fead3868fd199bb              # double 0.83832099999999998
	.quad	0x3fee034091c08744              # double 0.93789699999999998
	.quad	0x3fcf4b2745bf26f2              # double 0.244481
	.quad	0x3fe4ed5ae1cde5d2              # double 0.65397400000000006
	.quad	0x3feea237cdcca70d              # double 0.95730199999999999
	.quad	0x3fc3fbc5de9c022a              # double 0.15612100000000001
	.quad	0x3fe2cf5f4e4430b1              # double 0.58781399999999995
	.quad	0x3fe0f6427c7c5261              # double 0.530061
	.quad	0x3f96ff3ade225fa6              # double 0.022457999999999999
	.quad	0x3fea16e58a32f449              # double 0.81529499999999999
	.quad	0x3fdd0d349be8ff32              # double 0.45393099999999997
	.quad	0x3fdc9ad85dfa871a              # double 0.44695099999999999
	.quad	0x3fe942917507e9d9              # double 0.78937599999999997
	.quad	0x3fe68b7e4de3b8a2              # double 0.70452800000000004
	.quad	0x3fd468f4b61fe21e              # double 0.31890600000000002
	.quad	0x3fc863b688bda943              # double 0.19054299999999999
	.quad	0x3fe516b76709fa55              # double 0.65902300000000003
	.quad	0x3fd66d0917d6b65b              # double 0.35040500000000002
	.quad	0x3fd40092ccf6be38              # double 0.31253500000000001
	.quad	0x3fe2051654d61b2a              # double 0.56312099999999998
	.quad	0x3fd862cfd8f0c77e              # double 0.38103100000000001
	.quad	0x3feed97d49d7ba67              # double 0.96404900000000004
	.quad	0x3fd63fa2ad3e920c              # double 0.347634
	.quad	0x3fdfe82949a56580              # double 0.49854500000000002
	.quad	0x3fe9c86f049a9974              # double 0.80571700000000001
	.quad	0x3fcada09cc319c5a              # double 0.20977899999999999
	.quad	0x3fead41fa7653437              # double 0.83839399999999997
	.quad	0x3feee94ee392e1ef              # double 0.96597999999999994
	.quad	0x3fece3c968943e10              # double 0.902806
	.quad	0x3feb89dcf893faf4              # double 0.86057899999999998
	.quad	0x3fe988d2a1f8e3ac              # double 0.79795199999999999
	.quad	0x3fe0a6c7eae5bc88              # double 0.52035900000000002
	.quad	0x3feb986338b47c74              # double 0.862352
	.quad	0x3f954eb13dfb0d52              # double 0.020808
	.quad	0x3fed403148776816              # double 0.91408599999999995
	.quad	0x3fee90624dd2f1aa              # double 0.955125
	.quad	0x3fd8d9988d2a1f8e              # double 0.38828099999999999
	.quad	0x3fc9d6733ebbfd72              # double 0.20185700000000001
	.quad	0x3fce5eedcc20d563              # double 0.23727200000000001
	.quad	0x3fecc4ef88b97785              # double 0.89903999999999995
	.quad	0x3fe39934efcbd556              # double 0.612452
	.quad	0x3feb601797cc3a00              # double 0.85548000000000002
	.quad	0x3fe1ce1c58255b03              # double 0.55640999999999996
	.quad	0x3fdaff0cbaf965b2              # double 0.421817
	.quad	0x3fe9a4d099e0e736              # double 0.801369
	.quad	0x3fa686e7e62dc6e3              # double 0.043998000000000002
	.quad	0x3fe4297e132b55ef              # double 0.63006499999999999
	.quad	0x3fe650b955f7835a              # double 0.69735400000000003
	.quad	0x3fb8a1ad6451b930              # double 0.096216999999999996
	.quad	0x3fd5cec41dd1a21f              # double 0.34074500000000002
	.quad	0x3fb012cf0f9d2bf5              # double 0.062786999999999996
	.quad	0x3fe718c7e28240b8              # double 0.72177500000000006
	.quad	0x3fe673215fcc1872              # double 0.70155400000000001
	.quad	0x3fefd7ecbb7f9d6f              # double 0.99510799999999999
	.quad	0x3fdb8bbd3804534c              # double 0.43040400000000001
	.quad	0x3fa00303c07ee0b1              # double 0.031273000000000002
	.quad	0x3fe292189bd8383b              # double 0.58033400000000002
	.quad	0x3fb89e98dcdb37ca              # double 0.096170000000000005
	.quad	0x3fd360285ec3dab6              # double 0.30274400000000001
	.quad	0x3fd6aeb3dd11be6e              # double 0.35441299999999998
	.quad	0x3fda940bbb1f255f              # double 0.41528599999999999
	.quad	0x3fd11aac53b0813d              # double 0.26725300000000002
	.quad	0x3fcb5e6bc621b7e1              # double 0.21381900000000001
	.quad	0x3feae5abc0e38a7e              # double 0.84053599999999995
	.quad	0x3fedf589efd86a90              # double 0.93622300000000003
	.quad	0x3fed8e23af31b153              # double 0.92360100000000001
	.quad	0x3fdf2ea0fd3b29a2              # double 0.48722100000000002
	.quad	0x3fcc0d0247021d11              # double 0.21914700000000001
	.quad	0x3fdc5ccc89b0ee4a              # double 0.443164
	.quad	0x3fe5ecce5f7403de              # double 0.68515700000000002
	.quad	0x3fd540852b4d8ba4              # double 0.332063
	.quad	0x3fe6510f51ac9afe              # double 0.69739499999999999
	.quad	0x3feb257646ae3a3b              # double 0.84832300000000005
	.quad	0x3feb0dcb9a9da598              # double 0.84543400000000002
	.quad	0x3fd0597d49d7ba67              # double 0.25546200000000002
	.quad	0x3fd66b97fe8ee6b8              # double 0.35031699999999999
	.quad	0x3fa6534373f316e3              # double 0.043603999999999997
	.quad	0x3fa0a86d71f36263              # double 0.032535000000000001
	.quad	0x3fee1aa3f034b0e2              # double 0.94075200000000003
	.quad	0x3fe72ae4b0186120              # double 0.72398600000000002
	.quad	0x3fdb19934efcbd55              # double 0.42343599999999998
	.quad	0x3fe9532e7b3d8e00              # double 0.791404
	.quad	0x3fd1f4906034f3fe              # double 0.28055200000000002
	.quad	0x3fe7f97edc7ef178              # double 0.74920600000000004
	.quad	0x3fa0151a437824d5              # double 0.031411000000000001
	.quad	0x3fc2950763a19008              # double 0.145173
	.quad	0x3fd57f6f4be835df              # double 0.33590300000000001
	.quad	0x3fe469531550ca1d              # double 0.63785700000000001
	.quad	0x3fc3faebc408d8ed              # double 0.15609500000000001
	.quad	0x3fc67f13059641f6              # double 0.17575299999999999
	.quad	0x3fe763baba7b9171              # double 0.73092400000000002
	.quad	0x3fee39c304ccee5b              # double 0.94455100000000003
	.quad	0x3fda41dd1a21ea36              # double 0.41027000000000002
	.quad	0x3fb0eb13dfb0d520              # double 0.066087000000000007
	.quad	0x3fd9f5f91600f345              # double 0.405638
	.quad	0x3fee807dd4413554              # double 0.95318499999999994
	.quad	0x3fe707ce95faa8a8              # double 0.71970299999999998
	.quad	0x3fec215336deb95e              # double 0.87906799999999996
	.quad	0x3f940af1cb89d6ae              # double 0.019573
	.quad	0x3feee79cc74b838c              # double 0.96577299999999999
	.quad	0x3fe6c3f3e0370cdd              # double 0.71142000000000005
	.quad	0x3fd5bfd2e9468017              # double 0.339833
	.quad	0x3fe16e47dc37a3db              # double 0.54471199999999997
	.quad	0x3fe968dda48b6523              # double 0.79405099999999995
	.quad	0x3fd45d7cb2d905c0              # double 0.31820599999999999
	.quad	0x3feca3d0bfa09460              # double 0.89499700000000004
	.quad	0x3fd75d0b73d188f4              # double 0.36505399999999999
	.quad	0x3fc18644523f67f5              # double 0.13691
	.quad	0x3fe66c0f88333fc8              # double 0.70069099999999995
	.quad	0x3fe86a18372e6a77              # double 0.76295100000000005
	.quad	0x3fecad0c3d25247d              # double 0.89612400000000003
	.quad	0x3fd3bbbe878fabda              # double 0.308334
	.quad	0x3fed5490e66cb103              # double 0.91657299999999997
	.quad	0x3fcb9d6f112fd32c              # double 0.21574199999999999
	.quad	0x3fea8902de00d1b7              # double 0.82922499999999999
	.quad	0x3fd6f39085f4a127              # double 0.35861599999999999
	.quad	0x3faaec8d5c74751d              # double 0.052586000000000001
	.quad	0x3fc80f0a5efe9318              # double 0.18795899999999999
	.quad	0x3fe78dbad3a604e2              # double 0.73605100000000001
	.quad	0x3fe1ec7c957cd467              # double 0.560118
	.quad	0x3fcb968512231833              # double 0.215531
	.quad	0x3feed7eed45e9186              # double 0.96385900000000002
	.quad	0x3fd3ad9f0a1be2b5              # double 0.30747200000000002
	.quad	0x3fdeda5daf07bfe8              # double 0.48207800000000001
	.quad	0x3fd2f78feef5ec81              # double 0.29636000000000001
	.quad	0x3fc2d76ab5807fed              # double 0.147199
	.quad	0x3fd66544fe36d224              # double 0.34993099999999999
	.quad	0x3fe86e75ff609dd0              # double 0.76348400000000005
	.quad	0x3fe45232d2bb2357              # double 0.63503399999999999
	.quad	0x3fe401adea897636              # double 0.62520500000000001
	.quad	0x3f905ea24cc68230              # double 0.015986
	.quad	0x3fe2b3636f3b213e              # double 0.58439799999999997
	.quad	0x3fee0344c37e6f72              # double 0.93789900000000004
	.quad	0x3fe6ed288ce703b0              # double 0.71645000000000003
	.quad	0x3fedf9378ee28672              # double 0.93667199999999995
	.quad	0x3fd5170d62bf11f9              # double 0.32953199999999999
	.quad	0x3fcc5ba6efc371da              # double 0.22154699999999999
	.quad	0x3fe1b9d5e4a38327              # double 0.55393499999999996
	.quad	0x3fec2cc70867ad8e              # double 0.88046599999999997
	.quad	0x3feaa15336deb95e              # double 0.83219299999999996
	.quad	0x3fe4fa11a975afb0              # double 0.65552600000000005
	.quad	0x3fc0ae31d712a0ec              # double 0.13031599999999999
	.quad	0x3fe0f414a4d2b2c0              # double 0.52979500000000002
	.quad	0x3fd98487b99d4520              # double 0.39871400000000001
	.quad	0x3fd6c2f405f6ba06              # double 0.35564899999999999
	.quad	0x3fef6e34fc610f0f              # double 0.98220300000000004
	.quad	0x3fe91f127f5e84f1              # double 0.78504300000000005
	.quad	0x3fe8e22c45026890              # double 0.77760899999999999
	.quad	0x3fd9157abb8800eb              # double 0.39193600000000001
	.quad	0x3fef3f6a0dbad3a6              # double 0.976491
	.quad	0x3fa9dd3bafd976ff              # double 0.050515999999999998
	.quad	0x3fd0d3e920c069e8              # double 0.262934
	.quad	0x3fb375a74c09c3ce              # double 0.076013999999999998
	.quad	0x3fe75fb9389b5200              # double 0.73043499999999995
	.quad	0x3fe0a86d71f36263              # double 0.52056000000000002
	.quad	0x3fd04751ce28ed5f              # double 0.254353
	.quad	0x3fe9f359ff4fd6d8              # double 0.81095600000000001
	.quad	0x3fe2e15a8deb0fae              # double 0.59000900000000001
	.quad	0x3fd3d89ce4a7b4e5              # double 0.31009599999999998
	.quad	0x3fdc1422ccb3a259              # double 0.43872899999999998
	.quad	0x3fd2edfe75bc44bf              # double 0.29577599999999998
	.quad	0x3fe540b5675579af              # double 0.66414899999999999
	.quad	0x3fe99f46ed245b29              # double 0.80069299999999999
	.quad	0x3fdc94f69ca9ef52              # double 0.44659199999999999
	.quad	0x3fd3c271fff79c84              # double 0.30874299999999999
	.quad	0x3fdcd3aa369fcf3e              # double 0.45041900000000001
	.quad	0x3fd969a4df47f994              # double 0.39707300000000001
	.quad	0x3feb1068986fcdee              # double 0.84575299999999998
	.quad	0x3fec28b2a6b0d951              # double 0.87996799999999997
	.quad	0x3feeb5bf6a0dbad4              # double 0.95968600000000003
	.quad	0x3fd225e56cd6c2f0              # double 0.28356300000000001
	.quad	0x3fef0b7c3504c48b              # double 0.97015200000000001
	.quad	0x3fe5981e03f70585              # double 0.67481899999999995
	.quad	0x3febbd25247cb70b              # double 0.86683900000000003
	.quad	0x3fe42ce032db1e9f              # double 0.63047799999999998
	.quad	0x3fc2999dcb5781c7              # double 0.145313
	.quad	0x3fe1ab55ef1fddec              # double 0.55216500000000002
	.quad	0x3fe8bcc6c54bcf0b              # double 0.77304399999999995
	.quad	0x3fae496ededaec4a              # double 0.059153999999999998
	.quad	0x3fe36f62f9ca5bd9              # double 0.60734699999999997
	.quad	0x3fe44ba51a005c46              # double 0.63423399999999996
	.quad	0x3fd1ae147ae147ae              # double 0.27625
	.quad	0x3fec72f9873ffac2              # double 0.88903500000000002
	.quad	0x3fea8ccff21b3aef              # double 0.82968900000000001
	.quad	0x3fcba51a005c4652              # double 0.215976
	.quad	0x3fe4bf487fcb923a              # double 0.64834999999999998
	.quad	0x3fcd6f5caf2d7f95              # double 0.229961
	.quad	0x3fe5197c3d68405b              # double 0.65936099999999997
	.quad	0x3fd1bf7ad4b2745c              # double 0.277312
	.quad	0x3fe0fec7863beec4              # double 0.53110100000000005
	.quad	0x3fe23018611fd588              # double 0.56837099999999996
	.quad	0x3fdd7d6733ebbfd7              # double 0.46077899999999999
	.quad	0x3fc1df19d66adb40              # double 0.139621
	.quad	0x3fee52391d57ff9b              # double 0.94753699999999996
	.quad	0x3fea2d81adea8976              # double 0.81805499999999998
	.quad	0x3feb24484944ed70              # double 0.84817900000000002
	.quad	0x3fe6801b43526528              # double 0.70313800000000004
	.quad	0x3fecfacc4ef88b97              # double 0.90561499999999995
	.quad	0x3fd5305100a393ee              # double 0.33107399999999998
	.quad	0x3fd4d712a0ec7432              # double 0.325627
	.quad	0x3fef4aea747d805e              # double 0.97789499999999996
	.quad	0x3fe8035dedf1e083              # double 0.75041100000000005
	.quad	0x3fe4ad55a3a08399              # double 0.64615900000000004
	.quad	0x3fca4d7f0ed3d85a              # double 0.20549000000000001
	.quad	0x3fd82324c8366517              # double 0.37714500000000001
	.quad	0x3fe5d4de7ea5f84d              # double 0.68223500000000004
	.quad	0x3fe10e3ac0c62e4d              # double 0.53298699999999999
	.quad	0x3fda2253111f0c35              # double 0.40834500000000001
	.quad	0x3fe88409e55c0fcb              # double 0.76611799999999997
	.quad	0x3fec9d0c80410300              # double 0.89417100000000005
	.quad	0x3feab99d451fc4c1              # double 0.83515799999999996
	.quad	0x3fd9bba12b5e529c              # double 0.40207700000000002
	.quad	0x3fed0ab4fa48301a              # double 0.90755699999999995
	.quad	0x3fe48e90bc7b45f1              # double 0.64240299999999995
	.quad	0x3fe59f623076c051              # double 0.67570600000000003
	.quad	0x3fe154738a3b57c5              # double 0.54155900000000001
	.quad	0x3fe8fd73c9257860              # double 0.78093900000000004
	.quad	0x3fb1192641b328b7              # double 0.066790000000000002
	.quad	0x3fcc3193f6c2699c              # double 0.22026299999999999
	.quad	0x3fec2b27cbf6e3f8              # double 0.88026800000000005
	.quad	0x3fcae8f29d40ee07              # double 0.210234
	.quad	0x3fd7903211cb039f              # double 0.368176
	.quad	0x3fd37852f7f498c4              # double 0.30421900000000002
	.quad	0x3fd86dd69d30270f              # double 0.38170399999999999
	.quad	0x3fd9e0f3cb3e5754              # double 0.40435500000000002
	.quad	0x3fe7fc47e49b1fac              # double 0.74954600000000004
	.quad	0x3fe3aa6d26740810              # double 0.61455400000000004
	.quad	0x3fea7312b1b36bd3              # double 0.82654700000000003
	.quad	0x3fe5b9192641b329              # double 0.67884500000000003
	.quad	0x3f938433d6c72192              # double 0.019059
	.quad	0x3fe196249a133c1d              # double 0.54957800000000001
	.quad	0x3fe23fc0096feb4a              # double 0.57028199999999996
	.quad	0x3fea54e09784ec63              # double 0.82286099999999995
	.quad	0x3feb197a24894c44              # double 0.84685999999999994
	.quad	0x3fe223854046412d              # double 0.56683600000000001
	.quad	0x3fd5d4801f75104d              # double 0.34109499999999998
	.quad	0x3fdc6d330941c821              # double 0.44416499999999998
	.quad	0x3fdce2da554b8bf0              # double 0.45134600000000002
	.quad	0x3fea83fb3743632c              # double 0.82861099999999998
	.quad	0x3fe9a0ec74320104              # double 0.80089399999999999
	.quad	0x3fd607357e670e2c              # double 0.34419
	.quad	0x3fbc080f98fa3769              # double 0.109498
	.quad	0x3fef6d58c8eef1bb              # double 0.98209800000000002
	.quad	0x3fe8792d1287c201              # double 0.76479200000000003
	.quad	0x3fecb519bd4067cf              # double 0.89710699999999999
	.quad	0x3feac06c00da1a93              # double 0.83598899999999998
	.quad	0x3fedd041cc532a49              # double 0.93167199999999994
	.quad	0x3fe3b519bd4067cf              # double 0.61585699999999999
	.quad	0x3fd1f08461f9f01c              # double 0.28030500000000003
	.quad	0x3fe2f570c564f97f              # double 0.59246100000000002
	.quad	0x3fe059641f644956              # double 0.51091200000000003
	.quad	0x3fbc7f23cc8de2ac              # double 0.111315
	.quad	0x3feba92a30553261              # double 0.86439999999999995
	.quad	0x3fdd8c8259e1f3a5              # double 0.46170099999999997
	.quad	0x3fcbda597d49d7ba              # double 0.21760099999999999
	.quad	0x3fbd57abb8800eae              # double 0.114619
	.quad	0x3fd4055757d5a9eb              # double 0.31282599999999999
	.quad	0x3feb158fb43d89ce              # double 0.84638199999999997
	.quad	0x3fb96f9767903212              # double 0.099359000000000002
	.quad	0x3feea0a73f748a16              # double 0.95711100000000005
	.quad	0x3fb430a0b1bbcf4f              # double 0.078867000000000007
	.quad	0x3fe97685985ad539              # double 0.79571800000000004
	.quad	0x3fe5d8cd20afa2f0              # double 0.68271499999999996
	.quad	0x3fdd62aa19439de5              # double 0.45914700000000003
	.quad	0x3fd9003ab862b27d              # double 0.39063900000000001
	.quad	0x3fd440639d5e4a38              # double 0.31642999999999999
	.quad	0x3fa323571d1d4739              # double 0.037379000000000003
	.quad	0x3fed4ce5f7403dde              # double 0.91563700000000003
	.quad	0x3fe425f202107b78              # double 0.62963199999999997
	.quad	0x3fec60eb67c286f9              # double 0.88683100000000004
	.quad	0x3fe47fcb923a29c7              # double 0.64059999999999995
	.quad	0x3fe97820a30db6a2              # double 0.79591400000000001
	.quad	0x3fdb32830a0b1bbd              # double 0.424958
	.quad	0x3fc96d4c33b53932              # double 0.19864799999999999
	.quad	0x3fde3b46fdeb52ca              # double 0.47236800000000001
	.quad	0x3fef20dfdef8487c              # double 0.97276300000000004
	.quad	0x3faf5be5d9e40c84              # double 0.061247999999999997
	.quad	0x3fa401c4fc1df330              # double 0.039076
	.quad	0x3fec9b97353b4b30              # double 0.89399300000000004
	.quad	0x3fe84b07d0aed99d              # double 0.75915900000000003
	.quad	0x3fe6129aa1d755bd              # double 0.68977100000000002
	.quad	0x3f7b4784230fcf81              # double 0.0066600000000000001
	.quad	0x3fe62e6a76965f52              # double 0.69316599999999995
	.quad	0x3fe87fda4052d667              # double 0.76560700000000004
	.quad	0x3feb8470a808c826              # double 0.85991700000000004
	.quad	0x3fcee685db76b3bc              # double 0.24141000000000001
	.quad	0x3fd31309c7ffde72              # double 0.298037
	.quad	0x3fcb43d03968d75a              # double 0.213007
	.quad	0x3fe55e481f53825e              # double 0.66775899999999999
	.quad	0x3fdb305d95dd4c77              # double 0.42482700000000001
	.quad	0x3fd9ebe596c82e02              # double 0.40502300000000002
	.quad	0x3fe4b226c3b927d4              # double 0.64674699999999996
	.quad	0x3fc2438088509bfa              # double 0.14268500000000001
	.quad	0x3fe962584f4c6e6e              # double 0.79325500000000004
	.quad	0x3f98d21bc126a65d              # double 0.024239
	.quad	0x3faecaeea63b688c              # double 0.060142000000000001
	.quad	0x3fc2282c6ef3d3a2              # double 0.141851
	.quad	0x3fee103ea704bc27              # double 0.93948299999999996
	.quad	0x3fd2f8d716d2aa5c              # double 0.29643799999999998
	.quad	0x3fefcf2cf95d4e90              # double 0.99404000000000003
	.quad	0x3fd5ef6f8f041462              # double 0.34273900000000002
	.quad	0x3fe62f48c2e770bd              # double 0.693272
	.quad	0x3fe3d8e432441feb              # double 0.62022600000000006
	.quad	0x3fe158d5842b734b              # double 0.54209399999999996
	.quad	0x3fdaa46173b85e81              # double 0.41628300000000001
	.quad	0x3fef6108c3f3e037              # double 0.98059499999999999
	.quad	0x3fd5dd65a14488c6              # double 0.341638
	.quad	0x3feb64345cfede98              # double 0.85598200000000002
	.quad	0x3fd79070fbeb9e49              # double 0.36819099999999999
	.quad	0x3fe8fcdab191dde3              # double 0.78086599999999995
	.quad	0x3fd4353f7ced9168              # double 0.31574999999999998
	.quad	0x3fceaa433508f649              # double 0.23957100000000001
	.quad	0x3fd23400b88ca3e8              # double 0.28442400000000001
	.quad	0x3fe87ce95faa8a83              # double 0.76524800000000004
	.quad	0x3fc5a34ca0c282c7              # double 0.169046
	.quad	0x3fec0fffbce4217d              # double 0.87695299999999998
	.quad	0x3fdba2f48c2e770c              # double 0.43182100000000001
	.quad	0x3fe848387df5cf25              # double 0.75881600000000005
	.quad	0x3fe740ca600b0293              # double 0.72665900000000005
	.quad	0x3feb1b845564b663              # double 0.847109
	.quad	0x3fe83d9a95421c04              # double 0.75751999999999997
	.quad	0x3fdd8c08b75ea67f              # double 0.46167200000000003
	.quad	0x3fe70298cc144029              # double 0.71906700000000001
	.quad	0x3fc4c36544fe36d2              # double 0.162213
	.quad	0x3fd28982cb20fb22              # double 0.28964299999999998
	.quad	0x3fe8a0685553ef6b              # double 0.76958099999999996
	.quad	0x3f2eabbcb1cc9646              # double 2.34E-4
	.quad	0x3fc0eba27ae9ab2a              # double 0.132191
	.quad	0x3fc1ebf22c01e68a              # double 0.140013
	.quad	0x3feb5cbff47735c2              # double 0.85507200000000005
	.quad	0x3fe550678c0053e3              # double 0.66606500000000002
	.quad	0x3fd677d0f1f57b42              # double 0.35106300000000001
	.quad	0x3fc73dd11be6e654              # double 0.18157400000000001
	.quad	0x3fe9a8deb0fadf2f              # double 0.80186400000000002
	.quad	0x3fd37521144cbe1f              # double 0.30402400000000002
	.quad	0x3feb76273929ed39              # double 0.85817299999999996
	.quad	0x3fd54790b8498809              # double 0.33249299999999998
	.quad	0x3fe7217d2849cb25              # double 0.72283799999999998
	.quad	0x3fc9f1c75818c5ca              # double 0.20269100000000001
	.quad	0x3f9fdb4cc2507208              # double 0.031109999999999999
	.quad	0x3fdbf01fb82c2bd8              # double 0.436531
	.quad	0x3fc05375c8d9f905              # double 0.12754699999999999
	.quad	0x3fe896ebd4cfd08d              # double 0.76842299999999997
	.quad	0x3fd4b068123810e9              # double 0.32326700000000003
	.quad	0x3fe471a1986b9c30              # double 0.63887099999999997
	.quad	0x3fdefbefd00713f0              # double 0.48412699999999997
	.quad	0x3fc88427418d690a              # double 0.19153300000000001
	.quad	0x3fe83866e43aa79c              # double 0.75688500000000002
	.quad	0x3fd5bef8ceb356da              # double 0.339781
	.quad	0x3fdc2d87f88765ba              # double 0.44027899999999998
	.quad	0x3fecc6a7ef9db22d              # double 0.89924999999999999
	.quad	0x3fd730b9dc2f405f              # double 0.36234899999999998
	.quad	0x3fd92135daad6020              # double 0.392652
	.quad	0x3fe19465e8922531              # double 0.54936499999999999
	.quad	0x3fe0786e3b46fdeb              # double 0.51470099999999996
	.quad	0x3fea5e4c51116a8c              # double 0.82401100000000004
	.quad	0x3fc3d909f1f14984              # double 0.155061
	.quad	0x3fe348beb5b2d4d4              # double 0.60263
	.quad	0x3fec63497b7414a5              # double 0.88712000000000002
	.quad	0x3feba3e9ea140571              # double 0.86375900000000005
	.quad	0x3fdf0374ff865d7d              # double 0.48458600000000002
	.quad	0x3f5ee675147f1306              # double 0.0018860000000000001
	.quad	0x3fb5e58e64b23140              # double 0.085533999999999999
	.quad	0x3fe1264e48626f61              # double 0.53592600000000001
	.quad	0x3fdd3f359ff4fd6d              # double 0.45698299999999997
	.quad	0x3fef9e2584f4c6e7              # double 0.98805500000000001
	.quad	0x3fe57765fd8adaba              # double 0.670825
	.quad	0x3fac79d4d834091c              # double 0.055617
	.quad	0x3faac03ff69014b6              # double 0.052248000000000003
	.quad	0x3fe7f2de43ed959a              # double 0.74839699999999998
	.quad	0x3fded3804534bd77              # double 0.481659
	.quad	0x3fc78b04ab606b7b              # double 0.18393000000000001
	.quad	0x3fa72a172abef06b              # double 0.045242999999999998
	.quad	0x3feae6be7afa7222              # double 0.84066700000000005
	.quad	0x3feac13122b7baed              # double 0.83608300000000002
	.quad	0x3fe40068db8bac71              # double 0.62504999999999999
	.quad	0x3fd45bbbe878fabe              # double 0.31809900000000002
	.quad	0x3fe67444e0daa0cb              # double 0.70169300000000001
	.quad	0x3fcef73c0c1fc8f3              # double 0.24192
	.quad	0x3fec425aee631f8a              # double 0.8831
	.quad	0x3fb8fc0d2c386d2f              # double 0.097596000000000002
	.quad	0x3fc87ae9ab29e4d6              # double 0.191251
	.quad	0x3fe3b736cdf266ba              # double 0.61611499999999997
	.quad	0x3fd587724fa8b4c0              # double 0.33639200000000002
	.quad	0x3fec57082491afc0              # double 0.88562399999999997
	.quad	0x3fea8387df5cf249              # double 0.82855599999999996
	.quad	0x3fba1b8ed1bf7ad5              # double 0.101983
	.quad	0x3fde1d3671ac14c6              # double 0.47053299999999998
	.quad	0x3fe3b70cdc8754f3              # double 0.61609499999999995
	.quad	0x3fa61e2de8709742              # double 0.043199000000000001
	.quad	0x3feb45c5718eb895              # double 0.852267
	.quad	0x3fe6cc2938de6ddf              # double 0.712422
	.quad	0x3fee8fe8ab4fa483              # double 0.955067
	.quad	0x3fc1628cbd1244a6              # double 0.13582
	.quad	0x3fd44dfce3150dae              # double 0.31725999999999999
	.quad	0x3fad5f78359bc340              # double 0.057369000000000003
	.quad	0x3fe86ff9f87f023f              # double 0.76366900000000004
	.quad	0x3fe566601bc98a22              # double 0.66874699999999998
	.quad	0x3fe0736049ecb31c              # double 0.51408399999999999
	.quad	0x3fedc4b09e98dcdb              # double 0.93025999999999998
	.quad	0x3fec7620ee8d10f5              # double 0.88941999999999999
	.quad	0x3fe37da836eb4e98              # double 0.60908899999999999
	.quad	0x3fee29ef5232d2bb              # double 0.94261899999999998
	.quad	0x3fd9269595feda66              # double 0.39298
	.quad	0x3fdd5d52c16df3f9              # double 0.45882099999999998
	.quad	0x3fde4d48882f0e0b              # double 0.47346700000000003
	.quad	0x3feda4c1ebc83a97              # double 0.92636200000000002
	.quad	0x3fed4dea033e78e2              # double 0.91576100000000005
	.quad	0x3fe70d477bbf93ff              # double 0.72037099999999998
	.quad	0x3fde8cbd1244a622              # double 0.47733999999999999
	.quad	0x3fcf03afb7e90ff9              # double 0.24229999999999999
	.quad	0x3fe5f6f8f041461b              # double 0.68639799999999995
	.quad	0x3fe777ee4e26d480              # double 0.73338999999999999
	.quad	0x3fe14dc443914f48              # double 0.54074299999999997
	.quad	0x3fabbd1676640a6c              # double 0.054177000000000003
	.quad	0x3fe427a20578e5c5              # double 0.62983800000000001
	.quad	0x3fdf686e7e62dc6e              # double 0.49074899999999999
	.quad	0x3fe34152b0a6fc59              # double 0.60172400000000004
	.quad	0x3fd8bda9435ac8a3              # double 0.38657599999999998
	.quad	0x3f97f06705c896dd              # double 0.023377999999999999
	.quad	0x3fe85c422036006d              # double 0.76126199999999999
	.quad	0x3fd86d0917d6b65b              # double 0.38165500000000002
	.quad	0x3fe0c14e7ee9142b              # double 0.52359699999999998
	.quad	0x3fef18eb8950763a              # double 0.97179199999999999
	.quad	0x3fd72163fdd65a14              # double 0.36141299999999998
	.quad	0x3fe3179bfdf7e804              # double 0.59663200000000005
	.quad	0x3fe4d015c209246c              # double 0.65040100000000001
	.quad	0x3fe38283d35eb745              # double 0.60968199999999995
	.quad	0x3feeac03ff69014b              # double 0.95849799999999996
	.quad	0x3fe79c864883fd50              # double 0.73785699999999999
	.quad	0x3fcc6b1e5c0b9991              # double 0.22201899999999999
	.quad	0x3fee54845132f87b              # double 0.94781700000000002
	.quad	0x3fddd859c8c9320e              # double 0.46633000000000002
	.quad	0x3fc75c31593e5fb7              # double 0.182501
	.quad	0x3fe7bf63c31df762              # double 0.74211300000000002
	.quad	0x3fe78574b407032a              # double 0.73504100000000006
	.quad	0x3fc7c0f451761459              # double 0.18557599999999999
	.quad	0x3fdd45846e8f29d4              # double 0.457368
	.quad	0x3fed79a2834d26fa              # double 0.92109799999999997
	.quad	0x3fed1e731d2e0e30              # double 0.90996699999999997
	.quad	0x3fe4b69b9d7fd827              # double 0.64729099999999995
	.quad	0x3fee89b951c5c572              # double 0.95431200000000005
	.quad	0x3fde3358f2e05ccd              # double 0.47188400000000003
	.quad	0x3fe0fdaa4fca42af              # double 0.53096500000000002
	.quad	0x3fe5453f39d1b2e6              # double 0.66470300000000004
	.quad	0x3fc228e4fb97bb73              # double 0.141873
	.quad	0x3fd0531550ca1cef              # double 0.25507099999999999
	.quad	0x3fe317396d0917d7              # double 0.59658500000000003
	.quad	0x3fee193f6c2699c8              # double 0.94058200000000002
	.quad	0x3fd378854cdb7ae5              # double 0.30423099999999997
	.quad	0x3fddf5ad96a6a012              # double 0.46811999999999998
	.quad	0x3fdb5b6805a2d730              # double 0.427454
	.quad	0x3fdf91e646f15619              # double 0.49328
	.quad	0x3fe7ed634549b62c              # double 0.74772799999999995
	.quad	0x3fb9d5d3dc8b86b1              # double 0.10091899999999999
	.quad	0x3fdb1c2a02320968              # double 0.42359400000000003
	.quad	0x3fda659d12cadddf              # double 0.41245199999999999
	.quad	0x3fa5baf533f42353              # double 0.042442000000000001
	.quad	0x3fc28661ae70c133              # double 0.14472599999999999
	.quad	0x3fed3f26f1dc50ce              # double 0.91395899999999997
	.quad	0x3fcbfcf3dc054ef4              # double 0.21865699999999999
	.quad	0x3fe71198aeb80ed0              # double 0.72089800000000004
	.quad	0x3fc3331a08bfc222              # double 0.14999699999999999
	.quad	0x3fd0587d6f976790              # double 0.25540099999999999
	.quad	0x3fcb8c5436b8f9b1              # double 0.21521999999999999
	.quad	0x3fe13884406c00da              # double 0.53814899999999999
	.quad	0x3fef57f0ed3d859d              # double 0.97948500000000005
	.quad	0x3fefe05ee568a505              # double 0.99613899999999999
	.quad	0x3fef617e34b94531              # double 0.98065100000000005
	.quad	0x3fc8ae9680e06530              # double 0.192828
	.quad	0x3fd42d72ffd1dcd7              # double 0.315274
	.quad	0x3fcf5f88fc9363f5              # double 0.24510299999999999
	.quad	0x3fdb59817b95a294              # double 0.427338
	.quad	0x3fe64199fe43675e              # double 0.69550800000000002
	.quad	0x3fe4c4b09e98dcdb              # double 0.64900999999999998
	.quad	0x3fe6306a2b1704ff              # double 0.69340999999999997
	.quad	0x3fe7bb7521144cbe              # double 0.74163299999999999
	.quad	0x3fee68d759ee88df              # double 0.95029799999999998
	.quad	0x3fb3280f12c27a63              # double 0.074829999999999994
	.quad	0x3fe15fc19c17225b              # double 0.54293899999999995
	.quad	0x3fc9b43d89ce4a7b              # double 0.20081299999999999
	.quad	0x3fec37ed41b75a75              # double 0.88182700000000003
	.quad	0x3fead529fe004b7f              # double 0.83852099999999996
	.quad	0x3fed4894c447c30d              # double 0.91510999999999998
	.quad	0x3fe48b242070b8d0              # double 0.64198500000000003
	.quad	0x3fedf6273929ed39              # double 0.93629799999999996
	.quad	0x3fdfcd0fe8ab4fa5              # double 0.49689100000000003
	.quad	0x3fefa719b4dcebff              # double 0.98914800000000002
	.quad	0x3fc5c886162f166e              # double 0.170182
	.quad	0x3fd7c5da6a444178              # double 0.37145099999999998
	.quad	0x3fc6311e85fd04a3              # double 0.173374
	.quad	0x3feda2db61bb05fb              # double 0.92613000000000001
	.quad	0x3fd4de8b3b320536              # double 0.32608300000000001
	.quad	0x3fec1b77c02afddb              # double 0.87835300000000005
	.quad	0x3fe64f1a1986b9c3              # double 0.697156
	.quad	0x3fdbee4e26d4801f              # double 0.43641999999999997
	.quad	0x3fc12c0e7bc3c5bd              # double 0.134157
	.quad	0x3feb416bdb1a6d6a              # double 0.85173600000000005
	.quad	0x3fc8c78e9f6a93f3              # double 0.19359000000000001
	.quad	0x3fe91f9ce8d972cd              # double 0.78510899999999995
	.quad	0x3fe2a48301a79fed              # double 0.58258200000000004
	.quad	0x3fa5948dc11e42e1              # double 0.042148999999999999
	.quad	0x3feb7822bbecaab9              # double 0.85841500000000004
	.quad	0x3fed34528283d35f              # double 0.91263700000000003
	.quad	0x3fe12b6284599674              # double 0.53654599999999997
	.quad	0x3fc94784230fcf81              # double 0.197495
	.quad	0x3fe3eca03c4b09ea              # double 0.62263500000000005
	.quad	0x3fc104b3c3e74afd              # double 0.13295599999999999
	.quad	0x3fefb56fb8f57f73              # double 0.99089799999999994
	.quad	0x3fe8a6698bb4d489              # double 0.77031400000000005
	.quad	0x3fcee924f227d029              # double 0.24149000000000001
	.quad	0x3fc021af7d30ad47              # double 0.126028
	.quad	0x3fe4b5a63f9a49c3              # double 0.64717400000000003
	.quad	0x3fea250507a6bd6f              # double 0.81701900000000005
	.quad	0x3fe642ca148ba83f              # double 0.69565299999999997
	.quad	0x3fe55944aa53fc01              # double 0.66714700000000005
	.quad	0x3fe8b226c3b927d4              # double 0.77174699999999996
	.quad	0x3fe4fbc7f77af640              # double 0.65573499999999996
	.quad	0x3fda6ad2dcb1465f              # double 0.41277000000000003
	.quad	0x3fe16c1a048e043a              # double 0.54444599999999999
	.quad	0x3fe07c4e2f37fbf0              # double 0.51517400000000002
	.quad	0x3fd50eb67c286f8b              # double 0.32902300000000001
	.quad	0x3fc8d698fe69270b              # double 0.194049
	.quad	0x3fd107746887a8d6              # double 0.26607999999999998
	.quad	0x3fe40c564f97edc8              # double 0.62650600000000001
	.quad	0x3fdc7f84449dbec2              # double 0.44528299999999998
	.quad	0x3fe39906cca2db62              # double 0.61243000000000003
	.quad	0x3fe67f8012dfd695              # double 0.70306400000000002
	.quad	0x3fbb5fe542e557de              # double 0.106932
	.quad	0x3fe8126202539757              # double 0.75224400000000002
	.quad	0x3fd6bfc2224edf61              # double 0.35545399999999999
	.quad	0x3fe2dd3fe1975f2d              # double 0.58950800000000003
	.quad	0x3fd9c2374794ea07              # double 0.40247899999999998
	.quad	0x3fe82314013ec461              # double 0.75428200000000001
	.quad	0x3fe8cd530489d27c              # double 0.77506399999999997
	.quad	0x3feda0a30db6a1e8              # double 0.92585899999999999
	.quad	0x3fdc45fe111276fb              # double 0.441772
	.quad	0x3fbddf97aaac1095              # double 0.11669300000000001
	.quad	0x3fd60b955f78359c              # double 0.34445700000000001
	.quad	0x3fd87bfa4c61d862              # double 0.38256699999999999
	.quad	0x3fe080713f077ccc              # double 0.515679
	.quad	0x3fad803cd141a693              # double 0.057618999999999997
	.quad	0x3fe3b9d5e4a38327              # double 0.61643499999999996
	.quad	0x3fef51ce28ed5f14              # double 0.97873600000000005
	.quad	0x3fdad1782d38476f              # double 0.41903499999999999
	.quad	0x3fe20d3cff64cf8d              # double 0.56411599999999995
	.quad	0x3feb487db2b34613              # double 0.852599
	.quad	0x3fc71e75360d0247              # double 0.180617
	.quad	0x3fe27a2cecc814d7              # double 0.57741399999999998
	.quad	0x3fd3ecc3e3193f6c              # double 0.31132599999999999
	.quad	0x3fd415e39713ad5c              # double 0.313836
	.quad	0x3fd79ee88df3732a              # double 0.36907400000000001
	.quad	0x3fa3499d0203e63f              # double 0.037671000000000003
	.quad	0x3fd558a761027957              # double 0.333536
	.quad	0x3fe49bc77143393b              # double 0.64401600000000003
	.quad	0x3fe6fda4052d666b              # double 0.71846200000000005
	.quad	0x3fe4ec00da1a9329              # double 0.65380899999999997
	.quad	0x3fec02c0a4a05dd9              # double 0.875336
	.quad	0x3fbccc25072085b2              # double 0.11249000000000001
	.quad	0x3fd95efa615a8deb              # double 0.396422
	.quad	0x3fea42374794ea07              # double 0.82058299999999995
	.quad	0x3fe9f2990f301eac              # double 0.81086400000000002
	.quad	0x3f97418d6909aed5              # double 0.022710999999999999
	.quad	0x3fdcfb8f57f737da              # double 0.45285399999999998
	.quad	0x3feab506dd69d302              # double 0.83459799999999995
	.quad	0x3fdef50e34762952              # double 0.483707
	.quad	0x3fec7e996312f4cf              # double 0.89045399999999997
	.quad	0x3fa013879c4113c7              # double 0.031399000000000003
	.quad	0x3fe507f66e86c658              # double 0.65722199999999997
	.quad	0x3fe5da708ede54b5              # double 0.68291500000000005
	.quad	0x3fb4a2339c0ebee0              # double 0.080600000000000005
	.quad	0x3fe2f589efd86a90              # double 0.59247300000000003
	.quad	0x3fe8d20afa2f05a7              # double 0.77564
	.quad	0x3fde8d21bc126a66              # double 0.47736400000000001
	.quad	0x3fe7c27e9531550d              # double 0.74249200000000004
	.quad	0x3fcba0ad8a11665a              # double 0.21584100000000001
	.quad	0x3febb4e54f7a9197              # double 0.86583200000000005
	.quad	0x3fe181b003686a4d              # double 0.54708100000000004
	.quad	0x3fc84ac6cdaf4adc              # double 0.18978200000000001
	.quad	0x3fdbf01322f27350              # double 0.43652800000000003
	.quad	0x3fbc0d0aaa7ded6c              # double 0.109574
	.quad	0x3fd8aeff5c6c11a1              # double 0.385681
	.quad	0x3fc3a86940357a35              # double 0.15357699999999999
	.quad	0x3fe668e1d6494d51              # double 0.70030300000000001
	.quad	0x3fe190f94c87980f              # double 0.54894699999999996
	.quad	0x3fcfbfad2999567e              # double 0.24803700000000001
	.quad	0x3fde53f39d1b2e5a              # double 0.47387400000000002
	.quad	0x3fd24bd33d29563b              # double 0.28587800000000002
	.quad	0x3fe8ab94d9407896              # double 0.77094499999999999
	.quad	0x3fd4917d6b65a9a8              # double 0.32138
	.quad	0x3fe181083dbc2331              # double 0.54700099999999996
	.quad	0x3fd4563a9f383f0c              # double 0.31776300000000002
	.quad	0x3fdf567dbb16c1e3              # double 0.48965399999999998
	.quad	0x3fec8b0f27bb2fec              # double 0.89197499999999996
	.quad	0x3fea4a6223e18698              # double 0.82157999999999998
	.quad	0x3fea84d983947497              # double 0.82871700000000004
	.quad	0x3fd7fc69728a6117              # double 0.37478099999999998
	.quad	0x3fd053c579f23465              # double 0.25511299999999998
	.quad	0x3fe4d7a56de3326a              # double 0.65132400000000001
	.quad	0x3fdd8366516db0de              # double 0.46114500000000003
	.quad	0x3fda99d451fc4c16              # double 0.41563899999999998
	.quad	0x3fe820ec74320104              # double 0.75401899999999999
	.quad	0x3f505186db50f40e              # double 9.9599999999999992E-4
	.quad	0x3fd73db7f1737543              # double 0.36314200000000002
	.quad	0x3fd1733a8a3f8983              # double 0.27265800000000001
	.quad	0x3fe896e7a311e860              # double 0.76842100000000002
	.quad	0x3fdc4a05dd8f92b0              # double 0.44201800000000002
	.quad	0x3fd986338b47c73f              # double 0.398816
	.quad	0x3fc30984e3ffef39              # double 0.148728
	.quad	0x3fe2b7eb28d8665e              # double 0.584951
	.quad	0x3fc6f9335d249e45              # double 0.17948
	.quad	0x3fe7e16d6dc1a47b              # double 0.74626800000000004
	.quad	0x3fe23f61aa3f034b              # double 0.57023699999999999
	.quad	0x3fe79de26916440f              # double 0.73802299999999998
	.quad	0x3fe9c48cf7caa759              # double 0.80524300000000004
	.quad	0x3fe9c1e364bec67a              # double 0.80491800000000002
	.quad	0x3fef09e55c0fcb4f              # double 0.96995799999999998
	.quad	0x3fd28c3f3e0370ce              # double 0.28981000000000001
	.quad	0x3fde8194c0160525              # double 0.476659
	.quad	0x3fe19ffb480a5acd              # double 0.55077900000000002
	.quad	0x3fe25d744f5d3565              # double 0.57390799999999997
	.quad	0x3fd0a737110e453d              # double 0.26020599999999999
	.quad	0x3fe36c3116228134              # double 0.60695699999999997
	.quad	0x3fe359210385c67e              # double 0.60463
	.quad	0x3fe28fb00bcbe61d              # double 0.58004
	.quad	0x3fe029dc725c3dee              # double 0.50510999999999995
	.quad	0x3f78288051c9f72f              # double 0.0058979999999999996
	.quad	0x3faa2bbecaab8a5d              # double 0.051115000000000001
	.quad	0x3fd32f1ed17c5ef6              # double 0.29975099999999999
	.quad	0x3fee8012dfd694cd              # double 0.95313400000000004
	.quad	0x3fee5a4ce8101f32              # double 0.94852300000000001
	.quad	0x3fec1b6b2af14552              # double 0.87834699999999999
	.quad	0x3fd32c2374794ea0              # double 0.29956899999999997
	.quad	0x3fd9d8e864020818              # double 0.403864
	.quad	0x3fe8e1f3a57eaa2a              # double 0.777582
	.quad	0x3feac2acb85a4f01              # double 0.83626400000000001
	.quad	0x3fee6a1c68ec52a4              # double 0.95045299999999999
	.quad	0x3fdfb80ecfa69be1              # double 0.49560900000000002
	.quad	0x3fd5fc86cebbba56              # double 0.34353800000000001
	.quad	0x3fe4bae89eba6aca              # double 0.64781599999999995
	.quad	0x3fdb3bc0a06e9ff1              # double 0.42552200000000001
	.quad	0x3fe42d55a3a08399              # double 0.63053400000000004
	.quad	0x3febdd6bebe1650a              # double 0.87077899999999997
	.quad	0x3fe808db0574b407              # double 0.751081
	.quad	0x3fccbd44998d0460              # double 0.224526
	.quad	0x3feb8cc78e9f6a94              # double 0.860935
	.quad	0x3feef8359bc33f85              # double 0.96779899999999996
	.quad	0x3fe19b0ab2e1693c              # double 0.550176
	.quad	0x3fe1d3f9e7b80a9e              # double 0.55712600000000001
	.quad	0x3fe3ae81882adc4d              # double 0.61505200000000004
	.quad	0x3fe9e3f78bbd3804              # double 0.80907799999999996
	.quad	0x3fed3bcd35a85879              # double 0.91354999999999997
	.quad	0x3fe0d5f78359bc34              # double 0.526119
	.quad	0x3fee79d2bf551505              # double 0.95237099999999997
	.quad	0x3fe4185ad538ac19              # double 0.627973
	.quad	0x3f918ac9f2fdb8fe              # double 0.017131
	.quad	0x3fcc94d50ebaade6              # double 0.22329199999999999
	.quad	0x3fe534c5da6a4441              # double 0.66269199999999995
	.quad	0x3fe0c3c18b502abb              # double 0.52389600000000003
	.quad	0x3fd825e99e94ab1d              # double 0.37731399999999998
	.quad	0x3feba1294573a798              # double 0.86342300000000005
	.quad	0x3fd9d5f56a7ac81d              # double 0.40368399999999999
	.quad	0x3feb56c508b32ce9              # double 0.85434200000000005
	.quad	0x3f9b463497b7414a              # double 0.026634999999999999
	.quad	0x3fe88642396073de              # double 0.76638899999999999
	.quad	0x3fe64280ae104923              # double 0.69561799999999996
	.quad	0x3f95604189374bc7              # double 0.020875000000000001
	.quad	0x3fedccdd93c46d83              # double 0.93125800000000003
	.quad	0x3fd77ffde7210be9              # double 0.36718699999999999
	.quad	0x3fe8dd00f776c482              # double 0.77697799999999995
	.quad	0x3fcb2f87ad080b67              # double 0.21238799999999999
	.quad	0x3f88f36694898f60              # double 0.012182999999999999
	.quad	0x3febf41f212d7732              # double 0.87355000000000005
	.quad	0x3fa4ee5abc0e38a8              # double 0.040881000000000001
	.quad	0x3fb8203e63e8dda5              # double 0.094242000000000006
	.quad	0x3fe9ec6bce8533b1              # double 0.81011
	.quad	0x3fc0c75c4a83b1d1              # double 0.13108400000000001
	.quad	0x3fe7fb45f17bd8be              # double 0.74942299999999995
	.quad	0x3faec11a11233df3              # double 0.060067000000000002
	.quad	0x3fc1bb2fec56d5d0              # double 0.13852500000000001
	.quad	0x3fecb226c3b927d4              # double 0.89674699999999996
	.quad	0x3fec486ad2dcb146              # double 0.88383999999999996
	.quad	0x3fb560956c0d6f54              # double 0.083504999999999996
	.quad	0x3fd90c1fc8f32379              # double 0.39136500000000002
	.quad	0x3fe1bbddfc9ff92f              # double 0.55418299999999998
	.quad	0x3fe6376922d948dc              # double 0.69426399999999999
	.quad	0x3fe861b4bb5e0f80              # double 0.76192700000000002
	.quad	0x3fd8b23dd54da4cf              # double 0.38587900000000003
	.quad	0x3fe92a80064a9cdc              # double 0.78643799999999997
	.quad	0x3fe14d07852f7f4a              # double 0.54065300000000005
	.quad	0x3fc43558a7610279              # double 0.15787799999999999
	.quad	0x3fdb64dc22ab25b3              # double 0.42803099999999999
	.quad	0x3fec6d56b00ffda4              # double 0.88834699999999999
	.quad	0x3fee60e0eb67c287              # double 0.949326
	.quad	0x3f748cb4aec8d5c7              # double 0.0050169999999999998
	.quad	0x3fe56c80c73abc94              # double 0.66949499999999995
	.quad	0x3fe8e21101b00368              # double 0.77759599999999995
	.quad	0x3feba999567dbb17              # double 0.86445300000000003
	.quad	0x3fdbe71476af89c6              # double 0.43597900000000001
	.quad	0x3fed90b417ca2121              # double 0.92391400000000001
	.quad	0x3fe4f55bccaf709b              # double 0.65495099999999995
	.quad	0x3fd730ced4e4c943              # double 0.36235400000000001
	.quad	0x3fc32ecf20642396              # double 0.149866
	.quad	0x3fac851a86940358              # double 0.055703000000000003
	.quad	0x3feb4a5375c8d9f9              # double 0.852823
	.quad	0x3fef33d4ae429e0a              # double 0.97507699999999997
	.quad	0x3fea5757d5a9eb20              # double 0.82316199999999994
	.quad	0x3fca115df6555c53              # double 0.203655
	.quad	0x3fc36262cba732df              # double 0.15143999999999999
	.quad	0x3fe3f7681669ced1              # double 0.62395100000000003
	.quad	0x3fecd49d7ba6698c              # double 0.90095400000000003
	.quad	0x3fee4508b32ce896              # double 0.94592699999999996
	.quad	0x3fde296f6512a950              # double 0.471279
	.quad	0x3fc13f961804d984              # double 0.13475300000000001
	.quad	0x3fe14de19fc2a887              # double 0.54075700000000004
	.quad	0x3fb21016ce789e77              # double 0.070557999999999996
	.quad	0x3fd9d1e96c3fc43b              # double 0.40343699999999999
	.quad	0x3fdcb96af038e2a0              # double 0.44881700000000002
	.quad	0x3fe91055b8993922              # double 0.78324400000000005
	.quad	0x3f94aa10e0221427              # double 0.02018
	.quad	0x3fe27c5260f5e41d              # double 0.57767599999999997
	.quad	0x3fe872b4528283d3              # double 0.76400199999999996
	.quad	0x3fe5bde6149c6f37              # double 0.67943100000000001
	.quad	0x3fe8259e1f3a57eb              # double 0.75459200000000004
	.quad	0x3fbfef177a7008a7              # double 0.12474200000000001
	.quad	0x3feec89b0ee49f51              # double 0.96198799999999995
	.quad	0x3fd17aeddce7cd03              # double 0.27312799999999998
	.quad	0x3fdd61565c2d2780              # double 0.45906599999999997
	.quad	0x3fef47735c182ecb              # double 0.977472
	.quad	0x3fd8447c30d306a3              # double 0.37918000000000002
	.quad	0x3fda14727dcbddba              # double 0.40749800000000003
	.quad	0x3fe70df9bdc69f8c              # double 0.72045599999999999
	.quad	0x3fdd232d2bb23572              # double 0.45527200000000001
	.quad	0x3fee05a4f00ef135              # double 0.93818900000000005
	.quad	0x3f91b6d43d03968d              # double 0.017298999999999998
	.quad	0x3fea9841aac53b08              # double 0.83108599999999999
	.quad	0x3fd8d38476f2a5a4              # double 0.38790999999999998
	.quad	0x3fecd186db50f40e              # double 0.90057699999999996
	.quad	0x3f90379314445aa3              # double 0.015837
	.quad	0x3fbcd31769a91106              # double 0.112596
	.quad	0x3fd769728a611772              # double 0.365811
	.quad	0x3f2c2e33eff19503              # double 2.1499999999999999E-4
	.quad	0x3fef8c7192ea52f0              # double 0.98589400000000005
	.quad	0x3fd6bda5119ce076              # double 0.355325
	.quad	0x3fd287980f55de59              # double 0.28952600000000001
	.quad	0x3febfc69728a6117              # double 0.87456199999999995
	.quad	0x3fe67049a9973d9f              # double 0.70120700000000002
	.quad	0x3fef1676640a6b94              # double 0.97149200000000002
	.quad	0x3fda070fbeb9e493              # double 0.40668100000000001
	.quad	0x3fcba376922d948e              # double 0.21592600000000001
	.quad	0x3fd791fb3fa6defc              # double 0.36828499999999997
	.quad	0x3f81f9acffa7eb6c              # double 0.0087770000000000001
	.quad	0x3fdcb927d45a5fc8              # double 0.44880100000000001
	.quad	0x3fcb5a5332acfb76              # double 0.213694
	.quad	0x3fed5855970b49e0              # double 0.91703299999999998
	.quad	0x3fd36b484d76ab58              # double 0.303423
	.quad	0x3fee7c914b167ec8              # double 0.95270600000000005
	.quad	0x3fdd67dfe32a0664              # double 0.45946500000000001
	.quad	0x3fd4db940fecdd0e              # double 0.32590200000000003
	.quad	0x3fe31df3300de4c5              # double 0.59740599999999999
	.quad	0x3fd5ed80a17b0f6b              # double 0.34262100000000001
	.quad	0x3fe155d3dc8b86b1              # double 0.54172699999999996
	.quad	0x3fd622ee41919ac8              # double 0.34588200000000002
	.quad	0x3fdc41e14bdfd263              # double 0.441521
	.quad	0x3fe253bd1676640a              # double 0.57272199999999995
	.quad	0x3fd4feef5ec80c74              # double 0.32806000000000002
	.quad	0x3fa1016ce789e775              # double 0.033214
	.quad	0x3fd1b3354c12274a              # double 0.276563
	.quad	0x3fee18c5c9a34ca1              # double 0.94052400000000003
	.quad	0x3fd7f0cbaf965b21              # double 0.37407200000000002
	.quad	0x3fd144b2b777d0f2              # double 0.269818
	.quad	0x3fc3c7cd898b2e9d              # double 0.15453500000000001
	.quad	0x3fe0361565c2d278              # double 0.506602
	.quad	0x3fce60780fdc1616              # double 0.237319
	.quad	0x3fd0a2877ee4e26d              # double 0.25991999999999998
	.quad	0x3fe2df82b1f687b1              # double 0.58978399999999997
	.quad	0x3febb0d0edc3bd5a              # double 0.86533400000000005
	.quad	0x3fd2e2435696e58a              # double 0.29505999999999999
	.quad	0x3fea6d7c6fbd273d              # double 0.82586499999999996
	.quad	0x3fde984a0e410b63              # double 0.478045
	.quad	0x3fe809acbc8c0ce9              # double 0.75118099999999999
	.quad	0x3fdbc2c1b10fd7e4              # double 0.43376199999999998
	.quad	0x3fde0ae536501e26              # double 0.46941500000000003
	.quad	0x3fd502b841248d7e              # double 0.328291
	.quad	0x3fc961c36976bc1f              # double 0.198296
	.quad	0x3fe24666ec9e236c              # double 0.57109399999999999
	.quad	0x3fb4685553ef6b5d              # double 0.079716999999999996
	.quad	0x3fb1955714b9cb68              # double 0.068684999999999996
	.quad	0x3fef9d8c6d612c6b              # double 0.98798200000000002
	.quad	0x3fd913b5bf6a0dbb              # double 0.39182800000000001
	.quad	0x3fe5079a2834d270              # double 0.65717800000000004
	.quad	0x3fd6d13d74d594f2              # double 0.35652099999999998
	.quad	0x3fdb682730c67169              # double 0.428232
	.quad	0x3feb4c74b838c112              # double 0.85308300000000004
	.quad	0x3fb0e368f08461fa              # double 0.065970000000000001
	.quad	0x3fec2e514c22ee42              # double 0.88065400000000005
	.quad	0x3fe4d987c6327ed8              # double 0.65155399999999997
	.quad	0x3fe6c3632c1f42bb              # double 0.71135099999999996
	.quad	0x3fe934916ca46e09              # double 0.78766700000000001
	.quad	0x3fa79a49c2c1b110              # double 0.046099000000000001
	.quad	0x3fd942f61ed5ae1d              # double 0.39471200000000001
	.quad	0x3fe02dafd113836b              # double 0.50557700000000005
	.quad	0x3fcf1c3265add9c2              # double 0.24304799999999999
	.quad	0x3fbfd47bedb72820              # double 0.124336
	.quad	0x3fe802949a5657fb              # double 0.75031499999999995
	.quad	0x3fe90e4b87bdcf03              # double 0.782995
	.quad	0x3fec33e1437c5693              # double 0.88133300000000003
	.quad	0x3fb0a19c9d5a187a              # double 0.064965999999999996
	.quad	0x3feea57eaa2a0a96              # double 0.95770200000000005
	.quad	0x3fe91e0a41a261bf              # double 0.78491699999999998
	.quad	0x3fe5013ec460ed81              # double 0.65640200000000004
	.quad	0x3fdb6a055757d5aa              # double 0.428346
	.quad	0x3fdbcd7060bb2bbb              # double 0.43441400000000002
	.quad	0x3fe8835371971c11              # double 0.76603100000000002
	.quad	0x3fe428bb0a2ca9ac              # double 0.62997199999999998
	.quad	0x3fe27ce746cb966c              # double 0.57774700000000001
	.quad	0x3fde3037d63022dd              # double 0.47169299999999997
	.quad	0x3fea5efa615a8deb              # double 0.82409399999999999
	.quad	0x3facce5f7403dddb              # double 0.056262
	.quad	0x3fd28323358f2e06              # double 0.28925400000000001
	.quad	0x3fc3b6ed6777079e              # double 0.15401999999999999
	.quad	0x3fd35379fa97e133              # double 0.30197000000000002
	.quad	0x3fdba6ca03c4b09f              # double 0.43205500000000002
	.quad	0x3fef9d4306e5cd4f              # double 0.98794700000000001
	.quad	0x3febe23af31b152f              # double 0.87136599999999997
	.quad	0x3fedc679cc74b839              # double 0.93047800000000003
	.quad	0x3fe4bbc2b94d9408              # double 0.64792000000000005
	.quad	0x3fc7ad3a604e1e71              # double 0.184974
	.quad	0x3feefeb074a771c9              # double 0.96858999999999995
	.quad	0x3fee6d71f36262cc              # double 0.95086000000000003
	.quad	0x3fac02afdda8bd23              # double 0.054708
	.quad	0x3fe9c69b5a63f9a5              # double 0.80549400000000004
	.quad	0x3fcddece5710880e              # double 0.23336200000000001
	.quad	0x3fe66dd26b723ee2              # double 0.70090600000000003
	.quad	0x3fc3202107b78466              # double 0.149418
	.quad	0x3febdeb0fadf2ecf              # double 0.87093399999999999
	.quad	0x3fe2219eb6390c91              # double 0.566604
	.quad	0x3fd51cd1c7de5083              # double 0.32988400000000001
	.quad	0x3fe724aada33bd9d              # double 0.72322600000000004
	.quad	0x3fe2ee2435696e59              # double 0.59157000000000004
	.quad	0x3feb01d9f4d37c13              # double 0.84397599999999995
	.quad	0x3fc6edcc20d5629e              # double 0.17913200000000001
	.quad	0x3fe63cc8de2ac322              # double 0.69491999999999998
	.quad	0x3fdf5e0b4e11dbcb              # double 0.49011500000000002
	.quad	0x3fef86a098915bdd              # double 0.98518399999999994
	.quad	0x3f99f77292c49342              # double 0.025357999999999999
	.quad	0x3fe4c2d27807789a              # double 0.64878199999999997
	.quad	0x3fb5daf07bfe7e20              # double 0.085372000000000003
	.quad	0x3fe7779e9d0e9920              # double 0.733352
	.quad	0x3f8feb8d82342246              # double 0.015585999999999999
	.quad	0x3fec96d0917d6b66              # double 0.89341000000000004
	.quad	0x3fdb2f837b4a233a              # double 0.42477500000000001
	.quad	0x3fe55f04ddb5525d              # double 0.66784900000000003
	.quad	0x3fdc534373f316e3              # double 0.44258199999999998
	.quad	0x3fad245b291b823d              # double 0.056918000000000003
	.quad	0x3fecf1d1d4738a3b              # double 0.90451899999999996
	.quad	0x3fe0897635e7429a              # double 0.51678000000000002
	.quad	0x3fdc76709fa54c55              # double 0.44472899999999999
	.quad	0x3fe7e006d0d4994a              # double 0.74609700000000001
	.quad	0x3fe82e44b6e935b9              # double 0.75564799999999999
	.quad	0x3fc05baf533f4235              # double 0.12779799999999999
	.quad	0x3fed5f7403dddb12              # double 0.917902
	.quad	0x3fe88ac3a860dcba              # double 0.76693900000000004
	.quad	0x3fec574b40703298              # double 0.885656
	.quad	0x3fedb11a543f1c76              # double 0.92786900000000005
	.quad	0x3fedd6f32bdc26dd              # double 0.93248900000000001
	.quad	0x3fe66a8112ba16e8              # double 0.70050100000000004
	.quad	0x3feedc6195464dc2              # double 0.96440199999999998
	.quad	0x3fd26e43aa79bbae              # double 0.28798000000000001
	.quad	0x3fee48344c37e6f7              # double 0.94631399999999999
	.quad	0x3fc5fe8ee6b8305e              # double 0.17183100000000001
	.quad	0x3fe48807357e670e              # double 0.64160499999999998
	.quad	0x3fe9c4588a04d120              # double 0.80521799999999998
	.quad	0x3f6c0229a5ebb774              # double 0.0034190000000000002
	.quad	0x3fe39a60d4562e0a              # double 0.612595
	.quad	0x3fe838305d95dd4c              # double 0.75685899999999994
	.quad	0x3fe781c92ddbdb5e              # double 0.73459300000000005
	.quad	0x3fdbd3c792d1287c              # double 0.43480099999999999
	.quad	0x3fc282b628459967              # double 0.14461399999999999
	.quad	0x3fe32a25d8d79d0a              # double 0.59889499999999996
	.quad	0x3fe11bf9c62a1b5c              # double 0.53466499999999995
	.quad	0x3febcbc6a7ef9db2              # double 0.86862499999999998
	.quad	0x3fd6b33daf8df7a5              # double 0.35469000000000001
	.quad	0x3fd21a32b12d3416              # double 0.28284900000000002
	.quad	0x3febc934267839ce              # double 0.86831100000000006
	.quad	0x3fecc8a159817b96              # double 0.89949100000000004
	.quad	0x3fd2b60285ec3dab              # double 0.29235899999999998
	.quad	0x3fe5e3d816aceaaf              # double 0.68406299999999998
	.quad	0x3fef5490e66cb103              # double 0.97907299999999997
	.quad	0x3fe02c98e53eb39a              # double 0.505444
	.quad	0x3fe78bbd3804534c              # double 0.73580800000000002
	.quad	0x3fcdca29845dc832              # double 0.23273199999999999
	.quad	0x3fda6ee30caa326e              # double 0.413018
	.quad	0x3fe38e6d15ad106f              # double 0.61113600000000001
	.quad	0x3fd6403148776816              # double 0.34766799999999998
	.quad	0x3fecffb267c6b8b7              # double 0.90621300000000005
	.quad	0x3fe8b6976bc1effa              # double 0.772289
	.quad	0x3fe4ddd6e04c0592              # double 0.65207999999999999
	.quad	0x3fda96638433d6c7              # double 0.41542899999999999
	.quad	0x3fc446173b85e80c              # double 0.158389
	.quad	0x3fd2adff822bbecb              # double 0.29187000000000002
	.quad	0x3fec58750c1b9735              # double 0.88579799999999997
	.quad	0x3fce00e27e0ef998              # double 0.234402
	.quad	0x3fe165b20b8066c3              # double 0.54366400000000004
	.quad	0x3fb83265add9c27f              # double 0.094519000000000006
	.quad	0x3fd42135daad6020              # double 0.314527
	.quad	0x3fe11835158b8280              # double 0.53420500000000004
	.quad	0x3fef34d48882f0e1              # double 0.97519900000000003
	.quad	0x3fc765ba6efc371e              # double 0.18279200000000001
	.quad	0x3fdd5000c9539b89              # double 0.45800800000000003
	.quad	0x3f87681669ced0b3              # double 0.011429
	.quad	0x3fe3d9231c64ba95              # double 0.62025600000000003
	.quad	0x3fa3fe5c91d14e3c              # double 0.039050000000000001
	.quad	0x3fd47fcfc3f811f5              # double 0.320301
	.quad	0x3fd02e7f6f4be836              # double 0.25283800000000001
	.quad	0x3fdf2378ab0c88a4              # double 0.48653999999999997
	.quad	0x3fee1eecbfb15b57              # double 0.94127499999999997
	.quad	0x3fd203361565c2d2              # double 0.28144599999999997
	.quad	0x3fd8938de6ddf00b              # double 0.38400600000000001
	.quad	0x3fe53506dd69d302              # double 0.66272299999999995
	.quad	0x3fc10efdc9c4da90              # double 0.13327
	.quad	0x3f6c193b3a68b19a              # double 0.0034299999999999999
	.quad	0x3fe0443b2dd377e2              # double 0.50832900000000003
	.quad	0x3fce55219a847b24              # double 0.23697299999999999
	.quad	0x3fcd8f7985271bce              # double 0.23094100000000001
	.quad	0x3f9c26138fffbce4              # double 0.027489
	.quad	0x3fe86fae7924af0c              # double 0.763633
	.quad	0x3f9ce746cb966be8              # double 0.028226000000000001
	.quad	0x3feea1bc126a65cf              # double 0.95724299999999996
	.quad	0x3fd1662fdfc19c17              # double 0.27186199999999999
	.quad	0x3fe3913404ea4a8c              # double 0.61147499999999999
	.quad	0x3fd4234a87e38eb0              # double 0.31465399999999999
	.quad	0x3feb463065f9591d              # double 0.85231800000000002
	.quad	0x3fdeda37ef5a964f              # double 0.48206900000000003
	.quad	0x3fdca76d97b30f8c              # double 0.44771899999999998
	.quad	0x3fe681eabbcb1cc9              # double 0.70335899999999996
	.quad	0x3feae9856a37ac3f              # double 0.84100600000000003
	.quad	0x3fdb58bc59b8023a              # double 0.42729099999999998
	.quad	0x3fedf10a99b6f5cb              # double 0.93567400000000001
	.quad	0x3fd64e48626f60e1              # double 0.348528
	.quad	0x3fbfcd573647baaa              # double 0.124227
	.quad	0x3fd2676ea4228998              # double 0.28756300000000001
	.quad	0x3fd53e8576cce5f7              # double 0.33194099999999999
	.quad	0x3fe481e4712e4085              # double 0.64085599999999998
	.quad	0x3fe66670e2c12ad8              # double 0.70000499999999999
	.quad	0x3fe845803cd141a7              # double 0.75848400000000005
	.quad	0x3fdb48909289dae0              # double 0.42630400000000002
	.quad	0x3fe1d7774aba3876              # double 0.55755200000000005
	.quad	0x3fe67b3fa6defc7a              # double 0.70254499999999998
	.quad	0x3fee1aed56b00ffe              # double 0.94078700000000004
	.quad	0x3fe4fab53d640e9d              # double 0.65560399999999996
	.quad	0x3fe776d117b5286b              # double 0.73325399999999996
	.quad	0x3fe809b52007dd44              # double 0.75118499999999999
	.quad	0x3fea17d2849cb253              # double 0.81540800000000002
	.quad	0x3feac467381d7dbf              # double 0.83647499999999997
	.quad	0x3fe1f80dc33721d5              # double 0.56152999999999997
	.quad	0x3fc7a7eb6bf444e1              # double 0.184812
	.quad	0x3fde5753a3ec02f3              # double 0.47408
	.quad	0x3fb6bb341e14bdfd              # double 0.088793999999999998
	.quad	0x3fe34af0bf1a5ca3              # double 0.60289800000000004
	.quad	0x3fe45a5fc7e6b3ff              # double 0.63603200000000004
	.quad	0x3fd5a5d28d002e23              # double 0.33824599999999999
	.quad	0x3fefd7470eb24a6b              # double 0.99502900000000005
	.quad	0x3fe590ea9e6eeb70              # double 0.67393999999999998
	.quad	0x3fd9358f2e05ccc9              # double 0.39389400000000002
	.quad	0x3fcea9f7b5aea316              # double 0.239562
	.quad	0x3fb22131a8ef77f2              # double 0.070818999999999993
	.quad	0x3fce3e63e8dda48b              # double 0.23627899999999999
	.quad	0x3febc8ffb8b26395              # double 0.868286
	.quad	0x3fd17b5aea3161a2              # double 0.27315400000000001
	.quad	0x3fd99a459103c8e2              # double 0.40004099999999998
	.quad	0x3fca450268900c52              # double 0.205231
	.quad	0x3fc2621b7e0ac7da              # double 0.143619
	.quad	0x3fcd27136a400fbb              # double 0.22775500000000001
	.quad	0x3fde54fbdad7518b              # double 0.473937
	.quad	0x3fecfbe553ac4f7f              # double 0.90574900000000003
	.quad	0x3fef4ba0e8427419              # double 0.97798200000000001
	.quad	0x3fe9e4388ebcc6c5              # double 0.80910899999999997
	.quad	0x3fec0e736049ecb3              # double 0.87676399999999999
	.quad	0x3fdfbb2788db0575              # double 0.49579800000000002
	.quad	0x3fcaae21101b0037              # double 0.20843900000000001
	.quad	0x3fd3c753e707e176              # double 0.30904100000000001
	.quad	0x3fe64bd987c6327f              # double 0.69675900000000002
	.quad	0x3fde80e496ededaf              # double 0.47661700000000001
	.quad	0x3fe0febd09e12a52              # double 0.53109600000000001
	.quad	0x3fe747021d10b1ff              # double 0.72741800000000001
	.quad	0x3fe35527e5215769              # double 0.60414500000000004
	.quad	0x3f98bac710cb295f              # double 0.024150000000000001
	.quad	0x3feeecc3e3193f6c              # double 0.96640199999999998
	.quad	0x3fc945f9df548ece              # double 0.19744800000000001
	.quad	0x3fe220bc382a12f9              # double 0.566496
	.quad	0x3fdaeae5bc87db2b              # double 0.42058699999999999
	.quad	0x3fe09835158b8280              # double 0.51858000000000004
	.quad	0x3fe0e85985ad538b              # double 0.52836300000000003
	.quad	0x3fe6ffac1d29dc72              # double 0.71870999999999996
	.quad	0x3fe681b003686a4d              # double 0.70333100000000004
	.quad	0x3fe5c1d6cf850df1              # double 0.67991199999999996
	.quad	0x3fe48a2014727dcc              # double 0.64186100000000001
	.quad	0x3fd7c069e7fb267c              # double 0.37111899999999998
	.quad	0x3feb250b524399b3              # double 0.84827200000000003
	.quad	0x3fee4c39ffd60e95              # double 0.94680500000000001
	.quad	0x3fdbe054690de093              # double 0.43556699999999998
	.quad	0x3fe596df3f961805              # double 0.67466700000000002
	.quad	0x3fe6d3aa369fcf3e              # double 0.71333800000000003
	.quad	0x3febf37329c347e9              # double 0.87346800000000002
	.quad	0x3fd8b31c219eb639              # double 0.385932
	.quad	0x3fd48d823422467c              # double 0.32113700000000001
	.quad	0x3fe4d69b17481b22              # double 0.65119700000000003
	.quad	0x3feaa7ce0fc2eba2              # double 0.83298399999999995
	.quad	0x3feb799a1fd1569f              # double 0.85859399999999997
	.quad	0x3fef481908e581cf              # double 0.97755099999999994
	.quad	0x3fc8a4ebdd334c5e              # double 0.19253300000000001
	.quad	0x3fb27fc32ebe596d              # double 0.072262000000000007
	.quad	0x3feaacfd8f0c77de              # double 0.83361700000000005
	.quad	0x3fe74256bca5375d              # double 0.72684800000000005
	.quad	0x3fb440d0aaa7ded7              # double 0.079114000000000004
	.quad	0x3fe934aec8d5c747              # double 0.78768099999999996
	.quad	0x3fe284b5dcc63f14              # double 0.57869999999999999
	.quad	0x3fee8b178b370047              # double 0.95447899999999997
	.quad	0x3fb0b1bbcf4e874d              # double 0.065212000000000006
	.quad	0x3fda3fb3743632c2              # double 0.410138
	.quad	0x3fca71a3b14a9047              # double 0.206593
	.quad	0x3fe42d234eb9a177              # double 0.63051000000000001
	.quad	0x3fe365b63d3e4ef0              # double 0.60616599999999998
	.quad	0x3fe118244e93e1ca              # double 0.53419700000000003
	.quad	0x3fd21476af89c5e7              # double 0.282499
	.quad	0x3fb5a4ce8101f31f              # double 0.084545999999999996
	.quad	0x3fe5c916ca46e08f              # double 0.68079699999999999
	.quad	0x3fe4a6d8b1dd5d3e              # double 0.64536700000000002
	.quad	0x3fe338066c2acb86              # double 0.60058900000000004
	.quad	0x3fd3b3461309c800              # double 0.30781700000000001
	.quad	0x3fe411afc04c8bca              # double 0.62715900000000002
	.quad	0x3fead306a2b17050              # double 0.83826000000000001
	.quad	0x3fd1a2ca9ac36545              # double 0.275561
	.quad	0x3fb9cbddb9841aac              # double 0.100767
	.quad	0x3fe1e82517e77d52              # double 0.55958799999999997
	.quad	0x3fe620dfdef8487c              # double 0.69151300000000004
	.quad	0x3f9a67a52ac753e7              # double 0.025786
	.quad	0x3fe0ddcc63f14120              # double 0.52707499999999996
	.quad	0x3fb737867f0aa21a              # double 0.090690999999999993
	.quad	0x3fea4e054690de09              # double 0.82202399999999998
	.quad	0x3fedd527e5215769              # double 0.93227000000000004
	.quad	0x3fe74fede97d06bc              # double 0.72850700000000002
	.quad	0x3fd3f1c75818c5ca              # double 0.31163200000000002
	.quad	0x3fe8791a32b12d34              # double 0.76478299999999999
	.quad	0x3fd7e86c6583e857              # double 0.37356099999999998
	.quad	0x3fd96be37de939eb              # double 0.39721000000000001
	.quad	0x3fe23d72bcb5fe54              # double 0.57000099999999998
	.quad	0x3fee278d0cc35ce2              # double 0.94232800000000005
	.quad	0x3f975536933a0408              # double 0.022786000000000001
	.quad	0x3fe7b1593e5fb720              # double 0.74039900000000002
	.quad	0x3fec66a11ec918e3              # double 0.88752799999999998
	.quad	0x3fdf923a29c779a7              # double 0.49330000000000002
	.quad	0x3fbd5d701d9f4d38              # double 0.114707
	.quad	0x3fc11c75818c5c9a              # double 0.13368099999999999
	.quad	0x3fc3b59578a2a90d              # double 0.153979
	.quad	0x3fd0fc69728a6117              # double 0.26540599999999998
	.quad	0x3fe91f75104d551d              # double 0.78508999999999995
	.quad	0x3fe56c3547e06962              # double 0.66945900000000003
	.quad	0x3f89f5dfeb8d8234              # double 0.012676
	.quad	0x3fe87329c347e8cd              # double 0.76405800000000001
	.quad	0x3fe232df505d0fa6              # double 0.56871000000000005
	.quad	0x3fa68f08461f9f02              # double 0.044060000000000002
	.quad	0x3fd8bf2b239a38fc              # double 0.38666800000000001
	.quad	0x3fedff9b56323bbc              # double 0.93745199999999995
	.quad	0x3fea55e28aa43351              # double 0.82298400000000005
	.quad	0x3fccc3eb7cbb3c82              # double 0.22472900000000001
	.quad	0x3fc0a7ce0fc2eba2              # double 0.13012099999999999
	.quad	0x3fec4a1272c94b38              # double 0.88404199999999999
	.quad	0x3feee0999dcb5782              # double 0.96491700000000002
	.quad	0x3feb2374794ea077              # double 0.848078
	.quad	0x3fdccef240fa9c13              # double 0.450131
	.quad	0x3fef159c49774257              # double 0.97138800000000002
	.quad	0x3fdc72367e414e7f              # double 0.444471
	.quad	0x3fda2d44dca8e2e3              # double 0.40901300000000002
	.quad	0x3fe87342edbb59de              # double 0.76407000000000003
	.quad	0x3f9b19e731d2e0e3              # double 0.026466
	.quad	0x3fd92ef911cf355d              # double 0.39349200000000001
	.quad	0x3fea9fb1e18efbb1              # double 0.83199400000000001
	.quad	0x3fc4658c4bd33d29              # double 0.15934899999999999
	.quad	0x3fdcc3c5bd0e12e8              # double 0.44944899999999999
	.quad	0x3fc3fb8b26394fad              # double 0.156114
	.quad	0x3fe02e62131a8ef7              # double 0.50566199999999994
	.quad	0x3fe3d0d2806af46b              # double 0.61924100000000004
	.quad	0x3fe7fab96f21f6cb              # double 0.74935600000000002
	.quad	0x3fd14a1f080303c0              # double 0.27014899999999997
	.quad	0x3fd9e5710880d802              # double 0.40462900000000002
	.quad	0x3fe75e41d4b6a61a              # double 0.73025600000000002
	.quad	0x3fe98eed02cd39da              # double 0.79869699999999999
	.quad	0x3fe695a07b352a84              # double 0.70576499999999998
	.quad	0x3fdc20a30db6a1e8              # double 0.43949199999999999
	.quad	0x3fef5f37329c347f              # double 0.98037300000000004
	.quad	0x3fe5e1d8622c4502              # double 0.68381899999999995
	.quad	0x3fdfc0c62e4d1a65              # double 0.496141
	.quad	0x3fc80a9de8b3b320              # double 0.18782399999999999
	.quad	0x3fd652f7f498c3b1              # double 0.34881400000000001
	.quad	0x3fe0cf9a06a6e32e              # double 0.52534199999999998
	.quad	0x3fe222ca9ac36545              # double 0.566747
	.quad	0x3fdfb2c40d0aaa7e              # double 0.495286
	.quad	0x3fdcb1f255f3519c              # double 0.44836100000000001
	.quad	0x3fee5692b3cc4ac7              # double 0.94806800000000002
	.quad	0x3fe3dbea0ba1f4b2              # double 0.62059500000000001
	.quad	0x3fee300bcbe61d00              # double 0.94336500000000001
	.quad	0x3fe1df1172ef0ae5              # double 0.55847999999999998
	.quad	0x3fd0b08dd1e53a82              # double 0.26077600000000001
	.quad	0x3fc78854cdb7ae58              # double 0.18384800000000001
	.quad	0x3fde71b0468448cf              # double 0.47568899999999997
	.quad	0x3fc92dfd694ccab4              # double 0.196716
	.quad	0x3fe5bd44998d0460              # double 0.67935400000000001
	.quad	0x3fdf8dbcec84f8f9              # double 0.49302600000000002
	.quad	0x3fe39314445aa2e4              # double 0.61170400000000003
	.quad	0x3fd30c9539b88872              # double 0.29764299999999999
	.quad	0x3fe5bb62413db7f1              # double 0.67912399999999995
	.quad	0x3fd4fe64f54d1e97              # double 0.32802700000000001
	.quad	0x3fdf324851a86940              # double 0.48744399999999999
	.quad	0x3fe4aaf1455219a8              # double 0.64586699999999997
	.quad	0x3fe1b4373f316e37              # double 0.55324899999999999
	.quad	0x3feac6c11a11233e              # double 0.83676200000000001
	.quad	0x3fe6aabcd78c4370              # double 0.70834200000000003
	.quad	0x3f9b7c7820a30db7              # double 0.026842000000000001
	.quad	0x3fd158b3f63c31df              # double 0.27103899999999997
	.quad	0x3feea584f4c6e6da              # double 0.95770500000000003
	.quad	0x3fcda5ebb7739f34              # double 0.231626
	.quad	0x3fcc30ec31162281              # double 0.22024299999999999
	.quad	0x3fd122c881e4712e              # double 0.26774799999999999
	.quad	0x3fee5425f202107b              # double 0.94777199999999995
	.quad	0x3fe38ff759685122              # double 0.61132399999999998
	.quad	0x3fe3f7c02afdda8c              # double 0.62399300000000002
	.quad	0x3fcb9884c6a3bde0              # double 0.21559200000000001
	.quad	0x3fdff16f4384ba0f              # double 0.49911100000000003
	.quad	0x3fc75e5aff2a172b              # double 0.18256700000000001
	.quad	0x3fef193d5347a5b1              # double 0.971831
	.quad	0x3fb9fc4c165907d9              # double 0.101506
	.quad	0x3fecac1094a2b9d4              # double 0.89600400000000002
	.quad	0x3fe1239e6ab9b23e              # double 0.53559800000000002
	.quad	0x3fe3939a7c17a893              # double 0.61176799999999998
	.quad	0x3fde2f5126634118              # double 0.471638
	.quad	0x3fe27ed41b75a74c              # double 0.577982
	.quad	0x3fa9ba3ca7503b82              # double 0.050249000000000002
	.quad	0x3fdcfaa8a82a5615              # double 0.45279900000000001
	.quad	0x3fe5469f8c21e1d2              # double 0.66487099999999999
	.quad	0x3fede7c8d195896a              # double 0.93454400000000004
	.quad	0x3fdab1f687b139c9              # double 0.41711199999999998
	.quad	0x3fe856da0168b5cc              # double 0.760602
	.quad	0x3fc95f56a7ac81d4              # double 0.19822200000000001
	.quad	0x3fef9869835158b8              # double 0.98735499999999998
	.quad	0x3fe21650a45d41fa              # double 0.56522399999999995
	.quad	0x3fede74299d883ba              # double 0.93447999999999998
	.quad	0x3fd7bb83cf2cf95d              # double 0.37081999999999998
	.quad	0x3fe898c3b0c4588a              # double 0.768648
	.quad	0x3fe41d30270f3882              # double 0.62856299999999998
	.quad	0x3fe9ce7cd0353719              # double 0.80645599999999995
	.quad	0x3fe1efb6dca07f67              # double 0.56051200000000001
	.quad	0x3fd2e37585be1a82              # double 0.29513299999999998
	.quad	0x3fc05e1c15097c81              # double 0.12787200000000001
	.quad	0x3fe75d2d01c0ca60              # double 0.730124
	.quad	0x3f9dcb9a9da597d5              # double 0.029097000000000001
	.quad	0x3fd5a593a2df9379              # double 0.338231
	.quad	0x3fef697f1f9acffa              # double 0.98162799999999995
	.quad	0x3fed2c16df3f9618              # double 0.911632
	.quad	0x3fecf7d0f1f57b42              # double 0.90525100000000003
	.quad	0x3fe7a888b545c78a              # double 0.73932299999999995
	.quad	0x3faa599ed7c6fbd2              # double 0.051464999999999997
	.quad	0x3fe42048e043a216              # double 0.62894099999999997
	.quad	0x3fe066ec9e236c16              # double 0.51256400000000002
	.quad	0x3fa986b9c304ccee              # double 0.049855999999999998
	.quad	0x3fbc41248d7e0264              # double 0.11036899999999999
	.quad	0x3fc16694898f605b              # double 0.13594300000000001
	.quad	0x3fe6fd9fd36f7e3d              # double 0.71845999999999999
	.quad	0x3fb0157eed45e918              # double 0.062827999999999995
	.quad	0x3fd4b65a9a804966              # double 0.32362999999999997
	.quad	0x3fe5887229e90796              # double 0.672906
	.quad	0x3fedb6006d0d4995              # double 0.92846700000000004
	.quad	0x3fb1d96e9bbf0dc7              # double 0.069723999999999994
	.quad	0x3fe858a548238540              # double 0.76082099999999997
	.quad	0x3fe49b8887229e90              # double 0.64398599999999995
	.quad	0x3fb8a02b841248d8              # double 0.096194000000000002
	.quad	0x3fec902de00d1b71              # double 0.89259999999999995
	.quad	0x3fe65b8fde2ef4e0              # double 0.69867699999999999
	.quad	0x3feaf3affb04ee7c              # double 0.84224699999999996
	.quad	0x3feaa0620ab71327              # double 0.83207799999999998
	.quad	0x3fe0b586ca89fc6e              # double 0.52215900000000004
	.quad	0x3fc85492ff4ba51a              # double 0.190081
	.quad	0x3fe534202d9cf13d              # double 0.66261300000000001
	.quad	0x3fdb0f8c64fdb09a              # double 0.42282399999999998
	.quad	0x3fdd35c9e6687f45              # double 0.45640799999999998
	.quad	0x3fefb58afc47e49b              # double 0.99091099999999998
	.quad	0x3fefa88ace24bba1              # double 0.98932399999999998
	.quad	0x3fd0c3b0c4588a05              # double 0.26194400000000001
	.quad	0x3feb6db0dd82fd76              # double 0.85714000000000001
	.quad	0x3fe5a19c9d5a187a              # double 0.67597799999999997
	.quad	0x3fc1b56b87379746              # double 0.138349
	.quad	0x3fe5018a43bb40b3              # double 0.65643799999999997
	.quad	0x3fde551d68c692f7              # double 0.47394500000000001
	.quad	0x3fe51f0c34c1a8ac              # double 0.66003999999999996
	.quad	0x3fe2aaa19439de48              # double 0.58332899999999999
	.quad	0x3fee5fdef8487b9a              # double 0.94920300000000002
	.quad	0x3fe5a990f301eabc              # double 0.67694900000000002
	.quad	0x3fd3bbb62413db7f              # double 0.30833199999999999
	.quad	0x3fe85d3996fa82e8              # double 0.76137999999999995
	.quad	0x3fc28954a7f8012e              # double 0.144816
	.quad	0x3fd886940357a355              # double 0.383214
	.quad	0x3fd2d6d3b6cbd988              # double 0.29436200000000001
	.quad	0x3fdd5bc87db2b346              # double 0.458727
	.quad	0x3fd439c94f69ca9f              # double 0.316027
	.quad	0x3fca9331a08bfc22              # double 0.207617
	.quad	0x3fee5cee17a02fb6              # double 0.94884400000000002
	.quad	0x3fe89fd9ba1b1961              # double 0.769513
	.quad	0x3feba9131ec0b567              # double 0.86438899999999996
	.quad	0x3f744567125dd096              # double 0.0049490000000000003
	.quad	0x3fe03367a0f9096c              # double 0.50627500000000003
	.quad	0x3fcf96bfca85cab0              # double 0.24678800000000001
	.quad	0x3fefb3743632c1f4              # double 0.99065599999999998
	.quad	0x3fd4a771c970f7ba              # double 0.32272000000000001
	.quad	0x3fea698dcdb37c9a              # double 0.82538500000000004
	.quad	0x3fe6738e6d15ad10              # double 0.70160599999999995
	.quad	0x3feeb2fa93af74cd              # double 0.95934799999999997
	.quad	0x3fd5ab3edd8b60f2              # double 0.33857700000000002
	.quad	0x3fe41fdbd2fa0d78              # double 0.62888900000000003
	.quad	0x3fa7fb480a5accd5              # double 0.046838999999999999
	.quad	0x3fcfda597d49d7ba              # double 0.24885099999999999
	.quad	0x3fd47b80a9de8b3b              # double 0.32003799999999999
	.quad	0x3fd1aeafab53d641              # double 0.276287
	.quad	0x3fddf2b239a38fbd              # double 0.46793800000000002
	.quad	0x3fe9ed43d03968d7              # double 0.81021299999999996
	.quad	0x3fbd4bf0995aaf79              # double 0.11444
	.quad	0x3fd1c79f666234a8              # double 0.27780899999999997
	.quad	0x3fe1bb341e14bdfd              # double 0.55410199999999998
	.quad	0x3fe6cece9a2c6690              # double 0.71274499999999996
	.quad	0x3fb968d759ee88df              # double 0.099255999999999997
	.quad	0x3fb58a5482385404              # double 0.084141999999999995
	.quad	0x3fe2bb23571d1d47              # double 0.58534399999999998
	.quad	0x3fe269e1b089a027              # double 0.57542499999999996
	.quad	0x3fe475c0767d34df              # double 0.639374
	.quad	0x3fe2c4d87724fa8b              # double 0.58652899999999997
	.quad	0x3fedfc2656abde40              # double 0.93703000000000002
	.quad	0x3fe3324a6a875d57              # double 0.59988900000000001
	.quad	0x3fe8f3d9ec700043              # double 0.77976699999999999
	.quad	0x3f811276fb09203a              # double 0.0083359999999999997
	.quad	0x3fd25cb35f3d7d39              # double 0.286908
	.quad	0x3fe3b3eff1950332              # double 0.61571500000000001
	.quad	0x3fdd1c15097c8084              # double 0.45483899999999999
	.quad	0x3fe048e043a21640              # double 0.50889600000000002
	.quad	0x3fd835e74299d884              # double 0.37829000000000002
	.quad	0x3feefcac8e68e3ef              # double 0.96834399999999998
	.quad	0x3fee4b6c7a7c9de0              # double 0.94670699999999996
	.quad	0x3fd2533f42352eb6              # double 0.286331
	.quad	0x3fc45fe111276fb1              # double 0.15917600000000001
	.quad	0x3fd9fb09203a322b              # double 0.405947
	.quad	0x3fc9d1d4738a3b58              # double 0.20171600000000001
	.quad	0x3fe4b358f2e05ccd              # double 0.64689300000000005
	.quad	0x3fe43211cb039ef1              # double 0.63111200000000001
	.quad	0x3fd6fa8f7db6e504              # double 0.359043
	.quad	0x3f73f1843c3a42f2              # double 0.0048690000000000001
	.quad	0x3fb14dd72367e415              # double 0.067594000000000001
	.quad	0x3fd824638c975297              # double 0.37722099999999997
	.quad	0x3fe986c226809d49              # double 0.79769999999999996
	.quad	0x3fecded288ce703b              # double 0.9022
	.quad	0x3fe106b7aa25d8d8              # double 0.53207000000000004
	.quad	0x3fc33471f79420b4              # double 0.150038
	.quad	0x3fe4378ab0c88a48              # double 0.63178000000000001
	.quad	0x3fe01e731d2e0e30              # double 0.50371699999999997
	.quad	0x3fece0370cdc8755              # double 0.90237000000000001
	.quad	0x3fcaae3a3a8e7147              # double 0.20844199999999999
	.quad	0x3feee0ce0b912dba              # double 0.96494199999999997
	.quad	0x3fee8dcdb37c99af              # double 0.95481000000000005
	.quad	0x3fcfa493c89f40a3              # double 0.24721000000000001
	.quad	0x3fd0b07d0aed99cc              # double 0.260772
	.quad	0x3fe24f440af1cb8a              # double 0.57217600000000002
	.quad	0x3febe9707182235b              # double 0.87224599999999997
	.quad	0x3fe97c8f32378ab1              # double 0.79645500000000002
	.quad	0x3fa821294573a798              # double 0.047128000000000003
	.quad	0x3fefe9d94d0dcfcc              # double 0.99729599999999996
	.quad	0x3fdfbdd76683c298              # double 0.49596200000000001
	.quad	0x3fe652007dd44135              # double 0.69750999999999996
	.quad	0x3fe385e3da2f8bdf              # double 0.61009400000000003
	.quad	0x3fcad29131ec0b56              # double 0.20955099999999999
	.quad	0x3fd549e44fa05144              # double 0.33263500000000001
	.quad	0x3fe28a24463065f9              # double 0.57936299999999996
	.quad	0x3fe4055fbb517a46              # double 0.62565599999999999
	.quad	0x3fee736ac647778e              # double 0.95158900000000002
	.quad	0x3fdff9bdc69f8c22              # double 0.49961800000000001
	.quad	0x3fe8aaed1394317b              # double 0.77086500000000002
	.quad	0x3fc695faa8a82a56              # double 0.176452
	.quad	0x3f5437c5692b3cc5              # double 0.0012340000000000001
	.quad	0x3fe1155714b9cb68              # double 0.53385499999999997
	.quad	0x3fb03bc4d22c881e              # double 0.063411999999999996
	.quad	0x3fcff6ba0620ab71              # double 0.24971699999999999
	.quad	0x3fd95bd0e12e83a1              # double 0.396229
	.quad	0x3fef0c6d612c6ac2              # double 0.97026699999999999
	.quad	0x3fea95ebfa8f7db7              # double 0.83080100000000001
	.quad	0x3fb30f8c64fdb09a              # double 0.074455999999999994
	.quad	0x3fe40092ccf6be38              # double 0.62507000000000001
	.quad	0x3f8648c7192ea52f              # double 0.010881
	.quad	0x3fefdf266ba493c9              # double 0.99599000000000004
	.quad	0x3fe9a1b3aeee9574              # double 0.80098899999999995
	.quad	0x3fdfdc8b86b15f89              # double 0.497836
	.quad	0x3f8a20578e5c4eb5              # double 0.012756999999999999
	.quad	0x3fe84f4623d0bfa1              # double 0.75967700000000005
	.quad	0x3fea2df9378ee286              # double 0.81811199999999995
	.quad	0x3fe612d55a3a083a              # double 0.68979900000000005
	.quad	0x3fed6b228dc981bf              # double 0.91932800000000003
	.quad	0x3fd518090b417ca2              # double 0.329592
	.quad	0x3fd084ba0e842742              # double 0.25810100000000002
	.quad	0x3fae34fc610f0e91              # double 0.058998000000000002
	.quad	0x3fe4d6e47dc37a3e              # double 0.65123200000000003
	.quad	0x3fda75a31a4bdba1              # double 0.41343000000000002
	.quad	0x3fee95a07b352a84              # double 0.95576499999999997
	.quad	0x3fe4a1ccd9620685              # double 0.64475099999999996
	.quad	0x3fe9850374ff865d              # double 0.79748699999999995
	.quad	0x3fdcf04577d95571              # double 0.45216499999999998
	.quad	0x3fe688398a654930              # double 0.704129
	.quad	0x3fdf07bfe7e1fc09              # double 0.484848
	.quad	0x3fb0cf7caa7589f0              # double 0.065666000000000002
	.quad	0x3fcbcb1cc9646280              # double 0.217136
	.quad	0x3fcaef77f27fe4bd              # double 0.21043300000000001
	.quad	0x3fe2024b33daf8df              # double 0.56277999999999995
	.quad	0x3febf63c31df761d              # double 0.87380800000000003
	.quad	0x3fd38a82a5614df9              # double 0.30532900000000002
	.quad	0x3fe3782f51266341              # double 0.60842099999999999
	.quad	0x3fe0f7446f9b994e              # double 0.53018399999999999
	.quad	0x3fd6056c508b32cf              # double 0.34408100000000003
	.quad	0x3fedcb1ab0856e69              # double 0.93104299999999995
	.quad	0x3fed3f9c62a1b5c8              # double 0.91401500000000002
	.quad	0x3fea7a99fa11a976              # double 0.82746600000000003
	.quad	0x3fe49c886162f167              # double 0.64410800000000001
	.quad	0x3fe91ad85dfa871a              # double 0.78452699999999997
	.quad	0x3fe155f78359bc34              # double 0.541744
	.quad	0x3fea1a671ef30a4e              # double 0.81572299999999998
	.quad	0x3fe060ae9680e065              # double 0.51180199999999998
	.quad	0x3fe7c545846e8f2a              # double 0.74283100000000002
	.quad	0x3fd964c729f59cd0              # double 0.39677600000000002
	.quad	0x3fe56f9767903212              # double 0.66987200000000002
	.quad	0x3fe3030e3cd9a522              # double 0.59412299999999996
	.quad	0x3fe52b606b7aa25e              # double 0.66154500000000005
	.quad	0x3fd2ac2df0d41312              # double 0.29175899999999999
	.quad	0x3fee135b91f70de9              # double 0.939863
	.quad	0x3fec7ce3150dae3e              # double 0.89024499999999995
	.quad	0x3fc53a68b19a415f              # double 0.16584499999999999
	.quad	0x3fb8094e5d5b24ea              # double 0.093892000000000003
	.quad	0x3fb93cff64cf8d71              # double 0.098586999999999994
	.quad	0x3fe27a26a22b3893              # double 0.57741100000000001
	.quad	0x3fe427d88c1db014              # double 0.62986399999999998
	.quad	0x3fc3b8348f53c57a              # double 0.154059
	.quad	0x3fc4a70d1fa33376              # double 0.16134799999999999
	.quad	0x3fbb71001d5c3159              # double 0.107193
	.quad	0x3feebf6c2699c7bd              # double 0.96086700000000002
	.quad	0x3fd376e6106ab14f              # double 0.30413200000000001
	.quad	0x3fd4f7c6759ab6d0              # double 0.327623
	.quad	0x3fb2df2ecf206424              # double 0.073718000000000006
	.quad	0x3fe8edbd72bcb5fe              # double 0.77902099999999996
	.quad	0x3fea6e2867275686              # double 0.82594699999999999
	.quad	0x3fe15872f33ca31e              # double 0.54204699999999995
	.quad	0x3fe1ece789e774ef              # double 0.56016900000000003
	.quad	0x3fecae87d2c7b891              # double 0.89630500000000002
	.quad	0x3fd15a0be5109071              # double 0.271121
	.quad	0x3fec2c81d3aa36a0              # double 0.88043300000000002
	.quad	0x3f7084e831ad2136              # double 0.0040330000000000001
	.quad	0x3fc3ed288ce703b0              # double 0.15567500000000001
	.quad	0x3fe2df47f993d534              # double 0.58975599999999995
	.quad	0x3fdcc4156e264e48              # double 0.44946799999999998
	.quad	0x3fe1b3311a543f1c              # double 0.55312399999999995
	.quad	0x3fe45441355475a3              # double 0.63528499999999999
	.quad	0x3fca842fa5093965              # double 0.20715900000000001
	.quad	0x3f8784662bae03b4              # double 0.011483
	.quad	0x3fe9b5e95b78cc9a              # double 0.80345599999999995
	.quad	0x3fe259f4d37c1377              # double 0.57348100000000002
	.quad	0x3fe1b354c122749f              # double 0.55314099999999999
	.quad	0x3fe0c51fc4c16590              # double 0.52406299999999995
	.quad	0x3fef429e0a41a262              # double 0.97688200000000003
	.quad	0x3fccde225fa658c5              # double 0.22552900000000001
	.quad	0x3fa5a250f840181e              # double 0.042254
	.quad	0x3fc377079e59f2bb              # double 0.15207000000000001
	.quad	0x3fd41633482be8bc              # double 0.313855
	.quad	0x3fefee221c8a7a42              # double 0.99781900000000001
	.quad	0x3fa8a5ce5b4245f6              # double 0.048140000000000002
	.quad	0x3fb431593e5fb720              # double 0.078878000000000004
	.quad	0x3fd80d38cda6e760              # double 0.375807
	.quad	0x3fe25cbbc2b94d94              # double 0.57382
	.quad	0x3fe60a9bcfd4bf0a              # double 0.68879500000000005
	.quad	0x3fa42b94d9407896              # double 0.039394999999999999
	.quad	0x3fe4aa60913a4f87              # double 0.64579799999999998
	.quad	0x3fe02773e24febd1              # double 0.50481600000000004
	.quad	0x3feea29845dc8323              # double 0.95734799999999998
	.quad	0x3fcda0168b5cbff4              # double 0.23144799999999999
	.quad	0x3fce22a2c2374795              # double 0.235432
	.quad	0x3fd29c2c1b10fd7e              # double 0.29078199999999998
	.quad	0x3fb8cb07d0aed99d              # double 0.096848000000000004
	.quad	0x3fefc9949e8815e4              # double 0.99335700000000004
	.quad	0x3fef85ea24cc6823              # double 0.985097
	.quad	0x3fcb710880d801b4              # double 0.21438699999999999
	.quad	0x3fd53a19008205ff              # double 0.33167099999999999
	.quad	0x3fe24fbfc6540cc8              # double 0.57223500000000005
	.quad	0x3fac48adeebb341e              # double 0.055241999999999999
	.quad	0x3fe35857afea3df7              # double 0.60453400000000002
	.quad	0x3fef62888b545c79              # double 0.98077800000000003
	.quad	0x3fb5650a45d41fa7              # double 0.083572999999999995
	.quad	0x3fe320ea5b530ced              # double 0.59776799999999997
	.quad	0x3fe2cff21b3aeee9              # double 0.58788399999999996
	.quad	0x3fd44003254e6e22              # double 0.31640699999999999
	.quad	0x3feed2c9d16fc9bc              # double 0.96323099999999994
	.quad	0x3fc0c67168f8e7de              # double 0.13105600000000001
	.quad	0x3fe0896feb4a6656              # double 0.51677700000000004
	.quad	0x3f868405b39e279e              # double 0.010994
	.quad	0x3fed346bacf74470              # double 0.91264900000000004
	.quad	0x3fe26473471f7942              # double 0.574762
	.quad	0x3fe5e46ae3a3a8e7              # double 0.68413299999999999
	.quad	0x3fef419e30014f8b              # double 0.97675999999999996
	.quad	0x3fc6ba0620ab7132              # double 0.17755199999999999
	.quad	0x3fa0bd66277c45cc              # double 0.032695000000000002
	.quad	0x3fdada9c99285a92              # double 0.41959299999999999
	.quad	0x3fe9c959e6256367              # double 0.80582900000000002
	.quad	0x3fd266a11ec918e3              # double 0.28751399999999999
	.quad	0x3fda65492ff4ba52              # double 0.41243200000000002
	.quad	0x3fdc3543aeab7996              # double 0.440751
	.quad	0x3fe589d495182a99              # double 0.67307499999999998
	.quad	0x3fb07abfb9bed30f              # double 0.064373
	.quad	0x3fe348387df5cf25              # double 0.60256600000000005
	.quad	0x3fe62f87ad080b67              # double 0.69330199999999997
	.quad	0x3fea5883ba3443d4              # double 0.82330499999999995
	.quad	0x3fd9c7c0f4517614              # double 0.40281699999999998
	.quad	0x3fd1724b76f6d762              # double 0.27260099999999998
	.quad	0x3fed20d9945b6c37              # double 0.91025999999999996
	.quad	0x3fdae6ff7dfa00e2              # double 0.42034899999999997
	.quad	0x3fd92e33eff19503              # double 0.39344499999999999
	.quad	0x3fd23ed0f627392a              # double 0.285084
	.quad	0x3fdfc69f8c21e1d2              # double 0.49649799999999999
	.quad	0x3fe9dcee17a02fb6              # double 0.80821900000000002
	.quad	0x3fc05b6c3760bf5d              # double 0.12778999999999999
	.quad	0x3fe5611fd5885d31              # double 0.66810599999999998
	.quad	0x3fed3e6601bc98a2              # double 0.91386699999999998
	.quad	0x3fc7b024f6598e11              # double 0.18506300000000001
	.quad	0x3fbbb3d8e0008638              # double 0.108213
	.quad	0x3fe426f1dc50ce4f              # double 0.62975400000000004
	.quad	0x3fa7357e670e2c13              # double 0.045330000000000002
	.quad	0x3fd11309c7ffde72              # double 0.266787
	.quad	0x3facaeea63b688be              # double 0.056022000000000002
	.quad	0x3fdde94ee392e1ef              # double 0.46736499999999997
	.quad	0x3fefcd0bb6ed6777              # double 0.99377999999999999
	.quad	0x3fee7778dd616f87              # double 0.95208400000000004
	.quad	0x3fdbf926c7eae5bd              # double 0.43708200000000003
	.quad	0x3fec111f0c34c1a9              # double 0.87709000000000004
	.quad	0x3fe1b8305d95dd4c              # double 0.55373399999999995
	.quad	0x3fba5a14488c60cc              # double 0.102937
	.quad	0x3fedb2ce89656ef0              # double 0.92807700000000004
	.quad	0x3fd8f39d1b2e59b0              # double 0.38986900000000002
	.quad	0x3fe6c6b053198288              # double 0.711754
	.quad	0x3fc1d72bcb5fe543              # double 0.139379
	.quad	0x3fb7bb73083558a7              # double 0.092703999999999995
	.quad	0x3febc7f13059641f              # double 0.86815699999999996
	.quad	0x3fced5ae1cde5d18              # double 0.240896
	.quad	0x3fee3d1676640a6c              # double 0.94495700000000004
	.quad	0x3fe972e48e8a71de              # double 0.79527499999999995
	.quad	0x3fdc972474538ef3              # double 0.44672499999999998
	.quad	0x3fe1e29307af20ea              # double 0.55890799999999996
	.quad	0x3fd1c98e53eb399f              # double 0.27792699999999998
	.quad	0x3fec6d19dece5711              # double 0.88831800000000005
	.quad	0x3fef7c2656abde40              # double 0.98390500000000002
	.quad	0x3fce628027d88c1e              # double 0.23738100000000001
	.quad	0x3fe2f5c6c11a1123              # double 0.59250199999999997
	.quad	0x3fc4ed2cbea4ebdd              # double 0.16348799999999999
	.quad	0x3fed185ad538ac19              # double 0.909223
	.quad	0x3fd554f7a919695e              # double 0.33331100000000002
	.quad	0x3fda7e175d13d74d              # double 0.41394599999999998
	.quad	0x3fea406e19b90eaa              # double 0.82036500000000001
	.quad	0x3fd48f2170931013              # double 0.32123600000000002
	.quad	0x3f8a8cdea033e78e              # double 0.012964
	.quad	0x3fe7b4245f5ad96a              # double 0.74073999999999995
	.quad	0x3f90dd82fd75e204              # double 0.016469999999999999
	.quad	0x3fefc10f94c87981              # double 0.992317
	.quad	0x3fe10d9d7774aba4              # double 0.53291200000000005
	.quad	0x3fee574d594f26af              # double 0.94815700000000003
	.quad	0x3fe4334a44c7b02d              # double 0.63126099999999996
	.quad	0x3fe040e1719f7f8d              # double 0.50792000000000004
	.quad	0x3fe2ce7253da72a8              # double 0.58770100000000003
	.quad	0x3fe74da9003eea21              # double 0.72823000000000004
	.quad	0x3fbfc1bda5119ce0              # double 0.12404999999999999
	.quad	0x3fa8c6f7a0b5ed8d              # double 0.048392999999999999
	.quad	0x3fcab252ce032db2              # double 0.208567
	.quad	0x3fee7f865d7cb2d9              # double 0.953067
	.quad	0x3fd236694898f606              # double 0.28457100000000002
	.quad	0x3fe8eb851eb851ec              # double 0.77875000000000005
	.quad	0x3fe0c72e275ab7dc              # double 0.52431399999999995
	.quad	0x3fe85e529bae46d0              # double 0.76151400000000002
	.quad	0x3fefdb940fecdd0e              # double 0.99555400000000005
	.quad	0x3fe00897e996312f              # double 0.50104899999999997
	.quad	0x3fe2f2d1aeb3dd12              # double 0.59214100000000003
	.quad	0x3fef4aa7589efd87              # double 0.97786300000000003
	.quad	0x3fd4387160956c0d              # double 0.31594499999999998
	.quad	0x3fe7e158750c1b97              # double 0.74625799999999998
	.quad	0x3fdf45baf533f423              # double 0.48863099999999998
	.quad	0x3fefefed634549b6              # double 0.99803799999999998
	.quad	0x3fef78d2e514c22f              # double 0.98349900000000001
	.quad	0x3fdee79aae6c8f75              # double 0.48288599999999998
	.quad	0x3fef3dc26dce39b4              # double 0.97628899999999996
	.quad	0x3fe3b8800eae18ad              # double 0.61627200000000004
	.quad	0x3fed4102ff8ec0f9              # double 0.91418600000000005
	.quad	0x3fe105e80bed740c              # double 0.53197099999999997
	.quad	0x3fee9db445ed4a1b              # double 0.95675100000000002
	.quad	0x3fee61f3a57eaa2a              # double 0.949457
	.quad	0x3fdbd04a2fcefaa4              # double 0.43458799999999997
	.quad	0x3fe0711947cfa26a              # double 0.51380599999999998
	.quad	0x3fef151c5c5718ec              # double 0.97132700000000005
	.quad	0x3fb186013660e51d              # double 0.068450999999999998
	.quad	0x3fca0663c74fb54a              # double 0.20332
	.quad	0x3fe9c4998d045fe1              # double 0.80524899999999999
	.quad	0x3fd0b0d9513f8db5              # double 0.26079400000000003
	.quad	0x3fdaf2170931012a              # double 0.42102600000000001
	.quad	0x3fe59a08bfc2224f              # double 0.67505300000000001
	.quad	0x3fc523e5b8561d43              # double 0.165158
	.quad	0x3faab6f19934efcc              # double 0.052177000000000001
	.quad	0x3fa6bf22c01e68a1              # double 0.044427000000000001
	.quad	0x3fe1545a5fc7e6b4              # double 0.541547
	.quad	0x3fac267839cd8128              # double 0.054981000000000002
	.quad	0x3fdfe54b48d3ae68              # double 0.49836999999999998
	.quad	0x3fa405d52c16df40              # double 0.039107000000000003
	.quad	0x3fe4d2cbea4ebdd3              # double 0.65073199999999998
	.quad	0x3fd2d71f36262cba              # double 0.29437999999999998
	.quad	0x3fa6496ededaec4a              # double 0.043528999999999998
	.quad	0x3fe05d13d74d594f              # double 0.51136199999999998
	.quad	0x3fea2702a3486f05              # double 0.81726200000000004
	.quad	0x3fde80fdc1615ec0              # double 0.47662300000000002
	.quad	0x3fb34906034f3fd9              # double 0.075332999999999997
	.quad	0x3feb769a91105e1c              # double 0.85822799999999999
	.quad	0x3fe65a20ddc61954              # double 0.69850199999999996
	.quad	0x3fdc49fd7a13c255              # double 0.44201600000000002
	.quad	0x3fe1ce2d1f1cfbb9              # double 0.55641799999999997
	.quad	0x3fe910fd7e45803d              # double 0.78332400000000002
	.quad	0x3fd68db0574b4070              # double 0.35239799999999999
	.quad	0x3fd5b890d5a5b963              # double 0.33939000000000002
	.quad	0x3fe9677f6b1a2a4e              # double 0.79388400000000003
	.quad	0x3fe9e59af9ebe9c9              # double 0.80927800000000005
	.quad	0x3fd39784ec636b09              # double 0.30612299999999998
	.quad	0x3fed0b3700474d9c              # double 0.90761899999999995
	.quad	0x3feb161a1db877ab              # double 0.84644799999999998
	.quad	0x3fed438d1d8a5482              # double 0.91449599999999998
	.quad	0x3fe53c382a12f901              # double 0.663601
	.quad	0x3fd91209edbf8b9c              # double 0.39172600000000002
	.quad	0x3fef0c8cd63cb817              # double 0.97028199999999997
	.quad	0x3feae20ee8d10f52              # double 0.84009500000000004
	.quad	0x3f90203e63e8dda5              # double 0.015748000000000002
	.quad	0x3fd5a21ea35935fc              # double 0.33801999999999999
	.quad	0x3fe2a109d0635a42              # double 0.58215799999999995
	.quad	0x3fea2de43ed959a3              # double 0.818102
	.quad	0x3fefc71f79420b3d              # double 0.99305699999999996
	.quad	0x3fe42f6a50d6b229              # double 0.63078800000000002
	.quad	0x3fe1ce746cb966be              # double 0.55645199999999995
	.quad	0x3fe098d477bbf940              # double 0.51865600000000001
	.quad	0x3fe4ec8711d798d9              # double 0.65387300000000004
	.quad	0x3fe829c12f09d8c7              # double 0.75509700000000002
	.quad	0x3fd979bfdf7e8039              # double 0.39805600000000002
	.quad	0x3fed0385c67dfe33              # double 0.90668000000000004
	.quad	0x3fe88d25edd05293              # double 0.76722999999999997
	.quad	0x3feb3f63c31df762              # double 0.85148800000000002
	.quad	0x3fd7e864020817fc              # double 0.37355899999999997
	.quad	0x3fe43358f2e05ccd              # double 0.63126800000000005
	.quad	0x3fe9e4020817fc76              # double 0.809083
	.quad	0x3fcf09741d084e83              # double 0.242476
	.quad	0x3fe87c84b5dcc63f              # double 0.76519999999999999
	.quad	0x3fe5b280f12c27a6              # double 0.67803999999999998
	.quad	0x3fae80e065300581              # double 0.059576999999999998
	.quad	0x3fc24851a8694035              # double 0.14283199999999999
	.quad	0x3fa061e92923e5b8              # double 0.031996999999999998
	.quad	0x3f9cf1c3265add9c              # double 0.028265999999999999
	.quad	0x3fcebd017dae8188              # double 0.240143
	.quad	0x3fe0346fdeb52c9d              # double 0.50640099999999999
	.quad	0x3fdcb18116ebd4d0              # double 0.44833400000000001
	.quad	0x3fc4f7878b7a1c26              # double 0.16380400000000001
	.quad	0x3fbce7ddca4b124d              # double 0.112913
	.quad	0x3fb9f82b1f687b14              # double 0.10144300000000001
	.quad	0x3fed653c9abb01c9              # double 0.91860799999999998
	.quad	0x3fe36af251c193b4              # double 0.60680500000000004
	.quad	0x3fed3964a59c065b              # double 0.91325599999999996
	.quad	0x3fd36ca03c4b09ea              # double 0.30350500000000002
	.quad	0x3feca65492ff4ba5              # double 0.89530399999999999
	.quad	0x3fe267be553ac4f8              # double 0.57516400000000001
	.quad	0x3fe17d5cb790fb65              # double 0.54655299999999996
	.quad	0x3fecc5260f5e41d5              # double 0.89906600000000003
	.quad	0x3fe581a9b8cb8e08              # double 0.67207799999999995
	.quad	0x3fe58f88333fc86d              # double 0.67377100000000001
	.quad	0x3fdaddebd9018e75              # double 0.41979499999999997
	.quad	0x3feba8b2a6b0d951              # double 0.86434299999999997
	.quad	0x3fc2d5f138bcdff0              # double 0.14715400000000001
	.quad	0x3fe3f0329802c0a5              # double 0.62307100000000004
	.quad	0x3fed769014b599aa              # double 0.92072299999999996
	.quad	0x3feabc1eff9f87f0              # double 0.83546399999999998
	.quad	0x3f948a159817b95a              # double 0.020057999999999999
	.quad	0x3fd98ba40d90e23b              # double 0.399148
	.quad	0x3fe6fe6d58c8eef2              # double 0.71855800000000003
	.quad	0x3feee0029f16b11c              # double 0.96484499999999995
	.quad	0x3fe6ca83b1d0c804              # double 0.71222099999999999
	.quad	0x3fb25e56cd6c2efd              # double 0.071751999999999996
	.quad	0x3fd6118c197e5647              # double 0.34482099999999999
	.quad	0x3fb86b15f88fc936              # double 0.095383999999999996
	.quad	0x3fd944bb1af3a14d              # double 0.39482
	.quad	0x3fc088df37329c34              # double 0.12917699999999999
	.quad	0x3fd2ab96f21f6cad              # double 0.29172300000000001
	.quad	0x3fedfd912556d19e              # double 0.93720300000000001
	.quad	0x3fe78d306a2b1705              # double 0.735985
	.quad	0x3fda5336deb95e5b              # double 0.411329
	.quad	0x3fea6be1650a45d4              # double 0.82566899999999998
	.quad	0x3f38a43bb40b34e7              # double 3.7599999999999998E-4
	.quad	0x3fde8383ad9f0a1c              # double 0.47677700000000001
	.quad	0x3fb5274e22a2c237              # double 0.082630999999999996
	.quad	0x3fe49fbe76c8b439              # double 0.64449999999999996
	.quad	0x3fe74d07852f7f4a              # double 0.72815300000000005
	.quad	0x3fea795d4e8fb00c              # double 0.82731500000000002
	.quad	0x3fdf146e4c0df58c              # double 0.485622
	.quad	0x3fec1c2a02320968              # double 0.87843800000000005
	.quad	0x3f8ec3dab5c39bcc              # double 0.015022000000000001
	.quad	0x3fe2d76683c297c0              # double 0.58879400000000004
	.quad	0x3f95a8deb0fadf2f              # double 0.021152000000000001
	.quad	0x3f99b6f5caf2d7f9              # double 0.025111999999999999
	.quad	0x3fb9f99c38b04ab6              # double 0.101465
	.quad	0x3fb64fb97bb73083              # double 0.087153999999999995
	.quad	0x3fc129f59ccfaeff              # double 0.13409299999999999
	.quad	0x3fc3fec99f1ae2da              # double 0.15621299999999999
	.quad	0x3fc7352220bc382a              # double 0.181309
	.quad	0x3fd94dbdf8f47304              # double 0.39537
	.quad	0x3fd4c9c0a8d21bc1              # double 0.32481399999999999
	.quad	0x3fed6fe718a86d72              # double 0.91991000000000001
	.quad	0x3fe9a51a005c4652              # double 0.80140400000000001
	.quad	0x3fdad47bedb72820              # double 0.41921900000000001
	.quad	0x3fc8185058dde7a7              # double 0.18824199999999999
	.quad	0x3fddf25a250f8402              # double 0.46791700000000003
	.quad	0x3fe6fcbd556084a5              # double 0.71835199999999999
	.quad	0x3fdae086bdf4c2b5              # double 0.41995399999999999
	.quad	0x3fe9b93ee5eedcc2              # double 0.80386299999999999
	.quad	0x3fee263305100a39              # double 0.94216299999999997
	.quad	0x3fefbaa9b499d020              # double 0.99153599999999997
	.quad	0x3fd5c0c62e4d1a65              # double 0.339891
	.quad	0x3fbb644955b4677b              # double 0.106999
	.quad	0x3fee9d57ff9b5632              # double 0.95670699999999997
	.quad	0x3fe9db4cc2507208              # double 0.80801999999999996
	.quad	0x3fe32fa93af74cd3              # double 0.59956799999999999
	.quad	0x3fe32a12f901083e              # double 0.59888600000000003
	.quad	0x3fefef7c243dccea              # double 0.99798399999999998
	.quad	0x3fcdba8826aa8eb4              # double 0.23225499999999999
	.quad	0x3fd506f262888b54              # double 0.32854899999999998
	.quad	0x3fe31774256bca53              # double 0.59661299999999995
	.quad	0x3fe38f301eabbcb2              # double 0.61122900000000002
	.quad	0x3fef8ffb8b263950              # double 0.98632600000000004
	.quad	0x3feff4eca686e7e6              # double 0.99864799999999998
	.quad	0x3fe7a7a41e57d9dc              # double 0.73921400000000004
	.quad	0x3fe327136a400fbb              # double 0.59852000000000005
	.quad	0x3fe94fa26a22b389              # double 0.79097099999999998
	.quad	0x3fea0c5436b8f9b1              # double 0.81400499999999998
	.quad	0x3fd6e89a88ace24c              # double 0.35794700000000002
	.quad	0x3fe34fbfc6540cc8              # double 0.60348500000000005
	.quad	0x3fd0eea63b688bdb              # double 0.26456600000000002
	.quad	0x3fea460cbf2b239a              # double 0.82105099999999998
	.quad	0x3fef4edb2f661f19              # double 0.97837600000000002
	.quad	0x3fda17d6b65a9a80              # double 0.40770499999999998
	.quad	0x3fc6ee2867275686              # double 0.179143
	.quad	0x3feedc0db2702a35              # double 0.96436200000000005
	.quad	0x3fda0856e696a26e              # double 0.40675899999999998
	.quad	0x3fdd34f82f512663              # double 0.45635799999999999
	.quad	0x3fce986fcdee34fc              # double 0.23902699999999999
	.quad	0x3fc1fb0d51f81a58              # double 0.14047399999999999
	.quad	0x3feebea704bc2763              # double 0.96077299999999998
	.quad	0x3fe6d69f4906034f              # double 0.71369899999999997
	.quad	0x3fe53749adc8fb87              # double 0.662999
	.quad	0x3fd979d4d834091c              # double 0.398061
	.quad	0x3fe382730c671690              # double 0.60967400000000005
	.quad	0x3fe78d90e23af31b              # double 0.73603099999999999
	.quad	0x3fcaa1dfb9389b52              # double 0.208065
	.quad	0x3fe85a5fc7e6b3ff              # double 0.76103200000000004
	.quad	0x3fdac12f09d8c6d6              # double 0.418041
	.quad	0x3fee903211cb039f              # double 0.95510200000000001
	.quad	0x3fda4df8b1572581              # double 0.41100900000000001
	.quad	0x3fd1e3c968943e10              # double 0.279528
	.quad	0x3fe375147f130596              # double 0.60804199999999997
	.quad	0x3fefefe2e6ea8544              # double 0.99803299999999994
	.quad	0x3f9b3d07c84b5dcc              # double 0.026599999999999999
	.quad	0x3fdeb8f57f737da6              # double 0.48003899999999999
	.quad	0x3fdc20c069e7fb26              # double 0.43949899999999997
	.quad	0x3febbe40420f6f09              # double 0.86697400000000002
	.quad	0x3fee9478c868b9fe              # double 0.95562400000000003
	.quad	0x3fc32fec56d5cfab              # double 0.14990000000000001
	.quad	0x3fe44d5b6805a2d7              # double 0.63444299999999998
	.quad	0x3fcc56798958d9b6              # double 0.221389
	.quad	0x3fd4b6c3760bf5d8              # double 0.32365500000000003
	.quad	0x3fe3dfd47bedb728              # double 0.62107299999999999
	.quad	0x3fde7c8d1958969a              # double 0.476352
	.quad	0x3fde82e019b0ab2e              # double 0.476738
	.quad	0x3fa28e71476af89c              # double 0.036242999999999997
	.quad	0x3fe7b9713ad5bee4              # double 0.74138700000000002
	.quad	0x3feb31290257c915              # double 0.84975100000000003
	.quad	0x3fdcbd8be7296f65              # double 0.449069
	.quad	0x3fe11f31f46ed246              # double 0.53505800000000003
	.quad	0x3febdd80e496edee              # double 0.87078900000000004
	.quad	0x3fb7f961804d9839              # double 0.093648999999999996
	.quad	0x3fe536b2af145522              # double 0.66292700000000004
	.quad	0x3f8bc1acde19fc2b              # double 0.013553000000000001
	.quad	0x3fe9af5126634118              # double 0.802651
	.quad	0x3fce6e08f2170931              # double 0.237733
	.quad	0x3fd989eba6aca793              # double 0.39904299999999998
	.quad	0x3fda87f023e9ea14              # double 0.414547
	.quad	0x3fe64b33daf8df7a              # double 0.69667999999999997
	.quad	0x3fee9f14983d7907              # double 0.95691899999999996
	.quad	0x3fc69784ec636b09              # double 0.17649899999999999
	.quad	0x3fe7342cc2d6a9c5              # double 0.72511899999999996
	.quad	0x3fd9b2e9ccb7d417              # double 0.40154499999999999
	.quad	0x3fe66013660e51d2              # double 0.69922799999999996
	.quad	0x3fe4d1633482be8c              # double 0.65056000000000003
	.quad	0x3fe9b3c81908e582              # double 0.80319600000000002
	.quad	0x3feb1dc0db2702a3              # double 0.84738199999999997
	.quad	0x3fc1fa6defc7a398              # double 0.140455
	.quad	0x3fc2fd9fd36f7e3d              # double 0.148365
	.quad	0x3fed1a6b50b0f27c              # double 0.90947500000000003
	.quad	0x3fedc66b1e5c0b9a              # double 0.93047100000000005
	.quad	0x3fec203c4b09e98e              # double 0.87893500000000002
	.quad	0x3fcabddb9841aac5              # double 0.20891899999999999
	.quad	0x3fef3b16c1e364bf              # double 0.97596300000000002
	.quad	0x3fe31dd7ecbb7f9d              # double 0.59739299999999995
	.quad	0x3fccc2b51bd61f5c              # double 0.224692
	.quad	0x3fd9b256ffc115df              # double 0.40150999999999998
	.quad	0x3fe7fc829cfdd228              # double 0.74957399999999996
	.quad	0x3fd0235b4edb2f66              # double 0.25215799999999999
	.quad	0x3fcc6149c6f36ef8              # double 0.221719
	.quad	0x3feb3f6a0dbad3a6              # double 0.851491
	.quad	0x3fe293ff25e56cd7              # double 0.58056600000000003
	.quad	0x3fb50dcfcc5b8dc5              # double 0.082241999999999996
	.quad	0x3f9a8b8f14db5958              # double 0.025923000000000002
	.quad	0x3fefb0ec31162281              # double 0.99034699999999997
	.quad	0x3fdefbfc6540cc79              # double 0.48413
	.quad	0x3fd63571d1d4738a              # double 0.34701199999999999
	.quad	0x3feeb6aa4b9884c7              # double 0.95979800000000004
	.quad	0x3feaa2749f0e4da1              # double 0.83233100000000004
	.quad	0x3fdd6362a5e785b6              # double 0.45919100000000002
	.quad	0x3fe3059210385c68              # double 0.59443000000000001
	.quad	0x3fe7303c07ee0b0b              # double 0.724638
	.quad	0x3fa37824d4cb9ecf              # double 0.038025999999999997
	.quad	0x3fcc9ca18bd66278              # double 0.22353000000000001
	.quad	0x3fe02363b256ffc1              # double 0.50431999999999999
	.quad	0x3fe0bb59ddc1e796              # double 0.52286999999999995
	.quad	0x3fe93471f79420b4              # double 0.78765200000000001
	.quad	0x3fb98fa376922d95              # double 0.099848000000000006
	.quad	0x3feb41e14bdfd263              # double 0.85179199999999999
	.quad	0x3fdd5d249e44fa05              # double 0.45881
	.quad	0x3fb727aa68f4b620              # double 0.090449000000000002
	.quad	0x3fac8323358f2e06              # double 0.055688000000000001
	.quad	0x3fb57d6b65a9a805              # double 0.083945000000000006
	.quad	0x3fdbebbfd71b0468              # double 0.43626399999999999
	.quad	0x3fe1d8b3f63c31df              # double 0.55770299999999995
	.quad	0x3fecb0ec31162281              # double 0.89659699999999998
	.quad	0x3feda4a05dd8f92b              # double 0.926346
	.quad	0x3fe915011904b3c4              # double 0.78381400000000001
	.quad	0x3fe537a80cf9e386              # double 0.66304399999999997
	.quad	0x3fec1c51dabe2718              # double 0.87845700000000004
	.quad	0x3fd04bb5e0f7fcfc              # double 0.25462099999999999
	.quad	0x3fb5aa715831f03d              # double 0.084631999999999999
	.quad	0x3fdb2923e5b8561d              # double 0.42438599999999999
	.quad	0x3fb8e69f05ea24cc              # double 0.097268999999999994
	.quad	0x3fc8411c2a023209              # double 0.18948699999999999
	.quad	0x3fe57e75bc44bf4d              # double 0.67168700000000003
	.quad	0x3fe2ff5e84f09529              # double 0.59367300000000001
	.quad	0x3fe40092ccf6be38              # double 0.62507000000000001
	.quad	0x3feed35eb7457c0b              # double 0.96330199999999999
	.quad	0x3fb8880d801b4352              # double 0.095825999999999994
	.quad	0x3fea0cda6e75ff61              # double 0.81406900000000004
	.quad	0x3fd2e61cffeb074a              # double 0.29529499999999997
	.quad	0x3fe8e733ebbfd71b              # double 0.778223
	.quad	0x3fe126e5471715c6              # double 0.53599799999999997
	.quad	0x3fdd7f7be121ee67              # double 0.46090599999999998
	.quad	0x3fddaa369fcf3dc0              # double 0.46351399999999998
	.quad	0x3fc1392189bd8384              # double 0.13455600000000001
	.quad	0x3fec530ad46f587d              # double 0.88513699999999995
	.quad	0x3fae86c6583e8577              # double 0.059622000000000001
	.quad	0x3fd48b11409a2403              # double 0.320988
	.quad	0x3fdd05425f202108              # double 0.45344600000000002
	.quad	0x3fc7892ee84ad795              # double 0.18387400000000001
	.quad	0x3f84c33b5393250b              # double 0.010137999999999999
	.quad	0x3fc53671ac14c661              # double 0.16572400000000001
	.quad	0x3fed3e596c82e01a              # double 0.91386100000000003
	.quad	0x3fc5ba01eeed8905              # double 0.169739
	.quad	0x3fea9d8c6d612c6b              # double 0.83173200000000003
	.quad	0x3fd30abf76a2f48c              # double 0.29753099999999999
	.quad	0x3fe2afec56d5cfab              # double 0.58397500000000002
	.quad	0x3fe2f1eafee6fb4c              # double 0.59203099999999997
	.quad	0x3fe03d145d851655              # double 0.50745600000000002
	.quad	0x3fe89813879c4114              # double 0.76856400000000002
	.quad	0x3fe396f4384ba0e8              # double 0.61217699999999997
	.quad	0x3fcbe76c8b439581              # double 0.218
	.quad	0x3fedc51116a8b8f1              # double 0.93030599999999997
	.quad	0x3fe65ce7cd035372              # double 0.69884100000000005
	.quad	0x3fe27f5a5332acfb              # double 0.57804599999999995
	.quad	0x3fee2f709b738e6d              # double 0.94329099999999999
	.quad	0x3fcf525460aa64c3              # double 0.2447
	.quad	0x3f992189bd8383ae              # double 0.024542000000000001
	.quad	0x3fd9636b09635611              # double 0.39669300000000002
	.quad	0x3fcc41bb8c32a8ca              # double 0.22075600000000001
	.quad	0x3fd412018a43bb41              # double 0.31359900000000002
	.quad	0x3fe3aff08893b7d8              # double 0.61522699999999997
	.quad	0x3fe250fa58f7121b              # double 0.57238500000000003
	.quad	0x3fe5fb95a294141f              # double 0.68696100000000004
	.quad	0x3fe1dab3aabcd78c              # double 0.55794699999999997
	.quad	0x3fe94176577531db              # double 0.78924099999999997
	.quad	0x3fd2d80e496ededb              # double 0.294437
	.quad	0x3fe49edbf8b9baa1              # double 0.64439199999999996
	.quad	0x3fe7117d6b65a9a8              # double 0.720885
	.quad	0x3fdfa4228997c3d7              # double 0.49439300000000003
	.quad	0x3fda795f676ea423              # double 0.41365800000000003
	.quad	0x3fdfe136e71cda2b              # double 0.49812099999999998
	.quad	0x3fe44d4ed2cbea4f              # double 0.63443700000000003
	.quad	0x3fa86cca2db61bb0              # double 0.047704999999999997
	.quad	0x3f79ccfaeff5c6c1              # double 0.0062989999999999999
	.quad	0x3fe1f5a74c09c3ce              # double 0.56123699999999999
	.quad	0x3fd6a7503b81b64e              # double 0.353962
	.quad	0x3fe1dc1e7967caea              # double 0.55811999999999995
	.quad	0x3fd74ddf86e3b470              # double 0.36412800000000001
	.quad	0x3fe3ebe1650a45d4              # double 0.62254399999999999
	.quad	0x3fd5e2fbe33acd5b              # double 0.34197899999999998
	.quad	0x3fd65989df1172ef              # double 0.349215
	.quad	0x3fc74395810624dd              # double 0.18174999999999999
	.quad	0x3fe48535c9e6687f              # double 0.64126099999999997
	.quad	0x3fef10a782906898              # double 0.97078299999999995
	.quad	0x3fcccc0bdcad14a1              # double 0.22497700000000001
	.quad	0x3fe0fb0d51f81a58              # double 0.53064599999999995
	.quad	0x3fe35aceee0f3cb4              # double 0.60483500000000001
	.quad	0x3fecf9f23465625a              # double 0.90551099999999995
	.quad	0x3fd708c3f3e0370d              # double 0.35991000000000001
	.quad	0x3fa699a62ed35222              # double 0.044141
	.quad	0x3fed8f49491f2dc3              # double 0.92374100000000003
	.quad	0x3fda0d5a5b9628cc              # double 0.40706500000000001
	.quad	0x3fb9432873bc903f              # double 0.098681000000000005
	.quad	0x3fed536f7e3d1cc1              # double 0.916435
	.quad	0x3fe754b2745bf26f              # double 0.72908899999999999
	.quad	0x3fe8842b734b5137              # double 0.76613399999999998
	.quad	0x3fe68dc768dfbd6a              # double 0.70480699999999996
	.quad	0x3fb1a1016ce789e7              # double 0.068862999999999994
	.quad	0x3fe2af5126634118              # double 0.583901
	.quad	0x3fe0ab6284599674              # double 0.52092099999999997
	.quad	0x3fe966c4c5974e66              # double 0.79379500000000003
	.quad	0x3fdb280ae1049236              # double 0.424319
	.quad	0x3fedc113c68661ae              # double 0.92981899999999995
	.quad	0x3fdc55c52e72da12              # double 0.44273499999999999
	.quad	0x3fe5b16e37154003              # double 0.67790899999999998
	.quad	0x3fd83519bd4067cf              # double 0.37824099999999999
	.quad	0x3fc25ecc3e3193f7              # double 0.14351800000000001
	.quad	0x3fb163ed0f627393              # double 0.067931000000000005
	.quad	0x3fedfca42aed1394              # double 0.93708999999999997
	.quad	0x3fe0c71f79420b3d              # double 0.52430699999999997
	.quad	0x3fc256bca5375c8e              # double 0.14327200000000001
	.quad	0x3fec6e3d5fdcdf6a              # double 0.88845700000000005
	.quad	0x3feefa871a3b14a9              # double 0.96808199999999999
	.quad	0x3fd045a1cac08312              # double 0.25424999999999998
	.quad	0x3feed5d5f56a7ac8              # double 0.96360299999999998
	.quad	0x3fe66a960b6f9fcb              # double 0.70051099999999999
	.quad	0x3fe44df69878316a              # double 0.634517
	.quad	0x3fef655e28aa4335              # double 0.98112399999999999
	.quad	0x3fede0e0eb67c287              # double 0.933701
	.quad	0x3fe48c8abd5dc400              # double 0.64215599999999995
	.quad	0x3fca4d87724fa8b5              # double 0.20549100000000001
	.quad	0x3feea2a6f3f52fc2              # double 0.95735499999999996
	.quad	0x3fca6f71a7e30878              # double 0.20652599999999999
	.quad	0x3fd9e4755ffe6d59              # double 0.40456900000000001
	.quad	0x3fe117785729b281              # double 0.53411500000000001
	.quad	0x3faef2c7325918a0              # double 0.060446
	.quad	0x3fe48daa0cae642c              # double 0.642293
	.quad	0x3fdd507a6bd6e8b0              # double 0.45803700000000003
	.quad	0x3fc9b57c4e2f37fc              # double 0.200851
	.quad	0x3fd7ae147ae147ae              # double 0.37
	.quad	0x3fe899567dbb16c2              # double 0.76871800000000001
	.quad	0x3fe104be40420f6f              # double 0.531829
	.quad	0x3fc24a6a875d56f3              # double 0.142896
	.quad	0x3fd4c5b078d92fb2              # double 0.32456600000000002
	.quad	0x3fda42784a9478c8              # double 0.41030699999999998
	.quad	0x3feefb3311a543f2              # double 0.96816400000000002
	.quad	0x3fdc1d8e86402081              # double 0.43930399999999997
	.quad	0x3fdde5753a3ec02f              # double 0.46712999999999999
	.quad	0x3feb5c6c11a11234              # double 0.85503200000000001
	.quad	0x3fe33d273d5bab22              # double 0.60121500000000005
	.quad	0x3fe0afd976ff3ade              # double 0.52146599999999999
	.quad	0x3f5a93293d102bc7              # double 0.001622
	.quad	0x3f9f0b28522ea0fd              # double 0.030315999999999999
	.quad	0x3fb922fad6cb5350              # double 0.098189999999999999
	.quad	0x3fc13c1ce6c093d9              # double 0.13464699999999999
	.quad	0x3fd61960fa15db34              # double 0.34529900000000002
	.quad	0x3fe068dfbd6a593a              # double 0.51280199999999998
	.quad	0x3f904d983947496b              # double 0.015921000000000001
	.quad	0x3fedff023e9ea140              # double 0.93737899999999996
	.quad	0x3fdb67caea747d80              # double 0.42820999999999998
	.quad	0x3fe787e38eb0318c              # double 0.73533800000000005
	.quad	0x3faab5a20ddc6195              # double 0.052166999999999998
	.quad	0x3fd812cadddf43c8              # double 0.37614700000000001
	.quad	0x3fee79df548ecd8e              # double 0.95237700000000003
	.quad	0x3fd15803cd141a69              # double 0.27099699999999999
	.quad	0x3fe0c3f1c75818c6              # double 0.52391900000000002
	.quad	0x3fe0361dc93ea2d3              # double 0.506606
	.quad	0x3fc0904f6dfc5cdd              # double 0.12940399999999999
	.quad	0x3fe01b4784230fd0              # double 0.50333000000000006
	.quad	0x3fc3d3671ac14c66              # double 0.154889
	.quad	0x3fd8264a16a48733              # double 0.37733699999999998
	.quad	0x3fe7d579af1886e0              # double 0.74480900000000005
	.quad	0x3f87fc7607c419a0              # double 0.011712
	.quad	0x3fe378bdec5f394b              # double 0.60848899999999995
	.quad	0x3fbd6af038e29f9d              # double 0.114913
	.quad	0x3fdf0a73f748a15a              # double 0.48501300000000003
	.quad	0x3fe6127913e81451              # double 0.68975500000000001
	.quad	0x3fe66060fe47991c              # double 0.69926500000000003
	.quad	0x3fe9f9acffa7eb6c              # double 0.811728
	.quad	0x3fdc6e5cd4ed2cbf              # double 0.44423600000000002
	.quad	0x3fc515bdd76683c3              # double 0.16472600000000001
	.quad	0x3fe3b0f6ad70e6f3              # double 0.61535200000000001
	.quad	0x3fed3476295208e1              # double 0.91265399999999997
	.quad	0x3f924e5929670197              # double 0.017877000000000001
	.quad	0x3fe10d7e02645e4e              # double 0.53289699999999995
	.quad	0x3fe677079e59f2bb              # double 0.70203000000000004
	.quad	0x3fdb1feeb2d0a244              # double 0.42382399999999998
	.quad	0x3fe7d46b26bf876a              # double 0.74468000000000001
	.quad	0x3fd9212513b5bf6a              # double 0.392648
	.quad	0x3fd6d5992428d435              # double 0.35678700000000002
	.quad	0x3fc399f5dfeb8d82              # double 0.15313599999999999
	.quad	0x3fdd5e56cd6c2efd              # double 0.45888299999999999
	.quad	0x3fd62c9081c2e33f              # double 0.34647
	.quad	0x3fe7b6049ecb31c2              # double 0.74096899999999999
	.quad	0x3fe2f928e0c9d9d3              # double 0.59291499999999997
	.quad	0x3fd88e64b2314014              # double 0.383691
	.quad	0x3fe41b3aeee95747              # double 0.62832399999999999
	.quad	0x3fdde58a32f44913              # double 0.46713500000000002
	.quad	0x3fc65ef62f9ca5be              # double 0.17477300000000001
	.quad	0x3fd822ccb3a2595c              # double 0.37712400000000001
	.quad	0x3fe3e0eb67c286f9              # double 0.62120600000000004
	.quad	0x3fec8a0d349be8ff              # double 0.89185199999999998
	.quad	0x3fedfd1bb4916ca4              # double 0.93714699999999995
	.quad	0x3fe949b62c77574f              # double 0.79024799999999995
	.quad	0x3feb540cc78e9f6b              # double 0.85401000000000005
	.quad	0x3feff20642396074              # double 0.99829400000000001
	.quad	0x3fec1b1d92b7fe09              # double 0.87831000000000004
	.quad	0x3fe58958d9b5e95b              # double 0.67301599999999995
	.quad	0x3fd07ebaf102363b              # double 0.25773499999999999
	.quad	0x3fc001cd5f99c38b              # double 0.125055
	.quad	0x3fdb4edf61240746              # double 0.42668899999999998
	.quad	0x3fce4851a8694035              # double 0.23658199999999999
	.quad	0x3fcec8de2ac32229              # double 0.240505
	.quad	0x3fcf785729b280f1              # double 0.24586
	.quad	0x3fd19ebe9c886163              # double 0.275314
	.quad	0x3fd43f8982cb20fb              # double 0.31637799999999999
	.quad	0x3fe1b111f0c34c1b              # double 0.55286500000000005
	.quad	0x3fee61e2de870974              # double 0.94944899999999998
	.quad	0x3fe2b239a38fbca1              # double 0.584256
	.quad	0x3fe2faa044ae85ba              # double 0.59309400000000001
	.quad	0x3fe6c4955b4677b4              # double 0.71149700000000005
	.quad	0x3fb5799e518f3ecd              # double 0.083887000000000003
	.quad	0x3fef087442c7fbad              # double 0.96978200000000003
	.quad	0x3fe93f01322f2735              # double 0.788941
	.quad	0x3feffe586013660e              # double 0.99979799999999996
	.quad	0x3fd9245b291b823d              # double 0.39284400000000003
	.quad	0x3fe270a3d70a3d71              # double 0.57625000000000004
	.quad	0x3fe61802c0a4a05e              # double 0.69043100000000002
	.quad	0x3fd7d3b29a1b9f99              # double 0.37229600000000002
	.quad	0x3feabf52fc2656ac              # double 0.83585500000000001
	.quad	0x3fe9c9752977c88e              # double 0.80584199999999995
	.quad	0x3fead86876e1dead              # double 0.83891700000000002
	.quad	0x3fb83a647fdc5932              # double 0.094641000000000002
	.quad	0x3fea31feeb2d0a24              # double 0.81860299999999996
	.quad	0x3fb8122749f0e4da              # double 0.094026999999999999
	.quad	0x3fdd95af294dd723              # double 0.46226099999999998
	.quad	0x3fece2aa19439de5              # double 0.90266900000000005
	.quad	0x3fdad0b73d188f43              # double 0.418989
	.quad	0x3fe6c8626f60e0eb              # double 0.71196099999999996
	.quad	0x3fe52cc92146a1a5              # double 0.661717
	.quad	0x3fd016a487336588              # double 0.25138199999999999
	.quad	0x3feb29478c868ba0              # double 0.84878900000000001
	.quad	0x3fd774927913e814              # double 0.36648999999999998
	.quad	0x3fe459103c8e25c8              # double 0.63587199999999999
	.quad	0x3fa016ce789e774f              # double 0.031424000000000001
	.quad	0x3fe4bb7d84901d19              # double 0.64788699999999999
	.quad	0x3fd11a5ca29845dd              # double 0.26723400000000003
	.quad	0x3fcd234eb9a176de              # double 0.22764000000000001
	.quad	0x3fecebd9018e7579              # double 0.90378999999999998
	.quad	0x3fddc1d29dc725c4              # double 0.46495500000000001
	.quad	0x3fe149b62c77574f              # double 0.54024799999999995
	.quad	0x3fee6e3f78bbd380              # double 0.95095799999999997
	.quad	0x3fce196d8f4f93bc              # double 0.235151
	.quad	0x3fed1b90ea9e6eeb              # double 0.90961499999999995
	.quad	0x3fc5b645a1cac083              # double 0.169625
	.quad	0x3f96bf8769ec2ce4              # double 0.022214999999999999
	.quad	0x3fe6c9abb01c92de              # double 0.71211800000000003
	.quad	0x3fe0bb62413db7f1              # double 0.52287399999999995
	.quad	0x3fb35525cc426352              # double 0.075518000000000002
	.quad	0x3fd9a0e410b630a9              # double 0.400445
	.quad	0x3fb668a0d349be90              # double 0.087534
	.quad	0x3fdbafb3b7521145              # double 0.43259900000000001
	.quad	0x3fda2f4491298890              # double 0.40913500000000003
	.quad	0x3feb9eeed8904f6e              # double 0.863151
	.quad	0x3feff204295a6c5d              # double 0.99829299999999998
	.quad	0x3fbf9873ffac1d2a              # double 0.12342
	.quad	0x3fd82c450268900c              # double 0.37770199999999998
	.quad	0x3fe3eb93ccd0fe8b              # double 0.62250700000000003
	.quad	0x3fdfe82d7b634dad              # double 0.49854599999999999
	.quad	0x3fe2972474538ef3              # double 0.58094999999999997
	.quad	0x3fe96601bc98a223              # double 0.79370200000000002
	.quad	0x3fd4770bd017dae8              # double 0.31976599999999999
	.quad	0x3fd2940bbb1f255f              # double 0.29028599999999999
	.quad	0x3febc299d883ba34              # double 0.86750499999999997
	.quad	0x3fc4e90364388ebd              # double 0.16336100000000001
	.quad	0x3fe4f95b35b0bbf5              # double 0.65543899999999999
	.quad	0x3fe925e785b5b707              # double 0.78587700000000005
	.quad	0x3fe62875d56f32be              # double 0.69243900000000003
	.quad	0x3fe4492ddbdb5d89              # double 0.63393299999999997
	.quad	0x3fb1718eb8950764              # double 0.068139000000000005
	.quad	0x3feb06d938151a43              # double 0.84458599999999995
	.quad	0x3fe699a1fd1569f5              # double 0.70625400000000005
	.quad	0x3fd1cf1c3265adda              # double 0.27826600000000001
	.quad	0x3fc91e321a2e7f6f              # double 0.19623399999999999
	.quad	0x3fec5f266ba493c9              # double 0.88661500000000004
	.quad	0x3fda53d20f2becee              # double 0.41136600000000001
	.quad	0x3fdafde7210be942              # double 0.42174699999999998
	.quad	0x3fe7d73860999dcb              # double 0.74502199999999996
	.quad	0x3fb0cc575c0767d3              # double 0.065617999999999996
	.quad	0x3fe9a8283d35eb74              # double 0.80177699999999996
	.quad	0x3fbcfe79ee02a77a              # double 0.113258
	.quad	0x3fcea6f3f52fc265              # double 0.23946999999999999
	.quad	0x3fe8f3eccc469510              # double 0.77977600000000002
	.quad	0x3fd2dc2f405f6ba0              # double 0.29468899999999998
	.quad	0x3fe2b1cc96462802              # double 0.58420399999999995
	.quad	0x3fe4c0a06e9ff0cc              # double 0.64851400000000003
	.quad	0x3fe644dec1c1d6d0              # double 0.69590700000000005
	.quad	0x3fcc7e308787485e              # double 0.22260099999999999
	.quad	0x3fe2ac669057d178              # double 0.58354499999999998
	.quad	0x3fe6dce5b4245f5b              # double 0.71446500000000002
	.quad	0x3fe7403148776816              # double 0.72658599999999995
	.quad	0x3fe57e32a0663c75              # double 0.671655
	.quad	0x3fc9ac258d5842b7              # double 0.20056599999999999
	.quad	0x3fbb4395810624dd              # double 0.1065
	.quad	0x3fdd1040bfe3b03e              # double 0.45411699999999999
	.quad	0x3fea6d9be4cd7492              # double 0.82587999999999995
	.quad	0x3fe7270d1fa33376              # double 0.72351699999999997
	.quad	0x3fbeb15f88fc9364              # double 0.119894
	.quad	0x3fd9ae03b3e9a6f8              # double 0.40124599999999999
	.quad	0x3fdede15ca6ca03c              # double 0.48230499999999998
	.quad	0x3feb5bff04577d95              # double 0.85497999999999996
	.quad	0x3fe1212b5e529bae              # double 0.53529899999999997
	.quad	0x3fd4702602c9081c              # double 0.31934499999999999
	.quad	0x3fd46052502eec7d              # double 0.31837900000000002
	.quad	0x3fde626b2f23033a              # double 0.47475699999999998
	.quad	0x3fb07c6327ed84d3              # double 0.064397999999999997
	.quad	0x3fc312231832fcad              # double 0.14899100000000001
	.quad	0x3fe385c67dfe32a0              # double 0.61007999999999996
	.quad	0x3febf6ea4228997c              # double 0.87389099999999997
	.quad	0x3fd22d27807789a4              # double 0.28400599999999998
	.quad	0x3fe228deb0fadf2f              # double 0.56748900000000002
	.quad	0x3f9b8348f53c579f              # double 0.026868
	.quad	0x3fb4e6afcce1c582              # double 0.081644999999999995
	.quad	0x3fbd0cf5b1c86488              # double 0.113479
	.quad	0x3fdbf2d3c792d128              # double 0.43669599999999997
	.quad	0x3fcf328b6d86ec18              # double 0.24373
	.quad	0x3fce48b652370479              # double 0.236594
	.quad	0x3fc2d794a6eb91b4              # double 0.147204
	.quad	0x3fe7f48e4755ffe7              # double 0.74860300000000002
	.quad	0x3fe4e9ff0cbaf966              # double 0.65356400000000003
	.quad	0x3fee82c4d65e4606              # double 0.95346299999999995
	.quad	0x3f6d3cbc48f10a9a              # double 0.0035690000000000001
	.quad	0x3feb7e111276fb09              # double 0.85913899999999999
	.quad	0x3fcbae5796bfca86              # double 0.21625800000000001
	.quad	0x3fed2b777d0f1f58              # double 0.91155600000000003
	.quad	0x3f9e7ff583a53b8e              # double 0.029784999999999999
	.quad	0x3fe7b0b178b37004              # double 0.74031899999999995
	.quad	0x3fe606e3b46fdeb5              # double 0.68834099999999998
	.quad	0x3feb7ed84d338f7a              # double 0.85923400000000005
	.quad	0x3fbebdf4c2b51bd6              # double 0.120086
	.quad	0x3fd2bdfd2630ec31              # double 0.292846
	.quad	0x3fe7d65a14488c61              # double 0.74491600000000002
	.quad	0x3fe6bb44e50c5eb3              # double 0.71035999999999999
	.quad	0x3fcea1272c94b381              # double 0.23929300000000001
	.quad	0x3fef4d72799a1fd1              # double 0.97820399999999996
	.quad	0x3fde6634117f8445              # double 0.47498800000000002
	.quad	0x3fef1752977c88e8              # double 0.97159700000000004
	.quad	0x3fe34067cf1c3266              # double 0.60161200000000004
	.quad	0x3fea66afcce1c582              # double 0.82503499999999996
	.quad	0x3fac5de9c0229a5f              # double 0.055404000000000002
	.quad	0x3fc4be0589acbc8c              # double 0.162049
	.quad	0x3fee2fab53d640ea              # double 0.94331900000000002
	.quad	0x3feaf37da61e0c5b              # double 0.84222300000000005
	.quad	0x3fd630fcf80dc337              # double 0.34673999999999999
	.quad	0x3fc4b734b51372a4              # double 0.16184100000000001
	.quad	0x3fe0168b5cbff477              # double 0.50275199999999998
	.quad	0x3fea968d759ee88e              # double 0.83087800000000001
	.quad	0x3fedfb84db9c7369              # double 0.93695300000000004
	.quad	0x3fe854c55432873c              # double 0.76034800000000002
	.quad	0x3fef3c408d8ec95c              # double 0.976105
	.quad	0x3fb36f9fcb0c026d              # double 0.075922000000000003
	.quad	0x3feaef6d7625204b              # double 0.841727
	.quad	0x3fd6b5dcc63f1412              # double 0.35485
	.quad	0x3fe5a4638c975297              # double 0.67631699999999995
	.quad	0x3fe48df15a4acf31              # double 0.64232699999999998
	.quad	0x3f8c3ce2089e3433              # double 0.013788
	.quad	0x3fa2aef2c7325919              # double 0.036491000000000003
	.quad	0x3fe28247021d10b2              # double 0.578403
	.quad	0x3fe46a854477ff15              # double 0.63800299999999999
	.quad	0x3feb3bb83cf2cf96              # double 0.85104000000000002
	.quad	0x3fe7e1049235f80a              # double 0.74621800000000005
	.quad	0x3fd4fb09203a322b              # double 0.327822
	.quad	0x3fdcc9de05037500              # double 0.44982100000000003
	.quad	0x3f9c79f666234a88              # double 0.027809
	.quad	0x3fe7041aac53b081              # double 0.71925099999999997
	.quad	0x3fd4b0a6fc58ab93              # double 0.32328200000000001
	.quad	0x3fdba1cac083126f              # double 0.43175000000000002
	.quad	0x3fe7d1e75360d024              # double 0.74437299999999995
	.quad	0x3fe47e889c1b5419              # double 0.64044599999999996
	.quad	0x3fc94ba51a005c46              # double 0.19762099999999999
	.quad	0x3fa3d9cae21101b0              # double 0.038771
	.quad	0x3fdd0d0678c0053e              # double 0.45391999999999999
	.quad	0x3fe979b56323bbc7              # double 0.79610700000000001
	.quad	0x3fe7ca89fc6da448              # double 0.74347399999999997
	.quad	0x3fe4899e0e73604a              # double 0.64179900000000001
	.quad	0x3fc6c929aa1d755c              # double 0.17801400000000001
	.quad	0x3fc78ce2d1f1cfbc              # double 0.18398700000000001
	.quad	0x3fe398bd66277c46              # double 0.61239500000000002
	.quad	0x3fe8d8cb07d0aeda              # double 0.77646400000000004
	.quad	0x3fef681cb46bacf7              # double 0.98145899999999997
	.quad	0x3fe7855fbb517a46              # double 0.73503099999999999
	.quad	0x3fe92146a1a500d6              # double 0.78531200000000001
	.quad	0x3fc186e3b46fdeb5              # double 0.136929
	.quad	0x3fdfbcc6c54bcf0b              # double 0.49589699999999998
	.quad	0x3febb9ae0c176577              # double 0.86641599999999996
	.quad	0x3fd7a8deb0fadf2f              # double 0.36968200000000001
	.quad	0x3fbd6e04c0592104              # double 0.11496000000000001
	.quad	0x3fd75109070fbeba              # double 0.36432100000000001
	.quad	0x3fd1d8c6d612c6ac              # double 0.27885599999999999
	.quad	0x3feab59ff4fd6d7f              # double 0.83467100000000005
	.quad	0x3fdf744f5d35653d              # double 0.49147400000000002
	.quad	0x3fa64606748e4756              # double 0.043503
	.quad	0x3fe69dd1a21ea359              # double 0.70676499999999998
	.quad	0x3feba4a05dd8f92b              # double 0.863846
	.quad	0x3fdec2938de6ddf0              # double 0.480626
	.quad	0x3fe4734938583622              # double 0.639073
	.quad	0x3fea5f202107b784              # double 0.82411199999999995
	.quad	0x3fd735daad601ffb              # double 0.36266199999999998
	.quad	0x3fd7666666666666              # double 0.36562499999999998
	.quad	0x3fcc6cf41f212d77              # double 0.22207499999999999
	.quad	0x3fe364d3bf2f5558              # double 0.60605799999999999
	.quad	0x3fd4b47c73eee526              # double 0.32351600000000003
	.quad	0x3fedcd0bb6ed6777              # double 0.93128
	.quad	0x3fcd9acffa7eb6bf              # double 0.23128699999999999
	.quad	0x3fc226809d495183              # double 0.14180000000000001
	.quad	0x3fd863c74fb549f9              # double 0.38108999999999998
	.quad	0x3f717f84449dbec2              # double 0.0042719999999999998
	.quad	0x3fa78140dd3fe197              # double 0.045907999999999997
	.quad	0x3fd0c4588a04d120              # double 0.26198399999999999
	.quad	0x3feae9813879c411              # double 0.84100399999999997
	.quad	0x3fe7cf28c79f6662              # double 0.74403799999999998
	.quad	0x3fe4eefe4ffc9796              # double 0.65417400000000003
	.quad	0x3fe17c3d68405b3a              # double 0.54641600000000001
	.quad	0x3feb2c083126e979              # double 0.84912500000000002
	.quad	0x3fb89a2403148777              # double 0.096102000000000007
	.quad	0x3fda7a355043e532              # double 0.41370899999999999
	.quad	0x3fd20cc78e9f6a94              # double 0.28203
	.quad	0x3fe54881e4712e41              # double 0.66510100000000005
	.quad	0x3fd07ed84d338f7a              # double 0.25774200000000003
	.quad	0x3f81a2a4db163bac              # double 0.0086110000000000006
	.quad	0x3feff9ca5bd944aa              # double 0.99924199999999996
	.quad	0x3fc3193708aac96d              # double 0.14920700000000001
	.quad	0x3fdf848387df5cf2              # double 0.49246299999999998
	.quad	0x3fe0ac929aa1d756              # double 0.52106600000000003
	.quad	0x3f99fd36f7e3d1cc              # double 0.02538
	.quad	0x3fef2fd32c625e9a              # double 0.97458800000000001
	.quad	0x3f75336deb95e5b0              # double 0.005176
	.quad	0x3feffd028a1dfb94              # double 0.99963500000000005
	.quad	0x3fe371f79420b3d5              # double 0.60766200000000004
	.quad	0x3fd75dd095af294e              # double 0.36510100000000001
	.quad	0x3fdf27bb2fec56d6              # double 0.48680000000000001
	.quad	0x3fcde0d66f0cfe15              # double 0.23342399999999999
	.quad	0x3fed403361565c2d              # double 0.91408699999999998
	.quad	0x3fecbff8a8f3a9b0              # double 0.89843399999999995
	.quad	0x3fe1fc7820a30db7              # double 0.56206900000000004
	.quad	0x3f876f6d7625204b              # double 0.011443
	.quad	0x3fd09c4545846e8f              # double 0.25953799999999999
	.quad	0x3fe70a99b6f5caf3              # double 0.72004400000000002
	.quad	0x3fd0426351deefe5              # double 0.254052
	.quad	0x3fe4be2b4959e625              # double 0.64821399999999996
	.quad	0x3fc85faebc408d8f              # double 0.19042000000000001
	.quad	0x3fe5a1b7e0ac7da2              # double 0.67599100000000001
	.quad	0x3fc848387df5cf25              # double 0.18970400000000001
	.quad	0x3fece5d18090b418              # double 0.90305400000000002
	.quad	0x3feddbf487fcb924              # double 0.93310000000000004
	.quad	0x3fc2c258d5842b73              # double 0.14655599999999999
	.quad	0x3fe0b641700cd856              # double 0.52224800000000005
	.quad	0x3fe0f52b90a78290              # double 0.52992799999999995
	.quad	0x3fe2ddf43c7d5ed0              # double 0.58959399999999995
	.quad	0x3fe4ded288ce703b              # double 0.6522
	.quad	0x3fddf2a172abef07              # double 0.46793400000000002
	.quad	0x3fc7017dae81882b              # double 0.179733
	.quad	0x3fd49ef0f16f4385              # double 0.32220100000000002
	.quad	0x3fed7cb2d905c033              # double 0.92147199999999996
	.quad	0x3fe001adea897636              # double 0.50020500000000001
	.quad	0x3fe88c88a47ecfea              # double 0.76715500000000003
	.quad	0x3fe1466b1e5c0b9a              # double 0.53984600000000005
	.quad	0x3fa4e22a2c237479              # double 0.040787999999999998
	.quad	0x3fccb05319828805              # double 0.224131
	.quad	0x3fee95d0b73d188f              # double 0.95578799999999997
	.quad	0x3f977c02afdda8bd              # double 0.022934
	.quad	0x3fc1694467381d7e              # double 0.13602500000000001
	.quad	0x3fefdbad3a604e1e              # double 0.99556599999999995
	.quad	0x3fda9cd3e0bd449a              # double 0.41582200000000002
	.quad	0x3fac60ed80a17b0f              # double 0.055426999999999997
	.quad	0x3fea8f8e7ddca4b1              # double 0.83002399999999998
	.quad	0x3fd66cacd184c272              # double 0.350383
	.quad	0x3fa963baba7b9171              # double 0.049589000000000001
	.quad	0x3fe0e162f166e009              # double 0.52751300000000001
	.quad	0x3fe00e6d15ad106f              # double 0.50176100000000001
	.quad	0x3fb75ddd2ae8e1d6              # double 0.091275999999999996
	.quad	0x3fb290795f676ea4              # double 0.072516999999999998
	.quad	0x3f91da37ef5a964f              # double 0.017434000000000002
	.quad	0x3fe72eba27ae9ab3              # double 0.72445400000000004
	.quad	0x3fdd39fba450acc1              # double 0.45666400000000001
	.quad	0x3fea2797891e2153              # double 0.81733299999999998
	.quad	0x3fd9f37b8d3f1844              # double 0.40548600000000001
	.quad	0x3fe0da9c99285a92              # double 0.52668599999999999
	.quad	0x3fdda4a48f96e158              # double 0.46317399999999997
	.quad	0x3fdad074213a0c6b              # double 0.41897299999999998
	.quad	0x3fd016659d12cade              # double 0.25136700000000001
	.quad	0x3fbbfd1dcd7060bb              # double 0.109331
	.quad	0x3fe47de7210be942              # double 0.64036899999999997
	.quad	0x3fdfab191dde3758              # double 0.49481799999999998
	.quad	0x3fe101f75104d552              # double 0.53149000000000002
	.quad	0x3fe2ecc5fbf83383              # double 0.59140300000000001
	.quad	0x3fd64866a11ec919              # double 0.34816900000000001
	.quad	0x3fecfa1c25d07421              # double 0.90553099999999997
	.quad	0x3fc5d8e0008637bd              # double 0.170681
	.quad	0x3fcd77292c493426              # double 0.23019899999999999
	.quad	0x3feabcbc48f10a9a              # double 0.83553900000000003
	.quad	0x3fc02478854cdb7b              # double 0.126113
	.quad	0x3fed9899bf5946c3              # double 0.92487799999999998
	.quad	0x3fef606961c36977              # double 0.98051900000000002
	.quad	0x3fe5e3ffef39085f              # double 0.68408199999999997
	.quad	0x3fd8a604e1e71045              # double 0.385133
	.quad	0x3fd393ab430f4949              # double 0.30588799999999999
	.quad	0x3fe9fcb70ac3a861              # double 0.81209900000000002
	.quad	0x3feede7a743a6480              # double 0.96465800000000002
	.quad	0x3fd07e5eaab04253              # double 0.25771300000000003
	.quad	0x3fef018c5c9a34ca              # double 0.96893899999999999
	.quad	0x3fef81c0ca600b03              # double 0.98458900000000004
	.quad	0x3fe7d5eaee2003ac              # double 0.74486300000000005
	.quad	0x3fdfe7ee9142b303              # double 0.498531
	.quad	0x3fcbd4d834091c08              # double 0.21743299999999999
	.quad	0x3fd56ddaceee0f3d              # double 0.33483000000000002
	.quad	0x3fecc5ed4a1ad645              # double 0.89916099999999999
	.quad	0x3fe89322f2734f83              # double 0.767961
	.quad	0x3fe87c6327ed84d3              # double 0.76518399999999998
	.quad	0x3fe73892ee84ad79              # double 0.72565599999999997
	.quad	0x3fd57e38eb0318b9              # double 0.33582899999999999
	.quad	0x3fe3a2e1ac57e23f              # double 0.61363299999999998
	.quad	0x3faa4aada33bd9cb              # double 0.051351000000000001
	.quad	0x3fe105729b280f13              # double 0.53191500000000003
	.quad	0x3fe7bc558644523f              # double 0.74173999999999995
	.quad	0x3fe909bb6aa4b988              # double 0.78243799999999997
	.quad	0x3fe9a83f4eca686e              # double 0.80178799999999995
	.quad	0x3fef0405b39e279e              # double 0.96924100000000002
	.quad	0x3fc81d6cf850df16              # double 0.18839800000000001
	.quad	0x3fe5ea9c560c7c0f              # double 0.68488899999999997
	.quad	0x3fcb1bc558644524              # double 0.211785
	.quad	0x3fecb9abf3387161              # double 0.89766500000000005
	.quad	0x3fcea2877ee4e26d              # double 0.23933499999999999
	.quad	0x3fe5df06f6944674              # double 0.68347500000000005
	.quad	0x3fc19157abb8800f              # double 0.13724800000000001
	.quad	0x3fde2bcb5fe542e5              # double 0.47142299999999998
	.quad	0x3fdc9e40c8472c0e              # double 0.44715899999999997
	.quad	0x3feae2541d8e8640              # double 0.84012799999999999
	.quad	0x3fed31b36bd2b6f2              # double 0.91231700000000004
	.quad	0x3fa0eb463497b741              # double 0.033044999999999998
	.quad	0x3fd42bcf91a32b13              # double 0.31517400000000001
	.quad	0x3fedcaf709b738e7              # double 0.93102600000000002
	.quad	0x3fecad6451b93038              # double 0.89616600000000002
	.quad	0x3fabc925785f8d2e              # double 0.054268999999999998
	.quad	0x3f9edd052934acb0              # double 0.03014
	.quad	0x3fef532830a0b1bc              # double 0.97890100000000002
	.quad	0x3fefc6c11a11233e              # double 0.99301200000000001
	.quad	0x3fb124180d3cff65              # double 0.066957000000000003
	.quad	0x3fd6cf4a558ea7ce              # double 0.356402
	.quad	0x3fdf1c219eb6390d              # double 0.48609200000000002
	.quad	0x3fa8d002e2328f9f              # double 0.048461999999999998
	.quad	0x3fe4087229e90796              # double 0.626031
	.quad	0x3fe8b16e37154003              # double 0.77165899999999998
	.quad	0x3fea867ad8e43244              # double 0.82891599999999998
	.quad	0x3fe1ec61522a6f3f              # double 0.56010499999999996
	.quad	0x3fea24cc6822ff09              # double 0.81699200000000005
	.quad	0x3fc24816f0068db9              # double 0.14282500000000001
	.quad	0x3fe67911cf355cd9              # double 0.70227899999999999
	.quad	0x3fe9f190d173fb7a              # double 0.81073799999999996
	.quad	0x3fef1c2a02320968              # double 0.97218800000000005
	.quad	0x3fed579f23465626              # double 0.91694600000000004
	.quad	0x3fedc5c78a6dacac              # double 0.93039300000000002
	.quad	0x3fcae5b4245f5ad9              # double 0.21013499999999999
	.quad	0x3fe52d6cb5350093              # double 0.66179500000000002
	.quad	0x3fef7b9bed30f063              # double 0.98383900000000001
	.quad	0x3fe43f9c62a1b5c8              # double 0.63276500000000002
	.quad	0x3fc5c91d14e3bcd3              # double 0.17019999999999999
	.quad	0x3fd00468448cf7cb              # double 0.25026900000000002
	.quad	0x3fd08eb8950763a2              # double 0.25871100000000002
	.quad	0x3fca428d434a01ac              # double 0.20515600000000001
	.quad	0x3fec6fe4ffc9795b              # double 0.88865899999999998
	.quad	0x3fc775c8d9f9053a              # double 0.183282
	.quad	0x3fd16e5471715c64              # double 0.27235900000000002
	.quad	0x3fe26cb966be7afa              # double 0.57577199999999995
	.quad	0x3fb1e39713ad5bee              # double 0.069878999999999997
	.quad	0x3fdfc5931ca7d673              # double 0.49643399999999999
	.quad	0x3fe3ecd29131ec0b              # double 0.62265899999999996
	.quad	0x3fe89bc126a65cf6              # double 0.76901299999999995
	.quad	0x3fbc5a8155d5f56a              # double 0.11075599999999999
	.quad	0x3febefe2e6ea8544              # double 0.87303299999999994
	.quad	0x3fe736d43d03968d              # double 0.72544299999999995
	.quad	0x3fdef88765ba6efc              # double 0.48391899999999999
	.quad	0x3fd4af31b152f3c3              # double 0.32319300000000001
	.quad	0x3febabae03b3e9a7              # double 0.864707
	.quad	0x3fd94da9003eea21              # double 0.39536500000000002
	.quad	0x3fab29a1b9f98b72              # double 0.053052000000000002
	.quad	0x3fd79774256bca53              # double 0.36861899999999997
	.quad	0x3fbb9713ad5bee3d              # double 0.10777399999999999
	.quad	0x3feafd75e2046c76              # double 0.84343999999999997
	.quad	0x3fd46ad70e6f2e8c              # double 0.319021
	.quad	0x3fd330984e3ffef4              # double 0.29984100000000002
	.quad	0x3fcf987c6327ed85              # double 0.246841
	.quad	0x3fe91d627bf61aa4              # double 0.784837
	.quad	0x3feccdb9c7368ad7              # double 0.90011300000000005
	.quad	0x3fed64c0df58c08b              # double 0.91854899999999995
	.quad	0x3fceaf46aa087ca6              # double 0.23972399999999999
	.quad	0x3fd4c5b8dc55000d              # double 0.32456800000000002
	.quad	0x3fa2f2d7f950b956              # double 0.037009
	.quad	0x3fec4766c6de7642              # double 0.88371599999999995
	.quad	0x3fea4638c9752978              # double 0.82107200000000002
	.quad	0x3fc09478c868b9fe              # double 0.12953100000000001
	.quad	0x3fede368f08461fa              # double 0.93401000000000001
	.quad	0x3fd8ef99806f2629              # double 0.38962400000000003
	.quad	0x3fdd3ae685db76b4              # double 0.45672000000000001
	.quad	0x3feb6f32bdc26dce              # double 0.85732399999999997
	.quad	0x3fe4df19d66adb40              # double 0.65223399999999998
	.quad	0x3f8d8f0c77dd872f              # double 0.014433
	.quad	0x3fe727d028a1dfb9              # double 0.72360999999999998
	.quad	0x3fe089118c197e56              # double 0.51673199999999997
	.quad	0x3fa1b62c77574f72              # double 0.034592999999999999
	.quad	0x3fec531337eb28d8              # double 0.88514099999999996
	.quad	0x3fe2b71971c10d7c              # double 0.58485100000000001
	.quad	0x3fe28e779207d4e1              # double 0.57989100000000005
	.quad	0x3fe904790b849881              # double 0.78179600000000005
	.quad	0x3fe6ae297396d091              # double 0.70875999999999995
	.quad	0x3fe15058dde7a744              # double 0.54105800000000004
	.quad	0x3fa62a3cea6c1a05              # double 0.043291000000000003
	.quad	0x3fdbe42e12620254              # double 0.43580200000000002
	.quad	0x3fc0991ff7164c73              # double 0.12967300000000001
	.quad	0x3fdccec84f8f8a4c              # double 0.45012099999999999
	.quad	0x3fb3074a771c970f              # double 0.074329999999999993
	.quad	0x3fab4f1e4b44a1f1              # double 0.053338000000000003
	.quad	0x3fe154f3775b8130              # double 0.54161999999999999
	.quad	0x3fdcfd7a13c254a4              # double 0.45297100000000001
	.quad	0x3fd42a77a2cecc81              # double 0.31509199999999998
	.quad	0x3fed7da4052d666b              # double 0.92158700000000005
	.quad	0x3fd02bd3c3611340              # double 0.25267499999999998
	.quad	0x3fb809917939a7c1              # double 0.093895999999999993
	.quad	0x3fe2df58c08b75ea              # double 0.58976399999999995
	.quad	0x3fe154c55432873c              # double 0.54159800000000002
	.quad	0x3fd01e42e1262025              # double 0.25184699999999999
	.quad	0x3feac8301a79feca              # double 0.83693700000000004
	.quad	0x3fc7d7774aba3876              # double 0.18626300000000001
	.quad	0x3fd96bf01322f273              # double 0.39721299999999998
	.quad	0x3fe624db163baba8              # double 0.69199900000000003
	.quad	0x3fee819b0ab2e169              # double 0.95332099999999997
	.quad	0x3feeec4e7253da73              # double 0.96634600000000003
	.quad	0x3fecd77d955714ba              # double 0.90130500000000002
	.quad	0x3fb45af6c69b5a64              # double 0.079513
	.quad	0x3fb2ed352220bc38              # double 0.073931999999999998
	.quad	0x3fe31a06a6e32e38              # double 0.59692699999999999
	.quad	0x3f99be09bb6aa4ba              # double 0.025139000000000002
	.quad	0x3fdb8e3ef284167b              # double 0.43055700000000002
	.quad	0x3fcd0aaa7ded6ba9              # double 0.22688800000000001
	.quad	0x3fee922d948dc11e              # double 0.95534399999999997
	.quad	0x3fa463f141205bc0              # double 0.039824999999999999
	.quad	0x3fd0659d12cadddf              # double 0.25620199999999999
	.quad	0x3f9c08fa7a85015c              # double 0.027378
	.quad	0x3fe0a97e132b55ef              # double 0.52068999999999999
	.quad	0x3fe0fd933e35c5b5              # double 0.53095400000000004
	.quad	0x3fcec319c5a3e39f              # double 0.24032899999999999
	.quad	0x3febde7210be9425              # double 0.87090400000000001
	.quad	0x3fdafdef8487b99d              # double 0.42174899999999999
	.quad	0x3fef323571d1d474              # double 0.97487900000000005
	.quad	0x3fd8a82e87d2c7b9              # double 0.38526500000000002
	.quad	0x3fdf1e364bec679d              # double 0.48621900000000001
	.quad	0x3fe4363b256ffc11              # double 0.63161999999999996
	.quad	0x3fd439e6ab9b23dd              # double 0.31603399999999998
	.quad	0x3fe1ab1704ff4342              # double 0.55213500000000004
	.quad	0x3fc4e94680171194              # double 0.16336899999999999
	.quad	0x3fda3571d1d4738a              # double 0.40951199999999999
	.quad	0x3fd211c2a0232096              # double 0.28233399999999997
	.quad	0x3fde3c70c996b767              # double 0.472439
	.quad	0x3fb8892ab68cef67              # double 0.095842999999999998
	.quad	0x3fabab862b27cbf7              # double 0.054043000000000001
	.quad	0x3febc79f666234a8              # double 0.86811799999999995
	.quad	0x3fc95cf2495e17e3              # double 0.19814899999999999
	.quad	0x3feeab191dde3758              # double 0.95838599999999996
	.quad	0x3fdcc4dec1c1d6d0              # double 0.44951600000000003
	.quad	0x3feed3f9e7b80a9e              # double 0.96337600000000001
	.quad	0x3fe526138fffbce4              # double 0.66089799999999999
	.quad	0x3fcb03c07ee0b0af              # double 0.21105199999999999
	.quad	0x3fc44934267839ce              # double 0.15848400000000001
	.quad	0x3fe9af81626b2f23              # double 0.802674
	.quad	0x3fc4a07f66e86c66              # double 0.16114800000000001
	.quad	0x3fe27a2ad3e920c0              # double 0.57741299999999995
	.quad	0x3feb01fd9ba1b196              # double 0.84399299999999999
	.quad	0x3fba4cb5bb384fd3              # double 0.102733
	.quad	0x3fe9bc4f3ba775fb              # double 0.80423699999999998
	.quad	0x3fe07ff151e75361              # double 0.51561800000000002
	.quad	0x3fd8c343b70ef566              # double 0.38691799999999998
	.quad	0x3fe9dbf26f1dc50d              # double 0.80809900000000001
	.quad	0x3fed861c79b34a45              # double 0.92262100000000002
	.quad	0x3feb430f49491f2e              # double 0.85193600000000003
	.quad	0x3fc76006d0d4994a              # double 0.182618
	.quad	0x3fe124b9884c6a3c              # double 0.53573300000000001
	.quad	0x3fe5855757d5a9eb              # double 0.67252699999999999
	.quad	0x3fddcecc814d727a              # double 0.46574700000000002
	.quad	0x3fd0ea3df6db9410              # double 0.264297
	.quad	0x3fd154152b0a6fc6              # double 0.27075700000000003
	.quad	0x3fc266cb10342aaa              # double 0.143762
	.quad	0x3fecf22e1ac57e24              # double 0.904563
	.quad	0x3fe6245b291b823d              # double 0.69193800000000005
	.quad	0x3fe615097c80841f              # double 0.69006800000000001
	.quad	0x3fe90307f23cc8de              # double 0.78161999999999998
	.quad	0x3fe82ccf6be37de9              # double 0.75546999999999997
	.quad	0x3febaa77a2cecc81              # double 0.86455899999999997
	.quad	0x3fe550aed99cbee8              # double 0.666099
	.quad	0x3fe64fd6d7e889c2              # double 0.69724600000000003
	.quad	0x3fee8a8b08dd1e54              # double 0.95441200000000003
	.quad	0x3fde815a07b352a8              # double 0.47664499999999999
	.quad	0x3fe5b8cda6e75ff6              # double 0.678809
	.quad	0x3fd093293d102bc7              # double 0.25898199999999999
	.quad	0x3fd5f4b61fe21d97              # double 0.343061
	.quad	0x3fee9b866e43aa7a              # double 0.95648500000000003
	.quad	0x3fe40533b1077469              # double 0.62563500000000005
	.quad	0x3fe8d7625204af92              # double 0.77629199999999998
	.quad	0x3fdb2235b4edb2f6              # double 0.42396299999999998
	.quad	0x3f9d63cb81733227              # double 0.028701000000000001
	.quad	0x3fdf61bb05faebc4              # double 0.49034
	.quad	0x3fd07add15f02c4d              # double 0.25749899999999998
	.quad	0x3fd3ae4b018611fd              # double 0.30751299999999998
	.quad	0x3fde5b7cfe586013              # double 0.47433399999999998
	.quad	0x3fbbb5286b59146e              # double 0.108233
	.quad	0x3fe57b28954a7f80              # double 0.67128399999999999
	.quad	0x3fd968dfbd6a593a              # double 0.39702599999999999
	.quad	0x3fe451569f490603              # double 0.63492899999999997
	.quad	0x3fd1e9813879c411              # double 0.27987699999999999
	.quad	0x3fb287a072d1aeb4              # double 0.072382000000000002
	.quad	0x3fd8b0e1b4bb5e0f              # double 0.38579599999999997
	.quad	0x3fc9945b6c3760bf              # double 0.19983999999999999
	.quad	0x3fe23a1d323fee2d              # double 0.56959400000000004
	.quad	0x3fe80101f31f46ed              # double 0.75012299999999998
	.quad	0x3fb4c92146a1a501              # double 0.081194000000000002
	.quad	0x3fd7265f0f5a1017              # double 0.36171700000000001
	.quad	0x3fe2085f4a1272c9              # double 0.56352199999999997
	.quad	0x3fe39327243137b0              # double 0.61171299999999995
	.quad	0x3fe194b599aa6091              # double 0.54940299999999997
	.quad	0x3fd33fe9fadafd11              # double 0.30077599999999999
	.quad	0x3fe0e97f1f9acffa              # double 0.52850299999999995
	.quad	0x3fed183f91e646f1              # double 0.90920999999999996
	.quad	0x3fc01869835158b8              # double 0.125745
	.quad	0x3fddfc2224edf612              # double 0.46851399999999999
	.quad	0x3febb5696e58a32f              # double 0.86589499999999997
	.quad	0x3fe464b662fdfc1a              # double 0.63729400000000003
	.quad	0x3fe54a0e410b630b              # double 0.66529000000000005
	.quad	0x3fd29dadfb506dd7              # double 0.29087400000000002
	.quad	0x3fdc92d1287c200c              # double 0.446461
	.quad	0x3fe57b45f17bd8be              # double 0.67129799999999995
	.quad	0x3fefebce8533b107              # double 0.99753499999999994
	.quad	0x3fd999fe43675ddd              # double 0.40002399999999999
	.quad	0x3fb0192a737110e4              # double 0.062883999999999995
	.quad	0x3fce23a6ce358299              # double 0.23546300000000001
	.quad	0x3fe66e7e62dc6e2b              # double 0.70098800000000006
	.quad	0x3fe841205bc01a37              # double 0.75795000000000001
	.quad	0x3feae7f4dbdf8f47              # double 0.84081499999999998
	.quad	0x3fd505814940bbb2              # double 0.328461
	.quad	0x3fc9c7c5260f5e42              # double 0.201409
	.quad	0x3fc1ba01eeed8905              # double 0.138489
	.quad	0x3fe33abc947064ed              # double 0.60092000000000001
	.quad	0x3fb93293d102bc73              # double 0.098428000000000002
	.quad	0x3fe0e9057d1782d4              # double 0.52844500000000005
	.quad	0x3feed9641f644956              # double 0.96403700000000003
	.quad	0x3fe572474538ef35              # double 0.67020000000000002
	.quad	0x3fef8b97785729b3              # double 0.98579000000000005
	.quad	0x3fdbccbc05d52c17              # double 0.43437100000000001
	.quad	0x3fedb82a12f90108              # double 0.92873099999999997
	.quad	0x3feed25aab474107              # double 0.96317799999999997
	.quad	0x3fe809d495182a99              # double 0.75119999999999998
	.quad	0x3fecf995ee136e72              # double 0.90546700000000002
	.quad	0x3fe88e219652bd3c              # double 0.76734999999999997
	.quad	0x3fc12dc2b0ea1837              # double 0.13420899999999999
	.quad	0x3fd18e3ef284167b              # double 0.27430700000000002
	.quad	0x3fc00bc382a12f90              # double 0.125359
	.quad	0x3fd9ac0c62e4d1a6              # double 0.40112599999999998
	.quad	0x3fe8b9170d62bf12              # double 0.772594
	.quad	0x3fe3bec02f2f9874              # double 0.617035
	.quad	0x3feedf8f4730403a              # double 0.96479000000000004
	.quad	0x3fe9947ae147ae14              # double 0.79937499999999994
	.quad	0x3fe4830e3cd9a522              # double 0.64099799999999996
	.quad	0x3fc77f9d6f112fd3              # double 0.183582
	.quad	0x3fb6fd75e2046c76              # double 0.089804999999999995
	.quad	0x3fd26e3b46fdeb53              # double 0.28797800000000001
	.quad	0x3f978d0cc35ce182              # double 0.022998999999999999
	.quad	0x3f918b502ababead              # double 0.017132999999999999
	.quad	0x3fd6f61672324c83              # double 0.35876999999999998
	.quad	0x3fd245069a4df480              # double 0.28546300000000002
	.quad	0x3fa1e8815e39713b              # double 0.034977000000000001
	.quad	0x3feff7a4e7ab7564              # double 0.99897999999999997
	.quad	0x3fe8c8ba83f4eca7              # double 0.77450300000000005
	.quad	0x3fe915ca6ca03c4b              # double 0.78391
	.quad	0x3fcd1e8e60807358              # double 0.227495
	.quad	0x3feb60e736049ecb              # double 0.85557899999999998
	.quad	0x3fd7651b0ccbc05d              # double 0.36554599999999998
	.quad	0x3fefc21e1d2178f7              # double 0.99244600000000005
	.quad	0x3fe608effe2a3cea              # double 0.68859099999999995
	.quad	0x3fd89884c6a3bde0              # double 0.38430900000000001
	.quad	0x3fe733a0407cc7d2              # double 0.72505200000000003
	.quad	0x3fe8aa19439de482              # double 0.770764
	.quad	0x3fe74b1ee2435697              # double 0.72792000000000001
	.quad	0x3fc3b320535c9e67              # double 0.15390400000000001
	.quad	0x3fec3003686a4ca5              # double 0.88086100000000001
	.quad	0x3fe22474538ef34d              # double 0.56694999999999995
	.quad	0x3fea3721d53cddd7              # double 0.81923000000000001
	.quad	0x3fa7fe4bcad9ad86              # double 0.046862000000000001
	.quad	0x3fe7f4e22a2c2374              # double 0.74864299999999994
	.quad	0x3f98ab4fa48301a8              # double 0.024091000000000001
	.quad	0x3fea437824d4cb9f              # double 0.82073600000000002
	.quad	0x3fb1e1f3a57eaa2a              # double 0.069853999999999999
	.quad	0x3fc2e31d712a0ec7              # double 0.14755599999999999
	.quad	0x3fea8242d05f2885              # double 0.82840100000000005
	.quad	0x3fe59ab4b72c5198              # double 0.67513500000000004
	.quad	0x3fef656473471f79              # double 0.98112699999999997
	.quad	0x3fcf9cd8127b2cc7              # double 0.246974
	.quad	0x3fe5957cd466f502              # double 0.67449800000000004
	.quad	0x3fe89b3aeee95747              # double 0.76894899999999999
	.quad	0x3fefaf6837f7be12              # double 0.99016199999999999
	.quad	0x3fe475d9a0f0a5f0              # double 0.63938600000000001
	.quad	0x3fe186ec17ebaf10              # double 0.54771999999999998
	.quad	0x3fd8ba98eda22f6a              # double 0.38638899999999998
	.quad	0x3fe8bf748a159818              # double 0.77337100000000003
	.quad	0x3feb96d6dc1a47aa              # double 0.86216300000000001
	.quad	0x3fc1c371da37ef5b              # double 0.13877700000000001
	.quad	0x3fe50c21e1d2178f              # double 0.65773099999999995
	.quad	0x3fc3e8ee6b8305d9              # double 0.15554599999999999
	.quad	0x3feae50c5eb313be              # double 0.84045999999999998
	.quad	0x3fdadaa0cae642c0              # double 0.41959400000000002
	.quad	0x3fb575afaf859429              # double 0.083826999999999999
	.quad	0x3fd99db22d0e5604              # double 0.40024999999999999
	.quad	0x3fec40980b242071              # double 0.88288500000000003
	.quad	0x3fd8bff8a8f3a9b0              # double 0.38671699999999998
	.quad	0x3fafb99d451fc4c1              # double 0.061962999999999997
	.quad	0x3fe16c4e7253da73              # double 0.54447100000000004
	.quad	0x3fdc46887a8d64d8              # double 0.441805
	.quad	0x3feb5171e29b6b2b              # double 0.85369200000000001
	.quad	0x3fc58fb43d89ce4a              # double 0.16844799999999999
	.quad	0x3f8eefe4ffc9795b              # double 0.015106
	.quad	0x3fef673a365cb35f              # double 0.98135099999999997
	.quad	0x3fd0d7e02645e4e7              # double 0.26317600000000002
	.quad	0x3fe6391d57ff9b56              # double 0.69447199999999998
	.quad	0x3fd7810a569b1748              # double 0.36725099999999999
	.quad	0x3fc7bce4217d284a              # double 0.18545200000000001
	.quad	0x3fd705b39e279dd4              # double 0.35972300000000001
	.quad	0x3facb945308bb906              # double 0.056100999999999998
	.quad	0x3fd18e79aae6c8f7              # double 0.27432099999999998
	.quad	0x3fe795f45e0b4e12              # double 0.73705500000000002
	.quad	0x3fdd374ff865d7cb              # double 0.45650099999999999
	.quad	0x3fe9841ede1198af              # double 0.79737800000000003
	.quad	0x3fe5e41919ac7970              # double 0.68409399999999998
	.quad	0x3fd7823422467be5              # double 0.36732199999999998
	.quad	0x3fe0ecca2db61bb0              # double 0.52890499999999996
	.quad	0x3fd620685553ef6b              # double 0.34572799999999998
	.quad	0x3fe7954a7f8012e0              # double 0.73697400000000001
	.quad	0x3fe21f81a5870da6              # double 0.56634600000000002
	.quad	0x3fe9f7bbf93ff25e              # double 0.81149099999999996
	.quad	0x3fdbd5ed06fef7c2              # double 0.43493199999999999
	.quad	0x3febf8ca8198f1d4              # double 0.87412
	.quad	0x3fd8f5c6c11a1123              # double 0.39000099999999999
	.quad	0x3fa467381d7dbf48              # double 0.039849999999999997
	.quad	0x3fe2d3cddd6e04c0              # double 0.58835499999999996
	.quad	0x3f99a8049667b5f2              # double 0.025055000000000001
	.quad	0x3fd978140dd3fe19              # double 0.39795399999999997
	.quad	0x3fdfd8be7296f651              # double 0.49760399999999999
	.quad	0x3fa1a4df47f993d5              # double 0.034460999999999999
	.quad	0x3fef78dd616f86a1              # double 0.98350400000000004
	.quad	0x3fd1ede1198aeb81              # double 0.280144
	.quad	0x3fbe617c1bda511a              # double 0.118675
	.quad	0x3feb1d8e86402081              # double 0.84735799999999994
	.quad	0x3fe4b6262cba732e              # double 0.647235
	.quad	0x3fe6e117720c8cd6              # double 0.71497699999999997
	.quad	0x3fdd5d462c343b71              # double 0.458818
	.quad	0x3feeb3700474d9c7              # double 0.95940400000000003
	.quad	0x3fd2d0aaa7ded6bb              # double 0.29398600000000003
	.quad	0x3feddf91600f3450              # double 0.93354099999999995
	.quad	0x3feb842fa5093965              # double 0.85988600000000004
	.quad	0x3fe311fb3fa6defc              # double 0.59594499999999995
	.quad	0x3fd2291fb3fa6df0              # double 0.28376000000000001
	.quad	0x3fd6d7c2ca148ba8              # double 0.35691899999999999
	.quad	0x3fd4c7c957cd466f              # double 0.32469399999999998
	.quad	0x3feec940bbb1f256              # double 0.96206700000000001
	.quad	0x3fea07c200c0f020              # double 0.81344700000000003
	.quad	0x3fdc7ba6698bb4d5              # double 0.44504700000000003
	.quad	0x3fece221c8a7a41e              # double 0.90260399999999996
	.quad	0x3fec76a50d6b228e              # double 0.88948300000000002
	.quad	0x3fd251116a8b8f15              # double 0.28619800000000001
	.quad	0x3fee06a098915bdd              # double 0.93830899999999995
	.quad	0x3feff85d744f5d35              # double 0.99906799999999995
	.quad	0x3fe8f19f7f8ca81a              # double 0.77949500000000005
	.quad	0x3fd68676a7264a17              # double 0.35195700000000002
	.quad	0x3fe0d6494d50ebab              # double 0.52615800000000001
	.quad	0x3fbeb13dfb0d51f8              # double 0.119892
	.quad	0x3fe891e215336dec              # double 0.76780800000000004
	.quad	0x3fe20a915379fa98              # double 0.56379000000000001
	.quad	0x3fe857e889c1b542              # double 0.76073100000000005
	.quad	0x3fd56d19dece5711              # double 0.33478400000000003
	.quad	0x3fe92dd7a99fa11b              # double 0.78684600000000005
	.quad	0x3fde5ce18266772d              # double 0.47441899999999998
	.quad	0x3feca2962cfd8f0c              # double 0.89484699999999994
	.quad	0x3fce872b020c49ba              # double 0.23849999999999999
	.quad	0x3fe67325918a009f              # double 0.70155599999999996
	.quad	0x3fdb7082491afc05              # double 0.42874200000000001
	.quad	0x3fe590a137f38c54              # double 0.67390499999999998
	.quad	0x3fc860aa64c2f838              # double 0.19045000000000001
	.quad	0x3fee1a437824d4cc              # double 0.94070600000000004
	.quad	0x3fc4d612c6ac215c              # double 0.16278300000000001
	.quad	0x3fd9cd184c271fff              # double 0.40314299999999997
	.quad	0x3fd587e7c06e19b9              # double 0.33642
	.quad	0x3fc34a6eb91b3f21              # double 0.15070900000000001
	.quad	0x3fde62ed352220bc              # double 0.47478799999999999
	.quad	0x3fe172b239a38fbd              # double 0.54525100000000004
	.quad	0x3fd358f7121ab4b7              # double 0.30230499999999999
	.quad	0x3fdb1e3eaf6837f8              # double 0.42372100000000001
	.quad	0x3fdf5360d0247022              # double 0.48946400000000001
	.quad	0x3fea53a81dc0db27              # double 0.822712
	.quad	0x3fe6d0614163779f              # double 0.71293700000000004
	.quad	0x3fee12f6e82949a5              # double 0.93981499999999996
	.quad	0x3fd43bea91d9b1b8              # double 0.31615700000000002
	.quad	0x3fe74d07852f7f4a              # double 0.72815300000000005
	.quad	0x3fdcf6ba0620ab71              # double 0.45255899999999999
	.quad	0x3fd14d61b2a27f1b              # double 0.27034799999999998
	.quad	0x3fd566adb402d16c              # double 0.33439200000000002
	.quad	0x3f6f2fdb8fde2ef5              # double 0.0038070000000000001
	.quad	0x3fe93c81908e581d              # double 0.788636
	.quad	0x3fc24ae85b9e8c48              # double 0.14291100000000001
	.quad	0x3fdbb4a66559f6ec              # double 0.43290099999999998
	.quad	0x3fec39fba450acc1              # double 0.88207800000000003
	.quad	0x3fd99fd7a13c254a              # double 0.40038099999999999
	.quad	0x3fd43a81dc0db270              # double 0.31607099999999999
	.quad	0x3f76b54e2b063e08              # double 0.0055440000000000003
	.quad	0x3fee734f82f51266              # double 0.95157599999999998
	.quad	0x3feacf4a558ea7ce              # double 0.83780399999999999
	.quad	0x3fe7b293d102bc73              # double 0.74054900000000001
	.quad	0x3fdc2c2374794ea0              # double 0.44019399999999997
	.quad	0x3fdf99285a921cce              # double 0.49372300000000002
	.quad	0x3fe260daa0cae643              # double 0.57432300000000003
	.quad	0x3fe64dd50a88effe              # double 0.69700099999999998
	.quad	0x3fdb9274e22a2c23              # double 0.43081399999999997
	.quad	0x3fd29e3864cb5bb4              # double 0.29090700000000003
	.quad	0x3fc9be3c105186db              # double 0.20111799999999999
	.quad	0x3fd56e8f29d40ee0              # double 0.33487299999999998
	.quad	0x3fad5629d8409e56              # double 0.057298000000000002
	.quad	0x3fea004534bd76ee              # double 0.81253299999999995
	.quad	0x3fee0f733a8a3f8a              # double 0.93938600000000005
	.quad	0x3fc39a847b24638d              # double 0.15315300000000001
	.quad	0x3fdbd273d5bab218              # double 0.43472
	.quad	0x3f97e670e2c12ad8              # double 0.02334
	.quad	0x3fac88e79aae6c8f              # double 0.055731999999999997
	.quad	0x3fd28b97785729b3              # double 0.28977000000000003
	.quad	0x3fe05de15ca6ca04              # double 0.51146000000000003
	.quad	0x3fe1bf9830e3cd9a              # double 0.55463799999999996
	.quad	0x3fe50a393ee5eedd              # double 0.65749800000000003
	.quad	0x3fd07a0f9096bb99              # double 0.25745000000000001
	.quad	0x3fd29691a75cd0bb              # double 0.29043999999999998
	.quad	0x3fe7aae297396d09              # double 0.73960999999999999
	.quad	0x3fd1c39bcba30121              # double 0.27756399999999998
	.quad	0x3fdb84e831ad2136              # double 0.42998700000000001
	.quad	0x3fdffc43b2dd377e              # double 0.49977199999999999
	.quad	0x3fe0c7325918a00a              # double 0.524316
	.quad	0x3fdcb87379746024              # double 0.44875799999999999
	.quad	0x3fec8e10cf5b1c86              # double 0.89234199999999997
	.quad	0x3fcc432441fea811              # double 0.220799
	.quad	0x3fc6222d5171e29b              # double 0.17291799999999999
	.quad	0x3fb5d92b7fe08af0              # double 0.085345000000000004
	.quad	0x3fe68b6523704791              # double 0.70451600000000003
	.quad	0x3fbaa044ae85b9e9              # double 0.104008
	.quad	0x3fc1c0010c6f7a0b              # double 0.13867199999999999
	.quad	0x3fc35ac8a3726070              # double 0.15120800000000001
	.quad	0x3fec34d48882f0e1              # double 0.88144900000000004
	.quad	0x3fc08b0079a2834d              # double 0.129242
	.quad	0x3fd413cee9dd7ecc              # double 0.31370900000000002
	.quad	0x3fde2eec7c957cd4              # double 0.47161399999999998
	.quad	0x3fe9369b9d7fd827              # double 0.78791599999999995
	.quad	0x3fef7733a8a3f898              # double 0.98330099999999998
	.quad	0x3fd402363b256ffc              # double 0.312635
	.quad	0x3fd1aefb2aae2974              # double 0.27630500000000002
	.quad	0x3fc4b1e5c0b99913              # double 0.16167899999999999
	.quad	0x3fe43f1843c3a42f              # double 0.63270199999999999
	.quad	0x3fcf90ea9e6eeb70              # double 0.24661
	.quad	0x3fee086594af4f0e              # double 0.93852500000000005
	.quad	0x3fe4ade8709741d1              # double 0.64622900000000005
	.quad	0x3fd3f1d3ed527e52              # double 0.311635
	.quad	0x3fe2c1f644955b46              # double 0.58617699999999995
	.quad	0x3feecad9ad85dfa8              # double 0.96226199999999995
	.quad	0x3fdb5696e58a32f4              # double 0.42715999999999998
	.quad	0x3fe971971c10d7bf              # double 0.79511600000000004
	.quad	0x3fd680ae10492360              # double 0.35160400000000003
	.quad	0x3fd3bf22c01e68a1              # double 0.30854100000000001
	.quad	0x3fe6cfbb9496249a              # double 0.71285799999999999
	.quad	0x3fdbdda48b652370              # double 0.43540299999999998
	.quad	0x3fbe53da72a7bd49              # double 0.118467
	.quad	0x3fe3e514c22ee419              # double 0.62171399999999999
	.quad	0x3fc8276b7ed41b76              # double 0.18870300000000001
	.quad	0x3fdc8fabda0dfdf0              # double 0.44626900000000003
	.quad	0x3fde22ff08893b7e              # double 0.47088600000000003
	.quad	0x3feef3b213e3e293              # double 0.96724799999999999
	.quad	0x3f78c08b75ea67e8              # double 0.0060429999999999998
	.quad	0x3fe287bdcf0307f2              # double 0.57906999999999997
	.quad	0x3fe117b7414a4d2b              # double 0.53414499999999998
	.quad	0x3fd380bed740c415              # double 0.30473299999999998
	.quad	0x3fe4ce18266772d6              # double 0.65015800000000001
	.quad	0x3fe3b5c39bcba301              # double 0.61593799999999999
	.quad	0x3fd5f27bb2fec56d              # double 0.34292499999999998
	.quad	0x3fe26c7a7c9de050              # double 0.57574199999999998
	.quad	0x3fddaee2003ab863              # double 0.46379900000000002
	.quad	0x3f731ca7d6733ebc              # double 0.004666
	.quad	0x3fd5b089a0275254              # double 0.33889999999999998
	.quad	0x3fd9fd8f0c77dd87              # double 0.40610099999999999
	.quad	0x3feee76ea4228998              # double 0.96575100000000002
	.quad	0x3fe99973d9ec7000              # double 0.79998199999999997
	.quad	0x3fe0df809917939a              # double 0.52728299999999995
	.quad	0x3fc1dd65a14488c6              # double 0.139569
	.quad	0x3fcd54c985f06f69              # double 0.22914999999999999
	.quad	0x3fc5a4f00ef1348b              # double 0.169096
	.quad	0x3fe84450268900c5              # double 0.75833899999999999
	.quad	0x3fec8fbca1059ea5              # double 0.89254599999999995
	.quad	0x3f86777079e59f2c              # double 0.010970000000000001
	.quad	0x3fee53cbc48f10aa              # double 0.94772900000000004
	.quad	0x3fa5e2ac322291fb              # double 0.042744999999999998
	.quad	0x3fe683211cb039ef              # double 0.70350699999999999
	.quad	0x3fc4cf8d716d2aa6              # double 0.16258400000000001
	.quad	0x3fad3aa369fcf3dc              # double 0.057088
	.quad	0x3fe5a6266fd651b1              # double 0.67653200000000002
	.quad	0x3fe35de58e64b231              # double 0.60521199999999997
	.quad	0x3fca2b841248d7e0              # double 0.204453
	.quad	0x3fb48fc9363f572e              # double 0.080319000000000001
	.quad	0x3fd2b4784230fcf8              # double 0.292265
	.quad	0x3fcf616f86a09891              # double 0.24516099999999999
	.quad	0x3fecc4fa05143bf7              # double 0.89904499999999998
	.quad	0x3fe6d000c9539b89              # double 0.71289100000000005
	.quad	0x3fd1cadddf43c7d6              # double 0.278007
	.quad	0x3f792641b328b6d8              # double 0.0061399999999999996
	.quad	0x3fc2b2314013ec46              # double 0.146063
	.quad	0x3fe4334a44c7b02d              # double 0.63126099999999996
	.quad	0x3fc537e2c55c9603              # double 0.165768
	.quad	0x3fd92e4d1a650614              # double 0.393451
	.quad	0x3f8f809917939a7c              # double 0.015382
	.quad	0x3fe5f761cbccf28c              # double 0.68644799999999995
	.quad	0x3fd0d117b5286b59              # double 0.262762
	.quad	0x3fdeb11409a24031              # double 0.47955799999999998
	.quad	0x3fde49d388a8b08e              # double 0.47325600000000001
	.quad	0x3fe7b6006d0d4995              # double 0.74096700000000004
	.quad	0x3f9c7eae5bc87db3              # double 0.027827000000000001
	.quad	0x3fe40900c521dda0              # double 0.62609899999999996
	.quad	0x3fc7ebfa8f7db6e5              # double 0.186889
	.quad	0x3fb20114d2f5dbba              # double 0.070329000000000003
	.quad	0x3fdfb32ce89656ef              # double 0.495311
	.quad	0x3fdfbbe4473cd573              # double 0.49584299999999998
	.quad	0x3fe65410f94c8798              # double 0.69776199999999999
	.quad	0x3fc0089e34330d74              # double 0.12526300000000001
	.quad	0x3fe440b9991361dd              # double 0.63290100000000005
	.quad	0x3feda9cbab649d39              # double 0.92697700000000005
	.quad	0x3fe8a37ef5a964e9              # double 0.76995800000000003
	.quad	0x3fc3c64345cfede9              # double 0.15448799999999999
	.quad	0x3fbf5ddd2ae8e1d6              # double 0.122526
	.quad	0x3fe1c7bedb7281fe              # double 0.55563300000000004
	.quad	0x3fec2e2328f9f44d              # double 0.88063199999999997
	.quad	0x3febfac81d3aa36a              # double 0.874363
	.quad	0x3fe95d9a0f0a5eff              # double 0.79267600000000005
	.quad	0x3fefe9707182235b              # double 0.99724599999999996
	.quad	0x3fed29973d9ec700              # double 0.911327
	.quad	0x3fb02be8bc169c24              # double 0.063170000000000004
	.quad	0x3fd4c4b90214ad36              # double 0.32450699999999999
	.quad	0x3fe66573215fcc18              # double 0.69988399999999995
	.quad	0x3fc232b12d3415b1              # double 0.14217199999999999
	.quad	0x3fe4db9a5a89b952              # double 0.65180700000000003
	.quad	0x3f982adc4c9c90c5              # double 0.023601
	.quad	0x3fe1b2f01754b05b              # double 0.55309299999999995
	.quad	0x3feeb33fc86cebbc              # double 0.95938100000000003
	.quad	0x3fd0c6ac215b9a5b              # double 0.26212600000000003
	.quad	0x3fe1efd438d1d8a5              # double 0.56052599999999997
	.quad	0x3fd53400b88ca3e8              # double 0.33129900000000001
	.quad	0x3fc29da597d49d7c              # double 0.14543600000000001
	.quad	0x3fc4d48882f0e0a8              # double 0.16273599999999999
	.quad	0x3fb2edcc20d5629e              # double 0.073941000000000007
	.quad	0x3fef227ae9ab29e5              # double 0.97295900000000001
	.quad	0x3fc488c60cbf2b24              # double 0.16042400000000001
	.quad	0x3fe879ca5bd944aa              # double 0.76486699999999996
	.quad	0x3fe187c6327ed84d              # double 0.54782399999999998
	.quad	0x3fc595bbbe878fac              # double 0.168632
	.quad	0x3fe7e48c7192ea53              # double 0.74664900000000001
	.quad	0x3fed9e44fa05143c              # double 0.92557
	.quad	0x3fe0a0b3d4ae429e              # double 0.519617
	.quad	0x3fed0c47a17f4129              # double 0.90774900000000003
	.quad	0x3fef5eb313be22e6              # double 0.98031000000000001
	.quad	0x3fd4a22706d50657              # double 0.32239699999999999
	.quad	0x3f62923e5b8561d4              # double 0.0022669999999999999
	.quad	0x3fee2502eec7c958              # double 0.94201800000000002
	.quad	0x3fb2b71327243138              # double 0.073106000000000004
	.quad	0x3fed040bfe3b03e2              # double 0.90674399999999999
	.quad	0x3f9050374ff865d8              # double 0.015931000000000001
	.quad	0x3fe45989df1172ef              # double 0.63593
	.quad	0x3fd8bef8ceb356da              # double 0.386656
	.quad	0x3fe029dc725c3dee              # double 0.50510999999999995
	.quad	0x3fe50357a355043e              # double 0.65665799999999996
	.quad	0x3fe0a9bf162ae4b0              # double 0.52072099999999999
	.quad	0x3fe3b90c9107faa0              # double 0.61633899999999997
	.quad	0x3fc6c6a3bddfca00              # double 0.17793700000000001
	.quad	0x3fb96f4384ba0e84              # double 0.099353999999999997
	.quad	0x3fa6d56b00ffda40              # double 0.044596999999999998
	.quad	0x3fbb40f66a550870              # double 0.10646
	.quad	0x3fe65959a30984e4              # double 0.698407
	.quad	0x3f8609dcf893faf4              # double 0.010761
	.quad	0x3fd3d66f0cfe1544              # double 0.30996299999999999
	.quad	0x3fe8eea854477ff1              # double 0.77913299999999996
	.quad	0x3fde325d4a5df224              # double 0.47182400000000002
	.quad	0x3fe87c7a398201cd              # double 0.76519499999999996
	.quad	0x3fe9655c0fcb4f1e              # double 0.79362299999999997
	.quad	0x3fded88c1db0142f              # double 0.48196699999999998
	.quad	0x3fef12dba4d6e47e              # double 0.97105200000000003
	.quad	0x3fd554690de09353              # double 0.33327699999999999
	.quad	0x3fea36d00b45ae60              # double 0.819191
	.quad	0x3febb0caa326e115              # double 0.86533099999999996
	.quad	0x3fd7d02cd39da166              # double 0.372081
	.quad	0x3fef4102ff8ec0f9              # double 0.97668600000000005
	.quad	0x3fe5cebdd334c5da              # double 0.68148699999999995
	.quad	0x3fe47d73c9257860              # double 0.64031400000000005
	.quad	0x3feff7dfa00e27e1              # double 0.999008
	.quad	0x3fdb199bb2788db0              # double 0.42343799999999998
	.quad	0x3fe8e594af4f0d84              # double 0.77802499999999996
	.quad	0x3fe36a1405708249              # double 0.60669899999999999
	.quad	0x3fe8c2f1ed17c5ef              # double 0.77379699999999996
	.quad	0x3fdeec918e325d4a              # double 0.48318899999999998
	.quad	0x3fdb1fbc5de9c023              # double 0.42381200000000002
	.quad	0x3fdbc6de76427c7c              # double 0.43401299999999998
	.quad	0x3fe037cdcca70d20              # double 0.50681200000000004
	.quad	0x3fcf198288051c9f              # double 0.24296599999999999
	.quad	0x3fcd7b8d3f1843c4              # double 0.23033300000000001
	.quad	0x3fdecae642bf9831              # double 0.48113400000000001
	.quad	0x3fb0fe69270b06c4              # double 0.066381999999999997
	.quad	0x3fcf9c17225b749b              # double 0.246951
	.quad	0x3fdc2b27cbf6e3f8              # double 0.44013400000000003
	.quad	0x3fe3f64cf8d716d3              # double 0.62381600000000004
	.quad	0x3fdac4e7253da72a              # double 0.41826799999999997
	.quad	0x3fb1f676ea422899              # double 0.070166999999999993
	.quad	0x3fe9b66d7a56de33              # double 0.80351899999999998
	.quad	0x3fb74a558ea7ce10              # double 0.090978000000000003
	.quad	0x3fcf5275ee99a62f              # double 0.244704
	.quad	0x3fddf1950331e3a8              # double 0.46787000000000001
	.quad	0x3fb4b6523704790c              # double 0.080907000000000007
	.quad	0x3febf082491afc05              # double 0.87310900000000002
	.quad	0x3febb17efe0ce0b9              # double 0.86541699999999999
	.quad	0x3feddccea28fe261              # double 0.93320400000000003
	.quad	0x3fc8bf22c01e68a1              # double 0.193333
	.quad	0x3fe99802c0a4a05e              # double 0.79980600000000002
	.quad	0x3fe72231832fcac9              # double 0.72292400000000001
	.quad	0x3fe95b0bbf50e347              # double 0.79236399999999996
	.quad	0x3fe4b92e1ef73c0c              # double 0.64760499999999999
	.quad	0x3fe63d577963992d              # double 0.69498800000000005
	.quad	0x3fb452d666a98245              # double 0.079389000000000001
	.quad	0x3fd305ab3aabcd79              # double 0.29722100000000001
	.quad	0x3fc4060fe47991bc              # double 0.15643499999999999
	.quad	0x3fefe3dc486ad2dd              # double 0.99656500000000003
	.quad	0x3fe5e4fb97bb7308              # double 0.68420199999999998
	.quad	0x3fac92146a1a500d              # double 0.055801999999999997
	.quad	0x3fd22e514c22ee42              # double 0.28407700000000002
	.quad	0x3fe2fd1fe64f54d2              # double 0.59339900000000001
	.quad	0x3fe50164840e171a              # double 0.65642
	.quad	0x3fe77f04577d9557              # double 0.73425499999999999
	.quad	0x3fe2541d8e864021              # double 0.57276800000000005
	.quad	0x3fcbbcf4e874c900              # double 0.21670400000000001
	.quad	0x3fdcb841248d7e02              # double 0.44874599999999998
	.quad	0x3fb0521dda059a74              # double 0.063753000000000004
	.quad	0x3fe2328b6d86ec18              # double 0.56867000000000001
	.quad	0x3fe600431bde82d8              # double 0.68753200000000003
	.quad	0x3fdddd095af294dd              # double 0.46661599999999998
	.quad	0x3fbe90eed02cd39e              # double 0.11939900000000001
	.quad	0x3fd10917d6b65a9b              # double 0.26618000000000003
	.quad	0x3fe32b92c061847f              # double 0.59906899999999996
	.quad	0x3f6ec4e7253da72a              # double 0.0037559999999999998
	.quad	0x3fa56a9c560c7c0f              # double 0.041828999999999998
	.quad	0x3fe06b52c9d16fca              # double 0.51310100000000003
	.quad	0x3fdff6fd21ff2e49              # double 0.49945000000000001
	.quad	0x3fef042b734b5137              # double 0.96925899999999998
	.quad	0x3fd4f4cb1897a67a              # double 0.32744099999999998
	.quad	0x3fc7cbb3c81908e6              # double 0.18590400000000001
	.quad	0x3fedb4528283d35f              # double 0.92826200000000003
	.quad	0x3fd60dc768dfbd6a              # double 0.34459099999999998
	.quad	0x3fd063497b7414a5              # double 0.25606000000000001
	.quad	0x3fd16ca89fc6da45              # double 0.27225700000000003
	.quad	0x3fd2126634117f84              # double 0.28237299999999999
	.quad	0x3fe3333fc86cebbc              # double 0.60000600000000004
	.quad	0x3fe70e325d4a5df2              # double 0.72048299999999998
	.quad	0x3fd31a32b12d3416              # double 0.29847400000000002
	.quad	0x3feb7ef177a7008a              # double 0.85924599999999995
	.quad	0x3fe4759685122318              # double 0.63935399999999998
	.quad	0x3fc0e6d15ad106ee              # double 0.13204399999999999
	.quad	0x3fbd07d912556d1a              # double 0.113401
	.quad	0x3f9f6be37de939eb              # double 0.030685
	.quad	0x3f63037d63022dd8              # double 0.0023210000000000001
	.quad	0x3fdaa7a85015c209              # double 0.41648299999999999
	.quad	0x3fdaee392e1ef73c              # double 0.42079
	.quad	0x3f81a7e308787486              # double 0.0086210000000000002
	.quad	0x3fd96501e2584f4c              # double 0.39678999999999998
	.quad	0x3fef461309c7ffde              # double 0.97730399999999995
	.quad	0x3fe27f47735c182f              # double 0.57803700000000002
	.quad	0x3fec9dfb9389b520              # double 0.89428499999999999
	.quad	0x3fd1740c4156e265              # double 0.27270800000000001
	.quad	0x3fce204f2ae07e5a              # double 0.23536099999999999
	.quad	0x3fc15d249e44fa05              # double 0.135655
	.quad	0x3fd3301eabbcb1cd              # double 0.29981200000000002
	.quad	0x3fab74ff865d7cb3              # double 0.053627000000000001
	.quad	0x3fd9256366d7a56e              # double 0.39290700000000001
	.quad	0x3fdecfe586013661              # double 0.48143900000000001
	.quad	0x3fee5c6e2a80064b              # double 0.94878300000000004
	.quad	0x3fefab7fe08aefb3              # double 0.98968500000000003
	.quad	0x3fb8f14db59578a3              # double 0.097432000000000005
	.quad	0x3fef529bae46cfc8              # double 0.97883399999999998
	.quad	0x3fb6161e4f765fd9              # double 0.086275000000000004
	.quad	0x3fd08f47304039ac              # double 0.258745
	.quad	0x3fe36145953586cb              # double 0.60562400000000005
	.quad	0x3fe3473eee525892              # double 0.60244699999999995
	.quad	0x3fef84dfce3150db              # double 0.98497000000000001
	.quad	0x3fe561c9b4139863              # double 0.66818699999999998
	.quad	0x3fed154a7f8012e0              # double 0.90884900000000001
	.quad	0x3fee2137f38c5437              # double 0.94155500000000003
	.quad	0x3fc49d388a8b08dd              # double 0.161048
	.quad	0x3fe29cd8127b2cc7              # double 0.581646
	.quad	0x3febbb2fec56d5d0              # double 0.86660000000000004
	.quad	0x3fc66bb55ac03ff7              # double 0.17516200000000001
	.quad	0x3fc2a93f290abb45              # double 0.14579
	.quad	0x3fdc4c61d8622c45              # double 0.442162
	.quad	0x3fa113404ea4a8c1              # double 0.033349999999999998
	.quad	0x3fd3c74fb549f948              # double 0.30903999999999998
	.quad	0x3fef696c3fc43b2e              # double 0.98161900000000002
	.quad	0x3fe31cf9a06a6e33              # double 0.59728700000000001
	.quad	0x3fe5a45b291b823d              # double 0.67631300000000005
	.quad	0x3fe1b75c8d9f9054              # double 0.55363300000000004
	.quad	0x3fca9289dadfb507              # double 0.207597
	.quad	0x3fdca6612839042e              # double 0.44765500000000003
	.quad	0x3fe58b242070b8d0              # double 0.67323500000000003
	.quad	0x3fb2b65a9a804966              # double 0.073094999999999993
	.quad	0x3fead4b48d3ae686              # double 0.83846500000000002
	.quad	0x3fe8d10d38cda6e7              # double 0.77551899999999996
	.quad	0x3feacc122749f0e5              # double 0.83741100000000002
	.quad	0x3fea6d0d49949e88              # double 0.82581199999999999
	.quad	0x3fe29003eea209ab              # double 0.58008000000000004
	.quad	0x3fe3d73647baa9b5              # double 0.62002100000000004
	.quad	0x3fa39e492bc2fc69              # double 0.038316999999999997
	.quad	0x3fe1e748e4755ffe              # double 0.55948299999999995
	.quad	0x3fbde85fd04a2fcf              # double 0.116827
	.quad	0x3feb01f31f46ed24              # double 0.84398799999999996
	.quad	0x3fd8f505d0fa58f7              # double 0.389955
	.quad	0x3feffa7a85015c21              # double 0.99932600000000004
	.quad	0x3fefb76d5497310a              # double 0.99114100000000005
	.quad	0x3fcc9cbab649d389              # double 0.22353300000000001
	.quad	0x3fe7c4a4095f2453              # double 0.74275400000000003
	.quad	0x3fc83009b30728e9              # double 0.188966
	.quad	0x3fe978f47304039b              # double 0.79601500000000003
	.quad	0x3fec39e279dd3bb0              # double 0.88206600000000002
	.quad	0x3fe2afa7221858bc              # double 0.58394199999999996
	.quad	0x3fece0d0247021d1              # double 0.902443
	.quad	0x3fef7d5ed06fef7c              # double 0.98405399999999998
	.quad	0x3fc5b2edfe75bc45              # double 0.16952300000000001
	.quad	0x3fc3ec02f2f98740              # double 0.15564
	.quad	0x3fbeb29e4d5d80e5              # double 0.11991300000000001
	.quad	0x3fe04d24e160d888              # double 0.50941700000000001
	.quad	0x3fe16c5d206c8712              # double 0.54447800000000002
	.quad	0x3fe574d7add15f03              # double 0.67051300000000003
	.quad	0x3fe232788db0574b              # double 0.56866099999999997
	.quad	0x3fe0bf3387160957              # double 0.52334000000000003
	.quad	0x3fe92c5c13fd0d06              # double 0.78666499999999995
	.quad	0x3fe541c8216c6152              # double 0.66427999999999998
	.quad	0x3fd4e4c51116a8b9              # double 0.326463
	.quad	0x3fd77d7c2ca148bb              # double 0.36703400000000003
	.quad	0x3feea06c8711d799              # double 0.95708300000000002
	.quad	0x3fed5b20b8066c2b              # double 0.91737400000000002
	.quad	0x3fc9f4eca686e7e6              # double 0.202787
	.quad	0x3fe467cf1c3265ae              # double 0.63767200000000002
	.quad	0x3fea9c36976bc1f0              # double 0.831569
	.quad	0x3fef20578e5c4eb5              # double 0.97269799999999995
	.quad	0x3fed387379746024              # double 0.91314099999999998
	.quad	0x3fcb601797cc3a00              # double 0.21387
	.quad	0x3fcf113836a832ba              # double 0.24271300000000001
	.quad	0x3fe9797891e21533              # double 0.79607799999999995
	.quad	0x3fabbf93ff25e56d              # double 0.054196000000000001
	.quad	0x3fea9973d9ec7000              # double 0.83123199999999997
	.quad	0x3fd1dd095af294dd              # double 0.27911599999999998
	.quad	0x3fe753804534bd77              # double 0.72894300000000001
	.quad	0x3fd5dd7a99fa11a9              # double 0.34164299999999997
	.quad	0x3fe182ababead4f6              # double 0.54720100000000005
	.quad	0x3fd8fb04ee7c49fd              # double 0.39032099999999997
	.quad	0x3fde76102795703f              # double 0.47595599999999999
	.quad	0x3fdafac1d29dc726              # double 0.42155500000000001
	.quad	0x3fec860fe47991bc              # double 0.89136499999999996
	.quad	0x3fe1400da1a93294              # double 0.53906900000000002
	.quad	0x3fb5231c64ba94bc              # double 0.082567000000000002
	.quad	0x3fed2a1f8e3ac0c6              # double 0.91139199999999998
	.quad	0x3fea27b6fe2e6ea8              # double 0.81734799999999996
	.quad	0x3fd5837718655193              # double 0.33614899999999998
	.quad	0x3fec5a2f8bdec5f4              # double 0.88600900000000004
	.quad	0x3fe2785d744f5d35              # double 0.57719299999999996
	.quad	0x3fcf16ebd4cfd08d              # double 0.24288699999999999
	.quad	0x3fc9888f861a60d4              # double 0.19947999999999999
	.quad	0x3fe8cbf6e3f78bbd              # double 0.77489799999999998
	.quad	0x3fb3b6672fba01ef              # double 0.077002000000000001
	.quad	0x3fd14241c3efae79              # double 0.26966899999999999
	.quad	0x3fec0c9d9d3458cd              # double 0.87653999999999999
	.quad	0x3fd4958d9b5e95b8              # double 0.32162800000000002
	.quad	0x3fd0157eed45e918              # double 0.25131199999999998
	.quad	0x3feae1e2de870974              # double 0.84007399999999998
	.quad	0x3fc591148fd9fd37              # double 0.16849
	.quad	0x3fc09cfdd2285660              # double 0.12979099999999999
	.quad	0x3fe731ca7d6733ec              # double 0.72482800000000003
	.quad	0x3fcabe27179bfdf8              # double 0.208928
	.quad	0x3fe1a8b8f14db595              # double 0.55184599999999995
	.quad	0x3fe9fb71fbc5de9c              # double 0.81194399999999999
	.quad	0x3fedf88b9778572a              # double 0.93659000000000003
	.quad	0x3fe68b4e11dbca97              # double 0.70450500000000005
	.quad	0x3fc051f3e89a88ad              # double 0.127501
	.quad	0x3f9cc63f141205bc              # double 0.0281
	.quad	0x3fd726d4801f7510              # double 0.36174499999999998
	.quad	0x3fd70795f676ea42              # double 0.35983799999999999
	.quad	0x3fdb8b8f14db5958              # double 0.43039300000000003
	.quad	0x3fc7767903211cb0              # double 0.18330299999999999
	.quad	0x3fca5e56cd6c2efd              # double 0.20600399999999999
	.quad	0x3fc6481f53825e14              # double 0.17407600000000001
	.quad	0x3fa306c43f5f9160              # double 0.037161
	.quad	0x3fa1db0142f61ed6              # double 0.034874000000000002
	.quad	0x3fc41743e963dc48              # double 0.15695999999999999
	.quad	0x3fda23e9ea140571              # double 0.40844200000000003
	.quad	0x3fea66ec9e236c16              # double 0.82506400000000002
	.quad	0x3fd4d2e946801712              # double 0.32537300000000002
	.quad	0x3fe26a7264a16a48              # double 0.57549399999999995
	.quad	0x3feb8fb224aada34              # double 0.86129100000000002
	.quad	0x3fdef6b5d462c344              # double 0.48380800000000002
	.quad	0x3fc9436b8f9b1316              # double 0.19736999999999999
	.quad	0x3fee65c0b9991362              # double 0.94992100000000002
	.quad	0x3f931a08bfc2224f              # double 0.018654
	.quad	0x3fec6d99cbee807c              # double 0.88837900000000002
	.quad	0x3f892ea52ef911cf              # double 0.012296
	.quad	0x3fc0f605ab3aabcd              # double 0.13250799999999999
	.quad	0x3fdc40d0aaa7ded7              # double 0.44145600000000002
	.quad	0x3fde19e731d2e0e3              # double 0.470331
	.quad	0x3fd8e160d887ebf2              # double 0.38875599999999999
	.quad	0x3fe51af9ebe9c886              # double 0.65954299999999999
	.quad	0x3fd8524399b2c40d              # double 0.380021
	.quad	0x3fe8aa737110e454              # double 0.77080700000000001
	.quad	0x3fef978b3700474e              # double 0.98724900000000004
	.quad	0x3fe5c794ea077037              # double 0.68061300000000002
	.quad	0x3fd3c37a3db3bfb6              # double 0.30880600000000002
	.quad	0x3fc4fdeb52c9d170              # double 0.16399900000000001
	.quad	0x3fcf39da16616b55              # double 0.243953
	.quad	0x3fe92d6883771865              # double 0.78679299999999996
	.quad	0x3fa03d35eb7457c1              # double 0.031717000000000002
	.quad	0x3fc0ccd530489d28              # double 0.13125100000000001
	.quad	0x3fd9970b49e01de2              # double 0.39984399999999998
	.quad	0x3fc40baa582dbe7f              # double 0.156606
	.quad	0x3fbefdfc19c17226              # double 0.121063
	.quad	0x3fefcd2f5dbb9cfa              # double 0.99379700000000004
	.quad	0x3fd2011904b3c3e7              # double 0.28131699999999998
	.quad	0x3fedeeaa6d267408              # double 0.93538399999999999
	.quad	0x3fe03afb7e90ff97              # double 0.50719999999999998
	.quad	0x3fcdc07ee0b0af60              # double 0.232437
	.quad	0x3f794e1a3f4666ed              # double 0.0061780000000000003
	.quad	0x3fe9306c43f5f916              # double 0.787161
	.quad	0x3fc8da5daf07bfe8              # double 0.194164
	.quad	0x3febf202107b7846              # double 0.87329199999999996
	.quad	0x3fed1e44fa05143c              # double 0.909945
	.quad	0x3fb22424a276b7ed              # double 0.070863999999999996
	.quad	0x3fe30281ba7fc32f              # double 0.59405600000000003
	.quad	0x3fbdaf1886df82b2              # double 0.115953
	.quad	0x3fcac332f01754b0              # double 0.20908199999999999
	.quad	0x3fe573647baa9b4a              # double 0.67033600000000004
	.quad	0x3fc5796bfca85cab              # double 0.167768
	.quad	0x3f907bfe7e1fc090              # double 0.016098000000000001
	.quad	0x3fdd9899bf5946c3              # double 0.46243899999999999
	.quad	0x3fdb3b1d0c804103              # double 0.425483
	.quad	0x3fe88870110a137f              # double 0.76665499999999998
	.quad	0x3fd08a71de69ad43              # double 0.25845000000000001
	.quad	0x3fe6ebd2b6f19935              # double 0.71628700000000001
	.quad	0x3fe69dcb5781c715              # double 0.706762
	.quad	0x3fe9ec2acb85a4f0              # double 0.81007899999999999
	.quad	0x3fc0dd7a99fa11a9              # double 0.13175899999999999
	.quad	0x3feada3c21187e7c              # double 0.83913999999999999
	.quad	0x3fea3417ca2120e2              # double 0.818859
	.quad	0x3fe35e9c0229a5ec              # double 0.60529900000000003
	.quad	0x3fbcc814d72799a2              # double 0.112428
	.quad	0x3fa507c84b5dcc64              # double 0.041075
	.quad	0x3fe5bb9ae0c17657              # double 0.67915099999999995
	.quad	0x3f93f961804d9839              # double 0.019505999999999999
	.quad	0x3fd6bea91d9b1b7a              # double 0.35538700000000001
	.quad	0x3fe6df45e0b4e11e              # double 0.71475500000000003
	.quad	0x3fd775b813016484              # double 0.36656
	.quad	0x3fdf682730c67169              # double 0.490732
	.quad	0x3fdc117f84449dbf              # double 0.43856800000000001
	.quad	0x3feef7b7c7820a31              # double 0.96773900000000001
	.quad	0x3febba908a265f0f              # double 0.86652399999999996
	.quad	0x3fdc25204af92296              # double 0.43976599999999999
	.quad	0x3fec6158750c1b97              # double 0.88688299999999998
	.quad	0x3fda9ee02a77a2cf              # double 0.41594700000000001
	.quad	0x3fa11fb3fa6defc8              # double 0.033445000000000003
	.quad	0x3fc577292c493426              # double 0.16769899999999999
	.quad	0x3fbaac1094a2b9d4              # double 0.104188
	.quad	0x3fb36be37de939eb              # double 0.075865000000000002
	.quad	0x3fbd2bc2fc69728a              # double 0.11394899999999999
	.quad	0x3fe6db48909289db              # double 0.71426800000000001
	.quad	0x3fe1b9f340d4dc66              # double 0.55394900000000002
	.quad	0x3fd9615a8deb0fae              # double 0.396567
	.quad	0x3fe1ba775fb2edfe              # double 0.55401199999999995
	.quad	0x3fb15347a5b0ff11              # double 0.067677000000000001
	.quad	0x3fc3c219eb6390c9              # double 0.154361
	.quad	0x3fe6cde5d18090b4              # double 0.71263399999999999
	.quad	0x3fdcf2495e17e34c              # double 0.45228800000000002
	.quad	0x3feee6be7afa7222              # double 0.96566700000000005
	.quad	0x3fe67c5cdd50a88f              # double 0.702681
	.quad	0x3fe501a79fec99f2              # double 0.65645200000000004
	.quad	0x3fe8ab25b317efe1              # double 0.77089200000000002
	.quad	0x3fe0759ccfaeff5c              # double 0.51435699999999995
	.quad	0x3fc8b790fb65668c              # double 0.193102
	.quad	0x3feb851eb851eb85              # double 0.85999999999999999
	.quad	0x3fe0f5a964e8b7e5              # double 0.52998800000000001
	.quad	0x3fed4d141a6937d2              # double 0.915659
	.quad	0x3fc7aa1511dffc54              # double 0.18487799999999999
	.quad	0x3fe2473471f79421              # double 0.57119200000000003
	.quad	0x3fd102539756c93a              # double 0.26576699999999998
	.quad	0x3fea5e657b84db9c              # double 0.82402299999999994
	.quad	0x3feee4e8b7e4de3c              # double 0.96544300000000005
	.quad	0x3fa312b1b36bd2b7              # double 0.037252
	.quad	0x3fd58bc9cd3e0bd4              # double 0.33665699999999998
	.quad	0x3fdd2a5614df8b15              # double 0.45570899999999998
	.quad	0x3fd1d4e4c942d491              # double 0.27861900000000001
	.quad	0x3fd044c37e6f71a8              # double 0.25419700000000001
	.quad	0x3fd61b64e054690e              # double 0.34542200000000001
	.quad	0x3fb4216c61522a6f              # double 0.078634999999999997
	.quad	0x3feb2e85b9e8c47a              # double 0.84942899999999999
	.quad	0x3fe2820817fc7608              # double 0.57837300000000003
	.quad	0x3fe6cb9cb6848beb              # double 0.71235499999999996
	.quad	0x3fd777ccc0379314              # double 0.36668699999999999
	.quad	0x3fea31dd5d3dc8b8              # double 0.81858699999999995
	.quad	0x3fceca1cef240faa              # double 0.24054300000000001
	.quad	0x3fc6bfa0945f9df5              # double 0.17772299999999999
	.quad	0x3fe576b3bb83cf2d              # double 0.67074
	.quad	0x3fe5f5147f130596              # double 0.68616699999999997
	.quad	0x3fe3d6c7219220ff              # double 0.61996799999999996
	.quad	0x3fd2aed56b00ffda              # double 0.29192099999999999
	.quad	0x3fe8ac669057d178              # double 0.77104499999999998
	.quad	0x3fe00d92fb19e732              # double 0.50165700000000002
	.quad	0x3fd497785729b281              # double 0.321745
	.quad	0x3fecbaade657b84e              # double 0.89778800000000003
	.quad	0x3f8075b3e1437c57              # double 0.0080370000000000007
	.quad	0x3fd1dae3e6c4c597              # double 0.27898499999999998
	.quad	0x3fe3237cdcca70d2              # double 0.598082
	.quad	0x3fec2747d805e5f3              # double 0.87979499999999999
	.quad	0x3fe1a6aec0724b77              # double 0.551597
	.quad	0x3faeeaa6d2674081              # double 0.060384
	.quad	0x3fe62f1cb89d6adf              # double 0.69325099999999995
	.quad	0x3fe2d4067cf1c326              # double 0.58838199999999996
	.quad	0x3fceba3875925354              # double 0.24005799999999999
	.quad	0x3fe0dfcc1871e6cd              # double 0.52731899999999998
	.quad	0x3fcb4c33b5393251              # double 0.21326300000000001
	.quad	0x3fefbdfb0d51f81a              # double 0.99194099999999996
	.quad	0x3fcd3d6c72192210              # double 0.228437
	.quad	0x3feb13f4a98aa865              # double 0.84618599999999999
	.quad	0x3fc4059a73b42cc3              # double 0.156421
	.quad	0x3fd58b4bf8fcd680              # double 0.33662700000000001
	.quad	0x3fe7208bfc2224ee              # double 0.722723
	.quad	0x3fec33f63c31df76              # double 0.88134299999999999
	.quad	0x3feaf2f123c42a67              # double 0.84215600000000002
	.quad	0x3fe023df6db940ff              # double 0.50437900000000002
	.quad	0x3fd509310129cbab              # double 0.32868599999999998
	.quad	0x3fef0d9f90539fba              # double 0.97041299999999997
	.quad	0x3fe42426bb55ac04              # double 0.629413
	.quad	0x3fcda459103c8e26              # double 0.23157800000000001
	.quad	0x3fd13ad5bee3d5fe              # double 0.26921600000000001
	.quad	0x3fe22005c4651f3f              # double 0.56640900000000005
	.quad	0x3fe5af6e82949a56              # double 0.67766499999999996
	.quad	0x3fece2cdc011d367              # double 0.90268599999999999
	.quad	0x3fe1e8cef672b884              # double 0.55966899999999997
	.quad	0x3fe8301a79fec99f              # double 0.75587199999999999
	.quad	0x3fdca4bdba0a5269              # double 0.44755499999999998
	.quad	0x3fea3ca31e7d9989              # double 0.81990200000000002
	.quad	0x3febf47f993d5348              # double 0.87359600000000004
	.quad	0x3feef69878316a05              # double 0.96760199999999996
	.quad	0x3fe608dd1e53a81e              # double 0.68858200000000003
	.quad	0x3fef88f861a60d45              # double 0.98546999999999995
	.quad	0x3fdc5f28848387df              # double 0.44330799999999998
	.quad	0x3fe94d26fa3fcc9f              # double 0.79066800000000004
	.quad	0x3fd62ee41919ac79              # double 0.34661199999999998
	.quad	0x3faef4be835dedf2              # double 0.060461000000000001
	.quad	0x3fe66705c896dd27              # double 0.70007600000000003
	.quad	0x3fb3839cd8127b2d              # double 0.076227000000000003
	.quad	0x3fd755b035bd512f              # double 0.36460500000000001
	.quad	0x3fd411d3671ac14c              # double 0.31358799999999998
	.quad	0x3fd49c4113c68662              # double 0.32203700000000002
	.quad	0x3fe4a600b0292817              # double 0.64526399999999995
	.quad	0x3fdb042d8c2a454e              # double 0.42213000000000001
	.quad	0x3fd7382a12f90108              # double 0.36280299999999999
	.quad	0x3fe4fc0d2c386d2f              # double 0.65576800000000002
	.quad	0x3fe531d4f9c1f85d              # double 0.66233299999999995
	.quad	0x3fd330f49491f2dc              # double 0.29986299999999999
	.quad	0x3fe357cb2d905c03              # double 0.60446699999999998
	.quad	0x3fe1c51dabe2717a              # double 0.55531200000000003
	.quad	0x3fcdb4677b395c42              # double 0.232068
	.quad	0x3fdccde19fc2a887              # double 0.45006600000000002
	.quad	0x3fcedb7ae5796bfd              # double 0.24107300000000001
	.quad	0x3fed52d01c0ca601              # double 0.91635900000000003
	.quad	0x3fe39f623076c051              # double 0.61320600000000003
	.quad	0x3fda63b688bda943              # double 0.41233599999999998
	.quad	0x3fdda2120e1f7d74              # double 0.46301700000000001
	.quad	0x3fd653bd1676640a              # double 0.34886099999999998
	.quad	0x3fedf17df19d66ae              # double 0.93572900000000003
	.quad	0x3fe62d14a0a0f4d8              # double 0.69300300000000004
	.quad	0x3fee3267c6b8b695              # double 0.94365299999999996
	.quad	0x3fb7b73083558a76              # double 0.092638999999999999
	.quad	0x3fdac896dd26b724              # double 0.418493
	.quad	0x3fd95b8dc55000c9              # double 0.39621299999999998
	.quad	0x3fca7967caea747e              # double 0.20683000000000001
	.quad	0x3fe3164840e1719f              # double 0.59646999999999994
	.quad	0x3fb01d6cf850df16              # double 0.062949000000000005
	.quad	0x3fb2acfb762d83c7              # double 0.072952000000000003
	.quad	0x3fc06c8f75536934              # double 0.12831300000000001
	.quad	0x3fd3987c6327ed85              # double 0.30618200000000001
	.quad	0x3fc76861e92923e6              # double 0.18287300000000001
	.quad	0x3f764302b40f66a5              # double 0.0054349999999999997
	.quad	0x3fee5bb59ddc1e79              # double 0.94869499999999995
	.quad	0x3fdadef8487b99d4              # double 0.41985899999999998
	.quad	0x3fcf666a98244e94              # double 0.245313
	.quad	0x3fa9a8049667b5f2              # double 0.050110000000000002
	.quad	0x3fbc679cc74b838c              # double 0.110956
	.quad	0x3fd324d8fd5cb791              # double 0.299124
	.quad	0x3fe7caf2d7f950b9              # double 0.74352399999999996
	.quad	0x3fcc1eff9f87f024              # double 0.219696
	.quad	0x3fe7cccccccccccd              # double 0.74375000000000002
	.quad	0x3fe02b3edd8b60f2              # double 0.50527900000000003
	.quad	0x3fe31f7f8ca8198f              # double 0.59759499999999999
	.quad	0x3fd7d759ee88df37              # double 0.37251899999999999
	.quad	0x3fa51d4738a3b57c              # double 0.041238999999999998
	.quad	0x3fc55fb2edfe75bc              # double 0.16698299999999999
	.quad	0x3fc1c5b4aa9717df              # double 0.138846
	.quad	0x3fc4a62aa19439de              # double 0.16132099999999999
	.quad	0x3fd049c6f36ef805              # double 0.25450299999999998
	.quad	0x3fe1b30f8c64fdb1              # double 0.55310800000000004
	.quad	0x3fe2e41700cd8559              # double 0.59034299999999995
	.quad	0x3fd8ff0025bfad2a              # double 0.39056400000000002
	.quad	0x3f8522a6f3f52fc2              # double 0.010319999999999999
	.quad	0x3fefe0e51d25aab4              # double 0.99620299999999994
	.quad	0x3fe04a771c970f7c              # double 0.50909000000000004
	.quad	0x3fe0735e310dbf05              # double 0.51408299999999996
	.quad	0x3fe93499d0203e64              # double 0.78767100000000001
	.quad	0x3feed2849cb252ce              # double 0.963198
	.quad	0x3fe8411c2a023209              # double 0.75794799999999996
	.quad	0x3fe37648c7192ea5              # double 0.60818899999999998
	.quad	0x3fd02003ab862b28              # double 0.25195400000000001
	.quad	0x3fbf0caa326e1156              # double 0.12128700000000001
	.quad	0x3fe3397dd00f776c              # double 0.60076799999999997
	.quad	0x3fc95f88fc9363f5              # double 0.19822799999999999
	.quad	0x3fe88d7be9856a38              # double 0.76727100000000004
	.quad	0x3fe86481f53825e1              # double 0.76226899999999997
	.quad	0x3fbe6a012599ed7c              # double 0.11880499999999999
	.quad	0x3fe5cacaff6d3309              # double 0.68100499999999997
	.quad	0x3febd698fe69270b              # double 0.869946
	.quad	0x3fd8c0229a5ebb77              # double 0.38672699999999999
	.quad	0x3fda5a31a4bdba0a              # double 0.41175499999999998
	.quad	0x3fed9f3a57eaa2a1              # double 0.92568700000000004
	.quad	0x3fe96414e7ee9143              # double 0.79346700000000003
	.quad	0x3fe1d553ef6b5d46              # double 0.55729099999999998
	.quad	0x3fe40a2877ee4e27              # double 0.62624000000000002
	.quad	0x3fc992fb19e731d3              # double 0.199798
	.quad	0x3fd6d24e160d887f              # double 0.35658600000000001
	.quad	0x3fd168b5cbff4773              # double 0.27201599999999998
	.quad	0x3fb7eea209aaa3ad              # double 0.093484999999999999
	.quad	0x3fe69f10667f90da              # double 0.70691700000000002
	.quad	0x3f96073de1e2de87              # double 0.021512
	.quad	0x3fbe8a2ec28b2a6b              # double 0.119296
	.quad	0x3fd99a8cdea033e8              # double 0.40005800000000002
	.quad	0x3fea42e126202539              # double 0.82066399999999995
	.quad	0x3fd19a1b9f98b71c              # double 0.27503100000000003
	.quad	0x3fd5068986fcdee3              # double 0.32852399999999998
	.quad	0x3feb167caea747d8              # double 0.846495
	.quad	0x3fea525cc426351e              # double 0.82255400000000001
	.quad	0x3fcb661f18c9fb61              # double 0.21405399999999999
	.quad	0x3fdfba775fb2edfe              # double 0.49575599999999997
	.quad	0x3fc129c347e8ccde              # double 0.13408700000000001
	.quad	0x3fd4ec679cc74b84              # double 0.32692900000000003
	.quad	0x3fd5a22706d50657              # double 0.33802199999999999
	.quad	0x3fe8beb5b2d4d402              # double 0.77327999999999997
	.quad	0x3fd123315d701d9f              # double 0.26777299999999998
	.quad	0x3fcb4538ef34d6a1              # double 0.21304999999999999
	.quad	0x3feca4ebdd334c5e              # double 0.89513200000000004
	.quad	0x3fb817fc7607c41a              # double 0.094116000000000005
	.quad	0x3fea8e5e679463d0              # double 0.82987900000000003
	.quad	0x3fe441db0142f61f              # double 0.63303900000000002
	.quad	0x3fe8d92d98bf7f06              # double 0.77651099999999995
	.quad	0x3fea324851a86940              # double 0.81863799999999998
	.quad	0x3fd273eee5258927              # double 0.28832600000000003
	.quad	0x3fec55cb790fb656              # double 0.88547299999999995
	.quad	0x3fd3b039ef0f16f4              # double 0.30763099999999999
	.quad	0x3fcda543f1c75819              # double 0.23160600000000001
	.quad	0x3fd2d97b30f8c650              # double 0.29452400000000001
	.quad	0x3fef91212513b5bf              # double 0.98646599999999995
	.quad	0x3fed112ba16e7a31              # double 0.90834599999999999
	.quad	0x3fd0e3150dae3e6c              # double 0.26385999999999998
	.quad	0x3fe804230fcf80dc              # double 0.75050499999999997
	.quad	0x3fd6a582dbe7f2c3              # double 0.353852
	.quad	0x3fc250507a6bd6e9              # double 0.14307600000000001
	.quad	0x3fe774a3400b88ca              # double 0.73298799999999997
	.quad	0x3fc20ef1348b2208              # double 0.14108100000000001
	.quad	0x3fed46f7a0b5ed8d              # double 0.91491299999999998
	.quad	0x3fdf27807789a459              # double 0.486786
	.quad	0x3fef760e0eb67c28              # double 0.98316099999999995
	.quad	0x3fee88ace24bba13              # double 0.95418400000000003
	.quad	0x3fda5a5332acfb76              # double 0.41176299999999999
	.quad	0x3fd2e1b4bb5e0f80              # double 0.29502600000000001
	.quad	0x3fd64ba0e8427419              # double 0.34836600000000001
	.quad	0x3fe46fae7924af0c              # double 0.63863300000000001
	.quad	0x3feff12c27a63737              # double 0.99819000000000002
	.quad	0x3fd80841ede1198b              # double 0.375504
	.quad	0x3fb78f041461b6d4              # double 0.092025999999999997
	.quad	0x3fbaac647778dd61              # double 0.10419299999999999
	.quad	0x3fe820c6b484d76b              # double 0.75400100000000003
	.quad	0x3fbfb60285ec3dab              # double 0.123871
	.quad	0x3fe54c6c54bcf0b7              # double 0.66557900000000003
	.quad	0x3fc04e1e71044f1a              # double 0.127384
	.quad	0x3fd3f5515054ac2a              # double 0.31184800000000001
	.quad	0x3fda3fb7a5f41aef              # double 0.41013899999999998
	.quad	0x3fd1dce7cd035372              # double 0.27910800000000002
	.quad	0x3fd798f1d3ed527e              # double 0.36870999999999998
	.quad	0x3fe9021af7d30ad4              # double 0.78150699999999995
	.quad	0x3fce750c1b97353b              # double 0.23794699999999999
	.quad	0x3fdd35efa615a8df              # double 0.45641700000000002
	.quad	0x3fce084a515ce9e6              # double 0.234628
	.quad	0x3fdd0f0a5efe9318              # double 0.45404299999999997
	.quad	0x3fe2b15b573eab36              # double 0.58414999999999995
	.quad	0x3fe86e631f8a0903              # double 0.76347500000000001
	.quad	0x3fe01945b6c3760c              # double 0.503085
	.quad	0x3fe7e22c45026890              # double 0.74635899999999999
	.quad	0x3f8525cc426351df              # double 0.010326
	.quad	0x3f91b0468448cf7d              # double 0.017274000000000001
	.quad	0x3f22be48a58b3f64              # double 1.4300000000000001E-4
	.quad	0x3fb617c1bda5119d              # double 0.086300000000000002
	.quad	0x3fadbea0ba1f4b1f              # double 0.058095000000000001
	.quad	0x3fe5a730c67168f9              # double 0.67665900000000001
	.quad	0x3fb172580c308feb              # double 0.068151000000000003
	.quad	0x3fef1eabbcb1cc96              # double 0.97249399999999997
	.quad	0x3fe5b0f27bb2fec5              # double 0.67784999999999995
	.quad	0x3fe3752fc2656abe              # double 0.60805500000000001
	.quad	0x3fdd368ad6883772              # double 0.45645400000000003
	.quad	0x3fbb2dd377e1b8ed              # double 0.106168
	.quad	0x3fe8139a7c17a893              # double 0.75239299999999998
	.quad	0x3feb5cb790fb6567              # double 0.85506800000000005
	.quad	0x3fe6df84cad57bc8              # double 0.714785
	.quad	0x3febb4b72c5197a2              # double 0.86580999999999997
	.quad	0x3fd5e94680171194              # double 0.34236299999999997
	.quad	0x3fe132d2bb23571d              # double 0.53745399999999999
	.quad	0x3f825dd095af294e              # double 0.0089680000000000003
	.quad	0x3fd6a7b9170d62bf              # double 0.353987
	.quad	0x3fed9dcf893faf42              # double 0.92551399999999995
	.quad	0x3fd0161a1db877ab              # double 0.25134899999999999
	.quad	0x3fde688bda9435ad              # double 0.47513100000000003
	.quad	0x3fe4c18b502ababf              # double 0.64862600000000004
	.quad	0x3fcaf8f041461b6d              # double 0.21072199999999999
	.quad	0x3feee22813448063              # double 0.96510700000000004
	.quad	0x3fee23b7952d234f              # double 0.94186000000000003
	.quad	0x3fe5fd7a13c254a4              # double 0.68719200000000003
	.quad	0x3fe0d653c9abb01d              # double 0.52616300000000005
	.quad	0x3fe6861e92923e5c              # double 0.70387200000000005
	.quad	0x3fa7839cd8127b2d              # double 0.045926000000000002
	.quad	0x3fe48201cd5f99c4              # double 0.64087000000000005
	.quad	0x3fef0765ba6efc37              # double 0.96965299999999998
	.quad	0x3fd3344806290eed              # double 0.300066
	.quad	0x3fe56a6e32e3821b              # double 0.669242
	.quad	0x3fb9274e22a2c237              # double 0.098255999999999996
	.quad	0x3fe06b1e5c0b9991              # double 0.51307599999999998
	.quad	0x3fda10e0221426fe              # double 0.40727999999999998
	.quad	0x3fe3b9ef0f16f438              # double 0.61644699999999997
	.quad	0x3fc06516db0dd830              # double 0.128085
	.quad	0x3fefb07d0aed99cc              # double 0.990294
	.quad	0x3fb30d1fa333764f              # double 0.074418999999999999
	.quad	0x3fd9a52ac753e708              # double 0.40070600000000001
	.quad	0x3fec595dd4c76d11              # double 0.88590899999999995
	.quad	0x3fd1f44d44567126              # double 0.28053600000000001
	.quad	0x3fd8bcdfefbf401c              # double 0.38652799999999998
	.quad	0x3fdda86940357a35              # double 0.46340399999999998
	.quad	0x3fb92ddbdb5d8948              # double 0.098355999999999999
	.quad	0x3fe902f72b452828              # double 0.78161199999999997
	.quad	0x3fe009e98dcdb37d              # double 0.50121000000000004
	.quad	0x3feaab14ec204f2b              # double 0.83338400000000001
	.quad	0x3fe67a05143bf727              # double 0.70239499999999999
	.quad	0x3fd42e62131a8ef7              # double 0.31533099999999997
	.quad	0x3fe29144cbe1eb42              # double 0.580233
	.quad	0x3fd8a743a647fdc6              # double 0.38520900000000002
	.quad	0x3fe0f6f08cc575c0              # double 0.53014399999999995
	.quad	0x3fe4a4a8c154c986              # double 0.64510000000000001
	.quad	0x3fc9ac57e23f24d9              # double 0.200572
	.quad	0x3feffd45a5fc7e6b              # double 0.99966699999999997
	.quad	0x3fdf56bca5375c8e              # double 0.48966900000000002
	.quad	0x3fd60aed99cbee80              # double 0.34441699999999997
	.quad	0x3fe966687f455a7d              # double 0.79375099999999998
	.quad	0x3fec15e17e34b945              # double 0.87767099999999998
	.quad	0x3fdd9f44d4456712              # double 0.46284599999999998
	.quad	0x3fdcb5b2d4d4024b              # double 0.44858999999999999
	.quad	0x3fe69db22d0e5604              # double 0.70674999999999999
	.quad	0x3fe4a46173b85e81              # double 0.64506600000000003
	.quad	0x3fef8d173fb7a5f4              # double 0.98597299999999998
	.quad	0x3fefabf76a2f48c3              # double 0.98974200000000001
	.quad	0x3fe69f23465625a7              # double 0.70692600000000005
	.quad	0x3fd7204295a6c5d2              # double 0.361344
	.quad	0x3fc83b60285ec3db              # double 0.18931200000000001
	.quad	0x3fbb7baecd07852f              # double 0.10735599999999999
	.quad	0x3fe5a8027d88c1db              # double 0.676759
	.quad	0x3fcdbb8c32a8c9b8              # double 0.23228599999999999
	.quad	0x3fedeee957470eb2              # double 0.93541399999999997
	.quad	0x3f8a22f6a50d6b23              # double 0.012762000000000001
	.quad	0x3fe1ebebe1650a46              # double 0.56004900000000002
	.quad	0x3fea51bb4916ca47              # double 0.82247700000000001
	.quad	0x3fe7d0bfa0945f9e              # double 0.744232
	.quad	0x3fedd32a497fa5d3              # double 0.93202700000000005
	.quad	0x3fefda20ddc61954              # double 0.99537699999999995
	.quad	0x3fe183fd50225743              # double 0.54736200000000002
	.quad	0x3fecdf28848387df              # double 0.90224099999999996
	.quad	0x3fec16030c23fab1              # double 0.87768699999999999
	.quad	0x3fe6ba57eaa2a0a9              # double 0.71024699999999996
	.quad	0x3fe665f30e7ff584              # double 0.69994500000000004
	.quad	0x3fcaa6fc58ab92c0              # double 0.20822099999999999
	.quad	0x3feb055970b49e02              # double 0.84440300000000001
	.quad	0x3fc86efc371da37f              # double 0.190887
	.quad	0x3fe9278af3e468cb              # double 0.78607700000000003
	.quad	0x3fefbb3636f3b214              # double 0.99160300000000001
	.quad	0x3fe6ceee0f3cb3e5              # double 0.71275999999999995
	.quad	0x3fed2bae03b3e9a7              # double 0.911582
	.quad	0x3fe1d4046412cf10              # double 0.55713100000000004
	.quad	0x3fef8f861a60d456              # double 0.98626999999999998
	.quad	0x3fec5dc8323358f3              # double 0.88644800000000001
	.quad	0x3fe6da74c09c3ce2              # double 0.714167
	.quad	0x3fe222b5a20ddc62              # double 0.56673700000000005
	.quad	0x3fc3f0b28522ea10              # double 0.155783
	.quad	0x3fe5944028e4fb98              # double 0.67434700000000003
	.quad	0x3fd2d77318fc5048              # double 0.2944
	.quad	0x3fb04f6dfc5cdd51              # double 0.063712000000000005
	.quad	0x3fea72becedd4845              # double 0.82650699999999999
	.quad	0x3feae0c9d9d3458d              # double 0.83994000000000002
	.quad	0x3fec988d2a1f8e3b              # double 0.89362200000000003
	.quad	0x3fdb16c61522a6f4              # double 0.423265
	.quad	0x3fe568c26138fffc              # double 0.66903800000000002
	.quad	0x3fd35432873bc904              # double 0.302014
	.quad	0x3fb1d084e831ad21              # double 0.069587999999999997
	.quad	0x3fe750ca1cef2410              # double 0.72861200000000004
	.quad	0x3fea207f66e86c66              # double 0.81646700000000005
	.quad	0x3fe7e2dc6e2a8006              # double 0.74644299999999997
	.quad	0x3fe8b762d83c6c98              # double 0.77238600000000002
	.quad	0x3fedd592d98bf7f0              # double 0.93232099999999996
	.quad	0x3fe07ecbb7f9d6f1              # double 0.51547799999999999
	.quad	0x3fd27e77d523b363              # double 0.28896899999999998
	.quad	0x3fdd75fb2edfe75c              # double 0.46032600000000001
	.quad	0x3fd457e23f24d8fd              # double 0.31786399999999998
	.quad	0x3fcad20afa2f05a7              # double 0.209535
	.quad	0x3fd0bfa8f7db6e50              # double 0.26169799999999999
	.quad	0x3fe5a7f1b6912125              # double 0.67675099999999999
	.quad	0x3fe06eb2d0a24463              # double 0.513513
	.quad	0x3fe62c7fbacb4289              # double 0.69293199999999999
	.quad	0x3fca637bd05af6c7              # double 0.20616100000000001
	.quad	0x3fd19289dadfb507              # double 0.27456900000000001
	.quad	0x3fece68a0d349be9              # double 0.903142
	.quad	0x3fdffcc5b8dc5500              # double 0.499803
	.quad	0x3fdebf4cb1897a68              # double 0.48042600000000002
	.quad	0x3fe8b62845996745              # double 0.77223600000000003
	.quad	0x3fee5ab5c39bcba3              # double 0.948573
	.quad	0x3fde774eebf65dc0              # double 0.47603200000000001
	.quad	0x3fc8268900c521de              # double 0.18867600000000001
	.quad	0x3fbd2ef911cf355d              # double 0.113998
	.quad	0x3fb7ed84d338f798              # double 0.093467999999999996
	.quad	0x3fdec6327ed84d34              # double 0.48084700000000002
	.quad	0x3fdb9331a08bfc22              # double 0.43085899999999999
	.quad	0x3fe5094c447c30d3              # double 0.657385
	.quad	0x3fdef7e3d1cc100e              # double 0.48387999999999998
	.quad	0x3fa82773e24febd1              # double 0.047176000000000003
	.quad	0x3fd13eb399f5dfec              # double 0.26945200000000002
	.quad	0x3fdbc016052502ef              # double 0.43359900000000001
	.quad	0x3fed325d4a5df224              # double 0.91239800000000004
	.quad	0x3fef69185cee17a0              # double 0.98157899999999997
	.quad	0x3fe850678c0053e3              # double 0.75981500000000002
	.quad	0x3fe9e18266772d5e              # double 0.808778
	.quad	0x3fcf15b573eab368              # double 0.24285000000000001
	.quad	0x3fd6e9c886162f16              # double 0.35801899999999998
	.quad	0x3fddf51266341180              # double 0.46808300000000003
	.quad	0x3fe45c896dd26b72              # double 0.63629599999999997
	.quad	0x3fe0e931876188b1              # double 0.52846599999999999
	.quad	0x3fe6ed02cd39da16              # double 0.71643199999999996
	.quad	0x3fc252d666a98245              # double 0.143153
	.quad	0x3f7ed4a1ad6451b9              # double 0.0075269999999999998
	.quad	0x3fe5080b673c4f3c              # double 0.65723200000000004
	.quad	0x3fe8e35a426bb55b              # double 0.77775300000000003
	.quad	0x3feb4e831ad2135e              # double 0.85333400000000004
	.quad	0x3fe46147ae147ae1              # double 0.63687499999999997
	.quad	0x3fed8e8a71de69ad              # double 0.92364999999999997
	.quad	0x3fd6239a38fbca10              # double 0.34592299999999998
	.quad	0x3fc4d7625204af92              # double 0.162823
	.quad	0x3fecbe24febd09e1              # double 0.89821099999999998
	.quad	0x3fe371800a7c5ac4              # double 0.60760499999999995
	.quad	0x3fdbcebfec13b9f1              # double 0.43449399999999999
	.quad	0x3fe8962cfd8f0c78              # double 0.76833200000000001
	.quad	0x3fc4fe931876188b              # double 0.164019
	.quad	0x3fef04944ed6fda8              # double 0.96930899999999997
	.quad	0x3fe61dffc5479d4e              # double 0.69116200000000005
	.quad	0x3fd4e2d1f1cfbb95              # double 0.32634400000000002
	.quad	0x3fb943d03968d75a              # double 0.098691
	.quad	0x3fc772abef06b378              # double 0.18318699999999999
	.quad	0x3fdda454de7ea5f8              # double 0.46315499999999998
	.quad	0x3fc0e32e3821af7d              # double 0.13193299999999999
	.quad	0x3fd6d0e12e83a10a              # double 0.35649900000000001
	.quad	0x3febbd4067cf1c32              # double 0.86685199999999996
	.quad	0x3fd871a7e3087875              # double 0.38193700000000003
	.quad	0x3fe17d113836a833              # double 0.54651700000000003
	.quad	0x3feef8c868b9fdbd              # double 0.96786899999999997
	.quad	0x3faa5b0ff10ecb75              # double 0.051476000000000001
	.quad	0x3fdafdbd2fa0d77b              # double 0.42173699999999997
	.quad	0x3fe2b152f3c2dadc              # double 0.58414600000000005
	.quad	0x3fd3cd4ed2cbea4f              # double 0.30940600000000001
	.quad	0x3fa49f2fdb8fde2f              # double 0.040277
	.quad	0x3fe5a2df9378ee28              # double 0.67613199999999996
	.quad	0x3fee6e49f51697f2              # double 0.950963
	.quad	0x3fe92c215b9a5a8a              # double 0.78663700000000003
	.quad	0x3fa3530ced4e4c94              # double 0.037742999999999999
	.quad	0x3fc3914f483cafb4              # double 0.15287200000000001
	.quad	0x3fe0e6d58c8eef1c              # double 0.52817800000000004
	.quad	0x3fe5f2a7bd48cb4b              # double 0.68587100000000001
	.quad	0x3fdb049667b5f1bf              # double 0.422155
	.quad	0x3fe35454152b0a70              # double 0.60404400000000003
	.quad	0x3fe969f2778140dd              # double 0.79418299999999997
	.quad	0x3fe22c9081c2e33f              # double 0.56794
	.quad	0x3fe652d01c0ca601              # double 0.69760900000000003
	.quad	0x3fd4ccb3a2595bbc              # double 0.32499400000000001
	.quad	0x3fe32dd15f02c4d6              # double 0.59934299999999996
	.quad	0x3fecfa2f05a708ee              # double 0.90554000000000001
	.quad	0x3fd59d3cbc48f10b              # double 0.33772200000000002
	.quad	0x3fdba91d9b1b79d9              # double 0.432197
	.quad	0x3fe39845dc832336              # double 0.61233800000000005
	.quad	0x3fec6aec0724b76f              # double 0.88805199999999995
	.quad	0x3fd62231832fcac9              # double 0.34583700000000001
	.quad	0x3fe92e1ac57e23f2              # double 0.78687799999999997
	.quad	0x3fe7858ff7596851              # double 0.73505399999999999
	.quad	0x3fa81b866e43aa7a              # double 0.047085000000000002
	.quad	0x3fef6cf63800218e              # double 0.98205100000000001
	.quad	0x3fd479e9d0e991ff              # double 0.31994099999999998
	.quad	0x3fe53df4c2b51bd6              # double 0.66381299999999999
	.quad	0x3fd81198aeb80ed0              # double 0.37607400000000002
	.quad	0x3fe27605ab3aabcd              # double 0.57690699999999995
	.quad	0x3fe05abc0e38a7e7              # double 0.51107599999999997
	.quad	0x3fe66c1c1d6cf851              # double 0.70069700000000001
	.quad	0x3fdbc11e42e12620              # double 0.43366199999999999
	.quad	0x3fd1228134480629              # double 0.267731
	.quad	0x3fe26fa82e87d2c8              # double 0.57613000000000003
	.quad	0x3f9da4052d666a98              # double 0.028946
	.quad	0x3fa86d938151a438              # double 0.047711000000000003
	.quad	0x3fee150763a19008              # double 0.94006699999999998
	.quad	0x3fb967caea747d80              # double 0.099239999999999994
	.quad	0x3fd68db0574b4070              # double 0.35239799999999999
	.quad	0x3fcf5efa615a8deb              # double 0.245086
	.quad	0x3fc844a6223e186a              # double 0.18959500000000001
	.quad	0x3fb203e63e8dda49              # double 0.070372000000000004
	.quad	0x3fcf3cee9dd7ecbb              # double 0.24404699999999999
	.quad	0x3fd8f40a2877ee4e              # double 0.38989499999999999
	.quad	0x3fe7b1b152f3c2db              # double 0.74044100000000002
	.quad	0x3fe2811904b3c3e7              # double 0.57825899999999997
	.quad	0x3fcb50b955f7835a              # double 0.21340100000000001
	.quad	0x3fd83361565c2d28              # double 0.37813600000000003
	.quad	0x3fd4851eb851eb85              # double 0.32062499999999999
	.quad	0x3fe1ef5ec80c73ac              # double 0.56047000000000002
	.quad	0x3feda62cba732df5              # double 0.926535
	.quad	0x3fe2bba98eda22f7              # double 0.58540800000000004
	.quad	0x3fde1c58255b035c              # double 0.47048000000000001
	.quad	0x3fe87253da72a7bd              # double 0.76395599999999997
	.quad	0x3feb10752da98677              # double 0.84575900000000004
	.quad	0x3fc3df43c7d5ed07              # double 0.155251
	.quad	0x3fe678487b99d452              # double 0.702183
	.quad	0x3fe8d117b5286b59              # double 0.77552399999999999
	.quad	0x3fd3049ecb31c21a              # double 0.297157
	.quad	0x3fd33f034b0e1b4c              # double 0.30072100000000002
	.quad	0x3f517720c8cd63cc              # double 0.0010660000000000001
	.quad	0x3fd91f81a5870da6              # double 0.39254800000000001
	.quad	0x3fe2b4bd76ee73e7              # double 0.58456300000000005
	.quad	0x3fc169014b599aa6              # double 0.136017
	.quad	0x3fe7d338f7985272              # double 0.74453400000000003
	.quad	0x3fc46cfc829cfdd2              # double 0.159576
	.quad	0x3f8862b27cbf6e3f              # double 0.011906999999999999
	.quad	0x3fefd2d44dca8e2e              # double 0.99448599999999998
	.quad	0x3fe0730a4e379b78              # double 0.51404300000000003
	.quad	0x3fc0efed634549b6              # double 0.132322
	.quad	0x3fef29ae4f3343fa              # double 0.97383799999999998
	.quad	0x3fe82b25b317efe1              # double 0.75526700000000002
	.quad	0x3fe913b5bf6a0dbb              # double 0.78365600000000002
	.quad	0x3fda90539fba450b              # double 0.41505900000000001
	.quad	0x3fe4a391d57ff9b5              # double 0.64496699999999996
	.quad	0x3fe44fb97bb73083              # double 0.63473199999999996
	.quad	0x3fee14b380cb6c7a              # double 0.94002699999999995
	.quad	0x3fd2a41e57d9dba9              # double 0.291267
	.quad	0x3fe0410f94c87981              # double 0.507942
	.quad	0x3fe13cc6c54bcf0b              # double 0.53866899999999995
	.quad	0x3fb2c204f2ae07e6              # double 0.073273000000000005
	.quad	0x3fc142dcf4623d0c              # double 0.134853
	.quad	0x3fe875a31a4bdba1              # double 0.76436000000000004
	.quad	0x3fc1bed30f062d41              # double 0.13863600000000001
	.quad	0x3fe8277c45cbbc2c              # double 0.75482000000000004
	.quad	0x3fc124e160d887ec              # double 0.133938
	.quad	0x3feff4eebf65dbfd              # double 0.998649
	.quad	0x3fd4fbbd7b2031cf              # double 0.32786500000000002
	.quad	0x3fea54434e3369ba              # double 0.82278600000000002
	.quad	0x3fec2e8e1d6494d5              # double 0.88068299999999999
	.quad	0x3fe8d783dff3f0fe              # double 0.776308
	.quad	0x3febd7ba6698bb4d              # double 0.87008399999999997
	.quad	0x3fcc6bbdbe3c1052              # double 0.22203800000000001
	.quad	0x3fe3ab430f49491f              # double 0.61465599999999998
	.quad	0x3fe52b40f66a5508              # double 0.66152999999999995
	.quad	0x3fc364f11b60ae97              # double 0.15151800000000001
	.quad	0x3fe2c940bbb1f256              # double 0.58706700000000001
	.quad	0x3fede705c896dd27              # double 0.93445100000000003
	.quad	0x3feebb4f61672325              # double 0.96036500000000002
	.quad	0x3fc34c6e6d9be4cd              # double 0.15076999999999999
	.quad	0x3fe52cd5b6805a2d              # double 0.66172299999999995
	.quad	0x3fdbf0f9d2bf5515              # double 0.436583
	.quad	0x3fefd9ff4fd6d7e9              # double 0.99536100000000005
	.quad	0x3fd3897a67a52ac7              # double 0.30526599999999998
	.quad	0x3fb8486ad2dcb146              # double 0.094854999999999994
	.quad	0x3fe5d07c84b5dcc6              # double 0.68169999999999997
	.quad	0x3fc7f2239e6ab9b2              # double 0.18707699999999999
	.quad	0x3fb1feeb2d0a2446              # double 0.070295999999999997
	.quad	0x3feecab81f969e3d              # double 0.96224600000000004
	.quad	0x3fdfd27807789a46              # double 0.49722100000000002
	.quad	0x3fd22dbe7f2c300a              # double 0.28404200000000002
	.quad	0x3fdbb1465e892253              # double 0.432695
	.quad	0x3fd39bf5946c332f              # double 0.306394
	.quad	0x3fb832a8c9b84556              # double 0.094522999999999995
	.quad	0x3fed9930be0ded29              # double 0.92495000000000005
	.quad	0x3fc7b9ae0c176577              # double 0.18535399999999999
	.quad	0x3fceda98676a7265              # double 0.24104600000000001
	.quad	0x3fed0da3c21187e8              # double 0.90791500000000003
	.quad	0x3fe71611ba3ca750              # double 0.72144399999999997
	.quad	0x3fd68d7e02645e4e              # double 0.35238599999999998
	.quad	0x3fef237ef5a964e9              # double 0.97308300000000003
	.quad	0x3fe852bb23571d1d              # double 0.76009899999999997
	.quad	0x3fe1296f6512a950              # double 0.53630800000000001
	.quad	0x3f7b21c475e6362a              # double 0.0066239999999999997
	.quad	0x3fe97db6e503fb37              # double 0.79659599999999997
	.quad	0x3fbc1ffb480a5acd              # double 0.109863
	.quad	0x3feb7a0945f9df55              # double 0.85864700000000005
	.quad	0x3fe7318dac258d58              # double 0.72479899999999997
	.quad	0x3fb3aa369fcf3dc0              # double 0.076815999999999995
	.quad	0x3fd75681ecd4aa11              # double 0.36465500000000001
	.quad	0x3fe0c9081c2e33f0              # double 0.52454000000000001
	.quad	0x3fcfccf28c79f666              # double 0.248442
	.quad	0x3fe6d18b0d0edc3c              # double 0.71307900000000002
	.quad	0x3fc5ba237cdcca71              # double 0.169743
	.quad	0x3fafb99d451fc4c1              # double 0.061962999999999997
	.quad	0x3fa2ec0724b76f6d              # double 0.036956999999999997
	.quad	0x3fe39fab96f21f6d              # double 0.61324100000000004
	.quad	0x3fe34cc037931444              # double 0.60311899999999996
	.quad	0x3fec2cc92146a1a5              # double 0.880467
	.quad	0x3fe4c5953586ca8a              # double 0.649119
	.quad	0x3fee1f6a93f290ac              # double 0.94133500000000003
	.quad	0x3fe0d36d655e28aa              # double 0.52580899999999997
	.quad	0x3fa90b1feeb2d0a2              # double 0.048912999999999998
	.quad	0x3fd4d20afa2f05a7              # double 0.32532
	.quad	0x3fdb1dc0db2702a3              # double 0.42369099999999998
	.quad	0x3fc051f3e89a88ad              # double 0.127501
	.quad	0x3fcc8709741d084f              # double 0.22287100000000001
	.quad	0x3fc6521dda059a74              # double 0.17438100000000001
	.quad	0x3fd51b1960fa15db              # double 0.32977899999999999
	.quad	0x3fe931359791819d              # double 0.78725699999999998
	.quad	0x3fe6761672324c83              # double 0.70191499999999996
	.quad	0x3fc438327674d163              # double 0.15796499999999999
	.quad	0x3fcf99d451fc4c16              # double 0.24688199999999999
	.quad	0x3fec0201cd5f99c4              # double 0.87524500000000005
	.quad	0x3fe88bb0a2ca9ac3              # double 0.76705199999999996
	.quad	0x3feb220578e5c4eb              # double 0.84790299999999996
	.quad	0x3fd9ffb04ee7c4a0              # double 0.40623100000000001
	.quad	0x3fef7b480a5accd5              # double 0.98379899999999997
	.quad	0x3fe4362e90364389              # double 0.63161400000000001
	.quad	0x3feb4aafbc1acde2              # double 0.85286700000000004
	.quad	0x3fdbe7c8d195896a              # double 0.43602200000000002
	.quad	0x3fd5a7b4e54f7a92              # double 0.33836100000000002
	.quad	0x3fe945f5ad96a6a0              # double 0.78978999999999999
	.quad	0x3fea55ed06fef7c2              # double 0.82298899999999997
	.quad	0x3fc8e008e9b38d61              # double 0.19433700000000001
	.quad	0x3fabf5b5fa22706d              # double 0.054608999999999998
	.quad	0x3fd152157689ca19              # double 0.27063500000000001
	.quad	0x3fe619c17225b74a              # double 0.69064400000000004
	.quad	0x3fc165ba6efc371e              # double 0.13591700000000001
	.quad	0x3fd8eb3dd11be6e6              # double 0.38935799999999998
	.quad	0x3fd4d551d68c692f              # double 0.32551999999999998
	.quad	0x3fe9cc22ee41919b              # double 0.80616900000000002
	.quad	0x3fe7240d90e23af3              # double 0.72315099999999999
	.quad	0x3fe201c92ddbdb5e              # double 0.56271800000000005
	.quad	0x3fe81f969e3c9689              # double 0.75385599999999997
	.quad	0x3fcf22e1ac57e23f              # double 0.243252
	.quad	0x3fe44a4095f2452c              # double 0.63406399999999996
	.quad	0x3fe023e7d135115a              # double 0.50438300000000003
	.quad	0x3fb0e91c8eabffce              # double 0.066057000000000005
	.quad	0x3fda67dbb16c1e36              # double 0.41258899999999998
	.quad	0x3fee338b47c73eee              # double 0.94379199999999996
	.quad	0x3fc3b384fd2a62aa              # double 0.153916
	.quad	0x3fd1858793dd97f6              # double 0.27377499999999999
	.quad	0x3feed5a3a08398a6              # double 0.96357899999999996
	.quad	0x3fb133d29563a9f4              # double 0.067197000000000007
	.quad	0x3fc5f88fc9363f57              # double 0.171648
	.quad	0x3fdf6861e92923e6              # double 0.49074600000000002
	.quad	0x3fe26e3b46fdeb53              # double 0.57595600000000002
	.quad	0x3fe6ef826edaa92e              # double 0.71673699999999996
	.quad	0x3fd60e5a35d67ba2              # double 0.34462599999999999
	.quad	0x3fcf55a3a08398a6              # double 0.24480099999999999
	.quad	0x3fea3f11f926c7eb              # double 0.82019900000000001
	.quad	0x3faa8deb0fadf2ed              # double 0.051864
	.quad	0x3fe08472c0e7bc3c              # double 0.51616799999999996
	.quad	0x3fc8372e6a76965f              # double 0.18918399999999999
	.quad	0x3fded63022dd7a9a              # double 0.481823
	.quad	0x3fe369b17481b21c              # double 0.60665199999999997
	.quad	0x3fe4887442c7fbad              # double 0.64165700000000003
	.quad	0x3fe6e22a2c237479              # double 0.71510799999999997
	.quad	0x3f9faebc408d8ec9              # double 0.030939999999999999
	.quad	0x3fd9e86833c6002a              # double 0.40481
	.quad	0x3fe20d25edd05293              # double 0.56410499999999997
	.quad	0x3fdda72a7bd48cb5              # double 0.46332800000000002
	.quad	0x3fe381e68a0d349c              # double 0.60960700000000001
	.quad	0x3fd160d887ebf22c              # double 0.271536
	.quad	0x3fe3bd9231c64ba9              # double 0.61689099999999997
	.quad	0x3fd774794ea07703              # double 0.36648399999999998
	.quad	0x3fddbf26f1dc50ce              # double 0.46479199999999998
	.quad	0x3fe31e3a7daa4fca              # double 0.59743999999999997
	.quad	0x3feda54a3c64345d              # double 0.926427
	.quad	0x3fe6f29b280f12c2              # double 0.71711499999999995
	.quad	0x3fa85faebc408d8f              # double 0.047605000000000001
	.quad	0x3fd80d306a2b1705              # double 0.375805
	.quad	0x3fd14bcad9ad85e0              # double 0.27025100000000002
	.quad	0x3fbf27cbf6e3f78c              # double 0.121701
	.quad	0x3fe7cbb5e0f7fcfc              # double 0.74361699999999997
	.quad	0x3fd0ebbfd71b0468              # double 0.26438899999999999
	.quad	0x3fe730ccbc05d52c              # double 0.72470699999999999
	.quad	0x3fe11290257c914b              # double 0.53351599999999999
	.quad	0x3fcd8b47c73eee52              # double 0.23081299999999999
	.quad	0x3fecd72ffd1dcd70              # double 0.90126799999999996
	.quad	0x3fda1acde19fc2a9              # double 0.40788600000000003
	.quad	0x3fd217dae81882ae              # double 0.28270600000000001
	.quad	0x3fd87a355043e532              # double 0.38245899999999999
	.quad	0x3f8b5aea3161a1dc              # double 0.013357000000000001
	.quad	0x3fe94710cb295e9e              # double 0.78992499999999999
	.quad	0x3fb9a048e043a216              # double 0.100102
	.quad	0x3feaedc5d6388659              # double 0.84152499999999997
	.quad	0x3fedb71da37ef5a9              # double 0.92860299999999996
	.quad	0x3fe6aababead4f59              # double 0.708341
	.quad	0x3fea37414a4d2b2c              # double 0.819245
	.quad	0x3fecccad57bc7f78              # double 0.89998500000000003
	.quad	0x3fe8f13f077ccc03              # double 0.77944899999999995
	.quad	0x3fc6c2a454de7ea6              # double 0.177815
	.quad	0x3fe730d0edc3bd5a              # double 0.72470900000000005
	.quad	0x3fca541d8e864021              # double 0.20569200000000001
	.quad	0x3fd4ceb78897e996              # double 0.32511699999999999
	.quad	0x3fea33ce63a5c1c6              # double 0.818824
	.quad	0x3fcf9c7368ad6883              # double 0.24696199999999999
	.quad	0x3fec4efaa4766c6e              # double 0.88464100000000001
	.quad	0x3fd1f5e41d4b6a62              # double 0.28063300000000002
	.quad	0x3fe2e4cf8d716d2b              # double 0.59043100000000004
	.quad	0x3fe8b33daf8df7a5              # double 0.77188000000000001
	.quad	0x3fe319934efcbd55              # double 0.59687199999999996
	.quad	0x3fd64d48882f0e0b              # double 0.34846700000000003
	.quad	0x3fa9ef0f16f4384c              # double 0.050652000000000003
	.quad	0x3fe3b3721d53cddd              # double 0.61565499999999995
	.quad	0x3fdcb8aa00192a73              # double 0.44877099999999998
	.quad	0x3fed53d859c8c932              # double 0.91648499999999999
	.quad	0x3fe62bbecaab8a5d              # double 0.69284000000000001
	.quad	0x3fe135c5b4aa9718              # double 0.53781400000000001
	.quad	0x3fea8a82a5614df9              # double 0.82940800000000003
	.quad	0x3fd83ad9f0a1be2b              # double 0.37859199999999998
	.quad	0x3fe6046412cf0f9d              # double 0.68803599999999998
	.quad	0x3fd550507a6bd6e9              # double 0.33302700000000002
	.quad	0x3fd57ee9142b302f              # double 0.33587099999999998
	.quad	0x3fb052e72da122fb              # double 0.063765000000000002
	.quad	0x3fe1c02afdda8bd2              # double 0.55470799999999998
	.quad	0x3fb534df04ddb552              # double 0.082837999999999994
	.quad	0x3fd99a5a89b951c6              # double 0.40004600000000001
	.quad	0x3fe0900a393ee5ef              # double 0.51758300000000002
	.quad	0x3feab827fa1a0cf2              # double 0.83498000000000006
	.quad	0x3fe7bddb9841aac5              # double 0.74192599999999997
	.quad	0x3fef426fe718a86d              # double 0.97685999999999995
	.quad	0x3fc075a31a4bdba1              # double 0.12859000000000001
	.quad	0x3fedf5bc44bf4cb2              # double 0.93624700000000005
	.quad	0x3fdeb8cfbfc6540d              # double 0.48003000000000001
	.quad	0x3fcc795703f2d3c8              # double 0.22245300000000001
	.quad	0x3fee8a2877ee4e27              # double 0.95436500000000002
	.quad	0x3fe9d2a1f8e3ac0c              # double 0.80696199999999995
	.quad	0x3fd18b7a1c25d074              # double 0.27413799999999999
	.quad	0x3fdebdb5d894812c              # double 0.48032900000000001
	.quad	0x3f99af5ba2be058a              # double 0.025083000000000001
	.quad	0x3fdefdef8487b99d              # double 0.48424899999999999
	.quad	0x3fea792af9a8cdea              # double 0.827291
	.quad	0x3fce7cb70ac3a861              # double 0.238181
	.quad	0x3fefa936c58eeaea              # double 0.98940600000000001
	.quad	0x3fe9b97785729b28              # double 0.80388999999999999
	.quad	0x3fcc44fa05143bf7              # double 0.220855
	.quad	0x3fe0b8f36694898f              # double 0.52257699999999996
	.quad	0x3fdb8c08b75ea67f              # double 0.43042200000000003
	.quad	0x3fe7ffb480a5accd              # double 0.74996399999999996
	.quad	0x3fea87af20ea5b53              # double 0.82906299999999999
	.quad	0x3fe183b3e9a6f827              # double 0.54732700000000001
	.quad	0x3fe8f240fa9c12f1              # double 0.77957200000000004
	.quad	0x3fecf8b9baa1511e              # double 0.905362
	.quad	0x3fe7e789e774eebf              # double 0.74701399999999996
	.quad	0x3fe110c0ad03d9a9              # double 0.53329499999999996
	.quad	0x3fefc39ffd60e94f              # double 0.99263000000000001
	.quad	0x3fe5e492bc2fc697              # double 0.68415199999999998
	.quad	0x3f658750c1b97354              # double 0.0026280000000000001
	.quad	0x3fcd69552e2fbe34              # double 0.22977700000000001
	.quad	0x3fe5be9856a37ac4              # double 0.67951600000000001
	.quad	0x3fe5266dbd72bcb6              # double 0.660941
	.quad	0x3fe276be37de939f              # double 0.57699500000000004
	.quad	0x3fc91ac9afe1da7b              # double 0.19613
	.quad	0x3fa8c8abd5dc4007              # double 0.048405999999999998
	.quad	0x3fdf3a109d0635a4              # double 0.48791899999999999
	.quad	0x3fc4c41dd1a21ea3              # double 0.16223499999999999
	.quad	0x3fe83e1437c5692b              # double 0.75757799999999997
	.quad	0x3fe291c087442c80              # double 0.58029200000000003
	.quad	0x3fe05b2702a3486f              # double 0.511127
	.quad	0x3feff3d9ec700043              # double 0.99851699999999998
	.quad	0x3fef396f21f6cacd              # double 0.97576099999999998
	.quad	0x3fa2eab7995ee137              # double 0.036947000000000001
	.quad	0x3fd4b04ee7c49fd8              # double 0.32326100000000002
	.quad	0x3fdaab29e4d5d80e              # double 0.41669699999999998
	.quad	0x3fe20e3476295209              # double 0.56423400000000001
	.quad	0x3fa09dcf893faf42              # double 0.032453999999999997
	.quad	0x3fd5c6e6d9be4cd7              # double 0.34026499999999998
	.quad	0x3fd7c753e707e176              # double 0.37154100000000001
	.quad	0x3fcf41205bc01a37              # double 0.244175
	.quad	0x3fe4373f316e3715              # double 0.63174399999999997
	.quad	0x3fda6e221c8a7a42              # double 0.41297200000000001
	.quad	0x3fd2e4d1a6506141              # double 0.29521599999999998
	.quad	0x3fd7c050bd87b56c              # double 0.37111300000000003
	.quad	0x3fd4fb9bed30f063              # double 0.32785700000000001
	.quad	0x3fe67d30ad46f588              # double 0.70278200000000002
	.quad	0x3fed9e3a7daa4fca              # double 0.92556499999999997
	.quad	0x3fd57546d3f9e7b8              # double 0.335283
	.quad	0x3fb47cb70ac3a861              # double 0.080028000000000002
	.quad	0x3fe330ced4e4c943              # double 0.59970800000000002
	.quad	0x3fda8dc55000c954              # double 0.41490300000000002
	.quad	0x3fe4bd76ee73e682              # double 0.64812800000000004
	.quad	0x3fe881322f2734f8              # double 0.76577099999999998
	.quad	0x3fe6b9bed30f062d              # double 0.71017399999999997
	.quad	0x3fd1666a98244e94              # double 0.27187600000000001
	.quad	0x3fc0f0d844d013a9              # double 0.13235
	.quad	0x3fec0281ba7fc32f              # double 0.87530600000000003
	.quad	0x3fceaa7ded6ba8c6              # double 0.23957800000000001
	.quad	0x3fcddd2ae8e1d649              # double 0.23331199999999999
	.quad	0x3fdbe7253da72a7c              # double 0.43598300000000001
	.quad	0x3fe4c254a3c64346              # double 0.64872200000000002
	.quad	0x3fe48b8ae31d712a              # double 0.64203399999999999
	.quad	0x3fd2592d98bf7f06              # double 0.28669299999999998
	.quad	0x3fd624b33daf8df8              # double 0.34599000000000002
	.quad	0x3fcce9bbf0dc768e              # double 0.225883
	.quad	0x3fe5b810e8858ff7              # double 0.67871899999999996
	.quad	0x3feb0db8bac710cb              # double 0.84542499999999998
	.quad	0x3fe72c4d65e46067              # double 0.72415799999999997
	.quad	0x3fef73cf70153bd1              # double 0.98288699999999995
	.quad	0x3fe0532c625e99e9              # double 0.51015299999999997
	.quad	0x3fce84ad794a6eb9              # double 0.238424
	.quad	0x3fd6abc947064ecf              # double 0.35423500000000002
	.quad	0x3fd9f17bd8be7297              # double 0.405364
	.quad	0x3fc9c4da9003eea2              # double 0.20132
	.quad	0x3f8c01a36e2eb1c4              # double 0.013675
	.quad	0x3fd1193b3a68b19a              # double 0.26716499999999999
	.quad	0x3fe5525aab474107              # double 0.66630299999999998
	.quad	0x3fc8fb86f47b677f              # double 0.19517599999999999
	.quad	0x3fe3abbecaab8a5d              # double 0.61471500000000001
	.quad	0x3fe9e1cffeb074a7              # double 0.80881499999999995
	.quad	0x3fef5e1e2de87097              # double 0.98023899999999997
	.quad	0x3fe08d5629d8409e              # double 0.51725299999999996
	.quad	0x3fd354d61b2a27f2              # double 0.30205300000000002
	.quad	0x3feb76cefed63455              # double 0.85825300000000004
	.quad	0x3fec00064a9cdc44              # double 0.87500299999999997
	.quad	0x3fe6ed655e28aa43              # double 0.71647899999999998
	.quad	0x3fdf8df37329c348              # double 0.49303900000000001
	.quad	0x3fe57a17f4128bf4              # double 0.67115400000000003
	.quad	0x3fd2d3a604e1e710              # double 0.29416799999999999
	.quad	0x3fd23c105186db51              # double 0.284916
	.quad	0x3fbbdcad14a0a0f5              # double 0.108836
	.quad	0x3fd5ba1b1960fa16              # double 0.33948400000000001
	.quad	0x3fde343fa2ad3e92              # double 0.471939
	.quad	0x3fe1cbddb9841aac              # double 0.55613599999999996
	.quad	0x3fcd12ba16e7a312              # double 0.227134
	.quad	0x3fe17a15db3397dd              # double 0.546153
	.quad	0x3fe333fc86cebbba              # double 0.60009599999999996
	.quad	0x3fe2628aa433508f              # double 0.57452899999999996
	.quad	0x3fd2d76ee73e681b              # double 0.29439900000000002
	.quad	0x3fda7b352a843809              # double 0.41377000000000003
	.quad	0x3fef8cdea033e78e              # double 0.98594599999999999
	.quad	0x3fe1b16c1e364bec              # double 0.55290799999999996
	.quad	0x3fce7418d6909aed              # double 0.23791799999999999
	.quad	0x3fbc3968d759ee89              # double 0.110251
	.quad	0x3fd77c3d68405b3a              # double 0.36695800000000001
	.quad	0x3fcca51e321a2e7f              # double 0.22378899999999999
	.quad	0x3fd4a979e16d6dc2              # double 0.32284400000000002
	.quad	0x3fe8d25892684cf0              # double 0.77567699999999995
	.quad	0x3fc2ca4f440af1cc              # double 0.14679900000000001
	.quad	0x3fd3e8ab4fa48302              # double 0.31107600000000002
	.quad	0x3fef46e6d9be4cd7              # double 0.97740499999999996
	.quad	0x3fc0dec1c1d6cf85              # double 0.131798
	.quad	0x3fdcea4ebdd334c6              # double 0.45180100000000001
	.quad	0x3feaf9c842fa5094              # double 0.84299100000000004
	.quad	0x3fe213986338b47c              # double 0.56489199999999995
	.quad	0x3feff0b6b6e0d23d              # double 0.99813399999999996
	.quad	0x3fc82d7b634dad32              # double 0.188888
	.quad	0x3fbe06b7aa25d8d8              # double 0.11729000000000001
	.quad	0x3fe36748e4755ffe              # double 0.60635799999999995
	.quad	0x3f688d2a1f8e3ac1              # double 0.0029970000000000001
	.quad	0x3fe908d2a1f8e3ac              # double 0.78232699999999999
	.quad	0x3fe27635e74299d9              # double 0.57693000000000005
	.quad	0x3fe6a962cfd8f0c7              # double 0.70817699999999995
	.quad	0x3fdfe6c093d96638              # double 0.49845899999999999
	.quad	0x3fe217481b21c476              # double 0.56534200000000001
	.quad	0x3fe2be1650a45d42              # double 0.585704
	.quad	0x3febe13b18dac259              # double 0.87124400000000002
	.quad	0x3fc400b88ca3e7d1              # double 0.15627199999999999
	.quad	0x3fda0b0af5fd47bf              # double 0.40692400000000001
	.quad	0x3fc746bacf7446fa              # double 0.18184600000000001
	.quad	0x3fee2c4b4d056c51              # double 0.94290700000000005
	.quad	0x3fe73cfd4bf0995b              # double 0.72619500000000003
	.quad	0x3fe400fdc1615ec0              # double 0.62512100000000004
	.quad	0x3fde7a743a647fdc              # double 0.47622399999999998
	.quad	0x3fe63530ced4e4c9              # double 0.69399299999999997
	.quad	0x3fe0fb65668c2614              # double 0.53068800000000005
	.quad	0x3fc28027d88c1db0              # double 0.144536
	.quad	0x3fd1cb10342aa9f8              # double 0.27801900000000002
	.quad	0x3fd0ad5bee3d5fdd              # double 0.26058100000000001
	.quad	0x3fc6b94d94078961              # double 0.17752999999999999
	.quad	0x3fd08f7121ab4b73              # double 0.25875500000000001
	.quad	0x3fc759ab6d00b45b              # double 0.182424
	.quad	0x3fefaa12f901083e              # double 0.98951100000000003
	.quad	0x3fa6b8d823422468              # double 0.044379000000000002
	.quad	0x3fe1c96249a133c2              # double 0.55583300000000002
	.quad	0x3fef69531550ca1d              # double 0.981607
	.quad	0x3fc5854046412cf1              # double 0.168129
	.quad	0x3feb27bf61aa3f03              # double 0.84860199999999997
	.quad	0x3fea422467be553b              # double 0.82057400000000003
	.quad	0x3fe5591ab8e8ea3a              # double 0.66712700000000003
	.quad	0x3fd5aa60913a4f87              # double 0.33852399999999999
	.quad	0x3fe13851eb851eb8              # double 0.53812499999999996
	.quad	0x3fb3c47e49b1fab9              # double 0.077216999999999994
	.quad	0x3fcd0068db8bac71              # double 0.226575
	.quad	0x3feeaf31b152f3c3              # double 0.95888600000000001
	.quad	0x3fcd6744b2b777d1              # double 0.229714
	.quad	0x3fe819d66adb402d              # double 0.75315399999999999
	.quad	0x3fe271de69ad42c4              # double 0.57640000000000002
	.quad	0x3fb0b242070b8cfc              # double 0.06522
	.quad	0x3fd0991ff7164c73              # double 0.25934600000000002
	.quad	0x3fea7255f3519bd4              # double 0.82645699999999999
	.quad	0x3fe1205ff1d81f10              # double 0.53520199999999996
	.quad	0x3fdaa6698bb4d489              # double 0.41640700000000003
	.quad	0x3feeb6672fba01ef              # double 0.959766
	.quad	0x3fedf6c8b4395810              # double 0.93637499999999996
	.quad	0x3fe79016ce789e77              # double 0.73633899999999997
	.quad	0x3fd1dfefbf401c50              # double 0.27929300000000001
	.quad	0x3feabfc86cebbba5              # double 0.83591099999999996
	.quad	0x3fe46b18116ebd4d              # double 0.638073
	.quad	0x3fdb4a0e410b630b              # double 0.42639500000000002
	.quad	0x3fe2d8b60f1b25f6              # double 0.58895399999999998
	.quad	0x3fdf36933a0407cc              # double 0.48770599999999997
	.quad	0x3fe9b0b9dc2f405f              # double 0.80282299999999995
	.quad	0x3fe1daf8df7a4e7b              # double 0.55798000000000003
	.quad	0x3fe07f7596851223              # double 0.51555899999999999
	.quad	0x3fd9ad538ac18f82              # double 0.40120400000000001
	.quad	0x3fa572de43ed959a              # double 0.041891999999999999
	.quad	0x3fe111600f34506a              # double 0.53337100000000004
	.quad	0x3fe75755bccaf70a              # double 0.72941100000000003
	.quad	0x3fd1de76427c7c52              # double 0.27920299999999998
	.quad	0x3fefaa7ded6ba8c6              # double 0.98956200000000005
	.quad	0x3fe42e2328f9f44d              # double 0.63063199999999997
	.quad	0x3fd5fa69be09bb6b              # double 0.34340900000000002
	.quad	0x3fe8667d77fae361              # double 0.76251100000000005
	.quad	0x3fb7d34df04ddb55              # double 0.093067999999999998
	.quad	0x3fdb784a9478c869              # double 0.42921700000000002
	.quad	0x3fe268b19a415f46              # double 0.57528000000000001
	.quad	0x3fe26030c23fab11              # double 0.57424200000000003
	.quad	0x3fed01626b2f2303              # double 0.90641899999999997
	.quad	0x3fba3ef284167a96              # double 0.102523
	.quad	0x3fd9899bf5946c33              # double 0.39902399999999999
	.quad	0x3fdedf0d413122b8              # double 0.48236400000000001
	.quad	0x3fdf8de6ddf00abf              # double 0.49303599999999997
	.quad	0x3fb1549731098d47              # double 0.067696999999999993
	.quad	0x3fec39abf3387161              # double 0.88204000000000005
	.quad	0x3fde1e1d2178f68c              # double 0.47058800000000001
	.quad	0x3fe9cd31769a9110              # double 0.80629799999999996
	.quad	0x3fc74801f75104d5              # double 0.18188499999999999
	.quad	0x3fda9e3c968943e1              # double 0.415908
	.quad	0x3fa8a5accd53048a              # double 0.048139000000000001
	.quad	0x3fde81450efdc9c5              # double 0.47664000000000001
	.quad	0x3fee9331a08bfc22              # double 0.95546799999999998
	.quad	0x3fd72d77318fc505              # double 0.36215000000000003
	.quad	0x3fe63291b823c85c              # double 0.69367299999999998
	.quad	0x3fef4195cc857f30              # double 0.97675599999999996
	.quad	0x3fd7b10ba6266fd6              # double 0.37018099999999998
	.quad	0x3fc76cb5350092cd              # double 0.183005
	.quad	0x3fe4dd744f5d3565              # double 0.65203299999999997
	.quad	0x3fd66a055757d5aa              # double 0.350221
	.quad	0x3fc17a56de33269e              # double 0.136546
	.quad	0x3fd79a8049667b5f              # double 0.36880499999999999
	.quad	0x3fd29eb6390c9108              # double 0.290937
	.quad	0x3fe1f24d8fd5cb79              # double 0.56082799999999999
	.quad	0x3fa0943e10060781              # double 0.032381
	.quad	0x3fb84f4c6e6d9be5              # double 0.094960000000000003
	.quad	0x3fd5f540895d0b74              # double 0.34309400000000001
	.quad	0x3fdb5753a3ec02f3              # double 0.427205
	.quad	0x3fef18fa376922d9              # double 0.97179899999999996
	.quad	0x3fcba0e8427418d7              # double 0.21584800000000001
	.quad	0x3fc82795703f2d3c              # double 0.18870799999999999
	.quad	0x3fd9aa64c2f837b5              # double 0.40102500000000002
	.quad	0x3fdb33ce63a5c1c6              # double 0.425037
	.quad	0x3fe95e6149c6f36f              # double 0.792771
	.quad	0x3fe1a38759253544              # double 0.55121200000000004
	.quad	0x3fe5d64302b40f67              # double 0.68240500000000004
	.quad	0x3fea0bc9cd3e0bd4              # double 0.81393899999999996
	.quad	0x3fea16d8f4f93bc1              # double 0.81528900000000004
	.quad	0x3fe561cffeb074a7              # double 0.66818999999999995
	.quad	0x3feeaeb3dd11be6e              # double 0.95882599999999996
	.quad	0x3fe0a964e8b7e4de              # double 0.52067799999999997
	.quad	0x3fd30f49491f2dc3              # double 0.29780800000000002
	.quad	0x3fe5320535c9e668              # double 0.66235599999999994
	.quad	0x3f9109070fbeb9e5              # double 0.016636000000000001
	.quad	0x3fd39791819d2392              # double 0.30612600000000001
	.quad	0x3fd678af3e468cac              # double 0.35111599999999998
	.quad	0x3fe82edbb59ddc1e              # double 0.75571999999999995
	.quad	0x3fe687a072d1aeb4              # double 0.70405600000000002
	.quad	0x3fc376f6d7625205              # double 0.15206800000000001
	.quad	0x3fe39103c8e25c81              # double 0.611452
	.quad	0x3fdf723aafff36ac              # double 0.49134699999999998
	.quad	0x3fdf4091c087442c              # double 0.48831599999999997
	.quad	0x3fc194f26aec0725              # double 0.13735800000000001
	.quad	0x3f401f31f46ed246              # double 4.9200000000000003E-4
	.quad	0x3fe0dfbf83382e45              # double 0.52731300000000003
	.quad	0x3fca17fc7607c41a              # double 0.20385700000000001
	.quad	0x3fe455885d31337f              # double 0.63544100000000003
	.quad	0x3fe18eb8950763a2              # double 0.54867200000000005
	.quad	0x3fc1c27631b584b2              # double 0.13874700000000001
	.quad	0x3fded933e35c5b4b              # double 0.48200700000000002
	.quad	0x3fd377b395c42203              # double 0.30418099999999998
	.quad	0x3febf316e3715400              # double 0.87342399999999998
	.quad	0x3fee1f42bb6672fc              # double 0.94131600000000004
	.quad	0x3fe2850df15a4acf              # double 0.57874199999999998
	.quad	0x3fca56eefa1e3eaf              # double 0.20577799999999999
	.quad	0x3fe2993708aac96d              # double 0.58120300000000003
	.quad	0x3fd417d6b65a9a80              # double 0.31395499999999998
	.quad	0x3fd5c8605681ecd5              # double 0.34035500000000002
	.quad	0x3fbc714fce746cb9              # double 0.11110399999999999
	.quad	0x3fceaf78feef5ec8              # double 0.23973
	.quad	0x3fe3f6b1a2a4db16              # double 0.62386399999999997
	.quad	0x3fea2a044ae85b9f              # double 0.81762900000000005
	.quad	0x3fd2957cd466f502              # double 0.29037400000000002
	.quad	0x3fb4cb6c7a7c9de0              # double 0.081228999999999996
	.quad	0x3fdcdfb0d51f81a6              # double 0.45115300000000003
	.quad	0x3fda2f901083dbc2              # double 0.40915299999999999
	.quad	0x3fde51c193b3a68b              # double 0.47373999999999999
	.quad	0x3f9533b107746888              # double 0.020705000000000001
	.quad	0x3fc7f6db940fecdd              # double 0.187221
	.quad	0x3fcf45c78a6dacac              # double 0.24431700000000001
	.quad	0x3fd29b456b441bb9              # double 0.29072700000000001
	.quad	0x3fe5854ac29bf163              # double 0.67252100000000004
	.quad	0x3fcba13c254a3c64              # double 0.21585799999999999
	.quad	0x3feb532e7b3d8e00              # double 0.853904
	.quad	0x3fe5337a80cf9e38              # double 0.66253399999999996
	.quad	0x3fcf0ebaade657b8              # double 0.24263699999999999
	.quad	0x3fe83cf2cf95d4e9              # double 0.75744
	.quad	0x3fe09dd7ecbb7f9d              # double 0.51926799999999995
	.quad	0x3fb83925bb7b6bb1              # double 0.094621999999999998
	.quad	0x3fd6fe5c91d14e3c              # double 0.35927500000000001
	.quad	0x3fc457c0b1359792              # double 0.15892800000000001
	.quad	0x3feea0d77b7c7821              # double 0.95713400000000004
	.quad	0x3fe8a4a6a875d56f              # double 0.77009899999999998
	.quad	0x3feafdbf487fcb92              # double 0.84347499999999997
	.quad	0x3fb9b8dc55000c95              # double 0.100477
	.quad	0x3fa224894c447c31              # double 0.035435000000000001
	.quad	0x3fe2480a5accd530              # double 0.57129399999999997
	.quad	0x3fd9d4cb9ecf6380              # double 0.403613
	.quad	0x3fc4b2745bf26f1e              # double 0.16169600000000001
	.quad	0x3fef1a3b14a90471              # double 0.97195200000000003
	.quad	0x3fe940852b4d8ba4              # double 0.78912599999999999
	.quad	0x3fd2285a921ccd96              # double 0.28371299999999999
	.quad	0x3fd3feb4a66559f7              # double 0.312421
	.quad	0x3fe7aae6c8f75537              # double 0.73961200000000005
	.quad	0x3fdd21858bc59b80              # double 0.45517099999999999
	.quad	0x3fee4a1cef240faa              # double 0.94654700000000003
	.quad	0x3fedcd29131ec0b5              # double 0.93129399999999996
	.quad	0x3fdf670196d8f4f9              # double 0.49066199999999999
	.quad	0x3fece90795f676ea              # double 0.90344599999999997
	.quad	0x3fe222b1704ff434              # double 0.56673499999999999
	.quad	0x3fe5cc0df58c08b7              # double 0.68115899999999996
	.quad	0x3f9ac0c62e4d1a65              # double 0.026126
	.quad	0x3fd3d87724fa8b4c              # double 0.310087
	.quad	0x3fb83914f483cafb              # double 0.094620999999999997
	.quad	0x3fda1f14983d7907              # double 0.40814699999999998
	.quad	0x3fec118a009f6230              # double 0.87714099999999995
	.quad	0x3fd8bdbe3c105187              # double 0.38658100000000001
	.quad	0x3fde2f7f498c3b0c              # double 0.47164899999999998
	.quad	0x3fed7dcbddb9841b              # double 0.92160600000000004
	.quad	0x3febbe78e1932d6f              # double 0.86700100000000002
	.quad	0x3fdb7cbf6e3f78bc              # double 0.42948900000000001
	.quad	0x3fe9a5d4a5df223a              # double 0.80149300000000001
	.quad	0x3fe28b08dd1e53a8              # double 0.57947199999999999
	.quad	0x3fbb20a73f748a16              # double 0.10596700000000001
	.quad	0x3fe2e82d7b634dad              # double 0.59084199999999998
	.quad	0x3fed073bc903ea70              # double 0.90713299999999997
	.quad	0x3fd78433d6c72192              # double 0.36744399999999999
	.quad	0x3faeb97fe8ee6b83              # double 0.060009
	.quad	0x3fe4a33bd9cae211              # double 0.644926
	.quad	0x3fe3fd805e5f30e8              # double 0.624695
	.quad	0x3fe82da76d97b310              # double 0.75557300000000005
	.quad	0x3fe58168b5cbff47              # double 0.67204699999999995
	.quad	0x3fedaaae297396d1              # double 0.92708500000000005
	.quad	0x3fe87de7210be942              # double 0.76536899999999997
	.quad	0x3fc34d594f26aec0              # double 0.15079799999999999
	.quad	0x3fede1049235f80a              # double 0.93371800000000005
	.quad	0x3fecf5ab7dc7abfc              # double 0.90498900000000004
	.quad	0x3fd12a27f1b69121              # double 0.26819799999999999
	.quad	0x3fb769fcf3dc054f              # double 0.091461000000000001
	.quad	0x3feb11947cfa26a2              # double 0.84589599999999998
	.quad	0x3fe17f5e84f09529              # double 0.54679800000000001
	.quad	0x3fddadbc664d3bf3              # double 0.463729
	.quad	0x3fc8f66a55087011              # double 0.19502
	.quad	0x3feaa1c8a7a41e58              # double 0.83224900000000002
	.quad	0x3fd80baa582dbe7f              # double 0.37571199999999999
	.quad	0x3fee6db2f661f18d              # double 0.95089100000000004
	.quad	0x3fdc89b951c5c572              # double 0.44590600000000002
	.quad	0x3feb9f77292c4934              # double 0.86321599999999998
	.quad	0x3fcb40c4156e264e              # double 0.21291399999999999
	.quad	0x3fe633bb83cf2cf9              # double 0.69381499999999996
	.quad	0x3fe508509bf9c62a              # double 0.65726499999999999
	.quad	0x3fd7eb18116ebd4d              # double 0.373724
	.quad	0x3fe3b2aae297396d              # double 0.61556
	.quad	0x3fe7897204295a6c              # double 0.73552799999999996
	.quad	0x3fe23367a0f9096c              # double 0.56877500000000003
	.quad	0x3fe07546d3f9e7b8              # double 0.514316
	.quad	0x3fe7cb3e5753a3ec              # double 0.74356
	.quad	0x3fb84bb1af3a14cf              # double 0.094905000000000003
	.quad	0x3fedf88765ba6efc              # double 0.93658799999999997
	.quad	0x3fd452c9d16fc9bc              # double 0.31755299999999997
	.quad	0x3fec5515054ac29c              # double 0.885386
	.quad	0x3fdf4dd72367e415              # double 0.48912600000000001
	.quad	0x3fed791819d2391d              # double 0.92103199999999996
	.quad	0x3fee951611ba3ca7              # double 0.95569899999999997
	.quad	0x3fdee4712e40852b              # double 0.48269299999999998
	.quad	0x3fed48eabffcdab2              # double 0.91515100000000005
	.quad	0x3fbc42a66dbd72bd              # double 0.110392
	.quad	0x3fd6d6c7219220ff              # double 0.35685899999999998
	.quad	0x3fc1b6672fba01ef              # double 0.138379
	.quad	0x3f823e5b8561d430              # double 0.0089079999999999993
	.quad	0x3fe7d8d5842b734b              # double 0.74521899999999996
	.quad	0x3fc54299d883ba34              # double 0.16609499999999999
	.quad	0x3feae5cd4ed2cbea              # double 0.84055199999999997
	.quad	0x3fcd64cf8d716d2b              # double 0.22963900000000001
	.quad	0x3feb7589efd86a90              # double 0.85809800000000003
	.quad	0x3fdd8194c0160525              # double 0.461034
	.quad	0x3fb1988d2a1f8e3b              # double 0.068734000000000003
	.quad	0x3fe46f694467381d              # double 0.63859999999999995
	.quad	0x3fef30dd82fd75e2              # double 0.974715
	.quad	0x3fd895c853c14834              # double 0.38414199999999998
	.quad	0x3fdcb0fadf2ecf20              # double 0.44830199999999998
	.quad	0x3f7be6e653868fd2              # double 0.0068120000000000003
	.quad	0x3fdce5d18090b418              # double 0.45152700000000001
	.quad	0x3fc58665e02ea961              # double 0.16816400000000001
	.quad	0x3fe009a88ace24bc              # double 0.50117900000000004
	.quad	0x3fdb7fd3f5b5fa22              # double 0.42967699999999998
	.quad	0x3fdd7ac3eb7cbb3d              # double 0.46061800000000003
	.quad	0x3fbba797891e2153              # double 0.108026
	.quad	0x3fdbb25b317efe0d              # double 0.43276100000000001
	.quad	0x3fc559578a2a90cd              # double 0.16678899999999999
	.quad	0x3fe23804534bd76f              # double 0.56933800000000001
	.quad	0x3fd7e8c8abd5dc40              # double 0.373583
	.quad	0x3fc2a00192a73711              # double 0.145508
	.quad	0x3fe986db50f40e5a              # double 0.79771199999999998
	.quad	0x3fecfce95faa8a83              # double 0.90587300000000004
	.quad	0x3fd8f0d844d013a9              # double 0.38969999999999999
	.quad	0x3fea0a2ec28b2a6b              # double 0.81374299999999999
	.quad	0x3fcfa8826aa8eb46              # double 0.24732999999999999
	.quad	0x3fed1ffd60e94ee4              # double 0.91015500000000004
	.quad	0x3fe666299524bfd3              # double 0.69997100000000001
	.quad	0x3fe02d362e903644              # double 0.50551900000000005
	.quad	0x3fe5675147f13059              # double 0.66886199999999996
	.quad	0x3fd793682730c671              # double 0.36837199999999998
	.quad	0x3fcdf0d413122b7c              # double 0.23391200000000001
	.quad	0x3fe7c22036006d0d              # double 0.74244699999999997
	.quad	0x3fe5b3fe9fadafd1              # double 0.67822199999999999
	.quad	0x3fd81bc126a65cf6              # double 0.37669399999999997
	.quad	0x3fd055714b9cb685              # double 0.25521500000000003
	.quad	0x3fe09aa60913a4f8              # double 0.51887799999999995
	.quad	0x3fd5d5ae1cde5d18              # double 0.341167
	.quad	0x3feefb2edfe75bc4              # double 0.96816199999999996
	.quad	0x3fe956bca5375c8e              # double 0.79183800000000004
	.quad	0x3fec0d9d7774aba4              # double 0.87666200000000005
	.quad	0x3fec8a47ecfe9b7c              # double 0.89188
	.quad	0x3fe4cb3c3e74afd5              # double 0.64980899999999997
	.quad	0x3fa8c64fdb09a672              # double 0.048388
	.quad	0x3f5897a67a52ac75              # double 0.0015009999999999999
	.quad	0x3fd9c2ce4649906d              # double 0.40251500000000001
	.quad	0x3fd1d523b3636f3b              # double 0.27863399999999999
	.quad	0x3fed10ff97247454              # double 0.90832500000000004
	.quad	0x3f9321e603d57796              # double 0.018683999999999999
	.quad	0x3fe5f0fe047d3d43              # double 0.68566800000000006
	.quad	0x3f917fc7607c419a              # double 0.017089
	.quad	0x3faa645e4e69f05f              # double 0.051547000000000003
	.quad	0x3fe7c73cd573647c              # double 0.74307100000000004
	.quad	0x3fde709fa54c5543              # double 0.47562399999999999
	.quad	0x3fe72b777d0f1f58              # double 0.72405600000000003
	.quad	0x3f5733226c3b927d              # double 0.0014159999999999999
	.quad	0x3fd756eac8605682              # double 0.36468
	.quad	0x3fc02ce4649906cd              # double 0.12637000000000001
	.quad	0x3fd07021d10b1fef              # double 0.25684400000000002
	.quad	0x3fe78389f83be660              # double 0.73480699999999998
	.quad	0x3fe55002e2328f9f              # double 0.66601699999999997
	.quad	0x3fe20c0053e2d624              # double 0.56396500000000005
	.quad	0x3fe35cb790fb6567              # double 0.60506800000000005
	.quad	0x3fdbf53c579f2346              # double 0.43684299999999998
	.quad	0x3fe78d844d013a93              # double 0.73602500000000004
	.quad	0x3fa2cecc814d727a              # double 0.036734000000000003
	.quad	0x3fa5b3bfb58d1527              # double 0.042387000000000001
	.quad	0x3fdb2220bc382a13              # double 0.423958
	.quad	0x3fd91b4fe79ee02a              # double 0.39229199999999997
	.quad	0x3fe05b9a5a89b952              # double 0.51118200000000003
	.quad	0x3fea3bb62413db7f              # double 0.81978899999999999
	.quad	0x3feaa0ad8a11665a              # double 0.83211400000000002
	.quad	0x3fe307f23cc8de2b              # double 0.59472000000000003
	.quad	0x3fd2dc011d3671ac              # double 0.294678
	.quad	0x3fe174dbdf8f4730              # double 0.54551499999999997
	.quad	0x3fd8fb65668c2614              # double 0.39034400000000002
	.quad	0x3fe32e8c0485a0be              # double 0.59943199999999996
	.quad	0x3fe2d5714b9cb685              # double 0.58855500000000005
	.quad	0x3fe36ef8055fbb51              # double 0.60729599999999995
	.quad	0x3fb5c74751ce28ed              # double 0.085071999999999995
	.quad	0x3fd3c03361565c2d              # double 0.30860599999999999
	.quad	0x3fe8ba9b06812381              # double 0.77277899999999999
	.quad	0x3fdeeb91b3f20a74              # double 0.483128
	.quad	0x3fe89b691212513b              # double 0.76897099999999996
	.quad	0x3fd8d441355475a3              # double 0.38795499999999999
	.quad	0x3fd623f24d8fd5cb              # double 0.34594399999999997
	.quad	0x3fd68f3a9b068124              # double 0.35249200000000003
	.quad	0x3fe254b2745bf26f              # double 0.57283899999999999
	.quad	0x3fefa46bf01322f2              # double 0.98882099999999995
	.quad	0x3fe9708ede54b48d              # double 0.79498999999999997
	.quad	0x3fbb8a4c1ebc83a9              # double 0.10757899999999999
	.quad	0x3fe9a29845dc8323              # double 0.80109799999999998
	.quad	0x3f6461b6d43d0397              # double 0.0024880000000000002
	.quad	0x3fea030c23fab10c              # double 0.81287200000000003
	.quad	0x3fe40e219652bd3c              # double 0.62672499999999998
	.quad	0x3feab682730c6717              # double 0.83477900000000005
	.quad	0x3fef997a24894c44              # double 0.98748499999999994
	.quad	0x3fd4a2fcefaa4767              # double 0.32244800000000001
	.quad	0x3fdd8cdea033e78e              # double 0.46172299999999999
	.quad	0x3fee23a29c779a6b              # double 0.94184999999999997
	.quad	0x3fe3d4d834091c08              # double 0.61973199999999995
	.quad	0x3fd5606fac6045bb              # double 0.334011
	.quad	0x3fda01754b05b7d0              # double 0.40633900000000001
	.quad	0x3fee5d7ecbb7f9d7              # double 0.94891300000000001
	.quad	0x3fe28d0678c0053e              # double 0.57971499999999998
	.quad	0x3fe9e7ab7564302b              # double 0.80952999999999997
	.quad	0x3fcf892684cf073a              # double 0.24637300000000001
	.quad	0x3fed506dd69d3027              # double 0.91606799999999999
	.quad	0x3fbba398201cd5fa              # double 0.10796500000000001
	.quad	0x3fe4771c970f7b9e              # double 0.63954
	.quad	0x3fdc0ec311622813              # double 0.43840099999999999
	.quad	0x3fc4b945308bb906              # double 0.16190399999999999
	.quad	0x3fe7d65c2d278078              # double 0.74491700000000005
	.quad	0x3fe20d79d0a67621              # double 0.56414500000000001
	.quad	0x3fd4a4db163baba8              # double 0.32256200000000002
	.quad	0x3fdf3ffef39085f5              # double 0.48828100000000002
	.quad	0x3fd463e4abe6a338              # double 0.31859700000000002
	.quad	0x3fc14395810624dd              # double 0.13487499999999999
	.quad	0x3fd07a072d1aeb3e              # double 0.25744800000000001
	.quad	0x3feb76f2a5a469d7              # double 0.85826999999999998
	.quad	0x3fc3e2a3cea6c1a0              # double 0.15535399999999999
	.quad	0x3fc1219220ff5409              # double 0.13383700000000001
	.quad	0x3fe165625a682b63              # double 0.54362600000000005
	.quad	0x3fbd2b1b36bd2b6f              # double 0.113939
	.quad	0x3feadcf67b1c0011              # double 0.83947300000000002
	.quad	0x3feac8d5c74751ce              # double 0.83701599999999998
	.quad	0x3fe754ae429e0a42              # double 0.72908700000000004
	.quad	0x3fe2acaff6d33094              # double 0.58357999999999999
	.quad	0x3fa9d3ed527e5215              # double 0.050444999999999997
	.quad	0x3fe6f95d4e8fb00c              # double 0.71794000000000002
	.quad	0x3fde893faf42784b              # double 0.47712700000000002
	.quad	0x3fe6eb65a9a80496              # double 0.71623499999999996
	.quad	0x3fe9821d10b1feeb              # double 0.79713299999999998
	.quad	0x3fec52fa0d77b7c8              # double 0.88512900000000005
	.quad	0x3fd77e77d523b363              # double 0.36709399999999998
	.quad	0x3feacc4ac6cdaf4b              # double 0.83743800000000002
	.quad	0x3fe4f0307f23cc8e              # double 0.65432000000000001
	.quad	0x3fe3d8b1dd5d3dc9              # double 0.62020200000000003
	.quad	0x3fe5269df97aaac1              # double 0.660964
	.quad	0x3f7651b0ccbc05d5              # double 0.0054489999999999999
	.quad	0x3fe6c6e6d9be4cd7              # double 0.71177999999999997
	.quad	0x3fdcce3de6149c6f              # double 0.45008799999999999
	.quad	0x3febd9f0a1be2b49              # double 0.87035399999999996
	.quad	0x3f83a71151611ba4              # double 0.0095960000000000004
	.quad	0x3fc38383ad9f0a1c              # double 0.152451
	.quad	0x3fea5b7ae5796bfd              # double 0.82366700000000004
	.quad	0x3fcd151e75360d02              # double 0.22720699999999999
	.quad	0x3fe19d6f112fd32c              # double 0.55046799999999996
	.quad	0x3fe2ef62f9ca5bd9              # double 0.59172199999999997
	.quad	0x3fe0a515ce9e5e24              # double 0.52015199999999995
	.quad	0x3fec5a78f25a2510              # double 0.88604400000000005
	.quad	0x3fc2b08dd1e53a82              # double 0.146013
	.quad	0x3febcc1ca3a4b557              # double 0.86866600000000005
	.quad	0x3f7971c10d7be985              # double 0.0062119999999999996
	.quad	0x3fe266cb10342aaa              # double 0.575048
	.quad	0x3febe9c4545846e9              # double 0.87228600000000001
	.quad	0x3fee4b790fb65669              # double 0.94671300000000003
	.quad	0x3fd1b7f5a5332ad0              # double 0.27685300000000002
	.quad	0x3fd845a1cac08312              # double 0.37924999999999998
	.quad	0x3fea82d7b634dad3              # double 0.82847199999999999
	.quad	0x3fdf08f217093101              # double 0.48492099999999999
	.quad	0x3fe3346fdeb52c9d              # double 0.60015099999999999
	.quad	0x3fd34806290eed03              # double 0.30127100000000001
	.quad	0x3fee158537e2c55d              # double 0.94012700000000005
	.quad	0x3fedd0fe8ab4fa48              # double 0.93176199999999998
	.quad	0x3fd861ed5ae1cde6              # double 0.38097700000000001
	.quad	0x3fc3f141205bc01a              # double 0.15579999999999999
	.quad	0x3fd057d9dba908a2              # double 0.25536199999999998
	.quad	0x3fda4784230fcf81              # double 0.41061500000000001
	.quad	0x3fb7d523b3636f3b              # double 0.093095999999999998
	.quad	0x3feadf41aef6f8f0              # double 0.83975299999999997
	.quad	0x3fea9958969a0ad9              # double 0.83121900000000004
	.quad	0x3fc17414a4d2b2c0              # double 0.136355
	.quad	0x3fef86290eed02cd              # double 0.98512699999999997
	.quad	0x3fed320fb224aada              # double 0.91236099999999998
	.quad	0x3f9775b813016484              # double 0.02291
	.quad	0x3fe51314445aa2e4              # double 0.65857900000000003
	.quad	0x3feebb05faebc409              # double 0.96033000000000001
	.quad	0x3fbd143bf727136a              # double 0.11359
	.quad	0x3f85347a5b0ff10f              # double 0.010354
	.quad	0x3fe83a16e7a311e8              # double 0.75709099999999996
	.quad	0x3f6856a37ac3eb7d              # double 0.0029710000000000001
	.quad	0x3fc7ff69014b599b              # double 0.18748200000000001
	.quad	0x3fe504d551d68c69              # double 0.65683999999999998
	.quad	0x3fd2975afaf85943              # double 0.29048800000000002
	.quad	0x3fe83e8ff327aa69              # double 0.757637
	.quad	0x3fd7e23f24d8fd5d              # double 0.37318400000000002
	.quad	0x3fe1d16b97fe8ee7              # double 0.55681400000000003
	.quad	0x3fc9fa0945f9df55              # double 0.20294300000000001
	.quad	0x3fd02ee41919ac79              # double 0.25286199999999998
	.quad	0x3fef16030c23fab1              # double 0.97143699999999999
	.quad	0x3fdfd76683c297c0              # double 0.49752200000000002
	.quad	0x3fd10407cc7d1bb5              # double 0.26587100000000002
	.quad	0x3febebb7739f340d              # double 0.87252399999999997
	.quad	0x3fca9fadafd11383              # double 0.20799799999999999
	.quad	0x3fe1eab367a0f909              # double 0.55989999999999995
	.quad	0x3fac91afc04c8bca              # double 0.055799000000000001
	.quad	0x3fdba8cdea033e79              # double 0.43217800000000001
	.quad	0x3fd74406c00da1a9              # double 0.36352699999999999
	.quad	0x3fedc8344c37e6f7              # double 0.93068899999999999
	.quad	0x3fd426a22b3892ef              # double 0.31485800000000003
	.quad	0x3fd7be6a337a80d0              # double 0.37099700000000002
	.quad	0x3fd5f440af1cb89d              # double 0.34303299999999998
	.quad	0x3fe4593e5fb71fbc              # double 0.63589399999999996
	.quad	0x3fe053ed527e5215              # double 0.51024499999999995
	.quad	0x3fef4ea6c1a048e0              # double 0.97835099999999997
	.quad	0x3fe36dacabc51548              # double 0.60713799999999996
	.quad	0x3fd770bd017dae82              # double 0.36625600000000003
	.quad	0x3feb01908e581cf8              # double 0.84394100000000005
	.quad	0x3fd4d330941c8217              # double 0.32539000000000001
	.quad	0x3fcc112ba16e7a31              # double 0.219274
	.quad	0x3fd33a365cb35f3d              # double 0.30042799999999997
	.quad	0x3fe5453b0813cab8              # double 0.66470099999999999
	.quad	0x3fe0f993d5347a5b              # double 0.53046599999999999
	.quad	0x3febaf533f42352f              # double 0.86515200000000003
	.quad	0x3fc331a08bfc2225              # double 0.149952
	.quad	0x3fdc3821af7d30ad              # double 0.44092599999999998
	.quad	0x3fe6228bb0a2ca9b              # double 0.69171700000000003
	.quad	0x3f9c73eee5258927              # double 0.027786000000000002
	.quad	0x3fed4dec1c1d6cf8              # double 0.91576199999999996
	.quad	0x3fd95cfede97d06c              # double 0.39630100000000001
	.quad	0x3fc7b927d45a5fc8              # double 0.185338
	.quad	0x3fcc6b37867f0aa2              # double 0.222022
	.quad	0x3fe32116659d12cb              # double 0.59778900000000001
	.quad	0x3fe5ad2135daad60              # double 0.67738399999999999
	.quad	0x3fa2778140dd3fe2              # double 0.036068000000000003
	.quad	0x3fe9c9be8ff327aa              # double 0.80587699999999995
	.quad	0x3f9398201cd5f99c              # double 0.019134999999999999
	.quad	0x3fb2219652bd3c36              # double 0.070824999999999999
	.quad	0x3fd960913a4f8727              # double 0.39651900000000001
	.quad	0x3fde2e2b8c75c4a8              # double 0.47156799999999999
	.quad	0x3feba0ad8a11665a              # double 0.86336400000000002
	.quad	0x3fed78487b99d452              # double 0.920933
	.quad	0x3fd27079e59f2baa              # double 0.28811500000000001
	.quad	0x3fa18288051c9f73              # double 0.034199
	.quad	0x3feaf00ef1348b22              # double 0.841804
	.quad	0x3fe970ed3d859c8d              # double 0.79503500000000005
	.quad	0x3fc0a033e78e1933              # double 0.129889
	.quad	0x3fe792a0ec743201              # double 0.736649
	.quad	0x3fb596b76709fa55              # double 0.084331000000000003
	.quad	0x3f816872b020c49c              # double 0.0085000000000000006
	.quad	0x3fc3856a37ac3eb8              # double 0.15250900000000001
	.quad	0x3fc802107b784663              # double 0.18756300000000001
	.quad	0x3fea7c0b13597918              # double 0.82764199999999999
	.quad	0x3fe3af5fd47bedb7              # double 0.61515799999999998
	.quad	0x3fea5dfc9ff92f2b              # double 0.82397299999999996
	.quad	0x3fc5933e35c5b4ab              # double 0.16855600000000001
	.quad	0x3fe10f9f44d44567              # double 0.53315699999999999
	.quad	0x3fe10655193708ab              # double 0.53202300000000002
	.quad	0x3fedf01322f27350              # double 0.93555600000000005
	.quad	0x3fe800c521dda05a              # double 0.75009400000000004
	.quad	0x3fdb5b5fa22706d5              # double 0.427452
	.quad	0x3fc80c49ba5e353f              # double 0.18787499999999999
	.quad	0x3fe06fed634549b6              # double 0.51366299999999998
	.quad	0x3fe747496aad1d04              # double 0.72745199999999999
	.quad	0x3fbc62b27cbf6e3f              # double 0.11088099999999999
	.quad	0x3fe82314013ec461              # double 0.75428200000000001
	.quad	0x3f9e108c3f3e0371              # double 0.029360000000000001
	.quad	0x3fe0e052502eec7d              # double 0.52738300000000005
	.quad	0x3fea84f8f8a4c1ec              # double 0.82873200000000002
	.quad	0x3fb662bae03b3e9a              # double 0.087443999999999993
	.quad	0x3fe9f9591cd1c7de              # double 0.81168799999999997
	.quad	0x3fe3cda9003eea21              # double 0.61885500000000004
	.quad	0x3fe1cb295e9e1b09              # double 0.55605000000000004
	.quad	0x3fbb8fffbce4217d              # double 0.107666
	.quad	0x3fd0003eea209aaa              # double 0.25001499999999999
	.quad	0x3fec23a8e71476b0              # double 0.87935300000000005
	.quad	0x3fc1137b07075b3e              # double 0.133407
	.quad	0x3febee2a80064a9d              # double 0.87282300000000002
	.quad	0x3fb33f961804d984              # double 0.075189000000000006
	.quad	0x3fe9fb9170d62bf1              # double 0.81195899999999999
	.quad	0x3fe769ad42c3c9ef              # double 0.73165000000000002
	.quad	0x3fe3974a3400b88d              # double 0.61221800000000004
	.quad	0x3fd16deb95e5aff3              # double 0.27233400000000002
	.quad	0x3fe65b9c7368ad69              # double 0.69868300000000005
	.quad	0x3fe9295c853c1483              # double 0.78629899999999997
	.quad	0x3fdd2862f5989df1              # double 0.45558999999999999
	.quad	0x3fc3183b60285ec4              # double 0.149177
	.quad	0x3fe74827b6fe2e6f              # double 0.72755800000000004
	.quad	0x3fdbf11b60ae9681              # double 0.43659100000000001
	.quad	0x3fd7f9a8cdea033e              # double 0.37461299999999997
	.quad	0x3fbf08aac96cc5fc              # double 0.121226
	.quad	0x3fa02f72b4528284              # double 0.031612000000000001
	.quad	0x3fe0df5275ee99a6              # double 0.52726099999999998
	.quad	0x3fe05b22d0e56042              # double 0.51112500000000005
	.quad	0x3fe2c743201040c0              # double 0.58682400000000001
	.quad	0x3fe90292817763e5              # double 0.78156400000000004
	.quad	0x3fd44898f605ab3b              # double 0.31693100000000002
	.quad	0x3fb2d9ad85dfa872              # double 0.073634000000000005
	.quad	0x3fbe8027d88c1db0              # double 0.119143
	.quad	0x3fe37f972474538f              # double 0.60932500000000001
	.quad	0x3fe3350f40e5a35d              # double 0.60022699999999996
	.quad	0x3fdf0f062d40aaeb              # double 0.485292
	.quad	0x3fd77a99fa11a976              # double 0.36685800000000002
	.quad	0x3fe710abb44e50c6              # double 0.72078500000000001
	.quad	0x3fae2478854cdb7b              # double 0.058872000000000001
	.quad	0x3fcef86a098915be              # double 0.241956
	.quad	0x3fee2ba16e7a311f              # double 0.94282600000000005
	.quad	0x3fe09018e757928e              # double 0.51758999999999999
	.quad	0x3fd325b317efe0ce              # double 0.299176
	.quad	0x3fece7b80a9de8b4              # double 0.90328600000000003
	.quad	0x3fdf556084a515cf              # double 0.48958600000000002
	.quad	0x3fd31a4bdba0a527              # double 0.29848000000000002
	.quad	0x3fd5af709b738e6d              # double 0.338833
	.quad	0x3fce39bcba301217              # double 0.23613700000000001
	.quad	0x3fd86a7264a16a48              # double 0.38149699999999998
	.quad	0x3fe2d43f1c75818c              # double 0.58840899999999996
	.quad	0x3fd8e9185cee17a0              # double 0.38922699999999999
	.quad	0x3fea5c8754f3775c              # double 0.82379500000000005
	.quad	0x3fe8d7e670e2c12b              # double 0.77635500000000002
	.quad	0x3fd46dd69d30270f              # double 0.31920399999999999
	.quad	0x3febc5bf26f1dc51              # double 0.86788900000000002
	.quad	0x3fee007dd4413554              # double 0.93755999999999994
	.quad	0x3fbb27136a400fbb              # double 0.10606500000000001
	.quad	0x3fde4545846e8f2a              # double 0.47297800000000001
	.quad	0x3fe1327674d16335              # double 0.53741000000000005
	.quad	0x3fee23f4666ec9e2              # double 0.94188899999999998
	.quad	0x3fe661f9f01b866e              # double 0.69945999999999997
	.quad	0x3fe8ffa5d28d002e              # double 0.78120699999999998
	.quad	0x3fe5d4003254e6e2              # double 0.68212899999999999
	.quad	0x3fc9f3cf70153bd1              # double 0.20275299999999999
	.quad	0x3fc14573a797891e              # double 0.134932
	.quad	0x3fe92ae6c8f75537              # double 0.78648700000000005
	.quad	0x3fd8d3bf2f555821              # double 0.38792399999999999
	.quad	0x3fdf97460242d05f              # double 0.49360799999999999
	.quad	0x3fe4d3f7ced91687              # double 0.65087499999999998
	.quad	0x3fdb0578e5c4eb57              # double 0.422209
	.quad	0x3fd79513f8db4891              # double 0.36847400000000002
	.quad	0x3fcaf049a9973d9f              # double 0.21045800000000001
	.quad	0x3fbad783dff3f0fe              # double 0.104851
	.quad	0x3fc38adab9f559b4              # double 0.15267500000000001
	.quad	0x3fcf6f9fcb0c026d              # double 0.24559400000000001
	.quad	0x3fd8f4ba51a005c4              # double 0.38993699999999998
	.quad	0x3fe71a3d2d87f887              # double 0.72195299999999996
	.quad	0x3fbb79314445aa2e              # double 0.107318
	.quad	0x3fc2c1fc8f32378b              # double 0.14654500000000001
	.quad	0x3fcbad6451b93038              # double 0.216229
	.quad	0x3fcf25bb7b6bb129              # double 0.243339
	.quad	0x3fe4db22d0e56042              # double 0.65175000000000005
	.quad	0x3fee62d83c6c97d9              # double 0.94956600000000002
	.quad	0x3f8a5ebb7739f341              # double 0.012876
	.quad	0x3fef15b78cc9a77e              # double 0.97140099999999996
	.quad	0x3fd83c36113404ea              # double 0.37867499999999998
	.quad	0x3fc8b2b777d0f1f5              # double 0.19295399999999999
	.quad	0x3fdce13b18dac259              # double 0.45124700000000001
	.quad	0x3feec59d99029ae5              # double 0.961623
	.quad	0x3fe0c3f811f4f50a              # double 0.523922
	.quad	0x3fa00b242070b8d0              # double 0.031335000000000002
	.quad	0x3fe9e1deacc92147              # double 0.80882200000000004
	.quad	0x3fd7dc981beb1811              # double 0.37283899999999998
	.quad	0x3fe8c358afc47e4a              # double 0.77384600000000003
	.quad	0x3fb22f166e008e9b              # double 0.071030999999999997
	.quad	0x3fdf6ec9e236c15d              # double 0.49113699999999999
	.quad	0x3fe9b5fc3b4f6167              # double 0.80346499999999998
	.quad	0x3fceb34e7685985b              # double 0.239847
	.quad	0x3fed5d249e44fa05              # double 0.91761999999999999
	.quad	0x3fa70520d130df9c              # double 0.044961000000000001
	.quad	0x3fd30110a137f38c              # double 0.29693999999999998
	.quad	0x3f92d3c792d1287c              # double 0.018386
	.quad	0x3fd4003254e6e222              # double 0.31251200000000001
	.quad	0x3fe3b866e43aa79c              # double 0.61626000000000003
	.quad	0x3fd946dc5d638866              # double 0.39495000000000002
	.quad	0x3fe252a62aa1943a              # double 0.57258900000000001
	.quad	0x3feb5e225fa658c5              # double 0.85524100000000003
	.quad	0x3fedd6fb8f57f738              # double 0.93249300000000002
	.quad	0x3fe9d36f7e3d1cc1              # double 0.80706
	.quad	0x3fdd210be9424e59              # double 0.45514199999999999
	.quad	0x3feba2a0a958537e              # double 0.86360199999999998
	.quad	0x3fb434091c087443              # double 0.078919000000000003
	.quad	0x3febe1f7d73c9258              # double 0.87133400000000005
	.quad	0x3fec215db3397dd0              # double 0.87907299999999999
	.quad	0x3f8f0fe047d3d428              # double 0.015167
	.quad	0x3fd31f601797cc3a              # double 0.29879
	.quad	0x3f827d45a5fc7e6b              # double 0.0090279999999999995
	.quad	0x3fb4864883fd5022              # double 0.080173999999999995
	.quad	0x3fd231ca7d6733ec              # double 0.28428900000000001
	.quad	0x3fee441bb8c32a8d              # double 0.94581400000000004
	.quad	0x3fe31376d5497311              # double 0.59612600000000004
	.quad	0x3fe206c00da1a933              # double 0.56332400000000005
	.quad	0x3fddd698fe69270b              # double 0.466223
	.quad	0x3febf993d5347a5b              # double 0.87421599999999999
	.quad	0x3fe07f79c842fa51              # double 0.51556100000000005
	.quad	0x3fd895f2452c59fb              # double 0.38415199999999999
	.quad	0x3fc4054690de0935              # double 0.15641099999999999
	.quad	0x3fcffc86cebbba56              # double 0.24989400000000001
	.quad	0x3fe480a5accd5305              # double 0.64070400000000005
	.quad	0x3fc92c9d16fc9bc7              # double 0.19667399999999999
	.quad	0x3fe89731098d477c              # double 0.76845600000000002
	.quad	0x3fca9b413986338b              # double 0.20786299999999999
	.quad	0x3fd226f1dc50ce4f              # double 0.28362700000000002
	.quad	0x3fc95ca6ca03c4b1              # double 0.19814000000000001
	.quad	0x3fd441355475a31a              # double 0.31647999999999998
	.quad	0x3fe9800218def417              # double 0.79687600000000003
	.quad	0x3fe0be553ac4f7ec              # double 0.52323399999999998
	.quad	0x3fec48f75536933a              # double 0.883907
	.quad	0x3fd7b18dac258d58              # double 0.37021199999999999
	.quad	0x3fdf7cdcca70d1fa              # double 0.49199599999999999
	.quad	0x3fc2eefa1e3eaf68              # double 0.14791799999999999
	.quad	0x3fa615011904b3c4              # double 0.043129000000000001
	.quad	0x3fca065b63d3e4ef              # double 0.203319
	.quad	0x3fd28ecd8dbcec85              # double 0.289966
	.quad	0x3fe60a0902de00d2              # double 0.68872500000000003
	.quad	0x3fe24a643cc07aaf              # double 0.57158100000000001
	.quad	0x3fe58d002e2328fa              # double 0.67346200000000001
	.quad	0x3fead432873bc904              # double 0.838403
	.quad	0x3f519ce075f6fd22              # double 0.001075
	.quad	0x3fdf75d13d74d595              # double 0.491566
	.quad	0x3feb1743e963dc48              # double 0.84658999999999995
	.quad	0x3fe521a500d5e8d5              # double 0.66035699999999997
	.quad	0x3fe0e01de2691644              # double 0.52735799999999999
	.quad	0x3fe86e47dc37a3db              # double 0.76346199999999997
	.quad	0x3fb8e160d887ebf2              # double 0.097188999999999997
	.quad	0x3fe65f45e0b4e11e              # double 0.69913000000000003
	.quad	0x3fe05657fb69984a              # double 0.51053999999999999
	.quad	0x3fda69552e2fbe34              # double 0.41267900000000002
	.quad	0x3fe064217d2849cb              # double 0.51222299999999998
	.quad	0x3fde56473471f794              # double 0.47401599999999999
	.quad	0x3fd41dd1a21ea359              # double 0.31431999999999999
	.quad	0x3fe32f6a50d6b229              # double 0.59953800000000002
	.quad	0x3fe226b723ee1bd2              # double 0.56722600000000001
	.quad	0x3fe068c692f6e829              # double 0.51278999999999997
	.quad	0x3fe1c11c2a023209              # double 0.55482299999999996
	.quad	0x3fa06d0d49949e88              # double 0.032081999999999999
	.quad	0x3fdd57cd466f501a              # double 0.458484
	.quad	0x3fbbf290abb44e51              # double 0.10917
	.quad	0x3feae27e0ef99807              # double 0.84014800000000001
	.quad	0x3fe4f0307f23cc8e              # double 0.65432000000000001
	.quad	0x3fef0f3882278d0d              # double 0.97060800000000002
	.quad	0x3fd2b4e11dbca969              # double 0.29228999999999999
	.quad	0x3fee033a4723ab00              # double 0.93789400000000001
	.quad	0x3fbca9ef5232d2bb              # double 0.111968
	.quad	0x3fde1e96c3fc43b3              # double 0.47061700000000001
	.quad	0x3fed6757928e0c9e              # double 0.91886500000000004
	.quad	0x3fe96a2f48c2e771              # double 0.79421200000000003
	.quad	0x3fe784af922962d0              # double 0.73494700000000002
	.quad	0x3fe443d89ce4a7b5              # double 0.63328200000000001
	.quad	0x3fcdbc558644523f              # double 0.23230999999999999
	.quad	0x3fe4109d0635a427              # double 0.62702800000000003
	.quad	0x3feef2b884406c01              # double 0.96712900000000001
	.quad	0x3fe1dd377e1b8ed2              # double 0.55825400000000003
	.quad	0x3fc9f8e3ac0c62e5              # double 0.20290800000000001
	.quad	0x3feb838c111ada77              # double 0.85980800000000002
	.quad	0x3fd1af42784a9479              # double 0.27632200000000001
	.quad	0x3fe68edc3bd59924              # double 0.70493899999999998
	.quad	0x3fef7444e0daa0cb              # double 0.98294300000000001
	.quad	0x3fe174be835dedf2              # double 0.54550100000000001
	.quad	0x3fc627e0ef99806f              # double 0.173092
	.quad	0x3fd336694898f606              # double 0.30019600000000002
	.quad	0x3fe9afcac8e68e3f              # double 0.80270900000000001
	.quad	0x3f9b0c4588a04d12              # double 0.026414
	.quad	0x3fee6414e7ee9143              # double 0.94971700000000003
	.quad	0x3fed1d2e0e30446b              # double 0.90981199999999995
	.quad	0x3fc61049235f8099              # double 0.172372
	.quad	0x3fdbecf63800218e              # double 0.436338
	.quad	0x3fdd96bb98c7e282              # double 0.46232499999999999
	.quad	0x3fc3b5b70691ea79              # double 0.15398300000000001
	.quad	0x3feb2c2df0d41312              # double 0.84914299999999998
	.quad	0x3fe4839abf338716              # double 0.641065
	.quad	0x3fd84de7ea5f84cb              # double 0.37975500000000001
	.quad	0x3fd2673c4f3ba776              # double 0.287551
	.quad	0x3fe0810c6f7a0b5f              # double 0.51575300000000002
	.quad	0x3fd1947cfa26a22b              # double 0.27468799999999999
	.quad	0x3feefeed45e9185d              # double 0.968619
	.quad	0x3fe5e67b5f1bef4a              # double 0.68438500000000002
	.quad	0x3fe05c5f7c6759ab              # double 0.51127599999999995
	.quad	0x3fdebb55ac03ff69              # double 0.480184
	.quad	0x3fdd40d0aaa7ded7              # double 0.45708100000000002
	.quad	0x3fc2b3461309c800              # double 0.146096
	.quad	0x3fd9ecf63800218e              # double 0.405088
	.quad	0x3fe80f10a99b6f5d              # double 0.75183900000000004
	.quad	0x3fda7caea747d806              # double 0.41386000000000001
	.quad	0x3fc53300de4c5111              # double 0.16561899999999999
	.quad	0x3fc5cfc3f811f4f5              # double 0.170403
	.quad	0x3fe067dbb16c1e36              # double 0.51267799999999997
	.quad	0x3fb0afd5454152b1              # double 0.065183000000000005
	.quad	0x3f810e453d20f2bf              # double 0.0083280000000000003
	.quad	0x3fdd9dfdac68a937              # double 0.46276800000000001
	.quad	0x3fda64c2f837b4a2              # double 0.41239999999999999
	.quad	0x3fe14784230fcf81              # double 0.53998000000000002
	.quad	0x3fd78dac258d5843              # double 0.36802200000000002
	.quad	0x3fe8cd594f26aec0              # double 0.77506699999999995
	.quad	0x3fba0b2c83ec892b              # double 0.101733
	.quad	0x3fa6338b47c73eee              # double 0.043361999999999998
	.quad	0x3f70b630a91537a0              # double 0.0040800000000000003
	.quad	0x3fc1449129888f86              # double 0.134905
	.quad	0x3f7ce39b456b441c              # double 0.0070530000000000002
	.quad	0x3fe11dc93ea2d2fe              # double 0.53488599999999997
	.quad	0x3fe6f9207d4e0978              # double 0.71791099999999997
	.quad	0x3feadb2d4d4024b3              # double 0.83925499999999997
	.quad	0x3fe52afbc1acde1a              # double 0.661497
	.quad	0x3fe98c75c4a83b1d              # double 0.79839599999999999
	.quad	0x3fd57e49b1fab96f              # double 0.33583299999999999
	.quad	0x3feb4fede97d06bc              # double 0.85350700000000001
	.quad	0x3fe3bae89eba6aca              # double 0.61656599999999995
	.quad	0x3fb48e79aae6c8f7              # double 0.080298999999999995
	.quad	0x3fe64d6c2efd438d              # double 0.69695099999999999
	.quad	0x3fef7c8b0079a283              # double 0.98395299999999996
	.quad	0x3fea99ae924f227d              # double 0.83126
	.quad	0x3fc9674d1633482c              # double 0.198465
	.quad	0x3fd89e518f3eccc4              # double 0.38466299999999998
	.quad	0x3fba0fb224aada34              # double 0.101802
	.quad	0x3fadfb71fbc5de9c              # double 0.058559
	.quad	0x3fe0b8d823422468              # double 0.52256400000000003
	.quad	0x3fb731b152f3c2db              # double 0.090602000000000002
	.quad	0x3fe991d9b1b79d91              # double 0.79905400000000004
	.quad	0x3faec7c957cd466f              # double 0.060117999999999998
	.quad	0x3fa5e02ea960b6fa              # double 0.042726
	.quad	0x3fd21d19157abb88              # double 0.283026
	.quad	0x3feb2d7d7c2ca149              # double 0.84930300000000003
	.quad	0x3fe5a8fe260b2c84              # double 0.67687900000000001
	.quad	0x3fde15d701d9f4d3              # double 0.47008299999999997
	.quad	0x3fe5103c8e25c811              # double 0.65823200000000004
	.quad	0x3fea675579af1887              # double 0.82511400000000001
	.quad	0x3fe9102bc72e275b              # double 0.78322400000000003
	.quad	0x3fd838e6d15ad107              # double 0.378473
	.quad	0x3fc9f2cb641700ce              # double 0.20272200000000001
	.quad	0x3fe8a21426fe718b              # double 0.76978500000000005
	.quad	0x3fb6466b1e5c0b9a              # double 0.087012000000000006
	.quad	0x3fe2e2e6ea854478              # double 0.590198
	.quad	0x3fe922a6f3f52fc2              # double 0.78547999999999996
	.quad	0x3fc32189bd8383ae              # double 0.14946100000000001
	.quad	0x3fedddfa871a3b15              # double 0.93334700000000004
	.quad	0x3fb1e55c0fcb4f1e              # double 0.069905999999999996
	.quad	0x3feac88a47ecfe9b              # double 0.83697999999999995
	.quad	0x3fe7441fea8112ba              # double 0.72706599999999999
	.quad	0x3fe0aa64c2f837b5              # double 0.52080000000000004
	.quad	0x3fd1ec0724b76f6d              # double 0.28003099999999997
	.quad	0x3fece1932d6ece14              # double 0.902536
	.quad	0x3fd061522a6f3f53              # double 0.25594
	.quad	0x3fdae553ac4f7ec3              # double 0.42024699999999998
	.quad	0x3fc9315d701d9f4d              # double 0.19681899999999999
	.quad	0x3fe59eba6aca7935              # double 0.67562599999999995
	.quad	0x3fdc3c70c996b767              # double 0.441189
	.quad	0x3fcbaa4fca42aed1              # double 0.21613499999999999
	.quad	0x3fee697aeddce7cd              # double 0.950376
	.quad	0x3feb4dd0d8cb07d1              # double 0.85324900000000004
	.quad	0x3fe2982ecaeea63b              # double 0.58107699999999995
	.quad	0x3fed3059641f6449              # double 0.91215199999999996
	.quad	0x3fe883a109d0635a              # double 0.76606799999999997
	.quad	0x3fd823ee1bd1ed9e              # double 0.377193
	.quad	0x3fef24a6a875d56f              # double 0.97322399999999997
	.quad	0x3fb5f340d4dc65c7              # double 0.085743
	.quad	0x3fd3d9988d2a1f8e              # double 0.31015599999999999
	.quad	0x3fbd4ea077036c9c              # double 0.114481
	.quad	0x3fe48472c0e7bc3c              # double 0.64116799999999996
	.quad	0x3fe65e5aff2a172b              # double 0.69901800000000003
	.quad	0x3fbc0229a5ebb774              # double 0.10940800000000001
	.quad	0x3fb8dd1e53a81dc1              # double 0.097124000000000002
	.quad	0x3fc14d50ebaade65              # double 0.13517199999999999
	.quad	0x3fd16cb966be7afa              # double 0.27226099999999998
	.quad	0x3fe70096feb4a665              # double 0.71882199999999996
	.quad	0x3f94ae85b9e8c47a              # double 0.020197
	.quad	0x3fe510fb65668c26              # double 0.65832299999999999
	.quad	0x3fc68c8259e1f3a5              # double 0.17616299999999999
	.quad	0x3fed50507a6bd6e9              # double 0.91605400000000003
	.quad	0x3fd517f4128bf3bf              # double 0.32958700000000002
	.quad	0x3fe86a897635e743              # double 0.76300500000000004
	.quad	0x3fe8d1697f1f9ad0              # double 0.775563
	.quad	0x3fe4732bdc26dce4              # double 0.63905900000000004
	.quad	0x3fe0a46bf01322f2              # double 0.52007099999999995
	.quad	0x3fd85bbbe878fabe              # double 0.38059900000000002
	.quad	0x3fecde7a743a6480              # double 0.90215800000000002
	.quad	0x3fee954866a11ec9              # double 0.95572299999999999
	.quad	0x3fec2e6a76965f52              # double 0.88066599999999995
	.quad	0x3fd44f97edc7ef17              # double 0.31735799999999997
	.quad	0x3fd8193f6c2699c8              # double 0.37654100000000001
	.quad	0x3fe5bb906466b1e6              # double 0.67914600000000003
	.quad	0x3fe83ff8a8f3a9b0              # double 0.75780899999999995
	.quad	0x3fd1f97aaac1094a              # double 0.28085199999999999
	.quad	0x3fe79a1554fbdad7              # double 0.73755899999999996
	.quad	0x3fe46496ededaec5              # double 0.63727900000000004
	.quad	0x3fe9f97edc7ef178              # double 0.81170600000000004
	.quad	0x3feec901d19157ac              # double 0.96203700000000003
	.quad	0x3fe2f689ca18bd66              # double 0.59259499999999998
	.quad	0x3fe8da5b9628cbd1              # double 0.77665499999999998
	.quad	0x3fe9e02ea960b6fa              # double 0.808616
	.quad	0x3fc74573a797891e              # double 0.181807
	.quad	0x3f92ec6bce8533b1              # double 0.01848
	.quad	0x3fee940357a35504              # double 0.95556799999999997
	.quad	0x3feb95af294dd723              # double 0.86202199999999995
	.quad	0x3fe6831f03d145d8              # double 0.70350599999999996
	.quad	0x3fe62a66dbd72bcb              # double 0.69267599999999996
	.quad	0x3fc2b324851a8694              # double 0.146092
	.quad	0x3fc0768dfbd6a594              # double 0.12861800000000001
	.quad	0x3fed516b97fe8ee7              # double 0.91618900000000003
	.quad	0x3fec19567dbb16c2              # double 0.87809300000000001
	.quad	0x3fe48e453d20f2bf              # double 0.64236700000000002
	.quad	0x3fe2856c508b32cf              # double 0.57878700000000005
	.quad	0x3fdd6d549731098d              # double 0.45979799999999998
	.quad	0x3fd18ef77f27fe4c              # double 0.27435100000000001
	.quad	0x3fdff62f9ca5bd94              # double 0.49940099999999998
	.quad	0x3fccaca793576039              # double 0.224019
	.quad	0x3fdcf54d1e96c3fc              # double 0.45247199999999999
	.quad	0x3fd76034f3fd933e              # double 0.36524699999999999
	.quad	0x3fbd30489d27c393              # double 0.11401799999999999
	.quad	0x3fba10be9424e593              # double 0.10181800000000001
	.quad	0x3fe4f48a159817b9              # double 0.65485099999999996
	.quad	0x3fd9ce8d972cd7cf              # double 0.40323199999999998
	.quad	0x3fe9a6defc7a3982              # double 0.80162
	.quad	0x3fca28fe260b2c84              # double 0.204376
	.quad	0x3fdf41e57d9dba91              # double 0.48839700000000003
	.quad	0x3fc672b020c49ba6              # double 0.175375
	.quad	0x3fdd8e4fb97bb731              # double 0.46181100000000003
	.quad	0x3feac148344c37e7              # double 0.836094
	.quad	0x3fe8a3a29c779a6b              # double 0.76997499999999997
	.quad	0x3fd4069a4df47f99              # double 0.31290299999999999
	.quad	0x3fc6773e24febd0a              # double 0.175514
	.quad	0x3fd4b3e1437c5693              # double 0.32347900000000002
	.quad	0x3f82ba9d1f601798              # double 0.0091450000000000003
	.quad	0x3fda65b63d3e4ef0              # double 0.41245799999999999
	.quad	0x3fe905a4f00ef135              # double 0.78193900000000005
	.quad	0x3fd41c36976bc1f0              # double 0.314222
	.quad	0x3fe1c1a47a9e2bd0              # double 0.55488800000000005
	.quad	0x3fd2ee2435696e59              # double 0.29578500000000002
	.quad	0x3fe8243dccea28fe              # double 0.75442399999999998
	.quad	0x3fe66432441fea81              # double 0.69973099999999999
	.quad	0x3fc9595feda66128              # double 0.19803999999999999
	.quad	0x3fc87a5b0ff10ecb              # double 0.19123399999999999
	.quad	0x3feb334e7685985b              # double 0.85001300000000002
	.quad	0x3fea34b72c5197a2              # double 0.81893499999999997
	.quad	0x3fc542784a9478c8              # double 0.16609099999999999
	.quad	0x3fe1c5b078d92fb2              # double 0.55538200000000004
	.quad	0x3fe3ab8a5ce5b424              # double 0.61468999999999996
	.quad	0x3fc8b6523704790c              # double 0.19306400000000001
	.quad	0x3fe6cd1c7de5082d              # double 0.712538
	.quad	0x3fec5742dcf4623d              # double 0.88565199999999999
	.quad	0x3f91d0c804102ff9              # double 0.017398
	.quad	0x3fed538ef34d6a16              # double 0.91644999999999999
	.quad	0x3fedae4b018611fd              # double 0.92752599999999996
	.quad	0x3f7efb6dca07f66f              # double 0.0075640000000000004
	.quad	0x3fe9f3387160956c              # double 0.81093999999999999
	.quad	0x3fe161565c2d2780              # double 0.54313199999999995
	.quad	0x3fc173fb7a5f41af              # double 0.136352
	.quad	0x3f92ce032db1e9f2              # double 0.018363999999999998
	.quad	0x3fe81a36e2eb1c43              # double 0.75319999999999998
	.quad	0x3fba05ccc89b0ee5              # double 0.10165100000000001
	.quad	0x3fe5ed7e889c1b54              # double 0.68524099999999999
	.quad	0x3fe97e9fadafd114              # double 0.79670700000000005
	.quad	0x3fbd22fad6cb5350              # double 0.113815
	.quad	0x3fe475afaf859429              # double 0.63936599999999999
	.quad	0x3fe825c3dee78184              # double 0.75461
	.quad	0x3fee62c55c96030c              # double 0.94955699999999998
	.quad	0x3fef27f1b6912125              # double 0.97362599999999999
	.quad	0x3fa5c6e2a80064aa              # double 0.042533000000000001
	.quad	0x3fb35cf2495e17e3              # double 0.075636999999999996
	.quad	0x3feeaa5a469d7343              # double 0.958295
	.quad	0x3fe7d63cb8173322              # double 0.74490199999999995
	.quad	0x3fd9492ff4ba51a0              # double 0.395092
	.quad	0x3feee1b089a02752              # double 0.96504999999999996
	.quad	0x3fd6d976ff3ade22              # double 0.35702299999999998
	.quad	0x3fe4a9aa1d755bcd              # double 0.64571100000000003
	.quad	0x3fd30e0a84be4042              # double 0.297732
	.quad	0x3fd0394b7b28954a              # double 0.25349699999999997
	.quad	0x3fe17af859429175              # double 0.546261
	.quad	0x3fe10dbcec84f8f9              # double 0.53292700000000004
	.quad	0x3fcf274e22a2c237              # double 0.24338699999999999
	.quad	0x3fede35c5b4aa971              # double 0.93400399999999995
	.quad	0x3fe6c189374bc6a8              # double 0.71112500000000001
	.quad	0x3fec658a32f44913              # double 0.88739500000000004
	.quad	0x3fe792ba16e7a312              # double 0.73666100000000001
	.quad	0x3fd31e7967caea74              # double 0.29873499999999997
	.quad	0x3fd2a4e7ab756430              # double 0.29131499999999999
	.quad	0x3fd673e24febd09e              # double 0.350823
	.quad	0x3fc47607c4199fe4              # double 0.15985199999999999
	.quad	0x3fee822dd7a99fa1              # double 0.95339099999999999
	.quad	0x3fe5d64302b40f67              # double 0.68240500000000004
	.quad	0x3fdfb951c5c5718f              # double 0.49568600000000002
	.quad	0x3fe0628ed5f138bd              # double 0.51203100000000001
	.quad	0x3fdcb4245f5ad96a              # double 0.44849499999999998
	.quad	0x3fcc23bff8a8f3aa              # double 0.21984100000000001
	.quad	0x3fee6978d4fdf3b6              # double 0.95037499999999997
	.quad	0x3fe2ea161e4f7660              # double 0.59107500000000002
	.quad	0x3fee8d349be8ff32              # double 0.95473699999999995
	.quad	0x3fb4bcad9ad85dfb              # double 0.081004000000000007
	.quad	0x3fbeb67c286f8ad2              # double 0.119972
	.quad	0x3feb7db6e503fb37              # double 0.85909599999999997
	.quad	0x3fbc000000000000              # double 0.109375
	.quad	0x3fef30b178b37004              # double 0.97469399999999994
	.quad	0x3fd4144028e4fb98              # double 0.31373600000000001
	.quad	0x3fc455c0fcb4f1e5              # double 0.15886700000000001
	.quad	0x3fe2be29307af20f              # double 0.58571300000000004
	.quad	0x3fedf53e707e175d              # double 0.93618699999999999
	.quad	0x3fee826aa8eb4635              # double 0.95342000000000005
	.quad	0x3fecb95e5aff2a17              # double 0.89762799999999998
	.quad	0x3fe2a250f840181e              # double 0.582314
	.quad	0x3fd85f30e7ff583a              # double 0.38080999999999998
	.quad	0x3fe5814d72799a20              # double 0.67203400000000002
	.quad	0x3fea823c85c24c40              # double 0.82839799999999997
	.quad	0x3fe36c99f1ae2da5              # double 0.60700699999999996
	.quad	0x3fe535cbff47735c              # double 0.66281699999999999
	.quad	0x3fcadb61bb05faec              # double 0.20982000000000001
	.quad	0x3feaeeb4e981387a              # double 0.84163900000000003
	.quad	0x3fef00192a737111              # double 0.96876200000000001
	.quad	0x3fda1e71044f1a1a              # double 0.40810800000000003
	.quad	0x3fe8c445aa2e3c53              # double 0.77395899999999995
	.quad	0x3f914bdfd2630ec3              # double 0.016891
	.quad	0x3fef594d0dcfcc5c              # double 0.97965100000000004
	.quad	0x3fa27e0ef99806f2              # double 0.036117999999999997
	.quad	0x3fc362f166e008ea              # double 0.15145700000000001
	.quad	0x3feb9eecbfb15b57              # double 0.86314999999999997
	.quad	0x3fed1df548ecd8dc              # double 0.90990700000000002
	.quad	0x3fd76c1a048e043a              # double 0.36597299999999999
	.quad	0x3fde7c5260f5e41d              # double 0.47633799999999998
	.quad	0x3fe564c51116a8b9              # double 0.66855100000000001
	.quad	0x3fe2d41743e963dc              # double 0.58838999999999997
	.quad	0x3fd4d4e4c942d491              # double 0.32549400000000001
	.quad	0x3fe1a7f1b6912125              # double 0.55175099999999999
	.quad	0x3feb38887229e908              # double 0.85065100000000005
	.quad	0x3fc7c1ce6c093d96              # double 0.18560199999999999
	.quad	0x3fc58a7610279570              # double 0.16828799999999999
	.quad	0x3fd419652bd3c361              # double 0.31405
	.quad	0x3fecbb2dd377e1b9              # double 0.89784900000000001
	.quad	0x3f95a89b951c5c57              # double 0.021151
	.quad	0x3fd3dbe7f2c3009b              # double 0.31029699999999999
	.quad	0x3fe98e8ea39c51db              # double 0.79865200000000003
	.quad	0x3fed340f66a55087              # double 0.912605
	.quad	0x3fecb860999dcb58              # double 0.89750700000000005
	.quad	0x3fb20956c0d6f545              # double 0.070455000000000004
	.quad	0x3fc059fb1e18efbb              # double 0.127746
	.quad	0x3fe53152f3c2dadc              # double 0.66227100000000005
	.quad	0x3fe48ca3e7d13511              # double 0.64216799999999996
	.quad	0x3fee82ff8ec0f883              # double 0.95349099999999998
	.quad	0x3fdde67d77fae361              # double 0.46719300000000002
	.quad	0x3fdb202539756c94              # double 0.42383700000000002
	.quad	0x3fa5796bfca85cab              # double 0.041942
	.quad	0x3fc797fe8ee6b830              # double 0.18432599999999999
	.quad	0x3fdc085f4a1272c9              # double 0.43801099999999998
	.quad	0x3fe9240314877681              # double 0.78564599999999996
	.quad	0x3fead551d68c692f              # double 0.83853999999999995
	.quad	0x3fdb433508f648c7              # double 0.42597699999999999
	.quad	0x3fe71b0ab2e1693c              # double 0.722051
	.quad	0x3fdda78f25a250f8              # double 0.46335199999999999
	.quad	0x3fe0e00f345069a5              # double 0.52735100000000001
	.quad	0x3fd4f623076c050c              # double 0.32752300000000001
	.quad	0x3fe1c5bd0e12e83a              # double 0.55538799999999999
	.quad	0x3fda979e16d6dc1a              # double 0.41550399999999998
	.quad	0x3fede4b018611fd6              # double 0.93416600000000005
	.quad	0x3fd98a71de69ad43              # double 0.39907500000000001
	.quad	0x3fd7e61cffeb074a              # double 0.37341999999999997
	.quad	0x3fde63a9f383f0bb              # double 0.47483300000000001
	.quad	0x3fdcf0e0a84be404              # double 0.45220199999999999
	.quad	0x3fd75c9a34ca0c28              # double 0.36502699999999999
	.quad	0x3fa67f6f4be835df              # double 0.043941000000000001
	.quad	0x3fd8e9b38d60a633              # double 0.389264
	.quad	0x3fdb9b1b79d909f2              # double 0.431342
	.quad	0x3fec56cf850df15a              # double 0.88559699999999997
	.quad	0x3f6d388a8b08dd1e              # double 0.0035669999999999999
	.quad	0x3fdf762d83c6c97e              # double 0.49158800000000002
	.quad	0x3fd5c404a72ead92              # double 0.34008899999999997
	.quad	0x3fbfe9531550ca1d              # double 0.124654
	.quad	0x3fc3a5ca29845dc8              # double 0.15349699999999999
	.quad	0x3fe108b75ea67e84              # double 0.53231399999999995
	.quad	0x3fe3675147f13059              # double 0.60636199999999996
	.quad	0x3fec70b6b6e0d23d              # double 0.88875899999999997
	.quad	0x3fe7352c9d16fc9c              # double 0.72524100000000002
	.quad	0x3fb78705425f2021              # double 0.091904
	.quad	0x3fe3b879c4113c68              # double 0.61626899999999996
	.quad	0x3feae9707182235b              # double 0.84099599999999997
	.quad	0x3fe59f70de8f6cf0              # double 0.67571300000000001
	.quad	0x3fec84d12018a43c              # double 0.89121300000000003
	.quad	0x3fe86a033e78e193              # double 0.76294099999999998
	.quad	0x3fe45a1016ce789e              # double 0.63599399999999995
	.quad	0x3fcd72367e414e7f              # double 0.230048
	.quad	0x3fde4855da272863              # double 0.473165
	.quad	0x3fefc625e99e94ab              # double 0.99293799999999998
	.quad	0x3fde5b8561d4306e              # double 0.47433599999999998
	.quad	0x3fe96b09635610ae              # double 0.79431600000000002
	.quad	0x3fd163305100a394              # double 0.271679
	.quad	0x3fec2af35e310dbf              # double 0.880243
	.quad	0x3fe2157abb8800eb              # double 0.56512200000000001
	.quad	0x3fe6ab68cef672b9              # double 0.70842400000000005
	.quad	0x3fe2d9f90539fba4              # double 0.58910799999999997
	.quad	0x3fe7ad3415b1422d              # double 0.73989300000000002
	.quad	0x3fe18a8d21bc126a              # double 0.54816299999999996
	.quad	0x3fe3cc61d8622c45              # double 0.618699
	.quad	0x3fd7fb3fa6defc7a              # double 0.37470999999999999
	.quad	0x3fdcbcec84f8f8a5              # double 0.44903100000000001
	.quad	0x3fdf5a8155d5f56a              # double 0.48989899999999997
	.quad	0x3fbe5892684cf074              # double 0.11853900000000001
	.quad	0x3fe83d9ec7000432              # double 0.75752200000000003
	.quad	0x3fedae89eba6aca8              # double 0.92755600000000005
	.quad	0x3feae4ead0c3d252              # double 0.84044399999999997
	.quad	0x3fe16c99f1ae2da5              # double 0.54450699999999996
	.quad	0x3fb589ce4a7b4e55              # double 0.084134
	.quad	0x3fd463f572de43ee              # double 0.31860100000000002
	.quad	0x3fe88f062d40aaeb              # double 0.767459
	.quad	0x3fd8b51bd61f5be6              # double 0.38605400000000001
	.quad	0x3fd65015c209246c              # double 0.348638
	.quad	0x3fe5b22d0e560419              # double 0.67800000000000005
	.quad	0x3fe047021d10b1ff              # double 0.50866800000000001
	.quad	0x3fdafb69984a0e41              # double 0.421595
	.quad	0x3fe3ffd82773e250              # double 0.62498100000000001
	.quad	0x3febc6f9b994e1a4              # double 0.868039
	.quad	0x3fe38ba1f4b1ee24              # double 0.61079499999999998
	.quad	0x3fcb3d8e0008637c              # double 0.21281600000000001
	.quad	0x3fe2ce1a3f4666ed              # double 0.58765900000000004
	.quad	0x3feef2b66b6177ea              # double 0.96712799999999999
	.quad	0x3fe86685db76b3bc              # double 0.76251500000000005
	.quad	0x3fec72ef0ae53650              # double 0.88902999999999999
	.quad	0x3fd6d31337eb28d8              # double 0.35663299999999998
	.quad	0x3fe88d1fa333764f              # double 0.76722699999999999
	.quad	0x3fd9e42e12620254              # double 0.40455200000000002
	.quad	0x3fdc17a02fb5d031              # double 0.438942
	.quad	0x3fadc03361565c2d              # double 0.058106999999999999
	.quad	0x3fddce67d77fae36              # double 0.465723
	.quad	0x3fd04cf0739b024f              # double 0.25469599999999998
	.quad	0x3fcab7a1c25d0742              # double 0.208729
	.quad	0x3fc89ecb31c219eb              # double 0.19234599999999999
	.quad	0x3fe33927d45a5fc8              # double 0.60072700000000001
	.quad	0x3fe0085f4a1272c9              # double 0.50102199999999997
	.quad	0x3fe517edc7ef177a              # double 0.65917099999999995
	.quad	0x3fea313165d39970              # double 0.81850500000000004
	.quad	0x3fea6cf850df15a5              # double 0.82580200000000004
	.quad	0x3fe8b5d462c343b7              # double 0.77219599999999999
	.quad	0x3fe4e3e29307af21              # double 0.65281800000000001
	.quad	0x3fe3c5436b8f9b13              # double 0.61782999999999999
	.quad	0x3f936c9c0a8d21bc              # double 0.018969
	.quad	0x3fec43d03968d75a              # double 0.88327800000000001
	.quad	0x3fbd9a30984e3fff              # double 0.115634
	.quad	0x3fdf0ab2e1693c04              # double 0.48502800000000001
	.quad	0x3fda86a4ca4f440b              # double 0.414468
	.quad	0x3fd264f97edc7ef1              # double 0.28741299999999997
	.quad	0x3fb619008205ff1e              # double 0.086319000000000006
	.quad	0x3fc1974e65bea0ba              # double 0.13743
	.quad	0x3fc3394b7b28954a              # double 0.15018599999999999
	.quad	0x3f865f5275ee99a6              # double 0.010924
	.quad	0x3fd5cb5fe542e558              # double 0.34053800000000001
	.quad	0x3fe1042d8c2a454e              # double 0.53176000000000001
	.quad	0x3fddf37fbefd0071              # double 0.46798699999999999
	.quad	0x3fded32830a0b1bc              # double 0.48163800000000001
	.quad	0x3feb26138fffbce4              # double 0.84839799999999998
	.quad	0x3fe4c2a023209678              # double 0.64875799999999995
	.quad	0x3fe971ed17c5ef63              # double 0.795157
	.quad	0x3fc61932d6ece13f              # double 0.17264399999999999
	.quad	0x3fda97c80841ede1              # double 0.41551399999999999
	.quad	0x3fc8940357a35504              # double 0.19201699999999999
	.quad	0x3fd3fe111276fb09              # double 0.31238199999999999
	.quad	0x3fdc75d9a0f0a5f0              # double 0.444693
	.quad	0x3fe83089a0275254              # double 0.75592499999999995
	.quad	0x3fef3f4a98aa8651              # double 0.97647600000000001
	.quad	0x3fe48e9707182236              # double 0.64240600000000003
	.quad	0x3fee5109070fbeba              # double 0.94739200000000001
	.quad	0x3fe735daad601ffb              # double 0.72532399999999997
	.quad	0x3fe93adc0980b242              # double 0.788435
	.quad	0x3fee39e8c47a17f4              # double 0.94456899999999999
	.quad	0x3fdb5931ca7d6734              # double 0.427319
	.quad	0x3feb534bd76ee73e              # double 0.85391799999999995
	.quad	0x3fecc059210385c6              # double 0.89847999999999995
	.quad	0x3fd8fea3df6db941              # double 0.390542
	.quad	0x3fe3338f7985271c              # double 0.60004400000000002
	.quad	0x3fd11b79d909f1f1              # double 0.26730199999999998
	.quad	0x3fe7a272862f598a              # double 0.73858000000000001
	.quad	0x3fcaf70153bd1676              # double 0.21066299999999999
	.quad	0x3fa47c30d306a2b1              # double 0.040009999999999997
	.quad	0x3fa835158b827fa2              # double 0.047280000000000003
	.quad	0x3fdba0a0f4d7add1              # double 0.43167899999999998
	.quad	0x3fb2c050bd87b56c              # double 0.073247000000000007
	.quad	0x3fea0882f0e0a84c              # double 0.81353900000000001
	.quad	0x3fdfca9691a75cd1              # double 0.49674000000000001
	.quad	0x3fc51d14e3bcd35b              # double 0.16495000000000001
	.quad	0x3fec1008205ff1d8              # double 0.87695699999999999
	.quad	0x3fdda9b068123811              # double 0.46348200000000001
	.quad	0x3fe64f63800218df              # double 0.69719100000000001
	.quad	0x3fe189e55c0fcb4f              # double 0.54808299999999999
	.quad	0x3fd3ba8c586876e2              # double 0.30826100000000001
	.quad	0x3fd0311a543f1c76              # double 0.25299700000000003
	.quad	0x3fdc81344806290f              # double 0.445386
	.quad	0x3fe0fcfa26a22b39              # double 0.53088100000000005
	.quad	0x3fe67f10ecb74de0              # double 0.70301100000000005
	.quad	0x3fc776e6106ab14f              # double 0.18331600000000001
	.quad	0x3fe98ddc6195464e              # double 0.79856700000000003
	.quad	0x3fb9ed17c5ef62fa              # double 0.101274
	.quad	0x3fe34e4430b178b3              # double 0.60330399999999995
	.quad	0x3fe932cc70867ad9              # double 0.78745100000000001
	.quad	0x3fe9bcab81f969e4              # double 0.80428100000000002
	.quad	0x3febf928e0c9d9d3              # double 0.87416499999999997
	.quad	0x3fe9f9702e6644d8              # double 0.81169899999999995
	.quad	0x3fea4a4f440af1cc              # double 0.82157100000000005
	.quad	0x3fdd2a5e785b5b70              # double 0.45571099999999998
	.quad	0x3feed44dca8e2e2c              # double 0.96341600000000005
	.quad	0x3fd30cd855970b4a              # double 0.29765900000000001
	.quad	0x3fd4ce4ead0c3d25              # double 0.32509199999999999
	.quad	0x3fe17542a23bff8b              # double 0.54556400000000005
	.quad	0x3fe0b9b024f6598e              # double 0.52266699999999999
	.quad	0x3fe34a16a4873366              # double 0.60279400000000005
	.quad	0x3fe9daea3161a1dc              # double 0.80797300000000005
	.quad	0x3febd627bf61aa3f              # double 0.869892
	.quad	0x3fa8ecfa69be09bb              # double 0.048682999999999997
	.quad	0x3fdfbec679cc74b8              # double 0.49601899999999999
	.quad	0x3fccdf0d413122b8              # double 0.22555700000000001
	.quad	0x3feae5a14488c60d              # double 0.84053100000000003
	.quad	0x3fee22b5a20ddc62              # double 0.94173700000000005
	.quad	0x3fe3f36ef8055fbb              # double 0.62346599999999996
	.quad	0x3fe837f1737542a2              # double 0.75682899999999997
	.quad	0x3fe2159e6256366d              # double 0.56513899999999995
	.quad	0x3feb7d955714b9cb              # double 0.85907999999999995
	.quad	0x3fe65ab5c39bcba3              # double 0.698573
	.quad	0x3fe22e557de0d66f              # double 0.56815599999999999
	.quad	0x3fd8ec8d5c74751d              # double 0.38943800000000001
	.quad	0x3fd7e06530058149              # double 0.37307099999999999
	.quad	0x3fb93d20f2becedd              # double 0.098588999999999996
	.quad	0x3fd95479d4d83409              # double 0.39578099999999999
	.quad	0x3fe55323fee2c98e              # double 0.66639899999999996
	.quad	0x3fda985f06f69446              # double 0.41554999999999997
	.quad	0x3fb7f9830e3cd9a5              # double 0.093650999999999998
	.quad	0x3fe76ca686e7e62e              # double 0.73201300000000002
	.quad	0x3fe40e64b2314014              # double 0.62675700000000001
	.quad	0x3fe6b28954a7f801              # double 0.70929399999999998
	.quad	0x3fe052ce032db1ea              # double 0.51010800000000001
	.quad	0x3fe9f8c436fc1590              # double 0.81161700000000003
	.quad	0x3fdd40f238972043              # double 0.45708900000000002
	.quad	0x3fbb4b0e1b4bb5e1              # double 0.106614
	.quad	0x3fbaaa4b9884c6a4              # double 0.104161
	.quad	0x3fe6722c01e68a0d              # double 0.70143699999999998
	.quad	0x3fe0af2d7f950b95              # double 0.52138399999999996
	.quad	0x3fb08ede54b48d3b              # double 0.064680000000000001
	.quad	0x3fef8c3b0c4588a0              # double 0.98586799999999996
	.quad	0x3fd61ff7164c729f              # double 0.34570099999999998
	.quad	0x3fe80e5c4eb56fb9              # double 0.751753
	.quad	0x3fe281b003686a4d              # double 0.57833100000000004
	.quad	0x3fef14812be48a59              # double 0.97125300000000003
	.quad	0x3fcf9fb1e18efbb1              # double 0.247061
	.quad	0x3fe80b5675579af2              # double 0.75138400000000005
	.quad	0x3fe4e909aed56b01              # double 0.653447
	.quad	0x3fdee043a2163fdd              # double 0.48243799999999998
	.quad	0x3fe7e71044f1a198              # double 0.74695599999999995
	.quad	0x3fd255b89939218a              # double 0.28648200000000001
	.quad	0x3fd65d249e44fa05              # double 0.349435
	.quad	0x3fe15d54da4ce810              # double 0.54264299999999999
	.quad	0x3fe01c432ca57a78              # double 0.50344999999999995
	.quad	0x3fe3ba7b9170d62c              # double 0.61651400000000001
	.quad	0x3fa06cca2db61bb0              # double 0.032079999999999997
	.quad	0x3fedb0446b69db66              # double 0.92776700000000001
	.quad	0x3fe33b23571d1d47              # double 0.60096899999999998
	.quad	0x3fba6202539756c9              # double 0.103058
	.quad	0x3fe7ebc1eff9f87f              # double 0.747529
	.quad	0x3fdb6f9767903212              # double 0.42868600000000001
	.quad	0x3fe1b8a3b57c4e2f              # double 0.55378899999999998
	.quad	0x3fdc5d2d01c0ca60              # double 0.443187
	.quad	0x3fe3c5260f5e41d5              # double 0.61781600000000003
	.quad	0x3fbc73de1e2de871              # double 0.11114300000000001
	.quad	0x3fe1eb5f5f0b2852              # double 0.55998199999999998
	.quad	0x3fed869835158b82              # double 0.92267999999999994
	.quad	0x3fd1edb7281fd9ba              # double 0.28013399999999999
	.quad	0x3fef3ce2089e3433              # double 0.97618199999999999
	.quad	0x3fef30292817763e              # double 0.97462899999999997
	.quad	0x3fd255f78359bc34              # double 0.286497
	.quad	0x3feacef459d9902a              # double 0.83776300000000004
	.quad	0x3fe54ac8e68e3ef3              # double 0.66537900000000005
	.quad	0x3fef4395810624dd              # double 0.97699999999999997
	.quad	0x3fd9ddf00abf76a3              # double 0.404171
	.quad	0x3fd70b1feeb2d0a2              # double 0.36005399999999999
	.quad	0x3fd1465625a682b6              # double 0.26991799999999999
	.quad	0x3fe7381733226c3c              # double 0.72559700000000005
	.quad	0x3fbc55eaee2003ac              # double 0.11068600000000001
	.quad	0x3fe2efc58ab92c06              # double 0.59176899999999999
	.quad	0x3fc52ae07e5a78f2              # double 0.16537099999999999
	.quad	0x3fe747735c182ecb              # double 0.72747200000000001
	.quad	0x3fe78f1b25f633ce              # double 0.73621899999999996
	.quad	0x3fe0c649906cca2e              # double 0.52420500000000003
	.quad	0x3fbeda554b8bef8d              # double 0.120519
	.quad	0x3fe4aca793576039              # double 0.64607599999999998
	.quad	0x3fe692c493426784              # double 0.70541600000000004
	.quad	0x3fecaf2734f82f51              # double 0.89638099999999998
	.quad	0x3fe73c89f40a2878              # double 0.72614000000000001
	.quad	0x3fcf2702a3486f05              # double 0.24337800000000001
	.quad	0x3fe9d27c39368273              # double 0.80694399999999999
	.quad	0x3fd60270f3882279              # double 0.34389900000000001
	.quad	0x3fd4d462c343b70f              # double 0.325463
	.quad	0x3fe6e0e51d25aab4              # double 0.71495299999999995
	.quad	0x3fe7a3b9ae0c1765              # double 0.73873599999999995
	.quad	0x3fd69b8023a6ce36              # double 0.35324100000000003
	.quad	0x3fd2c1df3300de4c              # double 0.29308299999999998
	.quad	0x3fed5e37585be1a8              # double 0.91775099999999998
	.quad	0x3fde752da98676a7              # double 0.47590199999999999
	.quad	0x3fe99abd1aa821f3              # double 0.80013900000000004
	.quad	0x3fe0a6e115592d99              # double 0.52037100000000003
	.quad	0x3fde11d798d8a97a              # double 0.46983900000000001
	.quad	0x3fca9667b5f1bef5              # double 0.20771500000000001
	.quad	0x3fe8f985271bcdbc              # double 0.78045900000000001
	.quad	0x3fe8a415f45e0b4e              # double 0.77002999999999999
	.quad	0x3fecda35d67ba238              # double 0.90163700000000002
	.quad	0x3fe2b8dc55000c95              # double 0.58506599999999997
	.quad	0x3fd09c5a3e39f773              # double 0.25954300000000002
	.quad	0x3fa293293d102bc7              # double 0.036278999999999999
	.quad	0x3fe65959a30984e4              # double 0.698407
	.quad	0x3fe4755ffe6d58c9              # double 0.63932800000000001
	.quad	0x3fd0e175d13d74d6              # double 0.26376100000000002
	.quad	0x3fba66fd651b0ccc              # double 0.103134
	.quad	0x3fbf3bfb58d1526e              # double 0.12200900000000001
	.quad	0x3fef1192641b328b              # double 0.97089499999999995
	.quad	0x3fe71b3f20a73f75              # double 0.72207600000000005
	.quad	0x3fe29ec2ce464990              # double 0.58187999999999995
	.quad	0x3fed00bed740c415              # double 0.90634099999999995
	.quad	0x3fd6965b20b8066c              # double 0.35292699999999999
	.quad	0x3fe56961c36976bc              # double 0.66911399999999999
	.quad	0x3fe80014f8b588e3              # double 0.75000999999999995
	.quad	0x3fe2b671ac14c661              # double 0.58477100000000004
	.quad	0x3fdf1d798d8a979e              # double 0.486174
	.quad	0x3fa9a1fd1569f490              # double 0.050063999999999997
	.quad	0x3fe5f640639d5e4a              # double 0.68630999999999998
	.quad	0x3fe0530270f38822              # double 0.51013299999999995
	.quad	0x3fd69e6eeb702603              # double 0.35342000000000001
	.quad	0x3fc4a18bd66277c4              # double 0.16117999999999999
	.quad	0x3f9a619da9c99286              # double 0.025763000000000001
	.quad	0x3fdbc02afdda8bd2              # double 0.43360399999999999
	.quad	0x3fb45c358afc47e5              # double 0.079532000000000005
	.quad	0x3fed889a02752546              # double 0.922925
	.quad	0x3f937110e453d20f              # double 0.018985999999999999
	.quad	0x3fe9022bbecaab8a              # double 0.78151499999999996
	.quad	0x3fd18b6d86ec17ec              # double 0.27413500000000002
	.quad	0x3fe9a9435ac8a372              # double 0.80191199999999996
	.quad	0x3fd0e657b84db9c7              # double 0.26405899999999999
	.quad	0x3fe7f27fe4bcad9b              # double 0.74835200000000002
	.quad	0x3fe3a89b951c5c57              # double 0.61433199999999999
	.quad	0x3fe7ae275ab7dc7b              # double 0.74000900000000003
	.quad	0x3fee16feb4a6655a              # double 0.940307
	.quad	0x3fee08aefb2aae29              # double 0.93855999999999995
	.quad	0x3fd542e126202539              # double 0.33220699999999997
	.quad	0x3f7da37ef5a964e9              # double 0.0072360000000000002
	.quad	0x3fd05c13fd0d0679              # double 0.25562000000000001
	.quad	0x3fe1ac3eb7cbb3c8              # double 0.55227599999999999
	.quad	0x3fe516dd26b723ee              # double 0.65904099999999999
	.quad	0x3fc575a74c09c3ce              # double 0.167653
	.quad	0x3fc57e02645e4e6a              # double 0.167908
	.quad	0x3fe96ca686e7e62e              # double 0.79451300000000002
	.quad	0x3fdea5d28d002e23              # double 0.47887099999999999
	.quad	0x3fe9aa2c2374794f              # double 0.80202300000000004
	.quad	0x3fe47e889c1b5419              # double 0.64044599999999996
	.quad	0x3fadea897635e743              # double 0.058430000000000003
	.quad	0x3fd05ee568a50508              # double 0.25579200000000002
	.quad	0x3fe7a32b12d3415b              # double 0.73866799999999999
	.quad	0x3fd210ecb74ddf87              # double 0.28228300000000001
	.quad	0x3fe10e64b2314014              # double 0.53300700000000001
	.quad	0x3fc9efa615a8deb1              # double 0.202626
	.quad	0x3fc4c9c0a8d21bc1              # double 0.162407
	.quad	0x3fec108c3f3e0371              # double 0.87702000000000002
	.quad	0x3fea72e05ccc89b1              # double 0.82652300000000001
	.quad	0x3fe64801f75104d5              # double 0.69628999999999996
	.quad	0x3fbc8333fc86cebc              # double 0.111377
	.quad	0x3fe39285a921ccd9              # double 0.61163599999999996
	.quad	0x3f66c3fc43b2dd37              # double 0.0027789999999999998
	.quad	0x3fe4b7baecd07853              # double 0.647428
	.quad	0x3fe0d6f976790321              # double 0.52624199999999999
	.quad	0x3fe22641b328b6d8              # double 0.56716999999999995
	.quad	0x3fefaa369fcf3dc0              # double 0.98952799999999996
	.quad	0x3fc46cb10342aa9f              # double 0.15956699999999999
	.quad	0x3fc83137b07075b4              # double 0.189002
	.quad	0x3fca05dd8f92af9b              # double 0.20330400000000001
	.quad	0x3fe06d41b75a74c1              # double 0.51333700000000004
	.quad	0x3fb92c27a63736ce              # double 0.09833
	.quad	0x3fe1ad490e66cb10              # double 0.55240299999999998
	.quad	0x3fe94095f2452c5a              # double 0.789134
	.quad	0x3fe39ed5ae1cde5d              # double 0.61313899999999999
	.quad	0x3fcd6d2aa5c5f7c6              # double 0.22989399999999999
	.quad	0x3fee723465625a68              # double 0.95144099999999998
	.quad	0x3fe8eaa8eb463498              # double 0.77864500000000003
	.quad	0x3fee7a0f9096bb99              # double 0.95240000000000002
	.quad	0x3fc85004fb1183b6              # double 0.189942
	.quad	0x3fd786f8ad256799              # double 0.36761300000000002
	.quad	0x3fed7416bdb1a6d7              # double 0.92042100000000004
	.quad	0x3fce27c7c5260f5e              # double 0.23558899999999999
	.quad	0x3fcb318fc504816f              # double 0.21245
	.quad	0x3fc16d00b45ae600              # double 0.13613900000000001
	.quad	0x3fdb399b2c40d0ab              # double 0.42539100000000002
	.quad	0x3fe9bbea91d9b1b8              # double 0.80418900000000004
	.quad	0x3feb140fecdd0d8d              # double 0.84619900000000003
	.quad	0x3fe3da038194c016              # double 0.620363
	.quad	0x3fe6a98cc144028e              # double 0.70819699999999997
	.quad	0x3fc0830a0b1bbcf5              # double 0.128999
	.quad	0x3fd5bb517a46173c              # double 0.33955800000000003
	.quad	0x3fe82df0d413122b              # double 0.75560799999999995
	.quad	0x3fe61bb4916ca46e              # double 0.690882
	.quad	0x3fe965b63d3e4ef0              # double 0.79366599999999998
	.quad	0x3fdd6e3b46fdeb53              # double 0.45985300000000001
	.quad	0x3fe214c22ee4191a              # double 0.56503400000000004
	.quad	0x3fdea24cc6822ff1              # double 0.47865600000000003
	.quad	0x3fe5c10f94c87981              # double 0.679817
	.quad	0x3fd2229a5ebb773a              # double 0.283362
	.quad	0x3fcc8c1db0142f62              # double 0.223026
	.quad	0x3fe35d4a5df2239e              # double 0.60513799999999995
	.quad	0x3fdfdba908a265f1              # double 0.497782
	.quad	0x3fbeec5b078d92fb              # double 0.120794
	.quad	0x3feeddc4007570c5              # double 0.96457099999999995
	.quad	0x3fd95b78cc9a77e6              # double 0.396208
	.quad	0x3fe09d8622c45027              # double 0.51922900000000005
	.quad	0x3fed95464dc22ab2              # double 0.92447199999999996
	.quad	0x3fe38620ab713272              # double 0.61012299999999997
	.quad	0x3fea762d83c6c97e              # double 0.82692600000000005
	.quad	0x3fd938088509bf9c              # double 0.39404499999999998
	.quad	0x3fedaa51e321a2e8              # double 0.927041
	.quad	0x3fd38622c4502689              # double 0.305062
	.quad	0x3fd992c061847f56              # double 0.39958199999999999
	.quad	0x3fe0a2f05a708ede              # double 0.51988999999999996
	.quad	0x3f937b8d3f1843c4              # double 0.019026000000000001
	.quad	0x3fe90e757928e0ca              # double 0.78301500000000002
	.quad	0x3fe4af6a50d6b229              # double 0.64641300000000002
	.quad	0x3fcd87f023e9ea14              # double 0.230711
	.quad	0x3fe12860dcb9a9da              # double 0.53617899999999996
	.quad	0x3fe9d9d3458cd20b              # double 0.80784
	.quad	0x3febf4a558ea7ce1              # double 0.873614
	.quad	0x3fdb1b9f98b71b8b              # double 0.42356100000000002
	.quad	0x3fb86088d6d3b6cc              # double 0.095223000000000002
	.quad	0x3fdc94b380cb6c7a              # double 0.44657599999999997
	.quad	0x3fe995e9e1b089a0              # double 0.79954999999999998
	.quad	0x3fe07d0aed99cbef              # double 0.51526400000000006
	.quad	0x3fecd57de0d66f0d              # double 0.901061
	.quad	0x3fe4ff2e48e8a71e              # double 0.65615000000000001
	.quad	0x3fdcc5eb313be22e              # double 0.44957999999999998
	.quad	0x3fd0470a808c825a              # double 0.25433600000000001
	.quad	0x3fe90051c9f72f77              # double 0.78128900000000001
	.quad	0x3fa3708aac96cc60              # double 0.037968000000000002
	.quad	0x3feaebb55ac03ff7              # double 0.84127300000000005
	.quad	0x3faafdb8fde2ef4e              # double 0.052717
	.quad	0x3fe0b0f062d40aaf              # double 0.52159900000000003
	.quad	0x3fe644dec1c1d6d0              # double 0.69590700000000005
	.quad	0x3fe76a7ce0fc2eba              # double 0.73174899999999998
	.quad	0x3fbf78ab0c88a47f              # double 0.122935
	.quad	0x3fe294fce746cb96              # double 0.58068699999999995
	.quad	0x3feb0945f9df548f              # double 0.84488200000000002
	.quad	0x3f9b4aa9717df19d              # double 0.026651999999999999
	.quad	0x3fe8cab3edd8b60f              # double 0.77474399999999999
	.quad	0x3fe671172ef0ae53              # double 0.70130499999999996
	.quad	0x3fb845aa2e3c536d              # double 0.094812999999999995
	.quad	0x3fdbe82949a56580              # double 0.43604500000000002
	.quad	0x3fd83e3193f6c26a              # double 0.37879600000000002
	.quad	0x3fe185271bcdbbe0              # double 0.54750399999999999
	.quad	0x3fe094fce746cb96              # double 0.51818699999999995
	.quad	0x3fb8c49ba5e353f8              # double 0.096750000000000003
	.quad	0x3fcb644955b4677b              # double 0.21399799999999999
	.quad	0x3f7f9acffa7eb6bf              # double 0.0077159999999999998
	.quad	0x3fd3a04d12018a44              # double 0.30665900000000001
	.quad	0x3fe9e21b7e0ac7da              # double 0.80885099999999999
	.quad	0x3fe2c955b4677b39              # double 0.58707699999999996
	.quad	0x3fde65625a682b63              # double 0.47493800000000003
	.quad	0x3fe1992a737110e4              # double 0.54994699999999996
	.quad	0x3fa65a35d67ba238              # double 0.043657000000000001
	.quad	0x3fbf0867ad8e4324              # double 0.121222
	.quad	0x3fb873365881a155              # double 0.095507999999999996
	.quad	0x3fe9fd1782d38477              # double 0.81214500000000001
	.quad	0x3fd54cb9ecf63800              # double 0.33280799999999999
	.quad	0x3fd85c0fcb4f1e4b              # double 0.38061899999999999
	.quad	0x3fea88b32ce89657              # double 0.82918700000000001
	.quad	0x3fd5d25edd052935              # double 0.34096500000000002
	.quad	0x3fe27f3061c79b35              # double 0.57802600000000004
	.quad	0x3fec3ea4ebdd334c              # double 0.88264699999999995
	.quad	0x3fe5f27bb2fec56d              # double 0.68584999999999996
	.quad	0x3fd3b441bb8c32a9              # double 0.30787700000000001
	.quad	0x3fc8107b784662bb              # double 0.188003
	.quad	0x3fc5a08bfc2224ee              # double 0.168962
	.quad	0x3fc22d83c6c97d8d              # double 0.142014
	.quad	0x3fe2cf0f9d2bf551              # double 0.58777599999999997
	.quad	0x3fedf56c93a71151              # double 0.93620899999999996
	.quad	0x3fd18f32378ab0c9              # double 0.27436500000000003
	.quad	0x3fc4b3f63c31df76              # double 0.161742
	.quad	0x3fe1fb6bb1290258              # double 0.56194100000000002
	.quad	0x3fd516440f238972              # double 0.329484
	.quad	0x3fefac68a936c58f              # double 0.989796
	.quad	0x3fef0a45d41fa765              # double 0.97000399999999997
	.quad	0x3fa1871e6cd29132              # double 0.034234000000000001
	.quad	0x3fec526527a20579              # double 0.88505800000000001
	.quad	0x3fe7fd3d4280ae10              # double 0.74966299999999997
	.quad	0x3f80a67620ee8d11              # double 0.00813
	.quad	0x3fbe493c89f40a28              # double 0.11830499999999999
	.quad	0x3fc5568e820e6299              # double 0.16670399999999999
	.quad	0x3fc630db6a1e81cb              # double 0.17336599999999999
	.quad	0x3fe667c49fd7a13c              # double 0.70016699999999998
	.quad	0x3fe1d5b035bd512f              # double 0.55733500000000002
	.quad	0x3fd6d948dc11e42e              # double 0.357012
	.quad	0x3fd580b673c4f3ba              # double 0.33598099999999997
	.quad	0x3fdadb8348f53c58              # double 0.41964800000000002
	.quad	0x3feef11f926c7eae              # double 0.96693399999999996
	.quad	0x3fec9e18efbb0e5e              # double 0.89429899999999996
	.quad	0x3fb358afc47e49b2              # double 0.075572
	.quad	0x3fe198f1d3ed527e              # double 0.54991999999999996
	.quad	0x3fe105bc01a36e2f              # double 0.53195000000000003
	.quad	0x3fec971c10d7be98              # double 0.89344599999999996
	.quad	0x3fe952b6f19934f0              # double 0.79134700000000002
	.quad	0x3fe01ab29e4d5d81              # double 0.50325900000000001
	.quad	0x3fdb4bd33d29563b              # double 0.42650300000000002
	.quad	0x3fd89d94d0dcfcc6              # double 0.38461800000000002
	.quad	0x3fe99d12cadddf44              # double 0.80042400000000002
	.quad	0x3fe131550ca1cef2              # double 0.53727199999999997
	.quad	0x3fe22f3c2dadb835              # double 0.56826600000000005
	.quad	0x3fd0e5109070fbec              # double 0.26398100000000002
	.quad	0x3fe35011904b3c3e              # double 0.60352399999999995
	.quad	0x3fe30fe8ab4fa483              # double 0.595692
	.quad	0x3febeb851eb851ec              # double 0.87250000000000005
	.quad	0x3fb376b3bb83cf2d              # double 0.07603
	.quad	0x3fe99b8aa00192a7              # double 0.80023699999999998
	.quad	0x3fe60b673c4f3ba7              # double 0.68889199999999995
	.quad	0x3fe5e01ffb480a5b              # double 0.68360900000000002
	.quad	0x3fef268b19a415f4              # double 0.97345499999999995
	.quad	0x3feaaa0663c74fb5              # double 0.83325499999999997
	.quad	0x3fc3badc0980b242              # double 0.15414
	.quad	0x3fd764a59c065b64              # double 0.36551800000000001
	.quad	0x3fef2ae6c8f75537              # double 0.97398700000000004
	.quad	0x3fef93037d63022e              # double 0.98669600000000002
	.quad	0x3fb493532e7b3d8e              # double 0.080372999999999999
	.quad	0x3fdd01abd1aa821f              # double 0.45322699999999999
	.quad	0x3feb6ee0f3cb3e57              # double 0.85728499999999996
	.quad	0x3f63ec460ed80a18              # double 0.0024320000000000001
	.quad	0x3fcebd87b56b8738              # double 0.24015900000000001
	.quad	0x3fd364345cfede98              # double 0.30299100000000001
	.quad	0x3fe71693c03bc4d2              # double 0.72150599999999998
	.quad	0x3fe5bcf70153bd16              # double 0.67931699999999995
	.quad	0x3fe4c65625a682b6              # double 0.64921099999999998
	.quad	0x3fdf38a3b57c4e2f              # double 0.48783199999999999
	.quad	0x3fcd3edd8b60f1b2              # double 0.22848099999999999
	.quad	0x3fe23395c4220360              # double 0.568797
	.quad	0x3fe11d5a187a4a49              # double 0.534833
	.quad	0x3fb974d594f26aec              # double 0.099438999999999999
	.quad	0x3fe49183b60285ec              # double 0.64276299999999997
	.quad	0x3fe0dfe75bc44bf5              # double 0.52733200000000002
	.quad	0x3fdfd0a244630660              # double 0.49710900000000002
	.quad	0x3fe200ae10492360              # double 0.56258300000000006
	.quad	0x3fe81107faa044af              # double 0.75207900000000005
	.quad	0x3fe1a4a48f96e158              # double 0.55134799999999995
	.quad	0x3fe8fde2ef4e0115              # double 0.78099200000000002
	.quad	0x3fe2a8d21bc126a6              # double 0.58310799999999996
	.quad	0x3fe4803eea209aaa              # double 0.64065499999999997
	.quad	0x3fcb079e59f2ba9d              # double 0.21117
	.quad	0x3fd8394face67d78              # double 0.378498
	.quad	0x3fbb6f9fcb0c026d              # double 0.107172
	.quad	0x3fc8811b1d92b7fe              # double 0.19144
	.quad	0x3fab41bfbdf090f7              # double 0.053235999999999999
	.quad	0x3fc271f79420b3d5              # double 0.14410300000000001
	.quad	0x3fdf179bfdf7e804              # double 0.48581600000000003
	.quad	0x3fed942917507e9e              # double 0.92433600000000005
	.quad	0x3fd1bfdf7e8038a0              # double 0.27733600000000003
	.quad	0x3fe252630ec31162              # double 0.57255699999999998
	.quad	0x3fcd77963992c8c5              # double 0.230212
	.quad	0x3feea9cdc443914f              # double 0.95822799999999996
	.quad	0x3fd1479d4d834092              # double 0.26999600000000001
	.quad	0x3fc35caf2d7f950c              # double 0.15126600000000001
	.quad	0x3fd36809d495182b              # double 0.30322500000000002
	.quad	0x3fde949e8815e397              # double 0.477821
	.quad	0x3fe95323fee2c98e              # double 0.79139899999999996
	.quad	0x3fc7ecfe9b7bf1e9              # double 0.18692
	.quad	0x3fcab26bf8769ec3              # double 0.20857000000000001
	.quad	0x3fd621c475e6362a              # double 0.34581099999999998
	.quad	0x3fe1e8709741d085              # double 0.55962400000000001
	.quad	0x3fc9d2d87f88765c              # double 0.20174700000000001
	.quad	0x3fedc2917507e9d9              # double 0.93000099999999997
	.quad	0x3fd84acf312b1b37              # double 0.37956600000000001
	.quad	0x3fa2a0663c74fb55              # double 0.036380000000000003
	.quad	0x3fee7d06bbdbe3c1              # double 0.952762
	.quad	0x3fe30ac9f2fdb8fe              # double 0.59506700000000001
	.quad	0x3fa0aa21a719b4dd              # double 0.032548000000000001
	.quad	0x3fe23d9ec7000432              # double 0.57002200000000003
	.quad	0x3fdce27179bfdf7f              # double 0.45132100000000003
	.quad	0x3feff81626b2f230              # double 0.99903399999999998
	.quad	0x3fe35462c343b70f              # double 0.604051
	.quad	0x3fd624c8366516db              # double 0.345995
	.quad	0x3fe045a3e39f7729              # double 0.50850099999999998
	.quad	0x3feb6a4441787054              # double 0.85672199999999998
	.quad	0x3fa26937d1fe64f5              # double 0.035958999999999998
	.quad	0x3feb0ca1cef240fb              # double 0.84529200000000004
	.quad	0x3fd1c9d5a187a4a5              # double 0.27794400000000002
	.quad	0x3fe5b7ac3eb7cbb4              # double 0.67867100000000002
	.quad	0x3fe78e581cf7878b              # double 0.73612599999999995
	.quad	0x3f977ff151e75361              # double 0.022949000000000001
	.quad	0x3fd19628cbd1244a              # double 0.27478999999999998
	.quad	0x3fe7a75cd0bb6ed6              # double 0.73917999999999995
	.quad	0x3feb567dbb16c1e3              # double 0.85430799999999996
	.quad	0x3fe74545846e8f2a              # double 0.72720600000000002
	.quad	0x3fe9c42a66dbd72c              # double 0.80519600000000002
	.quad	0x3fd0587d6f976790              # double 0.25540099999999999
	.quad	0x3fd9392189bd8384              # double 0.39411200000000002
	.quad	0x3fead04e618ce2d2              # double 0.83792800000000001
	.quad	0x3fea7cfe58601366              # double 0.82775799999999999
	.quad	0x3fedd72bcb5fe543              # double 0.93251600000000001
	.quad	0x3fc8849cb252ce03              # double 0.191547
	.quad	0x3fae093532e7b3d9              # double 0.058664000000000001
	.quad	0x3fcb32f87ad080b6              # double 0.21249299999999999
	.quad	0x3fe9e2eb1c432ca5              # double 0.80894999999999995
	.quad	0x3fc236a832b990b0              # double 0.142293
	.quad	0x3fd38a0902de00d2              # double 0.30530000000000002
	.quad	0x3fe834e54f7a9197              # double 0.75645700000000005
	.quad	0x3fe880b242070b8d              # double 0.76571
	.quad	0x3fc76709fa54c554              # double 0.18283199999999999
	.quad	0x3fe25fa00e27e0f0              # double 0.57417300000000004
	.quad	0x3fd2847b24638c97              # double 0.28933599999999998
	.quad	0x3fd47caea747d806              # double 0.32011000000000001
	.quad	0x3fe2136a400fba88              # double 0.56486999999999998
	.quad	0x3fde7daa4fca42af              # double 0.47642000000000001
	.quad	0x3fc0dcfcc5b8dc55              # double 0.131744
	.quad	0x3fc76dc1a47a9e2c              # double 0.18303700000000001
	.quad	0x3fdf37f38c5436b9              # double 0.48779
	.quad	0x3fdcadc4c9c90c4e              # double 0.448106
	.quad	0x3fe95c4eb56fb8f5              # double 0.79251799999999994
	.quad	0x3fe4401e68a0d34a              # double 0.63282700000000003
	.quad	0x3fe2e759ab6d00b4              # double 0.59074099999999996
	.quad	0x3fe567a311e85fd0              # double 0.66890099999999997
	.quad	0x3fd25c39bcba3012              # double 0.286879
	.quad	0x3fb2b1704ff4341a              # double 0.073020000000000002
	.quad	0x3feea137f38c5437              # double 0.95718000000000003
	.quad	0x3fe5930df9bdc6a0              # double 0.67420100000000005
	.quad	0x3fe489f83be6601c              # double 0.64184200000000002
	.quad	0x3fe3640639d5e4a4              # double 0.60596000000000005
	.quad	0x3fe5be9424e59296              # double 0.67951399999999995
	.quad	0x3fcc070329802c0a              # double 0.21896399999999999
	.quad	0x3fe4c3ac929aa1d7              # double 0.64888599999999996
	.quad	0x3fbf47f993d5347a              # double 0.122192
	.quad	0x3fef0b630a91537a              # double 0.97014
	.quad	0x3fd9f077ccc03793              # double 0.405302
	.quad	0x3fd9dfb506dd69d3              # double 0.404279
	.quad	0x3fbf4b0e1b4bb5e1              # double 0.122239
	.quad	0x3fe9c76d117b5287              # double 0.80559400000000003
	.quad	0x3fe1bf0563ed0f62              # double 0.55456799999999995
	.quad	0x3fe113532e7b3d8e              # double 0.533609
	.quad	0x3fd2d70a3d70a3d7              # double 0.294375
	.quad	0x3fed5cf67b1c0011              # double 0.91759800000000002
	.quad	0x3feb0fba8826aa8f              # double 0.84567000000000003
	.quad	0x3fdccb641700cd85              # double 0.44991399999999998
	.quad	0x3fc30060780fdc16              # double 0.148449
	.quad	0x3fbd44fe36d22425              # double 0.11433400000000001
	.quad	0x3fd8ab68cef672b9              # double 0.38546200000000003
	.quad	0x3fd00b7c3504c48b              # double 0.25070100000000001
	.quad	0x3fdc95b78cc9a77e              # double 0.44663799999999998
	.quad	0x3fc4102ff8ec0f88              # double 0.15674399999999999
	.quad	0x3fe4d2007dd44135              # double 0.65063499999999996
	.quad	0x3fce1d084e831ad2              # double 0.235261
	.quad	0x3fe502a77a2cecc8              # double 0.65657399999999999
	.quad	0x3fc03db3bfb58d15              # double 0.126883
	.quad	0x3fed77fae3608d09              # double 0.92089600000000005
	.quad	0x3feb9672324c8366              # double 0.86211499999999996
	.quad	0x3fa60ef99806f263              # double 0.043083000000000003
	.quad	0x3fd33305100a393f              # double 0.29998900000000001
	.quad	0x3fdec3dab5c39bcc              # double 0.48070400000000002
	.quad	0x3fddb46fdeb52c9d              # double 0.464138
	.quad	0x3fdc81669ced0b31              # double 0.44539800000000002
	.quad	0x3fc9e9ea14057082              # double 0.20245099999999999
	.quad	0x3fd1d2d87f88765c              # double 0.27849400000000002
	.quad	0x3fdbf4128bf3bea9              # double 0.43677199999999999
	.quad	0x3feb3191dde37586              # double 0.84980100000000003
	.quad	0x3feafaa68f4b61fe              # double 0.84309699999999999
	.quad	0x3fd3d3f9e7b80a9e              # double 0.30981300000000001
	.quad	0x3fe89ede1198aeb8              # double 0.76939299999999999
	.quad	0x3fd573f316e37154              # double 0.335202
	.quad	0x3fc46c6583e8576d              # double 0.15955800000000001
	.quad	0x3fece681a9b8cb8e              # double 0.903138
	.quad	0x3fd1c72e275ab7dc              # double 0.27778199999999997
	.quad	0x3fcec74b838c111b              # double 0.240457
	.quad	0x3fe2b6c3760bf5d8              # double 0.58481000000000005
	.quad	0x3fd566fd651b0ccc              # double 0.33441100000000001
	.quad	0x3feaa5c3dee78184              # double 0.832735
	.quad	0x3fd791361dc93ea3              # double 0.36823800000000001
	.quad	0x3fb1490e66cb1034              # double 0.067520999999999998
	.quad	0x3fd43fb3743632c2              # double 0.316388
	.quad	0x3fcd7110e453d20f              # double 0.230013
	.quad	0x3fa5017dae81882b              # double 0.041027000000000001
	.quad	0x3f9638c9752977c9              # double 0.021701000000000002
	.quad	0x3fb3cd78c436fc16              # double 0.077354000000000006
	.quad	0x3fe2ebe37de939eb              # double 0.59129500000000002
	.quad	0x3fe9280cf9e3864d              # double 0.78613900000000003
	.quad	0x3fe3ef77f27fe4bd              # double 0.62298200000000004
	.quad	0x3fe3d525cc426352              # double 0.61976900000000001
	.quad	0x3fefaaa9f7b5aea3              # double 0.98958299999999999
	.quad	0x3fd3ab25b317efe1              # double 0.30732100000000001
	.quad	0x3fe28b49e01de269              # double 0.57950299999999999
	.quad	0x3fd4bbc2b94d9408              # double 0.32396000000000003
	.quad	0x3fe03964a59c065b              # double 0.50700599999999996
	.quad	0x3fc4fbc1acde19fc              # double 0.163933
	.quad	0x3feb1c10d7be9857              # double 0.84717600000000004
	.quad	0x3fc823422467be55              # double 0.18857599999999999
	.quad	0x3fe42007dd441355              # double 0.62890999999999997
	.quad	0x3fdf5f2cb641700d              # double 0.49018400000000001
	.quad	0x3feab56fb8f57f73              # double 0.83464799999999995
	.quad	0x3fa83e20ccff21b4              # double 0.047349000000000002
	.quad	0x3fe61797cc39ffd6              # double 0.69037999999999999
	.quad	0x3fe20ec311622813              # double 0.56430199999999997
	.quad	0x3fe3446d82ba5a04              # double 0.60210300000000005
	.quad	0x3fbfe3e29307af21              # double 0.124571
	.quad	0x3fe2f13f077ccc03              # double 0.59194899999999995
	.quad	0x3fed72ffd1dcd706              # double 0.92028799999999999
	.quad	0x3fe146a3bddfca00              # double 0.53987300000000005
	.quad	0x3fc7480a5accd530              # double 0.18188599999999999
	.quad	0x3fd642fe82517e78              # double 0.34783900000000001
	.quad	0x3fe087f88765ba6f              # double 0.516598
	.quad	0x3feee6c4c5974e66              # double 0.96567000000000003
	.quad	0x3fde5df2239e6aba              # double 0.47448400000000002
	.quad	0x3fba4638c9752978              # double 0.102634
	.quad	0x3fe0f28e92d55a3a              # double 0.529609
	.quad	0x3fec61198aeb80ed              # double 0.886853
	.quad	0x3fe18d3f1843c3a4              # double 0.54849199999999998
	.quad	0x3fdb9f127f5e84f1              # double 0.43158400000000002
	.quad	0x3f2d9f4d37c1376d              # double 2.2599999999999999E-4
	.quad	0x3fcd1d8a54823854              # double 0.227464
	.quad	0x3fecd6eefa1e3eaf              # double 0.90123699999999995
	.quad	0x3fc9294573a79789              # double 0.196572
	.quad	0x3fd522ee41919ac8              # double 0.33025700000000002
	.quad	0x3fedc0357a355044              # double 0.92971300000000001
	.quad	0x3fe25c33721d53ce              # double 0.57375500000000001
	.quad	0x3fe4a26c3b927d46              # double 0.64482700000000004
	.quad	0x3fc1c64ba94bbe44              # double 0.13886399999999999
	.quad	0x3fd871a3b14a9047              # double 0.381936
	.quad	0x3fed088509bf9c63              # double 0.90729000000000004
	.quad	0x3fedeb8305d95dd5              # double 0.93499900000000002
	.quad	0x3fee35f3d7d3910c              # double 0.94408599999999998
	.quad	0x3fe5e7a311e85fd0              # double 0.68452599999999997
	.quad	0x3fed89df1172ef0b              # double 0.92308000000000001
	.quad	0x3fe718b2e9ccb7d4              # double 0.72176499999999999
	.quad	0x3febf676ea422899              # double 0.87383599999999995
	.quad	0x3fe4a96f6512a950              # double 0.64568300000000001
	.quad	0x3fe9d9253543aeab              # double 0.80775699999999995
	.quad	0x3fd0fdb09a671ef3              # double 0.265484
	.quad	0x3fec1ac14c660a20              # double 0.87826599999999999
	.quad	0x3fe29372a38b8ae3              # double 0.58049899999999999
	.quad	0x3fd7be9424e59296              # double 0.37100699999999998
	.quad	0x3fe8563cb8173322              # double 0.76052699999999995
	.quad	0x3fc951c5c5718eb9              # double 0.19780800000000001
	.quad	0x3fc1bf727136a401              # double 0.138655
	.quad	0x3fce96cc5fbf8338              # double 0.23897699999999999
	.quad	0x3fd78509bf9c62a2              # double 0.36749500000000002
	.quad	0x3fefad44dca8e2e3              # double 0.98990100000000003
	.quad	0x3fd64d6a161e4f76              # double 0.34847499999999998
	.quad	0x3fa63150dae3e6c5              # double 0.043345000000000002
	.quad	0x3fe69774256bca53              # double 0.70598799999999995
	.quad	0x3fc9af20ea5b530d              # double 0.200657
	.quad	0x3fb31715c63ae254              # double 0.074570999999999998
	.quad	0x3fda2e2fbe33acd6              # double 0.40906900000000002
	.quad	0x3fb4c70867ad8e43              # double 0.081161999999999998
	.quad	0x3fc0702a3486f04a              # double 0.12842300000000001
	.quad	0x3fee1eb4202d9cf1              # double 0.94124799999999997
	.quad	0x3fe8e8f6cefed634              # double 0.77843799999999996
	.quad	0x3fd2fc0d2c386d2f              # double 0.29663400000000001
	.quad	0x3f86805a2d72ffd2              # double 0.010987
	.quad	0x3fe29246bf01322f              # double 0.58035599999999998
	.quad	0x3fe823c64345cfee              # double 0.75436700000000001
	.quad	0x3fee2a0232096788              # double 0.94262800000000002
	.quad	0x3fd6467be553ac4f              # double 0.34805199999999997
	.quad	0x3fbb6c58eeae9ee4              # double 0.107122
	.quad	0x3fd5bb55ac03ff69              # double 0.339559
	.quad	0x3fe9d5e071c53f3a              # double 0.80735800000000002
	.quad	0x3feb3f961804d984              # double 0.85151200000000004
	.quad	0x3fe61ebc83a96d4c              # double 0.69125199999999998
	.quad	0x3fe4d1d25aab4741              # double 0.650613
	.quad	0x3fc336c58eeae9ee              # double 0.15010899999999999
	.quad	0x3f9b0a6fc58ab92c              # double 0.026407
	.quad	0x3fe624d4cb9ecf64              # double 0.69199600000000006
	.quad	0x3fdf6b97fe8ee6b8              # double 0.49094199999999999
	.quad	0x3feecf2f123c42a6              # double 0.96279099999999995
	.quad	0x3fe9bcb81733226c              # double 0.80428699999999997
	.quad	0x3fe4133c1ce6c094              # double 0.62734800000000002
	.quad	0x3fa66e86c6583e85              # double 0.043811999999999997
	.quad	0x3fdf7ad080b673c5              # double 0.491871
	.quad	0x3fd02e09fe86833c              # double 0.25280999999999998
	.quad	0x3fcc1bda5119ce07              # double 0.21959999999999999
	.quad	0x3fd5ba908a265f0f              # double 0.33951199999999998
	.quad	0x3fc1fd36f7e3d1cc              # double 0.14054
	.quad	0x3fe06f566490a351              # double 0.51359100000000002
	.quad	0x3fd2bea91d9b1b7a              # double 0.29288700000000001
	.quad	0x3fd47353b4b2fa94              # double 0.31953900000000002
	.quad	0x3fd7630a915379fb              # double 0.36542000000000002
	.quad	0x3f9adb8348f53c58              # double 0.026228000000000001
	.quad	0x3fe65490e66cb103              # double 0.69782299999999997
	.quad	0x3fde44fa05143bf7              # double 0.47295999999999999
	.quad	0x3fef7aa044ae85ba              # double 0.98371900000000001
	.quad	0x3fe54b87bdcf0308              # double 0.66547000000000001
	.quad	0x3fd46a1a500d5e8d              # double 0.31897599999999998
	.quad	0x3fea9b56323bbc6f              # double 0.83146200000000003
	.quad	0x3fe681d3aa369fcf              # double 0.70334799999999997
	.quad	0x3feff1bac2df0d41              # double 0.99825799999999997
	.quad	0x3fe7b17481b21c47              # double 0.74041199999999996
	.quad	0x3fe5b0df9bdc69f9              # double 0.67784100000000003
	.quad	0x3fe430f8c64fdb0a              # double 0.63097800000000004
	.quad	0x3fea38ae31d712a1              # double 0.81941900000000001
	.quad	0x3fef576cce5f7404              # double 0.97942200000000001
	.quad	0x3fd23eab367a0f91              # double 0.28507500000000002
	.quad	0x3fe7e1975f2cb641              # double 0.74628799999999995
	.quad	0x3fd383b1d0c80410              # double 0.30491299999999999
	.quad	0x3fe00df15a4acf31              # double 0.50170199999999998
	.quad	0x3feafc6327ed84d3              # double 0.84330899999999998
	.quad	0x3fe0ea6c1a048e04              # double 0.52861599999999997
	.quad	0x3f91dabe27179bfe              # double 0.017436
	.quad	0x3f8759ee88df3733              # double 0.011402000000000001
	.quad	0x3fe54f483cafb3b7              # double 0.66592799999999996
	.quad	0x3fe502c6ef3d3a1d              # double 0.65658899999999998
	.quad	0x3fcca2b9d3cbc48f              # double 0.223716
	.quad	0x3fe14bc27631b585              # double 0.54049800000000003
	.quad	0x3fdab18116ebd4d0              # double 0.41708400000000001
	.quad	0x3fd6e924f227d029              # double 0.35798000000000002
	.quad	0x3fd89731098d477c              # double 0.38422800000000001
	.quad	0x3fa2e81882adc4ca              # double 0.036927000000000001
	.quad	0x3fd01ca3a4b5568f              # double 0.25174800000000003
	.quad	0x3fdb5bff04577d95              # double 0.42748999999999998
	.quad	0x3fee41acde19fc2b              # double 0.94551700000000005
	.quad	0x3fe748a159817b96              # double 0.72761600000000004
	.quad	0x3fe838ae31d712a1              # double 0.75691900000000001
	.quad	0x3fc1e43ed959a30a              # double 0.13977800000000001
	.quad	0x3fcc452c59fb1e19              # double 0.220861
	.quad	0x3fe336cbd987c632              # double 0.60043899999999994
	.quad	0x3fe606c43f5f9160              # double 0.68832599999999999
	.quad	0x3fe5ef21f6cacd18              # double 0.68544099999999997
	.quad	0x3fd07264a16a4873              # double 0.25698199999999999
	.quad	0x3fd1d894812be48a              # double 0.27884399999999998
	.quad	0x3fc769c23b7952d2              # double 0.18291499999999999
	.quad	0x3fd316ce789e774f              # double 0.298267
	.quad	0x3f72c4934267839d              # double 0.0045820000000000001
	.quad	0x3fe4a2bbecaab8a6              # double 0.64486500000000002
	.quad	0x3feaee1deacc9214              # double 0.84156699999999995
	.quad	0x3fef2070b8cfbfc6              # double 0.97270999999999996
	.quad	0x3fe235f5f0b28523              # double 0.56908700000000001
	.quad	0x3fed05a0be510907              # double 0.90693699999999999
	.quad	0x3fd3f7878b7a1c26              # double 0.31198300000000001
	.quad	0x3fe1de43ed959a31              # double 0.55838200000000004
	.quad	0x3fdfd00f776c4828              # double 0.49707400000000002
	.quad	0x3fa31d92b7fe08af              # double 0.037335
	.quad	0x3fdd7a7008a697af              # double 0.46059800000000001
	.quad	0x3fe3c90c4dec1c1d              # double 0.61829199999999995
	.quad	0x3f8a2b5a20ddc619              # double 0.012777999999999999
	.quad	0x3fde714fce746cb9              # double 0.47566599999999998
	.quad	0x3fef6559f6ec5b08              # double 0.98112200000000004
	.quad	0x3f8d82fd75e2046c              # double 0.014409999999999999
	.quad	0x3fe33fa4c61d8623              # double 0.60151900000000003
	.quad	0x3fe6c662bae03b3f              # double 0.71171700000000004
	.quad	0x3fca583e8576cce6              # double 0.205818
	.quad	0x3fc3f0995aaf78ff              # double 0.15578
	.quad	0x3fdd8240b780346e              # double 0.46107500000000001
	.quad	0x3fd43ac4f7ec3548              # double 0.31608700000000001
	.quad	0x3fd01fab96f21f6d              # double 0.25193300000000002
	.quad	0x3feff1a7e3087875              # double 0.99824900000000005
	.quad	0x3fe96612839042d9              # double 0.79371000000000003
	.quad	0x3fe74942d490e66d              # double 0.72769300000000003
	.quad	0x3fd7e0221426fe72              # double 0.37305500000000003
	.quad	0x3fe438348f53c57a              # double 0.63186100000000001
	.quad	0x3fca254a3c64345d              # double 0.204263
	.quad	0x3fd8da122fad6cb5              # double 0.38830999999999999
	.quad	0x3fcec99f1ae2da55              # double 0.24052799999999999
	.quad	0x3fe06c39799e518f              # double 0.51321099999999997
	.quad	0x3fc6fffbce4217d3              # double 0.17968700000000001
	.quad	0x3fca73b42cc2d6aa              # double 0.20665600000000001
	.quad	0x3fd4c2eba27ae9ab              # double 0.32439699999999999
	.quad	0x3fd74855da272863              # double 0.36379
	.quad	0x3feeec050bd87b57              # double 0.96631100000000003
	.quad	0x3fc5a3443d46b26c              # double 0.169045
	.quad	0x3fe2d1e108c3f3e0              # double 0.58811999999999998
	.quad	0x3fc58def416bdb1a              # double 0.16839399999999999
	.quad	0x3fcbe69ad42c3c9f              # double 0.217975
	.quad	0x3fa92c8c5004fb12              # double 0.049168000000000003
	.quad	0x3fe99b4bb5e0f7fd              # double 0.800207
	.quad	0x3fc271f79420b3d5              # double 0.14410300000000001
	.quad	0x3fd78f648c7192ea              # double 0.36812699999999998
	.quad	0x3fdda7589efd86a9              # double 0.463339
	.quad	0x3fe953bd1676640a              # double 0.79147199999999995
	.quad	0x3fee6d2674080f99              # double 0.950824
	.quad	0x3fdb47d805e5f30e              # double 0.42625999999999997
	.quad	0x3fe8d2aa5c5f7c67              # double 0.77571599999999996
	.quad	0x3fddd26b723ee1bd              # double 0.46596799999999999
	.quad	0x3fe699a847b24639              # double 0.70625700000000002
	.quad	0x3fee52157689ca19              # double 0.94752000000000003
	.quad	0x3fe68d1b71758e22              # double 0.70472500000000005
	.quad	0x3fd5a8e2e2b8c75c              # double 0.33843299999999998
	.quad	0x3f8f97aaac1094a3              # double 0.015426
	.quad	0x3fc847c30d306a2b              # double 0.18969
	.quad	0x3fe0639b456b441c              # double 0.51215900000000003
	.quad	0x3fa8c1b97353b4b3              # double 0.048353
	.quad	0x3febe12839042d8c              # double 0.87123499999999998
	.quad	0x3fe9fb677f6b1a2a              # double 0.81193899999999997
	.quad	0x3fe8089c1b54195d              # double 0.75105100000000002
	.quad	0x3fab9de481f53826              # double 0.053939000000000001
	.quad	0x3fe8e2328f9f44d4              # double 0.77761199999999996
	.quad	0x3fed49a133c1ce6c              # double 0.91523799999999999
	.quad	0x3fea7e8ccdd93c47              # double 0.82794800000000002
	.quad	0x3fd7bc59b8023a6d              # double 0.37087100000000001
	.quad	0x3fee18b0d0edc3bd              # double 0.94051399999999996
	.quad	0x3fe5705c896dd26b              # double 0.66996599999999995
	.quad	0x3fbd16a8b8f14db6              # double 0.11362700000000001
	.quad	0x3fea8a04d12018a4              # double 0.82934799999999997
	.quad	0x3fdb8bac710cb296              # double 0.4304
	.quad	0x3fef0ef566490a35              # double 0.97057599999999999
	.quad	0x3fe782363b256ffc              # double 0.73464499999999999
	.quad	0x3fc9ef0f16f4384c              # double 0.20260800000000001
	.quad	0x3fe407a8d64d7f0f              # double 0.62593500000000002
	.quad	0x3fdcb220791c4b90              # double 0.44837199999999999
	.quad	0x3fd43a81dc0db270              # double 0.31607099999999999
	.quad	0x3f8b8887229e9079              # double 0.013443999999999999
	.quad	0x3fdb80346dc5d639              # double 0.42970000000000003
	.quad	0x3febc57e23f24d90              # double 0.86785800000000002
	.quad	0x3fe339ffd60e94ee              # double 0.60082999999999998
	.quad	0x3fec492146a1a501              # double 0.88392700000000002
	.quad	0x3fdf58a32f44912a              # double 0.48978500000000003
	.quad	0x3fd28f10a99b6f5d              # double 0.28998200000000002
	.quad	0x3fe014855da27286              # double 0.50250499999999998
	.quad	0x3fe0aab8a5ce5b42              # double 0.52083999999999997
	.quad	0x3fd6e425aee631f9              # double 0.35767500000000002
	.quad	0x3fe71ea140570825              # double 0.72248900000000005
	.quad	0x3fd1b4784230fcf8              # double 0.27664
	.quad	0x3fd5c88e79aae6c9              # double 0.340366
	.quad	0x3fe2bdea465a5764              # double 0.58568299999999995
	.quad	0x3f9bd05af6c69b5a              # double 0.027161999999999999
	.quad	0x3fed0535c9e6687f              # double 0.90688599999999997
	.quad	0x3fc4b020c49ba5e3              # double 0.16162499999999999
	.quad	0x3f9b26bf8769ec2d              # double 0.026515
	.quad	0x3fefeb8305d95dd5              # double 0.99749900000000002
	.quad	0x3fe5e861e92923e6              # double 0.68461700000000003
	.quad	0x3fe6f5dbb9cf9a07              # double 0.71751200000000004
	.quad	0x3fe3854046412cf1              # double 0.610016
	.quad	0x3fea97763e4abe6a              # double 0.83098899999999998
	.quad	0x3fe356fb8f57f738              # double 0.60436800000000002
	.quad	0x3fcb8d3f1843c3a4              # double 0.21524799999999999
	.quad	0x3fdb2d3415b1422d              # double 0.42463400000000001
	.quad	0x3fb850df15a4acf3              # double 0.094983999999999999
	.quad	0x3feadfe111276fb1              # double 0.83982900000000005
	.quad	0x3fcfc2e33eff1950              # double 0.24813499999999999
	.quad	0x3fc671de69ad42c4              # double 0.17535000000000001
	.quad	0x3fe55c0fcb4f1e4b              # double 0.66748799999999997
	.quad	0x3fc33a92a3055326              # double 0.150225
	.quad	0x3f74c016052502ef              # double 0.0050660000000000002
	.quad	0x3fd7e1fc08fa7a85              # double 0.373168
	.quad	0x3feb1bac2df0d413              # double 0.84712799999999999
	.quad	0x3fecff13059641f6              # double 0.90613699999999997
	.quad	0x3feade39713ad5bf              # double 0.83962700000000001
	.quad	0x3fe75d31337eb28e              # double 0.73012600000000005
	.quad	0x3fe4f8a6dacabc51              # double 0.65535299999999996
	.quad	0x3fec0d7be9856a38              # double 0.87664600000000004
	.quad	0x3fe4e30446b69db6              # double 0.65271199999999996
	.quad	0x3fdc3cd141a6937d              # double 0.44121199999999999
	.quad	0x3fcf2314013ec461              # double 0.243258
	.quad	0x3fda9de481f53826              # double 0.41588700000000001
	.quad	0x3fdf167a95c853c1              # double 0.48574699999999998
	.quad	0x3fe24c4ac6cdaf4b              # double 0.57181300000000002
	.quad	0x3fd38088509bf9c6              # double 0.30471999999999999
	.quad	0x3fdaa2e3c536d656              # double 0.41619200000000001
	.quad	0x3fa6fa1e3eaf6838              # double 0.044877
	.quad	0x3fb7d0aed99cbee8              # double 0.093028
	.quad	0x3fe8a4ca4f440af2              # double 0.77011600000000002
	.quad	0x3fdbfc86cebbba56              # double 0.43728800000000001
	.quad	0x3feaff13059641f6              # double 0.84363699999999997
	.quad	0x3fb717268d32830a              # double 0.090196999999999999
	.quad	0x3fa4b2b777d0f1f5              # double 0.040425999999999997
	.quad	0x3fe745fbf83382e4              # double 0.72729299999999997
	.quad	0x3faa4f227d028a1e              # double 0.051385
	.quad	0x3fefe4430b178b37              # double 0.99661399999999999
	.quad	0x3feb00baa582dbe8              # double 0.84383900000000001
	.quad	0x3fe6cf5d35653c9b              # double 0.71281300000000003
	.quad	0x3fdcf6598e10cf5b              # double 0.45253599999999999
	.quad	0x3fe3255d1c3ac92a              # double 0.59831100000000004
	.quad	0x3fe1ffcb923a29c7              # double 0.56247499999999995
	.quad	0x3fd29ca18bd66278              # double 0.29081000000000001
	.quad	0x3fe9360285ec3dab              # double 0.78784299999999996
	.quad	0x3fd0c6045baf533f              # double 0.26208599999999999
	.quad	0x3fe0a98aa8650e78              # double 0.52069600000000005
	.quad	0x3fde873797460243              # double 0.47700300000000001
	.quad	0x3fcb0507a6bd6e8b              # double 0.211091
	.quad	0x3fe60c069e7fb268              # double 0.68896800000000002
	.quad	0x3fd8b3f63c31df76              # double 0.38598399999999999
	.quad	0x3fe96ad0c3d25248              # double 0.79428900000000002
	.quad	0x3fe683f705857aff              # double 0.70360900000000004
	.quad	0x3fe86d06fef7c244              # double 0.76330900000000001
	.quad	0x3fd4900c521dda06              # double 0.32129200000000002
	.quad	0x3fe102d7b634dad3              # double 0.53159699999999999
	.quad	0x3fea11ada76d97b3              # double 0.81465799999999999
	.quad	0x3fed6e568a50507a              # double 0.91971899999999995
	.quad	0x3fdc3ec892ab68cf              # double 0.441332
	.quad	0x3fe0cf67b1c0010c              # double 0.52531799999999995
	.quad	0x3fdb266ba493c89f              # double 0.42421999999999999
	.quad	0x3fee7359ff4fd6d8              # double 0.95158100000000001
	.quad	0x3fda6c82e019b0ab              # double 0.41287299999999999
	.quad	0x3fe478c436fc1590              # double 0.63974200000000003
	.quad	0x3feb86b37867f0aa              # double 0.86019299999999999
	.quad	0x3fe0fc371da37ef6              # double 0.53078800000000004
	.quad	0x3fefb4aa9717df1a              # double 0.99080400000000002
	.quad	0x3fdc38cda6e75ff6              # double 0.440967
	.quad	0x3fa007dd44135547              # double 0.031309999999999998
	.quad	0x3fd4620ab7132724              # double 0.31848399999999999
	.quad	0x3fc382235b4edb2f              # double 0.15240899999999999
	.quad	0x3fd0739b024f6599              # double 0.25705600000000001
	.quad	0x3fc9a0f0a5efe932              # double 0.20022400000000001
	.quad	0x3fee0489d27c3937              # double 0.93805400000000005
	.quad	0x3fec7cb923a29c78              # double 0.89022500000000004
	.quad	0x3fe542b0ea18372e              # double 0.66439099999999995
	.quad	0x3fecb79d909f1f15              # double 0.89741400000000004
	.quad	0x3fed1422ccb3a259              # double 0.90870799999999996
	.quad	0x3fed1f16b11c6d1e              # double 0.91004499999999999
	.quad	0x3fec397dd00f776c              # double 0.88201799999999996
	.quad	0x3fe6ac59fb1e18f0              # double 0.70853900000000003
	.quad	0x3fee8943e1006078              # double 0.95425599999999999
	.quad	0x3fd9c016052502ef              # double 0.40234900000000001
	.quad	0x3fc7f562174c4ce0              # double 0.18717600000000001
	.quad	0x3fef260913a4f872              # double 0.97339299999999995
	.quad	0x3fdf3be22e5de15d              # double 0.48803000000000002
	.quad	0x3fe768a71de69ad4              # double 0.73152499999999998
	.quad	0x3fe751deefe4ffc9              # double 0.72874399999999995
	.quad	0x3f5e85fd04a2fcf0              # double 0.0018630000000000001
	.quad	0x3fd7191148fd9fd3              # double 0.36090499999999998
	.quad	0x3fd6fbb9496249a1              # double 0.35911399999999999
	.quad	0x3fd24ae429e0a41a              # double 0.28582099999999999
	.quad	0x3fe8784a9478c869              # double 0.76468400000000003
	.quad	0x3fe00ab2e1693c04              # double 0.50130600000000003
	.quad	0x3fd6a5f41aef6f8f              # double 0.353879
	.quad	0x3fe117720c8cd63d              # double 0.53411200000000003
	.quad	0x3f7466f5019f3c71              # double 0.0049810000000000002
	.quad	0x3fb74080f98fa377              # double 0.090828000000000006
	.quad	0x3fe6577318fc5048              # double 0.69817499999999999
	.quad	0x3fd02b063e07a28c              # double 0.25262600000000002
	.quad	0x3fbb31c219eb6391              # double 0.106228
	.quad	0x3fe76536501e2585              # double 0.731105
	.quad	0x3fd4042d8c2a454e              # double 0.31275500000000001
	.quad	0x3f92c386d2ed783e              # double 0.018324
	.quad	0x3feada1cac083127              # double 0.83912500000000001
	.quad	0x3fd667fd3f5b5fa2              # double 0.35009699999999999
	.quad	0x3fc42b063e07a28c              # double 0.15756300000000001
	.quad	0x3fe5c80e8c8abd5e              # double 0.68067100000000003
	.quad	0x3fda85553ef6b5d4              # double 0.41438799999999998
	.quad	0x3fe0ad490e66cb10              # double 0.52115299999999998
	.quad	0x3fd340f238972043              # double 0.30083900000000002
	.quad	0x3fe3a949a5657fb7              # double 0.61441500000000004
	.quad	0x3fef37564302b40f              # double 0.97550499999999995
	.quad	0x3fecc36fc158fb44              # double 0.89885700000000001
	.quad	0x3fd5d3e0bd44998d              # double 0.341057
	.quad	0x3fd132617c1bda51              # double 0.26869999999999999
	.quad	0x3fe27f609dcf8940              # double 0.57804900000000004
	.quad	0x3fe63c87db2b3461              # double 0.69488899999999998
	.quad	0x3fd28476f2a5a46a              # double 0.28933500000000001
	.quad	0x3fccd9cf13cee9dd              # double 0.22539699999999999
	.quad	0x3fe512f6e82949a5              # double 0.65856499999999996
	.quad	0x3fbaacb85a4f00ef              # double 0.104198
	.quad	0x3feab2a27f1b6912              # double 0.83430599999999999
	.quad	0x3fdaccee5abc0e39              # double 0.41875800000000002
	.quad	0x3fed0b588e368f08              # double 0.90763499999999997
	.quad	0x3fde855970b49e02              # double 0.47688900000000001
	.quad	0x3fc1f10667f90d9d              # double 0.14016799999999999
	.quad	0x3fb5b34a44c7b02d              # double 0.084766999999999995
	.quad	0x3fe91f40a2877ee5              # double 0.78506500000000001
	.quad	0x3fe45e1c15097c81              # double 0.63648800000000005
	.quad	0x3fe5142b302f72b4              # double 0.65871199999999996
	.quad	0x3fe816af038e29fa              # double 0.75276900000000002
	.quad	0x3fee74adbc664d3c              # double 0.951743
	.quad	0x3fea2393ee5eedcc              # double 0.81684299999999998
	.quad	0x3fecc4284dfce315              # double 0.89894499999999999
	.quad	0x3fea64dc22ab25b3              # double 0.82481199999999999
	.quad	0x3fe9abc72e275ab8              # double 0.80221900000000002
	.quad	0x3fdab06c43f5f916              # double 0.417018
	.quad	0x3fe83bc903ea704c              # double 0.75729800000000002
	.quad	0x3fec906034f3fd93              # double 0.89262399999999997
	.quad	0x3fe94447c30d306a              # double 0.78958499999999998
	.quad	0x3fe90df58c08b75f              # double 0.78295400000000004
	.quad	0x3fe9c7fdc5931ca8              # double 0.80566300000000002
	.quad	0x3fb7ddca4b124d0a              # double 0.093228000000000005
	.quad	0x3fe8dfdcdf698783              # double 0.77732699999999999
	.quad	0x3fe6314ca925fe97              # double 0.69351799999999997
	.quad	0x3fe4fa6bd6e8af81              # double 0.65556899999999996
	.quad	0x3fad9b8023a6ce36              # double 0.057827000000000003
	.quad	0x3fdf40e5a35d67ba              # double 0.48833599999999999
	.quad	0x3fc0d3bf2f555821              # double 0.131462
	.quad	0x3fd0de7ea5f84cad              # double 0.26357999999999998
	.quad	0x3fe6c93ea2d2fe3f              # double 0.71206599999999998
	.quad	0x3f967c6b8b69552e              # double 0.021958999999999999
	.quad	0x3fd8ab606b7aa25e              # double 0.38546000000000002
	.quad	0x3fe6578811b1d92b              # double 0.69818499999999994
	.quad	0x3fc2102ff8ec0f88              # double 0.14111899999999999
	.quad	0x3fc6183f91e646f1              # double 0.17261499999999999
	.quad	0x3fc126e115592d99              # double 0.13399900000000001
	.quad	0x3fe55629d8409e56              # double 0.66676800000000003
	.quad	0x3fd859e6256366d8              # double 0.38048700000000002
	.quad	0x3fee8fe047d3d428              # double 0.95506299999999999
	.quad	0x3fe24d31769a9110              # double 0.57192299999999996
	.quad	0x3fd1bbadc0980b24              # double 0.27707999999999999
	.quad	0x3fd961e0c5a8155d              # double 0.39659899999999998
	.quad	0x3fe555bccaf709b7              # double 0.66671599999999998
	.quad	0x3fe229717df19d67              # double 0.56755900000000004
	.quad	0x3fdd643cc07aaef3              # double 0.45924300000000001
	.quad	0x3f4dd1a21ea35936              # double 9.1E-4
	.quad	0x3fe0cc0379314446              # double 0.52490400000000004
	.quad	0x3fe27c32ebe596c8              # double 0.57766099999999998
	.quad	0x3fe040b135979182              # double 0.50789700000000004
	.quad	0x3f9b4aa9717df19d              # double 0.026651999999999999
	.quad	0x3fdf117f84449dbf              # double 0.48544300000000001
	.quad	0x3fd9f19934efcbd5              # double 0.40537099999999998
	.quad	0x3facaf0bf1a5ca2a              # double 0.056023000000000003
	.quad	0x3feea66772d5e072              # double 0.95781300000000003
	.quad	0x3fb75989df1172ef              # double 0.091209999999999999
	.quad	0x3feac9afe1da7b0b              # double 0.83711999999999998
	.quad	0x3fe7ba81dc0db270              # double 0.74151699999999998
	.quad	0x3fc0f7446f9b994e              # double 0.132546
	.quad	0x3fa88205ff1d81f1              # double 0.047867
	.quad	0x3fdbd92fb19e731d              # double 0.43513099999999999
	.quad	0x3fe0d0ebaade657c              # double 0.52550300000000005
	.quad	0x3fdeca686e7e62dc              # double 0.48110399999999998
	.quad	0x3fed7bb9496249a1              # double 0.92135299999999998
	.quad	0x3fe332a0663c74fb              # double 0.59992999999999996
	.quad	0x3fd41b9b66f9335d              # double 0.31418499999999999
	.quad	0x3feaf4b838c111ae              # double 0.84237300000000004
	.quad	0x3fcd15df6555c52e              # double 0.22722999999999999
	.quad	0x3feabdab5c39bcba              # double 0.83565299999999998
	.quad	0x3fc14cb9ecf63800              # double 0.135154
	.quad	0x3fdb14057082491b              # double 0.423097
	.quad	0x3fd756ffc115df65              # double 0.36468499999999998
	.quad	0x3fd53415b1422ccb              # double 0.33130399999999999
	.quad	0x3feb745bf26f1dc5              # double 0.85795399999999999
	.quad	0x3fc63b70ef566491              # double 0.17368900000000001
	.quad	0x3fe5285a921ccd96              # double 0.66117599999999999
	.quad	0x3fc5cd1c7de5082d              # double 0.170322
	.quad	0x3f98626f60e0eb68              # double 0.023813000000000001
	.quad	0x3fed851a86940358              # double 0.92249800000000004
	.quad	0x3feb21be2b4959e6              # double 0.84786899999999998
	.quad	0x3fedf6a93f290abb              # double 0.93635999999999997
	.quad	0x3fe73d7b2031ceaf              # double 0.72625499999999998
	.quad	0x3fe8ca2120e1f7d7              # double 0.77467399999999997
	.quad	0x3fe4d7add15f02c5              # double 0.65132800000000002
	.quad	0x3fef8d4562e09fe8              # double 0.98599499999999995
	.quad	0x3fe75441355475a3              # double 0.72903499999999999
	.quad	0x3fe85f3b645a1cac              # double 0.76162499999999999
	.quad	0x3fcfd7dbf487fcb9              # double 0.248775
	.quad	0x3fe745b8dc55000d              # double 0.72726100000000005
	.quad	0x3fdf2253111f0c35              # double 0.48647000000000001
	.quad	0x3fbf5c9e6687f456              # double 0.122507
	.quad	0x3fc6568a50507a6c              # double 0.174516
	.quad	0x3fc71cfbb949624a              # double 0.18057200000000001
	.quad	0x3fef224894c447c3              # double 0.97293499999999999
	.quad	0x3fb712b1b36bd2b7              # double 0.090129000000000001
	.quad	0x3fdc8793dd97f62b              # double 0.44577499999999998
	.quad	0x3fa8c9fb6134ce3e              # double 0.048416000000000001
	.quad	0x3fb5c79b34a44c7b              # double 0.085077
	.quad	0x3fdfecd8dbcec850              # double 0.49883100000000002
	.quad	0x3fc7654d61b2a27f              # double 0.182779
	.quad	0x3feb0deb0fadf2ed              # double 0.84544900000000001
	.quad	0x3fa93e1c9b413986              # double 0.049301999999999999
	.quad	0x3fdcf837b4a2339c              # double 0.45265
	.quad	0x3fe76ea854477ff1              # double 0.73225799999999996
	.quad	0x3fc653a81dc0db27              # double 0.174428
	.quad	0x3fcf17939a7c17a9              # double 0.24290700000000001
	.quad	0x3fea5cb1465e8922              # double 0.82381499999999996
	.quad	0x3fdd5b291b823c86              # double 0.45868900000000001
	.quad	0x3fc4605681ecd4aa              # double 0.15919
	.quad	0x3fe4bb96af038e2a              # double 0.647899
	.quad	0x3fb9bad3a604e1e7              # double 0.100507
	.quad	0x3fd2323bbc6eb0b8              # double 0.28431600000000001
	.quad	0x3fe121511dffc548              # double 0.53531700000000004
	.quad	0x3fd80813cab81f97              # double 0.37549300000000002
	.quad	0x3fc644955b4677b4              # double 0.17396800000000001
	.quad	0x3fd772de43ed959a              # double 0.36638599999999999
	.quad	0x3fc0bd5dc4007571              # double 0.13077900000000001
	.quad	0x3fd9228997c3d684              # double 0.392733
	.quad	0x3fe8cd2f5dbb9cfa              # double 0.77504700000000004
	.quad	0x3fedf63e4abe6a33              # double 0.93630899999999995
	.quad	0x3fecdc91d14e3bcd              # double 0.90192499999999998
	.quad	0x3fcb9c304ccee5ac              # double 0.21570400000000001
	.quad	0x3fe827daa4fca42b              # double 0.75486500000000001
	.quad	0x3fd9bd987c6327ee              # double 0.40219700000000003
	.quad	0x3fe2a5785f8d2e51              # double 0.58269899999999997
	.quad	0x3fe8f3bea91d9b1b              # double 0.77975399999999995
	.quad	0x3fc811c2a0232096              # double 0.18804199999999999
	.quad	0x3fea20f0a5efe932              # double 0.81652100000000005
	.quad	0x3fe6a74e22a2c237              # double 0.70792299999999997
	.quad	0x3fec56fda836eb4f              # double 0.88561900000000005
	.quad	0x3fee15c853c14834              # double 0.94015899999999996
	.quad	0x3feb1975f2cb6417              # double 0.846858
	.quad	0x3fe997763e4abe6a              # double 0.79973899999999998
	.quad	0x3fe2bc664d3bf2f5              # double 0.58549799999999996
	.quad	0x3fd81b823c85c24c              # double 0.37667899999999999
	.quad	0x3fefc1d084e831ad              # double 0.99240899999999998
	.quad	0x3fd728fe260b2c84              # double 0.361877
	.quad	0x3fb4b1ee2435696e              # double 0.080839999999999995
	.quad	0x3fd11d19157abb88              # double 0.267401
	.quad	0x3f9420f6f08cc576              # double 0.019657000000000001
	.quad	0x3fd02b90a7829069              # double 0.25265900000000002
	.quad	0x3fd285fd04a2fcf0              # double 0.28942800000000002
	.quad	0x3fdce44fa05143bf              # double 0.45143499999999998
	.quad	0x3fe32ed99cbee808              # double 0.59946900000000003
	.quad	0x3fe98bfc2224edf6              # double 0.79833799999999999
	.quad	0x3fe02f5558212945              # double 0.50577799999999995
	.quad	0x3fb9210385c67dfe              # double 0.098159999999999997
	.quad	0x3fd468db8bac710d              # double 0.31890000000000002
	.quad	0x3fee73d9ec700043              # double 0.95164199999999999
	.quad	0x3fe554fdf3b645a2              # double 0.66662500000000002
	.quad	0x3fd7bef8ceb356da              # double 0.371031
	.quad	0x3fb9d798d8a979e1              # double 0.10094599999999999
	.quad	0x3fc0c154c985f06f              # double 0.13089999999999999
	.quad	0x3fee20ad8a11665a              # double 0.94148900000000002
	.quad	0x3fe6b48b220791c5              # double 0.70953900000000003
	.quad	0x3fe8ba57eaa2a0a9              # double 0.77274699999999996
	.quad	0x3fdbc89b0ee49f51              # double 0.43411899999999998
	.quad	0x3fe152fa0d77b7c8              # double 0.54137900000000005
	.quad	0x3feadad538ac18f8              # double 0.83921299999999999
	.quad	0x3fccb8c75c4a83b2              # double 0.22438900000000001
	.quad	0x3fe93e5fb71fbc5e              # double 0.78886400000000001
	.quad	0x3fe927c17a89331a              # double 0.786103
	.quad	0x3fd796e158750c1c              # double 0.36858400000000002
	.quad	0x3fd9f1800a7c5ac4              # double 0.40536499999999998
	.quad	0x3fe13e39f77292c5              # double 0.53884600000000005
	.quad	0x3fb423315d701d9f              # double 0.078661999999999996
	.quad	0x3fec59be4cd74928              # double 0.88595500000000005
	.quad	0x3fe643c3a42f1ed1              # double 0.69577199999999995
	.quad	0x3fd7d0fe8ab4fa48              # double 0.37213099999999999
	.quad	0x3fbdd5c31593e5fb              # double 0.11654299999999999
	.quad	0x3fe493c89f40a287              # double 0.64303999999999994
	.quad	0x3fee9cb6848beb5b              # double 0.95662999999999998
	.quad	0x3fdb60e0eb67c287              # double 0.427788
	.quad	0x3fc5d22856605ee5              # double 0.17047599999999999
	.quad	0x3fd4cc100e6afcce              # double 0.32495499999999999
	.quad	0x3fe06c56d5cfaace              # double 0.51322500000000004
	.quad	0x3fe3754f3775b813              # double 0.60807
	.quad	0x3fe63bba55d1c3ad              # double 0.69479100000000005
	.quad	0x3fc448c7192ea52f              # double 0.158471
	.quad	0x3feb60b4e11dbca9              # double 0.85555499999999995
	.quad	0x3fee189374bc6a7f              # double 0.9405
	.quad	0x3fcaedfe75bc44bf              # double 0.21038799999999999
	.quad	0x3fdb887229e90796              # double 0.430203
	.quad	0x3facd1e96c3fc43b              # double 0.056288999999999999
	.quad	0x3fe64968943e1006              # double 0.696461
	.quad	0x3fcfa365cb35f3d8              # double 0.247174
	.quad	0x3fedca36199780bb              # double 0.93093400000000004
	.quad	0x3fbcf51ac9afe1da              # double 0.11311499999999999
	.quad	0x3fd873c925785f8d              # double 0.38206699999999999
	.quad	0x3fefd49d7ba6698c              # double 0.99470400000000003
	.quad	0x3fee6e158750c1b9              # double 0.95093799999999995
	.quad	0x3feb9e7b80a9de8b              # double 0.86309599999999997
	.quad	0x3fd2edbb59ddc1e8              # double 0.29576000000000002
	.quad	0x3fe01d7342edbb5a              # double 0.50359500000000001
	.quad	0x3fcc5907d912556d              # double 0.221467
	.quad	0x3fe8376f6d762520              # double 0.75676699999999996
	.quad	0x3fead02eec7c957d              # double 0.83791300000000002
	.quad	0x3fd18ecd8dbcec85              # double 0.274341
	.quad	0x3fc3ecdd0d8cb07d              # double 0.155666
	.quad	0x3fe2b33764f11b61              # double 0.58437700000000004
	.quad	0x3fe0c54de7ea5f85              # double 0.52408500000000002
	.quad	0x3fa94898f605ab3b              # double 0.049382000000000002
	.quad	0x3fa088d6d3b6cbda              # double 0.032294000000000003
	.quad	0x3fe35515054ac29c              # double 0.60413600000000001
	.quad	0x3fa01adea897635e              # double 0.031454999999999997
	.quad	0x3fc6917d6b65a9a8              # double 0.176315
	.quad	0x3fd53ccd0fe8ab50              # double 0.33183600000000002
	.quad	0x3fde2ca57a786c22              # double 0.47147499999999998
	.quad	0x3fe5bc105186db51              # double 0.67920700000000001
	.quad	0x3fde263d816aceab              # double 0.471084
	.quad	0x3fe937c99ae924f2              # double 0.78805999999999998
	.quad	0x3fda731098d477bc              # double 0.413273
	.quad	0x3fce8c60cbf2b23a              # double 0.23865900000000001
	.quad	0x3fde73a365cb35f4              # double 0.47580800000000001
	.quad	0x3fe4206c8711d799              # double 0.62895800000000002
	.quad	0x3fe84046412cf0fa              # double 0.75784600000000002
	.quad	0x3fbd4ed2cbea4ebe              # double 0.114484
	.quad	0x3fd2ffd60e94ee39              # double 0.29686499999999999
	.quad	0x3fb4acaff6d33094              # double 0.080759999999999998
	.quad	0x3feb7aca36199781              # double 0.85873900000000003
	.quad	0x3fe5bd61f5be5d9e              # double 0.67936799999999997
	.quad	0x3feae8ab4fa48302              # double 0.84090200000000004
	.quad	0x3fe126634117f844              # double 0.53593599999999997
	.quad	0x3fd8f3f52fc2656b              # double 0.38989000000000001
	.quad	0x3fa4463065f9591d              # double 0.039598000000000001
	.quad	0x3fbc2539756c93a7              # double 0.109943
	.quad	0x3fef0c8abd5dc400              # double 0.97028099999999995
	.quad	0x3fee9d3671ac14c6              # double 0.95669099999999996
	.quad	0x3fd9219a847b2464              # double 0.39267600000000003
	.quad	0x3fee2aa3ad18d25f              # double 0.94270500000000002
	.quad	0x3fcd8288051c9f73              # double 0.230546
	.quad	0x3fef029f16b11c6d              # double 0.96906999999999998
	.quad	0x3fedcb4d056c508b              # double 0.93106699999999998
	.quad	0x3fee329e4d5d80e5              # double 0.94367900000000005
	.quad	0x3fd1d5885d31337f              # double 0.27865800000000002
	.quad	0x3fb18a65492ff4ba              # double 0.068517999999999996
	.quad	0x3fe2b4e7685985ad              # double 0.58458299999999996
	.quad	0x3f6cfdd22856605f              # double 0.003539
	.quad	0x3fd08b75ea67e847              # double 0.25851200000000002
	.quad	0x3fe546d82ba5a038              # double 0.66489799999999999
	.quad	0x3fc9b2e59af9ebea              # double 0.20077200000000001
	.quad	0x3fa3f50e34762952              # double 0.038979
	.quad	0x3fd828a6117720c9              # double 0.37748100000000001
	.quad	0x3fe6cbab649d388b              # double 0.71236200000000005
	.quad	0x3fe1b93ee5eedcc2              # double 0.55386299999999999
	.quad	0x3fb5552e2fbe33ad              # double 0.083331000000000002
	.quad	0x3fe259d99029ae4f              # double 0.57346799999999998
	.quad	0x3fe721cac083126f              # double 0.72287500000000005
	.quad	0x3fb75a31a4bdba0a              # double 0.091219999999999995
	.quad	0x3fc18f92af9a8cdf              # double 0.13719400000000001
	.quad	0x3fd8bef8ceb356da              # double 0.386656
	.quad	0x3fc46822ff08893b              # double 0.15942799999999999
	.quad	0x3fee8f605ab3aabd              # double 0.95500200000000002
	.quad	0x3fe7ec6de76427c8              # double 0.74761100000000003
	.quad	0x3faf4ddf86e3b470              # double 0.061141000000000001
	.quad	0x3fc4925fe974a340              # double 0.160717
	.quad	0x3fed942f61ed5ae2              # double 0.92433900000000002
	.quad	0x3fd234267839cd81              # double 0.28443299999999999
	.quad	0x3feab33daf8df7a5              # double 0.83438000000000001
	.quad	0x3fe73e40420f6f09              # double 0.72634900000000002
	.quad	0x3fee9a30984e3fff              # double 0.95632200000000001
	.quad	0x3fe8b1a08bfc2225              # double 0.77168300000000001
	.quad	0x3fc9154003254e6e              # double 0.195961
	.quad	0x3fdf63497b7414a5              # double 0.49043500000000001
	.quad	0x3fc7ff1d81f10668              # double 0.187473
	.quad	0x3fe3aa66dbd72bcb              # double 0.61455099999999996
	.quad	0x3fd83dee78183f92              # double 0.37878000000000001
	.quad	0x3fe2044ae85b9e8c              # double 0.56302399999999997
	.quad	0x3fdc74256bca5376              # double 0.44458900000000001
	.quad	0x3fecd1ed9dfdac69              # double 0.90062600000000004
	.quad	0x3fe1a2877ee4e26d              # double 0.55108999999999997
	.quad	0x3fcef1348b220792              # double 0.24173600000000001
	.quad	0x3fe1c25f202107b8              # double 0.55497700000000005
	.quad	0x3fe26631f8a0902e              # double 0.57497500000000001
	.quad	0x3f9d09e12a51e322              # double 0.028358000000000001
	.quad	0x3fd293c89f40a287              # double 0.29026999999999997
	.quad	0x3fe8903a7546d3fa              # double 0.76760600000000001
	.quad	0x3fe0d712a0ec7432              # double 0.526254
	.quad	0x3fcc56ffc115df65              # double 0.22140499999999999
	.quad	0x3feb466f5019f3c7              # double 0.85234799999999999
	.quad	0x3fe1c039abf33871              # double 0.55471499999999996
	.quad	0x3feb40f66a550870              # double 0.85167999999999999
	.quad	0x3fd072d1aeb3dd12              # double 0.25700800000000001
	.quad	0x3fd7cc857f3061c8              # double 0.37185800000000002
	.quad	0x3fe2052d666a9824              # double 0.56313199999999997
	.quad	0x3fe9c80e8c8abd5e              # double 0.80567100000000003
	.quad	0x3fdf440af1cb89d7              # double 0.48852800000000002
	.quad	0x3fe10405b39e279e              # double 0.53174100000000002
	.quad	0x3fe211dbca9691a7              # double 0.56467999999999996
	.quad	0x3fd2c4c9c90c4dec              # double 0.29326099999999999
	.quad	0x3fd306d938151a43              # double 0.29729299999999997
	.quad	0x3fe788b11409a240              # double 0.73543599999999998
	.quad	0x3fcfff47735c182f              # double 0.24997800000000001
	.quad	0x3fcf51efb6dca07f              # double 0.24468799999999999
	.quad	0x3fd56afcce1c5825              # double 0.33465499999999998
	.quad	0x3fdaf25e56cd6c2f              # double 0.421043
	.quad	0x3fe8e2c55c96030c              # double 0.77768199999999998
	.quad	0x3fe2b7c7820a30db              # double 0.58493399999999995
	.quad	0x3fe73b9cf9a06a6e              # double 0.72602699999999998
	.quad	0x3fc9172ef0ae5365              # double 0.19602
	.quad	0x3fe231b36bd2b6f2              # double 0.56856700000000004
	.quad	0x3fe905510d38cda7              # double 0.78189900000000001
	.quad	0x3fdb962cfd8f0c78              # double 0.43104100000000001
	.quad	0x3fd7219a847b2464              # double 0.36142600000000003
	.quad	0x3fed9394317acc4f              # double 0.924265
	.quad	0x3fdc9a4df47f993d              # double 0.44691799999999998
	.quad	0x3f94bdfd2630ec31              # double 0.020256
	.quad	0x3fec1b97353b4b30              # double 0.87836800000000004
	.quad	0x3fea2355043e5322              # double 0.81681300000000001
	.quad	0x3fe38f648c7192ea              # double 0.61125399999999996
	.quad	0x3fe8de8709741d08              # double 0.77716399999999997
	.quad	0x3fc8ed1394317acc              # double 0.19473499999999999
	.quad	0x3fd77c7820a30db7              # double 0.36697200000000002
	.quad	0x3f7b845564b662fe              # double 0.006718
	.quad	0x3fe08eb8950763a2              # double 0.51742200000000005
	.quad	0x3fbc4c5974e65bea              # double 0.11054
	.quad	0x3fe238f36694898f              # double 0.56945199999999996
	.quad	0x3fee2e4b018611fd              # double 0.94315099999999996
	.quad	0x3fec4471b4784231              # double 0.883355
	.quad	0x3fc8357a355043e5              # double 0.18913199999999999
	.quad	0x3fd3929aa1d755bd              # double 0.30582300000000001
	.quad	0x3fdbca46e08f2171              # double 0.43422100000000002
	.quad	0x3fe70d9945b6c376              # double 0.72040999999999999
	.quad	0x3fe4bc925785f8d3              # double 0.64801900000000001
	.quad	0x3fd03fb3743632c2              # double 0.253888
	.quad	0x3fc85072085b1855              # double 0.18995500000000001
	.quad	0x3fea880b673c4f3c              # double 0.82910700000000003
	.quad	0x3fce9478c868b9fe              # double 0.23890600000000001
	.quad	0x3fd1fe86833c6003              # double 0.28116000000000002
	.quad	0x3f3a048e043a2164              # double 3.97E-4
	.quad	0x3fe562b063e07a29              # double 0.66829700000000003
	.quad	0x3fab078d92fb19e7              # double 0.052791999999999999
	.quad	0x3fa6d30f062d40ab              # double 0.044579000000000001
	.quad	0x3fd42b8c75c4a83b              # double 0.31515799999999999
	.quad	0x3fc046ae3a3a8e71              # double 0.12715699999999999
	.quad	0x3fe0bc792d1287c2              # double 0.523007
	.quad	0x3fe99949e8815e39              # double 0.79996199999999995
	.quad	0x3fe357470eb24a6b              # double 0.60440400000000005
	.quad	0x3fd2e87d2c7b890d              # double 0.29543999999999998
	.quad	0x3fe4d6733ebbfd72              # double 0.65117800000000003
	.quad	0x3fa4b9ecf6380022              # double 0.040481000000000003
	.quad	0x3fcd7f51efb6dca0              # double 0.23044799999999999
	.quad	0x3fead18d25edd053              # double 0.83808000000000005
	.quad	0x3fed9b10fd7e4580              # double 0.92517899999999997
	.quad	0x3fe6246bf01322f2              # double 0.69194599999999995
	.quad	0x3fb71f79420b3d4b              # double 0.090324000000000002
	.quad	0x3fc89fa54c554328              # double 0.19237199999999999
	.quad	0x3fec775d9a0f0a5f              # double 0.889571
	.quad	0x3fe17993d5347a5b              # double 0.54609099999999999
	.quad	0x3fefcaa53fc00970              # double 0.99348700000000001
	.quad	0x3fd2abd1aa821f2a              # double 0.29173700000000002
	.quad	0x3fef50c1b97353b5              # double 0.97860800000000003
	.quad	0x3fefadc6e2a80065              # double 0.98996300000000003
	.quad	0x3fe0fbb9496249a1              # double 0.53072799999999998
	.quad	0x3fdb96fa82e87d2c              # double 0.43108999999999997
	.quad	0x3fc5b927d45a5fc8              # double 0.169713
	.quad	0x3fe7a8b2a6b0d951              # double 0.73934299999999997
	.quad	0x3fe23c5154866a12              # double 0.56986300000000001
	.quad	0x3fcc81c2e33eff19              # double 0.22270999999999999
	.quad	0x3fcb878316a05575              # double 0.21507299999999999
	.quad	0x3fc254bcf0b6b6e1              # double 0.143211
	.quad	0x3fe7456b441bb8c3              # double 0.72722399999999998
	.quad	0x3fe4f5e6362a5e78              # double 0.65501699999999996
	.quad	0x3fe532edfe75bc45              # double 0.66246700000000003
	.quad	0x3fe468986fcdee35              # double 0.637768
	.quad	0x3fe893a2df9378ee              # double 0.76802199999999998
	.quad	0x3fc944241c3efae8              # double 0.19739200000000001
	.quad	0x3febfde939eadd59              # double 0.87474499999999999
	.quad	0x3fe5244e93e1c9b4              # double 0.66068199999999999
	.quad	0x3fe815b1422ccb3a              # double 0.75264799999999998
	.quad	0x3faa50d6b228dc98              # double 0.051397999999999999
	.quad	0x3fd778dd616f86a1              # double 0.36675200000000002
	.quad	0x3fc20ec743201041              # double 0.14107600000000001
	.quad	0x3fd2a7221858bc5a              # double 0.29145100000000002
	.quad	0x3fec0815e39713ad              # double 0.87598699999999996
	.quad	0x3fd7dd54da4ce810              # double 0.37288399999999999
	.quad	0x3fe047e06961c369              # double 0.50877399999999995
	.quad	0x3fdad5629d8409e5              # double 0.41927399999999998
	.quad	0x3fd325e56cd6c2f0              # double 0.29918800000000001
	.quad	0x3fd4c0db2702a348              # double 0.32427099999999998
	.quad	0x3fe4506bbdbe3c10              # double 0.63481699999999996
	.quad	0x3fdb56b873797460              # double 0.42716799999999999
	.quad	0x3fe33708aac96cc6              # double 0.600468
	.quad	0x3fe2e8f29d40ee07              # double 0.59093600000000002
	.quad	0x3fe5b56b87379746              # double 0.678396
	.quad	0x3febb0d51f81a587              # double 0.86533599999999999
	.quad	0x3fefa131a8ef77f2              # double 0.98842699999999994
	.quad	0x3fdb4467381d7dbf              # double 0.42604999999999998
	.quad	0x3fce57eaa2a0a958              # double 0.23705799999999999
	.quad	0x3fdc3925bb7b6bb1              # double 0.44098799999999999
	.quad	0x3fc8a2339c0ebee0              # double 0.19245000000000001
	.quad	0x3fed78db4890928a              # double 0.92100300000000002
	.quad	0x3fcc111ada76d97b              # double 0.21927199999999999
	.quad	0x3fe0be553ac4f7ec              # double 0.52323399999999998
	.quad	0x3fe9cc8de2ac3223              # double 0.80622000000000005
	.quad	0x3fb95ef1fddebd90              # double 0.099104999999999998
	.quad	0x3fe606bdf4c2b51c              # double 0.68832300000000002
	.quad	0x3fc3ef7c243dccea              # double 0.155746
	.quad	0x3f48c5c9a34ca0c3              # double 7.5600000000000005E-4
	.quad	0x3fdf4d87724fa8b5              # double 0.48910700000000001
	.quad	0x3fb15ce9e5e24788              # double 0.067823999999999995
	.quad	0x3fef38bac710cb29              # double 0.97567499999999995
	.quad	0x3fa84ddb5525cc42              # double 0.047468999999999997
	.quad	0x3fe0f3cd573647bb              # double 0.52976100000000004
	.quad	0x3fea3ec02f2f9874              # double 0.82016
	.quad	0x3fcfb1e18efbb0e6              # double 0.247616
	.quad	0x3fe4d63886594af5              # double 0.65115000000000001
	.quad	0x3fcd73215fcc1872              # double 0.230076
	.quad	0x3fb4db163baba7b9              # double 0.081467999999999999
	.quad	0x3fed7bfa4c61d862              # double 0.92138399999999998
	.quad	0x3fd60bdcad14a0a1              # double 0.344474
	.quad	0x3fe4a480e8c8abd6              # double 0.64508100000000002
	.quad	0x3fe825fc7e6b3fea              # double 0.754637
	.quad	0x3febb25b317efe0d              # double 0.86552200000000001
	.quad	0x3fe087a28bb0a2cb              # double 0.51655700000000004
	.quad	0x3fe136a400fba882              # double 0.53791999999999995
	.quad	0x3fb4534bd76ee73e              # double 0.079395999999999994
	.quad	0x3fe55b1422ccb3a2              # double 0.66736799999999996
	.quad	0x3fdab8c75c4a83b2              # double 0.41752800000000001
	.quad	0x3fe60c5a8155d5f5              # double 0.68900799999999995
	.quad	0x3fe4e5e2478854ce              # double 0.65306200000000003
	.quad	0x3fe96d5f138bcdff              # double 0.794601
	.quad	0x3fc9226c3b927d46              # double 0.19636300000000001
	.quad	0x3fef385c67dfe32a              # double 0.97563
	.quad	0x3fe74f722e1ac57e              # double 0.72844799999999998
	.quad	0x3febdd91ab8e8ea4              # double 0.87079700000000004
	.quad	0x3fe8c37c5692b3cc              # double 0.77386299999999996
	.quad	0x3fe98c4bd33d2956              # double 0.79837599999999997
	.quad	0x3fc8ad3e920c069e              # double 0.19278699999999999
	.quad	0x3fc0f6f8f041461b              # double 0.13253699999999999
	.quad	0x3fe2775104d551d7              # double 0.57706500000000005
	.quad	0x3fec9c25d074213a              # double 0.89406099999999999
	.quad	0x3fe87d9fd36f7e3d              # double 0.76533499999999999
	.quad	0x3fe634245f5ad96a              # double 0.69386499999999995
	.quad	0x3faec226809d4952              # double 0.060075000000000003
	.quad	0x3fec5a48b6523704              # double 0.88602099999999994
	.quad	0x3fe66a6e32e3821b              # double 0.700492
	.quad	0x3fe33cb1cc964628              # double 0.601159
	.quad	0x3fe93124d099e0e7              # double 0.78724899999999998
	.quad	0x3feef913e81450f0              # double 0.96790500000000002
	.quad	0x3fd901322f2734f8              # double 0.39069799999999999
	.quad	0x3fede9424e592967              # double 0.934724
	.quad	0x3fd7b7e90ff97247              # double 0.37059999999999998
	.quad	0x3fc246e08f217093              # double 0.142788
	.quad	0x3fdd5ec3dab5c39c              # double 0.45890900000000001
	.quad	0x3fefbbe0157eed46              # double 0.99168400000000001
	.quad	0x3fe03c98a222d517              # double 0.50739699999999999
	.quad	0x3fef43265add9c28              # double 0.976947
	.quad	0x3fb76672fba01eef              # double 0.091407000000000002
	.quad	0x3fd6b17481b21c47              # double 0.35458099999999998
	.quad	0x3fe91a8262456f76              # double 0.78448600000000002
	.quad	0x3fe10383ad9f0a1c              # double 0.53167900000000001
	.quad	0x3f9a89b951c5c572              # double 0.025916000000000002
	.quad	0x3fea8f51ac9afe1e              # double 0.82999500000000004
	.quad	0x3feb2c68a936c58f              # double 0.84917100000000001
	.quad	0x3fdf8b7e4de3b8a2              # double 0.49288900000000002
	.quad	0x3fe42cbc8c0ce91d              # double 0.63046100000000005
	.quad	0x3fead0ca1cef2410              # double 0.83798700000000004
	.quad	0x3fe404f2ae07e5a8              # double 0.62560400000000005
	.quad	0x3fc5fc9795b35b0c              # double 0.17177100000000001
	.quad	0x3fe38a6117720c8d              # double 0.61064200000000002
	.quad	0x3fd045e0b4e11dbd              # double 0.25426500000000002
	.quad	0x3fe2c91afc04c8bd              # double 0.58704900000000004
	.quad	0x3fda070329802c0a              # double 0.40667799999999998
	.quad	0x3fe5bb0813cab820              # double 0.67908100000000005
	.quad	0x3fed1b9b66f9335d              # double 0.90961999999999998
	.quad	0x3fe0705857afea3e              # double 0.513714
	.quad	0x3fc79cae21101b00              # double 0.18446899999999999
	.quad	0x3f798d045fe11127              # double 0.0062379999999999996
	.quad	0x3fe10bae89eba6ad              # double 0.53267600000000004
	.quad	0x3fd45c358afc47e5              # double 0.31812800000000002
	.quad	0x3fb89784ec636b09              # double 0.096061999999999995
	.quad	0x3fef530489d27c39              # double 0.97888399999999997
	.quad	0x3fdc71f36262cba7              # double 0.44445499999999999
	.quad	0x3fe9a808c8259e1f              # double 0.80176199999999997
	.quad	0x3fd2ef8487b99d45              # double 0.29586899999999999
	.quad	0x3fe35bdb5d894813              # double 0.60496300000000003
	.quad	0x3feeb886594af4f1              # double 0.96002500000000001
	.quad	0x3fdf7353b4b2fa94              # double 0.49141400000000002
	.quad	0x3fe3ef62f9ca5bd9              # double 0.62297199999999997
	.quad	0x3fe66ca25529fe00              # double 0.70076099999999997
	.quad	0x3fe21b3f20a73f75              # double 0.56582600000000005
	.quad	0x3fec0298cc144029              # double 0.87531700000000001
	.quad	0x3feee4c2f837b4a2              # double 0.96542499999999998
	.quad	0x3fce88df37329c34              # double 0.23855199999999999
	.quad	0x3fcfe07a28bb0a2d              # double 0.24903800000000001
	.quad	0x3fec4a0e410b630b              # double 0.88404000000000005
	.quad	0x3fe7873365881a15              # double 0.73525399999999996
	.quad	0x3fdc285ec3dab5c4              # double 0.43996400000000002
	.quad	0x3fa131ec0b567558              # double 0.033584000000000003
	.quad	0x3fdd84f8f8a4c1ec              # double 0.46124100000000001
	.quad	0x3fe0303c07ee0b0b              # double 0.505888
	.quad	0x3fdb2ab68cef672c              # double 0.42448200000000003
	.quad	0x3febe5cb35f3d7d4              # double 0.87180100000000004
	.quad	0x3fdfb6aa4b9884c7              # double 0.49552400000000002
	.quad	0x3fa2d0a244630660              # double 0.036748000000000003
	.quad	0x3fe5db2d4d4024b3              # double 0.68300499999999997
	.quad	0x3fcf950b955f7836              # double 0.24673600000000001
	.quad	0x3fec791a32b12d34              # double 0.88978299999999999
	.quad	0x3fb08b32ce89656f              # double 0.064624000000000001
	.quad	0x3fe6f542a23bff8b              # double 0.71743900000000005
	.quad	0x3fdf4b5dcc63f141              # double 0.48897499999999999
	.quad	0x3fd60e7bc3c5bd0e              # double 0.344634
	.quad	0x3fa3ad3a604e1e71              # double 0.038431
	.quad	0x3fc6e4a7b4e54f7b              # double 0.17885300000000001
	.quad	0x3fe300b673c4f3ba              # double 0.59383699999999995
	.quad	0x3fd2dba4d6e47dc3              # double 0.29465599999999997
	.quad	0x3fbb530ced4e4c94              # double 0.106736
	.quad	0x3fb650614163779f              # double 0.087164000000000005
	.quad	0x3f99285a921ccd96              # double 0.024568
	.quad	0x3fd650df15a4acf3              # double 0.348686
	.quad	0x3fd6538ac18f81e9              # double 0.34884900000000002
	.quad	0x3fdf053e2d6238da              # double 0.48469499999999999
	.quad	0x3fe92493c89f40a3              # double 0.78571500000000005
	.quad	0x3fb1f41aef6f8f04              # double 0.070130999999999999
	.quad	0x3fd20c1fc8f32379              # double 0.28199000000000002
	.quad	0x3fe2e568a50507a7              # double 0.59050400000000003
	.quad	0x3fe4aaef2c732592              # double 0.64586600000000005
	.quad	0x3fb4523f67f4dbe0              # double 0.079380000000000006
	.quad	0x3fce20ee8d10f51b              # double 0.23538000000000001
	.quad	0x3feaf449129888f8              # double 0.84231999999999996
	.quad	0x3fec16744b2b777d              # double 0.87774099999999999
	.quad	0x3fd75c2d2780778a              # double 0.36500100000000002
	.quad	0x3feb0e1719f7f8cb              # double 0.84547000000000005
	.quad	0x3fe8cdd93c46d82c              # double 0.77512800000000003
	.quad	0x3fdbb899392189be              # double 0.43314200000000003
	.quad	0x3fdd677f6b1a2a4e              # double 0.45944200000000002
	.quad	0x3fe6b9e8c47a17f4              # double 0.71019399999999999
	.quad	0x3fd6ab7995ee136e              # double 0.35421599999999998
	.quad	0x3fc6c729f59ccfaf              # double 0.177953
	.quad	0x3fd4646ae3a3a8e7              # double 0.318629
	.quad	0x3fee9c23b7952d23              # double 0.95655999999999997
	.quad	0x3feaf4aba3875925              # double 0.84236699999999998
	.quad	0x3fe56939eadd590c              # double 0.669095
	.quad	0x3fd64399b2c40d0b              # double 0.34787600000000002
	.quad	0x3fef1ca3a4b5568f              # double 0.97224600000000005
	.quad	0x3fdfe51d25aab474              # double 0.498359
	.quad	0x3fe2bc68661ae70c              # double 0.58549899999999999
	.quad	0x3fd61394317acc4f              # double 0.344945
	.quad	0x3fe9788b9778572a              # double 0.79596500000000003
	.quad	0x3fe2fa17f4128bf4              # double 0.59302900000000003
	.quad	0x3fe7b39e279dd3bb              # double 0.740676
	.quad	0x3fdf5c91d14e3bcd              # double 0.49002499999999999
	.quad	0x3feb8a3d70a3d70a              # double 0.86062499999999997
	.quad	0x3fb6bffcdab191de              # double 0.088867000000000001
	.quad	0x3fb24a59c065b63d              # double 0.071446999999999997
	.quad	0x3fe76ab367a0f909              # double 0.73177499999999995
	.quad	0x3fd05dbb9cf9a06a              # double 0.25572099999999998
	.quad	0x3fc09a2c669057d1              # double 0.12970499999999999
	.quad	0x3fd019e30014f8b6              # double 0.25158000000000003
	.quad	0x3fe88bfa0945f9df              # double 0.76708699999999996
	.quad	0x3fe3e3de6149c6f3              # double 0.62156599999999995
	.quad	0x3feae2ac322291fb              # double 0.84016999999999997
	.quad	0x3fe4e09dcf893faf              # double 0.65241899999999997
	.quad	0x3fda55714b9cb685              # double 0.41146500000000003
	.quad	0x3fcfb1422ccb3a26              # double 0.24759700000000001
	.quad	0x3fd7ca70d1fa3337              # double 0.37173099999999998
	.quad	0x3fe1ff1950331e3a              # double 0.56238999999999995
	.quad	0x3fe2ee75ff609dd0              # double 0.59160900000000005
	.quad	0x3fc51a08bfc2224f              # double 0.164857
	.quad	0x3fcb8d0cc35ce182              # double 0.21524199999999999
	.quad	0x3fc951a437824d4d              # double 0.19780400000000001
	.quad	0x3fbbeb4a66559f6f              # double 0.109059
	.quad	0x3fedc7ef177a7009              # double 0.93065600000000004
	.quad	0x3fdb31e7d9988d2a              # double 0.42492099999999999
	.quad	0x3fdffc69728a6117              # double 0.49978099999999998
	.quad	0x3fcbdccea28fe261              # double 0.21767600000000001
	.quad	0x3fe08cfe154434e3              # double 0.51721099999999998
	.quad	0x3f84d834091c0874              # double 0.010178
	.quad	0x3fe68f25a250f840              # double 0.70497399999999999
	.quad	0x3fed2acfb762d83c              # double 0.91147599999999995
	.quad	0x3fcd3e707e175d14              # double 0.228468
	.quad	0x3fe34679cc74b839              # double 0.60235300000000003
	.quad	0x3fd4759253543aeb              # double 0.31967600000000002
	.quad	0x3fef5bdb5d894813              # double 0.97996300000000002
	.quad	0x3fd68512231832fd              # double 0.35187200000000002
	.quad	0x3f9662bae03b3e9a              # double 0.021860999999999998
	.quad	0x3fdc5a5332acfb76              # double 0.44301299999999999
	.quad	0x3fd2fdb09a671ef3              # double 0.296734
	.quad	0x3fe5172474538ef3              # double 0.65907499999999997
	.quad	0x3fe7229e90795f67              # double 0.72297599999999995
	.quad	0x3fd125d074213a0c              # double 0.26793299999999998
	.quad	0x3fa305532617c1be              # double 0.037150000000000002
	.quad	0x3fcb272c94b380cb              # double 0.21213299999999999
	.quad	0x3fc99d12cadddf44              # double 0.20010600000000001
	.quad	0x3fd048ecd8dbcec8              # double 0.25445099999999998
	.quad	0x3fb4dd82fd75e204              # double 0.081504999999999994
	.quad	0x3fa111ada76d97b3              # double 0.033338
	.quad	0x3fe7123a29c779a7              # double 0.72097500000000003
	.quad	0x3fa010624dd2f1aa              # double 0.031375
	.quad	0x3fe536b4c7f34938              # double 0.66292799999999996
	.quad	0x3fe83c1acde19fc3              # double 0.75733700000000004
	.quad	0x3fe43ebbfd71b047              # double 0.63265800000000005
	.quad	0x3fe6d0092ccf6be3              # double 0.71289499999999995
	.quad	0x3fe7c42a66dbd72c              # double 0.74269600000000002
	.quad	0x3fc1fefbf401c4fc              # double 0.140594
	.quad	0x3fd90b630a91537a              # double 0.39132
	.quad	0x3fe7bdbe3c105187              # double 0.74191200000000002
	.quad	0x3fee433b5393250b              # double 0.94570699999999996
	.quad	0x3f97ea5f84cad57c              # double 0.023355000000000001
	.quad	0x3fce045baf533f42              # double 0.23450799999999999
	.quad	0x3fe6ed655e28aa43              # double 0.71647899999999998
	.quad	0x3fdb4d7add15f02c              # double 0.42660399999999998
	.quad	0x3fcba543f1c75819              # double 0.21598100000000001
	.quad	0x3fa9f969e3c96894              # double 0.050730999999999998
	.quad	0x3fdf16a8b8f14db6              # double 0.48575800000000002
	.quad	0x3fe215ce9e5e2479              # double 0.56516200000000005
	.quad	0x3fd37df5cf2495e1              # double 0.30456299999999997
	.quad	0x3fe4e2328f9f44d4              # double 0.65261199999999997
	.quad	0x3fbb0a5efe931876              # double 0.105627
	.quad	0x3fd097fa5d28d003              # double 0.25927600000000001
	.quad	0x3fd48f8a4c1ebc84              # double 0.32126100000000002
	.quad	0x3fec8fa9c12f09d9              # double 0.89253700000000002
	.quad	0x3fe8cb790fb65669              # double 0.77483800000000003
	.quad	0x3fe49a5870da5daf              # double 0.643841
	.quad	0x3fb1e8815e39713b              # double 0.069954000000000002
	.quad	0x3fd05208e1501190              # double 0.25500699999999998
	.quad	0x3fbe14163779e9d1              # double 0.117494
	.quad	0x3fe960029f16b11c              # double 0.79296999999999995
	.quad	0x3fe870a808c8259e              # double 0.76375199999999999
	.quad	0x3fdbd199bb2788db              # double 0.434668
	.quad	0x3fece568a50507a7              # double 0.90300400000000003
	.quad	0x3fcf97c3d68405b4              # double 0.24681900000000001
	.quad	0x3fe9bc59b8023a6d              # double 0.80424200000000001
	.quad	0x3fd7d18090b417ca              # double 0.37216199999999999
	.quad	0x3fed6f8055fbb518              # double 0.91986100000000004
	.quad	0x3fce559f6ec5b079              # double 0.236988
	.quad	0x3fe0e5aff2a172ac              # double 0.52803800000000001
	.quad	0x3fee9c0229a5ebb7              # double 0.95654399999999995
	.quad	0x3febb9c94f69ca9f              # double 0.866429
	.quad	0x3fc7c0980b242071              # double 0.18556500000000001
	.quad	0x3fef2704bc27631b              # double 0.97351299999999996
	.quad	0x3fdffeda66128390              # double 0.49992999999999999
	.quad	0x3fcf8316a055757d              # double 0.24618799999999999
	.quad	0x3feecdd50a88effe              # double 0.96262599999999998
	.quad	0x3fdbc05d52c16df4              # double 0.433616
	.quad	0x3fca8dfbd6a593a3              # double 0.207458
	.quad	0x3fe7a4f6598e10cf              # double 0.73888699999999996
	.quad	0x3fc43bb40b34e768              # double 0.15807199999999999
	.quad	0x3fe0ef9fcb0c026d              # double 0.52925100000000003
	.quad	0x3fe040a2877ee4e2              # double 0.50788999999999995
	.quad	0x3fee89bd8383ad9f              # double 0.954314
	.quad	0x3feefdd441355476              # double 0.96848500000000004
	.quad	0x3fe8a6698bb4d489              # double 0.77031400000000005
	.quad	0x3fe35ab9f559b3d0              # double 0.60482499999999995
	.quad	0x3fa881e4712e4085              # double 0.047865999999999999
	.quad	0x3fe4b1bde82d7b63              # double 0.64669699999999997
	.quad	0x3fd2eafab53d640f              # double 0.29559200000000002
	.quad	0x3fea2116659d12cb              # double 0.81653900000000001
	.quad	0x3fef73b213e3e293              # double 0.98287299999999999
	.quad	0x3fe9f6534373f317              # double 0.81131900000000001
	.quad	0x3fa916ebd4cfd08d              # double 0.049002999999999998
	.quad	0x3fe20aa64c2f837b              # double 0.56379999999999997
	.quad	0x3fed36ef8055fbb5              # double 0.91295599999999999
	.quad	0x3fa34b0e1b4bb5e1              # double 0.037682
	.quad	0x3fec04dfce3150db              # double 0.87559500000000001
	.quad	0x3fea1ae924f227d0              # double 0.81578499999999998
	.quad	0x3fd4214ad362e903              # double 0.31453199999999998
	.quad	0x3fb39357603925bb              # double 0.076466999999999993
	.quad	0x3fda1908e581cf78              # double 0.40777799999999997
	.quad	0x3fe59103c8e25c81              # double 0.673952
	.quad	0x3fe3e72b884406c0              # double 0.62196899999999999
	.quad	0x3fe01cae21101b00              # double 0.50350099999999998
	.quad	0x3f7d7a99fa11a976              # double 0.0071970000000000003
	.quad	0x3fd9ade225fa658c              # double 0.40123799999999998
	.quad	0x3fe0a539756c93a7              # double 0.52016899999999999
	.quad	0x3fe194e1a3f4666f              # double 0.54942400000000002
	.quad	0x3fbc97635e74299e              # double 0.11168500000000001
	.quad	0x3fe2e8af81626b2f              # double 0.59090399999999998
	.quad	0x3fcc0ab713272431              # double 0.21907699999999999
	.quad	0x3fdc700cd855970b              # double 0.44433899999999998
	.quad	0x3fdf01d9f4d37c13              # double 0.48448799999999997
	.quad	0x3feae5eedcc20d56              # double 0.84056799999999998
	.quad	0x3fdedfb9389b5200              # double 0.48240499999999997
	.quad	0x3f66ca46e08f2171              # double 0.0027820000000000002
	.quad	0x3fe8e3886594af4f              # double 0.77777499999999999
	.quad	0x3fe150e991ff7165              # double 0.54112700000000002
	.quad	0x3fe54061847f5621              # double 0.66410899999999995
	.quad	0x3fd9cab81f969e3d              # double 0.40299800000000002
	.quad	0x3fed063e07a28bb1              # double 0.90701200000000004
	.quad	0x3fe9b7995ee136e7              # double 0.80366199999999999
	.quad	0x3febdbe3c105186e              # double 0.87059200000000003
	.quad	0x3fd8de7a743a6480              # double 0.38857900000000001
	.quad	0x3fe35538ac18f81f              # double 0.60415300000000005
	.quad	0x3fec11904b3c3e75              # double 0.87714400000000003
	.quad	0x3fb211fd5885d313              # double 0.070586999999999997
	.quad	0x3fce5072085b1855              # double 0.23683000000000001
	.quad	0x3fc78f57f737da62              # double 0.184062
	.quad	0x3f9445aa2e3c536d              # double 0.019796999999999999
	.quad	0x3fd5f1cfbb949625              # double 0.34288400000000002
	.quad	0x3fc83c9eecbfb15b              # double 0.18934999999999999
	.quad	0x3fd3cd3e0bd44999              # double 0.30940200000000001
	.quad	0x3fe092b1b36bd2b7              # double 0.51790700000000001
	.quad	0x3fc6e3821af7d30b              # double 0.178818
	.quad	0x3fde37f7be121ee6              # double 0.47216599999999997
	.quad	0x3fe23b9cf9a06a6e              # double 0.56977699999999998
	.quad	0x3fe18713f077ccc0              # double 0.54773899999999998
	.quad	0x3fb445baf533f423              # double 0.079188999999999996
	.quad	0x3fe6bf3e0370cdc8              # double 0.71084499999999995
	.quad	0x3fe9a8b6d86ec17f              # double 0.80184500000000003
	.quad	0x3fe5cb5350092ccf              # double 0.68106999999999995
	.quad	0x3fe5aff6d330941d              # double 0.67773000000000005
	.quad	0x3fce5dd8f92af9a9              # double 0.23723900000000001
	.quad	0x3fc614b599aa6091              # double 0.17250699999999999
	.quad	0x3fe7ddfa871a3b15              # double 0.74584700000000004
	.quad	0x3fa8d92fb19e731d              # double 0.048531999999999999
	.quad	0x3fee5a1cac083127              # double 0.94850000000000001
	.quad	0x3fe226b93ccd0fe9              # double 0.56722700000000004
	.quad	0x3fe14eb56fb8f57f              # double 0.54085799999999995
	.quad	0x3fce60e51d25aab4              # double 0.23733199999999999
	.quad	0x3fbdaa821f2990f3              # double 0.115883
	.quad	0x3fc17824d4cb9ecf              # double 0.13647899999999999
	.quad	0x3fd8ca6ca03c4b0a              # double 0.387355
	.quad	0x3fe3148fd9fd36f8              # double 0.59626000000000001
	.quad	0x3fe9e88377186552              # double 0.80963300000000005
	.quad	0x3fe067e1fc08fa7b              # double 0.51268100000000005
	.quad	0x3fe9fde2ef4e0115              # double 0.81224200000000002
	.quad	0x3fe12d9cf13cee9e              # double 0.53681800000000002
	.quad	0x3f7f0a1be2b4959e              # double 0.0075779999999999997
	.quad	0x3fe4471715c63ae2              # double 0.63367799999999996
	.quad	0x3fc84aada33bd9cb              # double 0.189779
	.quad	0x3fdba97e132b55ef              # double 0.43221999999999999
	.quad	0x3fe469813879c411              # double 0.63787899999999997
	.quad	0x3fce3baba7b9170d              # double 0.23619599999999999
	.quad	0x3fd6e1d2178f68be              # double 0.35753299999999999
	.quad	0x3fd174afd5454153              # double 0.27274700000000002
	.quad	0x3fd1bc2b94d94079              # double 0.27711000000000002
	.quad	0x3fb37281fd9ba1b2              # double 0.075966000000000006
	.quad	0x3fbb9f666234a87e              # double 0.107901
	.quad	0x3fe4d06dd69d3027              # double 0.65044299999999999
	.quad	0x3fe1d4690de09353              # double 0.55717899999999998
	.quad	0x3fd35f7c6759ab6d              # double 0.302703
	.quad	0x3fe4e1049235f80a              # double 0.65246800000000005
	.quad	0x3fb29aa1d755bccb              # double 0.072672
	.quad	0x3fefe76a7264a16a              # double 0.99699899999999997
	.quad	0x3fe151dcd7060bb3              # double 0.54124300000000003
	.quad	0x3fdde4a7b4e54f7b              # double 0.46708100000000002
	.quad	0x3fe8bdaf8df7a4e8              # double 0.77315500000000004
	.quad	0x3fedad4b2745bf27              # double 0.92740400000000001
	.quad	0x3fc4a68f4b61fe22              # double 0.161333
	.quad	0x3fd4f8f041461b6d              # double 0.32769399999999999
	.quad	0x3fe03f26f1dc50ce              # double 0.50770899999999997
	.quad	0x3fc4443914f483cb              # double 0.158332
	.quad	0x3fd96c61522a6f3f              # double 0.39723999999999998
	.quad	0x3fd863886594af4f              # double 0.381075
	.quad	0x3fd34b2745bf26f2              # double 0.30146200000000001
	.quad	0x3fbeb734b51372a4              # double 0.11998300000000001
	.quad	0x3fe31b584b1ab085              # double 0.59708799999999995
	.quad	0x3f6800a7c5ac471b              # double 0.0029299999999999999
	.quad	0x3fd56490a350d280              # double 0.33426299999999998
	.quad	0x3fc0a19c9d5a187a              # double 0.12993199999999999
	.quad	0x3fea067ad8e43244              # double 0.81329099999999998
	.quad	0x3fed269be09bb6aa              # double 0.91096299999999997
	.quad	0x3fbadab9f559b3d0              # double 0.10489999999999999
	.quad	0x3fee415d2d01c0ca              # double 0.94547899999999996
	.quad	0x3fda81e4712e4085              # double 0.41417799999999999
	.quad	0x3f8af640639d5e4a              # double 0.013165
	.quad	0x3faf3061c79b34a4              # double 0.060915999999999998
	.quad	0x3fab1465e8922531              # double 0.05289
	.quad	0x3fce3f5f91600f34              # double 0.23630899999999999
	.quad	0x3fed61f5be5d9e41              # double 0.91820800000000002
	.quad	0x3fe710b417ca2121              # double 0.72078900000000001
	.quad	0x3fe96c4e7253da73              # double 0.79447100000000004
	.quad	0x3fbed9ad85dfa872              # double 0.12050900000000001
	.quad	0x3fd3bc23315d701e              # double 0.30835800000000002
	.quad	0x3fcd182235b4edb3              # double 0.227299
	.quad	0x3fe195df6555c52e              # double 0.54954499999999995
	.quad	0x3fed5916872b020c              # double 0.91712499999999996
	.quad	0x3fcae41919ac7970              # double 0.21008599999999999
	.quad	0x3fd44877681669cf              # double 0.31692300000000001
	.quad	0x3feb0aa8650e7792              # double 0.845051
	.quad	0x3fd3c475e6362a5e              # double 0.30886599999999997
	.quad	0x3fe195d91ab8e8ea              # double 0.54954199999999997
	.quad	0x3fcc2a2c2374794f              # double 0.22003700000000001
	.quad	0x3fcb6d4c33b53932              # double 0.21427299999999999
	.quad	0x3fd5e20ccff21b3b              # double 0.341922
	.quad	0x3fe505f8d2e514c2              # double 0.65697899999999998
	.quad	0x3fd277ccc0379314              # double 0.28856199999999999
	.quad	0x3fbd34267839cd81              # double 0.114077
	.quad	0x3fccddc6195464dc              # double 0.225518
	.quad	0x3fcffe111276fb09              # double 0.249941
	.quad	0x3fd990fb65668c26              # double 0.399474
	.quad	0x3faeac42e9899bf6              # double 0.059908000000000003
	.quad	0x3fc6327ed84d338f              # double 0.17341599999999999
	.quad	0x3feee53005814941              # double 0.96547700000000002
	.quad	0x3fd7709b738e6d16              # double 0.36624800000000002
	.quad	0x3fecef284167a95d              # double 0.90419400000000005
	.quad	0x3fde02c0a4a05dd9              # double 0.468918
	.quad	0x3fecf4eebf65dbfd              # double 0.90489900000000001
	.quad	0x3fe291819d2391d5              # double 0.58026199999999994
	.quad	0x3fcb0d413122b7bb              # double 0.211342
	.quad	0x3fd054bcf0b6b6e1              # double 0.25517200000000001
	.quad	0x3fb97acc4ef88b97              # double 0.099529999999999993
	.quad	0x3fd908e15011904b              # double 0.39116699999999999
	.quad	0x3fe8038c111ada77              # double 0.75043300000000002
	.quad	0x3febaa0a958537e3              # double 0.86450700000000003
	.quad	0x3fe3f68dfbd6a594              # double 0.62384700000000004
	.quad	0x3fcf4b838c111ada              # double 0.24449199999999999
	.quad	0x3fe96e47dc37a3db              # double 0.79471199999999997
	.quad	0x3fa63f572de43ed9              # double 0.043451999999999998
	.quad	0x3fe00902de00d1b7              # double 0.50109999999999999
	.quad	0x3fce342aa9f7b5af              # double 0.23596700000000001
	.quad	0x3fd9f2ba9d1f6018              # double 0.40544000000000002
	.quad	0x3fb34a98aa8650e7              # double 0.075356999999999993
	.quad	0x3fc0e81882adc4ca              # double 0.13208300000000001
	.quad	0x3faf965b20b8066c              # double 0.061693999999999999
	.quad	0x3fa9376d5497310a              # double 0.049251000000000003
	.quad	0x3fb197a24894c448              # double 0.068720000000000003
	.quad	0x3fe4116440f23897              # double 0.62712299999999999
	.quad	0x3fec491d14e3bcd3              # double 0.88392499999999996
	.quad	0x3fd0e13f4a98aa86              # double 0.26374799999999998
	.quad	0x3fd34ddb5525cc42              # double 0.30162699999999998
	.quad	0x3fd96dc1a47a9e2c              # double 0.39732400000000001
	.quad	0x3feb6e82949a5658              # double 0.85724
	.quad	0x3fe09f42bb6672fc              # double 0.51944100000000004
	.quad	0x3f9f9830e3cd9a52              # double 0.030853999999999999
	.quad	0x3fe780cd855970b5              # double 0.73447300000000004
	.quad	0x3fea22df9378ee28              # double 0.81675699999999996
	.quad	0x3f864bec679cc74c              # double 0.010887000000000001
	.quad	0x3fd9ce703afb7e91              # double 0.403225
	.quad	0x3fedb22af5771002              # double 0.92799900000000002
	.quad	0x3fc13543aeab7996              # double 0.134438
	.quad	0x3f94fe79ee02a77a              # double 0.020501999999999999
	.quad	0x3fa66490a350d280              # double 0.043735999999999997
	.quad	0x3fd219c17225b74a              # double 0.28282200000000002
	.quad	0x3fd01c087442c7fc              # double 0.25171100000000002
	.quad	0x3fe5f1e29b6b2af1              # double 0.68577699999999997
	.quad	0x3fd1e4abe6a337a8              # double 0.279582
	.quad	0x3fdad2cbea4ebdd3              # double 0.41911599999999999
	.quad	0x3fe6b879c4113c68              # double 0.71001899999999996
	.quad	0x3fe5a459103c8e26              # double 0.67631200000000002
	.quad	0x3feb555a3a08398a              # double 0.85416899999999996
	.quad	0x3fe9104d551d68c7              # double 0.78324000000000005
	.quad	0x3fd61704ff43419e              # double 0.34515499999999999
	.quad	0x3fec1eff9f87f024              # double 0.878784
	.quad	0x3fef620ee8d10f52              # double 0.98072000000000004
	.quad	0x3fedb31c219eb639              # double 0.92811399999999999
	.quad	0x3fddd909f1f14984              # double 0.46637200000000001
	.quad	0x3fdbb0af5fd47bee              # double 0.43265900000000002
	.quad	0x3fcf10a99b6f5caf              # double 0.242696
	.quad	0x3fd01da7b0b39192              # double 0.25180999999999998
	.quad	0x3fd0d601ffb480a6              # double 0.26306200000000002
	.quad	0x3fe7179e16d6dc1a              # double 0.72163299999999997
	.quad	0x3fc626351deefe50              # double 0.173041
	.quad	0x3fe5926e978d4fdf              # double 0.67412499999999997
	.quad	0x3fe443dab5c39bcc              # double 0.63328300000000004
	.quad	0x3fe93d7f51efb6dd              # double 0.78875700000000004
	.quad	0x3fc5675579af1887              # double 0.167216
	.quad	0x3fe2edeb95e5aff3              # double 0.59154300000000004
	.quad	0x3fb68b19a415f45e              # double 0.088059999999999999
	.quad	0x3fee4c8de2ac3223              # double 0.94684500000000005
	.quad	0x3fc143419e300150              # double 0.13486500000000001
	.quad	0x3fc6c1333b96af04              # double 0.17777100000000001
	.quad	0x3fe44dc22ab25b31              # double 0.63449199999999994
	.quad	0x3fefa18bd66277c4              # double 0.98846999999999995
	.quad	0x3fef74ea8da7f3cf              # double 0.98302199999999995
	.quad	0x3fde6d612c6ac216              # double 0.47542600000000002
	.quad	0x3fea9212513b5bf7              # double 0.83033100000000004
	.quad	0x3fe99b068123810f              # double 0.80017400000000005
	.quad	0x3fd8432ca57a786c              # double 0.37909999999999999
	.quad	0x3fe5c83ec892ab69              # double 0.68069400000000002
	.quad	0x3fec00303c07ee0b              # double 0.875023
	.quad	0x3fe1eb7ed41b75a7              # double 0.55999699999999997
	.quad	0x3fdfdd00f776c482              # double 0.49786399999999997
	.quad	0x3fe371fbc5de9c02              # double 0.60766399999999998
	.quad	0x3fe02b6f19934efd              # double 0.50530200000000003
	.quad	0x3fe903d790752daa              # double 0.78171900000000005
	.quad	0x3fedcaff6d330942              # double 0.93103000000000002
	.quad	0x3fd617a02fb5d031              # double 0.345192
	.quad	0x3fd55807fed20297              # double 0.33349800000000002
	.quad	0x3fec8d3ae685db77              # double 0.89224000000000003
	.quad	0x3fc187160956c0d7              # double 0.136935
	.quad	0x3fc1e6a337a80cfa              # double 0.139851
	.quad	0x3fe711ea78af3e47              # double 0.72093700000000005
	.quad	0x3fee615a8deb0fae              # double 0.94938400000000001
	.quad	0x3febbc1ce6c093d9              # double 0.86671299999999996
	.quad	0x3fc0ecfa69be09bb              # double 0.13223199999999999
	.quad	0x3fe762f37fbefd00              # double 0.73082899999999995
	.quad	0x3fd0620685553ef7              # double 0.25598300000000002
	.quad	0x3fab78ab0c88a47f              # double 0.053655000000000001
	.quad	0x3fd7dd5d3dc8b86b              # double 0.372886
	.quad	0x3fed7d71b0468449              # double 0.92156300000000002
	.quad	0x3fd7d90e23af31b1              # double 0.37262299999999998
	.quad	0x3fe8bd7b2031ceaf              # double 0.77312999999999998
	.quad	0x3fde75536933a040              # double 0.47591099999999997
	.quad	0x3feef0c77dd872f3              # double 0.96689199999999997
	.quad	0x3fb086f049a9973e              # double 0.064559000000000005
	.quad	0x3fa8a04d12018a44              # double 0.048098000000000002
	.quad	0x3fef9b77c02afddb              # double 0.98772800000000005
	.quad	0x3fd20917d6b65a9b              # double 0.28180500000000003
	.quad	0x3fbb6273929ed395              # double 0.106971
	.quad	0x3faabf5515054ac3              # double 0.052241000000000003
	.quad	0x3fe06b59146e4c0e              # double 0.513104
	.quad	0x3fe24f3775b81301              # double 0.57216999999999996
	.quad	0x3fef48605681ecd5              # double 0.97758500000000003
	.quad	0x3fa671ef30a4e37a              # double 0.043838000000000002
	.quad	0x3fcf5a5332acfb76              # double 0.244944
	.quad	0x3fe737aa25d8d79d              # double 0.725545
	.quad	0x3fe14180d3cff64d              # double 0.539246
	.quad	0x3f8b6fe2e6ea8544              # double 0.013396999999999999
	.quad	0x3fcbd6f976790321              # double 0.217498
	.quad	0x3fc459fb1e18efbb              # double 0.158996
	.quad	0x3fcf86b9c304ccee              # double 0.24629899999999999
	.quad	0x3fe5397dd00f776c              # double 0.66326799999999997
	.quad	0x3fec8e779207d4e1              # double 0.89239100000000005
	.quad	0x3feebc07ee0b0af6              # double 0.960453
	.quad	0x3fc342e557de0d67              # double 0.150479
	.quad	0x3fedbb81b64e0547              # double 0.92913900000000005
	.quad	0x3fd6c64345cfede9              # double 0.35585099999999997
	.quad	0x3fa83254e6e221c9              # double 0.047259000000000002
	.quad	0x3fee5f5275ee99a6              # double 0.94913599999999998
	.quad	0x3fefdb9e8c47a17f              # double 0.99555899999999997
	.quad	0x3fb82224edf61240              # double 0.094270999999999994
	.quad	0x3feeaa454de7ea60              # double 0.95828500000000005
	.quad	0x3fe8fe7e1fc08fa8              # double 0.78106600000000004
	.quad	0x3fcdbb4916ca46e1              # double 0.23227800000000001
	.quad	0x3fd59cbab649d389              # double 0.33769100000000002
	.quad	0x3fef59cf13cee9dd              # double 0.97971299999999994
	.quad	0x3fe6bb7b6bb12902              # double 0.71038599999999996
	.quad	0x3fead627bf61aa3f              # double 0.838642
	.quad	0x3fd3bacb4289118c              # double 0.30827599999999999
	.quad	0x3fcf22fad6cb5350              # double 0.243255
	.quad	0x3fdb24180d3cff65              # double 0.42407800000000001
	.quad	0x3fed2a9717df19d6              # double 0.91144899999999995
	.quad	0x3fe8ecb5350092cd              # double 0.778895
	.quad	0x3fd66f5caf2d7f95              # double 0.350547
	.quad	0x3fe44fbdad7518b1              # double 0.63473400000000002
	.quad	0x3fe75ddf43c7d5ed              # double 0.730209
	.quad	0x3feeb2c625e99e95              # double 0.95932300000000003
	.quad	0x3fcbd2e0e30446b7              # double 0.21737300000000001
	.quad	0x3fd5ba732df505d1              # double 0.339505
	.quad	0x3fe84efed634549b              # double 0.75964299999999996
	.quad	0x3fe750dcfcc5b8dc              # double 0.72862099999999996
	.quad	0x3fef6848beb5b2d5              # double 0.98148000000000001
	.quad	0x3fef46cb966be7b0              # double 0.97739200000000004
	.quad	0x3fee3c5bd0e12e84              # double 0.94486800000000004
	.quad	0x3fdaa960b6f9fcb1              # double 0.41658800000000001
	.quad	0x3fefa04af922962d              # double 0.988317
	.quad	0x3fed845baf533f42              # double 0.92240699999999998
	.quad	0x3fe0cc5b8dc55001              # double 0.52494600000000002
	.quad	0x3fca5471715c63ae              # double 0.205702
	.quad	0x3fe3ea63b688bda9              # double 0.62236199999999997
	.quad	0x3fc913a4f8726d05              # double 0.195912
	.quad	0x3fd9ef5ec80c73ac              # double 0.40523500000000001
	.quad	0x3fe6b8de6ddf00ac              # double 0.710067
	.quad	0x3fd153c148344c38              # double 0.27073700000000001
	.quad	0x3fe4a9eb2074ea8e              # double 0.64574200000000004
	.quad	0x3fe399c7bcc2938e              # double 0.61252200000000001
	.quad	0x3fe86ce789e774ef              # double 0.76329400000000003
	.quad	0x3fa834d26fa3fcca              # double 0.047278000000000001
	.quad	0x3feb9ca7d6733ebc              # double 0.862873
	.quad	0x3fed58fd5cb790fb              # double 0.91711299999999996
	.quad	0x3fec77a7008a697b              # double 0.88960600000000001
	.quad	0x3fcbf340d4dc65c7              # double 0.218361
	.quad	0x3fed2cb641700cd8              # double 0.91170799999999996
	.quad	0x3fec09c1b54195cd              # double 0.87619100000000005
	.quad	0x3fe14ad57bc7f77b              # double 0.540385
	.quad	0x3fe8f8d92fb19e73              # double 0.78037699999999999
	.quad	0x3f94228997c3d684              # double 0.019663
	.quad	0x3fe250f840181e04              # double 0.572384
	.quad	0x3fe687ebf22c01e7              # double 0.70409200000000005
	.quad	0x3fba3e07a28bb0a3              # double 0.102509
	.quad	0x3fe7d7c0b1359792              # double 0.74508700000000005
	.quad	0x3fe696a487336588              # double 0.70588899999999999
	.quad	0x3fce66e43aa79bbb              # double 0.237515
	.quad	0x3fe2ba0a52695960              # double 0.58521000000000001
	.quad	0x3fecb59bc33f8551              # double 0.89716899999999999
	.quad	0x3fa012599ed7c6fc              # double 0.031390000000000001
	.quad	0x3fe19d8622c45027              # double 0.55047900000000005
	.quad	0x3fd9235f80991794              # double 0.39278400000000002
	.quad	0x3fec44aa53fc0097              # double 0.883382
	.quad	0x3fa0622c45026890              # double 0.031999
	.quad	0x3fd7bebe1650a45d              # double 0.37101699999999999
	.quad	0x3fcf2d905c033615              # double 0.24357799999999999
	.quad	0x3fd1b46fdeb52c9d              # double 0.276638
	.quad	0x3fe37381d7dbf488              # double 0.60785
	.quad	0x3fe45273d5bab218              # double 0.63506499999999999
	.quad	0x3fee6e158750c1b9              # double 0.95093799999999995
	.quad	0x3fd2945b6c3760bf              # double 0.29030499999999998
	.quad	0x3fecc3aa79bbadc1              # double 0.89888500000000005
	.quad	0x3fea0d349be8ff32              # double 0.81411199999999995
	.quad	0x3fcc71f79420b3d5              # double 0.22222800000000001
	.quad	0x3fe3d26d8b1dd5d4              # double 0.61943700000000002
	.quad	0x3fe6ecb5350092cd              # double 0.716395
	.quad	0x3fdf503b81b64e05              # double 0.48927199999999998
	.quad	0x3fb4661ae70c1334              # double 0.079683000000000004
	.quad	0x3fd80574b407032a              # double 0.37533300000000003
	.quad	0x3fab2b55ef1fddec              # double 0.053065000000000001
	.quad	0x3fd995e17e34b945              # double 0.39977299999999999
	.quad	0x3fb0c1db0142f61f              # double 0.065458000000000002
	.quad	0x3fb2c7fbacb42891              # double 0.073363999999999999
	.quad	0x3fc009cc319c5a3e              # double 0.12529899999999999
	.quad	0x3fd22ff08893b7d8              # double 0.28417599999999998
	.quad	0x3fea52ef911cf356              # double 0.82262400000000002
	.quad	0x3fe9896feb4a6656              # double 0.79802700000000004
	.quad	0x3fb4f27bb2fec56d              # double 0.081824999999999995
	.quad	0x3fd8e31d712a0ec7              # double 0.38886199999999999
	.quad	0x3fe69f644955b467              # double 0.70695699999999995
	.quad	0x3fef2aa5c5f7c676              # double 0.97395600000000004
	.quad	0x3fde7a41e57d9dbb              # double 0.47621200000000002
	.quad	0x3fc2fe79ee02a77a              # double 0.148391
	.quad	0x3fcbbe7f2c3009b3              # double 0.216751
	.quad	0x3fb97be9856a37ac              # double 0.099546999999999996
	.quad	0x3fed265492ff4ba5              # double 0.91092899999999999
	.quad	0x3fe15594f26aec07              # double 0.54169699999999998
	.quad	0x3feb7f5a5332acfb              # double 0.85929599999999995
	.quad	0x3fdcc1b97353b4b3              # double 0.449324
	.quad	0x3fe995011904b3c4              # double 0.79943900000000001
	.quad	0x3fe45d744f5d3565              # double 0.63640799999999997
	.quad	0x3fc39c62a1b5c7ce              # double 0.15321000000000001
	.quad	0x3fec40b34e768598              # double 0.88289799999999996
	.quad	0x3fea12d55a3a083a              # double 0.81479900000000005
	.quad	0x3fc51b93037d6302              # double 0.164904
	.quad	0x3fd568661ae70c13              # double 0.33449699999999999
	.quad	0x3fe0f19b4dcebfec              # double 0.52949299999999999
	.quad	0x3fca3e6c4c5974e6              # double 0.20502999999999999
	.quad	0x3f97bb2fec56d5d0              # double 0.023175000000000001
	.quad	0x3fcf878316a05575              # double 0.24632299999999999
	.quad	0x3fdea3d2d87f8876              # double 0.47874899999999998
	.quad	0x3fd07418d6909aed              # double 0.25708599999999998
	.quad	0x3fdb8bda9435ac8a              # double 0.43041099999999999
	.quad	0x3fd40f2389720429              # double 0.31342399999999998
	.quad	0x3fe60f301eabbcb2              # double 0.68935400000000002
	.quad	0x3fe3dff3f0fe047d              # double 0.62108799999999997
	.quad	0x3fe5548238540464              # double 0.66656599999999999
	.quad	0x3fef8b6523704791              # double 0.98576600000000003
	.quad	0x3fe03d512ec6bce8              # double 0.50748499999999996
	.quad	0x3fee7cfa26a22b39              # double 0.95275600000000005
	.quad	0x3fe865625a682b63              # double 0.76237600000000005
	.quad	0x3fc89906cca2db62              # double 0.19217000000000001
	.quad	0x3feed35653c9abb0              # double 0.96329799999999999
	.quad	0x3fe3a9717df19d67              # double 0.61443400000000004
	.quad	0x3fea3c6eb0b7c350              # double 0.81987699999999997
	.quad	0x3fc5ef39085f4a12              # double 0.17136299999999999
	.quad	0x3feff21d53cddd6e              # double 0.998305
	.quad	0x3feadcd4ed2cbea5              # double 0.83945700000000001
	.quad	0x3fd5d81adea89763              # double 0.34131499999999998
	.quad	0x3fb5ea35935fc3b5              # double 0.085605000000000001
	.quad	0x3fdb2528ae74f2f1              # double 0.42414299999999999
	.quad	0x3fcf1782d38476f3              # double 0.24290500000000001
	.quad	0x3fc2f8f041461b6d              # double 0.14822199999999999
	.quad	0x3fd9039abf338716              # double 0.390845
	.quad	0x3fefb4e9813879c4              # double 0.99083399999999999
	.quad	0x3fbc938583621fb0              # double 0.111626
	.quad	0x3fd814a0a0f4d7ae              # double 0.37625900000000001
	.quad	0x3fac942d490e66cb              # double 0.055818
	.quad	0x3fe070f16f4384ba              # double 0.51378699999999999
	.quad	0x3fee0a5482385404              # double 0.93876099999999995
	.quad	0x3fe71ef30a4e379b              # double 0.72252799999999995
	.quad	0x3fdf034b0e1b4bb6              # double 0.48457600000000001
	.quad	0x3fc63a647fdc5932              # double 0.17365700000000001
	.quad	0x3fe2c105186db50f              # double 0.58606199999999997
	.quad	0x3fcbe28aa433508f              # double 0.21785099999999999
	.quad	0x3fd2d1a650614163              # double 0.29404599999999997
	.quad	0x3fd8122b7baecd08              # double 0.37610900000000003
	.quad	0x3fd2427418d6909b              # double 0.285306
	.quad	0x3fc7d3996fa82e88              # double 0.186145
	.quad	0x3fdf4178705425f2              # double 0.488371
	.quad	0x3fdfa40d90e23af3              # double 0.49438799999999999
	.quad	0x3fe820ec74320104              # double 0.75401899999999999
	.quad	0x3fe6a49c2c1b10fd              # double 0.70759399999999995
	.quad	0x3fe68f776c4827b7              # double 0.705013
	.quad	0x3fb4182ecaeea63b              # double 0.078493999999999994
	.quad	0x3f8cf91a32b12d34              # double 0.014147
	.quad	0x3fe51899bf5946c3              # double 0.65925299999999998
	.quad	0x3feb84944ed6fda8              # double 0.85993399999999998
	.quad	0x3fe3fb3b7521144d              # double 0.62441800000000003
	.quad	0x3fcb37b07075b3e1              # double 0.21263699999999999
	.quad	0x3fe4917720c8cd64              # double 0.64275700000000002
	.quad	0x3fe40522ea0fd3b3              # double 0.62562700000000004
	.quad	0x3fec25f202107b78              # double 0.87963199999999997
	.quad	0x3fbcdd50a88effe3              # double 0.112752
	.quad	0x3fe1a1be2b4959e6              # double 0.55099399999999998
	.quad	0x3fdb7a9e2bcf91a3              # double 0.42935899999999999
	.quad	0x3fd7f0f9d2bf5515              # double 0.374083
	.quad	0x3fd35d3996fa82e8              # double 0.30256499999999997
	.quad	0x3fe77ea1c68ec52a              # double 0.73420799999999997
	.quad	0x3fef529dc725c3df              # double 0.97883500000000001
	.quad	0x3fe4dbc664d3bf2f              # double 0.65182799999999996
	.quad	0x3fb835dedf1e0829              # double 0.094572000000000003
	.quad	0x3fca469d7342edbb              # double 0.20527999999999999
	.quad	0x3f9028a1dfb9389b              # double 0.015779999999999999
	.quad	0x3fe3d3d859c8c932              # double 0.61960999999999999
	.quad	0x3feca908a265f0f6              # double 0.89563400000000004
	.quad	0x3fc238b04ab606b8              # double 0.14235500000000001
	.quad	0x3fc9e4de3b8a19ca              # double 0.202297
	.quad	0x3fd288db0574b407              # double 0.289603
	.quad	0x3fea09d495182a99              # double 0.81369999999999998
	.quad	0x3fce302b40f66a55              # double 0.235845
	.quad	0x3fde346dc5d63886              # double 0.47194999999999998
	.quad	0x3fef30b5aa715832              # double 0.97469600000000001
	.quad	0x3fddbf487fcb923a              # double 0.46479999999999999
	.quad	0x3fa803254e6e221d              # double 0.046899000000000003
	.quad	0x3fe691f70de8f6cf              # double 0.705318
	.quad	0x3fe87505d0fa58f7              # double 0.76428499999999999
	.quad	0x3fb4180d3cff64d0              # double 0.078492000000000006
	.quad	0x3fe72c322291fb40              # double 0.72414500000000004
	.quad	0x3fbaf837b4a2339c              # double 0.10535
	.quad	0x3fea40fa9c12f09e              # double 0.82043200000000005
	.quad	0x3fca940bbb1f255f              # double 0.20764299999999999
	.quad	0x3fe9e26916440f24              # double 0.80888800000000005
	.quad	0x3fec06e9ff0cbaf9              # double 0.87584399999999996
	.quad	0x3fc1cf2495e17e35              # double 0.13913400000000001
	.quad	0x3fdf85caafbc1ace              # double 0.49254100000000001
	.quad	0x3fda8c0ce91c8eac              # double 0.414798
	.quad	0x3fc1483cafb3b752              # double 0.135017
	.quad	0x3fc08d6d3b6cbd98              # double 0.12931599999999999
	.quad	0x3fde70196d8f4f94              # double 0.47559200000000001
	.quad	0x3fef237ef5a964e9              # double 0.97308300000000003
	.quad	0x3fd0c15d2d01c0ca              # double 0.26180199999999998
	.quad	0x3fed31ec0b567558              # double 0.91234400000000004
	.quad	0x3fe29713ad5bee3d              # double 0.58094199999999996
	.quad	0x3fb85a2d72ffd1dd              # double 0.095126000000000002
	.quad	0x3fd56501e2584f4c              # double 0.33428999999999998
	.quad	0x3fd7ad2135daad60              # double 0.36994199999999999
	.quad	0x3fd2e3821af7d30b              # double 0.29513600000000001
	.quad	0x3fc098bb4d48882f              # double 0.129661
	.quad	0x3fe65c4eb56fb8f5              # double 0.69876799999999994
	.quad	0x3fd2e66cb10342ab              # double 0.29531400000000002
	.quad	0x3fd1b1ab0856e697              # double 0.27646900000000002
	.quad	0x3fe8ddd095af294e              # double 0.77707700000000002
	.quad	0x3feb8357a355043e              # double 0.85978299999999996
	.quad	0x3fb5c8a7a41e57da              # double 0.085093000000000001
	.quad	0x3fe83f8fcd67fd3f              # double 0.75775899999999996
	.quad	0x3fea5698fe69270b              # double 0.823071
	.quad	0x3fcf256ffc115df6              # double 0.24332999999999999
	.quad	0x3fe3caec8d5c7475              # double 0.61852099999999999
	.quad	0x3faecacd184c2720              # double 0.060141
	.quad	0x3fdd3ba3443d46b2              # double 0.45676499999999998
	.quad	0x3fc0dfc5cdd50a89              # double 0.131829
	.quad	0x3fb41f969e3c9689              # double 0.078606999999999996
	.quad	0x3fdf3a92a3055326              # double 0.48794999999999999
	.quad	0x3fe3c7820a30db6a              # double 0.61810399999999999
	.quad	0x3fd34445aa2e3c53              # double 0.30104199999999998
	.quad	0x3fe2a8c154c985f0              # double 0.58309999999999995
	.quad	0x3fd51ed9dfdac68b              # double 0.33000800000000002
	.quad	0x3fcb07c84b5dcc64              # double 0.211175
	.quad	0x3fec4e9813879c41              # double 0.88459399999999999
	.quad	0x3feccc74b838c112              # double 0.89995800000000004
	.quad	0x3fe44ebbba55d1c4              # double 0.63461100000000004
	.quad	0x3fe684988094e5d6              # double 0.70368600000000003
	.quad	0x3fe7f82d38476f2a              # double 0.74904499999999996
	.quad	0x3fde014727dcbddc              # double 0.46882800000000002
	.quad	0x3fef195aaf78feef              # double 0.97184499999999995
	.quad	0x3fe455a3a08398a6              # double 0.63545399999999996
	.quad	0x3fdc4ef88b977857              # double 0.44231999999999999
	.quad	0x3fe2f646ae3a3a8e              # double 0.59256299999999995
	.quad	0x3fe06215336deb96              # double 0.51197300000000001
	.quad	0x3f8e0b4e11dbca97              # double 0.014670000000000001
	.quad	0x3fa2c1f42bb66730              # double 0.036636000000000002
	.quad	0x3fe5c065b63d3e4f              # double 0.67973600000000001
	.quad	0x3fea006290eed02d              # double 0.81254700000000002
	.quad	0x3fc7702e6644d877              # double 0.183111
	.quad	0x3fecb291b823c85c              # double 0.89679799999999998
	.quad	0x3feaa116659d12cb              # double 0.83216400000000001
	.quad	0x3fddd538ac18f81f              # double 0.46613900000000003
	.quad	0x3fdc4c059210385c              # double 0.44213999999999998
	.quad	0x3fb7649d388a8b09              # double 0.091379000000000002
	.quad	0x3fde4c51116a8b8f              # double 0.473408
	.quad	0x3fdf1d3ed527e521              # double 0.48615999999999998
	.quad	0x3fde6177ea1c68ec              # double 0.47469899999999998
	.quad	0x3fd69c4da9003eea              # double 0.35328999999999999
	.quad	0x3fde3c3e74afd545              # double 0.47242699999999999
	.quad	0x3fefc4bb1af3a14d              # double 0.992765
	.quad	0x3fe67587d6f97679              # double 0.701847
	.quad	0x3fb0aa10e0221427              # double 0.065095
	.quad	0x3fbcb1bbcf4e874d              # double 0.11208700000000001
	.quad	0x3fe85577963992c9              # double 0.76043300000000003
	.quad	0x3fc173affb04ee7c              # double 0.13634299999999999
	.quad	0x3fd7fa8b4bf8fcd6              # double 0.37466699999999997
	.quad	0x3fcbfae3608d0892              # double 0.21859400000000001
	.quad	0x3fdee8f29d40ee07              # double 0.48296800000000001
	.quad	0x3feecdd2f1a9fbe7              # double 0.96262499999999995
	.quad	0x3fe33e9856a37ac4              # double 0.60139100000000001
	.quad	0x3fec0b9dc2f405f7              # double 0.87641800000000003
	.quad	0x3feb1bd61f5be5da              # double 0.84714800000000001
	.quad	0x3fd0b7a5f41aef70              # double 0.26120900000000002
	.quad	0x3fe507ad080b673c              # double 0.65718699999999997
	.quad	0x3f785ad538ac18f8              # double 0.0059459999999999999
	.quad	0x3fc7463cfb3311a5              # double 0.18183099999999999
	.quad	0x3f8458cd20afa2f0              # double 0.0099349999999999993
	.quad	0x3fdbcb3a2595bbbf              # double 0.43427900000000003
	.quad	0x3fe334d26fa3fcca              # double 0.60019800000000001
	.quad	0x3fedb5350092ccf7              # double 0.92837000000000003
	.quad	0x3fd85ce18266772d              # double 0.38066899999999998
	.quad	0x3feb46cb966be7b0              # double 0.85239200000000004
	.quad	0x3fc4931876188b11              # double 0.16073899999999999
	.quad	0x3fb0ce1c58255b03              # double 0.065644999999999995
	.quad	0x3fe8fbbf93ff25e5              # double 0.78073099999999995
	.quad	0x3fdc8f861a60d456              # double 0.44625999999999999
	.quad	0x3fdb991361dc93ea              # double 0.43121799999999999
	.quad	0x3fe79845dc832336              # double 0.73733800000000005
	.quad	0x3feee861e92923e6              # double 0.96586700000000003
	.quad	0x3fe64b81733226c4              # double 0.69671700000000003
	.quad	0x3feb138de6ddf00b              # double 0.84613700000000003
	.quad	0x3fbba13c254a3c64              # double 0.107929
	.quad	0x3fd56bdb1a6d6990              # double 0.33470800000000001
	.quad	0x3fddfef39085f4a1              # double 0.46868599999999999
	.quad	0x3fe74a07f66e86c6              # double 0.72778699999999996
	.quad	0x3fe36add590c0ad0              # double 0.60679499999999997
	.quad	0x3fd0bd2b6f19934f              # double 0.261546
	.quad	0x3fecb660e51d25ab              # double 0.89726300000000003
	.quad	0x3fe3317acc4ef88c              # double 0.59979000000000005
	.quad	0x3fec5db76b3bb83d              # double 0.88644000000000001
	.quad	0x3fee2ef6f8f04146              # double 0.94323299999999999
	.quad	0x3fe346173b85e80c              # double 0.60230600000000001
	.quad	0x3fe670281ba7fc33              # double 0.70119100000000001
	.quad	0x3fe88e1719f7f8cb              # double 0.76734500000000005
	.quad	0x3fecab862b27cbf7              # double 0.89593800000000001
	.quad	0x3fe0bd5992428d43              # double 0.52311399999999997
	.quad	0x3fe7df4a1272c94b              # double 0.74600699999999998
	.quad	0x3fec44d87724fa8b              # double 0.88340399999999997
	.quad	0x3fc8f6598e10cf5b              # double 0.195018
	.quad	0x3fc22374794ea077              # double 0.141707
	.quad	0x3fedaa3cea6c1a05              # double 0.92703100000000005
	.quad	0x3fcaf449129888f8              # double 0.21057999999999999
	.quad	0x3fbe22d5171e29b7              # double 0.117719
	.quad	0x3fe4f3519bd4067d              # double 0.65470200000000001
	.quad	0x3fe2dd701d9f4d38              # double 0.58953100000000003
	.quad	0x3fe5388ca3e7d135              # double 0.66315299999999999
	.quad	0x3fb166277c45cbbc              # double 0.067964999999999998
	.quad	0x3fe95651b0ccbc06              # double 0.79178700000000002
	.quad	0x3fe43b341e14bdfd              # double 0.63222699999999998
	.quad	0x3fed54de7ea5f84d              # double 0.91661000000000004
	.quad	0x3fe60448cf7caa76              # double 0.68802300000000005
	.quad	0x3fdab3892ee84ad8              # double 0.41720800000000002
	.quad	0x3fdbccc46950fc72              # double 0.43437300000000001
	.quad	0x3fd28a71de69ad43              # double 0.28970000000000001
	.quad	0x3fe713b3a68b19a4              # double 0.72115499999999999
	.quad	0x3fea78e1932d6ece              # double 0.82725599999999999
	.quad	0x3fea3ddb9841aac5              # double 0.82005099999999997
	.quad	0x3fd34e0daa0cae64              # double 0.30163899999999999
	.quad	0x3fcf1c10d7be9857              # double 0.24304400000000001
	.quad	0x3fe1666666666666              # double 0.54374999999999996
	.quad	0x3fe70092ccf6be38              # double 0.71882000000000001
	.quad	0x3fe101ecd4aa10e0              # double 0.53148499999999999
	.quad	0x3fefd143bf727137              # double 0.99429500000000003
	.quad	0x3fe99057d1782d38              # double 0.79886999999999997
	.quad	0x3fc1bd944aa53fc0              # double 0.138598
	.quad	0x3fd654e6e221c8a8              # double 0.34893200000000002
	.quad	0x3fdb3ed527e52157              # double 0.42570999999999998
	.quad	0x3fe72f2f9873ffac              # double 0.72450999999999999
	.quad	0x3fee2b0c88a47ed0              # double 0.94275500000000001
	.quad	0x3fea0e757928e0ca              # double 0.81426500000000002
	.quad	0x3fe7e75bc44bf4cb              # double 0.74699199999999999
	.quad	0x3fee01f969e3c969              # double 0.93774100000000005
	.quad	0x3fd8f572de43ed96              # double 0.38998100000000002
	.quad	0x3fcf53a3ec02f2fa              # double 0.24474000000000001
	.quad	0x3fdbb702602c9082              # double 0.43304500000000001
	.quad	0x3fe4c182ecaeea64              # double 0.64862200000000003
	.quad	0x3fd3c621b7e0ac7e              # double 0.30896800000000002
	.quad	0x3feb4b4f1e4b44a2              # double 0.85294300000000001
	.quad	0x3fdd28f5c28f5c29              # double 0.455625
	.quad	0x3febbcd9a52263d8              # double 0.86680299999999999
	.quad	0x3fd9c6a7ef9db22d              # double 0.40275
	.quad	0x3fef944aa53fc009              # double 0.98685199999999995
	.quad	0x3fed529fe004b7f6              # double 0.91633600000000004
	.quad	0x3fdf154003254e6e              # double 0.48567199999999999
	.quad	0x3fe8f0da5daf07c0              # double 0.77940100000000001
	.quad	0x3fb255e28aa43351              # double 0.071623000000000006
	.quad	0x3fe27eae5bc87db3              # double 0.57796400000000003
	.quad	0x3fdb7bf1e8e60807              # double 0.42943999999999999
	.quad	0x3fe32b66b6177ea2              # double 0.59904800000000002
	.quad	0x3fe8a02107b78466              # double 0.76954699999999998
	.quad	0x3fb86d5065732160              # double 0.095418000000000002
	.quad	0x3fe51856a37ac3eb              # double 0.65922099999999995
	.quad	0x3fce947064ece9a3              # double 0.23890500000000001
	.quad	0x3feca2291fb3fa6e              # double 0.89479500000000001
	.quad	0x3fd97214f0520d13              # double 0.397588
	.quad	0x3fe6d10f51ac9afe              # double 0.71301999999999999
	.quad	0x3fe76ff3ade225fa              # double 0.73241599999999996
	.quad	0x3fc32e05ccc89b0f              # double 0.149842
	.quad	0x3f5359791819d239              # double 0.001181
	.quad	0x3fb8bed740c4156e              # double 0.096661999999999997
	.quad	0x3fef716d2aa5c5f8              # double 0.98259600000000002
	.quad	0x3fe3bba98eda22f7              # double 0.61665800000000004
	.quad	0x3f9203e63e8dda49              # double 0.017593000000000001
	.quad	0x3fb243675ddd2ae9              # double 0.071341000000000002
	.quad	0x3feb8daa0cae642c              # double 0.861043
	.quad	0x3feae1240746455f              # double 0.83998300000000004
	.quad	0x3fcab9884c6a3bde              # double 0.208787
	.quad	0x3fef3ff25e56cd6c              # double 0.97655599999999997
	.quad	0x3fe4e8a71de69ad4              # double 0.65339999999999998
	.quad	0x3fe2997a24894c44              # double 0.58123499999999995
	.quad	0x3fb152f3c2dadb83              # double 0.067671999999999996
	.quad	0x3fecc5c9a34ca0c3              # double 0.89914400000000005
	.quad	0x3fb974f722e1ac58              # double 0.099441000000000002
	.quad	0x3fd3db940fecdd0e              # double 0.31027700000000003
	.quad	0x3fef288051c9f72f              # double 0.97369399999999994
	.quad	0x3fe0ffb480a5accd              # double 0.53121399999999996
	.quad	0x3fe0da98676a7265              # double 0.52668400000000004
	.quad	0x3fe88ac3a860dcba              # double 0.76693900000000004
	.quad	0x3fe542aed1394318              # double 0.66439000000000004
	.quad	0x3feaae9899bf5947              # double 0.83381300000000003
	.quad	0x3fcb7a5f41aef6f9              # double 0.214672
	.quad	0x3fe30a979e16d6dc              # double 0.59504299999999999
	.quad	0x3fec6e3715400325              # double 0.88845399999999997
	.quad	0x3fe6d199bb2788db              # double 0.713086
	.quad	0x3fdbcc144028e4fc              # double 0.43433100000000002
	.quad	0x3fe443fc43b2dd37              # double 0.63329899999999995
	.quad	0x3fec38ac18f81e8a              # double 0.88191799999999998
	.quad	0x3fdd72e6a76965f5              # double 0.46013799999999999
	.quad	0x3fe8ab7fe08aefb3              # double 0.77093500000000004
	.quad	0x3fc5b9e060fe4799              # double 0.169735
	.quad	0x3fe553953dea465a              # double 0.66645299999999996
	.quad	0x3fe6dc4a83b1d0c8              # double 0.714391
	.quad	0x3fdbcc2938de6ddf              # double 0.434336
	.quad	0x3fa74d37c1376d55              # double 0.045511000000000003
	.quad	0x3fe0f8d0cc35ce18              # double 0.53037299999999998
	.quad	0x3fe110de093532e8              # double 0.53330900000000003
	.quad	0x3fdf51bd61f5be5e              # double 0.48936400000000002
	.quad	0x3fc1081c2e33eff2              # double 0.13306000000000001
	.quad	0x3fe31b79d909f1f1              # double 0.59710399999999997
	.quad	0x3fbbd47bedb72820              # double 0.108711
	.quad	0x3febe7ea5f84cad5              # double 0.87205999999999995
	.quad	0x3fcec09c3ce2089e              # double 0.24025299999999999
	.quad	0x3fe85b0574b40703              # double 0.76111099999999998
	.quad	0x3f78cc144028e4fc              # double 0.0060540000000000004
	.quad	0x3fe1a48301a79fed              # double 0.55133200000000004
	.quad	0x3fe7c91afc04c8bd              # double 0.74329900000000004
	.quad	0x3fc2c47a17f4128c              # double 0.146621
	.quad	0x3fb73e468cac4b4d              # double 0.090794
	.quad	0x3fbe4b33daf8df7a              # double 0.118335
	.quad	0x3fd8f0520d130dfa              # double 0.38966800000000001
	.quad	0x3fd85e4606748e47              # double 0.38075399999999998
	.quad	0x3fe8bf359ff4fd6d              # double 0.77334099999999995
	.quad	0x3fdfaa3f034b0e1b              # double 0.49476599999999998
	.quad	0x3fd54f440af1cb8a              # double 0.33296300000000001
	.quad	0x3fda21e1d2178f69              # double 0.40831800000000001
	.quad	0x3fe0885b18548a9c              # double 0.51664500000000002
	.quad	0x3fd00121682f9442              # double 0.25006899999999999
	.quad	0x3fd48a159817b95a              # double 0.32092799999999999
	.quad	0x3fcdb91f70de8f6d              # double 0.232212
	.quad	0x3fe68f88333fc86d              # double 0.70502100000000001
	.quad	0x3fe2e8ee6b8305d9              # double 0.59093399999999996
	.quad	0x3fc0ec743201040c              # double 0.132216
	.quad	0x3fef461d8622c450              # double 0.97730899999999998
	.quad	0x3fe5b48f53c579f2              # double 0.67829099999999998
	.quad	0x3fc42595bbbe8790              # double 0.15739700000000001
	.quad	0x3fd2a719b4dcebff              # double 0.29144900000000001
	.quad	0x3fce8398a65492ff              # double 0.23839099999999999
	.quad	0x3fe6d903a7546d40              # double 0.71399100000000004
	.quad	0x3fdb163baba7b917              # double 0.423232
	.quad	0x3fe77bd273d5bab2              # double 0.73386499999999999
	.quad	0x3fde71cda2b5a20e              # double 0.47569600000000001
	.quad	0x3fa09e774eebf65e              # double 0.032459000000000002
	.quad	0x3fe27789a459103d              # double 0.57709200000000005
	.quad	0x3fe86088d6d3b6cc              # double 0.76178400000000001
	.quad	0x3fe40909289dadfb              # double 0.62610299999999997
	.quad	0x3fe7e7c6b8b69553              # double 0.74704300000000001
	.quad	0x3fe96030c23fab11              # double 0.79299200000000003
	.quad	0x3fdda6ce358298cc              # double 0.463306
	.quad	0x3fd0f177a7008a69              # double 0.26473799999999997
	.quad	0x3fd0a0902de00d1b              # double 0.25979999999999998
	.quad	0x3fcaae85b9e8c47a              # double 0.208451
	.quad	0x3fe57cf80dc33722              # double 0.67150500000000002
	.quad	0x3fed5d82fd75e204              # double 0.91766499999999995
	.quad	0x3f614b167ec7863c              # double 0.002111
	.quad	0x3fef058bc59b8024              # double 0.96942700000000003
	.quad	0x3fea273d5bab2181              # double 0.81728999999999996
	.quad	0x3fe91ba3ca7503b8              # double 0.78462399999999999
	.quad	0x3fee7fbacb428912              # double 0.95309200000000005
	.quad	0x3fe52350d2806af4              # double 0.66056099999999995
	.quad	0x3fd54a6a875d56f3              # double 0.33266699999999999
	.quad	0x3fdd748e4755ffe7              # double 0.46023900000000001
	.quad	0x3fd1c46d82ba5a04              # double 0.27761400000000003
	.quad	0x3fe32352eb5f5f0b              # double 0.59806199999999998
	.quad	0x3fde21dda059a73b              # double 0.47081699999999999
	.quad	0x3fe6df41aef6f8f0              # double 0.71475299999999997
	.quad	0x3fed44b2b777d0f2              # double 0.914636
	.quad	0x3fd06dc1a47a9e2c              # double 0.25669900000000001
	.quad	0x3fe8707e175d13d7              # double 0.76373199999999997
	.quad	0x3febf954eb13dfb1              # double 0.87418600000000002
	.quad	0x3fdf3c74fb549f95              # double 0.48806500000000003
	.quad	0x3fde134ce3de614a              # double 0.46992800000000001
	.quad	0x3fd98d92fb19e732              # double 0.39926600000000001
	.quad	0x3fd7f97edc7ef178              # double 0.37460300000000002
	.quad	0x3fe0d9d3458cd20b              # double 0.52659
	.quad	0x3fe519e731d2e0e3              # double 0.659412
	.quad	0x3fcdb3aeee957471              # double 0.232046
	.quad	0x3fef4929aa1d755c              # double 0.97768100000000002
	.quad	0x3fd011cf355cd91f              # double 0.251087
	.quad	0x3fc6bc382a12f901              # double 0.177619
	.quad	0x3fcd4a558ea7ce10              # double 0.22883100000000001
	.quad	0x3feb58cb07d0aeda              # double 0.85458900000000004
	.quad	0x3fcb300de4c51117              # double 0.21240400000000001
	.quad	0x3fe5b6199780baa6              # double 0.67847900000000005
	.quad	0x3fd793708aac96cc              # double 0.36837399999999998
	.quad	0x3fb1dcb5781c7150              # double 0.069774000000000003
	.quad	0x3fe05530489d27c4              # double 0.51039900000000005
	.quad	0x3f95985ad538ac19              # double 0.021089
	.quad	0x3fea53d640e9d51b              # double 0.82273399999999997
	.quad	0x3fed3fe7e1fc08fa              # double 0.91405099999999995
	.quad	0x3fd74ead0c3d2524              # double 0.36417699999999997
	.quad	0x3fdfacc92146a1a5              # double 0.494921
	.quad	0x3fc62dadb8348f54              # double 0.17326900000000001
	.quad	0x3f814d2f5dbb9cfa              # double 0.0084480000000000006
	.quad	0x3fe7b300de4c5111              # double 0.74060099999999995
	.quad	0x3fe0bead4f5903a7              # double 0.52327599999999996
	.quad	0x3fbbc45cbbc2b94e              # double 0.10846500000000001
	.quad	0x3fb78b47c73eee52              # double 0.091968999999999995
	.quad	0x3fd976534373f317              # double 0.39784700000000001
	.quad	0x3fcaa8198f1d3ed5              # double 0.208255
	.quad	0x3fe680a5accd5305              # double 0.70320400000000005
	.quad	0x3feff8a2a90cd424              # double 0.99910100000000001
	.quad	0x3fe77212d77318fc              # double 0.73267499999999997
	.quad	0x3fceda33bd9cae21              # double 0.241034
	.quad	0x3fef35e310dbf056              # double 0.97532799999999997
	.quad	0x3fd2414e7ee9142b              # double 0.28523599999999999
	.quad	0x3fb8f3775b813016              # double 0.097464999999999996
	.quad	0x3fd1d045fe111277              # double 0.278337
	.quad	0x3fe3b6c15d2d01c1              # double 0.61605900000000002
	.quad	0x3fca83e425aee632              # double 0.20715
	.quad	0x3fc1254e6e221c8a              # double 0.13395099999999999
	.quad	0x3fdc2a3cea6c1a05              # double 0.44007800000000002
	.quad	0x3fec522424a276b8              # double 0.88502700000000001
	.quad	0x3fe63d640e9d51b5              # double 0.694994
	.quad	0x3fd967e414e7ee91              # double 0.39696599999999999
	.quad	0x3fe1d1159c497742              # double 0.55677299999999996
	.quad	0x3fe9fa919695d91b              # double 0.81183700000000003
	.quad	0x3fe6ac386d2ed784              # double 0.70852300000000001
	.quad	0x3feabc2dadb8348f              # double 0.83547099999999996
	.quad	0x3fe5308dd1e53a82              # double 0.66217700000000002
	.quad	0x3fef33a2595bbbe8              # double 0.97505299999999994
	.quad	0x3feeb504c48adeec              # double 0.95959700000000003
	.quad	0x3fe999c9d5a187a5              # double 0.80002300000000004
	.quad	0x3fdc699c7bcc2939              # double 0.44394600000000001
	.quad	0x3fd2fc2a8869c66d              # double 0.29664099999999999
	.quad	0x3fa1565c2d278078              # double 0.033862000000000003
	.quad	0x3fe7799e518f3ecd              # double 0.73359600000000003
	.quad	0x3fe177ea1c68ec53              # double 0.54588800000000004
	.quad	0x3fed8a350d2806af              # double 0.92312099999999997
	.quad	0x3fcc15336deb95e6              # double 0.21939700000000001
	.quad	0x3fe136c7a7c9de05              # double 0.537937
	.quad	0x3fe0c78e9f6a93f3              # double 0.52436000000000005
	.quad	0x3feca19c9d5a187a              # double 0.89472799999999997
	.quad	0x3fcf0d1fa333764f              # double 0.242588
	.quad	0x3fd39d2bf5515055              # double 0.30646800000000002
	.quad	0x3fe94fd6d7e889c2              # double 0.79099600000000003
	.quad	0x3fee2b239a38fbca              # double 0.94276599999999999
	.quad	0x3feeb40d4dc65c70              # double 0.95947899999999997
	.quad	0x3fbe50507a6bd6e9              # double 0.118413
	.quad	0x3fe867d9988d2a20              # double 0.76267700000000004
	.quad	0x3fd46223e1869835              # double 0.31849
	.quad	0x3f7e481f53825e14              # double 0.0073930000000000003
	.quad	0x3fe6298eda22f6a5              # double 0.69257299999999999
	.quad	0x3fde53f7ced91687              # double 0.47387499999999999
	.quad	0x3fe43cf2cf95d4e9              # double 0.63244
	.quad	0x3feda7f3cf70153c              # double 0.92675200000000002
	.quad	0x3fd0e1ac57e23f25              # double 0.26377400000000001
	.quad	0x3feb9c90c4dec1c2              # double 0.86286200000000002
	.quad	0x3fd83cbc48f10a9a              # double 0.37870700000000002
	.quad	0x3fe5d2263d816acf              # double 0.68190300000000004
	.quad	0x3feb09e34330d738              # double 0.84495699999999996
	.quad	0x3fe728c154c985f0              # double 0.72372499999999995
	.quad	0x3fc5dee78183f91e              # double 0.17086499999999999
	.quad	0x3fe60c586876e1df              # double 0.68900700000000004
	.quad	0x3fead3ed527e5215              # double 0.83836999999999995
	.quad	0x3fd5af1cb89d6adf              # double 0.33881299999999998
	.quad	0x3fcd81c714fce747              # double 0.23052300000000001
	.quad	0x3fc1ef0f16f4384c              # double 0.14010800000000001
	.quad	0x3fe4794ea077036d              # double 0.63980800000000004
	.quad	0x3fef9fa76534373f              # double 0.98823899999999997
	.quad	0x3fdac32ebe596c83              # double 0.41816300000000001
	.quad	0x3fb498c3b0c4588a              # double 0.080455999999999999
	.quad	0x3fcf2923e5b8561d              # double 0.24344299999999999
	.quad	0x3fee778dd616f86a              # double 0.952094
	.quad	0x3fe7b17efe0ce0b9              # double 0.74041699999999999
	.quad	0x3fe82f661f18c9fb              # double 0.75578599999999996
	.quad	0x3fef257214f0520d              # double 0.97332099999999999
	.quad	0x3fecbd89ce4a7b4e              # double 0.89813699999999996
	.quad	0x3fc48943e1006078              # double 0.160439
	.quad	0x3fe93e0bd44998d0              # double 0.78882399999999997
	.quad	0x3fef5627bf61aa3f              # double 0.97926699999999999
	.quad	0x3fe240c4156e264e              # double 0.57040599999999997
	.quad	0x3fa4c814d72799a2              # double 0.040589
	.quad	0x3fe2db59578a2a91              # double 0.58927600000000002
	.quad	0x3feab66d7a56de33              # double 0.83476899999999998
	.quad	0x3fee161a1db877ab              # double 0.94019799999999998
	.quad	0x3fdfe23f24d8fd5d              # double 0.49818400000000002
	.quad	0x3fe7a554b8bef8cf              # double 0.73893200000000003
	.quad	0x3fdfe368f08461fa              # double 0.498255
	.quad	0x3fed7b17ce52deca              # double 0.92127599999999998
	.quad	0x3fd9ddf00abf76a3              # double 0.404171
	.quad	0x3fe4caa53fc00970              # double 0.64973700000000001
	.quad	0x3feea98eda22f6a5              # double 0.95819799999999999
	.quad	0x3fece98bb4d48883              # double 0.90350900000000001
	.quad	0x3fe110cb295e9e1b              # double 0.5333
	.quad	0x3fb2b0856e696a27              # double 0.073006000000000001
	.quad	0x3fedc60aa64c2f83              # double 0.93042499999999995
	.quad	0x3fe02326e115592e              # double 0.50429100000000004
	.quad	0x3fd5c48adeebb342              # double 0.34012100000000001
	.quad	0x3fee363f572de43f              # double 0.94412200000000002
	.quad	0x3fe18f29d40ee06e              # double 0.54872600000000005
	.quad	0x3fd9e88df37329c3              # double 0.40481899999999998
	.quad	0x3fd467125dd095af              # double 0.31879099999999999
	.quad	0x3fa08d8ec95bff04              # double 0.032329999999999998
	.quad	0x3feda5c3dee78184              # double 0.926485
	.quad	0x3fc95c5b4aa9717e              # double 0.198131
	.quad	0x3fe5090f733a8a40              # double 0.65735600000000005
	.quad	0x3fd584be40420f6f              # double 0.336227
	.quad	0x3fe88323358f2e06              # double 0.76600800000000002
	.quad	0x3fa3f141205bc01a              # double 0.038949999999999999
	.quad	0x3feee0114d2f5dbc              # double 0.96485200000000004
	.quad	0x3fe42a3cea6c1a05              # double 0.63015600000000005
	.quad	0x3fddcc5b8dc55001              # double 0.46559800000000001
	.quad	0x3fb544bb1af3a14d              # double 0.083080000000000001
	.quad	0x3fd30f840181e03f              # double 0.29782199999999998
	.quad	0x3fe7ec58eeae9ee4              # double 0.74760099999999996
	.quad	0x3fe91ab0856e696a              # double 0.78450799999999998
	.quad	0x3fc75fd47bedb728              # double 0.182612
	.quad	0x3f92a8438088509c              # double 0.01822
	.quad	0x3fe085a2d72ffd1e              # double 0.51631300000000002
	.quad	0x3fead017dae81883              # double 0.83790200000000004
	.quad	0x3fecdaf4adbc664d              # double 0.90172799999999997
	.quad	0x3faec13b9f127f5f              # double 0.060068000000000003
	.quad	0x3fee5ece5710880e              # double 0.94907300000000006
	.quad	0x3fe021ea35935fc4              # double 0.50414000000000003
	.quad	0x3fdbb295e9e1b08a              # double 0.43277500000000002
	.quad	0x3fa589ce4a7b4e55              # double 0.042067
	.quad	0x3fda3c1ce6c093d9              # double 0.40991899999999998
	.quad	0x3fd600cd855970b5              # double 0.34379900000000002
	.quad	0x3fc4ba94bbe4473d              # double 0.161944
	.quad	0x3fec513b5bf6a0dc              # double 0.88491600000000003
	.quad	0x3fe5445ed4a1ad64              # double 0.66459599999999996
	.quad	0x3fcfc42a66dbd72c              # double 0.24817400000000001
	.quad	0x3fe6d1f81a5870da              # double 0.71313099999999996
	.quad	0x3fe7a9131ec0b567              # double 0.73938899999999996
	.quad	0x3fe0277e5eaab042              # double 0.50482099999999996
	.quad	0x3fe6852b4d8ba40e              # double 0.70375600000000005
	.quad	0x3fda6950fc71d606              # double 0.41267799999999999
	.quad	0x3f9f2f123c42a66e              # double 0.030453000000000001
	.quad	0x3fefdf6ba0620ab7              # double 0.99602299999999999
	.quad	0x3fd47c5692b3cc4b              # double 0.32008900000000001
	.quad	0x3feccc22ee41919b              # double 0.89991900000000002
	.quad	0x3fd2ac6cdaf4adbc              # double 0.29177399999999998
	.quad	0x3fea4d184c271fff              # double 0.82191099999999995
	.quad	0x3fecd373affb04ee              # double 0.90081199999999995
	.quad	0x3fe95e8d5410f94d              # double 0.79279200000000005
	.quad	0x3fe0c1ce6c093d96              # double 0.52365799999999996
	.quad	0x3fd0b42cc2d6a9c5              # double 0.26099699999999998
	.quad	0x3fe56933a0407cc8              # double 0.66909200000000002
	.quad	0x3fc8ec3116228134              # double 0.19470799999999999
	.quad	0x3f98e0008637bd06              # double 0.024292000000000001
	.quad	0x3fde9b456b441bb9              # double 0.47822700000000001
	.quad	0x3fe0b463497b7415              # double 0.52202000000000004
	.quad	0x3fdff644955b4678              # double 0.49940600000000002
	.quad	0x3fcbf5ad96a6a012              # double 0.21843499999999999
	.quad	0x3fb6731d2e0e3044              # double 0.087693999999999994
	.quad	0x3fc3f4c2b51bd61f              # double 0.15590699999999999
	.quad	0x3fe0e2e2b8c75c4b              # double 0.52769600000000005
	.quad	0x3fa460aa64c2f838              # double 0.039800000000000002
	.quad	0x3fe640420f6f08cc              # double 0.69534399999999996
	.quad	0x3fc571d1d4738a3b              # double 0.16753599999999999
	.quad	0x3fe76162f166e009              # double 0.73063800000000001
	.quad	0x3feac477ff151e75              # double 0.83648299999999998
	.quad	0x3fee160956c0d6f5              # double 0.94018999999999997
	.quad	0x3fe5e1ef73c0c1fd              # double 0.68383000000000005
	.quad	0x3fb77a7008a697af              # double 0.091712000000000002
	.quad	0x3fe921b1960fa15e              # double 0.78536300000000003
	.quad	0x3fd84bf8fcd67fd4              # double 0.379637
	.quad	0x3fdf6af89c5e6ff8              # double 0.49090400000000001
	.quad	0x3fea9b75a74c09c4              # double 0.83147700000000002
	.quad	0x3fe0d6cf850df15a              # double 0.52622199999999997
	.quad	0x3fe40e4da09cc31a              # double 0.62674600000000003
	.quad	0x3fb08e043a2163fe              # double 0.064667000000000002
	.quad	0x3fe190d7be9856a3              # double 0.54893099999999995
	.quad	0x3fe52ecf20642396              # double 0.661964
	.quad	0x3fe80151a437824d              # double 0.75016099999999997
	.quad	0x3fe62bead4f5903a              # double 0.69286099999999995
	.quad	0x3fe3926202539757              # double 0.61161900000000002
	.quad	0x3fedfdcbddb9841b              # double 0.93723100000000004
	.quad	0x3fee6b313be22e5e              # double 0.95058500000000001
	.quad	0x3feef2b4528283d3              # double 0.96712699999999995
	.quad	0x3feeda6e75ff609e              # double 0.96416400000000002
	.quad	0x3fef4c39ffd60e95              # double 0.978055
	.quad	0x3feae2d6238da3c2              # double 0.84018999999999999
	.quad	0x3f9bae89eba6aca8              # double 0.027033000000000001
	.quad	0x3fd6046c764adff8              # double 0.34401999999999999
	.quad	0x3feef548ecd8dbcf              # double 0.96744200000000002
	.quad	0x3fedceca686e7e63              # double 0.93149300000000002
	.quad	0x3fd2abfb9bed30f0              # double 0.29174699999999998
	.quad	0x3fd7932d6ece13f5              # double 0.36835800000000002
	.quad	0x3fbf52eb5f5f0b28              # double 0.122359
	.quad	0x3fdf5df2239e6aba              # double 0.49010900000000002
	.quad	0x3fdf373affb04ee8              # double 0.48774600000000001
	.quad	0x3fc384449dbec248              # double 0.152474
	.quad	0x3fe13d7d3910c2c6              # double 0.53875600000000001
	.quad	0x3fc1fa54c5543287              # double 0.14045199999999999
	.quad	0x3fe968e60807357e              # double 0.79405499999999996
	.quad	0x3fe56b3fe9fadafd              # double 0.66934199999999999
	.quad	0x3fef116228134480              # double 0.97087199999999996
	.quad	0x3fdea4ebdd334c5e              # double 0.47881600000000002
	.quad	0x3fea662131a8ef78              # double 0.82496700000000001
	.quad	0x3feb9cb252ce032e              # double 0.86287800000000003
	.quad	0x3f7930be0ded288d              # double 0.0061500000000000001
	.quad	0x3fb87fdc5931ca7d              # double 0.095700999999999994
	.quad	0x3fed548882f0e0a8              # double 0.91656899999999997
	.quad	0x3fdcb1e5c0b99913              # double 0.44835799999999998
	.quad	0x3fe431a8ef77f280              # double 0.63106200000000001
	.quad	0x3fe873d3a1d323ff              # double 0.76413900000000001
	.quad	0x3fe1a159817b95a3              # double 0.55094600000000005
	.quad	0x3fec1044f1a1986c              # double 0.87698600000000004
	.quad	0x3fec3a53b8e4b87c              # double 0.88212000000000001
	.quad	0x3fec924f227d028a              # double 0.89285999999999999
	.quad	0x3fec1a2403148777              # double 0.87819100000000005
	.quad	0x3fe7f7446f9b994e              # double 0.74893399999999999
	.quad	0x3fe2c5f394b7b289              # double 0.58666399999999996
	.quad	0x3fed6ededaec4a41              # double 0.91978400000000005
	.quad	0x3fcc848387df5cf2              # double 0.22279399999999999
	.quad	0x3fe0049667b5f1bf              # double 0.50056
	.quad	0x3fdb3d1cc100e6b0              # double 0.42560500000000001
	.quad	0x3fe248eabffcdab2              # double 0.57140100000000005
	.quad	0x3feb46cdaf4adbc6              # double 0.85239299999999996
	.quad	0x3fdcaa715831f03d              # double 0.447903
	.quad	0x3fd85e6ff7dfa00e              # double 0.38076399999999999
	.quad	0x3fa6f9fcb0c026cc              # double 0.044875999999999999
	.quad	0x3fec6da87a072d1b              # double 0.88838600000000001
	.quad	0x3fc66034f3fd933e              # double 0.17481099999999999
	.quad	0x3fe155f138bcdff0              # double 0.54174100000000003
	.quad	0x3fe6cacaff6d3309              # double 0.71225499999999997
	.quad	0x3fd7c22ee41919ac              # double 0.37122699999999997
	.quad	0x3fe72c258d5842b7              # double 0.72413899999999998
	.quad	0x3fdf0995aaf78fef              # double 0.48496
	.quad	0x3fe81e96c3fc43b3              # double 0.75373400000000002
	.quad	0x3fc92e3821af7d31              # double 0.19672300000000001
	.quad	0x3fd2bea91d9b1b7a              # double 0.29288700000000001
	.quad	0x3fe9aa7bd48cb4af              # double 0.80206100000000002
	.quad	0x3fed0d10f51ac9b0              # double 0.90784500000000001
	.quad	0x3fc0e7e62dc6e2a8              # double 0.132077
	.quad	0x3fe2bd68405b39e2              # double 0.58562099999999995
	.quad	0x3fe7b28d8665e02f              # double 0.74054600000000004
	.quad	0x3fea27ae9ab29e4d              # double 0.81734399999999996
	.quad	0x3fd835b0bbf50e34              # double 0.37827699999999997
	.quad	0x3fe4df5f0b28522f              # double 0.65226700000000004
	.quad	0x3fc74d594f26aec0              # double 0.18204799999999999
	.quad	0x3fde6d15ad106ee3              # double 0.475408
	.quad	0x3fa4a5bd944aa540              # double 0.040327000000000002
	.quad	0x3fbbaeff5c6c11a1              # double 0.108139
	.quad	0x3fea85015c209247              # double 0.82873600000000003
	.quad	0x3fefecbfb15b573f              # double 0.99765000000000003
	.quad	0x3f93cab81f969e3d              # double 0.019328000000000001
	.quad	0x3fe61b25f633ce64              # double 0.69081400000000004
	.quad	0x3fe6dea897635e74              # double 0.71467999999999998
	.quad	0x3fd5dedf1e0828c3              # double 0.34172799999999998
	.quad	0x3fdb9ffd60e94ee4              # double 0.43164000000000002
	.quad	0x3fcd78ee28672757              # double 0.23025300000000001
	.quad	0x3feb24fa8b4bf8fd              # double 0.84826400000000002
	.quad	0x3fed6d1e108c3f3e              # double 0.91957
	.quad	0x3febc46b69db65ed              # double 0.86772700000000003
	.quad	0x3fe5c855da272863              # double 0.680705
	.quad	0x3fe92a23bff8a8f4              # double 0.78639400000000003
	.quad	0x3fe907d4e09784ec              # double 0.78220599999999995
	.quad	0x3fdbe115592d98bf              # double 0.43561299999999997
	.quad	0x3fd083947496aad2              # double 0.25803100000000001
	.quad	0x3fe3d972cd7cf5f5              # double 0.62029400000000001
	.quad	0x3fea54dc65c70436              # double 0.82285900000000001
	.quad	0x3fd6b845564b6630              # double 0.35499700000000001
	.quad	0x3fda3e3e29307af2              # double 0.410049
	.quad	0x3fda08787485e3da              # double 0.40676699999999999
	.quad	0x3fe192be48a58b3f              # double 0.54916299999999996
	.quad	0x3fe97fd82773e250              # double 0.79685600000000001
	.quad	0x3fe17c47e49b1fac              # double 0.54642100000000005
	.quad	0x3fc85ecc3e3193f7              # double 0.19039300000000001
	.quad	0x3fa74666ec9e236c              # double 0.045458999999999999
	.quad	0x3fc8fb00bcbe61d0              # double 0.19516
	.quad	0x3fdd3fc0096feb4a              # double 0.45701599999999998
	.quad	0x3fd027a20578e5c5              # double 0.252419
	.quad	0x3fe7aacd9e83e426              # double 0.73960000000000004
	.quad	0x3fba66cb10342aaa              # double 0.103131
	.quad	0x3fc2a875d56f32be              # double 0.14576600000000001
	.quad	0x3fe4e33acd5b6806              # double 0.65273800000000004
	.quad	0x3fe9adb61bb05faf              # double 0.80245500000000003
	.quad	0x3fc11455219a847b              # double 0.133433
	.quad	0x3fd72517e77d523b              # double 0.36163899999999999
	.quad	0x3fe331832fcac8e7              # double 0.59979400000000005
	.quad	0x3fd410e453d20f2c              # double 0.313531
	.quad	0x3fe367fd3f5b5fa2              # double 0.60644399999999998
	.quad	0x3fe63bbe878fabda              # double 0.69479299999999999
	.quad	0x3fd59fb1e18efbb1              # double 0.33787200000000001
	.quad	0x3fe8c81d3aa369fd              # double 0.77442800000000001
	.quad	0x3fd5f1bac2df0d41              # double 0.34287899999999999
	.quad	0x3fdd3a96d4c33b54              # double 0.45670100000000002
	.quad	0x3fca77ff151e7536              # double 0.206787
	.quad	0x3fdc290abb44e50c              # double 0.44000499999999998
	.quad	0x3fe74158fb43d89d              # double 0.72672700000000001
	.quad	0x3fe2be5d9e40c847              # double 0.58573799999999998
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	28                              # 0x1c
	.quad	28                              # 0x1c
	.quad	62                              # 0x3e
	.quad	62                              # 0x3e
	.quad	94                              # 0x5e
	.quad	94                              # 0x5e
	.quad	127                             # 0x7f
	.quad	127                             # 0x7f
	.quad	161                             # 0xa1
	.quad	161                             # 0xa1
	.quad	192                             # 0xc0
	.quad	192                             # 0xc0
	.quad	221                             # 0xdd
	.quad	221                             # 0xdd
	.quad	251                             # 0xfb
	.quad	251                             # 0xfb
	.quad	280                             # 0x118
	.quad	280                             # 0x118
	.quad	312                             # 0x138
	.quad	312                             # 0x138
	.quad	340                             # 0x154
	.quad	340                             # 0x154
	.quad	365                             # 0x16d
	.quad	365                             # 0x16d
	.quad	394                             # 0x18a
	.quad	394                             # 0x18a
	.quad	425                             # 0x1a9
	.quad	425                             # 0x1a9
	.quad	457                             # 0x1c9
	.quad	457                             # 0x1c9
	.quad	492                             # 0x1ec
	.quad	492                             # 0x1ec
	.quad	523                             # 0x20b
	.quad	523                             # 0x20b
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	579                             # 0x243
	.quad	579                             # 0x243
	.quad	606                             # 0x25e
	.quad	606                             # 0x25e
	.quad	636                             # 0x27c
	.quad	636                             # 0x27c
	.quad	665                             # 0x299
	.quad	665                             # 0x299
	.quad	696                             # 0x2b8
	.quad	696                             # 0x2b8
	.quad	727                             # 0x2d7
	.quad	727                             # 0x2d7
	.quad	749                             # 0x2ed
	.quad	749                             # 0x2ed
	.quad	782                             # 0x30e
	.quad	782                             # 0x30e
	.quad	810                             # 0x32a
	.quad	810                             # 0x32a
	.quad	837                             # 0x345
	.quad	837                             # 0x345
	.quad	873                             # 0x369
	.quad	873                             # 0x369
	.quad	897                             # 0x381
	.quad	897                             # 0x381
	.quad	928                             # 0x3a0
	.quad	928                             # 0x3a0
	.quad	960                             # 0x3c0
	.quad	960                             # 0x3c0
	.quad	994                             # 0x3e2
	.quad	994                             # 0x3e2
	.quad	1031                            # 0x407
	.quad	1031                            # 0x407
	.quad	1060                            # 0x424
	.quad	1060                            # 0x424
	.quad	1089                            # 0x441
	.quad	1089                            # 0x441
	.quad	1126                            # 0x466
	.quad	1126                            # 0x466
	.quad	1158                            # 0x486
	.quad	1158                            # 0x486
	.quad	1187                            # 0x4a3
	.quad	1187                            # 0x4a3
	.quad	1215                            # 0x4bf
	.quad	1215                            # 0x4bf
	.quad	1240                            # 0x4d8
	.quad	1240                            # 0x4d8
	.quad	1269                            # 0x4f5
	.quad	1269                            # 0x4f5
	.quad	1299                            # 0x513
	.quad	1299                            # 0x513
	.quad	1330                            # 0x532
	.quad	1330                            # 0x532
	.quad	1356                            # 0x54c
	.quad	1356                            # 0x54c
	.quad	1383                            # 0x567
	.quad	1383                            # 0x567
	.quad	1409                            # 0x581
	.quad	1409                            # 0x581
	.quad	1443                            # 0x5a3
	.quad	1443                            # 0x5a3
	.quad	1477                            # 0x5c5
	.quad	1477                            # 0x5c5
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1500xf64, 12000

	.section	".note.GNU-stack","",@progbits
