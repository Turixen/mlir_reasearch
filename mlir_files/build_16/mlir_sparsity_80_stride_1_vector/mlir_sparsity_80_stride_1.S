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
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
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
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	.quad	0x3fe612d98bf7f067              # double 0.689801
	.quad	0x3fe67b6fe2e6ea85              # double 0.70256799999999997
	.quad	0x3f99f0e4da09cc32              # double 0.025333000000000001
	.quad	0x3fe92044ae85b9e9              # double 0.78518900000000003
	.quad	0x3feb611dbca9691a              # double 0.85560499999999995
	.quad	0x3feb69b38d60a633              # double 0.856653
	.quad	0x3fc7165d3996fa83              # double 0.18037
	.quad	0x3fbbde7210be9425              # double 0.108863
	.quad	0x3feecfd08d4bad7d              # double 0.96286799999999994
	.quad	0x3fd8645e4e69f05f              # double 0.38112600000000002
	.quad	0x3fec08bfc2224edf              # double 0.87606799999999996
	.quad	0x3fc756191148fda0              # double 0.182315
	.quad	0x3fedbc1eff9f87f0              # double 0.92921399999999998
	.quad	0x3fbe28cbd1244a62              # double 0.11781
	.quad	0x3fd77dbb16c1e365              # double 0.36704900000000001
	.quad	0x3fee4395810624dd              # double 0.94574999999999998
	.quad	0x3fe21337eb28d866              # double 0.56484599999999996
	.quad	0x3fb82d16b97fe8ee              # double 0.094437999999999994
	.quad	0x3fedc24c404a72eb              # double 0.92996800000000002
	.quad	0x3fe9793bc0a06ea0              # double 0.796049
	.quad	0x3fbafb6dca07f66f              # double 0.10539900000000001
	.quad	0x3fd74c9c90c4dec2              # double 0.36405100000000001
	.quad	0x3fe6ecb31c219eb6              # double 0.71639399999999998
	.quad	0x3fdbfa69be09bb6b              # double 0.43715900000000002
	.quad	0x3fe25b402d16b980              # double 0.57363900000000001
	.quad	0x3fdd0a63305100a4              # double 0.45375900000000002
	.quad	0x3fc54202d9cf13cf              # double 0.166077
	.quad	0x3fe4963fdd65a145              # double 0.64334100000000005
	.quad	0x3feb3784662bae04              # double 0.85052700000000003
	.quad	0x3fc43cc8de2ac322              # double 0.158105
	.quad	0x3fee7eaa2a0a9585              # double 0.95296199999999998
	.quad	0x3fa4bea4ebdd334c              # double 0.040516999999999997
	.quad	0x3fe0ad40aaeafab5              # double 0.52114899999999997
	.quad	0x3fd585b9e8c47a18              # double 0.336287
	.quad	0x3f976d117b5286b6              # double 0.022877000000000002
	.quad	0x3fe899fa11a975b0              # double 0.76879600000000003
	.quad	0x3fe6fd71b0468449              # double 0.71843800000000002
	.quad	0x3fe31ca7d6733ebc              # double 0.597248
	.quad	0x3fe150bb6ed67770              # double 0.54110499999999995
	.quad	0x3fed8205ff1d81f1              # double 0.922122
	.quad	0x3fe2e69270b06c44              # double 0.590646
	.quad	0x3fe780c0f01fb82c              # double 0.73446699999999998
	.quad	0x3fe69a93293d102c              # double 0.70636900000000002
	.quad	0x3fdeeabffcdab192              # double 0.48307800000000001
	.quad	0x3fd5c5e2cdc011d3              # double 0.34020299999999998
	.quad	0x3fd0dcbddb9841ab              # double 0.26347300000000001
	.quad	0x3fdd03254e6e221d              # double 0.45331700000000003
	.quad	0x3fe7bbfb58d1526e              # double 0.74169700000000005
	.quad	0x3fdfc8bc9cd3e0bd              # double 0.49662699999999999
	.quad	0x3fd55d28d002e233              # double 0.33381100000000002
	.quad	0x3fdd4a3400b88ca4              # double 0.45765400000000001
	.quad	0x3fb6bbcb1cc96463              # double 0.088803000000000007
	.quad	0x3fed2b7fe08aefb3              # double 0.91156000000000004
	.quad	0x3fe17210be9424e6              # double 0.54517400000000005
	.quad	0x3fe40d0247021d11              # double 0.62658800000000003
	.quad	0x3fed023c85c24c40              # double 0.90652299999999997
	.quad	0x3fe666c6de76427c              # double 0.70004599999999995
	.quad	0x3fdddfb0d51f81a6              # double 0.46677800000000003
	.quad	0x3fe89eafee6fb4c4              # double 0.76937100000000002
	.quad	0x3fe872c5197a2489              # double 0.76400999999999997
	.quad	0x3fa2363b256ffc11              # double 0.035569999999999997
	.quad	0x3fdb9780baa582dc              # double 0.43112200000000001
	.quad	0x3fe51b584b1ab085              # double 0.65958799999999995
	.quad	0x3fd411cb039ef0f1              # double 0.31358599999999998
	.quad	0x3fe33a2df9378ee3              # double 0.60085200000000005
	.quad	0x3fee9ff7164c729f              # double 0.95702699999999996
	.quad	0x3fd5af42784a9479              # double 0.33882200000000001
	.quad	0x3fd494dd72367e41              # double 0.32158599999999998
	.quad	0x3febdd7ecbb7f9d7              # double 0.87078800000000001
	.quad	0x3fe6a5072085b185              # double 0.70764499999999997
	.quad	0x3fa3586ca89fc6da              # double 0.037783999999999998
	.quad	0x3fef58b60f1b25f6              # double 0.97957899999999998
	.quad	0x3fefa32b12d3415b              # double 0.98866799999999999
	.quad	0x3fee0372e6a76966              # double 0.937921
	.quad	0x3fe9aa7ded6ba8c6              # double 0.80206200000000005
	.quad	0x3fd4ec5f394b7b29              # double 0.32692700000000002
	.quad	0x3fc9a9435ac8a372              # double 0.20047799999999999
	.quad	0x3fef13c254a3c643              # double 0.97116199999999996
	.quad	0x3fd94e874c8ffb8b              # double 0.39541799999999999
	.quad	0x3fbe045baf533f42              # double 0.117254
	.quad	0x3fcc4be40420f6f1              # double 0.22106600000000001
	.quad	0x3fef023854046413              # double 0.96902100000000002
	.quad	0x3fe77ebf22c01e69              # double 0.73422200000000004
	.quad	0x3fc5c768dfbd6a59              # double 0.17014799999999999
	.quad	0x3fd8b6f9fcb0c027              # double 0.38616800000000001
	.quad	0x3fec7db4cc250721              # double 0.89034500000000005
	.quad	0x3fedcffa7eb6bf44              # double 0.93163799999999996
	.quad	0x3fef0b3f63c31df7              # double 0.97012299999999995
	.quad	0x3fea069c66d373b0              # double 0.813307
	.quad	0x3fca8dc11e42e126              # double 0.207451
	.quad	0x3fd894ea077036ca              # double 0.38408900000000001
	.quad	0x3fe3182ecaeea63b              # double 0.59670199999999995
	.quad	0x3fe6ea2d2fe3f35a              # double 0.716086
	.quad	0x3fe8ac27a63736ce              # double 0.77101500000000001
	.quad	0x3fdac282c6ef3d3a              # double 0.41812199999999999
	.quad	0x3fb70856e696a26e              # double 0.089970999999999995
	.quad	0x3fe4eb228dc981bf              # double 0.65370300000000003
	.quad	0x3feb7ba6698bb4d5              # double 0.85884400000000005
	.quad	0x3fe95c26dce39b45              # double 0.79249899999999995
	.quad	0x3fecee5cd4ed2cbf              # double 0.90409700000000004
	.quad	0x3fe5bc77143393ab              # double 0.67925599999999997
	.quad	0x3fd74345cfede97d              # double 0.363481
	.quad	0x3feb93cab81f969e              # double 0.86179099999999997
	.quad	0x3fe418958d9b5e96              # double 0.62800100000000003
	.quad	0x3fd80b955f78359c              # double 0.37570700000000001
	.quad	0x3fef7dcdf6987831              # double 0.98410699999999995
	.quad	0x3fb59934efcbd556              # double 0.084368999999999999
	.quad	0x3fd9d2c7b890d5a6              # double 0.40349000000000002
	.quad	0x3fe6017763e4abe7              # double 0.68767900000000004
	.quad	0x3fe7a265f0f5a101              # double 0.73857399999999995
	.quad	0x3fe24d8fd5cb7910              # double 0.57196800000000003
	.quad	0x3fe7291d9b1b79d9              # double 0.723769
	.quad	0x3fc4c575c0767d35              # double 0.162276
	.quad	0x3fe44f8f8a4c1ebd              # double 0.63471200000000005
	.quad	0x3fedb6bd2b6f1993              # double 0.92855699999999997
	.quad	0x3fecaa3486f049aa              # double 0.89577700000000005
	.quad	0x3fe0b1f46ed245b3              # double 0.52172300000000005
	.quad	0x3fe67219220ff541              # double 0.70142800000000005
	.quad	0x3feca9068986fcdf              # double 0.89563300000000001
	.quad	0x3fc920ea5b530ced              # double 0.19631699999999999
	.quad	0x3feb84bc27631b58              # double 0.85995299999999997
	.quad	0x3fd1ab21815a07b3              # double 0.27606999999999998
	.quad	0x3fe5f1715c63ae25              # double 0.68572299999999997
	.quad	0x3fd193faf42784a9              # double 0.27465699999999998
	.quad	0x3fe55c0980b24207              # double 0.66748499999999999
	.quad	0x3fe4c8b86b15f890              # double 0.64950200000000002
	.quad	0x3fe1db3bfb58d152              # double 0.55801199999999995
	.quad	0x3fd445f9df548ece              # double 0.31677100000000002
	.quad	0x3feac2a023209678              # double 0.83625799999999995
	.quad	0x3fbb48c2e770bd01              # double 0.10657899999999999
	.quad	0x3fb58d36b4c7f349              # double 0.084185999999999997
	.quad	0x3feac304ccee5abc              # double 0.83630599999999999
	.quad	0x3fe6382c2bd7f51f              # double 0.694357
	.quad	0x3fe4542e557de0d6              # double 0.63527599999999995
	.quad	0x3fe4c70867ad8e43              # double 0.64929599999999998
	.quad	0x3fb735d249e44fa0              # double 0.090664999999999996
	.quad	0x3fb9a4052d666a98              # double 0.100159
	.quad	0x3fdeb5286b59146e              # double 0.47980699999999998
	.quad	0x3fa4477ff151e753              # double 0.039607999999999997
	.quad	0x3fc66ed245b291b8              # double 0.175257
	.quad	0x3febb0d306a2b170              # double 0.86533499999999997
	.quad	0x3fdb85b18548a9bd              # double 0.430035
	.quad	0x3fee92a51e321a2e              # double 0.95540099999999994
	.quad	0x3fe572b66b6177ea              # double 0.67025299999999999
	.quad	0x3fe4b476295208e1              # double 0.64702899999999997
	.quad	0x3feda94dd72367e4              # double 0.92691699999999999
	.quad	0x3fcff98b71b8aa00              # double 0.249803
	.quad	0x3fe6d80c308feac4              # double 0.71387299999999998
	.quad	0x3fe465929670196e              # double 0.63739900000000005
	.quad	0x3fe8098f605ab3ab              # double 0.75116700000000003
	.quad	0x3fccd6238da3c212              # double 0.22528500000000001
	.quad	0x3fbda3e39f77292c              # double 0.115782
	.quad	0x3fcf5cbff47735c2              # double 0.24501800000000001
	.quad	0x3fc51bef49cf56eb              # double 0.16491500000000001
	.quad	0x3fe0f7c243dccea3              # double 0.53024400000000005
	.quad	0x3fcbdd00f776c482              # double 0.21768199999999999
	.quad	0x3fdb27179bfdf7e8              # double 0.424261
	.quad	0x3fe6148ba83f4eca              # double 0.69000799999999995
	.quad	0x3fe7e37bd05af6c7              # double 0.74651900000000004
	.quad	0x3fd2af9ebe9c8861              # double 0.29196899999999998
	.quad	0x3fda34a01abd1aa8              # double 0.40946199999999999
	.quad	0x3fb385c67dfe32a0              # double 0.076259999999999994
	.quad	0x3febcb10342aa9f8              # double 0.86853800000000003
	.quad	0x3fe5c449dbec2481              # double 0.68021100000000001
	.quad	0x3fe13686a4ca4f44              # double 0.537906
	.quad	0x3fa7605ab3aabcd8              # double 0.045657000000000003
	.quad	0x3fe002cb20fb224b              # double 0.50034100000000004
	.quad	0x3fe38dfdef8487ba              # double 0.61108300000000004
	.quad	0x3fe098eda22f6a51              # double 0.51866800000000002
	.quad	0x3f98b86b15f88fc9              # double 0.024140999999999999
	.quad	0x3fc4fabda0dfdef8              # double 0.16390199999999999
	.quad	0x3fe52d538ac18f82              # double 0.66178300000000001
	.quad	0x3fb26772d5e071c5              # double 0.071890999999999997
	.quad	0x3fe4725c3dee7818              # double 0.63895999999999997
	.quad	0x3fe88e30446b69db              # double 0.76735699999999996
	.quad	0x3feab11409a24031              # double 0.83411599999999997
	.quad	0x3fd68a4c1ebc83a9              # double 0.35219099999999998
	.quad	0x3fee3bf727136a40              # double 0.94481999999999999
	.quad	0x3fb314877681669d              # double 0.074532000000000001
	.quad	0x3fd7242070b8cfc0              # double 0.36158000000000001
	.quad	0x3fc98d6909aed56b              # double 0.199628
	.quad	0x3fb0c5fbf83382e4              # double 0.065520999999999996
	.quad	0x3fe756a37ac3eb7d              # double 0.72932600000000003
	.quad	0x3fe25d8d79d0a676              # double 0.57391999999999999
	.quad	0x3fe04091c087442c              # double 0.50788199999999994
	.quad	0x3fe862c12ad81adf              # double 0.76205500000000004
	.quad	0x3fe0a849cb252ce0              # double 0.52054299999999998
	.quad	0x3fde311e85fd04a3              # double 0.471748
	.quad	0x3fe9fd7e45803cd1              # double 0.81219399999999997
	.quad	0x3fe456de33269df9              # double 0.63560399999999995
	.quad	0x3fd21bb05faebc41              # double 0.28294000000000002
	.quad	0x3fed97dae81882ae              # double 0.92478700000000003
	.quad	0x3fee4f3dc054ef46              # double 0.94717300000000004
	.quad	0x3fe5d184c271fff8              # double 0.68182600000000004
	.quad	0x3fe3ce13f4a98aa8              # double 0.61890599999999996
	.quad	0x3fda995aaf78feef              # double 0.41560999999999998
	.quad	0x3fdeabc0e38a7e74              # double 0.47923300000000002
	.quad	0x3fe9b34c5da6a444              # double 0.80313699999999998
	.quad	0x3fef4aa326e11559              # double 0.97786099999999998
	.quad	0x3fd4f4384ba0e842              # double 0.32740599999999997
	.quad	0x3fb557abb8800eae              # double 0.083368999999999998
	.quad	0x3fe38cbf2b239a39              # double 0.610931
	.quad	0x3fdbbcad9ad85dfb              # double 0.43339100000000003
	.quad	0x3fe0c3547e06961c              # double 0.52384399999999998
	.quad	0x3fc56a37ac3eb7cc              # double 0.16730400000000001
	.quad	0x3fe3440af1cb89d7              # double 0.60205600000000004
	.quad	0x3fcae78183f91e64              # double 0.21018999999999999
	.quad	0x3feae1a60d4562e1              # double 0.84004500000000004
	.quad	0x3fe4176ddaceee0f              # double 0.62785999999999997
	.quad	0x3fd4d7be9856a37b              # double 0.32566800000000001
	.quad	0x3fe8cd63cb817332              # double 0.77507199999999998
	.quad	0x3fe415a4acf312b2              # double 0.62764200000000003
	.quad	0x3fb29c12f09d8c6d              # double 0.072693999999999995
	.quad	0x3fda7cb70ac3a861              # double 0.41386200000000001
	.quad	0x3fe4f5275ee99a63              # double 0.65492600000000001
	.quad	0x3fe9cf2495e17e35              # double 0.80653600000000003
	.quad	0x3fecd275ee99a62f              # double 0.90069100000000002
	.quad	0x3fec466b1e5c0b9a              # double 0.88359600000000005
	.quad	0x3fd23c536d655e29              # double 0.28493200000000002
	.quad	0x3fe9b547e06961c3              # double 0.80337899999999995
	.quad	0x3fe561bb05faebc4              # double 0.66818
	.quad	0x3fec02a5614df8b1              # double 0.87532299999999996
	.quad	0x3fe9675579af1887              # double 0.79386400000000001
	.quad	0x3fd871c53f39d1b3              # double 0.38194400000000001
	.quad	0x3fe23a08398a6549              # double 0.56958399999999998
	.quad	0x3fe2cc165907d912              # double 0.58741299999999996
	.quad	0x3fddecd4aa10e022              # double 0.46758
	.quad	0x3fdf068123810e88              # double 0.48477199999999998
	.quad	0x3fddd3e0bd44998d              # double 0.466057
	.quad	0x3fea6be7afa72218              # double 0.82567199999999996
	.quad	0x3fed353b4b2fa93b              # double 0.912748
	.quad	0x3fe09f5dfeb8d823              # double 0.51945399999999997
	.quad	0x3fe87cf3dc054ef4              # double 0.76525299999999996
	.quad	0x3fd8620ee8d10f52              # double 0.38098500000000002
	.quad	0x3fd4d6238da3c212              # double 0.32557000000000003
	.quad	0x3fde57fb69984a0e              # double 0.47411999999999999
	.quad	0x3fd0a858793dd97f              # double 0.26027499999999998
	.quad	0x3fdb3d70a3d70a3d              # double 0.42562499999999998
	.quad	0x3fd356da0168b5cc              # double 0.302176
	.quad	0x3fd162d40aaeafab              # double 0.27165699999999998
	.quad	0x3fed96744b2b777d              # double 0.92461599999999999
	.quad	0x3fe51845dc832336              # double 0.65921300000000005
	.quad	0x3fc2be2f7b17ce53              # double 0.146429
	.quad	0x3fdb8e9f6a93f291              # double 0.43058000000000002
	.quad	0x3fe4864020817fc7              # double 0.64138799999999996
	.quad	0x3fc0a9ef5232d2bb              # double 0.130186
	.quad	0x3fc58f605ab3aabd              # double 0.168438
	.quad	0x3fe616f4384ba0e8              # double 0.69030199999999997
	.quad	0x3fbfbbe878fabda1              # double 0.123961
	.quad	0x3fd0138bcdfefbf4              # double 0.251193
	.quad	0x3fe86fd00713f078              # double 0.76364900000000002
	.quad	0x3fc157928e0c9d9d              # double 0.13548499999999999
	.quad	0x3fde41d8e8640208              # double 0.47276899999999999
	.quad	0x3fed52b0a6fc58ac              # double 0.91634400000000004
	.quad	0x3fd04c8bc9cd3e0c              # double 0.25467200000000001
	.quad	0x3fe8060999dcb578              # double 0.75073699999999999
	.quad	0x3fe665604189374c              # double 0.69987500000000002
	.quad	0x3fb6f0281ba7fc33              # double 0.089602000000000001
	.quad	0x3fef1b1d92b7fe09              # double 0.97206000000000003
	.quad	0x3fbd8383ad9f0a1c              # double 0.115288
	.quad	0x3fb4ef459d99029b              # double 0.081776000000000001
	.quad	0x3fcb1843c3a42f1f              # double 0.21167800000000001
	.quad	0x3fed648e8a71de6a              # double 0.91852500000000004
	.quad	0x3fe3a699c7bcc294              # double 0.61408700000000005
	.quad	0x3fec13ab430f4949              # double 0.87740099999999999
	.quad	0x3fe24e11dbca9692              # double 0.57203000000000004
	.quad	0x3f9d78c436fc1590              # double 0.028781000000000001
	.quad	0x3fe5fc0096feb4a6              # double 0.68701199999999996
	.quad	0x3fe22550870110a1              # double 0.56705499999999998
	.quad	0x3fb4955b4677b396              # double 0.080404000000000003
	.quad	0x3fd734b945308bb9              # double 0.362593
	.quad	0x3fc2253111f0c34c              # double 0.14176
	.quad	0x3fe985e80bed740c              # double 0.79759599999999997
	.quad	0x3fe9684ad794a6ec              # double 0.79398100000000004
	.quad	0x3fefa21426fe718b              # double 0.98853500000000005
	.quad	0x3fd6d0f1f57b41c0              # double 0.35650300000000001
	.quad	0x3feb144aa53fc009              # double 0.84622699999999995
	.quad	0x3fc1d640e9d51b50              # double 0.139351
	.quad	0x3fd58b0079a2834d              # double 0.33660899999999999
	.quad	0x3fee155d5f56a7ad              # double 0.94010800000000005
	.quad	0x3fe2275ab7dc7ac0              # double 0.56730400000000003
	.quad	0x3fd88cf398e97072              # double 0.38360300000000003
	.quad	0x3fdaf5ec80c73abd              # double 0.42126000000000002
	.quad	0x3fe6c7bedb7281fe              # double 0.71188300000000004
	.quad	0x3fe126b723ee1bd2              # double 0.53597600000000001
	.quad	0x3fe3e1437c5692b4              # double 0.62124800000000002
	.quad	0x3fef8e086bdf4c2b              # double 0.98608799999999996
	.quad	0x3fed6a0fd3b29a1c              # double 0.91919700000000004
	.quad	0x3fd0f81e8a2ec28b              # double 0.26514399999999999
	.quad	0x3fcaaf3e468cac4b              # double 0.20847299999999999
	.quad	0x3fe9ad0e56041893              # double 0.80237499999999995
	.quad	0x3fda677f6b1a2a4e              # double 0.41256700000000002
	.quad	0x3fe7943393ab430f              # double 0.73684099999999997
	.quad	0x3fec76b7ed41b75a              # double 0.88949199999999995
	.quad	0x3fb7077ccc037931              # double 0.089957999999999996
	.quad	0x3fed79e59f2ba9d2              # double 0.92113
	.quad	0x3fa6acc92146a1a5              # double 0.044287
	.quad	0x3fd050acc0bdcad1              # double 0.25492399999999998
	.quad	0x3fcb46f587d6f976              # double 0.21310299999999999
	.quad	0x3fefe6fb4c3c18b5              # double 0.99694599999999999
	.quad	0x3fd6455eaee2003b              # double 0.34798400000000002
	.quad	0x3fc8f2becedd4845              # double 0.194908
	.quad	0x3fe850d49949e881              # double 0.75986699999999996
	.quad	0x3fe57ddca4b124d1              # double 0.67161400000000004
	.quad	0x3fadfa658c4bd33d              # double 0.058550999999999999
	.quad	0x3fe749b845564b66              # double 0.72774899999999998
	.quad	0x3fe1e22a2c237479              # double 0.55885799999999997
	.quad	0x3fe736c15d2d01c1              # double 0.72543400000000002
	.quad	0x3fdc0e1719f7f8cb              # double 0.43836000000000003
	.quad	0x3feb971c10d7be98              # double 0.86219599999999996
	.quad	0x3fe9a7136a400fbb              # double 0.80164500000000005
	.quad	0x3fbc88d6d3b6cbda              # double 0.11146300000000001
	.quad	0x3fe366149c6f36f0              # double 0.60621100000000006
	.quad	0x3fe088bfc2224edf              # double 0.51669299999999996
	.quad	0x3fc4fa1e3eaf6838              # double 0.163883
	.quad	0x3fa1817b95a29414              # double 0.034190999999999999
	.quad	0x3fe71cc964628028              # double 0.72226400000000002
	.quad	0x3fdad349be8ff328              # double 0.41914600000000002
	.quad	0x3fe857c914b167ec              # double 0.76071599999999994
	.quad	0x3fb9f4a1272c94b4              # double 0.10138900000000001
	.quad	0x3fe66d9dfdac68a9              # double 0.70088099999999998
	.quad	0x3fe13fcc9ea9a3d3              # double 0.53903800000000002
	.quad	0x3fd89f16b11c6d1e              # double 0.38471
	.quad	0x3fe99cef240fa9c1              # double 0.80040699999999998
	.quad	0x3fdd4128bf3bea92              # double 0.45710200000000001
	.quad	0x3fe96cd29131ec0b              # double 0.79453399999999996
	.quad	0x3fcefbca1059ea57              # double 0.242059
	.quad	0x3fb7ffbce4217d28              # double 0.093745999999999996
	.quad	0x3fd13f4eca686e7e              # double 0.26948899999999998
	.quad	0x3fe88e15011904b4              # double 0.76734400000000002
	.quad	0x3fc61aa3f034b0e2              # double 0.17268800000000001
	.quad	0x3fbd6f6512a94ff0              # double 0.114981
	.quad	0x3fad7689ca18bd66              # double 0.057544999999999999
	.quad	0x3fecade8709741d1              # double 0.89622900000000005
	.quad	0x3fcc5e02ea960b70              # double 0.22161900000000001
	.quad	0x3fd0f7f8ca8198f2              # double 0.26513500000000001
	.quad	0x3fc8ff08893b7d85              # double 0.19528300000000001
	.quad	0x3fe436b4c7f34938              # double 0.63167799999999996
	.quad	0x3fec97268d32830a              # double 0.893451
	.quad	0x3fdaac18f81e8a2f              # double 0.41675400000000001
	.quad	0x3fdbe892253111f1              # double 0.43607000000000001
	.quad	0x3fdb73cd573647bb              # double 0.42894300000000002
	.quad	0x3fd664c2f837b4a2              # double 0.34989999999999999
	.quad	0x3faa1b1960fa15db              # double 0.050987999999999999
	.quad	0x3fa1de481f53825e              # double 0.034898999999999999
	.quad	0x3fd52ef4e0114d2f              # double 0.33099099999999998
	.quad	0x3f950bd87b56b873              # double 0.020552999999999998
	.quad	0x3fd630a4e379b77c              # double 0.346719
	.quad	0x3fe90f5c28f5c28f              # double 0.78312499999999996
	.quad	0x3fdff2ecf2064239              # double 0.49920199999999998
	.quad	0x3fee3d1ed9dfdac7              # double 0.94496100000000005
	.quad	0x3feff2fdb8fde2ef              # double 0.99841199999999996
	.quad	0x3fe2efc9bc771434              # double 0.59177100000000005
	.quad	0x3fdc91fb3fa6defc              # double 0.44640999999999997
	.quad	0x3fe3ec5f394b7b29              # double 0.62260400000000005
	.quad	0x3fefdb163baba7b9              # double 0.99549399999999999
	.quad	0x3fe2e2541d8e8640              # double 0.59012799999999999
	.quad	0x3feb1567dbb16c1e              # double 0.84636299999999998
	.quad	0x3fe3214f0520d131              # double 0.59781600000000001
	.quad	0x3feb729b280f12c2              # double 0.85773999999999995
	.quad	0x3fcc0d0247021d11              # double 0.21914700000000001
	.quad	0x3fcd24bfd2e94680              # double 0.227684
	.quad	0x3fb89cb252ce032e              # double 0.096141000000000004
	.quad	0x3fa24766c6de7642              # double 0.035700999999999997
	.quad	0x3fead634549b62c7              # double 0.83864799999999995
	.quad	0x3feffa76534373f3              # double 0.99932399999999999
	.quad	0x3fe2adba4d6e47dc              # double 0.58370699999999998
	.quad	0x3fd7140dd3fe1976              # double 0.360599
	.quad	0x3fe9c5004fb1183b              # double 0.80529799999999996
	.quad	0x3fdc5308bb906467              # double 0.44256800000000002
	.quad	0x3fe3fd60e94ee393              # double 0.62468000000000001
	.quad	0x3feb41f42bb66730              # double 0.85180100000000003
	.quad	0x3f522fad6cb53501              # double 0.0011100000000000001
	.quad	0x3fb16aad1d041cc5              # double 0.068033999999999997
	.quad	0x3fead8bc59b8023a              # double 0.83895699999999995
	.quad	0x3fe106940357a355              # double 0.532053
	.quad	0x3fe69e16d6dc1a48              # double 0.70679800000000004
	.quad	0x3fe307a6bd6e8af8              # double 0.59468399999999999
	.quad	0x3fc9b5e95b78cc9a              # double 0.20086399999999999
	.quad	0x3fcd9fcb0c026cc2              # double 0.23143900000000001
	.quad	0x3fd12d0a24463066              # double 0.268374
	.quad	0x3fded37c1376d549              # double 0.48165799999999998
	.quad	0x3fe5eaab042528ae              # double 0.68489599999999995
	.quad	0x3fb7b1183b60285f              # double 0.092546000000000003
	.quad	0x3fd3cf13cee9dd7f              # double 0.30951400000000001
	.quad	0x3fd3221426fe718b              # double 0.29895500000000003
	.quad	0x3fcf859c8c9320da              # double 0.24626500000000001
	.quad	0x3fc92b3cc4ac6cdb              # double 0.196632
	.quad	0x3fd99a49c2c1b110              # double 0.40004200000000001
	.quad	0x3feea4052d666a98              # double 0.95752199999999998
	.quad	0x3fdd0d9d7774aba4              # double 0.45395600000000003
	.quad	0x3fe661804d983947              # double 0.69940199999999997
	.quad	0x3fd12641b328b6d8              # double 0.26795999999999998
	.quad	0x3fdb1f255f3519bd              # double 0.42377599999999999
	.quad	0x3feedbca9691a75d              # double 0.96433000000000002
	.quad	0x3fc4292817763e4b              # double 0.15750600000000001
	.quad	0x3fe7bca5375c8da0              # double 0.74177800000000004
	.quad	0x3fd070de8f6cefed              # double 0.25688899999999998
	.quad	0x3fe13018611fd588              # double 0.53712099999999996
	.quad	0x3fe0242d05f28848              # double 0.50441599999999998
	.quad	0x3fde424a276b7ed4              # double 0.47279599999999999
	.quad	0x3fe58f733a8a3f8a              # double 0.67376100000000005
	.quad	0x3fcde5c91d14e3bd              # double 0.233575
	.quad	0x3fef442e9899bf59              # double 0.97707299999999996
	.quad	0x3fa09d8c6d612c6b              # double 0.032452000000000002
	.quad	0x3fb8a915379fa97e              # double 0.096329999999999998
	.quad	0x3fdf90abb44e50c6              # double 0.493205
	.quad	0x3fe0ae07e5a78f26              # double 0.52124400000000004
	.quad	0x3fdee7a311e85fd0              # double 0.48288799999999998
	.quad	0x3fe1a743a647fdc6              # double 0.55166800000000005
	.quad	0x3fdb8644523f67f5              # double 0.43007000000000001
	.quad	0x3fd36fc58ab92c06              # double 0.30369699999999999
	.quad	0x3fa6cd29131ec0b5              # double 0.044533999999999997
	.quad	0x3fb5ac258d5842b7              # double 0.084657999999999997
	.quad	0x3fe919e94ab1d4fa              # double 0.78441300000000003
	.quad	0x3fe3b18fc504816f              # double 0.615425
	.quad	0x3fe489a671ef30a5              # double 0.64180300000000001
	.quad	0x3fe91a5657fb6998              # double 0.78446499999999997
	.quad	0x3fef859c8c9320da              # double 0.98506000000000005
	.quad	0x3fe362cfd8f0c77e              # double 0.60581200000000002
	.quad	0x3fdf30941c8216c6              # double 0.48734
	.quad	0x3fe64a6223e18698              # double 0.69657999999999998
	.quad	0x3fea692923e5b856              # double 0.82533699999999999
	.quad	0x3fe3ff6d330941c8              # double 0.62492999999999999
	.quad	0x3fe85a57646ae3a4              # double 0.76102800000000003
	.quad	0x3fdcdb4cc2507208              # double 0.45088499999999998
	.quad	0x3fde3c4b09e98dce              # double 0.47243000000000002
	.quad	0x3fe68270f3882279              # double 0.70342300000000002
	.quad	0x3fd85e13b18dac26              # double 0.38074200000000002
	.quad	0x3fe303e425aee632              # double 0.594225
	.quad	0x3fe00edc3bd59924              # double 0.50181399999999998
	.quad	0x3fd4b89d6adf71eb              # double 0.323768
	.quad	0x3fe4fb506dd69d30              # double 0.65567799999999998
	.quad	0x3fde57afea3df6dc              # double 0.47410200000000002
	.quad	0x3fe9923810e88590              # double 0.799099
	.quad	0x3fd7bf2f55582129              # double 0.37104399999999998
	.quad	0x3fc71409a2403148              # double 0.18029899999999999
	.quad	0x3fd1aaa3ad18d25f              # double 0.27604000000000001
	.quad	0x3fbdc28f5c28f5c3              # double 0.11625000000000001
	.quad	0x3fc7192641b328b7              # double 0.180455
	.quad	0x3fe399ef954eb13e              # double 0.612541
	.quad	0x3feb66f0cfe15443              # double 0.85631599999999997
	.quad	0x3fe06b6390c91080              # double 0.51310900000000004
	.quad	0x3fe96ab5807fed20              # double 0.79427599999999998
	.quad	0x3fbde6256366d7a5              # double 0.11679299999999999
	.quad	0x3fc0cac4b4d056c5              # double 0.131188
	.quad	0x3fcf04b3c3e74afd              # double 0.24233099999999999
	.quad	0x3fe54d2b2bfdb4cc              # double 0.66566999999999998
	.quad	0x3fe4f9207d4e0978              # double 0.65541099999999997
	.quad	0x3fe3f9dd3bafd977              # double 0.624251
	.quad	0x3fed6d9be4cd7492              # double 0.91962999999999995
	.quad	0x3fe77202107b7846              # double 0.73266699999999996
	.quad	0x3fe928997c3d6840              # double 0.78620599999999996
	.quad	0x3fc6e685db76b3bc              # double 0.17891000000000001
	.quad	0x3fe3bb0c4588a04d              # double 0.61658299999999999
	.quad	0x3feceb4202d9cf14              # double 0.90371800000000002
	.quad	0x3fe84a1272c94b38              # double 0.75904199999999999
	.quad	0x3fe8a0e8427418d7              # double 0.76964200000000005
	.quad	0x3fce40e9d51b4fe8              # double 0.23635600000000001
	.quad	0x3fdf324851a86940              # double 0.48744399999999999
	.quad	0x3fe706d506573216              # double 0.719584
	.quad	0x3fe5f939a7c17a89              # double 0.68667299999999998
	.quad	0x3fb667e846a5d6bf              # double 0.087523000000000004
	.quad	0x3fe331a8ef77f280              # double 0.59981200000000001
	.quad	0x3fe423bbc6eb0b7c              # double 0.62936199999999998
	.quad	0x3fd8b5a63f9a49c3              # double 0.38608700000000001
	.quad	0x3febb27ed84d338f              # double 0.86553899999999995
	.quad	0x3fc87a41e57d9dbb              # double 0.19123100000000001
	.quad	0x3fea8ed1bf7ad4b2              # double 0.82993399999999995
	.quad	0x3fefbb01c92ddbdb              # double 0.99157799999999995
	.quad	0x3fe754ef459d9903              # double 0.72911800000000004
	.quad	0x3fc4e4b87bdcf030              # double 0.16322999999999999
	.quad	0x3fc6bf65dbfceb79              # double 0.17771600000000001
	.quad	0x3fe41cdc443914f5              # double 0.62852300000000005
	.quad	0x3fa7bd05af6c69b6              # double 0.046364000000000002
	.quad	0x3fe1739085f4a127              # double 0.54535699999999998
	.quad	0x3fd64ce3de6149c7              # double 0.348443
	.quad	0x3fd276f2a5a469d7              # double 0.28850999999999999
	.quad	0x3fd36b1a2a4db164              # double 0.30341200000000002
	.quad	0x3fe07a7a85015c21              # double 0.51495100000000005
	.quad	0x3feb9871e6cd2913              # double 0.86235899999999999
	.quad	0x3fc6f240fa9c12f1              # double 0.17926800000000001
	.quad	0x3fdaa5e353f7ced9              # double 0.416375
	.quad	0x3fe09287c200c0f0              # double 0.51788699999999999
	.quad	0x3fea471b47842310              # double 0.82118000000000002
	.quad	0x3fef68576cce5f74              # double 0.98148699999999999
	.quad	0x3fb964302b40f66a              # double 0.099184999999999995
	.quad	0x3fee429e0a41a262              # double 0.94563200000000003
	.quad	0x3fe3957689ca18bd              # double 0.61199499999999996
	.quad	0x3fe394ee392e1ef7              # double 0.61192999999999997
	.quad	0x3fe46e9bbf0dc769              # double 0.63850200000000001
	.quad	0x3fe0c230fcf80dc3              # double 0.52370499999999998
	.quad	0x3fde1fff79c842fa              # double 0.47070299999999998
	.quad	0x3fe1b784662bae04              # double 0.55365200000000003
	.quad	0x3fe850c3d25247cb              # double 0.75985899999999995
	.quad	0x3feecc55432873bd              # double 0.96244300000000004
	.quad	0x3fc5c11e42e12620              # double 0.169956
	.quad	0x3fd0e57d9dba908a              # double 0.26400699999999999
	.quad	0x3feb3354c122749f              # double 0.85001599999999999
	.quad	0x3fbd4face67d77fb              # double 0.114497
	.quad	0x3fe1fbc1acde19fc              # double 0.56198199999999998
	.quad	0x3fe786a8fc0d2c38              # double 0.73518799999999995
	.quad	0x3fdc22ab25b317f0              # double 0.43961600000000001
	.quad	0x3fdcd9ba1b1960fa              # double 0.450789
	.quad	0x3fef6fe0ce0b912e              # double 0.98240700000000003
	.quad	0x3fe00244e93e1c9b              # double 0.50027699999999997
	.quad	0x3fc3d3a1d323fee3              # double 0.15489600000000001
	.quad	0x3fee65625a682b63              # double 0.94987600000000005
	.quad	0x3fdd66a11ec918e3              # double 0.45938899999999999
	.quad	0x3f96f60e0eb67c28              # double 0.022422999999999998
	.quad	0x3fe8257214f0520d              # double 0.75457099999999999
	.quad	0x3feeeb0b7c3504c5              # double 0.96619200000000005
	.quad	0x3fd202ea960b6fa0              # double 0.28142800000000001
	.quad	0x3fb972474538ef35              # double 0.099400000000000002
	.quad	0x3fd95e5aff2a172b              # double 0.39638400000000001
	.quad	0x3fe74ed4e4c942d5              # double 0.72837300000000005
	.quad	0x3fe83b57c4e2f380              # double 0.75724400000000003
	.quad	0x3fc12684cf0739b0              # double 0.133988
	.quad	0x3fd36822ff08893b              # double 0.30323099999999997
	.quad	0x3fa38e8ea39c51db              # double 0.038197000000000002
	.quad	0x3fe6260b2c83ec89              # double 0.69214399999999998
	.quad	0x3fcc93e1c9b41398              # double 0.22326299999999999
	.quad	0x3f7b8887229e9079              # double 0.0067219999999999997
	.quad	0x3fe7cdb163baba7c              # double 0.74385900000000005
	.quad	0x3fc90ba6266fd652              # double 0.19566800000000001
	.quad	0x3fe4cf80dc33721d              # double 0.65032999999999996
	.quad	0x3fdc8c0053e2d624              # double 0.44604500000000002
	.quad	0x3fd9b9496249a134              # double 0.40193400000000001
	.quad	0x3fea3c968943e100              # double 0.81989599999999996
	.quad	0x3f9fb506dd69d302              # double 0.030963999999999998
	.quad	0x3fee40f88333fc87              # double 0.94543100000000002
	.quad	0x3feb12a305532618              # double 0.84602500000000003
	.quad	0x3fe5e6afcce1c582              # double 0.68440999999999996
	.quad	0x3fc49613d31b9b67              # double 0.16083
	.quad	0x3fe7ce2f37fbefd0              # double 0.743919
	.quad	0x3fe22f20ea5b530d              # double 0.56825300000000001
	.quad	0x3fc7ce95faa8a82a              # double 0.18599199999999999
	.quad	0x3fbd7a56de33269e              # double 0.115148
	.quad	0x3fb6f8487b99d452              # double 0.089726
	.quad	0x3fefaf2f9873ffac              # double 0.99013499999999998
	.quad	0x3fec5c8323358f2e              # double 0.886293
	.quad	0x3fe77e80389f83be              # double 0.73419199999999996
	.quad	0x3fd72a6f3f52fc26              # double 0.36196499999999998
	.quad	0x3fad4866a11ec919              # double 0.057193000000000001
	.quad	0x3fea4fe586013661              # double 0.82225300000000001
	.quad	0x3feee8d5410f94c8              # double 0.96592199999999994
	.quad	0x3fd7fab53d640e9d              # double 0.37467699999999998
	.quad	0x3fdb34eb9a176ddb              # double 0.42510500000000001
	.quad	0x3fda70c564f97edc              # double 0.41313299999999997
	.quad	0x3fea894a2b9d3cbc              # double 0.82925899999999996
	.quad	0x3fa31290257c914b              # double 0.037250999999999999
	.quad	0x3fc24c942d490e67              # double 0.14296200000000001
	.quad	0x3fe15e1c15097c81              # double 0.54273800000000005
	.quad	0x3fb65c1c6088d6d4              # double 0.087343000000000004
	.quad	0x3fe11deefe4ffc98              # double 0.53490400000000005
	.quad	0x3fcaaa3ad18d25ee              # double 0.20832000000000001
	.quad	0x3fcb4f26aec0724b              # double 0.21335299999999999
	.quad	0x3fee2ff4ba51a006              # double 0.94335400000000003
	.quad	0x3febf6a50d6b228e              # double 0.87385800000000002
	.quad	0x3fe0fae5796bfca8              # double 0.53062699999999996
	.quad	0x3fd9ce8533b10774              # double 0.40322999999999998
	.quad	0x3fcbee1bd1ed9dfe              # double 0.21820400000000001
	.quad	0x3fde4d338f798527              # double 0.47346199999999999
	.quad	0x3fe09220ff540896              # double 0.51783800000000002
	.quad	0x3fe0a6c1a048e044              # double 0.52035600000000004
	.quad	0x3fe3d147f1305964              # double 0.61929699999999999
	.quad	0x3fce275ab7dc7ac0              # double 0.23557600000000001
	.quad	0x3fde5f4a1272c94b              # double 0.47456599999999999
	.quad	0x3fb4e864020817fc              # double 0.081670999999999994
	.quad	0x3fe5e820e6299525              # double 0.68458600000000003
	.quad	0x3fef8fe69270b06c              # double 0.98631599999999997
	.quad	0x3fd656c0d6f544bb              # double 0.34904499999999999
	.quad	0x3fe0868b9fdbd2fa              # double 0.51642399999999999
	.quad	0x3fdb95208e150119              # double 0.430977
	.quad	0x3feb98d8a979e16d              # double 0.86240799999999995
	.quad	0x3fdc27e0ef99806f              # double 0.43993399999999999
	.quad	0x3fe662f166e008ea              # double 0.69957800000000003
	.quad	0x3fe97cb923a29c78              # double 0.79647500000000004
	.quad	0x3fd765d7cb2d905c              # double 0.365591
	.quad	0x3fcdec80c73abc94              # double 0.23377999999999999
	.quad	0x3fdb8de2ac322292              # double 0.430535
	.quad	0x3fdb695d91ab8e8f              # double 0.42830600000000002
	.quad	0x3fd076f6d7625205              # double 0.25726100000000002
	.quad	0x3fd25592d98bf7f0              # double 0.28647299999999998
	.quad	0x3fbc54cdb7ae5797              # double 0.110669
	.quad	0x3fe7fdda8bd230ba              # double 0.74973800000000002
	.quad	0x3fee879e59f2ba9d              # double 0.95405499999999999
	.quad	0x3fef44178705425f              # double 0.97706199999999998
	.quad	0x3fe98e9d51b4fe7a              # double 0.79865900000000001
	.quad	0x3fa4f355cd91eeaa              # double 0.040918999999999997
	.quad	0x3fcdbd61f5be5d9e              # double 0.23234199999999999
	.quad	0x3fdf87e38eb0318c              # double 0.49266900000000002
	.quad	0x3fe7aa3f034b0e1b              # double 0.73953199999999997
	.quad	0x3fd5d9cae21101b0              # double 0.341418
	.quad	0x3fc515e7c8d19589              # double 0.16473099999999999
	.quad	0x3fd3b69984a0e411              # double 0.30802000000000002
	.quad	0x3fb8f0a5efe93187              # double 0.097421999999999995
	.quad	0x3fa45479d4d83409              # double 0.039706999999999999
	.quad	0x3fe0c3009b30728f              # double 0.52380400000000005
	.quad	0x3fca8387df5cf249              # double 0.20713899999999999
	.quad	0x3fead25aab474107              # double 0.83817799999999998
	.quad	0x3fc5ca2120e1f7d7              # double 0.17023099999999999
	.quad	0x3fe36223e1869835              # double 0.60572999999999999
	.quad	0x3fd2fb7e90ff9724              # double 0.29659999999999997
	.quad	0x3fe56e4e26d4801f              # double 0.66971499999999995
	.quad	0x3feb5b4245f5ad97              # double 0.85489000000000004
	.quad	0x3fcc216c61522a6f              # double 0.21976999999999999
	.quad	0x3fe9398201cd5f9a              # double 0.78827000000000003
	.quad	0x3fd5f01b866e43aa              # double 0.34277999999999997
	.quad	0x3febc68661ae70c1              # double 0.86798399999999998
	.quad	0x3fec33d6c7219221              # double 0.881328
	.quad	0x3fde9314445aa2e4              # double 0.47772700000000001
	.quad	0x3fb557ff9b56323c              # double 0.083374000000000004
	.quad	0x3fddfa8f7db6e504              # double 0.468418
	.quad	0x3fd9685122318330              # double 0.39699200000000001
	.quad	0x3fe4444bf4cb1898              # double 0.63333700000000004
	.quad	0x3fdd8cef672b8844              # double 0.461727
	.quad	0x3fd159f6ec5b078e              # double 0.27111600000000002
	.quad	0x3fe50a9bcfd4bf0a              # double 0.65754500000000005
	.quad	0x3fe835a63f9a49c3              # double 0.75654900000000003
	.quad	0x3fe8f55de58e64b2              # double 0.77995199999999998
	.quad	0x3fc6fdeb52c9d170              # double 0.17962400000000001
	.quad	0x3fee7687b139c94f              # double 0.95196899999999995
	.quad	0x3fb1832fcac8e68e              # double 0.068407999999999997
	.quad	0x3fe5fcdab191dde3              # double 0.68711599999999995
	.quad	0x3fd13cea6c1a048e              # double 0.269343
	.quad	0x3fcc6eeb702602c9              # double 0.222135
	.quad	0x3feceb851eb851ec              # double 0.90375000000000005
	.quad	0x3f94007570c564f9              # double 0.019532999999999998
	.quad	0x3fcf7d41743e963e              # double 0.24601000000000001
	.quad	0x3fe2cb05b7cfe586              # double 0.587283
	.quad	0x3fd5184c271fff7a              # double 0.32960800000000001
	.quad	0x3fee0d7e02645e4e              # double 0.93914699999999995
	.quad	0x3fecf85d744f5d35              # double 0.90531799999999996
	.quad	0x3fdd5a74c09c3ce2              # double 0.458646
	.quad	0x3fdc975f2cb64170              # double 0.446739
	.quad	0x3fd257470eb24a6b              # double 0.28657700000000003
	.quad	0x3fda6d5065732160              # double 0.41292200000000001
	.quad	0x3fc17e5eaab04253              # double 0.13666900000000001
	.quad	0x3febf59ab6d00b46              # double 0.87373100000000004
	.quad	0x3fc901a79fec99f2              # double 0.19536300000000001
	.quad	0x3fd848ecd8dbcec8              # double 0.37945099999999998
	.quad	0x3fcd02795703f2d4              # double 0.22663800000000001
	.quad	0x3fcd191dde37585c              # double 0.227329
	.quad	0x3fea706705c896dd              # double 0.82622099999999998
	.quad	0x3fdbf6598e10cf5b              # double 0.43691099999999999
	.quad	0x3fe8972474538ef3              # double 0.76844999999999997
	.quad	0x3fc21e2584f4c6e7              # double 0.141545
	.quad	0x3fd7cfb3311a543f              # double 0.37205199999999999
	.quad	0x3fb3b224aada33be              # double 0.076937000000000005
	.quad	0x3fad40aaeafab53d              # double 0.057133999999999997
	.quad	0x3feb7c6540cc78ea              # double 0.858935
	.quad	0x3fc2a9478c868ba0              # double 0.145791
	.quad	0x3fe8def8487b99d4              # double 0.77721799999999996
	.quad	0x3fec9e8a2ec28b2a              # double 0.89435299999999995
	.quad	0x3fee2fdb8fde2ef5              # double 0.94334200000000001
	.quad	0x3fe2043a2163fdd6              # double 0.56301599999999996
	.quad	0x3feee390c9107faa              # double 0.965279
	.quad	0x3fedbfd50225742e              # double 0.92966700000000002
	.quad	0x3f59652bd3c36113              # double 0.0015499999999999999
	.quad	0x3fd15b899392189c              # double 0.27121200000000001
	.quad	0x3fedaafff36ac647              # double 0.92712399999999995
	.quad	0x3feacfbfc6540cc8              # double 0.83786000000000005
	.quad	0x3fe256e47dc37a3e              # double 0.57310700000000003
	.quad	0x3fe5f8f47304039b              # double 0.68664000000000003
	.quad	0x3fe49d40ee06d938              # double 0.64419599999999999
	.quad	0x3fde59d12cadddf4              # double 0.47423199999999999
	.quad	0x3fe4dad31fcd24e1              # double 0.65171199999999996
	.quad	0x3fea30ec31162281              # double 0.81847199999999998
	.quad	0x3fdd8b32ce89656f              # double 0.461621
	.quad	0x3fe0e37154003255              # double 0.52776400000000001
	.quad	0x3fb97c1bda5119ce              # double 0.099549999999999999
	.quad	0x3feeb2788db0574b              # double 0.95928599999999997
	.quad	0x3fd7d7d3910c2c5e              # double 0.37254799999999999
	.quad	0x3fcbefc7a398201d              # double 0.218255
	.quad	0x3fbec61522a6f3f5              # double 0.12021
	.quad	0x3fc23ed0f627392a              # double 0.142542
	.quad	0x3fdceb1c432ca57a              # double 0.45184999999999997
	.quad	0x3fe39c27e9531551              # double 0.61281200000000002
	.quad	0x3feab0ab2e1693c0              # double 0.83406599999999997
	.quad	0x3feb8232096787cf              # double 0.85964300000000005
	.quad	0x3fe79bd1ed9dfdac              # double 0.73777099999999995
	.quad	0x3fe6abdc26dce39b              # double 0.70847899999999997
	.quad	0x3feb05e1c15097c8              # double 0.844468
	.quad	0x3fc6440f23897204              # double 0.173952
	.quad	0x3fa5e76427c7c526              # double 0.042781
	.quad	0x3fd8e78e1932d6ed              # double 0.38913300000000001
	.quad	0x3fd69cd8127b2cc7              # double 0.353323
	.quad	0x3f90357a355043e5              # double 0.015828999999999999
	.quad	0x3fa5e481f53825e1              # double 0.042758999999999998
	.quad	0x3fa89c3ce2089e34              # double 0.048066999999999999
	.quad	0x3fe7a50f840181e0              # double 0.73889899999999997
	.quad	0x3fd2f51697f1f9ad              # double 0.296209
	.quad	0x3fd01101b003686a              # double 0.25103799999999998
	.quad	0x3fed7bb9496249a1              # double 0.92135299999999998
	.quad	0x3fe4f9b34a44c7b0              # double 0.65548099999999998
	.quad	0x3feaefed634549b6              # double 0.84178799999999998
	.quad	0x3fe00ff10ecb74de              # double 0.501946
	.quad	0x3fe501711947cfa2              # double 0.65642599999999995
	.quad	0x3fe6ca01abd1aa82              # double 0.71215899999999999
	.quad	0x3febfcb0c026cc1d              # double 0.87459600000000004
	.quad	0x3fb31f46ed245b29              # double 0.074695999999999999
	.quad	0x3fe51758e219652c              # double 0.65910000000000002
	.quad	0x3fe607b784662bae              # double 0.688442
	.quad	0x3fefd821294573a8              # double 0.99513300000000004
	.quad	0x3fb0209246bf0132              # double 0.062996999999999997
	.quad	0x3fc4594af4f0d845              # double 0.15897500000000001
	.quad	0x3fa035371971c10d              # double 0.031655999999999997
	.quad	0x3fccde54b48d3ae7              # double 0.22553500000000001
	.quad	0x3fca6ad2dcb1465f              # double 0.20638500000000001
	.quad	0x3fe39b17481b21c4              # double 0.61268199999999995
	.quad	0x3fbc0cb6c7a7c9de              # double 0.109569
	.quad	0x3fb66cb10342aa9f              # double 0.087595999999999993
	.quad	0x3f8146e4c0df58c1              # double 0.0084360000000000007
	.quad	0x3fe676c4827b6fe3              # double 0.70199800000000001
	.quad	0x3f7650a45d41fa76              # double 0.0054479999999999997
	.quad	0x3fed5da059a73b43              # double 0.91767900000000002
	.quad	0x3fe3da37ef5a964f              # double 0.62038800000000005
	.quad	0x3fd3d2e946801712              # double 0.30974800000000002
	.quad	0x3feb435efa615a8e              # double 0.85197400000000001
	.quad	0x3fe6c1ca3a4b5569              # double 0.71115600000000001
	.quad	0x3fe65c422036006d              # double 0.69876199999999999
	.quad	0x3fe4cad14a0a0f4d              # double 0.64975799999999995
	.quad	0x3fe5c7c30d306a2b              # double 0.68063499999999999
	.quad	0x3fd11cfbb949624a              # double 0.26739400000000002
	.quad	0x3fef42c3c9eecbfb              # double 0.97689999999999999
	.quad	0x3fe07154003254e7              # double 0.51383400000000001
	.quad	0x3fc3aa1511dffc54              # double 0.15362799999999999
	.quad	0x3fcda437824d4cba              # double 0.231574
	.quad	0x3f93b0c4588a04d1              # double 0.019229
	.quad	0x3fef44b90214ad36              # double 0.97713899999999998
	.quad	0x3fc5b05faebc408e              # double 0.16944500000000001
	.quad	0x3fec3de6149c6f37              # double 0.88255600000000001
	.quad	0x3fe163e4abe6a338              # double 0.54344400000000004
	.quad	0x3fc6c743201040c0              # double 0.177956
	.quad	0x3fbd5a7d24180d3d              # double 0.114662
	.quad	0x3f931055b8993922              # double 0.018617000000000002
	.quad	0x3fe84face67d77fb              # double 0.75972600000000001
	.quad	0x3fd3b65668c26139              # double 0.308004
	.quad	0x3fd37b28954a7f80              # double 0.304392
	.quad	0x3fded87f88765ba7              # double 0.481964
	.quad	0x3feaf4d9c6b0531a              # double 0.84238900000000005
	.quad	0x3fde50a02b841249              # double 0.47367100000000001
	.quad	0x3fe0a795703f2d3c              # double 0.52045699999999995
	.quad	0x3feff67d34df04de              # double 0.99883900000000003
	.quad	0x3fe62539756c93a7              # double 0.69204399999999999
	.quad	0x3fe446e2a80064aa              # double 0.63365300000000002
	.quad	0x3fd2ac18f81e8a2f              # double 0.29175400000000001
	.quad	0x3fec8ced4e4c942d              # double 0.89220299999999997
	.quad	0x3fd708aefb2aae29              # double 0.35990499999999997
	.quad	0x3fd8c6540cc78e9f              # double 0.38710499999999998
	.quad	0x3fc31c5c5718eb89              # double 0.14930299999999999
	.quad	0x3fef09784ec636b1              # double 0.96990600000000004
	.quad	0x3fcaea6c1a048e04              # double 0.21027899999999999
	.quad	0x3fd2f6a93f290abb              # double 0.29630499999999999
	.quad	0x3fe1ed20296b3355              # double 0.56019600000000003
	.quad	0x3fed08d4bad7d7c3              # double 0.90732800000000002
	.quad	0x3fdfe15011904b3c              # double 0.49812699999999999
	.quad	0x3fe219fe43675ddd              # double 0.56567299999999998
	.quad	0x3fdb5c7cd898b2ea              # double 0.42752000000000001
	.quad	0x3fe7cfe586013661              # double 0.74412800000000001
	.quad	0x3fea980b242070b9              # double 0.83106000000000002
	.quad	0x3fe2adcd2d44dca9              # double 0.58371600000000001
	.quad	0x3feaf9dd3bafd977              # double 0.843001
	.quad	0x3f91e603d577963a              # double 0.017479000000000001
	.quad	0x3fe3f3083558a761              # double 0.623417
	.quad	0x3fcbe920c069e7fb              # double 0.218052
	.quad	0x3fd6c39799e518f4              # double 0.355688
	.quad	0x3fe2325d4a5df224              # double 0.56864800000000004
	.quad	0x3fd503211cb039ef              # double 0.328316
	.quad	0x3fec2de8709741d1              # double 0.88060400000000005
	.quad	0x3fabb6cbd987c632              # double 0.054128999999999997
	.quad	0x3febb6134ce3de61              # double 0.86597599999999997
	.quad	0x3fe485553ef6b5d4              # double 0.64127599999999996
	.quad	0x3fdd8b6523704791              # double 0.46163300000000002
	.quad	0x3fb9d4738a3b57c5              # double 0.100898
	.quad	0x3feac6ac215b9a5b              # double 0.83675200000000005
	.quad	0x3fc6b4e9813879c4              # double 0.177396
	.quad	0x3fd5bbcb1cc96463              # double 0.33958700000000003
	.quad	0x3fe99c2e33eff195              # double 0.800315
	.quad	0x3fe22d1f1cfbb949              # double 0.56800799999999996
	.quad	0x3fbc51a86940357a              # double 0.110621
	.quad	0x3fc92ae07e5a78f2              # double 0.19662099999999999
	.quad	0x3fe36a93f290abb4              # double 0.60675999999999997
	.quad	0x3feb955b4677b396              # double 0.86198200000000003
	.quad	0x3fef3e89a88ace25              # double 0.97638400000000002
	.quad	0x3fdca1c68ec52a41              # double 0.44737399999999999
	.quad	0x3fb51e646f156191              # double 0.082494999999999999
	.quad	0x3fd0fca85caafbc2              # double 0.26542100000000002
	.quad	0x3fe9a3f034b0e1b5              # double 0.80126200000000003
	.quad	0x3fe49f8c21e1d218              # double 0.64447600000000005
	.quad	0x3fc7176145953587              # double 0.18040100000000001
	.quad	0x3fb05015c209246c              # double 0.063722000000000001
	.quad	0x3fe0f891e215336e              # double 0.53034300000000001
	.quad	0x3fd87c1376d54973              # double 0.382573
	.quad	0x3fc3e4cd74927914              # double 0.15542
	.quad	0x3fe62dfd694ccab4              # double 0.69311400000000001
	.quad	0x3fdd281ba7fc32ec              # double 0.45557300000000001
	.quad	0x3fe831e3a7daa4fd              # double 0.75609000000000004
	.quad	0x3fd99e7b80a9de8b              # double 0.40029799999999999
	.quad	0x3f92f6e82949a565              # double 0.018519999999999998
	.quad	0x3fb375536933a040              # double 0.076008999999999993
	.quad	0x3fe12dafd113836b              # double 0.53682700000000005
	.quad	0x3feff3387160956c              # double 0.99843999999999999
	.quad	0x3fe4d2007dd44135              # double 0.65063499999999996
	.quad	0x3fac801f75104d55              # double 0.055664999999999999
	.quad	0x3fe0898915bdd767              # double 0.51678900000000005
	.quad	0x3fd193ccd0fe8ab5              # double 0.274646
	.quad	0x3fb13c254a3c6434              # double 0.067323999999999995
	.quad	0x3fc81bd1ed9dfdac              # double 0.18834899999999999
	.quad	0x3fe69e34330d7386              # double 0.706812
	.quad	0x3fe4d551d68c692f              # double 0.65103999999999995
	.quad	0x3fe9a62888b545c8              # double 0.80153300000000005
	.quad	0x3fe1800000000000              # double 0.546875
	.quad	0x3fc6b87379746024              # double 0.177504
	.quad	0x3fc91cb039ef0f17              # double 0.196188
	.quad	0x3fd243d89ce4a7b5              # double 0.28539100000000001
	.quad	0x3fcd0dae3e6c4c59              # double 0.22697999999999999
	.quad	0x3febd8383ad9f0a2              # double 0.87014400000000003
	.quad	0x3fe7c9f0e4da09cc              # double 0.74340099999999998
	.quad	0x3febfb7a5f41aef7              # double 0.874448
	.quad	0x3fe1ead0c3d25248              # double 0.55991400000000002
	.quad	0x3fe5bbb40b34e768              # double 0.67916299999999996
	.quad	0x3fe30724b76f6d76              # double 0.59462199999999998
	.quad	0x3fa4842fa5093965              # double 0.040071000000000002
	.quad	0x3fe0608d08919ef9              # double 0.51178599999999996
	.quad	0x3fe8140fecdd0d8d              # double 0.75244900000000003
	.quad	0x3fb9dcf893faf428              # double 0.10102800000000001
	.quad	0x3fefc7d3d4280ae1              # double 0.99314299999999999
	.quad	0x3fe9d05f28848388              # double 0.80668600000000001
	.quad	0x3fef0913a4f8726d              # double 0.96985799999999999
	.quad	0x3fa3d48cb4aec8d6              # double 0.038731000000000002
	.quad	0x3fdda9bcfd4bf099              # double 0.46348499999999998
	.quad	0x3fdfe9e5e2478855              # double 0.49865100000000001
	.quad	0x3fea81fb82c2bd7f              # double 0.82836699999999996
	.quad	0x3fecd0614163779f              # double 0.90043700000000004
	.quad	0x3fefbc792d1287c2              # double 0.991757
	.quad	0x3fe0a0ec74320104              # double 0.51964399999999999
	.quad	0x3fedc80e8c8abd5e              # double 0.93067100000000003
	.quad	0x3fe1aefb2aae2974              # double 0.55261000000000005
	.quad	0x3fef4daf4adbc665              # double 0.97823300000000001
	.quad	0x3fe19b17481b21c4              # double 0.55018199999999995
	.quad	0x3fd489d6adf71eb0              # double 0.320913
	.quad	0x3fe91e774eebf65e              # double 0.78496900000000003
	.quad	0x3fe1d4eb13dfb0d5              # double 0.55724099999999999
	.quad	0x3fdcb1290257c915              # double 0.44831300000000002
	.quad	0x3fd186833c60029f              # double 0.273835
	.quad	0x3fe2f0153bd16766              # double 0.59180699999999997
	.quad	0x3fe0a5a038194c01              # double 0.52021799999999996
	.quad	0x3fe9fa9e2bcf91a3              # double 0.81184299999999998
	.quad	0x3fe109b30728e92d              # double 0.53243399999999996
	.quad	0x3fe5e2b27cbf6e3f              # double 0.68392299999999995
	.quad	0x3fea62b063e07a29              # double 0.82454700000000003
	.quad	0x3fe3d0fc71d60631              # double 0.61926099999999995
	.quad	0x3fb3d3a1d323fee3              # double 0.077448000000000003
	.quad	0x3fde344c37e6f71a              # double 0.47194199999999997
	.quad	0x3fe1b9884c6a3bde              # double 0.553898
	.quad	0x3fd3016052502eec              # double 0.29695899999999997
	.quad	0x3fc85eaab042528b              # double 0.190389
	.quad	0x3fd27ca643cc07ab              # double 0.288858
	.quad	0x3feab3fa6defc7a4              # double 0.83447000000000004
	.quad	0x3f8634dad31fcd25              # double 0.010843
	.quad	0x3fdec29bf162ae4b              # double 0.480628
	.quad	0x3fd671cda2b5a20e              # double 0.35069600000000001
	.quad	0x3fec177a7008a698              # double 0.87786600000000004
	.quad	0x3fe7d349be8ff328              # double 0.74454200000000004
	.quad	0x3fec116a8b8f14db              # double 0.87712599999999996
	.quad	0x3fe80b39192641b3              # double 0.75136999999999998
	.quad	0x3fba2541d8e86402              # double 0.102131
	.quad	0x3fc4c9f2fdb8fde3              # double 0.162413
	.quad	0x3fa698bb4d48882f              # double 0.044134
	.quad	0x3fcffbb517a46174              # double 0.24986900000000001
	.quad	0x3fe712817763e4ac              # double 0.72100900000000001
	.quad	0x3fc92cadddf43c7d              # double 0.19667599999999999
	.quad	0x3fa43d03968d759f              # double 0.039528000000000001
	.quad	0x3fc18bc59b8023a7              # double 0.13707800000000001
	.quad	0x3fb8f355cd91eeaa              # double 0.097462999999999994
	.quad	0x3fe915df6555c52e              # double 0.78391999999999995
	.quad	0x3fea731098d477bc              # double 0.826546
	.quad	0x3fc0c77574f722e2              # double 0.13108700000000001
	.quad	0x3fd7b1183b60285f              # double 0.37018400000000001
	.quad	0x3fc9c50ce4ead0c4              # double 0.201326
	.quad	0x3fd67b677f6b1a2a              # double 0.35128199999999998
	.quad	0x3fe17b99d451fc4c              # double 0.54633799999999999
	.quad	0x3fdae6106ab14ec2              # double 0.420292
	.quad	0x3fb650614163779f              # double 0.087164000000000005
	.quad	0x3fceaa21a719b4dd              # double 0.239567
	.quad	0x3fe928997c3d6840              # double 0.78620599999999996
	.quad	0x3fd44a38327674d1              # double 0.31702999999999998
	.quad	0x3fc07e8ccdd93c47              # double 0.128862
	.quad	0x3fdb26e978d4fdf4              # double 0.42425000000000002
	.quad	0x3fd515bdd76683c3              # double 0.32945200000000002
	.quad	0x3fd0e22a2c237479              # double 0.26380399999999998
	.quad	0x3fd2c914b167ec78              # double 0.29352299999999998
	.quad	0x3f76a7ac81d3aa37              # double 0.0055310000000000003
	.quad	0x3fe7835dedf1e083              # double 0.73478600000000005
	.quad	0x3fed3b1d0c804103              # double 0.913466
	.quad	0x3fea5c5718eb8950              # double 0.82377199999999995
	.quad	0x3fde6ff7dfa00e28              # double 0.47558400000000001
	.quad	0x3fd07ff9b56323bc              # double 0.25781100000000001
	.quad	0x3fb23c42a66dbd73              # double 0.071232000000000004
	.quad	0x3fe8a3d9231c64bb              # double 0.77000100000000005
	.quad	0x3fe4494b380cb6c8              # double 0.63394700000000004
	.quad	0x3fc25ca29845dc83              # double 0.143452
	.quad	0x3fd48f2170931013              # double 0.32123600000000002
	.quad	0x3fc67ddca4b124d1              # double 0.17571600000000001
	.quad	0x3f7f41aef6f8f041              # double 0.0076309999999999998
	.quad	0x3fe7a70d1fa33376              # double 0.73914199999999997
	.quad	0x3fcddcf893faf428              # double 0.23330600000000001
	.quad	0x3feed5b24e9c4546              # double 0.96358600000000005
	.quad	0x3fdb3e07a28bb0a3              # double 0.42566100000000001
	.quad	0x3fe41a06a6e32e38              # double 0.62817699999999999
	.quad	0x3fe2faf42784a948              # double 0.59313400000000005
	.quad	0x3fce37154003254e              # double 0.23605599999999999
	.quad	0x3fd6384ba0e84274              # double 0.34718599999999999
	.quad	0x3fe4039cd8127b2d              # double 0.62544100000000002
	.quad	0x3fdb604189374bc7              # double 0.42775000000000002
	.quad	0x3fd85f202107b784              # double 0.38080599999999998
	.quad	0x3fde7ea1c68ec52a              # double 0.47647899999999999
	.quad	0x3fefc66d373affb0              # double 0.99297199999999997
	.quad	0x3fd121c8a7a41e58              # double 0.26768700000000001
	.quad	0x3fbb2d3c792d1288              # double 0.106159
	.quad	0x3fedc80c73abc947              # double 0.93067
	.quad	0x3fd817c5ef62f9ca              # double 0.37645099999999998
	.quad	0x3feca172abef06b3              # double 0.89470799999999995
	.quad	0x3fe4ba4d6e47dc38              # double 0.64774200000000004
	.quad	0x3fe9bb384fd2a62b              # double 0.80410400000000004
	.quad	0x3fe216872b020c4a              # double 0.56525000000000003
	.quad	0x3fe37f0cbaf965b2              # double 0.609259
	.quad	0x3fec85425f202108              # double 0.89126700000000003
	.quad	0x3fdf56fb8f57f738              # double 0.48968400000000001
	.quad	0x3fc366516db0dd83              # double 0.15156
	.quad	0x3fe2f4a98aa8650e              # double 0.59236599999999995
	.quad	0x3fd9e10060780fdc              # double 0.404358
	.quad	0x3fe5d379fa97e133              # double 0.68206500000000003
	.quad	0x3fd69d12cadddf44              # double 0.35333700000000001
	.quad	0x3fee96073de1e2df              # double 0.95581400000000005
	.quad	0x3fe37cdee34fc611              # double 0.60899300000000001
	.quad	0x3fb9a20ddc619546              # double 0.100129
	.quad	0x3fb31800a7c5ac47              # double 0.074584999999999999
	.quad	0x3fe90cfbfc6540cc              # double 0.78283499999999994
	.quad	0x3fd0c6759ab6d00b              # double 0.26211299999999998
	.quad	0x3fe5d65c2d278078              # double 0.68241700000000005
	.quad	0x3fabbf727136a401              # double 0.054195
	.quad	0x3fdff69ca9ef5233              # double 0.49942700000000001
	.quad	0x3fe11f127f5e84f1              # double 0.53504300000000005
	.quad	0x3fbc1ede1198aeb8              # double 0.109846
	.quad	0x3fcf92c061847f56              # double 0.246666
	.quad	0x3fe51a5ca29845dd              # double 0.65946800000000005
	.quad	0x3fd65db76b3bb83d              # double 0.34947
	.quad	0x3fe2111f0c34c1a9              # double 0.56459000000000004
	.quad	0x3feba1511dffc548              # double 0.86344200000000004
	.quad	0x3fc6caab8a5ce5b4              # double 0.17806
	.quad	0x3febb0e5e679463d              # double 0.865344
	.quad	0x3fe7bcf2cf95d4e9              # double 0.741815
	.quad	0x3fb59780baa582dc              # double 0.084343000000000001
	.quad	0x3fede473471f7942              # double 0.934137
	.quad	0x3fdc72b020c49ba6              # double 0.44450000000000001
	.quad	0x3fe26a3df6db9410              # double 0.57546900000000001
	.quad	0x3fbde85fd04a2fcf              # double 0.116827
	.quad	0x3fe60a41a261bf38              # double 0.68875200000000003
	.quad	0x3fb701d9f4d37c13              # double 0.089871999999999994
	.quad	0x3feb5c1a47a9e2bd              # double 0.854993
	.quad	0x3fe092ff4ba51a00              # double 0.51794399999999996
	.quad	0x3fe6ecc5fbf83383              # double 0.71640300000000001
	.quad	0x3feaf8bdec5f394b              # double 0.84286399999999995
	.quad	0x3fcfb6bb1290257d              # double 0.24776400000000001
	.quad	0x3fde000c9539b888              # double 0.46875299999999998
	.quad	0x3fddba775fb2edfe              # double 0.46450599999999997
	.quad	0x3fe076965f5275ef              # double 0.51447600000000004
	.quad	0x3fecd6323bbc6eb1              # double 0.90114700000000003
	.quad	0x3fe05d031055b899              # double 0.51135399999999998
	.quad	0x3fe5a53543aeab7a              # double 0.67641700000000005
	.quad	0x3fd7a7b4e54f7a92              # double 0.36961100000000002
	.quad	0x3fe0978f68be2f7b              # double 0.51850099999999999
	.quad	0x3fe3ff7dfa00e27e              # double 0.62493799999999999
	.quad	0x3fe80d0678c0053e              # double 0.75158999999999998
	.quad	0x3fcf05c03361565c              # double 0.242363
	.quad	0x3fecd45c78a6dacb              # double 0.90092300000000003
	.quad	0x3feb80c0f01fb82c              # double 0.85946699999999998
	.quad	0x3feef3c70c996b76              # double 0.96725799999999995
	.quad	0x3fe2e8bc169c23b8              # double 0.59091000000000005
	.quad	0x3fd0346994185059              # double 0.25319900000000001
	.quad	0x3fe98efdc9c4da90              # double 0.798705
	.quad	0x3fe95e82d7b634db              # double 0.79278700000000002
	.quad	0x3fa7e64f54d1e96c              # double 0.046678999999999998
	.quad	0x3fe4a19008205ff2              # double 0.64472200000000002
	.quad	0x3fda870da5daf07c              # double 0.414493
	.quad	0x3fe9eca46e08f217              # double 0.810137
	.quad	0x3fe5f71865519371              # double 0.68641300000000005
	.quad	0x3fbd93c46d82ba5a              # double 0.115536
	.quad	0x3fdd34b0e1b4bb5e              # double 0.456341
	.quad	0x3fe715464dc22ab2              # double 0.72134699999999996
	.quad	0x3fe49728a6117721              # double 0.64345200000000002
	.quad	0x3fec2a9930be0ded              # double 0.88019999999999998
	.quad	0x3fd6308feac42e99              # double 0.34671400000000002
	.quad	0x3fec05fd04a2fcf0              # double 0.87573100000000004
	.quad	0x3fbe9717df19d66b              # double 0.119493
	.quad	0x3fec2415f45e0b4e              # double 0.87940499999999999
	.quad	0x3feeab1704ff4342              # double 0.95838500000000004
	.quad	0x3fbb1a1986b9c305              # double 0.105867
	.quad	0x3feb2921ccd96207              # double 0.84877100000000005
	.quad	0x3fda29c347e8ccde              # double 0.40879900000000002
	.quad	0x3fc83c64345cfedf              # double 0.18934300000000001
	.quad	0x3feccda9003eea21              # double 0.90010500000000004
	.quad	0x3fea9f6a93f290ac              # double 0.83196000000000003
	.quad	0x3fe8af05a708ede5              # double 0.77136499999999997
	.quad	0x3fdb26a22b3892ef              # double 0.42423300000000003
	.quad	0x3fea3ca9691a75cd              # double 0.81990499999999999
	.quad	0x3fa229e90795f677              # double 0.035476000000000001
	.quad	0x3f7f5ad96a6a0126              # double 0.0076550000000000003
	.quad	0x3fbf341e14bdfd26              # double 0.121889
	.quad	0x3fd9856e696a26e5              # double 0.39876899999999998
	.quad	0x3fdd1dde37585be2              # double 0.45494800000000002
	.quad	0x3fbf98201cd5f99c              # double 0.123415
	.quad	0x3fe19dda059a73b4              # double 0.55051899999999998
	.quad	0x3fd4f5989df1172f              # double 0.32749
	.quad	0x3fd21ee675147f13              # double 0.283136
	.quad	0x3fc315f88fc9363f              # double 0.14910799999999999
	.quad	0x3fe05c5d63886595              # double 0.51127500000000003
	.quad	0x3fe8d17a46173b86              # double 0.77557100000000001
	.quad	0x3fea1ec2ce464990              # double 0.81625499999999995
	.quad	0x3fbc9c6f36ef8056              # double 0.111762
	.quad	0x3fd1ece13f4a98ab              # double 0.28008300000000003
	.quad	0x3fcb0ced4e4c942d              # double 0.21133199999999999
	.quad	0x3fe988feac42e98a              # double 0.79797300000000004
	.quad	0x3fcc9a3d2d87f887              # double 0.22345699999999999
	.quad	0x3fefd905c0336156              # double 0.99524199999999996
	.quad	0x3fd638088509bf9c              # double 0.34716999999999998
	.quad	0x3fe66d612c6ac216              # double 0.70085200000000003
	.quad	0x3fec8c36da87a073              # double 0.89211600000000002
	.quad	0x3fe20d9513f8db49              # double 0.56415800000000005
	.quad	0x3fdcd7f0ed3d859d              # double 0.45068000000000003
	.quad	0x3fe2327243137b07              # double 0.568658
	.quad	0x3feb5f19d66adb40              # double 0.85535899999999998
	.quad	0x3fe00bd66277c45d              # double 0.50144500000000003
	.quad	0x3feef219220ff541              # double 0.96705300000000005
	.quad	0x3fc9295e9e1b089a              # double 0.196575
	.quad	0x3febae3c536d655e              # double 0.86501899999999998
	.quad	0x3fe6523f67f4dbe0              # double 0.69754000000000005
	.quad	0x3fef44f7ec3547e0              # double 0.97716899999999995
	.quad	0x3fde2873bc903ea7              # double 0.471219
	.quad	0x3fe1794855da2728              # double 0.54605499999999996
	.quad	0x3fe2508919ef954f              # double 0.57233100000000003
	.quad	0x3fe476b5d462c344              # double 0.63949100000000003
	.quad	0x3fd10e410b630a91              # double 0.26649499999999998
	.quad	0x3fe82fbc1acde1a0              # double 0.75582700000000002
	.quad	0x3feb26edaa92e621              # double 0.84850199999999998
	.quad	0x3fc4e60807357e67              # double 0.16327
	.quad	0x3fe3ddaceee0f3cb              # double 0.62080999999999997
	.quad	0x3fbc4944ed6fda83              # double 0.11049299999999999
	.quad	0x3fe605af6c69b5a6              # double 0.68819399999999997
	.quad	0x3fe2697d06bbdbe4              # double 0.57537700000000003
	.quad	0x3fdefc86cebbba56              # double 0.48416300000000001
	.quad	0x3fe37be33acd5b68              # double 0.608873
	.quad	0x3fd6b0ccbc05d52c              # double 0.354541
	.quad	0x3f5098d477bbf940              # double 0.001013
	.quad	0x3fe34d4ed2cbea4f              # double 0.60318700000000003
	.quad	0x3fee2fe3f359ff50              # double 0.94334600000000002
	.quad	0x3fcdc6195464dc23              # double 0.23260800000000001
	.quad	0x3fe03300de4c5111              # double 0.50622599999999995
	.quad	0x3fe8d00713f077cd              # double 0.77539400000000003
	.quad	0x3fd12c386d2ed784              # double 0.26832400000000001
	.quad	0x3fe94c3c18b502ac              # double 0.79055600000000003
	.quad	0x3fd12b3cc4ac6cdb              # double 0.268264
	.quad	0x3fde6805a2d72ffd              # double 0.47509899999999999
	.quad	0x3fdc8950763a1901              # double 0.44588100000000003
	.quad	0x3fed30d0edc3bd5a              # double 0.91220900000000005
	.quad	0x3fe9ed4a1ad6451c              # double 0.81021600000000004
	.quad	0x3fee43bd5992428d              # double 0.94576899999999997
	.quad	0x3fed3517a46173b8              # double 0.91273099999999996
	.quad	0x3fe5164840e1719f              # double 0.65896999999999994
	.quad	0x3f9b2bfdb4cc2507              # double 0.026535
	.quad	0x3fea382a12f90108              # double 0.81935599999999997
	.quad	0x3fe7a9cdc443914f              # double 0.73947799999999997
	.quad	0x3fedbb7d84901d19              # double 0.92913699999999999
	.quad	0x3fd41650a45d41fa              # double 0.31386199999999997
	.quad	0x3fd0f46ed245b292              # double 0.26491900000000002
	.quad	0x3fe29769a91105e2              # double 0.58098300000000003
	.quad	0x3fe4276102795704              # double 0.62980700000000001
	.quad	0x3fe11949e8815e39              # double 0.53433699999999995
	.quad	0x3fe39ed3953dea46              # double 0.61313799999999996
	.quad	0x3fe01702e6644d87              # double 0.50280899999999995
	.quad	0x3fc25742dcf4623d              # double 0.143288
	.quad	0x3fe4152d234eb9a1              # double 0.62758499999999995
	.quad	0x3fdd6e978d4fdf3b              # double 0.45987499999999998
	.quad	0x3fb04b7f5a5332ad              # double 0.063652
	.quad	0x3fd0bb7739f340d5              # double 0.26144200000000001
	.quad	0x3fe26fe2e6ea8544              # double 0.57615799999999995
	.quad	0x3fe40f16f4384ba1              # double 0.62684200000000001
	.quad	0x3fcf0ecb74ddf86e              # double 0.24263899999999999
	.quad	0x3fd7595feda66128              # double 0.36482999999999999
	.quad	0x3fd1258d5842b735              # double 0.26791700000000002
	.quad	0x3feb2c83ec892ab7              # double 0.84918400000000005
	.quad	0x3fc2b1704ff4341a              # double 0.14604
	.quad	0x3fd9737da61e0c5b              # double 0.39767400000000003
	.quad	0x3fc4d6f544bb1af4              # double 0.16281000000000001
	.quad	0x3fa996312f4cf4a5              # double 0.049973999999999998
	.quad	0x3fde7e02645e4e6a              # double 0.476441
	.quad	0x3fe23074a771c971              # double 0.568415
	.quad	0x3fef59b1b79d909f              # double 0.97969899999999998
	.quad	0x3fdc3be6601bc98a              # double 0.44115599999999999
	.quad	0x3fde72b884406c01              # double 0.47575200000000001
	.quad	0x3f5bb05faebc408e              # double 0.0016900000000000001
	.quad	0x3f709f1f14983d79              # double 0.004058
	.quad	0x3fe1c62a1b5c7cd9              # double 0.55544000000000004
	.quad	0x3fdfdf8b1572580c              # double 0.49801899999999999
	.quad	0x3fe42795703f2d3c              # double 0.62983199999999995
	.quad	0x3fe575a964e8b7e5              # double 0.67061300000000001
	.quad	0x3fe65ac258d5842b              # double 0.69857899999999995
	.quad	0x3fc32aae297396d1              # double 0.14974000000000001
	.quad	0x3fec90214ad362e9              # double 0.892594
	.quad	0x3fd79374bc6a7efa              # double 0.36837500000000001
	.quad	0x3fef2c881e4712e4              # double 0.97418599999999999
	.quad	0x3fb79314445aa2e4              # double 0.092088000000000003
	.quad	0x3fd89cd8127b2cc7              # double 0.384573
	.quad	0x3fe16c508b32ce89              # double 0.54447199999999996
	.quad	0x3fdc6b3fe9fadafd              # double 0.444046
	.quad	0x3fc855b035bd512f              # double 0.19011500000000001
	.quad	0x3fea1b4fe79ee02a              # double 0.81583399999999995
	.quad	0x3fddbeec39799e52              # double 0.46477800000000002
	.quad	0x3febb6501e2584f5              # double 0.86600500000000002
	.quad	0x3fe82d81adea8976              # double 0.75555499999999998
	.quad	0x3fd52a23bff8a8f4              # double 0.33069700000000002
	.quad	0x3fe3892ee84ad795              # double 0.61049600000000004
	.quad	0x3fe3d10b1feeb2d1              # double 0.61926800000000004
	.quad	0x3fe2a5df2239e6ac              # double 0.58274800000000004
	.quad	0x3fe5dea67e846a5d              # double 0.68342899999999995
	.quad	0x3fdb610adcd2d44e              # double 0.42779800000000001
	.quad	0x3fed84b1ab0856e7              # double 0.92244800000000005
	.quad	0x3fc364e8b7e4de3c              # double 0.15151700000000001
	.quad	0x3fcd6eb4e981387a              # double 0.22994100000000001
	.quad	0x3fe372ba9d1f6018              # double 0.60775500000000005
	.quad	0x3fe4c6195464dc23              # double 0.64918200000000004
	.quad	0x3fdfeba6aca79357              # double 0.49875799999999998
	.quad	0x3fe34fbdad7518b1              # double 0.60348400000000002
	.quad	0x3fe880192a737111              # double 0.76563700000000001
	.quad	0x3fe729888f861a61              # double 0.72382000000000002
	.quad	0x3fa02363b256ffc1              # double 0.031519999999999999
	.quad	0x3fe236805a2d7300              # double 0.56915300000000002
	.quad	0x3fe39b499d0203e6              # double 0.61270599999999997
	.quad	0x3fea161e4f765fd9              # double 0.81520000000000004
	.quad	0x3fe3b51372a38b8b              # double 0.61585400000000001
	.quad	0x3fe3b6a619da9c99              # double 0.61604599999999998
	.quad	0x3fd64f5d35653c9b              # double 0.34859400000000001
	.quad	0x3fe04801f75104d5              # double 0.50878999999999996
	.quad	0x3febf4128bf3bea9              # double 0.87354399999999999
	.quad	0x3f86b7ed41b75a75              # double 0.011093
	.quad	0x3fda0f840181e03f              # double 0.40719699999999998
	.quad	0x3fdba7546d3f9e7c              # double 0.43208800000000003
	.quad	0x3fb2e2c98e53eb3a              # double 0.073773000000000005
	.quad	0x3fe8c4156e264e48              # double 0.77393599999999996
	.quad	0x3fe29307af20ea5b              # double 0.58044799999999996
	.quad	0x3fe2b721d53cddd7              # double 0.58485500000000001
	.quad	0x3fc009aaa3ad18d2              # double 0.12529499999999999
	.quad	0x3fd66861e92923e6              # double 0.35012100000000002
	.quad	0x3fe90dfbd6a593a3              # double 0.78295700000000001
	.quad	0x3fe555b24e9c4546              # double 0.66671100000000005
	.quad	0x3fcb559b3d07c84b              # double 0.21354999999999999
	.quad	0x3fedb8d1d8a54824              # double 0.92881100000000005
	.quad	0x3fea4d8fd5cb7910              # double 0.82196800000000003
	.quad	0x3fe506d2ed783dff              # double 0.65708299999999997
	.quad	0x3fd729670196d8f5              # double 0.361902
	.quad	0x3fd0c122749f0e4e              # double 0.26178800000000002
	.quad	0x3fc4ad70e6f2e8c0              # double 0.16154299999999999
	.quad	0x3feed2e0e30446b7              # double 0.96324200000000004
	.quad	0x3fd5fceb78897e99              # double 0.34356199999999998
	.quad	0x3fe8275cd0bb6ed6              # double 0.75480499999999995
	.quad	0x3fd28dcdb37c99af              # double 0.28990500000000002
	.quad	0x3fe37a0d77b7c782              # double 0.608649
	.quad	0x3fe05e8709741d08              # double 0.51153899999999997
	.quad	0x3fe6020c49ba5e35              # double 0.68774999999999997
	.quad	0x3fe4d1fa333764f1              # double 0.65063199999999999
	.quad	0x3fdefdb4cc250721              # double 0.48423500000000003
	.quad	0x3fd7467381d7dbf5              # double 0.36367500000000003
	.quad	0x3fc354da4ce8101f              # double 0.15102699999999999
	.quad	0x3fe17fde7210be94              # double 0.54685899999999998
	.quad	0x3fef0bfe3b03e20d              # double 0.97021400000000002
	.quad	0x3fda8c0ce91c8eac              # double 0.414798
	.quad	0x3fc05c4651f3e89b              # double 0.12781600000000001
	.quad	0x3fd27d2c7b890d5a              # double 0.28888999999999998
	.quad	0x3fe3709fa54c5543              # double 0.60749799999999998
	.quad	0x3fcc81b21c475e63              # double 0.22270799999999999
	.quad	0x3fe71a32b12d3416              # double 0.72194800000000003
	.quad	0x3fe3f43201040bfe              # double 0.62355899999999997
	.quad	0x3fedcba732df505d              # double 0.93110999999999999
	.quad	0x3fd88622c4502689              # double 0.383187
	.quad	0x3fe61b823c85c24c              # double 0.69085799999999997
	.quad	0x3fe93e4cd7492791              # double 0.78885499999999997
	.quad	0x3fefe21fafc8b008              # double 0.99635300000000004
	.quad	0x3fb765668c261390              # double 0.091391
	.quad	0x3fe362dc6e2a8006              # double 0.60581799999999997
	.quad	0x3fe5e44d87724fa9              # double 0.68411900000000003
	.quad	0x3fd79f1ae2da554c              # double 0.36908600000000003
	.quad	0x3fe13d4280ae1049              # double 0.53872799999999998
	.quad	0x3fd458a32f44912a              # double 0.31791000000000003
	.quad	0x3fec8049667b5f1c              # double 0.89066
	.quad	0x3fba8262456f75da              # double 0.10355200000000001
	.quad	0x3fc9ce2089e34331              # double 0.201603
	.quad	0x3fe742e770bd017e              # double 0.72691700000000004
	.quad	0x3fe7bbd9cae21102              # double 0.74168100000000003
	.quad	0x3fde03f705857aff              # double 0.46899200000000002
	.quad	0x3fc5b291b823c85c              # double 0.169512
	.quad	0x3fe28f041461b6d4              # double 0.57995799999999997
	.quad	0x3fd88298cc144029              # double 0.38297100000000001
	.quad	0x3feab58298cc1440              # double 0.83465699999999998
	.quad	0x3fe086b37867f0aa              # double 0.51644299999999999
	.quad	0x3fdff9bdc69f8c22              # double 0.49961800000000001
	.quad	0x3fddbd76ee73e682              # double 0.46468900000000002
	.quad	0x3fe71fc4c165907e              # double 0.72262800000000005
	.quad	0x3fe0fa3b9ae0c176              # double 0.53054599999999996
	.quad	0x3feff29d40ee06d9              # double 0.99836599999999997
	.quad	0x3fda16b11c6d1e11              # double 0.40763500000000003
	.quad	0x3feb7c5cdd50a88f              # double 0.858931
	.quad	0x3fe0426dce39b457              # double 0.50810900000000003
	.quad	0x3f909fa54c554328              # double 0.016233999999999998
	.quad	0x3fdd8997c3d68406              # double 0.46152300000000002
	.quad	0x3fed9cf13cee9dd8              # double 0.92540800000000001
	.quad	0x3fe8d6b441bb8c33              # double 0.77620900000000004
	.quad	0x3fe667b1c0010c6f              # double 0.70015799999999995
	.quad	0x3fe07229e90795f6              # double 0.51393599999999995
	.quad	0x3fca5f5275ee99a6              # double 0.20603399999999999
	.quad	0x3fd7aeea63b688be              # double 0.37005100000000002
	.quad	0x3fe0d4f15e7c8d19              # double 0.52599399999999996
	.quad	0x3fc4828c36da87a0              # double 0.16023399999999999
	.quad	0x3fe16eae9ee45c36              # double 0.54476100000000005
	.quad	0x3fc47674d1633483              # double 0.15986500000000001
	.quad	0x3fe394855da27286              # double 0.61187999999999998
	.quad	0x3fc633bd9cae2110              # double 0.173454
	.quad	0x3fedf648c7192ea5              # double 0.93631399999999998
	.quad	0x3feb25accd53048a              # double 0.84834900000000002
	.quad	0x3fca21187e7c06e2              # double 0.20413500000000001
	.quad	0x3fc676965f5275ef              # double 0.17549400000000001
	.quad	0x3fe5762b6ae7d567              # double 0.67067500000000002
	.quad	0x3fc34b48d3ae685e              # double 0.15073500000000001
	.quad	0x3fe0dcf893faf428              # double 0.52697400000000005
	.quad	0x3fe590214ad362e9              # double 0.673844
	.quad	0x3fedf7292c493426              # double 0.93642099999999995
	.quad	0x3feaaecaeea63b69              # double 0.83383700000000005
	.quad	0x3fd674d594f26aec              # double 0.350881
	.quad	0x3fd6023e9ea14057              # double 0.343887
	.quad	0x3fdc7c5260f5e41d              # double 0.44508799999999998
	.quad	0x3fd643e963dc486b              # double 0.34789500000000001
	.quad	0x3fdae310dbf0563f              # double 0.42010900000000001
	.quad	0x3fd312a0ec743201              # double 0.298012
	.quad	0x3fd2c2efd438d1d9              # double 0.29314800000000002
	.quad	0x3fb029068986fcdf              # double 0.063126000000000002
	.quad	0x3fd9669057d1782d              # double 0.39688499999999999
	.quad	0x3feb40980b242071              # double 0.85163500000000003
	.quad	0x3fdb2888b545c78a              # double 0.42434899999999998
	.quad	0x3fd089331a08bfc2              # double 0.25837399999999999
	.quad	0x3fe4379d909f1f15              # double 0.63178900000000004
	.quad	0x3fb954c985f06f69              # double 0.098949999999999996
	.quad	0x3fe91652bd3c3611              # double 0.78397499999999998
	.quad	0x3fca0db2702a3487              # double 0.203543
	.quad	0x3fd8cbd987c6327f              # double 0.38744200000000001
	.quad	0x3fd6f3343fa2ad3f              # double 0.35859400000000002
	.quad	0x3fea8e1f7d73c925              # double 0.82984899999999995
	.quad	0x3fe877a7008a697b              # double 0.76460600000000001
	.quad	0x3fc358ea7ce0fc2f              # double 0.15115100000000001
	.quad	0x3fe4f8c436fc1590              # double 0.65536700000000003
	.quad	0x3fe64a0e410b630b              # double 0.69654000000000005
	.quad	0x3feaf3f0fe047d3d              # double 0.84227799999999997
	.quad	0x3fb8dcb9a9da597d              # double 0.097117999999999996
	.quad	0x3fe54a01abd1aa82              # double 0.66528399999999999
	.quad	0x3fc5b5d031055b8a              # double 0.16961100000000001
	.quad	0x3feed9e6256366d8              # double 0.96409900000000003
	.quad	0x3febd8dbcec84f90              # double 0.87022200000000005
	.quad	0x3fe32b1d4f9c1f86              # double 0.59901300000000002
	.quad	0x3fbea012599ed7c7              # double 0.11963
	.quad	0x3fed0d9945b6c376              # double 0.90790999999999999
	.quad	0x3feeb2788db0574b              # double 0.95928599999999997
	.quad	0x3fe0f2b4528283d3              # double 0.52962699999999996
	.quad	0x3fe5b860999dcb58              # double 0.67875700000000005
	.quad	0x3fd3342edbb59ddc              # double 0.30005999999999999
	.quad	0x3fea4970f7b9e061              # double 0.821465
	.quad	0x3fb1566cf41f212d              # double 0.067724999999999994
	.quad	0x3fe0a0296b3354c1              # double 0.51955099999999999
	.quad	0x3fd56798958d9b5f              # double 0.33444800000000002
	.quad	0x3fe684d12018a43c              # double 0.70371300000000003
	.quad	0x3fedbd102bc72e27              # double 0.92932899999999996
	.quad	0x3fd291f70de8f6cf              # double 0.290159
	.quad	0x3fb0151a437824d5              # double 0.062822000000000003
	.quad	0x3fa0ebcc6c54bcf1              # double 0.033049000000000002
	.quad	0x3fc2a5bd944aa540              # double 0.14568300000000001
	.quad	0x3fe7d4738a3b57c5              # double 0.74468400000000001
	.quad	0x3fd01c3efae7924b              # double 0.251724
	.quad	0x3fec99bf5946c333              # double 0.89376800000000001
	.quad	0x3fee63864cb5bb38              # double 0.94964899999999996
	.quad	0x3fa3f6e3f78bbd38              # double 0.038993
	.quad	0x3fe8012dfd694ccb              # double 0.75014400000000003
	.quad	0x3fdf25dd095af295              # double 0.48668600000000001
	.quad	0x3fe1af31b152f3c3              # double 0.55263600000000002
	.quad	0x3fcbc4199fe43676              # double 0.216922
	.quad	0x3fbf27fe4bcad9ae              # double 0.12170400000000001
	.quad	0x3fe8a1ccd9620685              # double 0.76975099999999996
	.quad	0x3fd9141205bc01a3              # double 0.39184999999999998
	.quad	0x3fe8cd9c6b053198              # double 0.77509899999999998
	.quad	0x3fdfd5347a5b0ff1              # double 0.497388
	.quad	0x3fed348f53c579f2              # double 0.91266599999999998
	.quad	0x3fc7c4d22c881e47              # double 0.185694
	.quad	0x3fbd230b9dc2f406              # double 0.113816
	.quad	0x3fd07985271bcdbc              # double 0.25741700000000001
	.quad	0x3fe0fbbb62413db8              # double 0.53072900000000001
	.quad	0x3fec6874c8ffb8b2              # double 0.88775099999999996
	.quad	0x3fd8b9841aac53b1              # double 0.38632300000000003
	.quad	0x3fe3bc1ce6c093d9              # double 0.61671299999999996
	.quad	0x3fea8d716d2aa5c6              # double 0.829766
	.quad	0x3fd82b8c75c4a83b              # double 0.37765799999999999
	.quad	0x3fd69d4d834091c1              # double 0.35335100000000003
	.quad	0x3fdbcdc443914f48              # double 0.43443399999999999
	.quad	0x3fb74e4430b178b3              # double 0.091037999999999994
	.quad	0x3fe05fc7e6b3fea0              # double 0.51169200000000004
	.quad	0x3fc9811f4f50a02c              # double 0.19925300000000001
	.quad	0x3fe521f4b1ee2435              # double 0.66039499999999995
	.quad	0x3fe067ea5f84cad5              # double 0.51268499999999995
	.quad	0x3fd64289118c197e              # double 0.34781099999999998
	.quad	0x3fc8ba30121682f9              # double 0.19318199999999999
	.quad	0x3fea4163779e9d0f              # double 0.82048200000000004
	.quad	0x3fc99d7774aba387              # double 0.20011799999999999
	.quad	0x3fe1e5de15ca6ca0              # double 0.55930999999999997
	.quad	0x3fed5004fb1183b6              # double 0.916018
	.quad	0x3fed74299d883ba3              # double 0.92042999999999997
	.quad	0x3fddac8e68e3ef28              # double 0.46365699999999999
	.quad	0x3fdb02e2328f9f45              # double 0.42205100000000001
	.quad	0x3feeaa821f2990f3              # double 0.95831399999999999
	.quad	0x3fe1d8e864020818              # double 0.557728
	.quad	0x3fe9c77143393ab4              # double 0.80559599999999997
	.quad	0x3fe2a48b65237048              # double 0.58258600000000005
	.quad	0x3fe2000431bde82d              # double 0.56250199999999995
	.quad	0x3fe192e83a109d06              # double 0.54918299999999998
	.quad	0x3feeab96f21f6cad              # double 0.95844600000000002
	.quad	0x3fd359b3d07c84b6              # double 0.30235000000000001
	.quad	0x3f9f0520d130df9c              # double 0.030293
	.quad	0x3fabd9ec7000431c              # double 0.054397000000000001
	.quad	0x3feb09c5e6ff7dfa              # double 0.844943
	.quad	0x3feb9dd5d3dc8b87              # double 0.86301700000000003
	.quad	0x3feda60f5e41d4b7              # double 0.92652100000000004
	.quad	0x3feb5783dff3f0fe              # double 0.854433
	.quad	0x3fe65c4a83b1d0c8              # double 0.698766
	.quad	0x3fd05c5b4aa9717e              # double 0.255637
	.quad	0x3fdc4db163baba7c              # double 0.44224200000000002
	.quad	0x3fdb5b6805a2d730              # double 0.427454
	.quad	0x3fd081a1554fbdad              # double 0.25791199999999997
	.quad	0x3fec36390c9107fb              # double 0.88161900000000004
	.quad	0x3fec3738e6d15ad1              # double 0.881741
	.quad	0x3fb2c332f01754b0              # double 0.073290999999999995
	.quad	0x3fdd4ec204f2ae08              # double 0.45793200000000001
	.quad	0x3fabc98a222d5172              # double 0.054272000000000001
	.quad	0x3fd75d63886594af              # double 0.36507499999999998
	.quad	0x3fe006d506573216              # double 0.500834
	.quad	0x3fe5c76d117b5287              # double 0.68059400000000003
	.quad	0x3fc6302b40f66a55              # double 0.173345
	.quad	0x3fd11f3e89a88ace              # double 0.26753199999999999
	.quad	0x3fda7aeddce7cd03              # double 0.41375299999999998
	.quad	0x3fe8e8b19a415f46              # double 0.77840500000000001
	.quad	0x3f9afaf859429175              # double 0.026348
	.quad	0x3fd6aa10e0221427              # double 0.35413
	.quad	0x3fdcfab10ba62670              # double 0.45280100000000001
	.quad	0x3fe411e85fd04a30              # double 0.62718600000000002
	.quad	0x3fe5b18fc504816f              # double 0.677925
	.quad	0x3fcfa500d5e8d541              # double 0.247223
	.quad	0x3fe1afa2f05a708f              # double 0.55269000000000001
	.quad	0x3fe823fcc9ea9a3d              # double 0.75439299999999998
	.quad	0x3fc4518f3eccc469              # double 0.15873899999999999
	.quad	0x3fe01fc4c165907e              # double 0.50387800000000005
	.quad	0x3fd6a34ca0c282c7              # double 0.353717
	.quad	0x3fe8b7cdcca70d20              # double 0.77243700000000004
	.quad	0x3fe1cfa05143bf72              # double 0.55659499999999995
	.quad	0x3fcefa5093964a5a              # double 0.24201400000000001
	.quad	0x3fabe1a8262456f7              # double 0.054455999999999997
	.quad	0x3fe795aaf78feef6              # double 0.73702000000000001
	.quad	0x3fdc0ba6266fd652              # double 0.43821100000000002
	.quad	0x3fe39209edbf8b9c              # double 0.61157700000000004
	.quad	0x3fdc512231832fcb              # double 0.44245200000000001
	.quad	0x3fe87eb4a66559f7              # double 0.76546700000000001
	.quad	0x3fd544aa53fc0097              # double 0.332316
	.quad	0x3fedee6106ab14ec              # double 0.93534899999999998
	.quad	0x3fd60d0aaa7ded6c              # double 0.34454600000000002
	.quad	0x3f9ab1d4f9c1f85d              # double 0.026068999999999998
	.quad	0x3fd013404ea4a8c1              # double 0.25117499999999998
	.quad	0x3fecbef06b37867f              # double 0.898308
	.quad	0x3fd53ab862b27cbf              # double 0.33170899999999998
	.quad	0x3feab877ab324852              # double 0.83501800000000004
	.quad	0x3fbee31d712a0ec7              # double 0.120653
	.quad	0x3fec118a009f6230              # double 0.87714099999999995
	.quad	0x3fdc2cf52b90a783              # double 0.44024400000000002
	.quad	0x3fef134acaff6d33              # double 0.97110499999999999
	.quad	0x3fd3c6bce8533b10              # double 0.30900499999999997
	.quad	0x3fe8456d5cfaacda              # double 0.75847500000000001
	.quad	0x3fa6e696a26e5471              # double 0.044727999999999997
	.quad	0x3feabcc07aaef2c7              # double 0.83554099999999998
	.quad	0x3fed59b3d07c84b6              # double 0.91720000000000002
	.quad	0x3fce8eb463497b74              # double 0.23873
	.quad	0x3fedbd3c36113405              # double 0.92935000000000001
	.quad	0x3fc32324c8366517              # double 0.14951
	.quad	0x3fe6a72a7bd48cb5              # double 0.70790600000000004
	.quad	0x3fd3c7eae5bc87db              # double 0.30907699999999999
	.quad	0x3feaab239a38fbca              # double 0.83339099999999999
	.quad	0x3fe1bb29a1b9f98b              # double 0.55409699999999995
	.quad	0x3fb9ea35935fc3b5              # double 0.10123
	.quad	0x3fca702a3486f04a              # double 0.20654800000000001
	.quad	0x3fb60828c36da87a              # double 0.086061999999999999
	.quad	0x3fe3d6b00ffda405              # double 0.61995699999999998
	.quad	0x3fe5bad18d25edd0              # double 0.67905499999999996
	.quad	0x3fdecb31c219eb64              # double 0.48115200000000002
	.quad	0x3fc4e7ff583a53b9              # double 0.16333
	.quad	0x3fd674927913e814              # double 0.35086499999999998
	.quad	0x3fdbbd9018e75793              # double 0.43344500000000002
	.quad	0x3fb0cee5abc0e38a              # double 0.065656999999999993
	.quad	0x3fcdae2da554b8bf              # double 0.231878
	.quad	0x3fe9ede76427c7c5              # double 0.81029099999999998
	.quad	0x3fd01ada76d97b31              # double 0.251639
	.quad	0x3fc5bf61aa3f034b              # double 0.169903
	.quad	0x3fdab784662bae04              # double 0.41745100000000002
	.quad	0x3fe31a5ebb7739f3              # double 0.59696899999999997
	.quad	0x3f8101b003686a4d              # double 0.0083040000000000006
	.quad	0x3fed002e2328f9f4              # double 0.90627199999999996
	.quad	0x3fea97f84449dbec              # double 0.83105099999999998
	.quad	0x3fc16733ebbfd71b              # double 0.135962
	.quad	0x3fd75b7cfe586013              # double 0.36495899999999998
	.quad	0x3fe22af78feef5ed              # double 0.56774500000000006
	.quad	0x3fb7393ab430f495              # double 0.090717000000000006
	.quad	0x3fe0b573eab367a1              # double 0.52215
	.quad	0x3fe4bfc86cebbba5              # double 0.64841099999999996
	.quad	0x3fe185b5b70691ea              # double 0.54757199999999995
	.quad	0x3fd259b3d07c84b6              # double 0.28672500000000001
	.quad	0x3fc6d6777079e59f              # double 0.17842
	.quad	0x3fdd1ff2e48e8a72              # double 0.45507500000000001
	.quad	0x3fe3e88377186552              # double 0.62213300000000005
	.quad	0x3fed98c197e56473              # double 0.92489699999999997
	.quad	0x3fe475818c5c9a35              # double 0.63934400000000002
	.quad	0x3fe0672756861e93              # double 0.51259200000000005
	.quad	0x3fbdd9d3458cd20b              # double 0.116605
	.quad	0x3fd2972474538ef3              # double 0.29047499999999998
	.quad	0x3feda0a73f748a16              # double 0.92586100000000005
	.quad	0x3fc7ff0cbaf965b2              # double 0.187471
	.quad	0x3fe87d06bbdbe3c1              # double 0.765262
	.quad	0x3fea7b15b573eab3              # double 0.82752499999999996
	.quad	0x3fe3ffcdab191dde              # double 0.62497599999999998
	.quad	0x3feef837b4a2339c              # double 0.96779999999999999
	.quad	0x3fe940f238972043              # double 0.78917800000000005
	.quad	0x3fe904c8bc9cd3e1              # double 0.78183400000000003
	.quad	0x3fe8d805e5f30e80              # double 0.77637
	.quad	0x3fe48e219652bd3c              # double 0.64234999999999998
	.quad	0x3fe865471715c63b              # double 0.76236300000000001
	.quad	0x3fd2290eed02cd3a              # double 0.28375600000000001
	.quad	0x3fe3ec4a4095f245              # double 0.62259399999999998
	.quad	0x3fd5cd29131ec0b5              # double 0.34064699999999998
	.quad	0x3fc064cb5bb384fd              # double 0.128076
	.quad	0x3fe0ad6451b93038              # double 0.52116600000000002
	.quad	0x3fdbdd8f92af9a8d              # double 0.43539800000000001
	.quad	0x3feb323bbc6eb0b8              # double 0.84988200000000003
	.quad	0x3fcb4003254e6e22              # double 0.212891
	.quad	0x3fbfcd141a6937d2              # double 0.124223
	.quad	0x3fd5c99285a921cd              # double 0.34042800000000001
	.quad	0x3fe6cf3fd933e35c              # double 0.71279899999999996
	.quad	0x3fb25072085b1855              # double 0.071540000000000006
	.quad	0x3fc742352eb5f5f1              # double 0.18170800000000001
	.quad	0x3fe2b1dd5d3dc8b8              # double 0.58421199999999995
	.quad	0x3fccbe7296f6512b              # double 0.22456200000000001
	.quad	0x3fdd79d4d834091c              # double 0.460561
	.quad	0x3fde3532e7b3d8e0              # double 0.471997
	.quad	0x3febba8826aa8eb4              # double 0.86651999999999995
	.quad	0x3fecf18c9fb6134d              # double 0.90448600000000001
	.quad	0x3fea3ba98eda22f7              # double 0.81978300000000004
	.quad	0x3fd4b9ecf6380022              # double 0.32384800000000002
	.quad	0x3fec2ed99cbee808              # double 0.88071900000000003
	.quad	0x3fe34a90470a808d              # double 0.60285200000000005
	.quad	0x3fd11769a91105e2              # double 0.26705400000000001
	.quad	0x3fe0b6c3760bf5d8              # double 0.52231000000000005
	.quad	0x3fdb7229e90795f6              # double 0.42884299999999997
	.quad	0x3fe602949a5657fb              # double 0.68781499999999995
	.quad	0x3fd26e696a26e547              # double 0.28798899999999999
	.quad	0x3fe42550870110a1              # double 0.62955499999999998
	.quad	0x3fcc523704790b85              # double 0.22125900000000001
	.quad	0x3fb904b3c3e74afd              # double 0.097727999999999995
	.quad	0x3febf67903211cb0              # double 0.87383699999999997
	.quad	0x3febb69fcf3dc055              # double 0.86604300000000001
	.quad	0x3feaf8ee28672757              # double 0.84288700000000005
	.quad	0x3fd9a9bcfd4bf099              # double 0.40098499999999998
	.quad	0x3fe29c64ba94bbe4              # double 0.58159099999999997
	.quad	0x3fbefb4c3c18b503              # double 0.121022
	.quad	0x3feaeb3354c12275              # double 0.84121100000000004
	.quad	0x3fdc6fb4c3c18b50              # double 0.44431799999999999
	.quad	0x3fcb35eb7457c0b1              # double 0.21258299999999999
	.quad	0x3fe1741f212d7732              # double 0.54542500000000005
	.quad	0x3fe1e544fe36d224              # double 0.55923699999999998
	.quad	0x3f92046c764adff8              # double 0.017595
	.quad	0x3fe091c2a0232096              # double 0.51779299999999995
	.quad	0x3fd3c74751ce28ed              # double 0.30903799999999998
	.quad	0x3fb3ac1d29dc725c              # double 0.076844999999999997
	.quad	0x3fe4e8a2ec28b2a7              # double 0.65339800000000003
	.quad	0x3fd178e1932d6ece              # double 0.273003
	.quad	0x3feb3f76a2f48c2e              # double 0.85149699999999995
	.quad	0x3fec9ef73c0c1fc9              # double 0.89440500000000001
	.quad	0x3fe95fd04a2fcefb              # double 0.79294600000000004
	.quad	0x3fe9946e4c0df58c              # double 0.79936899999999999
	.quad	0x3fe1e225fa658c4c              # double 0.55885600000000002
	.quad	0x3feca72c94b380cb              # double 0.89540699999999995
	.quad	0x3fcf25892684cf07              # double 0.24333299999999999
	.quad	0x3fe9134ce3de614a              # double 0.78360600000000002
	.quad	0x3fbd43d03968d75a              # double 0.114316
	.quad	0x3fcb4ddf86e3b470              # double 0.213314
	.quad	0x3fd00cb6c7a7c9de              # double 0.250776
	.quad	0x3faf03afb7e90ff9              # double 0.060574999999999997
	.quad	0x3fbe33ce63a5c1c6              # double 0.117978
	.quad	0x3fee4938583621fb              # double 0.946438
	.quad	0x3fe8badc0980b242              # double 0.77281
	.quad	0x3fedda3e39f77293              # double 0.93289100000000003
	.quad	0x3fe42c3eb7cbb3c8              # double 0.63040099999999999
	.quad	0x3fe6b46bacf74470              # double 0.70952400000000004
	.quad	0x3fca14727dcbddba              # double 0.20374900000000001
	.quad	0x3fe7a60d4562e0a0              # double 0.73902000000000001
	.quad	0x3fed2398201cd5fa              # double 0.91059500000000004
	.quad	0x3fd885be1a826245              # double 0.38316299999999998
	.quad	0x3fe772a38b8ae31d              # double 0.73274399999999995
	.quad	0x3fdce054690de093              # double 0.45119199999999998
	.quad	0x3fcace24bba12b5e              # double 0.20941599999999999
	.quad	0x3fee636d22424a27              # double 0.94963699999999995
	.quad	0x3fe2f9bdc69f8c22              # double 0.59298600000000001
	.quad	0x3fecf5903a7546d4              # double 0.904976
	.quad	0x3feb3fb15b573eab              # double 0.85152499999999998
	.quad	0x3fedc9e44fa05144              # double 0.93089500000000002
	.quad	0x3feaa8049667b5f2              # double 0.83301000000000003
	.quad	0x3fed3d87b56b8738              # double 0.91376100000000005
	.quad	0x3fdcaafff36ac647              # double 0.44793699999999997
	.quad	0x3feb5dfeb8d82342              # double 0.85522399999999998
	.quad	0x3fe005e1c15097c8              # double 0.500718
	.quad	0x3fc9655e28aa4335              # double 0.198406
	.quad	0x3fef5aea3161a1dc              # double 0.97984800000000005
	.quad	0x3fe7496cc5fbf834              # double 0.72771300000000005
	.quad	0x3fd0fe0ce0b912dc              # double 0.26550600000000002
	.quad	0x3fe5bf141205bc02              # double 0.67957500000000004
	.quad	0x3fc5b3fa6defc7a4              # double 0.16955500000000001
	.quad	0x3fcefdc1615ebfa9              # double 0.242119
	.quad	0x3fd1c6cdaf4adbc6              # double 0.27775899999999998
	.quad	0x3feef416bdb1a6d7              # double 0.96729600000000004
	.quad	0x3fdc06ee30caa327              # double 0.43792300000000001
	.quad	0x3fc72e40852b4d8c              # double 0.18109900000000001
	.quad	0x3fe7d1aa821f2991              # double 0.74434400000000001
	.quad	0x3fe6f9ca5bd944aa              # double 0.71799199999999996
	.quad	0x3fb5aeb3dd11be6e              # double 0.084696999999999994
	.quad	0x3fedc4f5d35653ca              # double 0.93029300000000004
	.quad	0x3fe9317ce52deca2              # double 0.78729099999999996
	.quad	0x3fc8ac53b0813cac              # double 0.19275900000000001
	.quad	0x3fe7aac96cc5fbf8              # double 0.73959799999999998
	.quad	0x3fe0d0ebaade657c              # double 0.52550300000000005
	.quad	0x3fcaa70d1fa33376              # double 0.20822299999999999
	.quad	0x3f975360d0247022              # double 0.022779000000000001
	.quad	0x3fdb9310129cbab6              # double 0.43085099999999998
	.quad	0x3fd6c0724b76f6d7              # double 0.35549599999999998
	.quad	0x3fe3df58c08b75ea              # double 0.62101399999999995
	.quad	0x3fe65ddd2ae8e1d6              # double 0.69895799999999997
	.quad	0x3fe3592b7fe08af0              # double 0.60463500000000003
	.quad	0x3fb5cc63f141205c              # double 0.085150000000000003
	.quad	0x3fb19ce075f6fd22              # double 0.0688
	.quad	0x3fcf3111f0c34c1b              # double 0.24368500000000001
	.quad	0x3fc5d7c2ca148ba8              # double 0.17064699999999999
	.quad	0x3fe849f51697f1fa              # double 0.75902800000000004
	.quad	0x3fb546f587d6f976              # double 0.083113999999999993
	.quad	0x3feef7531db445ed              # double 0.96769099999999996
	.quad	0x3fd6aa9b499d0204              # double 0.35416300000000001
	.quad	0x3fd3b8fde2ef4e01              # double 0.308166
	.quad	0x3fd64cdb7ae5796c              # double 0.348441
	.quad	0x3fe4bbe4473cd573              # double 0.64793599999999996
	.quad	0x3fc9e646f1561911              # double 0.20233999999999999
	.quad	0x3fd68ea7ce0fc2ec              # double 0.35245700000000002
	.quad	0x3fe1c8b86b15f890              # double 0.55575200000000002
	.quad	0x3fd61a79fec99f1b              # double 0.34536600000000001
	.quad	0x3fe900218def416c              # double 0.78126600000000001
	.quad	0x3fe1a80064a9cdc4              # double 0.55175799999999997
	.quad	0x3fe509df1172ef0b              # double 0.65745500000000001
	.quad	0x3fe26594af4f0d84              # double 0.57489999999999997
	.quad	0x3fed445aa2e3c537              # double 0.91459400000000002
	.quad	0x3feeb8066c2acb86              # double 0.95996400000000004
	.quad	0x3fa2bb23571d1d47              # double 0.036583999999999998
	.quad	0x3fe33ac0c62e4d1a              # double 0.60092199999999996
	.quad	0x3fee795703f2d3c8              # double 0.95231200000000004
	.quad	0x3fe1fa919695d91b              # double 0.56183700000000003
	.quad	0x3feb3ee5eedcc20d              # double 0.85142799999999996
	.quad	0x3fcd00cd855970b5              # double 0.22658700000000001
	.quad	0x3fe6e149c6f36ef8              # double 0.715001
	.quad	0x3fe86149c6f36ef8              # double 0.761876
	.quad	0x3fb3f06705c896dd              # double 0.077886999999999998
	.quad	0x3fe404ccee5abc0e              # double 0.62558599999999998
	.quad	0x3fa260f5e41d4b6a              # double 0.035895999999999997
	.quad	0x3fd7f51ac9afe1da              # double 0.37433499999999997
	.quad	0x3fb777c02afdda8c              # double 0.091671000000000002
	.quad	0x3fb43fb3743632c2              # double 0.079097
	.quad	0x3fa9361dc93ea2d3              # double 0.049241
	.quad	0x3fe33e9856a37ac4              # double 0.60139100000000001
	.quad	0x3fd45696e58a32f4              # double 0.31778499999999998
	.quad	0x3fa46d82ba5a0382              # double 0.039898000000000003
	.quad	0x3fea9b5e95b78cca              # double 0.83146600000000004
	.quad	0x3fdc2e1262025397              # double 0.44031199999999998
	.quad	0x3feafc8d1958969a              # double 0.843329
	.quad	0x3fb10ecb74ddf86e              # double 0.066631999999999997
	.quad	0x3fca4c48adeebb34              # double 0.205453
	.quad	0x3fefeabde3fbbd7b              # double 0.99740499999999998
	.quad	0x3fc6065300581494              # double 0.172068
	.quad	0x3fdda72ead9274e2              # double 0.46332899999999999
	.quad	0x3fcc91b823c85c25              # double 0.22319700000000001
	.quad	0x3fceaa19439de482              # double 0.239566
	.quad	0x3fe6f8359bc33f85              # double 0.71779899999999996
	.quad	0x3fd69e774eebf65e              # double 0.35342200000000001
	.quad	0x3fd7f4623d0bfa09              # double 0.37429099999999998
	.quad	0x3fd550ebaade657c              # double 0.33306400000000003
	.quad	0x3fd82f6e82949a56              # double 0.37789499999999998
	.quad	0x3fcef78feef5ec81              # double 0.24193000000000001
	.quad	0x3fe86b67c286f8ad              # double 0.76311099999999998
	.quad	0x3fe00a50507a6bd7              # double 0.50125900000000001
	.quad	0x3fe05a9435ac8a37              # double 0.51105699999999998
	.quad	0x3fb5322f2734f82f              # double 0.082796999999999996
	.quad	0x3fdb98e970718223              # double 0.43120799999999998
	.quad	0x3fea47abfb9bed31              # double 0.82124900000000001
	.quad	0x3fefa02d9cf13cef              # double 0.98830300000000004
	.quad	0x3fe43b18dac258d6              # double 0.63221400000000005
	.quad	0x3fdbfda836eb4e98              # double 0.437357
	.quad	0x3fe211be6e653869              # double 0.564666
	.quad	0x3f9d2d87f88765ba              # double 0.028493999999999998
	.quad	0x3feab09a671ef30a              # double 0.83405799999999997
	.quad	0x3fe467924af0bf1a              # double 0.63764299999999996
	.quad	0x3fec56a161e4f766              # double 0.885575
	.quad	0x3fe669e1b089a027              # double 0.70042499999999996
	.quad	0x3fdc418d6909aed5              # double 0.44150099999999998
	.quad	0x3f7ddd2ae8e1d649              # double 0.0072909999999999997
	.quad	0x3fd8996b76709fa5              # double 0.38436399999999998
	.quad	0x3fdd604189374bc7              # double 0.45900000000000002
	.quad	0x3fdcd92fb19e731d              # double 0.45075599999999999
	.quad	0x3fd59c065b63d3e5              # double 0.337648
	.quad	0x3fd73e0bd44998d0              # double 0.36316199999999998
	.quad	0x3fd57cd898b2e9cd              # double 0.33574500000000002
	.quad	0x3fee9f559b3d07c8              # double 0.95694999999999996
	.quad	0x3fe4e1b4bb5e0f80              # double 0.65255200000000002
	.quad	0x3fe3ecf41f212d77              # double 0.62267499999999998
	.quad	0x3fe86b7ed41b75a7              # double 0.76312199999999997
	.quad	0x3fe9a3f8982cb210              # double 0.80126600000000003
	.quad	0x3fc731550ca1cef2              # double 0.18119299999999999
	.quad	0x3fa7f77af640639d              # double 0.046809999999999997
	.quad	0x3fc2d3f9e7b80a9e              # double 0.147094
	.quad	0x3fea73300de4c511              # double 0.82656099999999999
	.quad	0x3fe64ca925fe974a              # double 0.69685799999999998
	.quad	0x3fe21ca3a4b5568f              # double 0.56599600000000005
	.quad	0x3fe914f483cafb3b              # double 0.78380799999999995
	.quad	0x3fcb7a7008a697af              # double 0.214674
	.quad	0x3fccdb8bac710cb3              # double 0.22545000000000001
	.quad	0x3fb100a393ee5eee              # double 0.066416000000000003
	.quad	0x3fe7841ede1198af              # double 0.73487800000000003
	.quad	0x3fe3da8bd230b9dc              # double 0.62042799999999998
	.quad	0x3fde92d1287c200c              # double 0.477711
	.quad	0x3fe3d1351159c497              # double 0.61928799999999995
	.quad	0x3fc49f8c21e1d218              # double 0.16111900000000001
	.quad	0x3fe3230984e3ffef              # double 0.59802699999999998
	.quad	0x3fdbe8427418d691              # double 0.43605100000000002
	.quad	0x3fec65d3996fa82f              # double 0.88743000000000005
	.quad	0x3fce5308bb906467              # double 0.23690900000000001
	.quad	0x3fe57d9dba908a26              # double 0.67158399999999996
	.quad	0x3fe89424e5929670              # double 0.76808399999999999
	.quad	0x3fc9717df19d66ae              # double 0.19877600000000001
	.quad	0x3fd6616b54e2b064              # double 0.34969600000000001
	.quad	0x3fe27c47e49b1fac              # double 0.57767100000000005
	.quad	0x3feb422467be553b              # double 0.85182400000000003
	.quad	0x3fe2a350d2806af4              # double 0.58243599999999995
	.quad	0x3fd7501e2584f4c7              # double 0.36426500000000001
	.quad	0x3fed64649906cca3              # double 0.91850500000000002
	.quad	0x3fd09142b302f72b              # double 0.25886599999999999
	.quad	0x3fec7fd60e94ee39              # double 0.89060499999999998
	.quad	0x3fe9e9db65ecc3e3              # double 0.80979699999999999
	.quad	0x3fde81ba7fc32ebe              # double 0.47666799999999998
	.quad	0x3fe01c087442c7fc              # double 0.50342200000000004
	.quad	0x3fe32ae07e5a78f2              # double 0.59898399999999996
	.quad	0x3fe2b8151a437825              # double 0.58497100000000002
	.quad	0x3fd0a55d1c3ac92a              # double 0.26009300000000002
	.quad	0x3fc9f623076c050c              # double 0.202824
	.quad	0x3f9355475a31a4be              # double 0.018880000000000001
	.quad	0x3fdff2f555821294              # double 0.49920399999999998
	.quad	0x3fedfeed45e9185d              # double 0.93736900000000001
	.quad	0x3fb1cf67b1c0010c              # double 0.069570999999999994
	.quad	0x3fed7af42784a948              # double 0.92125900000000005
	.quad	0x3fe5238b8ae31d71              # double 0.66058899999999998
	.quad	0x3fe7b20fb224aada              # double 0.74048599999999998
	.quad	0x3fdec83ec892ab69              # double 0.48097200000000001
	.quad	0x3fd58effe2a3cea7              # double 0.33685300000000001
	.quad	0x3fd534acaff6d331              # double 0.33134000000000002
	.quad	0x3fe2663e8dda48b6              # double 0.57498099999999996
	.quad	0x3fe401626b2f2303              # double 0.62516899999999997
	.quad	0x3fc6795f676ea423              # double 0.17557900000000001
	.quad	0x3fb7b70ef566490a              # double 0.092636999999999997
	.quad	0x3fed000431bde82d              # double 0.90625199999999995
	.quad	0x3feb31b36bd2b6f2              # double 0.84981700000000004
	.quad	0x3fca2424a276b7ed              # double 0.20422799999999999
	.quad	0x3fe37aa68f4b61fe              # double 0.60872199999999999
	.quad	0x3feeebf65dbfceb8              # double 0.96630400000000005
	.quad	0x3fe352b0a6fc58ac              # double 0.60384400000000005
	.quad	0x3fecd4a7f8012dfd              # double 0.90095899999999995
	.quad	0x3fd946ae3a3a8e71              # double 0.39493899999999998
	.quad	0x3fd2075b3e1437c5              # double 0.28169899999999998
	.quad	0x3fe19f2dc2b0ea18              # double 0.55068099999999998
	.quad	0x3fce878fabda0dfe              # double 0.238512
	.quad	0x3feb72862f5989df              # double 0.85772999999999999
	.quad	0x3fdb45c78a6dacac              # double 0.42613400000000001
	.quad	0x3fc063497b7414a5              # double 0.12803
	.quad	0x3fde28d8665e02eb              # double 0.47124300000000002
	.quad	0x3fe3b3ce63a5c1c6              # double 0.615699
	.quad	0x3fad2977c88e79ab              # double 0.056957000000000001
	.quad	0x3fe2e75360d02470              # double 0.59073799999999999
	.quad	0x3fdc567dbb16c1e3              # double 0.44277899999999998
	.quad	0x3fe94026cc1ca3a5              # double 0.78908100000000003
	.quad	0x3fe830a2ca9ac365              # double 0.75593699999999997
	.quad	0x3fdb3201040bfe3b              # double 0.424927
	.quad	0x3feb29888f861a61              # double 0.84882000000000002
	.quad	0x3fd83f39d1b2e59b              # double 0.378859
	.quad	0x3fdcc32a8c9b8455              # double 0.44941199999999998
	.quad	0x3fb690364388ebcc              # double 0.088137999999999994
	.quad	0x3fe2059ea57214f0              # double 0.56318599999999996
	.quad	0x3fd5896dd26b723f              # double 0.33651300000000001
	.quad	0x3fc81cb46bacf744              # double 0.18837599999999999
	.quad	0x3fe4cbad7d7c2ca1              # double 0.64986299999999997
	.quad	0x3fefc5d63886594b              # double 0.9929
	.quad	0x3fe6499d0203e63f              # double 0.69648600000000005
	.quad	0x3fe990342aa9f7b6              # double 0.79885300000000004
	.quad	0x3fe45f30e7ff583a              # double 0.63661999999999996
	.quad	0x3fe77449129888f8              # double 0.73294499999999996
	.quad	0x3fed27a85015c209              # double 0.91109099999999998
	.quad	0x3fe60359bc33f855              # double 0.68790899999999999
	.quad	0x3fe900218def416c              # double 0.78126600000000001
	.quad	0x3fd07d566cf41f21              # double 0.25764999999999999
	.quad	0x3fa66106ab14ec20              # double 0.043708999999999998
	.quad	0x3f76744b2b777d0f              # double 0.0054819999999999999
	.quad	0x3fe95a858793dd98              # double 0.7923
	.quad	0x3fea64628027d88c              # double 0.82475399999999998
	.quad	0x3fbfbb62413db7f1              # double 0.12395299999999999
	.quad	0x3fb73f42352eb5f6              # double 0.090809
	.quad	0x3fca9b52007dd441              # double 0.20786499999999999
	.quad	0x3fe4dbb384fd2a63              # double 0.65181900000000004
	.quad	0x3feccf7878b7a1c2              # double 0.90032599999999996
	.quad	0x3feee8e820e62995              # double 0.96593099999999998
	.quad	0x3fee2e03b3e9a6f8              # double 0.94311699999999998
	.quad	0x3fb122c881e4712e              # double 0.066936999999999997
	.quad	0x3f33fd0d0678c005              # double 3.0499999999999999E-4
	.quad	0x3fdc9dba908a265f              # double 0.447127
	.quad	0x3fee265f0f5a1017              # double 0.94218400000000002
	.quad	0x3fedc1bb8c32a8ca              # double 0.92989900000000003
	.quad	0x3fe7c7fdc5931ca8              # double 0.74316300000000002
	.quad	0x3fcec743201040c0              # double 0.240456
	.quad	0x3fde39cd8127b2cc              # double 0.47227799999999998
	.quad	0x3fe73b341e14bdfd              # double 0.72597699999999998
	.quad	0x3fe3c39799e518f4              # double 0.61762600000000001
	.quad	0x3fddeac42e9899bf              # double 0.46745399999999998
	.quad	0x3fcac729f59ccfaf              # double 0.209203
	.quad	0x3fdb70110a137f39              # double 0.42871500000000001
	.quad	0x3fdc01d9f4d37c13              # double 0.43761299999999997
	.quad	0x3fd9371da37ef5a9              # double 0.39398899999999998
	.quad	0x3fdc111276fb0920              # double 0.43854199999999999
	.quad	0x3fe7a6bf8769ec2d              # double 0.73910500000000001
	.quad	0x3fcfa51a005c4652              # double 0.247226
	.quad	0x3fd075f6fd21ff2e              # double 0.25719999999999998
	.quad	0x3fe734070329802c              # double 0.725101
	.quad	0x3fd00789613d31ba              # double 0.25046000000000002
	.quad	0x3fd363d3e4ef0282              # double 0.30296800000000002
	.quad	0x3f85faa8a82a5615              # double 0.010732
	.quad	0x3fbdf0b28522ea10              # double 0.116954
	.quad	0x3fbfcdbbe0157eed              # double 0.124233
	.quad	0x3fd374d9c6b0531a              # double 0.30400700000000003
	.quad	0x3fed29a8049667b6              # double 0.91133500000000001
	.quad	0x3fe7337a80cf9e38              # double 0.72503399999999996
	.quad	0x3fc05b20b8066c2b              # double 0.12778100000000001
	.quad	0x3fd1f88765ba6efc              # double 0.28079399999999999
	.quad	0x3fde976ff3ade226              # double 0.477993
	.quad	0x3feaca1272c94b38              # double 0.83716699999999999
	.quad	0x3fe65d1a21ea3593              # double 0.69886499999999996
	.quad	0x3fe32bd3c3611340              # double 0.59909999999999997
	.quad	0x3fdc4aa10e022142              # double 0.44205499999999998
	.quad	0x3fc9714b9cb6848c              # double 0.19877
	.quad	0x3fe54fe79ee02a78              # double 0.66600400000000004
	.quad	0x3fef9cfdd2285660              # double 0.98791399999999995
	.quad	0x3fec04f8f8a4c1ec              # double 0.87560700000000002
	.quad	0x3fe54d4024b33db0              # double 0.66568000000000005
	.quad	0x3fe2c43d46b26bf8              # double 0.58645499999999995
	.quad	0x3fe433a8a3f8982d              # double 0.63130600000000003
	.quad	0x3fd0e1a8262456f7              # double 0.26377299999999998
	.quad	0x3fcd84230fcf80dc              # double 0.23059499999999999
	.quad	0x3fc51782d38476f3              # double 0.16478000000000001
	.quad	0x3fac6b8b69552e30              # double 0.055508000000000002
	.quad	0x3fdb39c94f69ca9f              # double 0.425402
	.quad	0x3fe1d610adcd2d45              # double 0.55738100000000002
	.quad	0x3feaf607c4199fe4              # double 0.84253299999999997
	.quad	0x3fdb6f7a0b5ed8d3              # double 0.42867899999999998
	.quad	0x3fed2ccf6be37de9              # double 0.91171999999999997
	.quad	0x3fe5d85be1a82624              # double 0.68266099999999996
	.quad	0x3fe18bd44998d046              # double 0.548319
	.quad	0x3fbf6a619da9c993              # double 0.12271700000000001
	.quad	0x3fe98bdcad14a0a1              # double 0.798323
	.quad	0x3fd2e14bdfd2630f              # double 0.29500100000000001
	.quad	0x3feffbb9496249a1              # double 0.99947799999999997
	.quad	0x3fe5cf97edc7ef17              # double 0.68159099999999995
	.quad	0x3fe580b673c4f3ba              # double 0.67196199999999995
	.quad	0x3feb4918e325d4a6              # double 0.85267300000000001
	.quad	0x3fe7c898f605ab3b              # double 0.74323700000000004
	.quad	0x3fe9314a90470a81              # double 0.78726700000000005
	.quad	0x3fc325b317efe0ce              # double 0.149588
	.quad	0x3fe24e89656eefa2              # double 0.57208700000000001
	.quad	0x3fd6ec99f1ae2da5              # double 0.35819099999999998
	.quad	0x3fc086d71f36262d              # double 0.12911500000000001
	.quad	0x3fef31feeb2d0a24              # double 0.97485299999999996
	.quad	0x3fd3a854477ff152              # double 0.30714900000000001
	.quad	0x3fdb164840e1719f              # double 0.42323499999999997
	.quad	0x3fe02856605ee569              # double 0.50492400000000004
	.quad	0x3fc7c3dee78183f9              # double 0.185665
	.quad	0x3fe40fdc1615ebfb              # double 0.62693600000000005
	.quad	0x3fe6deb7457c0b13              # double 0.71468699999999996
	.quad	0x3fdf282c6ef3d3a2              # double 0.48682700000000001
	.quad	0x3fd90ac7da1ec4e7              # double 0.39128299999999999
	.quad	0x3fa8270f3882278d              # double 0.047173
	.quad	0x3fc383382e44b6e9              # double 0.15244199999999999
	.quad	0x3fe67eda66128390              # double 0.70298499999999997
	.quad	0x3fd1586013660e52              # double 0.27101900000000001
	.quad	0x3fea512a94ff0026              # double 0.82240800000000003
	.quad	0x3fd40168b5cbff47              # double 0.31258599999999997
	.quad	0x3fe690b84988094e              # double 0.70516599999999996
	.quad	0x3fdbb545c78a6dad              # double 0.43293900000000002
	.quad	0x3fd5bbcf4e874c90              # double 0.339588
	.quad	0x3fe545c9a34ca0c3              # double 0.66476900000000005
	.quad	0x3fa842d8c2a454de              # double 0.047384999999999997
	.quad	0x3feced5f138bcdff              # double 0.903976
	.quad	0x3fed268f4b61fe22              # double 0.91095700000000002
	.quad	0x3fe6e994185058de              # double 0.71601300000000001
	.quad	0x3fddfd3f5b5fa227              # double 0.468582
	.quad	0x3fc6534bd76ee73e              # double 0.17441699999999999
	.quad	0x3fefbc6eb0b7c350              # double 0.99175199999999997
	.quad	0x3fb37739f340d4dc              # double 0.076037999999999994
	.quad	0x3fe483d577963993              # double 0.64109300000000002
	.quad	0x3fdd1b9b66f9335d              # double 0.45480999999999999
	.quad	0x3fc70129cbab649d              # double 0.17972299999999999
	.quad	0x3fb481908e581cf8              # double 0.080102000000000007
	.quad	0x3fd0a7d24180d3d0              # double 0.260243
	.quad	0x3fe4ffb8b26394fb              # double 0.65621600000000002
	.quad	0x3fe51465e8922531              # double 0.65873999999999999
	.quad	0x3fa9331a08bfc222              # double 0.049217999999999998
	.quad	0x3fe0bd6e8af81627              # double 0.52312400000000003
	.quad	0x3fc553f7ced91687              # double 0.166625
	.quad	0x3fe993dd97f62b6b              # double 0.79930000000000001
	.quad	0x3fd6122fad6cb535              # double 0.34486
	.quad	0x3fe5d70e6f2e8c05              # double 0.68250200000000005
	.quad	0x3fed07980f55de59              # double 0.90717700000000001
	.quad	0x3fe4f5232d2bb235              # double 0.65492399999999995
	.quad	0x3fd5b4d056c508b3              # double 0.33916099999999999
	.quad	0x3fe1e219652bd3c3              # double 0.55884999999999996
	.quad	0x3fce8a697aeddce8              # double 0.23859900000000001
	.quad	0x3fe7fcc9ea9a3d2e              # double 0.74960800000000005
	.quad	0x3fe1b862b27cbf6e              # double 0.55375799999999997
	.quad	0x3fdc870da5daf07c              # double 0.445743
	.quad	0x3febcc0df58c08b7              # double 0.86865899999999996
	.quad	0x3fbfcdbbe0157eed              # double 0.124233
	.quad	0x3fe1d464dc22ab26              # double 0.55717700000000003
	.quad	0x3fd90dcb9a9da598              # double 0.39146700000000001
	.quad	0x3feb13122b7baecd              # double 0.846078
	.quad	0x3fe7fa5f41aef6f9              # double 0.74931300000000001
	.quad	0x3fda36bd2b6f1993              # double 0.40959099999999998
	.quad	0x3fa2ae297396d091              # double 0.036484999999999997
	.quad	0x3fdf04d12018a43c              # double 0.48466900000000002
	.quad	0x3fdcd413122b7baf              # double 0.45044400000000001
	.quad	0x3fce31df761cbccf              # double 0.235897
	.quad	0x3fe3402afdda8bd2              # double 0.60158299999999998
	.quad	0x3fe9253da72a7bd5              # double 0.78579600000000005
	.quad	0x3fe11170d62bf120              # double 0.53337900000000005
	.quad	0x3fe8c1333b96af04              # double 0.77358400000000004
	.quad	0x3fcb885d31337eb3              # double 0.21509900000000001
	.quad	0x3fb008205ff1d81f              # double 0.062623999999999999
	.quad	0x3fc4c743201040c0              # double 0.162331
	.quad	0x3fdc97dd00f776c5              # double 0.44676900000000003
	.quad	0x3fb4e8fb00bcbe62              # double 0.081680000000000002
	.quad	0x3fa33636f3b213e4              # double 0.037523000000000001
	.quad	0x3fd0a7ded6ba8c58              # double 0.26024599999999998
	.quad	0x3fd82d9cf13cee9e              # double 0.37778400000000001
	.quad	0x3fdd3b7521144cbe              # double 0.45675399999999999
	.quad	0x3fce0fecdd0d8cb0              # double 0.23486099999999999
	.quad	0x3fe16e1deacc9214              # double 0.54469199999999995
	.quad	0x3fe81958969a0ad9              # double 0.75309400000000004
	.quad	0x3fec5cbbc2b94d94              # double 0.88631999999999999
	.quad	0x3fd5b56323bbc6eb              # double 0.339196
	.quad	0x3fc7800a7c5ac472              # double 0.18359500000000001
	.quad	0x3fe3a73d5bab2181              # double 0.61416499999999996
	.quad	0x3fe363fbbd7b2032              # double 0.60595500000000002
	.quad	0x3feddeaab042528b              # double 0.93343100000000001
	.quad	0x3fd71550ca1cef24              # double 0.360676
	.quad	0x3fe68c21e1d2178f              # double 0.70460599999999995
	.quad	0x3febb0a4e379b77c              # double 0.86531299999999999
	.quad	0x3fb55e28aa433509              # double 0.083468000000000001
	.quad	0x3fe110adcd2d44dd              # double 0.53328600000000004
	.quad	0x3fe72c77574f722e              # double 0.72417799999999999
	.quad	0x3fe39dbca9691a76              # double 0.61300500000000002
	.quad	0x3fe5691212513b5c              # double 0.669076
	.quad	0x3fdc80d801b43526              # double 0.44536399999999998
	.quad	0x3fea0eb0318b9347              # double 0.81429300000000004
	.quad	0x3fd9506dd69d3027              # double 0.395534
	.quad	0x3fd4cb4aec8d5c74              # double 0.32490799999999997
	.quad	0x3fa4b790fb65668c              # double 0.040462999999999999
	.quad	0x3fd20c804102ff8f              # double 0.28201300000000001
	.quad	0x3fed413b9f127f5f              # double 0.91421300000000005
	.quad	0x3fe8d5b24e9c4546              # double 0.77608600000000005
	.quad	0x3fe24122749f0e4e              # double 0.57045100000000004
	.quad	0x3fee003ab862b27d              # double 0.93752800000000003
	.quad	0x3febdff3f0fe047d              # double 0.87108799999999997
	.quad	0x3fcd5b4edb2f661f              # double 0.229349
	.quad	0x3fdb548238540464              # double 0.427033
	.quad	0x3fe134fe79ee02a7              # double 0.53771899999999995
	.quad	0x3fed81b43526527a              # double 0.92208299999999999
	.quad	0x3fe9a54a3c64345d              # double 0.801427
	.quad	0x3fd43a9b06812381              # double 0.316077
	.quad	0x3fd5586876e1dead              # double 0.33352100000000001
	.quad	0x3fe8f7ced916872b              # double 0.78025
	.quad	0x3fe5cb295e9e1b09              # double 0.68105000000000004
	.quad	0x3fe19c779a6b50b1              # double 0.55035000000000001
	.quad	0x3fe60a7a41e57d9e              # double 0.68877900000000003
	.quad	0x3faeeb0b7c3504c5              # double 0.060387000000000003
	.quad	0x3fd9cf52b90a7829              # double 0.403279
	.quad	0x3fe0c0d6f544bb1b              # double 0.52354000000000001
	.quad	0x3fda8305d95dd4c7              # double 0.41424699999999998
	.quad	0x3fda5a9eb2074ea9              # double 0.41178100000000001
	.quad	0x3fd29335d249e450              # double 0.29023500000000002
	.quad	0x3fda00b45ae5ffa4              # double 0.40629300000000002
	.quad	0x3fb20a0f4d7add16              # double 0.070466000000000001
	.quad	0x3fe7f6d97b30f8c6              # double 0.74888299999999997
	.quad	0x3fddda87a072d1af              # double 0.46646300000000002
	.quad	0x3fd7b8c75c4a83b2              # double 0.37065300000000001
	.quad	0x3fd6f94c87980f56              # double 0.35896600000000001
	.quad	0x3fd1a53fc0096feb              # double 0.27571099999999998
	.quad	0x3fe3b22af5771002              # double 0.61549900000000002
	.quad	0x3fd42f87ad080b67              # double 0.31540099999999999
	.quad	0x3fea6b8737974602              # double 0.82562599999999997
	.quad	0x3fd2e4e69f05ea25              # double 0.29522100000000001
	.quad	0x3fe363c968943e10              # double 0.605931
	.quad	0x3fe222706d506573              # double 0.56670399999999999
	.quad	0x3fcea6e32e3821af              # double 0.23946799999999999
	.quad	0x3fe1396af038e2a0              # double 0.53825900000000004
	.quad	0x3fe38e2c12ad81ae              # double 0.61110500000000001
	.quad	0x3fe145e4e69f05ea              # double 0.53978199999999998
	.quad	0x3fd8767903211cb0              # double 0.38223099999999999
	.quad	0x3fb23aafff36ac64              # double 0.071207999999999994
	.quad	0x3fc0f91a32b12d34              # double 0.132602
	.quad	0x3fdf5821294573a8              # double 0.48975400000000002
	.quad	0x3fe47d2630ec3116              # double 0.64027699999999999
	.quad	0x3fe1de7210be9425              # double 0.55840400000000001
	.quad	0x3fdc51f81a5870da              # double 0.44250299999999998
	.quad	0x3fed6e158750c1b9              # double 0.91968799999999995
	.quad	0x3fe8dba2be0589ad              # double 0.77681100000000003
	.quad	0x3fcbc1acde19fc2b              # double 0.21684800000000001
	.quad	0x3feb38f36694898f              # double 0.85070199999999996
	.quad	0x3fc2caeea63b688c              # double 0.146818
	.quad	0x3fdcb3bfb58d1527              # double 0.44847100000000001
	.quad	0x3fc5355475a31a4c              # double 0.16569
	.quad	0x3feaca276b7ed41b              # double 0.83717699999999995
	.quad	0x3fc812e83a109d06              # double 0.18807699999999999
	.quad	0x3fe047ffde7210bf              # double 0.50878900000000005
	.quad	0x3feb9743e963dc48              # double 0.86221499999999995
	.quad	0x3fe620ea5b530ced              # double 0.69151799999999997
	.quad	0x3fee68cac4b4d057              # double 0.95029200000000003
	.quad	0x3fba3eaf6837f7be              # double 0.102519
	.quad	0x3fb765fd8adab9f5              # double 0.091399999999999995
	.quad	0x3fe6e260b2c83ec9              # double 0.71513400000000005
	.quad	0x3fe475232d2bb235              # double 0.63929899999999995
	.quad	0x3fe47b139c94f69d              # double 0.64002400000000004
	.quad	0x3fd1061847f56217              # double 0.26599699999999998
	.quad	0x3fe8750a02b84125              # double 0.76428700000000005
	.quad	0x3f8563a9f383f0bb              # double 0.010444
	.quad	0x3fc3e74afd545415              # double 0.155496
	.quad	0x3fde97396d0917d7              # double 0.47798000000000002
	.quad	0x3fe3c0a4a05dd8f9              # double 0.61726599999999998
	.quad	0x3fe743fc43b2dd37              # double 0.72704899999999995
	.quad	0x3fe4d9a30984e400              # double 0.65156700000000001
	.quad	0x3fd6ab3edd8b60f2              # double 0.35420200000000002
	.quad	0x3fe28b75ea67e847              # double 0.57952400000000004
	.quad	0x3fea32e59af9ebea              # double 0.81871300000000002
	.quad	0x3f879e16d6dc1a48              # double 0.011532000000000001
	.quad	0x3fea8958d9b5e95b              # double 0.82926599999999995
	.quad	0x3fd393ccd0fe8ab5              # double 0.305896
	.quad	0x3feabffac1d29dc7              # double 0.83593499999999998
	.quad	0x3fe1cf95d4e8fb01              # double 0.55659000000000003
	.quad	0x3fe24fe36d22424a              # double 0.57225199999999998
	.quad	0x3fe8ef284167a95d              # double 0.77919400000000005
	.quad	0x3feeb7bd05af6c6a              # double 0.95992900000000003
	.quad	0x3fda16b54e2b063e              # double 0.407636
	.quad	0x3fcc1908e581cf78              # double 0.21951399999999999
	.quad	0x3fb47d4e09784ec6              # double 0.080036999999999997
	.quad	0x3fcc502eec7c957d              # double 0.221197
	.quad	0x3fd5f3a14cec41dd              # double 0.34299499999999999
	.quad	0x3fec37281fd9ba1b              # double 0.88173299999999999
	.quad	0x3fd727807789a459              # double 0.361786
	.quad	0x3fc128d8665e02eb              # double 0.13405900000000001
	.quad	0x3fe631bbcf4e874d              # double 0.69357100000000005
	.quad	0x3fb9d6f112fd32c6              # double 0.100936
	.quad	0x3fe912af9a8cdea0              # double 0.78353099999999997
	.quad	0x3f647f13059641f6              # double 0.0025019999999999999
	.quad	0x3fee6b0d9513f8db              # double 0.95056799999999997
	.quad	0x3fe9c26dce39b457              # double 0.80498400000000003
	.quad	0x3fde4f440af1cb8a              # double 0.47358800000000001
	.quad	0x3fe67c3504c48adf              # double 0.70266200000000001
	.quad	0x3fdf8da7f3cf7015              # double 0.49302099999999999
	.quad	0x3fb9ebd9018e7579              # double 0.101255
	.quad	0x3fb16249a133c1ce              # double 0.067905999999999994
	.quad	0x3fe8f0fe047d3d43              # double 0.77941800000000006
	.quad	0x3fc1dfd2630ec311              # double 0.13964299999999999
	.quad	0x3fd2626f60e0eb68              # double 0.28725800000000001
	.quad	0x3fec330f8c64fdb1              # double 0.88123300000000004
	.quad	0x3fe0f8982cb20fb2              # double 0.53034599999999998
	.quad	0x3fec0b220791c4b9              # double 0.876359
	.quad	0x3fb0945f9df548ed              # double 0.064764000000000002
	.quad	0x3fef1769a91105e2              # double 0.97160800000000003
	.quad	0x3fe055ed06fef7c2              # double 0.51048899999999997
	.quad	0x3fe619a415f45e0b              # double 0.69062999999999997
	.quad	0x3fe5e40852b4d8ba              # double 0.68408599999999997
	.quad	0x3fd582cf52b90a78              # double 0.33610899999999999
	.quad	0x3fd12f09d8c6d613              # double 0.26849600000000001
	.quad	0x3fd08e368f084620              # double 0.25868000000000002
	.quad	0x3fececc814d7279a              # double 0.90390400000000004
	.quad	0x3fe4811904b3c3e7              # double 0.64075899999999997
	.quad	0x3fdbe0ac7da1ec4e              # double 0.43558799999999998
	.quad	0x3fdbf6d330941c82              # double 0.43694
	.quad	0x3fd73c9eecbfb15b              # double 0.36307499999999998
	.quad	0x3fea7b19e731d2e1              # double 0.82752700000000001
	.quad	0x3feffa80cf9e3865              # double 0.99932900000000002
	.quad	0x3feb66afcce1c582              # double 0.85628499999999996
	.quad	0x3fe9d783dff3f0fe              # double 0.807558
	.quad	0x3fe2060fe47991bc              # double 0.56323999999999996
	.quad	0x3fe276a7264a16a5              # double 0.57698400000000005
	.quad	0x3fdca3d70a3d70a4              # double 0.44750000000000001
	.quad	0x3fe5c8472c0e7bc4              # double 0.68069800000000003
	.quad	0x3febcface67d77fb              # double 0.86910100000000001
	.quad	0x3fdb949a5657fb6a              # double 0.43094500000000002
	.quad	0x3fec339192641b33              # double 0.88129500000000005
	.quad	0x3fdb591cd1c7de51              # double 0.42731400000000003
	.quad	0x3fc9e707e175d13d              # double 0.20236299999999999
	.quad	0x3fe410f301eabbcb              # double 0.62706899999999999
	.quad	0x3fc6bccf28c79f66              # double 0.17763699999999999
	.quad	0x3fb12fb19e731d2e              # double 0.067133999999999999
	.quad	0x3fdf1c3ac929aa1d              # double 0.48609799999999997
	.quad	0x3fc03f141205bc02              # double 0.12692500000000001
	.quad	0x3fe8dbf26f1dc50d              # double 0.77684900000000001
	.quad	0x3fec3b4f61672325              # double 0.88224000000000002
	.quad	0x3fe1c3efae7924af              # double 0.55516799999999999
	.quad	0x3fe4ff5a5332acfb              # double 0.65617099999999995
	.quad	0x3fee96df3f961805              # double 0.95591700000000002
	.quad	0x3fe91e731d2e0e30              # double 0.78496699999999997
	.quad	0x3fe6756861e92924              # double 0.70183200000000001
	.quad	0x3f9793dd97f62b6b              # double 0.023025
	.quad	0x3fe948beb5b2d4d4              # double 0.79012999999999999
	.quad	0x3fdbd46b26bf876a              # double 0.43484
	.quad	0x3fc3f4a1272c94b4              # double 0.15590300000000001
	.quad	0x3fe6e93e1c9b413a              # double 0.71597200000000005
	.quad	0x3fe2712c27a63737              # double 0.57631500000000002
	.quad	0x3fd9800218def417              # double 0.39843800000000001
	.quad	0x3fe4eaf46aa087ca              # double 0.65368099999999996
	.quad	0x3fe4be33acd5b680              # double 0.64821799999999996
	.quad	0x3fe5714b9cb6848c              # double 0.67008000000000001
	.quad	0x3fe2d2502eec7c95              # double 0.58817299999999995
	.quad	0x3fb9e96c3fc43b2e              # double 0.101218
	.quad	0x3fbc7ebf22c01e69              # double 0.11130900000000001
	.quad	0x3fe5cf8f8a4c1ebd              # double 0.68158700000000005
	.quad	0x3fdb054ef459d990              # double 0.42219899999999999
	.quad	0x3fc4209246bf0132              # double 0.15724399999999999
	.quad	0x3f9687f455a7d242              # double 0.022003000000000002
	.quad	0x3fd8f2dc2b0ea183              # double 0.38982299999999998
	.quad	0x3fdee963dc486ad3              # double 0.48299500000000001
	.quad	0x3fec5bb7b6bb1290              # double 0.88619599999999998
	.quad	0x3fa4bd33d29563aa              # double 0.040506
	.quad	0x3fae5710880d801b              # double 0.059257999999999998
	.quad	0x3fde686a4ca4f441              # double 0.47512300000000002
	.quad	0x3fe76ea854477ff1              # double 0.73225799999999996
	.quad	0x3fc30d51f81a5871              # double 0.148844
	.quad	0x3feef587d6f97679              # double 0.96747199999999999
	.quad	0x3fe3c5c5718eb895              # double 0.617892
	.quad	0x3fea950763a19008              # double 0.83069199999999999
	.quad	0x3fe9736262cba733              # double 0.79533500000000001
	.quad	0x3fb3882278d0cc36              # double 0.076296000000000003
	.quad	0x3fdcdf761cbccf29              # double 0.45113900000000001
	.quad	0x3fa89203a322af57              # double 0.047988999999999997
	.quad	0x3fb98c2a454de7ea              # double 0.099794999999999994
	.quad	0x3fddea35935fc3b5              # double 0.46742
	.quad	0x3fb3f7ced916872b              # double 0.078
	.quad	0x3fc568be2f7b17ce              # double 0.16725899999999999
	.quad	0x3fdca4b124d099e1              # double 0.44755200000000001
	.quad	0x3fea45260f5e41d5              # double 0.82094100000000003
	.quad	0x3faa48d7e02645e5              # double 0.051337000000000001
	.quad	0x3fd135daad601ffb              # double 0.26891199999999998
	.quad	0x3fc001de26916441              # double 0.125057
	.quad	0x3fbbafc8b0079a28              # double 0.108151
	.quad	0x3fd22d490e66cb10              # double 0.28401399999999999
	.quad	0x3fee1e3a7daa4fca              # double 0.94118999999999997
	.quad	0x3feb8726d04e618d              # double 0.86024800000000001
	.quad	0x3fed0d6f544bb1af              # double 0.90788999999999997
	.quad	0x3fba28027d88c1db              # double 0.102173
	.quad	0x3fc5d4b6a619da9d              # double 0.17055400000000001
	.quad	0x3fef5ca6ca03c4b1              # double 0.98006000000000004
	.quad	0x3fc041f644955b46              # double 0.12701299999999999
	.quad	0x3feb0b4395810625              # double 0.84512500000000002
	.quad	0x3fca70da5daf07c0              # double 0.206569
	.quad	0x3fa8b0f27bb2fec5              # double 0.048224999999999997
	.quad	0x3fddfb480a5accd5              # double 0.46846199999999999
	.quad	0x3fe33ae685db76b4              # double 0.60094000000000003
	.quad	0x3fe6d6777079e59f              # double 0.71367999999999998
	.quad	0x3fdb9baa1511dffc              # double 0.43137599999999998
	.quad	0x3fda397dd00f776c              # double 0.40975899999999998
	.quad	0x3fa229a5ebb7739f              # double 0.035473999999999999
	.quad	0x3f9fbf401c4fc1df              # double 0.031002999999999999
	.quad	0x3fe82465a57646ae              # double 0.75444299999999997
	.quad	0x3fe2bba775fb2ee0              # double 0.58540700000000001
	.quad	0x3fc080d801b43526              # double 0.12893199999999999
	.quad	0x3fcd56b873797460              # double 0.229209
	.quad	0x3fee2c881e4712e4              # double 0.94293599999999999
	.quad	0x3fde743201040bfe              # double 0.47584199999999999
	.quad	0x3fd387a8d64d7f0f              # double 0.30515500000000001
	.quad	0x3fefc7b890d5a5b9              # double 0.99312999999999995
	.quad	0x3fb40f776c4827b7              # double 0.078361
	.quad	0x3fe18bae89eba6ad              # double 0.54830100000000004
	.quad	0x3fec9a3f4666ec9e              # double 0.89382899999999998
	.quad	0x3fa6503fb3743633              # double 0.043581000000000002
	.quad	0x3fd001b003686a4d              # double 0.25010300000000002
	.quad	0x3fdba326e115592e              # double 0.43183300000000002
	.quad	0x3fecfe0ac7da1ec5              # double 0.90601100000000001
	.quad	0x3fddea28fe260b2d              # double 0.46741700000000003
	.quad	0x3fa3e89a88ace24c              # double 0.038884000000000002
	.quad	0x3fe272e8c0485a0c              # double 0.57652700000000001
	.quad	0x3fd7bd273d5bab22              # double 0.37092000000000003
	.quad	0x3fe00ca1cef240fb              # double 0.50154200000000004
	.quad	0x3fcd635e74299d88              # double 0.22959499999999999
	.quad	0x3fcae90364388ebd              # double 0.21023600000000001
	.quad	0x3fe58383ad9f0a1c              # double 0.67230400000000001
	.quad	0x3f6c0a8d21bc126a              # double 0.0034229999999999998
	.quad	0x3f90f6f08cc575c0              # double 0.016566999999999998
	.quad	0x3fd7ed916872b021              # double 0.37387500000000001
	.quad	0x3fda5ae1cde5d181              # double 0.41179700000000002
	.quad	0x3f89cf9a06a6e32e              # double 0.012603
	.quad	0x3fdd0a45d41fa765              # double 0.45375199999999999
	.quad	0x3fe42c68a936c58f              # double 0.63042100000000001
	.quad	0x3fede2888b545c79              # double 0.93390300000000004
	.quad	0x3fd496030c23fab1              # double 0.321656
	.quad	0x3fe8929ed3953dea              # double 0.76789799999999997
	.quad	0x3fea9873ffac1d2a              # double 0.83111000000000002
	.quad	0x3fe3ccf28c79f666              # double 0.61876799999999998
	.quad	0x3fee484f8f8a4c1f              # double 0.94632700000000003
	.quad	0x3fc873de1e2de871              # double 0.19103600000000001
	.quad	0x3fba90bc7b45f17c              # double 0.103771
	.quad	0x3f7e4d5d80e496ee              # double 0.0073980000000000001
	.quad	0x3fdb2dba4d6e47dc              # double 0.42466599999999999
	.quad	0x3fde46d3f9e7b80b              # double 0.47307300000000002
	.quad	0x3fd10f0a5efe9318              # double 0.26654299999999997
	.quad	0x3fd2ae924f227d03              # double 0.29190500000000003
	.quad	0x3fb5ca18bd66277c              # double 0.085114999999999996
	.quad	0x3fdb1ca7d6733ebc              # double 0.423624
	.quad	0x3fdc30f062d40aaf              # double 0.44048700000000002
	.quad	0x3fe34199fe43675e              # double 0.60175800000000002
	.quad	0x3fe8302b40f66a55              # double 0.75588
	.quad	0x3fea1c49774256bd              # double 0.81595300000000004
	.quad	0x3fefc59103c8e25d              # double 0.99286700000000005
	.quad	0x3fda3111f0c34c1b              # double 0.40924500000000003
	.quad	0x3fe40cb07d0aed9a              # double 0.62654900000000002
	.quad	0x3feee4a16a487336              # double 0.96540899999999996
	.quad	0x3fd089b0ee49f517              # double 0.25840400000000002
	.quad	0x3faad106ee30caa3              # double 0.052375999999999999
	.quad	0x3fdda322af577100              # double 0.46308199999999999
	.quad	0x3feafdc7abfb9bed              # double 0.84347899999999998
	.quad	0x3feb8f98fa376923              # double 0.86127900000000002
	.quad	0x3fc8eddce7cd0353              # double 0.19475899999999999
	.quad	0x3fe5d5d1c3ac929b              # double 0.68235100000000004
	.quad	0x3fd560a2014727dd              # double 0.33402300000000001
	.quad	0x3fe19dd5d3dc8b87              # double 0.55051700000000003
	.quad	0x3fbcd64d7f0ed3d8              # double 0.112645
	.quad	0x3fc113d74d594f27              # double 0.13341800000000001
	.quad	0x3feb2f9ebe9c8861              # double 0.84956299999999996
	.quad	0x3fde533f42352eb6              # double 0.473831
	.quad	0x3fec743a647fdc59              # double 0.88918799999999998
	.quad	0x3fdce5e2478854ce              # double 0.45153100000000002
	.quad	0x3fce92253111f0c3              # double 0.23883499999999999
	.quad	0x3fae3cd9a52263d8              # double 0.059057999999999999
	.quad	0x3f94a7f8012dfd69              # double 0.020171999999999999
	.quad	0x3fec3fd50225742e              # double 0.88279200000000002
	.quad	0x3fe6f0bae89eba6b              # double 0.71688600000000002
	.quad	0x3fe5017763e4abe7              # double 0.65642900000000004
	.quad	0x3fea2038194c0160              # double 0.81643299999999996
	.quad	0x3fed994185058dde              # double 0.92495799999999995
	.quad	0x3fe952dcb1465e89              # double 0.79136499999999999
	.quad	0x3fee109289dadfb5              # double 0.939523
	.quad	0x3fe7c0d4dc65c704              # double 0.74228899999999998
	.quad	0x3fe3138fffbce421              # double 0.59613799999999995
	.quad	0x3fea50e560418937              # double 0.82237499999999997
	.quad	0x3fa86594af4f0d84              # double 0.047649999999999998
	.quad	0x3fc0955b4677b396              # double 0.12955800000000001
	.quad	0x3fe505e3da2f8bdf              # double 0.65696900000000003
	.quad	0x3fca5af6c69b5a64              # double 0.205901
	.quad	0x3fe5311e85fd04a3              # double 0.662246
	.quad	0x3fa3e5b8561d4307              # double 0.038862000000000001
	.quad	0x3fcc7ad080b673c5              # double 0.222498
	.quad	0x3fd5f00abf76a2f5              # double 0.34277600000000003
	.quad	0x3feb2d4f5903a754              # double 0.84928099999999995
	.quad	0x3fe293836a832b99              # double 0.580507
	.quad	0x3fc4b4202d9cf13d              # double 0.161747
	.quad	0x3fb7d102bc72e276              # double 0.093033000000000004
	.quad	0x3fe4736694898f60              # double 0.63908699999999996
	.quad	0x3fc8292817763e4b              # double 0.18875600000000001
	.quad	0x3fe1f748a159817c              # double 0.56143600000000005
	.quad	0x3fbea6f3f52fc265              # double 0.11973499999999999
	.quad	0x3fe9ab4b72c5197a              # double 0.80215999999999998
	.quad	0x3f9705425f202108              # double 0.022481000000000001
	.quad	0x3fe2ec11a11233df              # double 0.59131699999999998
	.quad	0x3fe9e6b8305d95dd              # double 0.80941399999999997
	.quad	0x3fdd975afaf85943              # double 0.46236300000000002
	.quad	0x3fe1b369b9d7fd82              # double 0.55315099999999995
	.quad	0x3fe7d1b2e59af9ec              # double 0.74434800000000001
	.quad	0x3fe7d78e5c4eb570              # double 0.74506300000000003
	.quad	0x3fd31f79420b3d4b              # double 0.29879600000000001
	.quad	0x3fc6b5fe542e557e              # double 0.177429
	.quad	0x3fe8d2391d57ff9b              # double 0.77566199999999996
	.quad	0x3fd80ae1049235f8              # double 0.375664
	.quad	0x3febf9873ffac1d3              # double 0.87421000000000004
	.quad	0x3febb23dd54da4cf              # double 0.86550800000000006
	.quad	0x3fcf372a38b8ae32              # double 0.243871
	.quad	0x3fcde718a86d71f3              # double 0.23361499999999999
	.quad	0x3fddb8bac710cb29              # double 0.46439999999999998
	.quad	0x3fe57e73a365cb36              # double 0.67168600000000001
	.quad	0x3fdbb18116ebd4d0              # double 0.43270900000000001
	.quad	0x3f88194c01605250              # double 0.011767
	.quad	0x3fa7924af0bf1a5d              # double 0.046038000000000003
	.quad	0x3fb0f733a8a3f898              # double 0.066271999999999998
	.quad	0x3fba004b7f5a5333              # double 0.101567
	.quad	0x3fca4e69f05ea24d              # double 0.20551800000000001
	.quad	0x3fd86138fffbce42              # double 0.38093399999999999
	.quad	0x3fe1af6c69b5a640              # double 0.55266400000000004
	.quad	0x3fbd733226c3b928              # double 0.115039
	.quad	0x3fd06c7219220ff5              # double 0.25661899999999999
	.quad	0x3fd189f83be6601c              # double 0.27404600000000001
	.quad	0x3fd87bb73083558a              # double 0.38255099999999997
	.quad	0x3fd2744b2b777d0f              # double 0.28834799999999999
	.quad	0x3fe3c5bd0e12e83a              # double 0.61788799999999999
	.quad	0x3fe8961c36976bc2              # double 0.76832400000000001
	.quad	0x3fe7ba797891e215              # double 0.74151299999999998
	.quad	0x3fedb1cc96462802              # double 0.92795399999999995
	.quad	0x3fd1f30a4e379b78              # double 0.28045900000000001
	.quad	0x3fcdaeddce7cd035              # double 0.23189899999999999
	.quad	0x3fdb00a393ee5eee              # double 0.42191400000000001
	.quad	0x3fcde84f09528f19              # double 0.233652
	.quad	0x3fec7ea1c68ec52a              # double 0.89045799999999997
	.quad	0x3fb2e297396d0918              # double 0.073770000000000002
	.quad	0x3fd9a8650e779208              # double 0.40090300000000001
	.quad	0x3fa9abb01c92ddbe              # double 0.050138000000000002
	.quad	0x3fcd55ac03ff6901              # double 0.22917699999999999
	.quad	0x3fe07212d77318fc              # double 0.51392499999999997
	.quad	0x3fc1a7221858bc5a              # double 0.13791300000000001
	.quad	0x3fec097c80841ede              # double 0.87615799999999999
	.quad	0x3fe80ba83f4eca68              # double 0.75142299999999995
	.quad	0x3fda70e6f2e8c048              # double 0.41314099999999998
	.quad	0x3fd5fa54c5543287              # double 0.34340399999999999
	.quad	0x3febdc4eb56fb8f5              # double 0.87064299999999994
	.quad	0x3fdff633ce63a5c2              # double 0.49940200000000001
	.quad	0x3fe82684cf0739b0              # double 0.75470199999999998
	.quad	0x3fd1cccccccccccd              # double 0.27812500000000001
	.quad	0x3fd01d19157abb88              # double 0.251776
	.quad	0x3fa4d78c436fc159              # double 0.040707
	.quad	0x3fe436b4c7f34938              # double 0.63167799999999996
	.quad	0x3fea5421c044284e              # double 0.82277
	.quad	0x3fd53d35eb7457c1              # double 0.33186100000000002
	.quad	0x3fef3ecaab8a5ce6              # double 0.97641500000000003
	.quad	0x3fe8d796bfca85cb              # double 0.77631700000000003
	.quad	0x3f7234eb9a176ddb              # double 0.0044450000000000002
	.quad	0x3fbeb6390c9107fb              # double 0.11996800000000001
	.quad	0x3fe00333fc86cebc              # double 0.50039100000000003
	.quad	0x3fde909f1f14983d              # double 0.47757699999999997
	.quad	0x3fe4c78854cdb7ae              # double 0.64935699999999996
	.quad	0x3fc140d4dc65c704              # double 0.13479099999999999
	.quad	0x3fcee5d5b24e9c45              # double 0.24138899999999999
	.quad	0x3fec9a0cf1800a7c              # double 0.89380499999999996
	.quad	0x3fea08aac96cc5fc              # double 0.813558
	.quad	0x3fe8ff10ecb74de0              # double 0.78113600000000005
	.quad	0x3fe6e379b77c02b0              # double 0.71526800000000001
	.quad	0x3fd1e6687f455a7d              # double 0.27968799999999999
	.quad	0x3fe8cd530489d27c              # double 0.77506399999999997
	.quad	0x3fd91593e5fb71fc              # double 0.39194200000000001
	.quad	0x3fee0ecfa69be09c              # double 0.93930800000000003
	.quad	0x3fb37318fc504817              # double 0.075975000000000001
	.quad	0x3fc1a57646ae3a3b              # double 0.13786200000000001
	.quad	0x3fde78af3e468cac              # double 0.47611599999999998
	.quad	0x3fe2211cb039ef0f              # double 0.56654199999999999
	.quad	0x3fcc060fe47991bc              # double 0.21893499999999999
	.quad	0x3fe01641f644955b              # double 0.50271699999999997
	.quad	0x3fd503211cb039ef              # double 0.328316
	.quad	0x3fe820dfdef8487c              # double 0.75401300000000004
	.quad	0x3fd31fbc5de9c023              # double 0.29881200000000002
	.quad	0x3fedc628027d88c2              # double 0.93043900000000002
	.quad	0x3fef9adea897635e              # double 0.98765499999999995
	.quad	0x3fc565881a1554fc              # double 0.167161
	.quad	0x3fc06f60e0eb67c3              # double 0.12839900000000001
	.quad	0x3feb2bba98eda22f              # double 0.84908799999999995
	.quad	0x3fe8ddd6e04c0592              # double 0.77707999999999999
	.quad	0x3fc00e6299524bfd              # double 0.12543899999999999
	.quad	0x3fd60b178b370047              # double 0.34442699999999998
	.quad	0x3fc9420b3d4ae42a              # double 0.197328
	.quad	0x3fe32615a8deb0fb              # double 0.59839900000000001
	.quad	0x3fd21569f4906035              # double 0.282557
	.quad	0x3feb423fab10ba62              # double 0.85183699999999996
	.quad	0x3fe8df58c08b75ea              # double 0.77726399999999995
	.quad	0x3fd5c92ddbdb5d89              # double 0.34040399999999998
	.quad	0x3fefd199bb2788db              # double 0.99433599999999999
	.quad	0x3fdb77b395c42203              # double 0.42918099999999998
	.quad	0x3fe0bce2089e3433              # double 0.52305699999999999
	.quad	0x3fe147325918a00a              # double 0.539941
	.quad	0x3fe71e90795f676f              # double 0.72248100000000004
	.quad	0x3fe493404ea4a8c1              # double 0.64297499999999996
	.quad	0x3fb1479d4d834092              # double 0.067499000000000003
	.quad	0x3fd6fe0ce0b912dc              # double 0.35925600000000002
	.quad	0x3febe9d94d0dcfcc              # double 0.87229599999999996
	.quad	0x3fe1b5c7cd898b2f              # double 0.55344000000000004
	.quad	0x3feb3201040bfe3b              # double 0.849854
	.quad	0x3feeed373affb04f              # double 0.96645700000000001
	.quad	0x3fd646887a8d64d8              # double 0.348055
	.quad	0x3fe9520f2becedd5              # double 0.79126700000000005
	.quad	0x3fea7d6b65a9a805              # double 0.82781000000000005
	.quad	0x3fdd220bc382a130              # double 0.45520300000000002
	.quad	0x3fd058c4bd33d295              # double 0.25541799999999998
	.quad	0x3fa525460aa64c30              # double 0.041300000000000003
	.quad	0x3fe41b2c40d0aaa8              # double 0.62831700000000001
	.quad	0x3fdc9f559b3d07c8              # double 0.44722499999999998
	.quad	0x3fd9a41a261bf37c              # double 0.40064100000000002
	.quad	0x3fe1439799e518f4              # double 0.53950100000000001
	.quad	0x3fdad23d4f15e7c9              # double 0.41908200000000001
	.quad	0x3fee97df19d66adb              # double 0.95603899999999997
	.quad	0x3fe5c12f09d8c6d6              # double 0.67983199999999999
	.quad	0x3fd774b838c111ae              # double 0.36649900000000002
	.quad	0x3fedbd72bcb5fe54              # double 0.92937599999999997
	.quad	0x3fe4fb3fa6defc7a              # double 0.65566999999999998
	.quad	0x3fe7a60f5e41d4b7              # double 0.73902100000000004
	.quad	0x3fcd5bccaf709b74              # double 0.22936400000000001
	.quad	0x3fdc19e731d2e0e3              # double 0.439081
	.quad	0x3fc6d045fe111277              # double 0.178231
	.quad	0x3fdd8c0053e2d624              # double 0.46167000000000002
	.quad	0x3fe9609784ec636b              # double 0.793041
	.quad	0x3f6c5c5718eb8950              # double 0.0034619999999999998
	.quad	0x3fe83d5dc4007571              # double 0.75749100000000003
	.quad	0x3fecdc0980b24207              # double 0.90185999999999999
	.quad	0x3fda752977c88e7a              # double 0.41340100000000002
	.quad	0x3fe8f36ef8055fbb              # double 0.77971599999999996
	.quad	0x3fce10f0e90bc7b4              # double 0.23489199999999999
	.quad	0x3fee72ba9d1f6018              # double 0.95150500000000004
	.quad	0x3fd858fb43d89ce5              # double 0.38043100000000002
	.quad	0x3fe51146e4c0df59              # double 0.65835900000000003
	.quad	0x3fd63b645a1cac08              # double 0.34737499999999999
	.quad	0x3fd4a92e62131a8f              # double 0.322826
	.quad	0x3fdd138bcdfefbf4              # double 0.454318
	.quad	0x3fcaeea63b688bdb              # double 0.21040800000000001
	.quad	0x3fe2c84b5dcc63f1              # double 0.58694999999999997
	.quad	0x3fcbabda0dfdef85              # double 0.21618200000000001
	.quad	0x3fcaf3e468cac4b5              # double 0.21056800000000001
	.quad	0x3fd2173b85e80bed              # double 0.28266799999999997
	.quad	0x3feb058ff7596851              # double 0.84442899999999999
	.quad	0x3fbb6d22424a276b              # double 0.10713399999999999
	.quad	0x3fe4b5f5f0b28523              # double 0.64721200000000001
	.quad	0x3f9082491afc04c9              # double 0.016122000000000001
	.quad	0x3fcd4ec204f2ae08              # double 0.228966
	.quad	0x3fecdaa2e3c536d6              # double 0.90168899999999996
	.quad	0x3fc0d6d3b6cbd988              # double 0.13155600000000001
	.quad	0x3fe0cdb163baba7c              # double 0.52510900000000005
	.quad	0x3fd017a02fb5d031              # double 0.251442
	.quad	0x3fd1d887ebf22c02              # double 0.27884100000000001
	.quad	0x3fef67f6f4be835e              # double 0.98144100000000001
	.quad	0x3fd92af1455219a8              # double 0.39324599999999998
	.quad	0x3fdf67ec7863beec              # double 0.49071799999999999
	.quad	0x3fec223bff8a8f3b              # double 0.87917900000000004
	.quad	0x3fc8a22b3892ee85              # double 0.19244900000000001
	.quad	0x3fc9cad9ad85dfa8              # double 0.20150299999999999
	.quad	0x3fee12923e5b8562              # double 0.93976700000000002
	.quad	0x3fd1ccff21b3aeef              # double 0.27813700000000002
	.quad	0x3f7a93293d102bc7              # double 0.0064879999999999998
	.quad	0x3fe86a0ba1f4b1ee              # double 0.76294499999999998
	.quad	0x3fe2b3bd9cae2110              # double 0.58444099999999999
	.quad	0x3fbf1af3a14cec42              # double 0.121505
	.quad	0x3fd17e0ef99806f2              # double 0.27331899999999998
	.quad	0x3fe7850df15a4acf              # double 0.73499199999999998
	.quad	0x3f9d549731098d47              # double 0.028642999999999998
	.quad	0x3fd5465e89225311              # double 0.33241999999999999
	.quad	0x3fe2a0a30db6a1e8              # double 0.58210899999999999
	.quad	0x3fb18f1d3ed527e5              # double 0.068589999999999998
	.quad	0x3fc32df505d0fa59              # double 0.14984
	.quad	0x3fe232fa93af74cd              # double 0.56872299999999998
	.quad	0x3f7fa658c4bd33d3              # double 0.0077270000000000004
	.quad	0x3fefea52ef911cf3              # double 0.99735399999999996
	.quad	0x3f52f4cf4a558ea8              # double 0.001157
	.quad	0x3fd1807fed20296b              # double 0.27346799999999999
	.quad	0x3fe83b0813cab820              # double 0.75720600000000004
	.quad	0x3fac4dca8e2e2b8c              # double 0.055280999999999997
	.quad	0x3fed78f041461b6d              # double 0.92101299999999997
	.quad	0x3fe5b8023a6ce358              # double 0.67871199999999998
	.quad	0x3fc97878b7a1c25d              # double 0.198989
	.quad	0x3fe6cc8366516db1              # double 0.71246500000000001
	.quad	0x3fe516ebd4cfd08d              # double 0.65904799999999997
	.quad	0x3fd7045fe1112770              # double 0.35964200000000002
	.quad	0x3fdca8ef77f27fe5              # double 0.44781100000000001
	.quad	0x3fceb3892ee84ad8              # double 0.23985400000000001
	.quad	0x3fd88c7e28240b78              # double 0.383575
	.quad	0x3fe747f13059641f              # double 0.72753199999999996
	.quad	0x3feb7db4cc250721              # double 0.85909500000000005
	.quad	0x3f910e8858ff7597              # double 0.016657000000000002
	.quad	0x3fe4adcf4623d0c0              # double 0.64621700000000004
	.quad	0x3fe89014b599aa61              # double 0.76758800000000005
	.quad	0x3feefea3df6db941              # double 0.968584
	.quad	0x3feb4083126e978d              # double 0.85162499999999997
	.quad	0x3fef00cb6c7a7c9e              # double 0.96884700000000001
	.quad	0x3fd304c48adeebb3              # double 0.29716599999999999
	.quad	0x3fc9a0e8427418d7              # double 0.20022300000000001
	.quad	0x3fe0cdec1c1d6cf8              # double 0.52513699999999996
	.quad	0x3fe48811b1d92b80              # double 0.64161000000000001
	.quad	0x3fec01f31f46ed24              # double 0.87523799999999996
	.quad	0x3fdbfcbd556084a5              # double 0.437301
	.quad	0x3fcc67168f8e7ddd              # double 0.22189600000000001
	.quad	0x3fed61cffeb074a7              # double 0.91818999999999995
	.quad	0x3fd696a6a012599f              # double 0.35294500000000001
	.quad	0x3fe79f2ba9d1f601              # double 0.73817999999999995
	.quad	0x3fe046da4484944f              # double 0.50864900000000002
	.quad	0x3fc4f6be37de939f              # double 0.16378000000000001
	.quad	0x3fe0d132f87ad081              # double 0.52553700000000003
	.quad	0x3fe8cfe36d22424a              # double 0.77537699999999998
	.quad	0x3fe9602ea960b6fa              # double 0.792991
	.quad	0x3fdc03f2d3c792d1              # double 0.43774099999999999
	.quad	0x3fd367620ee8d10f              # double 0.30318499999999998
	.quad	0x3fa2c36544fe36d2              # double 0.036646999999999999
	.quad	0x3fe983d35eb7457c              # double 0.79734199999999999
	.quad	0x3fe9d4738a3b57c5              # double 0.80718400000000001
	.quad	0x3fef1105e1c15098              # double 0.97082800000000002
	.quad	0x3fc834fc610f0e91              # double 0.18911700000000001
	.quad	0x3fe6e787ce95faa9              # double 0.71576300000000004
	.quad	0x3fe14d7060bb2bbb              # double 0.54070300000000004
	.quad	0x3fdc17dae81882ae              # double 0.43895600000000001
	.quad	0x3fb5a027525460aa              # double 0.084474999999999994
	.quad	0x3fdf9bf5946c332f              # double 0.493894
	.quad	0x3fd95c1c6088d6d4              # double 0.39624700000000002
	.quad	0x3fc1d50a88effe2a              # double 0.13931399999999999
	.quad	0x3fed6527a20578e6              # double 0.91859800000000003
	.quad	0x3fe07dc37a3db3c0              # double 0.51535200000000003
	.quad	0x3fee64abe6a337a8              # double 0.94978899999999999
	.quad	0x3fedaca36199780c              # double 0.92732400000000003
	.quad	0x3fd316e7a311e860              # double 0.29827300000000001
	.quad	0x3fecaac53b0813cb              # double 0.89584600000000003
	.quad	0x3fe64ca0c282c6ef              # double 0.69685399999999997
	.quad	0x3fda383ad9f0a1be              # double 0.40968199999999999
	.quad	0x3fd02dbe7f2c300a              # double 0.25279200000000002
	.quad	0x3fde17268d32830a              # double 0.470163
	.quad	0x3fb31df761cbccf3              # double 0.074676000000000006
	.quad	0x3fcb7cb2d905c033              # double 0.21474299999999999
	.quad	0x3fefa7aa68f4b620              # double 0.98921700000000001
	.quad	0x3fb5c0767d34df05              # double 0.084968000000000002
	.quad	0x3fe4c61b6d43d039              # double 0.64918299999999995
	.quad	0x3feaf0ef566490a3              # double 0.84191099999999996
	.quad	0x3fead4280ae10492              # double 0.83839799999999998
	.quad	0x3fd45a3a08398a65              # double 0.31800699999999998
	.quad	0x3fd8c804102ff8ec              # double 0.387208
	.quad	0x3fd1800eae18ac9f              # double 0.27344099999999999
	.quad	0x3fd74156e264e486              # double 0.36336299999999999
	.quad	0x3fe3adc0980b2420              # double 0.61495999999999995
	.quad	0x3febcbaf965b20b8              # double 0.868614
	.quad	0x3feb729d40ee06d9              # double 0.85774099999999998
	.quad	0x3fec28a82a5614e0              # double 0.87996300000000005
	.quad	0x3fd272862f5989df              # double 0.28824
	.quad	0x3feadd1c3ac929aa              # double 0.83949099999999999
	.quad	0x3fd095b35b0bbf51              # double 0.25913700000000001
	.quad	0x3fdbbd7f51efb6dd              # double 0.43344100000000002
	.quad	0x3fe03dad7518b0d1              # double 0.50752900000000001
	.quad	0x3fe1b265add9c27f              # double 0.55302700000000005
	.quad	0x3fe08dbcec84f8f9              # double 0.51730200000000004
	.quad	0x3fe38fecdd0d8cb0              # double 0.61131899999999995
	.quad	0x3fe4077036c9c0a9              # double 0.62590800000000002
	.quad	0x3fe342480e8c8abd              # double 0.60184099999999996
	.quad	0x3fe9de0f7fcfc3f8              # double 0.80835699999999999
	.quad	0x3fe79ec2ce464990              # double 0.73812999999999995
	.quad	0x3fdfc00da1a93294              # double 0.49609700000000001
	.quad	0x3fe6288effe2a3cf              # double 0.69245100000000004
	.quad	0x3fa15a6c5d206c87              # double 0.033893
	.quad	0x3fbda09cc319c5a4              # double 0.115732
	.quad	0x3fee34dcebfec13c              # double 0.94395300000000004
	.quad	0x3fed00d5e8d54110              # double 0.90635200000000005
	.quad	0x3fb920d130df9bdc              # double 0.098156999999999994
	.quad	0x3fefd00d5e8d5411              # double 0.994147
	.quad	0x3fed108c3f3e0371              # double 0.90827000000000002
	.quad	0x3fe23af31b152f3c              # double 0.56969599999999998
	.quad	0x3fd3af3e468cac4b              # double 0.30757099999999998
	.quad	0x3fb51b823c85c24c              # double 0.082450999999999997
	.quad	0x3fdf1450efdc9c4e              # double 0.48561500000000002
	.quad	0x3fdf16440f238972              # double 0.485734
	.quad	0x3fd8db0dd82fd75e              # double 0.38836999999999999
	.quad	0x3f50adcd2d44dca9              # double 0.001018
	.quad	0x3fceb3edd8b60f1b              # double 0.239866
	.quad	0x3fe6f4f50a02b841              # double 0.71740199999999998
	.quad	0x3f984ad794a6eb92              # double 0.023723000000000001
	.quad	0x3fdb4bdba0a52696              # double 0.42650500000000002
	.quad	0x3fe8145308bb9064              # double 0.75248099999999995
	.quad	0x3fc7892684cf073a              # double 0.18387300000000001
	.quad	0x3fd2b7fe08aefb2b              # double 0.29248000000000002
	.quad	0x3fd1fcf80dc33722              # double 0.28106500000000001
	.quad	0x3fec08c1db0142f6              # double 0.87606899999999999
	.quad	0x3fd4ef9db22d0e56              # double 0.327125
	.quad	0x3fe7575e2046c765              # double 0.72941500000000004
	.quad	0x3fb054152b0a6fc6              # double 0.063783000000000006
	.quad	0x3fe2512cadddf43c              # double 0.57240899999999995
	.quad	0x3feb38a5ce5b4246              # double 0.850665
	.quad	0x3fa6d4a1ad6451b9              # double 0.044590999999999999
	.quad	0x3fe6ebbba55d1c3b              # double 0.71627600000000002
	.quad	0x3fcbbcba30121683              # double 0.216697
	.quad	0x3fe23d512ec6bce8              # double 0.56998499999999996
	.quad	0x3fc7579af1886df8              # double 0.182361
	.quad	0x3fec98f605ab3aac              # double 0.89367200000000002
	.quad	0x3fcecd9620685554              # double 0.240649
	.quad	0x3fd0281fd9ba1b19              # double 0.25244899999999998
	.quad	0x3fecf03d145d8516              # double 0.90432599999999996
	.quad	0x3fd6d3cff64cf8d7              # double 0.356678
	.quad	0x3fd7147f13059642              # double 0.360626
	.quad	0x3fd8a08bfc2224ee              # double 0.384799
	.quad	0x3fe813879c4113c7              # double 0.75238400000000005
	.quad	0x3feccd0fe8ab4fa5              # double 0.90003200000000005
	.quad	0x3fd5b6d86ec17ebb              # double 0.339285
	.quad	0x3feb06c6583e8577              # double 0.84457700000000002
	.quad	0x3fef492ff4ba51a0              # double 0.97768399999999999
	.quad	0x3fe5c8bc9cd3e0bd              # double 0.68075399999999997
	.quad	0x3fee792f2b66b617              # double 0.95229299999999995
	.quad	0x3fcf6577531db446              # double 0.245284
	.quad	0x3fe9dc6e2a80064b              # double 0.80815800000000004
	.quad	0x3fd60b0af5fd47bf              # double 0.34442400000000001
	.quad	0x3fb34cf4a558ea7d              # double 0.075393000000000002
	.quad	0x3feaf4d37c1376d5              # double 0.84238599999999997
	.quad	0x3fd8463497b7414a              # double 0.37928499999999998
	.quad	0x3fe3a19eb6390c91              # double 0.613479
	.quad	0x3fda53e2d6238da4              # double 0.41137000000000001
	.quad	0x3fab25d4a5df223a              # double 0.053023000000000001
	.quad	0x3fd6b7dc7abfb9bf              # double 0.35497200000000001
	.quad	0x3fee37c5692b3cc5              # double 0.94430800000000004
	.quad	0x3f9da98676a7264a              # double 0.028967
	.quad	0x3fddfaa044ae85ba              # double 0.46842200000000001
	.quad	0x3fe3446f9b994e1a              # double 0.60210399999999997
	.quad	0x3fe7362e90364389              # double 0.72536400000000001
	.quad	0x3fef74128bf3bea9              # double 0.98291899999999998
	.quad	0x3fee37ae5796bfcb              # double 0.94429700000000005
	.quad	0x3fd1504816f0068e              # double 0.27052500000000002
	.quad	0x3fcdca1059ea5721              # double 0.23272899999999999
	.quad	0x3fe8d7c6fbd273d6              # double 0.77634000000000003
	.quad	0x3fe9130be0ded289              # double 0.78357500000000002
	.quad	0x3fd445c358afc47e              # double 0.31675799999999998
	.quad	0x3fe554f5903a7547              # double 0.66662100000000002
	.quad	0x3fe5cb9ecf638002              # double 0.68110599999999999
	.quad	0x3fe7dd894812be49              # double 0.74579300000000004
	.quad	0x3fe37bacb4289119              # double 0.60884700000000003
	.quad	0x3fd0707182235b4f              # double 0.25686300000000001
	.quad	0x3fe90a4e379b77c0              # double 0.78250799999999998
	.quad	0x3fd585be1a826245              # double 0.33628799999999998
	.quad	0x3feefced916872b0              # double 0.96837499999999999
	.quad	0x3fd99d51b4fe79ee              # double 0.400227
	.quad	0x3fe46f06b37867f1              # double 0.63855300000000004
	.quad	0x3fe0fa05143bf727              # double 0.53051999999999999
	.quad	0x3fe06c460ed80a18              # double 0.51321700000000003
	.quad	0x3fdb42396073de1e              # double 0.42591699999999999
	.quad	0x3fe1804534bd76ee              # double 0.54690799999999995
	.quad	0x3fe0fce0fc2eba28              # double 0.53086900000000004
	.quad	0x3fec0f98fa376923              # double 0.87690400000000002
	.quad	0x3fed8366516db0de              # double 0.92229000000000005
	.quad	0x3fef04db9c7368ad              # double 0.96934299999999995
	.quad	0x3fc6a7c5ac471b48              # double 0.17699500000000001
	.quad	0x3fde064a9cdc4439              # double 0.469134
	.quad	0x3fd00129cbab649d              # double 0.25007099999999999
	.quad	0x3fe09fe004b7f5a5              # double 0.51951599999999998
	.quad	0x3fd035bd512ec6bd              # double 0.25328000000000001
	.quad	0x3fee27546d3f9e7c              # double 0.94230100000000005
	.quad	0x3fc1aa79bbadc098              # double 0.138015
	.quad	0x3fd9d983947496ab              # double 0.40390100000000001
	.quad	0x3fe80c8eef1bac2e              # double 0.75153300000000001
	.quad	0x3feb43e100607810              # double 0.85203600000000002
	.quad	0x3fe4241e57d9dba9              # double 0.629409
	.quad	0x3fec5338f7985272              # double 0.88515900000000003
	.quad	0x3fd32acb85a4f00f              # double 0.299487
	.quad	0x3fc462888b545c79              # double 0.15925700000000001
	.quad	0x3fcb15ce9e5e2479              # double 0.21160300000000001
	.quad	0x3f9dbf487fcb923a              # double 0.029049999999999999
	.quad	0x3f9c903ea704bc27              # double 0.027893999999999999
	.quad	0x3fe98ff540895d0b              # double 0.79882299999999995
	.quad	0x3feec98a222d5172              # double 0.96210200000000001
	.quad	0x3fe24432ca57a787              # double 0.57082500000000003
	.quad	0x3fe4a9b068123811              # double 0.64571400000000001
	.quad	0x3fdc23ee1bd1ed9e              # double 0.439693
	.quad	0x3fe4e1deacc92147              # double 0.65257200000000004
	.quad	0x3fe46e6fb4c3c18b              # double 0.63848099999999997
	.quad	0x3fe5e249a133c1ce              # double 0.68387299999999995
	.quad	0x3fe951676640a6b9              # double 0.79118699999999997
	.quad	0x3fb407357e670e2c              # double 0.078234999999999999
	.quad	0x3fe4468661ae70c1              # double 0.63360899999999998
	.quad	0x3f1de26916440f24              # double 1.1400000000000001E-4
	.quad	0x3fe8e2c98e53eb3a              # double 0.77768400000000004
	.quad	0x3f9c610f0e90bc7b              # double 0.027713999999999999
	.quad	0x3fe2d0dae3e6c4c6              # double 0.58799500000000005
	.quad	0x3fc98201cd5f99c4              # double 0.19928000000000001
	.quad	0x3fe39ccfaeff5c6c              # double 0.61289199999999999
	.quad	0x3fe82f102363b257              # double 0.755745
	.quad	0x3fe59975f2cb6417              # double 0.674983
	.quad	0x3fedd0c804102ff9              # double 0.93173600000000001
	.quad	0x3fbc5154866a11ed              # double 0.11061600000000001
	.quad	0x3fe056b65a9a8049              # double 0.51058499999999996
	.quad	0x3fd342d05f288484              # double 0.30095300000000003
	.quad	0x3fa37c3504c48adf              # double 0.038057000000000001
	.quad	0x3feafbbb62413db8              # double 0.84322900000000001
	.quad	0x3fee221858bc59b8              # double 0.94166199999999999
	.quad	0x3fb0bb3c81908e58              # double 0.065356999999999998
	.quad	0x3fe19eeaa6d26741              # double 0.55064900000000006
	.quad	0x3fa0d90e23af31b1              # double 0.032905999999999998
	.quad	0x3f7df86e3b46fdeb              # double 0.0073169999999999997
	.quad	0x3fe4972abef06b38              # double 0.64345300000000005
	.quad	0x3fe0a9fbe76c8b44              # double 0.52075000000000005
	.quad	0x3fdb3a29c779a6b5              # double 0.425425
	.quad	0x3fe243bf727136a4              # double 0.57077
	.quad	0x3fad31550ca1cef2              # double 0.057016999999999998
	.quad	0x3fdb5208e1501190              # double 0.42688199999999998
	.quad	0x3fde4f8b588e368f              # double 0.473605
	.quad	0x3fc19f3c70c996b7              # double 0.13767199999999999
	.quad	0x3fd6539b8887229f              # double 0.34885300000000002
	.quad	0x3fc53250b524399b              # double 0.165598
	.quad	0x3fb0cf6be37de93a              # double 0.065665000000000001
	.quad	0x3fe46195464dc22b              # double 0.63691200000000003
	.quad	0x3fad81cf7878b7a2              # double 0.057631000000000002
	.quad	0x3fe9b4b72c5197a2              # double 0.80330999999999997
	.quad	0x3fd92556d19dece5              # double 0.39290399999999998
	.quad	0x3fe6deb95e5aff2a              # double 0.71468799999999999
	.quad	0x3fc8efbb0e5e6794              # double 0.19481599999999999
	.quad	0x3fe46d1e108c3f3e              # double 0.63832
	.quad	0x3fe3aecaeea63b69              # double 0.61508700000000005
	.quad	0x3fcb90e23af31b15              # double 0.21535899999999999
	.quad	0x3fb1f90539fba451              # double 0.070206000000000005
	.quad	0x3fc107d912556d1a              # double 0.133052
	.quad	0x3fe4a9c779a6b50b              # double 0.64572499999999999
	.quad	0x3f85903a7546d3fa              # double 0.010529
	.quad	0x3fee354195cc857f              # double 0.94400099999999998
	.quad	0x3fcc098915bdd767              # double 0.21904100000000001
	.quad	0x3fe1849ecb31c21a              # double 0.54743900000000001
	.quad	0x3fd8d698fe69270b              # double 0.388098
	.quad	0x3fe9a600b0292817              # double 0.80151399999999995
	.quad	0x3fddc02afdda8bd2              # double 0.46485399999999999
	.quad	0x3fe5932d6ece13f5              # double 0.67421600000000004
	.quad	0x3fe424a276b7ed42              # double 0.62947200000000003
	.quad	0x3feff735c182ecaf              # double 0.998927
	.quad	0x3fe7345cfede97d0              # double 0.72514199999999995
	.quad	0x3fd5d4dc65c70436              # double 0.341117
	.quad	0x3fd874ff865d7cb3              # double 0.38214100000000001
	.quad	0x3fda9ba5e353f7cf              # double 0.41575000000000001
	.quad	0x3fd7ab8e8ea39c52              # double 0.36984600000000001
	.quad	0x3fdec88e79aae6c9              # double 0.480991
	.quad	0x3fda8b545c78a6db              # double 0.41475400000000001
	.quad	0x3fe72fb19e731d2e              # double 0.72457199999999999
	.quad	0x3fc55989df1172ef              # double 0.166795
	.quad	0x3fb384ec636b0963              # double 0.076246999999999995
	.quad	0x3fd1eeaa6d267408              # double 0.280192
	.quad	0x3f7f0b28522ea0fd              # double 0.0075789999999999998
	.quad	0x3fb5ea897635e743              # double 0.085610000000000006
	.quad	0x3fdb938151a43782              # double 0.43087799999999998
	.quad	0x3feed81f10667f91              # double 0.96388200000000001
	.quad	0x3fe7c7735c182ecb              # double 0.74309700000000001
	.quad	0x3fedbb6672fba01f              # double 0.92912600000000001
	.quad	0x3fb3bf0dc768dfbd              # double 0.077133999999999994
	.quad	0x3fe33089a0275254              # double 0.59967499999999996
	.quad	0x3fefea9c560c7c0f              # double 0.99738899999999997
	.quad	0x3fef05ee568a5050              # double 0.96947399999999995
	.quad	0x3fef28112ba16e7a              # double 0.97364099999999998
	.quad	0x3fe48e5c4eb56fb9              # double 0.642378
	.quad	0x3fef7f562174c4ce              # double 0.984294
	.quad	0x3fecf83382e44b6f              # double 0.90529800000000005
	.quad	0x3fbd44241c3efae8              # double 0.11432100000000001
	.quad	0x3feb29435ac8a372              # double 0.84878699999999996
	.quad	0x3fe741ebc83a96d5              # double 0.72679700000000003
	.quad	0x3fe0afa7221858bc              # double 0.52144199999999996
	.quad	0x3fe158afc47e49b2              # double 0.542076
	.quad	0x3fe9495bff04577e              # double 0.79020500000000005
	.quad	0x3fe85db9841aac54              # double 0.76144100000000003
	.quad	0x3fe7cafb3b752114              # double 0.74352799999999997
	.quad	0x3fd8983947496aad              # double 0.38429099999999999
	.quad	0x3f8891e215336dec              # double 0.011997000000000001
	.quad	0x3fed6ea4228997c4              # double 0.91975600000000001
	.quad	0x3fcc957cd466f502              # double 0.22331200000000001
	.quad	0x3fcc11ec918e325d              # double 0.21929699999999999
	.quad	0x3f7219a847b24639              # double 0.0044190000000000002
	.quad	0x3fc336c58eeae9ee              # double 0.15010899999999999
	.quad	0x3fe074a3400b88ca              # double 0.51423799999999997
	.quad	0x3fe3de2cdc011d36              # double 0.62087099999999995
	.quad	0x3fd4e9d0e991ff71              # double 0.32677099999999998
	.quad	0x3fd2d9f0a1be2b49              # double 0.29455199999999998
	.quad	0x3fe6616d6dc1a47b              # double 0.69939300000000004
	.quad	0x3fe3dda6a4441787              # double 0.620807
	.quad	0x3fe0e8db8bac710d              # double 0.52842500000000003
	.quad	0x3fe3856a37ac3eb8              # double 0.61003600000000002
	.quad	0x3fde12599ed7c6fc              # double 0.46987000000000001
	.quad	0x3fc883e425aee632              # double 0.191525
	.quad	0x3fed8053e2d6238e              # double 0.92191500000000004
	.quad	0x3fb94a4d2b2bfdb5              # double 0.098790000000000003
	.quad	0x3fe750acc0bdcad1              # double 0.72859799999999997
	.quad	0x3fea723cc8de2ac3              # double 0.82644499999999999
	.quad	0x3fe185814940bbb2              # double 0.54754700000000001
	.quad	0x3fe326dacabc5155              # double 0.59849300000000005
	.quad	0x3fee153586ca89fc              # double 0.94008899999999995
	.quad	0x3fef6b6bf444e0db              # double 0.98186300000000004
	.quad	0x3fee4877681669cf              # double 0.94634600000000002
	.quad	0x3fee4de19fc2a887              # double 0.94700700000000004
	.quad	0x3fd1b5cbff47735c              # double 0.27672099999999999
	.quad	0x3fcb57689ca18bd6              # double 0.21360499999999999
	.quad	0x3fe9baabcd78c437              # double 0.804037
	.quad	0x3fe2359791819d24              # double 0.56904200000000005
	.quad	0x3fd7cee9dd7ecbb8              # double 0.372004
	.quad	0x3fd5dc33721d53ce              # double 0.34156500000000001
	.quad	0x3fd8ededaec4a409              # double 0.38952199999999998
	.quad	0x3fce3497b7414a4d              # double 0.23598
	.quad	0x3fc07b45f17bd8be              # double 0.12876199999999999
	.quad	0x3fddf7446f9b994e              # double 0.46821699999999999
	.quad	0x3fecdc1615ebfa8f              # double 0.90186599999999995
	.quad	0x3fd99d0e991ff716              # double 0.40021099999999998
	.quad	0x3fdd919ef954eb14              # double 0.46201300000000001
	.quad	0x3fecde7210be9425              # double 0.90215400000000001
	.quad	0x3fd8d4b2745bf26f              # double 0.38798199999999999
	.quad	0x3fc9faa044ae85ba              # double 0.202961
	.quad	0x3fd0f86a098915be              # double 0.26516200000000001
	.quad	0x3fe9ae9680e06530              # double 0.802562
	.quad	0x3fb00ffda4052d66              # double 0.062743999999999994
	.quad	0x3fccb6390c9107fb              # double 0.22431100000000001
	.quad	0x3fedef9b994e1a3f              # double 0.93549899999999997
	.quad	0x3fd0488c60cbf2b2              # double 0.25442799999999999
	.quad	0x3fe1661ae70c1334              # double 0.54371400000000003
	.quad	0x3fec39e060fe4799              # double 0.88206499999999999
	.quad	0x3feb9c4113c68662              # double 0.86282400000000004
	.quad	0x3fdaf59ccfaeff5c              # double 0.42124099999999998
	.quad	0x3fe3f210be9424e6              # double 0.62329900000000005
	.quad	0x3fb2515ce9e5e248              # double 0.071554000000000006
	.quad	0x3fe3986fcdee34fc              # double 0.61235799999999996
	.quad	0x3fe750870110a138              # double 0.72858000000000001
	.quad	0x3feed0edc3bd5992              # double 0.96300399999999997
	.quad	0x3fab0d73860999dd              # double 0.052837000000000002
	.quad	0x3fc2411c2a023209              # double 0.14261199999999999
	.quad	0x3fc5a554b8bef8cf              # double 0.16910800000000001
	.quad	0x3fd54046412cf0fa              # double 0.33204800000000001
	.quad	0x3fa04fd2a62aa194              # double 0.031858999999999998
	.quad	0x3fe743fc43b2dd37              # double 0.72704899999999995
	.quad	0x3fb5d9b1b79d909f              # double 0.085352999999999998
	.quad	0x3feb0433d6c72192              # double 0.84426299999999999
	.quad	0x3fd26e008e9b38d6              # double 0.287964
	.quad	0x3fe145f394b7b289              # double 0.53978899999999996
	.quad	0x3fbf0270f3882279              # double 0.121131
	.quad	0x3f9e03b3e9a6f827              # double 0.029311
	.quad	0x3fe5bca9691a75cd              # double 0.67927999999999999
	.quad	0x3f6b17481b21c476              # double 0.003307
	.quad	0x3fdee81450efdc9c              # double 0.48291499999999998
	.quad	0x3fd9080b673c4f3c              # double 0.39111600000000002
	.quad	0x3fca08fa7a85015c              # double 0.203399
	.quad	0x3fec540895d0b73d              # double 0.88525799999999999
	.quad	0x3fd0c9bc77143394              # double 0.26231300000000002
	.quad	0x3fe80292817763e5              # double 0.75031400000000004
	.quad	0x3feb3f0fe047d3d4              # double 0.85144799999999998
	.quad	0x3fec5612c6ac215c              # double 0.88550700000000004
	.quad	0x3fde6950fc71d606              # double 0.47517799999999999
	.quad	0x3fdfd7dbf487fcb9              # double 0.49754999999999999
	.quad	0x3fdc2174c4cdfaca              # double 0.43954199999999999
	.quad	0x3fc93e1437c5692b              # double 0.19720699999999999
	.quad	0x3fe451c5c5718eb9              # double 0.63498200000000005
	.quad	0x3fd7c8d9f90539fc              # double 0.37163400000000002
	.quad	0x3fd5ebb7739f340d              # double 0.34251199999999998
	.quad	0x3fe5f86a098915be              # double 0.68657400000000002
	.quad	0x3fe10b1bbcf4e875              # double 0.53260600000000002
	.quad	0x3fcbdc8323358f2e              # double 0.217667
	.quad	0x3fe7eee525892685              # double 0.74791200000000002
	.quad	0x3feb2491afc04c8c              # double 0.84821400000000002
	.quad	0x3fe2f9af1886df83              # double 0.59297900000000003
	.quad	0x3fe67be121ee6751              # double 0.70262199999999997
	.quad	0x3fcaaac1094a2b9d              # double 0.20833599999999999
	.quad	0x3fd423f24d8fd5cb              # double 0.31469399999999997
	.quad	0x3fe9d87d6f976790              # double 0.80767699999999998
	.quad	0x3feee0a63305100a              # double 0.96492299999999998
	.quad	0x3fd4b6bb1290257d              # double 0.32365300000000002
	.quad	0x3fb3bea91d9b1b7a              # double 0.077128000000000002
	.quad	0x3fd47c6fbd273d5c              # double 0.32009500000000002
	.quad	0x3fdf2d490e66cb10              # double 0.48713899999999999
	.quad	0x3fb4f765fd8adaba              # double 0.0819
	.quad	0x3fd003925bb7b6bb              # double 0.250218
	.quad	0x3fee89e12a51e322              # double 0.95433100000000004
	.quad	0x3fe6f1ef30a4e37a              # double 0.71703300000000003
	.quad	0x3fcfcafb3b752114              # double 0.24838199999999999
	.quad	0x3fdd47a17f4128bf              # double 0.45749699999999999
	.quad	0x3fe82f42784a9479              # double 0.75576900000000002
	.quad	0x3fde13ec460ed80a              # double 0.46996599999999999
	.quad	0x3fd5de82d7b634db              # double 0.34170600000000001
	.quad	0x3fd7eb4a66559f6f              # double 0.37373600000000001
	.quad	0x3fc3b5b70691ea79              # double 0.15398300000000001
	.quad	0x3fc0d759ee88df37              # double 0.13157199999999999
	.quad	0x3fd6e54f7a919696              # double 0.35774600000000001
	.quad	0x3fcd2deca25529fe              # double 0.227964
	.quad	0x3fe8557de0d66f0d              # double 0.760436
	.quad	0x3fccb5cbff47735c              # double 0.224298
	.quad	0x3fd4000431bde82d              # double 0.31250099999999997
	.quad	0x3fc5b09a671ef30a              # double 0.16945199999999999
	.quad	0x3fee5dd4c76d117b              # double 0.94895399999999996
	.quad	0x3febecd29131ec0b              # double 0.87265899999999996
	.quad	0x3fd1edd8b60f1b26              # double 0.280142
	.quad	0x3faf505d0fa58f71              # double 0.061159999999999999
	.quad	0x3feda224edf61240              # double 0.92604299999999994
	.quad	0x3f849be8ff327aa7              # double 0.010063000000000001
	.quad	0x3fd0605681ecd4aa              # double 0.25588
	.quad	0x3fec79c4113c6866              # double 0.88986399999999999
	.quad	0x3fa182235b4edb2f              # double 0.034195999999999997
	.quad	0x3fde6fcdee34fc61              # double 0.475574
	.quad	0x3fe84be61cffeb07              # double 0.75926499999999997
	.quad	0x3fa3eb5b2d4d4025              # double 0.038905000000000002
	.quad	0x3feb707e175d13d7              # double 0.85748199999999997
	.quad	0x3feeef1fddebd902              # double 0.96669000000000005
	.quad	0x3fbc7a5b0ff10ecb              # double 0.11124199999999999
	.quad	0x3fe2d8f92af9a8ce              # double 0.58898600000000001
	.quad	0x3fd0ca7935760392              # double 0.26235799999999998
	.quad	0x3fae79aae6c8f755              # double 0.059521999999999999
	.quad	0x3fed45132f87ad08              # double 0.914682
	.quad	0x3fedaf1cb89d6adf              # double 0.92762599999999995
	.quad	0x3fcfb024f6598e11              # double 0.24756300000000001
	.quad	0x3fcc6351deefe500              # double 0.22178100000000001
	.quad	0x3fdad948dc11e42e              # double 0.419512
	.quad	0x3fe9dc896dd26b72              # double 0.80817099999999997
	.quad	0x3f738bcdfefbf402              # double 0.0047720000000000002
	.quad	0x3fef37da61e0c5a8              # double 0.97556799999999999
	.quad	0x3fd9cd855970b49e              # double 0.403169
	.quad	0x3fe37dda8bd230ba              # double 0.60911300000000002
	.quad	0x3fe12e275ab7dc7b              # double 0.53688400000000003
	.quad	0x3fe3c6045baf533f              # double 0.61792199999999997
	.quad	0x3fe5ec2699c7bcc3              # double 0.68507700000000005
	.quad	0x3fdcb1d92b7fe08b              # double 0.448355
	.quad	0x3f49e30014f8b589              # double 7.9000000000000001E-4
	.quad	0x3fe12c03ff69014b              # double 0.53662299999999996
	.quad	0x3fec4100e6afcce2              # double 0.88293500000000003
	.quad	0x3fd69bd4067cf1c3              # double 0.35326099999999999
	.quad	0x3fe796659d12cade              # double 0.73710900000000001
	.quad	0x3fe1ec58eeae9ee4              # double 0.56010099999999996
	.quad	0x3fde30a4e379b77c              # double 0.471719
	.quad	0x3fd10913a4f8726d              # double 0.266179
	.quad	0x3fe8a2834d26fa40              # double 0.76983800000000002
	.quad	0x3fc4ef672b884407              # double 0.16355600000000001
	.quad	0x3fe2b11e85fd04a3              # double 0.584121
	.quad	0x3fada469d7342edc              # double 0.057895000000000002
	.quad	0x3fb821e1d2178f69              # double 0.094267000000000004
	.quad	0x3fe53a4d6e47dc38              # double 0.66336700000000004
	.quad	0x3fcf2da122fad6cb              # double 0.24357999999999999
	.quad	0x3fdd06dd69d30271              # double 0.453544
	.quad	0x3fe0c93ea2d2fe3f              # double 0.52456599999999998
	.quad	0x3fe4509e12a51e32              # double 0.63484099999999999
	.quad	0x3fef53586ca89fc7              # double 0.97892400000000001
	.quad	0x3fd6afaf85942917              # double 0.35447299999999998
	.quad	0x3fe010c4dec1c1d7              # double 0.50204700000000002
	.quad	0x3fd14ea077036c9c              # double 0.270424
	.quad	0x3fe8032fcac8e68e              # double 0.75038899999999997
	.quad	0x3fe1a6d4801f7510              # double 0.55161499999999997
	.quad	0x3fec684cf0739b02              # double 0.88773199999999997
	.quad	0x3fe41b584b1ab085              # double 0.62833799999999995
	.quad	0x3fc8d72799a1fd15              # double 0.19406599999999999
	.quad	0x3fe4a4bdba0a5269              # double 0.64510999999999996
	.quad	0x3fe6306a2b1704ff              # double 0.69340999999999997
	.quad	0x3fc195d4e8fb00bd              # double 0.13738500000000001
	.quad	0x3fed6e525892684d              # double 0.91971700000000001
	.quad	0x3fcfcddd6e04c059              # double 0.24847
	.quad	0x3fde29307af20ea6              # double 0.47126400000000002
	.quad	0x3fbe6fa3fcc9ea9a              # double 0.118891
	.quad	0x3fdb22467be553ac              # double 0.42396699999999998
	.quad	0x3fe70c9752977c89              # double 0.72028700000000001
	.quad	0x3fe0380ecfa69be1              # double 0.50684300000000004
	.quad	0x3fdf0bb6ed677708              # double 0.48509000000000002
	.quad	0x3febb4bd76ee73e7              # double 0.86581300000000005
	.quad	0x3fef214488c60cbf              # double 0.97281099999999998
	.quad	0x3fb7a4d6e47dc37a              # double 0.092358999999999996
	.quad	0x3fc6b47c73eee526              # double 0.17738300000000001
	.quad	0x3feb79fa97e132b5              # double 0.85863999999999996
	.quad	0x3fe9e38a7e73a366              # double 0.80902600000000002
	.quad	0x3fc3698fe69270b0              # double 0.15165899999999999
	.quad	0x3fdf86b59146e4c1              # double 0.49259700000000001
	.quad	0x3fe3df15a4acf313              # double 0.62098200000000003
	.quad	0x3feaa6612839042e              # double 0.83281000000000005
	.quad	0x3fe8c5a1cac08312              # double 0.77412499999999995
	.quad	0x3fdd5818c5c9a34d              # double 0.45850200000000002
	.quad	0x3fd4e321a2e7f6f5              # double 0.32636300000000001
	.quad	0x3fee6f5ec80c73ac              # double 0.95109500000000002
	.quad	0x3fed88509bf9c62a              # double 0.92288999999999999
	.quad	0x3fe3f5989df1172f              # double 0.62373000000000001
	.quad	0x3fea388ca3e7d135              # double 0.81940299999999999
	.quad	0x3fd0859c8c9320da              # double 0.25815500000000002
	.quad	0x3fee1a6b50b0f27c              # double 0.94072500000000003
	.quad	0x3fcf9af9ebe9c886              # double 0.246917
	.quad	0x3fd5ebe9c886162f              # double 0.342524
	.quad	0x3fe9669ced0b30b6              # double 0.79377600000000004
	.quad	0x3fe2ea76965f5276              # double 0.59112100000000001
	.quad	0x3f979e59f2ba9d1f              # double 0.023064999999999999
	.quad	0x3fa38b8ae31d712a              # double 0.038174
	.quad	0x3fe63a109d0635a4              # double 0.69458799999999998
	.quad	0x3fe8f0a3d70a3d71              # double 0.77937500000000004
	.quad	0x3fe2bb5e0f7fcfc4              # double 0.585372
	.quad	0x3fdc7f88765ba6f0              # double 0.44528400000000001
	.quad	0x3fe9ab841248d7e0              # double 0.80218699999999998
	.quad	0x3fdb8ceb356da017              # double 0.43047600000000003
	.quad	0x3fea7b3b7521144d              # double 0.82754300000000003
	.quad	0x3fce6138fffbce42              # double 0.237342
	.quad	0x3febb723ee1bd1ee              # double 0.86610600000000004
	.quad	0x3fe81a4df47f993d              # double 0.75321099999999996
	.quad	0x3fa9378ee2867275              # double 0.049251999999999997
	.quad	0x3fefe13f4a98aa86              # double 0.99624599999999996
	.quad	0x3fed848beb5b2d4d              # double 0.92242999999999997
	.quad	0x3fe755219a847b24              # double 0.72914199999999996
	.quad	0x3fcbbad3a604e1e7              # double 0.216639
	.quad	0x3fe88ca600b02928              # double 0.76716899999999999
	.quad	0x3fd7290abb44e50c              # double 0.36187999999999998
	.quad	0x3fcec7a7c9de0503              # double 0.24046799999999999
	.quad	0x3fe5f6be37de939f              # double 0.68637000000000004
	.quad	0x3fe858bc59b8023a              # double 0.76083199999999995
	.quad	0x3fe4ddd6e04c0592              # double 0.65207999999999999
	.quad	0x3fc4dfc5cdd50a89              # double 0.163079
	.quad	0x3fee44ac6cdaf4ae              # double 0.94588300000000003
	.quad	0x3fe53d20f2becedd              # double 0.66371199999999997
	.quad	0x3fe997fc7607c41a              # double 0.79980300000000004
	.quad	0x3fe65bcec84f8f8a              # double 0.69870699999999997
	.quad	0x3fd4d7b2031ceaf2              # double 0.32566499999999998
	.quad	0x3fe0ded6ba8c5868              # double 0.52720199999999995
	.quad	0x3fd2f8ceb356da01              # double 0.29643599999999998
	.quad	0x3fecfea8112ba16e              # double 0.90608599999999995
	.quad	0x3fd09be4cd749279              # double 0.259515
	.quad	0x3fdc36694898f606              # double 0.44082100000000002
	.quad	0x3fef7dbf487fcb92              # double 0.98409999999999997
	.quad	0x3fed006290eed02d              # double 0.90629700000000002
	.quad	0x3fef276fb09203a3              # double 0.97356399999999998
	.quad	0x3feba7807789a459              # double 0.86419699999999999
	.quad	0x3fe456a7ac81d3aa              # double 0.63557799999999998
	.quad	0x3fe51930be0ded29              # double 0.65932500000000005
	.quad	0x3feb83dbc23315d7              # double 0.859846
	.quad	0x3fe7dc65c70435f0              # double 0.74565400000000004
	.quad	0x3fd5cf355cd91eeb              # double 0.34077200000000002
	.quad	0x3fd7011904b3c3e7              # double 0.35944199999999998
	.quad	0x3fd0f2990f301eac              # double 0.26480700000000001
	.quad	0x3feb2231832fcac9              # double 0.84792400000000001
	.quad	0x3fd5aec8d5c74752              # double 0.33879300000000001
	.quad	0x3fc16c2efd438d1e              # double 0.13611400000000001
	.quad	0x3fda28d8665e02eb              # double 0.40874300000000002
	.quad	0x3fea343b70ef5665              # double 0.81887600000000005
	.quad	0x3fea43632c1f42bb              # double 0.82072599999999996
	.quad	0x3fdb57928e0c9d9d              # double 0.42721999999999999
	.quad	0x3fd40c7c0f451761              # double 0.31326199999999998
	.quad	0x3fe46b4a66559f6f              # double 0.63809700000000003
	.quad	0x3fe7449129888f86              # double 0.72711999999999999
	.quad	0x3fedc58255b035bd              # double 0.93035999999999996
	.quad	0x3fed1ba5e353f7cf              # double 0.90962500000000002
	.quad	0x3fe46bebe1650a46              # double 0.63817400000000002
	.quad	0x3fd63a92a3055326              # double 0.34732499999999999
	.quad	0x3fedf76e6106ab15              # double 0.93645400000000001
	.quad	0x3fe4b41bfbdf090f              # double 0.64698599999999995
	.quad	0x3fe399fe43675ddd              # double 0.61254799999999998
	.quad	0x3fecba42f1ed17c6              # double 0.89773700000000001
	.quad	0x3fc6acaff6d33094              # double 0.177145
	.quad	0x3fc80b9991361dc9              # double 0.18785399999999999
	.quad	0x3fe210f733a8a3f9              # double 0.56457100000000005
	.quad	0x3fe637cfe5860136              # double 0.69431299999999996
	.quad	0x3fda92d1287c200c              # double 0.415211
	.quad	0x3fe572bcb5fe542e              # double 0.67025599999999996
	.quad	0x3fe98ac18f81e8a3              # double 0.79818800000000001
	.quad	0x3fd8c3f3e0370cdd              # double 0.38696000000000003
	.quad	0x3fea746aa087ca64              # double 0.82671099999999997
	.quad	0x3fad0e3476295209              # double 0.056749000000000001
	.quad	0x3febb3fc86cebbba              # double 0.86572099999999996
	.quad	0x3fef0a697aeddce8              # double 0.97002100000000002
	.quad	0x3feff9335d249e45              # double 0.99917
	.quad	0x3fcbcc39ffd60e95              # double 0.21717
	.quad	0x3fd497aaac1094a3              # double 0.32175700000000002
	.quad	0x3feec9e6687f455a              # double 0.96214599999999995
	.quad	0x3fd001d9f4d37c13              # double 0.25011299999999997
	.quad	0x3febac12ad81adeb              # double 0.86475500000000005
	.quad	0x3fd623358f2e05cd              # double 0.34589900000000001
	.quad	0x3fe7a9c779a6b50b              # double 0.73947499999999999
	.quad	0x3f7d1f601797cc3a              # double 0.00711
	.quad	0x3fe08c2c5e2cdc01              # double 0.51711099999999999
	.quad	0x3fd76a50d6b228dd              # double 0.36586400000000002
	.quad	0x3fe85d590c0ad03e              # double 0.76139500000000004
	.quad	0x3fe87ad6cb535009              # double 0.76499499999999998
	.quad	0x3fe7fcd898b2e9cd              # double 0.74961500000000003
	.quad	0x3fe17e670e2c12ae              # double 0.54668000000000005
	.quad	0x3fe55bca9691a75d              # double 0.66745500000000002
	.quad	0x3fd7cf355cd91eeb              # double 0.37202200000000002
	.quad	0x3fe23005814940bc              # double 0.56836200000000003
	.quad	0x3fcf5f809917939a              # double 0.24510199999999999
	.quad	0x3fa73a9b06812381              # double 0.045369
	.quad	0x3fe9a88effe2a3cf              # double 0.80182600000000004
	.quad	0x3fba1869835158b8              # double 0.101935
	.quad	0x3fd51dd5d3dc8b87              # double 0.32994600000000002
	.quad	0x3fe400064a9cdc44              # double 0.62500299999999998
	.quad	0x3fec592fb19e731d              # double 0.88588699999999998
	.quad	0x3fc7d556084a515d              # double 0.186198
	.quad	0x3f96338b47c73eee              # double 0.021680999999999999
	.quad	0x3fe42bbecaab8a5d              # double 0.63034000000000001
	.quad	0x3fef439ffd60e94f              # double 0.97700500000000001
	.quad	0x3fd4e43aa79bbadc              # double 0.32643
	.quad	0x3fe23d74d594f26b              # double 0.57000200000000001
	.quad	0x3fddf36ac647778e              # double 0.46798200000000001
	.quad	0x3fe23e89a88ace25              # double 0.57013400000000003
	.quad	0x3fdf4840e1719f80              # double 0.48878500000000003
	.quad	0x3fb5a5ebb7739f34              # double 0.084562999999999999
	.quad	0x3fde78af3e468cac              # double 0.47611599999999998
	.quad	0x3fefee7c49fd7a14              # double 0.99786200000000002
	.quad	0x3feb76102795703f              # double 0.85816199999999998
	.quad	0x3fb31bef49cf56eb              # double 0.074645000000000003
	.quad	0x3fe9592d98bf7f06              # double 0.79213599999999995
	.quad	0x3fcecaf709b738e7              # double 0.24056900000000001
	.quad	0x3fea0a1be2b4959e              # double 0.81373399999999996
	.quad	0x3fd83f077ccc0379              # double 0.37884699999999999
	.quad	0x3fed7abda0dfdef8              # double 0.92123299999999997
	.quad	0x3fc598a65492ff4c              # double 0.16872100000000001
	.quad	0x3fe79dabe27179c0              # double 0.73799700000000001
	.quad	0x3fe46364bec679cc              # double 0.63713299999999995
	.quad	0x3fcf50870110a138              # double 0.244645
	.quad	0x3fe57da4052d666b              # double 0.67158700000000005
	.quad	0x3fcb0db6a1e81cb4              # double 0.21135599999999999
	.quad	0x3fcefa05143bf727              # double 0.242005
	.quad	0x3fc8ccb3a2595bbc              # double 0.193747
	.quad	0x3fe311c4b90214ad              # double 0.59591899999999998
	.quad	0x3fdb01eabbcb1cc9              # double 0.42199199999999998
	.quad	0x3fee2ecf20642396              # double 0.943214
	.quad	0x3fe0b5ce18266773              # double 0.52219300000000002
	.quad	0x3fc383f0bae89eba              # double 0.15246399999999999
	.quad	0x3fda80b242070b8d              # double 0.414105
	.quad	0x3fe94bc05d52c16e              # double 0.79049700000000001
	.quad	0x3fd6f8ec0f883340              # double 0.35894300000000001
	.quad	0x3fe1098f605ab3ab              # double 0.53241700000000003
	.quad	0x3fec468cac4b4d05              # double 0.88361199999999995
	.quad	0x3fe92e9899bf5947              # double 0.78693800000000003
	.quad	0x3fd5eaab042528ae              # double 0.34244799999999997
	.quad	0x3fcc49774256bca5              # double 0.22099199999999999
	.quad	0x3fe392fd32c625ea              # double 0.61169300000000004
	.quad	0x3fe101b866e43aa8              # double 0.53146000000000004
	.quad	0x3fe62a66dbd72bcb              # double 0.69267599999999996
	.quad	0x3fee3256ffc115df              # double 0.94364499999999996
	.quad	0x3fdee27179bfdf7f              # double 0.48257100000000003
	.quad	0x3fe00746455eaee2              # double 0.500888
	.quad	0x3fabf141205bc01a              # double 0.054574999999999999
	.quad	0x3fc43e5321e603d5              # double 0.15815199999999999
	.quad	0x3fbcc5004fb1183b              # double 0.11238099999999999
	.quad	0x3fea2e6c8f755369              # double 0.81816699999999998
	.quad	0x3fad2ef911cf355d              # double 0.056999000000000001
	.quad	0x3fc420ddc6195465              # double 0.157253
	.quad	0x3fe0235d67ba237d              # double 0.50431700000000002
	.quad	0x3fe709f83be6601c              # double 0.71996700000000002
	.quad	0x3fd2c9ea9a3d2d88              # double 0.293574
	.quad	0x3feca6dacabc5155              # double 0.89536800000000005
	.quad	0x3fe1d4de7ea5f84d              # double 0.55723500000000004
	.quad	0x3fe33743632c1f43              # double 0.60049600000000003
	.quad	0x3fed054690de0935              # double 0.90689399999999998
	.quad	0x3fe8003eea209aaa              # double 0.75002999999999997
	.quad	0x3fc4e6c093d96638              # double 0.16329199999999999
	.quad	0x3fdcbc83a96d4c34              # double 0.44900600000000002
	.quad	0x3fda70a3d70a3d71              # double 0.41312500000000002
	.quad	0x3feb54690de09353              # double 0.85405399999999998
	.quad	0x3fc3b6a1e81cb46c              # double 0.15401100000000001
	.quad	0x3fe43cad9ad85dfb              # double 0.63240700000000005
	.quad	0x3fd073a797891e21              # double 0.25705899999999998
	.quad	0x3fe5605681ecd4aa              # double 0.66800999999999999
	.quad	0x3fd965907d912557              # double 0.39682400000000001
	.quad	0x3fd76cc5fbf83383              # double 0.36601400000000001
	.quad	0x3fc23e10060780fe              # double 0.14251900000000001
	.quad	0x3fda25aab4741073              # double 0.408549
	.quad	0x3fec5ffe6d58c8ef              # double 0.88671800000000001
	.quad	0x3fddd523b3636f3b              # double 0.46613399999999999
	.quad	0x3fd5a02b841248d8              # double 0.33790100000000001
	.quad	0x3fec155f78359bc3              # double 0.87760899999999997
	.quad	0x3fe5257646ae3a3b              # double 0.66082300000000005
	.quad	0x3fec828a1dfb938a              # double 0.89093500000000003
	.quad	0x3fea44dca8e2e2b9              # double 0.82090600000000002
	.quad	0x3fea2d18d25edd05              # double 0.81800499999999998
	.quad	0x3fe8fa3fcc9ea9a4              # double 0.78054800000000001
	.quad	0x3fd5df090f733a8a              # double 0.34173799999999999
	.quad	0x3fe540181e03f706              # double 0.66407400000000005
	.quad	0x3f82fec56d5cfaad              # double 0.0092750000000000002
	.quad	0x3fedf227d028a1e0              # double 0.93581000000000003
	.quad	0x3fe5c955b4677b39              # double 0.68082699999999996
	.quad	0x3fd8333fc86cebbc              # double 0.37812800000000002
	.quad	0x3fd91ebc83a96d4c              # double 0.39250099999999999
	.quad	0x3fe8c2699c7bcc29              # double 0.77373199999999998
	.quad	0x3fd0d606317268d3              # double 0.26306299999999999
	.quad	0x3fd40192a737110e              # double 0.31259599999999998
	.quad	0x3fe1a0ea5b530ced              # double 0.55089299999999997
	.quad	0x3feafd4bf0995aaf              # double 0.84341999999999995
	.quad	0x3fd892b7fe08aefb              # double 0.38395499999999999
	.quad	0x3fe688ebcc6c54bd              # double 0.70421400000000001
	.quad	0x3fb439042d8c2a45              # double 0.078994999999999996
	.quad	0x3fe59754b05b7cfe              # double 0.67472299999999996
	.quad	0x3fed6aad1d041cc5              # double 0.91927199999999998
	.quad	0x3fec76b1a2a4db16              # double 0.88948899999999997
	.quad	0x3fee8c60cbf2b23a              # double 0.95463600000000004
	.quad	0x3fd84fb1183b6028              # double 0.37986399999999998
	.quad	0x3fee6b3bb83cf2d0              # double 0.95059000000000005
	.quad	0x3fce9bd8383ad9f1              # double 0.23913100000000001
	.quad	0x3fa49795b35b0bbf              # double 0.040218999999999998
	.quad	0x3f8b4bb5e0f7fcfc              # double 0.013328
	.quad	0x3fc2da09cc319c5a              # double 0.14727899999999999
	.quad	0x3fe16ec5b078d930              # double 0.54477200000000003
	.quad	0x3fe7625a682b6284              # double 0.73075599999999996
	.quad	0x3fe17efbf401c4fc              # double 0.54675099999999999
	.quad	0x3fb479c4113c6866              # double 0.079982999999999998
	.quad	0x3fb71b152f3c2dae              # double 0.090257000000000003
	.quad	0x3fec11ea78af3e47              # double 0.87718700000000005
	.quad	0x3fe3014940bbb1f2              # double 0.59390699999999996
	.quad	0x3fe645c78a6dacac              # double 0.69601800000000003
	.quad	0x3fce2f8bdec5f395              # double 0.23582600000000001
	.quad	0x3fe9484944ed6fdb              # double 0.79007400000000005
	.quad	0x3fd29b1fab96f21f              # double 0.29071799999999998
	.quad	0x3fdb104d551d68c7              # double 0.42287000000000002
	.quad	0x3fef844f1a1986ba              # double 0.98490100000000003
	.quad	0x3fea7b6134ce3de6              # double 0.82756099999999999
	.quad	0x3fe54857f3061c7a              # double 0.66508100000000003
	.quad	0x3fe2992a737110e4              # double 0.58119699999999996
	.quad	0x3fed6b2af145521a              # double 0.91933200000000004
	.quad	0x3fe06054690de093              # double 0.51175899999999996
	.quad	0x3fdb1832fcac8e69              # double 0.42335200000000001
	.quad	0x3fe1d523b3636f3b              # double 0.55726799999999999
	.quad	0x3fe95553ef6b5d46              # double 0.79166599999999998
	.quad	0x3febc07ee0b0af60              # double 0.86724800000000001
	.quad	0x3fc2ff0025bfad2a              # double 0.14840700000000001
	.quad	0x3fe2a99524bfd2e9              # double 0.58320099999999997
	.quad	0x3fef9e30014f8b59              # double 0.98806000000000004
	.quad	0x3fcd52f3c2dadb83              # double 0.22909399999999999
	.quad	0x3f8e774eebf65dc0              # double 0.014876
	.quad	0x3fec5d3dc8b86b16              # double 0.886382
	.quad	0x3fd6687f455a7d24              # double 0.35012799999999999
	.quad	0x3fdb1b2e59af9ebf              # double 0.42353400000000002
	.quad	0x3fe88b242070b8d0              # double 0.76698500000000003
	.quad	0x3fd96ac647778dd6              # double 0.397142
	.quad	0x3f7f3519bd4067cf              # double 0.0076189999999999999
	.quad	0x3fe5286b59146e4c              # double 0.66118399999999999
	.quad	0x3fe4e11dbca9691a              # double 0.65247999999999995
	.quad	0x3fe6d2220bc382a1              # double 0.71315099999999998
	.quad	0x3fdd112ba16e7a31              # double 0.45417299999999999
	.quad	0x3fe87dfe32a0663c              # double 0.76537999999999994
	.quad	0x3fd9873797460243              # double 0.39887800000000001
	.quad	0x3fde3137b07075b4              # double 0.47175400000000001
	.quad	0x3fe7636b09635611              # double 0.73088600000000004
	.quad	0x3fefb68cef672b88              # double 0.99103399999999997
	.quad	0x3fe4882491afc04d              # double 0.64161900000000005
	.quad	0x3fe3c4ef88b97785              # double 0.61778999999999995
	.quad	0x3fc1d6c7219220ff              # double 0.13936699999999999
	.quad	0x3fed41c3efae7925              # double 0.91427800000000004
	.quad	0x3fe61ed17c5ef630              # double 0.69126200000000004
	.quad	0x3fcbd3aa369fcf3e              # double 0.21739700000000001
	.quad	0x3fc57a7008a697af              # double 0.167799
	.quad	0x3fea0d4fdf3b645a              # double 0.81412499999999999
	.quad	0x3fcefb65668c2614              # double 0.24204700000000001
	.quad	0x3fef3acf7446f9ba              # double 0.97592900000000005
	.quad	0x3fe1a1b9f98b71b9              # double 0.55099200000000004
	.quad	0x3fef4f0f9d2bf551              # double 0.97840099999999996
	.quad	0x3fdb30489d27c393              # double 0.42482199999999998
	.quad	0x3feb35b4edb2f662              # double 0.85030600000000001
	.quad	0x3fdf8665e02ea961              # double 0.49257800000000002
	.quad	0x3fe37aca36199781              # double 0.60873900000000003
	.quad	0x3fd7f2becedd4845              # double 0.374191
	.quad	0x3fcef7f498c3b0c4              # double 0.24194199999999999
	.quad	0x3fec42374794ea07              # double 0.88308299999999995
	.quad	0x3fcee23af31b152f              # double 0.24127899999999999
	.quad	0x3fc1ddfc9ff92f2b              # double 0.13958699999999999
	.quad	0x3fd69d40ee06d938              # double 0.353348
	.quad	0x3fd53ed0f627392a              # double 0.331959
	.quad	0x3fc14c1a8ac5c140              # double 0.13513500000000001
	.quad	0x3fb9a0be51090710              # double 0.100109
	.quad	0x3faea550870110a1              # double 0.059854999999999998
	.quad	0x3fe83e6a337a80d0              # double 0.75761900000000004
	.quad	0x3fe6489b0ee49f51              # double 0.69636299999999995
	.quad	0x3fe53a732df505d1              # double 0.663385
	.quad	0x3febb0b5aa715832              # double 0.86532100000000001
	.quad	0x3fe67d955714b9cb              # double 0.70282999999999995
	.quad	0x3fcb02e6644d8772              # double 0.21102599999999999
	.quad	0x3fdb9cc319c5a3e4              # double 0.43144300000000002
	.quad	0x3fda16db0dd82fd7              # double 0.40764499999999998
	.quad	0x3fc453b8e4b87bdd              # double 0.158805
	.quad	0x3fe058622c450269              # double 0.51078900000000005
	.quad	0x3fc5351159c49774              # double 0.165682
	.quad	0x3fe5b93037d63023              # double 0.67885600000000001
	.quad	0x3f9ff151e75360d0              # double 0.031194
	.quad	0x3fdbd306a2b17050              # double 0.434755
	.quad	0x3fb164c729f59cd0              # double 0.067944000000000004
	.quad	0x3fc554b8bef8ceb3              # double 0.16664799999999999
	.quad	0x3fb048cf7caa758a              # double 0.063611000000000001
	.quad	0x3f7c8c9320d9945b              # double 0.0069699999999999996
	.quad	0x3fc7ed84d338f798              # double 0.18693599999999999
	.quad	0x3fe652502eec7c95              # double 0.69754799999999995
	.quad	0x3fd559ccfaeff5c7              # double 0.33360600000000001
	.quad	0x3fead3dc8b86b160              # double 0.83836200000000005
	.quad	0x3feba18372e6a769              # double 0.86346599999999996
	.quad	0x3fcff69878316a05              # double 0.24971299999999999
	.quad	0x3fef3198288051ca              # double 0.974804
	.quad	0x3fdbca1cef240faa              # double 0.43421100000000001
	.quad	0x3fbe7221858bc59c              # double 0.11892900000000001
	.quad	0x3fd0ebb341e14be0              # double 0.26438600000000001
	.quad	0x3fdb16d2aa5c5f7c              # double 0.42326799999999998
	.quad	0x3fe36e75ff609dd0              # double 0.60723400000000005
	.quad	0x3fe82502eec7c958              # double 0.75451800000000002
	.quad	0x3fee306e5cd4ed2d              # double 0.94341200000000003
	.quad	0x3fecadd377e1b8ed              # double 0.89621899999999999
	.quad	0x3fc5cdab191dde37              # double 0.17033899999999999
	.quad	0x3fc40f98fa376923              # double 0.156726
	.quad	0x3feb741f212d7732              # double 0.85792500000000005
	.quad	0x3fe0f1886df82b1f              # double 0.52948399999999995
	.quad	0x3fe3e8ff327aa68f              # double 0.62219199999999997
	.quad	0x3fe4a21ea35935fc              # double 0.64478999999999997
	.quad	0x3fd75cee17a02fb6              # double 0.36504700000000001
	.quad	0x3f795bbbe878fabe              # double 0.0061910000000000003
	.quad	0x3fe85d97f62b6ae8              # double 0.76142500000000002
	.quad	0x3fd2e7ff583a53b9              # double 0.29541000000000001
	.quad	0x3fccc1f42bb66730              # double 0.22466900000000001
	.quad	0x3fef2dd15f02c4d6              # double 0.97434299999999996
	.quad	0x3fad04e618ce2d1f              # double 0.056677999999999999
	.quad	0x3fcb4b61fe21d96f              # double 0.21323800000000001
	.quad	0x3fde52deca2552a0              # double 0.47380800000000001
	.quad	0x3fda0941c8216c61              # double 0.40681499999999998
	.quad	0x3fe624b9884c6a3c              # double 0.69198300000000001
	.quad	0x3fc78ce2d1f1cfbc              # double 0.18398700000000001
	.quad	0x3fe73ffef39085f5              # double 0.72656200000000004
	.quad	0x3fc144c37e6f71a8              # double 0.134911
	.quad	0x3fe5207f66e86c66              # double 0.66021700000000005
	.quad	0x3feb32f23033a472              # double 0.84996899999999997
	.quad	0x3fba5abc0e38a7e7              # double 0.102947
	.quad	0x3fe772862f5989df              # double 0.73272999999999999
	.quad	0x3feaa2014727dcbe              # double 0.83227600000000002
	.quad	0x3fd064adff822bbf              # double 0.25614500000000001
	.quad	0x3fb1d5e4a3832767              # double 0.069669999999999996
	.quad	0x3fdb09fa54c55433              # double 0.42248400000000003
	.quad	0x3fd6d92b7fe08af0              # double 0.35700500000000002
	.quad	0x3fd766e86c6583e8              # double 0.36565599999999998
	.quad	0x3fefddfc9ff92f2b              # double 0.99584799999999995
	.quad	0x3fe7db91f70de8f7              # double 0.74555300000000002
	.quad	0x3fda0ac3a860dcba              # double 0.40690700000000002
	.quad	0x3fc667be553ac4f8              # double 0.175041
	.quad	0x3fe1816f0068db8c              # double 0.54705000000000004
	.quad	0x3fc1b003686a4ca5              # double 0.138184
	.quad	0x3fdec9f2fdb8fde3              # double 0.481076
	.quad	0x3fd8e3b03e20ccff              # double 0.38889699999999999
	.quad	0x3fdadf9bdc69f8c2              # double 0.41989799999999999
	.quad	0x3fd31bb05faebc41              # double 0.29856500000000002
	.quad	0x3fdd8e29f9ce8d97              # double 0.46180199999999999
	.quad	0x3f9aed99cbee807c              # double 0.026297000000000001
	.quad	0x3fe2bca5375c8da0              # double 0.58552800000000005
	.quad	0x3fed1f4b1ee24357              # double 0.91007000000000005
	.quad	0x3fe4b532e7b3d8e0              # double 0.647119
	.quad	0x3fe2919ef954eb14              # double 0.58027600000000001
	.quad	0x3fe5db35b0bbf50e              # double 0.68300899999999998
	.quad	0x3fec5e5082cf52b9              # double 0.886513
	.quad	0x3fefcf4e874c8ffc              # double 0.99405600000000005
	.quad	0x3faa5269595feda6              # double 0.051409999999999997
	.quad	0x3fd347dc37a3db3c              # double 0.301261
	.quad	0x3fab47c73eee5259              # double 0.053282000000000003
	.quad	0x3fe039884c6a3bde              # double 0.507023
	.quad	0x3fe339e6ab9b23dd              # double 0.60081799999999996
	.quad	0x3fde2456f75d9a0f              # double 0.470968
	.quad	0x3fda113404ea4a8c              # double 0.4073
	.quad	0x3fc61b10fd7e4580              # double 0.17270099999999999
	.quad	0x3fcc8cb4aec8d5c7              # double 0.22304399999999999
	.quad	0x3fe9d8e432441feb              # double 0.80772600000000006
	.quad	0x3fd595208e150119              # double 0.337227
	.quad	0x3fec383ad9f0a1be              # double 0.88186399999999998
	.quad	0x3fe0c054ef459d99              # double 0.523478
	.quad	0x3fe1464dc22ab25b              # double 0.53983199999999998
	.quad	0x3fdddc5931ca7d67              # double 0.46657399999999999
	.quad	0x3fdb7fb267c6b8b7              # double 0.42966900000000002
	.quad	0x3feb4816f0068db9              # double 0.85255000000000003
	.quad	0x3fd3d9e40c8472c1              # double 0.31017400000000001
	.quad	0x3fc1689ca18bd662              # double 0.13600499999999999
	.quad	0x3fefe7e1fc08fa7b              # double 0.99705600000000005
	.quad	0x3fa633ce63a5c1c6              # double 0.043364
	.quad	0x3fd2a06e9ff0cbb0              # double 0.29104200000000002
	.quad	0x3fd07f3493858362              # double 0.25776399999999999
	.quad	0x3fd8f9fcb0c026cc              # double 0.39025799999999999
	.quad	0x3fe6e1847f562175              # double 0.71502900000000003
	.quad	0x3fb537f38c5436b9              # double 0.082885
	.quad	0x3fe409a240314877              # double 0.62617599999999995
	.quad	0x3fcb8305d95dd4c7              # double 0.21493599999999999
	.quad	0x3fe03a01eeed8905              # double 0.507081
	.quad	0x3fe593e5fb71fbc6              # double 0.67430400000000001
	.quad	0x3feb6f0281ba7fc3              # double 0.85730099999999998
	.quad	0x3feede5d18090b41              # double 0.96464399999999994
	.quad	0x3fd2b317efe0ce0c              # double 0.29218100000000002
	.quad	0x3f977ccc03793144              # double 0.022936999999999999
	.quad	0x3feadc03361565c3              # double 0.83935700000000002
	.quad	0x3fe16d0b30b5aa71              # double 0.54456099999999996
	.quad	0x3fd88dc981beb181              # double 0.383654
	.quad	0x3fec8e0653005815              # double 0.89233700000000005
	.quad	0x3fccd1287c200c0f              # double 0.225133
	.quad	0x3feb5536933a0408              # double 0.85415200000000002
	.quad	0x3feb7952d234eb9a              # double 0.85855999999999999
	.quad	0x3fb58548a9bcfd4c              # double 0.084065000000000001
	.quad	0x3fcfb5e95b78cc9a              # double 0.24773899999999999
	.quad	0x3fe6840181e03f70              # double 0.70361399999999996
	.quad	0x3fcb9378ee286727              # double 0.21543799999999999
	.quad	0x3fda68b5cbff4773              # double 0.41264099999999998
	.quad	0x3fe7cac4b4d056c5              # double 0.743502
	.quad	0x3fd8c64345cfede9              # double 0.38710099999999997
	.quad	0x3febb779e9d0e992              # double 0.866147
	.quad	0x3fee29dc725c3dee              # double 0.94260999999999995
	.quad	0x3fdbc486ad2dcb14              # double 0.43386999999999998
	.quad	0x3fb0379314445aa3              # double 0.063348000000000002
	.quad	0x3fc485985ad538ac              # double 0.160327
	.quad	0x3fed57d1782d3847              # double 0.91696999999999995
	.quad	0x3fdd62f9ca5bd945              # double 0.45916600000000002
	.quad	0x3fc994a6eb91b3f2              # double 0.199849
	.quad	0x3fcf496aad1d041d              # double 0.24442800000000001
	.quad	0x3fc5b2f661f18ca0              # double 0.16952400000000001
	.quad	0x3fe2c91f2dc2b0ea              # double 0.58705099999999999
	.quad	0x3fde4245f5ad96a7              # double 0.47279500000000002
	.quad	0x3fe0bc74fb549f95              # double 0.52300500000000005
	.quad	0x3fbedbc664d3bf2f              # double 0.120541
	.quad	0x3feb7c0096feb4a6              # double 0.85888699999999996
	.quad	0x3fdf2f61ed5ae1ce              # double 0.48726700000000001
	.quad	0x3fa1ea57214f0521              # double 0.034991000000000001
	.quad	0x3fe991c4b90214ad              # double 0.79904399999999998
	.quad	0x3fc9c8fb86f47b67              # double 0.20144599999999999
	.quad	0x3fc8666ec9e236c1              # double 0.19062599999999999
	.quad	0x3fd813122b7baecd              # double 0.376164
	.quad	0x3fd7952d234eb9a1              # double 0.36847999999999997
	.quad	0x3fecde2478854cdb              # double 0.90211699999999995
	.quad	0x3fef3f93ff25e56d              # double 0.97651100000000001
	.quad	0x3fef91361dc93ea3              # double 0.98647600000000001
	.quad	0x3fc1adb8348f53c5              # double 0.13811399999999999
	.quad	0x3fee32788db0574b              # double 0.94366099999999997
	.quad	0x3fe8a01abd1aa822              # double 0.76954400000000001
	.quad	0x3f7309c7ffde7211              # double 0.0046480000000000002
	.quad	0x3fddaf2d7f950b95              # double 0.46381699999999998
	.quad	0x3fcf850df15a4acf              # double 0.24624799999999999
	.quad	0x3fe0269df97aaac1              # double 0.504714
	.quad	0x3fd1c23b7952d235              # double 0.27748
	.quad	0x3fa643aa79bbadc1              # double 0.043485000000000003
	.quad	0x3fd4f51266341180              # double 0.32745800000000003
	.quad	0x3fe9b5b70691ea79              # double 0.80343200000000004
	.quad	0x3fd0bb0a2ca9ac36              # double 0.26141599999999998
	.quad	0x3fd1187a4a48f96e              # double 0.267119
	.quad	0x3fe80e3cd9a52264              # double 0.75173800000000001
	.quad	0x3fddc21e1d2178f7              # double 0.46497300000000003
	.quad	0x3fe26807bbb62414              # double 0.57519900000000002
	.quad	0x3fead1c3ac929aa2              # double 0.83810600000000002
	.quad	0x3fb91372a38b8ae3              # double 0.097952999999999998
	.quad	0x3fa0e2c12ad81adf              # double 0.032980000000000002
	.quad	0x3fbc816f0068db8c              # double 0.11135
	.quad	0x3fbe641b328b6d87              # double 0.118715
	.quad	0x3fe9e8f8e7ddca4b              # double 0.80968899999999999
	.quad	0x3fe675946c332f01              # double 0.70185299999999995
	.quad	0x3fc46916440f2389              # double 0.15945699999999999
	.quad	0x3fb41bda5119ce07              # double 0.078549999999999995
	.quad	0x3feb3558a7610279              # double 0.85026199999999996
	.quad	0x3fe9a5c810a569b1              # double 0.80148699999999995
	.quad	0x3fea47bedb7281fe              # double 0.82125800000000004
	.quad	0x3fd91c2e33eff195              # double 0.392345
	.quad	0x3fd8f5a964e8b7e5              # double 0.38999400000000001
	.quad	0x3fd3f544bb1af3a1              # double 0.31184499999999998
	.quad	0x3fef24228997c3d7              # double 0.97316100000000005
	.quad	0x3fe29715c63ae254              # double 0.58094299999999999
	.quad	0x3fa3f2d3c792d128              # double 0.038961999999999997
	.quad	0x3fe9a1059ea57215              # double 0.80090600000000001
	.quad	0x3fcffe542e557de1              # double 0.249949
	.quad	0x3fd12684cf0739b0              # double 0.26797599999999999
	.quad	0x3fe655f3519bd406              # double 0.69799199999999995
	.quad	0x3fe30088509bf9c6              # double 0.59381499999999998
	.quad	0x3feebb256ffc115e              # double 0.960345
	.quad	0x3fdb4bdfd2630ec3              # double 0.426506
	.quad	0x3fbe40b780346dc6              # double 0.118175
	.quad	0x3fe345c5718eb895              # double 0.602267
	.quad	0x3fe5e12a51e321a3              # double 0.68373600000000001
	.quad	0x3fe180de4c51116b              # double 0.54698100000000005
	.quad	0x3fe57b2aae297397              # double 0.67128500000000002
	.quad	0x3fb9d4d834091c08              # double 0.10090399999999999
	.quad	0x3fc0ea5b530ced4e              # double 0.13215199999999999
	.quad	0x3fe6d5eaee2003ac              # double 0.71361300000000005
	.quad	0x3fe0ba2df9378ee3              # double 0.52272700000000005
	.quad	0x3fb1dd1a21ea3593              # double 0.069779999999999995
	.quad	0x3fb2f1cb89d6adf7              # double 0.074001999999999998
	.quad	0x3fed4ece9a2c6690              # double 0.91586999999999996
	.quad	0x3fd5c52a411c2a02              # double 0.34015899999999999
	.quad	0x3fe119f5dfeb8d82              # double 0.53441899999999998
	.quad	0x3fc7b71fbc5de9c0              # double 0.185276
	.quad	0x3fe716db0dd82fd7              # double 0.72153999999999996
	.quad	0x3fe31210385c67e0              # double 0.59595500000000001
	.quad	0x3fd5ef30a4e379b7              # double 0.34272399999999997
	.quad	0x3fda10ba6266fd65              # double 0.40727099999999999
	.quad	0x3fd1fc3b4f616723              # double 0.28101999999999999
	.quad	0x3fe579cc74b838c1              # double 0.67111799999999999
	.quad	0x3fd548f10a99b6f6              # double 0.33257700000000001
	.quad	0x3fb878854cdb7ae5              # double 0.095588999999999993
	.quad	0x3fc47e0ef99806f2              # double 0.16009699999999999
	.quad	0x3fe8394317acc4f0              # double 0.75699000000000005
	.quad	0x3fdc6da4484944ed              # double 0.44419199999999998
	.quad	0x3fa42b302f72b453              # double 0.039392000000000003
	.quad	0x3fe5b358f2e05ccd              # double 0.67814300000000005
	.quad	0x3fcf150dae3e6c4c              # double 0.24282999999999999
	.quad	0x3fe809e34330d738              # double 0.75120699999999996
	.quad	0x3fe4caec8d5c7475              # double 0.64977099999999999
	.quad	0x3fcf929ed3953dea              # double 0.24666199999999999
	.quad	0x3fedf3bea91d9b1b              # double 0.93600399999999995
	.quad	0x3fb457afea3df6dc              # double 0.079463000000000006
	.quad	0x3fb3a15db3397dd0              # double 0.076680999999999999
	.quad	0x3fe48807357e670e              # double 0.64160499999999998
	.quad	0x3fc3d4b6a619da9d              # double 0.15492900000000001
	.quad	0x3fdb30d73860999e              # double 0.42485600000000001
	.quad	0x3fc45aab47410731              # double 0.15901699999999999
	.quad	0x3fd35321e603d578              # double 0.30194900000000002
	.quad	0x3fe5136e71cda2b6              # double 0.65862200000000004
	.quad	0x3fd1393ee5eedcc2              # double 0.269119
	.quad	0x3fdbc9d9d3458cd2              # double 0.434195
	.quad	0x3fe676b3bb83cf2d              # double 0.70199
	.quad	0x3fe694467381d7dc              # double 0.7056
	.quad	0x3fdc4662bae03b3f              # double 0.44179600000000002
	.quad	0x3fc56eac8605681f              # double 0.16744000000000001
	.quad	0x3fdbda5daf07bfe8              # double 0.43520300000000001
	.quad	0x3fd9f954eb13dfb1              # double 0.40584300000000001
	.quad	0x3fe12491afc04c8c              # double 0.53571400000000002
	.quad	0x3fe86be9c886162f              # double 0.76317299999999999
	.quad	0x3fd32d3c792d1288              # double 0.29963600000000001
	.quad	0x3fd7aec4a4095f24              # double 0.37004199999999998
	.quad	0x3fe645eb313be22e              # double 0.69603499999999996
	.quad	0x3fe29652bd3c3611              # double 0.58084999999999998
	.quad	0x3fe30255b035bd51              # double 0.59403499999999998
	.quad	0x3fd29220ff540896              # double 0.29016900000000001
	.quad	0x3fc09e2bcf91a32b              # double 0.129827
	.quad	0x3fe274b407032980              # double 0.57674599999999998
	.quad	0x3fec8aa64c2f837b              # double 0.89192499999999997
	.quad	0x3fe6db530ced4e4d              # double 0.71427300000000005
	.quad	0x3fe2d903a7546d40              # double 0.58899100000000004
	.quad	0x3fee5015c209246c              # double 0.947276
	.quad	0x3fe85017dae81883              # double 0.75977700000000004
	.quad	0x3fc7c3e74afd5454              # double 0.185666
	.quad	0x3fdc02fb5d031056              # double 0.43768200000000002
	.quad	0x3fe49e2584f4c6e7              # double 0.64430500000000002
	.quad	0x3fc0795703f2d3c8              # double 0.12870300000000001
	.quad	0x3fd52556d19dece5              # double 0.33040399999999998
	.quad	0x3fede638433d6c72              # double 0.93435299999999999
	.quad	0x3fd7dcebfec13b9f              # double 0.372859
	.quad	0x3fea9743e963dc48              # double 0.83096499999999995
	.quad	0x3fd38c60cbf2b23a              # double 0.30544300000000002
	.quad	0x3fb63ad18d25edd0              # double 0.086834999999999995
	.quad	0x3fea7ef39085f4a1              # double 0.82799699999999998
	.quad	0x3fa9c3265add9c28              # double 0.050317000000000001
	.quad	0x3fd282b628459967              # double 0.28922799999999999
	.quad	0x3fddc78e9f6a93f3              # double 0.46530500000000002
	.quad	0x3fead8d79d0a6762              # double 0.83896999999999999
	.quad	0x3fd9d1782d38476f              # double 0.40340999999999999
	.quad	0x3fee3fe9fadafd11              # double 0.94530199999999998
	.quad	0x3fc9edf1e0828c37              # double 0.202574
	.quad	0x3fe78c9752977c89              # double 0.73591200000000001
	.quad	0x3fd7bfb58d1526d9              # double 0.37107600000000002
	.quad	0x3fa15a8deb0fadf3              # double 0.033894000000000001
	.quad	0x3fb210cf5b1c8649              # double 0.070569000000000007
	.quad	0x3fde30014f8b588e              # double 0.47167999999999999
	.quad	0x3fde0ffda4052d66              # double 0.46972599999999998
	.quad	0x3fb6b074a771c971              # double 0.08863
	.quad	0x3fd09ff92f2b66b6              # double 0.25976399999999999
	.quad	0x3fc3f11f926c7eae              # double 0.15579599999999999
	.quad	0x3fbb1769a91105e2              # double 0.105826
	.quad	0x3fead3b6cbd987c6              # double 0.83834399999999998
	.quad	0x3fe9bfe9fadafd11              # double 0.80467699999999998
	.quad	0x3fdbccdd93c46d83              # double 0.43437900000000002
	.quad	0x3fd02999567dbb17              # double 0.25253900000000001
	.quad	0x3feaf5f6fd21ff2e              # double 0.84252499999999997
	.quad	0x3fc2a92e62131a8f              # double 0.145788
	.quad	0x3fde3d188f42fe82              # double 0.47247899999999998
	.quad	0x3fd71ea35935fc3b              # double 0.36124499999999998
	.quad	0x3fd22b51bd61f5be              # double 0.28389399999999998
	.quad	0x3feba17d2849cb25              # double 0.86346299999999998
	.quad	0x3fee803686a4ca4f              # double 0.95315099999999997
	.quad	0x3fef395c42203600              # double 0.97575199999999995
	.quad	0x3fc148a159817b96              # double 0.13502900000000001
	.quad	0x3fe3ffe6d58c8eef              # double 0.62498799999999999
	.quad	0x3fdf130164840e17              # double 0.48553499999999999
	.quad	0x3fd4b75a74c09c3d              # double 0.32369100000000001
	.quad	0x3fcf58afc47e49b2              # double 0.244894
	.quad	0x3fe66b7457c0b136              # double 0.70061700000000005
	.quad	0x3fe25b530ced4e4d              # double 0.57364800000000005
	.quad	0x3fa5536933a0407d              # double 0.041652000000000002
	.quad	0x3fc0b545c78a6dad              # double 0.13053200000000001
	.quad	0x3fe89e3864cb5bb4              # double 0.76931400000000005
	.quad	0x3fe2a8c79f666235              # double 0.58310300000000004
	.quad	0x3fe05ee78183f91e              # double 0.51158499999999996
	.quad	0x3fc00e30446b69db              # double 0.12543299999999999
	.quad	0x3fe440789613d31c              # double 0.63287000000000004
	.quad	0x3fec269595feda66              # double 0.87970999999999999
	.quad	0x3feb27fa1a0cf180              # double 0.84863
	.quad	0x3fe744e2f37fbefd              # double 0.727159
	.quad	0x3fca790b84988095              # double 0.206819
	.quad	0x3fc92452c59fb1e2              # double 0.19642100000000001
	.quad	0x3fea2808c8259e1f              # double 0.81738699999999997
	.quad	0x3fe2a65f0f5a1017              # double 0.58280900000000002
	.quad	0x3fe9969e3c968944              # double 0.79963600000000001
	.quad	0x3fe6364e054690de              # double 0.694129
	.quad	0x3fe11335d249e450              # double 0.53359500000000004
	.quad	0x3fc6ed0b30b5aa71              # double 0.17910899999999999
	.quad	0x3fc428f5c28f5c29              # double 0.1575
	.quad	0x3fcadc011d3671ac              # double 0.209839
	.quad	0x3fd5302b40f66a55              # double 0.331065
	.quad	0x3fc9c13fd0d0678c              # double 0.20121
	.quad	0x3fe08a350d2806af              # double 0.51687099999999997
	.quad	0x3fde3061c79b34a4              # double 0.47170299999999998
	.quad	0x3fd1ed8904f6dfc6              # double 0.28012300000000001
	.quad	0x3fe145baf533f423              # double 0.53976199999999996
	.quad	0x3fc412dfd694ccab              # double 0.15682599999999999
	.quad	0x3fc32edfe75bc44c              # double 0.149868
	.quad	0x3fe5460aa64c2f83              # double 0.66479999999999995
	.quad	0x3feae425aee631f9              # double 0.84035000000000004
	.quad	0x3fd87afa7221858c              # double 0.38250600000000001
	.quad	0x3fe6945953586ca9              # double 0.70560900000000004
	.quad	0x3fe87acc4ef88b97              # double 0.76498999999999995
	.quad	0x3fe4417225b749ae              # double 0.63298900000000002
	.quad	0x3fcbda6a44417870              # double 0.21760299999999999
	.quad	0x3fda7a398201cd60              # double 0.41371000000000002
	.quad	0x3f9f8ad256798959              # double 0.030803000000000001
	.quad	0x3fe898a222d5171e              # double 0.76863199999999998
	.quad	0x3fe7ca8e2e2b8c76              # double 0.74347600000000003
	.quad	0x3fe6da8155d5f56a              # double 0.71417299999999995
	.quad	0x3fc0fd113836a833              # double 0.13272300000000001
	.quad	0x3fe7b50092ccf6be              # double 0.74084499999999998
	.quad	0x3fe45e4606748e47              # double 0.63650799999999996
	.quad	0x3fb54bf0995aaf79              # double 0.08319
	.quad	0x3fe3ff950b955f78              # double 0.62494899999999998
	.quad	0x3fe46931876188b1              # double 0.63784099999999999
	.quad	0x3fedeaceaaf35e31              # double 0.93491299999999999
	.quad	0x3fe3ee34fc610f0f              # double 0.62282800000000005
	.quad	0x3fed8f6ad70e6f2f              # double 0.92375700000000005
	.quad	0x3fcc0bfe3b03e20d              # double 0.21911600000000001
	.quad	0x3fe4b50092ccf6be              # double 0.64709499999999998
	.quad	0x3fd5e496ededaec5              # double 0.34207700000000002
	.quad	0x3fe7a6e978d4fdf4              # double 0.73912500000000003
	.quad	0x3fefa48f96e15875              # double 0.98883799999999999
	.quad	0x3fe79c17225b749b              # double 0.73780400000000002
	.quad	0x3fe24b2745bf26f2              # double 0.57167400000000002
	.quad	0x3fe7a95421c04428              # double 0.73941999999999997
	.quad	0x3feaf6b5d462c344              # double 0.84261600000000003
	.quad	0x3fc95c52e72da123              # double 0.19813
	.quad	0x3fd53660e51d25ab              # double 0.33144400000000002
	.quad	0x3fe39ab6d00b45ae              # double 0.61263599999999996
	.quad	0x3fbc374ff865d7cb              # double 0.110219
	.quad	0x3fdec319c5a3e39f              # double 0.48065799999999997
	.quad	0x3fecd50a88effe2a              # double 0.90100599999999997
	.quad	0x3fc58c64fdb09a67              # double 0.168347
	.quad	0x3fbb4128bf3bea92              # double 0.106463
	.quad	0x3fefe00b02928177              # double 0.99609899999999995
	.quad	0x3fe5ff0ed3d859c9              # double 0.68738500000000002
	.quad	0x3fba889c1b54195d              # double 0.103647
	.quad	0x3fe5a82e87d2c7b9              # double 0.67678000000000005
	.quad	0x3fef92599ed7c6fc              # double 0.98661500000000001
	.quad	0x3fa3a908a265f0f6              # double 0.038399000000000003
	.quad	0x3fd730728e92d55a              # double 0.36233199999999999
	.quad	0x3fda193b3a68b19a              # double 0.40778999999999999
	.quad	0x3fd10d38cda6e760              # double 0.266432
	.quad	0x3fe353cddd6e04c0              # double 0.60397999999999996
	.quad	0x3fe8e0221426fe72              # double 0.77736000000000005
	.quad	0x3fb2f62f9ca5bd94              # double 0.074068999999999996
	.quad	0x3fe8c052d666a982              # double 0.77347699999999997
	.quad	0x3fc567fd3f5b5fa2              # double 0.167236
	.quad	0x3feecd2b2bfdb4cc              # double 0.96254499999999998
	.quad	0x3fc57f1737542a24              # double 0.16794100000000001
	.quad	0x3fb1ab4b72c5197a              # double 0.069019999999999998
	.quad	0x3fec718c9fb6134d              # double 0.88886100000000001
	.quad	0x3fec1ab0856e696a              # double 0.87825799999999998
	.quad	0x3fd81ef73c0c1fc9              # double 0.37689
	.quad	0x3fd960ae9680e065              # double 0.39652599999999999
	.quad	0x3fdcf1e0828c36db              # double 0.45226300000000003
	.quad	0x3fe8937f38c5436c              # double 0.76800500000000004
	.quad	0x3f9050bd87b56b87              # double 0.015932999999999999
	.quad	0x3fa99eb6390c9108              # double 0.050039
	.quad	0x3feead3c792d1288              # double 0.95864700000000002
	.quad	0x3fe15b78cc9a77e6              # double 0.54241600000000001
	.quad	0x3fca6c6de76427c8              # double 0.20643400000000001
	.quad	0x3fe833f63c31df76              # double 0.75634299999999999
	.quad	0x3fe5bb9ae0c17657              # double 0.67915099999999995
	.quad	0x3fe60815e39713ad              # double 0.68848699999999996
	.quad	0x3fef1552e2fbe33b              # double 0.97135300000000002
	.quad	0x3fed8d21bc126a66              # double 0.92347800000000002
	.quad	0x3fef9b2c40d0aaa8              # double 0.98769200000000001
	.quad	0x3fc94fd6d7e889c2              # double 0.19774900000000001
	.quad	0x3fdfde33269df97b              # double 0.49793700000000002
	.quad	0x3fe4c9906cca2db6              # double 0.64960499999999999
	.quad	0x3fdc77036c9c0a8d              # double 0.44476399999999999
	.quad	0x3fd2fc2a8869c66d              # double 0.29664099999999999
	.quad	0x3fd4d7b2031ceaf2              # double 0.32566499999999998
	.quad	0x3fd206290eed02cd              # double 0.28162599999999999
	.quad	0x3f99e40c8472c0e8              # double 0.025284000000000001
	.quad	0x3fc9c98a222d5172              # double 0.201463
	.quad	0x3fd4d938151a4378              # double 0.32575799999999999
	.quad	0x3fdc2617c1bda512              # double 0.43982500000000002
	.quad	0x3fefdda48b652370              # double 0.99580599999999997
	.quad	0x3fe0a795703f2d3c              # double 0.52045699999999995
	.quad	0x3fdc46e8f29d40ee              # double 0.441828
	.quad	0x3fea42b734b51373              # double 0.82064400000000004
	.quad	0x3fefd5ac03ff6901              # double 0.99483299999999996
	.quad	0x3fdfc4dec1c1d6d0              # double 0.49639100000000003
	.quad	0x3f873d188f42fe82              # double 0.011346999999999999
	.quad	0x3fe641e14bdfd263              # double 0.69554199999999999
	.quad	0x3fc472756861e929              # double 0.159743
	.quad	0x3fe2ef62f9ca5bd9              # double 0.59172199999999997
	.quad	0x3f9f345069a4df48              # double 0.030473
	.quad	0x3fc2be48a58b3f64              # double 0.14643200000000001
	.quad	0x3fd2777079e59f2c              # double 0.28854000000000002
	.quad	0x3fa375a74c09c3ce              # double 0.038006999999999999
	.quad	0x3fa807789a459104              # double 0.046932000000000001
	.quad	0x3fd564345cfede98              # double 0.33424100000000001
	.quad	0x3fd99ac36544fe37              # double 0.40007100000000001
	.quad	0x3fb41f53825e13b2              # double 0.078603000000000006
	.quad	0x3feb2c322291fb40              # double 0.84914500000000004
	.quad	0x3fd8d20296b3354c              # double 0.387818
	.quad	0x3f9690de093532e8              # double 0.022037000000000001
	.quad	0x3fe35c50ce4ead0c              # double 0.60501899999999997
	.quad	0x3fe6660a2014727e              # double 0.69995600000000002
	.quad	0x3f8cac083126e979              # double 0.014
	.quad	0x3fbc178705425f20              # double 0.109734
	.quad	0x3fe5003cd141a693              # double 0.65627899999999995
	.quad	0x3fe6d0e560418937              # double 0.71299999999999997
	.quad	0x3fe5e31f8a0902de              # double 0.683975
	.quad	0x3fea850bd87b56b8              # double 0.82874099999999995
	.quad	0x3fe770a3d70a3d71              # double 0.73250000000000004
	.quad	0x3fcd7ccc03793144              # double 0.23037099999999999
	.quad	0x3fbdebe9c886162f              # double 0.116881
	.quad	0x3fefe23d0bfa0946              # double 0.996367
	.quad	0x3fa734d6a161e4f7              # double 0.045324999999999997
	.quad	0x3fd13e89a88ace25              # double 0.26944200000000001
	.quad	0x3fe0a6ce358298cc              # double 0.52036199999999999
	.quad	0x3fb4be1eb4202d9d              # double 0.081026000000000001
	.quad	0x3fd6c918e325d4a6              # double 0.35602400000000001
	.quad	0x3fd974aba3875925              # double 0.39774599999999999
	.quad	0x3fef9198aeb80ed0              # double 0.98652300000000004
	.quad	0x3fe3e67f90d9d777              # double 0.62188699999999997
	.quad	0x3feb5cd7060bb2bc              # double 0.85508300000000003
	.quad	0x3fb9daf07bfe7e20              # double 0.100997
	.quad	0x3fd5308787485e3e              # double 0.33108700000000002
	.quad	0x3fa35c7cd898b2ea              # double 0.037815000000000001
	.quad	0x3fefc2c5e2cdc012              # double 0.99252600000000002
	.quad	0x3fe84abe6a337a81              # double 0.75912400000000002
	.quad	0x3fb4f28c79f66623              # double 0.081825999999999996
	.quad	0x3fe8d8f4f93bc0a0              # double 0.77648399999999995
	.quad	0x3fe4aeec7c957cd4              # double 0.64635299999999996
	.quad	0x3fe316249a133c1d              # double 0.59645300000000001
	.quad	0x3fc2280ae1049236              # double 0.141847
	.quad	0x3fcecabc5154866a              # double 0.240562
	.quad	0x3fd348301a79feca              # double 0.30128100000000002
	.quad	0x3fe723d2d87f8876              # double 0.72312299999999996
	.quad	0x3fcba6612839042e              # double 0.21601500000000001
	.quad	0x3fed804b7f5a5333              # double 0.92191100000000004
	.quad	0x3fc3099e0e73604a              # double 0.148731
	.quad	0x3fdfb59ddc1e7968              # double 0.49546000000000001
	.quad	0x3fe1be9ea1405708              # double 0.55451899999999998
	.quad	0x3fe1151c5c5718ec              # double 0.53382700000000005
	.quad	0x3fc5e19fc2a8869c              # double 0.17094799999999999
	.quad	0x3fcba3d2d87f8876              # double 0.21593699999999999
	.quad	0x3fd5c41dd1a21ea3              # double 0.34009499999999998
	.quad	0x3fc7971c10d7be98              # double 0.18429899999999999
	.quad	0x3fc8af89c5e6ff7e              # double 0.192857
	.quad	0x3fed3ea4ebdd334c              # double 0.91389699999999995
	.quad	0x3fe6f38e6d15ad10              # double 0.71723099999999995
	.quad	0x3fce59641f644956              # double 0.23710300000000001
	.quad	0x3fec861c79b34a45              # double 0.89137100000000002
	.quad	0x3fdcc5c5718eb895              # double 0.449571
	.quad	0x3fe7b5b0bbf50e34              # double 0.74092899999999995
	.quad	0x3fd1cc0379314446              # double 0.27807700000000002
	.quad	0x3fe8e1565c2d2780              # double 0.77750699999999995
	.quad	0x3fee7ba237cdcca7              # double 0.95259199999999999
	.quad	0x3fdd9d66adb402d1              # double 0.46273199999999998
	.quad	0x3feae66cb10342ab              # double 0.84062800000000004
	.quad	0x3fc880ae10492360              # double 0.19142700000000001
	.quad	0x3fde576cce5f7404              # double 0.47408600000000001
	.quad	0x3febe01bc98a222d              # double 0.87110699999999996
	.quad	0x3febd07e9d94d0dd              # double 0.869201
	.quad	0x3fe9fca85caafbc2              # double 0.81209200000000004
	.quad	0x3fdd89e774eebf66              # double 0.46154200000000001
	.quad	0x3fc005c4651f3e8a              # double 0.12517600000000001
	.quad	0x3fd77824d4cb9ecf              # double 0.36670799999999998
	.quad	0x3fecd2ae8e1d6495              # double 0.90071800000000002
	.quad	0x3fdff7a4e7ab7564              # double 0.49948999999999999
	.quad	0x3fc7f75968512232              # double 0.18723600000000001
	.quad	0x3fdaad9f0a1be2b5              # double 0.41684700000000002
	.quad	0x3fadb1209edbf8ba              # double 0.057992000000000002
	.quad	0x3feb2d7b634dad32              # double 0.849302
	.quad	0x3fe722d72ffd1dcd              # double 0.72300299999999995
	.quad	0x3fe995c422036007              # double 0.79953200000000002
	.quad	0x3fe18ea5b530ced5              # double 0.54866300000000001
	.quad	0x3fe2733a8a3f8983              # double 0.57656600000000002
	.quad	0x3fe22b020c49ba5e              # double 0.56774999999999998
	.quad	0x3feda9b068123811              # double 0.92696400000000001
	.quad	0x3fe139e279dd3bb0              # double 0.53831600000000002
	.quad	0x3fd3ab53d640e9d5              # double 0.30733199999999999
	.quad	0x3fe57c58ab92c062              # double 0.67142900000000005
	.quad	0x3f8b4dcebfec13ba              # double 0.013332
	.quad	0x3fc51290257c914b              # double 0.164629
	.quad	0x3fe824f227d028a2              # double 0.75451000000000001
	.quad	0x3feb910e453d20f3              # double 0.86145700000000003
	.quad	0x3fdf1a6937d1fe65              # double 0.485987
	.quad	0x3fc1aa92e62131a9              # double 0.138018
	.quad	0x3fdc01b43526527a              # double 0.43760399999999999
	.quad	0x3fe0b6fc158fb43e              # double 0.52233700000000005
	.quad	0x3fd463305100a394              # double 0.318554
	.quad	0x3fdae1975f2cb641              # double 0.42001899999999998
	.quad	0x3fe28192a737110e              # double 0.57831699999999997
	.quad	0x3fe1b15f88fc9364              # double 0.552902
	.quad	0x3fe242efd438d1d9              # double 0.57067100000000004
	.quad	0x3fef88effe2a3cea              # double 0.98546599999999995
	.quad	0x3fe62f5558212945              # double 0.69327799999999995
	.quad	0x3fd5c1a8ac5c13fd              # double 0.339945
	.quad	0x3fe0111cf355cd92              # double 0.50208900000000001
	.quad	0x3fdfdb940fecdd0e              # double 0.49777700000000003
	.quad	0x3fef0eae18ac9f30              # double 0.97054200000000002
	.quad	0x3fde67dbb16c1e36              # double 0.47508899999999998
	.quad	0x3fee130df9bdc6a0              # double 0.93982600000000005
	.quad	0x3fdaabb8800eae19              # double 0.41673100000000002
	.quad	0x3fdf254a3c64345d              # double 0.486651
	.quad	0x3fe9dc0db2702a35              # double 0.80811200000000005
	.quad	0x3fe33dee78183f92              # double 0.60131000000000001
	.quad	0x3fba5fa658c4bd34              # double 0.103022
	.quad	0x3fec5a20ddc61954              # double 0.88600199999999995
	.quad	0x3fe3756eac860568              # double 0.60808499999999999
	.quad	0x3fcda42f1ed17c5f              # double 0.231573
	.quad	0x3fca55f3519bd406              # double 0.20574799999999999
	.quad	0x3fef0c64fdb09a67              # double 0.97026299999999998
	.quad	0x3fdf5eedcc20d563              # double 0.49016900000000002
	.quad	0x3fd504295a6c5d20              # double 0.32837899999999998
	.quad	0x3fe813293d102bc7              # double 0.75233899999999998
	.quad	0x3fad7a99fa11a976              # double 0.057576000000000002
	.quad	0x3feb15097c80841f              # double 0.84631800000000001
	.quad	0x3fbfe920c069e7fb              # double 0.124651
	.quad	0x3f988c1db0142f62              # double 0.023972
	.quad	0x3fd0e9d94d0dcfcc              # double 0.26427299999999998
	.quad	0x3fc11e96c3fc43b3              # double 0.133746
	.quad	0x3fd83d7d3910c2c6              # double 0.37875300000000001
	.quad	0x3fd94e8fb00bcbe6              # double 0.39541999999999999
	.quad	0x3f909e98dcdb37ca              # double 0.016230000000000001
	.quad	0x3fe0fe2c55c96031              # double 0.53102700000000003
	.quad	0x3fe709635610adcd              # double 0.71989599999999998
	.quad	0x3fe4c78854cdb7ae              # double 0.64935699999999996
	.quad	0x3fd5300de4c51117              # double 0.33105800000000002
	.quad	0x3fe1b6d00b45ae60              # double 0.553566
	.quad	0x3fe029068986fcdf              # double 0.50500800000000001
	.quad	0x3fe76cdaf4adbc66              # double 0.73203799999999997
	.quad	0x3fc37fa5d28d002e              # double 0.152333
	.quad	0x3fe0e8dfbd6a593a              # double 0.52842699999999998
	.quad	0x3fc7badc0980b242              # double 0.18539
	.quad	0x3fe64bec679cc74c              # double 0.69676800000000005
	.quad	0x3fd97bd8be7296f6              # double 0.39818399999999998
	.quad	0x3faca515ce9e5e24              # double 0.055946999999999997
	.quad	0x3fca3f705857afea              # double 0.20506099999999999
	.quad	0x3fd416d2aa5c5f7c              # double 0.31389299999999998
	.quad	0x3feda09246bf0132              # double 0.92585099999999998
	.quad	0x3fed7c2656abde40              # double 0.92140500000000002
	.quad	0x3fc62f7b17ce52df              # double 0.17332400000000001
	.quad	0x3fed9151611ba3ca              # double 0.92398899999999995
	.quad	0x3fe3184a0e410b63              # double 0.596715
	.quad	0x3fe401a9b8cb8e08              # double 0.62520299999999995
	.quad	0x3fd7b2b3461309c8              # double 0.370282
	.quad	0x3fdf4ce8101f31f4              # double 0.48906899999999998
	.quad	0x3fef2c1b10fd7e46              # double 0.97413400000000006
	.quad	0x3fc617225b749add              # double 0.17258100000000001
	.quad	0x3fbe8b5cbff47736              # double 0.119314
	.quad	0x3fd62a172abef06b              # double 0.34631899999999999
	.quad	0x3fd2fd5885d31338              # double 0.296713
	.quad	0x3facab606b7aa25e              # double 0.055995000000000003
	.quad	0x3fa52502eec7c958              # double 0.041298000000000001
	.quad	0x3fe430a2ca9ac365              # double 0.63093699999999997
	.quad	0x3fd242f61ed5ae1d              # double 0.28533700000000001
	.quad	0x3fc659af9ebe9c88              # double 0.17461199999999999
	.quad	0x3fd1f7be121ee675              # double 0.280746
	.quad	0x3fdf6134ce3de615              # double 0.49030800000000002
	.quad	0x3fe73e920c069e80              # double 0.72638800000000003
	.quad	0x3fa49b413986338b              # double 0.040246999999999998
	.quad	0x3fe0b4b72c5197a2              # double 0.52205999999999997
	.quad	0x3fda141205bc01a3              # double 0.40747499999999998
	.quad	0x3f8527e52157689d              # double 0.010330000000000001
	.quad	0x3fe42339c0ebedfa              # double 0.62929999999999997
	.quad	0x3f706cca2db61bb0              # double 0.0040099999999999997
	.quad	0x3fce49f51697f1fa              # double 0.23663200000000001
	.quad	0x3fe322f6a50d6b23              # double 0.59801800000000005
	.quad	0x3febccf28c79f666              # double 0.86876799999999998
	.quad	0x3fef065f9591cd1c              # double 0.96952799999999994
	.quad	0x3fe3617e34b94531              # double 0.60565100000000005
	.quad	0x3fc0763a19008206              # double 0.128608
	.quad	0x3fd40485a0be5109              # double 0.312776
	.quad	0x3fc096ededaec4a4              # double 0.129606
	.quad	0x3fed7fae3608d089              # double 0.92183599999999999
	.quad	0x3fe685942917507f              # double 0.70380600000000004
	.quad	0x3fa1c044284dfce3              # double 0.034669999999999999
	.quad	0x3f91476af89c5e70              # double 0.016874
	.quad	0x3fec93d31b9b66f9              # double 0.89304499999999998
	.quad	0x3fac011d3671ac15              # double 0.054696000000000002
	.quad	0x3fd7c981beb18117              # double 0.371674
	.quad	0x3fd6f190d173fb7a              # double 0.35849399999999998
	.quad	0x3fe27620ee8d10f5              # double 0.57691999999999999
	.quad	0x3fbae3608d08919f              # double 0.105032
	.quad	0x3fe8186338b47c74              # double 0.752977
	.quad	0x3fee1bb2788db057              # double 0.94088099999999997
	.quad	0x3fddbd9cae21101b              # double 0.464698
	.quad	0x3fada187a4a48f97              # double 0.057873000000000001
	.quad	0x3fbc86f049a9973e              # double 0.11143400000000001
	.quad	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
	.quad	0x3fcc096feb4a6656              # double 0.21903800000000001
	.quad	0x3fd0ba3ca7503b82              # double 0.26136700000000002
	.quad	0x3fef4c89b0ee49f5              # double 0.97809299999999999
	.quad	0x3fefc1d6cf850df1              # double 0.99241199999999996
	.quad	0x3fe5bf3387160957              # double 0.67959000000000003
	.quad	0x3fe4ef7a0b5ed8d3              # double 0.65423299999999995
	.quad	0x3fd6d905c0336156              # double 0.35699599999999998
	.quad	0x3fd1a122fad6cb53              # double 0.27545999999999998
	.quad	0x3fe6053e2d6238da              # double 0.68813999999999997
	.quad	0x3fd404af922962d0              # double 0.31278600000000001
	.quad	0x3fdb69db65ecc3e3              # double 0.42833599999999999
	.quad	0x3fd713ec460ed80a              # double 0.36059099999999999
	.quad	0x3fe67eda66128390              # double 0.70298499999999997
	.quad	0x3fc0558644523f68              # double 0.12761
	.quad	0x3fe3e3d816aceaaf              # double 0.62156299999999998
	.quad	0x3fe5268900c521de              # double 0.66095400000000004
	.quad	0x3fde8f7985271bce              # double 0.47750700000000001
	.quad	0x3fec8650e779207d              # double 0.89139599999999997
	.quad	0x3fe384a515ce9e5e              # double 0.60994199999999998
	.quad	0x3f9d1f1cfbb94962              # double 0.028438999999999999
	.quad	0x3fe7bf487fcb923a              # double 0.74209999999999998
	.quad	0x3f94bc27631b584b              # double 0.020249
	.quad	0x3fed180d3cff64d0              # double 0.90918600000000005
	.quad	0x3fd3dec1c1d6cf85              # double 0.310471
	.quad	0x3fca9878316a0557              # double 0.20777799999999999
	.quad	0x3fe126a444178705              # double 0.53596699999999997
	.quad	0x3fe44bd987c6327f              # double 0.63425900000000002
	.quad	0x3fdebe7f2c3009b3              # double 0.480377
	.quad	0x3fed2da98676a726              # double 0.91182399999999997
	.quad	0x3fd0ca148ba83f4f              # double 0.26233400000000001
	.quad	0x3fe0936c58eeae9f              # double 0.51799600000000001
	.quad	0x3fe1fe79ee02a77a              # double 0.56231399999999998
	.quad	0x3fdfb19a415f45e1              # double 0.49521500000000002
	.quad	0x3fda1b8aa00192a7              # double 0.40793099999999999
	.quad	0x3fe0737110e453d2              # double 0.51409199999999999
	.quad	0x3fec92d1287c200c              # double 0.89292199999999999
	.quad	0x3fc7f10ecb74ddf8              # double 0.18704399999999999
	.quad	0x3fe356dc1a47a9e3              # double 0.60435300000000003
	.quad	0x3fea71ae2da554b9              # double 0.82637700000000003
	.quad	0x3fe84d5f99c38b05              # double 0.75944500000000004
	.quad	0x3fe52be48a58b3f6              # double 0.66160799999999997
	.quad	0x3feb60999dcb5782              # double 0.85554200000000002
	.quad	0x3fe7cd099e0e7360              # double 0.74377899999999996
	.quad	0x3fc58e0008637bd0              # double 0.16839599999999999
	.quad	0x3feb9d14e3bcd35b              # double 0.86292500000000005
	.quad	0x3fe9a19a847b2464              # double 0.80097700000000005
	.quad	0x3fe8da5332acfb76              # double 0.77665099999999998
	.quad	0x3feda2c669057d18              # double 0.92612000000000005
	.quad	0x3fc741bfbdf090f7              # double 0.18169399999999999
	.quad	0x3fe9b3aabcd78c43              # double 0.80318199999999995
	.quad	0x3fec75a31a4bdba1              # double 0.88936000000000004
	.quad	0x3fcdb9628cbd1245              # double 0.23222000000000001
	.quad	0x3fecf92af9a8cdea              # double 0.905416
	.quad	0x3fe9a5aee631f8a1              # double 0.80147500000000005
	.quad	0x3f6ab8e8ea39c51e              # double 0.0032620000000000001
	.quad	0x3febd0e560418937              # double 0.86924999999999997
	.quad	0x3fd2bea4ebdd334c              # double 0.29288599999999998
	.quad	0x3fe0c24c404a72eb              # double 0.52371800000000002
	.quad	0x3fe58f6ad70e6f2f              # double 0.67375700000000005
	.quad	0x3fde7ebf22c01e69              # double 0.47648600000000002
	.quad	0x3fed05271bcdbbe0              # double 0.90687899999999999
	.quad	0x3fdbda8bd230b9dc              # double 0.43521399999999999
	.quad	0x3fe4b0984e3ffef4              # double 0.64655700000000005
	.quad	0x3fdeb445ed4a1ad6              # double 0.47975299999999999
	.quad	0x3fd37ff151e75361              # double 0.30468400000000001
	.quad	0x3fee18fa376922d9              # double 0.94054899999999997
	.quad	0x3fc4a5614df8b157              # double 0.161297
	.quad	0x3fe8c579f2346562              # double 0.77410599999999996
	.quad	0x3fc42c343b70ef56              # double 0.15759899999999999
	.quad	0x3fb48a58b3f63c32              # double 0.080236000000000001
	.quad	0x3fc75ebfa8f7db6e              # double 0.18257899999999999
	.quad	0x3fe82bbcb1cc9646              # double 0.75533899999999998
	.quad	0x3febd918a009f623              # double 0.870251
	.quad	0x3febb0446b69db66              # double 0.86526700000000001
	.quad	0x3fe74dee34fc610f              # double 0.72826299999999999
	.quad	0x3fe9530ad46f587d              # double 0.79138699999999995
	.quad	0x3fdec28f5c28f5c3              # double 0.48062500000000002
	.quad	0x3f96c15d2d01c0ca              # double 0.022221999999999999
	.quad	0x3fc730ced4e4c943              # double 0.181177
	.quad	0x3fd37292c4934268              # double 0.30386800000000003
	.quad	0x3fb8198f1d3ed528              # double 0.094140000000000001
	.quad	0x3fe7dd00f776c482              # double 0.74572799999999995
	.quad	0x3fe1390a7829068a              # double 0.53821300000000005
	.quad	0x3fd9027525460aa6              # double 0.39077499999999998
	.quad	0x3fde9817b95a2941              # double 0.47803299999999999
	.quad	0x3fe372c7325918a0              # double 0.607761
	.quad	0x3fecc71d60631727              # double 0.89930600000000005
	.quad	0x3fe93c7b45f17bd9              # double 0.78863300000000003
	.quad	0x3fe51c347e8ccdd9              # double 0.65969299999999997
	.quad	0x3fdf75f2cb641701              # double 0.49157400000000001
	.quad	0x3fee6601bc98a223              # double 0.94995200000000002
	.quad	0x3feb5b8fde2ef4e0              # double 0.85492699999999999
	.quad	0x3fda645a1cac0831              # double 0.41237499999999999
	.quad	0x3fe0709310129cbb              # double 0.51374200000000003
	.quad	0x3fe7c0b9991361dd              # double 0.74227600000000005
	.quad	0x3fe25942917507ea              # double 0.57339600000000002
	.quad	0x3feb7449129888f8              # double 0.85794499999999996
	.quad	0x3fd666a11ec918e3              # double 0.35001399999999999
	.quad	0x3fd2320d9945b6c3              # double 0.28430499999999997
	.quad	0x3fe83ecedd484513              # double 0.75766699999999998
	.quad	0x3feffaa25d8d79d1              # double 0.99934500000000003
	.quad	0x3fd964cf8d716d2b              # double 0.39677800000000002
	.quad	0x3f943b2dd377e1b9              # double 0.019757
	.quad	0x3fe3d4a3c64345d0              # double 0.61970700000000001
	.quad	0x3fe6abc5154866a1              # double 0.70846799999999999
	.quad	0x3fc265625a682b63              # double 0.14371900000000001
	.quad	0x3fecf92f2b66b617              # double 0.90541799999999995
	.quad	0x3fef7c5cdd50a88f              # double 0.983931
	.quad	0x3fe02e019b0ab2e1              # double 0.50561599999999995
	.quad	0x3fe38008637bd05b              # double 0.609379
	.quad	0x3fc422bbecaab8a6              # double 0.15731000000000001
	.quad	0x3fea2d6883771865              # double 0.81804299999999996
	.quad	0x3fe2fb43d89ce4a8              # double 0.59317200000000003
	.quad	0x3fe3a51c193b3a69              # double 0.61390500000000003
	.quad	0x3fe9a25742dcf462              # double 0.80106699999999997
	.quad	0x3fd918c197e56473              # double 0.39213599999999998
	.quad	0x3fda3443d46b26c0              # double 0.40944000000000003
	.quad	0x3fe86f8487b99d45              # double 0.76361299999999999
	.quad	0x3fc49f51697f1f9b              # double 0.16111200000000001
	.quad	0x3fdcf78feef5ec81              # double 0.45261000000000001
	.quad	0x3fd263b688bda943              # double 0.28733599999999998
	.quad	0x3fb1894812be48a6              # double 0.068501000000000006
	.quad	0x3fcc5d52c16df3f9              # double 0.22159799999999999
	.quad	0x3fd5c2e770bd017e              # double 0.34002100000000002
	.quad	0x3fe60a0d349be8ff              # double 0.68872699999999998
	.quad	0x3feea5332acfb763              # double 0.95766600000000002
	.quad	0x3fe77316e3715400              # double 0.73279899999999998
	.quad	0x3fd97baecd07852f              # double 0.39817399999999997
	.quad	0x3fc4346dc5d63886              # double 0.15784999999999999
	.quad	0x3fc735b0bbf50e34              # double 0.18132599999999999
	.quad	0x3fee39d1b2e59afa              # double 0.94455800000000001
	.quad	0x3f9fad6cb5350093              # double 0.030935000000000001
	.quad	0x3fe1ef99806f2629              # double 0.56049800000000005
	.quad	0x3fe93c48f10a99b7              # double 0.788609
	.quad	0x3fdd3f20a73f748a              # double 0.456978
	.quad	0x3fdfd51f81a5870e              # double 0.49738300000000002
	.quad	0x3fe37a1a0cf1800a              # double 0.60865499999999995
	.quad	0x3fb6b8a5ce5b4246              # double 0.088755
	.quad	0x3fe406f8ad256799              # double 0.62585100000000005
	.quad	0x3fe8e3dc486ad2dd              # double 0.77781500000000003
	.quad	0x3fee9cd1c7de5083              # double 0.95664300000000002
	.quad	0x3fee1832fcac8e69              # double 0.94045400000000001
	.quad	0x3fd6996fa82e87d3              # double 0.35311500000000001
	.quad	0x3fba775fb2edfe76              # double 0.103384
	.quad	0x3fc870eb24a6a876              # double 0.190946
	.quad	0x3fd46238da3c2118              # double 0.31849499999999997
	.quad	0x3fef73dc054ef45a              # double 0.98289300000000002
	.quad	0x3fcd3d4280ae1049              # double 0.228432
	.quad	0x3fc8c282c6ef3d3a              # double 0.193436
	.quad	0x3facd940789613d3              # double 0.056344999999999999
	.quad	0x3fec21ec4e7253da              # double 0.87914099999999995
	.quad	0x3fcd681669ced0b3              # double 0.229739
	.quad	0x3f93f5b5fa22706d              # double 0.019491999999999999
	.quad	0x3fee8b6523704791              # double 0.95451600000000003
	.quad	0x3feac69d7342edbb              # double 0.83674499999999996
	.quad	0x3feabb1af3a14cec              # double 0.83533999999999997
	.quad	0x3fd9859c8c9320da              # double 0.39878000000000002
	.quad	0x3fef207f66e86c66              # double 0.97271700000000005
	.quad	0x3fd94ca0c282c6ef              # double 0.39530199999999999
	.quad	0x3fd957e670e2c12b              # double 0.39599000000000001
	.quad	0x3fe45cd0bb6ed677              # double 0.63632999999999995
	.quad	0x3fe588f217093101              # double 0.67296699999999998
	.quad	0x3febe149c6f36ef8              # double 0.871251
	.quad	0x3fdaf9fcb0c026cc              # double 0.42150799999999999
	.quad	0x3fc1e19fc2a8869c              # double 0.13969799999999999
	.quad	0x3fe262ae4b018612              # double 0.574546
	.quad	0x3fe5be1eb4202d9d              # double 0.67945800000000001
	.quad	0x3fddfebd09e12a52              # double 0.46867300000000001
	.quad	0x3fea628ed5f138bd              # double 0.82453100000000001
	.quad	0x3fe597bd8be7296f              # double 0.67477299999999996
	.quad	0x3fa0746455eaee20              # double 0.032138
	.quad	0x3fbfa22706d50657              # double 0.123568
	.quad	0x3fd0e2d6238da3c2              # double 0.263845
	.quad	0x3fe529930be0ded3              # double 0.66132500000000005
	.quad	0x3fe0a44a6223e187              # double 0.52005500000000005
	.quad	0x3fe3097204295a6c              # double 0.59490299999999996
	.quad	0x3fe7b03e20ccff22              # double 0.74026400000000003
	.quad	0x3fda88a04d12018a              # double 0.41458899999999999
	.quad	0x3fe2c5069a4df480              # double 0.58655100000000004
	.quad	0x3fe7d3d640e9d51b              # double 0.74460899999999997
	.quad	0x3feec89d27c39368              # double 0.96198899999999998
	.quad	0x3fb5a6a444178705              # double 0.084573999999999996
	.quad	0x3fe95a7d24180d3d              # double 0.792296
	.quad	0x3fc9a5093964a59c              # double 0.200349
	.quad	0x3fd1a50d6b228dca              # double 0.27569900000000003
	.quad	0x3fc238eb0318b934              # double 0.14236199999999999
	.quad	0x3fc8d184c271fff8              # double 0.19389400000000001
	.quad	0x3fe0d2c59fb1e18f              # double 0.525729
	.quad	0x3fe39dd1a21ea359              # double 0.61301499999999998
	.quad	0x3fe1a3e186983516              # double 0.55125500000000005
	.quad	0x3feb84790b849881              # double 0.85992100000000005
	.quad	0x3fed588c1db0142f              # double 0.91705899999999996
	.quad	0x3fd3f99c38b04ab6              # double 0.31211
	.quad	0x3fd69f2778140dd4              # double 0.353464
	.quad	0x3fe7a2120e1f7d74              # double 0.73853400000000002
	.quad	0x3fe5ec69b5a63f9a              # double 0.68510899999999997
	.quad	0x3fdec85c24c404a7              # double 0.48097899999999999
	.quad	0x3fe0f7963992c8c5              # double 0.530223
	.quad	0x3fa58ff759685122              # double 0.042113999999999999
	.quad	0x3fed7cb70ac3a861              # double 0.92147400000000002
	.quad	0x3fe62873bc903ea7              # double 0.692438
	.quad	0x3fd94cb9ecf63800              # double 0.39530799999999999
	.quad	0x3fe12fba01eeed89              # double 0.537076
	.quad	0x3f5c087442c7fbad              # double 0.0017110000000000001
	.quad	0x3fe2f5019f3c70ca              # double 0.59240800000000005
	.quad	0x3fbf8c9752977c89              # double 0.123239
	.quad	0x3fedddb5525cc426              # double 0.93331399999999998
	.quad	0x3fe6c9cb252ce033              # double 0.71213300000000002
	.quad	0x3fe6485e3da2f8be              # double 0.69633400000000001
	.quad	0x3fe76cc1ca3a4b55              # double 0.73202599999999995
	.quad	0x3fb4152b0a6fc58b              # double 0.078448000000000004
	.quad	0x3fdf2d8c2a454de8              # double 0.487155
	.quad	0x3feeab884406c00e              # double 0.95843900000000004
	.quad	0x3f96ec17ebaf1023              # double 0.022384999999999999
	.quad	0x3fc612be48a58b3f              # double 0.17244699999999999
	.quad	0x3fe5d2c59fb1e18f              # double 0.681979
	.quad	0x3fc25accd530489d              # double 0.143396
	.quad	0x3fea801b43526528              # double 0.82813800000000004
	.quad	0x3fedb0e3cd9a5226              # double 0.92784299999999997
	.quad	0x3fb893532e7b3d8e              # double 0.095997999999999999
	.quad	0x3fdfcdcca70d1fa3              # double 0.49693599999999999
	.quad	0x3fe600f345069a4e              # double 0.687616
	.quad	0x3fd959103c8e25c8              # double 0.396061
	.quad	0x3fd9182ecaeea63b              # double 0.39210099999999998
	.quad	0x3feeee4c0df58c09              # double 0.96658900000000003
	.quad	0x3fe34d87724fa8b5              # double 0.60321400000000003
	.quad	0x3fdbcff64cf8d717              # double 0.43456800000000001
	.quad	0x3fd974927913e814              # double 0.39773999999999998
	.quad	0x3fe98123810e8859              # double 0.797014
	.quad	0x3fee8198f1d3ed52              # double 0.95331999999999995
	.quad	0x3fc51f687b139c95              # double 0.165021
	.quad	0x3f900d1b71758e22              # double 0.015675000000000001
	.quad	0x3fceea960b6f9fcb              # double 0.241534
	.quad	0x3fd6883771865519              # double 0.35206399999999999
	.quad	0x3fc510cb295e9e1b              # double 0.164575
	.quad	0x3fea4f11b60ae968              # double 0.82215199999999999
	.quad	0x3fece48c7192ea53              # double 0.90289900000000001
	.quad	0x3fe4ac9d16fc9bc7              # double 0.64607099999999995
	.quad	0x3fdf5f2cb641700d              # double 0.49018400000000001
	.quad	0x3fe397d2849cb253              # double 0.61228300000000002
	.quad	0x3fd790f301eabbcb              # double 0.36822199999999999
	.quad	0x3fd71e75360d0247              # double 0.361234
	.quad	0x3fee0897e996312f              # double 0.93854899999999997
	.quad	0x3fe1af3a14cec41e              # double 0.55264000000000002
	.quad	0x3fd0854cdb7ae579              # double 0.25813599999999998
	.quad	0x3fae6f2e8c0485a1              # double 0.059442000000000002
	.quad	0x3fa573eab367a0f9              # double 0.0419
	.quad	0x3fed9eadd590c0ad              # double 0.92562
	.quad	0x3f831f46ed245b29              # double 0.0093369999999999998
	.quad	0x3fbe3305100a393f              # double 0.117966
	.quad	0x3fec508919ef954f              # double 0.88483100000000003
	.quad	0x3fd912be48a58b3f              # double 0.39176899999999998
	.quad	0x3fede542e557de0d              # double 0.93423599999999996
	.quad	0x3fd5a619da9c9928              # double 0.33826299999999998
	.quad	0x3fe190dbf0563ed1              # double 0.548933
	.quad	0x3fef51244a6223e2              # double 0.97865500000000005
	.quad	0x3fe5a86940357a35              # double 0.67680799999999997
	.quad	0x3fd0c4007570c565              # double 0.261963
	.quad	0x3fd455bccaf709b7              # double 0.31773299999999999
	.quad	0x3fe5273d5bab2181              # double 0.66103999999999996
	.quad	0x3fd1f61aa3f034b1              # double 0.28064600000000001
	.quad	0x3fed131ca7d6733f              # double 0.90858300000000003
	.quad	0x3fe8bb7f9d6f1130              # double 0.77288800000000002
	.quad	0x3fe5843c3a42f1ed              # double 0.67239199999999999
	.quad	0x3fc79ddc1e7967cb              # double 0.184505
	.quad	0x3fe19a9973d9ec70              # double 0.550122
	.quad	0x3fd7fdef8487b99d              # double 0.37487399999999999
	.quad	0x3fd2a42f1ed17c5f              # double 0.291271
	.quad	0x3fd4aed1394317ad              # double 0.32317000000000001
	.quad	0x3fc312556d19dece              # double 0.14899699999999999
	.quad	0x3fd54bad7d7c2ca1              # double 0.33274399999999998
	.quad	0x3fef035158b827fa              # double 0.96915499999999999
	.quad	0x3fc9b6dca07f66e8              # double 0.20089299999999999
	.quad	0x3fdcf8fcd67fd3f6              # double 0.45269700000000002
	.quad	0x3fc46234a87e38eb              # double 0.159247
	.quad	0x3fc94d8ba40d90e2              # double 0.19767899999999999
	.quad	0x3fec593c46d82ba6              # double 0.88589300000000004
	.quad	0x3fe78bfe3b03e20d              # double 0.73583900000000002
	.quad	0x3fda7a24894c447c              # double 0.41370499999999999
	.quad	0x3fe920ee8d10f51b              # double 0.78527000000000002
	.quad	0x3fe8b3f63c31df76              # double 0.77196799999999999
	.quad	0x3fe5d959a30984e4              # double 0.682782
	.quad	0x3fece4bcad9ad85e              # double 0.902922
	.quad	0x3fb8d1c7de5082cf              # double 0.096950999999999996
	.quad	0x3fc81a9b8cb8e087              # double 0.18831200000000001
	.quad	0x3fe641f85d744f5d              # double 0.69555299999999998
	.quad	0x3fc6329802c0a4a0              # double 0.17341899999999999
	.quad	0x3feb1d3cbc48f10b              # double 0.84731900000000004
	.quad	0x3fddb6f5caf2d7f9              # double 0.46429199999999998
	.quad	0x3feca7b2cc70867b              # double 0.89547100000000002
	.quad	0x3febc0d4dc65c704              # double 0.86728899999999997
	.quad	0x3fd21df761cbccf3              # double 0.28307900000000003
	.quad	0x3fe02072d1aeb3dd              # double 0.50396099999999999
	.quad	0x3fe394c660a20147              # double 0.61191099999999998
	.quad	0x3febb91f70de8f6d              # double 0.86634800000000001
	.quad	0x3fdafa76534373f3              # double 0.421537
	.quad	0x3fe48fcb4f1e4b45              # double 0.64255300000000004
	.quad	0x3fd62fcac8e68e3f              # double 0.346667
	.quad	0x3fef33f42352eb5f              # double 0.97509199999999995
	.quad	0x3fea67f2c3009b30              # double 0.82518899999999995
	.quad	0x3fc29289dadfb507              # double 0.145097
	.quad	0x3fea78e1932d6ece              # double 0.82725599999999999
	.quad	0x3fe77e6f71a7e308              # double 0.73418399999999995
	.quad	0x3fe4ef0cfe154435              # double 0.65418100000000001
	.quad	0x3fd10329802c0a4a              # double 0.265818
	.quad	0x3fe911233df2a9d6              # double 0.78334199999999998
	.quad	0x3fcaeec7c957cd46              # double 0.21041199999999999
	.quad	0x3fed0b1572580c31              # double 0.90760300000000005
	.quad	0x3fc46e3b46fdeb53              # double 0.15961400000000001
	.quad	0x3fed7b97bb730835              # double 0.92133699999999996
	.quad	0x3fd02df9378ee286              # double 0.25280599999999998
	.quad	0x3fe73864cb5bb385              # double 0.725634
	.quad	0x3fdfc226809d4952              # double 0.49622500000000003
	.quad	0x3fedee3d5fdcdf6a              # double 0.93533200000000005
	.quad	0x3febc27c7c5260f6              # double 0.86749100000000001
	.quad	0x3fc600e27e0ef998              # double 0.171902
	.quad	0x3fe1e672fba01eef              # double 0.55938100000000002
	.quad	0x3fdeaa19439de482              # double 0.479132
	.quad	0x3fdfcb252ce032db              # double 0.49677399999999999
	.quad	0x3fee89d495182a99              # double 0.95432499999999998
	.quad	0x3fc31d92b7fe08af              # double 0.14934
	.quad	0x3fa27e308787485e              # double 0.036118999999999998
	.quad	0x3fe212ad81adea89              # double 0.56477999999999995
	.quad	0x3fd9f761cbccf28c              # double 0.40572399999999997
	.quad	0x3fa1cde5d18090b4              # double 0.034773999999999999
	.quad	0x3fd1cc5fbf83382e              # double 0.27809899999999999
	.quad	0x3fe1c2d8c2a454de              # double 0.55503499999999995
	.quad	0x3fbff43419e30015              # double 0.12482
	.quad	0x3fab19a415f45e0b              # double 0.052929999999999998
	.quad	0x3fec8661ae70c133              # double 0.89140399999999997
	.quad	0x3fe10bfc2224edf6              # double 0.53271299999999999
	.quad	0x3fe4959e6256366d              # double 0.64326399999999995
	.quad	0x3fef5b3397dd00f7              # double 0.97988299999999994
	.quad	0x3fcf44bb1af3a14d              # double 0.244285
	.quad	0x3fa67c49fd7a13c2              # double 0.043916999999999998
	.quad	0x3fc7756c93a71151              # double 0.18327099999999999
	.quad	0x3fe6557ff9b56324              # double 0.69793700000000003
	.quad	0x3fd91986b9c304cd              # double 0.392183
	.quad	0x3fd434df04ddb552              # double 0.31572699999999998
	.quad	0x3fa15f02c4d65e46              # double 0.033928
	.quad	0x3fd10cae642bf983              # double 0.266399
	.quad	0x3fc4333764f11b61              # double 0.15781300000000001
	.quad	0x3fd0c74751ce28ed              # double 0.26216299999999998
	.quad	0x3fe8929670196d8f              # double 0.76789399999999997
	.quad	0x3fb1e1d2178f68be              # double 0.069851999999999997
	.quad	0x3fe2cface67d77fb              # double 0.58785100000000001
	.quad	0x3fa2cecc814d727a              # double 0.036734000000000003
	.quad	0x3fa80e8c8abd5dc4              # double 0.046986
	.quad	0x3fea977a7008a698              # double 0.83099100000000004
	.quad	0x3fe00ff540895d0b              # double 0.50194799999999995
	.quad	0x3fdedc7abfb9bed3              # double 0.482207
	.quad	0x3fa12b3cc4ac6cdb              # double 0.033533
	.quad	0x3fdc9e236c15d2d0              # double 0.44715199999999999
	.quad	0x3fd007bbb62413db              # double 0.25047199999999997
	.quad	0x3feedca8e2e2b8c7              # double 0.96443599999999995
	.quad	0x3fe9d6a9c560c7c1              # double 0.80745400000000001
	.quad	0x3fd32699c7bcc294              # double 0.29923100000000002
	.quad	0x3fd08f57f737da62              # double 0.25874900000000001
	.quad	0x3fbbf78bbd380453              # double 0.109246
	.quad	0x3fd48f861a60d456              # double 0.32125999999999999
	.quad	0x3fed5c3dee781840              # double 0.91751000000000004
	.quad	0x3fefbf3387160957              # double 0.99209000000000002
	.quad	0x3fe46c3b927d45a6              # double 0.638212
	.quad	0x3fd78c3f3e0370ce              # double 0.36793500000000001
	.quad	0x3fc50257c914b168              # double 0.164134
	.quad	0x3fbad3a604e1e710              # double 0.104792
	.quad	0x3fc5eaab042528ae              # double 0.17122399999999999
	.quad	0x3fbde41d4b6a619e              # double 0.116762
	.quad	0x3fdffe8ee6b8305e              # double 0.49991200000000002
	.quad	0x3f9427418d6909af              # double 0.019681000000000001
	.quad	0x3fc94db59578a2a9              # double 0.197684
	.quad	0x3fd5a09cc319c5a4              # double 0.33792800000000001
	.quad	0x3fc480cf9e3864cb              # double 0.16018099999999999
	.quad	0x3fecce63a5c1c609              # double 0.90019400000000005
	.quad	0x3fe869a91105e1c1              # double 0.76289799999999997
	.quad	0x3fed5701d9f4d37c              # double 0.91687099999999999
	.quad	0x3febea0ba1f4b1ee              # double 0.87231999999999998
	.quad	0x3fd3cc89b0ee49f5              # double 0.309359
	.quad	0x3f70268900c521de              # double 0.0039430000000000003
	.quad	0x3fbde5c0b9991362              # double 0.116787
	.quad	0x3fdd9c065b63d3e5              # double 0.462648
	.quad	0x3fd1fe1da7b0b392              # double 0.28113500000000002
	.quad	0x3fec799e518f3ecd              # double 0.88984600000000003
	.quad	0x3fedb21815a07b35              # double 0.92798999999999998
	.quad	0x3fec7dd65a14488c              # double 0.89036099999999995
	.quad	0x3fe886ec17ebaf10              # double 0.76646999999999998
	.quad	0x3fe3367e414e7ee9              # double 0.60040199999999999
	.quad	0x3fd5c77143393ab4              # double 0.34029799999999999
	.quad	0x3fecfd00713f077d              # double 0.90588400000000002
	.quad	0x3fe5120e1f7d73c9              # double 0.65845399999999998
	.quad	0x3fdd0346dc5d6388              # double 0.45332499999999998
	.quad	0x3fd2452c59fb1e19              # double 0.285472
	.quad	0x3fca4827b6fe2e6f              # double 0.20532700000000001
	.quad	0x3fc6c9c90c4dec1c              # double 0.178033
	.quad	0x3fc6182ecaeea63b              # double 0.17261299999999999
	.quad	0x3fcea71de69ad42c              # double 0.23947499999999999
	.quad	0x3fb79ca5bd944aa5              # double 0.092233999999999997
	.quad	0x3fe079e59f2ba9d2              # double 0.51488
	.quad	0x3fd170b49e01de27              # double 0.27250400000000002
	.quad	0x3fb9a8bd230b9dc3              # double 0.100231
	.quad	0x3fe2e10cf5b1c865              # double 0.58997200000000005
	.quad	0x3fd2bb384fd2a62b              # double 0.29267700000000002
	.quad	0x3fbf702602c9081c              # double 0.122805
	.quad	0x3fe61832fcac8e69              # double 0.69045400000000001
	.quad	0x3fd4e94680171194              # double 0.32673799999999997
	.quad	0x3fe27789a459103d              # double 0.57709200000000005
	.quad	0x3fe6a6a444178705              # double 0.70784199999999997
	.quad	0x3fd68e3ef284167b              # double 0.35243200000000002
	.quad	0x3fc2d2674080f990              # double 0.14704600000000001
	.quad	0x3fe52e019b0ab2e1              # double 0.66186599999999995
	.quad	0x3fcbb573eab367a1              # double 0.216475
	.quad	0x3fca773e24febd0a              # double 0.206764
	.quad	0x3fda725c3dee7818              # double 0.41322999999999999
	.quad	0x3fe8de74299d883c              # double 0.77715500000000004
	.quad	0x3fd168c692f6e829              # double 0.27201999999999998
	.quad	0x3fc5242070b8cfc0              # double 0.16516500000000001
	.quad	0x3fd82480e8c8abd6              # double 0.37722800000000001
	.quad	0x3fe9881e4712e408              # double 0.79786599999999996
	.quad	0x3fc8a3161a1db878              # double 0.19247700000000001
	.quad	0x3fee2c42e9899bf6              # double 0.94290300000000005
	.quad	0x3fe197f1f9acffa8              # double 0.54979800000000001
	.quad	0x3fe25a57646ae3a4              # double 0.57352800000000004
	.quad	0x3fcdf9f01b866e44              # double 0.23419000000000001
	.quad	0x3fe3cdb9c7368ad7              # double 0.61886300000000005
	.quad	0x3fe207789a459104              # double 0.56341200000000002
	.quad	0x3fe421fd1569f490              # double 0.62914899999999996
	.quad	0x3fe63b1290257c91              # double 0.69471099999999997
	.quad	0x3fcb676ea4228998              # double 0.21409400000000001
	.quad	0x3faa0a0f4d7add16              # double 0.050858
	.quad	0x3fcac32a8c9b8455              # double 0.20908099999999999
	.quad	0x3fd4e807bbb62414              # double 0.32666200000000001
	.quad	0x3fd033fc86cebbba              # double 0.25317299999999998
	.quad	0x3fc4c61d8622c450              # double 0.162296
	.quad	0x3fe0743c7d5ed070              # double 0.51418900000000001
	.quad	0x3fd656da0168b5cc              # double 0.349051
	.quad	0x3feb07a28bb0a2cb              # double 0.84468200000000004
	.quad	0x3fee293af74cd317              # double 0.94253299999999995
	.quad	0x3fed3524399b2c41              # double 0.91273700000000002
	.quad	0x3fd44944ed6fda83              # double 0.31697199999999998
	.quad	0x3fe3bf3e0370cdc8              # double 0.61709499999999995
	.quad	0x3fe1efae7924af0c              # double 0.56050800000000001
	.quad	0x3fa27913e81450f0              # double 0.036080000000000001
	.quad	0x3fced8d36b4c7f35              # double 0.24099200000000001
	.quad	0x3fc9d7a99fa11a97              # double 0.20189399999999999
	.quad	0x3fc96a4873365882              # double 0.19855600000000001
	.quad	0x3fda886594af4f0e              # double 0.41457500000000003
	.quad	0x3fc918116ebd4cfd              # double 0.196047
	.quad	0x3fd052fc2656abde              # double 0.25506499999999999
	.quad	0x3fef9e71044f1a1a              # double 0.98809100000000005
	.quad	0x3fe6ace89656eefa              # double 0.70860699999999999
	.quad	0x3fe2f182235b4edb              # double 0.59198099999999998
	.quad	0x3fe02261bf37b8d4              # double 0.50419700000000001
	.quad	0x3fe63c9abb01c92e              # double 0.69489800000000002
	.quad	0x3f629cbab649d389              # double 0.0022720000000000001
	.quad	0x3fa29f383f0bae8a              # double 0.036371000000000001
	.quad	0x3fb2f08cc575c076              # double 0.073982999999999993
	.quad	0x3fe30e15011904b4              # double 0.59546900000000003
	.quad	0x3fc144dca8e2e2b9              # double 0.13491400000000001
	.quad	0x3fe8ccec41dd1a22              # double 0.77501500000000001
	.quad	0x3fd1fdf7e80389f8              # double 0.28112599999999999
	.quad	0x3fe5c00fba8826ab              # double 0.67969500000000005
	.quad	0x3fe99d8409e55c10              # double 0.80047800000000002
	.quad	0x3fec4f95d4e8fb01              # double 0.88471500000000003
	.quad	0x3fafd1dcd7060bb3              # double 0.062148000000000002
	.quad	0x3fe98e5604189375              # double 0.79862500000000003
	.quad	0x3fb414f8b588e369              # double 0.078445000000000001
	.quad	0x3fef95097c80841f              # double 0.98694300000000001
	.quad	0x3fe84f722e1ac57e              # double 0.75969799999999998
	.quad	0x3fb773affb04ee7c              # double 0.091608999999999996
	.quad	0x3feeca57a786c227              # double 0.96220000000000005
	.quad	0x3fe18537e2c55c96              # double 0.547512
	.quad	0x3fefcae85b9e8c48              # double 0.99351900000000004
	.quad	0x3fc9fe21d96e9bbf              # double 0.203068
	.quad	0x3fefdb402d16b980              # double 0.99551400000000001
	.quad	0x3feffbcc2938de6e              # double 0.99948700000000001
	.quad	0x3fd03c8e25c810a5              # double 0.25369599999999998
	.quad	0x3fe86bca5375c8da              # double 0.763158
	.quad	0x3fdfadddf43c7d5f              # double 0.49498700000000001
	.quad	0x3fe42b990afe60c4              # double 0.63032200000000005
	.quad	0x3fd5602c9081c2e3              # double 0.33399499999999999
	.quad	0x3fd573f748a15981              # double 0.33520299999999997
	.quad	0x3faa6f826edaa92e              # double 0.051631999999999997
	.quad	0x3fdc5109070fbeba              # double 0.44244600000000001
	.quad	0x3fd552e2fbe33acd              # double 0.33318399999999998
	.quad	0x3fec2222d5171e2a              # double 0.87916700000000003
	.quad	0x3fea004d98394749              # double 0.81253699999999995
	.quad	0x3fe43d46b26bf877              # double 0.63248000000000004
	.quad	0x3feeb673c4f3ba77              # double 0.95977199999999995
	.quad	0x3fe85f37329c347f              # double 0.76162300000000005
	.quad	0x3f810342aa9f7b5b              # double 0.0083070000000000001
	.quad	0x3fd8256366d7a56e              # double 0.37728200000000001
	.quad	0x3fed34117f84449e              # double 0.91260600000000003
	.quad	0x3fc68049667b5f1c              # double 0.17579
	.quad	0x3fd4c3547e06961c              # double 0.32442199999999999
	.quad	0x3fc6a90470a808c8              # double 0.177033
	.quad	0x3fc7d5885d31337f              # double 0.18620400000000001
	.quad	0x3fdb0b955f78359c              # double 0.42258200000000001
	.quad	0x3fcdd7a99fa11a97              # double 0.23314399999999999
	.quad	0x3fe5e2089e34330d              # double 0.68384199999999995
	.quad	0x3fed40f451761459              # double 0.91417899999999996
	.quad	0x3fe002cd39da1661              # double 0.50034199999999995
	.quad	0x3fe5e76427c7c526              # double 0.68449599999999999
	.quad	0x3fa62ed352220bc4              # double 0.043326000000000003
	.quad	0x3fd94aa53fc00970              # double 0.395181
	.quad	0x3fe73ebbfd71b047              # double 0.72640800000000005
	.quad	0x3fcfbb517a46173c              # double 0.24790400000000001
	.quad	0x3fdbe2046c764ae0              # double 0.43567
	.quad	0x3fc456e696a26e54              # double 0.15890199999999999
	.quad	0x3fd73a92a3055326              # double 0.36294999999999999
	.quad	0x3fe70ffda4052d66              # double 0.72070199999999995
	.quad	0x3fe14de3b8a19c9d              # double 0.54075799999999996
	.quad	0x3fd50e5e679463d0              # double 0.32900200000000002
	.quad	0x3fe7fe111276fb09              # double 0.74976399999999999
	.quad	0x3fde3586ca89fc6e              # double 0.47201700000000002
	.quad	0x3fe49e68a0d349bf              # double 0.64433700000000005
	.quad	0x3fc1a027525460aa              # double 0.13769999999999999
	.quad	0x3fee0a1be2b4959e              # double 0.93873399999999996
	.quad	0x3fe51c27e9531551              # double 0.65968700000000002
	.quad	0x3fb7f2d3c792d128              # double 0.093548999999999993
	.quad	0x3fe389ca18bd6627              # double 0.61056999999999995
	.quad	0x3fbc78e9f6a93f29              # double 0.11122
	.quad	0x3fe62f709b738e6d              # double 0.69329099999999999
	.quad	0x3fd6489d27c39368              # double 0.34818199999999999
	.quad	0x3fc79d1b2e59af9f              # double 0.18448200000000001
	.quad	0x3fe9cfc610f0e90c              # double 0.80661300000000002
	.quad	0x3fa36fe2e6ea8544              # double 0.037962999999999997
	.quad	0x3feb9c4da9003eea              # double 0.86282999999999999
	.quad	0x3fb259af9ebe9c88              # double 0.071680999999999995
	.quad	0x3fe8978705425f20              # double 0.76849699999999998
	.quad	0x3fde365cb35f3d7d              # double 0.47206799999999999
	.quad	0x3fd308dd1e53a81e              # double 0.29741600000000001
	.quad	0x3fede5a35d67ba23              # double 0.93428199999999995
	.quad	0x3fdad5c74751ce29              # double 0.419298
	.quad	0x3fed8f301eabbcb2              # double 0.92372900000000002
	.quad	0x3fef40a6b93ccd10              # double 0.97664200000000001
	.quad	0x3fe6324e9c454584              # double 0.69364099999999995
	.quad	0x3fb806e19b90ea9e              # double 0.093854999999999993
	.quad	0x3fefb9d7fd82773e              # double 0.99143599999999998
	.quad	0x3fed50e560418937              # double 0.91612499999999997
	.quad	0x3fb577fae3608d09              # double 0.083862000000000006
	.quad	0x3fd09756c93a7115              # double 0.259237
	.quad	0x3fcc8eabffcdab19              # double 0.223104
	.quad	0x3fdb1c15097c8084              # double 0.42358899999999999
	.quad	0x3fe62bbcb1cc9646              # double 0.69283899999999998
	.quad	0x3fc04628027d88c2              # double 0.127141
	.quad	0x3fc1b65668c26139              # double 0.138377
	.quad	0x3fb347f993d5347a              # double 0.075316999999999995
	.quad	0x3feba4ca4f440af2              # double 0.86386600000000002
	.quad	0x3fd1c0379314445b              # double 0.27735700000000002
	.quad	0x3fedd02eec7c957d              # double 0.93166300000000002
	.quad	0x3fea2be6a337a80d              # double 0.817859
	.quad	0x3fcfd651b0ccbc06              # double 0.248728
	.quad	0x3fd8348f53c579f2              # double 0.37820799999999999
	.quad	0x3fc00ce0b912dba5              # double 0.125393
	.quad	0x3fe47e77d523b363              # double 0.64043799999999995
	.quad	0x3fce486ad2dcb146              # double 0.23658499999999999
	.quad	0x3fd17db2b346130a              # double 0.27329700000000001
	.quad	0x3fe0e94ccab3edd9              # double 0.52847900000000003
	.quad	0x3fcf144cbe1eb420              # double 0.242807
	.quad	0x3fe6bff25e56cd6c              # double 0.71093099999999998
	.quad	0x3fc65375c8d9f905              # double 0.17442199999999999
	.quad	0x3fedcf09528f190d              # double 0.93152299999999999
	.quad	0x3fd4c5004fb1183b              # double 0.32452399999999998
	.quad	0x3fc9bfb58d1526d9              # double 0.20116300000000001
	.quad	0x3fe8ebcc6c54bcf1              # double 0.77878400000000003
	.quad	0x3fce16aceaaf35e3              # double 0.235067
	.quad	0x3fd25faebc408d8f              # double 0.28709000000000001
	.quad	0x3fb99524bfd2e947              # double 0.099932000000000007
	.quad	0x3fd132b990afe60c              # double 0.26872099999999999
	.quad	0x3fe728ef77f27fe5              # double 0.72374700000000003
	.quad	0x3fe8097204295a6c              # double 0.75115299999999995
	.quad	0x3feb3a908a265f0f              # double 0.85089899999999996
	.quad	0x3fd7040bfe3b03e2              # double 0.359622
	.quad	0x3fdf85cee17a02fb              # double 0.49254199999999998
	.quad	0x3fcb330941c8216c              # double 0.21249499999999999
	.quad	0x3fcb40c4156e264e              # double 0.21291399999999999
	.quad	0x3fd2eb13dfb0d520              # double 0.29559800000000003
	.quad	0x3fe9ec13b9f127f6              # double 0.81006800000000001
	.quad	0x3fd809c7ffde7211              # double 0.37559700000000001
	.quad	0x3fe36a2b1704ff43              # double 0.60670999999999997
	.quad	0x3fbab463497b7415              # double 0.104315
	.quad	0x3fe4b3b96af038e3              # double 0.64693900000000004
	.quad	0x3fd9aaac1094a2ba              # double 0.40104200000000001
	.quad	0x3fe7a2595bbbe879              # double 0.738568
	.quad	0x3fdd0c9539b88872              # double 0.45389299999999999
	.quad	0x3fa22f6a50d6b229              # double 0.035518000000000001
	.quad	0x3fee96fc9bc77143              # double 0.95593099999999998
	.quad	0x3fdedf090f733a8a              # double 0.48236299999999999
	.quad	0x3fe166d9be4cd749              # double 0.54380499999999998
	.quad	0x3fde01fb82c2bd7f              # double 0.46887099999999998
	.quad	0x3fe3cabc5154866a              # double 0.61849799999999999
	.quad	0x3fdc73e24febd09e              # double 0.444573
	.quad	0x3fc2afc47e49b1fb              # double 0.14598900000000001
	.quad	0x3fe0f9bbadc0980b              # double 0.53048499999999998
	.quad	0x3fe8266ba493c89f              # double 0.75468999999999997
	.quad	0x3fecaa3ad18d25ee              # double 0.89578000000000002
	.quad	0x3fc73a71151611ba              # double 0.18147099999999999
	.quad	0x3fbe539756c93a71              # double 0.118463
	.quad	0x3fe2385c67dfe32a              # double 0.56938
	.quad	0x3fceac215b9a5a8a              # double 0.23962800000000001
	.quad	0x3fab09a671ef30a5              # double 0.052808000000000001
	.quad	0x3fc73bea91d9b1b8              # double 0.18151600000000001
	.quad	0x3fe8839ef0f16f44              # double 0.76606700000000005
	.quad	0x3fde444178705426              # double 0.472916
	.quad	0x3fd7d041cc532a49              # double 0.37208599999999997
	.quad	0x3fc1265add9c27e9              # double 0.13398299999999999
	.quad	0x3fe77ffde7210be9              # double 0.73437399999999997
	.quad	0x3fcfade225fa658c              # double 0.24749399999999999
	.quad	0x3fed16249a133c1d              # double 0.90895300000000001
	.quad	0x3fd1b2d4d4024b34              # double 0.27654000000000001
	.quad	0x3fef6b4c7f349386              # double 0.98184800000000005
	.quad	0x3fef29fbe76c8b44              # double 0.97387500000000004
	.quad	0x3fd70b39192641b3              # double 0.36005999999999999
	.quad	0x3f9bbf50e3476295              # double 0.027097
	.quad	0x3fc8dd26b723ee1c              # double 0.194249
	.quad	0x3fef1e6eeb702603              # double 0.97246500000000002
	.quad	0x3fe6cc1ebc83a96d              # double 0.71241699999999997
	.quad	0x3fe15af07bfe7e20              # double 0.54235100000000003
	.quad	0x3fe4c753e707e176              # double 0.64933200000000002
	.quad	0x3fdbf7a4e7ab7564              # double 0.43698999999999999
	.quad	0x3fd9b37c99ae924f              # double 0.40157999999999999
	.quad	0x3fe34f1a1986b9c3              # double 0.603406
	.quad	0x3fe8f40c4156e265              # double 0.77979100000000001
	.quad	0x3fd76694898f605b              # double 0.36563600000000002
	.quad	0x3fe4cc8366516db1              # double 0.64996500000000001
	.quad	0x3fe6a237cdcca70d              # double 0.70730199999999999
	.quad	0x3fe5828e4fb97bb7              # double 0.67218699999999998
	.quad	0x3fdf3868fd199bb2              # double 0.48781799999999997
	.quad	0x3fe421187e7c06e2              # double 0.62904000000000004
	.quad	0x3fee5c011d3671ac              # double 0.94873099999999999
	.quad	0x3fd821858bc59b80              # double 0.37704599999999999
	.quad	0x3fdb69b17481b21c              # double 0.42832599999999998
	.quad	0x3fea1f75104d551d              # double 0.81633999999999995
	.quad	0x3fe34f0f9d2bf551              # double 0.60340099999999997
	.quad	0x3fcb06034f3fd934              # double 0.211121
	.quad	0x3fd9e60807357e67              # double 0.404665
	.quad	0x3fe3d1611ba3ca75              # double 0.619309
	.quad	0x3fdb1db0142f61ed              # double 0.42368699999999998
	.quad	0x3fb4dcb9a9da597d              # double 0.081492999999999996
	.quad	0x3fe03d640e9d51b5              # double 0.507494
	.quad	0x3fe78e38a7e73a36              # double 0.73611099999999996
	.quad	0x3fea65a78f25a251              # double 0.824909
	.quad	0x3fc33ad5bee3d5fe              # double 0.15023300000000001
	.quad	0x3f9b26394face67d              # double 0.026512999999999998
	.quad	0x3fd639d1b2e59afa              # double 0.347279
	.quad	0x3fe082a9930be0df              # double 0.51595000000000002
	.quad	0x3fd9712e40852b4e              # double 0.39753300000000003
	.quad	0x3fd7c100e6afcce2              # double 0.37115500000000001
	.quad	0x3fe6060999dcb578              # double 0.68823699999999999
	.quad	0x3fcfb517a46173b8              # double 0.24771399999999999
	.quad	0x3fd2ff36ac647779              # double 0.29682700000000001
	.quad	0x3fbc790b84988095              # double 0.111222
	.quad	0x3fe4c01c4fc1df33              # double 0.648451
	.quad	0x3fd352da98676a72              # double 0.30193199999999998
	.quad	0x3fe986ca89fc6da4              # double 0.79770399999999996
	.quad	0x3fe5d24bfd2e9468              # double 0.681921
	.quad	0x3fdf2224edf61240              # double 0.48645899999999997
	.quad	0x3fedeb3dd11be6e6              # double 0.93496599999999996
	.quad	0x3f90d2806af46aa1              # double 0.016428000000000002
	.quad	0x3fe26cc3e3193f6c              # double 0.57577699999999998
	.quad	0x3fa47fdc5931ca7d              # double 0.040037999999999997
	.quad	0x3fe42400fba8826b              # double 0.62939500000000004
	.quad	0x3fe861fc08fa7a85              # double 0.761961
	.quad	0x3fc8fd32c625e99f              # double 0.19522700000000001
	.quad	0x3fe42686e7e62dc7              # double 0.62970300000000001
	.quad	0x3fdc8e432441fea8              # double 0.446183
	.quad	0x3fe06f3d3a1d3240              # double 0.51357900000000001
	.quad	0x3fa3e878fabda0e0              # double 0.038883000000000001
	.quad	0x3fd501fb82c2bd7f              # double 0.32824599999999998
	.quad	0x3fefaf2f9873ffac              # double 0.99013499999999998
	.quad	0x3fd229131ec0b567              # double 0.28375699999999998
	.quad	0x3fe250763a190082              # double 0.572322
	.quad	0x3fd7d87724fa8b4c              # double 0.372587
	.quad	0x3fed0fb86f47b678              # double 0.908169
	.quad	0x3fcfb749adc8fb87              # double 0.247781
	.quad	0x3fe0d6e264e48627              # double 0.526231
	.quad	0x3fee256ffc115df6              # double 0.94206999999999996
	.quad	0x3feead96a6a0125a              # double 0.95869000000000004
	.quad	0x3fe8dad96a6a0126              # double 0.77671500000000004
	.quad	0x3fdc0b135979181a              # double 0.43817600000000001
	.quad	0x3fba25b749adc8fc              # double 0.10213800000000001
	.quad	0x3fe86cbfb15b573f              # double 0.76327500000000004
	.quad	0x3fdbecaeea63b689              # double 0.43632100000000001
	.quad	0x3fddf5dfeb8d8234              # double 0.46813199999999999
	.quad	0x3fee2fb3b7521145              # double 0.94332300000000002
	.quad	0x3fcdf3519bd4067d              # double 0.233988
	.quad	0x3fe7cbf2b239a390              # double 0.74364600000000003
	.quad	0x3fda333b96af038e              # double 0.40937699999999999
	.quad	0x3f9c1d6cf850df16              # double 0.027456000000000001
	.quad	0x3fe2009917939a7c              # double 0.56257299999999999
	.quad	0x3fbfae147ae147ae              # double 0.12375
	.quad	0x3fe83e7f2c3009b3              # double 0.757629
	.quad	0x3fdf101f31f46ed2              # double 0.48535899999999998
	.quad	0x3fe2e4f3343fa2ad              # double 0.59044799999999997
	.quad	0x3fe5f166e008e9b4              # double 0.68571800000000005
	.quad	0x3fee2b5e529bae47              # double 0.94279400000000002
	.quad	0x3fec63c74fb549f9              # double 0.88717999999999997
	.quad	0x3fe3ebe9c886162f              # double 0.62254799999999999
	.quad	0x3fe97a0b5ed8d36b              # double 0.79614799999999997
	.quad	0x3fe435a63f9a49c3              # double 0.63154900000000003
	.quad	0x3fc01450efdc9c4e              # double 0.12562000000000001
	.quad	0x3fb61d53cddd6e05              # double 0.086385000000000003
	.quad	0x3fd04638c9752978              # double 0.25428600000000001
	.quad	0x3fe62f9ca5bd944b              # double 0.69331200000000004
	.quad	0x3fde9b5e95b78cca              # double 0.47823300000000002
	.quad	0x3fe719fa11a975b0              # double 0.72192100000000003
	.quad	0x3fe4468cac4b4d05              # double 0.63361199999999995
	.quad	0x3fe12c4b4d056c51              # double 0.53665700000000005
	.quad	0x3fdcaa64c2f837b5              # double 0.44790000000000002
	.quad	0x3fb47bdcf0307f24              # double 0.080015000000000003
	.quad	0x3fefaa51e321a2e8              # double 0.989541
	.quad	0x3fe3b39e279dd3bb              # double 0.615676
	.quad	0x3fd2e01de2691644              # double 0.294929
	.quad	0x3feac30f49491f2e              # double 0.83631100000000003
	.quad	0x3fd8ae18ac9f2fdc              # double 0.38562600000000002
	.quad	0x3fe0c9667b5f1bef              # double 0.52458499999999997
	.quad	0x3fe83838c111ada7              # double 0.75686299999999995
	.quad	0x3fc970bd017dae82              # double 0.19875300000000001
	.quad	0x3fecded8d36b4c7f              # double 0.90220299999999998
	.quad	0x3fd720685553ef6b              # double 0.36135299999999998
	.quad	0x3fdc621fafc8b008              # double 0.44348900000000002
	.quad	0x3fcd38ac18f81e8a              # double 0.22829199999999999
	.quad	0x3fe5dd56f32bdc27              # double 0.68326900000000002
	.quad	0x3fe2e004b7f5a533              # double 0.58984599999999998
	.quad	0x3fc01344806290ef              # double 0.12558800000000001
	.quad	0x3fb0052d666a9824              # double 0.062578999999999996
	.quad	0x3fdf104d551d68c7              # double 0.48537000000000002
	.quad	0x3fbe5614df8b1572              # double 0.118501
	.quad	0x3fe7305319828805              # double 0.72464899999999999
	.quad	0x3fe7c5132f87ad08              # double 0.742807
	.quad	0x3fae93c03bc4d22d              # double 0.059721000000000003
	.quad	0x3fe3a682b6284599              # double 0.61407599999999996
	.quad	0x3fe011819d2391d5              # double 0.50213699999999994
	.quad	0x3fd2a4b5568e820e              # double 0.29130299999999998
	.quad	0x3fefc5f5ad96a6a0              # double 0.99291499999999999
	.quad	0x3fdb20afa2f05a71              # double 0.42387000000000002
	.quad	0x3fc22174c4cdfaca              # double 0.14164599999999999
	.quad	0x3fe6d70e6f2e8c05              # double 0.71375200000000005
	.quad	0x3fae2bae03b3e9a7              # double 0.058927
	.quad	0x3fe9c083126e978d              # double 0.80474999999999997
	.quad	0x3fd0e358298cc144              # double 0.263876
	.quad	0x3fee20a5269595ff              # double 0.94148500000000002
	.quad	0x3fe0a6e5471715c6              # double 0.52037299999999997
	.quad	0x3fe77cc39ffd60e9              # double 0.73397999999999997
	.quad	0x3fda63065f9591cd              # double 0.41229399999999999
	.quad	0x3fc5ff583a53b8e5              # double 0.17185500000000001
	.quad	0x3f81a4bdba0a5269              # double 0.0086149999999999993
	.quad	0x3fe7b11a543f1c76              # double 0.74036900000000005
	.quad	0x3fe0610f0e90bc7b              # double 0.51184799999999997
	.quad	0x3fda2f1ed17c5ef6              # double 0.40912599999999999
	.quad	0x3fe47a05143bf727              # double 0.63989499999999999
	.quad	0x3f7949e8815e3971              # double 0.0061739999999999998
	.quad	0x3fe5e199780baa58              # double 0.68378899999999998
	.quad	0x3fed5a61e0c5a815              # double 0.91728299999999996
	.quad	0x3fb213e3e29307af              # double 0.070615999999999998
	.quad	0x3fd7c11e42e12620              # double 0.37116199999999999
	.quad	0x3fe502d9cf13ceea              # double 0.65659800000000001
	.quad	0x3fda9c3ce2089e34              # double 0.41578599999999999
	.quad	0x3fc825f202107b78              # double 0.18865799999999999
	.quad	0x3fefaaa5c5f7c676              # double 0.98958100000000004
	.quad	0x3faa7b0b39192642              # double 0.051720000000000002
	.quad	0x3feeb5c9e6687f45              # double 0.95969099999999996
	.quad	0x3fb0dde7a743a648              # double 0.065886
	.quad	0x3fdfaf20ea5b530d              # double 0.495064
	.quad	0x3fe25944aa53fc01              # double 0.57339700000000005
	.quad	0x3fe7106034f3fd93              # double 0.72074899999999997
	.quad	0x3fedb1c0010c6f7a              # double 0.927948
	.quad	0x3fe4b10129cbab65              # double 0.64660700000000004
	.quad	0x3fe75a98676a7265              # double 0.72980900000000004
	.quad	0x3fe0938151a43782              # double 0.51800599999999997
	.quad	0x3fe5563a9f383f0c              # double 0.66677600000000004
	.quad	0x3feb91be6e653869              # double 0.861541
	.quad	0x3fe0b58f2e05ccc9              # double 0.52216300000000004
	.quad	0x3fea6a4441787054              # double 0.82547199999999998
	.quad	0x3fecd1526d8b1dd6              # double 0.90055200000000002
	.quad	0x3f860bf5d78811b2              # double 0.010765
	.quad	0x3f864a59c065b63d              # double 0.010884
	.quad	0x3fe951782d38476f              # double 0.79119499999999998
	.quad	0x3fdda5269595feda              # double 0.46320499999999998
	.quad	0x3fe085857afea3df              # double 0.51629899999999995
	.quad	0x3fd569b17481b21c              # double 0.33457599999999998
	.quad	0x3fe8a4b9884c6a3c              # double 0.77010800000000001
	.quad	0x3feff0eb24a6a876              # double 0.99815900000000002
	.quad	0x3fea399b2c40d0ab              # double 0.81953200000000004
	.quad	0x3fd88c8abd5dc400              # double 0.38357799999999997
	.quad	0x3fe78d3f1843c3a4              # double 0.73599199999999998
	.quad	0x3fe1eb8f9b13165d              # double 0.56000499999999998
	.quad	0x3fea580a17b0f6ad              # double 0.82324699999999995
	.quad	0x3fb8ddb5525cc426              # double 0.097132999999999997
	.quad	0x3fd655475a31a4be              # double 0.34895500000000002
	.quad	0x3fede2b6ae7d566d              # double 0.93392500000000001
	.quad	0x3fe15ca6ca03c4b1              # double 0.54256000000000004
	.quad	0x3fb8d8ba40d90e24              # double 0.097057000000000004
	.quad	0x3fc4af5771001d5c              # double 0.16160099999999999
	.quad	0x3fd26c5d206c8712              # double 0.28786400000000001
	.quad	0x3fd0baa9b499d020              # double 0.26139299999999999
	.quad	0x3fd8a3db3bfb58d1              # double 0.38500099999999998
	.quad	0x3fedb2788db0574b              # double 0.92803599999999997
	.quad	0x3fd940dd3fe1975f              # double 0.39458399999999999
	.quad	0x3fed1dde37585be2              # double 0.90989600000000004
	.quad	0x3fc515c63ae2541e              # double 0.16472700000000001
	.quad	0x3fed573eab367a10              # double 0.91690000000000005
	.quad	0x3fedb461309c7ffe              # double 0.92826900000000001
	.quad	0x3fea39a38fbca106              # double 0.81953600000000004
	.quad	0x3fbeec0724b76f6d              # double 0.12078899999999999
	.quad	0x3fd4a222d5171e2a              # double 0.32239600000000002
	.quad	0x3fe3180b242070b9              # double 0.59668500000000002
	.quad	0x3fe2c57c0b135979              # double 0.58660699999999999
	.quad	0x3fed1203a322af57              # double 0.90844899999999995
	.quad	0x3fe59cc964628028              # double 0.67538900000000002
	.quad	0x3fd357b84db9c737              # double 0.30222900000000003
	.quad	0x3fe223f8982cb210              # double 0.56689100000000003
	.quad	0x3fc72cb641700cd8              # double 0.18105199999999999
	.quad	0x3fede5f30e7ff584              # double 0.93432000000000003
	.quad	0x3fe1957689ca18bd              # double 0.54949499999999996
	.quad	0x3fdb47496aad1d04              # double 0.42622599999999999
	.quad	0x3fd10eb24a6a875d              # double 0.26652199999999998
	.quad	0x3fe2f63e4abe6a33              # double 0.59255899999999995
	.quad	0x3fe58dbcec84f8f9              # double 0.67355200000000004
	.quad	0x3fe10a7829068987              # double 0.532528
	.quad	0x3fea4450268900c5              # double 0.82083899999999999
	.quad	0x3fe1ecfe9b7bf1e9              # double 0.56018000000000001
	.quad	0x3fda5f78359bc340              # double 0.41207700000000003
	.quad	0x3fd977e1b8ed1bf8              # double 0.39794200000000002
	.quad	0x3fd94d7f0ed3d85a              # double 0.39535500000000001
	.quad	0x3fe50e29f9ce8d97              # double 0.65797899999999998
	.quad	0x3fe31bb4916ca46e              # double 0.597132
	.quad	0x3fa617a02fb5d031              # double 0.043149
	.quad	0x3fc5cc39ffd60e95              # double 0.170295
	.quad	0x3fdad74927913e81              # double 0.41938999999999999
	.quad	0x3fef89b738e6d15b              # double 0.98556100000000002
	.quad	0x3fd9ab96f21f6cad              # double 0.40109800000000001
	.quad	0x3fd10678c0053e2d              # double 0.26601999999999998
	.quad	0x3fd3bfc6540cc78f              # double 0.30858000000000002
	.quad	0x3fcc02d16b97fe8f              # double 0.218836
	.quad	0x3fe013ad5bee3d60              # double 0.50240200000000002
	.quad	0x3fc77ca2120e1f7d              # double 0.18349099999999999
	.quad	0x3feebeee52589268              # double 0.96080699999999996
	.quad	0x3fd74c1a8ac5c140              # double 0.36402000000000001
	.quad	0x3fd69fd36f7e3d1d              # double 0.35350500000000001
	.quad	0x3fecd102bc72e276              # double 0.90051400000000004
	.quad	0x3fe4ddaf07bfe7e2              # double 0.652061
	.quad	0x3febff562174c4ce              # double 0.874919
	.quad	0x3fc8bdcad14a0a0f              # double 0.19329199999999999
	.quad	0x3fdcec39799e518f              # double 0.45191799999999999
	.quad	0x3fd5bb341e14bdfd              # double 0.33955099999999999
	.quad	0x3fd92dba4d6e47dc              # double 0.39341599999999999
	.quad	0x3feb1d0203e63e8e              # double 0.84729100000000002
	.quad	0x3fd7a7ac81d3aa37              # double 0.36960900000000002
	.quad	0x3fe6d35653c9abb0              # double 0.71329799999999999
	.quad	0x3fd7da4484944ed7              # double 0.372697
	.quad	0x3fee3413986338b4              # double 0.94385699999999994
	.quad	0x3fd4e11dbca9691a              # double 0.32623999999999997
	.quad	0x3fc24c9c90c4dec2              # double 0.14296300000000001
	.quad	0x3fe4f3fb7a5f41af              # double 0.654783
	.quad	0x3fda63886594af4f              # double 0.412325
	.quad	0x3fe4d9be4cd74928              # double 0.65158000000000005
	.quad	0x3fd40d306a2b1705              # double 0.313305
	.quad	0x3fdc77ab324851a8              # double 0.44480399999999998
	.quad	0x3fe28c8cd63cb817              # double 0.57965699999999998
	.quad	0x3fd0574b40703298              # double 0.255328
	.quad	0x3fa30af5fd47bedb              # double 0.037192999999999997
	.quad	0x3fe928ae74f2f124              # double 0.78621600000000002
	.quad	0x3fe18cd63cb81733              # double 0.54844199999999999
	.quad	0x3fc015c209246bf0              # double 0.125664
	.quad	0x3fcd5c52e72da123              # double 0.22938
	.quad	0x3fd66709fa54c554              # double 0.35003899999999999
	.quad	0x3fdcc91d14e3bcd3              # double 0.44977499999999998
	.quad	0x3fe7cfe154434e33              # double 0.74412599999999995
	.quad	0x3fa4970f7b9e0610              # double 0.040215000000000001
	.quad	0x3fe199e731d2e0e3              # double 0.550037
	.quad	0x3fe00e0221426fe7              # double 0.50170999999999999
	.quad	0x3fee968b5cbff477              # double 0.95587699999999998
	.quad	0x3fc2eef1bac2df0d              # double 0.14791699999999999
	.quad	0x3feb66687f455a7d              # double 0.85625099999999998
	.quad	0x3fe615c422036007              # double 0.69015700000000002
	.quad	0x3fd5e4606748e475              # double 0.34206399999999998
	.quad	0x3fc3e4bcad9ad85e              # double 0.155418
	.quad	0x3fdd57e23f24d8fd              # double 0.45848899999999998
	.quad	0x3fec63beec39799e              # double 0.88717599999999996
	.quad	0x3fc5b224aada33be              # double 0.16949900000000001
	.quad	0x3feed8ec95bff045              # double 0.96397999999999994
	.quad	0x3fe4ff0aa21a719b              # double 0.65613299999999997
	.quad	0x3fc99d12cadddf44              # double 0.20010600000000001
	.quad	0x3fd62b7fe08aefb3              # double 0.34640500000000002
	.quad	0x3fc4d35a858793de              # double 0.16270000000000001
	.quad	0x3fe4e72756861e93              # double 0.65321700000000005
	.quad	0x3fdf8055fbb517a4              # double 0.49220799999999998
	.quad	0x3fe9dbad3a604e1e              # double 0.80806599999999995
	.quad	0x3fe28c49ba5e353f              # double 0.57962499999999995
	.quad	0x3fca7f0aa21a719b              # double 0.20700199999999999
	.quad	0x3fef886594af4f0e              # double 0.98540000000000005
	.quad	0x3fc41b7e0ac7da1f              # double 0.15708900000000001
	.quad	0x3febf5104d551d69              # double 0.87366500000000002
	.quad	0x3fe4a396073de1e3              # double 0.64496900000000001
	.quad	0x3fde4801f75104d5              # double 0.47314499999999998
	.quad	0x3fe6baa582dbe7f3              # double 0.71028400000000003
	.quad	0x3fd3840181e03f70              # double 0.30493199999999998
	.quad	0x3fddde26916440f2              # double 0.46668399999999999
	.quad	0x3fc886594af4f0d8              # double 0.19159999999999999
	.quad	0x3fe03efd00713f07              # double 0.50768899999999995
	.quad	0x3fe639eadd590c0b              # double 0.69457000000000002
	.quad	0x3fed7c1376d54973              # double 0.92139599999999999
	.quad	0x3fcae7ab7564302b              # double 0.21019499999999999
	.quad	0x3feb7d933e35c5b5              # double 0.85907900000000004
	.quad	0x3fe5132d6ece13f5              # double 0.65859100000000004
	.quad	0x3fc3e310dbf0563f              # double 0.15536700000000001
	.quad	0x3fa07df5cf2495e1              # double 0.032210999999999997
	.quad	0x3fdc95c422036007              # double 0.44664100000000001
	.quad	0x3f924e9c4545846f              # double 0.017878000000000002
	.quad	0x3fe3705c896dd26b              # double 0.60746599999999995
	.quad	0x3fd5da6a44417870              # double 0.34145599999999998
	.quad	0x3fb1e41d4b6a619e              # double 0.069887000000000005
	.quad	0x3fde67125dd095af              # double 0.47504099999999999
	.quad	0x3fdf7075b3e1437c              # double 0.49123899999999998
	.quad	0x3fe0e11ba3ca7504              # double 0.52747900000000003
	.quad	0x3fe5e3baba7b9171              # double 0.68404900000000002
	.quad	0x3fc969fcf3dc054f              # double 0.198547
	.quad	0x3fd02089e34330d7              # double 0.25198599999999999
	.quad	0x3fe0bdf2a9d627bf              # double 0.52318699999999996
	.quad	0x3fc3455a7d24180d              # double 0.15055399999999999
	.quad	0x3fc43a5c1c6088d7              # double 0.158031
	.quad	0x3fdc6f0cfe154435              # double 0.44427800000000001
	.quad	0x3fbb91c4b90214ad              # double 0.107693
	.quad	0x3feebc621b7e0ac8              # double 0.96049600000000001
	.quad	0x3f81819d2391d580              # double 0.008548
	.quad	0x3fe4822dd7a99fa1              # double 0.64089099999999999
	.quad	0x3fe29550ca1cef24              # double 0.58072699999999999
	.quad	0x3fd05ef62f9ca5be              # double 0.25579600000000002
	.quad	0x3fe14ed4e4c942d5              # double 0.54087300000000005
	.quad	0x3fd9f3a14cec41dd              # double 0.40549499999999999
	.quad	0x3fea15810624dd2f              # double 0.81512499999999999
	.quad	0x3fd161f5be5d9e41              # double 0.27160400000000001
	.quad	0x3fd3f9ca5bd944aa              # double 0.31212099999999998
	.quad	0x3fc137d1fe64f54d              # double 0.134516
	.quad	0x3fc87980f55de58e              # double 0.19120799999999999
	.quad	0x3feccd338f798527              # double 0.90004899999999999
	.quad	0x3f952f7f498c3b0c              # double 0.020688999999999999
	.quad	0x3fef709310129cbb              # double 0.98249200000000003
	.quad	0x3feebe5753a3ec03              # double 0.960735
	.quad	0x3fe6790d9d7774ac              # double 0.70227700000000004
	.quad	0x3feb52ac753e707e              # double 0.85384199999999999
	.quad	0x3feafeac42e9899c              # double 0.843588
	.quad	0x3fd663e8dda48b65              # double 0.34984799999999999
	.quad	0x3fdb0ff972474539              # double 0.42285
	.quad	0x3fd546887a8d64d8              # double 0.33243
	.quad	0x3fedaeff5c6c11a1              # double 0.92761199999999999
	.quad	0x3fc194a6eb91b3f2              # double 0.137349
	.quad	0x3fe762131a8ef77f              # double 0.73072199999999998
	.quad	0x3fe6a33bd9cae211              # double 0.707426
	.quad	0x3fea6c2699c7bcc3              # double 0.82570200000000005
	.quad	0x3fd6ec17ebaf1023              # double 0.35815999999999998
	.quad	0x3fc928522ea0fd3b              # double 0.196543
	.quad	0x3fe66a18372e6a77              # double 0.70045100000000005
	.quad	0x3fee92c061847f56              # double 0.95541399999999999
	.quad	0x3fde158750c1b973              # double 0.47006399999999998
	.quad	0x3fe57f327aa68f4b              # double 0.67177699999999996
	.quad	0x3fc501754b05b7d0              # double 0.164107
	.quad	0x3fe1894812be48a6              # double 0.54800800000000005
	.quad	0x3fe7a44417870542              # double 0.73880199999999996
	.quad	0x3fdfd916872b020c              # double 0.49762499999999998
	.quad	0x3fe9911f0c34c1a9              # double 0.79896500000000004
	.quad	0x3fe41322f2734f83              # double 0.627336
	.quad	0x3fee61ed5ae1cde6              # double 0.94945400000000002
	.quad	0x3fd29f51697f1f9b              # double 0.29097400000000001
	.quad	0x3fd1f91600f34507              # double 0.28082800000000002
	.quad	0x3fec7eac42e9899c              # double 0.890463
	.quad	0x3f92a0a958537e2c              # double 0.018190999999999999
	.quad	0x3fbb161a1db877ab              # double 0.105806
	.quad	0x3fe497ce52deca25              # double 0.64353099999999996
	.quad	0x3fe68aa21a719b4e              # double 0.70442300000000002
	.quad	0x3fcf063e07a28bb1              # double 0.24237800000000001
	.quad	0x3fe07d2e94680171              # double 0.51528099999999999
	.quad	0x3fb6038194c01605              # double 0.085990999999999998
	.quad	0x3fcf928e0c9d9d34              # double 0.24665999999999999
	.quad	0x3fe2b2a0663c74fb              # double 0.58430499999999996
	.quad	0x3fd1400b88ca3e7d              # double 0.269534
	.quad	0x3fd9f190d173fb7a              # double 0.40536899999999998
	.quad	0x3fe5799c38b04ab6              # double 0.671095
	.quad	0x3fcd14f483cafb3b              # double 0.22720199999999999
	.quad	0x3fc2f33ca31e7d9a              # double 0.14804800000000001
	.quad	0x3fb5d40ee06d9381              # double 0.085266999999999996
	.quad	0x3fdb59791819d239              # double 0.42733599999999999
	.quad	0x3fbb0c88a47ecfea              # double 0.10566
	.quad	0x3fc510cb295e9e1b              # double 0.164575
	.quad	0x3fbb607c4199fe43              # double 0.10694099999999999
	.quad	0x3fd85a14488c60cc              # double 0.380498
	.quad	0x3fded362e9036439              # double 0.48165200000000002
	.quad	0x3fed7fc5479d4d83              # double 0.92184699999999997
	.quad	0x3febe7296f6512a9              # double 0.87196799999999997
	.quad	0x3fd2fea8112ba16e              # double 0.29679299999999997
	.quad	0x3fc494c447c30d30              # double 0.16078999999999999
	.quad	0x3fdbf162ae4b0186              # double 0.436608
	.quad	0x3fa9a47a9e2bcf92              # double 0.050083000000000003
	.quad	0x3f766e008e9b38d6              # double 0.005476
	.quad	0x3fe66a550870110a              # double 0.70047999999999999
	.quad	0x3fe81da7b0b39192              # double 0.75361999999999996
	.quad	0x3fef1ac36544fe37              # double 0.97201700000000001
	.quad	0x3fee55a7d24180d4              # double 0.94795600000000002
	.quad	0x3fd470153bd16766              # double 0.31934099999999999
	.quad	0x3fe4528283d35eb7              # double 0.63507199999999997
	.quad	0x3fdcb23dd54da4cf              # double 0.44837900000000003
	.quad	0x3fd1697aeddce7cd              # double 0.272063
	.quad	0x3fd36922d948dc12              # double 0.30329200000000001
	.quad	0x3fec56fb8f57f738              # double 0.88561800000000002
	.quad	0x3fec007357e670e3              # double 0.87505500000000003
	.quad	0x3fccf51266341180              # double 0.22622900000000001
	.quad	0x3fc0bacf7446f9ba              # double 0.13070100000000001
	.quad	0x3fdc5bb7b6bb1290              # double 0.44309799999999999
	.quad	0x3fe124edf6124074              # double 0.53575799999999996
	.quad	0x3fd1ca36199780bb              # double 0.27796700000000002
	.quad	0x3fecc49ba5e353f8              # double 0.89900000000000002
	.quad	0x3fde7df5cf2495e1              # double 0.47643799999999997
	.quad	0x3fba6f60e0eb67c3              # double 0.10326200000000001
	.quad	0x3fdcba732df505d1              # double 0.44888
	.quad	0x3fde3b8a19c9d5a2              # double 0.47238400000000003
	.quad	0x3fd6415f45e0b4e1              # double 0.34773999999999999
	.quad	0x3feb0db48909289e              # double 0.84542300000000004
	.quad	0x3fd7e525892684cf              # double 0.373361
	.quad	0x3fd830df9bdc69f9              # double 0.37798300000000001
	.quad	0x3fadf3d7d3910c2c              # double 0.058500999999999997
	.quad	0x3feb9333b96af039              # double 0.86171900000000001
	.quad	0x3febab063e07a28c              # double 0.86462700000000003
	.quad	0x3fe386e19b90ea9e              # double 0.61021499999999995
	.quad	0x3fe80088509bf9c6              # double 0.75006499999999998
	.quad	0x3fe5e20ab7132724              # double 0.68384299999999998
	.quad	0x3f78b71b8aa00193              # double 0.0060340000000000003
	.quad	0x3fe7a036006d0d4a              # double 0.73830700000000005
	.quad	0x3fdf2e9468017119              # double 0.48721799999999998
	.quad	0x3fdcba16e7a311e8              # double 0.44885799999999998
	.quad	0x3fb0a3c64345cfee              # double 0.064999000000000001
	.quad	0x3fc1a554b8bef8cf              # double 0.13785800000000001
	.quad	0x3fd595e17e34b945              # double 0.33727299999999999
	.quad	0x3feca46bf01322f2              # double 0.89507099999999995
	.quad	0x3fb4ba0e8427418d              # double 0.080963999999999994
	.quad	0x3fe6f25e56cd6c2f              # double 0.717086
	.quad	0x3fd8dd97f62b6ae8              # double 0.38852500000000001
	.quad	0x3fd9c358afc47e4a              # double 0.40254800000000002
	.quad	0x3fd0dacabc515486              # double 0.26335399999999998
	.quad	0x3fea7b395c422036              # double 0.827542
	.quad	0x3fd45510d38cda6e              # double 0.31769199999999997
	.quad	0x3fe0d8644523f67f              # double 0.52641499999999997
	.quad	0x3fd8cdcca70d1fa3              # double 0.38756099999999999
	.quad	0x3fc792c061847f56              # double 0.184166
	.quad	0x3fad10f51ac9afe2              # double 0.056770000000000001
	.quad	0x3fe410b84988094e              # double 0.62704099999999996
	.quad	0x3f8a5d28d002e233              # double 0.012873000000000001
	.quad	0x3fe01409a2403148              # double 0.50244599999999995
	.quad	0x3fef02a3486f049b              # double 0.96907200000000004
	.quad	0x3fd0e6bc621b7e0b              # double 0.26408300000000001
	.quad	0x3febf3f316e37154              # double 0.87352899999999999
	.quad	0x3fe6e2a1b5c7cd8a              # double 0.71516500000000005
	.quad	0x3fd4a47ecfe9b7bf              # double 0.32253999999999999
	.quad	0x3fc9571d1d4738a4              # double 0.19797100000000001
	.quad	0x3f562f166e008e9b              # double 0.001354
	.quad	0x3fed0ca3e7d13511              # double 0.90779299999999996
	.quad	0x3fd2ec41dd1a21ea              # double 0.29566999999999999
	.quad	0x3fefe0a63305100a              # double 0.99617299999999998
	.quad	0x3fd254d1e96c3fc4              # double 0.28642699999999999
	.quad	0x3fdaa6612839042e              # double 0.41640500000000003
	.quad	0x3fe15d63886594af              # double 0.54264999999999997
	.quad	0x3fd98d716d2aa5c6              # double 0.399258
	.quad	0x3fc4d6d3b6cbd988              # double 0.16280600000000001
	.quad	0x3fd029e4d5d80e49              # double 0.25255699999999998
	.quad	0x3fdc3d29563a9f38              # double 0.44123299999999999
	.quad	0x3fdd4d2f5dbb9cfa              # double 0.45783600000000002
	.quad	0x3fd9a554b8bef8cf              # double 0.40071600000000002
	.quad	0x3fdc6612839042d9              # double 0.44373000000000001
	.quad	0x3fe8f3c925785f8d              # double 0.77975899999999998
	.quad	0x3fe30d1526d8b1dd              # double 0.59534699999999996
	.quad	0x3fe4a719b4dcebff              # double 0.64539800000000003
	.quad	0x3fc79bcba3012168              # double 0.18444199999999999
	.quad	0x3fea6f8f041461b7              # double 0.82611800000000002
	.quad	0x3fef54f3775b8130              # double 0.97911999999999999
	.quad	0x3fe2379314445aa3              # double 0.56928400000000001
	.quad	0x3fe3a116659d12cb              # double 0.61341400000000001
	.quad	0x3fde1b1960fa15db              # double 0.47040399999999999
	.quad	0x3fcda0168b5cbff4              # double 0.23144799999999999
	.quad	0x3fede7c06e19b90f              # double 0.93454000000000004
	.quad	0x3fdeddf43c7d5ed0              # double 0.48229699999999998
	.quad	0x3fe62c14c660a201              # double 0.69288099999999997
	.quad	0x3fe7285a921ccd96              # double 0.72367599999999999
	.quad	0x3fe528b8f14db595              # double 0.66122099999999995
	.quad	0x3fee97ce52deca25              # double 0.95603099999999996
	.quad	0x3febe1d2178f68be              # double 0.87131599999999998
	.quad	0x3fee84dfce3150db              # double 0.95372000000000001
	.quad	0x3fca76af89c5e6ff              # double 0.20674699999999999
	.quad	0x3fa10b1feeb2d0a2              # double 0.033287999999999998
	.quad	0x3fe6cb9cb6848beb              # double 0.71235499999999996
	.quad	0x3fe7ee84ad794a6f              # double 0.74786600000000003
	.quad	0x3fde603d57796399              # double 0.47462399999999999
	.quad	0x3fe5f3f52fc2656b              # double 0.68603000000000003
	.quad	0x3fee9f2990f301eb              # double 0.95692900000000003
	.quad	0x3fd70ef1348b2208              # double 0.36028700000000002
	.quad	0x3fe2f3215fcc1872              # double 0.59217900000000001
	.quad	0x3fea6fc158fb43d9              # double 0.82614200000000004
	.quad	0x3fb7c9eecbfb15b5              # double 0.092924999999999994
	.quad	0x3fa834b0e1b4bb5e              # double 0.047277
	.quad	0x3fe09a32b12d3416              # double 0.51882300000000003
	.quad	0x3fe91d51b4fe79ee              # double 0.784829
	.quad	0x3fe372b020c49ba6              # double 0.60775000000000001
	.quad	0x3fd15dc8323358f3              # double 0.27134900000000001
	.quad	0x3fea640c8472c0e8              # double 0.82471300000000003
	.quad	0x3fbe848beb5b2d4d              # double 0.11921
	.quad	0x3fe6e0ed80a17b0f              # double 0.71495699999999995
	.quad	0x3fc2f5019f3c70ca              # double 0.14810200000000001
	.quad	0x3feb9cc964628028              # double 0.86288900000000002
	.quad	0x3fe4c57c0b135979              # double 0.64910699999999999
	.quad	0x3fe26075f6fd21ff              # double 0.57427499999999998
	.quad	0x3fe59791819d2392              # double 0.67475200000000002
	.quad	0x3fb08aefb2aae297              # double 0.064619999999999997
	.quad	0x3fefa85ec3dab5c4              # double 0.98930300000000004
	.quad	0x3fd6cb5781c714fd              # double 0.35616100000000001
	.quad	0x3fe3c2f1ed17c5ef              # double 0.61754699999999996
	.quad	0x3fc55aaf78feef5f              # double 0.16683000000000001
	.quad	0x3fd302602c9081c3              # double 0.29702000000000001
	.quad	0x3fa775d9a0f0a5f0              # double 0.045821000000000001
	.quad	0x3fc4ea63b688bda9              # double 0.16340299999999999
	.quad	0x3fe323b7952d234f              # double 0.59811000000000003
	.quad	0x3fc0c996b76709fa              # double 0.13115199999999999
	.quad	0x3fef0e30446b69db              # double 0.97048199999999995
	.quad	0x3fd69f559b3d07c8              # double 0.35347499999999998
	.quad	0x3fe471a9fbe76c8b              # double 0.63887499999999997
	.quad	0x3fcfb320535c9e67              # double 0.24765400000000001
	.quad	0x3fa29d8409e55c10              # double 0.036358000000000001
	.quad	0x3fb966cf41f212d7              # double 0.099224999999999994
	.quad	0x3feff8cc9a77e5eb              # double 0.99912100000000003
	.quad	0x3fe51754b05b7cfe              # double 0.65909799999999996
	.quad	0x3fba2fbe33acd5b7              # double 0.10229100000000001
	.quad	0x3fd8093964a59c06              # double 0.37556299999999998
	.quad	0x3fc18dde7a743a64              # double 0.13714199999999999
	.quad	0x3fdb10ba6266fd65              # double 0.42289599999999999
	.quad	0x3fe9649b1fab96f2              # double 0.79353099999999999
	.quad	0x3fe36e99a62ed352              # double 0.60725099999999999
	.quad	0x3fd6dd590c0ad03e              # double 0.35726000000000002
	.quad	0x3fe5d68a50507a6c              # double 0.68243900000000002
	.quad	0x3feeb5b0bbf50e34              # double 0.95967899999999994
	.quad	0x3fae68e3ef284168              # double 0.059394000000000002
	.quad	0x3fda7ae9ab29e4d6              # double 0.41375200000000001
	.quad	0x3fe3c84944ed6fdb              # double 0.61819900000000005
	.quad	0x3faa0945f9df548f              # double 0.050852000000000001
	.quad	0x3fd621e1d2178f69              # double 0.34581800000000001
	.quad	0x3fe5e681a9b8cb8e              # double 0.684388
	.quad	0x3fd990539fba450b              # double 0.39943400000000001
	.quad	0x3fdafce3150dae3e              # double 0.42168499999999998
	.quad	0x3fe275f2cb641701              # double 0.57689800000000002
	.quad	0x3fdc967caea747d8              # double 0.446685
	.quad	0x3fd7d48cb4aec8d6              # double 0.37234800000000001
	.quad	0x3fe3839cd8127b2d              # double 0.60981600000000002
	.quad	0x3fe58d9f90539fba              # double 0.67353799999999997
	.quad	0x3f81611ba3ca7504              # double 0.0084860000000000005
	.quad	0x3f8e3193f6c2699c              # double 0.014742999999999999
	.quad	0x3fc95336deb95e5b              # double 0.197852
	.quad	0x3fe422b7baecd078              # double 0.62923799999999996
	.quad	0x3fe61f0a1be2b496              # double 0.69128900000000004
	.quad	0x3fc3e3c968943e10              # double 0.155389
	.quad	0x3fe31c64ba94bbe4              # double 0.59721599999999997
	.quad	0x3fdf492ff4ba51a0              # double 0.488842
	.quad	0x3fee72cf95d4e8fb              # double 0.951515
	.quad	0x3fb0c9a77e5eaab0              # double 0.065576999999999996
	.quad	0x3fd9cb20fb224aae              # double 0.40302300000000002
	.quad	0x3fc5b13165d39970              # double 0.16947000000000001
	.quad	0x3fd434b51372a38c              # double 0.31571700000000003
	.quad	0x3fee9dda059a73b4              # double 0.95676899999999998
	.quad	0x3fef1d4d834091c1              # double 0.97232700000000005
	.quad	0x3fc8f07bfe7e1fc1              # double 0.19483900000000001
	.quad	0x3fe694898f605ab4              # double 0.70563200000000004
	.quad	0x3fd3d188f42fe825              # double 0.30966399999999999
	.quad	0x3fdcec679cc74b84              # double 0.45192900000000003
	.quad	0x3fe8c22467be553b              # double 0.77369900000000003
	.quad	0x3fe0726f1dc50ce5              # double 0.51396900000000001
	.quad	0x3fdbfd976ff3ade2              # double 0.43735299999999999
	.quad	0x3fd549a9973d9ec7              # double 0.332621
	.quad	0x3fbf1476af89c5e7              # double 0.121406
	.quad	0x3fe508a04d12018a              # double 0.65730299999999997
	.quad	0x3fcd1593e5fb71fc              # double 0.22722100000000001
	.quad	0x3fea38151a437825              # double 0.81934600000000002
	.quad	0x3fe04a6223e18698              # double 0.50907999999999998
	.quad	0x3febb1209edbf8ba              # double 0.86537200000000003
	.quad	0x3fd01fc08fa7a850              # double 0.251938
	.quad	0x3fe4ffa5d28d002e              # double 0.65620699999999998
	.quad	0x3fb42bd7f51efb6e              # double 0.078794000000000002
	.quad	0x3fef55219a847b24              # double 0.97914199999999995
	.quad	0x3fe78cfe154434e3              # double 0.73596099999999998
	.quad	0x3fd7d68837718655              # double 0.37246899999999999
	.quad	0x3feaff3061c79b35              # double 0.84365100000000004
	.quad	0x3feca027525460aa              # double 0.89454999999999996
	.quad	0x3fe2eb074a771c97              # double 0.59118999999999999
	.quad	0x3fa3fb3743632c1f              # double 0.039025999999999998
	.quad	0x3fb03ed959a30985              # double 0.063459000000000002
	.quad	0x3f7835158b827fa2              # double 0.0059100000000000003
	.quad	0x3fd9513b5bf6a0dc              # double 0.39558300000000002
	.quad	0x3f94755ffe6d58c9              # double 0.019979
	.quad	0x3fed34e3369b9d80              # double 0.91270600000000002
	.quad	0x3fd3d77b7c7820a3              # double 0.310027
	.quad	0x3fe2446f9b994e1a              # double 0.57085399999999997
	.quad	0x3fe72e557de0d66f              # double 0.72440599999999999
	.quad	0x3fd6cccccccccccd              # double 0.35625000000000001
	.quad	0x3fe3367c286f8ad2              # double 0.60040099999999996
	.quad	0x3fe83897204295a7              # double 0.75690800000000003
	.quad	0x3fdb5cd0bb6ed677              # double 0.42753999999999998
	.quad	0x3fe200bed740c415              # double 0.56259099999999995
	.quad	0x3feda0b8066c2acc              # double 0.92586900000000005
	.quad	0x3fef13c03bc4d22d              # double 0.97116100000000005
	.quad	0x3fe67f9f87f023ea              # double 0.70307900000000001
	.quad	0x3fe86935b91f70df              # double 0.76284300000000005
	.quad	0x3fd68f42fe82517e              # double 0.35249399999999997
	.quad	0x3fee9bb8c32a8c9c              # double 0.95650900000000005
	.quad	0x3fc1cce1c58255b0              # double 0.13906499999999999
	.quad	0x3fe9e6adb402d16c              # double 0.80940900000000004
	.quad	0x3fe87d3d4280ae10              # double 0.76528799999999997
	.quad	0x3fe0cbd1244a6224              # double 0.52488000000000001
	.quad	0x3fe77f88765ba6f0              # double 0.73431800000000003
	.quad	0x3fee6837f7be121f              # double 0.95022200000000001
	.quad	0x3fe7aa737110e454              # double 0.73955700000000002
	.quad	0x3fe14cec41dd1a22              # double 0.54064000000000001
	.quad	0x3fe4dc26dce39b45              # double 0.65187399999999995
	.quad	0x3fd4f13cee9dd7ed              # double 0.32722400000000001
	.quad	0x3fe1efd438d1d8a5              # double 0.56052599999999997
	.quad	0x3fd9a8da7f3cf701              # double 0.40093099999999998
	.quad	0x3fe0d40cc78e9f6b              # double 0.52588500000000005
	.quad	0x3fd5fbe33acd5b68              # double 0.343499
	.quad	0x3fad29131ec0b567              # double 0.056953999999999998
	.quad	0x3fdc48e4755ffe6d              # double 0.44194899999999998
	.quad	0x3f63b18dac258d58              # double 0.0024039999999999999
	.quad	0x3fe57e62dc6e2a80              # double 0.671678
	.quad	0x3fea6ed02cd39da1              # double 0.82602699999999996
	.quad	0x3fc433a4723aafff              # double 0.15782599999999999
	.quad	0x3fbb44a1f080303c              # double 0.106516
	.quad	0x3fe5316e37154003              # double 0.66228399999999998
	.quad	0x3fe471d1d4738a3b              # double 0.63889399999999996
	.quad	0x3fea14a0a0f4d7ae              # double 0.81501800000000002
	.quad	0x3fe2e481f53825e1              # double 0.59039399999999997
	.quad	0x3fbd3e5fb71fbc5e              # double 0.114233
	.quad	0x3fd32d44dca8e2e3              # double 0.29963800000000002
	.quad	0x3fe137f5a5332ad0              # double 0.53808100000000003
	.quad	0x3fe213dfb0d51f82              # double 0.56492600000000004
	.quad	0x3fc94d6a161e4f76              # double 0.19767499999999999
	.quad	0x3fef30c67168f8e8              # double 0.97470400000000001
	.quad	0x3fee733226c3b928              # double 0.95156200000000001
	.quad	0x3fd220d5629d840a              # double 0.28325400000000001
	.quad	0x3fdb89b951c5c572              # double 0.43028100000000002
	.quad	0x3fe7d7d5a9eb2075              # double 0.74509700000000001
	.quad	0x3fd0b9841aac53b1              # double 0.26132300000000003
	.quad	0x3fde92ddbdb5d895              # double 0.47771400000000003
	.quad	0x3fca772d5e071c54              # double 0.206762
	.quad	0x3fe38a6dacabc515              # double 0.61064799999999997
	.quad	0x3fa6ca03c4b09e99              # double 0.044510000000000001
	.quad	0x3fe463800218def4              # double 0.63714599999999999
	.quad	0x3fb0d4562e09fe87              # double 0.065740000000000007
	.quad	0x3f869ec2ce464990              # double 0.011044999999999999
	.quad	0x3fdcb6fe2e6ea854              # double 0.44866899999999998
	.quad	0x3fdccd5f99c38b05              # double 0.45003500000000002
	.quad	0x3fcc473cd573647c              # double 0.22092400000000001
	.quad	0x3fe3aa044ae85b9f              # double 0.61450400000000005
	.quad	0x3fc75d35653c9abb              # double 0.182532
	.quad	0x3fefabf11f926c7f              # double 0.98973900000000003
	.quad	0x3fd19fe004b7f5a5              # double 0.27538299999999999
	.quad	0x3fe55db9841aac54              # double 0.66769100000000003
	.quad	0x3feded45e9185cee              # double 0.93521399999999999
	.quad	0x3fb55feda6612839              # double 0.083495
	.quad	0x3fe9bcc07aaef2c7              # double 0.80429099999999998
	.quad	0x3fef0dae3e6c4c59              # double 0.97041999999999994
	.quad	0x3fcb71971c10d7bf              # double 0.21440400000000001
	.quad	0x3fe9d3f1843c3a43              # double 0.80712200000000001
	.quad	0x3fa48f10a99b6f5d              # double 0.040154000000000002
	.quad	0x3fce25204af92296              # double 0.235508
	.quad	0x3fd379b77c02afde              # double 0.30430400000000002
	.quad	0x3fdd99e518f3eccc              # double 0.46251799999999998
	.quad	0x3febeaceaaf35e31              # double 0.87241299999999999
	.quad	0x3fe3599029ae4f33              # double 0.60468299999999997
	.quad	0x3fb3c579f2346562              # double 0.077231999999999995
	.quad	0x3feadaf294dd7236              # double 0.83922699999999995
	.quad	0x3fe4e9878316a055              # double 0.65350699999999995
	.quad	0x3fec65dbfceb7889              # double 0.88743399999999995
	.quad	0x3fe961f5be5d9e41              # double 0.79320800000000002
	.quad	0x3fe01af3a14cec42              # double 0.50329000000000002
	.quad	0x3fef8af1cb89d6ae              # double 0.985711
	.quad	0x3fec243bb40b34e7              # double 0.87942299999999995
	.quad	0x3fe992ddbdb5d895              # double 0.79917800000000006
	.quad	0x3fd5bd5dc4007571              # double 0.33968300000000001
	.quad	0x3fd15c91d14e3bcd              # double 0.27127499999999999
	.quad	0x3f778e5c4eb56fb9              # double 0.005751
	.quad	0x3fe2c957cd466f50              # double 0.58707799999999999
	.quad	0x3fe4fcce1c58255b              # double 0.65586
	.quad	0x3fc2c63f141205bc              # double 0.146675
	.quad	0x3fe1519dece57109              # double 0.54121300000000006
	.quad	0x3febf69ca9ef5233              # double 0.87385400000000002
	.quad	0x3fe19676640a6b94              # double 0.54961700000000002
	.quad	0x3fe6f785729b280f              # double 0.71771499999999999
	.quad	0x3fd77eb28d8665e0              # double 0.36710799999999999
	.quad	0x3fbde98dcdb37c9a              # double 0.116845
	.quad	0x3fed124af0bf1a5d              # double 0.90848300000000004
	.quad	0x3fed3854046412cf              # double 0.91312599999999999
	.quad	0x3fcaff7dfa00e27e              # double 0.210922
	.quad	0x3fc11dffc5479d4e              # double 0.13372800000000001
	.quad	0x3fd636eb4e981388              # double 0.34710200000000002
	.quad	0x3fc79da9c99285a9              # double 0.184499
	.quad	0x3fc0d4c33b539325              # double 0.131493
	.quad	0x3fd1daec4a4095f2              # double 0.27898699999999999
	.quad	0x3fe680bed740c415              # double 0.70321599999999995
	.quad	0x3fe42b3cc4ac6cdb              # double 0.630278
	.quad	0x3fde34117f84449e              # double 0.47192800000000001
	.quad	0x3fecc755ffe6d58d              # double 0.89933300000000005
	.quad	0x3fec271151611ba4              # double 0.87976900000000002
	.quad	0x3faedb50f40e5a36              # double 0.060267000000000001
	.quad	0x3fa746cb966be7b0              # double 0.045462000000000002
	.quad	0x3fe6a209aaa3ad19              # double 0.70728000000000002
	.quad	0x3fea6d634549b62c              # double 0.82585299999999994
	.quad	0x3fd0ab21815a07b3              # double 0.26044499999999998
	.quad	0x3fd4eb5f5f0b2852              # double 0.32686599999999999
	.quad	0x3fd9b62c77574f72              # double 0.40174399999999999
	.quad	0x3fc1519bd4067cf2              # double 0.13530300000000001
	.quad	0x3fea5c7abfb9bed3              # double 0.82378899999999999
	.quad	0x3fe34998d045fe11              # double 0.60273399999999999
	.quad	0x3fbcf9d2bf551505              # double 0.113187
	.quad	0x3f909bf9c62a1b5c              # double 0.016219999999999998
	.quad	0x3fe3bac2df0d4131              # double 0.61654799999999998
	.quad	0x3fe558ea7ce0fc2f              # double 0.66710400000000003
	.quad	0x3feed5821294573a              # double 0.96356299999999995
	.quad	0x3fd55336deb95e5b              # double 0.333204
	.quad	0x3fac09e55c0fcb4f              # double 0.054762999999999999
	.quad	0x3fd6c4c9c90c4dec              # double 0.35576099999999999
	.quad	0x3fea8316a055757d              # double 0.82850199999999996
	.quad	0x3fd655d5f56a7ac8              # double 0.34898899999999999
	.quad	0x3fb4f0c77dd872f3              # double 0.081798999999999997
	.quad	0x3fd1a0a958537e2c              # double 0.27543099999999998
	.quad	0x3fcf347a5b0ff10f              # double 0.24378900000000001
	.quad	0x3fd4409a24031487              # double 0.31644299999999997
	.quad	0x3fa2df2ecf206424              # double 0.036859000000000003
	.quad	0x3fe7197e56473472              # double 0.721862
	.quad	0x3feb6d916872b021              # double 0.85712500000000003
	.quad	0x3f96049ecb31c21a              # double 0.021502
	.quad	0x3fcd085f4a1272c9              # double 0.22681799999999999
	.quad	0x3fe98b60f1b25f63              # double 0.79826399999999997
	.quad	0x3fdd28d434a01abd              # double 0.45561699999999999
	.quad	0x3fd8f3c70c996b76              # double 0.38987899999999998
	.quad	0x3fe672b239a38fbd              # double 0.70150100000000004
	.quad	0x3fe9c9081c2e33f0              # double 0.80579000000000001
	.quad	0x3fee1a3d2d87f887              # double 0.94070299999999996
	.quad	0x3fc0bd556084a516              # double 0.13077800000000001
	.quad	0x3fb7b0813cab81f9              # double 0.092536999999999994
	.quad	0x3fae4c942d490e67              # double 0.059178000000000001
	.quad	0x3fc0f81626b2f230              # double 0.13257099999999999
	.quad	0x3fb238c9752977c9              # double 0.071179000000000006
	.quad	0x3fdd4ddb5525cc42              # double 0.45787699999999998
	.quad	0x3fec7eb8d8234224              # double 0.89046899999999995
	.quad	0x3fe04295a6c5d207              # double 0.50812800000000002
	.quad	0x3fd6fe82517e77d5              # double 0.35928399999999999
	.quad	0x3fe96ca89fc6da45              # double 0.79451400000000005
	.quad	0x3fef601de2691644              # double 0.98048299999999999
	.quad	0x3fd36fdeb52c9d17              # double 0.303703
	.quad	0x3fdff5ad96a6a012              # double 0.49936999999999998
	.quad	0x3fccb05b7cfe5860              # double 0.224132
	.quad	0x3fe9577963992c8c              # double 0.79192799999999996
	.quad	0x3fcc74c8ffb8b264              # double 0.22231400000000001
	.quad	0x3fe33a2df9378ee3              # double 0.60085200000000005
	.quad	0x3fee50ce4ead0c3d              # double 0.94736399999999998
	.quad	0x3fcad44dca8e2e2c              # double 0.20960400000000001
	.quad	0x3fb20c7c0f451761              # double 0.070502999999999996
	.quad	0x3fd5ed7c6fbd273d              # double 0.34261999999999998
	.quad	0x3fb48398a65492ff              # double 0.080132999999999996
	.quad	0x3fd0787ce95faa8b              # double 0.25735400000000003
	.quad	0x3febabef06b37868              # double 0.86473800000000001
	.quad	0x3fe748e4755ffe6d              # double 0.72764799999999996
	.quad	0x3fef7459d99029ae              # double 0.98295299999999997
	.quad	0x3fc1e5aff2a172ac              # double 0.139822
	.quad	0x3fe8c0c62e4d1a65              # double 0.773532
	.quad	0x3fed1693c03bc4d2              # double 0.90900599999999998
	.quad	0x3fc030e3cd9a5226              # double 0.12649199999999999
	.quad	0x3fde32acfb762d84              # double 0.47184300000000001
	.quad	0x3fdd99fe43675ddd              # double 0.46252399999999999
	.quad	0x3fa50331e3a7daa5              # double 0.04104
	.quad	0x3fed9a6937d1fe65              # double 0.925099
	.quad	0x3fc0e1719f7f8ca8              # double 0.13188
	.quad	0x3fefb96af038e2a0              # double 0.99138400000000004
	.quad	0x3fe0b0f49491f2dc              # double 0.52160099999999998
	.quad	0x3fd295464dc22ab2              # double 0.29036099999999998
	.quad	0x3fd1892ab68cef67              # double 0.27399699999999999
	.quad	0x3fd7d972cd7cf5f5              # double 0.37264700000000001
	.quad	0x3fe2917939a7c17b              # double 0.58025800000000005
	.quad	0x3fbb508f648c7193              # double 0.106698
	.quad	0x3fca78d0cc35ce18              # double 0.206812
	.quad	0x3fb41c1d6cf850df              # double 0.078553999999999999
	.quad	0x3fe46dc3bd599243              # double 0.63839900000000005
	.quad	0x3fecbf8769ec2ce4              # double 0.89837999999999995
	.quad	0x3fe61e731d2e0e30              # double 0.69121699999999997
	.quad	0x3fe4d49f94855da2              # double 0.65095499999999995
	.quad	0x3fd4087ca643cc08              # double 0.31301800000000002
	.quad	0x3fe3ee6d9be4cd75              # double 0.62285500000000005
	.quad	0x3fcf061c79b34a45              # double 0.24237400000000001
	.quad	0x3fbfdddb1209edc0              # double 0.12447900000000001
	.quad	0x3fe0459fb1e18efc              # double 0.50849900000000003
	.quad	0x3fd5e62131a8ef78              # double 0.342171
	.quad	0x3fe12474538ef34d              # double 0.53569999999999995
	.quad	0x3fc760d0247021d1              # double 0.182642
	.quad	0x3fc5a0dfdef8487c              # double 0.16897200000000001
	.quad	0x3fdceac8605681ed              # double 0.45183000000000001
	.quad	0x3fd573ffac1d29dc              # double 0.33520499999999998
	.quad	0x3feb0b2a6b0d9514              # double 0.845113
	.quad	0x3fd50b5675579af2              # double 0.32881700000000003
	.quad	0x3fd9c8323358f2e0              # double 0.40284399999999998
	.quad	0x3fef1949e8815e39              # double 0.97183699999999995
	.quad	0x3fe91aaa3ad18d26              # double 0.78450500000000001
	.quad	0x3fa58127b2cc7086              # double 0.042000999999999997
	.quad	0x3fb1e90795f676ea              # double 0.069961999999999996
	.quad	0x3fdb51a86940357a              # double 0.42685899999999999
	.quad	0x3fe9129ed3953dea              # double 0.78352299999999997
	.quad	0x3fecc31162281345              # double 0.89881200000000006
	.quad	0x3fb6756861e92924              # double 0.087729000000000001
	.quad	0x3fc05ca29845dc83              # double 0.127827
	.quad	0x3fe7c3b70ef56649              # double 0.742641
	.quad	0x3fb35e2046c764ae              # double 0.075655
	.quad	0x3fa6c1c1d6cf850e              # double 0.044447
	.quad	0x3fc37c3d68405b3a              # double 0.152229
	.quad	0x3fea40bbb1f255f3              # double 0.82040199999999996
	.quad	0x3fec0852b4d8ba41              # double 0.87601600000000002
	.quad	0x3fe92ecd07852f7f              # double 0.78696299999999997
	.quad	0x3fcefaeff5c6c11a              # double 0.242033
	.quad	0x3fe3be9c886162f1              # double 0.61701799999999996
	.quad	0x3fecd955714b9cb7              # double 0.90153000000000005
	.quad	0x3fd6ebaf102363b2              # double 0.35813499999999998
	.quad	0x3faf926c7eae5bc8              # double 0.061663999999999997
	.quad	0x3fed105c03361566              # double 0.90824700000000003
	.quad	0x3fa2860dcb9a9da6              # double 0.036179000000000003
	.quad	0x3fe9945d851654d6              # double 0.79936099999999999
	.quad	0x3fd841b328b6d86f              # double 0.37901000000000001
	.quad	0x3fe275ddd2ae8e1d              # double 0.57688799999999996
	.quad	0x3fd06238da3c2118              # double 0.25599499999999997
	.quad	0x3fd7a9eb2074ea8e              # double 0.36974600000000002
	.quad	0x3f9938583621fafd              # double 0.024629000000000002
	.quad	0x3feb026aa8eb4635              # double 0.84404500000000005
	.quad	0x3fbe2d83c6c97d8d              # double 0.117882
	.quad	0x3fed07c200c0f020              # double 0.90719700000000003
	.quad	0x3fe90d5842b734b5              # double 0.78287899999999999
	.quad	0x3fdfb74ddf86e3b4              # double 0.49556299999999998
	.quad	0x3fd298fa376922d9              # double 0.29058699999999998
	.quad	0x3fb5eaee2003ab86              # double 0.085615999999999997
	.quad	0x3fd90a5accd53049              # double 0.39125700000000002
	.quad	0x3fe9ab6d00b45ae6              # double 0.802176
	.quad	0x3fedf6e82949a565              # double 0.93638999999999994
	.quad	0x3feff5ee99a62ed3              # double 0.99877099999999996
	.quad	0x3fd5bfc6540cc78f              # double 0.33983000000000002
	.quad	0x3fe9ca85caafbc1b              # double 0.80597200000000002
	.quad	0x3fda8487b99d4520              # double 0.41433900000000001
	.quad	0x3fd75271bcdbbe01              # double 0.36440699999999998
	.quad	0x3fc5e2c55c96030c              # double 0.170983
	.quad	0x3fe3f5e2046c764b              # double 0.62376500000000001
	.quad	0x3fb98cd20afa2f06              # double 0.099805000000000004
	.quad	0x3fe5df8b1572580c              # double 0.68353799999999998
	.quad	0x3fd3e7cd03537197              # double 0.31102299999999999
	.quad	0x3feae0f7fcfc3f81              # double 0.83996199999999999
	.quad	0x3fe4e20ab7132724              # double 0.65259299999999998
	.quad	0x3fef7687b139c94f              # double 0.98321899999999995
	.quad	0x3fe480b88ca3e7d1              # double 0.64071299999999998
	.quad	0x3fc5935fc3b4f616              # double 0.16855999999999999
	.quad	0x3feca3854046412d              # double 0.89496100000000001
	.quad	0x3fdb7abfb9bed30f              # double 0.429367
	.quad	0x3fdbffbce4217d28              # double 0.43748399999999998
	.quad	0x3fc1f9f87f023e9f              # double 0.14044100000000001
	.quad	0x3fec66d373affb05              # double 0.88755200000000001
	.quad	0x3fe4e0a63305100a              # double 0.65242299999999998
	.quad	0x3fa6ab14ec204f2b              # double 0.044274000000000001
	.quad	0x3fdf767d34df04de              # double 0.49160700000000002
	.quad	0x3feb3b341e14bdfd              # double 0.85097699999999998
	.quad	0x3fe2873365881a15              # double 0.57900399999999996
	.quad	0x3fd26f826edaa92e              # double 0.28805599999999998
	.quad	0x3fe4896feb4a6656              # double 0.64177700000000004
	.quad	0x3fe7a50d6b228dca              # double 0.73889800000000005
	.quad	0x3fe6af294dd72368              # double 0.70888200000000001
	.quad	0x3fee1d0e991ff716              # double 0.94104699999999997
	.quad	0x3fe9b5efa615a8df              # double 0.80345900000000003
	.quad	0x3fe293a2df9378ee              # double 0.58052199999999998
	.quad	0x3fef7b9e060fe47a              # double 0.98384000000000005
	.quad	0x3fe39b3f20a73f75              # double 0.61270100000000005
	.quad	0x3fe9ad59d55e6bc6              # double 0.80241099999999999
	.quad	0x3fdd6b3fe9fadafd              # double 0.459671
	.quad	0x3f8b2fec56d5cfab              # double 0.013275
	.quad	0x3fe5b69984a0e411              # double 0.67854000000000003
	.quad	0x3fdaad03d9a95422              # double 0.41681000000000001
	.quad	0x3fe5402d16b97fe9              # double 0.66408400000000001
	.quad	0x3fd77b17ce52deca              # double 0.36688799999999999
	.quad	0x3fedf720c8cd63cc              # double 0.93641700000000005
	.quad	0x3fb26d698fe69271              # double 0.071982000000000004
	.quad	0x3feda8869c66d374              # double 0.92682200000000003
	.quad	0x3fea5e939eadd591              # double 0.82404500000000003
	.quad	0x3fdca54823854046              # double 0.44758799999999999
	.quad	0x3feaf88333fc86cf              # double 0.84283600000000003
	.quad	0x3fdb4c22ee41919b              # double 0.42652200000000001
	.quad	0x3fe45a4ce8101f32              # double 0.63602300000000001
	.quad	0x3fe7f1c970f7b9e0              # double 0.74826499999999995
	.quad	0x3fa3003686a4ca4f              # double 0.037110999999999998
	.quad	0x3fdcc73abc947065              # double 0.44966
	.quad	0x3fe9e13f4a98aa86              # double 0.80874599999999996
	.quad	0x3fe908ebcc6c54bd              # double 0.78233900000000001
	.quad	0x3fdd5ef62f9ca5be              # double 0.45892100000000002
	.quad	0x3fec53da72a7bd49              # double 0.88523600000000002
	.quad	0x3fb212b5e529bae4              # double 0.070597999999999994
	.quad	0x3fe1b14a90470a81              # double 0.55289200000000005
	.quad	0x3fe92d8a116659d1              # double 0.78680899999999998
	.quad	0x3fdfe1932d6ece14              # double 0.498143
	.quad	0x3fef6555c52e72da              # double 0.98111999999999999
	.quad	0x3fe2bc1acde19fc3              # double 0.58546200000000004
	.quad	0x3fd838ac18f81e8a              # double 0.37845899999999999
	.quad	0x3fb80485a0be5109              # double 0.093819
	.quad	0x3fdbd23d4f15e7c9              # double 0.43470700000000001
	.quad	0x3f97ec3547e06962              # double 0.023362000000000001
	.quad	0x3fd55781c714fce7              # double 0.33346599999999998
	.quad	0x3fbd99ed7c6fbd27              # double 0.11563
	.quad	0x3fe4e9813879c411              # double 0.65350399999999997
	.quad	0x3fc6d3bf2f555821              # double 0.178337
	.quad	0x3fe3328b6d86ec18              # double 0.59992000000000001
	.quad	0x3fe10b588e368f08              # double 0.53263499999999997
	.quad	0x3fc30624dd2f1aa0              # double 0.14862500000000001
	.quad	0x3fef2454de7ea5f8              # double 0.97318499999999996
	.quad	0x3fd9047d3d4280ae              # double 0.390899
	.quad	0x3fe4132f87ad080b              # double 0.62734199999999996
	.quad	0x3fe646da4484944f              # double 0.69614900000000002
	.quad	0x3fe91bfdf7e8038a              # double 0.784667
	.quad	0x3fd6cab81f969e3d              # double 0.35612300000000002
	.quad	0x3fdde56473471f79              # double 0.46712599999999999
	.quad	0x3fceba493c89f40a              # double 0.24006
	.quad	0x3fe0b1c219eb6391              # double 0.52169900000000002
	.quad	0x3fec70b49e01de27              # double 0.88875800000000005
	.quad	0x3fd8b545c78a6dad              # double 0.38606400000000002
	.quad	0x3fbdcc319c5a3e3a              # double 0.116397
	.quad	0x3feeaf123c42a66e              # double 0.95887100000000003
	.quad	0x3fc4de5d18090b41              # double 0.16303599999999999
	.quad	0x3fe9232d2bb23572              # double 0.78554400000000002
	.quad	0x3fdfea67e846a5d7              # double 0.49868200000000001
	.quad	0x3fdbd30ad46f587d              # double 0.43475599999999998
	.quad	0x3f95069a4df47f99              # double 0.020532999999999999
	.quad	0x3fdb79a6b50b0f28              # double 0.42930000000000001
	.quad	0x3fc20c49ba5e353f              # double 0.14099999999999999
	.quad	0x3facc3c18b502abb              # double 0.056181000000000002
	.quad	0x3fd49a62ed352221              # double 0.32192300000000001
	.quad	0x3fdb394317acc4f0              # double 0.42537000000000003
	.quad	0x3fb59c9d5a187a4a              # double 0.084420999999999996
	.quad	0x3feeda272862f599              # double 0.96413000000000004
	.quad	0x3fea0a17b0f6ad71              # double 0.81373200000000001
	.quad	0x3fb03558a7610279              # double 0.063313999999999995
	.quad	0x3fb5f02c4d65e460              # double 0.085695999999999994
	.quad	0x3fea3cc8de2ac322              # double 0.81991999999999998
	.quad	0x3fee5b76b3bb83cf              # double 0.94866499999999998
	.quad	0x3fe8baa582dbe7f3              # double 0.77278400000000003
	.quad	0x3fe19a11233df2aa              # double 0.55005700000000002
	.quad	0x3fbdf88fc9363f57              # double 0.117074
	.quad	0x3feb1de69ad42c3d              # double 0.84740000000000004
	.quad	0x3fb4561d4306e5cd              # double 0.079438999999999996
	.quad	0x3f8ed30f062d40ab              # double 0.015051
	.quad	0x3fc8cdd93c46d82c              # double 0.19378200000000001
	.quad	0x3feb476295208e15              # double 0.852464
	.quad	0x3fe036006d0d4995              # double 0.50659200000000004
	.quad	0x3fb929888f861a61              # double 0.098290000000000002
	.quad	0x3fae83e425aee632              # double 0.0596
	.quad	0x3fa02d9cf13cee9e              # double 0.031598000000000001
	.quad	0x3fe20a372606fac6              # double 0.563747
	.quad	0x3fc0549b62c77575              # double 0.127582
	.quad	0x3fd7edf1e0828c37              # double 0.37389800000000001
	.quad	0x3fee2b777d0f1f58              # double 0.94280600000000003
	.quad	0x3f9cadddf43c7d5f              # double 0.028007000000000001
	.quad	0x3fd8bce8533b1077              # double 0.38652999999999998
	.quad	0x3fd9843c3a42f1ed              # double 0.39869599999999999
	.quad	0x3fdc7f9d6f112fd3              # double 0.44528899999999999
	.quad	0x3fb557abb8800eae              # double 0.083368999999999998
	.quad	0x3feab6049ecb31c2              # double 0.83471899999999999
	.quad	0x3fad82fd75e2046c              # double 0.057639999999999997
	.quad	0x3fed4e4649906cca              # double 0.91580499999999998
	.quad	0x3fd2126202539757              # double 0.28237200000000001
	.quad	0x3fe9cae642bf9831              # double 0.80601800000000001
	.quad	0x3fec7867f0aa21a7              # double 0.88969799999999999
	.quad	0x3fdf764f11b60ae9              # double 0.49159599999999998
	.quad	0x3fd7ddc6195464dc              # double 0.37291099999999999
	.quad	0x3fd8fc58ab92c062              # double 0.39040200000000003
	.quad	0x3fd2c3d68405b39e              # double 0.29320299999999999
	.quad	0x3fdaf0ed3d859c8d              # double 0.42095500000000002
	.quad	0x3fef7e64f54d1e97              # double 0.98417900000000002
	.quad	0x3feac877681669cf              # double 0.83697100000000002
	.quad	0x3fe5a0a0f4d7add1              # double 0.67585799999999996
	.quad	0x3fec8f96e158750c              # double 0.89252799999999998
	.quad	0x3fdf66e43aa79bbb              # double 0.49065500000000001
	.quad	0x3f901eabbcb1cc96              # double 0.015741999999999999
	.quad	0x3fe6b1f03d145d85              # double 0.70922099999999999
	.quad	0x3f8b866e43aa79bc              # double 0.013440000000000001
	.quad	0x3fe0f0f9d2bf5515              # double 0.529416
	.quad	0x3fe8d29fe004b7f6              # double 0.77571100000000004
	.quad	0x3feb0984e3ffef39              # double 0.844912
	.quad	0x3f974fb549f94856              # double 0.022765000000000001
	.quad	0x3fe1260f5e41d4b7              # double 0.53589600000000004
	.quad	0x3fc16f3b213e3e29              # double 0.13620699999999999
	.quad	0x3febc258d5842b73              # double 0.86747399999999997
	.quad	0x3fdbf17bd8be7297              # double 0.436614
	.quad	0x3fd4885d31337eb3              # double 0.32082300000000002
	.quad	0x3fc8af1455219a84              # double 0.19284299999999999
	.quad	0x3febd1782d38476f              # double 0.86931999999999998
	.quad	0x3fe3ef0cfe154435              # double 0.62293100000000001
	.quad	0x3fbe1187e7c06e1a              # double 0.117455
	.quad	0x3fb5cac083126e98              # double 0.085125000000000006
	.quad	0x3fd7cdf69878316a              # double 0.371946
	.quad	0x3fcaeea63b688bdb              # double 0.21040800000000001
	.quad	0x3fe5704ff43419e3              # double 0.66996
	.quad	0x3fe3e071c53f39d2              # double 0.62114800000000003
	.quad	0x3fdac768dfbd6a59              # double 0.41842099999999999
	.quad	0x3fe8cb4aec8d5c74              # double 0.77481599999999994
	.quad	0x3fdd00c0f01fb82c              # double 0.45317099999999999
	.quad	0x3fd18e60807357e6              # double 0.27431499999999998
	.quad	0x3fccb018611fd588              # double 0.22412399999999999
	.quad	0x3fe4b3acd5b6805a              # double 0.64693299999999998
	.quad	0x3fdd329c347e8cce              # double 0.45621400000000001
	.quad	0x3fd60ce0b912dba5              # double 0.34453600000000001
	.quad	0x3fe2852b4d8ba40e              # double 0.57875600000000005
	.quad	0x3fe06642bf9830e4              # double 0.51248300000000002
	.quad	0x3fe8f3387160956c              # double 0.77968999999999999
	.quad	0x3fe41a8ef77f27fe              # double 0.62824199999999997
	.quad	0x3fee9320d9945b6c              # double 0.95545999999999997
	.quad	0x3fd63b42cc2d6a9c              # double 0.34736699999999998
	.quad	0x3fe59290257c914b              # double 0.67414099999999999
	.quad	0x3fa8027d88c1db01              # double 0.046893999999999998
	.quad	0x3fdad8a116659d13              # double 0.41947200000000001
	.quad	0x3fe936b8f9b13166              # double 0.78793000000000002
	.quad	0x3fe3efe718a86d72              # double 0.62303500000000001
	.quad	0x3fe2286b59146e4c              # double 0.56743399999999999
	.quad	0x3fe0ba55d1c3ac93              # double 0.52274600000000004
	.quad	0x3fcd8bcdfefbf402              # double 0.23082900000000001
	.quad	0x3fe8225742dcf462              # double 0.75419199999999997
	.quad	0x3fdceb80ecfa69be              # double 0.451874
	.quad	0x3fbad7c6fbd273d6              # double 0.104855
	.quad	0x3fe925785f8d2e51              # double 0.78582399999999997
	.quad	0x3fec03621fafc8b0              # double 0.875413
	.quad	0x3fed03dbc23315d7              # double 0.906721
	.quad	0x3feba415f45e0b4e              # double 0.86377999999999999
	.quad	0x3fb7c06e19b90eaa              # double 0.092780000000000001
	.quad	0x3fd294f69ca9ef52              # double 0.29034199999999999
	.quad	0x3fedd0a67620ee8d              # double 0.93171999999999999
	.quad	0x3fd135c9e6687f45              # double 0.26890799999999998
	.quad	0x3fd4b1e5c0b99913              # double 0.32335799999999998
	.quad	0x3fe42b0856e696a2              # double 0.63025299999999995
	.quad	0x3fee64f765fd8adb              # double 0.94982500000000003
	.quad	0x3fe24a9cdc443915              # double 0.571608
	.quad	0x3fec3fb15b573eab              # double 0.88277499999999998
	.quad	0x3fc1dd4c76d117b5              # double 0.139566
	.quad	0x3fd1ac6cdaf4adbc              # double 0.27614899999999998
	.quad	0x3fd027c393682731              # double 0.25242700000000001
	.quad	0x3fecbd96638433d7              # double 0.89814300000000002
	.quad	0x3fed0398a65492ff              # double 0.90668899999999997
	.quad	0x3fec7d9ba1b19610              # double 0.89033300000000004
	.quad	0x3fb0255b035bd513              # double 0.063070000000000001
	.quad	0x3fdf9e6687f455a8              # double 0.49404300000000001
	.quad	0x3fec3137b07075b4              # double 0.88100800000000001
	.quad	0x3fe94dd0d8cb07d1              # double 0.79074900000000004
	.quad	0x3fc287c200c0f020              # double 0.14476800000000001
	.quad	0x3fa32b777d0f1f58              # double 0.037441000000000002
	.quad	0x3fe4e874c8ffb8b2              # double 0.65337599999999996
	.quad	0x3fec499285a921cd              # double 0.88398100000000002
	.quad	0x3fd456cd6c2efd44              # double 0.31779800000000002
	.quad	0x3fbefa0d77b7c782              # double 0.121003
	.quad	0x3fe5b6113404ea4b              # double 0.67847500000000005
	.quad	0x3fdb178f68be2f7b              # double 0.42331299999999999
	.quad	0x3fdb3aa79bbadc0a              # double 0.42545500000000003
	.quad	0x3fd4b906466b1e5c              # double 0.323793
	.quad	0x3fde017dae81882b              # double 0.46884100000000001
	.quad	0x3fd6b0e5e679463d              # double 0.354547
	.quad	0x3fa124af0bf1a5ca              # double 0.033482999999999999
	.quad	0x3feca2120e1f7d74              # double 0.89478400000000002
	.quad	0x3fef0ed1bf7ad4b2              # double 0.97055899999999995
	.quad	0x3fabcd78c436fc16              # double 0.054302000000000003
	.quad	0x3fe22f2f9873ffac              # double 0.56825999999999999
	.quad	0x3fec41d6cf850df1              # double 0.88303699999999996
	.quad	0x3feed870da5daf08              # double 0.96392100000000002
	.quad	0x3fb690795f676ea4              # double 0.088141999999999998
	.quad	0x3fec6dd052934acb              # double 0.888405
	.quad	0x3fc5736cdf266ba5              # double 0.16758500000000001
	.quad	0x3fe930079a2834d2              # double 0.78711299999999995
	.quad	0x3fc407357e670e2c              # double 0.15647
	.quad	0x3fdef7ad4b2745bf              # double 0.48386699999999999
	.quad	0x3fe5e8ccdd93c46e              # double 0.68466800000000005
	.quad	0x3fca9a1b9f98b71c              # double 0.20782800000000001
	.quad	0x3fdd11f4f50a02b8              # double 0.45422099999999999
	.quad	0x3fd1df266ba493c9              # double 0.27924500000000002
	.quad	0x3fd61a3b14a90471              # double 0.34535100000000002
	.quad	0x3fd4ed17c5ef62fa              # double 0.32697100000000001
	.quad	0x3fdd400fba8826ab              # double 0.45703500000000002
	.quad	0x3fdbcf2495e17e35              # double 0.43451800000000002
	.quad	0x3fd585d31337eb29              # double 0.33629300000000001
	.quad	0x3fab305100a393ee              # double 0.053102999999999997
	.quad	0x3fd93f85510d38ce              # double 0.39450200000000002
	.quad	0x3fea9f6ec5b078d9              # double 0.83196199999999998
	.quad	0x3fe7921682f94424              # double 0.73658299999999999
	.quad	0x3fe5b09a671ef30a              # double 0.67780799999999997
	.quad	0x3fd976a7264a16a5              # double 0.39786700000000003
	.quad	0x3fe549e236c15d2d              # double 0.665269
	.quad	0x3fe2edce39b456b4              # double 0.59152899999999997
	.quad	0x3fd54dd72367e415              # double 0.33287600000000001
	.quad	0x3fd9d54da4ce8102              # double 0.403644
	.quad	0x3fe05ef8487b99d4              # double 0.51159299999999996
	.quad	0x3feddda6a4441787              # double 0.933307
	.quad	0x3fd4d3c792d1287c              # double 0.32542599999999999
	.quad	0x3fcb54195cc857f3              # double 0.213504
	.quad	0x3fa9dbec2480e8c9              # double 0.050506000000000002
	.quad	0x3fedaf89c5e6ff7e              # double 0.927678
	.quad	0x3fe76cdf266ba494              # double 0.73204000000000002
	.quad	0x3feb35f3d7d3910c              # double 0.85033599999999998
	.quad	0x3fec10f733a8a3f9              # double 0.87707100000000005
	.quad	0x3fe80a63305100a4              # double 0.75126800000000004
	.quad	0x3fecb3bd9cae2110              # double 0.89694099999999999
	.quad	0x3fd5759685122318              # double 0.33530199999999999
	.quad	0x3fc7b224aada33be              # double 0.18512400000000001
	.quad	0x3fd9ddf86e3b46fe              # double 0.404173
	.quad	0x3fef5bbbe878fabe              # double 0.97994800000000004
	.quad	0x3f89f3c70c996b76              # double 0.012671999999999999
	.quad	0x3fd559578a2a90cd              # double 0.33357799999999999
	.quad	0x3fd1609dcf893faf              # double 0.27152199999999999
	.quad	0x3feac573a797891e              # double 0.83660299999999999
	.quad	0x3fe9871e6cd29132              # double 0.79774400000000001
	.quad	0x3fe96974a3400b89              # double 0.79412300000000002
	.quad	0x3fe42786c226809d              # double 0.62982499999999997
	.quad	0x3fd5650a45d41fa7              # double 0.33429199999999998
	.quad	0x3fe68ba83f4eca68              # double 0.70454799999999995
	.quad	0x3fcf83f0bae89eba              # double 0.24621399999999999
	.quad	0x3fd8beb5b2d4d402              # double 0.38663999999999998
	.quad	0x3fa887a8d64d7f0f              # double 0.047910000000000001
	.quad	0x3fe9205ff1d81f10              # double 0.78520199999999996
	.quad	0x3fec0f0a5efe9318              # double 0.87683599999999995
	.quad	0x3fb112cadddf43c8              # double 0.066693000000000002
	.quad	0x3fea72b020c49ba6              # double 0.82650000000000001
	.quad	0x3fd9b4edb2f661f2              # double 0.40166800000000003
	.quad	0x3fe998d8a979e16d              # double 0.79990799999999995
	.quad	0x3fd07b784662bae0              # double 0.25753599999999999
	.quad	0x3fe58e6f2e8c0486              # double 0.67363700000000004
	.quad	0x3fcc8e581cf7878b              # double 0.22309399999999999
	.quad	0x3fe2bea0ba1f4b1f              # double 0.58577000000000001
	.quad	0x3fd05e529bae46d0              # double 0.25575700000000001
	.quad	0x3fe117f4128bf3bf              # double 0.53417400000000004
	.quad	0x3fe6fa7221858bc6              # double 0.71807200000000004
	.quad	0x3fee3430f49491f3              # double 0.94387100000000002
	.quad	0x3fed839abf338716              # double 0.922315
	.quad	0x3fef7ac3eb7cbb3d              # double 0.98373600000000005
	.quad	0x3fe376d97b30f8c6              # double 0.60825799999999997
	.quad	0x3febbf67f4dbdf8f              # double 0.86711499999999997
	.quad	0x3fef23d4f15e7c8d              # double 0.97312399999999998
	.quad	0x3fe3e961c36976bc              # double 0.62223899999999999
	.quad	0x3fea27807789a459              # double 0.81732199999999999
	.quad	0x3fb3a12b5e529bae              # double 0.076677999999999996
	.quad	0x3fd16a37ac3eb7cc              # double 0.27210800000000002
	.quad	0x3fad556084a515cf              # double 0.057292000000000003
	.quad	0x3feb851654d61b2a              # double 0.85999599999999998
	.quad	0x3fc608b75ea67e84              # double 0.17214099999999999
	.quad	0x3fde4a4d2b2bfdb5              # double 0.47328500000000001
	.quad	0x3fcfea91d9b1b79e              # double 0.24934600000000001
	.quad	0x3fed71f36262cba7              # double 0.92015999999999998
	.quad	0x3fea2b90a7829069              # double 0.81781800000000004
	.quad	0x3fb9e33269df97ab              # double 0.101123
	.quad	0x3fedbb0e5e679464              # double 0.92908400000000002
	.quad	0x3fc2d67fd3f5b5fa              # double 0.147171
	.quad	0x3fe8cfce746cb967              # double 0.77536700000000003
	.quad	0x3feb32031ceaf252              # double 0.84985500000000003
	.quad	0x3fb0d130df9bdc6a              # double 0.065692
	.quad	0x3fcf23dd54da4ce8              # double 0.243282
	.quad	0x3f8e89a88ace24bc              # double 0.014911000000000001
	.quad	0x3fc9441bb8c32a8d              # double 0.19739100000000001
	.quad	0x3fd42dc6e2a80065              # double 0.31529400000000002
	.quad	0x3fd6d57bc7f77af6              # double 0.35677999999999999
	.quad	0x3fe59eff9f87f024              # double 0.67565900000000001
	.quad	0x3fcdd69d30270f39              # double 0.23311200000000001
	.quad	0x3fd730b5aa715832              # double 0.362348
	.quad	0x3fe5a3f67f4dbdf9              # double 0.67626500000000001
	.quad	0x3fe5bbdbe3c10518              # double 0.67918199999999995
	.quad	0x3fed031ad2135dab              # double 0.90662900000000002
	.quad	0x3fe5e4e054690de1              # double 0.68418900000000005
	.quad	0x3fd2529fe004b7f6              # double 0.28629300000000002
	.quad	0x3fcadd82fd75e204              # double 0.20988499999999999
	.quad	0x3fdc151e75360d02              # double 0.43878899999999998
	.quad	0x3fee8feac42e989a              # double 0.95506800000000003
	.quad	0x3fee9d3cbc48f10b              # double 0.95669400000000004
	.quad	0x3fe114445aa2e3c5              # double 0.53372399999999998
	.quad	0x3fb186b9c304ccee              # double 0.068461999999999995
	.quad	0x3feca00e27e0ef9a              # double 0.89453800000000006
	.quad	0x3fdd0121682f9442              # double 0.45319399999999999
	.quad	0x3fdfe1650a45d420              # double 0.49813200000000002
	.quad	0x3fecdfd04a2fcefb              # double 0.90232100000000004
	.quad	0x3fdc0bbf50e34763              # double 0.43821700000000002
	.quad	0x3feb76640a6b93cd              # double 0.85820200000000002
	.quad	0x3fe84d594f26aec0              # double 0.75944199999999995
	.quad	0x3fee1d4b6a619daa              # double 0.94107600000000002
	.quad	0x3fe80a915379fa98              # double 0.75129000000000001
	.quad	0x3fce5e56cd6c2efd              # double 0.23725399999999999
	.quad	0x3fed7b82c2bd7f52              # double 0.92132700000000001
	.quad	0x3fef7d84901d1915              # double 0.98407199999999994
	.quad	0x3fb5ab6d00b45ae6              # double 0.084647
	.quad	0x3fb387ad080b673c              # double 0.076288999999999996
	.quad	0x3fe55df86e3b46fe              # double 0.66772100000000001
	.quad	0x3fe9b367a0f9096c              # double 0.80315000000000003
	.quad	0x3fcaef88b9778573              # double 0.21043500000000001
	.quad	0x3fea4638c9752978              # double 0.82107200000000002
	.quad	0x3f75011904b3c3e7              # double 0.0051279999999999997
	.quad	0x3fd28a116659d12d              # double 0.28967700000000002
	.quad	0x3fc66eb0b7c3504c              # double 0.17525299999999999
	.quad	0x3fd9d7add15f02c5              # double 0.40378900000000001
	.quad	0x3fe63ed959a30985              # double 0.69517200000000001
	.quad	0x3fb629307af20ea6              # double 0.086566000000000004
	.quad	0x3fd79a7c17a89332              # double 0.36880400000000002
	.quad	0x3fe8ca18bd66277c              # double 0.77466999999999996
	.quad	0x3fde1a6d698fe692              # double 0.47036299999999998
	.quad	0x3fe9449dbec2480f              # double 0.78962600000000005
	.quad	0x3febf6e1deacc921              # double 0.87388699999999997
	.quad	0x3fe50b417ca2120e              # double 0.65762399999999999
	.quad	0x3feb1b60ae9680e0              # double 0.84709199999999995
	.quad	0x3fe8a9b6b2af1455              # double 0.77071699999999999
	.quad	0x3fe5be0370cdc875              # double 0.67944499999999997
	.quad	0x3fe541a6937d1fe6              # double 0.66426399999999997
	.quad	0x3fe41f2dc2b0ea18              # double 0.62880599999999998
	.quad	0x3fe982f512663411              # double 0.79723599999999994
	.quad	0x3fe23f01322f2735              # double 0.570191
	.quad	0x3fe3a04f2ae07e5a              # double 0.61331899999999995
	.quad	0x3f7028a1dfb9389b              # double 0.0039449999999999997
	.quad	0x3fe1d7d7c2ca148c              # double 0.55759800000000004
	.quad	0x3fb500713f077ccc              # double 0.082038
	.quad	0x3fe7db402d16b980              # double 0.74551400000000001
	.quad	0x3fe1047b24638c97              # double 0.53179699999999996
	.quad	0x3fe76c0f88333fc8              # double 0.73194099999999995
	.quad	0x3fc19d55e6bc621b              # double 0.13761399999999999
	.quad	0x3fee6e5abc0e38a8              # double 0.95097100000000001
	.quad	0x3fece97aeddce7cd              # double 0.903501
	.quad	0x3fedc5ed4a1ad645              # double 0.93041099999999999
	.quad	0x3fc3566490a350d3              # double 0.15107400000000001
	.quad	0x3fe9b18b93469942              # double 0.80292300000000005
	.quad	0x3fec495bff04577e              # double 0.88395500000000005
	.quad	0x3fea05caafbc1ace              # double 0.81320700000000001
	.quad	0x3fec87357e670e2c              # double 0.89150499999999999
	.quad	0x3fe5473eee525892              # double 0.66494699999999995
	.quad	0x3fe5b3bb83cf2cf9              # double 0.67818999999999996
	.quad	0x3fe1214057082492              # double 0.53530900000000003
	.quad	0x3feb9dece5710881              # double 0.86302800000000002
	.quad	0x3fea4aada33bd9cb              # double 0.82161600000000001
	.quad	0x3fd8feef5ec80c74              # double 0.39056000000000002
	.quad	0x3feff53825e13b19              # double 0.99868400000000001
	.quad	0x3fc08997c3d68406              # double 0.12919900000000001
	.quad	0x3feae28ed5f138bd              # double 0.84015600000000001
	.quad	0x3fe097c1bda5119d              # double 0.51852500000000001
	.quad	0x3fd12314013ec461              # double 0.267766
	.quad	0x3fce65625a682b63              # double 0.23746900000000001
	.quad	0x3fabd07c84b5dcc6              # double 0.054324999999999998
	.quad	0x3fd13882278d0cc3              # double 0.26907399999999998
	.quad	0x3fe6a5ce5b4245f6              # double 0.70774000000000004
	.quad	0x3fd17c4e2f37fbf0              # double 0.27321200000000001
	.quad	0x3fe9a05143bf7271              # double 0.80081999999999998
	.quad	0x3fe7914d2f5dbb9d              # double 0.736487
	.quad	0x3fd74fa8b4bf8fcd              # double 0.36423699999999998
	.quad	0x3fe03ef8ceb356da              # double 0.507687
	.quad	0x3feb6d84d338f798              # double 0.85711899999999996
	.quad	0x3fe1608d08919ef9              # double 0.54303599999999996
	.quad	0x3fd84d013a92a305              # double 0.37969999999999998
	.quad	0x3fde32441fea8113              # double 0.47181800000000002
	.quad	0x3fbd2c59fb1e18f0              # double 0.113958
	.quad	0x3fe8def8487b99d4              # double 0.77721799999999996
	.quad	0x3fa9950331e3a7db              # double 0.049965000000000002
	.quad	0x3fe6ad72ffd1dcd7              # double 0.708673
	.quad	0x3fedb193f6c2699c              # double 0.92792699999999994
	.quad	0x3fb8784230fcf80e              # double 0.095585000000000003
	.quad	0x3fc154c122749f0e              # double 0.13539899999999999
	.quad	0x3fc7da7b0b391926              # double 0.18635499999999999
	.quad	0x3fefeb702602c908              # double 0.99748999999999998
	.quad	0x3fc7531550ca1cef              # double 0.182223
	.quad	0x3fefc8626f60e0eb              # double 0.99321099999999995
	.quad	0x3fed28c79f666235              # double 0.91122800000000004
	.quad	0x3fe556cb5350092d              # double 0.66684500000000002
	.quad	0x3fdc960b6f9fcb0c              # double 0.446658
	.quad	0x3fe7035bd512ec6c              # double 0.71916000000000002
	.quad	0x3fda6cca2db61bb0              # double 0.41288999999999998
	.quad	0x3fdf43d46b26bf87              # double 0.48851499999999998
	.quad	0x3fd33cea6c1a048e              # double 0.300593
	.quad	0x3fc1f950b955f783              # double 0.14042099999999999
	.quad	0x3fe32a369fcf3dc0              # double 0.59890299999999996
	.quad	0x3fcd88a04d12018a              # double 0.23073199999999999
	.quad	0x3fe945d206c8711d              # double 0.78977299999999995
	.quad	0x3fde725c3dee7818              # double 0.47572999999999999
	.quad	0x3fda5e7c8d195897              # double 0.41201700000000002
	.quad	0x3fe34395810624dd              # double 0.60199999999999998
	.quad	0x3fcb0a24463065f9              # double 0.21124699999999999
	.quad	0x3fea4371da37ef5b              # double 0.82073300000000005
	.quad	0x3faab191dde37586              # double 0.052136000000000002
	.quad	0x3fe851b71758e219              # double 0.75997499999999996
	.quad	0x3fdb9a5657fb6998              # double 0.43129499999999998
	.quad	0x3fe27544bb1af3a1              # double 0.57681499999999997
	.quad	0x3fee3517a46173b8              # double 0.94398099999999995
	.quad	0x3fea587d6f976790              # double 0.82330199999999998
	.quad	0x3fdb6ad70e6f2e8c              # double 0.428396
	.quad	0x3fc3bc44bf4cb189              # double 0.15418299999999999
	.quad	0x3fedc41355475a32              # double 0.93018500000000004
	.quad	0x3fe5811d3671ac15              # double 0.67201100000000002
	.quad	0x3fe72d05f2884838              # double 0.72424599999999995
	.quad	0x3fe3958d9b5e95b8              # double 0.61200600000000005
	.quad	0x3fdbc98a222d5172              # double 0.43417600000000001
	.quad	0x3fcb8bf7f06705c9              # double 0.21520900000000001
	.quad	0x3fd1422467be553b              # double 0.26966200000000001
	.quad	0x3fe8cd7060bb2bbb              # double 0.77507800000000004
	.quad	0x3fdb4fd6d7e889c2              # double 0.42674800000000002
	.quad	0x3fdb626b2f23033a              # double 0.42788199999999998
	.quad	0x3fe05362e9036439              # double 0.51017900000000005
	.quad	0x3fef91ff7164c72a              # double 0.986572
	.quad	0x3fc45da6a4441787              # double 0.159108
	.quad	0x3fbbae89eba6aca8              # double 0.10813200000000001
	.quad	0x3f4b089a02752546              # double 8.25E-4
	.quad	0x3fe568d972cd7cf6              # double 0.669049
	.quad	0x3fe4b854046412cf              # double 0.64750099999999999
	.quad	0x3fc6d77318fc5048              # double 0.17845
	.quad	0x3fb473de1e2de871              # double 0.079893000000000006
	.quad	0x3fd9803cd141a693              # double 0.39845199999999997
	.quad	0x3fc731c219eb6391              # double 0.18120600000000001
	.quad	0x3fe0340f66a55087              # double 0.506355
	.quad	0x3fe0abb44e50c5eb              # double 0.52095999999999998
	.quad	0x3fef034d26fa3fcd              # double 0.96915300000000004
	.quad	0x3fd68c436fc158fb              # double 0.35231099999999999
	.quad	0x3fc39bd4067cf1c3              # double 0.153193
	.quad	0x3fe43804534bd76f              # double 0.63183800000000001
	.quad	0x3fe414face67d780              # double 0.62756100000000004
	.quad	0x3fc45d9e40c8472c              # double 0.159107
	.quad	0x3fe722c669057d18              # double 0.72299500000000005
	.quad	0x3fec2b66b6177ea2              # double 0.88029800000000002
	.quad	0x3fed78a0902de00d              # double 0.92097499999999999
	.quad	0x3fd1203e63e8dda5              # double 0.26759300000000003
	.quad	0x3fdeb70691ea78af              # double 0.47992099999999999
	.quad	0x3fd2889c1b54195d              # double 0.28958800000000001
	.quad	0x3fbea9e6eeb70260              # double 0.11978
	.quad	0x3fe1ccdfaca36199              # double 0.55625899999999995
	.quad	0x3fe09040bfe3b03e              # double 0.51760899999999999
	.quad	0x3fd55fa658c4bd34              # double 0.33396300000000001
	.quad	0x3fdf1ec918e325d5              # double 0.48625400000000002
	.quad	0x3fea8f301eabbcb2              # double 0.82997900000000002
	.quad	0x3f9ca85caafbc1ad              # double 0.027986
	.quad	0x3fefba81dc0db270              # double 0.99151699999999998
	.quad	0x3fee1e9f2778140e              # double 0.94123800000000002
	.quad	0x3fe5388a8b08dd1e              # double 0.66315199999999996
	.quad	0x3fb492ddbdb5d895              # double 0.080366000000000007
	.quad	0x3fdbc5a8155d5f57              # double 0.43393900000000002
	.quad	0x3fc4b3bb83cf2cf9              # double 0.16173499999999999
	.quad	0x3fd5c70435efa616              # double 0.34027200000000002
	.quad	0x3fdc8bac710cb296              # double 0.446025
	.quad	0x3fc1e22e5de15ca7              # double 0.13971500000000001
	.quad	0x3fc923897204295a              # double 0.19639699999999999
	.quad	0x3fc5ff04577d9557              # double 0.171845
	.quad	0x3fe15faca3619978              # double 0.54292899999999999
	.quad	0x3fc105c896dd26b7              # double 0.132989
	.quad	0x3fea9357603925bb              # double 0.83048599999999995
	.quad	0x3fd42d83c6c97d8d              # double 0.315278
	.quad	0x3fd9666a98244e94              # double 0.39687600000000001
	.quad	0x3fb4192a737110e4              # double 0.078508999999999995
	.quad	0x3fc2bf8769ec2ce4              # double 0.14646999999999999
	.quad	0x3faf952d234eb9a1              # double 0.061684999999999997
	.quad	0x3fdd0c34c1a8ac5c              # double 0.45387
	.quad	0x3fa437e6f71a7e31              # double 0.039489000000000003
	.quad	0x3fee961c36976bc2              # double 0.95582400000000001
	.quad	0x3fceb4070329802c              # double 0.239869
	.quad	0x3fec584f4c6e6d9c              # double 0.88578000000000001
	.quad	0x3fef66b8305d95dd              # double 0.98128899999999996
	.quad	0x3fc59c49774256bd              # double 0.16883200000000001
	.quad	0x3fe51cac083126e9              # double 0.65974999999999995
	.quad	0x3fe0974e65bea0ba              # double 0.51846999999999999
	.quad	0x3fe0849cb252ce03              # double 0.51618799999999998
	.quad	0x3febe4b44a1f0803              # double 0.871668
	.quad	0x3fc9a2e7f6f4be83              # double 0.20028399999999999
	.quad	0x3feb9efb6dca07f6              # double 0.86315699999999995
	.quad	0x3fdcc77143393ab4              # double 0.44967299999999999
	.quad	0x3fecd653c9abb01d              # double 0.90116300000000005
	.quad	0x3fcaf7caa7589efe              # double 0.21068700000000001
	.quad	0x3fd85054ac29bf16              # double 0.37990299999999999
	.quad	0x3fdd36c15d2d01c1              # double 0.45646700000000001
	.quad	0x3fe1b17ce52deca2              # double 0.55291599999999996
	.quad	0x3fdeb51bd61f5be6              # double 0.47980400000000001
	.quad	0x3f81da37ef5a964f              # double 0.0087170000000000007
	.quad	0x3fdabdd76683c298              # double 0.41783700000000001
	.quad	0x3fe4d347a5b0ff11              # double 0.65079100000000001
	.quad	0x3fcea19c9d5a187a              # double 0.23930699999999999
	.quad	0x3f83b29a1b9f98b7              # double 0.0096179999999999998
	.quad	0x3fe0f720c8cd63cc              # double 0.53016700000000005
	.quad	0x3fae440f23897204              # double 0.059112999999999999
	.quad	0x3fde54e6e221c8a8              # double 0.47393200000000002
	.quad	0x3fdf71a3b14a9047              # double 0.491311
	.quad	0x3fc261e92923e5b8              # double 0.14361299999999999
	.quad	0x3fe4d1bd61f5be5e              # double 0.65060300000000004
	.quad	0x3fb9ad2135daad60              # double 0.100298
	.quad	0x3fa86573215fcc18              # double 0.047648999999999997
	.quad	0x3fdc3b256ffc115e              # double 0.44111
	.quad	0x3feab3d6c7219221              # double 0.834453
	.quad	0x3fee1737542a23c0              # double 0.940334
	.quad	0x3fe0e32e3821af7d              # double 0.52773199999999998
	.quad	0x3fc7084e831ad213              # double 0.17994099999999999
	.quad	0x3fe6e50e779207d5              # double 0.71546100000000001
	.quad	0x3fe21fab96f21f6d              # double 0.56636600000000004
	.quad	0x3fd7c105186db50f              # double 0.37115599999999999
	.quad	0x3fb9209edbf8b9bb              # double 0.098154000000000005
	.quad	0x3fe33e9a6f826edb              # double 0.60139200000000004
	.quad	0x3fc0ef34d6a161e5              # double 0.1323
	.quad	0x3fe4cfdb09a671ef              # double 0.65037299999999998
	.quad	0x3fe929888f861a61              # double 0.78632000000000002
	.quad	0x3fda0a2ca9ac3654              # double 0.40687099999999998
	.quad	0x3fdea72ead9274e2              # double 0.47895399999999999
	.quad	0x3fe818eb8950763a              # double 0.75304199999999999
	.quad	0x3fdff67b1c0010c7              # double 0.499419
	.quad	0x3fd5bf83382e44b7              # double 0.339814
	.quad	0x3fe7f6b7ed41b75a              # double 0.74886699999999995
	.quad	0x3fefadd7a99fa11b              # double 0.98997100000000004
	.quad	0x3fe070a5efe93187              # double 0.51375099999999996
	.quad	0x3fc0c4bd33d29564              # double 0.13100400000000001
	.quad	0x3fbfd1cc100e6afd              # double 0.124295
	.quad	0x3fe56a52ef911cf3              # double 0.66922899999999996
	.quad	0x3fd2b020c49ba5e3              # double 0.29199999999999998
	.quad	0x3fea669ad42c3c9f              # double 0.82502500000000001
	.quad	0x3fef398c7e28240b              # double 0.97577499999999994
	.quad	0x3fcb2ba9d1f60179              # double 0.21226999999999999
	.quad	0x3fc0d948dc11e42e              # double 0.131631
	.quad	0x3fc553c579f23465              # double 0.16661899999999999
	.quad	0x3f988b11409a2403              # double 0.023968
	.quad	0x3fe0371327243138              # double 0.50672300000000003
	.quad	0x3fef55454152b0a7              # double 0.979159
	.quad	0x3fed1ef954eb13e0              # double 0.91003100000000003
	.quad	0x3fed7a8b4bf8fcd6              # double 0.92120899999999994
	.quad	0x3fe925785f8d2e51              # double 0.78582399999999997
	.quad	0x3fe2ef71a7e30878              # double 0.59172899999999995
	.quad	0x3fdddaad601ffb48              # double 0.466472
	.quad	0x3fe3672b884406c0              # double 0.60634399999999999
	.quad	0x3fe13461309c7ffe              # double 0.53764400000000001
	.quad	0x3fddbcec84f8f8a5              # double 0.46465600000000001
	.quad	0x3fd79cf56eac8605              # double 0.36895499999999998
	.quad	0x3fe106ec17ebaf10              # double 0.53209499999999998
	.quad	0x3fe0d188f42fe825              # double 0.52557799999999999
	.quad	0x3fe0ec7863beec39              # double 0.52886599999999995
	.quad	0x3fd9dd93c46d82ba              # double 0.40414899999999998
	.quad	0x3fd7998d045fe111              # double 0.36874699999999999
	.quad	0x3fe011a543f1c758              # double 0.50215399999999999
	.quad	0x3fef40d2c386d2ed              # double 0.97666299999999994
	.quad	0x3fb9c39bcba30121              # double 0.10064099999999999
	.quad	0x3fedeb8305d95dd5              # double 0.93499900000000002
	.quad	0x3fe23760bf5d7881              # double 0.56925999999999999
	.quad	0x3fef80c73abc9470              # double 0.98446999999999996
	.quad	0x3fe0a1b5c7cd898b              # double 0.51973999999999998
	.quad	0x3fd924edf6124074              # double 0.39287899999999998
	.quad	0x3fc243b2dd377e1c              # double 0.14269100000000001
	.quad	0x3fd6775b81301648              # double 0.35103499999999999
	.quad	0x3fec0887229e9079              # double 0.87604099999999996
	.quad	0x3fe334dcebfec13c              # double 0.60020300000000004
	.quad	0x3fe504a9478c868c              # double 0.65681900000000004
	.quad	0x3fd7bfad2999567e              # double 0.37107400000000001
	.quad	0x3fe88efbb0e5e679              # double 0.76745399999999997
	.quad	0x3fe6c1aac53b0814              # double 0.71114100000000002
	.quad	0x3fee877ab324851b              # double 0.95403800000000005
	.quad	0x3fd695aaf78feef6              # double 0.352885
	.quad	0x3fd5df6124074645              # double 0.34175899999999998
	.quad	0x3fef2975afaf8594              # double 0.97381099999999998
	.quad	0x3fbb27cbf6e3f78c              # double 0.106076
	.quad	0x3fefb422467be554              # double 0.99073900000000003
	.quad	0x3fdffdbd2fa0d77b              # double 0.49986199999999997
	.quad	0x3fe69b8cb8e086be              # double 0.706488
	.quad	0x3fcdcc07aaef2c73              # double 0.232789
	.quad	0x3fcdba12b5e529bb              # double 0.232241
	.quad	0x3fe31d3aa369fcf4              # double 0.59731800000000002
	.quad	0x3feebb96af038e2a              # double 0.960399
	.quad	0x3fd9f19d66adb403              # double 0.40537200000000001
	.quad	0x3fd16887a8d64d7f              # double 0.272005
	.quad	0x3feb6ca89fc6da45              # double 0.85701400000000005
	.quad	0x3fe873abc947064f              # double 0.76412000000000002
	.quad	0x3f96338b47c73eee              # double 0.021680999999999999
	.quad	0x3fe42f23033a4724              # double 0.63075400000000004
	.quad	0x3fc1707182235b4f              # double 0.136244
	.quad	0x3fb9bd8383ad9f0a              # double 0.100548
	.quad	0x3fd14dec1c1d6cf8              # double 0.27038099999999998
	.quad	0x3fc9d640e9d51b50              # double 0.201851
	.quad	0x3fd7a4fca42aed14              # double 0.36944500000000002
	.quad	0x3fec6f9b994e1a3f              # double 0.88862399999999997
	.quad	0x3fd9add9c27e9531              # double 0.40123599999999998
	.quad	0x3fafae147ae147ae              # double 0.061874999999999999
	.quad	0x3fc168f08461f9f0              # double 0.136015
	.quad	0x3fed3313be22e5de              # double 0.91248499999999999
	.quad	0x3fd771d606317269              # double 0.36632300000000001
	.quad	0x3fe85ccc89b0ee4a              # double 0.761328
	.quad	0x3fd849d7ba6698bb              # double 0.37950699999999998
	.quad	0x3fe43d0bfa0945fa              # double 0.63245200000000001
	.quad	0x3fd98bda9435ac8a              # double 0.39916099999999999
	.quad	0x3fdb3d03968d759f              # double 0.42559900000000001
	.quad	0x3fcf992428d434a0              # double 0.246861
	.quad	0x3fe3caab8a5ce5b4              # double 0.61848999999999998
	.quad	0x3fd468448cf7caa7              # double 0.31886399999999998
	.quad	0x3fe2bc6c97d8cf3a              # double 0.58550100000000005
	.quad	0x3fcbbc0a06e9ff0d              # double 0.21667600000000001
	.quad	0x3fd2cee17a02fb5d              # double 0.293877
	.quad	0x3fd3ae685db76b3c              # double 0.30752000000000002
	.quad	0x3fe3912fd32c625f              # double 0.61147300000000004
	.quad	0x3fe10fa58f7121ab              # double 0.53315999999999997
	.quad	0x3fe4484d76ab5808              # double 0.633826
	.quad	0x3fdef1d81f106680              # double 0.48351100000000002
	.quad	0x3fedb224aada33be              # double 0.92799600000000004
	.quad	0x3fe884f6dfc5cdd5              # double 0.766231
	.quad	0x3fc7d41fa7653437              # double 0.18616099999999999
	.quad	0x3feb77d955714b9d              # double 0.85838000000000003
	.quad	0x3fefeb7cbb3c8191              # double 0.99749600000000004
	.quad	0x3fe2843a2163fdd6              # double 0.57864099999999996
	.quad	0x3fe3ae83a109d063              # double 0.61505299999999996
	.quad	0x3fe11205bc01a36e              # double 0.53344999999999998
	.quad	0x3fd660f1b25f633d              # double 0.34966700000000001
	.quad	0x3f92f33ca31e7d9a              # double 0.018506000000000002
	.quad	0x3fe654d61b2a27f2              # double 0.69785600000000003
	.quad	0x3fe24d141a6937d2              # double 0.571909
	.quad	0x3fabb0e5e679463d              # double 0.054084
	.quad	0x3fe7d831f03d145e              # double 0.74514100000000005
	.quad	0x3fe3170b49e01de2              # double 0.59656299999999995
	.quad	0x3fd93ae685db76b4              # double 0.39422000000000001
	.quad	0x3fe33db1a6d698fe              # double 0.60128099999999995
	.quad	0x3fe81767903211cb              # double 0.752857
	.quad	0x3fa0e30446b69db6              # double 0.032981999999999997
	.quad	0x3fe7e646f1561911              # double 0.74685999999999997
	.quad	0x3fbf13cee9dd7ecc              # double 0.121396
	.quad	0x3fe19d7342edbb5a              # double 0.55047000000000001
	.quad	0x3fe85f6fd21ff2e5              # double 0.76165000000000005
	.quad	0x3fd46a055757d5aa              # double 0.318971
	.quad	0x3f8c8a7a41e57d9e              # double 0.013936
	.quad	0x3fdf14a0a0f4d7ae              # double 0.48563400000000001
	.quad	0x3fb19bb2788db057              # double 0.068781999999999996
	.quad	0x3fd1d441355475a3              # double 0.27857999999999999
	.quad	0x3feb23bff8a8f3aa              # double 0.84811400000000003
	.quad	0x3febfa26a22b3893              # double 0.87428600000000001
	.quad	0x3fdd9e6256366d7a              # double 0.46279199999999998
	.quad	0x3fc2b7a1c25d0742              # double 0.146229
	.quad	0x3fdc20578e5c4eb5              # double 0.43947399999999998
	.quad	0x3fedb12b1b36bd2b              # double 0.92787699999999995
	.quad	0x3fe9b6f5caf2d7f9              # double 0.80358399999999996
	.quad	0x3fefc9906cca2db6              # double 0.99335499999999999
	.quad	0x3fe3a350d2806af4              # double 0.61368599999999995
	.quad	0x3fbe76c8b4395810              # double 0.11899999999999999
	.quad	0x3fec81c92ddbdb5e              # double 0.89084300000000005
	.quad	0x3febb955f78359bc              # double 0.86637399999999997
	.quad	0x3fea377186551937              # double 0.819268
	.quad	0x3fb585ad538ac190              # double 0.084071000000000006
	.quad	0x3fef52b2bfdb4cc2              # double 0.97884499999999997
	.quad	0x3fe404039abf3387              # double 0.62548999999999999
	.quad	0x3fd1682f944241c4              # double 0.271984
	.quad	0x3fe964cb5bb384fd              # double 0.79355399999999998
	.quad	0x3fe7f8db4890928a              # double 0.74912800000000002
	.quad	0x3f65810624dd2f1b              # double 0.0026250000000000002
	.quad	0x3fea7af20ea5b531              # double 0.82750800000000002
	.quad	0x3feb3d790752da98              # double 0.85125399999999996
	.quad	0x3fe069ff0cbaf966              # double 0.51293900000000003
	.quad	0x3fe3a79fec99f1ae              # double 0.61421199999999998
	.quad	0x3fe0f04ff43419e3              # double 0.529335
	.quad	0x3fe8f776c4827b70              # double 0.78020800000000001
	.quad	0x3fe40650e779207d              # double 0.62577099999999997
	.quad	0x3fe38980b242070c              # double 0.61053500000000005
	.quad	0x3fc0e685db76b3bc              # double 0.13203500000000001
	.quad	0x3fede07a28bb0a2d              # double 0.93365200000000004
	.quad	0x3fe24ca0c282c6ef              # double 0.57185399999999997
	.quad	0x3fe3464345cfede9              # double 0.60232699999999995
	.quad	0x3fe9cb7d41743e96              # double 0.80608999999999997
	.quad	0x3fe822c669057d18              # double 0.75424500000000005
	.quad	0x3fbaef5ec80c73ac              # double 0.105215
	.quad	0x3fca1711947cfa27              # double 0.20382900000000001
	.quad	0x3fb978d4fdf3b646              # double 0.099500000000000005
	.quad	0x3fd50bbf50e34763              # double 0.32884200000000002
	.quad	0x3fe7490a350d2807              # double 0.72766600000000004
	.quad	0x3fe17ac3eb7cbb3d              # double 0.54623600000000005
	.quad	0x3fb944aa53fc0097              # double 0.098704
	.quad	0x3fe1f2f33ca31e7e              # double 0.56090700000000004
	.quad	0x3fd6e08aefb2aae3              # double 0.35745500000000002
	.quad	0x3fec9fec99f1ae2e              # double 0.89452200000000004
	.quad	0x3fddcdf69878316a              # double 0.465696
	.quad	0x3fef51d4738a3b58              # double 0.97873900000000002
	.quad	0x3fabfd71b0468449              # double 0.054668000000000001
	.quad	0x3fc9d72bcb5fe543              # double 0.201879
	.quad	0x3fd16c6de76427c8              # double 0.27224300000000001
	.quad	0x3fd50153bd167664              # double 0.328206
	.quad	0x3fcdca5bd944aa54              # double 0.232738
	.quad	0x3fe220ba1f4b1ee2              # double 0.56649499999999997
	.quad	0x3fe319d66adb402d              # double 0.59690399999999999
	.quad	0x3feaffbce4217d28              # double 0.84371799999999997
	.quad	0x3fd50e2c12ad81ae              # double 0.32899
	.quad	0x3fd76598e10cf5b2              # double 0.36557600000000001
	.quad	0x3fddef06b37867f1              # double 0.46771400000000002
	.quad	0x3fcc4241c3efae79              # double 0.220772
	.quad	0x3fd16efc371da37f              # double 0.272399
	.quad	0x3fc6bd4cfd08d4bb              # double 0.177652
	.quad	0x3fc54128bf3bea92              # double 0.166051
	.quad	0x3fd9d54da4ce8102              # double 0.403644
	.quad	0x3fdce4c942d490e6              # double 0.45146399999999998
	.quad	0x3fdbdfe75bc44bf5              # double 0.43554100000000001
	.quad	0x3fc506705c896dd2              # double 0.16425899999999999
	.quad	0x3f87d9dba908a266              # double 0.011646
	.quad	0x3fe1871a3b14a904              # double 0.54774199999999995
	.quad	0x3fea7a615a8deb10              # double 0.82743900000000004
	.quad	0x3fa3af31b152f3c3              # double 0.038446000000000001
	.quad	0x3fe09d0203e63e8e              # double 0.51916600000000002
	.quad	0x3fe3c692f6e8294a              # double 0.61799000000000004
	.quad	0x3fe59d883ba3443d              # double 0.67547999999999997
	.quad	0x3fe20129cbab649d              # double 0.56264199999999998
	.quad	0x3fe6982a9930be0e              # double 0.70607500000000001
	.quad	0x3fea3c8c0ce91c8f              # double 0.81989100000000004
	.quad	0x3fe40917d6b65a9b              # double 0.62611000000000006
	.quad	0x3fe6753e707e175d              # double 0.70181199999999999
	.quad	0x3fe4c9906cca2db6              # double 0.64960499999999999
	.quad	0x3fa8ea39c51dabe2              # double 0.048661999999999997
	.quad	0x3fc0a3df6db940ff              # double 0.13000100000000001
	.quad	0x3fe8fdb6e503fb37              # double 0.78097099999999997
	.quad	0x3fcdcac8e68e3ef3              # double 0.23275100000000001
	.quad	0x3feb7de2ef4e0115              # double 0.85911700000000002
	.quad	0x3fdcc84f8f8a4c1f              # double 0.44972600000000001
	.quad	0x3fe83482be8bc16a              # double 0.75641000000000003
	.quad	0x3fe2db7ae5796bfd              # double 0.58929200000000004
	.quad	0x3fe49f1ae2da554c              # double 0.64442200000000005
	.quad	0x3fe81acbc8c0ce92              # double 0.75327100000000002
	.quad	0x3fcc0dbad3a604e2              # double 0.219169
	.quad	0x3fc7f202107b7846              # double 0.18707299999999999
	.quad	0x3fc6dea897635e74              # double 0.17867
	.quad	0x3fbe1d10b1feeb2d              # double 0.117631
	.quad	0x3fd56ea854477ff1              # double 0.33487899999999998
	.quad	0x3fdf88b11409a240              # double 0.49271799999999999
	.quad	0x3fe2d9cf13cee9dd              # double 0.58908799999999995
	.quad	0x3fd62d9cf13cee9e              # double 0.34653400000000001
	.quad	0x3fcb1d9b1b79d90a              # double 0.211841
	.quad	0x3fdf98244e93e1ca              # double 0.49366100000000002
	.quad	0x3fc02480e8c8abd6              # double 0.126114
	.quad	0x3fed6195464dc22b              # double 0.91816200000000003
	.quad	0x3fe481d9f4d37c13              # double 0.64085099999999995
	.quad	0x3fee1e90795f676f              # double 0.94123100000000004
	.quad	0x3fb05f7c6759ab6d              # double 0.063957
	.quad	0x3fdf83b60285ec3e              # double 0.49241400000000002
	.quad	0x3fec01d19157abb9              # double 0.87522200000000006
	.quad	0x3fe09309c7ffde72              # double 0.51794899999999999
	.quad	0x3fecacc4ef88b978              # double 0.89609000000000005
	.quad	0x3fd5ee73e681a9b9              # double 0.34267900000000001
	.quad	0x3f9b6b6e0d23d4f1              # double 0.026776999999999999
	.quad	0x3fc501f31f46ed24              # double 0.16412199999999999
	.quad	0x3f8ee5eedcc20d56              # double 0.015087
	.quad	0x3fe8fbfe7e1fc090              # double 0.78076100000000004
	.quad	0x3fec36c9c0a8d21c              # double 0.88168800000000002
	.quad	0x3fc94d8ba40d90e2              # double 0.19767899999999999
	.quad	0x3fb91fd5885d3133              # double 0.098141999999999993
	.quad	0x3fea0ef34d6a161e              # double 0.81432499999999997
	.quad	0x3fc0aa53fc0096ff              # double 0.13019800000000001
	.quad	0x3fe29752977c88e8              # double 0.58097200000000004
	.quad	0x3feea41c3efae792              # double 0.95753299999999997
	.quad	0x3fe8395810624dd3              # double 0.75700000000000001
	.quad	0x3fd1947064ece9a3              # double 0.27468500000000001
	.quad	0x3fd405dd8f92af9b              # double 0.31285800000000002
	.quad	0x3fda31b152f3c2db              # double 0.40928300000000001
	.quad	0x3fd69fba450acc0c              # double 0.35349900000000001
	.quad	0x3fb6e48e8a71de6a              # double 0.089425000000000004
	.quad	0x3fe0de00d1b71759              # double 0.52710000000000001
	.quad	0x3fb3329c347e8cce              # double 0.074991000000000002
	.quad	0x3fe74dfefbf401c5              # double 0.728271
	.quad	0x3fc97f84449dbec2              # double 0.19920399999999999
	.quad	0x3fe01dadfb506dd7              # double 0.50362300000000004
	.quad	0x3fe465625a682b63              # double 0.63737600000000005
	.quad	0x3fe325df2239e6ac              # double 0.59837300000000004
	.quad	0x3fe6d18b0d0edc3c              # double 0.71307900000000002
	.quad	0x3fc8aa8650e77920              # double 0.19270399999999999
	.quad	0x3fe2bfceb78897ea              # double 0.58591400000000005
	.quad	0x3fcd892684cf073a              # double 0.23074800000000001
	.quad	0x3fdc7507e9d94d0e              # double 0.44464300000000001
	.quad	0x3fc6548a9bcfd4bf              # double 0.174455
	.quad	0x3fb2ba493c89f40a              # double 0.073154999999999998
	.quad	0x3fec967caea747d8              # double 0.89337
	.quad	0x3fde12ec6bce8534              # double 0.46990500000000002
	.quad	0x3fb5b43526527a20              # double 0.084780999999999995
	.quad	0x3fd3b4245f5ad96a              # double 0.30786999999999998
	.quad	0x3fd0a4d6e47dc37a              # double 0.26006099999999999
	.quad	0x3fb4b2a6b0d95140              # double 0.080851000000000006
	.quad	0x3fe6949e8815e397              # double 0.70564199999999999
	.quad	0x3fc7b845564b6630              # double 0.185311
	.quad	0x3fd2ff9b56323bbc              # double 0.29685099999999998
	.quad	0x3fd758ab92c06184              # double 0.36478699999999997
	.quad	0x3fe933b96af038e3              # double 0.78756400000000004
	.quad	0x3fc87685985ad539              # double 0.19111700000000001
	.quad	0x3fe9c3a2163fdd66              # double 0.80513100000000004
	.quad	0x3fcfaf965b20b806              # double 0.24754599999999999
	.quad	0x3fd73be6601bc98a              # double 0.36303099999999999
	.quad	0x3feddd0fa58f7122              # double 0.93323500000000004
	.quad	0x3fde4b05b7cfe586              # double 0.473329
	.quad	0x3fe8927d45a5fc7e              # double 0.76788199999999995
	.quad	0x3fe4e1e2de870974              # double 0.65257399999999999
	.quad	0x3fedbb1290257c91              # double 0.92908599999999997
	.quad	0x3fd733bd9cae2110              # double 0.36253299999999999
	.quad	0x3fe289a240314877              # double 0.57930099999999995
	.quad	0x3fd0ba1b1960fa16              # double 0.26135900000000001
	.quad	0x3fe5d8e0008637bd              # double 0.682724
	.quad	0x3fa68d972cd7cf5f              # double 0.044048999999999998
	.quad	0x3fd41e68a0d349bf              # double 0.31435600000000002
	.quad	0x3feebc297bfa4c62              # double 0.96046900000000002
	.quad	0x3fecf00474d9c6b0              # double 0.90429899999999996
	.quad	0x3fec6c226809d495              # double 0.88819999999999999
	.quad	0x3feab0468448cf7d              # double 0.83401800000000004
	.quad	0x3fb72f5558212945              # double 0.090565999999999994
	.quad	0x3fe4a03e63e8dda5              # double 0.64456100000000005
	.quad	0x3fd2e20ccff21b3b              # double 0.295047
	.quad	0x3fda2be48a58b3f6              # double 0.40892899999999999
	.quad	0x3fe013532e7b3d8e              # double 0.502359
	.quad	0x3fee1ab8e8ea39c5              # double 0.94076199999999999
	.quad	0x3fe60fabda0dfdf0              # double 0.68941300000000005
	.quad	0x3fe08b4e11dbca97              # double 0.51700500000000005
	.quad	0x3fe7fc32ebe596c8              # double 0.74953599999999998
	.quad	0x3feedbff04577d95              # double 0.96435499999999996
	.quad	0x3fc3c9bc77143394              # double 0.15459400000000001
	.quad	0x3fcdf8e3ac0c62e5              # double 0.23415800000000001
	.quad	0x3fe072c94b380cb7              # double 0.51401200000000002
	.quad	0x3fa8f25a250f8402              # double 0.048724000000000003
	.quad	0x3fdeccc037931444              # double 0.48124699999999998
	.quad	0x3fd91a86940357a3              # double 0.39224399999999998
	.quad	0x3fe6cdc011d3671b              # double 0.71261600000000003
	.quad	0x3fea97a46173b85f              # double 0.83101100000000006
	.quad	0x3fd3c9a77e5eaab0              # double 0.30918299999999999
	.quad	0x3fe3168f8e7ddca5              # double 0.59650400000000003
	.quad	0x3feef50a02b84125              # double 0.96741200000000004
	.quad	0x3fdc8f96e158750c              # double 0.44626399999999999
	.quad	0x3f9e0370cdc8754f              # double 0.029309999999999999
	.quad	0x3fc9f5946c332f01              # double 0.20280699999999999
	.quad	0x3fe6a7c7c5260f5e              # double 0.70798099999999997
	.quad	0x3fdaaae297396d09              # double 0.41667999999999999
	.quad	0x3fe9f6709fa54c55              # double 0.81133299999999997
	.quad	0x3fbc915bdd76683c              # double 0.111593
	.quad	0x3fb1c3ce2089e343              # double 0.069393999999999997
	.quad	0x3fecc5f17bd8be73              # double 0.89916300000000005
	.quad	0x3fdeb52c9d16fc9c              # double 0.47980800000000001
	.quad	0x3fcef3eccc469510              # double 0.24181900000000001
	.quad	0x3fdcafea3df6db94              # double 0.448237
	.quad	0x3fd88dfbd6a593a3              # double 0.38366600000000001
	.quad	0x3fc62c77574f722e              # double 0.173232
	.quad	0x3f8681ecd4aa10e0              # double 0.01099
	.quad	0x3fedc44e0daa0cae              # double 0.93021299999999996
	.quad	0x3f988e79aae6c8f7              # double 0.023980999999999999
	.quad	0x3fd4ca07f66e86c6              # double 0.32483099999999998
	.quad	0x3fe68b73d188f430              # double 0.70452300000000001
	.quad	0x3fed55d1c3ac929b              # double 0.91672600000000004
	.quad	0x3fd20435efa615a9              # double 0.28150700000000001
	.quad	0x3fe873eab367a0f9              # double 0.76415
	.quad	0x3fe2a82c6ef3d3a2              # double 0.58302900000000002
	.quad	0x3fca697aeddce7cd              # double 0.206344
	.quad	0x3fd71cf355cd91ef              # double 0.36114200000000002
	.quad	0x3fe54c1a8ac5c140              # double 0.66554000000000002
	.quad	0x3feba9ef5232d2bb              # double 0.86449399999999998
	.quad	0x3fa2b29e4d5d80e5              # double 0.036519000000000003
	.quad	0x3febefda836eb4ea              # double 0.87302900000000005
	.quad	0x3fdc994e1a3f4667              # double 0.446857
	.quad	0x3fcce9ff0cbaf966              # double 0.22589100000000001
	.quad	0x3fd288effe2a3cea              # double 0.28960799999999998
	.quad	0x3fe99d8c6d612c6b              # double 0.80048200000000003
	.quad	0x3fe19392189bd838              # double 0.54926399999999997
	.quad	0x3fea9aeb3dd11be7              # double 0.83141100000000001
	.quad	0x3fef3cfd4bf0995b              # double 0.97619500000000003
	.quad	0x3fed460029f16b12              # double 0.91479500000000002
	.quad	0x3fb804fb1183b603              # double 0.093826000000000007
	.quad	0x3f92a0a958537e2c              # double 0.018190999999999999
	.quad	0x3fd2398a65492ff5              # double 0.28476200000000002
	.quad	0x3fe0b7c99ae924f2              # double 0.52243499999999998
	.quad	0x3fdc810e8858ff76              # double 0.44537700000000002
	.quad	0x3fed11b60ae9680e              # double 0.908412
	.quad	0x3fd2fba450acc0be              # double 0.29660900000000001
	.quad	0x3fc4cd74927913e8              # double 0.16252
	.quad	0x3fbfb9170d62bf12              # double 0.123918
	.quad	0x3fe5c2efd438d1d9              # double 0.68004600000000004
	.quad	0x3fe7ef2e8c0485a1              # double 0.74794700000000003
	.quad	0x3fe2dde9c0229a5f              # double 0.58958900000000003
	.quad	0x3fe6453d20f2becf              # double 0.69595200000000002
	.quad	0x3fec2a6f3f52fc26              # double 0.88017999999999996
	.quad	0x3fc6465a57646ae4              # double 0.17402200000000001
	.quad	0x3fb04e2f37fbefd0              # double 0.063693
	.quad	0x3fdd000c9539b888              # double 0.45312799999999998
	.quad	0x3fe685a708ede54b              # double 0.70381499999999997
	.quad	0x3fdbf2778140dd40              # double 0.43667400000000001
	.quad	0x3fe6582773e24fec              # double 0.69826100000000002
	.quad	0x3fe10c77dd872f34              # double 0.53277200000000002
	.quad	0x3febec5d206c8712              # double 0.87260300000000002
	.quad	0x3fcdcb790fb65669              # double 0.23277200000000001
	.quad	0x3fd5490a350d2807              # double 0.33258300000000002
	.quad	0x3fc09cc319c5a3e4              # double 0.12978400000000001
	.quad	0x3fe864606748e475              # double 0.76225299999999996
	.quad	0x3fe4c039abf33871              # double 0.64846499999999996
	.quad	0x3fd3adafd113836b              # double 0.30747600000000003
	.quad	0x3fe7fe90ff972474              # double 0.74982499999999996
	.quad	0x3fe0d612c6ac215c              # double 0.52613200000000004
	.quad	0x3fc37edc7ef177a7              # double 0.152309
	.quad	0x3fdb3bf2f5558213              # double 0.42553400000000002
	.quad	0x3feddbee3d5fdcdf              # double 0.93309699999999995
	.quad	0x3fe3994e1a3f4667              # double 0.61246400000000001
	.quad	0x3fe3845564b662fe              # double 0.609904
	.quad	0x3fd4676ea4228998              # double 0.31881300000000001
	.quad	0x3fe33bb62413db7f              # double 0.60103899999999999
	.quad	0x3fe22619da9c9928              # double 0.56715099999999996
	.quad	0x3fc33d74d594f26b              # double 0.150313
	.quad	0x3fe6b88a8b08dd1e              # double 0.71002699999999996
	.quad	0x3fe048259e1f3a58              # double 0.50880700000000001
	.quad	0x3fca3c536d655e29              # double 0.20496600000000001
	.quad	0x3fe5ed8d36b4c7f3              # double 0.68524799999999997
	.quad	0x3fd76f1dc50ce4eb              # double 0.36615700000000001
	.quad	0x3fe71a027525460b              # double 0.72192500000000004
	.quad	0x3fe1fb24638c9753              # double 0.56190700000000005
	.quad	0x3fdd94d50ebaade6              # double 0.46220899999999998
	.quad	0x3fda467be553ac4f              # double 0.41055199999999997
	.quad	0x3fe410f0e90bc7b4              # double 0.62706799999999996
	.quad	0x3fe97d1782d38477              # double 0.79652000000000001
	.quad	0x3fdb29802c0a4a06              # double 0.42440800000000001
	.quad	0x3fbd8dde7a743a64              # double 0.11544599999999999
	.quad	0x3fb5918a009f6230              # double 0.084251999999999993
	.quad	0x3fd1440f23897204              # double 0.26977899999999999
	.quad	0x3fa4fe79ee02a77a              # double 0.041003999999999999
	.quad	0x3fe18c564f97edc8              # double 0.54838100000000001
	.quad	0x3fa03b81b64e0547              # double 0.031704000000000003
	.quad	0x3fea449129888f86              # double 0.82086999999999999
	.quad	0x3fd9e3821af7d30b              # double 0.40451100000000001
	.quad	0x3fd1c1d6cf850df1              # double 0.27745599999999998
	.quad	0x3fa5cb35f3d7d391              # double 0.042566
	.quad	0x3fc69b951c5c5719              # double 0.176623
	.quad	0x3fbe6f5019f3c70d              # double 0.11888600000000001
	.quad	0x3fe0f6ab5807fed2              # double 0.530111
	.quad	0x3fe5ba0407cc7d1c              # double 0.67895700000000003
	.quad	0x3fd38da3c21187e8              # double 0.30552000000000001
	.quad	0x3fdcf95d4e8fb00c              # double 0.45272000000000001
	.quad	0x3fed311622813448              # double 0.912242
	.quad	0x3fd8171e29b6b2af              # double 0.376411
	.quad	0x3fccabef06b37868              # double 0.223997
	.quad	0x3fd7b11c6d1e108c              # double 0.37018499999999999
	.quad	0x3f85c7cd898b2e9d              # double 0.010635
	.quad	0x3fd8208e15011905              # double 0.37698700000000002
	.quad	0x3fe5a30b9dc2f406              # double 0.676153
	.quad	0x3fe7dcfede97d06c              # double 0.74572700000000003
	.quad	0x3fd06f60e0eb67c3              # double 0.25679800000000003
	.quad	0x3fd02c98e53eb39a              # double 0.252722
	.quad	0x3fc62d1f1cfbb949              # double 0.17325199999999999
	.quad	0x3fc4dc1a47a9e2bd              # double 0.162967
	.quad	0x3fd3c4156e264e48              # double 0.30884299999999998
	.quad	0x3fef25c3dee78184              # double 0.97336
	.quad	0x3fe8f182235b4edb              # double 0.77948099999999998
	.quad	0x3fed35393250b524              # double 0.91274699999999997
	.quad	0x3feca73929ed3954              # double 0.89541300000000001
	.quad	0x3fc177b7c7820a31              # double 0.136466
	.quad	0x3fc0bcbe61cffeb0              # double 0.13075999999999999
	.quad	0x3fe7b671ac14c661              # double 0.74102100000000004
	.quad	0x3fe90f7db6e503fb              # double 0.78314099999999998
	.quad	0x3fdcdd7ecbb7f9d7              # double 0.451019
	.quad	0x3fdb6ae7d566cf42              # double 0.4284
	.quad	0x3fd9a0a5269595ff              # double 0.40043000000000001
	.quad	0x3fe89806f262888b              # double 0.76855799999999996
	.quad	0x3fd0cfa26a22b389              # double 0.26267299999999999
	.quad	0x3fd1c77dd872f33d              # double 0.27780100000000002
	.quad	0x3fc291ea78af3e47              # double 0.14507800000000001
	.quad	0x3fe0ff6d330941c8              # double 0.53117999999999999
	.quad	0x3fd678a6dacabc51              # double 0.35111399999999998
	.quad	0x3fe6a4f440af1cb9              # double 0.70763600000000004
	.quad	0x3febe85b9e8c47a1              # double 0.87211399999999994
	.quad	0x3fe5de02ea960b70              # double 0.68335100000000004
	.quad	0x3fd8e43675ddd2af              # double 0.38892900000000002
	.quad	0x3fe5cacf312b1b37              # double 0.68100700000000003
	.quad	0x3feaec226809d495              # double 0.84132499999999999
	.quad	0x3fc727aa68f4b620              # double 0.180898
	.quad	0x3fde810624dd2f1b              # double 0.47662500000000002
	.quad	0x3fd371a7e3087875              # double 0.30381200000000003
	.quad	0x3fd53dab5c39bcba              # double 0.33188899999999999
	.quad	0x3fcff9b56323bbc7              # double 0.249808
	.quad	0x3fc75e7c8d195897              # double 0.18257100000000001
	.quad	0x3fd5a7a85015c209              # double 0.33835799999999999
	.quad	0x3fb312c27a63736d              # double 0.074505000000000002
	.quad	0x3fd90d49949e8816              # double 0.39143600000000001
	.quad	0x3fd7ff822bbecaac              # double 0.37497000000000003
	.quad	0x3fe5b73affb04ee8              # double 0.67861700000000003
	.quad	0x3fec0b0d0edc3bd6              # double 0.87634900000000004
	.quad	0x3fccd1b71758e219              # double 0.22514999999999999
	.quad	0x3fc14b945308bb90              # double 0.13511899999999999
	.quad	0x3faa17f4128bf3bf              # double 0.050964000000000002
	.quad	0x3fe277f8ca8198f2              # double 0.57714500000000002
	.quad	0x3fdc0ac3a860dcba              # double 0.43815700000000002
	.quad	0x3fc680e8c8abd5dc              # double 0.17580899999999999
	.quad	0x3fd64dbdf8f47304              # double 0.348495
	.quad	0x3fe170d1fa333765              # double 0.54502200000000001
	.quad	0x3feab59ddc1e7968              # double 0.83467000000000002
	.quad	0x3fd13764f11b60af              # double 0.26900600000000002
	.quad	0x3fe9ab5a20ddc619              # double 0.80216699999999996
	.quad	0x3f80c564f97edc7f              # double 0.008189
	.quad	0x3fda2be48a58b3f6              # double 0.40892899999999999
	.quad	0x3fed900c521dda06              # double 0.92383400000000004
	.quad	0x3fdd77ccc0379314              # double 0.46043699999999999
	.quad	0x3fe53c3a42f1ed18              # double 0.66360200000000003
	.quad	0x3fd8ccc46950fc72              # double 0.38749800000000001
	.quad	0x3fee958750c1b973              # double 0.95575299999999996
	.quad	0x3fe893a71151611c              # double 0.76802400000000003
	.quad	0x3fe6846a5d6bebe1              # double 0.70366399999999996
	.quad	0x3fe04b599aa60914              # double 0.50919800000000004
	.quad	0x3fec5350092ccf6c              # double 0.88517000000000001
	.quad	0x3fee6050374ff866              # double 0.94925700000000002
	.quad	0x3fd6ff1d81f10668              # double 0.359321
	.quad	0x3fb5220ff540895d              # double 0.082550999999999999
	.quad	0x3fdc682b62845996              # double 0.44385799999999997
	.quad	0x3fe2e4430b178b37              # double 0.590364
	.quad	0x3fe9805c4651f3e9              # double 0.79691900000000004
	.quad	0x3fe809acbc8c0ce9              # double 0.75118099999999999
	.quad	0x3fe80068db8bac71              # double 0.75004999999999999
	.quad	0x3fd41c193b3a68b2              # double 0.31421500000000002
	.quad	0x3fe155757d5a9eb2              # double 0.541682
	.quad	0x3fd723c85c24c405              # double 0.36155900000000002
	.quad	0x3fd4b5525cc42635              # double 0.32356699999999999
	.quad	0x3fc2dd69d30270f4              # double 0.14738200000000001
	.quad	0x3fe06da4484944ed              # double 0.51338399999999995
	.quad	0x3fd574eebf65dbfd              # double 0.335262
	.quad	0x3fc1f7c6759ab6d0              # double 0.140374
	.quad	0x3fea6c84f8f8a4c2              # double 0.82574700000000001
	.quad	0x3fe55e310dbf0564              # double 0.66774800000000001
	.quad	0x3fa30ee49f51697f              # double 0.037222999999999999
	.quad	0x3fb8ded288ce703b              # double 0.09715
	.quad	0x3fcd6ea4228997c4              # double 0.229939
	.quad	0x3fe48986fcdee350              # double 0.64178800000000003
	.quad	0x3fe91426fe718a87              # double 0.78371000000000002
	.quad	0x3fe745d206c8711d              # double 0.72727299999999995
	.quad	0x3fb4ed2cbea4ebdd              # double 0.081743999999999997
	.quad	0x3fe3ca2120e1f7d7              # double 0.61842399999999997
	.quad	0x3fca6f3f52fc2657              # double 0.20652000000000001
	.quad	0x3fef8e1b4bb5e0f8              # double 0.986097
	.quad	0x3f7389b52007dd44              # double 0.0047699999999999999
	.quad	0x3fd66a593a2df938              # double 0.35024100000000002
	.quad	0x3fe61235f8099179              # double 0.68972299999999997
	.quad	0x3fe7bd4067cf1c32              # double 0.74185199999999996
	.quad	0x3fe2893532e7b3d9              # double 0.57924900000000001
	.quad	0x3fd28316a055757d              # double 0.28925099999999998
	.quad	0x3fc98023a6ce3583              # double 0.19922300000000001
	.quad	0x3fe72502eec7c958              # double 0.72326800000000002
	.quad	0x3fe226394face67d              # double 0.56716599999999995
	.quad	0x3fec91f0c34c1a8b              # double 0.89281500000000003
	.quad	0x3fec1539b888722a              # double 0.87759100000000001
	.quad	0x3fea9b34a44c7b03              # double 0.83144600000000002
	.quad	0x3fe0d4738a3b57c5              # double 0.52593400000000001
	.quad	0x3fdd5d3996fa82e8              # double 0.45881499999999997
	.quad	0x3fb53586ca89fc6e              # double 0.082848000000000004
	.quad	0x3fe0d1159c497742              # double 0.52552299999999996
	.quad	0x3fa27f1b69121251              # double 0.036125999999999998
	.quad	0x3f8bc2b94d940789              # double 0.013554999999999999
	.quad	0x3fc5778dd616f86a              # double 0.167711
	.quad	0x3feb2f33ca31e7da              # double 0.84951200000000004
	.quad	0x3fd86cf850df15a5              # double 0.38165100000000002
	.quad	0x3f9d031055b89939              # double 0.028332
	.quad	0x3fe2bf2f55582129              # double 0.58583799999999997
	.quad	0x3fe255da272862f6              # double 0.57298000000000004
	.quad	0x3fe01e29b6b2af14              # double 0.50368199999999996
	.quad	0x3f9d5f138bcdfefc              # double 0.028683
	.quad	0x3fdce4ffc9795b36              # double 0.45147700000000002
	.quad	0x3fe3e1c36976bc1f              # double 0.621309
	.quad	0x3fe7471d60631727              # double 0.72743100000000005
	.quad	0x3fbff151e75360d0              # double 0.124776
	.quad	0x3fe69aa1d755bccb              # double 0.706376
	.quad	0x3fc5c5479d4d8341              # double 0.17008300000000001
	.quad	0x3fe6932d6ece13f5              # double 0.70546600000000004
	.quad	0x3fe73e40420f6f09              # double 0.72634900000000002
	.quad	0x3fe5153bd1676641              # double 0.65884200000000004
	.quad	0x3fc646c764adff82              # double 0.174035
	.quad	0x3fb3d8be7296f651              # double 0.077525999999999998
	.quad	0x3fef70ed3d859c8d              # double 0.98253500000000004
	.quad	0x3fe7d77318fc5048              # double 0.74504999999999999
	.quad	0x3fe64fa69be09bb7              # double 0.69722300000000004
	.quad	0x3fc73ec460ed80a1              # double 0.18160299999999999
	.quad	0x3fe713faf42784a9              # double 0.72118899999999997
	.quad	0x3fd76d9be4cd7492              # double 0.36606499999999997
	.quad	0x3fee8d306a2b1705              # double 0.954735
	.quad	0x3fefe3ed0f627393              # double 0.99657300000000004
	.quad	0x3fcfc304ccee5abc              # double 0.248139
	.quad	0x3fe908765ba6efc3              # double 0.78228299999999995
	.quad	0x3fd1d74927913e81              # double 0.27876499999999999
	.quad	0x3fe38b71b8aa0019              # double 0.61077199999999998
	.quad	0x3fedbe7f2c3009b3              # double 0.929504
	.quad	0x3fddf9b994e1a3f4              # double 0.46836699999999998
	.quad	0x3fef8726d04e618d              # double 0.98524800000000001
	.quad	0x3f84f26aec0724b7              # double 0.010227999999999999
	.quad	0x3fa99fc2a8869c67              # double 0.050047000000000001
	.quad	0x3fdf0e90bc7b45f1              # double 0.48526399999999997
	.quad	0x3fe904ccee5abc0e              # double 0.78183599999999998
	.quad	0x3fc7675579af1887              # double 0.182841
	.quad	0x3fe59c1d6cf850df              # double 0.67530699999999999
	.quad	0x3fe4a7f3cf70153c              # double 0.64550200000000002
	.quad	0x3fc4a1f080303c08              # double 0.161192
	.quad	0x3feb260f5e41d4b7              # double 0.84839600000000004
	.quad	0x3fe0db899392189c              # double 0.52679900000000002
	.quad	0x3fee01b003686a4d              # double 0.93770600000000004
	.quad	0x3fee5c65c70435f0              # double 0.94877900000000004
	.quad	0x3fbfd4067cf1c326              # double 0.124329
	.quad	0x3fecd9a30984e400              # double 0.90156700000000001
	.quad	0x3fed597d49d7ba67              # double 0.91717400000000004
	.quad	0x3fe983621fafc8b0              # double 0.797288
	.quad	0x3fe4c15b1422ccb4              # double 0.64860300000000004
	.quad	0x3fe968a2ec28b2a7              # double 0.79402300000000003
	.quad	0x3fe12fb7e90ff972              # double 0.53707499999999997
	.quad	0x3fb7ae46cfc829d0              # double 0.092503000000000001
	.quad	0x3fdcb24a6a875d57              # double 0.448382
	.quad	0x3fd47542a23bff8b              # double 0.31965700000000002
	.quad	0x3fdb649d388a8b09              # double 0.42801600000000001
	.quad	0x3fdc59ddc1e7967d              # double 0.44298500000000002
	.quad	0x3fe63526527a2058              # double 0.69398800000000005
	.quad	0x3fddb7457c0b1359              # double 0.46431099999999997
	.quad	0x3fe72d87f88765ba              # double 0.72430799999999995
	.quad	0x3fe3305532617c1c              # double 0.59965000000000002
	.quad	0x3fee5f809917939a              # double 0.94915799999999995
	.quad	0x3fd3fb43d89ce4a8              # double 0.31221100000000002
	.quad	0x3fea9fa97e132b56              # double 0.83199000000000001
	.quad	0x3fea188f42fe8251              # double 0.81549799999999995
	.quad	0x3fd4ad080b673c4f              # double 0.32306099999999999
	.quad	0x3fea3b5bf6a0dbad              # double 0.81974599999999997
	.quad	0x3fd52cc70867ad8e              # double 0.33085799999999999
	.quad	0x3fcdbe0157eed45f              # double 0.23236100000000001
	.quad	0x3fe347991bc55864              # double 0.60248999999999997
	.quad	0x3fe5986db50f40e6              # double 0.67485700000000004
	.quad	0x3fefa597d49d7ba6              # double 0.98896399999999995
	.quad	0x3fd0e264e48626f6              # double 0.263818
	.quad	0x3fe5cf355cd91eeb              # double 0.68154400000000004
	.quad	0x3fce53868fd199bb              # double 0.236924
	.quad	0x3fe8a02b841248d8              # double 0.76955200000000001
	.quad	0x3fdf7e0ac7da1ec5              # double 0.49206800000000001
	.quad	0x3fd4ece13f4a98ab              # double 0.32695800000000003
	.quad	0x3fc4192a737110e4              # double 0.15701799999999999
	.quad	0x3feb7b6dca07f66f              # double 0.85881700000000005
	.quad	0x3fe0e837f7be121f              # double 0.52834700000000001
	.quad	0x3fc6ebd4cfd08d4c              # double 0.17907200000000001
	.quad	0x3f980389f83be660              # double 0.023451
	.quad	0x3fc250a45d41fa76              # double 0.14308599999999999
	.quad	0x3fcca044ae85b9e9              # double 0.22364100000000001
	.quad	0x3fddf5a964e8b7e5              # double 0.46811900000000001
	.quad	0x3fdf22dd7a99fa12              # double 0.48650300000000002
	.quad	0x3fd652220bc382a1              # double 0.34876299999999999
	.quad	0x3fe9d350092ccf6c              # double 0.80704500000000001
	.quad	0x3fef96db0dd82fd7              # double 0.98716499999999995
	.quad	0x3fccd1c7de5082cf              # double 0.22515199999999999
	.quad	0x3fe382d9cf13ceea              # double 0.60972300000000001
	.quad	0x3fdf940fecdd0d8d              # double 0.49341200000000002
	.quad	0x3fec024b33daf8df              # double 0.87527999999999995
	.quad	0x3fd736fc158fb43e              # double 0.36273100000000003
	.quad	0x3fde7f5e84f09529              # double 0.476524
	.quad	0x3fe794d2f5dbb9d0              # double 0.73691700000000004
	.quad	0x3fe56cf206423960              # double 0.66954899999999995
	.quad	0x3fd01cda2b5a20de              # double 0.25176100000000001
	.quad	0x3fc555cd91eeaa6d              # double 0.166681
	.quad	0x3fe5dbf26f1dc50d              # double 0.68309900000000001
	.quad	0x3fde466b1e5c0b9a              # double 0.47304800000000002
	.quad	0x3fd4deb52c9d16fd              # double 0.32609300000000002
	.quad	0x3fdb0d9d7774aba4              # double 0.42270600000000003
	.quad	0x3f899e518f3eccc4              # double 0.012508999999999999
	.quad	0x3fdd20296b3354c1              # double 0.45508799999999999
	.quad	0x3fddec41dd1a21ea              # double 0.46754499999999999
	.quad	0x3fee0ccdd93c46d8              # double 0.93906299999999998
	.quad	0x3fd8c51116a8b8f1              # double 0.38702799999999998
	.quad	0x3fd19f83be6601bd              # double 0.27536100000000002
	.quad	0x3fed2fd5454152b1              # double 0.91208900000000004
	.quad	0x3fe77cd898b2e9cd              # double 0.73399000000000003
	.quad	0x3fea952d234eb9a1              # double 0.83070999999999995
	.quad	0x3fe38ea39c51dabe              # double 0.61116199999999998
	.quad	0x3fed98e325d4a5df              # double 0.92491299999999999
	.quad	0x3fe07861a60d4563              # double 0.51469500000000001
	.quad	0x3fc5f7e80389f83c              # double 0.171628
	.quad	0x3fd208bfc2224edf              # double 0.28178399999999998
	.quad	0x3f98c79f666234a8              # double 0.024198999999999998
	.quad	0x3fe1f9830e3cd9a5              # double 0.56170799999999999
	.quad	0x3fe4557de0d66f0d              # double 0.635436
	.quad	0x3fe6e7b1c0010c6f              # double 0.71578299999999995
	.quad	0x3f8456b441bb8c33              # double 0.0099310000000000005
	.quad	0x3fae13f4a98aa865              # double 0.058746
	.quad	0x3fc545e9185cee18              # double 0.16619600000000001
	.quad	0x3feb259e1f3a57eb              # double 0.84834200000000004
	.quad	0x3fd786f049a9973e              # double 0.36761100000000002
	.quad	0x3fe1260b2c83ec89              # double 0.53589399999999998
	.quad	0x3fd66cb5350092cd              # double 0.350385
	.quad	0x3fed7a4e7ab75643              # double 0.92118
	.quad	0x3fd5bea91d9b1b7a              # double 0.33976200000000001
	.quad	0x3fe26db0dd82fd76              # double 0.57589000000000001
	.quad	0x3fd6eaa6d2674081              # double 0.358072
	.quad	0x3fe68f5e41d4b6a6              # double 0.70500099999999999
	.quad	0x3fef57e23f24d8fd              # double 0.97947799999999995
	.quad	0x3fe52775fb2edfe7              # double 0.66106699999999996
	.quad	0x3fa14ec204f2ae08              # double 0.033804000000000001
	.quad	0x3f9c33b5393250b5              # double 0.027541
	.quad	0x3fbab3dd11be6e65              # double 0.104307
	.quad	0x3fcba2f8bdec5f39              # double 0.21591099999999999
	.quad	0x3fd8e95b78cc9a78              # double 0.38924300000000001
	.quad	0x3fd45c4eb56fb8f5              # double 0.31813399999999997
	.quad	0x3fee932f87ad080b              # double 0.95546699999999996
	.quad	0x3fd11f7d73c92578              # double 0.26754699999999998
	.quad	0x3fdbf1d3ed527e52              # double 0.436635
	.quad	0x3fd5e71476af89c6              # double 0.34222900000000001
	.quad	0x3fd80225742dcf46              # double 0.37513099999999999
	.quad	0x3fac67168f8e7ddd              # double 0.055474000000000002
	.quad	0x3fd8f36ac647778e              # double 0.38985700000000001
	.quad	0x3feabaabcd78c437              # double 0.835287
	.quad	0x3fe7999dcb5781c7              # double 0.73750199999999999
	.quad	0x3fe62a821f2990f3              # double 0.692689
	.quad	0x3fbeeac8605681ed              # double 0.12077
	.quad	0x3fe4e35c5b4aa971              # double 0.65275399999999995
	.quad	0x3fe994ccab3edd8b              # double 0.79941399999999996
	.quad	0x3fe3b7b28954a7f8              # double 0.616174
	.quad	0x3fd86f2e8c0485a1              # double 0.38178600000000001
	.quad	0x3fe27c32ebe596c8              # double 0.57766099999999998
	.quad	0x3fe99116a8b8f14e              # double 0.79896100000000003
	.quad	0x3fd2515054ac29bf              # double 0.286213
	.quad	0x3fed36e503fb3743              # double 0.91295099999999996
	.quad	0x3fcc83a96d4c33b5              # double 0.22276799999999999
	.quad	0x3fb2fd21ff2e48e9              # double 0.074175000000000005
	.quad	0x3fd3cc63f141205c              # double 0.30935000000000001
	.quad	0x3feb2e90364388ec              # double 0.84943400000000002
	.quad	0x3fdd2278d0cc35ce              # double 0.45522899999999999
	.quad	0x3fb09c2c1b10fd7e              # double 0.064882999999999996
	.quad	0x3febbd1ed9dfdac7              # double 0.86683600000000005
	.quad	0x3fc8377186551937              # double 0.189192
	.quad	0x3fc372f76e6106ab              # double 0.151946
	.quad	0x3fd8b213e3e29308              # double 0.38586900000000002
	.quad	0x3feb761672324c83              # double 0.85816499999999996
	.quad	0x3fe98e496ededaec              # double 0.79861899999999996
	.quad	0x3fbeb5807fed2029              # double 0.11995699999999999
	.quad	0x3fd75803cd141a69              # double 0.36474699999999999
	.quad	0x3fda97a67a52ac75              # double 0.41550599999999999
	.quad	0x3fed2ca57a786c22              # double 0.91169999999999995
	.quad	0x3fe71c92ddbdb5d9              # double 0.72223800000000005
	.quad	0x3fe86a704bc27632              # double 0.76299300000000003
	.quad	0x3fdfe94ab1d4f9c2              # double 0.498614
	.quad	0x3fe9fe75bc44bf4d              # double 0.81231200000000003
	.quad	0x3fcfae147ae147ae              # double 0.2475
	.quad	0x3fec7255f3519bd4              # double 0.88895699999999999
	.quad	0x3fe83f290abb44e5              # double 0.75770999999999999
	.quad	0x3fe6af33ca31e7da              # double 0.70888700000000004
	.quad	0x3fe08f2170931013              # double 0.51747200000000004
	.quad	0x3fbee7924af0bf1a              # double 0.12072099999999999
	.quad	0x3fec4c1ca3a4b557              # double 0.88429100000000005
	.quad	0x3fde7ee4e26d4802              # double 0.476495
	.quad	0x3fede1522a6f3f53              # double 0.933755
	.quad	0x3fde880d801b4352              # double 0.47705399999999998
	.quad	0x3fe08ef566490a35              # double 0.51745099999999999
	.quad	0x3fd6013a92a30553              # double 0.34382499999999999
	.quad	0x3f6c8a7a41e57d9e              # double 0.0034840000000000001
	.quad	0x3fe6a856605ee569              # double 0.70804900000000004
	.quad	0x3f9331a08bfc2225              # double 0.018744
	.quad	0x3fd0f36694898f60              # double 0.26485599999999998
	.quad	0x3fa385a4f00ef135              # double 0.038129000000000003
	.quad	0x3fa81c4fc1df3301              # double 0.047091000000000001
	.quad	0x3fe7b56323bbc6eb              # double 0.740892
	.quad	0x3fe275989df1172f              # double 0.57685500000000001
	.quad	0x3fee69c66d373b00              # double 0.95041200000000003
	.quad	0x3fe9e47fdc5931ca              # double 0.80914299999999995
	.quad	0x3eef75104d551d69              # double 1.5E-5
	.quad	0x3fd98aa433508f65              # double 0.39908700000000003
	.quad	0x3fe6c5c78a6dacac              # double 0.71164300000000003
	.quad	0x3fde116ebd4cfd09              # double 0.46981400000000001
	.quad	0x3fecb8aa00192a73              # double 0.89754199999999995
	.quad	0x3fe087b784662bae              # double 0.516567
	.quad	0x3fe91a95421c0443              # double 0.78449500000000005
	.quad	0x3fe89eeaa6d26741              # double 0.76939900000000006
	.quad	0x3fddf644955b4678              # double 0.46815600000000002
	.quad	0x3fda0c23fab10ba6              # double 0.40699099999999999
	.quad	0x3fdfb242070b8cfc              # double 0.495255
	.quad	0x3fec53f9e7b80a9e              # double 0.88525100000000001
	.quad	0x3fb1c3265add9c28              # double 0.069384000000000001
	.quad	0x3fd55989df1172ef              # double 0.33359
	.quad	0x3fe2af07bfe7e1fc              # double 0.583866
	.quad	0x3fe26594af4f0d84              # double 0.57489999999999997
	.quad	0x3fe722d72ffd1dcd              # double 0.72300299999999995
	.quad	0x3fe0b9e8c47a17f4              # double 0.52269399999999999
	.quad	0x3fcf77079e59f2bb              # double 0.24582000000000001
	.quad	0x3fe4ec56d5cfaace              # double 0.65385000000000004
	.quad	0x3f9681ecd4aa10e0              # double 0.02198
	.quad	0x3fe478fabda0dfdf              # double 0.639768
	.quad	0x3fc88a58b3f63c32              # double 0.191722
	.quad	0x3fb5ae70c1333b97              # double 0.084693000000000004
	.quad	0x3fec7fa7eb6bf445              # double 0.89058300000000001
	.quad	0x3fec573c925785f9              # double 0.88564900000000002
	.quad	0x3fee589ce4a7b4e5              # double 0.94831699999999997
	.quad	0x3fe95247cb70ac3b              # double 0.79129400000000005
	.quad	0x3fe59a5a89b951c6              # double 0.67509200000000003
	.quad	0x3fe929e4d5d80e49              # double 0.78636399999999995
	.quad	0x3fec8fc0d2c386d3              # double 0.89254800000000001
	.quad	0x3fdc56d19dece571              # double 0.442799
	.quad	0x3fd0a4e7ab756430              # double 0.26006499999999999
	.quad	0x3fb36ac647778dd6              # double 0.075847999999999999
	.quad	0x3fd0008e9b38d60a              # double 0.25003399999999998
	.quad	0x3fe75ba4d6e47dc3              # double 0.72993699999999995
	.quad	0x3fdb1a8ef77f27fe              # double 0.42349599999999998
	.quad	0x3fe8b1183b60285f              # double 0.77161800000000003
	.quad	0x3fd2e26916440f24              # double 0.29506900000000003
	.quad	0x3fe4ca925fe974a3              # double 0.64972799999999997
	.quad	0x3fccd245b291b824              # double 0.22516700000000001
	.quad	0x3fdf538ef34d6a16              # double 0.48947499999999999
	.quad	0x3fd0d6b65a9a8049              # double 0.26310499999999998
	.quad	0x3fda3c1ce6c093d9              # double 0.40991899999999998
	.quad	0x3fdb2641b328b6d8              # double 0.42420999999999998
	.quad	0x3fe2bc126a65cf68              # double 0.58545800000000003
	.quad	0x3fd493e5fb71fbc6              # double 0.32152700000000001
	.quad	0x3fe734b0e1b4bb5e              # double 0.72518199999999999
	.quad	0x3fe367b5f1bef49d              # double 0.60641
	.quad	0x3fec6160d887ebf2              # double 0.88688699999999998
	.quad	0x3fe70d7be9856a38              # double 0.72039600000000004
	.quad	0x3fe0d7f3061c79b3              # double 0.52636099999999997
	.quad	0x3fe31b0468448cf8              # double 0.59704800000000002
	.quad	0x3febe134ce3de615              # double 0.87124100000000004
	.quad	0x3fd6f0307f23cc8e              # double 0.35841000000000001
	.quad	0x3fe5d2135daad602              # double 0.681894
	.quad	0x3fdb0be9424e5929              # double 0.42260199999999998
	.quad	0x3fe2468cac4b4d05              # double 0.57111199999999995
	.quad	0x3fda897e996312f5              # double 0.41464200000000001
	.quad	0x3fb86748e4755ffe              # double 0.095325999999999994
	.quad	0x3fef85b9e8c47a18              # double 0.985074
	.quad	0x3feb11cf355cd91f              # double 0.84592400000000001
	.quad	0x3feaf2da122fad6d              # double 0.84214500000000003
	.quad	0x3fe508f42fe82518              # double 0.65734300000000001
	.quad	0x3fc522d948dc11e4              # double 0.165126
	.quad	0x3fdbb3bfb58d1527              # double 0.43284600000000001
	.quad	0x3fe9df1e0828c36e              # double 0.80848600000000004
	.quad	0x3fde458cd20afa2f              # double 0.472995
	.quad	0x3fe63e6a337a80d0              # double 0.69511900000000004
	.quad	0x3fe535bf6a0dbad4              # double 0.66281100000000004
	.quad	0x3fc1781c714fce74              # double 0.13647799999999999
	.quad	0x3fd9fbb9496249a1              # double 0.40598899999999999
	.quad	0x3fb9cd0bb6ed6777              # double 0.100785
	.quad	0x3fca69057d1782d4              # double 0.20633000000000001
	.quad	0x3fe60711d798d8a9              # double 0.68836299999999995
	.quad	0x3fd9604e1e71044f              # double 0.39650299999999999
	.quad	0x3fd697aeddce7cd0              # double 0.35300799999999999
	.quad	0x3fe393ff25e56cd7              # double 0.61181600000000003
	.quad	0x3fedfc9de0503750              # double 0.937087
	.quad	0x3feec4f5d35653ca              # double 0.96154300000000004
	.quad	0x3fe602cb20fb224b              # double 0.68784100000000004
	.quad	0x3fd520535c9e6688              # double 0.330098
	.quad	0x3fb689ca18bd6627              # double 0.088039999999999993
	.quad	0x3fe2d7928e0c9d9d              # double 0.58881499999999998
	.quad	0x3fec384ba0e84274              # double 0.88187199999999998
	.quad	0x3fe3bf9c62a1b5c8              # double 0.61714000000000002
	.quad	0x3fe66138fffbce42              # double 0.69936799999999999
	.quad	0x3fec562174c4cdfb              # double 0.88551400000000002
	.quad	0x3fdef84cad57bc7f              # double 0.48390499999999997
	.quad	0x3fcef4c6e6d9be4d              # double 0.241845
	.quad	0x3fe8951e75360d02              # double 0.76820299999999997
	.quad	0x3feb88b32ce89657              # double 0.86043700000000001
	.quad	0x3fc26aa087ca643d              # double 0.14387900000000001
	.quad	0x3fd7ed0b30b5aa71              # double 0.37384299999999998
	.quad	0x3fcba919695d91ac              # double 0.21609800000000001
	.quad	0x3f9a2b9d3cbc48f1              # double 0.025557
	.quad	0x3fdac5c5718eb895              # double 0.418321
	.quad	0x3febd5e4a3832767              # double 0.86985999999999997
	.quad	0x3fe649a133c1ce6c              # double 0.696488
	.quad	0x3fef245b291b823d              # double 0.97318800000000005
	.quad	0x3fdfce075f6fd220              # double 0.49695
	.quad	0x3fd4b5f1bef49cf5              # double 0.32360499999999998
	.quad	0x3fda2b7fe08aefb3              # double 0.40890500000000002
	.quad	0x3fdeccb3a2595bbc              # double 0.48124400000000001
	.quad	0x3fa562174c4cdfad              # double 0.041764000000000003
	.quad	0x3febd50225742dcf              # double 0.86975199999999997
	.quad	0x3fecb61bb05faebc              # double 0.89722999999999997
	.quad	0x3fa395a294141e9b              # double 0.038251
	.quad	0x3fd4b00bcbe61d00              # double 0.323245
	.quad	0x3fe621d755bccaf7              # double 0.691631
	.quad	0x3fefebfca85caafc              # double 0.99755700000000002
	.quad	0x3fe3c1ebc83a96d5              # double 0.61742200000000003
	.quad	0x3fddb7e4de3b8a1a              # double 0.46434900000000001
	.quad	0x3feb14983d790753              # double 0.84626400000000002
	.quad	0x3fddd506573215fd              # double 0.46612700000000001
	.quad	0x3fe8a3e39f77292c              # double 0.77000599999999996
	.quad	0x3fe77e4de3b8a19d              # double 0.73416800000000004
	.quad	0x3fe41fa76534373f              # double 0.62886399999999998
	.quad	0x3fd64af0bf1a5ca3              # double 0.34832400000000002
	.quad	0x3fcd3e681a9b8cb9              # double 0.228467
	.quad	0x3fe165c4eb56fb8f              # double 0.54367299999999996
	.quad	0x3fee24bba12b5e53              # double 0.94198400000000004
	.quad	0x3f9892ab68cef673              # double 0.023997000000000001
	.quad	0x3fe83b62413db7f1              # double 0.75724899999999995
	.quad	0x3fb4e28ed5f138bd              # double 0.081582000000000002
	.quad	0x3fe10d25edd05293              # double 0.53285499999999997
	.quad	0x3fdeb30f8c64fdb1              # double 0.47967900000000002
	.quad	0x3fbc435efa615a8e              # double 0.110403
	.quad	0x3fd08c0ce91c8eac              # double 0.258548
	.quad	0x3fee38b47c73eee5              # double 0.94442199999999998
	.quad	0x3fecb6848beb5b2d              # double 0.89727999999999997
	.quad	0x3fec8f7121ab4b73              # double 0.89251000000000003
	.quad	0x3fc711409a240315              # double 0.18021400000000001
	.quad	0x3fd0167a95c853c1              # double 0.25137199999999998
	.quad	0x3fe93a109d0635a4              # double 0.78833799999999998
	.quad	0x3fa7d1782d38476f              # double 0.046519999999999999
	.quad	0x3feff9f01b866e44              # double 0.99926000000000003
	.quad	0x3fd2e2f37fbefd00              # double 0.29510199999999998
	.quad	0x3fcc63beec39799e              # double 0.22179399999999999
	.quad	0x3fe2c70867ad8e43              # double 0.58679599999999998
	.quad	0x3fe9e97aeddce7cd              # double 0.809751
	.quad	0x3fe98f27bb2fec57              # double 0.79872500000000002
	.quad	0x3fe0285015c20924              # double 0.50492099999999995
	.quad	0x3fe0fea1c68ec52a              # double 0.53108299999999997
	.quad	0x3fe2ba83f4eca687              # double 0.58526800000000001
	.quad	0x3fc2d1958969a0ae              # double 0.14702100000000001
	.quad	0x3fe49f87f023e9ea              # double 0.64447399999999999
	.quad	0x3fe351611ba3ca75              # double 0.603684
	.quad	0x3fdae5cd4ed2cbea              # double 0.42027599999999998
	.quad	0x3fe57b4a2339c0ec              # double 0.67130000000000001
	.quad	0x3fd4c868b9fdbd30              # double 0.32473200000000002
	.quad	0x3fe4ad5e071c53f4              # double 0.64616300000000004
	.quad	0x3fdb34373f316e37              # double 0.425062
	.quad	0x3fc376d549731099              # double 0.152064
	.quad	0x3fcae29f9ce8d973              # double 0.21004100000000001
	.quad	0x3fea6ecbfb15b574              # double 0.826025
	.quad	0x3fe3911f0c34c1a9              # double 0.61146500000000004
	.quad	0x3fd4255b035bd513              # double 0.31478
	.quad	0x3fe278ee28672757              # double 0.57726200000000005
	.quad	0x3fee037f7be121ee              # double 0.93792699999999996
	.quad	0x3fc0fecdd0d8cb08              # double 0.13277600000000001
	.quad	0x3fbce368f08461fa              # double 0.112845
	.quad	0x3fcecf5b1c864884              # double 0.240703
	.quad	0x3fcd075b3e1437c5              # double 0.22678699999999999
	.quad	0x3fbe876e1deacc92              # double 0.119254
	.quad	0x3fe125269595feda              # double 0.53578499999999996
	.quad	0x3fdd8bc59b8023a7              # double 0.46165600000000001
	.quad	0x3fe6d5cd91eeaa6d              # double 0.71359899999999998
	.quad	0x3fb414b599aa6091              # double 0.078440999999999997
	.quad	0x3fd1c60029f16b12              # double 0.27771000000000001
	.quad	0x3fe4b82c2bd7f51f              # double 0.647482
	.quad	0x3fdc854cdb7ae579              # double 0.44563599999999998
	.quad	0x3fef5666a98244e9              # double 0.97929699999999997
	.quad	0x3fe6d371971c10d8              # double 0.71331100000000003
	.quad	0x3fdac4545846e8f3              # double 0.41823300000000002
	.quad	0x3fe8858bc59b8024              # double 0.76630200000000003
	.quad	0x3fd940c8472c0e7c              # double 0.39457900000000001
	.quad	0x3fe23a647fdc5932              # double 0.56962800000000002
	.quad	0x3fe174e65bea0ba2              # double 0.54552
	.quad	0x3fe2bb9cf9a06a6e              # double 0.58540199999999998
	.quad	0x3fdae19fc2a8869c              # double 0.42002099999999998
	.quad	0x3fbea8c9b845564b              # double 0.11976299999999999
	.quad	0x3feb7154003254e7              # double 0.85758400000000001
	.quad	0x3fe1ef826edaa92e              # double 0.56048699999999996
	.quad	0x3fe754e4c942d491              # double 0.72911300000000001
	.quad	0x3fec5e9e1b089a02              # double 0.88654999999999995
	.quad	0x3fd188a04d12018a              # double 0.27396399999999999
	.quad	0x3fe9a46e08f21709              # double 0.80132199999999998
	.quad	0x3fed5d69d30270f4              # double 0.91765300000000005
	.quad	0x3fa41fc8f32378ab              # double 0.039305
	.quad	0x3fd94c985f06f694              # double 0.39529999999999998
	.quad	0x3fed5da8bd230b9e              # double 0.91768300000000003
	.quad	0x3fe4aba7b9170d63              # double 0.64595400000000003
	.quad	0x3fe5bccaf709b739              # double 0.67929600000000001
	.quad	0x3fb0f6f08cc575c0              # double 0.066267999999999994
	.quad	0x3fd970153bd16766              # double 0.39746599999999999
	.quad	0x3fd2afd113836a83              # double 0.29198099999999999
	.quad	0x3febe2888b545c79              # double 0.87140300000000004
	.quad	0x3fd0bb517a46173c              # double 0.26143300000000003
	.quad	0x3fc8ac6cdaf4adbc              # double 0.19276199999999999
	.quad	0x3fe0b380cb6c7a7d              # double 0.52191200000000004
	.quad	0x3fe064020817fc76              # double 0.512208
	.quad	0x3fe3a224edf61240              # double 0.61354299999999995
	.quad	0x3fe373f748a15981              # double 0.60790599999999995
	.quad	0x3fe4087229e90796              # double 0.626031
	.quad	0x3fd0e2eb1c432ca5              # double 0.26384999999999997
	.quad	0x3fe951aa821f2991              # double 0.79121900000000001
	.quad	0x3fe12be6a337a80d              # double 0.536609
	.quad	0x3fc9544bb1af3a15              # double 0.19788500000000001
	.quad	0x3fecb4bd76ee73e7              # double 0.89706300000000005
	.quad	0x3fc6aff6d330941d              # double 0.17724500000000001
	.quad	0x3fd80cc78e9f6a94              # double 0.37578
	.quad	0x3fa28b6d86ec17ec              # double 0.036220000000000002
	.quad	0x3fc20a5269595fee              # double 0.14094000000000001
	.quad	0x3fdfff4fd6d7e88a              # double 0.49995800000000001
	.quad	0x3fae55e28aa43351              # double 0.059249000000000003
	.quad	0x3fde5b6c3760bf5d              # double 0.47432999999999997
	.quad	0x3fe00642396073de              # double 0.50076399999999999
	.quad	0x3fcd27fe4bcad9ae              # double 0.22778300000000001
	.quad	0x3fe02454de7ea5f8              # double 0.50443499999999997
	.quad	0x3fd5e9d0e991ff71              # double 0.34239599999999998
	.quad	0x3fe22becedd48451              # double 0.56786199999999998
	.quad	0x3fef666ec9e236c1              # double 0.98125399999999995
	.quad	0x3feb6dcc20d5629e              # double 0.85715300000000005
	.quad	0x3fef317481b21c47              # double 0.97478699999999995
	.quad	0x3fe19f9f01b866e4              # double 0.55073499999999997
	.quad	0x3fe05bd72bcb5fe5              # double 0.51121099999999997
	.quad	0x3fec9c1d6cf850df              # double 0.89405699999999999
	.quad	0x3fee2a1f8e3ac0c6              # double 0.94264199999999998
	.quad	0x3fe672f33ca31e7e              # double 0.70153200000000004
	.quad	0x3febe047d3d4280b              # double 0.87112800000000001
	.quad	0x3fd24f61672324c8              # double 0.28609499999999999
	.quad	0x3fb2333764f11b61              # double 0.071094000000000004
	.quad	0x3fdabd72bcb5fe54              # double 0.41781299999999999
	.quad	0x3feb02b628459967              # double 0.84408099999999997
	.quad	0x3fd24fbdad7518b1              # double 0.28611700000000001
	.quad	0x3fde2edfe75bc44c              # double 0.471611
	.quad	0x3fafd6b65a9a8049              # double 0.062184999999999997
	.quad	0x3f91461b6d43d039              # double 0.016868999999999999
	.quad	0x3fec359791819d24              # double 0.88154200000000004
	.quad	0x3fe7e162f166e009              # double 0.74626300000000001
	.quad	0x3fc1824d4cb9ecf6              # double 0.13678899999999999
	.quad	0x3fd533a8a3f8982d              # double 0.33127800000000002
	.quad	0x3fc1d8d79d0a6762              # double 0.13943
	.quad	0x3fe7734f82f51266              # double 0.73282599999999998
	.quad	0x3fd6b588e368f084              # double 0.35482999999999998
	.quad	0x3fda50374ff865d8              # double 0.41114600000000001
	.quad	0x3fcf88db0574b407              # double 0.246364
	.quad	0x3fc15a294141e9af              # double 0.13556399999999999
	.quad	0x3fca93faf42784a9              # double 0.20764099999999999
	.quad	0x3fec3ea4ebdd334c              # double 0.88264699999999995
	.quad	0x3febc0d90e23af32              # double 0.86729100000000003
	.quad	0x3fca468448cf7caa              # double 0.20527699999999999
	.quad	0x3fe8dbdd76683c29              # double 0.77683899999999995
	.quad	0x3fedcd4024b33db0              # double 0.93130500000000005
	.quad	0x3feb344a1f080304              # double 0.85013300000000002
	.quad	0x3fe1c03148776816              # double 0.55471099999999995
	.quad	0x3fe0d744f5d35654              # double 0.52627800000000002
	.quad	0x3fdbb65ecc3e3194              # double 0.433006
	.quad	0x3fd90f776c4827b7              # double 0.391569
	.quad	0x3fe3a921ccd96207              # double 0.61439600000000005
	.quad	0x3feac18f81e8a2ec              # double 0.83612799999999998
	.quad	0x3fe652d234eb9a17              # double 0.69760999999999995
	.quad	0x3feee2a80064a9ce              # double 0.96516800000000003
	.quad	0x3fe139b456b441bc              # double 0.53829400000000005
	.quad	0x3fd63343fa2ad3e9              # double 0.34687899999999999
	.quad	0x3fe2099e0e73604a              # double 0.56367400000000001
	.quad	0x3fead4cfd08d4bad              # double 0.83847799999999995
	.quad	0x3fe7d6e264e48627              # double 0.744981
	.quad	0x3feff826edaa92e6              # double 0.99904199999999999
	.quad	0x3fe1f3bea91d9b1b              # double 0.56100399999999995
	.quad	0x3fc0357a355043e5              # double 0.12663199999999999
	.quad	0x3fc851eb851eb852              # double 0.19
	.quad	0x3fd6c78e9f6a93f3              # double 0.35593000000000002
	.quad	0x3fd063c31df761cc              # double 0.25608900000000001
	.quad	0x3fdf72580c308feb              # double 0.49135400000000001
	.quad	0x3fea34117f84449e              # double 0.81885600000000003
	.quad	0x3fe942e557de0d67              # double 0.78941600000000001
	.quad	0x3fdcf809917939a8              # double 0.45263900000000001
	.quad	0x3fe5ca4095f2452c              # double 0.68093899999999996
	.quad	0x3fbff90d9d7774ac              # double 0.12489400000000001
	.quad	0x3fecc2bb6672fba0              # double 0.89877099999999998
	.quad	0x3fdc1d8e86402081              # double 0.43930399999999997
	.quad	0x3fce29f9ce8d972d              # double 0.235656
	.quad	0x3fd9b8a5ce5b4246              # double 0.401895
	.quad	0x3fe8e79ee02a77a3              # double 0.77827400000000002
	.quad	0x3fef96e158750c1c              # double 0.98716800000000004
	.quad	0x3fcc406c00da1a93              # double 0.220716
	.quad	0x3f6fddebd9018e75              # double 0.0038899999999999998
	.quad	0x3fd9ede97d06bbdc              # double 0.40514600000000001
	.quad	0x3feb3c7b45f17bd9              # double 0.85113300000000003
	.quad	0x3fd5f6d7625204b0              # double 0.34319100000000002
	.quad	0x3fd985a921ccd962              # double 0.398783
	.quad	0x3fc021187e7c06e2              # double 0.12601000000000001
	.quad	0x3feee2c12ad81adf              # double 0.96518000000000003
	.quad	0x3fd58cbd1244a622              # double 0.33671499999999999
	.quad	0x3fe98d51f81a5871              # double 0.79850100000000002
	.quad	0x3fea2172abef06b3              # double 0.81658299999999995
	.quad	0x3fa16a26e5471716              # double 0.034013000000000002
	.quad	0x3fe16db50f40e5a3              # double 0.54464199999999996
	.quad	0x3fe87d0f1f57b41c              # double 0.765266
	.quad	0x3fe15506573215fd              # double 0.54162900000000003
	.quad	0x3fe75dd4c76d117b              # double 0.73020399999999996
	.quad	0x3fe7e1240746455f              # double 0.74623300000000004
	.quad	0x3fd8d68837718655              # double 0.38809399999999999
	.quad	0x3fe79b584b1ab085              # double 0.73771299999999995
	.quad	0x3fb300474d9c6b05              # double 0.074222999999999997
	.quad	0x3fb849129888f862              # double 0.094865000000000004
	.quad	0x3fdeeb6390c91080              # double 0.48311700000000002
	.quad	0x3fdbb068123810e9              # double 0.43264200000000003
	.quad	0x3fa26f826edaa92e              # double 0.036006999999999997
	.quad	0x3fd5a31e7d9988d3              # double 0.33808100000000002
	.quad	0x3fe9bae03b3e9a70              # double 0.80406200000000005
	.quad	0x3fcd713ad5bee3d6              # double 0.230018
	.quad	0x3fefae5bc87db2b3              # double 0.99003399999999996
	.quad	0x3fe682517e77d524              # double 0.70340800000000003
	.quad	0x3fe6918e325d4a5e              # double 0.70526800000000001
	.quad	0x3fe8097e996312f5              # double 0.75115900000000002
	.quad	0x3fd441cc532a4980              # double 0.31651600000000002
	.quad	0x3fbff7f06705c897              # double 0.124877
	.quad	0x3fc1ee78183f91e6              # double 0.14008999999999999
	.quad	0x3fd152f3c2dadb83              # double 0.27068799999999998
	.quad	0x3feaa7807789a459              # double 0.83294699999999999
	.quad	0x3fd97bd8be7296f6              # double 0.39818399999999998
	.quad	0x3fd04a6eb91b3f21              # double 0.25454300000000002
	.quad	0x3fd36295208e1501              # double 0.30289199999999999
	.quad	0x3fdbb4245f5ad96a              # double 0.43286999999999998
	.quad	0x3fe7ba6aca793576              # double 0.741506
	.quad	0x3fca4b7f5a5332ad              # double 0.205429
	.quad	0x3f98e820e6299525              # double 0.024323000000000001
	.quad	0x3fe8f661f18c9fb6              # double 0.78007599999999999
	.quad	0x3fc79e83e425aee6              # double 0.18452499999999999
	.quad	0x3fc8d8ec95bff045              # double 0.19411999999999999
	.quad	0x3fefb2e1693c03bc              # double 0.99058599999999996
	.quad	0x3fbc4ee7c49fd7a1              # double 0.110579
	.quad	0x3fd719bd4067cf1c              # double 0.36094599999999999
	.quad	0x3fd9178b3700474e              # double 0.39206200000000002
	.quad	0x3fbbc6b8b69552e3              # double 0.108501
	.quad	0x3fd4b70ac3a860dd              # double 0.32367200000000002
	.quad	0x3fea8d77b7c7820a              # double 0.82976899999999998
	.quad	0x3fed7f66e86c6584              # double 0.92180200000000001
	.quad	0x3fd248e043a21640              # double 0.28569800000000001
	.quad	0x3fdf4b76f6d76252              # double 0.488981
	.quad	0x3fe44386d2ed783e              # double 0.633243
	.quad	0x3fe405db76b3bb84              # double 0.62571500000000002
	.quad	0x3fe6aa4fca42aed1              # double 0.70828999999999998
	.quad	0x3fdb9d6adf71eaff              # double 0.43148300000000001
	.quad	0x3fe1779420b3d4ae              # double 0.54584699999999997
	.quad	0x3fe37f023e9ea140              # double 0.60925399999999996
	.quad	0x3fea26defc7a3982              # double 0.817245
	.quad	0x3fe9e2b8c75c4a84              # double 0.80892600000000003
	.quad	0x3f90cc78e9f6a93f              # double 0.016404999999999999
	.quad	0x3fec94855da27286              # double 0.89312999999999998
	.quad	0x3fdebb9496249a13              # double 0.48019899999999999
	.quad	0x3fdb93a71151611c              # double 0.43088700000000002
	.quad	0x3feeb039ef0f16f4              # double 0.95901199999999997
	.quad	0x3fec52f7f498c3b1              # double 0.88512800000000003
	.quad	0x3fdff1ae2da554b9              # double 0.49912600000000001
	.quad	0x3fc1fc86cebbba56              # double 0.14051900000000001
	.quad	0x3fe9244e93e1c9b4              # double 0.78568199999999999
	.quad	0x3febb1d4f9c1f85d              # double 0.86545799999999995
	.quad	0x3fec09a671ef30a5              # double 0.87617800000000001
	.quad	0x3fd94e4430b178b3              # double 0.39540199999999998
	.quad	0x3fe0a4e592967019              # double 0.52012899999999995
	.quad	0x3fe386b7aa25d8d8              # double 0.61019500000000004
	.quad	0x3fcae03b3e9a6f82              # double 0.20996799999999999
	.quad	0x3fdfd4e4c942d491              # double 0.49736900000000001
	.quad	0x3feb923810e88590              # double 0.861599
	.quad	0x3feea39a38fbca10              # double 0.95747099999999996
	.quad	0x3feab82a12f90108              # double 0.83498099999999997
	.quad	0x3fe78e79aae6c8f7              # double 0.73614199999999996
	.quad	0x3fdcec7863beec39              # double 0.45193299999999997
	.quad	0x3fe64ff21b3aeee9              # double 0.69725899999999996
	.quad	0x3faf6965f5275eea              # double 0.061351000000000003
	.quad	0x3fcfd5d3dc8b86b1              # double 0.24871299999999999
	.quad	0x3fe6846a5d6bebe1              # double 0.70366399999999996
	.quad	0x3fe207bdcf0307f2              # double 0.56344499999999997
	.quad	0x3fe8c04a72ead927              # double 0.77347299999999997
	.quad	0x3fed3be0157eed46              # double 0.91355900000000001
	.quad	0x3fdfdf3f961804da              # double 0.49800100000000003
	.quad	0x3fe059f2ba9d1f60              # double 0.51097999999999999
	.quad	0x3fcd1ad2135daad6              # double 0.227381
	.quad	0x3fe6ae0c17657753              # double 0.70874599999999999
	.quad	0x3fdc85a4f00ef135              # double 0.44565700000000003
	.quad	0x3fc84bd33d29563b              # double 0.18981400000000001
	.quad	0x3fe26670e2c12ad8              # double 0.57500499999999999
	.quad	0x3fdb71758e219653              # double 0.42880000000000001
	.quad	0x3fe991600f34506a              # double 0.79899600000000004
	.quad	0x3feefca85caafbc2              # double 0.96834200000000004
	.quad	0x3fd75e28aa433509              # double 0.365122
	.quad	0x3fce8eabffcdab19              # double 0.238729
	.quad	0x3f9a48f96e158751              # double 0.025669000000000001
	.quad	0x3fdbd987c6327ed8              # double 0.43515199999999998
	.quad	0x3fe22a0ec7432010              # double 0.56763399999999997
	.quad	0x3fec42eba27ae9ab              # double 0.88316899999999998
	.quad	0x3fa6c4e7253da72a              # double 0.044470999999999997
	.quad	0x3fee9040bfe3b03e              # double 0.95510899999999999
	.quad	0x3fe299ac79702e66              # double 0.58125899999999997
	.quad	0x3fcf84988094e5d6              # double 0.24623400000000001
	.quad	0x3fd248909289dae0              # double 0.28567900000000002
	.quad	0x3fea55de58e64b23              # double 0.82298199999999999
	.quad	0x3fe75629d8409e56              # double 0.72926800000000003
	.quad	0x3fe597a46173b85f              # double 0.67476100000000006
	.quad	0x3fddff3f0fe047d4              # double 0.46870400000000001
	.quad	0x3fe00d0cc35ce182              # double 0.50159299999999996
	.quad	0x3fe68711d798d8a9              # double 0.70398799999999995
	.quad	0x3fd1c60029f16b12              # double 0.27771000000000001
	.quad	0x3fe4c4d87724fa8b              # double 0.64902899999999997
	.quad	0x3fe5dfaebc408d8f              # double 0.68355500000000002
	.quad	0x3fee938583621fb0              # double 0.95550800000000002
	.quad	0x3f7f0d413122b7bb              # double 0.0075810000000000001
	.quad	0x3fb72d5e071c53f4              # double 0.090536000000000005
	.quad	0x3fd4ecaab8a5ce5b              # double 0.32694499999999999
	.quad	0x3fe3cbe1eb4202da              # double 0.61863800000000002
	.quad	0x3fda271bcdbbe015              # double 0.40863699999999997
	.quad	0x3fe1887ebf22c01e              # double 0.54791199999999995
	.quad	0x3fc85a0be5109071              # double 0.190248
	.quad	0x3fd064a59c065b64              # double 0.25614300000000001
	.quad	0x3fe40e9707182236              # double 0.62678100000000003
	.quad	0x3fe39b584b1ab085              # double 0.61271299999999995
	.quad	0x3fcb986b9c304ccf              # double 0.215589
	.quad	0x3fd37cf1c3265ade              # double 0.30450100000000002
	.quad	0x3f78a32f44912989              # double 0.0060150000000000004
	.quad	0x3fdb97b7414a4d2b              # double 0.43113499999999999
	.quad	0x3fc046e8f29d40ee              # double 0.127164
	.quad	0x3fef071e6cd29132              # double 0.96961900000000001
	.quad	0x3fde929ed3953dea              # double 0.47769899999999998
	.quad	0x3fdcd184c271fff8              # double 0.45028800000000002
	.quad	0x3fea9d2391d57ffa              # double 0.83168200000000003
	.quad	0x3fcc079a2834d270              # double 0.21898200000000001
	.quad	0x3fe2e8ff327aa68f              # double 0.59094199999999997
	.quad	0x3fed886bdf4c2b52              # double 0.92290300000000003
	.quad	0x3fe9d1fe64f54d1f              # double 0.80688400000000005
	.quad	0x3fe9e679463cfb33              # double 0.80938399999999999
	.quad	0x3fbeaef2c7325919              # double 0.11985700000000001
	.quad	0x3fec6601bc98a223              # double 0.88745200000000002
	.quad	0x3fe1899bf5946c33              # double 0.54804799999999998
	.quad	0x3fed7baecd07852f              # double 0.92134799999999994
	.quad	0x3fd8e2eb1c432ca5              # double 0.38884999999999997
	.quad	0x3fcf8cc144028e50              # double 0.24648300000000001
	.quad	0x3fe3cac083126e98              # double 0.61850000000000005
	.quad	0x3fe7f4fd6d7e889c              # double 0.74865599999999998
	.quad	0x3f9c36113404ea4b              # double 0.027550000000000002
	.quad	0x3fecfe132b55ef20              # double 0.90601500000000001
	.quad	0x3fe50a5accd53049              # double 0.65751400000000004
	.quad	0x3fbd906cca2db61c              # double 0.115485
	.quad	0x3fdfa8112ba16e7a              # double 0.49463299999999999
	.quad	0x3fd9ea39c51dabe2              # double 0.40492099999999998
	.quad	0x3fb1dbfceb78897f              # double 0.069763000000000006
	.quad	0x3fe36e71cda2b5a2              # double 0.60723199999999999
	.quad	0x3fe56ef1bac2df0d              # double 0.66979299999999997
	.quad	0x3fd088bda9435ac9              # double 0.25834600000000002
	.quad	0x3fc6578e5c4eb570              # double 0.17454700000000001
	.quad	0x3fd7b39192641b33              # double 0.37033500000000003
	.quad	0x3fd9093d96638434              # double 0.39118900000000001
	.quad	0x3fa8e9b38d60a633              # double 0.048658
	.quad	0x3fe8c3eb7cbb3c82              # double 0.77391600000000005
	.quad	0x3fee5532617c1bda              # double 0.94789999999999996
	.quad	0x3fb96f112fd32c62              # double 0.099350999999999994
	.quad	0x3fe7a2b5a20ddc62              # double 0.73861200000000005
	.quad	0x3fa54e4c942d490e              # double 0.041612999999999997
	.quad	0x3fedfe4ffc9795b3              # double 0.93729399999999996
	.quad	0x3fe9b20b8066c2ad              # double 0.80298400000000003
	.quad	0x3fd2f20a73f748a1              # double 0.29602299999999998
	.quad	0x3fcd3a2595bbbe88              # double 0.22833700000000001
	.quad	0x3fea0e5a35d67ba2              # double 0.81425199999999998
	.quad	0x3fd035610adcd2d4              # double 0.25325799999999998
	.quad	0x3fefafc04c8bc9cd              # double 0.99020399999999997
	.quad	0x3fac67168f8e7ddd              # double 0.055474000000000002
	.quad	0x3fe505a708ede54b              # double 0.65693999999999997
	.quad	0x3fecf71001d5c316              # double 0.90515900000000005
	.quad	0x3fe73f4666ec9e23              # double 0.72647399999999995
	.quad	0x3fefce54f7a91969              # double 0.99393699999999995
	.quad	0x3fd1e0b912dba4d7              # double 0.27934100000000001
	.quad	0x3fe0694ab1d4f9c2              # double 0.512853
	.quad	0x3fd2ffd1dcd7060c              # double 0.29686400000000002
	.quad	0x3fe48f3a9b068124              # double 0.64248400000000006
	.quad	0x3fe46596c82e019b              # double 0.637401
	.quad	0x3fef367a0f9096bc              # double 0.97540000000000004
	.quad	0x3fe0da250f840182              # double 0.52662900000000001
	.quad	0x3fd46feb4a66559f              # double 0.31933099999999998
	.quad	0x3fdade1e2de87097              # double 0.41980699999999999
	.quad	0x3fe730a2ca9ac365              # double 0.72468699999999997
	.quad	0x3fe9e8f8e7ddca4b              # double 0.80968899999999999
	.quad	0x3fe8b71758e21965              # double 0.77234999999999998
	.quad	0x3fe04c51116a8b8f              # double 0.50931599999999999
	.quad	0x3f8fadafd113836b              # double 0.015468000000000001
	.quad	0x3fe81769a91105e2              # double 0.75285800000000003
	.quad	0x3fecc7b677f6b1a3              # double 0.89937900000000004
	.quad	0x3fd16f4384ba0e84              # double 0.27241599999999999
	.quad	0x3fcd8ac9f2fdb8fe              # double 0.230798
	.quad	0x3fc3c0ca600b0293              # double 0.15432100000000001
	.quad	0x3fd6620ab7132724              # double 0.34973399999999999
	.quad	0x3fe738583621fafd              # double 0.72562800000000005
	.quad	0x3fefa808c8259e1f              # double 0.98926199999999997
	.quad	0x3fdd30be0ded288d              # double 0.45610000000000001
	.quad	0x3faffda4052d666b              # double 0.062482000000000003
	.quad	0x3fdedd00f776c482              # double 0.48223899999999997
	.quad	0x3fe23e121ee67514              # double 0.57007699999999994
	.quad	0x3fd0b8c32a8c9b84              # double 0.26127699999999998
	.quad	0x3fe167d566cf41f2              # double 0.54392499999999999
	.quad	0x3fec73a365cb35f4              # double 0.88911600000000001
	.quad	0x3fdfa38b8ae31d71              # double 0.49435699999999999
	.quad	0x3fe37cf80dc33722              # double 0.60900500000000002
	.quad	0x3fc3cf1c3265adda              # double 0.15475800000000001
	.quad	0x3fb860ed80a17b0f              # double 0.095228999999999994
	.quad	0x3fd056c93a711516              # double 0.255297
	.quad	0x3fee94ab1d4f9c20              # double 0.95564800000000005
	.quad	0x3feb74ff865d7cb3              # double 0.85803200000000002
	.quad	0x3fd1ab0856e696a2              # double 0.27606399999999998
	.quad	0x3fc4430b178b3700              # double 0.15829599999999999
	.quad	0x3fe8d87724fa8b4c              # double 0.776424
	.quad	0x3fe68c7c0f451761              # double 0.70464899999999997
	.quad	0x3fc9687b139c94f7              # double 0.19850100000000001
	.quad	0x3fba087ca643cc08              # double 0.101692
	.quad	0x3fef83ba3443d46b              # double 0.98482999999999998
	.quad	0x3fd56234a87e38eb              # double 0.334119
	.quad	0x3fe4dd074213a0c7              # double 0.65198100000000003
	.quad	0x3fdf6ba493c89f41              # double 0.49094500000000002
	.quad	0x3fd0d230b9dc2f40              # double 0.26282899999999998
	.quad	0x3fe413f6c2699c7c              # double 0.62743700000000002
	.quad	0x3fe5e653868fd19a              # double 0.68436600000000003
	.quad	0x3fdd86e7e62dc6e3              # double 0.46135900000000002
	.quad	0x3fe7ea033e78e193              # double 0.74731599999999998
	.quad	0x3fec849667b5f1bf              # double 0.891185
	.quad	0x3fe2ab51bd61f5be              # double 0.58341299999999996
	.quad	0x3f960f5e41d4b6a6              # double 0.021543
	.quad	0x3fc6c729f59ccfaf              # double 0.177953
	.quad	0x3feb23358f2e05cd              # double 0.84804800000000002
	.quad	0x3fe6f6512a94ff00              # double 0.71756799999999998
	.quad	0x3fbe573215fcc187              # double 0.118518
	.quad	0x3fef3b73083558a7              # double 0.97600699999999995
	.quad	0x3fa9707182235b4f              # double 0.049686000000000001
	.quad	0x3fe16ebf65dbfceb              # double 0.54476899999999995
	.quad	0x3fbd7689ca18bd66              # double 0.11509
	.quad	0x3fe9fd955714b9cb              # double 0.81220499999999995
	.quad	0x3fcfabda0dfdef85              # double 0.24743200000000001
	.quad	0x3fe25ca07f66e86c              # double 0.57380699999999996
	.quad	0x3fce8fb00bcbe61d              # double 0.23876
	.quad	0x3fe7b63b256ffc11              # double 0.74099499999999996
	.quad	0x3febea6c1a048e04              # double 0.87236599999999997
	.quad	0x3fea0bdcad14a0a1              # double 0.813948
	.quad	0x3fd807e175d13d75              # double 0.37548100000000001
	.quad	0x3fd4ab6d00b45ae6              # double 0.322963
	.quad	0x3fd8f6f8f041461b              # double 0.39007399999999998
	.quad	0x3fe1f3b645a1cac1              # double 0.56100000000000005
	.quad	0x3fe59fe43675ddd3              # double 0.67576800000000004
	.quad	0x3fcacd20afa2f05a              # double 0.20938499999999999
	.quad	0x3fe820945f9df549              # double 0.75397700000000001
	.quad	0x3fbc9e55c0fcb4f2              # double 0.111791
	.quad	0x3fac6327ed84d339              # double 0.055444
	.quad	0x3fd5c0a4a05dd8f9              # double 0.33988299999999999
	.quad	0x3fd49d5e4a383276              # double 0.32210499999999997
	.quad	0x3fd3ea39c51dabe2              # double 0.31117099999999998
	.quad	0x3fe67789a459103d              # double 0.70209200000000005
	.quad	0x3fbff34938583622              # double 0.124806
	.quad	0x3fe66acc92146a1a              # double 0.70053699999999997
	.quad	0x3fe90d1d8a548238              # double 0.78285099999999996
	.quad	0x3fd1486ad2dcb146              # double 0.27004499999999998
	.quad	0x3fd5d80e496ededb              # double 0.341312
	.quad	0x3fd0f4ba51a005c4              # double 0.26493699999999998
	.quad	0x3fad0b73d188f430              # double 0.056728000000000001
	.quad	0x3fe3728a6117720d              # double 0.60773200000000005
	.quad	0x3fd965907d912557              # double 0.39682400000000001
	.quad	0x3fcd5d3dc8b86b16              # double 0.229408
	.quad	0x3f4b1960fa15db34              # double 8.2700000000000004E-4
	.quad	0x3fe31c38b04ab607              # double 0.59719500000000003
	.quad	0x3fe95eebb341e14c              # double 0.79283700000000001
	.quad	0x3feacdc011d3671b              # double 0.83761600000000003
	.quad	0x3fe70014f8b588e3              # double 0.71875999999999995
	.quad	0x3feaad905c033615              # double 0.83368699999999996
	.quad	0x3fef8dc33721d53d              # double 0.98605500000000001
	.quad	0x3fd46db0dd82fd76              # double 0.31919500000000001
	.quad	0x3fdaf138bcdfefbf              # double 0.42097299999999999
	.quad	0x3fd346a1a500d5e9              # double 0.30118600000000001
	.quad	0x3fc094c447c30d30              # double 0.12953999999999999
	.quad	0x3f7cb252ce032db2              # double 0.0070060000000000001
	.quad	0x3fdd5892684cf074              # double 0.45853100000000002
	.quad	0x3fdeab0c88a47ed0              # double 0.47919
	.quad	0x3fd3bc558644523f              # double 0.30836999999999998
	.quad	0x3fef4284dfce3151              # double 0.97687000000000001
	.quad	0x3fe7a61bf37b8d3f              # double 0.73902699999999999
	.quad	0x3fe94ea28fe260b3              # double 0.79084900000000002
	.quad	0x3fe3adeebb341e15              # double 0.61498200000000003
	.quad	0x3fded095af294dd7              # double 0.48148099999999999
	.quad	0x3fc59b6f5caf2d80              # double 0.16880600000000001
	.quad	0x3fec7264a16a4873              # double 0.88896399999999998
	.quad	0x3feda4f227d028a2              # double 0.92638500000000001
	.quad	0x3fec4bbc2b94d940              # double 0.88424499999999995
	.quad	0x3fcdeebb341e14be              # double 0.233848
	.quad	0x3fb4140dd3fe1976              # double 0.078431
	.quad	0x3fe4908c3f3e0371              # double 0.64264500000000002
	.quad	0x3fe37a3b9ae0c176              # double 0.60867099999999996
	.quad	0x3fd2acd5b6805a2d              # double 0.29179899999999998
	.quad	0x3fcc8a50507a6bd7              # double 0.222971
	.quad	0x3fcd8ea7ce0fc2ec              # double 0.23091600000000001
	.quad	0x3f3aef6f8f041462              # double 4.1100000000000002E-4
	.quad	0x3fcb3f6c2699c7bd              # double 0.21287300000000001
	.quad	0x3fb33eab367a0f91              # double 0.075175000000000006
	.quad	0x3fd0389b52007dd4              # double 0.25345499999999999
	.quad	0x3fe1ae2b8c75c4a8              # double 0.55251099999999997
	.quad	0x3fe5173b85e80bed              # double 0.65908599999999995
	.quad	0x3fe422036006d0d5              # double 0.62915200000000004
	.quad	0x3fe78d4dc65c7043              # double 0.73599899999999996
	.quad	0x3fe2a7b6fe2e6ea8              # double 0.58297299999999996
	.quad	0x3fd48a3b57c4e2f3              # double 0.32093699999999997
	.quad	0x3fc7a9fbe76c8b44              # double 0.18487500000000001
	.quad	0x3f9afc04c8bc9cd4              # double 0.026352
	.quad	0x3fe2be81450efdca              # double 0.58575500000000003
	.quad	0x3fc49d627bf61aa4              # double 0.161053
	.quad	0x3fbbf78bbd380453              # double 0.109246
	.quad	0x3fedf4be835dedf2              # double 0.93612600000000001
	.quad	0x3fd054d1e96c3fc4              # double 0.25517699999999999
	.quad	0x3feb308dd1e53a82              # double 0.84967700000000002
	.quad	0x3fe79e44fa05143c              # double 0.73807
	.quad	0x3fcaa24463065f96              # double 0.20807700000000001
	.quad	0x3fa674299d883ba3              # double 0.043854999999999998
	.quad	0x3f9783dff3f0fe04              # double 0.022963999999999998
	.quad	0x3fd89f0e4da09cc3              # double 0.38470799999999999
	.quad	0x3fe9e25204af9229              # double 0.80887699999999996
	.quad	0x3fe59830e3cd9a52              # double 0.67482799999999998
	.quad	0x3fde2502eec7c958              # double 0.47100900000000001
	.quad	0x3fe7116ebd4cfd09              # double 0.72087800000000002
	.quad	0x3fe33a9f383f0baf              # double 0.60090600000000005
	.quad	0x3fe92d4b2745bf27              # double 0.78677900000000001
	.quad	0x3fe1aaa9f7b5aea3              # double 0.55208299999999999
	.quad	0x3fa5e95b78cc9a78              # double 0.042796000000000001
	.quad	0x3fca194c01605250              # double 0.20389699999999999
	.quad	0x3fbd54da4ce8101f              # double 0.114576
	.quad	0x3fc9e425aee631f9              # double 0.20227500000000001
	.quad	0x3fec1a6f826edaa9              # double 0.87822699999999998
	.quad	0x3fc6137f38c5436c              # double 0.17247000000000001
	.quad	0x3feb27d6733ebbfd              # double 0.84861299999999995
	.quad	0x3fd938b47c73eee5              # double 0.39408599999999999
	.quad	0x3fee4b380cb6c7a8              # double 0.94668200000000002
	.quad	0x3fb6aa19439de482              # double 0.088533
	.quad	0x3fd0841248d7e026              # double 0.25806099999999998
	.quad	0x3fe0ab7fe08aefb3              # double 0.52093500000000004
	.quad	0x3fc5e90795f676ea              # double 0.17117399999999999
	.quad	0x3fc2054ef459d990              # double 0.140787
	.quad	0x3fe502d9cf13ceea              # double 0.65659800000000001
	.quad	0x3fed6ddaceee0f3d              # double 0.91966000000000003
	.quad	0x3fe62cc0bdcad14a              # double 0.692963
	.quad	0x3fcc01cd5f99c38b              # double 0.218805
	.quad	0x3fe860999dcb5782              # double 0.76179200000000002
	.quad	0x3fe470f9d2bf5515              # double 0.638791
	.quad	0x3fe53b6ed677707a              # double 0.66350500000000001
	.quad	0x3fd207d4e09784ec              # double 0.28172799999999998
	.quad	0x3fd2a1cef240fa9c              # double 0.291126
	.quad	0x3fe94560c7c0f451              # double 0.78971899999999995
	.quad	0x3fe655842b734b51              # double 0.69793899999999998
	.quad	0x3febfcd466f5019f              # double 0.87461299999999997
	.quad	0x3fd2ff21b3aeee95              # double 0.29682199999999997
	.quad	0x3fde6777079e59f3              # double 0.47506500000000002
	.quad	0x3fa5011904b3c3e7              # double 0.041023999999999998
	.quad	0x3fe6191bc5586445              # double 0.69056499999999998
	.quad	0x3fef6876e1deacc9              # double 0.98150199999999998
	.quad	0x3fe55af6c69b5a64              # double 0.667354
	.quad	0x3fe3634117f8444a              # double 0.60586600000000002
	.quad	0x3fa3e61cffeb074a              # double 0.038864999999999997
	.quad	0x3fe6e4cd74927914              # double 0.71543000000000001
	.quad	0x3fd08d36b4c7f349              # double 0.25861899999999999
	.quad	0x3fecb0446b69db66              # double 0.89651700000000001
	.quad	0x3fead1bd61f5be5e              # double 0.83810300000000004
	.quad	0x3fa6c226809d4952              # double 0.044450000000000003
	.quad	0x3fc7ff2e48e8a71e              # double 0.187475
	.quad	0x3fe2bef6b5d462c3              # double 0.58581099999999997
	.quad	0x3fe300a9de8b3b32              # double 0.593831
	.quad	0x3fd25347a5b0ff11              # double 0.286333
	.quad	0x3fd38e0008637bd0              # double 0.30554199999999998
	.quad	0x3fdb672324c83665              # double 0.42817
	.quad	0x3fe906f694467382              # double 0.78210000000000002
	.quad	0x3fe73cab81f969e4              # double 0.72615600000000002
	.quad	0x3fd65579af1886e0              # double 0.34896700000000003
	.quad	0x3fe464ef0281ba80              # double 0.63732100000000003
	.quad	0x3fb374ddf86e3b47              # double 0.076002
	.quad	0x3fe1f3860999dcb5              # double 0.56097699999999995
	.quad	0x3fe4b9cf9a06a6e3              # double 0.64768199999999998
	.quad	0x3fde9b456b441bb9              # double 0.47822700000000001
	.quad	0x3feb67685985ad54              # double 0.85637300000000005
	.quad	0x3fec8e4755ffe6d6              # double 0.89236800000000005
	.quad	0x3fd5b4c3c18b502b              # double 0.33915800000000002
	.quad	0x3fe29116a8b8f14e              # double 0.58021100000000003
	.quad	0x3fca333fc86cebbc              # double 0.20468900000000001
	.quad	0x3feec0e9d51b4fe8              # double 0.96104900000000004
	.quad	0x3fe022595bbbe879              # double 0.504193
	.quad	0x3fbfef39085f4a12              # double 0.12474399999999999
	.quad	0x3fe6b06c43f5f916              # double 0.709036
	.quad	0x3fde0225742dcf46              # double 0.46888099999999999
	.quad	0x3fb20e8427418d69              # double 0.070533999999999999
	.quad	0x3fe54f3343fa2ad4              # double 0.66591800000000001
	.quad	0x3fb67b0b39192642              # double 0.087815000000000004
	.quad	0x3feffea5f84cad58              # double 0.99983500000000002
	.quad	0x3fe43990afe60c39              # double 0.63202700000000001
	.quad	0x3fe8f78359bc33f8              # double 0.78021399999999996
	.quad	0x3fbc1d4b6a619daa              # double 0.109822
	.quad	0x3fe3c3aeab7995ee              # double 0.61763699999999999
	.quad	0x3fb08882f0e0a84c              # double 0.064583000000000002
	.quad	0x3fd373215fcc1872              # double 0.30390200000000001
	.quad	0x3fcf1a21ea359360              # double 0.24298500000000001
	.quad	0x3fb2e685db76b3bc              # double 0.073830000000000007
	.quad	0x3fc6a465a57646ae              # double 0.17689199999999999
	.quad	0x3fe65bdf8f473040              # double 0.69871499999999997
	.quad	0x3fedf7c243dccea3              # double 0.93649400000000005
	.quad	0x3fe2e53eb399f5e0              # double 0.59048400000000001
	.quad	0x3fee296f6512a950              # double 0.94255800000000001
	.quad	0x3fdd4eebf65dbfcf              # double 0.45794200000000002
	.quad	0x3fefea209aaa3ad2              # double 0.99733000000000005
	.quad	0x3fe06c1c1d6cf851              # double 0.51319700000000001
	.quad	0x3fed67c6b8b69553              # double 0.91891800000000001
	.quad	0x3febc319c5a3e39f              # double 0.86756599999999995
	.quad	0x3fa6b52c9d16fc9c              # double 0.044351000000000002
	.quad	0x3fd40c1fc8f32379              # double 0.31324000000000002
	.quad	0x3fd77a85015c2092              # double 0.36685299999999998
	.quad	0x3fee6e34fc610f0f              # double 0.95095300000000005
	.quad	0x3fca6527a20578e6              # double 0.20621200000000001
	.quad	0x3fe8666666666666              # double 0.76249999999999996
	.quad	0x3fee36ed6777079e              # double 0.94420499999999996
	.quad	0x3fef5a6c5d206c87              # double 0.97978799999999999
	.quad	0x3fba136e71cda2b6              # double 0.10185900000000001
	.quad	0x3fcfb75a74c09c3d              # double 0.247783
	.quad	0x3fc43c18b502abac              # double 0.158084
	.quad	0x3f97db6e503fb374              # double 0.023297999999999999
	.quad	0x3fe5e4bcad9ad85e              # double 0.684172
	.quad	0x3fe258b827fa1a0d              # double 0.57333000000000001
	.quad	0x3fe0d9be4cd74928              # double 0.52658000000000005
	.quad	0x3fdd24af0bf1a5ca              # double 0.45536399999999999
	.quad	0x3fa076c050bd87b5              # double 0.032155999999999997
	.quad	0x3f6ef5232d2bb235              # double 0.0037789999999999998
	.quad	0x3fce0a4a05dd8f93              # double 0.23468900000000001
	.quad	0x3fd8d76683c297c0              # double 0.38814700000000002
	.quad	0x3fdca5ca29845dc8              # double 0.44761899999999999
	.quad	0x3fe5f3cf70153bd1              # double 0.68601199999999996
	.quad	0x3fb70dc768dfbd6a              # double 0.090053999999999995
	.quad	0x3fd6354c122749f1              # double 0.34700300000000001
	.quad	0x3fd36577531db446              # double 0.303068
	.quad	0x3fc78afc47e49b20              # double 0.18392900000000001
	.quad	0x3fbdfe86833c6003              # double 0.11716500000000001
	.quad	0x3fe8c8b0079a2835              # double 0.77449800000000002
	.quad	0x3fe125f41aef6f8f              # double 0.535883
	.quad	0x3fb5a122fad6cb53              # double 0.084489999999999996
	.quad	0x3fa2172abef06b38              # double 0.035333000000000003
	.quad	0x3fe9892684cf073a              # double 0.79799200000000003
	.quad	0x3fd66ca03c4b09ea              # double 0.35038000000000002
	.quad	0x3fe24f11b60ae968              # double 0.57215199999999999
	.quad	0x3fe308205ff1d81f              # double 0.59474199999999999
	.quad	0x3fe014d50ebaade6              # double 0.50254299999999996
	.quad	0x3fe24ed0b30b5aa7              # double 0.57212099999999999
	.quad	0x3fcb1287c200c0f0              # double 0.211503
	.quad	0x3fd347778dd616f8              # double 0.30123699999999998
	.quad	0x3fd95ad96a6a0126              # double 0.39617000000000002
	.quad	0x3fc3416bdb1a6d6a              # double 0.15043400000000001
	.quad	0x3fee5855970b49e0              # double 0.94828299999999998
	.quad	0x3fee0ba40d90e23b              # double 0.93892100000000001
	.quad	0x3fd27f0aa21a719b              # double 0.28900399999999998
	.quad	0x3feac295a6c5d207              # double 0.83625300000000002
	.quad	0x3feca3a08398a655              # double 0.89497400000000005
	.quad	0x3fe3aaa5c5f7c676              # double 0.61458100000000004
	.quad	0x3fdb2ebe596c82e0              # double 0.42472799999999999
	.quad	0x3fd2b955f78359bc              # double 0.29256199999999999
	.quad	0x3fc4cb5350092ccf              # double 0.16245499999999999
	.quad	0x3fb7559b3d07c84b              # double 0.091149999999999995
	.quad	0x3fe44a8e2e2b8c76              # double 0.63410100000000003
	.quad	0x3fb56c61522a6f3f              # double 0.083684999999999996
	.quad	0x3fec90624dd2f1aa              # double 0.892625
	.quad	0x3fdcc91d14e3bcd3              # double 0.44977499999999998
	.quad	0x3fed732378ab0c89              # double 0.92030500000000004
	.quad	0x3f90203e63e8dda5              # double 0.015748000000000002
	.quad	0x3fc4cccccccccccd              # double 0.16250000000000001
	.quad	0x3feabc3c5bd0e12f              # double 0.83547800000000005
	.quad	0x3fc6d86ec17ebaf1              # double 0.17848
	.quad	0x3fed0b71b8aa0019              # double 0.90764699999999998
	.quad	0x3fef45ef62f9ca5c              # double 0.97728700000000001
	.quad	0x3fe7c332f01754b0              # double 0.74257799999999996
	.quad	0x3fd561b2a27f1b69              # double 0.334088
	.quad	0x3fee26138fffbce4              # double 0.94214799999999998
	.quad	0x3fecc2938de6ddf0              # double 0.898752
	.quad	0x3fdaa9003eea209b              # double 0.41656500000000002
	.quad	0x3fd4f0d413122b7c              # double 0.32719900000000002
	.quad	0x3fe44a9691a75cd1              # double 0.63410500000000003
	.quad	0x3fe1fcd898b2e9cd              # double 0.56211500000000003
	.quad	0x3fe58870110a137f              # double 0.67290499999999998
	.quad	0x3fc6157eed45e918              # double 0.17253099999999999
	.quad	0x3fe162f37fbefd00              # double 0.54332899999999995
	.quad	0x3fdc7e175d13d74d              # double 0.44519599999999998
	.quad	0x3fd57525460aa64c              # double 0.33527499999999999
	.quad	0x3faa01cd5f99c38b              # double 0.050795
	.quad	0x3fee4f483cafb3b7              # double 0.94717799999999996
	.quad	0x3febf0520d130dfa              # double 0.87308600000000003
	.quad	0x3fea62c12ad81adf              # double 0.82455500000000004
	.quad	0x3fe029d627bf61aa              # double 0.50510699999999997
	.quad	0x3fc1104d551d68c7              # double 0.13331000000000001
	.quad	0x3fe9ac79702e6645              # double 0.80230400000000002
	.quad	0x3fb2887a8d64d7f1              # double 0.072395000000000001
	.quad	0x3fd6fa376922d949              # double 0.35902200000000001
	.quad	0x3fe744c37e6f71a8              # double 0.72714400000000001
	.quad	0x3fd8333764f11b61              # double 0.37812600000000002
	.quad	0x3fe9b11a543f1c76              # double 0.80286900000000005
	.quad	0x3fe28baa582dbe7f              # double 0.57954899999999998
	.quad	0x3fd43037d63022dd              # double 0.31544299999999997
	.quad	0x3fa115379fa97e13              # double 0.033364999999999999
	.quad	0x3fc175c8d9f9053a              # double 0.136407
	.quad	0x3fd2bcfd4bf0995b              # double 0.29278500000000002
	.quad	0x3fd392c061847f56              # double 0.30583199999999999
	.quad	0x3fd492ddbdb5d895              # double 0.32146400000000003
	.quad	0x3feed34df04ddb55              # double 0.96329399999999998
	.quad	0x3fe469ff0cbaf966              # double 0.63793900000000003
	.quad	0x3fe1455c96030c24              # double 0.539717
	.quad	0x3f9e731d2e0e3044              # double 0.029735999999999999
	.quad	0x3fc2a643cc07aaef              # double 0.145699
	.quad	0x3fc70129cbab649d              # double 0.17972299999999999
	.quad	0x3fd68611fd5885d3              # double 0.351933
	.quad	0x3fa7a786c226809d              # double 0.046199999999999998
	.quad	0x3febdadfb506dd6a              # double 0.87046800000000002
	.quad	0x3fef86e19b90ea9e              # double 0.98521499999999995
	.quad	0x3fef46088d6d3b6d              # double 0.97729900000000002
	.quad	0x3fbd207d4e09784f              # double 0.113777
	.quad	0x3fdb92ab68cef673              # double 0.43082700000000002
	.quad	0x3fea3b4b2fa93af7              # double 0.81973799999999997
	.quad	0x3fbf9767903211cb              # double 0.123404
	.quad	0x3fdc3b70ef566491              # double 0.44112800000000002
	.quad	0x3fe2fd7a13c254a4              # double 0.59344200000000003
	.quad	0x3fe673eab367a0f9              # double 0.70165
	.quad	0x3fca393682730c67              # double 0.204871
	.quad	0x3fe5154434e3369c              # double 0.65884600000000004
	.quad	0x3fea7adafd113837              # double 0.82749700000000004
	.quad	0x3fc2b167ec7863bf              # double 0.146039
	.quad	0x3fe32808c8259e1f              # double 0.59863699999999997
	.quad	0x3fee954434e3369c              # double 0.95572100000000004
	.quad	0x3fe65b35b0bbf50e              # double 0.69863399999999998
	.quad	0x3fe8af7f498c3b0c              # double 0.77142299999999996
	.quad	0x3fb915ad106ee30d              # double 0.097987000000000005
	.quad	0x3fed7cb4f1e4b44a              # double 0.92147299999999999
	.quad	0x3feef7b5aea3161a              # double 0.96773799999999999
	.quad	0x3fe532c83ec892ab              # double 0.66244899999999995
	.quad	0x3fd6d1a21ea35936              # double 0.356545
	.quad	0x3fd3db59578a2a91              # double 0.31026300000000001
	.quad	0x3fe4364388ebcc6c              # double 0.63162399999999996
	.quad	0x3fc22a77a2cecc81              # double 0.14192099999999999
	.quad	0x3fee99220ff54089              # double 0.95619299999999996
	.quad	0x3fd144b2b777d0f2              # double 0.269818
	.quad	0x3fd1661ae70c1334              # double 0.27185700000000002
	.quad	0x3fb52cadddf43c7d              # double 0.082712999999999995
	.quad	0x3fdbe4712e40852b              # double 0.43581799999999998
	.quad	0x3fdb448cf7caa759              # double 0.42605900000000002
	.quad	0x3fe4ccbc05d52c17              # double 0.64999200000000001
	.quad	0x3fbc52a411c2a023              # double 0.110636
	.quad	0x3fd5a3a4b5568e82              # double 0.338113
	.quad	0x3fbfbbe878fabda1              # double 0.123961
	.quad	0x3fccc0724b76f6d7              # double 0.22462299999999999
	.quad	0x3fcc747d805e5f31              # double 0.222305
	.quad	0x3fea94163779e9d1              # double 0.83057700000000001
	.quad	0x3fe283be6601bc99              # double 0.57858200000000004
	.quad	0x3fcdfb71fbc5de9c              # double 0.234236
	.quad	0x3fde0b0292817764              # double 0.46942200000000001
	.quad	0x3fe4e9185cee17a0              # double 0.65345399999999998
	.quad	0x3fee5692b3cc4ac7              # double 0.94806800000000002
	.quad	0x3fc1780baa582dbe              # double 0.13647599999999999
	.quad	0x3feb98201cd5f99c              # double 0.86231999999999997
	.quad	0x3fd51e81cb46bacf              # double 0.32998699999999997
	.quad	0x3fefb6cdf266ba49              # double 0.99106499999999997
	.quad	0x3f8fea8112ba16e8              # double 0.015584000000000001
	.quad	0x3fda239e6ab9b23e              # double 0.40842400000000001
	.quad	0x3fc1168f8e7ddca5              # double 0.13350100000000001
	.quad	0x3fe7e28240b78034              # double 0.74639999999999995
	.quad	0x3fe6c573a797891e              # double 0.71160299999999999
	.quad	0x3fda62f9ca5bd945              # double 0.41229100000000002
	.quad	0x3fecfaebc408d8ed              # double 0.90563000000000005
	.quad	0x3fc30db6a1e81cb4              # double 0.14885599999999999
	.quad	0x3fdc1f53825e13b2              # double 0.43941200000000002
	.quad	0x3feb22291fb3fa6e              # double 0.84792000000000001
	.quad	0x3fc86d9be4cd7492              # double 0.19084499999999999
	.quad	0x3fdc053198288052              # double 0.43781700000000001
	.quad	0x3fcc87c200c0f020              # double 0.22289300000000001
	.quad	0x3fdf174c4cdfaca3              # double 0.48579699999999998
	.quad	0x3fec81f10667f90e              # double 0.89086200000000004
	.quad	0x3fc1b8fde2ef4e01              # double 0.138458
	.quad	0x3feae69270b06c44              # double 0.840646
	.quad	0x3fe700fba8826aa9              # double 0.71887000000000001
	.quad	0x3fed06290eed02cd              # double 0.90700199999999997
	.quad	0x3fd71d2e0e30446b              # double 0.36115599999999998
	.quad	0x3fe11a5ca29845dd              # double 0.53446800000000005
	.quad	0x3fc531769a91105e              # double 0.165572
	.quad	0x3fccb29e4d5d80e5              # double 0.22420100000000001
	.quad	0x3fee5d54da4ce810              # double 0.94889299999999999
	.quad	0x3fe1018c5c9a34ca              # double 0.53143899999999999
	.quad	0x3fe5d46d3f9e7b81              # double 0.68218100000000004
	.quad	0x3fec9d29dc725c3e              # double 0.89418500000000001
	.quad	0x3fd2d8a548238540              # double 0.29447299999999998
	.quad	0x3fdc837f7be121ee              # double 0.44552599999999998
	.quad	0x3fccc9b845564b66              # double 0.22490599999999999
	.quad	0x3fee24a6a875d56f              # double 0.94197399999999998
	.quad	0x3feb1db65ecc3e32              # double 0.84737700000000005
	.quad	0x3fcad86ec17ebaf1              # double 0.20973
	.quad	0x3fd42157689ca18c              # double 0.31453500000000001
	.quad	0x3fea31bde82d7b63              # double 0.81857199999999997
	.quad	0x3feb02d7b634dad3              # double 0.84409699999999999
	.quad	0x3fee61975f2cb641              # double 0.94941299999999995
	.quad	0x3fd97785729b280f              # double 0.39792
	.quad	0x3fb13c579f234656              # double 0.067326999999999998
	.quad	0x3fddc9eecbfb15b5              # double 0.46544999999999997
	.quad	0x3fe3b8bcdfefbf40              # double 0.61630099999999999
	.quad	0x3f855a3a08398a65              # double 0.010426
	.quad	0x3fed9adea897635e              # double 0.92515499999999995
	.quad	0x3fd02d1aeb3dd11c              # double 0.25275300000000001
	.quad	0x3fa53e2d6238da3c              # double 0.041489999999999999
	.quad	0x3fed04fd2a62aa19              # double 0.90685899999999997
	.quad	0x3faa79dd3bafd977              # double 0.051711
	.quad	0x3fd1edbb59ddc1e8              # double 0.28013500000000002
	.quad	0x3fe282363b256ffc              # double 0.57839499999999999
	.quad	0x3fe7c18b502ababf              # double 0.74237600000000004
	.quad	0x3fdf9f44d4456712              # double 0.49409599999999998
	.quad	0x3fed963779e9d0ea              # double 0.92458700000000005
	.quad	0x3fefa85ec3dab5c4              # double 0.98930300000000004
	.quad	0x3fd958a32f44912a              # double 0.39603500000000003
	.quad	0x3f80079a2834d270              # double 0.0078270000000000006
	.quad	0x3fbbc64345cfede9              # double 0.10849399999999999
	.quad	0x3fbb06705c896dd2              # double 0.10556699999999999
	.quad	0x3fd9efd00713f078              # double 0.40526200000000001
	.quad	0x3febd308bb906467              # double 0.86951100000000003
	.quad	0x3fe621d53cddd6e0              # double 0.69162999999999997
	.quad	0x3fdb02fb5d031056              # double 0.42205700000000002
	.quad	0x3fcaa65cf67b1c00              # double 0.208202
	.quad	0x3fe004901d19157b              # double 0.50055700000000003
	.quad	0x3fc272c94b380cb7              # double 0.14412800000000001
	.quad	0x3fedafea3df6db94              # double 0.92772399999999999
	.quad	0x3feff878b7a1c25d              # double 0.99908099999999999
	.quad	0x3fe7e88377186552              # double 0.74713300000000005
	.quad	0x3fc0d3953dea465a              # double 0.13145699999999999
	.quad	0x3fe45a9a8049667b              # double 0.63605999999999996
	.quad	0x3fddfa9c12f09d8c              # double 0.46842099999999998
	.quad	0x3fe6a702a3486f05              # double 0.70788700000000004
	.quad	0x3fed85015c209247              # double 0.92248600000000003
	.quad	0x3fecdb2702a3486f              # double 0.901752
	.quad	0x3fec5132f87ad081              # double 0.88491200000000003
	.quad	0x3fc380ecfa69be0a              # double 0.15237200000000001
	.quad	0x3fda6145953586cb              # double 0.41218700000000003
	.quad	0x3fb15714b9cb6849              # double 0.067735000000000004
	.quad	0x3febfd8adab9f55a              # double 0.87470000000000003
	.quad	0x3fd3cebfec13b9f1              # double 0.30949399999999999
	.quad	0x3fc5a7fc32ebe597              # double 0.16918900000000001
	.quad	0x3fe7c1bb8c32a8ca              # double 0.74239900000000003
	.quad	0x3fe874b838c111ae              # double 0.76424800000000004
	.quad	0x3fe7b6bb1290257d              # double 0.74105600000000005
	.quad	0x3fd5e49f51697f20              # double 0.34207900000000002
	.quad	0x3fed7f47735c182f              # double 0.92178700000000002
	.quad	0x3fe84e618ce2d1f2              # double 0.75956800000000002
	.quad	0x3fbb268d32830a0b              # double 0.106057
	.quad	0x3fe9b7baecd07853              # double 0.803678
	.quad	0x3fb4e29f9ce8d973              # double 0.081583000000000003
	.quad	0x3fded7e45803cd14              # double 0.48192699999999999
	.quad	0x3fbdaa60913a4f87              # double 0.115881
	.quad	0x3fd7e7253da72a7c              # double 0.37348300000000001
	.quad	0x3fb801e68a0d349c              # double 0.093779000000000001
	.quad	0x3fd62135daad6020              # double 0.345777
	.quad	0x3fdf3532e7b3d8e0              # double 0.487622
	.quad	0x3fd9c7a7c9de0503              # double 0.40281099999999997
	.quad	0x3fec4e89656eefa2              # double 0.88458700000000001
	.quad	0x3fe496e58a32f449              # double 0.64341999999999999
	.quad	0x3fe6372c5197a249              # double 0.69423500000000005
	.quad	0x3f9536d655e28aa4              # double 0.020716999999999999
	.quad	0x3fd9eaab042528ae              # double 0.40494799999999997
	.quad	0x3fd6ad538ac18f82              # double 0.35432900000000001
	.quad	0x3fe046e8f29d40ee              # double 0.508656
	.quad	0x3fed0bdcad14a0a1              # double 0.907698
	.quad	0x3fddd72799a1fd15              # double 0.46625699999999998
	.quad	0x3fd61426fe718a87              # double 0.34498000000000001
	.quad	0x3fd9ef34d6a161e5              # double 0.405225
	.quad	0x3fe418e325d4a5df              # double 0.62803799999999999
	.quad	0x3fcba176ddaceee1              # double 0.215865
	.quad	0x3fec4cc89b0ee49f              # double 0.88437299999999996
	.quad	0x3fb09c3ce2089e34              # double 0.064883999999999997
	.quad	0x3f7fe542e557de0d              # double 0.0077869999999999997
	.quad	0x3fb81f31f46ed246              # double 0.094226000000000004
	.quad	0x3fe04e89656eefa2              # double 0.50958700000000001
	.quad	0x3fecef566490a351              # double 0.90421600000000002
	.quad	0x3fdd143393ab430f              # double 0.45435799999999998
	.quad	0x3feba5ce5b4245f6              # double 0.86399000000000004
	.quad	0x3f62b5e529bae46d              # double 0.002284
	.quad	0x3fe7f5f0b28522ea              # double 0.74877199999999999
	.quad	0x3febbbc0a06e9ff1              # double 0.86666900000000002
	.quad	0x3fec4209246bf013              # double 0.88306099999999998
	.quad	0x3fd937329c347e8d              # double 0.39399400000000001
	.quad	0x3fe3dc50ce4ead0c              # double 0.62064399999999997
	.quad	0x3fe59c432ca57a78              # double 0.67532499999999995
	.quad	0x3fa6d6ba8c586877              # double 0.044607000000000001
	.quad	0x3feb34a01abd1aa8              # double 0.85017399999999999
	.quad	0x3fdc012599ed7c70              # double 0.43757000000000001
	.quad	0x3fd17221858bc59c              # double 0.27259100000000003
	.quad	0x3fcfc8b86b15f890              # double 0.24831300000000001
	.quad	0x3fe220f0a5efe932              # double 0.56652100000000005
	.quad	0x3fe3188094e5d5b2              # double 0.59674099999999997
	.quad	0x3fe3627179bfdf7f              # double 0.60576700000000006
	.quad	0x3fdb5996744b2b77              # double 0.42734299999999997
	.quad	0x3fef952b0a6fc58b              # double 0.98695900000000003
	.quad	0x3fe03324851a8694              # double 0.506243
	.quad	0x3feb27525460aa65              # double 0.84855000000000003
	.quad	0x3fe59c8c9320d994              # double 0.67535999999999996
	.quad	0x3fd8f687b139c94f              # double 0.39004699999999998
	.quad	0x3fe09a7c17a89332              # double 0.51885800000000004
	.quad	0x3fc2f5771001d5c3              # double 0.148116
	.quad	0x3fd9e4e69f05ea25              # double 0.40459600000000001
	.quad	0x3fef06e3b46fdeb5              # double 0.96959099999999998
	.quad	0x3fecbe5b8561d430              # double 0.89823699999999995
	.quad	0x3fec4cb7d41743e9              # double 0.88436499999999996
	.quad	0x3fbe0ccff21b3aef              # double 0.117383
	.quad	0x3fe996616b54e2b0              # double 0.79960699999999996
	.quad	0x3feb6a0dbad3a605              # double 0.85669600000000001
	.quad	0x3fcdf127f5e84f09              # double 0.23392199999999999
	.quad	0x3fe0b82c2bd7f51f              # double 0.522482
	.quad	0x3fe690d173fb7a5f              # double 0.70517799999999997
	.quad	0x3feeb0446b69db66              # double 0.95901700000000001
	.quad	0x3fe161c36976bc1f              # double 0.543184
	.quad	0x3fe32abcd78c4370              # double 0.59896700000000003
	.quad	0x3fe0a7d88c1db014              # double 0.52048899999999998
	.quad	0x3fe113a2df9378ee              # double 0.53364699999999998
	.quad	0x3fd66bfca85caafc              # double 0.35034100000000001
	.quad	0x3fe46b7ed41b75a7              # double 0.63812199999999997
	.quad	0x3fb101083dbc2331              # double 0.066421999999999995
	.quad	0x3fd26fc9bc771434              # double 0.28807300000000002
	.quad	0x3fd60fadf2ecf206              # double 0.34470699999999999
	.quad	0x3fe870c34c1a8ac6              # double 0.76376500000000003
	.quad	0x3fcb9dfdac68a937              # double 0.21575900000000001
	.quad	0x3feaacffa7eb6bf4              # double 0.83361799999999997
	.quad	0x3fed6a52ef911cf3              # double 0.91922899999999996
	.quad	0x3fbf343fa2ad3e92              # double 0.121891
	.quad	0x3fe9100a393ee5ef              # double 0.78320800000000002
	.quad	0x3fdf1001d5c31594              # double 0.48535200000000001
	.quad	0x3fedf820a30db6a2              # double 0.93653900000000001
	.quad	0x3fe871c3265add9c              # double 0.76388699999999998
	.quad	0x3fe2b84fd2a62aa2              # double 0.58499900000000005
	.quad	0x3fdc37ef5a964e8b              # double 0.44091399999999997
	.quad	0x3fb9f9ce8d972cd8              # double 0.101468
	.quad	0x3fd614db59578a2b              # double 0.34502300000000002
	.quad	0x3fe7d1244a6223e2              # double 0.74428000000000005
	.quad	0x3fb7f91e646f1562              # double 0.093645000000000006
	.quad	0x3fcddeefe4ffc979              # double 0.23336599999999999
	.quad	0x3fd30ce91c8eac00              # double 0.29766300000000001
	.quad	0x3feefda836eb4e98              # double 0.96846399999999999
	.quad	0x3fea5f4e4430b179              # double 0.82413400000000003
	.quad	0x3f709f1f14983d79              # double 0.004058
	.quad	0x3fba065300581494              # double 0.101659
	.quad	0x3fca65061416377a              # double 0.206208
	.quad	0x3fd9b9c7368ad688              # double 0.40196399999999999
	.quad	0x3fd98de6ddf00abf              # double 0.39928599999999997
	.quad	0x3fc99e7b80a9de8b              # double 0.20014899999999999
	.quad	0x3fcadc65c70435f0              # double 0.20985100000000001
	.quad	0x3fe84e2089e34331              # double 0.75953700000000002
	.quad	0x3fe1398e97071822              # double 0.53827599999999998
	.quad	0x3fb7ed740c4156e2              # double 0.093466999999999994
	.quad	0x3feef4f93bc0a06f              # double 0.96740400000000004
	.quad	0x3fe4531769a91106              # double 0.63514300000000001
	.quad	0x3fd2553ef6b5d463              # double 0.28645300000000001
	.quad	0x3fe2f83382e44b6f              # double 0.59279800000000005
	.quad	0x3fcb738e6d15ad10              # double 0.21446399999999999
	.quad	0x3fee394b7b28954a              # double 0.94449399999999994
	.quad	0x3fd7132b55ef1fde              # double 0.360545
	.quad	0x3fe5c4827b6fe2e7              # double 0.68023800000000001
	.quad	0x3fc14bb5e0f7fcfc              # double 0.13512299999999999
	.quad	0x3fd1ffc9795b35b1              # double 0.28123700000000001
	.quad	0x3fd0e1932d6ece14              # double 0.263768
	.quad	0x3fda1b97353b4b30              # double 0.40793400000000002
	.quad	0x3f9989df1172ef0b              # double 0.02494
	.quad	0x3fcd33b107746888              # double 0.22814000000000001
	.quad	0x3fe8c15b1422ccb4              # double 0.77360300000000004
	.quad	0x3fd02ea52ef911cf              # double 0.25284699999999999
	.quad	0x3fecdf548ecd8dbd              # double 0.90226200000000001
	.quad	0x3fee61c9b4139863              # double 0.94943699999999998
	.quad	0x3fd5bc7f77af6406              # double 0.33962999999999999
	.quad	0x3fe676f8f041461b              # double 0.70202299999999995
	.quad	0x3fd3808c8259e1f4              # double 0.30472100000000002
	.quad	0x3fe9d3da72a7bd49              # double 0.80711100000000002
	.quad	0x3fcbc64ba94bbe44              # double 0.21698899999999999
	.quad	0x3fcaeb8950763a19              # double 0.210313
	.quad	0x3fcc2c5e2cdc011d              # double 0.22010399999999999
	.quad	0x3fecfb9170d62bf1              # double 0.90570899999999999
	.quad	0x3fe14dc011d3671b              # double 0.54074100000000003
	.quad	0x3fd6b441bb8c32a9              # double 0.35475200000000001
	.quad	0x3faee7e62dc6e2a8              # double 0.060363
	.quad	0x3fd5cc20d5629d84              # double 0.340584
	.quad	0x3fdc0cf1800a7c5b              # double 0.43829000000000001
	.quad	0x3fed100c521dda06              # double 0.90820900000000004
	.quad	0x3fe545b078d92fb2              # double 0.66475700000000004
	.quad	0x3fbaac322291fb40              # double 0.10419
	.quad	0x3fdfa4c1ebc83a97              # double 0.49443100000000001
	.quad	0x3feaab0856e696a2              # double 0.83337799999999995
	.quad	0x3fcfd2a62aa1943a              # double 0.248616
	.quad	0x3fe748b0079a2835              # double 0.72762300000000002
	.quad	0x3fe43e4abe6a337b              # double 0.63260400000000006
	.quad	0x3f7bca9691a75cd1              # double 0.0067850000000000002
	.quad	0x3feac6994185058e              # double 0.83674300000000001
	.quad	0x3febaa0cae642bfa              # double 0.86450800000000005
	.quad	0x3feccb7b28954a80              # double 0.89983900000000006
	.quad	0x3fda05a2d72ffd1e              # double 0.40659400000000001
	.quad	0x3fdc202539756c94              # double 0.43946200000000002
	.quad	0x3fe2c9774256bca5              # double 0.58709299999999998
	.quad	0x3fd55c7cd898b2ea              # double 0.33377000000000001
	.quad	0x3fd2cdd0d8cb07d1              # double 0.29381200000000002
	.quad	0x3feec2938de6ddf0              # double 0.961252
	.quad	0x3fe4509bf9c62a1b              # double 0.63483999999999996
	.quad	0x3fe72eb80ecfa69c              # double 0.72445300000000001
	.quad	0x3fd3e2e2b8c75c4b              # double 0.31072300000000003
	.quad	0x3fe317a89331a08c              # double 0.596638
	.quad	0x3fe2664f54d1e96c              # double 0.57498899999999997
	.quad	0x3fe0f891e215336e              # double 0.53034300000000001
	.quad	0x3fb8586876e1dead              # double 0.095099000000000003
	.quad	0x3fe8e8cef672b884              # double 0.77841899999999997
	.quad	0x3fd01ae2da554b8c              # double 0.251641
	.quad	0x3fc3f138bcdfefbf              # double 0.15579899999999999
	.quad	0x3fbe25529fe004b8              # double 0.117757
	.quad	0x3fe7401c4fc1df33              # double 0.726576
	.quad	0x3fbb2edfe75bc44c              # double 0.106184
	.quad	0x3fe2868db8bac711              # double 0.57892500000000002
	.quad	0x3fc9729b280f12c2              # double 0.19880999999999999
	.quad	0x3fdd0685553ef6b6              # double 0.45352300000000001
	.quad	0x3fef103c8e25c811              # double 0.97073200000000003
	.quad	0x3fd2737542a23c00              # double 0.28829700000000003
	.quad	0x3fc0bd7f51efb6dd              # double 0.13078300000000001
	.quad	0x3fd02de00d1b7176              # double 0.25280000000000002
	.quad	0x3f551611ba3ca750              # double 0.0012869999999999999
	.quad	0x3feeb87379746024              # double 0.96001599999999998
	.quad	0x3fe6459103c8e25d              # double 0.69599200000000006
	.quad	0x3feb229e90795f67              # double 0.84797599999999995
	.quad	0x3fe9d3d640e9d51b              # double 0.80710899999999997
	.quad	0x3fd086b15f88fc93              # double 0.25822099999999998
	.quad	0x3feecd855970b49e              # double 0.962588
	.quad	0x3fb699fa11a975b0              # double 0.088287000000000004
	.quad	0x3fc624f6598e10cf              # double 0.17300299999999999
	.quad	0x3fc2bb906466b1e6              # double 0.14634900000000001
	.quad	0x3fe9835dedf1e083              # double 0.79728600000000005
	.quad	0x3fd240d0aaa7ded7              # double 0.28520600000000002
	.quad	0x3fdc27d88c1db014              # double 0.43993199999999999
	.quad	0x3fe3ebbdbe3c1052              # double 0.62252700000000005
	.quad	0x3fecbcf4e874c900              # double 0.89806600000000003
	.quad	0x3fd583c6c97d8cf4              # double 0.33616800000000002
	.quad	0x3f7e1c15097c8084              # double 0.0073509999999999999
	.quad	0x3fec455219a847b2              # double 0.88346199999999997
	.quad	0x3fe951efb6dca07f              # double 0.79125199999999996
	.quad	0x3fde2bdc26dce39b              # double 0.47142699999999998
	.quad	0x3fe167d34df04ddb              # double 0.54392399999999996
	.quad	0x3fea8d73860999dd              # double 0.82976700000000003
	.quad	0x3fcf1351159c4977              # double 0.24277699999999999
	.quad	0x3fe0d16db0dd82fd              # double 0.52556499999999995
	.quad	0x3fd2efd00713f078              # double 0.29588700000000001
	.quad	0x3fe12e18ac9f2fdc              # double 0.53687700000000005
	.quad	0x3fcf1fe64f54d1e9              # double 0.24316099999999999
	.quad	0x3fe807485e3da2f9              # double 0.75088900000000003
	.quad	0x3fd61958969a0ad9              # double 0.34529700000000002
	.quad	0x3f92db1e9f277814              # double 0.018414
	.quad	0x3fedaf46aa087ca6              # double 0.92764599999999997
	.quad	0x3fc2588a04d12019              # double 0.14332700000000001
	.quad	0x3fdb855da272862f              # double 0.43001499999999998
	.quad	0x3fea7f7dfa00e27e              # double 0.82806299999999999
	.quad	0x3fec165b20b8066c              # double 0.87772899999999998
	.quad	0x3fdd3b42cc2d6a9c              # double 0.45674199999999998
	.quad	0x3feb6392e1ef73c1              # double 0.85590500000000003
	.quad	0x3fdd2e40852b4d8c              # double 0.45594800000000002
	.quad	0x3fe4a4fca42aed14              # double 0.64514000000000005
	.quad	0x3fd238759253543b              # double 0.284696
	.quad	0x3fdb56191148fda0              # double 0.42713000000000001
	.quad	0x3fe975f6fd21ff2e              # double 0.79564999999999997
	.quad	0x3fe89a0ad8a11666              # double 0.76880400000000004
	.quad	0x3fb3b267c6b8b695              # double 0.076940999999999996
	.quad	0x3fec8a265f0f5a10              # double 0.89186399999999999
	.quad	0x3fec6bbfd71b0468              # double 0.88815299999999997
	.quad	0x3fddd972cd7cf5f5              # double 0.46639700000000001
	.quad	0x3fdb8d4fdf3b645a              # double 0.43049999999999999
	.quad	0x3feb061e92923e5c              # double 0.84449700000000005
	.quad	0x3fd545fe111276fb              # double 0.332397
	.quad	0x3fe65f2cb641700d              # double 0.69911800000000002
	.quad	0x3fd781908e581cf8              # double 0.36728300000000003
	.quad	0x3fd672b4528283d3              # double 0.35075099999999998
	.quad	0x3fe47c06e19b90eb              # double 0.64014000000000004
	.quad	0x3fe6de6bc621b7e1              # double 0.71465100000000004
	.quad	0x3feda1b9f98b71b9              # double 0.92599200000000004
	.quad	0x3fe8694ab1d4f9c2              # double 0.762853
	.quad	0x3fe5122749f0e4da              # double 0.658466
	.quad	0x3fdeebc408d8ec96              # double 0.48314000000000001
	.quad	0x3fe738ed1bf7ad4b              # double 0.72569899999999998
	.quad	0x3fe637cdcca70d20              # double 0.69431200000000004
	.quad	0x3fec7f455a7d2418              # double 0.89053599999999999
	.quad	0x3fdb72ead9274e23              # double 0.42888900000000002
	.quad	0x3f6450efdc9c4da9              # double 0.00248
	.quad	0x3febb4091c087443              # double 0.86572700000000002
	.quad	0x3fe81376d5497311              # double 0.75237600000000004
	.quad	0x3fa259c065b63d3e              # double 0.035840999999999998
	.quad	0x3fdd9817b95a2941              # double 0.46240799999999999
	.quad	0x3fdbe3eaf6837f7c              # double 0.43578600000000001
	.quad	0x3fbf342edbb59ddc              # double 0.12189
	.quad	0x3fe596e9bbf0dc77              # double 0.67467200000000005
	.quad	0x3fe54851a8694035              # double 0.66507799999999995
	.quad	0x3fe25c422036006d              # double 0.57376199999999999
	.quad	0x3fd5aafbc1acde1a              # double 0.338561
	.quad	0x3fe4e1ac57e23f25              # double 0.65254800000000002
	.quad	0x3fe488a697aeddce              # double 0.64168099999999995
	.quad	0x3feafddebd9018e7              # double 0.84348999999999996
	.quad	0x3fe23b6ed677707a              # double 0.56975500000000001
	.quad	0x3f968a50507a6bd7              # double 0.022012
	.quad	0x3febbf2f55582129              # double 0.86708799999999997
	.quad	0x3fe9302b40f66a55              # double 0.78713
	.quad	0x3fe544e0daa0cae6              # double 0.66465799999999997
	.quad	0x3fbb73e24febd09e              # double 0.107237
	.quad	0x3fe45b1c864883fd              # double 0.63612199999999997
	.quad	0x3fe1773c0c1fc8f3              # double 0.54580499999999998
	.quad	0x3fe47cf3dc054ef4              # double 0.64025299999999996
	.quad	0x3fd42d3c792d1288              # double 0.31526100000000001
	.quad	0x3feb342aa9f7b5af              # double 0.85011800000000004
	.quad	0x3fe43ac0c62e4d1a              # double 0.63217199999999996
	.quad	0x3fd2e5aff2a172ac              # double 0.295269
	.quad	0x3fdd8a65492ff4ba              # double 0.46157199999999998
	.quad	0x3fbc51116a8b8f15              # double 0.110612
	.quad	0x3fe31b90ea9e6eeb              # double 0.59711499999999995
	.quad	0x3fd8b3f63c31df76              # double 0.38598399999999999
	.quad	0x3fdd85729b280f13              # double 0.46127000000000001
	.quad	0x3fca29845dc83233              # double 0.20439199999999999
	.quad	0x3fd2976ff3ade226              # double 0.290493
	.quad	0x3fe684d983947497              # double 0.70371700000000004
	.quad	0x3fd7d855970b49e0              # double 0.37257899999999999
	.quad	0x3fce19652bd3c361              # double 0.23515
	.quad	0x3fd33c4f3ba775fb              # double 0.30055599999999999
	.quad	0x3f9b8c75c4a83b1d              # double 0.026903
	.quad	0x3fc068cac4b4d057              # double 0.12819800000000001
	.quad	0x3fbeafee6fb4c3c2              # double 0.11987200000000001
	.quad	0x3fbddbfceb78897f              # double 0.11663800000000001
	.quad	0x3fda27ae9ab29e4d              # double 0.40867199999999998
	.quad	0x3fe01df1172ef0ae              # double 0.50365499999999996
	.quad	0x3fe0912fd32c625f              # double 0.51772300000000004
	.quad	0x3facb87bdcf0307f              # double 0.056094999999999999
	.quad	0x3fe8e33acd5b6806              # double 0.77773800000000004
	.quad	0x3fe696f21f6cacd2              # double 0.70592600000000005
	.quad	0x3fe57c5479d4d834              # double 0.671427
	.quad	0x3fb483fd50225743              # double 0.080139000000000002
	.quad	0x3fe5abe0589acbc9              # double 0.67723100000000003
	.quad	0x3fe8196744b2b778              # double 0.75310100000000002
	.quad	0x3fe27e23f24d8fd6              # double 0.57789800000000002
	.quad	0x3feab30f8c64fdb1              # double 0.83435800000000004
	.quad	0x3fe1ffde7210be94              # double 0.56248399999999998
	.quad	0x3fe9c1c8216c6152              # double 0.80490499999999998
	.quad	0x3fd0deefe4ffc979              # double 0.26360699999999998
	.quad	0x3fbd0129cbab649d              # double 0.113299
	.quad	0x3fddf8b9baa1511e              # double 0.468306
	.quad	0x3fe6ac9081c2e33f              # double 0.708565
	.quad	0x3fc8c3c9eecbfb16              # double 0.19347500000000001
	.quad	0x3fd528848387df5d              # double 0.330598
	.quad	0x3fc6fb8f57f737da              # double 0.17955199999999999
	.quad	0x3fc1edc7ef177a70              # double 0.140069
	.quad	0x3fc1f7ced916872b              # double 0.140375
	.quad	0x3fd4ca0c282c6ef4              # double 0.32483200000000001
	.quad	0x3fe4e4f3343fa2ad              # double 0.65294799999999997
	.quad	0x3fce719b4dcebfec              # double 0.237842
	.quad	0x3fd6bb384fd2a62b              # double 0.35517700000000002
	.quad	0x3fe3af5dbb9cf9a0              # double 0.61515699999999995
	.quad	0x3fc06ed245b291b8              # double 0.128382
	.quad	0x3fe987160956c0d7              # double 0.79774
	.quad	0x3fc51fff79c842fa              # double 0.16503899999999999
	.quad	0x3fb6923e5b8561d4              # double 0.088168999999999997
	.quad	0x3fee23dd54da4ce8              # double 0.94187799999999999
	.quad	0x3fa800eae18ac9f3              # double 0.046882
	.quad	0x3fdee83a109d0636              # double 0.48292400000000002
	.quad	0x3fc8f00ef1348b22              # double 0.194826
	.quad	0x3fe5b67e414e7ee9              # double 0.67852699999999999
	.quad	0x3fe84886162f166e              # double 0.758853
	.quad	0x3fe884102ff8ec10              # double 0.76612100000000005
	.quad	0x3fdc6e19b90ea9e7              # double 0.44422
	.quad	0x3fe0bbe0157eed46              # double 0.52293400000000001
	.quad	0x3fcc9057d1782d38              # double 0.22315499999999999
	.quad	0x3fa837d63022dd7b              # double 0.047301000000000003
	.quad	0x3fd479a6b50b0f28              # double 0.31992500000000001
	.quad	0x3fe004ea4a8c154d              # double 0.50060000000000004
	.quad	0x3feabb7d84901d19              # double 0.83538699999999999
	.quad	0x3fefafb5d031055c              # double 0.99019900000000005
	.quad	0x3fee6308787485e4              # double 0.94958900000000001
	.quad	0x3fe7201eeed8904f              # double 0.72267099999999995
	.quad	0x3fcd1f255f3519bd              # double 0.22751299999999999
	.quad	0x3fc681fd9ba1b196              # double 0.175842
	.quad	0x3fdbc8ffb8b26395              # double 0.434143
	.quad	0x3fcec0e7bc3c5bd1              # double 0.240262
	.quad	0x3fc8c56d5cfaacda              # double 0.193525
	.quad	0x3fdc2b5a20ddc619              # double 0.44014599999999998
	.quad	0x3fa51526d8b1dd5d              # double 0.041176999999999998
	.quad	0x3fe91c044284dfce              # double 0.78466999999999998
	.quad	0x3fe8142f61ed5ae2              # double 0.75246400000000002
	.quad	0x3fe2e0d23d4f15e8              # double 0.58994400000000002
	.quad	0x3fd0e2cdc011d367              # double 0.26384299999999999
	.quad	0x3fee4373f316e371              # double 0.94573399999999996
	.quad	0x3fedfbcc2938de6e              # double 0.93698700000000001
	.quad	0x3f310a137f38c543              # double 2.5999999999999998E-4
	.quad	0x3fec483ec892ab69              # double 0.88381900000000002
	.quad	0x3fcb51d68c692f6f              # double 0.21343500000000001
	.quad	0x3fb81c4fc1df3301              # double 0.094182000000000002
	.quad	0x3fec06f8ad256799              # double 0.87585100000000005
	.quad	0x3fed5e80bed740c4              # double 0.91778599999999999
	.quad	0x3fddce0b912dba4d              # double 0.46570099999999998
	.quad	0x3fb3a1e3eaf6837f              # double 0.076688999999999993
	.quad	0x3fecaccd530489d2              # double 0.89609399999999995
	.quad	0x3fd8d330941c8217              # double 0.38789000000000001
	.quad	0x3f75e071c53f39d2              # double 0.0053410000000000003
	.quad	0x3fb95b035bd512ec              # double 0.099044999999999994
	.quad	0x3fece0157eed45e9              # double 0.90235399999999999
	.quad	0x3fec3925bb7b6bb1              # double 0.88197599999999998
	.quad	0x3fedbed527e52157              # double 0.92954499999999995
	.quad	0x3f9371971c10d7bf              # double 0.018988000000000001
	.quad	0x3feb3838c111ada7              # double 0.85061299999999995
	.quad	0x3fb720642396073e              # double 0.090338000000000001
	.quad	0x3fb7aa044ae85b9f              # double 0.092438000000000006
	.quad	0x3fefcf5b1c864884              # double 0.994062
	.quad	0x3fe56b80ecfa69be              # double 0.669373
	.quad	0x3fe24dfce3150dae              # double 0.57201999999999997
	.quad	0x3fe4d29bae46cfc8              # double 0.65070899999999998
	.quad	0x3feda9f383f0bae9              # double 0.92699600000000004
	.quad	0x3fe87829068986fd              # double 0.76466800000000001
	.quad	0x3fec733226c3b928              # double 0.88906200000000002
	.quad	0x3fc4476f2a5a469d              # double 0.15842999999999999
	.quad	0x3fe9e262cba732df              # double 0.80888499999999997
	.quad	0x3fdd26a65cf67b1c              # double 0.455484
	.quad	0x3f90b1bbcf4e874d              # double 0.016303000000000002
	.quad	0x3fe1226c3b927d46              # double 0.53545200000000004
	.quad	0x3fe7b8b8ae31d713              # double 0.74129900000000004
	.quad	0x3fe1afe60c38f367              # double 0.55272200000000005
	.quad	0x3fd58d1d8a548238              # double 0.33673799999999998
	.quad	0x3fda5e4a38327675              # double 0.41200500000000001
	.quad	0x3fd8d8adab9f559b              # double 0.38822499999999999
	.quad	0x3fe4bf077ccc0379              # double 0.64831899999999998
	.quad	0x3fef51394317acc5              # double 0.978665
	.quad	0x3fe3450efdc9c4db              # double 0.60218000000000005
	.quad	0x3febb21815a07b35              # double 0.86548999999999998
	.quad	0x3feed308bb906467              # double 0.96326100000000003
	.quad	0x3fe20ca8198f1d3f              # double 0.56404500000000002
	.quad	0x3feaa515ce9e5e24              # double 0.83265199999999994
	.quad	0x3fe2c3d46b26bf87              # double 0.58640499999999995
	.quad	0x3fe68427418d690a              # double 0.70363200000000004
	.quad	0x3fdc8130164840e1              # double 0.44538499999999998
	.quad	0x3fe589d0635a426c              # double 0.67307300000000003
	.quad	0x3fe830079a2834d2              # double 0.75586299999999995
	.quad	0x3fe41d8a54823854              # double 0.628606
	.quad	0x3fe029e6eeb70260              # double 0.50511499999999998
	.quad	0x3fe44a1cef240faa              # double 0.63404700000000003
	.quad	0x3fe624894c447c31              # double 0.69196000000000002
	.quad	0x3fac71d606317269              # double 0.055556000000000001
	.quad	0x3fec4aeea63b688c              # double 0.88414700000000001
	.quad	0x3fd6eaaf35e310dc              # double 0.358074
	.quad	0x3fe8a1a500d5e8d5              # double 0.76973199999999997
	.quad	0x3fe6b33fc86cebbc              # double 0.70938100000000004
	.quad	0x3fdbdf8b1572580c              # double 0.43551899999999999
	.quad	0x3fe7cb0c026cc1ca              # double 0.74353599999999997
	.quad	0x3fec4b05b7cfe586              # double 0.884158
	.quad	0x3fec284be40420f7              # double 0.87991900000000001
	.quad	0x3fbd91148fd9fd37              # double 0.115495
	.quad	0x3fdcb3461309c800              # double 0.44844200000000001
	.quad	0x3fe24ec204f2ae08              # double 0.57211400000000001
	.quad	0x3fe777403dddb121              # double 0.73330700000000004
	.quad	0x3fe21733226c3b92              # double 0.56533199999999995
	.quad	0x3fe2ab51bd61f5be              # double 0.58341299999999996
	.quad	0x3fd72f405f6ba062              # double 0.362259
	.quad	0x3fe2e91a75cd0bb7              # double 0.59095500000000001
	.quad	0x3fd3be596c82e01a              # double 0.30849300000000002
	.quad	0x3fb222a2c2374795              # double 0.070841000000000001
	.quad	0x3fd805d0fa58f712              # double 0.37535499999999999
	.quad	0x3fc97f7be121ee67              # double 0.19920299999999999
	.quad	0x3fe6fe62dc6e2a80              # double 0.718553
	.quad	0x3fe5823422467be5              # double 0.67214399999999996
	.quad	0x3fec89eba6aca793              # double 0.89183599999999996
	.quad	0x3fe434bf8fcd67fd              # double 0.63143899999999997
	.quad	0x3fd05b0ff10ecb75              # double 0.25555800000000001
	.quad	0x3fc2aac96cc5fbf8              # double 0.14583699999999999
	.quad	0x3feeee19b90ea9e7              # double 0.966565
	.quad	0x3fed83558a761028              # double 0.92228200000000005
	.quad	0x3fe8c8ba83f4eca7              # double 0.77450300000000005
	.quad	0x3fe46e115592d98c              # double 0.638436
	.quad	0x3fdb56191148fda0              # double 0.42713000000000001
	.quad	0x3fa1ab8e8ea39c52              # double 0.034512000000000001
	.quad	0x3fe765604189374c              # double 0.73112500000000002
	.quad	0x3fec3d017dae8188              # double 0.88244699999999998
	.quad	0x3fea708aac96cc60              # double 0.82623800000000002
	.quad	0x3fe5abe6a337a80d              # double 0.677234
	.quad	0x3fed4b599aa60914              # double 0.91544800000000003
	.quad	0x3fe4cec41dd1a21f              # double 0.65024000000000004
	.quad	0x3fe1e1cbccf28c7a              # double 0.558813
	.quad	0x3fdfd451fc4c1659              # double 0.497334
	.quad	0x3fe53f83382e44b7              # double 0.66400300000000001
	.quad	0x3fe21b13165d3997              # double 0.565805
	.quad	0x3fbbe4de3b8a19ca              # double 0.108961
	.quad	0x3fdb579af1886df8              # double 0.42722199999999999
	.quad	0x3fca639d5e4a3832              # double 0.20616499999999999
	.quad	0x3fef56494d50ebab              # double 0.97928300000000001
	.quad	0x3fda7607c4199fe4              # double 0.41345399999999999
	.quad	0x3fefca07f66e86c6              # double 0.99341199999999996
	.quad	0x3fe4050df15a4acf              # double 0.62561699999999998
	.quad	0x3fede6f0cfe15443              # double 0.93444099999999997
	.quad	0x3fe3631b584b1ab1              # double 0.60584800000000005
	.quad	0x3fc640f238972043              # double 0.17385700000000001
	.quad	0x3fcd6e696a26e547              # double 0.229932
	.quad	0x3fefdac471b47842              # double 0.99545499999999998
	.quad	0x3feb7d6d7e889c1b              # double 0.85906099999999996
	.quad	0x3fd3c39bcba30121              # double 0.30881399999999998
	.quad	0x3feedca29845dc83              # double 0.96443299999999998
	.quad	0x3fd2af35e310dbf0              # double 0.29194399999999998
	.quad	0x3fa54fbdad7518b1              # double 0.041624000000000001
	.quad	0x3fee5d616f86a099              # double 0.94889900000000005
	.quad	0x3fef84bc27631b58              # double 0.98495299999999996
	.quad	0x3fcb716d2aa5c5f8              # double 0.21439900000000001
	.quad	0x3fd14c0df58c08b7              # double 0.27026699999999998
	.quad	0x3fb099bf5946c333              # double 0.064846000000000001
	.quad	0x3fdeb4cc25072086              # double 0.47978500000000002
	.quad	0x3fcb733226c3b928              # double 0.214453
	.quad	0x3fedb62c77574f72              # double 0.92848799999999998
	.quad	0x3fe48b69552e2fbe              # double 0.64201799999999998
	.quad	0x3fe90bf5d78811b2              # double 0.78271000000000002
	.quad	0x3feabb341e14bdfd              # double 0.83535199999999998
	.quad	0x3fbebf76a2f48c2e              # double 0.12010899999999999
	.quad	0x3fe7be0370cdc875              # double 0.74194499999999997
	.quad	0x3fea2a411c2a0232              # double 0.817658
	.quad	0x3fed61cde5d18091              # double 0.91818900000000003
	.quad	0x3fd6de2ac3222920              # double 0.35731000000000002
	.quad	0x3fed6baf102363b2              # double 0.91939499999999996
	.quad	0x3fdd5104d551d68c              # double 0.45806999999999998
	.quad	0x3fba523704790b85              # double 0.10281700000000001
	.quad	0x3fea0b2e9ccb7d41              # double 0.81386499999999995
	.quad	0x3fe4af48c2e770bd              # double 0.646397
	.quad	0x3fe8220578e5c4eb              # double 0.75415299999999996
	.quad	0x3fb62b063e07a28c              # double 0.086594000000000004
	.quad	0x3fd1882278d0cc36              # double 0.27393400000000001
	.quad	0x3fe81ceaf251c194              # double 0.75353000000000003
	.quad	0x3fe9ec2acb85a4f0              # double 0.81007899999999999
	.quad	0x3fc96e58a32f4491              # double 0.19868
	.quad	0x3fead04a2fcefaa4              # double 0.83792599999999994
	.quad	0x3fcf73d188f42fe8              # double 0.245722
	.quad	0x3fcab93469941850              # double 0.20877699999999999
	.quad	0x3fecc7d1bb4916ca              # double 0.89939199999999997
	.quad	0x3fe322e1ac57e23f              # double 0.59800799999999998
	.quad	0x3fe4007357e670e3              # double 0.62505500000000003
	.quad	0x3fe5261e0c5a8156              # double 0.66090300000000002
	.quad	0x3fea6de76427c7c5              # double 0.82591599999999998
	.quad	0x3fd7f76a2f48c2e7              # double 0.37447599999999998
	.quad	0x3fe9581adea89763              # double 0.79200499999999996
	.quad	0x3fc3a7546d3f9e7c              # double 0.15354400000000001
	.quad	0x3fc5feb8d8234224              # double 0.17183599999999999
	.quad	0x3fe2538cda6e75ff              # double 0.57269899999999996
	.quad	0x3fe1916228134480              # double 0.54899699999999996
	.quad	0x3fda8ec52a411c2a              # double 0.414964
	.quad	0x3f8347a5b0ff10ed              # double 0.0094140000000000004
	.quad	0x3feeeaf6837f7be1              # double 0.96618199999999998
	.quad	0x3fd4400b88ca3e7d              # double 0.316409
	.quad	0x3f84bad7d7c2ca15              # double 0.010122000000000001
	.quad	0x3fc5819d2391d580              # double 0.168018
	.quad	0x3fbb0c1333b96af0              # double 0.105653
	.quad	0x3fb2774eebf65dc0              # double 0.072133000000000003
	.quad	0x3fc5079e59f2ba9d              # double 0.164295
	.quad	0x3fe63760bf5d7881              # double 0.69425999999999999
	.quad	0x3fec3c2fc69728a6              # double 0.88234699999999999
	.quad	0x3feb7212d77318fc              # double 0.85767499999999996
	.quad	0x3fd23bd1676640a7              # double 0.28490100000000002
	.quad	0x3fea8614163779ea              # double 0.82886700000000002
	.quad	0x3fede60c38f36695              # double 0.93433200000000005
	.quad	0x3fe47c9363f572de              # double 0.64020699999999997
	.quad	0x3fe0a0a5269595ff              # double 0.51961000000000002
	.quad	0x3fe685ff1d81f106              # double 0.70385699999999995
	.quad	0x3fe3cf0f9d2bf551              # double 0.61902599999999997
	.quad	0x3fd0e9531550ca1d              # double 0.264241
	.quad	0x3fbb10667f90d9d7              # double 0.10571899999999999
	.quad	0x3fe6827fa1a0cf18              # double 0.70343
	.quad	0x3fa46c97d8cf398f              # double 0.039891000000000003
	.quad	0x3f91bef49cf56ead              # double 0.017330000000000002
	.quad	0x3fe55ff822bbecab              # double 0.66796500000000003
	.quad	0x3fdef8a8f3a9b068              # double 0.483927
	.quad	0x3fd9bf11f926c7eb              # double 0.40228700000000001
	.quad	0x3fc9c3265add9c28              # double 0.201268
	.quad	0x3fb8ebdd334c5da7              # double 0.097349000000000005
	.quad	0x3fc30d49949e8816              # double 0.148843
	.quad	0x3fef0ea39c51dabe              # double 0.97053699999999998
	.quad	0x3fe60852b4d8ba41              # double 0.68851600000000002
	.quad	0x3fe6814940bbb1f2              # double 0.70328199999999996
	.quad	0x3feb5e17e34b9453              # double 0.855236
	.quad	0x3fe1187a4a48f96e              # double 0.53423799999999999
	.quad	0x3fc33365881a1555              # double 0.150006
	.quad	0x3fef7b3fa6defc7a              # double 0.98379499999999998
	.quad	0x3fc0e04c05921038              # double 0.13184499999999999
	.quad	0x3fe3f31b152f3c2e              # double 0.62342600000000004
	.quad	0x3fdee39f77292c49              # double 0.48264299999999999
	.quad	0x3fb263c74fb549f9              # double 0.071834999999999996
	.quad	0x3fc9cc63f141205c              # double 0.20155000000000001
	.quad	0x3fe5f6ec5b078d93              # double 0.686392
	.quad	0x3fc9c9eecbfb15b5              # double 0.20147499999999999
	.quad	0x3feef98d8a979e17              # double 0.96796300000000001
	.quad	0x3fd036262cba732e              # double 0.253305
	.quad	0x3fed3fa2ad3e920c              # double 0.91401799999999999
	.quad	0x3fe00bed740c4157              # double 0.50145600000000001
	.quad	0x3f71e108c3f3e037              # double 0.004365
	.quad	0x3fee5b0142f61ed6              # double 0.94860900000000004
	.quad	0x3fe007bfe7e1fc09              # double 0.500946
	.quad	0x3fc54dd72367e415              # double 0.166438
	.quad	0x3fedda6a44417870              # double 0.93291199999999996
	.quad	0x3fa0fffbce4217d3              # double 0.033203000000000003
	.quad	0x3fdbe5796bfca85d              # double 0.43588100000000002
	.quad	0x3fde7b5286b59147              # double 0.47627700000000001
	.quad	0x3fe7913e81450efe              # double 0.73648000000000002
	.quad	0x3fd64c9c90c4dec2              # double 0.34842600000000001
	.quad	0x3fee5796bfca85cb              # double 0.94819200000000003
	.quad	0x3fe274a98aa8650e              # double 0.57674099999999995
	.quad	0x3fde94ff0025bfad              # double 0.47784399999999999
	.quad	0x3fe9578a2a90cd42              # double 0.79193599999999997
	.quad	0x3fa87f455a7d2418              # double 0.047846
	.quad	0x3fd8401c4fc1df33              # double 0.378913
	.quad	0x3fec474b838c111b              # double 0.88370300000000002
	.quad	0x3fc900bcbe61cfff              # double 0.19533500000000001
	.quad	0x3fe6dea033e78e19              # double 0.71467599999999998
	.quad	0x3fe8842d8c2a454e              # double 0.76613500000000001
	.quad	0x3fd4a2ca9ac36545              # double 0.322436
	.quad	0x3fe9463ae2541d8f              # double 0.78982300000000005
	.quad	0x3fe67fb8b26394fb              # double 0.70309100000000002
	.quad	0x3fec7fbacb428912              # double 0.89059200000000005
	.quad	0x3fb80639d5e4a383              # double 0.093844999999999998
	.quad	0x3fed11c6d1e108c4              # double 0.90842
	.quad	0x3fe8241e57d9dba9              # double 0.754409
	.quad	0x3fe627ed84d338f8              # double 0.69237400000000004
	.quad	0x3fec3d2b6f19934f              # double 0.882467
	.quad	0x3fe0e73a365cb35f              # double 0.52822599999999997
	.quad	0x3fee96d0917d6b66              # double 0.95591000000000004
	.quad	0x3fee595dd4c76d11              # double 0.94840899999999995
	.quad	0x3fdcbdb5d894812c              # double 0.44907900000000001
	.quad	0x3fecc2480e8c8abd              # double 0.89871599999999996
	.quad	0x3fee1a671ef30a4e              # double 0.94072299999999998
	.quad	0x3fec7c1376d54973              # double 0.89014599999999999
	.quad	0x3fd52a8c9b845565              # double 0.33072200000000002
	.quad	0x3fbf19c5a3e39f77              # double 0.121487
	.quad	0x3fd7a66559f6ec5b              # double 0.369531
	.quad	0x3fd4160d887ebf23              # double 0.31384600000000001
	.quad	0x3fe373a797891e21              # double 0.60786799999999996
	.quad	0x3fe07342edbb59de              # double 0.51407000000000003
	.quad	0x3fc8034f3fd933e3              # double 0.18760099999999999
	.quad	0x3fb0c4dec1c1d6d0              # double 0.065504000000000007
	.quad	0x3fe3b7baecd07853              # double 0.616178
	.quad	0x3fdb45996744b2b7              # double 0.42612299999999997
	.quad	0x3feacfb97bb73083              # double 0.83785699999999996
	.quad	0x3fe71057d1782d38              # double 0.72074499999999997
	.quad	0x3f7cad14a0a0f4d8              # double 0.0070010000000000003
	.quad	0x3fed9b34a44c7b03              # double 0.92519600000000002
	.quad	0x3fcb9a0f0a5efe93              # double 0.215639
	.quad	0x3fe7d99029ae4f33              # double 0.74530799999999997
	.quad	0x3fe0568837718655              # double 0.51056299999999999
	.quad	0x3fbaf7b17ce52ded              # double 0.10534200000000001
	.quad	0x3fc993ab430f4949              # double 0.199819
	.quad	0x3fd7fd0d0678c005              # double 0.37481999999999999
	.quad	0x3fdf093964a59c06              # double 0.48493799999999998
	.quad	0x3fecd9ddc1e7967d              # double 0.90159500000000004
	.quad	0x3fe5e4712e40852b              # double 0.68413599999999997
	.quad	0x3fbce779207d4e09              # double 0.11290699999999999
	.quad	0x3fe86f566490a351              # double 0.76359100000000002
	.quad	0x3fef3dd334c5da6a              # double 0.97629699999999997
	.quad	0x3fef466b1e5c0b9a              # double 0.97734600000000005
	.quad	0x3fee1db0142f61ed              # double 0.94112399999999996
	.quad	0x3fcb630a915379fb              # double 0.21396000000000001
	.quad	0x3fef314445aa2e3c              # double 0.97476399999999996
	.quad	0x3fe899934efcbd55              # double 0.76874699999999996
	.quad	0x3fe1d8dde7a743a6              # double 0.55772299999999997
	.quad	0x3fee9efd86a8fc0d              # double 0.95690799999999998
	.quad	0x3fdb1e96c3fc43b3              # double 0.42374200000000001
	.quad	0x3f9bd0e12e83a10a              # double 0.027164000000000001
	.quad	0x3fe4cb3a2595bbbf              # double 0.64980800000000005
	.quad	0x3fdd92ddbdb5d895              # double 0.46208900000000003
	.quad	0x3fd2cfa69be09bb7              # double 0.29392400000000002
	.quad	0x3faeffc115df6556              # double 0.060545000000000002
	.quad	0x3fe879acffa7eb6c              # double 0.764853
	.quad	0x3fe192d98bf7f067              # double 0.549176
	.quad	0x3fe6b39c0ebedfa4              # double 0.70942499999999997
	.quad	0x3fe10f840181e03f              # double 0.53314399999999995
	.quad	0x3fe54b33daf8df7a              # double 0.66542999999999997
	.quad	0x3fd436b8f9b13166              # double 0.31584000000000001
	.quad	0x3febbc27631b584b              # double 0.86671799999999999
	.quad	0x3fcaeb702602c908              # double 0.21031
	.quad	0x3fde8f9f44d44567              # double 0.477516
	.quad	0x3fc191ab8e8ea39c              # double 0.13725799999999999
	.quad	0x3fc05fb71fbc5dea              # double 0.12792100000000001
	.quad	0x3fb7dd76683c297c              # double 0.093223
	.quad	0x3fefca6eb91b3f21              # double 0.99346100000000003
	.quad	0x3fdc528f190d1740              # double 0.44253900000000002
	.quad	0x3fc1ffc5479d4d83              # double 0.14061799999999999
	.quad	0x3fe269f2778140dd              # double 0.57543299999999997
	.quad	0x3fc9e44fa05143bf              # double 0.20227999999999999
	.quad	0x3fe34e8533b10774              # double 0.60333499999999995
	.quad	0x3fe43beec39799e5              # double 0.63231599999999999
	.quad	0x3fe6ae72da122fad              # double 0.70879499999999995
	.quad	0x3fe1c47a17f4128c              # double 0.55523400000000001
	.quad	0x3feb4f56eac86057              # double 0.85343500000000005
	.quad	0x3fc0614163779e9d              # double 0.127968
	.quad	0x3fed8539fba450ad              # double 0.92251300000000003
	.quad	0x3fd1f6fd21ff2e49              # double 0.28070000000000001
	.quad	0x3fe3e5c4eb56fb8f              # double 0.62179799999999996
	.quad	0x3fb41ede1198aeb8              # double 0.078595999999999999
	.quad	0x3fe01db445ed4a1b              # double 0.50362600000000002
	.quad	0x3fca59e1f3a57eaa              # double 0.205868
	.quad	0x3fe44983d790752e              # double 0.63397400000000004
	.quad	0x3fcffb1e18efbb0e              # double 0.24985099999999999
	.quad	0x3fc29fcf3dc054ef              # double 0.14550199999999999
	.quad	0x3fefcf8b588e368f              # double 0.99408499999999999
	.quad	0x3fb11904b3c3e74b              # double 0.066788
	.quad	0x3fe12e8c0485a0be              # double 0.53693199999999996
	.quad	0x3febc725c3dee782              # double 0.86806000000000005
	.quad	0x3fdea73f748a1598              # double 0.47895799999999999
	.quad	0x3fd135b0bbf50e34              # double 0.26890199999999997
	.quad	0x3fcdfff79c842fa5              # double 0.234374
	.quad	0x3fc3817b95a29414              # double 0.152389
	.quad	0x3feabb6672fba01f              # double 0.83537600000000001
	.quad	0x3fc2ccc46950fc72              # double 0.146874
	.quad	0x3fe58ede54b48d3b              # double 0.67369000000000001
	.quad	0x3fd446bf01322f27              # double 0.31681799999999999
	.quad	0x3fe72fd75e2046c7              # double 0.72458999999999996
	.quad	0x3fd0e85b9e8c47a1              # double 0.26418199999999997
	.quad	0x3fe3b884406c00da              # double 0.61627399999999999
	.quad	0x3fe57e3d1cc100e7              # double 0.67166000000000003
	.quad	0x3fe45f1e0828c36e              # double 0.63661100000000004
	.quad	0x3fe644955b4677b4              # double 0.69587200000000005
	.quad	0x3fe905a4f00ef135              # double 0.78193900000000005
	.quad	0x3fd4936c58eeae9f              # double 0.32149800000000001
	.quad	0x3fbd37e2c55c9603              # double 0.114134
	.quad	0x3f963f141205bc02              # double 0.021725000000000001
	.quad	0x3fc21d19157abb88              # double 0.141513
	.quad	0x3fe0b06c43f5f916              # double 0.521536
	.quad	0x3fe77f7dfa00e27e              # double 0.73431299999999999
	.quad	0x3fa17d8cf398e970              # double 0.034160999999999997
	.quad	0x3fc4986fcdee34fc              # double 0.16090199999999999
	.quad	0x3fe878705425f202              # double 0.76470199999999999
	.quad	0x3fc8415f45e0b4e1              # double 0.189495
	.quad	0x3fd80d2c386d2ed8              # double 0.37580400000000003
	.quad	0x3fd7577d955714ba              # double 0.36471500000000001
	.quad	0x3fe1d03b81b64e05              # double 0.55666899999999997
	.quad	0x3f9ead4f5903a754              # double 0.029957999999999999
	.quad	0x3fe693708aac96cc              # double 0.70549799999999996
	.quad	0x3fcf840181e03f70              # double 0.24621599999999999
	.quad	0x3fbbc0c1fc8f3238              # double 0.10841000000000001
	.quad	0x3fdcdb6a1e81cb47              # double 0.45089200000000002
	.quad	0x3fe4baba7b9170d6              # double 0.64779399999999998
	.quad	0x3fe419c38b04ab60              # double 0.62814499999999995
	.quad	0x3fd0b2f23033a472              # double 0.26092199999999999
	.quad	0x3feed26d8b1dd5d4              # double 0.96318700000000001
	.quad	0x3fe70c5c9a34ca0c              # double 0.72025899999999998
	.quad	0x3fddd916872b020c              # double 0.46637499999999998
	.quad	0x3fd67c80841ede12              # double 0.35134900000000002
	.quad	0x3fdb185cee17a030              # double 0.42336200000000002
	.quad	0x3fe2ea593a2df938              # double 0.59110700000000005
	.quad	0x3f5f14983d790753              # double 0.001897
	.quad	0x3fee78feef5ec80c              # double 0.95226999999999994
	.quad	0x3fbcb252ce032db2              # double 0.112096
	.quad	0x3fd68f648c7192ea              # double 0.35250199999999998
	.quad	0x3feb285caafbc1ad              # double 0.84867700000000001
	.quad	0x3fd3c647778dd617              # double 0.308977
	.quad	0x3fed99e94ab1d4fa              # double 0.92503800000000003
	.quad	0x3febf840181e03f7              # double 0.874054
	.quad	0x3fdaadd590c0ad04              # double 0.41686000000000001
	.quad	0x3fd420ddc6195465              # double 0.31450600000000001
	.quad	0x3fd747a9e2bcf91a              # double 0.36374899999999999
	.quad	0x3fe34f312b1b36bd              # double 0.60341699999999998
	.quad	0x3fe6356323bbc6eb              # double 0.694017
	.quad	0x3febf151e75360d0              # double 0.87320799999999998
	.quad	0x3fd0fb86f47b677f              # double 0.26535199999999998
	.quad	0x3fe033b7521144cc              # double 0.50631300000000001
	.quad	0x3fe4e8a936c58eeb              # double 0.65340100000000001
	.quad	0x3feeab191dde3758              # double 0.95838599999999996
	.quad	0x3fd66523704790b8              # double 0.34992299999999998
	.quad	0x3fe5c83a96d4c33b              # double 0.68069199999999996
	.quad	0x3fd8cac083126e98              # double 0.38737500000000002
	.quad	0x3fea008c8259e1f4              # double 0.81256700000000003
	.quad	0x3fc70870110a137f              # double 0.17994499999999999
	.quad	0x3fe4e58e64b23140              # double 0.65302199999999999
	.quad	0x3fd2e2f7b17ce52e              # double 0.295103
	.quad	0x3fea0db8bac710cb              # double 0.81417499999999998
	.quad	0x3feb8c4dec1c1d6d              # double 0.860877
	.quad	0x3f6e71044f1a1987              # double 0.0037160000000000001
	.quad	0x3fdfcd898b2e9ccb              # double 0.49691999999999997
	.quad	0x3fe62f35e310dbf0              # double 0.69326299999999996
	.quad	0x3fc3996744b2b778              # double 0.15311900000000001
	.quad	0x3fe945c13fd0d068              # double 0.78976500000000005
	.quad	0x3fdddf04ddb5525d              # double 0.46673700000000001
	.quad	0x3feda398201cd5fa              # double 0.92622000000000004
	.quad	0x3faaed99cbee807c              # double 0.052594000000000002
	.quad	0x3feb91ff7164c72a              # double 0.861572
	.quad	0x3feb53f39d1b2e5a              # double 0.85399800000000003
	.quad	0x3fcadeb0fadf2ecf              # double 0.209921
	.quad	0x3fee44998d045fe1              # double 0.94587399999999999
	.quad	0x3feaf6d97b30f8c6              # double 0.84263299999999997
	.quad	0x3fc1b82c2bd7f51f              # double 0.138433
	.quad	0x3fe6030c23fab10c              # double 0.68787200000000004
	.quad	0x3fddb9c304ccee5b              # double 0.46446300000000001
	.quad	0x3fe58f5e41d4b6a6              # double 0.67375099999999999
	.quad	0x3fd5b5781c714fce              # double 0.33920099999999997
	.quad	0x3fbe5f84cad57bc8              # double 0.118645
	.quad	0x3fed80218def416c              # double 0.92189100000000001
	.quad	0x3fd3c09c3ce2089e              # double 0.30863099999999999
	.quad	0x3fd9e279dd3bafd9              # double 0.40444799999999997
	.quad	0x3fe3fc5260f5e41d              # double 0.62455099999999997
	.quad	0x3f4ab4b72c5197a2              # double 8.1499999999999997E-4
	.quad	0x3fcff52fc2656abe              # double 0.24967
	.quad	0x3fcd1afc04c8bc9d              # double 0.227386
	.quad	0x3fa828a1dfb9389b              # double 0.047184999999999998
	.quad	0x3fbaa8da7f3cf701              # double 0.104139
	.quad	0x3fcd3df2a9d627bf              # double 0.22845299999999999
	.quad	0x3fcc50d6b228dc98              # double 0.221217
	.quad	0x3fd773215fcc1872              # double 0.36640200000000001
	.quad	0x3fe4c2fe82517e78              # double 0.64880300000000002
	.quad	0x3fc022dd7a99fa12              # double 0.12606400000000001
	.quad	0x3fccd6b228dc981c              # double 0.225302
	.quad	0x3fc4982cb20fb225              # double 0.16089400000000001
	.quad	0x3fbab441bb8c32a9              # double 0.104313
	.quad	0x3fd3ea0ba1f4b1ee              # double 0.31115999999999999
	.quad	0x3fc9fcf3dc054ef4              # double 0.20303199999999999
	.quad	0x3feab42cc2d6a9c5              # double 0.83449399999999996
	.quad	0x3febcb6e935b91f7              # double 0.86858299999999999
	.quad	0x3fd7be121ee67514              # double 0.37097599999999997
	.quad	0x3fa4bf2b239a38fc              # double 0.040521000000000001
	.quad	0x3fee8123810e8859              # double 0.953264
	.quad	0x3fd7cac083126e98              # double 0.37175000000000002
	.quad	0x3fecf4128bf3bea9              # double 0.90479399999999999
	.quad	0x3fe763864cb5bb38              # double 0.73089899999999997
	.quad	0x3fdce43ed959a30a              # double 0.45143100000000003
	.quad	0x3fe026b723ee1bd2              # double 0.50472600000000001
	.quad	0x3fceddf00abf76a3              # double 0.241148
	.quad	0x3fbf7b5aea3161a2              # double 0.122976
	.quad	0x3fc4f54d1e96c3fc              # double 0.16373599999999999
	.quad	0x3fa761aa3f034b0e              # double 0.045666999999999999
	.quad	0x3fdefd86a8fc0d2c              # double 0.48422399999999999
	.quad	0x3fe86d3b6cbd987c              # double 0.76333399999999995
	.quad	0x3fd562e09fe86834              # double 0.33416000000000001
	.quad	0x3fdedd2f1a9fbe77              # double 0.48225000000000001
	.quad	0x3fe50196d8f4f93c              # double 0.65644400000000003
	.quad	0x3fc6f14db59578a3              # double 0.17923900000000001
	.quad	0x3fedb3bb83cf2cf9              # double 0.92818999999999996
	.quad	0x3fe7438b04ab606b              # double 0.72699499999999995
	.quad	0x3fe1c35696e58a33              # double 0.55509500000000001
	.quad	0x3fe80092ccf6be38              # double 0.75007000000000001
	.quad	0x3fcf287c200c0f02              # double 0.243423
	.quad	0x3fda02f2f9873ffb              # double 0.40643000000000001
	.quad	0x3f9f7dfa00e27e0f              # double 0.030754
	.quad	0x3fd80f16f4384ba1              # double 0.37592100000000001
	.quad	0x3fe43b0a2ca9ac36              # double 0.63220699999999996
	.quad	0x3fbfd3d4280ae105              # double 0.12432600000000001
	.quad	0x3fe04523f67f4dbe              # double 0.50844
	.quad	0x3fbc30b178b37004              # double 0.11011799999999999
	.quad	0x3fd19917939a7c18              # double 0.27496900000000002
	.quad	0x3fdea7546d3f9e7c              # double 0.47896300000000003
	.quad	0x3fc732bdc26dce3a              # double 0.18123600000000001
	.quad	0x3fd1d7be9856a37b              # double 0.27879300000000001
	.quad	0x3fc4620ab7132724              # double 0.15924199999999999
	.quad	0x3fdae432441fea81              # double 0.420178
	.quad	0x3fd69435ac8a3726              # double 0.352796
	.quad	0x3fe8f4cd31769a91              # double 0.77988299999999999
	.quad	0x3fdfe62dc6e2a800              # double 0.49842399999999998
	.quad	0x3fe2fbfa4c61d862              # double 0.59325899999999998
	.quad	0x3fdf61dc93ea2d30              # double 0.49034800000000001
	.quad	0x3fc78982cb20fb22              # double 0.18388399999999999
	.quad	0x3fd69f94855da273              # double 0.35349000000000003
	.quad	0x3fd6ab862b27cbf7              # double 0.35421900000000001
	.quad	0x3fd2ca70d1fa3337              # double 0.29360599999999998
	.quad	0x3fd3ae3e6c4c5975              # double 0.30751000000000001
	.quad	0x3fe73c297bfa4c62              # double 0.72609400000000002
	.quad	0x3fa49ea9a3d2d880              # double 0.040273000000000003
	.quad	0x3fe84aeea63b688c              # double 0.75914700000000001
	.quad	0x3fe988effe2a3cea              # double 0.79796599999999995
	.quad	0x3fef3b3c81908e58              # double 0.97598099999999998
	.quad	0x3fd5a3f034b0e1b5              # double 0.33813100000000001
	.quad	0x3f7fe974a3400b89              # double 0.0077910000000000002
	.quad	0x3fe501abd1aa821f              # double 0.65645399999999998
	.quad	0x3fee69a6f826edab              # double 0.95039700000000005
	.quad	0x3fef46412cf0f9d3              # double 0.97732600000000002
	.quad	0x3fdc11276fb09204              # double 0.43854700000000002
	.quad	0x3fd51bef49cf56eb              # double 0.32983000000000001
	.quad	0x3fe5e9c66d373b00              # double 0.68478700000000003
	.quad	0x3fe0ba3ca7503b82              # double 0.52273400000000003
	.quad	0x3feae4b662fdfc1a              # double 0.84041900000000003
	.quad	0x3fdf78dd616f86a1              # double 0.49175200000000002
	.quad	0x3fed2f20ea5b530d              # double 0.91200300000000001
	.quad	0x3f636c58eeae9ee4              # double 0.0023709999999999998
	.quad	0x3fe30ff327aa68f5              # double 0.59569700000000003
	.quad	0x3fe880d1b71758e2              # double 0.76572499999999999
	.quad	0x3fe2707182235b4f              # double 0.57622600000000002
	.quad	0x3fbc31ceaf251c19              # double 0.110135
	.quad	0x3fc6f648c7192ea5              # double 0.17939099999999999
	.quad	0x3fe4ca2db61bb060              # double 0.64968000000000004
	.quad	0x3fd0a5b9628cbd12              # double 0.26011499999999999
	.quad	0x3fd5739b024f6599              # double 0.33518100000000001
	.quad	0x3fd8f36694898f60              # double 0.38985599999999998
	.quad	0x3fefc14e7ee9142b              # double 0.99234699999999997
	.quad	0x3fdba1ad6451b930              # double 0.43174299999999999
	.quad	0x3fe6ed15ad106ee3              # double 0.71644099999999999
	.quad	0x3fdf0e3cd9a52264              # double 0.48524400000000001
	.quad	0x3faa116659d12cae              # double 0.050914000000000001
	.quad	0x3fd0c55c96030c24              # double 0.262046
	.quad	0x3f966adb402d16b9              # double 0.021891999999999998
	.quad	0x3fee065f9591cd1c              # double 0.93827799999999994
	.quad	0x3fe44280ae104923              # double 0.63311799999999996
	.quad	0x3fea16249a133c1d              # double 0.81520300000000001
	.quad	0x3fea0984e3ffef39              # double 0.813662
	.quad	0x3fed4c532a497fa6              # double 0.91556700000000002
	.quad	0x3fd3d2d44dca8e2e              # double 0.30974299999999999
	.quad	0x3fee888f861a60d4              # double 0.95416999999999996
	.quad	0x3fc8dd8b60f1b25f              # double 0.19426099999999999
	.quad	0x3fdf0752da98676a              # double 0.48482199999999998
	.quad	0x3fd1986338b47c74              # double 0.274926
	.quad	0x3fea67d9988d2a20              # double 0.82517700000000004
	.quad	0x3fdcfbc5de9c022a              # double 0.45286700000000002
	.quad	0x3fe3cf8b588e368f              # double 0.619085
	.quad	0x3fde5cfede97d06c              # double 0.47442600000000001
	.quad	0x3fe47fc5479d4d83              # double 0.64059699999999997
	.quad	0x3fe3f8b9baa1511e              # double 0.624112
	.quad	0x3f8d72bcb5fe542e              # double 0.014378999999999999
	.quad	0x3fd04523f67f4dbe              # double 0.25422
	.quad	0x3fe50baa582dbe7f              # double 0.65767399999999998
	.quad	0x3fc518eb8950763a              # double 0.164823
	.quad	0x3fd8245f5ad96a6a              # double 0.37722
	.quad	0x3fe3d113836a832c              # double 0.61927200000000004
	.quad	0x3fd4f2cb641700ce              # double 0.32731900000000003
	.quad	0x3fcea593a2df9379              # double 0.239428
	.quad	0x3fdb6d1e108c3f3e              # double 0.428535
	.quad	0x3fd244ae85b9e8c4              # double 0.28544199999999997
	.quad	0x3fe58effe2a3cea7              # double 0.67370600000000003
	.quad	0x3fefbd0e12e83a11              # double 0.99182800000000004
	.quad	0x3fe2b65881a15550              # double 0.58475900000000003
	.quad	0x3fc7800a7c5ac472              # double 0.18359500000000001
	.quad	0x3fe07c73eee52589              # double 0.51519199999999998
	.quad	0x3fed57e23f24d8fd              # double 0.91697799999999996
	.quad	0x3fe818d6909aed57              # double 0.75303200000000003
	.quad	0x3fc2e87d2c7b890d              # double 0.14771999999999999
	.quad	0x3fea64e054690de1              # double 0.82481400000000005
	.quad	0x3fd3f0e90bc7b45f              # double 0.31157899999999999
	.quad	0x3fa505f28848387e              # double 0.041061
	.quad	0x3fd1f91a32b12d34              # double 0.280829
	.quad	0x3fd2e89656eefa1e              # double 0.29544599999999999
	.quad	0x3fe073e89a88ace2              # double 0.51414899999999997
	.quad	0x3fd282b1f687b13a              # double 0.28922700000000001
	.quad	0x3fe783968d759ee9              # double 0.73481300000000005
	.quad	0x3fe2ee34fc610f0f              # double 0.59157800000000005
	.quad	0x3fd55ad538ac18f8              # double 0.33366899999999999
	.quad	0x3fe9666a98244e94              # double 0.79375200000000001
	.quad	0x3feee527a20578e6              # double 0.96547300000000003
	.quad	0x3feb1ee02a77a2cf              # double 0.84751900000000002
	.quad	0x3fb401c4fc1df330              # double 0.078151999999999999
	.quad	0x3fd2bcbe61cffeb0              # double 0.29276999999999997
	.quad	0x3fdb8327674d1633              # double 0.42987999999999998
	.quad	0x3fe59fb6134ce3de              # double 0.67574599999999996
	.quad	0x3fe912018a43bb41              # double 0.78344800000000003
	.quad	0x3fd394dd72367e41              # double 0.30596099999999998
	.quad	0x3feb6a91d9b1b79e              # double 0.85675900000000005
	.quad	0x3fbaa4fca42aed14              # double 0.10408000000000001
	.quad	0x3fed726d04e618ce              # double 0.92021799999999998
	.quad	0x3fe3719934efcbd5              # double 0.60761699999999996
	.quad	0x3fc12ed783dff3f1              # double 0.134242
	.quad	0x3fe0e0daa0cae643              # double 0.52744800000000003
	.quad	0x3f8603925bb7b6bb              # double 0.010749
	.quad	0x3fc6837718655193              # double 0.17588699999999999
	.quad	0x3fbd17c5ef62f9ca              # double 0.113644
	.quad	0x3fd5f3bea91d9b1b              # double 0.34300199999999997
	.quad	0x3fe71c219eb6390d              # double 0.72218400000000005
	.quad	0x3fea8d349be8ff32              # double 0.82973699999999995
	.quad	0x3fbdbea0ba1f4b1f              # double 0.11619
	.quad	0x3fd699ed7c6fbd27              # double 0.35314499999999999
	.quad	0x3fecee9bbf0dc769              # double 0.90412700000000001
	.quad	0x3fefea854477ff15              # double 0.99737799999999998
	.quad	0x3fcbdc0db2702a35              # double 0.21765300000000001
	.quad	0x3fe2d441355475a3              # double 0.58840999999999999
	.quad	0x3fe446b8b69552e3              # double 0.633633
	.quad	0x3fe4bd35eb7457c1              # double 0.64809700000000003
	.quad	0x3fe45d63886594af              # double 0.63639999999999997
	.quad	0x3fe78cc9a77e5eab              # double 0.73593600000000003
	.quad	0x3fa316a055757d5b              # double 0.037282000000000003
	.quad	0x3f9dea897635e743              # double 0.029215000000000001
	.quad	0x3f8b899392189bd8              # double 0.013446
	.quad	0x3fd48a222d5171e3              # double 0.32093100000000002
	.quad	0x3fe4b7da61e0c5a8              # double 0.64744299999999999
	.quad	0x3fed934699418506              # double 0.92422800000000005
	.quad	0x3fec0614163779ea              # double 0.87574200000000002
	.quad	0x3feee2e2b8c75c4b              # double 0.96519600000000005
	.quad	0x3fe68ccdd93c46d8              # double 0.70468799999999998
	.quad	0x3fe6618266772d5e              # double 0.699403
	.quad	0x3fc90afe60c38f36              # double 0.19564799999999999
	.quad	0x3fe28746455eaee2              # double 0.579013
	.quad	0x3fe8638eb0318b93              # double 0.76215299999999997
	.quad	0x3fd4d5a187a4a490              # double 0.32553900000000002
	.quad	0x3fce182ecaeea63b              # double 0.23511299999999999
	.quad	0x3fec636d22424a27              # double 0.88713699999999995
	.quad	0x3fd1c93a71151612              # double 0.27790700000000002
	.quad	0x3fdfab7564302b41              # double 0.49484
	.quad	0x3fe4f70bd017dae8              # double 0.65515699999999999
	.quad	0x3fe8da6a44417870              # double 0.77666199999999996
	.quad	0x3fe49c7368ad6883              # double 0.64409799999999995
	.quad	0x3fe22b4b72c5197a              # double 0.56778499999999998
	.quad	0x3fe16de1198aeb81              # double 0.54466300000000001
	.quad	0x3fe10bcdfefbf402              # double 0.53269100000000003
	.quad	0x3fee04988094e5d6              # double 0.93806100000000003
	.quad	0x3fedea93f290abb4              # double 0.93488499999999996
	.quad	0x3fd9cc5fbf83382e              # double 0.40309899999999999
	.quad	0x3fcaa2e3c536d656              # double 0.208096
	.quad	0x3fcd3b18dac258d6              # double 0.22836600000000001
	.quad	0x3fd92756861e9292              # double 0.39302599999999999
	.quad	0x3fe3178f68be2f7b              # double 0.59662599999999999
	.quad	0x3fa82cd39da16617              # double 0.047217000000000002
	.quad	0x3fe6958537e2c55d              # double 0.70575200000000005
	.quad	0x3fe1ec5d206c8712              # double 0.56010300000000002
	.quad	0x3fe2b8d60a633051              # double 0.585063
	.quad	0x3f979e16d6dc1a48              # double 0.023064000000000001
	.quad	0x3fe0d18d25edd053              # double 0.52558000000000005
	.quad	0x3fddbacb4289118c              # double 0.46452599999999999
	.quad	0x3fb77d1fe64f54d2              # double 0.091753000000000001
	.quad	0x3fd89e55c0fcb4f2              # double 0.38466400000000001
	.quad	0x3feda4e7ab756430              # double 0.92637999999999998
	.quad	0x3fe5f66a55087011              # double 0.68633
	.quad	0x3feb69ced0b30b5b              # double 0.85666600000000004
	.quad	0x3fe133fc86cebbba              # double 0.53759599999999996
	.quad	0x3fd0568a50507a6c              # double 0.25528200000000001
	.quad	0x3fea7cb923a29c78              # double 0.82772500000000004
	.quad	0x3fde963992c8c500              # double 0.47791899999999998
	.quad	0x3fbebd1aa821f299              # double 0.120073
	.quad	0x3fe0abda0dfdef85              # double 0.52097800000000005
	.quad	0x3fce094e5d5b24ea              # double 0.23465900000000001
	.quad	0x3fc75b899392189c              # double 0.182481
	.quad	0x3fecc855da272863              # double 0.899455
	.quad	0x3fe51ac9afe1da7b              # double 0.65952
	.quad	0x3fbf2fa93af74cd3              # double 0.121821
	.quad	0x3fe62f9ca5bd944b              # double 0.69331200000000004
	.quad	0x3fcc7e38eb0318b9              # double 0.22260199999999999
	.quad	0x3fe9d6cb5350092d              # double 0.80747000000000002
	.quad	0x3feeadf0d413122b              # double 0.95873299999999994
	.quad	0x3fd27620ee8d10f5              # double 0.28845999999999999
	.quad	0x3fdf370cdc8754f3              # double 0.48773499999999997
	.quad	0x3fd5ad6cb5350093              # double 0.33871000000000001
	.quad	0x3fe2a426bb55ac04              # double 0.582538
	.quad	0x3fa8d9f90539fba4              # double 0.048537999999999998
	.quad	0x3faf94ea077036ca              # double 0.061683000000000002
	.quad	0x3fe97e4ffc9795b3              # double 0.79666899999999996
	.quad	0x3fd45e0f7fcfc3f8              # double 0.318241
	.quad	0x3fec32e7b3d8e001              # double 0.88121400000000005
	.quad	0x3fd8de1e2de87097              # double 0.38855699999999999
	.quad	0x3fedac6cdaf4adbc              # double 0.92729799999999995
	.quad	0x3fdeff972474538f              # double 0.48435
	.quad	0x3fef1d53cddd6e05              # double 0.97233000000000002
	.quad	0x3fe76f75d9a0f0a6              # double 0.73235600000000001
	.quad	0x3fecff0025bfad2a              # double 0.90612800000000004
	.quad	0x3fd638bcdfefbf40              # double 0.34721299999999999
	.quad	0x3fe440852b4d8ba4              # double 0.63287599999999999
	.quad	0x3fd023c85c24c405              # double 0.25218400000000002
	.quad	0x3fe43cb1cc964628              # double 0.632409
	.quad	0x3fd80096feb4a665              # double 0.37503599999999998
	.quad	0x3fd54b48d3ae685e              # double 0.33272000000000002
	.quad	0x3fe9747735c182ed              # double 0.79546700000000004
	.quad	0x3feb8f7db6e503fb              # double 0.86126599999999998
	.quad	0x3febf1cda2b5a20e              # double 0.87326700000000002
	.quad	0x3feae9f05ea24cc7              # double 0.84105700000000005
	.quad	0x3fd26a012599ed7c              # double 0.28771999999999998
	.quad	0x3fd4740c4156e265              # double 0.31958300000000001
	.quad	0x3fba74299d883ba3              # double 0.103335
	.quad	0x3fed7763e4abe6a3              # double 0.92082399999999998
	.quad	0x3fd5664d3bf2f556              # double 0.33436900000000003
	.quad	0x3fe319285a921cce              # double 0.59682100000000005
	.quad	0x3febe1a60d4562e1              # double 0.87129500000000004
	.quad	0x3fc52d2bb23571d2              # double 0.165441
	.quad	0x3fdae2da554b8bf0              # double 0.42009600000000002
	.quad	0x3fcc4020817fc760              # double 0.22070699999999999
	.quad	0x3febf077ccc03793              # double 0.87310399999999999
	.quad	0x3fead1b0ccbc05d5              # double 0.83809699999999998
	.quad	0x3fd72ce032db1e9f              # double 0.36211399999999999
	.quad	0x3fddb6e935b91f71              # double 0.46428900000000001
	.quad	0x3fe70ec311622813              # double 0.72055199999999997
	.quad	0x3fd63cbc48f10a9a              # double 0.34745700000000002
	.quad	0x3fe39372a38b8ae3              # double 0.61174899999999999
	.quad	0x3fe5ed00b45ae600              # double 0.68518100000000004
	.quad	0x3fe12715831f03d1              # double 0.53602099999999997
	.quad	0x3fdd80dc33721d54              # double 0.46099000000000001
	.quad	0x3fe6c2bf9830e3ce              # double 0.71127300000000004
	.quad	0x3fe1632a0663c750              # double 0.54335500000000003
	.quad	0x3fe7d3c9abb01c93              # double 0.74460300000000001
	.quad	0x3fe6a06e9ff0cbb0              # double 0.70708400000000005
	.quad	0x3fd300a393ee5eee              # double 0.29691400000000001
	.quad	0x3fa16a26e5471716              # double 0.034013000000000002
	.quad	0x3fb2f77f27fe4bcb              # double 0.074089000000000002
	.quad	0x3fd941bb8c32a8ca              # double 0.39463700000000002
	.quad	0x3fecd15ce9e5e248              # double 0.90055700000000005
	.quad	0x3febd1676640a6b9              # double 0.86931199999999997
	.quad	0x3fc66b1e5c0b9991              # double 0.17514399999999999
	.quad	0x3fdb3e20ccff21b4              # double 0.42566700000000002
	.quad	0x3fe236e935b91f71              # double 0.56920300000000001
	.quad	0x3fd435653c9abb02              # double 0.31575900000000001
	.quad	0x3fe1ea854477ff15              # double 0.55987799999999999
	.quad	0x3fdfff4ba51a005c              # double 0.49995699999999998
	.quad	0x3fea714983d79075              # double 0.82632899999999998
	.quad	0x3fe14ec636b09635              # double 0.54086599999999996
	.quad	0x3fdede54b48d3ae7              # double 0.48232000000000003
	.quad	0x3fdeebe1650a45d4              # double 0.48314699999999999
	.quad	0x3feba014727dcbde              # double 0.86329100000000003
	.quad	0x3fa19c7bcc2938de              # double 0.034396999999999997
	.quad	0x3fd2255b035bd513              # double 0.28353
	.quad	0x3fd2e22e5de15ca7              # double 0.29505500000000001
	.quad	0x3feaaa6d26740810              # double 0.83330400000000004
	.quad	0x3fef723465625a68              # double 0.98269099999999998
	.quad	0x3fdca4a8c154c986              # double 0.44755
	.quad	0x3fb7e3c105186db5              # double 0.093318999999999999
	.quad	0x3fc958644523f67f              # double 0.19800999999999999
	.quad	0x3fe66618ce2d1f1d              # double 0.699963
	.quad	0x3feaed0917d6b65b              # double 0.84143500000000004
	.quad	0x3feec9a133c1ce6c              # double 0.96211299999999999
	.quad	0x3fd9b3aabcd78c43              # double 0.40159099999999998
	.quad	0x3fe67357e670e2c1              # double 0.70157999999999998
	.quad	0x3fd2904b3c3e74b0              # double 0.29005700000000001
	.quad	0x3fd20d1b71758e22              # double 0.28205000000000002
	.quad	0x3fa5942917507e9e              # double 0.042146000000000003
	.quad	0x3fd58815e39713ad              # double 0.33643099999999998
	.quad	0x3fbeeba27ae9ab2a              # double 0.120783
	.quad	0x3fd28aa8650e7792              # double 0.289713
	.quad	0x3fe41b1960fa15db              # double 0.62830799999999998
	.quad	0x3fe7cc404a72ead9              # double 0.74368299999999998
	.quad	0x3fe089d0635a426c              # double 0.51682300000000003
	.quad	0x3fec0438088509c0              # double 0.87551500000000004
	.quad	0x3fe338476f2a5a47              # double 0.60062000000000004
	.quad	0x3fd18f8e7ddca4b1              # double 0.27438699999999999
	.quad	0x3fc831e7d9988d2a              # double 0.189023
	.quad	0x3fe223ee1bd1ed9e              # double 0.566886
	.quad	0x3fd46a11ec918e32              # double 0.31897399999999998
	.quad	0x3fd01a75cd0bb6ed              # double 0.25161499999999998
	.quad	0x3fc3b58d1526d8b2              # double 0.153978
	.quad	0x3fc6518f3eccc469              # double 0.17436399999999999
	.quad	0x3fc3b4677b395c42              # double 0.153943
	.quad	0x3feb97d8cf398e97              # double 0.862286
	.quad	0x3f7d69d30270f388              # double 0.0071809999999999999
	.quad	0x3fc43ca7503b81b6              # double 0.15810099999999999
	.quad	0x3fe1535eb7457c0b              # double 0.54142699999999999
	.quad	0x3fe87b3b7521144d              # double 0.76504300000000003
	.quad	0x3fed6d783dff3f10              # double 0.91961300000000001
	.quad	0x3fcec197e5647347              # double 0.240283
	.quad	0x3fd808aefb2aae29              # double 0.37552999999999997
	.quad	0x3f3a79fec99f1ae3              # double 4.0400000000000001E-4
	.quad	0x3fe14093d9663843              # double 0.53913299999999997
	.quad	0x3febaf6e82949a56              # double 0.86516499999999996
	.quad	0x3fd0c3ac929aa1d7              # double 0.26194299999999998
	.quad	0x3fc7eadd590c0ad0              # double 0.18685499999999999
	.quad	0x3fe61e01de269164              # double 0.69116299999999997
	.quad	0x3fb2eab7995ee137              # double 0.073894000000000001
	.quad	0x3fe6c2e770bd017e              # double 0.71129200000000004
	.quad	0x3fe9a0a958537e2c              # double 0.80086199999999996
	.quad	0x3fee7d0d0678c005              # double 0.95276499999999997
	.quad	0x3fd111947cfa26a2              # double 0.26669799999999999
	.quad	0x3fc7cb790fb65669              # double 0.18589700000000001
	.quad	0x3fe1dc11e42e1262              # double 0.558114
	.quad	0x3fb0477ff151e753              # double 0.063590999999999995
	.quad	0x3fb423d9231c64bb              # double 0.078672000000000006
	.quad	0x3fd79ea140570825              # double 0.36905700000000002
	.quad	0x3fda5147f1305964              # double 0.41121099999999999
	.quad	0x3fee1a459103c8e2              # double 0.94070699999999996
	.quad	0x3fc7d933e35c5b4b              # double 0.18631600000000001
	.quad	0x3fd2966be7afa722              # double 0.29043099999999999
	.quad	0x3fe45495182a9931              # double 0.63532500000000003
	.quad	0x3fd65c0767d34df0              # double 0.34936699999999998
	.quad	0x3fe26cb31c219eb6              # double 0.57576899999999998
	.quad	0x3fe47dcbddb9841b              # double 0.64035600000000004
	.quad	0x3fb9fcb0c026cc1d              # double 0.10151200000000001
	.quad	0x3fed09edbf8b9baa              # double 0.90746199999999999
	.quad	0x3fb9a9fbe76c8b44              # double 0.10025000000000001
	.quad	0x3fa2f89c5e6ff7e0              # double 0.037053000000000003
	.quad	0x3fc77c5692b3cc4b              # double 0.18348200000000001
	.quad	0x3fda6598e10cf5b2              # double 0.41245100000000001
	.quad	0x3fee47778dd616f8              # double 0.94622399999999995
	.quad	0x3fe536694898f606              # double 0.66289200000000004
	.quad	0x3fed4115df6555c5              # double 0.91419499999999998
	.quad	0x3fe958adab9f559b              # double 0.79207499999999997
	.quad	0x3fb428d434a01abd              # double 0.078747999999999999
	.quad	0x3fea1975f2cb6417              # double 0.815608
	.quad	0x3fd05ddd2ae8e1d6              # double 0.25572899999999998
	.quad	0x3fd446c764adff82              # double 0.31681999999999999
	.quad	0x3fc9de7210be9425              # double 0.202101
	.quad	0x3fe112ba16e7a312              # double 0.53353600000000001
	.quad	0x3fe468900c521dda              # double 0.637764
	.quad	0x3fc23914f483cafb              # double 0.14236699999999999
	.quad	0x3fb3b14a90470a81              # double 0.076924000000000006
	.quad	0x3fe95b65ecc3e319              # double 0.79240699999999997
	.quad	0x3fd5320d9945b6c3              # double 0.33117999999999997
	.quad	0x3fe0e8d32830a0b2              # double 0.52842100000000003
	.quad	0x3fe8f301eabbcb1d              # double 0.77966400000000002
	.quad	0x3fd5a38327674d16              # double 0.33810499999999999
	.quad	0x3fb1953586ca89fc              # double 0.068682999999999994
	.quad	0x3fba1deacc92146a              # double 0.102019
	.quad	0x3fc664dc22ab25b3              # double 0.174953
	.quad	0x3fd57268d32830a1              # double 0.33510800000000002
	.quad	0x3fd67c45cbbc2b95              # double 0.35133500000000001
	.quad	0x3fea4b9884c6a3be              # double 0.82172800000000001
	.quad	0x3fe292d98bf7f067              # double 0.580426
	.quad	0x3fe6ba365cb35f3d              # double 0.71023099999999995
	.quad	0x3fb004c8bc9cd3e1              # double 0.062573000000000004
	.quad	0x3fdc7329c347e8cd              # double 0.44452900000000001
	.quad	0x3fe0b0728e92d55a              # double 0.52153899999999997
	.quad	0x3feff47735c182ed              # double 0.99859200000000003
	.quad	0x3fe8068123810e88              # double 0.75079399999999996
	.quad	0x3fe2ce831ad2135e              # double 0.58770900000000004
	.quad	0x3fe1569b17481b22              # double 0.54182200000000003
	.quad	0x3fea691c8eabffce              # double 0.82533100000000004
	.quad	0x3fe82f1cb89d6adf              # double 0.75575099999999995
	.quad	0x3fd4087442c7fbad              # double 0.31301600000000002
	.quad	0x3fea9a36e2eb1c43              # double 0.83132499999999998
	.quad	0x3fcca9a3d2d87f88              # double 0.22392699999999999
	.quad	0x3fe0126e978d4fdf              # double 0.50224999999999997
	.quad	0x3fac1e14bdfd2631              # double 0.054917000000000001
	.quad	0x3fef75ff609dcf89              # double 0.98315399999999997
	.quad	0x3fdd47fdc5931ca8              # double 0.45751900000000001
	.quad	0x3febc5974e65bea1              # double 0.86787000000000003
	.quad	0x3fe0e1ae70c1333c              # double 0.52754900000000005
	.quad	0x3fe266ff7dfa00e2              # double 0.57507299999999995
	.quad	0x3fe7fbbf93ff25e5              # double 0.74948099999999995
	.quad	0x3fcc675147f13059              # double 0.22190299999999999
	.quad	0x3fe07e889c1b5419              # double 0.51544599999999996
	.quad	0x3fd2fc86cebbba56              # double 0.29666300000000001
	.quad	0x3fa14ca925fe974a              # double 0.033787999999999999
	.quad	0x3fe6b94face67d78              # double 0.710121
	.quad	0x3fb555a3a08398a6              # double 0.083337999999999995
	.quad	0x3fdea6ca03c4b09f              # double 0.47893000000000002
	.quad	0x3fe0a9c779a6b50b              # double 0.52072499999999999
	.quad	0x3fc94da4ce8101f3              # double 0.197682
	.quad	0x3fef5249e44fa051              # double 0.97879499999999997
	.quad	0x3fa226a22b3892ef              # double 0.035451000000000003
	.quad	0x3fda3ad5bee3d5fe              # double 0.40984100000000001
	.quad	0x3fcd1183b60285ec              # double 0.22709699999999999
	.quad	0x3fe877d30ad46f58              # double 0.76462699999999995
	.quad	0x3fe1cc51116a8b8f              # double 0.55619099999999999
	.quad	0x3fc3d95dd4c76d11              # double 0.15507099999999999
	.quad	0x3fdf37de939eadd6              # double 0.48778500000000002
	.quad	0x3fed8fe8ab4fa483              # double 0.923817
	.quad	0x3fee0a65492ff4ba              # double 0.93876899999999996
	.quad	0x3fd25f91600f3450              # double 0.28708299999999998
	.quad	0x3fdb2f7b17ce52df              # double 0.42477300000000001
	.quad	0x3fab2aae297396d1              # double 0.053060000000000003
	.quad	0x3fe9ebe9c886162f              # double 0.81004799999999999
	.quad	0x3fd5dd97f62b6ae8              # double 0.34165000000000001
	.quad	0x3fe202ba5a038195              # double 0.56283300000000003
	.quad	0x3fe19a5657fb6998              # double 0.55008999999999997
	.quad	0x3feafd912556d19e              # double 0.84345300000000001
	.quad	0x3fe6de0b4e11dbcb              # double 0.71460500000000005
	.quad	0x3fc34091c087442c              # double 0.15040799999999999
	.quad	0x3fc16d22424a276b              # double 0.13614299999999999
	.quad	0x3fe04ef0281ba7fc              # double 0.50963599999999998
	.quad	0x3fed977ea1c68ec5              # double 0.92474299999999998
	.quad	0x3fed7b2031ceaf25              # double 0.92127999999999999
	.quad	0x3fcdc2f405f6ba06              # double 0.232512
	.quad	0x3fe0202107b78466              # double 0.50392199999999998
	.quad	0x3fc94152b0a6fc59              # double 0.19730600000000001
	.quad	0x3f9d5cb790fb6567              # double 0.028674000000000002
	.quad	0x3fdd18c9fb6134ce              # double 0.45463799999999999
	.quad	0x3feb204295a6c5d2              # double 0.847688
	.quad	0x3fb6d97b30f8c650              # double 0.089256000000000002
	.quad	0x3f8c5ac471b47842              # double 0.013845
	.quad	0x3fe54f3343fa2ad4              # double 0.66591800000000001
	.quad	0x3fd36149c6f36ef8              # double 0.302813
	.quad	0x3fd6fa5093964a5a              # double 0.35902800000000001
	.quad	0x3fe8116228134480              # double 0.75212199999999996
	.quad	0x3fe116440f238972              # double 0.533968
	.quad	0x3fe19e060fe47992              # double 0.55054000000000003
	.quad	0x3fcc8472c0e7bc3c              # double 0.22279199999999999
	.quad	0x3fe8bd4cfd08d4bb              # double 0.77310800000000002
	.quad	0x3fde398201cd5f9a              # double 0.47226000000000001
	.quad	0x3feb028e4fb97bb7              # double 0.84406199999999998
	.quad	0x3fd40060780fdc16              # double 0.312523
	.quad	0x3fb5bc558644523f              # double 0.084904999999999994
	.quad	0x3fdfb7e4de3b8a1a              # double 0.49559900000000001
	.quad	0x3fc7a1ec4e7253da              # double 0.18462899999999999
	.quad	0x3fe9968b5cbff477              # double 0.79962699999999998
	.quad	0x3fdd91ab8e8ea39c              # double 0.46201599999999998
	.quad	0x3fbb329c347e8cce              # double 0.106241
	.quad	0x3fc69246bf01322f              # double 0.176339
	.quad	0x3f8839cd8127b2cc              # double 0.011828999999999999
	.quad	0x3fc640746455eaee              # double 0.173842
	.quad	0x3fb991ff7164c72a              # double 0.099884
	.quad	0x3fab01eabbcb1cc9              # double 0.052748999999999997
	.quad	0x3fd5a3ca7503b81b              # double 0.33812199999999998
	.quad	0x3fba4ca4f440af1d              # double 0.102732
	.quad	0x3fec872b020c49ba              # double 0.89149999999999996
	.quad	0x3fe76f0ae536501e              # double 0.73230499999999998
	.quad	0x3fe8347e8ccdd93c              # double 0.75640799999999996
	.quad	0x3fd84f6dfc5cdd51              # double 0.37984800000000002
	.quad	0x3fba8522ea0fd3b3              # double 0.10359400000000001
	.quad	0x3fe5a76d97b30f8c              # double 0.67668799999999996
	.quad	0x3fa9e81cb46bacf7              # double 0.050598999999999998
	.quad	0x3fd58c6d612c6ac2              # double 0.336696
	.quad	0x3feabb46fdeb52ca              # double 0.83536100000000002
	.quad	0x3fdff240fa9c12f1              # double 0.49916100000000002
	.quad	0x3fd2a400fba8826b              # double 0.29126000000000002
	.quad	0x3fa8366516db0dd8              # double 0.047289999999999999
	.quad	0x3fda02107b784663              # double 0.40637600000000001
	.quad	0x3fe2ba3875925354              # double 0.58523199999999997
	.quad	0x3feef8769ec2ce46              # double 0.96782999999999997
	.quad	0x3fc08387df5cf249              # double 0.12901399999999999
	.quad	0x3f72c9d16fc9bc77              # double 0.0045869999999999999
	.quad	0x3fed2f922962cfd9              # double 0.91205700000000001
	.quad	0x3fded19dece57109              # double 0.48154400000000003
	.quad	0x3fe0704577d95571              # double 0.51370499999999997
	.quad	0x3fd238b47c73eee5              # double 0.28471099999999999
	.quad	0x3fd158cd20afa2f0              # double 0.27104499999999998
	.quad	0x3fe70e7ddca4b125              # double 0.72051900000000002
	.quad	0x3fbabfa8f7db6e50              # double 0.104487
	.quad	0x3fe9f761cbccf28c              # double 0.81144799999999994
	.quad	0x3f9c9c4da9003eea              # double 0.02794
	.quad	0x3fea630ec3116228              # double 0.82459199999999999
	.quad	0x3fc41333b96af039              # double 0.156836
	.quad	0x3fe8975d13d74d59              # double 0.76847699999999997
	.quad	0x3fbe225fa658c4bd              # double 0.117712
	.quad	0x3febcd24e160d888              # double 0.86879200000000001
	.quad	0x3fd98323358f2e06              # double 0.39862900000000001
	.quad	0x3f98e10cf5b1c865              # double 0.024296000000000002
	.quad	0x3fdc2ba9d1f60179              # double 0.44016499999999997
	.quad	0x3f78665e02ea960b              # double 0.0059569999999999996
	.quad	0x3fd26e6d9be4cd75              # double 0.28799000000000002
	.quad	0x3fe97cc39ffd60e9              # double 0.79647999999999997
	.quad	0x3feb028c36da87a0              # double 0.84406099999999995
	.quad	0x3febdd1a21ea3593              # double 0.87073999999999996
	.quad	0x3fc71958969a0ad9              # double 0.18046100000000001
	.quad	0x3fe755b89939218a              # double 0.72921400000000003
	.quad	0x3fe560f7fcfc3f81              # double 0.66808699999999999
	.quad	0x3fef52bb23571d1d              # double 0.97884899999999996
	.quad	0x3feaf57d5a9eb207              # double 0.84246699999999997
	.quad	0x3fde794a6eb91b3f              # double 0.47615299999999999
	.quad	0x3fe21272c94b380d              # double 0.56475200000000003
	.quad	0x3fe7bb320535c9e6              # double 0.74160099999999995
	.quad	0x3fc696bb98c7e282              # double 0.17647499999999999
	.quad	0x3fd821682f944242              # double 0.37703900000000001
	.quad	0x3fe3cfdb09a671ef              # double 0.61912299999999998
	.quad	0x3fdc6c58eeae9ee4              # double 0.44411299999999998
	.quad	0x3fe96d43d03968d7              # double 0.79458799999999996
	.quad	0x3fe90a137f38c543              # double 0.78247999999999995
	.quad	0x3fe0c3fc43b2dd37              # double 0.52392399999999995
	.quad	0x3fcc0d0247021d11              # double 0.21914700000000001
	.quad	0x3fd665a14488c60d              # double 0.34995300000000001
	.quad	0x3fd9a543f1c75819              # double 0.40071200000000001
	.quad	0x3fd6c3760bf5d788              # double 0.35568
	.quad	0x3fceb53d640e9d52              # double 0.23990600000000001
	.quad	0x3fe0d47e06961c37              # double 0.52593900000000005
	.quad	0x3fde0a915379fa98              # double 0.46939500000000001
	.quad	0x3fee4a03c4b09e99              # double 0.94653500000000002
	.quad	0x3fd7034f3fd933e3              # double 0.35957699999999998
	.quad	0x3fd96d5cfaacd9e8              # double 0.39729999999999999
	.quad	0x3fe7b5efa615a8df              # double 0.74095900000000003
	.quad	0x3fe112ff4ba51a00              # double 0.53356899999999996
	.quad	0x3fd0783dff3f0fe0              # double 0.25733899999999998
	.quad	0x3febfc1376d54973              # double 0.87452099999999999
	.quad	0x3fe6b5807fed2029              # double 0.70965599999999995
	.quad	0x3fedbde3fbbd7b20              # double 0.92942999999999997
	.quad	0x3fe585af6c69b5a6              # double 0.67256899999999997
	.quad	0x3fe84d9a52263d81              # double 0.75947299999999995
	.quad	0x3feabd46b26bf877              # double 0.83560500000000004
	.quad	0x3f2bc98a222d5172              # double 2.12E-4
	.quad	0x3fd0f57f737da61e              # double 0.264984
	.quad	0x3fe3faaac1094a2c              # double 0.62434900000000004
	.quad	0x3fd0599aa60913a5              # double 0.255469
	.quad	0x3fb2abbcb1cc9646              # double 0.072932999999999998
	.quad	0x3fe739ae0c176577              # double 0.72579099999999996
	.quad	0x3fedf74cd31769a9              # double 0.93643799999999999
	.quad	0x3f93879c4113c686              # double 0.019071999999999999
	.quad	0x3fdcc219eb6390c9              # double 0.449347
	.quad	0x3fe78487b99d4520              # double 0.73492800000000002
	.quad	0x3fe92bd5dc400757              # double 0.78660099999999999
	.quad	0x3fedef08cc575c07              # double 0.93542899999999995
	.quad	0x3fe2388ca3e7d135              # double 0.56940299999999999
	.quad	0x3fe0c4ef88b97785              # double 0.52403999999999995
	.quad	0x3fbbb384fd2a62aa              # double 0.108208
	.quad	0x3febf5a74c09c3ce              # double 0.87373699999999999
	.quad	0x3feead9f0a1be2b5              # double 0.95869400000000004
	.quad	0x3feefae9ab29e4d6              # double 0.96812900000000002
	.quad	0x3fe38e3cd9a52264              # double 0.61111300000000002
	.quad	0x3fee06a8fc0d2c38              # double 0.93831299999999995
	.quad	0x3fe89bfdf7e8038a              # double 0.769042
	.quad	0x3fb6876e1deacc92              # double 0.088003999999999998
	.quad	0x3fd33dee78183f92              # double 0.30065500000000001
	.quad	0x3fd53033a4723ab0              # double 0.331067
	.quad	0x3fe27e154434e337              # double 0.57789100000000004
	.quad	0x3fe16d916872b021              # double 0.54462500000000003
	.quad	0x3fdaf722e1ac57e2              # double 0.42133399999999999
	.quad	0x3f8b0dd82fd75e20              # double 0.01321
	.quad	0x3fe9af76e6106ab1              # double 0.80266899999999997
	.quad	0x3fdb77c02afdda8c              # double 0.42918400000000001
	.quad	0x3fb61847f562174c              # double 0.086307999999999996
	.quad	0x3fea9e215336deb9              # double 0.83180299999999996
	.quad	0x3feba7d88c1db014              # double 0.86423899999999997
	.quad	0x3fb0486ad2dcb146              # double 0.063604999999999995
	.quad	0x3fd9ab1d4f9c1f86              # double 0.40106900000000001
	.quad	0x3fd3a1ec4e7253da              # double 0.30675799999999998
	.quad	0x3fe7aedbb59ddc1e              # double 0.74009499999999995
	.quad	0x3fe85df2239e6aba              # double 0.76146800000000003
	.quad	0x3fb8447c30d306a3              # double 0.094795000000000004
	.quad	0x3fc6ac8605681ecd              # double 0.17713999999999999
	.quad	0x3fea7f1950331e3a              # double 0.82801499999999995
	.quad	0x3feba3486f049a99              # double 0.86368199999999995
	.quad	0x3fef49731098d478              # double 0.97771600000000002
	.quad	0x3fe1ef77f27fe4bd              # double 0.56048200000000004
	.quad	0x3fe5daa2e3c536d6              # double 0.68293899999999996
	.quad	0x3fd0b9c7368ad688              # double 0.26133899999999999
	.quad	0x3fe98f062d40aaeb              # double 0.798709
	.quad	0x3fe470a3d70a3d71              # double 0.63875000000000004
	.quad	0x3fc1156191148fda              # double 0.133465
	.quad	0x3fe42fd976ff3ade              # double 0.63084099999999999
	.quad	0x3fed40420f6f08cc              # double 0.91409399999999996
	.quad	0x3fe57e6f71a7e308              # double 0.67168399999999995
	.quad	0x3feec7c5260f5e42              # double 0.96188600000000002
	.quad	0x3fbdc6195464dc23              # double 0.116304
	.quad	0x3fd3126e978d4fdf              # double 0.29799999999999999
	.quad	0x3fecd043e5321e60              # double 0.90042299999999997
	.quad	0x3fd2d8a979e16d6e              # double 0.29447400000000001
	.quad	0x3fe6449dbec2480f              # double 0.69587600000000005
	.quad	0x3fe75f6db940fece              # double 0.73039900000000002
	.quad	0x3fe154e4c942d491              # double 0.54161300000000001
	.quad	0x3fd9bea0ba1f4b1f              # double 0.40226000000000001
	.quad	0x3fe337cfe5860136              # double 0.60056299999999996
	.quad	0x3fcac4a4095f2453              # double 0.20912600000000001
	.quad	0x3fde4d5d80e496ee              # double 0.473472
	.quad	0x3fc1bb73083558a7              # double 0.13853299999999999
	.quad	0x3fde82c2bd7f51f0              # double 0.47673100000000002
	.quad	0x3feb3fe7e1fc08fa              # double 0.85155099999999995
	.quad	0x3fd3604189374bc7              # double 0.30275000000000002
	.quad	0x3fe3a161e4f765fe              # double 0.61345000000000005
	.quad	0x3fd4c7b45f17bd8c              # double 0.32468900000000001
	.quad	0x3fd38800eae18aca              # double 0.305176
	.quad	0x3fe41af5ba2be059              # double 0.62829100000000004
	.quad	0x3fea028c36da87a0              # double 0.81281099999999995
	.quad	0x3feae709fa54c554              # double 0.84070299999999997
	.quad	0x3fdc53e707e175d1              # double 0.44262099999999999
	.quad	0x3fee832fcac8e68e              # double 0.95351399999999997
	.quad	0x3fe38bcbe61cffeb              # double 0.610815
	.quad	0x3fdf329802c0a4a0              # double 0.48746299999999998
	.quad	0x3fe5c5cbbc2b94d9              # double 0.68039499999999997
	.quad	0x3fefeb399f5dfeb9              # double 0.99746400000000001
	.quad	0x3fea1439de481f54              # double 0.81496900000000005
	.quad	0x3fe7375a74c09c3d              # double 0.72550700000000001
	.quad	0x3fd34e7ab7564303              # double 0.30166500000000002
	.quad	0x3fef0a159817b95a              # double 0.96998099999999998
	.quad	0x3fd7e4fb97bb7308              # double 0.37335099999999999
	.quad	0x3fd219652bd3c361              # double 0.2828
	.quad	0x3fda0cb295e9e1b1              # double 0.40702500000000003
	.quad	0x3fe11e4d5d80e497              # double 0.53494900000000001
	.quad	0x3fed4a03c4b09e99              # double 0.91528500000000002
	.quad	0x3fd7a9b068123811              # double 0.36973200000000001
	.quad	0x3feb09b951c5c572              # double 0.84493700000000005
	.quad	0x3fd0b94d94078961              # double 0.26130999999999999
	.quad	0x3fd20e0221426fe7              # double 0.28210499999999999
	.quad	0x3fdb44a6223e186a              # double 0.42606500000000003
	.quad	0x3fa079e59f2ba9d2              # double 0.03218
	.quad	0x3fe20b32ce89656f              # double 0.56386700000000001
	.quad	0x3fdf78dd616f86a1              # double 0.49175200000000002
	.quad	0x3fe66f9335d249e4              # double 0.70111999999999997
	.quad	0x3fdd3db3bfb58d15              # double 0.45689099999999999
	.quad	0x3fe1ab4fa48301a8              # double 0.55216200000000004
	.quad	0x3fc8a697aeddce7d              # double 0.19258400000000001
	.quad	0x3fecde093532e7b4              # double 0.90210400000000001
	.quad	0x3fed3291b823c85c              # double 0.91242299999999998
	.quad	0x3fe361dc93ea2d30              # double 0.60569600000000001
	.quad	0x3fe1a90257c914b1              # double 0.55188099999999995
	.quad	0x3fe6fba6698bb4d5              # double 0.71821900000000005
	.quad	0x3fb5b068123810e9              # double 0.084723000000000007
	.quad	0x3fee8012dfd694cd              # double 0.95313400000000004
	.quad	0x3fd5c4eb56fb8f58              # double 0.340144
	.quad	0x3fd6581cf7878b7a              # double 0.34912799999999999
	.quad	0x3fea98d8a979e16d              # double 0.83115799999999995
	.quad	0x3fcf6ba0620ab713              # double 0.245472
	.quad	0x3fed57d9dba908a2              # double 0.91697399999999996
	.quad	0x3fdd0913a4f8726d              # double 0.453679
	.quad	0x3fe7be76c8b43958              # double 0.74199999999999999
	.quad	0x3fc7d5d3dc8b86b1              # double 0.18621299999999999
	.quad	0x3fed6bca5375c8da              # double 0.919408
	.quad	0x3fe219567dbb16c2              # double 0.56559300000000001
	.quad	0x3fac8e4755ffe6d6              # double 0.055773000000000003
	.quad	0x3fcf838c111ada77              # double 0.246202
	.quad	0x3f92b62845996745              # double 0.018273000000000001
	.quad	0x3fd2428d434a01ac              # double 0.28531200000000001
	.quad	0x3fe67d9ba1b19610              # double 0.70283300000000004
	.quad	0x3fe6e8ad68837718              # double 0.71590299999999996
	.quad	0x3fb012dfd694ccab              # double 0.062787999999999997
	.quad	0x3fe861650a45d420              # double 0.76188900000000003
	.quad	0x3fedf62d83c6c97e              # double 0.93630100000000005
	.quad	0x3fe59cc100e6afcd              # double 0.67538500000000001
	.quad	0x3fe182235b4edb2f              # double 0.54713599999999996
	.quad	0x3fdbd6adf71eafee              # double 0.43497799999999998
	.quad	0x3fd38bc169c23b79              # double 0.30540499999999998
	.quad	0x3fc9f255f3519bd4              # double 0.202708
	.quad	0x3fd51ee2435696e6              # double 0.33001000000000003
	.quad	0x3fd5023e9ea14057              # double 0.328262
	.quad	0x3fb5af7d30ad46f6              # double 0.084709000000000006
	.quad	0x3fe8c9795b35b0bc              # double 0.774594
	.quad	0x3faa65492ff4ba52              # double 0.051554000000000003
	.quad	0x3fe4c5f7c6759ab7              # double 0.64916600000000002
	.quad	0x3fdad983947496ab              # double 0.41952600000000001
	.quad	0x3fe8e4abe6a337a8              # double 0.77791399999999999
	.quad	0x3fe9ac18f81e8a2f              # double 0.80225800000000003
	.quad	0x3fde1b691212513b              # double 0.47042299999999998
	.quad	0x3feb4ad362e90364              # double 0.85288399999999997
	.quad	0x3fe5427e9531550d              # double 0.66436700000000004
	.quad	0x3fc22e1ac57e23f2              # double 0.14203199999999999
	.quad	0x3fd62b3cc4ac6cdb              # double 0.346389
	.quad	0x3fd89c8c9320d994              # double 0.38455499999999998
	.quad	0x3fe708c3f3e0370d              # double 0.71982000000000002
	.quad	0x3fee8f68be2f7b18              # double 0.95500600000000002
	.quad	0x3feb113c68661ae7              # double 0.84585399999999999
	.quad	0x3febc6bce8533b10              # double 0.86800999999999995
	.quad	0x3fcfadfb506dd69d              # double 0.24749699999999999
	.quad	0x3fefe5321e603d57              # double 0.99672799999999994
	.quad	0x3fa8dbcec84f8f8a              # double 0.048551999999999998
	.quad	0x3fdb29845dc83233              # double 0.42440899999999998
	.quad	0x3fe79a1554fbdad7              # double 0.73755899999999996
	.quad	0x3fcfbbbe878fabda              # double 0.247917
	.quad	0x3fd78b47c73eee52              # double 0.36787599999999998
	.quad	0x3fe2685985ad538b              # double 0.57523800000000003
	.quad	0x3fd93d145d851655              # double 0.39435300000000001
	.quad	0x3fbc3126e978d4fe              # double 0.110125
	.quad	0x3fb17763e4abe6a3              # double 0.068227999999999997
	.quad	0x3fe57398e9707182              # double 0.67036099999999998
	.quad	0x3fb6cba732df505d              # double 0.089044999999999999
	.quad	0x3feb83d577963993              # double 0.85984300000000002
	.quad	0x3fd3b923a29c779a              # double 0.30817499999999998
	.quad	0x3fec30446b69db66              # double 0.88089200000000001
	.quad	0x3fe7e9680e065300              # double 0.74724199999999996
	.quad	0x3fe0d0635a426bb5              # double 0.52543799999999996
	.quad	0x3fd3a5e785b5b707              # double 0.30700100000000002
	.quad	0x3fc37c2ca148ba84              # double 0.152227
	.quad	0x3fe91c0ebedfa440              # double 0.78467500000000001
	.quad	0x3fe4d269595feda6              # double 0.65068499999999996
	.quad	0x3f942f1ed17c5ef6              # double 0.019710999999999999
	.quad	0x3fdb7d1782d38477              # double 0.42951
	.quad	0x3fe8a5b317efe0ce              # double 0.77022699999999999
	.quad	0x3fecd9ff4fd6d7e9              # double 0.90161100000000005
	.quad	0x3fe6278290689870              # double 0.69232300000000002
	.quad	0x3fe4f204295a6c5d              # double 0.65454299999999999
	.quad	0x3fcfdd334c5da6a4              # double 0.24893799999999999
	.quad	0x3fd546aa087ca644              # double 0.33243800000000001
	.quad	0x3fea599aa60913a5              # double 0.823438
	.quad	0x3fd2b1a2a4db163c              # double 0.29209200000000002
	.quad	0x3fc51bf7ad4b2746              # double 0.16491600000000001
	.quad	0x3fe717ce52deca25              # double 0.72165599999999996
	.quad	0x3fc873d5bab21816              # double 0.19103500000000001
	.quad	0x3fdfc9a77e5eaab0              # double 0.49668299999999999
	.quad	0x3fe87995ee136e72              # double 0.76484200000000002
	.quad	0x3fedbcd141a6937d              # double 0.92929899999999999
	.quad	0x3fc4330d7386099a              # double 0.157808
	.quad	0x3feb52ed783dff3f              # double 0.85387299999999999
	.quad	0x3fd7c4cdfaca361a              # double 0.37138700000000002
	.quad	0x3fd54cdb7ae5796c              # double 0.332816
	.quad	0x3fe9b4245f5ad96a              # double 0.80323999999999995
	.quad	0x3fce3cb81733226c              # double 0.23622799999999999
	.quad	0x3fb5d92b7fe08af0              # double 0.085345000000000004
	.quad	0x3fe6e67b5f1bef4a              # double 0.71563500000000002
	.quad	0x3fe5c82e019b0ab3              # double 0.68068600000000001
	.quad	0x3fe01eeed8904f6e              # double 0.503776
	.quad	0x3fae34dad31fcd25              # double 0.058997000000000001
	.quad	0x3fb0ea5b530ced4e              # double 0.066075999999999996
	.quad	0x3fe93e8ff327aa69              # double 0.788887
	.quad	0x3fec718655193709              # double 0.88885800000000004
	.quad	0x3fda7342edbb59de              # double 0.41328500000000001
	.quad	0x3fe3e957470eb24a              # double 0.62223399999999995
	.quad	0x3fefd45e9185cee1              # double 0.99467399999999994
	.quad	0x3fa4fbdad7518b0d              # double 0.040984
	.quad	0x3fe0e7903211cb04              # double 0.52826700000000004
	.quad	0x3fe9ebacf7446f9c              # double 0.81001900000000004
	.quad	0x3fcd6cce5f7403de              # double 0.229883
	.quad	0x3fe14432ca57a787              # double 0.53957500000000003
	.quad	0x3fe0256366d7a56e              # double 0.50456400000000001
	.quad	0x3fd0fdda8bd230ba              # double 0.26549400000000001
	.quad	0x3fee896787ce95fb              # double 0.95427300000000004
	.quad	0x3fe12d2dcb1465e9              # double 0.53676500000000005
	.quad	0x3fc377531db445ed              # double 0.15207899999999999
	.quad	0x3fd7913e81450efe              # double 0.36824000000000001
	.quad	0x3fd0af5fd47bedb7              # double 0.26070399999999999
	.quad	0x3fe6dea897635e74              # double 0.71467999999999998
	.quad	0x3fe77901083dbc23              # double 0.73352099999999998
	.quad	0x3fea828e4fb97bb7              # double 0.82843699999999998
	.quad	0x3fe87e996312f4cf              # double 0.76545399999999997
	.quad	0x3fea097c80841ede              # double 0.81365799999999999
	.quad	0x3fe6ab9b23dd54da              # double 0.70844799999999997
	.quad	0x3fd6329802c0a4a0              # double 0.34683799999999998
	.quad	0x3fe07b634dad31fd              # double 0.51506200000000002
	.quad	0x3f9d2aa5c5f7c676              # double 0.028483000000000001
	.quad	0x3fe1c1f212d77319              # double 0.554925
	.quad	0x3fc23f4666ec9e23              # double 0.14255599999999999
	.quad	0x3fe5b22af5771002              # double 0.67799900000000002
	.quad	0x3fd36b228dc981bf              # double 0.30341400000000002
	.quad	0x3fea6cfe9b7bf1e9              # double 0.82580500000000001
	.quad	0x3fdd4c61d8622c45              # double 0.457787
	.quad	0x3fd6b0079a2834d2              # double 0.35449399999999998
	.quad	0x3fe8cd4cb9ecf638              # double 0.775061
	.quad	0x3fe60c176577531e              # double 0.68897600000000003
	.quad	0x3fe358f4f93bc0a0              # double 0.60460899999999995
	.quad	0x3fea8e79aae6c8f7              # double 0.82989199999999996
	.quad	0x3fe3b5935fc3b4f6              # double 0.61591499999999999
	.quad	0x3fc82d83c6c97d8d              # double 0.188889
	.quad	0x3fb424d4cb9ecf64              # double 0.078687000000000007
	.quad	0x3fe181b21c475e63              # double 0.54708199999999996
	.quad	0x3fd19988d2a1f8e4              # double 0.27499600000000002
	.quad	0x3fedace032db1e9f              # double 0.92735299999999998
	.quad	0x3fd264b662fdfc1a              # double 0.28739700000000001
	.quad	0x3fedda682b62845a              # double 0.93291100000000005
	.quad	0x3fe22fdda8bd230c              # double 0.56834300000000004
	.quad	0x3fc02f48c2e770bd              # double 0.126443
	.quad	0x3f9724fa8b4bf8fd              # double 0.022602000000000001
	.quad	0x3fecabbecaab8a5d              # double 0.89596500000000001
	.quad	0x3fc25a0be5109071              # double 0.143373
	.quad	0x3fe26132b55ef1fe              # double 0.57436500000000001
	.quad	0x3fd891e646f15619              # double 0.383905
	.quad	0x3fe35d5b24e9c454              # double 0.60514599999999996
	.quad	0x3fdb29888f861a61              # double 0.42441000000000001
	.quad	0x3febdd5b24e9c454              # double 0.87077099999999996
	.quad	0x3fd928f9f44d4456              # double 0.39312599999999998
	.quad	0x3fee5ff3f0fe047d              # double 0.94921299999999997
	.quad	0x3fc7e0589acbc8c1              # double 0.18653400000000001
	.quad	0x3fecda3a08398a65              # double 0.90163899999999997
	.quad	0x3fef3c64345cfedf              # double 0.97612200000000004
	.quad	0x3fe8a0ad8a11665a              # double 0.76961400000000002
	.quad	0x3fe13f4eca686e7e              # double 0.53897799999999996
	.quad	0x3fd43c2dadb8348f              # double 0.31617299999999998
	.quad	0x3fdf5eedcc20d563              # double 0.49016900000000002
	.quad	0x3fc53bea91d9b1b8              # double 0.16589100000000001
	.quad	0x3fd8d362e9036439              # double 0.38790200000000002
	.quad	0x3fed5831f03d145e              # double 0.91701600000000005
	.quad	0x3fe3bfd50225742e              # double 0.61716700000000002
	.quad	0x3fcc4d4cb9ecf638              # double 0.221109
	.quad	0x3fc4e4ead0c3d252              # double 0.16323599999999999
	.quad	0x3fe8671cda2b5a21              # double 0.76258700000000001
	.quad	0x3fdf027525460aa6              # double 0.48452499999999998
	.quad	0x3fc3ce075f6fd220              # double 0.154725
	.quad	0x3fc723b3636f3b21              # double 0.18077699999999999
	.quad	0x3faf6b3bb83cf2d0              # double 0.061365000000000003
	.quad	0x3feb910a137f38c5              # double 0.86145499999999997
	.quad	0x3fd3e79aae6c8f75              # double 0.31101099999999998
	.quad	0x3fa7681669ced0b3              # double 0.045716
	.quad	0x3fbec52a411c2a02              # double 0.120196
	.quad	0x3fd248882f0e0a85              # double 0.28567700000000001
	.quad	0x3fca1c3efae7924b              # double 0.203987
	.quad	0x3fec4edf61240746              # double 0.88462799999999997
	.quad	0x3fe1d8dbcec84f90              # double 0.55772200000000005
	.quad	0x3fd382d38476f2a6              # double 0.30486000000000002
	.quad	0x3feeae1ef73c0c20              # double 0.95875500000000002
	.quad	0x3fd0327243137b07              # double 0.253079
	.quad	0x3fe4a615a8deb0fb              # double 0.64527400000000001
	.quad	0x3fcd285a921ccd96              # double 0.227794
	.quad	0x3fe19743e963dc48              # double 0.54971499999999995
	.quad	0x3fedc347e8ccdd94              # double 0.93008800000000002
	.quad	0x3f960807357e670e              # double 0.021514999999999999
	.quad	0x3fa512a94ff0025c              # double 0.041158
	.quad	0x3fec80713f077ccc              # double 0.89067899999999999
	.quad	0x3fee84e1e71044f2              # double 0.95372100000000004
	.quad	0x3fe6f57928e0c9da              # double 0.71746500000000002
	.quad	0x3fe841b10fd7e458              # double 0.758019
	.quad	0x3fd37bedb7281fda              # double 0.30443900000000002
	.quad	0x3feed271bcdbbe01              # double 0.96318899999999996
	.quad	0x3fe6e195464dc22b              # double 0.71503700000000003
	.quad	0x3fe6045baf533f42              # double 0.68803199999999998
	.quad	0x3fd3f6a0dbad3a60              # double 0.31192799999999998
	.quad	0x3fd5bb6ed677707a              # double 0.33956500000000001
	.quad	0x3fda5ff609dcf894              # double 0.412107
	.quad	0x3fed127913e81451              # double 0.90850500000000001
	.quad	0x3fed054ef459d990              # double 0.90689799999999998
	.quad	0x3fda852b4d8ba40e              # double 0.41437800000000002
	.quad	0x3fc5ef0f16f4384c              # double 0.17135800000000001
	.quad	0x3fbfffef39085f4a              # double 0.124999
	.quad	0x3fe1ab1d4f9c1f86              # double 0.55213800000000002
	.quad	0x3fe35f4e4430b179              # double 0.60538400000000003
	.quad	0x3fe10df37329c348              # double 0.53295300000000001
	.quad	0x3fe6bcddd6e04c06              # double 0.71055500000000005
	.quad	0x3fe365e679463cfb              # double 0.60618899999999998
	.quad	0x3fe30c9752977c89              # double 0.59528700000000001
	.quad	0x3fb77c02afdda8bd              # double 0.091735999999999998
	.quad	0x3fc408fa7a85015c              # double 0.156524
	.quad	0x3fb28ef77f27fe4c              # double 0.072494000000000003
	.quad	0x3fd27f8012dfd695              # double 0.28903200000000001
	.quad	0x3f8aa25d8d79d0a6              # double 0.013004999999999999
	.quad	0x3fb529cbab649d39              # double 0.082669000000000006
	.quad	0x3fead796bfca85cb              # double 0.83881700000000003
	.quad	0x3feacde3b8a19c9d              # double 0.83763299999999996
	.quad	0x3fe988db0574b407              # double 0.797956
	.quad	0x3fd4f672b884406c              # double 0.327542
	.quad	0x3fd2b0468448cf7d              # double 0.29200900000000002
	.quad	0x3fe089ce4a7b4e55              # double 0.516822
	.quad	0x3f4709310129cbab              # double 7.0299999999999996E-4
	.quad	0x3fdf624dd2f1a9fc              # double 0.49037500000000001
	.quad	0x3fe7ffb267c6b8b7              # double 0.74996300000000005
	.quad	0x3fd52d7f950b955f              # double 0.33090199999999997
	.quad	0x3fb24020817fc760              # double 0.071290999999999993
	.quad	0x3fe1a1e603d57796              # double 0.55101299999999998
	.quad	0x3fed3da2f8bdec5f              # double 0.91377399999999998
	.quad	0x3fb32031ceaf251c              # double 0.074709999999999999
	.quad	0x3fe7771a7e308787              # double 0.73328899999999997
	.quad	0x3fd49a6b50b0f27c              # double 0.32192500000000002
	.quad	0x3febc8323358f2e0              # double 0.86818799999999995
	.quad	0x3fd9039abf338716              # double 0.390845
	.quad	0x3fea34cc25072086              # double 0.81894500000000003
	.quad	0x3fe903c297bfa4c6              # double 0.78170899999999999
	.quad	0x3fdaba6aca793576              # double 0.417628
	.quad	0x3fed53b0813cab82              # double 0.916466
	.quad	0x3fafbe9856a37ac4              # double 0.062001000000000001
	.quad	0x3fd0c9c0a8d21bc1              # double 0.26231399999999999
	.quad	0x3fe0ac12ad81adeb              # double 0.52100500000000005
	.quad	0x3fd7abf76a2f48c3              # double 0.36987100000000001
	.quad	0x3f926a22b3892ee8              # double 0.017982999999999999
	.quad	0x3fd77e9d94d0dcfd              # double 0.36710300000000001
	.quad	0x3fefcfbfc6540cc8              # double 0.99411000000000004
	.quad	0x3fd2d3c36113404f              # double 0.29417500000000002
	.quad	0x3fe7cbea4ebdd335              # double 0.74364200000000003
	.quad	0x3feb9a79fec99f1b              # double 0.86260700000000001
	.quad	0x3fbede8709741d08              # double 0.120583
	.quad	0x3fcd63fdd65a1449              # double 0.22961400000000001
	.quad	0x3fcbcbab649d388b              # double 0.21715300000000001
	.quad	0x3fe6d36d655e28aa              # double 0.71330899999999997
	.quad	0x3fde031055b89939              # double 0.46893699999999999
	.quad	0x3fe90c49ba5e353f              # double 0.78274999999999995
	.quad	0x3fb1efb6dca07f67              # double 0.070064000000000001
	.quad	0x3fed8b47c73eee52              # double 0.92325199999999996
	.quad	0x3fc7e86833c6002a              # double 0.18678
	.quad	0x3fd5c4007570c565              # double 0.340088
	.quad	0x3fd9c52a411c2a02              # double 0.40265899999999999
	.quad	0x3fcefaa4766c6de7              # double 0.24202399999999999
	.quad	0x3fe7bd145d851655              # double 0.74183100000000002
	.quad	0x3fe7e8cac4b4d057              # double 0.74716700000000003
	.quad	0x3fc3916872b020c5              # double 0.15287500000000001
	.quad	0x3fcef14db59578a3              # double 0.24173900000000001
	.quad	0x3fc76b3354c12275              # double 0.18295900000000001
	.quad	0x3fe99bbf0dc768e0              # double 0.80026200000000002
	.quad	0x3fda700474d9c6b0              # double 0.41308699999999998
	.quad	0x3fe1d5c96030c240              # double 0.55734700000000004
	.quad	0x3fe163ae2541d8e8              # double 0.54341799999999996
	.quad	0x3fe9f2170931012a              # double 0.81080200000000002
	.quad	0x3fd333764f11b60b              # double 0.300016
	.quad	0x3fedc23b7952d235              # double 0.92996000000000001
	.quad	0x3fe66fe2e6ea8544              # double 0.70115799999999995
	.quad	0x3fe6c430b178b370              # double 0.711449
	.quad	0x3fc3a597d49d7ba6              # double 0.15349099999999999
	.quad	0x3fccece13f4a98ab              # double 0.22597900000000001
	.quad	0x3fd521ccd9620685              # double 0.33018799999999998
	.quad	0x3fe5f327aa68f4b6              # double 0.68593199999999999
	.quad	0x3fc47bd48cb4aec9              # double 0.160029
	.quad	0x3fee5f86e3b46fdf              # double 0.94916100000000003
	.quad	0x3faaaa7ded6ba8c6              # double 0.052082000000000003
	.quad	0x3fd175ea67e846a6              # double 0.27282200000000001
	.quad	0x3fe0909d0635a427              # double 0.51765300000000003
	.quad	0x3fde75b3e1437c57              # double 0.47593400000000002
	.quad	0x3fe22f901083dbc2              # double 0.56830599999999998
	.quad	0x3fef4a9691a75cd1              # double 0.97785500000000002
	.quad	0x3fe7e0eb67c286f9              # double 0.74620600000000004
	.quad	0x3fe955043e5321e6              # double 0.791628
	.quad	0x3fb3226c3b927d46              # double 0.074744000000000005
	.quad	0x3febdf69878316a0              # double 0.87102199999999996
	.quad	0x3fd998f1d3ed527e              # double 0.39995999999999998
	.quad	0x3fd503c07ee0b0af              # double 0.32835399999999998
	.quad	0x3fd238fbca1059ea              # double 0.28472799999999998
	.quad	0x3fe17e47991bc558              # double 0.54666499999999996
	.quad	0x3fe249c2c1b10fd8              # double 0.57150400000000001
	.quad	0x3fc3ee136e71cda3              # double 0.15570300000000001
	.quad	0x3fed7765fd8adaba              # double 0.920825
	.quad	0x3fede2c77574f723              # double 0.93393300000000001
	.quad	0x3fe11fd9ba1b1961              # double 0.535138
	.quad	0x3fcf771001d5c316              # double 0.24582100000000001
	.quad	0x3fd886cebbba55d2              # double 0.38322800000000001
	.quad	0x3fdd94a2b9d3cbc5              # double 0.46219700000000002
	.quad	0x3fe54af2d7f950b9              # double 0.66539899999999996
	.quad	0x3fe3e42e12620254              # double 0.62160400000000005
	.quad	0x3fed60f5e41d4b6a              # double 0.91808599999999996
	.quad	0x3fd774d1633482bf              # double 0.36650500000000003
	.quad	0x3fe2b82e44b6e936              # double 0.58498300000000003
	.quad	0x3fdacc0379314446              # double 0.41870200000000002
	.quad	0x3fe7039abf338716              # double 0.71919
	.quad	0x3fd83471f79420b4              # double 0.37820100000000001
	.quad	0x3fb8c1871e6cd291              # double 0.096702999999999997
	.quad	0x3fe4142d490e66cb              # double 0.62746299999999999
	.quad	0x3fc2d245b291b824              # double 0.14704200000000001
	.quad	0x3fd5e4bcad9ad85e              # double 0.342086
	.quad	0x3fd4f459d99029ae              # double 0.32741399999999998
	.quad	0x3fe19bef49cf56eb              # double 0.55028500000000002
	.quad	0x3fe30fd7e45803cd              # double 0.59568399999999999
	.quad	0x3fb55c31593e5fb7              # double 0.083437999999999998
	.quad	0x3fe334c1a8ac5c14              # double 0.60019
	.quad	0x3f94e09784ec636b              # double 0.020388
	.quad	0x3fe5975d13d74d59              # double 0.67472699999999997
	.quad	0x3fecd7fb69984a0e              # double 0.90136499999999997
	.quad	0x3fe7808e9b38d60a              # double 0.73444299999999996
	.quad	0x3fe3d7f737da61e1              # double 0.62011300000000003
	.quad	0x3fc139e279dd3bb0              # double 0.134579
	.quad	0x3fea2f35e310dbf0              # double 0.81826299999999996
	.quad	0x3fc68512231832fd              # double 0.17593600000000001
	.quad	0x3fdbb76f6d762520              # double 0.43307099999999998
	.quad	0x3feef1950331e3a8              # double 0.96699000000000001
	.quad	0x3fb1e7967caea748              # double 0.069940000000000002
	.quad	0x3fd3f483cafb3b75              # double 0.31179899999999999
	.quad	0x3fd5e236c15d2d02              # double 0.34193200000000001
	.quad	0x3fd9d3804534bd77              # double 0.403534
	.quad	0x3fe20f49491f2dc3              # double 0.56436600000000003
	.quad	0x3fe4f93dd97f62b7              # double 0.65542500000000004
	.quad	0x3fe7a1a500d5e8d5              # double 0.73848199999999997
	.quad	0x3feb67fb267c6b8b              # double 0.85644299999999995
	.quad	0x3fd2d64d7f0ed3d8              # double 0.29432999999999998
	.quad	0x3fe745718eb89507              # double 0.72722699999999996
	.quad	0x3fd52d8c2a454de8              # double 0.330905
	.quad	0x3fe5a8f3a9b06812              # double 0.67687399999999998
	.quad	0x3fcec79702e6644e              # double 0.24046600000000001
	.quad	0x3fd9fadf2ecf2064              # double 0.40593699999999999
	.quad	0x3f7d744f5d35653d              # double 0.0071910000000000003
	.quad	0x3fc368dfbd6a593a              # double 0.151638
	.quad	0x3fdaadd9c27e9531              # double 0.41686099999999998
	.quad	0x3fd01450efdc9c4e              # double 0.25124000000000002
	.quad	0x3fdaa27ae9ab29e5              # double 0.41616700000000001
	.quad	0x3fed7ad080b673c5              # double 0.92124200000000001
	.quad	0x3fe779fec99f1ae3              # double 0.73364200000000002
	.quad	0x3fecd61d4306e5cd              # double 0.90113699999999997
	.quad	0x3fe28d38cda6e760              # double 0.579739
	.quad	0x3fb25785f8d2e515              # double 0.071648000000000003
	.quad	0x3fe73358f2e05ccd              # double 0.72501800000000005
	.quad	0x3fea213e3e29307b              # double 0.81655800000000001
	.quad	0x3fcbe9e1b089a027              # double 0.21807499999999999
	.quad	0x3fe37ed634549b63              # double 0.60923300000000002
	.quad	0x3fbb75a74c09c3ce              # double 0.107264
	.quad	0x3fb2d82ba5a03819              # double 0.073610999999999996
	.quad	0x3fa2bba98eda22f7              # double 0.036588000000000002
	.quad	0x3fdbe28240b78034              # double 0.43569999999999998
	.quad	0x3fe044998d045fe1              # double 0.50837399999999999
	.quad	0x3fe932c1f42bb667              # double 0.78744599999999998
	.quad	0x3fe6f166e008e9b4              # double 0.71696800000000005
	.quad	0x3fe4884a515ce9e6              # double 0.64163700000000001
	.quad	0x3fe50d4562e09fe8              # double 0.65786999999999995
	.quad	0x3fa1611ba3ca7504              # double 0.033944000000000002
	.quad	0x3feafd6f97679032              # double 0.84343699999999999
	.quad	0x3fe3056a37ac3eb8              # double 0.59441100000000002
	.quad	0x3f80ad46f587d6f9              # double 0.0081429999999999991
	.quad	0x3fd573ffac1d29dc              # double 0.33520499999999998
	.quad	0x3fdf1d3ed527e521              # double 0.48615999999999998
	.quad	0x3fdaaa53fc0096ff              # double 0.41664600000000002
	.quad	0x3fe7aa00192a7371              # double 0.73950199999999999
	.quad	0x3feca374794ea077              # double 0.894953
	.quad	0x3fb5e01de2691644              # double 0.085450999999999999
	.quad	0x3fef14df8b157258              # double 0.97129799999999999
	.quad	0x3fe49e1b089a0275              # double 0.64429999999999998
	.quad	0x3fec708cc575c076              # double 0.88873899999999995
	.quad	0x3fe011212513b5bf              # double 0.50209099999999995
	.quad	0x3fe73eb7cbb3c819              # double 0.726406
	.quad	0x3fefc99ae924f228              # double 0.99336000000000002
	.quad	0x3fea9ef954eb13e0              # double 0.83190600000000003
	.quad	0x3fa0398a65492ff5              # double 0.031689000000000002
	.quad	0x3febbd556084a516              # double 0.86686200000000002
	.quad	0x3fd5adb8348f53c5              # double 0.33872799999999997
	.quad	0x3fc5e69ad42c3c9f              # double 0.1711
	.quad	0x3fd76cd6c2efd439              # double 0.36601800000000001
	.quad	0x3fe3f03d145d8516              # double 0.62307599999999996
	.quad	0x3fd5aa0cae642bfa              # double 0.33850400000000003
	.quad	0x3fd4e28240b78034              # double 0.32632499999999998
	.quad	0x3fe0cfcc5b8dc550              # double 0.525366
	.quad	0x3fc1c51dabe2717a              # double 0.13882800000000001
	.quad	0x3f98fb00bcbe61d0              # double 0.024395
	.quad	0x3fc30ff972474539              # double 0.148925
	.quad	0x3fe8d8127b2cc708              # double 0.77637599999999996
	.quad	0x3fee95e17e34b945              # double 0.95579599999999998
	.quad	0x3f9870110a137f39              # double 0.023865000000000001
	.quad	0x3fbbdd00f776c482              # double 0.10884099999999999
	.quad	0x3fcdafb7e90ff972              # double 0.23192499999999999
	.quad	0x3feeebfa8f7db6e5              # double 0.96630599999999999
	.quad	0x3fd865bea0ba1f4b              # double 0.38120999999999999
	.quad	0x3febbc408d8ec95c              # double 0.86673
	.quad	0x3fed310129cbab65              # double 0.91223200000000004
	.quad	0x3fe8c25aee631f8a              # double 0.773725
	.quad	0x3feaf6102795703f              # double 0.84253699999999998
	.quad	0x3fb7b7f9d6f112fd              # double 0.092650999999999997
	.quad	0x3feddbf487fcb924              # double 0.93310000000000004
	.quad	0x3fcb9a6b50b0f27c              # double 0.21565000000000001
	.quad	0x3fe205ec3dab5c3a              # double 0.56322300000000003
	.quad	0x3fe5366f9335d24a              # double 0.66289500000000001
	.quad	0x3fe1d5b035bd512f              # double 0.55733500000000002
	.quad	0x3fd722c450268901              # double 0.36149700000000001
	.quad	0x3fd38943e1006078              # double 0.305253
	.quad	0x3fe9f53c579f2346              # double 0.81118599999999996
	.quad	0x3fd1ee45c358afc4              # double 0.28016799999999997
	.quad	0x3feca44a6223e187              # double 0.89505500000000005
	.quad	0x3fda698bb4d48883              # double 0.412692
	.quad	0x3fe7fbca1059ea57              # double 0.74948599999999999
	.quad	0x3fb884944ed6fda8              # double 0.095772999999999997
	.quad	0x3fe3e48a58b3f63c              # double 0.62164799999999998
	.quad	0x3fd628d8665e02eb              # double 0.34624300000000002
	.quad	0x3fcbf359ff4fd6d8              # double 0.218364
	.quad	0x3fb5892684cf073a              # double 0.084124000000000004
	.quad	0x3fdabe7afa722186              # double 0.41787600000000003
	.quad	0x3fd92b884406c00e              # double 0.39328200000000002
	.quad	0x3feeedb940fecdd1              # double 0.96651900000000001
	.quad	0x3fb02773e24febd1              # double 0.063102000000000005
	.quad	0x3fcbb3d8e0008638              # double 0.21642600000000001
	.quad	0x3fe8961c36976bc2              # double 0.76832400000000001
	.quad	0x3fdac79f666234a8              # double 0.41843399999999997
	.quad	0x3fe3c792d1287c20              # double 0.61811199999999999
	.quad	0x3fae71ac14c660a2              # double 0.059461
	.quad	0x3fda9ed3953dea46              # double 0.41594399999999998
	.quad	0x3fc1ff36ac647779              # double 0.140601
	.quad	0x3f9cdc443914f484              # double 0.028184000000000001
	.quad	0x3fc7c87db2b34613              # double 0.185806
	.quad	0x3fec960d887ebf23              # double 0.89331700000000003
	.quad	0x3fc5f5c6c11a1123              # double 0.17156299999999999
	.quad	0x3fea809b30728e93              # double 0.82819900000000002
	.quad	0x3fee66d373affb05              # double 0.95005200000000001
	.quad	0x3fe3f98fa376922e              # double 0.62421400000000005
	.quad	0x3fe35b7281fd9ba2              # double 0.60491300000000003
	.quad	0x3fe8a6cc1ca3a4b5              # double 0.77036099999999996
	.quad	0x3fd0a311e85fd04a              # double 0.25995299999999999
	.quad	0x3fd63c46d82ba5a0              # double 0.34742899999999999
	.quad	0x3feddbccaf709b74              # double 0.93308100000000004
	.quad	0x3fb9c443914f483d              # double 0.100651
	.quad	0x3fda3b9ae0c17657              # double 0.40988799999999997
	.quad	0x3fe6847d3d4280ae              # double 0.70367299999999999
	.quad	0x3fe9cf93bc0a06ea              # double 0.806589
	.quad	0x3fb9b3aeee957471              # double 0.100398
	.quad	0x3fb19cf13cee9dd8              # double 0.068801000000000001
	.quad	0x3fec6052502eec7d              # double 0.88675800000000005
	.quad	0x3fe2e03d57796399              # double 0.58987299999999998
	.quad	0x3f96412cf0f9d2bf              # double 0.021732999999999999
	.quad	0x3fd999bb2788db05              # double 0.40000799999999997
	.quad	0x3fbf6ef8055fbb51              # double 0.12278699999999999
	.quad	0x3fdfb71fbc5de9c0              # double 0.49555199999999999
	.quad	0x3fea350d2806af47              # double 0.81897600000000004
	.quad	0x3fe2c623d0bfa094              # double 0.58668699999999996
	.quad	0x3fe1beab367a0f91              # double 0.55452500000000005
	.quad	0x3fd39b6f5caf2d80              # double 0.30636200000000002
	.quad	0x3fe8882adc4c9c91              # double 0.76662200000000003
	.quad	0x3fd8fbacb4289119              # double 0.39036100000000001
	.quad	0x3fe50331e3a7daa5              # double 0.65664
	.quad	0x3fd803ea704bc276              # double 0.37523899999999999
	.quad	0x3fc5620ee8d10f52              # double 0.16705500000000001
	.quad	0x3fd72b020c49ba5e              # double 0.36199999999999999
	.quad	0x3feb995cc857f306              # double 0.86247099999999999
	.quad	0x3fe08893b7d84902              # double 0.51667200000000002
	.quad	0x3fd99b0ee49f5169              # double 0.40008899999999997
	.quad	0x3fbe1804d9839475              # double 0.11755400000000001
	.quad	0x3fc41ccd96206855              # double 0.15712899999999999
	.quad	0x3fd3ed4a1ad6451c              # double 0.31135800000000002
	.quad	0x3fe34b44a1f08030              # double 0.60293799999999997
	.quad	0x3fe6d058dde7a744              # double 0.71293300000000004
	.quad	0x3fe7d074213a0c6b              # double 0.74419599999999997
	.quad	0x3fe3b73affb04ee8              # double 0.61611700000000003
	.quad	0x3fe14dd50a88effe              # double 0.54075099999999998
	.quad	0x3fd4743632c1f42c              # double 0.31959300000000002
	.quad	0x3fed3ff04577d955              # double 0.91405499999999995
	.quad	0x3fc19392189bd838              # double 0.13731599999999999
	.quad	0x3fe06518f3eccc47              # double 0.51234100000000005
	.quad	0x3fb8cad57bc7f77b              # double 0.096845000000000001
	.quad	0x3fe6a9ef5232d2bb              # double 0.70824399999999998
	.quad	0x3fb41eeed8904f6e              # double 0.078597
	.quad	0x3fee18d8a979e16d              # double 0.94053299999999995
	.quad	0x3fe6ca57a786c227              # double 0.71220000000000006
	.quad	0x3f4b003686a4ca4f              # double 8.2399999999999997E-4
	.quad	0x3fe48fe047d3d428              # double 0.642563
	.quad	0x3fe03e878fabda0e              # double 0.507633
	.quad	0x3fdc05ff1d81f106              # double 0.43786599999999998
	.quad	0x3faa2bbecaab8a5d              # double 0.051115000000000001
	.quad	0x3fe1a59e1f3a57eb              # double 0.55146700000000004
	.quad	0x3fedc52e72da1230              # double 0.93032000000000004
	.quad	0x3fe7eb6390c91080              # double 0.74748400000000004
	.quad	0x3fec572ffd1dcd70              # double 0.88564299999999996
	.quad	0x3fea5c96030c23fb              # double 0.82380200000000003
	.quad	0x3fe90ffb8b263950              # double 0.78320100000000004
	.quad	0x3fdd314445aa2e3c              # double 0.45613199999999998
	.quad	0x3fd6da6e75ff609e              # double 0.35708200000000001
	.quad	0x3fea25c1c6088d6d              # double 0.81710899999999997
	.quad	0x3fe7fcc7d1bb4917              # double 0.74960700000000002
	.quad	0x3fe824f227d028a2              # double 0.75451000000000001
	.quad	0x3fe4cf5903a7546d              # double 0.65031099999999997
	.quad	0x3fd94927913e8145              # double 0.39509
	.quad	0x3fdfadb8348f53c5              # double 0.49497799999999997
	.quad	0x3fe2c4588a04d120              # double 0.58646799999999999
	.quad	0x3fdc4da4ce8101f3              # double 0.44223899999999999
	.quad	0x3fe15771001d5c31              # double 0.54192399999999996
	.quad	0x3fe1c59103c8e25d              # double 0.55536700000000006
	.quad	0x3fc8b734b51372a4              # double 0.19309100000000001
	.quad	0x3fe235807fed2029              # double 0.56903099999999995
	.quad	0x3fe9ef1561911490              # double 0.81043500000000002
	.quad	0x3fd6d987c6327ed8              # double 0.35702699999999998
	.quad	0x3fe8f11d798d8a98              # double 0.77943300000000004
	.quad	0x3fcecca2db61bb06              # double 0.24062
	.quad	0x3fb22a4db163baba              # double 0.070957999999999993
	.quad	0x3febc0f66a550870              # double 0.86730499999999999
	.quad	0x3fef7ad4b2745bf2              # double 0.98374399999999995
	.quad	0x3fcb803cd141a693              # double 0.21485099999999999
	.quad	0x3fec6b463497b741              # double 0.88809499999999997
	.quad	0x3fe61e4712e40853              # double 0.69119600000000003
	.quad	0x3fe8eb2f23033a47              # double 0.77870899999999998
	.quad	0x3feca0f0a5efe932              # double 0.89464600000000005
	.quad	0x3fd8a8155d5f56a8              # double 0.38525900000000002
	.quad	0x3fa5f02c4d65e460              # double 0.042847999999999997
	.quad	0x3fe643f1c75818c6              # double 0.69579400000000002
	.quad	0x3fe2c330d738609a              # double 0.58632700000000004
	.quad	0x3fde0b06c43f5f91              # double 0.46942299999999998
	.quad	0x3fd7f893faf42785              # double 0.37454700000000002
	.quad	0x3fd8021d10b1feeb              # double 0.37512899999999999
	.quad	0x3fd3672756861e93              # double 0.30317100000000002
	.quad	0x3fe10dbad3a604e2              # double 0.53292600000000001
	.quad	0x3fd0efcbd556084a              # double 0.26463599999999998
	.quad	0x3fef75536933a040              # double 0.98307199999999994
	.quad	0x3fc52ee84ad794a7              # double 0.165494
	.quad	0x3fef7eb074a771c9              # double 0.98421499999999995
	.quad	0x3fe9666cb10342ab              # double 0.79375300000000004
	.quad	0x3fdec3b0c4588a05              # double 0.48069400000000001
	.quad	0x3fb278183f91e647              # double 0.072145000000000001
	.quad	0x3fd9e34b945308bc              # double 0.40449800000000002
	.quad	0x3fd0214f0520d131              # double 0.25203300000000001
	.quad	0x3fd468d32830a0b2              # double 0.31889800000000001
	.quad	0x3fde9a73b42cc2d7              # double 0.47817700000000002
	.quad	0x3fdde5ffa3b9ae0c              # double 0.46716299999999999
	.quad	0x3fd26b484d76ab58              # double 0.287798
	.quad	0x3feaaaa19439de48              # double 0.83332899999999999
	.quad	0x3fdbfbf401c4fc1e              # double 0.437253
	.quad	0x3feda374794ea077              # double 0.926203
	.quad	0x3fef44a1f080303c              # double 0.97712799999999999
	.quad	0x3fb2c050bd87b56c              # double 0.073247000000000007
	.quad	0x3fe69bed30f062d4              # double 0.706534
	.quad	0x3febf4f93bc0a06f              # double 0.87365400000000004
	.quad	0x3fec443b2dd377e2              # double 0.88332900000000003
	.quad	0x3fec6086bdf4c2b5              # double 0.88678299999999999
	.quad	0x3fb1b089a0275254              # double 0.069099999999999995
	.quad	0x3fdbfe4bcad9ad86              # double 0.43739600000000001
	.quad	0x3fc38383ad9f0a1c              # double 0.152451
	.quad	0x3fe51a9da597d49d              # double 0.65949899999999995
	.quad	0x3fe3fbc7f77af640              # double 0.62448499999999996
	.quad	0x3fd052f7f498c3b1              # double 0.25506400000000001
	.quad	0x3fee49a77e5eaab0              # double 0.94649099999999997
	.quad	0x3fc6f8726d04e619              # double 0.17945700000000001
	.quad	0x3f9bbecaab8a5ce6              # double 0.027095000000000001
	.quad	0x3fe17ae5796bfca8              # double 0.54625199999999996
	.quad	0x3fe88183f91e646f              # double 0.76580999999999999
	.quad	0x3fe8c4e0daa0cae6              # double 0.77403299999999997
	.quad	0x3fe03b2788db0575              # double 0.50722100000000003
	.quad	0x3fd94180d3cff64d              # double 0.394623
	.quad	0x3fb45c13fd0d0679              # double 0.079530000000000003
	.quad	0x3fc3e596c82e019b              # double 0.155444
	.quad	0x3fe543ed959a3098              # double 0.66454199999999997
	.quad	0x3fdf50a88effe2a4              # double 0.48929800000000001
	.quad	0x3fef7444e0daa0cb              # double 0.98294300000000001
	.quad	0x3fd0b367a0f9096c              # double 0.26095000000000002
	.quad	0x3fe212b5e529bae4              # double 0.56478399999999995
	.quad	0x3fdbc087442c7fbb              # double 0.43362600000000001
	.quad	0x3fe309bf9c62a1b6              # double 0.59494000000000002
	.quad	0x3fcaad794a6eb91b              # double 0.20841899999999999
	.quad	0x3fc84a05dd8f92b0              # double 0.18975900000000001
	.quad	0x3fed16fc9bc77143              # double 0.90905599999999998
	.quad	0x3fd01fe21d96e9bc              # double 0.251946
	.quad	0x3fac79d4d834091c              # double 0.055617
	.quad	0x3fe3b838c111ada7              # double 0.61623799999999995
	.quad	0x3fd0d35653c9abb0              # double 0.26289899999999999
	.quad	0x3fd18e4755ffe6d6              # double 0.27430900000000003
	.quad	0x3fe9739d1b2e59b0              # double 0.79536300000000004
	.quad	0x3fea07fed20296b3              # double 0.81347599999999998
	.quad	0x3fef36262cba732e              # double 0.97536
	.quad	0x3fe2d5cb790fb656              # double 0.58859799999999995
	.quad	0x3fce68fd199bb279              # double 0.23757900000000001
	.quad	0x3fde0856e696a26e              # double 0.46925899999999998
	.quad	0x3fd8f2becedd4845              # double 0.389816
	.quad	0x3fdd03c07ee0b0af              # double 0.45335399999999998
	.quad	0x3fb7826edaa92e62              # double 0.091833999999999998
	.quad	0x3fe751654d61b2a2              # double 0.72868599999999994
	.quad	0x3feb2239e6ab9b24              # double 0.84792800000000001
	.quad	0x3fd745996744b2b7              # double 0.36362299999999997
	.quad	0x3fd1ca25529fe005              # double 0.27796300000000002
	.quad	0x3feb2352eb5f5f0b              # double 0.84806199999999998
	.quad	0x3feb47000431bde8              # double 0.85241699999999998
	.quad	0x3fac43d46b26bf87              # double 0.055204999999999997
	.quad	0x3fefd6f544bb1af4              # double 0.99499000000000004
	.quad	0x3fedfe1b8ed1bf7b              # double 0.93726900000000002
	.quad	0x3fefc15b1422ccb4              # double 0.99235300000000004
	.quad	0x3fc3a4723aafff37              # double 0.15345600000000001
	.quad	0x3fcf01e2584f4c6e              # double 0.24224499999999999
	.quad	0x3fde7aaac1094a2c              # double 0.47623700000000002
	.quad	0x3fe736fe2e6ea854              # double 0.72546299999999997
	.quad	0x3fcfaad601ffb481              # double 0.24740100000000001
	.quad	0x3fb2f965b20b8067              # double 0.074118000000000003
	.quad	0x3fe25a5fc7e6b3ff              # double 0.57353200000000004
	.quad	0x3fcc245f5ad96a6a              # double 0.21986
	.quad	0x3fe4cc426351def0              # double 0.64993400000000001
	.quad	0x3fd2694467381d7e              # double 0.28767500000000001
	.quad	0x3fc5cdcca70d1fa3              # double 0.17034299999999999
	.quad	0x3fe1e74d1633482c              # double 0.55948500000000001
	.quad	0x3fe794ad362e9036              # double 0.73689899999999997
	.quad	0x3f7606317268d328              # double 0.0053769999999999998
	.quad	0x3fee0305d95dd4c7              # double 0.93786899999999995
	.quad	0x3fd7dc7abfb9bed3              # double 0.372832
	.quad	0x3fd789acbc8c0ce9              # double 0.36777799999999999
	.quad	0x3fee3bafd976ff3b              # double 0.94478600000000001
	.quad	0x3fe857abb8800eae              # double 0.76070199999999999
	.quad	0x3fc377af640639d6              # double 0.15209
	.quad	0x3fe150a45d41fa76              # double 0.54109399999999996
	.quad	0x3feb2413db7f1737              # double 0.84815399999999996
	.quad	0x3fe7de7a743a6480              # double 0.74590800000000002
	.quad	0x3fd8526527a20579              # double 0.38002900000000001
	.quad	0x3fd440dd3fe1975f              # double 0.31645899999999999
	.quad	0x3fc48b11409a2403              # double 0.160494
	.quad	0x3feb33461309c800              # double 0.85000900000000001
	.quad	0x3fe7283d35eb7458              # double 0.72366200000000003
	.quad	0x3fa9856a37ac3eb8              # double 0.049846000000000001
	.quad	0x3fd40be5109070fc              # double 0.313226
	.quad	0x3fa04c8bc9cd3e0c              # double 0.031834000000000001
	.quad	0x3fe4f6be37de939f              # double 0.65512000000000004
	.quad	0x3fee2ae07e5a78f2              # double 0.94273399999999996
	.quad	0x3fe2e598e10cf5b2              # double 0.59052700000000002
	.quad	0x3feca19652bd3c36              # double 0.89472499999999999
	.quad	0x3fef2c18f81e8a2f              # double 0.97413300000000002
	.quad	0x3fe8bc64345cfedf              # double 0.77299700000000005
	.quad	0x3fe7ba40d90e23af              # double 0.74148599999999998
	.quad	0x3fe49752977c88e8              # double 0.64347200000000004
	.quad	0x3fe2b2bfdb4cc250              # double 0.58431999999999995
	.quad	0x3fd734e3369b9d80              # double 0.36260300000000001
	.quad	0x3fe8ce7253da72a8              # double 0.77520100000000003
	.quad	0x3fe89a9da597d49d              # double 0.76887399999999995
	.quad	0x3fe6ed15ad106ee3              # double 0.71644099999999999
	.quad	0x3fe69d0635a426bb              # double 0.70666799999999996
	.quad	0x3fc132df505d0fa6              # double 0.13436500000000001
	.quad	0x3fd36f75d9a0f0a6              # double 0.303678
	.quad	0x3fd58858ff759685              # double 0.336447
	.quad	0x3fcff666234a87e4              # double 0.24970700000000001
	.quad	0x3fae7ee9142b302f              # double 0.059561999999999997
	.quad	0x3fc759578a2a90cd              # double 0.18241399999999999
	.quad	0x3fed164628027d89              # double 0.90896900000000003
	.quad	0x3febcd91eeaa6d26              # double 0.86884399999999995
	.quad	0x3fe79f14983d7907              # double 0.73816899999999996
	.quad	0x3fe67dc5931ca7d6              # double 0.70285299999999995
	.quad	0x3fb6c31162281345              # double 0.088914000000000007
	.quad	0x3fecb98e97071822              # double 0.89765099999999998
	.quad	0x3fd5b035bd512ec7              # double 0.33888000000000001
	.quad	0x3fe53b5393250b52              # double 0.66349199999999997
	.quad	0x3fe83bd9cae21102              # double 0.75730600000000003
	.quad	0x3fc454cdb7ae5797              # double 0.15883800000000001
	.quad	0x3fe63b4d48882f0e              # double 0.694739
	.quad	0x3fd631769a91105e              # double 0.34676899999999999
	.quad	0x3feb9a7c17a89332              # double 0.86260800000000004
	.quad	0x3fe9d373affb04ee              # double 0.80706199999999995
	.quad	0x3fd2fb480a5accd5              # double 0.29658699999999999
	.quad	0x3fd566490a350d28              # double 0.334368
	.quad	0x3fcc5d31337eb28e              # double 0.22159400000000001
	.quad	0x3fe66ba27ae9ab2a              # double 0.70063900000000001
	.quad	0x3fd9405f6ba0620b              # double 0.39455400000000002
	.quad	0x3fd6a02fb5d03105              # double 0.35352699999999998
	.quad	0x3fe94ed916872b02              # double 0.79087499999999999
	.quad	0x3fd5559b3d07c84b              # double 0.33334999999999998
	.quad	0x3fe45f5f0b28522f              # double 0.63664200000000004
	.quad	0x3fd5ca7935760392              # double 0.34048299999999998
	.quad	0x3f7b62c77574f723              # double 0.0066860000000000001
	.quad	0x3fe889b738e6d15b              # double 0.76681100000000002
	.quad	0x3fd162cba732df50              # double 0.27165499999999998
	.quad	0x3fa4c5974e65bea1              # double 0.040570000000000002
	.quad	0x3fc251b0ccbc05d5              # double 0.143118
	.quad	0x3fc91ba3ca7503b8              # double 0.196156
	.quad	0x3fe531ab0856e697              # double 0.66231300000000004
	.quad	0x3fd88da3c21187e8              # double 0.38364500000000001
	.quad	0x3fc22bd7f51efb6e              # double 0.14196300000000001
	.quad	0x3fd51b75a74c09c4              # double 0.32980100000000001
	.quad	0x3fdeb018611fd588              # double 0.47949799999999998
	.quad	0x3fea64d7f0ed3d86              # double 0.82481000000000004
	.quad	0x3fd636933a0407cc              # double 0.34708099999999997
	.quad	0x3fc65e80bed740c4              # double 0.174759
	.quad	0x3fd5d19157abb880              # double 0.340916
	.quad	0x3fd4647baa9b499d              # double 0.318633
	.quad	0x3fed932d6ece13f5              # double 0.92421600000000004
	.quad	0x3fe49059ea57214f              # double 0.642621
	.quad	0x3fcaa454de7ea5f8              # double 0.20813999999999999
	.quad	0x3feaaf4491298890              # double 0.83389500000000005
	.quad	0x3fb3ba8826aa8eb4              # double 0.077064999999999995
	.quad	0x3fe29244a6223e18              # double 0.58035499999999995
	.quad	0x3fe0e19b90ea9e6f              # double 0.52754000000000001
	.quad	0x3fb32b990afe60c4              # double 0.074884000000000006
	.quad	0x3fc39591cd1c7de5              # double 0.153002
	.quad	0x3fdba411c2a02321              # double 0.43188900000000002
	.quad	0x3fefeac42e9899bf              # double 0.99740799999999996
	.quad	0x3fc75c74751ce28f              # double 0.182509
	.quad	0x3fe428112ba16e7a              # double 0.62989099999999998
	.quad	0x3fe3e01ffb480a5b              # double 0.62110900000000002
	.quad	0x3fd6f837b4a2339c              # double 0.3589
	.quad	0x3fd329ae4f3343fa              # double 0.29941899999999999
	.quad	0x3fede136e71cda2b              # double 0.93374199999999996
	.quad	0x3fc59b6f5caf2d80              # double 0.16880600000000001
	.quad	0x3fdba1cef240fa9c              # double 0.431751
	.quad	0x3facd26fa3fcc9eb              # double 0.056293000000000003
	.quad	0x3fe677e5eaab0425              # double 0.70213599999999998
	.quad	0x3fe01bc98a222d51              # double 0.50339199999999995
	.quad	0x3fe5b81b64e05469              # double 0.67872399999999999
	.quad	0x3feea415f45e0b4e              # double 0.95752999999999999
	.quad	0x3fec0beb5b2d4d40              # double 0.87645499999999998
	.quad	0x3fe16df1e0828c37              # double 0.54467100000000002
	.quad	0x3fe2eaad1d041cc5              # double 0.59114699999999998
	.quad	0x3fecdd7cb2d905c0              # double 0.90203699999999998
	.quad	0x3fe5a63305100a39              # double 0.67653799999999997
	.quad	0x3fc15e17e34b9453              # double 0.135684
	.quad	0x3fd79a88ace24bba              # double 0.368807
	.quad	0x3fbebf3387160957              # double 0.120105
	.quad	0x3fbe4f54d1e96c40              # double 0.118398
	.quad	0x3fea8691ea78af3e              # double 0.82892699999999997
	.quad	0x3fd9be6e653868fd              # double 0.40224799999999999
	.quad	0x3fe5e108c3f3e037              # double 0.68371999999999999
	.quad	0x3fd0e28aa433508f              # double 0.26382699999999998
	.quad	0x3fe0a593a2df9379              # double 0.52021200000000001
	.quad	0x3fe028d434a01abd              # double 0.50498399999999999
	.quad	0x3fe292817763e4ac              # double 0.58038400000000001
	.quad	0x3fc08fd9fd36f7e4              # double 0.12939000000000001
	.quad	0x3fe249d7ba6698bb              # double 0.57151399999999997
	.quad	0x3fe00507a6bd6e8b              # double 0.500614
	.quad	0x3fbae3e6c4c5974e              # double 0.10503999999999999
	.quad	0x3fa5816aceaaf35e              # double 0.042002999999999999
	.quad	0x3fdf05143bf72713              # double 0.48468499999999998
	.quad	0x3feb56238da3c212              # double 0.85426500000000005
	.quad	0x3fab7e6f71a7e308              # double 0.053698999999999997
	.quad	0x3fe80ca1cef240fb              # double 0.75154200000000004
	.quad	0x3fdadb8fde2ef4e0              # double 0.419651
	.quad	0x3fe7472c0e7bc3c6              # double 0.72743800000000003
	.quad	0x3fd097aeddce7cd0              # double 0.25925799999999999
	.quad	0x3fdab738e6d15ad1              # double 0.417433
	.quad	0x3fe38ca8198f1d3f              # double 0.61092000000000002
	.quad	0x3fef93250b52439a              # double 0.98671200000000003
	.quad	0x3fe41791819d2392              # double 0.62787700000000002
	.quad	0x3fec69b38d60a633              # double 0.887903
	.quad	0x3fe0dafd113836a8              # double 0.52673199999999998
	.quad	0x3fc445a1cac08312              # double 0.15837499999999999
	.quad	0x3fceb8ae31d712a1              # double 0.240011
	.quad	0x3fb5faa8a82a5615              # double 0.085856000000000002
	.quad	0x3fe24026cc1ca3a5              # double 0.57033100000000003
	.quad	0x3fe32aac1094a2ba              # double 0.59895900000000002
	.quad	0x3fe8c5564b662fe0              # double 0.77408900000000002
	.quad	0x3fe9ed45e9185cee              # double 0.81021399999999999
	.quad	0x3fde6c508b32ce89              # double 0.47536099999999998
	.quad	0x3fd5926c7eae5bc8              # double 0.33706199999999997
	.quad	0x3fe5999dcb5781c7              # double 0.67500199999999999
	.quad	0x3fb203a322af5771              # double 0.070368
	.quad	0x3fd5ea2d2fe3f35a              # double 0.342418
	.quad	0x3feb22df9378ee28              # double 0.84800699999999996
	.quad	0x3fe2788765ba6efc              # double 0.57721299999999998
	.quad	0x3fe87ac6045baf53              # double 0.76498699999999997
	.quad	0x3fc084dfce3150db              # double 0.129055
	.quad	0x3fd73d25247cb70b              # double 0.36310700000000001
	.quad	0x3fe0cfe9b7bf1e8e              # double 0.52537999999999996
	.quad	0x3fd1c226809d4952              # double 0.27747500000000003
	.quad	0x3fcbf28848387df6              # double 0.21833900000000001
	.quad	0x3fa6ab7995ee136e              # double 0.044276999999999997
	.quad	0x3fc1bd8be7296f65              # double 0.138597
	.quad	0x3fb00f98fa376923              # double 0.062738000000000002
	.quad	0x3fdcb0a6fc58ab93              # double 0.44828200000000001
	.quad	0x3fd80f94c87980f5              # double 0.37595099999999998
	.quad	0x3fa8daa0cae642c0              # double 0.048543000000000003
	.quad	0x3fe6bfcc9ea9a3d3              # double 0.71091300000000002
	.quad	0x3fea736262cba733              # double 0.82658500000000001
	.quad	0x3fd15aff2a172abf              # double 0.271179
	.quad	0x3fea4a600b029281              # double 0.82157899999999995
	.quad	0x3fe957f3061c79b3              # double 0.79198599999999997
	.quad	0x3fe2ba53b8e4b87c              # double 0.58524500000000002
	.quad	0x3fe06fef7c243dcd              # double 0.51366400000000001
	.quad	0x3fd66f19934efcbd              # double 0.35053099999999998
	.quad	0x3fc577c88e79aae7              # double 0.16771800000000001
	.quad	0x3fdd77ff151e7536              # double 0.460449
	.quad	0x3fe1684ad794a6ec              # double 0.54398100000000005
	.quad	0x3fe99ee2435696e6              # double 0.80064500000000005
	.quad	0x3fe19a86940357a3              # double 0.55011299999999996
	.quad	0x3fd501d9f4d37c13              # double 0.32823799999999997
	.quad	0x3feee6362a5e785b              # double 0.96560199999999996
	.quad	0x3fd707b352a84381              # double 0.35984500000000003
	.quad	0x3fe61756c93a7115              # double 0.69034899999999999
	.quad	0x3fe28a009f623077              # double 0.57934600000000003
	.quad	0x3fc00a2014727dcc              # double 0.125309
	.quad	0x3fea2fc8b0079a28              # double 0.81833299999999998
	.quad	0x3fecab7fe08aefb3              # double 0.89593500000000004
	.quad	0x3fe80b88ca3e7d13              # double 0.75140799999999996
	.quad	0x3fdf23a6ce358299              # double 0.48655100000000001
	.quad	0x3fe54f3775b81301              # double 0.66591999999999996
	.quad	0x3fe70f7b9e060fe4              # double 0.72063999999999995
	.quad	0x3fd47f7be121ee67              # double 0.32028099999999998
	.quad	0x3fe1635610adcd2d              # double 0.54337599999999997
	.quad	0x3fae77d523b3636f              # double 0.059507999999999998
	.quad	0x3fb7d4e09784ec63              # double 0.093091999999999994
	.quad	0x3fbb0f8c64fdb09a              # double 0.10570599999999999
	.quad	0x3fa67967caea747e              # double 0.043895000000000003
	.quad	0x3fe4f7c243dccea3              # double 0.65524400000000005
	.quad	0x3feb8d8cb07d0aee              # double 0.86102900000000004
	.quad	0x3fe44c8366516db1              # double 0.63434000000000001
	.quad	0x3fd6c67dfe32a066              # double 0.35586499999999999
	.quad	0x3feecbd33d29563b              # double 0.96238100000000004
	.quad	0x3fa184a0e410b631              # double 0.034215000000000002
	.quad	0x3f8c5931ca7d6734              # double 0.013842
	.quad	0x3fdd157eed45e918              # double 0.45443699999999998
	.quad	0x3fbd83621fafc8b0              # double 0.115286
	.quad	0x3fd7dba0a5269596              # double 0.37278
	.quad	0x3fe43a9b06812381              # double 0.63215399999999999
	.quad	0x3fd7349be8ff327b              # double 0.36258600000000002
	.quad	0x3fcfc5d63886594b              # double 0.248225
	.quad	0x3fd71754b05b7cfe              # double 0.36079899999999998
	.quad	0x3fe44892ab68cef6              # double 0.63385899999999995
	.quad	0x3fde7f1f9acffa7f              # double 0.47650900000000002
	.quad	0x3fc4d97b30f8c650              # double 0.162887
	.quad	0x3fe21886df82b1f7              # double 0.56549400000000005
	.quad	0x3fbab3bb83cf2cf9              # double 0.10430499999999999
	.quad	0x3feaf13cee9dd7ed              # double 0.84194800000000003
	.quad	0x3fe519fc2a8869c6              # double 0.65942199999999995
	.quad	0x3feacab81f969e3d              # double 0.83724600000000005
	.quad	0x3fede8e1d6494d51              # double 0.93467800000000001
	.quad	0x3feeca1059ea5721              # double 0.96216599999999996
	.quad	0x3fc71e321a2e7f6f              # double 0.18060899999999999
	.quad	0x3fceeee957470eb2              # double 0.24166599999999999
	.quad	0x3fd47e996312f4cf              # double 0.32022699999999998
	.quad	0x3fee43ac929aa1d7              # double 0.94576099999999996
	.quad	0x3fe764606748e475              # double 0.73100299999999996
	.quad	0x3feff27dcbddb984              # double 0.99835099999999998
	.quad	0x3fe2129cbab649d4              # double 0.56477200000000005
	.quad	0x3fd696030c23fab1              # double 0.352906
	.quad	0x3fed32b777d0f1f5              # double 0.91244099999999995
	.quad	0x3fb28ed5f138bce0              # double 0.072492000000000001
	.quad	0x3fee964a59c065b6              # double 0.95584599999999997
	.quad	0x3fe5341e14bdfd26              # double 0.66261199999999998
	.quad	0x3fea009917939a7c              # double 0.81257299999999998
	.quad	0x3fdb783dff3f0fe0              # double 0.42921399999999998
	.quad	0x3fd0fa1a0cf1800a              # double 0.26526499999999997
	.quad	0x3fe79817b95a2941              # double 0.73731599999999997
	.quad	0x3fd9579f23465626              # double 0.39597300000000002
	.quad	0x3fbb0d51f81a5871              # double 0.105672
	.quad	0x3fdd3cfb3311a544              # double 0.456847
	.quad	0x3fcad9dfdac68a93              # double 0.20977399999999999
	.quad	0x3fd81b003686a4ca              # double 0.37664799999999998
	.quad	0x3fdb0dcb9a9da598              # double 0.42271700000000001
	.quad	0x3fef442c7fbacb43              # double 0.97707200000000005
	.quad	0x3fe713ff25e56cd7              # double 0.72119100000000003
	.quad	0x3fdd6e221c8a7a42              # double 0.45984700000000001
	.quad	0x3fec7eb4a66559f7              # double 0.89046700000000001
	.quad	0x3fc8f5771001d5c3              # double 0.194991
	.quad	0x3fd45c896dd26b72              # double 0.31814799999999999
	.quad	0x3fd0ed0b30b5aa71              # double 0.26446799999999998
	.quad	0x3feb0116ebd4cfd1              # double 0.84388300000000005
	.quad	0x3fc34b61fe21d96f              # double 0.15073800000000001
	.quad	0x3fdc4b380cb6c7a8              # double 0.44209100000000001
	.quad	0x3fd654b05b7cfe58              # double 0.34891899999999998
	.quad	0x3fefdb7f1737542a              # double 0.99554399999999998
	.quad	0x3fea109d0635a427              # double 0.81452800000000003
	.quad	0x3fe1ea28fe260b2d              # double 0.55983400000000005
	.quad	0x3fe2c1871e6cd291              # double 0.58612399999999998
	.quad	0x3fce20a30db6a1e8              # double 0.235371
	.quad	0x3fc45814940bbb1f              # double 0.158938
	.quad	0x3fea0e086bdf4c2b              # double 0.81421299999999996
	.quad	0x3fc9f52fc2656abe              # double 0.202795
	.quad	0x3fd1bf65dbfceb79              # double 0.27730700000000003
	.quad	0x3fd2908a265f0f5a              # double 0.290072
	.quad	0x3fedde4c51116a8c              # double 0.93338600000000004
	.quad	0x3fc48155d5f56a7b              # double 0.16019700000000001
	.quad	0x3fe18e60807357e6              # double 0.54862999999999995
	.quad	0x3fe549be8ff327aa              # double 0.66525199999999995
	.quad	0x3fe81b328b6d86ec              # double 0.75331999999999998
	.quad	0x3fe788c1db0142f6              # double 0.73544399999999999
	.quad	0x3f92374794ea0770              # double 0.017788999999999999
	.quad	0x3fe09682f944241c              # double 0.51837299999999997
	.quad	0x3fd39ddc1e7967cb              # double 0.30651
	.quad	0x3fc17a89331a08c0              # double 0.13655200000000001
	.quad	0x3fde1f601797cc3a              # double 0.470665
	.quad	0x3fe65577963992c9              # double 0.69793300000000003
	.quad	0x3fea68b9fdbd2fa1              # double 0.82528400000000002
	.quad	0x3fe69b8ed1bf7ad5              # double 0.70648900000000003
	.quad	0x3fc64f54d1e96c40              # double 0.17429600000000001
	.quad	0x3feb0f8e7ddca4b1              # double 0.84564899999999998
	.quad	0x3fe1721b3aeee957              # double 0.54517899999999997
	.quad	0x3fd556c93a711516              # double 0.333422
	.quad	0x3fee83f705857aff              # double 0.95360900000000004
	.quad	0x3fd8142f61ed5ae2              # double 0.37623200000000001
	.quad	0x3fe1937b07075b3e              # double 0.54925299999999999
	.quad	0x3fe1393ab430f495              # double 0.53823600000000005
	.quad	0x3fe2113836a832ba              # double 0.56460200000000005
	.quad	0x3fdefff79c842fa5              # double 0.484373
	.quad	0x3fd0e5b8561d4307              # double 0.26402100000000001
	.quad	0x3fc2738a3b57c4e3              # double 0.144151
	.quad	0x3fefaf7d30ad46f6              # double 0.99017200000000005
	.quad	0x3fe61b068123810f              # double 0.69079900000000005
	.quad	0x3fe0c69d7342edbb              # double 0.52424499999999996
	.quad	0x3fb859a73b42cc2d              # double 0.095117999999999994
	.quad	0x3fe2957689ca18bd              # double 0.58074499999999996
	.quad	0x3fe7867ad8e43244              # double 0.73516599999999999
	.quad	0x3fe04fd6d7e889c2              # double 0.50974600000000003
	.quad	0x3fdbb0ccbc05d52c              # double 0.432666
	.quad	0x3fec3f034b0e1b4c              # double 0.88269200000000003
	.quad	0x3fe16976bc1effa0              # double 0.54412400000000005
	.quad	0x3fe1dc3dee781840              # double 0.55813500000000005
	.quad	0x3f91dfb9389b5200              # double 0.017454999999999998
	.quad	0x3fc56523704790b8              # double 0.16714899999999999
	.quad	0x3fe9de1198aeb80f              # double 0.80835800000000002
	.quad	0x3feae76427c7c526              # double 0.84074599999999999
	.quad	0x3fed23d2d87f8876              # double 0.91062299999999996
	.quad	0x3fccc6c54bcf0b6b              # double 0.22481599999999999
	.quad	0x3fe9b82e44b6e936              # double 0.80373300000000003
	.quad	0x3fed7ba8826aa8eb              # double 0.92134499999999997
	.quad	0x3fc87d5ed06fef7c              # double 0.191326
	.quad	0x3fe491d9b1b79d91              # double 0.64280400000000004
	.quad	0x3fd067125dd095af              # double 0.25629099999999999
	.quad	0x3fdcc5b078d92fb2              # double 0.44956600000000002
	.quad	0x3fda90a350d2806b              # double 0.415078
	.quad	0x3fe289ce4a7b4e55              # double 0.579322
	.quad	0x3fe26ed02cd39da1              # double 0.57602699999999996
	.quad	0x3fcdc12f09d8c6d6              # double 0.232458
	.quad	0x3fd2b413986338b4              # double 0.29224099999999997
	.quad	0x3fc15a858793dd98              # double 0.135575
	.quad	0x3fe442c5e2cdc012              # double 0.63315100000000002
	.quad	0x3fbe525892684cf0              # double 0.11844399999999999
	.quad	0x3fc6fad6cb535009              # double 0.17953
	.quad	0x3fde49c6f36ef805              # double 0.47325299999999998
	.quad	0x3feccbba12b5e52a              # double 0.89986900000000003
	.quad	0x3fdc2cba732df506              # double 0.44023000000000001
	.quad	0x3fe0f37da61e0c5b              # double 0.52972300000000005
	.quad	0x3fe722a6f3f52fc2              # double 0.72297999999999996
	.quad	0x3fef3b83cf2cf95d              # double 0.97601499999999996
	.quad	0x3fe56b7cbb3c8191              # double 0.66937100000000005
	.quad	0x3fea8d9f90539fba              # double 0.82978799999999997
	.quad	0x3fd7834091c08744              # double 0.36738599999999999
	.quad	0x3feb572580c308ff              # double 0.85438800000000004
	.quad	0x3fe983925bb7b6bb              # double 0.79731099999999999
	.quad	0x3f910cb295e9e1b1              # double 0.016650000000000002
	.quad	0x3fe53ee807bbb624              # double 0.66392899999999999
	.quad	0x3fe698676a7264a1              # double 0.70610399999999995
	.quad	0x3feacd6a161e4f76              # double 0.83757499999999996
	.quad	0x3fda3e2d6238da3c              # double 0.41004499999999999
	.quad	0x3fd25b35b0bbf50e              # double 0.28681699999999999
	.quad	0x3fb547496aad1d04              # double 0.083118999999999998
	.quad	0x3fc200192a737111              # double 0.140628
	.quad	0x3fe1a2db61bb05fb              # double 0.55113000000000001
	.quad	0x3fb02efd438d1d8a              # double 0.063216999999999995
	.quad	0x3fdef294dd72367e              # double 0.48355599999999999
	.quad	0x3fde6117720c8cd6              # double 0.47467599999999999
	.quad	0x3fb9e59f2ba9d1f6              # double 0.10116
	.quad	0x3fe3d27e5215768a              # double 0.61944500000000002
	.quad	0x3fd2ea78af3e468d              # double 0.29556100000000002
	.quad	0x3fe79b3aeee95747              # double 0.73769899999999999
	.quad	0x3fd61ebc83a96d4c              # double 0.34562599999999999
	.quad	0x3fc054cdb7ae5797              # double 0.12758800000000001
	.quad	0x3fc848cf7caa758a              # double 0.189722
	.quad	0x3fc57fd82773e250              # double 0.167964
	.quad	0x3fe8ea22b3892ee8              # double 0.77858099999999997
	.quad	0x3fe5909aed56b010              # double 0.673902
	.quad	0x3fed613f4a98aa86              # double 0.91812099999999996
	.quad	0x3fec47b677f6b1a3              # double 0.88375400000000004
	.quad	0x3fbec61522a6f3f5              # double 0.12021
	.quad	0x3fd077ea1c68ec53              # double 0.25731900000000002
	.quad	0x3fe783211cb039ef              # double 0.73475699999999999
	.quad	0x3fb42d05f2884838              # double 0.078811999999999993
	.quad	0x3fba16b54e2b063e              # double 0.101909
	.quad	0x3fbfb16c1e364bec              # double 0.12380099999999999
	.quad	0x3feec0aaeafab53d              # double 0.96101899999999995
	.quad	0x3fe21eb6390c9108              # double 0.566249
	.quad	0x3febe73a365cb35f              # double 0.87197599999999997
	.quad	0x3fd1b599aa60913a              # double 0.27670899999999998
	.quad	0x3fe33e5753a3ec03              # double 0.60136000000000001
	.quad	0x3fe5d729b280f12c              # double 0.68251499999999998
	.quad	0x3fedc5846e8f29d4              # double 0.93036099999999999
	.quad	0x3fc6373f316e3715              # double 0.17356099999999999
	.quad	0x3fd1c70867ad8e43              # double 0.27777299999999999
	.quad	0x3fd369728a611772              # double 0.303311
	.quad	0x3fe61a9973d9ec70              # double 0.690747
	.quad	0x3fc51aa821f2990f              # double 0.16487599999999999
	.quad	0x3fee3543aeab7996              # double 0.94400200000000001
	.quad	0x3fd669be09bb6aa5              # double 0.35020400000000002
	.quad	0x3fecac625e99e94b              # double 0.89604300000000003
	.quad	0x3fd08de6ddf00abf              # double 0.25866099999999997
	.quad	0x3fa7901083dbc233              # double 0.046020999999999999
	.quad	0x3fe69aae6c8f7553              # double 0.70638199999999995
	.quad	0x3fe5c230fcf80dc3              # double 0.67995499999999998
	.quad	0x3fb3ec3547e06962              # double 0.077823000000000003
	.quad	0x3fe1f8d92fb19e73              # double 0.56162699999999999
	.quad	0x3feaf89613d31b9b              # double 0.84284499999999996
	.quad	0x3fcdc78a6dacabc5              # double 0.232652
	.quad	0x3fe12bde3fbbd7b2              # double 0.536605
	.quad	0x3fe7588c1db0142f              # double 0.72955899999999996
	.quad	0x3fd5d36f7e3d1cc1              # double 0.34103
	.quad	0x3fec3d96638433d7              # double 0.88251800000000002
	.quad	0x3faaecd07852f7f5              # double 0.052588000000000003
	.quad	0x3fc03ad9f0a1be2b              # double 0.12679599999999999
	.quad	0x3fdb307af20ea5b5              # double 0.42483399999999999
	.quad	0x3fe4d816aceaaf36              # double 0.65137800000000001
	.quad	0x3fcb8b60f1b25f63              # double 0.21519099999999999
	.quad	0x3fec8d7e02645e4e              # double 0.89227199999999995
	.quad	0x3fef288ce703afb8              # double 0.9737
	.quad	0x3fd4c88e79aae6c9              # double 0.324741
	.quad	0x3fd3c3c9eecbfb16              # double 0.30882500000000002
	.quad	0x3fd5c8d1958969a1              # double 0.34038200000000002
	.quad	0x3fdbc586876e1deb              # double 0.43393100000000001
	.quad	0x3fc041bb8c32a8ca              # double 0.12700600000000001
	.quad	0x3fedc5b6c3760bf6              # double 0.93038500000000002
	.quad	0x3fd2afc04c8bc9cd              # double 0.29197699999999999
	.quad	0x3fe498f81e8a2ec3              # double 0.64367300000000005
	.quad	0x3fdce8ea39c51dac              # double 0.45171600000000001
	.quad	0x3fdbf22c01e68a0d              # double 0.43665599999999999
	.quad	0x3fe76ac215b9a5a9              # double 0.73178200000000004
	.quad	0x3fed08094e5d5b25              # double 0.90723100000000001
	.quad	0x3fe70dcdb37c99af              # double 0.72043500000000005
	.quad	0x3fdc99bb2788db05              # double 0.44688299999999997
	.quad	0x3fcc32a8c9b84556              # double 0.22029599999999999
	.quad	0x3fb1b3aeee957471              # double 0.069148000000000001
	.quad	0x3fd18cfbfc6540cc              # double 0.27422999999999997
	.quad	0x3fe78a265f0f5a10              # double 0.73561399999999999
	.quad	0x3f729dc725c3dee8              # double 0.0045450000000000004
	.quad	0x3fef0e086bdf4c2b              # double 0.97046299999999996
	.quad	0x3fd526aa8eb46349              # double 0.33048499999999997
	.quad	0x3fdeaad1d041cc53              # double 0.47917599999999999
	.quad	0x3fe2c4651f3e89a9              # double 0.58647400000000005
	.quad	0x3fb8df69878316a0              # double 0.097158999999999995
	.quad	0x3fd17fc7607c419a              # double 0.273424
	.quad	0x3fc29ea140570825              # double 0.14546600000000001
	.quad	0x3fd6fba8826aa8eb              # double 0.35910999999999998
	.quad	0x3fcd6fda836eb4ea              # double 0.22997600000000001
	.quad	0x3fe8a1e81cb46bad              # double 0.769764
	.quad	0x3fe2219eb6390c91              # double 0.566604
	.quad	0x3fea7de2ef4e0115              # double 0.82786700000000002
	.quad	0x3feaae9ab29e4d5e              # double 0.83381400000000006
	.quad	0x3fafbedb7281fd9c              # double 0.062003000000000003
	.quad	0x3fec89d0635a426c              # double 0.89182300000000003
	.quad	0x3f9b2c40d0aaa7df              # double 0.026536000000000001
	.quad	0x3fe11e9d0e991ff7              # double 0.53498699999999999
	.quad	0x3fe2f8ca8198f1d4              # double 0.59287000000000001
	.quad	0x3fd7797891e21533              # double 0.36678899999999998
	.quad	0x3fd2f284167a95c8              # double 0.29605199999999998
	.quad	0x3fee4b74ddf86e3b              # double 0.94671099999999997
	.quad	0x3fc8afe60c38f367              # double 0.19286800000000001
	.quad	0x3febce160d887ebf              # double 0.86890699999999998
	.quad	0x3fe27ded6ba8c587              # double 0.57787200000000005
	.quad	0x3fe2aeab7995ee13              # double 0.58382199999999995
	.quad	0x3fd2a19439de481f              # double 0.29111199999999998
	.quad	0x3f9014727dcbddba              # double 0.015703000000000002
	.quad	0x3fdcb6bb1290257d              # double 0.44865300000000002
	.quad	0x3fe7f3ade225fa66              # double 0.74849600000000005
	.quad	0x3fef5b530ced4e4d              # double 0.97989800000000004
	.quad	0x3fe62afdda8bd231              # double 0.69274800000000003
	.quad	0x3fb9b291b823c85c              # double 0.100381
	.quad	0x3fe94f1a1986b9c3              # double 0.790906
	.quad	0x3fbb3bea91d9b1b8              # double 0.10638300000000001
	.quad	0x3fab4fa48301a7a0              # double 0.053342000000000001
	.quad	0x3fd73ad5bee3d5fe              # double 0.36296600000000001
	.quad	0x3fcc438088509bfa              # double 0.22081000000000001
	.quad	0x3fee1e5e2478854d              # double 0.94120700000000002
	.quad	0x3fe3656eefa1e3eb              # double 0.606132
	.quad	0x3fa84d338f798527              # double 0.047463999999999999
	.quad	0x3fba8b6d86ec17ec              # double 0.10369
	.quad	0x3fe459210385c67e              # double 0.63588
	.quad	0x3fef71cda2b5a20e              # double 0.98264200000000002
	.quad	0x3fa298eda22f6a51              # double 0.036323000000000001
	.quad	0x3fdea172abef06b3              # double 0.47860399999999997
	.quad	0x3fe2935fc3b4f616              # double 0.58048999999999995
	.quad	0x3fe30b71b8aa0019              # double 0.59514699999999998
	.quad	0x3fd089bd8383ad9f              # double 0.258407
	.quad	0x3fd2daf07bfe7e20              # double 0.29461300000000001
	.quad	0x3fdd794ea077036d              # double 0.46052900000000002
	.quad	0x3fb71832fcac8e69              # double 0.090213000000000002
	.quad	0x3fe9116440f23897              # double 0.78337299999999999
	.quad	0x3fe90f3eccc46951              # double 0.783111
	.quad	0x3fe1728848387df6              # double 0.54523100000000002
	.quad	0x3fe5556f32bdc26e              # double 0.66667900000000002
	.quad	0x3fdf27f1b6912125              # double 0.486813
	.quad	0x3fe4a033e78e1933              # double 0.64455600000000002
	.quad	0x3fdf1ec918e325d5              # double 0.48625400000000002
	.quad	0x3fdf338b47c73eee              # double 0.48752099999999998
	.quad	0x3fe4f79420b3d4ae              # double 0.65522199999999997
	.quad	0x3fdc9c7ffde7210c              # double 0.447052
	.quad	0x3f93fcc9ea9a3d2e              # double 0.019519000000000002
	.quad	0x3fec6922d948dc12              # double 0.88783400000000001
	.quad	0x3fda3cc07aaef2c7              # double 0.40995799999999999
	.quad	0x3fe6efc58ab92c06              # double 0.71676899999999999
	.quad	0x3fe9df676ea4228a              # double 0.80852100000000005
	.quad	0x3fe0e9be09bb6aa5              # double 0.52853300000000003
	.quad	0x3fe551d4738a3b58              # double 0.66623900000000003
	.quad	0x3fd96c4c5974e65c              # double 0.397235
	.quad	0x3fe8fe28240b7803              # double 0.78102499999999997
	.quad	0x3fe7de7c8d195897              # double 0.74590900000000004
	.quad	0x3fe355cb790fb656              # double 0.60422299999999995
	.quad	0x3fe8de15ca6ca03c              # double 0.77710999999999996
	.quad	0x3fe62d9cf13cee9e              # double 0.69306800000000002
	.quad	0x3fc4c7d1bb4916ca              # double 0.16234799999999999
	.quad	0x3fc2a68f4b61fe22              # double 0.145708
	.quad	0x3fc270fbeb9e492c              # double 0.14407300000000001
	.quad	0x3fe4202fb5d03105              # double 0.62892899999999996
	.quad	0x3fe1975afaf85943              # double 0.54972600000000005
	.quad	0x3fd3b734b51372a4              # double 0.30805700000000003
	.quad	0x3fe48a50507a6bd7              # double 0.64188400000000001
	.quad	0x3fb67c5ac471b478              # double 0.087834999999999996
	.quad	0x3feef39085f4a127              # double 0.96723199999999998
	.quad	0x3fcc1355475a31a5              # double 0.21934000000000001
	.quad	0x3fd5b5bf6a0dbad4              # double 0.33921800000000002
	.quad	0x3fd6e5bc87db2b34              # double 0.35777199999999998
	.quad	0x3fd16e71cda2b5a2              # double 0.272366
	.quad	0x3fc4d2135daad602              # double 0.162661
	.quad	0x3feee961c36976bc              # double 0.96598899999999998
	.quad	0x3fedd2674080f990              # double 0.93193400000000004
	.quad	0x3fa86162f166e009              # double 0.047618000000000001
	.quad	0x3feb71f14983d790              # double 0.85765899999999995
	.quad	0x3fb3be553ac4f7ec              # double 0.077122999999999997
	.quad	0x3fed35a426bb55ac              # double 0.91279799999999999
	.quad	0x3fc2a2d2fe3f35a0              # double 0.145594
	.quad	0x3fea8dd616f86a0a              # double 0.82981400000000005
	.quad	0x3fdaf761cbccf28c              # double 0.42134899999999997
	.quad	0x3fe22e770bd017db              # double 0.56817200000000001
	.quad	0x3fed949c6f36ef80              # double 0.92439099999999996
	.quad	0x3fcdf6b1a2a4db16              # double 0.23409099999999999
	.quad	0x3fef1c2c1b10fd7e              # double 0.97218899999999997
	.quad	0x3fe8f41aef6f8f04              # double 0.77979799999999999
	.quad	0x3fd1270b06c43f60              # double 0.26800800000000002
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	81                              # 0x51
	.quad	101                             # 0x65
	.quad	118                             # 0x76
	.quad	145                             # 0x91
	.quad	167                             # 0xa7
	.quad	187                             # 0xbb
	.quad	207                             # 0xcf
	.quad	222                             # 0xde
	.quad	244                             # 0xf4
	.quad	271                             # 0x10f
	.quad	288                             # 0x120
	.quad	311                             # 0x137
	.quad	333                             # 0x14d
	.quad	356                             # 0x164
	.quad	376                             # 0x178
	.quad	393                             # 0x189
	.quad	416                             # 0x1a0
	.quad	437                             # 0x1b5
	.quad	460                             # 0x1cc
	.quad	482                             # 0x1e2
	.quad	503                             # 0x1f7
	.quad	520                             # 0x208
	.quad	543                             # 0x21f
	.quad	564                             # 0x234
	.quad	578                             # 0x242
	.quad	595                             # 0x253
	.quad	616                             # 0x268
	.quad	641                             # 0x281
	.quad	668                             # 0x29c
	.quad	680                             # 0x2a8
	.quad	703                             # 0x2bf
	.quad	725                             # 0x2d5
	.quad	744                             # 0x2e8
	.quad	759                             # 0x2f7
	.quad	780                             # 0x30c
	.quad	801                             # 0x321
	.quad	821                             # 0x335
	.quad	847                             # 0x34f
	.quad	869                             # 0x365
	.quad	888                             # 0x378
	.quad	908                             # 0x38c
	.quad	927                             # 0x39f
	.quad	945                             # 0x3b1
	.quad	960                             # 0x3c0
	.quad	976                             # 0x3d0
	.quad	999                             # 0x3e7
	.quad	1014                            # 0x3f6
	.quad	1028                            # 0x404
	.quad	1050                            # 0x41a
	.quad	1064                            # 0x428
	.quad	1083                            # 0x43b
	.quad	1101                            # 0x44d
	.quad	1123                            # 0x463
	.quad	1138                            # 0x472
	.quad	1160                            # 0x488
	.quad	1177                            # 0x499
	.quad	1197                            # 0x4ad
	.quad	1219                            # 0x4c3
	.quad	1237                            # 0x4d5
	.quad	1249                            # 0x4e1
	.quad	1267                            # 0x4f3
	.quad	1288                            # 0x508
	.quad	1306                            # 0x51a
	.quad	1326                            # 0x52e
	.quad	1347                            # 0x543
	.quad	1363                            # 0x553
	.quad	1381                            # 0x565
	.quad	1404                            # 0x57c
	.quad	1420                            # 0x58c
	.quad	1445                            # 0x5a5
	.quad	1469                            # 0x5bd
	.quad	1482                            # 0x5ca
	.quad	1493                            # 0x5d5
	.quad	1514                            # 0x5ea
	.quad	1530                            # 0x5fa
	.quad	1555                            # 0x613
	.quad	1577                            # 0x629
	.quad	1595                            # 0x63b
	.quad	1622                            # 0x656
	.quad	1643                            # 0x66b
	.quad	1656                            # 0x678
	.quad	1672                            # 0x688
	.quad	1702                            # 0x6a6
	.quad	1723                            # 0x6bb
	.quad	1751                            # 0x6d7
	.quad	1769                            # 0x6e9
	.quad	1787                            # 0x6fb
	.quad	1804                            # 0x70c
	.quad	1827                            # 0x723
	.quad	1842                            # 0x732
	.quad	1865                            # 0x749
	.quad	1889                            # 0x761
	.quad	1907                            # 0x773
	.quad	1932                            # 0x78c
	.quad	1950                            # 0x79e
	.quad	1975                            # 0x7b7
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
