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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	0x3fd45e4a38327675              # double 0.31825500000000001
	.quad	0x3fcdd9ba1b1960fa              # double 0.233207
	.quad	0x3fec0ae9680e0653              # double 0.876332
	.quad	0x3fe6b152f3c2dadc              # double 0.70914600000000005
	.quad	0x3fd92a5e785b5b70              # double 0.39321099999999998
	.quad	0x3fe9a4f00ef1348b              # double 0.80138399999999999
	.quad	0x3fe671e29b6b2af1              # double 0.70140199999999997
	.quad	0x3fbb97460242d05f              # double 0.107777
	.quad	0x3fbe93af74cd3177              # double 0.11944100000000001
	.quad	0x3faaafbc1acde1a0              # double 0.052122000000000002
	.quad	0x3fd61fd9ba1b1961              # double 0.345694
	.quad	0x3fedd3e920c069e8              # double 0.932118
	.quad	0x3fe9810e8858ff76              # double 0.79700400000000005
	.quad	0x3f8cae21101b0037              # double 0.014004000000000001
	.quad	0x3fc3db6e503fb374              # double 0.15513399999999999
	.quad	0x3fc7021d10b1feeb              # double 0.179752
	.quad	0x3f9b7f1737542a24              # double 0.026852000000000001
	.quad	0x3fdee7a743a647fe              # double 0.48288900000000001
	.quad	0x3fef2715831f03d1              # double 0.97352099999999996
	.quad	0x3fedffcfc3f811f5              # double 0.937477
	.quad	0x3fdefcdee34fc611              # double 0.484184
	.quad	0x3fed0639d5e4a383              # double 0.90700999999999998
	.quad	0x3fe8f6d7625204b0              # double 0.78013200000000005
	.quad	0x3fdd6238da3c2118              # double 0.45911999999999997
	.quad	0x3fd903afb7e90ff9              # double 0.39084999999999998
	.quad	0x3feea355043e5322              # double 0.95743800000000001
	.quad	0x3fe2a699c7bcc294              # double 0.58283700000000005
	.quad	0x3fda28e4fb97bb73              # double 0.408746
	.quad	0x3fd10a63305100a4              # double 0.26625900000000002
	.quad	0x3fea6f0281ba7fc3              # double 0.82605099999999998
	.quad	0x3fee7cdcca70d1fa              # double 0.95274199999999998
	.quad	0x3fe4ecdaf4adbc66              # double 0.65391299999999997
	.quad	0x3fc8f42784a9478d              # double 0.19495100000000001
	.quad	0x3feaea8b8f14db59              # double 0.84113099999999996
	.quad	0x3fe8ae924f227d03              # double 0.77131000000000005
	.quad	0x3fd262f166e008ea              # double 0.28728900000000002
	.quad	0x3fe2639b456b441c              # double 0.57465900000000003
	.quad	0x3fd718c9fb6134ce              # double 0.36088799999999999
	.quad	0x3fea24acf312b1b3              # double 0.81697699999999995
	.quad	0x3fa204af922962d0              # double 0.035192000000000001
	.quad	0x3fcea172abef06b3              # double 0.23930199999999999
	.quad	0x3fee40852b4d8ba4              # double 0.94537599999999999
	.quad	0x3fd13f8982cb20fb              # double 0.26950299999999999
	.quad	0x3fd549cb252ce033              # double 0.33262900000000001
	.quad	0x3fed4a07f66e86c6              # double 0.91528699999999996
	.quad	0x3f3040bfe3b03e21              # double 2.4800000000000001E-4
	.quad	0x3fe1660e51d25aab              # double 0.54370799999999997
	.quad	0x3fe3235f80991794              # double 0.59806800000000004
	.quad	0x3fe7854ac29bf163              # double 0.73502100000000004
	.quad	0x3feade28aa433509              # double 0.839619
	.quad	0x3fd3df090f733a8a              # double 0.31048799999999999
	.quad	0x3fc4852b4d8ba40e              # double 0.16031400000000001
	.quad	0x3fe80642396073de              # double 0.75076399999999999
	.quad	0x3f8107746887a8d6              # double 0.0083149999999999995
	.quad	0x3fd66deb95e5aff3              # double 0.35045900000000002
	.quad	0x3fa858dde7a743a6              # double 0.047552999999999998
	.quad	0x3fc5a67a52ac753e              # double 0.16914299999999999
	.quad	0x3fcacac4b4d056c5              # double 0.209313
	.quad	0x3fd67dd00f776c48              # double 0.35142899999999999
	.quad	0x3febc3fe5c91d14e              # double 0.86767499999999997
	.quad	0x3fd6c0229a5ebb77              # double 0.35547699999999999
	.quad	0x3fe6021d10b1feeb              # double 0.68775799999999998
	.quad	0x3fb24628027d88c2              # double 0.071383000000000002
	.quad	0x3f942d490e66cb10              # double 0.019703999999999999
	.quad	0x3fd359a73b42cc2d              # double 0.30234699999999998
	.quad	0x3faa62ed352220bc              # double 0.051535999999999998
	.quad	0x3fe6823a6ce3582a              # double 0.70339700000000005
	.quad	0x3fde87b139c94f6a              # double 0.47703200000000001
	.quad	0x3fdc99fe43675ddd              # double 0.44689899999999999
	.quad	0x3fe5bc0c1fc8f323              # double 0.67920499999999995
	.quad	0x3fe98ded288ce704              # double 0.79857500000000003
	.quad	0x3fe6ad1f1cfbb949              # double 0.70863299999999996
	.quad	0x3fe31ba5e353f7cf              # double 0.59712500000000002
	.quad	0x3fdd6b65a9a80496              # double 0.45967999999999998
	.quad	0x3fda6f86a098915c              # double 0.41305700000000001
	.quad	0x3fe3c4f3ba775fb3              # double 0.61779200000000001
	.quad	0x3fec6c6583e8576d              # double 0.88823200000000002
	.quad	0x3fe19d712a0ec743              # double 0.55046899999999999
	.quad	0x3febba109d0635a4              # double 0.86646299999999998
	.quad	0x3fdb0d306a2b1705              # double 0.42268
	.quad	0x3fe215208e150119              # double 0.565079
	.quad	0x3fe21d66adb402d1              # double 0.56608899999999995
	.quad	0x3fe9743419e30015              # double 0.795435
	.quad	0x3fd5103c8e25c811              # double 0.32911600000000002
	.quad	0x3fe42a2a0a958538              # double 0.63014700000000001
	.quad	0x3fed3ac710cb295f              # double 0.91342500000000004
	.quad	0x3fde2ff4ba51a006              # double 0.47167700000000001
	.quad	0x3fe7b2db1e9f2778              # double 0.74058299999999999
	.quad	0x3fe99287c200c0f0              # double 0.79913699999999999
	.quad	0x3fd8dba0a5269596              # double 0.388405
	.quad	0x3fd47995ee136e72              # double 0.31992100000000001
	.quad	0x3fd5e6a337a80cfa              # double 0.34220200000000001
	.quad	0x3fe51f2ba9d1f601              # double 0.66005499999999995
	.quad	0x3fec25204af92296              # double 0.87953199999999998
	.quad	0x3fd126aec0724b77              # double 0.267986
	.quad	0x3fc5ba7fc32ebe59              # double 0.16975399999999999
	.quad	0x3fd746173b85e80c              # double 0.363653
	.quad	0x3fc619008205ff1e              # double 0.17263800000000001
	.quad	0x3fe613cee9dd7ecc              # double 0.68991800000000003
	.quad	0x3fe15c26dce39b45              # double 0.54249899999999995
	.quad	0x3fdb644523f67f4e              # double 0.42799500000000001
	.quad	0x3fce65e892253112              # double 0.237485
	.quad	0x3fe0c11a11233df3              # double 0.52357200000000004
	.quad	0x3fbc7ef177a7008a              # double 0.11131199999999999
	.quad	0x3fd0ec3dab5c39bd              # double 0.26441900000000002
	.quad	0x3fdff25a250f8402              # double 0.49916700000000003
	.quad	0x3fefbf67f4dbdf8f              # double 0.99211499999999996
	.quad	0x3fce72da122fad6d              # double 0.23788000000000001
	.quad	0x3feb3ab649d388a9              # double 0.85091700000000003
	.quad	0x3fcd74aba3875925              # double 0.23012299999999999
	.quad	0x3fe63b70ef566491              # double 0.69475600000000004
	.quad	0x3fd08a7a41e57d9e              # double 0.25845200000000002
	.quad	0x3fe4baf74cd3176a              # double 0.64782300000000004
	.quad	0x3fd5484944ed6fdb              # double 0.33253700000000003
	.quad	0x3fe79b34a44c7b03              # double 0.73769600000000002
	.quad	0x3fd1fe0ce0b912dc              # double 0.28113100000000002
	.quad	0x3f8df43c7d5ed070              # double 0.014626
	.quad	0x3fe6901d19157abc              # double 0.70509200000000005
	.quad	0x3fda2ae07e5a78f2              # double 0.40886699999999998
	.quad	0x3fe13c9eecbfb15b              # double 0.53864999999999996
	.quad	0x3fbcec41dd1a21ea              # double 0.11298
	.quad	0x3fee8d3ae685db77              # double 0.95474000000000003
	.quad	0x3fefd4738a3b57c5              # double 0.99468400000000001
	.quad	0x3feeaf4f0d844d01              # double 0.95889999999999997
	.quad	0x3fd9e58e64b23140              # double 0.404636
	.quad	0x3feb560c7c0f4517              # double 0.85425399999999996
	.quad	0x3fe972b884406c01              # double 0.79525400000000002
	.quad	0x3fea063beec3979a              # double 0.81326100000000001
	.quad	0x3feb784662bae03b              # double 0.85843199999999997
	.quad	0x3fbcfde2ef4e0115              # double 0.113249
	.quad	0x3fefbaade657b84e              # double 0.99153800000000003
	.quad	0x3fe3e17e34b94531              # double 0.62127600000000005
	.quad	0x3fe5929ed3953dea              # double 0.67414799999999997
	.quad	0x3fe757ff9b56323c              # double 0.72949200000000003
	.quad	0x3fe6e9b38d60a633              # double 0.716028
	.quad	0x3fdf18b934699418              # double 0.48588399999999998
	.quad	0x3fe1e8af81626b2f              # double 0.55965399999999998
	.quad	0x3fb9e37585be1a82              # double 0.10112699999999999
	.quad	0x3fc8801f75104d55              # double 0.19141
	.quad	0x3fe398b71b8aa002              # double 0.61239200000000005
	.quad	0x3fec6ef3d3a1d324              # double 0.888544
	.quad	0x3fee8f9d2bf55150              # double 0.95503099999999996
	.quad	0x3fe8155b4677b396              # double 0.75260700000000003
	.quad	0x3fe2f7164c729f5a              # double 0.59266200000000002
	.quad	0x3fe7cdaf4adbc665              # double 0.74385800000000002
	.quad	0x3fef8ccdd93c46d8              # double 0.98593799999999998
	.quad	0x3fd24c0df58c08b7              # double 0.28589199999999998
	.quad	0x3fe8c37a3db3bfb6              # double 0.77386200000000005
	.quad	0x3fb00db2702a3487              # double 0.062709000000000001
	.quad	0x3fa161a1db877ab3              # double 0.033947999999999999
	.quad	0x3fbe6c5d206c8712              # double 0.118841
	.quad	0x3fe775b3e1437c57              # double 0.73311800000000005
	.quad	0x3fcbdfc19c17225b              # double 0.21776599999999999
	.quad	0x3fcbc42a66dbd72c              # double 0.21692400000000001
	.quad	0x3fe2d9ba1b1960fa              # double 0.58907799999999999
	.quad	0x3fc650614163779f              # double 0.17432800000000001
	.quad	0x3fe9edf82b1f687b              # double 0.81029899999999999
	.quad	0x3fce262cba732df5              # double 0.23554
	.quad	0x3fe7f8e1932d6ece              # double 0.74913099999999999
	.quad	0x3fe8c347e8ccdd94              # double 0.77383800000000002
	.quad	0x3fe8fc30d306a2b1              # double 0.78078499999999995
	.quad	0x3fed288ace24bba1              # double 0.91119899999999998
	.quad	0x3f8fd1dcd7060bb3              # double 0.015537
	.quad	0x3fe92ce4649906cd              # double 0.78673000000000004
	.quad	0x3fdb35c5b4aa9718              # double 0.42515700000000001
	.quad	0x3fe0ccdb7ae5796c              # double 0.525007
	.quad	0x3fc00980b242070c              # double 0.12529000000000001
	.quad	0x3fea03cd141a6938              # double 0.81296400000000002
	.quad	0x3fe33e4473cd5736              # double 0.60135099999999997
	.quad	0x3fc59bd4067cf1c3              # double 0.168818
	.quad	0x3fdb045baf533f42              # double 0.42214099999999999
	.quad	0x3fcfee5eedcc20d5              # double 0.24946199999999999
	.quad	0x3fe24bc48f10a99b              # double 0.57174899999999995
	.quad	0x3fd6d31b9b66f933              # double 0.35663499999999998
	.quad	0x3fb7631b584b1ab1              # double 0.091356000000000007
	.quad	0x3fe5d2fa0d77b7c8              # double 0.68200400000000005
	.quad	0x3fe83f1a5ca29846              # double 0.75770300000000002
	.quad	0x3fb36577531db446              # double 0.075767000000000001
	.quad	0x3fe9a3358f2e05cd              # double 0.80117300000000002
	.quad	0x3fe4d64b662fdfc2              # double 0.65115900000000004
	.quad	0x3fe414a0a0f4d7ae              # double 0.62751800000000002
	.quad	0x3fe1607e5a78f25a              # double 0.54302899999999998
	.quad	0x3fe4aacb85a4f00f              # double 0.64584900000000001
	.quad	0x3fed57de0d66f0d0              # double 0.91697600000000001
	.quad	0x3fce8672756861e9              # double 0.238478
	.quad	0x3fe830d51f81a587              # double 0.75596099999999999
	.quad	0x3fefaaeafab53d64              # double 0.98961399999999999
	.quad	0x3fd96b7ed41b75a7              # double 0.39718599999999998
	.quad	0x3fe2ddc4007570c5              # double 0.58957099999999996
	.quad	0x3fec582ba5a03819              # double 0.88576299999999997
	.quad	0x3fdc441355475a32              # double 0.44165500000000002
	.quad	0x3fbb444e0daa0cae              # double 0.10651099999999999
	.quad	0x3fd4c5da6a444178              # double 0.32457599999999998
	.quad	0x3fe73ccaf709b739              # double 0.72617100000000001
	.quad	0x3fde99d451fc4c16              # double 0.47813899999999998
	.quad	0x3fde11276fb09204              # double 0.46979700000000002
	.quad	0x3fc849e44fa05144              # double 0.18975500000000001
	.quad	0x3f912ec6bce8533b              # double 0.01678
	.quad	0x3fc5a2163fdd65a1              # double 0.16900899999999999
	.quad	0x3fef3037d63022dd              # double 0.97463599999999994
	.quad	0x3fc0ea52ef911cf3              # double 0.13215099999999999
	.quad	0x3fdae64f54d1e96c              # double 0.42030699999999999
	.quad	0x3fbf2dc2b0ea1837              # double 0.121792
	.quad	0x3fcb1f14983d7907              # double 0.21188599999999999
	.quad	0x3fb99ce075f6fd22              # double 0.10005
	.quad	0x3fedbf2d3c792d13              # double 0.92958700000000005
	.quad	0x3fec0f7fcfc3f812              # double 0.876892
	.quad	0x3fe3a15b9a5a89b9              # double 0.61344699999999996
	.quad	0x3fee7c7820a30db7              # double 0.95269400000000004
	.quad	0x3fe20ca8198f1d3f              # double 0.56404500000000002
	.quad	0x3fe17a11a975afb0              # double 0.54615100000000005
	.quad	0x3fdf833c60029f17              # double 0.49238500000000002
	.quad	0x3fefb94b7b28954a              # double 0.99136899999999994
	.quad	0x3fa84e1e71044f1a              # double 0.047470999999999999
	.quad	0x3f3669ced0b30b5b              # double 3.4200000000000002E-4
	.quad	0x3fddb6c7a7c9de05              # double 0.464281
	.quad	0x3fe554da4ce8101f              # double 0.66660799999999998
	.quad	0x3fe6e3e6c4c5974e              # double 0.71531999999999996
	.quad	0x3fe7fb2aae297397              # double 0.74941000000000002
	.quad	0x3fe647e06961c369              # double 0.69627399999999995
	.quad	0x3fe7b5a63f9a49c3              # double 0.74092400000000003
	.quad	0x3fc18a7610279570              # double 0.13703799999999999
	.quad	0x3fe2f7ff151e7536              # double 0.59277299999999999
	.quad	0x3fcae2328f9f44d4              # double 0.21002799999999999
	.quad	0x3fe7edeb95e5aff3              # double 0.74779300000000004
	.quad	0x3fce04fb1183b603              # double 0.23452700000000001
	.quad	0x3fbf50b0f27bb2ff              # double 0.122325
	.quad	0x3fdff926c7eae5bd              # double 0.49958200000000003
	.quad	0x3fed8259e1f3a57f              # double 0.92216200000000004
	.quad	0x3fa46de76427c7c5              # double 0.039900999999999999
	.quad	0x3fcd5935fc3b4f61              # double 0.22928499999999999
	.quad	0x3fd4d940789613d3              # double 0.32575999999999999
	.quad	0x3fe6054477ff151e              # double 0.68814299999999995
	.quad	0x3fe732dd377e1b8f              # double 0.72495900000000002
	.quad	0x3fd5b2d0a2446306              # double 0.33903899999999998
	.quad	0x3fbab87379746024              # double 0.104377
	.quad	0x3fe14d6a161e4f76              # double 0.54069999999999996
	.quad	0x3fe79e774eebf65e              # double 0.73809400000000003
	.quad	0x3fe42e7b3d8e0008              # double 0.63067399999999996
	.quad	0x3fdf1a5ca29845dd              # double 0.48598400000000003
	.quad	0x3fe329845dc83233              # double 0.59881799999999996
	.quad	0x3feac18b502ababf              # double 0.83612600000000004
	.quad	0x3fe2f2c5197a2489              # double 0.59213499999999997
	.quad	0x3fe0f4128bf3bea9              # double 0.52979399999999999
	.quad	0x3fec6a50d6b228dd              # double 0.88797800000000005
	.quad	0x3fe40a936c58eeaf              # double 0.62629100000000004
	.quad	0x3fdac4588a04d120              # double 0.41823399999999999
	.quad	0x3fdf59ff4fd6d7e9              # double 0.48986800000000003
	.quad	0x3fcfadd15f02c4d6              # double 0.24749199999999999
	.quad	0x3fe824766c6de764              # double 0.75445099999999998
	.quad	0x3fdf6b2f23033a47              # double 0.49091699999999999
	.quad	0x3fe292b1b36bd2b7              # double 0.58040700000000001
	.quad	0x3fc51ab0856e696a              # double 0.164877
	.quad	0x3fd9fd8adab9f55a              # double 0.40610000000000002
	.quad	0x3fda05c4651f3e8a              # double 0.40660200000000002
	.quad	0x3fb743d89ce4a7b5              # double 0.090879000000000001
	.quad	0x3fcff6c2699c7bcc              # double 0.249718
	.quad	0x3fe96be7afa72218              # double 0.79442199999999996
	.quad	0x3fef8d9b5e95b78d              # double 0.98603600000000002
	.quad	0x3fe20b0d0edc3bd6              # double 0.56384900000000004
	.quad	0x3f727807789a4591              # double 0.004509
	.quad	0x3fe959ba1b1960fa              # double 0.79220299999999999
	.quad	0x3fee635e74299d88              # double 0.94962999999999997
	.quad	0x3fed7359ff4fd6d8              # double 0.92033100000000001
	.quad	0x3fd0b60f1b25f634              # double 0.26111200000000001
	.quad	0x3fdae3c968943e10              # double 0.420153
	.quad	0x3fb36cefed63454a              # double 0.075881000000000004
	.quad	0x3fe49e3eaf6837f8              # double 0.64431700000000003
	.quad	0x3fd719934efcbd55              # double 0.36093599999999998
	.quad	0x3fd05f17bd8be729              # double 0.25580399999999998
	.quad	0x3fe2f893faf42785              # double 0.59284400000000004
	.quad	0x3fd9621fafc8b008              # double 0.39661400000000002
	.quad	0x3fb45846e8f29d41              # double 0.079472000000000001
	.quad	0x3fe7d9ba1b1960fa              # double 0.74532799999999999
	.quad	0x3fc9d2f1a9fbe76d              # double 0.20175000000000001
	.quad	0x3fbe3b46fdeb52ca              # double 0.118092
	.quad	0x3fe2566490a350d3              # double 0.57304600000000006
	.quad	0x3fd058fb43d89ce5              # double 0.25543100000000002
	.quad	0x3feab8a3b57c4e2f              # double 0.83503899999999998
	.quad	0x3fe119d883ba3444              # double 0.53440500000000002
	.quad	0x3fdee1719f7f8ca8              # double 0.48250999999999999
	.quad	0x3f998fe69270b06c              # double 0.024962999999999999
	.quad	0x3feed0268900c522              # double 0.96290900000000001
	.quad	0x3fe97566490a350d              # double 0.79558099999999998
	.quad	0x3fdf43aeab7995ee              # double 0.488506
	.quad	0x3fc72849cb252ce0              # double 0.18091699999999999
	.quad	0x3fa361fe21d96e9c              # double 0.037857000000000002
	.quad	0x3fedd22ea0fd3b2a              # double 0.93190700000000004
	.quad	0x3fcb54003254e6e2              # double 0.213501
	.quad	0x3fee227f1b691212              # double 0.94171099999999996
	.quad	0x3fdfd612c6ac215c              # double 0.49744100000000002
	.quad	0x3fe45d9c27e95315              # double 0.63642699999999996
	.quad	0x3faa038194c01605              # double 0.050807999999999999
	.quad	0x3fee9682f944241c              # double 0.95587299999999997
	.quad	0x3fdf9ea57214f052              # double 0.494058
	.quad	0x3fd1342aa9f7b5af              # double 0.26880900000000002
	.quad	0x3fe1cdd93c46d82c              # double 0.55637800000000004
	.quad	0x3fe6baf31b152f3c              # double 0.71032099999999998
	.quad	0x3fd36af89c5e6ff8              # double 0.30340400000000001
	.quad	0x3fd38900c521dda0              # double 0.30523699999999998
	.quad	0x3fd2cb7d41743e96              # double 0.29366999999999999
	.quad	0x3fec150763a19008              # double 0.87756699999999999
	.quad	0x3fb9a6a444178705              # double 0.100199
	.quad	0x3fb20c38f366948a              # double 0.070499000000000006
	.quad	0x3feab996fa82e87d              # double 0.83515499999999998
	.quad	0x3fd538eb0318b934              # double 0.33159899999999998
	.quad	0x3fd4e37de939eadd              # double 0.32638499999999998
	.quad	0x3fdb40895d0b73d2              # double 0.42581400000000003
	.quad	0x3fe27e6d58c8eef2              # double 0.57793300000000003
	.quad	0x3fe97ea3df6db941              # double 0.796709
	.quad	0x3feb7aaef2c73259              # double 0.85872599999999999
	.quad	0x3fe917481b21c476              # double 0.78409200000000001
	.quad	0x3feb049a9973d9ec              # double 0.84431199999999995
	.quad	0x3fec8bd87b56b873              # double 0.89207099999999995
	.quad	0x3fc4384ba0e84274              # double 0.157968
	.quad	0x3fc4c74b838c111b              # double 0.162332
	.quad	0x3fc0a90470a808c8              # double 0.130158
	.quad	0x3fc2db402d16b980              # double 0.147316
	.quad	0x3fea7bd48cb4aec9              # double 0.82761600000000002
	.quad	0x3f95a426bb55ac04              # double 0.021134
	.quad	0x3fe87b0d51f81a58              # double 0.76502099999999995
	.quad	0x3fbad41b75a74c0a              # double 0.104799
	.quad	0x3fec8efbb0e5e679              # double 0.89245399999999997
	.quad	0x3fa6ffe2a3cea6c2              # double 0.044921000000000003
	.quad	0x3fc99f559b3d07c8              # double 0.20017499999999999
	.quad	0x3fd1a0dbad3a604e              # double 0.27544299999999999
	.quad	0x3fefb28f9f44d445              # double 0.99054699999999995
	.quad	0x3feae2435696e58a              # double 0.84011999999999998
	.quad	0x3feed855970b49e0              # double 0.96390799999999998
	.quad	0x3fe5b4117f84449e              # double 0.67823100000000003
	.quad	0x3fdadafd113836a8              # double 0.41961599999999999
	.quad	0x3fe265b4245f5ad9              # double 0.57491499999999995
	.quad	0x3fd30b39192641b3              # double 0.29755999999999999
	.quad	0x3fe1ca6eb91b3f21              # double 0.55596100000000004
	.quad	0x3fed80f98fa37692              # double 0.92199399999999998
	.quad	0x3fade679463cfb33              # double 0.058399
	.quad	0x3fe29ce8d972cd7d              # double 0.581654
	.quad	0x3fe879357603925c              # double 0.76479600000000003
	.quad	0x3febc43b2dd377e2              # double 0.86770400000000003
	.quad	0x3fe090667f90d9d7              # double 0.51762699999999995
	.quad	0x3fc62ea960b6f9fd              # double 0.17329900000000001
	.quad	0x3fe5a9670196d8f5              # double 0.676929
	.quad	0x3fb3879c4113c686              # double 0.076287999999999995
	.quad	0x3fecb8066c2acb86              # double 0.89746400000000004
	.quad	0x3fec2339c0ebedfa              # double 0.87929999999999997
	.quad	0x3fe02c68a936c58f              # double 0.50542100000000001
	.quad	0x3fd39fd7a13c254a              # double 0.30663099999999999
	.quad	0x3fb9c4007570c565              # double 0.100647
	.quad	0x3fed67d77fae3609              # double 0.91892600000000002
	.quad	0x3fdf30b5aa715832              # double 0.487348
	.quad	0x3febf05ea24cc682              # double 0.87309199999999998
	.quad	0x3fb1d1e53a81dc0e              # double 0.069609000000000004
	.quad	0x3fa27c7c5260f5e4              # double 0.036105999999999999
	.quad	0x3fe07fb267c6b8b7              # double 0.51558800000000005
	.quad	0x3fe417d8cf398e97              # double 0.627911
	.quad	0x3fdbb28522ea0fd4              # double 0.43277100000000002
	.quad	0x3fd6295e9e1b089a              # double 0.346275
	.quad	0x3fdb666234a87e39              # double 0.428124
	.quad	0x3fe75d851654d61b              # double 0.73016599999999998
	.quad	0x3fe1b9628cbd1245              # double 0.55388000000000004
	.quad	0x3fc4afff36ac6477              # double 0.16162099999999999
	.quad	0x3fdb8f3eccc46951              # double 0.430618
	.quad	0x3fdbcfaeff5c6c12              # double 0.43455100000000002
	.quad	0x3fdffeb4a66559f7              # double 0.499921
	.quad	0x3fd00d0247021d11              # double 0.25079400000000002
	.quad	0x3faf972474538ef3              # double 0.061699999999999998
	.quad	0x3fe1573860999dcb              # double 0.54189699999999996
	.quad	0x3fd0c6fbd273d5bb              # double 0.26214500000000002
	.quad	0x3fe48f9f44d44567              # double 0.64253199999999999
	.quad	0x3fe3af35e310dbf0              # double 0.61513799999999996
	.quad	0x3fe52a3cea6c1a05              # double 0.66140600000000005
	.quad	0x3fd93cb81733226c              # double 0.39433099999999999
	.quad	0x3fde812be48a58b4              # double 0.476634
	.quad	0x3fe77e77d523b363              # double 0.73418799999999995
	.quad	0x3fe52bc2fc69728a              # double 0.66159199999999996
	.quad	0x3fa99780baa582dc              # double 0.049984000000000001
	.quad	0x3fc7d40ee06d9381              # double 0.18615899999999999
	.quad	0x3fe52456f75d9a0f              # double 0.660686
	.quad	0x3fd9b042528ae74f              # double 0.40138299999999999
	.quad	0x3fe9db2d4d4024b3              # double 0.80800499999999997
	.quad	0x3fdb868fd199bb28              # double 0.43008800000000003
	.quad	0x3fd3a0b5ed8d36b5              # double 0.30668400000000001
	.quad	0x3fcf9ffd60e94ee4              # double 0.24707000000000001
	.quad	0x3fcf5cf2495e17e3              # double 0.24502399999999999
	.quad	0x3fe7f589efd86a90              # double 0.74872300000000003
	.quad	0x3fef58a32f44912a              # double 0.97957000000000005
	.quad	0x3fe0da07b352a844              # double 0.52661500000000006
	.quad	0x3fe4739d1b2e59b0              # double 0.63911300000000004
	.quad	0x3feb2415f45e0b4e              # double 0.84815499999999999
	.quad	0x3fd965ecc3e3193f              # double 0.39684599999999998
	.quad	0x3fef8468448cf7cb              # double 0.98491300000000003
	.quad	0x3fed224cc6822ff1              # double 0.91043700000000005
	.quad	0x3fbc426351deefe5              # double 0.110388
	.quad	0x3fe8ffae3608d089              # double 0.78121099999999999
	.quad	0x3fd0c7e6b3fe9fae              # double 0.26220100000000002
	.quad	0x3fe76eed8904f6e0              # double 0.73229100000000002
	.quad	0x3fb5cac083126e98              # double 0.085125000000000006
	.quad	0x3fb5e321a2e7f6f5              # double 0.085497000000000004
	.quad	0x3fe1d90e23af31b1              # double 0.55774599999999996
	.quad	0x3fea277e5eaab042              # double 0.81732099999999996
	.quad	0x3faba0c6b484d76b              # double 0.053961000000000002
	.quad	0x3fe5253fc0096feb              # double 0.66079699999999997
	.quad	0x3feabca7503b81b6              # double 0.83552899999999997
	.quad	0x3fe195f45e0b4e12              # double 0.54955500000000002
	.quad	0x3fe0d60c7c0f4517              # double 0.52612899999999996
	.quad	0x3fd023c42a66dbd7              # double 0.25218299999999999
	.quad	0x3fca774eebf65dc0              # double 0.20676600000000001
	.quad	0x3fc0ba0e8427418d              # double 0.13067799999999999
	.quad	0x3feb505f28848388              # double 0.85356100000000001
	.quad	0x3fb3af42784a9479              # double 0.076893000000000003
	.quad	0x3fe76ab14ec204f3              # double 0.73177400000000004
	.quad	0x3fe3a06c8711d799              # double 0.61333300000000002
	.quad	0x3fd364f11b60ae97              # double 0.30303600000000003
	.quad	0x3fd5ea4ebdd334c6              # double 0.34242600000000001
	.quad	0x3fec26e32e3821af              # double 0.87974699999999995
	.quad	0x3fecea39c51dabe2              # double 0.90359199999999995
	.quad	0x3fec40a2877ee4e2              # double 0.88288999999999995
	.quad	0x3fda748e4755ffe7              # double 0.41336400000000001
	.quad	0x3fe87b09203a322b              # double 0.765019
	.quad	0x3fcf04039abf3387              # double 0.24231
	.quad	0x3fe09f77292c4934              # double 0.51946599999999998
	.quad	0x3fdad8b1dd5d3dc9              # double 0.41947600000000002
	.quad	0x3fad3804534bd76f              # double 0.057068000000000001
	.quad	0x3fd3f3e468cac4b5              # double 0.31176100000000001
	.quad	0x3fedba1d323fee2d              # double 0.92896900000000004
	.quad	0x3fe4f1b0468448cf              # double 0.65450299999999995
	.quad	0x3fe613c46d82ba5a              # double 0.689913
	.quad	0x3fe829ae4f3343fa              # double 0.75508799999999998
	.quad	0x3fdecd5f99c38b05              # double 0.48128500000000002
	.quad	0x3fb990c0ad03d9a9              # double 0.099864999999999995
	.quad	0x3fe3a34ca0c282c7              # double 0.61368400000000001
	.quad	0x3fdc2af5771001d6              # double 0.44012200000000001
	.quad	0x3fe46fc7a398201d              # double 0.63864500000000002
	.quad	0x3fc23800218def41              # double 0.14233399999999999
	.quad	0x3fc1b9841aac53b1              # double 0.13847400000000001
	.quad	0x3fe786d506573216              # double 0.735209
	.quad	0x3fed5742dcf4623d              # double 0.91690199999999999
	.quad	0x3fe37a398201cd60              # double 0.60867000000000004
	.quad	0x3fb954c985f06f69              # double 0.098949999999999996
	.quad	0x3fea960956c0d6f5              # double 0.83081499999999997
	.quad	0x3fe87fb267c6b8b7              # double 0.76558800000000005
	.quad	0x3fe1c623d0bfa094              # double 0.55543699999999996
	.quad	0x3fe684102ff8ec10              # double 0.70362100000000005
	.quad	0x3fd76f544bb1af3a              # double 0.36617
	.quad	0x3fe1ab81f969e3c9              # double 0.55218599999999995
	.quad	0x3fea1437c5692b3d              # double 0.81496800000000003
	.quad	0x3fc76eac8605681f              # double 0.18306500000000001
	.quad	0x3fdd268d32830a0b              # double 0.45547799999999999
	.quad	0x3fb51dcd7060bb2c              # double 0.082486000000000004
	.quad	0x3fc5d4e8fb00bcbe              # double 0.17055999999999999
	.quad	0x3fd96759ab6d00b4              # double 0.39693299999999998
	.quad	0x3fe88daa0cae642c              # double 0.767293
	.quad	0x3fc196073de1e2df              # double 0.13739100000000001
	.quad	0x3fd37d805e5f30e8              # double 0.304535
	.quad	0x3fa1bb2788db0575              # double 0.034631000000000002
	.quad	0x3fdc08e15011904b              # double 0.43804199999999999
	.quad	0x3fe4e568a50507a7              # double 0.65300400000000003
	.quad	0x3fc9a75cd0bb6ed6              # double 0.20041999999999999
	.quad	0x3febcae85b9e8c48              # double 0.86851900000000004
	.quad	0x3fe0dd28d002e233              # double 0.52699700000000005
	.quad	0x3fe108919ef954eb              # double 0.53229599999999999
	.quad	0x3fdaa7fc32ebe597              # double 0.41650300000000001
	.quad	0x3fded477bbf93ff2              # double 0.48171799999999998
	.quad	0x3fefd4c985f06f69              # double 0.99472499999999997
	.quad	0x3fe2d6c7219220ff              # double 0.58871799999999996
	.quad	0x3fe9ad8e432441ff              # double 0.80243600000000004
	.quad	0x3fb6297396d0917d              # double 0.086569999999999994
	.quad	0x3feeffe08aefb2ab              # double 0.96873500000000001
	.quad	0x3fe699ac79702e66              # double 0.70625899999999997
	.quad	0x3fdd1144cbe1eb42              # double 0.454179
	.quad	0x3feec968943e1006              # double 0.962086
	.quad	0x3fd715592d98bf7f              # double 0.360678
	.quad	0x3fd6b60f1b25f634              # double 0.35486200000000001
	.quad	0x3fc3c3d68405b39e              # double 0.154414
	.quad	0x3fe8a44a6223e187              # double 0.77005500000000005
	.quad	0x3fd182c2bd7f51f0              # double 0.27360600000000002
	.quad	0x3f74738a3b57c4e3              # double 0.004993
	.quad	0x3fa31b36bd2b6f1a              # double 0.037317000000000003
	.quad	0x3fe32e31d712a0ec              # double 0.59938899999999995
	.quad	0x3fe824a6a875d56f              # double 0.75447399999999998
	.quad	0x3fdb6e1deacc9214              # double 0.42859599999999998
	.quad	0x3fd52df9378ee286              # double 0.33093099999999998
	.quad	0x3fd6e679463cfb33              # double 0.357817
	.quad	0x3fd41e2de8709742              # double 0.31434200000000001
	.quad	0x3fe569b7bf1e8e61              # double 0.66915500000000006
	.quad	0x3fe9aaf78feef5ed              # double 0.80212000000000006
	.quad	0x3fd94916ca46e08f              # double 0.39508599999999999
	.quad	0x3fe73b5393250b52              # double 0.72599199999999997
	.quad	0x3fee6f7c243dccea              # double 0.95110899999999998
	.quad	0x3fea219eb6390c91              # double 0.816604
	.quad	0x3fe3fb69984a0e41              # double 0.62444
	.quad	0x3feec0d6f544bb1b              # double 0.96104
	.quad	0x3fe81f383f0bae8a              # double 0.75381100000000001
	.quad	0x3fe7e5e02ea960b7              # double 0.746811
	.quad	0x3fe4e2bf11f926c8              # double 0.65267900000000001
	.quad	0x3fe763369b9d7fd8              # double 0.73086099999999998
	.quad	0x3fdcf676ea422899              # double 0.45254299999999997
	.quad	0x3fe66a76965f5276              # double 0.70049600000000001
	.quad	0x3fea5fb0d51f81a6              # double 0.82418100000000005
	.quad	0x3fbb10667f90d9d7              # double 0.10571899999999999
	.quad	0x3fd62fb5d031055c              # double 0.34666200000000003
	.quad	0x3fd68e0008637bd0              # double 0.35241699999999998
	.quad	0x3fec1882adc4c9c9              # double 0.87799199999999999
	.quad	0x3fe6df8d2e514c23              # double 0.71478900000000001
	.quad	0x3fdfe6e653868fd2              # double 0.49846800000000002
	.quad	0x3fc7f162ae4b0186              # double 0.187054
	.quad	0x3fe60dc55000c954              # double 0.68918100000000004
	.quad	0x3fd756eac8605682              # double 0.36468
	.quad	0x3fdb8e820e629952              # double 0.43057299999999998
	.quad	0x3fd3c08b75ea67e8              # double 0.30862699999999998
	.quad	0x3fee04ec636b0963              # double 0.93810099999999996
	.quad	0x3fd96f60e0eb67c3              # double 0.39742300000000003
	.quad	0x3fed85be1a826245              # double 0.92257599999999995
	.quad	0x3fdba3400b88ca3e              # double 0.43183899999999997
	.quad	0x3fed628672756862              # double 0.91827700000000001
	.quad	0x3fe76088d6d3b6cc              # double 0.73053400000000002
	.quad	0x3fe7176ddaceee0f              # double 0.72160999999999997
	.quad	0x3fdf486f049a9974              # double 0.48879600000000001
	.quad	0x3fe3d66cf41f212d              # double 0.61992499999999995
	.quad	0x3fc9ca6ca03c4b0a              # double 0.20149
	.quad	0x3fe9b3c81908e582              # double 0.80319600000000002
	.quad	0x3fe3c82e019b0ab3              # double 0.61818600000000001
	.quad	0x3fe7656eefa1e3eb              # double 0.731132
	.quad	0x3f9a4f8726d04e62              # double 0.025694000000000002
	.quad	0x3fc3399f5dfeb8d8              # double 0.150196
	.quad	0x3fea5ee99a62ed35              # double 0.82408599999999999
	.quad	0x3fc6016052502eec              # double 0.17191699999999999
	.quad	0x3fb37292c4934268              # double 0.075967000000000007
	.quad	0x3fc4900c521dda06              # double 0.16064600000000001
	.quad	0x3fdc624dd2f1a9fc              # double 0.44350000000000001
	.quad	0x3fadb63d3e4ef028              # double 0.058030999999999999
	.quad	0x3fe0c4d87724fa8b              # double 0.52402899999999997
	.quad	0x3fb72c94b380cb6c              # double 0.090523999999999993
	.quad	0x3f843bf727136a40              # double 0.0098799999999999998
	.quad	0x3fe7e957470eb24a              # double 0.74723399999999995
	.quad	0x3fe7a1b5c7cd898b              # double 0.73848999999999998
	.quad	0x3fe3700cd855970b              # double 0.60742799999999997
	.quad	0x3fcca600b0292817              # double 0.22381599999999999
	.quad	0x3fcf83cf2cf95d4f              # double 0.24621000000000001
	.quad	0x3fdeb7457c0b1359              # double 0.47993599999999997
	.quad	0x3fe052a411c2a023              # double 0.51008799999999999
	.quad	0x3fd9e175d13d74d6              # double 0.40438600000000002
	.quad	0x3fdc0e23af31b153              # double 0.438363
	.quad	0x3fdece2d1f1cfbb9              # double 0.48133399999999998
	.quad	0x3fe01426fe718a87              # double 0.50246000000000002
	.quad	0x3fec45c5718eb895              # double 0.883517
	.quad	0x3fef068986fcdee3              # double 0.96954799999999996
	.quad	0x3fe9059c8c9320da              # double 0.78193500000000005
	.quad	0x3feefbd8be7296f6              # double 0.96824299999999996
	.quad	0x3fcde5fb71fbc5df              # double 0.23358100000000001
	.quad	0x3fe02d16b97fe8ee              # double 0.50550399999999995
	.quad	0x3fe1d6ba8c586877              # double 0.55746200000000001
	.quad	0x3fee8de4c51116a9              # double 0.95482100000000003
	.quad	0x3fef311a543f1c76              # double 0.97474400000000005
	.quad	0x3feae5109070fbec              # double 0.84046200000000004
	.quad	0x3fde29b280f12c28              # double 0.47129500000000002
	.quad	0x3fd343c3a42f1ed1              # double 0.30101099999999997
	.quad	0x3fdde60807357e67              # double 0.467165
	.quad	0x3fee5e56cd6c2efd              # double 0.94901599999999997
	.quad	0x3fad2157689ca18c              # double 0.056895000000000001
	.quad	0x3fceceb356da0169              # double 0.24068300000000001
	.quad	0x3fd7f8f041461b6d              # double 0.37456899999999999
	.quad	0x3fef00a393ee5eee              # double 0.96882800000000002
	.quad	0x3fe27acc4ef88b97              # double 0.57748999999999995
	.quad	0x3fd388333fc86cec              # double 0.30518800000000001
	.quad	0x3fd45d63886594af              # double 0.31819999999999998
	.quad	0x3fd5916872b020c5              # double 0.33700000000000002
	.quad	0x3fcef46aa087ca64              # double 0.24183399999999999
	.quad	0x3fc12f123c42a66e              # double 0.13424900000000001
	.quad	0x3fe85f8b1572580c              # double 0.76166299999999997
	.quad	0x3fd3073de1e2de87              # double 0.297317
	.quad	0x3fdfc02f2f987400              # double 0.49610500000000002
	.quad	0x3fd843bf727136a4              # double 0.379135
	.quad	0x3feddad106ee30cb              # double 0.93296100000000004
	.quad	0x3fd950870110a138              # double 0.39554
	.quad	0x3fd881e03f705858              # double 0.38292700000000002
	.quad	0x3fd8bde82d7b634e              # double 0.38659100000000002
	.quad	0x3fe10e2e2b8c75c5              # double 0.53298100000000004
	.quad	0x3feb04be40420f6f              # double 0.844329
	.quad	0x3fee8800eae18aca              # double 0.95410200000000001
	.quad	0x3f903c8e25c810a5              # double 0.015855999999999999
	.quad	0x3fed5093964a59c0              # double 0.91608599999999995
	.quad	0x3fd4d8ec95bff045              # double 0.32573999999999997
	.quad	0x3fe7864883fd5022              # double 0.73514199999999996
	.quad	0x3fb8c33b5393250b              # double 0.096728999999999996
	.quad	0x3fbedeca25529fe0              # double 0.120587
	.quad	0x3feaee6d9be4cd75              # double 0.84160500000000005
	.quad	0x3fe3fae9ab29e4d6              # double 0.62437900000000002
	.quad	0x3fe8d612c6ac215c              # double 0.77613200000000004
	.quad	0x3fe139fba450acc1              # double 0.53832800000000003
	.quad	0x3fd54ebdd334c5da              # double 0.33293099999999998
	.quad	0x3fe8e6dbd72bcb60              # double 0.77818100000000001
	.quad	0x3fe8801b43526528              # double 0.76563800000000004
	.quad	0x3fe880dc33721d54              # double 0.76573000000000002
	.quad	0x3fe35ec3dab5c39c              # double 0.60531800000000002
	.quad	0x3fe85b940fecdd0e              # double 0.76117900000000005
	.quad	0x3fa41f644955b467              # double 0.039301999999999997
	.quad	0x3fd2b955f78359bc              # double 0.29256199999999999
	.quad	0x3fb11b71758e2196              # double 0.066824999999999996
	.quad	0x3fe98bfe3b03e20d              # double 0.79833900000000002
	.quad	0x3fe5b38f7985271c              # double 0.67816900000000002
	.quad	0x3fdd35b4edb2f662              # double 0.456403
	.quad	0x3fc066772d5e071c              # double 0.12812699999999999
	.quad	0x3f9ebaf102363b25              # double 0.030009999999999998
	.quad	0x3fee17c80841ede1              # double 0.94040299999999999
	.quad	0x3fe83bb83cf2cf96              # double 0.75729000000000002
	.quad	0x3fef74b61fe21d97              # double 0.982997
	.quad	0x3fe524f6598e10cf              # double 0.66076199999999996
	.quad	0x3fc4323358f2e05d              # double 0.15778200000000001
	.quad	0x3fdba76534373f31              # double 0.43209199999999998
	.quad	0x3fd574afd5454153              # double 0.33524700000000002
	.quad	0x3fe50eb463497b74              # double 0.65804499999999999
	.quad	0x3fcc7baa9b499d02              # double 0.222524
	.quad	0x3fc08c36da87a073              # double 0.12927900000000001
	.quad	0x3fe3f7caa7589efe              # double 0.62399800000000005
	.quad	0x3fe657e670e2c12b              # double 0.69823000000000002
	.quad	0x3fe5f8e3ac0c62e5              # double 0.68663200000000002
	.quad	0x3fef6835dedf1e08              # double 0.98147099999999998
	.quad	0x3fe00101f31f46ed              # double 0.50012299999999998
	.quad	0x3fba92a305532618              # double 0.1038
	.quad	0x3fe269d30270f388              # double 0.57541799999999999
	.quad	0x3fd053a81dc0db27              # double 0.255106
	.quad	0x3fb10c6f7a0b5ed9              # double 0.066596000000000002
	.quad	0x3fa2e7f6f4be835e              # double 0.036926
	.quad	0x3fe195054ac29bf1              # double 0.54944099999999996
	.quad	0x3fe5e70e2c12ad82              # double 0.68445500000000004
	.quad	0x3fe6883ba3443d47              # double 0.70413000000000003
	.quad	0x3fe99c23b7952d23              # double 0.80030999999999997
	.quad	0x3fe6ab884406c00e              # double 0.70843900000000004
	.quad	0x3fb80f4517614595              # double 0.093982999999999997
	.quad	0x3fe348e4755ffe6d              # double 0.60264799999999996
	.quad	0x3fd283dbc23315d7              # double 0.289298
	.quad	0x3fe8a4db163baba8              # double 0.77012400000000003
	.quad	0x3fedb2074ea8da7f              # double 0.92798199999999997
	.quad	0x3fe8f5ee99a62ed3              # double 0.78002099999999996
	.quad	0x3fd73254e6e221c9              # double 0.36244700000000002
	.quad	0x3fd39e2bcf91a32b              # double 0.306529
	.quad	0x3fcf132f87ad080b              # double 0.24277299999999999
	.quad	0x3fcfbe6e653868fd              # double 0.247999
	.quad	0x3fe8281ba7fc32ec              # double 0.75489600000000001
	.quad	0x3fdd1cfbb949624a              # double 0.45489400000000002
	.quad	0x3fe008a697aeddce              # double 0.50105599999999995
	.quad	0x3fe809bb6aa4b988              # double 0.75118799999999997
	.quad	0x3fe4e73c4f3ba776              # double 0.653227
	.quad	0x3fdc8f47304039ac              # double 0.446245
	.quad	0x3fd5bcbe61cffeb0              # double 0.33964499999999997
	.quad	0x3fc5d87b56b87379              # double 0.17066899999999999
	.quad	0x3fee150331e3a7db              # double 0.94006500000000004
	.quad	0x3fe92ba9d1f60179              # double 0.78657999999999995
	.quad	0x3fec58d36b4c7f35              # double 0.88584300000000005
	.quad	0x3feab8bac710cb29              # double 0.83504999999999996
	.quad	0x3feb26e978d4fdf4              # double 0.84850000000000003
	.quad	0x3fb30153bd167664              # double 0.074238999999999999
	.quad	0x3fe0c9d9d3458cd2              # double 0.52464
	.quad	0x3fd5af294dd72368              # double 0.33881600000000001
	.quad	0x3fdae1fc08fa7a85              # double 0.420043
	.quad	0x3fefcf7caa7589f0              # double 0.99407800000000002
	.quad	0x3fdf9f0a1be2b496              # double 0.49408200000000002
	.quad	0x3fcc8a58b3f63c32              # double 0.222972
	.quad	0x3fee5e0b4e11dbcb              # double 0.94898000000000005
	.quad	0x3fd78c8abd5dc400              # double 0.36795299999999997
	.quad	0x3feb31d4f9c1f85d              # double 0.84983299999999995
	.quad	0x3fbcfd5cb790fb65              # double 0.11324099999999999
	.quad	0x3fc9992c8c5004fb              # double 0.199987
	.quad	0x3fe534d26fa3fcca              # double 0.66269800000000001
	.quad	0x3fe7aa4766c6de76              # double 0.73953599999999997
	.quad	0x3fdf5b573eab367a              # double 0.48995
	.quad	0x3f95a4acf312b1b3              # double 0.021135999999999999
	.quad	0x3fe01971c10d7bea              # double 0.50310600000000005
	.quad	0x3fe9d2674080f990              # double 0.80693400000000004
	.quad	0x3fefd3c792d1287c              # double 0.99460199999999998
	.quad	0x3fddcdbbe0157eed              # double 0.46568199999999998
	.quad	0x3fbc9f72f76e6107              # double 0.111808
	.quad	0x3fdd82cf52b90a78              # double 0.46110899999999999
	.quad	0x3fe72f78feef5ec8              # double 0.72454499999999999
	.quad	0x3fe1bc77143393ab              # double 0.55425599999999997
	.quad	0x3fd3f08cc575c076              # double 0.31155699999999997
	.quad	0x3fe11d4738a3b57c              # double 0.53482399999999997
	.quad	0x3fa272ead9274e23              # double 0.036033000000000003
	.quad	0x3fea2ec28b2a6b0e              # double 0.81820800000000005
	.quad	0x3fe1d17e77d523b3              # double 0.55682299999999996
	.quad	0x3fd66e264e48626f              # double 0.35047299999999998
	.quad	0x3fc72edfe75bc44c              # double 0.181118
	.quad	0x3fe75e56cd6c2efd              # double 0.73026599999999997
	.quad	0x3fee7bacb4289119              # double 0.95259700000000003
	.quad	0x3fea24e379b77c03              # double 0.81700300000000003
	.quad	0x3febcff865d7cb2e              # double 0.86913700000000005
	.quad	0x3fe616e58a32f449              # double 0.69029499999999999
	.quad	0x3fe0382c2bd7f51f              # double 0.506857
	.quad	0x3fb6f23033a4723b              # double 0.089633000000000004
	.quad	0x3fc7685122318330              # double 0.18287100000000001
	.quad	0x3fee980b242070b9              # double 0.95606000000000002
	.quad	0x3fec2cecc814d728              # double 0.88048400000000004
	.quad	0x3fe7c751ce28ed5f              # double 0.74308099999999999
	.quad	0x3fe4392e1ef73c0c              # double 0.63197999999999999
	.quad	0x3fe03929ed3953df              # double 0.50697800000000004
	.quad	0x3fddf6598e10cf5b              # double 0.46816099999999999
	.quad	0x3fdef3f0fe047d3d              # double 0.48363899999999999
	.quad	0x3fc6fd6d7e889c1b              # double 0.17960899999999999
	.quad	0x3fd95d0fa58f7122              # double 0.39630500000000002
	.quad	0x3fe8d10d38cda6e7              # double 0.77551899999999996
	.quad	0x3fdfd6e47dc37a3e              # double 0.49749100000000002
	.quad	0x3fda0bbb1f255f35              # double 0.40696599999999999
	.quad	0x3fc8a7bd48cb4aed              # double 0.19261900000000001
	.quad	0x3fc249c2c1b10fd8              # double 0.142876
	.quad	0x3fbe5614df8b1572              # double 0.118501
	.quad	0x3fd4084a515ce9e6              # double 0.31300600000000001
	.quad	0x3fdf029f16b11c6d              # double 0.48453499999999999
	.quad	0x3fe8216c61522a6f              # double 0.75407999999999997
	.quad	0x3fee87c6327ed84d              # double 0.95407399999999998
	.quad	0x3fa2f01754b05b7d              # double 0.036988
	.quad	0x3fe3d0edc3bd5992              # double 0.61925399999999997
	.quad	0x3fed79f44d445671              # double 0.92113699999999998
	.quad	0x3feb4e358298cc14              # double 0.85329699999999997
	.quad	0x3fdc0221426fe719              # double 0.43763000000000002
	.quad	0x3fda6d7625204af9              # double 0.41293099999999999
	.quad	0x3fe55846e8f29d41              # double 0.66702600000000001
	.quad	0x3fd62ee41919ac79              # double 0.34661199999999998
	.quad	0x3fa1d041cc532a49              # double 0.034791999999999997
	.quad	0x3fe0a69be09bb6aa              # double 0.52033799999999997
	.quad	0x3fe52a369fcf3dc0              # double 0.66140299999999996
	.quad	0x3fe4f87485e3da30              # double 0.65532900000000005
	.quad	0x3fe2892ccf6be37e              # double 0.57924500000000001
	.quad	0x3fd777fae3608d09              # double 0.36669800000000002
	.quad	0x3fd1ea3df6db9410              # double 0.279922
	.quad	0x3fe9ac2df0d41312              # double 0.80226799999999998
	.quad	0x3fefa7fe4bcad9ae              # double 0.98925700000000005
	.quad	0x3fcce88df37329c3              # double 0.22584699999999999
	.quad	0x3fe81b66f9335d25              # double 0.75334500000000004
	.quad	0x3fd0c436fc158fb4              # double 0.26197599999999999
	.quad	0x3fe2a8eb463497b7              # double 0.58311999999999997
	.quad	0x3fe03413986338b4              # double 0.50635699999999995
	.quad	0x3fdc6b50b0f27bb3              # double 0.44405
	.quad	0x3fef85bc01a36e2f              # double 0.98507500000000003
	.quad	0x3febf253da72a7bd              # double 0.87333099999999997
	.quad	0x3fe63ae89eba6aca              # double 0.69469099999999995
	.quad	0x3fd6dacabc515486              # double 0.35710399999999998
	.quad	0x3fe1989374bc6a7f              # double 0.549875
	.quad	0x3fedc5a8155d5f57              # double 0.93037800000000004
	.quad	0x3fdc44fe36d22425              # double 0.44171100000000002
	.quad	0x3fd1f0aa21a719b5              # double 0.28031400000000001
	.quad	0x3fe41b994e1a3f46              # double 0.62836899999999996
	.quad	0x3fefa8e0c9d9d346              # double 0.98936500000000005
	.quad	0x3fe2b52007dd4413              # double 0.58460999999999996
	.quad	0x3fe112ddbdb5d895              # double 0.53355300000000006
	.quad	0x3fec1209edbf8b9c              # double 0.87720200000000003
	.quad	0x3fe1ab1d4f9c1f86              # double 0.55213800000000002
	.quad	0x3fefe03f705857b0              # double 0.99612400000000001
	.quad	0x3fdbd887ebf22c02              # double 0.43509100000000001
	.quad	0x3fef459b8023a6ce              # double 0.97724699999999998
	.quad	0x3fddc710cb295e9e              # double 0.46527499999999999
	.quad	0x3fdcf77f27fe4bcb              # double 0.45260600000000001
	.quad	0x3feec67be553ac4f              # double 0.96172899999999994
	.quad	0x3fdc690de093532e              # double 0.44391199999999997
	.quad	0x3faa4b76f6d76252              # double 0.051357
	.quad	0x3fedb3c1ce6c093e              # double 0.92819300000000005
	.quad	0x3fee123c42a66dbd              # double 0.93972599999999995
	.quad	0x3fd6a8da7f3cf701              # double 0.35405599999999998
	.quad	0x3fb49f94855da273              # double 0.080560000000000007
	.quad	0x3fe71b7bf1e8e608              # double 0.722105
	.quad	0x3fe209bf9c62a1b6              # double 0.56369000000000002
	.quad	0x3fdb4edb2f661f19              # double 0.42668800000000001
	.quad	0x3fef596c82e019b1              # double 0.97966600000000003
	.quad	0x3fc77b7c7820a30e              # double 0.18345600000000001
	.quad	0x3fc10507a6bd6e8b              # double 0.132966
	.quad	0x3fcf711947cfa26a              # double 0.245639
	.quad	0x3faef2e8c0485a0c              # double 0.060447000000000001
	.quad	0x3fd84095f2452c5a              # double 0.378942
	.quad	0x3fef406e19b90eaa              # double 0.97661500000000001
	.quad	0x3febb87df5cf2496              # double 0.86627100000000001
	.quad	0x3fe9c2aed1394318              # double 0.80501500000000004
	.quad	0x3fd65479d4d83409              # double 0.34890599999999999
	.quad	0x3fed46e4c0df58c1              # double 0.91490400000000005
	.quad	0x3fd8ead9274e22a3              # double 0.38933400000000001
	.quad	0x3fe2d4c985f06f69              # double 0.58847499999999997
	.quad	0x3fe50ec743201041              # double 0.65805400000000003
	.quad	0x3fe9569b17481b22              # double 0.79182200000000003
	.quad	0x3fe7a6a012599ed8              # double 0.73909000000000002
	.quad	0x3fedc840e1719f80              # double 0.93069500000000005
	.quad	0x3fe74e7ab7564303              # double 0.72833000000000003
	.quad	0x3fec0d9945b6c376              # double 0.87665999999999999
	.quad	0x3fe91029ae4f3344              # double 0.783223
	.quad	0x3fe7191ff7164c73              # double 0.72181700000000004
	.quad	0x3fe520f9096bb98c              # double 0.66027499999999995
	.quad	0x3fe15629d8409e56              # double 0.54176800000000003
	.quad	0x3fdf623076c050be              # double 0.49036800000000003
	.quad	0x3fd09a88ace24bba              # double 0.259432
	.quad	0x3faf09741d084e83              # double 0.060618999999999999
	.quad	0x3fd98dde7a743a64              # double 0.39928399999999997
	.quad	0x3fb04c37e6f71a7e              # double 0.063662999999999997
	.quad	0x3fea4a7f8012dfd7              # double 0.82159400000000005
	.quad	0x3fd10eb24a6a875d              # double 0.26652199999999998
	.quad	0x3feed02ababead4f              # double 0.96291099999999996
	.quad	0x3fe91dc2f405f6ba              # double 0.784883
	.quad	0x3fceab3edd8b60f2              # double 0.23960100000000001
	.quad	0x3fdfa8d21bc126a6              # double 0.49467899999999998
	.quad	0x3fe2f39085f4a127              # double 0.59223199999999998
	.quad	0x3fe8704ff43419e3              # double 0.76371
	.quad	0x3fc75ef1fddebd90              # double 0.182585
	.quad	0x3fe2c46f9b994e1a              # double 0.58647899999999997
	.quad	0x3fe8a40b780346dc              # double 0.77002499999999995
	.quad	0x3feae1d4306e5cd5              # double 0.84006700000000001
	.quad	0x3fea7b8b26394fad              # double 0.82758100000000001
	.quad	0x3fe26cfa69be09bb              # double 0.57580299999999995
	.quad	0x3fd45a187a4a48f9              # double 0.31799899999999998
	.quad	0x3fe9fa7eb6bf444e              # double 0.81182799999999999
	.quad	0x3fdf2dfd694ccab4              # double 0.487182
	.quad	0x3fd13f63c31df762              # double 0.26949400000000001
	.quad	0x3fe017b95a294142              # double 0.50289600000000001
	.quad	0x3fb2d02cd39da166              # double 0.073488999999999999
	.quad	0x3fe477e5eaab0425              # double 0.63963599999999998
	.quad	0x3fe4961c36976bc2              # double 0.64332400000000001
	.quad	0x3fe11ca7d6733ebc              # double 0.534748
	.quad	0x3fcf4940bbb1f256              # double 0.244423
	.quad	0x3feaa5a250f84018              # double 0.83271899999999999
	.quad	0x3fea33e1437c5693              # double 0.81883300000000003
	.quad	0x3fd9615ebfa8f7db              # double 0.39656799999999998
	.quad	0x3fef17481b21c476              # double 0.97159200000000001
	.quad	0x3fbe37154003254e              # double 0.11802799999999999
	.quad	0x3fe96455eaee2004              # double 0.79349800000000003
	.quad	0x3fdae696a26e5471              # double 0.42032399999999998
	.quad	0x3fe61c0010c6f7a1              # double 0.69091800000000003
	.quad	0x3fc00053e2d6238e              # double 0.12501000000000001
	.quad	0x3fd7cd35a858793e              # double 0.37190000000000001
	.quad	0x3fd2b6b2af145522              # double 0.29240100000000002
	.quad	0x3fa7829068986fce              # double 0.045918
	.quad	0x3fe43a0c6b484d77              # double 0.63208600000000004
	.quad	0x3fdf0e38a7e73a36              # double 0.48524299999999998
	.quad	0x3fe3ea5d6bebe165              # double 0.622359
	.quad	0x3fe0023422467be5              # double 0.50026899999999996
	.quad	0x3fe12b7564302b41              # double 0.536555
	.quad	0x3fdb7457c0b13598              # double 0.42897600000000002
	.quad	0x3fe61fafc8b0079a              # double 0.69136799999999998
	.quad	0x3fe728c36da87a07              # double 0.72372599999999998
	.quad	0x3fdc7b28954a7f80              # double 0.445017
	.quad	0x3fa420f6f08cc576              # double 0.039314000000000002
	.quad	0x3fe8b480a5accd53              # double 0.772034
	.quad	0x3fdf4128bf3bea92              # double 0.48835200000000001
	.quad	0x3fc01b4bb5e0f7fd              # double 0.125833
	.quad	0x3fdcd4e09784ec63              # double 0.45049299999999998
	.quad	0x3fc4cc3e3193f6c2              # double 0.16248299999999999
	.quad	0x3feef739f340d4dc              # double 0.96767899999999995
	.quad	0x3fdf1cbccf28c79f              # double 0.48612899999999998
	.quad	0x3fd0f9591cd1c7de              # double 0.26521899999999998
	.quad	0x3fe737739f340d4e              # double 0.72551900000000002
	.quad	0x3fe48956c0d6f545              # double 0.64176500000000003
	.quad	0x3fede9fadafd1138              # double 0.93481199999999998
	.quad	0x3fd8f77f27fe4bcb              # double 0.39010600000000001
	.quad	0x3fe8a756861e9292              # double 0.77042699999999997
	.quad	0x3fe3f32df505d0fa              # double 0.62343499999999996
	.quad	0x3fe49bf5946c332f              # double 0.644038
	.quad	0x3fde1626b2f23034              # double 0.47010200000000002
	.quad	0x3fe57648c7192ea5              # double 0.67068899999999998
	.quad	0x3fe606e3b46fdeb5              # double 0.68834099999999998
	.quad	0x3f62c061847f5621              # double 0.0022889999999999998
	.quad	0x3fe943a860dcb9aa              # double 0.78950900000000002
	.quad	0x3fe2c898f605ab3b              # double 0.58698700000000004
	.quad	0x3fceb5781c714fce              # double 0.23991299999999999
	.quad	0x3fe8df17bd8be729              # double 0.77723299999999995
	.quad	0x3feab9baa1511e00              # double 0.83517200000000003
	.quad	0x3fe35823422467be              # double 0.60450899999999996
	.quad	0x3fd07c49fd7a13c2              # double 0.25758599999999998
	.quad	0x3fd73ee5eedcc20d              # double 0.36321399999999998
	.quad	0x3fe475ea67e846a6              # double 0.63939400000000002
	.quad	0x3fc7f5c6c11a1123              # double 0.18718799999999999
	.quad	0x3fa9e215336deb96              # double 0.050553000000000001
	.quad	0x3fe7ee978d4fdf3b              # double 0.74787499999999996
	.quad	0x3fd7ff04577d9557              # double 0.37494
	.quad	0x3fbd6ce789e774ef              # double 0.114943
	.quad	0x3fc05b530ced4e4d              # double 0.12778700000000001
	.quad	0x3fd1ea6c1a048e04              # double 0.27993299999999999
	.quad	0x3fe400c0f01fb82c              # double 0.62509199999999998
	.quad	0x3feb58383ad9f0a2              # double 0.85451900000000003
	.quad	0x3fe08205ff1d81f1              # double 0.515872
	.quad	0x3fd1b1359791819d              # double 0.27644099999999999
	.quad	0x3fd05cc857f3061c              # double 0.25566299999999997
	.quad	0x3fdfc18f81e8a2ec              # double 0.49618899999999999
	.quad	0x3fc715ce9e5e2479              # double 0.18035300000000001
	.quad	0x3fe5f32df505d0fa              # double 0.68593499999999996
	.quad	0x3fedc4c7b02d59d5              # double 0.93027099999999996
	.quad	0x3f9a2ad3e920c06a              # double 0.025554
	.quad	0x3fe3bac4f7ec3548              # double 0.61654900000000001
	.quad	0x3fe770cbaf965b21              # double 0.73251900000000003
	.quad	0x3fe9b3e1437c5693              # double 0.80320800000000003
	.quad	0x3fbc7160956c0d6f              # double 0.111105
	.quad	0x3fcc0346dc5d6388              # double 0.21884999999999999
	.quad	0x3fddc810a569b175              # double 0.46533600000000003
	.quad	0x3fe9a2a2c2374795              # double 0.80110300000000001
	.quad	0x3fee446f9b994e1a              # double 0.94585399999999997
	.quad	0x3fb95da272862f5a              # double 0.099085000000000006
	.quad	0x3fef3f7ad4b2745c              # double 0.976499
	.quad	0x3fe2d379fa97e133              # double 0.58831500000000003
	.quad	0x3feaf04ddb5525cc              # double 0.84183399999999997
	.quad	0x3fca888b545c78a7              # double 0.207292
	.quad	0x3fe43ec02f2f9874              # double 0.63266
	.quad	0x3fcc1c714fce746d              # double 0.21961800000000001
	.quad	0x3fe77079e59f2baa              # double 0.73248000000000002
	.quad	0x3fb41908e581cf78              # double 0.078506999999999993
	.quad	0x3fd8c679cc74b839              # double 0.38711400000000001
	.quad	0x3fe868d972cd7cf6              # double 0.762799
	.quad	0x3fd0b10ba6266fd6              # double 0.26080599999999998
	.quad	0x3fee943393ab430f              # double 0.95559099999999997
	.quad	0x3fd770196d8f4f94              # double 0.36621700000000001
	.quad	0x3fe72ef4e0114d2f              # double 0.72448199999999996
	.quad	0x3fee82d38476f2a6              # double 0.95347000000000004
	.quad	0x3fefc8a7a41e57da              # double 0.99324400000000002
	.quad	0x3fe8ea11ec918e32              # double 0.77857299999999996
	.quad	0x3fdf4fd6d7e889c2              # double 0.48924800000000002
	.quad	0x3fe092fb19e731d3              # double 0.51794200000000001
	.quad	0x3febfa3fcc9ea9a4              # double 0.87429800000000001
	.quad	0x3fe7e1a8262456f7              # double 0.74629599999999996
	.quad	0x3fe6a5c3dee78184              # double 0.707735
	.quad	0x3fe6836eb4e98138              # double 0.70354399999999995
	.quad	0x3f9ede97d06bbdbe              # double 0.030145999999999999
	.quad	0x3fc254bcf0b6b6e1              # double 0.143211
	.quad	0x3fefd3ed527e5215              # double 0.99461999999999994
	.quad	0x3fe445692b3cc4ac              # double 0.63347299999999995
	.quad	0x3fef898b2e9ccb7d              # double 0.98553999999999997
	.quad	0x3fd2d5d3dc8b86b1              # double 0.29430099999999998
	.quad	0x3feb527a20578e5c              # double 0.85381799999999996
	.quad	0x3fe799d883ba3444              # double 0.73753000000000002
	.quad	0x3fe973a14cec41dd              # double 0.79536499999999999
	.quad	0x3fa5ea67e846a5d7              # double 0.042804000000000002
	.quad	0x3fed993d5347a5b1              # double 0.924956
	.quad	0x3fb42df0d413122b              # double 0.078825999999999993
	.quad	0x3fe72e536501e258              # double 0.72440499999999997
	.quad	0x3fe14c575c0767d3              # double 0.54056899999999997
	.quad	0x3fd2fecdd0d8cb08              # double 0.29680200000000001
	.quad	0x3fefde33269df97b              # double 0.99587400000000003
	.quad	0x3fdf4806290eed03              # double 0.48877100000000001
	.quad	0x3fe7c5c9a34ca0c3              # double 0.74289400000000005
	.quad	0x3fc86b26bf8769ec              # double 0.19077
	.quad	0x3fcf1d25aab47410              # double 0.24307699999999999
	.quad	0x3fd9101f31f46ed2              # double 0.39160899999999998
	.quad	0x3fd43e3e29307af2              # double 0.316299
	.quad	0x3fed660a2014727e              # double 0.91870600000000002
	.quad	0x3feb5edaec4a4096              # double 0.85532900000000001
	.quad	0x3fe9bd2b6f19934f              # double 0.804342
	.quad	0x3fe23571d1d4738a              # double 0.56902399999999997
	.quad	0x3fce4bdba0a52696              # double 0.23669000000000001
	.quad	0x3fd5ffac1d29dc72              # double 0.34372999999999998
	.quad	0x3fb5054ac29bf163              # double 0.082112000000000004
	.quad	0x3fb0af4f0d844d01              # double 0.065174999999999997
	.quad	0x3fe110adcd2d44dd              # double 0.53328600000000004
	.quad	0x3fe7770bd017dae8              # double 0.73328199999999999
	.quad	0x3feea5c3dee78184              # double 0.957735
	.quad	0x3fdbd31337eb28d8              # double 0.43475799999999998
	.quad	0x3fc3a91105e1c151              # double 0.15359700000000001
	.quad	0x3fe8153586ca89fc              # double 0.75258899999999995
	.quad	0x3fdf6045baf533f4              # double 0.49025099999999999
	.quad	0x3fa1704ff43419e3              # double 0.03406
	.quad	0x3feb517614595358              # double 0.85369399999999995
	.quad	0x3fe04d72799a1fd1              # double 0.50945399999999996
	.quad	0x3fdb20296b3354c1              # double 0.42383799999999999
	.quad	0x3fe6e4d5d80e496f              # double 0.71543400000000001
	.quad	0x3fe46faa4766c6de              # double 0.63863099999999995
	.quad	0x3fe082a3486f049b              # double 0.51594700000000004
	.quad	0x3fd6c8a372606fac              # double 0.35599599999999998
	.quad	0x3fe16bfa8f7db6e5              # double 0.544431
	.quad	0x3fef8f345069a4df              # double 0.98623099999999996
	.quad	0x3fd46d117b5286b6              # double 0.31915700000000002
	.quad	0x3fc10614163779ea              # double 0.13299800000000001
	.quad	0x3fe43ae03b3e9a70              # double 0.63218700000000005
	.quad	0x3fbcfb00bcbe61d0              # double 0.113205
	.quad	0x3fe38303c07ee0b1              # double 0.60974300000000003
	.quad	0x3fe432e3821af7d3              # double 0.631212
	.quad	0x3fd67c3d68405b3a              # double 0.35133300000000001
	.quad	0x3fc29ce4a7b4e54f              # double 0.14541299999999999
	.quad	0x3fe40f6273929ed4              # double 0.62687800000000005
	.quad	0x3fe407b139c94f6a              # double 0.62593900000000002
	.quad	0x3feb7a311e85fd05              # double 0.85866600000000004
	.quad	0x3fa78ad256798959              # double 0.045981000000000001
	.quad	0x3fc18583621fafc9              # double 0.13688700000000001
	.quad	0x3fb1a469d7342edc              # double 0.068915000000000004
	.quad	0x3fc90d7be9856a38              # double 0.19572400000000001
	.quad	0x3fe6e64f54d1e96c              # double 0.71561399999999997
	.quad	0x3fe833a8a3f8982d              # double 0.75630600000000003
	.quad	0x3fe10efbb0e5e679              # double 0.53307899999999997
	.quad	0x3fe1179bfdf7e804              # double 0.53413200000000005
	.quad	0x3fdc9f77292c4934              # double 0.44723299999999999
	.quad	0x3fcb68dfbd6a593a              # double 0.214138
	.quad	0x3fe7fa22706d5065              # double 0.74928399999999995
	.quad	0x3fe624e379b77c03              # double 0.69200300000000003
	.quad	0x3fe8e4a38327674d              # double 0.77790999999999999
	.quad	0x3fcd99029ae4f334              # double 0.23123199999999999
	.quad	0x3fd356ffc115df65              # double 0.30218499999999998
	.quad	0x3febe9552e2fbe34              # double 0.87223300000000003
	.quad	0x3fc2d23d4f15e7c9              # double 0.14704100000000001
	.quad	0x3fddba16e7a311e8              # double 0.46448299999999998
	.quad	0x3fee328522ea0fd4              # double 0.94366700000000003
	.quad	0x3fd6148344c37e6f              # double 0.34500199999999998
	.quad	0x3fe49f18c9fb6135              # double 0.64442100000000002
	.quad	0x3fc7614df8b15726              # double 0.18265700000000001
	.quad	0x3fd485d744f5d356              # double 0.32066899999999998
	.quad	0x3fc359b3d07c84b6              # double 0.151175
	.quad	0x3fe32eb80ecfa69c              # double 0.59945300000000001
	.quad	0x3fe3da3a08398a65              # double 0.62038899999999997
	.quad	0x3fe656b441bb8c33              # double 0.69808400000000004
	.quad	0x3fe9634fc610f0e9              # double 0.79337299999999999
	.quad	0x3fe867a311e85fd0              # double 0.76265099999999997
	.quad	0x3fd2b3f20a73f749              # double 0.29223300000000002
	.quad	0x3fed30142f61ed5b              # double 0.91211900000000001
	.quad	0x3fe5873de1e2de87              # double 0.672759
	.quad	0x3febed612c6ac216              # double 0.87272700000000003
	.quad	0x3fb5add9c27e9531              # double 0.084683999999999995
	.quad	0x3fddca686e7e62dc              # double 0.46547899999999998
	.quad	0x3fe955c52e72da12              # double 0.79171999999999998
	.quad	0x3fd97c30d306a2b1              # double 0.39820499999999998
	.quad	0x3fd7d6f976790321              # double 0.37249599999999999
	.quad	0x3fe21a0f0a5efe93              # double 0.56568099999999999
	.quad	0x3fea35d894812be5              # double 0.81907300000000005
	.quad	0x3fdabf22c01e68a1              # double 0.41791600000000001
	.quad	0x3fe48d6909aed56b              # double 0.642262
	.quad	0x3fc99d99029ae4f3              # double 0.20012199999999999
	.quad	0x3fe4e5a14488c60d              # double 0.65303100000000003
	.quad	0x3fef5c03361565c3              # double 0.97998200000000001
	.quad	0x3fe762a1b5c7cd8a              # double 0.73079000000000005
	.quad	0x3fecc3aa79bbadc1              # double 0.89888500000000005
	.quad	0x3fd9e12620253975              # double 0.40436699999999998
	.quad	0x3fdc6191148fd9fd              # double 0.44345499999999999
	.quad	0x3fe3b8b26394face              # double 0.61629599999999995
	.quad	0x3fe96bca5375c8da              # double 0.794408
	.quad	0x3fb3116228134480              # double 0.074483999999999994
	.quad	0x3fdf52c9d16fc9bc              # double 0.48942799999999997
	.quad	0x3feff5be5d9e40c8              # double 0.99874799999999996
	.quad	0x3fd7d7b2031ceaf2              # double 0.37253999999999998
	.quad	0x3fe73784662bae04              # double 0.72552700000000003
	.quad	0x3fec585be1a82624              # double 0.88578599999999996
	.quad	0x3fc231f8a0902de0              # double 0.14215
	.quad	0x3fc1758e219652bd              # double 0.13639999999999999
	.quad	0x3fe90dc33721d53d              # double 0.78293000000000001
	.quad	0x3fe7d31550ca1cef              # double 0.74451699999999998
	.quad	0x3fcecfaeff5c6c12              # double 0.24071300000000001
	.quad	0x3fe06a4ebdd334c6              # double 0.51297700000000002
	.quad	0x3feb2085b18548aa              # double 0.84772000000000003
	.quad	0x3fe00fdc1615ebfb              # double 0.50193600000000005
	.quad	0x3fe95421c044284e              # double 0.79152
	.quad	0x3fb02acb85a4f00f              # double 0.063153000000000001
	.quad	0x3fca5375c8d9f905              # double 0.20567199999999999
	.quad	0x3fe17687b139c94f              # double 0.54571899999999995
	.quad	0x3fdff262888b545c              # double 0.49916899999999997
	.quad	0x3fe3739085f4a127              # double 0.60785699999999998
	.quad	0x3fdc1359791819d2              # double 0.43868099999999999
	.quad	0x3fe098c5c9a34ca1              # double 0.51864900000000003
	.quad	0x3fa40b135979181a              # double 0.039147000000000001
	.quad	0x3feaecd4aa10e022              # double 0.84140999999999999
	.quad	0x3feec6d1e108c3f4              # double 0.96177000000000001
	.quad	0x3fe897aaac1094a3              # double 0.76851400000000003
	.quad	0x3fc7feeb2d0a2446              # double 0.18746699999999999
	.quad	0x3fbdad2135daad60              # double 0.115923
	.quad	0x3fe922dd7a99fa12              # double 0.78550600000000004
	.quad	0x3fe590cb295e9e1b              # double 0.673925
	.quad	0x3fd2207d4e09784f              # double 0.28323300000000001
	.quad	0x3fd603968d759ee9              # double 0.34396900000000002
	.quad	0x3fe31ca5bd944aa5              # double 0.59724699999999997
	.quad	0x3fd51f81a5870da6              # double 0.33004800000000001
	.quad	0x3fe38754f3775b81              # double 0.61026999999999998
	.quad	0x3fd3c3e3193f6c27              # double 0.30883100000000002
	.quad	0x3fc2eb356da0168b              # double 0.14780299999999999
	.quad	0x3fe0116440f23897              # double 0.50212299999999999
	.quad	0x3fe40644523f67f5              # double 0.62576500000000002
	.quad	0x3fcf79e9d0e991ff              # double 0.24590799999999999
	.quad	0x3fd6dd095af294dd              # double 0.35724099999999998
	.quad	0x3fdad6bebe1650a4              # double 0.41935699999999998
	.quad	0x3fe31d2178f68be3              # double 0.597306
	.quad	0x3fd17abfb9bed30f              # double 0.273117
	.quad	0x3fe17021d10b1fef              # double 0.54493800000000003
	.quad	0x3fe28d23d4f15e7d              # double 0.57972900000000005
	.quad	0x3fed79acffa7eb6c              # double 0.921103
	.quad	0x3fe9e90bc7b45f18              # double 0.80969800000000003
	.quad	0x3fc339da16616b55              # double 0.150203
	.quad	0x3fe5ef566490a351              # double 0.68546600000000002
	.quad	0x3fe493a92a305532              # double 0.64302499999999996
	.quad	0x3fbfbf401c4fc1df              # double 0.124012
	.quad	0x3fa6d352220bc383              # double 0.044581000000000003
	.quad	0x3fba74080f98fa37              # double 0.10333299999999999
	.quad	0x3feb9af9ebe9c886              # double 0.86266799999999999
	.quad	0x3f8df5cf2495e17e              # double 0.014629
	.quad	0x3fd6e0f7fcfc3f81              # double 0.35748099999999999
	.quad	0x3fe2ebe1650a45d4              # double 0.59129399999999999
	.quad	0x3fdaeed45e9185cf              # double 0.42082700000000001
	.quad	0x3fdc55e6bc621b7e              # double 0.442743
	.quad	0x3fed6fb2aae29739              # double 0.91988499999999995
	.quad	0x3feacc059210385c              # double 0.83740499999999995
	.quad	0x3fea9c347e8ccdd9              # double 0.83156799999999997
	.quad	0x3fb1668c26139000              # double 0.067971000000000004
	.quad	0x3fd04cec41dd1a22              # double 0.254695
	.quad	0x3fec3e48a58b3f64              # double 0.88260300000000002
	.quad	0x3fd82cba732df506              # double 0.37773000000000001
	.quad	0x3febcbc48f10a99b              # double 0.86862399999999995
	.quad	0x3fc537f38c5436b9              # double 0.16577
	.quad	0x3fe5aa66dbd72bcb              # double 0.67705099999999996
	.quad	0x3fd6682f944241c4              # double 0.350109
	.quad	0x3fec5bf6a0dbad3a              # double 0.88622599999999996
	.quad	0x3fb14e8fb00bcbe6              # double 0.067604999999999998
	.quad	0x3fef150331e3a7db              # double 0.97131500000000003
	.quad	0x3fd5e3f78bbd3804              # double 0.34203899999999998
	.quad	0x3fbb327aa68f4b62              # double 0.106239
	.quad	0x3fedb30b5aa71583              # double 0.92810599999999999
	.quad	0x3fbf64388ebcc6c5              # double 0.122623
	.quad	0x3fc2bc7b45f17bd9              # double 0.14637700000000001
	.quad	0x3fdd610adcd2d44e              # double 0.45904800000000001
	.quad	0x3fc427f1b6912125              # double 0.157469
	.quad	0x3fdcda87a072d1af              # double 0.45083800000000002
	.quad	0x3fe0ded4a1ad6452              # double 0.52720100000000003
	.quad	0x3fe36238da3c2118              # double 0.60573999999999995
	.quad	0x3fe4473eee525892              # double 0.63369699999999995
	.quad	0x3fc0088509bf9c63              # double 0.12526000000000001
	.quad	0x3fe586a098915bdd              # double 0.67268399999999995
	.quad	0x3fc52dba4d6e47dc              # double 0.16545799999999999
	.quad	0x3fa601ffb480a5ad              # double 0.042984000000000001
	.quad	0x3fce67168f8e7ddd              # double 0.23752100000000001
	.quad	0x3fe2525aab474107              # double 0.57255299999999998
	.quad	0x3f9a1b5c7cd898b3              # double 0.025495
	.quad	0x3fef248f96e15875              # double 0.97321299999999999
	.quad	0x3fe5de6bc621b7e1              # double 0.68340100000000004
	.quad	0x3feeafbc1acde1a0              # double 0.95895200000000002
	.quad	0x3fe98995aaf78fef              # double 0.798045
	.quad	0x3fe2c4c5974e65bf              # double 0.58652000000000004
	.quad	0x3fefd99029ae4f33              # double 0.99530799999999997
	.quad	0x3fe864302b40f66a              # double 0.76222999999999996
	.quad	0x3fcb4a98aa8650e7              # double 0.21321399999999999
	.quad	0x3fedfb480a5accd5              # double 0.93692399999999998
	.quad	0x3fe3b0c88a47ecff              # double 0.61533000000000004
	.quad	0x3feda5657fb69985              # double 0.92644000000000004
	.quad	0x3fcc9e12a51e321a              # double 0.22357399999999999
	.quad	0x3fdf13ec460ed80a              # double 0.48559099999999999
	.quad	0x3fbf62d83c6c97d9              # double 0.122602
	.quad	0x3fdae1c58255b036              # double 0.42003000000000001
	.quad	0x3fd2d5bee3d5fdce              # double 0.294296
	.quad	0x3fee7df19d66adb4              # double 0.95287399999999999
	.quad	0x3fde158750c1b973              # double 0.47006399999999998
	.quad	0x3fc7d377e1b8ed1c              # double 0.186141
	.quad	0x3fc55ebfa8f7db6e              # double 0.16695399999999999
	.quad	0x3fed61565c2d2780              # double 0.91813199999999995
	.quad	0x3fda4f54d1e96c40              # double 0.41109200000000001
	.quad	0x3fe5d1611ba3ca75              # double 0.681809
	.quad	0x3fe86c28b2a6b0d9              # double 0.76320299999999996
	.quad	0x3fef75be5d9e40c8              # double 0.98312299999999996
	.quad	0x3fcc9b845564b663              # double 0.223496
	.quad	0x3fefc6de76427c7c              # double 0.99302599999999996
	.quad	0x3fecc0b34e768598              # double 0.89852299999999996
	.quad	0x3fe14069e7fb267c              # double 0.53911299999999995
	.quad	0x3fd62c9d16fc9bc7              # double 0.34647299999999998
	.quad	0x3fdfe86c6583e857              # double 0.49856099999999998
	.quad	0x3fefa5e56cd6c2f0              # double 0.98900100000000002
	.quad	0x3fed229c779a6b51              # double 0.91047500000000003
	.quad	0x3fe8a5f41aef6f8f              # double 0.770258
	.quad	0x3fd6244a6223e187              # double 0.34596500000000002
	.quad	0x3f97dd00f776c482              # double 0.023303999999999998
	.quad	0x3fe62b3892ee84ad              # double 0.69277599999999995
	.quad	0x3feba558ea7ce0fc              # double 0.86393399999999997
	.quad	0x3fef1c68ec52a412              # double 0.97221800000000003
	.quad	0x3fd3faf42784a948              # double 0.31219200000000003
	.quad	0x3fe7a7a85015c209              # double 0.73921599999999998
	.quad	0x3fd3d4bf0995aaf8              # double 0.30986000000000002
	.quad	0x3fd6e33269df97ab              # double 0.35761700000000002
	.quad	0x3fe553a81dc0db27              # double 0.666462
	.quad	0x3fbe322af5771002              # double 0.117953
	.quad	0x3fecbcc8de2ac322              # double 0.89804499999999998
	.quad	0x3fdfa0c6b484d76b              # double 0.49418800000000002
	.quad	0x3fd7050374ff865d              # double 0.35968099999999997
	.quad	0x3fe643632c1f42bb              # double 0.69572599999999996
	.quad	0x3fbdfab96f21f6cb              # double 0.117107
	.quad	0x3fda3422467be554              # double 0.40943200000000002
	.quad	0x3fba4c404a72ead9              # double 0.102726
	.quad	0x3fea6f86a098915c              # double 0.82611400000000001
	.quad	0x3fd06d3f9e7b80aa              # double 0.25666800000000001
	.quad	0x3fa814940bbb1f25              # double 0.047031999999999997
	.quad	0x3fe6da272862f599              # double 0.71413000000000004
	.quad	0x3fd126bf8769ec2d              # double 0.26799000000000001
	.quad	0x3fdc0ef99806f263              # double 0.43841400000000003
	.quad	0x3fe729d627bf61aa              # double 0.72385699999999997
	.quad	0x3fa41e57d9dba909              # double 0.039294000000000003
	.quad	0x3fe33c1eff9f87f0              # double 0.60108899999999998
	.quad	0x3fcf75f2cb641701              # double 0.24578700000000001
	.quad	0x3fe40c3b0c4588a0              # double 0.62649299999999997
	.quad	0x3fd7f5f91600f345              # double 0.374388
	.quad	0x3fecc182ecaeea64              # double 0.89862200000000003
	.quad	0x3fe117dae81882ae              # double 0.53416200000000003
	.quad	0x3fe9227ae9ab29e5              # double 0.78545900000000002
	.quad	0x3fa353d640e9d51b              # double 0.037748999999999998
	.quad	0x3fad929670196d8f              # double 0.057758999999999998
	.quad	0x3fddea9a3d2d87f9              # double 0.46744400000000003
	.quad	0x3fe749e236c15d2d              # double 0.727769
	.quad	0x3fea625c810a569b              # double 0.82450699999999999
	.quad	0x3fe23877ab324852              # double 0.56939300000000004
	.quad	0x3fda007dd4413554              # double 0.40627999999999997
	.quad	0x3fe756b00ffda405              # double 0.72933199999999998
	.quad	0x3fd2837f7be121ee              # double 0.28927599999999998
	.quad	0x3fde3a322af57710              # double 0.472302
	.quad	0x3fe3b4efcbd55608              # double 0.61583699999999997
	.quad	0x3fe00f81e8a2ec29              # double 0.50189300000000003
	.quad	0x3fd9f212d77318fc              # double 0.40539999999999998
	.quad	0x3fe3cb70ac3a860e              # double 0.61858400000000002
	.quad	0x3fe6818c5c9a34ca              # double 0.70331399999999999
	.quad	0x3fd6aec4a4095f24              # double 0.35441699999999998
	.quad	0x3fe5b06c43f5f916              # double 0.677786
	.quad	0x3fe3573a797891e2              # double 0.60439799999999999
	.quad	0x3fe4d771001d5c31              # double 0.65129899999999996
	.quad	0x3fd81276fb09203a              # double 0.37612699999999999
	.quad	0x3fe7845564b662fe              # double 0.734904
	.quad	0x3fd3ce703afb7e91              # double 0.309475
	.quad	0x3fe300e496ededaf              # double 0.59385900000000003
	.quad	0x3fdffa76534373f3              # double 0.499662
	.quad	0x3fdc8a6dacabc515              # double 0.44594899999999998
	.quad	0x3feb436b8f9b1316              # double 0.85197999999999996
	.quad	0x3fef9d755bccaf71              # double 0.98797100000000004
	.quad	0x3fad712a0ec74320              # double 0.057504
	.quad	0x3fd7cebbba55d1c4              # double 0.37199300000000002
	.quad	0x3fc9f61aa3f034b1              # double 0.202823
	.quad	0x3fa4f2f123c42a67              # double 0.040916000000000001
	.quad	0x3fe2918c197e5647              # double 0.58026699999999998
	.quad	0x3fb2937d1fe64f55              # double 0.072563000000000002
	.quad	0x3f764c729f59ccfb              # double 0.0054440000000000001
	.quad	0x3fed5f633ce63a5c              # double 0.91789399999999998
	.quad	0x3fde3bbc6eb0b7c3              # double 0.47239599999999998
	.quad	0x3fe4e08d08919ef9              # double 0.65241099999999996
	.quad	0x3fe311d3671ac14c              # double 0.59592599999999996
	.quad	0x3fd9f498c3b0c459              # double 0.40555400000000003
	.quad	0x3fe9641d4b6a619e              # double 0.79347100000000004
	.quad	0x3f84a1ad6451b930              # double 0.010074
	.quad	0x3fce1f85d744f5d3              # double 0.23533699999999999
	.quad	0x3fee9f3a57eaa2a1              # double 0.95693700000000004
	.quad	0x3fe6e5abc0e38a7e              # double 0.71553599999999995
	.quad	0x3fe2bdff3f0fe048              # double 0.58569300000000002
	.quad	0x3fec8f1d3ed527e5              # double 0.89246999999999999
	.quad	0x3fd562d83c6c97d9              # double 0.33415800000000001
	.quad	0x3fc5b749adc8fb87              # double 0.169656
	.quad	0x3fd5154866a11ec9              # double 0.32942399999999999
	.quad	0x3fc374a3400b88ca              # double 0.15199699999999999
	.quad	0x3fcc06a6e32e3822              # double 0.21895300000000001
	.quad	0x3fd96c43f5f91601              # double 0.397233
	.quad	0x3fde5b1c864883fd              # double 0.47431099999999998
	.quad	0x3fd0cbe61cffeb07              # double 0.26244499999999998
	.quad	0x3fe3c9ba5e353f7d              # double 0.61837500000000001
	.quad	0x3fac22467be553ac              # double 0.054948999999999998
	.quad	0x3fc77a24894c447c              # double 0.18341499999999999
	.quad	0x3fe7a4edf6124074              # double 0.73888299999999996
	.quad	0x3fe799c9d5a187a5              # double 0.73752300000000004
	.quad	0x3fbff4cb1897a67a              # double 0.124829
	.quad	0x3fd2354c122749f1              # double 0.28450300000000001
	.quad	0x3fb9883ba3443d47              # double 0.099735000000000004
	.quad	0x3fed03a7546d3f9e              # double 0.90669599999999995
	.quad	0x3fdafb506dd69d30              # double 0.42158899999999999
	.quad	0x3fe6a5bfad299956              # double 0.70773299999999995
	.quad	0x3fd3375c8d9f9054              # double 0.30025400000000002
	.quad	0x3fdc95b78cc9a77e              # double 0.44663799999999998
	.quad	0x3fbeae6c8f755369              # double 0.119849
	.quad	0x3fe4057f3061c79b              # double 0.62567099999999998
	.quad	0x3fe7603b3e9a6f82              # double 0.73049699999999995
	.quad	0x3fda6501e2584f4c              # double 0.41241499999999998
	.quad	0x3fd899524bfd2e94              # double 0.38435799999999998
	.quad	0x3fe1229a5ebb773a              # double 0.53547400000000001
	.quad	0x3fe5f353b4b2fa94              # double 0.68595300000000003
	.quad	0x3fe18a6dacabc515              # double 0.54814799999999997
	.quad	0x3fea6fb4c3c18b50              # double 0.82613599999999998
	.quad	0x3feaca07f66e86c6              # double 0.83716199999999996
	.quad	0x3feab0ff10ecb74e              # double 0.83410600000000001
	.quad	0x3fda97d06bbdbe3c              # double 0.415516
	.quad	0x3f9127f5e84f0953              # double 0.016754000000000002
	.quad	0x3fe75b7281fd9ba2              # double 0.72991300000000003
	.quad	0x3fd0ee99a62ed352              # double 0.26456299999999999
	.quad	0x3feb52f3c2dadb83              # double 0.85387599999999997
	.quad	0x3fa724b76f6d7625              # double 0.045201999999999999
	.quad	0x3feb0e25c810a56a              # double 0.84547700000000003
	.quad	0x3fea8e60807357e6              # double 0.82987999999999995
	.quad	0x3fdb0f12c27a6373              # double 0.42279499999999998
	.quad	0x3fd9110a137f38c5              # double 0.39166499999999999
	.quad	0x3fe2ffcb923a29c7              # double 0.59372499999999995
	.quad	0x3fdb22749f0e4da1              # double 0.42397800000000002
	.quad	0x3fb9817b95a29414              # double 0.099631999999999998
	.quad	0x3fb989acbc8c0ce9              # double 0.099756999999999998
	.quad	0x3fd3b1359791819d              # double 0.30769099999999999
	.quad	0x3fd84e7ab7564303              # double 0.37979000000000002
	.quad	0x3fe736cbd987c632              # double 0.72543899999999994
	.quad	0x3fe89285a921ccd9              # double 0.76788599999999996
	.quad	0x3fce4f8f8a4c1ebd              # double 0.23680300000000001
	.quad	0x3fb4013ec460ed81              # double 0.078144000000000005
	.quad	0x3fdc111276fb0920              # double 0.43854199999999999
	.quad	0x3fe0e4c0df58c08b              # double 0.52792399999999995
	.quad	0x3fe4a95208e15012              # double 0.64566900000000005
	.quad	0x3fe4c0f88333fc87              # double 0.64855600000000002
	.quad	0x3fd139085f4a1273              # double 0.26910600000000001
	.quad	0x3fee7e69270b06c4              # double 0.95293099999999997
	.quad	0x3fb4b6b6e0d23d4f              # double 0.080912999999999999
	.quad	0x3fe4573a797891e2              # double 0.63564799999999999
	.quad	0x3fc950dae3e6c4c6              # double 0.19778000000000001
	.quad	0x3fc72684cf0739b0              # double 0.180863
	.quad	0x3fdc6748e4755ffe              # double 0.44380399999999998
	.quad	0x3fe363992c8c5005              # double 0.605908
	.quad	0x3fc18c111ada76d9              # double 0.13708699999999999
	.quad	0x3fd8606317268d33              # double 0.38088300000000003
	.quad	0x3fb3a26a22b3892f              # double 0.076697000000000001
	.quad	0x3fdb52c59fb1e18f              # double 0.426927
	.quad	0x3fb8813cab81f96a              # double 0.095722000000000001
	.quad	0x3fd2b75a74c09c3d              # double 0.29244100000000001
	.quad	0x3fc0a53fc0096feb              # double 0.13004299999999999
	.quad	0x3f909bf9c62a1b5c              # double 0.016219999999999998
	.quad	0x3fe61e1b089a0275              # double 0.69117499999999998
	.quad	0x3fee64302b40f66a              # double 0.94972999999999996
	.quad	0x3fdc6d19dece5711              # double 0.44415900000000003
	.quad	0x3fe0c9c6f36ef805              # double 0.52463099999999996
	.quad	0x3fd62c2374794ea0              # double 0.34644399999999997
	.quad	0x3fde3996fa82e87d              # double 0.47226499999999999
	.quad	0x3fd851ac9afe1da8              # double 0.37998500000000002
	.quad	0x3fda06c43f5f9160              # double 0.406663
	.quad	0x3fd268a50507a6bd              # double 0.28763699999999998
	.quad	0x3fc9fa658c4bd33d              # double 0.202954
	.quad	0x3fe5baade657b84e              # double 0.67903800000000003
	.quad	0x3fe1253543aeab7a              # double 0.53579200000000005
	.quad	0x3feb22be0589acbd              # double 0.84799100000000005
	.quad	0x3fd421e1d2178f69              # double 0.31456800000000001
	.quad	0x3fcce9899bf5946c              # double 0.22587699999999999
	.quad	0x3fba1a719b4dcec0              # double 0.101966
	.quad	0x3fdc527e5215768a              # double 0.44253500000000001
	.quad	0x3fedece358298cc1              # double 0.93516699999999997
	.quad	0x3fe1bf78bbd38045              # double 0.55462299999999998
	.quad	0x3fdd23033a4723ab              # double 0.455262
	.quad	0x3feea42070b8cfc0              # double 0.95753500000000002
	.quad	0x3fdacd9e83e425af              # double 0.41880000000000001
	.quad	0x3fec87f023e9ea14              # double 0.89159399999999999
	.quad	0x3fe6403bc4d22c88              # double 0.69534099999999999
	.quad	0x3fdcf950b955f783              # double 0.45271699999999998
	.quad	0x3f8cf4623d0bfa09              # double 0.014138
	.quad	0x3fc86c00da1a9329              # double 0.19079599999999999
	.quad	0x3fc343393ab430f5              # double 0.15048900000000001
	.quad	0x3fe117353b4b2fa9              # double 0.53408299999999997
	.quad	0x3febbfd933e35c5b              # double 0.86716899999999997
	.quad	0x3fe63eb18116ebd5              # double 0.69515300000000002
	.quad	0x3fea1b8aa00192a7              # double 0.81586199999999998
	.quad	0x3fee637de939eadd              # double 0.94964499999999996
	.quad	0x3fedccf28c79f666              # double 0.93126799999999998
	.quad	0x3feb25b749adc8fc              # double 0.84835400000000005
	.quad	0x3fe4e6a76965f527              # double 0.65315599999999996
	.quad	0x3fe7482e019b0ab3              # double 0.72756100000000001
	.quad	0x3fe5029068986fce              # double 0.65656300000000001
	.quad	0x3f890afe60c38f36              # double 0.012227999999999999
	.quad	0x3fc0a6eb91b3f20a              # double 0.13009399999999999
	.quad	0x3feb2ea3161a1db8              # double 0.84944299999999995
	.quad	0x3fe12261bf37b8d4              # double 0.53544700000000001
	.quad	0x3fa69fadafd11383              # double 0.044186999999999997
	.quad	0x3fe81d3cbc48f10b              # double 0.75356900000000004
	.quad	0x3fd8f3e89a88ace2              # double 0.38988699999999998
	.quad	0x3fe312b1b36bd2b7              # double 0.59603200000000001
	.quad	0x3faff327aa68f4b6              # double 0.062401999999999999
	.quad	0x3fafde2ef4e0114d              # double 0.062241999999999999
	.quad	0x3fc52b66b6177ea2              # double 0.16538700000000001
	.quad	0x3fe00298cc144029              # double 0.50031700000000001
	.quad	0x3fedfd3f5b5fa227              # double 0.937164
	.quad	0x3fc59a06a6e32e38              # double 0.168763
	.quad	0x3fdcd5629d8409e5              # double 0.45052399999999998
	.quad	0x3fe3cf70153bd167              # double 0.61907199999999996
	.quad	0x3fe2bbcb1cc96463              # double 0.58542400000000006
	.quad	0x3fcb2a411c2a0232              # double 0.212227
	.quad	0x3fd111a11233df2b              # double 0.26670100000000002
	.quad	0x3fd740420f6f08cc              # double 0.36329699999999998
	.quad	0x3fe054de7ea5f84d              # double 0.51036000000000004
	.quad	0x3fd0a5ce5b4245f6              # double 0.26012000000000002
	.quad	0x3fd94ece9a2c6690              # double 0.39543499999999998
	.quad	0x3fd4a365cb35f3d8              # double 0.32247300000000001
	.quad	0x3fc2c7e28240b780              # double 0.14672499999999999
	.quad	0x3fe6dac258d5842b              # double 0.71420399999999995
	.quad	0x3fb4b8066c2acb86              # double 0.080933000000000004
	.quad	0x3fe9cdf266ba493d              # double 0.80639000000000005
	.quad	0x3fcc0c282c6ef3d4              # double 0.21912100000000001
	.quad	0x3fe5536933a0407d              # double 0.66643200000000002
	.quad	0x3fd65dfeb8d82342              # double 0.34948699999999999
	.quad	0x3fe49359791819d2              # double 0.64298699999999998
	.quad	0x3fe1c5e0b4e11dbd              # double 0.55540500000000004
	.quad	0x3fcf906466b1e5c1              # double 0.24659400000000001
	.quad	0x3fd5b19a415f45e1              # double 0.33896500000000002
	.quad	0x3fcf78705425f202              # double 0.245863
	.quad	0x3fdc76d117b5286b              # double 0.44475199999999998
	.quad	0x3fdd84944ed6fda8              # double 0.46121699999999999
	.quad	0x3fd7cb85a4f00ef1              # double 0.37179699999999999
	.quad	0x3fc3d3671ac14c66              # double 0.154889
	.quad	0x3fe02e33eff19503              # double 0.50563999999999998
	.quad	0x3fecd579af1886e0              # double 0.90105900000000005
	.quad	0x3fe7dbec2480e8c9              # double 0.74559600000000004
	.quad	0x3fea178705425f20              # double 0.81537199999999998
	.quad	0x3fe706db50f40e5a              # double 0.71958699999999998
	.quad	0x3fe42a51e321a2e8              # double 0.630166
	.quad	0x3fe0f2b4528283d3              # double 0.52962699999999996
	.quad	0x3fda50374ff865d8              # double 0.41114600000000001
	.quad	0x3fe1c532a497fa5d              # double 0.55532199999999998
	.quad	0x3fdf828c36da87a0              # double 0.49234299999999998
	.quad	0x3fc802645e4e69f0              # double 0.18757299999999999
	.quad	0x3fd09cb252ce032e              # double 0.25956400000000002
	.quad	0x3fc00895d0b73d19              # double 0.12526200000000001
	.quad	0x3fe56d97b30f8c65              # double 0.669628
	.quad	0x3f5c864883fd5022              # double 0.0017409999999999999
	.quad	0x3fce97bfa4c61d86              # double 0.239006
	.quad	0x3feab7ac3eb7cbb4              # double 0.83492100000000002
	.quad	0x3fda787485e3da30              # double 0.41360200000000003
	.quad	0x3fdf8522ea0fd3b3              # double 0.49250100000000002
	.quad	0x3fe1ee5cd4ed2cbf              # double 0.56034700000000004
	.quad	0x3fe00359bc33f855              # double 0.50040899999999999
	.quad	0x3fd198bb4d48882f              # double 0.274947
	.quad	0x3feb3d1244a6223e              # double 0.85120499999999999
	.quad	0x3fec88b11409a240              # double 0.89168599999999998
	.quad	0x3fe22d4b2745bf27              # double 0.56802900000000001
	.quad	0x3fa77ee4e26d4802              # double 0.04589
	.quad	0x3fefb16e37154003              # double 0.99040899999999998
	.quad	0x3febf67f4dbdf8f4              # double 0.87383999999999995
	.quad	0x3feaaed783dff3f1              # double 0.833843
	.quad	0x3fe0db1e9f277814              # double 0.52674799999999999
	.quad	0x3fe630f27bb2fec5              # double 0.69347499999999995
	.quad	0x3fc856473471f794              # double 0.190133
	.quad	0x3fe0e7bc3c5bd0e1              # double 0.52828799999999998
	.quad	0x3fadbf8b9baa1512              # double 0.058102000000000001
	.quad	0x3feb7abb8800eae2              # double 0.85873200000000005
	.quad	0x3fa09fe86833c600              # double 0.032469999999999999
	.quad	0x3fc67d9988d2a1f9              # double 0.175708
	.quad	0x3fd19c4545846e8f              # double 0.27516299999999999
	.quad	0x3fdbe28672756862              # double 0.435701
	.quad	0x3fd6126202539757              # double 0.34487200000000001
	.quad	0x3fe73f6e3f78bbd4              # double 0.72649300000000006
	.quad	0x3fc843b2dd377e1c              # double 0.18956600000000001
	.quad	0x3fd897f62b6ae7d5              # double 0.38427499999999998
	.quad	0x3fee201abd1aa822              # double 0.94141900000000001
	.quad	0x3fb090d5a5b9628d              # double 0.064710000000000004
	.quad	0x3fd90b06c43f5f91              # double 0.39129799999999998
	.quad	0x3fecdc0767d34df0              # double 0.90185899999999997
	.quad	0x3f6758e219652bd4              # double 0.0028500000000000001
	.quad	0x3fedcba0e8427419              # double 0.93110700000000002
	.quad	0x3fde5985ad538ac2              # double 0.47421400000000002
	.quad	0x3febded8d36b4c7f              # double 0.87095299999999998
	.quad	0x3fc0dd377e1b8ed2              # double 0.13175100000000001
	.quad	0x3fc90e5e679463d0              # double 0.19575100000000001
	.quad	0x3fe6eaf251c193b4              # double 0.71618000000000004
	.quad	0x3fec93682730c671              # double 0.89299399999999995
	.quad	0x3fed17d06bbdbe3c              # double 0.90915699999999999
	.quad	0x3fe26746cb966be8              # double 0.57510700000000003
	.quad	0x3fb9733226c3b928              # double 0.099414000000000002
	.quad	0x3fc5f94855da2728              # double 0.17166999999999999
	.quad	0x3fe39526d8b1dd5d              # double 0.61195699999999997
	.quad	0x3fe4e97aeddce7cd              # double 0.653501
	.quad	0x3fe3ba1b1960fa16              # double 0.61646800000000002
	.quad	0x3fe7e5a57646ae3a              # double 0.74678299999999997
	.quad	0x3fd9a18bd66277c4              # double 0.40048499999999998
	.quad	0x3fe58bbd3804534c              # double 0.67330800000000002
	.quad	0x3fc3524399b2c40d              # double 0.150948
	.quad	0x3fe61dc93ea2d2fe              # double 0.69113599999999997
	.quad	0x3fce7674d1633483              # double 0.23799000000000001
	.quad	0x3fd53358f2e05ccd              # double 0.33125900000000003
	.quad	0x3fed65c4eb56fb8f              # double 0.91867299999999996
	.quad	0x3fe60b502ababead              # double 0.68888099999999997
	.quad	0x3f86e58a32f44913              # double 0.011180000000000001
	.quad	0x3fe072b66b6177ea              # double 0.51400299999999999
	.quad	0x3fec607c4199fe43              # double 0.88677799999999996
	.quad	0x3fb5a858793dd97f              # double 0.084599999999999995
	.quad	0x3fe03b7d84901d19              # double 0.50726199999999999
	.quad	0x3fe643eb7cbb3c82              # double 0.69579100000000005
	.quad	0x3fae049ecb31c21a              # double 0.058629000000000001
	.quad	0x3feb4753e707e176              # double 0.85245700000000002
	.quad	0x3fe87db2b346130a              # double 0.76534400000000002
	.quad	0x3fe75931ca7d6734              # double 0.72963800000000001
	.quad	0x3fefec2ce4649907              # double 0.99758000000000002
	.quad	0x3fc38ab0c88a47ed              # double 0.15267
	.quad	0x3fa2a8869c66d374              # double 0.036442000000000002
	.quad	0x3fec9fe21d96e9bc              # double 0.894517
	.quad	0x3feb57e889c1b542              # double 0.85448100000000005
	.quad	0x3feadf86e3b46fdf              # double 0.83978600000000003
	.quad	0x3fed5579af1886e0              # double 0.91668400000000005
	.quad	0x3fc9e69ad42c3c9f              # double 0.20235
	.quad	0x3f97ef9db22d0e56              # double 0.023375
	.quad	0x3fdb18fc504816f0              # double 0.4234
	.quad	0x3fe745c358afc47e              # double 0.72726599999999997
	.quad	0x3fee29d1f601797d              # double 0.94260500000000003
	.quad	0x3feacb20fb224aae              # double 0.83729600000000004
	.quad	0x3fdae2ac322291fb              # double 0.42008499999999999
	.quad	0x3fe2c5d851654d62              # double 0.58665100000000003
	.quad	0x3fe26aa4b9884c6a              # double 0.57551799999999997
	.quad	0x3fe146ae3a3a8e71              # double 0.53987799999999997
	.quad	0x3fef9eb851eb851f              # double 0.98812500000000003
	.quad	0x3fe9e1deacc92147              # double 0.80882200000000004
	.quad	0x3fe8b7b07075b3e1              # double 0.77242299999999997
	.quad	0x3fc72f87ad080b67              # double 0.18113799999999999
	.quad	0x3fed4ee9dd7ecbb8              # double 0.915883
	.quad	0x3fcd654d61b2a27f              # double 0.229654
	.quad	0x3fdf26634117f844              # double 0.48671799999999998
	.quad	0x3fdb3d790752da98              # double 0.42562699999999998
	.quad	0x3fdf8b75ea67e847              # double 0.49288700000000002
	.quad	0x3fe80329802c0a4a              # double 0.750386
	.quad	0x3fcd7af640639d5e              # double 0.23031499999999999
	.quad	0x3fb3ba237cdcca71              # double 0.077059000000000002
	.quad	0x3fec36199780baa6              # double 0.88160400000000005
	.quad	0x3fdce18efbb0e5e6              # double 0.45126699999999997
	.quad	0x3fdec77574f722e2              # double 0.48092400000000002
	.quad	0x3fe66c7eae5bc87e              # double 0.70074400000000003
	.quad	0x3fe7b2d905c03361              # double 0.74058199999999996
	.quad	0x3fe12d72ffd1dcd7              # double 0.536798
	.quad	0x3fd663c31df761cc              # double 0.34983900000000001
	.quad	0x3f8a98676a7264a1              # double 0.012985999999999999
	.quad	0x3fe9eae5bc87db2b              # double 0.80992399999999998
	.quad	0x3fdd666234a87e39              # double 0.459374
	.quad	0x3fe443bf727136a4              # double 0.63327
	.quad	0x3fc37de0d66f0cfe              # double 0.152279
	.quad	0x3fed16787ce95fab              # double 0.90899300000000005
	.quad	0x3f813f8db4890929              # double 0.0084220000000000006
	.quad	0x3fe4d9c065b63d3e              # double 0.65158099999999997
	.quad	0x3fe7a4dd2f1a9fbe              # double 0.73887499999999995
	.quad	0x3fe51cd8127b2cc7              # double 0.659771
	.quad	0x3fee217b0f6ad70e              # double 0.94158699999999995
	.quad	0x3fdd06dd69d30271              # double 0.453544
	.quad	0x3fe3ae7d566cf41f              # double 0.61504999999999999
	.quad	0x3fee2ce032db1e9f              # double 0.94297799999999998
	.quad	0x3fd8c7d1bb4916ca              # double 0.38719599999999998
	.quad	0x3fe8fa95c853c148              # double 0.78058899999999998
	.quad	0x3fd9d141a6937d20              # double 0.40339700000000001
	.quad	0x3fc52b90a7829069              # double 0.16539200000000001
	.quad	0x3fed688df37329c3              # double 0.91901299999999997
	.quad	0x3fe61d451fc4c166              # double 0.69107300000000005
	.quad	0x3febb35d249e44fa              # double 0.865645
	.quad	0x3feda5375c8d9f90              # double 0.92641799999999996
	.quad	0x3fe4a0ea5b530ced              # double 0.64464299999999997
	.quad	0x3fd95668c2613900              # double 0.395899
	.quad	0x3fc232b990afe60c              # double 0.14217299999999999
	.quad	0x3fe0eb723ee1bd1f              # double 0.52874100000000002
	.quad	0x3fcf5ddd2ae8e1d6              # double 0.24505199999999999
	.quad	0x3f943fa2ad3e920c              # double 0.019774
	.quad	0x3fb47325918a009f              # double 0.079881999999999995
	.quad	0x3fce99392189bd84              # double 0.23905100000000001
	.quad	0x3fcdf59ccfaeff5c              # double 0.23405799999999999
	.quad	0x3fd181dc0db2702a              # double 0.27355099999999999
	.quad	0x3fe9caf4f0d844d0              # double 0.80602499999999999
	.quad	0x3fc31a005c4651f4              # double 0.149231
	.quad	0x3fe7c3c3a42f1ed1              # double 0.74264699999999995
	.quad	0x3fdcd89ce4a7b4e5              # double 0.45072099999999998
	.quad	0x3fe7b8561d4306e6              # double 0.74125200000000002
	.quad	0x3fe45fc19c17225b              # double 0.63668899999999995
	.quad	0x3fee41615ebfa8f8              # double 0.94548100000000001
	.quad	0x3fe06aee2003ab86              # double 0.51305299999999998
	.quad	0x3fec61f5be5d9e41              # double 0.88695800000000002
	.quad	0x3fea7c84b5dcc63f              # double 0.82769999999999999
	.quad	0x3fe65147f1305964              # double 0.69742199999999999
	.quad	0x3fe933f42352eb5f              # double 0.78759199999999996
	.quad	0x3fdcdd76683c297c              # double 0.451017
	.quad	0x3fc2ffb04ee7c4a0              # double 0.148428
	.quad	0x3fed60b6f9fcb0c0              # double 0.91805599999999998
	.quad	0x3fde248d7e02645e              # double 0.47098099999999998
	.quad	0x3f930a4e379b77c0              # double 0.018593999999999999
	.quad	0x3fafe79ee02a77a3              # double 0.062314000000000001
	.quad	0x3fe137521144cbe2              # double 0.53800300000000001
	.quad	0x3fdb955714b9cb68              # double 0.43098999999999998
	.quad	0x3fe1042b734b5137              # double 0.53175899999999998
	.quad	0x3fd5d15f02c4d65e              # double 0.34090399999999998
	.quad	0x3fd1192641b328b7              # double 0.26716000000000001
	.quad	0x3fdabc382a12f901              # double 0.417738
	.quad	0x3fa07b784662bae0              # double 0.032191999999999998
	.quad	0x3f7aa60913a4f872              # double 0.0065059999999999996
	.quad	0x3fe4919ce075f6fd              # double 0.64277499999999999
	.quad	0x3fed2480e8c8abd6              # double 0.91070600000000002
	.quad	0x3fdc85b5b70691ea              # double 0.44566099999999997
	.quad	0x3fe94dea033e78e2              # double 0.79076100000000005
	.quad	0x3fe717ca2120e1f8              # double 0.72165400000000002
	.quad	0x3fee5eaee2003ab8              # double 0.94905799999999995
	.quad	0x3fe438a3b57c4e2f              # double 0.63191399999999998
	.quad	0x3fe14c55432873bd              # double 0.54056800000000005
	.quad	0x3fd313836a832b99              # double 0.298066
	.quad	0x3fee0bb0a2ca9ac3              # double 0.93892699999999996
	.quad	0x3fe35a038194c016              # double 0.604738
	.quad	0x3fe16b441bb8c32b              # double 0.54434400000000005
	.quad	0x3fd3a4a8c154c986              # double 0.306925
	.quad	0x3fdfa737110e453d              # double 0.49458099999999999
	.quad	0x3fd2f4cf4a558ea8              # double 0.29619200000000001
	.quad	0x3fd380d801b43526              # double 0.30473899999999998
	.quad	0x3fe96aee2003ab86              # double 0.79430299999999998
	.quad	0x3fc349e8815e3971              # double 0.15069299999999999
	.quad	0x3fee4b9a9da597d5              # double 0.94672900000000004
	.quad	0x3fefa69df97aaac1              # double 0.98908899999999999
	.quad	0x3fe0fb9e060fe47a              # double 0.53071500000000005
	.quad	0x3fd6a033e78e1933              # double 0.35352800000000001
	.quad	0x3fef4e22a2c23748              # double 0.97828800000000004
	.quad	0x3fb59c9d5a187a4a              # double 0.084420999999999996
	.quad	0x3fdaddce7cd03537              # double 0.41978799999999999
	.quad	0x3fe5f901083dbc23              # double 0.68664599999999998
	.quad	0x3fb28a6117720c8d              # double 0.072424000000000002
	.quad	0x3fe8f9f666234a88              # double 0.78051300000000001
	.quad	0x3fdb09203a322af5              # double 0.42243199999999997
	.quad	0x3fe3c95e17e34b94              # double 0.61833099999999996
	.quad	0x3fda13fd0d0678c0              # double 0.40747
	.quad	0x3fe8c6fdeb52c9d1              # double 0.77429099999999995
	.quad	0x3fecbf5d78811b1e              # double 0.89836000000000005
	.quad	0x3fef76e82949a565              # double 0.98326499999999994
	.quad	0x3fdab945308bb906              # double 0.41755799999999998
	.quad	0x3fe98bd44998d046              # double 0.798319
	.quad	0x3fca0fc2eba27aea              # double 0.20360600000000001
	.quad	0x3fefe9f4906034f4              # double 0.997309
	.quad	0x3fbcfbfc6540cc79              # double 0.11322
	.quad	0x3fcbb2b3461309c8              # double 0.216391
	.quad	0x3fb0711d798d8a98              # double 0.064226000000000005
	.quad	0x3feb0605681ecd4b              # double 0.84448500000000004
	.quad	0x3fb0817fc7607c42              # double 0.064476000000000006
	.quad	0x3fe7ce831ad2135e              # double 0.74395900000000004
	.quad	0x3fe6676ea4228998              # double 0.70012600000000003
	.quad	0x3fd2c50ce4ead0c4              # double 0.29327700000000001
	.quad	0x3fe06a0ba1f4b1ee              # double 0.51294499999999998
	.quad	0x3fc47f3cf70153bd              # double 0.160133
	.quad	0x3fd34afd5454152b              # double 0.301452
	.quad	0x3fe627f3cf70153c              # double 0.69237700000000002
	.quad	0x3fd0cb6848beb5b3              # double 0.26241500000000001
	.quad	0x3fed086162f166e0              # double 0.90727299999999999
	.quad	0x3fe204be40420f6f              # double 0.563079
	.quad	0x3feceebb341e14be              # double 0.904142
	.quad	0x3fe46045baf533f4              # double 0.63675199999999998
	.quad	0x3fe4d10d38cda6e7              # double 0.65051899999999996
	.quad	0x3fe996a6a012599f              # double 0.79964000000000002
	.quad	0x3fb0d49949e8815e              # double 0.065743999999999997
	.quad	0x3fe11a47a9e2bcf9              # double 0.53445799999999999
	.quad	0x3fe5b3ebbfd71b04              # double 0.67821299999999995
	.quad	0x3fc9a237cdcca70d              # double 0.200263
	.quad	0x3fe4c62c343b70ef              # double 0.64919099999999996
	.quad	0x3fe2a6634117f844              # double 0.58281099999999997
	.quad	0x3fd1e1fc08fa7a85              # double 0.279418
	.quad	0x3fe57d77fae3608d              # double 0.671566
	.quad	0x3fdd8b7a1c25d074              # double 0.46163799999999999
	.quad	0x3fd741dd1a21ea36              # double 0.36339500000000002
	.quad	0x3f98d759ee88df37              # double 0.024258999999999999
	.quad	0x3fcd6a7264a16a48              # double 0.22981099999999999
	.quad	0x3fd3d8a979e16d6e              # double 0.31009900000000001
	.quad	0x3fee58665e02ea96              # double 0.948291
	.quad	0x3fe221c044284dfd              # double 0.56662000000000001
	.quad	0x3fdf4534bd76ee74              # double 0.48859900000000001
	.quad	0x3fd3f3f52fc2656b              # double 0.31176500000000001
	.quad	0x3fd114fce746cb96              # double 0.26690599999999998
	.quad	0x3fe6b0ff10ecb74e              # double 0.70910600000000001
	.quad	0x3fe375bc44bf4cb2              # double 0.60812200000000005
	.quad	0x3fdfcdea033e78e2              # double 0.49694300000000002
	.quad	0x3fedf77292c49342              # double 0.93645599999999996
	.quad	0x3fc8611fd5885d31              # double 0.19046399999999999
	.quad	0x3fd0dd76683c297c              # double 0.263517
	.quad	0x3fdeb90a7829068a              # double 0.48004400000000003
	.quad	0x3fe3119ef954eb14              # double 0.59590100000000001
	.quad	0x3fcde06961c36977              # double 0.23341100000000001
	.quad	0x3f9d3bf2f5558213              # double 0.028549000000000001
	.quad	0x3feb29563a9f383f              # double 0.84879599999999999
	.quad	0x3feed3d859c8c932              # double 0.96335999999999999
	.quad	0x3feb7eda66128390              # double 0.85923499999999997
	.quad	0x3fc4f34d6a161e4f              # double 0.16367499999999999
	.quad	0x3fcfbb62413db7f1              # double 0.24790599999999999
	.quad	0x3f9d0d0678c0053e              # double 0.028369999999999999
	.quad	0x3fe7283b1d0c8041              # double 0.723661
	.quad	0x3f90a45d41fa7653              # double 0.016251999999999999
	.quad	0x3fe0806af46aa088              # double 0.51567600000000002
	.quad	0x3fe248d5c74751ce              # double 0.57139099999999998
	.quad	0x3fc613e3e29307af              # double 0.172482
	.quad	0x3feb0d38cda6e760              # double 0.845364
	.quad	0x3fe8be8ff327aa69              # double 0.773262
	.quad	0x3fd23afb7e90ff97              # double 0.28484999999999999
	.quad	0x3fd1790b84988095              # double 0.27301300000000001
	.quad	0x3fe549c90c4dec1c              # double 0.66525699999999999
	.quad	0x3fecbe7d1351159c              # double 0.89825299999999996
	.quad	0x3fbc6748e4755ffe              # double 0.11095099999999999
	.quad	0x3fee85f28848387e              # double 0.953851
	.quad	0x3fe53d9ec7000432              # double 0.66377200000000003
	.quad	0x3fc3eb5b2d4d4025              # double 0.15562000000000001
	.quad	0x3fe6ea337a80cf9e              # double 0.71608899999999998
	.quad	0x3fd8b29e4d5d80e5              # double 0.38590200000000002
	.quad	0x3fd57e1b8ed1bf7b              # double 0.33582200000000001
	.quad	0x3feadf9bdc69f8c2              # double 0.83979599999999999
	.quad	0x3fdcba51a005c465              # double 0.44887199999999999
	.quad	0x3fe45d63886594af              # double 0.63639999999999997
	.quad	0x3fd443d03968d75a              # double 0.316639
	.quad	0x3fd05ebfa8f7db6e              # double 0.25578299999999998
	.quad	0x3fefbc6eb0b7c350              # double 0.99175199999999997
	.quad	0x3fe746950fc71d60              # double 0.72736599999999996
	.quad	0x3fee08094e5d5b25              # double 0.93848100000000001
	.quad	0x3fef890b417ca212              # double 0.98547899999999999
	.quad	0x3fe5bb906466b1e6              # double 0.67914600000000003
	.quad	0x3fcc6c332f01754b              # double 0.222052
	.quad	0x3fecf442c7fbacb4              # double 0.90481699999999998
	.quad	0x3fdadaceee0f3cb4              # double 0.41960500000000001
	.quad	0x3fb87075b3e1437c              # double 0.095465999999999995
	.quad	0x3fe1b9bed30f062d              # double 0.55392399999999997
	.quad	0x3fc06d2ed783dff4              # double 0.128332
	.quad	0x3fed87dd44135547              # double 0.92283499999999996
	.quad	0x3fc3a43fe5c91d15              # double 0.15345
	.quad	0x3fea7aaac1094a2c              # double 0.82747400000000004
	.quad	0x3fec8e6d15ad106f              # double 0.89238600000000001
	.quad	0x3fe0811f4f50a02c              # double 0.51576200000000005
	.quad	0x3fb384a9478c868c              # double 0.076243000000000005
	.quad	0x3fd9475e6362a5e8              # double 0.39498100000000003
	.quad	0x3fd05892684cf074              # double 0.25540600000000002
	.quad	0x3fe984bc27631b58              # double 0.79745299999999997
	.quad	0x3fedae5ffa3b9ae1              # double 0.92753600000000003
	.quad	0x3fe259e40c8472c1              # double 0.57347300000000001
	.quad	0x3feed7342edbb59e              # double 0.96377000000000002
	.quad	0x3fcad6d3b6cbd988              # double 0.20968100000000001
	.quad	0x3fe4e2174c4cdfad              # double 0.65259900000000004
	.quad	0x3fd5e279dd3bafd9              # double 0.34194799999999997
	.quad	0x3fd35f28848387df              # double 0.30268299999999998
	.quad	0x3fefdb9628cbd124              # double 0.99555499999999996
	.quad	0x3fec91148fd9fd37              # double 0.89271
	.quad	0x3fd113b5bf6a0dbb              # double 0.26682800000000001
	.quad	0x3fe33e0157eed45f              # double 0.60131900000000005
	.quad	0x3fd42cc70867ad8e              # double 0.31523299999999999
	.quad	0x3fda1040bfe3b03e              # double 0.40724199999999999
	.quad	0x3fc9b035bd512ec7              # double 0.20069000000000001
	.quad	0x3fe74d29131ec0b5              # double 0.72816899999999996
	.quad	0x3fe6cdb7ae5796c0              # double 0.71261200000000002
	.quad	0x3fdc317acc4ef88c              # double 0.44052000000000002
	.quad	0x3fe793dd97f62b6b              # double 0.73680000000000001
	.quad	0x3fe112dfd694ccab              # double 0.53355399999999997
	.quad	0x3fca2834d26fa3fd              # double 0.20435200000000001
	.quad	0x3fe8cd834091c087              # double 0.77508699999999997
	.quad	0x3fd54f3ba775fb2f              # double 0.33296100000000001
	.quad	0x3fea5de9c0229a5f              # double 0.82396400000000003
	.quad	0x3fcede2ac3222920              # double 0.24115500000000001
	.quad	0x3fefc213a0c6b485              # double 0.99244100000000001
	.quad	0x3fc3314445aa2e3c              # double 0.14994099999999999
	.quad	0x3fd2d72bcb5fe543              # double 0.29438300000000001
	.quad	0x3fedba9d1f601798              # double 0.92903000000000002
	.quad	0x3fe112cadddf43c8              # double 0.53354400000000002
	.quad	0x3fe70aaeafab53d6              # double 0.72005399999999997
	.quad	0x3fd04e379b77c02b              # double 0.254774
	.quad	0x3fe4818a43bb40b3              # double 0.64081299999999997
	.quad	0x3fc704ee7c49fd7a              # double 0.179838
	.quad	0x3fe22e4d1a650614              # double 0.56815199999999999
	.quad	0x3fe6def8487b99d4              # double 0.71471799999999996
	.quad	0x3fd6e703afb7e910              # double 0.35785
	.quad	0x3fe430a6fc58ab93              # double 0.63093900000000003
	.quad	0x3fd3e70c1333b96b              # double 0.310977
	.quad	0x3f94a98aa8650e78              # double 0.020178000000000001
	.quad	0x3fe0e191148fd9fd              # double 0.52753499999999998
	.quad	0x3fe92917507e9d95              # double 0.78626600000000002
	.quad	0x3feeb43526527a20              # double 0.95949799999999996
	.quad	0x3fe5a2dd7a99fa12              # double 0.67613100000000004
	.quad	0x3fd2ed6fda836eb5              # double 0.295742
	.quad	0x3fde84988094e5d6              # double 0.47684300000000002
	.quad	0x3fecf709b738e6d1              # double 0.90515599999999996
	.quad	0x3fb42070b8cfbfc6              # double 0.078619999999999995
	.quad	0x3fd6aee2003ab863              # double 0.35442400000000002
	.quad	0x3fee1fcf3dc054ef              # double 0.94138299999999997
	.quad	0x3fee3382e44b6e93              # double 0.94378799999999996
	.quad	0x3fe5a51a005c4652              # double 0.67640400000000001
	.quad	0x3fdff383f0bae89f              # double 0.49923800000000002
	.quad	0x3fb336ac647778dd              # double 0.075052999999999995
	.quad	0x3feaa1cac083126f              # double 0.83225000000000005
	.quad	0x3fe6e019b0ab2e17              # double 0.71485600000000005
	.quad	0x3fee418f81e8a2ec              # double 0.94550299999999998
	.quad	0x3fc884b5dcc63f14              # double 0.19155
	.quad	0x3fe66c7c957cd467              # double 0.700743
	.quad	0x3fe5e36f3b213e3e              # double 0.68401299999999998
	.quad	0x3feb08398a654930              # double 0.844754
	.quad	0x3fbfeac42e9899bf              # double 0.124676
	.quad	0x3fe80bda9435ac8a              # double 0.75144699999999998
	.quad	0x3fd41eafee6fb4c4              # double 0.31437300000000001
	.quad	0x3fc59f666234a87e              # double 0.16892699999999999
	.quad	0x3fe53afd976ff3ae              # double 0.66345100000000001
	.quad	0x3fe2c9e8815e3971              # double 0.58714699999999997
	.quad	0x3fe78ad46f587d70              # double 0.73569700000000005
	.quad	0x3fc8cd184c271fff              # double 0.19375899999999999
	.quad	0x3fb7041461b6d43d              # double 0.089906
	.quad	0x3fec4386d2ed783e              # double 0.883243
	.quad	0x3fe9641b328b6d87              # double 0.79347000000000001
	.quad	0x3fe98fd199bb2789              # double 0.79880600000000002
	.quad	0x3fd304ab606b7aa2              # double 0.29715999999999998
	.quad	0x3fdd66e008e9b38d              # double 0.45940399999999998
	.quad	0x3fea3a8e71476af9              # double 0.81964800000000004
	.quad	0x3fdee07e5a78f25a              # double 0.48245199999999999
	.quad	0x3fe4cfd6d7e889c2              # double 0.65037100000000003
	.quad	0x3fc92d4d4024b33e              # double 0.19669500000000001
	.quad	0x3fe7a90470a808c8              # double 0.73938199999999998
	.quad	0x3fe4d3d4280ae105              # double 0.65085800000000005
	.quad	0x3f95c03361565c2d              # double 0.021240999999999999
	.quad	0x3fda76e6106ab14f              # double 0.41350700000000001
	.quad	0x3fc8bd556084a516              # double 0.19327800000000001
	.quad	0x3fd8e44fa05143bf              # double 0.38893499999999998
	.quad	0x3fe186a098915bdd              # double 0.54768399999999995
	.quad	0x3fef3b6aa4b9884c              # double 0.97600299999999995
	.quad	0x3fddc0a4a05dd8f9              # double 0.46488299999999999
	.quad	0x3fb7ae9ab29e4d5e              # double 0.092508000000000006
	.quad	0x3fc3a35d67ba237d              # double 0.153423
	.quad	0x3fd3fa7221858bc6              # double 0.31216100000000002
	.quad	0x3fe4192428d434a0              # double 0.62806899999999999
	.quad	0x3facd035371971c1              # double 0.056276
	.quad	0x3fe182539756c93a              # double 0.54715899999999995
	.quad	0x3fb6a23bff8a8f3b              # double 0.088413000000000005
	.quad	0x3fe7f633ce63a5c2              # double 0.74880400000000003
	.quad	0x3fed7156191148fe              # double 0.92008500000000004
	.quad	0x3fcceebf65dbfceb              # double 0.22603599999999999
	.quad	0x3fc601d5c31593e6              # double 0.171931
	.quad	0x3f7d5d3dc8b86b16              # double 0.007169
	.quad	0x3fe23b9cf9a06a6e              # double 0.56977699999999998
	.quad	0x3fac804102ff8ec1              # double 0.055666
	.quad	0x3fc86234a87e38eb              # double 0.190497
	.quad	0x3fe13d68405b39e2              # double 0.53874599999999995
	.quad	0x3fe5f6922d948dc1              # double 0.68634899999999999
	.quad	0x3fb404534bd76ee7              # double 0.078190999999999997
	.quad	0x3fe84c964628027e              # double 0.75934900000000005
	.quad	0x3fbb419e30014f8b              # double 0.10647
	.quad	0x3fe1e3a7daa4fca4              # double 0.55903999999999998
	.quad	0x3fe3fecfe9b7bf1f              # double 0.62485500000000005
	.quad	0x3fcc47991bc55864              # double 0.22093499999999999
	.quad	0x3fb907c84b5dcc64              # double 0.097775
	.quad	0x3fd32923e5b8561d              # double 0.29938599999999999
	.quad	0x3fddf4a1272c94b4              # double 0.46805600000000003
	.quad	0x3fed56e264e48627              # double 0.916856
	.quad	0x3fe0c60aa64c2f83              # double 0.52417499999999995
	.quad	0x3faf4d594f26aec0              # double 0.061136999999999997
	.quad	0x3fdfc08b75ea67e8              # double 0.49612699999999998
	.quad	0x3fe7afee6fb4c3c2              # double 0.74022600000000005
	.quad	0x3fc84806290eed03              # double 0.18969800000000001
	.quad	0x3fe95a07b352a844              # double 0.79224000000000005
	.quad	0x3fe4260f5e41d4b7              # double 0.62964600000000004
	.quad	0x3fecf45e0b4e11dc              # double 0.90483000000000002
	.quad	0x3fb4b9a9da597d4a              # double 0.080958000000000002
	.quad	0x3fe571e4b44a1f08              # double 0.670153
	.quad	0x3fc47b1c0010c6f8              # double 0.16000700000000001
	.quad	0x3fd5c8711d798d8b              # double 0.34035900000000002
	.quad	0x3fd428cbd1244a62              # double 0.31498999999999999
	.quad	0x3fef5703f2d3c793              # double 0.97937200000000002
	.quad	0x3fe3cea28fe260b3              # double 0.61897400000000002
	.quad	0x3fe5f96e158750c2              # double 0.68669800000000003
	.quad	0x3fe78e15011904b4              # double 0.73609400000000003
	.quad	0x3fe1eeac8605681f              # double 0.56038500000000002
	.quad	0x3fdb934acaff6d33              # double 0.430865
	.quad	0x3fe18d2c386d2ed8              # double 0.54848300000000005
	.quad	0x3fdee3e6c4c5974e              # double 0.48265999999999998
	.quad	0x3fe3463f141205bc              # double 0.602325
	.quad	0x3fea07fed20296b3              # double 0.81347599999999998
	.quad	0x3fe2b0fadf2ecf20              # double 0.58410399999999996
	.quad	0x3fe365b63d3e4ef0              # double 0.60616599999999998
	.quad	0x3fe1290470a808c8              # double 0.53625699999999998
	.quad	0x3fb562bf11f926c8              # double 0.083538000000000001
	.quad	0x3fe6817b95a29414              # double 0.70330599999999999
	.quad	0x3fd49ab6d00b45ae              # double 0.32194299999999998
	.quad	0x3fde5e2cdc011d36              # double 0.47449799999999998
	.quad	0x3fe20917d6b65a9b              # double 0.56361000000000006
	.quad	0x3fe5ff38c5436b90              # double 0.68740500000000004
	.quad	0x3fde9984a0e410b6              # double 0.47811999999999999
	.quad	0x3fe61a9da597d49d              # double 0.69074899999999995
	.quad	0x3fe7beec39799e52              # double 0.74205600000000005
	.quad	0x3fe5936c58eeae9f              # double 0.67424600000000001
	.quad	0x3fb07e38eb0318b9              # double 0.064425999999999997
	.quad	0x3fe2e9ca9ef5232d              # double 0.59103899999999998
	.quad	0x3fe1f865d7cb2d90              # double 0.56157199999999996
	.quad	0x3fe14c3e3193f6c2              # double 0.54055699999999995
	.quad	0x3fe82c1b10fd7e46              # double 0.75538400000000006
	.quad	0x3fde73d188f42fe8              # double 0.47581899999999999
	.quad	0x3fc18c7e28240b78              # double 0.1371
	.quad	0x3fec9754b05b7cfe              # double 0.89347299999999996
	.quad	0x3fc8771c970f7b9e              # double 0.191135
	.quad	0x3fbe39b456b441bc              # double 0.11806800000000001
	.quad	0x3fc4e8af81626b2f              # double 0.163351
	.quad	0x3fd10f51ac9afe1e              # double 0.26656000000000002
	.quad	0x3fbfc3c5bd0e12e8              # double 0.124081
	.quad	0x3fccc575c0767d35              # double 0.224776
	.quad	0x3fca379314445aa3              # double 0.204821
	.quad	0x3fe6b6da87a072d2              # double 0.70982100000000004
	.quad	0x3fc3db4cc2507208              # double 0.15512999999999999
	.quad	0x3fdc299d883ba344              # double 0.44003999999999999
	.quad	0x3feae757928e0c9e              # double 0.84074000000000004
	.quad	0x3fe51e7d9988d2a2              # double 0.659972
	.quad	0x3fc0787485e3da30              # double 0.12867600000000001
	.quad	0x3fe0795d4e8fb00c              # double 0.51481500000000002
	.quad	0x3fc6cb8e086bdf4c              # double 0.178087
	.quad	0x3fd9a797891e2153              # double 0.40085399999999999
	.quad	0x3fb0a2339c0ebee0              # double 0.064975000000000005
	.quad	0x3fe1472e275ab7dc              # double 0.53993899999999995
	.quad	0x3fe47d4e09784ec6              # double 0.64029599999999998
	.quad	0x3fd9aac96cc5fbf8              # double 0.40104899999999999
	.quad	0x3fd79185cee17a03              # double 0.368257
	.quad	0x3fefc17225b749ae              # double 0.99236400000000002
	.quad	0x3fd124fa8b4bf8fd              # double 0.26788200000000001
	.quad	0x3fc63e5b8561d430              # double 0.17377799999999999
	.quad	0x3fe83a7fc32ebe59              # double 0.75714099999999995
	.quad	0x3fc7cd466f5019f4              # double 0.18595200000000001
	.quad	0x3fe4f5e6362a5e78              # double 0.65501699999999996
	.quad	0x3fd35e071c53f39d              # double 0.30261399999999999
	.quad	0x3fd06c00da1a9329              # double 0.25659199999999999
	.quad	0x3fe6de19fc2a886a              # double 0.71461200000000002
	.quad	0x3faaa582dbe7f2c3              # double 0.052044
	.quad	0x3fe167ba237cdcca              # double 0.54391199999999995
	.quad	0x3fa0c3d25247cb71              # double 0.032744000000000002
	.quad	0x3fd635158b827fa2              # double 0.34699000000000002
	.quad	0x3fd881e03f705858              # double 0.38292700000000002
	.quad	0x3fecef459d99029b              # double 0.90420800000000001
	.quad	0x3fbbcac8e68e3ef3              # double 0.10856300000000001
	.quad	0x3fdcdf5cf2495e18              # double 0.45113300000000001
	.quad	0x3fe2827b6fe2e6eb              # double 0.57842800000000005
	.quad	0x3fdac8e25c810a57              # double 0.41851100000000002
	.quad	0x3fdb6eb4e981387a              # double 0.42863200000000001
	.quad	0x3fe9e501e2584f4c              # double 0.80920499999999995
	.quad	0x3fef13cee9dd7ecc              # double 0.97116800000000003
	.quad	0x3fe6ee221c8a7a42              # double 0.71656900000000001
	.quad	0x3fb01a8ac5c13fd1              # double 0.062905000000000003
	.quad	0x3fb6e7d566cf41f2              # double 0.089474999999999998
	.quad	0x3feff9e9d0e991ff              # double 0.99925699999999995
	.quad	0x3fd7c9f2fdb8fde3              # double 0.371701
	.quad	0x3fb6706d50657321              # double 0.087652999999999995
	.quad	0x3fe6c05b39e279dd              # double 0.71098099999999997
	.quad	0x3fd78e2e2b8c75c5              # double 0.36805300000000002
	.quad	0x3fd02af5771001d6              # double 0.25262200000000001
	.quad	0x3fee525460aa64c3              # double 0.94755
	.quad	0x3fd2f08893b7d849              # double 0.295931
	.quad	0x3faf559b3d07c84b              # double 0.061199999999999997
	.quad	0x3fe3beb7cbb3c819              # double 0.617031
	.quad	0x3fc321b3aeee9574              # double 0.14946599999999999
	.quad	0x3fc96672fba01eef              # double 0.198439
	.quad	0x3fc3d7e45803cd14              # double 0.155026
	.quad	0x3fec7faa044ae85c              # double 0.89058400000000004
	.quad	0x3fe9f1b25f633ce6              # double 0.81075399999999997
	.quad	0x3fe8b2fa93af74cd              # double 0.77184799999999998
	.quad	0x3fe938bac710cb29              # double 0.78817499999999996
	.quad	0x3fdfce52deca2553              # double 0.49696800000000002
	.quad	0x3fde04d983947497              # double 0.46904600000000002
	.quad	0x3fed001d5c31593e              # double 0.90626399999999996
	.quad	0x3facf4a558ea7ce1              # double 0.056554
	.quad	0x3fe017ce52deca25              # double 0.50290599999999996
	.quad	0x3fe14fd6d7e889c2              # double 0.54099600000000003
	.quad	0x3feb7ed84d338f7a              # double 0.85923400000000005
	.quad	0x3fe7158750c1b973              # double 0.72137799999999996
	.quad	0x3fdd93682730c671              # double 0.46212199999999998
	.quad	0x3fdb2d5e071c53f4              # double 0.42464400000000002
	.quad	0x3fe625269595feda              # double 0.69203499999999996
	.quad	0x3fe0805814940bbb              # double 0.51566699999999999
	.quad	0x3fadb4edb2f661f2              # double 0.058021000000000003
	.quad	0x3fe7b8327674d163              # double 0.74123499999999998
	.quad	0x3fd3dcebfec13b9f              # double 0.310359
	.quad	0x3fecfa398201cd60              # double 0.90554500000000004
	.quad	0x3fedb46dc5d63886              # double 0.92827499999999996
	.quad	0x3fe6897635e7429a              # double 0.70428000000000002
	.quad	0x3fef95a294141e9b              # double 0.987016
	.quad	0x3fed0ff759685122              # double 0.90819899999999998
	.quad	0x3fde5f9df548ecd9              # double 0.47458600000000001
	.quad	0x3fe38d9513f8db49              # double 0.61103300000000005
	.quad	0x3fd9a4acf312b1b3              # double 0.40067599999999998
	.quad	0x3fb20b3d4ae429e1              # double 0.070484000000000005
	.quad	0x3fe980d1b71758e2              # double 0.79697499999999999
	.quad	0x3fd910a99b6f5caf              # double 0.39164199999999999
	.quad	0x3faaa92e62131a8f              # double 0.052072
	.quad	0x3fce30caa326e115              # double 0.23586399999999999
	.quad	0x3fd9d3d859c8c932              # double 0.403555
	.quad	0x3fdb7903211cb03a              # double 0.429261
	.quad	0x3fd0d2d44dca8e2e              # double 0.26286799999999999
	.quad	0x3fec8b71b8aa0019              # double 0.89202199999999998
	.quad	0x3fee6a1c68ec52a4              # double 0.95045299999999999
	.quad	0x3fc0b4b72c5197a2              # double 0.13051499999999999
	.quad	0x3fe7d1dabe27179c              # double 0.744367
	.quad	0x3fd5566cf41f212d              # double 0.33339999999999997
	.quad	0x3fe3f75968512232              # double 0.62394400000000005
	.quad	0x3fed3d2fa0d77b7c              # double 0.91371899999999994
	.quad	0x3fe4a085b18548aa              # double 0.64459500000000003
	.quad	0x3fdc6195464dc22b              # double 0.44345600000000002
	.quad	0x3fdffa6defc7a398              # double 0.49965999999999999
	.quad	0x3fc48323358f2e06              # double 0.16025200000000001
	.quad	0x3fb4330d7386099a              # double 0.078904000000000001
	.quad	0x3fd7845132f87ad1              # double 0.36745100000000003
	.quad	0x3fe35206c8711d7a              # double 0.60376300000000005
	.quad	0x3fdcfd08d4bad7d8              # double 0.45294400000000001
	.quad	0x3fe7149a5657fb6a              # double 0.72126500000000004
	.quad	0x3fe83f2b239a38fc              # double 0.75771100000000002
	.quad	0x3fe09f3a57eaa2a1              # double 0.51943700000000004
	.quad	0x3fd377f6b1a2a4db              # double 0.304197
	.quad	0x3fea7a52ac753e70              # double 0.82743199999999995
	.quad	0x3fe79680e0653006              # double 0.73712200000000005
	.quad	0x3fe7682b62845996              # double 0.73146599999999995
	.quad	0x3fa8e0221426fe72              # double 0.048585000000000003
	.quad	0x3fcf1f79420b3d4b              # double 0.243148
	.quad	0x3fec0ecb74ddf86e              # double 0.87680599999999997
	.quad	0x3fd9d65e4606748e              # double 0.40370899999999998
	.quad	0x3fe3dc22ab25b318              # double 0.62062200000000001
	.quad	0x3fd50e8858ff7597              # double 0.32901200000000003
	.quad	0x3fe2620ee8d10f52              # double 0.57447000000000004
	.quad	0x3fe963d816aceaaf              # double 0.79343799999999998
	.quad	0x3feeb024f6598e11              # double 0.95900200000000002
	.quad	0x3fe5b2c83ec892ab              # double 0.67807399999999995
	.quad	0x3fc1296f6512a950              # double 0.134077
	.quad	0x3fe4016aceaaf35e              # double 0.62517299999999998
	.quad	0x3fcfd851654d61b3              # double 0.24878900000000001
	.quad	0x3fca95bff04577d9              # double 0.20769499999999999
	.quad	0x3fe2bcbc48f10a9a              # double 0.58553900000000003
	.quad	0x3fef356323bbc6eb              # double 0.97526699999999999
	.quad	0x3fa2bb01c92ddbdb              # double 0.036582999999999997
	.quad	0x3fe3849ecb31c21a              # double 0.60993900000000001
	.quad	0x3fe2c98c3b0c4589              # double 0.58710300000000004
	.quad	0x3fe1767d34df04de              # double 0.54571400000000003
	.quad	0x3fc5c4e2f37fbefd              # double 0.170071
	.quad	0x3fb44a9478c868ba              # double 0.079263
	.quad	0x3fec984e3ffef391              # double 0.89359200000000005
	.quad	0x3fefe43675ddd2af              # double 0.99660800000000004
	.quad	0x3fd9271fff79c843              # double 0.393013
	.quad	0x3fbaa9b499d0203e              # double 0.10415199999999999
	.quad	0x3fed88c1db0142f6              # double 0.92294399999999999
	.quad	0x3fb869a4df47f994              # double 0.095362000000000002
	.quad	0x3fe6dc0980b24207              # double 0.71435999999999999
	.quad	0x3fd51b4784230fd0              # double 0.32979000000000003
	.quad	0x3fee1ffb480a5acd              # double 0.94140400000000002
	.quad	0x3fe24dcca70d1fa3              # double 0.57199699999999998
	.quad	0x3fea13f290abb44e              # double 0.81493499999999996
	.quad	0x3f7a3b14a90470a8              # double 0.006404
	.quad	0x3fdd2817763e4abe              # double 0.45557199999999998
	.quad	0x3fd62c40d0aaa7df              # double 0.34645100000000001
	.quad	0x3fe66cdaf4adbc66              # double 0.70078799999999997
	.quad	0x3fb2962cfd8f0c78              # double 0.072604000000000002
	.quad	0x3fcab4aec8d5c747              # double 0.20863899999999999
	.quad	0x3fe23f811f4f50a0              # double 0.57025199999999998
	.quad	0x3fd96188b11409a2              # double 0.39657799999999999
	.quad	0x3fe01ea57214f052              # double 0.50374099999999999
	.quad	0x3fdaf6273929ed39              # double 0.42127399999999998
	.quad	0x3feed0507a6bd6e9              # double 0.96292900000000003
	.quad	0x3feb9320d9945b6c              # double 0.86170999999999997
	.quad	0x3fb73a4723aafff3              # double 0.090732999999999994
	.quad	0x3fe9f78dd616f86a              # double 0.811469
	.quad	0x3fe1acd7cf5f4e44              # double 0.55234899999999998
	.quad	0x3fde5350092ccf6c              # double 0.47383500000000001
	.quad	0x3fde418d6909aed5              # double 0.47275099999999998
	.quad	0x3fb328522ea0fd3b              # double 0.074833999999999998
	.quad	0x3faf4cf4a558ea7d              # double 0.061134000000000001
	.quad	0x3fed0bef8ceb356e              # double 0.90770700000000004
	.quad	0x3fda9dc2f405f6ba              # double 0.415879
	.quad	0x3feddee34fc610f1              # double 0.93345800000000001
	.quad	0x3fda9cbee807bbb6              # double 0.41581699999999999
	.quad	0x3feae96a26e54717              # double 0.84099299999999999
	.quad	0x3fc10ad46f587d70              # double 0.13314300000000001
	.quad	0x3fe0a70f3882278d              # double 0.52039299999999999
	.quad	0x3feaa7c9de050375              # double 0.832982
	.quad	0x3fd21e6cd29131ec              # double 0.283107
	.quad	0x3fd933ebbfd71b04              # double 0.39379399999999998
	.quad	0x3fe06a055757d5aa              # double 0.51294200000000001
	.quad	0x3fdb973d9ec70004              # double 0.43110599999999999
	.quad	0x3feb6598e10cf5b2              # double 0.85615200000000002
	.quad	0x3feba9ac36544fe3              # double 0.86446199999999995
	.quad	0x3fdec08b75ea67e8              # double 0.48050199999999998
	.quad	0x3fdfd8d79d0a6762              # double 0.49761
	.quad	0x3fe7788db0574b40              # double 0.73346599999999995
	.quad	0x3f7ba1b1960fa15e              # double 0.0067460000000000003
	.quad	0x3fcb88db0574b407              # double 0.215114
	.quad	0x3fe2792af9a8cdea              # double 0.577291
	.quad	0x3fef46b8b69552e3              # double 0.977383
	.quad	0x3fc049ba5e353f7d              # double 0.12725
	.quad	0x3feaec17ebaf1023              # double 0.84131999999999996
	.quad	0x3fef3c9cd3e0bd45              # double 0.97614900000000004
	.quad	0x3fe0f44d44567126              # double 0.52982200000000002
	.quad	0x3f6cd5f99c38b04b              # double 0.0035200000000000001
	.quad	0x3fe4f314ca925fe9              # double 0.65467299999999995
	.quad	0x3fd67496aad1d042              # double 0.35086600000000001
	.quad	0x3fd4ef30a4e379b7              # double 0.32709899999999997
	.quad	0x3fc1def8487b99d4              # double 0.13961699999999999
	.quad	0x3fcc1adea897635e              # double 0.21956999999999999
	.quad	0x3fc47631b584b1ab              # double 0.159857
	.quad	0x3fef221a719b4dcf              # double 0.97291300000000002
	.quad	0x3fe7e2d40aaeafab              # double 0.74643899999999996
	.quad	0x3fe3ff3ade225fa6              # double 0.62490599999999996
	.quad	0x3fd6abda0dfdef85              # double 0.35423900000000003
	.quad	0x3febc80e8c8abd5e              # double 0.86817100000000003
	.quad	0x3fec3456b441bb8c              # double 0.88138899999999997
	.quad	0x3fb40cd855970b4a              # double 0.078321000000000001
	.quad	0x3fbe5a14488c60cc              # double 0.118562
	.quad	0x3fd6fc1df3300de5              # double 0.35913800000000001
	.quad	0x3fee531db445ed4a              # double 0.94764599999999999
	.quad	0x3fe30d36b4c7f349              # double 0.59536299999999998
	.quad	0x3fe83293d102bc73              # double 0.75617400000000001
	.quad	0x3fcc4894c447c30d              # double 0.22096499999999999
	.quad	0x3fea9157abb8800f              # double 0.83024200000000004
	.quad	0x3fdd944ed6fda837              # double 0.462177
	.quad	0x3f9c486ad2dcb146              # double 0.027619999999999999
	.quad	0x3feddfb0d51f81a6              # double 0.93355600000000005
	.quad	0x3feb761aa3f034b1              # double 0.85816700000000001
	.quad	0x3fa808c8259e1f3a              # double 0.046941999999999998
	.quad	0x3fec082cf52b90a8              # double 0.87599800000000005
	.quad	0x3fe3c96ededaec4a              # double 0.61833899999999997
	.quad	0x3f78b3f63c31df76              # double 0.0060309999999999999
	.quad	0x3fc072085b18548b              # double 0.12848000000000001
	.quad	0x3fe4221ea35935fc              # double 0.62916499999999997
	.quad	0x3feab25d4a5df224              # double 0.83427300000000004
	.quad	0x3fc4f9fcb0c026cc              # double 0.163879
	.quad	0x3fdd605ee568a505              # double 0.459007
	.quad	0x3fc0461f9f01b867              # double 0.12714
	.quad	0x3fd859b3d07c84b6              # double 0.38047500000000001
	.quad	0x3fb3b9cf9a06a6e3              # double 0.077053999999999997
	.quad	0x3fc5463497b7414a              # double 0.16620499999999999
	.quad	0x3fe3098b2e9ccb7d              # double 0.59491499999999997
	.quad	0x3fe66573215fcc18              # double 0.69988399999999995
	.quad	0x3fe1f34b51372a39              # double 0.56094900000000003
	.quad	0x3fe25b37c99ae925              # double 0.57363500000000001
	.quad	0x3fc645fe111276fb              # double 0.174011
	.quad	0x3feeebd4cfd08d4c              # double 0.96628800000000003
	.quad	0x3fe726266fd651b1              # double 0.72340700000000002
	.quad	0x3fb967caea747d80              # double 0.099239999999999994
	.quad	0x3fc59496249a133c              # double 0.168597
	.quad	0x3fe7a856605ee569              # double 0.73929900000000004
	.quad	0x3fd9f1455219a848              # double 0.40535100000000002
	.quad	0x3fef89f83be6601c              # double 0.98559200000000002
	.quad	0x3f90470a808c825a              # double 0.015896
	.quad	0x3fc1ef0f16f4384c              # double 0.14010800000000001
	.quad	0x3fe98a71de69ad43              # double 0.79815000000000003
	.quad	0x3fc6c4a4095f2453              # double 0.17787600000000001
	.quad	0x3fdf2428d434a01b              # double 0.48658200000000001
	.quad	0x3fd2e5929670196e              # double 0.29526200000000002
	.quad	0x3fe6024b33daf8df              # double 0.68777999999999995
	.quad	0x3fe5bd76ee73e682              # double 0.67937800000000004
	.quad	0x3fccf25a250f8402              # double 0.22614600000000001
	.quad	0x3fe7a2ee41919ac8              # double 0.73863900000000005
	.quad	0x3fe7a3d4f15e7c8d              # double 0.73874899999999999
	.quad	0x3feccb1897a67a53              # double 0.89979200000000004
	.quad	0x3fd5059ea57214f0              # double 0.32846799999999998
	.quad	0x3fd12474538ef34d              # double 0.26784999999999998
	.quad	0x3fdf0902de00d1b7              # double 0.48492499999999999
	.quad	0x3fe79148fd9fd36f              # double 0.73648499999999995
	.quad	0x3fe732fec56d5cfb              # double 0.72497500000000004
	.quad	0x3fe78431bde82d7b              # double 0.73488699999999996
	.quad	0x3fee7e5eaab04253              # double 0.95292600000000005
	.quad	0x3fb5ce6c093d9664              # double 0.085181000000000007
	.quad	0x3fd54751ce28ed5f              # double 0.332478
	.quad	0x3fe2ede76427c7c5              # double 0.59154099999999998
	.quad	0x3faa8c36da87a073              # double 0.051851000000000001
	.quad	0x3fe8140357a35504              # double 0.75244299999999997
	.quad	0x3fd844567125dd09              # double 0.37917099999999998
	.quad	0x3fbf73083558a761              # double 0.122849
	.quad	0x3fd40f3cb3e5753a              # double 0.31342999999999999
	.quad	0x3fe14f2064239607              # double 0.54090899999999997
	.quad	0x3fe7fc9bc7714339              # double 0.74958599999999997
	.quad	0x3fe0dcbddb9841ab              # double 0.52694600000000003
	.quad	0x3fd874b838c111ae              # double 0.38212400000000002
	.quad	0x3fd9167ec7863bef              # double 0.39199800000000001
	.quad	0x3fd697c3d68405b4              # double 0.35301300000000002
	.quad	0x3fe8c62a1b5c7cd9              # double 0.77419000000000004
	.quad	0x3fc6f3a9b0681238              # double 0.179311
	.quad	0x3fee2b21815a07b3              # double 0.94276499999999996
	.quad	0x3fedb4c1a8ac5c14              # double 0.928315
	.quad	0x3fe7c61522a6f3f5              # double 0.74292999999999998
	.quad	0x3febca83b1d0c804              # double 0.86847099999999999
	.quad	0x3fb0561d4306e5cd              # double 0.063813999999999996
	.quad	0x3fe24f95d4e8fb01              # double 0.57221500000000003
	.quad	0x3fe590e0221426fe              # double 0.67393499999999995
	.quad	0x3fc16073de1e2de8              # double 0.13575599999999999
	.quad	0x3fd0dae3e6c4c597              # double 0.26335999999999998
	.quad	0x3fe085a921ccd962              # double 0.516316
	.quad	0x3f96fa3fcc9ea9a4              # double 0.022439000000000001
	.quad	0x3fe6e40852b4d8ba              # double 0.71533599999999997
	.quad	0x3fe8af87ad080b67              # double 0.77142699999999997
	.quad	0x3fe85e41d4b6a61a              # double 0.76150600000000002
	.quad	0x3fdcbbf50e347629              # double 0.44897199999999998
	.quad	0x3fc2759253543aeb              # double 0.14421300000000001
	.quad	0x3fd9da597d49d7ba              # double 0.40395199999999998
	.quad	0x3fef74384ba0e842              # double 0.98293699999999995
	.quad	0x3fe8263b688bda94              # double 0.75466699999999997
	.quad	0x3fc70c6f7a0b5ed9              # double 0.180067
	.quad	0x3fd802ababead4f6              # double 0.37516300000000002
	.quad	0x3fdef2d7f950b956              # double 0.483572
	.quad	0x3fc9c49774256bca              # double 0.20131199999999999
	.quad	0x3fe290e8858ff759              # double 0.58018899999999995
	.quad	0x3fc30a915379fa98              # double 0.14876
	.quad	0x3fdcc8eabffcdab2              # double 0.44976300000000002
	.quad	0x3fe51351159c4977              # double 0.65860799999999997
	.quad	0x3fe4c22ee41919ac              # double 0.64870399999999995
	.quad	0x3fe94a7b4e54f7a9              # double 0.79034199999999999
	.quad	0x3fc634ca0c282c6f              # double 0.173486
	.quad	0x3fe4e1a8262456f7              # double 0.65254599999999996
	.quad	0x3fefd1b93037d630              # double 0.99435099999999998
	.quad	0x3fdd9c0ebedfa440              # double 0.46265000000000001
	.quad	0x3fe143b4f6167232              # double 0.53951499999999997
	.quad	0x3fd1be1a8262456f              # double 0.27722799999999997
	.quad	0x3fd536a832b990b0              # double 0.33146100000000001
	.quad	0x3fe3b8d3f1843c3a              # double 0.61631199999999997
	.quad	0x3fc30f5a1016ce79              # double 0.14890600000000001
	.quad	0x3fd3549f94855da2              # double 0.30203999999999998
	.quad	0x3fe6ecaab8a5ce5b              # double 0.71638999999999997
	.quad	0x3fd036694898f606              # double 0.25332100000000002
	.quad	0x3fe0041248d7e026              # double 0.50049699999999997
	.quad	0x3fe6126634117f84              # double 0.68974599999999997
	.quad	0x3fe9bdddb1209edc              # double 0.804427
	.quad	0x3fd5fd976ff3ade2              # double 0.34360299999999999
	.quad	0x3fdb95feda661284              # double 0.43103000000000002
	.quad	0x3fe7e75bc44bf4cb              # double 0.74699199999999999
	.quad	0x3fd63ac929aa1d75              # double 0.34733799999999998
	.quad	0x3fe0f0cfe154434e              # double 0.52939599999999998
	.quad	0x3f936cdf266ba494              # double 0.018970000000000001
	.quad	0x3fe56daa92e62132              # double 0.66963700000000004
	.quad	0x3feb03c8e25c810a              # double 0.84421199999999996
	.quad	0x3fd310ba6266fd65              # double 0.29789599999999999
	.quad	0x3fec08333fc86cec              # double 0.87600100000000002
	.quad	0x3feb0624dd2f1aa0              # double 0.84450000000000002
	.quad	0x3fe1c0bbb1f255f3              # double 0.55477699999999996
	.quad	0x3feee86e7e62dc6e              # double 0.96587299999999998
	.quad	0x3fde54a3c64345d0              # double 0.473916
	.quad	0x3fe5c7735c182ecb              # double 0.68059700000000001
	.quad	0x3feb52f1a9fbe76d              # double 0.85387500000000005
	.quad	0x3fc3294573a79789              # double 0.149697
	.quad	0x3fe64cd74927913f              # double 0.69688000000000005
	.quad	0x3fafa89331a08bfc              # double 0.061832999999999999
	.quad	0x3fea01083dbc2331              # double 0.81262599999999996
	.quad	0x3fe559d12cadddf4              # double 0.66721399999999997
	.quad	0x3fe513faf42784a9              # double 0.65868899999999997
	.quad	0x3fea5bc44bf4cb19              # double 0.82370200000000005
	.quad	0x3fc11a6d698fe692              # double 0.13361899999999999
	.quad	0x3fce71bcdbbe0158              # double 0.237846
	.quad	0x3fe25b8fde2ef4e0              # double 0.57367699999999999
	.quad	0x3fec092253111f0c              # double 0.87611499999999997
	.quad	0x3fead4d834091c08              # double 0.83848199999999995
	.quad	0x3fe297fa5d28d003              # double 0.58105200000000001
	.quad	0x3fecb9dc2f405f6c              # double 0.89768800000000004
	.quad	0x3fdf45f5ad96a6a0              # double 0.488645
	.quad	0x3fab37eb28d8665e              # double 0.053161
	.quad	0x3fe4cd2f5dbb9cfa              # double 0.65004700000000004
	.quad	0x3fc565cb35f3d7d4              # double 0.16716900000000001
	.quad	0x3fd5fcc9ea9a3d2e              # double 0.34355400000000003
	.quad	0x3fe977b7c7820a31              # double 0.79586400000000002
	.quad	0x3fd6528283d35eb7              # double 0.34878599999999998
	.quad	0x3fd3718a86d71f36              # double 0.30380499999999999
	.quad	0x3fe072f33ca31e7e              # double 0.51403200000000004
	.quad	0x3feb357a355043e5              # double 0.85027799999999998
	.quad	0x3fb76db940fecdd1              # double 0.091518000000000002
	.quad	0x3fbd9c6b05319829              # double 0.11566800000000001
	.quad	0x3fdbfa26a22b3893              # double 0.437143
	.quad	0x3fa94445aa2e3c53              # double 0.049348999999999997
	.quad	0x3fd70318b9346994              # double 0.35956399999999999
	.quad	0x3fe1a7c9de050375              # double 0.551732
	.quad	0x3fc77b07075b3e14              # double 0.18344199999999999
	.quad	0x3fefa9a5ebb7739f              # double 0.98945899999999997
	.quad	0x3fee3841248d7e02              # double 0.94436699999999996
	.quad	0x3feb877036c9c0a9              # double 0.86028300000000002
	.quad	0x3faca5375c8d9f90              # double 0.055947999999999998
	.quad	0x3feb5c0980b24207              # double 0.85498499999999999
	.quad	0x3fb8e9d51b4fe79f              # double 0.097318000000000002
	.quad	0x3fb34aec8d5c7475              # double 0.075361999999999998
	.quad	0x3fbdf7b5aea3161a              # double 0.117061
	.quad	0x3fe5aa79bbadc098              # double 0.67706
	.quad	0x3fd055f3519bd406              # double 0.25524599999999997
	.quad	0x3fd8413122b7baed              # double 0.37897900000000001
	.quad	0x3fc43f24d8fd5cb8              # double 0.15817700000000001
	.quad	0x3fe6995464dc22ab              # double 0.70621699999999998
	.quad	0x3fe201626b2f2303              # double 0.56266899999999997
	.quad	0x3fe07c86cebbba56              # double 0.51520100000000002
	.quad	0x3fd1b3b7521144cc              # double 0.27659400000000001
	.quad	0x3fe9242d05f28848              # double 0.78566599999999998
	.quad	0x3f7352220bc382a1              # double 0.0047169999999999998
	.quad	0x3fa33c3e74afd545              # double 0.037568999999999998
	.quad	0x3feef35c182ecaef              # double 0.96720700000000003
	.quad	0x3fdfe785b5b70692              # double 0.498506
	.quad	0x3fb9f91600f34507              # double 0.10145700000000001
	.quad	0x3fdc802c0a4a05de              # double 0.44532300000000002
	.quad	0x3fcbe553ac4f7ec3              # double 0.21793599999999999
	.quad	0x3fab777d0f1f57b4              # double 0.053645999999999999
	.quad	0x3fd5be553ac4f7ec              # double 0.33974199999999999
	.quad	0x3fe6eefc371da37f              # double 0.716673
	.quad	0x3fd2928e0c9d9d34              # double 0.29019499999999998
	.quad	0x3fe5aeb1c432ca58              # double 0.67757500000000004
	.quad	0x3fe2bc36113404ea              # double 0.58547499999999997
	.quad	0x3fe4c7bedb7281fe              # double 0.64938300000000004
	.quad	0x3fe905ad538ac190              # double 0.78194300000000005
	.quad	0x3fe08c21e1d2178f              # double 0.51710599999999995
	.quad	0x3fe867c06e19b90f              # double 0.76266500000000004
	.quad	0x3fe9c4ed6fda836f              # double 0.80528900000000003
	.quad	0x3fe098d477bbf940              # double 0.51865600000000001
	.quad	0x3fe5e9d94d0dcfcc              # double 0.68479599999999996
	.quad	0x3fdd1733226c3b92              # double 0.45454099999999997
	.quad	0x3feba81ba7fc32ec              # double 0.86427100000000001
	.quad	0x3fd5ca29845dc832              # double 0.34046399999999999
	.quad	0x3fedba7546d3f9e8              # double 0.92901100000000003
	.quad	0x3fe32afff36ac647              # double 0.59899899999999995
	.quad	0x3fc1d851654d61b3              # double 0.13941400000000001
	.quad	0x3fde9cf13cee9dd8              # double 0.478329
	.quad	0x3fe7dc5f7c6759ab              # double 0.74565099999999995
	.quad	0x3fe67b07075b3e14              # double 0.70251799999999998
	.quad	0x3fee80f98fa37692              # double 0.95324399999999998
	.quad	0x3fc4921ccd962068              # double 0.16070899999999999
	.quad	0x3fa6c0b5675579af              # double 0.044438999999999999
	.quad	0x3fe1f1e8e6080735              # double 0.56077999999999995
	.quad	0x3fe129e0a41a261c              # double 0.53636200000000001
	.quad	0x3fe81f0e4da09cc3              # double 0.75379099999999999
	.quad	0x3feab6bf444e0daa              # double 0.83480799999999999
	.quad	0x3fb61e2de8709742              # double 0.086398000000000002
	.quad	0x3fe6b621fafc8b00              # double 0.70973299999999995
	.quad	0x3fe01f79420b3d4b              # double 0.50384200000000001
	.quad	0x3f823c42a66dbd73              # double 0.0089040000000000004
	.quad	0x3fd2465625a682b6              # double 0.28554299999999999
	.quad	0x3fe9cac4b4d056c5              # double 0.806002
	.quad	0x3fe0248301a79fed              # double 0.50445700000000004
	.quad	0x3fc79b456b441bb9              # double 0.18442600000000001
	.quad	0x3feb55fbb517a461              # double 0.85424599999999995
	.quad	0x3fc7b96af038e2a0              # double 0.18534600000000001
	.quad	0x3fdf2a7bd48cb4af              # double 0.48696800000000001
	.quad	0x3fe80df37329c348              # double 0.75170300000000001
	.quad	0x3f9f55de58e64b23              # double 0.030601
	.quad	0x3fe6f7dd872f33ca              # double 0.71775699999999998
	.quad	0x3fdd7329c347e8cd              # double 0.46015400000000001
	.quad	0x3fe241d084e831ad              # double 0.57053399999999999
	.quad	0x3fc3355cd91eeaa7              # double 0.150066
	.quad	0x3fe3c6b26bf8769f              # double 0.61800500000000003
	.quad	0x3feddb4245f5ad97              # double 0.93301500000000004
	.quad	0x3fe2adb61bb05faf              # double 0.58370500000000003
	.quad	0x3fec38cfbfc6540d              # double 0.88193500000000002
	.quad	0x3fe049235f809918              # double 0.50892800000000005
	.quad	0x3fcb81e8a2ec28b3              # double 0.21490200000000001
	.quad	0x3fca05ab3aabcd79              # double 0.20329800000000001
	.quad	0x3fdd17ca2120e1f8              # double 0.45457700000000001
	.quad	0x3fe8e19fc2a8869c              # double 0.77754199999999995
	.quad	0x3faadeca25529fe0              # double 0.052481
	.quad	0x3fc602c0a4a05dd9              # double 0.171959
	.quad	0x3fe31fa54c554328              # double 0.59761299999999995
	.quad	0x3fef0f16f4384ba1              # double 0.97059200000000001
	.quad	0x3fe51d5c31593e60              # double 0.65983400000000003
	.quad	0x3fe93a51a005c465              # double 0.78836899999999999
	.quad	0x3fe957ba6698bb4d              # double 0.79195899999999997
	.quad	0x3fcee18266772d5e              # double 0.241257
	.quad	0x3fdbcf3dc054ef46              # double 0.43452400000000002
	.quad	0x3fefaff4ba51a006              # double 0.99022900000000003
	.quad	0x3feb595bbbe878fb              # double 0.85465800000000003
	.quad	0x3fe6bfa8f7db6e50              # double 0.71089599999999997
	.quad	0x3fe4c16df3f96180              # double 0.64861199999999997
	.quad	0x3fe969a91105e1c1              # double 0.79414799999999997
	.quad	0x3feb06fac6045baf              # double 0.84460199999999996
	.quad	0x3fdbc9752977c88e              # double 0.43417099999999997
	.quad	0x3fe17720c8cd63cc              # double 0.54579200000000005
	.quad	0x3fdf6440f2389720              # double 0.49049399999999999
	.quad	0x3fee9a8262456f76              # double 0.95636100000000002
	.quad	0x3fe93b01c92ddbdb              # double 0.78845299999999996
	.quad	0x3feac7a17f4128bf              # double 0.83686899999999997
	.quad	0x3fedb269df97aaac              # double 0.92802899999999999
	.quad	0x3fefb4acaff6d331              # double 0.99080500000000004
	.quad	0x3fd065ecc3e3193f              # double 0.25622099999999998
	.quad	0x3fa757b41bfbdf09              # double 0.045591
	.quad	0x3fe9326394face68              # double 0.78740100000000002
	.quad	0x3fe3469f8c21e1d2              # double 0.60237099999999999
	.quad	0x3fecb1c432ca57a8              # double 0.89670000000000005
	.quad	0x3fdac1ce6c093d96              # double 0.41807899999999998
	.quad	0x3fe5b7b8d3f1843c              # double 0.67867699999999997
	.quad	0x3fe1eb37867f0aa2              # double 0.55996299999999999
	.quad	0x3fe6c7c5260f5e42              # double 0.71188600000000002
	.quad	0x3fe5d109070fbeba              # double 0.68176700000000001
	.quad	0x3fa86d0d49949e88              # double 0.047706999999999999
	.quad	0x3fcd2f09d8c6d613              # double 0.22799800000000001
	.quad	0x3fcc55d1c3ac929b              # double 0.22136900000000001
	.quad	0x3fe96b1e5c0b9991              # double 0.79432599999999998
	.quad	0x3fdeb3c81908e582              # double 0.47972300000000001
	.quad	0x3fef2291fb3fa6df              # double 0.97297
	.quad	0x3fec1270b06c43f6              # double 0.877251
	.quad	0x3fe19e94ab1d4f9c              # double 0.55060799999999999
	.quad	0x3fe23fc6540cc78f              # double 0.57028500000000004
	.quad	0x3fed49ff92f2b66b              # double 0.91528299999999996
	.quad	0x3fe4a98aa8650e78              # double 0.64569600000000005
	.quad	0x3fe10b178b370047              # double 0.53260399999999997
	.quad	0x3fe1ba322af57710              # double 0.553979
	.quad	0x3fde37e2c55c9603              # double 0.472161
	.quad	0x3fc72dba4d6e47dc              # double 0.18108299999999999
	.quad	0x3fe4309203a322af              # double 0.63092899999999996
	.quad	0x3fe69f3a57eaa2a1              # double 0.70693700000000004
	.quad	0x3fe68a02b841248d              # double 0.70434699999999995
	.quad	0x3fe06ac42e9899bf              # double 0.51303299999999996
	.quad	0x3fd2f1800a7c5ac4              # double 0.29598999999999998
	.quad	0x3fe030ccbc05d52c              # double 0.50595699999999999
	.quad	0x3fed4a36199780bb              # double 0.91530900000000004
	.quad	0x3fec0e51d25aab47              # double 0.87674799999999997
	.quad	0x3fe3ccc89b0ee49f              # double 0.61874799999999996
	.quad	0x3fe5f95f676ea423              # double 0.68669100000000005
	.quad	0x3fd43b85e80bed74              # double 0.316133
	.quad	0x3f91797cc39ffd61              # double 0.017065
	.quad	0x3fcdbccaf709b739              # double 0.232324
	.quad	0x3fe33a4d6e47dc38              # double 0.60086700000000004
	.quad	0x3fcd2bcb5fe542e5              # double 0.22789899999999999
	.quad	0x3fdc8e3ac0c62e4d              # double 0.44618099999999999
	.quad	0x3fed6e9ff0cbaf96              # double 0.91975399999999996
	.quad	0x3fd3d38476f2a5a4              # double 0.30978499999999998
	.quad	0x3fe5ed00b45ae600              # double 0.68518100000000004
	.quad	0x3fe629a1b9f98b72              # double 0.69258200000000003
	.quad	0x3fe7c028e4fb97bb              # double 0.74220699999999995
	.quad	0x3fdba09cc319c5a4              # double 0.43167800000000001
	.quad	0x3fa80de4c51116a9              # double 0.046981000000000002
	.quad	0x3fd445996744b2b7              # double 0.31674799999999997
	.quad	0x3fe51d883ba3443d              # double 0.65985499999999997
	.quad	0x3fe1b841248d7e02              # double 0.55374199999999996
	.quad	0x3fe0d58a76102795              # double 0.52606699999999995
	.quad	0x3fe0dca6ca03c4b1              # double 0.52693500000000004
	.quad	0x3fd2052934acaff7              # double 0.28156500000000001
	.quad	0x3fd521709310129d              # double 0.33016600000000002
	.quad	0x3fe7913a4f8726d0              # double 0.73647799999999997
	.quad	0x3feb0ef77f27fe4c              # double 0.84557700000000002
	.quad	0x3fe4fa56de33269e              # double 0.655559
	.quad	0x3fe6e8ccdd93c46e              # double 0.71591800000000005
	.quad	0x3fd3dedf1e0828c3              # double 0.31047799999999998
	.quad	0x3fbcaed99cbee808              # double 0.112043
	.quad	0x3fe103968d759ee9              # double 0.53168800000000005
	.quad	0x3fcae5e679463cfb              # double 0.21014099999999999
	.quad	0x3fdfa686e7e62dc7              # double 0.49453900000000001
	.quad	0x3fe2a17d2849cb25              # double 0.58221299999999998
	.quad	0x3fe74c25072085b2              # double 0.72804500000000005
	.quad	0x3fde9813879c4114              # double 0.47803200000000001
	.quad	0x3fd35072085b1855              # double 0.30178500000000003
	.quad	0x3fc2cab3edd8b60f              # double 0.146811
	.quad	0x3fd4127f5e84f095              # double 0.31362899999999999
	.quad	0x3fa56605ee568a50              # double 0.041793999999999998
	.quad	0x3fead1efb6dca07f              # double 0.83812699999999996
	.quad	0x3fe755a9eb2074eb              # double 0.72920700000000005
	.quad	0x3fe52116659d12cb              # double 0.66028900000000001
	.quad	0x3fd00713f077ccc0              # double 0.25043199999999999
	.quad	0x3fd56490a350d280              # double 0.33426299999999998
	.quad	0x3fd449dbec2480e9              # double 0.31700800000000001
	.quad	0x3fd95ae1cde5d181              # double 0.39617200000000002
	.quad	0x3fd10780fdc1615f              # double 0.26608300000000001
	.quad	0x3fe6eb95e5aff2a1              # double 0.71625799999999995
	.quad	0x3feb892ee84ad795              # double 0.86049600000000004
	.quad	0x3fec0f75536933a0              # double 0.87688699999999997
	.quad	0x3fc87cd898b2e9cd              # double 0.19131000000000001
	.quad	0x3fd8ae03b3e9a6f8              # double 0.38562099999999999
	.quad	0x3feb6e2003ab862b              # double 0.85719299999999998
	.quad	0x3fbc96feb4a6655a              # double 0.111679
	.quad	0x3fdd2e1693c03bc5              # double 0.45593800000000001
	.quad	0x3fd38fa7a85015c2              # double 0.305643
	.quad	0x3fd23bcd35a85879              # double 0.28489999999999999
	.quad	0x3fef4a0e410b630b              # double 0.97779000000000004
	.quad	0x3fe047cd898b2e9d              # double 0.50876500000000002
	.quad	0x3fbe8661ae70c133              # double 0.119238
	.quad	0x3fe86d8f4f93bc0a              # double 0.763374
	.quad	0x3fef6657b84db9c7              # double 0.98124299999999997
	.quad	0x3fef75946c332f01              # double 0.98310299999999994
	.quad	0x3fcdb0c4588a04d1              # double 0.231957
	.quad	0x3fdc126202539757              # double 0.43862200000000001
	.quad	0x3fb07a17f4128bf4              # double 0.064363000000000004
	.quad	0x3fe0be89a88ace25              # double 0.52325900000000003
	.quad	0x3fe1227f1b691212              # double 0.53546099999999996
	.quad	0x3feef694467381d8              # double 0.96760000000000001
	.quad	0x3fc53300de4c5111              # double 0.16561899999999999
	.quad	0x3fd9a63f9a49c2c2              # double 0.40077200000000002
	.quad	0x3fe98eb0318b9347              # double 0.79866800000000004
	.quad	0x3fd98a43bb40b34e              # double 0.39906399999999997
	.quad	0x3fdfc404a72ead92              # double 0.49633899999999997
	.quad	0x3fe3339192641b33              # double 0.60004500000000005
	.quad	0x3fc7230b9dc2f406              # double 0.180757
	.quad	0x3fd868405b39e27a              # double 0.38136300000000001
	.quad	0x3fd35d851654d61b              # double 0.30258299999999999
	.quad	0x3feb306e5cd4ed2d              # double 0.84966200000000003
	.quad	0x3fd1b1422ccb3a26              # double 0.27644400000000002
	.quad	0x3fdebeec39799e52              # double 0.48040300000000002
	.quad	0x3fe7b7867f0aa21a              # double 0.74115299999999995
	.quad	0x3fe8f9767903211d              # double 0.78045200000000003
	.quad	0x3fe6c8adeebb341e              # double 0.71199699999999999
	.quad	0x3fe564e48626f60e              # double 0.66856599999999999
	.quad	0x3fe610fb65668c26              # double 0.68957299999999999
	.quad	0x3fd807e9d94d0dd0              # double 0.37548300000000001
	.quad	0x3fe7800000000000              # double 0.734375
	.quad	0x3fd62923e5b8561d              # double 0.34626099999999999
	.quad	0x3fac21c044284dfd              # double 0.054945000000000001
	.quad	0x3fd5e7bc3c5bd0e1              # double 0.34226899999999999
	.quad	0x3fe84e69f05ea24d              # double 0.75957200000000002
	.quad	0x3fb713be22e5de16              # double 0.090145000000000002
	.quad	0x3fda90d5a5b9628d              # double 0.41509000000000001
	.quad	0x3fdf73a797891e21              # double 0.49143399999999998
	.quad	0x3fe75ea465a57647              # double 0.73030300000000004
	.quad	0x3fd2198aeb80ecfa              # double 0.28280899999999998
	.quad	0x3fe62b1d4f9c1f86              # double 0.69276300000000002
	.quad	0x3fed797aaac1094a              # double 0.92107899999999998
	.quad	0x3fc05186db50f40e              # double 0.12748799999999999
	.quad	0x3feb1a3f4666ec9e              # double 0.84695399999999998
	.quad	0x3fd02888b545c78a              # double 0.25247399999999998
	.quad	0x3fe3d56b00ffda40              # double 0.61980199999999996
	.quad	0x3feca66fd651b0cd              # double 0.89531700000000003
	.quad	0x3fc8047d3d4280ae              # double 0.187637
	.quad	0x3feeba81dc0db270              # double 0.96026699999999998
	.quad	0x3fec4113c68661ae              # double 0.88294399999999995
	.quad	0x3fdc66ec9e236c16              # double 0.44378200000000001
	.quad	0x3fe2ce0114d2f5dc              # double 0.58764700000000003
	.quad	0x3fe8386b15f88fc9              # double 0.75688699999999998
	.quad	0x3fead0ebaade657c              # double 0.83800300000000005
	.quad	0x3fe2ef0068db8bac              # double 0.59167499999999995
	.quad	0x3fe853aa369fcf3e              # double 0.76021300000000003
	.quad	0x3fe99eb4202d9cf1              # double 0.80062299999999997
	.quad	0x3fef3ee3d5fdcdf7              # double 0.97642700000000004
	.quad	0x3fcecbc8c0ce91c9              # double 0.240594
	.quad	0x3fd583a109d0635a              # double 0.33615899999999999
	.quad	0x3fef2456f75d9a0f              # double 0.97318599999999999
	.quad	0x3fe31f98b71b8aa0              # double 0.597607
	.quad	0x3fe79f77292c4934              # double 0.73821599999999998
	.quad	0x3fd4d1dcd7060bb3              # double 0.32530900000000001
	.quad	0x3fbd59d55e6bc622              # double 0.114652
	.quad	0x3fe93c83a96d4c34              # double 0.78863700000000003
	.quad	0x3fe8d64d7f0ed3d8              # double 0.77615999999999996
	.quad	0x3fd7fb19e731d2e1              # double 0.37470100000000001
	.quad	0x3fdd56d5cfaacd9f              # double 0.45842500000000003
	.quad	0x3fdd719f7f8ca81a              # double 0.46006000000000002
	.quad	0x3fde04ab606b7aa2              # double 0.46903499999999998
	.quad	0x3fda89eba6aca793              # double 0.41466799999999998
	.quad	0x3fdbec56d5cfaace              # double 0.43630000000000002
	.quad	0x3f6b8023a6ce3583              # double 0.0033570000000000002
	.quad	0x3fd428848387df5d              # double 0.314973
	.quad	0x3fe20a82a5614df9              # double 0.56378300000000003
	.quad	0x3fb668b19a415f46              # double 0.087535000000000001
	.quad	0x3fc2bf8769ec2ce4              # double 0.14646999999999999
	.quad	0x3fe28de2ac322292              # double 0.57982
	.quad	0x3fcbe3c105186db5              # double 0.217888
	.quad	0x3fe98094e5d5b24f              # double 0.79694600000000004
	.quad	0x3f7288ce703afb7f              # double 0.0045250000000000004
	.quad	0x3fc7c69728a61177              # double 0.185748
	.quad	0x3fe6a3161a1db878              # double 0.70740800000000004
	.quad	0x3fc255f3519bd406              # double 0.14324799999999999
	.quad	0x3fe3c9081c2e33f0              # double 0.61829000000000001
	.quad	0x3fe12396073de1e3              # double 0.53559400000000001
	.quad	0x3fe5f4e0114d2f5e              # double 0.68614200000000003
	.quad	0x3fe219392189bd84              # double 0.56557900000000005
	.quad	0x3fe1fe21d96e9bbf              # double 0.56227199999999999
	.quad	0x3fde719b4dcebfec              # double 0.475684
	.quad	0x3fdc9cdc443914f5              # double 0.44707400000000003
	.quad	0x3fce10adcd2d44dd              # double 0.23488400000000001
	.quad	0x3fe635b91f70de8f              # double 0.69405799999999995
	.quad	0x3fef57a99fa11a97              # double 0.97945099999999996
	.quad	0x3feb9ecb31c219eb              # double 0.86313399999999996
	.quad	0x3fd1a32f44912989              # double 0.27558500000000002
	.quad	0x3fea6c3fc43b2dd3              # double 0.82571399999999995
	.quad	0x3fc03b03e20ccff2              # double 0.126801
	.quad	0x3fd58405b39e279e              # double 0.33618300000000001
	.quad	0x3febb81733226c3c              # double 0.86622200000000004
	.quad	0x3fdf41e14bdfd263              # double 0.488396
	.quad	0x3fe58e1932d6ece1              # double 0.67359599999999997
	.quad	0x3febf12e40852b4e              # double 0.87319100000000005
	.quad	0x3fee5c22ab25b318              # double 0.948747
	.quad	0x3fb6106ab14ec205              # double 0.086188000000000001
	.quad	0x3fdeb25b317efe0d              # double 0.47963600000000001
	.quad	0x3fd98344c37e6f72              # double 0.39863700000000002
	.quad	0x3fe8fcaa7589efd8              # double 0.78084299999999995
	.quad	0x3fda63f141205bc0              # double 0.41234999999999999
	.quad	0x3fedeba493c89f41              # double 0.93501500000000004
	.quad	0x3fd28759253543af              # double 0.28951100000000002
	.quad	0x3fd353fc0096feb5              # double 0.30200100000000002
	.quad	0x3fc7158b827fa1a1              # double 0.18034500000000001
	.quad	0x3fc2b4fa48301a7a              # double 0.146148
	.quad	0x3fc3404ea4a8c155              # double 0.15040000000000001
	.quad	0x3fea8769ec2ce465              # double 0.82903000000000004
	.quad	0x3fd32df9378ee286              # double 0.29968099999999998
	.quad	0x3fe7f28a6117720d              # double 0.74835700000000005
	.quad	0x3fbd7fe8ee6b8306              # double 0.115233
	.quad	0x3fd0bf50e3476295              # double 0.26167699999999999
	.quad	0x3fed80bed740c415              # double 0.92196599999999995
	.quad	0x3fefa71fff79c843              # double 0.989151
	.quad	0x3fd5abb44e50c5eb              # double 0.33860499999999999
	.quad	0x3f58ac9f2fdb8fde              # double 0.001506
	.quad	0x3fc08b4bf8fcd680              # double 0.129251
	.quad	0x3fa166be7afa7222              # double 0.033987000000000003
	.quad	0x3fd750507a6bd6e9              # double 0.36427700000000002
	.quad	0x3fd30d23d4f15e7d              # double 0.29767700000000002
	.quad	0x3fde0ffda4052d66              # double 0.46972599999999998
	.quad	0x3fe17585be1a8262              # double 0.54559599999999997
	.quad	0x3fed1f03d145d851              # double 0.91003599999999996
	.quad	0x3fe5e27bf61aa3f0              # double 0.68389699999999998
	.quad	0x3fd1c069e7fb267c              # double 0.27736899999999998
	.quad	0x3fe7497fa5d28d00              # double 0.72772199999999998
	.quad	0x3fe74e5b4245f5ae              # double 0.72831500000000005
	.quad	0x3fe398a86d71f362              # double 0.61238499999999996
	.quad	0x3fed244417870542              # double 0.91067699999999996
	.quad	0x3fe48ac18f81e8a3              # double 0.64193800000000001
	.quad	0x3fb2e631f8a0902e              # double 0.073825000000000002
	.quad	0x3fee004102ff8ec1              # double 0.937531
	.quad	0x3fe262ef4e0114d3              # double 0.574577
	.quad	0x3f8bd273d5bab218              # double 0.013585
	.quad	0x3fefd22c881e4713              # double 0.99440600000000001
	.quad	0x3faa5accd530489d              # double 0.051473999999999999
	.quad	0x3fe2fa1c25d07421              # double 0.59303099999999997
	.quad	0x3fc62c669057d178              # double 0.17323
	.quad	0x3fa3441bb8c32a8d              # double 0.037629000000000003
	.quad	0x3fd016b97fe8ee6c              # double 0.25138700000000003
	.quad	0x3fe00813cab81f97              # double 0.50098600000000004
	.quad	0x3fe35c65c70435f0              # double 0.60502900000000004
	.quad	0x3fe5849235f80991              # double 0.67243299999999995
	.quad	0x3fecce379b77c02b              # double 0.900173
	.quad	0x3f99f127f5e84f09              # double 0.025333999999999999
	.quad	0x3feb4f4a558ea7ce              # double 0.85342899999999999
	.quad	0x3fc794c87980f55e              # double 0.184228
	.quad	0x3fef0d36b4c7f349              # double 0.97036299999999997
	.quad	0x3fe3c15097c80842              # double 0.61734800000000001
	.quad	0x3fc5606b7aa25d8d              # double 0.16700499999999999
	.quad	0x3feb54866a11ec92              # double 0.85406800000000005
	.quad	0x3fe91c065b63d3e5              # double 0.78467100000000001
	.quad	0x3fe1f67903211cb0              # double 0.56133699999999997
	.quad	0x3fcdad42c3c9eecc              # double 0.23185
	.quad	0x3fe6a7b0b3919264              # double 0.70796999999999999
	.quad	0x3fec0010c6f7a0b6              # double 0.87500800000000001
	.quad	0x3fe6a9b499d0203e              # double 0.70821599999999996
	.quad	0x3fedc3bf727136a4              # double 0.93014499999999999
	.quad	0x3fe67d5454152b0a              # double 0.70279899999999995
	.quad	0x3fbd309c7ffde721              # double 0.114023
	.quad	0x3fa5bdb5d894812c              # double 0.042463000000000001
	.quad	0x3fbd20296b3354c1              # double 0.113772
	.quad	0x3fd7ce39b456b442              # double 0.37196200000000001
	.quad	0x3fb565c2d2780779              # double 0.083584000000000006
	.quad	0x3fded6b65a9a8049              # double 0.48185499999999998
	.quad	0x3fc929888f861a61              # double 0.19658
	.quad	0x3fbcd8ba40d90e24              # double 0.112682
	.quad	0x3fc73f7ced916873              # double 0.18162500000000001
	.quad	0x3fd13e5321e603d5              # double 0.26942899999999997
	.quad	0x3fc233d6c7219221              # double 0.142207
	.quad	0x3fec915592d98bf8              # double 0.89274100000000001
	.quad	0x3fc9b5bf6a0dbad4              # double 0.20085900000000001
	.quad	0x3fe50e8858ff7597              # double 0.65802400000000005
	.quad	0x3f7f9378ee286727              # double 0.0077089999999999997
	.quad	0x3fd46d117b5286b6              # double 0.31915700000000002
	.quad	0x3fbf08ede54b48d4              # double 0.12123
	.quad	0x3fbf0a5efe931876              # double 0.121252
	.quad	0x3fe1d8537e2c55c9              # double 0.55765699999999996
	.quad	0x3fe8a0a0f4d7add1              # double 0.76960799999999996
	.quad	0x3fe05592d98bf7f0              # double 0.51044599999999996
	.quad	0x3fe23384fd2a62aa              # double 0.56878899999999999
	.quad	0x3fe63fb58d1526d9              # double 0.69527700000000003
	.quad	0x3fd621101b003687              # double 0.34576800000000002
	.quad	0x3fe781083dbc2331              # double 0.73450099999999996
	.quad	0x3f6a32b12d3415b1              # double 0.0031979999999999999
	.quad	0x3fdfb18116ebd4d0              # double 0.49520900000000001
	.quad	0x3fe89f94855da273              # double 0.76948000000000005
	.quad	0x3fe084790b849881              # double 0.51617100000000005
	.quad	0x3fe020620ab71327              # double 0.50395299999999998
	.quad	0x3fd9ef284167a95d              # double 0.40522200000000003
	.quad	0x3fdc4c6e6d9be4cd              # double 0.44216499999999997
	.quad	0x3fd79e1f3a57eaa3              # double 0.36902600000000002
	.quad	0x3fe94c5da6a44418              # double 0.79057200000000005
	.quad	0x3fd2e81882adc4ca              # double 0.29541600000000001
	.quad	0x3fea7583a53b8e4c              # double 0.82684500000000005
	.quad	0x3fe4529fe004b7f6              # double 0.63508600000000004
	.quad	0x3fca3305100a393f              # double 0.204682
	.quad	0x3fe47e77d523b363              # double 0.64043799999999995
	.quad	0x3fe50008637bd05b              # double 0.656254
	.quad	0x3fcf1f255f3519bd              # double 0.24313799999999999
	.quad	0x3fe5edc1a47a9e2c              # double 0.68527300000000002
	.quad	0x3feade97d06bbdbe              # double 0.83967199999999997
	.quad	0x3fdf634dad31fcd2              # double 0.49043599999999998
	.quad	0x3fe0c70435efa616              # double 0.52429400000000004
	.quad	0x3f973e24febd09e1              # double 0.022697999999999999
	.quad	0x3fe143137b07075b              # double 0.53943799999999997
	.quad	0x3fc37c5692b3cc4b              # double 0.15223200000000001
	.quad	0x3fde1355475a31a5              # double 0.46993000000000001
	.quad	0x3fe47d4e09784ec6              # double 0.64029599999999998
	.quad	0x3fe4caff6d330942              # double 0.64978000000000002
	.quad	0x3feeb198288051ca              # double 0.959179
	.quad	0x3fcf041461b6d43d              # double 0.242312
	.quad	0x3fe5020a30db6a1f              # double 0.65649900000000005
	.quad	0x3fe6be7f2c3009b3              # double 0.710754
	.quad	0x3fb4a7b4e54f7a92              # double 0.080684000000000005
	.quad	0x3f9ded288ce703b0              # double 0.029225000000000001
	.quad	0x3fd394bbe4473cd5              # double 0.30595299999999997
	.quad	0x3fd446a1a500d5e9              # double 0.31681100000000001
	.quad	0x3fe30cf7caa7589f              # double 0.595333
	.quad	0x3fc68a697aeddce8              # double 0.17609900000000001
	.quad	0x3fe04b295e9e1b09              # double 0.50917500000000004
	.quad	0x3fe733482be8bc17              # double 0.72501000000000004
	.quad	0x3fe03bc0a06e9ff1              # double 0.50729400000000002
	.quad	0x3fe8c92ddbdb5d89              # double 0.77455799999999997
	.quad	0x3fee6874c8ffb8b2              # double 0.95025099999999996
	.quad	0x3fbc065b63d3e4ef              # double 0.109472
	.quad	0x3fde727136a400fc              # double 0.47573500000000002
	.quad	0x3f870a3d70a3d70a              # double 0.01125
	.quad	0x3fe333d29563a9f4              # double 0.60007600000000005
	.quad	0x3fe9bd70a3d70a3d              # double 0.80437499999999995
	.quad	0x3fd7c3d68405b39e              # double 0.37132799999999999
	.quad	0x3fd0e2328f9f44d4              # double 0.26380599999999998
	.quad	0x3fe70221426fe719              # double 0.71901000000000004
	.quad	0x3fb5bbadc0980b24              # double 0.084894999999999998
	.quad	0x3f9719f7f8ca8199              # double 0.02256
	.quad	0x3fece8b9fdbd2fa1              # double 0.90340900000000002
	.quad	0x3fd755ef1fddebd9              # double 0.36462
	.quad	0x3fda6a055757d5aa              # double 0.412721
	.quad	0x3fde8858ff759685              # double 0.477072
	.quad	0x3fc8caff6d330942              # double 0.19369500000000001
	.quad	0x3fe1709310129cbb              # double 0.54499200000000003
	.quad	0x3fdf177ea1c68ec5              # double 0.48580899999999999
	.quad	0x3fcb1e75360d0247              # double 0.211867
	.quad	0x3fd3691212513b5c              # double 0.303288
	.quad	0x3fdb962cfd8f0c78              # double 0.43104100000000001
	.quad	0x3fd5622813448063              # double 0.33411600000000002
	.quad	0x3faf37da61e0c5a8              # double 0.060972999999999999
	.quad	0x3fdad1351159c497              # double 0.41901899999999997
	.quad	0x3fe9b4117f84449e              # double 0.80323100000000003
	.quad	0x3fb69b7bf1e8e608              # double 0.08831
	.quad	0x3fd031b9b66f9336              # double 0.25303500000000001
	.quad	0x3fd3e536501e2585              # double 0.310865
	.quad	0x3fef87ebf22c01e7              # double 0.98534200000000005
	.quad	0x3fc66ab9b23dd54e              # double 0.17513200000000001
	.quad	0x3fe942070b8cfbfc              # double 0.78930999999999995
	.quad	0x3fe045ed4a1ad645              # double 0.50853599999999999
	.quad	0x3feb2eafab53d641              # double 0.84944900000000001
	.quad	0x3fd7a82a5614df8b              # double 0.369639
	.quad	0x3fde90e66cb10343              # double 0.47759400000000002
	.quad	0x3fd4e874c8ffb8b2              # double 0.32668799999999998
	.quad	0x3faf79420b3d4ae4              # double 0.061471999999999999
	.quad	0x3fe0f177a7008a69              # double 0.52947599999999995
	.quad	0x3fecd102bc72e276              # double 0.90051400000000004
	.quad	0x3fe3fb267c6b8b69              # double 0.62440799999999996
	.quad	0x3fdf909289dadfb5              # double 0.493199
	.quad	0x3fa9ee2435696e59              # double 0.050645000000000003
	.quad	0x3fcec95bff04577e              # double 0.24052000000000001
	.quad	0x3fc45d31337eb28e              # double 0.15909400000000001
	.quad	0x3fee09118c197e56              # double 0.93860699999999997
	.quad	0x3feb50f840181e04              # double 0.853634
	.quad	0x3fde013660e51d26              # double 0.46882400000000002
	.quad	0x3fd4a1f080303c08              # double 0.322384
	.quad	0x3fe3dc3bd5992429              # double 0.62063400000000002
	.quad	0x3fdd5a187a4a48f9              # double 0.45862399999999998
	.quad	0x3fecb47c73eee526              # double 0.89703200000000005
	.quad	0x3fe2c927913e8145              # double 0.58705499999999999
	.quad	0x3fd82de43ed959a3              # double 0.377801
	.quad	0x3fe7f05425f20210              # double 0.74808699999999995
	.quad	0x3fe59131ec0b5675              # double 0.67397399999999996
	.quad	0x3fdbfab53d640e9d              # double 0.43717699999999998
	.quad	0x3fe0e687f455a7d2              # double 0.52814099999999997
	.quad	0x3fe6be5b8561d430              # double 0.71073699999999995
	.quad	0x3feccf1a1986b9c3              # double 0.900281
	.quad	0x3fe68ea39c51dabe              # double 0.70491199999999998
	.quad	0x3fed264e48626f61              # double 0.91092600000000001
	.quad	0x3fef41e9af5ba2be              # double 0.976796
	.quad	0x3fe9c7fbacb42891              # double 0.80566199999999999
	.quad	0x3fe9af9873ffac1d              # double 0.80268499999999998
	.quad	0x3fd943137b07075b              # double 0.39471899999999999
	.quad	0x3fdbaf922962cfd9              # double 0.432591
	.quad	0x3fe93ccd0fe8ab50              # double 0.78867200000000004
	.quad	0x3fcf4e22a2c23748              # double 0.24457200000000001
	.quad	0x3fcf0fd7e45803cd              # double 0.242671
	.quad	0x3fd02a80064a9cdc              # double 0.25259399999999999
	.quad	0x3fe3c9363f572de4              # double 0.61831199999999997
	.quad	0x3febeec39799e519              # double 0.87289600000000001
	.quad	0x3fedeccc46950fc7              # double 0.93515599999999999
	.quad	0x3fef1b79d909f1f1              # double 0.97210399999999996
	.quad	0x3fe59713ad5bee3d              # double 0.67469199999999996
	.quad	0x3feabda2f8bdec5f              # double 0.83564899999999998
	.quad	0x3fde97fa5d28d003              # double 0.47802600000000001
	.quad	0x3febc38088509bfa              # double 0.86761500000000003
	.quad	0x3fc63efae7924af1              # double 0.17379700000000001
	.quad	0x3f99873ffac1d29e              # double 0.024930000000000001
	.quad	0x3feccb51372a38b9              # double 0.89981900000000004
	.quad	0x3fd9a8826aa8eb46              # double 0.40090999999999999
	.quad	0x3fea53aa369fcf3e              # double 0.82271300000000003
	.quad	0x3fe58ca600b02928              # double 0.67341899999999999
	.quad	0x3fc302eec7c957cd              # double 0.14852699999999999
	.quad	0x3fea9733226c3b92              # double 0.83095699999999995
	.quad	0x3fedfc7c5260f5e4              # double 0.93707099999999998
	.quad	0x3fee8fb00bcbe61d              # double 0.95504
	.quad	0x3fd60b178b370047              # double 0.34442699999999998
	.quad	0x3fe97192ea52ef91              # double 0.79511399999999999
	.quad	0x3f4ff2e48e8a71de              # double 9.7499999999999996E-4
	.quad	0x3fe765753a3ec02f              # double 0.73113499999999998
	.quad	0x3febe0fe47991bc5              # double 0.87121499999999996
	.quad	0x3fe9e4adff822bbf              # double 0.80916500000000002
	.quad	0x3fe63fad2999567e              # double 0.69527300000000003
	.quad	0x3fe662c77574f723              # double 0.69955800000000001
	.quad	0x3fca829cfdd22856              # double 0.20711099999999999
	.quad	0x3fe70a06e9ff0cbb              # double 0.719974
	.quad	0x3fe7ffbacb428912              # double 0.74996700000000005
	.quad	0x3fd13f290abb44e5              # double 0.26948
	.quad	0x3fe6db2702a3486f              # double 0.714252
	.quad	0x3fea66687f455a7d              # double 0.82500099999999998
	.quad	0x3feaa83f4eca686e              # double 0.83303799999999995
	.quad	0x3fe0e1e92923e5b8              # double 0.52757699999999996
	.quad	0x3feada74c09c3ce2              # double 0.839167
	.quad	0x3feff7c6759ab6d0              # double 0.998996
	.quad	0x3fe00372e6a76966              # double 0.500421
	.quad	0x3feae1437c5692b4              # double 0.83999800000000002
	.quad	0x3fd3d31fcd24e161              # double 0.30976100000000001
	.quad	0x3feebedfa43fe5c9              # double 0.96079999999999998
	.quad	0x3fe1c256bca5375d              # double 0.55497300000000005
	.quad	0x3fea190afe60c38f              # double 0.81555699999999998
	.quad	0x3fe8e0d0247021d1              # double 0.777443
	.quad	0x3fc1a36e2eb1c433              # double 0.13780000000000001
	.quad	0x3fcca925fe974a34              # double 0.223912
	.quad	0x3fcecedd48451330              # double 0.24068800000000001
	.quad	0x3fd1507a6bd6e8b0              # double 0.27053700000000003
	.quad	0x3fa86013660e51d2              # double 0.047607999999999998
	.quad	0x3fe5eaab042528ae              # double 0.68489599999999995
	.quad	0x3fec747d805e5f31              # double 0.88922000000000001
	.quad	0x3fdbdc1a47a9e2bd              # double 0.435309
	.quad	0x3feda5657fb69985              # double 0.92644000000000004
	.quad	0x3fd5b67c286f8ad2              # double 0.33926299999999998
	.quad	0x3fd3eb18116ebd4d              # double 0.311224
	.quad	0x3fe434267839cd81              # double 0.63136599999999998
	.quad	0x3fea5b7ae5796bfd              # double 0.82366700000000004
	.quad	0x3fd5425aee631f8a              # double 0.332175
	.quad	0x3fdada87a072d1af              # double 0.41958800000000002
	.quad	0x3febc3e100607810              # double 0.86766100000000002
	.quad	0x3fc1abd1aa821f2a              # double 0.13805600000000001
	.quad	0x3fe9aada33bd9cae              # double 0.80210599999999999
	.quad	0x3feddc4c9c90c4df              # double 0.93314200000000003
	.quad	0x3fdddb9c7368ad69              # double 0.46652900000000003
	.quad	0x3fc889656eefa1e4              # double 0.191693
	.quad	0x3fd720791c4b9021              # double 0.36135699999999998
	.quad	0x3fef7f2e48e8a71e              # double 0.98427500000000001
	.quad	0x3fe3f498c3b0c459              # double 0.62360800000000005
	.quad	0x3fd2d21ff2e48e8a              # double 0.29407499999999998
	.quad	0x3fea1172ef0ae536              # double 0.81462999999999997
	.quad	0x3fb565c2d2780779              # double 0.083584000000000006
	.quad	0x3fd41d4306e5cd4f              # double 0.31428600000000001
	.quad	0x3fc732378ab0c88a              # double 0.18121999999999999
	.quad	0x3fe2c6eb0b7c3505              # double 0.58678200000000003
	.quad	0x3fbdf86e3b46fdeb              # double 0.117072
	.quad	0x3fbfc32ebe596c83              # double 0.124072
	.quad	0x3fe0f92f2b66b617              # double 0.53041799999999995
	.quad	0x3fc7156191148fda              # double 0.18034
	.quad	0x3fef32a0663c74fb              # double 0.97492999999999996
	.quad	0x3fedf705857afea4              # double 0.93640400000000001
	.quad	0x3fe69e321a2e7f6f              # double 0.70681099999999997
	.quad	0x3fd6676640a6b93d              # double 0.35006100000000001
	.quad	0x3fee4e789e774eec              # double 0.947079
	.quad	0x3fc28e60807357e6              # double 0.14496999999999999
	.quad	0x3fe9ba4723aafff3              # double 0.80398899999999995
	.quad	0x3fa1b34a44c7b02d              # double 0.034570999999999998
	.quad	0x3fee51e321a2e7f7              # double 0.947496
	.quad	0x3fe5facc4ef88b97              # double 0.68686499999999995
	.quad	0x3fe09bfbdf090f73              # double 0.51904099999999997
	.quad	0x3fe99888f861a60d              # double 0.79986999999999997
	.quad	0x3fe9c6d82ba5a038              # double 0.80552299999999999
	.quad	0x3fdaccdd93c46d83              # double 0.41875400000000002
	.quad	0x3fe6ba27ae9ab29e              # double 0.71022399999999997
	.quad	0x3feae5061416377a              # double 0.84045700000000001
	.quad	0x3fd2142f61ed5ae2              # double 0.28248200000000001
	.quad	0x3fe393bc0a06e9ff              # double 0.61178399999999999
	.quad	0x3fcbeb4202d9cf14              # double 0.21811700000000001
	.quad	0x3fe0c3201040bfe4              # double 0.52381900000000003
	.quad	0x3fe78b242070b8d0              # double 0.73573500000000003
	.quad	0x3fb349be8ff327aa              # double 0.075343999999999994
	.quad	0x3fe1381f969e3c97              # double 0.53810100000000005
	.quad	0x3fc43c74fb549f95              # double 0.15809500000000001
	.quad	0x3feaab4d8ba40d91              # double 0.83341100000000001
	.quad	0x3fc0fc0d2c386d2f              # double 0.132692
	.quad	0x3fd1de3b8a19c9d6              # double 0.27918900000000002
	.quad	0x3fc40afa2f05a709              # double 0.156585
	.quad	0x3fd05fe974a3400c              # double 0.25585400000000003
	.quad	0x3fe21dd3bafd9770              # double 0.56614100000000001
	.quad	0x3fc9bbe878fabda1              # double 0.201047
	.quad	0x3fe4411a11233df3              # double 0.63294700000000004
	.quad	0x3fc3990afe60c38f              # double 0.15310799999999999
	.quad	0x3fc5077ccc037931              # double 0.16429099999999999
	.quad	0x3fd7baa582dbe7f3              # double 0.37076700000000001
	.quad	0x3fad99aa60913a50              # double 0.057813000000000003
	.quad	0x3fef08893b7d8490              # double 0.96979199999999999
	.quad	0x3fe0a5269595feda              # double 0.52015999999999996
	.quad	0x3fe0d102bc72e276              # double 0.52551400000000004
	.quad	0x3fd107852f7f498c              # double 0.26608399999999999
	.quad	0x3fdd0ced4e4c942d              # double 0.45391399999999998
	.quad	0x3fec53d640e9d51b              # double 0.88523399999999997
	.quad	0x3fe12c929aa1d756              # double 0.53669100000000003
	.quad	0x3fbdb39e279dd3bb              # double 0.116022
	.quad	0x3fe31abf33871609              # double 0.59701499999999996
	.quad	0x3fd9d5f99c38b04b              # double 0.40368500000000002
	.quad	0x3fe0dac258d5842b              # double 0.52670399999999995
	.quad	0x3fe55095af294dd7              # double 0.66608699999999998
	.quad	0x3fe7887442c7fbad              # double 0.73540700000000003
	.quad	0x3fed55992428d435              # double 0.91669900000000004
	.quad	0x3fe55f090f733a8a              # double 0.66785099999999997
	.quad	0x3fbed3b6cbd987c6              # double 0.120418
	.quad	0x3fea6eb702602c91              # double 0.82601500000000005
	.quad	0x3fe0310dbf0563ed              # double 0.50598799999999999
	.quad	0x3fe6727dcbddb984              # double 0.70147599999999999
	.quad	0x3febbaa79bbadc0a              # double 0.86653500000000006
	.quad	0x3fe49a8262456f76              # double 0.64386100000000002
	.quad	0x3fe08ed80a17b0f7              # double 0.51743700000000004
	.quad	0x3fc029a5ebb7739f              # double 0.12627099999999999
	.quad	0x3fcc92253111f0c3              # double 0.22320999999999999
	.quad	0x3fc2aab8a5ce5b42              # double 0.14583499999999999
	.quad	0x3fe90765ba6efc37              # double 0.78215299999999999
	.quad	0x3fbc9107faa044af              # double 0.11158800000000001
	.quad	0x3febf6683c297bfa              # double 0.87382899999999997
	.quad	0x3fdeb9991361dc94              # double 0.480078
	.quad	0x3fe5b98c7e28240b              # double 0.67889999999999995
	.quad	0x3fe6f1758e219653              # double 0.71697500000000003
	.quad	0x3fdbe047d3d4280b              # double 0.43556400000000001
	.quad	0x3fa9767903211cb0              # double 0.049731999999999998
	.quad	0x3fcb3929ed3953df              # double 0.21268200000000001
	.quad	0x3fe23c105186db51              # double 0.56983200000000001
	.quad	0x3fb42a66dbd72bcb              # double 0.078771999999999995
	.quad	0x3fe1a4095f2452c6              # double 0.55127400000000004
	.quad	0x3fea76965f5275ef              # double 0.82697600000000004
	.quad	0x3fe8c840e1719f80              # double 0.77444500000000005
	.quad	0x3fe101cb46bacf74              # double 0.53146899999999997
	.quad	0x3fb396073de1e2df              # double 0.076508000000000007
	.quad	0x3fcf5aa715831f04              # double 0.24495400000000001
	.quad	0x3fe362d40aaeafab              # double 0.60581399999999996
	.quad	0x3fe4d95dd4c76d11              # double 0.65153399999999995
	.quad	0x3fef1958969a0ad9              # double 0.97184400000000004
	.quad	0x3fe7398c7e28240b              # double 0.72577499999999995
	.quad	0x3fc5899bf5946c33              # double 0.16826199999999999
	.quad	0x3fd3be2f7b17ce53              # double 0.30848300000000001
	.quad	0x3fdc22c01e68a0d3              # double 0.43962099999999998
	.quad	0x3fe872d7f950b956              # double 0.764019
	.quad	0x3fcfa426bb55ac04              # double 0.247197
	.quad	0x3fc71a005c4651f4              # double 0.180481
	.quad	0x3fe9e0fe47991bc5              # double 0.80871499999999996
	.quad	0x3fc811233df2a9d6              # double 0.188023
	.quad	0x3fd31e4f765fd8ae              # double 0.29872500000000002
	.quad	0x3fdb37b4a2339c0f              # double 0.42527500000000001
	.quad	0x3fd4fcb923a29c78              # double 0.32792500000000002
	.quad	0x3fec9fc8f32378ab              # double 0.89450499999999999
	.quad	0x3fe3b39192641b33              # double 0.61567000000000005
	.quad	0x3fd7b44e50c5eb31              # double 0.37037999999999999
	.quad	0x3fef067cf1c3265b              # double 0.96954200000000001
	.quad	0x3fe7b5eb7457c0b1              # double 0.74095699999999998
	.quad	0x3fc1601ffb480a5b              # double 0.13574600000000001
	.quad	0x3fe1c7bcc2938de7              # double 0.55563200000000001
	.quad	0x3fed5eb313be22e6              # double 0.91781000000000001
	.quad	0x3fd8395810624dd3              # double 0.3785
	.quad	0x3fe75a4acf312b1b              # double 0.72977199999999998
	.quad	0x3fe150b524399b2c              # double 0.54110199999999997
	.quad	0x3fdd463497b7414a              # double 0.45740999999999998
	.quad	0x3fc3192641b328b7              # double 0.149205
	.quad	0x3fec73fb7a5f41af              # double 0.889158
	.quad	0x3feb8a43bb40b34e              # double 0.86062799999999995
	.quad	0x3fee18b2e9ccb7d4              # double 0.94051499999999998
	.quad	0x3fdd11a975afaf86              # double 0.45420300000000002
	.quad	0x3fcbc5bd0e12e83a              # double 0.216972
	.quad	0x3feb2e3c536d655e              # double 0.84939399999999998
	.quad	0x3fe931422ccb3a26              # double 0.78726300000000005
	.quad	0x3fe1e81669ced0b3              # double 0.559581
	.quad	0x3febce4a7b4e54f8              # double 0.86893200000000004
	.quad	0x3feaaaa9f7b5aea3              # double 0.83333299999999999
	.quad	0x3fdbfdc1615ebfa9              # double 0.437363
	.quad	0x3fec449dbec2480f              # double 0.88337600000000005
	.quad	0x3fe171ae2da554b9              # double 0.54512700000000003
	.quad	0x3fdaa0cae642bf98              # double 0.41606399999999999
	.quad	0x3fb3da72a7bd48cb              # double 0.077551999999999996
	.quad	0x3fe03f20a73f748a              # double 0.50770599999999999
	.quad	0x3fe75f3519bd4068              # double 0.73037200000000002
	.quad	0x3fee22c881e4712e              # double 0.94174599999999997
	.quad	0x3fdf4da4ce8101f3              # double 0.48911399999999999
	.quad	0x3fdc988094e5d5b2              # double 0.44680799999999998
	.quad	0x3fd505b39e279dd4              # double 0.32847300000000001
	.quad	0x3fe195182a9930be              # double 0.54944999999999999
	.quad	0x3fe6c167a95c853c              # double 0.71110899999999999
	.quad	0x3fe0c3f1c75818c6              # double 0.52391900000000002
	.quad	0x3fee316c1e364bec              # double 0.94353299999999995
	.quad	0x3fd87125dd095af3              # double 0.38190600000000002
	.quad	0x3fdfc4651f3e89a9              # double 0.49636200000000003
	.quad	0x3fd7c968943e1006              # double 0.371668
	.quad	0x3fd870110a137f39              # double 0.38184000000000001
	.quad	0x3fef5b035bd512ec              # double 0.97985999999999995
	.quad	0x3feceb8b69552e30              # double 0.90375300000000003
	.quad	0x3fc02cecc814d728              # double 0.12637100000000001
	.quad	0x3fce19f3c70c996b              # double 0.23516699999999999
	.quad	0x3fedc7735c182ecb              # double 0.93059700000000001
	.quad	0x3fe1a1986b9c304d              # double 0.55097600000000002
	.quad	0x3fe1d1372a38b8ae              # double 0.55678899999999998
	.quad	0x3fe296ca46e08f21              # double 0.58090699999999995
	.quad	0x3fbcad256798958e              # double 0.11201700000000001
	.quad	0x3f8074a771c970f8              # double 0.0080350000000000004
	.quad	0x3fcebf11f926c7eb              # double 0.240206
	.quad	0x3fcc2b9d3cbc48f1              # double 0.220081
	.quad	0x3fea98dac258d584              # double 0.83115899999999998
	.quad	0x3faed3b6cbd987c6              # double 0.060208999999999999
	.quad	0x3fe64f41f212d773              # double 0.69717499999999999
	.quad	0x3fe3bdf6db940fed              # double 0.61693900000000002
	.quad	0x3fe16b15f88fc936              # double 0.54432199999999997
	.quad	0x3fec01fd9ba1b196              # double 0.87524299999999999
	.quad	0x3fd0465a57646ae4              # double 0.25429400000000002
	.quad	0x3fdd52da98676a72              # double 0.45818199999999998
	.quad	0x3fe39b456b441bb9              # double 0.61270400000000003
	.quad	0x3fc3f7b5aea3161a              # double 0.155997
	.quad	0x3fb744e50c5eb314              # double 0.090895000000000004
	.quad	0x3fdeab8e8ea39c52              # double 0.47922100000000001
	.quad	0x3fce7724fa8b4bf9              # double 0.238011
	.quad	0x3fea35ce18266773              # double 0.81906800000000002
	.quad	0x3fccde97d06bbdbe              # double 0.22554299999999999
	.quad	0x3fe670b06c43f5f9              # double 0.70125599999999999
	.quad	0x3fea114f483cafb4              # double 0.81461300000000003
	.quad	0x3feb46b26bf8769f              # double 0.85238000000000003
	.quad	0x3fed526b723ee1bd              # double 0.91631099999999999
	.quad	0x3fef6358298cc144              # double 0.98087699999999999
	.quad	0x3feaf60e0eb67c28              # double 0.84253599999999995
	.quad	0x3fd04167a95c853c              # double 0.253992
	.quad	0x3fded7e02645e4e7              # double 0.48192600000000002
	.quad	0x3fc46de76427c7c5              # double 0.159604
	.quad	0x3fefe113404ea4a9              # double 0.99622500000000002
	.quad	0x3fbfea4ebdd334c6              # double 0.124669
	.quad	0x3febcb33daf8df7a              # double 0.86855499999999997
	.quad	0x3fd2644523f67f4e              # double 0.28737000000000001
	.quad	0x3fc9983947496aad              # double 0.199958
	.quad	0x3fd51b866e43aa7a              # double 0.32980500000000001
	.quad	0x3fed941a6937d1fe              # double 0.92432899999999996
	.quad	0x3fe11ce8d972cd7d              # double 0.534779
	.quad	0x3fd3df69878316a0              # double 0.31051099999999998
	.quad	0x3fd74df8b1572581              # double 0.36413400000000001
	.quad	0x3fe9fa69be09bb6b              # double 0.81181800000000004
	.quad	0x3f7eb851eb851eb8              # double 0.0074999999999999997
	.quad	0x3fc074afd5454153              # double 0.12856100000000001
	.quad	0x3fb8a41a261bf37c              # double 0.096254000000000006
	.quad	0x3fe69a027525460b              # double 0.70630000000000004
	.quad	0x3fe0b5ac8a372607              # double 0.522177
	.quad	0x3fc943e963dc486b              # double 0.197385
	.quad	0x3feaa5870da5daf0              # double 0.83270599999999995
	.quad	0x3fe1a877ee4e26d5              # double 0.55181500000000006
	.quad	0x3fe9e6256366d7a5              # double 0.80934399999999995
	.quad	0x3fd3abe6a337a80d              # double 0.307367
	.quad	0x3fdb6d7a56de3327              # double 0.42855700000000002
	.quad	0x3fe053825e13b18e              # double 0.51019400000000004
	.quad	0x3fa0c1fc8f32378b              # double 0.032730000000000002
	.quad	0x3fec5ee78183f91e              # double 0.88658499999999996
	.quad	0x3fe0240b780346dc              # double 0.50439999999999996
	.quad	0x3f8bcb1cc9646280              # double 0.013571
	.quad	0x3fbbcac8e68e3ef3              # double 0.10856300000000001
	.quad	0x3fefd814940bbb1f              # double 0.99512699999999998
	.quad	0x3fe04729f59ccfaf              # double 0.508687
	.quad	0x3fecfed20296b335              # double 0.90610599999999997
	.quad	0x3fcba8deb0fadf2f              # double 0.21609100000000001
	.quad	0x3fcbd07c84b5dcc6              # double 0.21729999999999999
	.quad	0x3fd922d948dc11e4              # double 0.39275199999999999
	.quad	0x3fb27be553ac4f7f              # double 0.072203000000000003
	.quad	0x3fd9485e3da2f8be              # double 0.395042
	.quad	0x3fc07f77af64063a              # double 0.12889
	.quad	0x3fddd834091c0874              # double 0.46632099999999999
	.quad	0x3fe851f3e89a88ad              # double 0.76000400000000001
	.quad	0x3fe13764f11b60af              # double 0.53801200000000005
	.quad	0x3fc1d1569f490603              # double 0.13920099999999999
	.quad	0x3fb8432ca57a786c              # double 0.094774999999999998
	.quad	0x3fd5e56473471f79              # double 0.34212599999999999
	.quad	0x3fac031487768167              # double 0.054711000000000003
	.quad	0x3fdf8d2a1f8e3ac1              # double 0.49299100000000001
	.quad	0x3fc2d2674080f990              # double 0.14704600000000001
	.quad	0x3fe917e34b945309              # double 0.78416600000000003
	.quad	0x3fe6e4bec679cc75              # double 0.71542300000000003
	.quad	0x3fe98d002e2328fa              # double 0.79846200000000001
	.quad	0x3fda6612839042d9              # double 0.41248000000000001
	.quad	0x3fe558665e02ea96              # double 0.667041
	.quad	0x3fe1c24a276b7ed4              # double 0.55496699999999999
	.quad	0x3fea6d7625204af9              # double 0.82586199999999999
	.quad	0x3fdad1dcd7060bb3              # double 0.41905900000000001
	.quad	0x3feead3e920c069e              # double 0.95864799999999994
	.quad	0x3fd51094a2b9d3cc              # double 0.32913700000000001
	.quad	0x3fd78bcdfefbf402              # double 0.36790800000000001
	.quad	0x3fdb6e58a32f4491              # double 0.42860999999999999
	.quad	0x3fd98f6cefed6345              # double 0.39937899999999998
	.quad	0x3fde1ca7d6733ebc              # double 0.470499
	.quad	0x3fefeea63b688bdb              # double 0.99788200000000004
	.quad	0x3fdc8d759ee88df3              # double 0.44613399999999998
	.quad	0x3fea373083558a76              # double 0.81923699999999999
	.quad	0x3f216ebd4cfd08d5              # double 1.3300000000000001E-4
	.quad	0x3fa3c7b45f17bd8c              # double 0.038633000000000001
	.quad	0x3fe00270f3882279              # double 0.50029800000000002
	.quad	0x3fe66102795703f3              # double 0.69934200000000002
	.quad	0x3fd4553ef6b5d463              # double 0.31770300000000001
	.quad	0x3fc18665e02ea961              # double 0.13691400000000001
	.quad	0x3fb0317acc4ef88c              # double 0.063255000000000006
	.quad	0x3fe40b827fa1a0cf              # double 0.62640499999999999
	.quad	0x3fd973b42cc2d6aa              # double 0.39768700000000001
	.quad	0x3fc60114d2f5dbba              # double 0.17190800000000001
	.quad	0x3febbf91e646f156              # double 0.86713499999999999
	.quad	0x3fd4945308bb9064              # double 0.32155299999999998
	.quad	0x3fe4fe9531550ca2              # double 0.65607700000000002
	.quad	0x3fe399b6f5caf2d8              # double 0.612514
	.quad	0x3fc8ae297396d091              # double 0.19281499999999999
	.quad	0x3fdb9f5dfeb8d823              # double 0.43160199999999999
	.quad	0x3fd9cc63f141205c              # double 0.40310000000000001
	.quad	0x3feee3fbbd7b2032              # double 0.96533000000000002
	.quad	0x3fa851a86940357a              # double 0.047497999999999999
	.quad	0x3fecf735c182ecaf              # double 0.90517700000000001
	.quad	0x3fb7901083dbc233              # double 0.092041999999999999
	.quad	0x3fd264bec679cc75              # double 0.28739900000000002
	.quad	0x3fe2562bf11f926c              # double 0.57301899999999995
	.quad	0x3f8881a1554fbdad              # double 0.011965999999999999
	.quad	0x3fd5a7eb6bf444e1              # double 0.33837400000000001
	.quad	0x3fd1db5525cc4263              # double 0.27901199999999998
	.quad	0x3fc9fc43b2dd377e              # double 0.203011
	.quad	0x3fe05d6e04c05921              # double 0.511405
	.quad	0x3fd26d58c8eef1bb              # double 0.28792400000000001
	.quad	0x3fe8172abef06b38              # double 0.75282800000000005
	.quad	0x3fe0381d7dbf4880              # double 0.50685000000000002
	.quad	0x3fea984a0e410b63              # double 0.83109
	.quad	0x3fe405ea24cc6823              # double 0.625722
	.quad	0x3fed7a22706d5065              # double 0.92115899999999995
	.quad	0x3f93f1c75818c5ca              # double 0.019477000000000001
	.quad	0x3fd3c62e4d1a6506              # double 0.308971
	.quad	0x3fb7dfd2630ec311              # double 0.093258999999999995
	.quad	0x3fe60a393ee5eedd              # double 0.68874800000000003
	.quad	0x3fe6c840e1719f80              # double 0.71194500000000005
	.quad	0x3fe0007dd4413554              # double 0.50005999999999995
	.quad	0x3fc7d041cc532a49              # double 0.18604299999999999
	.quad	0x3fe7358afc47e49b              # double 0.72528599999999999
	.quad	0x3fe74436fc158fb4              # double 0.72707699999999997
	.quad	0x3fdcb0ea18372e6a              # double 0.44829799999999997
	.quad	0x3fe927ded6ba8c58              # double 0.78611699999999995
	.quad	0x3fed7fcfc3f811f5              # double 0.921852
	.quad	0x3fdc4c48adeebb34              # double 0.44215599999999999
	.quad	0x3fb7e1437c5692b4              # double 0.093281000000000003
	.quad	0x3fb4c9ea9a3d2d88              # double 0.081206
	.quad	0x3fecc165907d9125              # double 0.89860799999999996
	.quad	0x3fef5ec3dab5c39c              # double 0.98031800000000002
	.quad	0x3fe30ba83f4eca68              # double 0.59517299999999995
	.quad	0x3fe53d9cae21101b              # double 0.663771
	.quad	0x3fe41f6cacd184c2              # double 0.62883599999999995
	.quad	0x3fe33b44e50c5eb3              # double 0.60098499999999999
	.quad	0x3fc4a3d70a3d70a4              # double 0.16125
	.quad	0x3fe69b62c77574f7              # double 0.70646799999999998
	.quad	0x3fed8bbb1f255f35              # double 0.92330699999999999
	.quad	0x3fe13250b524399b              # double 0.53739199999999998
	.quad	0x3fbcee9dd7ecbb80              # double 0.11301600000000001
	.quad	0x3fec83ad9f0a1be3              # double 0.89107400000000003
	.quad	0x3fab21815a07b353              # double 0.052990000000000002
	.quad	0x3fbfc243dccea290              # double 0.124058
	.quad	0x3fe885015c209247              # double 0.76623600000000003
	.quad	0x3fe6045baf533f42              # double 0.68803199999999998
	.quad	0x3fdff81626b2f230              # double 0.49951699999999999
	.quad	0x3fd33c148344c37e              # double 0.30054199999999998
	.quad	0x3fe02fa5093964a6              # double 0.50581600000000004
	.quad	0x3fd48eb0318b9347              # double 0.32120900000000002
	.quad	0x3fea0c282c6ef3d4              # double 0.81398400000000004
	.quad	0x3fd9fa3fcc9ea9a4              # double 0.40589900000000001
	.quad	0x3feefba450acc0be              # double 0.96821800000000002
	.quad	0x3fd530e7ff583a54              # double 0.33111000000000002
	.quad	0x3fe9591eeaa6d267              # double 0.79212899999999997
	.quad	0x3fe5404c8bc9cd3e              # double 0.66409899999999999
	.quad	0x3fd45b7cfe586013              # double 0.31808399999999998
	.quad	0x3fb08d9f90539fba              # double 0.064660999999999996
	.quad	0x3feacf52b90a7829              # double 0.837808
	.quad	0x3fa13ff25e56cd6c              # double 0.033690999999999999
	.quad	0x3fe38a73f748a15a              # double 0.61065100000000005
	.quad	0x3fdb69e7fb267c6c              # double 0.42833900000000003
	.quad	0x3fe18fadf2ecf206              # double 0.54878899999999997
	.quad	0x3fe2a5b317efe0ce              # double 0.58272699999999999
	.quad	0x3fd81815a07b352b              # double 0.37647000000000003
	.quad	0x3fc5f9c62a1b5c7d              # double 0.171685
	.quad	0x3fead627bf61aa3f              # double 0.838642
	.quad	0x3fe92ec28b2a6b0e              # double 0.78695800000000005
	.quad	0x3fd1f3bea91d9b1b              # double 0.28050199999999997
	.quad	0x3fc754866a11ec92              # double 0.18226700000000001
	.quad	0x3fe690880d801b43              # double 0.70514299999999996
	.quad	0x3fd7a311e85fd04a              # double 0.36932799999999999
	.quad	0x3f6fb82c2bd7f51f              # double 0.003872
	.quad	0x3fe0b62a5e785b5b              # double 0.52223699999999995
	.quad	0x3fea03b3e9a6f827              # double 0.81295200000000001
	.quad	0x3fbe97bfa4c61d86              # double 0.119503
	.quad	0x3fc44ec636b09635              # double 0.15865399999999999
	.quad	0x3fe39f16b11c6d1e              # double 0.61316999999999999
	.quad	0x3fc597353b4b2fa9              # double 0.16867699999999999
	.quad	0x3fcb084e831ad213              # double 0.21119099999999999
	.quad	0x3fbedb2f661f18ca              # double 0.120532
	.quad	0x3fe1f1b0468448cf              # double 0.56075299999999995
	.quad	0x3fef5d8f92af9a8d              # double 0.98017100000000001
	.quad	0x3fe5752da98676a7              # double 0.67055399999999998
	.quad	0x3fe37911cf355cd9              # double 0.60852899999999999
	.quad	0x3fdf9c0229a5ebb7              # double 0.49389699999999997
	.quad	0x3fedb85e80bed741              # double 0.92875600000000003
	.quad	0x3fd44fd6d7e889c2              # double 0.31737300000000002
	.quad	0x3fe03e27179bfdf8              # double 0.50758700000000001
	.quad	0x3f99ed7c6fbd273d              # double 0.025319999999999999
	.quad	0x3fe9de2046c764ae              # double 0.808365
	.quad	0x3fd6024b33daf8df              # double 0.34388999999999997
	.quad	0x3fc46b15f88fc936              # double 0.15951799999999999
	.quad	0x3fe970c996b7670a              # double 0.795018
	.quad	0x3fe4486ad2dcb146              # double 0.63383999999999996
	.quad	0x3fcbda72a7bd48cb              # double 0.21760399999999999
	.quad	0x3fdb71ef30a4e37a              # double 0.42882900000000002
	.quad	0x3fc341f212d77319              # double 0.15045
	.quad	0x3fd9299524bfd2e9              # double 0.39316299999999998
	.quad	0x3fdcc7820a30db6a              # double 0.44967699999999999
	.quad	0x3fd4434e3369b9d8              # double 0.316608
	.quad	0x3fa2c4f7ec3547e0              # double 0.036658999999999997
	.quad	0x3fed2355043e5322              # double 0.91056300000000001
	.quad	0x3fe0c148344c37e7              # double 0.523594
	.quad	0x3fdc077036c9c0a9              # double 0.43795400000000001
	.quad	0x3fd7420f6f08cc57              # double 0.36340699999999998
	.quad	0x3fed7f562174c4ce              # double 0.921794
	.quad	0x3fd28b3700474d9c              # double 0.28974699999999998
	.quad	0x3fef8df7a4e7ab75              # double 0.98607999999999995
	.quad	0x3fe2b45cfede97d0              # double 0.58451699999999995
	.quad	0x3fe22b81f969e3c9              # double 0.56781099999999995
	.quad	0x3fd9539b8887229f              # double 0.39572800000000002
	.quad	0x3fed447e49b1fab9              # double 0.91461099999999995
	.quad	0x3fec9858bc59b802              # double 0.89359699999999997
	.quad	0x3fdab2314013ec46              # double 0.417126
	.quad	0x3fd7cdc011d3671b              # double 0.37193300000000001
	.quad	0x3fe203a109d0635a              # double 0.56294299999999997
	.quad	0x3feeaf922962cfd9              # double 0.958932
	.quad	0x3fea90e23af31b15              # double 0.83018599999999998
	.quad	0x3fd8361565c2d278              # double 0.378301
	.quad	0x3fe116b97fe8ee6c              # double 0.53402400000000005
	.quad	0x3fd33a797891e215              # double 0.30044399999999999
	.quad	0x3fdcc9fb6134ce3e              # double 0.44982800000000001
	.quad	0x3fe9e97d06bbdbe4              # double 0.80975200000000002
	.quad	0x3fe06df1e0828c37              # double 0.51342100000000002
	.quad	0x3fd3b267c6b8b695              # double 0.30776399999999998
	.quad	0x3fef7316e3715400              # double 0.98279899999999998
	.quad	0x3fde7e6b3fe9fadb              # double 0.476466
	.quad	0x3feb1cb46bacf744              # double 0.84725399999999995
	.quad	0x3fa17b95a294141f              # double 0.034146000000000003
	.quad	0x3fda6045baf533f4              # double 0.41212599999999999
	.quad	0x3fe87d71b0468449              # double 0.76531300000000002
	.quad	0x3fce35371971c10d              # double 0.23599899999999999
	.quad	0x3feecd7f0ed3d85a              # double 0.96258500000000002
	.quad	0x3fe58746455eaee2              # double 0.672763
	.quad	0x3fc72fb19e731d2e              # double 0.181143
	.quad	0x3fa40fa9c12f09d9              # double 0.039182000000000002
	.quad	0x3fdf4d8fd5cb7910              # double 0.48910900000000002
	.quad	0x3fc1d21ff2e48e8a              # double 0.13922499999999999
	.quad	0x3fd396a26e547171              # double 0.30606899999999998
	.quad	0x3fe54284dfce3151              # double 0.66437000000000002
	.quad	0x3f8609dcf893faf4              # double 0.010761
	.quad	0x3fe1c057082491b0              # double 0.55472900000000003
	.quad	0x3fedf23cc8de2ac3              # double 0.93581999999999999
	.quad	0x3fe5b78ee2867275              # double 0.67865699999999995
	.quad	0x3fde2f405f6ba062              # double 0.471634
	.quad	0x3fee24d099e0e736              # double 0.941994
	.quad	0x3f2abd1aa821f299              # double 2.04E-4
	.quad	0x3fcf96bfca85cab0              # double 0.24678800000000001
	.quad	0x3fa08fc9363f572e              # double 0.032347000000000001
	.quad	0x3feb066c2acb85a5              # double 0.84453400000000001
	.quad	0x3fe325c5f7c6759b              # double 0.59836100000000003
	.quad	0x3fe9374ddf86e3b4              # double 0.78800099999999995
	.quad	0x3fc550a88effe2a4              # double 0.16652400000000001
	.quad	0x3fc2dcca70d1fa33              # double 0.14736299999999999
	.quad	0x3fefc0af1cb89d6b              # double 0.99227100000000001
	.quad	0x3fefed80a17b0f6b              # double 0.99774200000000001
	.quad	0x3fdf024f6598e10d              # double 0.484516
	.quad	0x3fe85b1a6d698fe7              # double 0.76112100000000005
	.quad	0x3fc109070fbeb9e5              # double 0.13308800000000001
	.quad	0x3fb91654d61b2a28              # double 0.097997000000000001
	.quad	0x3fd0612c6ac215ba              # double 0.25593100000000002
	.quad	0x3fcb9513f8db4891              # double 0.21548700000000001
	.quad	0x3fe2141205bc01a3              # double 0.56494999999999995
	.quad	0x3fe9048e043a2164              # double 0.781806
	.quad	0x3fed2df9378ee286              # double 0.91186199999999995
	.quad	0x3feffd1782d38477              # double 0.999645
	.quad	0x3feb3cfb3311a544              # double 0.851194
	.quad	0x3fe27156191148fe              # double 0.57633500000000004
	.quad	0x3fe9b6eb4e981388              # double 0.80357900000000004
	.quad	0x3fe827503b81b64e              # double 0.754799
	.quad	0x3feab524399b2c41              # double 0.83461200000000002
	.quad	0x3fe856a593a2df93              # double 0.76057699999999995
	.quad	0x3fc5c62a1b5c7cd9              # double 0.17011000000000001
	.quad	0x3fedb8cda6e75ff6              # double 0.928809
	.quad	0x3fc04cf0739b024f              # double 0.12734799999999999
	.quad	0x3f99f7f8ca8198f2              # double 0.025360000000000001
	.quad	0x3fed9e83e425aee6              # double 0.92559999999999998
	.quad	0x3fdeefbb0e5e6794              # double 0.48338199999999998
	.quad	0x3fe23ac2df0d4131              # double 0.56967299999999998
	.quad	0x3fe3106466b1e5c1              # double 0.59575100000000003
	.quad	0x3fd894bbe4473cd5              # double 0.38407799999999997
	.quad	0x3fc547c73eee5259              # double 0.16625300000000001
	.quad	0x3fd1dbbe0157eed4              # double 0.27903699999999998
	.quad	0x3fe41f4f50a02b84              # double 0.62882199999999999
	.quad	0x3fe438cfbfc6540d              # double 0.63193500000000002
	.quad	0x3fe1fc5479d4d834              # double 0.562052
	.quad	0x3fbe49906cca2db6              # double 0.11831
	.quad	0x3fc9603925bb7b6c              # double 0.19824900000000001
	.quad	0x3fe781c714fce747              # double 0.73459200000000002
	.quad	0x3fe2d004fb1183b6              # double 0.587893
	.quad	0x3fea115592d98bf8              # double 0.81461600000000001
	.quad	0x3fefaedfe75bc44c              # double 0.990097
	.quad	0x3feb0d38cda6e760              # double 0.845364
	.quad	0x3fcb2c6ac215b9a6              # double 0.21229300000000001
	.quad	0x3fd4b1d4f9c1f85d              # double 0.32335399999999997
	.quad	0x3fbd6d19dece5711              # double 0.11494600000000001
	.quad	0x3fe0e6362a5e785b              # double 0.52810199999999996
	.quad	0x3fd0a0ec74320104              # double 0.259822
	.quad	0x3fb25119ce075f70              # double 0.071550000000000002
	.quad	0x3fe76aca79357604              # double 0.73178600000000005
	.quad	0x3fef634117f8444a              # double 0.98086600000000002
	.quad	0x3fd9da272862f599              # double 0.40394000000000002
	.quad	0x3fc5214f0520d131              # double 0.165079
	.quad	0x3fe14e28ed5f138c              # double 0.54079100000000002
	.quad	0x3fe6efbb0e5e6794              # double 0.71676399999999996
	.quad	0x3fdfa682b6284599              # double 0.49453799999999998
	.quad	0x3fe451fa333764f1              # double 0.63500699999999999
	.quad	0x3fd670f3882278d1              # double 0.35064400000000001
	.quad	0x3fe6b4d26fa3fcca              # double 0.70957300000000001
	.quad	0x3fc3a42f1ed17c5f              # double 0.153448
	.quad	0x3fdec9d9d3458cd2              # double 0.48107
	.quad	0x3fd01b21c475e636              # double 0.25165599999999999
	.quad	0x3fd1214ad362e903              # double 0.26765699999999998
	.quad	0x3fe53cd141a6937d              # double 0.66367399999999999
	.quad	0x3fe345ae5ffa3b9b              # double 0.60225600000000001
	.quad	0x3fe967f4dbdf8f47              # double 0.79393999999999998
	.quad	0x3fac898f605ab3ab              # double 0.055737000000000002
	.quad	0x3fe077a4e7ab7564              # double 0.51460499999999998
	.quad	0x3fc0ef240fa9c12f              # double 0.132298
	.quad	0x3fd0b10342aa9f7b              # double 0.26080399999999998
	.quad	0x3fd7310129cbab65              # double 0.36236600000000002
	.quad	0x3fc2cae642bf9831              # double 0.146817
	.quad	0x3fe379a06a6e32e4              # double 0.60859700000000005
	.quad	0x3fec4e9813879c41              # double 0.88459399999999999
	.quad	0x3fc951d68c692f6f              # double 0.19781000000000001
	.quad	0x3fdbb3e1437c5693              # double 0.43285400000000002
	.quad	0x3fdec8cd63cb8173              # double 0.48100599999999999
	.quad	0x3fdc47ae147ae148              # double 0.44187500000000002
	.quad	0x3fd153c9abb01c93              # double 0.27073900000000001
	.quad	0x3fd6c87980f55de6              # double 0.35598600000000002
	.quad	0x3fdd49f94855da27              # double 0.45763999999999999
	.quad	0x3fd15da6a4441787              # double 0.271341
	.quad	0x3fc0b08dd1e53a82              # double 0.130388
	.quad	0x3fee883126e978d5              # double 0.954125
	.quad	0x3fe458904f6dfc5d              # double 0.63581100000000002
	.quad	0x3fed38b69552e2fc              # double 0.91317300000000001
	.quad	0x3feef40c4156e265              # double 0.96729100000000001
	.quad	0x3feaeaaf35e310dc              # double 0.841148
	.quad	0x3fed037d63022dd8              # double 0.90667600000000004
	.quad	0x3fdd64c729f59cd0              # double 0.45927600000000002
	.quad	0x3fd699780baa582e              # double 0.35311700000000001
	.quad	0x3fd5b5fa22706d50              # double 0.33923199999999998
	.quad	0x3fe2f2d7f950b956              # double 0.592144
	.quad	0x3fe23ff8a8f3a9b0              # double 0.57030899999999995
	.quad	0x3fed05553ef6b5d4              # double 0.90690099999999995
	.quad	0x3f5f75104d551d69              # double 0.00192
	.quad	0x3fd0986b9c304ccf              # double 0.25930300000000001
	.quad	0x3fe5ade00d1b7176              # double 0.67747500000000005
	.quad	0x3fb4bf4cb1897a68              # double 0.081044000000000005
	.quad	0x3f7f969e3c968944              # double 0.0077120000000000001
	.quad	0x3f9052d666a98245              # double 0.015941
	.quad	0x3fec7b3d8e000863              # double 0.89004399999999995
	.quad	0x3fe3e75ff609dcf9              # double 0.62199400000000005
	.quad	0x3fe3c5f394b7b289              # double 0.61791399999999996
	.quad	0x3fe624b76f6d7625              # double 0.69198199999999999
	.quad	0x3fee5d3bafd976ff              # double 0.94888099999999997
	.quad	0x3feb21e81cb46bad              # double 0.847889
	.quad	0x3fef7ef7c243dccf              # double 0.98424900000000004
	.quad	0x3fd95069a4df47fa              # double 0.39553300000000002
	.quad	0x3fe3748c2e770bd0              # double 0.60797699999999999
	.quad	0x3fd49abb01c92ddc              # double 0.32194400000000001
	.quad	0x3fdd1ae70c1333b9              # double 0.45476699999999998
	.quad	0x3fe6f89c5e6ff7e0              # double 0.71784800000000004
	.quad	0x3fe77080303c07ee              # double 0.732483
	.quad	0x3fd07cd466f5019f              # double 0.25761899999999999
	.quad	0x3fe6835158b827fa              # double 0.70352999999999999
	.quad	0x3f78409e55c0fcb5              # double 0.005921
	.quad	0x3fefe1e0c5a8155d              # double 0.99632299999999995
	.quad	0x3fea0bd66277c45d              # double 0.81394500000000003
	.quad	0x3fdae1ac57e23f25              # double 0.42002400000000001
	.quad	0x3fd079c842fa5094              # double 0.25743300000000002
	.quad	0x3fe4a2ab25b317f0              # double 0.64485700000000001
	.quad	0x3fb4672756861e93              # double 0.079699000000000006
	.quad	0x3f93382e44b6e936              # double 0.018769000000000001
	.quad	0x3fefdf633ce63a5c              # double 0.99601899999999998
	.quad	0x3fd18beb5b2d4d40              # double 0.27416499999999999
	.quad	0x3fd2ca36199780bb              # double 0.29359200000000002
	.quad	0x3f93c148344c37e7              # double 0.019292
	.quad	0x3fcbad8e432441ff              # double 0.21623400000000001
	.quad	0x3fbe6937d1fe64f5              # double 0.118793
	.quad	0x3fe9cfdf3b645a1d              # double 0.80662500000000004
	.quad	0x3feef1d81f106680              # double 0.96702200000000005
	.quad	0x3fe75d11be6e6538              # double 0.73011099999999995
	.quad	0x3fe5518090b417ca              # double 0.66619899999999999
	.quad	0x3fe69e4d5d80e497              # double 0.70682400000000001
	.quad	0x3fdedd93c46d82ba              # double 0.48227399999999998
	.quad	0x3fef1159c4977425              # double 0.97086799999999995
	.quad	0x3fe983b3e9a6f827              # double 0.79732700000000001
	.quad	0x3fe55f15a4acf313              # double 0.66785700000000003
	.quad	0x3fda8adeebb341e1              # double 0.41472599999999998
	.quad	0x3fb902eec7c957cd              # double 0.097700999999999996
	.quad	0x3fd6b53d640e9d52              # double 0.35481200000000002
	.quad	0x3fe2c64fdb09a672              # double 0.58670800000000001
	.quad	0x3fe2ec892ab68cef              # double 0.59137399999999996
	.quad	0x3fe6aec0724b76f7              # double 0.70883200000000002
	.quad	0x3fd6cc07aaef2c73              # double 0.35620299999999999
	.quad	0x3fdacb20fb224aae              # double 0.41864800000000002
	.quad	0x3fd261c36976bc1f              # double 0.287217
	.quad	0x3fc29014b599aa61              # double 0.14502200000000001
	.quad	0x3feccb4070329803              # double 0.89981100000000003
	.quad	0x3fee39628cbd1245              # double 0.94450500000000004
	.quad	0x3fe23d76ee73e682              # double 0.57000300000000004
	.quad	0x3fef9c58255b035c              # double 0.98783500000000001
	.quad	0x3fcbfc86cebbba56              # double 0.21864400000000001
	.quad	0x3fdcb44a1f080304              # double 0.44850400000000001
	.quad	0x3fe628cdea033e79              # double 0.69248100000000001
	.quad	0x3fe2338d60a63305              # double 0.56879299999999999
	.quad	0x3fb413879c4113c7              # double 0.078423000000000007
	.quad	0x3fece833c60029f1              # double 0.90334499999999995
	.quad	0x3fcc0a41a261bf38              # double 0.21906300000000001
	.quad	0x3fe961da7b0b3919              # double 0.79319499999999998
	.quad	0x3feefc0096feb4a6              # double 0.96826199999999996
	.quad	0x3fc451d25aab4741              # double 0.158747
	.quad	0x3fd08ae74f2f123c              # double 0.25847799999999999
	.quad	0x3fd9f5a1016ce78a              # double 0.40561700000000001
	.quad	0x3fdaa9b8cb8e086c              # double 0.41660900000000001
	.quad	0x3fe390cb295e9e1b              # double 0.611425
	.quad	0x3fe874f0d844d014              # double 0.76427500000000003
	.quad	0x3feb2cf0f9d2bf55              # double 0.84923599999999999
	.quad	0x3fd8b2aae297396d              # double 0.385905
	.quad	0x3fc1de0d66f0cfe1              # double 0.13958899999999999
	.quad	0x3fea73cd573647bb              # double 0.82663600000000004
	.quad	0x3fdf25247cb70ac4              # double 0.48664200000000002
	.quad	0x3fe8e41b328b6d87              # double 0.77784500000000001
	.quad	0x3fdb6638433d6c72              # double 0.42811399999999999
	.quad	0x3fe0e3bcd35a8588              # double 0.52780000000000005
	.quad	0x3fefd7214f0520d1              # double 0.99501099999999997
	.quad	0x3fe659c8c9320d99              # double 0.69845999999999997
	.quad	0x3fd6bd48cb4aec8d              # double 0.35530299999999998
	.quad	0x3fed168b5cbff477              # double 0.90900199999999998
	.quad	0x3fb59791819d2392              # double 0.084344000000000002
	.quad	0x3fe346fdeb52c9d1              # double 0.60241599999999995
	.quad	0x3fcccaf709b738e7              # double 0.22494400000000001
	.quad	0x3fee12ee84ad794a              # double 0.93981099999999995
	.quad	0x3fdfbb2fec56d5d0              # double 0.49580000000000002
	.quad	0x3fa8cbf2b239a390              # double 0.048431000000000002
	.quad	0x3feed86013660e52              # double 0.96391300000000002
	.quad	0x3fdeb3d8e0008638              # double 0.47972700000000001
	.quad	0x3fd6216c61522a6f              # double 0.34578999999999999
	.quad	0x3feaeca03c4b09ea              # double 0.84138500000000005
	.quad	0x3fe51eb6390c9108              # double 0.659999
	.quad	0x3fdd3c85c24c404a              # double 0.45681899999999998
	.quad	0x3fe1ebf22c01e68a              # double 0.56005199999999999
	.quad	0x3fd5e92923e5b856              # double 0.34235599999999999
	.quad	0x3fcf2849cb252ce0              # double 0.24341699999999999
	.quad	0x3fc76262cba732df              # double 0.18268999999999999
	.quad	0x3fe1c1bb8c32a8ca              # double 0.55489900000000003
	.quad	0x3fe6d306a2b17050              # double 0.71326000000000001
	.quad	0x3fe4e9984a0e410b              # double 0.65351499999999996
	.quad	0x3fddca07f66e86c6              # double 0.46545599999999998
	.quad	0x3f9c9107faa044af              # double 0.027897000000000002
	.quad	0x3fe37ef5a964e8b8              # double 0.60924800000000001
	.quad	0x3fc9a37ef5a964e9              # double 0.20030200000000001
	.quad	0x3fc735daad601ffb              # double 0.18133099999999999
	.quad	0x3fe8ed58c8eef1bb              # double 0.77897300000000003
	.quad	0x3fac9f72f76e6107              # double 0.055904000000000002
	.quad	0x3fde801b43526528              # double 0.47656900000000002
	.quad	0x3fbcebdd334c5da7              # double 0.112974
	.quad	0x3fd11711947cfa27              # double 0.26703300000000002
	.quad	0x3fd4e10060780fdc              # double 0.326233
	.quad	0x3fd173797460242d              # double 0.272673
	.quad	0x3fea30941c8216c6              # double 0.81842999999999999
	.quad	0x3fef8d4bad7d7c2d              # double 0.98599800000000004
	.quad	0x3feb512cadddf43c              # double 0.85365899999999994
	.quad	0x3fd2dd54da4ce810              # double 0.29475899999999999
	.quad	0x3feed45846e8f29d              # double 0.96342099999999997
	.quad	0x3f9c0096feb4a665              # double 0.027345999999999999
	.quad	0x3fc953bd1676640a              # double 0.19786799999999999
	.quad	0x3fcceb1c432ca57a              # double 0.22592499999999999
	.quad	0x3fd63a1d323fee2d              # double 0.34729700000000002
	.quad	0x3fe91d0635a426bb              # double 0.78479299999999996
	.quad	0x3fe7b4d48882f0e1              # double 0.74082400000000004
	.quad	0x3fdf3da72a7bd48d              # double 0.48813800000000002
	.quad	0x3facdfce3150dae4              # double 0.056395000000000001
	.quad	0x3fe441a6937d1fe6              # double 0.63301399999999997
	.quad	0x3fcb3a797891e215              # double 0.21272199999999999
	.quad	0x3fe19e12a51e321a              # double 0.55054599999999998
	.quad	0x3fc7bf0dc768dfbd              # double 0.18551799999999999
	.quad	0x3fc2b90214ad362f              # double 0.14627100000000001
	.quad	0x3fc968b5cbff4773              # double 0.19850799999999999
	.quad	0x3fefb54e2b063e08              # double 0.99088200000000004
	.quad	0x3fb0746455eaee20              # double 0.064276
	.quad	0x3faf3eccc46950fc              # double 0.061025999999999997
	.quad	0x3fe2511be6e65387              # double 0.57240100000000005
	.quad	0x3fe1adb1e9f27781              # double 0.55245299999999997
	.quad	0x3fea221a719b4dcf              # double 0.81666300000000003
	.quad	0x3fd214ad362e9036              # double 0.28251199999999999
	.quad	0x3fe3593e5fb71fbc              # double 0.60464399999999996
	.quad	0x3fe07def8487b99d              # double 0.51537299999999997
	.quad	0x3fe6ea78af3e468d              # double 0.71612200000000004
	.quad	0x3fe88379314445aa              # double 0.76604899999999998
	.quad	0x3feada6c5d206c87              # double 0.83916299999999999
	.quad	0x3fb819f3c70c996b              # double 0.094145999999999994
	.quad	0x3fe31042d8c2a455              # double 0.59573500000000001
	.quad	0x3fe36dc3bd599243              # double 0.60714900000000005
	.quad	0x3fd9e0f3cb3e5754              # double 0.40435500000000002
	.quad	0x3fecf08461f9f01c              # double 0.90436000000000005
	.quad	0x3fbc3e63e8dda48b              # double 0.11032699999999999
	.quad	0x3fc86bb55ac03ff7              # double 0.19078700000000001
	.quad	0x3fea2d03d9a95422              # double 0.81799500000000003
	.quad	0x3fcd9d99029ae4f3              # double 0.23137199999999999
	.quad	0x3fd803bc4d22c882              # double 0.37522800000000001
	.quad	0x3fef7262888b545c              # double 0.98271299999999994
	.quad	0x3fcb708aac96cc60              # double 0.21437200000000001
	.quad	0x3fce9a6f826edaa9              # double 0.23908799999999999
	.quad	0x3fbe99b6f5caf2d8              # double 0.119533
	.quad	0x3fdf1083dbc23316              # double 0.48538300000000001
	.quad	0x3fc5a75cd0bb6ed6              # double 0.16916999999999999
	.quad	0x3fd45e13b18dac26              # double 0.31824200000000002
	.quad	0x3fc5f327aa68f4b6              # double 0.171483
	.quad	0x3fb0c6c54bcf0b6b              # double 0.065532999999999994
	.quad	0x3fd823fee2c98e54              # double 0.377197
	.quad	0x3fe6362c77574f72              # double 0.69411299999999998
	.quad	0x3fc8ab9b23dd54da              # double 0.19273699999999999
	.quad	0x3fe6437e6f71a7e3              # double 0.695739
	.quad	0x3fed819f3c70c997              # double 0.92207300000000003
	.quad	0x3fddf7985271bcdc              # double 0.46823700000000001
	.quad	0x3fdd2d8c2a454de8              # double 0.455905
	.quad	0x3feef601797cc3a0              # double 0.96753
	.quad	0x3fe10ffb8b263950              # double 0.53320100000000004
	.quad	0x3fd07e0ac7da1ec5              # double 0.25769300000000001
	.quad	0x3fc55e5aff2a172b              # double 0.16694200000000001
	.quad	0x3faf0110a137f38c              # double 0.060554999999999998
	.quad	0x3fe618f1d3ed527e              # double 0.69054499999999996
	.quad	0x3fe992146a1a500d              # double 0.79908199999999996
	.quad	0x3fdab4a66559f6ec              # double 0.41727599999999998
	.quad	0x3fe9460ed80a17b1              # double 0.789802
	.quad	0x3fe38029f16b11c7              # double 0.60939500000000002
	.quad	0x3fbd2f7f498c3b0c              # double 0.114006
	.quad	0x3fed9e2de8709742              # double 0.92555900000000002
	.quad	0x3fedcea4a8c154ca              # double 0.93147500000000005
	.quad	0x3fec165907d91255              # double 0.87772799999999995
	.quad	0x3fc77c0b13597918              # double 0.183473
	.quad	0x3fe7c8f32378ab0d              # double 0.74328000000000005
	.quad	0x3feced06fef7c244              # double 0.90393400000000001
	.quad	0x3fc34940bbb1f256              # double 0.150673
	.quad	0x3fda28997c3d6840              # double 0.40872799999999998
	.quad	0x3fd4374bc6a7ef9e              # double 0.31587500000000002
	.quad	0x3fa7952d234eb9a1              # double 0.046059999999999997
	.quad	0x3fe8fcf5f4e4430b              # double 0.78087899999999999
	.quad	0x3feacb81733226c4              # double 0.83734200000000003
	.quad	0x3fe413fd0d0678c0              # double 0.62744
	.quad	0x3fd9d3910c2c5e2d              # double 0.40353800000000001
	.quad	0x3fe50dc55000c954              # double 0.65793100000000004
	.quad	0x3fd26801711947d0              # double 0.28759800000000002
	.quad	0x3fd2027525460aa6              # double 0.28139999999999998
	.quad	0x3feaef4e0114d2f6              # double 0.84171200000000002
	.quad	0x3fe68ae74f2f123c              # double 0.70445599999999997
	.quad	0x3fdb3c1ce6c093d9              # double 0.42554399999999998
	.quad	0x3fc12220bc382a13              # double 0.133854
	.quad	0x3fc895bff04577d9              # double 0.19206999999999999
	.quad	0x3f91650a45d41fa7              # double 0.016986999999999999
	.quad	0x3fd37b07075b3e14              # double 0.30438399999999999
	.quad	0x3fe3c3e5321e603d              # double 0.61766299999999996
	.quad	0x3fedfdf5cf2495e1              # double 0.93725099999999995
	.quad	0x3fec57c2ca148ba8              # double 0.88571299999999997
	.quad	0x3feb926634117f84              # double 0.86162099999999997
	.quad	0x3fd4291fb3fa6df0              # double 0.31501000000000001
	.quad	0x3fb301c92ddbdb5e              # double 0.074246000000000006
	.quad	0x3fee64a59c065b64              # double 0.94978600000000001
	.quad	0x3fe139e060fe4799              # double 0.53831499999999999
	.quad	0x3fea3906466b1e5c              # double 0.81946099999999999
	.quad	0x3fed13d5347a5b10              # double 0.90867100000000001
	.quad	0x3fee0027d88c1db0              # double 0.93751899999999999
	.quad	0x3fc616a487336588              # double 0.172566
	.quad	0x3fedd1e96c3fc43b              # double 0.93187399999999998
	.quad	0x3fc3456b441bb8c3              # double 0.150556
	.quad	0x3fc3f562174c4ce0              # double 0.15592600000000001
	.quad	0x3fea8a86d71f3626              # double 0.82940999999999998
	.quad	0x3fdfa4acf312b1b3              # double 0.49442599999999998
	.quad	0x3feac1db0142f61f              # double 0.83616400000000002
	.quad	0x3fd8c9d5a187a4a5              # double 0.38731900000000002
	.quad	0x3fe21e603d577964              # double 0.56620800000000004
	.quad	0x3fe5980f55de58e6              # double 0.67481199999999997
	.quad	0x3fcf28c79f666235              # double 0.24343200000000001
	.quad	0x3fe7b3a2595bbbe8              # double 0.74067799999999995
	.quad	0x3fe06efa1e3eaf68              # double 0.51354699999999998
	.quad	0x3fdd19c5a3e39f77              # double 0.45469799999999999
	.quad	0x3fe489203a322af5              # double 0.64173899999999995
	.quad	0x3fdaf826edaa92e6              # double 0.42139599999999999
	.quad	0x3fd3bbe4473cd573              # double 0.30834299999999998
	.quad	0x3fe7bb2788db0575              # double 0.74159600000000003
	.quad	0x3fea744b2b777d0f              # double 0.82669599999999999
	.quad	0x3fee1209edbf8b9c              # double 0.93970200000000003
	.quad	0x3f7c358afc47e49b              # double 0.0068869999999999999
	.quad	0x3fe03239a38fbca1              # double 0.506131
	.quad	0x3fe42012599ed7c7              # double 0.628915
	.quad	0x3feea8e4fb97bb73              # double 0.95811699999999999
	.quad	0x3fd07d805e5f30e8              # double 0.25766
	.quad	0x3fb709203a322af5              # double 0.089982999999999994
	.quad	0x3fc888df37329c34              # double 0.19167699999999999
	.quad	0x3fe6d041cc532a49              # double 0.71292199999999994
	.quad	0x3feef521144cbe1f              # double 0.96742300000000003
	.quad	0x3fe7ade8709741d1              # double 0.73997900000000005
	.quad	0x3fdbcc92146a1a50              # double 0.434361
	.quad	0x3febac29bf162ae5              # double 0.86476600000000003
	.quad	0x3fb21c475e6362a6              # double 0.070744000000000001
	.quad	0x3fe01635610adcd3              # double 0.50271100000000002
	.quad	0x3fd98f42fe82517e              # double 0.39936899999999997
	.quad	0x3fe4d798d8a979e1              # double 0.65131799999999995
	.quad	0x3f9ccaf709b738e7              # double 0.028118000000000001
	.quad	0x3fe9fcd898b2e9cd              # double 0.81211500000000003
	.quad	0x3fd8e939eadd590c              # double 0.389235
	.quad	0x3fdc3882278d0cc3              # double 0.44094899999999998
	.quad	0x3feae1c79b34a44c              # double 0.84006099999999994
	.quad	0x3fd36455eaee2004              # double 0.30299900000000002
	.quad	0x3fe1221c8a7a41e5              # double 0.53541399999999995
	.quad	0x3fe779e3864cb5bb              # double 0.73362899999999998
	.quad	0x3fe45753a3ec02f3              # double 0.63566
	.quad	0x3fed009d495182aa              # double 0.90632500000000005
	.quad	0x3fcf3775b8130165              # double 0.24388000000000001
	.quad	0x3fe213660e51d25b              # double 0.56486800000000004
	.quad	0x3fe64450268900c5              # double 0.69583899999999999
	.quad	0x3fe72d6883771865              # double 0.72429299999999996
	.quad	0x3fbca2120e1f7d74              # double 0.111848
	.quad	0x3fe181fb82c2bd7f              # double 0.54711699999999996
	.quad	0x3feacaf4f0d844d0              # double 0.83727499999999999
	.quad	0x3fdac215b9a5a89c              # double 0.41809600000000002
	.quad	0x3fd987bdcf0307f2              # double 0.39890999999999999
	.quad	0x3fe2f37da61e0c5b              # double 0.59222300000000005
	.quad	0x3febbb46fdeb52ca              # double 0.86661100000000002
	.quad	0x3fed4a38327674d1              # double 0.91530999999999996
	.quad	0x3fe8c9795b35b0bc              # double 0.774594
	.quad	0x3fe2d8750c1b9735              # double 0.58892299999999997
	.quad	0x3fcd1044f1a1986c              # double 0.22705900000000001
	.quad	0x3fedace4649906cd              # double 0.92735500000000004
	.quad	0x3fdd4434e3369b9d              # double 0.45728799999999997
	.quad	0x3feaf7531db445ed              # double 0.84269099999999997
	.quad	0x3fd27852f7f498c4              # double 0.28859400000000002
	.quad	0x3febac881e4712e4              # double 0.86481099999999999
	.quad	0x3fd7f5e41d4b6a62              # double 0.37438300000000002
	.quad	0x3fe1a23e18698351              # double 0.55105499999999996
	.quad	0x3fb7ccd0fe8ab4fa              # double 0.092968999999999996
	.quad	0x3fe87f498c3b0c46              # double 0.76553800000000005
	.quad	0x3fc194317acc4ef9              # double 0.13733500000000001
	.quad	0x3feeb7c99ae924f2              # double 0.95993499999999998
	.quad	0x3fe031c219eb6391              # double 0.50607400000000002
	.quad	0x3fe846ed245b291c              # double 0.75865800000000005
	.quad	0x3fcb9e279dd3bafe              # double 0.21576400000000001
	.quad	0x3febf2a5a469d734              # double 0.87336999999999997
	.quad	0x3fd50c4588a04d12              # double 0.328874
	.quad	0x3fd8a4052d666a98              # double 0.38501099999999999
	.quad	0x3fccc282c6ef3d3a              # double 0.224686
	.quad	0x3fef6c11a11233df              # double 0.98194199999999998
	.quad	0x3fe770f9d2bf5515              # double 0.732541
	.quad	0x3fed413b9f127f5f              # double 0.91421300000000005
	.quad	0x3fbae1049235f80a              # double 0.10499600000000001
	.quad	0x3fbae34fc610f0e9              # double 0.105031
	.quad	0x3fdb984e3ffef391              # double 0.43117100000000003
	.quad	0x3fc43a7daa4fca43              # double 0.15803500000000001
	.quad	0x3fe7be5fb71fbc5e              # double 0.74198900000000001
	.quad	0x3fb0ea9e6eeb7026              # double 0.06608
	.quad	0x3fea1044f1a1986c              # double 0.81448600000000004
	.quad	0x3fea653a81dc0db2              # double 0.82485699999999995
	.quad	0x3fdae008e9b38d61              # double 0.41992400000000002
	.quad	0x3fe11ae2da554b8c              # double 0.53453200000000001
	.quad	0x3fd0dd3fe1975f2d              # double 0.26350400000000002
	.quad	0x3fdd3db3bfb58d15              # double 0.45689099999999999
	.quad	0x3fedde679463cfb3              # double 0.93339899999999998
	.quad	0x3feb621b7e0ac7da              # double 0.85572599999999999
	.quad	0x3fe0f68be2f7b17d              # double 0.53009600000000001
	.quad	0x3fcdea897635e743              # double 0.23372000000000001
	.quad	0x3fcb5d13d74d594f              # double 0.213778
	.quad	0x3fd8f972474538ef              # double 0.39022499999999999
	.quad	0x3fec4d1e96c3fc44              # double 0.88441400000000003
	.quad	0x3fed30a2ca9ac365              # double 0.91218699999999997
	.quad	0x3fb7672b884406c0              # double 0.091417999999999999
	.quad	0x3fed57d3910c2c5e              # double 0.91697099999999998
	.quad	0x3fe76679463cfb33              # double 0.73125899999999999
	.quad	0x3fd1736cdf266ba5              # double 0.27267000000000002
	.quad	0x3fd5e7f6f4be835e              # double 0.342283
	.quad	0x3fe4e7a95c853c15              # double 0.65327900000000005
	.quad	0x3fed236c15d2d01c              # double 0.91057399999999999
	.quad	0x3fe0d5d1c3ac929b              # double 0.52610100000000004
	.quad	0x3fc4374ff865d7cb              # double 0.157938
	.quad	0x3fe9a0c282c6ef3d              # double 0.80087399999999997
	.quad	0x3fe22ab474107315              # double 0.56771300000000002
	.quad	0x3fdc05857afea3df              # double 0.43783699999999998
	.quad	0x3fb16c61522a6f3f              # double 0.068059999999999996
	.quad	0x3fee69835158b828              # double 0.95038
	.quad	0x3fe9e31d712a0ec7              # double 0.80897399999999997
	.quad	0x3feef8e3ac0c62e5              # double 0.96788200000000002
	.quad	0x3fef2dcf4623d0c0              # double 0.97434200000000004
	.quad	0x3fe18123810e8859              # double 0.547014
	.quad	0x3fdc3bf727136a40              # double 0.44116
	.quad	0x3fed3b906466b1e6              # double 0.91352100000000003
	.quad	0x3fc3a647fdc5931d              # double 0.15351200000000001
	.quad	0x3f9cd07852f7f499              # double 0.028139000000000001
	.quad	0x3fe7271fff79c843              # double 0.723526
	.quad	0x3fdf8d9f90539fba              # double 0.49301899999999999
	.quad	0x3fd080303c07ee0b              # double 0.257824
	.quad	0x3fd75e679463cfb3              # double 0.36513699999999999
	.quad	0x3fec69185cee17a0              # double 0.88782899999999997
	.quad	0x3feb41615ebfa8f8              # double 0.85173100000000002
	.quad	0x3fee5a2f8bdec5f4              # double 0.94850900000000004
	.quad	0x3fe6edb940fecdd1              # double 0.71651900000000002
	.quad	0x3fdfab3aabcd78c4              # double 0.49482599999999999
	.quad	0x3fe42c36544fe36d              # double 0.63039699999999999
	.quad	0x3fc1164c729f59cd              # double 0.133493
	.quad	0x3fb13f290abb44e5              # double 0.067369999999999999
	.quad	0x3fe8d5da272862f6              # double 0.77610500000000004
	.quad	0x3fc435f80991793a              # double 0.15789700000000001
	.quad	0x3fe2a7b4e54f7a92              # double 0.58297200000000005
	.quad	0x3f8e5a78f25a2510              # double 0.014821000000000001
	.quad	0x3fe35ac258d5842b              # double 0.60482899999999995
	.quad	0x3fe3b4aa9717df1a              # double 0.61580400000000002
	.quad	0x3fc6f9b13165d399              # double 0.17949499999999999
	.quad	0x3fae59f2ba9d1f60              # double 0.059279999999999999
	.quad	0x3fbfd31b9b66f933              # double 0.12431499999999999
	.quad	0x3fb0c8bc9cd3e0bd              # double 0.065562999999999996
	.quad	0x3fe816f86a098916              # double 0.75280400000000003
	.quad	0x3fce5cc426351def              # double 0.237206
	.quad	0x3fb2aeafab53d641              # double 0.072978000000000001
	.quad	0x3fdeecc3e3193f6c              # double 0.48320099999999999
	.quad	0x3fc88826aa8eb463              # double 0.19165499999999999
	.quad	0x3fd12e8c0485a0be              # double 0.26846599999999998
	.quad	0x3fe4a38fbca1059f              # double 0.64496600000000004
	.quad	0x3fed1ea140570825              # double 0.90998900000000005
	.quad	0x3fead07e9d94d0dd              # double 0.837951
	.quad	0x3fb516872b020c4a              # double 0.082375000000000003
	.quad	0x3febb3edd8b60f1b              # double 0.86571399999999998
	.quad	0x3fe0c6e2a80064aa              # double 0.52427800000000002
	.quad	0x3fdd766c6de76428              # double 0.46035300000000001
	.quad	0x3fbed1d041cc532a              # double 0.120389
	.quad	0x3fe3e30caa326e11              # double 0.62146599999999996
	.quad	0x3fd252fc2656abde              # double 0.28631499999999999
	.quad	0x3fd9829068986fce              # double 0.398594
	.quad	0x3fec58cb07d0aeda              # double 0.88583900000000004
	.quad	0x3fedd230b9dc2f40              # double 0.93190799999999995
	.quad	0x3fe53c105186db51              # double 0.66358200000000001
	.quad	0x3fe93b9cf9a06a6e              # double 0.78852699999999998
	.quad	0x3fedf2367e414e7f              # double 0.93581700000000001
	.quad	0x3fe6ecbb7f9d6f11              # double 0.71639799999999998
	.quad	0x3fdc5f3d7d3910c3              # double 0.44331300000000001
	.quad	0x3fed5109070fbeba              # double 0.91614200000000001
	.quad	0x3fe50fecdd0d8cb0              # double 0.65819399999999995
	.quad	0x3fef77e5eaab0425              # double 0.98338599999999998
	.quad	0x3f70bb6ed677707a              # double 0.0040850000000000001
	.quad	0x3fe0f4fd6d7e889c              # double 0.52990599999999999
	.quad	0x3fecc6bce8533b10              # double 0.89925999999999995
	.quad	0x3fe219d451fc4c16              # double 0.56565299999999996
	.quad	0x3fdb84b5dcc63f14              # double 0.429975
	.quad	0x3fb675ff609dcf89              # double 0.087737999999999997
	.quad	0x3fc137329c347e8d              # double 0.13449700000000001
	.quad	0x3fa96638433d6c72              # double 0.049607999999999999
	.quad	0x3fd4a176ddaceee1              # double 0.322355
	.quad	0x3fe25a0be5109071              # double 0.573492
	.quad	0x3fe6c27c7c5260f6              # double 0.71124100000000001
	.quad	0x3fce027d88c1db01              # double 0.23445099999999999
	.quad	0x3feba32d2bb23572              # double 0.86366900000000002
	.quad	0x3fc2d6dc1a47a9e3              # double 0.14718200000000001
	.quad	0x3feb1fa54c554328              # double 0.84761299999999995
	.quad	0x3fa88094e5d5b24f              # double 0.047856000000000003
	.quad	0x3feb894c447c30d3              # double 0.86051
	.quad	0x3fd6712e40852b4e              # double 0.35065800000000003
	.quad	0x3fe6192428d434a0              # double 0.69056899999999999
	.quad	0x3fe3bdb7f1737543              # double 0.61690900000000004
	.quad	0x3fe0587b56b87379              # double 0.51080099999999995
	.quad	0x3fcb8127b2cc7086              # double 0.21487899999999999
	.quad	0x3fef957470eb24a7              # double 0.98699400000000003
	.quad	0x3fddda6612839043              # double 0.46645500000000001
	.quad	0x3f92a3cea6c1a049              # double 0.018203
	.quad	0x3fe32847b24638c9              # double 0.59866699999999995
	.quad	0x3fef56494d50ebab              # double 0.97928300000000001
	.quad	0x3fea4f6dfc5cdd51              # double 0.82219600000000004
	.quad	0x3fd8a743a647fdc6              # double 0.38520900000000002
	.quad	0x3fd6b7b28954a7f8              # double 0.354962
	.quad	0x3fcded30f062d40b              # double 0.23380100000000001
	.quad	0x3fed2ae6c8f75537              # double 0.91148700000000005
	.quad	0x3fe8adfd694ccab4              # double 0.771239
	.quad	0x3fd36961c36976bc              # double 0.30330699999999999
	.quad	0x3fea7a13c254a3c6              # double 0.82740199999999997
	.quad	0x3fe83700474d9c6b              # double 0.756714
	.quad	0x3fc1f077ccc03793              # double 0.140151
	.quad	0x3fe2ddb5525cc426              # double 0.58956399999999998
	.quad	0x3fafab10ba6266fd              # double 0.061851999999999997
	.quad	0x3fd8491f2dc2b0ea              # double 0.37946299999999999
	.quad	0x3fe28bdcad14a0a1              # double 0.579573
	.quad	0x3fe486a4ca4f440b              # double 0.64143600000000001
	.quad	0x3fdad8a116659d13              # double 0.41947200000000001
	.quad	0x3fc211b1d92b7fe1              # double 0.14116500000000001
	.quad	0x3fe7654b48d3ae68              # double 0.73111499999999996
	.quad	0x3fe84386d2ed783e              # double 0.758243
	.quad	0x3fdbdbdf8f473040              # double 0.43529499999999999
	.quad	0x3fc8772d5e071c54              # double 0.191137
	.quad	0x3fddd0fa58f7121b              # double 0.46588000000000002
	.quad	0x3febd8be7296f651              # double 0.87020799999999998
	.quad	0x3fd6759ee88df373              # double 0.35092899999999999
	.quad	0x3fc7596851223183              # double 0.18241599999999999
	.quad	0x3fe494ad362e9036              # double 0.64314899999999997
	.quad	0x3fe863ffef39085f              # double 0.76220699999999997
	.quad	0x3fd06034f3fd933e              # double 0.25587199999999999
	.quad	0x3fd169f8c21e1d21              # double 0.27209299999999997
	.quad	0x3fd67646ae3a3a8e              # double 0.35096899999999998
	.quad	0x3fe8b0ec31162281              # double 0.77159699999999998
	.quad	0x3fa81344806290ef              # double 0.047022000000000001
	.quad	0x3fbf161a1db877ab              # double 0.121431
	.quad	0x3fe5ff4dbdf8f473              # double 0.687415
	.quad	0x3fd554da4ce8101f              # double 0.33330399999999999
	.quad	0x3fd41dc0db2702a3              # double 0.31431599999999998
	.quad	0x3fc1d60e94ee392e              # double 0.139345
	.quad	0x3fe293e3e29307af              # double 0.58055299999999999
	.quad	0x3fe61c1b54195cc8              # double 0.69093099999999996
	.quad	0x3fe05ebd9018e758              # double 0.51156500000000005
	.quad	0x3fe01b38d60a6330              # double 0.50332299999999996
	.quad	0x3fd68a0d349be8ff              # double 0.35217599999999999
	.quad	0x3feff850df15a4ad              # double 0.999062
	.quad	0x3fe772ae07e5a78f              # double 0.73274899999999998
	.quad	0x3fa48ffb8b263950              # double 0.040161000000000002
	.quad	0x3fdb5e5f30e7ff58              # double 0.42763499999999999
	.quad	0x3fdf18efbb0e5e68              # double 0.48589700000000002
	.quad	0x3fe5cfebd09e12a5              # double 0.68163099999999999
	.quad	0x3fd5d4801f75104d              # double 0.34109499999999998
	.quad	0x3fe1dfaa8a82a561              # double 0.55855299999999997
	.quad	0x3fc98c197e564734              # double 0.19958799999999999
	.quad	0x3fd5cd466f5019f4              # double 0.34065400000000001
	.quad	0x3fe3f8d0cc35ce18              # double 0.62412299999999998
	.quad	0x3fe7d64d7f0ed3d8              # double 0.74490999999999996
	.quad	0x3fe4dfd47bedb728              # double 0.65232299999999999
	.quad	0x3fc646c764adff82              # double 0.174035
	.quad	0x3feae1e0c5a8155d              # double 0.84007299999999996
	.quad	0x3fdbc947064ece9a              # double 0.43415999999999999
	.quad	0x3fe4e290eed02cd4              # double 0.65265700000000004
	.quad	0x3fe6cbc05d52c16e              # double 0.71237200000000001
	.quad	0x3feaa99b6f5caf2d              # double 0.83320399999999994
	.quad	0x3f8efc7a398201cd              # double 0.015129999999999999
	.quad	0x3fd216c1e364bec6              # double 0.28263899999999997
	.quad	0x3fda918a009f6230              # double 0.41513299999999997
	.quad	0x3fc140fecdd0d8cb              # double 0.134796
	.quad	0x3fd822ee41919ac8              # double 0.37713200000000002
	.quad	0x3fe1b4e3369b9d80              # double 0.55333100000000002
	.quad	0x3fb543aeab7995ee              # double 0.083063999999999998
	.quad	0x3fbaf8055fbb517a              # double 0.105347
	.quad	0x3fcc172abef06b38              # double 0.21945700000000001
	.quad	0x3fc64ed6fda836eb              # double 0.17428099999999999
	.quad	0x3fc52b2bfdb4cc25              # double 0.16538
	.quad	0x3feef9e9d0e991ff              # double 0.96800699999999995
	.quad	0x3fd886e7e62dc6e3              # double 0.38323400000000002
	.quad	0x3fe0ee2003ab862b              # double 0.52906799999999998
	.quad	0x3fed548238540464              # double 0.91656599999999999
	.quad	0x3fdff3e468cac4b5              # double 0.49926100000000001
	.quad	0x3fc3c28f5c28f5c3              # double 0.15437500000000001
	.quad	0x3fe88711d798d8a9              # double 0.76648799999999995
	.quad	0x3fe4cf2495e17e35              # double 0.65028600000000003
	.quad	0x3fee902795703f2d              # double 0.95509699999999997
	.quad	0x3fbbca2120e1f7d7              # double 0.108553
	.quad	0x3fe558ba40d90e24              # double 0.66708100000000004
	.quad	0x3fd181adea897636              # double 0.27354000000000001
	.quad	0x3fec934267839cd8              # double 0.89297599999999999
	.quad	0x3fec976ff3ade226              # double 0.893486
	.quad	0x3fb9b13165d39970              # double 0.10036
	.quad	0x3feae6d9be4cd749              # double 0.84067999999999998
	.quad	0x3fee8578e5c4eb57              # double 0.953793
	.quad	0x3fc580ecfa69be0a              # double 0.16799700000000001
	.quad	0x3fe1aa0232096788              # double 0.55200300000000002
	.quad	0x3fe059103c8e25c8              # double 0.51087199999999999
	.quad	0x3febead2dcb1465f              # double 0.87241500000000005
	.quad	0x3fb9463cfb3311a5              # double 0.098727999999999996
	.quad	0x3fd0019b0ab2e169              # double 0.25009799999999999
	.quad	0x3fe69a95421c0443              # double 0.70637000000000005
	.quad	0x3fd2ec5f394b7b29              # double 0.29567700000000002
	.quad	0x3fe5736049ecb31c              # double 0.67033399999999999
	.quad	0x3fd6278d0cc35ce2              # double 0.34616400000000003
	.quad	0x3fe691c8eabffcdb              # double 0.70529600000000003
	.quad	0x3fdb9157abb8800f              # double 0.43074600000000002
	.quad	0x3fda7ee9142b302f              # double 0.41399599999999998
	.quad	0x3fa78a2a90cd423e              # double 0.045976000000000003
	.quad	0x3fea25c5f7c6759b              # double 0.81711100000000003
	.quad	0x3fe451b2e59af9ec              # double 0.63497300000000001
	.quad	0x3fee2e5bc87db2b3              # double 0.94315899999999997
	.quad	0x3fdfb777d0f1f57b              # double 0.49557299999999999
	.quad	0x3fd2c1c6088d6d3b              # double 0.29307699999999998
	.quad	0x3fe2ce8b7e4de3b9              # double 0.58771300000000004
	.quad	0x3f94690de093532e              # double 0.019931999999999998
	.quad	0x3fec0aaeafab53d6              # double 0.87630399999999997
	.quad	0x3fd9b1e9f2778141              # double 0.40148400000000001
	.quad	0x3fad8e8640208180              # double 0.057728000000000002
	.quad	0x3fdf587d6f976790              # double 0.48977599999999999
	.quad	0x3fd27af20ea5b531              # double 0.28875400000000001
	.quad	0x3fd597e132b55ef2              # double 0.337395
	.quad	0x3fd4daa4fca42aed              # double 0.325845
	.quad	0x3fe66d22424a276b              # double 0.70082199999999994
	.quad	0x3fbfbbe878fabda1              # double 0.123961
	.quad	0x3fb884b5dcc63f14              # double 0.095774999999999999
	.quad	0x3fede687f455a7d2              # double 0.93439099999999997
	.quad	0x3fb78a8f3a9b0681              # double 0.091957999999999998
	.quad	0x3fea74c09c3ce209              # double 0.82675200000000004
	.quad	0x3fe2e1cde5d18091              # double 0.59006400000000003
	.quad	0x3fecab734b51372a              # double 0.89592899999999998
	.quad	0x3fecc3c7d5ed06ff              # double 0.898899
	.quad	0x3fd430ad46f587d7              # double 0.315471
	.quad	0x3fe7028e4fb97bb7              # double 0.71906199999999998
	.quad	0x3fd04f82f5126634              # double 0.254853
	.quad	0x3fd102ea960b6fa0              # double 0.26580300000000001
	.quad	0x3fd8abde3fbbd7b2              # double 0.38549
	.quad	0x3fee47d1bb4916ca              # double 0.94626699999999997
	.quad	0x3fd6f8c64fdb09a6              # double 0.35893399999999998
	.quad	0x3feaac647778dd61              # double 0.83354399999999995
	.quad	0x3fdb10667f90d9d7              # double 0.42287599999999997
	.quad	0x3fbba3b9ae0c1765              # double 0.10796699999999999
	.quad	0x3fe5992641b328b7              # double 0.67494500000000002
	.quad	0x3fe7a9d8409e55c1              # double 0.739483
	.quad	0x3fee66644d877250              # double 0.94999900000000004
	.quad	0x3fc115054ac29bf1              # double 0.13345399999999999
	.quad	0x3fd86a7ef9db22d1              # double 0.38150000000000001
	.quad	0x3fe4e11fd5885d31              # double 0.65248099999999998
	.quad	0x3fc049f51697f1fa              # double 0.12725700000000001
	.quad	0x3fd3710880d801b4              # double 0.30377399999999999
	.quad	0x3fe3539756c93a71              # double 0.60395399999999999
	.quad	0x3fe19461b6d43d04              # double 0.54936300000000005
	.quad	0x3fce9f8c21e1d218              # double 0.23924400000000001
	.quad	0x3fe682d7b634dad3              # double 0.70347199999999999
	.quad	0x3fee555a3a08398a              # double 0.94791899999999996
	.quad	0x3fd60c6f7a0b5ed9              # double 0.34450900000000001
	.quad	0x3fce9c99285a921d              # double 0.23915400000000001
	.quad	0x3fd108a265f0f5a1              # double 0.266152
	.quad	0x3fbc2cf52b90a783              # double 0.11006100000000001
	.quad	0x3fcd9d66adb402d1              # double 0.23136599999999999
	.quad	0x3fd59b52007dd441              # double 0.33760499999999999
	.quad	0x3fe67d805e5f30e8              # double 0.70282
	.quad	0x3fef29ac36544fe3              # double 0.97383699999999995
	.quad	0x3fe61fcd24e160d9              # double 0.69138200000000005
	.quad	0x3fe9f9e9d0e991ff              # double 0.81175699999999995
	.quad	0x3fee3519bd4067cf              # double 0.94398199999999999
	.quad	0x3fdc1fcd24e160d9              # double 0.43944100000000003
	.quad	0x3fe607bbb62413db              # double 0.68844399999999994
	.quad	0x3fe4b62a5e785b5b              # double 0.64723699999999995
	.quad	0x3fe790e66cb10343              # double 0.73643800000000004
	.quad	0x3fe6f82b1f687b14              # double 0.71779400000000004
	.quad	0x3fcb6473471f7942              # double 0.214003
	.quad	0x3fe4b58298cc1440              # double 0.64715699999999998
	.quad	0x3fd3a8c154c985f0              # double 0.30717499999999998
	.quad	0x3fea65cb35f3d7d4              # double 0.82492600000000004
	.quad	0x3fed35d894812be5              # double 0.91282300000000005
	.quad	0x3fcc60cbf2b239a4              # double 0.22170400000000001
	.quad	0x3fdb15f88fc9363f              # double 0.42321599999999998
	.quad	0x3fb1f79420b3d4ae              # double 0.070183999999999996
	.quad	0x3fd7695d91ab8e8f              # double 0.36580600000000002
	.quad	0x3fb2492bc2fc6973              # double 0.071429000000000006
	.quad	0x3fcd5aaf78feef5f              # double 0.22933000000000001
	.quad	0x3fdaf46ed245b292              # double 0.42116900000000002
	.quad	0x3fdc4b4070329803              # double 0.44209300000000001
	.quad	0x3fe0fa00e27e0efa              # double 0.53051800000000005
	.quad	0x3fd6427c7c5260f6              # double 0.34780800000000001
	.quad	0x3fe04e13f4a98aa8              # double 0.50953099999999996
	.quad	0x3fd10adcd2d44dcb              # double 0.26628800000000002
	.quad	0x3fc1f2ba9d1f6018              # double 0.14022000000000001
	.quad	0x3fe89641f644955b              # double 0.76834199999999997
	.quad	0x3f5276fb09203a32              # double 0.001127
	.quad	0x3fc9d577963992c9              # double 0.20182700000000001
	.quad	0x3fe6c7abfb9bed31              # double 0.71187400000000001
	.quad	0x3fac25aee631f8a1              # double 0.054975000000000003
	.quad	0x3fc4366516db0dd8              # double 0.15790999999999999
	.quad	0x3fef995cc857f306              # double 0.98747099999999999
	.quad	0x3fd4c9795b35b0bc              # double 0.324797
	.quad	0x3fe8eb1a2a4db164              # double 0.77869900000000003
	.quad	0x3fe02c68a936c58f              # double 0.50542100000000001
	.quad	0x3f7f2a9d627bf61b              # double 0.0076090000000000003
	.quad	0x3fe9545a5fc7e6b4              # double 0.791547
	.quad	0x3fe8db5fa22706d5              # double 0.776779
	.quad	0x3fd6b90a7829068a              # double 0.35504400000000003
	.quad	0x3fdf57082491afc0              # double 0.48968699999999998
	.quad	0x3fe53d03968d759f              # double 0.66369800000000001
	.quad	0x3fd7e7b80a9de8b4              # double 0.37351800000000002
	.quad	0x3fe0cc660a201472              # double 0.52495099999999995
	.quad	0x3fb2e87d2c7b890d              # double 0.073859999999999995
	.quad	0x3fe8268b19a415f4              # double 0.75470499999999995
	.quad	0x3fd95c9e6687f456              # double 0.39627800000000002
	.quad	0x3fd5c15097c80842              # double 0.339924
	.quad	0x3fecce358298cc14              # double 0.90017199999999997
	.quad	0x3fec5b4cc2507208              # double 0.88614499999999996
	.quad	0x3fe410ba6266fd65              # double 0.62704199999999999
	.quad	0x3fa3a732df505d10              # double 0.038385000000000002
	.quad	0x3fd2b8bac710cb29              # double 0.29252499999999998
	.quad	0x3fba15a8deb0fadf              # double 0.101893
	.quad	0x3fb71b8aa00192a7              # double 0.090263999999999997
	.quad	0x3fc8d373affb04ee              # double 0.19395299999999999
	.quad	0x3fe0e23d0bfa0946              # double 0.527617
	.quad	0x3fe0b2bba98eda23              # double 0.521818
	.quad	0x3fb25f84cad57bc8              # double 0.07177
	.quad	0x3fd17a3db3bfb58d              # double 0.273086
	.quad	0x3fe6708893b7d849              # double 0.701237
	.quad	0x3fd95a1cac083127              # double 0.396125
	.quad	0x3fd056eac8605682              # double 0.255305
	.quad	0x3fde1a543f1c7582              # double 0.47035700000000003
	.quad	0x3fd2316e37154003              # double 0.28426699999999999
	.quad	0x3feacdbbe0157eed              # double 0.83761399999999997
	.quad	0x3febe7a52ac753e7              # double 0.872027
	.quad	0x3fe813ad5bee3d60              # double 0.75240200000000001
	.quad	0x3fec1e34330d7386              # double 0.878687
	.quad	0x3fe206b9c304ccee              # double 0.56332099999999996
	.quad	0x3fdfd0edc3bd5992              # double 0.49712699999999999
	.quad	0x3fd409bb6aa4b988              # double 0.31309399999999998
	.quad	0x3fe933ce63a5c1c6              # double 0.787574
	.quad	0x3fe90068db8bac71              # double 0.78129999999999999
	.quad	0x3fb3240fa9c12f0a              # double 0.074769000000000002
	.quad	0x3fe13a5e353f7cee              # double 0.53837500000000005
	.quad	0x3fcba14cec41dd1a              # double 0.21586
	.quad	0x3fd7faf42784a948              # double 0.37469200000000003
	.quad	0x3fef95b1422ccb3a              # double 0.98702299999999998
	.quad	0x3fe6f11947cfa26a              # double 0.71693099999999998
	.quad	0x3fca7829068986fd              # double 0.206792
	.quad	0x3feab18fc504816f              # double 0.834175
	.quad	0x3fec18676a7264a1              # double 0.87797899999999995
	.quad	0x3fe031fab96f21f7              # double 0.50610100000000002
	.quad	0x3fd803eea209aaa4              # double 0.37524000000000002
	.quad	0x3fe7ee221c8a7a42              # double 0.74781900000000001
	.quad	0x3fc18cb8e086bdf5              # double 0.13710700000000001
	.quad	0x3fd32e9ccb7d4174              # double 0.29971999999999999
	.quad	0x3fdb7df19d66adb4              # double 0.429562
	.quad	0x3feb409e55c0fcb5              # double 0.85163800000000001
	.quad	0x3fe35db9841aac54              # double 0.60519100000000003
	.quad	0x3fdb089e34330d74              # double 0.42240100000000003
	.quad	0x3fbcc729f59ccfaf              # double 0.112414
	.quad	0x3fe83cad9ad85dfb              # double 0.75740700000000005
	.quad	0x3f90aaeafab53d64              # double 0.016277
	.quad	0x3fd0fbb0e5e67946              # double 0.26536199999999999
	.quad	0x3fdf20296b3354c1              # double 0.48633799999999999
	.quad	0x3fecd5b6805a2d73              # double 0.901088
	.quad	0x3fd4ec95bff04578              # double 0.32694000000000001
	.quad	0x3fe0791600f34507              # double 0.51478100000000004
	.quad	0x3fe28ac3a860dcba              # double 0.57943900000000004
	.quad	0x3fe261f5be5d9e41              # double 0.57445800000000002
	.quad	0x3fe0fa4e7ab75643              # double 0.530555
	.quad	0x3fdcb0ee49f51698              # double 0.448299
	.quad	0x3fc130270f388228              # double 0.13428200000000001
	.quad	0x3fe3560c7c0f4517              # double 0.60425399999999996
	.quad	0x3fec8288051c9f73              # double 0.890934
	.quad	0x3fe6f5232d2bb235              # double 0.71742399999999995
	.quad	0x3fe72e3821af7d31              # double 0.72439200000000004
	.quad	0x3fafde5082cf52b9              # double 0.062243
	.quad	0x3fea4c55432873bd              # double 0.82181800000000005
	.quad	0x3fe6a53b8e4b87be              # double 0.70767000000000002
	.quad	0x3fe00a4e379b77c0              # double 0.50125799999999998
	.quad	0x3fe497e56473471f              # double 0.64354199999999995
	.quad	0x3fe6cce5f7403dde              # double 0.71251200000000003
	.quad	0x3fd90b242070b8d0              # double 0.39130500000000001
	.quad	0x3fdb269595feda66              # double 0.42423
	.quad	0x3fd6ab5c39bcba30              # double 0.354209
	.quad	0x3fc7545c78a6dacb              # double 0.18226200000000001
	.quad	0x3fe4cd5d80e496ee              # double 0.65006900000000001
	.quad	0x3fcfd30270f38822              # double 0.24862699999999999
	.quad	0x3fe8f972474538ef              # double 0.78044999999999998
	.quad	0x3fe6c080f98fa377              # double 0.71099900000000005
	.quad	0x3fef47e6b3fe9fae              # double 0.97752700000000003
	.quad	0x3fc478b7a1c25d07              # double 0.15993399999999999
	.quad	0x3fe149a34ca0c283              # double 0.54023900000000002
	.quad	0x3fdde4e26d4801f7              # double 0.46709499999999998
	.quad	0x3fecefb8f57f737e              # double 0.90426300000000004
	.quad	0x3fd8a82a5614df8b              # double 0.385264
	.quad	0x3fc76eefa1e3eaf7              # double 0.18307300000000001
	.quad	0x3fe2e1719f7f8ca8              # double 0.59001999999999999
	.quad	0x3fb910d38cda6e76              # double 0.097913
	.quad	0x3fecf1e0828c36db              # double 0.90452600000000005
	.quad	0x3fdf71327243137b              # double 0.491284
	.quad	0x3fc4a686e7e62dc7              # double 0.161332
	.quad	0x3fcc87b139c94f6a              # double 0.22289100000000001
	.quad	0x3fe0f566490a350d              # double 0.52995599999999998
	.quad	0x3fe5f284167a95c8              # double 0.68585399999999996
	.quad	0x3fd17eb28d8665e0              # double 0.27335799999999999
	.quad	0x3fc1f1e0828c36db              # double 0.14019400000000001
	.quad	0x3fc385dfa871a3b1              # double 0.15252299999999999
	.quad	0x3fca240314877681              # double 0.20422399999999999
	.quad	0x3fe34d2d44dca8e3              # double 0.60317100000000001
	.quad	0x3fa035bd512ec6bd              # double 0.031660000000000001
	.quad	0x3fe042784a9478c8              # double 0.50811399999999995
	.quad	0x3fea1e53a81dc0db              # double 0.81620199999999998
	.quad	0x3feb87b352a84381              # double 0.86031500000000005
	.quad	0x3fe48661ae70c133              # double 0.64140399999999997
	.quad	0x3fddb402d16b97ff              # double 0.46411200000000002
	.quad	0x3fd37d49d7ba6699              # double 0.30452200000000001
	.quad	0x3fe5dcdf69878317              # double 0.68321200000000004
	.quad	0x3fd71f81a5870da6              # double 0.36129800000000001
	.quad	0x3fcce557de0d66f1              # double 0.22574900000000001
	.quad	0x3fe573a57eaa2a0b              # double 0.67036700000000005
	.quad	0x3fb7a00e27e0ef9a              # double 0.092286000000000006
	.quad	0x3fd774ddf86e3b47              # double 0.366508
	.quad	0x3fe29deefe4ffc98              # double 0.58177900000000005
	.quad	0x3feddc182ecaeea6              # double 0.93311699999999997
	.quad	0x3fee4ea077036c9c              # double 0.94709799999999999
	.quad	0x3fd349774256bca5              # double 0.30135899999999999
	.quad	0x3fe7ce22a2c23748              # double 0.74391300000000005
	.quad	0x3fe268a0d349be90              # double 0.57527200000000001
	.quad	0x3fe596e371540032              # double 0.67466899999999996
	.quad	0x3fc676f2a5a469d7              # double 0.17550499999999999
	.quad	0x3fe2760bf5d78812              # double 0.57691000000000003
	.quad	0x3faa4723aafff36b              # double 0.051324000000000002
	.quad	0x3fcb300de4c51117              # double 0.21240400000000001
	.quad	0x3fe5180d3cff64d0              # double 0.65918600000000005
	.quad	0x3fc468123810e886              # double 0.15942600000000001
	.quad	0x3fcdf21b3aeee957              # double 0.23395099999999999
	.quad	0x3fe7676427c7c526              # double 0.73137099999999999
	.quad	0x3fed3fe1975f2cb6              # double 0.91404799999999997
	.quad	0x3fd1549731098d47              # double 0.27078799999999997
	.quad	0x3fd5c7ef177a7009              # double 0.34032800000000002
	.quad	0x3fb6b5807fed2029              # double 0.088706999999999994
	.quad	0x3feb5069a4df47fa              # double 0.85356600000000005
	.quad	0x3fe00fc9363f572e              # double 0.50192700000000001
	.quad	0x3fd4620685553ef7              # double 0.31848300000000002
	.quad	0x3fe41a9da597d49d              # double 0.62824899999999995
	.quad	0x3fd744a1f080303c              # double 0.363564
	.quad	0x3fde0420f6f08cc5              # double 0.46900199999999997
	.quad	0x3fe06aab042528ae              # double 0.51302099999999995
	.quad	0x3fe19a34ca0c282c              # double 0.55007399999999995
	.quad	0x3fe6a65061416378              # double 0.70780200000000004
	.quad	0x3fe541c3efae7925              # double 0.66427800000000004
	.quad	0x3fe339042d8c2a45              # double 0.60070999999999997
	.quad	0x3fedc7496aad1d04              # double 0.93057699999999998
	.quad	0x3fd4d844d013a92a              # double 0.32569999999999999
	.quad	0x3fe9b34e7685985b              # double 0.80313800000000002
	.quad	0x3fe4c2fe82517e78              # double 0.64880300000000002
	.quad	0x3fe382adc4c9c90c              # double 0.60970199999999997
	.quad	0x3fe86fe931876189              # double 0.76366100000000003
	.quad	0x3fe95e4606748e47              # double 0.79275799999999996
	.quad	0x3fefb2f01754b05b              # double 0.99059299999999994
	.quad	0x3fed6536501e2585              # double 0.918605
	.quad	0x3fc37a0b5ed8d36b              # double 0.15216199999999999
	.quad	0x3fee80a393ee5eee              # double 0.95320300000000002
	.quad	0x3fd9bd66277c45cc              # double 0.40218500000000001
	.quad	0x3fbc755ffe6d58c9              # double 0.111166
	.quad	0x3fe37620ee8d10f5              # double 0.60816999999999999
	.quad	0x3fd2897e996312f5              # double 0.28964200000000001
	.quad	0x3fd2d9fd36f7e3d2              # double 0.29455500000000001
	.quad	0x3fe0f4c4cdfaca36              # double 0.52987899999999999
	.quad	0x3fe3201eeed8904f              # double 0.59767099999999995
	.quad	0x3fe9b6933a0407cc              # double 0.80353699999999994
	.quad	0x3fe76a0ba1f4b1ee              # double 0.73169499999999998
	.quad	0x3fe46138fffbce42              # double 0.63686799999999999
	.quad	0x3fe3615ebfa8f7db              # double 0.60563599999999995
	.quad	0x3fe1cf61672324c8              # double 0.55656499999999998
	.quad	0x3fed91d9b1b79d91              # double 0.92405400000000004
	.quad	0x3fdc835dedf1e083              # double 0.44551800000000003
	.quad	0x3fdf40d0aaa7ded7              # double 0.48833100000000002
	.quad	0x3fe9c0ce91c8eac0              # double 0.804786
	.quad	0x3fe23419e30014f9              # double 0.56886000000000003
	.quad	0x3fe9140dd3fe1976              # double 0.78369800000000001
	.quad	0x3fe83810e8858ff7              # double 0.75684399999999996
	.quad	0x3fefe46ae3a3a8e7              # double 0.99663299999999999
	.quad	0x3fddf18c9fb6134d              # double 0.46786800000000001
	.quad	0x3fe98088509bf9c6              # double 0.79693999999999998
	.quad	0x3fd7b01c92ddbdb6              # double 0.37012400000000001
	.quad	0x3fedb588e368f084              # double 0.92840999999999995
	.quad	0x3feb56e8af81626b              # double 0.85435899999999998
	.quad	0x3fd4e5082cf52b91              # double 0.32647900000000002
	.quad	0x3fe4976145953587              # double 0.64347900000000002
	.quad	0x3fe27570c564f97f              # double 0.57683600000000002
	.quad	0x3fdc2cf95d4e8fb0              # double 0.440245
	.quad	0x3fe2e6490a350d28              # double 0.590611
	.quad	0x3fd422bbecaab8a6              # double 0.31462000000000001
	.quad	0x3fe68348f53c579f              # double 0.70352599999999998
	.quad	0x3fe33edb7281fd9c              # double 0.60142300000000004
	.quad	0x3fb6f3d3a1d323ff              # double 0.089658000000000002
	.quad	0x3fee6d1bf7ad4b27              # double 0.95081899999999997
	.quad	0x3fa62de8709741d1              # double 0.043319000000000003
	.quad	0x3fecf42352eb5f5f              # double 0.904802
	.quad	0x3fcf653c9abb01c9              # double 0.245277
	.quad	0x3fcfa1a0cf1800a8              # double 0.24712000000000001
	.quad	0x3feda4bba12b5e53              # double 0.92635900000000004
	.quad	0x3fd0f84cad57bc7f              # double 0.26515499999999997
	.quad	0x3fe9f5f91600f345              # double 0.811276
	.quad	0x3fe8bfd0d0678c00              # double 0.77341499999999996
	.quad	0x3fe2276965f5275f              # double 0.56731100000000001
	.quad	0x3febc6e08f217093              # double 0.86802699999999999
	.quad	0x3feb153dea465a57              # double 0.84634299999999996
	.quad	0x3fdc31c64ba94bbe              # double 0.44053799999999999
	.quad	0x3fe077ea1c68ec53              # double 0.51463800000000004
	.quad	0x3fdf4883fd502257              # double 0.48880099999999999
	.quad	0x3fed8a67620ee8d1              # double 0.92314499999999999
	.quad	0x3fd8696e58a32f45              # double 0.38143500000000002
	.quad	0x3fd1efbb0e5e6794              # double 0.28025699999999998
	.quad	0x3fcd0af5fd47bedb              # double 0.22689699999999999
	.quad	0x3fd8f8b588e368f1              # double 0.39018000000000003
	.quad	0x3fd2a9bcfd4bf099              # double 0.29160999999999998
	.quad	0x3fdc07e5a78f25a2              # double 0.43798199999999998
	.quad	0x3fd64ba94bbe4474              # double 0.34836800000000001
	.quad	0x3fa93dfb0d51f81a              # double 0.049300999999999998
	.quad	0x3fe19289dadfb507              # double 0.54913800000000001
	.quad	0x3fc2312f4cf4a559              # double 0.142126
	.quad	0x3fb3b506dd69d302              # double 0.076980999999999993
	.quad	0x3fe632441fea8113              # double 0.69363600000000003
	.quad	0x3fe304406c00da1b              # double 0.59426900000000005
	.quad	0x3fcedddf43c7d5ed              # double 0.241146
	.quad	0x3fd7b7cbb3c81909              # double 0.37059300000000001
	.quad	0x3fa374ff865d7cb3              # double 0.038002000000000001
	.quad	0x3fcac9539b888723              # double 0.20926900000000001
	.quad	0x3fc698a222d5171e              # double 0.176533
	.quad	0x3fea95a07b352a84              # double 0.83076499999999997
	.quad	0x3fec7c19c17225b7              # double 0.89014899999999997
	.quad	0x3fcabfc2224edf61              # double 0.208977
	.quad	0x3fc53bd1676640a7              # double 0.16588800000000001
	.quad	0x3fb0f10a99b6f5cb              # double 0.066178000000000001
	.quad	0x3fda4473cd573648              # double 0.41042800000000002
	.quad	0x3fea06ad2dcb1466              # double 0.81331500000000001
	.quad	0x3fdbb90214ad362f              # double 0.43316700000000002
	.quad	0x3fb4eaaf35e310dc              # double 0.081706000000000001
	.quad	0x3fec7d41743e963e              # double 0.89029000000000003
	.quad	0x3fe13b96af038e2a              # double 0.538524
	.quad	0x3fbe38eb0318b934              # double 0.11805599999999999
	.quad	0x3fb5186db50f40e6              # double 0.082404000000000005
	.quad	0x3fd1fb8b26394fad              # double 0.28097800000000001
	.quad	0x3fea9800a7c5ac47              # double 0.83105499999999999
	.quad	0x3feadea465a57647              # double 0.83967800000000004
	.quad	0x3fd765881a1554fc              # double 0.36557200000000001
	.quad	0x3fc117df19d66adb              # double 0.13354099999999999
	.quad	0x3fea4065b63d3e4f              # double 0.82036100000000001
	.quad	0x3fe202c9081c2e34              # double 0.56284000000000001
	.quad	0x3fe5b20d9945b6c3              # double 0.67798499999999995
	.quad	0x3fbc793dd97f62b7              # double 0.111225
	.quad	0x3fe7be0370cdc875              # double 0.74194499999999997
	.quad	0x3fe7f15e7c8d1959              # double 0.74821400000000005
	.quad	0x3fd71c8eabffcdab              # double 0.36111799999999999
	.quad	0x3fe40b4e11dbca97              # double 0.62638000000000005
	.quad	0x3fe549bc77143394              # double 0.66525100000000004
	.quad	0x3fd1cc8de2ac3223              # double 0.27811000000000002
	.quad	0x3fbba2163fdd65a1              # double 0.107942
	.quad	0x3fe512d77318fc50              # double 0.65854999999999997
	.quad	0x3fdfdd1a21ea3593              # double 0.49786999999999998
	.quad	0x3fe30fd3b29a1ba0              # double 0.59568200000000004
	.quad	0x3fe9d460aa64c2f8              # double 0.80717499999999998
	.quad	0x3fefd6798958d9b6              # double 0.99493100000000001
	.quad	0x3fef27d24180d3d0              # double 0.973611
	.quad	0x3fecdcbddb9841ab              # double 0.90194600000000003
	.quad	0x3fbfa4f8726d04e6              # double 0.123611
	.quad	0x3fe0f59ab6d00b46              # double 0.52998100000000004
	.quad	0x3fee65eaab042529              # double 0.94994100000000004
	.quad	0x3fd96249a133c1ce              # double 0.39662399999999998
	.quad	0x3fe70a47ecfe9b7c              # double 0.72000500000000001
	.quad	0x3fe37f3061c79b35              # double 0.60927600000000004
	.quad	0x3fe1a04d12018a44              # double 0.55081800000000003
	.quad	0x3fe383afb7e90ff9              # double 0.60982499999999995
	.quad	0x3fd87d06bbdbe3c1              # double 0.382631
	.quad	0x3fe72c1d29dc725c              # double 0.72413499999999997
	.quad	0x3fe1d09e12a51e32              # double 0.55671599999999999
	.quad	0x3feea39e6ab9b23e              # double 0.95747300000000002
	.quad	0x3fe816e371540032              # double 0.75279399999999996
	.quad	0x3fe097e996312f4d              # double 0.518544
	.quad	0x3fd0eff9f87f023f              # double 0.26464700000000002
	.quad	0x3fd30bf1a5ca2984              # double 0.29760399999999998
	.quad	0x3fe492c6ac215b9a              # double 0.64291699999999996
	.quad	0x3fe01b0ccbc05d53              # double 0.50330200000000003
	.quad	0x3fec7121ab4b72c5              # double 0.88880999999999999
	.quad	0x3fd8ae81882adc4d              # double 0.38565100000000002
	.quad	0x3fd5f9335d249e45              # double 0.343335
	.quad	0x3fe27416bdb1a6d7              # double 0.57667100000000004
	.quad	0x3fa07980f55de58e              # double 0.032176999999999997
	.quad	0x3fe74b20fb224aae              # double 0.72792100000000004
	.quad	0x3fe2deb0fadf2ecf              # double 0.58968399999999999
	.quad	0x3fe3d9c49774256c              # double 0.62033300000000002
	.quad	0x3fc2e410b630a915              # double 0.14758499999999999
	.quad	0x3fe29ff2e48e8a72              # double 0.58202500000000001
	.quad	0x3fe5850374ff865d              # double 0.67248699999999995
	.quad	0x3fdaac18f81e8a2f              # double 0.41675400000000001
	.quad	0x3fd32413db7f1737              # double 0.29907699999999998
	.quad	0x3fd3a5b9628cbd12              # double 0.30698999999999999
	.quad	0x3fde63baba7b9171              # double 0.47483700000000001
	.quad	0x3fe2790539fba451              # double 0.57727300000000004
	.quad	0x3fe40958d9b5e95b              # double 0.62614099999999995
	.quad	0x3fe51ac14c660a20              # double 0.65951599999999999
	.quad	0x3fd370c1333b96af              # double 0.303757
	.quad	0x3fdfd7cf5f4e4431              # double 0.49754700000000002
	.quad	0x3fe02a5614df8b15              # double 0.50516799999999995
	.quad	0x3febaa94ff0025c0              # double 0.86457300000000004
	.quad	0x3fce68a0d349be90              # double 0.237568
	.quad	0x3fed030e3cd9a522              # double 0.90662299999999996
	.quad	0x3fe74024b33daf8e              # double 0.72658
	.quad	0x3fd9d12cadddf43c              # double 0.40339199999999997
	.quad	0x3fd2b502ababead5              # double 0.292298
	.quad	0x3fdb1309c7ffde72              # double 0.423037
	.quad	0x3fb8342aa9f7b5af              # double 0.094546000000000005
	.quad	0x3fd070ac3a860dcc              # double 0.25687700000000002
	.quad	0x3fead5f78359bc34              # double 0.838619
	.quad	0x3fede514c22ee419              # double 0.93421399999999999
	.quad	0x3fefa13e3e29307b              # double 0.988433
	.quad	0x3fb320642396073e              # double 0.074713000000000002
	.quad	0x3fe945308bb90646              # double 0.78969599999999995
	.quad	0x3fded3ae685db76b              # double 0.48166999999999999
	.quad	0x3fca27a63736cdf2              # double 0.20433499999999999
	.quad	0x3fec86fcdee34fc6              # double 0.89147799999999999
	.quad	0x3fe645f9df548ece              # double 0.69604200000000005
	.quad	0x3fe1a31e7d9988d3              # double 0.55116200000000004
	.quad	0x3fd683621fafc8b0              # double 0.351769
	.quad	0x3fd76583e8576cce              # double 0.36557099999999998
	.quad	0x3feaf39b024f6599              # double 0.84223700000000001
	.quad	0x3fe4ca48f96e1587              # double 0.64969299999999996
	.quad	0x3fb1d27c39368273              # double 0.069617999999999999
	.quad	0x3fba4b124d099e0e              # double 0.10270799999999999
	.quad	0x3fec9059ea57214f              # double 0.892621
	.quad	0x3fe5917939a7c17b              # double 0.67400800000000005
	.quad	0x3fe70d9513f8db49              # double 0.72040800000000005
	.quad	0x3fd19285a921ccd9              # double 0.27456799999999998
	.quad	0x3fe92e9899bf5947              # double 0.78693800000000003
	.quad	0x3fe8fa2ad3e920c0              # double 0.78053799999999995
	.quad	0x3fdb80cf9e3864cb              # double 0.42973699999999998
	.quad	0x3fef95208e150119              # double 0.98695399999999999
	.quad	0x3fdb097c80841ede              # double 0.422454
	.quad	0x3fe9534bd76ee73e              # double 0.79141799999999995
	.quad	0x3fc5c58255b035bd              # double 0.17008999999999999
	.quad	0x3f9dc011d3671ac1              # double 0.029052999999999999
	.quad	0x3fe545ac471b4784              # double 0.66475499999999998
	.quad	0x3fe2e90ff9724745              # double 0.59094999999999998
	.quad	0x3fd43250b524399b              # double 0.31557099999999999
	.quad	0x3fcc6c43f5f91601              # double 0.222054
	.quad	0x3facc89b0ee49f51              # double 0.056217999999999997
	.quad	0x3fddcb6848beb5b3              # double 0.46554000000000001
	.quad	0x3fb1d7ba6698bb4d              # double 0.069697999999999996
	.quad	0x3fdf7cc39ffd60e9              # double 0.49198999999999998
	.quad	0x3fe78d1fa333764f              # double 0.73597699999999999
	.quad	0x3fea151a437824d5              # double 0.81507600000000002
	.quad	0x3fd21bd61f5be5da              # double 0.28294900000000001
	.quad	0x3fe423fcc9ea9a3d              # double 0.62939299999999998
	.quad	0x3fea4ca4f440af1d              # double 0.82185600000000003
	.quad	0x3fd9b2bba98eda23              # double 0.401534
	.quad	0x3fdaecd8dbcec850              # double 0.42070600000000002
	.quad	0x3fbeaf35e310dbf0              # double 0.119861
	.quad	0x3f9916440f238972              # double 0.024499
	.quad	0x3fe95692b3cc4ac7              # double 0.79181800000000002
	.quad	0x3fe8a85caafbc1ad              # double 0.77055200000000001
	.quad	0x3fc4ddd6e04c0592              # double 0.16302
	.quad	0x3fde2b94d9407896              # double 0.47141
	.quad	0x3fe69a543f1c7582              # double 0.70633900000000005
	.quad	0x3fe3ea4441787054              # double 0.62234699999999998
	.quad	0x3fdbe5753a3ec02f              # double 0.43587999999999999
	.quad	0x3fd47d6f97679032              # double 0.320156
	.quad	0x3fdf40b780346dc6              # double 0.48832500000000001
	.quad	0x3fef3a3ca7503b82              # double 0.97585900000000003
	.quad	0x3fee142f61ed5ae2              # double 0.93996400000000002
	.quad	0x3fe7003686a4ca4f              # double 0.71877599999999997
	.quad	0x3fbcd61b2a27f1b7              # double 0.11264200000000001
	.quad	0x3feee4ef0281ba80              # double 0.96544600000000003
	.quad	0x3fe639085f4a1273              # double 0.69446200000000002
	.quad	0x3fec1873ffac1d2a              # double 0.87798500000000002
	.quad	0x3fd7123c42a66dbd              # double 0.36048799999999998
	.quad	0x3fddcdc8754f3776              # double 0.46568500000000002
	.quad	0x3fe5fce746cb966c              # double 0.68712200000000001
	.quad	0x3fd59f383f0bae8a              # double 0.337843
	.quad	0x3fd859ff4fd6d7e9              # double 0.38049300000000003
	.quad	0x3fcb3ade225fa659              # double 0.21273400000000001
	.quad	0x3fd644806290eed0              # double 0.34793099999999999
	.quad	0x3fe8493ea2d2fe3f              # double 0.75894099999999998
	.quad	0x3fd6c53b0813cab8              # double 0.35578799999999999
	.quad	0x3fd55525cc426352              # double 0.33332200000000001
	.quad	0x3fec61309c7ffde7              # double 0.88686399999999999
	.quad	0x3feaca48f96e1587              # double 0.83719299999999996
	.quad	0x3fd8fd36f7e3d1cc              # double 0.390455
	.quad	0x3fe44998d045fe11              # double 0.63398399999999999
	.quad	0x3fec78d4fdf3b646              # double 0.88975000000000004
	.quad	0x3fcd2ed783dff3f1              # double 0.227992
	.quad	0x3fe0513b5bf6a0dc              # double 0.50991600000000004
	.quad	0x3fd95da6a4441787              # double 0.396341
	.quad	0x3fe65dfa871a3b15              # double 0.69897200000000004
	.quad	0x3fc7022dd7a99fa1              # double 0.179754
	.quad	0x3fdfbfec13b9f128              # double 0.496089
	.quad	0x3fcfd5347a5b0ff1              # double 0.248694
	.quad	0x3fd344a1f080303c              # double 0.301064
	.quad	0x3fe05fdef8487b9a              # double 0.51170300000000002
	.quad	0x3fc43e1869835159              # double 0.15814500000000001
	.quad	0x3fe7b0af5fd47bee              # double 0.74031800000000003
	.quad	0x3fe72af35e310dbf              # double 0.723993
	.quad	0x3fe54c8ffb8b2639              # double 0.66559599999999997
	.quad	0x3fd74ca4f440af1d              # double 0.36405300000000002
	.quad	0x3fd23a7daa4fca43              # double 0.28482000000000002
	.quad	0x3fe55e050374ff86              # double 0.66772699999999996
	.quad	0x3fe3a3d2d87f8876              # double 0.61374799999999996
	.quad	0x3fec441dd1a21ea3              # double 0.88331499999999996
	.quad	0x3fd58055fbb517a4              # double 0.33595799999999998
	.quad	0x3fe5c2ce4649906d              # double 0.68003000000000002
	.quad	0x3fda8c692f6e8295              # double 0.41482000000000002
	.quad	0x3fd8ff9b56323bbc              # double 0.39060099999999998
	.quad	0x3fdc66c2acb85a4f              # double 0.443772
	.quad	0x3fcab3f63c31df76              # double 0.208617
	.quad	0x3fed4ac4b4d056c5              # double 0.915377
	.quad	0x3fdf3504c48adeec              # double 0.48761100000000002
	.quad	0x3fd76deb95e5aff3              # double 0.36608400000000002
	.quad	0x3fefbb9f127f5e85              # double 0.991653
	.quad	0x3fed4d7060bb2bbb              # double 0.91570300000000004
	.quad	0x3fdf9d5a187a4a49              # double 0.493979
	.quad	0x3fe447c0f4517614              # double 0.63375899999999996
	.quad	0x3feb6ae7d566cf42              # double 0.85680000000000001
	.quad	0x3feeb53d640e9d52              # double 0.95962400000000003
	.quad	0x3fd03343fa2ad3e9              # double 0.25312899999999999
	.quad	0x3fe800c521dda05a              # double 0.75009400000000004
	.quad	0x3fdde66cb10342ab              # double 0.46718900000000002
	.quad	0x3fed4384ba0e8427              # double 0.91449199999999997
	.quad	0x3fdc92fb19e731d3              # double 0.44647100000000001
	.quad	0x3fd5b62845996745              # double 0.33924300000000002
	.quad	0x3fe1b3e9a6f826ee              # double 0.55321200000000004
	.quad	0x3feda7807789a459              # double 0.92669699999999999
	.quad	0x3fd12cadddf43c7d              # double 0.26835199999999998
	.quad	0x3feb93b9f127f5e8              # double 0.86178299999999997
	.quad	0x3fe7f7c6759ab6d0              # double 0.748996
	.quad	0x3fbf13be22e5de16              # double 0.121395
	.quad	0x3fe72854477ff152              # double 0.72367300000000001
	.quad	0x3fdcc4651f3e89a9              # double 0.44948700000000003
	.quad	0x3fdbda1a93293d10              # double 0.43518699999999999
	.quad	0x3feed4434e3369ba              # double 0.96341100000000002
	.quad	0x3fef3eec39799e52              # double 0.97643100000000005
	.quad	0x3fe346ed245b291c              # double 0.60240800000000005
	.quad	0x3fe668a71de69ad4              # double 0.70027499999999998
	.quad	0x3fc74e5d5b24e9c4              # double 0.18207899999999999
	.quad	0x3fb5e81cb46bacf7              # double 0.085572999999999996
	.quad	0x3fd2f91e646f1562              # double 0.29645500000000002
	.quad	0x3fe9aa3ad18d25ee              # double 0.80203000000000002
	.quad	0x3fd4968943e10060              # double 0.32168799999999997
	.quad	0x3fd2908e581cf788              # double 0.29007300000000003
	.quad	0x3fd28815e39713ad              # double 0.28955599999999998
	.quad	0x3feba10e02214270              # double 0.86341000000000001
	.quad	0x3fe19e57d9dba909              # double 0.55057900000000004
	.quad	0x3fca569b17481b22              # double 0.20576800000000001
	.quad	0x3fd01c36976bc1f0              # double 0.251722
	.quad	0x3fcae08f21709310              # double 0.209978
	.quad	0x3fe5e358298cc144              # double 0.684002
	.quad	0x3fe7875f6fd21ff3              # double 0.73527500000000001
	.quad	0x3fe66f47b677f6b2              # double 0.70108400000000004
	.quad	0x3fef3a8a3f8982cb              # double 0.97589599999999998
	.quad	0x3fefcb2d905c0336              # double 0.99355199999999999
	.quad	0x3fd47dd00f776c48              # double 0.32017899999999999
	.quad	0x3fb34c6e6d9be4cd              # double 0.075384999999999994
	.quad	0x3fcf56c93a711516              # double 0.244836
	.quad	0x3fcde99e94ab1d50              # double 0.23369200000000001
	.quad	0x3fea07160956c0d7              # double 0.813365
	.quad	0x3fe523571d1d4739              # double 0.66056400000000004
	.quad	0x3fe37a3fcc9ea9a4              # double 0.60867300000000002
	.quad	0x3fe67c58ab92c062              # double 0.70267900000000005
	.quad	0x3fe724766c6de764              # double 0.72320099999999998
	.quad	0x3faa31c64ba94bbe              # double 0.051160999999999998
	.quad	0x3fb3465625a682b6              # double 0.075291999999999998
	.quad	0x3fdf972474538ef3              # double 0.49359999999999998
	.quad	0x3fe9d33d29563a9f              # double 0.80703599999999998
	.quad	0x3fed5182a9930be1              # double 0.91620000000000001
	.quad	0x3fea77ff151e7536              # double 0.82714799999999999
	.quad	0x3fe8f325918a009f              # double 0.77968099999999996
	.quad	0x3fe1cf893faf4278              # double 0.55658399999999997
	.quad	0x3fcaa5375c8d9f90              # double 0.20816699999999999
	.quad	0x3fb79e6ab9b23dd5              # double 0.092260999999999996
	.quad	0x3fdb29fe004b7f5a              # double 0.42443799999999998
	.quad	0x3fda456f75d9a0f1              # double 0.41048800000000002
	.quad	0x3fe90d9513f8db49              # double 0.78290800000000005
	.quad	0x3fd36aa8eb463498              # double 0.30338500000000002
	.quad	0x3fec63ac0c62e4d2              # double 0.88716700000000004
	.quad	0x3feb68b3b320535d              # double 0.85653100000000004
	.quad	0x3fefda597d49d7ba              # double 0.99540399999999996
	.quad	0x3fe38a9bcfd4bf0a              # double 0.61067000000000005
	.quad	0x3fd6d98bf7f06706              # double 0.35702800000000001
	.quad	0x3fc9d7c2ca148ba8              # double 0.20189699999999999
	.quad	0x3f808787485e3da3              # double 0.008071
	.quad	0x3fe2610cf5b1c865              # double 0.57434700000000005
	.quad	0x3fe2977c88e79aae              # double 0.58099199999999995
	.quad	0x3fdb6d549731098d              # double 0.42854799999999998
	.quad	0x3fe2700abf76a2f5              # double 0.57617700000000005
	.quad	0x3fee435ac8a37260              # double 0.94572199999999995
	.quad	0x3fe15421c044284e              # double 0.54152
	.quad	0x3fd10cb6c7a7c9de              # double 0.266401
	.quad	0x3feecfaeff5c6c12              # double 0.96285200000000004
	.quad	0x3fefcf9c1f85d745              # double 0.994093
	.quad	0x3fc51feeb2d0a244              # double 0.16503699999999999
	.quad	0x3fd92c83ec892ab7              # double 0.39334200000000002
	.quad	0x3fe5fd63022dd7aa              # double 0.68718100000000004
	.quad	0x3fed3311a543f1c7              # double 0.91248399999999996
	.quad	0x3fe5970d62bf11f9              # double 0.67468899999999998
	.quad	0x3feec065b63d3e4f              # double 0.960986
	.quad	0x3fd236bd2b6f1993              # double 0.28459099999999998
	.quad	0x3fd670e6f2e8c048              # double 0.35064099999999998
	.quad	0x3fd7057082491afc              # double 0.359707
	.quad	0x3fb48c0ce91c8eac              # double 0.080262
	.quad	0x3fdbbc83a96d4c34              # double 0.43338100000000002
	.quad	0x3fc2ee392e1ef73c              # double 0.147895
	.quad	0x3feca58d5842b735              # double 0.89520900000000003
	.quad	0x3fe14938583621fb              # double 0.540188
	.quad	0x3fb176ff3ade2260              # double 0.068222000000000005
	.quad	0x3fe7413b9f127f5f              # double 0.72671300000000005
	.quad	0x3fea8d4fdf3b645a              # double 0.82974999999999999
	.quad	0x3fc7c64345cfede9              # double 0.18573799999999999
	.quad	0x3fdff92f2b66b617              # double 0.49958399999999997
	.quad	0x3fcf555821294574              # double 0.24479200000000001
	.quad	0x3fbf0ad46f587d70              # double 0.12125900000000001
	.quad	0x3fd5c64345cfede9              # double 0.34022599999999997
	.quad	0x3fd188333fc86cec              # double 0.27393800000000001
	.quad	0x3fe9a8e2e2b8c75c              # double 0.80186599999999996
	.quad	0x3fd163f141205bc0              # double 0.27172499999999999
	.quad	0x3fe85082cf52b90a              # double 0.75982799999999995
	.quad	0x3fceefdc9c4da900              # double 0.24169499999999999
	.quad	0x3fe9a1101b003687              # double 0.80091100000000004
	.quad	0x3fe5243bb40b34e7              # double 0.66067299999999995
	.quad	0x3fc93300de4c5111              # double 0.19686899999999999
	.quad	0x3fcf05d95dd4c76d              # double 0.242366
	.quad	0x3fe00b45ae5ffa3c              # double 0.50137600000000004
	.quad	0x3fd5de1e2de87097              # double 0.34168199999999999
	.quad	0x3fccc8472c0e7bc4              # double 0.22486200000000001
	.quad	0x3fcc753e707e175d              # double 0.222328
	.quad	0x3fefaf102363b257              # double 0.99012
	.quad	0x3fd6e496ededaec5              # double 0.35770200000000002
	.quad	0x3fea896bb98c7e28              # double 0.82927499999999998
	.quad	0x3fe7d50ca1cef241              # double 0.744757
	.quad	0x3fd1e6eeb702602d              # double 0.27972000000000002
	.quad	0x3fe570c996b7670a              # double 0.670018
	.quad	0x3fe736bb1290257d              # double 0.72543100000000005
	.quad	0x3fe5f79420b3d4ae              # double 0.68647199999999997
	.quad	0x3fd4de3fbbd7b203              # double 0.32606499999999999
	.quad	0x3fd2658c4bd33d29              # double 0.28744799999999998
	.quad	0x3fdd8f2170931013              # double 0.46186100000000002
	.quad	0x3fe88a8d21bc126a              # double 0.76691299999999996
	.quad	0x3fde3161a1db877b              # double 0.47176400000000002
	.quad	0x3fe70cd63cb81733              # double 0.72031699999999999
	.quad	0x3fe8c4b90214ad36              # double 0.77401399999999998
	.quad	0x3fde2513b5bf6a0e              # double 0.47101300000000001
	.quad	0x3fd22fe82517e77d              # double 0.28417399999999998
	.quad	0x3fea701322f27350              # double 0.82618100000000005
	.quad	0x3fc73c68661ae70c              # double 0.181531
	.quad	0x3fddc84f8f8a4c1f              # double 0.46535100000000001
	.quad	0x3fd352ce032db1ea              # double 0.301929
	.quad	0x3fc2aa21a719b4dd              # double 0.145817
	.quad	0x3fb623f24d8fd5cb              # double 0.086485999999999993
	.quad	0x3fe5d7060bb2bbaa              # double 0.68249800000000005
	.quad	0x3fd0917939a7c17b              # double 0.25887900000000003
	.quad	0x3fe3bae89eba6aca              # double 0.61656599999999995
	.quad	0x3f80a4e379b77c03              # double 0.0081270000000000005
	.quad	0x3fb892253111f0c3              # double 0.095979999999999996
	.quad	0x3fe47b2aae297397              # double 0.64003500000000002
	.quad	0x3febbf26f1dc50ce              # double 0.86708399999999997
	.quad	0x3fed614bdfd2630f              # double 0.91812700000000003
	.quad	0x3feafb1c0010c6f8              # double 0.84315300000000004
	.quad	0x3fead9af9ebe9c88              # double 0.83907299999999996
	.quad	0x3fe5ceb78897e996              # double 0.68148399999999998
	.quad	0x3fe611f2dc2b0ea2              # double 0.68969100000000005
	.quad	0x3fc1a01eeed8904f              # double 0.13769899999999999
	.quad	0x3fd8ab53d640e9d5              # double 0.38545699999999999
	.quad	0x3fe365eaab042529              # double 0.60619100000000004
	.quad	0x3fe144fc1df3300e              # double 0.53967100000000001
	.quad	0x3fd836da87a072d2              # double 0.37834800000000002
	.quad	0x3fecad0a24463066              # double 0.896123
	.quad	0x3fb1477bbf93ff26              # double 0.067497000000000001
	.quad	0x3fe413e1c9b41398              # double 0.62742699999999996
	.quad	0x3f91b36bd2b6f199              # double 0.017285999999999999
	.quad	0x3fc362174c4cdfad              # double 0.15143100000000001
	.quad	0x3fceb3c3e74afd54              # double 0.23986099999999999
	.quad	0x3fd6df3b645a1cac              # double 0.357375
	.quad	0x3fe551244a6223e2              # double 0.66615500000000005
	.quad	0x3f77214f0520d131              # double 0.0056470000000000001
	.quad	0x3fd6870110a137f4              # double 0.35199000000000003
	.quad	0x3fe23dd334c5da6a              # double 0.57004699999999997
	.quad	0x3fd4620685553ef7              # double 0.31848300000000002
	.quad	0x3faf68be2f7b17ce              # double 0.061345999999999998
	.quad	0x3fd6e8c47a17f413              # double 0.35795700000000003
	.quad	0x3f9255f3519bd406              # double 0.017905999999999998
	.quad	0x3fe30c32a8c9b845              # double 0.59523899999999996
	.quad	0x3fe2b22d0e560419              # double 0.58425000000000005
	.quad	0x3fee456b441bb8c3              # double 0.94597399999999998
	.quad	0x3fef4d141a6937d2              # double 0.978159
	.quad	0x3fe49f687b139c95              # double 0.644459
	.quad	0x3fc0072d1aeb3dd1              # double 0.125219
	.quad	0x3fd8e0e736049ecb              # double 0.38872699999999999
	.quad	0x3fe24f3dc054ef46              # double 0.57217300000000004
	.quad	0x3fd86dca07f66e87              # double 0.38170100000000001
	.quad	0x3f9d948dc11e42e1              # double 0.028886999999999999
	.quad	0x3fe809f623076c05              # double 0.75121599999999999
	.quad	0x3fedfb86f47b677f              # double 0.93695399999999995
	.quad	0x3fd0443914f483cb              # double 0.254164
	.quad	0x3fe61a86940357a3              # double 0.69073799999999996
	.quad	0x3fca0780fdc1615f              # double 0.20335400000000001
	.quad	0x3fa44a1f080303c0              # double 0.039627999999999997
	.quad	0x3feefeed45e9185d              # double 0.968619
	.quad	0x3fd758d1526d8b1e              # double 0.36479600000000001
	.quad	0x3fbf86b15f88fc93              # double 0.12314899999999999
	.quad	0x3fef066a11ec918e              # double 0.96953299999999998
	.quad	0x3fe1797cc39ffd61              # double 0.54608000000000001
	.quad	0x3feab1db445ed4a2              # double 0.83421100000000004
	.quad	0x3feaf47d805e5f31              # double 0.84234500000000001
	.quad	0x3fe43f83382e44b7              # double 0.63275300000000001
	.quad	0x3fb02235b4edb2f6              # double 0.063021999999999995
	.quad	0x3fe079f01b866e44              # double 0.51488500000000004
	.quad	0x3fc6d62bf11f926c              # double 0.17841099999999999
	.quad	0x3fba5f84cad57bc8              # double 0.10302
	.quad	0x3fe09709310129cc              # double 0.51843700000000004
	.quad	0x3fe22eafab53d641              # double 0.56819900000000001
	.quad	0x3fed93250b52439a              # double 0.92421200000000003
	.quad	0x3fe37a311e85fd05              # double 0.60866600000000004
	.quad	0x3feab7ae5796bfcb              # double 0.83492200000000005
	.quad	0x3fd613b18dac258d              # double 0.34495199999999998
	.quad	0x3fd911d3671ac14c              # double 0.39171299999999998
	.quad	0x3fc786f47b677f6b              # double 0.183806
	.quad	0x3fdb8c0ce91c8eac              # double 0.430423
	.quad	0x3fe3a8112ba16e7a              # double 0.61426599999999998
	.quad	0x3fc0d434a01abd1b              # double 0.13147600000000001
	.quad	0x3fed70ac3a860dcc              # double 0.92000400000000004
	.quad	0x3fe9cd940789613d              # double 0.80634499999999998
	.quad	0x3fe8e5abc0e38a7e              # double 0.77803599999999995
	.quad	0x3fe850efdc9c4da9              # double 0.75988
	.quad	0x3fe355f99c38b04b              # double 0.60424500000000003
	.quad	0x3fdf1672324c8366              # double 0.48574499999999998
	.quad	0x3fe2f5c8d9f9053a              # double 0.592503
	.quad	0x3fd609c3ce2089e3              # double 0.34434599999999999
	.quad	0x3f7e3c968943e100              # double 0.0073819999999999997
	.quad	0x3fed559b3d07c84b              # double 0.91669999999999996
	.quad	0x3fd3138fffbce421              # double 0.29806899999999997
	.quad	0x3fecc9e6687f455a              # double 0.89964599999999995
	.quad	0x3fdc1f9acffa7eb7              # double 0.43942900000000001
	.quad	0x3fe25955714b9cb7              # double 0.57340500000000005
	.quad	0x3fbdd3dc8b86b160              # double 0.11651400000000001
	.quad	0x3fe30b88ca3e7d13              # double 0.59515799999999996
	.quad	0x3fce16052502eec8              # double 0.23504700000000001
	.quad	0x3feca4bfd2e94680              # double 0.89511099999999999
	.quad	0x3fad85be1a826245              # double 0.057660999999999997
	.quad	0x3fa57082491afc05              # double 0.041874000000000001
	.quad	0x3fc898a222d5171e              # double 0.192158
	.quad	0x3fd6f2b66b6177ea              # double 0.35856399999999999
	.quad	0x3fe0226e5471715c              # double 0.50420299999999996
	.quad	0x3fe7cf9c1f85d745              # double 0.744093
	.quad	0x3fd23a0407cc7d1c              # double 0.28479100000000002
	.quad	0x3fc8edaa92e62132              # double 0.19475300000000001
	.quad	0x3feb5bfad2999568              # double 0.85497800000000002
	.quad	0x3fe4e8e820e62995              # double 0.65343099999999998
	.quad	0x3fd80507a6bd6e8b              # double 0.375307
	.quad	0x3fde912556d19ded              # double 0.47760900000000001
	.quad	0x3fdb0763a1900820              # double 0.42232599999999998
	.quad	0x3fed6366d7a56de3              # double 0.91838399999999998
	.quad	0x3fd8b0a6fc58ab93              # double 0.38578200000000001
	.quad	0x3fc0c48adeebb342              # double 0.130998
	.quad	0x3fefdffe6d58c8ef              # double 0.996093
	.quad	0x3fec12fd32c625ea              # double 0.87731800000000004
	.quad	0x3fc2ab1d4f9c1f86              # double 0.145847
	.quad	0x3fefdab5c39bcba3              # double 0.99544799999999999
	.quad	0x3fd7868fd199bb28              # double 0.36758800000000003
	.quad	0x3fd3c929aa1d755c              # double 0.30915300000000001
	.quad	0x3feb64dc22ab25b3              # double 0.85606199999999999
	.quad	0x3fad8bc59b8023a7              # double 0.057707000000000001
	.quad	0x3fd24c7b02d59d56              # double 0.28591800000000001
	.quad	0x3feb7db4cc250721              # double 0.85909500000000005
	.quad	0x3fe53074a771c971              # double 0.662165
	.quad	0x3fe7146801711948              # double 0.72124100000000002
	.quad	0x3fde463065f9591d              # double 0.47303400000000001
	.quad	0x3fe050d8cb07d0af              # double 0.50986900000000002
	.quad	0x3fc672a7bd48cb4b              # double 0.175374
	.quad	0x3fc2a4b124d099e1              # double 0.145651
	.quad	0x3fe82599ed7c6fbd              # double 0.75458999999999998
	.quad	0x3fc0328f9f44d445              # double 0.12654299999999999
	.quad	0x3fe62dc8fb86f47b              # double 0.69308899999999996
	.quad	0x3fe075147f130596              # double 0.51429199999999997
	.quad	0x3fdf07a28bb0a2cb              # double 0.48484100000000002
	.quad	0x3fe39ba1b1960fa1              # double 0.61274799999999996
	.quad	0x3fedf5a1016ce78a              # double 0.93623400000000001
	.quad	0x3fd7eae5bc87db2b              # double 0.37371199999999999
	.quad	0x3fef9919ac79702e              # double 0.98743899999999996
	.quad	0x3fe08e8a71de69ad              # double 0.51739999999999997
	.quad	0x3fc987ad080b673c              # double 0.19945299999999999
	.quad	0x3fedb9e492bc2fc7              # double 0.92894200000000005
	.quad	0x3fe52a8c9b845565              # double 0.66144400000000003
	.quad	0x3fe1041ede1198af              # double 0.53175300000000003
	.quad	0x3fed68f29d40ee07              # double 0.91906100000000002
	.quad	0x3fe4f694467381d8              # double 0.65510000000000002
	.quad	0x3fd9aa5c5f7c675a              # double 0.40102300000000002
	.quad	0x3fabaf965b20b806              # double 0.054073999999999997
	.quad	0x3fd8dc1e7967caea              # double 0.38843499999999997
	.quad	0x3fd9467be553ac4f              # double 0.39492699999999997
	.quad	0x3fd776534373f317              # double 0.36659700000000001
	.quad	0x3f8f394b7b28954a              # double 0.015245999999999999
	.quad	0x3fed0f3cb3e5753a              # double 0.90810999999999997
	.quad	0x3fd4cd035371971c              # double 0.325013
	.quad	0x3feb9205bc01a36e              # double 0.86157499999999998
	.quad	0x3fe3191148fd9fd3              # double 0.59680999999999995
	.quad	0x3fe646ed245b291c              # double 0.69615800000000005
	.quad	0x3fe9fb3311a543f2              # double 0.81191400000000002
	.quad	0x3fe131a08bfc2225              # double 0.53730800000000001
	.quad	0x3fe86a2b1704ff43              # double 0.76295999999999997
	.quad	0x3fc2266fd651b0cd              # double 0.14179800000000001
	.quad	0x3fe650ca1cef2410              # double 0.69736200000000004
	.quad	0x3fe1d579af1886e0              # double 0.55730900000000005
	.quad	0x3fd6953586ca89fc              # double 0.35285699999999998
	.quad	0x3fe3a921ccd96207              # double 0.61439600000000005
	.quad	0x3fddfe4bcad9ad86              # double 0.46864600000000001
	.quad	0x3fd97d49d7ba6699              # double 0.39827200000000001
	.quad	0x3fe87f3cf70153bd              # double 0.76553199999999999
	.quad	0x3fea69707182235b              # double 0.82537099999999997
	.quad	0x3fc8f81626b2f230              # double 0.19507099999999999
	.quad	0x3fdfddb9841aac54              # double 0.49790800000000002
	.quad	0x3fc8749f0e4da09d              # double 0.19105900000000001
	.quad	0x3fdaf7c6759ab6d0              # double 0.421373
	.quad	0x3fc035935fc3b4f6              # double 0.126635
	.quad	0x3fde36501e2584f5              # double 0.47206500000000001
	.quad	0x3fd2e60807357e67              # double 0.29529
	.quad	0x3fe1160fa15db339              # double 0.53394299999999995
	.quad	0x3fe96ba8c586876e              # double 0.79439199999999999
	.quad	0x3fd6827fa1a0cf18              # double 0.351715
	.quad	0x3fdb9b0ee49f5169              # double 0.43133899999999997
	.quad	0x3fe48157eed45e92              # double 0.64078900000000005
	.quad	0x3fe83b55ac03ff69              # double 0.757243
	.quad	0x3fe06275ab7dc7ac              # double 0.512019
	.quad	0x3fe874d594f26aec              # double 0.76426199999999999
	.quad	0x3fd7ae7924af0bf2              # double 0.37002400000000002
	.quad	0x3fe11c62a1b5c7ce              # double 0.53471500000000005
	.quad	0x3fe4e4b44a1f0803              # double 0.652918
	.quad	0x3fe40958d9b5e95b              # double 0.62614099999999995
	.quad	0x3fe760e736049ecb              # double 0.73057899999999998
	.quad	0x3fd840dd3fe1975f              # double 0.37895899999999999
	.quad	0x3fdd2b1f687b139d              # double 0.45575700000000002
	.quad	0x3fda8676a7264a17              # double 0.41445700000000002
	.quad	0x3fe2bf9830e3cd9a              # double 0.58588799999999996
	.quad	0x3fdf9613d31b9b67              # double 0.493535
	.quad	0x3fb2b862b27cbf6e              # double 0.073125999999999997
	.quad	0x3fee07570c564f98              # double 0.938396
	.quad	0x3fb6512a94ff0026              # double 0.087176000000000003
	.quad	0x3fd1040bfe3b03e2              # double 0.265872
	.quad	0x3fe31fc2a8869c67              # double 0.59762700000000002
	.quad	0x3fef7ecdd0d8cb08              # double 0.98422900000000002
	.quad	0x3fa87c6327ed84d3              # double 0.047823999999999998
	.quad	0x3fd972580c308feb              # double 0.39760400000000001
	.quad	0x3feb265061416378              # double 0.84842700000000004
	.quad	0x3fb7111f0c34c1a9              # double 0.090105000000000005
	.quad	0x3fc71422ccb3a259              # double 0.18030199999999999
	.quad	0x3fd0a65061416378              # double 0.26015100000000002
	.quad	0x3fea22fcefaa4767              # double 0.81677100000000002
	.quad	0x3fec06f262888b54              # double 0.87584799999999995
	.quad	0x3fead818c5c9a34d              # double 0.83887900000000004
	.quad	0x3fd674107314ca92              # double 0.35083399999999998
	.quad	0x3fe274f93bc0a06f              # double 0.57677900000000004
	.quad	0x3fc522291fb3fa6e              # double 0.165105
	.quad	0x3fea21c25d074214              # double 0.81662100000000004
	.quad	0x3fea1d4738a3b57c              # double 0.81607399999999996
	.quad	0x3fe9c6412cf0f9d3              # double 0.80545100000000003
	.quad	0x3fd63636f3b213e4              # double 0.34705900000000001
	.quad	0x3fe9fc4e2f37fbf0              # double 0.81204900000000002
	.quad	0x3fd55f99c38b04ab              # double 0.33395999999999998
	.quad	0x3fe282a3486f049b              # double 0.57844700000000004
	.quad	0x3fe066149c6f36f0              # double 0.51246100000000006
	.quad	0x3fe75b76b3bb83cf              # double 0.72991499999999998
	.quad	0x3fe9df548ecd8dbd              # double 0.80851200000000001
	.quad	0x3fcede19fc2a886a              # double 0.24115300000000001
	.quad	0x3fe0cf4a558ea7ce              # double 0.52530399999999999
	.quad	0x3fd5829068986fce              # double 0.336094
	.quad	0x3fd6dc725c3dee78              # double 0.35720499999999999
	.quad	0x3fe9195ee136e71d              # double 0.78434700000000002
	.quad	0x3fe191600f34506a              # double 0.54899600000000004
	.quad	0x3fd776188b11409a              # double 0.36658299999999999
	.quad	0x3fe93f76a2f48c2e              # double 0.78899699999999995
	.quad	0x3fe76d959a30984e              # double 0.73212699999999997
	.quad	0x3fed67c6b8b69553              # double 0.91891800000000001
	.quad	0x3fe19e68a0d349bf              # double 0.55058700000000005
	.quad	0x3fd6c89b0ee49f51              # double 0.35599399999999998
	.quad	0x3fbf517a46173b86              # double 0.122337
	.quad	0x3fcfe12a51e321a3              # double 0.249059
	.quad	0x3fd06f4384ba0e84              # double 0.25679099999999999
	.quad	0x3feaa235b4edb2f6              # double 0.83230099999999996
	.quad	0x3fea477ff151e753              # double 0.82122799999999996
	.quad	0x3fa48c2e770bd018              # double 0.040132000000000001
	.quad	0x3fd48049667b5f1c              # double 0.32033
	.quad	0x3feca67839cd8128              # double 0.89532100000000003
	.quad	0x3fb486ad2dcb1466              # double 0.080180000000000001
	.quad	0x3fb05186db50f40e              # double 0.063743999999999995
	.quad	0x3fd427631b584b1b              # double 0.31490400000000002
	.quad	0x3fc0e69f05ea24cc              # double 0.13203799999999999
	.quad	0x3fe01edbf8b9baa1              # double 0.50376699999999996
	.quad	0x3fe3ecc814d7279a              # double 0.62265400000000004
	.quad	0x3febdf6ba0620ab7              # double 0.87102299999999999
	.quad	0x3febf666234a87e4              # double 0.87382800000000004
	.quad	0x3fdd99c7bcc2938e              # double 0.46251100000000001
	.quad	0x3fe0cde7ea5f84cb              # double 0.52513500000000002
	.quad	0x3fc8447c30d306a3              # double 0.18959000000000001
	.quad	0x3fec74d7add15f03              # double 0.88926300000000003
	.quad	0x3fccdcfcc5b8dc55              # double 0.225494
	.quad	0x3feeb2f01754b05b              # double 0.95934299999999994
	.quad	0x3fbef9ebe9c88616              # double 0.121001
	.quad	0x3feafa89331a08c0              # double 0.84308300000000003
	.quad	0x3fd8899392189bd8              # double 0.38339699999999999
	.quad	0x3feb364bec679cc7              # double 0.85037799999999997
	.quad	0x3fa21272c94b380d              # double 0.035297000000000002
	.quad	0x3fd4a05143bf7271              # double 0.32228499999999999
	.quad	0x3fe0d52c16df3f96              # double 0.52602199999999999
	.quad	0x3fe373f316e37154              # double 0.607904
	.quad	0x3fdb63b688bda943              # double 0.42796099999999998
	.quad	0x3fd2f5cf2495e17e              # double 0.29625299999999999
	.quad	0x3fdb960b6f9fcb0c              # double 0.431033
	.quad	0x3fc2eb78897e9963              # double 0.147811
	.quad	0x3fc07ac81d3aa36a              # double 0.128747
	.quad	0x3fef8b4bf8fcd680              # double 0.98575400000000002
	.quad	0x3fd1c3760bf5d788              # double 0.277555
	.quad	0x3fc3ddc1e7967caf              # double 0.15520500000000001
	.quad	0x3fe47c86cebbba56              # double 0.64020100000000002
	.quad	0x3fe6b98a65492ff5              # double 0.71014900000000003
	.quad	0x3fd0ec13b9f127f6              # double 0.26440900000000001
	.quad	0x3fcdb80a9de8b3b3              # double 0.232179
	.quad	0x3fe3d6b228dc981c              # double 0.61995800000000001
	.quad	0x3fdbaa68f4b61fe2              # double 0.43227599999999999
	.quad	0x3fd109e12a51e322              # double 0.26622800000000002
	.quad	0x3fe22873bc903ea7              # double 0.567438
	.quad	0x3fefcdfaca361998              # double 0.99389400000000005
	.quad	0x3fc10ca1cef240fb              # double 0.13319800000000001
	.quad	0x3feecd65e4606749              # double 0.96257300000000001
	.quad	0x3fe338d823422468              # double 0.60068900000000003
	.quad	0x3fd694898f605ab4              # double 0.35281600000000002
	.quad	0x3fa18a43bb40b34e              # double 0.034257999999999997
	.quad	0x3fd5bb9cf9a06a6e              # double 0.33957599999999999
	.quad	0x3feade41d4b6a61a              # double 0.83963100000000002
	.quad	0x3fed8ffb8b263950              # double 0.92382600000000004
	.quad	0x3fd0d0e991ff7165              # double 0.26275100000000001
	.quad	0x3fd7c9ff92f2b66b              # double 0.37170399999999998
	.quad	0x3fc6bd44998d0460              # double 0.177651
	.quad	0x3fb26394face67d7              # double 0.071831999999999993
	.quad	0x3f9dd93c46d82ba6              # double 0.029149000000000001
	.quad	0x3fc4913a4f8726d0              # double 0.16068199999999999
	.quad	0x3fe4a556d19dece5              # double 0.64518299999999995
	.quad	0x3fc95b573eab367a              # double 0.1981
	.quad	0x3fedefeb4a66559f              # double 0.93553699999999995
	.quad	0x3fd67ee4e26d4802              # double 0.351495
	.quad	0x3fe842df0d413123              # double 0.75816300000000003
	.quad	0x3fec6b7ed41b75a7              # double 0.88812199999999997
	.quad	0x3fb08cb4aec8d5c7              # double 0.064646999999999996
	.quad	0x3fd2adc4c9c90c4e              # double 0.291856
	.quad	0x3fc01abd1aa821f3              # double 0.12581600000000001
	.quad	0x3fe9aca793576039              # double 0.80232599999999998
	.quad	0x3fe845a3e39f7729              # double 0.75850099999999998
	.quad	0x3fe4308787485e3e              # double 0.63092400000000004
	.quad	0x3fe14ac083126e98              # double 0.54037500000000005
	.quad	0x3fe53eec39799e52              # double 0.66393100000000005
	.quad	0x3fddff7164c729f6              # double 0.46871600000000002
	.quad	0x3fe9f648c7192ea5              # double 0.81131399999999998
	.quad	0x3fd37e02645e4e6a              # double 0.304566
	.quad	0x3fedb65881a15550              # double 0.92850900000000003
	.quad	0x3fab00de4c51116b              # double 0.052741000000000003
	.quad	0x3fe4e3baba7b9171              # double 0.65279900000000002
	.quad	0x3fd26134ce3de615              # double 0.28718300000000002
	.quad	0x3fd8154866a11ec9              # double 0.37629899999999999
	.quad	0x3fe2d7cd466f501a              # double 0.58884300000000001
	.quad	0x3fb9905c03361566              # double 0.099859000000000003
	.quad	0x3fd5a80064a9cdc4              # double 0.33837899999999999
	.quad	0x3fa0a2877ee4e26d              # double 0.032489999999999998
	.quad	0x3fda94ea077036ca              # double 0.41533900000000001
	.quad	0x3fcbb499d0203e64              # double 0.216449
	.quad	0x3fd64edf61240746              # double 0.34856399999999998
	.quad	0x3fe99b13165d3997              # double 0.80018
	.quad	0x3fed58a761027957              # double 0.917072
	.quad	0x3fdf32df505d0fa6              # double 0.48748000000000002
	.quad	0x3feec75c4a83b1d1              # double 0.96183600000000002
	.quad	0x3fe3d7d7c2ca148c              # double 0.62009800000000004
	.quad	0x3fe2ccc25072085b              # double 0.58749499999999999
	.quad	0x3f727b2cc70867ae              # double 0.0045120000000000004
	.quad	0x3fe92a9d627bf61b              # double 0.78645200000000004
	.quad	0x3fe752f1a9fbe76d              # double 0.72887500000000005
	.quad	0x3fe4eddaceee0f3d              # double 0.65403500000000003
	.quad	0x3fc111d798d8a97a              # double 0.133357
	.quad	0x3fb50c5eb313be23              # double 0.082220000000000001
	.quad	0x3fc718e325d4a5df              # double 0.180447
	.quad	0x3fc41dda059a73b4              # double 0.157161
	.quad	0x3fe8b44c37e6f71a              # double 0.77200899999999995
	.quad	0x3fe012b1b36bd2b7              # double 0.50228200000000001
	.quad	0x3fd2ea5b530ced4e              # double 0.29555399999999998
	.quad	0x3fc0fa93af74cd31              # double 0.13264699999999999
	.quad	0x3fe9c0a8d21bc127              # double 0.80476800000000004
	.quad	0x3fb8af1cb89d6adf              # double 0.096421999999999994
	.quad	0x3fd5454152b0a6fc              # double 0.33235199999999998
	.quad	0x3fd293d5347a5b10              # double 0.290273
	.quad	0x3fefd25247cb70ac              # double 0.99442399999999997
	.quad	0x3fef497d8cf398e9              # double 0.97772099999999995
	.quad	0x3fc5f06705c896dd              # double 0.171399
	.quad	0x3fe628049667b5f2              # double 0.69238500000000003
	.quad	0x3feedcd7060bb2bc              # double 0.96445800000000003
	.quad	0x3fdfa78af3e468cb              # double 0.49460100000000001
	.quad	0x3fea3f61aa3f034b              # double 0.82023699999999999
	.quad	0x3fd39378ee286727              # double 0.30587599999999998
	.quad	0x3fea14317acc4ef9              # double 0.81496500000000005
	.quad	0x3fee1246bf01322f              # double 0.93973099999999998
	.quad	0x3fe7ba6698bb4d49              # double 0.74150400000000005
	.quad	0x3feebc74fb549f95              # double 0.96050500000000005
	.quad	0x3fecae3c536d655e              # double 0.89626899999999998
	.quad	0x3fcd2fb19e731d2e              # double 0.228018
	.quad	0x3fe0ef9db22d0e56              # double 0.52925
	.quad	0x3feb88b11409a240              # double 0.86043599999999998
	.quad	0x3fe59b9d7fd82774              # double 0.67524600000000001
	.quad	0x3fe3d903a7546d40              # double 0.62024100000000004
	.quad	0x3fd4bf9c62a1b5c8              # double 0.32419500000000001
	.quad	0x3fc0b25b317efe0d              # double 0.130443
	.quad	0x3fedb0ced4e4c943              # double 0.92783300000000002
	.quad	0x3f8d3e4ef0281ba8              # double 0.014279
	.quad	0x3fdea4766c6de764              # double 0.47878799999999999
	.quad	0x3fee9d3cbc48f10b              # double 0.95669400000000004
	.quad	0x3fd158e219652bd4              # double 0.27105000000000001
	.quad	0x3fdc885d31337eb3              # double 0.44582300000000002
	.quad	0x3fea1207d4e09785              # double 0.81470100000000001
	.quad	0x3fd28fd199bb2789              # double 0.29002800000000001
	.quad	0x3fd68b2a6b0d9514              # double 0.352244
	.quad	0x3fd5850df15a4acf              # double 0.33624599999999999
	.quad	0x3fe77a54c5543287              # double 0.73368299999999997
	.quad	0x3fe28eae18ac9f30              # double 0.57991700000000002
	.quad	0x3fefa369fcf3dc05              # double 0.98869799999999996
	.quad	0x3fc20b45ae5ffa3c              # double 0.14096900000000001
	.quad	0x3fd1ac9afe1da7b1              # double 0.27616000000000002
	.quad	0x3fe4dc93ea2d2fe4              # double 0.65192600000000001
	.quad	0x3fd439fba450acc1              # double 0.31603900000000001
	.quad	0x3fd32539756c93a7              # double 0.299147
	.quad	0x3f8dbd2fa0d77b7c              # double 0.014520999999999999
	.quad	0x3fe1af46aa087ca6              # double 0.55264599999999997
	.quad	0x3fb333b96af038e3              # double 0.075008000000000005
	.quad	0x3fbae9bbf0dc768e              # double 0.105129
	.quad	0x3fbfd1bb4916ca47              # double 0.124294
	.quad	0x3fd798e53eb399f6              # double 0.36870700000000001
	.quad	0x3fe9a7589efd86a9              # double 0.801678
	.quad	0x3fd35fc3b4f61672              # double 0.30271999999999999
	.quad	0x3fc5ba2be0589acc              # double 0.16974400000000001
	.quad	0x3fe300a17b0f6ad7              # double 0.59382699999999999
	.quad	0x3fa0dbcec84f8f8a              # double 0.032926999999999998
	.quad	0x3fe1a45f5ad96a6a              # double 0.551315
	.quad	0x3fef1b43526527a2              # double 0.972078
	.quad	0x3fec9bf5946c332f              # double 0.894038
	.quad	0x3fb2dfd694ccab3f              # double 0.073728000000000002
	.quad	0x3fd11a47a9e2bcf9              # double 0.26722899999999999
	.quad	0x3fd5a261bf37b8d4              # double 0.338036
	.quad	0x3fc9463cfb3311a5              # double 0.19745599999999999
	.quad	0x3fe688ca3e7d1351              # double 0.70419799999999999
	.quad	0x3fd2ca5375c8d9f9              # double 0.293599
	.quad	0x3fd6b60285ec3dab              # double 0.35485899999999998
	.quad	0x3fcd4445aa2e3c53              # double 0.22864599999999999
	.quad	0x3fc892a305532618              # double 0.19197500000000001
	.quad	0x3fd56e9bbf0dc769              # double 0.33487600000000001
	.quad	0x3fe46dd8b60f1b26              # double 0.638409
	.quad	0x3fdf82235b4edb2f              # double 0.49231799999999998
	.quad	0x3fe17ab96f21f6cb              # double 0.54623100000000002
	.quad	0x3fef7e2c55c96031              # double 0.98415200000000002
	.quad	0x3fee214ad362e903              # double 0.94156399999999996
	.quad	0x3fcacc46950fc71d              # double 0.20935899999999999
	.quad	0x3f66db0dd82fd75e              # double 0.0027899999999999999
	.quad	0x3fe4f646ae3a3a8e              # double 0.65506299999999995
	.quad	0x3fed4195cc857f30              # double 0.91425599999999996
	.quad	0x3fd513879c4113c7              # double 0.32931700000000003
	.quad	0x3feb8945f9df548f              # double 0.86050700000000002
	.quad	0x3fdee3d5fdcdf698              # double 0.48265599999999997
	.quad	0x3fd5595feda66128              # double 0.33357999999999999
	.quad	0x3fd39fe43675ddd3              # double 0.30663400000000002
	.quad	0x3fcca4e379b77c03              # double 0.22378200000000001
	.quad	0x3fea1ccfaeff5c6c              # double 0.81601699999999999
	.quad	0x3fed482e019b0ab3              # double 0.91506100000000001
	.quad	0x3f86b3bb83cf2cf9              # double 0.011084999999999999
	.quad	0x3fefc107314ca926              # double 0.992313
	.quad	0x3fdfdec1c1d6cf85              # double 0.497971
	.quad	0x3fe295a07b352a84              # double 0.58076499999999998
	.quad	0x3fe252b90a782907              # double 0.57259800000000005
	.quad	0x3fe7b9c0ebedfa44              # double 0.741425
	.quad	0x3fefb7fbefd00714              # double 0.991209
	.quad	0x3fe20129cbab649d              # double 0.56264199999999998
	.quad	0x3fd28be7296f6513              # double 0.28978900000000002
	.quad	0x3fc8388ebcc6c54c              # double 0.18922600000000001
	.quad	0x3fe87df5cf2495e1              # double 0.76537599999999995
	.quad	0x3fce2a5614df8b15              # double 0.23566699999999999
	.quad	0x3fb82f944241c3f0              # double 0.094476000000000004
	.quad	0x3fd562a1b5c7cd8a              # double 0.33414500000000003
	.quad	0x3fd612018a43bb41              # double 0.34484900000000002
	.quad	0x3fe23d556084a516              # double 0.56998700000000002
	.quad	0x3fde688377186552              # double 0.47512900000000002
	.quad	0x3fdc3968d759ee89              # double 0.44100400000000001
	.quad	0x3fd224dd2f1a9fbe              # double 0.28349999999999997
	.quad	0x3fdfbf01322f2735              # double 0.496033
	.quad	0x3fc3349be8ff327b              # double 0.15004300000000001
	.quad	0x3fe73f4a98aa8651              # double 0.72647600000000001
	.quad	0x3fece52deca2552a              # double 0.902976
	.quad	0x3fdac968943e1006              # double 0.418543
	.quad	0x3fea7b99d451fc4c              # double 0.82758799999999999
	.quad	0x3fea89bd8383ad9f              # double 0.829314
	.quad	0x3fe7362413db7f17              # double 0.72535899999999998
	.quad	0x3fe794f483cafb3b              # double 0.73693299999999995
	.quad	0x3fe96256366d7a57              # double 0.79325400000000001
	.quad	0x3fb0bad7d7c2ca15              # double 0.065351000000000006
	.quad	0x3fccf37fbefd0071              # double 0.22618099999999999
	.quad	0x3feeee32e3821af8              # double 0.96657700000000001
	.quad	0x3f8ab324851a8694              # double 0.013037
	.quad	0x3fd24467381d7dbf              # double 0.28542499999999998
	.quad	0x3fec9c7de5082cf5              # double 0.89410299999999998
	.quad	0x3fbf0b06c43f5f91              # double 0.12126199999999999
	.quad	0x3fc2f901083dbc23              # double 0.14822399999999999
	.quad	0x3fe8a63f9a49c2c2              # double 0.77029400000000003
	.quad	0x3fe4883126e978d5              # double 0.641625
	.quad	0x3fed7789a459103d              # double 0.92084200000000005
	.quad	0x3feb0a009f623077              # double 0.84497100000000003
	.quad	0x3fe648a9bcfd4bf1              # double 0.69637000000000004
	.quad	0x3fe1169e3c968944              # double 0.53401100000000001
	.quad	0x3fe2b4916ca46e09              # double 0.58454200000000001
	.quad	0x3fbbea91d9b1b79e              # double 0.10904800000000001
	.quad	0x3fedd2b0a6fc58ac              # double 0.93196900000000004
	.quad	0x3fee89a88ace24bc              # double 0.95430400000000004
	.quad	0x3fc3bcdbbe0157ef              # double 0.154201
	.quad	0x3fd52f6a50d6b229              # double 0.33101900000000001
	.quad	0x3fc5859c8c9320da              # double 0.16814000000000001
	.quad	0x3fd8940fecdd0d8d              # double 0.38403700000000002
	.quad	0x3fecd604189374bc              # double 0.90112499999999995
	.quad	0x3fef08aac96cc5fc              # double 0.969808
	.quad	0x3fee8b417ca2120e              # double 0.95449899999999999
	.quad	0x3fca604e1e71044f              # double 0.206064
	.quad	0x3fee1c886162f167              # double 0.94098300000000001
	.quad	0x3fdc75cd0bb6ed67              # double 0.44468999999999997
	.quad	0x3fe1d1a005c4651f              # double 0.55683899999999997
	.quad	0x3fdad3a1d323fee3              # double 0.41916700000000001
	.quad	0x3fe3f9e16d6dc1a4              # double 0.62425299999999995
	.quad	0x3fe6b2fec56d5cfb              # double 0.70935000000000004
	.quad	0x3fe189bf9c62a1b6              # double 0.54806500000000002
	.quad	0x3fe13647baa9b49a              # double 0.53787600000000002
	.quad	0x3fef600d1b71758e              # double 0.98047499999999999
	.quad	0x3fd2197a24894c44              # double 0.28280499999999997
	.quad	0x3fed1c5c5718eb89              # double 0.90971199999999997
	.quad	0x3fef422ee41919ac              # double 0.97682899999999994
	.quad	0x3fef1676640a6b94              # double 0.97149200000000002
	.quad	0x3fe8ee75ff609dd0              # double 0.77910900000000005
	.quad	0x3fdb3700474d9c6b              # double 0.425232
	.quad	0x3fd80a99b6f5caf3              # double 0.37564700000000001
	.quad	0x3f71d4738a3b57c5              # double 0.0043530000000000001
	.quad	0x3fd9e9d0e991ff71              # double 0.40489599999999998
	.quad	0x3fd3ff0025bfad2a              # double 0.31243900000000002
	.quad	0x3fd84b124d099e0e              # double 0.37958199999999997
	.quad	0x3fca2699c7bcc294              # double 0.20430300000000001
	.quad	0x3fec1ceaf251c194              # double 0.87853000000000003
	.quad	0x3fe696052502eec8              # double 0.70581300000000002
	.quad	0x3fda49be8ff327aa              # double 0.41075099999999998
	.quad	0x3fc8fc829cfdd228              # double 0.19520599999999999
	.quad	0x3f9d959a30984e40              # double 0.028891
	.quad	0x3fee534bd76ee73e              # double 0.94766799999999995
	.quad	0x3fd322c881e4712e              # double 0.29899799999999999
	.quad	0x3fe6de7a743a6480              # double 0.71465800000000002
	.quad	0x3fe1c1e57d9dba91              # double 0.55491900000000005
	.quad	0x3fba40d90e23af32              # double 0.102552
	.quad	0x3fe662b27cbf6e3f              # double 0.69954799999999995
	.quad	0x3f680d3cff64cf8d              # double 0.0029359999999999998
	.quad	0x3fefb9b024f6598e              # double 0.99141699999999999
	.quad	0x3fe2b08787485e3e              # double 0.58404900000000004
	.quad	0x3fe8da921ccd9620              # double 0.77668099999999995
	.quad	0x3fdd79c842fa5094              # double 0.46055800000000002
	.quad	0x3fb2a77a2cecc815              # double 0.072868000000000002
	.quad	0x3fd26b09635610ae              # double 0.28778300000000001
	.quad	0x3fe89c36976bc1f0              # double 0.769069
	.quad	0x3fe6ba7b9170d62c              # double 0.71026400000000001
	.quad	0x3fd63bd5992428d4              # double 0.34740199999999999
	.quad	0x3fdc81344806290f              # double 0.445386
	.quad	0x3fc38f1d3ed527e5              # double 0.152805
	.quad	0x3fe7e368f08461fa              # double 0.74651000000000001
	.quad	0x3fd01b328b6d86ec              # double 0.25165999999999999
	.quad	0x3fd93f3e0370cdc8              # double 0.39448499999999997
	.quad	0x3fcba5e353f7ced9              # double 0.216
	.quad	0x3fec24a48f96e158              # double 0.87947299999999995
	.quad	0x3fd6831f03d145d8              # double 0.35175299999999998
	.quad	0x3fe418f1d3ed527e              # double 0.62804499999999996
	.quad	0x3fe11331a08bfc22              # double 0.53359299999999998
	.quad	0x3fbda1b9f98b71b9              # double 0.115749
	.quad	0x3fe9ad7f950b955f              # double 0.80242899999999995
	.quad	0x3fe267d34df04ddb              # double 0.57517399999999996
	.quad	0x3fd923f24d8fd5cb              # double 0.39281899999999997
	.quad	0x3fd65a63f9a49c2c              # double 0.34926699999999999
	.quad	0x3fe49626b2f23034              # double 0.64332900000000004
	.quad	0x3fadc6195464dc23              # double 0.058152000000000002
	.quad	0x3fe34b4070329803              # double 0.60293600000000003
	.quad	0x3fda3f91e646f156              # double 0.41012999999999999
	.quad	0x3fec1f23465625a7              # double 0.87880100000000005
	.quad	0x3fc7eeb2d0a24463              # double 0.186972
	.quad	0x3fefb2b12d3415b1              # double 0.99056299999999997
	.quad	0x3fde681ecd4aa10e              # double 0.475105
	.quad	0x3fd1ca148ba83f4f              # double 0.27795900000000001
	.quad	0x3fc46a4ca4f440af              # double 0.159494
	.quad	0x3feaf8726d04e619              # double 0.84282800000000002
	.quad	0x3fe8ffc9795b35b1              # double 0.78122400000000003
	.quad	0x3fe475d56f32bdc2              # double 0.63938399999999995
	.quad	0x3fcaa5d6bebe1651              # double 0.20818600000000001
	.quad	0x3fe6a9307af20ea6              # double 0.70815300000000003
	.quad	0x3fdfdfdef8487b9a              # double 0.49803900000000001
	.quad	0x3fd7aae297396d09              # double 0.36980499999999999
	.quad	0x3fe249d16fc9bc77              # double 0.57151099999999999
	.quad	0x3f6715c63ae2541e              # double 0.0028180000000000002
	.quad	0x3fdbc5931ca7d673              # double 0.43393399999999999
	.quad	0x3fed0fadf2ecf206              # double 0.90816399999999997
	.quad	0x3fdd9e55c0fcb4f2              # double 0.46278900000000001
	.quad	0x3fe444d44567125e              # double 0.63340200000000002
	.quad	0x3fc8dde7a743a648              # double 0.194272
	.quad	0x3fd69d55e6bc621b              # double 0.35335299999999997
	.quad	0x3fbcdb0574b40703              # double 0.112717
	.quad	0x3feed78c436fc159              # double 0.963812
	.quad	0x3fe06c28b2a6b0d9              # double 0.51320299999999996
	.quad	0x3fbb1a08bfc2224f              # double 0.105866
	.quad	0x3fd7f355cd91eeaa              # double 0.37422699999999998
	.quad	0x3fcdcbf6e3f78bbd              # double 0.23278699999999999
	.quad	0x3fda11ada76d97b3              # double 0.407329
	.quad	0x3fead17c5ef62f9d              # double 0.83807200000000004
	.quad	0x3fe01eafee6fb4c4              # double 0.50374600000000003
	.quad	0x3fe95851654d61b3              # double 0.79203100000000004
	.quad	0x3fcb95aaf78feef6              # double 0.215505
	.quad	0x3feac3bd5992428d              # double 0.83639399999999997
	.quad	0x3fc141205bc01a37              # double 0.1348
	.quad	0x3fd423854046412d              # double 0.314668
	.quad	0x3fe823b7952d234f              # double 0.75436000000000003
	.quad	0x3fa6c2699c7bcc29              # double 0.044451999999999998
	.quad	0x3fdc9e7b80a9de8b              # double 0.44717299999999999
	.quad	0x3fe11ec2ce464990              # double 0.53500499999999995
	.quad	0x3fd41d9b1b79d90a              # double 0.314307
	.quad	0x3fed265f0f5a1017              # double 0.91093400000000002
	.quad	0x3fea36c9c0a8d21c              # double 0.81918800000000002
	.quad	0x3fc9656eefa1e3eb              # double 0.198408
	.quad	0x3f92e59af9ebe9c9              # double 0.018454000000000002
	.quad	0x3fe7e3fdd65a1449              # double 0.74658100000000005
	.quad	0x3fd81ecd4aa10e02              # double 0.37687999999999999
	.quad	0x3fb948ecd8dbcec8              # double 0.098768999999999996
	.quad	0x3fc81f85d744f5d3              # double 0.18846199999999999
	.quad	0x3fd70129cbab649d              # double 0.35944599999999999
	.quad	0x3fd14e4c942d490e              # double 0.27040399999999998
	.quad	0x3fe61d3ed527e521              # double 0.69106999999999996
	.quad	0x3f9fcc5b8dc55001              # double 0.031053000000000001
	.quad	0x3fc3645a1cac0831              # double 0.1515
	.quad	0x3feae15011904b3c              # double 0.84000399999999997
	.quad	0x3fd3de54b48d3ae7              # double 0.31044500000000003
	.quad	0x3fe6e51f3e89a88b              # double 0.71546900000000002
	.quad	0x3fe2f5147f130596              # double 0.59241699999999997
	.quad	0x3fe5df4e4430b179              # double 0.68350900000000003
	.quad	0x3fec5ec1c1d6cf85              # double 0.88656699999999999
	.quad	0x3fe273f316e37154              # double 0.576654
	.quad	0x3fc711409a240315              # double 0.18021400000000001
	.quad	0x3fc5cb81733226c4              # double 0.17027300000000001
	.quad	0x3fecfa5b0ff10ecb              # double 0.90556099999999995
	.quad	0x3fd3c5bd0e12e83a              # double 0.308944
	.quad	0x3fd3e7c8d195896a              # double 0.31102200000000002
	.quad	0x3fee7ef5a964e8b8              # double 0.95299800000000001
	.quad	0x3fbd55c52e72da12              # double 0.11459
	.quad	0x3fccc016052502ef              # double 0.22461200000000001
	.quad	0x3fc0087442c7fbad              # double 0.12525800000000001
	.quad	0x3fa9fd36f7e3d1cc              # double 0.05076
	.quad	0x3fed84e1e71044f2              # double 0.92247100000000004
	.quad	0x3fad17c5ef62f9ca              # double 0.056821999999999998
	.quad	0x3fe8f3f748a15981              # double 0.77978099999999995
	.quad	0x3fe37b5aea3161a2              # double 0.60880800000000002
	.quad	0x3fd3db445ed4a1ad              # double 0.31025799999999998
	.quad	0x3fb24f6598e10cf6              # double 0.071524000000000004
	.quad	0x3fcb4185058dde7a              # double 0.21293699999999999
	.quad	0x3fd93925bb7b6bb1              # double 0.39411299999999999
	.quad	0x3fea977a7008a698              # double 0.83099100000000004
	.quad	0x3fe84ed2cbea4ebe              # double 0.75962200000000002
	.quad	0x3fe0cd37c1376d55              # double 0.52505100000000005
	.quad	0x3fdc9331a08bfc22              # double 0.44648399999999999
	.quad	0x3fefcff43419e300              # double 0.99413499999999999
	.quad	0x3fe1132f87ad080b              # double 0.53359199999999996
	.quad	0x3fe89a21ea359360              # double 0.76881500000000002
	.quad	0x3fd214b599aa6091              # double 0.28251399999999999
	.quad	0x3fc898bb4d48882f              # double 0.192161
	.quad	0x3f83ac4f7ec3547e              # double 0.009606
	.quad	0x3fd3af9ebe9c8861              # double 0.30759399999999998
	.quad	0x3feb8fcb4f1e4b45              # double 0.86130300000000004
	.quad	0x3fe05099e0e73605              # double 0.50983900000000004
	.quad	0x3fc2b063e07a28bb              # double 0.146008
	.quad	0x3fd1c0bdcad14a0a              # double 0.277389
	.quad	0x3fd95f88fc9363f5              # double 0.39645599999999998
	.quad	0x3f9c3e3193f6c26a              # double 0.027581000000000001
	.quad	0x3fe8a6c3b927d45a              # double 0.77035699999999996
	.quad	0x3fe3c180d3cff64d              # double 0.617371
	.quad	0x3f8d3804534bd76f              # double 0.014267
	.quad	0x3fe84fc1df3300de              # double 0.75973599999999997
	.quad	0x3fdcb5286b59146e              # double 0.44855699999999998
	.quad	0x3fefb84db9c7368b              # double 0.99124800000000001
	.quad	0x3fe01dcb5781c715              # double 0.503637
	.quad	0x3fe47d49d7ba6699              # double 0.64029400000000003
	.quad	0x3fde6b00ffda4053              # double 0.47528100000000001
	.quad	0x3fe2d5475a31a4be              # double 0.58853500000000003
	.quad	0x3fdded02cd39da16              # double 0.46759099999999998
	.quad	0x3fed37521144cbe2              # double 0.91300300000000001
	.quad	0x3fd0566490a350d3              # double 0.25527300000000003
	.quad	0x3fef42e557de0d67              # double 0.976916
	.quad	0x3feae1da7b0b3919              # double 0.84006999999999998
	.quad	0x3fd86a65cf67b1c0              # double 0.381494
	.quad	0x3fe3d0763a190082              # double 0.619197
	.quad	0x3fe12a2e3c536d65              # double 0.53639899999999996
	.quad	0x3fe7c0f01fb82c2c              # double 0.74230200000000002
	.quad	0x3fe87cb70ac3a861              # double 0.76522400000000002
	.quad	0x3fcf4d37c1376d55              # double 0.24454400000000001
	.quad	0x3feb20f2becedd48              # double 0.84777199999999997
	.quad	0x3fe2f5a31a4bdba1              # double 0.59248500000000004
	.quad	0x3fe841aef6f8f041              # double 0.75801799999999997
	.quad	0x3fd935d67ba237ce              # double 0.39391100000000001
	.quad	0x3fa6492bc2fc6973              # double 0.043527000000000003
	.quad	0x3fc62b841248d7e0              # double 0.173203
	.quad	0x3fb6a8869c66d374              # double 0.088509000000000004
	.quad	0x3fe731ec0b567558              # double 0.72484400000000004
	.quad	0x3fcbf3e89a88ace2              # double 0.21838099999999999
	.quad	0x3fc73868fd199bb2              # double 0.18140899999999999
	.quad	0x3fee664b2314013f              # double 0.94998700000000003
	.quad	0x3fe205dd8f92af9b              # double 0.56321600000000005
	.quad	0x3fe43269df97aaac              # double 0.63115399999999999
	.quad	0x3fe0029f16b11c6d              # double 0.50031999999999999
	.quad	0x3fe9b3d29563a9f4              # double 0.80320100000000005
	.quad	0x3febe03925bb7b6c              # double 0.87112100000000003
	.quad	0x3fa9bfbdf090f734              # double 0.050291000000000002
	.quad	0x3fb64aada33bd9cb              # double 0.087077000000000002
	.quad	0x3fa9a415f45e0b4e              # double 0.05008
	.quad	0x3fe7f566490a350d              # double 0.74870599999999998
	.quad	0x3fcaed2cbea4ebdd              # double 0.21036299999999999
	.quad	0x3fe89ebe9c886163              # double 0.76937800000000001
	.quad	0x3fd59ec2ce464990              # double 0.33781499999999998
	.quad	0x3fdb73e24febd09e              # double 0.428948
	.quad	0x3fee6bb55ac03ff7              # double 0.95064800000000005
	.quad	0x3fd16c508b32ce89              # double 0.27223599999999998
	.quad	0x3fda66e86c6583e8              # double 0.41253099999999998
	.quad	0x3fd9ec39799e518f              # double 0.40504299999999999
	.quad	0x3fd26e5471715c64              # double 0.28798400000000002
	.quad	0x3fed46aa087ca644              # double 0.91487600000000002
	.quad	0x3fc7892ee84ad795              # double 0.18387400000000001
	.quad	0x3fb45a0be5109071              # double 0.079499
	.quad	0x3fc507faa044ae86              # double 0.16430600000000001
	.quad	0x3fed8cb295e9e1b1              # double 0.92342500000000005
	.quad	0x3fc66b8305d95dd5              # double 0.17515600000000001
	.quad	0x3fef03621fafc8b0              # double 0.969163
	.quad	0x3fe8e5de15ca6ca0              # double 0.77805999999999997
	.quad	0x3fdf22e5de15ca6d              # double 0.48650500000000002
	.quad	0x3feb5a682b62845a              # double 0.85478600000000005
	.quad	0x3fc4f6ad70e6f2e9              # double 0.16377800000000001
	.quad	0x3fd913a92a305532              # double 0.39182499999999998
	.quad	0x3fa7d7e45803cd14              # double 0.046568999999999999
	.quad	0x3fe1034091c08744              # double 0.53164699999999998
	.quad	0x3fcc28bb0a2ca9ac              # double 0.21999299999999999
	.quad	0x3fd04ff0025bfad3              # double 0.25487900000000002
	.quad	0x3fc094ccab3edd8b              # double 0.12954099999999999
	.quad	0x3fb1cd4ed2cbea4f              # double 0.069539000000000004
	.quad	0x3fcc77dd872f33ca              # double 0.22240799999999999
	.quad	0x3fe8ab12d3415b14              # double 0.77088299999999998
	.quad	0x3fde6490a350d280              # double 0.47488799999999998
	.quad	0x3fdbc5a8155d5f57              # double 0.43393900000000002
	.quad	0x3fd8e10060780fdc              # double 0.388733
	.quad	0x3fe5552e2fbe33ad              # double 0.66664800000000002
	.quad	0x3fe27a46173b85e8              # double 0.57742599999999999
	.quad	0x3fe3c445aa2e3c53              # double 0.61770899999999995
	.quad	0x3fdaff0cbaf965b2              # double 0.421817
	.quad	0x3fae4e48626f60e1              # double 0.059191000000000001
	.quad	0x3fe5f80346dc5d64              # double 0.68652500000000005
	.quad	0x3fe11bfbdf090f73              # double 0.53466599999999997
	.quad	0x3fbf2ecf20642396              # double 0.121808
	.quad	0x3fd3d8f0c77dd873              # double 0.310116
	.quad	0x3fddbbe878fabda1              # double 0.46459400000000001
	.quad	0x3fadd69d30270f39              # double 0.058278000000000003
	.quad	0x3fd400d1b71758e2              # double 0.31254999999999999
	.quad	0x3fb85ee568a50508              # double 0.095198000000000005
	.quad	0x3fc032ebe596c82e              # double 0.126554
	.quad	0x3faeea209aaa3ad2              # double 0.060380000000000003
	.quad	0x3f95b899392189be              # double 0.021212000000000002
	.quad	0x3fdc38583621fafd              # double 0.44093900000000003
	.quad	0x3fbf0307f23cc8de              # double 0.12114
	.quad	0x3feef0f3882278d1              # double 0.96691300000000002
	.quad	0x3fda519bd4067cf2              # double 0.41123100000000001
	.quad	0x3fe2f33a8a3f8983              # double 0.59219100000000002
	.quad	0x3fd6c5004fb1183b              # double 0.35577399999999998
	.quad	0x3fe3c6b69db65ecc              # double 0.61800699999999997
	.quad	0x3fc0399b2c40d0ab              # double 0.12675800000000001
	.quad	0x3fe6285015c20924              # double 0.69242099999999995
	.quad	0x3fd88a3f8982cb21              # double 0.383438
	.quad	0x3fe8d0a67620ee8d              # double 0.77546999999999999
	.quad	0x3fe1561f5be5d9e4              # double 0.54176299999999999
	.quad	0x3fe4fdfc19c17226              # double 0.65600400000000003
	.quad	0x3face1c58255b036              # double 0.056410000000000002
	.quad	0x3fedec3760bf5d79              # double 0.93508500000000006
	.quad	0x3fcb348b220791c5              # double 0.21254100000000001
	.quad	0x3fb3abb8800eae19              # double 0.076839000000000005
	.quad	0x3feb9c886162f167              # double 0.86285800000000001
	.quad	0x3fee781626b2f230              # double 0.95215899999999998
	.quad	0x3fe204e3ffef3908              # double 0.56309699999999996
	.quad	0x3fd597f1f9acffa8              # double 0.337399
	.quad	0x3fc3d0fa58f7121b              # double 0.15481500000000001
	.quad	0x3feb124af0bf1a5d              # double 0.84598300000000004
	.quad	0x3febdaad601ffb48              # double 0.870444
	.quad	0x3fcef19934efcbd5              # double 0.24174799999999999
	.quad	0x3fe9d48ecd8dbced              # double 0.80719700000000005
	.quad	0x3fce1240746455eb              # double 0.234932
	.quad	0x3fd0154866a11ec9              # double 0.25129899999999999
	.quad	0x3fb861b6d43d0397              # double 0.095241000000000006
	.quad	0x3fe447863beec398              # double 0.63373100000000004
	.quad	0x3fd41797cc39ffd6              # double 0.31394
	.quad	0x3fb3356da0168b5d              # double 0.075034000000000003
	.quad	0x3fee5ec80c73abc9              # double 0.94906999999999997
	.quad	0x3fbb1737542a23c0              # double 0.105823
	.quad	0x3fd0c3dab5c39bcc              # double 0.26195400000000002
	.quad	0x3fd597f62b6ae7d5              # double 0.33739999999999998
	.quad	0x3fe18eae18ac9f30              # double 0.54866700000000002
	.quad	0x3fe98a7e73a365cb              # double 0.79815599999999998
	.quad	0x3fd8b2a6b0d95140              # double 0.38590400000000002
	.quad	0x3fc4c8259e1f3a58              # double 0.162358
	.quad	0x3fec101d19157abc              # double 0.87696700000000005
	.quad	0x3fe861650a45d420              # double 0.76188900000000003
	.quad	0x3fda129cbab649d4              # double 0.40738600000000003
	.quad	0x3fe51274e22a2c23              # double 0.65850299999999995
	.quad	0x3fe7a48301a79fed              # double 0.73883200000000004
	.quad	0x3fbeb990afe60c39              # double 0.120019
	.quad	0x3fc2931876188b11              # double 0.14511399999999999
	.quad	0x3fe36088d6d3b6cc              # double 0.60553400000000002
	.quad	0x3f92977c88e79aae              # double 0.018155999999999999
	.quad	0x3fcb81f10667f90e              # double 0.21490300000000001
	.quad	0x3fee51351159c497              # double 0.94741299999999995
	.quad	0x3fd2bc558644523f              # double 0.29274499999999998
	.quad	0x3fc29131ec0b5675              # double 0.14505599999999999
	.quad	0x3fd78750c1b97354              # double 0.36763400000000002
	.quad	0x3fb4fbca1059ea57              # double 0.081966999999999998
	.quad	0x3fd6da6e75ff609e              # double 0.35708200000000001
	.quad	0x3fd2242d05f28848              # double 0.28345799999999999
	.quad	0x3fc7a7daa4fca42b              # double 0.18481
	.quad	0x3febac8a372606fb              # double 0.86481200000000003
	.quad	0x3fc108893b7d8490              # double 0.133073
	.quad	0x3fe2da2f8bdec5f4              # double 0.58913400000000005
	.quad	0x3fc8f34d6a161e4f              # double 0.19492499999999999
	.quad	0x3fed005814940bbb              # double 0.90629199999999999
	.quad	0x3fede9a6f826edab              # double 0.93477200000000005
	.quad	0x3fdaf9db22d0e560              # double 0.42149999999999999
	.quad	0x3fed70c77dd872f3              # double 0.92001699999999997
	.quad	0x3fefbfcc9ea9a3d3              # double 0.99216300000000001
	.quad	0x3fb0d5f99c38b04b              # double 0.065765000000000004
	.quad	0x3fef6f3b213e3e29              # double 0.98232799999999997
	.quad	0x3fbe631f8a0902de              # double 0.1187
	.quad	0x3fee456b441bb8c3              # double 0.94597399999999998
	.quad	0x3fd3b242070b8cfc              # double 0.307755
	.quad	0x3fe79e8815e39714              # double 0.73810200000000004
	.quad	0x3fe89e7967caea74              # double 0.76934499999999994
	.quad	0x3feb127d45a5fc7e              # double 0.84600699999999995
	.quad	0x3fe03673c4f3ba77              # double 0.50664699999999996
	.quad	0x3fd3f74cd31769a9              # double 0.311969
	.quad	0x3fcd5703f2d3c793              # double 0.22921800000000001
	.quad	0x3fc921d53cddd6e0              # double 0.19634499999999999
	.quad	0x3fc2ace24bba12b6              # double 0.145901
	.quad	0x3fd7d3a604e1e710              # double 0.37229299999999999
	.quad	0x3fecf15c63ae2542              # double 0.90446300000000002
	.quad	0x3fdff9f01b866e44              # double 0.49963000000000002
	.quad	0x3fe05477bbf93ff2              # double 0.51031099999999996
	.quad	0x3fc89741d084e832              # double 0.19211600000000001
	.quad	0x3fef58ba40d90e24              # double 0.97958100000000003
	.quad	0x3f7c193b3a68b19a              # double 0.0068599999999999998
	.quad	0x3fe1e0cbf2b239a4              # double 0.55869100000000005
	.quad	0x3fddd27807789a46              # double 0.46597100000000002
	.quad	0x3fb26612839042d9              # double 0.071870000000000003
	.quad	0x3fd7bae03b3e9a70              # double 0.37078100000000003
	.quad	0x3fa0ac3a860dcb9b              # double 0.032564000000000003
	.quad	0x3fe3bd29563a9f38              # double 0.61684099999999997
	.quad	0x3fec7f79c842fa51              # double 0.89056100000000005
	.quad	0x3febf1886df82b1f              # double 0.87323399999999995
	.quad	0x3fe068815e39713b              # double 0.51275700000000002
	.quad	0x3fda557de0d66f0d              # double 0.411468
	.quad	0x3f83964a59c065b6              # double 0.0095639999999999996
	.quad	0x3fea788fc9363f57              # double 0.82721699999999998
	.quad	0x3fec163fdd65a145              # double 0.87771600000000005
	.quad	0x3fcccee5abc0e38a              # double 0.22506399999999999
	.quad	0x3fbc8b32ce89656f              # double 0.111499
	.quad	0x3fe26583e8576cce              # double 0.57489199999999996
	.quad	0x3fdcd6238da3c212              # double 0.45057000000000003
	.quad	0x3fb5e15ca6ca03c5              # double 0.085470000000000004
	.quad	0x3fedb68f08461f9f              # double 0.928535
	.quad	0x3fc80221426fe719              # double 0.18756500000000001
	.quad	0x3fe6ece13f4a98ab              # double 0.71641600000000005
	.quad	0x3fe31c53f39d1b2e              # double 0.59720799999999996
	.quad	0x3fb9a0be51090710              # double 0.100109
	.quad	0x3fddf47b677f6b1a              # double 0.46804699999999999
	.quad	0x3fc30b30b5aa7158              # double 0.14877899999999999
	.quad	0x3fd2873365881a15              # double 0.28950199999999998
	.quad	0x3f8aeab7995ee137              # double 0.013143
	.quad	0x3fe7a87c200c0f02              # double 0.739317
	.quad	0x3fe32d5e071c53f4              # double 0.59928800000000004
	.quad	0x3f921101b003686a              # double 0.017642999999999999
	.quad	0x3fe51522a6f3f530              # double 0.65883000000000003
	.quad	0x3fcd53cddd6e04c0              # double 0.22911999999999999
	.quad	0x3fef335b0bbf50e3              # double 0.97501899999999996
	.quad	0x3fe520168b5cbff4              # double 0.66016699999999995
	.quad	0x3fd8a5fc7e6b3fea              # double 0.385131
	.quad	0x3fc3ac57e23f24d9              # double 0.153697
	.quad	0x3fd9832fcac8e68e              # double 0.39863199999999999
	.quad	0x3fe5238b8ae31d71              # double 0.66058899999999998
	.quad	0x3fe19a1db877ab32              # double 0.55006299999999997
	.quad	0x3fcb604189374bc7              # double 0.21387500000000001
	.quad	0x3fbc4c9c90c4dec2              # double 0.110544
	.quad	0x3fcc4790b8498809              # double 0.22093399999999999
	.quad	0x3fa0f45176145953              # double 0.033113999999999998
	.quad	0x3fbf6ad70e6f2e8c              # double 0.122724
	.quad	0x3fe33f83382e44b7              # double 0.60150300000000001
	.quad	0x3fea590e23af31b1              # double 0.82337099999999996
	.quad	0x3feb39b23dd54da5              # double 0.85079300000000002
	.quad	0x3feab897204295a7              # double 0.83503300000000003
	.quad	0x3fe82c1f42bb6673              # double 0.755386
	.quad	0x3fe16455eaee2004              # double 0.54349800000000004
	.quad	0x3fe42caff6d33094              # double 0.63045499999999999
	.quad	0x3fea4a03c4b09e99              # double 0.82153500000000002
	.quad	0x3fe8841cc532a498              # double 0.766127
	.quad	0x3fd2f43c7d5ed070              # double 0.296157
	.quad	0x3fd9b56323bbc6eb              # double 0.401696
	.quad	0x3fef401e68a0d34a              # double 0.97657700000000003
	.quad	0x3fdbbc947064ecea              # double 0.43338500000000002
	.quad	0x3fdff75104d551d7              # double 0.49947000000000003
	.quad	0x3fdb7c6b8b69552e              # double 0.42946899999999999
	.quad	0x3fe78c154c985f07              # double 0.73585
	.quad	0x3fe7b6b09635610b              # double 0.74105100000000002
	.quad	0x3fbd9b8023a6ce36              # double 0.11565400000000001
	.quad	0x3fe50a4c1ebc83a9              # double 0.65750699999999995
	.quad	0x3fec6ca89fc6da45              # double 0.88826400000000005
	.quad	0x3fb5973d9ec70004              # double 0.084338999999999997
	.quad	0x3fb37dd872f33ca3              # double 0.076138999999999998
	.quad	0x3fe7b9e279dd3bb0              # double 0.74144100000000002
	.quad	0x3fde63d816aceaaf              # double 0.47484399999999999
	.quad	0x3fd1c3c18b502abb              # double 0.27757300000000001
	.quad	0x3fcc3f5f91600f34              # double 0.22068399999999999
	.quad	0x3f96b3fe9fadafd1              # double 0.022171
	.quad	0x3fc293d102bc72e2              # double 0.14513599999999999
	.quad	0x3fe417bb73083559              # double 0.62789700000000004
	.quad	0x3fd97bcc2938de6e              # double 0.39818100000000001
	.quad	0x3fefa7aa68f4b620              # double 0.98921700000000001
	.quad	0x3fe95b78cc9a77e6              # double 0.79241600000000001
	.quad	0x3fc899e0e736049f              # double 0.19219600000000001
	.quad	0x3fbb6d97b30f8c65              # double 0.107141
	.quad	0x3fa1d68c692f6e83              # double 0.034840000000000003
	.quad	0x3fcb3543aeab7996              # double 0.212563
	.quad	0x3fe482f512663411              # double 0.64098599999999994
	.quad	0x3fc0b2f23033a472              # double 0.13046099999999999
	.quad	0x3fe3aea52ef911cf              # double 0.61506899999999998
	.quad	0x3fc17e2c55c96031              # double 0.13666300000000001
	.quad	0x3fe6955b4677b396              # double 0.70573200000000003
	.quad	0x3feebfad2999567e              # double 0.96089800000000003
	.quad	0x3fb31fbc5de9c023              # double 0.074703000000000006
	.quad	0x3fefe195464dc22b              # double 0.99628700000000003
	.quad	0x3fe41b068123810f              # double 0.62829900000000005
	.quad	0x3fe8795703f2d3c8              # double 0.76481200000000005
	.quad	0x3fe2a08398a65493              # double 0.582094
	.quad	0x3fe8ac9afe1da7b1              # double 0.77107000000000003
	.quad	0x3fe3eb0fadf2ecf2              # double 0.622444
	.quad	0x3fc0c710cb295e9e              # double 0.131075
	.quad	0x3fddede97d06bbdc              # double 0.46764600000000001
	.quad	0x3fe3112556d19ded              # double 0.59584300000000001
	.quad	0x3fb215ca6ca03c4b              # double 0.070644999999999999
	.quad	0x3fe232e59af9ebea              # double 0.56871300000000002
	.quad	0x3fc1b39e279dd3bb              # double 0.138294
	.quad	0x3fc5ef8487b99d45              # double 0.171372
	.quad	0x3fac625e99e94ab2              # double 0.055438000000000001
	.quad	0x3fe94e54f7a91969              # double 0.79081199999999996
	.quad	0x3fc33e3e29307af2              # double 0.150337
	.quad	0x3fc4b19a415f45e1              # double 0.16167000000000001
	.quad	0x3fd608919ef954eb              # double 0.344273
	.quad	0x3fc4385c67dfe32a              # double 0.15797
	.quad	0x3fe9f8811b1d92b8              # double 0.811585
	.quad	0x3fd39b62c77574f7              # double 0.30635899999999999
	.quad	0x3fd96577531db446              # double 0.396818
	.quad	0x3fe9181beb18116f              # double 0.78419300000000003
	.quad	0x3fd863e07a28bb0a              # double 0.38109599999999999
	.quad	0x3fe0201040bfe3b0              # double 0.50391399999999997
	.quad	0x3fddd013a92a3055              # double 0.46582499999999999
	.quad	0x3fbd07a6bd6e8af8              # double 0.113398
	.quad	0x3fe646f156191149              # double 0.69616
	.quad	0x3fe1ee525892684d              # double 0.56034200000000001
	.quad	0x3fd87e02645e4e6a              # double 0.382691
	.quad	0x3fc8089e34330d74              # double 0.18776300000000001
	.quad	0x3fc9c5a3e39f7729              # double 0.201344
	.quad	0x3fe0d83c6c97d8cf              # double 0.52639599999999998
	.quad	0x3fe3f37fbefd0071              # double 0.62347399999999997
	.quad	0x3fedaf23033a4724              # double 0.92762900000000003
	.quad	0x3fe12f4adbc664d4              # double 0.53702300000000003
	.quad	0x3feb38130164840e              # double 0.85059499999999999
	.quad	0x3fc443ed959a3098              # double 0.15832299999999999
	.quad	0x3fee88d8ec95bff0              # double 0.95420499999999997
	.quad	0x3fdb08bfc2224edf              # double 0.42240899999999998
	.quad	0x3fdf00bcbe61cfff              # double 0.48442000000000002
	.quad	0x3fe3bc5de9c0229a              # double 0.61674399999999996
	.quad	0x3f954c985f06f694              # double 0.020799999999999999
	.quad	0x3fdfd56b00ffda40              # double 0.49740099999999998
	.quad	0x3fc9f8a8f3a9b068              # double 0.202901
	.quad	0x3fe5cb9a9da597d5              # double 0.68110400000000004
	.quad	0x3fdc9fc2a8869c67              # double 0.44725100000000001
	.quad	0x3fbb6b8f9b13165d              # double 0.10711
	.quad	0x3fba35a426bb55ac              # double 0.102381
	.quad	0x3fd640bfe3b03e21              # double 0.34770200000000001
	.quad	0x3fc18f3eccc46951              # double 0.137184
	.quad	0x3fe1f102363b2570              # double 0.56067
	.quad	0x3fb588d2a1f8e3ac              # double 0.084118999999999999
	.quad	0x3f70dae3e6c4c597              # double 0.0041149999999999997
	.quad	0x3fdd771001d5c316              # double 0.46039200000000002
	.quad	0x3fee1437c5692b3d              # double 0.93996800000000003
	.quad	0x3fed2ea747d805e6              # double 0.91194500000000001
	.quad	0x3fc7cfaacd9e83e4              # double 0.186025
	.quad	0x3feed31fcd24e161              # double 0.96327200000000001
	.quad	0x3fd3851654d61b2a              # double 0.30499799999999999
	.quad	0x3fe439ef0f16f438              # double 0.63207199999999997
	.quad	0x3fd50ffda4052d66              # double 0.32910099999999998
	.quad	0x3fe11344806290ef              # double 0.53360200000000002
	.quad	0x3fca849cb252ce03              # double 0.207172
	.quad	0x3fedf253da72a7bd              # double 0.93583099999999997
	.quad	0x3f97fd82773e24ff              # double 0.023428000000000001
	.quad	0x3feef8af3e468cac              # double 0.96785699999999996
	.quad	0x3fdd648c7192ea53              # double 0.459262
	.quad	0x3fd5a3b57c4e2f38              # double 0.338117
	.quad	0x3fe6706b37867f0b              # double 0.70122300000000004
	.quad	0x3febdf9378ee2867              # double 0.87104199999999998
	.quad	0x3f9af2d7f950b956              # double 0.026317
	.quad	0x3fdf5aee631f8a09              # double 0.489925
	.quad	0x3fd132f87ad080b6              # double 0.26873599999999997
	.quad	0x3fdd0685553ef6b6              # double 0.45352300000000001
	.quad	0x3fe00e92d55a3a08              # double 0.50177899999999998
	.quad	0x3fcba20578e5c4eb              # double 0.21588199999999999
	.quad	0x3f9fd933e35c5b4b              # double 0.031102000000000001
	.quad	0x3fe5744b2b777d0f              # double 0.67044599999999999
	.quad	0x3fd5283d35eb7458              # double 0.33058100000000001
	.quad	0x3fdcb1572580c309              # double 0.448324
	.quad	0x3fe0f0ae536501e2              # double 0.52937999999999996
	.quad	0x3fe70e1f7d73c925              # double 0.72047399999999995
	.quad	0x3fe2359791819d24              # double 0.56904200000000005
	.quad	0x3fca0b45ae5ffa3c              # double 0.20346900000000001
	.quad	0x3fb4da2b5a20ddc6              # double 0.081453999999999998
	.quad	0x3fe150cc35ce1826              # double 0.54111299999999996
	.quad	0x3fc363992c8c5005              # double 0.151477
	.quad	0x3fd3f2452c59fb1e              # double 0.31166199999999999
	.quad	0x3fe09a133c1ce6c1              # double 0.51880800000000005
	.quad	0x3fc33bafd976ff3b              # double 0.150259
	.quad	0x3fdff70de8f6ceff              # double 0.49945400000000001
	.quad	0x3febd9018e757929              # double 0.87024000000000001
	.quad	0x3fde42fa5093964a              # double 0.47283799999999998
	.quad	0x3fe523810e8858ff              # double 0.66058399999999995
	.quad	0x3fef2e89eba6aca8              # double 0.97443100000000004
	.quad	0x3fec4c8bc9cd3e0c              # double 0.88434400000000001
	.quad	0x3fea064a9cdc4439              # double 0.81326799999999999
	.quad	0x3fd26ffc115df655              # double 0.28808499999999998
	.quad	0x3fed6789e774eebf              # double 0.91888899999999996
	.quad	0x3fd5a033e78e1933              # double 0.33790300000000001
	.quad	0x3fe1068db8bac711              # double 0.53205000000000002
	.quad	0x3fed7dfa00e27e0f              # double 0.921628
	.quad	0x3fe5787485e3da30              # double 0.67095400000000005
	.quad	0x3fc380a9de8b3b32              # double 0.152364
	.quad	0x3fec7e23f24d8fd6              # double 0.89039800000000002
	.quad	0x3fcb215fcc1871e7              # double 0.21195600000000001
	.quad	0x3febb1290257c915              # double 0.86537600000000003
	.quad	0x3fed2d4b2745bf27              # double 0.91177900000000001
	.quad	0x3fe0eda22f6a50d7              # double 0.52900800000000003
	.quad	0x3fe9acc4ef88b978              # double 0.80234000000000005
	.quad	0x3fdf113836a832ba              # double 0.48542600000000002
	.quad	0x3fd330ad46f587d7              # double 0.299846
	.quad	0x3fae1f18c9fb6135              # double 0.058831000000000001
	.quad	0x3fcdfe4bcad9ad86              # double 0.234323
	.quad	0x3fe9800eae18ac9f              # double 0.79688199999999998
	.quad	0x3fa02730c67168f9              # double 0.031549000000000001
	.quad	0x3fcbe9d0e991ff71              # double 0.21807299999999999
	.quad	0x3fc5d6733ebbfd72              # double 0.17060700000000001
	.quad	0x3fe0e12c6ac215ba              # double 0.52748700000000004
	.quad	0x3fe479357603925c              # double 0.63979600000000003
	.quad	0x3fc51044f1a1986c              # double 0.16455900000000001
	.quad	0x3fe3e4a7b4e54f7b              # double 0.62166200000000005
	.quad	0x3feb4bf0995aaf79              # double 0.85302
	.quad	0x3fe4fe62dc6e2a80              # double 0.656053
	.quad	0x3fe1c40d0aaa7ded              # double 0.55518199999999995
	.quad	0x3fe1a6202539756d              # double 0.55152900000000005
	.quad	0x3fe1267c6b8b6955              # double 0.53594799999999998
	.quad	0x3fdb30164840e172              # double 0.42481000000000002
	.quad	0x3fe9a0fd3b29a1ba              # double 0.800902
	.quad	0x3feaa12d77318fc5              # double 0.832175
	.quad	0x3fe9e72b884406c0              # double 0.80946899999999999
	.quad	0x3fe44169c23b7953              # double 0.63298500000000002
	.quad	0x3fc67a743a647fdc              # double 0.17561199999999999
	.quad	0x3fd0fb2aae297397              # double 0.26533000000000001
	.quad	0x3fe76b0fadf2ecf2              # double 0.731819
	.quad	0x3fd085d744f5d356              # double 0.25816899999999998
	.quad	0x3fe0aac96cc5fbf8              # double 0.52084799999999998
	.quad	0x3fec7ee6fb4c3c19              # double 0.89049100000000003
	.quad	0x3fd4de3fbbd7b203              # double 0.32606499999999999
	.quad	0x3fd3965f5275ee9a              # double 0.30605300000000002
	.quad	0x3fddc8d5c74751ce              # double 0.46538299999999999
	.quad	0x3fe91f46ed245b29              # double 0.78506799999999999
	.quad	0x3fdca86940357a35              # double 0.44777899999999998
	.quad	0x3fe6790d9d7774ac              # double 0.70227700000000004
	.quad	0x3fe5c95e17e34b94              # double 0.68083099999999996
	.quad	0x3fe1def62f9ca5be              # double 0.55846700000000005
	.quad	0x3fd79a62ed352221              # double 0.36879800000000001
	.quad	0x3fd6abda0dfdef85              # double 0.35423900000000003
	.quad	0x3f825785f8d2e515              # double 0.0089560000000000004
	.quad	0x3fdebc558644523f              # double 0.48024499999999998
	.quad	0x3fd98750c1b97354              # double 0.39888400000000002
	.quad	0x3fdb9378ee286727              # double 0.43087599999999998
	.quad	0x3fe08d9945b6c376              # double 0.51728499999999999
	.quad	0x3fcd1b71758e2196              # double 0.22739999999999999
	.quad	0x3fd79ad42c3c9eed              # double 0.36882500000000001
	.quad	0x3fede46f15619115              # double 0.93413500000000005
	.quad	0x3fa23aafff36ac64              # double 0.035603999999999997
	.quad	0x3fd13f85510d38ce              # double 0.26950200000000002
	.quad	0x3fd99abb01c92ddc              # double 0.40006900000000001
	.quad	0x3fd81c9f72f76e61              # double 0.376747
	.quad	0x3fe9a47ecfe9b7bf              # double 0.80132999999999999
	.quad	0x3fb9ac258d5842b7              # double 0.100283
	.quad	0x3fca2e770bd017db              # double 0.204543
	.quad	0x3fe9711d798d8a98              # double 0.79505800000000004
	.quad	0x3fcd7225b749adc9              # double 0.230046
	.quad	0x3fd0639d5e4a3832              # double 0.25607999999999997
	.quad	0x3fef342edbb59ddc              # double 0.97511999999999998
	.quad	0x3fe0ed245b291b82              # double 0.52894799999999997
	.quad	0x3fd05eb7457c0b13              # double 0.25578099999999998
	.quad	0x3feddad106ee30cb              # double 0.93296100000000004
	.quad	0x3fd591f2dc2b0ea2              # double 0.33703300000000003
	.quad	0x3fe882c0a4a05dd9              # double 0.765961
	.quad	0x3fd48c4bd33d2956              # double 0.32106299999999999
	.quad	0x3fe2afb5d031055c              # double 0.58394900000000005
	.quad	0x3fdd600f345069a5              # double 0.45898800000000001
	.quad	0x3fecce54f7a91969              # double 0.90018699999999996
	.quad	0x3fc0669057d1782d              # double 0.12812999999999999
	.quad	0x3fe60c08b75ea67f              # double 0.68896900000000005
	.quad	0x3fcd355cd91eeaa7              # double 0.228191
	.quad	0x3fed228134480629              # double 0.91046199999999999
	.quad	0x3f8bf9c62a1b5c7d              # double 0.01366
	.quad	0x3fc3c0e38a7e73a3              # double 0.15432399999999999
	.quad	0x3fef831ad2135dab              # double 0.98475400000000001
	.quad	0x3fef03382e44b6e9              # double 0.96914299999999997
	.quad	0x3fe67fb04ee7c4a0              # double 0.70308700000000002
	.quad	0x3fe7a4851a869403              # double 0.73883299999999996
	.quad	0x3fe9e0b2c83ec893              # double 0.80867900000000004
	.quad	0x3fe30476f2a5a46a              # double 0.59429500000000002
	.quad	0x3feda0ad8a11665a              # double 0.92586400000000002
	.quad	0x3fe181754b05b7d0              # double 0.54705300000000001
	.quad	0x3fdcfe5c91d14e3c              # double 0.45302500000000001
	.quad	0x3fef22a2c2374795              # double 0.972978
	.quad	0x3fc62f8bdec5f395              # double 0.17332600000000001
	.quad	0x3fe34b9884c6a3be              # double 0.60297800000000001
	.quad	0x3fc2c122749f0e4e              # double 0.14651900000000001
	.quad	0x3fe8aa737110e454              # double 0.77080700000000001
	.quad	0x3fc43d35eb7457c1              # double 0.15811800000000001
	.quad	0x3fe7e158750c1b97              # double 0.74625799999999998
	.quad	0x3fb2ab042528ae75              # double 0.072922000000000001
	.quad	0x3feeaecf20642396              # double 0.958839
	.quad	0x3f9c7de5082cf52c              # double 0.027824000000000002
	.quad	0x3fddbe8ff327aa69              # double 0.464756
	.quad	0x3fd88e757928e0ca              # double 0.38369500000000001
	.quad	0x3fe0bc59b8023a6d              # double 0.52299200000000001
	.quad	0x3fe59ea35935fc3b              # double 0.67561499999999997
	.quad	0x3fdf201040bfe3b0              # double 0.48633199999999999
	.quad	0x3fb30dd82fd75e20              # double 0.074429999999999996
	.quad	0x3fddb13165d39970              # double 0.46394000000000002
	.quad	0x3fd99e40c8472c0e              # double 0.40028399999999997
	.quad	0x3fc47f1b69121251              # double 0.16012899999999999
	.quad	0x3fd75dedf1e0828c              # double 0.36510799999999999
	.quad	0x3fde7e4de3b8a19d              # double 0.47645900000000002
	.quad	0x3fdd018611fd5886              # double 0.45321800000000001
	.quad	0x3f965b63d3e4ef03              # double 0.021833000000000002
	.quad	0x3fe42fe3f359ff50              # double 0.63084600000000002
	.quad	0x3fd60d66f0cfe154              # double 0.34456799999999999
	.quad	0x3fd6db3bfb58d152              # double 0.35713099999999998
	.quad	0x3fee21554fbdad75              # double 0.94156899999999999
	.quad	0x3feeb37eb28d8666              # double 0.95941100000000001
	.quad	0x3fe1005c4651f3e9              # double 0.53129400000000004
	.quad	0x3fda996744b2b778              # double 0.41561300000000001
	.quad	0x3fc55b5fa22706d5              # double 0.166851
	.quad	0x3fe39eeed8904f6e              # double 0.613151
	.quad	0x3fe759d3458cd20b              # double 0.729715
	.quad	0x3fe1da74c09c3ce2              # double 0.557917
	.quad	0x3fedbae46cfc829d              # double 0.929064
	.quad	0x3fe24c46950fc71d              # double 0.57181099999999996
	.quad	0x3fd35e02ea960b70              # double 0.30261300000000002
	.quad	0x3fe37aeff5c6c11a              # double 0.60875699999999999
	.quad	0x3fd7b92c061847f5              # double 0.37067699999999998
	.quad	0x3fde65add9c27e95              # double 0.47495599999999999
	.quad	0x3fcc467381d7dbf5              # double 0.22090000000000001
	.quad	0x3fb5ec0b5675579b              # double 0.085633000000000001
	.quad	0x3fef04ddb5525cc4              # double 0.96934399999999998
	.quad	0x3fb1c2f405f6ba06              # double 0.069380999999999998
	.quad	0x3fa7da4052d666aa              # double 0.046587000000000003
	.quad	0x3f9409e55c0fcb4f              # double 0.019569
	.quad	0x3f993bc0a06e9ff1              # double 0.024642000000000001
	.quad	0x3fec28c9b845564b              # double 0.87997899999999996
	.quad	0x3fc6f0d844d013a9              # double 0.179225
	.quad	0x3fce7c84b5dcc63f              # double 0.238175
	.quad	0x3feff05a708ede55              # double 0.99809000000000003
	.quad	0x3fe348366516db0e              # double 0.60256500000000002
	.quad	0x3f685ad538ac18f8              # double 0.0029729999999999999
	.quad	0x3fdc3a9b06812381              # double 0.441077
	.quad	0x3fa078b7a1c25d07              # double 0.032170999999999998
	.quad	0x3f8e3e29307af20f              # double 0.014767000000000001
	.quad	0x3feaac7fbacb4289              # double 0.83355699999999999
	.quad	0x3fe82f5fd47bedb7              # double 0.75578299999999998
	.quad	0x3fe6c75e6362a5e8              # double 0.71183700000000005
	.quad	0x3fa158750c1b9735              # double 0.033877999999999998
	.quad	0x3fedc5c5718eb895              # double 0.930392
	.quad	0x3fc118e325d4a5df              # double 0.133572
	.quad	0x3feeadb402d16b98              # double 0.958704
	.quad	0x3fb3e77d523b3637              # double 0.077751000000000001
	.quad	0x3fdc851a86940358              # double 0.44562400000000002
	.quad	0x3fcf270b06c43f60              # double 0.24337900000000001
	.quad	0x3fe4a5daf07bfe7e              # double 0.64524599999999999
	.quad	0x3fd1c55c96030c24              # double 0.277671
	.quad	0x3feead18d25edd05              # double 0.95862999999999998
	.quad	0x3fe9008c8259e1f4              # double 0.78131700000000003
	.quad	0x3feef9e16d6dc1a4              # double 0.96800299999999994
	.quad	0x3fd43dea465a5764              # double 0.31627899999999998
	.quad	0x3fe025fc7e6b3fea              # double 0.504637
	.quad	0x3fccc3fc43b2dd37              # double 0.22473099999999999
	.quad	0x3fecc050bd87b56c              # double 0.89847600000000005
	.quad	0x3fd5d24180d3cff6              # double 0.34095799999999998
	.quad	0x3fc921ff2e48e8a7              # double 0.19635
	.quad	0x3fa087442c7fbacb              # double 0.032281999999999998
	.quad	0x3fecda1cac083127              # double 0.90162500000000001
	.quad	0x3fdb696a26e54717              # double 0.428309
	.quad	0x3feb4f5903a7546d              # double 0.85343599999999997
	.quad	0x3fce085b18548a9c              # double 0.23463000000000001
	.quad	0x3fde553ac4f7ec35              # double 0.47395199999999998
	.quad	0x3fee622e5de15ca7              # double 0.94948500000000002
	.quad	0x3fd46916440f2389              # double 0.31891399999999998
	.quad	0x3fc3cec84f8f8a4c              # double 0.154748
	.quad	0x3fe2963dc486ad2e              # double 0.58084000000000002
	.quad	0x3fe7cf6be37de93a              # double 0.74407000000000001
	.quad	0x3fedac7325918a01              # double 0.92730100000000004
	.quad	0x3fdb7cc7d1bb4917              # double 0.42949100000000001
	.quad	0x3fec7e2e6ea85447              # double 0.89040299999999994
	.quad	0x3fedf52977c88e7a              # double 0.93617700000000004
	.quad	0x3fe42a6b0d9513f9              # double 0.63017800000000002
	.quad	0x3fba60f5e41d4b6a              # double 0.10304199999999999
	.quad	0x3fed0aa433508f65              # double 0.90754900000000005
	.quad	0x3fe7ecaeea63b689              # double 0.74764200000000003
	.quad	0x3fe2f398e9707182              # double 0.59223599999999998
	.quad	0x3fca34a87e38eb03              # double 0.204732
	.quad	0x3fed675360d02470              # double 0.91886299999999999
	.quad	0x3fe359bc33f85511              # double 0.60470400000000002
	.quad	0x3fe20c176577531e              # double 0.56397600000000003
	.quad	0x3fb76a400fba8827              # double 0.091465000000000005
	.quad	0x3fe101bc98a222d5              # double 0.53146199999999999
	.quad	0x3fe6a4d4cb9ecf64              # double 0.70762100000000006
	.quad	0x3fdcbd5dc4007571              # double 0.44905800000000001
	.quad	0x3fd694d0dcfcc5b9              # double 0.35283300000000001
	.quad	0x3feba3c85c24c405              # double 0.86374300000000004
	.quad	0x3fcd51deefe4ffc9              # double 0.22906099999999999
	.quad	0x3fd8f0dc768dfbd7              # double 0.38970100000000002
	.quad	0x3fc09c7ffde7210c              # double 0.129776
	.quad	0x3fc3918a009f6230              # double 0.15287899999999999
	.quad	0x3fa3a732df505d10              # double 0.038385000000000002
	.quad	0x3fec6bfec13b9f12              # double 0.88818299999999994
	.quad	0x3fd3f444e0daa0cb              # double 0.31178400000000001
	.quad	0x3fcf1c3265add9c2              # double 0.24304799999999999
	.quad	0x3fd13e3e29307af2              # double 0.269424
	.quad	0x3fc1672324c83665              # double 0.13596
	.quad	0x3fec46759ab6d00b              # double 0.88360099999999997
	.quad	0x3fc87bedb7281fda              # double 0.19128200000000001
	.quad	0x3fe232788db0574b              # double 0.56866099999999997
	.quad	0x3f9e2b8c75c4a83b              # double 0.029463
	.quad	0x3fd5a47a9e2bcf92              # double 0.33816400000000002
	.quad	0x3fd6163fdd65a145              # double 0.34510800000000003
	.quad	0x3fe3fb634dad31fd              # double 0.62443700000000002
	.quad	0x3fef6453d20f2bed              # double 0.980997
	.quad	0x3fe7d3111f0c34c2              # double 0.74451500000000004
	.quad	0x3fe84c165907d912              # double 0.75928799999999996
	.quad	0x3fd630df9bdc69f9              # double 0.34673300000000001
	.quad	0x3fe1862f5989df11              # double 0.54762999999999995
	.quad	0x3fea1d6cf850df16              # double 0.81609200000000004
	.quad	0x3fe95c33721d53ce              # double 0.79250500000000001
	.quad	0x3fad04c48adeebb3              # double 0.056676999999999998
	.quad	0x3fedf5d56f32bdc2              # double 0.93625899999999995
	.quad	0x3fdf317268d32831              # double 0.48739300000000002
	.quad	0x3fe3adf0d413122b              # double 0.61498299999999995
	.quad	0x3f9b54e2b063e07a              # double 0.026690999999999999
	.quad	0x3fda56191148fda0              # double 0.41150500000000001
	.quad	0x3fcff69878316a05              # double 0.24971299999999999
	.quad	0x3fd51b584b1ab085              # double 0.32979399999999998
	.quad	0x3fd1d39da16616b5              # double 0.27854099999999998
	.quad	0x3feb477dd872f33d              # double 0.85247700000000004
	.quad	0x3fa087229e90795f              # double 0.032280999999999997
	.quad	0x3fe656ffc115df65              # double 0.69811999999999996
	.quad	0x3feb679ee02a77a3              # double 0.85639900000000002
	.quad	0x3fd4baa1511dffc5              # double 0.32389099999999998
	.quad	0x3fdfc14c660a2014              # double 0.49617299999999998
	.quad	0x3fe1540895d0b73d              # double 0.54150799999999999
	.quad	0x3fe5643aa79bbadc              # double 0.668485
	.quad	0x3fd2a1f4b1ee2435              # double 0.29113499999999998
	.quad	0x3fe4dbdd76683c29              # double 0.65183899999999995
	.quad	0x3fe9d2fc2656abde              # double 0.80700499999999997
	.quad	0x3fe2346994185059              # double 0.56889800000000001
	.quad	0x3fdea0e410b630a9              # double 0.47857
	.quad	0x3fe511a11233df2b              # double 0.65840200000000004
	.quad	0x3f81e108c3f3e037              # double 0.0087299999999999999
	.quad	0x3fcd56191148fda0              # double 0.22919
	.quad	0x3fc989df1172ef0b              # double 0.19952
	.quad	0x3fa717bd8be7296f              # double 0.045102999999999997
	.quad	0x3fbd594f26aec072              # double 0.114644
	.quad	0x3fb142b302f72b45              # double 0.067423999999999998
	.quad	0x3fcc236c15d2d01c              # double 0.219831
	.quad	0x3fee19b2c40d0aaa              # double 0.94063699999999995
	.quad	0x3fab7b8d3f1843c4              # double 0.053677000000000002
	.quad	0x3fe789aaa3ad18d2              # double 0.73555499999999996
	.quad	0x3fd88b3f63c31df7              # double 0.38349899999999998
	.quad	0x3fe1371971c10d7c              # double 0.53797600000000001
	.quad	0x3fe8a37ac3eb7cbb              # double 0.76995599999999997
	.quad	0x3f8a500d5e8d5411              # double 0.012848
	.quad	0x3fe2688377186552              # double 0.57525800000000005
	.quad	0x3fc5585be1a82624              # double 0.16675899999999999
	.quad	0x3fe9d32c625e99e9              # double 0.80702799999999997
	.quad	0x3fd5679463cfb331              # double 0.33444699999999999
	.quad	0x3fe92e3e6c4c5975              # double 0.78689500000000001
	.quad	0x3fdbcf7446f9b995              # double 0.43453700000000001
	.quad	0x3fef9de050374ff8              # double 0.98802199999999995
	.quad	0x3fe60feac42e989a              # double 0.68944300000000003
	.quad	0x3fd92d38476f2a5a              # double 0.39338499999999998
	.quad	0x3f76b441bb8c32a9              # double 0.0055430000000000002
	.quad	0x3fef89118c197e56              # double 0.98548199999999997
	.quad	0x3fee675ff609dcf9              # double 0.95011900000000005
	.quad	0x3fcf112fd32c625f              # double 0.24271200000000001
	.quad	0x3fe2d347a5b0ff11              # double 0.58829100000000001
	.quad	0x3fec868986fcdee3              # double 0.89142299999999997
	.quad	0x3fe0c9cb252ce033              # double 0.52463300000000002
	.quad	0x3fba1ac57e23f24e              # double 0.10197100000000001
	.quad	0x3fe33f6c2699c7bd              # double 0.60149200000000003
	.quad	0x3fb185271bcdbbe0              # double 0.068437999999999999
	.quad	0x3fe775f2cb641701              # double 0.73314800000000002
	.quad	0x3fea6b4202d9cf14              # double 0.82559300000000002
	.quad	0x3f82788db0574b40              # double 0.0090189999999999992
	.quad	0x3fba8c154c985f07              # double 0.1037
	.quad	0x3fd7c011d3671ac1              # double 0.37109799999999998
	.quad	0x3fe5e89ca18bd662              # double 0.68464499999999995
	.quad	0x3fdfe0114d2f5dbc              # double 0.49805100000000002
	.quad	0x3fc5305100a393ee              # double 0.16553699999999999
	.quad	0x3feca20ddc619546              # double 0.89478199999999997
	.quad	0x3fd0abc5154866a1              # double 0.26048399999999999
	.quad	0x3fb91fd5885d3133              # double 0.098141999999999993
	.quad	0x3fe2509e12a51e32              # double 0.57234099999999999
	.quad	0x3fc275e6362a5e78              # double 0.14422299999999999
	.quad	0x3fe374f93bc0a06f              # double 0.60802900000000004
	.quad	0x3fd2a87a072d1aeb              # double 0.29153299999999999
	.quad	0x3febbc83a96d4c34              # double 0.86676200000000003
	.quad	0x3fe9a732df505d10              # double 0.80166000000000004
	.quad	0x3fcbdb65ecc3e319              # double 0.21763299999999999
	.quad	0x3fe3628ed5f138bd              # double 0.60578100000000001
	.quad	0x3fee2072d1aeb3dd              # double 0.94146099999999999
	.quad	0x3fee7a743a647fdc              # double 0.95244799999999996
	.quad	0x3fd990795f676ea4              # double 0.39944299999999999
	.quad	0x3fe7dea67e846a5d              # double 0.74592899999999995
	.quad	0x3fe4ac2df0d41312              # double 0.64601799999999998
	.quad	0x3fd5afb3b7521145              # double 0.33884900000000001
	.quad	0x3fe80a8b08dd1e54              # double 0.75128700000000003
	.quad	0x3fcacec41dd1a21f              # double 0.20943500000000001
	.quad	0x3fce2539756c93a7              # double 0.235511
	.quad	0x3fc97a67a52ac754              # double 0.199048
	.quad	0x3fe63914f483cafb              # double 0.69446799999999997
	.quad	0x3fd2f52fc2656abe              # double 0.29621500000000001
	.quad	0x3febc8d7e02645e5              # double 0.86826700000000001
	.quad	0x3fe0aa92e62131a9              # double 0.52082200000000001
	.quad	0x3fc4135daad60200              # double 0.15684100000000001
	.quad	0x3fd3cfdd22856606              # double 0.309562
	.quad	0x3fd88116ebd4cfd1              # double 0.38287900000000002
	.quad	0x3fef4bf4cb1897a6              # double 0.97802199999999995
	.quad	0x3fe552f7f498c3b1              # double 0.66637800000000003
	.quad	0x3fec3fd2e9468017              # double 0.88279099999999999
	.quad	0x3fd5f8b1572580c3              # double 0.343304
	.quad	0x3feed5193708aac9              # double 0.96351299999999995
	.quad	0x3fc5e4cd74927914              # double 0.171045
	.quad	0x3fe25601ffb480a6              # double 0.57299900000000004
	.quad	0x3fe279bfdf7e8039              # double 0.57736200000000004
	.quad	0x3fe0e317268d3283              # double 0.527721
	.quad	0x3fe8df3300de4c51              # double 0.77724599999999999
	.quad	0x3fdfcb74ddf86e3b              # double 0.49679299999999998
	.quad	0x3fd24a1ad6451b93              # double 0.285773
	.quad	0x3fc02a3cea6c1a05              # double 0.12628900000000001
	.quad	0x3fe5ce7253da72a8              # double 0.68145100000000003
	.quad	0x3fd7bb44e50c5eb3              # double 0.370805
	.quad	0x3fa9f01b866e43aa              # double 0.050659999999999997
	.quad	0x3fea83dff3f0fe04              # double 0.82859799999999994
	.quad	0x3fdbd3458cd20afa              # double 0.43476999999999999
	.quad	0x3fc7fc6da4484945              # double 0.187391
	.quad	0x3fea790539fba451              # double 0.82727300000000004
	.quad	0x3feaa426bb55ac04              # double 0.832538
	.quad	0x3fd734549b62c775              # double 0.36256899999999997
	.quad	0x3f978d92fb19e732              # double 0.023001000000000001
	.quad	0x3fe63b7b6bb12902              # double 0.69476099999999996
	.quad	0x3fa8ee06d938151a              # double 0.048690999999999998
	.quad	0x3fc77a919695d91b              # double 0.18342800000000001
	.quad	0x3fe1e91a75cd0bb7              # double 0.55970500000000001
	.quad	0x3fdc996fa82e87d3              # double 0.44686500000000001
	.quad	0x3fd37e3d1cc100e7              # double 0.30458000000000002
	.quad	0x3fe139cb6848beb6              # double 0.53830500000000003
	.quad	0x3fef171c10d7be98              # double 0.97157099999999996
	.quad	0x3fe1ae5ffa3b9ae1              # double 0.55253600000000003
	.quad	0x3fe9cd07852f7f4a              # double 0.80627800000000005
	.quad	0x3fe0ae9ccb7d4174              # double 0.52131499999999997
	.quad	0x3fc666dbd72bcb60              # double 0.175014
	.quad	0x3fdace89656eefa2              # double 0.41885600000000001
	.quad	0x3fefc6bce8533b10              # double 0.99300999999999995
	.quad	0x3febb1dd5d3dc8b8              # double 0.86546199999999995
	.quad	0x3fef6f544bb1af3a              # double 0.98233999999999999
	.quad	0x3fde8711d798d8a9              # double 0.47699399999999997
	.quad	0x3fefe603d577963a              # double 0.99682800000000005
	.quad	0x3fe69b0468448cf8              # double 0.70642300000000002
	.quad	0x3feafd00713f077d              # double 0.84338400000000002
	.quad	0x3fd79af9ebe9c886              # double 0.368834
	.quad	0x3fd3c3dab5c39bcc              # double 0.30882900000000002
	.quad	0x3fed7afc8b0079a3              # double 0.92126300000000005
	.quad	0x3fe8ecc1ca3a4b55              # double 0.77890099999999995
	.quad	0x3fe33fd71b046845              # double 0.60154300000000005
	.quad	0x3fde2656abde3fbc              # double 0.47109000000000001
	.quad	0x3fc4969a0ad8a116              # double 0.16084599999999999
	.quad	0x3fd869c66d373b00              # double 0.38145600000000002
	.quad	0x3fb85ae5ffa3b9ae              # double 0.095136999999999999
	.quad	0x3fe777c6759ab6d0              # double 0.733371
	.quad	0x3fe28576cce5f740              # double 0.57879199999999997
	.quad	0x3fbd2ad81adea897              # double 0.11393499999999999
	.quad	0x3fd22f0e0a84be40              # double 0.28412199999999999
	.quad	0x3fec555821294574              # double 0.88541800000000003
	.quad	0x3fb1c0767d34df05              # double 0.069343000000000002
	.quad	0x3fe9dd26b723ee1c              # double 0.80824600000000001
	.quad	0x3fea649f51697f20              # double 0.82478300000000004
	.quad	0x3fbb6694898f605b              # double 0.107034
	.quad	0x3fdcd6b65a9a8049              # double 0.45060499999999998
	.quad	0x3fdf9bf9c62a1b5c              # double 0.49389499999999997
	.quad	0x3feec10f94c87981              # double 0.961067
	.quad	0x3fe40fb65668c261              # double 0.62691799999999998
	.quad	0x3fb9c8c9320d9946              # double 0.10072
	.quad	0x3fd4564f97edc7ef              # double 0.31776799999999999
	.quad	0x3fe7efc7a398201d              # double 0.74802000000000002
	.quad	0x3fd00d8cb07d0aee              # double 0.25082700000000002
	.quad	0x3fe6b293d102bc73              # double 0.70929900000000001
	.quad	0x3fe51b8887229e90              # double 0.65961099999999995
	.quad	0x3fdf42e126202539              # double 0.48845699999999997
	.quad	0x3fe3c47e49b1fab9              # double 0.61773599999999995
	.quad	0x3fc916c1e364bec6              # double 0.19600699999999999
	.quad	0x3fd281669ced0b31              # double 0.28914800000000002
	.quad	0x3feb716b11c6d1e1              # double 0.857595
	.quad	0x3fed50d6b228dc98              # double 0.91611799999999999
	.quad	0x3fe4fcfe58601366              # double 0.65588299999999999
	.quad	0x3fa0c73abc947065              # double 0.032770000000000001
	.quad	0x3fe8840181e03f70              # double 0.76611399999999996
	.quad	0x3fd0cc144028e4fc              # double 0.26245600000000002
	.quad	0x3fd3aa2e3c536d65              # double 0.30726199999999998
	.quad	0x3fd53dddb1209edc              # double 0.331901
	.quad	0x3f748dc11e42e126              # double 0.0050179999999999999
	.quad	0x3fc8eea63b688bdb              # double 0.19478300000000001
	.quad	0x3fd60dbad3a604e2              # double 0.34458800000000001
	.quad	0x3fdf227d028a1dfc              # double 0.48648000000000002
	.quad	0x3fe69fcf3dc054ef              # double 0.70700799999999997
	.quad	0x3fe1426351deefe5              # double 0.539354
	.quad	0x3fe5a8d434a01abd              # double 0.67685899999999999
	.quad	0x3fdfa84be40420f7              # double 0.494647
	.quad	0x3fc998d045fe1112              # double 0.19997599999999999
	.quad	0x3fd76191148fd9fd              # double 0.36532999999999999
	.quad	0x3fee362845996745              # double 0.94411100000000003
	.quad	0x3fe247a9e2bcf91a              # double 0.57124799999999998
	.quad	0x3fe5f674d1633483              # double 0.68633500000000003
	.quad	0x3fc79ebe9c886163              # double 0.184532
	.quad	0x3fb20a2014727dcc              # double 0.070467000000000002
	.quad	0x3fee0be2f7b17ce5              # double 0.93895099999999998
	.quad	0x3fe6fcb0c026cc1d              # double 0.71834600000000004
	.quad	0x3feebc0a06e9ff0d              # double 0.96045400000000002
	.quad	0x3fee65604189374c              # double 0.94987500000000002
	.quad	0x3fd94523f67f4dbe              # double 0.394845
	.quad	0x3fed51116a8b8f15              # double 0.91614600000000002
	.quad	0x3fe29207d4e09785              # double 0.58032600000000001
	.quad	0x3fe6611fd5885d31              # double 0.69935599999999998
	.quad	0x3fe972a172abef07              # double 0.79524300000000003
	.quad	0x3fd478359bc33f85              # double 0.31983699999999998
	.quad	0x3fed304ee7c49fd8              # double 0.91214700000000004
	.quad	0x3fdbf61ed5ae1cde              # double 0.43689699999999998
	.quad	0x3fb18bb4d48882f1              # double 0.068538000000000002
	.quad	0x3fc9b6dca07f66e8              # double 0.20089299999999999
	.quad	0x3fe8b686a4ca4f44              # double 0.77228099999999999
	.quad	0x3fd97b6bb1290258              # double 0.39815800000000001
	.quad	0x3fea34dcebfec13c              # double 0.81895300000000004
	.quad	0x3fe0ab8a5ce5b424              # double 0.52093999999999996
	.quad	0x3fdad4bad7d7c2ca              # double 0.419234
	.quad	0x3fa5a272862f598a              # double 0.042255000000000001
	.quad	0x3fecebe596c82e02              # double 0.90379600000000004
	.quad	0x3fd9ba27ae9ab29e              # double 0.40198699999999998
	.quad	0x3fea599029ae4f33              # double 0.82343299999999997
	.quad	0x3fd03db3bfb58d15              # double 0.25376599999999999
	.quad	0x3fe0487b99d451fc              # double 0.50884799999999997
	.quad	0x3fd576102795703f              # double 0.33533099999999999
	.quad	0x3fd33d8e0008637c              # double 0.30063200000000001
	.quad	0x3fd5dfdef8487b9a              # double 0.34178900000000001
	.quad	0x3fcbd65a14488c61              # double 0.21747900000000001
	.quad	0x3fefe49f51697f20              # double 0.99665800000000004
	.quad	0x3fed70d1fa333765              # double 0.92002200000000001
	.quad	0x3fe46d30f062d40b              # double 0.63832900000000004
	.quad	0x3fef698bb4d48883              # double 0.981634
	.quad	0x3fe31426fe718a87              # double 0.59621000000000002
	.quad	0x3fd990257c914b16              # double 0.39942299999999997
	.quad	0x3fe715aaf78feef6              # double 0.72139500000000001
	.quad	0x3fbef102363b2570              # double 0.120865
	.quad	0x3fe77ca42aed1394              # double 0.73396499999999998
	.quad	0x3fe1d0acc0bdcad1              # double 0.55672299999999997
	.quad	0x3fed175f2cb64170              # double 0.90910299999999999
	.quad	0x3fbd82fd75e2046c              # double 0.11527999999999999
	.quad	0x3fd04b2fa93af74d              # double 0.25458900000000001
	.quad	0x3fc96d00b45ae600              # double 0.19863900000000001
	.quad	0x3fe800389f83be66              # double 0.750027
	.quad	0x3fc439713ad5bee4              # double 0.158003
	.quad	0x3feae8ccdd93c46e              # double 0.84091800000000005
	.quad	0x3fe2425aee631f8a              # double 0.5706
	.quad	0x3fe7221ea35935fc              # double 0.72291499999999997
	.quad	0x3fe3ddbfceb78898              # double 0.62081900000000001
	.quad	0x3fea84ee7c49fd7a              # double 0.82872699999999999
	.quad	0x3feb6d527e521577              # double 0.85709500000000005
	.quad	0x3fc7b762d83c6c98              # double 0.185284
	.quad	0x3feacaba38759253              # double 0.83724699999999996
	.quad	0x3fe902d38476f2a6              # double 0.78159500000000004
	.quad	0x3fbcff21b3aeee95              # double 0.11326799999999999
	.quad	0x3fe10ff10ecb74de              # double 0.533196
	.quad	0x3fe9b8151a437825              # double 0.80372100000000002
	.quad	0x3fd4afc04c8bc9cd              # double 0.32322699999999999
	.quad	0x3fea60999dcb5782              # double 0.82429200000000002
	.quad	0x3fa8389f83be6602              # double 0.047307000000000002
	.quad	0x3feb6ae9ee45c359              # double 0.85680100000000003
	.quad	0x3fefb5f5f0b28523              # double 0.990962
	.quad	0x3fe9fe9fadafd114              # double 0.81233200000000005
	.quad	0x3fe9bde1e2de8709              # double 0.80442899999999995
	.quad	0x3fc3bf8b9baa1512              # double 0.154283
	.quad	0x3f70225742dcf462              # double 0.0039389999999999998
	.quad	0x3fd3316e37154003              # double 0.29989199999999999
	.quad	0x3fb58aeb80ecfa6a              # double 0.084151000000000003
	.quad	0x3f72dba4d6e47dc3              # double 0.0046039999999999996
	.quad	0x3fe5945d851654d6              # double 0.67436099999999999
	.quad	0x3fe4949c6f36ef80              # double 0.64314099999999996
	.quad	0x3fea20ccff21b3af              # double 0.81650400000000001
	.quad	0x3fb610060780fdc1              # double 0.086181999999999995
	.quad	0x3feb781c714fce74              # double 0.85841199999999995
	.quad	0x3feb0fa15db3397e              # double 0.84565800000000002
	.quad	0x3fe1635e74299d88              # double 0.54337999999999997
	.quad	0x3fd3cc2938de6ddf              # double 0.309336
	.quad	0x3fc5989df1172ef1              # double 0.16872000000000001
	.quad	0x3fd0e68a0d349be9              # double 0.264071
	.quad	0x3fc3a908a265f0f6              # double 0.15359600000000001
	.quad	0x3fe586b59146e4c1              # double 0.67269400000000001
	.quad	0x3fe907c4199fe436              # double 0.78219799999999995
	.quad	0x3fd736eb4e981388              # double 0.36272700000000002
	.quad	0x3fb8ede54b48d3ae              # double 0.097379999999999994
	.quad	0x3fe7689eba6aca79              # double 0.73152099999999998
	.quad	0x3fd87b1c0010c6f8              # double 0.38251400000000002
	.quad	0x3fe14b039ef0f16f              # double 0.54040699999999997
	.quad	0x3fe9959e6256366d              # double 0.79951399999999995
	.quad	0x3fe6de4e69f05ea2              # double 0.71463699999999997
	.quad	0x3fcce1bd1ed9dfdb              # double 0.22563900000000001
	.quad	0x3fc9688bda9435ad              # double 0.19850300000000001
	.quad	0x3fc5886594af4f0e              # double 0.16822500000000001
	.quad	0x3faddc4007570c56              # double 0.058320999999999998
	.quad	0x3fefa821f2990f30              # double 0.98927399999999999
	.quad	0x3fe2618efbb0e5e6              # double 0.57440899999999995
	.quad	0x3fe2dbfad2999568              # double 0.58935300000000002
	.quad	0x3fcefd651b0ccbc0              # double 0.24210799999999999
	.quad	0x3fe6e19da9c99286              # double 0.71504100000000004
	.quad	0x3fd718611fd5885d              # double 0.36086299999999999
	.quad	0x3fe97abfb9bed30f              # double 0.796234
	.quad	0x3feb556d19dece57              # double 0.85417799999999999
	.quad	0x3fec5abe27179bfe              # double 0.886077
	.quad	0x3fb5dd3bafd976ff              # double 0.085406999999999997
	.quad	0x3fb77079e59f2baa              # double 0.091560000000000002
	.quad	0x3fb778ab0c88a47f              # double 0.091685000000000003
	.quad	0x3fdeff36ac647779              # double 0.48432700000000001
	.quad	0x3fe3cb9884c6a3be              # double 0.61860300000000001
	.quad	0x3fdaaf5fd47bedb7              # double 0.41695399999999999
	.quad	0x3fdbfc6da4484945              # double 0.437282
	.quad	0x3fb04e0daa0cae64              # double 0.063690999999999998
	.quad	0x3fef8b9991361dc9              # double 0.98579099999999997
	.quad	0x3fb3be878fabda0e              # double 0.077126
	.quad	0x3fe4ecebbba55d1c              # double 0.65392099999999997
	.quad	0x3fe1a40746455eaf              # double 0.55127300000000001
	.quad	0x3fd6af6837f7be12              # double 0.35445599999999999
	.quad	0x3fd4d1676640a6b9              # double 0.32528099999999999
	.quad	0x3fe50995aaf78fef              # double 0.65742
	.quad	0x3fe07822bbecaab9              # double 0.51466500000000004
	.quad	0x3fdbf08893b7d849              # double 0.436556
	.quad	0x3febe0999dcb5782              # double 0.87116700000000002
	.quad	0x3fcf635610adcd2d              # double 0.24521899999999999
	.quad	0x3feeacb4289118c2              # double 0.95858200000000005
	.quad	0x3fd23215fcc1871e              # double 0.28430699999999998
	.quad	0x3fb04816f0068db9              # double 0.063600000000000004
	.quad	0x3fd4ecc814d7279a              # double 0.32695200000000002
	.quad	0x3febdebb7739f341              # double 0.87093900000000002
	.quad	0x3fe162435696e58a              # double 0.54324499999999998
	.quad	0x3fecc5974e65bea1              # double 0.89912000000000003
	.quad	0x3fe82f42784a9479              # double 0.75576900000000002
	.quad	0x3fd7cc0379314446              # double 0.37182700000000002
	.quad	0x3f9708aac96cc5fc              # double 0.022494
	.quad	0x3f9c8711d798d8a9              # double 0.027858999999999998
	.quad	0x3fe5ea897635e743              # double 0.68488000000000004
	.quad	0x3fec8e64b2314014              # double 0.892382
	.quad	0x3fef40f238972043              # double 0.97667800000000004
	.quad	0x3fefc61b6d43d039              # double 0.99293299999999995
	.quad	0x3fe49cf355cd91ef              # double 0.64415900000000004
	.quad	0x3fd423af31b152f4              # double 0.31467800000000001
	.quad	0x3fedac36544fe36d              # double 0.92727199999999999
	.quad	0x3fc1320d9945b6c3              # double 0.13433999999999999
	.quad	0x3fe1727fe4bcad9b              # double 0.54522700000000002
	.quad	0x3fbd30be0ded288d              # double 0.114025
	.quad	0x3f807852f7f498c4              # double 0.0080420000000000005
	.quad	0x3fd48e086bdf4c2b              # double 0.32116899999999998
	.quad	0x3f84d6a161e4f766              # double 0.010175
	.quad	0x3febe455eaee2004              # double 0.87162300000000003
	.quad	0x3fe1cc447c30d307              # double 0.55618500000000004
	.quad	0x3fe1f8c21e1d2179              # double 0.561616
	.quad	0x3feca3400b88ca3e              # double 0.89492799999999995
	.quad	0x3fc7c0229a5ebb77              # double 0.18555099999999999
	.quad	0x3fa79cc74b838c11              # double 0.046117999999999999
	.quad	0x3feda71de69ad42c              # double 0.92664999999999997
	.quad	0x3fd6c8eabffcdab2              # double 0.35601300000000002
	.quad	0x3fb618bd66277c46              # double 0.086315000000000002
	.quad	0x3fea1bbadc0980b2              # double 0.81588499999999997
	.quad	0x3fcd3ccd0fe8ab50              # double 0.22841800000000001
	.quad	0x3fd8c764adff822c              # double 0.38717000000000001
	.quad	0x3fed9a1db877ab32              # double 0.92506299999999997
	.quad	0x3fe8bfc86cebbba5              # double 0.77341099999999996
	.quad	0x3fecd0a45d41fa76              # double 0.90046899999999996
	.quad	0x3fdb006d0d49949f              # double 0.42190100000000003
	.quad	0x3fbf29d40ee06d94              # double 0.12173200000000001
	.quad	0x3fe5c83ec892ab69              # double 0.68069400000000002
	.quad	0x3fe301f53825e13b              # double 0.59398899999999999
	.quad	0x3fd576ddaceee0f4              # double 0.33538000000000001
	.quad	0x3fe802e2328f9f45              # double 0.75035200000000002
	.quad	0x3fb16c82e019b0ab              # double 0.068061999999999998
	.quad	0x3fbd894812be48a6              # double 0.11537600000000001
	.quad	0x3fe12d57bc7f77af              # double 0.53678499999999996
	.quad	0x3fd5e108c3f3e037              # double 0.34186
	.quad	0x3fe936ae7d566cf4              # double 0.78792499999999998
	.quad	0x3fdec5154866a11f              # double 0.48077900000000001
	.quad	0x3fda6a3bddfc9ff9              # double 0.41273399999999999
	.quad	0x3fea60b0af5fd47c              # double 0.824303
	.quad	0x3f878897e996312f              # double 0.011490999999999999
	.quad	0x3fe5a2a90cd423d9              # double 0.67610599999999998
	.quad	0x3fd0efd438d1d8a5              # double 0.26463799999999998
	.quad	0x3fd097891e215337              # double 0.25924900000000001
	.quad	0x3fe72cffa7eb6bf4              # double 0.72424299999999997
	.quad	0x3fd814013ec460ee              # double 0.37622100000000003
	.quad	0x3fa2eba27ae9ab2a              # double 0.036954000000000001
	.quad	0x3fea98915bdd7668              # double 0.83112399999999997
	.quad	0x3f81cc100e6afcce              # double 0.0086899999999999998
	.quad	0x3fe1a53111f0c34c              # double 0.55141499999999999
	.quad	0x3feeb25918a009f6              # double 0.95927099999999998
	.quad	0x3f8111f0c34c1a8b              # double 0.0083350000000000003
	.quad	0x3fe292839042d8c3              # double 0.58038500000000004
	.quad	0x3fc2e8e1d6494d51              # double 0.147732
	.quad	0x3fea531fcd24e161              # double 0.82264700000000002
	.quad	0x3fee9b691212513b              # double 0.95647099999999996
	.quad	0x3fea50a45d41fa76              # double 0.82234399999999996
	.quad	0x3fe466d7a56de332              # double 0.63755399999999995
	.quad	0x3fef6dfe75bc44bf              # double 0.98217699999999996
	.quad	0x3fdf9bed30f062d4              # double 0.493892
	.quad	0x3fe5ebd9018e7579              # double 0.68503999999999998
	.quad	0x3fd12ecf20642396              # double 0.268482
	.quad	0x3fe87dfc19c17226              # double 0.76537900000000003
	.quad	0x3fcf7f38c5436b90              # double 0.24607000000000001
	.quad	0x3feaf6cacd184c27              # double 0.84262599999999999
	.quad	0x3fe4543d03968d76              # double 0.63528300000000004
	.quad	0x3fd215e39713ad5c              # double 0.282586
	.quad	0x3fb6c79702e6644e              # double 0.088983000000000006
	.quad	0x3fe7dfa00e27e0f0              # double 0.74604800000000004
	.quad	0x3fe86de1198aeb81              # double 0.76341300000000001
	.quad	0x3fd6468cac4b4d05              # double 0.34805599999999998
	.quad	0x3fd47891e215336e              # double 0.319859
	.quad	0x3fc502a3486f049b              # double 0.16414300000000001
	.quad	0x3fe71c8a7a41e57e              # double 0.72223400000000004
	.quad	0x3fb10fd7e45803cd              # double 0.066647999999999999
	.quad	0x3fd5117720c8cd64              # double 0.32919100000000001
	.quad	0x3fd516f4384ba0e8              # double 0.32952599999999999
	.quad	0x3fe9a9e0a41a261c              # double 0.801987
	.quad	0x3fb612e83a109d06              # double 0.086225999999999997
	.quad	0x3fe18270f3882279              # double 0.54717300000000002
	.quad	0x3fe69f31f46ed246              # double 0.70693300000000003
	.quad	0x3fe1d2a1f8e3ac0c              # double 0.55696199999999996
	.quad	0x3fe3bbea91d9b1b8              # double 0.61668900000000004
	.quad	0x3fdbd43d03968d76              # double 0.43482900000000002
	.quad	0x3fe831487768166a              # double 0.75601600000000002
	.quad	0x3fe530e3cd9a5226              # double 0.66221799999999997
	.quad	0x3fdb9a8049667b5f              # double 0.43130499999999999
	.quad	0x3fd39e236c15d2d0              # double 0.30652699999999999
	.quad	0x3fe3007357e670e3              # double 0.59380500000000003
	.quad	0x3fefe91ea78af3e4              # double 0.99720699999999995
	.quad	0x3fe9ad601ffb480a              # double 0.80241399999999996
	.quad	0x3feefcdcca70d1fa              # double 0.96836699999999998
	.quad	0x3fee180f55de58e6              # double 0.94043699999999997
	.quad	0x3fe943265add9c28              # double 0.78944700000000001
	.quad	0x3fec166be7afa722              # double 0.87773699999999999
	.quad	0x3fe5ae3a3a8e7147              # double 0.67751799999999995
	.quad	0x3fbec7000431bde8              # double 0.120224
	.quad	0x3fe240724b76f6d7              # double 0.57036699999999996
	.quad	0x3fc3dffc5479d4d8              # double 0.15527299999999999
	.quad	0x3feb1103c8e25c81              # double 0.845827
	.quad	0x3fe31172ef0ae536              # double 0.59587999999999997
	.quad	0x3fd5c82e019b0ab3              # double 0.34034300000000001
	.quad	0x3fde3c968943e100              # double 0.47244799999999998
	.quad	0x3fdb82dbe7f2c301              # double 0.42986200000000002
	.quad	0x3fbe272862f5989e              # double 0.117785
	.quad	0x3fe4593c46d82ba6              # double 0.63589300000000004
	.quad	0x3febdbc87db2b346              # double 0.87057899999999999
	.quad	0x3fe164ef0281ba80              # double 0.54357100000000003
	.quad	0x3fd83e39f77292c5              # double 0.37879800000000002
	.quad	0x3fe49f687b139c95              # double 0.644459
	.quad	0x3fb21bd1ed9dfdac              # double 0.070736999999999994
	.quad	0x3fd29bcba3012168              # double 0.29075899999999999
	.quad	0x3fefda2f8bdec5f4              # double 0.99538400000000004
	.quad	0x3fd1f6c69b5a63fa              # double 0.28068700000000002
	.quad	0x3f9d7f51efb6dca0              # double 0.028805999999999998
	.quad	0x3fe42157689ca18c              # double 0.62907000000000002
	.quad	0x3fc6018a43bb40b3              # double 0.17192199999999999
	.quad	0x3fd485b9e8c47a18              # double 0.320662
	.quad	0x3fe66adb402d16b9              # double 0.70054399999999994
	.quad	0x3fe5f4666ec9e237              # double 0.68608400000000003
	.quad	0x3fd4682730c67169              # double 0.318857
	.quad	0x3fed00b45ae5ffa4              # double 0.90633600000000003
	.quad	0x3fc268d32830a0b2              # double 0.14382400000000001
	.quad	0x3fde789613d31b9b              # double 0.47610999999999998
	.quad	0x3fe9577963992c8c              # double 0.79192799999999996
	.quad	0x3fc1e90ff9724745              # double 0.13992499999999999
	.quad	0x3fd394573a797892              # double 0.30592900000000001
	.quad	0x3fe8bef6b5d462c3              # double 0.77331099999999997
	.quad	0x3fd69e236c15d2d0              # double 0.35340199999999999
	.quad	0x3fe8757928e0c9da              # double 0.76434000000000002
	.quad	0x3fdb167a95c853c1              # double 0.42324699999999998
	.quad	0x3fed94ee392e1ef7              # double 0.92442999999999997
	.quad	0x3fd1c6a7ef9db22d              # double 0.27775
	.quad	0x3fe4baf965b20b80              # double 0.64782399999999996
	.quad	0x3fdb961c36976bc2              # double 0.431037
	.quad	0x3fa025bfad299956              # double 0.031537999999999997
	.quad	0x3fd57f6f4be835df              # double 0.33590300000000001
	.quad	0x3fe347368ad68837              # double 0.60244299999999995
	.quad	0x3faea28fe260b2c8              # double 0.059833999999999998
	.quad	0x3fecb5bd512ec6bd              # double 0.89718500000000001
	.quad	0x3fdec44bf4cb1898              # double 0.48073100000000002
	.quad	0x3fe02c40d0aaa7df              # double 0.50540200000000002
	.quad	0x3fe5069e7fb267c7              # double 0.65705800000000003
	.quad	0x3fef0fa15db3397e              # double 0.97065800000000002
	.quad	0x3fe05fce3150dae4              # double 0.51169500000000001
	.quad	0x3fcb1e7d9988d2a2              # double 0.211868
	.quad	0x3fd6f1e0828c36db              # double 0.35851300000000003
	.quad	0x3fdc80c308feac43              # double 0.445359
	.quad	0x3fd7b5350092ccf7              # double 0.37043500000000001
	.quad	0x3fd79b30728e92d5              # double 0.36884699999999998
	.quad	0x3fc0acc0bdcad14a              # double 0.130272
	.quad	0x3fe774623d0bfa09              # double 0.73295699999999997
	.quad	0x3fce04d983947497              # double 0.23452300000000001
	.quad	0x3fc8cfb762d83c6d              # double 0.19383900000000001
	.quad	0x3fdda2120e1f7d74              # double 0.46301700000000001
	.quad	0x3fcb8a7e73a365cb              # double 0.21516399999999999
	.quad	0x3fe92743a647fdc6              # double 0.78604300000000005
	.quad	0x3fdd0f01fb82c2bd              # double 0.45404099999999997
	.quad	0x3fe3a17d2849cb25              # double 0.61346299999999998
	.quad	0x3fdbb7d41743e964              # double 0.43309500000000001
	.quad	0x3feabb2788db0575              # double 0.83534600000000003
	.quad	0x3fcfe1650a45d420              # double 0.24906600000000001
	.quad	0x3feb16f4384ba0e8              # double 0.84655199999999997
	.quad	0x3fcac3dab5c39bcc              # double 0.20910200000000001
	.quad	0x3fbb3461309c7ffe              # double 0.106268
	.quad	0x3fe1be8ff327aa69              # double 0.554512
	.quad	0x3fd1e57d9dba908a              # double 0.27963199999999999
	.quad	0x3fe394f8b588e369              # double 0.61193500000000001
	.quad	0x3fb258c4bd33d295              # double 0.071666999999999995
	.quad	0x3fd7e939eadd590c              # double 0.37361
	.quad	0x3fe1875b3e1437c5              # double 0.54777299999999995
	.quad	0x3fbf51697f1f9ad0              # double 0.122336
	.quad	0x3fdb021d10b1feeb              # double 0.42200399999999999
	.quad	0x3fd076965f5275ef              # double 0.25723800000000002
	.quad	0x3fccc29bf162ae4b              # double 0.224689
	.quad	0x3fdd434e3369b9d8              # double 0.457233
	.quad	0x3fcf9bed30f062d4              # double 0.246946
	.quad	0x3fc3ba5e353f7cee              # double 0.15412500000000001
	.quad	0x3feb4c016052502f              # double 0.85302800000000001
	.quad	0x3faa15b9a5a89b95              # double 0.050946999999999999
	.quad	0x3feac6b053198288              # double 0.836754
	.quad	0x3fd013e81450efdd              # double 0.25121500000000002
	.quad	0x3fe8595dd4c76d11              # double 0.76090899999999995
	.quad	0x3fd7f8b9baa1511e              # double 0.374556
	.quad	0x3fb35c6c11a11234              # double 0.075629000000000002
	.quad	0x3fea3d859c8c9321              # double 0.82001000000000002
	.quad	0x3fe240e9d51b4fe8              # double 0.57042400000000004
	.quad	0x3fe74e032db1e9f2              # double 0.72827299999999995
	.quad	0x3fd5f08893b7d849              # double 0.342806
	.quad	0x3fc531098d477bc0              # double 0.16555900000000001
	.quad	0x3fe2204295a6c5d2              # double 0.566438
	.quad	0x3fe72e0c17657753              # double 0.72437099999999999
	.quad	0x3fc3f26f1dc50ce5              # double 0.155836
	.quad	0x3fdf0aaeafab53d6              # double 0.48502699999999999
	.quad	0x3fd4935fc3b4f616              # double 0.32149499999999998
	.quad	0x3fe3225fa658c4bd              # double 0.59794599999999998
	.quad	0x3fe0333764f11b61              # double 0.50625200000000004
	.quad	0x3fedbb9cf9a06a6e              # double 0.92915199999999998
	.quad	0x3fb61522a6f3f530              # double 0.086260000000000003
	.quad	0x3fec9c64ba94bbe4              # double 0.89409099999999996
	.quad	0x3fc5227d028a1dfc              # double 0.16511500000000001
	.quad	0x3fcc388ebcc6c54c              # double 0.22047600000000001
	.quad	0x3fd600474d9c6b05              # double 0.34376699999999999
	.quad	0x3fe0dcebfec13b9f              # double 0.52696799999999999
	.quad	0x3f8aaef2c7325919              # double 0.013029000000000001
	.quad	0x3fd65e80bed740c4              # double 0.349518
	.quad	0x3fe05ab9f559b3d0              # double 0.51107499999999995
	.quad	0x3fcd041cc532a498              # double 0.226688
	.quad	0x3fca7d5ed06fef7c              # double 0.206951
	.quad	0x3feaaa2e3c536d65              # double 0.83327399999999996
	.quad	0x3fbfe6c4c5974e66              # double 0.124615
	.quad	0x3feb8157eed45e92              # double 0.85953900000000005
	.quad	0x3fdf33bd9cae2110              # double 0.48753299999999999
	.quad	0x3fe69ecf63800219              # double 0.70688600000000001
	.quad	0x3fea81eabbcb1cc9              # double 0.82835899999999996
	.quad	0x3fd767125dd095af              # double 0.36566599999999999
	.quad	0x3fc577d955714b9d              # double 0.16772000000000001
	.quad	0x3fe025bd944aa540              # double 0.50460700000000003
	.quad	0x3fdd4c22ee41919b              # double 0.45777200000000001
	.quad	0x3fb1ccfaeff5c6c1              # double 0.069533999999999999
	.quad	0x3fd7a671ef30a4e3              # double 0.36953399999999997
	.quad	0x3feb3aa1511dffc5              # double 0.85090699999999997
	.quad	0x3f9fb65668c26139              # double 0.030969
	.quad	0x3fe0d197a24894c4              # double 0.52558499999999997
	.quad	0x3f9e1cde5d18090b              # double 0.029406999999999999
	.quad	0x3fd0a372606fac60              # double 0.25997599999999998
	.quad	0x3fdeb70691ea78af              # double 0.47992099999999999
	.quad	0x3fee5629d8409e56              # double 0.94801800000000003
	.quad	0x3fccc3f3e0370cdd              # double 0.22473000000000001
	.quad	0x3fcbfc5479d4d834              # double 0.218638
	.quad	0x3fe4f7d73c925786              # double 0.655254
	.quad	0x3fbae4e26d4801f7              # double 0.105055
	.quad	0x3fdd9ca5bd944aa5              # double 0.46268599999999999
	.quad	0x3fe8dbab21815a08              # double 0.77681500000000003
	.quad	0x3fc21a3f4666ec9e              # double 0.141426
	.quad	0x3fe8f0cdc8754f37              # double 0.77939499999999995
	.quad	0x3fe4407cc7d1bb49              # double 0.63287199999999999
	.quad	0x3fd3f922962cfd8f              # double 0.312081
	.quad	0x3fc5ef416bdb1a6d              # double 0.17136399999999999
	.quad	0x3fd631487768166a              # double 0.34675800000000001
	.quad	0x3fd7105186db50f4              # double 0.360371
	.quad	0x3fef52135daad602              # double 0.978769
	.quad	0x3fe3173d9ec70004              # double 0.59658699999999998
	.quad	0x3fd1dfaca3619978              # double 0.279277
	.quad	0x3fe4969c23b7952d              # double 0.64338499999999998
	.quad	0x3fead350092ccf6c              # double 0.83829500000000001
	.quad	0x3f9e8427418d690a              # double 0.029801000000000001
	.quad	0x3febb76709fa54c5              # double 0.86613799999999996
	.quad	0x3fe7f7a919695d92              # double 0.74898200000000004
	.quad	0x3fe44d013a92a305              # double 0.63439999999999996
	.quad	0x3fdba2df9378ee28              # double 0.43181599999999998
	.quad	0x3fc57ced916872b0              # double 0.167875
	.quad	0x3fbdddc1e7967caf              # double 0.116665
	.quad	0x3fd35f41aef6f8f0              # double 0.30268899999999999
	.quad	0x3fd2119ce075f6fd              # double 0.28232499999999999
	.quad	0x3fdb4d22c881e471              # double 0.42658299999999999
	.quad	0x3fe1267a52ac753e              # double 0.53594699999999995
	.quad	0x3fd8d8cb07d0aeda              # double 0.38823200000000002
	.quad	0x3fe71682f944241c              # double 0.72149799999999997
	.quad	0x3fed308dd1e53a82              # double 0.91217700000000002
	.quad	0x3fe9ee06d938151a              # double 0.81030599999999997
	.quad	0x3fd1bfa8f7db6e50              # double 0.27732299999999999
	.quad	0x3fdea85015c20924              # double 0.47902299999999998
	.quad	0x3fc9a8a3f8982cb2              # double 0.200459
	.quad	0x3fe7ea2f48c2e771              # double 0.74733700000000003
	.quad	0x3fa662dc6e2a8006              # double 0.043722999999999998
	.quad	0x3fe60bc7b45f17be              # double 0.68893800000000005
	.quad	0x3fc7109070fbeb9e              # double 0.18019299999999999
	.quad	0x3fe9a606fac6045c              # double 0.80151700000000003
	.quad	0x3fe919f5dfeb8d82              # double 0.78441899999999998
	.quad	0x3fef8d4dc65c7043              # double 0.98599899999999995
	.quad	0x3fec90b1feeb2d0a              # double 0.89266299999999998
	.quad	0x3fd38576cce5f740              # double 0.30502099999999999
	.quad	0x3fef5e6ddf00abf7              # double 0.98027699999999995
	.quad	0x3fef4a59c065b63d              # double 0.97782599999999997
	.quad	0x3fd2bfd2e9468017              # double 0.292958
	.quad	0x3fe88893b7d84902              # double 0.76667200000000002
	.quad	0x3fdd119ce075f6fd              # double 0.45419999999999999
	.quad	0x3fe6b70ac3a860dd              # double 0.70984400000000003
	.quad	0x3fd0fcdee34fc611              # double 0.265434
	.quad	0x3fdca2ec28b2a6b1              # double 0.44744400000000001
	.quad	0x3fe5ecf41f212d77              # double 0.68517499999999998
	.quad	0x3fe93358f2e05ccd              # double 0.78751800000000005
	.quad	0x3fe2ec4c5974e65c              # double 0.59134500000000001
	.quad	0x3fef2fb19e731d2e              # double 0.97457199999999999
	.quad	0x3fe3779420b3d4ae              # double 0.60834699999999997
	.quad	0x3fd90b524399b2c4              # double 0.391316
	.quad	0x3fe07d5cb790fb65              # double 0.51530299999999996
	.quad	0x3fd38b0d0edc3bd6              # double 0.30536200000000002
	.quad	0x3fe117635e74299e              # double 0.53410500000000005
	.quad	0x3fd87af640639d5e              # double 0.38250499999999998
	.quad	0x3fee064883fd5022              # double 0.93826699999999996
	.quad	0x3fc4b6f19934efcc              # double 0.161833
	.quad	0x3fd4be48a58b3f64              # double 0.32411400000000001
	.quad	0x3fd744e93e1c9b41              # double 0.36358099999999999
	.quad	0x3fc4497fa5d28d00              # double 0.15849299999999999
	.quad	0x3fe24093d9663843              # double 0.57038299999999997
	.quad	0x3fdda27ae9ab29e5              # double 0.46304200000000001
	.quad	0x3fdcc9ff92f2b66b              # double 0.44982899999999998
	.quad	0x3feef2de43ed959a              # double 0.96714699999999998
	.quad	0x3fdf8d434a01abd2              # double 0.49299700000000002
	.quad	0x3fe34c89b0ee49f5              # double 0.60309299999999999
	.quad	0x3febc790b8498809              # double 0.86811099999999997
	.quad	0x3fc4d0678c0053e3              # double 0.16261
	.quad	0x3fab64e054690de1              # double 0.053504000000000003
	.quad	0x3fe0146a1a500d5f              # double 0.50249200000000005
	.quad	0x3fea94573a797892              # double 0.83060800000000001
	.quad	0x3fd1046c764adff8              # double 0.26589499999999999
	.quad	0x3fe6149e8815e397              # double 0.69001699999999999
	.quad	0x3fe43586ca89fc6e              # double 0.63153400000000004
	.quad	0x3fecc3dccea28fe2              # double 0.89890899999999996
	.quad	0x3fd4e9d51b4fe79f              # double 0.32677200000000001
	.quad	0x3fd35a74c09c3ce2              # double 0.302396
	.quad	0x3fe261b6d43d0397              # double 0.57442800000000005
	.quad	0x3feb8305d95dd4c7              # double 0.85974399999999995
	.quad	0x3fec3d6e8af81627              # double 0.88249900000000003
	.quad	0x3fdbb107746887a9              # double 0.43268000000000001
	.quad	0x3fec056c508b32cf              # double 0.87566200000000005
	.quad	0x3fe035b0bbf50e34              # double 0.50655399999999995
	.quad	0x3fab2830a0b1bbcf              # double 0.053040999999999998
	.quad	0x3fe5ccab3edd8b61              # double 0.68123400000000001
	.quad	0x3fe1436113404ea5              # double 0.53947500000000004
	.quad	0x3fd0496ededaec4a              # double 0.25448199999999999
	.quad	0x3fdef7caa7589efe              # double 0.48387400000000003
	.quad	0x3fdab191dde37586              # double 0.41708800000000001
	.quad	0x3fe78956c0d6f545              # double 0.73551500000000003
	.quad	0x3fc645dc8323358f              # double 0.174007
	.quad	0x3fe4c35696e58a33              # double 0.64884500000000001
	.quad	0x3feff83382e44b6f              # double 0.99904800000000004
	.quad	0x3fba8f6cefed6345              # double 0.103751
	.quad	0x3fcf83c6c97d8cf4              # double 0.24620900000000001
	.quad	0x3feb52d01c0ca601              # double 0.85385900000000003
	.quad	0x3fe0061847f56217              # double 0.50074399999999997
	.quad	0x3fe8e9d7342edbb6              # double 0.77854500000000004
	.quad	0x3fe588a265f0f5a1              # double 0.672929
	.quad	0x3fd59ebe9c886163              # double 0.337814
	.quad	0x3fec02afdda8bd23              # double 0.87532799999999999
	.quad	0x3fe943f1c75818c6              # double 0.78954400000000002
	.quad	0x3fbfe132b55ef1fe              # double 0.12453
	.quad	0x3f9a0d77b7c7820a              # double 0.025441999999999999
	.quad	0x3fed1882adc4c9c9              # double 0.90924199999999999
	.quad	0x3fc8707e175d13d7              # double 0.19093299999999999
	.quad	0x3fc318c197e56473              # double 0.14919299999999999
	.quad	0x3fa1b8aa00192a73              # double 0.034611999999999997
	.quad	0x3fcb077ccc037931              # double 0.21116599999999999
	.quad	0x3fd8156e264e4862              # double 0.37630799999999998
	.quad	0x3feef9aae6c8f755              # double 0.96797699999999997
	.quad	0x3fed2ca148ba83f5              # double 0.91169800000000001
	.quad	0x3fe2b58d1526d8b2              # double 0.58466200000000002
	.quad	0x3fa80fdc1615ebfb              # double 0.046996000000000003
	.quad	0x3fdc8123810e8859              # double 0.445382
	.quad	0x3fe9ca8198f1d3ed              # double 0.80596999999999996
	.quad	0x3fdde46cfc829cfe              # double 0.46706700000000001
	.quad	0x3feb267839cd8128              # double 0.84844600000000003
	.quad	0x3fea2fee6fb4c3c2              # double 0.81835100000000005
	.quad	0x3fb53bafd976ff3b              # double 0.082942000000000002
	.quad	0x3fd2dc8fb86f47b6              # double 0.29471199999999997
	.quad	0x3fedfa89331a08c0              # double 0.93683300000000002
	.quad	0x3fce02645e4e69f0              # double 0.23444799999999999
	.quad	0x3fe8f3775b813016              # double 0.77971999999999997
	.quad	0x3fdb16b54e2b063e              # double 0.423261
	.quad	0x3fd3c9ff92f2b66b              # double 0.30920399999999998
	.quad	0x3fe9985271bcdbbe              # double 0.799844
	.quad	0x3fe7aef6f8f04146              # double 0.74010799999999999
	.quad	0x3fedf7403dddb121              # double 0.93643200000000004
	.quad	0x3fe97ad8e4324420              # double 0.796246
	.quad	0x3fe5c7e28240b780              # double 0.68064999999999998
	.quad	0x3fecdef8487b99d4              # double 0.90221799999999996
	.quad	0x3fc2240b780346dc              # double 0.14172499999999999
	.quad	0x3fd158298cc14403              # double 0.27100600000000002
	.quad	0x3fe98aa21a719b4e              # double 0.79817300000000002
	.quad	0x3fde087ca643cc08              # double 0.46926800000000002
	.quad	0x3fe57fbacb428912              # double 0.67184200000000005
	.quad	0x3fd5a57646ae3a3b              # double 0.33822400000000002
	.quad	0x3fe3887a8d64d7f1              # double 0.61041000000000001
	.quad	0x3fe70869c66d373b              # double 0.719777
	.quad	0x3fec0ce2d1f1cfbc              # double 0.87657300000000004
	.quad	0x3fda1fd9ba1b1961              # double 0.408194
	.quad	0x3fd4214ad362e903              # double 0.31453199999999998
	.quad	0x3fe15095af294dd7              # double 0.54108699999999998
	.quad	0x3fb6ba3875925354              # double 0.088778999999999997
	.quad	0x3fe1ddfa871a3b15              # double 0.55834700000000004
	.quad	0x3fed176ddaceee0f              # double 0.90910999999999997
	.quad	0x3fe189c5e6ff7dfa              # double 0.548068
	.quad	0x3fe41131ec0b5675              # double 0.62709899999999996
	.quad	0x3fe673dc054ef45a              # double 0.70164300000000002
	.quad	0x3fb2cdc011d3671b              # double 0.073452000000000003
	.quad	0x3fd19d6adf71eaff              # double 0.27523300000000001
	.quad	0x3fd254eb13dfb0d5              # double 0.28643299999999999
	.quad	0x3fe7c6de76427c7c              # double 0.74302599999999996
	.quad	0x3fd662f9ca5bd945              # double 0.34979100000000002
	.quad	0x3fe9bd4f15e7c8d2              # double 0.80435900000000005
	.quad	0x3fc0cf7446f9b995              # double 0.131331
	.quad	0x3fec78487b99d452              # double 0.889683
	.quad	0x3fe5e5753a3ec02f              # double 0.68425999999999998
	.quad	0x3fea31704ff4341a              # double 0.81853500000000001
	.quad	0x3fce0b8066c2acb8              # double 0.23472599999999999
	.quad	0x3fba5e4606748e47              # double 0.103001
	.quad	0x3fe485f06f694467              # double 0.64134999999999998
	.quad	0x3fb73892ee84ad79              # double 0.090706999999999996
	.quad	0x3fae4fb97bb73083              # double 0.059201999999999998
	.quad	0x3fc9c2d27807789a              # double 0.20125799999999999
	.quad	0x3febc3bb40b34e77              # double 0.86764300000000005
	.quad	0x3f9446b69db65ecc              # double 0.019800999999999999
	.quad	0x3fe50e27e0ef9980              # double 0.65797799999999995
	.quad	0x3fdcce8d972cd7cf              # double 0.45010699999999998
	.quad	0x3fc20a6b93ccd0ff              # double 0.14094300000000001
	.quad	0x3fc0f826edaa92e6              # double 0.132573
	.quad	0x3fe60a7610279570              # double 0.68877699999999997
	.quad	0x3fdb512a94ff0026              # double 0.42682900000000001
	.quad	0x3fd7503b81b64e05              # double 0.36427199999999998
	.quad	0x3fd31a500d5e8d54              # double 0.298481
	.quad	0x3fd1916440f23897              # double 0.27449899999999999
	.quad	0x3febb621fafc8b00              # double 0.86598299999999995
	.quad	0x3fdc1cb46bacf744              # double 0.43925199999999998
	.quad	0x3fd9502ababead4f              # double 0.39551799999999998
	.quad	0x3fe537c7820a30db              # double 0.66305899999999995
	.quad	0x3febe2bf11f926c8              # double 0.87142900000000001
	.quad	0x3fd6fab10ba62670              # double 0.35905100000000001
	.quad	0x3f95a294141e9af6              # double 0.021128000000000001
	.quad	0x3feba5d8d79d0a67              # double 0.86399499999999996
	.quad	0x3fe731055b899392              # double 0.72473399999999999
	.quad	0x3fb0064a9cdc4439              # double 0.062595999999999999
	.quad	0x3fecd7bc7f77af64              # double 0.90133499999999999
	.quad	0x3feb4679cc74b839              # double 0.85235300000000003
	.quad	0x3fef1edbf8b9baa1              # double 0.97251699999999996
	.quad	0x3fd7bb1af3a14cec              # double 0.37079499999999999
	.quad	0x3fd765b63d3e4ef0              # double 0.36558299999999999
	.quad	0x3fe8101b003686a5              # double 0.75196600000000002
	.quad	0x3fe1d28ae74f2f12              # double 0.55695099999999997
	.quad	0x3fd6e1a8262456f7              # double 0.35752299999999998
	.quad	0x3fc7a9003eea209b              # double 0.18484500000000001
	.quad	0x3fdfdbc23315d702              # double 0.49778800000000001
	.quad	0x3fdd269df97aaac1              # double 0.455482
	.quad	0x3fef2cd7cf5f4e44              # double 0.97422399999999997
	.quad	0x3fc5d4f9c1f85d74              # double 0.17056199999999999
	.quad	0x3fc832fcac8e68e4              # double 0.189056
	.quad	0x3fd3a172abef06b3              # double 0.30672899999999997
	.quad	0x3fe79df1172ef0ae              # double 0.73802999999999996
	.quad	0x3fe98b545c78a6db              # double 0.79825800000000002
	.quad	0x3fb5ebe9c886162f              # double 0.085630999999999999
	.quad	0x3fedf9591cd1c7de              # double 0.93668799999999997
	.quad	0x3fdb660e51d25aab              # double 0.42810399999999998
	.quad	0x3febbbafd976ff3b              # double 0.86666100000000001
	.quad	0x3fe63d4ae429e0a4              # double 0.69498199999999999
	.quad	0x3fd2399f5dfeb8d8              # double 0.28476699999999999
	.quad	0x3fd508893b7d8490              # double 0.32864599999999999
	.quad	0x3fe39dd1a21ea359              # double 0.61301499999999998
	.quad	0x3fd6afc04c8bc9cd              # double 0.35447699999999999
	.quad	0x3fa9ab8e8ea39c52              # double 0.050137000000000001
	.quad	0x3fe3a27ae9ab29e5              # double 0.61358400000000002
	.quad	0x3fd99235f8099179              # double 0.39954899999999999
	.quad	0x3fee3649d388a8b1              # double 0.94412700000000005
	.quad	0x3fd106a2b1704ff4              # double 0.26602999999999999
	.quad	0x3fb0a2fcefaa4767              # double 0.064987000000000003
	.quad	0x3f885510d38cda6e              # double 0.011880999999999999
	.quad	0x3fc18a86d71f3626              # double 0.13704
	.quad	0x3fc92b884406c00e              # double 0.19664100000000001
	.quad	0x3fe31b9b66f9335d              # double 0.59711999999999998
	.quad	0x3fe2ff865d7cb2d9              # double 0.593692
	.quad	0x3fe430856e696a27              # double 0.63092300000000001
	.quad	0x3fe620c8cd63cb81              # double 0.69150199999999995
	.quad	0x3fee875b3e1437c5              # double 0.95402299999999995
	.quad	0x3fe2c44178705426              # double 0.58645700000000001
	.quad	0x3fe7a6fc58ab92c0              # double 0.73913399999999996
	.quad	0x3fae7f4dbdf8f473              # double 0.059565
	.quad	0x3fe0d72de43ed95a              # double 0.52626700000000004
	.quad	0x3fa6fe718a86d71f              # double 0.044909999999999999
	.quad	0x3fa51e53a81dc0db              # double 0.041246999999999999
	.quad	0x3fead821294573a8              # double 0.83888300000000005
	.quad	0x3fe34061847f5621              # double 0.60160899999999995
	.quad	0x3fd56c7219220ff5              # double 0.33474399999999999
	.quad	0x3fdf726d04e618ce              # double 0.49135899999999999
	.quad	0x3fc56d22424a276b              # double 0.16739299999999999
	.quad	0x3fae6afcce1c5825              # double 0.059409999999999998
	.quad	0x3fe22eff5c6c11a1              # double 0.56823699999999999
	.quad	0x3fe77a4c61d8622c              # double 0.73367899999999997
	.quad	0x3fe177963992c8c5              # double 0.545848
	.quad	0x3fd2d141a6937d20              # double 0.29402200000000001
	.quad	0x3fed72ffd1dcd706              # double 0.92028799999999999
	.quad	0x3fdca6dacabc5155              # double 0.44768400000000003
	.quad	0x3fc9d4f15e7c8d19              # double 0.20181099999999999
	.quad	0x3fe7fcd035371972              # double 0.74961100000000003
	.quad	0x3fd1584f4c6e6d9c              # double 0.27101500000000001
	.quad	0x3feba5aab4741073              # double 0.86397299999999999
	.quad	0x3fcc5a57646ae3a4              # double 0.22150700000000001
	.quad	0x3feff7a919695d92              # double 0.99898200000000004
	.quad	0x3fd01fcd24e160d9              # double 0.25194100000000003
	.quad	0x3fac5479d4d83409              # double 0.055331999999999999
	.quad	0x3fe9eaca79357604              # double 0.80991100000000004
	.quad	0x3fb2e09fe86833c6              # double 0.07374
	.quad	0x3fb71feeb2d0a244              # double 0.090330999999999995
	.quad	0x3fd38333fc86cebc              # double 0.30488300000000002
	.quad	0x3fe79b8aa00192a7              # double 0.73773699999999998
	.quad	0x3fc8d106ee30caa3              # double 0.193879
	.quad	0x3fd79f72f76e6107              # double 0.36910700000000002
	.quad	0x3fe5d3e707e175d1              # double 0.68211699999999997
	.quad	0x3fd534e3369b9d80              # double 0.33135300000000001
	.quad	0x3fd03ba3443d46b2              # double 0.25363999999999998
	.quad	0x3fed054477ff151e              # double 0.90689299999999995
	.quad	0x3fd07c80841ede12              # double 0.25759900000000002
	.quad	0x3feb8a3d70a3d70a              # double 0.86062499999999997
	.quad	0x3fdaa89b951c5c57              # double 0.41654099999999999
	.quad	0x3fc324399b2c40d1              # double 0.14954300000000001
	.quad	0x3fcde108c3f3e037              # double 0.23343
	.quad	0x3fe8c7ae147ae148              # double 0.77437500000000004
	.quad	0x3fd477574f722e1b              # double 0.31978400000000001
	.quad	0x3fb9cbff47735c18              # double 0.100769
	.quad	0x3fefbc0e38a7e73a              # double 0.99170599999999998
	.quad	0x3fdb880d801b4352              # double 0.43017899999999998
	.quad	0x3fea5a0dfdef8488              # double 0.82349300000000003
	.quad	0x3fbcf28c79f66623              # double 0.113076
	.quad	0x3fd3cd423d9231c6              # double 0.30940299999999998
	.quad	0x3fe50fb224aada34              # double 0.65816600000000003
	.quad	0x3fe205532617c1be              # double 0.56315000000000004
	.quad	0x3fe9bc621b7e0ac8              # double 0.80424600000000002
	.quad	0x3fdc034f3fd933e3              # double 0.43770199999999998
	.quad	0x3fad466f5019f3c7              # double 0.057178
	.quad	0x3fd979f23465625a              # double 0.39806799999999998
	.quad	0x3fb3c200c0f01fb8              # double 0.077178999999999998
	.quad	0x3fbe708ede54b48d              # double 0.118905
	.quad	0x3fc25c78a6dacabc              # double 0.14344699999999999
	.quad	0x3fe844f7ec3547e0              # double 0.75841899999999995
	.quad	0x3fed2d7d7c2ca149              # double 0.91180300000000003
	.quad	0x3fb7faa044ae85ba              # double 0.093668000000000001
	.quad	0x3fc4cebbba55d1c4              # double 0.16255900000000001
	.quad	0x3fe2505f28848388              # double 0.57231100000000001
	.quad	0x3fb08e4755ffe6d6              # double 0.064671000000000006
	.quad	0x3fe7cf227d028a1e              # double 0.744035
	.quad	0x3fe5b30728e92d56              # double 0.67810400000000004
	.quad	0x3fea4bea4ebdd335              # double 0.82176700000000003
	.quad	0x3fd73b5393250b52              # double 0.36299599999999999
	.quad	0x3fee88b545c78a6e              # double 0.95418800000000004
	.quad	0x3fe6b636f3b213e4              # double 0.70974300000000001
	.quad	0x3fda9ae0c1765775              # double 0.41570299999999999
	.quad	0x3fc261f9f01b866e              # double 0.14361499999999999
	.quad	0x3fdfe11dbca9691a              # double 0.49811499999999997
	.quad	0x3fec3fe7e1fc08fa              # double 0.88280099999999995
	.quad	0x3fe162a80064a9ce              # double 0.54329300000000003
	.quad	0x3fb0b4395810624e              # double 0.065250000000000002
	.quad	0x3feb65d3996fa82f              # double 0.85618000000000005
	.quad	0x3fe54282c6ef3d3a              # double 0.66436899999999999
	.quad	0x3fd8c38b04ab606b              # double 0.38693499999999997
	.quad	0x3fe6964a59c065b6              # double 0.70584599999999997
	.quad	0x3fec486ad2dcb146              # double 0.88383999999999996
	.quad	0x3fd2c70435efa616              # double 0.29339700000000002
	.quad	0x3fba9e4d5d80e497              # double 0.103978
	.quad	0x3fe90476f2a5a46a              # double 0.78179500000000002
	.quad	0x3fd8b328b6d86ec1              # double 0.38593499999999997
	.quad	0x3fbff13059641f64              # double 0.124774
	.quad	0x3fe18cd423d9231c              # double 0.54844099999999996
	.quad	0x3fe88637bd05af6c              # double 0.76638399999999995
	.quad	0x3fe1dd65a14488c6              # double 0.55827599999999999
	.quad	0x3fe357082491afc0              # double 0.60437399999999997
	.quad	0x3fdc0ca1cef240fb              # double 0.43827100000000002
	.quad	0x3fd0147ae147ae14              # double 0.25124999999999997
	.quad	0x3fd91ee675147f13              # double 0.392511
	.quad	0x3fc09d5a187a4a49              # double 0.129802
	.quad	0x3fd223358f2e05cd              # double 0.28339900000000001
	.quad	0x3fb93a92a3055326              # double 0.098549999999999998
	.quad	0x3fbcb945308bb906              # double 0.112202
	.quad	0x3fe1a0c8cd63cb81              # double 0.55087699999999995
	.quad	0x3fca9bcfd4bf0996              # double 0.20788000000000001
	.quad	0x3fee8afe60c38f36              # double 0.95446699999999995
	.quad	0x3fd6151611ba3ca7              # double 0.34503699999999998
	.quad	0x3fec2aae297396d1              # double 0.88021000000000005
	.quad	0x3fcd379fa97e132b              # double 0.22825999999999999
	.quad	0x3fefb5f1bef49cf5              # double 0.99095999999999995
	.quad	0x3fea1bf37b8d3f18              # double 0.81591199999999997
	.quad	0x3fd3fe8ab4fa4830              # double 0.31241099999999999
	.quad	0x3fee99ac79702e66              # double 0.95625899999999997
	.quad	0x3fef077ab324851b              # double 0.96966300000000005
	.quad	0x3fe3e5668c261390              # double 0.621753
	.quad	0x3feedf06f6944674              # double 0.96472500000000005
	.quad	0x3febf67903211cb0              # double 0.87383699999999997
	.quad	0x3fe7cf850df15a4b              # double 0.74408200000000002
	.quad	0x3fe8070da5daf07c              # double 0.750861
	.quad	0x3fe247cfa26a22b4              # double 0.57126600000000005
	.quad	0x3fcf02c4d65e4606              # double 0.24227199999999999
	.quad	0x3fd800eae18ac9f3              # double 0.375056
	.quad	0x3fe2fe004b7f5a53              # double 0.59350599999999998
	.quad	0x3feee75ff609dcf9              # double 0.96574400000000004
	.quad	0x3fd89068986fcdee              # double 0.38381399999999999
	.quad	0x3fecb1b36bd2b6f2              # double 0.89669200000000004
	.quad	0x3f9e2541d8e86402              # double 0.029439
	.quad	0x3fee314a90470a81              # double 0.94351700000000005
	.quad	0x3fda5515054ac29c              # double 0.411443
	.quad	0x3fe74fbfc6540cc8              # double 0.72848500000000005
	.quad	0x3fec43632c1f42bb              # double 0.88322599999999996
	.quad	0x3fc557b41bfbdf09              # double 0.166739
	.quad	0x3fe28fe260b2c83f              # double 0.58006400000000002
	.quad	0x3fd3163779e9d0ea              # double 0.29823100000000002
	.quad	0x3fcc7e9531550ca2              # double 0.22261300000000001
	.quad	0x3fdf8655193708ab              # double 0.49257400000000001
	.quad	0x3fecf82b1f687b14              # double 0.90529400000000004
	.quad	0x3fe3da7b0b391926              # double 0.62041999999999997
	.quad	0x3fefadf505d0fa59              # double 0.989985
	.quad	0x3fe65a6e75ff609e              # double 0.69853900000000002
	.quad	0x3fe6cb599aa60914              # double 0.71232300000000004
	.quad	0x3fe8de97d06bbdbe              # double 0.77717199999999997
	.quad	0x3fe4cb4070329803              # double 0.64981100000000003
	.quad	0x3fd224e9c4545847              # double 0.283503
	.quad	0x3fde5109070fbeba              # double 0.47369600000000001
	.quad	0x3fdf3fc43b2dd378              # double 0.48826700000000001
	.quad	0x3fd1430f49491f2e              # double 0.26971800000000001
	.quad	0x3fcdb34a44c7b02d              # double 0.23203399999999999
	.quad	0x3feac6a5d6bebe16              # double 0.83674899999999997
	.quad	0x3fb367f4dbdf8f47              # double 0.075804999999999997
	.quad	0x3fcf0203e63e8dda              # double 0.24224899999999999
	.quad	0x3fe3b178b3700475              # double 0.61541400000000002
	.quad	0x3fe6cccab3edd8b6              # double 0.71249899999999999
	.quad	0x3fdd225b749adc90              # double 0.45522200000000002
	.quad	0x3f9445aa2e3c536d              # double 0.019796999999999999
	.quad	0x3fe75ef8487b99d4              # double 0.73034299999999996
	.quad	0x3f924638c9752978              # double 0.017846000000000001
	.quad	0x3fe5f262888b545c              # double 0.68583799999999995
	.quad	0x3fd94f4c6e6d9be5              # double 0.39546500000000001
	.quad	0x3fef45803cd141a7              # double 0.97723400000000004
	.quad	0x3fd660807357e671              # double 0.34964000000000001
	.quad	0x3fe4737110e453d2              # double 0.63909199999999999
	.quad	0x3fe61888f861a60d              # double 0.69049499999999997
	.quad	0x3fe59715c63ae254              # double 0.67469299999999999
	.quad	0x3fe66a832b990afe              # double 0.70050199999999996
	.quad	0x3fe8fe111276fb09              # double 0.78101399999999999
	.quad	0x3fcbdc725c3dee78              # double 0.217665
	.quad	0x3fc75703f2d3c793              # double 0.18234300000000001
	.quad	0x3fe9ed80a17b0f6b              # double 0.81024200000000002
	.quad	0x3fc7eb074a771c97              # double 0.18686
	.quad	0x3fccc12ad81adea9              # double 0.22464500000000001
	.quad	0x3fd5e99a62ed3522              # double 0.34238299999999999
	.quad	0x3fefcdee34fc610f              # double 0.99388799999999999
	.quad	0x3fcbd0aed99cbee8              # double 0.217306
	.quad	0x3fe385a921ccd962              # double 0.610066
	.quad	0x3fc71372a38b8ae3              # double 0.180281
	.quad	0x3fbc83ec892ab68d              # double 0.111388
	.quad	0x3fec6a7ef9db22d1              # double 0.88800000000000001
	.quad	0x3fe6c71b47842310              # double 0.71180500000000002
	.quad	0x3fdb9fcf3dc054ef              # double 0.43162899999999998
	.quad	0x3fd795bbbe878fac              # double 0.36851400000000001
	.quad	0x3feb6364bec679cc              # double 0.85588299999999994
	.quad	0x3fccf32bdc26dce4              # double 0.22617100000000001
	.quad	0x3fde2849cb252ce0              # double 0.47120899999999999
	.quad	0x3f9e8533b1077469              # double 0.029805000000000002
	.quad	0x3fe5af8bdec5f395              # double 0.67767900000000003
	.quad	0x3feb993b3a68b19a              # double 0.86245499999999997
	.quad	0x3fd0222d5171e29b              # double 0.25208599999999998
	.quad	0x3fe9e0b0af5fd47c              # double 0.808678
	.quad	0x3fd1ddb9841aac54              # double 0.27915800000000002
	.quad	0x3fc2a24463065f96              # double 0.14557700000000001
	.quad	0x3fb0f227d028a1e0              # double 0.066195000000000004
	.quad	0x3fe1206a6e32e382              # double 0.53520699999999999
	.quad	0x3fd04c33b5393251              # double 0.25465100000000002
	.quad	0x3fde8f4b61fe21d9              # double 0.47749599999999998
	.quad	0x3fc09835158b8280              # double 0.12964500000000001
	.quad	0x3fcbd6494d50ebab              # double 0.217477
	.quad	0x3feaec050bd87b57              # double 0.84131100000000003
	.quad	0x3feaada122fad6cb              # double 0.83369499999999996
	.quad	0x3fec4aec8d5c7475              # double 0.88414599999999999
	.quad	0x3fe0851c9f72f76e              # double 0.51624899999999996
	.quad	0x3fe734f3fd933e36              # double 0.72521400000000003
	.quad	0x3fc016d6dc1a47aa              # double 0.125697
	.quad	0x3fe307e38eb0318c              # double 0.59471300000000005
	.quad	0x3fca4cdfaca36199              # double 0.20547099999999999
	.quad	0x3fa87bdcf0307f24              # double 0.047820000000000001
	.quad	0x3fda5f56a7ac81d4              # double 0.41206900000000002
	.quad	0x3f9075b3e1437c57              # double 0.016074000000000001
	.quad	0x3feaa5d8d79d0a67              # double 0.83274499999999996
	.quad	0x3fc7e4a38327674d              # double 0.186665
	.quad	0x3fd2cf7caa7589f0              # double 0.29391400000000001
	.quad	0x3fd5fa22706d5065              # double 0.34339199999999998
	.quad	0x3fb972bcb5fe542e              # double 0.099406999999999995
	.quad	0x3fd65ce9e5e24788              # double 0.34942099999999998
	.quad	0x3fd368e820e62995              # double 0.30327799999999999
	.quad	0x3fe785c4651f3e8a              # double 0.73507900000000004
	.quad	0x3fe159c8c9320d99              # double 0.54220999999999997
	.quad	0x3fcfcc20d5629d84              # double 0.248417
	.quad	0x3fa2cde19fc2a887              # double 0.036727000000000003
	.quad	0x3fd21fe64f54d1e9              # double 0.28319699999999998
	.quad	0x3fd936a400fba882              # double 0.39395999999999998
	.quad	0x3fe525a469d7342f              # double 0.66084500000000002
	.quad	0x3fba90364388ebcc              # double 0.10376299999999999
	.quad	0x3fdf00b45ae5ffa4              # double 0.48441800000000002
	.quad	0x3fe3bde1e2de8709              # double 0.61692899999999995
	.quad	0x3fc2a5ce5b4245f6              # double 0.14568500000000001
	.quad	0x3fdca58f7121ab4b              # double 0.44760499999999998
	.quad	0x3fbb39085f4a1273              # double 0.106339
	.quad	0x3fdb6e115592d98c              # double 0.428593
	.quad	0x3fd59884c6a3bde0              # double 0.33743400000000001
	.quad	0x3fdc37b07075b3e1              # double 0.44089899999999999
	.quad	0x3fcf634549b62c77              # double 0.24521699999999999
	.quad	0x3fd78e4fb97bb731              # double 0.36806100000000003
	.quad	0x3fd15e13b18dac26              # double 0.27136700000000002
	.quad	0x3fb2c2efd438d1d9              # double 0.073287000000000005
	.quad	0x3fe7a8fc0d2c386d              # double 0.73937799999999998
	.quad	0x3fe1f6640a6b93cd              # double 0.56132700000000002
	.quad	0x3f801d9f4d37c137              # double 0.0078689999999999992
	.quad	0x3fdb5350092ccf6c              # double 0.42696000000000001
	.quad	0x3fa99d2391d57ffa              # double 0.050027000000000002
	.quad	0x3fe910f0e90bc7b4              # double 0.78331799999999995
	.quad	0x3fddad8e432441ff              # double 0.46371800000000002
	.quad	0x3fd573f316e37154              # double 0.335202
	.quad	0x3fef270f3882278d              # double 0.97351799999999999
	.quad	0x3fd4ffe6d58c8eef              # double 0.32811899999999999
	.quad	0x3fc756b873797460              # double 0.182334
	.quad	0x3fe2c1bda5119ce0              # double 0.58614999999999995
	.quad	0x3fe31945b6c3760c              # double 0.596835
	.quad	0x3fdd5e99e94ab1d5              # double 0.458899
	.quad	0x3fe46e08f2170931              # double 0.638432
	.quad	0x3fea2af9a8cdea03              # double 0.81774599999999997
	.quad	0x3fe1ea22b3892ee8              # double 0.55983099999999997
	.quad	0x3febfa9e2bcf91a3              # double 0.87434299999999998
	.quad	0x3fec86162f166e01              # double 0.89136800000000005
	.quad	0x3fe3dc3dee781840              # double 0.62063500000000005
	.quad	0x3feb2e48e8a71de7              # double 0.84940000000000004
	.quad	0x3fe3cbee807bbb62              # double 0.61864399999999997
	.quad	0x3fe95fd8adab9f56              # double 0.79295000000000004
	.quad	0x3fe71a7c17a89332              # double 0.72198300000000004
	.quad	0x3fe6de050374ff86              # double 0.71460199999999996
	.quad	0x3fa7e931876188b1              # double 0.046700999999999999
	.quad	0x3fc5d71b0468448d              # double 0.170627
	.quad	0x3fe7532e7b3d8e00              # double 0.728904
	.quad	0x3fd56c1e364bec68              # double 0.33472400000000002
	.quad	0x3fdce2ef4e0114d3              # double 0.451351
	.quad	0x3fc0e379b77c02b0              # double 0.131942
	.quad	0x3fd47496aad1d042              # double 0.31961600000000001
	.quad	0x3fd4ad70e6f2e8c0              # double 0.32308599999999998
	.quad	0x3fdc53d640e9d51b              # double 0.44261699999999998
	.quad	0x3fee0e736049ecb3              # double 0.93926399999999999
	.quad	0x3fd885ec3dab5c3a              # double 0.38317400000000001
	.quad	0x3fe03f8b9baa1512              # double 0.50775700000000001
	.quad	0x3fe1e379b77c02b0              # double 0.55901800000000001
	.quad	0x3fc003f705857aff              # double 0.12512100000000001
	.quad	0x3fe040f66a550870              # double 0.50792999999999999
	.quad	0x3fe0c73471f79421              # double 0.52431700000000003
	.quad	0x3fed38bcdfefbf40              # double 0.91317599999999999
	.quad	0x3fd443fa2ad3e921              # double 0.31664900000000001
	.quad	0x3fd0e44b6e935b92              # double 0.263934
	.quad	0x3fdec37a3db3bfb6              # double 0.48068100000000002
	.quad	0x3fe928826aa8eb46              # double 0.78619499999999998
	.quad	0x3fe87e670e2c12ae              # double 0.76543000000000005
	.quad	0x3fcd6e47dc37a3db              # double 0.22992799999999999
	.quad	0x3f8ec4e7253da72a              # double 0.015023999999999999
	.quad	0x3fe2aca9ac365450              # double 0.58357700000000001
	.quad	0x3fc66f2e8c0485a1              # double 0.17526800000000001
	.quad	0x3fd28c32a8c9b845              # double 0.28980699999999998
	.quad	0x3fe8b6501e2584f5              # double 0.77225500000000002
	.quad	0x3fcce3c536d655e3              # double 0.22570100000000001
	.quad	0x3fdaaf5ba2be058a              # double 0.41695300000000002
	.quad	0x3fd8d8f92af9a8ce              # double 0.388243
	.quad	0x3fd1f29d40ee06d9              # double 0.28043299999999999
	.quad	0x3fdd343fa2ad3e92              # double 0.456314
	.quad	0x3f9c7d1bb4916ca4              # double 0.027820999999999999
	.quad	0x3fbfdd872f33ca32              # double 0.124474
	.quad	0x3fbd8d36b4c7f349              # double 0.115436
	.quad	0x3fbdc422036006d1              # double 0.116274
	.quad	0x3fce2a6f3f52fc26              # double 0.23566999999999999
	.quad	0x3fc644178705425f              # double 0.173953
	.quad	0x3fe35ac8a3726070              # double 0.60483200000000004
	.quad	0x3fe6c6e8f29d40ee              # double 0.711781
	.quad	0x3fd33e78e1932d6f              # double 0.30068800000000001
	.quad	0x3fe1982a9930be0e              # double 0.54982500000000001
	.quad	0x3fd28348f53c579f              # double 0.28926299999999999
	.quad	0x3fe3591cd1c7de51              # double 0.60462800000000005
	.quad	0x3fd79c8c9320d994              # double 0.36892999999999998
	.quad	0x3fdfe2b8c75c4a84              # double 0.49821300000000002
	.quad	0x3fefc422036006d1              # double 0.99269200000000001
	.quad	0x3fd0d05af6c69b5a              # double 0.26271699999999998
	.quad	0x3fe093faf42784a9              # double 0.51806399999999997
	.quad	0x3fe54d6c2efd438d              # double 0.66570099999999999
	.quad	0x3fcb5286b59146e5              # double 0.21345600000000001
	.quad	0x3fe010214ad362e9              # double 0.501969
	.quad	0x3fe5e236c15d2d02              # double 0.68386400000000003
	.quad	0x3fea0db48909289e              # double 0.81417300000000004
	.quad	0x3fd211409a240315              # double 0.28230300000000003
	.quad	0x3fe3fa9e2bcf91a3              # double 0.62434299999999998
	.quad	0x3fe5156c0d6f544c              # double 0.65886500000000003
	.quad	0x3fdc069a4df47f99              # double 0.43790299999999999
	.quad	0x3fcbd06bbdbe3c10              # double 0.21729799999999999
	.quad	0x3fe5cb1465e89225              # double 0.68103999999999998
	.quad	0x3fb7fe7e1fc08fa8              # double 0.093727000000000005
	.quad	0x3fd6c9b845564b66              # double 0.35606199999999999
	.quad	0x3fb8e65bea0ba1f5              # double 0.097265000000000004
	.quad	0x3feb4b295e9e1b09              # double 0.85292500000000004
	.quad	0x3fdf5bb384fd2a63              # double 0.48997200000000002
	.quad	0x3fe2ac1094a2b9d4              # double 0.58350400000000002
	.quad	0x3feec382a12f9011              # double 0.96136600000000005
	.quad	0x3fefed22424a276b              # double 0.99769699999999994
	.quad	0x3fe0e9984a0e410b              # double 0.52851499999999996
	.quad	0x3fde1958969a0ad9              # double 0.47029700000000002
	.quad	0x3fec13d102bc72e2              # double 0.87741899999999995
	.quad	0x3fd3790b84988095              # double 0.30426300000000001
	.quad	0x3fd22d9cf13cee9e              # double 0.28403400000000001
	.quad	0x3fdee31d712a0ec7              # double 0.48261199999999999
	.quad	0x3fee27a63736cdf2              # double 0.94233999999999996
	.quad	0x3fdf522a6f3f52fc              # double 0.48938999999999999
	.quad	0x3febef5232d2bb23              # double 0.87296399999999996
	.quad	0x3fe8d0b0f27bb2ff              # double 0.77547500000000003
	.quad	0x3fe5644d87724fa9              # double 0.66849400000000003
	.quad	0x3fd81efb6dca07f6              # double 0.37689099999999998
	.quad	0x3fc283b1d0c80410              # double 0.14464399999999999
	.quad	0x3fe820a0f4d7add1              # double 0.75398299999999996
	.quad	0x3fe66102795703f3              # double 0.69934200000000002
	.quad	0x3fc6dd3fe1975f2d              # double 0.17862700000000001
	.quad	0x3feaff3ade225fa6              # double 0.84365599999999996
	.quad	0x3fdabb7b6bb12902              # double 0.41769299999999998
	.quad	0x3fdb7b28954a7f80              # double 0.429392
	.quad	0x3fd0f2239e6ab9b2              # double 0.26477899999999999
	.quad	0x3fc613b18dac258d              # double 0.17247599999999999
	.quad	0x3fe1500713f077cd              # double 0.54101900000000003
	.quad	0x3fe2446b69db65ed              # double 0.57085200000000003
	.quad	0x3fe5112fd32c625f              # double 0.65834800000000004
	.quad	0x3fc814ad362e9036              # double 0.18813099999999999
	.quad	0x3fec66cb10342aaa              # double 0.887548
	.quad	0x3fd33f359ff4fd6d              # double 0.30073299999999997
	.quad	0x3fe92dbc664d3bf3              # double 0.786833
	.quad	0x3fea0407cc7d1bb5              # double 0.81299200000000005
	.quad	0x3fea1c9d5a187a4a              # double 0.81599299999999997
	.quad	0x3fd8df37329c347f              # double 0.38862400000000002
	.quad	0x3fa7e5eaab042529              # double 0.046676000000000002
	.quad	0x3fca653005814941              # double 0.20621300000000001
	.quad	0x3fdb93ccd0fe8ab5              # double 0.430896
	.quad	0x3fde477ff151e753              # double 0.47311399999999998
	.quad	0x3fdb3acd5b6805a3              # double 0.42546400000000001
	.quad	0x3fdd022dd7a99fa1              # double 0.45325799999999999
	.quad	0x3fe82d14a0a0f4d8              # double 0.75550300000000004
	.quad	0x3fe5097a67a52ac7              # double 0.65740699999999996
	.quad	0x3fedb5b70691ea79              # double 0.92843200000000004
	.quad	0x3fde005814940bbb              # double 0.46877099999999999
	.quad	0x3fe079207d4e0978              # double 0.51478599999999997
	.quad	0x3fc028cbd1244a62              # double 0.126245
	.quad	0x3fef7034b0e1b4bb              # double 0.98244699999999995
	.quad	0x3fee7f3cf70153bd              # double 0.95303199999999999
	.quad	0x3fe7b0fcf80dc337              # double 0.74035499999999999
	.quad	0x3fdfeb0fadf2ecf2              # double 0.498722
	.quad	0x3fa23c21187e7c07              # double 0.035615000000000001
	.quad	0x3fe844523f67f4dc              # double 0.75834000000000001
	.quad	0x3fe1c69728a61177              # double 0.55549199999999999
	.quad	0x3fdd0a4a05dd8f93              # double 0.45375300000000002
	.quad	0x3fd725e99e94ab1d              # double 0.36168899999999998
	.quad	0x3fd9e0d66f0cfe15              # double 0.40434799999999999
	.quad	0x3fe91e5e2478854d              # double 0.78495700000000002
	.quad	0x3fc8a116659d12cb              # double 0.192416
	.quad	0x3fe7af166e008e9b              # double 0.74012299999999998
	.quad	0x3fe482cf52b90a78              # double 0.64096799999999998
	.quad	0x3fdf4b5dcc63f141              # double 0.48897499999999999
	.quad	0x3feda4fa8b4bf8fd              # double 0.92638900000000002
	.quad	0x3fe959a52263d817              # double 0.79219300000000004
	.quad	0x3fb87ca643cc07ab              # double 0.095652000000000001
	.quad	0x3fdbfdf7e80389f8              # double 0.43737599999999999
	.quad	0x3fef66afcce1c582              # double 0.98128499999999996
	.quad	0x3fea6557de0d66f1              # double 0.82487100000000002
	.quad	0x3fd2b7d41743e964              # double 0.29247000000000001
	.quad	0x3fba147ae147ae14              # double 0.10187499999999999
	.quad	0x3fba908a265f0f5a              # double 0.103768
	.quad	0x3fc0c16df3f96180              # double 0.13090299999999999
	.quad	0x3fda476f2a5a469d              # double 0.41060999999999998
	.quad	0x3fd7fc504816f007              # double 0.37477500000000002
	.quad	0x3fec8535c9e6687f              # double 0.89126099999999997
	.quad	0x3fb7470eb24a6a87              # double 0.090927999999999995
	.quad	0x3fec515ce9e5e248              # double 0.88493200000000005
	.quad	0x3fedc4fe36d22425              # double 0.93029700000000004
	.quad	0x3fed1b1d92b7fe09              # double 0.90956000000000004
	.quad	0x3fca4b124d099e0e              # double 0.20541599999999999
	.quad	0x3fdbea5b530ced4e              # double 0.43617899999999998
	.quad	0x3fe063beec39799e              # double 0.51217599999999996
	.quad	0x3fe1674f2f123c43              # double 0.54386100000000004
	.quad	0x3fe6801b43526528              # double 0.70313800000000004
	.quad	0x3fdacefed634549b              # double 0.41888399999999998
	.quad	0x3febd40895d0b73d              # double 0.86963299999999999
	.quad	0x3fedf394b7b28955              # double 0.93598400000000004
	.quad	0x3fc5cff64cf8d717              # double 0.170409
	.quad	0x3fdc3a8a3f8982cb              # double 0.44107299999999999
	.quad	0x3fd1a71151611ba4              # double 0.27582200000000001
	.quad	0x3fee714983d79075              # double 0.95132899999999998
	.quad	0x3fefebd6e8af8162              # double 0.99753899999999995
	.quad	0x3fd5c94b380cb6c8              # double 0.34041100000000002
	.quad	0x3fcb7f38c5436b90              # double 0.21482000000000001
	.quad	0x3fe5d0acc0bdcad1              # double 0.68172299999999997
	.quad	0x3fce7b4e54f7a919              # double 0.23813799999999999
	.quad	0x3fdd914f483cafb4              # double 0.46199400000000002
	.quad	0x3f894af4f0d844d0              # double 0.01235
	.quad	0x3fd04c87980f55de              # double 0.25467099999999998
	.quad	0x3fcf34acaff6d331              # double 0.24379500000000001
	.quad	0x3fa3365881a15550              # double 0.037524000000000002
	.quad	0x3feeafa93af74cd3              # double 0.95894299999999998
	.quad	0x3febb99f5dfeb8d8              # double 0.86640899999999998
	.quad	0x3fbb3bfb58d1526e              # double 0.10638400000000001
	.quad	0x3fea5614df8b1572              # double 0.82300799999999996
	.quad	0x3fe3ba01eeed8905              # double 0.616456
	.quad	0x3fea49eecbfb15b5              # double 0.82152499999999995
	.quad	0x3fe31101b003686a              # double 0.59582599999999997
	.quad	0x3fd112e40852b4d9              # double 0.26677800000000002
	.quad	0x3f8ba450acc0bdcb              # double 0.013497
	.quad	0x3fca8bb0a2ca9ac3              # double 0.20738799999999999
	.quad	0x3fc255970b49e01e              # double 0.143237
	.quad	0x3fdd1a36e2eb1c43              # double 0.45472499999999999
	.quad	0x3fcc04c8bc9cd3e1              # double 0.21889600000000001
	.quad	0x3fdff81a5870da5e              # double 0.49951800000000002
	.quad	0x3fd433ebbfd71b04              # double 0.31566899999999998
	.quad	0x3fe7913a4f8726d0              # double 0.73647799999999997
	.quad	0x3fe5c7000431bde8              # double 0.68054199999999998
	.quad	0x3fef6f21f6cacd18              # double 0.98231599999999996
	.quad	0x3fdc1a8262456f76              # double 0.43911800000000001
	.quad	0x3febfe4ffc9795b3              # double 0.87479399999999996
	.quad	0x3fd5d70e6f2e8c05              # double 0.34125100000000003
	.quad	0x3fee4289118c197e              # double 0.94562199999999996
	.quad	0x3fec8f2170931013              # double 0.89247200000000004
	.quad	0x3fc829e90795f677              # double 0.188779
	.quad	0x3fe4a3e186983516              # double 0.64500500000000005
	.quad	0x3fe3275cd0bb6ed6              # double 0.59855499999999995
	.quad	0x3fef466d373affb0              # double 0.97734699999999997
	.quad	0x3fd67075b3e1437c              # double 0.35061399999999998
	.quad	0x3fd22da98676a726              # double 0.28403699999999998
	.quad	0x3fbea91d9b1b79d9              # double 0.119768
	.quad	0x3feb8d045fe11127              # double 0.86096399999999995
	.quad	0x3fb20fe47991bc56              # double 0.070555000000000007
	.quad	0x3fe2abf5515054ac              # double 0.58349099999999998
	.quad	0x3fe9fb41bfbdf091              # double 0.811921
	.quad	0x3fd41a9b8cb8e087              # double 0.31412400000000001
	.quad	0x3fd080064a9cdc44              # double 0.25781399999999999
	.quad	0x3fc73f1843c3a42f              # double 0.181613
	.quad	0x3fc05e2cdc011d36              # double 0.12787399999999999
	.quad	0x3fc553cddd6e04c0              # double 0.16661999999999999
	.quad	0x3fd9804d98394749              # double 0.39845599999999998
	.quad	0x3fe56106ab14ec20              # double 0.66809399999999997
	.quad	0x3fecaee631f8a090              # double 0.89634999999999998
	.quad	0x3fec203a322af577              # double 0.87893399999999999
	.quad	0x3fef22f6a50d6b23              # double 0.97301800000000004
	.quad	0x3fed1fb3fa6defc8              # double 0.91012000000000004
	.quad	0x3fe174a98aa8650e              # double 0.54549099999999995
	.quad	0x3fef80ae10492360              # double 0.98445800000000005
	.quad	0x3feed33b10774688              # double 0.96328499999999994
	.quad	0x3fde35f3d7d3910c              # double 0.47204299999999999
	.quad	0x3fc5fa871a3b14a9              # double 0.171708
	.quad	0x3fe8520afa2f05a7              # double 0.760015
	.quad	0x3fc5a42f1ed17c5f              # double 0.169073
	.quad	0x3fe8c54de7ea5f85              # double 0.77408500000000002
	.quad	0x3f970110a137f38c              # double 0.022464999999999999
	.quad	0x3fd8e2328f9f44d4              # double 0.38880599999999998
	.quad	0x3fed06f049a9973e              # double 0.90709700000000004
	.quad	0x3fec5e310dbf0564              # double 0.886498
	.quad	0x3fe4c99ae924f228              # double 0.64961000000000002
	.quad	0x3fe0c0d2c386d2ed              # double 0.52353799999999995
	.quad	0x3fd9656eefa1e3eb              # double 0.396816
	.quad	0x3fc3df6555c52e73              # double 0.155255
	.quad	0x3fecb87160956c0d              # double 0.89751499999999995
	.quad	0x3fed4393682730c6              # double 0.91449899999999995
	.quad	0x3fe033e5753a3ec0              # double 0.50633499999999998
	.quad	0x3fc57b634dad31fd              # double 0.167828
	.quad	0x3fd58d5c74751ce3              # double 0.33675300000000002
	.quad	0x3febedbf8b9baa15              # double 0.87277199999999999
	.quad	0x3f0eeed8904f6dfc              # double 5.8999999999999998E-5
	.quad	0x3fcacf41f212d773              # double 0.20945
	.quad	0x3fdad1aa821f2991              # double 0.419047
	.quad	0x3fc4d22c881e4713              # double 0.162664
	.quad	0x3fe5e8b5cbff4773              # double 0.68465699999999996
	.quad	0x3feca64c2f837b4a              # double 0.89529999999999998
	.quad	0x3fbfebf22c01e68a              # double 0.124694
	.quad	0x3fe167967caea748              # double 0.54389500000000002
	.quad	0x3fe5009d495182aa              # double 0.65632500000000005
	.quad	0x3fe1c806290eed03              # double 0.55566700000000002
	.quad	0x3fe83686a4ca4f44              # double 0.75665599999999999
	.quad	0x3fb56c3fc43b2dd3              # double 0.083682999999999994
	.quad	0x3fc51a5ca29845dd              # double 0.16486700000000001
	.quad	0x3feb565e4606748e              # double 0.85429299999999997
	.quad	0x3fdbe5b8561d4307              # double 0.43589600000000001
	.quad	0x3fed4c2d6a9c560c              # double 0.91554899999999994
	.quad	0x3fd0dc33721d53ce              # double 0.26344000000000001
	.quad	0x3fcbe0a41a261bf3              # double 0.21779299999999999
	.quad	0x3fd42f9873ffac1d              # double 0.31540499999999999
	.quad	0x3fd2b020c49ba5e3              # double 0.29199999999999998
	.quad	0x3fc46f826edaa92e              # double 0.15965299999999999
	.quad	0x3fe8be7f2c3009b3              # double 0.773254
	.quad	0x3fb220ff540895d1              # double 0.070816000000000004
	.quad	0x3fe5dbfad2999568              # double 0.68310300000000002
	.quad	0x3fd4ef1348b22079              # double 0.32709199999999999
	.quad	0x3fe976ad70e6f2e9              # double 0.79573700000000003
	.quad	0x3fdc64d7f0ed3d86              # double 0.44365500000000002
	.quad	0x3fe79882adc4c9c9              # double 0.73736699999999999
	.quad	0x3fe1ae3e6c4c5975              # double 0.55252000000000001
	.quad	0x3fd9781c714fce74              # double 0.39795599999999998
	.quad	0x3fddf2dc2b0ea183              # double 0.46794799999999998
	.quad	0x3fda5efa615a8deb              # double 0.412047
	.quad	0x3fe62856605ee569              # double 0.69242400000000004
	.quad	0x3feeec8d5c74751d              # double 0.96637600000000001
	.quad	0x3fe89784ec636b09              # double 0.76849599999999996
	.quad	0x3fd2612839042d8c              # double 0.28717999999999999
	.quad	0x3fe3e6b6177ea1c7              # double 0.62191300000000005
	.quad	0x3fe05eaee2003ab8              # double 0.51155799999999996
	.quad	0x3fe7cefcbd556085              # double 0.74401700000000004
	.quad	0x3f9cc92146a1a501              # double 0.028111000000000001
	.quad	0x3fc103ea704bc276              # double 0.13293199999999999
	.quad	0x3fd388f42fe82518              # double 0.30523400000000001
	.quad	0x3fed1669ced0b30b              # double 0.90898599999999996
	.quad	0x3fdd52a843808851              # double 0.45817000000000002
	.quad	0x3fdf5757d5a9eb20              # double 0.48970599999999997
	.quad	0x3fc6bc7b45f17bd9              # double 0.17762700000000001
	.quad	0x3fdf64a59c065b64              # double 0.49051800000000001
	.quad	0x3fd7b367a0f9096c              # double 0.37032500000000002
	.quad	0x3fcce47dc37a3db4              # double 0.22572300000000001
	.quad	0x3fb0c154c985f06f              # double 0.065449999999999994
	.quad	0x3fe0890d5a5b9629              # double 0.51673000000000002
	.quad	0x3fdf2bf11f926c7f              # double 0.48705700000000002
	.quad	0x3fe7589acbc8c0cf              # double 0.72956600000000005
	.quad	0x3fd05a8deb0fadf3              # double 0.255527
	.quad	0x3fc91d25aab47410              # double 0.19620199999999999
	.quad	0x3fcd176145953587              # double 0.22727600000000001
	.quad	0x3fb101083dbc2331              # double 0.066421999999999995
	.quad	0x3fddab862b27cbf7              # double 0.46359400000000001
	.quad	0x3fd6968512231833              # double 0.352937
	.quad	0x3fa9c864883fd502              # double 0.050356999999999999
	.quad	0x3fd69ecf63800219              # double 0.35344300000000001
	.quad	0x3fb72c625e99e94b              # double 0.090521000000000004
	.quad	0x3fe2ab1d4f9c1f86              # double 0.58338800000000002
	.quad	0x3fed8aed99cbee80              # double 0.92320899999999995
	.quad	0x3f9d872f33ca31e8              # double 0.028836000000000001
	.quad	0x3fe0217f4128bf3c              # double 0.50408900000000001
	.quad	0x3fd2378ee2867275              # double 0.28464099999999998
	.quad	0x3fee81754b05b7d0              # double 0.95330300000000001
	.quad	0x3fd9eb9e492bc2fc              # double 0.40500599999999998
	.quad	0x3fed7dae81882adc              # double 0.92159199999999996
	.quad	0x3fe353fe1975f2cb              # double 0.60400299999999996
	.quad	0x3fdb36d655e28aa4              # double 0.42522199999999999
	.quad	0x3fdcf1c3265add9c              # double 0.45225599999999999
	.quad	0x3fde3cea6c1a048e              # double 0.472468
	.quad	0x3fe35434a01abd1b              # double 0.60402900000000004
	.quad	0x3fe596f0068db8bb              # double 0.67467500000000002
	.quad	0x3fec5651b0ccbc06              # double 0.88553700000000002
	.quad	0x3fde00eae18ac9f3              # double 0.468806
	.quad	0x3fdb19d2391d5800              # double 0.42345100000000002
	.quad	0x3fe3ae6c8f755369              # double 0.61504199999999998
	.quad	0x3fcad71f36262cba              # double 0.20968999999999999
	.quad	0x3fc4e8427418d691              # double 0.16333800000000001
	.quad	0x3fe37a9c12f09d8c              # double 0.60871699999999995
	.quad	0x3fe330f8c64fdb0a              # double 0.59972800000000004
	.quad	0x3f8991bc55864452              # double 0.012485
	.quad	0x3fe97357e670e2c1              # double 0.79532999999999998
	.quad	0x3fe6c0d4dc65c704              # double 0.71103899999999998
	.quad	0x3fe90c436fc158fb              # double 0.78274699999999997
	.quad	0x3fe05132f87ad081              # double 0.50991200000000003
	.quad	0x3fdd9b38d60a6330              # double 0.46259899999999998
	.quad	0x3fe28b502ababead              # double 0.57950599999999997
	.quad	0x3fe1ae6644d87725              # double 0.552539
	.quad	0x3fd62c9d16fc9bc7              # double 0.34647299999999998
	.quad	0x3fee95d2d01c0ca6              # double 0.955789
	.quad	0x3fa5347a5b0ff10f              # double 0.041416000000000001
	.quad	0x3fec7f609dcf8940              # double 0.89054900000000004
	.quad	0x3fef75dfeb8d8234              # double 0.98313899999999998
	.quad	0x3fe7a8b08dd1e53b              # double 0.73934200000000005
	.quad	0x3fc24e93e1c9b414              # double 0.14302300000000001
	.quad	0x3fe5aa7589efd86b              # double 0.67705800000000005
	.quad	0x3fdac679cc74b839              # double 0.41836400000000001
	.quad	0x3fea874a771c970f              # double 0.82901499999999995
	.quad	0x3feedbfad2999568              # double 0.96435300000000001
	.quad	0x3fec7dd65a14488c              # double 0.89036099999999995
	.quad	0x3fd99e0a41a261bf              # double 0.40027099999999999
	.quad	0x3fe74a558ea7ce10              # double 0.72782400000000003
	.quad	0x3fe1876c050bd87b              # double 0.54778099999999996
	.quad	0x3fee807fed20296b              # double 0.95318599999999998
	.quad	0x3fd9983947496aad              # double 0.39991599999999999
	.quad	0x3fe3108e581cf788              # double 0.59577100000000005
	.quad	0x3fec82d38476f2a6              # double 0.89097000000000004
	.quad	0x3fe6bd1ed9dfdac7              # double 0.71058600000000005
	.quad	0x3fed2b0a6fc58ab9              # double 0.91150399999999998
	.quad	0x3fd0fec13b9f127f              # double 0.26554899999999998
	.quad	0x3feef631b584b1ab              # double 0.96755299999999999
	.quad	0x3fe05d074213a0c7              # double 0.51135600000000003
	.quad	0x3fe67ef5a964e8b8              # double 0.70299800000000001
	.quad	0x3fd9e2ef4e0114d3              # double 0.404476
	.quad	0x3f852c9d16fc9bc7              # double 0.010338999999999999
	.quad	0x3fa5c1e7967caea7              # double 0.042494999999999998
	.quad	0x3fd1ef62f9ca5bd9              # double 0.28023599999999999
	.quad	0x3f996e58a32f4491              # double 0.024834999999999999
	.quad	0x3fdaa2df9378ee28              # double 0.41619099999999998
	.quad	0x3fc6820e6299524c              # double 0.175844
	.quad	0x3fe908a265f0f5a1              # double 0.782304
	.quad	0x3fd0a2014727dcbe              # double 0.25988800000000001
	.quad	0x3fc065e892253112              # double 0.12811
	.quad	0x3fed06d938151a43              # double 0.90708599999999995
	.quad	0x3fdff9fcb0c026cc              # double 0.49963299999999999
	.quad	0x3fe109246bf01323              # double 0.53236600000000001
	.quad	0x3fede64d3bf2f556              # double 0.93436300000000005
	.quad	0x3fef7381d7dbf488              # double 0.98285
	.quad	0x3fe30053e2d6238e              # double 0.59379000000000004
	.quad	0x3fc97ea1c68ec52a              # double 0.19917699999999999
	.quad	0x3feab7d41743e964              # double 0.83494000000000001
	.quad	0x3fdbbfd71b046845              # double 0.43358400000000002
	.quad	0x3fe8799a1fd1569f              # double 0.76484399999999997
	.quad	0x3fbb1572580c3090              # double 0.105796
	.quad	0x3fe8cf15e7c8d196              # double 0.77527900000000005
	.quad	0x3fd165d7cb2d905c              # double 0.271841
	.quad	0x3fe2d64d7f0ed3d8              # double 0.58865999999999996
	.quad	0x3fd8bbb1f255f352              # double 0.38645600000000002
	.quad	0x3fe57be33acd5b68              # double 0.671373
	.quad	0x3fec88f648c7192f              # double 0.89171900000000004
	.quad	0x3f82146a1a500d5f              # double 0.0088280000000000007
	.quad	0x3fec96ce789e774f              # double 0.89340900000000001
	.quad	0x3fd0790752da9867              # double 0.25738699999999998
	.quad	0x3fe4a0f2becedd48              # double 0.64464699999999997
	.quad	0x3fe089118c197e56              # double 0.51673199999999997
	.quad	0x3fe6e90bc7b45f18              # double 0.71594800000000003
	.quad	0x3fe5cef672b88440              # double 0.68151399999999995
	.quad	0x3f557689ca18bd66              # double 0.00131
	.quad	0x3fe8f442c7fbacb4              # double 0.77981699999999998
	.quad	0x3fd2f5d78811b1d9              # double 0.29625499999999999
	.quad	0x3feaff6d330941c8              # double 0.84367999999999999
	.quad	0x3fdff572de43ed96              # double 0.49935600000000002
	.quad	0x3fef2231832fcac9              # double 0.97292400000000001
	.quad	0x3fe923ca7503b81b              # double 0.78561899999999996
	.quad	0x3fba5892684cf074              # double 0.10291400000000001
	.quad	0x3fec34b945308bb9              # double 0.881436
	.quad	0x3fe5f90b84988095              # double 0.68665100000000001
	.quad	0x3fbbe0ded288ce70              # double 0.1089
	.quad	0x3fe03ca1059ea572              # double 0.50740099999999999
	.quad	0x3feb4d834091c087              # double 0.85321199999999997
	.quad	0x3fe634c3c18b502b              # double 0.69394100000000003
	.quad	0x3fe7dc4c9c90c4df              # double 0.74564200000000003
	.quad	0x3fe011b1d92b7fe1              # double 0.50216000000000005
	.quad	0x3fe8858793dd97f6              # double 0.76629999999999998
	.quad	0x3fe258d5842b734b              # double 0.57334399999999996
	.quad	0x3fee2b4528283d36              # double 0.94278200000000001
	.quad	0x3fd979a6b50b0f28              # double 0.39805000000000001
	.quad	0x3fe5b11e85fd04a3              # double 0.677871
	.quad	0x3fec177ea1c68ec5              # double 0.87786799999999998
	.quad	0x3fd3e321a2e7f6f5              # double 0.31073800000000001
	.quad	0x3fe6d6c2efd438d2              # double 0.71371600000000002
	.quad	0x3fe5568405b39e28              # double 0.66681100000000004
	.quad	0x3fde8a65492ff4ba              # double 0.47719699999999998
	.quad	0x3fe763cb81733227              # double 0.73093200000000003
	.quad	0x3fbbb14a90470a81              # double 0.10817400000000001
	.quad	0x3fcf9945b6c3760c              # double 0.246865
	.quad	0x3fe37f4ba51a005c              # double 0.60928899999999997
	.quad	0x3fee2c3009b30729              # double 0.94289400000000001
	.quad	0x3fd3c1a8ac5c13fd              # double 0.308695
	.quad	0x3fecc27a63736cdf              # double 0.89873999999999998
	.quad	0x3fefb43b70ef5665              # double 0.99075100000000004
	.quad	0x3fe758d5842b734b              # double 0.72959399999999996
	.quad	0x3fe1cb72c5197a25              # double 0.55608500000000005
	.quad	0x3fe98487b99d4520              # double 0.79742800000000002
	.quad	0x3fee532e7b3d8e00              # double 0.94765399999999999
	.quad	0x3fe8a7a41e57d9dc              # double 0.77046400000000003
	.quad	0x3fe49c99285a921d              # double 0.64411600000000002
	.quad	0x3fed92f901083dbc              # double 0.92419099999999998
	.quad	0x3fe30ccff21b3aef              # double 0.59531400000000001
	.quad	0x3fc3396d0917d6b6              # double 0.15018999999999999
	.quad	0x3fe694f69ca9ef52              # double 0.70568399999999998
	.quad	0x3fd23ac929aa1d75              # double 0.28483799999999998
	.quad	0x3fea35d031055b8a              # double 0.81906900000000005
	.quad	0x3fe1dad538ac18f8              # double 0.55796299999999999
	.quad	0x3fe57d2a62aa1944              # double 0.67152900000000004
	.quad	0x3fa4e54f7a919696              # double 0.040812000000000001
	.quad	0x3fe9e3e6c4c5974e              # double 0.80906999999999996
	.quad	0x3fc54bc6a7ef9db2              # double 0.166375
	.quad	0x3feaac7325918a01              # double 0.83355100000000004
	.quad	0x3f9d2849cb252ce0              # double 0.028473999999999999
	.quad	0x3fe9fc4c165907d9              # double 0.81204799999999999
	.quad	0x3feee00f345069a5              # double 0.96485100000000001
	.quad	0x3fe4d02eec7c957d              # double 0.65041300000000002
	.quad	0x3feaec2699c7bcc3              # double 0.84132700000000005
	.quad	0x3f9aee2003ab862b              # double 0.026298999999999999
	.quad	0x3fec3f141205bc02              # double 0.88270000000000004
	.quad	0x3fcf3636f3b213e4              # double 0.243842
	.quad	0x3fc25f633ce63a5c              # double 0.143536
	.quad	0x3fba52ef911cf356              # double 0.102828
	.quad	0x3fdc0420f6f08cc5              # double 0.43775199999999997
	.quad	0x3fb2f2c7325918a0              # double 0.074016999999999999
	.quad	0x3fecab6f19934efd              # double 0.89592700000000003
	.quad	0x3fdac6195464dc23              # double 0.41834100000000002
	.quad	0x3fe6f51266341180              # double 0.71741600000000005
	.quad	0x3feb96c1e364bec6              # double 0.86215299999999995
	.quad	0x3f9df82b1f687b14              # double 0.029267000000000001
	.quad	0x3fe22087ca643cc0              # double 0.56647099999999995
	.quad	0x3fec95f02c4d65e4              # double 0.89330299999999995
	.quad	0x3fe39394317acc4f              # double 0.611765
	.quad	0x3fefa478854cdb7b              # double 0.98882700000000001
	.quad	0x3fdf9741d084e832              # double 0.49360700000000002
	.quad	0x3feaf720c8cd63cc              # double 0.84266700000000005
	.quad	0x3fe112a94ff0025c              # double 0.533528
	.quad	0x3fedbb59ddc1e796              # double 0.92911999999999995
	.quad	0x3fe2a528ae74f2f1              # double 0.58266099999999998
	.quad	0x3fe665cd4ed2cbea              # double 0.69992699999999997
	.quad	0x3fc909070fbeb9e5              # double 0.19558800000000001
	.quad	0x3fef08398a654930              # double 0.969754
	.quad	0x3feb6034f3fd933e              # double 0.85549399999999998
	.quad	0x3fefa49a133c1ce7              # double 0.98884300000000002
	.quad	0x3fe8c7f77af64064              # double 0.77441000000000004
	.quad	0x3fd0688bda9435ad              # double 0.25638100000000003
	.quad	0x3fd59756c93a7115              # double 0.337362
	.quad	0x3fe3038c111ada77              # double 0.59418300000000002
	.quad	0x3feaf2b884406c01              # double 0.84212900000000002
	.quad	0x3fc5a3a8e71476b0              # double 0.16905700000000001
	.quad	0x3fdf95bff04577d9              # double 0.49351499999999998
	.quad	0x3fe4890f733a8a40              # double 0.64173100000000005
	.quad	0x3fddb1d4f9c1f85d              # double 0.46397899999999997
	.quad	0x3fdc711d798d8a98              # double 0.44440400000000002
	.quad	0x3fefb20535c9e668              # double 0.99048099999999994
	.quad	0x3fa734d6a161e4f7              # double 0.045324999999999997
	.quad	0x3fdf9856a37ac3eb              # double 0.49367299999999997
	.quad	0x3fc6308787485e3e              # double 0.17335600000000001
	.quad	0x3feb255d1c3ac92a              # double 0.84831100000000004
	.quad	0x3fd848a9bcfd4bf1              # double 0.37943500000000002
	.quad	0x3fdac8a372606fac              # double 0.41849599999999998
	.quad	0x3fc6e9b38d60a633              # double 0.179007
	.quad	0x3feb7ab53d640e9d              # double 0.85872899999999996
	.quad	0x3fe55e050374ff86              # double 0.66772699999999996
	.quad	0x3fe259945b6c3761              # double 0.57343500000000003
	.quad	0x3fc6f7985271bcdc              # double 0.17943100000000001
	.quad	0x3fddc3fc43b2dd37              # double 0.46508699999999997
	.quad	0x3fb57720c8cd63cc              # double 0.083849000000000007
	.quad	0x3fe872e275ab7dc8              # double 0.76402400000000004
	.quad	0x3fa75c0767d34df0              # double 0.045623999999999998
	.quad	0x3fc86e7e62dc6e2b              # double 0.19087200000000001
	.quad	0x3fdb3c4f3ba775fb              # double 0.42555599999999999
	.quad	0x3fea63de6149c6f3              # double 0.82469099999999995
	.quad	0x3fe14f440af1cb8a              # double 0.54092600000000002
	.quad	0x3fee515f02c4d65e              # double 0.94743299999999997
	.quad	0x3febb8cfbfc6540d              # double 0.86631000000000002
	.quad	0x3fa0b912dba4d6e4              # double 0.032661999999999997
	.quad	0x3fc153dea465a576              # double 0.13537199999999999
	.quad	0x3fe8d5f78359bc34              # double 0.776119
	.quad	0x3fb925edd052934b              # double 0.098235000000000003
	.quad	0x3fd427ae9ab29e4d              # double 0.31492199999999998
	.quad	0x3fe783c07ee0b0af              # double 0.73483299999999996
	.quad	0x3fdfb0f6ad70e6f3              # double 0.49517600000000001
	.quad	0x3fce8e581cf7878b              # double 0.23871899999999999
	.quad	0x3fef0e6f2e8c0486              # double 0.97051200000000004
	.quad	0x3feef5536933a040              # double 0.96744699999999994
	.quad	0x3fcddd5d3dc8b86b              # double 0.233318
	.quad	0x3fdc775fb2edfe76              # double 0.44478600000000001
	.quad	0x3fa804d983947497              # double 0.046912000000000002
	.quad	0x3fd58d32830a0b1c              # double 0.33674300000000001
	.quad	0x3f879207d4e09785              # double 0.011509
	.quad	0x3fbb67f4dbdf8f47              # double 0.107055
	.quad	0x3fe27034b0e1b4bb              # double 0.57619699999999996
	.quad	0x3fc2ed3d859c8c93              # double 0.147865
	.quad	0x3fdb25a682b62846              # double 0.42417300000000002
	.quad	0x3fd50c564f97edc8              # double 0.328878
	.quad	0x3fe0ce8fb00bcbe6              # double 0.52521499999999999
	.quad	0x3fc5419e30014f8b              # double 0.16606499999999999
	.quad	0x3fd00520d130df9c              # double 0.25031300000000001
	.quad	0x3fa63c968943e100              # double 0.043430999999999997
	.quad	0x3fc65846e8f29d41              # double 0.174569
	.quad	0x3feed640e9d51b50              # double 0.96365400000000001
	.quad	0x3f670b49e01de269              # double 0.002813
	.quad	0x3fcd0539fba450ad              # double 0.22672200000000001
	.quad	0x3fd0a4873365881a              # double 0.260042
	.quad	0x3fedd2ce032db1ea              # double 0.93198300000000001
	.quad	0x3fea04cad57bc7f7              # double 0.81308499999999995
	.quad	0x3fe58d0cc35ce182              # double 0.67346799999999996
	.quad	0x3fe8f95d4e8fb00c              # double 0.78044000000000002
	.quad	0x3fed05fd04a2fcf0              # double 0.90698100000000004
	.quad	0x3fefa5ebb7739f34              # double 0.98900399999999999
	.quad	0x3fedb906466b1e5c              # double 0.92883599999999999
	.quad	0x3fdfa005c4651f3f              # double 0.49414200000000003
	.quad	0x3fedfb5286b59147              # double 0.93692900000000001
	.quad	0x3fe72c5197a24895              # double 0.72416000000000003
	.quad	0x3feb5fe974a3400c              # double 0.85545800000000005
	.quad	0x3f8d54da4ce8101f              # double 0.014322
	.quad	0x3fc5c054ef459d99              # double 0.169932
	.quad	0x3fe02e019b0ab2e1              # double 0.50561599999999995
	.quad	0x3fe83b42cc2d6a9c              # double 0.75723399999999996
	.quad	0x3fd927f5e84f0953              # double 0.39306400000000002
	.quad	0x3fe5b95810624dd3              # double 0.67887500000000001
	.quad	0x3fa90abb44e50c5f              # double 0.048910000000000002
	.quad	0x3fdb98f605ab3aac              # double 0.43121100000000001
	.quad	0x3fe6964c729f59cd              # double 0.705847
	.quad	0x3fe7e87b139c94f7              # double 0.74712900000000004
	.quad	0x3fcded9dfdac68a9              # double 0.23381399999999999
	.quad	0x3fd338a7e73a365d              # double 0.30033300000000002
	.quad	0x3fe431f46ed245b3              # double 0.63109800000000005
	.quad	0x3fecbc382a12f901              # double 0.897976
	.quad	0x3fe9004534bd76ee              # double 0.78128299999999995
	.quad	0x3fe8a582dbe7f2c3              # double 0.770204
	.quad	0x3fefa50b524399b3              # double 0.98889700000000002
	.quad	0x3fdb88effe2a3cea              # double 0.43023299999999998
	.quad	0x3fea855da272862f              # double 0.82877999999999996
	.quad	0x3fa1ffd60e94ee39              # double 0.035154999999999999
	.quad	0x3fc5029ae4f33440              # double 0.16414200000000001
	.quad	0x3fd77f90d9d7774b              # double 0.36716100000000002
	.quad	0x3fede93c03bc4d23              # double 0.93472100000000002
	.quad	0x3fee20685553ef6b              # double 0.94145599999999996
	.quad	0x3fda1e9f2778140e              # double 0.40811900000000001
	.quad	0x3fc52c061847f562              # double 0.165406
	.quad	0x3f9d77b7c7820a31              # double 0.028777
	.quad	0x3fd42b4959e62563              # double 0.31514199999999998
	.quad	0x3fe16809d495182b              # double 0.54395000000000004
	.quad	0x3fe153cff64cf8d7              # double 0.54148099999999999
	.quad	0x3fbcb19a415f45e1              # double 0.112085
	.quad	0x3fe8769014b599aa              # double 0.76447299999999996
	.quad	0x3fe219a847b24639              # double 0.56563200000000002
	.quad	0x3fe3a1b9f98b71b9              # double 0.61349200000000004
	.quad	0x3f84e3369b9d7fd8              # double 0.010199
	.quad	0x3fc9cc857f3061c8              # double 0.20155400000000001
	.quad	0x3fe9436b8f9b1316              # double 0.78947999999999996
	.quad	0x3fb9045fe1112770              # double 0.097723000000000004
	.quad	0x3feb467be553ac4f              # double 0.85235399999999995
	.quad	0x3fd15fd04a2fcefb              # double 0.27147300000000002
	.quad	0x3fd7414e7ee9142b              # double 0.36336099999999999
	.quad	0x3fe5d74f722e1ac5              # double 0.68253299999999995
	.quad	0x3fe0ceb13dfb0d52              # double 0.525231
	.quad	0x3fd3bb7739f340d5              # double 0.30831700000000001
	.quad	0x3fc3903211cb039f              # double 0.152838
	.quad	0x3fb128f190d173fb              # double 0.067030999999999993
	.quad	0x3fe197dd00f776c5              # double 0.54978800000000005
	.quad	0x3fd8bcba30121683              # double 0.386519
	.quad	0x3fceaf1455219a84              # double 0.23971799999999999
	.quad	0x3fee056c508b32cf              # double 0.93816200000000005
	.quad	0x3fe756fda836eb4f              # double 0.72936900000000005
	.quad	0x3fe58f14db59578a              # double 0.67371599999999998
	.quad	0x3fe7449129888f86              # double 0.72711999999999999
	.quad	0x3fe98900c521dda0              # double 0.79797399999999996
	.quad	0x3fdfa40d90e23af3              # double 0.49438799999999999
	.quad	0x3fb7068123810e88              # double 0.089942999999999995
	.quad	0x3fd169014b599aa6              # double 0.272034
	.quad	0x3fd9b1af3a14cec4              # double 0.40146999999999999
	.quad	0x3fea5c1c6088d6d4              # double 0.82374400000000003
	.quad	0x3fdbdf2ecf206424              # double 0.43549700000000002
	.quad	0x3fef5cf2495e17e3              # double 0.98009599999999996
	.quad	0x3fc73682730c6717              # double 0.18135100000000001
	.quad	0x3fe80a8f3a9b0681              # double 0.75128899999999998
	.quad	0x3fdecd855970b49e              # double 0.481294
	.quad	0x3fd548fd9fd36f7e              # double 0.33257999999999999
	.quad	0x3fd8dfd2630ec311              # double 0.38866099999999998
	.quad	0x3fe3e8fb00bcbe62              # double 0.62219000000000002
	.quad	0x3fe01207d4e09785              # double 0.50220100000000001
	.quad	0x3fd1b024f6598e11              # double 0.27637600000000001
	.quad	0x3fcda272862f598a              # double 0.23152
	.quad	0x3faa3ad18d25edd0              # double 0.051229999999999998
	.quad	0x3fd932f01754b05b              # double 0.39373399999999997
	.quad	0x3fe68d38cda6e760              # double 0.704739
	.quad	0x3fc415fcc1871e6d              # double 0.156921
	.quad	0x3fe2e0f3cb3e5754              # double 0.58996000000000004
	.quad	0x3fedad8c2a454de8              # double 0.92743500000000001
	.quad	0x3fccac53b0813cac              # double 0.22400900000000001
	.quad	0x3fc8aad1d041cc53              # double 0.192713
	.quad	0x3fe2a9435ac8a372              # double 0.58316199999999996
	.quad	0x3fe56215336deb96              # double 0.66822300000000001
	.quad	0x3fe2019b0ab2e169              # double 0.56269599999999997
	.quad	0x3fe76ce5710880d8              # double 0.732043
	.quad	0x3fbfbc2b94d94079              # double 0.12396500000000001
	.quad	0x3feef778dd616f87              # double 0.96770900000000004
	.quad	0x3fd0c5004fb1183b              # double 0.26202399999999998
	.quad	0x3fe5bc1eff9f87f0              # double 0.67921399999999998
	.quad	0x3fdc0bd44998d046              # double 0.438222
	.quad	0x3fbb57b41bfbdf09              # double 0.106807
	.quad	0x3fd16473471f7942              # double 0.271756
	.quad	0x3fdb990afe60c38f              # double 0.43121599999999999
	.quad	0x3fdff9f87f023e9f              # double 0.49963200000000002
	.quad	0x3fe7fe34b945308c              # double 0.74978100000000003
	.quad	0x3fd481e03f705858              # double 0.32042700000000002
	.quad	0x3fd21d7dbf487fcc              # double 0.28305000000000002
	.quad	0x3fe13f42352eb5f6              # double 0.53897200000000001
	.quad	0x3fcc771c970f7b9e              # double 0.222385
	.quad	0x3fd6be40420f6f09              # double 0.35536200000000001
	.quad	0x3fea1d909f1f1498              # double 0.81610899999999997
	.quad	0x3fc6af038e29f9cf              # double 0.17721600000000001
	.quad	0x3fe793e3e29307af              # double 0.73680299999999999
	.quad	0x3fe331a2a4db163c              # double 0.59980900000000004
	.quad	0x3fdfe5d5b24e9c45              # double 0.49840299999999998
	.quad	0x3fd16249a133c1ce              # double 0.27162399999999998
	.quad	0x3fdce9a2c669057d              # double 0.45175999999999999
	.quad	0x3fcee5f7403dddb1              # double 0.241393
	.quad	0x3fc745b6c3760bf6              # double 0.181815
	.quad	0x3fe3ea5b530ced4e              # double 0.62235799999999997
	.quad	0x3fec5cbddb9841ab              # double 0.88632100000000003
	.quad	0x3fd994b380cb6c7a              # double 0.39970099999999997
	.quad	0x3fb7821af7d30ad4              # double 0.091828999999999994
	.quad	0x3fbe684cf0739b02              # double 0.118779
	.quad	0x3fe7531550ca1cef              # double 0.72889199999999998
	.quad	0x3fd58f041461b6d4              # double 0.33685399999999999
	.quad	0x3fb46db50f40e5a3              # double 0.079798999999999995
	.quad	0x3fd0f35e310dbf05              # double 0.26485399999999998
	.quad	0x3fe3a70f3882278d              # double 0.61414299999999999
	.quad	0x3fa9fb82c2bd7f52              # double 0.050747
	.quad	0x3fe2e8a71de69ad4              # double 0.59089999999999998
	.quad	0x3feca08398a65493              # double 0.894594
	.quad	0x3fd47e28240b7803              # double 0.32019999999999998
	.quad	0x3fb0486ad2dcb146              # double 0.063604999999999995
	.quad	0x3fa1ca7d6733ebc0              # double 0.034748000000000001
	.quad	0x3fef35d67ba237ce              # double 0.97532200000000002
	.quad	0x3fde4e48626f60e1              # double 0.473528
	.quad	0x3fe5506573215fcc              # double 0.66606399999999999
	.quad	0x3feea3e7d135115a              # double 0.95750800000000003
	.quad	0x3fe12a9d627bf61b              # double 0.53645200000000004
	.quad	0x3fa9bf37b8d3f184              # double 0.050286999999999998
	.quad	0x3fe6b9a38fbca106              # double 0.71016100000000004
	.quad	0x3fcadc011d3671ac              # double 0.209839
	.quad	0x3fedd3b0813cab82              # double 0.932091
	.quad	0x3feee5a78f25a251              # double 0.965534
	.quad	0x3fc02d6a9c560c7c              # double 0.126386
	.quad	0x3fe90ffda4052d66              # double 0.78320199999999995
	.quad	0x3fe7565e4606748e              # double 0.72929299999999997
	.quad	0x3fe307bdcf0307f2              # double 0.59469499999999997
	.quad	0x3fee3b8e4b87bdcf              # double 0.94477
	.quad	0x3fef49c6f36ef805              # double 0.97775599999999995
	.quad	0x3fd336262cba732e              # double 0.30018
	.quad	0x3fe5abc947064ecf              # double 0.67722000000000004
	.quad	0x3fda59210385c67e              # double 0.41169
	.quad	0x3fcd471715c63ae2              # double 0.22873199999999999
	.quad	0x3fec86ca89fc6da4              # double 0.89145399999999996
	.quad	0x3fd44d48882f0e0b              # double 0.31721700000000003
	.quad	0x3fcfff47735c182f              # double 0.24997800000000001
	.quad	0x3fb48a265f0f5a10              # double 0.080232999999999998
	.quad	0x3fa90b84988094e6              # double 0.048916000000000001
	.quad	0x3fd458d9b5e95b79              # double 0.31792300000000001
	.quad	0x3fe28101f31f46ed              # double 0.57824799999999998
	.quad	0x3fe22f166e008e9b              # double 0.56824799999999998
	.quad	0x3fd6fe82517e77d5              # double 0.35928399999999999
	.quad	0x3fedc677b395c422              # double 0.930477
	.quad	0x3fe7e29307af20ea              # double 0.74640799999999996
	.quad	0x3fcb2e72da122fad              # double 0.21235499999999999
	.quad	0x3fbb10ba6266fd65              # double 0.105724
	.quad	0x3feccdfce3150dae              # double 0.90014499999999997
	.quad	0x3fd7fe47991bc558              # double 0.37489499999999998
	.quad	0x3fe2dbe3c105186e              # double 0.58934200000000003
	.quad	0x3fd71a2e7f6f4be8              # double 0.36097299999999999
	.quad	0x3fe401e03f705858              # double 0.62522900000000003
	.quad	0x3fd050b955f7835a              # double 0.25492700000000001
	.quad	0x3fedb224aada33be              # double 0.92799600000000004
	.quad	0x3fe2d10b1feeb2d1              # double 0.58801800000000004
	.quad	0x3fe4cee7c49fd7a1              # double 0.65025699999999997
	.quad	0x3fa6c4a4095f2453              # double 0.044469000000000002
	.quad	0x3fee837d63022dd8              # double 0.95355100000000003
	.quad	0x3fed2b7baecd0785              # double 0.91155799999999998
	.quad	0x3fed83f91e646f15              # double 0.92235999999999996
	.quad	0x3fb4e7ddca4b124d              # double 0.081662999999999999
	.quad	0x3fda138bcdfefbf4              # double 0.407443
	.quad	0x3fec3bb62413db7f              # double 0.88228899999999999
	.quad	0x3feb63193f6c269a              # double 0.85584700000000002
	.quad	0x3fdacd74927913e8              # double 0.41879
	.quad	0x3fde69552e2fbe34              # double 0.47517900000000002
	.quad	0x3fe4c4651f3e89a9              # double 0.64897400000000005
	.quad	0x3fd4c84f8f8a4c1f              # double 0.32472600000000001
	.quad	0x3fee242d05f28848              # double 0.94191599999999997
	.quad	0x3fd3bb8c32a8c9b8              # double 0.30832199999999998
	.quad	0x3f9f166e008e9b39              # double 0.030359000000000001
	.quad	0x3fd04de3b8a19c9d              # double 0.25475399999999998
	.quad	0x3fdc2d55a3a08399              # double 0.44026700000000002
	.quad	0x3fe74d551d68c693              # double 0.72819
	.quad	0x3fead5e28aa43351              # double 0.83860900000000005
	.quad	0x3feb27631b584b1b              # double 0.84855800000000003
	.quad	0x3fe31e85fd04a2fd              # double 0.59747600000000001
	.quad	0x3fe31187e7c06e1a              # double 0.59589000000000003
	.quad	0x3fd257603925bb7b              # double 0.28658299999999998
	.quad	0x3fdfa28bb0a2ca9b              # double 0.49429600000000001
	.quad	0x3fda28f9f44d4456              # double 0.40875099999999998
	.quad	0x3fc73708aac96cc6              # double 0.181367
	.quad	0x3fd15d78811b1d93              # double 0.27133000000000002
	.quad	0x3feef57f737da61e              # double 0.96746799999999999
	.quad	0x3fe93c5de9c0229a              # double 0.78861899999999996
	.quad	0x3fe4895af294dd72              # double 0.64176699999999998
	.quad	0x3fd42acb85a4f00f              # double 0.315112
	.quad	0x3fe29a79fec99f1b              # double 0.58135700000000001
	.quad	0x3fe9e136e71cda2b              # double 0.80874199999999996
	.quad	0x3fe0f633ce63a5c2              # double 0.53005400000000003
	.quad	0x3fd098aeb80ecfa7              # double 0.25931900000000002
	.quad	0x3fea6cc1ca3a4b55              # double 0.82577599999999995
	.quad	0x3fe7c00da1a93294              # double 0.74219400000000002
	.quad	0x3fe9e2003ab862b2              # double 0.80883799999999995
	.quad	0x3fed7164c729f59d              # double 0.92009200000000002
	.quad	0x3fcd964a59c065b6              # double 0.23114899999999999
	.quad	0x3fee4f227d028a1e              # double 0.94716
	.quad	0x3f82a8c9b845564b              # double 0.0091109999999999993
	.quad	0x3fd10f01fb82c2bd              # double 0.26654099999999997
	.quad	0x3fbd9c8c9320d994              # double 0.11567
	.quad	0x3fe8944cbe1eb420              # double 0.76810299999999998
	.quad	0x3fec7036c9c0a8d2              # double 0.88869799999999999
	.quad	0x3fea3295e9e1b08a              # double 0.81867500000000004
	.quad	0x3fe1b1b152f3c2db              # double 0.55294100000000002
	.quad	0x3fe8b60285ec3dab              # double 0.77221799999999996
	.quad	0x3fe2433721d53cde              # double 0.57070500000000002
	.quad	0x3fe7cea4a8c154ca              # double 0.74397500000000005
	.quad	0x3fdb6ededaec4a41              # double 0.42864200000000002
	.quad	0x3fe66c80c73abc94              # double 0.70074499999999995
	.quad	0x3fe00cf1800a7c5b              # double 0.50158000000000003
	.quad	0x3fa04fb1183b6028              # double 0.031857999999999997
	.quad	0x3fe1bb4916ca46e1              # double 0.55411200000000005
	.quad	0x3fec200c0f01fb83              # double 0.87891200000000003
	.quad	0x3fd9c343b70ef566              # double 0.40254299999999998
	.quad	0x3fe735cbff47735c              # double 0.72531699999999999
	.quad	0x3fda37de939eadd6              # double 0.40966000000000002
	.quad	0x3fd2254a3c64345d              # double 0.283526
	.quad	0x3fc75ac8a3726070              # double 0.18245800000000001
	.quad	0x3fe473e468cac4b5              # double 0.63914700000000002
	.quad	0x3fe189741d084e83              # double 0.54802899999999999
	.quad	0x3fcdeadd590c0ad0              # double 0.23372999999999999
	.quad	0x3fd9da6e75ff609e              # double 0.40395700000000001
	.quad	0x3fdcafd113836a83              # double 0.44823099999999999
	.quad	0x3f90ccff21b3aeef              # double 0.016407000000000001
	.quad	0x3feac4156e264e48              # double 0.83643599999999996
	.quad	0x3fe1a2be0589acbd              # double 0.55111600000000005
	.quad	0x3fd86440f2389720              # double 0.38111899999999999
	.quad	0x3fe640e5a35d67ba              # double 0.69542199999999998
	.quad	0x3fc1426fe718a86d              # double 0.13483999999999999
	.quad	0x3fc7c5479d4d8341              # double 0.18570800000000001
	.quad	0x3fd3cb923a29c77a              # double 0.30930000000000002
	.quad	0x3fd22a1f8e3ac0c6              # double 0.28382099999999999
	.quad	0x3fe3a178f68be2f8              # double 0.61346100000000003
	.quad	0x3fd6b823c85c24c4              # double 0.354989
	.quad	0x3fed2cc0bdcad14a              # double 0.911713
	.quad	0x3fd35e17e34b9453              # double 0.302618
	.quad	0x3fe7467381d7dbf5              # double 0.72735000000000005
	.quad	0x3fc4f61ed5ae1cde              # double 0.16376099999999999
	.quad	0x3fc203dddb1209ee              # double 0.14074300000000001
	.quad	0x3fe89aaa3ad18d26              # double 0.76888000000000001
	.quad	0x3fcee160d887ebf2              # double 0.241253
	.quad	0x3fa183f91e646f15              # double 0.034209999999999997
	.quad	0x3fc50678c0053e2d              # double 0.16425999999999999
	.quad	0x3fe5620ccff21b3b              # double 0.66821900000000001
	.quad	0x3fe33e24febd09e1              # double 0.60133599999999998
	.quad	0x3fe1a5269595feda              # double 0.55140999999999996
	.quad	0x3febb29a1b9f98b7              # double 0.86555199999999999
	.quad	0x3f84f82f51266341              # double 0.010239
	.quad	0x3fea7865d7cb2d90              # double 0.82719699999999996
	.quad	0x3fe2196b76709fa5              # double 0.56560299999999997
	.quad	0x3fe7a87c200c0f02              # double 0.739317
	.quad	0x3fe9d4eb13dfb0d5              # double 0.80724099999999999
	.quad	0x3fce6d3f9e7b80aa              # double 0.237709
	.quad	0x3fe6919ce075f6fd              # double 0.70527499999999999
	.quad	0x3fd6c67dfe32a066              # double 0.35586499999999999
	.quad	0x3fb75286b59146e5              # double 0.091103000000000003
	.quad	0x3fe2733ebbfd71b0              # double 0.57656799999999997
	.quad	0x3fdc86db50f40e5a              # double 0.44573099999999999
	.quad	0x3fd7751ce28ed5f1              # double 0.36652299999999999
	.quad	0x3fb2ededaec4a409              # double 0.073942999999999995
	.quad	0x3fe5d9d7774aba38              # double 0.68284199999999995
	.quad	0x3fe4ee2867275686              # double 0.65407199999999999
	.quad	0x3fdebba55d1c3ac9              # double 0.48020299999999999
	.quad	0x3fea6234a87e38eb              # double 0.824488
	.quad	0x3fcb19dece571088              # double 0.211727
	.quad	0x3fed28b2a6b0d951              # double 0.91121799999999997
	.quad	0x3fe5fbf401c4fc1e              # double 0.68700600000000001
	.quad	0x3fdc63065f9591cd              # double 0.44354399999999999
	.quad	0x3fd6d8c6d612c6ac              # double 0.35698099999999999
	.quad	0x3fdef51ac9afe1da              # double 0.48370999999999997
	.quad	0x3fe2fda4052d666b              # double 0.59346200000000005
	.quad	0x3fdf006d0d49949f              # double 0.48440100000000003
	.quad	0x3feec7b45f17bd8c              # double 0.96187800000000001
	.quad	0x3fd5e8c47a17f413              # double 0.34233200000000003
	.quad	0x3fea3003686a4ca5              # double 0.81836100000000001
	.quad	0x3fef5fb506dd69d3              # double 0.98043299999999999
	.quad	0x3fe13fab10ba6267              # double 0.539022
	.quad	0x3fe3231e7d9988d3              # double 0.59803700000000004
	.quad	0x3fd8fdeb52c9d170              # double 0.39049800000000001
	.quad	0x3fd30c4dec1c1d6d              # double 0.297626
	.quad	0x3fdc1b25f633ce64              # double 0.43915700000000002
	.quad	0x3fdecc0379314446              # double 0.48120200000000002
	.quad	0x3fe530164840e172              # double 0.66212000000000004
	.quad	0x3fda0b780346dc5d              # double 0.40694999999999998
	.quad	0x3fe660242d05f288              # double 0.69923599999999997
	.quad	0x3fa46994185058de              # double 0.039868000000000001
	.quad	0x3fe6eda87a072d1b              # double 0.71651100000000001
	.quad	0x3fd118c197e56473              # double 0.26713599999999998
	.quad	0x3fcc4d3bf2f55582              # double 0.221107
	.quad	0x3fe119ed7c6fbd27              # double 0.53441499999999997
	.quad	0x3fdd65dbfceb7889              # double 0.45934199999999997
	.quad	0x3fe3b4bd76ee73e7              # double 0.61581300000000005
	.quad	0x3fd662cba732df50              # double 0.34977999999999998
	.quad	0x3fe44219eb6390c9              # double 0.63306899999999999
	.quad	0x3fe7487db2b34613              # double 0.727599
	.quad	0x3fb9baa1511dffc5              # double 0.100504
	.quad	0x3fe651e96c3fc43b              # double 0.69749899999999998
	.quad	0x3fed941c8216c615              # double 0.92432999999999998
	.quad	0x3fd86dbd72bcb5fe              # double 0.38169799999999998
	.quad	0x3fe26f9db22d0e56              # double 0.576125
	.quad	0x3fd3e8ff327aa68f              # double 0.31109599999999998
	.quad	0x3fb0d9513f8db489              # double 0.065816
	.quad	0x3fef270d1fa33376              # double 0.97351699999999997
	.quad	0x3fda86bdf4c2b51c              # double 0.41447400000000001
	.quad	0x3fe208333fc86cec              # double 0.56350100000000003
	.quad	0x3fe7fec7863beec4              # double 0.74985100000000004
	.quad	0x3fe45f3519bd4068              # double 0.63662200000000002
	.quad	0x3fcc0724b76f6d76              # double 0.218968
	.quad	0x3fea8af5fd47bedb              # double 0.82946299999999995
	.quad	0x3fee02fb5d031056              # double 0.93786400000000003
	.quad	0x3fdc1c432ca57a78              # double 0.43922499999999998
	.quad	0x3fcdb1af3a14cec4              # double 0.231985
	.quad	0x3fcd13f8db489093              # double 0.22717200000000001
	.quad	0x3fe4deb7457c0b13              # double 0.65218699999999996
	.quad	0x3fdefd7a13c254a4              # double 0.48422100000000001
	.quad	0x3feb36e2eb1c432d              # double 0.85045000000000004
	.quad	0x3fed0255b035bd51              # double 0.90653499999999998
	.quad	0x3fec2b3461309c80              # double 0.880274
	.quad	0x3fe36abbcb1cc964              # double 0.60677899999999996
	.quad	0x3fdb387160956c0d              # double 0.42531999999999998
	.quad	0x3fb87ecfe9b7bf1f              # double 0.095685000000000006
	.quad	0x3fef30ec31162281              # double 0.97472199999999997
	.quad	0x3fe9d7b2031ceaf2              # double 0.80757999999999996
	.quad	0x3fedab4d8ba40d91              # double 0.92716100000000001
	.quad	0x3fde069e7fb267c7              # double 0.46915400000000002
	.quad	0x3fde4df47f993d53              # double 0.47350799999999998
	.quad	0x3feb918c197e5647              # double 0.86151699999999998
	.quad	0x3fe1696e58a32f45              # double 0.54412000000000005
	.quad	0x3fe5f71a7e308787              # double 0.68641399999999997
	.quad	0x3fdfa63305100a39              # double 0.49451899999999999
	.quad	0x3fbe94dd72367e41              # double 0.119459
	.quad	0x3fe92888b545c78a              # double 0.78619799999999995
	.quad	0x3fcc7746887a8d65              # double 0.22239
	.quad	0x3fe362f37fbefd00              # double 0.60582899999999995
	.quad	0x3fec7820a30db6a2              # double 0.88966400000000001
	.quad	0x3fde42d490e66cb1              # double 0.472829
	.quad	0x3fd3285ec3dab5c4              # double 0.29933900000000002
	.quad	0x3fd57357e670e2c1              # double 0.33516499999999999
	.quad	0x3fed7e132b55ef20              # double 0.92164000000000001
	.quad	0x3fb292b3cc4ac6ce              # double 0.072551000000000004
	.quad	0x3fb40b242070b8d0              # double 0.078295000000000003
	.quad	0x3fe428b8f14db595              # double 0.62997099999999995
	.quad	0x3fe99ccb7d41743f              # double 0.80039000000000005
	.quad	0x3fdc16659d12cade              # double 0.43886700000000001
	.quad	0x3fd378af3e468cac              # double 0.30424099999999998
	.quad	0x3f96a7ac81d3aa37              # double 0.022124000000000001
	.quad	0x3fdeff64cf8d716d              # double 0.48433799999999999
	.quad	0x3fe67fd82773e250              # double 0.70310600000000001
	.quad	0x3fd14fc610f0e90c              # double 0.27049400000000001
	.quad	0x3feae3bcd35a8588              # double 0.84030000000000005
	.quad	0x3fe2f96bfca85cab              # double 0.592947
	.quad	0x3fd65f7403dddb12              # double 0.349576
	.quad	0x3fe0da597d49d7ba              # double 0.52665399999999996
	.quad	0x3fee2a4fca42aed1              # double 0.94266499999999998
	.quad	0x3fc37d1782d38477              # double 0.152255
	.quad	0x3fcf3a1d323fee2d              # double 0.24396100000000001
	.quad	0x3fe8ee7a311e85fd              # double 0.779111
	.quad	0x3fe0bef284167a96              # double 0.52330900000000002
	.quad	0x3fd1d2aa5c5f7c67              # double 0.27848299999999998
	.quad	0x3fd0d7ecbb7f9d6f              # double 0.263179
	.quad	0x3fcfe889c1b54196              # double 0.24928400000000001
	.quad	0x3fc1c422036006d1              # double 0.138798
	.quad	0x3fd8a6ce358298cc              # double 0.385181
	.quad	0x3fec433d6c721922              # double 0.88320799999999999
	.quad	0x3feeb63d3e4ef028              # double 0.95974599999999998
	.quad	0x3fdc8676a7264a17              # double 0.44570700000000002
	.quad	0x3fe42ea3161a1db8              # double 0.63069299999999995
	.quad	0x3fd8998d045fe111              # double 0.38437199999999999
	.quad	0x3fe83ec679cc74b8              # double 0.75766299999999998
	.quad	0x3fcd49e01de26916              # double 0.22881699999999999
	.quad	0x3fccc9c90c4dec1c              # double 0.224908
	.quad	0x3fd048d3ae685db7              # double 0.25444499999999998
	.quad	0x3fe7cb33daf8df7a              # double 0.74355499999999997
	.quad	0x3fed9b4dcebfec14              # double 0.92520800000000003
	.quad	0x3fe70a5efe931876              # double 0.72001599999999999
	.quad	0x3fe48064a9cdc444              # double 0.64067300000000005
	.quad	0x3f94a9cdc443914f              # double 0.020178999999999999
	.quad	0x3fc820a30db6a1e8              # double 0.188496
	.quad	0x3faf5147f1305964              # double 0.061166999999999999
	.quad	0x3fe23d5dc4007571              # double 0.56999100000000003
	.quad	0x3fd0f455a7d24181              # double 0.26491300000000001
	.quad	0x3fec775104d551d7              # double 0.88956500000000005
	.quad	0x3fc05614df8b1572              # double 0.12762699999999999
	.quad	0x3fe1ccd74927913f              # double 0.55625500000000005
	.quad	0x3fe2b82e44b6e936              # double 0.58498300000000003
	.quad	0x3fe5d0acc0bdcad1              # double 0.68172299999999997
	.quad	0x3fe7acd5b6805a2d              # double 0.73984799999999995
	.quad	0x3fee4e160d887ebf              # double 0.94703199999999998
	.quad	0x3feede00d1b71759              # double 0.96460000000000001
	.quad	0x3fec68d5410f94c8              # double 0.88779699999999995
	.quad	0x3f88f0c77dd872f3              # double 0.012178
	.quad	0x3fe211bc55864452              # double 0.56466499999999997
	.quad	0x3fdf20ccff21b3af              # double 0.486377
	.quad	0x3fdc8950763a1901              # double 0.44588100000000003
	.quad	0x3fe5a7418d6909af              # double 0.67666700000000002
	.quad	0x3fb80d3cff64cf8d              # double 0.093951999999999994
	.quad	0x3fea7b9170d62bf1              # double 0.82758399999999999
	.quad	0x3fe8f99806f26289              # double 0.78046800000000005
	.quad	0x3fea40096feb4a66              # double 0.82031699999999996
	.quad	0x3fe7e5c2d2780779              # double 0.74679700000000004
	.quad	0x3fe9582dbe7f2c30              # double 0.792014
	.quad	0x3fd696feb4a6655a              # double 0.352966
	.quad	0x3fdd37e2c55c9603              # double 0.456536
	.quad	0x3fd6fc371da37ef6              # double 0.35914400000000002
	.quad	0x3fcffb04ee7c49fd              # double 0.24984799999999999
	.quad	0x3fd293ccd0fe8ab5              # double 0.290271
	.quad	0x3fe04449dbec2481              # double 0.50833600000000001
	.quad	0x3fc50dd82fd75e20              # double 0.16448499999999999
	.quad	0x3fd5faacd9e83e42              # double 0.34342499999999998
	.quad	0x3fd912599ed7c6fc              # double 0.39174500000000001
	.quad	0x3fe91ba7fc32ebe6              # double 0.78462600000000005
	.quad	0x3fe635b0bbf50e34              # double 0.69405399999999995
	.quad	0x3fd9d7625204af92              # double 0.40377099999999999
	.quad	0x3fe985510d38cda7              # double 0.79752400000000001
	.quad	0x3faa76102795703f              # double 0.051681999999999999
	.quad	0x3fe096659d12cade              # double 0.51835900000000001
	.quad	0x3fe7132d6ece13f5              # double 0.72109100000000004
	.quad	0x3fb372f76e6106ab              # double 0.075972999999999999
	.quad	0x3fdd50dae3e6c4c6              # double 0.45806000000000002
	.quad	0x3fd6d61b2a27f1b7              # double 0.35681800000000002
	.quad	0x3fb2847b24638c97              # double 0.072333999999999996
	.quad	0x3fea2146a1a500d6              # double 0.81656200000000001
	.quad	0x3fe6c63f141205bc              # double 0.7117
	.quad	0x3fea046e8f29d40f              # double 0.81304100000000001
	.quad	0x3fe6ba7fc32ebe59              # double 0.71026599999999995
	.quad	0x3fe6116440f23897              # double 0.68962299999999999
	.quad	0x3fecae536501e258              # double 0.89627999999999997
	.quad	0x3fe7afd113836a83              # double 0.74021199999999998
	.quad	0x3fdd03686a4ca4f4              # double 0.45333299999999999
	.quad	0x3fd78088509bf9c6              # double 0.36721999999999999
	.quad	0x3fe7904d551d68c7              # double 0.73636500000000005
	.quad	0x3fe494db59578a2b              # double 0.64317100000000005
	.quad	0x3fe1f7963992c8c5              # double 0.561473
	.quad	0x3fb348e4755ffe6d              # double 0.075330999999999995
	.quad	0x3fe94b2b777d0f1f              # double 0.79042599999999996
	.quad	0x3fe6c7778dd616f8              # double 0.71184899999999995
	.quad	0x3fd05c31593e5fb7              # double 0.25562699999999999
	.quad	0x3fe83458cd20afa3              # double 0.75639000000000001
	.quad	0x3fe0a8d21bc126a6              # double 0.52060799999999996
	.quad	0x3fe80b0af5fd47bf              # double 0.75134800000000002
	.quad	0x3fc83ec02f2f9874              # double 0.189415
	.quad	0x3fe2bb29a1b9f98b              # double 0.58534699999999995
	.quad	0x3fe138b26394face              # double 0.53817099999999995
	.quad	0x3fc092253111f0c3              # double 0.12945999999999999
	.quad	0x3fca99a62ed35222              # double 0.207814
	.quad	0x3fed0d3ae685db77              # double 0.90786500000000003
	.quad	0x3fd42deca25529fe              # double 0.315303
	.quad	0x3fe69070fbeb9e49              # double 0.70513199999999998
	.quad	0x3fe907d0aed99cbf              # double 0.78220400000000001
	.quad	0x3fd58661ae70c133              # double 0.33632699999999999
	.quad	0x3fe4a5cc426351df              # double 0.64523900000000001
	.quad	0x3fa74e22a2c23748              # double 0.045518000000000003
	.quad	0x3fe1d1a21ea35936              # double 0.55684
	.quad	0x3fdddd9c27e95315              # double 0.46665099999999998
	.quad	0x3fcd914f483cafb4              # double 0.23099700000000001
	.quad	0x3fe4e99e94ab1d50              # double 0.65351800000000004
	.quad	0x3fbbf8a8f3a9b068              # double 0.109263
	.quad	0x3fdcee49f51697f2              # double 0.452044
	.quad	0x3fde2cbea4ebdd33              # double 0.47148099999999998
	.quad	0x3fe38637bd05af6c              # double 0.61013399999999995
	.quad	0x3fdcb60ae9680e06              # double 0.44861099999999998
	.quad	0x3fec97225b749add              # double 0.89344900000000005
	.quad	0x3fe116c82e019b0b              # double 0.53403100000000003
	.quad	0x3fcba3a08398a655              # double 0.21593100000000001
	.quad	0x3fe22830a0b1bbcf              # double 0.56740599999999997
	.quad	0x3fde7be9856a37ac              # double 0.47631299999999999
	.quad	0x3fb5be5d9e40c847              # double 0.084935999999999998
	.quad	0x3fec8b7c3504c48b              # double 0.89202700000000001
	.quad	0x3feed8d5842b734b              # double 0.96396899999999996
	.quad	0x3fc1145d851654d6              # double 0.133434
	.quad	0x3fcf38583621fafd              # double 0.24390700000000001
	.quad	0x3fee55f3519bd406              # double 0.94799199999999995
	.quad	0x3fa0c49ba5e353f8              # double 0.032750000000000001
	.quad	0x3f93cab81f969e3d              # double 0.019328000000000001
	.quad	0x3fe9db1209edbf8c              # double 0.80799200000000004
	.quad	0x3fd0aa2e3c536d65              # double 0.26038699999999998
	.quad	0x3feb0be0ded288ce              # double 0.84519999999999995
	.quad	0x3fc5b71758e21965              # double 0.16965
	.quad	0x3fd419dece571088              # double 0.314079
	.quad	0x3fe23b384fd2a62b              # double 0.56972900000000004
	.quad	0x3fed6cbb7f9d6f11              # double 0.91952299999999998
	.quad	0x3fc39b23dd54da4d              # double 0.153172
	.quad	0x3fec728848387df6              # double 0.88898100000000002
	.quad	0x3fdf8c08b75ea67f              # double 0.49292200000000003
	.quad	0x3fdcf3ba775fb2ee              # double 0.452376
	.quad	0x3fee7ba6698bb4d5              # double 0.95259400000000005
	.quad	0x3fe81ab29e4d5d81              # double 0.75325900000000001
	.quad	0x3fd92d44dca8e2e3              # double 0.39338800000000002
	.quad	0x3fe87db4cc250721              # double 0.76534500000000005
	.quad	0x3fd04f82f5126634              # double 0.254853
	.quad	0x3feed00b45ae5ffa              # double 0.96289599999999997
	.quad	0x3fd8e675147f1306              # double 0.38906600000000002
	.quad	0x3fdcab042528ae75              # double 0.447938
	.quad	0x3fcda24894c447c3              # double 0.231515
	.quad	0x3fdef12c27a63737              # double 0.48347000000000001
	.quad	0x3fef34eb9a176ddb              # double 0.97521000000000002
	.quad	0x3fe58e29f9ce8d97              # double 0.67360399999999998
	.quad	0x3fec9e215336deb9              # double 0.89430299999999996
	.quad	0x3fd07518b0d0edc4              # double 0.25714700000000001
	.quad	0x3fd6260f5e41d4b7              # double 0.34607300000000002
	.quad	0x3fea33397dd00f77              # double 0.81875299999999995
	.quad	0x3fd5f9767903211d              # double 0.34335100000000002
	.quad	0x3fdc5c67dfe32a06              # double 0.44313999999999998
	.quad	0x3fb65accd530489d              # double 0.087322999999999998
	.quad	0x3fe936a619da9c99              # double 0.78792099999999998
	.quad	0x3fcfe492bc2fc697              # double 0.249163
	.quad	0x3fd9289118c197e5              # double 0.39310099999999998
	.quad	0x3fe4260f5e41d4b7              # double 0.62964600000000004
	.quad	0x3fda9c7ffde7210c              # double 0.415802
	.quad	0x3fe1b18b93469942              # double 0.55292300000000005
	.quad	0x3fed13404ea4a8c1              # double 0.90859999999999996
	.quad	0x3fe3c27c7c5260f6              # double 0.61749100000000001
	.quad	0x3feb7625204af923              # double 0.85817200000000005
	.quad	0x3fedb70ef566490a              # double 0.92859599999999998
	.quad	0x3fea8bfc2224edf6              # double 0.82958799999999999
	.quad	0x3fd8fc47e49b1fac              # double 0.39039800000000002
	.quad	0x3fd7b2031ceaf252              # double 0.37024000000000001
	.quad	0x3fec0f062d40aaeb              # double 0.876834
	.quad	0x3fea80f12c27a637              # double 0.82823999999999998
	.quad	0x3fd0622813448063              # double 0.25599100000000002
	.quad	0x3fde77143393ab43              # double 0.476018
	.quad	0x3fe34c8ffb8b2639              # double 0.60309599999999997
	.quad	0x3fd6a875d56f32be              # double 0.35403200000000001
	.quad	0x3fcf9ccfaeff5c6c              # double 0.246973
	.quad	0x3fd88a0902de00d2              # double 0.38342500000000002
	.quad	0x3fe0b0e1b4bb5e0f              # double 0.52159199999999994
	.quad	0x3fe015a294141e9b              # double 0.502641
	.quad	0x3fee1bd1ed9dfdac              # double 0.94089599999999995
	.quad	0x3fd8bc72e275ab7e              # double 0.38650200000000001
	.quad	0x3fe6257646ae3a3b              # double 0.69207300000000005
	.quad	0x3fe477fcfc3f811f              # double 0.63964699999999997
	.quad	0x3fdf2ccf6be37de9              # double 0.48710999999999999
	.quad	0x3fdd7e6b3fe9fadb              # double 0.460841
	.quad	0x3fd6fc2224edf612              # double 0.35913899999999999
	.quad	0x3fe794f0520d130e              # double 0.736931
	.quad	0x3fe37154003254e7              # double 0.60758400000000001
	.quad	0x3fe5920e1f7d73c9              # double 0.67407899999999998
	.quad	0x3fe57ca643cc07ab              # double 0.67146600000000001
	.quad	0x3fc02517e77d523b              # double 0.12613199999999999
	.quad	0x3fe36af038e29f9d              # double 0.60680400000000001
	.quad	0x3fd9a37ef5a964e9              # double 0.40060400000000002
	.quad	0x3fed1b66f9335d25              # double 0.90959500000000004
	.quad	0x3fe3b9dc2f405f6c              # double 0.61643800000000004
	.quad	0x3fdab5dcc63f1412              # double 0.41735
	.quad	0x3fea4e91c8eabffd              # double 0.82209100000000002
	.quad	0x3fef7a02fb5d0310              # double 0.98364399999999996
	.quad	0x3fe6026aa8eb4635              # double 0.68779500000000005
	.quad	0x3fe9f6bc1eff9f88              # double 0.81136900000000001
	.quad	0x3febe71ef30a4e38              # double 0.87196300000000004
	.quad	0x3fe0ffe4bcad9ad8              # double 0.53123699999999996
	.quad	0x3fd15e56cd6c2efd              # double 0.27138299999999999
	.quad	0x3fd2b28d8665e02f              # double 0.29214800000000002
	.quad	0x3fbc6f9b994e1a3f              # double 0.111078
	.quad	0x3fb66a98244e93e2              # double 0.087564000000000002
	.quad	0x3faf10a99b6f5caf              # double 0.060673999999999999
	.quad	0x3fdc27bb2fec56d6              # double 0.43992500000000001
	.quad	0x3fef3da72a7bd48d              # double 0.97627600000000003
	.quad	0x3fd1fa54c5543287              # double 0.28090399999999999
	.quad	0x3fd5635610adcd2d              # double 0.33418799999999999
	.quad	0x3feb5aea3161a1dc              # double 0.85484800000000005
	.quad	0x3fea2a2a0a958538              # double 0.81764700000000001
	.quad	0x3fdbedfe75bc44bf              # double 0.43640099999999998
	.quad	0x3fb9f6cacd184c27              # double 0.101422
	.quad	0x3fddf52fc2656abe              # double 0.46809000000000001
	.quad	0x3fc9bac2df0d4131              # double 0.201012
	.quad	0x3fecefef7c243dcd              # double 0.90428900000000001
	.quad	0x3fe74cc46950fc72              # double 0.72812100000000002
	.quad	0x3fc0b1ee2435696e              # double 0.13042999999999999
	.quad	0x3fd86bc621b7e0ac              # double 0.38157799999999997
	.quad	0x3fdf649906cca2db              # double 0.49051499999999998
	.quad	0x3fdfac753e707e17              # double 0.49490099999999998
	.quad	0x3fa29717df19d66b              # double 0.036309000000000001
	.quad	0x3fc9971c10d7be98              # double 0.19992399999999999
	.quad	0x3fe148387df5cf25              # double 0.54006600000000005
	.quad	0x3fe03a8e71476af9              # double 0.50714800000000004
	.quad	0x3f85ffe6d58c8eef              # double 0.010742
	.quad	0x3fbdb36bd2b6f199              # double 0.116019
	.quad	0x3fec254a3c64345d              # double 0.879552
	.quad	0x3feb8e12e83a109d              # double 0.861093
	.quad	0x3fecf71c970f7b9e              # double 0.905165
	.quad	0x3fdf8c9320d9945b              # double 0.49295499999999998
	.quad	0x3fe2c87db2b34613              # double 0.586974
	.quad	0x3fac4cbe1eb4202e              # double 0.055273000000000003
	.quad	0x3fa672da122fad6d              # double 0.043845000000000002
	.quad	0x3fdac792d1287c20              # double 0.418431
	.quad	0x3fe292a51e321a2e              # double 0.58040099999999994
	.quad	0x3fe029cbab649d39              # double 0.50510200000000005
	.quad	0x3fe76ffe2a3cea6c              # double 0.73242099999999999
	.quad	0x3feeb87379746024              # double 0.96001599999999998
	.quad	0x3fb6db7281fd9ba2              # double 0.089286000000000004
	.quad	0x3fe78d9945b6c376              # double 0.73603499999999999
	.quad	0x3fd7c83a96d4c33b              # double 0.37159599999999998
	.quad	0x3fe1cf82f5126634              # double 0.55658099999999999
	.quad	0x3fb50cd423d9231c              # double 0.082226999999999995
	.quad	0x3fdcd9ad85dfa872              # double 0.45078600000000002
	.quad	0x3fe2062d40aaeafb              # double 0.56325400000000003
	.quad	0x3fc9696e58a32f45              # double 0.19853000000000001
	.quad	0x3fd9619da9c99286              # double 0.39658300000000002
	.quad	0x3fee799e518f3ecd              # double 0.95234600000000003
	.quad	0x3fe063476295208e              # double 0.51211899999999999
	.quad	0x3f83cab81f969e3d              # double 0.0096640000000000007
	.quad	0x3fde37585be1a826              # double 0.47212799999999999
	.quad	0x3fe27b9389b52008              # double 0.57758500000000002
	.quad	0x3fad7060bb2bba99              # double 0.057498
	.quad	0x3fcca38327674d16              # double 0.22373999999999999
	.quad	0x3fed20a958537e2c              # double 0.91023699999999996
	.quad	0x3fd8ed45e9185cee              # double 0.38948199999999999
	.quad	0x3fef31d2e0e30447              # double 0.97483200000000003
	.quad	0x3fedde9c0229a5ec              # double 0.93342400000000003
	.quad	0x3f759e6256366d7a              # double 0.0052779999999999997
	.quad	0x3fea317268d32831              # double 0.81853600000000004
	.quad	0x3fd288765ba6efc3              # double 0.28957899999999998
	.quad	0x3fd6ad2dcb1465e9              # double 0.35432000000000002
	.quad	0x3fbd131ec0b56755              # double 0.11357299999999999
	.quad	0x3f9dd22856605ee5              # double 0.029121999999999999
	.quad	0x3fb0bed740c4156e              # double 0.065411999999999998
	.quad	0x3feef3882278d0cc              # double 0.96722799999999997
	.quad	0x3fe8d36501e2584f              # double 0.77580499999999997
	.quad	0x3fee48d1958969a1              # double 0.94638900000000004
	.quad	0x3fc4896dd26b723f              # double 0.160444
	.quad	0x3fc4e4b87bdcf030              # double 0.16322999999999999
	.quad	0x3fcaa4a05dd8f92b              # double 0.208149
	.quad	0x3feea014727dcbde              # double 0.95704100000000003
	.quad	0x3fca7674d1633483              # double 0.20674000000000001
	.quad	0x3fe13471f79420b4              # double 0.53765200000000002
	.quad	0x3fef51b0ccbc05d5              # double 0.97872199999999998
	.quad	0x3fc8ff4ba51a005c              # double 0.19529099999999999
	.quad	0x3fec0ce0b912dba5              # double 0.87657200000000002
	.quad	0x3fefe9e5e2478855              # double 0.99730200000000002
	.quad	0x3fd915d2d01c0ca6              # double 0.391957
	.quad	0x3fc73d859c8c9321              # double 0.181565
	.quad	0x3fb3dc1615ebfa8f              # double 0.077576999999999993
	.quad	0x3fdc2bf5515054ac              # double 0.44018299999999999
	.quad	0x3fc347a5b0ff10ed              # double 0.15062400000000001
	.quad	0x3fe3d21ff2e48e8a              # double 0.61939999999999995
	.quad	0x3fe711600f34506a              # double 0.72087100000000004
	.quad	0x3feb5e02ea960b70              # double 0.85522600000000004
	.quad	0x3fe598090b417ca2              # double 0.67480899999999999
	.quad	0x3fd17cbf6e3f78bc              # double 0.27323900000000001
	.quad	0x3fbf58c08b75ea68              # double 0.122448
	.quad	0x3fe59fe43675ddd3              # double 0.67576800000000004
	.quad	0x3fe17f43419e3001              # double 0.54678499999999997
	.quad	0x3fe2c6b69db65ecc              # double 0.58675699999999997
	.quad	0x3fa563886594af4f              # double 0.041775
	.quad	0x3fd4ac9f2fdb8fde              # double 0.32303599999999999
	.quad	0x3fd8d91eeaa6d267              # double 0.38825199999999999
	.quad	0x3fbb16c1e364bec6              # double 0.10581599999999999
	.quad	0x3fefa65add9c27e9              # double 0.98905699999999996
	.quad	0x3fdcda9003eea20a              # double 0.45084000000000002
	.quad	0x3fd670d1fa333765              # double 0.350636
	.quad	0x3fd80c026cc1ca3a              # double 0.37573299999999998
	.quad	0x3fe39cd8127b2cc7              # double 0.612896
	.quad	0x3fdf9d495182a993              # double 0.493975
	.quad	0x3fd632b55ef1fddf              # double 0.34684500000000001
	.quad	0x3fee61198aeb80ed              # double 0.949353
	.quad	0x3fc9707182235b4f              # double 0.198744
	.quad	0x3fd969b17481b21c              # double 0.39707599999999998
	.quad	0x3fc0da76d97b30f9              # double 0.13166700000000001
	.quad	0x3fd5d20296b3354c              # double 0.340943
	.quad	0x3fb4b19a415f45e1              # double 0.080835000000000004
	.quad	0x3fcb3797460242d0              # double 0.21263399999999999
	.quad	0x3fec5810624dd2f2              # double 0.88575000000000004
	.quad	0x3fd307af20ea5b53              # double 0.297344
	.quad	0x3f9c100e6afcce1c              # double 0.027404999999999999
	.quad	0x3fdd4ffc9795b35b              # double 0.458007
	.quad	0x3fdc84230fcf80dc              # double 0.44556499999999999
	.quad	0x3fefc6ed245b291c              # double 0.99303300000000005
	.quad	0x3fc961565c2d2780              # double 0.19828299999999999
	.quad	0x3fd7d95dd4c76d11              # double 0.37264199999999997
	.quad	0x3feb8b7a1c25d074              # double 0.86077599999999998
	.quad	0x3fef2fe1da7b0b39              # double 0.97459499999999998
	.quad	0x3fe29fe43675ddd3              # double 0.58201800000000004
	.quad	0x3fdf3f705857afea              # double 0.48824699999999999
	.quad	0x3fdc3504c48adeec              # double 0.44073600000000002
	.quad	0x3feeae4b018611fd              # double 0.95877599999999996
	.quad	0x3fb63de6149c6f37              # double 0.086882000000000001
	.quad	0x3fcf9ab6d00b45ae              # double 0.24690899999999999
	.quad	0x3fe6b0b39192641b              # double 0.70906999999999998
	.quad	0x3fe1034d26fa3fcd              # double 0.53165300000000004
	.quad	0x3fc89888f861a60d              # double 0.19215499999999999
	.quad	0x3fe9874a771c970f              # double 0.79776499999999995
	.quad	0x3fd557bc7f77af64              # double 0.33348
	.quad	0x3fc251a86940357a              # double 0.14311699999999999
	.quad	0x3fe88d4562e09fe8              # double 0.76724499999999995
	.quad	0x3fefe366d7a56de3              # double 0.99650899999999997
	.quad	0x3febdb0142f61ed6              # double 0.87048400000000004
	.quad	0x3fe8eb1a2a4db164              # double 0.77869900000000003
	.quad	0x3fdee6afcce1c582              # double 0.48282999999999998
	.quad	0x3fe66c95bff04578              # double 0.70075500000000002
	.quad	0x3fdfbddfc9ff92f3              # double 0.49596400000000002
	.quad	0x3fef6136e71cda2b              # double 0.98061699999999996
	.quad	0x3fec0ac5c13fd0d0              # double 0.87631499999999996
	.quad	0x3fe02569b17481b2              # double 0.50456699999999999
	.quad	0x3fd1dff822bbecab              # double 0.27929500000000002
	.quad	0x3fee38a19c9d5a18              # double 0.94441299999999994
	.quad	0x3fec8da3c21187e8              # double 0.89229000000000003
	.quad	0x3fe48a5accd53049              # double 0.64188900000000004
	.quad	0x3fcf1e53a81dc0db              # double 0.243113
	.quad	0x3f93ea704bc27632              # double 0.019449000000000001
	.quad	0x3fcf255f3519bd40              # double 0.24332799999999999
	.quad	0x3fe08027d88c1db0              # double 0.51564399999999999
	.quad	0x3fc81cf7878b7a1c              # double 0.188384
	.quad	0x3fe1defc7a398202              # double 0.55847000000000002
	.quad	0x3fdc405f6ba0620b              # double 0.44142900000000002
	.quad	0x3fef0b630a91537a              # double 0.97014
	.quad	0x3fe8f7036c9c0a8d              # double 0.78015299999999999
	.quad	0x3fc2672fba01eeee              # double 0.14377400000000001
	.quad	0x3fecde1c15097c81              # double 0.90211300000000005
	.quad	0x3fed0c436fc158fb              # double 0.90774699999999997
	.quad	0x3fe60ff327aa68f5              # double 0.68944700000000003
	.quad	0x3fd3882278d0cc36              # double 0.30518400000000001
	.quad	0x3feb32b990afe60c              # double 0.84994199999999997
	.quad	0x3fc8df15a4acf313              # double 0.19430800000000001
	.quad	0x3fcb00bcbe61cfff              # double 0.21096000000000001
	.quad	0x3fc980ecfa69be0a              # double 0.19924700000000001
	.quad	0x3fc42ca9ac365450              # double 0.157613
	.quad	0x3fe8007789a45910              # double 0.75005699999999997
	.quad	0x3fe2e9a6f826edab              # double 0.59102200000000005
	.quad	0x3fe7d21ff2e48e8a              # double 0.74439999999999995
	.quad	0x3fca2b94d9407896              # double 0.204455
	.quad	0x3fd257e23f24d8fd              # double 0.28661399999999998
	.quad	0x3fe45a4ce8101f32              # double 0.63602300000000001
	.quad	0x3fea356da0168b5d              # double 0.81902200000000003
	.quad	0x3fd4dfc5cdd50a89              # double 0.326158
	.quad	0x3fcb9b56323bbc6f              # double 0.21567800000000001
	.quad	0x3fe0f39085f4a127              # double 0.52973199999999998
	.quad	0x3fe1654f7a919696              # double 0.54361700000000002
	.quad	0x3fd639abf3387161              # double 0.34727000000000002
	.quad	0x3fedfb3311a543f2              # double 0.93691400000000002
	.quad	0x3fd308aac96cc5fc              # double 0.297404
	.quad	0x3fd21a75cd0bb6ed              # double 0.28286499999999998
	.quad	0x3fd46a098915bdd7              # double 0.31897199999999998
	.quad	0x3fcc40639d5e4a38              # double 0.22071499999999999
	.quad	0x3fe8c2656abde3fc              # double 0.77373000000000002
	.quad	0x3fd9377e1b8ed1bf              # double 0.39401199999999997
	.quad	0x3fef7e5c91d14e3c              # double 0.98417500000000002
	.quad	0x3fcbfc4c165907d9              # double 0.218637
	.quad	0x3fea222f6a50d6b2              # double 0.81667299999999998
	.quad	0x3fe3888d6d3b6cbe              # double 0.61041900000000004
	.quad	0x3fe1958750c1b973              # double 0.54950299999999996
	.quad	0x3fdb62c343b70ef5              # double 0.42790299999999998
	.quad	0x3fd6b2fa93af74cd              # double 0.35467399999999999
	.quad	0x3fd69081c2e33eff              # double 0.35256999999999999
	.quad	0x3fd43358f2e05ccd              # double 0.31563400000000003
	.quad	0x3fe78f66a5508701              # double 0.73625499999999999
	.quad	0x3fd02db61bb05faf              # double 0.25279000000000001
	.quad	0x3fd3e0fc2eba27af              # double 0.31060700000000002
	.quad	0x3fcb2ab68cef672c              # double 0.21224100000000001
	.quad	0x3fe3c0c62e4d1a65              # double 0.617282
	.quad	0x3feb92c8c5004fb1              # double 0.86166799999999999
	.quad	0x3fc81711947cfa27              # double 0.18820400000000001
	.quad	0x3fe779dd3bafd977              # double 0.733626
	.quad	0x3fd6d8f0c77dd873              # double 0.356991
	.quad	0x3fd561565c2d2780              # double 0.33406599999999997
	.quad	0x3fe1ce379b77c02b              # double 0.556423
	.quad	0x3fdba500d5e8d541              # double 0.431946
	.quad	0x3fae8815e39713ad              # double 0.059631999999999998
	.quad	0x3fcf4f26aec0724b              # double 0.24460299999999999
	.quad	0x3fea212d77318fc5              # double 0.81655
	.quad	0x3fe8758e219652bd              # double 0.76434999999999997
	.quad	0x3fe6115592d98bf8              # double 0.68961600000000001
	.quad	0x3fbe2120e1f7d73d              # double 0.11769300000000001
	.quad	0x3fe7f1ef30a4e37a              # double 0.74828300000000003
	.quad	0x3feadd462c343b71              # double 0.83951100000000001
	.quad	0x3fd8a7fc32ebe597              # double 0.38525300000000001
	.quad	0x3fd089acbc8c0ce9              # double 0.25840299999999999
	.quad	0x3fc2cfe154434e33              # double 0.14696899999999999
	.quad	0x3fce81e4712e4085              # double 0.238339
	.quad	0x3fddedfe75bc44bf              # double 0.46765099999999998
	.quad	0x3fe8cadbc664d3bf              # double 0.77476299999999998
	.quad	0x3fddcdb7ae5796c0              # double 0.46568100000000001
	.quad	0x3fb9c2e33eff1950              # double 0.10063
	.quad	0x3fdae41d4b6a619e              # double 0.42017300000000002
	.quad	0x3fedfd566cf41f21              # double 0.93717499999999998
	.quad	0x3fe9503b81b64e05              # double 0.79104399999999997
	.quad	0x3fe1578a2a90cd42              # double 0.54193599999999997
	.quad	0x3fc074213a0c6b48              # double 0.12854399999999999
	.quad	0x3fc5e56473471f79              # double 0.17106299999999999
	.quad	0x3fd2bf3bea91d9b2              # double 0.29292200000000002
	.quad	0x3fd9ddc1e7967caf              # double 0.40416000000000002
	.quad	0x3fd95d6bebe1650a              # double 0.39632699999999998
	.quad	0x3fea000218def417              # double 0.81250100000000003
	.quad	0x3fef1e44fa05143c              # double 0.972445
	.quad	0x3fe6c308feac42ea              # double 0.71130800000000005
	.quad	0x3fd09463cfb3311a              # double 0.25905699999999998
	.quad	0x3fd5743a647fdc59              # double 0.33521899999999999
	.quad	0x3fdd5143bf727137              # double 0.45808500000000002
	.quad	0x3feb5655e28aa433              # double 0.85428899999999997
	.quad	0x3fe744b90214ad36              # double 0.72713899999999998
	.quad	0x3fe692ab68cef673              # double 0.70540400000000003
	.quad	0x3fe1e4da09cc319c              # double 0.55918599999999996
	.quad	0x3fe1f3b85e80bed7              # double 0.56100099999999997
	.quad	0x3fe8b33fc86cebbc              # double 0.77188100000000003
	.quad	0x3fd6abc5154866a1              # double 0.35423399999999999
	.quad	0x3fe39fb1e18efbb1              # double 0.61324400000000001
	.quad	0x3fe51476af89c5e7              # double 0.658748
	.quad	0x3fe9ec3fc43b2dd3              # double 0.81008899999999995
	.quad	0x3fc45d28d002e233              # double 0.15909300000000001
	.quad	0x3fe7c8366516db0e              # double 0.74319000000000002
	.quad	0x3fcb0110a137f38c              # double 0.21096999999999999
	.quad	0x3fe06279dd3bafd9              # double 0.51202099999999995
	.quad	0x3fc58655193708ab              # double 0.16816200000000001
	.quad	0x3feb925bb7b6bb13              # double 0.86161600000000005
	.quad	0x3fd9858793dd97f6              # double 0.39877499999999999
	.quad	0x3fe37c19c17225b7              # double 0.60889899999999997
	.quad	0x3fe16618ce2d1f1d              # double 0.543713
	.quad	0x3feca0fb224aada3              # double 0.89465099999999997
	.quad	0x3fc8621b7e0ac7da              # double 0.190494
	.quad	0x3fec66a337a80cfa              # double 0.88752900000000001
	.quad	0x3fde4ab606b7aa26              # double 0.47331000000000001
	.quad	0x3fed82278d0cc35d              # double 0.92213800000000001
	.quad	0x3fe59aeb3dd11be7              # double 0.67516100000000001
	.quad	0x3fe538fbca1059ea              # double 0.66320599999999996
	.quad	0x3fb5888f861a60d4              # double 0.084114999999999995
	.quad	0x3fc364a59c065b64              # double 0.151509
	.quad	0x3fcd928e0c9d9d34              # double 0.23103499999999999
	.quad	0x3fe11c1f85d744f6              # double 0.53468300000000002
	.quad	0x3feecde19fc2a887              # double 0.96263200000000004
	.quad	0x3fc66a65cf67b1c0              # double 0.175122
	.quad	0x3fb019b0ab2e1694              # double 0.062892000000000003
	.quad	0x3fec8cfe154434e3              # double 0.89221099999999998
	.quad	0x3fdb441bb8c32a8d              # double 0.42603200000000002
	.quad	0x3fd709289dadfb50              # double 0.35993399999999998
	.quad	0x3fef245d41fa7653              # double 0.97318899999999997
	.quad	0x3fc5e1c9b4139863              # double 0.17095299999999999
	.quad	0x3fbe72fba01eeed9              # double 0.11894200000000001
	.quad	0x3fc5150dae3e6c4c              # double 0.16470499999999999
	.quad	0x3feeefe4ffc9795b              # double 0.96678399999999997
	.quad	0x3fefaa5a469d7343              # double 0.989545
	.quad	0x3f8d712a0ec74320              # double 0.014376
	.quad	0x3feabed30f062d41              # double 0.83579400000000004
	.quad	0x3fe1befd00713f07              # double 0.55456399999999995
	.quad	0x3fe6ea854477ff15              # double 0.71612799999999999
	.quad	0x3fee623076c050be              # double 0.94948600000000005
	.quad	0x3fecbf5946c332f0              # double 0.89835799999999999
	.quad	0x3fd846455eaee200              # double 0.37928899999999999
	.quad	0x3fd30ced4e4c942d              # double 0.29766399999999998
	.quad	0x3fe06b52c9d16fca              # double 0.51310100000000003
	.quad	0x3fdd6b0531982880              # double 0.45965699999999998
	.quad	0x3feda7418d6909af              # double 0.92666700000000002
	.quad	0x3fe54988094e5d5b              # double 0.66522599999999998
	.quad	0x3fb8fd08d4bad7d8              # double 0.097611000000000003
	.quad	0x3fb69fbe76c8b439              # double 0.088374999999999995
	.quad	0x3fe76a67e846a5d7              # double 0.73173900000000003
	.quad	0x3fda1ebc83a96d4c              # double 0.40812599999999999
	.quad	0x3febfca42aed1394              # double 0.87458999999999997
	.quad	0x3fc0d184c271fff8              # double 0.13139400000000001
	.quad	0x3fe18826aa8eb463              # double 0.54786999999999997
	.quad	0x3fc6dca8e2e2b8c7              # double 0.17860899999999999
	.quad	0x3fe02e6644d87725              # double 0.505664
	.quad	0x3fc435f80991793a              # double 0.15789700000000001
	.quad	0x3fe1bbeec39799e5              # double 0.55419099999999999
	.quad	0x3fee3d1cc100e6b0              # double 0.94496000000000002
	.quad	0x3fd34883fd502257              # double 0.30130099999999999
	.quad	0x3fd8c0bdcad14a0a              # double 0.386764
	.quad	0x3fc666559f6ec5b0              # double 0.17499799999999999
	.quad	0x3fd9e429e0a41a26              # double 0.40455099999999999
	.quad	0x3fd2ba01eeed8905              # double 0.292603
	.quad	0x3f5cc532a497fa5d              # double 0.001756
	.quad	0x3fafd34df04ddb55              # double 0.062158999999999999
	.quad	0x3fe203968d759ee9              # double 0.56293800000000005
	.quad	0x3fd7eaee2003ab86              # double 0.37371399999999999
	.quad	0x3feccf7878b7a1c2              # double 0.90032599999999996
	.quad	0x3fb1f0d413122b7c              # double 0.070081000000000004
	.quad	0x3fe20b1dd5d3dc8c              # double 0.56385700000000005
	.quad	0x3fb8389f83be6602              # double 0.094614000000000003
	.quad	0x3fe692c6ac215b9a              # double 0.70541699999999996
	.quad	0x3fe9e612839042d9              # double 0.80933500000000003
	.quad	0x3fe753f1843c3a43              # double 0.72899700000000001
	.quad	0x3fe7cc575c0767d3              # double 0.74369399999999997
	.quad	0x3fb2c6ef3d3a1d32              # double 0.073347999999999997
	.quad	0x3fda408d8ec95bff              # double 0.41019
	.quad	0x3fe1273d5bab2181              # double 0.53603999999999996
	.quad	0x3fe32528ae74f2f1              # double 0.59828599999999998
	.quad	0x3fe24d898b2e9ccb              # double 0.57196499999999995
	.quad	0x3fc7e236c15d2d02              # double 0.18659100000000001
	.quad	0x3fecbc68661ae70c              # double 0.89799899999999999
	.quad	0x3fc99f1ae2da554c              # double 0.20016800000000001
	.quad	0x3fb570f7b9e060fe              # double 0.083754999999999996
	.quad	0x3fde454152b0a6fc              # double 0.47297699999999998
	.quad	0x3fe8959c49774257              # double 0.76826300000000003
	.quad	0x3fdd636f3b213e3e              # double 0.45919399999999999
	.quad	0x3fec65e679463cfb              # double 0.88743899999999998
	.quad	0x3feaf21d53cddd6e              # double 0.842055
	.quad	0x3fe323315d701d9f              # double 0.59804599999999997
	.quad	0x3fe206b9c304ccee              # double 0.56332099999999996
	.quad	0x3fe3716b11c6d1e1              # double 0.607595
	.quad	0x3fd1e7c49fd7a13c              # double 0.27977099999999999
	.quad	0x3fcf34bd76ee73e7              # double 0.24379700000000001
	.quad	0x3fcc052d666a9824              # double 0.21890799999999999
	.quad	0x3fe4b2a8c9b84556              # double 0.64680899999999997
	.quad	0x3fec1f0c34c1a8ac              # double 0.87878999999999996
	.quad	0x3fe2548ecd8dbced              # double 0.57282200000000005
	.quad	0x3fd5f240fa9c12f1              # double 0.34291100000000002
	.quad	0x3fe6e256366d7a57              # double 0.71512900000000001
	.quad	0x3fd5b1a6d698fe69              # double 0.33896799999999999
	.quad	0x3fe2a1511dffc548              # double 0.58219200000000004
	.quad	0x3feb9e7967caea74              # double 0.86309499999999994
	.quad	0x3fe17ff9b56323bc              # double 0.54687200000000002
	.quad	0x3fee6145953586cb              # double 0.94937400000000005
	.quad	0x3feb2dd15f02c4d6              # double 0.84934299999999996
	.quad	0x3fcded41b75a74c1              # double 0.23380300000000001
	.quad	0x3fe45694ccab3ede              # double 0.63556900000000005
	.quad	0x3fd5a593a2df9379              # double 0.338231
	.quad	0x3fe45e6149c6f36f              # double 0.636521
	.quad	0x3fd93f6c2699c7bd              # double 0.39449600000000001
	.quad	0x3fbb77c02afdda8c              # double 0.107296
	.quad	0x3fe2f640639d5e4a              # double 0.59255999999999998
	.quad	0x3fd514727dcbddba              # double 0.32937300000000003
	.quad	0x3fe833fe9fadafd1              # double 0.75634699999999999
	.quad	0x3fe6a036006d0d4a              # double 0.70705700000000005
	.quad	0x3fe12515ce9e5e24              # double 0.53577699999999995
	.quad	0x3feabd230b9dc2f4              # double 0.83558799999999999
	.quad	0x3fe353aa369fcf3e              # double 0.60396300000000003
	.quad	0x3fe5f79207d4e098              # double 0.68647100000000005
	.quad	0x3fcc0ac7da1ec4e7              # double 0.219079
	.quad	0x3fe565109070fbec              # double 0.66858700000000004
	.quad	0x3fea7d5454152b0a              # double 0.82779899999999995
	.quad	0x3f925e13b18dac26              # double 0.017937000000000002
	.quad	0x3fefb42aa9f7b5af              # double 0.99074300000000004
	.quad	0x3fc6490a350d2807              # double 0.17410400000000001
	.quad	0x3fef3927d45a5fc8              # double 0.97572700000000001
	.quad	0x3fda6f6512a94ff0              # double 0.413049
	.quad	0x3fe1615ebfa8f7db              # double 0.54313599999999995
	.quad	0x3fe366e221c8a7a4              # double 0.60630899999999999
	.quad	0x3fdf858ff7596851              # double 0.49252699999999999
	.quad	0x3fea5109070fbeba              # double 0.82239200000000001
	.quad	0x3fe478e9f6a93f29              # double 0.63976
	.quad	0x3fa5614df8b15726              # double 0.041758000000000003
	.quad	0x3fb5d8e864020818              # double 0.085341
	.quad	0x3fdadbc23315d702              # double 0.41966300000000001
	.quad	0x3fd0a0663c74fb55              # double 0.25979000000000002
	.quad	0x3fd234efcbd55608              # double 0.28448099999999998
	.quad	0x3fe9018a43bb40b3              # double 0.78143799999999997
	.quad	0x3fdf84406c00da1b              # double 0.49244700000000002
	.quad	0x3fe3face67d77fae              # double 0.62436599999999998
	.quad	0x3fd5dbdf8f473040              # double 0.34154499999999999
	.quad	0x3fc5f8fcd67fd3f6              # double 0.17166100000000001
	.quad	0x3fe0250b524399b3              # double 0.50452200000000003
	.quad	0x3fee5caf2d7f950c              # double 0.94881400000000004
	.quad	0x3fcf039ef0f16f44              # double 0.24229800000000001
	.quad	0x3fe480713f077ccc              # double 0.640679
	.quad	0x3fd12e09fe86833c              # double 0.26843499999999998
	.quad	0x3fe3bf20a73f748a              # double 0.61708099999999999
	.quad	0x3fd83f359ff4fd6d              # double 0.37885799999999997
	.quad	0x3fe1ab6d00b45ae6              # double 0.552176
	.quad	0x3fa5ae5ffa3b9ae1              # double 0.042346000000000002
	.quad	0x3fc5906466b1e5c1              # double 0.16846900000000001
	.quad	0x3fe0849235f80991              # double 0.51618299999999995
	.quad	0x3fd453d20f2becee              # double 0.31761600000000001
	.quad	0x3fd2a0f9096bb98c              # double 0.29107499999999997
	.quad	0x3fe70a6fc58ab92c              # double 0.720024
	.quad	0x3fe4bd1676640a6c              # double 0.64808200000000005
	.quad	0x3fe389dcf893faf4              # double 0.61057899999999998
	.quad	0x3fe69f340d4dc65c              # double 0.70693399999999995
	.quad	0x3fd610667f90d9d7              # double 0.34475099999999997
	.quad	0x3fe6e317268d3283              # double 0.715221
	.quad	0x3fdf3d5fdcdf6988              # double 0.48812100000000003
	.quad	0x3fe4d3198288051d              # double 0.65076900000000004
	.quad	0x3fddcd7060bb2bbb              # double 0.46566400000000002
	.quad	0x3fdbe3f78bbd3804              # double 0.43578899999999998
	.quad	0x3fe3e6ec9e236c16              # double 0.62193900000000002
	.quad	0x3fd6d68405b39e28              # double 0.35684300000000002
	.quad	0x3fef245f5ad96a6a              # double 0.97319
	.quad	0x3fe64ce5f7403dde              # double 0.69688700000000003
	.quad	0x3feb51bd61f5be5e              # double 0.85372800000000004
	.quad	0x3fcab4b72c5197a2              # double 0.20863999999999999
	.quad	0x3fc77414a4d2b2c0              # double 0.18323
	.quad	0x3fbb88ca3e7d1351              # double 0.107556
	.quad	0x3fb748a159817b96              # double 0.090952000000000005
	.quad	0x3fc859d99029ae4f              # double 0.19024199999999999
	.quad	0x3fbbfed20296b335              # double 0.109357
	.quad	0x3fb7125dd095af29              # double 0.090123999999999996
	.quad	0x3fd12c2bd7f51efb              # double 0.26832099999999998
	.quad	0x3fecd64f97edc7ef              # double 0.90116099999999999
	.quad	0x3fe9e492bc2fc697              # double 0.80915199999999998
	.quad	0x3fc26b7aa25d8d7a              # double 0.14390500000000001
	.quad	0x3fe52c6ac215b9a6              # double 0.66167200000000004
	.quad	0x3fe805be1a826245              # double 0.75070099999999995
	.quad	0x3fe5fcdee34fc611              # double 0.68711800000000001
	.quad	0x3fb89667b5f1bef5              # double 0.096045000000000005
	.quad	0x3fef6e2c98e53eb4              # double 0.98219900000000004
	.quad	0x3fb084b5dcc63f14              # double 0.064524999999999999
	.quad	0x3fe0ace4649906cd              # double 0.52110500000000004
	.quad	0x3fd7ab367a0f9097              # double 0.36982500000000001
	.quad	0x3fe266eeb702602d              # double 0.57506500000000005
	.quad	0x3fec2708ede54b49              # double 0.87976500000000002
	.quad	0x3fdc97bb73083559              # double 0.44676100000000002
	.quad	0x3fea496cc5fbf834              # double 0.82146300000000005
	.quad	0x3fe54b5fe542e558              # double 0.66545100000000001
	.quad	0x3fcd405f6ba0620b              # double 0.22852700000000001
	.quad	0x3feaf672b884406c              # double 0.84258399999999999
	.quad	0x3fe82edfe75bc44c              # double 0.755722
	.quad	0x3fd2a4bdba0a5269              # double 0.29130499999999998
	.quad	0x3fec3ed527e52157              # double 0.88266999999999995
	.quad	0x3fed8327674d1633              # double 0.92225999999999997
	.quad	0x3fe5f6e3f78bbd38              # double 0.686388
	.quad	0x3fe946cfc829cfdd              # double 0.78989399999999999
	.quad	0x3fc7af965b20b806              # double 0.18504599999999999
	.quad	0x3fdf74bc6a7ef9db              # double 0.49149999999999999
	.quad	0x3fee85942917507f              # double 0.95380600000000004
	.quad	0x3fe4b30728e92d56              # double 0.64685400000000004
	.quad	0x3fd69f01b866e43b              # double 0.35345500000000002
	.quad	0x3fcba16e7a311e86              # double 0.215864
	.quad	0x3fd042edbb59ddc2              # double 0.25408500000000001
	.quad	0x3fba4db163baba7c              # double 0.10274800000000001
	.quad	0x3fdda60913a4f872              # double 0.46325899999999998
	.quad	0x3febade225fa658c              # double 0.86497599999999996
	.quad	0x3fd1745bf26f1dc5              # double 0.272727
	.quad	0x3fc98b3f63c31df7              # double 0.19956199999999999
	.quad	0x3fd059b8023a6ce3              # double 0.25547599999999998
	.quad	0x3fd0f901083dbc23              # double 0.26519799999999999
	.quad	0x3feca495e17e34b9              # double 0.89509099999999997
	.quad	0x3fef1e0c5a8155d6              # double 0.972418
	.quad	0x3fe18622c4502689              # double 0.547624
	.quad	0x3febb33764f11b61              # double 0.86562700000000004
	.quad	0x3fd36c00da1a9329              # double 0.30346699999999999
	.quad	0x3fd8016ce789e775              # double 0.375087
	.quad	0x3f8b66f9335d249e              # double 0.01338
	.quad	0x3fd7190d173fb7a6              # double 0.360904
	.quad	0x3fe3b910c2c5e2ce              # double 0.61634100000000003
	.quad	0x3fea692b3cc4ac6d              # double 0.82533800000000002
	.quad	0x3fef77878b7a1c26              # double 0.98334100000000002
	.quad	0x3fe7f17df19d66ae              # double 0.74822900000000003
	.quad	0x3f978feef5ec80c7              # double 0.023009999999999999
	.quad	0x3fe800c73abc9470              # double 0.75009499999999996
	.quad	0x3fe3c6dc5d638866              # double 0.61802500000000005
	.quad	0x3fe90f40e5a35d68              # double 0.78311200000000003
	.quad	0x3fe6f26aec0724b7              # double 0.71709199999999995
	.quad	0x3fc1b0574b407033              # double 0.13819400000000001
	.quad	0x3fc7ccaf709b738e              # double 0.18593399999999999
	.quad	0x3fc14dcebfec13ba              # double 0.135187
	.quad	0x3fefadd590c0ad04              # double 0.98997000000000001
	.quad	0x3fe28c60cbf2b23a              # double 0.57963600000000004
	.quad	0x3fd9641700cd8559              # double 0.39673399999999998
	.quad	0x3f97353b4b2fa93b              # double 0.022664
	.quad	0x3fc5d6e04c059210              # double 0.17061999999999999
	.quad	0x3fe4e48626f60e0f              # double 0.65289600000000003
	.quad	0x3fc913cee9dd7ecc              # double 0.19591700000000001
	.quad	0x3fe3cfa26a22b389              # double 0.61909599999999998
	.quad	0x3fd23cd9a52263d8              # double 0.284964
	.quad	0x3fca89656eefa1e4              # double 0.207318
	.quad	0x3fee23bff8a8f3aa              # double 0.94186400000000003
	.quad	0x3fe8ce8fb00bcbe6              # double 0.77521499999999999
	.quad	0x3fb72734f82f5126              # double 0.090441999999999994
	.quad	0x3fe6d2a1f8e3ac0c              # double 0.71321199999999996
	.quad	0x3fe50d6909aed56b              # double 0.657887
	.quad	0x3fe8ffc115df6556              # double 0.78122000000000003
	.quad	0x3fe1acdc011d3672              # double 0.55235100000000004
	.quad	0x3feb1ae70c1333b9              # double 0.84703399999999995
	.quad	0x3fe366f2e8c0485a              # double 0.60631699999999999
	.quad	0x3fefef911cf355ce              # double 0.99799400000000005
	.quad	0x3fc4ceb356da0169              # double 0.16255800000000001
	.quad	0x3fe6a1e1d2178f69              # double 0.70726100000000003
	.quad	0x3fd8b9e060fe4799              # double 0.38634499999999999
	.quad	0x3fdfcd9620685554              # double 0.496923
	.quad	0x3fe127e52157689d              # double 0.53612000000000004
	.quad	0x3fbaaeafab53d641              # double 0.104228
	.quad	0x3fbe0232096787cf              # double 0.11722100000000001
	.quad	0x3fdbb00bcbe61d00              # double 0.43262
	.quad	0x3fcdf2cb641700ce              # double 0.23397200000000001
	.quad	0x3fbe8f08461f9f02              # double 0.11937
	.quad	0x3fc7b46fdeb52c9d              # double 0.185194
	.quad	0x3fe64fede97d06bc              # double 0.69725700000000002
	.quad	0x3fd2728a6117720d              # double 0.28824100000000002
	.quad	0x3fcbb09203a322af              # double 0.21632599999999999
	.quad	0x3fa3dad7518b0d0f              # double 0.038779000000000001
	.quad	0x3fd44245f5ad96a7              # double 0.31654500000000002
	.quad	0x3fd85ce9e5e24788              # double 0.38067099999999998
	.quad	0x3fd7b2f661f18ca0              # double 0.37029800000000002
	.quad	0x3fe202eec7c957cd              # double 0.56285799999999997
	.quad	0x3fdb5de15ca6ca04              # double 0.42760500000000001
	.quad	0x3fe981fd9ba1b196              # double 0.79711799999999999
	.quad	0x3fc5542a23bff8a9              # double 0.166631
	.quad	0x3fe2d3e707e175d1              # double 0.58836699999999997
	.quad	0x3fed977c88e79aae              # double 0.92474199999999995
	.quad	0x3fdcf2f555821294              # double 0.45232899999999998
	.quad	0x3fce4e2f37fbefd0              # double 0.236761
	.quad	0x3fae09fe86833c60              # double 0.05867
	.quad	0x3fe33e48a58b3f64              # double 0.60135300000000003
	.quad	0x3feab85e80bed741              # double 0.83500600000000003
	.quad	0x3fdf13a4f8726d05              # double 0.48557400000000001
	.quad	0x3fd7991361dc93ea              # double 0.36871799999999999
	.quad	0x3feba674080f98fa              # double 0.86406899999999998
	.quad	0x3fbaf77f27fe4bcb              # double 0.105339
	.quad	0x3fee83d577963993              # double 0.95359300000000002
	.quad	0x3fe306a4ca4f440b              # double 0.59456100000000001
	.quad	0x3fcd203a322af577              # double 0.227546
	.quad	0x3fd61565c2d27807              # double 0.34505599999999997
	.quad	0x3feb090b417ca212              # double 0.84485399999999999
	.quad	0x3fe786b9c304ccee              # double 0.73519599999999996
	.quad	0x3fee5983947496ab              # double 0.94842700000000002
	.quad	0x3fc79799e518f3ed              # double 0.18431400000000001
	.quad	0x3fe44901d19157ac              # double 0.63391200000000003
	.quad	0x3fe71c5c5718eb89              # double 0.72221199999999997
	.quad	0x3fe8088b545c78a7              # double 0.75104300000000002
	.quad	0x3feba89dadfb506e              # double 0.86433300000000002
	.quad	0x3fe634f82f512663              # double 0.69396599999999997
	.quad	0x3feab72e6a76965f              # double 0.83486099999999996
	.quad	0x3fdfee06d938151a              # double 0.49890299999999999
	.quad	0x3fe4e809d495182b              # double 0.65332500000000004
	.quad	0x3fc87674d1633483              # double 0.19111500000000001
	.quad	0x3fe17136a400fba9              # double 0.54507000000000005
	.quad	0x3feefef7c243dccf              # double 0.96862400000000004
	.quad	0x3fe6d0c3d25247cb              # double 0.71298399999999995
	.quad	0x3fe5ba797891e215              # double 0.67901299999999998
	.quad	0x3fc95ed06fef7c24              # double 0.19820599999999999
	.quad	0x3fd156fb8f57f738              # double 0.27093400000000001
	.quad	0x3f8deb52c9d16fca              # double 0.014609
	.quad	0x3fc2b5781c714fce              # double 0.14616299999999999
	.quad	0x3fed1a0f0a5efe93              # double 0.90943099999999999
	.quad	0x3feb222706d50657              # double 0.84791899999999998
	.quad	0x3fedbd2b6f19934f              # double 0.929342
	.quad	0x3feb9e236c15d2d0              # double 0.86305399999999999
	.quad	0x3fb9f02c4d65e460              # double 0.10132099999999999
	.quad	0x3fedeb0318b9346a              # double 0.93493800000000005
	.quad	0x3fe8e5dbfceb7889              # double 0.77805899999999995
	.quad	0x3fd2152b0a6fc58b              # double 0.28254200000000002
	.quad	0x3fe10be9424e5929              # double 0.53270399999999996
	.quad	0x3fe1092ccf6be37e              # double 0.53237000000000001
	.quad	0x3fe928869c66d374              # double 0.78619700000000003
	.quad	0x3fed65f5275ee99a              # double 0.91869599999999996
	.quad	0x3fe9d78811b1d92b              # double 0.80755999999999994
	.quad	0x3fefd3671ac14c66              # double 0.994556
	.quad	0x3fe5a65cf67b1c00              # double 0.67655799999999999
	.quad	0x3fdd06705c896dd2              # double 0.45351799999999998
	.quad	0x3fc9c5718eb89507              # double 0.20133799999999999
	.quad	0x3fd04db9c7368ad7              # double 0.25474400000000003
	.quad	0x3fe20754f3775b81              # double 0.56339499999999998
	.quad	0x3fe3fee6fb4c3c19              # double 0.62486600000000003
	.quad	0x3fea61cde5d18091              # double 0.82443900000000003
	.quad	0x3fdc7ab324851a87              # double 0.44498900000000002
	.quad	0x3fe5f9c1f85d744f              # double 0.68673799999999996
	.quad	0x3feacbff47735c18              # double 0.83740199999999998
	.quad	0x3feb7cb4f1e4b44a              # double 0.85897299999999999
	.quad	0x3fa0dc981beb1811              # double 0.032932999999999997
	.quad	0x3feaf0153bd16766              # double 0.84180699999999997
	.quad	0x3fe7be707e175d14              # double 0.74199700000000002
	.quad	0x3fea2c9081c2e33f              # double 0.81794
	.quad	0x3fe1eea854477ff1              # double 0.56038299999999996
	.quad	0x3fd9e4fb97bb7308              # double 0.40460099999999999
	.quad	0x3fd00ac3a860dcba              # double 0.25065700000000002
	.quad	0x3feec53b0813cab8              # double 0.96157599999999998
	.quad	0x3fd2b57c4e2f37fc              # double 0.292327
	.quad	0x3fec59ccfaeff5c7              # double 0.88596200000000003
	.quad	0x3fd45dd4c76d117b              # double 0.31822699999999998
	.quad	0x3fa175afaf859429              # double 0.034100999999999999
	.quad	0x3fcf8372e6a76966              # double 0.246199
	.quad	0x3fdc156191148fda              # double 0.438805
	.quad	0x3feb6e158750c1b9              # double 0.85718799999999995
	.quad	0x3fcf2ff4ba51a006              # double 0.24365100000000001
	.quad	0x3fcb7c02afdda8bd              # double 0.214722
	.quad	0x3fe35173fb7a5f42              # double 0.60369300000000004
	.quad	0x3fe8d2e514c22ee4              # double 0.77574399999999998
	.quad	0x3fe63780346dc5d6              # double 0.69427499999999998
	.quad	0x3fbf0fcf80dc3372              # double 0.121335
	.quad	0x3fde18d25edd0529              # double 0.47026499999999999
	.quad	0x3fc1b163baba7b91              # double 0.13822599999999999
	.quad	0x3fe1b2617c1bda51              # double 0.55302499999999999
	.quad	0x3fe48f5a1016ce79              # double 0.64249900000000004
	.quad	0x3fd36c0d6f544bb2              # double 0.30347000000000002
	.quad	0x3fec371da37ef5a9              # double 0.88172799999999996
	.quad	0x3fc060999dcb5782              # double 0.12794800000000001
	.quad	0x3fc2aeb80ecfa69c              # double 0.145957
	.quad	0x3fe24ef88b977857              # double 0.57213999999999998
	.quad	0x3fe7170d62bf11f9              # double 0.72156399999999998
	.quad	0x3fe66ba6aca79357              # double 0.70064099999999996
	.quad	0x3fdf7ae9ab29e4d6              # double 0.49187700000000001
	.quad	0x3fea4e618ce2d1f2              # double 0.82206800000000002
	.quad	0x3fedf78140dd3fe2              # double 0.93646300000000005
	.quad	0x3fd6fe08aefb2aae              # double 0.35925499999999999
	.quad	0x3fe68ee8d10f51ad              # double 0.70494500000000004
	.quad	0x3fd848e8a71de69b              # double 0.37945000000000001
	.quad	0x3fe81d3aa369fcf4              # double 0.75356800000000001
	.quad	0x3fe529845dc83233              # double 0.66131799999999996
	.quad	0x3fc904ee7c49fd7a              # double 0.195463
	.quad	0x3fea21fafc8b007a              # double 0.81664800000000004
	.quad	0x3feec2d6a9c560c8              # double 0.96128400000000002
	.quad	0x3fe194877681669d              # double 0.54938100000000001
	.quad	0x3fe407a4a48f96e1              # double 0.62593299999999996
	.quad	0x3fb8e93e1c9b413a              # double 0.097309000000000006
	.quad	0x3facdbdf8f473040              # double 0.056364999999999998
	.quad	0x3fe5208bfc2224ee              # double 0.660223
	.quad	0x3fd9eda661283904              # double 0.40512999999999999
	.quad	0x3fce92253111f0c3              # double 0.23883499999999999
	.quad	0x3fa48f10a99b6f5d              # double 0.040154000000000002
	.quad	0x3fe73b906466b1e6              # double 0.72602100000000003
	.quad	0x3fb2aae297396d09              # double 0.072919999999999999
	.quad	0x3fefb59ddc1e7968              # double 0.99092000000000002
	.quad	0x3fea5f7e80389f84              # double 0.82415700000000002
	.quad	0x3fe6c9e236c15d2d              # double 0.712144
	.quad	0x3fb4db48909289db              # double 0.081471000000000002
	.quad	0x3fd67c914b167ec8              # double 0.35135300000000003
	.quad	0x3fef0055fbb517a4              # double 0.96879099999999995
	.quad	0x3fe8224cc6822ff1              # double 0.75418700000000005
	.quad	0x3fd2ed17c5ef62fa              # double 0.29572100000000001
	.quad	0x3fe1c33d6c721922              # double 0.55508299999999999
	.quad	0x3fd02eec7c957cd4              # double 0.25286399999999998
	.quad	0x3feda6c1a048e044              # double 0.92660600000000004
	.quad	0x3fe69e7b80a9de8b              # double 0.70684599999999997
	.quad	0x3fefc3526527a205              # double 0.99259299999999994
	.quad	0x3fe65260f5e41d4b              # double 0.69755599999999995
	.quad	0x3fb95592d98bf7f0              # double 0.098961999999999994
	.quad	0x3fd9517a46173b86              # double 0.39559800000000001
	.quad	0x3fc55000c9539b89              # double 0.16650400000000001
	.quad	0x3fee05c896dd26b7              # double 0.93820599999999998
	.quad	0x3fef95054ac29bf1              # double 0.98694099999999995
	.quad	0x3fe3d069a4df47fa              # double 0.61919100000000005
	.quad	0x3fe619ef954eb13e              # double 0.690666
	.quad	0x3fe7fb00bcbe61d0              # double 0.74939
	.quad	0x3fd8dd97f62b6ae8              # double 0.38852500000000001
	.quad	0x3fe586f049a9973e              # double 0.67272200000000004
	.quad	0x3fe82e1693c03bc5              # double 0.75562600000000002
	.quad	0x3fe57a3db3bfb58d              # double 0.67117199999999999
	.quad	0x3fd799f5dfeb8d82              # double 0.36877199999999999
	.quad	0x3feaa9563a9f383f              # double 0.83317099999999999
	.quad	0x3f5b2a27f1b69121              # double 0.001658
	.quad	0x3fb60620ab713272              # double 0.086030999999999996
	.quad	0x3fb7be22e5de15ca              # double 0.092744999999999994
	.quad	0x3fe9afea3df6db94              # double 0.80272399999999999
	.quad	0x3fbb49f0e4da09cc              # double 0.106597
	.quad	0x3fe8f5ab7dc7abfc              # double 0.77998900000000004
	.quad	0x3fd1b2c83ec892ab              # double 0.27653699999999998
	.quad	0x3fd6ceaf251c193b              # double 0.35636499999999999
	.quad	0x3fa5117b5286b591              # double 0.041148999999999998
	.quad	0x3fd28ef34d6a161e              # double 0.28997499999999998
	.quad	0x3fdfe7bc3c5bd0e1              # double 0.49851899999999999
	.quad	0x3fd5e5109070fbec              # double 0.34210600000000002
	.quad	0x3fe695e5aff2a173              # double 0.70579800000000004
	.quad	0x3fd628d434a01abd              # double 0.34624199999999999
	.quad	0x3fe10d21bc126a66              # double 0.53285300000000002
	.quad	0x3feba98676a7264a              # double 0.86444399999999999
	.quad	0x3fd8a704bc27631b              # double 0.38519399999999998
	.quad	0x3feb743632c1f42c              # double 0.85793600000000003
	.quad	0x3feecee5abc0e38a              # double 0.96275599999999995
	.quad	0x3fd771fff79c8430              # double 0.36633300000000002
	.quad	0x3fd93d7d3910c2c6              # double 0.39437800000000001
	.quad	0x3fd68e7ddca4b125              # double 0.35244700000000001
	.quad	0x3fd2865d7cb2d906              # double 0.28945100000000001
	.quad	0x3fd7f13059641f64              # double 0.37409599999999998
	.quad	0x3fb0af4f0d844d01              # double 0.065174999999999997
	.quad	0x3fe3f17df19d66ae              # double 0.62322900000000003
	.quad	0x3fedbdbc23315d70              # double 0.92941099999999999
	.quad	0x3fd8b5c7cd898b2f              # double 0.38609500000000002
	.quad	0x3fe4abba98eda22f              # double 0.64596299999999995
	.quad	0x3fe0d7d3910c2c5e              # double 0.52634599999999998
	.quad	0x3fe57f5e84f09529              # double 0.67179800000000001
	.quad	0x3fc2bb5e0f7fcfc4              # double 0.146343
	.quad	0x3fcb3d4280ae1049              # double 0.212807
	.quad	0x3fca8bf3bea91d9b              # double 0.207396
	.quad	0x3fed3bff8a8f3a9b              # double 0.913574
	.quad	0x3fe4aeb3dd11be6e              # double 0.64632599999999996
	.quad	0x3fd62af1455219a8              # double 0.34637099999999998
	.quad	0x3feb4434e3369b9d              # double 0.85207599999999994
	.quad	0x3fd21fd9ba1b1961              # double 0.283194
	.quad	0x3fee5d5f56a7ac82              # double 0.94889800000000002
	.quad	0x3fd7780baa582dbe              # double 0.36670199999999997
	.quad	0x3fb916ca46e08f21              # double 0.098003999999999994
	.quad	0x3fe46466b1e5c0ba              # double 0.63725600000000004
	.quad	0x3fddffc5479d4d83              # double 0.46873599999999999
	.quad	0x3fe6a6698bb4d489              # double 0.70781400000000005
	.quad	0x3fc5d6d7e889c1b5              # double 0.17061899999999999
	.quad	0x3fa1707182235b4f              # double 0.034061000000000001
	.quad	0x3fa3e1650a45d420              # double 0.038829000000000002
	.quad	0x3fde6d117b5286b6              # double 0.47540700000000002
	.quad	0x3fda2c343b70ef56              # double 0.40894799999999998
	.quad	0x3fe0659f2ba9d1f6              # double 0.512405
	.quad	0x3fe84d20afa2f05a              # double 0.75941499999999995
	.quad	0x3fdaf79c842fa509              # double 0.42136299999999999
	.quad	0x3fe89f6cacd184c2              # double 0.76946099999999995
	.quad	0x3fe366e221c8a7a4              # double 0.60630899999999999
	.quad	0x3fe5cd099e0e7360              # double 0.68127899999999997
	.quad	0x3fdaca18bd66277c              # double 0.41858499999999998
	.quad	0x3fa4a8c154c985f0              # double 0.040349999999999997
	.quad	0x3fec1ac57e23f24e              # double 0.87826800000000005
	.quad	0x3feb7f62b6ae7d56              # double 0.85929999999999995
	.quad	0x3fc60c9539b88872              # double 0.172259
	.quad	0x3fe07ede97d06bbe              # double 0.51548700000000003
	.quad	0x3fb6b10ba6266fd6              # double 0.088638999999999995
	.quad	0x3fefe525892684cf              # double 0.99672199999999999
	.quad	0x3fea23ec02f2f987              # double 0.81688499999999997
	.quad	0x3feeb5f1bef49cf5              # double 0.95970999999999995
	.quad	0x3fa4ee5abc0e38a8              # double 0.040881000000000001
	.quad	0x3fe6af7d30ad46f6              # double 0.70892200000000005
	.quad	0x3fc50f7b9e060fe4              # double 0.16453499999999999
	.quad	0x3fcd9389b52007dd              # double 0.23106499999999999
	.quad	0x3fdaba2be0589acc              # double 0.41761300000000001
	.quad	0x3fc3a5daf07bfe7e              # double 0.153499
	.quad	0x3fe2643aa79bbadc              # double 0.574735
	.quad	0x3fe72b2bfdb4cc25              # double 0.72402
	.quad	0x3fe2a582dbe7f2c3              # double 0.582704
	.quad	0x3fb94b380cb6c7a8              # double 0.098804000000000003
	.quad	0x3fd38dde7a743a64              # double 0.30553399999999997
	.quad	0x3fee8181e03f7058              # double 0.95330899999999996
	.quad	0x3fd706af46aa087d              # double 0.35978300000000002
	.quad	0x3fe8dc0db2702a35              # double 0.77686200000000005
	.quad	0x3fa6279dd3bafd97              # double 0.043270999999999997
	.quad	0x3fe7e634117f8445              # double 0.74685100000000004
	.quad	0x3fe6fcfa26a22b39              # double 0.71838100000000005
	.quad	0x3fec1185cee17a03              # double 0.877139
	.quad	0x3fe4b1a2a4db163c              # double 0.64668400000000004
	.quad	0x3fe3d5ef1fddebd9              # double 0.619865
	.quad	0x3fcaab81f969e3c9              # double 0.20835899999999999
	.quad	0x3fdf7e56473471f8              # double 0.49208600000000002
	.quad	0x3fd160999dcb5782              # double 0.27152100000000001
	.quad	0x3fdce1fc08fa7a85              # double 0.451293
	.quad	0x3fedba68b19a415f              # double 0.92900499999999997
	.quad	0x3fd283126e978d50              # double 0.28925000000000001
	.quad	0x3fdc2d98bf7f0670              # double 0.44028299999999998
	.quad	0x3fe20e1932d6ece1              # double 0.56422099999999997
	.quad	0x3fe29f98b71b8aa0              # double 0.581982
	.quad	0x3fdcec28b2a6b0d9              # double 0.45191399999999998
	.quad	0x3fc798b71b8aa002              # double 0.18434800000000001
	.quad	0x3fd69a459103c8e2              # double 0.35316599999999998
	.quad	0x3fed3239a38fbca1              # double 0.912381
	.quad	0x3fdad6733ebbfd72              # double 0.41933900000000002
	.quad	0x3fcf233df2a9d628              # double 0.24326300000000001
	.quad	0x3fb67a743a647fdc              # double 0.087805999999999995
	.quad	0x3fe138fbca1059ea              # double 0.53820599999999996
	.quad	0x3fe9d753a3ec02f3              # double 0.807535
	.quad	0x3fed9c94f69ca9ef              # double 0.92536399999999996
	.quad	0x3fece76427c7c526              # double 0.90324599999999999
	.quad	0x3fe3d434a01abd1b              # double 0.61965400000000004
	.quad	0x3fe184662bae03b4              # double 0.54741200000000001
	.quad	0x3fd1ed288ce703b0              # double 0.28010000000000002
	.quad	0x3fab8f7985271bce              # double 0.053829000000000002
	.quad	0x3fecc651f3e89a89              # double 0.89920900000000004
	.quad	0x3fdb887a8d64d7f1              # double 0.430205
	.quad	0x3fd161c79b34a44c              # double 0.27159299999999997
	.quad	0x3f9e27179bfdf7e8              # double 0.029446
	.quad	0x3fe6a1c044284dfd              # double 0.70724500000000001
	.quad	0x3fba82e87d2c7b89              # double 0.10356
	.quad	0x3fdab8348f53c57a              # double 0.417493
	.quad	0x3fdcb6805a2d7300              # double 0.44863900000000001
	.quad	0x3fec4f7ec3547e07              # double 0.88470400000000005
	.quad	0x3fd5982cb20fb225              # double 0.33741300000000002
	.quad	0x3fe1bd944aa53fc0              # double 0.554392
	.quad	0x3fdf832fcac8e68e              # double 0.49238199999999999
	.quad	0x3fe26bce8533b107              # double 0.57565999999999995
	.quad	0x3fed754d1e96c3fc              # double 0.92056899999999997
	.quad	0x3feffa24894c447c              # double 0.99928499999999997
	.quad	0x3fd31acde19fc2a9              # double 0.29851100000000003
	.quad	0x3fc7003eea209aaa              # double 0.17969499999999999
	.quad	0x3fe4e5082cf52b91              # double 0.65295800000000004
	.quad	0x3fd18f8a4c1ebc84              # double 0.27438600000000002
	.quad	0x3fc3c58255b035bd              # double 0.15446499999999999
	.quad	0x3fe31ca5bd944aa5              # double 0.59724699999999997
	.quad	0x3fdee74afd545415              # double 0.48286699999999999
	.quad	0x3fdff11b60ae9681              # double 0.49909100000000001
	.quad	0x3fc7fafc8b0079a3              # double 0.18734700000000001
	.quad	0x3fee9420b3d4ae43              # double 0.95558200000000004
	.quad	0x3fa698dcdb37c99b              # double 0.044135000000000001
	.quad	0x3fefacd39da16617              # double 0.98984700000000003
	.quad	0x3fd9a9c560c7c0f4              # double 0.40098699999999998
	.quad	0x3fc7351159c49774              # double 0.181307
	.quad	0x3feb8709741d084f              # double 0.86023400000000005
	.quad	0x3fec3923a29c779a              # double 0.88197499999999995
	.quad	0x3fc99ce075f6fd22              # double 0.2001
	.quad	0x3fc17cf5f4e4430b              # double 0.136626
	.quad	0x3fef1efb6dca07f6              # double 0.97253199999999995
	.quad	0x3fc808d8ec95bff0              # double 0.18776999999999999
	.quad	0x3fd0a5375c8d9f90              # double 0.26008399999999998
	.quad	0x3fc613a92a305532              # double 0.17247499999999999
	.quad	0x3fe96414e7ee9143              # double 0.79346700000000003
	.quad	0x3fd3a515ce9e5e24              # double 0.30695099999999997
	.quad	0x3fc56eac8605681f              # double 0.16744000000000001
	.quad	0x3fb9dcb5781c7150              # double 0.101024
	.quad	0x3fe383cafb3b7521              # double 0.60983799999999999
	.quad	0x3fdcc8c9320d9946              # double 0.44975500000000002
	.quad	0x3fca73e681a9b8cc              # double 0.20666200000000001
	.quad	0x3fe561932d6ece14              # double 0.668161
	.quad	0x3fdc8359bc33f855              # double 0.445517
	.quad	0x3fdcfe21d96e9bbf              # double 0.453011
	.quad	0x3f88fa376922d949              # double 0.012196
	.quad	0x3fe66d3f9e7b80aa              # double 0.70083600000000001
	.quad	0x3f984fd2a62aa194              # double 0.023741999999999999
	.quad	0x3fd78cb07d0aed9a              # double 0.36796200000000001
	.quad	0x3fdec4827b6fe2e7              # double 0.480744
	.quad	0x3fe3ef47b677f6b2              # double 0.62295900000000004
	.quad	0x3fe46a2f48c2e771              # double 0.63796200000000003
	.quad	0x3fed66cd29131ec1              # double 0.91879900000000003
	.quad	0x3fdf232d2bb23572              # double 0.48652200000000001
	.quad	0x3fe979fec99f1ae3              # double 0.79614200000000002
	.quad	0x3fa2b2bfdb4cc250              # double 0.036519999999999997
	.quad	0x3fc1f01322f27350              # double 0.14013900000000001
	.quad	0x3fc83f811f4f50a0              # double 0.189438
	.quad	0x3f96687f455a7d24              # double 0.021883
	.quad	0x3fe60f2e05ccc89b              # double 0.68935299999999999
	.quad	0x3fcae99a62ed3522              # double 0.210254
	.quad	0x3fe82becedd48451              # double 0.75536199999999998
	.quad	0x3fe9d6c508b32ce9              # double 0.80746700000000005
	.quad	0x3fef7e36d22424a2              # double 0.98415699999999995
	.quad	0x3fdbf62b6ae7d567              # double 0.43690000000000001
	.quad	0x3fe4b04039abf338              # double 0.64651499999999995
	.quad	0x3fe95cee17a02fb6              # double 0.79259400000000002
	.quad	0x3fcd9c38b04ab607              # double 0.23133000000000001
	.quad	0x3fb868448cf7caa7              # double 0.095340999999999995
	.quad	0x3fc56df3f961804e              # double 0.16741800000000001
	.quad	0x3fee27913e81450f              # double 0.94233
	.quad	0x3fd5b7739f340d4e              # double 0.33932200000000001
	.quad	0x3fdc459103c8e25d              # double 0.44174600000000003
	.quad	0x3fb2122fad6cb535              # double 0.07059
	.quad	0x3fd0a76534373f31              # double 0.26021699999999998
	.quad	0x3fee22f48c2e770c              # double 0.94176700000000002
	.quad	0x3fe94dee34fc610f              # double 0.79076299999999999
	.quad	0x3fed86e9ff0cbaf9              # double 0.92271899999999996
	.quad	0x3fc7fa6defc7a398              # double 0.18733
	.quad	0x3fd35a2d72ffd1dd              # double 0.30237900000000001
	.quad	0x3feebbc6eb0b7c35              # double 0.96042199999999999
	.quad	0x3fece10f0e90bc7b              # double 0.90247299999999997
	.quad	0x3fd82556d19dece5              # double 0.37727899999999998
	.quad	0x3feb9a2403148777              # double 0.86256600000000005
	.quad	0x3fd1eab367a0f909              # double 0.27994999999999998
	.quad	0x3fe906e7e62dc6e3              # double 0.78209300000000004
	.quad	0x3fea2456f75d9a0f              # double 0.816936
	.quad	0x3fe08259e1f3a57f              # double 0.51591200000000004
	.quad	0x3fe13d944aa53fc0              # double 0.538767
	.quad	0x3fda55b035bd512f              # double 0.41148000000000001
	.quad	0x3fe8a5ebb7739f34              # double 0.77025399999999999
	.quad	0x3fbc3efae7924af1              # double 0.110336
	.quad	0x3fe64c35ce182667              # double 0.69680299999999995
	.quad	0x3fe522fad6cb5350              # double 0.66052
	.quad	0x3feb40a6b93ccd10              # double 0.85164200000000001
	.quad	0x3fe2293293d102bc              # double 0.56752899999999995
	.quad	0x3fe248ffb8b26395              # double 0.571411
	.quad	0x3f918e325d4a5df2              # double 0.017144
	.quad	0x3fd4180d3cff64d0              # double 0.31396800000000002
	.quad	0x3feedd0fa58f7122              # double 0.96448500000000004
	.quad	0x3fdb7af20ea5b531              # double 0.42937900000000001
	.quad	0x3febb8c32a8c9b84              # double 0.86630399999999996
	.quad	0x3fce811b1d92b7fe              # double 0.238315
	.quad	0x3febb3354c12274a              # double 0.86562600000000001
	.quad	0x3fd00c9d9d3458cd              # double 0.25076999999999999
	.quad	0x3fc73b29a1b9f98b              # double 0.18149299999999999
	.quad	0x3fd617df19d66adb              # double 0.34520699999999999
	.quad	0x3fe1196b76709fa5              # double 0.53435299999999997
	.quad	0x3fec1806f262888b              # double 0.87793299999999996
	.quad	0x3fd01b3aeee95747              # double 0.251662
	.quad	0x3feb19e94ab1d4fa              # double 0.84691300000000003
	.quad	0x3fdabbbe878fabda              # double 0.417709
	.quad	0x3feb990d173fb7a6              # double 0.86243300000000001
	.quad	0x3fe495d2d01c0ca6              # double 0.643289
	.quad	0x3fe786d0d49949e9              # double 0.73520700000000005
	.quad	0x3fe5a5c5f7c6759b              # double 0.67648600000000003
	.quad	0x3fef11a975afaf86              # double 0.97090600000000005
	.quad	0x3fe184c6a3bddfca              # double 0.547458
	.quad	0x3fe61b25f633ce64              # double 0.69081400000000004
	.quad	0x3fda3686a4ca4f44              # double 0.409578
	.quad	0x3fd18915bdd76684              # double 0.27399200000000001
	.quad	0x3fbce94ee392e1ef              # double 0.11293499999999999
	.quad	0x3fdec8711d798d8b              # double 0.48098400000000002
	.quad	0x3fe2815e39713ad6              # double 0.57829200000000003
	.quad	0x3fe760008637bd06              # double 0.73046900000000003
	.quad	0x3fdc0307f23cc8de              # double 0.43768499999999999
	.quad	0x3fc796f21f6cacd2              # double 0.18429400000000001
	.quad	0x3fe9751697f1f9ad              # double 0.795543
	.quad	0x3fe73369b9d7fd82              # double 0.72502599999999995
	.quad	0x3fe9fabda0dfdef8              # double 0.81185799999999997
	.quad	0x3fe4a8e71476af8a              # double 0.64561800000000003
	.quad	0x3fdbe0daa0cae643              # double 0.43559900000000001
	.quad	0x3fd3fb9bed30f063              # double 0.31223200000000001
	.quad	0x3fde2df9378ee286              # double 0.47155599999999998
	.quad	0x3fe5970d62bf11f9              # double 0.67468899999999998
	.quad	0x3fdc838c111ada77              # double 0.44552900000000001
	.quad	0x3fe1637154003255              # double 0.54338900000000001
	.quad	0x3fe63dfd2630ec31              # double 0.69506699999999999
	.quad	0x3fc065c70435efa6              # double 0.128106
	.quad	0x3fed15208e150119              # double 0.908829
	.quad	0x3fe3545e9185cee1              # double 0.60404899999999995
	.quad	0x3fe90fa58f7121ab              # double 0.78315999999999997
	.quad	0x3fdde492bc2fc697              # double 0.46707599999999999
	.quad	0x3fef23b3636f3b21              # double 0.97310799999999997
	.quad	0x3feff1d1d4738a3b              # double 0.99826899999999996
	.quad	0x3fd290d9d7774aba              # double 0.29009099999999999
	.quad	0x3fe9bc2fc69728a6              # double 0.80422199999999999
	.quad	0x3fe98262456f75da              # double 0.79716600000000004
	.quad	0x3feca2f2734f82f5              # double 0.89489099999999999
	.quad	0x3fee7fda4052d667              # double 0.95310700000000004
	.quad	0x3fa0b220791c4b90              # double 0.032608999999999999
	.quad	0x3fef8ecfa69be09c              # double 0.98618300000000003
	.quad	0x3fe0e3e4abe6a338              # double 0.52781900000000004
	.quad	0x3fece1719f7f8ca8              # double 0.90251999999999999
	.quad	0x3fe264c942d490e6              # double 0.57480299999999995
	.quad	0x3fda1322f2734f83              # double 0.407418
	.quad	0x3fdbf5f91600f345              # double 0.436888
	.quad	0x3fc9fd933e35c5b5              # double 0.20305100000000001
	.quad	0x3fe934091c087443              # double 0.78760200000000002
	.quad	0x3fe84a148ba83f4f              # double 0.75904300000000002
	.quad	0x3fa958b827fa1a0d              # double 0.049505
	.quad	0x3fe84669057d1783              # double 0.75859500000000002
	.quad	0x3fd39531550ca1cf              # double 0.305981
	.quad	0x3fe45fc19c17225b              # double 0.63668899999999995
	.quad	0x3fc8a8da7f3cf701              # double 0.19265299999999999
	.quad	0x3fe40029f16b11c7              # double 0.62502000000000002
	.quad	0x3fe6ce4217d2849d              # double 0.71267800000000003
	.quad	0x3fee6468cac4b4d0              # double 0.94975699999999996
	.quad	0x3fac8711d798d8a9              # double 0.055717999999999997
	.quad	0x3fc802d9cf13ceea              # double 0.187587
	.quad	0x3f729670196d8f50              # double 0.0045380000000000004
	.quad	0x3fb26f3f52fc2657              # double 0.072010000000000005
	.quad	0x3f3d29dc725c3dee              # double 4.4499999999999997E-4
	.quad	0x3fe5855757d5a9eb              # double 0.67252699999999999
	.quad	0x3fee5efa615a8deb              # double 0.94909399999999999
	.quad	0x3fe27c4e2f37fbf0              # double 0.57767400000000002
	.quad	0x3fe39e3a7daa4fca              # double 0.61306499999999997
	.quad	0x3fe2158537e2c55d              # double 0.56512700000000005
	.quad	0x3fb6deebb341e14c              # double 0.089339000000000002
	.quad	0x3fe760242d05f288              # double 0.73048599999999997
	.quad	0x3feb7b07075b3e14              # double 0.85876799999999997
	.quad	0x3fd5c82e019b0ab3              # double 0.34034300000000001
	.quad	0x3fed44b4d056c509              # double 0.91463700000000003
	.quad	0x3fcd8433d6c72192              # double 0.230597
	.quad	0x3fe1d7e02645e4e7              # double 0.55760200000000004
	.quad	0x3fa6a1e81cb46bad              # double 0.044204
	.quad	0x3fd80c5eb313be23              # double 0.37575500000000001
	.quad	0x3fe825c810a569b1              # double 0.75461199999999995
	.quad	0x3fedfe670e2c12ae              # double 0.93730500000000005
	.quad	0x3fe43e76c8b43958              # double 0.63262499999999999
	.quad	0x3fdb22a6f3f52fc2              # double 0.42398999999999998
	.quad	0x3fecdc5b4aa9717e              # double 0.90189900000000001
	.quad	0x3fca31ceaf251c19              # double 0.20464499999999999
	.quad	0x3fe9c2f1ed17c5ef              # double 0.80504699999999996
	.quad	0x3fea13986338b47c              # double 0.81489199999999994
	.quad	0x3fe3d73215fcc187              # double 0.62001899999999999
	.quad	0x3fc129dc725c3dee              # double 0.13408999999999999
	.quad	0x3fdaf28848387df6              # double 0.42105300000000001
	.quad	0x3fe4f9fec99f1ae3              # double 0.65551700000000002
	.quad	0x3fe115d0b73d188f              # double 0.53391299999999997
	.quad	0x3fd851c193b3a68b              # double 0.37998999999999999
	.quad	0x3fe945132f87ad08              # double 0.789682
	.quad	0x3fc843675ddd2ae9              # double 0.189557
	.quad	0x3fe51b8ed1bf7ad5              # double 0.65961400000000003
	.quad	0x3feab1ceaf251c19              # double 0.83420499999999997
	.quad	0x3fdd7735c182ecaf              # double 0.460401
	.quad	0x3fec3a6266fd651b              # double 0.88212699999999999
	.quad	0x3fe105ff1d81f106              # double 0.53198199999999995
	.quad	0x3feaea8112ba16e8              # double 0.84112600000000004
	.quad	0x3fe1067ad8e43244              # double 0.53204099999999999
	.quad	0x3fe7324c8366516e              # double 0.72489000000000003
	.quad	0x3fe9dd56f32bdc27              # double 0.80826900000000002
	.quad	0x3fc06d373affb04f              # double 0.128333
	.quad	0x3fec956c0d6f544c              # double 0.89324000000000003
	.quad	0x3fe914f69ca9ef52              # double 0.78380899999999998
	.quad	0x3fcd9e8c47a17f41              # double 0.231401
	.quad	0x3fed2bd7f51efb6e              # double 0.91160200000000002
	.quad	0x3fe8c56d5cfaacda              # double 0.77410000000000001
	.quad	0x3fd2c63f141205bc              # double 0.29335
	.quad	0x3fef69d7342edbb6              # double 0.98167000000000004
	.quad	0x3fdf0d801b435265              # double 0.48519899999999999
	.quad	0x3fe6c6bf01322f27              # double 0.71176099999999998
	.quad	0x3fe0d06dd69d3027              # double 0.52544299999999999
	.quad	0x3fb51f0c34c1a8ac              # double 0.082504999999999995
	.quad	0x3fd2c322291fb3fa              # double 0.29315999999999998
	.quad	0x3fe6b54c122749f1              # double 0.70963100000000001
	.quad	0x3fe7f88db0574b40              # double 0.74909099999999995
	.quad	0x3f87507e9d94d0dd              # double 0.011384
	.quad	0x3fe82d6cb5350093              # double 0.75554500000000002
	.quad	0x3fd4d55e6bc621b8              # double 0.32552300000000001
	.quad	0x3fef6d938151a438              # double 0.98212600000000005
	.quad	0x3fe1c929aa1d755c              # double 0.55580600000000002
	.quad	0x3fc0c39ffd60e94f              # double 0.13097
	.quad	0x3fd8f705857afea4              # double 0.39007700000000001
	.quad	0x3fec7b71fbc5de9c              # double 0.89006899999999999
	.quad	0x3fe3e24bba12b5e5              # double 0.62137399999999998
	.quad	0x3f8e40c8472c0e7c              # double 0.014772
	.quad	0x3fd2b8b26394face              # double 0.29252299999999998
	.quad	0x3fdaf90539fba451              # double 0.42144900000000002
	.quad	0x3fe9b94face67d78              # double 0.803871
	.quad	0x3f9dc8754f3775b8              # double 0.029085
	.quad	0x3fc1991bc5586445              # double 0.137485
	.quad	0x3fd104bc27631b58              # double 0.26591399999999998
	.quad	0x3fa48323358f2e06              # double 0.040063000000000001
	.quad	0x3fdffd2e94680171              # double 0.49982799999999999
	.quad	0x3fe5f531db445ed5              # double 0.68618100000000004
	.quad	0x3fec6e9bbf0dc769              # double 0.88850200000000001
	.quad	0x3fd305f6ba0620ab              # double 0.29723899999999998
	.quad	0x3fbfb58d1526d8b2              # double 0.123864
	.quad	0x3fe331b584b1ab08              # double 0.59981799999999996
	.quad	0x3fd3a89331a08bfc              # double 0.30716399999999999
	.quad	0x3fe658a548238540              # double 0.69832099999999997
	.quad	0x3fe9c523f67f4dbe              # double 0.805315
	.quad	0x3fef42aed1394318              # double 0.97689000000000003
	.quad	0x3fef7826edaa92e6              # double 0.98341699999999999
	.quad	0x3fee365881a15550              # double 0.94413400000000003
	.quad	0x3fc3aade657b84dc              # double 0.15365200000000001
	.quad	0x3fe9f9c1f85d744f              # double 0.81173799999999996
	.quad	0x3fe02702a3486f05              # double 0.50476200000000004
	.quad	0x3fe60c4156e264e5              # double 0.68899600000000005
	.quad	0x3fb2962cfd8f0c78              # double 0.072604000000000002
	.quad	0x3fc8116659d12cae              # double 0.188031
	.quad	0x3fecd425f202107b              # double 0.90089699999999995
	.quad	0x3fcc08e15011904b              # double 0.21902099999999999
	.quad	0x3fe58b1feeb2d0a2              # double 0.67323299999999997
	.quad	0x3fe4965f5275ee9a              # double 0.64335600000000004
	.quad	0x3fcd7edc7ef177a7              # double 0.230434
	.quad	0x3fb124f227d028a2              # double 0.066970000000000002
	.quad	0x3fd0417ca2120e1f              # double 0.25399699999999997
	.quad	0x3fdf8d1958969a0b              # double 0.49298700000000001
	.quad	0x3fee7023e9ea1405              # double 0.95118899999999995
	.quad	0x3faa3854046412cf              # double 0.051211
	.quad	0x3fdda2014727dcbe              # double 0.46301300000000001
	.quad	0x3fdcc8f75536933a              # double 0.449766
	.quad	0x3fd871e29b6b2af1              # double 0.38195099999999998
	.quad	0x3fb4cd9620685554              # double 0.081262000000000001
	.quad	0x3feedfc3b4f61672              # double 0.96481499999999998
	.quad	0x3fde577963992c8c              # double 0.47408899999999998
	.quad	0x3fd81c10d7be9857              # double 0.37671300000000002
	.quad	0x3feb6b228dc981bf              # double 0.85682800000000003
	.quad	0x3fe86efa1e3eaf68              # double 0.76354699999999998
	.quad	0x3fce3821af7d30ad              # double 0.23608799999999999
	.quad	0x3fe46b463497b741              # double 0.63809499999999997
	.quad	0x3fcbb0ab2e1693c0              # double 0.21632899999999999
	.quad	0x3fc923810e8858ff              # double 0.19639599999999999
	.quad	0x3fbe71cda2b5a20e              # double 0.118924
	.quad	0x3fe7e994185058de              # double 0.74726300000000001
	.quad	0x3fa1d084e831ad21              # double 0.034793999999999999
	.quad	0x3fe7d0c3d25247cb              # double 0.74423399999999995
	.quad	0x3fec06d0d49949e9              # double 0.87583200000000005
	.quad	0x3fc44766c6de7642              # double 0.15842899999999999
	.quad	0x3fe47e43675ddd2b              # double 0.64041300000000001
	.quad	0x3fe533c60029f16b              # double 0.66256999999999999
	.quad	0x3fd0faeff5c6c11a              # double 0.265316
	.quad	0x3fe20effe2a3cea7              # double 0.56433100000000003
	.quad	0x3fed0f88333fc86d              # double 0.90814600000000001
	.quad	0x3fe5211233df2a9d              # double 0.66028699999999996
	.quad	0x3fed1d81f10667f9              # double 0.90985199999999999
	.quad	0x3fdaa7fc32ebe597              # double 0.41650300000000001
	.quad	0x3fce83558a761028              # double 0.23838300000000001
	.quad	0x3fd650763a190082              # double 0.348661
	.quad	0x3fe3a2be0589acbd              # double 0.61361600000000005
	.quad	0x3fcea4a8c154c986              # double 0.2394
	.quad	0x3fd76312f4cf4a56              # double 0.36542200000000002
	.quad	0x3feeee2867275686              # double 0.96657199999999999
	.quad	0x3fed6277c45cbbc3              # double 0.91827000000000003
	.quad	0x3fce3393ab430f49              # double 0.23594899999999999
	.quad	0x3fc6fbd273d5bab2              # double 0.17956
	.quad	0x3fd719c5a3e39f77              # double 0.36094799999999999
	.quad	0x3fd6517a46173b86              # double 0.34872300000000001
	.quad	0x3fe0dde37585be1b              # double 0.52708600000000005
	.quad	0x3fd3fcf80dc33722              # double 0.31231500000000001
	.quad	0x3fce33f85510d38d              # double 0.235961
	.quad	0x3fbb94face67d780              # double 0.107742
	.quad	0x3fc5e1b8ed1bf7ad              # double 0.17095099999999999
	.quad	0x3fe27739f340d4dc              # double 0.57705399999999996
	.quad	0x3fe10a2ca9ac3654              # double 0.53249199999999997
	.quad	0x3fe9b1337eb28d86              # double 0.80288099999999996
	.quad	0x3f90eb67c286f8ad              # double 0.016522999999999999
	.quad	0x3fe019bb2788db05              # double 0.50314099999999995
	.quad	0x3fc4fcb4f1e4b44a              # double 0.163962
	.quad	0x3f99ee88df37329c              # double 0.025323999999999999
	.quad	0x3fdc988d2a1f8e3b              # double 0.44681100000000001
	.quad	0x3fe351287c200c0f              # double 0.603657
	.quad	0x3fefb0d0edc3bd5a              # double 0.99033400000000005
	.quad	0x3f935696e58a32f4              # double 0.018884999999999999
	.quad	0x3fecab649d388a8b              # double 0.895922
	.quad	0x3fcc6e5cd4ed2cbf              # double 0.22211800000000001
	.quad	0x3fd825fe974a3401              # double 0.37731900000000002
	.quad	0x3fc7bb1f255f351a              # double 0.18539800000000001
	.quad	0x3fd20c176577531e              # double 0.28198800000000002
	.quad	0x3fe2942f61ed5ae2              # double 0.58058900000000002
	.quad	0x3f9e6d15ad106ee3              # double 0.029713
	.quad	0x3feb95fcc1871e6d              # double 0.86205900000000002
	.quad	0x3fdc8f4f93bc0a07              # double 0.446247
	.quad	0x3fcd6ee73e681a9c              # double 0.22994700000000001
	.quad	0x3fe22743a647fdc6              # double 0.56729300000000005
	.quad	0x3fb6832b990afe61              # double 0.087939000000000003
	.quad	0x3fddc52e72da1230              # double 0.46516000000000002
	.quad	0x3fe994877681669d              # double 0.79938100000000001
	.quad	0x3fb3f67f4dbdf8f4              # double 0.077979999999999994
	.quad	0x3fed592b7fe08af0              # double 0.91713500000000003
	.quad	0x3fe833c60029f16b              # double 0.75631999999999999
	.quad	0x3fd0ae74f2f123c4              # double 0.26064799999999999
	.quad	0x3fc11e4b44a1f080              # double 0.13373699999999999
	.quad	0x3feda18bd66277c4              # double 0.92596999999999995
	.quad	0x3fa79e59f2ba9d1f              # double 0.046129999999999997
	.quad	0x3f819695d91ab8e9              # double 0.0085880000000000001
	.quad	0x3fd0c332f01754b0              # double 0.26191399999999998
	.quad	0x3fbcf2ae07e5a78f              # double 0.113078
	.quad	0x3fdc655193708aad              # double 0.44368400000000002
	.quad	0x3fdfaef2c7325919              # double 0.49505300000000002
	.quad	0x3fdfb6e935b91f71              # double 0.49553900000000001
	.quad	0x3f98cc9a77e5eaab              # double 0.024218
	.quad	0x3fe9e264e48626f6              # double 0.80888599999999999
	.quad	0x3fc9de6149c6f36f              # double 0.202099
	.quad	0x3f97bf61aa3f034b              # double 0.023191
	.quad	0x3fe2b2314013ec46              # double 0.58425199999999999
	.quad	0x3fe25c22ab25b318              # double 0.57374700000000001
	.quad	0x3fb1daad601ffb48              # double 0.069742999999999999
	.quad	0x3fe9b0ab2e1693c0              # double 0.80281599999999997
	.quad	0x3fd66e503fb37436              # double 0.35048299999999999
	.quad	0x3fe3a682b6284599              # double 0.61407599999999996
	.quad	0x3fd47fe4bcad9ad8              # double 0.32030599999999998
	.quad	0x3fa5688377186552              # double 0.041813000000000003
	.quad	0x3fee0ded288ce704              # double 0.93920000000000003
	.quad	0x3fc8013ec460ed81              # double 0.18753800000000001
	.quad	0x3fdc7c49fd7a13c2              # double 0.44508599999999998
	.quad	0x3fbfe80389f83be6              # double 0.12463399999999999
	.quad	0x3fdeaaf78feef5ed              # double 0.47918500000000003
	.quad	0x3fbb4c8ffb8b2639              # double 0.106637
	.quad	0x3fcfb845564b6630              # double 0.247811
	.quad	0x3febdaa2e3c536d6              # double 0.87043899999999996
	.quad	0x3fed057afea3df6e              # double 0.90691900000000003
	.quad	0x3fb87021d10b1fef              # double 0.095461000000000004
	.quad	0x3fe9b586ca89fc6e              # double 0.80340900000000004
	.quad	0x3fed12c6ac215b9a              # double 0.90854199999999996
	.quad	0x3fe0144cbe1eb420              # double 0.50247799999999998
	.quad	0x3fe441b328b6d86f              # double 0.63302000000000003
	.quad	0x3fa15d701d9f4d38              # double 0.033916000000000002
	.quad	0x3fdf59c49774256c              # double 0.48985400000000001
	.quad	0x3fe2205143bf7271              # double 0.56644499999999998
	.quad	0x3fcffb6134ce3de6              # double 0.249859
	.quad	0x3fe2e91ea78af3e4              # double 0.59095699999999995
	.quad	0x3fc82d9cf13cee9e              # double 0.188892
	.quad	0x3fac371da37ef5a9              # double 0.055107999999999997
	.quad	0x3fc150870110a138              # double 0.13527
	.quad	0x3fe3b66d7a56de33              # double 0.61601899999999998
	.quad	0x3fb309310129cbab              # double 0.074358999999999995
	.quad	0x3fde5aea3161a1dc              # double 0.47429900000000003
	.quad	0x3fc2b8cfbfc6540d              # double 0.14626500000000001
	.quad	0x3feafee4e26d4802              # double 0.843615
	.quad	0x3febd0e560418937              # double 0.86924999999999997
	.quad	0x3fe7112ba16e7a31              # double 0.72084599999999999
	.quad	0x3fda4a44c7b02d5a              # double 0.41078300000000001
	.quad	0x3fef4ece9a2c6690              # double 0.97836999999999996
	.quad	0x3fe370e4da09cc32              # double 0.60753100000000004
	.quad	0x3fec513d74d594f2              # double 0.88491699999999995
	.quad	0x3fd55471715c63ae              # double 0.33327899999999999
	.quad	0x3fd3eff9f87f023f              # double 0.31152200000000002
	.quad	0x3fe43df6db940fed              # double 0.63256400000000002
	.quad	0x3feb53bd1676640a              # double 0.85397199999999995
	.quad	0x3fe41932d6ece13f              # double 0.62807599999999997
	.quad	0x3fec2c5c13fd0d06              # double 0.88041499999999995
	.quad	0x3fed90342aa9f7b6              # double 0.92385300000000004
	.quad	0x3fbcd466f5019f3c              # double 0.11261599999999999
	.quad	0x3fe83aba7b9170d6              # double 0.75716899999999998
	.quad	0x3fbfe9424e592967              # double 0.124653
	.quad	0x3fc6697aeddce7cd              # double 0.175094
	.quad	0x3fc451eb851eb852              # double 0.15875
	.quad	0x3fdad5cfaacd9e84              # double 0.41930000000000001
	.quad	0x3fcbc7b45f17bd8c              # double 0.217032
	.quad	0x3fb5ee568a50507a              # double 0.085667999999999994
	.quad	0x3fd9cefed634549b              # double 0.40325899999999998
	.quad	0x3fca55d1c3ac929b              # double 0.20574400000000001
	.quad	0x3fb2a68f4b61fe22              # double 0.072854000000000002
	.quad	0x3fd6bfc6540cc78f              # double 0.35545500000000002
	.quad	0x3fe92d85dfa871a4              # double 0.78680700000000003
	.quad	0x3fe442ca148ba83f              # double 0.63315299999999997
	.quad	0x3fe9adcb1465e892              # double 0.80246499999999998
	.quad	0x3fe8576683c297c0              # double 0.76066900000000004
	.quad	0x3fe2a8f190d173fb              # double 0.58312299999999995
	.quad	0x3fe44d44567125dd              # double 0.634432
	.quad	0x3fe3457c0b135979              # double 0.60223199999999999
	.quad	0x3fbaad1d041cc533              # double 0.104204
	.quad	0x3fe675ff609dcf89              # double 0.70190399999999997
	.quad	0x3facba94bbe4473d              # double 0.056111000000000001
	.quad	0x3fe067924af0bf1a              # double 0.51264299999999996
	.quad	0x3fea4ff43419e300              # double 0.82225999999999999
	.quad	0x3feb3b03e20ccff2              # double 0.85095399999999999
	.quad	0x3fd84384ba0e8427              # double 0.37912099999999999
	.quad	0x3fe90fa9c12f09d9              # double 0.78316200000000002
	.quad	0x3fe29c8c9320d994              # double 0.58160999999999996
	.quad	0x3feac2d8c2a454de              # double 0.83628499999999995
	.quad	0x3fd1ae2541d8e864              # double 0.276254
	.quad	0x3fc343e100607810              # double 0.150509
	.quad	0x3fd6bd7f51efb6dd              # double 0.35531600000000002
	.quad	0x3fdbcbaf965b20b8              # double 0.434307
	.quad	0x3fe2221a719b4dcf              # double 0.56666300000000003
	.quad	0x3f8f36262cba732e              # double 0.01524
	.quad	0x3fd9a2ec28b2a6b1              # double 0.40056900000000001
	.quad	0x3fdae95b78cc9a78              # double 0.42049300000000001
	.quad	0x3fb9019f3c70c997              # double 0.097681000000000004
	.quad	0x3fdee0114d2f5dbc              # double 0.48242600000000002
	.quad	0x3fe352f1a9fbe76d              # double 0.60387500000000005
	.quad	0x3fe7d054ac29bf16              # double 0.74418099999999998
	.quad	0x3fb7ab96f21f6cad              # double 0.092462000000000003
	.quad	0x3feddbe7f2c3009b              # double 0.93309399999999998
	.quad	0x3fc5a3e39f77292c              # double 0.16906399999999999
	.quad	0x3fe6af2d7f950b95              # double 0.70888399999999996
	.quad	0x3feabb18dac258d6              # double 0.83533900000000005
	.quad	0x3fe8d18f3eccc469              # double 0.77558099999999996
	.quad	0x3fea2fec56d5cfab              # double 0.81835000000000002
	.quad	0x3fec1b0ee49f5169              # double 0.87830299999999994
	.quad	0x3fe501f10667f90e              # double 0.65648700000000004
	.quad	0x3fdbceb356da0169              # double 0.43449100000000002
	.quad	0x3fd822036006d0d5              # double 0.37707600000000002
	.quad	0x3fcfccb7d41743e9              # double 0.24843499999999999
	.quad	0x3fd74cd74927913f              # double 0.36406500000000003
	.quad	0x3fcefe9b7bf1e8e6              # double 0.242145
	.quad	0x3fef0605681ecd4b              # double 0.96948500000000004
	.quad	0x3fe98357a355043e              # double 0.79728299999999996
	.quad	0x3fe6361dc93ea2d3              # double 0.694106
	.quad	0x3fe5c2480e8c8abd              # double 0.67996599999999996
	.quad	0x3fe4c947064ece9a              # double 0.64956999999999998
	.quad	0x3fe1886594af4f0e              # double 0.54790000000000005
	.quad	0x3fb8d6d3b6cbd988              # double 0.097028000000000003
	.quad	0x3feac9de05037500              # double 0.83714200000000005
	.quad	0x3fd8845564b662fe              # double 0.383077
	.quad	0x3feaf85942917508              # double 0.84281600000000001
	.quad	0x3fde35c9e6687f45              # double 0.47203299999999998
	.quad	0x3fdd42917507e9d9              # double 0.45718799999999998
	.quad	0x3fd0f83382e44b6f              # double 0.26514900000000002
	.quad	0x3fc06a550870110a              # double 0.128245
	.quad	0x3fdc37329c347e8d              # double 0.44086900000000001
	.quad	0x3fefc78e9f6a93f3              # double 0.99311000000000004
	.quad	0x3fe67b2aae297397              # double 0.70253500000000002
	.quad	0x3fd131055b899392              # double 0.26861699999999999
	.quad	0x3fd90d5e8d5410f9              # double 0.39144099999999998
	.quad	0x3fe7065f9591cd1c              # double 0.71952799999999995
	.quad	0x3fd2e76c8b439581              # double 0.295375
	.quad	0x3fc280f12c27a637              # double 0.14455999999999999
	.quad	0x3fea52a843808851              # double 0.82259000000000004
	.quad	0x3fdadd22856605ee              # double 0.41974699999999998
	.quad	0x3fda7985271bcdbc              # double 0.41366700000000001
	.quad	0x3fdf050bd87b56b8              # double 0.48468299999999997
	.quad	0x3fdb2617c1bda512              # double 0.42420000000000002
	.quad	0x3fe652934acaff6d              # double 0.69757999999999998
	.quad	0x3fdd7f3cf70153bd              # double 0.460891
	.quad	0x3fe78655193708ab              # double 0.73514800000000002
	.quad	0x3fe98e79aae6c8f7              # double 0.79864199999999996
	.quad	0x3fd4d3671ac14c66              # double 0.325403
	.quad	0x3feb59c27e953155              # double 0.85470699999999999
	.quad	0x3fea477dd872f33d              # double 0.82122700000000004
	.quad	0x3feab7e4de3b8a1a              # double 0.83494800000000002
	.quad	0x3feeda74c09c3ce2              # double 0.964167
	.quad	0x3fd613f8db489093              # double 0.34496900000000003
	.quad	0x3fee611fd5885d31              # double 0.94935599999999998
	.quad	0x3fe5192641b328b7              # double 0.65932000000000002
	.quad	0x3fe4fb0d51f81a58              # double 0.65564599999999995
	.quad	0x3f81b3f20a73f749              # double 0.0086440000000000006
	.quad	0x3fb8ce5f7403dddb              # double 0.096898999999999999
	.quad	0x3f476ddaceee0f3d              # double 7.1500000000000003E-4
	.quad	0x3fe90a1dfb9389b5              # double 0.78248499999999999
	.quad	0x3fdf92bc2fc69729              # double 0.49333100000000002
	.quad	0x3fee3d8e0008637c              # double 0.94501400000000002
	.quad	0x3fe07f8ec0f88334              # double 0.515571
	.quad	0x3fe8031ceaf251c2              # double 0.75038000000000005
	.quad	0x3fe9254c55432874              # double 0.78580300000000002
	.quad	0x3fea1f601797cc3a              # double 0.81633
	.quad	0x3fdb657b84db9c73              # double 0.42806899999999998
	.quad	0x3fedd31b9b66f933              # double 0.93201999999999996
	.quad	0x3fd63c07ee0b0af6              # double 0.347414
	.quad	0x3fac5c78a6dacabc              # double 0.055392999999999998
	.quad	0x3fe73d74d594f26b              # double 0.72625200000000001
	.quad	0x3fe4db7f1737542a              # double 0.65179399999999998
	.quad	0x3fcc22d5171e29b7              # double 0.21981300000000001
	.quad	0x3fa98090b417ca21              # double 0.049808999999999999
	.quad	0x3fe8c228997c3d68              # double 0.77370099999999997
	.quad	0x3fdc22c01e68a0d3              # double 0.43962099999999998
	.quad	0x3fe201322f2734f8              # double 0.56264599999999998
	.quad	0x3fe6fcb0c026cc1d              # double 0.71834600000000004
	.quad	0x3fe0cd39da16616b              # double 0.52505199999999996
	.quad	0x3fdeed1bf7ad4b27              # double 0.48322199999999998
	.quad	0x3fe951394317acc5              # double 0.79116500000000001
	.quad	0x3fdb869c66d373b0              # double 0.430091
	.quad	0x3fe739628cbd1245              # double 0.72575500000000004
	.quad	0x3fea48bc9cd3e0bd              # double 0.82137899999999997
	.quad	0x3fed1697f1f9ad00              # double 0.90900800000000004
	.quad	0x3fbb5126634117f8              # double 0.106707
	.quad	0x3f9d4cfd08d4bad8              # double 0.028614000000000001
	.quad	0x3fe5be8576cce5f7              # double 0.67950699999999997
	.quad	0x3fd0caf2d7f950b9              # double 0.26238699999999998
	.quad	0x3fb070329802c0a5              # double 0.064212000000000005
	.quad	0x3fe4bcf70153bd16              # double 0.64806699999999995
	.quad	0x3fc4d6ece13f4a99              # double 0.16280900000000001
	.quad	0x3fe7c8e68e3ef284              # double 0.74327399999999999
	.quad	0x3fe38049667b5f1c              # double 0.60941000000000001
	.quad	0x3fe4c3d68405b39e              # double 0.64890599999999998
	.quad	0x3fc6f965b20b8067              # double 0.17948600000000001
	.quad	0x3fea450ce4ead0c4              # double 0.82092900000000001
	.quad	0x3fbabb44e50c5eb3              # double 0.10442
	.quad	0x3fd77e73a365cb36              # double 0.367093
	.quad	0x3fdc17acc4ef88b9              # double 0.43894499999999997
	.quad	0x3fe1d72bcb5fe543              # double 0.55751600000000001
	.quad	0x3fceafff36ac6477              # double 0.23974599999999999
	.quad	0x3fdd1f70de8f6cf0              # double 0.455044
	.quad	0x3fd79f559b3d07c8              # double 0.36909999999999998
	.quad	0x3fe5e0f5e41d4b6a              # double 0.68371099999999996
	.quad	0x3fef1344806290ef              # double 0.97110200000000002
	.quad	0x3fd3dc7ef177a701              # double 0.31033300000000003
	.quad	0x3fcca497fa5d28d0              # double 0.223773
	.quad	0x3f91743e963dc487              # double 0.017045000000000001
	.quad	0x3f993dd97f62b6ae              # double 0.024649999999999998
	.quad	0x3fc2ccb3a2595bbc              # double 0.146872
	.quad	0x3fd893708aac96cc              # double 0.38399899999999998
	.quad	0x3fe1ddedf1e0828c              # double 0.55834099999999998
	.quad	0x3fa8b3b320535c9e              # double 0.048245999999999997
	.quad	0x3fc3d71b0468448d              # double 0.155002
	.quad	0x3fd119a415f45e0b              # double 0.26718999999999998
	.quad	0x3f9f27bb2fec56d6              # double 0.030425000000000001
	.quad	0x3fa15831f03d145e              # double 0.033876000000000003
	.quad	0x3fdf851654d61b2a              # double 0.49249799999999999
	.quad	0x3fb3a908a265f0f6              # double 0.076798000000000005
	.quad	0x3fa0a958537e2c56              # double 0.032542000000000001
	.quad	0x3fe1c521dda059a7              # double 0.55531399999999997
	.quad	0x3fe428ac5c13fd0d              # double 0.629965
	.quad	0x3fab70ef566490a3              # double 0.053595999999999998
	.quad	0x3fa397dd00f776c5              # double 0.038268000000000003
	.quad	0x3fe0791819d2391d              # double 0.51478199999999996
	.quad	0x3fdf09f1f14983d8              # double 0.48498200000000002
	.quad	0x3fac332f01754b06              # double 0.055078000000000002
	.quad	0x3f9ed6777079e59f              # double 0.030114999999999999
	.quad	0x3fde7b5aea3161a2              # double 0.47627900000000001
	.quad	0x3fd2be4473cd5736              # double 0.29286299999999998
	.quad	0x3fe9cea4a8c154ca              # double 0.80647500000000005
	.quad	0x3fe32ce4649906cd              # double 0.59923000000000004
	.quad	0x3fd94690de093533              # double 0.39493200000000001
	.quad	0x3fdb2ae07e5a78f2              # double 0.42449199999999998
	.quad	0x3fc3ea465a57646b              # double 0.155587
	.quad	0x3fdc6bfca85caafc              # double 0.44409100000000001
	.quad	0x3fa3d3e4ef0281ba              # double 0.038725999999999997
	.quad	0x3fba957470eb24a7              # double 0.103843
	.quad	0x3fd19bed30f062d4              # double 0.275142
	.quad	0x3fdd7abb8800eae2              # double 0.46061600000000003
	.quad	0x3feec08b75ea67e8              # double 0.96100399999999996
	.quad	0x3fdd85a921ccd962              # double 0.461283
	.quad	0x3f91fbc5de9c022a              # double 0.017562000000000001
	.quad	0x3fe180841ede1199              # double 0.54693800000000004
	.quad	0x3fdf6f4384ba0e84              # double 0.49116599999999999
	.quad	0x3fc94cec41dd1a22              # double 0.19766
	.quad	0x3fef663e8dda48b6              # double 0.98123099999999996
	.quad	0x3fea5a038194c016              # double 0.823488
	.quad	0x3fefbc3a42f1ed18              # double 0.99172700000000002
	.quad	0x3fe92ee2003ab863              # double 0.78697300000000003
	.quad	0x3fbed1bf7ad4b274              # double 0.120388
	.quad	0x3fdcbd76ee73e682              # double 0.44906400000000002
	.quad	0x3fe8ad83c6c97d8d              # double 0.77118100000000001
	.quad	0x3fed6dc5d6388659              # double 0.91964999999999997
	.quad	0x3fe29059ea57214f              # double 0.580121
	.quad	0x3fc1804534bd76ee              # double 0.13672699999999999
	.quad	0x3feecb89d6adf71f              # double 0.96234600000000003
	.quad	0x3fcc14f0520d130e              # double 0.219389
	.quad	0x3fe82f46aa087ca6              # double 0.75577099999999997
	.quad	0x3fcfb85e80bed741              # double 0.24781400000000001
	.quad	0x3fcdeb6bf444e0db              # double 0.23374700000000001
	.quad	0x3fcac2480e8c8abd              # double 0.20905399999999999
	.quad	0x3feb66be7afa7222              # double 0.85629200000000005
	.quad	0x3fed52178f68be2f              # double 0.91627099999999995
	.quad	0x3feda428d434a01b              # double 0.92628900000000003
	.quad	0x3fd866516db0dd83              # double 0.381245
	.quad	0x3febf3b85e80bed7              # double 0.87350099999999997
	.quad	0x3fd40370cdc8754f              # double 0.31270999999999999
	.quad	0x3fc5d99029ae4f33              # double 0.17070199999999999
	.quad	0x3fc3d25aab474107              # double 0.15485699999999999
	.quad	0x3fe0771eafee6fb5              # double 0.51454100000000003
	.quad	0x3fdc1040bfe3b03e              # double 0.43849199999999999
	.quad	0x3fe287980f55de59              # double 0.57905200000000001
	.quad	0x3fdc6523704790b8              # double 0.44367299999999998
	.quad	0x3fd49c4113c68662              # double 0.32203700000000002
	.quad	0x3fcdc347e8ccdd94              # double 0.23252200000000001
	.quad	0x3fcdce18266772d6              # double 0.232852
	.quad	0x3fbdaab474107315              # double 0.115886
	.quad	0x3fd967125dd095af              # double 0.39691599999999999
	.quad	0x3fb646ae3a3a8e71              # double 0.087015999999999996
	.quad	0x3fdc5ac471b47842              # double 0.44303999999999999
	.quad	0x3fe132dd377e1b8f              # double 0.53745900000000002
	.quad	0x3fd3bb2bba98eda2              # double 0.30829899999999999
	.quad	0x3fd8ed06fef7c244              # double 0.38946700000000001
	.quad	0x3fb3709b738e6d16              # double 0.075937000000000004
	.quad	0x3fe5421e1d2178f7              # double 0.66432100000000005
	.quad	0x3fcfe1c15097c808              # double 0.24907699999999999
	.quad	0x3fc546455eaee200              # double 0.16620699999999999
	.quad	0x3fe8930164840e17              # double 0.76794499999999999
	.quad	0x3fd24f11b60ae968              # double 0.286076
	.quad	0x3fe5b0b9dc2f405f              # double 0.67782299999999995
	.quad	0x3fe09667b5f1bef5              # double 0.51836000000000004
	.quad	0x3fd310cb295e9e1b              # double 0.2979
	.quad	0x3fd0dfce3150dae4              # double 0.26366000000000001
	.quad	0x3fedef4e0114d2f6              # double 0.93546200000000002
	.quad	0x3fefb3f63c31df76              # double 0.99071799999999999
	.quad	0x3fece15a8deb0fae              # double 0.90250900000000001
	.quad	0x3fe4b2bba98eda23              # double 0.646818
	.quad	0x3fa904f6dfc5cdd5              # double 0.048866
	.quad	0x3fd2fcc9ea9a3d2e              # double 0.29667900000000003
	.quad	0x3fe6a9c99285a922              # double 0.70822600000000002
	.quad	0x3fe0f28848387df6              # double 0.52960600000000002
	.quad	0x3fe5af294dd72368              # double 0.67763200000000001
	.quad	0x3fdb62cba732df50              # double 0.42790499999999998
	.quad	0x3fe94c76d117b528              # double 0.79058399999999995
	.quad	0x3fc08c0485a0be51              # double 0.129273
	.quad	0x3fe916073de1e2df              # double 0.78393900000000005
	.quad	0x3fdc6c8711d798d9              # double 0.44412400000000002
	.quad	0x3fde41700cd85597              # double 0.472744
	.quad	0x3feaec460ed80a18              # double 0.84134200000000003
	.quad	0x3feb7ea1c68ec52a              # double 0.85920799999999997
	.quad	0x3fcaf6be37de939f              # double 0.21065500000000001
	.quad	0x3fd596af038e29fa              # double 0.33732200000000001
	.quad	0x3faa619da9c99286              # double 0.051526000000000002
	.quad	0x3fe9f789a459103d              # double 0.81146700000000005
	.quad	0x3fea0c1333b96af0              # double 0.81397399999999998
	.quad	0x3fd6e807bbb62414              # double 0.35791200000000001
	.quad	0x3fc5ef0f16f4384c              # double 0.17135800000000001
	.quad	0x3fec531b9b66f933              # double 0.88514499999999996
	.quad	0x3fd178316a055758              # double 0.27296100000000001
	.quad	0x3fb228027d88c1db              # double 0.070923
	.quad	0x3fe61611ba3ca750              # double 0.69019399999999997
	.quad	0x3fdbc0e7bc3c5bd1              # double 0.43364900000000001
	.quad	0x3fe1f88fc9363f57              # double 0.56159199999999998
	.quad	0x3fe2e5fb71fbc5df              # double 0.59057400000000004
	.quad	0x3fd90dcfcc5b8dc5              # double 0.39146799999999998
	.quad	0x3fcd3a8a3f8982cb              # double 0.228349
	.quad	0x3fefeb15f88fc936              # double 0.99744699999999997
	.quad	0x3fecaceee0f3cb3e              # double 0.89610999999999996
	.quad	0x3fe9b5c5b4aa9718              # double 0.80343900000000001
	.quad	0x3feed03b81b64e05              # double 0.96291899999999996
	.quad	0x3fe0ede97d06bbdc              # double 0.52904200000000001
	.quad	0x3fcee06d938151a4              # double 0.24122399999999999
	.quad	0x3fcb30a4e379b77c              # double 0.212422
	.quad	0x3fc9e77d523b3637              # double 0.202377
	.quad	0x3fd8f9db22d0e560              # double 0.39024999999999999
	.quad	0x3fe8b6976bc1effa              # double 0.772289
	.quad	0x3fedfc17a89331a1              # double 0.93702300000000005
	.quad	0x3f9bd512ec6bce85              # double 0.027179999999999999
	.quad	0x3fe859ba1b1960fa              # double 0.76095299999999999
	.quad	0x3fc053198288051d              # double 0.12753600000000001
	.quad	0x3fe92c5e2cdc011d              # double 0.78666599999999998
	.quad	0x3fd9bf2f55582129              # double 0.40229399999999998
	.quad	0x3fc513d74d594f27              # double 0.16466800000000001
	.quad	0x3f7b0142f61ed5ae              # double 0.0065929999999999999
	.quad	0x3fe0dbc664d3bf2f              # double 0.52682799999999996
	.quad	0x3fd0cb039ef0f16f              # double 0.26239099999999999
	.quad	0x3fdd3a4723aafff3              # double 0.45668199999999998
	.quad	0x3fc7b01c92ddbdb6              # double 0.185062
	.quad	0x3fd1e3ac0c62e4d2              # double 0.27952100000000002
	.quad	0x3fdc4b662fdfc19c              # double 0.44210199999999999
	.quad	0x3fefdb8130164841              # double 0.99554500000000001
	.quad	0x3fe6747735c182ed              # double 0.70171700000000004
	.quad	0x3fed4981beb18117              # double 0.91522300000000001
	.quad	0x3fd41333b96af039              # double 0.31367200000000001
	.quad	0x3fe6202107b78466              # double 0.69142199999999998
	.quad	0x3fc3532e7b3d8e00              # double 0.150976
	.quad	0x3feaf0bf1a5ca298              # double 0.84188799999999997
	.quad	0x3fd2efed634549b6              # double 0.29589399999999999
	.quad	0x3fa503968d759ee9              # double 0.041043000000000003
	.quad	0x3fdbb641700cd856              # double 0.43299900000000002
	.quad	0x3fc1078d92fb19e7              # double 0.13304299999999999
	.quad	0x3fe4119ce075f6fd              # double 0.62714999999999999
	.quad	0x3fd3b43d89ce4a7b              # double 0.30787599999999998
	.quad	0x3fe20bb0a2ca9ac3              # double 0.56392699999999996
	.quad	0x3fdce87d2c7b890d              # double 0.45168999999999998
	.quad	0x3fdc8e0c9d9d3459              # double 0.44617000000000001
	.quad	0x3fda4a2fcefaa476              # double 0.41077799999999998
	.quad	0x3fed4f9a06a6e32e              # double 0.91596699999999998
	.quad	0x3fbec11a11233df3              # double 0.120134
	.quad	0x3fe6715e7c8d1959              # double 0.70133900000000005
	.quad	0x3fce0535c9e6687f              # double 0.23453399999999999
	.quad	0x3f979dd3bafd9770              # double 0.023063
	.quad	0x3fead8e219652bd4              # double 0.83897500000000002
	.quad	0x3feecb252ce032db              # double 0.96229799999999998
	.quad	0x3fef707bfe7e1fc1              # double 0.98248100000000004
	.quad	0x3fe0fb24638c9753              # double 0.53065700000000005
	.quad	0x3fe5321c475e6363              # double 0.66236700000000004
	.quad	0x3fb6ac8605681ecd              # double 0.088569999999999996
	.quad	0x3fe13324851a8694              # double 0.537493
	.quad	0x3fc1c42a66dbd72c              # double 0.13879900000000001
	.quad	0x3fdf6a2b1704ff43              # double 0.49085499999999999
	.quad	0x3fe67ff79c842fa5              # double 0.703121
	.quad	0x3fe1f23033a4723b              # double 0.56081400000000003
	.quad	0x3fc222ab25b317f0              # double 0.141683
	.quad	0x3fe12aae297396d1              # double 0.53646000000000005
	.quad	0x3fda26b723ee1bd2              # double 0.408613
	.quad	0x3fe831593e5fb720              # double 0.75602400000000002
	.quad	0x3fdbb367a0f9096c              # double 0.43282500000000002
	.quad	0x3fea5d63886594af              # double 0.82389999999999997
	.quad	0x3fecb27243137b07              # double 0.896783
	.quad	0x3fd64fa48301a7a0              # double 0.348611
	.quad	0x3fe3652deca2552a              # double 0.606101
	.quad	0x3fe26a033e78e193              # double 0.57544099999999998
	.quad	0x3f9be9424e592967              # double 0.027257
	.quad	0x3febdd41fa765343              # double 0.87075899999999995
	.quad	0x3fee48f75536933a              # double 0.946407
	.quad	0x3fe69c842fa50939              # double 0.70660599999999996
	.quad	0x3fe872b884406c01              # double 0.76400400000000002
	.quad	0x3fd53eb399f5dfec              # double 0.33195200000000002
	.quad	0x3f9e1deacc92146a              # double 0.029411
	.quad	0x3fa43eb7cbb3c819              # double 0.039541
	.quad	0x3fecbe8ff327aa69              # double 0.898262
	.quad	0x3fe8db1209edbf8c              # double 0.77674200000000004
	.quad	0x3fdcbfdf7e8038a0              # double 0.44921100000000003
	.quad	0x3fb1aed56b00ffda              # double 0.069073999999999997
	.quad	0x3fe7fe5a78f25a25              # double 0.74979899999999999
	.quad	0x3fe009d6adf71eb0              # double 0.50120100000000001
	.quad	0x3fec848beb5b2d4d              # double 0.89117999999999997
	.quad	0x3fd525f633ce63a6              # double 0.33044200000000001
	.quad	0x3fdce0589acbc8c1              # double 0.45119300000000001
	.quad	0x3fef807fed20296b              # double 0.98443599999999997
	.quad	0x3fcd0ae536501e26              # double 0.22689500000000001
	.quad	0x3fef849667b5f1bf              # double 0.984935
	.quad	0x3fefdbf26f1dc50d              # double 0.99559900000000001
	.quad	0x3fca46a5d6bebe16              # double 0.20528099999999999
	.quad	0x3fdd4ccab3edd8b6              # double 0.457812
	.quad	0x3fe0f4f722e1ac58              # double 0.52990300000000001
	.quad	0x3fec039abf338716              # double 0.87544
	.quad	0x3febad794a6eb91b              # double 0.86492599999999997
	.quad	0x3fef8e15011904b4              # double 0.98609400000000002
	.quad	0x3fd3184c271fff7a              # double 0.29835800000000001
	.quad	0x3fe4cff865d7cb2e              # double 0.65038700000000005
	.quad	0x3fe66daec4a4095f              # double 0.70088899999999998
	.quad	0x3fabff04577d9557              # double 0.054679999999999999
	.quad	0x3fe595c209246bf0              # double 0.67453099999999999
	.quad	0x3fe190d173fb7a5f              # double 0.54892799999999997
	.quad	0x3fe61e603d577964              # double 0.69120800000000004
	.quad	0x3fe8ea67e846a5d7              # double 0.77861400000000003
	.quad	0x3fe3ededaec4a409              # double 0.62279399999999996
	.quad	0x3fe61767903211cb              # double 0.690357
	.quad	0x3fd0878316a05575              # double 0.25827099999999997
	.quad	0x3feea027525460aa              # double 0.95704999999999996
	.quad	0x3fea513d74d594f2              # double 0.82241699999999995
	.quad	0x3fea39f127f5e84f              # double 0.819573
	.quad	0x3feebe5b8561d430              # double 0.96073699999999995
	.quad	0x3fd8474d9c6b0532              # double 0.37935200000000002
	.quad	0x3fd433721d53cddd              # double 0.31563999999999998
	.quad	0x3fb80dc33721d53d              # double 0.093960000000000002
	.quad	0x3fdbb6390c9107fb              # double 0.43299700000000002
	.quad	0x3fd31c53f39d1b2e              # double 0.29860399999999998
	.quad	0x3fe0bf705857afea              # double 0.52336899999999997
	.quad	0x3fc398aeb80ecfa7              # double 0.15309700000000001
	.quad	0x3fe35b078d92fb1a              # double 0.60486200000000001
	.quad	0x3fe5997e56473472              # double 0.674987
	.quad	0x3fd09fc2a8869c67              # double 0.25975100000000001
	.quad	0x3fdd30c23fab10ba              # double 0.45610099999999998
	.quad	0x3fc31409a2403148              # double 0.14904899999999999
	.quad	0x3fe42c40d0aaa7df              # double 0.63040200000000002
	.quad	0x3fe33ff8a8f3a9b0              # double 0.60155899999999995
	.quad	0x3fe740c1fc8f3238              # double 0.72665500000000005
	.quad	0x3febb0ab2e1693c0              # double 0.86531599999999997
	.quad	0x3fe031422ccb3a26              # double 0.50601300000000005
	.quad	0x3fe3c70435efa616              # double 0.61804400000000004
	.quad	0x3fda029ae4f33440              # double 0.40640900000000002
	.quad	0x3fd60ae9680e0653              # double 0.344416
	.quad	0x3fe137110e453d21              # double 0.53797200000000001
	.quad	0x3fe8864883fd5022              # double 0.76639199999999996
	.quad	0x3fe8fb84db9c7369              # double 0.78070300000000004
	.quad	0x3fed50092ccf6be3              # double 0.91601999999999995
	.quad	0x3fd018c197e56473              # double 0.25151099999999998
	.quad	0x3fe12b6f19934efd              # double 0.53655200000000003
	.quad	0x3fe55f17bd8be729              # double 0.66785799999999995
	.quad	0x3fd3903211cb039f              # double 0.305676
	.quad	0x3fda495e17e34b94              # double 0.41072799999999998
	.quad	0x3fde2e59af9ebe9d              # double 0.47157900000000003
	.quad	0x3feff1ac14c660a2              # double 0.998251
	.quad	0x3fe0b734b51372a4              # double 0.52236400000000005
	.quad	0x3fdc521144cbe1eb              # double 0.44250899999999999
	.quad	0x3fda45c358afc47e              # double 0.41050799999999998
	.quad	0x3fe79e7967caea74              # double 0.73809499999999995
	.quad	0x3fecb84fd2a62aa2              # double 0.89749900000000005
	.quad	0x3fd9bc7b45f17bd9              # double 0.40212900000000001
	.quad	0x3fa4f63800218def              # double 0.040940999999999998
	.quad	0x3feec9d5a187a4a5              # double 0.96213800000000004
	.quad	0x3fd0ba908a265f0f              # double 0.26138699999999998
	.quad	0x3fe1592fb19e731d              # double 0.54213699999999998
	.quad	0x3fd2279dd3bafd97              # double 0.28366799999999998
	.quad	0x3fb388a8b08dd1e5              # double 0.076303999999999997
	.quad	0x3fbd72ef0ae53650              # double 0.115035
	.quad	0x3fd314b167ec7864              # double 0.29813800000000001
	.quad	0x3fd3195cc857f306              # double 0.29842299999999999
	.quad	0x3fd49378ee286727              # double 0.32150099999999998
	.quad	0x3fda8da3c21187e8              # double 0.41489500000000001
	.quad	0x3fdc1b93037d6302              # double 0.43918299999999999
	.quad	0x3fe5e920c069e7fb              # double 0.68470799999999998
	.quad	0x3fe25892684cf074              # double 0.57331200000000004
	.quad	0x3feb5a5332acfb76              # double 0.85477599999999998
	.quad	0x3fc92d234eb9a177              # double 0.19669
	.quad	0x3fe76e935b91f70e              # double 0.73224800000000001
	.quad	0x3f9d77b7c7820a31              # double 0.028777
	.quad	0x3f8f1172ef0ae536              # double 0.015169999999999999
	.quad	0x3fe00fc504816f00              # double 0.50192499999999995
	.quad	0x3fe9d1e75360d024              # double 0.80687299999999995
	.quad	0x3fe1598bf7f06706              # double 0.54218100000000002
	.quad	0x3fe7023422467be5              # double 0.71901899999999996
	.quad	0x3fd646f156191149              # double 0.34808
	.quad	0x3fd0bb98c7e28241              # double 0.26145000000000002
	.quad	0x3fbde2de8709741d              # double 0.116743
	.quad	0x3fe688d2a1f8e3ac              # double 0.70420199999999999
	.quad	0x3fee7746887a8d65              # double 0.95206000000000002
	.quad	0x3fd5860dcb9a9da6              # double 0.33630700000000002
	.quad	0x3fbe21ea35935fc4              # double 0.117705
	.quad	0x3fd2e939eadd590c              # double 0.295485
	.quad	0x3fa2a454de7ea5f8              # double 0.036409999999999998
	.quad	0x3fd4dd82fd75e204              # double 0.32601999999999998
	.quad	0x3fe068cac4b4d057              # double 0.51279200000000003
	.quad	0x3fe906bdf4c2b51c              # double 0.78207300000000001
	.quad	0x3faf023e9ea14057              # double 0.060564
	.quad	0x3fd83eff1950331e              # double 0.37884499999999999
	.quad	0x3fe401626b2f2303              # double 0.62516899999999997
	.quad	0x3fc85269595feda6              # double 0.19001499999999999
	.quad	0x3fcb6e9bbf0dc769              # double 0.214313
	.quad	0x3fe07b4e54f7a919              # double 0.51505199999999995
	.quad	0x3f86dd26b723ee1c              # double 0.011164
	.quad	0x3fd61101b003686a              # double 0.34478799999999998
	.quad	0x3fd27b24638c9753              # double 0.28876600000000002
	.quad	0x3fcaadbc664d3bf3              # double 0.208427
	.quad	0x3feb24edf6124074              # double 0.84825799999999995
	.quad	0x3febbf290abb44e5              # double 0.86708499999999999
	.quad	0x3fea636b09635611              # double 0.82463600000000004
	.quad	0x3fb143393ab430f5              # double 0.067432000000000006
	.quad	0x3fde6a593a2df938              # double 0.47524100000000002
	.quad	0x3fe6479702e6644e              # double 0.69623900000000005
	.quad	0x3fa1eecbfb15b574              # double 0.035025000000000001
	.quad	0x3fe3e516db0dd830              # double 0.62171500000000002
	.quad	0x3fead5475a31a4be              # double 0.83853500000000003
	.quad	0x3fde1c92ddbdb5d9              # double 0.47049400000000002
	.quad	0x3fd20010c6f7a0b6              # double 0.281254
	.quad	0x3fee42a8869c66d3              # double 0.94563699999999995
	.quad	0x3fe0ce7253da72a8              # double 0.52520100000000003
	.quad	0x3fd001b43526527a              # double 0.25010399999999999
	.quad	0x3fccdd82fd75e204              # double 0.22550999999999999
	.quad	0x3fc27cd898b2e9cd              # double 0.14443500000000001
	.quad	0x3fdd33e78e1932d7              # double 0.456293
	.quad	0x3fefecd29131ec0b              # double 0.99765899999999996
	.quad	0x3fd9fb00bcbe61d0              # double 0.405945
	.quad	0x3feaa71fff79c843              # double 0.832901
	.quad	0x3febe70e2c12ad82              # double 0.87195500000000004
	.quad	0x3fe18e496ededaec              # double 0.54861899999999997
	.quad	0x3fc527ed84d338f8              # double 0.16528100000000001
	.quad	0x3fed807dd4413554              # double 0.92193499999999994
	.quad	0x3f56f0068db8bac7              # double 0.0014
	.quad	0x3f8212d77318fc50              # double 0.0088249999999999995
	.quad	0x3fe04712e40852b5              # double 0.50867600000000002
	.quad	0x3fcf27cbf6e3f78c              # double 0.24340200000000001
	.quad	0x3fd6ce9e5e247885              # double 0.35636099999999998
	.quad	0x3fe774e65bea0ba2              # double 0.73302
	.quad	0x3fcf897204295a6c              # double 0.24638199999999999
	.quad	0x3fe7e95faa8a82a5              # double 0.74723799999999996
	.quad	0x3fe2e12839042d8c              # double 0.58998499999999998
	.quad	0x3fddff64cf8d716d              # double 0.46871299999999999
	.quad	0x3fc923704790b84a              # double 0.19639400000000001
	.quad	0x3fe516872b020c4a              # double 0.65900000000000003
	.quad	0x3fb23bddfc9ff92f              # double 0.071225999999999998
	.quad	0x3fbf4c6e6d9be4cd              # double 0.12225999999999999
	.quad	0x3fe7da3e39f77293              # double 0.74539100000000003
	.quad	0x3fe2799e518f3ecd              # double 0.57734600000000003
	.quad	0x3fdcd2d01c0ca601              # double 0.45036700000000002
	.quad	0x3fa0b3b320535c9e              # double 0.032620999999999997
	.quad	0x3fd35870da5daf08              # double 0.30227300000000001
	.quad	0x3fecda33bd9cae21              # double 0.90163599999999999
	.quad	0x3fe7f090f733a8a4              # double 0.748116
	.quad	0x3fdf115592d98bf8              # double 0.485433
	.quad	0x3fd560bb2bba98ee              # double 0.33402900000000002
	.quad	0x3fc94f8b588e368f              # double 0.19774
	.quad	0x3feb6cca2db61bb0              # double 0.85702999999999996
	.quad	0x3fc6c2bd7f51efb7              # double 0.177818
	.quad	0x3fd1ab8a5ce5b424              # double 0.27609499999999998
	.quad	0x3fd0a30984e3ffef              # double 0.25995099999999999
	.quad	0x3fe57af42784a948              # double 0.67125900000000005
	.quad	0x3fe89a62ed352221              # double 0.76884600000000003
	.quad	0x3fe1a19439de481f              # double 0.55097399999999996
	.quad	0x3fd98405b39e279e              # double 0.39868300000000001
	.quad	0x3fdfd130df9bdc6a              # double 0.497143
	.quad	0x3fd627ae9ab29e4d              # double 0.34617199999999998
	.quad	0x3fe581450efdc9c5              # double 0.67203000000000002
	.quad	0x3fdc967caea747d8              # double 0.446685
	.quad	0x3fe927243137b070              # double 0.78602799999999995
	.quad	0x3fc107182235b4ee              # double 0.13302900000000001
	.quad	0x3fe3021f2990f302              # double 0.59400900000000001
	.quad	0x3fd36412cf0f9d2c              # double 0.302983
	.quad	0x3fed24a8c154c986              # double 0.91072500000000001
	.quad	0x3fd57d30ad46f588              # double 0.33576600000000001
	.quad	0x3fc7733226c3b928              # double 0.183203
	.quad	0x3fee434e3369b9d8              # double 0.945716
	.quad	0x3fef51c5c5718eb9              # double 0.97873200000000004
	.quad	0x3f64f26aec0724b7              # double 0.0025569999999999998
	.quad	0x3fe2315f88fc9364              # double 0.568527
	.quad	0x3fed164840e1719f              # double 0.90896999999999994
	.quad	0x3fee326e115592da              # double 0.94365600000000005
	.quad	0x3fc0cd4aa10e0221              # double 0.13126499999999999
	.quad	0x3fed0129cbab649d              # double 0.90639199999999998
	.quad	0x3fd630489d27c393              # double 0.34669699999999998
	.quad	0x3fd9355475a31a4c              # double 0.39388000000000001
	.quad	0x3fb187c6327ed84d              # double 0.068477999999999997
	.quad	0x3fcd061c79b34a45              # double 0.22674900000000001
	.quad	0x3fe9ebe9c886162f              # double 0.81004799999999999
	.quad	0x3fd15b0bbf50e347              # double 0.27118199999999998
	.quad	0x3fee348f53c579f2              # double 0.94391599999999998
	.quad	0x3fe41bf9c62a1b5c              # double 0.62841499999999995
	.quad	0x3fe7f99c38b04ab6              # double 0.74922
	.quad	0x3fe8a1ccd9620685              # double 0.76975099999999996
	.quad	0x3fe32da98676a726              # double 0.59932399999999997
	.quad	0x3fe4778feef5ec81              # double 0.63959500000000002
	.quad	0x3fe96032db1e9f27              # double 0.79299299999999995
	.quad	0x3f838f7985271bce              # double 0.0095510000000000005
	.quad	0x3fd89f44d4456712              # double 0.38472099999999998
	.quad	0x3fea92b3cc4ac6ce              # double 0.83040800000000004
	.quad	0x3fcb38cda6e75ff6              # double 0.212671
	.quad	0x3fe8394b7b28954a              # double 0.75699399999999994
	.quad	0x3febaf9873ffac1d              # double 0.86518499999999998
	.quad	0x3fe738151a437825              # double 0.72559600000000002
	.quad	0x3feea737110e453d              # double 0.95791199999999998
	.quad	0x3fe9bf83382e44b7              # double 0.80462800000000001
	.quad	0x3fdcccd0fe8ab4fa              # double 0.45000099999999998
	.quad	0x3fb5b70691ea78af              # double 0.084823999999999997
	.quad	0x3fbd44028e4fb97c              # double 0.114319
	.quad	0x3fe74245f5ad96a7              # double 0.72684000000000004
	.quad	0x3fe73e3e29307af2              # double 0.72634799999999999
	.quad	0x3fe8872b020c49ba              # double 0.76649999999999996
	.quad	0x3fe96cb31c219eb6              # double 0.79451899999999998
	.quad	0x3fc75fa22706d506              # double 0.18260599999999999
	.quad	0x3fab84ba0e842742              # double 0.053747000000000003
	.quad	0x3fe2fd77fae3608d              # double 0.593441
	.quad	0x3fd42fe3f359ff50              # double 0.31542300000000001
	.quad	0x3feb5d78811b1d93              # double 0.85516000000000003
	.quad	0x3fad31fcd24e160e              # double 0.057022000000000003
	.quad	0x3fec971c10d7be98              # double 0.89344599999999996
	.quad	0x3fcc5f7c6759ab6d              # double 0.221664
	.quad	0x3fe1f3ade225fa66              # double 0.56099600000000005
	.quad	0x3fdf5132f87ad081              # double 0.48933100000000002
	.quad	0x3fdfff822bbecaac              # double 0.49997000000000003
	.quad	0x3feac7a5b0ff10ed              # double 0.83687100000000003
	.quad	0x3fe7de97d06bbdbe              # double 0.74592199999999997
	.quad	0x3fea61d8622c4502              # double 0.82444399999999995
	.quad	0x3fe18dae3e6c4c59              # double 0.54854499999999995
	.quad	0x3feea1be2b4959e6              # double 0.95724399999999998
	.quad	0x3fdf914f483cafb4              # double 0.49324400000000002
	.quad	0x3fde36113404ea4b              # double 0.47205000000000003
	.quad	0x3fd31a21ea359360              # double 0.29847000000000001
	.quad	0x3feeed00b45ae600              # double 0.96643100000000004
	.quad	0x3fd94b51372a38b9              # double 0.39522200000000002
	.quad	0x3fdbf61aa3f034b1              # double 0.43689600000000001
	.quad	0x3fe5a873bc903ea7              # double 0.676813
	.quad	0x3fe7720a73f748a1              # double 0.73267099999999996
	.quad	0x3f9240fa9c12f09e              # double 0.017826000000000002
	.quad	0x3fedf442c7fbacb4              # double 0.93606699999999998
	.quad	0x3fea0793dd97f62b              # double 0.81342499999999995
	.quad	0x3fe4e963dc486ad3              # double 0.65349000000000002
	.quad	0x3fe88d9d7774aba4              # double 0.76728700000000005
	.quad	0x3fa487fcb923a29c              # double 0.040099999999999997
	.quad	0x3fd6c8fb86f47b67              # double 0.35601699999999997
	.quad	0x3fe8d703f2d3c793              # double 0.77624700000000002
	.quad	0x3fe495af294dd723              # double 0.64327199999999995
	.quad	0x3fdd35e310dbf056              # double 0.45641399999999999
	.quad	0x3fc1f540895d0b74              # double 0.14029700000000001
	.quad	0x3fe72c40d0aaa7df              # double 0.72415200000000002
	.quad	0x3fec748e4755ffe7              # double 0.88922800000000002
	.quad	0x3fe7867f0aa21a72              # double 0.73516800000000004
	.quad	0x3fec436113404ea5              # double 0.88322500000000004
	.quad	0x3feb800000000000              # double 0.859375
	.quad	0x3feb165907d91255              # double 0.84647799999999995
	.quad	0x3fe02f9873ffac1d              # double 0.50580999999999998
	.quad	0x3fe2eec5b078d930              # double 0.59164700000000003
	.quad	0x3f9be0157eed45e9              # double 0.027222
	.quad	0x3fe8c5564b662fe0              # double 0.77408900000000002
	.quad	0x3fa35781c714fce7              # double 0.037776999999999998
	.quad	0x3fc62b94d9407896              # double 0.173205
	.quad	0x3fd730014f8b588e              # double 0.36230499999999999
	.quad	0x3f97b17ce52deca2              # double 0.023137999999999999
	.quad	0x3fe58ad03d9a9542              # double 0.67319499999999999
	.quad	0x3fea34aec8d5c747              # double 0.81893099999999996
	.quad	0x3feef3abc947064f              # double 0.96724500000000002
	.quad	0x3fde66277c45cbbc              # double 0.47498499999999999
	.quad	0x3fea67b3d8e00086              # double 0.82515899999999998
	.quad	0x3fd04345cfede97d              # double 0.254106
	.quad	0x3fea6e86c6583e85              # double 0.82599199999999995
	.quad	0x3fbf3519bd4067cf              # double 0.121904
	.quad	0x3fecf88b9778572a              # double 0.90534000000000003
	.quad	0x3fee5b70691ea78b              # double 0.94866200000000001
	.quad	0x3fe46c9e236c15d3              # double 0.63825900000000002
	.quad	0x3fe6dd4e8fb00bcc              # double 0.71451500000000001
	.quad	0x3fe635d249e44fa0              # double 0.69406999999999996
	.quad	0x3fd7610f0e90bc7b              # double 0.36529899999999998
	.quad	0x3fc0a9691a75cd0c              # double 0.13017000000000001
	.quad	0x3fe02474538ef34d              # double 0.50444999999999995
	.quad	0x3f9776c4827b6fe3              # double 0.022914
	.quad	0x3fec360f1b25f634              # double 0.88159900000000002
	.quad	0x3fe4633482be8bc1              # double 0.63710999999999995
	.quad	0x3fc52702a3486f05              # double 0.16525300000000001
	.quad	0x3fb95cc857f3061c              # double 0.099071999999999993
	.quad	0x3fefb996fa82e87d              # double 0.99140499999999998
	.quad	0x3feb159817b95a29              # double 0.84638599999999997
	.quad	0x3fd7d3a604e1e710              # double 0.37229299999999999
	.quad	0x3fc57b634dad31fd              # double 0.167828
	.quad	0x3fe447cfa26a22b4              # double 0.63376600000000005
	.quad	0x3feea16a48733659              # double 0.95720400000000005
	.quad	0x3fe95269595feda6              # double 0.79130999999999996
	.quad	0x3fe5d8a548238540              # double 0.68269599999999997
	.quad	0x3fc8edd4845132f8              # double 0.19475799999999999
	.quad	0x3fcba1a0cf1800a8              # double 0.21587000000000001
	.quad	0x3feb9eabbcb1cc96              # double 0.86311899999999997
	.quad	0x3fe6d02ababead4f              # double 0.71291099999999996
	.quad	0x3feb33c1ce6c093e              # double 0.85006800000000005
	.quad	0x3fdfa7221858bc5a              # double 0.49457600000000002
	.quad	0x3fecccdfaca36199              # double 0.90000899999999995
	.quad	0x3fceeb356da0168b              # double 0.24155299999999999
	.quad	0x3fe79e7967caea74              # double 0.73809499999999995
	.quad	0x3fedfab7564302b4              # double 0.93685499999999999
	.quad	0x3fe1d2b6f19934f0              # double 0.55697200000000002
	.quad	0x3fe475b3e1437c57              # double 0.63936800000000005
	.quad	0x3fc5d20f2becedd5              # double 0.17047300000000001
	.quad	0x3feadfbd6a593a2e              # double 0.839812
	.quad	0x3fe126bd6e8af816              # double 0.53597899999999998
	.quad	0x3fd6adea897635e7              # double 0.35436499999999999
	.quad	0x3fef3e4cd7492791              # double 0.97635499999999997
	.quad	0x3fe7ac9f2fdb8fde              # double 0.73982199999999998
	.quad	0x3fd302c9081c2e34              # double 0.297045
	.quad	0x3fcf08b32ce89657              # double 0.242453
	.quad	0x3fe15db9841aac54              # double 0.54269100000000003
	.quad	0x3fedda87a072d1af              # double 0.93292600000000003
	.quad	0x3fe1ea35935fc3b5              # double 0.55984
	.quad	0x3fee2b3aabcd78c4              # double 0.94277699999999997
	.quad	0x3fa57a355043e532              # double 0.041947999999999999
	.quad	0x3fce2be8bc169c24              # double 0.23571500000000001
	.quad	0x3fe0f6ddaceee0f4              # double 0.53013500000000002
	.quad	0x3fc1704ff43419e3              # double 0.13624
	.quad	0x3fca0c6b484d76ab              # double 0.20350399999999999
	.quad	0x3fec67903211cb04              # double 0.88764200000000004
	.quad	0x3fe88b30b5aa7158              # double 0.76699099999999998
	.quad	0x3feccbea4ebdd335              # double 0.89989200000000003
	.quad	0x3fa3fee2c98e53eb              # double 0.039053999999999998
	.quad	0x3feab73d188f42ff              # double 0.83486800000000005
	.quad	0x3febc85c24c404a7              # double 0.86820799999999998
	.quad	0x3fc55e5aff2a172b              # double 0.16694200000000001
	.quad	0x3fb6b52c9d16fc9c              # double 0.088702000000000003
	.quad	0x3fccf33ca31e7d9a              # double 0.22617300000000001
	.quad	0x3fb6b6177ea1c68f              # double 0.088716000000000003
	.quad	0x3fed8954a7f8012e              # double 0.923014
	.quad	0x3fc9e19fc2a8869c              # double 0.20219799999999999
	.quad	0x3fe830dd82fd75e2              # double 0.755965
	.quad	0x3fef4fdf3b645a1d              # double 0.97850000000000003
	.quad	0x3fee2aed1394317b              # double 0.94274000000000002
	.quad	0x3fb84f5d35653c9b              # double 0.094961000000000004
	.quad	0x3fe446d1e108c3f4              # double 0.63364500000000001
	.quad	0x3fe66e08f2170931              # double 0.700932
	.quad	0x3fefa5614df8b157              # double 0.98893799999999998
	.quad	0x3fc0ebbba55d1c3b              # double 0.13219400000000001
	.quad	0x3fe55f78359bc340              # double 0.66790400000000005
	.quad	0x3fe63f8769ec2ce4              # double 0.69525499999999996
	.quad	0x3fdcff865d7cb2d9              # double 0.453096
	.quad	0x3fc62b1704ff4342              # double 0.17319000000000001
	.quad	0x3feeaa0663c74fb5              # double 0.95825499999999996
	.quad	0x3fe7a47ecfe9b7bf              # double 0.73882999999999999
	.quad	0x3f7d7ba6698bb4d5              # double 0.0071980000000000004
	.quad	0x3fe997aaac1094a3              # double 0.79976400000000003
	.quad	0x3fe8d8be7296f651              # double 0.77645799999999998
	.quad	0x3fefaa715831f03d              # double 0.98955599999999999
	.quad	0x3fee0ea7ce0fc2ec              # double 0.93928900000000004
	.quad	0x3fcc614163779e9d              # double 0.221718
	.quad	0x3fdcdd7a99fa11a9              # double 0.45101799999999997
	.quad	0x3fd01016ce789e77              # double 0.25098199999999998
	.quad	0x3f9c77574f722e1b              # double 0.027799000000000001
	.quad	0x3fef56f976790321              # double 0.97936699999999998
	.quad	0x3fe995831f03d146              # double 0.79950100000000002
	.quad	0x3feeba6698bb4d49              # double 0.96025400000000005
	.quad	0x3fc3b2f661f18ca0              # double 0.15389900000000001
	.quad	0x3fcce496ededaec5              # double 0.22572600000000001
	.quad	0x3fe26f954eb13dfb              # double 0.57612099999999999
	.quad	0x3fdc41700cd85597              # double 0.441494
	.quad	0x3fe42f87ad080b67              # double 0.63080199999999997
	.quad	0x3fd29af1886df82b              # double 0.29070699999999999
	.quad	0x3fe6475e6362a5e8              # double 0.69621200000000005
	.quad	0x3fd36adb402d16b9              # double 0.30339699999999997
	.quad	0x3fea422ccb3a2596              # double 0.82057800000000003
	.quad	0x3feab5a426bb55ac              # double 0.83467299999999999
	.quad	0x3fbd4d72799a1fd1              # double 0.114463
	.quad	0x3fb276640a6b93cd              # double 0.072119000000000003
	.quad	0x3fc59a415f45e0b5              # double 0.16877
	.quad	0x3fee3dbc23315d70              # double 0.94503599999999999
	.quad	0x3fd50f0e90bc7b46              # double 0.329044
	.quad	0x3fe261672324c836              # double 0.57438999999999996
	.quad	0x3fc6f6cefed63455              # double 0.17940700000000001
	.quad	0x3fc904039abf3387              # double 0.195435
	.quad	0x3fe3cb1897a67a53              # double 0.61854200000000004
	.quad	0x3fed068db8bac711              # double 0.90705000000000002
	.quad	0x3fdf93e1c9b41398              # double 0.49340099999999998
	.quad	0x3fd5702e6644d877              # double 0.33497199999999999
	.quad	0x3fc7bf2f55582129              # double 0.18552199999999999
	.quad	0x3fc33d6c72192210              # double 0.150312
	.quad	0x3fedfa82e87d2c7c              # double 0.93683000000000005
	.quad	0x3fe035fc3b4f6167              # double 0.50658999999999998
	.quad	0x3f9f0e4da09cc31a              # double 0.030328000000000001
	.quad	0x3fe74b89d6adf71f              # double 0.72797100000000003
	.quad	0x3fec18116ebd4cfd              # double 0.877938
	.quad	0x3fe81107faa044af              # double 0.75207900000000005
	.quad	0x3fe5d530489d27c4              # double 0.68227400000000005
	.quad	0x3fd406a2b1704ff4              # double 0.31290499999999999
	.quad	0x3fe0dd63886594af              # double 0.52702499999999997
	.quad	0x3fe65f5275ee99a6              # double 0.69913599999999998
	.quad	0x3fe44013ec460ed8              # double 0.632822
	.quad	0x3fdbe79ee02a77a3              # double 0.43601200000000001
	.quad	0x3fc9536933a0407d              # double 0.19785800000000001
	.quad	0x3fda849cb252ce03              # double 0.41434399999999999
	.quad	0x3fd0b25f633ce63a              # double 0.26088699999999998
	.quad	0x3fa386b15f88fc93              # double 0.038136999999999997
	.quad	0x3fd324aada33bd9d              # double 0.29911300000000002
	.quad	0x3fd60c026cc1ca3a              # double 0.34448299999999998
	.quad	0x3fb81aef6f8f0414              # double 0.094160999999999995
	.quad	0x3fd5c48f10a99b6f              # double 0.34012199999999998
	.quad	0x3fdcfebd09e12a52              # double 0.45304800000000001
	.quad	0x3fee0d77b7c7820a              # double 0.93914399999999998
	.quad	0x3fdfc51dabe2717a              # double 0.49640600000000001
	.quad	0x3feecec41dd1a21f              # double 0.96274000000000004
	.quad	0x3fb9b71758e21965              # double 0.10045
	.quad	0x3febd9f6ec5b078e              # double 0.87035700000000005
	.quad	0x3fd387ca643cc07b              # double 0.30516300000000002
	.quad	0x3feabe6c4c5974e6              # double 0.83574499999999996
	.quad	0x3f996d8f4f93bc0a              # double 0.024832
	.quad	0x3fa45953586ca8a0              # double 0.039744000000000002
	.quad	0x3fc870f3882278d1              # double 0.19094700000000001
	.quad	0x3fdcf1b691212514              # double 0.45225300000000002
	.quad	0x3feae8c692f6e829              # double 0.84091499999999997
	.quad	0x3fe83acd5b6805a3              # double 0.75717800000000002
	.quad	0x3fe8b11409a24031              # double 0.77161599999999997
	.quad	0x3fd0d41fa7653437              # double 0.26294699999999999
	.quad	0x3fee21cac083126f              # double 0.94162500000000005
	.quad	0x3fcff63c31df761d              # double 0.24970200000000001
	.quad	0x3fd6a8650e779208              # double 0.35402800000000001
	.quad	0x3fe24ba0e8427419              # double 0.57173200000000002
	.quad	0x3fe6961e4f765fd9              # double 0.70582500000000004
	.quad	0x3fd0c0379314445b              # double 0.26173200000000002
	.quad	0x3fe62074ea8da7f4              # double 0.69146200000000002
	.quad	0x3fde58c08b75ea68              # double 0.47416700000000001
	.quad	0x3fc4d64d7f0ed3d8              # double 0.16278999999999999
	.quad	0x3fccdbad3a604e1e              # double 0.22545399999999999
	.quad	0x3feea17b0f6ad70e              # double 0.95721199999999995
	.quad	0x3fe629c779a6b50b              # double 0.69259999999999999
	.quad	0x3fd936006d0d4995              # double 0.39392100000000002
	.quad	0x3fdff6e3f78bbd38              # double 0.499444
	.quad	0x3fea304ab606b7aa              # double 0.81839499999999998
	.quad	0x3fe5c83a96d4c33b              # double 0.68069199999999996
	.quad	0x3fb6517e77d523b3              # double 0.087180999999999995
	.quad	0x3feb6221c8a7a41e              # double 0.85572899999999996
	.quad	0x3fc3a5a038194c01              # double 0.15349199999999999
	.quad	0x3fee14a2b9d3cbc5              # double 0.94001900000000005
	.quad	0x3fe8de54b48d3ae7              # double 0.77714000000000005
	.quad	0x3fe3e29d8409e55c              # double 0.62141299999999999
	.quad	0x3fab69552e2fbe34              # double 0.053538000000000002
	.quad	0x3f9ae5796bfca85d              # double 0.026266000000000001
	.quad	0x3f8e846a5d6bebe1              # double 0.014900999999999999
	.quad	0x3fc534c5da6a4441              # double 0.16567299999999999
	.quad	0x3fecc32873bc903f              # double 0.89882300000000004
	.quad	0x3fc9e74299d883ba              # double 0.20236999999999999
	.quad	0x3fd7d7e45803cd14              # double 0.37255199999999999
	.quad	0x3fe9dc8754f3775c              # double 0.80817000000000005
	.quad	0x3fea5f19d66adb40              # double 0.82410899999999998
	.quad	0x3fe87db09a671ef3              # double 0.765343
	.quad	0x3fcf0a808c8259e2              # double 0.242508
	.quad	0x3fe466ec9e236c16              # double 0.63756400000000002
	.quad	0x3fdea697aeddce7d              # double 0.47891800000000001
	.quad	0x3fe3219439de481f              # double 0.59784899999999996
	.quad	0x3fb8b0c026cc1ca4              # double 0.096447000000000004
	.quad	0x3fc3bf162ae4b018              # double 0.15426899999999999
	.quad	0x3fe272e48e8a71de              # double 0.57652499999999995
	.quad	0x3fe5ea832b990afe              # double 0.68487699999999996
	.quad	0x3fc46aa8eb463498              # double 0.15950500000000001
	.quad	0x3fe4caa9717df19d              # double 0.64973899999999996
	.quad	0x3fb29930be0ded29              # double 0.072650000000000006
	.quad	0x3fec003cd141a693              # double 0.87502899999999995
	.quad	0x3fcf1f4f50a02b84              # double 0.243143
	.quad	0x3fe3ff498c3b0c46              # double 0.62491300000000005
	.quad	0x3fb75019f3c70c99              # double 0.091065999999999994
	.quad	0x3fee8c75c4a83b1d              # double 0.95464599999999999
	.quad	0x3fef087442c7fbad              # double 0.96978200000000003
	.quad	0x3fcfc64345cfede9              # double 0.24823799999999999
	.quad	0x3fda4c0df58c08b7              # double 0.41089199999999998
	.quad	0x3fb6e9ff0cbaf966              # double 0.089508000000000004
	.quad	0x3fdaefd00713f078              # double 0.42088700000000001
	.quad	0x3fe14fa69be09bb7              # double 0.54097300000000004
	.quad	0x3fc55f676ea4228a              # double 0.16697400000000001
	.quad	0x3fd0d3fe1975f2cb              # double 0.26293899999999998
	.quad	0x3fedddfc9ff92f2b              # double 0.93334799999999996
	.quad	0x3fe480474d9c6b05              # double 0.64065899999999998
	.quad	0x3fe5a60b2c83ec89              # double 0.67651899999999998
	.quad	0x3fee5b0ff10ecb75              # double 0.94861600000000001
	.quad	0x3fe86049ecb31c22              # double 0.76175400000000004
	.quad	0x3fe2261bf37b8d3f              # double 0.56715199999999999
	.quad	0x3fd8c8a372606fac              # double 0.38724599999999998
	.quad	0x3fe765b20b8066c3              # double 0.73116400000000004
	.quad	0x3fd14b2314013ec4              # double 0.27021099999999998
	.quad	0x3fe58a6117720c8d              # double 0.67314200000000002
	.quad	0x3fefaadc4c9c90c5              # double 0.98960700000000001
	.quad	0x3fe05425f202107b              # double 0.51027199999999995
	.quad	0x3fea41fea8112ba1              # double 0.82055599999999995
	.quad	0x3fc242d8c2a454de              # double 0.14266499999999999
	.quad	0x3fe722a2c2374795              # double 0.72297800000000001
	.quad	0x3fc91ab0856e696a              # double 0.196127
	.quad	0x3fce7685985ad539              # double 0.23799200000000001
	.quad	0x3fe0a2db61bb05fb              # double 0.51988000000000001
	.quad	0x3faad40aaeafab54              # double 0.052399000000000001
	.quad	0x3fc7d041cc532a49              # double 0.18604299999999999
	.quad	0x3feebeaf6837f7be              # double 0.96077699999999999
	.quad	0x3fd730caa326e115              # double 0.36235299999999998
	.quad	0x3fbd71f36262cba7              # double 0.11502
	.quad	0x3fe33d35eb7457c1              # double 0.60122200000000003
	.quad	0x3fcf66e86c6583e8              # double 0.24532799999999999
	.quad	0x3fe4b673c4f3ba77              # double 0.64727199999999996
	.quad	0x3fe88667f90d9d77              # double 0.76640699999999995
	.quad	0x3fe351351159c497              # double 0.60366299999999995
	.quad	0x3fe2a2d2fe3f35a0              # double 0.582376
	.quad	0x3f7be8ff327aa68f              # double 0.0068139999999999997
	.quad	0x3fe79dc0db2702a3              # double 0.73800699999999997
	.quad	0x3fcbb9f127f5e84f              # double 0.216612
	.quad	0x3fe0def62f9ca5be              # double 0.52721700000000005
	.quad	0x3feea6a65cf67b1c              # double 0.95784299999999999
	.quad	0x3fdebca5375c8da0              # double 0.48026400000000002
	.quad	0x3fe61ea140570825              # double 0.69123900000000005
	.quad	0x3fbdb5e95b78cc9a              # double 0.11605699999999999
	.quad	0x3fe004f8f8a4c1ec              # double 0.50060700000000002
	.quad	0x3fd187a4a48f96e1              # double 0.27390399999999998
	.quad	0x3fefcf850df15a4b              # double 0.99408200000000002
	.quad	0x3fe3d256798958da              # double 0.61942600000000003
	.quad	0x3fd5034f3fd933e3              # double 0.32832699999999998
	.quad	0x3fe0c3b2dd377e1c              # double 0.52388900000000005
	.quad	0x3fb2adc4c9c90c4e              # double 0.072964000000000001
	.quad	0x3fdf9a62ed352221              # double 0.49379800000000001
	.quad	0x3fe56c43f5f91601              # double 0.66946600000000001
	.quad	0x3fe4c4aa53fc0097              # double 0.649007
	.quad	0x3f62d77318fc5048              # double 0.0023
	.quad	0x3fe8f23465625a68              # double 0.77956599999999998
	.quad	0x3fd87ad4b2745bf2              # double 0.38249699999999998
	.quad	0x3fd94113c68661ae              # double 0.39459699999999998
	.quad	0x3fe788f648c7192f              # double 0.73546900000000004
	.quad	0x3fe409aed56b0100              # double 0.62618200000000002
	.quad	0x3fe707e7c06e19b9              # double 0.71971499999999999
	.quad	0x3fa933c1ce6c093e              # double 0.049223000000000003
	.quad	0x3fe2acb4289118c2              # double 0.58358200000000005
	.quad	0x3fab46fdeb52c9d1              # double 0.053275999999999997
	.quad	0x3fda7ee4e26d4802              # double 0.413995
	.quad	0x3feb108a265f0f5a              # double 0.84576899999999999
	.quad	0x3fef87bfe7e1fc09              # double 0.985321
	.quad	0x3fe30a04d12018a4              # double 0.59497299999999997
	.quad	0x3fe054845132f87b              # double 0.51031700000000002
	.quad	0x3fdfbedb7281fd9c              # double 0.49602400000000002
	.quad	0x3f90b673c4f3ba77              # double 0.016320999999999999
	.quad	0x3fdcf405f6ba0621              # double 0.45239400000000002
	.quad	0x3fd5ee5abc0e38a8              # double 0.34267300000000001
	.quad	0x3f8ece5710880d80              # double 0.015042
	.quad	0x3fe234b72c5197a2              # double 0.56893499999999997
	.quad	0x3fef50203e63e8de              # double 0.97853100000000004
	.quad	0x3fe9babead4f5904              # double 0.80404600000000003
	.quad	0x3fe2c927913e8145              # double 0.58705499999999999
	.quad	0x3fdf54f3775b8130              # double 0.48956
	.quad	0x3fe8b929ed3953df              # double 0.77260300000000004
	.quad	0x3fda35fc3b4f6167              # double 0.40954499999999999
	.quad	0x3fccae3a3a8e7147              # double 0.22406699999999999
	.quad	0x3fcc6e115592d98c              # double 0.222109
	.quad	0x3fdd3300de4c5111              # double 0.45623799999999998
	.quad	0x3feefcfa26a22b39              # double 0.96838100000000004
	.quad	0x3fb3db5d894812be              # double 0.077565999999999996
	.quad	0x3fee647fdc5931ca              # double 0.94976799999999995
	.quad	0x3fd2758e219652bd              # double 0.28842499999999999
	.quad	0x3fec7f3493858362              # double 0.89052799999999999
	.quad	0x3fdcb05b7cfe5860              # double 0.448264
	.quad	0x3fe66429e0a41a26              # double 0.69972699999999999
	.quad	0x3fdafd199bb2788e              # double 0.42169800000000002
	.quad	0x3fefdbad3a604e1e              # double 0.99556599999999995
	.quad	0x3fb2e653868fd19a              # double 0.073827000000000004
	.quad	0x3feed525cc426352              # double 0.96351900000000001
	.quad	0x3fbfb549f94855da              # double 0.12386
	.quad	0x3fe632b55ef1fddf              # double 0.69369000000000003
	.quad	0x3fea7483cafb3b75              # double 0.82672299999999999
	.quad	0x3fed1ef954eb13e0              # double 0.91003100000000003
	.quad	0x3fc127a20578e5c5              # double 0.134022
	.quad	0x3fdd2f5dbb9cf9a0              # double 0.45601599999999998
	.quad	0x3fb7d7d3910c2c5e              # double 0.093136999999999997
	.quad	0x3fbafcdee34fc611              # double 0.105421
	.quad	0x3fe24e7ab7564303              # double 0.57208000000000003
	.quad	0x3fdb09070fbeb9e5              # double 0.42242600000000002
	.quad	0x3fdf10f94c87980f              # double 0.48541099999999998
	.quad	0x3fe529c560c7c0f4              # double 0.66134899999999996
	.quad	0x3fe44e67d77fae36              # double 0.634571
	.quad	0x3fe579d4d834091c              # double 0.671122
	.quad	0x3fc610060780fdc1              # double 0.17236399999999999
	.quad	0x3fd222e5de15ca6d              # double 0.28338000000000002
	.quad	0x3fef152d234eb9a1              # double 0.97133499999999994
	.quad	0x3fe50ebcc6c54bcf              # double 0.658049
	.quad	0x3fd8fec99f1ae2da              # double 0.39055099999999998
	.quad	0x3fc9d0d0678c0054              # double 0.201685
	.quad	0x3fc81c044284dfce              # double 0.18835499999999999
	.quad	0x3fdff8ad25679896              # double 0.49955300000000002
	.quad	0x3fe1e2131a8ef77f              # double 0.55884699999999998
	.quad	0x3fecf7d955714b9d              # double 0.90525500000000003
	.quad	0x3fd1f7164c729f5a              # double 0.28070600000000001
	.quad	0x3fdac386d2ed783e              # double 0.418184
	.quad	0x3fef5d872f33ca32              # double 0.98016700000000001
	.quad	0x3fec857082491afc              # double 0.89128899999999999
	.quad	0x3fd4cc0379314446              # double 0.32495200000000002
	.quad	0x3fdc821af7d30ad4              # double 0.44544099999999998
	.quad	0x3fc12c8c5004fb12              # double 0.13417200000000001
	.quad	0x3f93ce2089e34331              # double 0.019341000000000001
	.quad	0x3fe36d56b00ffda4              # double 0.607097
	.quad	0x3fe8418d6909aed5              # double 0.75800199999999995
	.quad	0x3fe34b4d056c508b              # double 0.60294199999999998
	.quad	0x3fc213660e51d25b              # double 0.14121700000000001
	.quad	0x3fe8a224edf61240              # double 0.76979299999999995
	.quad	0x3fc7d03968d759ef              # double 0.18604200000000001
	.quad	0x3fca9b5a63f9a49c              # double 0.207866
	.quad	0x3fe311b823c85c25              # double 0.59591300000000003
	.quad	0x3fe174b407032980              # double 0.54549599999999998
	.quad	0x3fcfe8709741d085              # double 0.249281
	.quad	0x3fe35d67ba237cdd              # double 0.60515200000000002
	.quad	0x3fce52934acaff6d              # double 0.23689499999999999
	.quad	0x3fed8ff327aa68f5              # double 0.92382200000000003
	.quad	0x3fa7b890d5a5b963              # double 0.046330000000000003
	.quad	0x3fea3f7ced916873              # double 0.82025000000000003
	.quad	0x3fe804db9c7368ad              # double 0.75059299999999995
	.quad	0x3fdb5a964e8b7e4e              # double 0.42740400000000001
	.quad	0x3fe62a4b9884c6a4              # double 0.69266300000000003
	.quad	0x3fe35f266ba493c9              # double 0.60536500000000004
	.quad	0x3fe30b2e9ccb7d41              # double 0.59511499999999995
	.quad	0x3fe800713f077ccc              # double 0.75005399999999999
	.quad	0x3fd8ad9274e22a2c              # double 0.38559399999999999
	.quad	0x3fefa2f48c2e770c              # double 0.98864200000000002
	.quad	0x3fdcc81908e581cf              # double 0.44971299999999997
	.quad	0x3f9fa43fe5c91d15              # double 0.0309
	.quad	0x3fe762a1b5c7cd8a              # double 0.73079000000000005
	.quad	0x3fde8a47ecfe9b7c              # double 0.47719
	.quad	0x3fe4054046412cf1              # double 0.625641
	.quad	0x3fc5919ac79702e6              # double 0.16850599999999999
	.quad	0x3fecd855970b49e0              # double 0.90140799999999998
	.quad	0x3fe112ad81adea89              # double 0.53352999999999995
	.quad	0x3fea9700cd855971              # double 0.83093300000000003
	.quad	0x3fd67229e90795f6              # double 0.35071799999999997
	.quad	0x3fe7956e264e4862              # double 0.73699099999999995
	.quad	0x3fcb614df8b15726              # double 0.21390700000000001
	.quad	0x3fe690d7be9856a3              # double 0.70518099999999995
	.quad	0x3fe0a63f9a49c2c2              # double 0.52029400000000003
	.quad	0x3fdaedb7281fd9ba              # double 0.42075899999999999
	.quad	0x3fe8082adc4c9c91              # double 0.75099700000000003
	.quad	0x3fda654d61b2a27f              # double 0.41243299999999999
	.quad	0x3fd41b1960fa15db              # double 0.31415399999999999
	.quad	0x3fd20489d27c3937              # double 0.28152700000000003
	.quad	0x3fa32cc70867ad8e              # double 0.037450999999999998
	.quad	0x3fcc0e7bc3c5bd0e              # double 0.219192
	.quad	0x3fe04e3de6149c6f              # double 0.50955099999999998
	.quad	0x3fdef840181e03f7              # double 0.483902
	.quad	0x3fb95bff04577d95              # double 0.099059999999999995
	.quad	0x3fed78f041461b6d              # double 0.92101299999999997
	.quad	0x3fe1f58e219652bd              # double 0.56122499999999997
	.quad	0x3fe1fb97bb730835              # double 0.56196199999999996
	.quad	0x3fe855a9eb2074eb              # double 0.76045700000000005
	.quad	0x3fe5d2e946801712              # double 0.68199600000000005
	.quad	0x3fe01d627bf61aa4              # double 0.50358700000000001
	.quad	0x3fe46338b47c73ef              # double 0.63711200000000001
	.quad	0x3fabd6a593a2df93              # double 0.054371999999999997
	.quad	0x3fc005ff1d81f106              # double 0.12518299999999999
	.quad	0x3fec565a14488c61              # double 0.88554100000000002
	.quad	0x3fed07f23cc8de2b              # double 0.90722000000000003
	.quad	0x3fe84710cb295e9e              # double 0.75867499999999999
	.quad	0x3fa17353b4b2fa94              # double 0.034083000000000002
	.quad	0x3fe48c9752977c89              # double 0.64216200000000001
	.quad	0x3fcd6ed6777079e6              # double 0.22994500000000001
	.quad	0x3fc05c70435efa61              # double 0.12782099999999999
	.quad	0x3fefd564b662fdfc              # double 0.99479899999999998
	.quad	0x3fe7e0b0af5fd47c              # double 0.74617800000000001
	.quad	0x3fea550225742dcf              # double 0.82287699999999997
	.quad	0x3fd9b37c99ae924f              # double 0.40157999999999999
	.quad	0x3fc9c126a65cf67b              # double 0.201207
	.quad	0x3fdc97460242d05f              # double 0.44673299999999999
	.quad	0x3fed634117f8444a              # double 0.91836600000000002
	.quad	0x3fd1545c78a6dacb              # double 0.27077400000000001
	.quad	0x3fdf29e0a41a261c              # double 0.486931
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	27                              # 0x1b
	.quad	59                              # 0x3b
	.quad	90                              # 0x5a
	.quad	119                             # 0x77
	.quad	151                             # 0x97
	.quad	180                             # 0xb4
	.quad	212                             # 0xd4
	.quad	245                             # 0xf5
	.quad	280                             # 0x118
	.quad	312                             # 0x138
	.quad	342                             # 0x156
	.quad	366                             # 0x16e
	.quad	391                             # 0x187
	.quad	426                             # 0x1aa
	.quad	450                             # 0x1c2
	.quad	477                             # 0x1dd
	.quad	511                             # 0x1ff
	.quad	542                             # 0x21e
	.quad	568                             # 0x238
	.quad	598                             # 0x256
	.quad	629                             # 0x275
	.quad	654                             # 0x28e
	.quad	688                             # 0x2b0
	.quad	720                             # 0x2d0
	.quad	751                             # 0x2ef
	.quad	785                             # 0x311
	.quad	814                             # 0x32e
	.quad	839                             # 0x347
	.quad	865                             # 0x361
	.quad	896                             # 0x380
	.quad	925                             # 0x39d
	.quad	952                             # 0x3b8
	.quad	973                             # 0x3cd
	.quad	994                             # 0x3e2
	.quad	1017                            # 0x3f9
	.quad	1040                            # 0x410
	.quad	1071                            # 0x42f
	.quad	1108                            # 0x454
	.quad	1135                            # 0x46f
	.quad	1166                            # 0x48e
	.quad	1200                            # 0x4b0
	.quad	1226                            # 0x4ca
	.quad	1267                            # 0x4f3
	.quad	1291                            # 0x50b
	.quad	1316                            # 0x524
	.quad	1348                            # 0x544
	.quad	1377                            # 0x561
	.quad	1406                            # 0x57e
	.quad	1436                            # 0x59c
	.quad	1472                            # 0x5c0
	.quad	1505                            # 0x5e1
	.quad	1534                            # 0x5fe
	.quad	1559                            # 0x617
	.quad	1590                            # 0x636
	.quad	1620                            # 0x654
	.quad	1654                            # 0x676
	.quad	1686                            # 0x696
	.quad	1718                            # 0x6b6
	.quad	1746                            # 0x6d2
	.quad	1780                            # 0x6f4
	.quad	1812                            # 0x714
	.quad	1847                            # 0x737
	.quad	1877                            # 0x755
	.quad	1918                            # 0x77e
	.quad	1941                            # 0x795
	.quad	1969                            # 0x7b1
	.quad	1997                            # 0x7cd
	.quad	2029                            # 0x7ed
	.quad	2064                            # 0x810
	.quad	2094                            # 0x82e
	.quad	2124                            # 0x84c
	.quad	2149                            # 0x865
	.quad	2178                            # 0x882
	.quad	2204                            # 0x89c
	.quad	2232                            # 0x8b8
	.quad	2268                            # 0x8dc
	.quad	2298                            # 0x8fa
	.quad	2326                            # 0x916
	.quad	2355                            # 0x933
	.quad	2383                            # 0x94f
	.quad	2411                            # 0x96b
	.quad	2443                            # 0x98b
	.quad	2467                            # 0x9a3
	.quad	2500                            # 0x9c4
	.quad	2524                            # 0x9dc
	.quad	2560                            # 0xa00
	.quad	2586                            # 0xa1a
	.quad	2609                            # 0xa31
	.quad	2639                            # 0xa4f
	.quad	2668                            # 0xa6c
	.quad	2701                            # 0xa8d
	.quad	2733                            # 0xaad
	.quad	2771                            # 0xad3
	.quad	2802                            # 0xaf2
	.quad	2840                            # 0xb18
	.quad	2870                            # 0xb36
	.quad	2906                            # 0xb5a
	.quad	2937                            # 0xb79
	.quad	2968                            # 0xb98
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_3000xf64, 24000

	.section	".note.GNU-stack","",@progbits
