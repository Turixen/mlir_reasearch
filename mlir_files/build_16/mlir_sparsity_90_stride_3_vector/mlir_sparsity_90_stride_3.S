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
	.quad	999                             # 0x3e7
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	999                             # 0x3e7
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
	lui	a7, %hi(.L__constant_999xindex)
	addi	a7, a7, %lo(.L__constant_999xindex)
	lui	t0, %hi(.L__constant_999xf64)
	addi	t0, t0, %lo(.L__constant_999xf64)
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
	.quad	0x3fc61c475e6362a6              # double 0.172738
	.quad	0x3fed160d887ebf23              # double 0.90894200000000003
	.quad	0x3fe4e577531db446              # double 0.65301100000000001
	.quad	0x3fefba57eaa2a0a9              # double 0.99149699999999996
	.quad	0x3fe3cc76d117b528              # double 0.61870899999999995
	.quad	0x3fe9cb7f5a5332ad              # double 0.806091
	.quad	0x3fd6344806290eed              # double 0.346941
	.quad	0x3fe0b77186551937              # double 0.522393
	.quad	0x3fe9fac6045baf53              # double 0.81186199999999997
	.quad	0x3fe517c3d68405b4              # double 0.65915100000000004
	.quad	0x3fe4adfb506dd69d              # double 0.64623799999999998
	.quad	0x3fe515f2452c59fb              # double 0.65892899999999999
	.quad	0x3fa5ba6efc371da3              # double 0.042437999999999997
	.quad	0x3fe0f47304039abf              # double 0.52983999999999998
	.quad	0x3fcc35696e58a32f              # double 0.22037999999999999
	.quad	0x3febd6909aed56b0              # double 0.86994199999999999
	.quad	0x3fda4ec636b09635              # double 0.41105799999999998
	.quad	0x3fc78b1dd5d3dc8c              # double 0.18393300000000001
	.quad	0x3f9123810e8858ff              # double 0.016736999999999998
	.quad	0x3fe3ea7ef9db22d1              # double 0.62237500000000001
	.quad	0x3fd3affb04ee7c4a              # double 0.307616
	.quad	0x3fe4219eb6390c91              # double 0.629104
	.quad	0x3fe78b3d4ae429e1              # double 0.73574700000000004
	.quad	0x3fc42da554b8bef9              # double 0.15764300000000001
	.quad	0x3fe051e321a2e7f7              # double 0.509996
	.quad	0x3fdaf3f52fc2656b              # double 0.42114000000000001
	.quad	0x3fb40064a9cdc444              # double 0.078131000000000006
	.quad	0x3fbc73eee5258927              # double 0.11114400000000001
	.quad	0x3fd854e6e221c8a8              # double 0.38018200000000002
	.quad	0x3fde30a4e379b77c              # double 0.471719
	.quad	0x3feeae5bc87db2b3              # double 0.95878399999999996
	.quad	0x3fef7bb9496249a1              # double 0.98385299999999997
	.quad	0x3fe0fd4e09784ec6              # double 0.53092099999999998
	.quad	0x3fe651d8a5482385              # double 0.69749099999999997
	.quad	0x3fe2ed7c6fbd273d              # double 0.59148999999999996
	.quad	0x3fee4c76d117b528              # double 0.94683399999999995
	.quad	0x3fdb2c0e7bc3c5bd              # double 0.424564
	.quad	0x3fa7733a8a3f8983              # double 0.045801000000000001
	.quad	0x3fa1693c03bc4d23              # double 0.034006000000000002
	.quad	0x3fea5031055b8994              # double 0.82228900000000004
	.quad	0x3fc942d490e66cb1              # double 0.197352
	.quad	0x3feb30f49491f2dc              # double 0.84972599999999998
	.quad	0x3fd2ce4649906cca              # double 0.29383999999999999
	.quad	0x3fb17c1bda5119ce              # double 0.0683
	.quad	0x3fe482235b4edb2f              # double 0.64088599999999996
	.quad	0x3fd48522ea0fd3b3              # double 0.32062600000000002
	.quad	0x3fd6e89a88ace24c              # double 0.35794700000000002
	.quad	0x3fd1b56323bbc6eb              # double 0.276696
	.quad	0x3fe4e681a9b8cb8e              # double 0.653138
	.quad	0x3fdf1ec0b567557a              # double 0.48625200000000002
	.quad	0x3fe33c3c5bd0e12f              # double 0.60110300000000005
	.quad	0x3fea6e392e1ef73c              # double 0.82595499999999999
	.quad	0x3fd5c1c1d6cf850e              # double 0.339951
	.quad	0x3fe37c6327ed84d3              # double 0.60893399999999998
	.quad	0x3fd2be9856a37ac4              # double 0.292883
	.quad	0x3fbdbd1ed9dfdac7              # double 0.11616700000000001
	.quad	0x3fe17bd05af6c69b              # double 0.54636399999999996
	.quad	0x3fec7e260b2c83ed              # double 0.89039900000000005
	.quad	0x3fec22877ee4e26d              # double 0.87921499999999997
	.quad	0x3fefbdba0a526959              # double 0.99190999999999995
	.quad	0x3fe236a1e81cb46c              # double 0.56916900000000004
	.quad	0x3feea836eb4e9814              # double 0.95803400000000005
	.quad	0x3fe77264a16a4873              # double 0.73271399999999998
	.quad	0x3fa2fd5454152b0a              # double 0.037088999999999997
	.quad	0x3fea2a3cea6c1a05              # double 0.81765600000000005
	.quad	0x3fcd61f5be5d9e41              # double 0.22955200000000001
	.quad	0x3fd895f2452c59fb              # double 0.38415199999999999
	.quad	0x3faf243137b07076              # double 0.060823000000000002
	.quad	0x3fee07fed20296b3              # double 0.93847599999999998
	.quad	0x3fe28c6f7a0b5ed9              # double 0.57964300000000002
	.quad	0x3f94cb1897a67a53              # double 0.020306000000000001
	.quad	0x3fd48afc47e49b20              # double 0.32098300000000002
	.quad	0x3fd2d740c4156e26              # double 0.29438799999999998
	.quad	0x3fb0c63f141205bc              # double 0.065525
	.quad	0x3fe9153dea465a57              # double 0.78384299999999996
	.quad	0x3fb9c864883fd502              # double 0.100714
	.quad	0x3fed082f0e0a84be              # double 0.90724899999999997
	.quad	0x3fe3433f85510d39              # double 0.60195900000000002
	.quad	0x3fe82ca9ac365450              # double 0.75545200000000001
	.quad	0x3fc4ea28fe260b2d              # double 0.16339600000000001
	.quad	0x3fe825a250f84018              # double 0.75459399999999999
	.quad	0x3fc3cdc443914f48              # double 0.15471699999999999
	.quad	0x3fd94d1e96c3fc44              # double 0.39533200000000002
	.quad	0x3fd9474107314ca9              # double 0.39497399999999999
	.quad	0x3fe32f123c42a66e              # double 0.59949600000000003
	.quad	0x3fdbace24bba12b6              # double 0.43242700000000001
	.quad	0x3f990257c914b168              # double 0.024423
	.quad	0x3fec5b5525cc4263              # double 0.88614899999999996
	.quad	0x3feae3e07a28bb0a              # double 0.84031699999999998
	.quad	0x3fe2d974e65bea0c              # double 0.58904500000000004
	.quad	0x3fe02d9ad85dfa87              # double 0.50556699999999999
	.quad	0x3fe43549f94855da              # double 0.63150499999999998
	.quad	0x3fc9eda661283904              # double 0.202565
	.quad	0x3fee91d57ff9b563              # double 0.95530199999999998
	.quad	0x3fea9d755bccaf71              # double 0.83172100000000004
	.quad	0x3fd50c026cc1ca3a              # double 0.32885799999999998
	.quad	0x3fef68943e100608              # double 0.98151600000000005
	.quad	0x3fe2c4e2f37fbefd              # double 0.586534
	.quad	0x3fed4d7add15f02c              # double 0.91570799999999996
	.quad	0x3fd703211cb039ef              # double 0.359566
	.quad	0x3fd9005814940bbb              # double 0.39064599999999999
	.quad	0x3fc2bd44998d0460              # double 0.146401
	.quad	0x3fadd18090b417ca              # double 0.058238999999999999
	.quad	0x3fc416ce789e774f              # double 0.156946
	.quad	0x3fd4ac083126e979              # double 0.32300000000000001
	.quad	0x3fd6cbb7f9d6f113              # double 0.356184
	.quad	0x3fec31487768166a              # double 0.88101600000000002
	.quad	0x3fdffbd6a593a2e0              # double 0.49974600000000002
	.quad	0x3faac061847f5621              # double 0.052248999999999997
	.quad	0x3fde52f7f498c3b1              # double 0.47381400000000001
	.quad	0x3fbff3bea91d9b1b              # double 0.12481299999999999
	.quad	0x3fdc1b25f633ce64              # double 0.43915700000000002
	.quad	0x3fe367ec7863beec              # double 0.60643599999999998
	.quad	0x3fea4cb5bb384fd3              # double 0.82186400000000004
	.quad	0x3fe77776c4827b70              # double 0.73333300000000001
	.quad	0x3fdce7c8d195896a              # double 0.45164700000000002
	.quad	0x3fbbef49cf56eac8              # double 0.10911999999999999
	.quad	0x3fef56a7ac81d3aa              # double 0.97932799999999998
	.quad	0x3fe52d0a24463066              # double 0.661748
	.quad	0x3fc0977c88e79aae              # double 0.12962299999999999
	.quad	0x3fa5fb506dd69d30              # double 0.042932999999999999
	.quad	0x3fe94f95d4e8fb01              # double 0.79096500000000003
	.quad	0x3fa1b068123810e9              # double 0.034549000000000003
	.quad	0x3feadce7cd035372              # double 0.83946600000000005
	.quad	0x3fc0495e17e34b94              # double 0.12723899999999999
	.quad	0x3fe4932f87ad080b              # double 0.64296699999999996
	.quad	0x3fd63bf727136a40              # double 0.34741
	.quad	0x3fdc1ee675147f13              # double 0.439386
	.quad	0x3fd680baa582dbe8              # double 0.351607
	.quad	0x3fef3777d0f1f57b              # double 0.97552099999999997
	.quad	0x3fd649ecb31c219f              # double 0.34826200000000002
	.quad	0x3fe330489d27c393              # double 0.59964399999999995
	.quad	0x3fd6e7c8d195896a              # double 0.35789700000000002
	.quad	0x3fd8f4384ba0e842              # double 0.38990599999999997
	.quad	0x3fd923315d701d9f              # double 0.39277299999999998
	.quad	0x3fe511e85fd04a30              # double 0.65843600000000002
	.quad	0x3f742917507e9d95              # double 0.0049220000000000002
	.quad	0x3fe43d1676640a6c              # double 0.63245700000000005
	.quad	0x3fdd21709310129d              # double 0.45516600000000002
	.quad	0x3fc6bd1244a6223e              # double 0.177645
	.quad	0x3fe2c54bcf0b6b6e              # double 0.58658399999999999
	.quad	0x3fd717f84449dbec              # double 0.36083799999999999
	.quad	0x3fecd1ac9afe1da8              # double 0.90059500000000003
	.quad	0x3fee00a17b0f6ad7              # double 0.93757699999999999
	.quad	0x3fb9dcd7060bb2bc              # double 0.101026
	.quad	0x3fc2e3b46fdeb52d              # double 0.14757400000000001
	.quad	0x3fe864fb97bb7308              # double 0.76232699999999998
	.quad	0x3fb3127f5e84f095              # double 0.074500999999999998
	.quad	0x3fd248f53c579f23              # double 0.28570299999999998
	.quad	0x3fefb161a1db877b              # double 0.99040300000000003
	.quad	0x3fd984a0e410b631              # double 0.39872000000000002
	.quad	0x3fd8b97bb7308356              # double 0.38632100000000003
	.quad	0x3fdeeab367a0f909              # double 0.48307499999999998
	.quad	0x3fb4b2a6b0d95140              # double 0.080851000000000006
	.quad	0x3fef1c475e6362a6              # double 0.97220200000000001
	.quad	0x3fc7de481f53825e              # double 0.186471
	.quad	0x3fb1fb0d51f81a58              # double 0.070236999999999994
	.quad	0x3fe5fbd6a593a2e0              # double 0.68699200000000005
	.quad	0x3fe488893b7d8490              # double 0.64166699999999999
	.quad	0x3fd367be553ac4f8              # double 0.303207
	.quad	0x3fe94e9813879c41              # double 0.79084399999999999
	.quad	0x3fc5b456b441bb8c              # double 0.16956599999999999
	.quad	0x3fe5e2089e34330d              # double 0.68384199999999995
	.quad	0x3fd54523f67f4dbe              # double 0.332345
	.quad	0x3feed286b59146e5              # double 0.96319900000000002
	.quad	0x3fe1072f33ca31e8              # double 0.53212700000000002
	.quad	0x3fe5e0e736049ecb              # double 0.68370399999999998
	.quad	0x3fedf67d34df04de              # double 0.93633900000000003
	.quad	0x3f8e9531550ca1cf              # double 0.014933
	.quad	0x3feb68ff327aa68f              # double 0.85656699999999997
	.quad	0x3fca7daa4fca42af              # double 0.20696000000000001
	.quad	0x3fe661e2de870974              # double 0.69944899999999999
	.quad	0x3fefe82949a56580              # double 0.99709000000000003
	.quad	0x3fd0939eadd590c1              # double 0.25901000000000002
	.quad	0x3fc4fe47991bc558              # double 0.16400999999999999
	.quad	0x3fdb5fd47bedb728              # double 0.42772399999999999
	.quad	0x3fe99b4784230fd0              # double 0.80020500000000006
	.quad	0x3fe01b0ee49f5169              # double 0.50330299999999994
	.quad	0x3fed307075b3e143              # double 0.91216299999999995
	.quad	0x3fef8ecd8dbcec85              # double 0.986182
	.quad	0x3fe3ec1e364bec68              # double 0.62257300000000004
	.quad	0x3fede32c1f42bb66              # double 0.93398099999999995
	.quad	0x3fceb1b36bd2b6f2              # double 0.23979800000000001
	.quad	0x3fea29bae46cfc83              # double 0.81759400000000004
	.quad	0x3fec0a7c5ac471b4              # double 0.87627999999999994
	.quad	0x3fe803621fafc8b0              # double 0.750413
	.quad	0x3fe50a99b6f5caf3              # double 0.65754400000000002
	.quad	0x3fd72c94b380cb6c              # double 0.36209599999999997
	.quad	0x3fe43fc0096feb4a              # double 0.63278199999999996
	.quad	0x3fd4f2f123c42a67              # double 0.32732800000000001
	.quad	0x3feda02fb5d03105              # double 0.92580399999999996
	.quad	0x3fe6b22af5771002              # double 0.70924900000000002
	.quad	0x3fd7b5cbff47735c              # double 0.37047099999999999
	.quad	0x3fea7e28240b7803              # double 0.82789999999999997
	.quad	0x3feeaff8ec0f8833              # double 0.95898099999999997
	.quad	0x3feae7caea747d80              # double 0.84079499999999996
	.quad	0x3fd5bcd78c436fc1              # double 0.33965099999999998
	.quad	0x3fe2401e68a0d34a              # double 0.57032700000000003
	.quad	0x3fa4d141a6937d20              # double 0.040659000000000001
	.quad	0x3fd1686e7e62dc6e              # double 0.27199899999999999
	.quad	0x3fe6d1a21ea35936              # double 0.71309
	.quad	0x3fd736e71cda2b5a              # double 0.36272599999999999
	.quad	0x3fe59bb8c32a8c9c              # double 0.67525900000000005
	.quad	0x3fda18dac258d584              # double 0.40776699999999999
	.quad	0x3fe5cde19fc2a887              # double 0.68138200000000004
	.quad	0x3fce6bce8533b107              # double 0.23766499999999999
	.quad	0x3f7fc9ff92f2b66b              # double 0.0077609999999999997
	.quad	0x3fc1baba7b9170d6              # double 0.138511
	.quad	0x3feb5b70691ea78b              # double 0.85491200000000001
	.quad	0x3fb4c75c4a83b1d1              # double 0.081167000000000003
	.quad	0x3fc87c8d1958969a              # double 0.191301
	.quad	0x3fe3c8a7a41e57da              # double 0.61824400000000002
	.quad	0x3fbca116659d12cb              # double 0.111833
	.quad	0x3fe66ae7d566cf42              # double 0.70055000000000001
	.quad	0x3f90f51ac9afe1da              # double 0.016559999999999998
	.quad	0x3fe63c31df761cbd              # double 0.69484800000000002
	.quad	0x3fe71246bf01322f              # double 0.72098099999999998
	.quad	0x3fde2bba98eda22f              # double 0.47141899999999998
	.quad	0x3fd382949a5657fb              # double 0.30484499999999998
	.quad	0x3fea35aa715831f0              # double 0.81905099999999997
	.quad	0x3fc5f53825e13b19              # double 0.171546
	.quad	0x3f8d33d29563a9f4              # double 0.014259000000000001
	.quad	0x3fb6602c9081c2e3              # double 0.087404999999999997
	.quad	0x3fbd4b7b28954a80              # double 0.11443300000000001
	.quad	0x3fe0028a1dfb938a              # double 0.50031000000000003
	.quad	0x3fe1f807789a4591              # double 0.561527
	.quad	0x3fedc9a5657fb69a              # double 0.93086500000000005
	.quad	0x3fa23fab10ba6267              # double 0.035642
	.quad	0x3f7015c209246bf0              # double 0.0039269999999999999
	.quad	0x3fefc9795b35b0bc              # double 0.993344
	.quad	0x3fe419ef954eb13e              # double 0.628166
	.quad	0x3fec5f7403dddb12              # double 0.886652
	.quad	0x3fbb81733226c3b9              # double 0.107444
	.quad	0x3fedd4d4024b33db              # double 0.93223
	.quad	0x3fe2b8de6ddf00ac              # double 0.585067
	.quad	0x3fe24ef240fa9c13              # double 0.57213700000000001
	.quad	0x3fe5f40c4156e265              # double 0.68604100000000001
	.quad	0x3fea1b52007dd441              # double 0.81583499999999998
	.quad	0x3fe8a5ca29845dc8              # double 0.77023799999999998
	.quad	0x3fc384ba0e842742              # double 0.15248800000000001
	.quad	0x3fc355821294573a              # double 0.15104699999999999
	.quad	0x3fedabb6672fba02              # double 0.92721100000000001
	.quad	0x3fe0de5aff2a172b              # double 0.52714300000000003
	.quad	0x3fead3bf2f555821              # double 0.83834799999999998
	.quad	0x3fe1db3bfb58d152              # double 0.55801199999999995
	.quad	0x3fd7bfc2224edf61              # double 0.37107899999999999
	.quad	0x3fde2da98676a726              # double 0.47153699999999998
	.quad	0x3fcf083558a76102              # double 0.24243799999999999
	.quad	0x3fe7626d4801f751              # double 0.730765
	.quad	0x3fec56238da3c212              # double 0.88551500000000005
	.quad	0x3fdc3a19008205ff              # double 0.44104599999999999
	.quad	0x3f7bd1ed9dfdac69              # double 0.0067920000000000003
	.quad	0x3fecf3e24febd09e              # double 0.90477099999999999
	.quad	0x3fe3d549731098d4              # double 0.61978599999999995
	.quad	0x3fe5b823c85c24c4              # double 0.678728
	.quad	0x3fdb02b841248d7e              # double 0.422041
	.quad	0x3fc7f97aaac1094a              # double 0.187301
	.quad	0x3fe90214ad362e90              # double 0.78150399999999998
	.quad	0x3fb65d18090b417d              # double 0.087358000000000005
	.quad	0x3fedca558ea7ce10              # double 0.93094900000000003
	.quad	0x3fabf0fe047d3d43              # double 0.054573000000000003
	.quad	0x3fe52600b0292817              # double 0.66088899999999995
	.quad	0x3fea8cb295e9e1b1              # double 0.82967500000000005
	.quad	0x3fe096c3fc43b2dd              # double 0.51840399999999998
	.quad	0x3fcfdb8fde2ef4e0              # double 0.248888
	.quad	0x3f97ef177a7008a7              # double 0.023373000000000001
	.quad	0x3fbcbcad9ad85dfb              # double 0.11225400000000001
	.quad	0x3fee2116659d12cb              # double 0.94153900000000001
	.quad	0x3fe00eef1bac2df1              # double 0.50182300000000002
	.quad	0x3fe9cf91a32b12d3              # double 0.80658799999999997
	.quad	0x3fc202e2328f9f45              # double 0.140713
	.quad	0x3fd6098d477bbf94              # double 0.344333
	.quad	0x3fd603b3e9a6f827              # double 0.343976
	.quad	0x3fdec6c11a11233e              # double 0.480881
	.quad	0x3fe236c3760bf5d8              # double 0.56918500000000005
	.quad	0x3fcb76ddaceee0f4              # double 0.21456500000000001
	.quad	0x3fdbfa76534373f3              # double 0.437162
	.quad	0x3fe3ad72ffd1dcd7              # double 0.614923
	.quad	0x3fd5ac68a936c58f              # double 0.338648
	.quad	0x3fe90c3b0c4588a0              # double 0.78274299999999996
	.quad	0x3fd5caf2d7f950b9              # double 0.34051199999999998
	.quad	0x3fea7457c0b13598              # double 0.82670200000000005
	.quad	0x3fe2ff43419e3001              # double 0.59365999999999997
	.quad	0x3fd606b37867f0aa              # double 0.34415899999999999
	.quad	0x3fc8b87bdcf0307f              # double 0.19313
	.quad	0x3fc55b1c864883fd              # double 0.16684299999999999
	.quad	0x3fee6e525892684d              # double 0.95096700000000001
	.quad	0x3fd28672756861e9              # double 0.28945599999999999
	.quad	0x3fc131d2e0e30447              # double 0.13433300000000001
	.quad	0x3fca5425f202107b              # double 0.20569299999999999
	.quad	0x3fef6d00b45ae600              # double 0.98205600000000004
	.quad	0x3fe47e132b55ef20              # double 0.64039000000000001
	.quad	0x3fea2131a8ef77f2              # double 0.81655199999999994
	.quad	0x3fd5274e22a2c237              # double 0.33052399999999998
	.quad	0x3feede82d7b634db              # double 0.96466200000000001
	.quad	0x3fefd158b827fa1a              # double 0.99430499999999999
	.quad	0x3fe4add7a99fa11b              # double 0.64622100000000005
	.quad	0x3fedb9192641b329              # double 0.92884500000000003
	.quad	0x3fdc77d523b3636f              # double 0.44481399999999999
	.quad	0x3fcd160956c0d6f5              # double 0.22723499999999999
	.quad	0x3fe617c1bda5119d              # double 0.69040000000000001
	.quad	0x3fed6ad0c3d25248              # double 0.91928900000000002
	.quad	0x3fec8b73d188f430              # double 0.89202300000000001
	.quad	0x3fe6f0b06c43f5f9              # double 0.71688099999999999
	.quad	0x3fcb566490a350d3              # double 0.21357400000000001
	.quad	0x3fe979f23465625a              # double 0.79613599999999995
	.quad	0x3fcc662bae03b3ea              # double 0.22186800000000001
	.quad	0x3fea246bf01322f2              # double 0.81694599999999995
	.quad	0x3fd4c21187e7c06e              # double 0.32434499999999999
	.quad	0x3fece28cbd1244a6              # double 0.90265499999999999
	.quad	0x3fd6ceb356da0169              # double 0.35636600000000002
	.quad	0x3fe91e94ab1d4f9c              # double 0.78498299999999998
	.quad	0x3fdd1bd1ed9dfdac              # double 0.45482299999999998
	.quad	0x3fe758d36b4c7f35              # double 0.72959300000000005
	.quad	0x3fe0795d4e8fb00c              # double 0.51481500000000002
	.quad	0x3fed1dd5d3dc8b87              # double 0.90989200000000003
	.quad	0x3fa3b60285ec3dab              # double 0.038497999999999998
	.quad	0x3fdaebd9018e7579              # double 0.42064499999999999
	.quad	0x3fcbe0ef99806f26              # double 0.217802
	.quad	0x3feddca4b124d09a              # double 0.93318400000000001
	.quad	0x3fc662888b545c79              # double 0.17488200000000001
	.quad	0x3fe990dbf0563ed1              # double 0.798933
	.quad	0x3fe8046c764adff8              # double 0.75053999999999998
	.quad	0x3fe4fe670e2c12ae              # double 0.65605500000000005
	.quad	0x3fe774d9c6b0531a              # double 0.73301400000000005
	.quad	0x3fd1a6612839042e              # double 0.27578000000000003
	.quad	0x3fe402dbe7f2c301              # double 0.62534900000000004
	.quad	0x3f938b8ae31d712a              # double 0.019087
	.quad	0x3fe45ad31fcd24e1              # double 0.63608699999999996
	.quad	0x3fe8c1b54195cc85              # double 0.77364599999999994
	.quad	0x3fd22ababead4f59              # double 0.283858
	.quad	0x3fba23e186983516              # double 0.10211000000000001
	.quad	0x3fc1ff0cbaf965b2              # double 0.140596
	.quad	0x3fca3e425aee6320              # double 0.20502500000000001
	.quad	0x3fbc4e618ce2d1f2              # double 0.110571
	.quad	0x3fc5117b5286b591              # double 0.16459599999999999
	.quad	0x3fe665f0f5a1016d              # double 0.69994400000000001
	.quad	0x3fd89d6adf71eaff              # double 0.38460800000000001
	.quad	0x3fdaa604e1e71045              # double 0.416383
	.quad	0x3fd6523f67f4dbe0              # double 0.34877000000000002
	.quad	0x3fefa3486f049a99              # double 0.98868199999999994
	.quad	0x3fd6bcb1cc964628              # double 0.355267
	.quad	0x3fc81da7b0b39192              # double 0.18840499999999999
	.quad	0x3febe638433d6c72              # double 0.87185299999999999
	.quad	0x3fe102ababead4f6              # double 0.53157600000000005
	.quad	0x3fe56d20296b3355              # double 0.66957100000000003
	.quad	0x3fbd1394317acc4f              # double 0.11358
	.quad	0x3fc9029ae4f33440              # double 0.19539200000000001
	.quad	0x3fd5bf7ad4b2745c              # double 0.339812
	.quad	0x3fd6e6c4c5974e66              # double 0.35783500000000001
	.quad	0x3fe8f284167a95c8              # double 0.77960399999999996
	.quad	0x3fe66670e2c12ad8              # double 0.70000499999999999
	.quad	0x3fe4f901083dbc23              # double 0.65539599999999998
	.quad	0x3fe3b606b7aa25d9              # double 0.61597000000000002
	.quad	0x3fd7db8bac710cb3              # double 0.37277500000000002
	.quad	0x3fe8390a7829068a              # double 0.75696300000000005
	.quad	0x3fea55cd91eeaa6d              # double 0.82297399999999998
	.quad	0x3fe300bed740c415              # double 0.59384099999999995
	.quad	0x3fd202d59d55e6bc              # double 0.28142299999999998
	.quad	0x3fdfc6583e8576cd              # double 0.49648100000000001
	.quad	0x3fe3520afa2f05a7              # double 0.603765
	.quad	0x3fe48ff10ecb74de              # double 0.642571
	.quad	0x3fd012018a43bb41              # double 0.25109900000000002
	.quad	0x3fd895f2452c59fb              # double 0.38415199999999999
	.quad	0x3fd648f10a99b6f6              # double 0.34820200000000001
	.quad	0x3fad5219a847b246              # double 0.057266999999999998
	.quad	0x3fc52d0a24463066              # double 0.165437
	.quad	0x3febc9f2fdb8fde3              # double 0.86840200000000001
	.quad	0x3feb50e779207d4e              # double 0.853626
	.quad	0x3fb817dae81882ae              # double 0.094114000000000003
	.quad	0x3fabba12b5e529bb              # double 0.054154000000000001
	.quad	0x3fe0be6c4c5974e6              # double 0.52324499999999996
	.quad	0x3fed8257c914b168              # double 0.92216100000000001
	.quad	0x3fdfe46cfc829cfe              # double 0.49831700000000001
	.quad	0x3fd2e7ab7564302b              # double 0.29538999999999999
	.quad	0x3fd7451761459536              # double 0.36359200000000003
	.quad	0x3feba14f0520d131              # double 0.86344100000000001
	.quad	0x3fc15c31593e5fb7              # double 0.135626
	.quad	0x3fe88ce703afb7e9              # double 0.76719999999999999
	.quad	0x3fe981cd5f99c38b              # double 0.797095
	.quad	0x3fe7d26fa3fcc9eb              # double 0.74443800000000004
	.quad	0x3fd460d0247021d1              # double 0.318409
	.quad	0x3fe08c0485a0be51              # double 0.517092
	.quad	0x3fe5851654d61b2a              # double 0.67249599999999998
	.quad	0x3fdff6be37de939f              # double 0.49943500000000002
	.quad	0x3fe0c944ed6fda83              # double 0.52456899999999995
	.quad	0x3fe667f0aa21a71a              # double 0.70018800000000003
	.quad	0x3fec127913e81451              # double 0.87725500000000001
	.quad	0x3fdffd976ff3ade2              # double 0.49985299999999999
	.quad	0x3fdd97b7414a4d2b              # double 0.46238499999999999
	.quad	0x3fe94df69878316a              # double 0.790767
	.quad	0x3fc5b5393250b524              # double 0.16959299999999999
	.quad	0x3fee323dd54da4cf              # double 0.94363300000000006
	.quad	0x3fd555bccaf709b7              # double 0.33335799999999999
	.quad	0x3fe57c73eee52589              # double 0.67144199999999998
	.quad	0x3fe1c4bb1af3a14d              # double 0.55526500000000001
	.quad	0x3fef70cbaf965b21              # double 0.98251900000000003
	.quad	0x3fef356b87379746              # double 0.975271
	.quad	0x3fec254c55432874              # double 0.87955300000000002
	.quad	0x3fb4b5ed8d36b4c8              # double 0.080901000000000001
	.quad	0x3fd60746455eaee2              # double 0.344194
	.quad	0x3fe0241a261bf37c              # double 0.50440700000000005
	.quad	0x3feaa91105e1c151              # double 0.83313800000000005
	.quad	0x3fef56c7219220ff              # double 0.97934299999999996
	.quad	0x3fb5d6f112fd32c6              # double 0.085310999999999997
	.quad	0x3fd54c729f59ccfb              # double 0.332791
	.quad	0x3fe875d9a0f0a5f0              # double 0.76438600000000001
	.quad	0x3fec17c80841ede1              # double 0.87790299999999999
	.quad	0x3fef76f6d7625205              # double 0.98327200000000003
	.quad	0x3fe2c562e09fe868              # double 0.58659499999999998
	.quad	0x3feedd0b73d188f4              # double 0.96448299999999997
	.quad	0x3fc467e846a5d6bf              # double 0.15942100000000001
	.quad	0x3fd24794ea077037              # double 0.28561900000000001
	.quad	0x3fe6b7739f340d4e              # double 0.70989400000000002
	.quad	0x3fdeb5c7cd898b2f              # double 0.47984500000000002
	.quad	0x3feb90a569b17482              # double 0.86140700000000003
	.quad	0x3fbed783dff3f0fe              # double 0.120476
	.quad	0x3fd8801b43526528              # double 0.38281900000000002
	.quad	0x3fd777681669ced1              # double 0.36666300000000002
	.quad	0x3fe23a0407cc7d1c              # double 0.56958200000000003
	.quad	0x3fbada4484944ed7              # double 0.104893
	.quad	0x3fee5e2046c764ae              # double 0.94899
	.quad	0x3feb622813448063              # double 0.85573200000000005
	.quad	0x3fac33d6c7219221              # double 0.055083
	.quad	0x3fe26b50b0f27bb3              # double 0.5756
	.quad	0x3fe276c69b5a63fa              # double 0.57699900000000004
	.quad	0x3fe3e0a41a261bf3              # double 0.62117199999999995
	.quad	0x3fd9d074213a0c6b              # double 0.40334799999999998
	.quad	0x3fde3abc947064ed              # double 0.472335
	.quad	0x3fd2415b1422ccb4              # double 0.28523900000000002
	.quad	0x3fc58f81e8a2ec29              # double 0.16844200000000001
	.quad	0x3fd7b9a176ddacef              # double 0.37070500000000001
	.quad	0x3fe74b2d905c0336              # double 0.72792699999999999
	.quad	0x3fed6731d2e0e304              # double 0.91884699999999996
	.quad	0x3fe8d91eeaa6d267              # double 0.77650399999999997
	.quad	0x3fd2a25529fe004b              # double 0.29115799999999997
	.quad	0x3f832830a0b1bbcf              # double 0.0093539999999999994
	.quad	0x3fb62e2b8c75c4a8              # double 0.086641999999999997
	.quad	0x3fd12452c59fb1e2              # double 0.26784200000000002
	.quad	0x3fdc49e01de26916              # double 0.44200899999999999
	.quad	0x3fdf50331e3a7daa              # double 0.48926999999999998
	.quad	0x3fcf94317acc4ef9              # double 0.24671000000000001
	.quad	0x3feb5c209246bf01              # double 0.85499599999999998
	.quad	0x3fdf76ea4228997c              # double 0.49163299999999999
	.quad	0x3fe5d24e160d887f              # double 0.68192200000000003
	.quad	0x3fe624db163baba8              # double 0.69199900000000003
	.quad	0x3fecca6a875d56f3              # double 0.89970899999999998
	.quad	0x3febe95faa8a82a5              # double 0.87223799999999996
	.quad	0x3fc95ea67e846a5d              # double 0.19820099999999999
	.quad	0x3fc96bebe1650a46              # double 0.198606
	.quad	0x3fe87ace67d77fae              # double 0.76499099999999998
	.quad	0x3fca60bb2bba98ee              # double 0.20607700000000001
	.quad	0x3fecc85c24c404a7              # double 0.89945799999999998
	.quad	0x3fe1435efa615a8e              # double 0.53947400000000001
	.quad	0x3fe7fd1dcd7060bb              # double 0.74964799999999998
	.quad	0x3fd530f8c64fdb0a              # double 0.33111400000000002
	.quad	0x3fe35c69f8c21e1d              # double 0.60503099999999999
	.quad	0x3fe073fd933e35c6              # double 0.51415900000000003
	.quad	0x3fea360d0247021d              # double 0.81909799999999999
	.quad	0x3fe85805e5f30e80              # double 0.760745
	.quad	0x3fcd107746887a8d              # double 0.22706499999999999
	.quad	0x3fe59c2a02320968              # double 0.67531300000000005
	.quad	0x3fd1971c10d7be98              # double 0.27484799999999998
	.quad	0x3fe0baf102363b25              # double 0.52281999999999995
	.quad	0x3fe34054ef459d99              # double 0.601603
	.quad	0x3fb15f3519bd4068              # double 0.067859000000000003
	.quad	0x3fe165e2478854ce              # double 0.54368700000000003
	.quad	0x3fa1a9b8cb8e086c              # double 0.034498000000000001
	.quad	0x3fcb442c7fbacb43              # double 0.21301800000000001
	.quad	0x3fe4662fdfc19c17              # double 0.63747399999999999
	.quad	0x3fea0e1f7d73c925              # double 0.81422399999999995
	.quad	0x3fd46323bbc6eb0b              # double 0.31855099999999997
	.quad	0x3fe60bd230b9dc2f              # double 0.68894299999999997
	.quad	0x3fee836006d0d499              # double 0.95353699999999997
	.quad	0x3fed53fc0096feb5              # double 0.91650200000000004
	.quad	0x3fb38b47c73eee52              # double 0.076343999999999995
	.quad	0x3fde583621fafc8b              # double 0.474134
	.quad	0x3fef31cc96462802              # double 0.97482899999999995
	.quad	0x3fde1a9fbe76c8b4              # double 0.47037499999999999
	.quad	0x3fdfe032db1e9f27              # double 0.49805899999999997
	.quad	0x3fc9a0f9096bb98c              # double 0.20022499999999999
	.quad	0x3fe0d6861e92923e              # double 0.52618699999999996
	.quad	0x3fe4568405b39e28              # double 0.63556100000000004
	.quad	0x3fe5c6d612c6ac21              # double 0.68052199999999996
	.quad	0x3febd972cd7cf5f5              # double 0.87029400000000001
	.quad	0x3fecf3882278d0cc              # double 0.90472799999999997
	.quad	0x3fe573bea91d9b1b              # double 0.67037899999999995
	.quad	0x3feacc0df58c08b7              # double 0.83740899999999996
	.quad	0x3fb478e9f6a93f29              # double 0.079969999999999999
	.quad	0x3fdc050374ff865d              # double 0.43780599999999997
	.quad	0x3fc5e8e60807357e              # double 0.17116999999999999
	.quad	0x3fee0123810e8859              # double 0.937639
	.quad	0x3fefe7ee9142b303              # double 0.997062
	.quad	0x3fe0b152f3c2dadc              # double 0.52164600000000005
	.quad	0x3f9f737da61e0c5b              # double 0.030714000000000002
	.quad	0x3fed2d77318fc505              # double 0.91180000000000005
	.quad	0x3fc5b7952d234eba              # double 0.16966500000000001
	.quad	0x3feed5c52e72da12              # double 0.96359499999999998
	.quad	0x3fd5aa4766c6de76              # double 0.33851799999999999
	.quad	0x3fec8a137f38c543              # double 0.89185499999999995
	.quad	0x3f99baa1511dffc5              # double 0.025125999999999999
	.quad	0x3fe2d29563a9f384              # double 0.58820600000000001
	.quad	0x3fca74c8ffb8b264              # double 0.20668900000000001
	.quad	0x3fc68709741d084f              # double 0.17599600000000001
	.quad	0x3fcac02f2f987400              # double 0.20899000000000001
	.quad	0x3fd518a43bb40b35              # double 0.32962900000000001
	.quad	0x3fd30d349be8ff32              # double 0.29768099999999997
	.quad	0x3fe0ff4128bf3beb              # double 0.53115900000000005
	.quad	0x3fb37e0ac7da1ec5              # double 0.076142000000000001
	.quad	0x3fdc49ba5e353f7d              # double 0.442
	.quad	0x3fee7aca36199781              # double 0.95248900000000003
	.quad	0x3fe92e9ee45c358b              # double 0.786941
	.quad	0x3fed53543aeab799              # double 0.91642199999999996
	.quad	0x3fe7f36cdf266ba5              # double 0.74846500000000005
	.quad	0x3fb4e789e774eebf              # double 0.081657999999999994
	.quad	0x3fe4e37585be1a82              # double 0.65276599999999996
	.quad	0x3fed435ce1826677              # double 0.91447299999999998
	.quad	0x3fccd8dbcec84f90              # double 0.22536800000000001
	.quad	0x3fe24cc89b0ee49f              # double 0.57187299999999996
	.quad	0x3fed26138fffbce4              # double 0.91089799999999998
	.quad	0x3fcc82e87d2c7b89              # double 0.222745
	.quad	0x3fe2d675579af188              # double 0.58867899999999995
	.quad	0x3feddbf26f1dc50d              # double 0.93309900000000001
	.quad	0x3fc475f6fd21ff2e              # double 0.15984999999999999
	.quad	0x3fdfccc46950fc72              # double 0.49687300000000001
	.quad	0x3fd3b502ababead5              # double 0.307923
	.quad	0x3fe363992c8c5005              # double 0.605908
	.quad	0x3fbc78fabda0dfdf              # double 0.111221
	.quad	0x3fc05ec3dab5c39c              # double 0.12789200000000001
	.quad	0x3fefdb8348f53c58              # double 0.99554600000000004
	.quad	0x3feb0ef77f27fe4c              # double 0.84557700000000002
	.quad	0x3fee8012dfd694cd              # double 0.95313400000000004
	.quad	0x3fe056da0168b5cc              # double 0.510602
	.quad	0x3fed804b7f5a5333              # double 0.92191100000000004
	.quad	0x3fede43ed959a30a              # double 0.93411200000000005
	.quad	0x3fe4d9b1b79d909f              # double 0.65157399999999999
	.quad	0x3fe781b003686a4d              # double 0.73458100000000004
	.quad	0x3fe4b4a44c7b02d6              # double 0.64705100000000004
	.quad	0x3fe8f3882278d0cc              # double 0.77972799999999997
	.quad	0x3fea94141e9af5ba              # double 0.83057599999999998
	.quad	0x3fe22a582dbe7f2c              # double 0.56766899999999998
	.quad	0x3fccca0c282c6ef4              # double 0.224916
	.quad	0x3fd647e49b1fab97              # double 0.348138
	.quad	0x3fd3dd2f1a9fbe77              # double 0.31037500000000001
	.quad	0x3f8cefaa4766c6de              # double 0.014128999999999999
	.quad	0x3fdec37a3db3bfb6              # double 0.48068100000000002
	.quad	0x3fd6daa92e62131b              # double 0.35709600000000002
	.quad	0x3fe1bca5375c8da0              # double 0.55427800000000005
	.quad	0x3fe6ccab3edd8b61              # double 0.71248400000000001
	.quad	0x3fab9e060fe47992              # double 0.053940000000000002
	.quad	0x3f7c5931ca7d6734              # double 0.0069210000000000001
	.quad	0x3fe18be2f7b17ce5              # double 0.54832599999999998
	.quad	0x3fede81ecd4aa10e              # double 0.934585
	.quad	0x3fe7f442c7fbacb4              # double 0.74856699999999998
	.quad	0x3fea946a1a500d5f              # double 0.83061700000000005
	.quad	0x3fdd5425f202107b              # double 0.45826099999999997
	.quad	0x3fe7343d89ce4a7b              # double 0.72512699999999997
	.quad	0x3fe6e92923e5b856              # double 0.71596199999999999
	.quad	0x3fea5c1e7967caea              # double 0.82374499999999995
	.quad	0x3fd03b0813cab820              # double 0.25360300000000002
	.quad	0x3feea2706d506573              # double 0.95732899999999999
	.quad	0x3fe3fee6fb4c3c19              # double 0.62486600000000003
	.quad	0x3fa392189bd8383b              # double 0.038224000000000001
	.quad	0x3fe2aae8e1d6494d              # double 0.58336299999999996
	.quad	0x3fdd5ba2be0589ad              # double 0.45871800000000001
	.quad	0x3fe47c610f0e90bc              # double 0.64018299999999995
	.quad	0x3fd364a16a487336              # double 0.30301699999999998
	.quad	0x3fc62b734b51372a              # double 0.17320099999999999
	.quad	0x3fdb3083558a7610              # double 0.42483599999999999
	.quad	0x3fbb73affb04ee7c              # double 0.107234
	.quad	0x3fe1a9a1b9f98b72              # double 0.55195700000000003
	.quad	0x3fb4be0ded288ce7              # double 0.081025
	.quad	0x3fea7646ae3a3a8e              # double 0.82693799999999995
	.quad	0x3fe17e60c38f3669              # double 0.54667699999999997
	.quad	0x3fe8cda4ce8101f3              # double 0.77510299999999999
	.quad	0x3fee75a5332acfb7              # double 0.95186099999999996
	.quad	0x3fcd1a5ca29845dd              # double 0.22736700000000001
	.quad	0x3fd6dba4d6e47dc3              # double 0.35715599999999997
	.quad	0x3febc77dd872f33d              # double 0.86810200000000004
	.quad	0x3feacfc829cfdd23              # double 0.83786400000000005
	.quad	0x3fee1cc74b838c11              # double 0.94101299999999999
	.quad	0x3fd76191148fd9fd              # double 0.36532999999999999
	.quad	0x3fc76006d0d4994a              # double 0.182618
	.quad	0x3fe2a57a786c2268              # double 0.5827
	.quad	0x3fdc9ccb7d41743f              # double 0.44707000000000002
	.quad	0x3fd1f36ac647778e              # double 0.28048200000000001
	.quad	0x3fef3ef8ceb356da              # double 0.976437
	.quad	0x3fed712e40852b4e              # double 0.92006600000000005
	.quad	0x3fd68bc9cd3e0bd4              # double 0.35228199999999998
	.quad	0x3fe4dbaf533f4235              # double 0.65181699999999998
	.quad	0x3fed8adeebb341e1              # double 0.92320199999999997
	.quad	0x3feef1bac2df0d41              # double 0.96700799999999997
	.quad	0x3fe3637154003255              # double 0.60588900000000001
	.quad	0x3fc54ec204f2ae08              # double 0.166466
	.quad	0x3fc96ffc115df655              # double 0.19872999999999999
	.quad	0x3fc23c105186db51              # double 0.142458
	.quad	0x3fa7a786c226809d              # double 0.046199999999999998
	.quad	0x3fe67a24894c447c              # double 0.70240999999999998
	.quad	0x3fef662dc6e2a800              # double 0.98122299999999996
	.quad	0x3fe6b84988094e5d              # double 0.70999599999999996
	.quad	0x3fe763bcd35a8588              # double 0.73092500000000005
	.quad	0x3feb01eeed8904f7              # double 0.84398600000000001
	.quad	0x3fcd5ea67e846a5d              # double 0.22945099999999999
	.quad	0x3fe79eff9f87f024              # double 0.73815900000000001
	.quad	0x3fe2789a459103c9              # double 0.57722200000000001
	.quad	0x3fe953c792d1287c              # double 0.79147699999999998
	.quad	0x3fd729aa1d755bcd              # double 0.36191800000000002
	.quad	0x3fe8205bc01a36e3              # double 0.75395000000000001
	.quad	0x3feb0bf7f06705c9              # double 0.84521100000000005
	.quad	0x3fe41baa1511dffc              # double 0.62837699999999996
	.quad	0x3fe17cbd556084a5              # double 0.54647699999999999
	.quad	0x3fd632ebe596c82e              # double 0.346858
	.quad	0x3febd48238540464              # double 0.86969099999999999
	.quad	0x3fe23743632c1f43              # double 0.56924600000000003
	.quad	0x3fd2efa615a8deb1              # double 0.295877
	.quad	0x3fdc7739f340d4dc              # double 0.44477699999999998
	.quad	0x3fb5dfeb8d823422              # double 0.085447999999999996
	.quad	0x3fe00f29d40ee06e              # double 0.50185100000000005
	.quad	0x3fe0a84167a95c85              # double 0.52053899999999997
	.quad	0x3fbb4eebf65dbfcf              # double 0.106673
	.quad	0x3fc2ad14a0a0f4d8              # double 0.14590700000000001
	.quad	0x3feeed3f9e7b80aa              # double 0.96646100000000001
	.quad	0x3fd2a8fc0d2c386d              # double 0.29156399999999999
	.quad	0x3fc3432873bc903f              # double 0.15048700000000001
	.quad	0x3fe8142917507e9e              # double 0.75246100000000005
	.quad	0x3feb1ca9ef5232d3              # double 0.84724900000000003
	.quad	0x3fefd71d1d4738a4              # double 0.99500900000000003
	.quad	0x3fdb6638433d6c72              # double 0.42811399999999999
	.quad	0x3fb7e08aefb2aae3              # double 0.093270000000000006
	.quad	0x3fdebc0e38a7e73a              # double 0.48022799999999999
	.quad	0x3fe3f6c8b4395810              # double 0.62387499999999996
	.quad	0x3fe8ae6c8f755369              # double 0.77129199999999998
	.quad	0x3f5b43526527a205              # double 0.0016639999999999999
	.quad	0x3fed55475a31a4be              # double 0.91666000000000003
	.quad	0x3fe1deb7457c0b13              # double 0.55843699999999996
	.quad	0x3fea4de5d18090b4              # double 0.82200899999999998
	.quad	0x3fb4214ad362e903              # double 0.078632999999999995
	.quad	0x3fe48be5109070fc              # double 0.64207700000000001
	.quad	0x3fec0f75536933a0              # double 0.87688699999999997
	.quad	0x3fe14126a65cf67b              # double 0.53920299999999999
	.quad	0x3fc9729b280f12c2              # double 0.19880999999999999
	.quad	0x3fdc4906034f3fd9              # double 0.44195699999999999
	.quad	0x3feed6a161e4f766              # double 0.9637
	.quad	0x3fea41c1d6cf850e              # double 0.82052700000000001
	.quad	0x3fceb1e5c0b99913              # double 0.23980399999999999
	.quad	0x3fd0dc0980b24207              # double 0.26343
	.quad	0x3fa9731098d477bc              # double 0.049706
	.quad	0x3fefab7995ee136e              # double 0.98968199999999995
	.quad	0x3f7c4da9003eea21              # double 0.0069100000000000003
	.quad	0x3fb5eb52c9d16fca              # double 0.085622000000000003
	.quad	0x3fc1a7008a697aee              # double 0.137909
	.quad	0x3feb927d45a5fc7e              # double 0.86163199999999995
	.quad	0x3fb2e06d938151a4              # double 0.073736999999999997
	.quad	0x3fe6cc37e6f71a7e              # double 0.71242899999999998
	.quad	0x3fdd8cfbfc6540cc              # double 0.46172999999999997
	.quad	0x3fed552c16df3f96              # double 0.91664699999999999
	.quad	0x3fed22ccb3a2595c              # double 0.91049800000000002
	.quad	0x3fd00257c914b168              # double 0.250143
	.quad	0x3fef4fbb9496249a              # double 0.97848299999999999
	.quad	0x3fe6eee525892685              # double 0.71666200000000002
	.quad	0x3fba90470a808c82              # double 0.103764
	.quad	0x3fec458255b035bd              # double 0.88348499999999996
	.quad	0x3febbd816aceaaf3              # double 0.86688299999999996
	.quad	0x3fb49528f190d174              # double 0.080401
	.quad	0x3feb03dbc23315d7              # double 0.844221
	.quad	0x3fa3c297bfa4c61e              # double 0.038594000000000003
	.quad	0x3fc881450efdc9c5              # double 0.191445
	.quad	0x3fde1f42bb6672fc              # double 0.47065800000000002
	.quad	0x3fdd658c4bd33d29              # double 0.45932299999999998
	.quad	0x3fddde8709741d08              # double 0.46670699999999998
	.quad	0x3fbd908e581cf788              # double 0.11548700000000001
	.quad	0x3fc3cc07aaef2c73              # double 0.154664
	.quad	0x3fe80f840181e03f              # double 0.75189399999999995
	.quad	0x3fdee0f3cb3e5754              # double 0.48248000000000002
	.quad	0x3fc663beec39799e              # double 0.17491899999999999
	.quad	0x3fd8dc054ef459da              # double 0.38842900000000002
	.quad	0x3fc791a32b12d341              # double 0.18413199999999999
	.quad	0x3fc8feef5ec80c74              # double 0.19528000000000001
	.quad	0x3fee1db445ed4a1b              # double 0.94112600000000002
	.quad	0x3fe92af1455219a8              # double 0.78649199999999997
	.quad	0x3febec0d6f544bb2              # double 0.87256500000000004
	.quad	0x3feead85dfa871a4              # double 0.95868200000000003
	.quad	0x3fe1f9a6b50b0f28              # double 0.56172500000000003
	.quad	0x3fe9d5f99c38b04b              # double 0.80737000000000003
	.quad	0x3fb2003ab862b27d              # double 0.070316000000000004
	.quad	0x3fd7f6b1a2a4db16              # double 0.37443199999999999
	.quad	0x3faaa66dbd72bcb6              # double 0.052051
	.quad	0x3fed6cefed63454a              # double 0.91954800000000003
	.quad	0x3fb9b152f3c2dadc              # double 0.10036200000000001
	.quad	0x3fec14b599aa6091              # double 0.87752799999999997
	.quad	0x3feb3586ca89fc6e              # double 0.85028400000000004
	.quad	0x3fb8f57f737da61e              # double 0.097495999999999999
	.quad	0x3fd5878b7a1c25d0              # double 0.33639799999999997
	.quad	0x3fe1917720c8cd64              # double 0.54900700000000002
	.quad	0x3fd2c436fc158fb4              # double 0.29322599999999999
	.quad	0x3fb850acc0bdcad1              # double 0.094980999999999996
	.quad	0x3fe8ead4f5903a75              # double 0.77866599999999997
	.quad	0x3fefe4cb5bb384fd              # double 0.99667899999999998
	.quad	0x3fe4145d851654d6              # double 0.62748599999999999
	.quad	0x3fe0a1d323fee2ca              # double 0.51975400000000005
	.quad	0x3fe86202539756c9              # double 0.76196399999999997
	.quad	0x3fe9af4cf4a558ea              # double 0.80264899999999995
	.quad	0x3fd6aba7b9170d63              # double 0.35422700000000001
	.quad	0x3fc2eca686e7e62e              # double 0.14784700000000001
	.quad	0x3fe7ca2339c0ebee              # double 0.743425
	.quad	0x3fcf69878316a055              # double 0.24540799999999999
	.quad	0x3fe410e23af31b15              # double 0.62706099999999998
	.quad	0x3fafae3608d0891a              # double 0.061876
	.quad	0x3fdff6ba0620ab71              # double 0.49943399999999999
	.quad	0x3fc501322f2734f8              # double 0.16409899999999999
	.quad	0x3fea8e0a84be4042              # double 0.82983899999999999
	.quad	0x3fee6b1c432ca57a              # double 0.95057499999999995
	.quad	0x3fd88e581cf7878b              # double 0.38368799999999997
	.quad	0x3fd7ed1bf7ad4b27              # double 0.37384699999999998
	.quad	0x3fddfcf3dc054ef4              # double 0.46856399999999998
	.quad	0x3fea3cf4e874c900              # double 0.81994100000000003
	.quad	0x3fe62543f1c75819              # double 0.69204900000000003
	.quad	0x3fe4115379fa97e1              # double 0.62711499999999998
	.quad	0x3fe94f11b60ae968              # double 0.79090199999999999
	.quad	0x3fe30ca8198f1d3f              # double 0.59529500000000002
	.quad	0x3feebc4b09e98dce              # double 0.96048500000000003
	.quad	0x3fc4fb4c3c18b503              # double 0.16391900000000001
	.quad	0x3fab4f3fd933e35c              # double 0.053338999999999998
	.quad	0x3fea41743e963dc5              # double 0.82049000000000005
	.quad	0x3fdbdaf8df7a4e7b              # double 0.43524000000000002
	.quad	0x3fd533eff1950332              # double 0.33129500000000001
	.quad	0x3fe7f340d4dc65c7              # double 0.748444
	.quad	0x3fef0bfa0945f9df              # double 0.97021199999999996
	.quad	0x3fd5edaec4a4095f              # double 0.34263199999999999
	.quad	0x3fe8a6f60e0eb67c              # double 0.77038099999999998
	.quad	0x3fc79f44d4456712              # double 0.18454799999999999
	.quad	0x3fef0285ec3dab5c              # double 0.96905799999999997
	.quad	0x3fd96f19934efcbd              # double 0.39740599999999998
	.quad	0x3fe5df82b1f687b1              # double 0.68353399999999997
	.quad	0x3fb6ac96cc5fbf83              # double 0.088570999999999997
	.quad	0x3fc5d031055b8994              # double 0.17041600000000001
	.quad	0x3fc54c016052502f              # double 0.166382
	.quad	0x3fc40c4156e264e5              # double 0.15662400000000001
	.quad	0x3fed0c1db0142f62              # double 0.90772900000000001
	.quad	0x3fe77ac6045baf53              # double 0.73373699999999997
	.quad	0x3feb78f8a4c1ebc8              # double 0.85851699999999997
	.quad	0x3fb8024b33daf8df              # double 0.093784999999999993
	.quad	0x3fe3e38c9752977d              # double 0.62152700000000005
	.quad	0x3feda7eb6bf444e1              # double 0.92674800000000002
	.quad	0x3fee1d8622c45027              # double 0.94110400000000005
	.quad	0x3fe2b914f483cafb              # double 0.58509299999999997
	.quad	0x3fd96b2f23033a47              # double 0.39716699999999999
	.quad	0x3fe9eabffcdab192              # double 0.80990600000000001
	.quad	0x3fe4e58c4bd33d29              # double 0.65302099999999996
	.quad	0x3feb2e1ef73c0c20              # double 0.84938000000000002
	.quad	0x3f8162ae4b018612              # double 0.008489
	.quad	0x3fd7863beec3979a              # double 0.36756800000000001
	.quad	0x3fe5c4a1f080303c              # double 0.680253
	.quad	0x3fe6c4d44567125e              # double 0.71152700000000002
	.quad	0x3fecd9a30984e400              # double 0.90156700000000001
	.quad	0x3fda2352eb5f5f0b              # double 0.40840599999999999
	.quad	0x3fe44ae429e0a41a              # double 0.63414199999999998
	.quad	0x3fe778e3ac0c62e5              # double 0.73350700000000002
	.quad	0x3fe139b23dd54da5              # double 0.53829300000000002
	.quad	0x3fe998244e93e1ca              # double 0.79982200000000003
	.quad	0x3fcc2a80064a9cdc              # double 0.22004699999999999
	.quad	0x3fed4297bfa4c61e              # double 0.91437900000000005
	.quad	0x3fd5afb7e90ff972              # double 0.33884999999999998
	.quad	0x3fc049d388a8b08e              # double 0.127253
	.quad	0x3fb2e07e5a78f25a              # double 0.073737999999999998
	.quad	0x3fe5720642396074              # double 0.67016900000000001
	.quad	0x3fb98efbb0e5e679              # double 0.099837999999999996
	.quad	0x3fd792b3cc4ac6ce              # double 0.36832900000000002
	.quad	0x3fcfb7c7820a30db              # double 0.24779599999999999
	.quad	0x3fcf5ee136e71cda              # double 0.245083
	.quad	0x3fd776102795703f              # double 0.36658099999999999
	.quad	0x3fd1dd50a88effe3              # double 0.27913300000000002
	.quad	0x3fe317c1bda5119d              # double 0.59665000000000001
	.quad	0x3fa1309c7ffde721              # double 0.033574
	.quad	0x3fdfbeb9e492bc30              # double 0.49601600000000001
	.quad	0x3fcc04af922962d0              # double 0.218893
	.quad	0x3fea9707182235b5              # double 0.83093600000000001
	.quad	0x3fe2aee631f8a090              # double 0.58384999999999998
	.quad	0x3fd535a426bb55ac              # double 0.331399
	.quad	0x3fd84eb13dfb0d52              # double 0.379803
	.quad	0x3fc22749f0e4da0a              # double 0.14182400000000001
	.quad	0x3fc17c914b167ec8              # double 0.13661400000000001
	.quad	0x3fd976102795703f              # double 0.39783099999999999
	.quad	0x3fd464ba94bbe447              # double 0.31864799999999999
	.quad	0x3fe6bb1f255f351a              # double 0.71034200000000003
	.quad	0x3fe016052502eec8              # double 0.50268800000000002
	.quad	0x3fefd70a3d70a3d7              # double 0.99499999999999999
	.quad	0x3fdfb762d83c6c98              # double 0.49556800000000001
	.quad	0x3fa27aa68f4b61fe              # double 0.036091999999999999
	.quad	0x3fe439841aac53b1              # double 0.63202100000000005
	.quad	0x3fddf9d2bf551505              # double 0.46837299999999998
	.quad	0x3fcd3d96638433d7              # double 0.22844200000000001
	.quad	0x3fe229bcfd4bf099              # double 0.56759499999999996
	.quad	0x3fc5a4d6e47dc37a              # double 0.16909299999999999
	.quad	0x3fd847778dd616f8              # double 0.37936199999999998
	.quad	0x3fd123e5b8561d43              # double 0.267816
	.quad	0x3fe4bd2b6f19934f              # double 0.648092
	.quad	0x3fdf34373f316e37              # double 0.487562
	.quad	0x3fe025f41aef6f8f              # double 0.504633
	.quad	0x3fe65e2046c764ae              # double 0.69899
	.quad	0x3fd737c99ae924f2              # double 0.36277999999999999
	.quad	0x3fc5631b584b1ab1              # double 0.16708700000000001
	.quad	0x3feed62bf11f926c              # double 0.96364399999999994
	.quad	0x3feb97cc39ffd60f              # double 0.86228000000000005
	.quad	0x3fe91b17481b21c4              # double 0.78455699999999994
	.quad	0x3fc30df15a4acf31              # double 0.148863
	.quad	0x3fead3e0bd44998d              # double 0.838364
	.quad	0x3fe5fda4052d666b              # double 0.68721200000000005
	.quad	0x3fd915054ac29bf1              # double 0.39190799999999998
	.quad	0x3fe64c6a3bddfca0              # double 0.696828
	.quad	0x3fd5a187a4a48f97              # double 0.33798400000000001
	.quad	0x3fc59ecf63800219              # double 0.168909
	.quad	0x3fe61c3efae7924b              # double 0.69094800000000001
	.quad	0x3fcf632c1f42bb66              # double 0.24521399999999999
	.quad	0x3fa66e86c6583e85              # double 0.043811999999999997
	.quad	0x3fc309bf9c62a1b6              # double 0.14873500000000001
	.quad	0x3fcee5e679463cfb              # double 0.24139099999999999
	.quad	0x3fb294ff0025bfad              # double 0.072585999999999998
	.quad	0x3fc7def8487b99d4              # double 0.18649199999999999
	.quad	0x3fe1a63305100a39              # double 0.55153799999999997
	.quad	0x3fe7a641b328b6d8              # double 0.73904499999999995
	.quad	0x3fe3d90c0ad03d9b              # double 0.62024500000000005
	.quad	0x3fe5fca643cc07ab              # double 0.68709100000000001
	.quad	0x3fd2e9856a37ac3f              # double 0.29550300000000002
	.quad	0x3fec1a133c1ce6c1              # double 0.87818300000000005
	.quad	0x3fd2d26b723ee1bd              # double 0.29409299999999999
	.quad	0x3fcec51116a8b8f1              # double 0.24038899999999999
	.quad	0x3fec2795703f2d3c              # double 0.87983199999999994
	.quad	0x3fe37ec3547e0696              # double 0.60922399999999999
	.quad	0x3fbf10342aa9f7b6              # double 0.121341
	.quad	0x3fe3bca7503b81b6              # double 0.61677899999999997
	.quad	0x3fe363a190082060              # double 0.60591200000000001
	.quad	0x3fd88a009f623077              # double 0.38342300000000001
	.quad	0x3fed63b256ffc116              # double 0.91842000000000001
	.quad	0x3fadaa0cae642bfa              # double 0.057938000000000003
	.quad	0x3fe50e2e2b8c75c5              # double 0.65798100000000004
	.quad	0x3fcf1c3ac929aa1d              # double 0.24304899999999999
	.quad	0x3fecaa9f7b5aea31              # double 0.89582799999999996
	.quad	0x3fed9fadafd11383              # double 0.92574199999999995
	.quad	0x3fe2f548ecd8dbcf              # double 0.59244200000000002
	.quad	0x3fe68ced4e4c942d              # double 0.70470299999999997
	.quad	0x3fd7df6124074645              # double 0.37300899999999998
	.quad	0x3fc068a0d349be90              # double 0.128193
	.quad	0x3fdf059a73b42cc3              # double 0.48471700000000001
	.quad	0x3fcc766c6de76428              # double 0.22236400000000001
	.quad	0x3f8d51b4fe79ee03              # double 0.014316000000000001
	.quad	0x3fe8ab0c88a47ed0              # double 0.77088000000000001
	.quad	0x3fb714ec204f2ae0              # double 0.090162999999999993
	.quad	0x3fe903621fafc8b0              # double 0.781663
	.quad	0x3fe26978d4fdf3b6              # double 0.57537499999999997
	.quad	0x3fe7ce2b063e07a3              # double 0.74391700000000005
	.quad	0x3fe7bfc86cebbba5              # double 0.74216099999999996
	.quad	0x3fe6356b87379746              # double 0.694021
	.quad	0x3fe9b4677b395c42              # double 0.80327199999999999
	.quad	0x3fbd22424a276b7f              # double 0.113804
	.quad	0x3f5b93037d63022e              # double 0.001683
	.quad	0x3fdfe2435696e58a              # double 0.49818499999999999
	.quad	0x3fe03df6db940fed              # double 0.50756400000000002
	.quad	0x3fe5c53d20f2becf              # double 0.68032700000000002
	.quad	0x3fed84ddb5525cc4              # double 0.92246899999999998
	.quad	0x3fac534bd76ee73e              # double 0.055322999999999997
	.quad	0x3fc7b80a9de8b3b3              # double 0.185304
	.quad	0x3feb4c144028e4fc              # double 0.85303700000000004
	.quad	0x3fa18bb4d48882f1              # double 0.034269000000000001
	.quad	0x3fd3dc8fb86f47b6              # double 0.31033699999999997
	.quad	0x3feb109070fbeb9e              # double 0.84577199999999997
	.quad	0x3fd6018e757928e1              # double 0.34384500000000001
	.quad	0x3fd1a9e2bcf91a33              # double 0.27599400000000002
	.quad	0x3fe5362845996745              # double 0.66286100000000003
	.quad	0x3fed5e56cd6c2efd              # double 0.91776599999999997
	.quad	0x3fd44cad57bc7f78              # double 0.31718000000000002
	.quad	0x3fdfa4c1ebc83a97              # double 0.49443100000000001
	.quad	0x3fdce29b6b2af145              # double 0.45133099999999998
	.quad	0x3fee72cf95d4e8fb              # double 0.951515
	.quad	0x3fe4c5da6a444178              # double 0.64915199999999995
	.quad	0x3fd48726d04e618d              # double 0.32074900000000001
	.quad	0x3fdb8461f9f01b86              # double 0.42995499999999998
	.quad	0x3fa0c996b76709fa              # double 0.032787999999999998
	.quad	0x3fc0fe4ffc9795b3              # double 0.13276099999999999
	.quad	0x3fd2c896dd26b724              # double 0.293493
	.quad	0x3fe82c258d5842b7              # double 0.75538899999999998
	.quad	0x3fc87aaef2c73259              # double 0.191244
	.quad	0x3feea9ae4f3343fa              # double 0.95821299999999998
	.quad	0x3feca0d349be8ff3              # double 0.89463199999999998
	.quad	0x3fe4e34b945308bc              # double 0.65274600000000005
	.quad	0x3fa722c01e68a0d3              # double 0.045186999999999998
	.quad	0x3fe28bc7b45f17be              # double 0.57956300000000005
	.quad	0x3fd144c7b02d59d5              # double 0.26982299999999998
	.quad	0x3fee4065b63d3e4f              # double 0.94536100000000001
	.quad	0x3fc39ea57214f052              # double 0.153279
	.quad	0x3fe26935b91f70df              # double 0.57534300000000005
	.quad	0x3fe2293f290abb45              # double 0.56753500000000001
	.quad	0x3fd7032db1e9f278              # double 0.35956900000000003
	.quad	0x3fefe09fe86833c6              # double 0.99617
	.quad	0x3fefd3dc8b86b160              # double 0.99461200000000005
	.quad	0x3fda4a6223e18698              # double 0.41078999999999999
	.quad	0x3fe957e23f24d8fd              # double 0.79197799999999996
	.quad	0x3fdf1715c63ae254              # double 0.48578399999999999
	.quad	0x3fe57fcfc3f811f5              # double 0.671852
	.quad	0x3feca84167a95c85              # double 0.89553899999999997
	.quad	0x3fcaeb78897e9963              # double 0.210311
	.quad	0x3fd02deca25529fe              # double 0.252803
	.quad	0x3fac4ae85b9e8c48              # double 0.055259000000000003
	.quad	0x3febcc09c3ce208a              # double 0.86865700000000001
	.quad	0x3fe5809b30728e93              # double 0.67194900000000002
	.quad	0x3fde06573215fcc2              # double 0.46913700000000003
	.quad	0x3f961847f562174c              # double 0.021576999999999999
	.quad	0x3fee7d08d4bad7d8              # double 0.95276300000000002
	.quad	0x3feb91b823c85c25              # double 0.86153800000000003
	.quad	0x3fe42d9274e22a2c              # double 0.63056299999999998
	.quad	0x3fe5f96e158750c2              # double 0.68669800000000003
	.quad	0x3fe422be0589acbd              # double 0.62924100000000005
	.quad	0x3fe076837f7be122              # double 0.51446700000000001
	.quad	0x3fd51c4b90214ad3              # double 0.32985199999999998
	.quad	0x3fea3cdbbe0157ef              # double 0.81992900000000002
	.quad	0x3fe8f8af3e468cac              # double 0.78035699999999996
	.quad	0x3faf3519bd4067cf              # double 0.060951999999999999
	.quad	0x3fe0b4df04ddb552              # double 0.52207899999999996
	.quad	0x3fe01bdc69f8c21e              # double 0.50340099999999999
	.quad	0x3fce1fafc8b0079a              # double 0.235342
	.quad	0x3fe71ea78af3e469              # double 0.72249200000000002
	.quad	0x3fb96bdb1a6d6990              # double 0.099302000000000001
	.quad	0x3fd5ef177a7008a7              # double 0.34271800000000002
	.quad	0x3feec810a569b175              # double 0.96192200000000005
	.quad	0x3feb2b14ec204f2b              # double 0.84900900000000001
	.quad	0x3fdf52eb5f5f0b28              # double 0.48943599999999998
	.quad	0x3fdaa8ef77f27fe5              # double 0.41656100000000001
	.quad	0x3feb1fcf3dc054ef              # double 0.84763299999999997
	.quad	0x3fd840fa9c12f09e              # double 0.37896600000000003
	.quad	0x3feaa5d4a5df223a              # double 0.83274300000000001
	.quad	0x3fe530e7ff583a54              # double 0.66222000000000003
	.quad	0x3fe244c9c90c4dec              # double 0.57089699999999999
	.quad	0x3fd37060bb2bba99              # double 0.303734
	.quad	0x3fef1a0cf1800a7c              # double 0.97192999999999996
	.quad	0x3fd9414a4d2b2bfe              # double 0.39461000000000002
	.quad	0x3fed6c93a7115161              # double 0.91950399999999999
	.quad	0x3feee09dcf893faf              # double 0.96491899999999997
	.quad	0x3fed844d013a92a3              # double 0.9224
	.quad	0x3fe2fcce1c58255b              # double 0.59336
	.quad	0x3fcc4230fcf80dc3              # double 0.22076999999999999
	.quad	0x3fe5dd744f5d3565              # double 0.68328299999999997
	.quad	0x3fe382ababead4f6              # double 0.60970100000000005
	.quad	0x3fe036134ce3de61              # double 0.50660099999999997
	.quad	0x3fd0551d68c692f7              # double 0.25519500000000001
	.quad	0x3feecd67fd3f5b60              # double 0.96257400000000004
	.quad	0x3fe366cb10342aaa              # double 0.606298
	.quad	0x3fd2d7a99fa11a97              # double 0.29441299999999998
	.quad	0x3fe5a845996744b3              # double 0.67679100000000003
	.quad	0x3fe98e820e629952              # double 0.79864599999999997
	.quad	0x3fec2044ae85b9e9              # double 0.87893900000000003
	.quad	0x3fe2c1dd1a21ea36              # double 0.58616500000000005
	.quad	0x3feb5e6bc621b7e1              # double 0.85527600000000004
	.quad	0x3fe12ab474107315              # double 0.53646300000000002
	.quad	0x3fe39b9f98b71b8b              # double 0.61274700000000004
	.quad	0x3fc9508f648c7193              # double 0.197771
	.quad	0x3fb780ecfa69be0a              # double 0.091811000000000003
	.quad	0x3fe16ba0620ab713              # double 0.54438799999999998
	.quad	0x3fdee6ff7dfa00e2              # double 0.48284899999999997
	.quad	0x3fe8b6113404ea4b              # double 0.77222500000000005
	.quad	0x3feacdc011d3671b              # double 0.83761600000000003
	.quad	0x3fc6d4dc65c70436              # double 0.178371
	.quad	0x3fee370ef566490a              # double 0.94422099999999998
	.quad	0x3fe0e640a6b93ccd              # double 0.52810699999999999
	.quad	0x3fe1b8561d4306e6              # double 0.55375200000000002
	.quad	0x3fe1c343b70ef566              # double 0.55508599999999997
	.quad	0x3fec8c67168f8e7e              # double 0.89213900000000002
	.quad	0x3fe271886df82b1f              # double 0.57635899999999995
	.quad	0x3fcca326e115592e              # double 0.22372900000000001
	.quad	0x3fc49c0a8d21bc12              # double 0.16101199999999999
	.quad	0x3fd205857afea3df              # double 0.28158699999999998
	.quad	0x3fa999567dbb16c2              # double 0.049998000000000001
	.quad	0x3fe7efac6045baf5              # double 0.74800699999999998
	.quad	0x3fafbd273d5bab22              # double 0.061990000000000003
	.quad	0x3fe2d83a53b8e4b8              # double 0.58889499999999995
	.quad	0x3fca2ecaeea63b69              # double 0.20455300000000001
	.quad	0x3fdaca7935760392              # double 0.41860799999999998
	.quad	0x3feb0ac3a860dcba              # double 0.84506400000000004
	.quad	0x3fe1b77e1b8ed1bf              # double 0.55364899999999995
	.quad	0x3fdc9a8049667b5f              # double 0.44692999999999999
	.quad	0x3fc8085b18548a9c              # double 0.18775500000000001
	.quad	0x3fc4d9513f8db489              # double 0.162882
	.quad	0x3fd8a21a719b4dcf              # double 0.38489400000000001
	.quad	0x3fdb3686a4ca4f44              # double 0.425203
	.quad	0x3fe168ea39c51dac              # double 0.54405700000000001
	.quad	0x3fc2e79aae6c8f75              # double 0.14769299999999999
	.quad	0x3fe76154434e336a              # double 0.73063100000000003
	.quad	0x3fc1249e44fa0514              # double 0.13392999999999999
	.quad	0x3fe019e30014f8b6              # double 0.50316000000000005
	.quad	0x3fbebc72e275ab7e              # double 0.120063
	.quad	0x3feef112fd32c626              # double 0.96692800000000001
	.quad	0x3fd944523f67f4dc              # double 0.39479500000000001
	.quad	0x3fe2255b035bd513              # double 0.56706000000000001
	.quad	0x3fc4b81f969e3c97              # double 0.16186900000000001
	.quad	0x3fd04fce746cb967              # double 0.25487100000000001
	.quad	0x3fe7f04ddb5525cc              # double 0.74808399999999997
	.quad	0x3fb08cb4aec8d5c7              # double 0.064646999999999996
	.quad	0x3fd34024b33daf8e              # double 0.30079
	.quad	0x3fc077f6b1a2a4db              # double 0.128661
	.quad	0x3fda88509bf9c62a              # double 0.41456999999999999
	.quad	0x3fd3efe931876189              # double 0.31151800000000002
	.quad	0x3fe41a459103c8e2              # double 0.62820699999999996
	.quad	0x3fd4c20d5629d841              # double 0.32434400000000002
	.quad	0x3fdbe8c0485a0be5              # double 0.436081
	.quad	0x3fb2606fac6045bb              # double 0.071784000000000001
	.quad	0x3fe65e2478854cdb              # double 0.69899199999999995
	.quad	0x3fc5378ee2867275              # double 0.16575799999999999
	.quad	0x3fcb95feda661284              # double 0.21551500000000001
	.quad	0x3fd51719f7f8ca82              # double 0.32953500000000002
	.quad	0x3fcd24af0bf1a5ca              # double 0.227682
	.quad	0x3fda9774256bca53              # double 0.41549399999999997
	.quad	0x3fe03445ed4a1ad6              # double 0.50638099999999997
	.quad	0x3febe22c45026890              # double 0.87135899999999999
	.quad	0x3fe556abde3fbbd8              # double 0.66683000000000003
	.quad	0x3fdb24d4cb9ecf64              # double 0.42412300000000003
	.quad	0x3fe6d6c7219220ff              # double 0.71371799999999996
	.quad	0x3fd4fdcdf6987831              # double 0.32799099999999998
	.quad	0x3feb9372a38b8ae3              # double 0.86174899999999999
	.quad	0x3feecfa8b4bf8fcd              # double 0.96284899999999995
	.quad	0x3fcdca07f66e86c6              # double 0.23272799999999999
	.quad	0x3fd0b780346dc5d6              # double 0.26119999999999999
	.quad	0x3febf24b76f6d762              # double 0.87332699999999996
	.quad	0x3fe8e412cf0f9d2c              # double 0.777841
	.quad	0x3fed5be7f2c3009b              # double 0.91746899999999998
	.quad	0x3fedffb8b26394fb              # double 0.93746600000000002
	.quad	0x3fb8f96e158750c2              # double 0.097556000000000003
	.quad	0x3fcb87f88765ba6f              # double 0.215087
	.quad	0x3fe5cf7878b7a1c2              # double 0.68157599999999996
	.quad	0x3fee4cb7d41743e9              # double 0.94686499999999996
	.quad	0x3fe88f57f737da62              # double 0.76749800000000001
	.quad	0x3febc471b4784231              # double 0.86773
	.quad	0x3fea3315d701d9f5              # double 0.81873600000000002
	.quad	0x3fcb6c58eeae9ee4              # double 0.21424399999999999
	.quad	0x3fdaa3b57c4e2f38              # double 0.416242
	.quad	0x3fe1bf2b239a38fc              # double 0.55458600000000002
	.quad	0x3fd4faa044ae85ba              # double 0.32779700000000001
	.quad	0x3fe0629d8409e55c              # double 0.51203799999999999
	.quad	0x3fec3ffcdab191de              # double 0.88281100000000001
	.quad	0x3fc7a376922d948e              # double 0.18467600000000001
	.quad	0x3fc1645a1cac0831              # double 0.135875
	.quad	0x3fcef8d716d2aa5c              # double 0.24196899999999999
	.quad	0x3fdb7525460aa64c              # double 0.42902499999999999
	.quad	0x3fdbe4b018611fd6              # double 0.43583300000000003
	.quad	0x3fe06fb8f57f737e              # double 0.51363800000000004
	.quad	0x3fd1ad7518b0d0ee              # double 0.27621200000000001
	.quad	0x3fef6efc371da37f              # double 0.982298
	.quad	0x3fda656abde3fbbd              # double 0.41243999999999997
	.quad	0x3fedc6c764adff82              # double 0.93051499999999998
	.quad	0x3fe94b641700cd85              # double 0.79045299999999996
	.quad	0x3fe5f826edaa92e6              # double 0.68654199999999999
	.quad	0x3fd29310129cbab6              # double 0.29022599999999998
	.quad	0x3fbab7baecd07853              # double 0.104366
	.quad	0x3fefd286b59146e5              # double 0.99444900000000002
	.quad	0x3fcaec17ebaf1023              # double 0.21032999999999999
	.quad	0x3f9b9ae0c1765775              # double 0.026957999999999999
	.quad	0x3fd7aa00192a7371              # double 0.369751
	.quad	0x3fe0bff04577d955              # double 0.52342999999999995
	.quad	0x3fdaa2f05a708ede              # double 0.41619499999999998
	.quad	0x3fee1b25f633ce64              # double 0.94081400000000003
	.quad	0x3fbe7829068986fd              # double 0.119021
	.quad	0x3fe9eb13dfb0d520              # double 0.80994600000000005
	.quad	0x3fd2adab9f559b3d              # double 0.29185
	.quad	0x3fc5daa4fca42aed              # double 0.170735
	.quad	0x3fbbee3d5fdcdf6a              # double 0.10910400000000001
	.quad	0x3fe1e5cf67b1c001              # double 0.55930299999999999
	.quad	0x3fe804e618ce2d1f              # double 0.75059799999999999
	.quad	0x3fe0f414a4d2b2c0              # double 0.52979500000000002
	.quad	0x3fd45f5f0b28522f              # double 0.31832100000000002
	.quad	0x3fec4af4f0d844d0              # double 0.88414999999999999
	.quad	0x3fe8d2b0a6fc58ac              # double 0.77571900000000004
	.quad	0x3feb7b677f6b1a2a              # double 0.85881399999999997
	.quad	0x3fdee6299524bfd3              # double 0.482798
	.quad	0x3fdc38cda6e75ff6              # double 0.440967
	.quad	0x3fd33361565c2d28              # double 0.30001100000000003
	.quad	0x3fd45e4e69f05ea2              # double 0.31825599999999998
	.quad	0x3fe99bb05faebc41              # double 0.80025500000000005
	.quad	0x3fe4af5558212945              # double 0.64640299999999995
	.quad	0x3fe8416df3f96180              # double 0.75798699999999997
	.quad	0x3fe0fba6698bb4d5              # double 0.53071900000000005
	.quad	0x3fe0f81e8a2ec28b              # double 0.53028799999999998
	.quad	0x3fe3131ec0b56755              # double 0.59608399999999995
	.quad	0x3fd7f14983d79075              # double 0.37410199999999999
	.quad	0x3feeea24cc6822ff              # double 0.96608199999999999
	.quad	0x3fd593e1c9b41398              # double 0.33715099999999998
	.quad	0x3fe92b53d640e9d5              # double 0.78653899999999999
	.quad	0x3facc122749f0e4e              # double 0.056161000000000003
	.quad	0x3fc9d80e496ededb              # double 0.201906
	.quad	0x3fd95f91600f3450              # double 0.39645799999999998
	.quad	0x3fd749667b5f1bef              # double 0.36385499999999998
	.quad	0x3fecac1f42bb6673              # double 0.896011
	.quad	0x3fd07585be1a8262              # double 0.25717299999999998
	.quad	0x3fd2eaee2003ab86              # double 0.29558899999999999
	.quad	0x3fe3cd8127b2cc71              # double 0.61883600000000005
	.quad	0x3fd9e0daa0cae643              # double 0.40434900000000001
	.quad	0x3fc1887ebf22c01e              # double 0.13697799999999999
	.quad	0x3fea09bf9c62a1b6              # double 0.81369000000000002
	.quad	0x3fdbcb8e086bdf4c              # double 0.43429899999999999
	.quad	0x3fd8ec39799e518f              # double 0.38941799999999999
	.quad	0x3fd73e8576cce5f7              # double 0.36319099999999999
	.quad	0x3fe9f316e3715400              # double 0.81092399999999998
	.quad	0x3fd9b7e0ac7da1ec              # double 0.40184799999999998
	.quad	0x3fef8e2e2b8c75c5              # double 0.98610600000000003
	.quad	0x3fc0594af4f0d845              # double 0.12772500000000001
	.quad	0x3fd5910c2c5e2cdc              # double 0.336978
	.quad	0x3fe76df82b1f687b              # double 0.73217399999999999
	.quad	0x3fdb7292c4934268              # double 0.42886800000000003
	.quad	0x3f861dc93ea2d2fe              # double 0.010799
	.quad	0x3fd33e0bd44998d0              # double 0.30066199999999998
	.quad	0x3fee68c26138fffc              # double 0.95028800000000002
	.quad	0x3fe5cb1465e89225              # double 0.68103999999999998
	.quad	0x3fc5176145953587              # double 0.16477600000000001
	.quad	0x3fd02ba9d1f60179              # double 0.25266499999999997
	.quad	0x3fcdf00abf76a2f5              # double 0.23388800000000001
	.quad	0x3fddbfd2e9468017              # double 0.464833
	.quad	0x3fe8ec02f2f98740              # double 0.77881
	.quad	0x3fecd1782d38476f              # double 0.90056999999999998
	.quad	0x3faa009f623076c0              # double 0.050785999999999998
	.quad	0x3fd75bea0ba1f4b2              # double 0.364985
	.quad	0x3fe9cab81f969e3d              # double 0.80599600000000005
	.quad	0x3faf926c7eae5bc8              # double 0.061663999999999997
	.quad	0x3fe2e9b17481b21c              # double 0.59102699999999997
	.quad	0x3fd79c2c1b10fd7e              # double 0.36890699999999998
	.quad	0x3fe0e113404ea4a9              # double 0.52747500000000003
	.quad	0x3fb1c1f85d744f5d              # double 0.069365999999999997
	.quad	0x3fe38f4517614595              # double 0.61123899999999998
	.quad	0x3fd0516db0dd82fd              # double 0.25496999999999997
	.quad	0x3fd43c42a66dbd73              # double 0.31617800000000001
	.quad	0x3fcd85be1a826245              # double 0.23064399999999999
	.quad	0x3fec91d9b1b79d91              # double 0.89280400000000004
	.quad	0x3fee93be22e5de16              # double 0.95553500000000002
	.quad	0x3fd64aa53fc00970              # double 0.348306
	.quad	0x3fe8ae147ae147ae              # double 0.77124999999999999
	.quad	0x3fbf053198288052              # double 0.121173
	.quad	0x3fc2be27179bfdf8              # double 0.146428
	.quad	0x3fd70a45d41fa765              # double 0.36000199999999999
	.quad	0x3fe2f5ee99a62ed3              # double 0.59252099999999996
	.quad	0x3fb664f54d1e96c4              # double 0.087478
	.quad	0x3fc868a0d349be90              # double 0.190693
	.quad	0x3fe53dd334c5da6a              # double 0.66379699999999997
	.quad	0x3fd1da3c21187e7c              # double 0.278945
	.quad	0x3fe5df3300de4c51              # double 0.68349599999999999
	.quad	0x3fafac81d3aa36a0              # double 0.061863000000000001
	.quad	0x3fe4d0f840181e04              # double 0.650509
	.quad	0x3fd5b413986338b4              # double 0.33911599999999997
	.quad	0x3fa1dd5d3dc8b86b              # double 0.034891999999999999
	.quad	0x3fc3b0142f61ed5b              # double 0.153811
	.quad	0x3fef0eb8950763a2              # double 0.97054700000000005
	.quad	0x3fe403f0bae89eba              # double 0.62548099999999995
	.quad	0x3fe51cd3e0bd449a              # double 0.65976900000000005
	.quad	0x3fdbfbdf090f733b              # double 0.43724800000000003
	.quad	0x3fd9b784662bae04              # double 0.40182600000000002
	.quad	0x3fef762f9ca5bd94              # double 0.98317699999999996
	.quad	0x3fd1a70d1fa33376              # double 0.27582099999999998
	.quad	0x3fe884c48adeebb3              # double 0.76620699999999997
	.quad	0x3fecee6fb4c3c18b              # double 0.90410599999999997
	.quad	0x3fdcf47735c182ed              # double 0.45242100000000002
	.quad	0x3fe0705ea24cc682              # double 0.51371699999999998
	.quad	0x3fe19105e1c15098              # double 0.54895300000000002
	.quad	0x3fc6cc9a77e5eaab              # double 0.178119
	.quad	0x3fd1fc2224edf612              # double 0.28101399999999999
	.quad	0x3fe82098915bdd76              # double 0.75397899999999995
	.quad	0x3fe55c054ef459da              # double 0.66748300000000005
	.quad	0x3feffe23f24d8fd6              # double 0.99977300000000002
	.quad	0x3fdf0bf1a5ca2984              # double 0.48510399999999998
	.quad	0x3fbfbfb58d1526d9              # double 0.124019
	.quad	0x3feb975f2cb64170              # double 0.86222799999999999
	.quad	0x3fda9dadfb506dd7              # double 0.41587400000000002
	.quad	0x3feb79fec99f1ae3              # double 0.85864200000000002
	.quad	0x3fd1cfc3f811f4f5              # double 0.278306
	.quad	0x3fed28155d5f56a8              # double 0.91114300000000004
	.quad	0x3fe0937d1fe64f55              # double 0.51800400000000002
	.quad	0x3fe89fe43675ddd3              # double 0.76951800000000004
	.quad	0x3fe6f2fdb8fde2ef              # double 0.71716199999999997
	.quad	0x3fd3171e29b6b2af              # double 0.298286
	.quad	0x3fc6dc7ef177a701              # double 0.17860400000000001
	.quad	0x3fdae2c55c96030c              # double 0.42009099999999999
	.quad	0x3fe700b88ca3e7d1              # double 0.71883799999999998
	.quad	0x3fdd2617c1bda512              # double 0.45545000000000002
	.quad	0x3fd33775b8130165              # double 0.30026000000000003
	.quad	0x3fef6c892ab68cef              # double 0.98199899999999995
	.quad	0x3fecdf2452c59fb2              # double 0.90223900000000001
	.quad	0x3fe7955d5f56a7ad              # double 0.73698300000000005
	.quad	0x3fe36ab367a0f909              # double 0.60677499999999995
	.quad	0x3fe6e5fb71fbc5df              # double 0.71557400000000004
	.quad	0x3fc12dba4d6e47dc              # double 0.13420799999999999
	.quad	0x3fe07dc5931ca7d6              # double 0.51535299999999995
	.quad	0x3fdf135daad60200              # double 0.48555700000000002
	.quad	0x3fefd24399b2c40d              # double 0.99441699999999999
	.quad	0x3fe2f079e59f2baa              # double 0.59185500000000002
	.quad	0x3fc354a7f8012dfd              # double 0.15102099999999999
	.quad	0x3fb1fcb0c026cc1d              # double 0.070262000000000005
	.quad	0x3fed9f53825e13b2              # double 0.92569900000000005
	.quad	0x3fe3b163baba7b91              # double 0.61540399999999995
	.quad	0x3fe02467be553ac5              # double 0.504444
	.quad	0x3fea28283d35eb74              # double 0.81740199999999996
	.quad	0x3fbce38a7e73a366              # double 0.112847
	.quad	0x3fe62044ae85b9e9              # double 0.69143900000000003
	.quad	0x3fd46861e92923e6              # double 0.31887100000000002
	.quad	0x3fea9669ced0b30b              # double 0.83086099999999996
	.quad	0x3f79ab6d00b45ae6              # double 0.006267
	.quad	0x3fb0b3f63c31df76              # double 0.065245999999999998
	.quad	0x3fef6a7ce0fc2eba              # double 0.98174899999999998
	.quad	0x3fd176ab5807fed2              # double 0.272868
	.quad	0x3fb5f6fd21ff2e49              # double 0.085800000000000001
	.quad	0x3fdcef0281ba7fc3              # double 0.45208799999999999
	.quad	0x3fed06d71f36262d              # double 0.90708500000000003
	.quad	0x3f9bedb7281fd9ba              # double 0.027274
	.quad	0x3fd7fa82e87d2c7c              # double 0.37466500000000003
	.quad	0x3feb494b380cb6c8              # double 0.85269700000000004
	.quad	0x3fcdeb8d82342246              # double 0.23375099999999999
	.quad	0x3fcafbf401c4fc1e              # double 0.210814
	.quad	0x3fdb4ea077036c9c              # double 0.426674
	.quad	0x3fdde1bd1ed9dfdb              # double 0.46690300000000001
	.quad	0x3fe2255f3519bd40              # double 0.56706199999999995
	.quad	0x3fccb3461309c800              # double 0.224221
	.quad	0x3fd2b191dde37586              # double 0.29208800000000001
	.quad	0x3fedc3d68405b39e              # double 0.93015599999999998
	.quad	0x3fe28e7ff583a53c              # double 0.57989500000000005
	.quad	0x3fd30e27e0ef9980              # double 0.29773899999999998
	.quad	0x3fe318b934699418              # double 0.59676799999999997
	.quad	0x3feb1eb4202d9cf1              # double 0.84749799999999997
	.quad	0x3fe7c792d1287c20              # double 0.74311199999999999
	.quad	0x3fd46113404ea4a9              # double 0.31842500000000001
	.quad	0x3fda892ee84ad795              # double 0.41462300000000002
	.quad	0x3fe0ccc25072085b              # double 0.52499499999999999
	.quad	0x3fcc5fd8adab9f56              # double 0.22167500000000001
	.quad	0x3fe99676640a6b94              # double 0.79961700000000002
	.quad	0x3feac2396073de1e              # double 0.83620899999999998
	.quad	0x3fef1c53f39d1b2e              # double 0.97220799999999996
	.quad	0x3fedfe90ff972474              # double 0.93732499999999996
	.quad	0x3fd18dfbd6a593a3              # double 0.27429100000000001
	.quad	0x3fe2b82e44b6e936              # double 0.58498300000000003
	.quad	0x3fe7fca42aed1394              # double 0.74958999999999997
	.quad	0x3fc729670196d8f5              # double 0.180951
	.quad	0x3fedd3dea465a576              # double 0.93211299999999997
	.quad	0x3fecfbeb9e492bc3              # double 0.905752
	.quad	0x3fb8c77dd872f33d              # double 0.096794000000000005
	.quad	0x3feb027d88c1db01              # double 0.84405399999999997
	.quad	0x3fbf9f340d4dc65c              # double 0.12352299999999999
	.quad	0x3fe5fc71d6063172              # double 0.68706599999999995
	.quad	0x3febbb906466b1e6              # double 0.86664600000000003
	.quad	0x3fe4a57eaa2a0a96              # double 0.64520200000000005
	.quad	0x3f75f99c38b04ab6              # double 0.005365
	.quad	0x3fec368f08461f9f              # double 0.88166
	.quad	0x3fed4d1a65061416              # double 0.91566199999999998
	.quad	0x3fdc9a8049667b5f              # double 0.44692999999999999
	.quad	0x3fec10e0221426fe              # double 0.87705999999999995
	.quad	0x3fe8d01e2584f4c7              # double 0.77540500000000001
	.quad	0x3fd6c7da1ec4e725              # double 0.35594799999999999
	.quad	0x3feaf04790b84988              # double 0.841831
	.quad	0x3fb79591cd1c7de5              # double 0.092126
	.quad	0x3fe3a1ad6451b930              # double 0.61348599999999998
	.quad	0x3fc4ee631f8a0903              # double 0.163525
	.quad	0x3fb8c3f3e0370cdd              # double 0.096740000000000007
	.quad	0x3fefab777d0f1f58              # double 0.98968100000000003
	.quad	0x3fdb06af46aa087d              # double 0.42228300000000002
	.quad	0x3fe1b4aec8d5c747              # double 0.55330599999999996
	.quad	0x3fe8f4ea8da7f3cf              # double 0.77989699999999995
	.quad	0x3fdd3e1869835159              # double 0.45691500000000002
	.quad	0x3fe1901b003686a5              # double 0.54884100000000002
	.quad	0x3fee0e1f7d73c925              # double 0.93922399999999995
	.quad	0x3fe9e5b20b8066c3              # double 0.80928900000000004
	.quad	0x3fc3f83be6601bca              # double 0.15601300000000001
	.quad	0x3fd12f33ca31e7da              # double 0.26850600000000002
	.quad	0x3fde743632c1f42c              # double 0.47584300000000002
	.quad	0x3fecb5e310dbf056              # double 0.89720299999999997
	.quad	0x3fea475a31a4bdba              # double 0.82121
	.quad	0x3fbe5a78f25a2510              # double 0.11856800000000001
	.quad	0x3fc9fcb923a29c78              # double 0.20302500000000001
	.quad	0x3fcc1c1d6cf850df              # double 0.219608
	.quad	0x3fe954a5df2239e7              # double 0.79158300000000004
	.quad	0x3fe75b59578a2a91              # double 0.72990100000000002
	.quad	0x3fcb45cfede97d07              # double 0.21306800000000001
	.quad	0x3fec24aada33bd9d              # double 0.87947600000000004
	.quad	0x3fe914488c60cbf3              # double 0.78372600000000003
	.quad	0x3fdd19ac79702e66              # double 0.45469199999999999
	.quad	0x3f4db0142f61ed5b              # double 9.0600000000000001E-4
	.quad	0x3fe1dbea0ba1f4b2              # double 0.55809500000000001
	.quad	0x3fc407cc7d1bb491              # double 0.15648799999999999
	.quad	0x3fe3906ee30caa32              # double 0.61138099999999995
	.quad	0x3fa3ad5bee3d5fdd              # double 0.038432000000000001
	.quad	0x3fe25c93ea2d2fe4              # double 0.57380100000000001
	.quad	0x3fd25e74299d883c              # double 0.28701500000000002
	.quad	0x3fee0d32830a0b1c              # double 0.93911100000000002
	.quad	0x3fedd1f601797cc4              # double 0.93188000000000004
	.quad	0x3fd71450efdc9c4e              # double 0.36061500000000002
	.quad	0x3fd0e07a28bb0a2d              # double 0.26370100000000002
	.quad	0x3fe0287c200c0f02              # double 0.504942
	.quad	0x3fdf8db0574b4070              # double 0.49302299999999999
	.quad	0x3fefdbdf8f473040              # double 0.99558999999999997
	.quad	0x3fee50ce4ead0c3d              # double 0.94736399999999998
	.quad	0x3fd909f1f14983d8              # double 0.39123200000000002
	.quad	0x3fde1b64e054690e              # double 0.47042200000000001
	.quad	0x3fe6ce24bba12b5e              # double 0.71266399999999996
	.quad	0x3feeb39192641b33              # double 0.95942000000000005
	.quad	0x3fe9da9c99285a92              # double 0.80793599999999999
	.quad	0x3fe416d2aa5c5f7c              # double 0.62778599999999996
	.quad	0x3fea5fa871a3b14b              # double 0.82417700000000005
	.quad	0x3fe7e5a57646ae3a              # double 0.74678299999999997
	.quad	0x3fe71802c0a4a05e              # double 0.72168100000000002
	.quad	0x3fdb2e557de0d66f              # double 0.424703
	.quad	0x3fc3b17481b21c47              # double 0.15385299999999999
	.quad	0x3fc02de8709741d1              # double 0.12640100000000001
	.quad	0x3fdc7f4dbdf8f473              # double 0.44527
	.quad	0x3fe907980f55de59              # double 0.78217700000000001
	.quad	0x3feef566490a350d              # double 0.96745599999999998
	.quad	0x3fbc32ca57a786c2              # double 0.11015
	.quad	0x3fd75668c2613900              # double 0.364649
	.quad	0x3fe6e2f9ca5bd945              # double 0.71520700000000004
	.quad	0x3fd39baa1511dffc              # double 0.30637599999999998
	.quad	0x3fe24906034f3fd9              # double 0.57141399999999998
	.quad	0x3fe8cb81733226c4              # double 0.77484200000000003
	.quad	0x3fd7638433d6c722              # double 0.36544900000000002
	.quad	0x3fe19b9f98b71b8b              # double 0.55024700000000004
	.quad	0x3fc2dac258d5842b              # double 0.14730099999999999
	.quad	0x3fb1377e1b8ed1bf              # double 0.067252999999999993
	.quad	0x3fd0cac083126e98              # double 0.26237500000000002
	.quad	0x3feff138bcdfefbf              # double 0.99819599999999997
	.quad	0x3fe3e1a60d4562e1              # double 0.62129500000000004
	.quad	0x3fb03914f483cafb              # double 0.063370999999999997
	.quad	0x3fbbd49d7ba6698c              # double 0.108713
	.quad	0x3fd5f3343fa2ad3f              # double 0.34296900000000002
	.quad	0x3fe2eef5ec80c73b              # double 0.59167000000000003
	.quad	0x3fd98da3c21187e8              # double 0.39927000000000001
	.quad	0x3fdac0b9991361dd              # double 0.41801300000000002
	.quad	0x3fcffd2630ec3116              # double 0.249913
	.quad	0x3fd37fd82773e250              # double 0.304678
	.quad	0x3fd5c9107faa044b              # double 0.34039700000000001
	.quad	0x3f7dc4007570c565              # double 0.007267
	.quad	0x3fe9373d188f42ff              # double 0.78799300000000005
	.quad	0x3fede553ac4f7ec3              # double 0.93424399999999996
	.quad	0x3fc33bafd976ff3b              # double 0.150259
	.quad	0x3fd50218def416be              # double 0.32825300000000002
	.quad	0x3fc4448cf7caa759              # double 0.15834200000000001
	.quad	0x3fe628b2a6b0d951              # double 0.69246799999999997
	.quad	0x3fd4054ef459d990              # double 0.31282399999999999
	.quad	0x3fe6d67125dd095b              # double 0.71367700000000001
	.quad	0x3fae1ac57e23f24e              # double 0.058798000000000003
	.quad	0x3fe0b354c122749f              # double 0.52189099999999999
	.quad	0x3fe19988d2a1f8e4              # double 0.54999200000000004
	.quad	0x3fe02456f75d9a0f              # double 0.504436
	.quad	0x3fc583e8576cce5f              # double 0.16808799999999999
	.quad	0x3fb6aae297396d09              # double 0.088544999999999999
	.quad	0x3fedcdfce3150dae              # double 0.93139499999999997
	.quad	0x3fdc91fb3fa6defc              # double 0.44640999999999997
	.quad	0x3fec2bfdb4cc2507              # double 0.88036999999999999
	.quad	0x3fd85d744f5d3565              # double 0.38070399999999999
	.quad	0x3fc73dc8b86b15f9              # double 0.18157300000000001
	.quad	0x3fa1d084e831ad21              # double 0.034793999999999999
	.quad	0x3fbe3aafff36ac64              # double 0.11808299999999999
	.quad	0x3fe38d2a1f8e3ac1              # double 0.61098200000000003
	.quad	0x3fa55cfaacd9e83e              # double 0.041724999999999998
	.quad	0x3fdfdd441355475a              # double 0.49787999999999999
	.quad	0x3fd2cbc8c0ce91c9              # double 0.293688
	.quad	0x3fdd3076c050bd88              # double 0.45608300000000002
	.quad	0x3fe6c308feac42ea              # double 0.71130800000000005
	.quad	0x3fcea98244e93e1d              # double 0.23954800000000001
	.quad	0x3fc887ca643cc07b              # double 0.19164400000000001
	.quad	0x3fe7ac14c660a201              # double 0.73975599999999997
	.quad	0x3fed4f1a1986b9c3              # double 0.915906
	.quad	0x3fb54f0520d130e0              # double 0.083237000000000005
	.quad	0x3fd7e5aff2a172ac              # double 0.373394
	.quad	0x3fcb5c5b4aa9717e              # double 0.213756
	.quad	0x3fe115e17e34b945              # double 0.53392099999999998
	.quad	0x3fc21ce6c093d966              # double 0.14150699999999999
	.quad	0x3fe7648a58b3f63c              # double 0.73102299999999998
	.quad	0x3f9f290abb44e50c              # double 0.030429999999999999
	.quad	0x3fe9b0e7ff583a54              # double 0.80284500000000003
	.quad	0x3fb538151a437825              # double 0.082887000000000002
	.quad	0x3fd37542a23bff8b              # double 0.30403200000000002
	.quad	0x3fe72e62131a8ef7              # double 0.72441199999999994
	.quad	0x3fda8adab9f559b4              # double 0.41472500000000001
	.quad	0x3fbda1016ce789e7              # double 0.11573799999999999
	.quad	0x3fc58f041461b6d4              # double 0.16842699999999999
	.quad	0x3fc634330d73860a              # double 0.17346800000000001
	.quad	0x3fda60029f16b11c              # double 0.41210999999999998
	.quad	0x3fdc10d7be9856a3              # double 0.43852799999999997
	.quad	0x3fead1116a8b8f15              # double 0.83802100000000002
	.quad	0x3fee7f023e9ea140              # double 0.95300399999999996
	.quad	0x3fef97225b749add              # double 0.98719900000000004
	.quad	0x3fd91c9b41398634              # double 0.39237100000000003
	.quad	0x3fdd73e24febd09e              # double 0.460198
	.quad	0x3fe5444e0daa0cae              # double 0.66458799999999996
	.quad	0x3fe94b1465e89225              # double 0.79041499999999998
	.quad	0x3fd8b089a0275254              # double 0.38577499999999998
	.quad	0x3feda426bb55ac04              # double 0.926288
	.quad	0x3fe62ababead4f59              # double 0.692716
	.quad	0x3fcabc48f10a99b7              # double 0.208871
	.quad	0x3fbe84dfce3150db              # double 0.119215
	.quad	0x3fd1840e1719f7f9              # double 0.27368500000000001
	.quad	0x3fe25e13b18dac26              # double 0.57398400000000005
	.quad	0x3fc913836a832b99              # double 0.195908
	.quad	0x3fe968fb00bcbe62              # double 0.79406500000000002
	.quad	0x3fe8b3fe9fadafd1              # double 0.77197199999999999
	.quad	0x3fe3cdc65c70435f              # double 0.618869
	.quad	0x3fea9e8815e39714              # double 0.83185200000000003
	.quad	0x3fe3acdc011d3672              # double 0.61485100000000004
	.quad	0x3fda61f18c9fb613              # double 0.41222799999999998
	.quad	0x3fdd9bb6aa4b9885              # double 0.46262900000000001
	.quad	0x3fd7cc07aaef2c73              # double 0.37182799999999999
	.quad	0x3fe51a6f826edaa9              # double 0.65947699999999998
	.quad	0x3fc3074213a0c6b5              # double 0.14865900000000001
	.quad	0x3fe5102363b25700              # double 0.65822000000000003
	.quad	0x3fcfd93c46d82ba6              # double 0.24881700000000001
	.quad	0x3fd16a4873365882              # double 0.27211200000000002
	.quad	0x3fd21a86940357a3              # double 0.28286899999999998
	.quad	0x3fe7cf09528f190d              # double 0.74402299999999999
	.quad	0x3fe969f05ea24cc7              # double 0.79418200000000005
	.quad	0x3fbd1eb851eb851f              # double 0.11375
	.quad	0x3fb6ada33bd9cae2              # double 0.088586999999999999
	.quad	0x3fe41af9ebe9c886              # double 0.62829299999999999
	.quad	0x3fe95ae5ffa3b9ae              # double 0.79234599999999999
	.quad	0x3fdd8ad256798959              # double 0.46159800000000001
	.quad	0x3fbe7136a400fba9              # double 0.11891500000000001
	.quad	0x3fc37a02fb5d0310              # double 0.15216099999999999
	.quad	0x3fcc2456f75d9a0f              # double 0.219859
	.quad	0x3fb8d5b6805a2d73              # double 0.097011
	.quad	0x3fe56a465a57646b              # double 0.66922300000000001
	.quad	0x3fe999dcb5781c71              # double 0.80003199999999997
	.quad	0x3fcec521dda059a7              # double 0.24039099999999999
	.quad	0x3fe9c443914f483d              # double 0.80520800000000003
	.quad	0x3fe27eb6bf444e0e              # double 0.57796800000000004
	.quad	0x3fb8c426351deefe              # double 0.096742999999999995
	.quad	0x3fe3d50a88effe2a              # double 0.61975599999999997
	.quad	0x3fe6f4eebf65dbfd              # double 0.71739900000000001
	.quad	0x3fc3463497b7414a              # double 0.15057999999999999
	.quad	0x3fef9bcfd4bf0996              # double 0.98777000000000004
	.quad	0x3fde68be2f7b17ce              # double 0.47514299999999998
	.quad	0x3fed0fc9363f572e              # double 0.90817700000000001
	.quad	0x3fe8051c9f72f76e              # double 0.75062399999999996
	.quad	0x3fdc3de6149c6f37              # double 0.441278
	.quad	0x3fd3b62413db7f17              # double 0.30799199999999999
	.quad	0x3fec9e94ab1d4f9c              # double 0.89435799999999998
	.quad	0x3fccca36199780bb              # double 0.22492100000000001
	.quad	0x3fda0a5269595fee              # double 0.40688000000000002
	.quad	0x3fed3a0407cc7d1c              # double 0.91333200000000003
	.quad	0x3fdda72a7bd48cb5              # double 0.46332800000000002
	.quad	0x3fca93faf42784a9              # double 0.20764099999999999
	.quad	0x3fdb3ccd0fe8ab50              # double 0.42558600000000002
	.quad	0x3fedecdaf4adbc66              # double 0.93516299999999997
	.quad	0x3fc590c0ad03d9a9              # double 0.16847999999999999
	.quad	0x3fef7049a9973d9f              # double 0.98245700000000002
	.quad	0x3fe4dd1a21ea3593              # double 0.65198999999999996
	.quad	0x3fadf761cbccf28c              # double 0.058527999999999997
	.quad	0x3fd3fca42aed1394              # double 0.31229499999999999
	.quad	0x3fda87f88765ba6f              # double 0.414549
	.quad	0x3fe8692b3cc4ac6d              # double 0.76283800000000002
	.quad	0x3fed5336deb95e5b              # double 0.916408
	.quad	0x3fdf60a2014727dd              # double 0.49027300000000001
	.quad	0x3fe61cb252ce032e              # double 0.69100300000000003
	.quad	0x3fd581ecd4aa10e0              # double 0.33605499999999999
	.quad	0x3fee73d7d3910c2c              # double 0.95164099999999995
	.quad	0x3fd88abd5dc40075              # double 0.38346799999999998
	.quad	0x3fedcf2cf95d4e90              # double 0.93154000000000003
	.quad	0x3fd7b95e5aff2a17              # double 0.37068899999999999
	.quad	0x3fb631832fcac8e7              # double 0.086693000000000006
	.quad	0x3fe1e4ffc9795b36              # double 0.55920400000000003
	.quad	0x3fb3201040bfe3b0              # double 0.074707999999999997
	.quad	0x3feee525892684cf              # double 0.96547199999999999
	.quad	0x3fee4ca0c282c6ef              # double 0.94685399999999997
	.quad	0x3fe68e8ea39c51db              # double 0.70490200000000003
	.quad	0x3fd0cf3dc054ef46              # double 0.26264900000000002
	.quad	0x3fececcc46950fc7              # double 0.90390599999999999
	.quad	0x3fd4dd872f33ca32              # double 0.32602100000000001
	.quad	0x3fd9ed41b75a74c1              # double 0.40510600000000002
	.quad	0x3fe609d495182a99              # double 0.68869999999999998
	.quad	0x3fe162d40aaeafab              # double 0.54331399999999996
	.quad	0x3fde083558a76102              # double 0.46925099999999997
	.quad	0x3fe23a92a3055326              # double 0.56964999999999999
	.quad	0x3fe16835dedf1e08              # double 0.54397099999999998
	.quad	0x3fdfc36544fe36d2              # double 0.49630099999999999
	.quad	0x3fea7666234a87e4              # double 0.82695300000000004
	.quad	0x3fd8e80bed740c41              # double 0.38916299999999998
	.quad	0x3f9d82773e24febd              # double 0.028818
	.quad	0x3fefd1f3e89a88ad              # double 0.99437900000000001
	.quad	0x3fa9878316a05575              # double 0.049861999999999997
	.quad	0x3fed690364388ebd              # double 0.91906900000000002
	.quad	0x3fd54e874c8ffb8b              # double 0.33291799999999999
	.quad	0x3fcec32a8c9b8455              # double 0.24033099999999999
	.quad	0x3f741d8e86402081              # double 0.0049109999999999996
	.quad	0x3fe5f290abb44e51              # double 0.68586000000000003
	.quad	0x3fc816d6dc1a47aa              # double 0.188197
	.quad	0x3fed7d41743e963e              # double 0.92154000000000003
	.quad	0x3fc122fad6cb5350              # double 0.13388
	.quad	0x3fe90726d04e618d              # double 0.78212300000000001
	.quad	0x3fd3458cd20afa2f              # double 0.30112
	.quad	0x3fe80e5e679463d0              # double 0.75175400000000003
	.quad	0x3fe7b8887229e908              # double 0.74127600000000005
	.quad	0x3feb7c1376d54973              # double 0.85889599999999999
	.quad	0x3fc26822ff08893b              # double 0.14380299999999999
	.quad	0x3fe7f9702e6644d8              # double 0.74919899999999995
	.quad	0x3fee84c271fff79d              # double 0.95370600000000005
	.quad	0x3fd57d5ed06fef7c              # double 0.33577699999999999
	.quad	0x3fdc80a5accd5305              # double 0.44535200000000003
	.quad	0x3fe9aef4e0114d2f              # double 0.80260699999999996
	.quad	0x3fdb2599ed7c6fbd              # double 0.42416999999999999
	.quad	0x3fc4259e1f3a57eb              # double 0.15739800000000001
	.quad	0x3fde2ff4ba51a006              # double 0.47167700000000001
	.quad	0x3fa8d887ebf22c02              # double 0.048527000000000001
	.quad	0x3fd5ebdd334c5da7              # double 0.34252100000000002
	.quad	0x3fa498a222d5171e              # double 0.040226999999999999
	.quad	0x3fe65f3b645a1cac              # double 0.699125
	.quad	0x3fe0f2fba01eeed9              # double 0.52966100000000005
	.quad	0x3fef98548a9bcfd5              # double 0.98734500000000002
	.quad	0x3fbdbca9691a75cd              # double 0.11616
	.quad	0x3fcccf0739b024f6              # double 0.22506799999999999
	.quad	0x3fe6d06bbdbe3c10              # double 0.71294199999999996
	.quad	0x3f5dffc5479d4d83              # double 0.0018309999999999999
	.quad	0x3fe33d20f2becedd              # double 0.60121199999999997
	.quad	0x3fe946ae3a3a8e71              # double 0.78987799999999997
	.quad	0x3faf727136a400fc              # double 0.061420000000000002
	.quad	0x3fcfc0ebedfa43fe              # double 0.24807499999999999
	.quad	0x3fe29fc4c165907e              # double 0.58200300000000005
	.quad	0x3fb65b20b8066c2b              # double 0.087328000000000003
	.quad	0x3fe854c122749f0e              # double 0.76034599999999997
	.quad	0x3fce7991bc558644              # double 0.23808499999999999
	.quad	0x3fe0e4d1a6506141              # double 0.52793199999999996
	.quad	0x3feee28672756862              # double 0.96515200000000001
	.quad	0x3fe83632c1f42bb6              # double 0.75661599999999996
	.quad	0x3fa4aafbc1acde1a              # double 0.040367
	.quad	0x3feb719b4dcebfec              # double 0.85761799999999999
	.quad	0x3fd1da76d97b30f9              # double 0.27895900000000001
	.quad	0x3fe4e69ad42c3c9f              # double 0.65315000000000001
	.quad	0x3feb7ee0b0af5fd4              # double 0.85923799999999994
	.quad	0x3fccef672b884407              # double 0.22605600000000001
	.quad	0x3fec6b8950763a19              # double 0.888127
	.quad	0x3fe2ae536501e258              # double 0.58377999999999997
	.quad	0x3fea79f666234a88              # double 0.82738800000000001
	.quad	0x3fee266fd651b0cd              # double 0.94219200000000003
	.quad	0x3fe2680e06530058              # double 0.57520199999999999
	.quad	0x3fe6c7d1bb4916ca              # double 0.71189199999999997
	.quad	0x3fd4bf50e3476295              # double 0.32417699999999999
	.quad	0x3fd53879c4113c68              # double 0.33157199999999998
	.quad	0x3fab4aec8d5c7475              # double 0.053305999999999999
	.quad	0x3feda441fea8112c              # double 0.92630100000000004
	.quad	0x3fe80d60a6330510              # double 0.751633
	.quad	0x3fc6f19934efcbd5              # double 0.17924799999999999
	.quad	0x3fd93a57eaa2a0a9              # double 0.39418599999999998
	.quad	0x3f36ce789e774eec              # double 3.48E-4
	.quad	0x3fe81bc77143393b              # double 0.75339100000000003
	.quad	0x3fd0836eb4e98138              # double 0.25802199999999997
	.quad	0x3fd270eb24a6a876              # double 0.28814200000000001
	.quad	0x3fca3ad9f0a1be2b              # double 0.20492099999999999
	.quad	0x3fe2ab8e8ea39c52              # double 0.58344200000000002
	.quad	0x3f88750c1b97353b              # double 0.011941999999999999
	.quad	0x3fdc369b9d7fd827              # double 0.44083299999999997
	.quad	0x3fe42b7fe08aefb3              # double 0.63031000000000004
	.quad	0x3fe1f8bdec5f394b              # double 0.56161399999999995
	.quad	0x3fda048e043a2164              # double 0.406528
	.quad	0x3fd8e81cb46bacf7              # double 0.38916699999999999
	.quad	0x3fbcb2fa93af74cd              # double 0.112106
	.quad	0x3fd3a33bd9cae211              # double 0.306838
	.quad	0x3fd3a11ec918e326              # double 0.30670900000000001
	.quad	0x3fee517e77d523b3              # double 0.94744799999999996
	.quad	0x3fe06ef8055fbb51              # double 0.51354599999999995
	.quad	0x3fcf903211cb039f              # double 0.246588
	.quad	0x3fc44bec679cc74c              # double 0.15856700000000001
	.quad	0x3fd020c8cd63cb81              # double 0.25200099999999998
	.quad	0x3feb6e392e1ef73c              # double 0.85720499999999999
	.quad	0x3fe2ffed20296b33              # double 0.59374099999999996
	.quad	0x3fe69945b6c3760c              # double 0.70621
	.quad	0x3fdd1ede1198aeb8              # double 0.455009
	.quad	0x3fb63358f2e05ccd              # double 0.086721000000000006
	.quad	0x3fc2005c4651f3e9              # double 0.14063600000000001
	.quad	0x3fd4b352a8438088              # double 0.32344499999999998
	.quad	0x3fe1915df6555c53              # double 0.54899500000000001
	.quad	0x3fef2d44dca8e2e3              # double 0.97427600000000003
	.quad	0x3fee955714b9cb68              # double 0.95572999999999996
	.quad	0x3feb66559f6ec5b0              # double 0.85624199999999995
	.quad	0x3fe157a13c254a3c              # double 0.54194699999999996
	.quad	0x3fd0059ea57214f0              # double 0.25034299999999998
	.quad	0x3fa7dbd2fa0d77b8              # double 0.046599000000000002
	.quad	0x3fee423d9231c64c              # double 0.94558600000000003
	.quad	0x3fe76f1bac2df0d4              # double 0.73231299999999999
	.quad	0x3fe98f6ad70e6f2f              # double 0.79875700000000005
	.quad	0x3fbb0025bfad2999              # double 0.105471
	.quad	0x3fe2b823c85c24c4              # double 0.584978
	.quad	0x3fc1a8c586876e1e              # double 0.137963
	.quad	0x3f9022dd7a99fa12              # double 0.015758000000000001
	.quad	0x3fc67eb6bf444e0e              # double 0.17574200000000001
	.quad	0x3fe590c2c5e2cdc0              # double 0.67392099999999999
	.quad	0x3fb0d423d9231c65              # double 0.065737000000000004
	.quad	0x3fefdc9c4da9003f              # double 0.99568
	.quad	0x3fd5509bf9c62a1b              # double 0.33304499999999998
	.quad	0x3fdc6801711947d0              # double 0.44384800000000002
	.quad	0x3fe210667f90d9d7              # double 0.56450199999999995
	.quad	0x3fe2bcc07aaef2c7              # double 0.58554099999999998
	.quad	0x3fd8c9d9d3458cd2              # double 0.38732
	.quad	0x3fc0746cb966be7b              # double 0.128553
	.quad	0x3fe9dee34fc610f1              # double 0.80845800000000001
	.quad	0x3fecdb3397dd00f7              # double 0.90175799999999995
	.quad	0x3fee2014727dcbde              # double 0.94141600000000003
	.quad	0x3fc4394face67d78              # double 0.157999
	.quad	0x3fd45269595feda6              # double 0.31752999999999998
	.quad	0x3fd2c942d490e66d              # double 0.29353400000000002
	.quad	0x3fc22131a8ef77f2              # double 0.14163799999999999
	.quad	0x3fd5c22ab25b317f              # double 0.339976
	.quad	0x3fd51344806290ef              # double 0.32930100000000001
	.quad	0x3fe6102795703f2d              # double 0.68947199999999997
	.quad	0x3fde36d655e28aa4              # double 0.47209699999999999
	.quad	0x3fe2c1248d7e0264              # double 0.58607699999999996
	.quad	0x3fb15fdcdf698783              # double 0.067868999999999999
	.quad	0x3fe73f3387160957              # double 0.72646500000000003
	.quad	0x3fed4c0df58c08b7              # double 0.91553399999999996
	.quad	0x3fe350247021d10b              # double 0.60353299999999999
	.quad	0x3fe17ae147ae147b              # double 0.54625000000000001
	.quad	0x3fe79d388a8b08dd              # double 0.73794199999999999
	.quad	0x3fd6e88df37329c3              # double 0.35794399999999998
	.quad	0x3fd06f6512a94ff0              # double 0.256799
	.quad	0x3fe59a62ed352221              # double 0.67509600000000003
	.quad	0x3fddb7b28954a7f8              # double 0.464337
	.quad	0x3fd2e7e1fc08fa7b              # double 0.29540300000000003
	.quad	0x3febd47e06961c37              # double 0.86968900000000005
	.quad	0x3fe92a6d26740810              # double 0.78642900000000004
	.quad	0x3fe36e6d9be4cd75              # double 0.60723000000000005
	.quad	0x3f7bdb5d894812be              # double 0.0068009999999999998
	.quad	0x3fb6e631f8a0902e              # double 0.089450000000000001
	.quad	0x3fe88f8c64fdb09a              # double 0.76752299999999996
	.quad	0x3fecd74f722e1ac5              # double 0.90128299999999995
	.quad	0x3fcee1a3f4666eca              # double 0.241261
	.quad	0x3fec42eba27ae9ab              # double 0.88316899999999998
	.quad	0x3fe8cd099e0e7360              # double 0.77502899999999996
	.quad	0x3fcbd76ee73e681b              # double 0.21751200000000001
	.quad	0x3fd1a69be09bb6aa              # double 0.27579399999999998
	.quad	0x3fc241aac53b0814              # double 0.14262900000000001
	.quad	0x3fe5623f24d8fd5d              # double 0.66824300000000003
	.quad	0x3fb2d9dfdac68a93              # double 0.073636999999999994
	.quad	0x3fe5a222d5171e2a              # double 0.67604200000000003
	.quad	0x3faf87485e3da2f9              # double 0.061579000000000002
	.quad	0x3fe80882f0e0a84c              # double 0.75103900000000001
	.quad	0x3fe6be3c105186db              # double 0.71072199999999996
	.quad	0x3fccde76427c7c52              # double 0.22553899999999999
	.quad	0x3fd25d35653c9abb              # double 0.286939
	.quad	0x3feaf71eafee6fb5              # double 0.84266600000000003
	.quad	0x3fd288ce703afb7f              # double 0.28960000000000002
	.quad	0x3fd06adf71eafee7              # double 0.256523
	.quad	0x3fb13a1d323fee2d              # double 0.067293000000000006
	.quad	0x3fcb10f51ac9afe2              # double 0.211455
	.quad	0x3fea777079e59f2c              # double 0.82708000000000003
	.quad	0x3feeddb5525cc426              # double 0.96456399999999998
	.quad	0x3fbcfc829cfdd228              # double 0.113228
	.quad	0x3fd21dc0db2702a3              # double 0.28306599999999998
	.quad	0x3febbfe9fadafd11              # double 0.86717699999999998
	.quad	0x3fef8e410b630a91              # double 0.98611499999999996
	.quad	0x3fe707980f55de59              # double 0.71967700000000001
	.quad	0x3fbd2ae8e1d6494d              # double 0.113936
	.quad	0x3facf0307f23cc8e              # double 0.056520000000000001
	.quad	0x3fe099780baa582e              # double 0.51873400000000003
	.quad	0x3fe5c087442c7fbb              # double 0.67975200000000002
	.quad	0x3fe1328522ea0fd4              # double 0.53741700000000003
	.quad	0x3fab333333333333              # double 0.053124999999999999
	.quad	0x3fe0fefbf401c4fc              # double 0.53112599999999999
	.quad	0x3fe7b2a6b0d95140              # double 0.74055800000000005
	.quad	0x3fd7bcdfefbf401c              # double 0.37090299999999998
	.quad	0x3fe40a6b93ccd0ff              # double 0.62627200000000005
	.quad	0x3fc5c55000c9539c              # double 0.17008400000000001
	.quad	0x3fe1e45803cd141a              # double 0.55912399999999995
	.quad	0x3fe320b8066c2acc              # double 0.59774400000000005
	.quad	0x3f9401c4fc1df330              # double 0.019538
	.quad	0x3fedf0520d130dfa              # double 0.93558600000000003
	.quad	0x3fe8733ebbfd71b0              # double 0.76406799999999997
	.quad	0x3fdd924af0bf1a5d              # double 0.46205400000000002
	.quad	0x3fef544bb1af3a15              # double 0.97904000000000002
	.quad	0x3fb685015c209247              # double 0.087967000000000004
	.quad	0x3fed94d0dcfcc5b9              # double 0.92441600000000002
	.quad	0x3fd71af3a14cec42              # double 0.36102000000000001
	.quad	0x3fe81376d5497311              # double 0.75237600000000004
	.quad	0x3fb67c49fd7a13c2              # double 0.087833999999999995
	.quad	0x3fee6924f227d029              # double 0.95033500000000004
	.quad	0x3fee1ebc83a96d4c              # double 0.94125199999999997
	.quad	0x3fc19d3458cd20b0              # double 0.13761000000000001
	.quad	0x3fe51a671ef30a4e              # double 0.65947299999999998
	.quad	0x3feb6c4c5974e65c              # double 0.85697
	.quad	0x3fe01591cd1c7de5              # double 0.502633
	.quad	0x3fe75e2ac3222920              # double 0.73024500000000003
	.quad	0x3fec24d6e47dc37a              # double 0.87949699999999997
	.quad	0x3fe131ab0856e697              # double 0.53731300000000004
	.quad	0x3fd2cf312b1b36bd              # double 0.29389599999999999
	.quad	0x3fae48c7192ea52f              # double 0.059149
	.quad	0x3fc5b823c85c24c4              # double 0.169682
	.quad	0x3fec2239e6ab9b24              # double 0.87917800000000001
	.quad	0x3fdd8049667b5f1c              # double 0.460955
	.quad	0x3fef982cb20fb225              # double 0.98732600000000003
	.quad	0x3fbf691212513b5c              # double 0.122697
	.quad	0x3fc923d4f15e7c8d              # double 0.196406
	.quad	0x3febe887a8d64d7f              # double 0.87213499999999999
	.quad	0x3fdcc9f72f76e610              # double 0.44982699999999998
	.quad	0x3fe57c158fb43d8a              # double 0.67139700000000002
	.quad	0x3fe3a4e379b77c03              # double 0.61387800000000003
	.quad	0x3fd2ddf00abf76a3              # double 0.294796
	.quad	0x3fdc9f4906034f40              # double 0.44722200000000001
	.quad	0x3fe24432ca57a787              # double 0.57082500000000003
	.quad	0x3fe713f4a98aa865              # double 0.72118599999999999
	.quad	0x3fdb0ffda4052d66              # double 0.42285099999999998
	.quad	0x3fe5068986fcdee3              # double 0.65704799999999997
	.quad	0x3fc8255b035bd513              # double 0.18864
	.quad	0x3fa912dba4d6e47e              # double 0.048972000000000002
	.quad	0x3feda16e7a311e86              # double 0.925956
	.quad	0x3fd96f2a5a469d73              # double 0.39740999999999999
	.quad	0x3fe9d14e3bcd35a8              # double 0.80679999999999996
	.quad	0x3fe5bf2d3c792d13              # double 0.67958700000000005
	.quad	0x3fd465d3996fa82f              # double 0.31871500000000003
	.quad	0x3fec17763e4abe6a              # double 0.87786399999999998
	.quad	0x3fe71ddc1e7967cb              # double 0.72239500000000001
	.quad	0x3fb07ad080b673c5              # double 0.064374000000000001
	.quad	0x3fa6abffcdab191e              # double 0.044281000000000001
	.quad	0x3fe6601bc98a222d              # double 0.69923199999999996
	.quad	0x3fe4c50efdc9c4db              # double 0.64905500000000005
	.quad	0x3fe1bed740c4156e              # double 0.55454599999999998
	.quad	0x3feb3fb3743632c2              # double 0.85152600000000001
	.quad	0x3fed29c12f09d8c7              # double 0.91134700000000002
	.quad	0x3fdc019b0ab2e169              # double 0.43759799999999999
	.quad	0x3fe1c08b75ea67e8              # double 0.55475399999999997
	.quad	0x3fe41f16b11c6d1e              # double 0.62879499999999999
	.quad	0x3fcd571d1d4738a4              # double 0.22922100000000001
	.quad	0x3fd18e68e3ef2841              # double 0.27431699999999998
	.quad	0x3fdd23854046412d              # double 0.455293
	.quad	0x3fc1e48a58b3f63c              # double 0.13978699999999999
	.quad	0x3fd76c97d8cf398f              # double 0.36600300000000002
	.quad	0x3fef47c0f4517614              # double 0.97750899999999996
	.quad	0x3fe8771001d5c316              # double 0.76453400000000005
	.quad	0x3fec4c70867ad8e4              # double 0.88433099999999997
	.quad	0x3fefaecd07852f7f              # double 0.99008799999999996
	.quad	0x3fce8fa7a85015c2              # double 0.238759
	.quad	0x3fe0420d5629d841              # double 0.50806300000000004
	.quad	0x3fe716bfca85cab0              # double 0.72152700000000003
	.quad	0x3fdba70d1fa33376              # double 0.43207099999999998
	.quad	0x3fcff91600f34507              # double 0.24978900000000001
	.quad	0x3fc95097c80841ee              # double 0.197772
	.quad	0x3fbb82b1f687b13a              # double 0.107463
	.quad	0x3fcd41c8216c6152              # double 0.22857
	.quad	0x3fda51b93037d630              # double 0.41123799999999999
	.quad	0x3fd025d074213a0c              # double 0.25230799999999998
	.quad	0x3febf1f79420b3d5              # double 0.87328700000000004
	.quad	0x3fe544e93e1c9b41              # double 0.66466199999999998
	.quad	0x3fec756861e92924              # double 0.88933200000000001
	.quad	0x3fea0e9d51b4fe7a              # double 0.81428400000000001
	.quad	0x3fe34e8b7e4de3b9              # double 0.60333800000000004
	.quad	0x3fcf5a5b9628cbd1              # double 0.244945
	.quad	0x3fea8e453d20f2bf              # double 0.82986700000000002
	.quad	0x3febf98d8a979e17              # double 0.87421300000000002
	.quad	0x3f88409e55c0fcb5              # double 0.011842
	.quad	0x3fb91ba3ca7503b8              # double 0.098077999999999999
	.quad	0x3fd903361565c2d2              # double 0.39082099999999997
	.quad	0x3febd1611ba3ca75              # double 0.869309
	.quad	0x3fcc10a569b17482              # double 0.21925800000000001
	.quad	0x3feee10cf5b1c865              # double 0.96497200000000005
	.quad	0x3fd5ad362e903644              # double 0.33869700000000003
	.quad	0x3fcbc2e33eff1950              # double 0.21688499999999999
	.quad	0x3fdd0c7c0f451761              # double 0.45388699999999998
	.quad	0x3fd7d1dcd7060bb3              # double 0.37218400000000001
	.quad	0x3fc6e675147f1306              # double 0.17890800000000001
	.quad	0x3fb9715c63ae2542              # double 0.099386000000000002
	.quad	0x3feaf6145953586d              # double 0.84253900000000004
	.quad	0x3f9318fc504816f0              # double 0.01865
	.quad	0x3fc919695d91ab8f              # double 0.19608800000000001
	.quad	0x3fd27bb2fec56d5d              # double 0.2888
	.quad	0x3fef59791819d239              # double 0.97967199999999998
	.quad	0x3fe1007fed20296b              # double 0.53131099999999998
	.quad	0x3fbc3b0c4588a04d              # double 0.110276
	.quad	0x3fbcb9baa1511e00              # double 0.112209
	.quad	0x3fc957470eb24a6b              # double 0.19797600000000001
	.quad	0x3fe298e325d4a5df              # double 0.58116299999999999
	.quad	0x3fda06748e475600              # double 0.40664400000000001
	.quad	0x3fe96f86a098915c              # double 0.79486400000000001
	.quad	0x3fe7e3821af7d30b              # double 0.74652200000000002
	.quad	0x3fea1767903211cb              # double 0.815357
	.quad	0x3facbbe4473cd573              # double 0.056120999999999997
	.quad	0x3fc7e9fadafd1138              # double 0.18682799999999999
	.quad	0x3feaa16616b54e2b              # double 0.832202
	.quad	0x3fe40c73abc94706              # double 0.62651999999999997
	.quad	0x3fe7a074ea8da7f4              # double 0.73833700000000002
	.quad	0x3fdc188f42fe8251              # double 0.43899899999999997
	.quad	0x3fd20d62bf11f927              # double 0.28206700000000001
	.quad	0x3fd1d3996fa82e88              # double 0.27854000000000001
	.quad	0x3fb7c3a42f1ed17c              # double 0.092828999999999995
	.quad	0x3fd8d07c84b5dcc6              # double 0.38772499999999999
	.quad	0x3fa6086bdf4c2b52              # double 0.043033000000000002
	.quad	0x3fe64da6e75ff60a              # double 0.69697900000000002
	.quad	0x3fd2cb9ecf638002              # double 0.29367799999999999
	.quad	0x3fe8051c9f72f76e              # double 0.75062399999999996
	.quad	0x3fddd955714b9cb7              # double 0.46639000000000003
	.quad	0x3fc3aa582dbe7f2c              # double 0.15363599999999999
	.quad	0x3fd0f112fd32c626              # double 0.264714
	.quad	0x3fe8fe931876188b              # double 0.78107599999999999
	.quad	0x3fd3d10b1feeb2d1              # double 0.30963400000000002
	.quad	0x3febee935b91f70e              # double 0.87287300000000001
	.quad	0x3fc0a67e846a5d6c              # double 0.130081
	.quad	0x3fb7f5946c332f01              # double 0.093590999999999994
	.quad	0x3fd9e086bdf4c2b5              # double 0.40432899999999999
	.quad	0x3f901f75104d551d              # double 0.015744999999999999
	.quad	0x3fcdee88df37329c              # double 0.23384199999999999
	.quad	0x3fdf878b7a1c25d0              # double 0.49264799999999997
	.quad	0x3fe134e3369b9d80              # double 0.53770600000000002
	.quad	0x3fca5004fb1183b6              # double 0.205567
	.quad	0x3fe64aea747d805e              # double 0.69664499999999996
	.quad	0x3fd023bbc6eb0b7c              # double 0.25218099999999999
	.quad	0x3fee80b242070b8d              # double 0.95321
	.quad	0x3fe5fb5aea3161a2              # double 0.68693300000000002
	.quad	0x3fd05b9e8c47a17f              # double 0.25559199999999999
	.quad	0x3fe928155d5f56a8              # double 0.78614300000000004
	.quad	0x3fe4c0ee06d93815              # double 0.64855099999999999
	.quad	0x3fecc9752977c88e              # double 0.89959199999999995
	.quad	0x3fdfb884406c00da              # double 0.49563699999999999
	.quad	0x3fd3669ced0b30b6              # double 0.30313800000000002
	.quad	0x3fc3f327aa68f4b6              # double 0.155858
	.quad	0x3fd08c26138fffbd              # double 0.25855400000000001
	.quad	0x3fe713d102bc72e2              # double 0.72116899999999995
	.quad	0x3fe4aa7ded6ba8c6              # double 0.64581200000000005
	.quad	0x3fcdf8012dfd694d              # double 0.23413100000000001
	.quad	0x3fe90c804102ff8f              # double 0.78277600000000003
	.quad	0x3fb82d05f2884838              # double 0.094436999999999993
	.quad	0x3fae9a91105e1c15              # double 0.059773
	.quad	0x3fe98e4da09cc31a              # double 0.79862100000000003
	.quad	0x3fc6a2014727dcbe              # double 0.176819
	.quad	0x3fb4ebedfa43fe5d              # double 0.081725000000000006
	.quad	0x3fbe16616b54e2b0              # double 0.11752899999999999
	.quad	0x3fb214df8b157258              # double 0.070630999999999999
	.quad	0x3fedd72ffd1dcd70              # double 0.93251799999999996
	.quad	0x3feedfb0d51f81a6              # double 0.96480600000000005
	.quad	0x3fd7afc47e49b1fb              # double 0.37010300000000002
	.quad	0x3fe8ff47735c182f              # double 0.78116200000000002
	.quad	0x3fe2057082491afc              # double 0.563164
	.quad	0x3fcd5b0bbf50e347              # double 0.22934099999999999
	.quad	0x3fe852b2bfdb4cc2              # double 0.76009499999999997
	.quad	0x3fc6fdda8bd230ba              # double 0.179622
	.quad	0x3fefc2acb85a4f01              # double 0.992514
	.quad	0x3fd6aad601ffb481              # double 0.35417700000000002
	.quad	0x3fe35b8348f53c58              # double 0.60492100000000004
	.quad	0x3fe3774256bca537              # double 0.60830799999999996
	.quad	0x3fcc938583621fb0              # double 0.22325200000000001
	.quad	0x3fc5476af89c5e70              # double 0.166242
	.quad	0x3fee9b499d0203e6              # double 0.95645599999999997
	.quad	0x3fc073471f79420b              # double 0.12851799999999999
	.quad	0x3fdd58ff75968512              # double 0.45855699999999999
	.quad	0x3fe3aeb1c432ca58              # double 0.61507500000000004
	.quad	0x3fd45275ee99a62f              # double 0.31753300000000001
	.quad	0x3fb9716d2aa5c5f8              # double 0.099387000000000003
	.quad	0x3fd79e731d2e0e30              # double 0.36904599999999999
	.quad	0x3fdd2bcb5fe542e5              # double 0.45579799999999998
	.quad	0x3fe25c5f7c6759ab              # double 0.57377599999999995
	.quad	0x3febc3b0c4588a05              # double 0.86763800000000002
	.quad	0x3fc8da09cc319c5a              # double 0.19415399999999999
	.quad	0x3fe449081c2e33f0              # double 0.63391500000000001
	.quad	0x3fe44cd74927913f              # double 0.63438000000000005
	.quad	0x3fe4224edf612407              # double 0.62918799999999997
	.quad	0x3fe8dce9e5e24788              # double 0.77696699999999996
	.quad	0x3fe5f97aaac1094a              # double 0.68670399999999998
	.quad	0x3fe093e3e29307af              # double 0.51805299999999999
	.quad	0x3fd8eafab53d640f              # double 0.38934200000000002
	.quad	0x3fec6b851eb851ec              # double 0.88812500000000005
	.quad	0x3fe01fe86833c600              # double 0.50389499999999998
	.quad	0x3fe44241c3efae79              # double 0.63308799999999998
	.quad	0x3fcf651b0ccbc05d              # double 0.24527299999999999
	.quad	0x3fd11a5ca29845dd              # double 0.26723400000000003
	.quad	0x3fd5f1737542a23c              # double 0.342862
	.quad	0x3fe189e55c0fcb4f              # double 0.54808299999999999
	.quad	0x3fe7be9a6f826edb              # double 0.74201700000000004
	.quad	0x3fc4e1bd1ed9dfdb              # double 0.16313900000000001
	.quad	0x3fa7620ee8d10f52              # double 0.045670000000000002
	.quad	0x3fbc8f32378ab0c9              # double 0.11156000000000001
	.quad	0x3fd89c99285a921d              # double 0.38455800000000001
	.quad	0x3fa4da09cc319c5a              # double 0.040725999999999998
	.quad	0x3fe714f0520d130e              # double 0.721306
	.quad	0x3fd2d9b5e95b78cd              # double 0.29453800000000002
	.quad	0x3fe213532e7b3d8e              # double 0.564859
	.quad	0x3fedb497b7414a4d              # double 0.92829499999999998
	.quad	0x3fe4c7607c4199fe              # double 0.64933799999999997
	.quad	0x3fcfb65668c26139              # double 0.247752
	.quad	0x3fe135393250b524              # double 0.53774699999999998
	.quad	0x3fe8ac6cdaf4adbc              # double 0.77104799999999995
	.quad	0x3fd9fb506dd69d30              # double 0.40596399999999999
	.quad	0x3fd6d3cbc48f10aa              # double 0.35667700000000002
	.quad	0x3fd38eabffcdab19              # double 0.30558299999999999
	.quad	0x3feb5f84cad57bc8              # double 0.85541
	.quad	0x3fa16249a133c1ce              # double 0.033952999999999997
	.quad	0x3fec2908a265f0f6              # double 0.88000900000000004
	.quad	0x3fce00192a737111              # double 0.234378
	.quad	0x3fe8c4ef88b97785              # double 0.77403999999999995
	.quad	0x3fe4705c896dd26b              # double 0.63871599999999995
	.quad	0x3fee6134ce3de615              # double 0.94936600000000004
	.quad	0x3fde8622c4502689              # double 0.476937
	.quad	0x3fe6a77c45cbbc2c              # double 0.70794500000000005
	.quad	0x3fe3464dc22ab25b              # double 0.60233199999999998
	.quad	0x3fe82b68cef672b9              # double 0.75529900000000005
	.quad	0x3fe7f0f7b9e060fe              # double 0.74816499999999997
	.quad	0x3fe5049667b5f1bf              # double 0.65681
	.quad	0x3fc4bf11f926c7eb              # double 0.162081
	.quad	0x3fe5a433508f648c              # double 0.67629399999999995
	.quad	0x3fd135a426bb55ac              # double 0.268899
	.quad	0x3f875ea67e846a5d              # double 0.011410999999999999
	.quad	0x3fe06cacd184c272              # double 0.513266
	.quad	0x3fc0a6ca03c4b09f              # double 0.13009000000000001
	.quad	0x3fe76cc5fbf83383              # double 0.73202800000000001
	.quad	0x3fe7ae9ab29e4d5e              # double 0.74006400000000006
	.quad	0x3fea034091c08744              # double 0.81289699999999998
	.quad	0x3fb3ac0c62e4d1a6              # double 0.076843999999999995
	.quad	0x3fed3c59b8023a6d              # double 0.91361700000000001
	.quad	0x3fd15cdd50a88f00              # double 0.27129300000000001
	.quad	0x3fcc15d2d01c0ca6              # double 0.219416
	.quad	0x3fd1f8ec0f883340              # double 0.28081800000000001
	.quad	0x3fe7591eeaa6d267              # double 0.72962899999999997
	.quad	0x3fcc0807357e670e              # double 0.218995
	.quad	0x3fdbe991ff7164c7              # double 0.43613099999999999
	.quad	0x3fe4097a67a52ac7              # double 0.62615699999999996
	.quad	0x3fe627ae9ab29e4d              # double 0.69234399999999996
	.quad	0x3fe8fa2ad3e920c0              # double 0.78053799999999995
	.quad	0x3fd0a1dfb9389b52              # double 0.25988
	.quad	0x3f8f2f5558212945              # double 0.015226999999999999
	.quad	0x3fea22467be553ac              # double 0.81668399999999996
	.quad	0x3fe548b86b15f890              # double 0.66512700000000002
	.quad	0x3fd2f9a06a6e32e4              # double 0.29648600000000003
	.quad	0x3fed4edf61240746              # double 0.91587799999999997
	.quad	0x3fac8adeebb341e1              # double 0.055746999999999998
	.quad	0x3fe7f661f18c9fb6              # double 0.74882599999999999
	.quad	0x3f04727dcbddb984              # double 3.8999999999999999E-5
	.quad	0x3fbfa1a0cf1800a8              # double 0.12356
	.quad	0x3fe26c892ab68cef              # double 0.57574899999999996
	.quad	0x3fc76e264e48626f              # double 0.18304899999999999
	.quad	0x3fd600d5e8d54110              # double 0.34380100000000002
	.quad	0x3feb5bdf8f473040              # double 0.85496499999999997
	.quad	0x3fe646b8b69552e3              # double 0.696133
	.quad	0x3fe0e64b2314013f              # double 0.52811200000000003
	.quad	0x3fcc3ff69014b59a              # double 0.22070200000000001
	.quad	0x3fdbc54bcf0b6b6e              # double 0.433917
	.quad	0x3fe670dc768dfbd7              # double 0.70127700000000004
	.quad	0x3fe2292c49342678              # double 0.56752599999999997
	.quad	0x3fdf042d8c2a454e              # double 0.48463000000000001
	.quad	0x3fd75696e58a32f4              # double 0.36465999999999998
	.quad	0x3f9fe69270b06c44              # double 0.031153
	.quad	0x3fe017507e9d94d1              # double 0.50284600000000002
	.quad	0x3fec950331e3a7db              # double 0.89319000000000004
	.quad	0x3feea19220ff5409              # double 0.95722300000000005
	.quad	0x3fece8c26138fffc              # double 0.90341300000000002
	.quad	0x3fd5290257c914b1              # double 0.33062799999999998
	.quad	0x3fe19a9fbe76c8b4              # double 0.55012499999999998
	.quad	0x3fdbbd0e12e83a11              # double 0.43341400000000002
	.quad	0x3fdaad96a6a0125a              # double 0.41684500000000002
	.quad	0x3fc027e0ef99806f              # double 0.126217
	.quad	0x3fe08e368f084620              # double 0.51736000000000004
	.quad	0x3feaa5aab4741073              # double 0.83272299999999999
	.quad	0x3fdef2a5a469d734              # double 0.48355999999999999
	.quad	0x3fe31ca9ef5232d3              # double 0.59724900000000003
	.quad	0x3fe6fdb09a671ef3              # double 0.718468
	.quad	0x3fcd3af74cd3176a              # double 0.22836200000000001
	.quad	0x3fd580a5accd5305              # double 0.33597700000000003
	.quad	0x3fe57d2c7b890d5a              # double 0.67152999999999996
	.quad	0x3fd083a109d0635a              # double 0.25803399999999999
	.quad	0x3fe08ec743201041              # double 0.51742900000000003
	.quad	0x3fddf3bea91d9b1b              # double 0.46800199999999997
	.quad	0x3fea718c9fb6134d              # double 0.82636100000000001
	.quad	0x3fd17e06961c3697              # double 0.27331699999999998
	.quad	0x3fbbd48cb4aec8d6              # double 0.108712
	.quad	0x3fdb22a2c2374795              # double 0.423989
	.quad	0x3fc4f5989df1172f              # double 0.163745
	.quad	0x3fe38ec95bff0457              # double 0.61117999999999995
	.quad	0x3fdbd6ba8c586877              # double 0.43498100000000001
	.quad	0x3feaddd095af294e              # double 0.83957700000000002
	.quad	0x3fdcce5f7403dddb              # double 0.450096
	.quad	0x3f942f1ed17c5ef6              # double 0.019710999999999999
	.quad	0x3fe227221858bc5a              # double 0.56727700000000003
	.quad	0x3fc4e28672756862              # double 0.163163
	.quad	0x3fd1e12a51e321a3              # double 0.27936800000000001
	.quad	0x3fe43fa4c61d8623              # double 0.63276900000000003
	.quad	0x3fd3c0b5675579af              # double 0.30863699999999999
	.quad	0x3fe1d714b9cb6849              # double 0.55750500000000003
	.quad	0x3fd93076c050bd88              # double 0.39358300000000002
	.quad	0x3fd626c7eae5bc88              # double 0.34611700000000001
	.quad	0x3fe01f2ba9d1f601              # double 0.50380499999999995
	.quad	0x3fb15e071c53f39d              # double 0.067840999999999999
	.quad	0x3fed5c1c6088d6d4              # double 0.91749400000000003
	.quad	0x3fe8b2a0663c74fb              # double 0.77180499999999996
	.quad	0x3fd96cdaf4adbc66              # double 0.39726899999999998
	.quad	0x3fe90bfe3b03e20d              # double 0.78271400000000002
	.quad	0x3fe925fe974a3401              # double 0.78588800000000003
	.quad	0x3fb1710880d801b4              # double 0.068130999999999997
	.quad	0x3feeb7b28954a7f8              # double 0.95992399999999999
	.quad	0x3fc844284dfce315              # double 0.18958
	.quad	0x3fe44488c60cbf2b              # double 0.63336599999999998
	.quad	0x3fe3808e9b38d60a              # double 0.60944299999999996
	.quad	0x3fed4ef240fa9c13              # double 0.91588700000000001
	.quad	0x3feeb33daf8df7a5              # double 0.95938000000000001
	.quad	0x3fcedb37c99ae925              # double 0.241065
	.quad	0x3feb6d5cfaacd9e8              # double 0.85709999999999997
	.quad	0x3fdf5bf26f1dc50d              # double 0.48998700000000001
	.quad	0x3fd8b34e7685985b              # double 0.38594400000000001
	.quad	0x3fb91dcd7060bb2c              # double 0.098111000000000003
	.quad	0x3fd91f212d773190              # double 0.39252500000000001
	.quad	0x3fe8fea3df6db941              # double 0.781084
	.quad	0x3fc2365cb35f3d7d              # double 0.14228399999999999
	.quad	0x3fc0e40852b4d8ba              # double 0.13195899999999999
	.quad	0x3fa037f7be121ee6              # double 0.031676999999999997
	.quad	0x3febc3b2dd377e1c              # double 0.86763900000000004
	.quad	0x3fe39b43526527a2              # double 0.612703
	.quad	0x3fec36aa4b9884c7              # double 0.88167300000000004
	.quad	0x3fef632e3821af7d              # double 0.98085699999999997
	.quad	0x3fda69a0ad8a1166              # double 0.41269699999999998
	.quad	0x3fdd8e0c9d9d3459              # double 0.46179500000000001
	.quad	0x3fb913a4f8726d05              # double 0.097956000000000001
	.quad	0x3fc55515054ac29c              # double 0.166659
	.quad	0x3fe6d42a23bff8a9              # double 0.71339900000000001
	.quad	0x3fdeb88ca3e7d135              # double 0.480014
	.quad	0x3fe5e9db65ecc3e3              # double 0.68479699999999999
	.quad	0x3fda09d8c6d612c7              # double 0.40685100000000002
	.quad	0x3fd963cfb3311a54              # double 0.39671699999999999
	.quad	0x3fd228a1dfb9389b              # double 0.28372999999999998
	.quad	0x3fef99b90ea9e6ef              # double 0.98751500000000003
	.quad	0x3fe11986b9c304cd              # double 0.53436600000000001
	.quad	0x3feca76fb09203a3              # double 0.89543899999999998
	.quad	0x3fd59be4cd749279              # double 0.33764
	.quad	0x3fe6535c9e6687f4              # double 0.69767599999999996
	.quad	0x3fe81afe1da7b0b4              # double 0.75329500000000004
	.quad	0x3fe314983d790753              # double 0.59626400000000002
	.quad	0x3fc46aca79357604              # double 0.15950900000000001
	.quad	0x3fdb008e9b38d60a              # double 0.42190899999999998
	.quad	0x3fd96638433d6c72              # double 0.39686399999999999
	.quad	0x3fe61904b3c3e74b              # double 0.690554
	.quad	0x3f78548a9bcfd4bf              # double 0.00594
	.quad	0x3fe79a6d698fe692              # double 0.73760099999999995
	.quad	0x3fed4bbe4473cd57              # double 0.91549599999999998
	.quad	0x3fefefef7c243dcd              # double 0.998039
	.quad	0x3fe3a87a072d1aeb              # double 0.61431599999999997
	.quad	0x3fcc67be553ac4f8              # double 0.221916
	.quad	0x3feda515ce9e5e24              # double 0.92640199999999994
	.quad	0x3fb77a80cf9e3865              # double 0.091713000000000003
	.quad	0x3fe66e6106ab14ec              # double 0.70097399999999999
	.quad	0x3fde490a350d2807              # double 0.47320800000000002
	.quad	0x3fef493c89f40a28              # double 0.97768999999999994
	.quad	0x3fe98f55de58e64b              # double 0.79874699999999998
	.quad	0x3fd0a7503b81b64e              # double 0.260212
	.quad	0x3fe5250f840181e0              # double 0.66077399999999997
	.quad	0x3fe6180d3cff64d0              # double 0.69043600000000005
	.quad	0x3fee7c9ff92f2b67              # double 0.95271300000000003
	.quad	0x3fdd831ad2135dab              # double 0.46112700000000001
	.quad	0x3fe2c9795b35b0bc              # double 0.587094
	.quad	0x3fe4a087ca643cc0              # double 0.64459599999999995
	.quad	0x3fe6f01d9f4d37c1              # double 0.71681099999999998
	.quad	0x3fee087229e90796              # double 0.938531
	.quad	0x3fe68900c521dda0              # double 0.70422399999999996
	.quad	0x3fd0f40e5a35d67c              # double 0.26489600000000002
	.quad	0x3fee966be7afa722              # double 0.95586199999999999
	.quad	0x3fd6396d0917d6b6              # double 0.34725499999999998
	.quad	0x3fdbc8c0ce91c8eb              # double 0.43412800000000001
	.quad	0x3fcb273d5bab2181              # double 0.21213499999999999
	.quad	0x3fef7d2630ec3116              # double 0.98402699999999999
	.quad	0x3fe716787ce95fab              # double 0.72149300000000005
	.quad	0x3fea8ab92c061848              # double 0.829434
	.quad	0x3fd9afa7221858bc              # double 0.40134599999999998
	.quad	0x3fb389d6adf71eb0              # double 0.076322
	.quad	0x3fa54434e3369b9d              # double 0.041535999999999997
	.quad	0x3fef9c8216c61523              # double 0.98785500000000003
	.quad	0x3fe0e9c886162f16              # double 0.52853799999999995
	.quad	0x3fef2bde3fbbd7b2              # double 0.974105
	.quad	0x3f9c62e4d1a65061              # double 0.027720999999999999
	.quad	0x3fb598bf7f06705d              # double 0.084362000000000006
	.quad	0x3fc7c0229a5ebb77              # double 0.18555099999999999
	.quad	0x3feeabb01c92ddbe              # double 0.95845800000000003
	.quad	0x3fefc267839cd812              # double 0.99248099999999995
	.quad	0x3fef736694898f60              # double 0.98283699999999996
	.quad	0x3fe6a085b18548aa              # double 0.70709500000000003
	.quad	0x3fe7c9f2fdb8fde3              # double 0.74340200000000001
	.quad	0x3fd4172abef06b38              # double 0.31391400000000003
	.quad	0x3fd16e935b91f70e              # double 0.272374
	.quad	0x3fe616ededaec4a4              # double 0.690299
	.quad	0x3fe160828c36da88              # double 0.54303100000000004
	.quad	0x3fe9f50c1b97353b              # double 0.81116299999999997
	.quad	0x3fe1934efcbd5561              # double 0.54923200000000005
	.quad	0x3feca5fc7e6b3fea              # double 0.895262
	.quad	0x3fe2834f3fd933e3              # double 0.57852899999999996
	.quad	0x3fe711f70de8f6cf              # double 0.720943
	.quad	0x3fe2a7c7c5260f5e              # double 0.58298099999999997
	.quad	0x3fcc77b395c42203              # double 0.22240299999999999
	.quad	0x3fc54855da272863              # double 0.16627
	.quad	0x3fd6e7f2c3009b30              # double 0.35790699999999998
	.quad	0x3f9b3636f3b213e4              # double 0.026574
	.quad	0x3fd2743a647fdc59              # double 0.28834399999999999
	.quad	0x3feeef08cc575c07              # double 0.96667899999999995
	.quad	0x3fe375ab7dc7abfc              # double 0.60811400000000004
	.quad	0x3fe47ae9ab29e4d6              # double 0.64000400000000002
	.quad	0x3fbf63b256ffc116              # double 0.122615
	.quad	0x3f997aaac1094a2c              # double 0.024882000000000001
	.quad	0x3fda2018a43bb40b              # double 0.40820899999999999
	.quad	0x3fc209e55c0fcb4f              # double 0.140927
	.quad	0x3fef66dbd72bcb60              # double 0.98130600000000001
	.quad	0x3fe83c74fb549f95              # double 0.75738000000000005
	.quad	0x3fd1c3b927d45a60              # double 0.27757100000000001
	.quad	0x3fde07314ca925ff              # double 0.46918900000000002
	.quad	0x3fdd896dd26b723f              # double 0.46151300000000001
	.quad	0x3fe55f2239e6ab9b              # double 0.66786299999999998
	.quad	0x3fcfd694ccab3ede              # double 0.24873600000000001
	.quad	0x3fecdd67ba237cdd              # double 0.90202700000000002
	.quad	0x3fda213e3e29307b              # double 0.408279
	.quad	0x3fe8323dd54da4cf              # double 0.75613300000000006
	.quad	0x3fd0d93c46d82ba6              # double 0.26325900000000002
	.quad	0x3fda68be2f7b17ce              # double 0.41264299999999998
	.quad	0x3fe97a41e57d9dbb              # double 0.79617400000000005
	.quad	0x3feeaf3c2dadb835              # double 0.95889100000000004
	.quad	0x3fb98d36b4c7f349              # double 0.099810999999999997
	.quad	0x3fd5097c80841ede              # double 0.328704
	.quad	0x3fcc9a34ca0c282c              # double 0.22345599999999999
	.quad	0x3fd1897e996312f5              # double 0.27401700000000001
	.quad	0x3fda934267839cd8              # double 0.415238
	.quad	0x3fed7746887a8d65              # double 0.92081000000000002
	.quad	0x3fec1e364bec679d              # double 0.87868800000000002
	.quad	0x3fdfdc8754f3775c              # double 0.49783500000000003
	.quad	0x3fdc168f8e7ddca5              # double 0.43887700000000002
	.quad	0x3fd6c3ac929aa1d7              # double 0.35569299999999998
	.quad	0x3fc75f4e4430b179              # double 0.18259600000000001
	.quad	0x3fe639e492bc2fc7              # double 0.69456700000000005
	.quad	0x3fe791105e1c1509              # double 0.73645799999999995
	.quad	0x3fe1591eeaa6d267              # double 0.54212899999999997
	.quad	0x3fe73d07c84b5dcc              # double 0.72619999999999996
	.quad	0x3fecac215b9a5a8a              # double 0.89601200000000003
	.quad	0x3f973860999dcb58              # double 0.022676000000000002
	.quad	0x3fe76db0dd82fd76              # double 0.73214000000000001
	.quad	0x3fd0368ad6883772              # double 0.25332900000000003
	.quad	0x3feb7f69014b599b              # double 0.85930300000000004
	.quad	0x3fd3a72a7bd48cb5              # double 0.30707800000000002
	.quad	0x3fedb1ec0b567558              # double 0.92796900000000004
	.quad	0x3fc89fe004b7f5a5              # double 0.19237899999999999
	.quad	0x3fd36d9be4cd7492              # double 0.30356499999999997
	.quad	0x3fe2700abf76a2f5              # double 0.57617700000000005
	.quad	0x3fea83d9a95421c0              # double 0.82859499999999997
	.quad	0x3fdd4095f2452c5a              # double 0.457067
	.quad	0x3fe19f8c21e1d218              # double 0.55072600000000005
	.quad	0x3fd74b72c5197a25              # double 0.36398000000000003
	.quad	0x3fe33ff47735c183              # double 0.60155700000000001
	.quad	0x3fdbef34d6a161e5              # double 0.436475
	.quad	0x3fe9aa9f7b5aea31              # double 0.80207799999999996
	.quad	0x3fe4c3dee78183f9              # double 0.64890999999999999
	.quad	0x3fe6abf76a2f48c3              # double 0.70849200000000001
	.quad	0x3fdb05ccc89b0ee5              # double 0.42222900000000002
	.quad	0x3fecf2b66b6177ea              # double 0.90462799999999999
	.quad	0x3fba6d04e618ce2d              # double 0.103226
	.quad	0x3fcb1e53a81dc0db              # double 0.211863
	.quad	0x3fd49a5a89b951c6              # double 0.32192100000000001
	.quad	0x3fd04f722e1ac57e              # double 0.25484899999999999
	.quad	0x3fc05f7403dddb12              # double 0.127913
	.quad	0x3fe736f7e3d1cc10              # double 0.72545999999999999
	.quad	0x3fe1ba30121682f9              # double 0.55397799999999997
	.quad	0x3fee38d1d8a54824              # double 0.94443600000000005
	.quad	0x3fea15bdd76683c3              # double 0.81515400000000005
	.quad	0x3fca01eeed8904f7              # double 0.203184
	.quad	0x3fa698bb4d48882f              # double 0.044134
	.quad	0x3fcb17a46173b85f              # double 0.21165900000000001
	.quad	0x3f84dd72367e414e              # double 0.010187999999999999
	.quad	0x3fdc76965f5275ef              # double 0.44473800000000002
	.quad	0x3fdcf41f212d7732              # double 0.45240000000000002
	.quad	0x3fddeb3dd11be6e6              # double 0.46748299999999998
	.quad	0x3fec6f1561911490              # double 0.88856000000000002
	.quad	0x3fe53aa582dbe7f3              # double 0.66340900000000003
	.quad	0x3fe7d99029ae4f33              # double 0.74530799999999997
	.quad	0x3fe29d8c6d612c6b              # double 0.58173200000000003
	.quad	0x3fdf71ac14c660a2              # double 0.491313
	.quad	0x3fee75dbb9cf9a07              # double 0.95188700000000004
	.quad	0x3fc47f993d5347a6              # double 0.16014400000000001
	.quad	0x3fc8c9f2fdb8fde3              # double 0.193663
	.quad	0x3fd49aed56b00ffe              # double 0.32195600000000002
	.quad	0x3fb5c5d63886594b              # double 0.085050000000000001
	.quad	0x3fd076c8b4395810              # double 0.25724999999999998
	.quad	0x3fd4072085b18549              # double 0.31293500000000002
	.quad	0x3fe10637bd05af6c              # double 0.53200899999999995
	.quad	0x3fe5f3ade225fa66              # double 0.68599600000000005
	.quad	0x3fe3a7264a16a487              # double 0.61415399999999998
	.quad	0x3fe4a0ba1f4b1ee2              # double 0.64461999999999997
	.quad	0x3fe784102ff8ec10              # double 0.73487100000000005
	.quad	0x3fee7eeb2d0a2446              # double 0.95299299999999998
	.quad	0x3fc76c4827b6fe2e              # double 0.18299199999999999
	.quad	0x3fe2dd26b723ee1c              # double 0.58949600000000002
	.quad	0x3fd0992428d434a0              # double 0.25934699999999999
	.quad	0x3fd409e12a51e322              # double 0.31310300000000002
	.quad	0x3f89f340d4dc65c7              # double 0.012671
	.quad	0x3fc819652bd3c361              # double 0.188275
	.quad	0x3fe70d73860999dd              # double 0.72039200000000003
	.quad	0x3fcb20e1f7d73c92              # double 0.21194099999999999
	.quad	0x3fe22bde3fbbd7b2              # double 0.567855
	.quad	0x3fe5a9717df19d67              # double 0.67693400000000004
	.quad	0x3fed831ad2135dab              # double 0.92225400000000002
	.quad	0x3fad321e603d5779              # double 0.057022999999999997
	.quad	0x3fe908e15011904b              # double 0.78233399999999997
	.quad	0x3fe87687b139c94f              # double 0.76446899999999995
	.quad	0x3fe1ecc5fbf83383              # double 0.56015300000000001
	.quad	0x3fe38f8a4c1ebc84              # double 0.61127200000000004
	.quad	0x3fdefb7a5f41aef7              # double 0.484099
	.quad	0x3fe22fd113836a83              # double 0.56833699999999998
	.quad	0x3fe958622c450269              # double 0.79203900000000005
	.quad	0x3fe994b9cb6848bf              # double 0.79940500000000003
	.quad	0x3fe487e9d94d0dd0              # double 0.64159100000000002
	.quad	0x3fde886df82b1f68              # double 0.47707699999999997
	.quad	0x3fb77c243dccea29              # double 0.091738
	.quad	0x3fd1eb4202d9cf14              # double 0.27998400000000001
	.quad	0x3fe500f12c27a637              # double 0.65636499999999998
	.quad	0x3fbd50dae3e6c4c6              # double 0.11451500000000001
	.quad	0x3fdc7acc4ef88b97              # double 0.44499499999999997
	.quad	0x3fc9e4a38327674d              # double 0.20229
	.quad	0x3fc0d68837718655              # double 0.131547
	.quad	0x3fcb064ece9a2c67              # double 0.21113000000000001
	.quad	0x3fcfd616f86a0989              # double 0.248721
	.quad	0x3fc2ba7b9170d62c              # double 0.146316
	.quad	0x3feb691212513b5c              # double 0.856576
	.quad	0x3fda8aeb80ecfa6a              # double 0.41472900000000001
	.quad	0x3fda199780baa583              # double 0.40781200000000001
	.quad	0x3fdc1144cbe1eb42              # double 0.438554
	.quad	0x3fd68637bd05af6c              # double 0.35194199999999998
	.quad	0x3fd2854477ff151e              # double 0.28938399999999997
	.quad	0x3fec477dd872f33d              # double 0.88372700000000004
	.quad	0x3f718c197e564734              # double 0.0042839999999999996
	.quad	0x3fe61a6d698fe692              # double 0.69072599999999995
	.quad	0x3fa5cf893faf4278              # double 0.042598999999999998
	.quad	0x3feee4cb5bb384fd              # double 0.96542899999999998
	.quad	0x3fecd4562e09fe87              # double 0.90092000000000005
	.quad	0x3fb1a5657fb69985              # double 0.068930000000000005
	.quad	0x3fe932441fea8113              # double 0.78738600000000003
	.quad	0x3fe748c9320d9946              # double 0.72763500000000003
	.quad	0x3fbbd2e946801712              # double 0.10868700000000001
	.quad	0x3faaf74cd31769a9              # double 0.052668
	.quad	0x3fef634fc610f0e9              # double 0.98087299999999999
	.quad	0x3fdbedfe75bc44bf              # double 0.43640099999999998
	.quad	0x3fe2efd00713f078              # double 0.59177400000000002
	.quad	0x3fd8e0114d2f5dbc              # double 0.38867600000000002
	.quad	0x3fe942aa9f7b5aea              # double 0.78938799999999998
	.quad	0x3fe7aa5a469d7343              # double 0.73954500000000001
	.quad	0x3fe8f3cf70153bd1              # double 0.77976199999999996
	.quad	0x3fe4ba6efc371da3              # double 0.64775799999999994
	.quad	0x3fe544d013a92a30              # double 0.66464999999999996
	.quad	0x3fdf38ac18f81e8a              # double 0.48783399999999999
	.quad	0x3fe2eca25529fe00              # double 0.59138599999999997
	.quad	0x3fd8507a6bd6e8b0              # double 0.37991200000000003
	.quad	0x3fda19ce075f6fd2              # double 0.40782499999999999
	.quad	0x3fc0560c7c0f4517              # double 0.12762599999999999
	.quad	0x3fe7cc63f141205c              # double 0.74370000000000003
	.quad	0x3fb36e1deacc9214              # double 0.075898999999999994
	.quad	0x3fe4d97d49d7ba67              # double 0.65154900000000004
	.quad	0x3feca1d53cddd6e0              # double 0.89475499999999996
	.quad	0x3fd4b51bd61f5be6              # double 0.32355400000000001
	.quad	0x3fc02dbe7f2c300a              # double 0.12639600000000001
	.quad	0x3feaa0afa2f05a71              # double 0.83211500000000005
	.quad	0x3fe2bf290abb44e5              # double 0.58583499999999999
	.quad	0x3fe85a8155d5f56a              # double 0.76104799999999995
	.quad	0x3fe007db2b346131              # double 0.50095900000000004
	.quad	0x3fdd48301a79feca              # double 0.45753100000000002
	.quad	0x3f9dc011d3671ac1              # double 0.029052999999999999
	.quad	0x3fd74f3775b81301              # double 0.36420999999999998
	.quad	0x3fe2eb0fadf2ecf2              # double 0.591194
	.quad	0x3fef4753e707e176              # double 0.97745700000000002
	.quad	0x3fea0fb86f47b678              # double 0.814419
	.quad	0x3fdc20817fc7607c              # double 0.43948399999999999
	.quad	0x3fdc6e5471715c64              # double 0.44423400000000002
	.quad	0x3fef8e4fb97bb731              # double 0.98612200000000005
	.quad	0x3fef09fe86833c60              # double 0.96996999999999999
	.quad	0x3fca226809d49518              # double 0.204175
	.quad	0x3fb51cf355cd91ef              # double 0.082473000000000005
	.quad	0x3fe4ee88df37329c              # double 0.65411799999999998
	.quad	0x3fc386ca89fc6da4              # double 0.15255099999999999
	.quad	0x3fed62b27cbf6e3f              # double 0.91829799999999995
	.quad	0x3fe982afdda8bd23              # double 0.79720299999999999
	.quad	0x3fee8e4b87bdcf03              # double 0.95487
	.quad	0x3fe0139eadd590c1              # double 0.50239500000000004
	.quad	0x3fd13af31b152f3c              # double 0.26922299999999999
	.quad	0x3fd2c5b8dc55000d              # double 0.29331800000000002
	.quad	0x3fdf23b3636f3b21              # double 0.48655399999999999
	.quad	0x3fc330d73860999e              # double 0.14992800000000001
	.quad	0x3fd701083dbc2331              # double 0.35943799999999998
	.quad	0x3fe645da6a444178              # double 0.69602699999999995
	.quad	0x3fcfecbb7f9d6f11              # double 0.24941199999999999
	.quad	0x3fe5a6223e186983              # double 0.67652999999999996
	.quad	0x3feb8728e92d55a4              # double 0.86024900000000004
	.quad	0x3fe888f217093101              # double 0.76671699999999998
	.quad	0x3fdeeaf251c193b4              # double 0.48309000000000002
	.quad	0x3fd96c1e364bec68              # double 0.39722400000000002
	.quad	0x3fc588e368f08462              # double 0.16824
	.quad	0x3fe1be2d6238da3c              # double 0.55446499999999999
	.quad	0x3fbe16f86a098916              # double 0.117538
	.quad	0x3fe9f5e41d4b6a62              # double 0.81126600000000004
	.quad	0x3f88c75c4a83b1d1              # double 0.012099
	.quad	0x3fcef23033a4723b              # double 0.24176600000000001
	.quad	0x3fecdbf26f1dc50d              # double 0.90184900000000001
	.quad	0x3fe76f88b9778573              # double 0.73236500000000004
	.quad	0x3fed24a6a875d56f              # double 0.91072399999999998
	.quad	0x3fe702a9930be0df              # double 0.71907500000000002
	.quad	0x3fc92b020c49ba5e              # double 0.19662499999999999
	.quad	0x3fed50f840181e04              # double 0.916134
	.quad	0x3fe50e29f9ce8d97              # double 0.65797899999999998
	.quad	0x3fc66162f166e009              # double 0.174847
	.quad	0x3fdde5c4eb56fb8f              # double 0.46714899999999998
	.quad	0x3fe4e2bcf91a32b1              # double 0.65267799999999998
	.quad	0x3feea107b784662c              # double 0.95715700000000003
	.quad	0x3fdd0096feb4a665              # double 0.45316099999999998
	.quad	0x3fa81f10667f90da              # double 0.047112000000000001
	.quad	0x3fdc9ced0b30b5aa              # double 0.44707799999999998
	.quad	0x3fd0abffcdab191e              # double 0.26049800000000001
	.quad	0x3fe7731098d477bc              # double 0.732796
	.quad	0x3fe17f0ed3d859c9              # double 0.54676000000000002
	.quad	0x3fdbb295e9e1b08a              # double 0.43277500000000002
	.quad	0x3fd1c5d206c8711d              # double 0.27769899999999997
	.quad	0x3fabdba0a5269596              # double 0.05441
	.quad	0x3fe6c7a398201cd6              # double 0.71187
	.quad	0x3fe37e02645e4e6a              # double 0.60913200000000001
	.quad	0x3fe3671476af89c6              # double 0.60633300000000001
	.quad	0x3feee559f6ec5b08              # double 0.96549700000000004
	.quad	0x3fef0b4395810625              # double 0.97012500000000001
	.quad	0x3fd72e2fbe33acd6              # double 0.36219400000000002
	.quad	0x3fe60b0af5fd47bf              # double 0.68884800000000002
	.quad	0x3fac779a6b50b0f2              # double 0.055599999999999997
	.quad	0x3fd3a4873365881a              # double 0.306917
	.quad	0x3fdaaf4adbc664d4              # double 0.41694900000000001
	.quad	0x3fb098c3b0c4588a              # double 0.064831
	.quad	0x3fa6683c297bfa4c              # double 0.043763999999999997
	.quad	0x3fe21ab29e4d5d81              # double 0.56575900000000001
	.quad	0x3fe3bfb15b573eab              # double 0.61714999999999998
	.quad	0x3fdaf9ca5bd944aa              # double 0.42149599999999998
	.quad	0x3fe7b365881a1555              # double 0.740649
	.quad	0x3fe7cffeb074a772              # double 0.74414000000000002
	.quad	0x3fe893660e51d25b              # double 0.76799300000000004
	.quad	0x3f97967caea747d8              # double 0.023035
	.quad	0x3fe32cbc8c0ce91d              # double 0.59921100000000005
	.quad	0x3fee2d87f88765ba              # double 0.94305799999999995
	.quad	0x3fe0cf70153bd167              # double 0.52532199999999996
	.quad	0x3fd401a79fec99f2              # double 0.31260100000000002
	.quad	0x3fe3453d20f2becf              # double 0.60220200000000002
	.quad	0x3fb1f72f76e6106b              # double 0.070178000000000004
	.quad	0x3fd003e20ccff21b              # double 0.25023699999999999
	.quad	0x3fd563ae2541d8e8              # double 0.33420899999999998
	.quad	0x3fc8856605ee568a              # double 0.19157099999999999
	.quad	0x3fbb01b866e43aa8              # double 0.10549500000000001
	.quad	0x3fc6a0663c74fb55              # double 0.17677000000000001
	.quad	0x3fd5350092ccf6be              # double 0.33135999999999999
	.quad	0x3fe57eb4a66559f7              # double 0.67171700000000001
	.quad	0x3fd59d7774aba387              # double 0.33773599999999998
	.quad	0x3feb1c3265add9c2              # double 0.84719199999999995
	.quad	0x3fda1fe64f54d1e9              # double 0.40819699999999998
	.quad	0x3f9d2806af46aa08              # double 0.028472999999999998
	.quad	0x3fec9f31f46ed246              # double 0.89443300000000003
	.quad	0x3fe72e70c1333b97              # double 0.72441900000000004
	.quad	0x3fd6c9363f572de4              # double 0.35603099999999999
	.quad	0x3fc8e1cde5d18091              # double 0.19439100000000001
	.quad	0x3fe2f0c1333b96af              # double 0.591889
	.quad	0x3fd9aa64c2f837b5              # double 0.40102500000000002
	.quad	0x3fb8813cab81f96a              # double 0.095722000000000001
	.quad	0x3feae2ac322291fb              # double 0.84016999999999997
	.quad	0x3fdbf893faf42785              # double 0.43704700000000002
	.quad	0x3fd03e29307af20f              # double 0.25379400000000002
	.quad	0x3fca779207d4e098              # double 0.20677400000000001
	.quad	0x3fc77efe0ce0b913              # double 0.183563
	.quad	0x3fcb284167a95c85              # double 0.21216599999999999
	.quad	0x3fe3ce7ee9142b30              # double 0.61895699999999998
	.quad	0x3fe3af7d30ad46f6              # double 0.61517200000000005
	.quad	0x3fd785510d38cda7              # double 0.36751200000000001
	.quad	0x3fe2329a1b9f98b7              # double 0.56867699999999999
	.quad	0x3fe1d7eaa2a0a958              # double 0.55760699999999996
	.quad	0x3fe3c4c7b02d59d5              # double 0.61777099999999996
	.quad	0x3fd7cad57bc7f77b              # double 0.371755
	.quad	0x3fe6f7ec3547e069              # double 0.71776399999999996
	.quad	0x3fe82b21815a07b3              # double 0.75526499999999996
	.quad	0x3fec1ff92f2b66b6              # double 0.87890299999999999
	.quad	0x3fe7dbff04577d95              # double 0.74560499999999996
	.quad	0x3fe6ee41919ac797              # double 0.716584
	.quad	0x3fde85c24c404a73              # double 0.476914
	.quad	0x3fdbab10ba6266fd              # double 0.43231599999999998
	.quad	0x3fc4b7995ee136e7              # double 0.161853
	.quad	0x3fdf314ca925fe97              # double 0.48738399999999998
	.quad	0x3fd75675579af188              # double 0.36465199999999998
	.quad	0x3fd26e7a311e85fd              # double 0.287993
	.quad	0x3feda806af46aa08              # double 0.92676099999999995
	.quad	0x3fc13a92a3055326              # double 0.1346
	.quad	0x3fdf94ccab3edd8b              # double 0.49345699999999998
	.quad	0x3fe121b9f98b71b9              # double 0.53536700000000004
	.quad	0x3fcc8dda48b65237              # double 0.223079
	.quad	0x3fe47774aba38759              # double 0.63958199999999998
	.quad	0x3fe66feb4a66559f              # double 0.70116199999999995
	.quad	0x3fa9c0ebedfa43fe              # double 0.050299999999999997
	.quad	0x3fbea4fca42aed14              # double 0.11970500000000001
	.quad	0x3fe0556f32bdc26e              # double 0.51042900000000002
	.quad	0x3feafe1da7b0b392              # double 0.84352000000000005
	.quad	0x3fecb03c07ee0b0b              # double 0.896513
	.quad	0x3fd108aac96cc5fc              # double 0.266154
	.quad	0x3fd361bb05faebc4              # double 0.30284
	.quad	0x3fed5e74299d883c              # double 0.91778000000000004
	.quad	0x3feca95c853c1483              # double 0.89567399999999997
	.quad	0x3fe861e0c5a8155d              # double 0.76194799999999996
	.quad	0x3f8b76b3bb83cf2d              # double 0.01341
	.quad	0x3fee74256bca5376              # double 0.95167800000000002
	.quad	0x3fcdc9bc77143394              # double 0.23271900000000001
	.quad	0x3fd74167a95c853c              # double 0.363367
	.quad	0x3feece93e1c9b414              # double 0.96271700000000004
	.quad	0x3fd45a63f9a49c2c              # double 0.31801699999999999
	.quad	0x3f8538ac18f81e8a              # double 0.010362
	.quad	0x3fe29b024f6598e1              # double 0.58142199999999999
	.quad	0x3fdf984a0e410b63              # double 0.49367
	.quad	0x3fc53a2df9378ee3              # double 0.16583800000000001
	.quad	0x3fe3cf09528f190d              # double 0.61902299999999999
	.quad	0x3fd9fc5479d4d834              # double 0.406026
	.quad	0x3fecce618ce2d1f2              # double 0.90019300000000002
	.quad	0x3fd3d698fe69270b              # double 0.309973
	.quad	0x3fea5e310dbf0564              # double 0.823998
	.quad	0x3fd45c358afc47e5              # double 0.31812800000000002
	.quad	0x3fe94f9a06a6e32e              # double 0.79096699999999998
	.quad	0x3f92845996744b2b              # double 0.018082999999999998
	.quad	0x3fd486e7e62dc6e3              # double 0.32073400000000002
	.quad	0x3fe809fa54c55433              # double 0.75121800000000005
	.quad	0x3fdf3879c4113c68              # double 0.48782199999999998
	.quad	0x3fe6e62bae03b3ea              # double 0.71559700000000004
	.quad	0x3fe6ffa7eb6bf445              # double 0.71870800000000001
	.quad	0x3fe0be963dc486ad              # double 0.52326499999999998
	.quad	0x3fc77396d0917d6b              # double 0.18321499999999999
	.quad	0x3fe1905c03361566              # double 0.54887200000000003
	.quad	0x3fc348fd9fd36f7e              # double 0.15066499999999999
	.quad	0x3fc20f5e41d4b6a6              # double 0.141094
	.quad	0x3fc6374794ea0770              # double 0.17356199999999999
	.quad	0x3fc066cb10342aaa              # double 0.128137
	.quad	0x3fcd9acffa7eb6bf              # double 0.23128699999999999
	.quad	0x3fef240746455eaf              # double 0.97314800000000001
	.quad	0x3fd5a1dfb9389b52              # double 0.338005
	.quad	0x3faf9314445aa2e4              # double 0.061669000000000002
	.quad	0x3fefefda836eb4ea              # double 0.99802900000000005
	.quad	0x3fc6889c1b54195d              # double 0.17604400000000001
	.quad	0x3fb6f177a7008a69              # double 0.089621999999999993
	.quad	0x3fe50d8ec95bff04              # double 0.65790499999999996
	.quad	0x3fe45413122b7baf              # double 0.63526300000000002
	.quad	0x3fe8240314877681              # double 0.75439599999999996
	.quad	0x3fabca31e7d9988d              # double 0.054276999999999999
	.quad	0x3fe2d3c9abb01c93              # double 0.58835300000000001
	.quad	0x3fb2871a3b14a904              # double 0.072373999999999994
	.quad	0x3fd8db0574b40703              # double 0.38836799999999999
	.quad	0x3fd8c08b75ea67e8              # double 0.38675199999999998
	.quad	0x3fd072756861e929              # double 0.25698599999999999
	.quad	0x3fe3b68cef672b88              # double 0.61603399999999997
	.quad	0x3fe9988b11409a24              # double 0.79987099999999999
	.quad	0x3fbad362e9036439              # double 0.10478800000000001
	.quad	0x3fdb660a2014727e              # double 0.42810300000000001
	.quad	0x3fe822856605ee57              # double 0.75421400000000005
	.quad	0x3fe5452a411c2a02              # double 0.66469299999999998
	.quad	0x3fe8758e219652bd              # double 0.76434999999999997
	.quad	0x3fa79a2834d26fa4              # double 0.046098
	.quad	0x3fe0427631b584b2              # double 0.50811300000000004
	.quad	0x3fee0ae74f2f123c              # double 0.93883099999999997
	.quad	0x3fe8a41a261bf37c              # double 0.77003200000000004
	.quad	0x3fea132b55ef1fde              # double 0.81484000000000001
	.quad	0x3fe95a4484944ed7              # double 0.792269
	.quad	0x3fe30ad256798959              # double 0.59507100000000002
	.quad	0x3feb10b630a91538              # double 0.84579000000000004
	.quad	0x3fe29a4df47f993d              # double 0.58133599999999996
	.quad	0x3fa14b9cb6848beb              # double 0.033779999999999998
	.quad	0x3feed04816f0068e              # double 0.96292500000000003
	.quad	0x3feb275cd0bb6ed6              # double 0.84855499999999995
	.quad	0x3fe29b10fd7e4580              # double 0.58142899999999997
	.quad	0x3fd036006d0d4995              # double 0.25329600000000002
	.quad	0x3fec2dff822bbecb              # double 0.88061500000000004
	.quad	0x3f85989df1172ef1              # double 0.010545000000000001
	.quad	0x3fdce358298cc144              # double 0.451376
	.quad	0x3fd4e7f2c3009b30              # double 0.32665699999999998
	.quad	0x3fb908919ef954eb              # double 0.097786999999999999
	.quad	0x3fd815a07b352a84              # double 0.37631999999999999
	.quad	0x3fb92d234eb9a177              # double 0.098345000000000002
	.quad	0x3fe6ff972474538f              # double 0.71870000000000001
	.quad	0x3fd4f0dc768dfbd7              # double 0.32720100000000002
	.quad	0x3fd56e47dc37a3db              # double 0.33485599999999999
	.quad	0x3fd8c1c1d6cf850e              # double 0.386826
	.quad	0x3fcba450acc0bdcb              # double 0.21595200000000001
	.quad	0x3fe9836a832b990b              # double 0.797292
	.quad	0x3fe5b6262cba732e              # double 0.678485
	.quad	0x3fef7075b3e1437c              # double 0.98247799999999996
	.quad	0x3fdcc21e1d2178f7              # double 0.44934800000000003
	.quad	0x3fdbcdb37c99ae92              # double 0.43442999999999998
	.quad	0x3fe1f87f023e9ea1              # double 0.56158399999999997
	.quad	0x3fd4935b91f70de9              # double 0.321494
	.quad	0x3f8c21187e7c06e2              # double 0.013735000000000001
	.quad	0x3fcbf8d2e514c22f              # double 0.218531
	.quad	0x3fdccf1800a7c5ac              # double 0.45013999999999998
	.quad	0x3fd572c94b380cb7              # double 0.33513100000000001
	.quad	0x3fcccd31769a9110              # double 0.22501199999999999
	.quad	0x3fddbab649d388a9              # double 0.46452100000000002
	.quad	0x3fc3f540895d0b74              # double 0.15592200000000001
	.quad	0x3feb4c6c54bcf0b7              # double 0.85307900000000003
	.quad	0x3fe1fc158fb43d8a              # double 0.56202200000000002
	.quad	0x3fca79c4113c6866              # double 0.206841
	.quad	0x3fd923b3636f3b21              # double 0.39280399999999999
	.quad	0x3fda4e874c8ffb8b              # double 0.41104299999999999
	.quad	0x3feb501e2584f4c7              # double 0.85353000000000001
	.quad	0x3fe6dbb384fd2a63              # double 0.71431900000000004
	.quad	0x3fc6663c74fb54a0              # double 0.17499500000000001
	.quad	0x3fa2dff822bbecab              # double 0.036865000000000002
	.quad	0x3fa5f2ecf2064239              # double 0.042868999999999997
	.quad	0x3feda9307af20ea6              # double 0.92690300000000003
	.quad	0x3fb2a593a2df9379              # double 0.072839000000000001
	.quad	0x3fb3edd8b60f1b26              # double 0.077848
	.quad	0x3fc38d0cc35ce182              # double 0.15274199999999999
	.quad	0x3fd86dfc5cdd50a9              # double 0.38171300000000002
	.quad	0x3f993c89f40a2878              # double 0.024645
	.quad	0x3fe57a0d77b7c782              # double 0.671149
	.quad	0x3fcca6b0d9513f8e              # double 0.22383700000000001
	.quad	0x3fe8376709fa54c5              # double 0.75676299999999996
	.quad	0x3fe72af5771001d6              # double 0.72399400000000003
	.quad	0x3fb9df3300de4c51              # double 0.101062
	.quad	0x3f88c436fc158fb4              # double 0.012093
	.quad	0x3fc660ed80a17b0f              # double 0.17483299999999999
	.quad	0x3fe2f3de1e2de871              # double 0.59226900000000005
	.quad	0x3fe3a62ed352220c              # double 0.61403600000000003
	.quad	0x3feab804534bd76f              # double 0.83496300000000001
	.quad	0x3fe4a63305100a39              # double 0.64528799999999997
	.quad	0x3fde743201040bfe              # double 0.47584199999999999
	.quad	0x3fed80e8c8abd5dc              # double 0.92198599999999997
	.quad	0x3fcf4fce746cb967              # double 0.24462300000000001
	.quad	0x3fc821c8a7a41e58              # double 0.188531
	.quad	0x3fd5ae2541d8e864              # double 0.338754
	.quad	0x3fd3acabc5154867              # double 0.30741400000000002
	.quad	0x3fe9af123c42a66e              # double 0.80262100000000003
	.quad	0x3fe6f75536933a04              # double 0.717692
	.quad	0x3fda3d31b9b66f93              # double 0.40998499999999999
	.quad	0x3fe2b7281fd9ba1b              # double 0.58485799999999999
	.quad	0x3fe517d6b65a9a80              # double 0.65915999999999997
	.quad	0x3febb6390c9107fb              # double 0.86599400000000004
	.quad	0x3fe9a8e2e2b8c75c              # double 0.80186599999999996
	.quad	0x3fd4337a80cf9e38              # double 0.31564199999999998
	.quad	0x3fd3bcf91a32b12d              # double 0.30840899999999999
	.quad	0x3fc1845564b662fe              # double 0.136851
	.quad	0x3fe0300ffda4052d              # double 0.50586699999999996
	.quad	0x3feb7fe4bcad9ad8              # double 0.85936199999999996
	.quad	0x3fcc8c79f666234b              # double 0.22303700000000001
	.quad	0x3fb4afa2f05a708f              # double 0.080805000000000002
	.quad	0x3fbb7d73c9257860              # double 0.10738300000000001
	.quad	0x3fd456c508b32ce9              # double 0.31779600000000002
	.quad	0x3fdad6adf71eafee              # double 0.41935299999999998
	.quad	0x3fee9e57d9dba909              # double 0.95682900000000004
	.quad	0x3fdef0e4da09cc32              # double 0.48345300000000002
	.quad	0x3fb51159c4977425              # double 0.082295999999999994
	.quad	0x3fea27c17a89331a              # double 0.817353
	.quad	0x3fdff1f14983d790              # double 0.49914199999999997
	.quad	0x3fe9a45f5ad96a6a              # double 0.801315
	.quad	0x3fb1df6555c52e73              # double 0.069815000000000002
	.quad	0x3fd930ad46f587d7              # double 0.393596
	.quad	0x3fd9e92d55a3a084              # double 0.40485700000000002
	.quad	0x3fed32314013ec46              # double 0.91237699999999999
	.quad	0x3fd9fbc5de9c022a              # double 0.40599200000000002
	.quad	0x3fe1e7839cd8127b              # double 0.55951099999999998
	.quad	0x3fe4202107b78466              # double 0.62892199999999998
	.quad	0x3fde2cecc814d728              # double 0.47149200000000002
	.quad	0x3fe2e088d6d3b6cc              # double 0.58990900000000002
	.quad	0x3fe393037d63022e              # double 0.61169600000000002
	.quad	0x3fe0841aac53b081              # double 0.51612599999999997
	.quad	0x3fedcdd72367e415              # double 0.93137700000000001
	.quad	0x3fda3be6601bc98a              # double 0.40990599999999999
	.quad	0x3fdcff7164c729f6              # double 0.45309100000000002
	.quad	0x3fe717353b4b2fa9              # double 0.72158299999999997
	.quad	0x3fe09802c0a4a05e              # double 0.51855600000000002
	.quad	0x3fe36e3d5fdcdf6a              # double 0.60720700000000005
	.quad	0x3fe1338b47c73eee              # double 0.53754199999999996
	.quad	0x3fa7a8d64d7f0ed4              # double 0.046210000000000001
	.quad	0x3fe738b04ab606b8              # double 0.72567000000000004
	.quad	0x3fb6eb702602c908              # double 0.089529999999999998
	.quad	0x3fdcbc2b94d94079              # double 0.44898500000000002
	.quad	0x3fc36a50d6b228dd              # double 0.15168200000000001
	.quad	0x3fec7f62b6ae7d56              # double 0.89054999999999995
	.quad	0x3fe918b934699418              # double 0.78426799999999997
	.quad	0x3fe03775b8130165              # double 0.50677000000000005
	.quad	0x3fe5ea4228997c3d              # double 0.68484599999999995
	.quad	0x3fef2fa0d77b7c78              # double 0.97456399999999998
	.quad	0x3fef42b51bd61f5c              # double 0.97689300000000001
	.quad	0x3febe3305100a394              # double 0.871483
	.quad	0x3fe27518b0d0edc4              # double 0.57679400000000003
	.quad	0x3fd6e17a02fb5d03              # double 0.357512
	.quad	0x3fec0522ea0fd3b3              # double 0.87562700000000004
	.quad	0x3fda24febd09e12a              # double 0.40850799999999998
	.quad	0x3fbc54bcf0b6b6e1              # double 0.110668
	.quad	0x3f935ac8a3726070              # double 0.018901000000000001
	.quad	0x3fa141e9af5ba2be              # double 0.033706
	.quad	0x3fe43d145d851655              # double 0.63245600000000002
	.quad	0x3fd558bc59b8023a              # double 0.33354099999999998
	.quad	0x3fc7d16fc9bc7714              # double 0.18607899999999999
	.quad	0x3fdffa00e27e0efa              # double 0.49963400000000002
	.quad	0x3fdc72ffd1dcd706              # double 0.444519
	.quad	0x3feab3b7521144cc              # double 0.83443800000000001
	.quad	0x3fe35035371971c1              # double 0.60354099999999999
	.quad	0x3fe6502eec7c957d              # double 0.69728800000000002
	.quad	0x3fd8ab0856e696a2              # double 0.38543899999999998
	.quad	0x3fe6df8d2e514c23              # double 0.71478900000000001
	.quad	0x3fcc31e7d9988d2a              # double 0.220273
	.quad	0x3fe73be878fabda1              # double 0.72606300000000001
	.quad	0x3fdd676640a6b93d              # double 0.45943600000000001
	.quad	0x3fe4816ce789e775              # double 0.64079900000000001
	.quad	0x3fd9ed916872b021              # double 0.40512500000000001
	.quad	0x3feccde3b8a19c9d              # double 0.90013299999999996
	.quad	0x3febfb0b39192642              # double 0.87439500000000003
	.quad	0x3fefd801b4352652              # double 0.99511799999999995
	.quad	0x3fcee49f51697f20              # double 0.24135200000000001
	.quad	0x3fe6364e054690de              # double 0.694129
	.quad	0x3fc4fa9c12f09d8c              # double 0.16389799999999999
	.quad	0x3feb851c9f72f76e              # double 0.85999899999999996
	.quad	0x3fee7038e29f9ce9              # double 0.95119900000000002
	.quad	0x3fe908e79aae6c8f              # double 0.78233699999999995
	.quad	0x3f868dfbd6a593a3              # double 0.011013
	.quad	0x3feb2c01e68a0d35              # double 0.84912200000000004
	.quad	0x3fe8711947cfa26a              # double 0.76380599999999998
	.quad	0x3fe793250b52439a              # double 0.73671200000000003
	.quad	0x3fdf8f9f44d44567              # double 0.493141
	.quad	0x3fd63fb7a5f41aef              # double 0.34763899999999998
	.quad	0x3f750ebaade657b8              # double 0.0051409999999999997
	.quad	0x3fd37991bc558644              # double 0.30429499999999998
	.quad	0x3fe394c22ee4191a              # double 0.61190900000000004
	.quad	0x3fedfc1bda5119ce              # double 0.937025
	.quad	0x3feb5ad7518b0d0f              # double 0.85483900000000002
	.quad	0x3fd6811f4f50a02c              # double 0.35163100000000003
	.quad	0x3feaed82ba5a0382              # double 0.84149300000000005
	.quad	0x3fe4a055757d5a9f              # double 0.64457200000000003
	.quad	0x3fe81beb18116ebd              # double 0.75340799999999997
	.quad	0x3fe223b7952d234f              # double 0.56686000000000003
	.quad	0x3fd97852f7f498c4              # double 0.39796900000000002
	.quad	0x3fcda35d67ba237d              # double 0.231548
	.quad	0x3fe81e8e60807358              # double 0.75373000000000001
	.quad	0x3fd4dbc23315d702              # double 0.32591300000000001
	.quad	0x3fe5df82b1f687b1              # double 0.68353399999999997
	.quad	0x3fe8e28cbd1244a6              # double 0.77765499999999999
	.quad	0x3fea7292c4934268              # double 0.82648600000000005
	.quad	0x3fe380841ede1199              # double 0.60943800000000004
	.quad	0x3fdf42396073de1e              # double 0.48841699999999999
	.quad	0x3fe1f05ea24cc682              # double 0.56059199999999998
	.quad	0x3fcb47496aad1d04              # double 0.213113
	.quad	0x3fe2fa22706d5065              # double 0.59303399999999995
	.quad	0x3feb626d4801f751              # double 0.855765
	.quad	0x3fe0511be6e65387              # double 0.50990100000000005
	.quad	0x3fedc9731098d478              # double 0.93084100000000003
	.quad	0x3fafc88e79aae6c9              # double 0.062077
	.quad	0x3fe6d1a650614163              # double 0.71309199999999995
	.quad	0x3fecb29a1b9f98b7              # double 0.89680199999999999
	.quad	0x3fe5843e5321e604              # double 0.67239300000000002
	.quad	0x3fd0a2b9d3cbc48f              # double 0.259932
	.quad	0x3fc20ecfa69be09c              # double 0.14107700000000001
	.quad	0x3fbefda836eb4e98              # double 0.121058
	.quad	0x3fc0bb44e50c5eb3              # double 0.130715
	.quad	0x3fcc59e1f3a57eaa              # double 0.221493
	.quad	0x3fd474d594f26aec              # double 0.319631
	.quad	0x3fed43bb40b34e77              # double 0.91451800000000005
	.quad	0x3fdcd4a1ad6451b9              # double 0.45047799999999999
	.quad	0x3fc315831f03d146              # double 0.149094
	.quad	0x3fe57c6540cc78ea              # double 0.671435
	.quad	0x3fe7994c01605250              # double 0.73746299999999998
	.quad	0x3fb51361dc93ea2d              # double 0.082326999999999997
	.quad	0x3fd7bae89eba6aca              # double 0.37078299999999997
	.quad	0x3fe13a322af57710              # double 0.538354
	.quad	0x3fcc7418d6909aed              # double 0.22229299999999999
	.quad	0x3fd4e5aff2a172ac              # double 0.326519
	.quad	0x3fd4d73c925785f9              # double 0.32563700000000001
	.quad	0x3fd02f4491298890              # double 0.25288500000000003
	.quad	0x3fe736501e2584f5              # double 0.72538000000000002
	.quad	0x3fd58cc9a77e5eab              # double 0.33671800000000002
	.quad	0x3fec7ff9b56323bc              # double 0.89062200000000002
	.quad	0x3fe28b3d4ae429e1              # double 0.57949700000000004
	.quad	0x3fe6067ad8e43244              # double 0.68829099999999999
	.quad	0x3fe513122b7baecd              # double 0.658578
	.quad	0x3fe12d44dca8e2e3              # double 0.53677600000000003
	.quad	0x3fcf821294573a79              # double 0.24615699999999999
	.quad	0x3fbc3fc43b2dd378              # double 0.110348
	.quad	0x3f81422ccb3a2596              # double 0.0084270000000000005
	.quad	0x3fd8162f166e008f              # double 0.37635400000000002
	.quad	0x3fe526117720c8cd              # double 0.66089699999999996
	.quad	0x3fe1001b43526528              # double 0.53126300000000004
	.quad	0x3fec93a0c6b484d7              # double 0.89302099999999995
	.quad	0x3fb35b3e1437c569              # double 0.075610999999999998
	.quad	0x3fdb940fecdd0d8d              # double 0.43091200000000002
	.quad	0x3fe9bcba30121683              # double 0.804288
	.quad	0x3fc6dd9c27e95315              # double 0.17863799999999999
	.quad	0x3fea5c8fb86f47b6              # double 0.82379899999999995
	.quad	0x3fe7556d19dece57              # double 0.72917799999999999
	.quad	0x3fdb13f8db489093              # double 0.42309400000000003
	.quad	0x3fe178b3700474da              # double 0.54598400000000002
	.quad	0x3fb0b35f3d7d3911              # double 0.065237000000000003
	.quad	0x3fa5d26b723ee1bd              # double 0.042620999999999999
	.quad	0x3fdca005c4651f3f              # double 0.44726700000000003
	.quad	0x3fd9a0cf1800a7c6              # double 0.40044000000000002
	.quad	0x3fe2767903211cb0              # double 0.57696199999999997
	.quad	0x3fe04751ce28ed5f              # double 0.50870599999999999
	.quad	0x3fecbd72bcb5fe54              # double 0.89812599999999997
	.quad	0x3fe0bfe9fadafd11              # double 0.52342699999999998
	.quad	0x3fe09ce075f6fd22              # double 0.51915
	.quad	0x3fb9b2c40d0aaa7e              # double 0.100384
	.quad	0x3fea95810624dd2f              # double 0.83074999999999999
	.quad	0x3fcbd03968d759ef              # double 0.21729200000000001
	.quad	0x3fe23704790b8499              # double 0.56921600000000006
	.quad	0x3fedcafd5454152b              # double 0.931029
	.quad	0x3fe0c5c5718eb895              # double 0.524142
	.quad	0x3fc3137b07075b3e              # double 0.149032
	.quad	0x3fe722c669057d18              # double 0.72299500000000005
	.quad	0x3feea7525460aa65              # double 0.95792500000000002
	.quad	0x3fe3baade657b84e              # double 0.61653800000000003
	.quad	0x3f9a8fc0d2c386d3              # double 0.025939
	.quad	0x3fc240e9d51b4fe8              # double 0.14260600000000001
	.quad	0x3fc0fc371da37ef6              # double 0.13269700000000001
	.quad	0x3fbaf156191148fe              # double 0.10524500000000001
	.quad	0x3fd6cba301216830              # double 0.35617900000000002
	.quad	0x3fe55b59578a2a91              # double 0.66740100000000002
	.quad	0x3fe44ab1d4f9c1f8              # double 0.63411799999999996
	.quad	0x3fcce04c05921038              # double 0.22559499999999999
	.quad	0x3fe19554fbdad752              # double 0.54947900000000005
	.quad	0x3fde473cd573647c              # double 0.47309800000000002
	.quad	0x3f60adcd2d44dca9              # double 0.002036
	.quad	0x3f9d2a1f8e3ac0c6              # double 0.028480999999999999
	.quad	0x3fe4e516db0dd830              # double 0.65296500000000002
	.quad	0x3fee58a761027957              # double 0.948322
	.quad	0x3fe1a3cc8de2ac32              # double 0.55124499999999999
	.quad	0x3fbb60d0247021d1              # double 0.106946
	.quad	0x3faf8c21e1d2178f              # double 0.061615999999999997
	.quad	0x3fed4f5b1c864884              # double 0.915937
	.quad	0x3fde81ba7fc32ebe              # double 0.47666799999999998
	.quad	0x3fecec204f2ae07e              # double 0.90382399999999996
	.quad	0x3f4fc8f32378ab0d              # double 9.7000000000000005E-4
	.quad	0x3fee24b9884c6a3c              # double 0.94198300000000001
	.quad	0x3f2e2584f4c6e6da              # double 2.3000000000000001E-4
	.quad	0x3feceba8c586876e              # double 0.90376699999999999
	.quad	0x3fd649f51697f1fa              # double 0.34826400000000002
	.quad	0x3fefb00ffda4052d              # double 0.99024199999999995
	.quad	0x3fe6a40d90e23af3              # double 0.70752599999999999
	.quad	0x3fef35a63f9a49c3              # double 0.97529900000000002
	.quad	0x3fe6ce3bcd35a858              # double 0.71267499999999995
	.quad	0x3fd190e23af31b15              # double 0.27446799999999999
	.quad	0x3fceef672b884407              # double 0.24168100000000001
	.quad	0x3fe787229e90795f              # double 0.73524599999999996
	.quad	0x3fee11b3f20a73f7              # double 0.93966099999999997
	.quad	0x3fd8ab10ba6266fd              # double 0.38544099999999998
	.quad	0x3fd9bda5119ce076              # double 0.4022
	.quad	0x3fcec215b9a5a89c              # double 0.24029800000000001
	.quad	0x3fe5dab191dde376              # double 0.68294600000000005
	.quad	0x3fdcd4a5df2239e7              # double 0.45047900000000002
	.quad	0x3fd68e9707182236              # double 0.35245300000000002
	.quad	0x3fe967ff583a53b9              # double 0.79394500000000001
	.quad	0x3feefef39085f4a1              # double 0.96862199999999998
	.quad	0x3fe7ad9f0a1be2b5              # double 0.73994400000000005
	.quad	0x3fd1f20ea5b530cf              # double 0.28039900000000001
	.quad	0x3fe26705c896dd27              # double 0.57507600000000003
	.quad	0x3fed37329c347e8d              # double 0.91298800000000002
	.quad	0x3f8c5cdd50a88f00              # double 0.013849
	.quad	0x3feff9ca5bd944aa              # double 0.99924199999999996
	.quad	0x3fe3afe60c38f367              # double 0.61522200000000005
	.quad	0x3fc4b1b36bd2b6f2              # double 0.16167300000000001
	.quad	0x3fee31550ca1cef2              # double 0.94352199999999997
	.quad	0x3fa8389f83be6602              # double 0.047307000000000002
	.quad	0x3fe883968d759ee9              # double 0.76606300000000005
	.quad	0x3fb7f7ced916872b              # double 0.093625
	.quad	0x3fd046bf01322f27              # double 0.25431799999999999
	.quad	0x3fedaabcd78c4370              # double 0.92709200000000003
	.quad	0x3fbdcda2b5a20ddc              # double 0.11641899999999999
	.quad	0x3fd15375c8d9f905              # double 0.27071899999999999
	.quad	0x3fa606fac6045baf              # double 0.043021999999999998
	.quad	0x3feb5c65c70435f0              # double 0.85502900000000004
	.quad	0x3fb38af3e468cac5              # double 0.076339000000000004
	.quad	0x3fea045996744b2b              # double 0.81303099999999995
	.quad	0x3fe363b46fdeb52d              # double 0.60592100000000004
	.quad	0x3fe77824d4cb9ecf              # double 0.73341599999999996
	.quad	0x3fe5e71ac14c660a              # double 0.68446099999999999
	.quad	0x3fef95b35b0bbf51              # double 0.98702400000000001
	.quad	0x3fda1c3265add9c2              # double 0.40797099999999997
	.quad	0x3fd2973d9ec70004              # double 0.29048099999999999
	.quad	0x3fc97b395c422036              # double 0.199073
	.quad	0x3fce4d7f0ed3d85a              # double 0.23674000000000001
	.quad	0x3fdec5e6ff7dfa01              # double 0.48082900000000001
	.quad	0x3fc3a75cd0bb6ed6              # double 0.15354499999999999
	.quad	0x3fee34528283d35f              # double 0.94388700000000003
	.quad	0x3fe954d61b2a27f2              # double 0.79160600000000003
	.quad	0x3fe8ff77af64063a              # double 0.78118500000000002
	.quad	0x3fd83bf727136a40              # double 0.37866
	.quad	0x3fe08d8665e02ea9              # double 0.51727599999999996
	.quad	0x3fbec59fb1e18efc              # double 0.120203
	.quad	0x3fe0e7ff583a53b9              # double 0.52832000000000001
	.quad	0x3fe73e681a9b8cb9              # double 0.72636800000000001
	.quad	0x3fe8f25e56cd6c2f              # double 0.779586
	.quad	0x3fb54a3c64345cff              # double 0.083164000000000002
	.quad	0x3fe49e14bdfd2631              # double 0.64429700000000001
	.quad	0x3fea4db163baba7c              # double 0.82198400000000004
	.quad	0x3fda36544fe36d22              # double 0.40956599999999999
	.quad	0x3fbc00eae18ac9f3              # double 0.109389
	.quad	0x3fd72ee41919ac79              # double 0.36223699999999998
	.quad	0x3fe570281ba7fc33              # double 0.66994100000000001
	.quad	0x3fe1f43e963dc487              # double 0.56106500000000004
	.quad	0x3fee5a98676a7265              # double 0.94855900000000004
	.quad	0x3fe00b49e01de269              # double 0.50137799999999999
	.quad	0x3fe33c64345cfedf              # double 0.60112200000000005
	.quad	0x3fd9ece9a2c66905              # double 0.40508499999999997
	.quad	0x3fe2e63e8dda48b6              # double 0.59060599999999996
	.quad	0x3fe03cd78c436fc1              # double 0.50742699999999996
	.quad	0x3fd26defc7a39820              # double 0.28795999999999999
	.quad	0x3fe47c0f45176146              # double 0.64014400000000005
	.quad	0x3fe73504c48adeec              # double 0.72522200000000003
	.quad	0x3fdcfe0ce0b912dc              # double 0.45300600000000002
	.quad	0x3fccc99f1ae2da55              # double 0.22490299999999999
	.quad	0x3fc081ba7fc32ebe              # double 0.12895899999999999
	.quad	0x3fe015011904b3c4              # double 0.50256400000000001
	.quad	0x3fd73076c050bd88              # double 0.36233300000000002
	.quad	0x3fd092ea52ef911d              # double 0.258967
	.quad	0x3fe7f607c4199fe4              # double 0.74878299999999997
	.quad	0x3f90d66f0cfe1544              # double 0.016442999999999999
	.quad	0x3feb053198288052              # double 0.84438400000000002
	.quad	0x3fe0aad81adea897              # double 0.52085499999999996
	.quad	0x3fa9424e59296702              # double 0.049334000000000003
	.quad	0x3fc05ccc89b0ee4a              # double 0.127832
	.quad	0x3fe366d15ad106ee              # double 0.60630099999999998
	.quad	0x3fda6ddaceee0f3d              # double 0.41295500000000002
	.quad	0x3fabe681a9b8cb8e              # double 0.054493
	.quad	0x3fe67dc5931ca7d6              # double 0.70285299999999995
	.quad	0x3fec2b3cc4ac6cdb              # double 0.880278
	.quad	0x3fd985553ef6b5d4              # double 0.39876299999999998
	.quad	0x3fc8873365881a15              # double 0.19162599999999999
	.quad	0x3feb04901d19157b              # double 0.84430700000000003
	.quad	0x3fe7e2a1b5c7cd8a              # double 0.74641500000000005
	.quad	0x3fec9e44fa05143c              # double 0.89432
	.quad	0x3fee2a369fcf3dc0              # double 0.94265299999999996
	.quad	0x3fc0c564f97edc7f              # double 0.131024
	.quad	0x3fbe49d388a8b08e              # double 0.118314
	.quad	0x3feb81a1554fbdad              # double 0.85957399999999995
	.quad	0x3feb140fecdd0d8d              # double 0.84619900000000003
	.quad	0x3fe523db3bfb58d1              # double 0.66062699999999996
	.quad	0x3fe32294141e9af6              # double 0.59797100000000003
	.quad	0x3fe0353b4b2fa93b              # double 0.506498
	.quad	0x3fdda87e38eb0319              # double 0.46340900000000002
	.quad	0x3fe40a3d70a3d70a              # double 0.62624999999999997
	.quad	0x3f9db4cc25072086              # double 0.029010000000000001
	.quad	0x3fd8405b39e279dd              # double 0.37892799999999999
	.quad	0x3fe8bdc69f8c21e2              # double 0.77316600000000002
	.quad	0x3fba5753a3ec02f3              # double 0.102895
	.quad	0x3fda4d013a92a305              # double 0.41094999999999998
	.quad	0x3fd0039abf338716              # double 0.25022
	.quad	0x3feebb7b6bb12902              # double 0.96038599999999996
	.quad	0x3fe1ec050bd87b57              # double 0.56006100000000003
	.quad	0x3fe9919695d91ab9              # double 0.79902200000000001
	.quad	0x3fdbb4202d9cf13d              # double 0.432869
	.quad	0x3fdd00a393ee5eee              # double 0.45316400000000001
	.quad	0x3fd384662bae03b4              # double 0.304956
	.quad	0x3fe6cc2938de6ddf              # double 0.712422
	.quad	0x3fdb3254e6e221c9              # double 0.42494700000000002
	.quad	0x3fe533764f11b60b              # double 0.66253200000000001
	.quad	0x3fed46de76427c7c              # double 0.91490099999999996
	.quad	0x3f6461b6d43d0397              # double 0.0024880000000000002
	.quad	0x3feb482be8bc169c              # double 0.85255999999999998
	.quad	0x3fe2238da3c21188              # double 0.56684000000000001
	.quad	0x3fe46de76427c7c5              # double 0.63841599999999998
	.quad	0x3fe85781c714fce7              # double 0.76068199999999997
	.quad	0x3fe053f9e7b80a9e              # double 0.51025100000000001
	.quad	0x3fde727136a400fc              # double 0.47573500000000002
	.quad	0x3fde3a860dcb9a9e              # double 0.47232200000000002
	.quad	0x3fe284d76ab58080              # double 0.57871600000000001
	.quad	0x3fef4d61b2a27f1b              # double 0.97819599999999995
	.quad	0x3fe9474751ce28ed              # double 0.78995099999999996
	.quad	0x3fa061c79b34a44c              # double 0.031995999999999997
	.quad	0x3fded16fc9bc7714              # double 0.48153299999999999
	.quad	0x3feee4c729f59cd0              # double 0.96542700000000004
	.quad	0x3fe2659f2ba9d1f6              # double 0.574905
	.quad	0x3fd848a58b3f63c3              # double 0.37943399999999999
	.quad	0x3fe0f8fcd67fd3f6              # double 0.53039400000000003
	.quad	0x3fe9a897635e742a              # double 0.80183000000000004
	.quad	0x3fd0e8af81626b2f              # double 0.26420199999999999
	.quad	0x3feac4007570c565              # double 0.836426
	.quad	0x3fceac42e9899bf6              # double 0.23963200000000001
	.quad	0x3fd09b13165d3997              # double 0.259465
	.quad	0x3fcd8d4fdf3b645a              # double 0.230875
	.quad	0x3fc71758e219652c              # double 0.1804
	.quad	0x3fd8eafee6fb4c3c              # double 0.38934299999999999
	.quad	0x3fe7834b0e1b4bb6              # double 0.73477700000000001
	.quad	0x3fe13a3875925354              # double 0.53835699999999997
	.quad	0x3feb89118c197e56              # double 0.86048199999999997
	.quad	0x3fe4ff8ec0f88334              # double 0.656196
	.quad	0x3fedb59146e4c0df              # double 0.92841399999999996
	.quad	0x3fc5d7c2ca148ba8              # double 0.17064699999999999
	.quad	0x3fd87bd48cb4aec9              # double 0.38255800000000001
	.quad	0x3fd36872b020c49c              # double 0.30325000000000002
	.quad	0x3fe6b6ac647778dd              # double 0.70979899999999996
	.quad	0x3f6d627bf61aa3f0              # double 0.0035869999999999999
	.quad	0x3febdd80e496edee              # double 0.87078900000000004
	.quad	0x3fe11394317acc4f              # double 0.53364
	.quad	0x3fc5f2fdb8fde2ef              # double 0.17147799999999999
	.quad	0x3fea7840181e03f7              # double 0.827179
	.quad	0x3feb59ccfaeff5c7              # double 0.85471200000000003
	.quad	0x3fe1afd75e2046c7              # double 0.55271499999999996
	.quad	0x3fec6e19b90ea9e7              # double 0.88844000000000001
	.quad	0x3fcbc115df6555c5              # double 0.21682999999999999
	.quad	0x3feb9b7e0ac7da1f              # double 0.86273100000000003
	.quad	0x3fefdfc19c17225b              # double 0.99606399999999994
	.quad	0x3fe0f785729b280f              # double 0.53021499999999999
	.quad	0x3fc27c30d306a2b1              # double 0.14441499999999999
	.quad	0x3fcdda7b0b391926              # double 0.23322999999999999
	.quad	0x3fd6c422036006d1              # double 0.35572100000000001
	.quad	0x3fe766cb10342aaa              # double 0.731298
	.quad	0x3feea78d0cc35ce2              # double 0.95795300000000005
	.quad	0x3fd0ffe2a3cea6c2              # double 0.26561800000000002
	.quad	0x3fc1820a30db6a1f              # double 0.13678100000000001
	.quad	0x3fec4a46e08f2171              # double 0.88406700000000005
	.quad	0x3fe1e6c6de76427c              # double 0.55942099999999995
	.quad	0x3fe7fa871a3b14a9              # double 0.749332
	.quad	0x3fc3859c8c9320da              # double 0.15251500000000001
	.quad	0x3fe4f47f993d5348              # double 0.65484600000000004
	.quad	0x3fa7164c729f59cd              # double 0.045092
	.quad	0x3fcd102bc72e275b              # double 0.22705600000000001
	.quad	0x3fd057c0b1359792              # double 0.25535600000000003
	.quad	0x3fe8c31df761cbcd              # double 0.77381800000000001
	.quad	0x3fe20ccdd93c46d8              # double 0.56406299999999998
	.quad	0x3fc3349be8ff327b              # double 0.15004300000000001
	.quad	0x3fe4c85e3da2f8be              # double 0.64945900000000001
	.quad	0x3fedd6f75d9a0f0a              # double 0.93249099999999996
	.quad	0x3fd4b2a27f1b6912              # double 0.323403
	.quad	0x3fd318266772d5e0              # double 0.29834899999999998
	.quad	0x3fe938151a437825              # double 0.78809600000000002
	.quad	0x3fc562174c4cdfad              # double 0.16705600000000001
	.quad	0x3fb6009f623076c0              # double 0.085946999999999996
	.quad	0x3fd51ec0b567557a              # double 0.33000200000000002
	.quad	0x3f9cc857f3061c7a              # double 0.028108000000000001
	.quad	0x3fd3817b95a29414              # double 0.30477799999999999
	.quad	0x3fe3b95c42203600              # double 0.61637699999999995
	.quad	0x3fec54cfd08d4bad              # double 0.88535299999999995
	.quad	0x3fe5d816aceaaf36              # double 0.68262800000000001
	.quad	0x3fe6b7eb28d8665e              # double 0.709951
	.quad	0x3fc1af965b20b806              # double 0.13817099999999999
	.quad	0x3fe4d77b7c7820a3              # double 0.65130399999999999
	.quad	0x3fe1df2cb641700d              # double 0.55849300000000002
	.quad	0x3fd213c254a3c643              # double 0.28245599999999998
	.quad	0x3fe0b4bd76ee73e7              # double 0.52206300000000005
	.quad	0x3fe4e33acd5b6806              # double 0.65273800000000004
	.quad	0x3fc477ff151e7536              # double 0.159912
	.quad	0x3fe3bca9691a75cd              # double 0.61677999999999999
	.quad	0x3fe305dfa871a3b1              # double 0.59446699999999997
	.quad	0x3fd4a47a9e2bcf92              # double 0.32253900000000002
	.quad	0x3fcee5b4245f5ad9              # double 0.24138499999999999
	.quad	0x3f84cfd08d4bad7d              # double 0.010161999999999999
	.quad	0x3fe9fe2c55c96031              # double 0.81227700000000003
	.quad	0x3f9999999999999a              # double 0.025000000000000001
	.quad	0x3fe4750e34762952              # double 0.639289
	.quad	0x3fce87980f55de59              # double 0.238513
	.quad	0x3fd7dbc23315d702              # double 0.37278800000000001
	.quad	0x3fc355de58e64b23              # double 0.151058
	.quad	0x3fbac1c1d6cf850e              # double 0.104519
	.quad	0x3fe62ae297396d09              # double 0.69273499999999999
	.quad	0x3f88de6ddf00abf7              # double 0.012142999999999999
	.quad	0x3fdd1f85d744f5d3              # double 0.45504899999999998
	.quad	0x3fee9bc77143393b              # double 0.95651600000000003
	.quad	0x3fc4df6124074645              # double 0.16306699999999999
	.quad	0x3fea6b8950763a19              # double 0.825627
	.quad	0x3fcffcb0c026cc1d              # double 0.24989900000000001
	.quad	0x3fec5b4cc2507208              # double 0.88614499999999996
	.quad	0x3fa7b3b7521144cc              # double 0.046293000000000001
	.quad	0x3fefa73b42cc2d6b              # double 0.98916400000000004
	.quad	0x3fe4432ebe596c83              # double 0.63320100000000001
	.quad	0x3fc55d35653c9abb              # double 0.166907
	.quad	0x3fe989310129cbab              # double 0.79799699999999996
	.quad	0x3fe19f7d73c92578              # double 0.55071899999999996
	.quad	0x3fdeefb2aae29739              # double 0.48337999999999998
	.quad	0x3fc87778dd616f87              # double 0.19114600000000001
	.quad	0x3fc046bf01322f27              # double 0.12715899999999999
	.quad	0x3fe4c938583621fb              # double 0.649563
	.quad	0x3fcf99bb2788db05              # double 0.24687899999999999
	.quad	0x3fdf021d10b1feeb              # double 0.48450399999999999
	.quad	0x3fdfb4245f5ad96a              # double 0.49536999999999998
	.quad	0x3feb46cdaf4adbc6              # double 0.85239299999999996
	.quad	0x3faf6c4827b6fe2e              # double 0.061372999999999997
	.quad	0x3f9126634117f844              # double 0.016747999999999999
	.quad	0x3fe906bdf4c2b51c              # double 0.78207300000000001
	.quad	0x3fef1d99029ae4f3              # double 0.97236299999999997
	.quad	0x3fe40292817763e5              # double 0.62531400000000004
	.quad	0x3fdcc62a1b5c7cd9              # double 0.44959500000000002
	.quad	0x3feb90a137f38c54              # double 0.86140499999999997
	.quad	0x3fdd26916440f239              # double 0.45547900000000002
	.quad	0x3fea23bbc6eb0b7c              # double 0.81686199999999997
	.quad	0x3fec268b19a415f4              # double 0.87970499999999995
	.quad	0x3fdad8cf398e9707              # double 0.41948299999999999
	.quad	0x3fd1cc3e3193f6c2              # double 0.27809099999999998
	.quad	0x3fe88b08dd1e53a8              # double 0.76697199999999999
	.quad	0x3fe3e72fba01eeee              # double 0.62197100000000005
	.quad	0x3fb4b2d905c03361              # double 0.080853999999999995
	.quad	0x3fe3e26d4801f751              # double 0.62139
	.quad	0x3feda16e7a311e86              # double 0.925956
	.quad	0x3fe63e9424e59296              # double 0.69513899999999995
	.quad	0x3fed3bd7b2031ceb              # double 0.91355500000000001
	.quad	0x3fd8c58eeae9ee46              # double 0.38705800000000001
	.quad	0x3fd1ffe2a3cea6c2              # double 0.28124300000000002
	.quad	0x3fd0775b81301648              # double 0.25728499999999999
	.quad	0x3feec0181e03f706              # double 0.96094900000000005
	.quad	0x3fe44406c00da1a9              # double 0.63330399999999998
	.quad	0x3faa3897204295a7              # double 0.051213000000000002
	.quad	0x3fcabc8c0ce91c8f              # double 0.20887900000000001
	.quad	0x3fe449e236c15d2d              # double 0.634019
	.quad	0x3fc4aa10e0221427              # double 0.16144
	.quad	0x3fd6bfd2e9468017              # double 0.355458
	.quad	0x3fea725e56cd6c2f              # double 0.826461
	.quad	0x3fe465b8561d4307              # double 0.63741700000000001
	.quad	0x3fd2105e1c15097d              # double 0.28224900000000003
	.quad	0x3fda5072085b1855              # double 0.41116000000000003
	.quad	0x3feb14ad362e9036              # double 0.84627399999999997
	.quad	0x3fd0edd052934acb              # double 0.264515
	.quad	0x3fe669dd7ecbb7fa              # double 0.70042300000000002
	.quad	0x3fe8bb18dac258d6              # double 0.77283900000000005
	.quad	0x3fd7c610f0e90bc8              # double 0.37146400000000002
	.quad	0x3fe27abda0dfdef8              # double 0.57748299999999997
	.quad	0x3fec31ab0856e697              # double 0.88106300000000004
	.quad	0x3fcd38a3b57c4e2f              # double 0.22829099999999999
	.quad	0x3fe0c087442c7fbb              # double 0.52350200000000002
	.quad	0x3fae26d4801f7510              # double 0.058889999999999998
	.quad	0x3febbd68405b39e2              # double 0.86687099999999995
	.quad	0x3fc08205ff1d81f1              # double 0.128968
	.quad	0x3fdbd6dc1a47a9e3              # double 0.43498900000000001
	.quad	0x3fefe3d1cc100e6b              # double 0.99656
	.quad	0x3fe65b317efe0ce1              # double 0.69863200000000003
	.quad	0x3fee6878fabda0e0              # double 0.95025300000000001
	.quad	0x3fe173bc903ea705              # double 0.54537800000000003
	.quad	0x3fe510a99b6f5caf              # double 0.65828399999999998
	.quad	0x3fe3986338b47c74              # double 0.61235200000000001
	.quad	0x3fdf364388ebcc6c              # double 0.48768699999999998
	.quad	0x3fbd7be9856a37ac              # double 0.115172
	.quad	0x3fd3a31e7d9988d3              # double 0.30683100000000002
	.quad	0x3fe740e1719f7f8d              # double 0.72667000000000004
	.quad	0x3fe1a57eaa2a0a96              # double 0.55145200000000005
	.quad	0x3fd4f78bbd380453              # double 0.32760899999999998
	.quad	0x3fc2c09c3ce2089e              # double 0.14650299999999999
	.quad	0x3f9626b2f23033a4              # double 0.021631999999999998
	.quad	0x3fe8d2b0a6fc58ac              # double 0.77571900000000004
	.quad	0x3fd0f01b866e43aa              # double 0.26465499999999997
	.quad	0x3fec7852f7f498c4              # double 0.88968800000000003
	.quad	0x3feef38a3b57c4e3              # double 0.967229
	.quad	0x3fe06d06fef7c244              # double 0.51330900000000002
	.quad	0x3fcab21815a07b35              # double 0.20856
	.quad	0x3fd98cc144028e50              # double 0.39921600000000002
	.quad	0x3fe614a4d2b2bfdb              # double 0.69001999999999997
	.quad	0x3fe4e6d15ad106ee              # double 0.65317599999999998
	.quad	0x3fc6723aafff36ac              # double 0.17536099999999999
	.quad	0x3fe9fc8d1958969a              # double 0.812079
	.quad	0x3fea766a55087011              # double 0.826955
	.quad	0x3fe88168b5cbff47              # double 0.76579699999999995
	.quad	0x3fd2dfb506dd69d3              # double 0.294904
	.quad	0x3fb16605ee568a50              # double 0.067962999999999996
	.quad	0x3fcb881a1554fbdb              # double 0.215091
	.quad	0x3fd60f01fb82c2bd              # double 0.34466599999999997
	.quad	0x3fdb7e414e7ee914              # double 0.42958099999999999
	.quad	0x3fc93122b7baecd0              # double 0.19681199999999999
	.quad	0x3fd01b2a27f1b691              # double 0.25165799999999999
	.quad	0x3fc58e6d15ad106f              # double 0.168409
	.quad	0x3fece132b55ef1fe              # double 0.90249000000000001
	.quad	0x3fed16312f4cf4a5              # double 0.90895899999999996
	.quad	0x3fcea0d349be8ff3              # double 0.239283
	.quad	0x3fdcb93037d63023              # double 0.44880300000000001
	.quad	0x3fdcfb3743632c1f              # double 0.45283299999999999
	.quad	0x3fc397bb73083559              # double 0.15306800000000001
	.quad	0x3fe3be07a28bb0a3              # double 0.61694700000000002
	.quad	0x3feebcc8de2ac322              # double 0.96054499999999998
	.quad	0x3fc0eb463497b741              # double 0.13217999999999999
	.quad	0x3fef5c78a6dacabc              # double 0.98003799999999996
	.quad	0x3fd313cee9dd7ecc              # double 0.29808400000000002
	.quad	0x3fa3137b07075b3e              # double 0.037257999999999999
	.quad	0x3fcafe69270b06c4              # double 0.21088899999999999
	.quad	0x3fe069e7fb267c6c              # double 0.51292800000000005
	.quad	0x3fe5efed634549b6              # double 0.68553799999999998
	.quad	0x3feafd1dcd7060bb              # double 0.84339799999999998
	.quad	0x3fd674fb549f9485              # double 0.35088999999999998
	.quad	0x3fda1600f345069a              # double 0.40759299999999998
	.quad	0x3fef7a3b9ae0c176              # double 0.98367099999999996
	.quad	0x3fb49a77e5eaab04              # double 0.080481999999999998
	.quad	0x3fe8b49385836220              # double 0.77204300000000003
	.quad	0x3fc65a89b951c5c5              # double 0.17463799999999999
	.quad	0x3fe204ccee5abc0e              # double 0.56308599999999998
	.quad	0x3fe7c918e325d4a6              # double 0.74329800000000001
	.quad	0x3fe1dd9e40c8472c              # double 0.55830299999999999
	.quad	0x3fe181c714fce747              # double 0.54709200000000002
	.quad	0x3fe5afec56d5cfab              # double 0.67772500000000002
	.quad	0x3f9008e9b38d60a6              # double 0.015658999999999999
	.quad	0x3feb3cc2938de6de              # double 0.85116700000000001
	.quad	0x3fd6e5d5b24e9c45              # double 0.35777799999999998
	.quad	0x3fa93f8db4890929              # double 0.049313000000000003
	.quad	0x3fd7a82a5614df8b              # double 0.369639
	.quad	0x3fd6b3d07c84b5dd              # double 0.35472500000000001
	.quad	0x3f88b7a1c25d0742              # double 0.012069
	.quad	0x3fb3f77af640639d              # double 0.077994999999999995
	.quad	0x3feaf156191148fe              # double 0.84196000000000004
	.quad	0x3fe047cfa26a22b4              # double 0.50876600000000005
	.quad	0x3fadd1c3ac929aa2              # double 0.058241000000000001
	.quad	0x3fe91e12a51e321a              # double 0.78492099999999998
	.quad	0x3fe3308787485e3e              # double 0.59967400000000004
	.quad	0x3fe270563ed0f627              # double 0.57621299999999998
	.quad	0x3fe901797cc39ffd              # double 0.78142999999999996
	.quad	0x3fc7cb46bacf7447              # double 0.185891
	.quad	0x3fef29e0a41a261c              # double 0.973862
	.quad	0x3fee23ca7503b81b              # double 0.94186899999999996
	.quad	0x3fd4a1a500d5e8d5              # double 0.32236599999999999
	.quad	0x3fe708effe2a3cea              # double 0.71984099999999995
	.quad	0x3fe9060dcb9a9da6              # double 0.78198900000000005
	.quad	0x3fde5ac03ff69015              # double 0.47428900000000002
	.quad	0x3fe10a6dacabc515              # double 0.53252299999999997
	.quad	0x3fd1440af1cb89d7              # double 0.26977800000000002
	.quad	0x3fc546994185058e              # double 0.166217
	.quad	0x3fc4258d5842b735              # double 0.15739600000000001
	.quad	0x3fec0dbad3a604e2              # double 0.87667600000000001
	.quad	0x3fc67a8d64d7f0ed              # double 0.17561499999999999
	.quad	0x3fd3644d87724fa9              # double 0.30299700000000002
	.quad	0x3fd93aa79bbadc0a              # double 0.39420500000000003
	.quad	0x3fe4e54b48d3ae68              # double 0.65298999999999996
	.quad	0x3fe1a77a2cecc815              # double 0.55169400000000002
	.quad	0x3fefe5cd4ed2cbea              # double 0.99680199999999997
	.quad	0x3fd116872b020c4a              # double 0.26700000000000002
	.quad	0x3fe74003254e6e22              # double 0.72656399999999999
	.quad	0x3fd8b85e80bed741              # double 0.38625300000000001
	.quad	0x3fee9c1f85d744f6              # double 0.95655800000000002
	.quad	0x3fc0c53b0813cab8              # double 0.131019
	.quad	0x3fe6e77d523b3637              # double 0.71575800000000001
	.quad	0x3feaacc92146a1a5              # double 0.833592
	.quad	0x3fe3e7ad8e432442              # double 0.622031
	.quad	0x3fe2e7253da72a7c              # double 0.59071600000000002
	.quad	0x3fe0623f24d8fd5d              # double 0.51199300000000003
	.quad	0x3fe9759253543aeb              # double 0.79560200000000003
	.quad	0x3fdc55da272862f6              # double 0.44274000000000002
	.quad	0x3fd3218def416bdb              # double 0.29892299999999999
	.quad	0x3fe87c0f45176146              # double 0.76514400000000005
	.quad	0x3fe45ab191dde376              # double 0.63607100000000005
	.quad	0x3fe89930be0ded29              # double 0.76870000000000005
	.quad	0x3fd35c209246bf01              # double 0.30249799999999999
	.quad	0x3fe59f5be5d9e40d              # double 0.67570300000000005
	.quad	0x3fc657d9dba908a2              # double 0.17455599999999999
	.quad	0x3fe1625a682b6284              # double 0.54325599999999996
	.quad	0x3fd1b884406c00da              # double 0.27688699999999999
	.quad	0x3fe58474d9c6b053              # double 0.67241899999999999
	.quad	0x3fe29d3ed527e521              # double 0.58169499999999996
	.quad	0x3fa40fcb4f1e4b45              # double 0.039183000000000003
	.quad	0x3feea2ccb3a2595c              # double 0.95737300000000002
	.quad	0x3fc46034f3fd933e              # double 0.15918599999999999
	.quad	0x3fe4ad106ee30caa              # double 0.64612599999999998
	.quad	0x3fd79a06a6e32e38              # double 0.36877599999999999
	.quad	0x3feea2877ee4e26d              # double 0.95733999999999997
	.quad	0x3fe13d3a1d323fee              # double 0.53872399999999998
	.quad	0x3fd23ee1bd1ed9e0              # double 0.28508800000000001
	.quad	0x3fb4c8cd63cb8173              # double 0.081188999999999997
	.quad	0x3fe0c9b62c77574f              # double 0.52462299999999995
	.quad	0x3fee0be0ded288ce              # double 0.93894999999999995
	.quad	0x3fe8ad2dcb1465e9              # double 0.77114000000000005
	.quad	0x3fe9abef06b37868              # double 0.80223800000000001
	.quad	0x3fe2e1dc93ea2d30              # double 0.59007100000000001
	.quad	0x3fd9454de7ea5f85              # double 0.39485500000000001
	.quad	0x3fd8dda059a73b43              # double 0.38852700000000001
	.quad	0x3fe42619da9c9928              # double 0.62965099999999996
	.quad	0x3feed6a593a2df93              # double 0.96370199999999994
	.quad	0x3fe6dd462c343b71              # double 0.71451100000000001
	.quad	0x3fdd56191148fda0              # double 0.45838000000000001
	.quad	0x3fe7e9d7342edbb6              # double 0.74729500000000004
	.quad	0x3fb2c61522a6f3f5              # double 0.073334999999999997
	.quad	0x3fed681669ced0b3              # double 0.918956
	.quad	0x3fe3d5d1c3ac929b              # double 0.61985100000000004
	.quad	0x3fd81b64e054690e              # double 0.37667200000000001
	.quad	0x3fe45a5b9628cbd1              # double 0.63602999999999998
	.quad	0x3fe9413b9f127f5f              # double 0.78921300000000005
	.quad	0x3fea064020817fc7              # double 0.81326299999999996
	.quad	0x3fe949320d9945b7              # double 0.79018500000000003
	.quad	0x3fdf9f44d4456712              # double 0.49409599999999998
	.quad	0x3fa1d2bf5515054b              # double 0.034811000000000002
	.quad	0x3fe799a415f45e0b              # double 0.73750499999999997
	.quad	0x3fe53458cd20afa3              # double 0.66264000000000001
	.quad	0x3fafb1c0010c6f7a              # double 0.061903
	.quad	0x3fbd40357a355044              # double 0.114261
	.quad	0x3fd01d755bccaf71              # double 0.25179800000000002
	.quad	0x3fea599ed7c6fbd2              # double 0.82343999999999995
	.quad	0x3fd2bb1af3a14cec              # double 0.29266999999999999
	.quad	0x3fefcb838c111ada              # double 0.99359299999999995
	.quad	0x3fd256e264e48627              # double 0.286553
	.quad	0x3fdf6338b47c73ef              # double 0.49043100000000001
	.quad	0x3fdf4d37c1376d55              # double 0.48908800000000002
	.quad	0x3fc1579af1886df8              # double 0.135486
	.quad	0x3feeb8327674d163              # double 0.95998499999999997
	.quad	0x3fe070563ed0f627              # double 0.51371299999999998
	.quad	0x3fd813be22e5de16              # double 0.37620500000000001
	.quad	0x3fc2a012599ed7c7              # double 0.14551
	.quad	0x3fec4fdf3b645a1d              # double 0.88475000000000004
	.quad	0x3fd82db1e9f27781              # double 0.37778899999999999
	.quad	0x3fea6106ab14ec20              # double 0.82434399999999996
	.quad	0x3fe37b2031ceaf25              # double 0.60877999999999999
	.quad	0x3fe0047f562174c5              # double 0.50054900000000002
	.quad	0x3febc05f6ba0620b              # double 0.86723300000000003
	.quad	0x3fe8b8dc55000c95              # double 0.77256599999999997
	.quad	0x3fea672fba01eeee              # double 0.82509600000000005
	.quad	0x3fc73d07c84b5dcc              # double 0.18154999999999999
	.quad	0x3feb622e5de15ca7              # double 0.85573500000000002
	.quad	0x3fc186ca89fc6da4              # double 0.13692599999999999
	.quad	0x3fd254fbdad7518b              # double 0.286437
	.quad	0x3fc494c447c30d30              # double 0.16078999999999999
	.quad	0x3fe456323bbc6eb1              # double 0.63552200000000003
	.quad	0x3fe369ea14057082              # double 0.60667899999999997
	.quad	0x3fe4db4aa9717df2              # double 0.65176900000000004
	.quad	0x3fd007789a459104              # double 0.25045600000000001
	.quad	0x3fe2f42bb6672fba              # double 0.592306
	.quad	0x3f9f9b994e1a3f46              # double 0.030866999999999999
	.quad	0x3feb0a0902de00d2              # double 0.84497500000000003
	.quad	0x3feefd82773e24ff              # double 0.96844600000000002
	.quad	0x3f61ea78af3e468d              # double 0.0021870000000000001
	.quad	0x3fcc906034f3fd93              # double 0.22315599999999999
	.quad	0x3fe2d781c714fce7              # double 0.58880699999999997
	.quad	0x3fe3ec3547e06962              # double 0.62258400000000003
	.quad	0x3fc2b7cbb3c81909              # double 0.146234
	.quad	0x3fec893532e7b3d9              # double 0.89174900000000001
	.quad	0x3f73458cd20afa2f              # double 0.004705
	.quad	0x3fbbadc0980b2420              # double 0.10811999999999999
	.quad	0x3fe4adb1e9f27781              # double 0.64620299999999997
	.quad	0x3fca36544fe36d22              # double 0.20478299999999999
	.quad	0x3fbd52c16df3f962              # double 0.11454400000000001
	.quad	0x3fd4018a43bb40b3              # double 0.31259399999999998
	.quad	0x3fd8b2031ceaf252              # double 0.38586500000000001
	.quad	0x3fc7442c7fbacb43              # double 0.18176800000000001
	.quad	0x3fd83419e30014f9              # double 0.37818000000000002
	.quad	0x3fef39f127f5e84f              # double 0.97582299999999999
	.quad	0x3fd5b8fde2ef4e01              # double 0.339416
	.quad	0x3fee8bfa0945f9df              # double 0.95458699999999996
	.quad	0x3fe30c9d9d3458cd              # double 0.59528999999999999
	.quad	0x3fe6460242d05f29              # double 0.69604600000000005
	.quad	0x3fe1376f6d762520              # double 0.53801699999999997
	.quad	0x3fda8372e6a76966              # double 0.414273
	.quad	0x3fc68672756861e9              # double 0.175978
	.quad	0x3fd20941c8216c61              # double 0.28181499999999998
	.quad	0x3fc856abde3fbbd8              # double 0.19014500000000001
	.quad	0x3fed16b54e2b063e              # double 0.909022
	.quad	0x3fc2a1dfb9389b52              # double 0.145565
	.quad	0x3fc88301a79fec9a              # double 0.191498
	.quad	0x3fc579314445aa2e              # double 0.16776099999999999
	.quad	0x3fd570f7b9e060fe              # double 0.33501999999999998
	.quad	0x3fe2c942d490e66d              # double 0.58706800000000003
	.quad	0x3fe2dcd7060bb2bc              # double 0.58945800000000004
	.quad	0x3fee5d67ba237cdd              # double 0.94890200000000002
	.quad	0x3fec63f141205bc0              # double 0.88719999999999999
	.quad	0x3fca32fcac8e68e4              # double 0.204681
	.quad	0x3fd153c9abb01c93              # double 0.27073900000000001
	.quad	0x3fc661847f562175              # double 0.17485100000000001
	.quad	0x3fe6925bb7b6bb13              # double 0.70536600000000005
	.quad	0x3feca3571d1d4739              # double 0.89493900000000004
	.quad	0x3fec385a4f00ef13              # double 0.88187899999999997
	.quad	0x3fde36694898f606              # double 0.47207100000000002
	.quad	0x3fe572a38b8ae31d              # double 0.67024399999999995
	.quad	0x3fc5f84cad57bc7f              # double 0.17163999999999999
	.quad	0x3feb065f9591cd1c              # double 0.84452799999999994
	.quad	0x3fe3aae6c8f75537              # double 0.61461200000000005
	.quad	0x3f565d3996fa82e8              # double 0.0013649999999999999
	.quad	0x3fe3d73a797891e2              # double 0.62002299999999999
	.quad	0x3fdb66c6de76427c              # double 0.42814799999999997
	.quad	0x3fdbcd74927913e8              # double 0.434415
	.quad	0x3fecdc422036006d              # double 0.90188699999999999
	.quad	0x3fc02089e34330d7              # double 0.12599299999999999
	.quad	0x3fdf72f33ca31e7e              # double 0.49139100000000002
	.quad	0x3fe18dc11e42e126              # double 0.54855399999999999
	.quad	0x3fc32d1aeb3dd11c              # double 0.149814
	.quad	0x3fc8d5cfaacd9e84              # double 0.194025
	.quad	0x3fd084dfce3150db              # double 0.25811000000000001
	.quad	0x3fbb72f76e6106ab              # double 0.107223
	.quad	0x3fe3f0068db8bac7              # double 0.62304999999999999
	.quad	0x3fe867685985ad54              # double 0.76262300000000005
	.quad	0x3fed84a2fcefaa47              # double 0.92244099999999996
	.quad	0x3fc286594af4f0d8              # double 0.14472499999999999
	.quad	0x3facda9003eea20a              # double 0.056355000000000002
	.quad	0x3fe81cda2b5a20de              # double 0.75352200000000003
	.quad	0x3fcb315d701d9f4d              # double 0.21244399999999999
	.quad	0x3fee8ac3a860dcba              # double 0.95443900000000004
	.quad	0x3f9ba40d90e23af3              # double 0.026993
	.quad	0x3fe8257eaa2a0a96              # double 0.75457700000000005
	.quad	0x3fb3bc3c5bd0e12f              # double 0.077091000000000007
	.quad	0x3fe14a90470a808d              # double 0.54035200000000005
	.quad	0x3fe2577963992c8c              # double 0.57317799999999997
	.quad	0x3fc2daec4a4095f2              # double 0.14730599999999999
	.quad	0x3fe413293d102bc7              # double 0.62733899999999998
	.quad	0x3fb751deefe4ffc9              # double 0.091092999999999993
	.quad	0x3fe2a0c49ba5e354              # double 0.582125
	.quad	0x3fe31cb6848beb5b              # double 0.59725499999999998
	.quad	0x3fb39ae0c1765775              # double 0.076581999999999997
	.quad	0x3fecb7c7820a30db              # double 0.89743399999999995
	.quad	0x3fec1e03f705857b              # double 0.878664
	.quad	0x3fd7cd4ed2cbea4f              # double 0.37190600000000001
	.quad	0x3fee89289dadfb50              # double 0.95424299999999995
	.quad	0x3fda0ecfa69be09c              # double 0.40715400000000002
	.quad	0x3fcc7a41e57d9dbb              # double 0.22248100000000001
	.quad	0x3fea7eac42e9899c              # double 0.827963
	.quad	0x3fd063b688bda943              # double 0.25608599999999998
	.quad	0x3fef6c4a4095f245              # double 0.98196899999999998
	.quad	0x3fd2b91b3f20a73f              # double 0.29254799999999997
	.quad	0x3fe992428d434a02              # double 0.79910400000000004
	.quad	0x3fc228f5c28f5c29              # double 0.141875
	.quad	0x3fcee978d4fdf3b6              # double 0.24149999999999999
	.quad	0x3fdd62f9ca5bd945              # double 0.45916600000000002
	.quad	0x3fde728a6117720d              # double 0.47574100000000002
	.quad	0x3fefa5332acfb763              # double 0.98891600000000001
	.quad	0x3fe1c6195464dc23              # double 0.55543200000000004
	.quad	0x3fdb1b97353b4b30              # double 0.42355900000000002
	.quad	0x3fdd789a459103c9              # double 0.46048600000000001
	.quad	0x3feb446f9b994e1a              # double 0.85210399999999997
	.quad	0x3fe25a4ce8101f32              # double 0.57352300000000001
	.quad	0x3fea52aa5c5f7c67              # double 0.82259099999999996
	.quad	0x3fee00baa582dbe8              # double 0.937589
	.quad	0x3fb1ea033e78e193              # double 0.069976999999999998
	.quad	0x3fd6eb18116ebd4d              # double 0.358099
	.quad	0x3fbffc43b2dd377e              # double 0.124943
	.quad	0x3fedb20fb224aada              # double 0.92798599999999998
	.quad	0x3fd0e4430b178b37              # double 0.263932
	.quad	0x3fd2a31e7d9988d3              # double 0.29120600000000002
	.quad	0x3fe82ebe596c82e0              # double 0.75570599999999998
	.quad	0x3fd81522a6f3f530              # double 0.37629000000000001
	.quad	0x3fecc6e08f217093              # double 0.89927699999999999
	.quad	0x3fa24d4cb9ecf638              # double 0.035746
	.quad	0x3fca0d77b7c7820a              # double 0.20353599999999999
	.quad	0x3fe65119ce075f70              # double 0.69740000000000002
	.quad	0x3fc7c1c6088d6d3b              # double 0.18560099999999999
	.quad	0x3fecdab9f559b3d0              # double 0.90169999999999995
	.quad	0x3fdd56e264e48627              # double 0.458428
	.quad	0x3feb188d2a1f8e3b              # double 0.84674700000000003
	.quad	0x3fda7ba237cdcca7              # double 0.413796
	.quad	0x3fe7731098d477bc              # double 0.732796
	.quad	0x3fe01f1cfbb94962              # double 0.50379799999999997
	.quad	0x3fe20d173fb7a5f4              # double 0.56409799999999999
	.quad	0x3fef8feef5ec80c7              # double 0.98631999999999997
	.quad	0x3fe3989374bc6a7f              # double 0.612375
	.quad	0x3fd6225b749adc90              # double 0.34584700000000002
	.quad	0x3fc03c74fb549f95              # double 0.12684500000000001
	.quad	0x3fe3bd9018e75793              # double 0.61689000000000005
	.quad	0x3fe7538476f2a5a4              # double 0.72894499999999995
	.quad	0x3fec4bf8fcd67fd4              # double 0.884274
	.quad	0x3fe3bde3fbbd7b20              # double 0.61692999999999998
	.quad	0x3fed658c4bd33d29              # double 0.91864599999999996
	.quad	0x3fe75a9a8049667b              # double 0.72980999999999996
	.quad	0x3fedc0bbb1f255f3              # double 0.92977699999999996
	.quad	0x3fca12d77318fc50              # double 0.20369999999999999
	.quad	0x3fd69613d31b9b67              # double 0.35291
	.quad	0x3fed4c46950fc71d              # double 0.91556099999999996
	.quad	0x3fde7bf61aa3f035              # double 0.47631600000000002
	.quad	0x3fd48f81e8a2ec29              # double 0.32125900000000002
	.quad	0x3fdf294dd72367e4              # double 0.486896
	.quad	0x3fd4197a24894c44              # double 0.31405499999999997
	.quad	0x3fe9bd20f2becedd              # double 0.80433699999999997
	.quad	0x3fe4787485e3da30              # double 0.63970400000000005
	.quad	0x3fdc75ddd2ae8e1d              # double 0.44469399999999998
	.quad	0x3fee775968512232              # double 0.95206900000000005
	.quad	0x3fd57e846a5d6bec              # double 0.33584700000000001
	.quad	0x3fe71a4df47f993d              # double 0.72196099999999996
	.quad	0x3fd0f3a14cec41dd              # double 0.26486999999999999
	.quad	0x3fdfbd3c36113405              # double 0.495925
	.quad	0x3fc6ec3116228134              # double 0.17908299999999999
	.quad	0x3fe193d31b9b66f9              # double 0.54929499999999998
	.quad	0x3fa20620ab713272              # double 0.035202999999999998
	.quad	0x3fb62413db7f1737              # double 0.086487999999999995
	.quad	0x3fc62b6284599674              # double 0.17319899999999999
	.quad	0x3fd9808c8259e1f4              # double 0.39847100000000002
	.quad	0x3fa7ae3608d0891a              # double 0.046251
	.quad	0x3fe8eb59146e4c0e              # double 0.778729
	.quad	0x3fd6580c308feac4              # double 0.34912399999999999
	.quad	0x3fb266a98244e93e              # double 0.071878999999999998
	.quad	0x3fb0f355cd91eeaa              # double 0.066212999999999994
	.quad	0x3fe4c091c087442c              # double 0.64850699999999994
	.quad	0x3fe1f2756861e929              # double 0.56084699999999998
	.quad	0x3fdb4195cc857f30              # double 0.42587799999999998
	.quad	0x3fca62e4d1a65061              # double 0.20614299999999999
	.quad	0x3fcd1c64ba94bbe4              # double 0.22742899999999999
	.quad	0x3fef677f6b1a2a4e              # double 0.98138400000000003
	.quad	0x3fdc0f062d40aaeb              # double 0.438417
	.quad	0x3fe451116a8b8f15              # double 0.63489600000000002
	.quad	0x3fecb44a1f080304              # double 0.89700800000000002
	.quad	0x3fe4138151a43782              # double 0.62738099999999997
	.quad	0x3fc6e84ad794a6ec              # double 0.17896400000000001
	.quad	0x3fef2990f301eabc              # double 0.97382400000000002
	.quad	0x3fea5b59578a2a91              # double 0.82365100000000002
	.quad	0x3faa40fa9c12f09e              # double 0.051277000000000003
	.quad	0x3fde6f71a7e30878              # double 0.47555199999999997
	.quad	0x3f82ebe596c82e02              # double 0.0092390000000000007
	.quad	0x3fdbcecc814d727a              # double 0.43449700000000002
	.quad	0x3fed064883fd5022              # double 0.90701699999999996
	.quad	0x3fe066e43aa79bbb              # double 0.51256000000000002
	.quad	0x3fc2e32e3821af7d              # double 0.14755799999999999
	.quad	0x3fea94c22ee4191a              # double 0.83065900000000004
	.quad	0x3fec5c054ef459da              # double 0.88623300000000005
	.quad	0x3fe34cec41dd1a22              # double 0.60314000000000001
	.quad	0x3fef4959e6256367              # double 0.97770400000000001
	.quad	0x3fd7df0d413122b8              # double 0.37298900000000001
	.quad	0x3fe2b953dea465a5              # double 0.58512299999999995
	.quad	0x3fdadb1209edbf8c              # double 0.41962100000000002
	.quad	0x3fe16a91d9b1b79e              # double 0.54425900000000005
	.quad	0x3fe1e1e2de870974              # double 0.55882399999999999
	.quad	0x3feb4c39ffd60e95              # double 0.85305500000000001
	.quad	0x3fc4d2bb23571d1d              # double 0.16268099999999999
	.quad	0x3fe574256bca5376              # double 0.67042800000000002
	.quad	0x3fec24723aafff37              # double 0.87944900000000004
	.quad	0x3fc0b69db65ecc3e              # double 0.13057299999999999
	.quad	0x3feeb1ad2135daad              # double 0.95918899999999995
	.quad	0x3fed3affb04ee7c5              # double 0.91345200000000004
	.quad	0x3fd01dda059a73b4              # double 0.25182199999999999
	.quad	0x3fe2d20d130df9be              # double 0.58814100000000002
	.quad	0x3fde1c92ddbdb5d9              # double 0.47049400000000002
	.quad	0x3fc14f3775b81301              # double 0.13522999999999999
	.quad	0x3f46bdb1a6d698fe              # double 6.9399999999999996E-4
	.quad	0x3fa311409a240315              # double 0.037241000000000003
	.quad	0x3fddbc27631b584b              # double 0.46460899999999999
	.quad	0x3fa100a393ee5eee              # double 0.033208000000000001
	.quad	0x3fe57e52157689ca              # double 0.67166999999999999
	.quad	0x3fe22e8e1d6494d5              # double 0.56818299999999999
	.quad	0x3fd97b6bb1290258              # double 0.39815800000000001
	.quad	0x3fed7bb9496249a1              # double 0.92135299999999998
	.quad	0x3fd7b6177ea1c68f              # double 0.37048900000000001
	.quad	0x3fd02d1aeb3dd11c              # double 0.25275300000000001
	.quad	0x3fe5784ec636b096              # double 0.67093599999999998
	.quad	0x3fec7214f0520d13              # double 0.88892599999999999
	.quad	0x3fc25dbfceb78898              # double 0.143486
	.quad	0x3fec44028e4fb97c              # double 0.88330200000000003
	.quad	0x3fa753e707e175d1              # double 0.045561999999999998
	.quad	0x3fe18841ede1198b              # double 0.54788300000000001
	.quad	0x3fe1428f5c28f5c3              # double 0.53937500000000005
	.quad	0x3fe7d21144cbe1eb              # double 0.74439299999999997
	.quad	0x3fe805e80bed740c              # double 0.75072099999999997
	.quad	0x3fe00e4fb97bb731              # double 0.50174700000000005
	.quad	0x3fecd83621fafc8b              # double 0.901393
	.quad	0x3fde16fc9bc77143              # double 0.47015299999999999
	.quad	0x3fe0f8705425f202              # double 0.53032699999999999
	.quad	0x3fe995e7c8d19589              # double 0.79954899999999995
	.quad	0x3fef29c347e8ccde              # double 0.97384800000000005
	.quad	0x3fe9b415b1422ccb              # double 0.80323299999999997
	.quad	0x3fc51cfbb949624a              # double 0.16494700000000001
	.quad	0x3fe158b3f63c31df              # double 0.54207799999999995
	.quad	0x3fd0efd86a8fc0d3              # double 0.26463900000000001
	.quad	0x3fc71276fb09203a              # double 0.18025099999999999
	.quad	0x3fd2ca0c282c6ef4              # double 0.29358200000000001
	.quad	0x3fca000000000000              # double 0.203125
	.quad	0x3fd33ba775fb2ee0              # double 0.30051600000000001
	.quad	0x3f99cb252ce032db              # double 0.025189
	.quad	0x3fdf2fcefaa4766c              # double 0.48729299999999998
	.quad	0x3fe64508b32ce896              # double 0.69592699999999996
	.quad	0x3fce8f7db6e503fb              # double 0.23875399999999999
	.quad	0x3fbe28ed5f138bce              # double 0.117812
	.quad	0x3fd5b738e6d15ad1              # double 0.339308
	.quad	0x3fe2bb05faebc409              # double 0.58533000000000002
	.quad	0x3fd15193708aac97              # double 0.27060400000000001
	.quad	0x3fcd410f94c87981              # double 0.228548
	.quad	0x3fe6c4eb56fb8f58              # double 0.711538
	.quad	0x3fc10f8c64fdb09a              # double 0.13328699999999999
	.quad	0x3feb1ac36544fe37              # double 0.84701700000000002
	.quad	0x3fc51c0010c6f7a1              # double 0.16491700000000001
	.quad	0x3fda67ba237cdcca              # double 0.41258099999999998
	.quad	0x3fed47f349385836              # double 0.91503299999999999
	.quad	0x3fe56368f08461fa              # double 0.66838500000000001
	.quad	0x3fe1c60cbf2b239a              # double 0.55542599999999998
	.quad	0x3fbb1704ff43419e              # double 0.10582
	.quad	0x3fcf843c3a42f1ed              # double 0.246223
	.quad	0x3fdc749f0e4da09d              # double 0.44461800000000001
	.quad	0x3fe24ee17a02fb5d              # double 0.572129
	.quad	0x3fd805faebc408d9              # double 0.375365
	.quad	0x3fdd46bacf7446fa              # double 0.45744200000000002
	.quad	0x3feccd61b2a27f1b              # double 0.90007099999999995
	.quad	0x3fefc304ccee5abc              # double 0.99255599999999999
	.quad	0x3fc94b599aa60914              # double 0.19761200000000001
	.quad	0x3fea430b178b3700              # double 0.82068399999999997
	.quad	0x3fe4e10adcd2d44e              # double 0.65247100000000002
	.quad	0x3fe1e89ca18bd662              # double 0.55964499999999995
	.quad	0x3fe8b81d7dbf4880              # double 0.77247500000000002
	.quad	0x3fdbb645a1cac083              # double 0.433
	.quad	0x3fb99af9ebe9c886              # double 0.100021
	.quad	0x3fc71a543f1c7582              # double 0.18049100000000001
	.quad	0x3fc9fcc9ea9a3d2e              # double 0.20302700000000001
	.quad	0x3fd3f3e468cac4b5              # double 0.31176100000000001
	.quad	0x3fac091c087442c8              # double 0.054757
	.quad	0x3fa2b606b7aa25d9              # double 0.036545000000000001
	.quad	0x3fee9e34330d7386              # double 0.956812
	.quad	0x3fda7f77af64063a              # double 0.41403000000000001
	.quad	0x3fe247eae5bc87db              # double 0.57127899999999998
	.quad	0x3fde8bb4d48882f1              # double 0.47727700000000001
	.quad	0x3fe95dc8323358f3              # double 0.79269800000000001
	.quad	0x3fdf2b66b6177ea2              # double 0.48702400000000001
	.quad	0x3fe80650e779207d              # double 0.75077099999999997
	.quad	0x3fcf6f544bb1af3a              # double 0.245585
	.quad	0x3fdbc4a4095f2453              # double 0.43387700000000001
	.quad	0x3fecaaa7ded6ba8c              # double 0.89583199999999996
	.quad	0x3fbcd5410f94c87a              # double 0.11262900000000001
	.quad	0x3fe9d232d2bb2357              # double 0.80690899999999999
	.quad	0x3fd7f4cb1897a67a              # double 0.37431599999999998
	.quad	0x3fe0848beb5b2d4d              # double 0.51617999999999997
	.quad	0x3fcdf023e9ea1405              # double 0.23389099999999999
	.quad	0x3fed94e1a3f4666f              # double 0.92442400000000002
	.quad	0x3fd5c78a6dacabc5              # double 0.340304
	.quad	0x3fedce7ee9142b30              # double 0.93145699999999998
	.quad	0x3fec803ab862b27d              # double 0.89065300000000003
	.quad	0x3fccfa69be09bb6b              # double 0.22639200000000001
	.quad	0x3fee2bc72e275ab8              # double 0.94284400000000001
	.quad	0x3fe4ef0cfe154435              # double 0.65418100000000001
	.quad	0x3fe3d5885d31337f              # double 0.61981600000000003
	.quad	0x3fef3305100a393f              # double 0.97497800000000001
	.quad	0x3fec69835158b828              # double 0.88788
	.quad	0x3fb8e4649906cca3              # double 0.097235000000000002
	.quad	0x3fdcde2ef4e0114d              # double 0.45106099999999999
	.quad	0x3fcdafea3df6db94              # double 0.231931
	.quad	0x3fd1691ea78af3e4              # double 0.27204099999999998
	.quad	0x3feae694898f605b              # double 0.84064700000000003
	.quad	0x3fa43a2163fdd65a              # double 0.039505999999999999
	.quad	0x3fdac55000c9539c              # double 0.41829300000000003
	.quad	0x3fc04bec679cc74c              # double 0.12731700000000001
	.quad	0x3fea2f7d30ad46f6              # double 0.81829700000000005
	.quad	0x3fded00f776c4828              # double 0.48144900000000002
	.quad	0x3fd8030c23fab10c              # double 0.37518600000000002
	.quad	0x3fe15b0dd82fd75e              # double 0.54236499999999999
	.quad	0x3fba51e321a2e7f7              # double 0.102812
	.quad	0x3fe3955714b9cb68              # double 0.61197999999999997
	.quad	0x3fd9ae4b018611fd              # double 0.40126299999999998
	.quad	0x3fe82178f68be2f8              # double 0.75408600000000003
	.quad	0x3fdbb63d3e4ef028              # double 0.43299799999999999
	.quad	0x3febee6106ab14ec              # double 0.87284899999999998
	.quad	0x3fe19f75104d551d              # double 0.55071499999999995
	.quad	0x3fda57afea3df6dc              # double 0.41160200000000002
	.quad	0x3fdac1a048e043a2              # double 0.418068
	.quad	0x3feabf077ccc0379              # double 0.83581899999999998
	.quad	0x3fe7995cc857f306              # double 0.73747099999999999
	.quad	0x3fe42d40aaeafab5              # double 0.63052399999999997
	.quad	0x3fef53b4b2fa93af              # double 0.97896799999999994
	.quad	0x3fefb430f49491f3              # double 0.99074600000000001
	.quad	0x3fe46edaa92e6213              # double 0.63853199999999999
	.quad	0x3f8b10fd7e45803d              # double 0.013216
	.quad	0x3fe8f7a7008a697b              # double 0.78023100000000001
	.quad	0x3fb8cee5abc0e38a              # double 0.096906999999999993
	.quad	0x3fd3421c044284e0              # double 0.30091000000000001
	.quad	0x3fce1f18c9fb6135              # double 0.23532400000000001
	.quad	0x3fd65b6c3760bf5d              # double 0.34932999999999997
	.quad	0x3fdbe73e681a9b8d              # double 0.43598900000000002
	.quad	0x3fc34f61672324c8              # double 0.15085999999999999
	.quad	0x3fcb315d701d9f4d              # double 0.21244399999999999
	.quad	0x3fedaafff36ac647              # double 0.92712399999999995
	.quad	0x3fe626bf8769ec2d              # double 0.69223000000000001
	.quad	0x3fef00c521dda05a              # double 0.96884400000000004
	.quad	0x3fc474299d883ba3              # double 0.15979499999999999
	.quad	0x3fe2cd8ba40d90e2              # double 0.58759099999999997
	.quad	0x3fd535f80991793a              # double 0.33141900000000002
	.quad	0x3fe4eff1950331e4              # double 0.65429000000000004
	.quad	0x3fc17e2c55c96031              # double 0.13666300000000001
	.quad	0x3fee34bb5e0f7fd0              # double 0.94393700000000003
	.quad	0x3fefca3400b88ca4              # double 0.99343300000000001
	.quad	0x3fe446dc5d638866              # double 0.63365000000000005
	.quad	0x3fd61abd1aa821f3              # double 0.34538200000000002
	.quad	0x3fe85ae3e6c4c597              # double 0.76109499999999997
	.quad	0x3fa056605ee568a5              # double 0.031909
	.quad	0x3fe8e8101f31f46f              # double 0.77832800000000002
	.quad	0x3fe7a52263d816ad              # double 0.73890800000000001
	.quad	0x3fea25d8d79d0a67              # double 0.81711999999999996
	.quad	0x3fe0565e4606748e              # double 0.51054299999999997
	.quad	0x3fee39c304ccee5b              # double 0.94455100000000003
	.quad	0x3fbfddfc9ff92f2b              # double 0.12448099999999999
	.quad	0x3fdda13c254a3c64              # double 0.46296599999999999
	.quad	0x3fd2ee45c358afc4              # double 0.29579299999999997
	.quad	0x3fe3be74afd54541              # double 0.61699899999999996
	.quad	0x3fd9a07b352a8438              # double 0.40042
	.quad	0x3fe7a04d12018a44              # double 0.73831800000000003
	.quad	0x3fdd1f5be5d9e40d              # double 0.45503900000000003
	.quad	0x3f81bef49cf56ead              # double 0.0086650000000000008
	.quad	0x3fe5dd69d30270f4              # double 0.68327800000000005
	.quad	0x3fba60913a4f8727              # double 0.103036
	.quad	0x3fc659c8c9320d99              # double 0.17461499999999999
	.quad	0x3fc885d31337eb29              # double 0.191584
	.quad	0x3fd170de8f6cefed              # double 0.27251399999999998
	.quad	0x3fe3756861e92924              # double 0.60808200000000001
	.quad	0x3fe2d454152b0a70              # double 0.58841900000000003
	.quad	0x3fd742c7fbacb429              # double 0.36345100000000002
	.quad	0x3feb203a322af577              # double 0.84768399999999999
	.quad	0x3fe6e073de1e2de8              # double 0.71489899999999995
	.quad	0x3fa276534373f317              # double 0.036059000000000001
	.quad	0x3fe3653005814941              # double 0.60610200000000003
	.quad	0x3fb2946801711948              # double 0.072577000000000003
	.quad	0x3fe4ad9cf13cee9e              # double 0.64619300000000002
	.quad	0x3fec72dc2b0ea183              # double 0.88902099999999995
	.quad	0x3fe1888509bf9c63              # double 0.54791500000000004
	.quad	0x3fb14f3775b81301              # double 0.067614999999999995
	.quad	0x3fe909d27c393682              # double 0.78244899999999995
	.quad	0x3fdb918a009f6230              # double 0.43075799999999997
	.quad	0x3feb517e77d523b3              # double 0.85369799999999996
	.quad	0x3fe1d59f6ec5b079              # double 0.55732700000000002
	.quad	0x3fe293879c4113c7              # double 0.58050900000000005
	.quad	0x3fe4ea1c68ec52a4              # double 0.65357799999999999
	.quad	0x3f9c89f40a2877ee              # double 0.027869999999999999
	.quad	0x3fe002fb5d031056              # double 0.50036400000000003
	.quad	0x3fe73ef49cf56ead              # double 0.72643500000000005
	.quad	0x3fb4afe60c38f367              # double 0.080809000000000006
	.quad	0x3fd1eb7457c0b136              # double 0.27999600000000002
	.quad	0x3fe43be878fabda1              # double 0.63231300000000001
	.quad	0x3fe01a2c669057d1              # double 0.50319499999999995
	.quad	0x3fe292ab68cef673              # double 0.58040400000000003
	.quad	0x3fede71044f1a198              # double 0.93445599999999995
	.quad	0x3fea16249a133c1d              # double 0.81520300000000001
	.quad	0x3fd46f32bdc26dce              # double 0.31928699999999999
	.quad	0x3fee72c5197a2489              # double 0.95150999999999997
	.quad	0x3fd92b55ef1fddec              # double 0.39327000000000001
	.quad	0x3fe1b3a8a3f8982d              # double 0.55318100000000003
	.quad	0x3fe005f06f694467              # double 0.50072499999999998
	.quad	0x3fe69e364bec679d              # double 0.70681300000000002
	.quad	0x3fd78d2a1f8e3ac1              # double 0.36799100000000001
	.quad	0x3fee1d8e86402081              # double 0.94110799999999994
	.quad	0x3fdffcc1871e6cd3              # double 0.49980200000000002
	.quad	0x3fcc58255b035bd5              # double 0.22144
	.quad	0x3fe0e0d66f0cfe15              # double 0.52744599999999997
	.quad	0x3fe9a391d57ff9b5              # double 0.80121699999999996
	.quad	0x3fe59754b05b7cfe              # double 0.67472299999999996
	.quad	0x3fe667d1351159c5              # double 0.70017300000000005
	.quad	0x3febb37867f0aa22              # double 0.86565800000000004
	.quad	0x3fdb8d434a01abd2              # double 0.43049700000000002
	.quad	0x3fd77c49fd7a13c2              # double 0.36696099999999998
	.quad	0x3faef34d6a161e4f              # double 0.060449999999999997
	.quad	0x3fd788db0574b407              # double 0.367728
	.quad	0x3fe69ab0856e696a              # double 0.70638299999999998
	.quad	0x3fddcdee34fc610f              # double 0.465694
	.quad	0x3fdd36e71cda2b5a              # double 0.45647599999999999
	.quad	0x3fe0bc21187e7c07              # double 0.52296500000000001
	.quad	0x3fe5ec7a7c9de050              # double 0.68511699999999998
	.quad	0x3fe29e44fa05143c              # double 0.58182
	.quad	0x3fecd3e920c069e8              # double 0.900868
	.quad	0x3fe610e453d20f2c              # double 0.68956200000000001
	.quad	0x3fe51654d61b2a28              # double 0.65897600000000001
	.quad	0x3fd851b93037d630              # double 0.37998799999999999
	.quad	0x3fef752977c88e7a              # double 0.98305200000000004
	.quad	0x3feb5097c80841ee              # double 0.85358800000000001
	.quad	0x3fecb2bfdb4cc250              # double 0.89681999999999995
	.quad	0x3fe7b198288051ca              # double 0.740429
	.quad	0x3feefe542e557de1              # double 0.96854600000000001
	.quad	0x3fac197e56473472              # double 0.054882
	.quad	0x3fee8f5a1016ce79              # double 0.95499900000000004
	.quad	0x3fd99c6f36ef8056              # double 0.400173
	.quad	0x3fefe8661ae70c13              # double 0.99711899999999997
	.quad	0x3fe9e9984a0e410b              # double 0.80976499999999996
	.quad	0x3fd83b0813cab820              # double 0.37860300000000002
	.quad	0x3fd24eb13dfb0d52              # double 0.286053
	.quad	0x3fe0f35e310dbf05              # double 0.52970799999999996
	.quad	0x3fb2eb4e9813879c              # double 0.073902999999999996
	.quad	0x3f89bfdf7e8038a0              # double 0.012573000000000001
	.quad	0x3fea92cf0f9d2bf5              # double 0.83042099999999996
	.quad	0x3fcf5371971c10d8              # double 0.24473400000000001
	.quad	0x3fe70ccff21b3aef              # double 0.72031400000000001
	.quad	0x3feb29f383f0bae9              # double 0.84887100000000004
	.quad	0x3fd54b3c3e74afd5              # double 0.33271699999999998
	.quad	0x3fe8daab47410731              # double 0.77669299999999997
	.quad	0x3fb2ce9a2c669058              # double 0.073465000000000003
	.quad	0x3fa9bd1ed9dfdac7              # double 0.050271000000000003
	.quad	0x3fe87644955b4678              # double 0.76443700000000003
	.quad	0x3fe6ec9c0a8d21bc              # double 0.71638299999999999
	.quad	0x3fec5e529bae46d0              # double 0.88651400000000002
	.quad	0x3fedc044284dfce3              # double 0.92971999999999999
	.quad	0x3fee2f6837f7be12              # double 0.94328699999999999
	.quad	0x3fd37f993d5347a6              # double 0.30466300000000002
	.quad	0x3fda8eb8950763a2              # double 0.41496100000000002
	.quad	0x3fc98288051c9f73              # double 0.199296
	.quad	0x3fcfd7a13c254a3c              # double 0.24876799999999999
	.quad	0x3fe5f00cd855970b              # double 0.68555299999999997
	.quad	0x3fb2146a1a500d5f              # double 0.070624000000000006
	.quad	0x3febe82730c67169              # double 0.872089
	.quad	0x3fd4e43aa79bbadc              # double 0.32643
	.quad	0x3fdd3cddd6e04c06              # double 0.45684000000000002
	.quad	0x3fd39656eefa1e3f              # double 0.30605100000000002
	.quad	0x3fdf886162f166e0              # double 0.492699
	.quad	0x3fc2fb86f47b677f              # double 0.14830099999999999
	.quad	0x3fccaec8d5c74752              # double 0.22408400000000001
	.quad	0x3fc5c5260f5e41d5              # double 0.17007900000000001
	.quad	0x3fc6d5f138bcdff0              # double 0.17840400000000001
	.quad	0x3fb494d50ebaade6              # double 0.080395999999999995
	.quad	0x3fee811904b3c3e7              # double 0.95325899999999997
	.quad	0x3fefd5ae1cde5d18              # double 0.99483399999999999
	.quad	0x3fe2f6cce5f7403e              # double 0.59262700000000001
	.quad	0x3fed97353b4b2fa9              # double 0.92470799999999997
	.quad	0x3fefdcaf2d7f950c              # double 0.99568900000000004
	.quad	0x3fdea67e846a5d6c              # double 0.478912
	.quad	0x3fe3c7863beec398              # double 0.61810600000000004
	.quad	0x3fb1672324c83665              # double 0.067979999999999999
	.quad	0x3fd6aa4fca42aed1              # double 0.35414499999999999
	.quad	0x3fe5cd940789613d              # double 0.68134499999999998
	.quad	0x3fe8694467381d7e              # double 0.76285000000000003
	.quad	0x3fe5856e696a26e5              # double 0.67253799999999997
	.quad	0x3feb154434e3369c              # double 0.84634600000000004
	.quad	0x3fd1554fbdad7519              # double 0.27083200000000002
	.quad	0x3fe2550ca1cef241              # double 0.572882
	.quad	0x3fd900f345069a4e              # double 0.390683
	.quad	0x3fc4ed2cbea4ebdd              # double 0.16348799999999999
	.quad	0x3fe593c03bc4d22d              # double 0.67428600000000005
	.quad	0x3fcc36544fe36d22              # double 0.22040799999999999
	.quad	0x3fc2ee9dd7ecbb80              # double 0.14790700000000001
	.quad	0x3fef103c8e25c811              # double 0.97073200000000003
	.quad	0x3f9d2a62aa19439e              # double 0.028482
	.quad	0x3fed989bd8383ada              # double 0.92487900000000001
	.quad	0x3f9eb95e5aff2a17              # double 0.030003999999999999
	.quad	0x3fd29d7342edbb5a              # double 0.29086000000000001
	.quad	0x3fd34523f67f4dbe              # double 0.301095
	.quad	0x3fd0fff36ac64778              # double 0.26562200000000002
	.quad	0x3fc588ebcc6c54bd              # double 0.168241
	.quad	0x3fe95f3f961804da              # double 0.79287700000000005
	.quad	0x3fe33e8576cce5f7              # double 0.60138199999999997
	.quad	0x3fefda20ddc61954              # double 0.99537699999999995
	.quad	0x3fe26e58a32f4491              # double 0.57596999999999998
	.quad	0x3fac7b890d5a5b96              # double 0.055629999999999999
	.quad	0x3fd4e321a2e7f6f5              # double 0.32636300000000001
	.quad	0x3fd5bb83cf2cf95d              # double 0.33956999999999998
	.quad	0x3fd7cff21b3aeee9              # double 0.37206699999999998
	.quad	0x3fe88f2170931013              # double 0.76747200000000004
	.quad	0x3fa25d6bebe1650a              # double 0.035868999999999998
	.quad	0x3fd627d028a1dfb9              # double 0.34617999999999999
	.quad	0x3febfcb923a29c78              # double 0.87460000000000004
	.quad	0x3fedba83f4eca687              # double 0.92901800000000001
	.quad	0x3febe3a5c1c6088d              # double 0.87153899999999995
	.quad	0x3fe86bb1290257c9              # double 0.76314599999999999
	.quad	0x3fcc5ca29845dc83              # double 0.221577
	.quad	0x3fee1d084e831ad2              # double 0.94104399999999999
	.quad	0x3fe691eeaa6d2674              # double 0.705314
	.quad	0x3fdebd0e12e83a11              # double 0.48028900000000002
	.quad	0x3fcfc33721d53cde              # double 0.248145
	.quad	0x3fe4be48a58b3f64              # double 0.64822800000000003
	.quad	0x3fd59d0635a426bb              # double 0.33770899999999998
	.quad	0x3feb3ea91d9b1b7a              # double 0.85139900000000002
	.quad	0x3fe6cd5b6805a2d7              # double 0.71256799999999998
	.quad	0x3fe6e1a8262456f7              # double 0.71504599999999996
	.quad	0x3fd00e4da09cc31a              # double 0.25087300000000001
	.quad	0x3fe9cfd8f0c77dd8              # double 0.80662199999999995
	.quad	0x3fea608f21709310              # double 0.82428699999999999
	.quad	0x3fd87df19d66adb4              # double 0.382687
	.quad	0x3feafdcdf6987831              # double 0.84348199999999995
	.quad	0x3fd488765ba6efc3              # double 0.32082899999999998
	.quad	0x3fbfcee9dd7ecbb8              # double 0.124251
	.quad	0x3fe3305100a393ee              # double 0.59964799999999996
	.quad	0x3fead54fbdad7519              # double 0.83853900000000003
	.quad	0x3fc6f6e82949a565              # double 0.17940999999999999
	.quad	0x3f752d234eb9a177              # double 0.0051700000000000001
	.quad	0x3fe8ea077036c9c1              # double 0.77856800000000004
	.quad	0x3fe0497b7414a4d3              # double 0.50897000000000003
	.quad	0x3fe72bb6672fba02              # double 0.72408600000000001
	.quad	0x3fd01d041cc532a5              # double 0.25177100000000002
	.quad	0x3fc188e368f08462              # double 0.13699
	.quad	0x3fe4d6eefa1e3eaf              # double 0.65123699999999995
	.quad	0x3fd9d3c792d1287c              # double 0.40355099999999999
	.quad	0x3fce0a63305100a4              # double 0.23469200000000001
	.quad	0x3fb92135daad6020              # double 0.098163
	.quad	0x3fd8250b524399b3              # double 0.37726100000000001
	.quad	0x3fefe501e2584f4c              # double 0.99670499999999995
	.quad	0x3fee83e425aee632              # double 0.9536
	.quad	0x3fdb40746455eaee              # double 0.42580899999999999
	.quad	0x3fbfc77143393ab4              # double 0.124137
	.quad	0x3fdbe9ea14057082              # double 0.43615199999999998
	.quad	0x3fc9fc0096feb4a6              # double 0.20300299999999999
	.quad	0x3fd23a71151611ba              # double 0.28481699999999999
	.quad	0x3feb4f765fd8adac              # double 0.85345000000000004
	.quad	0x3fe52f1a9fbe76c9              # double 0.66200000000000003
	.quad	0x3fd71f9f01b866e4              # double 0.36130499999999999
	.quad	0x3febb4c7f3493858              # double 0.86581799999999998
	.quad	0x3fdaffac1d29dc72              # double 0.42185499999999998
	.quad	0x3fea44d87724fa8b              # double 0.82090399999999997
	.quad	0x3fefc4b6e935b91f              # double 0.99276299999999995
	.quad	0x3fd4b7baecd07853              # double 0.323714
	.quad	0x3fe7fc6759ab6d01              # double 0.74956100000000003
	.quad	0x3fdf9c7368ad6883              # double 0.49392399999999997
	.quad	0x3fbdd80e496ededb              # double 0.116578
	.quad	0x3fb3da72a7bd48cb              # double 0.077551999999999996
	.quad	0x3feeef049a9973da              # double 0.96667700000000001
	.quad	0x3fdc9817b95a2941              # double 0.44678299999999999
	.quad	0x3fd46cca2db61bb0              # double 0.31913999999999998
	.quad	0x3fc206a6e32e3822              # double 0.14082800000000001
	.quad	0x3fe8948dc11e42e1              # double 0.76813399999999998
	.quad	0x3fc776e6106ab14f              # double 0.18331600000000001
	.quad	0x3fbb0c564f97edc8              # double 0.105657
	.quad	0x3fc6bb341e14bdfd              # double 0.177588
	.quad	0x3fd7d2dcb1465e89              # double 0.37224499999999999
	.quad	0x3fe0a4dd2f1a9fbe              # double 0.52012499999999995
	.quad	0x3fea1d2391d57ffa              # double 0.81605700000000003
	.quad	0x3fe1a8f9f44d4456              # double 0.55187699999999995
	.quad	0x3fe0a9691a75cd0c              # double 0.52068000000000003
	.quad	0x3fca0c6b484d76ab              # double 0.20350399999999999
	.quad	0x3fd26a7ef9db22d1              # double 0.28775000000000001
	.quad	0x3fc827bf61aa3f03              # double 0.18871299999999999
	.quad	0x3fca14b599aa6091              # double 0.20375699999999999
	.quad	0x3fd46d698fe69271              # double 0.31917800000000002
	.quad	0x3feb6b0b7c3504c5              # double 0.85681700000000005
	.quad	0x3fe2c6f36ef80560              # double 0.58678600000000003
	.quad	0x3fe62b0a6fc58ab9              # double 0.69275399999999998
	.quad	0x3fe339baa1511e00              # double 0.60079700000000003
	.quad	0x3fd399bb2788db05              # double 0.30625799999999997
	.quad	0x3fe44903ea704bc2              # double 0.63391299999999995
	.quad	0x3fe32915379fa97e              # double 0.59876499999999999
	.quad	0x3fd6e09bb6aa4b99              # double 0.35745900000000003
	.quad	0x3fe0c55000c9539c              # double 0.52408600000000005
	.quad	0x3fefebfec13b9f12              # double 0.99755799999999994
	.quad	0x3f868cef672b8844              # double 0.011011
	.quad	0x3fc98ef34d6a161e              # double 0.19967499999999999
	.quad	0x3fc58a5482385404              # double 0.16828399999999999
	.quad	0x3fde6a2b1704ff43              # double 0.47522999999999999
	.quad	0x3fc2e6d15ad106ee              # double 0.14766899999999999
	.quad	0x3fee5883ba3443d4              # double 0.94830499999999995
	.quad	0x3fecef21f6cacd18              # double 0.90419099999999997
	.quad	0x3fef558644523f68              # double 0.97919
	.quad	0x3fc85e5f30e7ff58              # double 0.19037999999999999
	.quad	0x3fe03ccf28c79f66              # double 0.50742299999999996
	.quad	0x3fe783686a4ca4f4              # double 0.73479099999999997
	.quad	0x3fa297bfa4c61d86              # double 0.036313999999999999
	.quad	0x3fec90129cbab64a              # double 0.89258700000000002
	.quad	0x3fe824b9884c6a3c              # double 0.75448300000000001
	.quad	0x3faab3aabcd78c43              # double 0.052151999999999997
	.quad	0x3fecb0c23fab10ba              # double 0.89657699999999996
	.quad	0x3fd9c6088d6d3b6d              # double 0.40271200000000001
	.quad	0x3fe78676a7264a17              # double 0.73516400000000004
	.quad	0x3fe524f6598e10cf              # double 0.66076199999999996
	.quad	0x3fead113836a832c              # double 0.83802200000000004
	.quad	0x3fe13e0ded288ce7              # double 0.538825
	.quad	0x3feec1c3efae7925              # double 0.96115300000000003
	.quad	0x3feba3ec02f2f987              # double 0.86375999999999997
	.quad	0x3f96965f5275ee9a              # double 0.022058000000000001
	.quad	0x3fee92c8c5004fb1              # double 0.95541799999999999
	.quad	0x3fe90a393ee5eedd              # double 0.78249800000000003
	.quad	0x3fa4751ce28ed5f1              # double 0.039955999999999998
	.quad	0x3fee2137f38c5437              # double 0.94155500000000003
	.quad	0x3fdc379314445aa3              # double 0.44089200000000001
	.quad	0x3fec1157abb8800f              # double 0.87711700000000004
	.quad	0x3fb1f77292c49342              # double 0.070181999999999994
	.quad	0x3fd59f666234a87e              # double 0.33785399999999999
	.quad	0x3fc434b0e1b4bb5e              # double 0.157858
	.quad	0x3fdfc7da1ec4e725              # double 0.49657299999999999
	.quad	0x3fe75718eb895076              # double 0.72938199999999997
	.quad	0x3fdff687b139c94f              # double 0.49942199999999998
	.quad	0x3fe3fc5260f5e41d              # double 0.62455099999999997
	.quad	0x3feb37e4de3b8a1a              # double 0.85057300000000002
	.quad	0x3fc7439de481f538              # double 0.181751
	.quad	0x3fdbed45e9185cee              # double 0.43635699999999999
	.quad	0x3fc66b2f23033a47              # double 0.175146
	.quad	0x3fe056e696a26e54              # double 0.51060799999999995
	.quad	0x3fc72b884406c00e              # double 0.18101600000000001
	.quad	0x3fdbc8a7a41e57da              # double 0.43412200000000001
	.quad	0x3fe05590c0ad03da              # double 0.51044500000000004
	.quad	0x3fe2e581cf7878b8              # double 0.59051600000000004
	.quad	0x3fe239884c6a3bde              # double 0.569523
	.quad	0x3fda30c23fab10ba              # double 0.40922599999999998
	.quad	0x3fe26d9dfdac68a9              # double 0.57588099999999998
	.quad	0x3fd31fc08fa7a850              # double 0.298813
	.quad	0x3fe642528ae74f2f              # double 0.69559599999999999
	.quad	0x3fe9d710880d801b              # double 0.80750299999999997
	.quad	0x3fd97c02afdda8bd              # double 0.39819399999999999
	.quad	0x3fd054bcf0b6b6e1              # double 0.25517200000000001
	.quad	0x3fc718d25edd0529              # double 0.18044499999999999
	.quad	0x3fcb2a9d627bf61b              # double 0.21223800000000001
	.quad	0x3fe28509bf9c62a2              # double 0.57874000000000003
	.quad	0x3fea9de050374ff8              # double 0.83177199999999996
	.quad	0x3fe5b986338b47c7              # double 0.67889699999999997
	.quad	0x3fe4fb5aea3161a2              # double 0.65568300000000002
	.quad	0x3fed8ab0c88a47ed              # double 0.92318
	.quad	0x3fecc623d0bfa094              # double 0.89918699999999995
	.quad	0x3fe69a176ddaceee              # double 0.70630999999999999
	.quad	0x3fb85069a4df47fa              # double 0.094977000000000005
	.quad	0x3feb3b81b64e0547              # double 0.85101400000000005
	.quad	0x3fe03a3ca7503b82              # double 0.50710900000000003
	.quad	0x3fe9d6605ee568a5              # double 0.807419
	.quad	0x3fe669c66d373b00              # double 0.70041200000000003
	.quad	0x3fde6f6512a94ff0              # double 0.475549
	.quad	0x3fe99a1986b9c305              # double 0.80006100000000002
	.quad	0x3fd20691ea78af3e              # double 0.28165099999999998
	.quad	0x3fe94845132f87ad              # double 0.790072
	.quad	0x3fb12be48a58b3f6              # double 0.067075999999999997
	.quad	0x3fce2a3486f049aa              # double 0.23566300000000001
	.quad	0x3fde7e77d523b363              # double 0.47646899999999998
	.quad	0x3fd13fee2c98e53f              # double 0.26952700000000002
	.quad	0x3fd6fe7e1fc08fa8              # double 0.35928300000000002
	.quad	0x3fc849667b5f1bef              # double 0.18973999999999999
	.quad	0x3feb56c0d6f544bb              # double 0.85433999999999999
	.quad	0x3fd5512ec6bce853              # double 0.33307999999999999
	.quad	0x3feb67f2c3009b30              # double 0.85643899999999995
	.quad	0x3fc98b60f1b25f63              # double 0.19956599999999999
	.quad	0x3febca66559f6ec6              # double 0.86845700000000003
	.quad	0x3fe748ecd8dbcec8              # double 0.72765199999999997
	.quad	0x3fedd9bc33f85511              # double 0.93282900000000002
	.quad	0x3f9b6ae7d566cf42              # double 0.026775
	.quad	0x3fe260fe47991bc5              # double 0.57433999999999996
	.quad	0x3fe01ff2e48e8a72              # double 0.50390000000000001
	.quad	0x3fcbfdc5931ca7d6              # double 0.21868199999999999
	.quad	0x3fe57e4ffc9795b3              # double 0.67166899999999996
	.quad	0x3feea6bf8769ec2d              # double 0.95785500000000001
	.quad	0x3febe49906cca2db              # double 0.87165499999999996
	.quad	0x3fd836933a0407cc              # double 0.37833099999999997
	.quad	0x3fd0c08fa7a85016              # double 0.26175300000000001
	.quad	0x3fe4fb04ee7c49fd              # double 0.65564199999999995
	.quad	0x3fb5a72a7bd48cb5              # double 0.084582000000000004
	.quad	0x3fd23e5b8561d430              # double 0.28505599999999998
	.quad	0x3fc1899392189bd8              # double 0.13701099999999999
	.quad	0x3fb219da9c99285b              # double 0.070707000000000006
	.quad	0x3fee01a5870da5db              # double 0.93770100000000001
	.quad	0x3feccaec8d5c7475              # double 0.89977099999999999
	.quad	0x3fe50ebcc6c54bcf              # double 0.658049
	.quad	0x3fe21e0828c36da8              # double 0.56616599999999995
	.quad	0x3fd3a9b499d0203e              # double 0.30723299999999998
	.quad	0x3fd497a24894c448              # double 0.32175500000000001
	.quad	0x3fe488e9b38d60a6              # double 0.64171299999999998
	.quad	0x3fed0d3ae685db77              # double 0.90786500000000003
	.quad	0x3fe161650a45d420              # double 0.54313900000000004
	.quad	0x3fe7d9a30984e400              # double 0.74531700000000001
	.quad	0x3fe8907d912556d2              # double 0.76763800000000004
	.quad	0x3fea0b32ce89656f              # double 0.81386700000000001
	.quad	0x3fa7ff36ac647779              # double 0.046869000000000001
	.quad	0x3fd52cadddf43c7d              # double 0.33085199999999998
	.quad	0x3fd9c4b09e98dcdb              # double 0.40262999999999999
	.quad	0x3fdf8bd230b9dc2f              # double 0.49290899999999999
	.quad	0x3fe28b9baa1511e0              # double 0.579542
	.quad	0x3fe5e3c536d655e3              # double 0.68405400000000005
	.quad	0x3fbc60ed80a17b0f              # double 0.11085399999999999
	.quad	0x3fe85193708aac97              # double 0.75995800000000002
	.quad	0x3fe07112fd32c626              # double 0.51380300000000001
	.quad	0x3fe70b1dd5d3dc8c              # double 0.72010700000000005
	.quad	0x3fb472085b18548b              # double 0.079865000000000005
	.quad	0x3fe74065b63d3e4f              # double 0.72661100000000001
	.quad	0x3fdeb21815a07b35              # double 0.47961999999999999
	.quad	0x3fe6cf6be37de93a              # double 0.71282000000000001
	.quad	0x3fe1b1ad2135daad              # double 0.55293899999999996
	.quad	0x3fe57789a459103d              # double 0.67084200000000005
	.quad	0x3fd46049ecb31c22              # double 0.31837700000000002
	.quad	0x3fef1813879c4114              # double 0.97168900000000002
	.quad	0x3fec2f5126634118              # double 0.880776
	.quad	0x3fe2e3305100a394              # double 0.59023300000000001
	.quad	0x3feecfca42aed139              # double 0.96286499999999997
	.quad	0x3fdaa57eaa2a0a96              # double 0.41635100000000003
	.quad	0x3fb9eeed8904f6e0              # double 0.101302
	.quad	0x3fec24b33daf8df8              # double 0.87948000000000004
	.quad	0x3fedb93682730c67              # double 0.92885899999999999
	.quad	0x3fb8ac9f2fdb8fde              # double 0.096383999999999997
	.quad	0x3fe75cc20d5629d8              # double 0.73007299999999997
	.quad	0x3fe87cf1c3265ade              # double 0.76525200000000004
	.quad	0x3fe04c942d490e67              # double 0.50934800000000002
	.quad	0x3fe7291b823c85c2              # double 0.72376799999999997
	.quad	0x3febce52deca2553              # double 0.86893600000000004
	.quad	0x3febe9531550ca1d              # double 0.87223200000000001
	.quad	0x3fe1016aceaaf35e              # double 0.53142299999999998
	.quad	0x3fe6f69014b599aa              # double 0.71759799999999996
	.quad	0x3feb7cb923a29c78              # double 0.85897500000000004
	.quad	0x3fc51b584b1ab085              # double 0.16489699999999999
	.quad	0x3fe8c9d9d3458cd2              # double 0.77464
	.quad	0x3fc153cddd6e04c0              # double 0.13536999999999999
	.quad	0x3fec2b0856e696a2              # double 0.88025299999999995
	.quad	0x3fbe77c45cbbc2b9              # double 0.119015
	.quad	0x3fd3fbb9496249a1              # double 0.31223899999999999
	.quad	0x3fd7eb24a6a875d5              # double 0.37372699999999998
	.quad	0x3fcdcb2d905c0336              # double 0.232763
	.quad	0x3fe7c77ff151e753              # double 0.74310299999999996
	.quad	0x3fefcaa326e11559              # double 0.99348599999999998
	.quad	0x3fd7563ed0f62739              # double 0.36463899999999999
	.quad	0x3fecfb7c7820a30e              # double 0.90569900000000003
	.quad	0x3fe87eae5bc87db3              # double 0.76546400000000003
	.quad	0x3fe378f47304039b              # double 0.60851500000000003
	.quad	0x3fe79e4712e40853              # double 0.73807100000000003
	.quad	0x3fdfea960b6f9fcb              # double 0.498693
	.quad	0x3fe101ba7fc32ebe              # double 0.53146099999999996
	.quad	0x3febfa3fcc9ea9a4              # double 0.87429800000000001
	.quad	0x3fd98c8abd5dc400              # double 0.39920299999999997
	.quad	0x3fecae1049235f81              # double 0.89624800000000004
	.quad	0x3fe461e2de870974              # double 0.63694899999999999
	.quad	0x3fea333764f11b61              # double 0.81875200000000004
	.quad	0x3fd2685553ef6b5d              # double 0.28761799999999998
	.quad	0x3fd1a9a8049667b6              # double 0.27598
	.quad	0x3fe7e2bae03b3e9a              # double 0.74642699999999995
	.quad	0x3fc5c5692b3cc4ac              # double 0.17008699999999999
	.quad	0x3feccae429e0a41a              # double 0.89976699999999998
	.quad	0x3fd751116a8b8f15              # double 0.36432300000000001
	.quad	0x3fe4d976ff3ade22              # double 0.65154599999999996
	.quad	0x3fed66687f455a7d              # double 0.91875099999999998
	.quad	0x3fd1e18266772d5e              # double 0.279389
	.quad	0x3fe24a25529fe005              # double 0.57155100000000003
	.quad	0x3fc27bdcf0307f24              # double 0.14440500000000001
	.quad	0x3feaef60e0eb67c3              # double 0.84172100000000005
	.quad	0x3fda660e51d25aab              # double 0.41247899999999998
	.quad	0x3fefeb484d76ab58              # double 0.99747099999999999
	.quad	0x3feb569f4906034f              # double 0.85432399999999997
	.quad	0x3fc26a7ef9db22d1              # double 0.143875
	.quad	0x3fd480bed740c415              # double 0.32035799999999998
	.quad	0x3fd81d96e9bbf0dc              # double 0.37680599999999997
	.quad	0x3fec49c90c4dec1c              # double 0.88400699999999998
	.quad	0x3fda72e275ab7dc8              # double 0.41326200000000002
	.quad	0x3fdfe4649906cca3              # double 0.49831500000000001
	.quad	0x3fc2e23af31b152f              # double 0.14752899999999999
	.quad	0x3fb718a86d71f362              # double 0.090219999999999994
	.quad	0x3fe86b356da0168b              # double 0.76308699999999996
	.quad	0x3feb85caafbc1ace              # double 0.86008200000000001
	.quad	0x3fd11700cd855971              # double 0.26702900000000002
	.quad	0x3fe500b88ca3e7d1              # double 0.65633799999999998
	.quad	0x3fd73ba3443d46b2              # double 0.36301499999999998
	.quad	0x3feac9731098d478              # double 0.83709100000000003
	.quad	0x3feca85ec3dab5c4              # double 0.89555300000000004
	.quad	0x3fc847a17f4128bf              # double 0.18968599999999999
	.quad	0x3fc5d1b2e59af9ec              # double 0.170462
	.quad	0x3fda82278d0cc35d              # double 0.41419400000000001
	.quad	0x3fc8578e5c4eb570              # double 0.19017200000000001
	.quad	0x3fea5b8130164841              # double 0.82367000000000001
	.quad	0x3fe076dfc5cdd50b              # double 0.51451100000000005
	.quad	0x3fd3eff5c6c11a11              # double 0.31152099999999999
	.quad	0x3fc1a1db877ab325              # double 0.13775200000000001
	.quad	0x3fd2b81f969e3c97              # double 0.29248800000000003
	.quad	0x3fe68c8abd5dc400              # double 0.70465599999999995
	.quad	0x3feee71ac14c660a              # double 0.96571099999999999
	.quad	0x3fe9307f23cc8de3              # double 0.78717000000000004
	.quad	0x3fed186fcdee34fc              # double 0.90923299999999995
	.quad	0x3fd695bbbe878fac              # double 0.35288900000000001
	.quad	0x3fd868986fcdee35              # double 0.381384
	.quad	0x3fee6e9ff0cbaf96              # double 0.95100399999999996
	.quad	0x3feabed959a30985              # double 0.83579700000000001
	.quad	0x3fd780ae10492360              # double 0.36722900000000003
	.quad	0x3f9e718a86d71f36              # double 0.029729999999999999
	.quad	0x3fd16d698fe69271              # double 0.27230300000000002
	.quad	0x3fe0d350092ccf6c              # double 0.52579500000000001
	.quad	0x3fe41c475e6362a6              # double 0.62845200000000001
	.quad	0x3fa45c78a6dacabc              # double 0.039767999999999998
	.quad	0x3fe8e9c4545846e9              # double 0.77853600000000001
	.quad	0x3fd8721d53cddd6e              # double 0.381965
	.quad	0x3fe550bfa0945f9e              # double 0.666107
	.quad	0x3fefd783dff3f0fe              # double 0.995058
	.quad	0x3fba7d77fae3608d              # double 0.103477
	.quad	0x3fe796d6dc1a47aa              # double 0.73716300000000001
	.quad	0x3fe64a2120e1f7d7              # double 0.69654899999999997
	.quad	0x3fdd83ad9f0a1be3              # double 0.46116200000000002
	.quad	0x3fea4610f0e90bc8              # double 0.82105300000000003
	.quad	0x3fefaeb80ecfa69c              # double 0.99007800000000001
	.quad	0x3fe29b413986338b              # double 0.58145199999999997
	.quad	0x3fed8153bd167664              # double 0.92203699999999999
	.quad	0x3fdfefc7a398201d              # double 0.49901000000000001
	.quad	0x3fe0eb2f23033a47              # double 0.52870899999999998
	.quad	0x3feacb48d3ae685e              # double 0.83731500000000003
	.quad	0x3fef959817b95a29              # double 0.98701099999999997
	.quad	0x3fefe086bdf4c2b5              # double 0.99615799999999998
	.quad	0x3fe40a137f38c543              # double 0.62622999999999995
	.quad	0x3fe6a556d19dece5              # double 0.70768299999999995
	.quad	0x3fc13d859c8c9321              # double 0.13469
	.quad	0x3fba324c8366516e              # double 0.10233
	.quad	0x3fb8ad794a6eb91b              # double 0.096396999999999997
	.quad	0x3feaa31a4bdba0a5              # double 0.83240999999999998
	.quad	0x3f9ee30caa326e11              # double 0.030162999999999999
	.quad	0x3fd2954eb13dfb0d              # double 0.29036299999999998
	.quad	0x3fdd5bfad2999568              # double 0.45873900000000001
	.quad	0x3fe6052502eec7c9              # double 0.68812799999999996
	.quad	0x3fe28795f676ea42              # double 0.57905099999999998
	.quad	0x3fb61ccd96206855              # double 0.086376999999999995
	.quad	0x3fc7b30f8c64fdb1              # double 0.18515200000000001
	.quad	0x3fe4c5bf26f1dc51              # double 0.64913900000000002
	.quad	0x3fef0b34e7685986              # double 0.97011800000000004
	.quad	0x3fef029f16b11c6d              # double 0.96906999999999998
	.quad	0x3fe0ec743201040c              # double 0.528864
	.quad	0x3fe39a62ed352221              # double 0.61259600000000003
	.quad	0x3fdad434a01abd1b              # double 0.41920200000000002
	.quad	0x3fa641b328b6d86f              # double 0.043470000000000002
	.quad	0x3feb46aa087ca644              # double 0.85237600000000002
	.quad	0x3fd5da7b0b391926              # double 0.34145999999999999
	.quad	0x3fd0da5119ce075f              # double 0.26332499999999998
	.quad	0x3fd69e7fb267c6b9              # double 0.35342400000000002
	.quad	0x3fe27a0d77b7c782              # double 0.577399
	.quad	0x3fd5f4b61fe21d97              # double 0.343061
	.quad	0x3fe364b87bdcf030              # double 0.60604499999999994
	.quad	0x3fed7da1ec4e7254              # double 0.92158600000000001
	.quad	0x3feaf585be1a8262              # double 0.84247099999999997
	.quad	0x3fe8126202539757              # double 0.75224400000000002
	.quad	0x3fdf6277c45cbbc3              # double 0.49038500000000002
	.quad	0x3fecebd09e12a51e              # double 0.90378599999999998
	.quad	0x3feea7d88c1db014              # double 0.95798899999999997
	.quad	0x3fec3c27631b584b              # double 0.88234299999999999
	.quad	0x3f79dece5710880e              # double 0.0063160000000000004
	.quad	0x3fdf3b81b64e0547              # double 0.48800700000000002
	.quad	0x3fe238194c016052              # double 0.56934799999999997
	.quad	0x3fee99524bfd2e94              # double 0.95621599999999995
	.quad	0x3fed2e1262025397              # double 0.91187399999999996
	.quad	0x3fc8de33269df97b              # double 0.19428100000000001
	.quad	0x3fdb96d0917d6b66              # double 0.43108000000000002
	.quad	0x3fee24af0bf1a5ca              # double 0.94197799999999998
	.quad	0x3fc9804d98394749              # double 0.19922799999999999
	.quad	0x3fe04a4095f2452c              # double 0.50906399999999996
	.quad	0x3fd0df0d413122b8              # double 0.26361400000000001
	.quad	0x3fe7e88df37329c3              # double 0.74713799999999997
	.quad	0x3feb741f212d7732              # double 0.85792500000000005
	.quad	0x3fe5ff7be121ee67              # double 0.68743699999999996
	.quad	0x3fe62009f623076c              # double 0.691411
	.quad	0x3fee515054ac29bf              # double 0.94742599999999999
	.quad	0x3feb291105e1c151              # double 0.84876300000000005
	.quad	0x3feadccc89b0ee4a              # double 0.839453
	.quad	0x3fb3952d234eb9a1              # double 0.076494999999999994
	.quad	0x3fd76c4827b6fe2e              # double 0.36598399999999998
	.quad	0x3f93354c122749f1              # double 0.018758
	.quad	0x3fe7589efd86a8fc              # double 0.72956799999999999
	.quad	0x3fe2020e6299524c              # double 0.562751
	.quad	0x3fe4fe75bc44bf4d              # double 0.65606200000000003
	.quad	0x3f966a11ec918e32              # double 0.021888999999999999
	.quad	0x3fc7da836eb4e981              # double 0.18635599999999999
	.quad	0x3fe0141e9af5ba2c              # double 0.50245600000000001
	.quad	0x3fe6accd530489d2              # double 0.70859399999999995
	.quad	0x3fa1f72f76e6106b              # double 0.035089000000000002
	.quad	0x3fd98f32378ab0c9              # double 0.39936500000000003
	.quad	0x3febf405f6ba0621              # double 0.87353800000000004
	.quad	0x3fc02a6f3f52fc26              # double 0.12629499999999999
	.quad	0x3fe18e496ededaec              # double 0.54861899999999997
	.quad	0x3fec1c4da9003eea              # double 0.87845499999999999
	.quad	0x3fd4ca46e08f2171              # double 0.32484600000000002
	.quad	0x3fd9e09bb6aa4b99              # double 0.40433400000000003
	.quad	0x3fd5d8409e55c0fd              # double 0.34132400000000002
	.quad	0x3feda49c2c1b10fd              # double 0.92634399999999995
	.quad	0x3fe8463065f9591d              # double 0.75856800000000002
	.quad	0x3fc45b8561d4306e              # double 0.15904299999999999
	.quad	0x3fdea22f6a50d6b2              # double 0.47864899999999999
	.quad	0x3fe5c9b845564b66              # double 0.68087399999999998
	.quad	0x3fe1fc17a89331a1              # double 0.56202300000000005
	.quad	0x3fdba71de69ad42c              # double 0.43207499999999999
	.quad	0x3fe38c4156e264e5              # double 0.61087100000000005
	.quad	0x3fd0eb3dd11be6e6              # double 0.26435799999999998
	.quad	0x3fe053f7ced91687              # double 0.51024999999999998
	.quad	0x3fe9f85b5b70691f              # double 0.81156700000000004
	.quad	0x3fc41c044284dfce              # double 0.15710499999999999
	.quad	0x3fefe9270b06c43f              # double 0.99721099999999995
	.quad	0x3fddfc1df3300de5              # double 0.46851300000000001
	.quad	0x3fd97fbefd00713f              # double 0.398422
	.quad	0x3fd6613d31b9b670              # double 0.34968500000000002
	.quad	0x3fc3b41bfbdf090f              # double 0.15393399999999999
	.quad	0x3fd9ccf6be37de94              # double 0.40313500000000002
	.quad	0x3fb48feac42e989a              # double 0.080321000000000003
	.quad	0x3fe8face67d77fae              # double 0.78061599999999998
	.quad	0x3fada98676a7264a              # double 0.057933999999999999
	.quad	0x3fe599ae924f227d              # double 0.67501
	.quad	0x3fc9c1df3300de4c              # double 0.20122899999999999
	.quad	0x3fe2ce28ed5f138c              # double 0.58766600000000002
	.quad	0x3fdb8b4bf8fcd680              # double 0.43037700000000001
	.quad	0x3fe65df86e3b46fe              # double 0.69897100000000001
	.quad	0x3fda7d88c1db0143              # double 0.413912
	.quad	0x3fdd8bb0a2ca9ac3              # double 0.46165099999999998
	.quad	0x3fe277164c729f5a              # double 0.57703700000000002
	.quad	0x3fda0d73860999dd              # double 0.40707100000000002
	.quad	0x3feb336bd2b6f199              # double 0.85002699999999998
	.quad	0x3fdb8650e779207d              # double 0.43007299999999998
	.quad	0x3fc2bead4f5903a7              # double 0.14644399999999999
	.quad	0x3fe95fa871a3b14b              # double 0.79292700000000005
	.quad	0x3fe043ce2089e343              # double 0.50827699999999998
	.quad	0x3fe5f94c87980f56              # double 0.68668200000000001
	.quad	0x3fefaf1cb89d6adf              # double 0.99012599999999995
	.quad	0x3febeb1c432ca57a              # double 0.87244999999999995
	.quad	0x3fd3a187a4a48f97              # double 0.30673400000000001
	.quad	0x3fec7bc3c5bd0e13              # double 0.89010800000000001
	.quad	0x3fea30d0edc3bd5a              # double 0.81845900000000005
	.quad	0x3fa1d7fd82773e25              # double 0.034851
	.quad	0x3fcbea8112ba16e8              # double 0.21809400000000001
	.quad	0x3fe78fc2eba27aea              # double 0.73629900000000004
	.quad	0x3fea5b940fecdd0e              # double 0.82367900000000005
	.quad	0x3fef9ed7c6fbd274              # double 0.98814000000000001
	.quad	0x3fca56eefa1e3eaf              # double 0.20577799999999999
	.quad	0x3fc41dda059a73b4              # double 0.157161
	.quad	0x3fefd61f5be5d9e4              # double 0.99488799999999999
	.quad	0x3fa4271fff79c843              # double 0.039361
	.quad	0x3fd1b4677b395c42              # double 0.27663599999999999
	.quad	0x3fe2a29c779a6b51              # double 0.58235000000000003
	.quad	0x3fd4d2fe3f359ff5              # double 0.325378
	.quad	0x3fc96b76709fa54c              # double 0.19859199999999999
	.quad	0x3fc8cc814d72799a              # double 0.193741
	.quad	0x3fe804295a6c5d20              # double 0.75050799999999995
	.quad	0x3fdd10c2c5e2cdc0              # double 0.454148
	.quad	0x3fc2de97d06bbdbe              # double 0.14741799999999999
	.quad	0x3fdc13836a832b99              # double 0.438691
	.quad	0x3fa1dc93ea2d2fe4              # double 0.034886
	.quad	0x3fe2012599ed7c70              # double 0.56264000000000003
	.quad	0x3fdde8e60807357e              # double 0.46733999999999998
	.quad	0x3fda34f3fd933e36              # double 0.40948200000000001
	.quad	0x3fb66c2acb85a4f0              # double 0.087587999999999999
	.quad	0x3fcc083126e978d5              # double 0.219
	.quad	0x3fc5c8c9320d9946              # double 0.17019000000000001
	.quad	0x3fe2fe889c1b5419              # double 0.59357099999999996
	.quad	0x3fd7ee6fb4c3c18b              # double 0.37392799999999998
	.quad	0x3fd6c1b97353b4b3              # double 0.355574
	.quad	0x3fdfe5082cf52b91              # double 0.49835400000000002
	.quad	0x3fc9521144cbe1eb              # double 0.19781699999999999
	.quad	0x3fc007a28bb0a2cb              # double 0.12523300000000001
	.quad	0x3fc42ab25b317efe              # double 0.157553
	.quad	0x3fefd30270f38822              # double 0.99450799999999995
	.quad	0x3fd142b734b51373              # double 0.26969700000000002
	.quad	0x3fe333d6c7219221              # double 0.600078
	.quad	0x3fd6403dddb1209f              # double 0.34767100000000001
	.quad	0x3fc8fffbce4217d3              # double 0.19531200000000001
	.quad	0x3fe5395c42203600              # double 0.66325199999999995
	.quad	0x3fe40f57f737da62              # double 0.62687300000000001
	.quad	0x3fcb34e7685985ad              # double 0.21255199999999999
	.quad	0x3fe6fdd00f776c48              # double 0.71848299999999998
	.quad	0x3fb079d4d834091c              # double 0.064359
	.quad	0x3fea28eb463497b7              # double 0.81749499999999997
	.quad	0x3fde71da37ef5a96              # double 0.47569899999999998
	.quad	0x3fc397edc7ef177a              # double 0.15307399999999999
	.quad	0x3fe570e0a84be404              # double 0.67002899999999999
	.quad	0x3fe41bcfd4bf0996              # double 0.62839500000000004
	.quad	0x3fda5e02ea960b70              # double 0.41198800000000002
	.quad	0x3fef3f5946c332f0              # double 0.97648299999999999
	.quad	0x3fe96b18116ebd4d              # double 0.794323
	.quad	0x3fea437e6f71a7e3              # double 0.820739
	.quad	0x3fde672756861e93              # double 0.47504600000000002
	.quad	0x3fe93f2f55582129              # double 0.78896299999999997
	.quad	0x3fc0e50c5eb313be              # double 0.13199
	.quad	0x3fe0ee807bbb6241              # double 0.52911399999999997
	.quad	0x3f8b17481b21c476              # double 0.013228
	.quad	0x3fd427b6fe2e6ea8              # double 0.31492399999999998
	.quad	0x3fea453d20f2becf              # double 0.82095200000000002
	.quad	0x3fef77ee4e26d480              # double 0.98338999999999999
	.quad	0x3fd89791819d2392              # double 0.38425100000000001
	.quad	0x3fb6ec0724b76f6d              # double 0.089538999999999994
	.quad	0x3fe6d04a2fcefaa4              # double 0.71292599999999995
	.quad	0x3fed616f86a09891              # double 0.91814399999999996
	.quad	0x3fcb932d6ece13f5              # double 0.21542900000000001
	.quad	0x3fd64ea8da7f3cf7              # double 0.348551
	.quad	0x3fe77b71fbc5de9c              # double 0.733819
	.quad	0x3fa23a29c779a6b5              # double 0.0356
	.quad	0x3fe13152f3c2dadc              # double 0.53727100000000005
	.quad	0x3fec255b035bd513              # double 0.87956000000000001
	.quad	0x3fe56c3547e06962              # double 0.66945900000000003
	.quad	0x3fd4fe8ee6b8305e              # double 0.32803700000000002
	.quad	0x3fc43e74afd54541              # double 0.15815599999999999
	.quad	0x3fed88919ef954eb              # double 0.92292099999999999
	.quad	0x3fe58f3cb3e5753a              # double 0.67373499999999997
	.quad	0x3fd975e6362a5e78              # double 0.39782099999999998
	.quad	0x3fef2ac753e707e1              # double 0.97397199999999994
	.quad	0x3fd5cc2d6a9c560c              # double 0.34058699999999997
	.quad	0x3fe2e44d87724fa9              # double 0.59036900000000003
	.quad	0x3fea29e6eeb70260              # double 0.81761499999999998
	.quad	0x3fe49a75cd0bb6ed              # double 0.64385499999999996
	.quad	0x3fbdf56a7ac81d3b              # double 0.11702600000000001
	.quad	0x3fb5dadfb506dd6a              # double 0.085371000000000002
	.quad	0x3fe43cf0b6b6e0d2              # double 0.63243899999999997
	.quad	0x3fed010624dd2f1b              # double 0.90637500000000004
	.quad	0x3fe900c521dda05a              # double 0.78134400000000004
	.quad	0x3fd5e56473471f79              # double 0.34212599999999999
	.quad	0x3fee6933a0407cc8              # double 0.95034200000000002
	.quad	0x3fcb7204295a6c5d              # double 0.214417
	.quad	0x3fe3e1cbccf28c7a              # double 0.621313
	.quad	0x3fe39ff0cbaf965b              # double 0.61327399999999999
	.quad	0x3fc721709310129d              # double 0.18070800000000001
	.quad	0x3fe0183f91e646f1              # double 0.50295999999999996
	.quad	0x3fdb3636f3b213e4              # double 0.42518400000000001
	.quad	0x3fceb2e1693c03bc              # double 0.23983399999999999
	.quad	0x3fcddd334c5da6a4              # double 0.23331299999999999
	.quad	0x3fe175818c5c9a35              # double 0.54559400000000002
	.quad	0x3fe19e9d0e991ff7              # double 0.55061199999999999
	.quad	0x3faadfb506dd69d3              # double 0.052488
	.quad	0x3fc9eff1950331e4              # double 0.20263500000000001
	.quad	0x3fb255c0fcb4f1e5              # double 0.071621000000000004
	.quad	0x3fe907a8d64d7f0f              # double 0.78218500000000002
	.quad	0x3fd9495e17e34b94              # double 0.39510299999999998
	.quad	0x3fda6ad2dcb1465f              # double 0.41277000000000003
	.quad	0x3fecd0f6273929ed              # double 0.90050799999999998
	.quad	0x3feb3b8800eae18b              # double 0.85101700000000002
	.quad	0x3fe873fb7a5f41af              # double 0.764158
	.quad	0x3fd133f85510d38d              # double 0.26879700000000001
	.quad	0x3fa2c2bd7f51efb7              # double 0.036642000000000001
	.quad	0x3fe74f5903a7546d              # double 0.72843599999999997
	.quad	0x3faa1a0cf1800a7c              # double 0.050979999999999998
	.quad	0x3fd8878fabda0dfe              # double 0.383274
	.quad	0x3fb34f722e1ac57e              # double 0.075430999999999998
	.quad	0x3fd0d8c2a454de7f              # double 0.26323000000000002
	.quad	0x3fe43eb18116ebd5              # double 0.63265300000000002
	.quad	0x3fe8281ba7fc32ec              # double 0.75489600000000001
	.quad	0x3fde3e468cac4b4d              # double 0.472551
	.quad	0x3fd516c61522a6f4              # double 0.329515
	.quad	0x3feddc2b0ea18373              # double 0.93312600000000001
	.quad	0x3fe9fd7e45803cd1              # double 0.81219399999999997
	.quad	0x3fc3da597d49d7ba              # double 0.15510099999999999
	.quad	0x3fe3396f21f6cacd              # double 0.60076099999999999
	.quad	0x3fe5a8112ba16e7a              # double 0.67676599999999998
	.quad	0x3fa226a22b3892ef              # double 0.035451000000000003
	.quad	0x3fef4fb1183b6028              # double 0.97847799999999995
	.quad	0x3fcee2c12ad81adf              # double 0.24129500000000001
	.quad	0x3fe90bbf50e34763              # double 0.78268400000000005
	.quad	0x3fc97b395c422036              # double 0.199073
	.quad	0x3fe99ca9ef5232d3              # double 0.80037400000000003
	.quad	0x3fed5a35d67ba238              # double 0.91726200000000002
	.quad	0x3fcbd27c39368273              # double 0.217361
	.quad	0x3fe4c4aa53fc0097              # double 0.649007
	.quad	0x3fe37b9e060fe47a              # double 0.60884000000000005
	.quad	0x3feda0e6299524c0              # double 0.92589100000000001
	.quad	0x3fec364bec679cc7              # double 0.88162799999999997
	.quad	0x3fed335d249e44fa              # double 0.91252
	.quad	0x3fad44567125dd09              # double 0.057161999999999998
	.quad	0x3fc49a9973d9ec70              # double 0.160968
	.quad	0x3fda68a0d349be90              # double 0.412636
	.quad	0x3fdef85942917508              # double 0.483908
	.quad	0x3fe103a7546d3f9e              # double 0.53169599999999995
	.quad	0x3feb7e974a3400b9              # double 0.85920300000000005
	.quad	0x3fd6105e1c15097d              # double 0.34474900000000003
	.quad	0x3fe969e1b089a027              # double 0.79417499999999996
	.quad	0x3fd532db1e9f2778              # double 0.331229
	.quad	0x3fde45f9df548ece              # double 0.47302100000000002
	.quad	0x3fe7a94dd72367e4              # double 0.73941699999999999
	.quad	0x3fc7f972474538ef              # double 0.18729999999999999
	.quad	0x3fc21743e963dc48              # double 0.14133499999999999
	.quad	0x3febe1719f7f8ca8              # double 0.87126999999999999
	.quad	0x3fd2c70c996b7671              # double 0.29339900000000002
	.quad	0x3fe70b2a6b0d9514              # double 0.720113
	.quad	0x3fc001cd5f99c38b              # double 0.125055
	.quad	0x3fc4a2d2fe3f35a0              # double 0.161219
	.quad	0x3fd175cd0bb6ed67              # double 0.27281499999999997
	.quad	0x3fed0811b1d92b80              # double 0.90723500000000001
	.quad	0x3fe29728a6117721              # double 0.58095200000000002
	.quad	0x3fe2466f5019f3c7              # double 0.57109799999999999
	.quad	0x3fc0cfa69be09bb7              # double 0.13133700000000001
	.quad	0x3faf9d2bf5515055              # double 0.061746000000000002
	.quad	0x3fe9a86b59146e4c              # double 0.80180899999999999
	.quad	0x3fd9c58255b035bd              # double 0.40267999999999998
	.quad	0x3fede6a337a80cfa              # double 0.93440400000000001
	.quad	0x3fd2fecdd0d8cb08              # double 0.29680200000000001
	.quad	0x3fe96d330941c821              # double 0.79457999999999995
	.quad	0x3fc7891e215336df              # double 0.18387200000000001
	.quad	0x3fa70fe047d3d428              # double 0.045043
	.quad	0x3fe8d432873bc904              # double 0.775903
	.quad	0x3fe6accf6be37de9              # double 0.70859499999999997
	.quad	0x3fec035158b827fa              # double 0.87540499999999999
	.quad	0x3fe05af6c69b5a64              # double 0.511104
	.quad	0x3fe0093964a59c06              # double 0.50112599999999996
	.quad	0x3fd9a0f0a5efe932              # double 0.40044800000000003
	.quad	0x3fda37f7be121ee6              # double 0.40966599999999997
	.quad	0x3fefc09a24031487              # double 0.99226099999999994
	.quad	0x3fec0eb8950763a2              # double 0.87679700000000005
	.quad	0x3fe9723cc8de2ac3              # double 0.79519499999999999
	.quad	0x3fc361d4306e5cd5              # double 0.151423
	.quad	0x3fd9cb9a9da597d5              # double 0.40305200000000002
	.quad	0x3fb3d273d5bab218              # double 0.077429999999999999
	.quad	0x3fc9e43ed959a30a              # double 0.20227800000000001
	.quad	0x3fe30997c3d68406              # double 0.59492100000000003
	.quad	0x3fdb250b524399b3              # double 0.42413600000000001
	.quad	0x3febc0053e2d6239              # double 0.86719000000000002
	.quad	0x3fd1398e97071822              # double 0.26913799999999999
	.quad	0x3fcf09289dadfb50              # double 0.24246699999999999
	.quad	0x3febbed740c4156e              # double 0.86704599999999998
	.quad	0x3fe568576cce5f74              # double 0.668987
	.quad	0x3fedfd2c7b890d5a              # double 0.93715499999999996
	.quad	0x3feffffbce4217d3              # double 0.99999800000000005
	.quad	0x3fcb9e40c8472c0e              # double 0.21576699999999999
	.quad	0x3fec2f61ed5ae1ce              # double 0.88078400000000001
	.quad	0x3fa386d2ed783dff              # double 0.038137999999999998
	.quad	0x3fd0fe5c91d14e3c              # double 0.26552500000000001
	.quad	0x3fe68bf1a5ca2984              # double 0.70458299999999996
	.quad	0x3fdffd86a8fc0d2c              # double 0.49984899999999999
	.quad	0x3fc68d32830a0b1c              # double 0.17618400000000001
	.quad	0x3fdb9f6a93f290ac              # double 0.43160500000000002
	.quad	0x3fd33a647fdc5932              # double 0.30043900000000001
	.quad	0x3fc57d2849cb252d              # double 0.167882
	.quad	0x3fe80d5a5b9628cc              # double 0.75163000000000002
	.quad	0x3feddb63d3e4ef03              # double 0.93303100000000005
	.quad	0x3fd3c2fc69728a61              # double 0.30877599999999999
	.quad	0x3fc310129cbab64a              # double 0.148928
	.quad	0x3fdda261bf37b8d4              # double 0.463036
	.quad	0x3fe3617a02fb5d03              # double 0.60564899999999999
	.quad	0x3fea4eb78897e996              # double 0.82210899999999998
	.quad	0x3fd395f2452c59fb              # double 0.30602699999999999
	.quad	0x3fc592c8c5004fb1              # double 0.168542
	.quad	0x3fd1153bd1676641              # double 0.26692100000000002
	.quad	0x3fe86bfca85caafc              # double 0.76318200000000002
	.quad	0x3fe9644d87724fa9              # double 0.79349400000000003
	.quad	0x3fdfee568a50507a              # double 0.49892199999999998
	.quad	0x3fdce98dcdb37c9a              # double 0.45175500000000002
	.quad	0x3fca666ec9e236c1              # double 0.20625099999999999
	.quad	0x3fe98b7c3504c48b              # double 0.79827700000000001
	.quad	0x3feed5a7d24180d4              # double 0.96358100000000002
	.quad	0x3fd2d70e6f2e8c05              # double 0.29437600000000003
	.quad	0x3fedbf42352eb5f6              # double 0.92959700000000001
	.quad	0x3fef6a704bc27632              # double 0.98174300000000003
	.quad	0x3fed2a497fa5d28d              # double 0.911412
	.quad	0x3fdb963dc486ad2e              # double 0.43104500000000001
	.quad	0x3fce793dd97f62b7              # double 0.23807500000000001
	.quad	0x3fe82a8c9b845565              # double 0.75519400000000003
	.quad	0x3fea7f13059641f6              # double 0.82801199999999997
	.quad	0x3fde08637bd05af7              # double 0.46926200000000001
	.quad	0x3fe6a178f68be2f8              # double 0.70721100000000003
	.quad	0x3fd3636b09635611              # double 0.30294300000000002
	.quad	0x3fd276af89c5e6ff              # double 0.28849399999999997
	.quad	0x3fd1702a3486f04a              # double 0.27247100000000002
	.quad	0x3fde8d1958969a0b              # double 0.47736200000000001
	.quad	0x3fce3a08398a6549              # double 0.23614599999999999
	.quad	0x3fee2265f0f5a101              # double 0.94169899999999995
	.quad	0x3fe932c83ec892ab              # double 0.78744899999999995
	.quad	0x3fee74a558ea7ce1              # double 0.951739
	.quad	0x3fe2ee17a02fb5d0              # double 0.59156399999999998
	.quad	0x3fdbcde5d18090b4              # double 0.43444199999999999
	.quad	0x3fe2aba9d1f60179              # double 0.58345499999999995
	.quad	0x3fb24712e40852b5              # double 0.071397000000000002
	.quad	0x3feea055757d5a9f              # double 0.95707200000000003
	.quad	0x3fd65df2239e6aba              # double 0.34948400000000002
	.quad	0x3fc4d32830a0b1bc              # double 0.16269400000000001
	.quad	0x3fe0d3b4b2fa93af              # double 0.52584299999999995
	.quad	0x3fed4c319c5a3e3a              # double 0.915551
	.quad	0x3fd82ee84ad794a7              # double 0.377863
	.quad	0x3fb4a87e38eb0319              # double 0.080696000000000004
	.quad	0x3fd55b8561d4306e              # double 0.33371099999999998
	.quad	0x3fc5444e0daa0cae              # double 0.16614699999999999
	.quad	0x3fb40a17b0f6ad71              # double 0.078279000000000001
	.quad	0x3fc2ffc9795b35b1              # double 0.14843100000000001
	.quad	0x3fec6963dc486ad3              # double 0.88786500000000002
	.quad	0x3fe047e8ccdd93c4              # double 0.50877799999999995
	.quad	0x3fb89b0ee49f5169              # double 0.096115999999999993
	.quad	0x3fedd62174c4cdfb              # double 0.93238900000000002
	.quad	0x3fc75b78cc9a77e6              # double 0.182479
	.quad	0x3feb3c4f3ba775fb              # double 0.85111199999999998
	.quad	0x3fc8c564f97edc7f              # double 0.193524
	.quad	0x3fe4fdb4cc250721              # double 0.65597000000000005
	.quad	0x3fe8a1f080303c08              # double 0.76976800000000001
	.quad	0x3fbd49e8815e3971              # double 0.114409
	.quad	0x3fe5ce358298cc14              # double 0.68142199999999997
	.quad	0x3fd49f6a93f290ac              # double 0.32223000000000002
	.quad	0x3faf878b7a1c25d0              # double 0.061580999999999997
	.quad	0x3fc009c3ce2089e3              # double 0.12529799999999999
	.quad	0x3fe47204295a6c5d              # double 0.63891799999999999
	.quad	0x3fe3f1cb89d6adf7              # double 0.62326599999999999
	.quad	0x3fe499fa11a975b0              # double 0.64379600000000003
	.quad	0x3fd15b0ff10ecb75              # double 0.27118300000000001
	.quad	0x3fddb841248d7e02              # double 0.46437099999999998
	.quad	0x3fc7382e44b6e936              # double 0.18140200000000001
	.quad	0x3fe7ca9ef5232d2c              # double 0.74348400000000003
	.quad	0x3fd663ed0f627393              # double 0.34984900000000002
	.quad	0x3fe20cf5b1c86488              # double 0.56408199999999997
	.quad	0x3fc9d441355475a3              # double 0.20179
	.quad	0x3fe2c27a63736cdf              # double 0.58623999999999998
	.quad	0x3fedccb9ecf63800              # double 0.93124099999999999
	.quad	0x3fa8902de00d1b71              # double 0.047974999999999997
	.quad	0x3fd4eed02cd39da1              # double 0.32707599999999998
	.quad	0x3fd3755bccaf709b              # double 0.30403799999999997
	.quad	0x3fd3ba237cdcca71              # double 0.30823600000000001
	.quad	0x3fd8beb5b2d4d402              # double 0.38663999999999998
	.quad	0x3fbb8f9b13165d3a              # double 0.10766000000000001
	.quad	0x3fed83b60285ec3e              # double 0.92232800000000004
	.quad	0x3fecd44fe36d2242              # double 0.90091699999999997
	.quad	0x3faea37ac3eb7cbb              # double 0.059840999999999998
	.quad	0x3fd27ef9db22d0e5              # double 0.28899999999999998
	.quad	0x3fe764883fd50225              # double 0.73102199999999995
	.quad	0x3fe426f826edaa93              # double 0.62975700000000001
	.quad	0x3fdb7d4e09784ec6              # double 0.42952299999999999
	.quad	0x3fe60b19a415f45e              # double 0.688855
	.quad	0x3fe8f8ab0c88a47f              # double 0.78035500000000002
	.quad	0x3fd0b6aa4b9884c7              # double 0.26114900000000002
	.quad	0x3fedc58255b035bd              # double 0.93035999999999996
	.quad	0x3feb9f0e4da09cc3              # double 0.86316599999999999
	.quad	0x3fd08b545c78a6db              # double 0.25850400000000001
	.quad	0x3fd1b86b15f88fc9              # double 0.27688099999999999
	.quad	0x3f910385c67dfe33              # double 0.016615000000000001
	.quad	0x3fabdbc23315d702              # double 0.054411000000000001
	.quad	0x3fc3923a29c779a7              # double 0.15290000000000001
	.quad	0x3fec59ccfaeff5c7              # double 0.88596200000000003
	.quad	0x3fe528954a7f8013              # double 0.66120400000000001
	.quad	0x3fe877e3d1cc100e              # double 0.76463499999999995
	.quad	0x3fe4eda0168b5cc0              # double 0.65400700000000001
	.quad	0x3fc848f10a99b6f6              # double 0.18972600000000001
	.quad	0x3fb1f4f50a02b841              # double 0.070143999999999998
	.quad	0x3fc0d59d55e6bc62              # double 0.131519
	.quad	0x3f8cb4f1e4b44a1f              # double 0.014017
	.quad	0x3fc46c226809d495              # double 0.15955
	.quad	0x3fefb53f7ced9168              # double 0.99087499999999995
	.quad	0x3fe80d477bbf93ff              # double 0.75162099999999998
	.quad	0x3fd5625204af9229              # double 0.33412599999999998
	.quad	0x3fd3db76b3bb83cf              # double 0.31026999999999999
	.quad	0x3fdd5147f1305964              # double 0.45808599999999999
	.quad	0x3fbe9a1b9f98b71c              # double 0.11953900000000001
	.quad	0x3fe8e646f1561911              # double 0.77810999999999997
	.quad	0x3febc24e59296702              # double 0.86746900000000005
	.quad	0x3fe35afaf8594291              # double 0.60485599999999995
	.quad	0x3fd0178b3700474e              # double 0.25143700000000002
	.quad	0x3fc16cf850df15a5              # double 0.13613800000000001
	.quad	0x3fd1ca03c4b09e99              # double 0.27795500000000001
	.quad	0x3f9209edbf8b9baa              # double 0.017616
	.quad	0x3fe671886df82b1f              # double 0.70135899999999995
	.quad	0x3fc853a81dc0db27              # double 0.190053
	.quad	0x3fee86940357a355              # double 0.953928
	.quad	0x3fe1450268900c52              # double 0.53967399999999999
	.quad	0x3fe90db2702a3487              # double 0.78292200000000001
	.quad	0x3fceef3d3a1d3240              # double 0.241676
	.quad	0x3fcfc5bd0e12e83a              # double 0.248222
	.quad	0x3fd40c0ad03d9a95              # double 0.31323499999999999
	.quad	0x3fe48b60f1b25f63              # double 0.64201399999999997
	.quad	0x3fe6a76fb09203a3              # double 0.70793899999999998
	.quad	0x3fe3569d30270f39              # double 0.60432300000000005
	.quad	0x3feaea37ac3eb7cc              # double 0.84109100000000003
	.quad	0x3fe8f8487b99d452              # double 0.780308
	.quad	0x3fe617ebaf102364              # double 0.69042000000000003
	.quad	0x3fe4eda87a072d1b              # double 0.65401100000000001
	.quad	0x3fc8fc3f811f4f51              # double 0.19519800000000001
	.quad	0x3fb1759ee88df373              # double 0.068200999999999998
	.quad	0x3fc4113404ea4a8c              # double 0.156775
	.quad	0x3fd3fdc5931ca7d6              # double 0.31236399999999998
	.quad	0x3fd79f94855da273              # double 0.36911500000000003
	.quad	0x3fe63d017dae8188              # double 0.69494699999999998
	.quad	0x3feef266ba493c8a              # double 0.96709000000000001
	.quad	0x3fde8e4b87bdcf03              # double 0.477435
	.quad	0x3fed003686a4ca4f              # double 0.90627599999999997
	.quad	0x3fda02bc72e275ab              # double 0.40641699999999997
	.quad	0x3fed1cd1c7de5083              # double 0.90976800000000002
	.quad	0x3fecf82b1f687b14              # double 0.90529400000000004
	.quad	0x3fd355c0fcb4f1e5              # double 0.30210900000000002
	.quad	0x3fd398b71b8aa002              # double 0.30619600000000002
	.quad	0x3fdb4f227d028a1e              # double 0.426705
	.quad	0x3fee36049ecb31c2              # double 0.94409399999999999
	.quad	0x3fed7991bc558644              # double 0.92108999999999996
	.quad	0x3fe84083126e978d              # double 0.75787499999999997
	.quad	0x3f714e3bcd35a858              # double 0.0042249999999999996
	.quad	0x3fa2f01754b05b7d              # double 0.036988
	.quad	0x3fd040e1719f7f8d              # double 0.25396000000000002
	.quad	0x3febe468cac4b4d0              # double 0.87163199999999996
	.quad	0x3fe6124f227d028a              # double 0.68973499999999999
	.quad	0x3fd92ae07e5a78f2              # double 0.39324199999999998
	.quad	0x3fc6a63b688bda94              # double 0.17694799999999999
	.quad	0x3fc764f11b60ae97              # double 0.18276800000000001
	.quad	0x3fee636b09635611              # double 0.94963600000000004
	.quad	0x3fe2bcf0b6b6e0d2              # double 0.58556399999999997
	.quad	0x3fe02ef0ae536502              # double 0.50573000000000001
	.quad	0x3fd3a832b990afe6              # double 0.307141
	.quad	0x3feb7f38c5436b90              # double 0.85928000000000004
	.quad	0x3fdc43a647fdc593              # double 0.44162899999999999
	.quad	0x3fe8bfcc9ea9a3d3              # double 0.77341300000000002
	.quad	0x3fde431bde82d7b6              # double 0.47284599999999999
	.quad	0x3fd6c36da87a072d              # double 0.35567799999999999
	.quad	0x3fe806d938151a43              # double 0.75083599999999995
	.quad	0x3fe089f623076c05              # double 0.51684099999999999
	.quad	0x3fe35e5d18090b41              # double 0.60526899999999995
	.quad	0x3fc7e69270b06c44              # double 0.186724
	.quad	0x3fe01fab96f21f6d              # double 0.50386600000000004
	.quad	0x3fcdc0a06e9ff0cc              # double 0.23244100000000001
	.quad	0x3fc300474d9c6b05              # double 0.14844599999999999
	.quad	0x3fe6443d46b26bf8              # double 0.69582999999999995
	.quad	0x3fe8626d4801f751              # double 0.762015
	.quad	0x3fc4ded288ce703b              # double 0.16305
	.quad	0x3fd2bafd976ff3ae              # double 0.29266300000000001
	.quad	0x3fdb44fe36d22425              # double 0.42608600000000002
	.quad	0x3feeaf37fbefd007              # double 0.95888899999999999
	.quad	0x3fd32a8869c66d37              # double 0.29947099999999999
	.quad	0x3fdff83be6601bca              # double 0.49952600000000003
	.quad	0x3febc5f17bd8be73              # double 0.86791300000000005
	.quad	0x3fe290f733a8a3f9              # double 0.58019600000000005
	.quad	0x3f9a32f449129889              # double 0.025585
	.quad	0x3fd5c2e770bd017e              # double 0.34002100000000002
	.quad	0x3feafeb28d8665e0              # double 0.84359099999999997
	.quad	0x3fc7e3a7daa4fca4              # double 0.186635
	.quad	0x3fcae12620253975              # double 0.20999599999999999
	.quad	0x3fee0a06e9ff0cbb              # double 0.938724
	.quad	0x3fa1d99029ae4f33              # double 0.034862999999999998
	.quad	0x3fecfc8f32378ab1              # double 0.90583000000000002
	.quad	0x3fecb05faebc408e              # double 0.89653000000000005
	.quad	0x3fb93f5b5fa22707              # double 0.098623000000000002
	.quad	0x3fdddebd9018e758              # double 0.46672000000000002
	.quad	0x3fcac386d2ed783e              # double 0.209092
	.quad	0x3fe9d1633482be8c              # double 0.80681000000000002
	.quad	0x3fc7a6defc7a3982              # double 0.18478
	.quad	0x3fe94e160d887ebf              # double 0.79078199999999998
	.quad	0x3fc5340d4dc65c70              # double 0.16565099999999999
	.quad	0x3fdd7182235b4edb              # double 0.46005299999999999
	.quad	0x3fe0ae1ac57e23f2              # double 0.52125299999999997
	.quad	0x3f87292c49342678              # double 0.011309
	.quad	0x3fef7b43d89ce4a8              # double 0.98379700000000003
	.quad	0x3fe98eeae9ee45c3              # double 0.79869599999999996
	.quad	0x3fe863779e9d0e99              # double 0.76214199999999999
	.quad	0x3feae6f9335d249e              # double 0.84069499999999997
	.quad	0x3fc39dd3bafd9770              # double 0.153254
	.quad	0x3fe4c0980b242071              # double 0.64851000000000003
	.quad	0x3fef220bc382a130              # double 0.97290600000000005
	.quad	0x3fdfadd590c0ad04              # double 0.49498500000000001
	.quad	0x3fdc04c48adeebb3              # double 0.43779099999999999
	.quad	0x3f93a4b5568e820e              # double 0.019182999999999999
	.quad	0x3fc80ded288ce704              # double 0.18792500000000001
	.quad	0x3fd0db6e503fb374              # double 0.26339299999999999
	.quad	0x3fb8049667b5f1bf              # double 0.093820000000000001
	.quad	0x3fe42cffa7eb6bf4              # double 0.63049299999999997
	.quad	0x3feecf2495e17e35              # double 0.96278600000000003
	.quad	0x3fe837c7820a30db              # double 0.75680899999999995
	.quad	0x3fd6aabcd78c4370              # double 0.35417100000000001
	.quad	0x3fef3b05faebc409              # double 0.97595500000000001
	.quad	0x3fe9d9c27e953155              # double 0.80783199999999999
	.quad	0x3fcd2999567dbb17              # double 0.22783200000000001
	.quad	0x3fc27fa1a0cf1801              # double 0.14452000000000001
	.quad	0x3fd83e35c5b4aa97              # double 0.37879699999999999
	.quad	0x3fd1eb78897e9963              # double 0.279997
	.quad	0x3fe7fae7924af0bf              # double 0.74937799999999999
	.quad	0x3fc30b524399b2c4              # double 0.148783
	.quad	0x3fe934a2339c0ebf              # double 0.78767500000000001
	.quad	0x3fe2eb13dfb0d520              # double 0.59119600000000005
	.quad	0x3fe8d66cf41f212d              # double 0.77617499999999995
	.quad	0x3fc407fed20296b3              # double 0.15649399999999999
	.quad	0x3fed845564b662fe              # double 0.922404
	.quad	0x3fe4725e56cd6c2f              # double 0.638961
	.quad	0x3fc234c1a8ac5c14              # double 0.142235
	.quad	0x3fc6c0c62e4d1a65              # double 0.177758
	.quad	0x3fad03fb3743632c              # double 0.056670999999999999
	.quad	0x3fef6fc58ab92c06              # double 0.98239399999999999
	.quad	0x3f7013a92a305532              # double 0.0039249999999999997
	.quad	0x3febe6a550870111              # double 0.87190500000000004
	.quad	0x3fe15dfc9ff92f2b              # double 0.54272299999999996
	.quad	0x3fdb8b9346994185              # double 0.430394
	.quad	0x3fc96b441bb8c32b              # double 0.19858600000000001
	.quad	0x3fe302ba5a038195              # double 0.59408300000000003
	.quad	0x3feecb966be7afa7              # double 0.96235199999999998
	.quad	0x3fb391b3f20a73f7              # double 0.076441999999999996
	.quad	0x3fe5c41fea8112ba              # double 0.68019099999999999
	.quad	0x3fc21c92ddbdb5d9              # double 0.14149700000000001
	.quad	0x3fecece13f4a98ab              # double 0.90391600000000005
	.quad	0x3fefc6c97d8cf399              # double 0.993016
	.quad	0x3fe1c6b053198288              # double 0.555504
	.quad	0x3fd72be8bc169c24              # double 0.36205500000000002
	.quad	0x3fb0e2b063e07a29              # double 0.065959000000000004
	.quad	0x3fda9856a37ac3eb              # double 0.41554799999999997
	.quad	0x3fb22435696e58a3              # double 0.070864999999999997
	.quad	0x3fe79e4d5d80e497              # double 0.73807400000000001
	.quad	0x3fd494ccab3edd8b              # double 0.32158199999999998
	.quad	0x3fcc036006d0d499              # double 0.21885299999999999
	.quad	0x3fd72c7fbacb4289              # double 0.362091
	.quad	0x3fd1a6117720c8cd              # double 0.27576099999999998
	.quad	0x3fc60242d05f2885              # double 0.17194400000000001
	.quad	0x3fd7660e51d25aab              # double 0.36560399999999998
	.quad	0x3fe3efac6045baf5              # double 0.62300699999999998
	.quad	0x3feb5a7d24180d3d              # double 0.854796
	.quad	0x3fe1cfd08d4bad7d              # double 0.55661799999999995
	.quad	0x3fee2aef2c732592              # double 0.94274100000000005
	.quad	0x3fefb0b7c3504c49              # double 0.99032200000000003
	.quad	0x3fda3eb399f5dfec              # double 0.41007700000000002
	.quad	0x3fd58ec52a411c2a              # double 0.336839
	.quad	0x3fe3845dc8323359              # double 0.60990800000000001
	.quad	0x3fd9f0bae89eba6b              # double 0.40531800000000001
	.quad	0x3fd1065300581494              # double 0.266011
	.quad	0x3fe388c3f3e0370d              # double 0.61044500000000002
	.quad	0x3fc40dc33721d53d              # double 0.15667
	.quad	0x3fcdb18dac258d58              # double 0.23198099999999999
	.quad	0x3feba1d96e9bbf0e              # double 0.86350700000000002
	.quad	0x3f9018e757928e0d              # double 0.015720000000000001
	.quad	0x3fbfafa7221858bc              # double 0.123774
	.quad	0x3fb42df0d413122b              # double 0.078825999999999993
	.quad	0x3fdc007dd4413554              # double 0.43752999999999997
	.quad	0x3fe80a9de8b3b320              # double 0.75129599999999996
	.quad	0x3fe261309c7ffde7              # double 0.57436399999999999
	.quad	0x3fb46a3bddfc9ff9              # double 0.079745999999999997
	.quad	0x3fd4cf95d4e8fb01              # double 0.32517000000000001
	.quad	0x3fe67bfe7e1fc090              # double 0.70263600000000004
	.quad	0x3fcfb413986338b4              # double 0.24768299999999999
	.quad	0x3fe0eaf6837f7be1              # double 0.52868199999999999
	.quad	0x3fe79d25aab47410              # double 0.73793299999999995
	.quad	0x3fb472d1aeb3dd12              # double 0.079877000000000003
	.quad	0x3fd609cc319c5a3e              # double 0.34434799999999999
	.quad	0x3fcf2d98bf7f0670              # double 0.24357899999999999
	.quad	0x3fc67dd441355476              # double 0.17571500000000001
	.quad	0x3f889a459103c8e2              # double 0.012012999999999999
	.quad	0x3fe779ce8d972cd8              # double 0.73361900000000002
	.quad	0x3fba7d028a1dfb94              # double 0.10347000000000001
	.quad	0x3fefdfcc1871e6cd              # double 0.99606899999999998
	.quad	0x3fcd3543aeab7996              # double 0.228188
	.quad	0x3fef9a49c2c1b110              # double 0.98758400000000002
	.quad	0x3fb0c20d5629d841              # double 0.065461000000000005
	.quad	0x3feea3897204295a              # double 0.95746299999999995
	.quad	0x3fdaee2435696e59              # double 0.42078500000000002
	.quad	0x3fb2ee73e681a9b9              # double 0.073951000000000003
	.quad	0x3fe8c1f212d77319              # double 0.773675
	.quad	0x3feac07ee0b0af60              # double 0.83599800000000001
	.quad	0x3fefbc77143393ab              # double 0.99175599999999997
	.quad	0x3fea78c436fc1590              # double 0.82724200000000003
	.quad	0x3fc30cfe154434e3              # double 0.14883399999999999
	.quad	0x3fe57168f8e7ddca              # double 0.67009399999999997
	.quad	0x3fe358d5842b734b              # double 0.60459399999999996
	.quad	0x3faff1f9acffa7eb              # double 0.062392999999999997
	.quad	0x3fe004a2fcefaa47              # double 0.50056599999999996
	.quad	0x3fee58b1dd5d3dc9              # double 0.94832700000000003
	.quad	0x3fc492ccf6be37df              # double 0.16073000000000001
	.quad	0x3fcb36ac647778dd              # double 0.21260599999999999
	.quad	0x3fc50281ba7fc32f              # double 0.16413900000000001
	.quad	0x3fe7c0a2877ee4e2              # double 0.74226499999999995
	.quad	0x3fe84a600b029281              # double 0.75907899999999995
	.quad	0x3fe1ec3b927d45a6              # double 0.560087
	.quad	0x3fabe10060780fdc              # double 0.054450999999999999
	.quad	0x3fd7dfe32a0663c7              # double 0.37303999999999998
	.quad	0x3fd040181e03f706              # double 0.25391200000000003
	.quad	0x3fe5c12cf0f9d2bf              # double 0.67983099999999996
	.quad	0x3fd288f861a60d45              # double 0.28960999999999998
	.quad	0x3fe4ac710cb295ea              # double 0.64605000000000001
	.quad	0x3fef6c6583e8576d              # double 0.98198200000000002
	.quad	0x3fe440ee06d93815              # double 0.63292599999999999
	.quad	0x3feb324638c97529              # double 0.84988699999999995
	.quad	0x3fd83da72a7bd48d              # double 0.37876300000000002
	.quad	0x3fe9f6598e10cf5b              # double 0.81132199999999999
	.quad	0x3fd73a57eaa2a0a9              # double 0.36293599999999998
	.quad	0x3fedf2b4528283d3              # double 0.93587699999999996
	.quad	0x3fe9b0db6a1e81cb              # double 0.80283899999999997
	.quad	0x3fe7dbd72bcb5fe5              # double 0.74558599999999997
	.quad	0x3fe4e84ad794a6ec              # double 0.65335600000000005
	.quad	0x3fa213c254a3c643              # double 0.035306999999999998
	.quad	0x3fd57603925bb7b7              # double 0.33532800000000001
	.quad	0x3fdae52157689ca2              # double 0.42023500000000003
	.quad	0x3fe53897204295a7              # double 0.66315800000000003
	.quad	0x3fefe468cac4b4d0              # double 0.99663199999999996
	.quad	0x3fd967f90d9d7775              # double 0.39697100000000002
	.quad	0x3fe3734d6a161e4f              # double 0.60782499999999995
	.quad	0x3fe4bcdbbe0157ef              # double 0.64805400000000002
	.quad	0x3fd30d2c386d2ed8              # double 0.29767900000000003
	.quad	0x3fe3a9bcfd4bf099              # double 0.61446999999999996
	.quad	0x3fdbfdc9c4da9004              # double 0.437365
	.quad	0x3fdfa17b0f6ad70e              # double 0.49423099999999998
	.quad	0x3fe77255f3519bd4              # double 0.732707
	.quad	0x3fb72074ea8da7f4              # double 0.090339000000000003
	.quad	0x3fbab4b72c5197a2              # double 0.10432
	.quad	0x3fe72007dd441355              # double 0.72265999999999997
	.quad	0x3fc6297396d0917d              # double 0.17313999999999999
	.quad	0x3fa0d0aaa7ded6bb              # double 0.032842000000000003
	.quad	0x3fd41ec918e325d5              # double 0.31437900000000002
	.quad	0x3fb1479d4d834092              # double 0.067499000000000003
	.quad	0x3fd5235b4edb2f66              # double 0.33028299999999999
	.quad	0x3fd2eff5c6c11a11              # double 0.29589599999999999
	.quad	0x3feab79d909f1f15              # double 0.83491400000000004
	.quad	0x3fefb6ed6777079e              # double 0.99107999999999996
	.quad	0x3fe6281dc0db2703              # double 0.69239700000000004
	.quad	0x3fd6000000000000              # double 0.34375
	.quad	0x3fc3ed288ce703b0              # double 0.15567500000000001
	.quad	0x3fd3f32bdc26dce4              # double 0.31171700000000002
	.quad	0x3fe51ad6451b9303              # double 0.65952599999999995
	.quad	0x3fead72bcb5fe543              # double 0.83876600000000001
	.quad	0x3fe7cb0c026cc1ca              # double 0.74353599999999997
	.quad	0x3fdac6c97d8cf399              # double 0.418383
	.quad	0x3fd27f0ed3d859c9              # double 0.28900500000000001
	.quad	0x3fc01511dffc547a              # double 0.125643
	.quad	0x3fd865f5275ee99a              # double 0.38122299999999998
	.quad	0x3fc946b26bf8769f              # double 0.19747000000000001
	.quad	0x3fd7df15a4acf313              # double 0.37299100000000002
	.quad	0x3fb5148fd9fd36f8              # double 0.082345000000000002
	.quad	0x3fdec011d3671ac1              # double 0.48047299999999998
	.quad	0x3fe2e6106ab14ec2              # double 0.590584
	.quad	0x3fe3a9d627bf61aa              # double 0.61448199999999997
	.quad	0x3facfd4bf0995aaf              # double 0.056619999999999997
	.quad	0x3fed9e57d9dba909              # double 0.92557900000000004
	.quad	0x3fe81d9d3458cd21              # double 0.75361500000000003
	.quad	0x3fda3ce63a5c1c61              # double 0.40996700000000003
	.quad	0x3fd3f2ecf2064239              # double 0.31170199999999998
	.quad	0x3fb8012dfd694ccb              # double 0.093768000000000004
	.quad	0x3fd05af6c69b5a64              # double 0.255552
	.quad	0x3fcc474538ef34d7              # double 0.22092500000000001
	.quad	0x3fc137a80cf9e386              # double 0.13451099999999999
	.quad	0x3fe92517e77d523b              # double 0.78577799999999998
	.quad	0x3fd294b7b28954a8              # double 0.290327
	.quad	0x3fe7726aec0724b7              # double 0.73271699999999995
	.quad	0x3fe683be6601bc99              # double 0.70358200000000004
	.quad	0x3fc7839cd8127b2d              # double 0.18370400000000001
	.quad	0x3fe05566cf41f213              # double 0.51042500000000002
	.quad	0x3feedad7518b0d0f              # double 0.96421400000000001
	.quad	0x3f7c443914f483cb              # double 0.006901
	.quad	0x3fef964c729f59cd              # double 0.987097
	.quad	0x3feb8ede54b48d3b              # double 0.86119000000000001
	.quad	0x3fcf666a98244e94              # double 0.245313
	.quad	0x3fd90fb65668c261              # double 0.39158399999999999
	.quad	0x3fd220afa2f05a71              # double 0.28324500000000002
	.quad	0x3fe54434e3369b9d              # double 0.66457599999999994
	.quad	0x3fbf63b256ffc116              # double 0.122615
	.quad	0x3fd4ef0281ba7fc3              # double 0.32708799999999999
	.quad	0x3fee42e33eff1950              # double 0.94566499999999998
	.quad	0x3fe6da122fad6cb5              # double 0.71411999999999998
	.quad	0x3fe2962f166e008f              # double 0.58083300000000004
	.quad	0x3fef5132f87ad081              # double 0.97866200000000003
	.quad	0x3fe644e50c5eb314              # double 0.69591000000000003
	.quad	0x3fd977fae3608d09              # double 0.39794800000000002
	.quad	0x3fe651d041cc532a              # double 0.69748699999999997
	.quad	0x3fbb827fa1a0cf18              # double 0.10746
	.quad	0x3fe2a4b76f6d7625              # double 0.58260699999999999
	.quad	0x3fc5b37c99ae924f              # double 0.16954
	.quad	0x3fc74488c60cbf2b              # double 0.181779
	.quad	0x3fbbce0fc2eba27b              # double 0.108613
	.quad	0x3fea05271bcdbbe0              # double 0.81312899999999999
	.quad	0x3fc93a14cec41dd2              # double 0.19708500000000001
	.quad	0x3fd7ac258d5842b7              # double 0.36988199999999999
	.quad	0x3fc05cbbc2b94d94              # double 0.12783
	.quad	0x3fbde0e736049ecb              # double 0.116713
	.quad	0x3fd8e6d58c8eef1c              # double 0.38908900000000002
	.quad	0x3fd712e40852b4d9              # double 0.36052800000000002
	.quad	0x3fd24f3775b81301              # double 0.28608499999999998
	.quad	0x3fd65785f8d2e515              # double 0.34909200000000001
	.quad	0x3feef99c38b04ab6              # double 0.96797
	.quad	0x3fdb9081c2e33eff              # double 0.43069499999999999
	.quad	0x3fe7042528ae74f3              # double 0.71925600000000001
	.quad	0x3fb2e3d5fdcdf698              # double 0.073788999999999993
	.quad	0x3fd8272862f5989e              # double 0.37739
	.quad	0x3fef97ce52deca25              # double 0.98728099999999996
	.quad	0x3fde5a9a8049667b              # double 0.47427999999999998
	.quad	0x3fe3acdc011d3672              # double 0.61485100000000004
	.quad	0x3fd16833c60029f1              # double 0.27198499999999998
	.quad	0x3fc64816f0068db9              # double 0.17407500000000001
	.quad	0x3fc981626b2f2303              # double 0.19926099999999999
	.quad	0x3fe24853c148344c              # double 0.57132899999999998
	.quad	0x3fe029802c0a4a06              # double 0.50506600000000001
	.quad	0x3fe9a4ca4f440af2              # double 0.80136600000000002
	.quad	0x3fe9a480e8c8abd6              # double 0.80133100000000002
	.quad	0x3fe6f737da61e0c6              # double 0.71767800000000004
	.quad	0x3fdd3cd141a6937d              # double 0.45683699999999999
	.quad	0x3fcfd07c84b5dcc6              # double 0.24854999999999999
	.quad	0x3feeedbb59ddc1e8              # double 0.96652000000000004
	.quad	0x3feab4c1a8ac5c14              # double 0.834565
	.quad	0x3fe6af8594291750              # double 0.70892599999999995
	.quad	0x3feca63b688bda94              # double 0.89529199999999997
	.quad	0x3fc4f3c2dadb8349              # double 0.163689
	.quad	0x3fdf0caa326e1156              # double 0.48514800000000002
	.quad	0x3fb6df71eafee6fb              # double 0.089346999999999996
	.quad	0x3fc88de2ac322292              # double 0.19183
	.quad	0x3fce9d7342edbb5a              # double 0.23918
	.quad	0x3fef06705c896dd2              # double 0.96953599999999995
	.quad	0x3fdbb00ffda4052d              # double 0.43262099999999998
	.quad	0x3fcd2af1455219a8              # double 0.22787299999999999
	.quad	0x3fefc39799e518f4              # double 0.992626
	.quad	0x3fd8b506dd69d302              # double 0.38604899999999998
	.quad	0x3fdefc7a398201cd              # double 0.48415999999999998
	.quad	0x3fe74cff21b3aeef              # double 0.72814900000000005
	.quad	0x3fc9cb6848beb5b3              # double 0.20152
	.quad	0x3feb42d05f288484              # double 0.85190600000000005
	.quad	0x3fe229e2bcf91a33              # double 0.56761300000000003
	.quad	0x3fd0c4dec1c1d6d0              # double 0.26201600000000003
	.quad	0x3fda0eae18ac9f30              # double 0.40714600000000001
	.quad	0x3fc2b0a6fc58ab93              # double 0.14601600000000001
	.quad	0x3fe1c347e8ccdd94              # double 0.55508800000000003
	.quad	0x3fd5aeb3dd11be6e              # double 0.33878799999999998
	.quad	0x3fcbb691212513b6              # double 0.21650900000000001
	.quad	0x3fed54eb13dfb0d5              # double 0.91661599999999999
	.quad	0x3fa99dcb5781c715              # double 0.050032
	.quad	0x3fcaba40d90e23af              # double 0.20880899999999999
	.quad	0x3fd8d9513f8db489              # double 0.388264
	.quad	0x3fd4eaab042528ae              # double 0.32682299999999997
	.quad	0x3fe646327ed84d34              # double 0.69606900000000005
	.quad	0x3fe7b32ce89656ef              # double 0.740622
	.quad	0x3fa0afc47e49b1fb              # double 0.032591000000000002
	.quad	0x3fae0c7c0f451761              # double 0.058688999999999998
	.quad	0x3fe1ceb78897e996              # double 0.55648399999999998
	.quad	0x3fd57dbb16c1e365              # double 0.33579900000000001
	.quad	0x3fedbb107746887b              # double 0.92908500000000005
	.quad	0x3fdd8a7610279570              # double 0.46157599999999999
	.quad	0x3fd2f75104d551d7              # double 0.29634500000000003
	.quad	0x3feda3a4b5568e82              # double 0.92622599999999999
	.quad	0x3fe41b6b2af14552              # double 0.62834699999999999
	.quad	0x3fec6295208e1501              # double 0.88703399999999999
	.quad	0x3fe735d249e44fa0              # double 0.72531999999999996
	.quad	0x3feba0fb224aada3              # double 0.86340099999999997
	.quad	0x3fb2236c15d2d01c              # double 0.070852999999999999
	.quad	0x3fc3ab862b27cbf7              # double 0.153672
	.quad	0x3fe7d1a005c4651f              # double 0.74433899999999997
	.quad	0x3fcc27c7c5260f5e              # double 0.21996399999999999
	.quad	0x3fe03f0995aaf790              # double 0.50769500000000001
	.quad	0x3fd27154003254e7              # double 0.28816700000000001
	.quad	0x3fd8ed288ce703b0              # double 0.38947500000000002
	.quad	0x3fea50678c0053e3              # double 0.82231500000000002
	.quad	0x3fdec942d490e66d              # double 0.48103400000000002
	.quad	0x3fe8340b34e7685a              # double 0.75635300000000005
	.quad	0x3fb762a5e785b5b7              # double 0.091349
	.quad	0x3fe77924af0bf1a6              # double 0.73353800000000002
	.quad	0x3fec69a4df47f994              # double 0.88789600000000001
	.quad	0x3fdfe3da2f8bdec6              # double 0.498282
	.quad	0x3f9029ae4f3343fa              # double 0.015783999999999999
	.quad	0x3fe2ffd60e94ee39              # double 0.59372999999999998
	.quad	0x3fcdce52deca2553              # double 0.23285900000000001
	.quad	0x3fe2e0c7c0f45176              # double 0.58993899999999999
	.quad	0x3fd3938583621fb0              # double 0.30587900000000001
	.quad	0x3fca243dccea28fe              # double 0.204231
	.quad	0x3fef045baf533f42              # double 0.96928199999999998
	.quad	0x3fc9fddebd9018e7              # double 0.20305999999999999
	.quad	0x3fea65109070fbec              # double 0.82483700000000004
	.quad	0x3fd3bb906466b1e6              # double 0.30832300000000001
	.quad	0x3fd59945b6c3760c              # double 0.33748
	.quad	0x3fe9ba4d6e47dc38              # double 0.80399200000000004
	.quad	0x3fd51b1960fa15db              # double 0.32977899999999999
	.quad	0x3fe8ac710cb295ea              # double 0.77105000000000001
	.quad	0x3fe27b58d1526d8b              # double 0.57755699999999999
	.quad	0x3fc3272c94b380cb              # double 0.14963299999999999
	.quad	0x3fd9c24c404a72eb              # double 0.40248400000000001
	.quad	0x3fd00bc382a12f90              # double 0.250718
	.quad	0x3fe7753e707e175d              # double 0.73306199999999999
	.quad	0x3fbd271bcdbbe015              # double 0.11387799999999999
	.quad	0x3fcccaab8a5ce5b4              # double 0.224935
	.quad	0x3fb1fbc5de9c022a              # double 0.070248000000000005
	.quad	0x3fda630a915379fb              # double 0.41229500000000002
	.quad	0x3fe2b645a1cac083              # double 0.58474999999999999
	.quad	0x3fe1b5c9e6687f45              # double 0.55344099999999996
	.quad	0x3fe7318fc504816f              # double 0.7248
	.quad	0x3fe57ba450acc0be              # double 0.67134300000000002
	.quad	0x3fe8a08398a65493              # double 0.769594
	.quad	0x3fd3769ec2ce464a              # double 0.30411500000000002
	.quad	0x3fd76ac647778dd6              # double 0.365892
	.quad	0x3fdaeca686e7e62e              # double 0.42069400000000001
	.quad	0x3fe282e44b6e935c              # double 0.57847800000000005
	.quad	0x3fad2d666a98244f              # double 0.056987000000000003
	.quad	0x3fd1f4a98aa8650e              # double 0.28055799999999997
	.quad	0x3fec6ef3d3a1d324              # double 0.888544
	.quad	0x3fa6fbb0e5e67946              # double 0.044888999999999998
	.quad	0x3fee8d6b228dc982              # double 0.95476300000000003
	.quad	0x3fe97c504816f007              # double 0.79642500000000005
	.quad	0x3fe542aed1394318              # double 0.66439000000000004
	.quad	0x3fdd71476af89c5e              # double 0.46003899999999998
	.quad	0x3fe4f7caa7589efe              # double 0.65524800000000005
	.quad	0x3febefb8f57f737e              # double 0.87301300000000004
	.quad	0x3fe2aca9ac365450              # double 0.58357700000000001
	.quad	0x3fc885015c209247              # double 0.19155900000000001
	.quad	0x3fd8f0aa21a719b5              # double 0.38968900000000001
	.quad	0x3fe2bbdbe3c10518              # double 0.58543199999999995
	.quad	0x3fe5266772d5e072              # double 0.66093800000000003
	.quad	0x3fe2c1ce6c093d96              # double 0.58615799999999996
	.quad	0x3fea5c810a569b17              # double 0.82379199999999997
	.quad	0x3fd66317268d3283              # double 0.349798
	.quad	0x3fec5892684cf074              # double 0.88581200000000004
	.quad	0x3fecac4b4d056c51              # double 0.89603200000000005
	.quad	0x3fe4ad0e56041893              # double 0.64612499999999995
	.quad	0x3fdcaca793576039              # double 0.44803799999999999
	.quad	0x3fecc6a3bddfca00              # double 0.89924800000000004
	.quad	0x3fd57785729b280f              # double 0.33542
	.quad	0x3fcd30a4e379b77c              # double 0.228047
	.quad	0x3fe783f4eca686e8              # double 0.73485800000000001
	.quad	0x3fdfb6bf444e0daa              # double 0.495529
	.quad	0x3fe618b2e9ccb7d4              # double 0.69051499999999999
	.quad	0x3fe980064a9cdc44              # double 0.79687799999999997
	.quad	0x3fc47f3493858362              # double 0.160132
	.quad	0x3fc49cc319c5a3e4              # double 0.16103400000000001
	.quad	0x3fea188f42fe8251              # double 0.81549799999999995
	.quad	0x3fda9ae0c1765775              # double 0.41570299999999999
	.quad	0x3fee16d4c33b5393              # double 0.94028699999999998
	.quad	0x3fc7de69ad42c3ca              # double 0.186475
	.quad	0x3fe516b97fe8ee6c              # double 0.65902400000000005
	.quad	0x3fdb0fa9c12f09d9              # double 0.42283100000000001
	.quad	0x3fec5d67ba237cdd              # double 0.88640200000000002
	.quad	0x3fc632a0663c74fb              # double 0.17341999999999999
	.quad	0x3fcfdbca9691a75d              # double 0.24889500000000001
	.quad	0x3feb2ab474107315              # double 0.84896300000000002
	.quad	0x3fe489f83be6601c              # double 0.64184200000000002
	.quad	0x3fd283a53b8e4b88              # double 0.28928500000000001
	.quad	0x3fdf1d755bccaf71              # double 0.48617300000000002
	.quad	0x3fe0883558a76102              # double 0.51662699999999995
	.quad	0x3fd875e2046c764b              # double 0.38219500000000001
	.quad	0x3fce291fb3fa6df0              # double 0.23563000000000001
	.quad	0x3fe9646ae3a3a8e7              # double 0.79350799999999999
	.quad	0x3fdec2a8869c66d3              # double 0.48063099999999997
	.quad	0x3fd0bead4f5903a7              # double 0.26163799999999998
	.quad	0x3fc33dd97f62b6ae              # double 0.15032499999999999
	.quad	0x3fc36db0dd82fd76              # double 0.151785
	.quad	0x3fcfe2f7b17ce52e              # double 0.249114
	.quad	0x3fd1f922962cfd8f              # double 0.280831
	.quad	0x3fee0f2389720429              # double 0.93934799999999996
	.quad	0x3fe4afc47e49b1fb              # double 0.64645600000000003
	.quad	0x3fe02871a3b14a90              # double 0.50493699999999997
	.quad	0x3fd1ccee5abc0e39              # double 0.27813300000000002
	.quad	0x3feca4766c6de764              # double 0.89507599999999998
	.quad	0x3f9db0142f61ed5b              # double 0.028992
	.quad	0x3fe9eff1950331e4              # double 0.81054000000000003
	.quad	0x3feb4167a95c853c              # double 0.85173399999999999
	.quad	0x3fd29841aac53b08              # double 0.290543
	.quad	0x3fec0fe69270b06c              # double 0.87694099999999997
	.quad	0x3fe0daa2e3c536d6              # double 0.52668899999999996
	.quad	0x3fe847e06961c369              # double 0.75877399999999995
	.quad	0x3fe5dcc20d5629d8              # double 0.68319799999999997
	.quad	0x3febed352220bc38              # double 0.87270599999999998
	.quad	0x3fe8768dfbd6a594              # double 0.76447200000000004
	.quad	0x3fe626f60e0eb67c              # double 0.69225599999999998
	.quad	0x3fef82278d0cc35d              # double 0.98463800000000001
	.quad	0x3fc5850df15a4acf              # double 0.16812299999999999
	.quad	0x3fed8ef566490a35              # double 0.92370099999999999
	.quad	0x3fe6488c60cbf2b2              # double 0.69635599999999998
	.quad	0x3fc9d3dc8b86b160              # double 0.20177800000000001
	.quad	0x3fdb5a20ddc61954              # double 0.42737599999999998
	.quad	0x3fd8709741d084e8              # double 0.38187199999999999
	.quad	0x3fe419a62ed35222              # double 0.62813099999999999
	.quad	0x3fd6dc0980b24207              # double 0.35718
	.quad	0x3fd03edd8b60f1b2              # double 0.25383699999999998
	.quad	0x3fbcd87724fa8b4c              # double 0.112678
	.quad	0x3fe44aec8d5c7475              # double 0.63414599999999999
	.quad	0x3fed31b36bd2b6f2              # double 0.91231700000000004
	.quad	0x3fe5fe1b8ed1bf7b              # double 0.68726900000000002
	.quad	0x3feb38b47c73eee5              # double 0.85067199999999998
	.quad	0x3fd64d44567125dd              # double 0.348466
	.quad	0x3fe8985271bcdbbe              # double 0.768594
	.quad	0x3fe914b380cb6c7a              # double 0.78377699999999995
	.quad	0x3fd95f78359bc340              # double 0.39645200000000003
	.quad	0x3fd2e80389f83be6              # double 0.29541099999999998
	.quad	0x3fe33fa0945f9df5              # double 0.60151699999999997
	.quad	0x3fbe65492ff4ba52              # double 0.11873300000000001
	.quad	0x3fcd01322f2734f8              # double 0.22659899999999999
	.quad	0x3fd028f5c28f5c29              # double 0.2525
	.quad	0x3fceb8ae31d712a1              # double 0.240011
	.quad	0x3fc2cc35ce182667              # double 0.14685699999999999
	.quad	0x3fd7795f676ea423              # double 0.36678300000000003
	.quad	0x3fad44dca8e2e2b9              # double 0.057166000000000002
	.quad	0x3fe3420b3d4ae42a              # double 0.60181200000000001
	.quad	0x3fe02afbc1acde1a              # double 0.505247
	.quad	0x3fbd86338b47c73f              # double 0.115329
	.quad	0x3fda9b0ee49f5169              # double 0.41571399999999997
	.quad	0x3fef1db445ed4a1b              # double 0.97237600000000001
	.quad	0x3fc44c729f59ccfb              # double 0.158583
	.quad	0x3fc27c4199fe4367              # double 0.14441699999999999
	.quad	0x3fe11cb89d6adf72              # double 0.53475600000000001
	.quad	0x3fc5f7c6759ab6d0              # double 0.171624
	.quad	0x3fe2a7eb6bf444e1              # double 0.58299800000000002
	.quad	0x3fdbfed20296b335              # double 0.43742799999999998
	.quad	0x3fed23d4f15e7c8d              # double 0.91062399999999999
	.quad	0x3fd97f90d9d7774b              # double 0.39841100000000002
	.quad	0x3fd90214ad362e90              # double 0.39075199999999999
	.quad	0x3fe7885d31337eb3              # double 0.73539600000000005
	.quad	0x3fe24b4aec8d5c74              # double 0.57169099999999995
	.quad	0x3fc0fee6fb4c3c19              # double 0.13277900000000001
	.quad	0x3fd3e6362a5e785b              # double 0.31092599999999998
	.quad	0x3fcc0b6f9fcb0c02              # double 0.21909899999999999
	.quad	0x3fe51f644955b467              # double 0.66008199999999995
	.quad	0x3fe4844ae85b9e8c              # double 0.64114899999999997
	.quad	0x3fd1d805e5f30e80              # double 0.27881
	.quad	0x3feb62fdfc19c172              # double 0.85583399999999998
	.quad	0x3fb976bc1eff9f88              # double 0.099468000000000001
	.quad	0x3fc6d0c3d25247cb              # double 0.17824599999999999
	.quad	0x3fd1bd512ec6bce8              # double 0.27717999999999998
	.quad	0x3fd259578a2a90cd              # double 0.28670299999999999
	.quad	0x3fe44abe6a337a81              # double 0.63412400000000002
	.quad	0x3febdeb95e5aff2a              # double 0.87093799999999999
	.quad	0x3fec007dd4413554              # double 0.87505999999999994
	.quad	0x3fda15a8deb0fadf              # double 0.40757199999999999
	.quad	0x3f88d1d8a5482385              # double 0.012119
	.quad	0x3fe1f3343fa2ad3f              # double 0.56093800000000005
	.quad	0x3fe042dcf4623d0c              # double 0.508162
	.quad	0x3fdd347e8ccdd93c              # double 0.45632899999999998
	.quad	0x3fa5f99c38b04ab6              # double 0.04292
	.quad	0x3fa4322291fb3fa7              # double 0.039445000000000001
	.quad	0x3fcfb677f6b1a2a5              # double 0.247756
	.quad	0x3fe5f43419e30015              # double 0.68606
	.quad	0x3fd621144cbe1eb4              # double 0.34576899999999999
	.quad	0x3fc7dbf487fcb924              # double 0.18640000000000001
	.quad	0x3fef634330d73861              # double 0.98086700000000004
	.quad	0x3fbb3a8a3f8982cb              # double 0.106362
	.quad	0x3fecaf251c193b3a              # double 0.89637999999999995
	.quad	0x3fe183b81b64e054              # double 0.54732899999999995
	.quad	0x3fe59628cbd1244a              # double 0.67457999999999996
	.quad	0x3fe4190afe60c38f              # double 0.62805699999999998
	.quad	0x3fdffe7e1fc08fa8              # double 0.49990800000000002
	.quad	0x3fe9887ebf22c01e              # double 0.79791199999999995
	.quad	0x3fe7cf1e4b44a1f1              # double 0.74403300000000006
	.quad	0x3fe804c48adeebb3              # double 0.75058199999999997
	.quad	0x3fd8a3bddfc9ff93              # double 0.384994
	.quad	0x3fd45870da5daf08              # double 0.31789800000000001
	.quad	0x3fe6709741d084e8              # double 0.70124399999999998
	.quad	0x3fa8dc55000c953a              # double 0.048556000000000002
	.quad	0x3fd3cd91eeaa6d26              # double 0.30942199999999997
	.quad	0x3fe5683e425aee63              # double 0.66897499999999999
	.quad	0x3feff229e90795f6              # double 0.99831099999999995
	.quad	0x3fe08dc55000c954              # double 0.51730600000000004
	.quad	0x3fe31b3aeee95747              # double 0.59707399999999999
	.quad	0x3fe9182235b4edb3              # double 0.784196
	.quad	0x3fe86368f08461fa              # double 0.76213500000000001
	.quad	0x3fe99ff2e48e8a72              # double 0.80077500000000001
	.quad	0x3fddb8023a6ce358              # double 0.46435599999999999
	.quad	0x3fd3a393ee5eedcc              # double 0.30685899999999999
	.quad	0x3fda9e6687f455a8              # double 0.41591800000000001
	.quad	0x3fc5871e6cd29132              # double 0.168186
	.quad	0x3fee16db0dd82fd7              # double 0.94028999999999996
	.quad	0x3feaa8438088509c              # double 0.83304
	.quad	0x3fee036a832b990b              # double 0.937917
	.quad	0x3fb9f90539fba451              # double 0.101456
	.quad	0x3fc8a0902de00d1b              # double 0.19239999999999999
	.quad	0x3fe86117720c8cd6              # double 0.76185199999999997
	.quad	0x3fe4b9a7c17a8933              # double 0.64766299999999999
	.quad	0x3fe835c5b4aa9718              # double 0.75656400000000001
	.quad	0x3fd097edc7ef177a              # double 0.25927299999999998
	.quad	0x3fa9f46ed245b292              # double 0.050693000000000002
	.quad	0x3fe4fcd898b2e9cd              # double 0.65586500000000003
	.quad	0x3fc536ac647778dd              # double 0.16573099999999999
	.quad	0x3fe7b73d188f42ff              # double 0.74111800000000005
	.quad	0x3feab866e43aa79c              # double 0.83501000000000002
	.quad	0x3fcc880d801b4352              # double 0.22290199999999999
	.quad	0x3fcd97edc7ef177a              # double 0.23119899999999999
	.quad	0x3fedffa5d28d002e              # double 0.93745699999999998
	.quad	0x3faf748a159817b9              # double 0.061435999999999998
	.quad	0x3f73dea465a57647              # double 0.0048510000000000003
	.quad	0x3fec8f16f4384ba1              # double 0.89246700000000001
	.quad	0x3fe95c74751ce28f              # double 0.79253600000000002
	.quad	0x3feeff92f2b66b61              # double 0.96869799999999994
	.quad	0x3fe585058dde7a74              # double 0.67248799999999997
	.quad	0x3fdf39f340d4dc66              # double 0.48791200000000001
	.quad	0x3fec2133c1ce6c09              # double 0.87905299999999997
	.quad	0x3fe4ff6f4be835df              # double 0.65618100000000001
	.quad	0x3f99afe1da7b0b39              # double 0.025085
	.quad	0x3fe5fbbd7b2031cf              # double 0.68698000000000004
	.quad	0x3fd83fd933e35c5b              # double 0.37889699999999998
	.quad	0x3fb7befd00713f07              # double 0.092757999999999993
	.quad	0x3fef41c3efae7925              # double 0.97677800000000003
	.quad	0x3fef7121ab4b72c5              # double 0.98255999999999998
	.quad	0x3fd3e02ea960b6fa              # double 0.310558
	.quad	0x3fb7bd1676640a6c              # double 0.092729000000000006
	.quad	0x3fdff8d2e514c22f              # double 0.49956200000000001
	.quad	0x3fe2ac03ff69014b              # double 0.58349799999999996
	.quad	0x3fd293250b52439a              # double 0.29023100000000002
	.quad	0x3fe870d844d013a9              # double 0.76377499999999998
	.quad	0x3fa9e6256366d7a5              # double 0.050583999999999997
	.quad	0x3fef19dece571088              # double 0.97190799999999999
	.quad	0x3fea488e79aae6c9              # double 0.821357
	.quad	0x3fea88c1db0142f6              # double 0.82919399999999999
	.quad	0x3feb93a92a305532              # double 0.86177499999999996
	.quad	0x3fc1ca8e2e2b8c76              # double 0.13899400000000001
	.quad	0x3fed5ce18266772d              # double 0.91758799999999996
	.quad	0x3fc150fc71d60631              # double 0.13528399999999999
	.quad	0x3f80fd7e45803cd1              # double 0.0082959999999999995
	.quad	0x3feb2917507e9d95              # double 0.84876600000000002
	.quad	0x3fe08de8f6cefed6              # double 0.51732299999999998
	.quad	0x3fdefaa044ae85ba              # double 0.48404700000000001
	.quad	0x3fc6895d0b73d189              # double 0.176067
	.quad	0x3fb304039abf3387              # double 0.074279999999999999
	.quad	0x3fea7922962cfd8f              # double 0.82728699999999999
	.quad	0x3fbbe0ded288ce70              # double 0.1089
	.quad	0x3fdaf727136a4010              # double 0.42133500000000002
	.quad	0x3fd2d744f5d35654              # double 0.29438900000000001
	.quad	0x3fe177121ab4b72c              # double 0.54578499999999996
	.quad	0x3fce1c8216c61523              # double 0.23524500000000001
	.quad	0x3fe5af31b152f3c3              # double 0.67763600000000002
	.quad	0x3fe9a7dcbddb9842              # double 0.80174100000000004
	.quad	0x3fe99cae21101b00              # double 0.80037599999999998
	.quad	0x3fefbf316e371540              # double 0.99208899999999999
	.quad	0x3fe6c154c985f06f              # double 0.71109999999999995
	.quad	0x3f47a89331a08bfc              # double 7.2199999999999999E-4
	.quad	0x3fe6e256366d7a57              # double 0.71512900000000001
	.quad	0x3fcab502ababead5              # double 0.208649
	.quad	0x3fd3eafab53d640f              # double 0.31121700000000002
	.quad	0x3fd129563a9f383f              # double 0.268148
	.quad	0x3fe334373f316e37              # double 0.60012399999999999
	.quad	0x3fdd5e3da2f8bdec              # double 0.45887699999999998
	.quad	0x3fe8f5bc44bf4cb2              # double 0.77999700000000005
	.quad	0x3fe4777292c49342              # double 0.63958099999999996
	.quad	0x3feb95e39713ad5c              # double 0.862047
	.quad	0x3fe6049235f80991              # double 0.68805799999999995
	.quad	0x3fe5ebebe1650a46              # double 0.68504900000000002
	.quad	0x3fc242c7fbacb429              # double 0.14266300000000001
	.quad	0x3fc18a4c1ebc83a9              # double 0.13703299999999999
	.quad	0x3fd3784ec636b096              # double 0.30421799999999999
	.quad	0x3febdaa0cae642c0              # double 0.87043800000000005
	.quad	0x3fd8f69ca9ef5233              # double 0.39005200000000001
	.quad	0x3feae820e6299525              # double 0.84083600000000003
	.quad	0x3fd560807357e671              # double 0.33401500000000001
	.quad	0x3fea75ad96a6a012              # double 0.82686499999999996
	.quad	0x3fe5cb3a2595bbbf              # double 0.68105800000000005
	.quad	0x3fea9d8409e55c10              # double 0.83172800000000002
	.quad	0x3fe797d49d7ba66a              # double 0.73728400000000005
	.quad	0x3fe6c4c165907d91              # double 0.71151799999999998
	.quad	0x3fe5c934267839ce              # double 0.68081100000000006
	.quad	0x3fd47924af0bf1a6              # double 0.31989400000000001
	.quad	0x3fe36ae5bc87db2b              # double 0.60679899999999998
	.quad	0x3fec0f08461f9f02              # double 0.87683500000000003
	.quad	0x3fe671dc50ce4ead              # double 0.70139899999999999
	.quad	0x3fdf630ec3116228              # double 0.490421
	.quad	0x3fe3e24bba12b5e5              # double 0.62137399999999998
	.quad	0x3fcb44ed6fda836f              # double 0.21304100000000001
	.quad	0x3fd6134ce3de614a              # double 0.34492800000000001
	.quad	0x3fe2fcdab191dde3              # double 0.59336599999999995
	.quad	0x3fd76fb4c3c18b50              # double 0.36619299999999999
	.quad	0x3f68e9707182235b              # double 0.0030409999999999999
	.quad	0x3fe2673e681a9b8d              # double 0.57510300000000003
	.quad	0x3fd682e87d2c7b89              # double 0.35174
	.quad	0x3fe3c92ff4ba51a0              # double 0.618309
	.quad	0x3fe1f86c226809d5              # double 0.56157500000000005
	.quad	0x3fd6ea3161a1db87              # double 0.35804399999999997
	.quad	0x3f955b899392189c              # double 0.020857000000000001
	.quad	0x3fdb71cda2b5a20e              # double 0.42882100000000001
	.quad	0x3fd869a91105e1c1              # double 0.38144899999999998
	.quad	0x3fedb69b9d7fd827              # double 0.92854099999999995
	.quad	0x3fc81a47a9e2bcf9              # double 0.188302
	.quad	0x3fe6ca48f96e1587              # double 0.71219299999999996
	.quad	0x3fd706d938151a43              # double 0.35979299999999997
	.quad	0x3fa048387df5cf25              # double 0.031801000000000003
	.quad	0x3fecde939eadd591              # double 0.90217000000000003
	.quad	0x3fee0f10a99b6f5d              # double 0.93933900000000004
	.quad	0x3fdaf0d844d013a9              # double 0.42094999999999999
	.quad	0x3fc1549731098d47              # double 0.13539399999999999
	.quad	0x3fe797b0f6ad70e7              # double 0.73726700000000001
	.quad	0x3fe7aa582dbe7f2c              # double 0.73954399999999998
	.quad	0x3fef7d32c625e99f              # double 0.98403300000000004
	.quad	0x3fdd0fb224aada34              # double 0.45408300000000001
	.quad	0x3fe9ec2699c7bcc3              # double 0.81007700000000005
	.quad	0x3fefe4ece9a2c669              # double 0.99669499999999999
	.quad	0x3fe268a2ec28b2a7              # double 0.57527300000000003
	.quad	0x3fb8b4aec8d5c747              # double 0.096506999999999996
	.quad	0x3fdf6e71cda2b5a2              # double 0.491116
	.quad	0x3fd1df548ecd8dbd              # double 0.279256
	.quad	0x3fcd0f40e5a35d68              # double 0.22702800000000001
	.quad	0x3fec72862f5989df              # double 0.88897999999999999
	.quad	0x3fd551dabe27179c              # double 0.333121
	.quad	0x3fe479a6b50b0f28              # double 0.63985000000000003
	.quad	0x3fed996b76709fa5              # double 0.92497799999999997
	.quad	0x3fa91ba3ca7503b8              # double 0.049038999999999999
	.quad	0x3fea3acb4289118c              # double 0.81967699999999998
	.quad	0x3fe4d666a98244e9              # double 0.65117199999999997
	.quad	0x3feec4bb1af3a14d              # double 0.961515
	.quad	0x3fe225e56cd6c2f0              # double 0.56712600000000002
	.quad	0x3fe3fc286f8ad256              # double 0.62453099999999995
	.quad	0x3fead1116a8b8f15              # double 0.83802100000000002
	.quad	0x3fdca6a012599ed8              # double 0.44767000000000001
	.quad	0x3fbc4449dbec2481              # double 0.110417
	.quad	0x3fcda376922d948e              # double 0.23155100000000001
	.quad	0x3fe34cb9ecf63800              # double 0.60311599999999999
	.quad	0x3fe816a6a012599f              # double 0.75276500000000002
	.quad	0x3fe60f29d40ee06e              # double 0.68935100000000005
	.quad	0x3fd4dcd2d44dca8e              # double 0.32597799999999999
	.quad	0x3fd3b39192641b33              # double 0.30783500000000003
	.quad	0x3fc8e70c1333b96b              # double 0.194551
	.quad	0x3fe229563a9f383f              # double 0.56754599999999999
	.quad	0x3fe73baba7b9170d              # double 0.72603399999999996
	.quad	0x3fdae5c0b9991362              # double 0.42027300000000001
	.quad	0x3fcc81f53825e13b              # double 0.222716
	.quad	0x3fe658ff75968512              # double 0.69836399999999998
	.quad	0x3fcff0c34c1a8ac6              # double 0.24953500000000001
	.quad	0x3fe80c6b484d76ab              # double 0.75151599999999996
	.quad	0x3fe3cd8dbcec84f9              # double 0.618842
	.quad	0x3fcb4eebf65dbfcf              # double 0.21334600000000001
	.quad	0x3fcda09cc319c5a4              # double 0.231464
	.quad	0x3fefacb20fb224ab              # double 0.98983100000000001
	.quad	0x3fa45564b662fdfc              # double 0.039713999999999999
	.quad	0x3fed00abf76a2f49              # double 0.90633200000000003
	.quad	0x3fe5f98fa376922e              # double 0.68671400000000005
	.quad	0x3fd4c25d074213a1              # double 0.32436300000000001
	.quad	0x3fe6f865d7cb2d90              # double 0.71782199999999996
	.quad	0x3fea391f70de8f6d              # double 0.81947300000000001
	.quad	0x3fac23fab10ba626              # double 0.054961999999999997
	.quad	0x3fb0cc89b0ee49f5              # double 0.065620999999999999
	.quad	0x3fdeb7f1737542a2              # double 0.47997699999999999
	.quad	0x3fe692ba16e7a312              # double 0.70541100000000001
	.quad	0x3fbc8e581cf7878b              # double 0.11154699999999999
	.quad	0x3fac0c8472c0e7bc              # double 0.054782999999999998
	.quad	0x3fef602ea960b6fa              # double 0.980491
	.quad	0x3fef29973d9ec700              # double 0.973827
	.quad	0x3f83fd933e35c5b5              # double 0.0097610000000000005
	.quad	0x3fe1b13be22e5de1              # double 0.55288499999999996
	.quad	0x3fe8ce22a2c23748              # double 0.77516300000000005
	.quad	0x3fc205e5f30e7ff6              # double 0.14080500000000001
	.quad	0x3fea6d1394317acc              # double 0.82581499999999996
	.quad	0x3fecb6113404ea4b              # double 0.89722500000000005
	.quad	0x3fdd2c386d2ed784              # double 0.45582400000000001
	.quad	0x3fdb8605681ecd4b              # double 0.43005500000000002
	.quad	0x3feaf42dcf4623d1              # double 0.84230700000000003
	.quad	0x3fd46249a133c1ce              # double 0.31849899999999998
	.quad	0x3fdaa1059ea57215              # double 0.416078
	.quad	0x3fed66d58c8eef1c              # double 0.91880300000000003
	.quad	0x3fe7035dedf1e083              # double 0.71916100000000005
	.quad	0x3fc86d15ad106ee3              # double 0.190829
	.quad	0x3fdb0c9d9d3458cd              # double 0.42264499999999999
	.quad	0x3fd9046412cf0f9d              # double 0.39089299999999999
	.quad	0x3fa3fd50225742dd              # double 0.039042
	.quad	0x3fee1780baa582dc              # double 0.94036900000000001
	.quad	0x3fb9742dcf4623d1              # double 0.099429000000000003
	.quad	0x3fe3d881a1554fbe              # double 0.62017900000000004
	.quad	0x3fd74f1e4b44a1f1              # double 0.36420400000000003
	.quad	0x3fea3324851a8694              # double 0.81874299999999999
	.quad	0x3fe815bdd76683c3              # double 0.75265400000000005
	.quad	0x3fe812146a1a500d              # double 0.75220699999999996
	.quad	0x3f9b6e935b91f70e              # double 0.026789
	.quad	0x3fee8bf1a5ca2984              # double 0.95458299999999995
	.quad	0x3f3b003686a4ca4f              # double 4.1199999999999999E-4
	.quad	0x3fdf97fa5d28d003              # double 0.49365100000000001
	.quad	0x3fe01dc2f405f6ba              # double 0.503633
	.quad	0x3fe15352220bc383              # double 0.54142100000000004
	.quad	0x3faf533f42352eb6              # double 0.061182
	.quad	0x3fe451ce28ed5f14              # double 0.63498600000000005
	.quad	0x3f959146e4c0df59              # double 0.021062000000000001
	.quad	0x3fe4bd9018e75793              # double 0.64814000000000005
	.quad	0x3fde17d6b65a9a80              # double 0.47020499999999998
	.quad	0x3fb5a89b951c5c57              # double 0.084603999999999999
	.quad	0x3fd4c868b9fdbd30              # double 0.32473200000000002
	.quad	0x3fe4ece13f4a98ab              # double 0.65391600000000005
	.quad	0x3fc3142b302f72b4              # double 0.14905299999999999
	.quad	0x3fe9cbea4ebdd335              # double 0.80614200000000003
	.quad	0x3fd5ebb341e14be0              # double 0.34251100000000001
	.quad	0x3fd4945f9df548ed              # double 0.32155600000000001
	.quad	0x3fe76f39085f4a12              # double 0.73232699999999995
	.quad	0x3fe72f87ad080b67              # double 0.72455199999999997
	.quad	0x3fa5712a0ec74320              # double 0.041879
	.quad	0x3fda068123810e88              # double 0.40664699999999998
	.quad	0x3fee6d4e4c942d49              # double 0.95084299999999999
	.quad	0x3fe901a1554fbdad              # double 0.78144899999999995
	.quad	0x3fca14df8b157258              # double 0.203762
	.quad	0x3fee6ef1bac2df0d              # double 0.95104299999999997
	.quad	0x3fe1d45a5fc7e6b4              # double 0.557172
	.quad	0x3fee210be9424e59              # double 0.94153399999999998
	.quad	0x3fe35a35d67ba238              # double 0.60476200000000002
	.quad	0x3fda9b13165d3997              # double 0.415715
	.quad	0x3f8859c8c9320d99              # double 0.01189
	.quad	0x3fc7f47735c182ed              # double 0.18714800000000001
	.quad	0x3fde9a77e5eaab04              # double 0.47817799999999999
	.quad	0x3fd092641b328b6e              # double 0.25893500000000003
	.quad	0x3fd57a52ac753e70              # double 0.33559099999999997
	.quad	0x3fef7ad2999567dc              # double 0.98374300000000003
	.quad	0x3fec58622c450269              # double 0.88578900000000005
	.quad	0x3fe311148fd9fd37              # double 0.595835
	.quad	0x3fefeaf6837f7be1              # double 0.99743199999999998
	.quad	0x3fdf45c78a6dacac              # double 0.48863400000000001
	.quad	0x3fd5076c050bd87b              # double 0.32857799999999998
	.quad	0x3feead1f1cfbb949              # double 0.95863299999999995
	.quad	0x3fca38088509bf9c              # double 0.20483499999999999
	.quad	0x3fc5df86e3b46fdf              # double 0.17088400000000001
	.quad	0x3fec46887a8d64d8              # double 0.88361000000000001
	.quad	0x3feddc810a569b17              # double 0.93316699999999997
	.quad	0x3fc789f83be6601c              # double 0.18389800000000001
	.quad	0x3fe81253543aeab8              # double 0.75223700000000004
	.quad	0x3fd13e707e175d14              # double 0.26943600000000001
	.quad	0x3fc0ffd1dcd7060c              # double 0.13280700000000001
	.quad	0x3fe79dd7ecbb7f9d              # double 0.73801799999999995
	.quad	0x3feb75989df1172f              # double 0.85810500000000001
	.quad	0x3fd46616b54e2b06              # double 0.31873099999999999
	.quad	0x3fe872e48e8a71de              # double 0.76402499999999995
	.quad	0x3fdcab5807fed203              # double 0.44795800000000002
	.quad	0x3fe9a38759253544              # double 0.80121200000000003
	.quad	0x3fd4986fcdee34fc              # double 0.32180399999999998
	.quad	0x3fa24df47f993d53              # double 0.035750999999999998
	.quad	0x3fba2706d5065732              # double 0.102158
	.quad	0x3fe908fa7a85015c              # double 0.78234599999999998
	.quad	0x3fe08068db8bac71              # double 0.51567499999999999
	.quad	0x3f6ad85dfa871a3b              # double 0.003277
	.quad	0x3fc4e3de6149c6f3              # double 0.16320399999999999
	.quad	0x3fc8f1886df82b1f              # double 0.19487099999999999
	.quad	0x3fe9bc0a06e9ff0d              # double 0.80420400000000003
	.quad	0x3fe94a83b1d0c804              # double 0.79034599999999999
	.quad	0x3fdb038194c01605              # double 0.42208899999999999
	.quad	0x3fe2da708ede54b5              # double 0.58916500000000005
	.quad	0x3fd397cc39ffd60f              # double 0.30614000000000002
	.quad	0x3fe915011904b3c4              # double 0.78381400000000001
	.quad	0x3feafc43b2dd377e              # double 0.84329399999999999
	.quad	0x3fd9549f94855da2              # double 0.39578999999999998
	.quad	0x3fe26edcc20d562a              # double 0.57603300000000002
	.quad	0x3fefc3eb7cbb3c82              # double 0.99266600000000005
	.quad	0x3fd6d451fc4c1659              # double 0.356709
	.quad	0x3fe04a44c7b02d5a              # double 0.50906600000000002
	.quad	0x3fe39abd1aa821f3              # double 0.61263900000000004
	.quad	0x3fe1fa8f7db6e504              # double 0.561836
	.quad	0x3fd092684cf0739b              # double 0.258936
	.quad	0x3fe9b0079a2834d2              # double 0.80273799999999995
	.quad	0x3fde63c31df761cc              # double 0.47483900000000001
	.quad	0x3fd5f0b28522ea10              # double 0.34281600000000001
	.quad	0x3fe6c66d373affb0              # double 0.71172199999999997
	.quad	0x3fedd0f6273929ed              # double 0.93175799999999998
	.quad	0x3feecba51a005c46              # double 0.96235899999999996
	.quad	0x3fe1ca83b1d0c804              # double 0.55597099999999999
	.quad	0x3fea19e0e736049f              # double 0.81565900000000002
	.quad	0x3fec6d0b30b5aa71              # double 0.88831099999999996
	.quad	0x3fef7a311e85fd05              # double 0.98366600000000004
	.quad	0x3fee6cedd4845133              # double 0.950797
	.quad	0x3fea5fcc1871e6cd              # double 0.82419399999999998
	.quad	0x3fe10e581cf7878b              # double 0.53300099999999995
	.quad	0x3fe80cc9a77e5eab              # double 0.75156100000000003
	.quad	0x3fec93c68661ae71              # double 0.89303900000000003
	.quad	0x3fc2f0cfe154434e              # double 0.14797399999999999
	.quad	0x3fefea2b1704ff43              # double 0.99733499999999997
	.quad	0x3fd411233df2a9d6              # double 0.31354599999999999
	.quad	0x3fb9193708aac96d              # double 0.098041000000000003
	.quad	0x3f9dd616f86a0989              # double 0.029137
	.quad	0x3fe368661ae70c13              # double 0.60649399999999998
	.quad	0x3fda66dbd72bcb60              # double 0.41252800000000001
	.quad	0x3fe0d2d234eb9a17              # double 0.52573499999999995
	.quad	0x3fe6eca03c4b09ea              # double 0.71638500000000005
	.quad	0x3fe110f0e90bc7b4              # double 0.53331799999999996
	.quad	0x3f8060bb2bba98ee              # double 0.0079970000000000006
	.quad	0x3fecb6c58eeae9ee              # double 0.89731099999999997
	.quad	0x3fe9d7a355043e53              # double 0.80757299999999999
	.quad	0x3fa058dde7a743a6              # double 0.031927999999999998
	.quad	0x3fed4c1ca3a4b557              # double 0.91554100000000005
	.quad	0x3fef7d45a5fc7e6b              # double 0.98404199999999997
	.quad	0x3fb4d1958969a0ae              # double 0.081323000000000006
	.quad	0x3fe473775b813016              # double 0.63909499999999997
	.quad	0x3fd961c79b34a44c              # double 0.39659299999999997
	.quad	0x3fec3126e978d4fe              # double 0.88100000000000001
	.quad	0x3fbd1e215336deb9              # double 0.11374099999999999
	.quad	0x3fc8d8a979e16d6e              # double 0.19411200000000001
	.quad	0x3fe34c55432873bd              # double 0.60306800000000005
	.quad	0x3fdd5989df1172ef              # double 0.45859
	.quad	0x3fd75b1422ccb3a2              # double 0.36493399999999998
	.quad	0x3fd99c779a6b50b1              # double 0.400175
	.quad	0x3fe0cfb97bb73083              # double 0.52535699999999996
	.quad	0x3fe176a0dbad3a60              # double 0.54573099999999997
	.quad	0x3fdf2dc6e2a80065              # double 0.48716900000000002
	.quad	0x3fb26ddf00abf76a              # double 0.071988999999999997
	.quad	0x3fe8812dfd694ccb              # double 0.76576900000000003
	.quad	0x3fef24894c447c31              # double 0.97321000000000001
	.quad	0x3fe578feef5ec80c              # double 0.67101999999999995
	.quad	0x3fe60af5fd47bedb              # double 0.68883799999999995
	.quad	0x3fe073f0fe047d3d              # double 0.51415299999999997
	.quad	0x3f91aef6f8f04146              # double 0.017269
	.quad	0x3f9b8ae31d712a0f              # double 0.026897000000000001
	.quad	0x3fefc4b6e935b91f              # double 0.99276299999999995
	.quad	0x3fecc6d612c6ac21              # double 0.89927199999999996
	.quad	0x3fd860285ec3dab6              # double 0.38086900000000001
	.quad	0x3fcb558a76102795              # double 0.21354799999999999
	.quad	0x3fbca8d21bc126a6              # double 0.11195099999999999
	.quad	0x3fe2f0fbeb9e492c              # double 0.59191700000000003
	.quad	0x3fb7f1e8e6080735              # double 0.093534999999999993
	.quad	0x3fe242c3c9eecbfb              # double 0.57064999999999999
	.quad	0x3fa53ac4f7ec3548              # double 0.041464000000000001
	.quad	0x3fed914d2f5dbb9d              # double 0.923987
	.quad	0x3fe1ab042528ae75              # double 0.55212600000000001
	.quad	0x3fef7a3fcc9ea9a4              # double 0.98367300000000001
	.quad	0x3fe2f5579af1886e              # double 0.592449
	.quad	0x3f97d6733ebbfd72              # double 0.023279000000000001
	.quad	0x3fd6c8366516db0e              # double 0.35597000000000001
	.quad	0x3fca6ce358298cc1              # double 0.20644799999999999
	.quad	0x3fee917507e9d94d              # double 0.95525599999999999
	.quad	0x3fd2c9ff92f2b66b              # double 0.29357899999999998
	.quad	0x3fdf32441fea8113              # double 0.48744300000000002
	.quad	0x3febae6ea8544780              # double 0.86504300000000001
	.quad	0x3fe199806f262889              # double 0.54998800000000003
	.quad	0x3fe6c3f1c75818c6              # double 0.71141900000000002
	.quad	0x3feca99fa11a975b              # double 0.895706
	.quad	0x3fecbb1d0c804103              # double 0.897841
	.quad	0x3fe8c39ffd60e94f              # double 0.77388000000000001
	.quad	0x3fe85916872b020c              # double 0.76087499999999996
	.quad	0x3fe7b302f72b4528              # double 0.74060199999999998
	.quad	0x3fe0d9c8c9320d99              # double 0.52658499999999997
	.quad	0x3fb8adddf43c7d5f              # double 0.096403000000000003
	.quad	0x3fb55da272862f5a              # double 0.083460000000000006
	.quad	0x3fd4ed06fef7c244              # double 0.32696700000000001
	.quad	0x3fdc56798958d9b6              # double 0.442778
	.quad	0x3fec119ef954eb14              # double 0.87715100000000001
	.quad	0x3fc1a3b14a90470b              # double 0.13780800000000001
	.quad	0x3fe3cae429e0a41a              # double 0.61851699999999998
	.quad	0x3feec9d16fc9bc77              # double 0.96213599999999999
	.quad	0x3f99784ec636b096              # double 0.024872999999999999
	.quad	0x3fd76f9b994e1a3f              # double 0.36618699999999998
	.quad	0x3fe522e3c536d656              # double 0.66050900000000001
	.quad	0x3fe2e01ffb480a5b              # double 0.58985900000000002
	.quad	0x3fbcb9ecf6380022              # double 0.11221200000000001
	.quad	0x3fd059e1f3a57eaa              # double 0.25548599999999999
	.quad	0x3f8caa7589efd86b              # double 0.013997000000000001
	.quad	0x3fe1f6c050bd87b5              # double 0.56137099999999995
	.quad	0x3fe05ce7cd035372              # double 0.51134100000000005
	.quad	0x3fd69d1b2e59af9f              # double 0.35333900000000001
	.quad	0x3fea736ac647778e              # double 0.82658900000000002
	.quad	0x3fe56f7c243dccea              # double 0.66985899999999998
	.quad	0x3fe09231c64ba94c              # double 0.51784600000000003
	.quad	0x3fe653458cd20afa              # double 0.69766499999999998
	.quad	0x3fe0acadddf43c7d              # double 0.52107899999999996
	.quad	0x3fa114b167ec7864              # double 0.033361000000000002
	.quad	0x3fe81c432ca57a78              # double 0.75344999999999995
	.quad	0x3fcf158b827fa1a1              # double 0.24284500000000001
	.quad	0x3fe913d74d594f27              # double 0.78367200000000004
	.quad	0x3fdf66ba493c89f4              # double 0.490645
	.quad	0x3fcaa600b0292817              # double 0.20819099999999999
	.quad	0x3f82085b18548a9c              # double 0.0088050000000000003
	.quad	0x3fe5a4a276b7ed42              # double 0.67634700000000003
	.quad	0x3feea71151611ba4              # double 0.95789400000000002
	.quad	0x3fdc165d3996fa83              # double 0.43886500000000001
	.quad	0x3fe7f8982cb20fb2              # double 0.74909599999999998
	.quad	0x3feafffbce4217d3              # double 0.84374800000000005
	.quad	0x3fd77674d1633483              # double 0.36660500000000001
	.quad	0x3fe3ba109d0635a4              # double 0.61646299999999998
	.quad	0x3fd3e9531550ca1d              # double 0.311116
	.quad	0x3fe99835158b8280              # double 0.79983000000000004
	.quad	0x3fd70917d6b65a9b              # double 0.35993000000000003
	.quad	0x3fe7b2ca57a786c2              # double 0.74057499999999998
	.quad	0x3fd0b042528ae74f              # double 0.26075799999999999
	.quad	0x3fef2c322291fb40              # double 0.97414500000000003
	.quad	0x3fe7420f6f08cc57              # double 0.72681399999999996
	.quad	0x3feb7631b584b1ab              # double 0.858178
	.quad	0x3fc19a8cdea033e8              # double 0.13752900000000001
	.quad	0x3fe9b93250b5243a              # double 0.80385700000000004
	.quad	0x3fe37ad2999567dc              # double 0.60874300000000003
	.quad	0x3fd0296b3354c122              # double 0.25252799999999997
	.quad	0x3fe20db48909289e              # double 0.56417300000000004
	.quad	0x3fe182773e24febd              # double 0.547176
	.quad	0x3fc6cb8e086bdf4c              # double 0.178087
	.quad	0x3fd260d0247021d1              # double 0.287159
	.quad	0x3fedc5c9a34ca0c3              # double 0.93039400000000005
	.quad	0x3fe3af5fd47bedb7              # double 0.61515799999999998
	.quad	0x3fe1252263d816ad              # double 0.53578300000000001
	.quad	0x3fc1f559b3d07c85              # double 0.14030000000000001
	.quad	0x3fe6e2a80064a9ce              # double 0.71516800000000003
	.quad	0x3fdc0c1b97353b4b              # double 0.43823899999999999
	.quad	0x3fe7362845996745              # double 0.72536100000000003
	.quad	0x3fd0947496aad1d0              # double 0.25906099999999999
	.quad	0x3fd1fc5cdd50a88f              # double 0.281028
	.quad	0x3fb32734f82f5126              # double 0.074816999999999995
	.quad	0x3fee488e79aae6c9              # double 0.946357
	.quad	0x3feea830a0b1bbcf              # double 0.95803099999999996
	.quad	0x3fd33fab10ba6267              # double 0.300761
	.quad	0x3fe53ffcdab191de              # double 0.66406100000000001
	.quad	0x3fd2d1d041cc532a              # double 0.29405599999999998
	.quad	0x3fb6a23bff8a8f3b              # double 0.088413000000000005
	.quad	0x3fd8794a6eb91b3f              # double 0.38240299999999999
	.quad	0x3fe1c68448cf7caa              # double 0.55548299999999995
	.quad	0x3fe27102363b2570              # double 0.576295
	.quad	0x3fab393ab430f495              # double 0.053171000000000003
	.quad	0x3fdec33f85510d39              # double 0.48066700000000001
	.quad	0x3feb787f023e9ea1              # double 0.85845899999999997
	.quad	0x3fd14901d19157ac              # double 0.27008100000000002
	.quad	0x3fb35fc3b4f61672              # double 0.075679999999999997
	.quad	0x3fe2ee7c49fd7a14              # double 0.59161200000000003
	.quad	0x3fc38d3f1843c3a4              # double 0.15274799999999999
	.quad	0x3fe43c148344c37e              # double 0.63233399999999995
	.quad	0x3fe2b00ffda4052d              # double 0.58399199999999996
	.quad	0x3fe8c881e4712e41              # double 0.77447600000000005
	.quad	0x3fdbc6e6d9be4cd7              # double 0.43401499999999998
	.quad	0x3fed57518b0d0edc              # double 0.91690899999999997
	.quad	0x3fe6747f993d5348              # double 0.70172100000000004
	.quad	0x3fccb06c43f5f916              # double 0.224134
	.quad	0x3fd4af89c5e6ff7e              # double 0.323214
	.quad	0x3fe7810e8858ff76              # double 0.73450400000000005
	.quad	0x3fec840e1719f7f9              # double 0.89112000000000002
	.quad	0x3fc868f4b61fe21e              # double 0.19070300000000001
	.quad	0x3fe55655e28aa433              # double 0.66678899999999997
	.quad	0x3fe07913e81450f0              # double 0.51478000000000002
	.quad	0x3fae7e414e7ee914              # double 0.059556999999999999
	.quad	0x3fe2980b242070b9              # double 0.58106000000000002
	.quad	0x3fec76709fa54c55              # double 0.88945799999999997
	.quad	0x3fd4a33bd9cae211              # double 0.322463
	.quad	0x3fd3b2a6b0d95140              # double 0.30777900000000002
	.quad	0x3fec99cbee807bbb              # double 0.89377399999999996
	.quad	0x3fd1eae9ee45c359              # double 0.27996300000000002
	.quad	0x3fef2c7b890d5a5c              # double 0.97418000000000004
	.quad	0x3fe3c93a71151612              # double 0.61831400000000003
	.quad	0x3fd7717df19d66ae              # double 0.36630200000000002
	.quad	0x3feac4b6e935b91f              # double 0.83651299999999995
	.quad	0x3feee8bc169c23b8              # double 0.96591000000000004
	.quad	0x3fd73ff69014b59a              # double 0.36327900000000002
	.quad	0x3feebc23315d701e              # double 0.96046600000000004
	.quad	0x3fe96e696a26e547              # double 0.79472799999999999
	.quad	0x3fd8de4c51116a8c              # double 0.38856800000000002
	.quad	0x3fe9bdc26dce39b4              # double 0.80441399999999996
	.quad	0x3fd353a3ec02f2fa              # double 0.30198000000000003
	.quad	0x3fd4925785f8d2e5              # double 0.321432
	.quad	0x3feb3925bb7b6bb1              # double 0.85072599999999998
	.quad	0x3fd99fd36f7e3d1d              # double 0.40038000000000001
	.quad	0x3fd125fe974a3401              # double 0.26794400000000002
	.quad	0x3fee13d102bc72e2              # double 0.93991899999999995
	.quad	0x3fedaa9930be0ded              # double 0.92707499999999998
	.quad	0x3fd92c59fb1e18f0              # double 0.39333200000000001
	.quad	0x3fe95f394b7b2895              # double 0.79287399999999997
	.quad	0x3fe97077ccc03793              # double 0.79497899999999999
	.quad	0x3fc21a9b8cb8e087              # double 0.14143700000000001
	.quad	0x3fcdf18c9fb6134d              # double 0.233934
	.quad	0x3fd0708aac96cc60              # double 0.25686900000000001
	.quad	0x3fe97136a400fba9              # double 0.79507000000000005
	.quad	0x3fbf8a3b57c4e2f3              # double 0.12320299999999999
	.quad	0x3fe68eb67c286f8b              # double 0.70492100000000002
	.quad	0x3fd958298cc14403              # double 0.39600600000000002
	.quad	0x3fed4894c447c30d              # double 0.91510999999999998
	.quad	0x3fe12f07bfe7e1fc              # double 0.536991
	.quad	0x3fd515b1422ccb3a              # double 0.32944899999999999
	.quad	0x3fcc78e1932d6ece              # double 0.222439
	.quad	0x3fe31ebe9c886163              # double 0.59750300000000001
	.quad	0x3fd3f6837f7be122              # double 0.311921
	.quad	0x3fd2b4289118c198              # double 0.29224600000000001
	.quad	0x3fcf802c0a4a05de              # double 0.24609900000000001
	.quad	0x3fa94ea077036c9c              # double 0.049428
	.quad	0x3fdf97cc39ffd60f              # double 0.49364000000000002
	.quad	0x3fe026b723ee1bd2              # double 0.50472600000000001
	.quad	0x3fe5da7d24180d3d              # double 0.682921
	.quad	0x3fc7608d08919ef9              # double 0.18263399999999999
	.quad	0x3fe85c03361565c3              # double 0.76123200000000002
	.quad	0x3fe6691ea78af3e4              # double 0.70033199999999995
	.quad	0x3fea12dfd694ccab              # double 0.81480399999999997
	.quad	0x3fcb2d5e071c53f4              # double 0.21232200000000001
	.quad	0x3fc6f0ae536501e2              # double 0.17921999999999999
	.quad	0x3fe725e99e94ab1d              # double 0.72337799999999997
	.quad	0x3fd1aae297396d09              # double 0.27605499999999999
	.quad	0x3fdfd028a1dfb939              # double 0.49708000000000002
	.quad	0x3fc50257c914b168              # double 0.164134
	.quad	0x3fec6d02cd39da16              # double 0.88830699999999996
	.quad	0x3fd77b139c94f69d              # double 0.36688700000000002
	.quad	0x3fd4266772d5e072              # double 0.31484400000000001
	.quad	0x3fcddd5d3dc8b86b              # double 0.233318
	.quad	0x3fed817b95a29414              # double 0.92205599999999998
	.quad	0x3fc218611fd5885d              # double 0.14136899999999999
	.quad	0x3fee4bdfd2630ec3              # double 0.94676199999999999
	.quad	0x3fe911a75cd0bb6f              # double 0.78340500000000002
	.quad	0x3fd5f8c64fdb09a6              # double 0.34330899999999998
	.quad	0x3fe3fddebd9018e7              # double 0.62473999999999996
	.quad	0x3fce8effe2a3cea7              # double 0.23873900000000001
	.quad	0x3fe06878fabda0e0              # double 0.51275300000000001
	.quad	0x3fbdf548ecd8dbcf              # double 0.117024
	.quad	0x3fb1ee34fc610f0f              # double 0.070041000000000006
	.quad	0x3fe31aa821f2990f              # double 0.59700399999999998
	.quad	0x3fe03c27631b584b              # double 0.50734299999999999
	.quad	0x3fc0f2a5a469d734              # double 0.13240499999999999
	.quad	0x3fbdd627bf61aa3f              # double 0.116549
	.quad	0x3fe09d3cbc48f10b              # double 0.51919400000000004
	.quad	0x3fdc9d627bf61aa4              # double 0.447106
	.quad	0x3fe0e8d10f51ac9b              # double 0.52842
	.quad	0x3fe7ae48e8a71de7              # double 0.74002500000000004
	.quad	0x3fea3996fa82e87d              # double 0.81952999999999998
	.quad	0x3fcd35f3d7d3910c              # double 0.228209
	.quad	0x3fc8dd7a99fa11a9              # double 0.19425899999999999
	.quad	0x3fcd7ea1c68ec52a              # double 0.23042699999999999
	.quad	0x3fc8aa326e115593              # double 0.192694
	.quad	0x3fe451b71758e219              # double 0.63497499999999996
	.quad	0x3fe54286f8ad2568              # double 0.66437100000000004
	.quad	0x3fecf97891e21533              # double 0.90545299999999995
	.quad	0x3fecf922962cfd8f              # double 0.90541199999999999
	.quad	0x3fd3b4f1e4b44a1f              # double 0.307919
	.quad	0x3fd14ccab3edd8b6              # double 0.270312
	.quad	0x3fc012c6ac215b9a              # double 0.12557299999999999
	.quad	0x3fe7eb9e492bc2fc              # double 0.74751199999999995
	.quad	0x3fd6787485e3da30              # double 0.35110200000000003
	.quad	0x3fc748c2e770bd01              # double 0.18190799999999999
	.quad	0x3fdf50ce4ead0c3d              # double 0.48930699999999999
	.quad	0x3fcf48dc11e42e12              # double 0.24441099999999999
	.quad	0x3feaee19b90ea9e7              # double 0.84156500000000001
	.quad	0x3fed3990afe60c39              # double 0.91327700000000001
	.quad	0x3fc3800a7c5ac472              # double 0.15234500000000001
	.quad	0x3fee005a2d72ffd2              # double 0.93754300000000002
	.quad	0x3fe7843a2163fdd6              # double 0.73489099999999996
	.quad	0x3fed679ee02a77a3              # double 0.91889900000000002
	.quad	0x3fddd4b6a619da9d              # double 0.46610800000000002
	.quad	0x3fd4df1172ef0ae5              # double 0.32611499999999999
	.quad	0x3fd8e09784ec636b              # double 0.388708
	.quad	0x3fe721682f944242              # double 0.72282800000000003
	.quad	0x3fd94f69ca9ef523              # double 0.39547199999999999
	.quad	0x3fee6b5b2d4d4025              # double 0.95060500000000003
	.quad	0x3fd5a67e846a5d6c              # double 0.338287
	.quad	0x3feafffde7210be9              # double 0.84374899999999997
	.quad	0x3fe6b53d640e9d52              # double 0.70962400000000003
	.quad	0x3fea95db3397dd01              # double 0.830793
	.quad	0x3fbd615ebfa8f7db              # double 0.11476699999999999
	.quad	0x3fd92da554b8bef9              # double 0.39341100000000001
	.quad	0x3feb529563a9f384              # double 0.853831
	.quad	0x3feffa7a85015c21              # double 0.99932600000000004
	.quad	0x3fedc0fcb4f1e4b4              # double 0.92980799999999996
	.quad	0x3fedac6045baf534              # double 0.927292
	.quad	0x3fe53c0c1fc8f323              # double 0.66357999999999995
	.quad	0x3fe825e13b18dac2              # double 0.75462399999999996
	.quad	0x3fd722e1ac57e23f              # double 0.36150399999999999
	.quad	0x3feea8ef77f27fe5              # double 0.95812200000000002
	.quad	0x3fec6ccc46950fc7              # double 0.88828099999999999
	.quad	0x3fe4146a1a500d5f              # double 0.62749200000000005
	.quad	0x3fd5776c4827b6fe              # double 0.33541399999999999
	.quad	0x3fc43443d46b26c0              # double 0.15784500000000001
	.quad	0x3fe9a7503b81b64e              # double 0.801674
	.quad	0x3faf6fd21ff2e48f              # double 0.061400000000000003
	.quad	0x3fefd60e94ee392e              # double 0.99487999999999999
	.quad	0x3fcc1d96e9bbf0dc              # double 0.21965299999999999
	.quad	0x3fe0fa311e85fd05              # double 0.53054100000000004
	.quad	0x3fcae831ad2135db              # double 0.21021100000000001
	.quad	0x3fe1ecdaf4adbc66              # double 0.56016299999999997
	.quad	0x3fc72b3461309c80              # double 0.181006
	.quad	0x3f625fe974a3400c              # double 0.0022430000000000002
	.quad	0x3fd20caa326e1156              # double 0.28202300000000002
	.quad	0x3fea23db3bfb58d1              # double 0.81687699999999996
	.quad	0x3fe415b1422ccb3a              # double 0.62764799999999998
	.quad	0x3f947778dd616f87              # double 0.019987000000000001
	.quad	0x3fc4dfaca3619978              # double 0.163076
	.quad	0x3fe36527a20578e6              # double 0.60609800000000003
	.quad	0x3fe1d3996fa82e88              # double 0.55708000000000002
	.quad	0x3febfa1a0cf1800a              # double 0.87427999999999995
	.quad	0x3fe30af3e468cac5              # double 0.59508700000000003
	.quad	0x3fe5d30ced4e4c94              # double 0.68201299999999998
	.quad	0x3fe405058dde7a74              # double 0.62561299999999997
	.quad	0x3fdc9a8cdea033e8              # double 0.44693300000000002
	.quad	0x3fec3a732df505d1              # double 0.882135
	.quad	0x3fe4167ec7863bef              # double 0.62774600000000003
	.quad	0x3fd029f16b11c6d2              # double 0.25256000000000001
	.quad	0x3fe405a0be510907              # double 0.62568699999999999
	.quad	0x3fe08bd87b56b873              # double 0.51707099999999995
	.quad	0x3fbbf4cb1897a67a              # double 0.109204
	.quad	0x3fe8dfe32a0663c7              # double 0.77732999999999997
	.quad	0x3fc8cc3e3193f6c2              # double 0.19373299999999999
	.quad	0x3f7b584b1ab0856e              # double 0.0066759999999999996
	.quad	0x3fe6e8709741d085              # double 0.71587400000000001
	.quad	0x3fca522ea0fd3b2a              # double 0.20563300000000001
	.quad	0x3fd3ed7c6fbd273d              # double 0.31136999999999998
	.quad	0x3fbd972cd7cf5f4e              # double 0.115588
	.quad	0x3fd47b4a2339c0ec              # double 0.320025
	.quad	0x3fc893532e7b3d8e              # double 0.191996
	.quad	0x3fe582a77a2cecc8              # double 0.67219899999999999
	.quad	0x3fc89c90c4dec1c2              # double 0.192278
	.quad	0x3fcb87e7c06e19b9              # double 0.215085
	.quad	0x3feecddd6e04c059              # double 0.96262999999999998
	.quad	0x3fe6bd7d3910c2c6              # double 0.71063100000000001
	.quad	0x3fe52a4fca42aed1              # double 0.66141499999999998
	.quad	0x3fcc5100a393ee5f              # double 0.221222
	.quad	0x3fe1c83a96d4c33b              # double 0.55569199999999996
	.quad	0x3fe43365881a1555              # double 0.631274
	.quad	0x3fe2e073de1e2de8              # double 0.58989899999999995
	.quad	0x3fd33cddd6e04c06              # double 0.30059000000000002
	.quad	0x3fe42ca57a786c22              # double 0.63044999999999995
	.quad	0x3fb6960b6f9fcb0c              # double 0.088227
	.quad	0x3fecf0d844d013a9              # double 0.90439999999999998
	.quad	0x3f8abb8800eae18b              # double 0.013053
	.quad	0x3fec2f01754b05b8              # double 0.88073800000000002
	.quad	0x3fe5e4e054690de1              # double 0.68418900000000005
	.quad	0x3fd0fe154434e337              # double 0.26550800000000002
	.quad	0x3fde2fad6cb53501              # double 0.47166000000000002
	.quad	0x3fcf2ba16e7a311f              # double 0.24351900000000001
	.quad	0x3fe4263d816aceab              # double 0.62966800000000001
	.quad	0x3fa85a708ede54b5              # double 0.047565000000000003
	.quad	0x3fec39f98b71b8aa              # double 0.882077
	.quad	0x3fd98bc169c23b79              # double 0.39915499999999998
	.quad	0x3fd764388ebcc6c5              # double 0.36549199999999998
	.quad	0x3fe62f6a50d6b229              # double 0.69328800000000002
	.quad	0x3fdd1a500d5e8d54              # double 0.454731
	.quad	0x3fef96e58a32f449              # double 0.98716999999999999
	.quad	0x3fbcd1b71758e219              # double 0.11257499999999999
	.quad	0x3fedf27fe4bcad9b              # double 0.93585200000000002
	.quad	0x3fe7ad4f5903a754              # double 0.73990599999999995
	.quad	0x3fed7a4a48f96e16              # double 0.92117800000000005
	.quad	0x3fddc6c97d8cf399              # double 0.465258
	.quad	0x3fecd5b035bd512f              # double 0.90108500000000002
	.quad	0x3fef4a0a0f4d7add              # double 0.97778799999999999
	.quad	0x3fd19d66adb402d1              # double 0.27523199999999998
	.quad	0x3fdee1d6494d50ec              # double 0.48253400000000002
	.quad	0x3fedf5e84f09528f              # double 0.93626799999999999
	.quad	0x3fee83f4eca686e8              # double 0.95360800000000001
	.quad	0x3fc99e060fe47992              # double 0.20013500000000001
	.quad	0x3feee75579af1887              # double 0.96573900000000001
	.quad	0x3fe70dd1e53a81dc              # double 0.72043699999999999
	.quad	0x3fd43d25247cb70b              # double 0.31623200000000001
	.quad	0x3fd730ec31162281              # double 0.36236099999999999
	.quad	0x3fed42ca148ba83f              # double 0.91440299999999997
	.quad	0x3fddee2c98e53eb4              # double 0.46766200000000002
	.quad	0x3fe68a63305100a4              # double 0.70439300000000005
	.quad	0x3fd444e93e1c9b41              # double 0.31670599999999999
	.quad	0x3fe1203c4b09e98e              # double 0.53518500000000002
	.quad	0x3fe29b5c7cd898b3              # double 0.58146500000000001
	.quad	0x3feece63a5c1c609              # double 0.96269400000000004
	.quad	0x3fedf5f91600f345              # double 0.936276
	.quad	0x3fe9e887a8d64d7f              # double 0.80963499999999999
	.quad	0x3fe796638433d6c7              # double 0.73710799999999999
	.quad	0x3fec1bd61f5be5da              # double 0.87839800000000001
	.quad	0x3fbdf4c2b51bd61f              # double 0.117016
	.quad	0x3fe1cb2745bf26f2              # double 0.55604900000000002
	.quad	0x3fe74b6a619da9ca              # double 0.72795600000000005
	.quad	0x3fe5e0a2014727dd              # double 0.68367100000000003
	.quad	0x3fb4e24bba12b5e5              # double 0.081577999999999998
	.quad	0x3fe475275ee99a63              # double 0.63930100000000001
	.quad	0x3fd92ebe596c82e0              # double 0.39347799999999999
	.quad	0x3fe1bedb7281fd9c              # double 0.55454800000000004
	.quad	0x3fc19e59f2ba9d1f              # double 0.13764499999999999
	.quad	0x3fe5fc8b0079a283              # double 0.68707799999999997
	.quad	0x3feb64e054690de1              # double 0.85606400000000005
	.quad	0x3fdf7ee9142b302f              # double 0.49212099999999998
	.quad	0x3fec987a4a48f96e              # double 0.89361299999999999
	.quad	0x3fd8aef2c7325919              # double 0.38567800000000002
	.quad	0x3fed31769a91105e              # double 0.91228799999999999
	.quad	0x3fdc1ff7164c729f              # double 0.43945099999999998
	.quad	0x3fd4aa3f034b0e1b              # double 0.32289099999999998
	.quad	0x3fe12db1e9f27781              # double 0.53682799999999997
	.quad	0x3fc8d14a0a0f4d7b              # double 0.193887
	.quad	0x3fec43d89ce4a7b5              # double 0.88328200000000001
	.quad	0x3feaeb59146e4c0e              # double 0.841229
	.quad	0x3fee8e496ededaec              # double 0.95486899999999996
	.quad	0x3f4c714fce746cb9              # double 8.6799999999999995E-4
	.quad	0x3fe3f3f748a15981              # double 0.62353099999999995
	.quad	0x3fd79a30984e3fff              # double 0.368786
	.quad	0x3fd7eacc92146a1a              # double 0.37370599999999998
	.quad	0x3fd58ef34d6a161e              # double 0.33684999999999998
	.quad	0x3fd86fac6045baf5              # double 0.38181599999999999
	.quad	0x3fef21426fe718a8              # double 0.97280999999999995
	.quad	0x3fd557abb8800eae              # double 0.33347599999999999
	.quad	0x3fdeeb7cbb3c8191              # double 0.48312300000000002
	.quad	0x3fb2cd29131ec0b5              # double 0.073442999999999994
	.quad	0x3fe28ecfa69be09c              # double 0.57993300000000003
	.quad	0x3fd7dd22856605ee              # double 0.37287199999999998
	.quad	0x3fe9b0d0edc3bd5a              # double 0.80283400000000005
	.quad	0x3fe94aa7589efd87              # double 0.79036300000000004
	.quad	0x3fd28986fcdee350              # double 0.28964400000000001
	.quad	0x3fedfc2224edf612              # double 0.93702799999999997
	.quad	0x3fe01fb3fa6defc8              # double 0.50387000000000004
	.quad	0x3f96006d0d49949f              # double 0.021486000000000002
	.quad	0x3fce0c176577531e              # double 0.23474400000000001
	.quad	0x3fe88aed99cbee80              # double 0.76695899999999995
	.quad	0x3fe584c8bc9cd3e1              # double 0.67245900000000003
	.quad	0x3fd8ebedfa43fe5d              # double 0.38940000000000002
	.quad	0x3fcf8a5482385404              # double 0.24640899999999999
	.quad	0x3fc0253111f0c34c              # double 0.126135
	.quad	0x3fe1a5b9628cbd12              # double 0.55147999999999997
	.quad	0x3fc51897a67a52ac              # double 0.16481299999999999
	.quad	0x3fd4012599ed7c70              # double 0.31257000000000001
	.quad	0x3fef23161a1db878              # double 0.97303300000000003
	.quad	0x3fe1303c07ee0b0b              # double 0.537138
	.quad	0x3fd3e0b0af5fd47c              # double 0.310589
	.quad	0x3fd891f2dc2b0ea2              # double 0.38390800000000003
	.quad	0x3fe73c85c24c404a              # double 0.72613799999999995
	.quad	0x3fd6a9b068123811              # double 0.35410700000000001
	.quad	0x3fd2f98fa376922e              # double 0.29648200000000002
	.quad	0x3fe8bcf91a32b12d              # double 0.77306799999999998
	.quad	0x3fe5756a7ac81d3b              # double 0.67058300000000004
	.quad	0x3feb0bd230b9dc2f              # double 0.84519299999999997
	.quad	0x3fd5f27bb2fec56d              # double 0.34292499999999998
	.quad	0x3fd6a98244e93e1d              # double 0.35409600000000002
	.quad	0x3fda89b52007dd44              # double 0.414655
	.quad	0x3fe7d44bb1af3a15              # double 0.74466500000000002
	.quad	0x3fe4c7fbacb42891              # double 0.64941199999999999
	.quad	0x3fd6aeff5c6c11a1              # double 0.354431
	.quad	0x3fd71dffc5479d4e              # double 0.36120600000000003
	.quad	0x3fdf65625a682b63              # double 0.49056300000000003
	.quad	0x3fe37505d0fa58f7              # double 0.60803499999999999
	.quad	0x3fea58c2a454de7f              # double 0.82333500000000004
	.quad	0x3fee99f5dfeb8d82              # double 0.95629399999999998
	.quad	0x3fe4b9f98b71b8aa              # double 0.647702
	.quad	0x3fef917f84449dbf              # double 0.98651100000000002
	.quad	0x3fda8c6d612c6ac2              # double 0.414821
	.quad	0x3fe77785729b280f              # double 0.73333999999999999
	.quad	0x3fdfcd63cb817332              # double 0.49691099999999999
	.quad	0x3fdc5c358afc47e5              # double 0.44312800000000002
	.quad	0x3fd3ecd8dbcec850              # double 0.31133100000000002
	.quad	0x3fd04eb9a176ddad              # double 0.254805
	.quad	0x3f80b0f27bb2fec5              # double 0.0081499999999999992
	.quad	0x3fe7f4ba51a005c4              # double 0.74862399999999995
	.quad	0x3fd4129cbab649d4              # double 0.31363600000000003
	.quad	0x3fe41be8ff327aa7              # double 0.62840700000000005
	.quad	0x3fed3ebe1650a45d              # double 0.91390899999999997
	.quad	0x3fe7a658c4bd33d3              # double 0.73905600000000005
	.quad	0x3fd92513b5bf6a0e              # double 0.39288800000000001
	.quad	0x3fde240314877681              # double 0.47094799999999998
	.quad	0x3fd264f97edc7ef1              # double 0.28741299999999997
	.quad	0x3fdbb3aabcd78c43              # double 0.43284099999999998
	.quad	0x3fd6a53fc0096feb              # double 0.35383599999999998
	.quad	0x3fe78433d6c72192              # double 0.73488799999999999
	.quad	0x3fdda8b8f14db595              # double 0.46342299999999997
	.quad	0x3feea747d805e5f3              # double 0.95791999999999999
	.quad	0x3fed8ffda4052d66              # double 0.92382699999999995
	.quad	0x3fc0b27cbf6e3f79              # double 0.13044700000000001
	.quad	0x3feef35c182ecaef              # double 0.96720700000000003
	.quad	0x3fd4b9d3cbc48f11              # double 0.32384200000000002
	.quad	0x3fcad5f138bcdff0              # double 0.20965400000000001
	.quad	0x3fde2f4491298890              # double 0.47163500000000003
	.quad	0x3fef2c710cb295ea              # double 0.97417500000000001
	.quad	0x3fd7398a65492ff5              # double 0.36288700000000002
	.quad	0x3fecbe0bd44998d0              # double 0.89819899999999997
	.quad	0x3f8c1d6cf850df16              # double 0.013728000000000001
	.quad	0x3fb750e347629521              # double 0.091078000000000006
	.quad	0x3fce84f09528f191              # double 0.23843200000000001
	.quad	0x3fe29314445aa2e4              # double 0.58045400000000003
	.quad	0x3fd79628cbd1244a              # double 0.36853999999999998
	.quad	0x3fe7b2e3821af7d3              # double 0.740587
	.quad	0x3fe775e41d4b6a62              # double 0.73314100000000004
	.quad	0x3fc07cc7d1bb4917              # double 0.12880800000000001
	.quad	0x3fdac126a65cf67b              # double 0.41803899999999999
	.quad	0x3fed0ae74f2f123c              # double 0.90758099999999997
	.quad	0x3faa81dc0db2702a              # double 0.051771999999999999
	.quad	0x3fdeacc92146a1a5              # double 0.479296
	.quad	0x3fe6d6d5cfaacd9f              # double 0.71372500000000005
	.quad	0x3fecc47e49b1fab9              # double 0.89898599999999995
	.quad	0x3fdb150dae3e6c4c              # double 0.42315999999999998
	.quad	0x3fef37995ee136e7              # double 0.97553699999999998
	.quad	0x3fe9bfec13b9f128              # double 0.804678
	.quad	0x3fda28f190d173fb              # double 0.40874899999999997
	.quad	0x3fdab484d76ab580              # double 0.41726799999999997
	.quad	0x3fe39511dffc547a              # double 0.61194700000000002
	.quad	0x3fe98ff10ecb74de              # double 0.798821
	.quad	0x3fd0b24638c97529              # double 0.26088099999999997
	.quad	0x3fcfa2b5a20ddc62              # double 0.24715300000000001
	.quad	0x3fcab75ea67e846a              # double 0.20872099999999999
	.quad	0x3fda774256bca537              # double 0.41352899999999998
	.quad	0x3fd6265f0f5a1017              # double 0.34609200000000001
	.quad	0x3fba7913e81450f0              # double 0.10341
	.quad	0x3fec3eb18116ebd5              # double 0.88265300000000002
	.quad	0x3fd2af4f0d844d01              # double 0.29194999999999999
	.quad	0x3fc7eb4a66559f6f              # double 0.18686800000000001
	.quad	0x3fec935b91f70de9              # double 0.892988
	.quad	0x3fe75f19d66adb40              # double 0.73035899999999998
	.quad	0x3fd30f49491f2dc3              # double 0.29780800000000002
	.quad	0x3fe744806290eed0              # double 0.72711199999999998
	.quad	0x3fec016aceaaf35e              # double 0.87517299999999998
	.quad	0x3fe58f776c4827b7              # double 0.673763
	.quad	0x3fe16c2ce4649907              # double 0.54445500000000002
	.quad	0x3fecd25892684cf0              # double 0.90067699999999995
	.quad	0x3fef191148fd9fd3              # double 0.97180999999999995
	.quad	0x3fd1a4fca42aed14              # double 0.27569500000000002
	.quad	0x3fc07d4e09784ec6              # double 0.12882399999999999
	.quad	0x3fd2bdcf0307f23d              # double 0.29283500000000001
	.quad	0x3fd6c947064ece9a              # double 0.35603499999999999
	.quad	0x3febfb09203a322b              # double 0.874394
	.quad	0x3fbeadb402d16b98              # double 0.119838
	.quad	0x3fcba554b8bef8cf              # double 0.21598300000000001
	.quad	0x3fe9b107746887a9              # double 0.80286000000000002
	.quad	0x3fe769ccb7d41744              # double 0.73166500000000001
	.quad	0x3fb90c9107faa045              # double 0.097848000000000004
	.quad	0x3feeaab8a5ce5b42              # double 0.95833999999999997
	.quad	0x3fe31a2c669057d1              # double 0.59694499999999995
	.quad	0x3fd07bbf93ff25e5              # double 0.25755299999999998
	.quad	0x3fe0ac53b0813cac              # double 0.52103600000000005
	.quad	0x3fc56cce5f7403de              # double 0.167383
	.quad	0x3fe84020817fc760              # double 0.75782799999999994
	.quad	0x3fe926351deefe50              # double 0.785914
	.quad	0x3feea49c2c1b10fd              # double 0.95759399999999995
	.quad	0x3fd3b9170d62bf12              # double 0.308172
	.quad	0x3fd1dc2b0ea18373              # double 0.27906300000000001
	.quad	0x3fed565a14488c61              # double 0.91679100000000002
	.quad	0x3fe07ec56d5cfaad              # double 0.51547500000000002
	.quad	0x3fe176cacd184c27              # double 0.54575099999999999
	.quad	0x3fc6ca36199780bb              # double 0.17804600000000001
	.quad	0x3febc864883fd502              # double 0.86821199999999998
	.quad	0x3fd079b77c02afde              # double 0.25742900000000002
	.quad	0x3fd40ebedfa43fe6              # double 0.31340000000000001
	.quad	0x3fb97c0b13597918              # double 0.099548999999999999
	.quad	0x3fbe9c560c7c0f45              # double 0.119573
	.quad	0x3faa497fa5d28d00              # double 0.051341999999999999
	.quad	0x3fdb2239e6ab9b24              # double 0.42396400000000001
	.quad	0x3fe15a7b0b391926              # double 0.54229499999999997
	.quad	0x3fed13fd0d0678c0              # double 0.90869
	.quad	0x3fe1dc1615ebfa8f              # double 0.55811599999999995
	.quad	0x3fafcfe586013661              # double 0.062133000000000001
	.quad	0x3fd738b47c73eee5              # double 0.36283599999999999
	.quad	0x3fdd294dd72367e4              # double 0.455646
	.quad	0x3fc83bff8a8f3a9b              # double 0.189331
	.quad	0x3fdba43bb40b34e7              # double 0.43189899999999998
	.quad	0x3fe816030c23fab1              # double 0.75268699999999999
	.quad	0x3fd28dfbd6a593a3              # double 0.28991600000000001
	.quad	0x3fecf25c3dee7818              # double 0.90458499999999997
	.quad	0x3fd0db5525cc4263              # double 0.26338699999999998
	.quad	0x3f97e308787485e4              # double 0.023327000000000001
	.quad	0x3fe5fd113836a833              # double 0.68714200000000003
	.quad	0x3fdf22bbecaab8a6              # double 0.48649500000000001
	.quad	0x3fdc2deca25529fe              # double 0.440303
	.quad	0x3fd635d249e44fa0              # double 0.34703499999999998
	.quad	0x3feaec6de76427c8              # double 0.84136100000000003
	.quad	0x3fc33bb83cf2cf96              # double 0.15026
	.quad	0x3fe2a42aed139431              # double 0.58253999999999995
	.quad	0x3fe1e04c05921038              # double 0.55862999999999996
	.quad	0x3fc8378ab0c88a48              # double 0.189195
	.quad	0x3fbd6d19dece5711              # double 0.11494600000000001
	.quad	0x3fd41d57ff9b5632              # double 0.31429099999999999
	.quad	0x3fb94d940789613d              # double 0.098839999999999997
	.quad	0x3fbbbaa9b499d020              # double 0.108317
	.quad	0x3fe219806f262889              # double 0.56561300000000003
	.quad	0x3fd25a63f9a49c2c              # double 0.28676699999999999
	.quad	0x3fe6e20685553ef7              # double 0.71509100000000003
	.quad	0x3fe812b3cc4ac6ce              # double 0.75228300000000004
	.quad	0x3fd04e5929670197              # double 0.25478200000000001
	.quad	0x3faba94bbe4473cd              # double 0.054025999999999998
	.quad	0x3fdad66277c45cbc              # double 0.41933500000000001
	.quad	0x3fed68f08461f9f0              # double 0.91905999999999999
	.quad	0x3fe94dcca70d1fa3              # double 0.79074699999999998
	.quad	0x3fef1da597d49d7c              # double 0.97236900000000003
	.quad	0x3fe4ca3a4b5568e8              # double 0.64968599999999999
	.quad	0x3fe3b03e20ccff22              # double 0.61526400000000003
	.quad	0x3fdd1615ebfa8f7e              # double 0.45447300000000002
	.quad	0x3fd57304039abf34              # double 0.33514500000000003
	.quad	0x3fedc575c0767d35              # double 0.93035400000000001
	.quad	0x3fc1ccd962068555              # double 0.13906399999999999
	.quad	0x3fe5492ddbdb5d89              # double 0.66518299999999997
	.quad	0x3fcf840181e03f70              # double 0.24621599999999999
	.quad	0x3fcb6cc5fbf83383              # double 0.214257
	.quad	0x3fce7e9d94d0dcfd              # double 0.23823900000000001
	.quad	0x3fd7c9c4da9003ef              # double 0.37169000000000002
	.quad	0x3fdc730c67168f8e              # double 0.44452199999999997
	.quad	0x3fd60d0aaa7ded6c              # double 0.34454600000000002
	.quad	0x3fe4cb5568e820e6              # double 0.64982099999999998
	.quad	0x3fc530270f388228              # double 0.16553200000000001
	.quad	0x3f87154003254e6e              # double 0.011271
	.quad	0x3fe4369db65ecc3e              # double 0.63166699999999998
	.quad	0x3fef7c6759ab6d01              # double 0.98393600000000003
	.quad	0x3fe5cab606b7aa26              # double 0.68099500000000002
	.quad	0x3fb0710cb295e9e2              # double 0.064225000000000004
	.quad	0x3feb040bfe3b03e2              # double 0.84424399999999999
	.quad	0x3feed410f94c8798              # double 0.96338699999999999
	.quad	0x3fe21e59f2ba9d1f              # double 0.56620499999999996
	.quad	0x3fcee65bea0ba1f5              # double 0.24140500000000001
	.quad	0x3fe7eee73e681a9c              # double 0.74791300000000005
	.quad	0x3fc0f7121ab4b72c              # double 0.13253999999999999
	.quad	0x3fe6db4677b395c4              # double 0.71426699999999999
	.quad	0x3fdf9c0ebedfa440              # double 0.49390000000000001
	.quad	0x3fea17bfa4c61d86              # double 0.81539899999999998
	.quad	0x3fded61b2a27f1b7              # double 0.48181800000000002
	.quad	0x3feb75ea67e846a6              # double 0.85814400000000002
	.quad	0x3fe5a8e2e2b8c75c              # double 0.67686599999999997
	.quad	0x3fe6e2cba732df50              # double 0.71518499999999996
	.quad	0x3fe5fe1fc08fa7a8              # double 0.68727099999999997
	.quad	0x3fdb22b7baecd078              # double 0.42399399999999998
	.quad	0x3fe29e3c968943e1              # double 0.581816
	.quad	0x3fe8678183f91e64              # double 0.76263499999999995
	.quad	0x3fd9cb923a29c77a              # double 0.40305000000000002
	.quad	0x3fa04c059210385c              # double 0.031829999999999997
	.quad	0x3fd1efc371da37ef              # double 0.28025899999999998
	.quad	0x3fe135fe542e557e              # double 0.53784100000000001
	.quad	0x3fe413d31b9b66f9              # double 0.62741999999999998
	.quad	0x3fee91a75cd0bb6f              # double 0.95528000000000002
	.quad	0x3feb351372a38b8b              # double 0.85022900000000001
	.quad	0x3fe113059641f645              # double 0.53357200000000005
	.quad	0x3fe24bf6e3f78bbd              # double 0.57177299999999998
	.quad	0x3fe01f2778140dd4              # double 0.503803
	.quad	0x3fd0bd66277c45cc              # double 0.26156000000000001
	.quad	0x3feacbcad9ad85e0              # double 0.83737700000000003
	.quad	0x3f872799a1fd156a              # double 0.011306
	.quad	0x3fe2730c67168f8e              # double 0.57654399999999995
	.quad	0x3fd27b0b39192642              # double 0.28876000000000002
	.quad	0x3fdd97e132b55ef2              # double 0.462395
	.quad	0x3fd795e5aff2a173              # double 0.36852400000000002
	.quad	0x3fc8e41919ac7970              # double 0.19446099999999999
	.quad	0x3feb72bcb5fe542e              # double 0.85775599999999996
	.quad	0x3fe97d84901d1915              # double 0.79657199999999995
	.quad	0x3fe15b749adc8fb8              # double 0.54241399999999995
	.quad	0x3fe98b588e368f08              # double 0.79825999999999997
	.quad	0x3fa9e83e425aee63              # double 0.050599999999999999
	.quad	0x3fe96cce5f7403de              # double 0.79453200000000002
	.quad	0x3fc42bc72e275ab8              # double 0.157586
	.quad	0x3fe93f4a98aa8651              # double 0.78897600000000001
	.quad	0x3fdb97396d0917d7              # double 0.43110500000000002
	.quad	0x3fdd965b20b8066c              # double 0.46230199999999999
	.quad	0x3fea69878316a055              # double 0.82538199999999995
	.quad	0x3fc57d955714b9cb              # double 0.16789499999999999
	.quad	0x3fda9e3864cb5bb4              # double 0.41590700000000003
	.quad	0x3fe971327243137b              # double 0.795068
	.quad	0x3fed3a19008205ff              # double 0.91334199999999999
	.quad	0x3fe341f42bb66730              # double 0.60180100000000003
	.quad	0x3fdd1ae2da554b8c              # double 0.454766
	.quad	0x3fa4e5f7403dddb1              # double 0.040816999999999999
	.quad	0x3fb8470a808c825a              # double 0.094834000000000001
	.quad	0x3fe58ebcc6c54bcf              # double 0.673674
	.quad	0x3fa4f0d844d013a9              # double 0.040899999999999999
	.quad	0x3fbd670196d8f4f9              # double 0.114853
	.quad	0x3feb38cb8e086bdf              # double 0.85068299999999997
	.quad	0x3fe629b499d0203e              # double 0.69259099999999996
	.quad	0x3fd637d1fe64f54d              # double 0.34715699999999999
	.quad	0x3fd981adea897636              # double 0.39854000000000001
	.quad	0x3fde476af89c5e70              # double 0.473109
	.quad	0x3fdc1960fa15db34              # double 0.43904900000000002
	.quad	0x3faeb00ffda4052d              # double 0.059936999999999997
	.quad	0x3fe2700ef1348b22              # double 0.576179
	.quad	0x3fdd113836a832ba              # double 0.45417600000000002
	.quad	0x3fac3efae7924af1              # double 0.055168000000000002
	.quad	0x3f9cdf69878316a0              # double 0.028195999999999999
	.quad	0x3fedfa80cf9e3865              # double 0.93682900000000002
	.quad	0x3fefcdc011d3671b              # double 0.99386600000000002
	.quad	0x3fe71e215336deb9              # double 0.72242799999999996
	.quad	0x3fececb31c219eb6              # double 0.90389399999999998
	.quad	0x3fe6a01eeed8904f              # double 0.70704599999999995
	.quad	0x3fd61f10667f90da              # double 0.34564600000000001
	.quad	0x3fd8998d045fe111              # double 0.38437199999999999
	.quad	0x3fe97a398201cd60              # double 0.79617000000000004
	.quad	0x3fe8aaac1094a2ba              # double 0.77083400000000002
	.quad	0x3fcdd11be6e65387              # double 0.23294400000000001
	.quad	0x3fedcbe1eb4202da              # double 0.93113800000000002
	.quad	0x3fe07bb0e5e67946              # double 0.51509899999999997
	.quad	0x3fe36e221c8a7a42              # double 0.60719400000000001
	.quad	0x3fc60c8472c0e7bc              # double 0.17225699999999999
	.quad	0x3fe7e9d51b4fe79f              # double 0.74729400000000001
	.quad	0x3fdc5d80e496edee              # double 0.44320700000000002
	.quad	0x3febf4a3400b88ca              # double 0.87361299999999997
	.quad	0x3fe899bb2788db05              # double 0.76876599999999995
	.quad	0x3fdebacb4289118c              # double 0.48015099999999999
	.quad	0x3feb1c6b05319829              # double 0.84721900000000006
	.quad	0x3fe5b2745bf26f1e              # double 0.67803400000000003
	.quad	0x3fbf8c75c4a83b1d              # double 0.123237
	.quad	0x3fb5e5e2478854ce              # double 0.085539000000000003
	.quad	0x3fe81183b60285ec              # double 0.75213799999999997
	.quad	0x3fc56598e10cf5b2              # double 0.16716300000000001
	.quad	0x3fe42be27179bfdf              # double 0.63035699999999995
	.quad	0x3fae4ffc9795b35b              # double 0.059204
	.quad	0x3feee3b256ffc116              # double 0.96529500000000001
	.quad	0x3f928d002e2328fa              # double 0.018116
	.quad	0x3fd23486f049a997              # double 0.28445599999999999
	.quad	0x3fa177ea1c68ec53              # double 0.034118000000000002
	.quad	0x3fe7185cee17a030              # double 0.72172400000000003
	.quad	0x3fcacf6be37de93a              # double 0.209455
	.quad	0x3fd20df58c08b75f              # double 0.28210200000000002
	.quad	0x3fce4052d666a982              # double 0.23633799999999999
	.quad	0x3fcf91dde37585be              # double 0.246639
	.quad	0x3fda318fc504816f              # double 0.409275
	.quad	0x3fd08b588e368f08              # double 0.25850499999999998
	.quad	0x3fed7ba237cdcca7              # double 0.92134199999999999
	.quad	0x3fe66848beb5b2d5              # double 0.70023000000000002
	.quad	0x3fef687b139c94f7              # double 0.98150400000000004
	.quad	0x3fd01205bc01a36e              # double 0.25109999999999999
	.quad	0x3fd6068123810e88              # double 0.34414699999999998
	.quad	0x3fe6aba16e7a311f              # double 0.70845100000000005
	.quad	0x3fef967a95c853c1              # double 0.98711899999999996
	.quad	0x3fe7335d249e44fa              # double 0.72502
	.quad	0x3fc9947cfa26a22b              # double 0.19984399999999999
	.quad	0x3feb3df6db940fed              # double 0.85131400000000002
	.quad	0x3fd5f58c08b75ea6              # double 0.34311199999999997
	.quad	0x3fcc2ba5a038194c              # double 0.220082
	.quad	0x3fcdaa60913a4f87              # double 0.231762
	.quad	0x3fd0ecaeea63b689              # double 0.26444600000000001
	.quad	0x3fe17ee0b0af5fd4              # double 0.54673799999999995
	.quad	0x3fcd7507e9d94d0e              # double 0.23013400000000001
	.quad	0x3fb1083dbc23315d              # double 0.066531999999999994
	.quad	0x3fddaf42784a9479              # double 0.46382200000000001
	.quad	0x3fcc0cf9e3864cb6              # double 0.21914600000000001
	.quad	0x3fd8c985f06f6944              # double 0.38729999999999998
	.quad	0x3fe6e4649906cca3              # double 0.71538000000000002
	.quad	0x3fe6b884406c00da              # double 0.71002399999999999
	.quad	0x3fec55410f94c87a              # double 0.88540700000000006
	.quad	0x3fc7c8c0ce91c8eb              # double 0.18581400000000001
	.quad	0x3fe718eb8950763a              # double 0.72179199999999999
	.quad	0x3fd82bfdb4cc2507              # double 0.37768499999999999
	.quad	0x3fadf090f733a8a4              # double 0.058476
	.quad	0x3fe24fe586013661              # double 0.57225300000000001
	.quad	0x3fe4aeee957470eb              # double 0.64635399999999998
	.quad	0x3fe59eabbcb1cc96              # double 0.67561899999999997
	.quad	0x3fe8fceb78897e99              # double 0.78087399999999996
	.quad	0x3fcb0bfa0945f9df              # double 0.21130299999999999
	.quad	0x3fe883cd141a6938              # double 0.76608900000000002
	.quad	0x3fd6ec4a4095f245              # double 0.35817199999999999
	.quad	0x3fe0c3914f483cb0              # double 0.52387300000000003
	.quad	0x3fe3afee6fb4c3c2              # double 0.61522600000000005
	.quad	0x3fe8ec1a048e043a              # double 0.77882099999999999
	.quad	0x3fd55f02c4d65e46              # double 0.333924
	.quad	0x3fe17c5cdd50a88f              # double 0.546431
	.quad	0x3fe86d288ce703b0              # double 0.76332500000000003
	.quad	0x3fd0b51bd61f5be6              # double 0.26105400000000001
	.quad	0x3fbcfc1df3300de5              # double 0.113222
	.quad	0x3fe1783be6601bca              # double 0.54592700000000005
	.quad	0x3fe5e8943e100608              # double 0.68464100000000006
	.quad	0x3fbf44a1f080303c              # double 0.122141
	.quad	0x3fe8f38a3b57c4e3              # double 0.77972900000000001
	.quad	0x3fed60a63305100a              # double 0.91804799999999998
	.quad	0x3fe4d551d68c692f              # double 0.65103999999999995
	.quad	0x3fd016e371540032              # double 0.25139699999999998
	.quad	0x3fda9f7b5aea3162              # double 0.41598400000000002
	.quad	0x3fce486ad2dcb146              # double 0.23658499999999999
	.quad	0x3fd09513f8db4891              # double 0.25909900000000002
	.quad	0x3fe4fe2a3cea6c1a              # double 0.656026
	.quad	0x3fde10a99b6f5caf              # double 0.46976699999999999
	.quad	0x3fc367e414e7ee91              # double 0.15160799999999999
	.quad	0x3fefbaffb04ee7c5              # double 0.99157700000000004
	.quad	0x3fc9102363b25700              # double 0.19580500000000001
	.quad	0x3fe420f2becedd48              # double 0.62902199999999997
	.quad	0x3fe2cf00ef1348b2              # double 0.58776899999999999
	.quad	0x3fd01aa821f2990f              # double 0.25162699999999999
	.quad	0x3feb1758e219652c              # double 0.84660000000000001
	.quad	0x3fef6dacabc51548              # double 0.98213799999999995
	.quad	0x3fcbe518f3eccc47              # double 0.21792900000000001
	.quad	0x3fe1b98201cd5f9a              # double 0.55389500000000003
	.quad	0x3fe2f03f2d3c792d              # double 0.59182699999999999
	.quad	0x3fea8216c61522a7              # double 0.82838000000000001
	.quad	0x3fe08f3eccc46951              # double 0.517486
	.quad	0x3fd4b1290257c915              # double 0.32331300000000002
	.quad	0x3fe24358afc47e4a              # double 0.57072100000000003
	.quad	0x3fcc5c4651f3e89b              # double 0.22156600000000001
	.quad	0x3fec6f0068db8bac              # double 0.88854999999999995
	.quad	0x3fdd31ceaf251c19              # double 0.45616499999999999
	.quad	0x3fdf8a65492ff4ba              # double 0.49282199999999998
	.quad	0x3fd79a671ef30a4e              # double 0.36879899999999999
	.quad	0x3fd7348f53c579f2              # double 0.36258299999999999
	.quad	0x3fde3968d759ee89              # double 0.47225400000000001
	.quad	0x3fbfce3150dae3e7              # double 0.12424
	.quad	0x3fec5bea0ba1f4b2              # double 0.88622000000000001
	.quad	0x3fbee019b0ab2e17              # double 0.12060700000000001
	.quad	0x3fdd895d0b73d189              # double 0.461509
	.quad	0x3f6ab29e4d5d80e5              # double 0.0032590000000000002
	.quad	0x3fdc874c8ffb8b26              # double 0.44575799999999999
	.quad	0x3fd8e889c1b54196              # double 0.38919300000000001
	.quad	0x3fe7f1971c10d7bf              # double 0.74824100000000004
	.quad	0x3fedc79d4d834092              # double 0.93061700000000003
	.quad	0x3fefff06705c896e              # double 0.99988100000000002
	.quad	0x3fd5602c9081c2e3              # double 0.33399499999999999
	.quad	0x3fcb954eb13dfb0d              # double 0.21549399999999999
	.quad	0x3fe09f5dfeb8d823              # double 0.51945399999999997
	.quad	0x3fe71ed3953dea46              # double 0.72251299999999996
	.quad	0x3fa76555c52e72da              # double 0.045695
	.quad	0x3fee91409a240315              # double 0.95523100000000005
	.quad	0x3fca4db163baba7c              # double 0.20549600000000001
	.quad	0x3fc3d909f1f14984              # double 0.155061
	.quad	0x3fe47d49d7ba6699              # double 0.64029400000000003
	.quad	0x3fddafd5454152b1              # double 0.46385700000000002
	.quad	0x3fec933e35c5b4ab              # double 0.89297400000000005
	.quad	0x3fc6f1800a7c5ac4              # double 0.17924499999999999
	.quad	0x3fc9f6ec5b078d93              # double 0.202848
	.quad	0x3fdd3eee52589268              # double 0.45696599999999998
	.quad	0x3f9b73d188f42fe8              # double 0.026808999999999999
	.quad	0x3fe35eebb341e14c              # double 0.60533700000000001
	.quad	0x3fefbf8fcd67fd3f              # double 0.99213399999999996
	.quad	0x3fdc4e831ad2135e              # double 0.44229200000000002
	.quad	0x3fc6f8bdec5f394b              # double 0.17946599999999999
	.quad	0x3fdf1ab8e8ea39c5              # double 0.48600599999999999
	.quad	0x3fe36ab7995ee137              # double 0.60677700000000001
	.quad	0x3fe34bb1af3a14cf              # double 0.60299000000000003
	.quad	0x3fb5aa821f2990f3              # double 0.084633
	.quad	0x3fd43ee5eedcc20d              # double 0.31633899999999998
	.quad	0x3fe78724b76f6d76              # double 0.73524699999999998
	.quad	0x3fdb4d7add15f02c              # double 0.42660399999999998
	.quad	0x3fedcbddb9841aac              # double 0.93113599999999996
	.quad	0x3fee6dbb59ddc1e8              # double 0.95089500000000004
	.quad	0x3fc35821294573a8              # double 0.15112700000000001
	.quad	0x3fe6c1fea8112ba1              # double 0.71118099999999995
	.quad	0x3fdca0ad8a11665a              # double 0.44730700000000001
	.quad	0x3fe45184c271fff8              # double 0.63495100000000004
	.quad	0x3fe03f3bea91d9b2              # double 0.50771900000000003
	.quad	0x3fc0c9f2fdb8fde3              # double 0.131163
	.quad	0x3fd8e1f3a57eaa2a              # double 0.388791
	.quad	0x3fe1344e50c5eb31              # double 0.53763499999999997
	.quad	0x3fc7a6ce358298cc              # double 0.184778
	.quad	0x3fe9dd31337eb28e              # double 0.80825100000000005
	.quad	0x3fc297c80841ede1              # double 0.145257
	.quad	0x3fe6cb46bacf7447              # double 0.712314
	.quad	0x3fd7486ad2dcb146              # double 0.36379499999999998
	.quad	0x3fd167d77fae3609              # double 0.27196300000000001
	.quad	0x3fd7d0d0678c0054              # double 0.37212000000000001
	.quad	0x3fe5626d4801f751              # double 0.668265
	.quad	0x3fe6265add9c27e9              # double 0.69218199999999996
	.quad	0x3fe119c9d5a187a5              # double 0.53439800000000004
	.quad	0x3fe35ccc89b0ee4a              # double 0.605078
	.quad	0x3fe48c1b97353b4b              # double 0.64210299999999998
	.quad	0x3fd6089e34330d74              # double 0.34427600000000003
	.quad	0x3fafeb074a771c97              # double 0.06234
	.quad	0x3fe1de2046c764ae              # double 0.558365
	.quad	0x3fd5556d19dece57              # double 0.333339
	.quad	0x3fde5fa658c4bd34              # double 0.47458800000000001
	.quad	0x3fdfc37e6f71a7e3              # double 0.496307
	.quad	0x3fbff540895d0b74              # double 0.124836
	.quad	0x3fe08281ba7fc32f              # double 0.51593100000000003
	.quad	0x3fdc7e77d523b363              # double 0.44521899999999998
	.quad	0x3fe31b43526527a2              # double 0.597078
	.quad	0x3fcb4c1a8ac5c140              # double 0.21326000000000001
	.quad	0x3fcd7ecbb7f9d6f1              # double 0.230432
	.quad	0x3fc48fa7a85015c2              # double 0.160634
	.quad	0x3fbce48626f60e0f              # double 0.112862
	.quad	0x3fedc49fd7a13c25              # double 0.93025199999999997
	.quad	0x3fee81f53825e13b              # double 0.95336399999999999
	.quad	0x3fd7d5410f94c87a              # double 0.37239100000000003
	.quad	0x3fee056605ee568a              # double 0.93815899999999997
	.quad	0x3fc7328b6d86ec18              # double 0.18123
	.quad	0x3fddf28c79f66623              # double 0.46792899999999998
	.quad	0x3fee9372a38b8ae3              # double 0.95549899999999999
	.quad	0x3fe2ebd2b6f19935              # double 0.59128700000000001
	.quad	0x3fd0fed634549b63              # double 0.26555400000000001
	.quad	0x3fe48d5410f94c88              # double 0.64225200000000005
	.quad	0x3fe493165d3996fb              # double 0.64295500000000005
	.quad	0x3fd20bf5d78811b2              # double 0.28198000000000001
	.quad	0x3fe6ce22a2c23748              # double 0.71266300000000005
	.quad	0x3fe427e9531550ca              # double 0.62987199999999999
	.quad	0x3fee401e68a0d34a              # double 0.94532700000000003
	.quad	0x3fe83aabcd78c437              # double 0.757162
	.quad	0x3fef997e56473472              # double 0.987487
	.quad	0x3fcc32ebe596c82e              # double 0.220304
	.quad	0x3fecd6733ebbfd72              # double 0.90117800000000003
	.quad	0x3fecd3f39d1b2e5a              # double 0.90087300000000003
	.quad	0x3fc18e9f6a93f291              # double 0.13716500000000001
	.quad	0x3fe3ece5710880d8              # double 0.622668
	.quad	0x3fd92f05a708ede5              # double 0.39349499999999998
	.quad	0x3fef36d655e28aa4              # double 0.97544399999999997
	.quad	0x3fd19c1b54195cc8              # double 0.27515299999999998
	.quad	0x3f8a9a8049667b5f              # double 0.01299
	.quad	0x3fde7fbefd00713f              # double 0.476547
	.quad	0x3fd92c59fb1e18f0              # double 0.39333200000000001
	.quad	0x3fe6e1719f7f8ca8              # double 0.71501999999999999
	.quad	0x3fe2e19fc2a8869c              # double 0.59004199999999996
	.quad	0x3fd458537e2c55c9              # double 0.31789099999999998
	.quad	0x3fdb7a7c9de05037              # double 0.42935099999999998
	.quad	0x3fbf8359bc33f855              # double 0.123098
	.quad	0x3fee5c5718eb8950              # double 0.94877199999999995
	.quad	0x3fef738e6d15ad10              # double 0.98285599999999995
	.quad	0x3fe4438088509bfa              # double 0.63324000000000003
	.quad	0x3fe004a9478c868c              # double 0.50056900000000004
	.quad	0x3fe18f08461f9f02              # double 0.54871000000000003
	.quad	0x3feffd1782d38477              # double 0.999645
	.quad	0x3fe0d87f88765ba7              # double 0.52642800000000001
	.quad	0x3fd2141e9af5ba2c              # double 0.28247800000000001
	.quad	0x3fd3b3a2595bbbe8              # double 0.30783899999999997
	.quad	0x3fe70ea5b530ced5              # double 0.72053800000000001
	.quad	0x3fd9f76a2f48c2e7              # double 0.40572599999999998
	.quad	0x3fee759ab6d00b46              # double 0.95185600000000004
	.quad	0x3feed1b2e59af9ec              # double 0.963098
	.quad	0x3fe730813cab81f9              # double 0.72467099999999995
	.quad	0x3fe9990afe60c38f              # double 0.79993199999999998
	.quad	0x3feabe40420f6f09              # double 0.83572400000000002
	.quad	0x3fb5f86e3b46fdeb              # double 0.085821999999999996
	.quad	0x3fe152bd3c361134              # double 0.54135
	.quad	0x3fd7f633ce63a5c2              # double 0.37440200000000001
	.quad	0x3fe1790fb65668c2              # double 0.54602799999999996
	.quad	0x3fe7354c122749f1              # double 0.72525600000000001
	.quad	0x3fdbdb163baba7b9              # double 0.435247
	.quad	0x3fc3efe0ce0b912e              # double 0.15575800000000001
	.quad	0x3fdadfb0d51f81a6              # double 0.41990300000000003
	.quad	0x3fbcc059210385c6              # double 0.11230999999999999
	.quad	0x3fdf6909aed56b01              # double 0.490786
	.quad	0x3fc764f11b60ae97              # double 0.18276800000000001
	.quad	0x3fc29ecb31c219eb              # double 0.14547099999999999
	.quad	0x3fe6656cd6c2efd4              # double 0.69988099999999998
	.quad	0x3fe8c18d6909aed5              # double 0.77362699999999995
	.quad	0x3fd3a7221858bc5a              # double 0.30707600000000002
	.quad	0x3f9f47b677f6b1a3              # double 0.030547000000000001
	.quad	0x3fe8c67be553ac4f              # double 0.77422899999999995
	.quad	0x3fdbe043a2163fdd              # double 0.43556299999999998
	.quad	0x3fe151efb6dca07f              # double 0.54125199999999996
	.quad	0x3feece8d972cd7cf              # double 0.96271399999999995
	.quad	0x3fe4e33269df97ab              # double 0.65273400000000004
	.quad	0x3fe5111cf355cd92              # double 0.65833900000000001
	.quad	0x3feb2c68a936c58f              # double 0.84917100000000001
	.quad	0x3fe6e07a28bb0a2d              # double 0.71490200000000004
	.quad	0x3fe7b3482be8bc17              # double 0.74063500000000004
	.quad	0x3fab6bd2b6f19935              # double 0.053557
	.quad	0x3fe088c8259e1f3a              # double 0.51669699999999996
	.quad	0x3fe6bfa0945f9df5              # double 0.71089199999999997
	.quad	0x3fe3dcc426351def              # double 0.620699
	.quad	0x3fe2f9a2834d26fa              # double 0.59297299999999997
	.quad	0x3fea5f86e3b46fdf              # double 0.82416100000000003
	.quad	0x3fc40ca600b02928              # double 0.156636
	.quad	0x3fe1b226c3b927d4              # double 0.55299699999999996
	.quad	0x3fee4fd4bf0995ab              # double 0.947245
	.quad	0x3fe592599ed7c6fc              # double 0.67411500000000002
	.quad	0x3fe44be1eb4202da              # double 0.63426300000000002
	.quad	0x3fb9f0a1be2b495a              # double 0.101328
	.quad	0x3fc5a5b9628cbd12              # double 0.16911999999999999
	.quad	0x3fb2703afb7e9100              # double 0.072025000000000006
	.quad	0x3fee28d8665e02eb              # double 0.94248600000000005
	.quad	0x3fed9e83e425aee6              # double 0.92559999999999998
	.quad	0x3fec6fb09203a323              # double 0.88863400000000003
	.quad	0x3fd2c87980f55de6              # double 0.29348600000000002
	.quad	0x3fcbc18b502ababf              # double 0.21684400000000001
	.quad	0x3fdae1d6494d50ec              # double 0.42003400000000002
	.quad	0x3fdba1cac083126f              # double 0.43175000000000002
	.quad	0x3fe76d634549b62c              # double 0.73210299999999995
	.quad	0x3fe365ba6efc371e              # double 0.60616800000000004
	.quad	0x3fd5599aa60913a5              # double 0.333594
	.quad	0x3fc4432441fea811              # double 0.158299
	.quad	0x3fdc317268d32831              # double 0.44051800000000002
	.quad	0x3fd874eebf65dbfd              # double 0.382137
	.quad	0x3fe56b399f5dfeb9              # double 0.66933900000000002
	.quad	0x3fa0d2806af46aa1              # double 0.032856000000000003
	.quad	0x3feecdb163baba7c              # double 0.96260900000000004
	.quad	0x3fe2cd338f798527              # double 0.58754899999999999
	.quad	0x3fae86e7e62dc6e3              # double 0.059623000000000002
	.quad	0x3fe440d4dc65c704              # double 0.63291399999999998
	.quad	0x3fda077ccc037931              # double 0.40670699999999999
	.quad	0x3fecb955f78359bc              # double 0.89762399999999997
	.quad	0x3fcbdd11be6e6538              # double 0.21768399999999999
	.quad	0x3fef9a93293d102c              # double 0.98761900000000002
	.quad	0x3fe3119ac79702e6              # double 0.59589899999999996
	.quad	0x3fe7a80064a9cdc4              # double 0.73925799999999997
	.quad	0x3fcefad6cb535009              # double 0.24203
	.quad	0x3fab5b2d4d4024b3              # double 0.053429999999999998
	.quad	0x3fe387357e670e2c              # double 0.61025499999999999
	.quad	0x3fd6a4a48f96e158              # double 0.35379899999999997
	.quad	0x3feb02d59d55e6bc              # double 0.84409599999999995
	.quad	0x3feae3c105186db5              # double 0.84030199999999999
	.quad	0x3fc64d22c881e471              # double 0.17422899999999999
	.quad	0x3fe9003ab862b27d              # double 0.78127800000000003
	.quad	0x3fe87060bb2bba99              # double 0.76371800000000001
	.quad	0x3feb855fbb517a46              # double 0.86003099999999999
	.quad	0x3fc1851654d61b2a              # double 0.136874
	.quad	0x3fe9fb549f94855e              # double 0.81193000000000004
	.quad	0x3fe3cbc05d52c16e              # double 0.61862200000000001
	.quad	0x3fd2008a697aeddd              # double 0.28128300000000001
	.quad	0x3feb0a936c58eeaf              # double 0.84504100000000004
	.quad	0x3fe1611fd5885d31              # double 0.54310599999999998
	.quad	0x3fb30ac3a860dcba              # double 0.074383000000000005
	.quad	0x3fb653b8e4b87bdd              # double 0.087215000000000001
	.quad	0x3fa6a0ba1f4b1ee2              # double 0.044194999999999998
	.quad	0x3f9a8f3a9b068124              # double 0.025937000000000002
	.quad	0x3fe6d3543aeab799              # double 0.71329699999999996
	.quad	0x3fc48815e39713ad              # double 0.16040299999999999
	.quad	0x3fe095b9a5a89b95              # double 0.51827699999999999
	.quad	0x3fe6492ddbdb5d89              # double 0.69643299999999997
	.quad	0x3fa66a76965f5276              # double 0.043781
	.quad	0x3fe43660e51d25ab              # double 0.63163800000000003
	.quad	0x3febc200c0f01fb8              # double 0.86743199999999998
	.quad	0x3fe12a51e321a2e8              # double 0.536416
	.quad	0x3fa41ca3a4b5568f              # double 0.039281000000000003
	.quad	0x3fb5905c03361566              # double 0.084234000000000003
	.quad	0x3fe1b30728e92d56              # double 0.55310400000000004
	.quad	0x3fbb1550ca1cef24              # double 0.105794
	.quad	0x3fd654b05b7cfe58              # double 0.34891899999999998
	.quad	0x3fef07f88765ba6f              # double 0.969723
	.quad	0x3fce0ae1049235f8              # double 0.234707
	.quad	0x3fe093836a832b99              # double 0.518007
	.quad	0x3fe730ff10ecb74e              # double 0.72473100000000001
	.quad	0x3fbea737110e453d              # double 0.119739
	.quad	0x3fc67d45a5fc7e6b              # double 0.17569799999999999
	.quad	0x3fd9568a50507a6c              # double 0.39590700000000001
	.quad	0x3fd0d6451b93037d              # double 0.26307799999999998
	.quad	0x3fd15171e29b6b2b              # double 0.270596
	.quad	0x3feea0bc382a12f9              # double 0.957121
	.quad	0x3fcb9767903211cb              # double 0.215558
	.quad	0x3feedd78811b1d93              # double 0.96453500000000003
	.quad	0x3fda9cb252ce032e              # double 0.41581400000000002
	.quad	0x3fda420b3d4ae42a              # double 0.41028100000000001
	.quad	0x3fec75d78811b1d9              # double 0.88938499999999998
	.quad	0x3fcce1719f7f8ca8              # double 0.22563
	.quad	0x3feeb7414a4d2b2c              # double 0.95987
	.quad	0x3fecb634dad31fcd              # double 0.89724199999999998
	.quad	0x3fdfcd9a52263d81              # double 0.49692399999999998
	.quad	0x3fcd4c447c30d307              # double 0.22889000000000001
	.quad	0x3fe1fed41b75a74c              # double 0.562357
	.quad	0x3fd82c55c96030c2              # double 0.37770599999999999
	.quad	0x3fea48f10a99b6f6              # double 0.82140400000000002
	.quad	0x3faeca89fc6da448              # double 0.060138999999999998
	.quad	0x3fdbfb8f57f737da              # double 0.43722899999999998
	.quad	0x3fd8173fb7a5f41b              # double 0.376419
	.quad	0x3fdd0afe60c38f36              # double 0.45379599999999998
	.quad	0x3fe1870b8cfbfc65              # double 0.54773499999999997
	.quad	0x3fe68ab92c061848              # double 0.704434
	.quad	0x3fe212ab68cef673              # double 0.56477900000000003
	.quad	0x3fc09c2c1b10fd7e              # double 0.12976599999999999
	.quad	0x3fc4fb224aada33c              # double 0.163914
	.quad	0x3fd405ee568a5050              # double 0.31286199999999997
	.quad	0x3fcae618ce2d1f1d              # double 0.210147
	.quad	0x3fe18f4d7add15f0              # double 0.54874299999999998
	.quad	0x3f9b0813cab81f97              # double 0.026398000000000001
	.quad	0x3fd880a5accd5305              # double 0.38285200000000003
	.quad	0x3fc7f91600f34507              # double 0.18728900000000001
	.quad	0x3fc193250b52439a              # double 0.13730300000000001
	.quad	0x3fe9cdca8e2e2b8c              # double 0.80637099999999994
	.quad	0x3fe25375c8d9f905              # double 0.57268799999999997
	.quad	0x3fb4f5e41d4b6a62              # double 0.081877000000000005
	.quad	0x3fedb56323bbc6eb              # double 0.928392
	.quad	0x3fde7820a30db6a2              # double 0.47608200000000001
	.quad	0x3fc53dc8b86b15f9              # double 0.16594800000000001
	.quad	0x3fc607357e670e2c              # double 0.172095
	.quad	0x3fd4a8049667b5f2              # double 0.32275500000000001
	.quad	0x3f89aa60913a4f87              # double 0.012532
	.quad	0x3fe8df8b1572580c              # double 0.77728799999999997
	.quad	0x3fc1ad3a604e1e71              # double 0.138099
	.quad	0x3feeac322291fb40              # double 0.95852000000000003
	.quad	0x3fe403c8e25c810a              # double 0.62546199999999996
	.quad	0x3fd6ba0620ab7132              # double 0.35510399999999998
	.quad	0x3feeea4441787054              # double 0.96609699999999998
	.quad	0x3fe56512a94ff002              # double 0.66858799999999996
	.quad	0x3fefacd9e83e425b              # double 0.98985
	.quad	0x3fe4af31b152f3c3              # double 0.64638600000000002
	.quad	0x3fd2411c2a023209              # double 0.28522399999999998
	.quad	0x3fe19a6506141637              # double 0.55009699999999995
	.quad	0x3fe8e158750c1b97              # double 0.77750799999999998
	.quad	0x3fd4dd11be6e6538              # double 0.32599299999999998
	.quad	0x3fdb6a875d56f32c              # double 0.42837700000000001
	.quad	0x3fdc1cfbb949624a              # double 0.43926900000000002
	.quad	0x3f8991361dc93ea3              # double 0.012484
	.quad	0x3fef548a9bcfd4bf              # double 0.97906999999999999
	.quad	0x3fda1cb039ef0f17              # double 0.408001
	.quad	0x3fb676d97b30f8c6              # double 0.087750999999999995
	.quad	0x3fd9384ba0e84274              # double 0.39406099999999999
	.quad	0x3feb04449dbec248              # double 0.84427099999999999
	.quad	0x3fe151159c497742              # double 0.54114799999999996
	.quad	0x3fe43d05af6c69b6              # double 0.63244900000000004
	.quad	0x3fbb0eb24a6a875d              # double 0.105693
	.quad	0x3feba474538ef34d              # double 0.86382499999999995
	.quad	0x3fc5d9f4d37c1377              # double 0.170714
	.quad	0x3fd0f4eca686e7e6              # double 0.26494899999999999
	.quad	0x3fec40df58c08b76              # double 0.88291900000000001
	.quad	0x3febeb313be22e5e              # double 0.87246000000000001
	.quad	0x3fe5aa38b8ae31d7              # double 0.67702899999999999
	.quad	0x3fcee3d5fdcdf698              # double 0.24132799999999999
	.quad	0x3fe4d6c2efd438d2              # double 0.65121600000000002
	.quad	0x3fd5e1437c5692b4              # double 0.34187400000000001
	.quad	0x3fe63d4ae429e0a4              # double 0.69498199999999999
	.quad	0x3fe42502eec7c958              # double 0.62951800000000002
	.quad	0x3fec5f97aaac1095              # double 0.88666900000000004
	.quad	0x3fe35e6bc621b7e1              # double 0.60527600000000004
	.quad	0x3fed8a43bb40b34e              # double 0.92312799999999995
	.quad	0x3fd99c4113c68662              # double 0.40016200000000002
	.quad	0x3feef121ab4b72c5              # double 0.96693499999999998
	.quad	0x3fe424d6e47dc37a              # double 0.62949699999999997
	.quad	0x3febd6a7ac81d3aa              # double 0.86995299999999998
	.quad	0x3fdc85f4a1272c95              # double 0.44567600000000002
	.quad	0x3fe1b94d94078961              # double 0.55386999999999997
	.quad	0x3fecc05b39e279dd              # double 0.89848099999999997
	.quad	0x3fdaa7a85015c209              # double 0.41648299999999999
	.quad	0x3fef42352eb5f5f1              # double 0.97683200000000003
	.quad	0x3fd538c5436b8f9b              # double 0.33159
	.quad	0x3fd7a708ede54b49              # double 0.36957000000000001
	.quad	0x3fc2897e996312f5              # double 0.14482100000000001
	.quad	0x3fe2938151a43782              # double 0.58050599999999997
	.quad	0x3fd38d21bc126a66              # double 0.30548900000000001
	.quad	0x3fb884c6a3bddfca              # double 0.095776
	.quad	0x3fd0d6adf71eafee              # double 0.26310299999999998
	.quad	0x3febee9dd7ecbb80              # double 0.87287800000000004
	.quad	0x3fbf5c182ecaeea6              # double 0.122499
	.quad	0x3f96f8ad25679896              # double 0.022433000000000002
	.quad	0x3feed5757d5a9eb2              # double 0.963557
	.quad	0x3feb66f5019f3c71              # double 0.85631800000000002
	.quad	0x3fb4c6d612c6ac21              # double 0.081158999999999995
	.quad	0x3fec0cf1800a7c5b              # double 0.87658000000000003
	.quad	0x3fe165a78f25a251              # double 0.543659
	.quad	0x3fe5d4d4024b33db              # double 0.68223
	.quad	0x3fbb44d44567125e              # double 0.106519
	.quad	0x3fe9b29c347e8cce              # double 0.80305300000000002
	.quad	0x3fe305015c209247              # double 0.59436100000000003
	.quad	0x3fef84a2fcefaa47              # double 0.98494099999999995
	.quad	0x3fdb91361dc93ea3              # double 0.43073800000000001
	.quad	0x3fe520cf1800a7c6              # double 0.66025500000000004
	.quad	0x3fececc3e3193f6c              # double 0.90390199999999998
	.quad	0x3fe3af0bf1a5ca2a              # double 0.61511800000000005
	.quad	0x3fed8318b9346994              # double 0.92225299999999998
	.quad	0x3fe24e69f05ea24d              # double 0.57207200000000002
	.quad	0x3fd0ceaaf35e310e              # double 0.26261400000000001
	.quad	0x3fddb7e0ac7da1ec              # double 0.46434799999999998
	.quad	0x3fd27c45cbbc2b95              # double 0.28883500000000001
	.quad	0x3feabd2fa0d77b7c              # double 0.83559399999999994
	.quad	0x3fe818b0d0edc3bd              # double 0.75301399999999996
	.quad	0x3fe954845132f87b              # double 0.79156700000000002
	.quad	0x3fc0b32ce89656ef              # double 0.130468
	.quad	0x3fe08014f8b588e3              # double 0.51563499999999995
	.quad	0x3fe6e6234a87e38f              # double 0.71559300000000003
	.quad	0x3fbfd145d851654d              # double 0.12428699999999999
	.quad	0x3fdbd894812be48a              # double 0.43509399999999998
	.quad	0x3fc791b3f20a73f7              # double 0.18413399999999999
	.quad	0x3fe3ec679cc74b84              # double 0.62260800000000005
	.quad	0x3fc283c297bfa4c6              # double 0.144646
	.quad	0x3fe54b74ddf86e3b              # double 0.66546099999999997
	.quad	0x3f9eef1bac2df0d4              # double 0.030209
	.quad	0x3fef1c90c4dec1c2              # double 0.97223700000000002
	.quad	0x3fe9b82e44b6e936              # double 0.80373300000000003
	.quad	0x3fc99f7f8ca8198f              # double 0.20018
	.quad	0x3fe1d53ac4f7ec35              # double 0.55727899999999997
	.quad	0x3fb864ece9a2c669              # double 0.09529
	.quad	0x3fee022dd7a99fa1              # double 0.93776599999999999
	.quad	0x3fb40bcbe61cffeb              # double 0.078305
	.quad	0x3febf15e7c8d1959              # double 0.87321400000000005
	.quad	0x3fe69bed30f062d4              # double 0.706534
	.quad	0x3fed9ed5ae1cde5d              # double 0.92563899999999999
	.quad	0x3fe1550ebaade658              # double 0.54163300000000003
	.quad	0x3fea0a99b6f5caf3              # double 0.81379400000000002
	.quad	0x3fa40c62e4d1a650              # double 0.039156999999999997
	.quad	0x3fcfaa821f2990f3              # double 0.247391
	.quad	0x3fdc255f3519bd40              # double 0.43978099999999998
	.quad	0x3fe14c6e6d9be4cd              # double 0.54057999999999995
	.quad	0x3fe40ea5b530ced5              # double 0.62678800000000001
	.quad	0x3fdc7a99fa11a976              # double 0.44498300000000002
	.quad	0x3fd2c6045baf533f              # double 0.29333599999999999
	.quad	0x3fa6cfe9b7bf1e8e              # double 0.044554999999999997
	.quad	0x3fa91f4f50a02b84              # double 0.049067
	.quad	0x3fe7ecf63800218e              # double 0.74767600000000001
	.quad	0x3fe1c8d1958969a1              # double 0.55576400000000004
	.quad	0x3feb303e20ccff22              # double 0.84963900000000003
	.quad	0x3fdbee5abc0e38a8              # double 0.43642300000000001
	.quad	0x3fcfcdbbe0157eed              # double 0.24846599999999999
	.quad	0x3fe457d3910c2c5e              # double 0.63572099999999998
	.quad	0x3fe0755ffe6d58c9              # double 0.51432800000000001
	.quad	0x3fc8fd4bf0995aaf              # double 0.19522999999999999
	.quad	0x3fc7634dad31fcd2              # double 0.18271799999999999
	.quad	0x3fe29e96c3fc43b3              # double 0.58185900000000002
	.quad	0x3feb336deb95e5b0              # double 0.85002800000000001
	.quad	0x3fd9e11dbca9691a              # double 0.40436499999999997
	.quad	0x3fe59372a38b8ae3              # double 0.67424899999999999
	.quad	0x3fcc364bec679cc7              # double 0.22040699999999999
	.quad	0x3fef362a5e785b5b              # double 0.97536199999999995
	.quad	0x3fe43e5109070fbf              # double 0.63260700000000003
	.quad	0x3fe0ade8709741d1              # double 0.52122900000000005
	.quad	0x3fd57d7c2ca148bb              # double 0.33578400000000003
	.quad	0x3fd89f94855da273              # double 0.38474000000000003
	.quad	0x3faca8198f1d3ed5              # double 0.055969999999999999
	.quad	0x3fe3fa82e87d2c7c              # double 0.62433000000000005
	.quad	0x3fce46412cf0f9d3              # double 0.23651900000000001
	.quad	0x3fe2eb09635610ae              # double 0.59119100000000002
	.quad	0x3fe90bed740c4157              # double 0.78270600000000001
	.quad	0x3fe4d694ccab3ede              # double 0.65119400000000005
	.quad	0x3fddacc92146a1a5              # double 0.463671
	.quad	0x3fc0b4fa48301a7a              # double 0.130523
	.quad	0x3fc7d0d8cb07d0af              # double 0.186061
	.quad	0x3fe61b691212513b              # double 0.69084599999999996
	.quad	0x3fe0c9cd3e0bd44a              # double 0.52463400000000004
	.quad	0x3fdbc38b04ab606b              # double 0.43380999999999997
	.quad	0x3fe7f394b7b28955              # double 0.74848400000000004
	.quad	0x3fa417a89331a08c              # double 0.039243
	.quad	0x3fe32f9873ffac1d              # double 0.59955999999999998
	.quad	0x3fbacb4289118c19              # double 0.10466399999999999
	.quad	0x3fe12caff6d33094              # double 0.53670499999999999
	.quad	0x3fea70fe047d3d43              # double 0.82629300000000006
	.quad	0x3fcdedd052934acb              # double 0.23382
	.quad	0x3fe3bf9c62a1b5c8              # double 0.61714000000000002
	.quad	0x3fe58366516db0de              # double 0.67229000000000005
	.quad	0x3fbfb8c32a8c9b84              # double 0.123913
	.quad	0x3fb04ec636b09635              # double 0.063701999999999995
	.quad	0x3fe3d98bf7f06706              # double 0.62030600000000002
	.quad	0x3fb51f70de8f6cf0              # double 0.082511000000000001
	.quad	0x3fa242d05f288484              # double 0.035666000000000003
	.quad	0x3feebdf090f733a9              # double 0.96068600000000003
	.quad	0x3fa77c02afdda8bd              # double 0.045867999999999999
	.quad	0x3fd58feef5ec80c7              # double 0.33690999999999999
	.quad	0x3f9d86ec17ebaf10              # double 0.028835
	.quad	0x3fdbbcb1cc964628              # double 0.433392
	.quad	0x3fc90ce4ead0c3d2              # double 0.19570599999999999
	.quad	0x3fa233bd9cae2110              # double 0.035550999999999999
	.quad	0x3fe89741d084e832              # double 0.76846400000000004
	.quad	0x3f902539756c93a7              # double 0.015767
	.quad	0x3fb8e5f7403dddb1              # double 0.097258999999999998
	.quad	0x3fe83543aeab7996              # double 0.75650200000000001
	.quad	0x3fe55606317268d3              # double 0.66675099999999998
	.quad	0x3fdcf99806f26289              # double 0.45273400000000003
	.quad	0x3febcd2f5dbb9cfa              # double 0.86879700000000004
	.quad	0x3fc2cc5fbf83382e              # double 0.14686199999999999
	.quad	0x3fde262456f75d9a              # double 0.471078
	.quad	0x3fe618bd66277c46              # double 0.69052000000000002
	.quad	0x3fe886705c896dd2              # double 0.76641099999999995
	.quad	0x3fe1e4345cfede98              # double 0.55910700000000002
	.quad	0x3fe4926e978d4fdf              # double 0.64287499999999997
	.quad	0x3feab395c4220360              # double 0.83442199999999999
	.quad	0x3fd99e8c47a17f41              # double 0.40030199999999999
	.quad	0x3fcbe6b3fe9fadb0              # double 0.21797800000000001
	.quad	0x3fda42d8c2a454de              # double 0.41032999999999997
	.quad	0x3f9641b328b6d86f              # double 0.021735000000000001
	.quad	0x3fe3a06c8711d799              # double 0.61333300000000002
	.quad	0x3fd94bf0995aaf79              # double 0.39526
	.quad	0x3fca9667b5f1bef5              # double 0.20771500000000001
	.quad	0x3fc86a550870110a              # double 0.190745
	.quad	0x3fd37381d7dbf488              # double 0.303925
	.quad	0x3fcd148fd9fd36f8              # double 0.22719
	.quad	0x3feb2a1f8e3ac0c6              # double 0.84889199999999998
	.quad	0x3fea07c84b5dcc64              # double 0.81345
	.quad	0x3fe328522ea0fd3b              # double 0.59867199999999998
	.quad	0x3fef61e92923e5b8              # double 0.98070199999999996
	.quad	0x3fdb6694898f605b              # double 0.42813600000000002
	.quad	0x3fc5ce0fc2eba27b              # double 0.170351
	.quad	0x3fd163e8dda48b65              # double 0.27172299999999999
	.quad	0x3fc5ec460ed80a18              # double 0.17127300000000001
	.quad	0x3fe616a6a012599f              # double 0.69026500000000002
	.quad	0x3fea16a8b8f14db6              # double 0.81526600000000005
	.quad	0x3fc5e835dedf1e08              # double 0.171149
	.quad	0x3fe2327243137b07              # double 0.568658
	.quad	0x3fd860d887ebf22c              # double 0.380911
	.quad	0x3fb46b26bf8769ec              # double 0.079759999999999998
	.quad	0x3fe236da87a072d2              # double 0.56919600000000004
	.quad	0x3fdde2ef4e0114d3              # double 0.466976
	.quad	0x3fc95d91ab8e8ea4              # double 0.19816800000000001
	.quad	0x3fe67b6fe2e6ea85              # double 0.70256799999999997
	.quad	0x3fd2c96030c23fab              # double 0.293541
	.quad	0x3fcd4d940789613d              # double 0.22892999999999999
	.quad	0x3fda4f5d35653c9b              # double 0.41109400000000001
	.quad	0x3fc70f840181e03f              # double 0.18016099999999999
	.quad	0x3fc5a28bb0a2ca9b              # double 0.16902300000000001
	.quad	0x3faf301eabbcb1cd              # double 0.060914000000000003
	.quad	0x3fce5abc0e38a7e7              # double 0.23714399999999999
	.quad	0x3feae2478854cdb8              # double 0.84012200000000004
	.quad	0x3fa57c914b167ec8              # double 0.041966000000000003
	.quad	0x3fdd9bae46cfc82a              # double 0.46262700000000001
	.quad	0x3fd8ebe1650a45d4              # double 0.38939699999999999
	.quad	0x3fe7661cffeb074a              # double 0.73121499999999995
	.quad	0x3fe0eaa6d2674081              # double 0.528644
	.quad	0x3fe19a5ebb7739f3              # double 0.55009399999999997
	.quad	0x3fd65532617c1bda              # double 0.34894999999999998
	.quad	0x3fe53775b8130165              # double 0.66302000000000005
	.quad	0x3fe447e8ccdd93c4              # double 0.63377799999999995
	.quad	0x3fe57f62b6ae7d56              # double 0.67179999999999995
	.quad	0x3fea893964a59c06              # double 0.82925099999999996
	.quad	0x3fc390b84988094e              # double 0.15285399999999999
	.quad	0x3fef3320535c9e67              # double 0.97499100000000005
	.quad	0x3fee6822ff08893b              # double 0.95021199999999995
	.quad	0x3fb72d6ece13f4aa              # double 0.090537000000000006
	.quad	0x3fbc4189374bc6a8              # double 0.110375
	.quad	0x3fc6e7924af0bf1a              # double 0.17894199999999999
	.quad	0x3fe9fc4c165907d9              # double 0.81204799999999999
	.quad	0x3fef8c9752977c89              # double 0.98591200000000001
	.quad	0x3fc14aec8d5c7475              # double 0.135099
	.quad	0x3feceeed8904f6e0              # double 0.90416600000000002
	.quad	0x3fb008d8ec95bff0              # double 0.062634999999999996
	.quad	0x3fd788bda9435ac9              # double 0.36772100000000002
	.quad	0x3fb0cbd1244a6224              # double 0.065610000000000002
	.quad	0x3feb0ecd8dbcec85              # double 0.845557
	.quad	0x3faa07f66e86c658              # double 0.050841999999999998
	.quad	0x3fedcf5d35653c9b              # double 0.93156300000000003
	.quad	0x3fa04fb1183b6028              # double 0.031857999999999997
	.quad	0x3fd30e5604189375              # double 0.29775000000000001
	.quad	0x3fcd203a322af577              # double 0.227546
	.quad	0x3fd4ac14c660a201              # double 0.32300299999999998
	.quad	0x3fe0f470eb24a6a8              # double 0.52983899999999995
	.quad	0x3fe2c78e9f6a93f3              # double 0.58686000000000005
	.quad	0x3fb18cd20afa2f06              # double 0.068555000000000005
	.quad	0x3fc3cce1c58255b0              # double 0.15468999999999999
	.quad	0x3fb04d65e4606749              # double 0.063681000000000001
	.quad	0x3faa873bc903ea70              # double 0.051812999999999998
	.quad	0x3fb5f644955b4678              # double 0.085789000000000004
	.quad	0x3fd783947496aad2              # double 0.36740600000000001
	.quad	0x3fdc65ecc3e3193f              # double 0.44372099999999998
	.quad	0x3fe92120e1f7d73d              # double 0.78529400000000005
	.quad	0x3fdd3397dd00f777              # double 0.45627400000000001
	.quad	0x3fe468427418d691              # double 0.63772700000000004
	.quad	0x3fb54ee392e1ef74              # double 0.083235000000000003
	.quad	0x3fecb66b6177ea1c              # double 0.89726799999999995
	.quad	0x3f880e496ededaec              # double 0.011745999999999999
	.quad	0x3fd35dcc63f14120              # double 0.30259999999999998
	.quad	0x3fcc39ffd60e94ee              # double 0.22051999999999999
	.quad	0x3fd54a6223e18698              # double 0.33266499999999999
	.quad	0x3feae34117f8444a              # double 0.84024100000000002
	.quad	0x3fe8836a832b990b              # double 0.766042
	.quad	0x3fedb45f17bd8be7              # double 0.92826799999999998
	.quad	0x3fedd6238da3c212              # double 0.93239000000000005
	.quad	0x3fe7a888b545c78a              # double 0.73932299999999995
	.quad	0x3fe6593a2df9378f              # double 0.69839200000000001
	.quad	0x3fe83224aada33be              # double 0.75612100000000004
	.quad	0x3fed6d30f062d40b              # double 0.91957900000000004
	.quad	0x3fd5f449129888f8              # double 0.34303499999999998
	.quad	0x3fedebbba55d1c3b              # double 0.93502600000000002
	.quad	0x3fda6ca03c4b09ea              # double 0.41288000000000002
	.quad	0x3fe9ce48626f60e1              # double 0.80643100000000001
	.quad	0x3fd387b99d451fc5              # double 0.30515900000000001
	.quad	0x3fe623e9ea140571              # double 0.69188400000000005
	.quad	0x3fa157cd466f501a              # double 0.033873
	.quad	0x3fec8b2c83ec892b              # double 0.89198900000000003
	.quad	0x3fe997d49d7ba66a              # double 0.79978400000000005
	.quad	0x3faf926c7eae5bc8              # double 0.061663999999999997
	.quad	0x3fec008e9b38d60a              # double 0.87506799999999996
	.quad	0x3fc5b573eab367a1              # double 0.1696
	.quad	0x3fc169a91105e1c1              # double 0.13603699999999999
	.quad	0x3f8fa43fe5c91d15              # double 0.01545
	.quad	0x3fcb670196d8f4f9              # double 0.21408099999999999
	.quad	0x3fa621b7e0ac7da2              # double 0.043226000000000001
	.quad	0x3fc59e518f3eccc4              # double 0.16889399999999999
	.quad	0x3fde0014f8b588e3              # double 0.46875499999999998
	.quad	0x3f8dbca9691a75cd              # double 0.01452
	.quad	0x3fe3ba9b06812381              # double 0.61652899999999999
	.quad	0x3fe95e939eadd591              # double 0.79279500000000003
	.quad	0x3fb5bdf8f4730404              # double 0.084930000000000005
	.quad	0x3feea92e62131a8f              # double 0.958152
	.quad	0x3fe008f217093101              # double 0.50109199999999998
	.quad	0x3fba3d4f15e7c8d2              # double 0.10249800000000001
	.quad	0x3fd9355cd91eeaa7              # double 0.39388200000000001
	.quad	0x3fcc40d0aaa7ded7              # double 0.22072800000000001
	.quad	0x3fd4fda4052d666b              # double 0.32798100000000002
	.quad	0x3fd6cf63800218df              # double 0.356408
	.quad	0x3fef98958d9b5e96              # double 0.98737600000000003
	.quad	0x3fead9af9ebe9c88              # double 0.83907299999999996
	.quad	0x3fde570c564f97ee              # double 0.47406300000000001
	.quad	0x3fd99b994e1a3f46              # double 0.40012199999999998
	.quad	0x3fedc1fc8f32378b              # double 0.92993000000000003
	.quad	0x3fda30d306a2b170              # double 0.40922999999999998
	.quad	0x3fe35080b673c4f4              # double 0.60357700000000003
	.quad	0x3fe659af9ebe9c88              # double 0.69844799999999996
	.quad	0x3fcd16b97fe8ee6c              # double 0.22725600000000001
	.quad	0x3fe37fbefd00713f              # double 0.609344
	.quad	0x3fb310a99b6f5caf              # double 0.074472999999999998
	.quad	0x3fe66fa1e3eaf683              # double 0.70112699999999994
	.quad	0x3fbad106ee30caa3              # double 0.104752
	.quad	0x3fea22c450268901              # double 0.81674400000000003
	.quad	0x3fec3d07c84b5dcc              # double 0.88244999999999995
	.quad	0x3fd4c32ebe596c83              # double 0.32441300000000001
	.quad	0x3fd5418d6909aed5              # double 0.33212599999999998
	.quad	0x3fe774e874c8ffb9              # double 0.73302100000000003
	.quad	0x3f84d37c1376d549              # double 0.010168999999999999
	.quad	0x3fd4e5ffa3b9ae0c              # double 0.32653799999999999
	.quad	0x3fce33508f648c72              # double 0.23594100000000001
	.quad	0x3fe1bc382a12f901              # double 0.554226
	.quad	0x3fc13c70c996b767              # double 0.134657
	.quad	0x3fe1b9e492bc2fc7              # double 0.55394200000000005
	.quad	0x3fcddf8f4730403a              # double 0.23338500000000001
	.quad	0x3fd5876e1deacc92              # double 0.336391
	.quad	0x3fe35ad31fcd24e1              # double 0.60483699999999996
	.quad	0x3fd21d68c692f6e8              # double 0.28304499999999999
	.quad	0x3fe9791e646f1562              # double 0.79603500000000005
	.quad	0x3fef42396073de1e              # double 0.97683399999999998
	.quad	0x3fea3193f6c2699c              # double 0.81855199999999994
	.quad	0x3fead109070fbeba              # double 0.83801700000000001
	.quad	0x3fea690ff9724745              # double 0.82532499999999998
	.quad	0x3fc8d1b71758e219              # double 0.19389999999999999
	.quad	0x3fbae158750c1b97              # double 0.105001
	.quad	0x3fe216db0dd82fd7              # double 0.56528999999999996
	.quad	0x3fb53532e7b3d8e0              # double 0.082843
	.quad	0x3fdb1dd5d3dc8b87              # double 0.42369600000000002
	.quad	0x3feee924f227d029              # double 0.96596000000000004
	.quad	0x3fa3ac929aa1d756              # double 0.038426000000000002
	.quad	0x3fe7036c9c0a8d22              # double 0.71916800000000003
	.quad	0x3fd48e29f9ce8d97              # double 0.32117699999999999
	.quad	0x3f952502eec7c958              # double 0.020649000000000001
	.quad	0x3fe902de00d1b717              # double 0.78159999999999996
	.quad	0x3fcf596851223183              # double 0.24491599999999999
	.quad	0x3fd79988d2a1f8e4              # double 0.36874600000000002
	.quad	0x3fef1565c2d27807              # double 0.97136199999999994
	.quad	0x3fe4ef6b5d462c34              # double 0.65422599999999997
	.quad	0x3feeba8a3f8982cb              # double 0.96027099999999998
	.quad	0x3fe6b09a671ef30a              # double 0.70905799999999997
	.quad	0x3fd21dd1a21ea359              # double 0.28306999999999999
	.quad	0x3fc4aceaaf35e311              # double 0.161527
	.quad	0x3fe91b34a44c7b03              # double 0.78457100000000002
	.quad	0x3fb5972cd7cf5f4e              # double 0.084337999999999996
	.quad	0x3fe75612c6ac215c              # double 0.72925700000000004
	.quad	0x3fedb81f969e3c97              # double 0.92872600000000005
	.quad	0x3fba2f166e008e9b              # double 0.102281
	.quad	0x3fd9e4f3343fa2ad              # double 0.40459899999999999
	.quad	0x3fd4350d2806af47              # double 0.31573800000000002
	.quad	0x3fec88b11409a240              # double 0.89168599999999998
	.quad	0x3fe46540cc78e9f7              # double 0.63736000000000004
	.quad	0x3fe78512231832fd              # double 0.73499400000000004
	.quad	0x3fbcca600b029281              # double 0.11246299999999999
	.quad	0x3fdae108c3f3e037              # double 0.419985
	.quad	0x3fe533e35c5b4aa9              # double 0.66258399999999995
	.quad	0x3fc31f14983d7907              # double 0.14938599999999999
	.quad	0x3fdb5eb313be22e6              # double 0.42765500000000001
	.quad	0x3fe71ae70c1333b9              # double 0.72203399999999995
	.quad	0x3fe7d9578a2a90cd              # double 0.74528099999999997
	.quad	0x3fe1f1f79420b3d5              # double 0.56078700000000004
	.quad	0x3faa03c4b09e98dd              # double 0.050810000000000001
	.quad	0x3fed5d31337eb28e              # double 0.91762600000000005
	.quad	0x3fee92e83a109d06              # double 0.95543299999999998
	.quad	0x3f927aa68f4b61fe              # double 0.018046
	.quad	0x3fe081fd9ba1b196              # double 0.51586799999999999
	.quad	0x3fe49ea78af3e469              # double 0.64436700000000002
	.quad	0x3fd96634117f8445              # double 0.39686300000000002
	.quad	0x3fe0bfec13b9f128              # double 0.523428
	.quad	0x3fe7051eb851eb85              # double 0.71937499999999999
	.quad	0x3fb1d00f776c4828              # double 0.069581000000000004
	.quad	0x3fe873387160956c              # double 0.76406499999999999
	.quad	0x3fdf8f53c579f234              # double 0.49312299999999998
	.quad	0x3fb2ee957470eb25              # double 0.073953000000000005
	.quad	0x3fd7d972cd7cf5f5              # double 0.37264700000000001
	.quad	0x3fde4ef459d9902a              # double 0.47356900000000002
	.quad	0x3fd32b55ef1fddec              # double 0.29952000000000001
	.quad	0x3faab9d3cbc48f11              # double 0.052199000000000002
	.quad	0x3fbd6fa82e87d2c8              # double 0.114985
	.quad	0x3fe01389b52007dd              # double 0.50238499999999997
	.quad	0x3fb2922d948dc11e              # double 0.072542999999999996
	.quad	0x3fc231b584b1ab08              # double 0.14214199999999999
	.quad	0x3fc20b780346dc5d              # double 0.14097499999999999
	.quad	0x3fd47a99fa11a976              # double 0.31998300000000002
	.quad	0x3fec2854477ff152              # double 0.87992300000000001
	.quad	0x3fe692fb19e731d3              # double 0.70544200000000001
	.quad	0x3fe6aa497fa5d28d              # double 0.708287
	.quad	0x3febf89613d31b9b              # double 0.87409499999999996
	.quad	0x3fe1eed8904f6dfc              # double 0.56040599999999996
	.quad	0x3fd7e79ee02a77a3              # double 0.37351200000000001
	.quad	0x3fe20b60f1b25f63              # double 0.56388899999999997
	.quad	0x3fe0f635e74299d9              # double 0.53005500000000005
	.quad	0x3fec2ac53b0813cb              # double 0.88022100000000003
	.quad	0x3feb53cff64cf8d7              # double 0.85398099999999999
	.quad	0x3f919d66adb402d1              # double 0.017201999999999999
	.quad	0x3fd84cb5bb384fd3              # double 0.37968200000000002
	.quad	0x3fe2f8c436fc1590              # double 0.59286700000000003
	.quad	0x3feb32bdc26dce3a              # double 0.84994400000000003
	.quad	0x3fd7841248d7e026              # double 0.36743599999999998
	.quad	0x3fd0d938151a4378              # double 0.26325799999999999
	.quad	0x3feae358298cc144              # double 0.84025199999999999
	.quad	0x3fddc9107faa044b              # double 0.46539700000000001
	.quad	0x3fe1fff79c842fa5              # double 0.562496
	.quad	0x3fe8c4806290eed0              # double 0.77398699999999998
	.quad	0x3fdd2ae8e1d6494d              # double 0.45574399999999998
	.quad	0x3fe51c779a6b50b1              # double 0.65972500000000001
	.quad	0x3fcd6b65a9a80496              # double 0.22983999999999999
	.quad	0x3fe3723465625a68              # double 0.60769099999999998
	.quad	0x3fb1d074213a0c6b              # double 0.069586999999999996
	.quad	0x3fd33400b88ca3e8              # double 0.30004900000000001
	.quad	0x3fed5a426bb55ac0              # double 0.91726799999999997
	.quad	0x3feae931876188b1              # double 0.84096599999999999
	.quad	0x3fefe0f7fcfc3f81              # double 0.99621199999999998
	.quad	0x3feb2da98676a726              # double 0.84932399999999997
	.quad	0x3fe7992ea52ef912              # double 0.73744900000000002
	.quad	0x3fd2fbf401c4fc1e              # double 0.296628
	.quad	0x3fe1b8fffbce4218              # double 0.55383300000000002
	.quad	0x3fe54504816f0069              # double 0.66467500000000002
	.quad	0x3fc68259e1f3a57f              # double 0.17585300000000001
	.quad	0x3fcd6744b2b777d1              # double 0.229714
	.quad	0x3fefea033e78e193              # double 0.99731599999999998
	.quad	0x3fed9fa54c554328              # double 0.92573799999999995
	.quad	0x3fbe3baba7b9170d              # double 0.11809799999999999
	.quad	0x3fefe3ed0f627393              # double 0.99657300000000004
	.quad	0x3fdcefd86a8fc0d3              # double 0.45213900000000001
	.quad	0x3fee12599ed7c6fc              # double 0.93974000000000001
	.quad	0x3fae1049235f8099              # double 0.058717999999999999
	.quad	0x3fb4f5a1016ce78a              # double 0.081873000000000001
	.quad	0x3fe4b1b9b66f9336              # double 0.64669500000000002
	.quad	0x3fc8d2fe3f359ff5              # double 0.193939
	.quad	0x3fecb4a87e38eb03              # double 0.89705299999999999
	.quad	0x3fe291b60ae9680e              # double 0.580287
	.quad	0x3fe0ff023e9ea140              # double 0.53112899999999996
	.quad	0x3fe8ed45e9185cee              # double 0.77896399999999999
	.quad	0x3f90f23897204296              # double 0.016549000000000001
	.quad	0x3fd0f61672324c83              # double 0.26501999999999998
	.quad	0x3fd3bf0995aaf790              # double 0.308535
	.quad	0x3fef0285ec3dab5c              # double 0.96905799999999997
	.quad	0x3fe5289fc6da4485              # double 0.66120900000000005
	.quad	0x3fd35bbbe878fabe              # double 0.30247400000000002
	.quad	0x3fcc6e4c0df58c09              # double 0.22211600000000001
	.quad	0x3fc0996312f4cf4a              # double 0.12968099999999999
	.quad	0x3fcbfdb4cc250721              # double 0.21868000000000001
	.quad	0x3f7cb6848beb5b2d              # double 0.0070099999999999997
	.quad	0x3fc12806af46aa08              # double 0.13403399999999999
	.quad	0x3fbde518f3eccc47              # double 0.11677700000000001
	.quad	0x3fe2a9bae46cfc83              # double 0.58321900000000004
	.quad	0x3fdeab649d388a8b              # double 0.479211
	.quad	0x3fe4c5bd0e12e83a              # double 0.64913799999999999
	.quad	0x3fe0b84db9c7368b              # double 0.52249800000000002
	.quad	0x3fe3db749adc8fb8              # double 0.62053899999999995
	.quad	0x3fe9b1593e5fb720              # double 0.80289900000000002
	.quad	0x3fb054477ff151e7              # double 0.063785999999999995
	.quad	0x3fe677681669ced1              # double 0.70207600000000003
	.quad	0x3fc02cecc814d728              # double 0.12637100000000001
	.quad	0x3fd876ab5807fed2              # double 0.382243
	.quad	0x3fef3df4c2b51bd6              # double 0.97631299999999999
	.quad	0x3fe8f572de43ed96              # double 0.77996200000000004
	.quad	0x3fec84f4c6e6d9be              # double 0.89122999999999997
	.quad	0x3faddf2239e6ab9b              # double 0.058342999999999999
	.quad	0x3fe54091c087442c              # double 0.66413199999999994
	.quad	0x3fe4a20578e5c4eb              # double 0.64477799999999996
	.quad	0x3fe96957470eb24a              # double 0.79410899999999995
	.quad	0x3fc9e1437c5692b4              # double 0.20218700000000001
	.quad	0x3fc7ad42c3c9eecc              # double 0.184975
	.quad	0x3fe8f340d4dc65c7              # double 0.779694
	.quad	0x3fed4fdb09a671ef              # double 0.91599799999999998
	.quad	0x3fd57c1376d54973              # double 0.335698
	.quad	0x3fd9d113836a832c              # double 0.40338600000000002
	.quad	0x3fd3f3d7d3910c2c              # double 0.31175799999999998
	.quad	0x3fe7a454de7ea5f8              # double 0.73880999999999997
	.quad	0x3fbe43fe5c91d14e              # double 0.118225
	.quad	0x3fe964755ffe6d59              # double 0.79351300000000002
	.quad	0x3fe8c96cc5fbf834              # double 0.77458800000000005
	.quad	0x3fe73662fdfc19c1              # double 0.72538899999999995
	.quad	0x3fe61e71044f1a1a              # double 0.69121600000000005
	.quad	0x3fe03d102bc72e27              # double 0.50745399999999996
	.quad	0x3fe7705c896dd26b              # double 0.73246599999999995
	.quad	0x3fd12f837b4a233a              # double 0.26852500000000001
	.quad	0x3fe6308dd1e53a82              # double 0.69342700000000002
	.quad	0x3fe21ee675147f13              # double 0.566272
	.quad	0x3fe9eb4c7f349386              # double 0.80997300000000005
	.quad	0x3fe6289b951c5c57              # double 0.69245699999999999
	.quad	0x3fe47ded6ba8c587              # double 0.64037200000000005
	.quad	0x3fc3b352a8438088              # double 0.15390999999999999
	.quad	0x3fd1641f644955b4              # double 0.27173599999999998
	.quad	0x3fd71693c03bc4d2              # double 0.36075299999999999
	.quad	0x3fe31170d62bf120              # double 0.59587900000000005
	.quad	0x3fc3d616f86a0989              # double 0.154971
	.quad	0x3fcf463cfb3311a5              # double 0.24433099999999999
	.quad	0x3fb1953586ca89fc              # double 0.068682999999999994
	.quad	0x3f92f123c42a66dc              # double 0.018498000000000001
	.quad	0x3fe9b8c75c4a83b2              # double 0.80380600000000002
	.quad	0x3fad3fc0096feb4a              # double 0.057126999999999997
	.quad	0x3fe962ed352220bc              # double 0.79332599999999997
	.quad	0x3fd139abf3387161              # double 0.26914500000000002
	.quad	0x3fec22ab25b317f0              # double 0.87923200000000001
	.quad	0x3fe445260f5e41d5              # double 0.63344100000000003
	.quad	0x3fdd593e5fb71fbc              # double 0.45857199999999998
	.quad	0x3fc8976bc1eff9f8              # double 0.19212099999999999
	.quad	0x3fef8583621fafc9              # double 0.98504800000000003
	.quad	0x3fe08f4d7add15f0              # double 0.51749299999999998
	.quad	0x3fcf5faa8a82a561              # double 0.24510699999999999
	.quad	0x3fe6c167a95c853c              # double 0.71110899999999999
	.quad	0x3fe63e2b4959e625              # double 0.69508899999999996
	.quad	0x3fe80342aa9f7b5b              # double 0.75039800000000001
	.quad	0x3fd2d6b65a9a8049              # double 0.29435499999999998
	.quad	0x3fc2def416bdb1a7              # double 0.147429
	.quad	0x3febc5da6a444178              # double 0.86790199999999995
	.quad	0x3fbf5f1bef49cf57              # double 0.122545
	.quad	0x3fbc93faf42784a9              # double 0.111633
	.quad	0x3fdf5842b734b513              # double 0.48976199999999998
	.quad	0x3fe32dddf43c7d5f              # double 0.59934900000000002
	.quad	0x3fd6fc6da4484945              # double 0.359157
	.quad	0x3fee14a90470a809              # double 0.94002200000000002
	.quad	0x3fad78811b1d92b8              # double 0.05756
	.quad	0x3fb959a30984e400              # double 0.099024000000000001
	.quad	0x3fd96601bc98a223              # double 0.39685100000000001
	.quad	0x3fc2295a6c5d206d              # double 0.14188700000000001
	.quad	0x3fee913836a832ba              # double 0.95522700000000005
	.quad	0x3fc81b10fd7e4580              # double 0.18832599999999999
	.quad	0x3fda51697f1f9ad0              # double 0.411219
	.quad	0x3fd940dd3fe1975f              # double 0.39458399999999999
	.quad	0x3fe25438d1d8a548              # double 0.57278099999999998
	.quad	0x3fc24d8fd5cb7910              # double 0.14299200000000001
	.quad	0x3fe9b899392189be              # double 0.80378400000000005
	.quad	0x3fb9adc8fb86f47b              # double 0.10030799999999999
	.quad	0x3fee103ea704bc27              # double 0.93948299999999996
	.quad	0x3fc33721d53cddd7              # double 0.15012
	.quad	0x3fd128bf3bea91da              # double 0.26811200000000002
	.quad	0x3fc98a8f3a9b0681              # double 0.199541
	.quad	0x3fca0192a737110e              # double 0.20317299999999999
	.quad	0x3feaf705857afea4              # double 0.84265400000000001
	.quad	0x3fd60e410b630a91              # double 0.34461999999999998
	.quad	0x3fb6b2bfdb4cc250              # double 0.088664999999999993
	.quad	0x3fddb05319828805              # double 0.46388699999999999
	.quad	0x3fc3498c3b0c4589              # double 0.15068200000000001
	.quad	0x3febe1d6494d50ec              # double 0.87131800000000003
	.quad	0x3fd46540cc78e9f7              # double 0.31868000000000002
	.quad	0x3fe60ed1bf7ad4b2              # double 0.68930899999999995
	.quad	0x3feb096787ce95fb              # double 0.84489800000000004
	.quad	0x3fe1f3a57eaa2a0b              # double 0.56099200000000005
	.quad	0x3feefc610f0e90bc              # double 0.96830799999999994
	.quad	0x3fe412146a1a500d              # double 0.62720699999999996
	.quad	0x3fe898dac258d584              # double 0.76865899999999998
	.quad	0x3fdf60fa15db3398              # double 0.49029400000000001
	.quad	0x3fef6c226809d495              # double 0.98194999999999998
	.quad	0x3f8721d53cddd6e0              # double 0.011294999999999999
	.quad	0x3fc940c4156e264e              # double 0.19728899999999999
	.quad	0x3fc7fdcdf6987831              # double 0.18743299999999999
	.quad	0x3fcfcc2938de6ddf              # double 0.248418
	.quad	0x3fe34fa05143bf72              # double 0.60346999999999995
	.quad	0x3feb65471715c63b              # double 0.85611300000000001
	.quad	0x3fc9dbdb5d894813              # double 0.20202200000000001
	.quad	0x3fbfa3ca7503b81b              # double 0.12359299999999999
	.quad	0x3fb7fc32ebe596c8              # double 0.093691999999999998
	.quad	0x3febec3760bf5d79              # double 0.87258500000000006
	.quad	0x3fdf6f694467381d              # double 0.49117499999999997
	.quad	0x3fb174d594f26aec              # double 0.068189
	.quad	0x3fec474751ce28ed              # double 0.88370099999999996
	.quad	0x3fc01cc532a497fa              # double 0.12587799999999999
	.quad	0x3fefda9435ac8a37              # double 0.99543199999999998
	.quad	0x3fe3a6f3f52fc265              # double 0.61412999999999995
	.quad	0x3fec37110e453d21              # double 0.88172200000000001
	.quad	0x3fdbb30728e92d56              # double 0.43280200000000002
	.quad	0x3fd642e9899bf594              # double 0.34783399999999998
	.quad	0x3fbd082cf52b90a8              # double 0.11340600000000001
	.quad	0x3fe4d49d7ba6698c              # double 0.65095400000000003
	.quad	0x3feed3e0bd44998d              # double 0.96336399999999999
	.quad	0x3fc9e9b7bf1e8e61              # double 0.20244500000000001
	.quad	0x3fd1f2ae07e5a78f              # double 0.28043699999999999
	.quad	0x3fe12b7dc7abfb9c              # double 0.53655900000000001
	.quad	0x3feaa437824d4cba              # double 0.83254600000000001
	.quad	0x3fe34b4070329803              # double 0.60293600000000003
	.quad	0x3fe271476af89c5e              # double 0.57632799999999995
	.quad	0x3fe17c0f45176146              # double 0.54639400000000005
	.quad	0x3fcce0e30446b69e              # double 0.22561300000000001
	.quad	0x3f8ef62f9ca5bd94              # double 0.015117999999999999
	.quad	0x3fec87ee0b0af5fd              # double 0.89159299999999997
	.quad	0x3fcb46a1a500d5e9              # double 0.213093
	.quad	0x3fe327525460aa65              # double 0.59855000000000003
	.quad	0x3fe99aac53b0813d              # double 0.80013100000000004
	.quad	0x3fee9f8c21e1d218              # double 0.95697600000000004
	.quad	0x3fb8f91a32b12d34              # double 0.097550999999999998
	.quad	0x3fd6fa5093964a5a              # double 0.35902800000000001
	.quad	0x3fdb4abe6a337a81              # double 0.42643700000000001
	.quad	0x3fecdc65c70435f0              # double 0.90190400000000004
	.quad	0x3fe2459103c8e25d              # double 0.57099200000000006
	.quad	0x3faf1327243137b0              # double 0.060692999999999997
	.quad	0x3fe91e1b089a0275              # double 0.78492499999999998
	.quad	0x3fe6ba94bbe4473d              # double 0.71027600000000002
	.quad	0x3fbd696e58a32f45              # double 0.11489000000000001
	.quad	0x3fe41b456b441bb9              # double 0.62832900000000003
	.quad	0x3fec2502eec7c958              # double 0.87951800000000002
	.quad	0x3feab078d92fb19e              # double 0.83404199999999995
	.quad	0x3fe42ea0fd3b29a2              # double 0.63069200000000003
	.quad	0x3fe43003686a4ca5              # double 0.63086100000000001
	.quad	0x3fe75cc63f141206              # double 0.73007500000000003
	.quad	0x3fb742352eb5f5f1              # double 0.090854000000000004
	.quad	0x3fe169ccb7d41744              # double 0.54416500000000001
	.quad	0x3fd5925bb7b6bb13              # double 0.33705800000000002
	.quad	0x3fd78427418d690a              # double 0.36744100000000002
	.quad	0x3fd9b05faebc408e              # double 0.40139000000000002
	.quad	0x3fd055b4677b395c              # double 0.25523099999999999
	.quad	0x3feb95a4acf312b2              # double 0.86201700000000003
	.quad	0x3fd83947496aad1d              # double 0.378496
	.quad	0x3fe5d247cb70ac3b              # double 0.68191900000000005
	.quad	0x3fc21eb4202d9cf1              # double 0.14156199999999999
	.quad	0x3fee6414e7ee9143              # double 0.94971700000000003
	.quad	0x3fd135371971c10d              # double 0.26887299999999997
	.quad	0x3fd147a9e2bcf91a              # double 0.26999899999999999
	.quad	0x3fccc48adeebb342              # double 0.224748
	.quad	0x3fa7f737da61e0c6              # double 0.046808000000000002
	.quad	0x3fe668ab4fa48302              # double 0.70027700000000004
	.quad	0x3fd50ff540895d0b              # double 0.32909899999999997
	.quad	0x3fd33f034b0e1b4c              # double 0.30072100000000002
	.quad	0x3fd113b9f127f5e8              # double 0.26682899999999998
	.quad	0x3fe3b65a9a804966              # double 0.61600999999999995
	.quad	0x3feec58ab92c0618              # double 0.96161399999999996
	.quad	0x3fe1f6d7625204b0              # double 0.56138200000000005
	.quad	0x3fc095d0b73d188f              # double 0.12957199999999999
	.quad	0x3fb01bb8c32a8c9c              # double 0.062923000000000007
	.quad	0x3fc57afea3df6db9              # double 0.16781599999999999
	.quad	0x3fcb59ee88df3733              # double 0.21368200000000001
	.quad	0x3fefb868fd199bb2              # double 0.99126099999999995
	.quad	0x3fe1436da87a072d              # double 0.53948099999999999
	.quad	0x3fb91ea78af3e469              # double 0.098124000000000003
	.quad	0x3fbac3eb7cbb3c82              # double 0.10455200000000001
	.quad	0x3feed50a88effe2a              # double 0.96350599999999997
	.quad	0x3fdb88d6d3b6cbda              # double 0.43022700000000003
	.quad	0x3fe1553ef6b5d463              # double 0.54165600000000003
	.quad	0x3fe575ff609dcf89              # double 0.67065399999999997
	.quad	0x3fc1b4d48882f0e1              # double 0.13833100000000001
	.quad	0x3fef94d2f5dbb9d0              # double 0.98691700000000004
	.quad	0x3fe5e22c45026890              # double 0.68385899999999999
	.quad	0x3fe9835bd512ec6c              # double 0.79728500000000002
	.quad	0x3feb6c3116228134              # double 0.85695699999999996
	.quad	0x3fea913836a832ba              # double 0.83022700000000005
	.quad	0x3fba8eb463497b74              # double 0.10374
	.quad	0x3feceb8305d95dd5              # double 0.90374900000000002
	.quad	0x3f924638c9752978              # double 0.017846000000000001
	.quad	0x3feb7f69014b599b              # double 0.85930300000000004
	.quad	0x3fe3a92a30553261              # double 0.61439999999999995
	.quad	0x3fd3644d87724fa9              # double 0.30299700000000002
	.quad	0x3fdeea5f84cad57c              # double 0.48305500000000001
	.quad	0x3fea30a4e379b77c              # double 0.81843799999999999
	.quad	0x3fde9578a2a90cd4              # double 0.47787299999999999
	.quad	0x3fd4d42c3c9eecc0              # double 0.32545000000000002
	.quad	0x3fd6ac258d5842b7              # double 0.35425699999999999
	.quad	0x3fe3c8b220791c4c              # double 0.61824900000000005
	.quad	0x3fc8cc2d6a9c560c              # double 0.19373099999999999
	.quad	0x3fed0f3a9b068124              # double 0.90810900000000005
	.quad	0x3fe30d62bf11f927              # double 0.59538400000000002
	.quad	0x3fdcda3c21187e7c              # double 0.45082
	.quad	0x3fe3cbdba0a52696              # double 0.61863500000000005
	.quad	0x3fef3851eb851eb8              # double 0.97562499999999996
	.quad	0x3febbc3e74afd545              # double 0.86672899999999997
	.quad	0x3fe0e80389f83be6              # double 0.52832199999999996
	.quad	0x3fe653198288051d              # double 0.69764400000000004
	.quad	0x3fef613b18dac259              # double 0.98061900000000001
	.quad	0x3fd76390c9107faa              # double 0.365452
	.quad	0x3fe0edfa43fe5c92              # double 0.52905000000000002
	.quad	0x3fe3b2e9ccb7d417              # double 0.61558999999999997
	.quad	0x3feea42aed139431              # double 0.95753999999999995
	.quad	0x3f958644523f67f5              # double 0.02102
	.quad	0x3fc7da8bd230b9dc              # double 0.18635699999999999
	.quad	0x3fe8cb380cb6c7a8              # double 0.77480700000000002
	.quad	0x3fd573abc947064f              # double 0.33518500000000001
	.quad	0x3fdb998d045fe111              # double 0.43124699999999999
	.quad	0x3f67c1bda5119ce0              # double 0.0028999999999999998
	.quad	0x3fdffe111276fb09              # double 0.49988199999999999
	.quad	0x3fd465b20b8066c3              # double 0.31870700000000002
	.quad	0x3fb29845dc832336              # double 0.072636000000000006
	.quad	0x3fecbb14a90470a8              # double 0.897837
	.quad	0x3fed045132f87ad1              # double 0.90677700000000006
	.quad	0x3fafe2c55c96030c              # double 0.062276999999999999
	.quad	0x3fe2b69984a0e411              # double 0.58479000000000003
	.quad	0x3fd5d2f1a9fbe76d              # double 0.34100000000000003
	.quad	0x3fef7255f3519bd4              # double 0.98270699999999999
	.quad	0x3fd35b4edb2f661f              # double 0.30244799999999999
	.quad	0x3fe9148fd9fd36f8              # double 0.78376000000000001
	.quad	0x3fee622813448063              # double 0.94948200000000005
	.quad	0x3fe9925785f8d2e5              # double 0.79911399999999999
	.quad	0x3fe47168f8e7ddca              # double 0.63884399999999997
	.quad	0x3fe9455000c9539c              # double 0.78971100000000005
	.quad	0x3feda91d9b1b79d9              # double 0.926894
	.quad	0x3fe32146a1a500d6              # double 0.59781200000000001
	.quad	0x3fedc395810624dd              # double 0.93012499999999998
	.quad	0x3fd5fee6fb4c3c19              # double 0.34368300000000002
	.quad	0x3fe3702a3486f04a              # double 0.60744200000000004
	.quad	0x3fe0425072085b18              # double 0.50809499999999996
	.quad	0x3fecc8eef1bac2df              # double 0.89952799999999999
	.quad	0x3fea7a41e57d9dbb              # double 0.82742400000000005
	.quad	0x3fd089d27c393682              # double 0.25841199999999998
	.quad	0x3fef609fe86833c6              # double 0.980545
	.quad	0x3fd98f4f93bc0a07              # double 0.399372
	.quad	0x3fc7546d3f9e7b81              # double 0.18226400000000001
	.quad	0x3fd9ca9691a75cd1              # double 0.40299000000000001
	.quad	0x3fef456f75d9a0f1              # double 0.97722600000000003
	.quad	0x3feec59fb1e18efc              # double 0.96162400000000003
	.quad	0x3fe22a7bd48cb4af              # double 0.56768600000000002
	.quad	0x3fe307485e3da2f9              # double 0.59463900000000003
	.quad	0x3f605186db50f40e              # double 0.0019919999999999998
	.quad	0x3fe92c16df3f9618              # double 0.786632
	.quad	0x3fefed84d338f798              # double 0.99774399999999996
	.quad	0x3fe09d2391d57ffa              # double 0.51918200000000003
	.quad	0x3fe668cef672b884              # double 0.70029399999999997
	.quad	0x3fc6ad362e903644              # double 0.17716100000000001
	.quad	0x3fea799a1fd1569f              # double 0.82734399999999997
	.quad	0x3fd17a5b0ff10ecb              # double 0.27309299999999997
	.quad	0x3fee7b352a843809              # double 0.95254000000000005
	.quad	0x3fdca9c560c7c0f4              # double 0.44786199999999998
	.quad	0x3fef6c7a7c9de050              # double 0.98199199999999998
	.quad	0x3fdf038e29f9ce8e              # double 0.48459200000000002
	.quad	0x3fe5bb6ed677707a              # double 0.67913000000000001
	.quad	0x3fbc1669ced0b30b              # double 0.109717
	.quad	0x3feb65d3996fa82f              # double 0.85618000000000005
	.quad	0x3fc5b57c4e2f37fc              # double 0.169601
	.quad	0x3feed935fc3b4f61              # double 0.96401499999999995
	.quad	0x3fcd1bde82d7b635              # double 0.227413
	.quad	0x3fd37dc7abfb9bed              # double 0.30455199999999999
	.quad	0x3fd00f12c27a6373              # double 0.25091999999999998
	.quad	0x3fda9aaa3ad18d26              # double 0.41569
	.quad	0x3fe436976bc1effa              # double 0.631664
	.quad	0x3fd70ced4e4c942d              # double 0.36016399999999998
	.quad	0x3fe0bc8e25c810a5              # double 0.52301699999999995
	.quad	0x3fd49f7b5aea3162              # double 0.32223400000000002
	.quad	0x3fb53ad5bee3d5fe              # double 0.082929000000000002
	.quad	0x3fec3a8a3f8982cb              # double 0.88214599999999999
	.quad	0x3fca9ba5e353f7cf              # double 0.207875
	.quad	0x3fd16555c52e72da              # double 0.27181
	.quad	0x3fa2ef2c7325918a              # double 0.036981
	.quad	0x3fde02ff8ec0f883              # double 0.46893299999999999
	.quad	0x3fd7c30d306a2b17              # double 0.37128
	.quad	0x3fe50b34e7685986              # double 0.65761800000000004
	.quad	0x3fdbf922962cfd8f              # double 0.437081
	.quad	0x3fef3e8576cce5f7              # double 0.97638199999999997
	.quad	0x3fd4cfc3f811f4f5              # double 0.325181
	.quad	0x3feca57c914b167f              # double 0.89520100000000002
	.quad	0x3fe8f4c8ffb8b264              # double 0.77988100000000004
	.quad	0x3fe75d031055b899              # double 0.73010399999999998
	.quad	0x3fe4e7967caea748              # double 0.65327000000000002
	.quad	0x3fe6197c3d68405b              # double 0.69061099999999997
	.quad	0x3fb6eb2d0a244630              # double 0.089525999999999994
	.quad	0x3fd0fa26a22b3893              # double 0.265268
	.quad	0x3fef6caab8a5ce5b              # double 0.98201499999999997
	.quad	0x3fde6516db0dd830              # double 0.47492000000000001
	.quad	0x3feb3b81b64e0547              # double 0.85101400000000005
	.quad	0x3fefed82ba5a0382              # double 0.99774300000000005
	.quad	0x3fa9e34330d73861              # double 0.050562000000000003
	.quad	0x3fe1ed7e889c1b54              # double 0.56024099999999999
	.quad	0x3fcd3f52fc2656ac              # double 0.228495
	.quad	0x3fad360d0247021d              # double 0.057053
	.quad	0x3fdf47e8ccdd93c4              # double 0.48876399999999998
	.quad	0x3fdae0221426fe72              # double 0.41993000000000003
	.quad	0x3fc085015c209247              # double 0.12905900000000001
	.quad	0x3fc85eb313be22e6              # double 0.19039
	.quad	0x3f97a67a52ac753e              # double 0.023095999999999998
	.quad	0x3fe1e2ae4b018612              # double 0.558921
	.quad	0x3fd3c2eba27ae9ab              # double 0.30877199999999999
	.quad	0x3fea2d3a604e1e71              # double 0.818021
	.quad	0x3fe02261bf37b8d4              # double 0.50419700000000001
	.quad	0x3fe825b0ff10ecb7              # double 0.75460099999999997
	.quad	0x3feaa8b4bf8fcd68              # double 0.833094
	.quad	0x3fea1272c94b380d              # double 0.81475200000000003
	.quad	0x3fe74f26aec0724b              # double 0.72841199999999995
	.quad	0x3fe52554b8bef8cf              # double 0.66080700000000003
	.quad	0x3fd82428d434a01b              # double 0.37720700000000001
	.quad	0x3fc4e9680e065300              # double 0.16337299999999999
	.quad	0x3fe5fb634dad31fd              # double 0.68693700000000002
	.quad	0x3fe80b220791c4b9              # double 0.751359
	.quad	0x3fea66490a350d28              # double 0.824986
	.quad	0x3fa085d31337eb29              # double 0.032271000000000001
	.quad	0x3fe83be6601bc98a              # double 0.75731199999999999
	.quad	0x3fcedb6a1e81cb47              # double 0.24107100000000001
	.quad	0x3feb95e9e1b089a0              # double 0.86204999999999998
	.quad	0x3fef44998d045fe1              # double 0.97712399999999999
	.quad	0x3feec55000c9539c              # double 0.96158600000000005
	.quad	0x3fcf7f27fe4bcada              # double 0.24606800000000001
	.quad	0x3fc6855da272862f              # double 0.17594499999999999
	.quad	0x3fbdc4fc1df3300e              # double 0.116287
	.quad	0x3fea1b25f633ce64              # double 0.81581400000000003
	.quad	0x3fe18bf7f06705c9              # double 0.54833600000000005
	.quad	0x3fd8d883ba3443d4              # double 0.38821499999999998
	.quad	0x3fd355ef1fddebd9              # double 0.30212
	.quad	0x3fe5ebebe1650a46              # double 0.68504900000000002
	.quad	0x3fe97a52ac753e70              # double 0.79618199999999995
	.quad	0x3fdc483cafb3b752              # double 0.441909
	.quad	0x3fd9aa2e3c536d65              # double 0.40101199999999998
	.quad	0x3fe1177c88e79aae              # double 0.53411699999999995
	.quad	0x3fe1f219220ff541              # double 0.56080300000000005
	.quad	0x3fef98915bdd7668              # double 0.98737399999999997
	.quad	0x3fef4b2314013ec4              # double 0.97792199999999995
	.quad	0x3fb660f5e41d4b6a              # double 0.087416999999999994
	.quad	0x3fe7790752da9867              # double 0.73352399999999995
	.quad	0x3fe4237ac3eb7cbb              # double 0.62933099999999997
	.quad	0x3fee8728e92d55a4              # double 0.95399900000000004
	.quad	0x3fdb317268d32831              # double 0.42489300000000002
	.quad	0x3fe935fa22706d50              # double 0.78783899999999996
	.quad	0x3fed790fb65668c2              # double 0.92102799999999996
	.quad	0x3febf3d188f42fe8              # double 0.87351299999999998
	.quad	0x3fe9b18dac258d58              # double 0.80292399999999997
	.quad	0x3fd6cb1897a67a53              # double 0.35614600000000002
	.quad	0x3fee4a9691a75cd1              # double 0.94660500000000003
	.quad	0x3fc23992c8c50050              # double 0.14238200000000001
	.quad	0x3fa7e2a3cea6c1a0              # double 0.046650999999999998
	.quad	0x3fe7e96c3fc43b2e              # double 0.74724400000000002
	.quad	0x3fdd5c28f5c28f5c              # double 0.45874999999999999
	.quad	0x3fe1c6f587d6f976              # double 0.55553699999999995
	.quad	0x3fd76e9ff0cbaf96              # double 0.36612699999999998
	.quad	0x3fd87cb2d905c033              # double 0.38261099999999998
	.quad	0x3fd39231c64ba94c              # double 0.30579800000000001
	.quad	0x3fe1563cb8173322              # double 0.54177699999999995
	.quad	0x3fe2dda8bd230b9e              # double 0.58955800000000003
	.quad	0x3fdc1f5be5d9e40d              # double 0.43941400000000003
	.quad	0x3fe832873bc903ea              # double 0.75616799999999995
	.quad	0x3fc53d859c8c9321              # double 0.16594
	.quad	0x3fd20e6afcce1c58              # double 0.28212999999999999
	.quad	0x3fefd612c6ac215c              # double 0.99488200000000004
	.quad	0x3fd52b40f66a5508              # double 0.33076499999999998
	.quad	0x3fef8225742dcf46              # double 0.98463699999999998
	.quad	0x3fec2fea3df6db94              # double 0.88084899999999999
	.quad	0x3fdc833c60029f17              # double 0.44551000000000002
	.quad	0x3fcbb9b66f9335d2              # double 0.21660499999999999
	.quad	0x3fed3a9f383f0baf              # double 0.91340600000000005
	.quad	0x3fee04d338f79852              # double 0.93808899999999995
	.quad	0x3fe8a877ee4e26d5              # double 0.77056500000000006
	.quad	0x3fdb265f0f5a1017              # double 0.42421700000000001
	.quad	0x3fea78c64fdb09a6              # double 0.82724299999999995
	.quad	0x3fd5b76f6d762520              # double 0.33932099999999998
	.quad	0x3fcd29fe004b7f5a              # double 0.22784399999999999
	.quad	0x3fce7ebf22c01e69              # double 0.23824300000000001
	.quad	0x3fccafb3b7521145              # double 0.22411200000000001
	.quad	0x3fe3d64d7f0ed3d8              # double 0.61990999999999996
	.quad	0x3fa2d03d9a95421c              # double 0.036745
	.quad	0x3fd9cdcca70d1fa3              # double 0.40318599999999999
	.quad	0x3fc156b00ffda405              # double 0.135458
	.quad	0x3fd94a59c065b63d              # double 0.39516299999999999
	.quad	0x3fef0dda48b65237              # double 0.97044099999999999
	.quad	0x3fe03a96d4c33b54              # double 0.50715200000000005
	.quad	0x3fe9e833c60029f1              # double 0.80959499999999995
	.quad	0x3fe208787485e3da              # double 0.56353399999999998
	.quad	0x3fe0fd6f97679032              # double 0.53093699999999999
	.quad	0x3fe451efb6dca07f              # double 0.63500199999999996
	.quad	0x3fe04e9813879c41              # double 0.50959399999999999
	.quad	0x3fcfdf3b645a1cac              # double 0.249
	.quad	0x3fed75c28f5c28f6              # double 0.92062500000000003
	.quad	0x3feff07bfe7e1fc1              # double 0.99810600000000004
	.quad	0x3fb502ababead4f6              # double 0.082072000000000006
	.quad	0x3fc5df8f4730403a              # double 0.17088500000000001
	.quad	0x3fed8904f6dfc5ce              # double 0.92297600000000002
	.quad	0x3fe9b1dd5d3dc8b8              # double 0.80296199999999995
	.quad	0x3fce9f51697f1f9b              # double 0.23923700000000001
	.quad	0x3fc58b827fa1a0cf              # double 0.16832
	.quad	0x3fc0228134480629              # double 0.126053
	.quad	0x3fe107a4a48f96e1              # double 0.53218299999999996
	.quad	0x3fda32830a0b1bbd              # double 0.409333
	.quad	0x3fc807e5a78f25a2              # double 0.18774099999999999
	.quad	0x3fe59728a6117721              # double 0.67470200000000002
	.quad	0x3fdf16a487336588              # double 0.48575699999999999
	.quad	0x3fe2a72c94b380cb              # double 0.58290699999999995
	.quad	0x3fbdb4677b395c42              # double 0.116034
	.quad	0x3fe7b4f82f512663              # double 0.74084099999999997
	.quad	0x3feb4cb7d41743e9              # double 0.85311499999999996
	.quad	0x3fd64e7ab7564303              # double 0.34854000000000002
	.quad	0x3fe30121682f9442              # double 0.59388799999999997
	.quad	0x3fe0fb17ce52deca              # double 0.53065099999999998
	.quad	0x3feb3a29c779a6b5              # double 0.85085
	.quad	0x3fdd2b8c75c4a83b              # double 0.45578299999999999
	.quad	0x3fef5b1422ccb3a2              # double 0.97986799999999996
	.quad	0x3fd09e6ab9b23dd5              # double 0.25966899999999998
	.quad	0x3fd16f2e8c0485a1              # double 0.27241100000000001
	.quad	0x3fed25870da5daf0              # double 0.91083099999999995
	.quad	0x3feb9a1db877ab32              # double 0.86256299999999997
	.quad	0x3fe8a2c2374794ea              # double 0.769868
	.quad	0x3f974b4070329803              # double 0.022748000000000001
	.quad	0x3fc9cd4ed2cbea4f              # double 0.20157800000000001
	.quad	0x3fe20e757928e0ca              # double 0.56426500000000002
	.quad	0x3fd823fab10ba626              # double 0.37719599999999998
	.quad	0x3fe09ce6c093d966              # double 0.51915299999999998
	.quad	0x3fe78533b1077469              # double 0.73501000000000005
	.quad	0x3fefec95bff04578              # double 0.99763000000000001
	.quad	0x3fed0e9707182236              # double 0.90803100000000003
	.quad	0x3fdcd7518b0d0edc              # double 0.45064199999999999
	.quad	0x3fead79f23465626              # double 0.83882100000000004
	.quad	0x3fc714d2f5dbb9d0              # double 0.18032300000000001
	.quad	0x3fd9baa582dbe7f3              # double 0.40201700000000001
	.quad	0x3fe6308feac42e99              # double 0.69342800000000004
	.quad	0x3fd8a98eda22f6a5              # double 0.385349
	.quad	0x3fdcfbd6a593a2e0              # double 0.45287100000000002
	.quad	0x3fb2dc3bd5992429              # double 0.073673000000000002
	.quad	0x3fb24febd09e12a5              # double 0.071531999999999998
	.quad	0x3fee76b5d462c344              # double 0.95199100000000003
	.quad	0x3fd9fc7607c419a0              # double 0.40603400000000001
	.quad	0x3fe3f672b884406c              # double 0.623834
	.quad	0x3fea899392189bd8              # double 0.82929399999999998
	.quad	0x3fe347192ea52ef9              # double 0.60242899999999999
	.quad	0x3fe3f064ece9a2c6              # double 0.62309499999999995
	.quad	0x3fe012146a1a500d              # double 0.50220699999999996
	.quad	0x3fd28cd63cb81733              # double 0.28984599999999999
	.quad	0x3fe68fc2eba27aea              # double 0.70504900000000004
	.quad	0x3fef4e054690de09              # double 0.97827399999999997
	.quad	0x3fe20e6afcce1c58              # double 0.56425999999999998
	.quad	0x3fee7e175d13d74d              # double 0.95289199999999996
	.quad	0x3fe86864020817fc              # double 0.76274299999999994
	.quad	0x3fec99dcb5781c71              # double 0.89378199999999997
	.quad	0x3fd8bea0ba1f4b1f              # double 0.38663500000000001
	.quad	0x3fccec28b2a6b0d9              # double 0.22595699999999999
	.quad	0x3fe300ffda4052d6              # double 0.59387199999999996
	.quad	0x3fdca8c9b845564b              # double 0.44780199999999998
	.quad	0x3fed3422467be554              # double 0.91261400000000003
	.quad	0x3feb9333b96af039              # double 0.86171900000000001
	.quad	0x3fd80edc3bd59924              # double 0.37590699999999999
	.quad	0x3fe121d96e9bbf0e              # double 0.53538200000000002
	.quad	0x3fe64aafbc1acde2              # double 0.69661700000000004
	.quad	0x3fdafab53d640e9d              # double 0.42155199999999998
	.quad	0x3fe73f3387160957              # double 0.72646500000000003
	.quad	0x3fdfec7c957cd467              # double 0.498809
	.quad	0x3feadf7a4e7ab756              # double 0.83977999999999997
	.quad	0x3fc802f2f9873ffb              # double 0.18759000000000001
	.quad	0x3feaa97396d0917d              # double 0.83318499999999995
	.quad	0x3fc274e22a2c2374              # double 0.14419199999999999
	.quad	0x3fe86cebbba55d1c              # double 0.76329599999999997
	.quad	0x3fca18c5c9a34ca1              # double 0.20388100000000001
	.quad	0x3fd35e4a38327675              # double 0.30263000000000001
	.quad	0x3fe2ad3a604e1e71              # double 0.583646
	.quad	0x3fe6b124d099e0e7              # double 0.70912399999999998
	.quad	0x3fd0bc903ea704bc              # double 0.26150899999999999
	.quad	0x3fafddebd9018e75              # double 0.062239999999999997
	.quad	0x3fd182e87d2c7b89              # double 0.273615
	.quad	0x3fc25ce5b4245f5b              # double 0.14346
	.quad	0x3f61622813448063              # double 0.0021220000000000002
	.quad	0x3feddec3dab5c39c              # double 0.93344300000000002
	.quad	0x3fe9c6583e8576cd              # double 0.80546200000000001
	.quad	0x3feff036c9c0a8d2              # double 0.99807299999999999
	.quad	0x3fe8e81882adc4ca              # double 0.77833200000000002
	.quad	0x3fd6d9513f8db489              # double 0.357014
	.quad	0x3fe778140dd3fe19              # double 0.73340799999999995
	.quad	0x3f6bbadc0980b242              # double 0.003385
	.quad	0x3fede41f644955b4              # double 0.93409699999999995
	.quad	0x3fd219ac79702e66              # double 0.28281699999999999
	.quad	0x3fcd7f51efb6dca0              # double 0.23044799999999999
	.quad	0x3fd0dbc23315d702              # double 0.26341300000000001
	.quad	0x3fe3f2d1aeb3dd12              # double 0.62339100000000003
	.quad	0x3f8eb074a771c971              # double 0.014985
	.quad	0x3fa1b60ae9680e06              # double 0.034591999999999998
	.quad	0x3fcb162ae4b01861              # double 0.211614
	.quad	0x3fe8f2fba01eeed9              # double 0.77966100000000005
	.quad	0x3fd81455219a847b              # double 0.37624099999999999
	.quad	0x3fe3897635e7429a              # double 0.61053000000000002
	.quad	0x3fc575fb2edfe75c              # double 0.16766300000000001
	.quad	0x3fe9e4e8b7e4de3c              # double 0.80919300000000005
	.quad	0x3fe49f16b11c6d1e              # double 0.64441999999999999
	.quad	0x3fbb4c6e6d9be4cd              # double 0.10663499999999999
	.quad	0x3fa426bb55ac03ff              # double 0.039357999999999997
	.quad	0x3faa0a958537e2c5              # double 0.050861999999999997
	.quad	0x3fec6af6837f7be1              # double 0.88805699999999999
	.quad	0x3fdab9dc2f405f6c              # double 0.41759400000000002
	.quad	0x3fcc111276fb0920              # double 0.21927099999999999
	.quad	0x3feeefe2e6ea8544              # double 0.96678299999999994
	.quad	0x3fe3c25072085b18              # double 0.61746999999999996
	.quad	0x3feede28aa433509              # double 0.964619
	.quad	0x3fe4746cb966be7b              # double 0.639212
	.quad	0x3fdcc76d117b5287              # double 0.44967200000000002
	.quad	0x3fe04e379b77c02b              # double 0.509548
	.quad	0x3fdff85510d38cda              # double 0.49953199999999998
	.quad	0x3fb3e1975f2cb641              # double 0.077660999999999994
	.quad	0x3fb3b0a2ca9ac365              # double 0.076913999999999996
	.quad	0x3fe1e273929ed395              # double 0.55889299999999997
	.quad	0x3fe49f9ce8d972cd              # double 0.64448399999999995
	.quad	0x3fef2630ec311623              # double 0.97341200000000005
	.quad	0x3fd739192641b329              # double 0.36286000000000002
	.quad	0x3fdc7ce0fc2eba28              # double 0.44512200000000002
	.quad	0x3fe646f156191149              # double 0.69616
	.quad	0x3fe75058dde7a744              # double 0.72855800000000004
	.quad	0x3fd20e779207d4e1              # double 0.28213300000000002
	.quad	0x3fe43d6a593a2df9              # double 0.63249699999999998
	.quad	0x3fe5baade657b84e              # double 0.67903800000000003
	.quad	0x3fec2367e414e7ef              # double 0.87932200000000005
	.quad	0x3fee1ebe9c886163              # double 0.94125300000000001
	.quad	0x3fe0b66d7a56de33              # double 0.52226899999999998
	.quad	0x3fe8856605ee568a              # double 0.76628399999999997
	.quad	0x3fe67e132b55ef20              # double 0.70289000000000001
	.quad	0x3fe5c0b34e768598              # double 0.67977299999999996
	.quad	0x3fef93e1c9b41398              # double 0.98680199999999995
	.quad	0x3fd92556d19dece5              # double 0.39290399999999998
	.quad	0x3fe5bf034b0e1b4c              # double 0.67956700000000003
	.quad	0x3fc162e90364388f              # double 0.13583100000000001
	.quad	0x3fe1240746455eaf              # double 0.53564800000000001
	.quad	0x3fe686ca89fc6da4              # double 0.70395399999999997
	.quad	0x3fc11e4b44a1f080              # double 0.13373699999999999
	.quad	0x3fc39d12cadddf44              # double 0.15323100000000001
	.quad	0x3fe7359bc33f8551              # double 0.72529399999999999
	.quad	0x3fe6273d5bab2181              # double 0.69228999999999996
	.quad	0x3fdfb1e9f2778141              # double 0.49523400000000001
	.quad	0x3fe341f85d744f5d              # double 0.60180299999999998
	.quad	0x3fe4c558644523f6              # double 0.64908999999999994
	.quad	0x3fb4ff21b3aeee95              # double 0.082017999999999994
	.quad	0x3fde84b5dcc63f14              # double 0.47685
	.quad	0x3fcc21b7e0ac7da2              # double 0.219779
	.quad	0x3fefd099e0e73605              # double 0.99421400000000004
	.quad	0x3fc3a5f41aef6f8f              # double 0.153502
	.quad	0x3fd916ca46e08f21              # double 0.39201599999999998
	.quad	0x3fc7d3b29a1b9f99              # double 0.18614800000000001
	.quad	0x3fb5b22d0e560419              # double 0.084750000000000006
	.quad	0x3fe5f141205bc01a              # double 0.68569999999999998
	.quad	0x3fa8c1db0142f61f              # double 0.048354000000000001
	.quad	0x3fd76f587d6f9768              # double 0.36617100000000002
	.quad	0x3fef9702e6644d87              # double 0.98718399999999995
	.quad	0x3fa293f290abb44e              # double 0.036284999999999998
	.quad	0x3fe19a30984e3fff              # double 0.55007200000000001
	.quad	0x3fd103211cb039ef              # double 0.265816
	.quad	0x3fe874aba3875925              # double 0.76424199999999998
	.quad	0x3fd697dd00f776c5              # double 0.35301900000000003
	.quad	0x3fdfa4c1ebc83a97              # double 0.49443100000000001
	.quad	0x3fd00c5a8155d5f5              # double 0.25075399999999998
	.quad	0x3fe94ad794a6eb92              # double 0.79038600000000003
	.quad	0x3fd1e978d4fdf3b6              # double 0.27987499999999998
	.quad	0x3fe91bd61f5be5da              # double 0.78464800000000001
	.quad	0x3fe752c7b890d5a6              # double 0.72885500000000003
	.quad	0x3fe7374ddf86e3b4              # double 0.72550099999999995
	.quad	0x3fe798f81e8a2ec3              # double 0.73742300000000005
	.quad	0x3fd76887a8d64d7f              # double 0.365755
	.quad	0x3fd6f212d77318fc              # double 0.35852499999999998
	.quad	0x3fe1cadbc664d3bf              # double 0.55601299999999998
	.quad	0x3f93ff69014b599b              # double 0.019529000000000001
	.quad	0x3fc7c3efae7924af              # double 0.185667
	.quad	0x3fc3e8ab4fa48302              # double 0.15553800000000001
	.quad	0x3fd2677b395c4220              # double 0.28756599999999999
	.quad	0x3fd16937d1fe64f5              # double 0.27204699999999998
	.quad	0x3fea52b0a6fc58ac              # double 0.82259400000000004
	.quad	0x3fe4b37867f0aa22              # double 0.64690800000000004
	.quad	0x3fcd1a32b12d3416              # double 0.22736200000000001
	.quad	0x3fe279c62a1b5c7d              # double 0.57736500000000002
	.quad	0x3feac3aeab7995ee              # double 0.83638699999999999
	.quad	0x3f773b85e80bed74              # double 0.005672
	.quad	0x3feedc011d3671ac              # double 0.96435599999999999
	.quad	0x3fea9904b3c3e74b              # double 0.831179
	.quad	0x3fece3608d08919f              # double 0.902756
	.quad	0x3fa3af102363b257              # double 0.038445
	.quad	0x3fdbb0bbf50e3476              # double 0.43266199999999999
	.quad	0x3fedd350092ccf6c              # double 0.93204500000000001
	.quad	0x3fee38eb0318b934              # double 0.94444799999999995
	.quad	0x3fef5d3dc8b86b16              # double 0.980132
	.quad	0x3fdeaacd9e83e426              # double 0.47917500000000002
	.quad	0x3fe3178d4fdf3b64              # double 0.59662499999999996
	.quad	0x3fe0aa7bd48cb4af              # double 0.52081100000000002
	.quad	0x3fefe075f6fd21ff              # double 0.99614999999999997
	.quad	0x3fe12606fac6045c              # double 0.53589200000000003
	.quad	0x3fe5f6534373f317              # double 0.68631900000000001
	.quad	0x3fd24373f316e371              # double 0.28536699999999998
	.quad	0x3fa70e6f2e8c0486              # double 0.045032000000000003
	.quad	0x3fb9ab5c39bcba30              # double 0.100271
	.quad	0x3fdaa14057082492              # double 0.41609200000000002
	.quad	0x3fd5f3d3a1d323ff              # double 0.34300700000000001
	.quad	0x3feb83254e6e221d              # double 0.85975900000000005
	.quad	0x3fd1c5bd0e12e83a              # double 0.277694
	.quad	0x3fc9722e1ac57e24              # double 0.198797
	.quad	0x3fc17353b4b2fa94              # double 0.13633200000000001
	.quad	0x3fce7b352a843809              # double 0.23813500000000001
	.quad	0x3fe4660e51d25aab              # double 0.63745799999999997
	.quad	0x3fdd30489d27c393              # double 0.45607199999999998
	.quad	0x3fe3fd7c2ca148bb              # double 0.62469300000000005
	.quad	0x3fe8bea2d2fe3f36              # double 0.77327100000000004
	.quad	0x3fe20af81626b2f2              # double 0.56383899999999998
	.quad	0x3fed37bf1e8e6080              # double 0.91305499999999995
	.quad	0x3fec9a47a9e2bcf9              # double 0.89383299999999999
	.quad	0x3fd0a0e410b630a9              # double 0.25982
	.quad	0x3fe396872b020c4a              # double 0.61212500000000003
	.quad	0x3fb78a19c9d5a188              # double 0.091951000000000005
	.quad	0x3fe37c610f0e90bc              # double 0.60893299999999995
	.quad	0x3fe4951611ba3ca7              # double 0.64319899999999997
	.quad	0x3fe3ba57eaa2a0a9              # double 0.61649699999999996
	.quad	0x3fcbede1198aeb81              # double 0.218197
	.quad	0x3fd1e5b8561d4307              # double 0.27964600000000001
	.quad	0x3fd9600f345069a5              # double 0.39648800000000001
	.quad	0x3fecbfe5c91d14e4              # double 0.89842500000000002
	.quad	0x3fee7901083dbc23              # double 0.95227099999999998
	.quad	0x3fcc88f861a60d45              # double 0.22292999999999999
	.quad	0x3fbb60e0eb67c287              # double 0.106947
	.quad	0x3fd58bf7f06705c9              # double 0.33666800000000002
	.quad	0x3f82ae07e5a78f26              # double 0.0091210000000000006
	.quad	0x3fc3e55c0fcb4f1e              # double 0.15543699999999999
	.quad	0x3fdc420f6f08cc57              # double 0.44153199999999998
	.quad	0x3fee32df505d0fa6              # double 0.94371000000000005
	.quad	0x3fecc53f39d1b2e6              # double 0.89907800000000004
	.quad	0x3f6bed30f062d40b              # double 0.0034090000000000001
	.quad	0x3fc995a294141e9b              # double 0.199879
	.quad	0x3feea89b951c5c57              # double 0.95808199999999998
	.quad	0x3fda3f9a49c2c1b1              # double 0.410132
	.quad	0x3fec9357603925bb              # double 0.89298599999999995
	.quad	0x3fef5c0980b24207              # double 0.97998499999999999
	.quad	0x3fd2e2ef4e0114d3              # double 0.295101
	.quad	0x3fe265a78f25a251              # double 0.574909
	.quad	0x3fd9aba387592535              # double 0.40110099999999999
	.quad	0x3fcd3f9e7b80a9df              # double 0.22850400000000001
	.quad	0x3fa57060bb2bba99              # double 0.041873
	.quad	0x3fd970ac3a860dcc              # double 0.39750200000000002
	.quad	0x3fd50296b3354c12              # double 0.32828299999999999
	.quad	0x3fcb9c0ebedfa440              # double 0.2157
	.quad	0x3fd8152b0a6fc58b              # double 0.37629200000000002
	.quad	0x3fe0079a2834d270              # double 0.50092800000000004
	.quad	0x3feb4fbdad7518b1              # double 0.85348400000000002
	.quad	0x3fe50d64d7f0ed3e              # double 0.65788500000000005
	.quad	0x3fbfc18b502ababf              # double 0.124047
	.quad	0x3fec8f1b25f633ce              # double 0.89246899999999996
	.quad	0x3fe9415f45e0b4e1              # double 0.78922999999999999
	.quad	0x3fcbd0bfa0945f9e              # double 0.217308
	.quad	0x3fe55462c343b70f              # double 0.666551
	.quad	0x3fd3bf9830e3cd9a              # double 0.30856899999999998
	.quad	0x3fec0b0292817764              # double 0.87634400000000001
	.quad	0x3fc912231832fcad              # double 0.19586600000000001
	.quad	0x3fd3b480a5accd53              # double 0.307892
	.quad	0x3fd8f3775b813016              # double 0.38985999999999998
	.quad	0x3fc0509bf9c62a1b              # double 0.12745999999999999
	.quad	0x3fe122f05a708ede              # double 0.53551499999999996
	.quad	0x3fce8b11409a2403              # double 0.238619
	.quad	0x3feb59d3458cd20b              # double 0.854715
	.quad	0x3fadad106ee30caa              # double 0.057960999999999999
	.quad	0x3fe2b0e5e679463d              # double 0.584094
	.quad	0x3fcd2b6f19934efd              # double 0.22788800000000001
	.quad	0x3fdcf4a1272c94b4              # double 0.45243100000000003
	.quad	0x3fe17d1569f49060              # double 0.54651899999999998
	.quad	0x3f7b499d0203e63f              # double 0.0066620000000000004
	.quad	0x3fe989df1172ef0b              # double 0.79808000000000001
	.quad	0x3fcac64fdb09a672              # double 0.209177
	.quad	0x3fd0b7a5f41aef70              # double 0.26120900000000002
	.quad	0x3fe2d028a1dfb939              # double 0.58791000000000004
	.quad	0x3fa2f8bdec5f394b              # double 0.037053999999999997
	.quad	0x3fc2be6a337a80d0              # double 0.14643600000000001
	.quad	0x3fed6ff3ade225fa              # double 0.91991599999999996
	.quad	0x3fe7ba8c586876e2              # double 0.74152200000000001
	.quad	0x3fa827fa1a0cf180              # double 0.04718
	.quad	0x3fd622e1ac57e23f              # double 0.34587899999999999
	.quad	0x3fea4766c6de7642              # double 0.82121599999999995
	.quad	0x3fd6b96f21f6cacd              # double 0.35506799999999999
	.quad	0x3fef978f68be2f7b              # double 0.98725099999999998
	.quad	0x3feccda9003eea21              # double 0.90010500000000004
	.quad	0x3f7a98676a7264a1              # double 0.0064929999999999996
	.quad	0x3fd576d549731099              # double 0.33537800000000001
	.quad	0x3fec00d801b43526              # double 0.87510299999999996
	.quad	0x3fdcf0520d130dfa              # double 0.45216800000000001
	.quad	0x3fdbb73d188f42ff              # double 0.43305900000000003
	.quad	0x3fe6d72bcb5fe543              # double 0.71376600000000001
	.quad	0x3fea7b677f6b1a2a              # double 0.82756399999999997
	.quad	0x3fd35efe93187619              # double 0.30267300000000003
	.quad	0x3fe4986db50f40e6              # double 0.64360700000000004
	.quad	0x3fc32b66b6177ea2              # double 0.14976200000000001
	.quad	0x3fec389b52007dd4              # double 0.88190999999999997
	.quad	0x3fd0192a737110e4              # double 0.25153599999999998
	.quad	0x3fe9e6c093d96638              # double 0.80941799999999997
	.quad	0x3fe8dfb2edfe75bc              # double 0.77730699999999997
	.quad	0x3fea940357a35504              # double 0.83056799999999997
	.quad	0x3fe6769ca9ef5233              # double 0.70197900000000002
	.quad	0x3fd72d1287c200c1              # double 0.362126
	.quad	0x3fdb033a4723ab00              # double 0.422072
	.quad	0x3fe2895f2452c5a0              # double 0.57926900000000003
	.quad	0x3fedbdb3bfb58d15              # double 0.92940699999999998
	.quad	0x3fcb8bcdfefbf402              # double 0.21520400000000001
	.quad	0x3fe0d7c2ca148ba8              # double 0.52633799999999997
	.quad	0x3fd36f5019f3c70d              # double 0.30366900000000002
	.quad	0x3fed08feac42e98a              # double 0.90734800000000004
	.quad	0x3fcb9bfdf7e8038a              # double 0.215698
	.quad	0x3feb915df6555c53              # double 0.86149500000000001
	.quad	0x3fee0b73d188f430              # double 0.93889800000000001
	.quad	0x3fe59f2dc2b0ea18              # double 0.67568099999999998
	.quad	0x3fd77746887a8d65              # double 0.36665500000000001
	.quad	0x3fe3c5b4aa9717df              # double 0.61788399999999999
	.quad	0x3fca39ffd60e94ee              # double 0.20489499999999999
	.quad	0x3fe52cffa7eb6bf4              # double 0.66174299999999997
	.quad	0x3fefa3c21187e7c0              # double 0.98873999999999995
	.quad	0x3fefc6dc5d638866              # double 0.99302500000000005
	.quad	0x3fcef55582129457              # double 0.24186199999999999
	.quad	0x3fd86c11a11233df              # double 0.38159599999999999
	.quad	0x3fda08bfc2224edf              # double 0.40678399999999998
	.quad	0x3fdb32d6ece13f4b              # double 0.42497800000000002
	.quad	0x3fd53226c3b927d4              # double 0.33118599999999998
	.quad	0x3fc248f10a99b6f6              # double 0.14285100000000001
	.quad	0x3fa182ecaeea63b7              # double 0.034202000000000003
	.quad	0x3fe9b0c026cc1ca4              # double 0.80282600000000003
	.quad	0x3fc77dc7abfb9bed              # double 0.18352599999999999
	.quad	0x3fea7d113836a833              # double 0.82776700000000003
	.quad	0x3fc3060bb2bba98f              # double 0.148622
	.quad	0x3feda2e3c536d656              # double 0.92613400000000001
	.quad	0x3feb8b3f63c31df7              # double 0.86074799999999996
	.quad	0x3fdb9aa1d755bccb              # double 0.431313
	.quad	0x3fce4e8b7e4de3b9              # double 0.23677200000000001
	.quad	0x3fd1fee6fb4c3c19              # double 0.28118300000000002
	.quad	0x3fe980e065300581              # double 0.79698199999999997
	.quad	0x3fe0919695d91ab9              # double 0.51777200000000001
	.quad	0x3fea8cf5b1c86488              # double 0.82970699999999997
	.quad	0x3fe6c07ee0b0af60              # double 0.71099800000000002
	.quad	0x3fe117c80841ede1              # double 0.53415299999999999
	.quad	0x3fd591d14e3bcd36              # double 0.33702500000000002
	.quad	0x3fe7c14c660a2014              # double 0.74234599999999995
	.quad	0x3fa276fb09203a32              # double 0.036063999999999999
	.quad	0x3fc95dd4c76d117b              # double 0.19817599999999999
	.quad	0x3fed8a372606fac6              # double 0.923122
	.quad	0x3fdb496aad1d041d              # double 0.42635600000000001
	.quad	0x3fd7a4095f2452c6              # double 0.36938700000000002
	.quad	0x3fde694467381d7e              # double 0.47517500000000001
	.quad	0x3f959ddc1e7967cb              # double 0.02111
	.quad	0x3fed3ce63a5c1c61              # double 0.91368400000000005
	.quad	0x3fdefe82517e77d5              # double 0.48428399999999999
	.quad	0x3fd028f5c28f5c29              # double 0.2525
	.quad	0x3fe430b39192641b              # double 0.63094499999999998
	.quad	0x3fec122d948dc11e              # double 0.87721899999999997
	.quad	0x3fd995d91ab8e8ea              # double 0.39977099999999999
	.quad	0x3fdb205bc01a36e3              # double 0.42385
	.quad	0x3fc69e774eebf65e              # double 0.17671100000000001
	.quad	0x3fc1baa9b499d020              # double 0.13850899999999999
	.quad	0x3fed5234eb9a176e              # double 0.91628500000000002
	.quad	0x3f92d55a3a08398a              # double 0.018391999999999999
	.quad	0x3fe38dae3e6c4c59              # double 0.61104499999999995
	.quad	0x3fee8096feb4a665              # double 0.95319699999999996
	.quad	0x3fd7a6937d1fe64f              # double 0.36954199999999998
	.quad	0x3fef62bf11f926c8              # double 0.980804
	.quad	0x3fe75db1209edbf9              # double 0.73018700000000003
	.quad	0x3fdac7cd898b2e9d              # double 0.41844500000000001
	.quad	0x3fdadfdef8487b9a              # double 0.41991400000000001
	.quad	0x3fd1f0025bfad29a              # double 0.28027400000000002
	.quad	0x3f976295208e1501              # double 0.022837
	.quad	0x3fe1191dde37585c              # double 0.53431600000000001
	.quad	0x3fd7fe7e1fc08fa8              # double 0.37490800000000002
	.quad	0x3fe51d627bf61aa4              # double 0.65983700000000001
	.quad	0x3fe2828a1dfb938a              # double 0.57843500000000003
	.quad	0x3fd3a38759253544              # double 0.30685600000000002
	.quad	0x3fe24a515ce9e5e2              # double 0.57157199999999997
	.quad	0x3febaca36199780c              # double 0.86482400000000003
	.quad	0x3fbffae3608d0892              # double 0.12492200000000001
	.quad	0x3fc9035371971c11              # double 0.195414
	.quad	0x3fe3d7eed45e9186              # double 0.62010900000000002
	.quad	0x3fda2806af46aa08              # double 0.40869299999999997
	.quad	0x3fce714fce746cb9              # double 0.23783299999999999
	.quad	0x3fdada9c99285a92              # double 0.41959299999999999
	.quad	0x3fde8c586876e1df              # double 0.47731600000000002
	.quad	0x3fe107980f55de59              # double 0.53217700000000001
	.quad	0x3fbd99cbee807bbb              # double 0.11562799999999999
	.quad	0x3fe7aa6f3f52fc26              # double 0.73955499999999996
	.quad	0x3f6018e757928e0d              # double 0.0019650000000000002
	.quad	0x3fb72c40d0aaa7df              # double 0.090519000000000002
	.quad	0x3fd369f4906034f4              # double 0.303342
	.quad	0x3fc05dc8323358f3              # double 0.127862
	.quad	0x3fbaa6a012599ed8              # double 0.104105
	.quad	0x3fd0d1394317acc5              # double 0.26277
	.quad	0x3fdcc5eb313be22e              # double 0.44957999999999998
	.quad	0x3fd6f08461f9f01c              # double 0.35843000000000003
	.quad	0x3fe0a36e2eb1c433              # double 0.51995000000000002
	.quad	0x3fec2f35e310dbf0              # double 0.88076299999999996
	.quad	0x3fd7b2702a3486f0              # double 0.37026599999999998
	.quad	0x3fd4946801711948              # double 0.32155800000000001
	.quad	0x3fe407f88765ba6f              # double 0.625973
	.quad	0x3fe7327cbf6e3f79              # double 0.72491300000000003
	.quad	0x3fed10129cbab64a              # double 0.90821200000000002
	.quad	0x3fd54ba51a005c46              # double 0.33274199999999998
	.quad	0x3fdb78f25a250f84              # double 0.429257
	.quad	0x3fe5dd616f86a099              # double 0.68327400000000005
	.quad	0x3f9fbbd7b2031ceb              # double 0.03099
	.quad	0x3fd92da554b8bef9              # double 0.39341100000000001
	.quad	0x3fe36e3715400325              # double 0.60720399999999997
	.quad	0x3f9d28d002e23290              # double 0.028476000000000001
	.quad	0x3fef496aad1d041d              # double 0.97771200000000002
	.quad	0x3feac8e25c810a57              # double 0.83702200000000004
	.quad	0x3fe63d46b26bf877              # double 0.69498000000000004
	.quad	0x3fe4358d1526d8b2              # double 0.63153700000000002
	.quad	0x3fe6c6cb966be7b0              # double 0.71176700000000004
	.quad	0x3fe8d9146e4c0df6              # double 0.77649900000000005
	.quad	0x3fea500f776c4828              # double 0.82227300000000003
	.quad	0x3fe15796bfca85cb              # double 0.54194200000000003
	.quad	0x3fca7f2c3009b307              # double 0.207006
	.quad	0x3fefcdfaca361998              # double 0.99389400000000005
	.quad	0x3fcbbae46cfc829d              # double 0.216641
	.quad	0x3fb6c7da1ec4e725              # double 0.088986999999999997
	.quad	0x3f813d74d594f26b              # double 0.0084180000000000001
	.quad	0x3fdffc9795b35b0c              # double 0.49979200000000001
	.quad	0x3fb5ef5232d2bb23              # double 0.085682999999999995
	.quad	0x3fd5e7c8d195896a              # double 0.34227200000000002
	.quad	0x3fe2abead4f5903a              # double 0.58348599999999995
	.quad	0x3fa0ec95bff04578              # double 0.033055000000000001
	.quad	0x3fd03dee78183f92              # double 0.25378000000000001
	.quad	0x3fed6596c82e019b              # double 0.918651
	.quad	0x3fe3c02afdda8bd2              # double 0.61720799999999998
	.quad	0x3fe9609bb6aa4b99              # double 0.79304300000000005
	.quad	0x3fe096e158750c1c              # double 0.51841800000000005
	.quad	0x3fe15af07bfe7e20              # double 0.54235100000000003
	.quad	0x3fb08e68e3ef2841              # double 0.064672999999999994
	.quad	0x3fd3b018611fd588              # double 0.30762299999999998
	.quad	0x3fa856605ee568a5              # double 0.047534
	.quad	0x3fe3513f8db48909              # double 0.60366799999999998
	.quad	0x3fcc76534373f317              # double 0.222361
	.quad	0x3fe1507e9d94d0dd              # double 0.541076
	.quad	0x3fe4502eec7c957d              # double 0.63478800000000002
	.quad	0x3fe4f52b90a78290              # double 0.65492799999999995
	.quad	0x3feac92bc2fc6973              # double 0.83705700000000005
	.quad	0x3fe43d944aa53fc0              # double 0.632517
	.quad	0x3fd891e646f15619              # double 0.383905
	.quad	0x3fa61e2de8709742              # double 0.043199000000000001
	.quad	0x3feba3bbc6eb0b7c              # double 0.86373699999999997
	.quad	0x3febbf359ff4fd6d              # double 0.86709099999999995
	.quad	0x3fcbc5e6ff7dfa01              # double 0.216977
	.quad	0x3fe436805a2d7300              # double 0.63165300000000002
	.quad	0x3fc7eccc46950fc7              # double 0.186914
	.quad	0x3fb6467be553ac4f              # double 0.087012999999999993
	.quad	0x3fe191233df2a9d6              # double 0.54896699999999998
	.quad	0x3fe9b8cfbfc6540d              # double 0.80381000000000002
	.quad	0x3feea8ed5f138bce              # double 0.958121
	.quad	0x3fd1901083dbc233              # double 0.274418
	.quad	0x3fbeb15f88fc9364              # double 0.119894
	.quad	0x3fd696a26e547171              # double 0.35294399999999998
	.quad	0x3fd5820e6299524c              # double 0.336063
	.quad	0x3fea07ad080b673c              # double 0.81343699999999996
	.quad	0x3fe7b0fadf2ecf20              # double 0.74035399999999995
	.quad	0x3fd26c15d2d01c0d              # double 0.28784700000000002
	.quad	0x3feeb645a1cac083              # double 0.95974999999999999
	.quad	0x3fe6474538ef34d7              # double 0.69620000000000004
	.quad	0x3fd4d206c8711d7a              # double 0.32531900000000002
	.quad	0x3fd27c5ac471b478              # double 0.28883999999999999
	.quad	0x3fe9877ee4e26d48              # double 0.79779
	.quad	0x3f9599ed7c6fbd27              # double 0.021094999999999999
	.quad	0x3fdebd76ee73e682              # double 0.48031400000000002
	.quad	0x3fd730a4e379b77c              # double 0.362344
	.quad	0x3fefb4117f84449e              # double 0.99073100000000003
	.quad	0x3fe3dcca70d1fa33              # double 0.62070199999999998
	.quad	0x3fd12a3486f049aa              # double 0.26820100000000002
	.quad	0x3fa87ee0b0af5fd4              # double 0.047842999999999997
	.quad	0x3fe8496aad1d041d              # double 0.75896200000000003
	.quad	0x3f7bad3a604e1e71              # double 0.006757
	.quad	0x3fe342528ae74f2f              # double 0.60184599999999999
	.quad	0x3fc07e175d13d74d              # double 0.12884799999999999
	.quad	0x3fe82b96f21f6cad              # double 0.75532100000000002
	.quad	0x3fec55d3dc8b86b1              # double 0.88547699999999996
	.quad	0x3fe62a715831f03d              # double 0.69268099999999999
	.quad	0x3fefd8b60f1b25f6              # double 0.99520399999999998
	.quad	0x3fdc089a02752546              # double 0.438025
	.quad	0x3fd4df86e3b46fdf              # double 0.32614300000000002
	.quad	0x3fe22dadb8348f54              # double 0.56807600000000003
	.quad	0x3fd783558a761028              # double 0.36739100000000002
	.quad	0x3fe854b8bef8ceb3              # double 0.76034199999999996
	.quad	0x3fd5a25529fe004b              # double 0.33803299999999997
	.quad	0x3fcc3f24d8fd5cb8              # double 0.22067700000000001
	.quad	0x3f95d0fa58f7121b              # double 0.021305000000000001
	.quad	0x3fef40b780346dc6              # double 0.97665000000000002
	.quad	0x3fe8a2f6a50d6b23              # double 0.76989300000000005
	.quad	0x3fe5d701d9f4d37c              # double 0.68249599999999999
	.quad	0x3fe399b90ea9e6ef              # double 0.61251500000000003
	.quad	0x3fc20913a4f8726d              # double 0.140902
	.quad	0x3fe083c8e25c810a              # double 0.51608699999999996
	.quad	0x3fea412ad81adea9              # double 0.82045500000000005
	.quad	0x3fecafff36ac6477              # double 0.89648399999999995
	.quad	0x3fcc3201040bfe3b              # double 0.220276
	.quad	0x3feab2378ab0c88a              # double 0.83425499999999997
	.quad	0x3fec2087ca643cc0              # double 0.87897099999999995
	.quad	0x3fb1dd6e04c05921              # double 0.069785
	.quad	0x3fe3390c9107faa0              # double 0.60071399999999997
	.quad	0x3fd0f0d413122b7c              # double 0.26469900000000002
	.quad	0x3fec4738a3b57c4e              # double 0.88369399999999998
	.quad	0x3fd64ac29bf162ae              # double 0.34831299999999998
	.quad	0x3feef2862f5989df              # double 0.96710499999999999
	.quad	0x3fc07db2b346130a              # double 0.12883600000000001
	.quad	0x3fecebca5375c8da              # double 0.903783
	.quad	0x3fbf851eb851eb85              # double 0.123125
	.quad	0x3fd1b09e98dcdb38              # double 0.27640500000000001
	.quad	0x3fed684ad794a6ec              # double 0.91898100000000004
	.quad	0x3feef6102795703f              # double 0.96753699999999998
	.quad	0x3fe8d3bd1676640a              # double 0.77584699999999995
	.quad	0x3fe37913e81450f0              # double 0.60853000000000002
	.quad	0x3f944f1a1986b9c3              # double 0.019833
	.quad	0x3fea09b738e6d15b              # double 0.81368600000000002
	.quad	0x3fea5275ee99a62f              # double 0.82256600000000002
	.quad	0x3fe0b300de4c5111              # double 0.52185099999999995
	.quad	0x3fd0763e4abe6a33              # double 0.25721699999999997
	.quad	0x3fa8387df5cf2496              # double 0.047306000000000001
	.quad	0x3fee49afe1da7b0b              # double 0.94649499999999998
	.quad	0x3fe34e52deca2553              # double 0.60331100000000004
	.quad	0x3fabeaf6837f7be1              # double 0.054526999999999999
	.quad	0x3fd766516db0dd83              # double 0.36562
	.quad	0x3fda69f4906034f4              # double 0.412717
	.quad	0x3fdfda6612839043              # double 0.49770500000000001
	.quad	0x3fe6318116ebd4d0              # double 0.69354300000000002
	.quad	0x3fe61ea140570825              # double 0.69123900000000005
	.quad	0x3fc20e51d25aab47              # double 0.14106199999999999
	.quad	0x3fe6f1e4b44a1f08              # double 0.717028
	.quad	0x3f81f2dc2b0ea183              # double 0.0087639999999999992
	.quad	0x3fe7e3eaf6837f7c              # double 0.74657200000000001
	.quad	0x3fe54d035371971c              # double 0.66565099999999999
	.quad	0x3fa4d551d68c692f              # double 0.040689999999999997
	.quad	0x3febd51d68c692f7              # double 0.86976500000000001
	.quad	0x3febc3e963dc486b              # double 0.86766500000000002
	.quad	0x3fd35675579af188              # double 0.30215199999999998
	.quad	0x3fe434e7685985ad              # double 0.63145799999999996
	.quad	0x3fe9b6bf444e0daa              # double 0.80355799999999999
	.quad	0x3fee211a975afaf8              # double 0.94154099999999996
	.quad	0x3fbba4c61d8622c4              # double 0.107983
	.quad	0x3fca35efa615a8df              # double 0.20477100000000001
	.quad	0x3fede1f7d73c9258              # double 0.93383400000000005
	.quad	0x3fd66bca5375c8da              # double 0.350329
	.quad	0x3fd43f24d8fd5cb8              # double 0.31635400000000002
	.quad	0x3feee66cb10342ab              # double 0.96562800000000004
	.quad	0x3feea1fafc8b007a              # double 0.95727300000000004
	.quad	0x3fe58bef8ceb356e              # double 0.67333200000000004
	.quad	0x3fc0f77f27fe4bcb              # double 0.132553
	.quad	0x3fd078b7a1c25d07              # double 0.25736799999999999
	.quad	0x3fe695faa8a82a56              # double 0.70580799999999999
	.quad	0x3f86798958d9b5e9              # double 0.010973999999999999
	.quad	0x3fa649906cca2db6              # double 0.043529999999999999
	.quad	0x3fb9accd530489d2              # double 0.10029299999999999
	.quad	0x3fecbd29563a9f38              # double 0.89809099999999997
	.quad	0x3fef0e6f2e8c0486              # double 0.97051200000000004
	.quad	0x3fdf49dbec2480e9              # double 0.48888300000000001
	.quad	0x3fd1b04ab606b7aa              # double 0.27638499999999999
	.quad	0x3fefe89656eefa1e              # double 0.99714199999999997
	.quad	0x3fb774794ea07703              # double 0.091620999999999994
	.quad	0x3fdf5accd530489d              # double 0.48991699999999999
	.quad	0x3fe7e7c8d195896a              # double 0.74704400000000004
	.quad	0x3fcce8c8abd5dc40              # double 0.225854
	.quad	0x3fb447e49b1fab97              # double 0.079222000000000001
	.quad	0x3fe8b8887229e908              # double 0.77252600000000005
	.quad	0x3feb35e529bae46d              # double 0.850329
	.quad	0x3fb792f2b66b6178              # double 0.092086000000000001
	.quad	0x3fe8f3a57eaa2a0b              # double 0.77974200000000005
	.quad	0x3fc2496ededaec4a              # double 0.14286599999999999
	.quad	0x3fef24d099e0e736              # double 0.973244
	.quad	0x3fdaaa53fc0096ff              # double 0.41664600000000002
	.quad	0x3fe67bf61aa3f035              # double 0.70263200000000003
	.quad	0x3fb1872f33ca31e8              # double 0.068469000000000002
	.quad	0x3fd6e1975f2cb641              # double 0.35751899999999998
	.quad	0x3fd4659d12cadddf              # double 0.31870199999999999
	.quad	0x3fc49c4545846e8f              # double 0.161019
	.quad	0x3fcb9170d62bf120              # double 0.21537600000000001
	.quad	0x3f95ad106ee30caa              # double 0.021167999999999999
	.quad	0x3fccb05b7cfe5860              # double 0.224132
	.quad	0x3fe20d6b228dc982              # double 0.56413800000000003
	.quad	0x3fd0a9ac36544fe3              # double 0.26035599999999998
	.quad	0x3feb872b020c49ba              # double 0.86024999999999996
	.quad	0x3fe8ba4723aafff3              # double 0.77273899999999995
	.quad	0x3fee238da3c21188              # double 0.94184000000000001
	.quad	0x3fe26cb31c219eb6              # double 0.57576899999999998
	.quad	0x3fd24fa48301a7a0              # double 0.286111
	.quad	0x3fdeb790fb65668c              # double 0.47995399999999999
	.quad	0x3fb143bf727136a4              # double 0.06744
	.quad	0x3fbbedb7281fd9ba              # double 0.109096
	.quad	0x3fe6aba9d1f60179              # double 0.70845499999999995
	.quad	0x3fdc790b84988095              # double 0.44488800000000001
	.quad	0x3fa996d8f4f93bc1              # double 0.049979000000000003
	.quad	0x3fe8f9d909f1f14a              # double 0.78049900000000005
	.quad	0x3fb5bae46cfc829d              # double 0.084883
	.quad	0x3fd93e7d1351159c              # double 0.39443899999999998
	.quad	0x3fdeda7b0b391926              # double 0.48208499999999999
	.quad	0x3fed3f359ff4fd6d              # double 0.91396599999999995
	.quad	0x3fbba7221858bc5a              # double 0.108019
	.quad	0x3fe6af9ebe9c8861              # double 0.70893799999999996
	.quad	0x3feaea209aaa3ad2              # double 0.84108000000000005
	.quad	0x3f98cc144028e4fc              # double 0.024216000000000001
	.quad	0x3fefa294141e9af6              # double 0.98859600000000003
	.quad	0x3fcad6dc1a47a9e3              # double 0.20968200000000001
	.quad	0x3fe7be9856a37ac4              # double 0.74201600000000001
	.quad	0x3fec21511dffc548              # double 0.87906700000000004
	.quad	0x3f9e22a2c2374795              # double 0.029429
	.quad	0x3fe0a3fee2c98e54              # double 0.52001900000000001
	.quad	0x3fe029f7b5aea316              # double 0.50512299999999999
	.quad	0x3fc325460aa64c30              # double 0.14957500000000001
	.quad	0x3fe0716f4384ba0f              # double 0.51384700000000005
	.quad	0x3fd5c1df3300de4c              # double 0.33995799999999998
	.quad	0x3fed125785f8d2e5              # double 0.90848899999999999
	.quad	0x3fe4dddb1209edc0              # double 0.65208200000000005
	.quad	0x3fcdff25e56cd6c3              # double 0.234349
	.quad	0x3fe5adeebb341e15              # double 0.67748200000000003
	.quad	0x3fe577f498c3b0c4              # double 0.67089299999999996
	.quad	0x3fec71f57b41bfbe              # double 0.88891100000000001
	.quad	0x3fd1a087ca643cc0              # double 0.27542299999999997
	.quad	0x3fea5c0980b24207              # double 0.82373499999999999
	.quad	0x3fee314a90470a81              # double 0.94351700000000005
	.quad	0x3fc052d666a98245              # double 0.127528
	.quad	0x3fe5de1c15097c81              # double 0.68336300000000005
	.quad	0x3fe770d1fa333765              # double 0.73252200000000001
	.quad	0x3fd5830e3cd9a522              # double 0.33612399999999998
	.quad	0x3fe4ddebd9018e75              # double 0.65208999999999995
	.quad	0x3fb2273929ed3954              # double 0.070911000000000002
	.quad	0x3fc27e06961c3697              # double 0.14447099999999999
	.quad	0x3fe7b81733226c3c              # double 0.74122200000000005
	.quad	0x3fea80bed740c415              # double 0.82821599999999995
	.quad	0x3fd6c9ff92f2b66b              # double 0.35607899999999998
	.quad	0x3fe8e4ba94bbe447              # double 0.77792099999999997
	.quad	0x3fc12abef06b3786              # double 0.13411699999999999
	.quad	0x3fe1e2131a8ef77f              # double 0.55884699999999998
	.quad	0x3fea18a222d5171e              # double 0.81550699999999998
	.quad	0x3fd7b70ef566490a              # double 0.37054799999999999
	.quad	0x3fe0b198288051ca              # double 0.521679
	.quad	0x3fe8f789a459103d              # double 0.78021700000000005
	.quad	0x3fdf940357a35504              # double 0.49340899999999999
	.quad	0x3faaaf9a8cdea034              # double 0.052121000000000001
	.quad	0x3fd29a91105e1c15              # double 0.290684
	.quad	0x3fd17b07075b3e14              # double 0.27313399999999999
	.quad	0x3faab9b23dd54da5              # double 0.052198000000000001
	.quad	0x3fb0436fc158fb44              # double 0.063529000000000002
	.quad	0x3fe57950b955f783              # double 0.67105899999999996
	.quad	0x3fed606317268d33              # double 0.91801600000000005
	.quad	0x3fb417ebaf102364              # double 0.078490000000000004
	.quad	0x3fd1b7ed41b75a75              # double 0.27685100000000001
	.quad	0x3fc09acbc8c0ce92              # double 0.12972400000000001
	.quad	0x3fe7a3fee2c98e54              # double 0.73876900000000001
	.quad	0x3fef09374bc6a7f0              # double 0.96987500000000004
	.quad	0x3fd4f0b28522ea10              # double 0.32719100000000001
	.quad	0x3fd05b3e1437c569              # double 0.25556899999999999
	.quad	0x3fdbefc371da37ef              # double 0.43650899999999998
	.quad	0x3fe15c78a6dacabc              # double 0.54253799999999996
	.quad	0x3fe6ad70e6f2e8c0              # double 0.70867199999999997
	.quad	0x3fe705d0fa58f712              # double 0.71945999999999999
	.quad	0x3fd09991361dc93f              # double 0.25937300000000002
	.quad	0x3fcecc0bdcad14a1              # double 0.24060200000000001
	.quad	0x3fa27daa4fca42af              # double 0.036115000000000001
	.quad	0x3fd6f8b9baa1511e              # double 0.358931
	.quad	0x3febd5c31593e5fb              # double 0.86984399999999995
	.quad	0x3fddbffcdab191de              # double 0.46484300000000001
	.quad	0x3fc29e90795f676f              # double 0.14546400000000001
	.quad	0x3f9f3cf70153bd16              # double 0.030505999999999998
	.quad	0x3fd908bfc2224edf              # double 0.39115899999999998
	.quad	0x3fe9dc13fd0d0679              # double 0.80811500000000003
	.quad	0x3fe11731098d477c              # double 0.53408100000000003
	.quad	0x3fdd99285a921cce              # double 0.46247300000000002
	.quad	0x3fe74a0e410b630b              # double 0.72779000000000005
	.quad	0x3fc055e28aa43351              # double 0.12762100000000001
	.quad	0x3feb93d74d594f27              # double 0.86179700000000004
	.quad	0x3facea28fe260b2d              # double 0.056474000000000003
	.quad	0x3fd9bcf91a32b12d              # double 0.40215899999999999
	.quad	0x3fc9a469d7342edc              # double 0.20033000000000001
	.quad	0x3fc7c1615ebfa8f8              # double 0.185589
	.quad	0x3fb90fe8ab4fa483              # double 0.097899
	.quad	0x3fda682b62845996              # double 0.41260799999999997
	.quad	0x3fe510b630a91538              # double 0.65829000000000004
	.quad	0x3fdc0374ff865d7d              # double 0.43771100000000002
	.quad	0x3fb2175d13d74d59              # double 0.070668999999999996
	.quad	0x3fef00de4c51116b              # double 0.96885600000000005
	.quad	0x3fe0d7d9dba908a2              # double 0.52634899999999996
	.quad	0x3fe25069a4df47fa              # double 0.57231600000000005
	.quad	0x3fe75883ba3443d4              # double 0.72955499999999995
	.quad	0x3fd29c27e9531551              # double 0.29078100000000001
	.quad	0x3f94ba94bbe4473d              # double 0.020243000000000001
	.quad	0x3fee4816f0068db9              # double 0.94630000000000003
	.quad	0x3fd07e4de3b8a19d              # double 0.25770900000000002
	.quad	0x3fe1e6a11ec918e3              # double 0.55940299999999998
	.quad	0x3fe206034f3fd934              # double 0.56323400000000001
	.quad	0x3fe7ad5e071c53f4              # double 0.73991300000000004
	.quad	0x3fe2014f8b588e37              # double 0.56266000000000005
	.quad	0x3feba03c4b09e98e              # double 0.86331000000000002
	.quad	0x3fe89dba908a265f              # double 0.76925399999999999
	.quad	0x3fec32031ceaf252              # double 0.88110500000000003
	.quad	0x3fd4666666666666              # double 0.31874999999999998
	.quad	0x3fe3698fe69270b0              # double 0.60663599999999995
	.quad	0x3fd4d1394317acc5              # double 0.32527
	.quad	0x3fe69d7dbf487fcc              # double 0.70672500000000005
	.quad	0x3fe32f33ca31e7da              # double 0.59951200000000004
	.quad	0x3fe690257c914b16              # double 0.70509599999999995
	.quad	0x3fdf0c1b97353b4b              # double 0.48511399999999999
	.quad	0x3fcef9db22d0e560              # double 0.24199999999999999
	.quad	0x3fd960ae9680e065              # double 0.39652599999999999
	.quad	0x3fe4e7ba237cdcca              # double 0.65328699999999995
	.quad	0x3fe1e4f11b60ae97              # double 0.55919700000000006
	.quad	0x3fe42235b4edb2f6              # double 0.62917599999999996
	.quad	0x3fcb5c209246bf01              # double 0.21374899999999999
	.quad	0x3fb538476f2a5a47              # double 0.082890000000000005
	.quad	0x3fe7744b2b777d0f              # double 0.73294599999999999
	.quad	0x3fca3a3a8e71476b              # double 0.204902
	.quad	0x3fd0afc04c8bc9cd              # double 0.26072699999999999
	.quad	0x3fea77d523b3636f              # double 0.82712799999999997
	.quad	0x3fcbd34df04ddb55              # double 0.217386
	.quad	0x3fd85b7cfe586013              # double 0.38058399999999998
	.quad	0x3fee12b1b36bd2b7              # double 0.93978200000000001
	.quad	0x3fe9cda4ce8101f3              # double 0.80635299999999999
	.quad	0x3fef9e6cd29131ec              # double 0.98808899999999999
	.quad	0x3fea7485e3da2f8c              # double 0.82672400000000001
	.quad	0x3fd0d0fe8ab4fa48              # double 0.26275599999999999
	.quad	0x3fe360ce0b912dba              # double 0.60556699999999997
	.quad	0x3fe81db0142f61ed              # double 0.75362399999999996
	.quad	0x3fcb854046412cf1              # double 0.215004
	.quad	0x3fe7c202d9cf13cf              # double 0.74243300000000001
	.quad	0x3fd87e6b3fe9fadb              # double 0.382716
	.quad	0x3fe48e4da09cc31a              # double 0.64237100000000003
	.quad	0x3feba2ad3e920c07              # double 0.86360800000000004
	.quad	0x3fe8917720c8cd64              # double 0.76775700000000002
	.quad	0x3fea1c36976bc1f0              # double 0.815944
	.quad	0x3fe7704ddb5525cc              # double 0.73245899999999997
	.quad	0x3fe1bf9a49c2c1b1              # double 0.55463899999999999
	.quad	0x3fc82f5989df1173              # double 0.188945
	.quad	0x3fec054690de0935              # double 0.87564399999999998
	.quad	0x3fe045f17bd8be73              # double 0.50853800000000005
	.quad	0x3fc2b44a1f080304              # double 0.14612700000000001
	.quad	0x3fd1b5cbff47735c              # double 0.27672099999999999
	.quad	0x3fe98c9b845564b6              # double 0.79841399999999996
	.quad	0x3fe2071c53f39d1b              # double 0.56336799999999998
	.quad	0x3fc752b90a782907              # double 0.18221200000000001
	.quad	0x3fc36a7ac81d3aa3              # double 0.15168699999999999
	.quad	0x3fcc0c282c6ef3d4              # double 0.21912100000000001
	.quad	0x3fa26c5d206c8712              # double 0.035983000000000001
	.quad	0x3f9bbe0157eed45f              # double 0.027092000000000001
	.quad	0x3fd23f63c31df762              # double 0.28511900000000001
	.quad	0x3fe97724fa8b4bf9              # double 0.795794
	.quad	0x3fdb0e1f7d73c925              # double 0.42273699999999997
	.quad	0x3fc539b8887229e9              # double 0.165824
	.quad	0x3fa24d8fd5cb7910              # double 0.035748000000000002
	.quad	0x3fcea3f8982cb210              # double 0.23937900000000001
	.quad	0x3fd8b5bb384fd2a6              # double 0.38609199999999999
	.quad	0x3fc717268d32830a              # double 0.180394
	.quad	0x3fea4fbdad7518b1              # double 0.82223400000000002
	.quad	0x3feb34784230fcf8              # double 0.85015499999999999
	.quad	0x3fcb9f666234a87e              # double 0.21580199999999999
	.quad	0x3fea187c6327ed85              # double 0.81548900000000002
	.quad	0x3fb876295208e150              # double 0.095552999999999999
	.quad	0x3fd50d887ebf22c0              # double 0.32895099999999999
	.quad	0x3fa8f345069a4df4              # double 0.048730999999999997
	.quad	0x3fd13dd97f62b6ae              # double 0.26939999999999997
	.quad	0x3fecd2135daad602              # double 0.900644
	.quad	0x3fe4a189bd8383ae              # double 0.64471900000000004
	.quad	0x3fdbefdc9c4da900              # double 0.43651499999999999
	.quad	0x3fd25158b827fa1a              # double 0.286215
	.quad	0x3feb089a02752546              # double 0.8448
	.quad	0x3fd96d8b1dd5d3dd              # double 0.39731100000000003
	.quad	0x3fa2491afc04c8bd              # double 0.035714000000000003
	.quad	0x3feb1f57b41bfbdf              # double 0.847576
	.quad	0x3fd56b484d76ab58              # double 0.334673
	.quad	0x3fd82b40f66a5508              # double 0.37763999999999998
	.quad	0x3fc1b7b6bb129025              # double 0.13841899999999999
	.quad	0x3fd190abb44e50c6              # double 0.274455
	.quad	0x3fe532745bf26f1e              # double 0.66240900000000003
	.quad	0x3fb00b45ae5ffa3c              # double 0.062672000000000005
	.quad	0x3fc17e2c55c96031              # double 0.13666300000000001
	.quad	0x3fee5a3e39f77293              # double 0.94851600000000003
	.quad	0x3fe0cd22c881e471              # double 0.52504099999999998
	.quad	0x3fddcdf266ba493d              # double 0.46569500000000003
	.quad	0x3fea5c4651f3e89b              # double 0.82376400000000005
	.quad	0x3fe031d92b7fe08b              # double 0.50608500000000001
	.quad	0x3fc107c84b5dcc64              # double 0.13305
	.quad	0x3fefa474538ef34d              # double 0.98882499999999995
	.quad	0x3fe7331e3a7daa50              # double 0.72499000000000002
	.quad	0x3f608c3f3e0370ce              # double 0.0020200000000000001
	.quad	0x3fec1b21c475e636              # double 0.87831199999999998
	.quad	0x3fd1b91b3f20a73f              # double 0.27692299999999997
	.quad	0x3fe42135daad6020              # double 0.629054
	.quad	0x3fc745308bb90646              # double 0.18179899999999999
	.quad	0x3fd41e4712e40853              # double 0.31434800000000002
	.quad	0x3fd31d323fee2c99              # double 0.29865700000000001
	.quad	0x3fe28183f91e646f              # double 0.57830999999999999
	.quad	0x3fedf570c564f97f              # double 0.93621100000000002
	.quad	0x3fb1dbb9cf9a06a7              # double 0.069759000000000002
	.quad	0x3fe90be9424e5929              # double 0.78270399999999996
	.quad	0x3fe2828a1dfb938a              # double 0.57843500000000003
	.quad	0x3fe9f10cb295e9e2              # double 0.81067500000000003
	.quad	0x3fce93faf42784a9              # double 0.23889099999999999
	.quad	0x3fecea8fc0d2c387              # double 0.90363300000000002
	.quad	0x3fc4cdd93c46d82c              # double 0.16253200000000001
	.quad	0x3fdbc69728a61177              # double 0.43399599999999999
	.quad	0x3fe8483cafb3b752              # double 0.75881799999999999
	.quad	0x3fc585e80bed740c              # double 0.16814899999999999
	.quad	0x3fcc3621fafc8b00              # double 0.22040199999999999
	.quad	0x3fef7891e215336e              # double 0.98346800000000001
	.quad	0x3fefdd22856605ee              # double 0.99574399999999996
	.quad	0x3f9b2074ea8da7f4              # double 0.026491000000000001
	.quad	0x3fe46368f08461fa              # double 0.63713500000000001
	.quad	0x3fe76b3bb83cf2d0              # double 0.73184000000000005
	.quad	0x3fbbcb3e5753a3ec              # double 0.10857
	.quad	0x3fea4059210385c6              # double 0.82035499999999995
	.quad	0x3fe47c19c17225b7              # double 0.64014899999999997
	.quad	0x3fec4a7b4e54f7a9              # double 0.88409199999999999
	.quad	0x3fe413ccd0fe8ab5              # double 0.627417
	.quad	0x3fe529ef5232d2bb              # double 0.66136899999999998
	.quad	0x3fcca38327674d16              # double 0.22373999999999999
	.quad	0x3fdf0867ad8e4324              # double 0.48488799999999999
	.quad	0x3feb322291fb3fa7              # double 0.84987000000000001
	.quad	0x3fd2403dddb1209f              # double 0.28517100000000001
	.quad	0x3febd63022dd7a9a              # double 0.869896
	.quad	0x3fefe66cb10342ab              # double 0.99687800000000004
	.quad	0x3fdc9a5a89b951c6              # double 0.44692100000000001
	.quad	0x3fbcbb6ed677707a              # double 0.112235
	.quad	0x3facda09cc319c5a              # double 0.056350999999999998
	.quad	0x3fcee7b3d8e00086              # double 0.24144599999999999
	.quad	0x3fe441b54195cc85              # double 0.63302099999999994
	.quad	0x3fedd21bc126a65d              # double 0.931898
	.quad	0x3fe0ebfec13b9f12              # double 0.52880799999999994
	.quad	0x3fda995aaf78feef              # double 0.41560999999999998
	.quad	0x3fe7b5371971c10d              # double 0.74087099999999995
	.quad	0x3fee66644d877250              # double 0.94999900000000004
	.quad	0x3fe91c842fa50939              # double 0.78473099999999996
	.quad	0x3fdc968d759ee88e              # double 0.446689
	.quad	0x3fd905ff1d81f106              # double 0.39099099999999998
	.quad	0x3fdd669057d1782d              # double 0.45938499999999999
	.quad	0x3fe2e38a7e73a366              # double 0.59027600000000002
	.quad	0x3feb0288051c9f73              # double 0.844059
	.quad	0x3fd20e1b4bb5e0f8              # double 0.282111
	.quad	0x3feeb7ef5a964e8b              # double 0.95995299999999994
	.quad	0x3fe68ad256798959              # double 0.70444600000000002
	.quad	0x3fd0a31a4bdba0a5              # double 0.25995499999999999
	.quad	0x3fd6accd530489d2              # double 0.35429699999999997
	.quad	0x3fe743d03968d75a              # double 0.72702800000000001
	.quad	0x3fa0841ede1198af              # double 0.032258000000000002
	.quad	0x3fd14c447c30d307              # double 0.27028000000000002
	.quad	0x3fecc0420f6f08cc              # double 0.89846899999999996
	.quad	0x3fcc80f98fa37692              # double 0.222686
	.quad	0x3feca42d05f28848              # double 0.89504099999999998
	.quad	0x3fd4af5fd47bedb7              # double 0.32320399999999999
	.quad	0x3fe44bd33d29563b              # double 0.63425600000000004
	.quad	0x3fdfb9496249a134              # double 0.49568400000000001
	.quad	0x3fd8883fd5022574              # double 0.38331599999999999
	.quad	0x3fe75ebfa8f7db6e              # double 0.73031599999999997
	.quad	0x3fe58fd5cb790fb6              # double 0.67380799999999996
	.quad	0x3fe8acde19fc2a88              # double 0.77110199999999995
	.quad	0x3fdb4d983947496b              # double 0.42661100000000002
	.quad	0x3fe44c55432873bd              # double 0.63431800000000005
	.quad	0x3fc7e6f71a7e3088              # double 0.18673600000000001
	.quad	0x3fed568c692f6e83              # double 0.91681500000000005
	.quad	0x3fef63a9f383f0bb              # double 0.98091600000000001
	.quad	0x3fe66c7219220ff5              # double 0.70073799999999997
	.quad	0x3fe8c6ac215b9a5b              # double 0.77425200000000005
	.quad	0x3fb9e279dd3bafd9              # double 0.10111199999999999
	.quad	0x3fdfca9691a75cd1              # double 0.49674000000000001
	.quad	0x3fc47264a16a4873              # double 0.15974099999999999
	.quad	0x3fb23315d701d9f5              # double 0.071092000000000002
	.quad	0x3fbf36049ecb31c2              # double 0.121918
	.quad	0x3fcabd6e8af81627              # double 0.20890600000000001
	.quad	0x3fe35bc664d3bf2f              # double 0.60495299999999996
	.quad	0x3fcaa42aed139431              # double 0.20813499999999999
	.quad	0x3fdf2070b8cfbfc6              # double 0.48635499999999998
	.quad	0x3fec849235f80991              # double 0.89118299999999995
	.quad	0x3fbe550870110a13              # double 0.11848499999999999
	.quad	0x3fe49cb6848beb5b              # double 0.64412999999999998
	.quad	0x3fb21c8a7a41e57e              # double 0.070748000000000005
	.quad	0x3fe617fc7607c41a              # double 0.69042800000000004
	.quad	0x3fcb62a5e785b5b7              # double 0.213948
	.quad	0x3fec309c7ffde721              # double 0.88093399999999999
	.quad	0x3fec396af038e2a0              # double 0.88200900000000004
	.quad	0x3fedc2b0ea18372e              # double 0.93001599999999995
	.quad	0x3fc199fe43675ddd              # double 0.137512
	.quad	0x3fea122749f0e4da              # double 0.814716
	.quad	0x3fd0e79aae6c8f75              # double 0.26413599999999998
	.quad	0x3fc6d4d4024b33db              # double 0.17837
	.quad	0x3fda067cf1c3265b              # double 0.40664600000000001
	.quad	0x3fdeef7c243dccea              # double 0.48336699999999999
	.quad	0x3fd567381d7dbf48              # double 0.33442499999999997
	.quad	0x3fe8dbf487fcb924              # double 0.77685000000000004
	.quad	0x3fb9a250f840181e              # double 0.100133
	.quad	0x3fe75e093532e7b4              # double 0.73022900000000002
	.quad	0x3fe71c17225b749b              # double 0.72217900000000002
	.quad	0x3fddb59ddc1e7968              # double 0.46421000000000001
	.quad	0x3fdc3009b30728e9              # double 0.44043199999999999
	.quad	0x3fd3333fc86cebbc              # double 0.30000300000000002
	.quad	0x3fb876188b11409a              # double 0.095551999999999998
	.quad	0x3feb03dddb1209ee              # double 0.84422200000000003
	.quad	0x3fdf749adc8fb86f              # double 0.49149199999999998
	.quad	0x3f9e0c9d9d3458cd              # double 0.029345
	.quad	0x3feeba3875925354              # double 0.96023199999999997
	.quad	0x3fb7ef7c243dccea              # double 0.093497999999999997
	.quad	0x3fe6ecc814d7279a              # double 0.71640400000000004
	.quad	0x3fe013ad5bee3d60              # double 0.50240200000000002
	.quad	0x3fb136e71cda2b5a              # double 0.067243999999999998
	.quad	0x3faa35935fc3b4f6              # double 0.051189999999999999
	.quad	0x3fe461309c7ffde7              # double 0.63686399999999999
	.quad	0x3fc05fc7e6b3fea0              # double 0.12792300000000001
	.quad	0x3fe5089c1b54195d              # double 0.65730100000000002
	.quad	0x3fade2ac322291fb              # double 0.058369999999999998
	.quad	0x3fd16dce39b456b4              # double 0.27232699999999999
	.quad	0x3fd079c4113c6866              # double 0.25743199999999999
	.quad	0x3fc669d7342edbb6              # double 0.17510500000000001
	.quad	0x3fe14f8f8a4c1ebd              # double 0.54096200000000005
	.quad	0x3fe10954a7f8012e              # double 0.532389
	.quad	0x3fe8feb8d8234224              # double 0.78109399999999995
	.quad	0x3fa58c4bd33d2956              # double 0.042085999999999998
	.quad	0x3fd995feda661284              # double 0.39978000000000002
	.quad	0x3fe69c9b41398634              # double 0.70661700000000005
	.quad	0x3fe17f583a53b8e5              # double 0.54679500000000003
	.quad	0x3fe1cc55432873bd              # double 0.55619300000000005
	.quad	0x3fc7b9841aac53b1              # double 0.18534900000000001
	.quad	0x3fef6dbb59ddc1e8              # double 0.98214500000000004
	.quad	0x3fd1a8b08dd1e53b              # double 0.27592100000000003
	.quad	0x3fecf05c896dd26b              # double 0.90434099999999995
	.quad	0x3fe16db0dd82fd76              # double 0.54464000000000001
	.quad	0x3febd43aeab7995f              # double 0.86965700000000001
	.quad	0x3fb4b05b7cfe5860              # double 0.080815999999999999
	.quad	0x3fb095d0b73d188f              # double 0.064785999999999996
	.quad	0x3fdd52e72da122fb              # double 0.45818500000000001
	.quad	0x3fc36cd6c2efd439              # double 0.15175900000000001
	.quad	0x3fe502645e4e69f0              # double 0.65654199999999996
	.quad	0x3f80fe047d3d4281              # double 0.0082970000000000005
	.quad	0x3fe213a4f8726d05              # double 0.56489800000000001
	.quad	0x3fbd1f2dc2b0ea18              # double 0.113757
	.quad	0x3fded22c881e4713              # double 0.48157800000000001
	.quad	0x3fda8583621fafc9              # double 0.41439900000000002
	.quad	0x3fe53e81450efdca              # double 0.66388000000000003
	.quad	0x3fdaf15a4acf312b              # double 0.42098099999999999
	.quad	0x3fd4fab96f21f6cb              # double 0.32780300000000001
	.quad	0x3feaa17b0f6ad70e              # double 0.83221199999999995
	.quad	0x3fe5a0ea5b530ced              # double 0.67589299999999997
	.quad	0x3fe9d5c74751ce29              # double 0.80734600000000001
	.quad	0x3f891a32b12d3416              # double 0.012257000000000001
	.quad	0x3fef694898f605ab              # double 0.98160199999999997
	.quad	0x3f986d71f36262cc              # double 0.023855000000000001
	.quad	0x3fb581cf7878b7a2              # double 0.084012000000000003
	.quad	0x3feae132b55ef1fe              # double 0.83999000000000001
	.quad	0x3fed292c49342678              # double 0.91127599999999997
	.quad	0x3fd5d798d8a979e1              # double 0.34128399999999998
	.quad	0x3fe2bfdb4cc25072              # double 0.58592
	.quad	0x3fee5efa615a8deb              # double 0.94909399999999999
	.quad	0x3feec258d5842b73              # double 0.96122399999999996
	.quad	0x3fdbe6afcce1c582              # double 0.43595499999999998
	.quad	0x3fc8e21101b00368              # double 0.19439899999999999
	.quad	0x3fdfc5b4aa9717df              # double 0.49644199999999999
	.quad	0x3fe70c1333b96af0              # double 0.72022399999999998
	.quad	0x3fe81fb6134ce3de              # double 0.75387099999999996
	.quad	0x3fdaf19934efcbd5              # double 0.42099599999999998
	.quad	0x3fe17a20578e5c4f              # double 0.54615800000000003
	.quad	0x3fa8a5efe9318762              # double 0.048141000000000003
	.quad	0x3fc92b3461309c80              # double 0.196631
	.quad	0x3fd2210385c67dfe              # double 0.28326499999999999
	.quad	0x3fc182a9930be0df              # double 0.1368
	.quad	0x3f9f0bf1a5ca2984              # double 0.030318999999999999
	.quad	0x3fd421d96e9bbf0e              # double 0.31456600000000001
	.quad	0x3fe035e529bae46d              # double 0.506579
	.quad	0x3fe1a1815a07b353              # double 0.55096500000000004
	.quad	0x3fc5d028a1dfb939              # double 0.17041500000000001
	.quad	0x3fd29e8c47a17f41              # double 0.29092699999999999
	.quad	0x3fe61b152f3c2dae              # double 0.69080600000000003
	.quad	0x3fc3fe004b7f5a53              # double 0.15618899999999999
	.quad	0x3fed31c64ba94bbe              # double 0.91232599999999997
	.quad	0x3fbee2eb1c432ca5              # double 0.12064999999999999
	.quad	0x3fd6cf312b1b36bd              # double 0.35639599999999999
	.quad	0x3fe76876e1deacc9              # double 0.73150199999999999
	.quad	0x3fedd21dda059a74              # double 0.93189900000000003
	.quad	0x3f9b649d388a8b09              # double 0.026751
	.quad	0x3fe7afd5454152b1              # double 0.74021400000000004
	.quad	0x3febc03dddb1209f              # double 0.86721700000000002
	.quad	0x3fe014057082491b              # double 0.502444
	.quad	0x3fee34267839cd81              # double 0.94386599999999998
	.quad	0x3feab48b220791c5              # double 0.83453900000000003
	.quad	0x3fe838bcdfefbf40              # double 0.75692599999999999
	.quad	0x3fce0b0292817764              # double 0.234711
	.quad	0x3fc3db6e503fb374              # double 0.15513399999999999
	.quad	0x3fe9dcd7060bb2bc              # double 0.80820800000000003
	.quad	0x3fe3c957cd466f50              # double 0.61832799999999999
	.quad	0x3fd06a7264a16a48              # double 0.25649699999999998
	.quad	0x3fe38f29d40ee06e              # double 0.61122600000000005
	.quad	0x3fc93996fa82e87d              # double 0.19707
	.quad	0x3fe6bf444e0daa0d              # double 0.71084800000000004
	.quad	0x3fd369d30270f388              # double 0.30333399999999999
	.quad	0x3fd5008e9b38d60a              # double 0.32815899999999998
	.quad	0x3fe753005814940c              # double 0.72888200000000003
	.quad	0x3fb415b1422ccb3a              # double 0.078455999999999997
	.quad	0x3fa99ed7c6fbd274              # double 0.050040000000000001
	.quad	0x3fe39f81a5870da6              # double 0.61322100000000002
	.quad	0x3fe4300ffda4052d              # double 0.63086699999999996
	.quad	0x3fd585f8d2e514c2              # double 0.33630199999999999
	.quad	0x3fe56a3161a1db87              # double 0.66921299999999995
	.quad	0x3fd2668c26139000              # double 0.28750900000000001
	.quad	0x3fd3efb2aae29739              # double 0.31150499999999998
	.quad	0x3fd04b4d056c508b              # double 0.25459599999999999
	.quad	0x3fcea209aaa3ad19              # double 0.23932
	.quad	0x3fee48d7e02645e5              # double 0.94639200000000001
	.quad	0x3fe5f733a8a3f898              # double 0.68642599999999998
	.quad	0x3fe0b945308bb906              # double 0.52261599999999997
	.quad	0x3fda61bf37b8d3f2              # double 0.41221600000000003
	.quad	0x3fddcc100e6afcce              # double 0.46557999999999999
	.quad	0x3fd0e770bd017daf              # double 0.26412600000000003
	.quad	0x3fc0fe0ce0b912dc              # double 0.13275300000000001
	.quad	0x3fe7ca686e7e62dc              # double 0.74345799999999995
	.quad	0x3fe19c6d1e108c3f              # double 0.55034499999999997
	.quad	0x3fd1eed02cd39da1              # double 0.28020099999999998
	.quad	0x3fb26fb4c3c18b50              # double 0.072016999999999998
	.quad	0x3faf74cd31769a91              # double 0.061438
	.quad	0x3fde6f1561911490              # double 0.47553000000000001
	.quad	0x3fc5f4b1ee243569              # double 0.17152999999999999
	.quad	0x3fd4f9a8cdea033e              # double 0.32773799999999997
	.quad	0x3fe4567ba237cdcd              # double 0.63555700000000004
	.quad	0x3fe36412cf0f9d2c              # double 0.605966
	.quad	0x3fee87ebf22c01e7              # double 0.95409200000000005
	.quad	0x3fed21d53cddd6e0              # double 0.91037999999999996
	.quad	0x3fd3b9e492bc2fc7              # double 0.30822100000000002
	.quad	0x3fceb76f6d762520              # double 0.23997299999999999
	.quad	0x3fe6a00e27e0ef9a              # double 0.70703800000000006
	.quad	0x3fdb963992c8c500              # double 0.43104399999999998
	.quad	0x3fd53df2a9d627bf              # double 0.33190599999999998
	.quad	0x3fb546b26bf8769f              # double 0.083110000000000003
	.quad	0x3fe3e529bae46cfd              # double 0.62172400000000005
	.quad	0x3fe57a7eb6bf444e              # double 0.67120299999999999
	.quad	0x3fe62b1b36bd2b6f              # double 0.69276199999999999
	.quad	0x3fee4c2f837b4a23              # double 0.94679999999999997
	.quad	0x3f92df0d413122b8              # double 0.018429000000000001
	.quad	0x3fe2c8dc11e42e12              # double 0.58701899999999996
	.quad	0x3f789374bc6a7efa              # double 0.0060000000000000001
	.quad	0x3fd9534373f316e3              # double 0.39570699999999998
	.quad	0x3fa6f177a7008a69              # double 0.044810999999999997
	.quad	0x3fe01693c03bc4d2              # double 0.50275599999999998
	.quad	0x3feeba19008205ff              # double 0.96021699999999998
	.quad	0x3fb90ecb74ddf86e              # double 0.097881999999999996
	.quad	0x3f96f587d6f97679              # double 0.022421
	.quad	0x3fe25fb0d51f81a6              # double 0.57418100000000005
	.quad	0x3fdad506573215fd              # double 0.41925200000000001
	.quad	0x3fdef444e0daa0cb              # double 0.48365900000000001
	.quad	0x3fce81a1554fbdad              # double 0.23833099999999999
	.quad	0x3fed009d495182aa              # double 0.90632500000000005
	.quad	0x3fdb5e1c15097c81              # double 0.42761900000000003
	.quad	0x3fd93d35eb7457c1              # double 0.39436100000000002
	.quad	0x3fe993b7d84901d2              # double 0.79928200000000005
	.quad	0x3feaeca25529fe00              # double 0.84138599999999997
	.quad	0x3fed10ecb74ddf87              # double 0.90831600000000001
	.quad	0x3fa54ae429e0a41a              # double 0.041586999999999999
	.quad	0x3fe658793dd97f63              # double 0.69830000000000003
	.quad	0x3fe385ccc89b0ee5              # double 0.61008300000000004
	.quad	0x3fe606c6583e8577              # double 0.68832700000000002
	.quad	0x3fdf4894c447c30d              # double 0.48880499999999999
	.quad	0x3fd2d1cc100e6afd              # double 0.29405500000000001
	.quad	0x3feb791c4b90214b              # double 0.85853400000000002
	.quad	0x3fec3e2f7b17ce53              # double 0.88259100000000001
	.quad	0x3fc8fa1e3eaf6838              # double 0.195133
	.quad	0x3fda090f733a8a40              # double 0.40680300000000003
	.quad	0x3fe4c24c404a72eb              # double 0.64871800000000002
	.quad	0x3fc4ef4e0114d2f6              # double 0.163553
	.quad	0x3fe7c74107314ca9              # double 0.74307299999999998
	.quad	0x3fda425f202107b8              # double 0.41030100000000003
	.quad	0x3fdb67f4dbdf8f47              # double 0.42821999999999999
	.quad	0x3fe22af9a8cdea03              # double 0.56774599999999997
	.quad	0x3fd6abe27179bfdf              # double 0.35424099999999997
	.quad	0x3fdd1d81f10667f9              # double 0.454926
	.quad	0x3fb7ab53d640e9d5              # double 0.092457999999999999
	.quad	0x3febcd20afa2f05a              # double 0.86878999999999995
	.quad	0x3fefb00ffda4052d              # double 0.99024199999999995
	.quad	0x3fceb1c432ca57a8              # double 0.23980000000000001
	.quad	0x3fcab295e9e1b08a              # double 0.20857500000000001
	.quad	0x3fcf873ffac1d29e              # double 0.24631500000000001
	.quad	0x3f9068123810e886              # double 0.016022000000000002
	.quad	0x3fe5d1efb6dca07f              # double 0.68187699999999996
	.quad	0x3faf4e0114d2f5dc              # double 0.061142000000000002
	.quad	0x3fab10ba6266fd65              # double 0.052861999999999999
	.quad	0x3fea1cae21101b00              # double 0.81600099999999998
	.quad	0x3fdf16e371540032              # double 0.48577199999999998
	.quad	0x3fc89118c197e564              # double 0.19192799999999999
	.quad	0x3fe7eb2074ea8da8              # double 0.74745200000000001
	.quad	0x3fed6fa615a8deb1              # double 0.919879
	.quad	0x3fe2b517a46173b8              # double 0.58460599999999996
	.quad	0x3fdb0fe047d3d428              # double 0.422844
	.quad	0x3fdf319c5a3e39f7              # double 0.48740299999999998
	.quad	0x3fe104e831ad2136              # double 0.53184900000000002
	.quad	0x3fe4b3269df97aab              # double 0.64686900000000003
	.quad	0x3feb99524bfd2e94              # double 0.86246599999999995
	.quad	0x3fd8351deefe4ffd              # double 0.37824200000000002
	.quad	0x3f82f661f18c9fb6              # double 0.0092589999999999999
	.quad	0x3f8707182235b4ee              # double 0.011244000000000001
	.quad	0x3fd14bcad9ad85e0              # double 0.27025100000000002
	.quad	0x3fe973775b813016              # double 0.79534499999999997
	.quad	0x3fe2a5d6bebe1651              # double 0.58274400000000004
	.quad	0x3fc76ff3ade225fa              # double 0.18310399999999999
	.quad	0x3fe6b6544fe36d22              # double 0.70975699999999997
	.quad	0x3fe6a13a0c6b484d              # double 0.70718099999999995
	.quad	0x3fcc69728a611772              # double 0.221968
	.quad	0x3fe0fd47bedb7282              # double 0.530918
	.quad	0x3feac97d8cf398e9              # double 0.83709599999999995
	.quad	0x3fef618ac9f2fdb9              # double 0.980657
	.quad	0x3fef7c08fa7a8501              # double 0.98389099999999996
	.quad	0x3fdf83947496aad2              # double 0.49240600000000001
	.quad	0x3fe27ec7863beec4              # double 0.57797600000000005
	.quad	0x3fd987f88765ba6f              # double 0.398924
	.quad	0x3fdba087ca643cc0              # double 0.43167299999999997
	.quad	0x3fd91fc4c165907e              # double 0.39256400000000002
	.quad	0x3f8ced0b30b5aa71              # double 0.014123999999999999
	.quad	0x3fe87fbefd00713f              # double 0.765594
	.quad	0x3fd1e11dbca9691a              # double 0.27936499999999997
	.quad	0x3fa61975f2cb6417              # double 0.043163
	.quad	0x3fe56060fe47991c              # double 0.66801500000000003
	.quad	0x3f72839042d8c2a4              # double 0.0045199999999999997
	.quad	0x3fe65e2046c764ae              # double 0.69899
	.quad	0x3fe6334c5da6a444              # double 0.69376199999999999
	.quad	0x3fe9edd26b723ee2              # double 0.81028100000000003
	.quad	0x3fe506d938151a43              # double 0.65708599999999995
	.quad	0x3fd7572de43ed95a              # double 0.36469600000000002
	.quad	0x3fecdae81882adc5              # double 0.90172200000000002
	.quad	0x3fb6d7a56de3326a              # double 0.089228000000000001
	.quad	0x3fe7f572de43ed96              # double 0.74871200000000004
	.quad	0x3fe4847d3d4280ae              # double 0.64117299999999999
	.quad	0x3fd279af1886df83              # double 0.28867700000000002
	.quad	0x3fb900713f077ccc              # double 0.097662999999999999
	.quad	0x3fe7669057d1782d              # double 0.73126999999999998
	.quad	0x3fe6f46ed245b292              # double 0.71733800000000003
	.quad	0x3fe393b9f127f5e8              # double 0.61178299999999997
	.quad	0x3fe8c768dfbd6a59              # double 0.77434199999999997
	.quad	0x3fbb4b945308bb90              # double 0.10662199999999999
	.quad	0x3fe0a6b2f23033a4              # double 0.52034899999999995
	.quad	0x3fc6aa8eb463497b              # double 0.17707999999999999
	.quad	0x3fd282be8bc169c2              # double 0.28922999999999999
	.quad	0x3fdd9a415f45e0b5              # double 0.46254000000000001
	.quad	0x3fd72c59fb1e18f0              # double 0.36208200000000001
	.quad	0x3fb5556084a515cf              # double 0.083334000000000005
	.quad	0x3fe2650e779207d5              # double 0.57483600000000001
	.quad	0x3fe9922962cfd8f1              # double 0.79909200000000002
	.quad	0x3fee3a3a8e71476b              # double 0.944608
	.quad	0x3fa158fb43d89ce5              # double 0.033882000000000002
	.quad	0x3f95c13fd0d0678c              # double 0.021245
	.quad	0x3fd51697f1f9ad00              # double 0.32950400000000002
	.quad	0x3fe38e9d51b4fe7a              # double 0.61115900000000001
	.quad	0x3fe32e89eba6aca8              # double 0.59943100000000005
	.quad	0x3fcbd6a593a2df93              # double 0.21748799999999999
	.quad	0x3fcd09e12a51e322              # double 0.22686400000000001
	.quad	0x3feca7a85015c209              # double 0.89546599999999998
	.quad	0x3fd8cb923a29c77a              # double 0.38742500000000002
	.quad	0x3fa49906cca2db62              # double 0.040230000000000002
	.quad	0x3fe3c3ce2089e343              # double 0.61765199999999998
	.quad	0x3fe279b34a44c7b0              # double 0.57735599999999998
	.quad	0x3fbbf0cbaf965b21              # double 0.109143
	.quad	0x3fed22c881e4712e              # double 0.91049599999999997
	.quad	0x3fe31d2e0e30446b              # double 0.59731199999999995
	.quad	0x3fcb2e9ccb7d4174              # double 0.21235999999999999
	.quad	0x3fdbd97f62b6ae7d              # double 0.43514999999999998
	.quad	0x3fe0b476295208e1              # double 0.52202899999999997
	.quad	0x3fc2ce703afb7e91              # double 0.146925
	.quad	0x3fea5c55000c953a              # double 0.82377100000000003
	.quad	0x3fda5097c80841ee              # double 0.41116900000000001
	.quad	0x3fecc532a497fa5d              # double 0.89907199999999998
	.quad	0x3fd05faa8a82a561              # double 0.25583899999999998
	.quad	0x3fe7c9b1fab96f22              # double 0.743371
	.quad	0x3feddccc89b0ee4a              # double 0.933203
	.quad	0x3fdd60242d05f288              # double 0.45899299999999998
	.quad	0x3fdf9c17225b749b              # double 0.49390200000000001
	.quad	0x3fee51a21ea35936              # double 0.947465
	.quad	0x3fd7fe718a86d71f              # double 0.37490499999999999
	.quad	0x3fe3292e62131a8f              # double 0.598777
	.quad	0x3fdb569b17481b22              # double 0.42716100000000001
	.quad	0x3fd2d8cf398e9707              # double 0.29448299999999999
	.quad	0x3fc3ed9dfdac68a9              # double 0.15568899999999999
	.quad	0x3fe3aada33bd9cae              # double 0.61460599999999999
	.quad	0x3fe85f91600f3450              # double 0.76166599999999995
	.quad	0x3fe9b20d9945b6c3              # double 0.80298499999999995
	.quad	0x3fdd3ed959a30985              # double 0.45696100000000001
	.quad	0x3fca4f11b60ae968              # double 0.205538
	.quad	0x3fe732f01754b05b              # double 0.72496799999999995
	.quad	0x3feefa00e27e0efa              # double 0.96801800000000005
	.quad	0x3fc85e1c15097c81              # double 0.19037200000000001
	.quad	0x3fde1dffc5479d4e              # double 0.47058100000000003
	.quad	0x3f96e935b91f70df              # double 0.022374000000000002
	.quad	0x3fe2fd60e94ee393              # double 0.59343000000000001
	.quad	0x3fe6b810e8858ff7              # double 0.70996899999999996
	.quad	0x3fd750acc0bdcad1              # double 0.36429899999999998
	.quad	0x3fe1ce13f4a98aa8              # double 0.55640599999999996
	.quad	0x3fcfceb78897e996              # double 0.24849599999999999
	.quad	0x3fcc9e55c0fcb4f2              # double 0.223582
	.quad	0x3feab0941c8216c6              # double 0.83405499999999999
	.quad	0x3fbdb4677b395c42              # double 0.116034
	.quad	0x3fa0e9d51b4fe79f              # double 0.033034000000000001
	.quad	0x3fdcd5dc4007570c              # double 0.45055299999999998
	.quad	0x3fdbc53f39d1b2e6              # double 0.43391400000000002
	.quad	0x3fe36de33269df98              # double 0.60716400000000004
	.quad	0x3fb2e07e5a78f25a              # double 0.073737999999999998
	.quad	0x3fe0d9146e4c0df6              # double 0.52649900000000005
	.quad	0x3fdb2862f5989df1              # double 0.42433999999999999
	.quad	0x3fdae99a62ed3522              # double 0.42050799999999999
	.quad	0x3fea6cc5fbf83383              # double 0.82577800000000001
	.quad	0x3fe0897c80841ede              # double 0.51678299999999999
	.quad	0x3fec7281fd9ba1b2              # double 0.88897800000000005
	.quad	0x3fbd2ee84ad794a7              # double 0.113997
	.quad	0x3fecdadfb506dd6a              # double 0.90171800000000002
	.quad	0x3fdb68448cf7caa7              # double 0.42823899999999998
	.quad	0x3fe85579af1886e0              # double 0.76043400000000005
	.quad	0x3fda2e05ccc89b0f              # double 0.40905900000000001
	.quad	0x3fd100431bde82d8              # double 0.26564100000000002
	.quad	0x3fdf887229e90796              # double 0.492703
	.quad	0x3fee59ccfaeff5c7              # double 0.94846200000000003
	.quad	0x3febd5219a847b24              # double 0.86976699999999995
	.quad	0x3fe890bc7b45f17c              # double 0.76766800000000001
	.quad	0x3fee5b22d0e56042              # double 0.94862500000000005
	.quad	0x3fecb497b7414a4d              # double 0.89704499999999998
	.quad	0x3f759817b95a2941              # double 0.0052719999999999998
	.quad	0x3fe68d844d013a93              # double 0.70477500000000004
	.quad	0x3fbc2e770bd017db              # double 0.110084
	.quad	0x3fed9170d62bf120              # double 0.92400400000000004
	.quad	0x3fee59c6b0531983              # double 0.94845900000000005
	.quad	0x3fe8eb4c7f349386              # double 0.77872300000000005
	.quad	0x3fe0bccf28c79f66              # double 0.52304799999999996
	.quad	0x3fc03443d46b26c0              # double 0.12659500000000001
	.quad	0x3fe7f6cacd184c27              # double 0.74887599999999999
	.quad	0x3fea6a1c68ec52a4              # double 0.82545299999999999
	.quad	0x3fdd7c6fbd273d5c              # double 0.46072000000000002
	.quad	0x3fd8a8bd230b9dc3              # double 0.385299
	.quad	0x3fea8257c914b168              # double 0.82841100000000001
	.quad	0x3fe24fd2a62aa194              # double 0.57224399999999997
	.quad	0x3fd2db61bb05faec              # double 0.29464000000000001
	.quad	0x3fa262456f75d9a1              # double 0.035906
	.quad	0x3fe577143393ab43              # double 0.67078599999999999
	.quad	0x3fe465f5275ee99a              # double 0.63744599999999996
	.quad	0x3fec8d10f51ac9b0              # double 0.89222000000000001
	.quad	0x3fed123c42a66dbd              # double 0.90847599999999995
	.quad	0x3fee3220791c4b90              # double 0.94361899999999999
	.quad	0x3fae878fabda0dfe              # double 0.059628
	.quad	0x3fe6b0d306a2b170              # double 0.70908499999999997
	.quad	0x3fe73cbe61cffeb0              # double 0.72616499999999995
	.quad	0x3fd10096feb4a665              # double 0.26566099999999998
	.quad	0x3fe97210be9424e6              # double 0.79517400000000005
	.quad	0x3fd682e87d2c7b89              # double 0.35174
	.quad	0x3fd81f70de8f6cf0              # double 0.376919
	.quad	0x3fcd6909aed56b01              # double 0.229768
	.quad	0x3fde81beb18116ec              # double 0.47666900000000001
	.quad	0x3fd5979e16d6dc1a              # double 0.33737899999999998
	.quad	0x3f9cbfb15b573eab              # double 0.028074999999999999
	.quad	0x3fe96f5019f3c70d              # double 0.79483800000000004
	.quad	0x3fc0a4ca4f440af2              # double 0.13002900000000001
	.quad	0x3fd934117f84449e              # double 0.39380300000000001
	.quad	0x3fe8088509bf9c63              # double 0.75104000000000004
	.quad	0x3fafd6d7e889c1b5              # double 0.062185999999999998
	.quad	0x3fec8a4c1ebc83a9              # double 0.89188199999999995
	.quad	0x3fe1a41e57d9dba9              # double 0.551284
	.quad	0x3fcd04577d955715              # double 0.22669500000000001
	.quad	0x3fd9a12b5e529bae              # double 0.40046199999999998
	.quad	0x3fda6ac647778dd6              # double 0.412767
	.quad	0x3fec2b1f687b139d              # double 0.88026400000000005
	.quad	0x3fe5955d5f56a7ad              # double 0.67448300000000005
	.quad	0x3fe82d5bee3d5fdd              # double 0.75553700000000001
	.quad	0x3fbbc6da4484944f              # double 0.108503
	.quad	0x3fbb7867f0aa21a7              # double 0.107306
	.quad	0x3fc58fd5cb790fb6              # double 0.16845199999999999
	.quad	0x3feac3265add9c28              # double 0.83632200000000001
	.quad	0x3fdbc4b09e98dcdb              # double 0.43387999999999999
	.quad	0x3fe253d20f2becee              # double 0.57273200000000002
	.quad	0x3fea7f90d9d7774b              # double 0.82807200000000003
	.quad	0x3fe700a393ee5eee              # double 0.71882800000000002
	.quad	0x3fb6138fffbce421              # double 0.086235999999999993
	.quad	0x3fc5da16616b54e3              # double 0.17071800000000001
	.quad	0x3fdd8ea7ce0fc2ec              # double 0.46183200000000002
	.quad	0x3fef4ff21b3aeee9              # double 0.97850899999999996
	.quad	0x3fcae9bbf0dc768e              # double 0.210258
	.quad	0x3fe08d0247021d11              # double 0.51721300000000003
	.quad	0x3fda80f55de58e65              # double 0.41412100000000002
	.quad	0x3f8031055b899392              # double 0.0079059999999999998
	.quad	0x3fe7cfc3f811f4f5              # double 0.744112
	.quad	0x3fb58dcdb37c99af              # double 0.084195000000000006
	.quad	0x3fdfa6c5d206c871              # double 0.49455399999999999
	.quad	0x3fdf3aa369fcf3dc              # double 0.487954
	.quad	0x3fe3f8a4c1ebc83b              # double 0.62410200000000005
	.quad	0x3fe3e26916440f24              # double 0.62138800000000005
	.quad	0x3fd7aa715831f03d              # double 0.369778
	.quad	0x3fe4dcd4ed2cbea5              # double 0.65195700000000001
	.quad	0x3fec163779e9d0ea              # double 0.87771200000000005
	.quad	0x3fe49333b96af039              # double 0.64296900000000001
	.quad	0x3f9f5c28f5c28f5c              # double 0.030624999999999999
	.quad	0x3fd1d1c3ac929aa2              # double 0.27842800000000001
	.quad	0x3fcbe1198aeb80ed              # double 0.217807
	.quad	0x3fd8aca793576039              # double 0.38553799999999999
	.quad	0x3fe1818e757928e1              # double 0.54706500000000002
	.quad	0x3fd767cf1c3265ae              # double 0.36571100000000001
	.quad	0x3fe3c94f69ca9ef5              # double 0.61832399999999998
	.quad	0x3fc423315d701d9f              # double 0.15732399999999999
	.quad	0x3fec7c200c0f01fc              # double 0.89015200000000005
	.quad	0x3fc61b97353b4b30              # double 0.17271700000000001
	.quad	0x3fe361e0c5a8155d              # double 0.60569799999999996
	.quad	0x3fe7b356da0168b6              # double 0.74064200000000002
	.quad	0x3fe4298eda22f6a5              # double 0.63007299999999999
	.quad	0x3fee1c1f85d744f6              # double 0.94093300000000002
	.quad	0x3fe7be7afa722186              # double 0.74200200000000005
	.quad	0x3fbe931876188b11              # double 0.119432
	.quad	0x3fe72ead9274e22a              # double 0.72444799999999998
	.quad	0x3fed9abd1aa821f3              # double 0.92513900000000004
	.quad	0x3fb9974e65bea0ba              # double 0.099964999999999998
	.quad	0x3fe257a13c254a3c              # double 0.57319699999999996
	.quad	0x3fca77b395c42203              # double 0.20677799999999999
	.quad	0x3fde4f0d844d013b              # double 0.47357500000000002
	.quad	0x3fe695a4acf312b2              # double 0.70576700000000003
	.quad	0x3fe2e29f9ce8d973              # double 0.59016400000000002
	.quad	0x3fd56b00ffda4053              # double 0.33465600000000001
	.quad	0x3fabf0563ed0f627              # double 0.054567999999999998
	.quad	0x3f79dfdac68a936c              # double 0.0063169999999999997
	.quad	0x3f61f0c34c1a8ac6              # double 0.0021900000000000001
	.quad	0x3fab48f53c579f23              # double 0.053290999999999998
	.quad	0x3fb4dd1e53a81dc1              # double 0.081499000000000002
	.quad	0x3fee354195cc857f              # double 0.94400099999999998
	.quad	0x3fd817acc4ef88b9              # double 0.37644499999999997
	.quad	0x3fe9c916ca46e08f              # double 0.80579699999999999
	.quad	0x3fea1a415f45e0b5              # double 0.81570500000000001
	.quad	0x3fec07af20ea5b53              # double 0.87593799999999999
	.quad	0x3fe81c5e6ff7dfa0              # double 0.75346299999999999
	.quad	0x3fd4c27631b584b2              # double 0.32436900000000002
	.quad	0x3fd307dd44135547              # double 0.29735499999999998
	.quad	0x3fd1def8487b99d4              # double 0.27923399999999998
	.quad	0x3fa3d1ed9dfdac69              # double 0.038711000000000002
	.quad	0x3fc98ab0c88a47ed              # double 0.199545
	.quad	0x3fee272862f5989e              # double 0.94228000000000001
	.quad	0x3fcda743a647fdc6              # double 0.23166700000000001
	.quad	0x3fdc8e3ac0c62e4d              # double 0.44618099999999999
	.quad	0x3fcf1d25aab47410              # double 0.24307699999999999
	.quad	0x3fd2bbc2b94d9408              # double 0.29271000000000003
	.quad	0x3f865f5275ee99a6              # double 0.010924
	.quad	0x3fea95df6555c52e              # double 0.83079499999999995
	.quad	0x3fd81dfb9389b520              # double 0.37683
	.quad	0x3fe659b3d07c84b6              # double 0.69845000000000002
	.quad	0x3fd7bc947064ecea              # double 0.37088500000000002
	.quad	0x3fce93d102bc72e2              # double 0.23888599999999999
	.quad	0x3fe6ba08398a6549              # double 0.71020899999999998
	.quad	0x3fdefa00e27e0efa              # double 0.48400900000000002
	.quad	0x3fe1da9eb2074ea9              # double 0.55793700000000002
	.quad	0x3fe3ce0fc2eba27b              # double 0.61890400000000001
	.quad	0x3fd29ce8d972cd7d              # double 0.290827
	.quad	0x3fd8533b10774688              # double 0.38007999999999997
	.quad	0x3fc4065b63d3e4ef              # double 0.156444
	.quad	0x3fd752220bc382a1              # double 0.36438799999999999
	.quad	0x3f8163baba7b9171              # double 0.0084910000000000002
	.quad	0x3fedfba237cdcca7              # double 0.93696699999999999
	.quad	0x3fe818cc144028e5              # double 0.753027
	.quad	0x3fd4d26fa3fcc9eb              # double 0.32534400000000002
	.quad	0x3fcd2fa93af74cd3              # double 0.228017
	.quad	0x3fd195feda661284              # double 0.27478000000000002
	.quad	0x3fca7913e81450f0              # double 0.20682
	.quad	0x3fc2fdc1615ebfa9              # double 0.148369
	.quad	0x3fe8310ba6266fd6              # double 0.75598699999999996
	.quad	0x3feb8d25edd05293              # double 0.86097999999999997
	.quad	0x3fcb00c521dda05a              # double 0.21096100000000001
	.quad	0x3fd2f6512a94ff00              # double 0.29628399999999999
	.quad	0x3fe50b84988094e6              # double 0.65765600000000002
	.quad	0x3fe2aea52ef911cf              # double 0.58381899999999998
	.quad	0x3faf0153bd167664              # double 0.060557
	.quad	0x3fd1c49fd7a13c25              # double 0.27762599999999998
	.quad	0x3fe5165b20b8066c              # double 0.65897899999999998
	.quad	0x3febeed45e9185cf              # double 0.87290400000000001
	.quad	0x3fdec660a2014728              # double 0.48085800000000001
	.quad	0x3fdf52fc2656abde              # double 0.48943999999999999
	.quad	0x3fe708fa7a85015c              # double 0.71984599999999999
	.quad	0x3febb5781c714fce              # double 0.86590199999999995
	.quad	0x3fe663a7daa4fca4              # double 0.69966499999999998
	.quad	0x3feb5d7a99fa11a9              # double 0.85516099999999995
	.quad	0x3fbe4a38327674d1              # double 0.11831999999999999
	.quad	0x3feaf25a250f8402              # double 0.84208400000000005
	.quad	0x3fe514727dcbddba              # double 0.65874600000000005
	.quad	0x3fafbbd7b2031ceb              # double 0.06198
	.quad	0x3fe5c4156e264e48              # double 0.68018599999999996
	.quad	0x3fe7937d1fe64f55              # double 0.73675400000000002
	.quad	0x3fc9ff8a8f3a9b07              # double 0.20311100000000001
	.quad	0x3fcc0663c74fb54a              # double 0.218945
	.quad	0x3fa5f1bef49cf56f              # double 0.042860000000000002
	.quad	0x3fe329cfdd228566              # double 0.598854
	.quad	0x3fd4f3387160956c              # double 0.327345
	.quad	0x3fe9dfc3b4f61672              # double 0.80856499999999998
	.quad	0x3fe66353f7ced917              # double 0.69962500000000005
	.quad	0x3f88d60a63305101              # double 0.012127000000000001
	.quad	0x3fe0d65c2d278078              # double 0.52616700000000005
	.quad	0x3fcb2d98bf7f0670              # double 0.21232899999999999
	.quad	0x3fe77a69be09bb6b              # double 0.73369300000000004
	.quad	0x3fd2d944aa53fc01              # double 0.29451100000000002
	.quad	0x3fee6ff3ade225fa              # double 0.95116599999999996
	.quad	0x3fd254d61b2a27f2              # double 0.28642800000000002
	.quad	0x3fc4dab191dde376              # double 0.16292400000000001
	.quad	0x3fdbfbb517a46174              # double 0.43723800000000002
	.quad	0x3fdc7c3d68405b3a              # double 0.44508300000000001
	.quad	0x3fea24ce8101f31f              # double 0.81699299999999997
	.quad	0x3fc55454152b0a70              # double 0.16663600000000001
	.quad	0x3fe3916a8b8f14db              # double 0.61150099999999996
	.quad	0x3fe3ea78af3e468d              # double 0.62237200000000004
	.quad	0x3fe24d20afa2f05a              # double 0.57191499999999995
	.quad	0x3fc2c6583e8576cd              # double 0.146678
	.quad	0x3fd1d9274e22a2c2              # double 0.27887899999999999
	.quad	0x3fd66672fba01eef              # double 0.35000300000000001
	.quad	0x3fe53bf0dc768dfc              # double 0.66356700000000002
	.quad	0x3fe8e5c4eb56fb8f              # double 0.77804799999999996
	.quad	0x3fdd59f2ba9d1f60              # double 0.45861499999999999
	.quad	0x3fe790cd423d9232              # double 0.73642600000000003
	.quad	0x3fc75a5b9628cbd1              # double 0.182445
	.quad	0x3fea73f961804d98              # double 0.82665699999999998
	.quad	0x3f8215fcc1871e6d              # double 0.0088310000000000003
	.quad	0x3fbb25e56cd6c2f0              # double 0.106047
	.quad	0x3feb51611ba3ca75              # double 0.853684
	.quad	0x3fddec3547e06962              # double 0.46754200000000001
	.quad	0x3f904e1e71044f1a              # double 0.015923
	.quad	0x3fecdf99c38b04ab              # double 0.90229499999999996
	.quad	0x3f9b5aea3161a1dc              # double 0.026714000000000002
	.quad	0x3fe0406e19b90eaa              # double 0.50786500000000001
	.quad	0x3fef9a2403148777              # double 0.98756600000000005
	.quad	0x3fe94dfefbf401c5              # double 0.790771
	.quad	0x3fdf3fcc9ea9a3d3              # double 0.48826900000000001
	.quad	0x3fe4511be6e65387              # double 0.63490100000000005
	.quad	0x3fcf0d9d7774aba4              # double 0.24260300000000001
	.quad	0x3fe42a79bbadc098              # double 0.630185
	.quad	0x3fc16c0d6f544bb2              # double 0.13611000000000001
	.quad	0x3fe260bf5d78811b              # double 0.57430999999999999
	.quad	0x3fb9e4e69f05ea25              # double 0.101149
	.quad	0x3fe17824d4cb9ecf              # double 0.54591599999999996
	.quad	0x3fec4eb9a176ddad              # double 0.88461000000000001
	.quad	0x3fe41096bb98c7e3              # double 0.62702500000000005
	.quad	0x3fe5b6006d0d4995              # double 0.67846700000000004
	.quad	0x3fe158a548238540              # double 0.54207099999999997
	.quad	0x3fd0428d434a01ac              # double 0.25406200000000001
	.quad	0x3fe45b1a6d698fe7              # double 0.63612100000000005
	.quad	0x3fd0e2b8c75c4a84              # double 0.26383800000000002
	.quad	0x3fee381f969e3c97              # double 0.94435100000000005
	.quad	0x3fed1fb1e18efbb1              # double 0.91011900000000001
	.quad	0x3fe1a28134480629              # double 0.55108699999999999
	.quad	0x3fe731b9b66f9336              # double 0.72482000000000002
	.quad	0x3fed474b838c111b              # double 0.91495300000000002
	.quad	0x3fe5aca57a786c22              # double 0.67732499999999995
	.quad	0x3fe99b43526527a2              # double 0.800203
	.quad	0x3fa74ea8da7f3cf7              # double 0.045522
	.quad	0x3feb2aae297396d1              # double 0.84896000000000005
	.quad	0x3fdd9a0f0a5efe93              # double 0.46252799999999999
	.quad	0x3fee1795b35b0bbf              # double 0.94037899999999996
	.quad	0x3fdace0b912dba4d              # double 0.41882599999999998
	.quad	0x3fda24bba12b5e53              # double 0.40849200000000002
	.quad	0x3fed2fa0d77b7c78              # double 0.91206399999999999
	.quad	0x3fe0605ee568a505              # double 0.511764
	.quad	0x3feb70e4da09cc32              # double 0.85753100000000004
	.quad	0x3fd994a6eb91b3f2              # double 0.399698
	.quad	0x3fe1684ad794a6ec              # double 0.54398100000000005
	.quad	0x3febc1248d7e0264              # double 0.86732699999999995
	.quad	0x3fdd95feda661284              # double 0.46228000000000002
	.quad	0x3fcf2a737110e454              # double 0.243483
	.quad	0x3fee3f78bbd38045              # double 0.94524799999999998
	.quad	0x3fef9a0f0a5efe93              # double 0.98755599999999998
	.quad	0x3fef0489d27c3937              # double 0.96930400000000005
	.quad	0x3fe34295a6c5d207              # double 0.60187800000000002
	.quad	0x3fc3992428d434a0              # double 0.153111
	.quad	0x3fd60bd44998d046              # double 0.344472
	.quad	0x3fd59a133c1ce6c1              # double 0.33752900000000002
	.quad	0x3fd3645a1cac0831              # double 0.30299999999999999
	.quad	0x3fc994af4f0d844d              # double 0.19985
	.quad	0x3fe4093b7d84901d              # double 0.62612699999999999
	.quad	0x3fed2fdb8fde2ef5              # double 0.91209200000000001
	.quad	0x3fe65143bf727137              # double 0.69742000000000004
	.quad	0x3feb64f54d1e96c4              # double 0.856074
	.quad	0x3f9a4e7ab7564303              # double 0.025690000000000001
	.quad	0x3fefaf7f498c3b0c              # double 0.99017299999999996
	.quad	0x3fde9246bf01322f              # double 0.47767799999999999
	.quad	0x3fd42157689ca18c              # double 0.31453500000000001
	.quad	0x3fece679463cfb33              # double 0.90313399999999999
	.quad	0x3fc9d51b4fe79ee0              # double 0.201816
	.quad	0x3fde4b6e935b91f7              # double 0.473354
	.quad	0x3fdda73f748a1598              # double 0.46333299999999999
	.quad	0x3fe3809d495182aa              # double 0.60945000000000005
	.quad	0x3fdf3bafd976ff3b              # double 0.48801800000000001
	.quad	0x3fd8d8ba40d90e24              # double 0.38822800000000002
	.quad	0x3fe69a2403148777              # double 0.70631600000000005
	.quad	0x3fc470329802c0a5              # double 0.15967400000000001
	.quad	0x3fa6ec7c957cd467              # double 0.044773
	.quad	0x3fb268f4b61fe21e              # double 0.071914000000000006
	.quad	0x3fdd23c85c24c405              # double 0.45530900000000002
	.quad	0x3faf4d594f26aec0              # double 0.061136999999999997
	.quad	0x3fbb950b955f7836              # double 0.10774300000000001
	.quad	0x3fd20caa326e1156              # double 0.28202300000000002
	.quad	0x3fd66013660e51d2              # double 0.34961399999999998
	.quad	0x3fe9769ec2ce464a              # double 0.79573000000000005
	.quad	0x3f8e5c0b9991361e              # double 0.014824
	.quad	0x3fd8ce0fc2eba27b              # double 0.387577
	.quad	0x3fcec95bff04577e              # double 0.24052000000000001
	.quad	0x3fe9a4052d666a98              # double 0.80127199999999998
	.quad	0x3fc6c61d8622c450              # double 0.177921
	.quad	0x3fe960fc2eba27af              # double 0.79308900000000004
	.quad	0x3fd832bdc26dce3a              # double 0.37809700000000002
	.quad	0x3fe05dd6e04c0592              # double 0.51145499999999999
	.quad	0x3fe455b24e9c4546              # double 0.63546100000000005
	.quad	0x3fe56b9a176ddacf              # double 0.66938500000000001
	.quad	0x3fed8383ad9f0a1c              # double 0.92230400000000001
	.quad	0x3fe8719d66adb403              # double 0.76386900000000002
	.quad	0x3fc1e68a0d349be9              # double 0.139848
	.quad	0x3fc9bb62413db7f1              # double 0.20103099999999999
	.quad	0x3fe5c6c332f01755              # double 0.68051300000000003
	.quad	0x3fe9a1a93293d103              # double 0.80098400000000003
	.quad	0x3fc1ec1c1d6cf851              # double 0.140018
	.quad	0x3fe1bd0e12e83a11              # double 0.55432800000000004
	.quad	0x3fecf9a49c2c1b11              # double 0.905474
	.quad	0x3fde4944ed6fda83              # double 0.47322199999999998
	.quad	0x3fe1379fa97e132b              # double 0.53803999999999996
	.quad	0x3fd1cf52b90a7829              # double 0.278279
	.quad	0x3fecada33bd9cae2              # double 0.89619599999999999
	.quad	0x3fd04bad7d7c2ca1              # double 0.25461899999999998
	.quad	0x3fdbda87a072d1af              # double 0.43521300000000002
	.quad	0x3fb510f51ac9afe2              # double 0.082290000000000002
	.quad	0x3fe737ae5796bfcb              # double 0.72554700000000005
	.quad	0x3fd7e2da554b8bf0              # double 0.37322100000000002
	.quad	0x3f4dfb9389b52008              # double 9.1500000000000001E-4
	.quad	0x3fe56e264e48626f              # double 0.66969599999999996
	.quad	0x3fefa1511dffc548              # double 0.98844200000000004
	.quad	0x3fed9b97353b4b30              # double 0.92524300000000004
	.quad	0x3fec162ae4b01861              # double 0.87770599999999999
	.quad	0x3fc3e215336deb96              # double 0.155337
	.quad	0x3fe7fad080b673c5              # double 0.74936700000000001
	.quad	0x3fc849a133c1ce6c              # double 0.189747
	.quad	0x3fd3929aa1d755bd              # double 0.30582300000000001
	.quad	0x3fcb0bc7b45f17be              # double 0.21129700000000001
	.quad	0x3fd5b018611fd588              # double 0.33887299999999998
	.quad	0x3febfe0ce0b912dc              # double 0.87476200000000003
	.quad	0x3fe0a0b8066c2acc              # double 0.51961900000000005
	.quad	0x3fe794812be48a59              # double 0.73687800000000003
	.quad	0x3fd2cb3a2595bbbf              # double 0.29365400000000003
	.quad	0x3fe96cfc829cfdd2              # double 0.79455399999999998
	.quad	0x3fecd17614595358              # double 0.90056899999999995
	.quad	0x3fe49a671ef30a4e              # double 0.64384799999999998
	.quad	0x3fdb961c36976bc2              # double 0.431037
	.quad	0x3fef85a708ede54b              # double 0.98506499999999996
	.quad	0x3fda070fbeb9e493              # double 0.40668100000000001
	.quad	0x3febc9235f809918              # double 0.86830300000000005
	.quad	0x3f9fb19e731d2e0e              # double 0.030950999999999999
	.quad	0x3fdd3b6cbd987c63              # double 0.45675199999999999
	.quad	0x3fcf0e453d20f2bf              # double 0.24262300000000001
	.quad	0x3fd50f94c87980f5              # double 0.32907599999999998
	.quad	0x3febf9d4d834091c              # double 0.87424699999999999
	.quad	0x3fd279f23465625a              # double 0.28869299999999998
	.quad	0x3fe90c88a47ecfea              # double 0.78278000000000003
	.quad	0x3fe080ef1348b220              # double 0.51573899999999995
	.quad	0x3fddbdfd2630ec31              # double 0.464721
	.quad	0x3feb26aca7935760              # double 0.84847099999999997
	.quad	0x3fe9149e8815e397              # double 0.78376699999999999
	.quad	0x3fd7c4dec1c1d6d0              # double 0.37139100000000003
	.quad	0x3fabe61cffeb074a              # double 0.054489999999999997
	.quad	0x3fd913836a832b99              # double 0.391816
	.quad	0x3fdb1fab96f21f6d              # double 0.42380800000000002
	.quad	0x3fe0017dae81882b              # double 0.50018200000000002
	.quad	0x3fef22b1704ff434              # double 0.97298499999999998
	.quad	0x3fc16f4384ba0e84              # double 0.136208
	.quad	0x3f9dc8754f3775b8              # double 0.029085
	.quad	0x3faecb74ddf86e3b              # double 0.060145999999999998
	.quad	0x3fedb5daad601ffb              # double 0.92844899999999997
	.quad	0x3f8d4f15e7c8d196              # double 0.014311000000000001
	.quad	0x3fe867d77fae3609              # double 0.76267600000000002
	.quad	0x3fd6790fb65668c2              # double 0.35113899999999998
	.quad	0x3fbbc6b8b69552e3              # double 0.108501
	.quad	0x3fdbcdee34fc610f              # double 0.434444
	.quad	0x3fdaa2e7f6f4be83              # double 0.41619299999999998
	.quad	0x3feddd851654d61b              # double 0.93329099999999998
	.quad	0x3fc0797891e21533              # double 0.12870699999999999
	.quad	0x3fa3f78bbd380453              # double 0.038997999999999998
	.quad	0x3fe7976ddaceee0f              # double 0.73723499999999997
	.quad	0x3fca209aaa3ad18d              # double 0.20412
	.quad	0x3fdbf640639d5e4a              # double 0.43690499999999999
	.quad	0x3fdaeae9ee45c359              # double 0.42058800000000002
	.quad	0x3fd9864883fd5022              # double 0.39882099999999998
	.quad	0x3fdcf74cd31769a9              # double 0.452594
	.quad	0x3fec0ad688377186              # double 0.87632299999999996
	.quad	0x3fd136c15d2d01c1              # double 0.26896700000000001
	.quad	0x3fb0bf3bea91d9b2              # double 0.065418000000000004
	.quad	0x3fd0ee6b8305d95e              # double 0.26455200000000001
	.quad	0x3fd19ffd60e94ee4              # double 0.27539000000000002
	.quad	0x3fedeff9f87f023f              # double 0.93554400000000004
	.quad	0x3fdb08461f9f01b8              # double 0.42237999999999998
	.quad	0x3f74ad362e903644              # double 0.0050480000000000004
	.quad	0x3fec00ffda4052d6              # double 0.87512199999999996
	.quad	0x3fdb8b0d0edc3bd6              # double 0.43036200000000002
	.quad	0x3f839e279dd3bafe              # double 0.0095790000000000007
	.quad	0x3fc76f6512a94ff0              # double 0.183087
	.quad	0x3fe331876188b114              # double 0.599796
	.quad	0x3fd6c8b439581062              # double 0.35599999999999998
	.quad	0x3fc319f7f8ca8199              # double 0.14923
	.quad	0x3fe5584b1ab0856e              # double 0.66702799999999995
	.quad	0x3fe5af4491298890              # double 0.67764500000000005
	.quad	0x3fe4da7d24180d3d              # double 0.651671
	.quad	0x3fe92a7589efd86b              # double 0.78643300000000005
	.quad	0x3fe23037d63022dd              # double 0.56838599999999995
	.quad	0x3fca53868fd199bb              # double 0.205674
	.quad	0x3fe0d141a6937d20              # double 0.52554400000000001
	.quad	0x3fdd6fc158fb43d9              # double 0.45994600000000002
	.quad	0x3fcd8644523f67f5              # double 0.23066
	.quad	0x3fe98266772d5e07              # double 0.79716799999999999
	.quad	0x3fdebe0157eed45f              # double 0.48034700000000002
	.quad	0x3fdeaafbc1acde1a              # double 0.479186
	.quad	0x3fe564de3b8a19ca              # double 0.66856300000000002
	.quad	0x3fb55f676ea4228a              # double 0.083487000000000005
	.quad	0x3fdff666234a87e4              # double 0.49941400000000002
	.quad	0x3fc82089e34330d7              # double 0.18849299999999999
	.quad	0x3fdf69835158b828              # double 0.490815
	.quad	0x3fc052263d816acf              # double 0.12750700000000001
	.quad	0x3fe7e7e1fc08fa7b              # double 0.74705600000000005
	.quad	0x3fe9fcb4f1e4b44a              # double 0.81209799999999999
	.quad	0x3fcde8e60807357e              # double 0.23366999999999999
	.quad	0x3fee065300581494              # double 0.93827199999999999
	.quad	0x3fe57c5260f5e41d              # double 0.67142599999999997
	.quad	0x3fc1781c714fce74              # double 0.13647799999999999
	.quad	0x3fde56cd6c2efd44              # double 0.47404800000000002
	.quad	0x3fecb269df97aaac              # double 0.89677899999999999
	.quad	0x3fd53da2f8bdec5f              # double 0.33188699999999999
	.quad	0x3fe15549731098d4              # double 0.54166099999999995
	.quad	0x3fe2227f1b691212              # double 0.56671099999999996
	.quad	0x3fe0a8a6117720c9              # double 0.52058700000000002
	.quad	0x3fead75e2046c765              # double 0.83879000000000004
	.quad	0x3fe4465a57646ae4              # double 0.63358800000000004
	.quad	0x3fe27ad2999567dc              # double 0.57749300000000003
	.quad	0x3fc8cf4a558ea7ce              # double 0.193826
	.quad	0x3fda2fe3f359ff50              # double 0.40917300000000001
	.quad	0x3fe5be7afa722186              # double 0.67950200000000005
	.quad	0x3fd295b35b0bbf51              # double 0.29038700000000001
	.quad	0x3febcee9dd7ecbb8              # double 0.869008
	.quad	0x3fe8325b317efe0d              # double 0.75614700000000001
	.quad	0x3feecbb1af3a14cf              # double 0.96236500000000002
	.quad	0x3fed74cd31769a91              # double 0.92050799999999999
	.quad	0x3fd559b8023a6ce3              # double 0.33360099999999998
	.quad	0x3fc4264e48626f61              # double 0.157419
	.quad	0x3fe274fd6d7e889c              # double 0.57678099999999999
	.quad	0x3fe3ffc32ebe596d              # double 0.62497100000000005
	.quad	0x3fe0ccc25072085b              # double 0.52499499999999999
	.quad	0x3fe9fd5cb790fb65              # double 0.81217799999999996
	.quad	0x3fc5121ab4b72c52              # double 0.16461500000000001
	.quad	0x3f625dd095af294e              # double 0.0022420000000000001
	.quad	0x3fd07fed20296b33              # double 0.25780799999999998
	.quad	0x3febddc4007570c5              # double 0.87082099999999996
	.quad	0x3fd73dc054ef459e              # double 0.36314400000000002
	.quad	0x3fe1520296b3354c              # double 0.54126099999999999
	.quad	0x3fe8c868b9fdbd30              # double 0.77446400000000004
	.quad	0x3fde80b242070b8d              # double 0.476605
	.quad	0x3fecfe586013660e              # double 0.90604799999999996
	.quad	0x3fd682f0e0a84be4              # double 0.351742
	.quad	0x3fe67acc4ef88b97              # double 0.70248999999999995
	.quad	0x3fe47c45cbbc2b95              # double 0.64017000000000002
	.quad	0x3fd49a52263d816b              # double 0.32191900000000001
	.quad	0x3fd80a63305100a4              # double 0.37563400000000002
	.quad	0x3fe1d479d4d83409              # double 0.55718699999999999
	.quad	0x3fe33573eab367a1              # double 0.600275
	.quad	0x3feaa2f2734f82f5              # double 0.83239099999999999
	.quad	0x3fdb9baa1511dffc              # double 0.43137599999999998
	.quad	0x3f9471b4784230fd              # double 0.019965
	.quad	0x3fec78f25a250f84              # double 0.88976399999999999
	.quad	0x3fed5e6bc621b7e1              # double 0.91777600000000004
	.quad	0x3fed56cf850df15a              # double 0.91684699999999997
	.quad	0x3fd504f2ae07e5a8              # double 0.32842700000000002
	.quad	0x3fc8679cc74b838c              # double 0.190662
	.quad	0x3fea7318fc504817              # double 0.82655000000000001
	.quad	0x3fdebcf0b6b6e0d2              # double 0.48028199999999999
	.quad	0x3fe8f4a558ea7ce1              # double 0.779864
	.quad	0x3fe943a647fdc593              # double 0.78950799999999999
	.quad	0x3fcad76ab5807fed              # double 0.209699
	.quad	0x3fca08e9b38d60a6              # double 0.20339699999999999
	.quad	0x3fed26266fd651b1              # double 0.91090700000000002
	.quad	0x3fee11afc04c8bca              # double 0.93965900000000002
	.quad	0x3fdab1c432ca57a8              # double 0.41710000000000003
	.quad	0x3fed70b49e01de27              # double 0.92000800000000005
	.quad	0x3fb782a12f901084              # double 0.091837000000000002
	.quad	0x3f947991bc558644              # double 0.019994999999999999
	.quad	0x3fcbdbec2480e8c9              # double 0.21764900000000001
	.quad	0x3fec9de481f53826              # double 0.89427400000000001
	.quad	0x3fec554fbdad7519              # double 0.88541400000000003
	.quad	0x3fe17fed20296b33              # double 0.54686599999999996
	.quad	0x3fd09d51b4fe79ee              # double 0.259602
	.quad	0x3fd82b020c49ba5e              # double 0.37762499999999999
	.quad	0x3fe8fe0ef99806f2              # double 0.78101299999999996
	.quad	0x3fe0118c197e5647              # double 0.50214199999999998
	.quad	0x3f84ac29bf162ae5              # double 0.010094000000000001
	.quad	0x3febb486f049a997              # double 0.86578699999999997
	.quad	0x3fba72a7bd48cb4b              # double 0.103312
	.quad	0x3fe5ce0b912dba4d              # double 0.68140199999999995
	.quad	0x3fe9645803cd141a              # double 0.79349899999999995
	.quad	0x3fea78cc9a77e5eb              # double 0.82724600000000004
	.quad	0x3f94a72ead9274e2              # double 0.020168999999999999
	.quad	0x3fc01ed5ae1cde5d              # double 0.125941
	.quad	0x3fd61101b003686a              # double 0.34478799999999998
	.quad	0x3fdc74d1633482bf              # double 0.44463000000000003
	.quad	0x3fe6ef5ec80c73ac              # double 0.71672000000000002
	.quad	0x3fd62c16df3f9618              # double 0.346441
	.quad	0x3feb9ed3953dea46              # double 0.86313799999999996
	.quad	0x3fd030d73860999e              # double 0.25298100000000001
	.quad	0x3fd71b0468448cf8              # double 0.36102400000000001
	.quad	0x3fef8f0e90bc7b46              # double 0.98621300000000001
	.quad	0x3fbc102ff8ec0f88              # double 0.109622
	.quad	0x3f987ebf22c01e69              # double 0.023921000000000001
	.quad	0x3fdaa5870da5daf0              # double 0.41635299999999997
	.quad	0x3fe778d92fb19e73              # double 0.73350199999999999
	.quad	0x3feb19bf5946c333              # double 0.84689300000000001
	.quad	0x3fe33b1af3a14cec              # double 0.60096499999999997
	.quad	0x3f9ac0c62e4d1a65              # double 0.026126
	.quad	0x3feee7967caea748              # double 0.96577000000000001
	.quad	0x3fe00d60a6330510              # double 0.501633
	.quad	0x3fd1d0247021d10b              # double 0.27832899999999999
	.quad	0x3fee78e5c4eb56fc              # double 0.95225800000000004
	.quad	0x3fdd641f644955b4              # double 0.45923599999999998
	.quad	0x3fe5352007dd4413              # double 0.66273499999999996
	.quad	0x3fe94fb1183b6028              # double 0.79097799999999996
	.quad	0x3fd2542e557de0d6              # double 0.28638799999999998
	.quad	0x3fe48b1572580c31              # double 0.64197800000000005
	.quad	0x3fdc7abfb9bed30f              # double 0.444992
	.quad	0x3fe1338f7985271c              # double 0.53754400000000002
	.quad	0x3fde4c37e6f71a7e              # double 0.47340199999999999
	.quad	0x3fe4dec80c73abc9              # double 0.65219499999999997
	.quad	0x3fe686013660e51d              # double 0.70385799999999998
	.quad	0x3fe0700474d9c6b0              # double 0.51367399999999996
	.quad	0x3fd2985f06f69446              # double 0.29054999999999997
	.quad	0x3fdd06a2b1704ff4              # double 0.45352999999999999
	.quad	0x3fefdd3dc8b86b16              # double 0.995757
	.quad	0x3fe43e553ac4f7ec              # double 0.63260899999999998
	.quad	0x3fe57cf1c3265ade              # double 0.67150200000000004
	.quad	0x3fe579df548ecd8e              # double 0.67112700000000003
	.quad	0x3fec36b4c7f34938              # double 0.88167799999999996
	.quad	0x3fb663f9a49c2c1b              # double 0.087462999999999999
	.quad	0x3fe5beb9e492bc30              # double 0.67953200000000002
	.quad	0x3fd361522a6f3f53              # double 0.302815
	.quad	0x3fcfeed45e9185cf              # double 0.249476
	.quad	0x3fe959ec7000431c              # double 0.79222700000000001
	.quad	0x3fda12e83a109d06              # double 0.40740399999999999
	.quad	0x3fe0752da98676a7              # double 0.51430399999999998
	.quad	0x3f9fa54c55432874              # double 0.030904000000000001
	.quad	0x3fd9bf65dbfceb79              # double 0.40230700000000003
	.quad	0x3fe88fd3b29a1ba0              # double 0.76755700000000004
	.quad	0x3fe8ac3eb7cbb3c8              # double 0.77102599999999999
	.quad	0x3fb2bde3fbbd7b20              # double 0.073209999999999997
	.quad	0x3fcd3c46d82ba5a0              # double 0.22840199999999999
	.quad	0x3fea8aeb80ecfa6a              # double 0.82945800000000003
	.quad	0x3fe1485a0be51090              # double 0.54008199999999995
	.quad	0x3fe678e1932d6ece              # double 0.70225599999999999
	.quad	0x3fe5289dadfb506e              # double 0.66120800000000002
	.quad	0x3fd8fe21d96e9bbf              # double 0.390511
	.quad	0x3fb62f05a708ede5              # double 0.086654999999999996
	.quad	0x3fe421187e7c06e2              # double 0.62904000000000004
	.quad	0x3fd7d45e9185cee1              # double 0.37233699999999997
	.quad	0x3fe2f548ecd8dbcf              # double 0.59244200000000002
	.quad	0x3fd1e8f6cefed634              # double 0.27984399999999998
	.quad	0x3fcd53e707e175d1              # double 0.22912299999999999
	.quad	0x3fdd2036006d0d4a              # double 0.45509100000000002
	.quad	0x3fe32958537e2c56              # double 0.59879700000000002
	.quad	0x3feb4b9cb6848beb              # double 0.85297999999999996
	.quad	0x3fc93461309c7ffe              # double 0.196911
	.quad	0x3fe9bb3a68b19a41              # double 0.80410499999999996
	.quad	0x3fb838f36694898f              # double 0.094618999999999995
	.quad	0x3fbf9e59f2ba9d1f              # double 0.12350999999999999
	.quad	0x3fdc2580c308feac              # double 0.43978899999999999
	.quad	0x3fe79fcb0c026cc2              # double 0.73825600000000002
	.quad	0x3fc5a2834d26fa40              # double 0.16902200000000001
	.quad	0x3f57efe0ce0b912e              # double 0.0014610000000000001
	.quad	0x3fcfa1d323fee2ca              # double 0.24712600000000001
	.quad	0x3fc70e6f2e8c0486              # double 0.18012800000000001
	.quad	0x3fd07d566cf41f21              # double 0.25764999999999999
	.quad	0x3fe4751efb6dca08              # double 0.639297
	.quad	0x3fc48893b7d84902              # double 0.16041800000000001
	.quad	0x3fe1be2f7b17ce53              # double 0.55446600000000001
	.quad	0x3fd90b49e01de269              # double 0.391314
	.quad	0x3fee10c0ad03d9a9              # double 0.93954499999999996
	.quad	0x3fdd9c99285a921d              # double 0.46268300000000001
	.quad	0x3fea970d62bf11f9              # double 0.83093899999999998
	.quad	0x3fe7de3da2f8bdec              # double 0.74587899999999996
	.quad	0x3febb3dd11be6e65              # double 0.86570599999999998
	.quad	0x3fb3de1e2de87097              # double 0.077607999999999996
	.quad	0x3fb283e425aee632              # double 0.072325
	.quad	0x3fc8d3e0bd44998d              # double 0.193966
	.quad	0x3fa8ca1cef240faa              # double 0.048417000000000002
	.quad	0x3fde2d5171e29b6b              # double 0.47151599999999999
	.quad	0x3fde76683c297bfa              # double 0.47597699999999998
	.quad	0x3feaaa369fcf3dc0              # double 0.83327799999999996
	.quad	0x3fe2dd590c0ad03e              # double 0.58952000000000004
	.quad	0x3fce74d1633482bf              # double 0.23794000000000001
	.quad	0x3fea7646ae3a3a8e              # double 0.82693799999999995
	.quad	0x3fe140fa9c12f09e              # double 0.53918200000000005
	.quad	0x3fdadf9bdc69f8c2              # double 0.41989799999999999
	.quad	0x3fd268a0d349be90              # double 0.287636
	.quad	0x3fd4108c3f3e0371              # double 0.31351000000000001
	.quad	0x3fdeeaab042528ae              # double 0.48307299999999997
	.quad	0x3fd3f28848387df6              # double 0.31167800000000001
	.quad	0x3fe4dd22856605ee              # double 0.65199399999999996
	.quad	0x3fde6ec17ebaf102              # double 0.47550999999999999
	.quad	0x3fef2d44dca8e2e3              # double 0.97427600000000003
	.quad	0x3fecb54c122749f1              # double 0.89713100000000001
	.quad	0x3fc4fd6d7e889c1b              # double 0.16398399999999999
	.quad	0x3fcd65c2d2780779              # double 0.22966800000000001
	.quad	0x3fbc9310129cbab6              # double 0.111619
	.quad	0x3fe7b4b72c5197a2              # double 0.74080999999999997
	.quad	0x3fdeb76b3bb83cf3              # double 0.47994500000000001
	.quad	0x3fd514df8b157258              # double 0.329399
	.quad	0x3feb6d17c5ef62fa              # double 0.85706700000000002
	.quad	0x3fec12ad81adea89              # double 0.87727999999999995
	.quad	0x3fe1d0a88effe2a4              # double 0.55672100000000002
	.quad	0x3fe7774eebf65dc0              # double 0.73331400000000002
	.quad	0x3feff21f6cacd185              # double 0.99830600000000002
	.quad	0x3fe167afa7221859              # double 0.54390700000000003
	.quad	0x3fe123e186983516              # double 0.53563000000000005
	.quad	0x3fd77d6b65a9a805              # double 0.36703000000000002
	.quad	0x3fea77c88e79aae7              # double 0.82712200000000002
	.quad	0x3fba65061416377a              # double 0.103104
	.quad	0x3fde5410f94c8798              # double 0.473881
	.quad	0x3fec972abef06b38              # double 0.89345300000000005
	.quad	0x3fd1f5e41d4b6a62              # double 0.28063300000000002
	.quad	0x3f63964a59c065b6              # double 0.0023909999999999999
	.quad	0x3fdff202107b7846              # double 0.49914599999999998
	.quad	0x3fe46974a3400b89              # double 0.63787300000000002
	.quad	0x3fd7f8ad25679896              # double 0.37455300000000002
	.quad	0x3fd1252ce032db1f              # double 0.26789400000000002
	.quad	0x3fe1b81733226c3c              # double 0.55372200000000005
	.quad	0x3fe06ef1bac2df0d              # double 0.51354299999999997
	.quad	0x3fc152d234eb9a17              # double 0.13533999999999999
	.quad	0x3fbe5f202107b784              # double 0.11863899999999999
	.quad	0x3fee00fba8826aa9              # double 0.93762000000000001
	.quad	0x3fe094c447c30d30              # double 0.51815999999999995
	.quad	0x3fc0edcc20d5629e              # double 0.13225700000000001
	.quad	0x3fc9805e5f30e7ff              # double 0.19922999999999999
	.quad	0x3fe3fc158fb43d8a              # double 0.62452200000000002
	.quad	0x3fe583c297bfa4c6              # double 0.67233399999999999
	.quad	0x3fee4b4d056c508b              # double 0.94669199999999998
	.quad	0x3fe3e8858ff75968              # double 0.62213399999999996
	.quad	0x3fdc6ba493c89f41              # double 0.44407000000000002
	.quad	0x3fdb56084a515cea              # double 0.42712600000000001
	.quad	0x3fd47a17f4128bf4              # double 0.31995200000000001
	.quad	0x3fef40852b4d8ba4              # double 0.97662599999999999
	.quad	0x3fd09d16fc9bc771              # double 0.25958799999999999
	.quad	0x3fee52a1f8e3ac0c              # double 0.94758699999999995
	.quad	0x3fbfe2f7b17ce52e              # double 0.124557
	.quad	0x3fe05f47f993d534              # double 0.51163099999999995
	.quad	0x3fe090129cbab64a              # double 0.51758700000000002
	.quad	0x3fd4c13b9f127f5f              # double 0.32429400000000003
	.quad	0x3fe3a62888b545c8              # double 0.61403300000000005
	.quad	0x3fd5fe60c38f3669              # double 0.34365099999999998
	.quad	0x3fb55c63ae2541d9              # double 0.083441000000000001
	.quad	0x3fb8abe6a337a80d              # double 0.096373
	.quad	0x3fc055000c9539b9              # double 0.12759400000000001
	.quad	0x3fd5598e10cf5b1d              # double 0.33359100000000003
	.quad	0x3fcd20c8cd63cb81              # double 0.22756299999999999
	.quad	0x3fe9eeac8605681f              # double 0.81038500000000002
	.quad	0x3fcc8919ef954eb1              # double 0.22293399999999999
	.quad	0x3fc68c79f666234b              # double 0.17616200000000001
	.quad	0x3fd55c422036006d              # double 0.333756
	.quad	0x3fe7e3e4abe6a338              # double 0.74656900000000004
	.quad	0x3fe84ef240fa9c13              # double 0.75963700000000001
	.quad	0x3fe03d8e0008637c              # double 0.50751400000000002
	.quad	0x3fe323e186983516              # double 0.59813000000000005
	.quad	0x3fd255e28aa43351              # double 0.28649200000000002
	.quad	0x3fef8dcfcc5b8dc5              # double 0.98606099999999996
	.quad	0x3fcbb38d60a63305              # double 0.216417
	.quad	0x3fd5e97d06bbdbe4              # double 0.34237600000000001
	.quad	0x3fe301ecd4aa10e0              # double 0.59398499999999999
	.quad	0x3fc8f66a55087011              # double 0.19502
	.quad	0x3fe11c1f85d744f6              # double 0.53468300000000002
	.quad	0x3fe51a543f1c7582              # double 0.65946400000000005
	.quad	0x3fb63608d08919f0              # double 0.086762000000000005
	.quad	0x3fcf0a350d2806af              # double 0.24249899999999999
	.quad	0x3fef294141e9af5c              # double 0.97378600000000004
	.quad	0x3fe8da8155d5f56a              # double 0.77667299999999995
	.quad	0x3f8f8c21e1d2178f              # double 0.015403999999999999
	.quad	0x3f534ce3de6149c7              # double 0.001178
	.quad	0x3fe7fc610f0e90bc              # double 0.74955799999999994
	.quad	0x3fdf6a550870110a              # double 0.490865
	.quad	0x3fc344c37e6f71a8              # double 0.150536
	.quad	0x3fc06db50f40e5a3              # double 0.12834799999999999
	.quad	0x3fe4aeb3dd11be6e              # double 0.64632599999999996
	.quad	0x3fd697a67a52ac75              # double 0.35300599999999999
	.quad	0x3fb1c13fd0d0678c              # double 0.069355
	.quad	0x3fac3504c48adeec              # double 0.055092000000000002
	.quad	0x3fe2acf7446f9b99              # double 0.58361399999999997
	.quad	0x3fc607a28bb0a2cb              # double 0.17210800000000001
	.quad	0x3fe8976ff3ade226              # double 0.768486
	.quad	0x3fe46154434e336a              # double 0.63688100000000003
	.quad	0x3fec8db0574b4070              # double 0.89229599999999998
	.quad	0x3fa5666a98244e94              # double 0.041797000000000001
	.quad	0x3fdc33e35c5b4aa9              # double 0.44066699999999998
	.quad	0x3fdbc3265add9c28              # double 0.433786
	.quad	0x3fd0c219eb6390c9              # double 0.261847
	.quad	0x3fd5fa7a85015c21              # double 0.34341300000000002
	.quad	0x3fc5350092ccf6be              # double 0.16567999999999999
	.quad	0x3fe8dac68a936c59              # double 0.77670600000000001
	.quad	0x3fea5f5ad96a6a01              # double 0.82413999999999998
	.quad	0x3fd446d82ba5a038              # double 0.31682399999999999
	.quad	0x3fe0a85a921ccd96              # double 0.52055099999999999
	.quad	0x3fd1c8d9f90539fc              # double 0.27788400000000002
	.quad	0x3fde6bd6e8af8162              # double 0.47533199999999998
	.quad	0x3fe0db63d3e4ef03              # double 0.52678100000000005
	.quad	0x3fe7f00ef1348b22              # double 0.748054
	.quad	0x3fe504f09528f191              # double 0.65685300000000002
	.quad	0x3fe5ce618ce2d1f2              # double 0.68144300000000002
	.quad	0x3fdafe1975f2cb64              # double 0.421759
	.quad	0x3fbed16b97fe8ee7              # double 0.120383
	.quad	0x3fe5867f0aa21a72              # double 0.67266800000000004
	.quad	0x3fd1eee525892685              # double 0.28020600000000001
	.quad	0x3fb0b07d0aed99cc              # double 0.065193000000000001
	.quad	0x3fe9ffe8ee6b8306              # double 0.81248900000000002
	.quad	0x3fe5c9107faa044b              # double 0.68079400000000001
	.quad	0x3fe2e04c05921038              # double 0.58987999999999996
	.quad	0x3fd6c426351deefe              # double 0.35572199999999998
	.quad	0x3fd01d92b7fe08af              # double 0.251805
	.quad	0x3fe8ec7863beec39              # double 0.77886599999999995
	.quad	0x3fba3e4abe6a337b              # double 0.10251300000000001
	.quad	0x3fe7ebfa8f7db6e5              # double 0.747556
	.quad	0x3fa11a11233df2aa              # double 0.033402000000000001
	.quad	0x3fb5015c209246bf              # double 0.082052
	.quad	0x3fe8b6deb95e5aff              # double 0.77232299999999998
	.quad	0x3fe97485e3da2f8c              # double 0.79547400000000001
	.quad	0x3fed24c1ebc83a97              # double 0.91073700000000002
	.quad	0x3fba0ef99806f263              # double 0.10179100000000001
	.quad	0x3fe2dbf26f1dc50d              # double 0.58934900000000001
	.quad	0x3fe5f4ddf86e3b47              # double 0.686141
	.quad	0x3fe058c6d612c6ac              # double 0.51083699999999999
	.quad	0x3fe728262456f75e              # double 0.72365100000000004
	.quad	0x3fe7f9a8cdea033e              # double 0.74922599999999995
	.quad	0x3fef2756861e9292              # double 0.97355199999999997
	.quad	0x3fecd9e1f3a57eaa              # double 0.90159699999999998
	.quad	0x3fcdd7cb2d905c03              # double 0.23314799999999999
	.quad	0x3fb67f0aa21a719b              # double 0.087875999999999996
	.quad	0x3fe6d8e0008637bd              # double 0.713974
	.quad	0x3fef8372e6a76966              # double 0.984796
	.quad	0x3fe8f928e0c9d9d3              # double 0.78041499999999997
	.quad	0x3fb201abd1aa821f              # double 0.070337999999999998
	.quad	0x3fc28576cce5f740              # double 0.14469799999999999
	.quad	0x3fdf333764f11b61              # double 0.48750100000000002
	.quad	0x3fdcba0620ab7132              # double 0.44885399999999998
	.quad	0x3fe1a9f9ce8d972d              # double 0.55199900000000002
	.quad	0x3fb47a072d1aeb3e              # double 0.079987000000000002
	.quad	0x3fe783c4b09e98dd              # double 0.73483500000000002
	.quad	0x3fe1405f6ba0620b              # double 0.53910800000000003
	.quad	0x3fbde6362a5e785b              # double 0.116794
	.quad	0x3fdadf761cbccf29              # double 0.41988900000000001
	.quad	0x3fc2539756c93a71              # double 0.143176
	.quad	0x3fd213b18dac258d              # double 0.28245199999999998
	.quad	0x3fe641c1d6cf850e              # double 0.69552700000000001
	.quad	0x3fd609e55c0fcb4f              # double 0.34435399999999999
	.quad	0x3fe606af46aa087d              # double 0.68831600000000004
	.quad	0x3fdc9dbec2480e8d              # double 0.44712800000000003
	.quad	0x3fc2ded288ce703b              # double 0.147425
	.quad	0x3fd9f498c3b0c459              # double 0.40555400000000003
	.quad	0x3fde38194c016052              # double 0.47217399999999998
	.quad	0x3fd92c98e53eb39a              # double 0.393347
	.quad	0x3fd3c9107faa044b              # double 0.30914700000000001
	.quad	0x3fe0bfd933e35c5b              # double 0.52341899999999997
	.quad	0x3fd194a2b9d3cbc5              # double 0.27469700000000002
	.quad	0x3fe405d52c16df40              # double 0.62571200000000005
	.quad	0x3fd8b2314013ec46              # double 0.385876
	.quad	0x3fb2bb44e50c5eb3              # double 0.073169999999999999
	.quad	0x3feee7a743a647fe              # double 0.96577800000000003
	.quad	0x3feacdcebfec13ba              # double 0.83762300000000001
	.quad	0x3fe137e90ff97247              # double 0.53807499999999997
	.quad	0x3fd60bd44998d046              # double 0.344472
	.quad	0x3fe739ffd60e94ee              # double 0.72582999999999998
	.quad	0x3fd1157abb8800eb              # double 0.26693600000000001
	.quad	0x3f9a4acf312b1b37              # double 0.025676000000000001
	.quad	0x3fe02756861e9292              # double 0.50480199999999997
	.quad	0x3fed27ae9ab29e4d              # double 0.91109399999999996
	.quad	0x3fa55fbb517a4617              # double 0.041745999999999998
	.quad	0x3feb7e08aefb2aae              # double 0.85913499999999998
	.quad	0x3fba5daf07bfe7e2              # double 0.102992
	.quad	0x3fe4db1a6d698fe7              # double 0.65174600000000005
	.quad	0x3fef39cd8127b2cc              # double 0.97580599999999995
	.quad	0x3fe44bb5e0f7fcfc              # double 0.63424199999999997
	.quad	0x3f896af038e29f9d              # double 0.012411
	.quad	0x3fe6af294dd72368              # double 0.70888200000000001
	.quad	0x3fea68d759ee88df              # double 0.82529799999999998
	.quad	0x3fe0733226c3b928              # double 0.51406200000000002
	.quad	0x3fe55698fe69270b              # double 0.666821
	.quad	0x3fe9c3b4f6167232              # double 0.80513999999999997
	.quad	0x3fe1b4cc25072086              # double 0.55332000000000003
	.quad	0x3fcbf865d7cb2d90              # double 0.21851799999999999
	.quad	0x3fe58c75c4a83b1d              # double 0.67339599999999999
	.quad	0x3fc7beb9e492bc30              # double 0.18550800000000001
	.quad	0x3fefdee78183f91e              # double 0.99595999999999996
	.quad	0x3feb6a4ebdd334c6              # double 0.85672700000000002
	.quad	0x3fe501c4fc1df330              # double 0.65646599999999999
	.quad	0x3fef370ac3a860dd              # double 0.97546900000000003
	.quad	0x3fe43fa8f7db6e50              # double 0.63277099999999997
	.quad	0x3fe46e6d9be4cd75              # double 0.63848000000000005
	.quad	0x3fe1572ffd1dcd70              # double 0.54189299999999996
	.quad	0x3fd4cc74b838c112              # double 0.32497900000000002
	.quad	0x3fe288bb906466b2              # double 0.57919100000000001
	.quad	0x3febb584b1ab0857              # double 0.86590800000000001
	.quad	0x3fd844b2b777d0f2              # double 0.379193
	.quad	0x3fd4814d72799a20              # double 0.32039200000000001
	.quad	0x3fece74299d883ba              # double 0.90322999999999998
	.quad	0x3fc3d16fc9bc7714              # double 0.15482899999999999
	.quad	0x3faf442c7fbacb43              # double 0.061067000000000003
	.quad	0x3fe6bd640e9d51b5              # double 0.710619
	.quad	0x3fd00a02b841248d              # double 0.25061099999999997
	.quad	0x3fb556e264e48627              # double 0.083357000000000001
	.quad	0x3fe2f54b05b7cfe6              # double 0.59244300000000005
	.quad	0x3fdb4d0dcfcc5b8e              # double 0.42657800000000001
	.quad	0x3fec1eba6aca7935              # double 0.87875099999999995
	.quad	0x3fc44fb97bb73083              # double 0.15868299999999999
	.quad	0x3fdf2acfb762d83c              # double 0.48698799999999998
	.quad	0x3fe6f6709fa54c55              # double 0.71758299999999997
	.quad	0x3fe27af859429175              # double 0.577511
	.quad	0x3fe14f6dfc5cdd51              # double 0.54094600000000004
	.quad	0x3fe0e1ed5ae1cde6              # double 0.52757900000000002
	.quad	0x3fc8ce89656eefa2              # double 0.193803
	.quad	0x3fdc57c4e2f37fbf              # double 0.442857
	.quad	0x3fecfb3fa6defc7a              # double 0.90566999999999998
	.quad	0x3fc4521dda059a74              # double 0.15875600000000001
	.quad	0x3fe3022ff08893b8              # double 0.59401700000000002
	.quad	0x3fc03ab862b27cbf              # double 0.12679199999999999
	.quad	0x3fe1e85553ef6b5d              # double 0.55961099999999997
	.quad	0x3fe8ab862b27cbf7              # double 0.77093800000000001
	.quad	0x3fe3149a5657fb6a              # double 0.59626500000000004
	.quad	0x3fdd9a671ef30a4e              # double 0.46254899999999999
	.quad	0x3fbae008e9b38d61              # double 0.104981
	.quad	0x3fdd0446b69db65f              # double 0.45338600000000001
	.quad	0x3fe68ee06d938152              # double 0.70494100000000004
	.quad	0x3fe36cdaf4adbc66              # double 0.60703799999999997
	.quad	0x3fe33a68b19a415f              # double 0.60087999999999997
	.quad	0x3fead6d19dece571              # double 0.838723
	.quad	0x3fdcabf338716095              # double 0.44799499999999998
	.quad	0x3fbad87f88765ba7              # double 0.104866
	.quad	0x3fee289dadfb506e              # double 0.94245800000000002
	.quad	0x3feffc5260f5e41d              # double 0.99955099999999996
	.quad	0x3fdda22b3892ee85              # double 0.46302300000000002
	.quad	0x3fc80ef1348b2208              # double 0.18795600000000001
	.quad	0x3fe64d035371971c              # double 0.69690099999999999
	.quad	0x3fecbb3e9a6f826f              # double 0.89785700000000002
	.quad	0x3fea8b5aa715831f              # double 0.829511
	.quad	0x3fe67c9795b35b0c              # double 0.70270900000000003
	.quad	0x3fe474b838c111ae              # double 0.63924800000000004
	.quad	0x3feab003686a4ca5              # double 0.83398600000000001
	.quad	0x3fec8ab713272431              # double 0.89193299999999998
	.quad	0x3fd1991bc5586445              # double 0.27496999999999999
	.quad	0x3fef49ff92f2b66b              # double 0.97778299999999995
	.quad	0x3fe99aed56b00ffe              # double 0.80016200000000004
	.quad	0x3fea6b28d8665e03              # double 0.82558100000000001
	.quad	0x3fe7f9b34a44c7b0              # double 0.74923099999999998
	.quad	0x3feea87c200c0f02              # double 0.958067
	.quad	0x3fdca3b57c4e2f38              # double 0.447492
	.quad	0x3fee704bc27631b6              # double 0.95120800000000005
	.quad	0x3fec41a6937d1fe6              # double 0.88301399999999997
	.quad	0x3fd528d8665e02eb              # double 0.33061800000000002
	.quad	0x3fbebf01322f2735              # double 0.120102
	.quad	0x3fd30379314445aa              # double 0.29708699999999999
	.quad	0x3f998aa8650e7792              # double 0.024943
	.quad	0x3fe97b352a843809              # double 0.79629000000000005
	.quad	0x3fc67c5260f5e41d              # double 0.17566899999999999
	.quad	0x3fe69d8a54823854              # double 0.706731
	.quad	0x3fc6f1dc50ce4ead              # double 0.179256
	.quad	0x3fe38752da98676a              # double 0.61026899999999995
	.quad	0x3fee8c8259e1f3a5              # double 0.95465199999999995
	.quad	0x3fe18887229e9079              # double 0.54791599999999996
	.quad	0x3fc8f31b152f3c2e              # double 0.19491900000000001
	.quad	0x3fbd1e321a2e7f6f              # double 0.113742
	.quad	0x3fe2da8155d5f56a              # double 0.58917299999999995
	.quad	0x3fe4d72ffd1dcd70              # double 0.65126799999999996
	.quad	0x3fc743e963dc486b              # double 0.18176
	.quad	0x3fcb12d3415b1423              # double 0.21151200000000001
	.quad	0x3fed4e3369b9d7fe              # double 0.91579600000000005
	.quad	0x3fc380346dc5d639              # double 0.15235000000000001
	.quad	0x3fc592428d434a02              # double 0.16852600000000001
	.quad	0x3f9300de4c51116b              # double 0.018558000000000002
	.quad	0x3fd84128bf3bea92              # double 0.37897700000000001
	.quad	0x3fe36d0b30b5aa71              # double 0.60706099999999996
	.quad	0x3fe306162f166e01              # double 0.59449300000000005
	.quad	0x3fc905d95dd4c76d              # double 0.195491
	.quad	0x3fd08ad688377186              # double 0.25847399999999998
	.quad	0x3fcf351159c49774              # double 0.243807
	.quad	0x3fd6d4c33b539325              # double 0.356736
	.quad	0x3fea462e4d1a6506              # double 0.82106699999999999
	.quad	0x3fe42b4959e62563              # double 0.63028399999999996
	.quad	0x3fe7ce831ad2135e              # double 0.74395900000000004
	.quad	0x3fcd1ed9dfdac68b              # double 0.22750400000000001
	.quad	0x3fec20296b3354c1              # double 0.87892599999999999
	.quad	0x3fcca78af3e468cb              # double 0.22386300000000001
	.quad	0x3fe8799806f26289              # double 0.76484300000000005
	.quad	0x3fe21276fb09203a              # double 0.56475399999999998
	.quad	0x3fe8a6d8b1dd5d3e              # double 0.77036700000000002
	.quad	0x3fd355ac03ff6901              # double 0.30210399999999998
	.quad	0x3fda1d3aa369fcf4              # double 0.40803400000000001
	.quad	0x3fd931593e5fb720              # double 0.39363700000000001
	.quad	0x3fd3fc9795b35b0c              # double 0.31229200000000001
	.quad	0x3fec1a2834d26fa4              # double 0.878193
	.quad	0x3fd86ff3ade225fa              # double 0.38183299999999998
	.quad	0x3fdb6c61522a6f3f              # double 0.42848999999999998
	.quad	0x3fecca16a4873366              # double 0.89966900000000005
	.quad	0x3fd2ae81882adc4d              # double 0.29190100000000002
	.quad	0x3fcb549f94855da2              # double 0.21351999999999999
	.quad	0x3fe1d8a548238540              # double 0.55769599999999997
	.quad	0x3fe9434c1a8ac5c1              # double 0.78946499999999997
	.quad	0x3fdc3b213e3e2930              # double 0.44110899999999997
	.quad	0x3fe997507e9d94d1              # double 0.79972100000000002
	.quad	0x3fdc3b3636f3b214              # double 0.44111400000000001
	.quad	0x3fdfb7a1c25d0742              # double 0.495583
	.quad	0x3fa6008e9b38d60a              # double 0.042972999999999997
	.quad	0x3fef0b32ce89656f              # double 0.970117
	.quad	0x3fe04ab606b7aa26              # double 0.50912000000000002
	.quad	0x3feeef49cf56eac8              # double 0.96670999999999995
	.quad	0x3fe559a95421c044              # double 0.66719499999999998
	.quad	0x3f94f227d028a1e0              # double 0.020455000000000001
	.quad	0x3fea4a3400b88ca4              # double 0.82155800000000001
	.quad	0x3fc15b1c864883fd              # double 0.13559299999999999
	.quad	0x3fd8bc5de9c0229a              # double 0.38649699999999998
	.quad	0x3fe6a6634117f844              # double 0.70781099999999997
	.quad	0x3fb526e978d4fdf4              # double 0.082625000000000004
	.quad	0x3fd70e8858ff7597              # double 0.36026200000000003
	.quad	0x3febff9f87f023ea              # double 0.87495400000000001
	.quad	0x3fe360b6f9fcb0c0              # double 0.60555599999999998
	.quad	0x3fc598c7e28240b8              # double 0.16872500000000001
	.quad	0x3fe32324c8366517              # double 0.59804000000000002
	.quad	0x3fc3f1843c3a42f2              # double 0.155808
	.quad	0x3feff6273929ed39              # double 0.99879799999999996
	.quad	0x3fc8e9142b302f73              # double 0.19461300000000001
	.quad	0x3fd7d61b2a27f1b7              # double 0.37244300000000002
	.quad	0x3fd4b81733226c3c              # double 0.32373600000000002
	.quad	0x3fe729c560c7c0f4              # double 0.72384899999999996
	.quad	0x3fc3ca5bd944aa54              # double 0.154613
	.quad	0x3fd7ff92f2b66b61              # double 0.37497399999999997
	.quad	0x3fc69bbf0dc768e0              # double 0.17662800000000001
	.quad	0x3fddd2ed783dff3f              # double 0.465999
	.quad	0x3fe5b3b5393250b5              # double 0.67818699999999998
	.quad	0x3fdbf92af9a8cdea              # double 0.437083
	.quad	0x3fedad55a3a08399              # double 0.92740900000000004
	.quad	0x3fd5c64345cfede9              # double 0.34022599999999997
	.quad	0x3f8cb3e5753a3ec0              # double 0.014015
	.quad	0x3fd45942917507ea              # double 0.31794800000000001
	.quad	0x3fc2a1f8e3ac0c63              # double 0.145568
	.quad	0x3fe1d7cd466f501a              # double 0.55759300000000001
	.quad	0x3fd86640a6b93ccd              # double 0.381241
	.quad	0x3fce8aefb2aae297              # double 0.23861499999999999
	.quad	0x3fe877a4e7ab7564              # double 0.76460499999999997
	.quad	0x3fd6c3e3193f6c27              # double 0.35570600000000002
	.quad	0x3fceffd1dcd7060c              # double 0.24218200000000001
	.quad	0x3fd76b3fe9fadafd              # double 0.365921
	.quad	0x3f9e4fb97bb73083              # double 0.029600999999999999
	.quad	0x3fe748387df5cf25              # double 0.72756600000000005
	.quad	0x3fde20f2becedd48              # double 0.47076099999999999
	.quad	0x3fdcd79d0a67620f              # double 0.45066000000000001
	.quad	0x3fd25ed8d36b4c7f              # double 0.28703899999999999
	.quad	0x3fef236e2eb1c433              # double 0.97307500000000002
	.quad	0x3fee90f51ac9afe2              # double 0.95519500000000002
	.quad	0x3fa8a88effe2a3cf              # double 0.048161000000000002
	.quad	0x3fdfb07075b3e143              # double 0.49514399999999997
	.quad	0x3fe8b56323bbc6eb              # double 0.772142
	.quad	0x3fdbdff3f0fe047d              # double 0.43554399999999999
	.quad	0x3fbb1290257c914b              # double 0.105752
	.quad	0x3f818b0d0edc3bd6              # double 0.0085660000000000007
	.quad	0x3fde4a1272c94b38              # double 0.473271
	.quad	0x3fe34d74927913e8              # double 0.60320499999999999
	.quad	0x3fe6d41743e963dc              # double 0.71338999999999997
	.quad	0x3fce267839cd8128              # double 0.23554900000000001
	.quad	0x3febeaad1d041cc5              # double 0.87239699999999998
	.quad	0x3fd49a91105e1c15              # double 0.321934
	.quad	0x3fd4afd113836a83              # double 0.32323099999999999
	.quad	0x3fbb1876188b1141              # double 0.10584200000000001
	.quad	0x3fe4e7b80a9de8b4              # double 0.65328600000000003
	.quad	0x3fe0f162ae4b0186              # double 0.52946599999999999
	.quad	0x3feca116659d12cb              # double 0.89466400000000001
	.quad	0x3f894855da272863              # double 0.012345
	.quad	0x3fe6fb5f1bef49cf              # double 0.71818499999999996
	.quad	0x3fc7a86940357a35              # double 0.18482699999999999
	.quad	0x3fef88e9b38d60a6              # double 0.98546299999999998
	.quad	0x3fd2be6a337a80d0              # double 0.29287200000000002
	.quad	0x3fea0b5aa715831f              # double 0.813886
	.quad	0x3fcb91ab8e8ea39c              # double 0.21538299999999999
	.quad	0x3fd8fd50225742dd              # double 0.390461
	.quad	0x3fb9230b9dc2f406              # double 0.098191
	.quad	0x3fe772778140dd40              # double 0.73272300000000001
	.quad	0x3fd46ddaceee0f3d              # double 0.31920500000000002
	.quad	0x3fc0b9884c6a3bde              # double 0.130662
	.quad	0x3fd33bfb58d1526e              # double 0.30053600000000003
	.quad	0x3fd0a60913a4f872              # double 0.26013399999999998
	.quad	0x3fd7ad81adea8976              # double 0.36996499999999999
	.quad	0x3fd0e321a2e7f6f5              # double 0.26386300000000001
	.quad	0x3fd6602c9081c2e3              # double 0.34961999999999999
	.quad	0x3fe6d710880d801b              # double 0.71375299999999997
	.quad	0x3fe10509bf9c62a2              # double 0.53186500000000003
	.quad	0x3fe96106ab14ec20              # double 0.79309399999999996
	.quad	0x3febe44955b4677b              # double 0.87161699999999998
	.quad	0x3fd372ead9274e23              # double 0.30388900000000002
	.quad	0x3fe5a7d88c1db014              # double 0.67673899999999998
	.quad	0x3fe55dc1e7967caf              # double 0.66769500000000004
	.quad	0x3fef991dde37585c              # double 0.98744100000000001
	.quad	0x3fef9856a37ac3eb              # double 0.98734599999999994
	.quad	0x3fea343d89ce4a7b              # double 0.81887699999999997
	.quad	0x3fe9c2f405f6ba06              # double 0.80504799999999999
	.quad	0x3fcbde050374ff86              # double 0.21771299999999999
	.quad	0x3fe24c1a8ac5c140              # double 0.57179000000000002
	.quad	0x3fe89d2391d57ffa              # double 0.76918200000000003
	.quad	0x3fc9ceb78897e996              # double 0.20162099999999999
	.quad	0x3fe3079c4113c686              # double 0.59467899999999996
	.quad	0x3fdf3c254a3c6434              # double 0.48804599999999998
	.quad	0x3fb2e0b0af5fd47c              # double 0.073741000000000001
	.quad	0x3fe595097c80841f              # double 0.67444300000000001
	.quad	0x3fc528d8665e02eb              # double 0.16530900000000001
	.quad	0x3fe97d0aed99cbef              # double 0.79651400000000006
	.quad	0x3fd2321e603d5779              # double 0.28430899999999998
	.quad	0x3fef2253111f0c35              # double 0.97294000000000002
	.quad	0x3fe64193b3a68b1a              # double 0.69550500000000004
	.quad	0x3fd2396073de1e2e              # double 0.28475200000000001
	.quad	0x3fe97f4128bf3beb              # double 0.79678400000000005
	.quad	0x3fea090f733a8a40              # double 0.81360600000000005
	.quad	0x3fec54cdb7ae5797              # double 0.88535200000000003
	.quad	0x3fc399fe43675ddd              # double 0.153137
	.quad	0x3fdaea57214f0521              # double 0.42055300000000001
	.quad	0x3fafdfe32a0663c7              # double 0.062254999999999998
	.quad	0x3feaef2e8c0485a1              # double 0.84169700000000003
	.quad	0x3fe7e5abc0e38a7e              # double 0.74678599999999995
	.quad	0x3fe11c1b54195cc8              # double 0.53468099999999996
	.quad	0x3fdf79b77c02afde              # double 0.49180400000000002
	.quad	0x3fda9ca5bd944aa5              # double 0.41581099999999999
	.quad	0x3fb659c065b63d3e              # double 0.087306999999999995
	.quad	0x3feee12839042d8c              # double 0.96498499999999998
	.quad	0x3fd4de4c51116a8c              # double 0.32606800000000002
	.quad	0x3f94a1272c94b381              # double 0.020146000000000001
	.quad	0x3fcc3f359ff4fd6d              # double 0.22067899999999999
	.quad	0x3fce2bcf91a32b13              # double 0.235712
	.quad	0x3fd71c193b3a68b2              # double 0.36109000000000002
	.quad	0x3f9f42fe82517e78              # double 0.030529000000000001
	.quad	0x3fe956777079e59f              # double 0.79180499999999998
	.quad	0x3fefcfede97d06bc              # double 0.99413200000000001
	.quad	0x3fdac8f75536933a              # double 0.418516
	.quad	0x3fe6962f166e008f              # double 0.70583300000000004
	.quad	0x3fe60fd3b29a1ba0              # double 0.68943200000000004
	.quad	0x3f80c88a47ecfe9b              # double 0.0081949999999999991
	.quad	0x3fed33df2a9d627c              # double 0.912582
	.quad	0x3fc0377186551937              # double 0.126692
	.quad	0x3fe10ae74f2f123c              # double 0.53258099999999997
	.quad	0x3fd076d117b5286b              # double 0.25725199999999998
	.quad	0x3fde9528f190d174              # double 0.477854
	.quad	0x3febf648c7192ea5              # double 0.87381399999999998
	.quad	0x3fe21569f4906035              # double 0.56511400000000001
	.quad	0x3fee5538ac18f81f              # double 0.94790300000000005
	.quad	0x3fed7640639d5e4a              # double 0.92068499999999998
	.quad	0x3fe4f2fba01eeed9              # double 0.65466100000000005
	.quad	0x3fd24577d955714c              # double 0.28549000000000002
	.quad	0x3fbb417ca2120e1f              # double 0.10646799999999999
	.quad	0x3fea6e45c358afc4              # double 0.82596099999999994
	.quad	0x3fd5a582dbe7f2c3              # double 0.338227
	.quad	0x3fbab59146e4c0df              # double 0.104333
	.quad	0x3fe0da5b9628cbd1              # double 0.52665499999999998
	.quad	0x3fd848a159817b96              # double 0.37943300000000002
	.quad	0x3fda618ce2d1f1d0              # double 0.41220400000000001
	.quad	0x3fe972862f5989df              # double 0.79522999999999999
	.quad	0x3fed40e1719f7f8d              # double 0.91417000000000004
	.quad	0x3fe173300de4c511              # double 0.54531099999999999
	.quad	0x3fee89331a08bfc2              # double 0.95424799999999999
	.quad	0x3fee887229e90796              # double 0.954156
	.quad	0x3fde55714b9cb685              # double 0.47396500000000003
	.quad	0x3fe392839042d8c3              # double 0.61163500000000004
	.quad	0x3fe4d3b0813cab82              # double 0.650841
	.quad	0x3fc2baf965b20b80              # double 0.14633099999999999
	.quad	0x3fab927d45a5fc7e              # double 0.053851999999999997
	.quad	0x3fd8c7da1ec4e725              # double 0.38719799999999999
	.quad	0x3fc0b91b3f20a73f              # double 0.13064899999999999
	.quad	0x3fefe34117f8444a              # double 0.99649100000000002
	.quad	0x3fe36a400fba8827              # double 0.60672000000000004
	.quad	0x3fcf82a9930be0df              # double 0.246175
	.quad	0x3fd65bd0e12e83a1              # double 0.349354
	.quad	0x3fa92a94ff0025c0              # double 0.049153000000000002
	.quad	0x3fcad7f950b955f8              # double 0.20971600000000001
	.quad	0x3fa6f156191148fe              # double 0.044810000000000003
	.quad	0x3fe109d8c6d612c7              # double 0.53245200000000004
	.quad	0x3fcf51bd61f5be5e              # double 0.24468200000000001
	.quad	0x3fdef17bd8be7297              # double 0.483489
	.quad	0x3fc219c17225b74a              # double 0.14141100000000001
	.quad	0x3fe23c947064ecea              # double 0.56989500000000004
	.quad	0x3fd6aad1d041cc53              # double 0.35417599999999999
	.quad	0x3fcf91819d2391d5              # double 0.24662799999999999
	.quad	0x3fc1d3804534bd77              # double 0.139267
	.quad	0x3fb10fd7e45803cd              # double 0.066647999999999999
	.quad	0x3fe0f59ee88df373              # double 0.52998299999999998
	.quad	0x3fe4bca1059ea572              # double 0.64802599999999999
	.quad	0x3fe93784662bae04              # double 0.78802700000000003
	.quad	0x3fd6e02645e4e69f              # double 0.357431
	.quad	0x3fe531ab0856e697              # double 0.66231300000000004
	.quad	0x3fe6e3fdd65a1449              # double 0.71533100000000005
	.quad	0x3fd71a08bfc2224f              # double 0.36096400000000001
	.quad	0x3fb837a3db3bfb59              # double 0.094599000000000003
	.quad	0x3fe312a51e321a2e              # double 0.59602599999999994
	.quad	0x3fc38c0053e2d624              # double 0.15271000000000001
	.quad	0x3feb8c9752977c89              # double 0.86091200000000001
	.quad	0x3fd98adab9f559b4              # double 0.39910000000000001
	.quad	0x3fe28a8f3a9b0681              # double 0.57941399999999998
	.quad	0x3f9e03b3e9a6f827              # double 0.029311
	.quad	0x3fb82a5614df8b15              # double 0.094395999999999994
	.quad	0x3fef4dc443914f48              # double 0.97824299999999997
	.quad	0x3fd1528283d35eb7              # double 0.27066099999999998
	.quad	0x3fe21e29b6b2af14              # double 0.56618199999999996
	.quad	0x3fe06a63b688bda9              # double 0.51298699999999997
	.quad	0x3fe89d3458cd20b0              # double 0.76919000000000004
	.quad	0x3fe1b7414a4d2b2c              # double 0.55362
	.quad	0x3fd0b356da0168b6              # double 0.26094600000000001
	.quad	0x3fec9e68a0d349bf              # double 0.89433700000000005
	.quad	0x3fa268f4b61fe21e              # double 0.035957000000000003
	.quad	0x3fe25375c8d9f905              # double 0.57268799999999997
	.quad	0x3feb81cd5f99c38b              # double 0.859595
	.quad	0x3fcd70bd017dae82              # double 0.23000300000000001
	.quad	0x3fa8c804102ff8ec              # double 0.048401
	.quad	0x3fefcee17a02fb5d              # double 0.99400399999999999
	.quad	0x3fd27ebaf102363b              # double 0.28898499999999999
	.quad	0x3fd72856605ee569              # double 0.36183700000000002
	.quad	0x3fca201cd5f99c39              # double 0.20410500000000001
	.quad	0x3fef2d2999567dbb              # double 0.97426299999999999
	.quad	0x3fe084d76ab58080              # double 0.51621600000000001
	.quad	0x3fe96a4ebdd334c6              # double 0.79422700000000002
	.quad	0x3fded527e5215769              # double 0.48176000000000002
	.quad	0x3fd8307af20ea5b5              # double 0.37795899999999999
	.quad	0x3f8c925785f8d2e5              # double 0.013951
	.quad	0x3fd36887a8d64d7f              # double 0.303255
	.quad	0x3fe8f9b56323bbc7              # double 0.78048200000000001
	.quad	0x3fedd4f5903a7547              # double 0.93224600000000002
	.quad	0x3fe6afa5093964a6              # double 0.70894100000000004
	.quad	0x3fe034fc610f0e91              # double 0.50646800000000003
	.quad	0x3fdb54d1e96c3fc4              # double 0.42705199999999999
	.quad	0x3fdf79c4113c6866              # double 0.49180699999999999
	.quad	0x3fea6f3d3a1d3240              # double 0.82607900000000001
	.quad	0x3fe405058dde7a74              # double 0.62561299999999997
	.quad	0x3fdf57e23f24d8fd              # double 0.48973899999999998
	.quad	0x3fdbd0917d6b65aa              # double 0.43460500000000002
	.quad	0x3fe602d38476f2a6              # double 0.68784500000000004
	.quad	0x3feadfc3b4f61672              # double 0.83981499999999998
	.quad	0x3fe182b628459967              # double 0.54720599999999997
	.quad	0x3fefb5ce18266773              # double 0.99094300000000001
	.quad	0x3fe9ee2c98e53eb4              # double 0.81032400000000004
	.quad	0x3fdc7ce95faa8a83              # double 0.44512400000000002
	.quad	0x3fd74b9884c6a3be              # double 0.36398900000000001
	.quad	0x3fd589e774eebf66              # double 0.33654200000000001
	.quad	0x3fb999aa60913a50              # double 0.10000100000000001
	.quad	0x3fef6f240fa9c12f              # double 0.98231699999999999
	.quad	0x3fed68af81626b2f              # double 0.91902899999999998
	.quad	0x3fd84185058dde7a              # double 0.37899899999999997
	.quad	0x3fe6dfdcdf698783              # double 0.71482699999999999
	.quad	0x3fcb7ae5796bfca8              # double 0.21468799999999999
	.quad	0x3fed54ef459d9903              # double 0.91661800000000004
	.quad	0x3fed00da1a93293d              # double 0.90635399999999999
	.quad	0x3fd78a50507a6bd7              # double 0.36781700000000001
	.quad	0x3febc0e7bc3c5bd1              # double 0.86729800000000001
	.quad	0x3fc4f9d2bf551505              # double 0.16387399999999999
	.quad	0x3fd75a35d67ba238              # double 0.36488100000000001
	.quad	0x3fc1da8bd230b9dc              # double 0.13948199999999999
	.quad	0x3fe9249a133c1ce7              # double 0.78571800000000003
	.quad	0x3fe6543f1c75818c              # double 0.69778399999999996
	.quad	0x3fd950a02b841249              # double 0.39554600000000001
	.quad	0x3fc3eabbcb1cc964              # double 0.15560099999999999
	.quad	0x3fe81bb4916ca46e              # double 0.753382
	.quad	0x3fe89d0e991ff716              # double 0.76917199999999997
	.quad	0x3fed55da272862f6              # double 0.91673000000000004
	.quad	0x3fd3c38f36694899              # double 0.308811
	.quad	0x3fe2dcb1465e8922              # double 0.58943999999999996
	.quad	0x3fe17c6540cc78ea              # double 0.546435
	.quad	0x3fcdbb59ddc1e796              # double 0.23227999999999999
	.quad	0x3fe9cf2495e17e35              # double 0.80653600000000003
	.quad	0x3fbf126e978d4fdf              # double 0.121375
	.quad	0x3fe15c2b0ea18373              # double 0.54250100000000001
	.quad	0x3feee6fd651b0ccc              # double 0.96569700000000002
	.quad	0x3fcae757928e0c9e              # double 0.21018500000000001
	.quad	0x3fbde6bc621b7e0b              # double 0.116802
	.quad	0x3fd7e5eaab042529              # double 0.37340800000000002
	.quad	0x3fdd69ad42c3c9ef              # double 0.45957500000000001
	.quad	0x3feefa8d64d7f0ed              # double 0.96808499999999997
	.quad	0x3fe38b49e01de269              # double 0.61075299999999999
	.quad	0x3fdb8cc575c0767d              # double 0.43046699999999999
	.quad	0x3fef0eeae9ee45c3              # double 0.97057099999999996
	.quad	0x3fd6e22a2c237479              # double 0.35755399999999998
	.quad	0x3fbb8f9b13165d3a              # double 0.10766000000000001
	.quad	0x3fd1e2c12ad81adf              # double 0.27946500000000002
	.quad	0x3fef8ffb8b263950              # double 0.98632600000000004
	.quad	0x3fee61b8ed1bf7ad              # double 0.94942899999999997
	.quad	0x3fd1a3b9ae0c1765              # double 0.27561799999999997
	.quad	0x3fcd7281fd9ba1b2              # double 0.23005700000000001
	.quad	0x3fd68d9b5e95b78d              # double 0.35239300000000001
	.quad	0x3fe4e0114d2f5dbc              # double 0.65235200000000004
	.quad	0x3fb421e1d2178f69              # double 0.078642000000000004
	.quad	0x3febcc5974e65bea              # double 0.86869499999999999
	.quad	0x3fe33d87b56b8738              # double 0.60126100000000005
	.quad	0x3fece4a9cdc44391              # double 0.90291299999999997
	.quad	0x3fde878fabda0dfe              # double 0.477024
	.quad	0x3fec8a5ce5b4245f              # double 0.89188999999999996
	.quad	0x3fd33065f9591cd2              # double 0.29982900000000001
	.quad	0x3fbc03361565c2d2              # double 0.10942399999999999
	.quad	0x3fe00f66a5508701              # double 0.50187999999999999
	.quad	0x3fc0111ada76d97b              # double 0.12552199999999999
	.quad	0x3fd47ad8e4324420              # double 0.319998
	.quad	0x3fdaa9a8049667b6              # double 0.416605
	.quad	0x3fe2fba6698bb4d5              # double 0.59321900000000005
	.quad	0x3fd02517e77d523b              # double 0.25226399999999999
	.quad	0x3feeca7503b81b65              # double 0.96221400000000001
	.quad	0x3fc59d0a67620ee9              # double 0.16885500000000001
	.quad	0x3fe55573647baa9b              # double 0.66668099999999997
	.quad	0x3fe379591cd1c7de              # double 0.60856299999999997
	.quad	0x3fcff37b8d3f1844              # double 0.24961800000000001
	.quad	0x3fba2e3c536d655e              # double 0.102268
	.quad	0x3fdafb549f94855e              # double 0.42159000000000002
	.quad	0x3fb8be7296f6512b              # double 0.096656000000000006
	.quad	0x3fc71904b3c3e74b              # double 0.180451
	.quad	0x3fe2c2352eb5f5f1              # double 0.58620700000000003
	.quad	0x3fb389e774eebf66              # double 0.076323000000000002
	.quad	0x3fe48d5842b734b5              # double 0.64225399999999999
	.quad	0x3fe6045132f87ad1              # double 0.68802700000000006
	.quad	0x3fcc7d5ed06fef7c              # double 0.222576
	.quad	0x3fe1ff47735c182f              # double 0.56241200000000002
	.quad	0x3fea26e115592d99              # double 0.81724600000000003
	.quad	0x3fdb93e1c9b41398              # double 0.43090099999999998
	.quad	0x3fedea8fc0d2c387              # double 0.93488300000000002
	.quad	0x3feb147f13059642              # double 0.846252
	.quad	0x3fcb8982cb20fb22              # double 0.21513399999999999
	.quad	0x3fee5f138bcdfefc              # double 0.949106
	.quad	0x3fcb2d905c033615              # double 0.21232799999999999
	.quad	0x3fc361aa3f034b0e              # double 0.151418
	.quad	0x3fd803e20ccff21b              # double 0.37523699999999999
	.quad	0x3fbea8438088509c              # double 0.119755
	.quad	0x3fcec1db0142f61f              # double 0.240291
	.quad	0x3fc106f694467382              # double 0.133025
	.quad	0x3feb5c4651f3e89b              # double 0.85501400000000005
	.quad	0x3fe201797cc39ffd              # double 0.56267999999999996
	.quad	0x3fe5ef1fddebd902              # double 0.68544000000000005
	.quad	0x3fb4d50ebaade658              # double 0.081376000000000004
	.quad	0x3fea29a1b9f98b72              # double 0.81758200000000003
	.quad	0x3fe038ef34d6a162              # double 0.50695000000000001
	.quad	0x3fd8023e9ea14057              # double 0.375137
	.quad	0x3fcc0eb67c286f8b              # double 0.219199
	.quad	0x3fe2652157689ca2              # double 0.57484500000000005
	.quad	0x3feee05681ecd4aa              # double 0.96488499999999999
	.quad	0x3fe250917d6b65aa              # double 0.57233500000000004
	.quad	0x3fe4bca1059ea572              # double 0.64802599999999999
	.quad	0x3fcc75c4a83b1d0d              # double 0.22234400000000001
	.quad	0x3f9707e175d13d75              # double 0.022491000000000001
	.quad	0x3fe618372e6a7696              # double 0.69045599999999996
	.quad	0x3fbac918e325d4a6              # double 0.104631
	.quad	0x3fdbeed02cd39da1              # double 0.43645099999999998
	.quad	0x3fe1ddd2ae8e1d65              # double 0.55832800000000005
	.quad	0x3fd59691a75cd0bb              # double 0.33731499999999998
	.quad	0x3fe13b16c1e364bf              # double 0.53846300000000002
	.quad	0x3fe7c21e1d2178f7              # double 0.74244600000000005
	.quad	0x3fe7148344c37e6f              # double 0.72125399999999995
	.quad	0x3fedc5ef62f9ca5c              # double 0.93041200000000001
	.quad	0x3fe75b1422ccb3a2              # double 0.72986799999999996
	.quad	0x3fe4fe3f359ff4fd              # double 0.65603599999999995
	.quad	0x3fe8baade657b84e              # double 0.77278800000000003
	.quad	0x3fc9fb9bed30f063              # double 0.202991
	.quad	0x3fd0efae7924af0c              # double 0.264629
	.quad	0x3fdad53cddd6e04c              # double 0.419265
	.quad	0x3fe569df97aaac11              # double 0.66917400000000005
	.quad	0x3fe759a30984e400              # double 0.72969200000000001
	.quad	0x3fe8c3675ddd2ae9              # double 0.77385300000000001
	.quad	0x3fc6f5c28f5c28f6              # double 0.17937500000000001
	.quad	0x3fe8821d10b1feeb              # double 0.76588299999999998
	.quad	0x3fefcd0dcfcc5b8e              # double 0.99378100000000003
	.quad	0x3fec6429e0a41a26              # double 0.88722699999999999
	.quad	0x3fd3fcb923a29c78              # double 0.31230000000000002
	.quad	0x3fedf9ce8d972cd8              # double 0.93674400000000002
	.quad	0x3fc660b2c83ec893              # double 0.17482600000000001
	.quad	0x3fe8fd9ba1b19610              # double 0.78095800000000004
	.quad	0x3fec0780fdc1615f              # double 0.87591600000000003
	.quad	0x3fdd14cec41dd1a2              # double 0.45439499999999999
	.quad	0x3fb302b40f66a551              # double 0.074260000000000007
	.quad	0x3fca03686a4ca4f4              # double 0.20322899999999999
	.quad	0x3feea8e4fb97bb73              # double 0.95811699999999999
	.quad	0x3fe8ccff21b3aeef              # double 0.77502400000000005
	.quad	0x3fd695810624dd2f              # double 0.35287499999999999
	.quad	0x3feeb682730c6717              # double 0.95977900000000004
	.quad	0x3fdd91d57ff9b563              # double 0.46202599999999999
	.quad	0x3fd2bc126a65cf68              # double 0.29272900000000002
	.quad	0x3fcde4712e40852b              # double 0.23353399999999999
	.quad	0x3fbcbc382a12f901              # double 0.112247
	.quad	0x3fecc89f40a2877f              # double 0.89949000000000001
	.quad	0x3fde8eeae9ee45c3              # double 0.47747299999999998
	.quad	0x3fe148216c61522a              # double 0.54005499999999995
	.quad	0x3fed150763a19008              # double 0.90881699999999999
	.quad	0x3fd1ae3608d0891a              # double 0.276258
	.quad	0x3fda7136a400fba9              # double 0.41316000000000003
	.quad	0x3fb5055b89939219              # double 0.082113000000000005
	.quad	0x3fe38bc382a12f90              # double 0.61081099999999999
	.quad	0x3fd8b1b79d909f1f              # double 0.385847
	.quad	0x3fd6dbf0563ed0f6              # double 0.35717399999999999
	.quad	0x3fef700474d9c6b0              # double 0.98242399999999996
	.quad	0x3fc89845dc832336              # double 0.19214700000000001
	.quad	0x3fce6412cf0f9d2c              # double 0.237429
	.quad	0x3f912f4cf4a558ea              # double 0.016781999999999998
	.quad	0x3fe11c347e8ccdd9              # double 0.53469299999999997
	.quad	0x3fe7ffbefd00713f              # double 0.749969
	.quad	0x3fc246950fc71d60              # double 0.14277899999999999
	.quad	0x3febfd2a62aa1944              # double 0.87465400000000004
	.quad	0x3fd2b5b2d4d4024b              # double 0.29233999999999999
	.quad	0x3fb69ea140570825              # double 0.088358000000000006
	.quad	0x3fda77c02afdda8c              # double 0.41355900000000001
	.quad	0x3fd47a4e7ab75643              # double 0.319965
	.quad	0x3fb194f26aec0725              # double 0.068679000000000004
	.quad	0x3fe27dc1615ebfa9              # double 0.577851
	.quad	0x3fea4c37e6f71a7e              # double 0.82180399999999998
	.quad	0x3fe209f1f14983d8              # double 0.56371400000000005
	.quad	0x3fe5a7674d163348              # double 0.67668499999999998
	.quad	0x3fefc3526527a205              # double 0.99259299999999994
	.quad	0x3fef2148ba83f4ed              # double 0.97281300000000003
	.quad	0x3fd75a9a8049667b              # double 0.36490499999999998
	.quad	0x3fe0a8522ea0fd3b              # double 0.52054699999999998
	.quad	0x3fd497d49d7ba66a              # double 0.32176700000000003
	.quad	0x3fe3f3647baa9b4a              # double 0.62346100000000004
	.quad	0x3fc0ca03c4b09e99              # double 0.131165
	.quad	0x3fea36ed6777079e              # double 0.81920499999999996
	.quad	0x3fc2e864020817fc              # double 0.14771699999999999
	.quad	0x3fdc21c475e6362a              # double 0.43956099999999998
	.quad	0x3fe96b8b69552e30              # double 0.79437800000000003
	.quad	0x3feecbe1eb4202da              # double 0.96238800000000002
	.quad	0x3fe52f922962cfd9              # double 0.66205700000000001
	.quad	0x3febd0678c0053e3              # double 0.86919000000000002
	.quad	0x3fe5a018a43bb40b              # double 0.67579299999999998
	.quad	0x3fd5d6fda836eb4f              # double 0.34124700000000002
	.quad	0x3fef5701d9f4d37c              # double 0.97937099999999999
	.quad	0x3fc8cb4289118c19              # double 0.19370299999999999
	.quad	0x3fe36f73c0c1fc8f              # double 0.60735499999999998
	.quad	0x3fec4d44567125dd              # double 0.884432
	.quad	0x3fe9ad44dca8e2e3              # double 0.80240100000000003
	.quad	0x3fe6b35f3d7d3911              # double 0.70939600000000003
	.quad	0x3fefd3f39d1b2e5a              # double 0.99462300000000003
	.quad	0x3fcc9c12f09d8c6d              # double 0.22351299999999999
	.quad	0x3fca1ffb480a5acd              # double 0.204101
	.quad	0x3fdd72b020c49ba6              # double 0.46012500000000001
	.quad	0x3fca7b5f1bef49cf              # double 0.20688999999999999
	.quad	0x3fe1600f345069a5              # double 0.54297600000000001
	.quad	0x3fee70b06c43f5f9              # double 0.95125599999999999
	.quad	0x3feda517e77d523b              # double 0.92640299999999998
	.quad	0x3fde3f91e646f156              # double 0.47262999999999999
	.quad	0x3fe8c7496aad1d04              # double 0.77432699999999998
	.quad	0x3fd6700474d9c6b0              # double 0.35058699999999998
	.quad	0x3fc2d5f138bcdff0              # double 0.14715400000000001
	.quad	0x3fefca36199780bb              # double 0.99343400000000003
	.quad	0x3fc474c8ffb8b264              # double 0.15981400000000001
	.quad	0x3fecdfe111276fb1              # double 0.90232900000000005
	.quad	0x3fc76030c23fab11              # double 0.18262300000000001
	.quad	0x3fe7ebbfd71b0468              # double 0.74752799999999997
	.quad	0x3fe1c7304039abf3              # double 0.55556499999999998
	.quad	0x3fe1b6976bc1effa              # double 0.553539
	.quad	0x3faac9f2fdb8fde3              # double 0.052322
	.quad	0x3fa5577963992c8c              # double 0.041682999999999998
	.quad	0x3fccc0724b76f6d7              # double 0.22462299999999999
	.quad	0x3fe072ead9274e23              # double 0.51402800000000004
	.quad	0x3fdb81f10667f90e              # double 0.42980600000000002
	.quad	0x3fe3da3c21187e7c              # double 0.62039
	.quad	0x3fe0677f6b1a2a4e              # double 0.51263400000000003
	.quad	0x3fe18468448cf7cb              # double 0.54741300000000004
	.quad	0x3fee7dd65a14488c              # double 0.95286099999999995
	.quad	0x3fed6af038e29f9d              # double 0.91930400000000001
	.quad	0x3fd79ce8d972cd7d              # double 0.368952
	.quad	0x3fde136a400fba88              # double 0.46993499999999999
	.quad	0x3fc1260f5e41d4b7              # double 0.13397400000000001
	.quad	0x3fda9107faa044af              # double 0.41510200000000003
	.quad	0x3fd44f15e7c8d196              # double 0.31732700000000003
	.quad	0x3fcb5b78cc9a77e6              # double 0.213729
	.quad	0x3fb4c26138fffbce              # double 0.081090999999999996
	.quad	0x3f917763e4abe6a3              # double 0.017056999999999999
	.quad	0x3fda79e16d6dc1a4              # double 0.41368899999999997
	.quad	0x3fe13d816aceaaf3              # double 0.53875799999999996
	.quad	0x3fdf71e29b6b2af1              # double 0.49132599999999998
	.quad	0x3fd63c9eecbfb15b              # double 0.34744999999999998
	.quad	0x3fc4785b5b70691f              # double 0.15992300000000001
	.quad	0x3fd1f13059641f64              # double 0.28034599999999998
	.quad	0x3fb21c8a7a41e57e              # double 0.070748000000000005
	.quad	0x3fe514898f605ab4              # double 0.65875700000000004
	.quad	0x3fd7ec84f8f8a4c2              # double 0.373811
	.quad	0x3fafcc7d1bb4916d              # double 0.062107000000000002
	.quad	0x3fc638759253543b              # double 0.173598
	.quad	0x3febb6c15d2d01c1              # double 0.86605900000000002
	.quad	0x3fc183be6601bc99              # double 0.13683300000000001
	.quad	0x3fddbd987c6327ee              # double 0.46469700000000003
	.quad	0x3fd820f6f08cc576              # double 0.37701200000000001
	.quad	0x3fddf8982cb20fb2              # double 0.46829799999999999
	.quad	0x3fd8148fd9fd36f8              # double 0.37625500000000001
	.quad	0x3feef4080f98fa37              # double 0.96728899999999995
	.quad	0x3fe20cc35ce18266              # double 0.56405799999999995
	.quad	0x3fe2bcd573647bab              # double 0.58555100000000004
	.quad	0x3fe99641f644955b              # double 0.79959199999999997
	.quad	0x3fd5eba27ae9ab2a              # double 0.34250700000000001
	.quad	0x3fd35579af1886e0              # double 0.30209200000000003
	.quad	0x3fe7a0f2becedd48              # double 0.73839699999999997
	.quad	0x3fda5de9c0229a5f              # double 0.41198200000000001
	.quad	0x3fe48f0e90bc7b46              # double 0.64246300000000001
	.quad	0x3fe85206c8711d7a              # double 0.76001300000000005
	.quad	0x3fe31737542a23c0              # double 0.596584
	.quad	0x3fd49314445aa2e4              # double 0.32147700000000001
	.quad	0x3fe2ef6f8f041462              # double 0.59172800000000003
	.quad	0x3f8b1422ccb3a259              # double 0.013221999999999999
	.quad	0x3fd32ff4ba51a006              # double 0.29980200000000001
	.quad	0x3fa013cab81f969e              # double 0.031400999999999998
	.quad	0x3feb1a3d2d87f887              # double 0.84695299999999996
	.quad	0x3fedbc382a12f901              # double 0.929226
	.quad	0x3fc3d34df04ddb55              # double 0.154886
	.quad	0x3fe7254e6e221c8a              # double 0.72330399999999995
	.quad	0x3fd039a7c17a8933              # double 0.25351899999999999
	.quad	0x3fd8a7ded6ba8c58              # double 0.38524599999999998
	.quad	0x3f8eae5bc87db2b3              # double 0.014981
	.quad	0x3fc33b18dac258d6              # double 0.15024100000000001
	.quad	0x3fe6c302b40f66a5              # double 0.71130499999999997
	.quad	0x3fe5b7c3504c48ae              # double 0.67868200000000001
	.quad	0x3fdd89374bc6a7f0              # double 0.46150000000000002
	.quad	0x3f8de3fbbd7b2032              # double 0.014595
	.quad	0x3fc0f5a1016ce78a              # double 0.132496
	.quad	0x3fe62bb8800eae19              # double 0.69283700000000004
	.quad	0x3fb9872f33ca31e8              # double 0.099719000000000002
	.quad	0x3fe14be835dedf1e              # double 0.540516
	.quad	0x3fddbb98c7e28241              # double 0.46457500000000002
	.quad	0x3fe44573a797891e              # double 0.63347799999999999
	.quad	0x3fb0b8ae31d712a1              # double 0.065318000000000001
	.quad	0x3fc7f3519bd4067d              # double 0.187113
	.quad	0x3fe9f8e5c4eb56fc              # double 0.81163300000000004
	.quad	0x3fee9ffb480a5acd              # double 0.95702900000000002
	.quad	0x3fee76145953586d              # double 0.95191400000000004
	.quad	0x3fe62e8e1d6494d5              # double 0.69318299999999999
	.quad	0x3fe5a4acf312b1b3              # double 0.67635199999999995
	.quad	0x3fe94ef240fa9c13              # double 0.79088700000000001
	.quad	0x3fe875f2cb641701              # double 0.76439800000000002
	.quad	0x3fe069b9d7fd8277              # double 0.51290599999999997
	.quad	0x3fa2087ca643cc08              # double 0.035221000000000002
	.quad	0x3fc4fb43d89ce4a8              # double 0.16391800000000001
	.quad	0x3fc45ce5b4245f5b              # double 0.159085
	.quad	0x3fe59d3671ac14c6              # double 0.67544099999999996
	.quad	0x3f888765ba6efc37              # double 0.011977
	.quad	0x3fea49c2c1b10fd8              # double 0.82150400000000001
	.quad	0x3fe49424e5929670              # double 0.64308399999999999
	.quad	0x3faa6c7eae5bc87e              # double 0.051609000000000002
	.quad	0x3fd5446f9b994e1a              # double 0.33230199999999999
	.quad	0x3fd0359791819d24              # double 0.25327100000000002
	.quad	0x3fee8622c4502689              # double 0.953874
	.quad	0x3fd6fc8b0079a283              # double 0.35916399999999998
	.quad	0x3f98893b7d84901d              # double 0.023961
	.quad	0x3fee2a843808850a              # double 0.94269000000000003
	.quad	0x3fededeb95e5aff3              # double 0.93529300000000004
	.quad	0x3fcb2c83ec892ab7              # double 0.21229600000000001
	.quad	0x3fec7878b7a1c25d              # double 0.889706
	.quad	0x3fd3389f83be6602              # double 0.30033100000000001
	.quad	0x3fe5986db50f40e6              # double 0.67485700000000004
	.quad	0x3fe4333b96af038e              # double 0.63125399999999998
	.quad	0x3fd16ca03c4b09ea              # double 0.27225500000000002
	.quad	0x3fb6514c22ee4192              # double 0.087178000000000005
	.quad	0x3fe1c3fc43b2dd37              # double 0.55517399999999995
	.quad	0x3fe7d70e6f2e8c05              # double 0.74500200000000005
	.quad	0x3fd3909289dadfb5              # double 0.305699
	.quad	0x3fc63c5bd0e12e84              # double 0.17371700000000001
	.quad	0x3fe003558a761028              # double 0.50040700000000005
	.quad	0x3fd7e64f54d1e96c              # double 0.37343199999999999
	.quad	0x3fe86e30caa326e1              # double 0.76345099999999999
	.quad	0x3f945b291b823c86              # double 0.019879000000000001
	.quad	0x3fbb934699418506              # double 0.10771600000000001
	.quad	0x3fe97b09203a322b              # double 0.796269
	.quad	0x3fec66644d877250              # double 0.88749900000000004
	.quad	0x3fd00ced4e4c942d              # double 0.25078899999999998
	.quad	0x3fde126634117f84              # double 0.46987299999999999
	.quad	0x3fc87e52157689ca              # double 0.191355
	.quad	0x3fe5e14bdfd2630f              # double 0.68375200000000003
	.quad	0x3fb5c26dce39b457              # double 0.084998000000000004
	.quad	0x3fd3b9e8c47a17f4              # double 0.308222
	.quad	0x3fe569856a37ac3f              # double 0.66913100000000003
	.quad	0x3fe6875f6fd21ff3              # double 0.70402500000000001
	.quad	0x3fcea5accd53048a              # double 0.239431
	.quad	0x3fee183d790752db              # double 0.94045900000000004
	.quad	0x3fe14fce746cb967              # double 0.54099200000000003
	.quad	0x3fd7ae8e1d6494d5              # double 0.370029
	.quad	0x3fb6333764f11b61              # double 0.086719000000000004
	.quad	0x3fe09d7ba6698bb5              # double 0.51922400000000002
	.quad	0x3fea57a99fa11a97              # double 0.82320099999999996
	.quad	0x3fd45efa615a8deb              # double 0.318297
	.quad	0x3fdc40746455eaee              # double 0.44143399999999999
	.quad	0x3fea8435efa615a9              # double 0.82863900000000001
	.quad	0x3fef6b93ccd0fe8b              # double 0.98188200000000003
	.quad	0x3fd6cb039ef0f16f              # double 0.35614099999999999
	.quad	0x3fd05e785b5b7069              # double 0.25576599999999999
	.quad	0x3fe5116ca46e08f2              # double 0.65837699999999999
	.quad	0x3f8de0d66f0cfe15              # double 0.014589
	.quad	0x3fee462c343b70ef              # double 0.94606599999999996
	.quad	0x3fe73b18dac258d6              # double 0.72596400000000005
	.quad	0x3fef721d53cddd6e              # double 0.98268
	.quad	0x3fd89f40a2877ee5              # double 0.38472000000000001
	.quad	0x3fe288df37329c34              # double 0.57920799999999995
	.quad	0x3fc15f676ea4228a              # double 0.13572400000000001
	.quad	0x3fe77345069a4df4              # double 0.73282099999999994
	.quad	0x3feb2b9b23dd54da              # double 0.84907299999999997
	.quad	0x3fd5f21b3aeee957              # double 0.34290199999999998
	.quad	0x3fb9df548ecd8dbd              # double 0.101064
	.quad	0x3fa16e158750c1b9              # double 0.034042999999999997
	.quad	0x3fcd7646ae3a3a8e              # double 0.23017199999999999
	.quad	0x3fec7c2eba27ae9b              # double 0.89015900000000003
	.quad	0x3fddf1dc50ce4ead              # double 0.467887
	.quad	0x3fe36c7000431bdf              # double 0.60698700000000005
	.quad	0x3fa47abfb9bed30f              # double 0.039999
	.quad	0x3fec47baa9b499d0              # double 0.88375599999999999
	.quad	0x3fd063f9a49c2c1b              # double 0.256102
	.quad	0x3fe956abde3fbbd8              # double 0.79183000000000003
	.quad	0x3fe21185cee17a03              # double 0.564639
	.quad	0x3fa4ea077036c9c1              # double 0.040848000000000002
	.quad	0x3fddadff822bbecb              # double 0.46374500000000002
	.quad	0x3febe96c3fc43b2e              # double 0.87224400000000002
	.quad	0x3fe6fd50225742dd              # double 0.71842200000000001
	.quad	0x3fe9207d4e09784f              # double 0.78521600000000003
	.quad	0x3fe905ec3dab5c3a              # double 0.78197300000000003
	.quad	0x3fc873e681a9b8cc              # double 0.19103700000000001
	.quad	0x3fdf775fb2edfe76              # double 0.49166100000000001
	.quad	0x3feb4aada33bd9cb              # double 0.85286600000000001
	.quad	0x3fef241c3efae792              # double 0.97315799999999997
	.quad	0x3fc0856e696a26e5              # double 0.12907199999999999
	.quad	0x3fd8f0f16f4384ba              # double 0.389706
	.quad	0x3feb5be7f2c3009b              # double 0.85496899999999998
	.quad	0x3fea2031ceaf251c              # double 0.81642999999999998
	.quad	0x3fecb825e13b18db              # double 0.89747900000000003
	.quad	0x3fcbe931876188b1              # double 0.218054
	.quad	0x3fcb50f40e5a35d6              # double 0.21340799999999999
	.quad	0x3fea322291fb3fa7              # double 0.81862000000000001
	.quad	0x3feddef62f9ca5be              # double 0.93346700000000005
	.quad	0x3fe2bf5b5fa22707              # double 0.58585900000000002
	.quad	0x3fb0cea28fe260b3              # double 0.065653000000000003
	.quad	0x3fd961cbccf28c7a              # double 0.396594
	.quad	0x3fe19f36262cba73              # double 0.55068499999999998
	.quad	0x3fe5e5796bfca85d              # double 0.68426200000000004
	.quad	0x3fe57c86cebbba56              # double 0.67145100000000002
	.quad	0x3fe458f4f93bc0a0              # double 0.63585899999999995
	.quad	0x3fd604b7f5a5332b              # double 0.34403800000000001
	.quad	0x3fb473de1e2de871              # double 0.079893000000000006
	.quad	0x3fde653868fd199c              # double 0.47492800000000002
	.quad	0x3fe168ccdd93c46e              # double 0.54404300000000005
	.quad	0x3fe51fa333764f12              # double 0.66011200000000003
	.quad	0x3fd9971c10d7be98              # double 0.39984799999999998
	.quad	0x3fe19e85fd04a2fd              # double 0.55060100000000001
	.quad	0x3fe5458eeae9ee46              # double 0.66474100000000003
	.quad	0x3fc875ff609dcf89              # double 0.19110099999999999
	.quad	0x3fc9042528ae74f3              # double 0.195439
	.quad	0x3fc37b0f6ad70e6f              # double 0.15219299999999999
	.quad	0x3fd3b5d462c343b7              # double 0.307973
	.quad	0x3fdb4167a95c853c              # double 0.425867
	.quad	0x3fb6734f82f51266              # double 0.087696999999999997
	.quad	0x3fe0219c9d5a187a              # double 0.50410299999999997
	.quad	0x3fc55ee99a62ed35              # double 0.166959
	.quad	0x3fcd8c9fb6134ce4              # double 0.230854
	.quad	0x3fd79dbec2480e8d              # double 0.36900300000000003
	.quad	0x3fd42352eb5f5f0b              # double 0.31465599999999999
	.quad	0x3f9327aa68f4b620              # double 0.018706
	.quad	0x3fe5ca3a4b5568e8              # double 0.68093599999999999
	.quad	0x3fed938151a43782              # double 0.92425599999999997
	.quad	0x3fe791819d2391d5              # double 0.73651199999999994
	.quad	0x3fe77d933e35c5b5              # double 0.73407900000000004
	.quad	0x3fba0fa15db3397e              # double 0.101801
	.quad	0x3feb2044ae85b9e9              # double 0.84768900000000003
	.quad	0x3fe66d2cbea4ebdd              # double 0.70082699999999998
	.quad	0x3feb5082cf52b90a              # double 0.85357799999999995
	.quad	0x3fd3780346dc5d64              # double 0.30420000000000003
	.quad	0x3fdfbf61aa3f034b              # double 0.496056
	.quad	0x3fb4588a04d12019              # double 0.079476000000000005
	.quad	0x3fe2ae3c536d655e              # double 0.58376899999999998
	.quad	0x3f9e5d9e40c8472c              # double 0.029654
	.quad	0x3fdaa4b124d099e1              # double 0.41630200000000001
	.quad	0x3fee68ea39c51dac              # double 0.95030700000000001
	.quad	0x3fccd8e432441feb              # double 0.22536900000000001
	.quad	0x3feb6e5471715c64              # double 0.85721800000000003
	.quad	0x3fc59b77c02afddb              # double 0.16880700000000001
	.quad	0x3fe332f01754b05b              # double 0.59996799999999995
	.quad	0x3feeb9085f4a1273              # double 0.96008700000000002
	.quad	0x3fe7de529bae46d0              # double 0.74588900000000002
	.quad	0x3fec0bd44998d046              # double 0.876444
	.quad	0x3fcee4649906cca3              # double 0.241345
	.quad	0x3fe7109f1f14983d              # double 0.72077899999999995
	.quad	0x3fe511600f34506a              # double 0.65837100000000004
	.quad	0x3fd9ecdd0d8cb07d              # double 0.405082
	.quad	0x3feba05bc01a36e3              # double 0.86332500000000001
	.quad	0x3fd98a0d349be8ff              # double 0.39905099999999999
	.quad	0x3fd2ac929aa1d756              # double 0.29178300000000001
	.quad	0x3fbe4bba12b5e52a              # double 0.118343
	.quad	0x3fcad655e28aa433              # double 0.20966599999999999
	.quad	0x3fe838151a437825              # double 0.75684600000000002
	.quad	0x3fdf3c70c996b767              # double 0.488064
	.quad	0x3feccefcbd556085              # double 0.90026700000000004
	.quad	0x3fc49888f861a60d              # double 0.16090499999999999
	.quad	0x3fb884a515ce9e5e              # double 0.095773999999999998
	.quad	0x3f8c3504c48adeec              # double 0.013773000000000001
	.quad	0x3fec49667b5f1bef              # double 0.88395999999999997
	.quad	0x3fda6ba493c89f41              # double 0.41282000000000002
	.quad	0x3fe83aa9b499d020              # double 0.75716099999999997
	.quad	0x3fea968d759ee88e              # double 0.83087800000000001
	.quad	0x3fc01cffeb074a77              # double 0.125885
	.quad	0x3fd8a9a8049667b6              # double 0.385355
	.quad	0x3fb707af20ea5b53              # double 0.089960999999999999
	.quad	0x3fd8b45f17bd8be7              # double 0.38600899999999999
	.quad	0x3fd1aaa7ded6ba8c              # double 0.27604099999999998
	.quad	0x3fd21843c3a42f1f              # double 0.28273100000000001
	.quad	0x3fe58dd82fd75e20              # double 0.67356499999999997
	.quad	0x3feba595bbbe8790              # double 0.86396300000000004
	.quad	0x3fedc940bbb1f256              # double 0.93081700000000001
	.quad	0x3fea8bf7f06705c9              # double 0.82958600000000005
	.quad	0x3fb0998d045fe111              # double 0.064842999999999998
	.quad	0x3fe7f8e7ddca4b12              # double 0.74913399999999997
	.quad	0x3fca569b17481b22              # double 0.20576800000000001
	.quad	0x3f857f737da61e0c              # double 0.010496999999999999
	.quad	0x3fda314445aa2e3c              # double 0.40925699999999998
	.quad	0x3fba54f7a919695e              # double 0.10285900000000001
	.quad	0x3fdd4a8c154c985f              # double 0.457675
	.quad	0x3fe1aab25b317efe              # double 0.55208699999999999
	.quad	0x3fb28900c521dda0              # double 0.072402999999999995
	.quad	0x3fee9b62c77574f7              # double 0.95646799999999998
	.quad	0x3fb9f4f50a02b841              # double 0.101394
	.quad	0x3fdde30446b69db6              # double 0.46698099999999998
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	31                              # 0x1f
	.quad	31                              # 0x1f
	.quad	31                              # 0x1f
	.quad	62                              # 0x3e
	.quad	62                              # 0x3e
	.quad	62                              # 0x3e
	.quad	91                              # 0x5b
	.quad	91                              # 0x5b
	.quad	91                              # 0x5b
	.quad	122                             # 0x7a
	.quad	122                             # 0x7a
	.quad	122                             # 0x7a
	.quad	151                             # 0x97
	.quad	151                             # 0x97
	.quad	151                             # 0x97
	.quad	183                             # 0xb7
	.quad	183                             # 0xb7
	.quad	183                             # 0xb7
	.quad	214                             # 0xd6
	.quad	214                             # 0xd6
	.quad	214                             # 0xd6
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	270                             # 0x10e
	.quad	270                             # 0x10e
	.quad	270                             # 0x10e
	.quad	299                             # 0x12b
	.quad	299                             # 0x12b
	.quad	299                             # 0x12b
	.quad	323                             # 0x143
	.quad	323                             # 0x143
	.quad	323                             # 0x143
	.quad	354                             # 0x162
	.quad	354                             # 0x162
	.quad	354                             # 0x162
	.quad	384                             # 0x180
	.quad	384                             # 0x180
	.quad	384                             # 0x180
	.quad	411                             # 0x19b
	.quad	411                             # 0x19b
	.quad	411                             # 0x19b
	.quad	436                             # 0x1b4
	.quad	436                             # 0x1b4
	.quad	436                             # 0x1b4
	.quad	468                             # 0x1d4
	.quad	468                             # 0x1d4
	.quad	468                             # 0x1d4
	.quad	495                             # 0x1ef
	.quad	495                             # 0x1ef
	.quad	495                             # 0x1ef
	.quad	524                             # 0x20c
	.quad	524                             # 0x20c
	.quad	524                             # 0x20c
	.quad	554                             # 0x22a
	.quad	554                             # 0x22a
	.quad	554                             # 0x22a
	.quad	583                             # 0x247
	.quad	583                             # 0x247
	.quad	583                             # 0x247
	.quad	615                             # 0x267
	.quad	615                             # 0x267
	.quad	615                             # 0x267
	.quad	645                             # 0x285
	.quad	645                             # 0x285
	.quad	645                             # 0x285
	.quad	674                             # 0x2a2
	.quad	674                             # 0x2a2
	.quad	674                             # 0x2a2
	.quad	702                             # 0x2be
	.quad	702                             # 0x2be
	.quad	702                             # 0x2be
	.quad	731                             # 0x2db
	.quad	731                             # 0x2db
	.quad	731                             # 0x2db
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	795                             # 0x31b
	.quad	795                             # 0x31b
	.quad	795                             # 0x31b
	.quad	825                             # 0x339
	.quad	825                             # 0x339
	.quad	825                             # 0x339
	.quad	855                             # 0x357
	.quad	855                             # 0x357
	.quad	855                             # 0x357
	.quad	886                             # 0x376
	.quad	886                             # 0x376
	.quad	886                             # 0x376
	.quad	918                             # 0x396
	.quad	918                             # 0x396
	.quad	918                             # 0x396
	.quad	945                             # 0x3b1
	.quad	945                             # 0x3b1
	.quad	945                             # 0x3b1
	.quad	974                             # 0x3ce
	.quad	974                             # 0x3ce
	.quad	974                             # 0x3ce
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.size	.L__constant_999xindex, 7992

	.type	.L__constant_999xf64,@object    # @__constant_999xf64
	.p2align	6, 0x0
.L__constant_999xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_999xf64, 7992

	.section	".note.GNU-stack","",@progbits
