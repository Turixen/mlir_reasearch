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
	.quad	0x3fdd63779e9d0e99              # double 0.45919599999999999
	.quad	0x3fe3c449dbec2481              # double 0.61771100000000001
	.quad	0x3fe7870da5daf07c              # double 0.735236
	.quad	0x3fb92923e5b8561d              # double 0.098283999999999996
	.quad	0x3fe531e5c0b99913              # double 0.66234099999999996
	.quad	0x3fdab252ce032db2              # double 0.417134
	.quad	0x3fe2ce1c58255b03              # double 0.58765999999999996
	.quad	0x3fdf9563a9f383f1              # double 0.49349300000000001
	.quad	0x3fe1a9003eea209b              # double 0.55188000000000004
	.quad	0x3fd6412cf0f9d2bf              # double 0.34772799999999998
	.quad	0x3fcfcd2d44dca8e3              # double 0.248449
	.quad	0x3fe386f694467382              # double 0.61022500000000002
	.quad	0x3f9e7a743a647fdc              # double 0.029763999999999999
	.quad	0x3fd3d352220bc383              # double 0.30977300000000002
	.quad	0x3fbaafcce1c58256              # double 0.104245
	.quad	0x3fe439f98b71b8aa              # double 0.632077
	.quad	0x3fca64f54d1e96c4              # double 0.206206
	.quad	0x3fee4e2d1f1cfbb9              # double 0.94704299999999997
	.quad	0x3febc9a34ca0c283              # double 0.86836400000000002
	.quad	0x3fde695d91ab8e8f              # double 0.47518100000000002
	.quad	0x3fd0a786c226809d              # double 0.26022499999999998
	.quad	0x3fe6f950b955f783              # double 0.71793399999999996
	.quad	0x3fdf5c67dfe32a06              # double 0.49001499999999998
	.quad	0x3fe70611fd5885d3              # double 0.71949099999999999
	.quad	0x3fda2b7fe08aefb3              # double 0.40890500000000002
	.quad	0x3fe6201cd5f99c39              # double 0.69142000000000003
	.quad	0x3fe4751ce28ed5f1              # double 0.63929599999999998
	.quad	0x3fe2445ed4a1ad64              # double 0.57084599999999996
	.quad	0x3fd311233df2a9d6              # double 0.29792099999999999
	.quad	0x3fd08a2ec28b2a6b              # double 0.258434
	.quad	0x3fe436f9fcb0c027              # double 0.63171100000000002
	.quad	0x3fe4201040bfe3b0              # double 0.62891399999999997
	.quad	0x3fd494ee392e1ef7              # double 0.32158999999999999
	.quad	0x3fd4b4c7f3493858              # double 0.32353399999999999
	.quad	0x3fd7986338b47c74              # double 0.368676
	.quad	0x3fc17dd872f33ca3              # double 0.136653
	.quad	0x3fed2a7bd48cb4af              # double 0.91143600000000002
	.quad	0x3fee67a311e85fd0              # double 0.95015099999999997
	.quad	0x3fe4366b6177ea1c              # double 0.63164299999999995
	.quad	0x3fe7c669057d1783              # double 0.74297000000000002
	.quad	0x3fa397353b4b2fa9              # double 0.038262999999999998
	.quad	0x3fe2a3bddfc9ff93              # double 0.58248800000000001
	.quad	0x3fd52b2bfdb4cc25              # double 0.33076
	.quad	0x3fd7b9170d62bf12              # double 0.370672
	.quad	0x3fe3685b9e8c47a1              # double 0.60648899999999994
	.quad	0x3fdbbb7f9d6f1130              # double 0.43331900000000001
	.quad	0x3fe59fcf3dc054ef              # double 0.67575799999999997
	.quad	0x3fce0fecdd0d8cb0              # double 0.23486099999999999
	.quad	0x3fe9daceee0f3cb4              # double 0.80796000000000001
	.quad	0x3fb4927913e81451              # double 0.080360000000000001
	.quad	0x3fadc5f7c6759ab7              # double 0.058151000000000001
	.quad	0x3fed1ee88df3732a              # double 0.91002300000000003
	.quad	0x3fecca1272c94b38              # double 0.89966699999999999
	.quad	0x3fe1b22af5771002              # double 0.55299900000000002
	.quad	0x3fe02f8bdec5f395              # double 0.50580400000000003
	.quad	0x3fe3d71f36262cba              # double 0.62000999999999995
	.quad	0x3fe89e2de8709742              # double 0.76930900000000002
	.quad	0x3fcc0ccff21b3aef              # double 0.219141
	.quad	0x3fd8a4052d666a98              # double 0.38501099999999999
	.quad	0x3fd4b7b6bb129025              # double 0.32371299999999997
	.quad	0x3fda3968d759ee89              # double 0.40975400000000001
	.quad	0x3fc300f776c4827b              # double 0.14846699999999999
	.quad	0x3fdb2bcb5fe542e5              # double 0.42454799999999998
	.quad	0x3fef27b4e54f7a92              # double 0.97359700000000005
	.quad	0x3feef3f52fc2656b              # double 0.96728000000000002
	.quad	0x3fecc02d16b97fe9              # double 0.89845900000000001
	.quad	0x3fd47ac81d3aa36a              # double 0.319994
	.quad	0x3fd28dfbd6a593a3              # double 0.28991600000000001
	.quad	0x3feba3d9231c64bb              # double 0.86375100000000005
	.quad	0x3fe73a0c6b484d77              # double 0.72583600000000004
	.quad	0x3fcaebbba55d1c3b              # double 0.21031900000000001
	.quad	0x3fbf18655193708b              # double 0.121466
	.quad	0x3feb1dd5d3dc8b87              # double 0.84739200000000003
	.quad	0x3fe4dc31593e5fb7              # double 0.65187899999999999
	.quad	0x3fe1bcbc48f10a9a              # double 0.55428900000000003
	.quad	0x3fbf86d2ed783dff              # double 0.123151
	.quad	0x3fef7ba01eeed890              # double 0.98384099999999997
	.quad	0x3fdd225742dcf462              # double 0.45522099999999999
	.quad	0x3fe37b506dd69d30              # double 0.60880299999999998
	.quad	0x3fda91e646f15619              # double 0.415155
	.quad	0x3fcfa072d1aeb3dd              # double 0.247084
	.quad	0x3fd9bddfc9ff92f3              # double 0.40221400000000002
	.quad	0x3fd255821294573a              # double 0.28646899999999997
	.quad	0x3fee7c71d6063172              # double 0.95269099999999995
	.quad	0x3fe144f1a1986b9c              # double 0.53966599999999998
	.quad	0x3fd6ed2cbea4ebdd              # double 0.35822599999999999
	.quad	0x3fe7f2f33ca31e7e              # double 0.74840700000000004
	.quad	0x3fe14c25072085b2              # double 0.54054500000000005
	.quad	0x3fcdb1209edbf8ba              # double 0.23196800000000001
	.quad	0x3fe5133e35c5b4ab              # double 0.65859900000000005
	.quad	0x3fc7d4a5df2239e7              # double 0.18617700000000001
	.quad	0x3fe3c026cc1ca3a5              # double 0.61720600000000003
	.quad	0x3feca4723aafff37              # double 0.89507400000000004
	.quad	0x3fdf152b0a6fc58b              # double 0.48566700000000002
	.quad	0x3fc27f3cf70153bd              # double 0.144508
	.quad	0x3fe78c6f7a0b5ed9              # double 0.73589300000000002
	.quad	0x3feffa20578e5c4f              # double 0.99928300000000003
	.quad	0x3fef73f316e37154              # double 0.98290399999999999
	.quad	0x3fdb0f062d40aaeb              # double 0.422792
	.quad	0x3fd57a99fa11a976              # double 0.33560800000000002
	.quad	0x3fdd4289118c197e              # double 0.45718599999999998
	.quad	0x3fd068cef672b884              # double 0.25639699999999999
	.quad	0x3fdae9707182235b              # double 0.42049799999999998
	.quad	0x3fed193f6c2699c8              # double 0.90933200000000003
	.quad	0x3fe5ea033e78e193              # double 0.68481599999999998
	.quad	0x3fef3d640e9d51b5              # double 0.976244
	.quad	0x3fed5d72367e414e              # double 0.91765699999999994
	.quad	0x3fd1554fbdad7519              # double 0.27083200000000002
	.quad	0x3fdc55da272862f6              # double 0.44274000000000002
	.quad	0x3fcf1372a38b8ae3              # double 0.242781
	.quad	0x3fc9eaf6837f7be1              # double 0.202483
	.quad	0x3fd00614163779ea              # double 0.25037100000000001
	.quad	0x3fe971c53f39d1b3              # double 0.79513800000000001
	.quad	0x3fe26b2f23033a47              # double 0.57558399999999998
	.quad	0x3fe2f5a964e8b7e5              # double 0.59248800000000001
	.quad	0x3fbb8c5436b8f9b1              # double 0.10761
	.quad	0x3fe278ca8198f1d4              # double 0.57724500000000001
	.quad	0x3fcea8da7f3cf701              # double 0.23952799999999999
	.quad	0x3fc45668c2613900              # double 0.158887
	.quad	0x3fc4fc71d6063172              # double 0.16395399999999999
	.quad	0x3fef72b020c49ba6              # double 0.98275000000000001
	.quad	0x3fbf08bb906466b2              # double 0.121227
	.quad	0x3fc3f633ce63a5c2              # double 0.15595100000000001
	.quad	0x3fe344e93e1c9b41              # double 0.60216199999999998
	.quad	0x3fc287fcb923a29c              # double 0.14477499999999999
	.quad	0x3fe42938de6ddf01              # double 0.63003200000000004
	.quad	0x3fdf20c8cd63cb81              # double 0.48637599999999998
	.quad	0x3fda691a75cd0bb7              # double 0.412665
	.quad	0x3fe9a027525460aa              # double 0.80079999999999996
	.quad	0x3fee14812be48a59              # double 0.94000300000000003
	.quad	0x3fb8dc11e42e1262              # double 0.097107999999999999
	.quad	0x3fe5f9af1886df83              # double 0.68672900000000003
	.quad	0x3fe113037d63022e              # double 0.53357100000000002
	.quad	0x3fd71d14e3bcd35b              # double 0.36115000000000003
	.quad	0x3fd4eb52c9d16fca              # double 0.32686300000000001
	.quad	0x3fd4e770bd017daf              # double 0.32662600000000003
	.quad	0x3fc29b8cb8e086be              # double 0.145372
	.quad	0x3fe01c0a8d21bc12              # double 0.50342299999999995
	.quad	0x3fe1c6e08f217093              # double 0.55552699999999999
	.quad	0x3fe0a6a22b3892ef              # double 0.52034100000000005
	.quad	0x3fc764bec679cc75              # double 0.18276200000000001
	.quad	0x3fef08ca3e7d1351              # double 0.96982299999999999
	.quad	0x3fe6ef7e3d1cc101              # double 0.71673500000000001
	.quad	0x3fddc447c30d306a              # double 0.46510499999999999
	.quad	0x3fdfa055757d5a9f              # double 0.49416100000000002
	.quad	0x3fc5069a4df47f99              # double 0.16426399999999999
	.quad	0x3fb7c23315d701da              # double 0.092807
	.quad	0x3fd4b738e6d15ad1              # double 0.323683
	.quad	0x3fe10db2702a3487              # double 0.53292200000000001
	.quad	0x3fdd0079a2834d27              # double 0.453154
	.quad	0x3fe0c985f06f6944              # double 0.52459999999999996
	.quad	0x3faa376922d948dc              # double 0.051204
	.quad	0x3fc17d73c9257860              # double 0.13664100000000001
	.quad	0x3fe384c271fff79d              # double 0.60995600000000005
	.quad	0x3fd985e3da2f8bdf              # double 0.39879700000000001
	.quad	0x3f9ec7863beec398              # double 0.030058000000000001
	.quad	0x3fc2bbd3804534bd              # double 0.14635699999999999
	.quad	0x3fd690470a808c82              # double 0.35255599999999998
	.quad	0x3fec33c60029f16b              # double 0.88131999999999999
	.quad	0x3fe9480c73abc947              # double 0.790045
	.quad	0x3feced117b5286b6              # double 0.90393900000000005
	.quad	0x3f415df6555c52e7              # double 5.2999999999999998E-4
	.quad	0x3fe4644fa05143bf              # double 0.63724499999999995
	.quad	0x3feeac2bd7f51efb              # double 0.95851699999999995
	.quad	0x3fb973647baa9b4a              # double 0.099417000000000005
	.quad	0x3fcbc8d9f90539fc              # double 0.21706700000000001
	.quad	0x3feebd8be7296f65              # double 0.96063799999999999
	.quad	0x3fee8d413122b7bb              # double 0.95474300000000001
	.quad	0x3fb4a85caafbc1ad              # double 0.080694000000000002
	.quad	0x3fb94c76d117b528              # double 0.098822999999999994
	.quad	0x3fe78d79d0a67621              # double 0.73602000000000001
	.quad	0x3fed957abb8800eb              # double 0.92449700000000001
	.quad	0x3fc21b6d43d03969              # double 0.141462
	.quad	0x3fe702730c671690              # double 0.71904900000000005
	.quad	0x3fa56b00ffda4053              # double 0.041832000000000001
	.quad	0x3fe0e327ed84d339              # double 0.527729
	.quad	0x3fe9fd5cb790fb65              # double 0.81217799999999996
	.quad	0x3feac67dfe32a066              # double 0.83672999999999997
	.quad	0x3fe91d14e3bcd35b              # double 0.78480000000000005
	.quad	0x3fc29528f190d174              # double 0.145177
	.quad	0x3fed48366516db0e              # double 0.91506500000000002
	.quad	0x3fdc3708aac96cc6              # double 0.440859
	.quad	0x3fef25a89b951c5c              # double 0.97334699999999996
	.quad	0x3fa9806f262888b5              # double 0.049807999999999998
	.quad	0x3fe51b54195cc858              # double 0.65958600000000001
	.quad	0x3fead06573215fcc              # double 0.83793899999999998
	.quad	0x3fe5ed7e889c1b54              # double 0.68524099999999999
	.quad	0x3fcb56a7ac81d3aa              # double 0.21358199999999999
	.quad	0x3fd6a2c669057d18              # double 0.35368500000000003
	.quad	0x3fe4d710880d801b              # double 0.65125299999999997
	.quad	0x3fac7c957cd466f5              # double 0.055638
	.quad	0x3fe266c093d96638              # double 0.57504299999999997
	.quad	0x3fd1f1cb89d6adf7              # double 0.28038299999999999
	.quad	0x3fb78df7a4e7ab75              # double 0.092009999999999995
	.quad	0x3fb6abbcb1cc9646              # double 0.088557999999999997
	.quad	0x3fe6bcc07aaef2c7              # double 0.71054099999999998
	.quad	0x3fd9eaab042528ae              # double 0.40494799999999997
	.quad	0x3faa28fe260b2c84              # double 0.051094000000000001
	.quad	0x3febd454152b0a70              # double 0.86966900000000003
	.quad	0x3fd5f80dc33721d5              # double 0.34326499999999999
	.quad	0x3fe8b7fe08aefb2b              # double 0.77246000000000004
	.quad	0x3fdaf0fe047d3d43              # double 0.42095900000000003
	.quad	0x3fe95a4484944ed7              # double 0.792269
	.quad	0x3fe319e731d2e0e3              # double 0.596912
	.quad	0x3fc71244a6223e18              # double 0.18024499999999999
	.quad	0x3fd89bc77143393b              # double 0.38450800000000002
	.quad	0x3fea8225742dcf46              # double 0.82838699999999998
	.quad	0x3fbd88094e5d5b25              # double 0.115357
	.quad	0x3fd3e542e557de0d              # double 0.31086799999999998
	.quad	0x3fe36dfa43fe5c92              # double 0.60717500000000002
	.quad	0x3fe95041cc532a49              # double 0.79104699999999994
	.quad	0x3fec4d63cb817332              # double 0.88444699999999998
	.quad	0x3fcb89c5e6ff7dfa              # double 0.215142
	.quad	0x3fcec4f7ec3547e0              # double 0.24038599999999999
	.quad	0x3fed723ee1bd1eda              # double 0.92019600000000001
	.quad	0x3fe0377c02afdda9              # double 0.50677300000000003
	.quad	0x3fef71327243137b              # double 0.98256799999999999
	.quad	0x3fe710364388ebcc              # double 0.72072899999999995
	.quad	0x3fd76fb09203a323              # double 0.36619200000000002
	.quad	0x3fd095a294141e9b              # double 0.259133
	.quad	0x3fe010752da98677              # double 0.50200900000000004
	.quad	0x3feef5946c332f01              # double 0.96747799999999994
	.quad	0x3fe35803cd141a69              # double 0.60449399999999998
	.quad	0x3fe349be8ff327aa              # double 0.60275199999999995
	.quad	0x3fd27481b21c475e              # double 0.28836099999999998
	.quad	0x3fd464f97edc7ef1              # double 0.31866299999999997
	.quad	0x3fefd1bb4916ca47              # double 0.99435200000000001
	.quad	0x3fece681a9b8cb8e              # double 0.903138
	.quad	0x3fdb77fae3608d09              # double 0.42919800000000002
	.quad	0x3fd26fa3fcc9ea9a              # double 0.28806399999999999
	.quad	0x3fe6422467be553b              # double 0.69557400000000003
	.quad	0x3fed599aa60913a5              # double 0.917188
	.quad	0x3fec58904f6dfc5d              # double 0.88581100000000002
	.quad	0x3f8a415f45e0b4e1              # double 0.01282
	.quad	0x3fc56c15d2d01c0d              # double 0.16736100000000001
	.quad	0x3fee273d5bab2181              # double 0.94228999999999996
	.quad	0x3fc6a550870110a1              # double 0.17691999999999999
	.quad	0x3fe50b2c83ec892b              # double 0.65761400000000003
	.quad	0x3f990cd423d9231c              # double 0.024462999999999999
	.quad	0x3feea3f24d8fd5cb              # double 0.95751299999999995
	.quad	0x3fe7532a497fa5d3              # double 0.72890200000000005
	.quad	0x3fdc850df15a4acf              # double 0.44562099999999999
	.quad	0x3fe4d0f840181e04              # double 0.650509
	.quad	0x3fc01ebc83a96d4c              # double 0.12593799999999999
	.quad	0x3fed7507e9d94d0e              # double 0.92053600000000002
	.quad	0x3fe8d56084a515cf              # double 0.77604700000000004
	.quad	0x3fdf4cc25072085b              # double 0.48905999999999999
	.quad	0x3fe7dc11e42e1262              # double 0.745614
	.quad	0x3fdedfb506dd69d3              # double 0.482404
	.quad	0x3fe0e9c4545846e9              # double 0.52853600000000001
	.quad	0x3fe316cc5fbf8338              # double 0.59653299999999998
	.quad	0x3feba7179bfdf7e8              # double 0.864147
	.quad	0x3fe9218372e6a769              # double 0.78534099999999996
	.quad	0x3fe4f2a7bd48cb4b              # double 0.65462100000000001
	.quad	0x3fec10e66cb10343              # double 0.87706300000000004
	.quad	0x3fd66dc1a47a9e2c              # double 0.35044900000000001
	.quad	0x3fdf44dca8e2e2b9              # double 0.48857800000000001
	.quad	0x3fb3d61f5be5d9e4              # double 0.077485999999999999
	.quad	0x3f9b6ae7d566cf42              # double 0.026775
	.quad	0x3fe31f4906034f40              # double 0.59756900000000002
	.quad	0x3fef886bdf4c2b52              # double 0.98540300000000003
	.quad	0x3fea91f70de8f6cf              # double 0.830318
	.quad	0x3fe91b6b2af14552              # double 0.78459699999999999
	.quad	0x3fe562046c764ae0              # double 0.668215
	.quad	0x3feca94573a79789              # double 0.89566299999999999
	.quad	0x3fe7ae9899bf5947              # double 0.74006300000000003
	.quad	0x3fe618ce2d1f1cfc              # double 0.69052800000000003
	.quad	0x3fb9ea1405708249              # double 0.101228
	.quad	0x3fe54606748e4756              # double 0.664798
	.quad	0x3fe2e1f5be5d9e41              # double 0.59008300000000002
	.quad	0x3fda138bcdfefbf4              # double 0.407443
	.quad	0x3fea2a53fc0096ff              # double 0.81766700000000003
	.quad	0x3fb5f42bb6672fba              # double 0.085756999999999999
	.quad	0x3fec54845132f87b              # double 0.88531700000000002
	.quad	0x3fe2a73b42cc2d6b              # double 0.58291400000000004
	.quad	0x3fd22b5e529bae47              # double 0.28389700000000001
	.quad	0x3fcf02602c9081c3              # double 0.24226
	.quad	0x3fec2f6a50d6b229              # double 0.88078800000000002
	.quad	0x3fd8a2120e1f7d74              # double 0.38489200000000001
	.quad	0x3fe30ebaade657b8              # double 0.59554799999999997
	.quad	0x3fe8503968d759ef              # double 0.75979300000000005
	.quad	0x3fd09984a0e410b6              # double 0.25936999999999999
	.quad	0x3fe94fe79ee02a78              # double 0.79100400000000004
	.quad	0x3fef79e59f2ba9d2              # double 0.98363
	.quad	0x3fe7d80a17b0f6ad              # double 0.74512199999999995
	.quad	0x3feb6d2cbea4ebdd              # double 0.85707699999999998
	.quad	0x3fe8740c4156e265              # double 0.76416600000000001
	.quad	0x3fd3caab8a5ce5b4              # double 0.30924499999999999
	.quad	0x3fedd29bae46cfc8              # double 0.93195899999999998
	.quad	0x3fcec7b890d5a5b9              # double 0.24046999999999999
	.quad	0x3fcb350092ccf6be              # double 0.21255499999999999
	.quad	0x3fc6e5c4eb56fb8f              # double 0.17888699999999999
	.quad	0x3fead6861e92923e              # double 0.83868699999999996
	.quad	0x3f7a88ace24bba13              # double 0.0064780000000000003
	.quad	0x3fe439f340d4dc66              # double 0.63207400000000002
	.quad	0x3f7e95b78cc9a77e              # double 0.0074669999999999997
	.quad	0x3fee3a27ae9ab29e              # double 0.94459899999999997
	.quad	0x3fed199fe43675de              # double 0.90937800000000002
	.quad	0x3fb036976bc1effa              # double 0.063333
	.quad	0x3fec054ac29bf163              # double 0.87564600000000004
	.quad	0x3fc6203e63e8dda5              # double 0.17285900000000001
	.quad	0x3fe42b6284599674              # double 0.63029599999999997
	.quad	0x3feb44241c3efae8              # double 0.85206800000000005
	.quad	0x3fdd902de00d1b71              # double 0.46192499999999997
	.quad	0x3fe82e70c1333b97              # double 0.75566900000000004
	.quad	0x3fc7802c0a4a05de              # double 0.18359900000000001
	.quad	0x3fc9f4ba51a005c4              # double 0.20278099999999999
	.quad	0x3fd2b7dc7abfb9bf              # double 0.29247200000000001
	.quad	0x3fb6312f4cf4a559              # double 0.086688000000000001
	.quad	0x3fb3ae147ae147ae              # double 0.076874999999999998
	.quad	0x3fb224dd2f1a9fbe              # double 0.070874999999999994
	.quad	0x3feedbb59ddc1e79              # double 0.96431999999999995
	.quad	0x3fe3f507e9d94d0e              # double 0.62366100000000002
	.quad	0x3faa0407cc7d1bb5              # double 0.050812000000000003
	.quad	0x3feb7cf80dc33722              # double 0.85900500000000002
	.quad	0x3feb109289dadfb5              # double 0.845773
	.quad	0x3fe179d4d834091c              # double 0.546122
	.quad	0x3fdbf28848387df6              # double 0.43667800000000001
	.quad	0x3fd520ddc6195465              # double 0.33013100000000001
	.quad	0x3fe7c9ecb31c219f              # double 0.74339900000000003
	.quad	0x3feb6b399f5dfeb9              # double 0.85683900000000002
	.quad	0x3fec47c957cd466f              # double 0.88376299999999997
	.quad	0x3fe3663c74fb54a0              # double 0.60623000000000005
	.quad	0x3fe8eac8605681ed              # double 0.77866000000000002
	.quad	0x3fd87e9d94d0dcfd              # double 0.38272800000000001
	.quad	0x3fe4fa871a3b14a9              # double 0.655582
	.quad	0x3fecb9f98b71b8aa              # double 0.897702
	.quad	0x3fe219e94ab1d4fa              # double 0.56566300000000003
	.quad	0x3fac7c5260f5e41d              # double 0.055635999999999998
	.quad	0x3fef7d651b0ccbc0              # double 0.98405699999999995
	.quad	0x3fd1c636b0963561              # double 0.277723
	.quad	0x3fd1f98b71b8aa00              # double 0.28085599999999999
	.quad	0x3fd4524399b2c40d              # double 0.317521
	.quad	0x3fe45781c714fce7              # double 0.63568199999999997
	.quad	0x3fe0f3929ed3953e              # double 0.52973300000000001
	.quad	0x3fbd702e6644d877              # double 0.114993
	.quad	0x3fcb2157689ca18c              # double 0.211955
	.quad	0x3fb45ef62f9ca5be              # double 0.079574000000000005
	.quad	0x3fe516744b2b777d              # double 0.65899099999999999
	.quad	0x3fe4b6e2eb1c432d              # double 0.64732500000000004
	.quad	0x3fe75d052934acb0              # double 0.730105
	.quad	0x3fea2ba7b9170d63              # double 0.81782900000000003
	.quad	0x3fe16052502eec7d              # double 0.54300800000000005
	.quad	0x3fcd6bb98c7e2824              # double 0.22985
	.quad	0x3fd6e9424e592967              # double 0.357987
	.quad	0x3fec453d20f2becf              # double 0.88345200000000002
	.quad	0x3fc1ec4e7253da73              # double 0.14002400000000001
	.quad	0x3fed8f27bb2fec57              # double 0.92372500000000002
	.quad	0x3f966a11ec918e32              # double 0.021888999999999999
	.quad	0x3fe8b4916ca46e09              # double 0.77204200000000001
	.quad	0x3fe5941c8216c615              # double 0.67432999999999998
	.quad	0x3fc84b2314013ec4              # double 0.18979299999999999
	.quad	0x3fae9856a37ac3eb              # double 0.059755999999999997
	.quad	0x3fe7df3b645a1cac              # double 0.746
	.quad	0x3fd3fdeb52c9d170              # double 0.31237300000000001
	.quad	0x3f98c0ce91c8eac0              # double 0.024173
	.quad	0x3fecfef7c243dccf              # double 0.90612400000000004
	.quad	0x3fbbe5321e603d57              # double 0.10896599999999999
	.quad	0x3fd62178f68be2f8              # double 0.34579300000000002
	.quad	0x3fef37f1737542a2              # double 0.97557899999999997
	.quad	0x3fc0be835dedf1e1              # double 0.13081400000000001
	.quad	0x3fe43e24febd09e1              # double 0.63258599999999998
	.quad	0x3fe213f290abb44e              # double 0.56493499999999996
	.quad	0x3fd6881a1554fbdb              # double 0.35205700000000001
	.quad	0x3fedefbd273d5bab              # double 0.93551499999999999
	.quad	0x3fca90c4dec1c1d7              # double 0.20754300000000001
	.quad	0x3fe8f77079e59f2c              # double 0.78020500000000003
	.quad	0x3fd3f13cee9dd7ed              # double 0.31159900000000001
	.quad	0x3fdeba9d1f601798              # double 0.48014000000000001
	.quad	0x3fef09b30728e92d              # double 0.96993399999999996
	.quad	0x3fd9abf338716095              # double 0.40111999999999998
	.quad	0x3fa984e3ffef3908              # double 0.049841999999999997
	.quad	0x3fe8ec3760bf5d79              # double 0.77883500000000006
	.quad	0x3fe3266dbd72bcb6              # double 0.598441
	.quad	0x3fef062d40aaeafb              # double 0.96950400000000003
	.quad	0x3fde22c881e4712e              # double 0.47087299999999999
	.quad	0x3fe792923e5b8562              # double 0.73664200000000002
	.quad	0x3fd3280f12c27a63              # double 0.29931999999999997
	.quad	0x3fee41a8ac5c13fd              # double 0.94551499999999999
	.quad	0x3febcb70ac3a860e              # double 0.86858400000000002
	.quad	0x3fb7689ca18bd662              # double 0.091439999999999993
	.quad	0x3fe2f5be5d9e40c8              # double 0.59249799999999997
	.quad	0x3fcbf559b3d07c85              # double 0.21842500000000001
	.quad	0x3fdbddb5525cc426              # double 0.43540699999999999
	.quad	0x3fdabf0dc768dfbd              # double 0.41791099999999998
	.quad	0x3fc5a543f1c75819              # double 0.16910600000000001
	.quad	0x3fe36004b7f5a533              # double 0.60547099999999998
	.quad	0x3fda389b52007dd4              # double 0.40970499999999999
	.quad	0x3fb89a133c1ce6c1              # double 0.096101000000000006
	.quad	0x3fd7349be8ff327b              # double 0.36258600000000002
	.quad	0x3fe915f676ea4229              # double 0.78393100000000004
	.quad	0x3fc1dd76683c297c              # double 0.139571
	.quad	0x3fe74751ce28ed5f              # double 0.72745599999999999
	.quad	0x3fd519f7f8ca8199              # double 0.32971
	.quad	0x3f6d3ed527e52157              # double 0.0035699999999999998
	.quad	0x3fe6a599ed7c6fbd              # double 0.70771499999999998
	.quad	0x3fcadc33721d53ce              # double 0.209845
	.quad	0x3fde822bbecaab8a              # double 0.47669499999999998
	.quad	0x3fe859f2ba9d1f60              # double 0.76097999999999998
	.quad	0x3fdcbb1290257c91              # double 0.44891799999999998
	.quad	0x3fd53e3193f6c26a              # double 0.33192100000000002
	.quad	0x3fda1fa333764f12              # double 0.40818100000000002
	.quad	0x3fedd0b955f7835a              # double 0.93172900000000003
	.quad	0x3fe768a0d349be90              # double 0.73152200000000001
	.quad	0x3fe4e5ecc3e3193f              # double 0.65306699999999995
	.quad	0x3fd8a398201cd5fa              # double 0.38498500000000002
	.quad	0x3fec981e03f70585              # double 0.89356899999999995
	.quad	0x3fe5c8d1958969a1              # double 0.68076400000000004
	.quad	0x3fc8a098915bdd76              # double 0.19240099999999999
	.quad	0x3fed747735c182ed              # double 0.92046700000000004
	.quad	0x3fb2e44b6e935b92              # double 0.073796
	.quad	0x3fd001797cc39ffd              # double 0.25008999999999998
	.quad	0x3fd4ad5bee3d5fdd              # double 0.32308100000000001
	.quad	0x3fe7c1743e963dc5              # double 0.74236500000000005
	.quad	0x3feacbbe4473cd57              # double 0.83737099999999998
	.quad	0x3fb18f1d3ed527e5              # double 0.068589999999999998
	.quad	0x3fe2f36ac647778e              # double 0.59221400000000002
	.quad	0x3fc0adf71eafee70              # double 0.13030900000000001
	.quad	0x3fd46772d5e071c5              # double 0.31881399999999999
	.quad	0x3fd33de1e2de8709              # double 0.30065199999999997
	.quad	0x3fb6e8d10f51ac9b              # double 0.08949
	.quad	0x3fbc0db2702a3487              # double 0.109584
	.quad	0x3fe8e88bda9435ad              # double 0.77838700000000005
	.quad	0x3fca3a3a8e71476b              # double 0.204902
	.quad	0x3fde28672756861f              # double 0.47121600000000002
	.quad	0x3fe702b841248d7e              # double 0.719082
	.quad	0x3fe20b135979181a              # double 0.56385200000000002
	.quad	0x3fe4063e07a28bb1              # double 0.62576200000000004
	.quad	0x3f92b063e07a28bb              # double 0.018251
	.quad	0x3feefa11a975afb0              # double 0.96802600000000005
	.quad	0x3fe72007dd441355              # double 0.72265999999999997
	.quad	0x3fe3c0bfe3b03e21              # double 0.61727900000000002
	.quad	0x3fb88d5c74751ce3              # double 0.095907000000000006
	.quad	0x3fec4c35ce182667              # double 0.88430299999999995
	.quad	0x3fe023358f2e05cd              # double 0.50429800000000002
	.quad	0x3fe1de15ca6ca03c              # double 0.55835999999999997
	.quad	0x3fe97f08893b7d85              # double 0.79675700000000005
	.quad	0x3fc57ebaf102363b              # double 0.16793
	.quad	0x3fe7baa1511dffc5              # double 0.74153199999999997
	.quad	0x3fc3553ef6b5d463              # double 0.15103900000000001
	.quad	0x3feddfb0d51f81a6              # double 0.93355600000000005
	.quad	0x3fcd3c81908e581d              # double 0.228409
	.quad	0x3fd241dd1a21ea36              # double 0.28527000000000002
	.quad	0x3fd62aa5c5f7c676              # double 0.34635300000000002
	.quad	0x3fee9c4da9003eea              # double 0.95657999999999999
	.quad	0x3fd95147f1305964              # double 0.39558599999999999
	.quad	0x3f9dbad3a604e1e7              # double 0.029033
	.quad	0x3fa2070b8cfbfc65              # double 0.035209999999999998
	.quad	0x3fdbb81f969e3c97              # double 0.43311300000000003
	.quad	0x3fcc6aca79357604              # double 0.22200900000000001
	.quad	0x3feeba5c1c6088d7              # double 0.96024900000000001
	.quad	0x3fd707789a459104              # double 0.35983100000000001
	.quad	0x3fc872c94b380cb7              # double 0.19100300000000001
	.quad	0x3fe37e9531550ca2              # double 0.60920200000000002
	.quad	0x3fd6537e2c55c960              # double 0.34884599999999999
	.quad	0x3fe736c3760bf5d8              # double 0.72543500000000005
	.quad	0x3fa47368ad688377              # double 0.039942999999999999
	.quad	0x3fe8cbcad9ad85e0              # double 0.77487700000000003
	.quad	0x3fd3640a6b93ccd1              # double 0.302981
	.quad	0x3fe8759ee88df373              # double 0.76435799999999998
	.quad	0x3fc660c38f366949              # double 0.17482800000000001
	.quad	0x3fe1bdf090f733a9              # double 0.55443600000000004
	.quad	0x3fd6daad601ffb48              # double 0.357097
	.quad	0x3fef84167a95c854              # double 0.98487400000000002
	.quad	0x3fe4c545846e8f2a              # double 0.64908100000000002
	.quad	0x3fe9c54de7ea5f85              # double 0.80533500000000002
	.quad	0x3fe570c77dd872f3              # double 0.67001699999999997
	.quad	0x3fdad117b5286b59              # double 0.419012
	.quad	0x3fc7df86e3b46fdf              # double 0.18650900000000001
	.quad	0x3fda5a89b951c5c5              # double 0.41177599999999998
	.quad	0x3fe77bdcf0307f24              # double 0.73387000000000002
	.quad	0x3fe8b150dae3e6c5              # double 0.77164500000000003
	.quad	0x3fe139c304ccee5b              # double 0.53830100000000003
	.quad	0x3fec41d4b6a619db              # double 0.88303600000000004
	.quad	0x3fe6ab3892ee84ad              # double 0.70840099999999995
	.quad	0x3fc7c88e79aae6c9              # double 0.185808
	.quad	0x3fab358f2e05ccc9              # double 0.053143000000000003
	.quad	0x3feca62aa19439de              # double 0.89528399999999997
	.quad	0x3fe735c7cd898b2f              # double 0.72531500000000004
	.quad	0x3fd9ed45e9185cee              # double 0.40510699999999999
	.quad	0x3fe9d71f36262cba              # double 0.80750999999999995
	.quad	0x3fe6be425aee6320              # double 0.71072500000000005
	.quad	0x3fed52977c88e79b              # double 0.91633200000000004
	.quad	0x3fc1e5f30e7ff584              # double 0.13983000000000001
	.quad	0x3fef3d145d851655              # double 0.97620600000000001
	.quad	0x3fca82b628459967              # double 0.20711399999999999
	.quad	0x3fe7d74b40703298              # double 0.745031
	.quad	0x3fe91c065b63d3e5              # double 0.78467100000000001
	.quad	0x3fe86d959a30984e              # double 0.76337699999999997
	.quad	0x3fe7e40a6b93ccd1              # double 0.746587
	.quad	0x3fdddb09a671ef31              # double 0.46649400000000002
	.quad	0x3fe3d2aa5c5f7c67              # double 0.61946599999999996
	.quad	0x3fe2b2a6b0d95140              # double 0.58430800000000005
	.quad	0x3fc542dcf4623d0c              # double 0.166103
	.quad	0x3fdf467381d7dbf5              # double 0.48867500000000003
	.quad	0x3fe1de15ca6ca03c              # double 0.55835999999999997
	.quad	0x3fc84a276b7ed41b              # double 0.18976299999999999
	.quad	0x3fe72fe60c38f367              # double 0.72459700000000005
	.quad	0x3fd46a22b3892ee8              # double 0.31897799999999998
	.quad	0x3fe3a6d4801f7510              # double 0.61411499999999997
	.quad	0x3fe579096bb98c7e              # double 0.67102499999999998
	.quad	0x3fe426a22b3892ef              # double 0.62971600000000005
	.quad	0x3fe9873de1e2de87              # double 0.797759
	.quad	0x3fd8b3dd11be6e65              # double 0.38597799999999999
	.quad	0x3fe6fd71b0468449              # double 0.71843800000000002
	.quad	0x3fec74b61fe21d97              # double 0.88924700000000001
	.quad	0x3fdc9fcb0c026cc2              # double 0.44725300000000001
	.quad	0x3f9b966be7afa722              # double 0.026941
	.quad	0x3fe0f60e0eb67c28              # double 0.53003599999999995
	.quad	0x3fe28e8427418d69              # double 0.579897
	.quad	0x3fb74e22a2c23748              # double 0.091036000000000006
	.quad	0x3fcf05425f202108              # double 0.24234800000000001
	.quad	0x3fe42584f4c6e6da              # double 0.62958000000000003
	.quad	0x3fe59de481f53826              # double 0.67552400000000001
	.quad	0x3fe178a4c1ebc83b              # double 0.54597700000000005
	.quad	0x3fef3671ac14c661              # double 0.97539600000000004
	.quad	0x3fe229ac36544fe3              # double 0.56758699999999995
	.quad	0x3fedb3daf8df7a4e              # double 0.92820499999999995
	.quad	0x3fd3d1fa333764f1              # double 0.30969099999999999
	.quad	0x3fd7daf07bfe7e20              # double 0.37273800000000001
	.quad	0x3fde988094e5d5b2              # double 0.47805799999999998
	.quad	0x3fe51e34330d7386              # double 0.659937
	.quad	0x3fb2d3e920c069e8              # double 0.073546
	.quad	0x3fc3d41743e963dc              # double 0.15490999999999999
	.quad	0x3fefe83c297bfa4c              # double 0.99709899999999995
	.quad	0x3fe397edc7ef177a              # double 0.61229599999999995
	.quad	0x3fdf4aa9717df19d              # double 0.48893199999999998
	.quad	0x3fc8ef88b9778573              # double 0.19481000000000001
	.quad	0x3fcf89e774eebf66              # double 0.246396
	.quad	0x3fc0a6ca03c4b09f              # double 0.13009000000000001
	.quad	0x3fca6d612c6ac216              # double 0.20646300000000001
	.quad	0x3fe75b61bb05faec              # double 0.72990500000000003
	.quad	0x3feb449fd7a13c25              # double 0.85212699999999997
	.quad	0x3fa83a322af57710              # double 0.047319
	.quad	0x3fea5fd694ccab3f              # double 0.82419900000000001
	.quad	0x3fcc224edf612407              # double 0.21979699999999999
	.quad	0x3fe986c226809d49              # double 0.79769999999999996
	.quad	0x3fed29eb2074ea8e              # double 0.91136700000000004
	.quad	0x3fb3633ce63a5c1c              # double 0.075732999999999995
	.quad	0x3fdd00c9539b8887              # double 0.45317299999999999
	.quad	0x3fe20eda22f6a50d              # double 0.56431299999999995
	.quad	0x3fe5c64dc22ab25b              # double 0.68045699999999998
	.quad	0x3fe55ce18266772d              # double 0.66758799999999996
	.quad	0x3fe86fa3fcc9ea9a              # double 0.76362799999999997
	.quad	0x3fdf61fe21d96e9c              # double 0.49035600000000001
	.quad	0x3fb8a915379fa97e              # double 0.096329999999999998
	.quad	0x3fc9e33acd5b6806              # double 0.20224700000000001
	.quad	0x3fb5774256bca537              # double 0.083850999999999995
	.quad	0x3fda4d26fa3fcc9f              # double 0.41095900000000002
	.quad	0x3fdadf6db940fece              # double 0.41988700000000001
	.quad	0x3fe16b3dd11be6e6              # double 0.54434099999999996
	.quad	0x3fdf728a6117720d              # double 0.49136600000000002
	.quad	0x3feb8d9f90539fba              # double 0.86103799999999997
	.quad	0x3fea18915bdd7668              # double 0.81549899999999997
	.quad	0x3fe12a9b499d0204              # double 0.53645100000000001
	.quad	0x3feb5a5119ce075f              # double 0.85477499999999995
	.quad	0x3fcaff08893b7d85              # double 0.21090800000000001
	.quad	0x3fba31f8a0902de0              # double 0.102325
	.quad	0x3feb4d9c6b053198              # double 0.85322399999999998
	.quad	0x3fdc9a5ebb7739f3              # double 0.44692199999999999
	.quad	0x3f8e56cd6c2efd44              # double 0.014814000000000001
	.quad	0x3fe1cbd987c6327f              # double 0.55613400000000002
	.quad	0x3fd2214f0520d131              # double 0.28328300000000001
	.quad	0x3fe5fc7607c419a0              # double 0.68706800000000001
	.quad	0x3fe57de2ef4e0115              # double 0.67161700000000002
	.quad	0x3fef01c2e33eff19              # double 0.96896499999999996
	.quad	0x3fb994e1a3f4666f              # double 0.099928000000000003
	.quad	0x3fe6005814940bbb              # double 0.68754199999999999
	.quad	0x3fdeef0281ba7fc3              # double 0.48333799999999999
	.quad	0x3fe02be48a58b3f6              # double 0.50535799999999997
	.quad	0x3fe8122b7baecd08              # double 0.75221800000000005
	.quad	0x3fdb9f8c21e1d218              # double 0.43161300000000002
	.quad	0x3fe2ec4e7253da73              # double 0.59134600000000004
	.quad	0x3fc532b55ef1fddf              # double 0.16561000000000001
	.quad	0x3fede7f2c3009b30              # double 0.93456399999999995
	.quad	0x3fee531769a91106              # double 0.94764300000000001
	.quad	0x3fe2a6527a20578e              # double 0.58280299999999996
	.quad	0x3fd9d4d834091c08              # double 0.40361599999999997
	.quad	0x3fd1493c89f40a28              # double 0.27009499999999997
	.quad	0x3fe423e7d135115a              # double 0.62938300000000003
	.quad	0x3fd37c200c0f01fc              # double 0.30445100000000003
	.quad	0x3fe3def62f9ca5be              # double 0.62096700000000005
	.quad	0x3fb3ba6698bb4d49              # double 0.077063000000000006
	.quad	0x3fda8650e779207d              # double 0.41444799999999998
	.quad	0x3fe2edc3bd599243              # double 0.59152400000000005
	.quad	0x3febc2b0ea18372e              # double 0.86751599999999995
	.quad	0x3fec3a08398a6549              # double 0.88208399999999998
	.quad	0x3fe435286b59146e              # double 0.63148899999999997
	.quad	0x3fbd12a94ff0025c              # double 0.113566
	.quad	0x3fe23a0e8427418d              # double 0.56958699999999995
	.quad	0x3fdd84cad57bc7f7              # double 0.46122999999999997
	.quad	0x3fe989d8c6d612c7              # double 0.79807700000000004
	.quad	0x3fcdb3f20a73f749              # double 0.23205400000000001
	.quad	0x3fe74083126e978d              # double 0.72662499999999997
	.quad	0x3fcf7963992c8c50              # double 0.245892
	.quad	0x3fe130a6fc58ab93              # double 0.53718900000000003
	.quad	0x3fe27ad8e4324420              # double 0.57749600000000001
	.quad	0x3fc2bb01c92ddbdb              # double 0.14633199999999999
	.quad	0x3feb133c1ce6c094              # double 0.84609800000000001
	.quad	0x3fc9ec4e7253da73              # double 0.20252400000000001
	.quad	0x3fef65bc87db2b34              # double 0.98116899999999995
	.quad	0x3fd271e29b6b2af1              # double 0.28820099999999998
	.quad	0x3fec5b899392189c              # double 0.88617400000000001
	.quad	0x3fc0517614595358              # double 0.12748599999999999
	.quad	0x3fe8737fbefd0071              # double 0.76409899999999997
	.quad	0x3fe738bac710cb29              # double 0.72567499999999996
	.quad	0x3fe94a83b1d0c804              # double 0.79034599999999999
	.quad	0x3fe58101f31f46ed              # double 0.67199799999999998
	.quad	0x3fd95f41aef6f8f0              # double 0.39643899999999999
	.quad	0x3fe7973fb7a5f41b              # double 0.73721300000000001
	.quad	0x3fe39ab29e4d5d81              # double 0.61263400000000001
	.quad	0x3fb1790752da9867              # double 0.068252999999999994
	.quad	0x3fcf25cc426351df              # double 0.243341
	.quad	0x3fd825cc426351df              # double 0.377307
	.quad	0x3fdd9e01de269164              # double 0.46276899999999999
	.quad	0x3fc2410b630a9153              # double 0.14260999999999999
	.quad	0x3fd5154c985f06f7              # double 0.32942500000000002
	.quad	0x3fec3de1e2de8709              # double 0.88255399999999995
	.quad	0x3fca1fc8f32378ab              # double 0.204095
	.quad	0x3f9cc100e6afcce2              # double 0.028080000000000001
	.quad	0x3fde5e310dbf0564              # double 0.474499
	.quad	0x3fe24d31769a9110              # double 0.57192299999999996
	.quad	0x3fd9bbba55d1c3ad              # double 0.40208300000000002
	.quad	0x3fcd3ade225fa659              # double 0.22835900000000001
	.quad	0x3fd713cab81f969e              # double 0.36058299999999999
	.quad	0x3fe09314445aa2e4              # double 0.51795400000000003
	.quad	0x3fd7dc8fb86f47b6              # double 0.37283699999999997
	.quad	0x3fe270d62bf11f92              # double 0.57627399999999995
	.quad	0x3fe4bb0c4588a04d              # double 0.64783299999999999
	.quad	0x3fcb69e3c968943e              # double 0.214169
	.quad	0x3fc4980b242070b9              # double 0.16089000000000001
	.quad	0x3fe6d58644523f68              # double 0.713565
	.quad	0x3fe809a459103c8e              # double 0.75117699999999998
	.quad	0x3fec1bc558644524              # double 0.87839
	.quad	0x3fe3d4cdb7ae5797              # double 0.61972700000000003
	.quad	0x3fcece4ead0c3d25              # double 0.240671
	.quad	0x3fd5ecb74ddf86e4              # double 0.34257300000000002
	.quad	0x3fed4bf8fcd67fd4              # double 0.915524
	.quad	0x3fe58485a0be5109              # double 0.672427
	.quad	0x3fccfe0ce0b912dc              # double 0.22650300000000001
	.quad	0x3fe7af4cf4a558ea              # double 0.74014899999999995
	.quad	0x3fe941d4b6a619db              # double 0.78928600000000004
	.quad	0x3fe876f8f041461b              # double 0.76452299999999995
	.quad	0x3fee06e7e62dc6e3              # double 0.93834300000000004
	.quad	0x3fe7cf54d1e96c40              # double 0.74405900000000003
	.quad	0x3fd3c5692b3cc4ac              # double 0.30892399999999998
	.quad	0x3fe0874213a0c6b5              # double 0.51651100000000005
	.quad	0x3fdb40d4dc65c704              # double 0.42583199999999999
	.quad	0x3fdabf0563ed0f62              # double 0.41790899999999997
	.quad	0x3fddee957470eb25              # double 0.46768700000000002
	.quad	0x3fe3f143393ab431              # double 0.623201
	.quad	0x3fd378fabda0dfdf              # double 0.304259
	.quad	0x3fd1ab53d640e9d5              # double 0.27608199999999999
	.quad	0x3fd31ea78af3e469              # double 0.29874600000000001
	.quad	0x3f7e28aa433508f6              # double 0.0073629999999999998
	.quad	0x3fbd11f0c34c1a8b              # double 0.113555
	.quad	0x3fd897e132b55ef2              # double 0.38427
	.quad	0x3fd6a847b24638c9              # double 0.35402099999999997
	.quad	0x3fe80de8f6cefed6              # double 0.75169799999999998
	.quad	0x3feb13d102bc72e2              # double 0.84616899999999995
	.quad	0x3fe5f14fce746cb9              # double 0.68570699999999996
	.quad	0x3fa6edaa92e62132              # double 0.044782000000000002
	.quad	0x3fdc3e81450efdca              # double 0.44131500000000001
	.quad	0x3fe8352c9d16fc9c              # double 0.75649100000000002
	.quad	0x3fe2e05ccc89b0ee              # double 0.58988799999999997
	.quad	0x3fe377a7008a697b              # double 0.60835600000000001
	.quad	0x3fc1a0c6b484d76b              # double 0.13771900000000001
	.quad	0x3fe58b04ab606b7b              # double 0.67322000000000004
	.quad	0x3faa8650e779207d              # double 0.051805999999999998
	.quad	0x3fccedd4845132f8              # double 0.22600799999999999
	.quad	0x3fd82339c0ebedfa              # double 0.37714999999999999
	.quad	0x3fd9f36262cba733              # double 0.40548000000000001
	.quad	0x3fe6b14a90470a81              # double 0.70914200000000005
	.quad	0x3febabf5515054ac              # double 0.86474099999999998
	.quad	0x3fce8ec52a411c2a              # double 0.238732
	.quad	0x3fecd054ac29bf16              # double 0.90043099999999998
	.quad	0x3fb36683c297bfa5              # double 0.075783000000000003
	.quad	0x3fe78164840e171a              # double 0.734545
	.quad	0x3fe34f54d1e96c40              # double 0.60343400000000003
	.quad	0x3fee8943e1006078              # double 0.95425599999999999
	.quad	0x3fe2d7603925bb7b              # double 0.58879099999999995
	.quad	0x3fe97fda4052d667              # double 0.79685700000000004
	.quad	0x3fe8092ee84ad795              # double 0.75112100000000004
	.quad	0x3fc0dbf0563ed0f6              # double 0.131712
	.quad	0x3fb18548a9bcfd4c              # double 0.068440000000000001
	.quad	0x3fcd37fbefd00714              # double 0.228271
	.quad	0x3fea57a355043e53              # double 0.82319799999999999
	.quad	0x3fcfbc1acde19fc3              # double 0.24792800000000001
	.quad	0x3fd9c9a77e5eaab0              # double 0.40293299999999999
	.quad	0x3fe6d332acfb762e              # double 0.71328100000000005
	.quad	0x3fd8add9c27e9531              # double 0.38561099999999998
	.quad	0x3fe1ef62f9ca5bd9              # double 0.56047199999999997
	.quad	0x3fc66cca2db61bb0              # double 0.17519499999999999
	.quad	0x3fd336501e2584f5              # double 0.30019000000000001
	.quad	0x3fe48216c61522a7              # double 0.64088000000000001
	.quad	0x3fd058bc59b8023a              # double 0.25541599999999998
	.quad	0x3fd40be9424e5929              # double 0.31322699999999998
	.quad	0x3fd23d4ae429e0a4              # double 0.28499099999999999
	.quad	0x3fec082cf52b90a8              # double 0.87599800000000005
	.quad	0x3fd2eea209aaa3ad              # double 0.29581499999999999
	.quad	0x3fe3d0917d6b65aa              # double 0.61921000000000004
	.quad	0x3fd91ec0b567557a              # double 0.39250200000000002
	.quad	0x3fd48deb0fadf2ed              # double 0.321162
	.quad	0x3feb48711d798d8b              # double 0.85259300000000005
	.quad	0x3fd7bdad7518b0d1              # double 0.370952
	.quad	0x3faf121ab4b72c52              # double 0.060685000000000003
	.quad	0x3fdbb65ecc3e3194              # double 0.433006
	.quad	0x3fd6a71de69ad42c              # double 0.35394999999999999
	.quad	0x3fd40c4588a04d12              # double 0.313249
	.quad	0x3fb6fae7924af0bf              # double 0.089765999999999999
	.quad	0x3fe65de37585be1b              # double 0.69896100000000005
	.quad	0x3fe367be553ac4f8              # double 0.60641400000000001
	.quad	0x3fe25a250f840182              # double 0.57350400000000001
	.quad	0x3fd8bd6e8af81627              # double 0.38656200000000002
	.quad	0x3fb0f7985271bcdc              # double 0.066278000000000004
	.quad	0x3fd6fa0d77b7c782              # double 0.359012
	.quad	0x3fe0b5d894812be5              # double 0.52219800000000005
	.quad	0x3fd7a009f623076c              # double 0.369143
	.quad	0x3fe4f61cbccf28c8              # double 0.65504300000000004
	.quad	0x3fb5acffa7eb6bf4              # double 0.084670999999999996
	.quad	0x3fd9fbefd00713f0              # double 0.40600199999999997
	.quad	0x3fdd25f633ce63a6              # double 0.45544200000000001
	.quad	0x3fe26c8f75536934              # double 0.57575200000000004
	.quad	0x3fedb21c475e6363              # double 0.92799200000000004
	.quad	0x3fdeace67d77fae3              # double 0.47930299999999998
	.quad	0x3fe213f290abb44e              # double 0.56493499999999996
	.quad	0x3fea63da2f8bdec6              # double 0.82468900000000001
	.quad	0x3fe0754b05b7cfe6              # double 0.51431800000000005
	.quad	0x3feb1240746455eb              # double 0.84597800000000001
	.quad	0x3fe9706f69446738              # double 0.79497499999999999
	.quad	0x3fdd935b91f70de9              # double 0.462119
	.quad	0x3fec361bb05faebc              # double 0.88160499999999997
	.quad	0x3fe399e0e736049f              # double 0.61253400000000002
	.quad	0x3fd00b88ca3e7d13              # double 0.25070399999999998
	.quad	0x3fe6e9a6f826edab              # double 0.71602200000000005
	.quad	0x3fc2b8305d95dd4c              # double 0.14624599999999999
	.quad	0x3fd43f141205bc02              # double 0.31635000000000002
	.quad	0x3fdc202d9cf13cef              # double 0.43946400000000002
	.quad	0x3fde038194c01605              # double 0.46896399999999999
	.quad	0x3fe1c78e9f6a93f3              # double 0.55561000000000005
	.quad	0x3fe449e236c15d2d              # double 0.634019
	.quad	0x3fcfcd1c7de5082d              # double 0.248447
	.quad	0x3fef4197e5647347              # double 0.97675699999999998
	.quad	0x3fd283fd50225743              # double 0.28930600000000001
	.quad	0x3fe7b700474d9c6b              # double 0.741089
	.quad	0x3fe33e920c069e80              # double 0.60138800000000003
	.quad	0x3fd288f861a60d45              # double 0.28960999999999998
	.quad	0x3fefc25f202107b8              # double 0.99247700000000005
	.quad	0x3fb1d96e9bbf0dc7              # double 0.069723999999999994
	.quad	0x3fce387df5cf2496              # double 0.236099
	.quad	0x3fdaea5b530ced4e              # double 0.42055399999999998
	.quad	0x3fdd3f811f4f50a0              # double 0.45700099999999999
	.quad	0x3fdb31a08bfc2225              # double 0.424904
	.quad	0x3fdd3c5bd0e12e84              # double 0.45680900000000002
	.quad	0x3fa4e7ee9142b303              # double 0.040832
	.quad	0x3fc312e40852b4d9              # double 0.14901400000000001
	.quad	0x3fe372becedd4845              # double 0.60775699999999999
	.quad	0x3faa9c12f09d8c6d              # double 0.051971999999999997
	.quad	0x3fd3aeb3dd11be6e              # double 0.30753799999999998
	.quad	0x3fdb6451b93037d6              # double 0.42799799999999999
	.quad	0x3fe5dee78183f91e              # double 0.68345999999999996
	.quad	0x3fe65fd694ccab3f              # double 0.69919900000000001
	.quad	0x3fe2a28dc981beb2              # double 0.58234300000000006
	.quad	0x3fe83ae46cfc829d              # double 0.757189
	.quad	0x3feb6b80ecfa69be              # double 0.856873
	.quad	0x3fe76909aed56b01              # double 0.731572
	.quad	0x3f7f2ba9d1f60179              # double 0.0076099999999999996
	.quad	0x3fe01439de481f54              # double 0.50246900000000005
	.quad	0x3febe4d5d80e496f              # double 0.87168400000000001
	.quad	0x3fe6ffcfc3f811f5              # double 0.718727
	.quad	0x3feefeb8d8234224              # double 0.96859399999999995
	.quad	0x3fed415d2d01c0ca              # double 0.91422899999999996
	.quad	0x3fdf0dcb9a9da598              # double 0.48521700000000001
	.quad	0x3fe32b92c061847f              # double 0.59906899999999996
	.quad	0x3fe1515054ac29bf              # double 0.54117599999999999
	.quad	0x3fe770520d130dfa              # double 0.73246100000000003
	.quad	0x3feeb1ec0b567558              # double 0.95921900000000004
	.quad	0x3fed2109d0635a42              # double 0.91028299999999995
	.quad	0x3fe1c54bcf0b6b6e              # double 0.55533399999999999
	.quad	0x3fee11c8eabffcdb              # double 0.93967100000000003
	.quad	0x3fe9365881a15550              # double 0.78788400000000003
	.quad	0x3fee0f5a1016ce79              # double 0.93937400000000004
	.quad	0x3fe4d158b827fa1a              # double 0.65055499999999999
	.quad	0x3feae0d23d4f15e8              # double 0.83994400000000002
	.quad	0x3fc59dc2f405f6ba              # double 0.168877
	.quad	0x3f845f17bd8be729              # double 0.0099469999999999992
	.quad	0x3fe47a5b0ff10ecb              # double 0.63993599999999995
	.quad	0x3fda0c069e7fb268              # double 0.40698400000000001
	.quad	0x3fd99d2391d57ffa              # double 0.40021600000000002
	.quad	0x3fd5eb8d82342246              # double 0.34250199999999997
	.quad	0x3fc9d230b9dc2f40              # double 0.20172699999999999
	.quad	0x3fdb4a4d2b2bfdb5              # double 0.42641000000000001
	.quad	0x3fe2eee0f3cb3e57              # double 0.59165999999999996
	.quad	0x3fe9858bc59b8024              # double 0.79755200000000003
	.quad	0x3fef05058dde7a74              # double 0.96936299999999997
	.quad	0x3fdb323fee2c98e5              # double 0.42494199999999999
	.quad	0x3fdc396073de1e2e              # double 0.44100200000000001
	.quad	0x3fd3036006d0d499              # double 0.29708099999999998
	.quad	0x3fe8d4f9c1f85d74              # double 0.77599799999999996
	.quad	0x3fb040e1719f7f8d              # double 0.063490000000000005
	.quad	0x3fdb4b662fdfc19c              # double 0.42647699999999999
	.quad	0x3fceaab042528ae7              # double 0.23958399999999999
	.quad	0x3fc2332f01754b06              # double 0.14218700000000001
	.quad	0x3fde8f75536933a0              # double 0.47750599999999999
	.quad	0x3fe4c165907d9125              # double 0.64860799999999996
	.quad	0x3fd9ff36ac647779              # double 0.40620200000000001
	.quad	0x3fd6c115df6555c5              # double 0.35553499999999999
	.quad	0x3fe9251c193b3a69              # double 0.78578000000000003
	.quad	0x3fe1f3cd573647bb              # double 0.56101100000000004
	.quad	0x3fe21cb039ef0f17              # double 0.56600200000000001
	.quad	0x3fb655f3519bd406              # double 0.087248999999999993
	.quad	0x3fd366277c45cbbc              # double 0.30310999999999999
	.quad	0x3fe7a435696e58a3              # double 0.73879499999999998
	.quad	0x3fdb297396d0917d              # double 0.42440499999999998
	.quad	0x3fe23d7d3910c2c6              # double 0.57000600000000001
	.quad	0x3fe5f631b584b1ab              # double 0.686303
	.quad	0x3fc9de7a743a6480              # double 0.202102
	.quad	0x3fd5bcf0b6b6e0d2              # double 0.33965699999999999
	.quad	0x3fda5f0b28522ea1              # double 0.412051
	.quad	0x3fe36a50d6b228dd              # double 0.60672800000000005
	.quad	0x3fca88a47ecfe9b8              # double 0.20729500000000001
	.quad	0x3fb3a8a3f8982cb2              # double 0.076791999999999999
	.quad	0x3feecfbdad7518b1              # double 0.96285900000000002
	.quad	0x3feb589efd86a8fc              # double 0.85456799999999999
	.quad	0x3fd58adab9f559b4              # double 0.33660000000000001
	.quad	0x3fe65c11e42e1262              # double 0.698739
	.quad	0x3fe500b029281776              # double 0.65633399999999997
	.quad	0x3fa6f36ef8055fbb              # double 0.044825999999999998
	.quad	0x3fe397507e9d94d1              # double 0.61222100000000002
	.quad	0x3fd629bae46cfc83              # double 0.34629700000000002
	.quad	0x3fe1ce50c5eb313c              # double 0.55643500000000001
	.quad	0x3fc492ccf6be37df              # double 0.16073000000000001
	.quad	0x3fc15ce18266772d              # double 0.13564699999999999
	.quad	0x3fe694317acc4ef9              # double 0.70559000000000005
	.quad	0x3f8c560c7c0f4517              # double 0.013835999999999999
	.quad	0x3fbd39da16616b55              # double 0.114164
	.quad	0x3fe97c2656abde40              # double 0.79640500000000003
	.quad	0x3fde804534bd76ee              # double 0.47657899999999997
	.quad	0x3fe588e15011904b              # double 0.67295899999999997
	.quad	0x3fd645ae5ffa3b9b              # double 0.34800300000000001
	.quad	0x3fcb20d130df9bdc              # double 0.21193899999999999
	.quad	0x3fe5d8f2e05ccc8a              # double 0.68273300000000003
	.quad	0x3fdf1e96c3fc43b3              # double 0.48624200000000001
	.quad	0x3fe5e1cbccf28c7a              # double 0.683813
	.quad	0x3fc84f227d028a1e              # double 0.189915
	.quad	0x3fdfe874c8ffb8b2              # double 0.49856299999999998
	.quad	0x3faa93af74cd3177              # double 0.051908000000000003
	.quad	0x3fe9dbb7b6bb1290              # double 0.80807099999999998
	.quad	0x3fc7fcc9ea9a3d2e              # double 0.18740200000000001
	.quad	0x3fd75bf26f1dc50d              # double 0.36498700000000001
	.quad	0x3fcdf572de43ed96              # double 0.23405300000000001
	.quad	0x3f5372a38b8ae31d              # double 0.0011869999999999999
	.quad	0x3fa409a240314877              # double 0.039135999999999997
	.quad	0x3fe39dc50ce4ead1              # double 0.61300900000000003
	.quad	0x3fdc4ee7c49fd7a1              # double 0.44231599999999999
	.quad	0x3fe2392c061847f5              # double 0.56947899999999996
	.quad	0x3fe3e96e58a32f45              # double 0.62224500000000005
	.quad	0x3feb55000c9539b9              # double 0.85412600000000005
	.quad	0x3fd3b8305d95dd4c              # double 0.30811699999999997
	.quad	0x3fa28e2e2b8c75c5              # double 0.036241000000000002
	.quad	0x3fd8ab8e8ea39c52              # double 0.38547100000000001
	.quad	0x3fe266a76965f527              # double 0.57503099999999996
	.quad	0x3fd037da61e0c5a8              # double 0.253409
	.quad	0x3fefc2dcf4623d0c              # double 0.992537
	.quad	0x3feae35a426bb55b              # double 0.84025300000000003
	.quad	0x3f9f04ddb5525cc4              # double 0.030291999999999999
	.quad	0x3fdf0346dc5d6388              # double 0.48457499999999998
	.quad	0x3fee4764adff822c              # double 0.94621500000000002
	.quad	0x3fd27021d10b1fef              # double 0.28809400000000002
	.quad	0x3fee311a543f1c76              # double 0.94349400000000005
	.quad	0x3fc2d466f5019f3c              # double 0.14710699999999999
	.quad	0x3fe86eac8605681f              # double 0.76351000000000002
	.quad	0x3fa6f34d6a161e4f              # double 0.044824999999999997
	.quad	0x3fdc352a84380885              # double 0.440745
	.quad	0x3fe349ba5e353f7d              # double 0.60275000000000001
	.quad	0x3feffba6698bb4d5              # double 0.99946900000000005
	.quad	0x3fc262aa19439de5              # double 0.14363600000000001
	.quad	0x3fee88e79aae6c8f              # double 0.95421199999999995
	.quad	0x3fe64a148ba83f4f              # double 0.69654300000000002
	.quad	0x3fda88a8b08dd1e5              # double 0.41459099999999999
	.quad	0x3fe93f76a2f48c2e              # double 0.78899699999999995
	.quad	0x3fce3fbbd7b2031d              # double 0.23632
	.quad	0x3fd5b0ab2e1693c0              # double 0.33890799999999999
	.quad	0x3fe1ebb341e14be0              # double 0.56002200000000002
	.quad	0x3fd6fb3743632c1f              # double 0.35908299999999999
	.quad	0x3fc628bb0a2ca9ac              # double 0.17311799999999999
	.quad	0x3fd4bc0e38a7e73a              # double 0.32397799999999999
	.quad	0x3fe91bde82d7b635              # double 0.78465200000000002
	.quad	0x3fec87bfe7e1fc09              # double 0.891571
	.quad	0x3febdab3aabcd78c              # double 0.87044699999999997
	.quad	0x3fedbbfd71b04684              # double 0.92919799999999996
	.quad	0x3f9059641f644956              # double 0.015966000000000001
	.quad	0x3fc8060fe47991bc              # double 0.18768499999999999
	.quad	0x3fede5fd8adab9f5              # double 0.93432499999999996
	.quad	0x3fb7e3f359ff4fd7              # double 0.093322000000000002
	.quad	0x3fe09691a75cd0bb              # double 0.51837999999999995
	.quad	0x3fe2b700474d9c6b              # double 0.584839
	.quad	0x3fe9a6bd6e8af816              # double 0.80160399999999998
	.quad	0x3f91ae70c1333b97              # double 0.017267000000000001
	.quad	0x3fc31e85fd04a2fd              # double 0.149369
	.quad	0x3fdd7c73eee52589              # double 0.46072099999999999
	.quad	0x3fed2495e17e34b9              # double 0.91071599999999997
	.quad	0x3fdf2d05f2884838              # double 0.48712299999999997
	.quad	0x3faafcefaa4766c7              # double 0.052711000000000001
	.quad	0x3fdbd20afa2f05a7              # double 0.434695
	.quad	0x3fc876295208e150              # double 0.191106
	.quad	0x3fed8d2e514c22ee              # double 0.92348399999999997
	.quad	0x3fbafc371da37ef6              # double 0.105411
	.quad	0x3fd6fd7a13c254a4              # double 0.35922100000000001
	.quad	0x3fdd33f42352eb5f              # double 0.45629599999999998
	.quad	0x3fe7dd11be6e6538              # double 0.74573599999999995
	.quad	0x3fe21f2fdb8fde2f              # double 0.566307
	.quad	0x3fcdd9ba1b1960fa              # double 0.233207
	.quad	0x3fea2808c8259e1f              # double 0.81738699999999997
	.quad	0x3fe975f6fd21ff2e              # double 0.79564999999999997
	.quad	0x3fc7cfa26a22b389              # double 0.18602399999999999
	.quad	0x3faf839cd8127b2d              # double 0.061551000000000002
	.quad	0x3fd71e364bec679d              # double 0.36121900000000001
	.quad	0x3fdbbc7b45f17bd9              # double 0.43337900000000001
	.quad	0x3fef0cfe154434e3              # double 0.97033599999999997
	.quad	0x3fc761aa3f034b0e              # double 0.182668
	.quad	0x3fea93dfb0d51f82              # double 0.83055100000000004
	.quad	0x3fdea23bff8a8f3b              # double 0.47865200000000002
	.quad	0x3fe003eea209aaa4              # double 0.50048000000000004
	.quad	0x3fe1007bbb62413e              # double 0.53130900000000003
	.quad	0x3fd79717df19d66b              # double 0.36859700000000001
	.quad	0x3fe93003686a4ca5              # double 0.78711100000000001
	.quad	0x3fd466516db0dd83              # double 0.318745
	.quad	0x3feec1eff9f87f02              # double 0.96117399999999997
	.quad	0x3fed5b940fecdd0e              # double 0.91742900000000005
	.quad	0x3fe934395810624e              # double 0.78762500000000002
	.quad	0x3fe2c4fc1df3300e              # double 0.58654600000000001
	.quad	0x3fec62bf11f926c8              # double 0.88705400000000001
	.quad	0x3fd6c7325918a00a              # double 0.355908
	.quad	0x3fc627631b584b1b              # double 0.17307700000000001
	.quad	0x3fc90f6273929ed4              # double 0.19578200000000001
	.quad	0x3fe8aba387592535              # double 0.77095199999999997
	.quad	0x3fba3c968943e100              # double 0.10248699999999999
	.quad	0x3fe79ac9afe1da7b              # double 0.737645
	.quad	0x3fe771bcdbbe0158              # double 0.73263400000000001
	.quad	0x3fd78e8ea39c51db              # double 0.36807600000000001
	.quad	0x3fcc30c23fab10ba              # double 0.22023799999999999
	.quad	0x3fe8d8f2e05ccc8a              # double 0.77648300000000003
	.quad	0x3fe3eaab042528ae              # double 0.62239599999999995
	.quad	0x3fe61d57ff9b5632              # double 0.69108199999999997
	.quad	0x3fd417dae81882ae              # double 0.31395600000000001
	.quad	0x3fe3cb5350092ccf              # double 0.61856999999999995
	.quad	0x3fe02ee631f8a090              # double 0.50572499999999998
	.quad	0x3fe63886594af4f1              # double 0.69440000000000002
	.quad	0x3f94fa8b4bf8fcd6              # double 0.020486999999999998
	.quad	0x3faff7164c729f5a              # double 0.062432000000000001
	.quad	0x3fa525aab4741073              # double 0.041302999999999999
	.quad	0x3fd32e7b3d8e0008              # double 0.29971199999999998
	.quad	0x3fef19157abb8801              # double 0.971812
	.quad	0x3fd69e492bc2fc69              # double 0.35341099999999998
	.quad	0x3fdcc9de05037500              # double 0.44982100000000003
	.quad	0x3fec5d52c16df3f9              # double 0.88639199999999996
	.quad	0x3fd6ecaeea63b689              # double 0.35819600000000001
	.quad	0x3fed0d3ae685db77              # double 0.90786500000000003
	.quad	0x3feb7f9f87f023ea              # double 0.85932900000000001
	.quad	0x3fc926f1dc50ce4f              # double 0.19650100000000001
	.quad	0x3fcbe8bc169c23b8              # double 0.21804000000000001
	.quad	0x3fd707a6bd6e8af8              # double 0.359842
	.quad	0x3fb48c0ce91c8eac              # double 0.080262
	.quad	0x3fedabe8bc169c24              # double 0.92723500000000003
	.quad	0x3fc9bb9cf9a06a6e              # double 0.20103799999999999
	.quad	0x3fe98ccbc05d52c1              # double 0.79843699999999995
	.quad	0x3f9681a9b8cb8e08              # double 0.021978999999999999
	.quad	0x3fe6e60c38f36695              # double 0.71558200000000005
	.quad	0x3fded55a3a08398a              # double 0.48177199999999998
	.quad	0x3fdf7d7c2ca148bb              # double 0.49203400000000003
	.quad	0x3fc7b9e060fe4799              # double 0.18536
	.quad	0x3feea9845dc83233              # double 0.95819299999999996
	.quad	0x3fe8e9af5ba2be06              # double 0.77852600000000005
	.quad	0x3fc6a055757d5a9f              # double 0.17676800000000001
	.quad	0x3fd0ec5b078d92fb              # double 0.26442599999999999
	.quad	0x3fef810c6f7a0b5f              # double 0.98450300000000001
	.quad	0x3fe75985ad538ac2              # double 0.72967800000000005
	.quad	0x3fea4aafbc1acde2              # double 0.82161700000000004
	.quad	0x3fdac7b890d5a5b9              # double 0.41843999999999998
	.quad	0x3fcdd3bafd976ff4              # double 0.23302400000000001
	.quad	0x3fe8b9e060fe4799              # double 0.77268999999999999
	.quad	0x3fc550a02b841249              # double 0.166523
	.quad	0x3fe41b3f20a73f75              # double 0.62832600000000005
	.quad	0x3fa0e410b630a915              # double 0.032989999999999998
	.quad	0x3fe828e92d55a3a1              # double 0.75499400000000005
	.quad	0x3fea4c33b5393251              # double 0.82180200000000003
	.quad	0x3fdd54c985f06f69              # double 0.45829999999999999
	.quad	0x3fce8f8e7ddca4b1              # double 0.238756
	.quad	0x3febf8897e996313              # double 0.874089
	.quad	0x3fc3e8ccdd93c46e              # double 0.15554200000000001
	.quad	0x3fd3e15ca6ca03c5              # double 0.31063000000000002
	.quad	0x3fc1f06705c896dd              # double 0.140149
	.quad	0x3fd9f355cd91eeaa              # double 0.40547699999999998
	.quad	0x3fb067dfe32a0664              # double 0.064085000000000003
	.quad	0x3fe27e73a365cb36              # double 0.57793600000000001
	.quad	0x3fd2b899392189be              # double 0.29251700000000003
	.quad	0x3fe5169a0ad8a116              # double 0.65900899999999996
	.quad	0x3fe8546f587d6f97              # double 0.76030699999999996
	.quad	0x3fb09afe1da7b0b4              # double 0.064865000000000006
	.quad	0x3fd3bfe7e1fc08fa              # double 0.30858799999999997
	.quad	0x3fee5dc1e7967caf              # double 0.94894500000000004
	.quad	0x3fc37eaa2a0a9585              # double 0.15230299999999999
	.quad	0x3fed7644955b4678              # double 0.92068700000000003
	.quad	0x3fee07d6f9767903              # double 0.93845699999999999
	.quad	0x3fdc30f8c64fdb0a              # double 0.44048900000000002
	.quad	0x3fdb4b662fdfc19c              # double 0.42647699999999999
	.quad	0x3fe130f49491f2dc              # double 0.53722599999999998
	.quad	0x3fe5a326e115592e              # double 0.67616600000000004
	.quad	0x3fd90b5aa715831f              # double 0.391318
	.quad	0x3fd48d5842b734b5              # double 0.321127
	.quad	0x3fe8883558a76102              # double 0.76662699999999995
	.quad	0x3fe7fecdd0d8cb08              # double 0.74985400000000002
	.quad	0x3fd4a5a038194c01              # double 0.32260899999999998
	.quad	0x3fd339ef0f16f438              # double 0.30041099999999998
	.quad	0x3fe68472c0e7bc3c              # double 0.70366799999999996
	.quad	0x3fd403eea209aaa4              # double 0.31274000000000002
	.quad	0x3fc47c957cd466f5              # double 0.160052
	.quad	0x3fe31f0e4da09cc3              # double 0.59754099999999999
	.quad	0x3fea297bfa4c61d8              # double 0.81756399999999996
	.quad	0x3feb7af640639d5e              # double 0.85875999999999997
	.quad	0x3fdbc1b10fd7e458              # double 0.433697
	.quad	0x3fdaf75104d551d7              # double 0.42134500000000003
	.quad	0x3fe0f1971c10d7bf              # double 0.52949100000000004
	.quad	0x3f978b3700474d9c              # double 0.022991999999999999
	.quad	0x3fecee9dd7ecbb80              # double 0.90412800000000004
	.quad	0x3fd5c7b890d5a5b9              # double 0.34031499999999998
	.quad	0x3fe35aa4fca42aed              # double 0.60481499999999999
	.quad	0x3fd5ced4e4c942d5              # double 0.34074900000000002
	.quad	0x3f81a11233df2a9d              # double 0.0086079999999999993
	.quad	0x3fe6daf07bfe7e20              # double 0.71422600000000003
	.quad	0x3fe5358f2e05ccc9              # double 0.66278800000000004
	.quad	0x3fd5e9ff0cbaf966              # double 0.34240700000000002
	.quad	0x3fd36861e92923e6              # double 0.30324600000000002
	.quad	0x3fe677e80389f83c              # double 0.70213700000000001
	.quad	0x3f983f91e646f156              # double 0.02368
	.quad	0x3fdf4b8bef8ceb35              # double 0.48898599999999998
	.quad	0x3fcfc36976bc1f00              # double 0.24815100000000001
	.quad	0x3fd6049667b5f1bf              # double 0.34403
	.quad	0x3fec5f56a7ac81d4              # double 0.88663800000000003
	.quad	0x3feac523f67f4dbe              # double 0.836565
	.quad	0x3fecbc5154866a12              # double 0.89798800000000001
	.quad	0x3fe48407cc7d1bb5              # double 0.64111700000000005
	.quad	0x3f86e04c05921038              # double 0.011169999999999999
	.quad	0x3fe2e3193f6c269a              # double 0.59022200000000002
	.quad	0x3fc227fa1a0cf180              # double 0.141845
	.quad	0x3fdea854477ff152              # double 0.47902400000000001
	.quad	0x3fef83d145d85165              # double 0.98484099999999996
	.quad	0x3fc0ca89fc6da448              # double 0.13118099999999999
	.quad	0x3f9275ab7dc7abfc              # double 0.018027000000000001
	.quad	0x3fd5a22b3892ee85              # double 0.33802300000000002
	.quad	0x3fecb1b79d909f1f              # double 0.89669399999999999
	.quad	0x3fedc44bf4cb1898              # double 0.93021200000000004
	.quad	0x3fcc3e63e8dda48b              # double 0.22065399999999999
	.quad	0x3fe895e7c8d19589              # double 0.76829899999999995
	.quad	0x3fee2cecc814d728              # double 0.94298400000000004
	.quad	0x3fed72cf95d4e8fb              # double 0.920265
	.quad	0x3fccbd09e12a51e3              # double 0.224519
	.quad	0x3fd2b178b3700475              # double 0.29208200000000001
	.quad	0x3febb1b79d909f1f              # double 0.86544399999999999
	.quad	0x3fdc1e0828c36da8              # double 0.43933299999999997
	.quad	0x3f9a4ca4f440af1d              # double 0.025683000000000001
	.quad	0x3fea52502eec7c95              # double 0.82254799999999995
	.quad	0x3fe1a28134480629              # double 0.55108699999999999
	.quad	0x3feaa0b5ed8d36b5              # double 0.83211800000000002
	.quad	0x3feb847b24638c97              # double 0.85992199999999996
	.quad	0x3fce7a4a48f96e16              # double 0.23810700000000001
	.quad	0x3fe8436da87a072d              # double 0.75823099999999999
	.quad	0x3f72c6ac215b9a5b              # double 0.0045840000000000004
	.quad	0x3fb95592d98bf7f0              # double 0.098961999999999994
	.quad	0x3fc4807357e670e3              # double 0.16017000000000001
	.quad	0x3fdfae1cde5d1809              # double 0.495002
	.quad	0x3fe71b328b6d86ec              # double 0.72206999999999999
	.quad	0x3fc6d81adea89763              # double 0.17846999999999999
	.quad	0x3fefebf65dbfceb8              # double 0.99755400000000005
	.quad	0x3fe61baa1511dffc              # double 0.69087699999999996
	.quad	0x3fecce18266772d6              # double 0.90015800000000001
	.quad	0x3fe0ba6ce358298d              # double 0.52275700000000003
	.quad	0x3fd54e26d4801f75              # double 0.332895
	.quad	0x3fed547bedb72820              # double 0.91656300000000001
	.quad	0x3fee326394face68              # double 0.94365100000000001
	.quad	0x3febe8c26138fffc              # double 0.87216300000000002
	.quad	0x3fdf2706d5065732              # double 0.486757
	.quad	0x3fd163baba7b9171              # double 0.27171200000000001
	.quad	0x3fdb99d883ba3444              # double 0.43126500000000001
	.quad	0x3fb8008637bd05af              # double 0.093757999999999994
	.quad	0x3fe8d1b93037d630              # double 0.77560099999999998
	.quad	0x3fbe0b1bbcf4e875              # double 0.117357
	.quad	0x3fe79c779a6b50b1              # double 0.73785000000000001
	.quad	0x3fdb570c564f97ee              # double 0.42718800000000001
	.quad	0x3fb61bd1ed9dfdac              # double 0.086361999999999994
	.quad	0x3fdfbc77143393ab              # double 0.49587799999999999
	.quad	0x3fd23baba7b9170d              # double 0.28489199999999998
	.quad	0x3fe2e978d4fdf3b6              # double 0.59099999999999997
	.quad	0x3fd5975f2cb64170              # double 0.337364
	.quad	0x3fe97924af0bf1a6              # double 0.79603800000000002
	.quad	0x3fe4361dc93ea2d3              # double 0.631606
	.quad	0x3fb9aeb3dd11be6e              # double 0.10032199999999999
	.quad	0x3fae3864cb5bb385              # double 0.059024
	.quad	0x3fe071bef49cf56f              # double 0.51388500000000004
	.quad	0x3fe517891e215337              # double 0.65912300000000001
	.quad	0x3fcc2e3c536d655e              # double 0.220161
	.quad	0x3fca295208e15012              # double 0.20438600000000001
	.quad	0x3fe557c914b167ec              # double 0.66696599999999995
	.quad	0x3feb19d0203e63e9              # double 0.84690100000000001
	.quad	0x3fecac258d5842b7              # double 0.89601399999999998
	.quad	0x3fe9abc2fc69728a              # double 0.80221699999999996
	.quad	0x3febb10342aa9f7b              # double 0.86535799999999996
	.quad	0x3fe5594af4f0d845              # double 0.66715000000000002
	.quad	0x3fdb508b32ce8965              # double 0.42679099999999998
	.quad	0x3fe215208e150119              # double 0.565079
	.quad	0x3fc652263d816acf              # double 0.17438200000000001
	.quad	0x3fd9b66f9335d24a              # double 0.40176000000000001
	.quad	0x3fce8f53c579f234              # double 0.23874899999999999
	.quad	0x3fd0532617c1bda5              # double 0.255075
	.quad	0x3fdeb30f8c64fdb1              # double 0.47967900000000002
	.quad	0x3fd2193b3a68b19a              # double 0.28278999999999999
	.quad	0x3fe60bc169c23b79              # double 0.68893499999999996
	.quad	0x3fe9615a8deb0fae              # double 0.79313400000000001
	.quad	0x3fe10d4bad7d7c2d              # double 0.53287300000000004
	.quad	0x3fe4bc23315d701e              # double 0.64796600000000004
	.quad	0x3fc144e50c5eb314              # double 0.13491500000000001
	.quad	0x3fd5d7c2ca148ba8              # double 0.34129399999999999
	.quad	0x3fe1d2934acaff6d              # double 0.55695499999999998
	.quad	0x3fe232745bf26f1e              # double 0.56865900000000003
	.quad	0x3fe650331e3a7daa              # double 0.69728999999999997
	.quad	0x3fc916a8b8f14db6              # double 0.19600400000000001
	.quad	0x3fe177ea1c68ec53              # double 0.54588800000000004
	.quad	0x3fc2f27bb2fec56d              # double 0.14802499999999999
	.quad	0x3fd925e56cd6c2f0              # double 0.39293800000000001
	.quad	0x3fe82d0c3d25247d              # double 0.75549900000000003
	.quad	0x3fa8c176577531db              # double 0.048350999999999998
	.quad	0x3fdd0a84be40420f              # double 0.45376699999999998
	.quad	0x3fd2b295e9e1b08a              # double 0.29215000000000002
	.quad	0x3feaf20ea5b530cf              # double 0.84204800000000002
	.quad	0x3f6ef5232d2bb235              # double 0.0037789999999999998
	.quad	0x3fd5f5a964e8b7e5              # double 0.34311900000000001
	.quad	0x3fd024bba12b5e53              # double 0.25224200000000002
	.quad	0x3fe7634549b62c77              # double 0.73086799999999996
	.quad	0x3fed0301a79fec9a              # double 0.90661700000000001
	.quad	0x3fd83760bf5d7881              # double 0.37837999999999999
	.quad	0x3fe7958b827fa1a1              # double 0.73700500000000002
	.quad	0x3fe1a31e7d9988d3              # double 0.55116200000000004
	.quad	0x3fda2e514c22ee42              # double 0.40907700000000002
	.quad	0x3fd04edb2f661f19              # double 0.25481300000000001
	.quad	0x3fd8625204af9229              # double 0.38100099999999998
	.quad	0x3fefb3bd9cae2110              # double 0.99069099999999999
	.quad	0x3f9d19157abb8801              # double 0.028416
	.quad	0x3fb59934efcbd556              # double 0.084368999999999999
	.quad	0x3fc332830a0b1bbd              # double 0.149979
	.quad	0x3fe7dbcec84f8f8a              # double 0.74558199999999997
	.quad	0x3fd1088509bf9c63              # double 0.26614500000000002
	.quad	0x3feed3c36113404f              # double 0.96335000000000003
	.quad	0x3fdbac42e9899bf6              # double 0.43238900000000002
	.quad	0x3fe3d33d29563a9f              # double 0.61953599999999998
	.quad	0x3fd22dd7a99fa11b              # double 0.28404800000000002
	.quad	0x3fe79f03d145d851              # double 0.73816099999999996
	.quad	0x3fe59c9d5a187a4a              # double 0.67536799999999997
	.quad	0x3fda38433d6c7219              # double 0.40968399999999999
	.quad	0x3fc5c3ce2089e343              # double 0.17003799999999999
	.quad	0x3fefdc63ae2541d9              # double 0.99565300000000001
	.quad	0x3fe11096bb98c7e3              # double 0.53327500000000005
	.quad	0x3fe777be121ee675              # double 0.73336699999999999
	.quad	0x3fe07b8d3f1843c4              # double 0.51508200000000004
	.quad	0x3fea4aa53fc00970              # double 0.82161200000000001
	.quad	0x3fea32617c1bda51              # double 0.81864999999999999
	.quad	0x3fd9fd47bedb7282              # double 0.406084
	.quad	0x3fe41a2c669057d1              # double 0.62819499999999995
	.quad	0x3f3a9b8cb8e086be              # double 4.06E-4
	.quad	0x3feb4d099e0e7360              # double 0.85315399999999996
	.quad	0x3fd2bcc6c54bcf0b              # double 0.29277199999999998
	.quad	0x3fe310364388ebcc              # double 0.59572899999999995
	.quad	0x3fcaa044ae85b9e9              # double 0.20801600000000001
	.quad	0x3feb376d5497310a              # double 0.85051600000000005
	.quad	0x3fbcd74927913e81              # double 0.11266
	.quad	0x3f843f1c75818c5d              # double 0.0098860000000000006
	.quad	0x3faa19a847b24639              # double 0.050977000000000001
	.quad	0x3fe275f2cb641701              # double 0.57689800000000002
	.quad	0x3fd61f3e89a88ace              # double 0.34565699999999999
	.quad	0x3fd7a3ca7503b81b              # double 0.36937199999999998
	.quad	0x3fdadadb8348f53c              # double 0.41960799999999998
	.quad	0x3fe879b77c02afde              # double 0.76485800000000004
	.quad	0x3feb14af4f0d844d              # double 0.846275
	.quad	0x3fec8d1526d8b1dd              # double 0.89222199999999996
	.quad	0x3fcfa82e87d2c7b9              # double 0.24732000000000001
	.quad	0x3fea42c3c9eecbfb              # double 0.82064999999999999
	.quad	0x3feb55cb790fb656              # double 0.85422299999999995
	.quad	0x3feb1539b888722a              # double 0.84634100000000001
	.quad	0x3fceb8b69552e2fc              # double 0.240012
	.quad	0x3fb93e81450efdca              # double 0.098610000000000003
	.quad	0x3fd55729b280f12c              # double 0.33344499999999999
	.quad	0x3fbd286b59146e4c              # double 0.113898
	.quad	0x3fbbad9f0a1be2b5              # double 0.10811800000000001
	.quad	0x3fd944523f67f4dc              # double 0.39479500000000001
	.quad	0x3fe4fba237cdcca7              # double 0.65571699999999999
	.quad	0x3fc6c68a936c58ef              # double 0.17793400000000001
	.quad	0x3fe1a57214f0520d              # double 0.55144599999999999
	.quad	0x3fe36c5d206c8712              # double 0.60697800000000002
	.quad	0x3fe1810c6f7a0b5f              # double 0.54700300000000002
	.quad	0x3fd102b841248d7e              # double 0.265791
	.quad	0x3febf4e22a2c2374              # double 0.87364299999999994
	.quad	0x3fdf6933a0407cc8              # double 0.49079600000000001
	.quad	0x3fd018def416bdb2              # double 0.25151800000000002
	.quad	0x3fc3bbc6eb0b7c35              # double 0.154168
	.quad	0x3fe5455219a847b2              # double 0.66471199999999997
	.quad	0x3fe082e6644d8772              # double 0.51597899999999997
	.quad	0x3fe8d350092ccf6c              # double 0.77579500000000001
	.quad	0x3fe69eafee6fb4c4              # double 0.70687100000000003
	.quad	0x3fd3bd1ed9dfdac7              # double 0.30841800000000003
	.quad	0x3feca9c99285a922              # double 0.89572600000000002
	.quad	0x3fe4ecd6c2efd439              # double 0.65391100000000002
	.quad	0x3fb1a35d67ba237d              # double 0.068899000000000002
	.quad	0x3fe357e889c1b542              # double 0.60448100000000005
	.quad	0x3fbee019b0ab2e17              # double 0.12060700000000001
	.quad	0x3fee866c2acb85a5              # double 0.95390900000000001
	.quad	0x3fed8583621fafc9              # double 0.92254800000000003
	.quad	0x3fe30fa9c12f09d9              # double 0.59566200000000002
	.quad	0x3fc748a159817b96              # double 0.18190400000000001
	.quad	0x3f90db6a1e81cb47              # double 0.016462000000000001
	.quad	0x3fcf7a4e7ab75643              # double 0.24592
	.quad	0x3fee2f5558212945              # double 0.94327799999999995
	.quad	0x3fee513d74d594f2              # double 0.94741699999999995
	.quad	0x3fc1634549b62c77              # double 0.13584199999999999
	.quad	0x3fe68dd3fe1975f3              # double 0.70481300000000002
	.quad	0x3fde8d823422467c              # double 0.47738700000000001
	.quad	0x3fe1d9a73b42cc2d              # double 0.55781899999999995
	.quad	0x3fde0e496ededaec              # double 0.46962199999999998
	.quad	0x3fe0658e64b23140              # double 0.51239699999999999
	.quad	0x3fd884e3ffef3908              # double 0.38311099999999998
	.quad	0x3fef51deefe4ffc9              # double 0.97874399999999994
	.quad	0x3feaa68f4b61fe22              # double 0.83283200000000002
	.quad	0x3fd583c297bfa4c6              # double 0.33616699999999999
	.quad	0x3fde3abc947064ed              # double 0.472335
	.quad	0x3feab7d1fe64f54d              # double 0.83493899999999999
	.quad	0x3fd3217d2849cb25              # double 0.29891899999999999
	.quad	0x3f99df97aaac1095              # double 0.025267000000000001
	.quad	0x3f6acde19fc2a887              # double 0.0032720000000000002
	.quad	0x3fd2960b6f9fcb0c              # double 0.290408
	.quad	0x3fe6d39da16616b5              # double 0.71333199999999997
	.quad	0x3fd2b4b2fa93af75              # double 0.29227900000000001
	.quad	0x3fef8e6d15ad106f              # double 0.98613600000000001
	.quad	0x3fd14bf4cb1897a6              # double 0.27026099999999997
	.quad	0x3fd8c347e8ccdd94              # double 0.38691900000000001
	.quad	0x3fd5a4b9884c6a3c              # double 0.33817900000000001
	.quad	0x3fe22cadddf43c7d              # double 0.56795399999999996
	.quad	0x3fb828e4fb97bb73              # double 0.094374
	.quad	0x3fe09f53825e13b2              # double 0.51944900000000005
	.quad	0x3fe30225742dcf46              # double 0.59401199999999998
	.quad	0x3fb25b8561d4306e              # double 0.071708999999999995
	.quad	0x3fe07589efd86a90              # double 0.51434800000000003
	.quad	0x3fe8f8b3700474da              # double 0.78035900000000002
	.quad	0x3fa1cf13cee9dd7f              # double 0.034783000000000001
	.quad	0x3fdf8c6d612c6ac2              # double 0.492946
	.quad	0x3fe0e08aefb2aae3              # double 0.52741000000000005
	.quad	0x3fc00d2c386d2ed8              # double 0.12540200000000001
	.quad	0x3fe43ecedd484513              # double 0.63266699999999998
	.quad	0x3fe0addbdb5d8948              # double 0.52122299999999999
	.quad	0x3fc29899bf5946c3              # double 0.14528199999999999
	.quad	0x3fe3eefa1e3eaf68              # double 0.62292199999999998
	.quad	0x3fe8b51159c49774              # double 0.77210299999999998
	.quad	0x3fee345ae5ffa3ba              # double 0.94389100000000004
	.quad	0x3fbdffe6d58c8eef              # double 0.117186
	.quad	0x3fdb305532617c1c              # double 0.42482500000000001
	.quad	0x3fe475a31a4bdba1              # double 0.63936000000000004
	.quad	0x3fe9d9ba1b1960fa              # double 0.80782799999999999
	.quad	0x3feb8ef1348b2208              # double 0.86119900000000005
	.quad	0x3fddc864883fd502              # double 0.46535599999999999
	.quad	0x3fe02f4cf4a558ea              # double 0.50577399999999995
	.quad	0x3fb2cc92146a1a50              # double 0.073433999999999999
	.quad	0x3fb8b6c7a7c9de05              # double 0.096539
	.quad	0x3fedc77574f722e2              # double 0.93059800000000004
	.quad	0x3fccebdd334c5da7              # double 0.22594800000000001
	.quad	0x3fe95821294573a8              # double 0.79200800000000005
	.quad	0x3fd826a22b3892ef              # double 0.37735800000000003
	.quad	0x3feef5cf2495e17e              # double 0.96750599999999998
	.quad	0x3fc4d42c3c9eecc0              # double 0.16272500000000001
	.quad	0x3fed509e12a51e32              # double 0.91609099999999999
	.quad	0x3fe68576cce5f740              # double 0.70379199999999997
	.quad	0x3fd73f24d8fd5cb8              # double 0.36322900000000002
	.quad	0x3fe4d0f840181e04              # double 0.650509
	.quad	0x3fca3422467be554              # double 0.20471600000000001
	.quad	0x3fa3a19008205ff2              # double 0.038342000000000001
	.quad	0x3fed7fbce4217d28              # double 0.92184299999999997
	.quad	0x3fea1eecbfb15b57              # double 0.81627499999999997
	.quad	0x3fcb313be22e5de1              # double 0.21243999999999999
	.quad	0x3fdea6f826edaa93              # double 0.47894100000000001
	.quad	0x3fec1743e963dc48              # double 0.87783999999999995
	.quad	0x3fe3619b90ea9e6f              # double 0.60566500000000001
	.quad	0x3fe27f4ba51a005c              # double 0.57803899999999997
	.quad	0x3fb00f2389720429              # double 0.062730999999999995
	.quad	0x3fd0671ef30a4e38              # double 0.25629400000000002
	.quad	0x3fedb6b6e0d23d4f              # double 0.92855399999999999
	.quad	0x3fd646d3f9e7b80b              # double 0.34807300000000002
	.quad	0x3fede8cac4b4d057              # double 0.93466700000000003
	.quad	0x3fe600a9de8b3b32              # double 0.687581
	.quad	0x3fe85627bf61aa3f              # double 0.760517
	.quad	0x3fe15adb8348f53c              # double 0.54234099999999996
	.quad	0x3fb563886594af4f              # double 0.083549999999999999
	.quad	0x3f907b784662bae0              # double 0.016095999999999999
	.quad	0x3fe3c32441fea811              # double 0.61757099999999998
	.quad	0x3fe7f0c1333b96af              # double 0.748139
	.quad	0x3fe2984c271fff7a              # double 0.58109100000000002
	.quad	0x3fd1622c45026890              # double 0.271617
	.quad	0x3fe51813879c4114              # double 0.65918900000000002
	.quad	0x3fe135c9e6687f45              # double 0.53781599999999996
	.quad	0x3fe0bf24d8fd5cb8              # double 0.52333300000000005
	.quad	0x3fc26162f166e009              # double 0.143597
	.quad	0x3feb5084e831ad21              # double 0.85357899999999998
	.quad	0x3fcbc07ee0b0af60              # double 0.216812
	.quad	0x3fec182cb20fb225              # double 0.87795100000000004
	.quad	0x3fd55de9c0229a5f              # double 0.33385700000000001
	.quad	0x3fec992ea52ef912              # double 0.89369900000000002
	.quad	0x3faebaf102363b25              # double 0.060019999999999997
	.quad	0x3fef9908e581cf78              # double 0.98743099999999994
	.quad	0x3febfde5082cf52c              # double 0.87474300000000004
	.quad	0x3fe82ddbdb5d8948              # double 0.75559799999999999
	.quad	0x3fe618e970718223              # double 0.69054099999999996
	.quad	0x3fde453d20f2becf              # double 0.47297600000000001
	.quad	0x3fe0a5072085b185              # double 0.52014499999999997
	.quad	0x3fedd905c0336156              # double 0.93274199999999996
	.quad	0x3fe2f1e0828c36db              # double 0.59202600000000005
	.quad	0x3feb663a5c1c6089              # double 0.85622900000000002
	.quad	0x3fe0b21c475e6363              # double 0.52174200000000004
	.quad	0x3fddae297396d091              # double 0.46375499999999997
	.quad	0x3fde166e008e9b39              # double 0.47011900000000001
	.quad	0x3fe23d3804534bd7              # double 0.56997299999999995
	.quad	0x3fce3a8e71476af9              # double 0.23616200000000001
	.quad	0x3fda55e28aa43351              # double 0.41149200000000002
	.quad	0x3fedf27fe4bcad9b              # double 0.93585200000000002
	.quad	0x3fe8d8665e02ea96              # double 0.776416
	.quad	0x3fc3e35c5b4aa971              # double 0.15537599999999999
	.quad	0x3fe95173fb7a5f42              # double 0.79119300000000004
	.quad	0x3fe73ff04577d955              # double 0.72655499999999995
	.quad	0x3fe85288ce703afb              # double 0.76007499999999995
	.quad	0x3fed6d15ad106ee3              # double 0.91956599999999999
	.quad	0x3fe606594af4f0d8              # double 0.68827499999999997
	.quad	0x3fd92b12d3415b14              # double 0.39325399999999999
	.quad	0x3fe4b5d67ba237ce              # double 0.64719700000000002
	.quad	0x3fdba3b57c4e2f38              # double 0.431867
	.quad	0x3fd678e1932d6ece              # double 0.351128
	.quad	0x3fe5b2c1f42bb667              # double 0.67807099999999998
	.quad	0x3fcf55ef1fddebd9              # double 0.24481
	.quad	0x3fea466d373affb0              # double 0.82109699999999997
	.quad	0x3fe2d15054ac29bf              # double 0.58805099999999999
	.quad	0x3fea2915379fa97e              # double 0.81751499999999999
	.quad	0x3fd5bd7b2031ceaf              # double 0.33968999999999999
	.quad	0x3fe2d944aa53fc01              # double 0.58902200000000005
	.quad	0x3fe20beb5b2d4d40              # double 0.56395499999999998
	.quad	0x3fd090afe60c38f3              # double 0.25883099999999998
	.quad	0x3fb2bdb1a6d698fe              # double 0.073206999999999994
	.quad	0x3fe6491afc04c8bd              # double 0.69642400000000004
	.quad	0x3fef0ccff21b3aef              # double 0.970314
	.quad	0x3f919ef954eb13e0              # double 0.017208000000000001
	.quad	0x3fd292641b328b6e              # double 0.29018500000000003
	.quad	0x3fc4576cce5f7404              # double 0.158918
	.quad	0x3fe6b968d759ee89              # double 0.71013300000000001
	.quad	0x3fda19934efcbd55              # double 0.40781099999999998
	.quad	0x3fed18b502ababeb              # double 0.90926600000000002
	.quad	0x3fe4c55a7d24180d              # double 0.64909099999999997
	.quad	0x3fe43d9018e75793              # double 0.63251500000000005
	.quad	0x3fcc1b10fd7e4580              # double 0.21957599999999999
	.quad	0x3fb8d6c2efd438d2              # double 0.097027000000000002
	.quad	0x3fc477574f722e1b              # double 0.15989200000000001
	.quad	0x3fe4113c68661ae7              # double 0.62710399999999999
	.quad	0x3fb7471f79420b3d              # double 0.090928999999999996
	.quad	0x3fd773eab367a0f9              # double 0.36645
	.quad	0x3fdc1b4fe79ee02a              # double 0.43916699999999997
	.quad	0x3fdafcb923a29c78              # double 0.42167500000000002
	.quad	0x3fe233a0407cc7d2              # double 0.56880200000000003
	.quad	0x3fd5918e325d4a5e              # double 0.337009
	.quad	0x3fe03bf50e347629              # double 0.50731899999999996
	.quad	0x3fe622e3c536d656              # double 0.69175900000000001
	.quad	0x3fd2c23b7952d235              # double 0.293105
	.quad	0x3fe6fff79c842fa5              # double 0.718746
	.quad	0x3fe856a161e4f766              # double 0.760575
	.quad	0x3fe45c7ef177a701              # double 0.63629100000000005
	.quad	0x3fd4d6733ebbfd72              # double 0.32558900000000002
	.quad	0x3fe4f1737542a23c              # double 0.654474
	.quad	0x3fe918f81e8a2ec3              # double 0.78429800000000005
	.quad	0x3fd98db0574b4070              # double 0.39927299999999999
	.quad	0x3fe2d5c52e72da12              # double 0.58859499999999998
	.quad	0x3fbc3d68405b39e2              # double 0.11031199999999999
	.quad	0x3fdf818c5c9a34ca              # double 0.492282
	.quad	0x3fe8960fa15db339              # double 0.76831799999999995
	.quad	0x3fe02849cb252ce0              # double 0.50491799999999998
	.quad	0x3fe2bfaf42784a94              # double 0.58589899999999995
	.quad	0x3fe14927913e8145              # double 0.54017999999999999
	.quad	0x3fb4fb00bcbe61d0              # double 0.081955
	.quad	0x3fe0f125dd095af3              # double 0.52943700000000005
	.quad	0x3fc884406c00da1b              # double 0.19153600000000001
	.quad	0x3fab93ee5eedcc21              # double 0.053863000000000001
	.quad	0x3fe6ee2867275686              # double 0.71657199999999999
	.quad	0x3fb74751ce28ed5f              # double 0.090931999999999999
	.quad	0x3fd255b4677b395c              # double 0.28648099999999999
	.quad	0x3fe4c51116a8b8f1              # double 0.64905599999999997
	.quad	0x3fef5b7f1737542a              # double 0.97991899999999998
	.quad	0x3fc78327674d1633              # double 0.18368999999999999
	.quad	0x3fe3a7008a697aee              # double 0.61413600000000002
	.quad	0x3fcd7a786c22680a              # double 0.2303
	.quad	0x3fe8375c8d9f9054              # double 0.75675800000000004
	.quad	0x3fd40f7fcfc3f812              # double 0.313446
	.quad	0x3fc0c6045baf533f              # double 0.13104299999999999
	.quad	0x3fdd2ce032db1e9f              # double 0.45586399999999999
	.quad	0x3fe8671044f1a198              # double 0.76258099999999995
	.quad	0x3fd1ad03d9a95422              # double 0.27618500000000001
	.quad	0x3fd195464dc22ab2              # double 0.27473599999999998
	.quad	0x3fef8c9539b88872              # double 0.98591099999999998
	.quad	0x3feffb9bed30f063              # double 0.99946400000000001
	.quad	0x3fb9b3aeee957471              # double 0.100398
	.quad	0x3fe5e24febd09e13              # double 0.68387600000000004
	.quad	0x3feecff0025bfad3              # double 0.96288300000000004
	.quad	0x3fe29f666234a87e              # double 0.58195799999999998
	.quad	0x3fdd2f1a9fbe76c9              # double 0.45600000000000002
	.quad	0x3fde44dca8e2e2b9              # double 0.47295300000000001
	.quad	0x3fed670196d8f4f9              # double 0.91882399999999997
	.quad	0x3f8f15a4acf312b2              # double 0.015178000000000001
	.quad	0x3fdf7e49b1fab96f              # double 0.49208299999999999
	.quad	0x3fe2cdb37c99ae92              # double 0.58760999999999997
	.quad	0x3fe34304ccee5abc              # double 0.60193099999999999
	.quad	0x3fe1525460aa64c3              # double 0.5413
	.quad	0x3fd17c80841ede12              # double 0.27322400000000002
	.quad	0x3feb158fb43d89ce              # double 0.84638199999999997
	.quad	0x3fe0c690de093533              # double 0.52423900000000001
	.quad	0x3fee7d5454152b0a              # double 0.95279899999999995
	.quad	0x3fc71ac9afe1da7b              # double 0.180505
	.quad	0x3fddda059a73b42d              # double 0.46643200000000001
	.quad	0x3f927243137b0707              # double 0.018013999999999999
	.quad	0x3fa7765fd8adab9f              # double 0.045824999999999998
	.quad	0x3fe641c3efae7925              # double 0.69552800000000004
	.quad	0x3fc905af6c69b5a6              # double 0.19548599999999999
	.quad	0x3fed9988d2a1f8e4              # double 0.92499200000000003
	.quad	0x3fe04bfb15b573eb              # double 0.50927500000000003
	.quad	0x3fd8dcd2d44dca8e              # double 0.38847799999999999
	.quad	0x3fe632a0663c74fb              # double 0.69367999999999996
	.quad	0x3fd027a63736cdf2              # double 0.25241999999999998
	.quad	0x3fe148c7192ea52f              # double 0.540134
	.quad	0x3fe41a7e30878748              # double 0.62823399999999996
	.quad	0x3fe6c8a159817b96              # double 0.71199100000000004
	.quad	0x3fca3c9eecbfb15b              # double 0.20497499999999999
	.quad	0x3fd3991ff7164c73              # double 0.30622100000000002
	.quad	0x3fed8c4bd33d2956              # double 0.92337599999999997
	.quad	0x3fda5e41d4b6a61a              # double 0.41200300000000001
	.quad	0x3fd1c710cb295e9e              # double 0.27777499999999999
	.quad	0x3fecff10ecb74de0              # double 0.90613600000000005
	.quad	0x3fd70c88a47ecfea              # double 0.36014000000000002
	.quad	0x3fd14280ae104923              # double 0.26968399999999998
	.quad	0x3fda455219a847b2              # double 0.41048099999999998
	.quad	0x3fd0de54b48d3ae7              # double 0.26357000000000003
	.quad	0x3fe00bf1a5ca2984              # double 0.50145799999999996
	.quad	0x3f967cf1c3265ade              # double 0.021961000000000001
	.quad	0x3fe9f6c050bd87b5              # double 0.81137099999999995
	.quad	0x3fdf642396073de2              # double 0.49048700000000001
	.quad	0x3fe67648c7192ea5              # double 0.70193899999999998
	.quad	0x3fbc57d1782d3847              # double 0.11071499999999999
	.quad	0x3fe07bf83382e44b              # double 0.51513299999999995
	.quad	0x3fca51fc4c165908              # double 0.205627
	.quad	0x3fdf152f3c2dadb8              # double 0.48566799999999999
	.quad	0x3fe0ee99a62ed352              # double 0.52912599999999999
	.quad	0x3fda054ac29bf163              # double 0.40657300000000002
	.quad	0x3fe7e5f9591cd1c8              # double 0.74682300000000001
	.quad	0x3fcf4855da272863              # double 0.244395
	.quad	0x3fda8537e2c55c96              # double 0.414381
	.quad	0x3fe25b0dd82fd75e              # double 0.57361499999999999
	.quad	0x3fd2fc610f0e90bc              # double 0.29665399999999997
	.quad	0x3feccac083126e98              # double 0.89975000000000005
	.quad	0x3fe31a7c17a89332              # double 0.59698300000000004
	.quad	0x3fe8de7c8d195897              # double 0.77715900000000004
	.quad	0x3fd290d5a5b9628d              # double 0.29009000000000001
	.quad	0x3fdc764adff822bc              # double 0.44472
	.quad	0x3feb6ebd4cfd08d5              # double 0.85726800000000003
	.quad	0x3fed8cb4aec8d5c7              # double 0.92342599999999997
	.quad	0x3fcfb71758e21965              # double 0.247775
	.quad	0x3fe555c74751ce29              # double 0.66672100000000001
	.quad	0x3fcd3c9abb01c92e              # double 0.228412
	.quad	0x3fe67112fd32c626              # double 0.70130300000000001
	.quad	0x3fd914f8b588e369              # double 0.391905
	.quad	0x3fe26ce789e774ef              # double 0.57579400000000003
	.quad	0x3fe5bd0e12e83a11              # double 0.67932800000000004
	.quad	0x3fa7548ecd8dbced              # double 0.045567000000000003
	.quad	0x3fcc5a1cac083127              # double 0.2215
	.quad	0x3fd4b10342aa9f7b              # double 0.32330399999999998
	.quad	0x3fc4f19934efcbd5              # double 0.16362299999999999
	.quad	0x3feac7a398201cd6              # double 0.83687
	.quad	0x3fd36887a8d64d7f              # double 0.303255
	.quad	0x3fe832e9ccb7d417              # double 0.75621499999999997
	.quad	0x3fe963f359ff4fd7              # double 0.79345100000000002
	.quad	0x3fd2e81450efdc9c              # double 0.29541499999999998
	.quad	0x3fe0355cd91eeaa7              # double 0.50651400000000002
	.quad	0x3fcd09b738e6d15b              # double 0.22685900000000001
	.quad	0x3fd6fc0096feb4a6              # double 0.35913099999999998
	.quad	0x3fe282c2bd7f51f0              # double 0.57846200000000003
	.quad	0x3fed3c44bf4cb189              # double 0.91360699999999995
	.quad	0x3fdc94f26aec0725              # double 0.44659100000000002
	.quad	0x3fe780d3cff64cf9              # double 0.73447600000000002
	.quad	0x3fc20cbf2b239a39              # double 0.141014
	.quad	0x3fc56f3b213e3e29              # double 0.16745699999999999
	.quad	0x3fdfe2b8c75c4a84              # double 0.49821300000000002
	.quad	0x3fdebe6e653868fd              # double 0.48037299999999999
	.quad	0x3fdcadcd2d44dca9              # double 0.44810800000000001
	.quad	0x3fe650d8cb07d0af              # double 0.69736900000000002
	.quad	0x3fa32db1e9f27781              # double 0.037457999999999998
	.quad	0x3fc63558a7610279              # double 0.17350299999999999
	.quad	0x3fe96ed8904f6dfc              # double 0.79478099999999995
	.quad	0x3fc66698bb4d4888              # double 0.17500599999999999
	.quad	0x3fd351116a8b8f15              # double 0.30182300000000001
	.quad	0x3fb7a2df9378ee28              # double 0.092328999999999994
	.quad	0x3fe35af07bfe7e20              # double 0.60485100000000003
	.quad	0x3fea8902de00d1b7              # double 0.82922499999999999
	.quad	0x3fe51526d8b1dd5d              # double 0.65883199999999997
	.quad	0x3fee5d441355475a              # double 0.94888499999999998
	.quad	0x3fe043a2163fdd66              # double 0.50825600000000004
	.quad	0x3fd57c4e2f37fbf0              # double 0.33571200000000001
	.quad	0x3fee94e5d5b24e9c              # double 0.95567599999999996
	.quad	0x3fd1c25d074213a1              # double 0.27748800000000001
	.quad	0x3fd057082491afc0              # double 0.25531199999999998
	.quad	0x3fe3e67b5f1bef4a              # double 0.62188500000000002
	.quad	0x3fd4ac710cb295ea              # double 0.32302500000000001
	.quad	0x3fe1349e01de2691              # double 0.53767299999999996
	.quad	0x3fb48c3f3e0370ce              # double 0.080265000000000003
	.quad	0x3fe307a4a48f96e1              # double 0.59468299999999996
	.quad	0x3fd760f1b25f633d              # double 0.36529200000000001
	.quad	0x3fe6e9ad42c3c9ef              # double 0.71602500000000002
	.quad	0x3fec258b3f63c31e              # double 0.879583
	.quad	0x3fe9f8dd616f86a1              # double 0.81162900000000004
	.quad	0x3fd689efd86a8fc1              # double 0.35216900000000001
	.quad	0x3fe7da554b8bef8d              # double 0.74540200000000001
	.quad	0x3fe4a4f00ef1348b              # double 0.64513399999999999
	.quad	0x3fe397507e9d94d1              # double 0.61222100000000002
	.quad	0x3fe184d12018a43c              # double 0.54746300000000003
	.quad	0x3fe9f0da5daf07c0              # double 0.81065100000000001
	.quad	0x3fe32d3415b1422d              # double 0.59926800000000002
	.quad	0x3fed992641b328b7              # double 0.92494500000000002
	.quad	0x3fbbf2f555821294              # double 0.109176
	.quad	0x3fe1a80ae1049236              # double 0.551763
	.quad	0x3fd681e8a2ec28b3              # double 0.35167900000000002
	.quad	0x3fef0958d9b5e95b              # double 0.96989099999999994
	.quad	0x3feb8b8066c2acb8              # double 0.86077899999999996
	.quad	0x3fd965d3996fa82f              # double 0.39684000000000003
	.quad	0x3fed250f840181e0              # double 0.91077399999999997
	.quad	0x3fe2a107b784662c              # double 0.58215700000000004
	.quad	0x3fe7203c4b09e98e              # double 0.72268500000000002
	.quad	0x3fca71d606317269              # double 0.206599
	.quad	0x3fef41ce6c093d96              # double 0.97678299999999996
	.quad	0x3fcf068123810e88              # double 0.24238599999999999
	.quad	0x3fe209b0ee49f517              # double 0.56368300000000005
	.quad	0x3fe4b2f23033a472              # double 0.64684399999999997
	.quad	0x3fd2aa8650e77920              # double 0.29165799999999997
	.quad	0x3fe9b6e503fb3743              # double 0.80357599999999996
	.quad	0x3fef870b8cfbfc65              # double 0.98523499999999997
	.quad	0x3fe7c182ecaeea64              # double 0.74237200000000003
	.quad	0x3feb6ca25529fe00              # double 0.85701099999999997
	.quad	0x3fe9c829cfdd2285              # double 0.80568399999999996
	.quad	0x3fe022c2374794ea              # double 0.504243
	.quad	0x3fdc9a62ed352221              # double 0.44692300000000001
	.quad	0x3fd01b3aeee95747              # double 0.251662
	.quad	0x3feb15d4e8fb00bd              # double 0.84641500000000003
	.quad	0x3fe24c92146a1a50              # double 0.57184699999999999
	.quad	0x3fed9426fe718a87              # double 0.92433500000000002
	.quad	0x3fca76188b11409a              # double 0.206729
	.quad	0x3fe86071c53f39d2              # double 0.76177300000000003
	.quad	0x3fe4be8dda48b652              # double 0.64826099999999998
	.quad	0x3fed6bdd334c5da7              # double 0.91941700000000004
	.quad	0x3fb97c1bda5119ce              # double 0.099549999999999999
	.quad	0x3fb5c0ca600b0293              # double 0.084973000000000007
	.quad	0x3fa31ee2435696e6              # double 0.037345000000000003
	.quad	0x3fc1ad3a604e1e71              # double 0.138099
	.quad	0x3fc34b8bef8ceb35              # double 0.15074299999999999
	.quad	0x3fda49906cca2db6              # double 0.41073999999999999
	.quad	0x3fba48e8a71de69b              # double 0.102675
	.quad	0x3fc9eb7cbb3c8191              # double 0.20249900000000001
	.quad	0x3f9711947cfa26a2              # double 0.022527999999999999
	.quad	0x3fac8323358f2e06              # double 0.055688000000000001
	.quad	0x3fec07f66e86c658              # double 0.87597199999999997
	.quad	0x3fea20f2becedd48              # double 0.81652199999999997
	.quad	0x3fe6c7ecfe9b7bf2              # double 0.71190500000000001
	.quad	0x3fe10fc71d606317              # double 0.53317599999999998
	.quad	0x3fd3fd21ff2e48e9              # double 0.31232500000000002
	.quad	0x3fe72fc04c8bc9cd              # double 0.72457899999999997
	.quad	0x3fe2d173fb7a5f42              # double 0.58806800000000004
	.quad	0x3fe2a6a22b3892ef              # double 0.58284100000000005
	.quad	0x3fec87c84b5dcc64              # double 0.891575
	.quad	0x3fe99f59ccfaeff6              # double 0.80070200000000002
	.quad	0x3fed7b267c6b8b69              # double 0.92128299999999996
	.quad	0x3fd67d9988d2a1f9              # double 0.35141600000000001
	.quad	0x3fe8b85c67dfe32a              # double 0.772505
	.quad	0x3fee1c347e8ccdd9              # double 0.94094299999999997
	.quad	0x3fefb7f5a5332ad0              # double 0.99120600000000003
	.quad	0x3fdef1fddebd9019              # double 0.48352000000000001
	.quad	0x3febb58f2e05ccc9              # double 0.86591300000000004
	.quad	0x3feff9b13165d399              # double 0.99922999999999995
	.quad	0x3fe59ab6d00b45ae              # double 0.67513599999999996
	.quad	0x3fce605ee568a505              # double 0.237316
	.quad	0x3fdbc58eeae9ee46              # double 0.43393300000000001
	.quad	0x3fbc0a2877ee4e27              # double 0.10953
	.quad	0x3fc48427418d690a              # double 0.16028300000000001
	.quad	0x3feb836eb4e98138              # double 0.85979399999999995
	.quad	0x3fbfbb40b34e7686              # double 0.12395100000000001
	.quad	0x3fe10fb86f47b678              # double 0.533169
	.quad	0x3fbde6ff7dfa00e2              # double 0.11680599999999999
	.quad	0x3fd54a3c64345cff              # double 0.33265600000000001
	.quad	0x3fe27c86cebbba56              # double 0.57770100000000002
	.quad	0x3fd67a398201cd60              # double 0.35121000000000002
	.quad	0x3fe47f08893b7d85              # double 0.64050700000000005
	.quad	0x3f8754b05b7cfe58              # double 0.011391999999999999
	.quad	0x3fcb256ffc115df6              # double 0.21207999999999999
	.quad	0x3fe72f6837f7be12              # double 0.72453699999999999
	.quad	0x3fe303b81b64e054              # double 0.59420399999999995
	.quad	0x3fc0e28672756862              # double 0.131913
	.quad	0x3fea98e325d4a5df              # double 0.83116299999999999
	.quad	0x3feeeeb702602c91              # double 0.96664000000000005
	.quad	0x3fe51ec2ce464990              # double 0.66000499999999995
	.quad	0x3fe4675147f13059              # double 0.63761199999999996
	.quad	0x3fe42f251c193b3a              # double 0.63075499999999995
	.quad	0x3fedfe846a5d6bec              # double 0.93731900000000001
	.quad	0x3fdd2e62131a8ef7              # double 0.45595599999999997
	.quad	0x3fc8dbbe0157eed4              # double 0.19420599999999999
	.quad	0x3fd80ffda4052d66              # double 0.37597599999999998
	.quad	0x3fe18cbf2b239a39              # double 0.548431
	.quad	0x3fd24152b0a6fc59              # double 0.28523700000000002
	.quad	0x3fe937952d234eba              # double 0.78803500000000004
	.quad	0x3fcdb7ae5796bfcb              # double 0.23216800000000001
	.quad	0x3fe059817b95a294              # double 0.51092599999999999
	.quad	0x3fb58f605ab3aabd              # double 0.084219000000000002
	.quad	0x3fe48f0a5efe9318              # double 0.64246099999999995
	.quad	0x3feb2456f75d9a0f              # double 0.848186
	.quad	0x3fd2a0a958537e2c              # double 0.29105599999999998
	.quad	0x3fefb78cc9a77e5f              # double 0.99115600000000003
	.quad	0x3fe1530270f38822              # double 0.54138299999999995
	.quad	0x3fea82c2bd7f51f0              # double 0.82846200000000003
	.quad	0x3fd192923e5b8562              # double 0.27457100000000001
	.quad	0x3fc3cae21101b003              # double 0.15462899999999999
	.quad	0x3fdfbc408d8ec95c              # double 0.495865
	.quad	0x3fca366d7a56de33              # double 0.204786
	.quad	0x3fdfba775fb2edfe              # double 0.49575599999999997
	.quad	0x3fe13be22e5de15d              # double 0.53856000000000004
	.quad	0x3fe8c27418d6909b              # double 0.77373700000000001
	.quad	0x3faeec39799e518f              # double 0.060395999999999998
	.quad	0x3fb924f227d028a2              # double 0.098220000000000001
	.quad	0x3fb22478854cdb7b              # double 0.070869000000000001
	.quad	0x3fd351b4fe79ee03              # double 0.30186200000000002
	.quad	0x3fd9edfa43fe5c92              # double 0.40515000000000001
	.quad	0x3fe46529bae46cfd              # double 0.63734900000000005
	.quad	0x3fcab3461309c800              # double 0.208596
	.quad	0x3fe4d5fdcdf69878              # double 0.65112199999999998
	.quad	0x3fdb415f45e0b4e1              # double 0.42586499999999999
	.quad	0x3fb5f19d66adb403              # double 0.085718000000000003
	.quad	0x3fd971151611ba3d              # double 0.39752700000000002
	.quad	0x3fe16138fffbce42              # double 0.54311799999999999
	.quad	0x3fe0745176145953              # double 0.51419899999999996
	.quad	0x3fdba3e39f77292c              # double 0.43187799999999998
	.quad	0x3fc46e86c6583e85              # double 0.15962299999999999
	.quad	0x3fbbd4067cf1c326              # double 0.108704
	.quad	0x3fd36ee30caa326e              # double 0.303643
	.quad	0x3fe55a61e0c5a815              # double 0.66728299999999996
	.quad	0x3f9cc0bdcad14a0a              # double 0.028079
	.quad	0x3fca6573215fcc18              # double 0.20622099999999999
	.quad	0x3fc7d8adab9f559b              # double 0.18629999999999999
	.quad	0x3fe75783dff3f0fe              # double 0.729433
	.quad	0x3f94623d0bfa0946              # double 0.019906
	.quad	0x3febfb677f6b1a2a              # double 0.87443899999999997
	.quad	0x3fe020b1bbcf4e87              # double 0.50399099999999997
	.quad	0x3fe81a06a6e32e38              # double 0.75317699999999999
	.quad	0x3fc385be1a826245              # double 0.15251899999999999
	.quad	0x3fc7864cb5bb3850              # double 0.183786
	.quad	0x3fc731e3a7daa4fd              # double 0.18121000000000001
	.quad	0x3f8c304ccee5abc1              # double 0.013764
	.quad	0x3fc531876188b114              # double 0.165574
	.quad	0x3fe6163fdd65a145              # double 0.69021600000000005
	.quad	0x3fe3e4430b178b37              # double 0.621614
	.quad	0x3fb4aa433508f649              # double 0.080723000000000003
	.quad	0x3fd266e43aa79bbb              # double 0.28753000000000001
	.quad	0x3fdaaaf78feef5ed              # double 0.41668500000000003
	.quad	0x3fdcca5375c8d9f9              # double 0.449849
	.quad	0x3fee00e27e0ef998              # double 0.93760799999999999
	.quad	0x3fdebdba0a526959              # double 0.48032999999999998
	.quad	0x3fe268709741d085              # double 0.57524900000000001
	.quad	0x3fee3c536d655e29              # double 0.94486400000000004
	.quad	0x3fe3be681a9b8cb9              # double 0.61699300000000001
	.quad	0x3fd74156e264e486              # double 0.36336299999999999
	.quad	0x3fca11ba3ca7503c              # double 0.20366600000000001
	.quad	0x3fe7d99ed7c6fbd2              # double 0.74531499999999995
	.quad	0x3fdaf3d3a1d323ff              # double 0.42113200000000001
	.quad	0x3fea604e1e71044f              # double 0.82425599999999999
	.quad	0x3fa789e774eebf66              # double 0.045974000000000001
	.quad	0x3fe24f41f212d773              # double 0.57217499999999999
	.quad	0x3fd38cda6e75ff61              # double 0.30547200000000002
	.quad	0x3fe9ec3116228134              # double 0.81008199999999996
	.quad	0x3fedfb5f1bef49cf              # double 0.93693499999999996
	.quad	0x3f98ad256798958e              # double 0.024098000000000001
	.quad	0x3fed6f60e0eb67c3              # double 0.91984600000000005
	.quad	0x3fe1eaaf35e310dc              # double 0.55989800000000001
	.quad	0x3fe8bbb40b34e768              # double 0.77291299999999996
	.quad	0x3fe0c1aac53b0814              # double 0.52364100000000002
	.quad	0x3fa3ec679cc74b84              # double 0.038913000000000003
	.quad	0x3fdc78f25a250f84              # double 0.444882
	.quad	0x3fc73d4280ae1049              # double 0.181557
	.quad	0x3fdf008e9b38d60a              # double 0.48440899999999998
	.quad	0x3fe9dab7dc7abfba              # double 0.80794900000000003
	.quad	0x3fe5deb313be22e6              # double 0.68343500000000001
	.quad	0x3fe9ebe1650a45d4              # double 0.81004399999999998
	.quad	0x3fe7baf965b20b80              # double 0.74157399999999996
	.quad	0x3fdcf91600f34507              # double 0.45270300000000002
	.quad	0x3fe241461b6d43d0              # double 0.57046799999999998
	.quad	0x3feebe33acd5b680              # double 0.96071799999999996
	.quad	0x3fe5c185058dde7a              # double 0.67987299999999995
	.quad	0x3fe9cb7f5a5332ad              # double 0.806091
	.quad	0x3fcaa326e115592e              # double 0.20810400000000001
	.quad	0x3fe5d08d4bad7d7c              # double 0.68170799999999998
	.quad	0x3fe0268d32830a0b              # double 0.50470599999999999
	.quad	0x3fc0283d35eb7458              # double 0.12622800000000001
	.quad	0x3fe37c5ac471b478              # double 0.60892999999999997
	.quad	0x3fe2a8438088509c              # double 0.58304
	.quad	0x3fd9540895d0b73d              # double 0.39575399999999999
	.quad	0x3fe350b30b5aa716              # double 0.60360100000000005
	.quad	0x3fe3247a9e2bcf92              # double 0.59820300000000004
	.quad	0x3fe88df7a4e7ab75              # double 0.76732999999999996
	.quad	0x3fd646aa087ca644              # double 0.34806300000000001
	.quad	0x3fe24ff21b3aeee9              # double 0.57225899999999996
	.quad	0x3fe286dd69d30271              # double 0.57896300000000001
	.quad	0x3fc3041461b6d43d              # double 0.148562
	.quad	0x3fd0b43526527a20              # double 0.26099899999999998
	.quad	0x3fee8a5ce5b4245f              # double 0.95438999999999996
	.quad	0x3fd9422467be553b              # double 0.39466200000000001
	.quad	0x3fd1382e44b6e936              # double 0.26905400000000002
	.quad	0x3fcd141a6937d1fe              # double 0.22717599999999999
	.quad	0x3fa6698bb4d48883              # double 0.043774
	.quad	0x3fcec215b9a5a89c              # double 0.24029800000000001
	.quad	0x3fe418d8a979e16d              # double 0.62803299999999995
	.quad	0x3fbd92ea52ef911d              # double 0.115523
	.quad	0x3fed2a582dbe7f2c              # double 0.91141899999999997
	.quad	0x3fd22bf9830e3cda              # double 0.28393400000000002
	.quad	0x3fadf633ce63a5c2              # double 0.058519000000000002
	.quad	0x3fe07b43d89ce4a8              # double 0.51504700000000003
	.quad	0x3fd756cd6c2efd44              # double 0.36467300000000002
	.quad	0x3fe1a56bca5375c9              # double 0.55144300000000002
	.quad	0x3fca83d35eb7457c              # double 0.207148
	.quad	0x3fe01e646f156191              # double 0.50370999999999999
	.quad	0x3fe9611fd5885d31              # double 0.79310599999999998
	.quad	0x3fd33e6c4c5974e6              # double 0.30068499999999998
	.quad	0x3fedafc04c8bc9cd              # double 0.92770399999999997
	.quad	0x3fe9798958d9b5e9              # double 0.79608599999999996
	.quad	0x3fd2139c94f69caa              # double 0.282447
	.quad	0x3fccdd590c0ad03e              # double 0.22550500000000001
	.quad	0x3f7a4df47f993d53              # double 0.0064219999999999998
	.quad	0x3fcd5e0f7fcfc3f8              # double 0.229433
	.quad	0x3fdd52eb5f5f0b28              # double 0.45818599999999998
	.quad	0x3fe73e3c105186db              # double 0.72634699999999996
	.quad	0x3fef3d6a593a2df9              # double 0.97624699999999997
	.quad	0x3fe8e358298cc144              # double 0.77775199999999999
	.quad	0x3fe0ff21b3aeee95              # double 0.53114399999999995
	.quad	0x3fdaa3f034b0e1b5              # double 0.41625600000000001
	.quad	0x3fc7cca70d1fa333              # double 0.18593299999999999
	.quad	0x3fae90de093532e8              # double 0.059699000000000002
	.quad	0x3feb3ead4f5903a7              # double 0.85140099999999996
	.quad	0x3fd873215fcc1872              # double 0.38202700000000001
	.quad	0x3fd8731d2e0e3044              # double 0.38202599999999998
	.quad	0x3fdaf82b1f687b14              # double 0.42139700000000002
	.quad	0x3fcb0df15a4acf31              # double 0.211363
	.quad	0x3fe642917507e9d9              # double 0.69562599999999997
	.quad	0x3fe2d5ae1cde5d18              # double 0.588584
	.quad	0x3fe9fdc5931ca7d6              # double 0.81222799999999995
	.quad	0x3fdaafc8b0079a28              # double 0.41697899999999999
	.quad	0x3fe783cf2cf95d4f              # double 0.73484000000000005
	.quad	0x3fec62eb1c432ca5              # double 0.88707499999999995
	.quad	0x3feda2f48c2e770c              # double 0.92614200000000002
	.quad	0x3faa86d71f36262d              # double 0.051810000000000002
	.quad	0x3fd8a4723aafff37              # double 0.38503700000000002
	.quad	0x3fa014f8b588e369              # double 0.03141
	.quad	0x3fcaca600b029281              # double 0.20930099999999999
	.quad	0x3fc5ba3443d46b27              # double 0.16974500000000001
	.quad	0x3fe5e0aa64c2f838              # double 0.68367500000000003
	.quad	0x3feb1a30984e3fff              # double 0.84694700000000001
	.quad	0x3f9c95bff04577d9              # double 0.027914999999999999
	.quad	0x3fde5604189374bc              # double 0.47399999999999998
	.quad	0x3fee2c3c9eecbfb1              # double 0.94289999999999996
	.quad	0x3fe115182a9930be              # double 0.53382499999999999
	.quad	0x3fe30e0008637bd0              # double 0.59545899999999996
	.quad	0x3fc398c7e28240b8              # double 0.15310000000000001
	.quad	0x3fd4357e670e2c13              # double 0.31576500000000002
	.quad	0x3fdebccaf709b739              # double 0.48027300000000001
	.quad	0x3fe036049ecb31c2              # double 0.50659399999999999
	.quad	0x3fd10cf9e3864cb6              # double 0.26641700000000001
	.quad	0x3fe4203a322af577              # double 0.62893399999999999
	.quad	0x3fe606c00da1a933              # double 0.68832400000000005
	.quad	0x3fe3f8b1572580c3              # double 0.624108
	.quad	0x3feee616b54e2b06              # double 0.96558699999999997
	.quad	0x3fd25568e820e62a              # double 0.28646300000000002
	.quad	0x3fe2e35e74299d88              # double 0.59025499999999997
	.quad	0x3fd15807fed20297              # double 0.27099800000000002
	.quad	0x3fd3d0635a426bb5              # double 0.30959399999999998
	.quad	0x3fedc4cdfaca361a              # double 0.93027400000000005
	.quad	0x3fee4b3e5753a3ec              # double 0.94668499999999999
	.quad	0x3fee9fc08fa7a850              # double 0.95700099999999999
	.quad	0x3fdc154866a11ec9              # double 0.43879899999999999
	.quad	0x3fd0deb95e5aff2a              # double 0.26359399999999999
	.quad	0x3fd66f9767903212              # double 0.35056100000000001
	.quad	0x3fe24e0b912dba4d              # double 0.57202699999999995
	.quad	0x3fa6b5b2d4d4024b              # double 0.044354999999999999
	.quad	0x3fe16892253111f1              # double 0.54401500000000003
	.quad	0x3fc80a7c5ac471b4              # double 0.18781999999999999
	.quad	0x3fd033226c3b927d              # double 0.25312099999999998
	.quad	0x3fd46c3b927d45a6              # double 0.319106
	.quad	0x3fd2441355475a32              # double 0.28540500000000002
	.quad	0x3fe6b69db65ecc3e              # double 0.70979199999999998
	.quad	0x3fc5d8409e55c0fd              # double 0.17066200000000001
	.quad	0x3fd51049235f8099              # double 0.32911899999999999
	.quad	0x3fed06cebbba55d2              # double 0.90708100000000003
	.quad	0x3fc8a21a719b4dcf              # double 0.19244700000000001
	.quad	0x3fd79eba6aca7935              # double 0.36906299999999997
	.quad	0x3fe6fc5479d4d834              # double 0.718302
	.quad	0x3fdbcc63f141205c              # double 0.43435000000000001
	.quad	0x3fc4c2efd438d1d9              # double 0.16219900000000001
	.quad	0x3fd75410f94c8798              # double 0.364506
	.quad	0x3fefcbaf965b20b8              # double 0.99361399999999999
	.quad	0x3fbe8b3b320535ca              # double 0.119312
	.quad	0x3fe4b3c81908e582              # double 0.64694600000000002
	.quad	0x3fd6ff3ade225fa6              # double 0.35932799999999998
	.quad	0x3fe1058793dd97f6              # double 0.53192499999999998
	.quad	0x3fcc39799e518f3f              # double 0.22050400000000001
	.quad	0x3fd30535c9e6687f              # double 0.29719299999999998
	.quad	0x3fedf9e59f2ba9d2              # double 0.936755
	.quad	0x3fe134549b62c775              # double 0.53763799999999995
	.quad	0x3fb2e525892684cf              # double 0.073809
	.quad	0x3fe4a8650e779208              # double 0.64555600000000002
	.quad	0x3fe8bb3636f3b214              # double 0.77285300000000001
	.quad	0x3fec8a3b57c4e2f3              # double 0.89187399999999994
	.quad	0x3fe10c64fdb09a67              # double 0.53276299999999999
	.quad	0x3fed28a3f8982cb2              # double 0.91121099999999999
	.quad	0x3fbb8e7ddca4b125              # double 0.107643
	.quad	0x3fd70b30b5aa7158              # double 0.36005799999999999
	.quad	0x3fe9adf0d413122b              # double 0.80248299999999995
	.quad	0x3fd0c83ec892ab69              # double 0.26222200000000001
	.quad	0x3fe7e451b93037d6              # double 0.74662099999999998
	.quad	0x3fdf904f6dfc5cdd              # double 0.49318299999999998
	.quad	0x3fd78eb8950763a2              # double 0.36808600000000002
	.quad	0x3fe74b599aa60914              # double 0.72794800000000004
	.quad	0x3fe95c2d2780778a              # double 0.79250200000000004
	.quad	0x3fa018e757928e0d              # double 0.031440000000000003
	.quad	0x3febb3f20a73f749              # double 0.86571600000000004
	.quad	0x3fea53868fd199bb              # double 0.82269599999999998
	.quad	0x3fe381083dbc2331              # double 0.60950099999999996
	.quad	0x3fd975ab7dc7abfc              # double 0.39780700000000002
	.quad	0x3fe3134efcbd5561              # double 0.59610700000000005
	.quad	0x3fe56bdf4c2b51bd              # double 0.66941799999999996
	.quad	0x3fe23c70c996b767              # double 0.569878
	.quad	0x3fdd991bc5586445              # double 0.46246999999999999
	.quad	0x3fee3bc2b94d9408              # double 0.94479500000000005
	.quad	0x3fedb30941c8216c              # double 0.92810499999999995
	.quad	0x3fef7607c4199fe4              # double 0.98315799999999997
	.quad	0x3fd9d7d7c2ca148c              # double 0.40379900000000002
	.quad	0x3fef31a08bfc2225              # double 0.974808
	.quad	0x3fefbeb18116ebd5              # double 0.99202800000000002
	.quad	0x3fc0c43f5f91600f              # double 0.13098899999999999
	.quad	0x3fa1309c7ffde721              # double 0.033574
	.quad	0x3fed56a9c560c7c1              # double 0.91682900000000001
	.quad	0x3fa42a454de7ea60              # double 0.039385000000000003
	.quad	0x3fe035e95b78cc9a              # double 0.50658099999999995
	.quad	0x3fe4dab191dde376              # double 0.65169600000000005
	.quad	0x3fe6a84be40420f7              # double 0.70804400000000001
	.quad	0x3fe9fa3fcc9ea9a4              # double 0.81179800000000001
	.quad	0x3fcdc422036006d1              # double 0.232548
	.quad	0x3fb90d0678c0053e              # double 0.097854999999999997
	.quad	0x3fee0efdc9c4da90              # double 0.93933
	.quad	0x3f9acabc5154866a              # double 0.026164
	.quad	0x3fdd55b89939218a              # double 0.45835700000000001
	.quad	0x3fdb6b9c304ccee6              # double 0.42844300000000002
	.quad	0x3fc1acde19fc2a88              # double 0.13808799999999999
	.quad	0x3fe2bf290abb44e5              # double 0.58583499999999999
	.quad	0x3fd0107314ca9260              # double 0.251004
	.quad	0x3fe2051a86940358              # double 0.56312300000000004
	.quad	0x3fecf09b738e6d16              # double 0.90437100000000004
	.quad	0x3fcec1b10fd7e458              # double 0.240286
	.quad	0x3fe7c91f2dc2b0ea              # double 0.74330099999999999
	.quad	0x3fa7f64cf8d716d3              # double 0.046801000000000002
	.quad	0x3fe1dc981beb1811              # double 0.55817799999999995
	.quad	0x3feeb36bd2b6f199              # double 0.95940199999999997
	.quad	0x3fd0b6b2af145522              # double 0.26115100000000002
	.quad	0x3fdf1276fb09203a              # double 0.48550199999999999
	.quad	0x3fcbfc86cebbba56              # double 0.21864400000000001
	.quad	0x3fe9f2b020c49ba6              # double 0.81087500000000001
	.quad	0x3fe128f9f44d4456              # double 0.53625199999999995
	.quad	0x3fd076640a6b93cd              # double 0.25722600000000001
	.quad	0x3fce6d82ba5a0382              # double 0.23771700000000001
	.quad	0x3fc09e34330d7386              # double 0.129828
	.quad	0x3fddbb44e50c5eb3              # double 0.464555
	.quad	0x3fe66c460ed80a18              # double 0.70071700000000003
	.quad	0x3fedacc4ef88b978              # double 0.92734000000000005
	.quad	0x3fb784988094e5d6              # double 0.091867000000000004
	.quad	0x3fc15bb384fd2a63              # double 0.13561100000000001
	.quad	0x3fd955e6bc621b7e              # double 0.395868
	.quad	0x3fdc77f27fe4bcae              # double 0.44482100000000002
	.quad	0x3feaff327aa68f4b              # double 0.84365199999999996
	.quad	0x3fc528f190d173fb              # double 0.16531199999999999
	.quad	0x3fc5bd944aa53fc0              # double 0.169848
	.quad	0x3fdcabead4f5903a              # double 0.44799299999999997
	.quad	0x3fe171b25f633ce6              # double 0.54512899999999997
	.quad	0x3fefd912556d19df              # double 0.99524800000000002
	.quad	0x3fe1195464dc22ab              # double 0.53434199999999998
	.quad	0x3fa9f75104d551d7              # double 0.050715000000000003
	.quad	0x3fc4f5dbb9cf9a07              # double 0.16375300000000001
	.quad	0x3fcbaaa3ad18d25f              # double 0.216145
	.quad	0x3fc3842b734b5137              # double 0.152471
	.quad	0x3fd6622813448063              # double 0.34974100000000002
	.quad	0x3fe55d67ba237cdd              # double 0.66765200000000002
	.quad	0x3fd35c9e6687f456              # double 0.30252800000000002
	.quad	0x3fecf1c970f7b9e0              # double 0.90451499999999995
	.quad	0x3fe993708aac96cc              # double 0.79924799999999995
	.quad	0x3fb936d655e28aa4              # double 0.098492999999999997
	.quad	0x3fec49c2c1b10fd8              # double 0.88400400000000001
	.quad	0x3fb6be9c886162f1              # double 0.088845999999999994
	.quad	0x3fe4961e4f765fd9              # double 0.64332500000000004
	.quad	0x3fc85a1cac083127              # double 0.19025
	.quad	0x3fe7474107314ca9              # double 0.72744799999999998
	.quad	0x3fe5e42bf9830e3d              # double 0.68410300000000002
	.quad	0x3fd0de19fc2a886a              # double 0.26355600000000001
	.quad	0x3fe953f5b5fa2270              # double 0.79149899999999995
	.quad	0x3fd5471b47842310              # double 0.33246500000000001
	.quad	0x3fa3400b88ca3e7d              # double 0.037597999999999999
	.quad	0x3f9f733a8a3f8983              # double 0.030713000000000001
	.quad	0x3fed6fd651b0ccbc              # double 0.91990199999999999
	.quad	0x3fdc61c36976bc1f              # double 0.443467
	.quad	0x3fdd417ca2120e1f              # double 0.45712199999999997
	.quad	0x3fbe310dbf0563ed              # double 0.117936
	.quad	0x3fb24b124d099e0e              # double 0.071457999999999994
	.quad	0x3fdcea1c68ec52a4              # double 0.451789
	.quad	0x3fd501c0ca600b03              # double 0.32823200000000002
	.quad	0x3fe8d785f8d2e515              # double 0.77630900000000003
	.quad	0x3fb5ede1198aeb81              # double 0.085661000000000001
	.quad	0x3fc2d08919ef954f              # double 0.14698900000000001
	.quad	0x3fe83e8bc169c23b              # double 0.75763499999999995
	.quad	0x3fcee2328f9f44d4              # double 0.24127799999999999
	.quad	0x3fe02cdc011d3672              # double 0.50547600000000004
	.quad	0x3fe915d701d9f4d3              # double 0.78391599999999995
	.quad	0x3fe5f32378ab0c89              # double 0.68593000000000004
	.quad	0x3fe2d0a67620ee8d              # double 0.58796999999999999
	.quad	0x3fd3ca1059ea5721              # double 0.30920799999999998
	.quad	0x3fe9be1437c5692b              # double 0.80445299999999997
	.quad	0x3fbea4766c6de764              # double 0.119697
	.quad	0x3fe7efc158fb43d9              # double 0.74801700000000004
	.quad	0x3fed52e946801712              # double 0.91637100000000005
	.quad	0x3fe484db9c7368ad              # double 0.64121799999999995
	.quad	0x3fc1e835dedf1e08              # double 0.139899
	.quad	0x3fe4b27ed84d338f              # double 0.64678899999999995
	.quad	0x3fc2e07e5a78f25a              # double 0.147476
	.quad	0x3fc05fa658c4bd34              # double 0.127919
	.quad	0x3fd5b7a5f41aef70              # double 0.33933400000000002
	.quad	0x3fbeaac1094a2b9d              # double 0.119793
	.quad	0x3fedf789a459103d              # double 0.93646700000000005
	.quad	0x3fd91d57ff9b5632              # double 0.39241599999999999
	.quad	0x3fe09aa60913a4f8              # double 0.51887799999999995
	.quad	0x3fd41e57d9dba909              # double 0.31435200000000002
	.quad	0x3fef1b584b1ab085              # double 0.97208799999999995
	.quad	0x3fa8e51d25aab474              # double 0.048623
	.quad	0x3fc87192ea52ef91              # double 0.190966
	.quad	0x3feacd530489d27c              # double 0.83756399999999997
	.quad	0x3fe304e618ce2d1f              # double 0.59434799999999999
	.quad	0x3fe4e04c05921038              # double 0.65237999999999996
	.quad	0x3fceeaaf35e310dc              # double 0.241537
	.quad	0x3fec3f6a0dbad3a6              # double 0.882741
	.quad	0x3fcc7ddca4b124d1              # double 0.22259100000000001
	.quad	0x3fe1f9ce8d972cd8              # double 0.56174400000000002
	.quad	0x3fc9e1c15097c808              # double 0.20220199999999999
	.quad	0x3fde253543aeab7a              # double 0.47102100000000002
	.quad	0x3fc867620ee8d10f              # double 0.19065499999999999
	.quad	0x3fb6876e1deacc92              # double 0.088003999999999998
	.quad	0x3fc9c0c1fc8f3238              # double 0.20119500000000001
	.quad	0x3fc1803cd141a693              # double 0.13672599999999999
	.quad	0x3fef5c7ef177a701              # double 0.98004100000000005
	.quad	0x3fe38c7e28240b78              # double 0.6109
	.quad	0x3fee20afa2f05a71              # double 0.94149000000000005
	.quad	0x3fef4a83b1d0c804              # double 0.97784599999999999
	.quad	0x3fcd3ac4f7ec3548              # double 0.228356
	.quad	0x3fcce9ab29e4d5d8              # double 0.225881
	.quad	0x3fdd9d909f1f1498              # double 0.46274199999999999
	.quad	0x3fe35f69878316a0              # double 0.60539699999999996
	.quad	0x3fdfe032db1e9f27              # double 0.49805899999999997
	.quad	0x3fdc1c044284dfce              # double 0.43920999999999999
	.quad	0x3fe1a77a2cecc815              # double 0.55169400000000002
	.quad	0x3fe2765dbfceb789              # double 0.57694900000000005
	.quad	0x3fec1908e581cf78              # double 0.87805599999999995
	.quad	0x3fe919780baa582e              # double 0.78435900000000003
	.quad	0x3fde422036006d0d              # double 0.47278599999999998
	.quad	0x3fe46f08cc575c07              # double 0.63855399999999995
	.quad	0x3fd2de7a743a6480              # double 0.29482900000000001
	.quad	0x3fdcd794a6eb91b4              # double 0.450658
	.quad	0x3fe68157eed45e92              # double 0.70328900000000005
	.quad	0x3fcf471f79420b3d              # double 0.24435799999999999
	.quad	0x3fe09ec4e7253da7              # double 0.51938099999999998
	.quad	0x3fe5cbf6e3f78bbd              # double 0.68114799999999998
	.quad	0x3fd8fe542e557de1              # double 0.39052300000000001
	.quad	0x3fa2fb7e90ff9724              # double 0.037074999999999997
	.quad	0x3fe819c17225b74a              # double 0.75314400000000004
	.quad	0x3f71ea78af3e468d              # double 0.0043740000000000003
	.quad	0x3fe3140357a35504              # double 0.59619299999999997
	.quad	0x3fd7dde37585be1b              # double 0.37291800000000003
	.quad	0x3f87ae5796bfca86              # double 0.011563
	.quad	0x3fefe8af81626b2f              # double 0.99715399999999998
	.quad	0x3fe5a8b8f14db595              # double 0.67684599999999995
	.quad	0x3fd85f2452c59fb2              # double 0.38080700000000001
	.quad	0x3feb06fef7c243dd              # double 0.84460400000000002
	.quad	0x3fd1ecfa69be09bb              # double 0.28008899999999998
	.quad	0x3fe7d66cf41f212d              # double 0.74492499999999995
	.quad	0x3fa625a682b62846              # double 0.043256000000000003
	.quad	0x3fdfa59c065b63d4              # double 0.49448300000000001
	.quad	0x3fcfc443914f483d              # double 0.24817700000000001
	.quad	0x3fa42eba27ae9ab3              # double 0.039419000000000003
	.quad	0x3fe56bd6e8af8162              # double 0.66941399999999995
	.quad	0x3fd3487b99d451fc              # double 0.30129899999999998
	.quad	0x3fd2937d1fe64f55              # double 0.29025200000000001
	.quad	0x3fd2b51bd61f5be6              # double 0.29230400000000001
	.quad	0x3fdc27807789a459              # double 0.439911
	.quad	0x3feafec7863beec4              # double 0.84360100000000004
	.quad	0x3fd440357a355044              # double 0.31641900000000001
	.quad	0x3fcc0aaeafab53d6              # double 0.21907599999999999
	.quad	0x3feb2b1d4f9c1f86              # double 0.84901300000000002
	.quad	0x3fe028d8665e02eb              # double 0.50498600000000005
	.quad	0x3fdd0f9096bb98c8              # double 0.45407500000000001
	.quad	0x3fd3378ee2867275              # double 0.30026599999999998
	.quad	0x3fccac1094a2b9d4              # double 0.22400100000000001
	.quad	0x3fe71719f7f8ca82              # double 0.72157000000000004
	.quad	0x3fbd6df3f961804e              # double 0.11495900000000001
	.quad	0x3fc73ccd0fe8ab50              # double 0.18154300000000001
	.quad	0x3fe5ef60e0eb67c3              # double 0.68547100000000005
	.quad	0x3fea5b59578a2a91              # double 0.82365100000000002
	.quad	0x3fe1e86e7e62dc6e              # double 0.55962299999999998
	.quad	0x3fca833c60029f17              # double 0.20713000000000001
	.quad	0x3f3c92ddbdb5d895              # double 4.3600000000000003E-4
	.quad	0x3fd76c764adff823              # double 0.36599500000000001
	.quad	0x3fd1dfdef8487b9a              # double 0.27928900000000001
	.quad	0x3fe3986b9c304ccf              # double 0.61235600000000001
	.quad	0x3feffae7924af0bf              # double 0.99937799999999998
	.quad	0x3fef56ffc115df65              # double 0.97936999999999996
	.quad	0x3fed4ccab3edd8b6              # double 0.91562399999999999
	.quad	0x3fe8d72580c308ff              # double 0.77626300000000004
	.quad	0x3fc6e8f29d40ee07              # double 0.178984
	.quad	0x3fcd313be22e5de1              # double 0.22806499999999999
	.quad	0x3fe62adc4c9c90c5              # double 0.69273200000000001
	.quad	0x3fd834549b62c775              # double 0.37819399999999997
	.quad	0x3feac6fbd273d5bb              # double 0.83679000000000003
	.quad	0x3fdb2a411c2a0232              # double 0.424454
	.quad	0x3fb409d495182a99              # double 0.078274999999999997
	.quad	0x3fdf88ce703afb7f              # double 0.49272500000000002
	.quad	0x3fea5a059a73b42d              # double 0.82348900000000003
	.quad	0x3fedeaf251c193b4              # double 0.93493000000000003
	.quad	0x3fe1c450268900c5              # double 0.55521399999999999
	.quad	0x3fd9ebc408d8ec96              # double 0.40501500000000001
	.quad	0x3feb682949a56580              # double 0.85646500000000003
	.quad	0x3fd113ec460ed80a              # double 0.26684099999999999
	.quad	0x3fe0b9bcba301217              # double 0.52267300000000005
	.quad	0x3fe9ea76965f5276              # double 0.80987100000000001
	.quad	0x3fcc5d074213a0c7              # double 0.22158900000000001
	.quad	0x3feebd3e4ef0281c              # double 0.96060100000000003
	.quad	0x3fd62f9ca5bd944b              # double 0.34665600000000002
	.quad	0x3fe177be121ee675              # double 0.54586699999999999
	.quad	0x3fc605b39e279dd4              # double 0.17204900000000001
	.quad	0x3fe0e44955b4677b              # double 0.52786699999999998
	.quad	0x3fcdcd35a858793e              # double 0.232825
	.quad	0x3fee56861e92923e              # double 0.94806199999999996
	.quad	0x3fe16f0f16f4384c              # double 0.54480700000000004
	.quad	0x3fdfbef06b37867f              # double 0.496029
	.quad	0x3f94256bca5375c9              # double 0.019674000000000001
	.quad	0x3fdea38327674d16              # double 0.47872999999999999
	.quad	0x3febead0c3d25248              # double 0.87241400000000002
	.quad	0x3fe53aecd07852f8              # double 0.663443
	.quad	0x3fdd528f190d1740              # double 0.45816400000000002
	.quad	0x3fcd3af74cd3176a              # double 0.22836200000000001
	.quad	0x3fd8a1986b9c304d              # double 0.38486300000000001
	.quad	0x3f9659d12cadddf4              # double 0.021826999999999999
	.quad	0x3fe4ae4b018611fd              # double 0.64627599999999996
	.quad	0x3fea66ec9e236c16              # double 0.82506400000000002
	.quad	0x3fe1ab25b317efe1              # double 0.55214200000000002
	.quad	0x3fd65dc4007570c5              # double 0.34947299999999998
	.quad	0x3fe2c9e236c15d2d              # double 0.587144
	.quad	0x3fec5e4a38327675              # double 0.88651000000000002
	.quad	0x3fd6916872b020c5              # double 0.35262500000000002
	.quad	0x3fd25b899392189c              # double 0.28683700000000001
	.quad	0x3fde182a9930be0e              # double 0.470225
	.quad	0x3fdc2ebe596c82e0              # double 0.44035299999999999
	.quad	0x3fcf83cf2cf95d4f              # double 0.24621000000000001
	.quad	0x3fd96501e2584f4c              # double 0.39678999999999998
	.quad	0x3feff2ba9d1f6018              # double 0.99838000000000004
	.quad	0x3fdfe889c1b54196              # double 0.49856800000000001
	.quad	0x3fe5f127f5e84f09              # double 0.68568799999999996
	.quad	0x3fec2bf76a2f48c3              # double 0.88036700000000001
	.quad	0x3fd715d2d01c0ca6              # double 0.360707
	.quad	0x3fd7b7cfe5860136              # double 0.37059399999999998
	.quad	0x3fef7ae147ae147b              # double 0.98375000000000001
	.quad	0x3fed7a00e27e0efa              # double 0.92114300000000005
	.quad	0x3fb25929670196d9              # double 0.071673000000000001
	.quad	0x3feb08637bd05af7              # double 0.84477400000000002
	.quad	0x3fe8db0ff10ecb75              # double 0.77674100000000001
	.quad	0x3fec598e10cf5b1d              # double 0.88593200000000005
	.quad	0x3fe345ed4a1ad645              # double 0.60228599999999999
	.quad	0x3fe8e8709741d085              # double 0.77837400000000001
	.quad	0x3fe1835158b827fa              # double 0.54727999999999999
	.quad	0x3fe887b784662bae              # double 0.766567
	.quad	0x3fe5ec54bcf0b6b7              # double 0.68509900000000001
	.quad	0x3fec8effe2a3cea7              # double 0.89245600000000003
	.quad	0x3fed3b645a1cac08              # double 0.91349999999999998
	.quad	0x3fcadc8754f3775c              # double 0.20985500000000001
	.quad	0x3fa517e77d523b36              # double 0.041197999999999999
	.quad	0x3fe4b734b51372a4              # double 0.64736400000000005
	.quad	0x3fe421ccd9620685              # double 0.62912599999999996
	.quad	0x3fe5589ce4a7b4e5              # double 0.66706699999999997
	.quad	0x3fc9612c6ac215ba              # double 0.19827800000000001
	.quad	0x3f8ae46cfc829cfe              # double 0.013131
	.quad	0x3fe576fb09203a32              # double 0.67077399999999998
	.quad	0x3fd8affb04ee7c4a              # double 0.385741
	.quad	0x3fecc28b2a6b0d95              # double 0.89874799999999999
	.quad	0x3fbbdec5f394b7b3              # double 0.10886800000000001
	.quad	0x3fd6a38759253544              # double 0.35373100000000002
	.quad	0x3fc25a250f840182              # double 0.143376
	.quad	0x3fe039042d8c2a45              # double 0.50695999999999997
	.quad	0x3feebb96af038e2a              # double 0.960399
	.quad	0x3f88c6d612c6ac21              # double 0.012097999999999999
	.quad	0x3feeed84d338f798              # double 0.96649399999999996
	.quad	0x3fe7d2e0e30446b7              # double 0.74449200000000004
	.quad	0x3fee4d338f798527              # double 0.94692399999999999
	.quad	0x3fcf6a50d6b228dd              # double 0.24543200000000001
	.quad	0x3fc33ac4f7ec3548              # double 0.150231
	.quad	0x3fe9e94ee392e1ef              # double 0.80972999999999995
	.quad	0x3fdd76102795703f              # double 0.46033099999999999
	.quad	0x3fd2de43ed959a31              # double 0.29481600000000002
	.quad	0x3fd8fcc1871e6cd3              # double 0.39042700000000002
	.quad	0x3fc62ec28b2a6b0e              # double 0.17330200000000001
	.quad	0x3fead0e560418937              # double 0.83799999999999997
	.quad	0x3fc2310dbf0563ed              # double 0.142122
	.quad	0x3fd6020817fc7608              # double 0.34387400000000001
	.quad	0x3fc49ab29e4d5d81              # double 0.160971
	.quad	0x3fe8becaab8a5ce6              # double 0.77329000000000003
	.quad	0x3fd536eb4e981388              # double 0.33147700000000002
	.quad	0x3fd4cdd0d8cb07d1              # double 0.32506200000000002
	.quad	0x3fd21908e581cf78              # double 0.28277799999999997
	.quad	0x3fefbbd7b2031ceb              # double 0.99168
	.quad	0x3fe54bd76ee73e68              # double 0.66550799999999999
	.quad	0x3fe3b53f7ced9168              # double 0.61587499999999995
	.quad	0x3fd6c3009b30728f              # double 0.35565200000000002
	.quad	0x3fe14126a65cf67b              # double 0.53920299999999999
	.quad	0x3fc5b0ee49f51698              # double 0.169462
	.quad	0x3fd22e05ccc89b0f              # double 0.28405900000000001
	.quad	0x3fe4570e6f2e8c05              # double 0.63562700000000005
	.quad	0x3fca2d7b634dad32              # double 0.204513
	.quad	0x3fcd9dece5710881              # double 0.231382
	.quad	0x3feca38da3c21188              # double 0.89496500000000001
	.quad	0x3fe703f4eca686e8              # double 0.71923300000000001
	.quad	0x3fe7ba55d1c3ac93              # double 0.74149600000000004
	.quad	0x3f9ab8e8ea39c51e              # double 0.026096000000000001
	.quad	0x3fe6c0a8d21bc127              # double 0.71101800000000004
	.quad	0x3fc703a7546d3f9e              # double 0.17979899999999999
	.quad	0x3fe79cb46bacf744              # double 0.73787899999999995
	.quad	0x3fed6672fba01eef              # double 0.91875600000000002
	.quad	0x3fd2b480a5accd53              # double 0.292267
	.quad	0x3f9b35b0bbf50e34              # double 0.026571999999999998
	.quad	0x3fe4c308feac42ea              # double 0.64880800000000005
	.quad	0x3fed841aac53b081              # double 0.92237599999999997
	.quad	0x3fe1fe5a78f25a25              # double 0.56229899999999999
	.quad	0x3fc2fc1df3300de5              # double 0.14831900000000001
	.quad	0x3fd92656abde3fbc              # double 0.39296500000000001
	.quad	0x3fe64388ebcc6c55              # double 0.69574400000000003
	.quad	0x3fe1d834091c0874              # double 0.55764199999999997
	.quad	0x3fc09b5a63f9a49c              # double 0.129741
	.quad	0x3fba8d5410f94c88              # double 0.10371900000000001
	.quad	0x3fe053dc8b86b160              # double 0.51023700000000005
	.quad	0x3fc0af3e468cac4b              # double 0.13034799999999999
	.quad	0x3fcad0cc35ce1826              # double 0.20949699999999999
	.quad	0x3fcd327243137b07              # double 0.228102
	.quad	0x3fe04bc8c0ce91c9              # double 0.50925100000000001
	.quad	0x3fd1fa7eb6bf444e              # double 0.280914
	.quad	0x3fe3f35c182ecaef              # double 0.62345700000000004
	.quad	0x3fc7074a771c970f              # double 0.17990999999999999
	.quad	0x3fe78793dd97f62b              # double 0.73529999999999995
	.quad	0x3fc1864cb5bb3850              # double 0.136911
	.quad	0x3fc3426fe718a86d              # double 0.15046499999999999
	.quad	0x3fe676be37de939f              # double 0.70199500000000004
	.quad	0x3fd6469d7342edbb              # double 0.34805999999999998
	.quad	0x3fb71c3265add9c2              # double 0.090273999999999993
	.quad	0x3fe6b430f49491f3              # double 0.70949600000000002
	.quad	0x3fec2771c970f7ba              # double 0.87981500000000001
	.quad	0x3fdee653868fd19a              # double 0.48280800000000001
	.quad	0x3fcb7110e453d20f              # double 0.214388
	.quad	0x3f87f27fe4bcad9b              # double 0.011693
	.quad	0x3fe45bf26f1dc50d              # double 0.63622400000000001
	.quad	0x3fd564fdb09a671f              # double 0.334289
	.quad	0x3fccd0f6273929ed              # double 0.22512699999999999
	.quad	0x3fee1709310129cc              # double 0.94031200000000003
	.quad	0x3fea96440f238972              # double 0.830843
	.quad	0x3fd082949a5657fb              # double 0.25796999999999998
	.quad	0x3fd2d8c6d612c6ac              # double 0.29448099999999999
	.quad	0x3fe394b599aa6091              # double 0.61190299999999997
	.quad	0x3fe2b6e71cda2b5a              # double 0.58482699999999999
	.quad	0x3fe7b854046412cf              # double 0.74125099999999999
	.quad	0x3fcf9dece5710881              # double 0.247007
	.quad	0x3fed10364388ebcc              # double 0.90822899999999995
	.quad	0x3fd00b9991361dc9              # double 0.25070799999999999
	.quad	0x3fe4ce8b7e4de3b9              # double 0.65021300000000004
	.quad	0x3fecc182ecaeea64              # double 0.89862200000000003
	.quad	0x3fee4d4cb9ecf638              # double 0.94693599999999999
	.quad	0x3fe46f3d3a1d3240              # double 0.63857900000000001
	.quad	0x3fedea76965f5276              # double 0.93487100000000001
	.quad	0x3fd7ef2c7325918a              # double 0.373973
	.quad	0x3fc2e30caa326e11              # double 0.14755399999999999
	.quad	0x3faefe2e6ea85447              # double 0.060532999999999997
	.quad	0x3fd40d801b435265              # double 0.31332399999999999
	.quad	0x3feb421c044284e0              # double 0.85182000000000002
	.quad	0x3faee5471715c63b              # double 0.060343000000000001
	.quad	0x3fde0663c74fb54a              # double 0.46914
	.quad	0x3feef86a098915be              # double 0.96782400000000002
	.quad	0x3fee46c54bcf0b6b              # double 0.94613899999999995
	.quad	0x3fb74e54f7a91969              # double 0.091038999999999995
	.quad	0x3fc4fa8b4bf8fcd6              # double 0.16389599999999999
	.quad	0x3fc209c3ce2089e3              # double 0.14092299999999999
	.quad	0x3fdbeb24a6a875d5              # double 0.43622699999999998
	.quad	0x3fc00f5e41d4b6a6              # double 0.125469
	.quad	0x3fbd32830a0b1bbd              # double 0.114052
	.quad	0x3fe79b93037d6302              # double 0.73774099999999998
	.quad	0x3fe4fee6fb4c3c19              # double 0.65611600000000003
	.quad	0x3fa74e22a2c23748              # double 0.045518000000000003
	.quad	0x3fe94927913e8145              # double 0.79017999999999999
	.quad	0x3fee71c10d7be985              # double 0.95138599999999995
	.quad	0x3fe8a263d816aceb              # double 0.76982300000000004
	.quad	0x3fef0487b99d4520              # double 0.96930300000000002
	.quad	0x3fcd8db48909289e              # double 0.23088700000000001
	.quad	0x3fe589fa54c55433              # double 0.67309300000000005
	.quad	0x3fed14dd72367e41              # double 0.90879699999999997
	.quad	0x3fc02d490e66cb10              # double 0.12638199999999999
	.quad	0x3fd878b3700474da              # double 0.38236700000000001
	.quad	0x3fb70a6fc58ab92c              # double 0.090003
	.quad	0x3fbf1bde82d7b635              # double 0.121519
	.quad	0x3fde98dcdb37c99b              # double 0.47808
	.quad	0x3fba36f3b213e3e3              # double 0.10240100000000001
	.quad	0x3f552f3c2dadb835              # double 0.0012930000000000001
	.quad	0x3fed9c1f85d744f6              # double 0.92530800000000002
	.quad	0x3fa04d12018a43bb              # double 0.031837999999999998
	.quad	0x3fcd95aaf78feef6              # double 0.23113
	.quad	0x3fa9f23465625a68              # double 0.050675999999999999
	.quad	0x3feaa90257c914b1              # double 0.83313099999999995
	.quad	0x3fde731098d477bc              # double 0.475773
	.quad	0x3facac8e68e3ef28              # double 0.056003999999999998
	.quad	0x3fe93ab862b27cbf              # double 0.78841799999999995
	.quad	0x3fe1cd6a161e4f76              # double 0.55632499999999996
	.quad	0x3fea69db65ecc3e3              # double 0.82542199999999999
	.quad	0x3fe45d441355475a              # double 0.63638499999999998
	.quad	0x3fe80de2ac322292              # double 0.751695
	.quad	0x3fe1b34a44c7b02d              # double 0.55313599999999996
	.quad	0x3fe06049ecb31c22              # double 0.51175400000000004
	.quad	0x3fbbdb6e503fb374              # double 0.108817
	.quad	0x3fc69691a75cd0bb              # double 0.17646999999999999
	.quad	0x3fce71e6cd29131f              # double 0.23785100000000001
	.quad	0x3fd68d6d3b6cbd98              # double 0.35238199999999997
	.quad	0x3fa88ce703afb7e9              # double 0.04795
	.quad	0x3fe2c7c0f4517614              # double 0.58688399999999996
	.quad	0x3fc84d4cb9ecf638              # double 0.189859
	.quad	0x3fd06aca79357604              # double 0.25651800000000002
	.quad	0x3fe22ccb3a2595bc              # double 0.56796800000000003
	.quad	0x3fb4b1cc96462802              # double 0.080837999999999993
	.quad	0x3fd5cb20fb224aae              # double 0.34052300000000002
	.quad	0x3fe9bb98c7e28241              # double 0.80415000000000003
	.quad	0x3fcf9e9d0e991ff7              # double 0.247028
	.quad	0x3fe4b91d57ff9b56              # double 0.64759699999999998
	.quad	0x3fe09e6256366d7a              # double 0.51933399999999996
	.quad	0x3fe01f44d4456712              # double 0.50381699999999996
	.quad	0x3f9d0203e63e8dda              # double 0.028327999999999999
	.quad	0x3fe0473eee525892              # double 0.50869699999999995
	.quad	0x3fe77e23f24d8fd6              # double 0.73414800000000002
	.quad	0x3fe38b7e4de3b8a2              # double 0.61077800000000004
	.quad	0x3fd96262cba732df              # double 0.39662999999999998
	.quad	0x3faff04577d95571              # double 0.062379999999999998
	.quad	0x3fefe16b54e2b064              # double 0.99626700000000001
	.quad	0x3fec1b6f5caf2d80              # double 0.87834900000000005
	.quad	0x3fcf8c7e28240b78              # double 0.246475
	.quad	0x3fd953d20f2becee              # double 0.39574100000000001
	.quad	0x3fd17f3cf70153bd              # double 0.273391
	.quad	0x3fecc2784a9478c8              # double 0.89873899999999995
	.quad	0x3fd1ebedfa43fe5d              # double 0.28002500000000002
	.quad	0x3fde67be553ac4f8              # double 0.475082
	.quad	0x3fcdbb62413db7f1              # double 0.23228099999999999
	.quad	0x3fd368a50507a6bd              # double 0.30326199999999998
	.quad	0x3fe7064ece9a2c67              # double 0.71952000000000005
	.quad	0x3fe7b122b7baecd0              # double 0.74037299999999995
	.quad	0x3feae62bae03b3ea              # double 0.84059700000000004
	.quad	0x3fd437f7be121ee6              # double 0.31591599999999997
	.quad	0x3f89a7c17a89331a              # double 0.012527
	.quad	0x3fd919bd4067cf1c              # double 0.39219599999999999
	.quad	0x3fefa2706d506573              # double 0.98857899999999998
	.quad	0x3fcd742dcf4623d1              # double 0.23010800000000001
	.quad	0x3fd807746887a8d6              # double 0.37545499999999998
	.quad	0x3fe057625204af92              # double 0.51066699999999998
	.quad	0x3fcda5daf07bfe7e              # double 0.231624
	.quad	0x3fe8b784662bae04              # double 0.77240200000000003
	.quad	0x3fc25fd04a2fcefb              # double 0.14354900000000001
	.quad	0x3fc27ad080b673c5              # double 0.144373
	.quad	0x3fe0992a737110e4              # double 0.51869699999999996
	.quad	0x3fdb257c914b167f              # double 0.42416300000000001
	.quad	0x3fd5a2a0a958537e              # double 0.33805099999999999
	.quad	0x3fe1476d117b5287              # double 0.53996900000000003
	.quad	0x3fe5230b9dc2f406              # double 0.660528
	.quad	0x3fef76cce5f7403e              # double 0.98325200000000001
	.quad	0x3fed4c942d490e67              # double 0.91559800000000002
	.quad	0x3fe0a5c3dee78184              # double 0.520235
	.quad	0x3fdf9930be0ded29              # double 0.49372500000000002
	.quad	0x3fc8fa376922d949              # double 0.195136
	.quad	0x3fef90f51ac9afe2              # double 0.98644500000000002
	.quad	0x3fdb859c8c9320da              # double 0.43003000000000002
	.quad	0x3fe824766c6de764              # double 0.75445099999999998
	.quad	0x3fe8852502eec7c9              # double 0.76625299999999996
	.quad	0x3fdbfbb0e5e67946              # double 0.43723699999999999
	.quad	0x3fe980f776c4827b              # double 0.79699299999999995
	.quad	0x3fa9be6e653868fd              # double 0.050280999999999999
	.quad	0x3fd268f8e7ddca4b              # double 0.287657
	.quad	0x3fdf5286b59146e5              # double 0.48941200000000001
	.quad	0x3fd7140dd3fe1976              # double 0.360599
	.quad	0x3fc17646ae3a3a8e              # double 0.13642199999999999
	.quad	0x3fda4bec679cc74c              # double 0.41088400000000003
	.quad	0x3fba75ff609dcf89              # double 0.103363
	.quad	0x3fd6c6327ed84d34              # double 0.35584700000000002
	.quad	0x3fec3b1290257c91              # double 0.88221099999999997
	.quad	0x3fbdeabbcb1cc964              # double 0.11686299999999999
	.quad	0x3fd6cdf266ba493d              # double 0.35632000000000003
	.quad	0x3fc9db4cc2507208              # double 0.20200499999999999
	.quad	0x3fd08bb906466b1e              # double 0.25852799999999998
	.quad	0x3fe9c7b02d59d55e              # double 0.80562599999999995
	.quad	0x3fd34aa10e022142              # double 0.30142999999999998
	.quad	0x3fed8407cc7d1bb5              # double 0.92236700000000005
	.quad	0x3fe5f27fe4bcad9b              # double 0.68585200000000002
	.quad	0x3fc56fb8f57f737e              # double 0.16747200000000001
	.quad	0x3fd42074ea8da7f4              # double 0.31448100000000001
	.quad	0x3fe3475a31a4bdba              # double 0.60246
	.quad	0x3fe2edf82b1f687b              # double 0.59154899999999999
	.quad	0x3fd5dd7a99fa11a9              # double 0.34164299999999997
	.quad	0x3fe4ee5471715c64              # double 0.65409300000000004
	.quad	0x3fd22cd39da16617              # double 0.28398600000000002
	.quad	0x3fe4116659d12cae              # double 0.62712400000000001
	.quad	0x3fe255171e29b6b3              # double 0.57288700000000004
	.quad	0x3fea40fecdd0d8cb              # double 0.820434
	.quad	0x3fd3baecd07852f8              # double 0.308284
	.quad	0x3fd8380cb6c7a7ca              # double 0.37842100000000001
	.quad	0x3fd62e59af9ebe9d              # double 0.34657900000000003
	.quad	0x3fe29b823c85c24c              # double 0.58148299999999997
	.quad	0x3fe4a322af577100              # double 0.64491399999999999
	.quad	0x3feaf572de43ed96              # double 0.84246200000000004
	.quad	0x3fe57d9988d2a1f9              # double 0.67158200000000001
	.quad	0x3fee8ac9f2fdb8fe              # double 0.95444200000000001
	.quad	0x3fc6676a7264a16a              # double 0.17503099999999999
	.quad	0x3fe34a0e410b630b              # double 0.60279000000000005
	.quad	0x3fdec2a8869c66d3              # double 0.48063099999999997
	.quad	0x3fed89741d084e83              # double 0.92302899999999999
	.quad	0x3fe63aa1511dffc5              # double 0.69465699999999997
	.quad	0x3fe12b042528ae75              # double 0.53650100000000001
	.quad	0x3fd817720c8cd63d              # double 0.37643100000000002
	.quad	0x3fe74caf709b738e              # double 0.72811099999999995
	.quad	0x3fe97e49b1fab96f              # double 0.79666599999999999
	.quad	0x3fe889741d084e83              # double 0.76677899999999999
	.quad	0x3fbce3ef284167a9              # double 0.11285299999999999
	.quad	0x3fef36a400fba882              # double 0.97541999999999995
	.quad	0x3feb45f5ad96a6a0              # double 0.85228999999999999
	.quad	0x3fbb1bac2df0d413              # double 0.105891
	.quad	0x3fd5af6c69b5a640              # double 0.33883200000000002
	.quad	0x3fc16933a0407cc8              # double 0.13602300000000001
	.quad	0x3fc271ef30a4e37a              # double 0.14410200000000001
	.quad	0x3fe436a1e81cb46c              # double 0.63166900000000004
	.quad	0x3fd21672324c8366              # double 0.28261999999999998
	.quad	0x3fe2fcfa26a22b39              # double 0.59338100000000005
	.quad	0x3fdb9c6f36ef8056              # double 0.431423
	.quad	0x3fe5e08d08919ef9              # double 0.68366099999999996
	.quad	0x3febfc0d2c386d2f              # double 0.87451800000000002
	.quad	0x3fdb0f5e41d4b6a6              # double 0.42281299999999999
	.quad	0x3fe62033e78e1933              # double 0.69143100000000002
	.quad	0x3fc1122b7baecd08              # double 0.13336700000000001
	.quad	0x3fbb7e80389f83be              # double 0.10739899999999999
	.quad	0x3fef548cb4aec8d6              # double 0.97907100000000002
	.quad	0x3fc3d0bfa0945f9e              # double 0.154808
	.quad	0x3fd1616f86a09891              # double 0.27157199999999998
	.quad	0x3fdd0346dc5d6388              # double 0.45332499999999998
	.quad	0x3f9070fbeb9e492c              # double 0.016056000000000001
	.quad	0x3fd3e92d55a3a084              # double 0.31110700000000002
	.quad	0x3fcaccc46950fc72              # double 0.209374
	.quad	0x3fe613d5347a5b10              # double 0.68992100000000001
	.quad	0x3fd4dce39b456b44              # double 0.32598199999999999
	.quad	0x3fc98c9fb6134ce4              # double 0.199604
	.quad	0x3fea2abef06b3786              # double 0.81771799999999994
	.quad	0x3fbf10cb295e9e1b              # double 0.12135
	.quad	0x3fdf84a515ce9e5e              # double 0.49247099999999999
	.quad	0x3fef9fe004b7f5a5              # double 0.98826599999999997
	.quad	0x3fe1d40895d0b73d              # double 0.55713299999999999
	.quad	0x3fc1249e44fa0514              # double 0.13392999999999999
	.quad	0x3fb403bc4d22c882              # double 0.078182000000000001
	.quad	0x3fc800da1a93293d              # double 0.187526
	.quad	0x3fb3e9531550ca1d              # double 0.077779000000000001
	.quad	0x3fe7b93037d63023              # double 0.74135600000000001
	.quad	0x3feda231832fcac9              # double 0.92604900000000001
	.quad	0x3fe67ffbce4217d3              # double 0.70312300000000005
	.quad	0x3fcee43aa79bbadc              # double 0.24134
	.quad	0x3fe8c96030c23fab              # double 0.77458199999999999
	.quad	0x3fca9707182235b5              # double 0.207734
	.quad	0x3feee99c7bcc2939              # double 0.96601700000000001
	.quad	0x3fd510c6f7a0b5ee              # double 0.32914900000000002
	.quad	0x3fe8b96f21f6cacd              # double 0.77263599999999999
	.quad	0x3fe67fef39085f4a              # double 0.70311699999999999
	.quad	0x3fc2d3f1843c3a43              # double 0.147093
	.quad	0x3fef2328f9f44d44              # double 0.97304199999999996
	.quad	0x3fe9db445ed4a1ad              # double 0.80801599999999996
	.quad	0x3fe3a314013ec461              # double 0.61365700000000001
	.quad	0x3feb06bbdbe3c105              # double 0.84457199999999999
	.quad	0x3fd7bd2b6f19934f              # double 0.370921
	.quad	0x3fe2637de939eadd              # double 0.57464499999999996
	.quad	0x3fdac9eecbfb15b5              # double 0.41857499999999997
	.quad	0x3fabd48cb4aec8d6              # double 0.054356000000000002
	.quad	0x3fef80eae18ac9f3              # double 0.984487
	.quad	0x3feed955714b9cb7              # double 0.96403000000000005
	.quad	0x3fe602645e4e69f0              # double 0.68779199999999996
	.quad	0x3fbc68448cf7caa7              # double 0.110966
	.quad	0x3fef5d72367e414e              # double 0.98015699999999994
	.quad	0x3fb733daf8df7a4e              # double 0.090634999999999993
	.quad	0x3fca4dfce3150dae              # double 0.20550499999999999
	.quad	0x3fdff62f9ca5bd94              # double 0.49940099999999998
	.quad	0x3fd3f6c2699c7bcc              # double 0.31193599999999999
	.quad	0x3fe9e364bec679cc              # double 0.80900799999999994
	.quad	0x3fd2da48b6523704              # double 0.29457299999999997
	.quad	0x3fe20de6ddf00abf              # double 0.56419699999999995
	.quad	0x3fda6052502eec7d              # double 0.41212900000000002
	.quad	0x3fef6ee0f3cb3e57              # double 0.98228499999999996
	.quad	0x3fdada9435ac8a37              # double 0.41959099999999999
	.quad	0x3fe036c7a7c9de05              # double 0.506687
	.quad	0x3fe8c03148776816              # double 0.77346099999999995
	.quad	0x3fd0549b62c77575              # double 0.255164
	.quad	0x3fb5ecc3e3193f6c              # double 0.085643999999999998
	.quad	0x3fe91c5c5718eb89              # double 0.78471199999999997
	.quad	0x3fc7d15f02c4d65e              # double 0.18607699999999999
	.quad	0x3fdcb09203a322af              # double 0.44827699999999998
	.quad	0x3febae1ef73c0c20              # double 0.86500500000000002
	.quad	0x3fb98e9707182236              # double 0.099832000000000004
	.quad	0x3fadf1bef49cf56f              # double 0.058485000000000002
	.quad	0x3fde62cfd8f0c77e              # double 0.47478100000000001
	.quad	0x3fe252ef911cf356              # double 0.57262400000000002
	.quad	0x3fead00b45ae5ffa              # double 0.83789599999999997
	.quad	0x3fe332bdc26dce3a              # double 0.59994400000000003
	.quad	0x3fc535f3d7d3910c              # double 0.165709
	.quad	0x3fe01ef5232d2bb2              # double 0.50377899999999998
	.quad	0x3fdd8a32f4491299              # double 0.46156000000000003
	.quad	0x3fd53671ac14c661              # double 0.33144800000000002
	.quad	0x3fda47d3d4280ae1              # double 0.410634
	.quad	0x3fcb6c8b43958106              # double 0.21425
	.quad	0x3fecf210be9424e6              # double 0.90454900000000005
	.quad	0x3fea107746887a8d              # double 0.81450999999999996
	.quad	0x3fd404ccee5abc0e              # double 0.31279299999999999
	.quad	0x3fbcb1feeb2d0a24              # double 0.112091
	.quad	0x3fddb3edd8b60f1b              # double 0.46410699999999999
	.quad	0x3fcc873365881a15              # double 0.22287599999999999
	.quad	0x3fea473cd573647c              # double 0.82119600000000003
	.quad	0x3fe8f2e275ab7dc8              # double 0.77964900000000004
	.quad	0x3fe4f4e4430b178b              # double 0.65489399999999998
	.quad	0x3fdc97d06bbdbe3c              # double 0.446766
	.quad	0x3fe4b4b0e1b4bb5e              # double 0.64705699999999999
	.quad	0x3feafc7e6b3fe9fb              # double 0.84332200000000002
	.quad	0x3fef0ec743201041              # double 0.97055400000000002
	.quad	0x3fce8909289dadfb              # double 0.23855699999999999
	.quad	0x3fde43b70ef56649              # double 0.472883
	.quad	0x3fef6d06fef7c244              # double 0.98205900000000001
	.quad	0x3feec9cb252ce033              # double 0.96213300000000001
	.quad	0x3fb238c9752977c9              # double 0.071179000000000006
	.quad	0x3fe4a7ce0fc2eba2              # double 0.64548399999999995
	.quad	0x3fcc79dd3bafd977              # double 0.222469
	.quad	0x3fed93e1c9b41398              # double 0.92430199999999996
	.quad	0x3fb7573eab367a10              # double 0.091175000000000006
	.quad	0x3fa55c0fcb4f1e4b              # double 0.041717999999999998
	.quad	0x3fdf1dffc5479d4e              # double 0.48620600000000003
	.quad	0x3febbaa79bbadc0a              # double 0.86653500000000006
	.quad	0x3fe16ecbfb15b574              # double 0.54477500000000001
	.quad	0x3fee729f59ccfaf0              # double 0.951492
	.quad	0x3fed140fecdd0d8d              # double 0.90869900000000003
	.quad	0x3fef3571d1d4738a              # double 0.97527399999999997
	.quad	0x3fd9bddb9841aac5              # double 0.40221299999999999
	.quad	0x3feac3d89ce4a7b5              # double 0.83640700000000001
	.quad	0x3feb868123810e88              # double 0.86016899999999996
	.quad	0x3fed776c4827b6fe              # double 0.92082799999999998
	.quad	0x3fb3913e81450efe              # double 0.076435000000000003
	.quad	0x3feb9070fbeb9e49              # double 0.86138199999999998
	.quad	0x3fe992d1287c200c              # double 0.79917199999999999
	.quad	0x3fd6f9e3864cb5bb              # double 0.35900199999999999
	.quad	0x3fc077bbf93ff25e              # double 0.12865399999999999
	.quad	0x3fed283d35eb7458              # double 0.91116200000000003
	.quad	0x3fe288333fc86cec              # double 0.57912600000000003
	.quad	0x3faa615a8deb0fae              # double 0.051524
	.quad	0x3fe71cd8127b2cc7              # double 0.722271
	.quad	0x3fae7afa7221858c              # double 0.059532000000000002
	.quad	0x3fdc472c0e7bc3c6              # double 0.44184400000000001
	.quad	0x3fd4a7b4e54f7a92              # double 0.32273600000000002
	.quad	0x3fe6e58e64b23140              # double 0.71552199999999999
	.quad	0x3fec92a737110e45              # double 0.89290199999999997
	.quad	0x3fda3dbc23315d70              # double 0.41001799999999999
	.quad	0x3feca4e379b77c03              # double 0.89512800000000003
	.quad	0x3fbd7add15f02c4d              # double 0.11515599999999999
	.quad	0x3fe99633482be8bc              # double 0.79958499999999999
	.quad	0x3fd6e050374ff866              # double 0.35744100000000001
	.quad	0x3fa7bb517a46173c              # double 0.046351000000000003
	.quad	0x3fdacdf69878316a              # double 0.418821
	.quad	0x3fe5d31550ca1cef              # double 0.68201699999999998
	.quad	0x3fed43d46b26bf87              # double 0.91452999999999995
	.quad	0x3fd0e27e0ef99807              # double 0.263824
	.quad	0x3fc5538ac18f81e9              # double 0.16661200000000001
	.quad	0x3fe2b636f3b213e4              # double 0.58474300000000001
	.quad	0x3fecdeb95e5aff2a              # double 0.90218799999999999
	.quad	0x3fed36a619da9c99              # double 0.91292099999999998
	.quad	0x3fe86eb2d0a24463              # double 0.763513
	.quad	0x3fe0c5f394b7b289              # double 0.52416399999999996
	.quad	0x3fe625ebb7739f34              # double 0.69212899999999999
	.quad	0x3fa8e6afcce1c582              # double 0.048634999999999998
	.quad	0x3fda2e9468017119              # double 0.40909299999999998
	.quad	0x3fc8d5d80e496edf              # double 0.194026
	.quad	0x3fe144fa05143bf7              # double 0.53966999999999998
	.quad	0x3fe6ecb10342aa9f              # double 0.71639299999999995
	.quad	0x3fdfaf922962cfd9              # double 0.495091
	.quad	0x3fef1e1f3a57eaa3              # double 0.97242700000000004
	.quad	0x3fc91704ff43419e              # double 0.19601499999999999
	.quad	0x3fe883b60285ec3e              # double 0.76607800000000004
	.quad	0x3fe72f3a14cec41e              # double 0.72451500000000002
	.quad	0x3fe05d8d79d0a676              # double 0.51141999999999999
	.quad	0x3fc3e28240b78034              # double 0.15534999999999999
	.quad	0x3fe8a5785f8d2e51              # double 0.77019899999999997
	.quad	0x3fe351958969a0ae              # double 0.60370900000000005
	.quad	0x3feeb1fab96f21f7              # double 0.95922600000000002
	.quad	0x3fd28e1932d6ece1              # double 0.28992299999999999
	.quad	0x3fedc4d87724fa8b              # double 0.93027899999999997
	.quad	0x3fe36874c8ffb8b2              # double 0.60650099999999996
	.quad	0x3fe6c558644523f6              # double 0.71158999999999994
	.quad	0x3fd190d5a5b9628d              # double 0.27446500000000001
	.quad	0x3fe7ef8f041461b7              # double 0.74799300000000002
	.quad	0x3fd98fe260b2c83f              # double 0.39940700000000001
	.quad	0x3fb30e90bc7b45f1              # double 0.074440999999999993
	.quad	0x3fc8e5ffa3b9ae0c              # double 0.194519
	.quad	0x3feadc6195464dc2              # double 0.83940199999999998
	.quad	0x3f5fb3fa6defc7a4              # double 0.0019350000000000001
	.quad	0x3fe1dc011d3671ac              # double 0.55810599999999999
	.quad	0x3fe3ef8055fbb518              # double 0.62298600000000004
	.quad	0x3fef0c6f7a0b5ed9              # double 0.97026800000000001
	.quad	0x3fee8cc35ce18266              # double 0.95468299999999995
	.quad	0x3fe60def416bdb1a              # double 0.68920099999999995
	.quad	0x3fdc007dd4413554              # double 0.43752999999999997
	.quad	0x3f8e5753a3ec02f3              # double 0.014815
	.quad	0x3f80f3882278d0cc              # double 0.0082769999999999996
	.quad	0x3fec29003eea209b              # double 0.88000500000000004
	.quad	0x3fec90c2c5e2cdc0              # double 0.89267099999999999
	.quad	0x3fc5bf50e3476295              # double 0.169901
	.quad	0x3fa1754b05b7cfe6              # double 0.034098000000000003
	.quad	0x3fccd67fd3f5b5fa              # double 0.225296
	.quad	0x3feccb61fe21d96f              # double 0.89982700000000004
	.quad	0x3fcc4e26d4801f75              # double 0.221135
	.quad	0x3fe58533b1077469              # double 0.67251000000000005
	.quad	0x3fc248626f60e0eb              # double 0.14283399999999999
	.quad	0x3fe1d9dba908a266              # double 0.55784400000000001
	.quad	0x3fea09e12a51e322              # double 0.81370600000000004
	.quad	0x3fe0dfb9389b5200              # double 0.52730999999999995
	.quad	0x3fe30f861a60d456              # double 0.59564499999999998
	.quad	0x3fe14c4cdfaca362              # double 0.54056400000000004
	.quad	0x3fa7faa044ae85ba              # double 0.046834000000000001
	.quad	0x3fe43a775fb2edfe              # double 0.63213699999999995
	.quad	0x3fe35614df8b1572              # double 0.60425799999999996
	.quad	0x3fe631ee2435696e              # double 0.69359499999999996
	.quad	0x3fe7f7ff151e7536              # double 0.74902299999999999
	.quad	0x3fa02e019b0ab2e1              # double 0.031600999999999997
	.quad	0x3fdc6366d7a56de3              # double 0.44356699999999999
	.quad	0x3fe91e5c0b999136              # double 0.78495599999999999
	.quad	0x3fe9f9d2bf551505              # double 0.81174599999999997
	.quad	0x3fe8471715c63ae2              # double 0.75867799999999996
	.quad	0x3faaf640639d5e4a              # double 0.052659999999999998
	.quad	0x3fe1db8dc55000c9              # double 0.55805099999999996
	.quad	0x3f9f562174c4cdfb              # double 0.030602000000000001
	.quad	0x3fd75eaee2003ab8              # double 0.36515399999999998
	.quad	0x3fd4cfa26a22b389              # double 0.32517299999999999
	.quad	0x3fc1ebfa8f7db6e5              # double 0.140014
	.quad	0x3fe45afd113836a8              # double 0.63610699999999998
	.quad	0x3fe79eeed8904f6e              # double 0.738151
	.quad	0x3fcc240b780346dc              # double 0.21984999999999999
	.quad	0x3fc7a6b50b0f27bb              # double 0.18477499999999999
	.quad	0x3fd02ead9274e22a              # double 0.25284899999999999
	.quad	0x3fdfc02afdda8bd2              # double 0.49610399999999999
	.quad	0x3fee584d338f7985              # double 0.94827899999999998
	.quad	0x3fe9f61672324c83              # double 0.81128999999999996
	.quad	0x3fe22513b5bf6a0e              # double 0.56702600000000003
	.quad	0x3feaf041461b6d44              # double 0.84182800000000002
	.quad	0x3fd15dc8323358f3              # double 0.27134900000000001
	.quad	0x3fd4c96030c23fab              # double 0.324791
	.quad	0x3fe82b5e529bae47              # double 0.75529400000000002
	.quad	0x3fa3cf70153bd167              # double 0.038691999999999997
	.quad	0x3fc788a04d12018a              # double 0.18385699999999999
	.quad	0x3fe02e7f6f4be836              # double 0.50567600000000001
	.quad	0x3fe3f3bc903ea705              # double 0.62350300000000003
	.quad	0x3fbd578a2a90cd42              # double 0.114617
	.quad	0x3fec32441fea8113              # double 0.88113600000000003
	.quad	0x3fee03e8576cce5f              # double 0.93797699999999995
	.quad	0x3fda9d495182a993              # double 0.41585
	.quad	0x3fc7b7e0ac7da1ec              # double 0.18529899999999999
	.quad	0x3febad666a98244f              # double 0.86491700000000005
	.quad	0x3fde636b09635611              # double 0.47481800000000002
	.quad	0x3fee0791c4b90215              # double 0.93842400000000004
	.quad	0x3fb69bcfd4bf0996              # double 0.088315000000000004
	.quad	0x3feaa58b3f63c31e              # double 0.832708
	.quad	0x3f98aa433508f649              # double 0.024087000000000001
	.quad	0x3fef685fd04a2fcf              # double 0.981491
	.quad	0x3feb05186db50f41              # double 0.84437200000000001
	.quad	0x3fe7e06748e47560              # double 0.746143
	.quad	0x3fe34477ff151e75              # double 0.60210799999999998
	.quad	0x3fecc1248d7e0264              # double 0.89857699999999995
	.quad	0x3fcdf3387160956c              # double 0.233985
	.quad	0x3fea452c59fb1e19              # double 0.82094400000000001
	.quad	0x3fec781e8a2ec28b              # double 0.88966299999999998
	.quad	0x3fe86bb1290257c9              # double 0.76314599999999999
	.quad	0x3fe21a7c17a89332              # double 0.56573300000000004
	.quad	0x3fd64299d883ba34              # double 0.34781499999999999
	.quad	0x3fe9441355475a32              # double 0.78956000000000004
	.quad	0x3fe287229e90795f              # double 0.57899599999999996
	.quad	0x3fcfd2d01c0ca601              # double 0.24862100000000001
	.quad	0x3fd87e9d94d0dcfd              # double 0.38272800000000001
	.quad	0x3fda461309c7ffde              # double 0.41052699999999998
	.quad	0x3fe3ae1693c03bc5              # double 0.61500100000000002
	.quad	0x3fc54738a3b57c4e              # double 0.16623599999999999
	.quad	0x3febf3f0fe047d3d              # double 0.87352799999999997
	.quad	0x3fe5c4dec1c1d6d0              # double 0.68028200000000005
	.quad	0x3fe87fe6d58c8eef              # double 0.76561299999999999
	.quad	0x3fe10dfbd6a593a3              # double 0.53295700000000001
	.quad	0x3feb55f138bcdff0              # double 0.85424100000000003
	.quad	0x3fe072c0e7bc3c5c              # double 0.51400800000000002
	.quad	0x3fd3a747d805e5f3              # double 0.307085
	.quad	0x3fd8c85c24c404a7              # double 0.38722899999999999
	.quad	0x3fe3b2c40d0aaa7e              # double 0.61557200000000001
	.quad	0x3fdb655193708aad              # double 0.42805900000000002
	.quad	0x3fec564f97edc7ef              # double 0.88553599999999999
	.quad	0x3fedfdb09a671ef3              # double 0.937218
	.quad	0x3fa031ad2135daad              # double 0.031628999999999997
	.quad	0x3fba09bb6aa4b988              # double 0.101711
	.quad	0x3fd22e33eff19503              # double 0.28406999999999999
	.quad	0x3fd6cbc8c0ce91c9              # double 0.356188
	.quad	0x3febf459d99029ae              # double 0.87357799999999997
	.quad	0x3fea484d76ab5808              # double 0.821326
	.quad	0x3feaaafbc1acde1a              # double 0.833372
	.quad	0x3fe37b28954a7f80              # double 0.60878399999999999
	.quad	0x3febba9f383f0baf              # double 0.86653100000000005
	.quad	0x3fdeb90a7829068a              # double 0.48004400000000003
	.quad	0x3fe718fe69270b07              # double 0.72180100000000003
	.quad	0x3feb6787ce95faa9              # double 0.85638800000000004
	.quad	0x3fd70153bd167664              # double 0.359456
	.quad	0x3fe39c7bcc2938de              # double 0.61285199999999995
	.quad	0x3fea220bc382a130              # double 0.81665600000000005
	.quad	0x3fddb228dc981beb              # double 0.46399899999999999
	.quad	0x3fd96195464dc22b              # double 0.39658100000000002
	.quad	0x3fdaa0e410b630a9              # double 0.41607
	.quad	0x3fef8ce2d1f1cfbc              # double 0.98594800000000004
	.quad	0x3fb42cc2d6a9c561              # double 0.078808000000000003
	.quad	0x3fc06327ed84d339              # double 0.128026
	.quad	0x3fe535d249e44fa0              # double 0.66281999999999996
	.quad	0x3feed0ce4ead0c3d              # double 0.96298899999999998
	.quad	0x3fe08a88effe2a3d              # double 0.51691100000000001
	.quad	0x3fb08893b7d84902              # double 0.064584000000000003
	.quad	0x3fd1d9b5e95b78cd              # double 0.27891300000000002
	.quad	0x3fe44c6822ff0889              # double 0.63432699999999997
	.quad	0x3fcf10fd7e45803d              # double 0.24270600000000001
	.quad	0x3fd48194c0160525              # double 0.320409
	.quad	0x3fc2a67e846a5d6c              # double 0.145706
	.quad	0x3fde3bbc6eb0b7c3              # double 0.47239599999999998
	.quad	0x3fb366516db0dd83              # double 0.07578
	.quad	0x3fb91148fd9fd36f              # double 0.097919999999999993
	.quad	0x3fd9e1deacc92147              # double 0.40441100000000002
	.quad	0x3feff09d8c6d612c              # double 0.99812199999999995
	.quad	0x3fe735f5f0b28523              # double 0.72533700000000001
	.quad	0x3fef32378ab0c88a              # double 0.97487999999999997
	.quad	0x3fdacdd50a88effe              # double 0.41881299999999999
	.quad	0x3fead9b3d07c84b6              # double 0.83907500000000002
	.quad	0x3fe484fd2a62aa19              # double 0.64123399999999997
	.quad	0x3fa6b8f9b13165d4              # double 0.044380000000000003
	.quad	0x3fd0ad6883771865              # double 0.26058399999999998
	.quad	0x3fd7efd00713f078              # double 0.37401200000000001
	.quad	0x3fc3ebbfd71b0468              # double 0.15563199999999999
	.quad	0x3fd161565c2d2780              # double 0.27156599999999997
	.quad	0x3fd2728a6117720d              # double 0.28824100000000002
	.quad	0x3fc4dc65c70435f0              # double 0.16297600000000001
	.quad	0x3fe2b630a91537a0              # double 0.58474000000000004
	.quad	0x3fd4ec3547e06962              # double 0.32691700000000001
	.quad	0x3fd331f03d145d85              # double 0.299923
	.quad	0x3fd76bf01322f273              # double 0.36596299999999998
	.quad	0x3fed806290eed02d              # double 0.92192200000000002
	.quad	0x3fe7210385c67dfe              # double 0.72277999999999998
	.quad	0x3fef27c393682731              # double 0.97360400000000002
	.quad	0x3fe46299524bfd2f              # double 0.63703600000000005
	.quad	0x3fdfa22706d50657              # double 0.49427199999999999
	.quad	0x3fde6d612c6ac216              # double 0.47542600000000002
	.quad	0x3fd20cfe154434e3              # double 0.28204299999999999
	.quad	0x3fc0a1a500d5e8d5              # double 0.12993299999999999
	.quad	0x3fd1884406c00da2              # double 0.27394200000000002
	.quad	0x3fbb4117f84449dc              # double 0.106462
	.quad	0x3fe06e2c98e53eb4              # double 0.51344900000000004
	.quad	0x3f7157abb8800eae              # double 0.0042339999999999999
	.quad	0x3fe39edbf8b9baa1              # double 0.61314199999999996
	.quad	0x3fde0c0ad03d9a95              # double 0.46948499999999999
	.quad	0x3fd901d5c31593e6              # double 0.390737
	.quad	0x3fe36abbcb1cc964              # double 0.60677899999999996
	.quad	0x3fd1df1172ef0ae5              # double 0.27923999999999999
	.quad	0x3fbab1e5c0b99913              # double 0.10427699999999999
	.quad	0x3fc76709fa54c554              # double 0.18283199999999999
	.quad	0x3fc7045fe1112770              # double 0.17982100000000001
	.quad	0x3fe1eff5c6c11a11              # double 0.56054199999999998
	.quad	0x3febb94317acc4f0              # double 0.86636500000000005
	.quad	0x3fec63c536d655e3              # double 0.88717900000000005
	.quad	0x3fcdc99285a921cd              # double 0.232714
	.quad	0x3fb2c226809d4952              # double 0.073275000000000007
	.quad	0x3fc209edbf8b9baa              # double 0.140928
	.quad	0x3fdb0d2806af46aa              # double 0.422678
	.quad	0x3fef81fd9ba1b196              # double 0.98461799999999999
	.quad	0x3fdee864020817fc              # double 0.48293399999999997
	.quad	0x3fd83a7546d3f9e8              # double 0.37856800000000002
	.quad	0x3fb65d6bebe1650a              # double 0.087362999999999996
	.quad	0x3fe70b4e11dbca97              # double 0.72013000000000005
	.quad	0x3fe3b369b9d7fd82              # double 0.61565099999999995
	.quad	0x3fe3b1c219eb6391              # double 0.61544900000000002
	.quad	0x3fdf2b7baecd0785              # double 0.48702899999999999
	.quad	0x3faa411c2a023209              # double 0.051277999999999997
	.quad	0x3fe0d62174c4cdfb              # double 0.52613900000000002
	.quad	0x3fe495d0b73d188f              # double 0.64328799999999997
	.quad	0x3fed26cc1ca3a4b5              # double 0.91098599999999996
	.quad	0x3fe0ec5d206c8712              # double 0.52885300000000002
	.quad	0x3fe79906cca2db62              # double 0.73743000000000003
	.quad	0x3fe5535eb7457c0b              # double 0.66642699999999999
	.quad	0x3fc3f811f4f50a03              # double 0.15600800000000001
	.quad	0x3feeea6a012599ed              # double 0.96611499999999994
	.quad	0x3fe5efb8f57f737e              # double 0.68551300000000004
	.quad	0x3fdf0b45ae5ffa3c              # double 0.48506300000000002
	.quad	0x3fc1cdbbe0157eed              # double 0.13909099999999999
	.quad	0x3fe7ca29845dc832              # double 0.74342799999999998
	.quad	0x3fe1bbcd35a85879              # double 0.55417499999999997
	.quad	0x3fd56c226809d495              # double 0.33472499999999999
	.quad	0x3fe9898915bdd767              # double 0.79803900000000005
	.quad	0x3fe0498e53eb399f              # double 0.50897899999999996
	.quad	0x3fedb0d306a2b170              # double 0.92783499999999997
	.quad	0x3fee0cac4b4d056c              # double 0.93904699999999996
	.quad	0x3fe4a40b780346dc              # double 0.64502499999999996
	.quad	0x3f8b8cb8e086bdf5              # double 0.013452
	.quad	0x3fb16da0168b5cc0              # double 0.068079000000000001
	.quad	0x3fe2010e8858ff76              # double 0.56262900000000005
	.quad	0x3fe21950331e3a7e              # double 0.56559000000000004
	.quad	0x3fed3dbe3c105187              # double 0.91378700000000002
	.quad	0x3fb5dc2f405f6ba0              # double 0.085390999999999995
	.quad	0x3fd90dfdef8487ba              # double 0.39147900000000002
	.quad	0x3feef0691ea78af4              # double 0.96684700000000001
	.quad	0x3feaebbdbe3c1052              # double 0.84127700000000005
	.quad	0x3fd2b4916ca46e09              # double 0.292271
	.quad	0x3fdb59b3d07c84b6              # double 0.42735000000000001
	.quad	0x3fe02d1d041cc533              # double 0.50550700000000004
	.quad	0x3fed8b34e7685986              # double 0.92324300000000004
	.quad	0x3fc7c422036006d1              # double 0.185673
	.quad	0x3fb201797cc39ffd              # double 0.070334999999999995
	.quad	0x3fdb9552e2fbe33b              # double 0.43098900000000001
	.quad	0x3fe18c9d9d3458cd              # double 0.54841499999999999
	.quad	0x3fccb71b8aa00193              # double 0.22433800000000001
	.quad	0x3fcc7fc32ebe596d              # double 0.22264900000000001
	.quad	0x3fe8d0ebaade657c              # double 0.77550300000000005
	.quad	0x3fe981a5870da5db              # double 0.79707600000000001
	.quad	0x3fdecdc443914f48              # double 0.48130899999999999
	.quad	0x3fe8b2031ceaf252              # double 0.77173000000000003
	.quad	0x3fba6f3f52fc2657              # double 0.10326
	.quad	0x3f99784ec636b096              # double 0.024872999999999999
	.quad	0x3fcabdd334c5da6a              # double 0.20891799999999999
	.quad	0x3fe699e0e736049f              # double 0.70628400000000002
	.quad	0x3fbf15d701d9f4d3              # double 0.12142699999999999
	.quad	0x3fcecc78e9f6a93f              # double 0.240615
	.quad	0x3fe46e4e26d4801f              # double 0.63846499999999995
	.quad	0x3fd62b12d3415b14              # double 0.34637899999999999
	.quad	0x3fdbf102363b2570              # double 0.436585
	.quad	0x3fe1c70867ad8e43              # double 0.55554599999999998
	.quad	0x3fe3c46d82ba5a04              # double 0.61772800000000005
	.quad	0x3fbccd0fe8ab4fa5              # double 0.11250400000000001
	.quad	0x3fec3c2dadb8348f              # double 0.88234599999999996
	.quad	0x3fd0775b81301648              # double 0.25728499999999999
	.quad	0x3fc44a1f080303c0              # double 0.15851199999999999
	.quad	0x3fe5afe3f359ff50              # double 0.67772100000000002
	.quad	0x3fec7e3b03e20cd0              # double 0.89040900000000001
	.quad	0x3fdbd1394317acc5              # double 0.434645
	.quad	0x3fd2f327aa68f4b6              # double 0.29609099999999999
	.quad	0x3fd57075b3e1437c              # double 0.33498899999999998
	.quad	0x3fdf9157abb8800f              # double 0.49324600000000002
	.quad	0x3fe38cdea033e78e              # double 0.61094599999999999
	.quad	0x3fa4d7060bb2bbaa              # double 0.040703000000000003
	.quad	0x3fead859c8c9320e              # double 0.83891000000000004
	.quad	0x3fec9aac53b0813d              # double 0.89388100000000004
	.quad	0x3fef4d184c271fff              # double 0.97816099999999994
	.quad	0x3fdf0bcbe61cffeb              # double 0.485095
	.quad	0x3fe50f062d40aaeb              # double 0.658084
	.quad	0x3fd244bb1af3a14d              # double 0.285445
	.quad	0x3fda8900c521dda0              # double 0.41461199999999998
	.quad	0x3fee627179bfdf7f              # double 0.94951700000000006
	.quad	0x3fe5e8dfbd6a593a              # double 0.68467699999999998
	.quad	0x3fc8ab5807fed203              # double 0.19272900000000001
	.quad	0x3fc21f75104d551d              # double 0.14158499999999999
	.quad	0x3fc0840e1719f7f9              # double 0.12903000000000001
	.quad	0x3fe5fc393682730c              # double 0.68703899999999996
	.quad	0x3fe670025bfad29a              # double 0.70117300000000005
	.quad	0x3fe2defe93187619              # double 0.58972100000000005
	.quad	0x3feca0e1f7d73c92              # double 0.89463899999999996
	.quad	0x3fe793ff25e56cd7              # double 0.73681600000000003
	.quad	0x3fd45fe542e557de              # double 0.318353
	.quad	0x3feab964a59c065b              # double 0.83513099999999996
	.quad	0x3fe5eeeb702602c9              # double 0.685415
	.quad	0x3fd018b502ababeb              # double 0.25150800000000001
	.quad	0x3fe15b0142f61ed6              # double 0.54235900000000004
	.quad	0x3fdbaffb04ee7c4a              # double 0.432616
	.quad	0x3fe572e6a76965f5              # double 0.67027599999999998
	.quad	0x3fcd24d099e0e736              # double 0.227686
	.quad	0x3fee20f0a5efe932              # double 0.94152100000000005
	.quad	0x3fe47ba01eeed890              # double 0.64009099999999997
	.quad	0x3fe20d9f90539fba              # double 0.56416299999999997
	.quad	0x3fc355ac03ff6901              # double 0.15105199999999999
	.quad	0x3fe09eb6390c9108              # double 0.519374
	.quad	0x3fc22df0d413122b              # double 0.14202699999999999
	.quad	0x3fecf5989df1172f              # double 0.90498000000000001
	.quad	0x3fecae770bd017db              # double 0.89629700000000001
	.quad	0x3feb98d25edd0529              # double 0.86240499999999998
	.quad	0x3fc19b1b79d909f2              # double 0.137546
	.quad	0x3fc1f0c34c1a8ac6              # double 0.14016000000000001
	.quad	0x3fd8f41f212d7732              # double 0.38990000000000002
	.quad	0x3fd5174c4cdfaca3              # double 0.32954699999999998
	.quad	0x3fe45db9841aac54              # double 0.63644100000000003
	.quad	0x3fe7ee7c49fd7a14              # double 0.74786200000000003
	.quad	0x3fd25f91600f3450              # double 0.28708299999999998
	.quad	0x3fe2b8dc55000c95              # double 0.58506599999999997
	.quad	0x3fe94dd0d8cb07d1              # double 0.79074900000000004
	.quad	0x3fc694812be48a59              # double 0.17640700000000001
	.quad	0x3fe0992c8c5004fb              # double 0.51869799999999999
	.quad	0x3fee9f98b71b8aa0              # double 0.95698199999999999
	.quad	0x3fe626b2f23033a4              # double 0.69222399999999995
	.quad	0x3fe066b6177ea1c7              # double 0.51253800000000005
	.quad	0x3fd79c1b54195cc8              # double 0.36890299999999998
	.quad	0x3fec72d5e071c53f              # double 0.88901799999999997
	.quad	0x3fb7e5a78f25a251              # double 0.093348
	.quad	0x3fcec80c73abc947              # double 0.24048
	.quad	0x3fe26b24a6a875d5              # double 0.57557899999999995
	.quad	0x3fb00d0aaa7ded6c              # double 0.062699000000000005
	.quad	0x3fe12600b0292817              # double 0.53588899999999995
	.quad	0x3fdc7204295a6c5d              # double 0.44445899999999999
	.quad	0x3fb9c94f69ca9ef5              # double 0.100728
	.quad	0x3fe24d855970b49e              # double 0.571963
	.quad	0x3fee1c3265add9c2              # double 0.94094199999999995
	.quad	0x3fc82e1ac57e23f2              # double 0.18890699999999999
	.quad	0x3fddd9a0f0a5efe9              # double 0.46640799999999999
	.quad	0x3fe0f38e6d15ad10              # double 0.52973099999999995
	.quad	0x3fec2e81882adc4d              # double 0.88067700000000004
	.quad	0x3fd08759253543af              # double 0.25826100000000002
	.quad	0x3fea1c8eabffcdab              # double 0.81598599999999999
	.quad	0x3fb4a8b08dd1e53b              # double 0.080699000000000007
	.quad	0x3fe6585be1a82624              # double 0.69828599999999996
	.quad	0x3fe8d99cbee807bc              # double 0.77656400000000003
	.quad	0x3fb6a6a012599ed8              # double 0.088480000000000003
	.quad	0x3fbad72ffd1dcd70              # double 0.10484599999999999
	.quad	0x3fcf0ae536501e26              # double 0.24252000000000001
	.quad	0x3fe6c38f36694899              # double 0.711372
	.quad	0x3fd181ba7fc32ebe              # double 0.27354299999999998
	.quad	0x3fdb08637bd05af7              # double 0.42238700000000001
	.quad	0x3fd6841aac53b081              # double 0.35181299999999999
	.quad	0x3fb64b44a1f08030              # double 0.087085999999999996
	.quad	0x3f970b49e01de269              # double 0.022504
	.quad	0x3fe18713f077ccc0              # double 0.54773899999999998
	.quad	0x3fe5348909289dae              # double 0.662663
	.quad	0x3fe8e9899bf5946c              # double 0.77850799999999997
	.quad	0x3fea393682730c67              # double 0.81948399999999999
	.quad	0x3febad8c2a454de8              # double 0.86493500000000001
	.quad	0x3fcffddebd9018e7              # double 0.24993499999999999
	.quad	0x3fb0adddf43c7d5f              # double 0.065153000000000003
	.quad	0x3feb97c80841ede1              # double 0.86227799999999999
	.quad	0x3fef1c15097c8084              # double 0.97217799999999998
	.quad	0x3fd170a3d70a3d71              # double 0.27250000000000002
	.quad	0x3fd435158b827fa2              # double 0.31574000000000002
	.quad	0x3f6fec99f1ae2da5              # double 0.0038969999999999999
	.quad	0x3fa820e6299524c0              # double 0.047126000000000001
	.quad	0x3fd2924f227d028a              # double 0.29017999999999999
	.quad	0x3fdcfb19e731d2e1              # double 0.45282600000000001
	.quad	0x3fde3343fa2ad3e9              # double 0.47187899999999999
	.quad	0x3fe75c011d3671ac              # double 0.72998099999999999
	.quad	0x3feb0c111ada76d9              # double 0.84522299999999995
	.quad	0x3fe24d8dbcec84f9              # double 0.571967
	.quad	0x3fd3523f67f4dbe0              # double 0.30189500000000002
	.quad	0x3fdce02a77a2cecd              # double 0.45118200000000003
	.quad	0x3fd69806f262888b              # double 0.35302899999999998
	.quad	0x3fdbff8a8f3a9b07              # double 0.43747200000000003
	.quad	0x3fe672778140dd40              # double 0.70147300000000001
	.quad	0x3fe0cfdd22856606              # double 0.52537400000000001
	.quad	0x3fe6276d97b30f8c              # double 0.69231299999999996
	.quad	0x3febe23f24d8fd5d              # double 0.87136800000000003
	.quad	0x3fe18a4a05dd8f93              # double 0.54813100000000003
	.quad	0x3fd92cb641700cd8              # double 0.39335399999999998
	.quad	0x3fec3e4473cd5736              # double 0.88260099999999997
	.quad	0x3fc47c7c5260f5e4              # double 0.160049
	.quad	0x3f87c5ef62f9ca5c              # double 0.011608
	.quad	0x3fb4fd08d4bad7d8              # double 0.081986000000000003
	.quad	0x3fdaaf1886df82b2              # double 0.416937
	.quad	0x3fecefe4ffc9795b              # double 0.90428399999999998
	.quad	0x3fd68be7296f6513              # double 0.35228900000000002
	.quad	0x3fd9a77e5eaab042              # double 0.40084799999999998
	.quad	0x3fe899aa60913a50              # double 0.76875800000000005
	.quad	0x3fc89b38d60a6330              # double 0.19223699999999999
	.quad	0x3fe80374ff865d7d              # double 0.75042200000000003
	.quad	0x3fd0ed288ce703b0              # double 0.26447500000000002
	.quad	0x3fed76b3bb83cf2d              # double 0.92074
	.quad	0x3fed9ed17c5ef630              # double 0.92563700000000004
	.quad	0x3fe7d323fee2c98e              # double 0.74452399999999996
	.quad	0x3fe9714fce746cb9              # double 0.79508199999999996
	.quad	0x3fe85e050374ff86              # double 0.76147699999999996
	.quad	0x3fe58ca1cef240fb              # double 0.67341700000000004
	.quad	0x3fe8679463cfb331              # double 0.76264399999999999
	.quad	0x3fe8307af20ea5b5              # double 0.75591799999999998
	.quad	0x3fcc08d08919ef95              # double 0.21901899999999999
	.quad	0x3feef81c714fce74              # double 0.96778699999999995
	.quad	0x3f8ad7d7c2ca148c              # double 0.013107000000000001
	.quad	0x3fa5dd4c76d117b5              # double 0.042703999999999999
	.quad	0x3fd794812be48a59              # double 0.36843900000000002
	.quad	0x3fe4045fe1112770              # double 0.62553400000000003
	.quad	0x3fd80d9513f8db49              # double 0.37582900000000002
	.quad	0x3fd632f87ad080b6              # double 0.34686099999999997
	.quad	0x3fed07bfe7e1fc09              # double 0.907196
	.quad	0x3fda75fb2edfe75c              # double 0.41345100000000001
	.quad	0x3feea324c8366517              # double 0.95741500000000002
	.quad	0x3fef782b1f687b14              # double 0.98341900000000004
	.quad	0x3fe2feda66128390              # double 0.59360999999999997
	.quad	0x3feaeadb402d16b9              # double 0.84116899999999994
	.quad	0x3fe4d6c2efd438d2              # double 0.65121600000000002
	.quad	0x3fe1a68d32830a0b              # double 0.55158099999999999
	.quad	0x3feb7bd273d5bab2              # double 0.85886499999999999
	.quad	0x3fb71de69ad42c3d              # double 0.090300000000000005
	.quad	0x3fe2a4f00ef1348b              # double 0.58263399999999999
	.quad	0x3fefa3ec02f2f987              # double 0.98875999999999997
	.quad	0x3fd15bff04577d95              # double 0.27123999999999998
	.quad	0x3fd64aa9717df19d              # double 0.34830699999999998
	.quad	0x3fb209784ec636b1              # double 0.070457000000000006
	.quad	0x3fe532edfe75bc45              # double 0.66246700000000003
	.quad	0x3fee856c508b32cf              # double 0.95378700000000005
	.quad	0x3fc21ce6c093d966              # double 0.14150699999999999
	.quad	0x3fd25a1016ce789e              # double 0.28674699999999997
	.quad	0x3fec0a50507a6bd7              # double 0.87625900000000001
	.quad	0x3fa7b267c6b8b695              # double 0.046282999999999998
	.quad	0x3fe9f4f0d844d014              # double 0.81115000000000003
	.quad	0x3fb2bf8769ec2ce4              # double 0.073234999999999995
	.quad	0x3fe21cf355cd91ef              # double 0.56603400000000004
	.quad	0x3fd75336deb95e5b              # double 0.364454
	.quad	0x3feb6d0d49949e88              # double 0.85706199999999999
	.quad	0x3fc8cb07d0aed99d              # double 0.19369600000000001
	.quad	0x3fe021b1960fa15e              # double 0.50411300000000003
	.quad	0x3fe05e2046c764ae              # double 0.51149
	.quad	0x3fec4d74927913e8              # double 0.88445499999999999
	.quad	0x3fd6ff8ec0f88334              # double 0.359348
	.quad	0x3fefb530ced4e4c9              # double 0.99086799999999997
	.quad	0x3fe03c3a42f1ed18              # double 0.50735200000000003
	.quad	0x3fca9984a0e410b6              # double 0.20780999999999999
	.quad	0x3fb619c9d5a187a5              # double 0.086331000000000005
	.quad	0x3fe998f605ab3aac              # double 0.79992200000000002
	.quad	0x3f96a98244e93e1d              # double 0.022131000000000001
	.quad	0x3fe1b58afc47e49b              # double 0.55341099999999999
	.quad	0x3fe88dc55000c954              # double 0.76730600000000004
	.quad	0x3f958ea7ce0fc2ec              # double 0.021052000000000001
	.quad	0x3fe4367c286f8ad2              # double 0.63165099999999996
	.quad	0x3fed9c4113c68662              # double 0.92532400000000004
	.quad	0x3f9f633ce63a5c1c              # double 0.030651999999999999
	.quad	0x3fe270a1be2b495a              # double 0.57624900000000001
	.quad	0x3fe5f720c8cd63cc              # double 0.68641700000000005
	.quad	0x3fd32435696e58a3              # double 0.29908499999999999
	.quad	0x3feea9aa1d755bcd              # double 0.95821100000000003
	.quad	0x3fe22d4f5903a754              # double 0.56803099999999995
	.quad	0x3fe93e468cac4b4d              # double 0.788852
	.quad	0x3fe93851eb851eb8              # double 0.78812499999999996
	.quad	0x3fe920e8427418d7              # double 0.78526700000000005
	.quad	0x3fb934efcbd55608              # double 0.098463999999999996
	.quad	0x3fd86eefa1e3eaf7              # double 0.38177100000000003
	.quad	0x3fd6d4b6a619da9d              # double 0.35673300000000002
	.quad	0x3fc4550870110a13              # double 0.15884499999999999
	.quad	0x3fe0a94573a79789              # double 0.52066299999999999
	.quad	0x3fbdb2a27f1b6912              # double 0.116007
	.quad	0x3fce9fe004b7f5a5              # double 0.23925399999999999
	.quad	0x3fd0b6b2af145522              # double 0.26115100000000002
	.quad	0x3fee99ae924f227d              # double 0.95626
	.quad	0x3fc2db6a1e81cb47              # double 0.14732100000000001
	.quad	0x3fee68661ae70c13              # double 0.95024399999999998
	.quad	0x3fe3a13c254a3c64              # double 0.61343199999999998
	.quad	0x3fd48f9b13165d3a              # double 0.32126500000000002
	.quad	0x3fcbaf8594291750              # double 0.21629399999999999
	.quad	0x3fe76e3b46fdeb53              # double 0.73220600000000002
	.quad	0x3fd35baf533f4235              # double 0.30247099999999999
	.quad	0x3fc68c154c985f07              # double 0.17615
	.quad	0x3fd241248d7e0264              # double 0.28522599999999998
	.quad	0x3fd74906034f3fd9              # double 0.36383199999999999
	.quad	0x3fc2bb1290257c91              # double 0.14633399999999999
	.quad	0x3fd59b5e95b78cca              # double 0.33760800000000002
	.quad	0x3fe8bc1acde19fc3              # double 0.77296200000000004
	.quad	0x3feec1e364bec67a              # double 0.96116800000000002
	.quad	0x3fce27631b584b1b              # double 0.23557700000000001
	.quad	0x3fec0e779207d4e1              # double 0.87676600000000005
	.quad	0x3fd4c36976bc1f00              # double 0.32442700000000002
	.quad	0x3feb1151611ba3ca              # double 0.84586399999999995
	.quad	0x3fea2038194c0160              # double 0.81643299999999996
	.quad	0x3fe0bb384fd2a62b              # double 0.52285400000000004
	.quad	0x3fe28661ae70c133              # double 0.57890399999999997
	.quad	0x3fe30f66a5508701              # double 0.59562999999999999
	.quad	0x3fd3e62131a8ef78              # double 0.310921
	.quad	0x3fec1e6eeb702603              # double 0.87871500000000002
	.quad	0x3fe063779e9d0e99              # double 0.51214199999999999
	.quad	0x3fe0f67b1c0010c7              # double 0.530088
	.quad	0x3fe49fadafd11383              # double 0.64449199999999995
	.quad	0x3fa97fc7607c419a              # double 0.049803
	.quad	0x3f916872b020c49c              # double 0.017000000000000001
	.quad	0x3fe0d0aaa7ded6bb              # double 0.52547200000000005
	.quad	0x3fe566516db0dd83              # double 0.66874
	.quad	0x3fe265bea0ba1f4b              # double 0.57491999999999999
	.quad	0x3fe66260b2c83ec9              # double 0.69950900000000005
	.quad	0x3feb550870110a13              # double 0.85412999999999994
	.quad	0x3fe3b4528283d35f              # double 0.61576200000000003
	.quad	0x3fdde093532e7b3e              # double 0.46683200000000002
	.quad	0x3fe2de7a743a6480              # double 0.58965800000000002
	.quad	0x3fd80635a426bb56              # double 0.37537900000000002
	.quad	0x3fedede54b48d3ae              # double 0.93528999999999995
	.quad	0x3fe5ba6266fd651b              # double 0.67900199999999999
	.quad	0x3fcd9d7774aba387              # double 0.23136799999999999
	.quad	0x3fe93517a46173b8              # double 0.78773099999999996
	.quad	0x3feab92189bd8384              # double 0.83509900000000003
	.quad	0x3fe4d11dffc5479d              # double 0.65052699999999997
	.quad	0x3fd64d50ebaade65              # double 0.34846899999999997
	.quad	0x3fc12fb19e731d2e              # double 0.134268
	.quad	0x3fe3dc93ea2d2fe4              # double 0.62067600000000001
	.quad	0x3fdfcdaf4adbc665              # double 0.49692900000000001
	.quad	0x3f77d3910c2c5e2d              # double 0.0058170000000000001
	.quad	0x3f81327243137b07              # double 0.0083969999999999999
	.quad	0x3fd2fbacb4289119              # double 0.29661100000000001
	.quad	0x3fc74d940789613d              # double 0.18205499999999999
	.quad	0x3fde36a400fba882              # double 0.47208499999999998
	.quad	0x3fe7ee08f2170931              # double 0.747807
	.quad	0x3feb607e5a78f25a              # double 0.85552899999999998
	.quad	0x3fe3bfd933e35c5b              # double 0.61716899999999997
	.quad	0x3fe979c842fa5094              # double 0.79611600000000004
	.quad	0x3f9b26394face67d              # double 0.026512999999999998
	.quad	0x3fec3ef284167a96              # double 0.88268400000000002
	.quad	0x3fccc52a411c2a02              # double 0.22476699999999999
	.quad	0x3fefb821af7d30ad              # double 0.99122699999999996
	.quad	0x3fe63c89f40a2878              # double 0.69489000000000001
	.quad	0x3fae3821af7d30ad              # double 0.059021999999999998
	.quad	0x3fe26d549731098d              # double 0.57584599999999997
	.quad	0x3fe5d70a3d70a3d7              # double 0.6825
	.quad	0x3fede56eefa1e3eb              # double 0.934257
	.quad	0x3fd48637bd05af6c              # double 0.32069199999999998
	.quad	0x3fc531db445ed4a2              # double 0.16558400000000001
	.quad	0x3fdd26b2f23033a4              # double 0.45548699999999998
	.quad	0x3fbf7bd05af6c69b              # double 0.122983
	.quad	0x3fc2e63a5c1c6089              # double 0.147651
	.quad	0x3fec3c83a96d4c34              # double 0.88238700000000003
	.quad	0x3fe7b61bb05faebc              # double 0.74097999999999997
	.quad	0x3fe53797460242d0              # double 0.66303599999999996
	.quad	0x3fcd991bc5586445              # double 0.231235
	.quad	0x3fbaa9d627bf61aa              # double 0.104154
	.quad	0x3fef9a4df47f993d              # double 0.98758599999999996
	.quad	0x3fe496787ce95fab              # double 0.64336800000000005
	.quad	0x3fe0f6a7264a16a5              # double 0.53010900000000005
	.quad	0x3fe1a98eda22f6a5              # double 0.55194799999999999
	.quad	0x3fd44f8b588e368f              # double 0.317355
	.quad	0x3fdf20ccff21b3af              # double 0.486377
	.quad	0x3fdcfca42aed1394              # double 0.45291999999999999
	.quad	0x3fc851f3e89a88ad              # double 0.190001
	.quad	0x3fc177d0f1f57b42              # double 0.13646900000000001
	.quad	0x3fa2393ee5eedcc2              # double 0.035593
	.quad	0x3fce7bbb62413db8              # double 0.238151
	.quad	0x3fee631d712a0ec7              # double 0.94959899999999997
	.quad	0x3fd6a5bd944aa540              # double 0.35386600000000001
	.quad	0x3fde1f9f01b866e4              # double 0.47067999999999999
	.quad	0x3fe9084e831ad213              # double 0.78226399999999996
	.quad	0x3fea1a38fbca105a              # double 0.81570100000000001
	.quad	0x3fef7d9dba908a26              # double 0.98408399999999996
	.quad	0x3fdc88e368f08462              # double 0.445855
	.quad	0x3fddf5f91600f345              # double 0.468138
	.quad	0x3fe1fabda0dfdef8              # double 0.56185799999999997
	.quad	0x3feff7c45cbbc2b9              # double 0.99899499999999996
	.quad	0x3fe962d40aaeafab              # double 0.79331399999999996
	.quad	0x3fda6c69b5a63f9a              # double 0.41286699999999998
	.quad	0x3fd343d46b26bf87              # double 0.30101499999999998
	.quad	0x3fe4469728a61177              # double 0.63361699999999999
	.quad	0x3fd8a719b4dcebff              # double 0.38519900000000001
	.quad	0x3fe952e72da122fb              # double 0.79137000000000002
	.quad	0x3fd834b51372a38c              # double 0.37821700000000003
	.quad	0x3fe8711f926c7eae              # double 0.76380899999999996
	.quad	0x3fe94016052502ef              # double 0.78907300000000002
	.quad	0x3fe2ad03d9a95422              # double 0.58362000000000003
	.quad	0x3fe53d0bfa0945fa              # double 0.66370200000000001
	.quad	0x3fdb77036c9c0a8d              # double 0.42913899999999999
	.quad	0x3fe3682730c67169              # double 0.606464
	.quad	0x3fed313165d39970              # double 0.91225500000000004
	.quad	0x3fed42bb6672fba0              # double 0.91439599999999998
	.quad	0x3feb3e5753a3ec03              # double 0.85136000000000001
	.quad	0x3fef9b089a027525              # double 0.98767499999999996
	.quad	0x3fd00bed740c4157              # double 0.25072800000000001
	.quad	0x3fe4c8cb4aec8d5c              # double 0.64951099999999995
	.quad	0x3fe8bd3c36113405              # double 0.77310000000000001
	.quad	0x3fe755fdcdf69878              # double 0.72924699999999998
	.quad	0x3fe6a452c59fb1e2              # double 0.70755900000000005
	.quad	0x3fb5d5c31593e5fb              # double 0.085292999999999994
	.quad	0x3fd2cd7060bb2bbb              # double 0.29378900000000002
	.quad	0x3fde82235b4edb2f              # double 0.47669299999999998
	.quad	0x3fd8aaac1094a2ba              # double 0.38541700000000001
	.quad	0x3fc6ad256798958e              # double 0.17715900000000001
	.quad	0x3fee4944ed6fda83              # double 0.94644399999999995
	.quad	0x3fe0773c0c1fc8f3              # double 0.51455499999999998
	.quad	0x3fee2a12f901083e              # double 0.94263600000000003
	.quad	0x3fe9901083dbc233              # double 0.79883599999999999
	.quad	0x3fd670e2c12ad81b              # double 0.35064000000000001
	.quad	0x3fd5eae5bc87db2b              # double 0.34246199999999999
	.quad	0x3fdb47496aad1d04              # double 0.42622599999999999
	.quad	0x3fe0cff865d7cb2e              # double 0.52538700000000005
	.quad	0x3fef4d9e83e425af              # double 0.97822500000000001
	.quad	0x3fd6b0a2ca9ac365              # double 0.35453099999999999
	.quad	0x3fdeee0b0af5fd48              # double 0.48327900000000001
	.quad	0x3fe7e5492ff4ba52              # double 0.74673900000000004
	.quad	0x3fe15104d551d68c              # double 0.54113999999999995
	.quad	0x3fe5e1dc93ea2d30              # double 0.68382100000000001
	.quad	0x3fe73f20a73f748a              # double 0.72645599999999999
	.quad	0x3fe25594f26aec07              # double 0.57294699999999998
	.quad	0x3fca642bf9830e3d              # double 0.206182
	.quad	0x3fe0ab302f72b453              # double 0.52089700000000005
	.quad	0x3fe3b98c7e28240b              # double 0.61639999999999995
	.quad	0x3fd84bcf0b6b6e0d              # double 0.37962699999999999
	.quad	0x3fea05db76b3bb84              # double 0.81321500000000002
	.quad	0x3fe3b721d53cddd7              # double 0.61610500000000001
	.quad	0x3fd6a76102795704              # double 0.353966
	.quad	0x3fe9eb0fadf2ecf2              # double 0.809944
	.quad	0x3fe7063beec3979a              # double 0.71951100000000001
	.quad	0x3fecfaf859429175              # double 0.905636
	.quad	0x3fb916ebd4cfd08d              # double 0.098005999999999996
	.quad	0x3fe212d1287c200c              # double 0.56479699999999999
	.quad	0x3fe7a72ead9274e2              # double 0.73915799999999998
	.quad	0x3feb2f6837f7be12              # double 0.84953699999999999
	.quad	0x3fb8bb3c81908e58              # double 0.096606999999999998
	.quad	0x3fc0aee2003ab863              # double 0.13033700000000001
	.quad	0x3fd6962cfd8f0c78              # double 0.35291600000000001
	.quad	0x3fb7edd8b60f1b26              # double 0.093473
	.quad	0x3fed820c49ba5e35              # double 0.92212499999999997
	.quad	0x3fe286466b1e5c0c              # double 0.57889100000000004
	.quad	0x3fcc51e321a2e7f7              # double 0.221249
	.quad	0x3fbc94e5d5b24e9c              # double 0.111647
	.quad	0x3fe6c851a8694035              # double 0.71195299999999995
	.quad	0x3fe05c78a6dacabc              # double 0.51128799999999996
	.quad	0x3fe1a0ab71327243              # double 0.55086299999999999
	.quad	0x3fe778c64fdb09a6              # double 0.73349299999999995
	.quad	0x3fe56ed8904f6dfc              # double 0.66978099999999996
	.quad	0x3fd4d29dc725c3df              # double 0.32535500000000001
	.quad	0x3fed26a012599ed8              # double 0.91096500000000002
	.quad	0x3fd6c79b34a44c7b              # double 0.355933
	.quad	0x3fdec1acde19fc2b              # double 0.48057100000000003
	.quad	0x3fd458e64b231401              # double 0.31792599999999999
	.quad	0x3fc655c96030c240              # double 0.17449300000000001
	.quad	0x3fe9135fc3b4f616              # double 0.78361499999999995
	.quad	0x3fe35aaf78feef5f              # double 0.60482000000000002
	.quad	0x3fe90c308feac42f              # double 0.78273800000000004
	.quad	0x3fbf1b152f3c2dae              # double 0.121507
	.quad	0x3fe31a5ca29845dd              # double 0.59696800000000005
	.quad	0x3fe237542a23bff9              # double 0.56925400000000004
	.quad	0x3fe5b20b8066c2ad              # double 0.67798400000000003
	.quad	0x3fd53df2a9d627bf              # double 0.33190599999999998
	.quad	0x3fed9adc8fb86f48              # double 0.92515400000000003
	.quad	0x3f8a0620ab713272              # double 0.012707
	.quad	0x3fe21670196d8f50              # double 0.56523900000000005
	.quad	0x3feffbfe7e1fc090              # double 0.99951100000000004
	.quad	0x3fe1c32ca57a786c              # double 0.55507499999999999
	.quad	0x3fc372ffd1dcd706              # double 0.151947
	.quad	0x3fe01d0c80410300              # double 0.50354600000000005
	.quad	0x3fd4a76102795704              # double 0.322716
	.quad	0x3feff34f82f51266              # double 0.99845099999999998
	.quad	0x3fc09f16b11c6d1e              # double 0.129855
	.quad	0x3fe86892253111f1              # double 0.76276500000000003
	.quad	0x3fd8affb04ee7c4a              # double 0.385741
	.quad	0x3fd6cebbba55d1c4              # double 0.35636800000000002
	.quad	0x3feeae1262025397              # double 0.95874899999999996
	.quad	0x3fe44126a65cf67b              # double 0.63295299999999999
	.quad	0x3fc8fed634549b63              # double 0.19527700000000001
	.quad	0x3fe980bed740c415              # double 0.79696599999999995
	.quad	0x3fb6d9ad85dfa872              # double 0.089259000000000005
	.quad	0x3f96b484d76ab580              # double 0.022172999999999998
	.quad	0x3fec0a2a90cd423e              # double 0.87624100000000005
	.quad	0x3fe6172ef0ae5365              # double 0.69033
	.quad	0x3fcd8726d04e618d              # double 0.230687
	.quad	0x3fe9f3cd573647bb              # double 0.81101100000000004
	.quad	0x3fe401669ced0b31              # double 0.62517100000000003
	.quad	0x3feb1ac9afe1da7b              # double 0.84702
	.quad	0x3fdadbfceb78897f              # double 0.41967700000000002
	.quad	0x3fe7bff25e56cd6c              # double 0.74218099999999998
	.quad	0x3fecd6c508b32ce9              # double 0.90121700000000005
	.quad	0x3fa9bf37b8d3f184              # double 0.050286999999999998
	.quad	0x3fde8cc144028e50              # double 0.47734100000000002
	.quad	0x3fe75a35d67ba238              # double 0.72976200000000002
	.quad	0x3fc2a0d349be8ff3              # double 0.145533
	.quad	0x3fe0e47991bc5586              # double 0.52788999999999997
	.quad	0x3fe30b2e9ccb7d41              # double 0.59511499999999995
	.quad	0x3fe4098b2e9ccb7d              # double 0.62616499999999997
	.quad	0x3fc168e820e62995              # double 0.136014
	.quad	0x3fcc67f90d9d7775              # double 0.22192300000000001
	.quad	0x3fd127e0ef99806f              # double 0.26805899999999999
	.quad	0x3fe4c0bbb1f255f3              # double 0.64852699999999996
	.quad	0x3fed9c065b63d3e5              # double 0.92529600000000001
	.quad	0x3fd71cd1c7de5083              # double 0.36113400000000001
	.quad	0x3fe7bd4cfd08d4bb              # double 0.74185800000000002
	.quad	0x3fd1620ab7132724              # double 0.27160899999999999
	.quad	0x3fdbca46e08f2171              # double 0.43422100000000002
	.quad	0x3fe52fad6cb53501              # double 0.66207000000000005
	.quad	0x3fead1b2e59af9ec              # double 0.838098
	.quad	0x3feeef2a5a469d73              # double 0.96669499999999997
	.quad	0x3fed42efd438d1d9              # double 0.91442100000000004
	.quad	0x3fe3c8b439581062              # double 0.61824999999999997
	.quad	0x3fda8ab4fa48301a              # double 0.41471599999999997
	.quad	0x3fe17924af0bf1a6              # double 0.54603800000000002
	.quad	0x3fe1a3571d1d4739              # double 0.55118900000000004
	.quad	0x3fe4e8943e100608              # double 0.65339100000000006
	.quad	0x3fe46177ea1c68ec              # double 0.63689799999999996
	.quad	0x3fe06e807bbb6241              # double 0.51348899999999997
	.quad	0x3fe5b9c0ebedfa44              # double 0.678925
	.quad	0x3fd6bcfd4bf0995b              # double 0.35528500000000002
	.quad	0x3fdf5b18548a9bd0              # double 0.48993500000000001
	.quad	0x3fd3204af922962d              # double 0.298846
	.quad	0x3fe9282c6ef3d3a2              # double 0.78615400000000002
	.quad	0x3fe19c94f69ca9ef              # double 0.55036399999999996
	.quad	0x3fec35c9e6687f45              # double 0.88156599999999996
	.quad	0x3fd37b1c0010c6f8              # double 0.30438900000000002
	.quad	0x3fd477f6b1a2a4db              # double 0.319822
	.quad	0x3fe7370ef566490a              # double 0.72547099999999998
	.quad	0x3fe2df69878316a0              # double 0.58977199999999996
	.quad	0x3fd6ece5710880d8              # double 0.358209
	.quad	0x3fd2fe4ffc9795b3              # double 0.29677199999999998
	.quad	0x3fe8fec7863beec4              # double 0.78110100000000004
	.quad	0x3fe2e310dbf0563f              # double 0.59021800000000002
	.quad	0x3fe2e88df37329c3              # double 0.59088799999999997
	.quad	0x3fd6f79c842fa509              # double 0.35886299999999999
	.quad	0x3fe66f36ef8055fc              # double 0.70107600000000003
	.quad	0x3fcee770bd017daf              # double 0.24143800000000001
	.quad	0x3fe751eb851eb852              # double 0.72875000000000001
	.quad	0x3fd89b8023a6ce36              # double 0.38449100000000003
	.quad	0x3feedc209246bf01              # double 0.96437099999999997
	.quad	0x3fc0b430f49491f3              # double 0.130499
	.quad	0x3fe08aaeafab53d6              # double 0.51692899999999997
	.quad	0x3fef0ac7da1ec4e7              # double 0.97006599999999998
	.quad	0x3fd068ad68837718              # double 0.25638899999999998
	.quad	0x3feeea67e846a5d7              # double 0.96611400000000002
	.quad	0x3fe6168512231833              # double 0.690249
	.quad	0x3fc40daa0cae642c              # double 0.156667
	.quad	0x3fbaa172abef06b3              # double 0.10402599999999999
	.quad	0x3fb7f950b955f783              # double 0.093647999999999995
	.quad	0x3fedce2089e34331              # double 0.93141200000000002
	.quad	0x3fcd455a7d24180d              # double 0.22867899999999999
	.quad	0x3fbeb59146e4c0df              # double 0.119958
	.quad	0x3fc1332acfb762d8              # double 0.13437399999999999
	.quad	0x3fd216e371540032              # double 0.28264699999999998
	.quad	0x3fdac79b34a44c7b              # double 0.418433
	.quad	0x3fd65bb7b6bb1290              # double 0.34934799999999999
	.quad	0x3fd08787485e3da3              # double 0.258272
	.quad	0x3fe404a72ead9275              # double 0.62556800000000001
	.quad	0x3fd53c579f234656              # double 0.33180799999999999
	.quad	0x3fdb0a24463065f9              # double 0.42249399999999998
	.quad	0x3fda95421c044285              # double 0.41536000000000001
	.quad	0x3fd581beb18116ec              # double 0.33604400000000001
	.quad	0x3fe5a3a8e71476b0              # double 0.67622800000000005
	.quad	0x3fe95c486ad2dcb1              # double 0.79251499999999997
	.quad	0x3fedbe1869835159              # double 0.92945500000000003
	.quad	0x3feded20296b3355              # double 0.93519600000000003
	.quad	0x3fc172ffd1dcd706              # double 0.136322
	.quad	0x3fe6175d13d74d59              # double 0.69035199999999997
	.quad	0x3fe986dd69d30271              # double 0.79771300000000001
	.quad	0x3fcd8bdec5f394b8              # double 0.23083100000000001
	.quad	0x3fe5a3422467be55              # double 0.67617899999999997
	.quad	0x3fd983b60285ec3e              # double 0.39866400000000002
	.quad	0x3fe2e4ba94bbe447              # double 0.59042099999999997
	.quad	0x3fdfcc1ca3a4b557              # double 0.49683300000000002
	.quad	0x3fe56687f455a7d2              # double 0.66876599999999997
	.quad	0x3fdbac083126e979              # double 0.43237500000000001
	.quad	0x3fd8ebb341e14be0              # double 0.38938600000000001
	.quad	0x3fdc31b152f3c2db              # double 0.44053300000000001
	.quad	0x3fc9a0d77b7c7821              # double 0.20022100000000001
	.quad	0x3fd6b2e9ccb7d417              # double 0.35466999999999999
	.quad	0x3fec6a161e4f7660              # double 0.88795000000000001
	.quad	0x3f97fd82773e24ff              # double 0.023428000000000001
	.quad	0x3fe05c853c148345              # double 0.51129400000000003
	.quad	0x3fe3f6e3f78bbd38              # double 0.623888
	.quad	0x3fe3a09aaa3ad18d              # double 0.61335499999999998
	.quad	0x3fbdc10d7be9856a              # double 0.116227
	.quad	0x3fcd1e42e1262025              # double 0.22748599999999999
	.quad	0x3fd27b5f1bef49cf              # double 0.28877999999999998
	.quad	0x3fe713c46d82ba5a              # double 0.721163
	.quad	0x3fc291e215336dec              # double 0.14507700000000001
	.quad	0x3fe939eadd590c0b              # double 0.78832000000000002
	.quad	0x3fb886594af4f0d8              # double 0.095799999999999996
	.quad	0x3fed759685122318              # double 0.92060399999999998
	.quad	0x3fec163baba7b917              # double 0.87771399999999999
	.quad	0x3fdedbf487fcb924              # double 0.48217500000000002
	.quad	0x3fe3bd74d594f26b              # double 0.61687700000000001
	.quad	0x3fe2a84dfce3150e              # double 0.58304500000000004
	.quad	0x3fe54a44c7b02d5a              # double 0.66531600000000002
	.quad	0x3fecf2ba9d1f6018              # double 0.90463000000000005
	.quad	0x3feebbf93ff25e57              # double 0.96044600000000002
	.quad	0x3fc0ffb8b26394fb              # double 0.13280400000000001
	.quad	0x3f98ea39c51dabe2              # double 0.024330999999999998
	.quad	0x3fd9c4a83b1d0c80              # double 0.40262799999999999
	.quad	0x3fd1465625a682b6              # double 0.26991799999999999
	.quad	0x3fda9f2778140dd4              # double 0.415964
	.quad	0x3fd3b890d5a5b963              # double 0.30814000000000002
	.quad	0x3fe9633482be8bc1              # double 0.79335999999999995
	.quad	0x3fe668dda48b6523              # double 0.70030099999999995
	.quad	0x3fcf255f3519bd40              # double 0.24332799999999999
	.quad	0x3fe991819d2391d5              # double 0.79901199999999994
	.quad	0x3fd7cdb7ae5796c0              # double 0.37193100000000001
	.quad	0x3fe3b41bfbdf090f              # double 0.61573599999999995
	.quad	0x3f9d1e53a81dc0db              # double 0.028435999999999999
	.quad	0x3fe1c4fa05143bf7              # double 0.55529499999999998
	.quad	0x3fef32fa93af74cd              # double 0.97497299999999997
	.quad	0x3fd8d698fe69270b              # double 0.388098
	.quad	0x3fe3542c3c9eecc0              # double 0.60402500000000003
	.quad	0x3fa146c332f01755              # double 0.033743000000000002
	.quad	0x3fe36d4c33b53932              # double 0.60709199999999996
	.quad	0x3fe47af859429175              # double 0.640011
	.quad	0x3fae6b6177ea1c69              # double 0.059413000000000001
	.quad	0x3feeb547e06961c3              # double 0.95962899999999995
	.quad	0x3fd9b2a6b0d95140              # double 0.40152900000000002
	.quad	0x3fe9c8d3ae685db7              # double 0.80576499999999995
	.quad	0x3fefe0589acbc8c1              # double 0.99613600000000002
	.quad	0x3fd0c197e5647347              # double 0.26181599999999999
	.quad	0x3fdee33269df97ab              # double 0.48261700000000002
	.quad	0x3fb2e8c0485a0be5              # double 0.073863999999999999
	.quad	0x3fde74cd31769a91              # double 0.475879
	.quad	0x3fdc36deb95e5aff              # double 0.44084899999999999
	.quad	0x3fece30caa326e11              # double 0.90271599999999996
	.quad	0x3fe1be5b8561d430              # double 0.55448699999999995
	.quad	0x3fe970ed3d859c8d              # double 0.79503500000000005
	.quad	0x3fd6aa4fca42aed1              # double 0.35414499999999999
	.quad	0x3fc9a919695d91ac              # double 0.20047300000000001
	.quad	0x3fd4292817763e4b              # double 0.31501200000000001
	.quad	0x3fc45abc0e38a7e7              # double 0.15901899999999999
	.quad	0x3fdf9528f190d174              # double 0.493479
	.quad	0x3fd2787ce95faa8b              # double 0.28860400000000003
	.quad	0x3fe642dadb8348f5              # double 0.69566099999999997
	.quad	0x3fe6af1455219a84              # double 0.70887199999999995
	.quad	0x3fc42e7f6f4be836              # double 0.157669
	.quad	0x3fe17c6759ab6d01              # double 0.54643600000000003
	.quad	0x3fe250225742dcf4              # double 0.57228199999999996
	.quad	0x3fc1f1ae2da554b9              # double 0.14018800000000001
	.quad	0x3fedf8b1572580c3              # double 0.936608
	.quad	0x3fe799aa60913a50              # double 0.73750800000000005
	.quad	0x3fdb82cf52b90a78              # double 0.42985899999999999
	.quad	0x3fb5b089a0275254              # double 0.084724999999999995
	.quad	0x3fe898b2e9ccb7d4              # double 0.76863999999999998
	.quad	0x3fec302d59d55e6c              # double 0.88088100000000002
	.quad	0x3fe47123c42a66dc              # double 0.63881100000000002
	.quad	0x3fc1ff151e75360d              # double 0.140597
	.quad	0x3fcc915bdd76683c              # double 0.223186
	.quad	0x3fbf0318b9346994              # double 0.121141
	.quad	0x3feb5cd7060bb2bc              # double 0.85508300000000003
	.quad	0x3fe97077ccc03793              # double 0.79497899999999999
	.quad	0x3fe0da5332acfb76              # double 0.52665099999999998
	.quad	0x3fec4b8bef8ceb35              # double 0.88422199999999995
	.quad	0x3fe366256366d7a5              # double 0.60621899999999995
	.quad	0x3fd6c3b0c4588a05              # double 0.35569400000000001
	.quad	0x3fed47b677f6b1a3              # double 0.91500400000000004
	.quad	0x3fd1247cb70ac3a8              # double 0.26785199999999998
	.quad	0x3fef74fb549f9485              # double 0.98302999999999995
	.quad	0x3fb06f587d6f9768              # double 0.064199000000000006
	.quad	0x3fe6284dfce3150e              # double 0.69242000000000004
	.quad	0x3fe8711947cfa26a              # double 0.76380599999999998
	.quad	0x3fe095ee136e71ce              # double 0.51830200000000004
	.quad	0x3fe7515f02c4d65e              # double 0.72868299999999997
	.quad	0x3fed5740c4156e26              # double 0.91690099999999997
	.quad	0x3fdf0ebaade657b8              # double 0.48527399999999998
	.quad	0x3fe6828e4fb97bb7              # double 0.70343699999999998
	.quad	0x3fe08a17b0f6ad71              # double 0.51685700000000001
	.quad	0x3fd203c07ee0b0af              # double 0.28147899999999998
	.quad	0x3fea62dc6e2a8006              # double 0.82456799999999997
	.quad	0x3fe2aa0ec7432010              # double 0.58325899999999997
	.quad	0x3fd863a5c1c6088d              # double 0.38108199999999998
	.quad	0x3fe22aa3ad18d25f              # double 0.56770500000000002
	.quad	0x3f6a06a6e32e3822              # double 0.0031770000000000001
	.quad	0x3fe21bb05faebc41              # double 0.56588000000000005
	.quad	0x3fee83eea209aaa4              # double 0.95360500000000003
	.quad	0x3febd84b1ab0856e              # double 0.87015299999999995
	.quad	0x3fcd810624dd2f1b              # double 0.23050000000000001
	.quad	0x3fd61337eb28d866              # double 0.34492299999999998
	.quad	0x3fea23422467be55              # double 0.81680399999999997
	.quad	0x3fee41fc8f32378b              # double 0.94555500000000003
	.quad	0x3fbbcc8de2ac3223              # double 0.10859000000000001
	.quad	0x3fde129888f861a6              # double 0.469885
	.quad	0x3fe455410f94c87a              # double 0.63540700000000006
	.quad	0x3fc0fb00bcbe61d0              # double 0.13266
	.quad	0x3fc6226809d49518              # double 0.172925
	.quad	0x3fe9115bdd76683c              # double 0.78336899999999998
	.quad	0x3feed7b41bfbdf09              # double 0.96383099999999999
	.quad	0x3fd8f559b3d07c85              # double 0.38997500000000002
	.quad	0x3fe1e976bc1effa0              # double 0.55974900000000005
	.quad	0x3fe60d79d0a67621              # double 0.68914500000000001
	.quad	0x3fe371c75818c5ca              # double 0.60763900000000004
	.quad	0x3fe8f262888b545c              # double 0.77958799999999994
	.quad	0x3fde059641f64495              # double 0.46909099999999998
	.quad	0x3fea27179bfdf7e8              # double 0.817272
	.quad	0x3fe769899bf5946c              # double 0.73163299999999998
	.quad	0x3fe51c779a6b50b1              # double 0.65972500000000001
	.quad	0x3fe4dbc01a36e2eb              # double 0.65182499999999999
	.quad	0x3fecb532e7b3d8e0              # double 0.89711899999999999
	.quad	0x3fc01c4fc1df3301              # double 0.125864
	.quad	0x3fe20d173fb7a5f4              # double 0.56409799999999999
	.quad	0x3fd68288051c9f73              # double 0.351717
	.quad	0x3fee0ede54b48d3b              # double 0.93931500000000001
	.quad	0x3fee7b7a5f41aef7              # double 0.952573
	.quad	0x3fb2d362e9036439              # double 0.073538000000000006
	.quad	0x3fb6dcb1465e8922              # double 0.089304999999999995
	.quad	0x3f9368f08461f9f0              # double 0.018955
	.quad	0x3fed7def8487b99d              # double 0.92162299999999997
	.quad	0x3fc3bcd35a858794              # double 0.1542
	.quad	0x3fef49c2c1b10fd8              # double 0.97775400000000001
	.quad	0x3fd27fdc5931ca7d              # double 0.28905399999999998
	.quad	0x3fe4355475a31a4c              # double 0.63151000000000002
	.quad	0x3fea2858793dd97f              # double 0.81742499999999996
	.quad	0x3fb7bfd71b046845              # double 0.092771000000000006
	.quad	0x3fda595feda66128              # double 0.41170499999999999
	.quad	0x3feab3b107746888              # double 0.83443500000000004
	.quad	0x3fe9dcbbc2b94d94              # double 0.80819499999999999
	.quad	0x3fe9a5b317efe0ce              # double 0.80147699999999999
	.quad	0x3fe816744b2b777d              # double 0.75274099999999999
	.quad	0x3fe7150331e3a7db              # double 0.72131500000000004
	.quad	0x3fedb10129cbab65              # double 0.92785700000000004
	.quad	0x3fbe963dc486ad2e              # double 0.11948
	.quad	0x3fb481b21c475e63              # double 0.080103999999999995
	.quad	0x3fd246994185058e              # double 0.28555900000000001
	.quad	0x3fd4644955b4677b              # double 0.31862099999999999
	.quad	0x3fecba1d323fee2d              # double 0.89771900000000004
	.quad	0x3fc98a979e16d6dc              # double 0.199542
	.quad	0x3fc1e0b4e11dbca9              # double 0.13966999999999999
	.quad	0x3fef7204295a6c5d              # double 0.98266799999999998
	.quad	0x3fcaab474107314d              # double 0.20835200000000001
	.quad	0x3fa14b7b28954a80              # double 0.033779000000000003
	.quad	0x3fd5ab430f49491f              # double 0.33857799999999999
	.quad	0x3fd9c560c7c0f451              # double 0.40267199999999997
	.quad	0x3fe74d7add15f02c              # double 0.72820799999999997
	.quad	0x3fd64651f3e89a89              # double 0.34804200000000002
	.quad	0x3feb89ce4a7b4e55              # double 0.860572
	.quad	0x3f95eaee2003ab86              # double 0.021403999999999999
	.quad	0x3fcea4ca4f440af2              # double 0.23940400000000001
	.quad	0x3fc16f9767903212              # double 0.13621800000000001
	.quad	0x3fee474538ef34d7              # double 0.94620000000000004
	.quad	0x3fa9e279dd3bafd9              # double 0.050555999999999997
	.quad	0x3fdeca686e7e62dc              # double 0.48110399999999998
	.quad	0x3fc3512ec6bce853              # double 0.15091499999999999
	.quad	0x3fe08fa15db3397e              # double 0.51753300000000002
	.quad	0x3fe0d041cc532a49              # double 0.52542199999999994
	.quad	0x3fd3c7cd898b2e9d              # double 0.30907000000000001
	.quad	0x3fde9f2ba9d1f601              # double 0.47846499999999997
	.quad	0x3fc16b2af145521a              # double 0.13608300000000001
	.quad	0x3fea53c36113404f              # double 0.82272500000000004
	.quad	0x3fb4febd09e12a52              # double 0.082012000000000001
	.quad	0x3fdd8eb0318b9347              # double 0.46183400000000002
	.quad	0x3fc84955b4677b39              # double 0.18973799999999999
	.quad	0x3fe17de5082cf52c              # double 0.54661800000000005
	.quad	0x3fd455ef1fddebd9              # double 0.317745
	.quad	0x3feda9b280f12c28              # double 0.92696500000000004
	.quad	0x3fd223897204295a              # double 0.28341899999999998
	.quad	0x3fe5c784230fcf81              # double 0.68060500000000002
	.quad	0x3fc132a497fa5d29              # double 0.13435800000000001
	.quad	0x3fdfc9b413986339              # double 0.49668600000000002
	.quad	0x3fec72e6a76965f5              # double 0.88902599999999998
	.quad	0x3fef9797cc39ffd6              # double 0.98725499999999999
	.quad	0x3faa0b3d4ae429e1              # double 0.050867000000000002
	.quad	0x3fe8fd32c625e99f              # double 0.78090800000000005
	.quad	0x3fe05e1e2de87097              # double 0.51148899999999997
	.quad	0x3f93dddb1209edc0              # double 0.019401000000000002
	.quad	0x3fc8edf612407464              # double 0.19476199999999999
	.quad	0x3fd0eb8d82342246              # double 0.26437699999999997
	.quad	0x3fe945004fb1183b              # double 0.78967299999999996
	.quad	0x3fe3755bccaf709b              # double 0.60807599999999995
	.quad	0x3feb98efbb0e5e68              # double 0.86241900000000005
	.quad	0x3fc17a0b5ed8d36b              # double 0.13653699999999999
	.quad	0x3fe8fdae81882adc              # double 0.78096699999999996
	.quad	0x3fd42291fb3fa6df              # double 0.31461
	.quad	0x3fd68eabffcdab19              # double 0.35245799999999999
	.quad	0x3fe746b26bf8769f              # double 0.72738000000000003
	.quad	0x3fd72502eec7c958              # double 0.36163400000000001
	.quad	0x3fd85714b9cb6849              # double 0.38031500000000001
	.quad	0x3fd35c4a83b1d0c8              # double 0.302508
	.quad	0x3fe501d5c31593e6              # double 0.656474
	.quad	0x3fd2f3f961804d98              # double 0.29614099999999999
	.quad	0x3fed60d0247021d1              # double 0.918068
	.quad	0x3fbb8950763a1901              # double 0.10756400000000001
	.quad	0x3fd919ce075f6fd2              # double 0.39219999999999999
	.quad	0x3fe707ce95faa8a8              # double 0.71970299999999998
	.quad	0x3fe89e1b089a0275              # double 0.76929999999999998
	.quad	0x3fe589e98dcdb37d              # double 0.67308500000000004
	.quad	0x3fca86c6583e8577              # double 0.20723800000000001
	.quad	0x3fe68303c07ee0b1              # double 0.70349300000000003
	.quad	0x3fc546bacf7446fa              # double 0.16622100000000001
	.quad	0x3fcf33764f11b60b              # double 0.243758
	.quad	0x3fdadfe32a0663c7              # double 0.41991499999999998
	.quad	0x3fd3b92c061847f5              # double 0.30817699999999998
	.quad	0x3fdcdbf487fcb924              # double 0.45092500000000002
	.quad	0x3fc24167a95c853c              # double 0.142621
	.quad	0x3fe48882f0e0a84c              # double 0.64166400000000001
	.quad	0x3fd1104d551d68c7              # double 0.26662000000000002
	.quad	0x3fc2745bf26f1dc5              # double 0.144176
	.quad	0x3fce0218def416be              # double 0.23443900000000001
	.quad	0x3fe0ca3c64345cff              # double 0.52468700000000001
	.quad	0x3fe6fabda0dfdef8              # double 0.71810799999999997
	.quad	0x3fe57ae7924af0bf              # double 0.67125299999999999
	.quad	0x3f9cd9a52263d817              # double 0.028174000000000001
	.quad	0x3fcf74f722e1ac58              # double 0.245757
	.quad	0x3fea00ef1348b220              # double 0.81261399999999994
	.quad	0x3fdfec56d5cfaace              # double 0.49880000000000002
	.quad	0x3fdb72a38b8ae31d              # double 0.42887199999999998
	.quad	0x3fdb154434e3369c              # double 0.42317300000000002
	.quad	0x3fe627631b584b1b              # double 0.69230800000000003
	.quad	0x3fddcf7446f9b995              # double 0.46578700000000001
	.quad	0x3fe9b586ca89fc6e              # double 0.80340900000000004
	.quad	0x3fe932a0663c74fb              # double 0.78742999999999996
	.quad	0x3f9445aa2e3c536d              # double 0.019796999999999999
	.quad	0x3fe13b29a1b9f98b              # double 0.53847199999999995
	.quad	0x3fef57dbf487fcb9              # double 0.97947499999999998
	.quad	0x3fe744a83b1d0c80              # double 0.72713099999999997
	.quad	0x3fde7b634dad31fd              # double 0.47628100000000001
	.quad	0x3fef4e7ee9142b30              # double 0.97833199999999998
	.quad	0x3fe810eed02cd39e              # double 0.75206700000000004
	.quad	0x3fe16f49cf56eac8              # double 0.54483499999999996
	.quad	0x3febc189374bc6a8              # double 0.86737500000000001
	.quad	0x3fdbdadfb506dd6a              # double 0.43523400000000001
	.quad	0x3fec38583621fafd              # double 0.88187800000000005
	.quad	0x3fa690364388ebcc              # double 0.044068999999999997
	.quad	0x3fec7ac81d3aa36a              # double 0.889988
	.quad	0x3fe95bc01a36e2eb              # double 0.79244999999999999
	.quad	0x3fbad948dc11e42e              # double 0.104878
	.quad	0x3fe80e6d15ad106f              # double 0.75176100000000001
	.quad	0x3fd7a3b14a90470b              # double 0.36936600000000003
	.quad	0x3fd5b8bac710cb29              # double 0.33939999999999998
	.quad	0x3fde30e3cd9a5226              # double 0.47173399999999999
	.quad	0x3fe9b11622813448              # double 0.802867
	.quad	0x3fe1015c209246bf              # double 0.531416
	.quad	0x3fec5b24e9c45458              # double 0.88612599999999997
	.quad	0x3fd2eebb341e14be              # double 0.295821
	.quad	0x3fdf850df15a4acf              # double 0.49249599999999999
	.quad	0x3fe82f2734f82f51              # double 0.75575599999999998
	.quad	0x3fe20512231832fd              # double 0.56311900000000004
	.quad	0x3fe723443d46b26c              # double 0.723055
	.quad	0x3fe08c3f3e0370ce              # double 0.51712000000000002
	.quad	0x3fe8f3e24febd09e              # double 0.77977099999999999
	.quad	0x3fd519bd4067cf1c              # double 0.32969599999999999
	.quad	0x3fc873e681a9b8cc              # double 0.19103700000000001
	.quad	0x3fb1f2ecf2064239              # double 0.070112999999999995
	.quad	0x3fb2f123c42a66dc              # double 0.073992000000000002
	.quad	0x3fcd9a30984e3fff              # double 0.231268
	.quad	0x3fe6baecd07852f8              # double 0.710318
	.quad	0x3fc132f87ad080b6              # double 0.13436799999999999
	.quad	0x3febb3482be8bc17              # double 0.86563500000000004
	.quad	0x3fe1b97fe8ee6b83              # double 0.553894
	.quad	0x3fce78b7a1c25d07              # double 0.23805899999999999
	.quad	0x3fd2ede1198aeb81              # double 0.295769
	.quad	0x3fe3f353b4b2fa94              # double 0.62345300000000003
	.quad	0x3fe8d35653c9abb0              # double 0.77579799999999999
	.quad	0x3feeb8348f53c57a              # double 0.95998600000000001
	.quad	0x3fa905186db50f41              # double 0.048867000000000001
	.quad	0x3fec91e215336dec              # double 0.89280800000000004
	.quad	0x3fe0a8f3a9b06812              # double 0.52062399999999998
	.quad	0x3fd2e3f78bbd3804              # double 0.29516399999999998
	.quad	0x3fc469ced0b30b5b              # double 0.15947900000000001
	.quad	0x3fe0d3f7ced91687              # double 0.52587499999999998
	.quad	0x3f997785729b280f              # double 0.02487
	.quad	0x3fcb39a7c17a8933              # double 0.212697
	.quad	0x3fe915df6555c52e              # double 0.78391999999999995
	.quad	0x3fd64d2b2bfdb4cc              # double 0.34845999999999999
	.quad	0x3fbca57a786c2268              # double 0.1119
	.quad	0x3fd21d8e86402081              # double 0.28305399999999997
	.quad	0x3fecaa9717df19d6              # double 0.89582399999999995
	.quad	0x3fb07e9d94d0dcfd              # double 0.064432000000000003
	.quad	0x3f7321e603d57796              # double 0.0046709999999999998
	.quad	0x3fce2fbe33acd5b7              # double 0.23583200000000001
	.quad	0x3fe2de4e69f05ea2              # double 0.58963699999999997
	.quad	0x3fee26c7eae5bc88              # double 0.94223400000000001
	.quad	0x3fe7d681ecd4aa11              # double 0.74493500000000001
	.quad	0x3fdd05faebc408d9              # double 0.45349
	.quad	0x3fd8ffe2a3cea6c2              # double 0.39061800000000002
	.quad	0x3feff5b5fa22706d              # double 0.99874399999999996
	.quad	0x3feb7ce3150dae3e              # double 0.85899499999999995
	.quad	0x3fefa1187e7c06e2              # double 0.98841500000000004
	.quad	0x3fdcc725c3dee782              # double 0.44965500000000003
	.quad	0x3fef4d26fa3fcc9f              # double 0.97816800000000003
	.quad	0x3fe99bdc69f8c21e              # double 0.80027599999999999
	.quad	0x3fdc24bfd2e94680              # double 0.43974299999999999
	.quad	0x3fab85c67dfe32a0              # double 0.053754999999999997
	.quad	0x3fe79b0ccbc05d53              # double 0.73767700000000003
	.quad	0x3fe858409e55c0fd              # double 0.76077300000000003
	.quad	0x3fcc275ab7dc7ac0              # double 0.21995100000000001
	.quad	0x3fdb6045baf533f4              # double 0.42775099999999999
	.quad	0x3fe481882adc4c9d              # double 0.64081200000000005
	.quad	0x3fd29cb6848beb5b              # double 0.29081499999999999
	.quad	0x3fe583c8e25c810a              # double 0.67233699999999996
	.quad	0x3fca999dcb5781c7              # double 0.207813
	.quad	0x3fdda3b14a90470b              # double 0.46311600000000003
	.quad	0x3fe60357a355043e              # double 0.68790799999999996
	.quad	0x3fde003ab862b27d              # double 0.46876400000000001
	.quad	0x3fdf043a2163fdd6              # double 0.48463299999999998
	.quad	0x3fa251a005c4651f              # double 0.035778999999999998
	.quad	0x3fe8ef73c0c1fc8f              # double 0.77922999999999998
	.quad	0x3fc799fe43675ddd              # double 0.184387
	.quad	0x3fd1d0d8cb07d0af              # double 0.27837200000000001
	.quad	0x3fe372606fac6046              # double 0.60771200000000003
	.quad	0x3fc801cd5f99c38b              # double 0.187555
	.quad	0x3f9c18f81e8a2ec3              # double 0.027439000000000002
	.quad	0x3fe90c308feac42f              # double 0.78273800000000004
	.quad	0x3fe25f9bdc69f8c2              # double 0.57417099999999999
	.quad	0x3fdf6527a20578e6              # double 0.49054900000000001
	.quad	0x3fe7e685db76b3bc              # double 0.74689000000000005
	.quad	0x3fe6a3cc8de2ac32              # double 0.70749499999999999
	.quad	0x3feffddebd9018e7              # double 0.99973999999999996
	.quad	0x3fe456a161e4f766              # double 0.635575
	.quad	0x3fe92ceaaf35e311              # double 0.78673300000000002
	.quad	0x3feae362a5e785b6              # double 0.84025700000000003
	.quad	0x3fea62845996744b              # double 0.82452599999999998
	.quad	0x3fefe162f166e009              # double 0.996263
	.quad	0x3fc5286b59146e4c              # double 0.165296
	.quad	0x3fe62960b6f9fcb1              # double 0.69255100000000003
	.quad	0x3feff78dd616f86a              # double 0.998969
	.quad	0x3feb28198f1d3ed5              # double 0.84864499999999998
	.quad	0x3fedeebd4cfd08d5              # double 0.93539300000000003
	.quad	0x3fd2990afe60c38f              # double 0.29059099999999999
	.quad	0x3fc7968d759ee88e              # double 0.184282
	.quad	0x3fe3e6644d877250              # double 0.62187400000000004
	.quad	0x3fe5c9107faa044b              # double 0.68079400000000001
	.quad	0x3fe8f2abef06b378              # double 0.77962299999999995
	.quad	0x3fd15a89b951c5c5              # double 0.27115099999999998
	.quad	0x3fe42e9680e06530              # double 0.630687
	.quad	0x3fcaf32378ab0c89              # double 0.21054500000000001
	.quad	0x3fda9ca18bd66278              # double 0.41581000000000001
	.quad	0x3fa52157689ca18c              # double 0.041270000000000001
	.quad	0x3feda5c810a569b1              # double 0.92648699999999995
	.quad	0x3fefa8b6d86ec17f              # double 0.98934500000000002
	.quad	0x3fcc4b018611fd59              # double 0.22103900000000001
	.quad	0x3fdae14bdfd2630f              # double 0.42000100000000001
	.quad	0x3fe8f52fc2656abe              # double 0.77993000000000001
	.quad	0x3fafced916872b02              # double 0.062125
	.quad	0x3fe7d0dae3e6c4c6              # double 0.74424500000000005
	.quad	0x3fc052157689ca19              # double 0.12750500000000001
	.quad	0x3fe0321e603d5779              # double 0.50611799999999996
	.quad	0x3fbc68cac4b4d057              # double 0.110974
	.quad	0x3fcbde8b3b320536              # double 0.21772900000000001
	.quad	0x3f89988d2a1f8e3b              # double 0.012498
	.quad	0x3fd18049667b5f1c              # double 0.273455
	.quad	0x3fce146a1a500d5f              # double 0.23499800000000001
	.quad	0x3fd79157abb8800f              # double 0.36824600000000002
	.quad	0x3fe65d590c0ad03e              # double 0.69889500000000004
	.quad	0x3fd4f75d9a0f0a5f              # double 0.327598
	.quad	0x3fcd1fff79c842fa              # double 0.22753899999999999
	.quad	0x3fafd3b29a1b9f99              # double 0.062162000000000002
	.quad	0x3fc6c96cc5fbf834              # double 0.17802200000000001
	.quad	0x3fe10b827fa1a0cf              # double 0.53265499999999999
	.quad	0x3fda6cefed63454a              # double 0.41289900000000002
	.quad	0x3fe679c62a1b5c7d              # double 0.70236500000000002
	.quad	0x3fc5cac083126e98              # double 0.17025000000000001
	.quad	0x3fdb6f8ad2567989              # double 0.42868299999999998
	.quad	0x3fef8b30b5aa7158              # double 0.98574099999999997
	.quad	0x3f749949e8815e39              # double 0.0050289999999999996
	.quad	0x3fe2f8e3ac0c62e5              # double 0.59288200000000002
	.quad	0x3fe34de7ea5f84cb              # double 0.60326000000000002
	.quad	0x3fd2b3397dd00f77              # double 0.29218899999999998
	.quad	0x3fdcf6be37de939f              # double 0.45256000000000002
	.quad	0x3fed7bf83382e44b              # double 0.92138299999999995
	.quad	0x3fdbc6195464dc23              # double 0.43396600000000002
	.quad	0x3fd30b780346dc5d              # double 0.29757499999999998
	.quad	0x3fe4fa2f05a708ee              # double 0.65554000000000001
	.quad	0x3fd29b77c02afddb              # double 0.29073900000000003
	.quad	0x3fc0a3cea6c1a049              # double 0.129999
	.quad	0x3fd10bd017dae819              # double 0.26634600000000003
	.quad	0x3fde806af46aa088              # double 0.47658800000000001
	.quad	0x3fe128fc0d2c386d              # double 0.53625299999999998
	.quad	0x3fd4505d0fa58f71              # double 0.31740499999999999
	.quad	0x3fd64d983947496b              # double 0.34848600000000002
	.quad	0x3fd4d04a2fcefaa4              # double 0.32521299999999997
	.quad	0x3fe6870329802c0a              # double 0.70398099999999997
	.quad	0x3fe5a5e785b5b707              # double 0.67650200000000005
	.quad	0x3fde4b7f5a5332ad              # double 0.473358
	.quad	0x3fecf4256bca5376              # double 0.90480300000000002
	.quad	0x3fe6463cfb3311a5              # double 0.69607399999999997
	.quad	0x3fe2f53c579f2346              # double 0.59243599999999996
	.quad	0x3fd18216c61522a7              # double 0.273565
	.quad	0x3fe4aaeafab53d64              # double 0.64586399999999999
	.quad	0x3fd61aa3f034b0e2              # double 0.34537600000000002
	.quad	0x3fd28bb906466b1e              # double 0.28977799999999998
	.quad	0x3fd3749adc8fb86f              # double 0.30399199999999998
	.quad	0x3fc832ca57a786c2              # double 0.18905
	.quad	0x3fe6c6801711947d              # double 0.711731
	.quad	0x3fe63320535c9e67              # double 0.69374100000000005
	.quad	0x3fe037da61e0c5a8              # double 0.50681799999999999
	.quad	0x3fe8712e40852b4e              # double 0.76381600000000005
	.quad	0x3fec7fb267c6b8b7              # double 0.89058800000000005
	.quad	0x3fee33a0407cc7d2              # double 0.94380200000000003
	.quad	0x3fc88c47a17f4129              # double 0.19178100000000001
	.quad	0x3fe5289fc6da4485              # double 0.66120900000000005
	.quad	0x3fd1f7121ab4b72c              # double 0.28070499999999998
	.quad	0x3f92b94d94078961              # double 0.018284999999999999
	.quad	0x3fcd040bfe3b03e2              # double 0.226686
	.quad	0x3fd29edbf8b9baa1              # double 0.29094599999999998
	.quad	0x3fab5fc3b4f61672              # double 0.053464999999999999
	.quad	0x3fd8199fe43675de              # double 0.37656400000000001
	.quad	0x3fd31a0cf1800a7c              # double 0.29846499999999998
	.quad	0x3fcb4ea077036c9c              # double 0.213337
	.quad	0x3fee2c1d29dc725c              # double 0.94288499999999997
	.quad	0x3fe02a4fca42aed1              # double 0.50516499999999998
	.quad	0x3fed44eb56fb8f58              # double 0.914663
	.quad	0x3fd560913a4f8727              # double 0.33401900000000001
	.quad	0x3fe66573215fcc18              # double 0.69988399999999995
	.quad	0x3fcc8f29d40ee06e              # double 0.22311900000000001
	.quad	0x3fec3a5a038194c0              # double 0.88212299999999999
	.quad	0x3fcfe1b089a02752              # double 0.24907499999999999
	.quad	0x3fe2a5df2239e6ac              # double 0.58274800000000004
	.quad	0x3fdd53a81dc0db27              # double 0.458231
	.quad	0x3fbfbc6eb0b7c350              # double 0.123969
	.quad	0x3fed84039abf3387              # double 0.92236499999999999
	.quad	0x3fe19b97353b4b30              # double 0.55024300000000004
	.quad	0x3fddbf01322f2735              # double 0.464783
	.quad	0x3fe2e2a3cea6c1a0              # double 0.59016599999999997
	.quad	0x3fea3a7daa4fca43              # double 0.81964000000000004
	.quad	0x3fad7a786c22680a              # double 0.057575000000000001
	.quad	0x3fe1ec6583e8576d              # double 0.56010700000000002
	.quad	0x3fcfd76ee73e681b              # double 0.24876200000000001
	.quad	0x3fe819157abb8801              # double 0.75306200000000001
	.quad	0x3fe14af0bf1a5ca3              # double 0.54039800000000004
	.quad	0x3fe9e25a682b6284              # double 0.80888099999999996
	.quad	0x3fd79a027525460b              # double 0.36877500000000002
	.quad	0x3fe8c3ed959a3098              # double 0.77391699999999997
	.quad	0x3fe77d5a9eb2074f              # double 0.73405200000000004
	.quad	0x3fe20d3ae685db77              # double 0.56411500000000003
	.quad	0x3fe85e5aff2a172b              # double 0.76151800000000003
	.quad	0x3fee0c2c5e2cdc01              # double 0.93898599999999999
	.quad	0x3fe6b5d67ba237ce              # double 0.70969700000000002
	.quad	0x3fa3ca31e7d9988d              # double 0.038651999999999999
	.quad	0x3fed29de8b3b3205              # double 0.91136099999999998
	.quad	0x3fec0a84be40420f              # double 0.87628399999999995
	.quad	0x3fdf157eed45e918              # double 0.48568699999999998
	.quad	0x3fe6150fc71d6063              # double 0.69007099999999999
	.quad	0x3fdbce2d1f1cfbb9              # double 0.43445899999999998
	.quad	0x3fe2386b15f88fc9              # double 0.56938699999999998
	.quad	0x3fec54562e09fe87              # double 0.88529500000000005
	.quad	0x3f97596851223183              # double 0.022801999999999999
	.quad	0x3fcadc8754f3775c              # double 0.20985500000000001
	.quad	0x3fdf6fb8f57f737e              # double 0.49119400000000002
	.quad	0x3fa139a7c17a8933              # double 0.033642999999999999
	.quad	0x3feba02b841248d8              # double 0.86330200000000001
	.quad	0x3fce845996744b2b              # double 0.23841399999999999
	.quad	0x3fd38ab4fa48301a              # double 0.30534099999999997
	.quad	0x3fcfb402d16b97ff              # double 0.24768100000000001
	.quad	0x3fee989bd8383ada              # double 0.95612900000000001
	.quad	0x3fea0dc11e42e126              # double 0.81417899999999999
	.quad	0x3fb1f1172ef0ae53              # double 0.070084999999999995
	.quad	0x3fe9e56abde3fbbd              # double 0.80925499999999995
	.quad	0x3fdeb9170d62bf12              # double 0.480047
	.quad	0x3febfae9ab29e4d6              # double 0.87437900000000002
	.quad	0x3fd53497b7414a4d              # double 0.33133499999999999
	.quad	0x3fd9285ec3dab5c4              # double 0.39308900000000002
	.quad	0x3fe22a0663c74fb5              # double 0.56762999999999997
	.quad	0x3fdd4f82f5126634              # double 0.457978
	.quad	0x3fe11dd5d3dc8b87              # double 0.53489200000000003
	.quad	0x3fe115d701d9f4d3              # double 0.53391599999999995
	.quad	0x3fe2daa2e3c536d6              # double 0.58918899999999996
	.quad	0x3fdc9f0a1be2b496              # double 0.44720700000000002
	.quad	0x3fd257d5a9eb2075              # double 0.286611
	.quad	0x3fe3f125dd095af3              # double 0.62318700000000005
	.quad	0x3fe49ac57e23f24e              # double 0.64389300000000005
	.quad	0x3fe96bd4cfd08d4c              # double 0.79441300000000003
	.quad	0x3feec54bcf0b6b6e              # double 0.96158399999999999
	.quad	0x3feeac8e68e3ef28              # double 0.95856399999999997
	.quad	0x3fa036a832b990b0              # double 0.031667000000000001
	.quad	0x3fe217acc4ef88b9              # double 0.56538999999999995
	.quad	0x3fd5400fba8826ab              # double 0.33203500000000002
	.quad	0x3fef0bbf50e34763              # double 0.97018400000000004
	.quad	0x3fe6ba08398a6549              # double 0.71020899999999998
	.quad	0x3fec4bd33d29563b              # double 0.88425600000000004
	.quad	0x3fddc9a77e5eaab0              # double 0.46543299999999999
	.quad	0x3fd05af6c69b5a64              # double 0.255552
	.quad	0x3fecd532617c1bda              # double 0.90102499999999996
	.quad	0x3fdb3c46d82ba5a0              # double 0.42555399999999999
	.quad	0x3fcdeb9e492bc2fc              # double 0.23375299999999999
	.quad	0x3fcb8e64b2314014              # double 0.215283
	.quad	0x3fe7ce8101f31f47              # double 0.74395800000000001
	.quad	0x3fe68df7a4e7ab75              # double 0.70482999999999996
	.quad	0x3fc8950fc71d6063              # double 0.192049
	.quad	0x3fea38476f2a5a47              # double 0.81937000000000004
	.quad	0x3f93358f2e05ccc9              # double 0.018759000000000001
	.quad	0x3fa1235f80991794              # double 0.033473000000000003
	.quad	0x3fe2d46d3f9e7b81              # double 0.58843100000000004
	.quad	0x3fd5e3864cb5bb38              # double 0.34201199999999998
	.quad	0x3fe903d9a95421c0              # double 0.78171999999999997
	.quad	0x3fef26cc1ca3a4b5              # double 0.97348599999999996
	.quad	0x3fead17614595358              # double 0.83806899999999995
	.quad	0x3fe6da1a93293d10              # double 0.71412399999999998
	.quad	0x3fe09e6687f455a8              # double 0.51933600000000002
	.quad	0x3fdff4c6e6d9be4d              # double 0.49931500000000001
	.quad	0x3fdec98e53eb399f              # double 0.48105199999999998
	.quad	0x3fd4c792d1287c20              # double 0.324681
	.quad	0x3fb9ed8d36b4c7f3              # double 0.101281
	.quad	0x3fe18d2806af46aa              # double 0.548481
	.quad	0x3fe5bed959a30985              # double 0.67954700000000001
	.quad	0x3fd418e325d4a5df              # double 0.31401899999999999
	.quad	0x3fdc4463065f9592              # double 0.44167400000000001
	.quad	0x3fd90c6f7a0b5ed9              # double 0.39138400000000001
	.quad	0x3fd62a23bff8a8f4              # double 0.34632200000000002
	.quad	0x3fd6644d87724fa9              # double 0.34987200000000002
	.quad	0x3fc75ed06fef7c24              # double 0.18258099999999999
	.quad	0x3fe24c46950fc71d              # double 0.57181099999999996
	.quad	0x3fbede54b48d3ae7              # double 0.12058000000000001
	.quad	0x3fc1b9496249a134              # double 0.13846700000000001
	.quad	0x3fcc89656eefa1e4              # double 0.222943
	.quad	0x3fe64be61cffeb07              # double 0.69676499999999997
	.quad	0x3fea09bb6aa4b988              # double 0.81368799999999997
	.quad	0x3fef7c30d306a2b1              # double 0.98390999999999995
	.quad	0x3fe291f4f50a02b8              # double 0.58031699999999997
	.quad	0x3fb2d9274e22a2c2              # double 0.073625999999999997
	.quad	0x3fd0451fc4c16590              # double 0.25421899999999997
	.quad	0x3fdf523704790b85              # double 0.48939300000000002
	.quad	0x3fe783b81b64e054              # double 0.73482899999999995
	.quad	0x3fcc44f1a1986b9c              # double 0.22085399999999999
	.quad	0x3fee0dbcec84f8f9              # double 0.93917700000000004
	.quad	0x3fef41c1d6cf850e              # double 0.97677700000000001
	.quad	0x3fe7a0bc382a12f9              # double 0.738371
	.quad	0x3fe845a3e39f7729              # double 0.75850099999999998
	.quad	0x3fdb8c5004fb1184              # double 0.43043900000000002
	.quad	0x3fd61e5c0b999136              # double 0.34560299999999999
	.quad	0x3fe2b18116ebd4d0              # double 0.58416800000000002
	.quad	0x3fb1c96030c23fab              # double 0.069478999999999999
	.quad	0x3fe8f4adbc664d3c              # double 0.779868
	.quad	0x3fda498c3b0c4589              # double 0.41073900000000002
	.quad	0x3fec8789613d31ba              # double 0.89154500000000003
	.quad	0x3feb78b3700474da              # double 0.85848400000000002
	.quad	0x3feca07f66e86c66              # double 0.89459200000000005
	.quad	0x3fe43a2df9378ee3              # double 0.63210200000000005
	.quad	0x3fc1bf61aa3f034b              # double 0.138653
	.quad	0x3fd005681ecd4aa1              # double 0.25033
	.quad	0x3f9e878fabda0dfe              # double 0.029814
	.quad	0x3fe7fb2031ceaf25              # double 0.74940499999999999
	.quad	0x3fe8916440f23897              # double 0.76774799999999999
	.quad	0x3fc46c8f75536934              # double 0.15956300000000001
	.quad	0x3fe0356323bbc6eb              # double 0.506517
	.quad	0x3fe3143bf727136a              # double 0.59621999999999997
	.quad	0x3faab8e8ea39c51e              # double 0.052192000000000002
	.quad	0x3fdd6ff3ade225fa              # double 0.45995799999999998
	.quad	0x3fd6fd36f7e3d1cc              # double 0.359205
	.quad	0x3fd13c6c97d8cf3a              # double 0.26931300000000002
	.quad	0x3fa2674080f98fa3              # double 0.035943999999999997
	.quad	0x3fda6f826edaa92e              # double 0.41305599999999998
	.quad	0x3fe3c947064ece9a              # double 0.61831999999999998
	.quad	0x3fe41782d38476f3              # double 0.62787000000000004
	.quad	0x3fd1330d7386099a              # double 0.26874100000000001
	.quad	0x3f9b3e9a6f826edb              # double 0.026606000000000001
	.quad	0x3fc5621fafc8b008              # double 0.16705700000000001
	.quad	0x3fcf8bf7f06705c9              # double 0.24645900000000001
	.quad	0x3fe958ab92c06184              # double 0.79207399999999994
	.quad	0x3fe0e2ac322291fb              # double 0.52766999999999997
	.quad	0x3fd21f57b41bfbdf              # double 0.283163
	.quad	0x3fb513c68661ae71              # double 0.082333000000000003
	.quad	0x3fd2c4e7253da72a              # double 0.29326799999999997
	.quad	0x3f85ce9e5e247885              # double 0.010647999999999999
	.quad	0x3fd7604189374bc7              # double 0.36525000000000002
	.quad	0x3fc216d6dc1a47aa              # double 0.141322
	.quad	0x3fe459ee88df3733              # double 0.63597800000000004
	.quad	0x3feff5f4e4430b18              # double 0.99877400000000005
	.quad	0x3fe61df97aaac109              # double 0.69115899999999997
	.quad	0x3fe461d8622c4502              # double 0.63694399999999995
	.quad	0x3fb3636f3b213e3e              # double 0.075735999999999998
	.quad	0x3fd82df0d413122b              # double 0.37780399999999997
	.quad	0x3fd814b9cb6848bf              # double 0.37626500000000002
	.quad	0x3fdbff43419e3001              # double 0.43745499999999998
	.quad	0x3fadeaab042528ae              # double 0.058430999999999997
	.quad	0x3fe0d714b9cb6849              # double 0.52625500000000003
	.quad	0x3fd3a1c68ec52a41              # double 0.30674899999999999
	.quad	0x3fef55e8d5410f95              # double 0.97923700000000002
	.quad	0x3fe49081c2e33eff              # double 0.64263999999999999
	.quad	0x3fdc3c254a3c6434              # double 0.44117099999999998
	.quad	0x3fc6d2f5dbb9cf9a              # double 0.178313
	.quad	0x3fe4673e681a9b8d              # double 0.63760300000000003
	.quad	0x3fe4cb3c3e74afd5              # double 0.64980899999999997
	.quad	0x3fe509a240314877              # double 0.65742599999999995
	.quad	0x3fe4701b866e43aa              # double 0.63868499999999995
	.quad	0x3fdc653c9abb01c9              # double 0.44367899999999999
	.quad	0x3fe9a2a2c2374795              # double 0.80110300000000001
	.quad	0x3fda49adc8fb86f4              # double 0.41074699999999997
	.quad	0x3fd43e63e8dda48b              # double 0.31630799999999998
	.quad	0x3fe6f8ee28672757              # double 0.71788700000000005
	.quad	0x3fe41b280f12c27a              # double 0.62831499999999996
	.quad	0x3fd52263d816aceb              # double 0.33022400000000002
	.quad	0x3fdab3fe9fadafd1              # double 0.417236
	.quad	0x3fe70fb65668c261              # double 0.72066799999999998
	.quad	0x3fe49c219eb6390d              # double 0.64405900000000005
	.quad	0x3fc4be40420f6f09              # double 0.16205600000000001
	.quad	0x3fee1904b3c3e74b              # double 0.940554
	.quad	0x3fea3a5c1c6088d7              # double 0.81962400000000002
	.quad	0x3f9b313be22e5de1              # double 0.026554999999999999
	.quad	0x3fef0a71de69ad43              # double 0.97002500000000002
	.quad	0x3fba41700cd85597              # double 0.102561
	.quad	0x3fe9a47ecfe9b7bf              # double 0.80132999999999999
	.quad	0x3fdba1cef240fa9c              # double 0.431751
	.quad	0x3fe225a250f84018              # double 0.56709399999999999
	.quad	0x3fbab6390c9107fb              # double 0.10434300000000001
	.quad	0x3fc7c7820a30db6a              # double 0.185776
	.quad	0x3fd4bfb15b573eab              # double 0.32419999999999999
	.quad	0x3fd63c85c24c404a              # double 0.34744399999999998
	.quad	0x3fdc1b9f98b71b8b              # double 0.43918600000000002
	.quad	0x3fe31975f2cb6417              # double 0.596858
	.quad	0x3fe3a5072085b185              # double 0.61389499999999997
	.quad	0x3fca36e2eb1c432d              # double 0.20480000000000001
	.quad	0x3fd577292c493426              # double 0.33539799999999997
	.quad	0x3fd19a5a89b951c6              # double 0.27504600000000001
	.quad	0x3fe9351372a38b8b              # double 0.78772900000000001
	.quad	0x3fd6dbbe0157eed4              # double 0.35716199999999998
	.quad	0x3fede7fd3f5b5fa2              # double 0.93456899999999998
	.quad	0x3fde17481b21c476              # double 0.47017100000000001
	.quad	0x3fc9e07a28bb0a2d              # double 0.20216300000000001
	.quad	0x3fe95bff04577d95              # double 0.79247999999999996
	.quad	0x3fb1869835158b82              # double 0.068459999999999993
	.quad	0x3fe3fb15b573eab3              # double 0.62439999999999996
	.quad	0x3fe220f6f08cc576              # double 0.56652400000000003
	.quad	0x3fd6ec5b078d92fb              # double 0.35817599999999999
	.quad	0x3fea7e02645e4e6a              # double 0.82788200000000001
	.quad	0x3fdbfea3df6db941              # double 0.437417
	.quad	0x3fe025918a009f62              # double 0.50458599999999998
	.quad	0x3fd2163779e9d0ea              # double 0.28260600000000002
	.quad	0x3fdb9c065b63d3e5              # double 0.431398
	.quad	0x3fd73e89a88ace25              # double 0.36319200000000001
	.quad	0x3fc0925fe974a340              # double 0.129467
	.quad	0x3fe777d955714b9d              # double 0.73338000000000003
	.quad	0x3fe4e12839042d8c              # double 0.65248499999999998
	.quad	0x3fed0a393ee5eedd              # double 0.90749800000000003
	.quad	0x3fdc4f15e7c8d196              # double 0.44232700000000003
	.quad	0x3fe2f03f2d3c792d              # double 0.59182699999999999
	.quad	0x3feca630ec311623              # double 0.89528700000000005
	.quad	0x3f71148fd9fd36f8              # double 0.0041700000000000001
	.quad	0x3fe9b58d1526d8b2              # double 0.80341200000000002
	.quad	0x3fdd6a1a500d5e8d              # double 0.45960099999999998
	.quad	0x3fd2efd438d1d8a5              # double 0.29588799999999998
	.quad	0x3feffe7c06e19b91              # double 0.999815
	.quad	0x3fe7c245f5ad96a7              # double 0.74246500000000004
	.quad	0x3fdbe5b8561d4307              # double 0.43589600000000001
	.quad	0x3fd6fd113836a833              # double 0.35919600000000002
	.quad	0x3fe081beb18116ec              # double 0.51583800000000002
	.quad	0x3fb0667f90d9d777              # double 0.064063999999999996
	.quad	0x3fe421a500d5e8d5              # double 0.62910699999999997
	.quad	0x3fa0635a426bb55b              # double 0.032008000000000002
	.quad	0x3fe0556d19dece57              # double 0.51042799999999999
	.quad	0x3fbd3af74cd3176a              # double 0.114181
	.quad	0x3fe5c0639d5e4a38              # double 0.67973499999999998
	.quad	0x3fab923a29c779a7              # double 0.053850000000000002
	.quad	0x3fe4c286f8ad2568              # double 0.64874600000000004
	.quad	0x3fbbd50225742dcf              # double 0.108719
	.quad	0x3fd42b5e529bae47              # double 0.31514700000000001
	.quad	0x3fef2dfb506dd69d              # double 0.97436299999999997
	.quad	0x3fe2073365881a15              # double 0.56337899999999996
	.quad	0x3fe7f75d9a0f0a5f              # double 0.748946
	.quad	0x3fef48cb4aec8d5c              # double 0.97763599999999994
	.quad	0x3fe9d1e96c3fc43b              # double 0.80687399999999998
	.quad	0x3feb42e33eff1950              # double 0.85191499999999998
	.quad	0x3fe69192641b328b              # double 0.70526999999999995
	.quad	0x3fb56605ee568a50              # double 0.083587999999999995
	.quad	0x3fe2069e7fb267c7              # double 0.56330800000000003
	.quad	0x3fc43ab862b27cbf              # double 0.15804199999999999
	.quad	0x3fe48ff327aa68f5              # double 0.64257200000000003
	.quad	0x3f97928e0c9d9d34              # double 0.023019999999999999
	.quad	0x3fda5a63f9a49c2c              # double 0.41176699999999999
	.quad	0x3fc1c81908e581cf              # double 0.13891899999999999
	.quad	0x3fe1e3fbbd7b2032              # double 0.55908000000000002
	.quad	0x3fe3c64345cfede9              # double 0.61795199999999995
	.quad	0x3fee975d13d74d59              # double 0.95597699999999997
	.quad	0x3fdbe7ddca4b124d              # double 0.436027
	.quad	0x3fb04816f0068db9              # double 0.063600000000000004
	.quad	0x3fb4d4bad7d7c2ca              # double 0.081370999999999998
	.quad	0x3fda3dd97f62b6ae              # double 0.41002499999999997
	.quad	0x3fb51c4b90214ad3              # double 0.082462999999999995
	.quad	0x3f857eed45e9185d              # double 0.010496
	.quad	0x3fe3eabde3fbbd7b              # double 0.62240499999999999
	.quad	0x3f0a36e2eb1c432d              # double 5.0000000000000002E-5
	.quad	0x3fe46234a87e38eb              # double 0.636988
	.quad	0x3fcfffef39085f4a              # double 0.249998
	.quad	0x3fe26219652bd3c3              # double 0.57447499999999996
	.quad	0x3fd424f227d028a2              # double 0.31475500000000001
	.quad	0x3fdf59c8c9320d99              # double 0.48985499999999998
	.quad	0x3fd434dad31fcd25              # double 0.31572600000000001
	.quad	0x3fe3b4245f5ad96a              # double 0.61573999999999995
	.quad	0x3fdfbc126a65cf68              # double 0.49585400000000002
	.quad	0x3fdc23e9ea140571              # double 0.43969200000000003
	.quad	0x3fd6282c6ef3d3a2              # double 0.34620200000000001
	.quad	0x3fd53aeee957470f              # double 0.33172200000000002
	.quad	0x3fe1f5a74c09c3ce              # double 0.56123699999999999
	.quad	0x3fc4df71eafee6fb              # double 0.16306899999999999
	.quad	0x3fea6ef5ec80c73b              # double 0.82604500000000003
	.quad	0x3fe7cadff822bbed              # double 0.74351500000000004
	.quad	0x3f840789613d31ba              # double 0.0097800000000000005
	.quad	0x3fc7dfa00e27e0f0              # double 0.18651200000000001
	.quad	0x3fee5af07bfe7e20              # double 0.94860100000000002
	.quad	0x3fdd15ebfa8f7db7              # double 0.45446300000000001
	.quad	0x3fd58327674d1633              # double 0.33612999999999998
	.quad	0x3fd70ea18372e6a7              # double 0.36026799999999998
	.quad	0x3fd8950b955f7836              # double 0.38409700000000002
	.quad	0x3fe450763a190082              # double 0.634822
	.quad	0x3fa584901d19157b              # double 0.042027000000000002
	.quad	0x3fd11fc8f32378ab              # double 0.267565
	.quad	0x3fea677b395c4220              # double 0.82513199999999997
	.quad	0x3fee3d2b6f19934f              # double 0.944967
	.quad	0x3fd046b69db65ecc              # double 0.25431599999999999
	.quad	0x3fd7e55c0fcb4f1e              # double 0.37337399999999998
	.quad	0x3fa4812be48a58b4              # double 0.040048
	.quad	0x3fb34dbdf8f47304              # double 0.075405
	.quad	0x3fd723422467be55              # double 0.36152699999999999
	.quad	0x3fe1b0e5e679463d              # double 0.552844
	.quad	0x3fee381733226c3c              # double 0.94434700000000004
	.quad	0x3fd12e275ab7dc7b              # double 0.26844200000000001
	.quad	0x3fe20a0d349be8ff              # double 0.56372699999999998
	.quad	0x3feffcfc3f811f4f              # double 0.99963199999999996
	.quad	0x3fe9c57e23f24d90              # double 0.80535800000000002
	.quad	0x3f768e820e629952              # double 0.0055069999999999997
	.quad	0x3fdacab81f969e3d              # double 0.41862300000000002
	.quad	0x3feebe89a88ace25              # double 0.96075900000000002
	.quad	0x3fe23504c48adeec              # double 0.56897200000000003
	.quad	0x3fe18dd1e53a81dc              # double 0.54856199999999999
	.quad	0x3fc7334c5da6a444              # double 0.181253
	.quad	0x3fe81fec99f1ae2e              # double 0.75389700000000004
	.quad	0x3fe056b441bb8c33              # double 0.51058400000000004
	.quad	0x3fccd4ed2cbea4ec              # double 0.225248
	.quad	0x3fd520a30db6a1e8              # double 0.33011699999999999
	.quad	0x3fb817fc7607c41a              # double 0.094116000000000005
	.quad	0x3fe92209aaa3ad19              # double 0.78540500000000002
	.quad	0x3fe164473cd57364              # double 0.54349099999999995
	.quad	0x3fc35ebfa8f7db6e              # double 0.15132899999999999
	.quad	0x3fec6f1348b22079              # double 0.88855899999999999
	.quad	0x3fc3f9bdc69f8c22              # double 0.156059
	.quad	0x3fcc5a14488c60cc              # double 0.221499
	.quad	0x3fcaea4228997c3d              # double 0.21027399999999999
	.quad	0x3fba9131ec0b5675              # double 0.103778
	.quad	0x3fd083d790752daa              # double 0.25804700000000003
	.quad	0x3fe5d7c4e2f37fbf              # double 0.682589
	.quad	0x3fea90bc7b45f17c              # double 0.83016800000000001
	.quad	0x3fe4aea3161a1db8              # double 0.64631799999999995
	.quad	0x3fee357603925bb8              # double 0.94402600000000003
	.quad	0x3fef3bc903ea704c              # double 0.97604800000000002
	.quad	0x3fd1b0468448cf7d              # double 0.27638400000000002
	.quad	0x3fd110e8858ff759              # double 0.26665699999999998
	.quad	0x3fd95c358afc47e5              # double 0.39625300000000002
	.quad	0x3fe13b03e20ccff2              # double 0.53845399999999999
	.quad	0x3fef29f7b5aea316              # double 0.97387299999999999
	.quad	0x3fc65d3996fa82e8              # double 0.17471999999999999
	.quad	0x3f88d823422467be              # double 0.012130999999999999
	.quad	0x3fd0c30d306a2b17              # double 0.261905
	.quad	0x3fbcbb7f9d6f1130              # double 0.112236
	.quad	0x3fe3c3675ddd2ae9              # double 0.61760300000000001
	.quad	0x3f8e5e2478854cdb              # double 0.014827999999999999
	.quad	0x3fb548fd9fd36f7e              # double 0.083144999999999996
	.quad	0x3fc8c0379314445b              # double 0.19336600000000001
	.quad	0x3febaf1886df82b2              # double 0.865124
	.quad	0x3fe145c5718eb895              # double 0.539767
	.quad	0x3fea8e8427418d69              # double 0.829897
	.quad	0x3fd2a5df2239e6ac              # double 0.29137400000000002
	.quad	0x3fb24bec679cc74c              # double 0.071471000000000007
	.quad	0x3fd5093532e7b3d9              # double 0.32868700000000001
	.quad	0x3fed2fdb8fde2ef5              # double 0.91209200000000001
	.quad	0x3fec937d1fe64f55              # double 0.89300400000000002
	.quad	0x3fb16238da3c2118              # double 0.067904999999999993
	.quad	0x3fd1f8ceb356da01              # double 0.28081099999999998
	.quad	0x3fea21554fbdad75              # double 0.81656899999999999
	.quad	0x3fee441dd1a21ea3              # double 0.94581499999999996
	.quad	0x3fdb86f049a9973e              # double 0.43011100000000002
	.quad	0x3feb05f6ba0620ab              # double 0.84447799999999995
	.quad	0x3fe7b0b178b37004              # double 0.74031899999999995
	.quad	0x3fdeac81d3aa36a0              # double 0.47927900000000001
	.quad	0x3fefcaf922962cfe              # double 0.99352700000000005
	.quad	0x3fd569ad42c3c9ef              # double 0.33457500000000001
	.quad	0x3fed9884c6a3bde0              # double 0.92486800000000002
	.quad	0x3fdfe10cf5b1c865              # double 0.49811100000000003
	.quad	0x3fef724d8fd5cb79              # double 0.98270299999999999
	.quad	0x3fd37ecfe9b7bf1f              # double 0.30461500000000002
	.quad	0x3fb5eeaa6d267408              # double 0.085672999999999999
	.quad	0x3fb7c1df3300de4c              # double 0.092801999999999996
	.quad	0x3fe3f79a6b50b0f2              # double 0.62397499999999995
	.quad	0x3fdf0485a0be5109              # double 0.484651
	.quad	0x3fed2393ee5eedcc              # double 0.91059299999999998
	.quad	0x3fdd1c53f39d1b2e              # double 0.45485399999999998
	.quad	0x3fd2e0ac7da1ec4e              # double 0.29496299999999998
	.quad	0x3fd0ddebd9018e75              # double 0.26354499999999997
	.quad	0x3fedd1e321a2e7f7              # double 0.931871
	.quad	0x3fd14d834091c087              # double 0.27035599999999999
	.quad	0x3fd91f9f01b866e4              # double 0.39255499999999999
	.quad	0x3f9b24638c975297              # double 0.026505999999999998
	.quad	0x3fd1039abf338716              # double 0.265845
	.quad	0x3fe121d10b1feeb3              # double 0.53537800000000002
	.quad	0x3fe1206a6e32e382              # double 0.53520699999999999
	.quad	0x3fd6526d8b1dd5d4              # double 0.34878100000000001
	.quad	0x3fea15336deb95e6              # double 0.81508800000000003
	.quad	0x3fd3edcc20d5629e              # double 0.31138900000000003
	.quad	0x3fe01070fbeb9e49              # double 0.50200699999999998
	.quad	0x3fc2239e6ab9b23e              # double 0.141712
	.quad	0x3fe5658c4bd33d29              # double 0.66864599999999996
	.quad	0x3fa3b03e20ccff22              # double 0.038454000000000002
	.quad	0x3fd141cc532a4980              # double 0.26964100000000002
	.quad	0x3fe67fef39085f4a              # double 0.70311699999999999
	.quad	0x3fde7d6733ebbfd7              # double 0.47640399999999999
	.quad	0x3fe0db6a1e81cb47              # double 0.52678400000000003
	.quad	0x3fc26772d5e071c5              # double 0.14378199999999999
	.quad	0x3fed6cbfb15b573f              # double 0.91952500000000004
	.quad	0x3fa1e40c8472c0e8              # double 0.034943000000000002
	.quad	0x3feceb484d76ab58              # double 0.903721
	.quad	0x3fb701322f2734f8              # double 0.089861999999999997
	.quad	0x3fb69ea140570825              # double 0.088358000000000006
	.quad	0x3fc8caeea63b688c              # double 0.193693
	.quad	0x3fea530ced4e4c94              # double 0.82263799999999998
	.quad	0x3feceeaa6d267408              # double 0.90413399999999999
	.quad	0x3fa7dd65a14488c6              # double 0.046611
	.quad	0x3fed278d0cc35ce2              # double 0.91107800000000005
	.quad	0x3fecfa0d77b7c782              # double 0.905524
	.quad	0x3fe1bd9cae21101b              # double 0.554396
	.quad	0x3fecfa43fe5c91d1              # double 0.90554999999999997
	.quad	0x3fefd77fae3608d1              # double 0.99505600000000005
	.quad	0x3fe64bbe4473cd57              # double 0.69674599999999998
	.quad	0x3fd99756c93a7115              # double 0.399862
	.quad	0x3fd8c55c96030c24              # double 0.387046
	.quad	0x3fec8fdc1615ebfb              # double 0.89256100000000005
	.quad	0x3fd7d2fa0d77b7c8              # double 0.37225200000000003
	.quad	0x3fd232d6ece13f4b              # double 0.28435300000000002
	.quad	0x3fe1b953dea465a5              # double 0.55387299999999995
	.quad	0x3fe7da61e0c5a815              # double 0.74540799999999996
	.quad	0x3febadc4c9c90c4e              # double 0.86496200000000001
	.quad	0x3fe8bd859c8c9321              # double 0.77313500000000002
	.quad	0x3fd2589efd86a8fc              # double 0.286659
	.quad	0x3fe9a7c393682731              # double 0.80172900000000002
	.quad	0x3fb9de69ad42c3ca              # double 0.10105
	.quad	0x3fda8e3ef284167b              # double 0.41493200000000002
	.quad	0x3fdc32441fea8113              # double 0.44056800000000002
	.quad	0x3fe2eb13dfb0d520              # double 0.59119600000000005
	.quad	0x3fccc2a454de7ea6              # double 0.22469
	.quad	0x3f962f166e008e9b              # double 0.021663999999999999
	.quad	0x3fe63f0fe047d3d4              # double 0.69519799999999998
	.quad	0x3fe23c903ea704bc              # double 0.56989299999999998
	.quad	0x3fd6f08cc575c076              # double 0.35843199999999997
	.quad	0x3fb7000431bde82d              # double 0.089843999999999993
	.quad	0x3fd71a86940357a3              # double 0.36099399999999998
	.quad	0x3fc1c69f8c21e1d2              # double 0.138874
	.quad	0x3fc0077036c9c0a9              # double 0.125227
	.quad	0x3faa3854046412cf              # double 0.051211
	.quad	0x3fed90b84988094e              # double 0.92391599999999996
	.quad	0x3fdf0b178b370047              # double 0.48505199999999998
	.quad	0x3fd98d8a979e16d7              # double 0.39926400000000001
	.quad	0x3fc687d2c7b890d6              # double 0.17602000000000001
	.quad	0x3fea5460aa64c2f8              # double 0.82279999999999998
	.quad	0x3f8081c2e33eff19              # double 0.0080599999999999994
	.quad	0x3fed36262cba732e              # double 0.91286
	.quad	0x3fd8f6be37de939f              # double 0.39006000000000002
	.quad	0x3fecd2674080f990              # double 0.90068400000000004
	.quad	0x3fd5a2a4db163bac              # double 0.33805200000000002
	.quad	0x3fe7d42a23bff8a9              # double 0.74464900000000001
	.quad	0x3fe2d8969a0ad8a1              # double 0.58893899999999999
	.quad	0x3fd64fdf3b645a1d              # double 0.34862500000000002
	.quad	0x3fcd780346dc5d64              # double 0.23022500000000001
	.quad	0x3fe383f705857aff              # double 0.60985900000000004
	.quad	0x3fec479b34a44c7b              # double 0.883741
	.quad	0x3fc08a58b3f63c32              # double 0.129222
	.quad	0x3fef558ea7ce0fc3              # double 0.979194
	.quad	0x3fed781a5870da5e              # double 0.92091100000000004
	.quad	0x3fd01ac14c660a20              # double 0.251633
	.quad	0x3fdb0fb65668c261              # double 0.42283399999999999
	.quad	0x3fe8ee7c49fd7a14              # double 0.77911200000000002
	.quad	0x3f8961804d983947              # double 0.012393
	.quad	0x3fe850203e63e8de              # double 0.75978100000000004
	.quad	0x3fca79bbadc0980b              # double 0.20684
	.quad	0x3fea3890d5a5b963              # double 0.81940500000000005
	.quad	0x3feb32d6ece13f4b              # double 0.84995600000000004
	.quad	0x3fe51f05ea24cc68              # double 0.66003699999999998
	.quad	0x3fe2b6a400fba882              # double 0.58479499999999995
	.quad	0x3fe4f0ef566490a3              # double 0.65441099999999996
	.quad	0x3fc891a75cd0bb6f              # double 0.191945
	.quad	0x3feb198f1d3ed528              # double 0.84687000000000001
	.quad	0x3fb529bae46cfc83              # double 0.082668000000000005
	.quad	0x3fb7256ffc115df6              # double 0.090414999999999995
	.quad	0x3fb2f0068db8bac7              # double 0.073974999999999999
	.quad	0x3fe46c2ce4649907              # double 0.63820500000000002
	.quad	0x3fd8ee392e1ef73c              # double 0.38954
	.quad	0x3feefe5c91d14e3c              # double 0.96855000000000002
	.quad	0x3fb94b9cb6848beb              # double 0.098809999999999995
	.quad	0x3fe1a7589efd86a9              # double 0.551678
	.quad	0x3fd818c197e56473              # double 0.37651099999999998
	.quad	0x3fd36bd6e8af8162              # double 0.30345699999999998
	.quad	0x3fd2bb2fec56d5d0              # double 0.29267500000000002
	.quad	0x3fe15e84f09528f2              # double 0.54278800000000005
	.quad	0x3feae8986fcdee35              # double 0.840893
	.quad	0x3f86177ea1c68ec5              # double 0.010787
	.quad	0x3fec91c4b90214ad              # double 0.89279399999999998
	.quad	0x3fe55935fc3b4f61              # double 0.66713999999999996
	.quad	0x3fecbf444e0daa0d              # double 0.89834800000000004
	.quad	0x3fe1f9fa97e132b5              # double 0.56176499999999996
	.quad	0x3fd75ab3aabcd78c              # double 0.36491099999999999
	.quad	0x3fe6a433508f648c              # double 0.70754399999999995
	.quad	0x3fe4dc52e72da123              # double 0.651895
	.quad	0x3fde66ec9e236c16              # double 0.47503200000000001
	.quad	0x3fe7e2541d8e8640              # double 0.74637799999999999
	.quad	0x3fe4d99ed7c6fbd2              # double 0.65156499999999995
	.quad	0x3fe64093d9663843              # double 0.69538299999999997
	.quad	0x3faa2f05a708ede5              # double 0.051139999999999998
	.quad	0x3fcbf080303c07ee              # double 0.218277
	.quad	0x3fe598f1d3ed527e              # double 0.67491999999999996
	.quad	0x3fe8c3d89ce4a7b5              # double 0.77390700000000001
	.quad	0x3fdbf19934efcbd5              # double 0.43662099999999998
	.quad	0x3feca107b784662c              # double 0.89465700000000003
	.quad	0x3fe5de33269df97b              # double 0.68337400000000004
	.quad	0x3fcaf2cf95d4e8fb              # double 0.210535
	.quad	0x3fe3c6c97d8cf399              # double 0.61801600000000001
	.quad	0x3fef5be1a8262457              # double 0.979966
	.quad	0x3fa8d62bf11f926c              # double 0.048508999999999997
	.quad	0x3fc48de2ac322292              # double 0.16058
	.quad	0x3fd43b7d84901d19              # double 0.316131
	.quad	0x3fe2af2b66b6177f              # double 0.58388300000000004
	.quad	0x3fb98dac258d5843              # double 0.099818000000000004
	.quad	0x3fbc00c9539b8887              # double 0.109387
	.quad	0x3fe9c2656abde3fc              # double 0.80498000000000002
	.quad	0x3fe770a1be2b495a              # double 0.73249900000000001
	.quad	0x3febac40d0aaa7df              # double 0.86477700000000002
	.quad	0x3fd484944ed6fda8              # double 0.32059199999999999
	.quad	0x3fee4fc1df3300de              # double 0.94723599999999997
	.quad	0x3fcaeebf65dbfceb              # double 0.21041099999999999
	.quad	0x3fd042fe82517e78              # double 0.25408900000000001
	.quad	0x3fef32db1e9f2778              # double 0.97495799999999999
	.quad	0x3fe233a4723aafff              # double 0.56880399999999998
	.quad	0x3fe23c4b09e98dce              # double 0.56986000000000003
	.quad	0x3fc6f5ec80c73abd              # double 0.17938000000000001
	.quad	0x3feb4cf28c79f666              # double 0.85314299999999998
	.quad	0x3fd7d92fb19e731d              # double 0.37263099999999999
	.quad	0x3fc6a558ea7ce0fc              # double 0.17692099999999999
	.quad	0x3fe621a719b4dcec              # double 0.691608
	.quad	0x3fe0b910c2c5e2ce              # double 0.52259100000000003
	.quad	0x3fe65712a0ec7432              # double 0.698129
	.quad	0x3fdf46d82ba5a038              # double 0.48869899999999999
	.quad	0x3fcbd1782d38476f              # double 0.21733
	.quad	0x3fe77da836eb4e98              # double 0.73408899999999999
	.quad	0x3fc7288ce703afb8              # double 0.180925
	.quad	0x3fd868db8bac710d              # double 0.38140000000000002
	.quad	0x3fee56eefa1e3eaf              # double 0.94811199999999995
	.quad	0x3feb29ed3953dea4              # double 0.84886799999999995
	.quad	0x3fc6f32378ab0c89              # double 0.17929500000000001
	.quad	0x3fe3a5b317efe0ce              # double 0.61397699999999999
	.quad	0x3fe15f0f5a1016ce              # double 0.54285399999999995
	.quad	0x3fc57225b749adc9              # double 0.167546
	.quad	0x3fd4d2fe3f359ff5              # double 0.325378
	.quad	0x3fe1b2a27f1b6912              # double 0.55305599999999999
	.quad	0x3fdb36f7e3d1cc10              # double 0.42523
	.quad	0x3fee05dfa871a3b1              # double 0.93821699999999997
	.quad	0x3fd0e4712e40852b              # double 0.26394299999999998
	.quad	0x3fbeb81f969e3c97              # double 0.11999700000000001
	.quad	0x3fdab124d099e0e7              # double 0.41706199999999999
	.quad	0x3fdb5cfaacd9e83e              # double 0.42754999999999999
	.quad	0x3fc302ababead4f6              # double 0.14851900000000001
	.quad	0x3fda352a84380885              # double 0.409495
	.quad	0x3fe48f7fcfc3f812              # double 0.642517
	.quad	0x3fc2a0cae642bf98              # double 0.14553199999999999
	.quad	0x3fc981beb18116ec              # double 0.199272
	.quad	0x3fd0ac4f7ec3547e              # double 0.260517
	.quad	0x3fea7c2a8869c66d              # double 0.82765699999999998
	.quad	0x3fceb649d388a8b1              # double 0.23993800000000001
	.quad	0x3fefca6eb91b3f21              # double 0.99346100000000003
	.quad	0x3fec92f901083dbc              # double 0.89294099999999998
	.quad	0x3feb5e02ea960b70              # double 0.85522600000000004
	.quad	0x3fe72a4db163baba              # double 0.72391399999999995
	.quad	0x3fe75590c0ad03da              # double 0.72919500000000004
	.quad	0x3fe2c5479d4d8341              # double 0.58658200000000005
	.quad	0x3fcb615ebfa8f7db              # double 0.21390899999999999
	.quad	0x3fbeb78897e99631              # double 0.119988
	.quad	0x3fc787e7c06e19b9              # double 0.183835
	.quad	0x3fdb049ecb31c21a              # double 0.422157
	.quad	0x3fe9a5247cb70ac4              # double 0.80140900000000003
	.quad	0x3fe1ec69b5a63f9a              # double 0.56010899999999997
	.quad	0x3febb55043e5321e              # double 0.86588299999999996
	.quad	0x3fd0ec743201040c              # double 0.264432
	.quad	0x3fd75193708aac97              # double 0.36435400000000001
	.quad	0x3fe1a49c2c1b10fd              # double 0.55134399999999995
	.quad	0x3fe0248f96e15875              # double 0.50446299999999999
	.quad	0x3fe131209edbf8ba              # double 0.53724700000000003
	.quad	0x3fe723f8982cb210              # double 0.72314100000000003
	.quad	0x3fde9b4dcebfec14              # double 0.47822900000000002
	.quad	0x3feee36b09635611              # double 0.96526100000000003
	.quad	0x3fbde81cb46bacf7              # double 0.116823
	.quad	0x3fb89310129cbab6              # double 0.095993999999999995
	.quad	0x3fdbf67b1c0010c7              # double 0.436919
	.quad	0x3fa469b5a63f9a4a              # double 0.039869000000000002
	.quad	0x3fe792839042d8c3              # double 0.73663500000000004
	.quad	0x3fd73e3193f6c26a              # double 0.36317100000000002
	.quad	0x3fbad5e071c53f3a              # double 0.104826
	.quad	0x3fd8e111276fb092              # double 0.388737
	.quad	0x3feedf43c7d5ed07              # double 0.964754
	.quad	0x3fd7fb2aae297397              # double 0.37470500000000001
	.quad	0x3feedda8bd230b9e              # double 0.96455800000000003
	.quad	0x3fec7f865d7cb2d9              # double 0.890567
	.quad	0x3fd3e74afd545415              # double 0.31099199999999999
	.quad	0x3f6185cee17a02fb              # double 0.0021389999999999998
	.quad	0x3fc32d5e071c53f4              # double 0.14982200000000001
	.quad	0x3fef45ac471b4784              # double 0.97725499999999998
	.quad	0x3feb5ebd9018e758              # double 0.85531500000000005
	.quad	0x3fcde8b3b320535d              # double 0.23366400000000001
	.quad	0x3fefa875d56f32be              # double 0.98931400000000003
	.quad	0x3fb864a9cdc44391              # double 0.095285999999999996
	.quad	0x3fbd0752da98676a              # double 0.11339299999999999
	.quad	0x3fd5a5c5f7c6759b              # double 0.33824300000000002
	.quad	0x3fe85a8155d5f56a              # double 0.76104799999999995
	.quad	0x3fcf56fb8f57f738              # double 0.244842
	.quad	0x3fd14ea4a8c154ca              # double 0.27042500000000003
	.quad	0x3fe26dd8b60f1b26              # double 0.575909
	.quad	0x3feaa8c9b845564b              # double 0.83310399999999996
	.quad	0x3fc877a2cecc814d              # double 0.19115099999999999
	.quad	0x3fe0578e5c4eb570              # double 0.51068800000000003
	.quad	0x3fe21abf33871609              # double 0.56576499999999996
	.quad	0x3fe730ec31162281              # double 0.72472199999999998
	.quad	0x3fab26394face67d              # double 0.053025999999999997
	.quad	0x3fe7a734f82f5126              # double 0.73916099999999996
	.quad	0x3fe1f07bfe7e1fc1              # double 0.56060600000000005
	.quad	0x3fd01be6e6538690              # double 0.25170300000000001
	.quad	0x3fe53df090f733a9              # double 0.66381100000000004
	.quad	0x3fcc9f05ea24cc68              # double 0.223603
	.quad	0x3fb81e2584f4c6e7              # double 0.094210000000000002
	.quad	0x3fed542a23bff8a9              # double 0.91652400000000001
	.quad	0x3fd24aa53fc00970              # double 0.285806
	.quad	0x3fe21da16616b54e              # double 0.56611699999999998
	.quad	0x3f95b8dc55000c95              # double 0.021212999999999999
	.quad	0x3fe89d712a0ec743              # double 0.76921899999999999
	.quad	0x3fd6560c7c0f4517              # double 0.34900199999999998
	.quad	0x3fef1e364bec679d              # double 0.97243800000000002
	.quad	0x3fde9eecbfb15b57              # double 0.47844999999999999
	.quad	0x3fdd1183b60285ec              # double 0.45419399999999999
	.quad	0x3fdb7000431bde83              # double 0.42871100000000001
	.quad	0x3fcc413db7f17375              # double 0.22074099999999999
	.quad	0x3fa69680e0653006              # double 0.044117000000000003
	.quad	0x3fc7362e90364389              # double 0.181341
	.quad	0x3feabf65dbfceb79              # double 0.83586400000000005
	.quad	0x3fe7541743e963dc              # double 0.72901499999999997
	.quad	0x3fea045996744b2b              # double 0.81303099999999995
	.quad	0x3fefb797460242d0              # double 0.99116099999999996
	.quad	0x3fe81dcd7060bb2c              # double 0.75363800000000003
	.quad	0x3fd790e23af31b15              # double 0.36821799999999999
	.quad	0x3fea11eeaa6d2674              # double 0.81468899999999999
	.quad	0x3fd6bf3387160957              # double 0.35542000000000001
	.quad	0x3feb6eb702602c91              # double 0.85726500000000005
	.quad	0x3fdb2bcb5fe542e5              # double 0.42454799999999998
	.quad	0x3fef5e56cd6c2efd              # double 0.98026599999999997
	.quad	0x3fe0dda48b652370              # double 0.52705599999999997
	.quad	0x3fe6e6a98244e93e              # double 0.71565699999999999
	.quad	0x3fefd130df9bdc6a              # double 0.994286
	.quad	0x3fd61b0ccbc05d53              # double 0.34540100000000001
	.quad	0x3fd1a1b5c7cd898b              # double 0.27549499999999999
	.quad	0x3fe5589ce4a7b4e5              # double 0.66706699999999997
	.quad	0x3fe9f893faf42785              # double 0.81159400000000004
	.quad	0x3fe70198f1d3ed52              # double 0.71894499999999995
	.quad	0x3fdbde7ea5f84cad              # double 0.43545499999999998
	.quad	0x3fde62131a8ef77f              # double 0.47473599999999999
	.quad	0x3fe3994185058dde              # double 0.61245799999999995
	.quad	0x3fef687d2c7b890d              # double 0.98150499999999996
	.quad	0x3fece991ff7164c7              # double 0.90351199999999998
	.quad	0x3fbf8433d6c72192              # double 0.123111
	.quad	0x3fd73b927d45a5fc              # double 0.36301099999999997
	.quad	0x3fdb351159c49774              # double 0.42511399999999999
	.quad	0x3fad2eb5f5f0b285              # double 0.056996999999999999
	.quad	0x3fe401f53825e13b              # double 0.62523899999999999
	.quad	0x3fab13dfb0d51f82              # double 0.052886000000000002
	.quad	0x3fa5bea0ba1f4b1f              # double 0.042470000000000001
	.quad	0x3fdcc7000431bde8              # double 0.44964599999999999
	.quad	0x3fde2af9a8cdea03              # double 0.47137299999999999
	.quad	0x3fc298f605ab3aac              # double 0.14529300000000001
	.quad	0x3f63be22e5de15ca              # double 0.0024099999999999998
	.quad	0x3fe472862f5989df              # double 0.63897999999999999
	.quad	0x3fe7b1e3a7daa4fd              # double 0.74046500000000004
	.quad	0x3fcb11e85fd04a30              # double 0.21148400000000001
	.quad	0x3fc4e1932d6ece14              # double 0.163134
	.quad	0x3fe25c896dd26b72              # double 0.57379599999999997
	.quad	0x3fee4f850df15a4b              # double 0.94720700000000002
	.quad	0x3fec4408d8ec95c0              # double 0.88330500000000001
	.quad	0x3febfd77fae3608d              # double 0.874691
	.quad	0x3fd650dae3e6c4c6              # double 0.34868500000000002
	.quad	0x3fe840a06e9ff0cc              # double 0.75788900000000003
	.quad	0x3fdd2dba4d6e47dc              # double 0.45591599999999999
	.quad	0x3fe1c75e6362a5e8              # double 0.55558700000000005
	.quad	0x3fdaed02cd39da16              # double 0.42071599999999998
	.quad	0x3fdb0b5aa715831f              # double 0.422568
	.quad	0x3fc2cf6be37de93a              # double 0.146955
	.quad	0x3fe27c69728a6117              # double 0.57768699999999995
	.quad	0x3fe20afe60c38f36              # double 0.56384199999999995
	.quad	0x3fea4111ada76d98              # double 0.82044300000000003
	.quad	0x3fe9f8183f91e647              # double 0.81153500000000001
	.quad	0x3feac712e40852b5              # double 0.83680100000000002
	.quad	0x3fedee45c358afc4              # double 0.93533599999999994
	.quad	0x3fdc8d79d0a67621              # double 0.446135
	.quad	0x3fe015dd4c76d118              # double 0.50266900000000003
	.quad	0x3fde3b60285ec3db              # double 0.47237400000000002
	.quad	0x3fdf6317268d3283              # double 0.490423
	.quad	0x3f8593e5fb71fbc6              # double 0.010536
	.quad	0x3fd6a17f4128bf3c              # double 0.353607
	.quad	0x3fe07202107b7846              # double 0.51391699999999996
	.quad	0x3feb424a276b7ed4              # double 0.85184199999999998
	.quad	0x3fc13387160956c1              # double 0.134385
	.quad	0x3fc5e06961c36977              # double 0.17091100000000001
	.quad	0x3fd838ac18f81e8a              # double 0.37845899999999999
	.quad	0x3fefd074213a0c6b              # double 0.99419599999999996
	.quad	0x3faec3dab5c39bcc              # double 0.060088000000000003
	.quad	0x3fbaec8d5c74751d              # double 0.105172
	.quad	0x3fef7d1fe64f54d2              # double 0.98402400000000001
	.quad	0x3fe1f182235b4edb              # double 0.56073099999999998
	.quad	0x3fd1b9628cbd1245              # double 0.27694000000000002
	.quad	0x3fb94aa10e022142              # double 0.098794999999999993
	.quad	0x3fecc942d490e66d              # double 0.89956800000000003
	.quad	0x3fc1e37585be1a82              # double 0.13975399999999999
	.quad	0x3feef993d5347a5b              # double 0.96796599999999999
	.quad	0x3fb9df00abf76a2f              # double 0.101059
	.quad	0x3fe874a558ea7ce1              # double 0.764239
	.quad	0x3feaaef0ae536502              # double 0.83385500000000001
	.quad	0x3fd7907d912556d2              # double 0.36819400000000002
	.quad	0x3febee158750c1b9              # double 0.87281299999999995
	.quad	0x3faae62131a8ef78              # double 0.052537
	.quad	0x3fd3e8ee6b8305d9              # double 0.31109199999999998
	.quad	0x3fe37aaac1094a2c              # double 0.60872400000000004
	.quad	0x3fc9a38fbca1059f              # double 0.20030400000000001
	.quad	0x3fef244a6223e187              # double 0.97318000000000004
	.quad	0x3fb20be5109070fc              # double 0.070494000000000001
	.quad	0x3fe3266ba493c89f              # double 0.59843999999999997
	.quad	0x3fdec5cdd50a88f0              # double 0.480823
	.quad	0x3fe82d0c3d25247d              # double 0.75549900000000003
	.quad	0x3fd7cc39ffd60e95              # double 0.37184
	.quad	0x3fc92cf95d4e8fb0              # double 0.196685
	.quad	0x3fe9db3bfb58d152              # double 0.80801199999999995
	.quad	0x3fefb4a66559f6ec              # double 0.99080199999999996
	.quad	0x3fe8b71da37ef5a9              # double 0.77235299999999996
	.quad	0x3fe00deb0fadf2ed              # double 0.50169900000000001
	.quad	0x3fb96c7219220ff5              # double 0.099310999999999997
	.quad	0x3fd5dad31fcd24e1              # double 0.34148099999999998
	.quad	0x3fca6c764adff823              # double 0.20643500000000001
	.quad	0x3fd7146a1a500d5f              # double 0.36062100000000002
	.quad	0x3fd8ef0281ba7fc3              # double 0.38958799999999999
	.quad	0x3fd251dabe27179c              # double 0.286246
	.quad	0x3fef3cf2cf95d4e9              # double 0.97619
	.quad	0x3fc41b2a27f1b691              # double 0.157079
	.quad	0x3fe2f0e0a84be404              # double 0.59190399999999999
	.quad	0x3fdb5f5ad96a6a01              # double 0.42769499999999999
	.quad	0x3fe15701d9f4d37c              # double 0.54187099999999999
	.quad	0x3fe46ad70e6f2e8c              # double 0.638042
	.quad	0x3fd6d5a187a4a490              # double 0.35678900000000002
	.quad	0x3fd9c1ca3a4b5569              # double 0.40245300000000001
	.quad	0x3fe1605ab3aabcd8              # double 0.54301200000000005
	.quad	0x3fc4be27179bfdf8              # double 0.162053
	.quad	0x3fe8108c3f3e0371              # double 0.75202000000000002
	.quad	0x3fd335ce18266773              # double 0.30015900000000001
	.quad	0x3fe3c0f88333fc87              # double 0.61730600000000002
	.quad	0x3fee24f440af1cb9              # double 0.94201100000000004
	.quad	0x3fe783a7546d3f9e              # double 0.73482099999999995
	.quad	0x3fca2749f0e4da0a              # double 0.20432400000000001
	.quad	0x3fd95d074213a0c7              # double 0.39630300000000002
	.quad	0x3fed5ee99a62ed35              # double 0.91783599999999999
	.quad	0x3fdb8661ae70c133              # double 0.43007699999999999
	.quad	0x3fc0e3f78bbd3804              # double 0.13195699999999999
	.quad	0x3fd92c7b890d5a5c              # double 0.39334000000000002
	.quad	0x3fe0084e831ad213              # double 0.50101399999999996
	.quad	0x3fda82278d0cc35d              # double 0.41419400000000001
	.quad	0x3fe5ddcc63f14120              # double 0.68332499999999996
	.quad	0x3fe1ed373affb04f              # double 0.56020700000000001
	.quad	0x3fd9d2fe3f359ff5              # double 0.403503
	.quad	0x3fe05ebd9018e758              # double 0.51156500000000005
	.quad	0x3fdcd45a5fc7e6b4              # double 0.450461
	.quad	0x3feabe37de939eae              # double 0.83572000000000002
	.quad	0x3fe15b39e279dd3c              # double 0.54238600000000003
	.quad	0x3fc425e13b18dac2              # double 0.15740599999999999
	.quad	0x3fbee158750c1b97              # double 0.120626
	.quad	0x3fd5a9c99285a922              # double 0.33848800000000001
	.quad	0x3fe03a7daa4fca43              # double 0.50714000000000004
	.quad	0x3fe0988b11409a24              # double 0.518621
	.quad	0x3fed49906cca2db6              # double 0.91522999999999999
	.quad	0x3fb739e279dd3bb0              # double 0.090727000000000002
	.quad	0x3feb3b83cf2cf95d              # double 0.85101499999999997
	.quad	0x3fd5652bd3c36113              # double 0.33429999999999999
	.quad	0x3fdedeefe4ffc979              # double 0.48235699999999998
	.quad	0x3fe8b38f7985271c              # double 0.77191900000000002
	.quad	0x3fd6a2e3c536d656              # double 0.35369200000000001
	.quad	0x3fee31c219eb6391              # double 0.94357400000000002
	.quad	0x3fc3b5525cc42635              # double 0.153971
	.quad	0x3fa8a2a90cd423d9              # double 0.048115999999999999
	.quad	0x3fe42120e1f7d73d              # double 0.62904400000000005
	.quad	0x3fedf0d1fa333765              # double 0.93564700000000001
	.quad	0x3fe70fe047d3d428              # double 0.720688
	.quad	0x3fe1df04ddb5525d              # double 0.55847400000000003
	.quad	0x3fe5c567125dd096              # double 0.68034700000000004
	.quad	0x3feb50b524399b2c              # double 0.85360199999999997
	.quad	0x3fd346412cf0f9d3              # double 0.30116300000000001
	.quad	0x3fea761aa3f034b1              # double 0.82691700000000001
	.quad	0x3fe0007570c564f9              # double 0.50005599999999994
	.quad	0x3f9ae924f227d029              # double 0.026280000000000001
	.quad	0x3fd968448cf7caa7              # double 0.39698899999999998
	.quad	0x3fec4d74927913e8              # double 0.88445499999999999
	.quad	0x3fedf1348b220792              # double 0.93569400000000003
	.quad	0x3fe6e3baba7b9171              # double 0.71529900000000002
	.quad	0x3fe2f5f4e4430b18              # double 0.59252400000000005
	.quad	0x3fdfbbbe878fabda              # double 0.495834
	.quad	0x3fe91a847b24638d              # double 0.78448700000000005
	.quad	0x3fe434b51372a38c              # double 0.63143400000000005
	.quad	0x3fefaefb2aae2974              # double 0.99011000000000004
	.quad	0x3fe4e1bf37b8d3f2              # double 0.65255700000000005
	.quad	0x3feb633ce63a5c1c              # double 0.85586399999999995
	.quad	0x3fe631d2e0e30447              # double 0.69358200000000003
	.quad	0x3fdadc5931ca7d67              # double 0.41969899999999999
	.quad	0x3fee47863beec398              # double 0.94623100000000004
	.quad	0x3fe6f525460aa64c              # double 0.71742499999999998
	.quad	0x3fc6964e8b7e4de4              # double 0.17646200000000001
	.quad	0x3feb90385c67dfe3              # double 0.86135499999999998
	.quad	0x3fa2658c4bd33d29              # double 0.035930999999999998
	.quad	0x3fd1fe1975f2cb64              # double 0.281134
	.quad	0x3feb80ffda4052d6              # double 0.85949699999999996
	.quad	0x3fe82bba98eda22f              # double 0.75533799999999995
	.quad	0x3fe3f2f9873ffac2              # double 0.62341000000000002
	.quad	0x3feac766c6de7642              # double 0.83684099999999995
	.quad	0x3fdfe0ef99806f26              # double 0.49810399999999999
	.quad	0x3fe8b2f661f18ca0              # double 0.77184600000000003
	.quad	0x3feba12f901083dc              # double 0.86342600000000002
	.quad	0x3fe9972cd7cf5f4e              # double 0.79970399999999997
	.quad	0x3fe2e366d7a56de3              # double 0.59025899999999998
	.quad	0x3fc5eab367a0f909              # double 0.17122499999999999
	.quad	0x3fe4d84b1ab0856e              # double 0.65140299999999995
	.quad	0x3fe1ca6a875d56f3              # double 0.55595899999999998
	.quad	0x3fc6d80a17b0f6ad              # double 0.17846799999999999
	.quad	0x3fc1e0bd44998d04              # double 0.13967099999999999
	.quad	0x3fe98405b39e279e              # double 0.79736600000000002
	.quad	0x3fd4bab21815a07b              # double 0.32389499999999999
	.quad	0x3fd496cc5fbf8338              # double 0.32170399999999999
	.quad	0x3fa7cf3dc054ef46              # double 0.046503000000000003
	.quad	0x3fcfb29a1b9f98b7              # double 0.247638
	.quad	0x3fe71741d084e832              # double 0.72158900000000004
	.quad	0x3fcd371971c10d7c              # double 0.228244
	.quad	0x3fdb4b8bef8ceb35              # double 0.42648599999999998
	.quad	0x3fee297bfa4c61d8              # double 0.94256399999999995
	.quad	0x3fc31d3ed527e521              # double 0.14932999999999999
	.quad	0x3fd818def416bdb2              # double 0.37651800000000002
	.quad	0x3fea992428d434a0              # double 0.83119399999999998
	.quad	0x3fb6eafab53d640f              # double 0.089523000000000005
	.quad	0x3fd5f34d6a161e4f              # double 0.34297499999999997
	.quad	0x3fe4012599ed7c70              # double 0.62514000000000003
	.quad	0x3fd5524399b2c40d              # double 0.333146
	.quad	0x3fed07a4a48f96e1              # double 0.90718299999999996
	.quad	0x3fe9176145953587              # double 0.78410400000000002
	.quad	0x3fdfd3415b1422cd              # double 0.49726900000000002
	.quad	0x3fe557e02645e4e7              # double 0.66697700000000004
	.quad	0x3fe8c2eba27ae9ab              # double 0.77379399999999998
	.quad	0x3fd931b152f3c2db              # double 0.39365800000000001
	.quad	0x3fd220ee8d10f51b              # double 0.28326000000000001
	.quad	0x3fdf7075b3e1437c              # double 0.49123899999999998
	.quad	0x3fc2ecb74ddf86e4              # double 0.14784900000000001
	.quad	0x3fdb535c9e6687f4              # double 0.42696299999999998
	.quad	0x3fd745fe111276fb              # double 0.363647
	.quad	0x3fe0e2ed352220bc              # double 0.52770099999999998
	.quad	0x3feeda87a072d1af              # double 0.96417600000000003
	.quad	0x3fd06ca03c4b09ea              # double 0.25663000000000002
	.quad	0x3feaef5ec80c73ac              # double 0.84172000000000002
	.quad	0x3fe73cafb3b75211              # double 0.72615799999999997
	.quad	0x3fe74217d2849cb2              # double 0.72681799999999996
	.quad	0x3fcf7d5a9eb2074f              # double 0.24601300000000001
	.quad	0x3fe87a0945f9df55              # double 0.76489700000000005
	.quad	0x3fe0c3d46b26bf87              # double 0.52390499999999995
	.quad	0x3fca616b54e2b064              # double 0.206098
	.quad	0x3fba4dd2f1a9fbe7              # double 0.10274999999999999
	.quad	0x3fb394d940789614              # double 0.076490000000000002
	.quad	0x3fe2b6544fe36d22              # double 0.58475699999999997
	.quad	0x3fe447da1ec4e725              # double 0.63377099999999997
	.quad	0x3fe2b7c5692b3cc5              # double 0.58493300000000004
	.quad	0x3f8628cbd1244a62              # double 0.01082
	.quad	0x3fdd834091c08744              # double 0.46113599999999999
	.quad	0x3fdff284167a95c8              # double 0.49917699999999998
	.quad	0x3fd7539fba450acc              # double 0.364479
	.quad	0x3fd14b61fe21d96f              # double 0.27022600000000002
	.quad	0x3fe60800eae18aca              # double 0.68847700000000001
	.quad	0x3fe49d7ba6698bb5              # double 0.64422400000000002
	.quad	0x3fee06e19b90ea9e              # double 0.93833999999999995
	.quad	0x3fdbe57d9dba908a              # double 0.43588199999999999
	.quad	0x3fdb4523f67f4dbe              # double 0.426095
	.quad	0x3fe67b15b573eab3              # double 0.70252499999999996
	.quad	0x3fb107a6bd6e8af8              # double 0.066522999999999999
	.quad	0x3feb3d5dc4007571              # double 0.85124100000000003
	.quad	0x3fd64b4070329803              # double 0.34834300000000001
	.quad	0x3fed530f062d40ab              # double 0.91638900000000001
	.quad	0x3fdd94d940789614              # double 0.46221000000000001
	.quad	0x3fc455c96030c240              # double 0.15886800000000001
	.quad	0x3fdc6e264e48626f              # double 0.44422299999999998
	.quad	0x3fe185e3da2f8bdf              # double 0.54759400000000003
	.quad	0x3fe370329802c0a5              # double 0.60744600000000004
	.quad	0x3fd76822ff08893b              # double 0.36573099999999997
	.quad	0x3fa35ed8d36b4c7f              # double 0.037832999999999999
	.quad	0x3fed3f3bea91d9b2              # double 0.91396900000000003
	.quad	0x3fb449fd7a13c255              # double 0.079254000000000005
	.quad	0x3fe7818611fd5886              # double 0.73456100000000002
	.quad	0x3fe4b2cc70867ad9              # double 0.64682600000000001
	.quad	0x3fdb1a9b8cb8e087              # double 0.42349900000000001
	.quad	0x3feed475a31a4bdc              # double 0.96343500000000004
	.quad	0x3fd275b813016484              # double 0.288435
	.quad	0x3fdce7c8d195896a              # double 0.45164700000000002
	.quad	0x3fd7db22d0e56042              # double 0.37275000000000003
	.quad	0x3fec3a94bbe4473d              # double 0.88215100000000002
	.quad	0x3fe9dc1a47a9e2bd              # double 0.808118
	.quad	0x3fef3fa0945f9df5              # double 0.97651699999999996
	.quad	0x3fe3606317268d33              # double 0.60551600000000005
	.quad	0x3faf345069a4df48              # double 0.060946
	.quad	0x3fe869b17481b21c              # double 0.76290199999999996
	.quad	0x3fe63dff3f0fe048              # double 0.69506800000000002
	.quad	0x3fd9e1ef73c0c1fd              # double 0.40441500000000002
	.quad	0x3fed407cc7d1bb49              # double 0.91412199999999999
	.quad	0x3fe446f587d6f976              # double 0.63366199999999995
	.quad	0x3fd53b9f127f5e85              # double 0.331764
	.quad	0x3fe8f7f06705c897              # double 0.78026600000000002
	.quad	0x3fb7e39f77292c49              # double 0.093316999999999997
	.quad	0x3fb0face67d77fae              # double 0.066326999999999997
	.quad	0x3fd77a89331a08c0              # double 0.36685400000000001
	.quad	0x3f6d5c31593e5fb7              # double 0.0035839999999999999
	.quad	0x3fe4361dc93ea2d3              # double 0.631606
	.quad	0x3fe09cef240fa9c1              # double 0.51915699999999998
	.quad	0x3fd6842b734b5137              # double 0.35181699999999999
	.quad	0x3fed5b0574b40703              # double 0.91736099999999998
	.quad	0x3fe94388ebcc6c55              # double 0.78949400000000003
	.quad	0x3fc42bae03b3e9a7              # double 0.157583
	.quad	0x3fd69c7368ad6883              # double 0.35329899999999997
	.quad	0x3fe5af7d30ad46f6              # double 0.67767200000000005
	.quad	0x3fe4d3f7ced91687              # double 0.65087499999999998
	.quad	0x3fcd31ec0b567558              # double 0.22808600000000001
	.quad	0x3fcae8f29d40ee07              # double 0.210234
	.quad	0x3fe34ce3de6149c7              # double 0.60313600000000001
	.quad	0x3fe795cc857f3062              # double 0.73703600000000002
	.quad	0x3fda2fec56d5cfab              # double 0.40917500000000001
	.quad	0x3fe22ab474107315              # double 0.56771300000000002
	.quad	0x3fea9c3ac929aa1d              # double 0.83157099999999995
	.quad	0x3fe472cb641700ce              # double 0.63901300000000005
	.quad	0x3fd11f79420b3d4b              # double 0.26754600000000001
	.quad	0x3fe853d640e9d51b              # double 0.76023399999999997
	.quad	0x3fe634ca0c282c6f              # double 0.69394400000000001
	.quad	0x3fcb7cdcca70d1fa              # double 0.21474799999999999
	.quad	0x3fe7fa69be09bb6b              # double 0.74931800000000004
	.quad	0x3feddc443914f484              # double 0.93313800000000002
	.quad	0x3fc4bcd78c436fc1              # double 0.16201299999999999
	.quad	0x3fd6bd3804534bd7              # double 0.35529899999999998
	.quad	0x3fe9d527e5215769              # double 0.80727000000000004
	.quad	0x3feedba0a5269596              # double 0.96431
	.quad	0x3fa0cef672b88440              # double 0.032828999999999997
	.quad	0x3fd2433d6c721922              # double 0.285354
	.quad	0x3fe9f9bbadc0980b              # double 0.81173499999999998
	.quad	0x3faa9670196d8f50              # double 0.051929000000000003
	.quad	0x3fde97f62b6ae7d5              # double 0.47802499999999998
	.quad	0x3fe95dfc9ff92f2b              # double 0.79272299999999996
	.quad	0x3fed9deacc92146a              # double 0.92552699999999999
	.quad	0x3fe78b04ab606b7b              # double 0.73572000000000004
	.quad	0x3fe6769a91105e1c              # double 0.70197799999999999
	.quad	0x3fe6512cadddf43c              # double 0.69740899999999995
	.quad	0x3fc0d5f138bcdff0              # double 0.13152900000000001
	.quad	0x3fd6d56f32bdc26e              # double 0.35677700000000001
	.quad	0x3fe83a0a52695960              # double 0.757085
	.quad	0x3fe3ec4827b6fe2e              # double 0.62259299999999995
	.quad	0x3fe499da9c99285b              # double 0.64378100000000005
	.quad	0x3feef56861e92924              # double 0.96745700000000001
	.quad	0x3f8bf5946c332f01              # double 0.013651999999999999
	.quad	0x3fd22e62131a8ef7              # double 0.28408099999999997
	.quad	0x3fe53f5f91600f34              # double 0.66398599999999997
	.quad	0x3fd7d2d87f88765c              # double 0.37224400000000002
	.quad	0x3fd84c9c90c4dec2              # double 0.37967600000000001
	.quad	0x3fe80b47c73eee52              # double 0.75137699999999996
	.quad	0x3f992fb19e731d2e              # double 0.024596
	.quad	0x3febc2acb85a4f01              # double 0.86751400000000001
	.quad	0x3fe1e4e69f05ea25              # double 0.55919200000000002
	.quad	0x3fe31aaa3ad18d26              # double 0.59700500000000001
	.quad	0x3fee487fcb923a2a              # double 0.94635000000000002
	.quad	0x3fe5a53543aeab7a              # double 0.67641700000000005
	.quad	0x3fe22706d5065732              # double 0.56726399999999999
	.quad	0x3fbe003ab862b27d              # double 0.117191
	.quad	0x3fe09752977c88e8              # double 0.51847200000000004
	.quad	0x3fba6b2f23033a47              # double 0.103198
	.quad	0x3fcfca4b124d099e              # double 0.248361
	.quad	0x3fdfbf5d78811b1e              # double 0.49605500000000002
	.quad	0x3fecf4623d0bfa09              # double 0.90483199999999997
	.quad	0x3fe89e060fe47992              # double 0.76929000000000003
	.quad	0x3feb8ab92c061848              # double 0.860684
	.quad	0x3fe7341e14bdfd26              # double 0.72511199999999998
	.quad	0x3f8f0f5a1016ce79              # double 0.015166000000000001
	.quad	0x3fc38e6d15ad106f              # double 0.152784
	.quad	0x3fe20c6b484d76ab              # double 0.56401599999999996
	.quad	0x3fc3d06bbdbe3c10              # double 0.15479799999999999
	.quad	0x3fe485ccc89b0ee5              # double 0.64133300000000004
	.quad	0x3fed50c3d25247cb              # double 0.91610899999999995
	.quad	0x3fddbc903ea704bc              # double 0.46463399999999999
	.quad	0x3fd8a11ec918e326              # double 0.38483400000000001
	.quad	0x3fcfc105186db50f              # double 0.24807799999999999
	.quad	0x3feeb6c7a7c9de05              # double 0.95981199999999999
	.quad	0x3fc439cd8127b2cc              # double 0.15801399999999999
	.quad	0x3fd9e3de6149c6f3              # double 0.40453299999999998
	.quad	0x3fefd31550ca1cef              # double 0.99451699999999998
	.quad	0x3fef2c68a936c58f              # double 0.974171
	.quad	0x3fde52007dd44135              # double 0.47375499999999998
	.quad	0x3fe0a584f4c6e6da              # double 0.52020500000000003
	.quad	0x3fef6bc408d8ec96              # double 0.98190500000000003
	.quad	0x3feecda4ce8101f3              # double 0.96260299999999998
	.quad	0x3fd7b777d0f1f57b              # double 0.37057299999999999
	.quad	0x3fd7d9ec7000431c              # double 0.37267600000000001
	.quad	0x3fd7ee78183f91e6              # double 0.37392999999999998
	.quad	0x3fefc4284dfce315              # double 0.99269499999999999
	.quad	0x3fd9b11409a24031              # double 0.40143299999999998
	.quad	0x3fdddf9378ee2867              # double 0.46677099999999999
	.quad	0x3fe6093964a59c06              # double 0.68862599999999996
	.quad	0x3fead905c0336156              # double 0.83899199999999996
	.quad	0x3fed07f023e9ea14              # double 0.90721899999999999
	.quad	0x3fe42250f840181e              # double 0.629189
	.quad	0x3fb4625e99e94ab2              # double 0.079626000000000002
	.quad	0x3fe4ad6a9c560c7c              # double 0.64616899999999999
	.quad	0x3fe41f4b1ee24357              # double 0.62882000000000005
	.quad	0x3fed89331a08bfc2              # double 0.92299799999999999
	.quad	0x3fcca5efe9318762              # double 0.22381400000000001
	.quad	0x3fe5cb252ce032db              # double 0.68104799999999999
	.quad	0x3fe4af2734f82f51              # double 0.64638099999999998
	.quad	0x3f8f8982cb20fb22              # double 0.015398999999999999
	.quad	0x3fdeb70691ea78af              # double 0.47992099999999999
	.quad	0x3fdf23076c050bd8              # double 0.48651299999999997
	.quad	0x3fd849ecb31c219f              # double 0.37951200000000002
	.quad	0x3fe00b9fdbd2fa0d              # double 0.50141899999999995
	.quad	0x3fbe90abb44e50c6              # double 0.119395
	.quad	0x3fe2a61e0c5a8156              # double 0.58277800000000002
	.quad	0x3fe49df761cbccf3              # double 0.64428300000000005
	.quad	0x3fc21dfb9389b520              # double 0.14154
	.quad	0x3fd5b1209edbf8ba              # double 0.33893600000000002
	.quad	0x3fafb71fbc5de9c0              # double 0.061943999999999999
	.quad	0x3fdb6a875d56f32c              # double 0.42837700000000001
	.quad	0x3fe02858793dd97f              # double 0.50492499999999996
	.quad	0x3fc09b0ee49f5169              # double 0.12973199999999999
	.quad	0x3fdca671ef30a4e3              # double 0.44765899999999997
	.quad	0x3fb85ee568a50508              # double 0.095198000000000005
	.quad	0x3fb0f3343fa2ad3f              # double 0.066211000000000006
	.quad	0x3fe9426138fffbce              # double 0.78935299999999997
	.quad	0x3fc0edd4845132f8              # double 0.13225799999999999
	.quad	0x3fe8f6ab5807fed2              # double 0.780111
	.quad	0x3fdda5a038194c01              # double 0.46323399999999998
	.quad	0x3feb3e20ccff21b4              # double 0.85133400000000003
	.quad	0x3feaa0f0a5efe932              # double 0.83214600000000005
	.quad	0x3fdfad4f5903a754              # double 0.49495299999999998
	.quad	0x3fe679bbadc0980b              # double 0.70235999999999998
	.quad	0x3fefe9ccb7d41744              # double 0.99729
	.quad	0x3f9542a23bff8a8f              # double 0.020761999999999999
	.quad	0x3feca8848387df5d              # double 0.89557100000000001
	.quad	0x3fd4aad601ffb481              # double 0.32292700000000002
	.quad	0x3fd488765ba6efc3              # double 0.32082899999999998
	.quad	0x3fd7c5ef62f9ca5c              # double 0.37145600000000001
	.quad	0x3fd06e3f78bbd380              # double 0.25672899999999998
	.quad	0x3fb5dc2f405f6ba0              # double 0.085390999999999995
	.quad	0x3fe7efd438d1d8a5              # double 0.74802599999999997
	.quad	0x3fe7e733ebbfd71b              # double 0.746973
	.quad	0x3f8df7e80389f83c              # double 0.014633
	.quad	0x3feabdf4c2b51bd6              # double 0.83568799999999999
	.quad	0x3fc23497b7414a4d              # double 0.14223
	.quad	0x3fd650df15a4acf3              # double 0.348686
	.quad	0x3fe65c6e2a80064b              # double 0.69878300000000004
	.quad	0x3fd33b60285ec3db              # double 0.30049900000000002
	.quad	0x3fda1f81a5870da6              # double 0.40817300000000001
	.quad	0x3feb1700cd855971              # double 0.84655800000000003
	.quad	0x3fd068986fcdee35              # double 0.256384
	.quad	0x3fd62d87f88765ba              # double 0.34652899999999998
	.quad	0x3fdd95f2452c59fb              # double 0.46227699999999999
	.quad	0x3fec56798958d9b6              # double 0.88555600000000001
	.quad	0x3fede4bec679cc75              # double 0.93417300000000003
	.quad	0x3fb347f993d5347a              # double 0.075316999999999995
	.quad	0x3fe8c947064ece9a              # double 0.77456999999999998
	.quad	0x3fc222d5171e29b7              # double 0.14168800000000001
	.quad	0x3fe6fbd8be7296f6              # double 0.71824299999999996
	.quad	0x3fe6bef8ceb356da              # double 0.710812
	.quad	0x3fc24189374bc6a8              # double 0.142625
	.quad	0x3fd27b99d451fc4c              # double 0.288794
	.quad	0x3fe88331e3a7daa5              # double 0.766015
	.quad	0x3f9994e1a3f4666f              # double 0.024982000000000001
	.quad	0x3fe62235b4edb2f6              # double 0.69167599999999996
	.quad	0x3fec963992c8c500              # double 0.89333799999999997
	.quad	0x3fc101a79fec99f2              # double 0.13286300000000001
	.quad	0x3fe313037d63022e              # double 0.59607100000000002
	.quad	0x3fb4a76102795704              # double 0.080679000000000001
	.quad	0x3fd724894c447c31              # double 0.36160500000000001
	.quad	0x3fc3bee3d5fdcdf7              # double 0.15426300000000001
	.quad	0x3fc32fa0d77b7c78              # double 0.149891
	.quad	0x3fea5ed288ce703b              # double 0.824075
	.quad	0x3febc5b078d92fb2              # double 0.86788200000000004
	.quad	0x3fd2d76683c297c0              # double 0.29439700000000002
	.quad	0x3fc26cb10342aa9f              # double 0.14394199999999999
	.quad	0x3fef6e43aa79bbae              # double 0.98221000000000003
	.quad	0x3fa50374ff865d7d              # double 0.041042000000000002
	.quad	0x3fd2001d5c31593e              # double 0.28125699999999998
	.quad	0x3fd7af35e310dbf0              # double 0.37006899999999998
	.quad	0x3fea9bfdf7e8038a              # double 0.831542
	.quad	0x3fe5ecaab8a5ce5b              # double 0.68513999999999997
	.quad	0x3fcbf8d2e514c22f              # double 0.218531
	.quad	0x3fd18e53eb399f5e              # double 0.274312
	.quad	0x3fe161847f562175              # double 0.54315400000000003
	.quad	0x3fe881d19157abb9              # double 0.76584700000000006
	.quad	0x3fecf2e275ab7dc8              # double 0.90464900000000004
	.quad	0x3fb3c8e25c810a57              # double 0.077284000000000005
	.quad	0x3fe0fa7c9de05037              # double 0.53057699999999997
	.quad	0x3fefc5bf26f1dc51              # double 0.99288900000000002
	.quad	0x3fe78f6cefed6345              # double 0.73625799999999997
	.quad	0x3fe08f3eccc46951              # double 0.517486
	.quad	0x3fe00d3cff64cf8d              # double 0.50161599999999995
	.quad	0x3fe14efed634549b              # double 0.54089299999999996
	.quad	0x3fe8b67c286f8ad2              # double 0.77227599999999996
	.quad	0x3fe01deacc92146a              # double 0.50365199999999999
	.quad	0x3fe98d5629d8409e              # double 0.79850299999999996
	.quad	0x3fe5e7e414e7ee91              # double 0.68455699999999997
	.quad	0x3fc84d4cb9ecf638              # double 0.189859
	.quad	0x3fc91afc04c8bc9d              # double 0.196136
	.quad	0x3fd807e9d94d0dd0              # double 0.37548300000000001
	.quad	0x3fbb67c286f8ad25              # double 0.10705199999999999
	.quad	0x3fc849906cca2db6              # double 0.189745
	.quad	0x3fe7a54a3c64345d              # double 0.738927
	.quad	0x3fa6937d1fe64f55              # double 0.044094000000000001
	.quad	0x3feb6957470eb24a              # double 0.85660899999999995
	.quad	0x3fe24be61cffeb07              # double 0.57176499999999997
	.quad	0x3f9fa76534373f31              # double 0.030911999999999999
	.quad	0x3fdf4738a3b57c4e              # double 0.48872199999999999
	.quad	0x3fe2eaca79357604              # double 0.59116100000000005
	.quad	0x3fdb8cc9a77e5eab              # double 0.43046800000000002
	.quad	0x3fc5b2bba98eda23              # double 0.169517
	.quad	0x3fed5b7cfe586013              # double 0.91741799999999996
	.quad	0x3fc1847f562174c5              # double 0.13685600000000001
	.quad	0x3fd2eb8d82342246              # double 0.29562699999999997
	.quad	0x3f9bf65dbfceb789              # double 0.027307000000000001
	.quad	0x3fd33eccc46950fc              # double 0.30070799999999998
	.quad	0x3fb586013660e51d              # double 0.084075999999999998
	.quad	0x3fbb255f3519bd40              # double 0.10603899999999999
	.quad	0x3fda86f049a9973e              # double 0.41448600000000002
	.quad	0x3fdf11d798d8a97a              # double 0.48546400000000001
	.quad	0x3fe4c35696e58a33              # double 0.64884500000000001
	.quad	0x3fed70cbaf965b21              # double 0.92001900000000003
	.quad	0x3feea2424a276b7f              # double 0.95730700000000002
	.quad	0x3fe23328b6d86ec1              # double 0.56874499999999995
	.quad	0x3fee6fbf401c4fc2              # double 0.95114100000000001
	.quad	0x3fcf43c7d5ed06ff              # double 0.244256
	.quad	0x3fe4b8bcdfefbf40              # double 0.64755099999999999
	.quad	0x3fcfc810a569b175              # double 0.24829300000000001
	.quad	0x3fb9db445ed4a1ad              # double 0.10100199999999999
	.quad	0x3fc377d955714b9d              # double 0.15209500000000001
	.quad	0x3fea3f359ff4fd6d              # double 0.82021599999999995
	.quad	0x3fb2154434e3369c              # double 0.070637000000000005
	.quad	0x3fe454ac29bf162b              # double 0.63533600000000001
	.quad	0x3fecb3fe9fadafd1              # double 0.89697199999999999
	.quad	0x3feeab0ea18372e7              # double 0.95838100000000003
	.quad	0x3fefd7f737da61e1              # double 0.99511300000000002
	.quad	0x3fb1611ba3ca7504              # double 0.067888000000000004
	.quad	0x3fd37bfa4c61d862              # double 0.30444199999999999
	.quad	0x3fdbeb463497b741              # double 0.43623499999999998
	.quad	0x3fad3b0813cab820              # double 0.057091000000000003
	.quad	0x3fea0be0ded288ce              # double 0.81394999999999995
	.quad	0x3fd84ec204f2ae08              # double 0.37980700000000001
	.quad	0x3fee8364388ebcc7              # double 0.95353900000000003
	.quad	0x3f691148fd9fd36f              # double 0.0030599999999999998
	.quad	0x3fbb65cb35f3d7d4              # double 0.10702200000000001
	.quad	0x3fe98c73abc94706              # double 0.79839499999999997
	.quad	0x3feff95703f2d3c8              # double 0.99918700000000004
	.quad	0x3fbbf1c75818c5ca              # double 0.10915800000000001
	.quad	0x3fe495379fa97e13              # double 0.64321499999999998
	.quad	0x3fc6f9ca5bd944aa              # double 0.17949799999999999
	.quad	0x3fdf7c17a89331a1              # double 0.49194900000000003
	.quad	0x3fe2257214f0520d              # double 0.56707099999999999
	.quad	0x3fb3fc2224edf612              # double 0.078065999999999996
	.quad	0x3fbcf4623d0bfa09              # double 0.113104
	.quad	0x3fe3bd017dae8188              # double 0.61682199999999998
	.quad	0x3fc8176ddaceee0f              # double 0.18821499999999999
	.quad	0x3fec01882adc4c9d              # double 0.87518700000000005
	.quad	0x3fb1dd7ecbb7f9d7              # double 0.069786000000000001
	.quad	0x3fc520642396073e              # double 0.165051
	.quad	0x3fce476f2a5a469d              # double 0.23655499999999999
	.quad	0x3fc135c9e6687f45              # double 0.13445399999999999
	.quad	0x3fc48709741d084f              # double 0.16037100000000001
	.quad	0x3fda20578e5c4eb5              # double 0.40822399999999998
	.quad	0x3fad7a13c254a3c6              # double 0.057571999999999998
	.quad	0x3fd1f56eac860568              # double 0.28060499999999999
	.quad	0x3fccd2dcb1465e89              # double 0.225185
	.quad	0x3fce779a6b50b0f2              # double 0.23802499999999999
	.quad	0x3fe2fb00bcbe61d0              # double 0.59314
	.quad	0x3fe6708cc575c076              # double 0.70123899999999995
	.quad	0x3fd38112ba16e7a3              # double 0.304753
	.quad	0x3fe493964a59c066              # double 0.64301600000000003
	.quad	0x3fe20724b76f6d76              # double 0.56337199999999998
	.quad	0x3fdea7f3cf70153c              # double 0.47900100000000001
	.quad	0x3fdd535c9e6687f4              # double 0.45821299999999998
	.quad	0x3fe0e81882adc4ca              # double 0.52833200000000002
	.quad	0x3fecece789e774ef              # double 0.90391900000000003
	.quad	0x3fbebe596c82e01a              # double 0.120092
	.quad	0x3fabd816aceaaf36              # double 0.054383000000000001
	.quad	0x3fd456da0168b5cc              # double 0.317801
	.quad	0x3fe4c213a0c6b485              # double 0.64869100000000002
	.quad	0x3fd081c714fce747              # double 0.25792100000000001
	.quad	0x3fc6bacf7446f9ba              # double 0.17757600000000001
	.quad	0x3fcb325918a009f6              # double 0.212474
	.quad	0x3feea3f24d8fd5cb              # double 0.95751299999999995
	.quad	0x3fd659ddc1e7967d              # double 0.34923500000000002
	.quad	0x3feb1d4f9c1f85d7              # double 0.84732799999999997
	.quad	0x3fd4a79357603926              # double 0.32272800000000001
	.quad	0x3fd0fe75bc44bf4d              # double 0.26553100000000002
	.quad	0x3fe304ee7c49fd7a              # double 0.59435199999999999
	.quad	0x3febe44fa05143bf              # double 0.87161999999999995
	.quad	0x3fed91dde37585be              # double 0.92405599999999999
	.quad	0x3fb6b5e529bae46d              # double 0.088713
	.quad	0x3febc65a57646ae4              # double 0.86796300000000004
	.quad	0x3fd274d9c6b0531a              # double 0.28838200000000003
	.quad	0x3fe6cc985f06f694              # double 0.71247499999999997
	.quad	0x3fe4c9c90c4dec1c              # double 0.64963199999999999
	.quad	0x3fe4b2db1e9f2778              # double 0.64683299999999999
	.quad	0x3fe70fa58f7121ab              # double 0.72065999999999997
	.quad	0x3fd132ca57a786c2              # double 0.26872499999999999
	.quad	0x3fd43db7f1737543              # double 0.31626700000000002
	.quad	0x3fa3951c5c5718ec              # double 0.038247000000000003
	.quad	0x3fdecdc011d3671b              # double 0.48130800000000001
	.quad	0x3feb651d25aab474              # double 0.85609299999999999
	.quad	0x3fd987df5cf2495e              # double 0.39891799999999999
	.quad	0x3fe5ac55c96030c2              # double 0.67728699999999997
	.quad	0x3fd956f75d9a0f0a              # double 0.39593299999999998
	.quad	0x3fc2e2435696e58a              # double 0.14752999999999999
	.quad	0x3fd2c9ea9a3d2d88              # double 0.293574
	.quad	0x3fef603f705857b0              # double 0.98049900000000001
	.quad	0x3fe41fea8112ba17              # double 0.62889600000000001
	.quad	0x3fe722df9378ee28              # double 0.72300699999999996
	.quad	0x3fea9aaa3ad18d26              # double 0.83138000000000001
	.quad	0x3feb03a322af5771              # double 0.844194
	.quad	0x3fee2fee6fb4c3c2              # double 0.94335100000000005
	.quad	0x3febaf965b20b806              # double 0.86518399999999995
	.quad	0x3fe95c96030c23fb              # double 0.79255200000000003
	.quad	0x3f965ba6efc371da              # double 0.021833999999999999
	.quad	0x3fe0b78cc9a77e5f              # double 0.52240600000000004
	.quad	0x3fe698dac258d584              # double 0.70615899999999998
	.quad	0x3fea22424a276b7f              # double 0.81668200000000002
	.quad	0x3fedc6ef3d3a1d32              # double 0.93053399999999997
	.quad	0x3fd7b73d188f42ff              # double 0.37055900000000003
	.quad	0x3fe25477bbf93ff2              # double 0.57281099999999996
	.quad	0x3feb2e40852b4d8c              # double 0.84939600000000003
	.quad	0x3fefc75a31a4bdba              # double 0.993085
	.quad	0x3fcb11947cfa26a2              # double 0.211474
	.quad	0x3fe49c1d6cf850df              # double 0.64405699999999999
	.quad	0x3fee653eb399f5e0              # double 0.949859
	.quad	0x3fd41187e7c06e1a              # double 0.31357000000000002
	.quad	0x3fe23b81b64e0547              # double 0.56976400000000005
	.quad	0x3fecd9d3458cd20b              # double 0.90159
	.quad	0x3fe6f038e29f9ce9              # double 0.71682400000000002
	.quad	0x3fe2aa62aa19439e              # double 0.58329900000000001
	.quad	0x3fe6c4f7ec3547e0              # double 0.71154399999999995
	.quad	0x3fa9d8a548238540              # double 0.050480999999999998
	.quad	0x3fd6c0767d34df05              # double 0.35549700000000001
	.quad	0x3fad9a52263d816b              # double 0.057818000000000001
	.quad	0x3fdf615ebfa8f7db              # double 0.49031799999999998
	.quad	0x3fc825e13b18dac2              # double 0.18865599999999999
	.quad	0x3fb73acd5b6805a3              # double 0.090741000000000002
	.quad	0x3feedca8e2e2b8c7              # double 0.96443599999999995
	.quad	0x3fe0539b8887229f              # double 0.51020600000000005
	.quad	0x3fd434a01abd1aa8              # double 0.31571199999999999
	.quad	0x3fd966f9335d249e              # double 0.39690999999999999
	.quad	0x3fd00b524399b2c4              # double 0.250691
	.quad	0x3fe8533f42352eb6              # double 0.760162
	.quad	0x3feea9e2bcf91a33              # double 0.95823800000000003
	.quad	0x3fe904c6a3bddfca              # double 0.781833
	.quad	0x3fe4e74afd545415              # double 0.65323399999999998
	.quad	0x3fe22f4adbc664d4              # double 0.56827300000000003
	.quad	0x3fec6b26bf8769ec              # double 0.88807999999999998
	.quad	0x3fdd3f5f91600f34              # double 0.45699299999999998
	.quad	0x3feeb504c48adeec              # double 0.95959700000000003
	.quad	0x3fe7b8f7985271bd              # double 0.74132900000000002
	.quad	0x3fe31a77e5eaab04              # double 0.59698099999999998
	.quad	0x3fe638e8ea39c51e              # double 0.69444700000000004
	.quad	0x3fd6ef8055fbb518              # double 0.35836800000000002
	.quad	0x3fb977ea1c68ec53              # double 0.099486000000000005
	.quad	0x3fb5c90c4dec1c1d              # double 0.085098999999999994
	.quad	0x3fd97079e59f2baa              # double 0.39749000000000001
	.quad	0x3feffa919695d91b              # double 0.99933700000000003
	.quad	0x3fe9e06748e47560              # double 0.808643
	.quad	0x3fd15e2046c764ae              # double 0.27137
	.quad	0x3fe024f440af1cb9              # double 0.50451100000000004
	.quad	0x3fd1de225fa658c5              # double 0.27918300000000001
	.quad	0x3fd812e40852b4d9              # double 0.37615300000000002
	.quad	0x3fee8d8665e02ea9              # double 0.95477599999999996
	.quad	0x3faa116659d12cae              # double 0.050914000000000001
	.quad	0x3fe8b1183b60285f              # double 0.77161800000000003
	.quad	0x3fd51eafee6fb4c4              # double 0.32999800000000001
	.quad	0x3fc6aa53fc0096ff              # double 0.17707300000000001
	.quad	0x3fede2fbe33acd5b              # double 0.93395799999999995
	.quad	0x3fd2013a92a30553              # double 0.28132499999999999
	.quad	0x3fddeed8904f6dfc              # double 0.46770299999999998
	.quad	0x3fe7b387160956c1              # double 0.74066500000000002
	.quad	0x3fe9fd4bf0995aaf              # double 0.81216999999999995
	.quad	0x3fa6bc1eff9f87f0              # double 0.044403999999999999
	.quad	0x3fb96191148fd9fd              # double 0.099144999999999997
	.quad	0x3fb7125dd095af29              # double 0.090123999999999996
	.quad	0x3fe3e158750c1b97              # double 0.62125799999999998
	.quad	0x3fed0edc3bd59924              # double 0.90806399999999998
	.quad	0x3f6f7b5aea3161a2              # double 0.0038430000000000001
	.quad	0x3f9e4fb97bb73083              # double 0.029600999999999999
	.quad	0x3fe31f080303c07f              # double 0.59753800000000001
	.quad	0x3fe5f6a93f290abb              # double 0.68635999999999997
	.quad	0x3fd97a3db3bfb58d              # double 0.398086
	.quad	0x3f9fe08aefb2aae3              # double 0.031130000000000001
	.quad	0x3fb32474538ef34d              # double 0.074774999999999994
	.quad	0x3fcf7574f722e1ac              # double 0.24577199999999999
	.quad	0x3fcfd7a13c254a3c              # double 0.24876799999999999
	.quad	0x3fef9bcdbbe0157f              # double 0.987769
	.quad	0x3fed597d49d7ba67              # double 0.91717400000000004
	.quad	0x3fe26d1e108c3f3e              # double 0.57582
	.quad	0x3fe270b49e01de27              # double 0.57625800000000005
	.quad	0x3fd7f3b645a1cac1              # double 0.37425000000000003
	.quad	0x3fe610cf5b1c8649              # double 0.68955200000000005
	.quad	0x3fe469e5e2478855              # double 0.63792700000000002
	.quad	0x3fc02291fb3fa6df              # double 0.126055
	.quad	0x3fea04ff43419e30              # double 0.81311
	.quad	0x3fc7d26b723ee1bd              # double 0.186109
	.quad	0x3fd9d04a2fcefaa4              # double 0.40333799999999997
	.quad	0x3feab35d249e44fa              # double 0.834395
	.quad	0x3fd9f8c21e1d2179              # double 0.405808
	.quad	0x3fe1c916ca46e08f              # double 0.55579699999999999
	.quad	0x3fc63b2dd377e1b9              # double 0.173681
	.quad	0x3fd05710880d801b              # double 0.25531399999999999
	.quad	0x3fec525460aa64c3              # double 0.88505
	.quad	0x3fdbf633ce63a5c2              # double 0.43690200000000001
	.quad	0x3fe15a2f8bdec5f4              # double 0.54225900000000005
	.quad	0x3f92e514c22ee419              # double 0.018452
	.quad	0x3fdb080b673c4f3c              # double 0.42236600000000002
	.quad	0x3fe234549b62c775              # double 0.56888799999999995
	.quad	0x3fb132b55ef1fddf              # double 0.067180000000000004
	.quad	0x3fe63b83cf2cf95d              # double 0.69476499999999997
	.quad	0x3fda06bbdbe3c105              # double 0.40666099999999999
	.quad	0x3fe009f1f14983d8              # double 0.50121400000000005
	.quad	0x3fde3bf727136a40              # double 0.47241
	.quad	0x3fde3a797891e215              # double 0.47231899999999999
	.quad	0x3feab1704ff4341a              # double 0.83416000000000001
	.quad	0x3fd08e1d6494d50f              # double 0.25867400000000002
	.quad	0x3fd4f43c7d5ed070              # double 0.327407
	.quad	0x3fdd1ad2135daad6              # double 0.454762
	.quad	0x3feb2d59d55e6bc6              # double 0.84928599999999999
	.quad	0x3fe71057d1782d38              # double 0.72074499999999997
	.quad	0x3fceee5abc0e38a8              # double 0.241649
	.quad	0x3fea811f4f50a02c              # double 0.82826200000000005
	.quad	0x3fce6362a5e785b6              # double 0.23740800000000001
	.quad	0x3fd0bfceb78897ea              # double 0.26170700000000002
	.quad	0x3fdb7a311e85fd05              # double 0.42933300000000002
	.quad	0x3fe40b84988094e6              # double 0.62640600000000002
	.quad	0x3fd117bd8be7296f              # double 0.26707399999999998
	.quad	0x3feabedd8b60f1b2              # double 0.83579899999999996
	.quad	0x3fdb9a4df47f993d              # double 0.43129299999999998
	.quad	0x3fe43d9ec7000432              # double 0.63252200000000003
	.quad	0x3feda9f59ccfaeff              # double 0.92699699999999996
	.quad	0x3fe47dcbddb9841b              # double 0.64035600000000004
	.quad	0x3fe8b1bbcf4e874d              # double 0.77169600000000005
	.quad	0x3fde22bbecaab8a6              # double 0.47087000000000001
	.quad	0x3fc028ed5f138bce              # double 0.126249
	.quad	0x3fc384cad57bc7f7              # double 0.15248999999999999
	.quad	0x3fe7ed0d49949e88              # double 0.74768699999999999
	.quad	0x3fb91361dc93ea2d              # double 0.097951999999999997
	.quad	0x3fbefb8f57f737da              # double 0.12102599999999999
	.quad	0x3fbc2df0d413122b              # double 0.11007599999999999
	.quad	0x3feafbf83382e44b              # double 0.84325799999999995
	.quad	0x3feb7fe2a3cea6c2              # double 0.85936100000000004
	.quad	0x3fda5a0be5109071              # double 0.411746
	.quad	0x3fe6a6351deefe50              # double 0.707789
	.quad	0x3fe74f2cf95d4e90              # double 0.72841500000000003
	.quad	0x3fe754b8bef8ceb3              # double 0.72909199999999996
	.quad	0x3fe8056a37ac3eb8              # double 0.75066100000000002
	.quad	0x3fe4063e07a28bb1              # double 0.62576200000000004
	.quad	0x3fed0ab0c88a47ed              # double 0.907555
	.quad	0x3fefe0f7fcfc3f81              # double 0.99621199999999998
	.quad	0x3fcc98aa8650e779              # double 0.223409
	.quad	0x3fdc85b18548a9bd              # double 0.44566
	.quad	0x3fb87d3d4280ae10              # double 0.095660999999999996
	.quad	0x3fe64da9003eea21              # double 0.69698000000000004
	.quad	0x3fecc6da4484944f              # double 0.89927400000000002
	.quad	0x3fe85b8130164841              # double 0.76117000000000001
	.quad	0x3fdc7c06e19b90eb              # double 0.44507000000000002
	.quad	0x3fe772de43ed959a              # double 0.73277199999999998
	.quad	0x3fb42e770bd017db              # double 0.078834000000000001
	.quad	0x3f95182a9930be0e              # double 0.0206
	.quad	0x3fc3dda8bd230b9e              # double 0.15520200000000001
	.quad	0x3f7e4b44a1f08030              # double 0.0073959999999999998
	.quad	0x3fd6fb1183b60286              # double 0.359074
	.quad	0x3fddf961804d9839              # double 0.46834599999999998
	.quad	0x3fcf6ea4228997c4              # double 0.245564
	.quad	0x3fe408f648c7192f              # double 0.62609400000000004
	.quad	0x3fe41bb2788db057              # double 0.62838099999999997
	.quad	0x3fd0c3b927d45a60              # double 0.26194600000000001
	.quad	0x3fcf6be37de939eb              # double 0.24548
	.quad	0x3fc1e83e425aee63              # double 0.1399
	.quad	0x3feb348b220791c5              # double 0.85016400000000003
	.quad	0x3fda210385c67dfe              # double 0.40826499999999999
	.quad	0x3fdacdb7ae5796c0              # double 0.41880600000000001
	.quad	0x3fd08e368f084620              # double 0.25868000000000002
	.quad	0x3faef8487b99d452              # double 0.060488
	.quad	0x3fe83db1a6d698fe              # double 0.75753099999999995
	.quad	0x3fc370c564f97edc              # double 0.15187899999999999
	.quad	0x3fc4b5807fed2029              # double 0.16178899999999999
	.quad	0x3fbbc7607c4199fe              # double 0.108511
	.quad	0x3feec449dbec2481              # double 0.96146100000000001
	.quad	0x3fe9c89b0ee49f51              # double 0.80573799999999995
	.quad	0x3fe69f0a1be2b496              # double 0.70691400000000004
	.quad	0x3fe023d70a3d70a4              # double 0.50437500000000002
	.quad	0x3fda39799e518f3f              # double 0.40975800000000001
	.quad	0x3fee33e9a6f826ee              # double 0.94383700000000004
	.quad	0x3f91615ebfa8f7db              # double 0.016972999999999999
	.quad	0x3fe38b60f1b25f63              # double 0.61076399999999997
	.quad	0x3fed36ed6777079e              # double 0.91295499999999996
	.quad	0x3fd5558ea7ce0fc3              # double 0.333347
	.quad	0x3fc6578e5c4eb570              # double 0.17454700000000001
	.quad	0x3fe2a4d8fd5cb791              # double 0.582623
	.quad	0x3feb2df2ecf20642              # double 0.84935899999999998
	.quad	0x3fef79df548ecd8e              # double 0.98362700000000003
	.quad	0x3fe91310129cbab6              # double 0.78357699999999997
	.quad	0x3fb4c3c18b502abb              # double 0.081112000000000004
	.quad	0x3fe509f40a2877ee              # double 0.65746499999999997
	.quad	0x3fe9cb3a2595bbbf              # double 0.80605800000000005
	.quad	0x3fd4fe586013660e              # double 0.32802399999999998
	.quad	0x3fef4ff21b3aeee9              # double 0.97850899999999996
	.quad	0x3fe92b53d640e9d5              # double 0.78653899999999999
	.quad	0x3fef14141e9af5ba              # double 0.97120099999999998
	.quad	0x3fb13b7d84901d19              # double 0.067313999999999999
	.quad	0x3fcf0196d8f4f93c              # double 0.24223600000000001
	.quad	0x3fe1e8427418d691              # double 0.55960200000000004
	.quad	0x3fec97225b749add              # double 0.89344900000000005
	.quad	0x3fe6b29802c0a4a0              # double 0.70930099999999996
	.quad	0x3fc8a70d1fa33376              # double 0.19259799999999999
	.quad	0x3fdb2ad81adea897              # double 0.42448999999999998
	.quad	0x3fec19b90ea9e6ef              # double 0.87814000000000003
	.quad	0x3febd5475a31a4be              # double 0.86978500000000003
	.quad	0x3fe0b061c79b34a4              # double 0.52153099999999997
	.quad	0x3fef07b139c94f6a              # double 0.96968900000000002
	.quad	0x3fbcbf6e3f78bbd4              # double 0.11229600000000001
	.quad	0x3fdb99c7bcc2938e              # double 0.43126100000000001
	.quad	0x3fbabb55ac03ff69              # double 0.104421
	.quad	0x3fd742bf9830e3ce              # double 0.36344900000000002
	.quad	0x3fdee1f7d73c9258              # double 0.48254200000000003
	.quad	0x3fddec2ce4649907              # double 0.46754000000000001
	.quad	0x3fef74dbdf8f4730              # double 0.98301499999999997
	.quad	0x3fca1f31f46ed246              # double 0.20407700000000001
	.quad	0x3fe5af7b17ce52df              # double 0.67767100000000002
	.quad	0x3fd1b3397dd00f77              # double 0.27656399999999998
	.quad	0x3fdd1f0c34c1a8ac              # double 0.45501999999999998
	.quad	0x3fc9389b52007dd4              # double 0.19703999999999999
	.quad	0x3fc2e1ac57e23f25              # double 0.147512
	.quad	0x3feb78d716d2aa5c              # double 0.85850099999999995
	.quad	0x3fd88a82a5614df9              # double 0.38345400000000002
	.quad	0x3fb27c6b8b69552e              # double 0.072210999999999997
	.quad	0x3fd3b8c75c4a83b2              # double 0.30815300000000001
	.quad	0x3fe29d16fc9bc771              # double 0.58167599999999997
	.quad	0x3fd64b1ab0856e69              # double 0.34833399999999998
	.quad	0x3fe0f4cd31769a91              # double 0.52988299999999999
	.quad	0x3fccd8f4f93bc0a0              # double 0.22537099999999999
	.quad	0x3fd33d9231c64ba9              # double 0.30063299999999998
	.quad	0x3fb4cae642bf9831              # double 0.081221000000000002
	.quad	0x3fd68a979e16d6dc              # double 0.35220899999999999
	.quad	0x3fef291fb3fa6df0              # double 0.97377000000000002
	.quad	0x3fc62f72b4528284              # double 0.173323
	.quad	0x3fef7d438d1d8a55              # double 0.98404100000000005
	.quad	0x3fd683c297bfa4c6              # double 0.35179199999999999
	.quad	0x3fd8b3461309c800              # double 0.38594200000000001
	.quad	0x3fd43c792d1287c2              # double 0.316191
	.quad	0x3fe5c2a454de7ea6              # double 0.68001
	.quad	0x3fb31715c63ae254              # double 0.074570999999999998
	.quad	0x3fea9bbf0dc768e0              # double 0.83151200000000002
	.quad	0x3fdc8ed5f138bce0              # double 0.446218
	.quad	0x3fe49774256bca53              # double 0.64348799999999995
	.quad	0x3fe76b0318b9346a              # double 0.73181300000000005
	.quad	0x3fe448fd9fd36f7e              # double 0.63390999999999997
	.quad	0x3fa0ba1f4b1ee243              # double 0.032669999999999998
	.quad	0x3f92702a3486f04a              # double 0.018006000000000001
	.quad	0x3fec1973d9ec7000              # double 0.87810699999999997
	.quad	0x3fd7f5ec80c73abd              # double 0.37438500000000002
	.quad	0x3fc0577d955714ba              # double 0.12767000000000001
	.quad	0x3fe144567125dd09              # double 0.53959199999999996
	.quad	0x3feafd5a9eb2074f              # double 0.84342700000000004
	.quad	0x3fca3621fafc8b00              # double 0.20477699999999999
	.quad	0x3fe70259e1f3a57f              # double 0.71903700000000004
	.quad	0x3fb55171e29b6b2b              # double 0.083274000000000001
	.quad	0x3fdbcfe154434e33              # double 0.43456299999999998
	.quad	0x3fe4a8522ea0fd3b              # double 0.64554699999999998
	.quad	0x3fe0d3bafd976ff4              # double 0.52584600000000004
	.quad	0x3fa54a5df2239e6b              # double 0.041583000000000002
	.quad	0x3fec844ae85b9e8c              # double 0.89114899999999996
	.quad	0x3fe26dd26b723ee2              # double 0.57590600000000003
	.quad	0x3fe528ef77f27fe5              # double 0.66124700000000003
	.quad	0x3f3e8a2ec28b2a6b              # double 4.66E-4
	.quad	0x3fde0010c6f7a0b6              # double 0.468754
	.quad	0x3fe7cb7f5a5332ad              # double 0.743591
	.quad	0x3fd66273929ed395              # double 0.34975899999999999
	.quad	0x3fe9b97bb7308356              # double 0.80389200000000005
	.quad	0x3fdb5260f5e41d4b              # double 0.42690299999999998
	.quad	0x3feeb59ddc1e7968              # double 0.95967000000000002
	.quad	0x3fd37b0f6ad70e6f              # double 0.30438599999999999
	.quad	0x3fb3df2a9d627bf6              # double 0.077623999999999998
	.quad	0x3feea4228997c3d7              # double 0.95753600000000005
	.quad	0x3fb0467381d7dbf5              # double 0.063575000000000007
	.quad	0x3fe8643675ddd2af              # double 0.76223300000000005
	.quad	0x3fd6579af1886df8              # double 0.34909699999999999
	.quad	0x3fbc6455eaee2004              # double 0.110906
	.quad	0x3fb963ed0f627393              # double 0.099181000000000005
	.quad	0x3f645f9df548ecd9              # double 0.0024870000000000001
	.quad	0x3fc011d3671ac14c              # double 0.12554399999999999
	.quad	0x3fdd3e9a6f826edb              # double 0.45694600000000002
	.quad	0x3fdf94ee392e1ef7              # double 0.49346499999999999
	.quad	0x3fe53e9856a37ac4              # double 0.66389100000000001
	.quad	0x3fed0d130df9bdc7              # double 0.90784600000000004
	.quad	0x3fe5ae536501e258              # double 0.67752999999999997
	.quad	0x3fc00f3cb3e5753a              # double 0.12546499999999999
	.quad	0x3fca2456f75d9a0f              # double 0.204234
	.quad	0x3fea56cd6c2efd44              # double 0.82309600000000004
	.quad	0x3fe5baa582dbe7f3              # double 0.67903400000000003
	.quad	0x3feb439799e518f4              # double 0.852001
	.quad	0x3fcf61565c2d2780              # double 0.24515799999999999
	.quad	0x3fe3adcd2d44dca9              # double 0.61496600000000001
	.quad	0x3fe0d50870110a13              # double 0.52600499999999994
	.quad	0x3febe8427418d691              # double 0.87210200000000004
	.quad	0x3fcdcad9ad85dfa8              # double 0.23275299999999999
	.quad	0x3fe7a5870da5daf0              # double 0.73895599999999995
	.quad	0x3fe06c84f8f8a4c2              # double 0.51324700000000001
	.quad	0x3feee8b9fdbd2fa1              # double 0.96590900000000001
	.quad	0x3fb5f3300de4c511              # double 0.085741999999999999
	.quad	0x3fe137d84901d191              # double 0.53806699999999996
	.quad	0x3fda71327243137b              # double 0.413159
	.quad	0x3fefc2edbb59ddc2              # double 0.99254500000000001
	.quad	0x3fe3435696e58a33              # double 0.60197000000000001
	.quad	0x3fdea6eb91b3f20a              # double 0.47893799999999997
	.quad	0x3fda4128bf3bea92              # double 0.41022700000000001
	.quad	0x3fd33d74d594f26b              # double 0.300626
	.quad	0x3fe72a5e785b5b70              # double 0.72392199999999995
	.quad	0x3fec24a48f96e158              # double 0.87947299999999995
	.quad	0x3fa6698bb4d48883              # double 0.043774
	.quad	0x3fef7911cf355cd9              # double 0.98352899999999998
	.quad	0x3fe20d801b435265              # double 0.56414799999999998
	.quad	0x3febf5ba2be0589b              # double 0.87374600000000002
	.quad	0x3fdd5eaab042528b              # double 0.45890300000000001
	.quad	0x3fe79d2178f68be3              # double 0.737931
	.quad	0x3fd152e72da122fb              # double 0.27068500000000001
	.quad	0x3fe361cbccf28c7a              # double 0.605688
	.quad	0x3fe81873ffac1d2a              # double 0.75298500000000002
	.quad	0x3feee940357a3550              # double 0.96597299999999997
	.quad	0x3fe871d3ed527e52              # double 0.76389499999999999
	.quad	0x3fe9f587d6f97679              # double 0.811222
	.quad	0x3fca35d67ba237ce              # double 0.20476800000000001
	.quad	0x3fc27b99d451fc4c              # double 0.144397
	.quad	0x3fc76312f4cf4a56              # double 0.18271100000000001
	.quad	0x3f81c219eb6390c9              # double 0.0086709999999999998
	.quad	0x3fcf7ccc03793144              # double 0.24599599999999999
	.quad	0x3fc3b6f5caf2d7f9              # double 0.15402099999999999
	.quad	0x3fdc97c80841ede1              # double 0.44676399999999999
	.quad	0x3feccb1ee2435697              # double 0.89979500000000001
	.quad	0x3fe5171e29b6b2af              # double 0.65907199999999999
	.quad	0x3fcc1d755bccaf71              # double 0.21964900000000001
	.quad	0x3fc59d0a67620ee9              # double 0.16885500000000001
	.quad	0x3fec46950fc71d60              # double 0.88361599999999995
	.quad	0x3fe31b4bb5e0f7fd              # double 0.597082
	.quad	0x3fda22c450268901              # double 0.40837200000000001
	.quad	0x3fd2f34d6a161e4f              # double 0.29609999999999997
	.quad	0x3fb230984e3ffef4              # double 0.071054000000000006
	.quad	0x3fd09dc725c3dee8              # double 0.25963000000000003
	.quad	0x3fef7dc37a3db3c0              # double 0.98410200000000003
	.quad	0x3fe8e683c297bfa5              # double 0.77813900000000003
	.quad	0x3fd4441355475a32              # double 0.31665500000000002
	.quad	0x3fea5f6db940fece              # double 0.82414900000000002
	.quad	0x3feba48f96e15875              # double 0.86383799999999999
	.quad	0x3fe66490a350d280              # double 0.69977599999999995
	.quad	0x3feae8c26138fffc              # double 0.84091300000000002
	.quad	0x3fb6f4be835dedf2              # double 0.089672000000000001
	.quad	0x3fdcbe8bc169c23b              # double 0.44912999999999997
	.quad	0x3fb4deb0fadf2ecf              # double 0.081522999999999998
	.quad	0x3fcd32ce89656ef0              # double 0.22811300000000001
	.quad	0x3fefc2699c7bcc29              # double 0.99248199999999997
	.quad	0x3fe148626f60e0eb              # double 0.54008599999999996
	.quad	0x3fed71fddebd9019              # double 0.92016500000000001
	.quad	0x3fe85b0bbf50e347              # double 0.76111399999999996
	.quad	0x3fd8a57eaa2a0a96              # double 0.38510100000000003
	.quad	0x3febf4d9c6b0531a              # double 0.87363900000000005
	.quad	0x3feebf4a98aa8651              # double 0.96085100000000001
	.quad	0x3fd4564b662fdfc2              # double 0.31776700000000002
	.quad	0x3fd0e4430b178b37              # double 0.263932
	.quad	0x3fc2e30446b69db6              # double 0.14755299999999999
	.quad	0x3fe162b6ae7d566d              # double 0.54330000000000001
	.quad	0x3fe950e12e83a10a              # double 0.79112300000000002
	.quad	0x3fbbc0b135979182              # double 0.10840900000000001
	.quad	0x3fdc71fbc5de9c02              # double 0.44445699999999999
	.quad	0x3fcd38e6d15ad107              # double 0.228299
	.quad	0x3fe8a0dfdef8487c              # double 0.76963800000000004
	.quad	0x3fd939abf3387161              # double 0.39414500000000002
	.quad	0x3fef86cca2db61bb              # double 0.98520499999999999
	.quad	0x3fe8e2ae4b018612              # double 0.777671
	.quad	0x3fdd0b5aa715831f              # double 0.453818
	.quad	0x3fbf5c0767d34df0              # double 0.122498
	.quad	0x3fd122d0e5604189              # double 0.26774999999999999
	.quad	0x3fe1cf7446f9b995              # double 0.55657400000000001
	.quad	0x3fe3d1c9f72f76e6              # double 0.61935899999999999
	.quad	0x3fde46173b85e80c              # double 0.473028
	.quad	0x3fdbf944241c3efb              # double 0.43708900000000001
	.quad	0x3fceee41919ac797              # double 0.241646
	.quad	0x3fdeb78897e99631              # double 0.47995199999999999
	.quad	0x3fd16cb5350092cd              # double 0.27226
	.quad	0x3fe99a52263d816b              # double 0.80008800000000002
	.quad	0x3feab691212513b6              # double 0.83478600000000003
	.quad	0x3fe6e76ea4228998              # double 0.71575100000000003
	.quad	0x3fbd4ac29bf162ae              # double 0.114422
	.quad	0x3fe514f0520d130e              # double 0.658806
	.quad	0x3fe096e371540032              # double 0.51841899999999996
	.quad	0x3fc8dfaca3619978              # double 0.194326
	.quad	0x3fe5e596c82e019b              # double 0.684276
	.quad	0x3fc0f3eccc469510              # double 0.13244400000000001
	.quad	0x3fdf0c5a8155d5f5              # double 0.48512899999999998
	.quad	0x3fe42839042d8c2a              # double 0.62990999999999997
	.quad	0x3fe7e43aa79bbadc              # double 0.74661
	.quad	0x3fe11b97353b4b30              # double 0.53461800000000004
	.quad	0x3fd5c8c0ce91c8eb              # double 0.34037800000000001
	.quad	0x3fd046cb966be7b0              # double 0.25432100000000002
	.quad	0x3fead35653c9abb0              # double 0.83829799999999999
	.quad	0x3fcd281fd9ba1b19              # double 0.22778699999999999
	.quad	0x3fcc0fa15db3397e              # double 0.21922700000000001
	.quad	0x3fe98b1572580c31              # double 0.79822800000000005
	.quad	0x3fdc6490a350d280              # double 0.44363799999999998
	.quad	0x3fbcb1465e892253              # double 0.11208
	.quad	0x3fdd0f2389720429              # double 0.45404899999999998
	.quad	0x3fe27fae3608d089              # double 0.57808599999999999
	.quad	0x3fe3c4651f3e89a9              # double 0.61772400000000005
	.quad	0x3fdbf666234a87e4              # double 0.43691400000000002
	.quad	0x3fdde54f7a919696              # double 0.46712100000000001
	.quad	0x3fdb13be22e5de16              # double 0.42308000000000001
	.quad	0x3f990ea9e6eeb702              # double 0.024469999999999999
	.quad	0x3febb866e43aa79c              # double 0.86626000000000002
	.quad	0x3fe7c5004fb1183b              # double 0.74279799999999996
	.quad	0x3fe00be2f7b17ce5              # double 0.50145099999999998
	.quad	0x3fde676ea4228998              # double 0.47506300000000001
	.quad	0x3facef88b9778573              # double 0.056515000000000003
	.quad	0x3fd58e086bdf4c2b              # double 0.33679399999999998
	.quad	0x3fd2681ecd4aa10e              # double 0.287605
	.quad	0x3fcee73e681a9b8d              # double 0.24143200000000001
	.quad	0x3fdf2e59af9ebe9d              # double 0.48720400000000003
	.quad	0x3fe89aac53b0813d              # double 0.76888100000000004
	.quad	0x3fc38d60a6330510              # double 0.152752
	.quad	0x3fe19ff4fd6d7e89              # double 0.55077600000000004
	.quad	0x3fc1dca4b124d09a              # double 0.139546
	.quad	0x3fe15cbddb9841ab              # double 0.54257100000000003
	.quad	0x3fdeadb8348f53c5              # double 0.47935299999999997
	.quad	0x3fe578d2e514c22f              # double 0.67099900000000001
	.quad	0x3fecc883fd502257              # double 0.89947699999999997
	.quad	0x3fe69c432ca57a78              # double 0.70657499999999995
	.quad	0x3fa595feda661284              # double 0.042160000000000003
	.quad	0x3fdd89b951c5c572              # double 0.46153100000000002
	.quad	0x3fe601083dbc2331              # double 0.68762599999999996
	.quad	0x3fe33955f78359bc              # double 0.60074899999999998
	.quad	0x3fe7146c332f0175              # double 0.72124299999999997
	.quad	0x3fe4dfaca3619978              # double 0.65230399999999999
	.quad	0x3fd883a109d0635a              # double 0.38303399999999999
	.quad	0x3fe616c1e364bec6              # double 0.69027799999999995
	.quad	0x3fe7d5dc4007570c              # double 0.74485599999999996
	.quad	0x3fc2c1ca3a4b5569              # double 0.146539
	.quad	0x3fe33b256ffc115e              # double 0.60097
	.quad	0x3fe982f72b452828              # double 0.79723699999999997
	.quad	0x3fd94d3bf2f55582              # double 0.395339
	.quad	0x3feb69ff0cbaf966              # double 0.85668900000000003
	.quad	0x3fe595703f2d3c79              # double 0.67449199999999998
	.quad	0x3fbb3cd573647bab              # double 0.10639700000000001
	.quad	0x3fca8af81626b2f2              # double 0.20736599999999999
	.quad	0x3fc0b649d388a8b1              # double 0.13056300000000001
	.quad	0x3fe315a07b352a84              # double 0.59638999999999998
	.quad	0x3fc150b0f27bb2ff              # double 0.13527500000000001
	.quad	0x3fe198e757928e0d              # double 0.54991500000000004
	.quad	0x3fb34dcebfec13ba              # double 0.075406000000000001
	.quad	0x3fba4febd09e12a5              # double 0.102782
	.quad	0x3fcb566cf41f212d              # double 0.21357499999999999
	.quad	0x3fd73cfb3311a544              # double 0.363097
	.quad	0x3fefd7e45803cd14              # double 0.99510399999999998
	.quad	0x3feb93250b52439a              # double 0.86171200000000003
	.quad	0x3fe8a5fc7e6b3fea              # double 0.770262
	.quad	0x3feca7243137b070              # double 0.89540299999999995
	.quad	0x3fe6d3ae685db76b              # double 0.71333999999999997
	.quad	0x3fa8a73f748a1598              # double 0.048150999999999999
	.quad	0x3fc33a9b06812381              # double 0.150226
	.quad	0x3fd96d97b30f8c65              # double 0.397314
	.quad	0x3fcaedcc20d5629e              # double 0.21038200000000001
	.quad	0x3fe2b13165d39970              # double 0.58413000000000004
	.quad	0x3fbbbd48cb4aec8d              # double 0.10835699999999999
	.quad	0x3fe147abfb9bed31              # double 0.53999900000000001
	.quad	0x3fe272f33ca31e7e              # double 0.57653200000000004
	.quad	0x3fb49a77e5eaab04              # double 0.080481999999999998
	.quad	0x3fef40e5a35d67ba              # double 0.97667199999999998
	.quad	0x3fb2e7d566cf41f2              # double 0.073849999999999999
	.quad	0x3fcd48c2e770bd01              # double 0.22878299999999999
	.quad	0x3fe3c169c23b7953              # double 0.61736000000000002
	.quad	0x3fec2558ea7ce0fc              # double 0.87955899999999997
	.quad	0x3fd8e1bd1ed9dfdb              # double 0.38877800000000001
	.quad	0x3fe95a78f25a2510              # double 0.79229400000000005
	.quad	0x3fd7ccdd93c46d83              # double 0.37187900000000002
	.quad	0x3fbb2e9ccb7d4174              # double 0.10618
	.quad	0x3fd041cc532a4980              # double 0.25401600000000002
	.quad	0x3fcd443d46b26bf8              # double 0.22864499999999999
	.quad	0x3fefa1511dffc548              # double 0.98844200000000004
	.quad	0x3fe5da038194c016              # double 0.682863
	.quad	0x3fe3f9e7b80a9de9              # double 0.62425600000000003
	.quad	0x3fc160e0eb67c287              # double 0.135769
	.quad	0x3fe25caf2d7f950c              # double 0.57381400000000005
	.quad	0x3fbac6045baf533f              # double 0.104584
	.quad	0x3fe35cf4623d0bfa              # double 0.605097
	.quad	0x3fe05ea24cc68230              # double 0.51155200000000001
	.quad	0x3fea4b51372a38b9              # double 0.82169400000000004
	.quad	0x3fd5ee4e26d4801f              # double 0.34266999999999997
	.quad	0x3fe475b5fa22706d              # double 0.63936899999999997
	.quad	0x3fc3e69ad42c3c9f              # double 0.155475
	.quad	0x3fb08b545c78a6db              # double 0.064626000000000003
	.quad	0x3fc42f5989df1173              # double 0.157695
	.quad	0x3fedc766c6de7642              # double 0.93059099999999995
	.quad	0x3fee944028e4fb98              # double 0.95559700000000002
	.quad	0x3fe1ecaab8a5ce5b              # double 0.56013999999999997
	.quad	0x3fd7f6c2699c7bcc              # double 0.37443599999999999
	.quad	0x3faff3061c79b34a              # double 0.062400999999999998
	.quad	0x3fdf7dae81882adc              # double 0.49204599999999998
	.quad	0x3fb394d940789614              # double 0.076490000000000002
	.quad	0x3fea83621fafc8b0              # double 0.828538
	.quad	0x3fd0966be7afa722              # double 0.25918099999999999
	.quad	0x3fe3a8a3f8982cb2              # double 0.61433599999999999
	.quad	0x3fd30f776c4827b7              # double 0.297819
	.quad	0x3fd08f8a4c1ebc84              # double 0.25876100000000002
	.quad	0x3f59ef954eb13dfb              # double 0.001583
	.quad	0x3feb7a333764f11b              # double 0.85866699999999996
	.quad	0x3fc7d74d594f26af              # double 0.18625800000000001
	.quad	0x3fb8b11409a24031              # double 0.096451999999999996
	.quad	0x3fd9dc69f8c21e1d              # double 0.40407799999999999
	.quad	0x3fc629307af20ea6              # double 0.17313200000000001
	.quad	0x3fe0b75a74c09c3d              # double 0.52238200000000001
	.quad	0x3fcc0a06e9ff0cbb              # double 0.219056
	.quad	0x3fd758c4bd33d295              # double 0.36479299999999998
	.quad	0x3fa4af922962cfd9              # double 0.040402
	.quad	0x3fd3d612c6ac215c              # double 0.30994100000000002
	.quad	0x3f9efaa4766c6de7              # double 0.030252999999999999
	.quad	0x3fc14202d9cf13cf              # double 0.134827
	.quad	0x3fe654a1ad6451b9              # double 0.69783099999999998
	.quad	0x3fec572367e414e8              # double 0.88563700000000001
	.quad	0x3fe33f37b8d3f184              # double 0.60146699999999997
	.quad	0x3fcc37d63022dd7b              # double 0.22045400000000001
	.quad	0x3fe684295a6c5d20              # double 0.70363299999999995
	.quad	0x3fe90b73d188f430              # double 0.78264800000000001
	.quad	0x3fe8347e8ccdd93c              # double 0.75640799999999996
	.quad	0x3fd38d1d8a548238              # double 0.30548799999999998
	.quad	0x3fef8d5842b734b5              # double 0.98600399999999999
	.quad	0x3fdbfefbf401c4fc              # double 0.43743799999999999
	.quad	0x3fba2163fdd65a14              # double 0.102072
	.quad	0x3fea8f6273929ed4              # double 0.83000300000000004
	.quad	0x3fecf18a86d71f36              # double 0.90448499999999998
	.quad	0x3fb6a9717df19d67              # double 0.088523000000000004
	.quad	0x3fd8f63800218def              # double 0.39002799999999999
	.quad	0x3fc6ac5c13fd0d06              # double 0.17713499999999999
	.quad	0x3fe95154866a11ed              # double 0.79117800000000005
	.quad	0x3fc0c6ac215b9a5b              # double 0.13106300000000001
	.quad	0x3fd820a30db6a1e8              # double 0.37699199999999999
	.quad	0x3fe9b1b79d909f1f              # double 0.80294399999999999
	.quad	0x3fe8e1437c5692b4              # double 0.77749800000000002
	.quad	0x3fce49235f809918              # double 0.23660700000000001
	.quad	0x3fe09a7c17a89332              # double 0.51885800000000004
	.quad	0x3fd6d21ff2e48e8a              # double 0.35657499999999998
	.quad	0x3fed928e0c9d9d34              # double 0.92413999999999996
	.quad	0x3fe2f7dfa00e27e1              # double 0.59275800000000001
	.quad	0x3fc83382e44b6e93              # double 0.18907199999999999
	.quad	0x3fdbaabcd78c4370              # double 0.43229600000000001
	.quad	0x3fda77c88e79aae7              # double 0.41356100000000001
	.quad	0x3fc5040bfe3b03e2              # double 0.164186
	.quad	0x3fe30ebedfa43fe6              # double 0.59555000000000002
	.quad	0x3fca6b3fe9fadafd              # double 0.206398
	.quad	0x3fe5f6f4be835dee              # double 0.68639600000000001
	.quad	0x3fc514ec204f2ae0              # double 0.16470099999999999
	.quad	0x3fea2ac753e707e1              # double 0.81772199999999995
	.quad	0x3fcf1b93037d6302              # double 0.243029
	.quad	0x3fc9235f80991794              # double 0.19639200000000001
	.quad	0x3fea445ed4a1ad64              # double 0.82084599999999996
	.quad	0x3fe271a5ca29845e              # double 0.57637300000000002
	.quad	0x3faecbd987c6327f              # double 0.060149000000000001
	.quad	0x3fcf6cbd987c6328              # double 0.245506
	.quad	0x3fe9293f290abb45              # double 0.78628500000000001
	.quad	0x3fec1d4b6a619daa              # double 0.87857600000000002
	.quad	0x3fe5dff3f0fe047d              # double 0.68358799999999997
	.quad	0x3fee6d22424a276b              # double 0.95082199999999994
	.quad	0x3fd1bd72bcb5fe54              # double 0.27718799999999999
	.quad	0x3f919c5a3e39f773              # double 0.017198000000000001
	.quad	0x3fd99a2834d26fa4              # double 0.400034
	.quad	0x3fd517b0f6ad70e7              # double 0.329571
	.quad	0x3fed8c64fdb09a67              # double 0.92338799999999999
	.quad	0x3f8d25247cb70ac4              # double 0.014231000000000001
	.quad	0x3f97d8cf398e9707              # double 0.023288
	.quad	0x3fdafc0d2c386d2f              # double 0.42163400000000001
	.quad	0x3fe88c36da87a073              # double 0.76711600000000002
	.quad	0x3fd001a36e2eb1c4              # double 0.25009999999999999
	.quad	0x3feadb7281fd9ba2              # double 0.83928800000000003
	.quad	0x3fc3ccea28fe260b              # double 0.154691
	.quad	0x3fedd26527a20579              # double 0.93193300000000001
	.quad	0x3f60060780fdc161              # double 0.0019559999999999998
	.quad	0x3fec51ac9afe1da8              # double 0.88497000000000003
	.quad	0x3f8e13b18dac258d              # double 0.014685999999999999
	.quad	0x3fe6b2ca57a786c2              # double 0.70932499999999998
	.quad	0x3fddf11f926c7eae              # double 0.46784199999999998
	.quad	0x3fec8fb65668c261              # double 0.89254299999999998
	.quad	0x3fb146d3f9e7b80b              # double 0.067487000000000005
	.quad	0x3fcbb5286b59146e              # double 0.21646599999999999
	.quad	0x3fd81309c7ffde72              # double 0.376162
	.quad	0x3feb41b328b6d86f              # double 0.85177000000000003
	.quad	0x3fef7d2c7b890d5a              # double 0.98402999999999996
	.quad	0x3fefb35d249e44fa              # double 0.990645
	.quad	0x3f910ba6266fd652              # double 0.016646000000000001
	.quad	0x3fe006bdf4c2b51c              # double 0.50082300000000002
	.quad	0x3fd8b7cfe5860136              # double 0.38621899999999998
	.quad	0x3fd61c15097c8084              # double 0.34546399999999999
	.quad	0x3fb26e115592d98c              # double 0.071992
	.quad	0x3fb9a469d7342edc              # double 0.100165
	.quad	0x3fd046412cf0f9d3              # double 0.25428800000000001
	.quad	0x3fe8a20bc382a130              # double 0.76978100000000005
	.quad	0x3fddc8711d798d8b              # double 0.46535900000000002
	.quad	0x3fe463e8dda48b65              # double 0.63719599999999998
	.quad	0x3fe815054ac29bf1              # double 0.75256599999999996
	.quad	0x3fea3215fcc1871e              # double 0.81861399999999995
	.quad	0x3fc1320d9945b6c3              # double 0.13433999999999999
	.quad	0x3fe40fcb4f1e4b45              # double 0.62692800000000004
	.quad	0x3fdd19220ff54089              # double 0.45465899999999998
	.quad	0x3fd3f1d3ed527e52              # double 0.311635
	.quad	0x3fe912146a1a500d              # double 0.78345699999999996
	.quad	0x3fe1fcce1c58255b              # double 0.56211
	.quad	0x3f7104d551d68c69              # double 0.0041549999999999998
	.quad	0x3fd3ff7596851223              # double 0.31246699999999999
	.quad	0x3fa4b7d41743e964              # double 0.040465000000000001
	.quad	0x3fe66a91d9b1b79e              # double 0.70050900000000005
	.quad	0x3fd502fb5d031056              # double 0.32830700000000002
	.quad	0x3feed68837718655              # double 0.96368799999999998
	.quad	0x3fe9ce28ed5f138c              # double 0.80641600000000002
	.quad	0x3feb6d1e108c3f3e              # double 0.85707
	.quad	0x3fdc1f46ed245b29              # double 0.43940899999999999
	.quad	0x3feada1a93293d10              # double 0.83912399999999998
	.quad	0x3fc8c1333b96af04              # double 0.19339600000000001
	.quad	0x3fe4348d3ae685db              # double 0.63141499999999995
	.quad	0x3fe60a936c58eeaf              # double 0.68879100000000004
	.quad	0x3fec038c111ada77              # double 0.87543300000000002
	.quad	0x3fe7376922d948dc              # double 0.72551399999999999
	.quad	0x3fe4175f2cb64170              # double 0.62785299999999999
	.quad	0x3fde964a59c065b6              # double 0.47792299999999999
	.quad	0x3fcf97d49d7ba66a              # double 0.24682100000000001
	.quad	0x3fe00e757928e0ca              # double 0.50176500000000002
	.quad	0x3feb8e0eb67c2870              # double 0.86109100000000005
	.quad	0x3fdb000c9539b888              # double 0.42187799999999998
	.quad	0x3fe9480841ede11a              # double 0.79004300000000005
	.quad	0x3feb28a1dfb9389b              # double 0.84870999999999996
	.quad	0x3fd4065300581494              # double 0.312886
	.quad	0x3fe921ea35935fc4              # double 0.78539000000000003
	.quad	0x3fed627e0ef99807              # double 0.91827300000000001
	.quad	0x3fbfb9389b52007e              # double 0.12392
	.quad	0x3fedf9c4113c6866              # double 0.93673899999999999
	.quad	0x3fec40af1cb89d6b              # double 0.88289600000000001
	.quad	0x3fe4cdd2f1a9fbe7              # double 0.65012499999999995
	.quad	0x3fe5e0ce0b912dba              # double 0.68369199999999997
	.quad	0x3fe5fe47991bc558              # double 0.68728999999999996
	.quad	0x3fe1587b56b87379              # double 0.54205099999999995
	.quad	0x3fc4c4dec1c1d6d0              # double 0.16225800000000001
	.quad	0x3fe12f42784a9479              # double 0.53701900000000002
	.quad	0x3feab53b4b2fa93b              # double 0.834623
	.quad	0x3fe30157eed45e92              # double 0.59391400000000005
	.quad	0x3fe87a7eb6bf444e              # double 0.76495299999999999
	.quad	0x3fe073ffac1d29dc              # double 0.51415999999999995
	.quad	0x3fe73d1aa821f299              # double 0.72620899999999999
	.quad	0x3fe0dfe75bc44bf5              # double 0.52733200000000002
	.quad	0x3fdfd4e09784ec63              # double 0.49736799999999998
	.quad	0x3fd24c5974e65bea              # double 0.28591
	.quad	0x3fd1cc4ef88b9778              # double 0.27809499999999998
	.quad	0x3fed59dfdac68a93              # double 0.91722099999999995
	.quad	0x3fe14545846e8f2a              # double 0.53970600000000002
	.quad	0x3fe9e0bd44998d04              # double 0.80868399999999995
	.quad	0x3fde56e264e48627              # double 0.474053
	.quad	0x3fe94e63a5c1c609              # double 0.79081900000000005
	.quad	0x3fdfb3b320535c9e              # double 0.49534299999999998
	.quad	0x3fde41248d7e0264              # double 0.47272599999999998
	.quad	0x3fe3ab94d9407896              # double 0.61469499999999999
	.quad	0x3feb271bcdbbe015              # double 0.84852399999999994
	.quad	0x3fe6ad362e903644              # double 0.70864400000000005
	.quad	0x3fd23c792d1287c2              # double 0.284941
	.quad	0x3fdcd6cf850df15a              # double 0.45061099999999998
	.quad	0x3fe34898f605ab3b              # double 0.60261200000000004
	.quad	0x3fecda74c09c3ce2              # double 0.901667
	.quad	0x3fe53c21187e7c07              # double 0.66359000000000001
	.quad	0x3fd1151a437824d5              # double 0.26691300000000001
	.quad	0x3fdd3b85e80bed74              # double 0.456758
	.quad	0x3fef376d5497310a              # double 0.97551600000000005
	.quad	0x3feca8b8f14db595              # double 0.89559599999999995
	.quad	0x3fdfe9e5e2478855              # double 0.49865100000000001
	.quad	0x3fd7bf8fcd67fd3f              # double 0.37106699999999998
	.quad	0x3fd77fb267c6b8b7              # double 0.36716900000000002
	.quad	0x3f7a3e39f77292c5              # double 0.0064070000000000004
	.quad	0x3fe130b39192641b              # double 0.53719499999999998
	.quad	0x3fe1469f8c21e1d2              # double 0.53987099999999999
	.quad	0x3fded1287c200c0f              # double 0.481516
	.quad	0x3fef99439de481f5              # double 0.98745899999999997
	.quad	0x3fdde425aee631f9              # double 0.46705000000000002
	.quad	0x3fd845cfede97d07              # double 0.37926100000000001
	.quad	0x3fd2d6adf71eafee              # double 0.29435299999999998
	.quad	0x3fe28153bd167664              # double 0.578287
	.quad	0x3fe5c51fc4c16590              # double 0.68031299999999995
	.quad	0x3fe62ea0fd3b29a2              # double 0.69319200000000003
	.quad	0x3fd6a47ecfe9b7bf              # double 0.35378999999999999
	.quad	0x3fe58c9752977c89              # double 0.67341200000000001
	.quad	0x3fee5fcc1871e6cd              # double 0.94919399999999998
	.quad	0x3fea5015c209246c              # double 0.822276
	.quad	0x3fd6d68405b39e28              # double 0.35684300000000002
	.quad	0x3fc79e731d2e0e30              # double 0.18452299999999999
	.quad	0x3feb385a4f00ef13              # double 0.85062899999999997
	.quad	0x3fedc67381d7dbf5              # double 0.93047500000000005
	.quad	0x3f9011d3671ac14c              # double 0.015692999999999999
	.quad	0x3fe3405d52c16df4              # double 0.601607
	.quad	0x3fd1e047d3d4280b              # double 0.27931400000000001
	.quad	0x3fdcf7e80389f83c              # double 0.45263100000000001
	.quad	0x3fed4af4f0d844d0              # double 0.91539999999999999
	.quad	0x3f557689ca18bd66              # double 0.00131
	.quad	0x3feb5be5d9e40c84              # double 0.85496799999999995
	.quad	0x3fe69ed17c5ef630              # double 0.70688700000000004
	.quad	0x3fdb7e414e7ee914              # double 0.42958099999999999
	.quad	0x3fece4d3bf2f5558              # double 0.90293299999999999
	.quad	0x3fe2e06d938151a4              # double 0.58989599999999998
	.quad	0x3fc404ea4a8c154d              # double 0.15640000000000001
	.quad	0x3fd74bad7d7c2ca1              # double 0.36399399999999998
	.quad	0x3fdce2de8709741d              # double 0.451347
	.quad	0x3f5c0ca600b02928              # double 0.001712
	.quad	0x3fc2a4766c6de764              # double 0.145644
	.quad	0x3fc9dea465a57647              # double 0.20210700000000001
	.quad	0x3fe85f8b1572580c              # double 0.76166299999999997
	.quad	0x3fe4ad9ad85dfa87              # double 0.64619199999999999
	.quad	0x3fe590f301eabbcb              # double 0.67394399999999999
	.quad	0x3fb30196d8f4f93c              # double 0.074243000000000003
	.quad	0x3fe5bb2dd377e1b9              # double 0.67909900000000001
	.quad	0x3fd1b9b23dd54da5              # double 0.27695900000000001
	.quad	0x3feca38fbca1059f              # double 0.89496600000000004
	.quad	0x3fe7a9de8b3b3205              # double 0.73948599999999998
	.quad	0x3fd418b934699418              # double 0.31400899999999998
	.quad	0x3fd75bbbe878fabe              # double 0.36497400000000002
	.quad	0x3fea271de69ad42c              # double 0.81727499999999997
	.quad	0x3fe436e935b91f71              # double 0.63170300000000001
	.quad	0x3fefcf97edc7ef17              # double 0.99409099999999994
	.quad	0x3fe5293f290abb45              # double 0.66128500000000001
	.quad	0x3feec1a8ac5c13fd              # double 0.96113999999999999
	.quad	0x3fe24cc25072085b              # double 0.57186999999999999
	.quad	0x3fc9ae03b3e9a6f8              # double 0.200623
	.quad	0x3fd08255b035bd51              # double 0.25795499999999999
	.quad	0x3fd3743201040bfe              # double 0.30396699999999999
	.quad	0x3fcafc7a398201cd              # double 0.21082999999999999
	.quad	0x3fe72adc4c9c90c5              # double 0.72398200000000001
	.quad	0x3fe31bd1ed9dfdac              # double 0.59714599999999995
	.quad	0x3feaed17c5ef62fa              # double 0.84144200000000002
	.quad	0x3fe945cfede97d07              # double 0.78977200000000003
	.quad	0x3fe15069a4df47fa              # double 0.54106600000000005
	.quad	0x3fcac62e4d1a6506              # double 0.209173
	.quad	0x3fbfc925785f8d2e              # double 0.124163
	.quad	0x3faad14a0a0f4d7b              # double 0.052378000000000001
	.quad	0x3fd120e1f7d73c92              # double 0.26763199999999998
	.quad	0x3f6ce4a7b4e54f7b              # double 0.0035270000000000002
	.quad	0x3fe41815a07b352b              # double 0.62794000000000005
	.quad	0x3fca3d145d851655              # double 0.204989
	.quad	0x3fa50203e63e8dda              # double 0.041030999999999998
	.quad	0x3feb1a9da597d49d              # double 0.84699899999999995
	.quad	0x3f9733a8a3f8982d              # double 0.022658000000000001
	.quad	0x3fe848a372606fac              # double 0.75886699999999995
	.quad	0x3fe70b8066c2acb8              # double 0.72015399999999996
	.quad	0x3fd474256bca5376              # double 0.31958900000000001
	.quad	0x3fe8e4f3343fa2ad              # double 0.77794799999999997
	.quad	0x3fbcf8d716d2aa5c              # double 0.11317199999999999
	.quad	0x3feca4f8726d04e6              # double 0.89513799999999999
	.quad	0x3fefdfd8adab9f56              # double 0.99607500000000004
	.quad	0x3fd1b6d43d03968d              # double 0.27678399999999997
	.quad	0x3fdd3ce2089e3433              # double 0.456841
	.quad	0x3fe2d0bfa0945f9e              # double 0.587982
	.quad	0x3fe0c7b890d5a5b9              # double 0.52437999999999996
	.quad	0x3fd9e4fb97bb7308              # double 0.40460099999999999
	.quad	0x3fbc1d19157abb88              # double 0.109819
	.quad	0x3fb0aa9717df19d6              # double 0.065102999999999994
	.quad	0x3fee96a055757d5b              # double 0.95588700000000004
	.quad	0x3fe4dd0d8cb07d0b              # double 0.65198400000000001
	.quad	0x3fed2b3892ee84ad              # double 0.91152599999999995
	.quad	0x3fd145b6c3760bf6              # double 0.26988000000000001
	.quad	0x3fc4d9d7774aba38              # double 0.16289799999999999
	.quad	0x3fd271327243137b              # double 0.288159
	.quad	0x3fda34a44c7b02d6              # double 0.40946300000000002
	.quad	0x3fe9998d045fe111              # double 0.79999399999999998
	.quad	0x3f9b256ffc115df6              # double 0.026509999999999999
	.quad	0x3fd5c0bdcad14a0a              # double 0.339889
	.quad	0x3fe30880d801b435              # double 0.59478799999999998
	.quad	0x3fabe48a58b3f63c              # double 0.054477999999999999
	.quad	0x3fd7807fed20296b              # double 0.36721799999999999
	.quad	0x3fbf7d0f1f57b41c              # double 0.123002
	.quad	0x3fcd02ff8ec0f883              # double 0.22665399999999999
	.quad	0x3fe6d33b10774688              # double 0.71328499999999995
	.quad	0x3fedc5931ca7d673              # double 0.93036799999999997
	.quad	0x3fd13996fa82e87d              # double 0.26913999999999999
	.quad	0x3fe57d82773e24ff              # double 0.67157100000000003
	.quad	0x3fde1f7d73c92578              # double 0.47067199999999998
	.quad	0x3fd2b22d0e560419              # double 0.29212500000000002
	.quad	0x3fe46277c45cbbc3              # double 0.63702000000000003
	.quad	0x3fe6c9de05037500              # double 0.71214200000000005
	.quad	0x3fd1e631f8a0902e              # double 0.27967500000000001
	.quad	0x3fd5089a02752546              # double 0.32865
	.quad	0x3fe09a975afaf859              # double 0.51887099999999997
	.quad	0x3fedd5d3dc8b86b1              # double 0.93235199999999996
	.quad	0x3fe2235b4edb2f66              # double 0.56681599999999999
	.quad	0x3fe24c70867ad8e4              # double 0.57183099999999998
	.quad	0x3fd3f6c69b5a63fa              # double 0.31193700000000002
	.quad	0x3fef86c226809d49              # double 0.98519999999999996
	.quad	0x3fe61478c868b9fe              # double 0.68999900000000003
	.quad	0x3fd1cd9620685554              # double 0.278173
	.quad	0x3fe32734f82f5126              # double 0.59853599999999996
	.quad	0x3fd2b838c111ada7              # double 0.29249399999999998
	.quad	0x3fef5805e5f30e80              # double 0.979495
	.quad	0x3fec568c692f6e83              # double 0.88556500000000005
	.quad	0x3fe69d29dc725c3e              # double 0.70668500000000001
	.quad	0x3fe9cc63f141205c              # double 0.80620000000000002
	.quad	0x3fda814d72799a20              # double 0.41414200000000001
	.quad	0x3fe66707e175d13d              # double 0.70007699999999995
	.quad	0x3fd80fba8826aa8f              # double 0.37596000000000002
	.quad	0x3fe625614df8b157              # double 0.69206299999999998
	.quad	0x3fd3a03c4b09e98e              # double 0.30665500000000001
	.quad	0x3fe1e5625a682b63              # double 0.55925100000000005
	.quad	0x3fe84a5bd944aa54              # double 0.759077
	.quad	0x3fe5b5eb7457c0b1              # double 0.67845699999999998
	.quad	0x3feba21ea35935fc              # double 0.86353999999999997
	.quad	0x3f9264e48626f60e              # double 0.017963
	.quad	0x3fb8a8d21bc126a6              # double 0.096325999999999994
	.quad	0x3fcb9830e3cd9a52              # double 0.215582
	.quad	0x3fe80bb2bba98eda              # double 0.75142799999999998
	.quad	0x3fe374213a0c6b48              # double 0.60792599999999997
	.quad	0x3fd0240314877681              # double 0.25219799999999998
	.quad	0x3fec692b3cc4ac6d              # double 0.88783800000000002
	.quad	0x3feb65fb71fbc5df              # double 0.85619900000000004
	.quad	0x3feb2775fb2edfe7              # double 0.84856699999999996
	.quad	0x3fee4087442c7fbb              # double 0.94537700000000002
	.quad	0x3fb6fbc1acde19fc              # double 0.089778999999999998
	.quad	0x3fee37e0ac7da1ec              # double 0.94432099999999996
	.quad	0x3fb4997c3d68405b              # double 0.080466999999999997
	.quad	0x3fdfc1db0142f61f              # double 0.49620700000000001
	.quad	0x3fe66d6dc1a47a9e              # double 0.70085799999999998
	.quad	0x3fbec5197a24894c              # double 0.120195
	.quad	0x3f8e679463cfb331              # double 0.014846
	.quad	0x3fd46c97d8cf398f              # double 0.31912800000000002
	.quad	0x3fc25796bfca85cb              # double 0.14329800000000001
	.quad	0x3feea018a43bb40b              # double 0.95704299999999998
	.quad	0x3fe52732df505d10              # double 0.66103500000000004
	.quad	0x3fe2a1ab4b72c519              # double 0.58223499999999995
	.quad	0x3fe44906034f3fd9              # double 0.63391399999999998
	.quad	0x3fd1122b7baecd08              # double 0.26673400000000003
	.quad	0x3fd31d6494d50ebb              # double 0.29866900000000002
	.quad	0x3fe6edbd72bcb5fe              # double 0.71652099999999996
	.quad	0x3feb89ca18bd6627              # double 0.86056999999999995
	.quad	0x3fd72de43ed959a3              # double 0.362176
	.quad	0x3fdf84901d19157b              # double 0.49246600000000001
	.quad	0x3feb815c209246bf              # double 0.859541
	.quad	0x3fe38e736049ecb3              # double 0.61113899999999999
	.quad	0x3fd0c7b02d59d55e              # double 0.26218799999999998
	.quad	0x3fecc7304039abf3              # double 0.89931499999999998
	.quad	0x3fe9d5eaee2003ac              # double 0.80736300000000005
	.quad	0x3fe8e30a915379fb              # double 0.77771500000000005
	.quad	0x3fe54d3bf2f55582              # double 0.66567799999999999
	.quad	0x3fe1b1b36bd2b6f2              # double 0.55294200000000004
	.quad	0x3feb7a376922d949              # double 0.85866900000000002
	.quad	0x3fcfd0e991ff7165              # double 0.24856300000000001
	.quad	0x3fd9cf398e970718              # double 0.40327299999999999
	.quad	0x3fe401b21c475e63              # double 0.62520699999999996
	.quad	0x3f92074ea8da7f3d              # double 0.017606
	.quad	0x3fa6faa4766c6de7              # double 0.044880999999999997
	.quad	0x3fe4643cc07aaef3              # double 0.63723600000000002
	.quad	0x3fdfc0a06e9ff0cc              # double 0.49613200000000002
	.quad	0x3fe2540895d0b73d              # double 0.57275799999999999
	.quad	0x3fe60a116659d12d              # double 0.68872900000000004
	.quad	0x3fb7300de4c51117              # double 0.090577000000000005
	.quad	0x3fcb7dd872f33ca3              # double 0.214778
	.quad	0x3febadadb8348f54              # double 0.86495100000000002
	.quad	0x3fedbdc8b86b15f9              # double 0.92941700000000005
	.quad	0x3fcdd3c36113404f              # double 0.23302500000000001
	.quad	0x3fd4966be7afa722              # double 0.32168099999999999
	.quad	0x3fa45ef62f9ca5be              # double 0.039787000000000003
	.quad	0x3fedfebaf102363b              # double 0.93734499999999998
	.quad	0x3fc7068123810e88              # double 0.17988599999999999
	.quad	0x3fc46de76427c7c5              # double 0.159604
	.quad	0x3fe340852b4d8ba4              # double 0.60162599999999999
	.quad	0x3fed6e978d4fdf3b              # double 0.91974999999999996
	.quad	0x3fece7c06e19b90f              # double 0.90329000000000004
	.quad	0x3feba06c8711d799              # double 0.86333300000000002
	.quad	0x3fef0fc0d2c386d3              # double 0.970673
	.quad	0x3fef8e5e679463d0              # double 0.98612900000000003
	.quad	0x3fd2a0cae642bf98              # double 0.29106399999999999
	.quad	0x3fe544cdfaca361a              # double 0.66464900000000005
	.quad	0x3feaae72da122fad              # double 0.83379499999999995
	.quad	0x3fefcbfd2e946801              # double 0.99365099999999995
	.quad	0x3fb933d29563a9f4              # double 0.098447000000000006
	.quad	0x3febba0e8427418d              # double 0.86646199999999995
	.quad	0x3fec9b413986338b              # double 0.89395199999999997
	.quad	0x3fdce3b03e20ccff              # double 0.45139699999999999
	.quad	0x3fee3bf2f5558213              # double 0.94481800000000005
	.quad	0x3fad3a604e1e7104              # double 0.057085999999999998
	.quad	0x3fe70813cab81f97              # double 0.71973600000000004
	.quad	0x3fe1d6da0168b5cc              # double 0.557477
	.quad	0x3fc6fa376922d949              # double 0.179511
	.quad	0x3fef6364bec679cc              # double 0.98088299999999994
	.quad	0x3fe2d95feda66128              # double 0.58903499999999998
	.quad	0x3fcb81b64e054691              # double 0.214896
	.quad	0x3fe44cec41dd1a22              # double 0.63439000000000001
	.quad	0x3fdf0a5269595fee              # double 0.48500500000000002
	.quad	0x3fe1e9d7342edbb6              # double 0.55979500000000004
	.quad	0x3fe0b5f5f0b28523              # double 0.52221200000000001
	.quad	0x3fb6bd5dc4007571              # double 0.088827000000000003
	.quad	0x3febc382a12f9011              # double 0.86761600000000005
	.quad	0x3fccc4156e264e48              # double 0.22473399999999999
	.quad	0x3feff7dfa00e27e1              # double 0.999008
	.quad	0x3fe791276fb09204              # double 0.73646900000000004
	.quad	0x3fec8327674d1633              # double 0.89100999999999997
	.quad	0x3fba8eb463497b74              # double 0.10374
	.quad	0x3fd79656eefa1e3f              # double 0.36855100000000002
	.quad	0x3fed25bfad299956              # double 0.91085799999999995
	.quad	0x3fd1cc6c54bcf0b7              # double 0.27810200000000002
	.quad	0x3fc4321a2e7f6f4c              # double 0.157779
	.quad	0x3fd05a07b352a844              # double 0.25549500000000003
	.quad	0x3fdaa01abd1aa822              # double 0.416022
	.quad	0x3fd11e3eaf6837f8              # double 0.26747100000000001
	.quad	0x3fdb83558a761028              # double 0.42989100000000002
	.quad	0x3fd76805a2d72ffd              # double 0.36572399999999999
	.quad	0x3fb9e060fe47991c              # double 0.10108
	.quad	0x3fa60ae9680e0653              # double 0.043052
	.quad	0x3fd337c1376d5497              # double 0.30027799999999999
	.quad	0x3fe2d85dfa871a3b              # double 0.58891199999999999
	.quad	0x3fe5ae1ac57e23f2              # double 0.67750299999999997
	.quad	0x3fb1c2f405f6ba06              # double 0.069380999999999998
	.quad	0x3fe9740a2877ee4e              # double 0.79541499999999998
	.quad	0x3fe27023e9ea1405              # double 0.57618899999999995
	.quad	0x3fdb759253543aeb              # double 0.42905100000000002
	.quad	0x3fc17b7414a4d2b3              # double 0.13658000000000001
	.quad	0x3fe8ee978d4fdf3b              # double 0.77912499999999996
	.quad	0x3fcb1d68c692f6e8              # double 0.211835
	.quad	0x3fc1bb517a46173c              # double 0.13852900000000001
	.quad	0x3fe6b77e1b8ed1bf              # double 0.70989899999999995
	.quad	0x3fe4fc8d1958969a              # double 0.655829
	.quad	0x3fd1c1ce6c093d96              # double 0.27745399999999998
	.quad	0x3fed82b628459967              # double 0.92220599999999997
	.quad	0x3fe84ad57bc7f77b              # double 0.759135
	.quad	0x3fe72a6f3f52fc26              # double 0.72392999999999996
	.quad	0x3fe6dc725c3dee78              # double 0.71440999999999999
	.quad	0x3fe125247cb70ac4              # double 0.53578400000000004
	.quad	0x3feabf0995aaf790              # double 0.83582000000000001
	.quad	0x3fe95d67ba237cdd              # double 0.79265200000000002
	.quad	0x3fc53c1ce6c093d9              # double 0.16589699999999999
	.quad	0x3fef2647fdc5931d              # double 0.97342300000000003
	.quad	0x3fe89d29dc725c3e              # double 0.76918500000000001
	.quad	0x3fb340a2877ee4e2              # double 0.075204999999999994
	.quad	0x3fd47bb73083558a              # double 0.32005099999999997
	.quad	0x3fd57396d0917d6b              # double 0.33517999999999998
	.quad	0x3fd789374bc6a7f0              # double 0.36775000000000002
	.quad	0x3fd748fd9fd36f7e              # double 0.36382999999999999
	.quad	0x3fee3910c2c5e2ce              # double 0.94446600000000003
	.quad	0x3fd0a4a05dd8f92b              # double 0.260048
	.quad	0x3fcf320d9945b6c3              # double 0.24371499999999999
	.quad	0x3fe7490c4dec1c1d              # double 0.72766699999999995
	.quad	0x3fe31ac9afe1da7b              # double 0.59702
	.quad	0x3fdc1059ea57214f              # double 0.438498
	.quad	0x3fef53b0813cab82              # double 0.978966
	.quad	0x3fc44bcad9ad85e0              # double 0.15856300000000001
	.quad	0x3fe9b2378ab0c88a              # double 0.80300499999999997
	.quad	0x3f80ad46f587d6f9              # double 0.0081429999999999991
	.quad	0x3fe7a92c49342678              # double 0.73940099999999997
	.quad	0x3fec581cf7878b7a              # double 0.88575599999999999
	.quad	0x3fe069e5e2478855              # double 0.51292700000000002
	.quad	0x3fd4c6f36ef80560              # double 0.32464300000000001
	.quad	0x3fd3a055757d5a9f              # double 0.30666100000000002
	.quad	0x3fabdee78183f91e              # double 0.054434999999999997
	.quad	0x3fce2d05f2884838              # double 0.23574899999999999
	.quad	0x3fe408bb906466b2              # double 0.62606600000000001
	.quad	0x3fe39c7368ad6883              # double 0.61284799999999995
	.quad	0x3fe09904b3c3e74b              # double 0.518679
	.quad	0x3fe8cbbc2b94d940              # double 0.77486999999999995
	.quad	0x3fdc4534bd76ee74              # double 0.44172400000000001
	.quad	0x3fe99dc725c3dee8              # double 0.80051000000000005
	.quad	0x3fb169c23b7952d2              # double 0.068019999999999997
	.quad	0x3fb687b139c94f6a              # double 0.088008000000000002
	.quad	0x3fcd756c93a71151              # double 0.23014599999999999
	.quad	0x3fddd48882f0e0a8              # double 0.46609699999999998
	.quad	0x3fc58aa8650e7792              # double 0.168294
	.quad	0x3fed3f077ccc0379              # double 0.91394399999999998
	.quad	0x3fbc55da272862f6              # double 0.11068500000000001
	.quad	0x3fef7345069a4df4              # double 0.98282099999999994
	.quad	0x3fd853c9abb01c93              # double 0.38011400000000001
	.quad	0x3faec4e7253da72a              # double 0.060095999999999997
	.quad	0x3fe0fcc5b8dc5500              # double 0.53085599999999999
	.quad	0x3fe7e74afd545415              # double 0.74698399999999998
	.quad	0x3feb3e5b8561d430              # double 0.85136199999999995
	.quad	0x3fe41ffb480a5acd              # double 0.62890400000000002
	.quad	0x3fd51e42e1262025              # double 0.32997199999999999
	.quad	0x3fbe718a86d71f36              # double 0.11892
	.quad	0x3fefa5dd095af295              # double 0.98899700000000001
	.quad	0x3fe86d8904f6dfc6              # double 0.76337100000000002
	.quad	0x3fe2bbbe878fabda              # double 0.58541799999999999
	.quad	0x3fed469b5a63f9a5              # double 0.91486900000000004
	.quad	0x3fdb09203a322af5              # double 0.42243199999999997
	.quad	0x3fcd9274e22a2c23              # double 0.23103199999999999
	.quad	0x3fd98ede54b48d3b              # double 0.39934500000000001
	.quad	0x3fc3028a1dfb938a              # double 0.14851500000000001
	.quad	0x3fde343fa2ad3e92              # double 0.471939
	.quad	0x3fe02bcf91a32b13              # double 0.50534800000000002
	.quad	0x3fd3b1c864883fd5              # double 0.307726
	.quad	0x3fc718c197e56473              # double 0.18044299999999999
	.quad	0x3feb21dda059a73b              # double 0.84788399999999997
	.quad	0x3fed64da09cc319c              # double 0.91856099999999996
	.quad	0x3fe30efbb0e5e679              # double 0.59557899999999997
	.quad	0x3fecaab042528ae7              # double 0.89583599999999997
	.quad	0x3fc686f049a9973e              # double 0.17599300000000001
	.quad	0x3fecb13be22e5de1              # double 0.89663499999999996
	.quad	0x3fd1f36ef8055fbb              # double 0.28048299999999998
	.quad	0x3fec8fffbce4217d              # double 0.89257799999999998
	.quad	0x3fec81711947cfa2              # double 0.89080099999999995
	.quad	0x3fe3c226809d4952              # double 0.61745000000000005
	.quad	0x3fe78e71476af89c              # double 0.73613799999999996
	.quad	0x3fe645a8155d5f57              # double 0.69600300000000004
	.quad	0x3fa25529fe004b7f              # double 0.035805999999999998
	.quad	0x3fe3fdac68a936c6              # double 0.62471600000000005
	.quad	0x3fe918e325d4a5df              # double 0.78428799999999999
	.quad	0x3fdd2ddbdb5d8948              # double 0.455924
	.quad	0x3fcb733226c3b928              # double 0.214453
	.quad	0x3fd03c148344c37e              # double 0.25366699999999998
	.quad	0x3fd859ccfaeff5c7              # double 0.38048100000000001
	.quad	0x3fd9971c10d7be98              # double 0.39984799999999998
	.quad	0x3feecc51116a8b8f              # double 0.96244099999999999
	.quad	0x3fdc079e59f2ba9d              # double 0.43796499999999999
	.quad	0x3fa34e54f7a91969              # double 0.037706999999999997
	.quad	0x3fed9d712a0ec743              # double 0.92546899999999999
	.quad	0x3fd8a2120e1f7d74              # double 0.38489200000000001
	.quad	0x3fe718d25edd0529              # double 0.72177999999999998
	.quad	0x3fed55000c9539b9              # double 0.91662600000000005
	.quad	0x3fd9873797460243              # double 0.39887800000000001
	.quad	0x3fd4ee17a02fb5d0              # double 0.32703199999999999
	.quad	0x3fb2352eb5f5f0b3              # double 0.071124000000000007
	.quad	0x3fd5caeea63b688c              # double 0.34051100000000001
	.quad	0x3fd3f2f9873ffac2              # double 0.31170500000000001
	.quad	0x3fb82bd7f51efb6e              # double 0.094419000000000002
	.quad	0x3fecd7eed45e9186              # double 0.90135900000000002
	.quad	0x3fe9c93ea2d2fe3f              # double 0.80581599999999998
	.quad	0x3fe20cdea033e78e              # double 0.56407099999999999
	.quad	0x3f99bcfd4bf0995b              # double 0.025135000000000001
	.quad	0x3fd8e8dda48b6523              # double 0.38921299999999998
	.quad	0x3fe1bd87b56b8738              # double 0.55438600000000005
	.quad	0x3fd4589acbc8c0cf              # double 0.31790800000000002
	.quad	0x3fd7bf9c62a1b5c8              # double 0.37107000000000001
	.quad	0x3fe52b063e07a28c              # double 0.66150200000000003
	.quad	0x3fca8ed5f138bce0              # double 0.207484
	.quad	0x3fd804d983947497              # double 0.37529600000000002
	.quad	0x3fee0887229e9079              # double 0.93854099999999996
	.quad	0x3fe093ff25e56cd7              # double 0.51806600000000003
	.quad	0x3fe7bbafd976ff3b              # double 0.74166100000000001
	.quad	0x3fe3a513b5bf6a0e              # double 0.61390100000000003
	.quad	0x3fe42ae07e5a78f2              # double 0.63023399999999996
	.quad	0x3fca3193f6c2699c              # double 0.20463799999999999
	.quad	0x3fe63649d388a8b1              # double 0.69412700000000005
	.quad	0x3fd306290eed02cd              # double 0.29725099999999999
	.quad	0x3fdc12f4cf4a558f              # double 0.43865700000000002
	.quad	0x3fdf3ac929aa1d75              # double 0.48796299999999998
	.quad	0x3fe916bdb1a6d699              # double 0.784026
	.quad	0x3fd1a54823854046              # double 0.27571299999999999
	.quad	0x3fbe709fa54c5543              # double 0.118906
	.quad	0x3fe23aeab7995ee1              # double 0.56969199999999998
	.quad	0x3fcdee2435696e59              # double 0.23383000000000001
	.quad	0x3fe81b25f633ce64              # double 0.75331400000000003
	.quad	0x3fedc03ff69014b6              # double 0.92971800000000004
	.quad	0x3fee3e0157eed45f              # double 0.94506900000000005
	.quad	0x3fe31d66adb402d1              # double 0.59733899999999995
	.quad	0x3fe7c61d8622c450              # double 0.74293399999999998
	.quad	0x3fe388db0574b407              # double 0.610456
	.quad	0x3fa20f2becedd484              # double 0.035271999999999998
	.quad	0x3fdd23cc8de2ac32              # double 0.45530999999999999
	.quad	0x3fdf9b845564b663              # double 0.493867
	.quad	0x3fd9dc4007570c56              # double 0.40406799999999998
	.quad	0x3f9c9a34ca0c282c              # double 0.027931999999999998
	.quad	0x3fd65903a7546d40              # double 0.34918300000000002
	.quad	0x3fe9c53d20f2becf              # double 0.80532700000000002
	.quad	0x3fd3a64c2f837b4a              # double 0.30702499999999999
	.quad	0x3fd0162281344806              # double 0.25135099999999999
	.quad	0x3fea6f049a9973da              # double 0.82605200000000001
	.quad	0x3fdec664d3bf2f55              # double 0.48085899999999998
	.quad	0x3fd5a84be40420f7              # double 0.338397
	.quad	0x3fdb72606fac6046              # double 0.42885600000000001
	.quad	0x3fd8bb2bba98eda2              # double 0.38642399999999999
	.quad	0x3fa113a4f8726d05              # double 0.033353000000000001
	.quad	0x3fe727008a697aee              # double 0.72351100000000002
	.quad	0x3fe853f1843c3a43              # double 0.76024700000000001
	.quad	0x3fdf4d76ab5807ff              # double 0.48910300000000001
	.quad	0x3fdaa2be0589acbd              # double 0.41618300000000003
	.quad	0x3fe1088d6d3b6cbe              # double 0.53229400000000004
	.quad	0x3fed27418d6909af              # double 0.91104200000000002
	.quad	0x3fef4b5fe542e558              # double 0.97795100000000001
	.quad	0x3fd60dcfcc5b8dc5              # double 0.34459299999999998
	.quad	0x3fd20ebaade657b8              # double 0.28214899999999998
	.quad	0x3fe13d9a95421c04              # double 0.53876999999999997
	.quad	0x3fdf09f1f14983d8              # double 0.48498200000000002
	.quad	0x3fe9c0e38a7e73a3              # double 0.80479599999999996
	.quad	0x3fec6e8af81626b3              # double 0.88849400000000001
	.quad	0x3f974aba38759253              # double 0.022745999999999999
	.quad	0x3f8a0dfdef8487ba              # double 0.012722000000000001
	.quad	0x3fece09784ec636b              # double 0.902416
	.quad	0x3fe86af251c193b4              # double 0.76305500000000003
	.quad	0x3fd8ea57214f0521              # double 0.38930300000000001
	.quad	0x3fe9f3c925785f8d              # double 0.81100899999999998
	.quad	0x3fe68986fcdee350              # double 0.70428800000000003
	.quad	0x3feeb1ee2435696e              # double 0.95921999999999996
	.quad	0x3fe9f9f87f023e9f              # double 0.81176400000000004
	.quad	0x3fe2709741d084e8              # double 0.57624399999999998
	.quad	0x3fe01e40c8472c0e              # double 0.50369299999999995
	.quad	0x3fe3779207d4e098              # double 0.60834600000000005
	.quad	0x3febdb573eab367a              # double 0.87052499999999999
	.quad	0x3fd9de82d7b634db              # double 0.40420600000000001
	.quad	0x3fda61e0c5a8155d              # double 0.41222399999999998
	.quad	0x3fdb9da16616b54e              # double 0.43149599999999999
	.quad	0x3fd5db940fecdd0e              # double 0.34152700000000003
	.quad	0x3fd675a74c09c3ce              # double 0.35093099999999999
	.quad	0x3fe2168512231833              # double 0.565249
	.quad	0x3febf6b5d462c344              # double 0.87386600000000003
	.quad	0x3fef5ebb7739f341              # double 0.98031400000000001
	.quad	0x3fe0b5c5b4aa9718              # double 0.52218900000000001
	.quad	0x3fe5e79aae6c8f75              # double 0.68452199999999996
	.quad	0x3fe140d90e23af32              # double 0.53916600000000003
	.quad	0x3fc79b56323bbc6f              # double 0.18442800000000001
	.quad	0x3fa77a4e7ab75643              # double 0.045855
	.quad	0x3fb12f09d8c6d613              # double 0.067124000000000003
	.quad	0x3fe2bdd334c5da6a              # double 0.58567199999999997
	.quad	0x3fbb723ee1bd1eda              # double 0.107212
	.quad	0x3fc6f95d4e8fb00c              # double 0.17948500000000001
	.quad	0x3fd93a2595bbbe88              # double 0.39417400000000002
	.quad	0x3fe9aaf35e310dbf              # double 0.802118
	.quad	0x3fb2a39c51dabe27              # double 0.072808999999999999
	.quad	0x3fd24fbdad7518b1              # double 0.28611700000000001
	.quad	0x3fede25204af9229              # double 0.93387699999999996
	.quad	0x3fe7626d4801f751              # double 0.730765
	.quad	0x3fe10240b780346e              # double 0.53152500000000003
	.quad	0x3fec0e0221426fe7              # double 0.87670999999999999
	.quad	0x3fd30f0e90bc7b46              # double 0.297794
	.quad	0x3fe2e85985ad538b              # double 0.59086300000000003
	.quad	0x3fdbb2a27f1b6912              # double 0.432778
	.quad	0x3fed40a2877ee4e2              # double 0.91413999999999995
	.quad	0x3fc47db2b346130a              # double 0.16008600000000001
	.quad	0x3fe4a4a8c154c986              # double 0.64510000000000001
	.quad	0x3fd99dfdac68a937              # double 0.40026800000000001
	.quad	0x3fe72caff6d33094              # double 0.72420499999999999
	.quad	0x3fe7959a30984e40              # double 0.737012
	.quad	0x3fe38fc504816f00              # double 0.61129999999999995
	.quad	0x3fd4975f2cb64170              # double 0.321739
	.quad	0x3fc10e4da09cc31a              # double 0.13324900000000001
	.quad	0x3fde717df19d66ae              # double 0.47567700000000002
	.quad	0x3fc171b8aa00192a              # double 0.13628299999999999
	.quad	0x3fee5bf487fcb924              # double 0.94872500000000004
	.quad	0x3fee6dd69d30270f              # double 0.95090799999999998
	.quad	0x3fe37d3d4280ae10              # double 0.60903799999999997
	.quad	0x3fd9834d26fa3fcd              # double 0.39863900000000002
	.quad	0x3fcdf6ba0620ab71              # double 0.23409199999999999
	.quad	0x3fe478811b1d92b8              # double 0.63971
	.quad	0x3fe2921ee675147f              # double 0.58033699999999999
	.quad	0x3fb7aca36199780c              # double 0.092478000000000005
	.quad	0x3fe059fb1e18efbb              # double 0.51098399999999999
	.quad	0x3fe4196312f4cf4a              # double 0.62809899999999996
	.quad	0x3fe0849ecb31c21a              # double 0.51618900000000001
	.quad	0x3fec8c436fc158fb              # double 0.89212199999999997
	.quad	0x3fee6b8d82342246              # double 0.95062899999999995
	.quad	0x3f502bc72e275ab8              # double 9.8700000000000003E-4
	.quad	0x3fd986df82b1f688              # double 0.39885700000000002
	.quad	0x3fee11f70de8f6cf              # double 0.939693
	.quad	0x3fedbfbbd7b2031d              # double 0.92965500000000001
	.quad	0x3fc4769ec2ce464a              # double 0.15987000000000001
	.quad	0x3fd252eb5f5f0b28              # double 0.28631099999999998
	.quad	0x3fadce18266772d6              # double 0.058213000000000001
	.quad	0x3fed94163779e9d1              # double 0.92432700000000001
	.quad	0x3fe718915bdd7668              # double 0.72174899999999997
	.quad	0x3fefc7a398201cd6              # double 0.99312
	.quad	0x3fd2c46d82ba5a04              # double 0.29323900000000003
	.quad	0x3f9e5604189374bc              # double 0.029624999999999999
	.quad	0x3fef35c5b4aa9718              # double 0.97531400000000001
	.quad	0x3fef5753a3ec02f3              # double 0.97941
	.quad	0x3f87a786c226809d              # double 0.01155
	.quad	0x3fc4728e92d55a3a              # double 0.159746
	.quad	0x3fe7c86ad2dcb146              # double 0.74321499999999996
	.quad	0x3fb880303c07ee0b              # double 0.095705999999999999
	.quad	0x3febdc1615ebfa8f              # double 0.87061599999999995
	.quad	0x3f8d9e40c8472c0e              # double 0.014461999999999999
	.quad	0x3fadccc89b0ee49f              # double 0.058202999999999998
	.quad	0x3fe9ee221c8a7a42              # double 0.81031900000000001
	.quad	0x3fdfb6672fba01ef              # double 0.495508
	.quad	0x3fe90d045fe11127              # double 0.78283899999999995
	.quad	0x3fddc69728a61177              # double 0.46524599999999999
	.quad	0x3fc1bfa4c61d8623              # double 0.13866100000000001
	.quad	0x3fdef312b1b36bd3              # double 0.48358600000000002
	.quad	0x3fdb79357603925c              # double 0.42927300000000002
	.quad	0x3fe356733ebbfd72              # double 0.60430300000000003
	.quad	0x3fe5f0fbeb9e492c              # double 0.68566700000000003
	.quad	0x3f985db76b3bb83d              # double 0.023795
	.quad	0x3fc07a4a48f96e16              # double 0.12873200000000001
	.quad	0x3fd149a5657fb69a              # double 0.27012000000000003
	.quad	0x3fdef765fd8adaba              # double 0.48385
	.quad	0x3fd1124d099e0e73              # double 0.26674199999999998
	.quad	0x3fe4d5ae1cde5d18              # double 0.651084
	.quad	0x3fb5f8c21e1d2179              # double 0.085827000000000001
	.quad	0x3fa7589efd86a8fc              # double 0.045598
	.quad	0x3fd3c1db0142f61f              # double 0.30870700000000001
	.quad	0x3fe09057d1782d38              # double 0.51761999999999997
	.quad	0x3fdbe41d4b6a619e              # double 0.43579800000000002
	.quad	0x3fe3a9068986fcdf              # double 0.61438300000000001
	.quad	0x3fe922163fdd65a1              # double 0.78541099999999997
	.quad	0x3fe83775b8130165              # double 0.75677000000000005
	.quad	0x3fbc5996744b2b77              # double 0.11074199999999999
	.quad	0x3fb6e429e0a41a26              # double 0.089418999999999998
	.quad	0x3fd7289118c197e5              # double 0.36185099999999998
	.quad	0x3fe6151a437824d5              # double 0.69007600000000002
	.quad	0x3fe3a2f6a50d6b23              # double 0.61364300000000005
	.quad	0x3fc551deefe4ffc9              # double 0.16656099999999999
	.quad	0x3fea6a875d56f32c              # double 0.82550400000000001
	.quad	0x3fdfa47a9e2bcf92              # double 0.49441400000000002
	.quad	0x3fdaaf20ea5b530d              # double 0.416939
	.quad	0x3fc3cfe586013661              # double 0.154782
	.quad	0x3fdb969a0ad8a116              # double 0.43106699999999998
	.quad	0x3fe7ac2df0d41312              # double 0.73976799999999998
	.quad	0x3fd5a4c61d8622c4              # double 0.33818199999999998
	.quad	0x3fc2696a26e54717              # double 0.143842
	.quad	0x3fe9116872b020c5              # double 0.78337500000000004
	.quad	0x3fd4c286f8ad2568              # double 0.32437300000000002
	.quad	0x3fcdf17bd8be7297              # double 0.233932
	.quad	0x3fed2c5197a24895              # double 0.91166000000000003
	.quad	0x3fc3e4de3b8a19ca              # double 0.155422
	.quad	0x3fbd9ab6d00b45ae              # double 0.11564199999999999
	.quad	0x3fbbf327aa68f4b6              # double 0.109179
	.quad	0x3fe5b810e8858ff7              # double 0.67871899999999996
	.quad	0x3fe00c1333b96af0              # double 0.50147399999999998
	.quad	0x3fdcfd5454152b0a              # double 0.45296199999999998
	.quad	0x3fde4d6e47dc37a4              # double 0.47347600000000001
	.quad	0x3fea71172ef0ae53              # double 0.82630499999999996
	.quad	0x3fb7fa2ad3e920c0              # double 0.093660999999999994
	.quad	0x3fc49b30728e92d5              # double 0.16098599999999999
	.quad	0x3fed806af46aa088              # double 0.92192600000000002
	.quad	0x3fed481b21c475e6              # double 0.91505199999999998
	.quad	0x3fe35e7210be9425              # double 0.60527900000000001
	.quad	0x3fb75104d551d68c              # double 0.091079999999999994
	.quad	0x3fdceb313be22e5e              # double 0.45185500000000001
	.quad	0x3fe16642bf9830e4              # double 0.54373300000000002
	.quad	0x3fb9f37329c347e9              # double 0.101371
	.quad	0x3fee07c200c0f020              # double 0.93844700000000003
	.quad	0x3fd59680e0653006              # double 0.33731100000000003
	.quad	0x3fe898e325d4a5df              # double 0.76866299999999999
	.quad	0x3fdf13b5bf6a0dbb              # double 0.48557800000000001
	.quad	0x3fe453ac4f7ec354              # double 0.63521399999999995
	.quad	0x3fcb8df7a4e7ab75              # double 0.21526999999999999
	.quad	0x3fe32fbc1acde1a0              # double 0.59957700000000003
	.quad	0x3fe1e132b55ef1fe              # double 0.55874000000000001
	.quad	0x3fe08435efa615a9              # double 0.51613900000000001
	.quad	0x3fc459a73b42cc2d              # double 0.15898599999999999
	.quad	0x3fb6054690de0935              # double 0.086017999999999997
	.quad	0x3fef23bbc6eb0b7c              # double 0.97311199999999997
	.quad	0x3fe75ddf43c7d5ed              # double 0.730209
	.quad	0x3fe81363f572de44              # double 0.752367
	.quad	0x3feb846c764adff8              # double 0.85991499999999998
	.quad	0x3fd1dfa43fe5c91d              # double 0.279275
	.quad	0x3fc2a6dacabc5155              # double 0.14571700000000001
	.quad	0x3fe0a53b8e4b87be              # double 0.52017000000000002
	.quad	0x3fe81148fd9fd36f              # double 0.75210999999999995
	.quad	0x3fe20999dcb5781c              # double 0.56367199999999995
	.quad	0x3fd5b5aa715831f0              # double 0.33921299999999999
	.quad	0x3fee98d6909aed57              # double 0.95615700000000003
	.quad	0x3fd8d0635a426bb5              # double 0.38771899999999998
	.quad	0x3faf70de8f6cefed              # double 0.061407999999999997
	.quad	0x3fe05a0168b5cbff              # double 0.51098699999999997
	.quad	0x3fe4a93f290abb45              # double 0.64566000000000001
	.quad	0x3fed746cb966be7b              # double 0.920462
	.quad	0x3feefcac8e68e3ef              # double 0.96834399999999998
	.quad	0x3fb3d4cfd08d4bad              # double 0.077465999999999993
	.quad	0x3fe3d698fe69270b              # double 0.619946
	.quad	0x3fe9727136a400fc              # double 0.79522000000000003
	.quad	0x3fe75099e0e73605              # double 0.72858900000000004
	.quad	0x3fc501d9f4d37c13              # double 0.16411899999999999
	.quad	0x3fd0136e71cda2b6              # double 0.25118600000000002
	.quad	0x3fe8c6c54bcf0b6b              # double 0.77426399999999995
	.quad	0x3fee08a04d12018a              # double 0.93855299999999997
	.quad	0x3fe3e5c70435efa6              # double 0.62179899999999999
	.quad	0x3fd5a3bddfc9ff93              # double 0.338119
	.quad	0x3fe3fc6759ab6d01              # double 0.62456100000000003
	.quad	0x3fd1ae536501e258              # double 0.27626499999999998
	.quad	0x3fa75e41d4b6a61a              # double 0.045641000000000001
	.quad	0x3fec449fd7a13c25              # double 0.88337699999999997
	.quad	0x3fedcf91a32b12d3              # double 0.93158799999999997
	.quad	0x3fcb6ec5b078d930              # double 0.21431800000000001
	.quad	0x3fcd4b167ec7863c              # double 0.228854
	.quad	0x3fe4d421c044284e              # double 0.650895
	.quad	0x3fedf6922d948dc1              # double 0.93634899999999999
	.quad	0x3fd7df82b1f687b1              # double 0.37301699999999999
	.quad	0x3fb5e30014f8b589              # double 0.085495000000000002
	.quad	0x3f97e175d13d74d6              # double 0.023321000000000001
	.quad	0x3fec80b88ca3e7d1              # double 0.89071299999999998
	.quad	0x3fd278c0053e2d62              # double 0.28861999999999999
	.quad	0x3fdbe8d972cd7cf6              # double 0.436087
	.quad	0x3fd3b2788db0574b              # double 0.30776799999999999
	.quad	0x3fe0e73a365cb35f              # double 0.52822599999999997
	.quad	0x3fc1f498c3b0c459              # double 0.14027700000000001
	.quad	0x3fb45c896dd26b72              # double 0.079536999999999996
	.quad	0x3fe80691ea78af3e              # double 0.75080199999999997
	.quad	0x3fd14cbe1eb4202e              # double 0.27030900000000002
	.quad	0x3fe73c89f40a2878              # double 0.72614000000000001
	.quad	0x3fedbd8be7296f65              # double 0.92938799999999999
	.quad	0x3fd26c3fc43b2dd3              # double 0.28785699999999997
	.quad	0x3fefe69f05ea24cc              # double 0.99690199999999995
	.quad	0x3fe9a7913e81450f              # double 0.801705
	.quad	0x3fd1690de093532e              # double 0.27203699999999997
	.quad	0x3febd66490a350d3              # double 0.86992100000000006
	.quad	0x3fa1c0ca600b0293              # double 0.034674000000000003
	.quad	0x3fd64cb5bb384fd3              # double 0.34843200000000002
	.quad	0x3fe0427e9531550d              # double 0.50811700000000004
	.quad	0x3fc812d77318fc50              # double 0.18807499999999999
	.quad	0x3feb8e51d25aab47              # double 0.86112299999999997
	.quad	0x3fee329c347e8cce              # double 0.94367800000000002
	.quad	0x3fe9c751ce28ed5f              # double 0.80558099999999999
	.quad	0x3fd2aab042528ae7              # double 0.29166799999999998
	.quad	0x3fef3c254a3c6434              # double 0.97609199999999995
	.quad	0x3f9a6612839042d9              # double 0.025780000000000001
	.quad	0x3fe4db59578a2a91              # double 0.65177600000000002
	.quad	0x3fef551f81a5870e              # double 0.97914100000000004
	.quad	0x3fe31dc0db2702a3              # double 0.59738199999999997
	.quad	0x3fc0fa05143bf727              # double 0.13263
	.quad	0x3fdd8f0c77dd872f              # double 0.46185599999999999
	.quad	0x3fd36ec17ebaf102              # double 0.30363499999999999
	.quad	0x3fec407cc7d1bb49              # double 0.88287199999999999
	.quad	0x3fd5fcc9ea9a3d2e              # double 0.34355400000000003
	.quad	0x3fe866d58c8eef1c              # double 0.76255300000000003
	.quad	0x3fd9666666666666              # double 0.39687499999999998
	.quad	0x3fd0242070b8cfc0              # double 0.25220500000000001
	.quad	0x3fe3c79d4d834092              # double 0.61811700000000003
	.quad	0x3fd49c12f09d8c6d              # double 0.32202599999999998
	.quad	0x3fd3df3f961804da              # double 0.31050100000000003
	.quad	0x3fee6e04c0592104              # double 0.95093000000000005
	.quad	0x3fe78de8f6cefed6              # double 0.73607299999999998
	.quad	0x3fced87724fa8b4c              # double 0.240981
	.quad	0x3feff4384ba0e842              # double 0.99856199999999995
	.quad	0x3fd3e82517e77d52              # double 0.31104399999999999
	.quad	0x3feb742bb6672fba              # double 0.857931
	.quad	0x3fe5f4c8ffb8b264              # double 0.68613100000000005
	.quad	0x3fe6cbd556084a51              # double 0.71238199999999996
	.quad	0x3fe23ef284167a96              # double 0.57018400000000002
	.quad	0x3fe145ef62f9ca5c              # double 0.53978700000000002
	.quad	0x3fe7f85f8d2e514c              # double 0.74906899999999998
	.quad	0x3fdb60a63305100a              # double 0.42777399999999999
	.quad	0x3fe8a66fd651b0cd              # double 0.77031700000000003
	.quad	0x3fcc3f24d8fd5cb8              # double 0.22067700000000001
	.quad	0x3fe3a4fa8b4bf8fd              # double 0.61388900000000002
	.quad	0x3fe2f8140dd3fe19              # double 0.59278299999999995
	.quad	0x3f81409a24031487              # double 0.0084239999999999991
	.quad	0x3fb96eefa1e3eaf7              # double 0.099349000000000007
	.quad	0x3fe16ec9e236c15d              # double 0.54477399999999998
	.quad	0x3f93519bd4067cf2              # double 0.018866000000000001
	.quad	0x3f5d041cc532a498              # double 0.001771
	.quad	0x3fc74a0a0f4d7add              # double 0.181947
	.quad	0x3fd9f72f76e6106b              # double 0.40571200000000002
	.quad	0x3fed56191148fda0              # double 0.91676000000000001
	.quad	0x3fd896feb4a6655a              # double 0.384216
	.quad	0x3fd41efb6dca07f6              # double 0.31439099999999998
	.quad	0x3fe5b3f42352eb5f              # double 0.67821699999999996
	.quad	0x3fe8fca42aed1394              # double 0.78083999999999997
	.quad	0x3fdbed5ae1cde5d2              # double 0.43636200000000003
	.quad	0x3fd54d72799a1fd1              # double 0.33285199999999998
	.quad	0x3fe4406e19b90eaa              # double 0.63286500000000001
	.quad	0x3f9e631f8a0902de              # double 0.029675
	.quad	0x3fc049774256bca5              # double 0.12724199999999999
	.quad	0x3f7f6555c52e72da              # double 0.0076649999999999999
	.quad	0x3fed031ad2135dab              # double 0.90662900000000002
	.quad	0x3fd003b3e9a6f827              # double 0.250226
	.quad	0x3fb38359bc33f855              # double 0.076222999999999999
	.quad	0x3fe52656abde3fbc              # double 0.66093000000000002
	.quad	0x3fe99e59f2ba9d1f              # double 0.80057999999999996
	.quad	0x3fc462a1b5c7cd8a              # double 0.15926000000000001
	.quad	0x3fcf1cda2b5a20de              # double 0.24306800000000001
	.quad	0x3fef646cfc829cfe              # double 0.98100900000000002
	.quad	0x3fe14d76ab5807ff              # double 0.54070600000000002
	.quad	0x3fe8f87ad080b674              # double 0.78033200000000002
	.quad	0x3fea5989df1172ef              # double 0.82343
	.quad	0x3fe093532e7b3d8e              # double 0.517984
	.quad	0x3fd4184c271fff7a              # double 0.31398300000000001
	.quad	0x3fd1cdd50a88effe              # double 0.27818799999999999
	.quad	0x3fe442edbb59ddc2              # double 0.63317000000000001
	.quad	0x3feab940fecdd0d9              # double 0.83511400000000002
	.quad	0x3fe5ba450acc0bdd              # double 0.67898800000000004
	.quad	0x3fe4266fd651b0cd              # double 0.62969200000000003
	.quad	0x3fedda57646ae3a4              # double 0.93290300000000003
	.quad	0x3fee1d27c3936827              # double 0.94105899999999998
	.quad	0x3fe06ed02cd39da1              # double 0.51352699999999996
	.quad	0x3fa7e5eaab042529              # double 0.046676000000000002
	.quad	0x3fd7b60ae9680e06              # double 0.37048599999999998
	.quad	0x3fe5858bc59b8024              # double 0.67255200000000004
	.quad	0x3fa355ac03ff6901              # double 0.037762999999999998
	.quad	0x3fe987e7c06e19b9              # double 0.79783999999999999
	.quad	0x3fc2c59fb1e18efc              # double 0.14665600000000001
	.quad	0x3fc4d44dca8e2e2c              # double 0.16272900000000001
	.quad	0x3fe2fe718a86d71f              # double 0.59355999999999998
	.quad	0x3fe53c254a3c6434              # double 0.66359199999999996
	.quad	0x3fe7fe43675ddd2b              # double 0.74978800000000001
	.quad	0x3fe9bd25247cb70b              # double 0.80433900000000003
	.quad	0x3fa00a17b0f6ad71              # double 0.031327000000000001
	.quad	0x3fe4efe2e6ea8544              # double 0.65428299999999995
	.quad	0x3fe3a1c044284dfd              # double 0.61349500000000001
	.quad	0x3feea558ea7ce0fc              # double 0.95768399999999997
	.quad	0x3fd8de19fc2a886a              # double 0.38855600000000001
	.quad	0x3fd1369b9d7fd827              # double 0.26895799999999997
	.quad	0x3fbf608d08919ef9              # double 0.122567
	.quad	0x3fb7800218def417              # double 0.091797000000000004
	.quad	0x3fe1c94f69ca9ef5              # double 0.55582399999999998
	.quad	0x3fd50f5a1016ce79              # double 0.32906200000000002
	.quad	0x3fe426809d495183              # double 0.62970000000000004
	.quad	0x3feae2c55c96030c              # double 0.84018199999999998
	.quad	0x3fed319a415f45e1              # double 0.91230500000000003
	.quad	0x3fc5bbf0dc768dfc              # double 0.169798
	.quad	0x3fdb9695d91ab8e9              # double 0.431066
	.quad	0x3fe0f51efb6dca08              # double 0.529922
	.quad	0x3fe0b9192641b329              # double 0.52259500000000003
	.quad	0x3fde36cdf266ba49              # double 0.47209499999999999
	.quad	0x3fb0f7caa7589efe              # double 0.066281000000000007
	.quad	0x3fd5d084e831ad21              # double 0.34085199999999999
	.quad	0x3fe95d074213a0c7              # double 0.79260600000000003
	.quad	0x3fef38305d95dd4c              # double 0.97560899999999994
	.quad	0x3fea78bdec5f394b              # double 0.82723899999999995
	.quad	0x3feb5a8155d5f56a              # double 0.85479799999999995
	.quad	0x3fe6d44998d045fe              # double 0.71341399999999999
	.quad	0x3fe7280064a9cdc4              # double 0.72363299999999997
	.quad	0x3fd3df15a4acf313              # double 0.31049100000000002
	.quad	0x3fe22602c9081c2e              # double 0.56713999999999998
	.quad	0x3fed8c197e564734              # double 0.92335199999999995
	.quad	0x3fe01331a08bfc22              # double 0.50234299999999998
	.quad	0x3fe42eb80ecfa69c              # double 0.63070300000000001
	.quad	0x3fe17db6e503fb37              # double 0.54659599999999997
	.quad	0x3fcea087ca643cc0              # double 0.23927399999999999
	.quad	0x3fce46cfc829cfdd              # double 0.236536
	.quad	0x3fe4d052934acaff              # double 0.65042999999999995
	.quad	0x3fe053f39d1b2e5a              # double 0.51024800000000003
	.quad	0x3fd3b877ab324852              # double 0.30813400000000002
	.quad	0x3fe5049a9973d9ec              # double 0.65681199999999995
	.quad	0x3fe1af965b20b806              # double 0.55268399999999995
	.quad	0x3fc77cbb3c81908e              # double 0.18349399999999999
	.quad	0x3fee3f5d78811b1e              # double 0.94523500000000005
	.quad	0x3fe12bdc26dce39b              # double 0.53660399999999997
	.quad	0x3fa3ef06b37867f1              # double 0.038933000000000002
	.quad	0x3fe7a493c89f40a3              # double 0.73884000000000005
	.quad	0x3fe14729f59ccfaf              # double 0.539937
	.quad	0x3fddf4be835dedf2              # double 0.46806300000000001
	.quad	0x3fe0ac8605681ecd              # double 0.52105999999999997
	.quad	0x3fe7067f0aa21a72              # double 0.71954300000000004
	.quad	0x3fe0beb399f5dfec              # double 0.52327900000000005
	.quad	0x3fed9c6d1e108c3f              # double 0.92534499999999997
	.quad	0x3feae2cdc011d367              # double 0.84018599999999999
	.quad	0x3fd96fef7c243dcd              # double 0.397457
	.quad	0x3fd56c15d2d01c0d              # double 0.33472200000000002
	.quad	0x3fe22efb2aae2974              # double 0.56823500000000005
	.quad	0x3fe4bd7b2031ceaf              # double 0.64812999999999998
	.quad	0x3fd06709fa54c554              # double 0.25628899999999999
	.quad	0x3faffa1a0cf1800a              # double 0.062454999999999997
	.quad	0x3fe2aee84ad794a7              # double 0.58385100000000001
	.quad	0x3fd4bdcad14a0a0f              # double 0.32408399999999998
	.quad	0x3fd92c6ef3d3a1d3              # double 0.39333699999999999
	.quad	0x3fd907bfe7e1fc09              # double 0.391098
	.quad	0x3fbd158b827fa1a1              # double 0.11361
	.quad	0x3fee10cb295e9e1b              # double 0.93955
	.quad	0x3fc4c37e6f71a7e3              # double 0.162216
	.quad	0x3fe1f14b9cb6848c              # double 0.56070500000000001
	.quad	0x3faad72ffd1dcd70              # double 0.052422999999999997
	.quad	0x3fe054a3c64345d0              # double 0.51033200000000001
	.quad	0x3fe86117720c8cd6              # double 0.76185199999999997
	.quad	0x3fe06eb91b3f20a7              # double 0.51351599999999997
	.quad	0x3fe5150fc71d6063              # double 0.65882099999999999
	.quad	0x3fa224edf6124074              # double 0.035437999999999997
	.quad	0x3fa86c6583e8576d              # double 0.047702000000000001
	.quad	0x3fe4dadfb506dd6a              # double 0.65171800000000002
	.quad	0x3fe7939c94f69caa              # double 0.73676900000000001
	.quad	0x3fefdab9f559b3d0              # double 0.99544999999999995
	.quad	0x3fe0ef06b37867f1              # double 0.52917800000000004
	.quad	0x3fecf79420b3d4ae              # double 0.90522199999999997
	.quad	0x3fe8e631f8a0902e              # double 0.77810000000000001
	.quad	0x3fb2ddce7cd03537              # double 0.073696999999999999
	.quad	0x3fee8dac258d5843              # double 0.95479400000000003
	.quad	0x3fecc0f88333fc87              # double 0.89855600000000002
	.quad	0x3fde0192a737110e              # double 0.46884599999999998
	.quad	0x3fd3464dc22ab25b              # double 0.30116599999999999
	.quad	0x3fe9006af46aa088              # double 0.78130100000000002
	.quad	0x3fc242f1ed17c5ef              # double 0.14266799999999999
	.quad	0x3fdc9dcb5781c715              # double 0.447131
	.quad	0x3fe395aaf78feef6              # double 0.61202000000000001
	.quad	0x3fea0f9f44d44567              # double 0.81440699999999999
	.quad	0x3fe80333fc86cebc              # double 0.75039100000000003
	.quad	0x3fea9784ec636b09              # double 0.83099599999999996
	.quad	0x3fe9eba8c586876e              # double 0.81001699999999999
	.quad	0x3fdb08893b7d8490              # double 0.42239599999999999
	.quad	0x3fc11d9b1b79d90a              # double 0.133716
	.quad	0x3fd71a11233df2aa              # double 0.36096600000000001
	.quad	0x3fed36f3b213e3e3              # double 0.91295800000000005
	.quad	0x3fe685d744f5d356              # double 0.70383799999999996
	.quad	0x3fc2a3f034b0e1b5              # double 0.14562800000000001
	.quad	0x3fe0d1116a8b8f15              # double 0.52552100000000002
	.quad	0x3fe2b4ca0c282c6f              # double 0.58456900000000001
	.quad	0x3fec19ed7c6fbd27              # double 0.87816499999999997
	.quad	0x3fe3b4ce3de6149c              # double 0.61582099999999995
	.quad	0x3fd3fd2e94680171              # double 0.31232799999999999
	.quad	0x3fd5bd273d5bab22              # double 0.33967000000000003
	.quad	0x3fe92f8bdec5f395              # double 0.78705400000000003
	.quad	0x3feaba83f4eca687              # double 0.83526800000000001
	.quad	0x3fecd028a1dfb939              # double 0.90041000000000004
	.quad	0x3fae23d0bfa09460              # double 0.058867000000000003
	.quad	0x3fe11b994e1a3f46              # double 0.53461899999999996
	.quad	0x3fe7780346dc5d64              # double 0.73340000000000005
	.quad	0x3fd7f284167a95c8              # double 0.37417699999999998
	.quad	0x3fd1422036006d0d              # double 0.26966099999999998
	.quad	0x3f5858bc59b8023a              # double 0.0014859999999999999
	.quad	0x3fd4d9231c64ba95              # double 0.32575300000000001
	.quad	0x3fe27ae147ae147b              # double 0.57750000000000001
	.quad	0x3fda02ababead4f6              # double 0.40641300000000002
	.quad	0x3fd2a2d2fe3f35a0              # double 0.291188
	.quad	0x3fe55f2452c59fb2              # double 0.66786400000000001
	.quad	0x3fdbce0fc2eba27b              # double 0.434452
	.quad	0x3fe364e48626f60e              # double 0.60606599999999999
	.quad	0x3fd8b7995ee136e7              # double 0.38620599999999999
	.quad	0x3fea702c4d65e460              # double 0.82619299999999995
	.quad	0x3fe12eec7c957cd4              # double 0.53697799999999996
	.quad	0x3fef9695d91ab8e9              # double 0.987132
	.quad	0x3fe138cda6e75ff6              # double 0.538184
	.quad	0x3fbd113836a832ba              # double 0.11354400000000001
	.quad	0x3fd421ab4b72c519              # double 0.31455499999999997
	.quad	0x3fe59ab6d00b45ae              # double 0.67513599999999996
	.quad	0x3fd57396d0917d6b              # double 0.33517999999999998
	.quad	0x3fe1c7e49b1fab97              # double 0.55565100000000001
	.quad	0x3fedcec84f8f8a4c              # double 0.93149199999999998
	.quad	0x3fd0af102363b257              # double 0.260685
	.quad	0x3fc7a6aca7935760              # double 0.18477399999999999
	.quad	0x3fe41c6f36ef8056              # double 0.628471
	.quad	0x3fa36e0d23d4f15e              # double 0.037948999999999997
	.quad	0x3fcb5d35653c9abb              # double 0.213782
	.quad	0x3feb307af20ea5b5              # double 0.84966799999999998
	.quad	0x3fd2aba387592535              # double 0.29172599999999999
	.quad	0x3fd247dc37a3db3c              # double 0.285636
	.quad	0x3feb176145953587              # double 0.84660400000000002
	.quad	0x3feb6175d13d74d6              # double 0.85564700000000005
	.quad	0x3fe354cb9ecf6380              # double 0.604101
	.quad	0x3fba5e4606748e47              # double 0.103001
	.quad	0x3feb3b9496249a13              # double 0.85102299999999997
	.quad	0x3fef7a7221858bc6              # double 0.98369700000000004
	.quad	0x3fe8599ed7c6fbd2              # double 0.76093999999999995
	.quad	0x3fd6c1376d549731              # double 0.355543
	.quad	0x3f8363f572de43ee              # double 0.0094680000000000007
	.quad	0x3fd5e41919ac7970              # double 0.34204699999999999
	.quad	0x3fe62b9d3cbc48f1              # double 0.692824
	.quad	0x3fe7198288051c9f              # double 0.72186399999999995
	.quad	0x3fecafc69728a611              # double 0.89645699999999995
	.quad	0x3fe76dfe75bc44bf              # double 0.73217699999999997
	.quad	0x3fd4344806290eed              # double 0.315691
	.quad	0x3fe5db9c7368ad69              # double 0.68305800000000005
	.quad	0x3fc28997c3d68406              # double 0.14482400000000001
	.quad	0x3fcbeee525892685              # double 0.21822800000000001
	.quad	0x3fa5b6a1e81cb46c              # double 0.042409000000000002
	.quad	0x3febd37c1376d549              # double 0.86956599999999995
	.quad	0x3fe015421c044285              # double 0.50259500000000001
	.quad	0x3fecd8127b2cc708              # double 0.90137599999999996
	.quad	0x3fcb99806f262889              # double 0.21562200000000001
	.quad	0x3fec69ccb7d41744              # double 0.887915
	.quad	0x3fc75c52e72da123              # double 0.182505
	.quad	0x3feae8c26138fffc              # double 0.84091300000000002
	.quad	0x3fe1320535c9e668              # double 0.53735599999999994
	.quad	0x3fe5a888b545c78a              # double 0.67682299999999995
	.quad	0x3fec5579af1886e0              # double 0.88543400000000005
	.quad	0x3fe8fd36f7e3d1cc              # double 0.78090999999999999
	.quad	0x3fcce4b018611fd6              # double 0.22572900000000001
	.quad	0x3fe789374bc6a7f0              # double 0.73550000000000004
	.quad	0x3fd663d3e4ef0282              # double 0.34984300000000002
	.quad	0x3fe2f00ef1348b22              # double 0.591804
	.quad	0x3fe88d9b5e95b78d              # double 0.76728600000000002
	.quad	0x3fe21b62c77574f7              # double 0.56584299999999998
	.quad	0x3fe4bc77143393ab              # double 0.64800599999999997
	.quad	0x3fb13250b524399b              # double 0.067173999999999998
	.quad	0x3f7aa821f2990f30              # double 0.0065079999999999999
	.quad	0x3fe84039abf33871              # double 0.75783999999999996
	.quad	0x3fc672e275ab7dc8              # double 0.17538100000000001
	.quad	0x3fed143393ab430f              # double 0.90871599999999997
	.quad	0x3fd3393682730c67              # double 0.300367
	.quad	0x3fec2de00d1b7176              # double 0.88060000000000005
	.quad	0x3fee76b5d462c344              # double 0.95199100000000003
	.quad	0x3f77b30f8c64fdb1              # double 0.0057860000000000003
	.quad	0x3fe51d5a187a4a49              # double 0.659833
	.quad	0x3fe3224463065f96              # double 0.59793300000000005
	.quad	0x3fe2dd65a14488c6              # double 0.58952599999999999
	.quad	0x3fc449a133c1ce6c              # double 0.158497
	.quad	0x3fd5c18b502ababf              # double 0.33993800000000002
	.quad	0x3fe45e7a743a6480              # double 0.63653300000000002
	.quad	0x3fefa61bf37b8d3f              # double 0.98902699999999998
	.quad	0x3fe1c77bbf93ff26              # double 0.55560100000000001
	.quad	0x3fcb8f7985271bce              # double 0.21531600000000001
	.quad	0x3fdb49cf56eac860              # double 0.42637999999999998
	.quad	0x3fe15c9e6687f456              # double 0.54255600000000004
	.quad	0x3fb5df3300de4c51              # double 0.085436999999999999
	.quad	0x3fe974a98aa8650e              # double 0.79549099999999995
	.quad	0x3fb83b70ef566491              # double 0.094657000000000005
	.quad	0x3fb54c55432873bd              # double 0.083196000000000006
	.quad	0x3feb22163fdd65a1              # double 0.84791099999999997
	.quad	0x3fd8aada33bd9cae              # double 0.38542799999999999
	.quad	0x3fe14af709b738e7              # double 0.54040100000000002
	.quad	0x3fef9c99285a921d              # double 0.98786600000000002
	.quad	0x3fd9ddb1209edbf9              # double 0.40415600000000002
	.quad	0x3fc2e93e1c9b413a              # double 0.14774300000000001
	.quad	0x3fec76f2a5a469d7              # double 0.88951999999999998
	.quad	0x3fc0829cfdd22856              # double 0.12898599999999999
	.quad	0x3fecff822bbecaac              # double 0.90619000000000005
	.quad	0x3fdf9abb01c92ddc              # double 0.49381900000000001
	.quad	0x3fc63eea209aaa3b              # double 0.17379500000000001
	.quad	0x3feff9c1f85d744f              # double 0.99923799999999995
	.quad	0x3fe5bb46fdeb52ca              # double 0.67911100000000002
	.quad	0x3fe6b60ae9680e06              # double 0.70972199999999996
	.quad	0x3fe08abf76a2f48c              # double 0.51693699999999998
	.quad	0x3fea41bda5119ce0              # double 0.82052499999999994
	.quad	0x3fbcfb86f47b677f              # double 0.11321299999999999
	.quad	0x3fdfc4f7ec3547e0              # double 0.49639699999999998
	.quad	0x3feb0fb43d89ce4a              # double 0.84566699999999995
	.quad	0x3fee50374ff865d8              # double 0.94729200000000002
	.quad	0x3fefa06e9ff0cbb0              # double 0.98833400000000005
	.quad	0x3fe630c4588a04d1              # double 0.69345299999999999
	.quad	0x3fcd309c7ffde721              # double 0.228046
	.quad	0x3fdc733a8a3f8983              # double 0.44453300000000001
	.quad	0x3fe5837b4a2339c1              # double 0.67230000000000001
	.quad	0x3fbdd2e0e30446b7              # double 0.11649900000000001
	.quad	0x3fea0e1b4bb5e0f8              # double 0.814222
	.quad	0x3fd2860999dcb578              # double 0.28943099999999999
	.quad	0x3feeae33eff19503              # double 0.95876499999999997
	.quad	0x3fced373affb04ee              # double 0.24082799999999999
	.quad	0x3fe21dbec2480e8d              # double 0.56613100000000005
	.quad	0x3fcd9f01b866e43b              # double 0.23141500000000001
	.quad	0x3fef0b178b370047              # double 0.97010399999999996
	.quad	0x3fed05b39e279dd4              # double 0.90694600000000002
	.quad	0x3fe18f40e5a35d68              # double 0.54873700000000003
	.quad	0x3fd40cfe154434e3              # double 0.31329299999999999
	.quad	0x3fe3bb3636f3b214              # double 0.61660300000000001
	.quad	0x3fc00c62e4d1a650              # double 0.12537799999999999
	.quad	0x3fe4141c8216c615              # double 0.62745499999999998
	.quad	0x3fedcb3a2595bbbf              # double 0.93105800000000005
	.quad	0x3fd3627bf61aa3f0              # double 0.30288599999999999
	.quad	0x3fb2dab9f559b3d0              # double 0.073649999999999993
	.quad	0x3fad9a30984e3fff              # double 0.057817
	.quad	0x3fef0b32ce89656f              # double 0.970117
	.quad	0x3fe57694467381d8              # double 0.67072500000000002
	.quad	0x3fd9ba4d6e47dc38              # double 0.40199600000000002
	.quad	0x3fe649949e8815e4              # double 0.69648200000000005
	.quad	0x3fa5c4a83b1d0c80              # double 0.042515999999999998
	.quad	0x3feb1c864883fd50              # double 0.84723199999999999
	.quad	0x3fdf8cb07d0aed9a              # double 0.49296200000000001
	.quad	0x3fed01a79fec99f2              # double 0.90645200000000004
	.quad	0x3fa553ac4f7ec354              # double 0.041653999999999997
	.quad	0x3fd554ac29bf162b              # double 0.33329300000000001
	.quad	0x3fd16adf71eafee7              # double 0.272148
	.quad	0x3fe036b4c7f34938              # double 0.50667799999999996
	.quad	0x3feab122b7baecd0              # double 0.83412299999999995
	.quad	0x3fe4d4845132f87b              # double 0.65094200000000002
	.quad	0x3fb064ece9a2c669              # double 0.06404
	.quad	0x3fc9872f33ca31e8              # double 0.199438
	.quad	0x3feadff609dcf894              # double 0.839839
	.quad	0x3fe3acb85a4f00ef              # double 0.61483399999999999
	.quad	0x3f8c957cd466f502              # double 0.013957000000000001
	.quad	0x3fed12ad81adea89              # double 0.90852999999999995
	.quad	0x3fe2d32e7b3d8e00              # double 0.588279
	.quad	0x3fcbd2c7b890d5a6              # double 0.21737000000000001
	.quad	0x3fe403a322af5771              # double 0.625444
	.quad	0x3feb63b46fdeb52d              # double 0.85592100000000004
	.quad	0x3fdc717df19d66ae              # double 0.44442700000000002
	.quad	0x3feaf5c4a83b1d0d              # double 0.84250100000000006
	.quad	0x3fe3aed352220bc4              # double 0.61509100000000005
	.quad	0x3fd872b020c49ba6              # double 0.38200000000000001
	.quad	0x3fca8f75536933a0              # double 0.20750299999999999
	.quad	0x3fe67fac1d29dc72              # double 0.70308499999999996
	.quad	0x3fd7ce7cd0353719              # double 0.37197799999999998
	.quad	0x3fc38f47304039ac              # double 0.15281
	.quad	0x3fea726d04e618ce              # double 0.82646799999999998
	.quad	0x3fecd2a62aa1943a              # double 0.90071400000000001
	.quad	0x3fe05d462c343b71              # double 0.51138600000000001
	.quad	0x3fe97143393ab431              # double 0.795076
	.quad	0x3fe4ccd31769a911              # double 0.650003
	.quad	0x3fd36f47b677f6b2              # double 0.30366700000000002
	.quad	0x3fefb7eb28d8665e              # double 0.991201
	.quad	0x3f76a8b8f14db595              # double 0.0055319999999999996
	.quad	0x3fdaf6cefed63455              # double 0.42131400000000002
	.quad	0x3fea0b4e11dbca97              # double 0.81388000000000005
	.quad	0x3fba0a2014727dcc              # double 0.101717
	.quad	0x3feb3c48f10a99b7              # double 0.851109
	.quad	0x3fd631832fcac8e7              # double 0.34677200000000002
	.quad	0x3fa901d19157abb9              # double 0.048842000000000003
	.quad	0x3fdb13f8db489093              # double 0.42309400000000003
	.quad	0x3faf7446f9b994e2              # double 0.061434000000000002
	.quad	0x3fef0f1d3ed527e5              # double 0.97059499999999998
	.quad	0x3fe1beea209aaa3b              # double 0.55455500000000002
	.quad	0x3fdae94680171194              # double 0.42048799999999997
	.quad	0x3fe42faf85942917              # double 0.63082099999999997
	.quad	0x3fe8a86b59146e4c              # double 0.77055899999999999
	.quad	0x3fe69bed30f062d4              # double 0.706534
	.quad	0x3fe46034f3fd933e              # double 0.63674399999999998
	.quad	0x3fe823d2d87f8876              # double 0.75437299999999996
	.quad	0x3fceb2745bf26f1e              # double 0.23982100000000001
	.quad	0x3fe539ef0f16f438              # double 0.66332199999999997
	.quad	0x3fe0a03c4b09e98e              # double 0.51956000000000002
	.quad	0x3fcbd2e0e30446b7              # double 0.21737300000000001
	.quad	0x3fc645803cd141a7              # double 0.17399600000000001
	.quad	0x3fdc1c9f72f76e61              # double 0.439247
	.quad	0x3fe493404ea4a8c1              # double 0.64297499999999996
	.quad	0x3fdcc9fb6134ce3e              # double 0.44982800000000001
	.quad	0x3fd775579af1886e              # double 0.366537
	.quad	0x3fda0214ad362e90              # double 0.40637699999999999
	.quad	0x3fdb461b6d43d039              # double 0.42615399999999998
	.quad	0x3febf3083558a761              # double 0.873417
	.quad	0x3fc9132f87ad080b              # double 0.19589799999999999
	.quad	0x3fe6cda6e75ff60a              # double 0.71260400000000002
	.quad	0x3fcccd423d9231c6              # double 0.22501399999999999
	.quad	0x3fead0e560418937              # double 0.83799999999999997
	.quad	0x3fe8a7f8012dfd69              # double 0.77050399999999997
	.quad	0x3fbe9f9ce8d972cd              # double 0.11962299999999999
	.quad	0x3fd3ccf6be37de94              # double 0.30938500000000002
	.quad	0x3fa87229e90795f6              # double 0.047745999999999997
	.quad	0x3fe1197e56473472              # double 0.534362
	.quad	0x3fe6cb3e5753a3ec              # double 0.71231
	.quad	0x3fd1299d883ba344              # double 0.26816499999999999
	.quad	0x3f9332f01754b05b              # double 0.018748999999999998
	.quad	0x3fdac07ee0b0af60              # double 0.41799900000000001
	.quad	0x3fdedc8fb86f47b6              # double 0.48221199999999997
	.quad	0x3fdf7e06961c3697              # double 0.49206699999999998
	.quad	0x3fe58c4bd33d2956              # double 0.67337599999999997
	.quad	0x3fe07403dddb120a              # double 0.51416200000000001
	.quad	0x3fec0c0f01fb82c3              # double 0.87647200000000003
	.quad	0x3fd75464dc22ab26              # double 0.36452600000000002
	.quad	0x3faebd6e8af81627              # double 0.060039000000000002
	.quad	0x3fe19d7dbf487fcc              # double 0.55047500000000005
	.quad	0x3fd88d8a979e16d7              # double 0.38363900000000001
	.quad	0x3fea7c6759ab6d01              # double 0.82768600000000003
	.quad	0x3fceba3875925354              # double 0.24005799999999999
	.quad	0x3fe9c22ccb3a2596              # double 0.80495300000000003
	.quad	0x3fd9c4fc1df3300e              # double 0.40264800000000001
	.quad	0x3fecc115df6555c5              # double 0.89856999999999998
	.quad	0x3fe905985ad538ac              # double 0.78193299999999998
	.quad	0x3fd8a41e57d9dba9              # double 0.385017
	.quad	0x3fef0bd87b56b873              # double 0.97019599999999994
	.quad	0x3fd783c6c97d8cf4              # double 0.36741800000000002
	.quad	0x3fcbe81cb46bacf7              # double 0.21802099999999999
	.quad	0x3fc39bdc69f8c21e              # double 0.153194
	.quad	0x3feb501c0ca600b0              # double 0.85352899999999998
	.quad	0x3fecad72ffd1dcd7              # double 0.896173
	.quad	0x3fb444ae85b9e8c4              # double 0.079172999999999993
	.quad	0x3fc93fe9fadafd11              # double 0.19726299999999999
	.quad	0x3fea37e6f71a7e31              # double 0.81932400000000005
	.quad	0x3fd7944ed6fda837              # double 0.368427
	.quad	0x3fe48c1db0142f62              # double 0.64210400000000001
	.quad	0x3fd8f559b3d07c85              # double 0.38997500000000002
	.quad	0x3fee69707182235b              # double 0.95037099999999997
	.quad	0x3fcb58c8eef1bac3              # double 0.213647
	.quad	0x3fe5fc829cfdd228              # double 0.68707399999999996
	.quad	0x3fb38bac710cb296              # double 0.076350000000000001
	.quad	0x3fe7ae83a109d063              # double 0.74005299999999996
	.quad	0x3f90b242070b8cfc              # double 0.016305
	.quad	0x3fc2031487768167              # double 0.14071900000000001
	.quad	0x3fe489a671ef30a5              # double 0.64180300000000001
	.quad	0x3fe9cef240fa9c13              # double 0.80651200000000001
	.quad	0x3fb257d9dba908a2              # double 0.071652999999999994
	.quad	0x3fe9e56abde3fbbd              # double 0.80925499999999995
	.quad	0x3fda70f3882278d1              # double 0.41314400000000001
	.quad	0x3fe3e3a9f383f0bb              # double 0.62154100000000001
	.quad	0x3fd8374794ea0770              # double 0.37837399999999999
	.quad	0x3fe1818a43bb40b3              # double 0.54706299999999997
	.quad	0x3fe9bf26f1dc50ce              # double 0.80458399999999997
	.quad	0x3fe71ed7c6fbd274              # double 0.72251500000000002
	.quad	0x3fd3db48909289db              # double 0.31025900000000001
	.quad	0x3febe501e2584f4c              # double 0.87170499999999995
	.quad	0x3fed8ae31d712a0f              # double 0.92320400000000002
	.quad	0x3fd1a36199780baa              # double 0.27559699999999998
	.quad	0x3fd3d4e4c942d491              # double 0.30986900000000001
	.quad	0x3fe16481f53825e1              # double 0.54351899999999997
	.quad	0x3fefea50d6b228dd              # double 0.99735300000000004
	.quad	0x3fd2dcb9a9da597d              # double 0.29472199999999998
	.quad	0x3fdf7c6759ab6d01              # double 0.49196800000000002
	.quad	0x3fe3f5e2046c764b              # double 0.62376500000000001
	.quad	0x3fe80de6ddf00abf              # double 0.75169699999999995
	.quad	0x3fdca24894c447c3              # double 0.447405
	.quad	0x3fec8387df5cf249              # double 0.89105599999999996
	.quad	0x3fe36006d0d4994a              # double 0.60547200000000001
	.quad	0x3fd916f0068db8bb              # double 0.39202500000000001
	.quad	0x3fcc9e98dcdb37ca              # double 0.22359000000000001
	.quad	0x3fdb127b2cc70868              # double 0.42300300000000002
	.quad	0x3fee814d72799a20              # double 0.95328400000000002
	.quad	0x3fe970eb24a6a876              # double 0.79503400000000002
	.quad	0x3fd5f9b56323bbc7              # double 0.343366
	.quad	0x3fd0e10060780fdc              # double 0.263733
	.quad	0x3fdd1f53825e13b2              # double 0.45503700000000002
	.quad	0x3feef7fcfc3f811f              # double 0.96777199999999996
	.quad	0x3fcf62d83c6c97d9              # double 0.24520400000000001
	.quad	0x3fb324e9c4545847              # double 0.074782000000000001
	.quad	0x3fe7a3cc8de2ac32              # double 0.73874499999999999
	.quad	0x3feb9e55c0fcb4f2              # double 0.86307800000000001
	.quad	0x3fe37e414e7ee914              # double 0.60916199999999998
	.quad	0x3fbdd31337eb28d8              # double 0.11650199999999999
	.quad	0x3fd7f416bdb1a6d7              # double 0.37427300000000002
	.quad	0x3fec98f81e8a2ec3              # double 0.89367300000000005
	.quad	0x3fdcb14a90470a81              # double 0.44832100000000003
	.quad	0x3febcaf0bf1a5ca3              # double 0.86852300000000004
	.quad	0x3fd79307af20ea5b              # double 0.36834899999999998
	.quad	0x3fd663baba7b9171              # double 0.34983700000000001
	.quad	0x3feda9e0a41a261c              # double 0.926987
	.quad	0x3fd353c9abb01c93              # double 0.30198900000000001
	.quad	0x3fe5f89613d31b9b              # double 0.68659499999999996
	.quad	0x3fde1376d5497311              # double 0.46993800000000002
	.quad	0x3fddaee2003ab863              # double 0.46379900000000002
	.quad	0x3f7420b3d4ae429e              # double 0.004914
	.quad	0x3fbd83d790752daa              # double 0.11529300000000001
	.quad	0x3fd30eb24a6a875d              # double 0.29777199999999998
	.quad	0x3fe974080f98fa37              # double 0.79541399999999995
	.quad	0x3fde18efbb0e5e68              # double 0.47027200000000002
	.quad	0x3fbf2acfb762d83c              # double 0.12174699999999999
	.quad	0x3f66052502eec7c9              # double 0.0026879999999999999
	.quad	0x3faa539756c93a71              # double 0.051418999999999999
	.quad	0x3febec3760bf5d79              # double 0.87258500000000006
	.quad	0x3fe00795f676ea42              # double 0.50092599999999998
	.quad	0x3fe90f47304039ac              # double 0.783115
	.quad	0x3fa3f61aa3f034b1              # double 0.038987000000000001
	.quad	0x3fd33311a543f1c7              # double 0.29999199999999998
	.quad	0x3fe4c477ff151e75              # double 0.64898299999999998
	.quad	0x3fccf7121ab4b72c              # double 0.22628999999999999
	.quad	0x3faa756861e92924              # double 0.051677000000000001
	.quad	0x3fc3f1a5ca29845e              # double 0.15581200000000001
	.quad	0x3fd1b97353b4b2fb              # double 0.27694400000000002
	.quad	0x3feb7345069a4df4              # double 0.85782099999999994
	.quad	0x3fe53e8dda48b652              # double 0.66388599999999998
	.quad	0x3fcf40f66a550870              # double 0.24417
	.quad	0x3fc8acd9e83e425b              # double 0.192775
	.quad	0x3f88def416bdb1a7              # double 0.012144
	.quad	0x3feebef8ceb356da              # double 0.960812
	.quad	0x3fc5c4eb56fb8f58              # double 0.170072
	.quad	0x3fe9e7ba237cdcca              # double 0.80953699999999995
	.quad	0x3fc819f3c70c996b              # double 0.18829199999999999
	.quad	0x3fe861672324c836              # double 0.76188999999999996
	.quad	0x3fede38a7e73a366              # double 0.93402600000000002
	.quad	0x3fd214d2f5dbb9d0              # double 0.28252100000000002
	.quad	0x3fe19f46ed245b29              # double 0.55069299999999999
	.quad	0x3fd9db0574b40703              # double 0.40399299999999999
	.quad	0x3f78372e6a76965f              # double 0.0059119999999999997
	.quad	0x3fe140d2c386d2ed              # double 0.53916299999999995
	.quad	0x3fd19717df19d66b              # double 0.27484700000000001
	.quad	0x3feb7caa7589efd8              # double 0.85896799999999995
	.quad	0x3fef76e6106ab14f              # double 0.98326400000000002
	.quad	0x3fcb4a98aa8650e7              # double 0.21321399999999999
	.quad	0x3fea33d6c7219221              # double 0.818828
	.quad	0x3fbcf54d1e96c3fc              # double 0.113118
	.quad	0x3fefa645e4e69f06              # double 0.98904700000000001
	.quad	0x3fa10880d801b435              # double 0.033267999999999999
	.quad	0x3fe0d3198288051d              # double 0.52576900000000004
	.quad	0x3fcc2f2f9873ffac              # double 0.22019
	.quad	0x3fb86940357a3550              # double 0.095355999999999996
	.quad	0x3fc8e88df37329c3              # double 0.19459699999999999
	.quad	0x3fe7b85c67dfe32a              # double 0.741255
	.quad	0x3fd3fdb09a671ef3              # double 0.312359
	.quad	0x3fef6db2f661f18d              # double 0.98214100000000004
	.quad	0x3fd2d40ee06d9381              # double 0.29419299999999998
	.quad	0x3fe45c054ef459da              # double 0.63623300000000005
	.quad	0x3fef56f544bb1af4              # double 0.97936500000000004
	.quad	0x3fc9fe32a0663c75              # double 0.20307
	.quad	0x3fcc98aa8650e779              # double 0.223409
	.quad	0x3fec7c2224edf612              # double 0.89015299999999997
	.quad	0x3fd653c579f23465              # double 0.34886299999999998
	.quad	0x3fe15579af1886e0              # double 0.54168400000000005
	.quad	0x3fe0c15097c80842              # double 0.52359800000000001
	.quad	0x3fd1df5cf2495e18              # double 0.27925800000000001
	.quad	0x3fe70ebaade657b8              # double 0.72054799999999997
	.quad	0x3feb408b75ea67e8              # double 0.85162899999999997
	.quad	0x3fda86ec17ebaf10              # double 0.41448499999999999
	.quad	0x3fd44ee392e1ef74              # double 0.31731500000000001
	.quad	0x3fe82250f840181e              # double 0.754189
	.quad	0x3fd945ed4a1ad645              # double 0.39489299999999999
	.quad	0x3f81db445ed4a1ad              # double 0.0087189999999999993
	.quad	0x3fe7c8387df5cf25              # double 0.74319100000000005
	.quad	0x3f9716d2aa5c5f7c              # double 0.022547999999999999
	.quad	0x3fbc980b242070b9              # double 0.111695
	.quad	0x3fea8afc47e49b20              # double 0.82946600000000003
	.quad	0x3fe92fcce1c58256              # double 0.78708500000000003
	.quad	0x3fe561fe21d96e9c              # double 0.66821200000000003
	.quad	0x3f85ad96a6a0125a              # double 0.010585000000000001
	.quad	0x3fdc89ce4a7b4e55              # double 0.445911
	.quad	0x3f95a9a8049667b6              # double 0.021155
	.quad	0x3fdae9142b302f73              # double 0.42047600000000002
	.quad	0x3fe5ce5f7403dddb              # double 0.68144199999999999
	.quad	0x3fde195464dc22ab              # double 0.47029599999999999
	.quad	0x3fe125e13b18dac2              # double 0.53587399999999996
	.quad	0x3fe93825e13b18db              # double 0.78810400000000003
	.quad	0x3fe38cb295e9e1b1              # double 0.61092500000000005
	.quad	0x3fd05bff04577d95              # double 0.25561499999999998
	.quad	0x3fd57314ca925fe9              # double 0.33514899999999997
	.quad	0x3fda4267839cd812              # double 0.41030299999999997
	.quad	0x3fdc1c864883fd50              # double 0.43924099999999999
	.quad	0x3fdcc73abc947065              # double 0.44966
	.quad	0x3fd5ddd6e04c0592              # double 0.341665
	.quad	0x3fd38fb43d89ce4a              # double 0.30564599999999997
	.quad	0x3fc8030c23fab10c              # double 0.18759300000000001
	.quad	0x3fcf4751ce28ed5f              # double 0.244364
	.quad	0x3fe6090d5a5b9629              # double 0.68860500000000002
	.quad	0x3fd55d851654d61b              # double 0.33383299999999999
	.quad	0x3fb4daf4adbc664d              # double 0.081465999999999997
	.quad	0x3fef9817b95a2941              # double 0.98731599999999997
	.quad	0x3fee919695d91ab9              # double 0.95527200000000001
	.quad	0x3fdd30728e92d55a              # double 0.45608199999999999
	.quad	0x3fe40e0c9d9d3459              # double 0.62671500000000002
	.quad	0x3fe5175f2cb64170              # double 0.65910299999999999
	.quad	0x3fd8fbdf090f733b              # double 0.39037300000000003
	.quad	0x3fd677fae3608d09              # double 0.35107300000000002
	.quad	0x3fd332fcac8e68e4              # double 0.299987
	.quad	0x3fc28f190d173fb8              # double 0.14499200000000001
	.quad	0x3fdddba0a5269596              # double 0.46653
	.quad	0x3fe4516b97fe8ee7              # double 0.63493900000000003
	.quad	0x3fe6f049a9973d9f              # double 0.71683200000000002
	.quad	0x3fbe56366d7a56de              # double 0.118503
	.quad	0x3fe62bcf91a32b13              # double 0.69284800000000002
	.quad	0x3fcde6601bc98a22              # double 0.233593
	.quad	0x3f255d5f56a7ac82              # double 1.63E-4
	.quad	0x3fdcaf3a14cec41e              # double 0.44819500000000001
	.quad	0x3fdbc5c13fd0d068              # double 0.43394500000000003
	.quad	0x3fed9f644955b467              # double 0.92570699999999995
	.quad	0x3fe344b09e98dcdb              # double 0.60213499999999998
	.quad	0x3feb474d9c6b0532              # double 0.85245400000000005
	.quad	0x3fea91a32b12d341              # double 0.83027799999999996
	.quad	0x3feb078fabda0dfe              # double 0.84467300000000001
	.quad	0x3f936694898f605b              # double 0.018946000000000001
	.quad	0x3fe98164840e171a              # double 0.797045
	.quad	0x3fd72db61bb05faf              # double 0.36216500000000001
	.quad	0x3fe54d9e83e425af              # double 0.66572500000000001
	.quad	0x3fe1373f316e3715              # double 0.53799399999999997
	.quad	0x3fe35b78cc9a77e6              # double 0.60491600000000001
	.quad	0x3fe6de4606748e47              # double 0.71463299999999996
	.quad	0x3fe02a0cae642bfa              # double 0.50513300000000005
	.quad	0x3fe8c59b8023a6ce              # double 0.77412199999999998
	.quad	0x3fe75712a0ec7432              # double 0.729379
	.quad	0x3fee52c9d16fc9bc              # double 0.94760599999999994
	.quad	0x3fe8a055757d5a9f              # double 0.76957200000000003
	.quad	0x3fdc550ca1cef241              # double 0.442691
	.quad	0x3fd25d91ab8e8ea4              # double 0.28696100000000002
	.quad	0x3fbd63a9f383f0bb              # double 0.114802
	.quad	0x3fe11fa97e132b56              # double 0.53511500000000001
	.quad	0x3fe075989df1172f              # double 0.51435500000000001
	.quad	0x3fc9d32c625e99e9              # double 0.20175699999999999
	.quad	0x3fb2cefed634549b              # double 0.073470999999999995
	.quad	0x3fc83ba3443d46b2              # double 0.18931999999999999
	.quad	0x3fdfeb9a176ddacf              # double 0.498755
	.quad	0x3fd4c586876e1deb              # double 0.32455600000000001
	.quad	0x3fe92715831f03d1              # double 0.78602099999999997
	.quad	0x3fd69029ae4f3344              # double 0.352549
	.quad	0x3fcd2a51e321a2e8              # double 0.227854
	.quad	0x3fd3ac1d29dc725c              # double 0.30737999999999999
	.quad	0x3febff6b1a2a4db1              # double 0.87492899999999996
	.quad	0x3fe79b4bb5e0f7fd              # double 0.737707
	.quad	0x3fe89d495182a993              # double 0.76919999999999999
	.quad	0x3fd8ba83f4eca687              # double 0.38638400000000001
	.quad	0x3fb508e581cf7879              # double 0.082167000000000004
	.quad	0x3fed6b9e492bc2fc              # double 0.91938699999999995
	.quad	0x3fbc53d20f2becee              # double 0.110654
	.quad	0x3fe977dd872f33ca              # double 0.79588199999999998
	.quad	0x3fedffa7eb6bf445              # double 0.93745800000000001
	.quad	0x3fa5df6555c52e73              # double 0.042720000000000001
	.quad	0x3fd1b7e4de3b8a1a              # double 0.27684900000000001
	.quad	0x3f90b6b6e0d23d4f              # double 0.016322
	.quad	0x3fdb9856a37ac3eb              # double 0.43117299999999997
	.quad	0x3fd9ed20296b3355              # double 0.40509800000000001
	.quad	0x3fe8c536d655e28b              # double 0.77407400000000004
	.quad	0x3fce2089e34330d7              # double 0.23536799999999999
	.quad	0x3f2f31f46ed245b3              # double 2.3800000000000001E-4
	.quad	0x3fccdee34fc610f1              # double 0.225552
	.quad	0x3fd9b3461309c800              # double 0.40156700000000001
	.quad	0x3fc21882adc4c9c9              # double 0.141373
	.quad	0x3fe7421187e7c06e              # double 0.72681499999999999
	.quad	0x3fe4717df19d66ae              # double 0.63885400000000003
	.quad	0x3fccff8ec0f88334              # double 0.226549
	.quad	0x3fbae297396d0918              # double 0.10502
	.quad	0x3fed5c422036006d              # double 0.91751199999999999
	.quad	0x3fe64dd93c46d82c              # double 0.69700300000000004
	.quad	0x3fe15a16616b54e3              # double 0.54224700000000003
	.quad	0x3fed29c12f09d8c7              # double 0.91134700000000002
	.quad	0x3fe69b21c475e636              # double 0.70643699999999998
	.quad	0x3fee9d798d8a979e              # double 0.95672299999999999
	.quad	0x3fe6a5c5f7c6759b              # double 0.70773600000000003
	.quad	0x3fcbafd976ff3ade              # double 0.216304
	.quad	0x3f95069a4df47f99              # double 0.020532999999999999
	.quad	0x3fd0ff4ba51a005c              # double 0.26558199999999998
	.quad	0x3fd70eed02cd39da              # double 0.360286
	.quad	0x3f3355475a31a4be              # double 2.9500000000000001E-4
	.quad	0x3fb8d940789613d3              # double 0.097064999999999999
	.quad	0x3fd959146e4c0df6              # double 0.39606200000000003
	.quad	0x3fee634dad31fcd2              # double 0.94962199999999997
	.quad	0x3fed269be09bb6aa              # double 0.91096299999999997
	.quad	0x3fe5667f90d9d777              # double 0.66876199999999997
	.quad	0x3fcdee6fb4c3c18b              # double 0.23383899999999999
	.quad	0x3fd4ce358298cc14              # double 0.32508599999999999
	.quad	0x3fe2e1dc93ea2d30              # double 0.59007100000000001
	.quad	0x3fe462a1b5c7cd8a              # double 0.63704000000000005
	.quad	0x3fd7a32b12d3415b              # double 0.369334
	.quad	0x3fbf7318fc504817              # double 0.12285
	.quad	0x3fb25cd4ed2cbea5              # double 0.071729000000000001
	.quad	0x3fe2222706d50657              # double 0.56666899999999998
	.quad	0x3fd801d9f4d37c13              # double 0.37511299999999997
	.quad	0x3fe7148fd9fd36f8              # double 0.72126000000000001
	.quad	0x3fe0e4e26d4801f7              # double 0.52793999999999996
	.quad	0x3fe61d3ed527e521              # double 0.69106999999999996
	.quad	0x3fe845bd0e12e83a              # double 0.75851299999999999
	.quad	0x3fdef1fddebd9019              # double 0.48352000000000001
	.quad	0x3fe48b1dd5d3dc8c              # double 0.64198200000000005
	.quad	0x3fe0a91b823c85c2              # double 0.52064299999999997
	.quad	0x3fd913d74d594f27              # double 0.39183600000000002
	.quad	0x3febf20a73f748a1              # double 0.87329599999999996
	.quad	0x3fe30afe60c38f36              # double 0.59509199999999995
	.quad	0x3fe453b8e4b87bdd              # double 0.63522000000000001
	.quad	0x3fe1195ee136e71d              # double 0.53434700000000002
	.quad	0x3fed833a4723ab00              # double 0.92226900000000001
	.quad	0x3fe23b40b34e7686              # double 0.56973300000000004
	.quad	0x3fefc5154866a11f              # double 0.99280800000000002
	.quad	0x3fd149129888f862              # double 0.27008500000000002
	.quad	0x3fe918655193708b              # double 0.78422800000000004
	.quad	0x3fd62f23033a4724              # double 0.34662700000000002
	.quad	0x3fed474751ce28ed              # double 0.91495099999999996
	.quad	0x3fe24c857f3061c8              # double 0.57184100000000004
	.quad	0x3fe0128bf3bea91e              # double 0.50226400000000004
	.quad	0x3fc483e425aee632              # double 0.160275
	.quad	0x3fc45f202107b784              # double 0.15915299999999999
	.quad	0x3fe4653c9abb01c9              # double 0.63735799999999998
	.quad	0x3fc06f60e0eb67c3              # double 0.12839900000000001
	.quad	0x3fdb270b06c43f60              # double 0.42425800000000002
	.quad	0x3fb53ad5bee3d5fe              # double 0.082929000000000002
	.quad	0x3fb9492ff4ba51a0              # double 0.098772999999999999
	.quad	0x3fe79804d9839475              # double 0.73730700000000005
	.quad	0x3fe728ed5f138bce              # double 0.723746
	.quad	0x3fba426bb55ac040              # double 0.102576
	.quad	0x3fe4326e115592da              # double 0.63115600000000005
	.quad	0x3fe985ec3dab5c3a              # double 0.79759800000000003
	.quad	0x3fdcbb1290257c91              # double 0.44891799999999998
	.quad	0x3fd67a743a647fdc              # double 0.35122399999999998
	.quad	0x3fd42cba732df506              # double 0.31523000000000001
	.quad	0x3fee69899bf5946c              # double 0.95038299999999997
	.quad	0x3f9f4a1272c94b38              # double 0.030556
	.quad	0x3fea2eddce7cd035              # double 0.81822099999999998
	.quad	0x3fee3b8c32a8c9b8              # double 0.94476899999999996
	.quad	0x3fe2c5f7c6759ab7              # double 0.58666600000000002
	.quad	0x3fc87c200c0f01fc              # double 0.19128800000000001
	.quad	0x3fecdfc3b4f61672              # double 0.90231499999999998
	.quad	0x3fefa975afaf8594              # double 0.98943599999999998
	.quad	0x3fe84c9ea9a3d2d8              # double 0.75935299999999994
	.quad	0x3fda7c3d68405b3a              # double 0.41383300000000001
	.quad	0x3fe53f0fe047d3d4              # double 0.66394799999999998
	.quad	0x3fe1f7af640639d6              # double 0.56148500000000001
	.quad	0x3fe2e2478854cdb8              # double 0.59012200000000004
	.quad	0x3fe2fee0b0af5fd4              # double 0.59361299999999995
	.quad	0x3fd83150dae3e6c5              # double 0.37801000000000001
	.quad	0x3fe988a265f0f5a1              # double 0.797929
	.quad	0x3fd7c4fc1df3300e              # double 0.37139800000000001
	.quad	0x3fe970c1333b96af              # double 0.795014
	.quad	0x3fe4201040bfe3b0              # double 0.62891399999999997
	.quad	0x3fc9a5b0ff10ecb7              # double 0.20036899999999999
	.quad	0x3fc3e6e653868fd2              # double 0.15548400000000001
	.quad	0x3fedaa12f901083e              # double 0.92701100000000003
	.quad	0x3fe164a59c065b64              # double 0.54353600000000002
	.quad	0x3fd6109070fbeb9e              # double 0.34476099999999998
	.quad	0x3fe7b5b70691ea79              # double 0.74093200000000004
	.quad	0x3fc5e310dbf0563f              # double 0.17099200000000001
	.quad	0x3fe551a437824d4d              # double 0.66621600000000003
	.quad	0x3fe69f90539fba45              # double 0.706978
	.quad	0x3fc58af3e468cac5              # double 0.16830300000000001
	.quad	0x3fc5cd466f5019f4              # double 0.17032700000000001
	.quad	0x3fe5ddc1e7967caf              # double 0.68332000000000004
	.quad	0x3fc69f383f0bae8a              # double 0.176734
	.quad	0x3fe69cfbb949624a              # double 0.70666300000000004
	.quad	0x3fd94eb13dfb0d52              # double 0.395428
	.quad	0x3fd71526d8b1dd5d              # double 0.36066599999999999
	.quad	0x3fe393f077ccc038              # double 0.61180900000000005
	.quad	0x3fe069014b599aa6              # double 0.512818
	.quad	0x3fde0be0ded288ce              # double 0.46947499999999998
	.quad	0x3fa7c371da37ef5b              # double 0.046413000000000003
	.quad	0x3fed4f8f8a4c1ebd              # double 0.91596200000000005
	.quad	0x3fda008a697aeddd              # double 0.40628300000000001
	.quad	0x3fd68d002e2328fa              # double 0.352356
	.quad	0x3fea25daf07bfe7e              # double 0.81712099999999999
	.quad	0x3fea8769ec2ce465              # double 0.82903000000000004
	.quad	0x3fd44fa48301a7a0              # double 0.317361
	.quad	0x3febe108c3f3e037              # double 0.87121999999999999
	.quad	0x3fd6b8950763a190              # double 0.355016
	.quad	0x3fe89dfdac68a937              # double 0.76928600000000003
	.quad	0x3fe5bfa6defc7a3a              # double 0.67964500000000005
	.quad	0x3fec62d6238da3c2              # double 0.88706499999999999
	.quad	0x3fdb713ad5bee3d6              # double 0.428786
	.quad	0x3fdf3b7952d234ec              # double 0.48800500000000002
	.quad	0x3fe8b9799e518f3f              # double 0.77264100000000002
	.quad	0x3fe2b441bb8c32a9              # double 0.58450400000000002
	.quad	0x3fe6f7531db445ed              # double 0.71769099999999997
	.quad	0x3fd70096feb4a665              # double 0.35941099999999998
	.quad	0x3fe77cbb3c81908e              # double 0.73397599999999996
	.quad	0x3fe1b1f8a0902de0              # double 0.55297499999999999
	.quad	0x3feb1eba6aca7935              # double 0.84750099999999995
	.quad	0x3fed2bf5515054ac              # double 0.91161599999999998
	.quad	0x3fdd6494d50ebaae              # double 0.45926400000000001
	.quad	0x3fe77e132b55ef20              # double 0.73414000000000001
	.quad	0x3fe3bd0bfa0945fa              # double 0.61682700000000001
	.quad	0x3fe55eb7457c0b13              # double 0.66781199999999996
	.quad	0x3fdbead4f5903a75              # double 0.43620799999999998
	.quad	0x3fefcce5f7403dde              # double 0.99376200000000003
	.quad	0x3fda925fe974a340              # double 0.415184
	.quad	0x3fc32e9468017119              # double 0.14985899999999999
	.quad	0x3fe4fd1fe64f54d2              # double 0.65589900000000001
	.quad	0x3fe7bb384fd2a62b              # double 0.74160400000000004
	.quad	0x3fcb1a21ea359360              # double 0.21173500000000001
	.quad	0x3fc4a84be40420f7              # double 0.161386
	.quad	0x3fe8be1a8262456f              # double 0.77320599999999995
	.quad	0x3fefa72862f5989e              # double 0.98915500000000001
	.quad	0x3fc098bb4d48882f              # double 0.129661
	.quad	0x3fd8b81f969e3c97              # double 0.38623800000000003
	.quad	0x3fdd74794ea07703              # double 0.46023399999999998
	.quad	0x3fb416aceaaf35e3              # double 0.078470999999999999
	.quad	0x3fc3d56f32bdc26e              # double 0.15495100000000001
	.quad	0x3fe19351159c4977              # double 0.54923299999999997
	.quad	0x3fdbb4b72c5197a2              # double 0.43290499999999998
	.quad	0x3fb170b49e01de27              # double 0.068126000000000006
	.quad	0x3fc73df2a9d627bf              # double 0.18157799999999999
	.quad	0x3fe2950331e3a7db              # double 0.58069000000000004
	.quad	0x3fe0032db1e9f278              # double 0.50038800000000005
	.quad	0x3fa50aaa7ded6ba9              # double 0.041097000000000002
	.quad	0x3fe85e0d66f0cfe1              # double 0.76148099999999996
	.quad	0x3fb544bb1af3a14d              # double 0.083080000000000001
	.quad	0x3fef0ca1cef240fb              # double 0.97029200000000004
	.quad	0x3feddfeb8d823422              # double 0.93358399999999997
	.quad	0x3fb115592d98bf7f              # double 0.066732
	.quad	0x3fb9817b95a29414              # double 0.099631999999999998
	.quad	0x3fe499f5dfeb8d82              # double 0.64379399999999998
	.quad	0x3fd705d95dd4c76d              # double 0.359732
	.quad	0x3fef2a9930be0ded              # double 0.97394999999999998
	.quad	0x3fd7fc71d6063172              # double 0.37478299999999998
	.quad	0x3fdde30446b69db6              # double 0.46698099999999998
	.quad	0x3fd2055fbb517a46              # double 0.28157799999999999
	.quad	0x3fd707dd44135547              # double 0.35985499999999998
	.quad	0x3fd35bd512ec6bcf              # double 0.30248000000000003
	.quad	0x3fba25e99e94ab1d              # double 0.102141
	.quad	0x3fb29057d1782d38              # double 0.072514999999999996
	.quad	0x3fe0e96a26e54717              # double 0.52849299999999999
	.quad	0x3fe02b29e4d5d80e              # double 0.50526899999999997
	.quad	0x3fd126394face67d              # double 0.26795799999999997
	.quad	0x3fdfd91eeaa6d267              # double 0.49762699999999999
	.quad	0x3feed100a393ee5f              # double 0.963013
	.quad	0x3fdd59bc33f85511              # double 0.45860200000000001
	.quad	0x3fe2f644955b4678              # double 0.59256200000000003
	.quad	0x3fd1b5393250b524              # double 0.27668599999999999
	.quad	0x3fe87cf80dc33722              # double 0.76525500000000002
	.quad	0x3fd393faf42784a9              # double 0.30590699999999998
	.quad	0x3fe953e920c069e8              # double 0.791493
	.quad	0x3fe422df9378ee28              # double 0.62925699999999996
	.quad	0x3fc56e3f78bbd380              # double 0.16742699999999999
	.quad	0x3fdc05d52c16df40              # double 0.43785600000000002
	.quad	0x3fd6e6f71a7e3088              # double 0.35784700000000003
	.quad	0x3fecb42edbb59ddc              # double 0.89699499999999998
	.quad	0x3fe172e48e8a71de              # double 0.54527499999999995
	.quad	0x3fed81b64e054691              # double 0.92208400000000001
	.quad	0x3fe5426fe718a86d              # double 0.66435999999999995
	.quad	0x3febf6a50d6b228e              # double 0.87385800000000002
	.quad	0x3fd27292c4934268              # double 0.28824300000000003
	.quad	0x3fe9d38476f2a5a4              # double 0.80706999999999995
	.quad	0x3fca32b990afe60c              # double 0.20467299999999999
	.quad	0x3fbf0164840e171a              # double 0.121115
	.quad	0x3fde3608d08919f0              # double 0.47204800000000002
	.quad	0x3fec6b4a66559f6f              # double 0.88809700000000003
	.quad	0x3fed666666666666              # double 0.91874999999999996
	.quad	0x3fdb0bf5d78811b2              # double 0.42260500000000001
	.quad	0x3feba4f00ef1348b              # double 0.86388399999999999
	.quad	0x3fd8f3882278d0cc              # double 0.38986399999999999
	.quad	0x3fca17f4128bf3bf              # double 0.20385600000000001
	.quad	0x3fd334117f84449e              # double 0.30005300000000001
	.quad	0x3fd673cd573647bb              # double 0.35081800000000002
	.quad	0x3fc2322291fb3fa7              # double 0.142155
	.quad	0x3fc6cdaf4adbc665              # double 0.178152
	.quad	0x3fb8299d883ba344              # double 0.094384999999999997
	.quad	0x3febe2cdc011d367              # double 0.87143599999999999
	.quad	0x3fe15bc23315d702              # double 0.54245100000000002
	.quad	0x3fe81e85fd04a2fd              # double 0.75372600000000001
	.quad	0x3fd7f38c5436b8fa              # double 0.37424000000000002
	.quad	0x3feac22ee41919ac              # double 0.83620399999999994
	.quad	0x3fcc792d1287c201              # double 0.22244800000000001
	.quad	0x3faceee0f3cb3e57              # double 0.056509999999999998
	.quad	0x3fe8a57214f0520d              # double 0.77019599999999999
	.quad	0x3fd3bb2bba98eda2              # double 0.30829899999999999
	.quad	0x3f917e34b945308c              # double 0.017083000000000001
	.quad	0x3fe3adc4c9c90c4e              # double 0.61496200000000001
	.quad	0x3feae71476af89c6              # double 0.84070800000000001
	.quad	0x3fd8d7d7c2ca148c              # double 0.38817400000000002
	.quad	0x3fe2276d97b30f8c              # double 0.56731299999999996
	.quad	0x3fe1b57c4e2f37fc              # double 0.55340400000000001
	.quad	0x3fe420ab71327243              # double 0.62898799999999999
	.quad	0x3fe0b67a0f9096bc              # double 0.52227500000000004
	.quad	0x3fe80fb65668c261              # double 0.75191799999999998
	.quad	0x3fe461932d6ece14              # double 0.636911
	.quad	0x3fe85cbbc2b94d94              # double 0.76131999999999999
	.quad	0x3fcf2a1f8e3ac0c6              # double 0.24347299999999999
	.quad	0x3fdd7abb8800eae2              # double 0.46061600000000003
	.quad	0x3fd6eb56fb8f57f7              # double 0.35811399999999999
	.quad	0x3fef09e774eebf66              # double 0.96995900000000002
	.quad	0x3fd9600f345069a5              # double 0.39648800000000001
	.quad	0x3feaacfd8f0c77de              # double 0.83361700000000005
	.quad	0x3fe799029ae4f334              # double 0.73742799999999997
	.quad	0x3fb2a10e02214270              # double 0.072770000000000001
	.quad	0x3fc15a4acf312b1b              # double 0.13556799999999999
	.quad	0x3fd9224aada33bda              # double 0.39271800000000001
	.quad	0x3fe7a32f44912989              # double 0.73867000000000005
	.quad	0x3fe674c6e6d9be4d              # double 0.70175500000000002
	.quad	0x3fe815097c80841f              # double 0.75256800000000001
	.quad	0x3fd8d438d1d8a548              # double 0.38795299999999999
	.quad	0x3fc38f7985271bce              # double 0.15281600000000001
	.quad	0x3fd139fba450acc1              # double 0.26916400000000001
	.quad	0x3fd284406c00da1b              # double 0.28932200000000002
	.quad	0x3feb53b29a1b9f99              # double 0.85396700000000003
	.quad	0x3fbf1b25f633ce64              # double 0.121508
	.quad	0x3fe69ff92f2b66b6              # double 0.70702799999999999
	.quad	0x3fef2630ec311623              # double 0.97341200000000005
	.quad	0x3fe107314ca925ff              # double 0.53212800000000005
	.quad	0x3fe8375a74c09c3d              # double 0.75675700000000001
	.quad	0x3fc9904b3c3e74b0              # double 0.199716
	.quad	0x3fd2fc7607c419a0              # double 0.29665900000000001
	.quad	0x3fe5c57c0b135979              # double 0.68035699999999999
	.quad	0x3fbd9c49774256bd              # double 0.115666
	.quad	0x3fea5f69878316a0              # double 0.82414699999999996
	.quad	0x3fc4d24e160d887f              # double 0.16266800000000001
	.quad	0x3fd42d98bf7f0670              # double 0.31528299999999998
	.quad	0x3fec4ed4e4c942d5              # double 0.88462300000000005
	.quad	0x3fe1fa9c12f09d8c              # double 0.56184199999999995
	.quad	0x3fd48de2ac322292              # double 0.32116
	.quad	0x3fe22dd9c27e9531              # double 0.56809699999999996
	.quad	0x3fcf8583621fafc9              # double 0.24626200000000001
	.quad	0x3fefe89ca18bd662              # double 0.99714499999999995
	.quad	0x3fc9a9a8049667b6              # double 0.20049
	.quad	0x3fd07b634dad31fd              # double 0.25753100000000001
	.quad	0x3fc77e34b945308c              # double 0.18353900000000001
	.quad	0x3fcbdcd7060bb2bc              # double 0.21767700000000001
	.quad	0x3feee696a26e5471              # double 0.96564799999999995
	.quad	0x3f82cf0f9d2bf551              # double 0.0091839999999999994
	.quad	0x3febdfd04a2fcefb              # double 0.87107100000000004
	.quad	0x3fed156e264e4862              # double 0.90886599999999995
	.quad	0x3fc7b7b6bb129025              # double 0.18529399999999999
	.quad	0x3fe44bad7d7c2ca1              # double 0.63423799999999997
	.quad	0x3fe41374bc6a7efa              # double 0.62737500000000002
	.quad	0x3feac8e25c810a57              # double 0.83702200000000004
	.quad	0x3fdcdd00f776c482              # double 0.45098899999999997
	.quad	0x3fd3655193708aad              # double 0.30305900000000002
	.quad	0x3fb0f97edc7ef178              # double 0.066307000000000005
	.quad	0x3fccd2b2bfdb4cc2              # double 0.22517999999999999
	.quad	0x3fe04a2b9d3cbc49              # double 0.50905400000000001
	.quad	0x3fe6ef5232d2bb23              # double 0.71671399999999996
	.quad	0x3fe49f70de8f6cf0              # double 0.64446300000000001
	.quad	0x3fe16ba27ae9ab2a              # double 0.54438900000000001
	.quad	0x3fd587ad080b673c              # double 0.33640599999999998
	.quad	0x3fe260d23d4f15e8              # double 0.57431900000000002
	.quad	0x3fcbc36976bc1f00              # double 0.21690100000000001
	.quad	0x3fed53fe1975f2cb              # double 0.91650299999999996
	.quad	0x3f93201040bfe3b0              # double 0.018676999999999999
	.quad	0x3fe0118a009f6230              # double 0.50214099999999995
	.quad	0x3fd16eb4e981387a              # double 0.27238200000000001
	.quad	0x3fe915feda661284              # double 0.78393500000000004
	.quad	0x3fe4df7c6759ab6d              # double 0.652281
	.quad	0x3fe727589efd86a9              # double 0.723553
	.quad	0x3febd579af1886e0              # double 0.86980900000000005
	.quad	0x3fdc088d6d3b6cbe              # double 0.43802200000000002
	.quad	0x3fe54d551d68c693              # double 0.66569
	.quad	0x3fe031bbcf4e874d              # double 0.50607100000000005
	.quad	0x3fde1bb05faebc41              # double 0.47044000000000002
	.quad	0x3fe881a79fec99f2              # double 0.76582700000000004
	.quad	0x3fe2fdcbddb9841b              # double 0.59348100000000004
	.quad	0x3fcf37110e453d21              # double 0.243868
	.quad	0x3fec5db3397dd00f              # double 0.88643799999999995
	.quad	0x3fc52146a1a500d6              # double 0.165078
	.quad	0x3fdc16ce789e774f              # double 0.438892
	.quad	0x3fdccc89b0ee49f5              # double 0.449984
	.quad	0x3fcab91b3f20a73f              # double 0.20877399999999999
	.quad	0x3fcd2a305532617c              # double 0.22785
	.quad	0x3fefa7f3cf70153c              # double 0.98925200000000002
	.quad	0x3fdcb45f17bd8be7              # double 0.44850899999999999
	.quad	0x3fe272ffd1dcd706              # double 0.57653799999999999
	.quad	0x3fde872b020c49ba              # double 0.47699999999999998
	.quad	0x3feb43c3a42f1ed1              # double 0.85202199999999995
	.quad	0x3feca48d7e02645e              # double 0.89508699999999997
	.quad	0x3fea75dbb9cf9a07              # double 0.82688700000000004
	.quad	0x3fe1a24894c447c3              # double 0.55105999999999999
	.quad	0x3fd4c8f32378ab0d              # double 0.32476500000000003
	.quad	0x3fd0d9ec7000431c              # double 0.26330100000000001
	.quad	0x3fd9d7c6fbd273d6              # double 0.40379500000000002
	.quad	0x3feb74538ef34d6a              # double 0.85794999999999999
	.quad	0x3fe9d616f86a0989              # double 0.80738399999999999
	.quad	0x3f8b10fd7e45803d              # double 0.013216
	.quad	0x3fdc36c9c0a8d21c              # double 0.44084400000000001
	.quad	0x3fc204b7f5a5332b              # double 0.14076900000000001
	.quad	0x3fe9b5653c9abb02              # double 0.80339300000000002
	.quad	0x3fb0420f6f08cc57              # double 0.063507999999999995
	.quad	0x3fdcb4395810624e              # double 0.44850000000000001
	.quad	0x3fd5afff36ac6477              # double 0.33886699999999997
	.quad	0x3fc3f8982cb20fb2              # double 0.156024
	.quad	0x3fe5e26d4801f751              # double 0.68389
	.quad	0x3fe27850df15a4ad              # double 0.57718700000000001
	.quad	0x3fe73f7ced916873              # double 0.72650000000000003
	.quad	0x3febb8f36694898f              # double 0.86632699999999996
	.quad	0x3fece963dc486ad3              # double 0.90349000000000002
	.quad	0x3fe67ef39085f4a1              # double 0.70299699999999998
	.quad	0x3fdd13c68661ae71              # double 0.45433200000000001
	.quad	0x3fec4044284dfce3              # double 0.88284499999999999
	.quad	0x3febc7219220ff54              # double 0.86805799999999999
	.quad	0x3fd63c7d5ed06fef              # double 0.34744199999999997
	.quad	0x3fcb2f33ca31e7da              # double 0.21237800000000001
	.quad	0x3fee73e89a88ace2              # double 0.95164899999999997
	.quad	0x3feddc4651f3e89b              # double 0.93313900000000005
	.quad	0x3fb79e3864cb5bb4              # double 0.092258000000000007
	.quad	0x3feb8c8472c0e7bc              # double 0.86090299999999997
	.quad	0x3fc984988094e5d6              # double 0.19935900000000001
	.quad	0x3fec96c1e364bec6              # double 0.89340299999999995
	.quad	0x3fe148f75536933a              # double 0.540157
	.quad	0x3fb81d19157abb88              # double 0.094194
	.quad	0x3fefb96af038e2a0              # double 0.99138400000000004
	.quad	0x3f976ee73e681a9c              # double 0.022884000000000002
	.quad	0x3fead759ee88df37              # double 0.83878799999999998
	.quad	0x3fb7122b7baecd08              # double 0.090121000000000007
	.quad	0x3fb4a48f96e15875              # double 0.080635999999999999
	.quad	0x3fe5629f9ce8d973              # double 0.66828900000000002
	.quad	0x3fe67b3743632c1f              # double 0.70254099999999997
	.quad	0x3fe4f2170931012a              # double 0.65455200000000002
	.quad	0x3fe28323358f2e06              # double 0.57850800000000002
	.quad	0x3feb3599aa60913a              # double 0.85029299999999997
	.quad	0x3fb15ed06fef7c24              # double 0.067852999999999997
	.quad	0x3fe0ddebd9018e75              # double 0.52708999999999995
	.quad	0x3fecebc83a96d4c3              # double 0.90378199999999997
	.quad	0x3fee509e12a51e32              # double 0.94734099999999999
	.quad	0x3fecb01c92ddbdb6              # double 0.89649800000000002
	.quad	0x3fe9450acc0bdcad              # double 0.78967799999999999
	.quad	0x3feb5ff1d81f1066              # double 0.85546199999999994
	.quad	0x3fc6364bec679cc7              # double 0.17353199999999999
	.quad	0x3fdd0025bfad2999              # double 0.45313399999999998
	.quad	0x3fdfdfe32a0663c7              # double 0.49803999999999998
	.quad	0x3fe541fea8112ba1              # double 0.66430599999999995
	.quad	0x3fa1ea1405708249              # double 0.034988999999999999
	.quad	0x3fd8e0ac7da1ec4e              # double 0.38871299999999998
	.quad	0x3fecaf7d30ad46f6              # double 0.89642200000000005
	.quad	0x3fe16b702602c908              # double 0.54436499999999999
	.quad	0x3fee1e6256366d7a              # double 0.94120899999999996
	.quad	0x3fdd37585be1a826              # double 0.45650299999999999
	.quad	0x3fd408bb906466b2              # double 0.31303300000000001
	.quad	0x3faec3fc43b2dd37              # double 0.060088999999999997
	.quad	0x3fdabe40420f6f09              # double 0.41786200000000001
	.quad	0x3fe3605681ecd4aa              # double 0.60550999999999999
	.quad	0x3fc17e5eaab04253              # double 0.13666900000000001
	.quad	0x3fd74128bf3bea92              # double 0.36335200000000001
	.quad	0x3fce6a337a80cf9e              # double 0.23761599999999999
	.quad	0x3fe3cf6be37de93a              # double 0.61907000000000001
	.quad	0x3fe84e3de6149c6f              # double 0.75955099999999998
	.quad	0x3feb5d26b723ee1c              # double 0.85512100000000001
	.quad	0x3fad968512231833              # double 0.057789
	.quad	0x3fe9af05a708ede5              # double 0.80261499999999997
	.quad	0x3febf47f993d5348              # double 0.87359600000000004
	.quad	0x3fe2841461b6d43d              # double 0.578623
	.quad	0x3fedd2ef911cf356              # double 0.93199900000000002
	.quad	0x3fe1d06bbdbe3c10              # double 0.55669199999999996
	.quad	0x3fe3da09cc319c5a              # double 0.62036599999999997
	.quad	0x3fedcc729f59ccfb              # double 0.93120700000000001
	.quad	0x3fdeb07d0aed99cc              # double 0.479522
	.quad	0x3fb66a98244e93e2              # double 0.087564000000000002
	.quad	0x3fa0c6d612c6ac21              # double 0.032766999999999998
	.quad	0x3fd4f16f4384ba0f              # double 0.32723600000000003
	.quad	0x3fbfae685db76b3c              # double 0.123755
	.quad	0x3fc9a469d7342edc              # double 0.20033000000000001
	.quad	0x3fd49f4906034f40              # double 0.32222200000000001
	.quad	0x3fde28954a7f8013              # double 0.47122700000000001
	.quad	0x3feee49f51697f20              # double 0.96540800000000004
	.quad	0x3fe24be40420f6f1              # double 0.57176400000000005
	.quad	0x3fd47000431bde83              # double 0.31933600000000001
	.quad	0x3fdceae9ee45c359              # double 0.45183800000000002
	.quad	0x3fe863c74fb549f9              # double 0.76217999999999997
	.quad	0x3febcf93bc0a06ea              # double 0.869089
	.quad	0x3fe662c77574f723              # double 0.69955800000000001
	.quad	0x3fc233508f648c72              # double 0.14219100000000001
	.quad	0x3fcbbc0a06e9ff0d              # double 0.21667600000000001
	.quad	0x3f950fc71d606317              # double 0.020567999999999999
	.quad	0x3fc8116ebd4cfd09              # double 0.188032
	.quad	0x3fe2919ef954eb14              # double 0.58027600000000001
	.quad	0x3fee2148ba83f4ed              # double 0.94156300000000004
	.quad	0x3fe5a1a500d5e8d5              # double 0.67598199999999997
	.quad	0x3fea2ba7b9170d63              # double 0.81782900000000003
	.quad	0x3fe6e62bae03b3ea              # double 0.71559700000000004
	.quad	0x3fed720c8cd63cb8              # double 0.92017199999999999
	.quad	0x3fe28ccdd93c46d8              # double 0.57968799999999998
	.quad	0x3fe1b352a8438088              # double 0.55313999999999997
	.quad	0x3fdd9b413986338b              # double 0.46260099999999998
	.quad	0x3fdb31bde82d7b63              # double 0.42491099999999998
	.quad	0x3fb7f66e86c6583f              # double 0.093604000000000007
	.quad	0x3fe14b4289118c19              # double 0.54043699999999995
	.quad	0x3fee5515054ac29c              # double 0.947886
	.quad	0x3fb02edbb59ddc1e              # double 0.063214999999999993
	.quad	0x3fe0b33daf8df7a5              # double 0.52188000000000001
	.quad	0x3fe2e0d66f0cfe15              # double 0.58994599999999997
	.quad	0x3fd384fd2a62aa19              # double 0.30499199999999999
	.quad	0x3feb7f04577d9557              # double 0.85925499999999999
	.quad	0x3fe93677f6b1a2a5              # double 0.78789900000000002
	.quad	0x3fd0a925fe974a34              # double 0.260324
	.quad	0x3fd5481f53825e14              # double 0.33252700000000002
	.quad	0x3fed5529fe004b7f              # double 0.91664599999999996
	.quad	0x3fe9706f69446738              # double 0.79497499999999999
	.quad	0x3fd4d1b71758e219              # double 0.32529999999999998
	.quad	0x3feb613b18dac259              # double 0.85561900000000002
	.quad	0x3fe69cb46bacf744              # double 0.70662899999999995
	.quad	0x3fe27a89331a08c0              # double 0.57745800000000003
	.quad	0x3fe22cf0f9d2bf55              # double 0.56798599999999999
	.quad	0x3fb2b6f19934efcc              # double 0.073104000000000002
	.quad	0x3fc02b1f687b139d              # double 0.12631600000000001
	.quad	0x3fdc66be7afa7222              # double 0.44377100000000003
	.quad	0x3fe378726d04e619              # double 0.60845300000000002
	.quad	0x3fee3aa9b499d020              # double 0.94466099999999997
	.quad	0x3fd5c62a1b5c7cd9              # double 0.34022000000000002
	.quad	0x3fd3f4666ec9e237              # double 0.31179200000000001
	.quad	0x3fa33226c3b927d4              # double 0.037491999999999998
	.quad	0x3fed5bf26f1dc50d              # double 0.91747400000000001
	.quad	0x3fd186f8ad256799              # double 0.27386300000000002
	.quad	0x3fe92deebb341e15              # double 0.78685700000000003
	.quad	0x3fec6e568a50507a              # double 0.88846899999999995
	.quad	0x3fec8f66a5508701              # double 0.89250499999999999
	.quad	0x3fe060807357e671              # double 0.51178000000000001
	.quad	0x3fef2abcd78c4370              # double 0.97396700000000003
	.quad	0x3fbda543f1c75819              # double 0.115803
	.quad	0x3fea5718eb895076              # double 0.82313199999999997
	.quad	0x3fdce64f54d1e96c              # double 0.45155699999999999
	.quad	0x3fb6bacf7446f9ba              # double 0.088788000000000005
	.quad	0x3fc0e075f6fd21ff              # double 0.13184999999999999
	.quad	0x3fea8abd5dc40075              # double 0.82943599999999995
	.quad	0x3fe08fe8ab4fa483              # double 0.517567
	.quad	0x3fddfd6d7e889c1b              # double 0.46859299999999998
	.quad	0x3fe4f12a0ec74320              # double 0.65443899999999999
	.quad	0x3fdf304039abf338              # double 0.48731999999999998
	.quad	0x3fd5c011d3671ac1              # double 0.33984799999999998
	.quad	0x3fe05041cc532a49              # double 0.50979699999999994
	.quad	0x3fd9f1843c3a42f2              # double 0.405366
	.quad	0x3fddac5c13fd0d06              # double 0.46364499999999997
	.quad	0x3fc5e9c0229a5ebb              # double 0.17119599999999999
	.quad	0x3fd2af35e310dbf0              # double 0.29194399999999998
	.quad	0x3fc48bd230b9dc2f              # double 0.16051699999999999
	.quad	0x3fd87824d4cb9ecf              # double 0.38233299999999998
	.quad	0x3fed77c45cbbc2b9              # double 0.92086999999999997
	.quad	0x3feb593e5fb71fbc              # double 0.85464399999999995
	.quad	0x3fe7a6394face67d              # double 0.73904099999999995
	.quad	0x3fcfda597d49d7ba              # double 0.24885099999999999
	.quad	0x3fc39acffa7eb6bf              # double 0.15316199999999999
	.quad	0x3fdfb2cc70867ad9              # double 0.49528800000000001
	.quad	0x3fdea89331a08bfc              # double 0.47903899999999999
	.quad	0x3fda4a2b9d3cbc49              # double 0.410777
	.quad	0x3f8c810a569b1748              # double 0.013918
	.quad	0x3fba06c8711d798e              # double 0.10166600000000001
	.quad	0x3fc149731098d478              # double 0.13505400000000001
	.quad	0x3fc0c77574f722e2              # double 0.13108700000000001
	.quad	0x3fe94b46bacf7447              # double 0.790439
	.quad	0x3fdcc586876e1deb              # double 0.44955600000000001
	.quad	0x3fa300bcbe61cfff              # double 0.037115000000000002
	.quad	0x3fe3609784ec636b              # double 0.605541
	.quad	0x3fa365ecc3e3193f              # double 0.037886999999999997
	.quad	0x3fe2e2131a8ef77f              # double 0.59009699999999998
	.quad	0x3fd20e7bc3c5bd0e              # double 0.282134
	.quad	0x3fbdb3d07c84b5dd              # double 0.116025
	.quad	0x3feca7b2cc70867b              # double 0.89547100000000002
	.quad	0x3fda6aceaaf35e31              # double 0.412769
	.quad	0x3fd2327674d16335              # double 0.28433000000000003
	.quad	0x3fcab10342aa9f7b              # double 0.20852699999999999
	.quad	0x3fe17fa1a0cf1801              # double 0.54683000000000004
	.quad	0x3fe5113a4f8726d0              # double 0.65835299999999997
	.quad	0x3fe6da78f25a2510              # double 0.71416900000000005
	.quad	0x3fe771d3ed527e52              # double 0.73264499999999999
	.quad	0x3fc3b7281fd9ba1b              # double 0.154027
	.quad	0x3fcc34a01abd1aa8              # double 0.220356
	.quad	0x3fe5b8d3f1843c3a              # double 0.67881199999999997
	.quad	0x3fe3a24cc6822ff1              # double 0.61356200000000005
	.quad	0x3fe77e80389f83be              # double 0.73419199999999996
	.quad	0x3fdf41ede1198aec              # double 0.48839900000000003
	.quad	0x3fd6d972cd7cf5f5              # double 0.35702200000000001
	.quad	0x3fc153b4b2fa93af              # double 0.13536699999999999
	.quad	0x3fe2caba38759253              # double 0.58724699999999996
	.quad	0x3fba4f765fd8adac              # double 0.10277500000000001
	.quad	0x3fe21cfbb949624a              # double 0.56603800000000004
	.quad	0x3fd724a276b7ed42              # double 0.36161100000000002
	.quad	0x3fe6eea209aaa3ad              # double 0.71662999999999999
	.quad	0x3fb4a48f96e15875              # double 0.080635999999999999
	.quad	0x3fb6d8d36b4c7f35              # double 0.089246000000000006
	.quad	0x3fe11d9d3458cd21              # double 0.53486500000000003
	.quad	0x3fe6a1be2b4959e6              # double 0.70724399999999998
	.quad	0x3fd375e2046c764b              # double 0.30407000000000001
	.quad	0x3fdfa6b93ccd0fe9              # double 0.49455100000000002
	.quad	0x3fbffceb78897e99              # double 0.12495299999999999
	.quad	0x3fd26933a0407cc8              # double 0.28767100000000001
	.quad	0x3fe1ae3608d0891a              # double 0.55251600000000001
	.quad	0x3fea9e85fd04a2fd              # double 0.83185100000000001
	.quad	0x3fd72bba98eda22f              # double 0.36204399999999998
	.quad	0x3fb497c80841ede1              # double 0.080440999999999999
	.quad	0x3fc3cddd6e04c059              # double 0.15472
	.quad	0x3fe92a9717df19d6              # double 0.78644899999999995
	.quad	0x3fe6ae59af9ebe9d              # double 0.70878300000000005
	.quad	0x3fe37168f8e7ddca              # double 0.60759399999999997
	.quad	0x3fd5c426351deefe              # double 0.34009699999999998
	.quad	0x3fef1a52263d816b              # double 0.97196300000000002
	.quad	0x3fd66117720c8cd6              # double 0.34967599999999999
	.quad	0x3fe59539b888722a              # double 0.67446600000000001
	.quad	0x3fe78e27e0ef9980              # double 0.73610299999999995
	.quad	0x3fecbcd141a6937d              # double 0.89804899999999999
	.quad	0x3fbb7f06705c896e              # double 0.107407
	.quad	0x3fec675ff609dcf9              # double 0.88761900000000005
	.quad	0x3fe9154866a11ec9              # double 0.78384799999999999
	.quad	0x3fd317fc7607c41a              # double 0.29833900000000002
	.quad	0x3fc3dc486ad2dcb1              # double 0.15515999999999999
	.quad	0x3fd0fe8ee6b8305e              # double 0.26553700000000002
	.quad	0x3fc761c36976bc1f              # double 0.182671
	.quad	0x3fe2c4d44567125e              # double 0.58652700000000002
	.quad	0x3feffabb8800eae2              # double 0.99935700000000005
	.quad	0x3fe9255f3519bd40              # double 0.78581199999999995
	.quad	0x3fc82c98e53eb39a              # double 0.188861
	.quad	0x3fe5beee52589268              # double 0.67955699999999997
	.quad	0x3fd435bd512ec6bd              # double 0.31578000000000001
	.quad	0x3fd1985f06f69446              # double 0.27492499999999997
	.quad	0x3fe8964840e1719f              # double 0.76834499999999994
	.quad	0x3fc85cb35f3d7d39              # double 0.190329
	.quad	0x3fd8432ca57a786c              # double 0.37909999999999999
	.quad	0x3fd3b4bf8fcd67fd              # double 0.30790699999999999
	.quad	0x3fb905f28848387e              # double 0.097747
	.quad	0x3fc5f81a5870da5e              # double 0.17163400000000001
	.quad	0x3fdead03d9a95422              # double 0.47931000000000001
	.quad	0x3fe5e2d83c6c97d9              # double 0.68394100000000002
	.quad	0x3fe09ee2435696e6              # double 0.51939500000000005
	.quad	0x3fe7533d29563a9f              # double 0.72891099999999998
	.quad	0x3fb886594af4f0d8              # double 0.095799999999999996
	.quad	0x3fefae3c536d655e              # double 0.99001899999999998
	.quad	0x3fdbb3aabcd78c43              # double 0.43284099999999998
	.quad	0x3fd2f30e7ff583a5              # double 0.29608499999999999
	.quad	0x3fe60d9513f8db49              # double 0.68915800000000005
	.quad	0x3fdbf4a558ea7ce1              # double 0.436807
	.quad	0x3fe9a28997c3d684              # double 0.80109099999999999
	.quad	0x3fecd538ac18f81f              # double 0.90102800000000005
	.quad	0x3fefc3dee78183f9              # double 0.99265999999999998
	.quad	0x3febd798d8a979e1              # double 0.87006799999999995
	.quad	0x3fe9000000000000              # double 0.78125
	.quad	0x3fe40f66a5508701              # double 0.62687999999999999
	.quad	0x3feda20ddc619546              # double 0.92603199999999997
	.quad	0x3fee0e8427418d69              # double 0.939272
	.quad	0x3fea2f405f6ba062              # double 0.818268
	.quad	0x3fb20be5109070fc              # double 0.070494000000000001
	.quad	0x3fedf7531db445ed              # double 0.93644099999999997
	.quad	0x3fc36d4c33b53932              # double 0.15177299999999999
	.quad	0x3fe453c9abb01c93              # double 0.63522800000000001
	.quad	0x3fd6be61cffeb075              # double 0.35537000000000002
	.quad	0x3fef83ea704bc276              # double 0.98485299999999998
	.quad	0x3fbac2374794ea07              # double 0.10452599999999999
	.quad	0x3fe0925fe974a340              # double 0.51786799999999999
	.quad	0x3fe1897204295a6c              # double 0.54802799999999996
	.quad	0x3fc9f1843c3a42f2              # double 0.202683
	.quad	0x3fe145a1cac08312              # double 0.53974999999999995
	.quad	0x3fedd73eab367a10              # double 0.93252500000000005
	.quad	0x3fc41ae70c1333b9              # double 0.15707099999999999
	.quad	0x3fd31d25aab47410              # double 0.29865399999999998
	.quad	0x3fce8848387df5cf              # double 0.238534
	.quad	0x3f949667b5f1bef5              # double 0.020105000000000001
	.quad	0x3fd7cbff47735c18              # double 0.37182599999999999
	.quad	0x3fe5e0c176577532              # double 0.68368600000000002
	.quad	0x3fea77a7008a697b              # double 0.82710600000000001
	.quad	0x3fd6b65668c26139              # double 0.354879
	.quad	0x3fdc6d4c33b53932              # double 0.44417099999999998
	.quad	0x3fe3263736cdf267              # double 0.59841500000000003
	.quad	0x3fe0b076c050bd88              # double 0.52154100000000003
	.quad	0x3fe8612839042d8c              # double 0.76185999999999998
	.quad	0x3fe018a65492ff4c              # double 0.50300900000000004
	.quad	0x3fdab691212513b6              # double 0.41739300000000001
	.quad	0x3fef83f91e646f15              # double 0.98485999999999995
	.quad	0x3fd1f8b9baa1511e              # double 0.280806
	.quad	0x3f9a6defc7a39820              # double 0.02581
	.quad	0x3febd3dea465a576              # double 0.86961299999999997
	.quad	0x3fe0c91f2dc2b0ea              # double 0.52455099999999999
	.quad	0x3fe599695d91ab8f              # double 0.67497700000000005
	.quad	0x3fc28d9f90539fba              # double 0.14494699999999999
	.quad	0x3fdd4d72799a1fd1              # double 0.45785199999999998
	.quad	0x3fda0685553ef6b6              # double 0.40664800000000001
	.quad	0x3fd8fb762d83c6c9              # double 0.39034799999999997
	.quad	0x3fe45f91600f3450              # double 0.63666599999999995
	.quad	0x3fe6e1a1db877ab3              # double 0.71504299999999998
	.quad	0x3fd1e29b6b2af145              # double 0.27945599999999998
	.quad	0x3fed64f3343fa2ad              # double 0.91857299999999997
	.quad	0x3fd6a9c12f09d8c7              # double 0.35411100000000001
	.quad	0x3fe16e82949a5658              # double 0.54474
	.quad	0x3fd93465625a682b              # double 0.39382299999999998
	.quad	0x3fc42acb85a4f00f              # double 0.157556
	.quad	0x3fed3f9830e3cd9a              # double 0.91401299999999996
	.quad	0x3fd2466f5019f3c7              # double 0.285549
	.quad	0x3fd3c49fd7a13c25              # double 0.30887599999999998
	.quad	0x3fdda86d71f36263              # double 0.46340500000000001
	.quad	0x3fa8e086bdf4c2b5              # double 0.048587999999999999
	.quad	0x3fd7c49fd7a13c25              # double 0.37137599999999998
	.quad	0x3fcc63ae2541d8e8              # double 0.22179199999999999
	.quad	0x3feb7b9e060fe47a              # double 0.85884000000000005
	.quad	0x3fe7e6ba493c89f4              # double 0.746915
	.quad	0x3feaab8c75c4a83b              # double 0.83344099999999999
	.quad	0x3fb52b90a7829069              # double 0.082696000000000006
	.quad	0x3fbdea9a3d2d87f9              # double 0.11686100000000001
	.quad	0x3fdcbd3c36113405              # double 0.44905
	.quad	0x3feae9d7342edbb6              # double 0.84104500000000004
	.quad	0x3fd607aaef2c7326              # double 0.34421800000000002
	.quad	0x3fec39cd8127b2cc              # double 0.88205599999999995
	.quad	0x3fdc3c81908e581d              # double 0.441193
	.quad	0x3fe90a5accd53049              # double 0.78251400000000004
	.quad	0x3fea0b28522ea0fd              # double 0.81386199999999997
	.quad	0x3fbc04a72ead9275              # double 0.109446
	.quad	0x3fea01e8a2ec28b3              # double 0.81273300000000004
	.quad	0x3fe33e78e1932d6f              # double 0.60137600000000002
	.quad	0x3fe852502eec7c95              # double 0.76004799999999995
	.quad	0x3fe0777d0f1f57b4              # double 0.51458599999999999
	.quad	0x3fd3abde3fbbd7b2              # double 0.307365
	.quad	0x3feb850df15a4acf              # double 0.85999199999999998
	.quad	0x3fcbede97d06bbdc              # double 0.218198
	.quad	0x3fe1e41700cd8559              # double 0.55909299999999995
	.quad	0x3fe65ebfa8f7db6e              # double 0.69906599999999997
	.quad	0x3fb8750c1b97353b              # double 0.095535999999999996
	.quad	0x3fd52dd377e1b8ed              # double 0.33092199999999999
	.quad	0x3fa6a78af3e468cb              # double 0.044247000000000002
	.quad	0x3fdf33a0407cc7d2              # double 0.48752600000000001
	.quad	0x3fe4ecca2db61bb0              # double 0.65390499999999996
	.quad	0x3feb780346dc5d64              # double 0.85840000000000005
	.quad	0x3fe3ce7253da72a8              # double 0.61895100000000003
	.quad	0x3fc4d99cbee807bc              # double 0.16289100000000001
	.quad	0x3fe42b7564302b41              # double 0.630305
	.quad	0x3fe3b8fde2ef4e01              # double 0.61633199999999999
	.quad	0x3fcdaaef2c732592              # double 0.23177900000000001
	.quad	0x3fe296e7a311e860              # double 0.58092100000000002
	.quad	0x3fe2f34f82f51266              # double 0.59220099999999998
	.quad	0x3fdb0e6afcce1c58              # double 0.42275499999999999
	.quad	0x3fd2face67d77fae              # double 0.29655799999999999
	.quad	0x3feba847b24638c9              # double 0.86429199999999995
	.quad	0x3fe5d987c6327ed8              # double 0.68280399999999997
	.quad	0x3fcd531db445ed4a              # double 0.229099
	.quad	0x3fd9e3b46fdeb52d              # double 0.40452300000000002
	.quad	0x3fd627f1b6912125              # double 0.346188
	.quad	0x3fd5757928e0c9da              # double 0.33529500000000001
	.quad	0x3fdd6bf444e0daa1              # double 0.45971400000000001
	.quad	0x3fdaf2ba9d1f6018              # double 0.42106500000000002
	.quad	0x3feb6215336deb96              # double 0.85572300000000001
	.quad	0x3fd0afc8b0079a28              # double 0.26072899999999999
	.quad	0x3fedaa1d755bccaf              # double 0.92701599999999995
	.quad	0x3fe16a033e78e193              # double 0.54419099999999998
	.quad	0x3fdf217d2849cb25              # double 0.48641899999999999
	.quad	0x3fc5b02d59d55e6c              # double 0.16943900000000001
	.quad	0x3fc15fcc1871e6cd              # double 0.135736
	.quad	0x3fda4ca925fe974a              # double 0.41092899999999999
	.quad	0x3fef93f6c2699c7c              # double 0.98681200000000002
	.quad	0x3fd6ebe1650a45d4              # double 0.35814699999999999
	.quad	0x3fe5e9f2778140dd              # double 0.68480799999999997
	.quad	0x3fc840852b4d8ba4              # double 0.189469
	.quad	0x3f96d549731098d4              # double 0.022297999999999998
	.quad	0x3fe9e1c9b4139863              # double 0.80881199999999998
	.quad	0x3fe79a0f0a5efe93              # double 0.73755599999999999
	.quad	0x3fced434a01abd1b              # double 0.24085100000000001
	.quad	0x3fedd81cf7878b7a              # double 0.93263099999999999
	.quad	0x3fd1f3387160956c              # double 0.28047
	.quad	0x3fd804d983947497              # double 0.37529600000000002
	.quad	0x3fe939e060fe4799              # double 0.78831499999999999
	.quad	0x3fe29731098d477c              # double 0.58095600000000003
	.quad	0x3fec79c842fa5094              # double 0.88986600000000004
	.quad	0x3feadf633ce63a5c              # double 0.83976899999999998
	.quad	0x3fe7dfc9ff92f2b6              # double 0.74606799999999995
	.quad	0x3fe2462e4d1a6506              # double 0.57106699999999999
	.quad	0x3fc30f062d40aaeb              # double 0.148896
	.quad	0x3fe214a2b9d3cbc5              # double 0.56501900000000005
	.quad	0x3fd9becaab8a5ce6              # double 0.40227000000000002
	.quad	0x3fd5adc0980b2420              # double 0.33872999999999998
	.quad	0x3fecfe3b03e20cd0              # double 0.90603400000000001
	.quad	0x3fdd05ea24cc6823              # double 0.453486
	.quad	0x3feb98bd66277c46              # double 0.86239500000000002
	.quad	0x3fe6fbd8be7296f6              # double 0.71824299999999996
	.quad	0x3fee4a3400b88ca4              # double 0.94655800000000001
	.quad	0x3fe6e392e1ef73c1              # double 0.71528000000000003
	.quad	0x3fe115182a9930be              # double 0.53382499999999999
	.quad	0x3fef2aa7ded6ba8c              # double 0.97395699999999996
	.quad	0x3fe1c1f85d744f5d              # double 0.55492799999999998
	.quad	0x3fa29ae4f3343fa3              # double 0.036338000000000002
	.quad	0x3fe325247cb70ac4              # double 0.59828400000000004
	.quad	0x3fcf61aa3f034b0e              # double 0.245168
	.quad	0x3fecfeb6bf444e0e              # double 0.90609300000000004
	.quad	0x3fddc2acb85a4f01              # double 0.465007
	.quad	0x3fec1d8c6d612c6b              # double 0.87860700000000003
	.quad	0x3fe823a4b5568e82              # double 0.75435099999999999
	.quad	0x3fe38e5a35d67ba2              # double 0.61112699999999998
	.quad	0x3fc1738e6d15ad10              # double 0.13633899999999999
	.quad	0x3fc85a4f00ef1349              # double 0.19025600000000001
	.quad	0x3fef8a009f623077              # double 0.98559600000000002
	.quad	0x3fab6262cba732df              # double 0.053484999999999998
	.quad	0x3fe0497b7414a4d3              # double 0.50897000000000003
	.quad	0x3fdb97fa5d28d003              # double 0.43115100000000001
	.quad	0x3fd42cf95d4e8fb0              # double 0.315245
	.quad	0x3fe749731098d478              # double 0.72771600000000003
	.quad	0x3fdf0ee49f51697f              # double 0.48528399999999999
	.quad	0x3fed22ff08893b7e              # double 0.91052200000000005
	.quad	0x3fe3480a5accd530              # double 0.60254399999999997
	.quad	0x3fe93bd9cae21102              # double 0.78855600000000003
	.quad	0x3fe945d41fa76534              # double 0.78977399999999997
	.quad	0x3fec452c59fb1e19              # double 0.88344400000000001
	.quad	0x3fcdad106ee30caa              # double 0.23184399999999999
	.quad	0x3fec9be4cd749279              # double 0.89402999999999999
	.quad	0x3fe4d512ec6bce85              # double 0.65100999999999998
	.quad	0x3fe22b27cbf6e3f8              # double 0.56776800000000005
	.quad	0x3fd11b21c475e636              # double 0.26728099999999999
	.quad	0x3fed8522ea0fd3b3              # double 0.92250200000000004
	.quad	0x3fddf78359bc33f8              # double 0.46823199999999998
	.quad	0x3fc58b60f1b25f63              # double 0.16831599999999999
	.quad	0x3fce4f11b60ae968              # double 0.236788
	.quad	0x3fb2b59146e4c0df              # double 0.073082999999999995
	.quad	0x3fdb88b545c78a6e              # double 0.43021900000000002
	.quad	0x3fe804ba0e842742              # double 0.75057700000000005
	.quad	0x3fe835696e58a32f              # double 0.75651999999999997
	.quad	0x3fcf92f2b66b6178              # double 0.246672
	.quad	0x3fd68f57f737da62              # double 0.35249900000000001
	.quad	0x3fe00ca3e7d13511              # double 0.50154299999999996
	.quad	0x3fdfd2a62aa1943a              # double 0.49723200000000001
	.quad	0x3febc0d4dc65c704              # double 0.86728899999999997
	.quad	0x3fd7931876188b11              # double 0.36835299999999999
	.quad	0x3fe2e3c968943e10              # double 0.590306
	.quad	0x3febf1c75818c5ca              # double 0.87326400000000004
	.quad	0x3fbe7c5ac471b478              # double 0.119085
	.quad	0x3fde0fc71d606317              # double 0.46971299999999999
	.quad	0x3fb6be7afa722186              # double 0.088844000000000006
	.quad	0x3fd37939a7c17a89              # double 0.30427399999999999
	.quad	0x3fb81eeed8904f6e              # double 0.094222
	.quad	0x3fcf0bd017dae819              # double 0.24254800000000001
	.quad	0x3fd08487b99d4520              # double 0.25808900000000001
	.quad	0x3fe610364388ebcc              # double 0.68947899999999995
	.quad	0x3fea4d4aa10e0221              # double 0.82193499999999997
	.quad	0x3fe6f694467381d8              # double 0.71760000000000002
	.quad	0x3fb2dca07f66e86c              # double 0.073678999999999994
	.quad	0x3fdbab5807fed203              # double 0.43233300000000002
	.quad	0x3fb9904b3c3e74b0              # double 0.099858000000000002
	.quad	0x3fd5fdc1615ebfa9              # double 0.343613
	.quad	0x3fc63315d701d9f5              # double 0.173434
	.quad	0x3fdc0114d2f5dbba              # double 0.43756600000000001
	.quad	0x3fe25495182a9931              # double 0.57282500000000003
	.quad	0x3fc76af038e29f9d              # double 0.182951
	.quad	0x3fc314b9cb6848bf              # double 0.14907000000000001
	.quad	0x3fd987724fa8b4c0              # double 0.39889200000000002
	.quad	0x3fe85f97aaac1095              # double 0.76166900000000004
	.quad	0x3fe93a860dcb9a9e              # double 0.78839400000000004
	.quad	0x3fd1bab649d388a9              # double 0.27702100000000002
	.quad	0x3fe12adc4c9c90c5              # double 0.53648200000000001
	.quad	0x3fe66c82e019b0ab              # double 0.70074599999999998
	.quad	0x3fa6527a20578e5c              # double 0.043597999999999998
	.quad	0x3fefb5568e820e63              # double 0.99088600000000004
	.quad	0x3fb6aeafab53d641              # double 0.088603000000000001
	.quad	0x3fc52b020c49ba5e              # double 0.16537499999999999
	.quad	0x3fe46598e10cf5b2              # double 0.63740200000000002
	.quad	0x3fe266ba493c89f4              # double 0.57504
	.quad	0x3fdd105186db50f4              # double 0.454121
	.quad	0x3fc102e6644d8772              # double 0.13290099999999999
	.quad	0x3f9d2630ec311623              # double 0.028466000000000002
	.quad	0x3fd5a033e78e1933              # double 0.33790300000000001
	.quad	0x3feb029ae4f33440              # double 0.84406800000000004
	.quad	0x3fefcfd8f0c77dd8              # double 0.99412199999999995
	.quad	0x3fb600b029281776              # double 0.085947999999999996
	.quad	0x3fee42bb6672fba0              # double 0.94564599999999998
	.quad	0x3fd089b52007dd44              # double 0.258405
	.quad	0x3fe1ca1f080303c0              # double 0.55592299999999994
	.quad	0x3fd2957470eb24a7              # double 0.29037200000000002
	.quad	0x3fd9fa7eb6bf444e              # double 0.405914
	.quad	0x3fcfaa3f034b0e1b              # double 0.24738299999999999
	.quad	0x3fe6d948dc11e42e              # double 0.71402399999999999
	.quad	0x3fd3409e55c0fcb5              # double 0.300819
	.quad	0x3fc6ebaade657b85              # double 0.179067
	.quad	0x3fd71b3f20a73f75              # double 0.36103800000000003
	.quad	0x3fe9dfce3150dae4              # double 0.80857000000000001
	.quad	0x3fea07182235b4ee              # double 0.81336600000000003
	.quad	0x3fd972c5197a2489              # double 0.39762999999999998
	.quad	0x3fd1d0a67620ee8d              # double 0.27836
	.quad	0x3fe5c5b8dc55000d              # double 0.68038600000000005
	.quad	0x3fe41bac2df0d413              # double 0.62837799999999999
	.quad	0x3fef288ce703afb8              # double 0.9737
	.quad	0x3fd5fe9fadafd114              # double 0.34366600000000003
	.quad	0x3fd2178b3700474e              # double 0.28268700000000002
	.quad	0x3fd33affb04ee7c5              # double 0.30047600000000002
	.quad	0x3fefdf58c08b75ea              # double 0.99601399999999995
	.quad	0x3fcbe5c0b9991362              # double 0.217949
	.quad	0x3fe0c9a5657fb69a              # double 0.52461500000000005
	.quad	0x3fe5c01a36e2eb1c              # double 0.67969999999999997
	.quad	0x3fe3af3c2dadb835              # double 0.61514100000000005
	.quad	0x3fdc9a027525460b              # double 0.44690000000000002
	.quad	0x3fb87b02d59d55e7              # double 0.095627000000000004
	.quad	0x3fe5a116659d12cb              # double 0.67591400000000001
	.quad	0x3fea57ba6698bb4d              # double 0.82320899999999997
	.quad	0x3fbe176ddaceee0f              # double 0.117545
	.quad	0x3fdd32c1f42bb667              # double 0.45622299999999999
	.quad	0x3fe7681669ced0b3              # double 0.731456
	.quad	0x3fea710667f90d9d              # double 0.82629699999999995
	.quad	0x3fbc713f077ccc03              # double 0.11110299999999999
	.quad	0x3fbc44e0daa0cae6              # double 0.110426
	.quad	0x3fe3a4b33daf8df8              # double 0.61385500000000004
	.quad	0x3fe87127f5e84f09              # double 0.76381299999999996
	.quad	0x3fc13037d63022dd              # double 0.13428399999999999
	.quad	0x3fd0360d0247021d              # double 0.253299
	.quad	0x3feba1016ce789e7              # double 0.86340399999999995
	.quad	0x3fd12e9468017119              # double 0.26846799999999998
	.quad	0x3fdc70153bd16766              # double 0.44434099999999999
	.quad	0x3fe66de76427c7c5              # double 0.70091599999999998
	.quad	0x3fee8323358f2e06              # double 0.95350800000000002
	.quad	0x3fe672d1aeb3dd12              # double 0.70151600000000003
	.quad	0x3feda85ec3dab5c4              # double 0.92680300000000004
	.quad	0x3fb73397dd00f777              # double 0.090631000000000003
	.quad	0x3fe12ec6bce8533b              # double 0.53695999999999999
	.quad	0x3fb59e518f3eccc4              # double 0.084446999999999994
	.quad	0x3fb8345cfede97d0              # double 0.094548999999999994
	.quad	0x3fe8f4be835dedf2              # double 0.77987600000000001
	.quad	0x3f9eca686e7e62dc              # double 0.030068999999999999
	.quad	0x3fc3dac68a936c59              # double 0.155114
	.quad	0x3fd3d249e44fa051              # double 0.30970999999999999
	.quad	0x3fd249d388a8b08e              # double 0.28575600000000001
	.quad	0x3fe42dd9c27e9531              # double 0.63059699999999996
	.quad	0x3fcf1593e5fb71fc              # double 0.24284600000000001
	.quad	0x3f8f7d73c9257860              # double 0.015376000000000001
	.quad	0x3fd6d6d3b6cbd988              # double 0.35686200000000001
	.quad	0x3fea5edd052934ad              # double 0.82408000000000003
	.quad	0x3fcb60d887ebf22c              # double 0.213893
	.quad	0x3fb1b71758e21965              # double 0.069199999999999998
	.quad	0x3fe674128bf3bea9              # double 0.70166899999999999
	.quad	0x3f8831f03d145d85              # double 0.011814
	.quad	0x3fe28b1feeb2d0a2              # double 0.57948299999999997
	.quad	0x3fd4d35eb7457c0b              # double 0.325401
	.quad	0x3fd3366d7a56de33              # double 0.30019699999999999
	.quad	0x3fce2888b545c78a              # double 0.23561199999999999
	.quad	0x3fe190fb65668c26              # double 0.54894799999999999
	.quad	0x3fc466d373affb05              # double 0.159388
	.quad	0x3feef268d32830a1              # double 0.96709100000000003
	.quad	0x3fda193708aac96d              # double 0.40778900000000001
	.quad	0x3fc144cbe1eb4203              # double 0.134912
	.quad	0x3fe62c9afe1da7b1              # double 0.69294500000000003
	.quad	0x3fbcf41f212d7732              # double 0.11310000000000001
	.quad	0x3fead935fc3b4f61              # double 0.83901499999999996
	.quad	0x3feaf1737542a23c              # double 0.841974
	.quad	0x3febc35696e58a33              # double 0.86759500000000001
	.quad	0x3fe9c9a77e5eaab0              # double 0.80586599999999997
	.quad	0x3fec1635610adcd3              # double 0.87771100000000002
	.quad	0x3fc2e3e6c4c5974e              # double 0.14757999999999999
	.quad	0x3fd8c9c90c4dec1c              # double 0.38731599999999999
	.quad	0x3fdb70110a137f39              # double 0.42871500000000001
	.quad	0x3fea76b1a2a4db16              # double 0.82698899999999997
	.quad	0x3fcd6a1e81cb46bb              # double 0.22980100000000001
	.quad	0x3fe001a1554fbdad              # double 0.50019899999999995
	.quad	0x3fb999bb2788db05              # double 0.10000199999999999
	.quad	0x3fe9220578e5c4eb              # double 0.78540299999999996
	.quad	0x3fea163baba7b917              # double 0.81521399999999999
	.quad	0x3fed044d013a92a3              # double 0.906775
	.quad	0x3fe6468cac4b4d05              # double 0.69611199999999995
	.quad	0x3fe1908c3f3e0371              # double 0.54889500000000002
	.quad	0x3fe5426351deefe5              # double 0.664354
	.quad	0x3fe5141205bc01a3              # double 0.65869999999999995
	.quad	0x3fe379fcb0c026cc              # double 0.60864099999999999
	.quad	0x3fcb1dabe27179c0              # double 0.211843
	.quad	0x3fec05c03361565c              # double 0.87570199999999998
	.quad	0x3fd04a2fcefaa476              # double 0.25452799999999998
	.quad	0x3f92046c764adff8              # double 0.017595
	.quad	0x3fc073ffac1d29dc              # double 0.12853999999999999
	.quad	0x3fc991361dc93ea3              # double 0.199744
	.quad	0x3fda5dbb9cf9a06a              # double 0.41197099999999998
	.quad	0x3fdc0e8427418d69              # double 0.438386
	.quad	0x3fe01003eea209ab              # double 0.50195500000000004
	.quad	0x3fed31a6d698fe69              # double 0.91231099999999998
	.quad	0x3fd97be9856a37ac              # double 0.39818799999999999
	.quad	0x3fb3b7952d234eba              # double 0.077020000000000005
	.quad	0x3fca70d1fa333765              # double 0.206568
	.quad	0x3fdc81626b2f2303              # double 0.44539699999999999
	.quad	0x3fee506bbdbe3c10              # double 0.94731699999999996
	.quad	0x3fea94dd72367e41              # double 0.83067199999999997
	.quad	0x3fc2a50d6b228dca              # double 0.14566200000000001
	.quad	0x3fdee41d4b6a619e              # double 0.48267300000000002
	.quad	0x3fe92d8c2a454de8              # double 0.78681000000000001
	.quad	0x3fb0e0b912dba4d7              # double 0.065929000000000001
	.quad	0x3fddceb78897e996              # double 0.46574199999999999
	.quad	0x3fdd68c26138fffc              # double 0.45951900000000001
	.quad	0x3fe6d388a8b08dd2              # double 0.71332200000000001
	.quad	0x3fc523aafff36ac6              # double 0.16515099999999999
	.quad	0x3fe48a222d5171e3              # double 0.64186200000000004
	.quad	0x3fdaedfe75bc44bf              # double 0.42077599999999998
	.quad	0x3fe237585be1a826              # double 0.56925599999999998
	.quad	0x3feaa9670196d8f5              # double 0.833179
	.quad	0x3fedc0fcb4f1e4b4              # double 0.92980799999999996
	.quad	0x3f90fcb4f1e4b44a              # double 0.016589
	.quad	0x3fe9b12f4cf4a559              # double 0.80287900000000001
	.quad	0x3fd472c94b380cb7              # double 0.31950600000000001
	.quad	0x3fe46256366d7a57              # double 0.63700400000000001
	.quad	0x3fdf1d19157abb88              # double 0.486151
	.quad	0x3fd4dea897635e74              # double 0.32608999999999999
	.quad	0x3fecc766c6de7642              # double 0.89934099999999995
	.quad	0x3fe6b7f7be121ee6              # double 0.70995699999999995
	.quad	0x3fdcce8533b10774              # double 0.45010499999999998
	.quad	0x3fe3e86e7e62dc6e              # double 0.62212299999999998
	.quad	0x3fc6806290eed02d              # double 0.175793
	.quad	0x3fe1dba4d6e47dc3              # double 0.55806199999999995
	.quad	0x3fec0d90e23af31b              # double 0.87665599999999999
	.quad	0x3fec18548a9bcfd5              # double 0.87797000000000003
	.quad	0x3fe61de26916440f              # double 0.69114799999999998
	.quad	0x3fe4e9af5ba2be06              # double 0.65352600000000005
	.quad	0x3fee48711d798d8b              # double 0.94634300000000005
	.quad	0x3fe7b7a5f41aef70              # double 0.74116800000000005
	.quad	0x3fd8e219652bd3c3              # double 0.38879999999999998
	.quad	0x3fd7c38f36694899              # double 0.371311
	.quad	0x3fdfa14057082492              # double 0.49421700000000002
	.quad	0x3fb35653c9abb01d              # double 0.075536000000000006
	.quad	0x3fefc6b26bf8769f              # double 0.99300500000000002
	.quad	0x3fd1bd2fa0d77b7c              # double 0.27717199999999997
	.quad	0x3fec9bcdbbe0157f              # double 0.89401900000000001
	.quad	0x3fe96199780baa58              # double 0.79316399999999998
	.quad	0x3faeb52c9d16fc9c              # double 0.059976000000000002
	.quad	0x3fea8620ab713272              # double 0.82887299999999997
	.quad	0x3fedfc2224edf612              # double 0.93702799999999997
	.quad	0x3fe1368cef672b88              # double 0.53790899999999997
	.quad	0x3fec1c25d074213a              # double 0.87843599999999999
	.quad	0x3fe631ca7d6733ec              # double 0.69357800000000003
	.quad	0x3fbfde5082cf52b9              # double 0.124486
	.quad	0x3fefc7da1ec4e725              # double 0.99314599999999997
	.quad	0x3fe29c6d1e108c3f              # double 0.58159499999999997
	.quad	0x3fcca350d2806af4              # double 0.22373399999999999
	.quad	0x3fd761b6d43d0397              # double 0.36533900000000002
	.quad	0x3fe4907b784662bb              # double 0.64263700000000001
	.quad	0x3fe3d056c508b32d              # double 0.61918200000000001
	.quad	0x3fe6044284dfce31              # double 0.68801999999999996
	.quad	0x3fe439ecf6380022              # double 0.63207100000000005
	.quad	0x3fe5c6b484d76ab6              # double 0.68050600000000006
	.quad	0x3fd0c94f69ca9ef5              # double 0.26228699999999999
	.quad	0x3fb3f5e84f09528f              # double 0.077970999999999999
	.quad	0x3fe7152b0a6fc58b              # double 0.72133400000000003
	.quad	0x3fea51654d61b2a2              # double 0.82243599999999994
	.quad	0x3fd882be8bc169c2              # double 0.38297999999999999
	.quad	0x3fe159d12cadddf4              # double 0.54221399999999997
	.quad	0x3fe842eba27ae9ab              # double 0.75816899999999998
	.quad	0x3fe248216c61522a              # double 0.57130499999999995
	.quad	0x3fa7a5b0ff10ecb7              # double 0.046185999999999998
	.quad	0x3f92ac753e707e17              # double 0.018235999999999999
	.quad	0x3fe113b7d84901d2              # double 0.53365700000000005
	.quad	0x3fe386b59146e4c1              # double 0.61019400000000001
	.quad	0x3fe825b530ced4e5              # double 0.75460300000000002
	.quad	0x3fdc6b54e2b063e0              # double 0.44405099999999997
	.quad	0x3fd471fbc5de9c02              # double 0.31945699999999999
	.quad	0x3fc9c0767d34df05              # double 0.201186
	.quad	0x3fc57c45cbbc2b95              # double 0.167855
	.quad	0x3fed633ce63a5c1c              # double 0.91836399999999995
	.quad	0x3fc59780baa582dc              # double 0.168686
	.quad	0x3fcf01f31f46ed24              # double 0.24224699999999999
	.quad	0x3fbe7d88c1db0143              # double 0.119103
	.quad	0x3fee8870110a137f              # double 0.95415499999999998
	.quad	0x3fef26fa3fcc9eaa              # double 0.97350800000000004
	.quad	0x3fe15ef1fddebd90              # double 0.54283999999999999
	.quad	0x3fee1971c10d7bea              # double 0.94060600000000005
	.quad	0x3fd1b7f1737542a2              # double 0.27685199999999999
	.quad	0x3fe311233df2a9d6              # double 0.59584199999999998
	.quad	0x3fbd0edc3bd59924              # double 0.113508
	.quad	0x3fe83b517a46173c              # double 0.75724100000000005
	.quad	0x3fbc38088509bf9c              # double 0.11022999999999999
	.quad	0x3fe952deca2552a0              # double 0.79136600000000001
	.quad	0x3fe3fb65668c2614              # double 0.62443800000000005
	.quad	0x3fe19737542a23c0              # double 0.549709
	.quad	0x3fcefa93af74cd31              # double 0.24202199999999999
	.quad	0x3fee68c8abd5dc40              # double 0.95029099999999999
	.quad	0x3fd23b0813cab820              # double 0.28485300000000002
	.quad	0x3fd9dfd2630ec311              # double 0.40428599999999998
	.quad	0x3fe38f75536933a0              # double 0.61126199999999997
	.quad	0x3feac2fa5093964a              # double 0.83630099999999996
	.quad	0x3fe4045132f87ad1              # double 0.62552700000000006
	.quad	0x3fe0bb2fec56d5d0              # double 0.52285000000000004
	.quad	0x3fe62af35e310dbf              # double 0.692743
	.quad	0x3fe26312f4cf4a56              # double 0.57459400000000005
	.quad	0x3fdf128bf3bea91e              # double 0.48550700000000002
	.quad	0x3fd8ce0b912dba4d              # double 0.38757599999999998
	.quad	0x3fa5a5b9628cbd12              # double 0.042279999999999998
	.quad	0x3fbce736049ecb32              # double 0.112903
	.quad	0x3fe4206e9ff0cbb0              # double 0.62895900000000005
	.quad	0x3fb70a4e379b77c0              # double 0.090000999999999998
	.quad	0x3fe46f954eb13dfb              # double 0.63862099999999999
	.quad	0x3fddfa333764f11b              # double 0.46839599999999998
	.quad	0x3fe9a396073de1e3              # double 0.80121900000000001
	.quad	0x3fcd4b380cb6c7a8              # double 0.22885800000000001
	.quad	0x3fd5be0157eed45f              # double 0.33972200000000002
	.quad	0x3fe7ba860dcb9a9e              # double 0.74151900000000004
	.quad	0x3fe753b29a1b9f99              # double 0.72896700000000003
	.quad	0x3f89806f262888b5              # double 0.012452
	.quad	0x3fd8e3864cb5bb38              # double 0.38888699999999998
	.quad	0x3fcfcb9a9da597d5              # double 0.24840100000000001
	.quad	0x3fc89a8049667b5f              # double 0.192215
	.quad	0x3fac50268900c522              # double 0.055299000000000001
	.quad	0x3fc3af20ea5b530d              # double 0.153782
	.quad	0x3fb4e91c8eabffce              # double 0.081682000000000004
	.quad	0x3fd1722e1ac57e24              # double 0.272594
	.quad	0x3fd13986338b47c7              # double 0.26913599999999999
	.quad	0x3fc422706d506573              # double 0.157301
	.quad	0x3fd978b3700474da              # double 0.39799200000000001
	.quad	0x3fecaf61ed5ae1ce              # double 0.89640900000000001
	.quad	0x3fddca5375c8d9f9              # double 0.465474
	.quad	0x3f5b328b6d86ec18              # double 0.00166
	.quad	0x3fe90856e696a26e              # double 0.78226799999999996
	.quad	0x3fe4322f2734f82f              # double 0.63112599999999996
	.quad	0x3fa7cfe586013661              # double 0.046508000000000001
	.quad	0x3fc157b41bfbdf09              # double 0.135489
	.quad	0x3fb37d84901d1915              # double 0.076133999999999993
	.quad	0x3fe834acaff6d331              # double 0.75643000000000005
	.quad	0x3fe228a82a5614e0              # double 0.56746300000000005
	.quad	0x3fe6db48909289db              # double 0.71426800000000001
	.quad	0x3febb2cc70867ad9              # double 0.86557600000000001
	.quad	0x3fc469057d1782d4              # double 0.15945500000000001
	.quad	0x3fe2ad0a24463066              # double 0.583623
	.quad	0x3fe9d460aa64c2f8              # double 0.80717499999999998
	.quad	0x3fed5a7d24180d3d              # double 0.917296
	.quad	0x3fdec8259e1f3a58              # double 0.480966
	.quad	0x3fda9667b5f1bef5              # double 0.41543000000000002
	.quad	0x3fe6c4f5d35653ca              # double 0.71154300000000004
	.quad	0x3fb22424a276b7ed              # double 0.070863999999999996
	.quad	0x3fc88c692f6e8295              # double 0.19178500000000001
	.quad	0x3fe2fc02afdda8bd              # double 0.59326299999999998
	.quad	0x3fe9b1422ccb3a26              # double 0.80288800000000005
	.quad	0x3fcf7f7be121ee67              # double 0.24607799999999999
	.quad	0x3fc23f9a49c2c1b1              # double 0.142566
	.quad	0x3feca63305100a39              # double 0.89528799999999997
	.quad	0x3fee78db4890928a              # double 0.95225300000000002
	.quad	0x3fb1072085b18549              # double 0.066515000000000005
	.quad	0x3fa85cee17a02fb6              # double 0.047584000000000001
	.quad	0x3fb8ccff21b3aeef              # double 0.096878000000000006
	.quad	0x3fc36440f2389720              # double 0.15149699999999999
	.quad	0x3fe37be76c8b4396              # double 0.60887500000000006
	.quad	0x3f9068db8bac710d              # double 0.016025000000000001
	.quad	0x3fd6067cf1c3265b              # double 0.34414600000000001
	.quad	0x3fd1be0157eed45f              # double 0.27722200000000002
	.quad	0x3fec846a5d6bebe1              # double 0.89116399999999996
	.quad	0x3fd5000000000000              # double 0.328125
	.quad	0x3fc75a426bb55ac0              # double 0.18244199999999999
	.quad	0x3fd8eeed8904f6e0              # double 0.38958300000000001
	.quad	0x3fe9f0ac3a860dcc              # double 0.81062900000000004
	.quad	0x3fcd37fbefd00714              # double 0.228271
	.quad	0x3fe7d1372a38b8ae              # double 0.74428899999999998
	.quad	0x3fe2cd035371971c              # double 0.58752599999999999
	.quad	0x3febbe78e1932d6f              # double 0.86700100000000002
	.quad	0x3fc17a89331a08c0              # double 0.13655200000000001
	.quad	0x3fe427221858bc5a              # double 0.62977700000000003
	.quad	0x3fea6f5232d2bb23              # double 0.82608899999999996
	.quad	0x3fc01eff9f87f024              # double 0.125946
	.quad	0x3fdbe6b8305d95dd              # double 0.43595699999999998
	.quad	0x3fec65061416377a              # double 0.88733200000000001
	.quad	0x3fdb013a92a30553              # double 0.42194999999999999
	.quad	0x3fef2ca793576039              # double 0.97420099999999998
	.quad	0x3fe7307d0aed99cc              # double 0.72466900000000001
	.quad	0x3fe1344e50c5eb31              # double 0.53763499999999997
	.quad	0x3fe896ce789e774f              # double 0.76840900000000001
	.quad	0x3feb78ceb356da01              # double 0.85849699999999995
	.quad	0x3fe59e060fe47992              # double 0.67554000000000003
	.quad	0x3fe89f44d4456712              # double 0.76944199999999996
	.quad	0x3fd3bb8800eae18b              # double 0.30832100000000001
	.quad	0x3fde1205bc01a36e              # double 0.46984999999999999
	.quad	0x3fef831487768167              # double 0.98475100000000004
	.quad	0x3fea713f077ccc03              # double 0.82632399999999995
	.quad	0x3fda7f51efb6dca0              # double 0.41402099999999997
	.quad	0x3fe05970b49e01de              # double 0.51091799999999998
	.quad	0x3fe6594af4f0d845              # double 0.69840000000000002
	.quad	0x3fe3d9146e4c0df6              # double 0.62024900000000005
	.quad	0x3fdf74a771c970f8              # double 0.49149500000000002
	.quad	0x3fe3ad080b673c4f              # double 0.61487199999999997
	.quad	0x3fc76787ce95faa9              # double 0.18284700000000001
	.quad	0x3fb09f1f14983d79              # double 0.064928
	.quad	0x3fe97b4a2339c0ec              # double 0.7963
	.quad	0x3fefa539756c93a7              # double 0.98891899999999999
	.quad	0x3fe828aa433508f6              # double 0.75496399999999997
	.quad	0x3fe10763a1900820              # double 0.53215199999999996
	.quad	0x3fe8c9d388a8b08e              # double 0.77463700000000002
	.quad	0x3faa9bae46cfc82a              # double 0.051969000000000001
	.quad	0x3fc002afdda8bd23              # double 0.125082
	.quad	0x3fe9ca643cc07aaf              # double 0.80595600000000001
	.quad	0x3fd825fe974a3401              # double 0.37731900000000002
	.quad	0x3fe3d4aa10e02214              # double 0.61970999999999998
	.quad	0x3fe761869835158c              # double 0.73065500000000005
	.quad	0x3fd921c475e6362a              # double 0.39268599999999998
	.quad	0x3fea8709741d084f              # double 0.82898400000000005
	.quad	0x3fe71b8aa00192a7              # double 0.72211199999999998
	.quad	0x3fd8d3cff64cf8d7              # double 0.387928
	.quad	0x3fef74d594f26aec              # double 0.98301199999999999
	.quad	0x3fee4abe6a337a81              # double 0.94662400000000002
	.quad	0x3fe1612839042d8c              # double 0.54310999999999998
	.quad	0x3fe88bcdfefbf402              # double 0.76706600000000003
	.quad	0x3fe04a83b1d0c804              # double 0.50909599999999999
	.quad	0x3fe1eaee2003ab86              # double 0.55992799999999998
	.quad	0x3fd72d40aaeafab5              # double 0.36213699999999999
	.quad	0x3fe860221426fe72              # double 0.76173500000000005
	.quad	0x3fe578a6dacabc51              # double 0.67097799999999996
	.quad	0x3faccfd08d4bad7d              # double 0.056272999999999997
	.quad	0x3fe546cdaf4adbc6              # double 0.66489299999999996
	.quad	0x3fcf2873bc903ea7              # double 0.243422
	.quad	0x3fdade3b8a19c9d6              # double 0.41981400000000002
	.quad	0x3fe70759253543af              # double 0.71964700000000004
	.quad	0x3fe38438088509c0              # double 0.60989000000000004
	.quad	0x3fe819524bfd2e94              # double 0.75309099999999995
	.quad	0x3fd02c2374794ea0              # double 0.25269399999999997
	.quad	0x3fd66a22b3892ee8              # double 0.35022799999999998
	.quad	0x3fb9ec4e7253da73              # double 0.101262
	.quad	0x3fd16b93ccd0fe8b              # double 0.27219100000000002
	.quad	0x3fe755193708aac9              # double 0.72913799999999995
	.quad	0x3fe991ff7164c72a              # double 0.799072
	.quad	0x3fe59deacc92146a              # double 0.67552699999999999
	.quad	0x3fe97dcbddb9841b              # double 0.79660600000000004
	.quad	0x3fec93b7d84901d2              # double 0.89303200000000005
	.quad	0x3fd830984e3ffef4              # double 0.37796600000000002
	.quad	0x3fe017bd8be7296f              # double 0.50289799999999996
	.quad	0x3fed3cd35a858794              # double 0.91367500000000001
	.quad	0x3fb97a24894c447c              # double 0.099519999999999997
	.quad	0x3fee1973d9ec7000              # double 0.94060699999999997
	.quad	0x3fe32d362e903644              # double 0.59926900000000005
	.quad	0x3fd79c5a3e39f773              # double 0.36891800000000002
	.quad	0x3fc9801b43526528              # double 0.19922200000000001
	.quad	0x3fa5100a393ee5ef              # double 0.041138000000000001
	.quad	0x3fec9522a6f3f530              # double 0.89320500000000003
	.quad	0x3fe89958969a0ad9              # double 0.76871900000000004
	.quad	0x3fec5273d5bab218              # double 0.88506499999999999
	.quad	0x3fede273929ed395              # double 0.93389299999999997
	.quad	0x3fdd15f45e0b4e12              # double 0.45446500000000001
	.quad	0x3fc159578a2a90cd              # double 0.13553899999999999
	.quad	0x3fec834b0e1b4bb6              # double 0.89102700000000001
	.quad	0x3fbe5cb35f3d7d39              # double 0.118602
	.quad	0x3fe46b9c304ccee6              # double 0.63813600000000004
	.quad	0x3fe9a6b723ee1bd2              # double 0.80160100000000001
	.quad	0x3fed926c7eae5bc8              # double 0.92412399999999995
	.quad	0x3fe070fe047d3d43              # double 0.51379300000000006
	.quad	0x3fb7562174c4cdfb              # double 0.091158000000000003
	.quad	0x3fe51be2b4959e62              # double 0.65965399999999996
	.quad	0x3feffc1bda5119ce              # double 0.999525
	.quad	0x3fe3e5a14488c60d              # double 0.62178100000000003
	.quad	0x3fd8ef88b9778573              # double 0.38962000000000002
	.quad	0x3fc0a2f48c2e770c              # double 0.12997300000000001
	.quad	0x3fd274d9c6b0531a              # double 0.28838200000000003
	.quad	0x3fecdf84cad57bc8              # double 0.902285
	.quad	0x3fe741b328b6d86f              # double 0.72677000000000003
	.quad	0x3fdec322291fb3fa              # double 0.48065999999999998
	.quad	0x3fe65adb8348f53c              # double 0.69859099999999996
	.quad	0x3fa3f5d78811b1d9              # double 0.038984999999999999
	.quad	0x3fc05a8155d5f56a              # double 0.12776199999999999
	.quad	0x3f6b17481b21c476              # double 0.003307
	.quad	0x3fed25b317efe0ce              # double 0.91085199999999999
	.quad	0x3fdc811b1d92b7fe              # double 0.44538
	.quad	0x3fe319a415f45e0b              # double 0.59687999999999997
	.quad	0x3fe18e779207d4e1              # double 0.54864100000000005
	.quad	0x3fdc2b0a6fc58ab9              # double 0.44012699999999999
	.quad	0x3fdd09b30728e92d              # double 0.45371699999999998
	.quad	0x3fed2012599ed7c7              # double 0.910165
	.quad	0x3fef8563ed0f6274              # double 0.98503300000000004
	.quad	0x3fef84816f0068dc              # double 0.98492500000000005
	.quad	0x3feeeab5807fed20              # double 0.96615099999999998
	.quad	0x3fe04ea8da7f3cf7              # double 0.509602
	.quad	0x3fe58fd5cb790fb6              # double 0.67380799999999996
	.quad	0x3fe57dbf487fcb92              # double 0.67159999999999997
	.quad	0x3faeaa4b9884c6a4              # double 0.059893000000000002
	.quad	0x3fec6e807bbb6241              # double 0.88848899999999997
	.quad	0x3fccdc33721d53ce              # double 0.22547
	.quad	0x3fe4e1bd1ed9dfdb              # double 0.65255600000000002
	.quad	0x3fe13f2d3c792d13              # double 0.53896200000000005
	.quad	0x3fc343a647fdc593              # double 0.150502
	.quad	0x3fbe40420f6f08cc              # double 0.118168
	.quad	0x3fe3679cc74b838c              # double 0.60639799999999999
	.quad	0x3fc525aab4741073              # double 0.165212
	.quad	0x3fef58255b035bd5              # double 0.97950999999999999
	.quad	0x3fe6ca1ad6451b93              # double 0.712171
	.quad	0x3fbf9bdc69f8c21e              # double 0.123472
	.quad	0x3fcf5f1bef49cf57              # double 0.24509
	.quad	0x3fb1f8d2e514c22f              # double 0.070203000000000002
	.quad	0x3f71a005c4651f3f              # double 0.0043030000000000004
	.quad	0x3fd20b780346dc5d              # double 0.28194999999999998
	.quad	0x3fd153ac4f7ec354              # double 0.27073199999999997
	.quad	0x3fd2bd1244a6223e              # double 0.29278999999999999
	.quad	0x3fdb533b10774688              # double 0.42695499999999997
	.quad	0x3fd3fb3743632c1f              # double 0.31220799999999999
	.quad	0x3fe3b3ce63a5c1c6              # double 0.615699
	.quad	0x3fed4dee34fc610f              # double 0.91576299999999999
	.quad	0x3fed19ae924f227d              # double 0.909385
	.quad	0x3feab955f78359bc              # double 0.83512399999999997
	.quad	0x3fcf4ccab3edd8b6              # double 0.244531
	.quad	0x3feba2ee41919ac8              # double 0.86363900000000005
	.quad	0x3feb68d10f51ac9b              # double 0.856545
	.quad	0x3fb9270b06c43f60              # double 0.098252000000000005
	.quad	0x3fe6adf505d0fa59              # double 0.708735
	.quad	0x3fdc22749f0e4da1              # double 0.43960300000000002
	.quad	0x3fc3ea2d2fe3f35a              # double 0.155584
	.quad	0x3fefc99ae924f228              # double 0.99336000000000002
	.quad	0x3fe526f3f52fc265              # double 0.66100499999999995
	.quad	0x3fed27a41e57d9dc              # double 0.91108900000000003
	.quad	0x3fdfb9e492bc2fc7              # double 0.49572100000000002
	.quad	0x3fd3ec56d5cfaace              # double 0.31130000000000002
	.quad	0x3fea04a0e410b631              # double 0.81306500000000004
	.quad	0x3fe32fe1da7b0b39              # double 0.59959499999999999
	.quad	0x3fec17fa5d28d003              # double 0.87792700000000001
	.quad	0x3feb438b04ab606b              # double 0.85199499999999995
	.quad	0x3fd15ecc3e3193f7              # double 0.27141100000000001
	.quad	0x3f847b677f6b1a2a              # double 0.010000999999999999
	.quad	0x3fccee525892684d              # double 0.226023
	.quad	0x3fd4e2f37fbefd00              # double 0.32635199999999998
	.quad	0x3fed288ce703afb8              # double 0.91120000000000001
	.quad	0x3fef38b8ae31d713              # double 0.97567400000000004
	.quad	0x3fd586833c60029f              # double 0.336335
	.quad	0x3f7a5daf07bfe7e2              # double 0.006437
	.quad	0x3fb8f9b13165d399              # double 0.097559999999999994
	.quad	0x3fe4de4e69f05ea2              # double 0.65213699999999997
	.quad	0x3fcd677f6b1a2a4e              # double 0.22972100000000001
	.quad	0x3fe4f0cdc8754f37              # double 0.65439499999999995
	.quad	0x3fd3e939eadd590c              # double 0.31111
	.quad	0x3fd7fb480a5accd5              # double 0.37471199999999999
	.quad	0x3fe3393250b5243a              # double 0.60073200000000004
	.quad	0x3fecdf6124074645              # double 0.90226799999999996
	.quad	0x3fbd85be1a826245              # double 0.11532199999999999
	.quad	0x3fca368f08461f9f              # double 0.20479
	.quad	0x3fc0de7ea5f84cad              # double 0.13178999999999999
	.quad	0x3fed9c53f39d1b2e              # double 0.92533299999999996
	.quad	0x3fee73c4f3ba7760              # double 0.95163200000000003
	.quad	0x3feaf082491afc05              # double 0.84185900000000002
	.quad	0x3feab62a5e785b5b              # double 0.83473699999999995
	.quad	0x3fe5350092ccf6be              # double 0.66271999999999998
	.quad	0x3fed39c304ccee5b              # double 0.91330100000000003
	.quad	0x3f7c8b86b15f88fd              # double 0.0069690000000000004
	.quad	0x3fe5c2528ae74f2f              # double 0.67997099999999999
	.quad	0x3fc8534bd76ee73e              # double 0.19004199999999999
	.quad	0x3fef77c243dccea3              # double 0.98336900000000004
	.quad	0x3fef2b5e529bae47              # double 0.97404400000000002
	.quad	0x3fc6cc70867ad8e4              # double 0.17811399999999999
	.quad	0x3fd559d99029ae4f              # double 0.33360899999999999
	.quad	0x3fda995ee136e71d              # double 0.41561100000000001
	.quad	0x3fee1817b95a2941              # double 0.94044099999999997
	.quad	0x3fedbd577963992d              # double 0.92936300000000005
	.quad	0x3fd8b367a0f9096c              # double 0.38595000000000002
	.quad	0x3fd9e9707182235b              # double 0.40487299999999998
	.quad	0x3fe2efdeb52c9d17              # double 0.591781
	.quad	0x3fe215b35b0bbf51              # double 0.56514900000000001
	.quad	0x3fc7715c63ae2542              # double 0.183147
	.quad	0x3fe143a42f1ed17c              # double 0.53950699999999996
	.quad	0x3fe07954eb13dfb1              # double 0.51481100000000002
	.quad	0x3fe1b645a1cac083              # double 0.55349999999999999
	.quad	0x3fedcc0379314446              # double 0.93115400000000004
	.quad	0x3fbb75ea67e846a6              # double 0.107268
	.quad	0x3fd0d7b2031ceaf2              # double 0.26316499999999998
	.quad	0x3fe20d79d0a67621              # double 0.56414500000000001
	.quad	0x3fecda8bd230b9dc              # double 0.90167799999999997
	.quad	0x3fc52a6b0d9513f9              # double 0.165357
	.quad	0x3fedea4873365882              # double 0.93484900000000004
	.quad	0x3fe6c477ff151e75              # double 0.71148299999999998
	.quad	0x3fe778140dd3fe19              # double 0.73340799999999995
	.quad	0x3fd8c03361565c2d              # double 0.38673099999999999
	.quad	0x3fd5d9c27e953155              # double 0.341416
	.quad	0x3fe723aafff36ac6              # double 0.72310399999999997
	.quad	0x3fca231832fcac8e              # double 0.20419599999999999
	.quad	0x3fd101d19157abb9              # double 0.26573600000000003
	.quad	0x3fd7778dd616f86a              # double 0.366672
	.quad	0x3fd051b93037d630              # double 0.25498799999999999
	.quad	0x3fe776b3bb83cf2d              # double 0.73324
	.quad	0x3fdee04c05921038              # double 0.48243999999999998
	.quad	0x3fe472e8c0485a0c              # double 0.63902700000000001
	.quad	0x3fe844a83b1d0c80              # double 0.75838099999999997
	.quad	0x3fba94ab1d4f9c20              # double 0.10383100000000001
	.quad	0x3fed1e3864cb5bb4              # double 0.90993900000000005
	.quad	0x3fe8b005814940bc              # double 0.77148700000000003
	.quad	0x3fb59285a921ccd9              # double 0.084266999999999995
	.quad	0x3fe75f3b645a1cac              # double 0.730375
	.quad	0x3fe5e256366d7a57              # double 0.68387900000000001
	.quad	0x3fb2934acaff6d33              # double 0.072559999999999999
	.quad	0x3febf0cfe154434e              # double 0.87314599999999998
	.quad	0x3fcff66e86c6583f              # double 0.24970800000000001
	.quad	0x3fae534373f316e3              # double 0.059228999999999997
	.quad	0x3fd17fd82773e250              # double 0.273428
	.quad	0x3fe1f4c2b51bd61f              # double 0.56112799999999996
	.quad	0x3fed06e5cd4ed2cc              # double 0.907092
	.quad	0x3fe6672fba01eeee              # double 0.70009600000000005
	.quad	0x3fda105186db50f4              # double 0.407246
	.quad	0x3fc328d002e23290              # double 0.14968300000000001
	.quad	0x3fcd9b4dcebfec14              # double 0.23130200000000001
	.quad	0x3fda1d798d8a979e              # double 0.408049
	.quad	0x3feeaceaaf35e311              # double 0.95860800000000001
	.quad	0x3fec2b7baecd0785              # double 0.88030799999999998
	.quad	0x3fd87b3d8e000863              # double 0.38252199999999997
	.quad	0x3fe4796e158750c2              # double 0.63982300000000003
	.quad	0x3fc921ccd9620685              # double 0.19634399999999999
	.quad	0x3fef65668c261390              # double 0.981128
	.quad	0x3fe147f77af64064              # double 0.54003500000000004
	.quad	0x3fe37adf2ecf2064              # double 0.60874899999999998
	.quad	0x3fd3214ad362e903              # double 0.29890699999999998
	.quad	0x3fc1b078d92fb19e              # double 0.13819799999999999
	.quad	0x3fd15532617c1bda              # double 0.27082499999999998
	.quad	0x3f9a85015c209247              # double 0.025898000000000001
	.quad	0x3fd66da4484944ed              # double 0.35044199999999998
	.quad	0x3fdd4306e5cd4ed3              # double 0.45721600000000001
	.quad	0x3fd4e0589acbc8c1              # double 0.32619300000000001
	.quad	0x3fed4e9a2c669058              # double 0.91584500000000002
	.quad	0x3fe318655193708b              # double 0.59672800000000004
	.quad	0x3fdd6aa8eb463498              # double 0.45963500000000002
	.quad	0x3fde17763e4abe6a              # double 0.47018199999999999
	.quad	0x3fedaa38b8ae31d7              # double 0.92702899999999999
	.quad	0x3fb629e90795f677              # double 0.086577000000000001
	.quad	0x3fe5f80346dc5d64              # double 0.68652500000000005
	.quad	0x3fce968943e10060              # double 0.23896899999999999
	.quad	0x3feb41c3efae7925              # double 0.85177800000000004
	.quad	0x3fc2dbb59ddc1e79              # double 0.14732999999999999
	.quad	0x3fdb10a137f38c54              # double 0.42288999999999999
	.quad	0x3fe260a63305100a              # double 0.57429799999999998
	.quad	0x3fb84189374bc6a8              # double 0.094750000000000001
	.quad	0x3fd44983d790752e              # double 0.31698700000000002
	.quad	0x3fe07548ecd8dbcf              # double 0.51431700000000002
	.quad	0x3fdefa1a0cf1800a              # double 0.48401499999999997
	.quad	0x3feedc182ecaeea6              # double 0.96436699999999997
	.quad	0x3fca9c6f36ef8056              # double 0.207899
	.quad	0x3fe09c92ddbdb5d9              # double 0.51911300000000005
	.quad	0x3fdc813cab81f96a              # double 0.44538800000000001
	.quad	0x3fe5db70691ea78b              # double 0.68303700000000001
	.quad	0x3feca235b4edb2f6              # double 0.89480099999999996
	.quad	0x3fc3c947064ece9a              # double 0.15458
	.quad	0x3fcc1626b2f23034              # double 0.21942600000000001
	.quad	0x3fde9841aac53b08              # double 0.478043
	.quad	0x3fd945069a4df480              # double 0.39483800000000002
	.quad	0x3fee62cdc011d367              # double 0.94956099999999999
	.quad	0x3fe273eee5258927              # double 0.57665200000000005
	.quad	0x3fe975ea67e846a6              # double 0.79564400000000002
	.quad	0x3fd3ecf63800218e              # double 0.311338
	.quad	0x3fec1f1cfbb94962              # double 0.87879799999999997
	.quad	0x3fe329ac36544fe3              # double 0.59883699999999995
	.quad	0x3fb6cc70867ad8e4              # double 0.089056999999999997
	.quad	0x3fe1329a1b9f98b7              # double 0.53742699999999999
	.quad	0x3fd0468cac4b4d05              # double 0.25430599999999998
	.quad	0x3fb45ea24cc68230              # double 0.079569
	.quad	0x3fd22d77318fc505              # double 0.28402500000000003
	.quad	0x3f927a20578e5c4f              # double 0.018044000000000001
	.quad	0x3fa13bc0a06e9ff1              # double 0.033659000000000001
	.quad	0x3fe800713f077ccc              # double 0.75005399999999999
	.quad	0x3fd9cc4ac6cdaf4b              # double 0.40309400000000001
	.quad	0x3fef1d3458cd20b0              # double 0.97231500000000004
	.quad	0x3fa2f33ca31e7d9a              # double 0.037012000000000003
	.quad	0x3fee4f7caa7589f0              # double 0.94720300000000002
	.quad	0x3fefbaf102363b25              # double 0.99156999999999995
	.quad	0x3f8a11a975afaf86              # double 0.012729000000000001
	.quad	0x3fc4588a04d12019              # double 0.15895200000000001
	.quad	0x3fe35000c9539b89              # double 0.60351600000000005
	.quad	0x3feb1ddc1e7967cb              # double 0.84739500000000001
	.quad	0x3fd5d8be7296f651              # double 0.34135399999999999
	.quad	0x3febd91eeaa6d267              # double 0.87025399999999997
	.quad	0x3fd5a604e1e71045              # double 0.338258
	.quad	0x3fe55f2a9d627bf6              # double 0.66786699999999999
	.quad	0x3f5df3300de4c511              # double 0.001828
	.quad	0x3fe87efbf401c4fc              # double 0.76550099999999998
	.quad	0x3fe517d49d7ba66a              # double 0.65915900000000005
	.quad	0x3fe0fe86833c6003              # double 0.53107000000000004
	.quad	0x3fca7bd48cb4aec9              # double 0.206904
	.quad	0x3fd652c16df3f962              # double 0.34880100000000003
	.quad	0x3fd643fa2ad3e921              # double 0.34789900000000001
	.quad	0x3fea9f9acffa7eb7              # double 0.83198300000000003
	.quad	0x3fe96f5232d2bb23              # double 0.79483899999999996
	.quad	0x3fe0a83b1d0c8041              # double 0.520536
	.quad	0x3fed41db0142f61f              # double 0.91428900000000002
	.quad	0x3fb53996fa82e87d              # double 0.082909999999999998
	.quad	0x3fe6476f2a5a469d              # double 0.69621999999999995
	.quad	0x3fe492d1287c200c              # double 0.64292199999999999
	.quad	0x3fe829a5ebb7739f              # double 0.75508399999999998
	.quad	0x3fae8427418d690a              # double 0.059602000000000002
	.quad	0x3fcbd93c46d82ba6              # double 0.21756700000000001
	.quad	0x3fd70de093532e7b              # double 0.36022199999999999
	.quad	0x3fe3e0589acbc8c1              # double 0.62113600000000002
	.quad	0x3f76e7a311e85fd0              # double 0.0055919999999999997
	.quad	0x3fcaa0ec74320104              # double 0.208036
	.quad	0x3fe49a8ef77f27fe              # double 0.64386699999999997
	.quad	0x3fe0da2d72ffd1dd              # double 0.52663300000000002
	.quad	0x3fca4723aafff36b              # double 0.20529600000000001
	.quad	0x3f8a671ef30a4e38              # double 0.012892000000000001
	.quad	0x3fdd6e86c6583e85              # double 0.45987099999999997
	.quad	0x3feb3f50e3476295              # double 0.85147899999999999
	.quad	0x3fde525cc426351e              # double 0.473777
	.quad	0x3fbc95d0b73d188f              # double 0.111661
	.quad	0x3fcfb15b573eab36              # double 0.24759999999999999
	.quad	0x3fec115df6555c53              # double 0.87712000000000001
	.quad	0x3fe98a86d71f3626              # double 0.79815999999999998
	.quad	0x3fe44215b9a5a89c              # double 0.63306700000000005
	.quad	0x3fe28c1333b96af0              # double 0.57959899999999998
	.quad	0x3fd009dcf893faf4              # double 0.25060199999999999
	.quad	0x3fde5271bcdbbe01              # double 0.47378199999999998
	.quad	0x3fccf661f18c9fb6              # double 0.226269
	.quad	0x3fdaef9db22d0e56              # double 0.420875
	.quad	0x3fe4a5d074213a0c              # double 0.64524099999999995
	.quad	0x3fe538f7985271bd              # double 0.66320400000000002
	.quad	0x3f810667f90d9d77              # double 0.0083129999999999992
	.quad	0x3fea028a1dfb938a              # double 0.81281000000000003
	.quad	0x3fe42d2bb23571d2              # double 0.63051400000000002
	.quad	0x3fde81adea897636              # double 0.47666500000000001
	.quad	0x3febe111276fb092              # double 0.871224
	.quad	0x3fd850bd87b56b87              # double 0.37992799999999999
	.quad	0x3fe62e33eff19503              # double 0.69313999999999998
	.quad	0x3fe2219220ff5409              # double 0.56659800000000005
	.quad	0x3feb7a871a3b14a9              # double 0.858707
	.quad	0x3fcf04f6dfc5cdd5              # double 0.242339
	.quad	0x3feae9531550ca1d              # double 0.84098200000000001
	.quad	0x3fe848de2ac32229              # double 0.75889499999999999
	.quad	0x3feb6cf206423960              # double 0.85704899999999994
	.quad	0x3fec06573215fcc2              # double 0.87577400000000005
	.quad	0x3fe3f6709fa54c55              # double 0.62383299999999997
	.quad	0x3fea468661ae70c1              # double 0.82110899999999998
	.quad	0x3f916440f2389720              # double 0.016983999999999999
	.quad	0x3fec91ada76d97b3              # double 0.89278299999999999
	.quad	0x3fe1005c4651f3e9              # double 0.53129400000000004
	.quad	0x3fee1c7ffde7210c              # double 0.940979
	.quad	0x3fefa88effe2a3cf              # double 0.98932600000000003
	.quad	0x3fe2707e175d13d7              # double 0.57623199999999997
	.quad	0x3fe167a95c853c15              # double 0.54390400000000005
	.quad	0x3fc80a393ee5eedd              # double 0.18781200000000001
	.quad	0x3fecd03fb3743633              # double 0.90042100000000003
	.quad	0x3fdd2e83a109d063              # double 0.45596399999999998
	.quad	0x3fe2a7daa4fca42b              # double 0.58299000000000001
	.quad	0x3fa6ac647778dd61              # double 0.044283999999999997
	.quad	0x3fcc2acb85a4f00f              # double 0.220056
	.quad	0x3fe6aa0232096788              # double 0.70825300000000002
	.quad	0x3fe45a5fc7e6b3ff              # double 0.63603200000000004
	.quad	0x3fa3b4b2fa93af75              # double 0.038488000000000001
	.quad	0x3fd28344c37e6f72              # double 0.28926200000000002
	.quad	0x3feb01322f2734f8              # double 0.84389599999999998
	.quad	0x3fa183947496aad2              # double 0.034207000000000001
	.quad	0x3fdb772d5e071c54              # double 0.429149
	.quad	0x3fd2f969e3c96894              # double 0.29647299999999999
	.quad	0x3fd1a875d56f32be              # double 0.27590700000000001
	.quad	0x3fd671044f1a1987              # double 0.35064800000000002
	.quad	0x3fe0e0d887ebf22c              # double 0.527447
	.quad	0x3f9bfa0945f9df55              # double 0.027321000000000002
	.quad	0x3fd274927913e814              # double 0.28836499999999998
	.quad	0x3fecdb18548a9bd0              # double 0.90174500000000002
	.quad	0x3fa75ee99a62ed35              # double 0.045645999999999999
	.quad	0x3faabd7f51efb6dd              # double 0.052227000000000003
	.quad	0x3fa84a2fcefaa476              # double 0.047440999999999997
	.quad	0x3fc616ce789e774f              # double 0.172571
	.quad	0x3fdc420f6f08cc57              # double 0.44153199999999998
	.quad	0x3fe7133e35c5b4ab              # double 0.72109900000000005
	.quad	0x3fd26fa82e87d2c8              # double 0.28806500000000002
	.quad	0x3fd2c14c660a2014              # double 0.29304799999999998
	.quad	0x3fe390e453d20f2c              # double 0.61143700000000001
	.quad	0x3f97c6b8b69552e3              # double 0.023219
	.quad	0x3fede4649906cca3              # double 0.93413000000000002
	.quad	0x3fc99aae6c8f7553              # double 0.20003299999999999
	.quad	0x3fd95f0f5a1016ce              # double 0.39642699999999997
	.quad	0x3fcd52eb5f5f0b28              # double 0.22909299999999999
	.quad	0x3fddef3d3a1d3240              # double 0.467727
	.quad	0x3fd9b90a7829068a              # double 0.40191900000000003
	.quad	0x3fdf22d948dc11e4              # double 0.48650199999999999
	.quad	0x3fe427d88c1db014              # double 0.62986399999999998
	.quad	0x3fe38c3f3e0370ce              # double 0.61087000000000002
	.quad	0x3fe40e3cd9a52264              # double 0.62673800000000002
	.quad	0x3fe74845132f87ad              # double 0.727572
	.quad	0x3fd110adcd2d44dd              # double 0.26664300000000002
	.quad	0x3fe3f15a4acf312b              # double 0.62321199999999999
	.quad	0x3fc4d90e23af31b1              # double 0.16287399999999999
	.quad	0x3fe8c40f23897204              # double 0.77393299999999998
	.quad	0x3fe3ce032db1e9f2              # double 0.61889799999999995
	.quad	0x3fe4ccb7d41743e9              # double 0.64998999999999996
	.quad	0x3fc286940357a355              # double 0.144732
	.quad	0x3fd1b82c2bd7f51f              # double 0.276866
	.quad	0x3fe200f12c27a637              # double 0.56261499999999998
	.quad	0x3feb400da1a93294              # double 0.85156900000000002
	.quad	0x3feca378ab0c88a4              # double 0.89495499999999994
	.quad	0x3fd7e65bea0ba1f5              # double 0.37343500000000002
	.quad	0x3fe11c7bcc2938de              # double 0.53472699999999995
	.quad	0x3feba9aa1d755bcd              # double 0.86446100000000003
	.quad	0x3fe60d2c386d2ed8              # double 0.68910800000000005
	.quad	0x3fd77c6b8b69552e              # double 0.36696899999999999
	.quad	0x3fb0856e696a26e5              # double 0.064535999999999996
	.quad	0x3fc38da3c21187e8              # double 0.15276000000000001
	.quad	0x3fed50b524399b2c              # double 0.91610199999999997
	.quad	0x3fea30c88a47ecff              # double 0.81845500000000004
	.quad	0x3fd1348b220791c5              # double 0.26883200000000002
	.quad	0x3fe3e672fba01eef              # double 0.62188100000000002
	.quad	0x3fded438d1d8a548              # double 0.48170299999999999
	.quad	0x3fed9d3aa369fcf4              # double 0.92544300000000001
	.quad	0x3fe78a5269595fee              # double 0.73563500000000004
	.quad	0x3feff5c0767d34df              # double 0.99874899999999999
	.quad	0x3fe58aefb2aae297              # double 0.67320999999999998
	.quad	0x3fe737d84901d191              # double 0.72556699999999996
	.quad	0x3fcf267c6b8b6955              # double 0.24336199999999999
	.quad	0x3fdcc73abc947065              # double 0.44966
	.quad	0x3fc1c4a83b1d0c80              # double 0.13881399999999999
	.quad	0x3fed109289dadfb5              # double 0.908273
	.quad	0x3fef706b37867f0b              # double 0.98247300000000004
	.quad	0x3fe4b18b93469942              # double 0.64667300000000005
	.quad	0x3fd8db8bac710cb3              # double 0.38840000000000002
	.quad	0x3fe36edaa92e6213              # double 0.60728199999999999
	.quad	0x3fd1a02fb5d03105              # double 0.27540199999999998
	.quad	0x3febc7b24638c975              # double 0.86812699999999998
	.quad	0x3fcda5a89b951c5c              # double 0.23161799999999999
	.quad	0x3fe8fa9e2bcf91a3              # double 0.78059299999999998
	.quad	0x3fecfd805e5f30e8              # double 0.905945
	.quad	0x3fe774906034f3fe              # double 0.73297900000000005
	.quad	0x3fdba771c970f7ba              # double 0.43209500000000001
	.quad	0x3fe3d606317268d3              # double 0.61987599999999998
	.quad	0x3fdc93f6c2699c7c              # double 0.44653100000000001
	.quad	0x3fdcbf7ad4b2745c              # double 0.449187
	.quad	0x3fb8193b3a68b19a              # double 0.094134999999999996
	.quad	0x3fdfce8101f31f47              # double 0.496979
	.quad	0x3fcc6bb55ac03ff7              # double 0.22203700000000001
	.quad	0x3fd471c10d7be985              # double 0.31944299999999998
	.quad	0x3fd8403dddb1209f              # double 0.37892100000000001
	.quad	0x3fd08b75ea67e847              # double 0.25851200000000002
	.quad	0x3feb10752da98677              # double 0.84575900000000004
	.quad	0x3fe11248d7e02646              # double 0.53348200000000001
	.quad	0x3fcb2f01754b05b8              # double 0.21237200000000001
	.quad	0x3fe5a048e043a216              # double 0.67581599999999997
	.quad	0x3fd1e8ccdd93c46e              # double 0.27983400000000003
	.quad	0x3fece6a11ec918e3              # double 0.90315299999999998
	.quad	0x3fd8feb074a771c9              # double 0.39054499999999998
	.quad	0x3fee9a38fbca105a              # double 0.95632600000000001
	.quad	0x3fe320d9945b6c37              # double 0.59775999999999996
	.quad	0x3fdbce8101f31f47              # double 0.434479
	.quad	0x3feb9dbca9691a76              # double 0.86300500000000002
	.quad	0x3fce07570c564f98              # double 0.234599
	.quad	0x3fd103ea704bc276              # double 0.26586399999999999
	.quad	0x3fd28240b780346e              # double 0.28920000000000001
	.quad	0x3fee3b6ed677707a              # double 0.94475500000000001
	.quad	0x3fb6b94d94078961              # double 0.088764999999999997
	.quad	0x3fe8e117720c8cd6              # double 0.77747699999999997
	.quad	0x3fbae3608d08919f              # double 0.105032
	.quad	0x3fe81e90795f676f              # double 0.75373100000000004
	.quad	0x3fb68e4fb97bb731              # double 0.088109000000000007
	.quad	0x3feca5f202107b78              # double 0.89525699999999997
	.quad	0x3fe5643cc07aaef3              # double 0.66848600000000002
	.quad	0x3fe9efe931876189              # double 0.81053600000000003
	.quad	0x3fd89c94f69ca9ef              # double 0.38455699999999998
	.quad	0x3feb8afe60c38f36              # double 0.86071699999999995
	.quad	0x3fa1bf162ae4b018              # double 0.034660999999999997
	.quad	0x3f9f8487b99d4520              # double 0.030779000000000001
	.quad	0x3fdeac29bf162ae5              # double 0.47925800000000002
	.quad	0x3fe04829cfdd2285              # double 0.50880899999999996
	.quad	0x3fea1eb6390c9108              # double 0.816249
	.quad	0x3fe06616b54e2b06              # double 0.51246199999999997
	.quad	0x3fd49767903211cb              # double 0.321741
	.quad	0x3fc2b7995ee136e7              # double 0.146228
	.quad	0x3fd4f8055fbb517a              # double 0.32763799999999998
	.quad	0x3f9102363b256ffc              # double 0.01661
	.quad	0x3fdaa4acf312b1b3              # double 0.41630099999999998
	.quad	0x3fd25f7403dddb12              # double 0.287076
	.quad	0x3fe250edc3bd5992              # double 0.57237899999999997
	.quad	0x3fe081a79fec99f2              # double 0.51582700000000004
	.quad	0x3feb939eadd590c1              # double 0.86177000000000004
	.quad	0x3fd18605681ecd4b              # double 0.27380500000000002
	.quad	0x3fe5220ddc619546              # double 0.66040699999999997
	.quad	0x3fae308787485e3e              # double 0.058964000000000003
	.quad	0x3fec7b549f94855e              # double 0.89005500000000004
	.quad	0x3fd75fcc1871e6cd              # double 0.36522199999999999
	.quad	0x3fa59d12cadddf44              # double 0.042214000000000002
	.quad	0x3fd869a0ad8a1166              # double 0.38144699999999998
	.quad	0x3fbfbaa9b499d020              # double 0.123942
	.quad	0x3fef77b17ce52ded              # double 0.98336100000000004
	.quad	0x3fd728d002e23290              # double 0.36186600000000002
	.quad	0x3fba2ac322291fb4              # double 0.102215
	.quad	0x3fe03e5109070fbf              # double 0.50760700000000003
	.quad	0x3fe19784ec636b09              # double 0.54974599999999996
	.quad	0x3fd1a4db163baba8              # double 0.27568700000000002
	.quad	0x3fd49bae46cfc82a              # double 0.32200200000000001
	.quad	0x3fe52a53fc0096ff              # double 0.66141700000000003
	.quad	0x3fe9dafaf8594291              # double 0.80798099999999995
	.quad	0x3fc33c4f3ba775fb              # double 0.15027799999999999
	.quad	0x3fe853bf2f555821              # double 0.76022299999999998
	.quad	0x3fe1205dd8f92afa              # double 0.53520100000000004
	.quad	0x3fc4bf5d78811b1e              # double 0.16209000000000001
	.quad	0x3fd353fc0096feb5              # double 0.30200100000000002
	.quad	0x3fdfbc59b8023a6d              # double 0.49587100000000001
	.quad	0x3fa0f98fa376922e              # double 0.033154000000000003
	.quad	0x3fd77778dd616f87              # double 0.36666700000000002
	.quad	0x3fe34d0dcfcc5b8e              # double 0.60315600000000003
	.quad	0x3fe64020817fc760              # double 0.69532799999999995
	.quad	0x3fdc93c03bc4d22d              # double 0.44651800000000003
	.quad	0x3fe4a89b951c5c57              # double 0.64558199999999999
	.quad	0x3fc73af74cd3176a              # double 0.18148700000000001
	.quad	0x3fd1cd035371971c              # double 0.278138
	.quad	0x3fe712a737110e45              # double 0.72102699999999997
	.quad	0x3fd9c8c0ce91c8eb              # double 0.40287800000000001
	.quad	0x3fe52be27179bfdf              # double 0.66160699999999995
	.quad	0x3fe0191dde37585c              # double 0.50306600000000001
	.quad	0x3fe2c04ea4a8c155              # double 0.58597500000000002
	.quad	0x3fec463f141205bc              # double 0.88357499999999999
	.quad	0x3fe88c5004fb1184              # double 0.76712800000000003
	.quad	0x3fd4463065f9591d              # double 0.31678400000000001
	.quad	0x3fd0532a497fa5d3              # double 0.25507600000000002
	.quad	0x3fdb3fe5c91d14e4              # double 0.42577500000000001
	.quad	0x3fbb6848beb5b2d5              # double 0.10706
	.quad	0x3fd94e65bea0ba1f              # double 0.39540999999999998
	.quad	0x3fe30438088509c0              # double 0.59426500000000004
	.quad	0x3fe191a975afaf86              # double 0.54903100000000005
	.quad	0x3fed4bb1af3a14cf              # double 0.91549000000000003
	.quad	0x3fd95885d31337eb              # double 0.39602799999999999
	.quad	0x3fb56f0068db8bac              # double 0.083724999999999994
	.quad	0x3fda861a60d4562e              # double 0.414435
	.quad	0x3f913f4a98aa8651              # double 0.016843
	.quad	0x3fc2202539756c94              # double 0.14160600000000001
	.quad	0x3fc333764f11b60b              # double 0.150008
	.quad	0x3fe811b3f20a73f7              # double 0.75216099999999997
	.quad	0x3fd3a17f4128bf3c              # double 0.306732
	.quad	0x3fe8f318fc504817              # double 0.77967500000000001
	.quad	0x3fef1fa11a975afb              # double 0.972611
	.quad	0x3fe78ae536501e26              # double 0.73570500000000005
	.quad	0x3fe375903a7546d4              # double 0.608101
	.quad	0x3fd076145953586d              # double 0.25720700000000002
	.quad	0x3fd111b60ae9680e              # double 0.266706
	.quad	0x3feca9da597d49d8              # double 0.89573400000000003
	.quad	0x3fd4a265f0f5a101              # double 0.32241199999999998
	.quad	0x3fdd45ed4a1ad645              # double 0.45739299999999999
	.quad	0x3fdf4d4024b33db0              # double 0.48909000000000002
	.quad	0x3fed9a0cf1800a7c              # double 0.92505499999999996
	.quad	0x3fdea2a90cd423d9              # double 0.47867799999999999
	.quad	0x3fe34003254e6e22              # double 0.60156399999999999
	.quad	0x3fca44e93e1c9b41              # double 0.20522799999999999
	.quad	0x3fe4d6c508b32ce9              # double 0.65121700000000005
	.quad	0x3fdb266772d5e072              # double 0.42421900000000001
	.quad	0x3fd50b630a91537a              # double 0.32882
	.quad	0x3fe496feb4a6655a              # double 0.643432
	.quad	0x3fd20f88333fc86d              # double 0.282198
	.quad	0x3fdffe8ab4fa4830              # double 0.49991099999999999
	.quad	0x3fd4513b5bf6a0dc              # double 0.31745800000000002
	.quad	0x3fd0c4e7253da72a              # double 0.26201799999999997
	.quad	0x3fe7ff3493858362              # double 0.74990299999999999
	.quad	0x3fd1970b49e01de2              # double 0.27484399999999998
	.quad	0x3fde7021d10b1fef              # double 0.47559400000000002
	.quad	0x3fed241a261bf37c              # double 0.91065700000000004
	.quad	0x3fdf1f2dc2b0ea18              # double 0.48627799999999999
	.quad	0x3fe086a2b1704ff4              # double 0.51643499999999998
	.quad	0x3fe4bde1e2de8709              # double 0.64817899999999995
	.quad	0x3fe730ad46f587d7              # double 0.724692
	.quad	0x3fdd5360d0247022              # double 0.45821400000000001
	.quad	0x3fe49018e757928e              # double 0.64258999999999999
	.quad	0x3fe631d712a0ec74              # double 0.69358399999999998
	.quad	0x3fd58f190d173fb8              # double 0.33685900000000002
	.quad	0x3fc70e0221426fe7              # double 0.180115
	.quad	0x3fe528f5c28f5c29              # double 0.66125
	.quad	0x3fcf36cdf266ba49              # double 0.24385999999999999
	.quad	0x3fc712e40852b4d9              # double 0.18026400000000001
	.quad	0x3fecf75b81301648              # double 0.90519499999999997
	.quad	0x3fda0fdc1615ebfb              # double 0.40721800000000002
	.quad	0x3fce837718655193              # double 0.23838699999999999
	.quad	0x3fc723358f2e05cd              # double 0.18076200000000001
	.quad	0x3fd1690de093532e              # double 0.27203699999999997
	.quad	0x3fd0f0f16f4384ba              # double 0.264706
	.quad	0x3fd12c061847f562              # double 0.26831199999999999
	.quad	0x3fe294a4d2b2bfdb              # double 0.58064499999999997
	.quad	0x3fe9d703f2d3c793              # double 0.80749700000000002
	.quad	0x3fe1e82730c67169              # double 0.559589
	.quad	0x3fee2116659d12cb              # double 0.94153900000000001
	.quad	0x3f7eb7457c0b1359              # double 0.0074989999999999996
	.quad	0x3fe7368ad6883772              # double 0.72540800000000005
	.quad	0x3fe00dd82fd75e20              # double 0.50168999999999997
	.quad	0x3fa45eb313be22e6              # double 0.039785000000000001
	.quad	0x3fcb1fddebd9018e              # double 0.21190999999999999
	.quad	0x3fd97154003254e7              # double 0.39754200000000001
	.quad	0x3fe49a93293d102c              # double 0.64386900000000002
	.quad	0x3fe3d987c6327ed8              # double 0.62030399999999997
	.quad	0x3fed0c0ad03d9a95              # double 0.90771999999999997
	.quad	0x3fee20902de00d1b              # double 0.94147499999999995
	.quad	0x3fc6c1f42bb66730              # double 0.17779400000000001
	.quad	0x3fcbeb399f5dfeb9              # double 0.218116
	.quad	0x3fd8eef5ec80c73b              # double 0.38958500000000001
	.quad	0x3fe2bbd3804534bd              # double 0.58542799999999995
	.quad	0x3fee988d2a1f8e3b              # double 0.95612200000000003
	.quad	0x3fda294141e9af5c              # double 0.40876800000000002
	.quad	0x3fe0c97d8cf398e9              # double 0.52459599999999995
	.quad	0x3fccf449129888f8              # double 0.22620499999999999
	.quad	0x3fc113cee9dd7ecc              # double 0.13341700000000001
	.quad	0x3fb156f32bdc26dd              # double 0.067733000000000002
	.quad	0x3fa2c625e99e94ab              # double 0.036667999999999999
	.quad	0x3fef1b003686a4ca              # double 0.97204599999999997
	.quad	0x3fe84ddd6e04c059              # double 0.75950499999999999
	.quad	0x3fe1a9c779a6b50b              # double 0.55197499999999999
	.quad	0x3fe2791a32b12d34              # double 0.57728299999999999
	.quad	0x3fe489e774eebf66              # double 0.64183400000000002
	.quad	0x3feb4cd962068555              # double 0.85313099999999997
	.quad	0x3feeec7eae5bc87e              # double 0.96636900000000003
	.quad	0x3f91a86940357a35              # double 0.017243999999999999
	.quad	0x3fcb2799a1fd156a              # double 0.212146
	.quad	0x3fe6eaceaaf35e31              # double 0.71616299999999999
	.quad	0x3febdd9c27e95315              # double 0.87080199999999996
	.quad	0x3fd4e1b8ed1bf7ad              # double 0.32627699999999998
	.quad	0x3fbe30a915379fa9              # double 0.11792999999999999
	.quad	0x3fe40472c0e7bc3c              # double 0.62554299999999996
	.quad	0x3fd018f3eccc4695              # double 0.251523
	.quad	0x3fcfc0a06e9ff0cc              # double 0.24806600000000001
	.quad	0x3fe380dc33721d54              # double 0.60948000000000002
	.quad	0x3fde858ff7596851              # double 0.47690199999999999
	.quad	0x3fd9a6aca7935760              # double 0.40079799999999999
	.quad	0x3febcb5dcc63f141              # double 0.86857499999999999
	.quad	0x3fbe9a5ebb7739f3              # double 0.119543
	.quad	0x3fb795d4e8fb00bd              # double 0.092130000000000004
	.quad	0x3feba14f0520d131              # double 0.86344100000000001
	.quad	0x3fe4ab9b23dd54da              # double 0.64594799999999997
	.quad	0x3fc1b1960fa15db3              # double 0.13823199999999999
	.quad	0x3fb876d117b5286b              # double 0.095562999999999995
	.quad	0x3fdbd4aa10e02214              # double 0.43485499999999999
	.quad	0x3fdc0d4562e09fe8              # double 0.43830999999999998
	.quad	0x3fec22834d26fa40              # double 0.87921300000000002
	.quad	0x3f967c286f8ad256              # double 0.021957999999999998
	.quad	0x3fe97a2f05a708ee              # double 0.79616500000000001
	.quad	0x3fe5f89c5e6ff7e0              # double 0.68659800000000004
	.quad	0x3fe02e514c22ee42              # double 0.50565400000000005
	.quad	0x3fee84b1ab0856e7              # double 0.95369800000000005
	.quad	0x3fec3c46d82ba5a0              # double 0.88235799999999997
	.quad	0x3fee390a7829068a              # double 0.94446300000000005
	.quad	0x3fed92f09d8c6d61              # double 0.92418699999999998
	.quad	0x3fcfe6ddf00abf77              # double 0.24923300000000001
	.quad	0x3fdcd9dba908a266              # double 0.450797
	.quad	0x3fd3af5fd47bedb7              # double 0.30757899999999999
	.quad	0x3fe14a9cdc443915              # double 0.540358
	.quad	0x3f7bdb5d894812be              # double 0.0068009999999999998
	.quad	0x3fe0104d551d68c7              # double 0.50199000000000005
	.quad	0x3fe25a1a93293d10              # double 0.57349899999999998
	.quad	0x3fe79654d61b2a28              # double 0.73710100000000001
	.quad	0x3fe5e6601bc98a22              # double 0.68437199999999998
	.quad	0x3fefc3137b07075b              # double 0.99256299999999997
	.quad	0x3fe77253da72a7bd              # double 0.73270599999999997
	.quad	0x3fa57cf5f4e4430b              # double 0.041968999999999999
	.quad	0x3fe670b6b6e0d23d              # double 0.70125899999999997
	.quad	0x3fe2be1a8262456f              # double 0.58570599999999995
	.quad	0x3fef20a30db6a1e8              # double 0.97273399999999998
	.quad	0x3fe3be3e29307af2              # double 0.61697299999999999
	.quad	0x3feda4f00ef1348b              # double 0.92638399999999999
	.quad	0x3fe5a4f227d028a2              # double 0.67638500000000001
	.quad	0x3feaed288ce703b0              # double 0.84145000000000003
	.quad	0x3fe390bc7b45f17c              # double 0.61141800000000002
	.quad	0x3fd3ef5232d2bb23              # double 0.31148199999999998
	.quad	0x3fd8f2a9d627bf62              # double 0.38981100000000002
	.quad	0x3fc2937d1fe64f55              # double 0.145126
	.quad	0x3fecddfa871a3b15              # double 0.90209700000000004
	.quad	0x3fe2e23f24d8fd5d              # double 0.59011800000000003
	.quad	0x3fd79e279dd3bafe              # double 0.36902800000000002
	.quad	0x3fc334a44c7b02d6              # double 0.15004400000000001
	.quad	0x3fe8d1fc4c165908              # double 0.77563300000000002
	.quad	0x3fc5b877ab324852              # double 0.16969200000000001
	.quad	0x3feab8b8ae31d713              # double 0.83504900000000004
	.quad	0x3fa539756c93a711              # double 0.041453999999999998
	.quad	0x3fd8b0f27bb2fec5              # double 0.38579999999999998
	.quad	0x3fdd7531db445ed5              # double 0.46027800000000002
	.quad	0x3fe502e6644d8772              # double 0.65660399999999997
	.quad	0x3fd164345cfede98              # double 0.27174100000000001
	.quad	0x3fecf0ac3a860dcc              # double 0.90437900000000004
	.quad	0x3fe5fe5a78f25a25              # double 0.68729899999999999
	.quad	0x3fd3506dd69d3027              # double 0.301784
	.quad	0x3fb6b37867f0aa22              # double 0.088676000000000004
	.quad	0x3fdfc3c9eecbfb16              # double 0.49632500000000002
	.quad	0x3fe903ea704bc276              # double 0.78172799999999998
	.quad	0x3fef2b53d640e9d5              # double 0.97403899999999998
	.quad	0x3fe2821d10b1feeb              # double 0.57838299999999998
	.quad	0x3fc945b6c3760bf6              # double 0.19744
	.quad	0x3fea30a6fc58ab93              # double 0.81843900000000003
	.quad	0x3fd1baba7b9170d6              # double 0.27702199999999999
	.quad	0x3fd41d53cddd6e05              # double 0.31429000000000001
	.quad	0x3fe9d8fb43d89ce5              # double 0.80773700000000004
	.quad	0x3fc5b035bd512ec7              # double 0.16944000000000001
	.quad	0x3fdec957cd466f50              # double 0.48103899999999999
	.quad	0x3fd80a958537e2c5              # double 0.37564599999999998
	.quad	0x3fef85ad538ac190              # double 0.98506800000000005
	.quad	0x3feeda858793dd98              # double 0.964175
	.quad	0x3fefa66559f6ec5b              # double 0.98906199999999999
	.quad	0x3fbc2e6644d87725              # double 0.110083
	.quad	0x3fe11752977c88e8              # double 0.53409700000000004
	.quad	0x3fc23fa2ad3e920c              # double 0.142567
	.quad	0x3fc88387df5cf249              # double 0.19151399999999999
	.quad	0x3feaf353b4b2fa94              # double 0.84220300000000003
	.quad	0x3fc1c9eecbfb15b5              # double 0.13897499999999999
	.quad	0x3fe77160956c0d6f              # double 0.73258999999999996
	.quad	0x3fb7882278d0cc36              # double 0.091921000000000002
	.quad	0x3fcfb5c7cd898b2f              # double 0.24773500000000001
	.quad	0x3fa86c43f5f91601              # double 0.047701
	.quad	0x3fcb9dd3bafd9770              # double 0.215754
	.quad	0x3fede4ef0281ba80              # double 0.93419600000000003
	.quad	0x3fee078d92fb19e7              # double 0.93842199999999998
	.quad	0x3fc4eafab53d640f              # double 0.16342100000000001
	.quad	0x3fe29355475a31a5              # double 0.58048500000000003
	.quad	0x3fe681797cc39ffd              # double 0.70330499999999996
	.quad	0x3fc07829068986fd              # double 0.128667
	.quad	0x3fa3e1a8262456f7              # double 0.038830999999999997
	.quad	0x3fe847d805e5f30e              # double 0.75876999999999994
	.quad	0x3fd515a4acf312b2              # double 0.32944600000000002
	.quad	0x3fc056d5cfaacd9f              # double 0.12765000000000001
	.quad	0x3fbb3fa6defc7a3a              # double 0.10644000000000001
	.quad	0x3fc033508f648c72              # double 0.12656600000000001
	.quad	0x3feb2888b545c78a              # double 0.84869799999999995
	.quad	0x3fe4b2a6b0d95140              # double 0.64680800000000005
	.quad	0x3fed3302f72b4528              # double 0.91247699999999998
	.quad	0x3fd9bd05af6c69b6              # double 0.40216200000000002
	.quad	0x3fafbb0e5e679464              # double 0.061974000000000001
	.quad	0x3fd4ef8ceb356da0              # double 0.327121
	.quad	0x3fcfc664d3bf2f55              # double 0.24824199999999999
	.quad	0x3fce4662bae03b3f              # double 0.23652300000000001
	.quad	0x3fe440f451761459              # double 0.63292899999999996
	.quad	0x3fedf102363b2570              # double 0.93567
	.quad	0x3feaac03ff69014b              # double 0.83349799999999996
	.quad	0x3fa02f0e0a84be40              # double 0.031608999999999998
	.quad	0x3fa818a43bb40b35              # double 0.047063000000000001
	.quad	0x3fd518e757928e0d              # double 0.32964500000000002
	.quad	0x3fd52c450268900c              # double 0.33082699999999998
	.quad	0x3fbbb6dca07f66e8              # double 0.10825899999999999
	.quad	0x3fde7ee0b0af5fd4              # double 0.47649399999999997
	.quad	0x3feec4b09e98dcdb              # double 0.96150999999999997
	.quad	0x3fed6d1e108c3f3e              # double 0.91957
	.quad	0x3fd6d8a979e16d6e              # double 0.35697400000000001
	.quad	0x3fe3cff64cf8d717              # double 0.61913600000000002
	.quad	0x3fdc5c9e6687f456              # double 0.44315300000000002
	.quad	0x3fe3810c6f7a0b5f              # double 0.60950300000000002
	.quad	0x3fd5b02d59d55e6c              # double 0.33887800000000001
	.quad	0x3fede542e557de0d              # double 0.93423599999999996
	.quad	0x3f90ea5b530ced4e              # double 0.016518999999999999
	.quad	0x3fe4dc9a34ca0c28              # double 0.65192899999999998
	.quad	0x3fdbb9f559b3d07d              # double 0.43322500000000003
	.quad	0x3fc6a18bd66277c4              # double 0.17680499999999999
	.quad	0x3fea4a0c282c6ef4              # double 0.82153900000000001
	.quad	0x3fbdf6db940fecdd              # double 0.117048
	.quad	0x3fcbb413986338b4              # double 0.21643299999999999
	.quad	0x3fe49db65ecc3e32              # double 0.64425200000000005
	.quad	0x3fd9525892684cf0              # double 0.39565099999999997
	.quad	0x3fec8abd5dc40075              # double 0.89193599999999995
	.quad	0x3fe680abf76a2f49              # double 0.70320700000000003
	.quad	0x3fe644d22c881e47              # double 0.69590099999999999
	.quad	0x3fe19e34330d7386              # double 0.550562
	.quad	0x3fe0d32a497fa5d3              # double 0.52577700000000005
	.quad	0x3fe040053e2d6239              # double 0.50781500000000002
	.quad	0x3febd729b280f12c              # double 0.87001499999999998
	.quad	0x3fd2bf6a0dbad3a6              # double 0.292933
	.quad	0x3fe7c2cc2d6a9c56              # double 0.74252899999999999
	.quad	0x3f91f81a5870da5e              # double 0.017548000000000001
	.quad	0x3fd57f1f9acffa7f              # double 0.33588400000000002
	.quad	0x3fb1d4306e5cd4ed              # double 0.069643999999999998
	.quad	0x3fb35ddd2ae8e1d6              # double 0.075650999999999996
	.quad	0x3f9a5bd944aa53fc              # double 0.025741
	.quad	0x3fe0e019b0ab2e17              # double 0.52735600000000005
	.quad	0x3fe379f44d445671              # double 0.60863699999999998
	.quad	0x3fe31de26916440f              # double 0.59739799999999998
	.quad	0x3fdec53b0813cab8              # double 0.48078799999999999
	.quad	0x3fe6616d6dc1a47b              # double 0.69939300000000004
	.quad	0x3feb3b0813cab820              # double 0.85095600000000004
	.quad	0x3fe607c6327ed84d              # double 0.68844899999999998
	.quad	0x3fd483f91e646f15              # double 0.32055499999999998
	.quad	0x3fa9e060fe47991c              # double 0.050540000000000002
	.quad	0x3fc91600f345069a              # double 0.19598399999999999
	.quad	0x3fecca5375c8d9f9              # double 0.899698
	.quad	0x3fe4e79463cfb331              # double 0.65326899999999999
	.quad	0x3feb8ec52a411c2a              # double 0.861178
	.quad	0x3fef6e99a62ed352              # double 0.98225099999999999
	.quad	0x3feb5e892253111f              # double 0.85528999999999999
	.quad	0x3fd3333333333333              # double 0.29999999999999999
	.quad	0x3fb72ba9d1f60179              # double 0.090509999999999993
	.quad	0x3fd522dd7a99fa12              # double 0.33025300000000002
	.quad	0x3fc236c15d2d01c1              # double 0.14229600000000001
	.quad	0x3fee7570c564f97f              # double 0.95183600000000002
	.quad	0x3feb0bfa0945f9df              # double 0.84521199999999996
	.quad	0x3fed64473cd57364              # double 0.91849099999999994
	.quad	0x3facfb3311a543f2              # double 0.056604000000000002
	.quad	0x3fe484230fcf80dc              # double 0.64112999999999998
	.quad	0x3fef42a454de7ea6              # double 0.976885
	.quad	0x3fee86bdf4c2b51c              # double 0.95394800000000001
	.quad	0x3fe8d70c564f97ee              # double 0.77625100000000002
	.quad	0x3fe64289118c197e              # double 0.69562199999999996
	.quad	0x3fc1b784662bae04              # double 0.13841300000000001
	.quad	0x3fe7f601797cc3a0              # double 0.74878
	.quad	0x3fd8df19d66adb40              # double 0.38861699999999999
	.quad	0x3fef068986fcdee3              # double 0.96954799999999996
	.quad	0x3fe80f1d3ed527e5              # double 0.75184499999999999
	.quad	0x3fc612f09d8c6d61              # double 0.172453
	.quad	0x3fd811d798d8a97a              # double 0.37608900000000001
	.quad	0x3fd9face67d77fae              # double 0.40593299999999999
	.quad	0x3fe3f5ad96a6a012              # double 0.62373999999999996
	.quad	0x3fe6d03fb3743633              # double 0.71292100000000003
	.quad	0x3fe5feb4a66559f7              # double 0.68734200000000001
	.quad	0x3fc2c25072085b18              # double 0.14655499999999999
	.quad	0x3fda42dcf4623d0c              # double 0.410331
	.quad	0x3fc5d5cb790fb656              # double 0.17058699999999999
	.quad	0x3fdc7a6bd6e8af81              # double 0.44497199999999998
	.quad	0x3fc2ee2003ab862b              # double 0.147892
	.quad	0x3fe6cb85a4f00ef1              # double 0.71234399999999998
	.quad	0x3fe95b9841aac53b              # double 0.792431
	.quad	0x3fef907314ca9260              # double 0.986383
	.quad	0x3fece02ea960b6fa              # double 0.902366
	.quad	0x3fcc74d9c6b0531a              # double 0.22231600000000001
	.quad	0x3fefc35efa615a8e              # double 0.99259900000000001
	.quad	0x3fecaae6c8f75537              # double 0.89586200000000005
	.quad	0x3fec90fd7e45803d              # double 0.89269900000000002
	.quad	0x3fec44c37e6f71a8              # double 0.88339400000000001
	.quad	0x3fe86394face67d7              # double 0.76215599999999994
	.quad	0x3fe980303c07ee0b              # double 0.796898
	.quad	0x3fd56e158750c1b9              # double 0.33484399999999997
	.quad	0x3fcb2314013ec461              # double 0.212008
	.quad	0x3fe35df6555c52e7              # double 0.60521999999999998
	.quad	0x3fe0c5e0b4e11dbd              # double 0.52415500000000004
	.quad	0x3fd8631b584b1ab1              # double 0.38104900000000003
	.quad	0x3fd7d24e160d887f              # double 0.37221100000000001
	.quad	0x3fd78398a65492ff              # double 0.36740699999999998
	.quad	0x3fef4779a6b50b0f              # double 0.97747499999999998
	.quad	0x3fd9f345069a4df4              # double 0.40547299999999997
	.quad	0x3fec1a08bfc2224f              # double 0.87817800000000001
	.quad	0x3fc5596851223183              # double 0.16679099999999999
	.quad	0x3fd694a2b9d3cbc5              # double 0.35282200000000002
	.quad	0x3feb4e13f4a98aa8              # double 0.85328099999999996
	.quad	0x3fe9951c5c5718ec              # double 0.79945200000000005
	.quad	0x3fed2d5e071c53f4              # double 0.91178800000000004
	.quad	0x3fedf2d3c792d128              # double 0.93589199999999994
	.quad	0x3fe24fa8b4bf8fcd              # double 0.57222399999999995
	.quad	0x3fea32788db0574b              # double 0.81866099999999997
	.quad	0x3fd82c6ef3d3a1d3              # double 0.37771199999999999
	.quad	0x3fe85da8bd230b9e              # double 0.76143300000000003
	.quad	0x3fee315f88fc9364              # double 0.943527
	.quad	0x3feba4fa8b4bf8fd              # double 0.86388900000000002
	.quad	0x3fad909f1f14983d              # double 0.057743999999999997
	.quad	0x3fe29e8a2ec28b2a              # double 0.58185299999999995
	.quad	0x3fe4352220bc382a              # double 0.63148599999999999
	.quad	0x3fa6ce5710880d80              # double 0.044542999999999999
	.quad	0x3fdbe2fbe33acd5b              # double 0.43572899999999998
	.quad	0x3fe76801711947d0              # double 0.73144600000000004
	.quad	0x3feeabdc26dce39b              # double 0.95847899999999996
	.quad	0x3feff727136a4010              # double 0.99892000000000003
	.quad	0x3feee9c886162f16              # double 0.96603799999999995
	.quad	0x3fd66777079e59f3              # double 0.35006500000000002
	.quad	0x3fedd564b662fdfc              # double 0.93229899999999998
	.quad	0x3fd37f1f9acffa7f              # double 0.30463400000000002
	.quad	0x3fe72730c67168f9              # double 0.72353400000000001
	.quad	0x3fdfa3db3bfb58d1              # double 0.49437599999999998
	.quad	0x3fec12b3cc4ac6ce              # double 0.87728300000000004
	.quad	0x3fdecd0bb6ed6777              # double 0.481265
	.quad	0x3fc938b47c73eee5              # double 0.197043
	.quad	0x3fe15f2ecf206424              # double 0.54286900000000005
	.quad	0x3fd055b4677b395c              # double 0.25523099999999999
	.quad	0x3fee860dcb9a9da6              # double 0.95386400000000005
	.quad	0x3fb0c8eef1bac2df              # double 0.065565999999999999
	.quad	0x3fe4a6223e186983              # double 0.64527999999999996
	.quad	0x3fea78a4c1ebc83b              # double 0.82722700000000005
	.quad	0x3fd931f03d145d85              # double 0.393673
	.quad	0x3fe6ddfeb8d82342              # double 0.71459899999999998
	.quad	0x3fe24215b9a5a89c              # double 0.57056700000000005
	.quad	0x3fe20b19a415f45e              # double 0.563855
	.quad	0x3fc0194c01605250              # double 0.12577199999999999
	.quad	0x3fcea087ca643cc0              # double 0.23927399999999999
	.quad	0x3fce80e065300581              # double 0.23830799999999999
	.quad	0x3fcfa133c1ce6c09              # double 0.24710699999999999
	.quad	0x3fe39f8e3ac0c62e              # double 0.61322699999999997
	.quad	0x3fd34ae429e0a41a              # double 0.30144599999999999
	.quad	0x3fcbbee3d5fdcdf7              # double 0.21676300000000001
	.quad	0x3f9e58a32f44912a              # double 0.029635000000000002
	.quad	0x3fc524d8fd5cb791              # double 0.165187
	.quad	0x3fe0829ae4f33440              # double 0.51594300000000004
	.quad	0x3fbd64c729f59cd0              # double 0.114819
	.quad	0x3fde5bea0ba1f4b2              # double 0.47436
	.quad	0x3fef31897a67a52b              # double 0.97479700000000002
	.quad	0x3fb42ca148ba83f5              # double 0.078806000000000001
	.quad	0x3fe2605681ecd4aa              # double 0.57425999999999999
	.quad	0x3fee373083558a76              # double 0.94423699999999999
	.quad	0x3f9abead4f5903a7              # double 0.026117999999999999
	.quad	0x3fb37f38c5436b90              # double 0.076160000000000005
	.quad	0x3fa276fb09203a32              # double 0.036063999999999999
	.quad	0x3fcab3461309c800              # double 0.208596
	.quad	0x3fc936c58eeae9ee              # double 0.19698399999999999
	.quad	0x3f747cfa26a22b39              # double 0.0050020000000000004
	.quad	0x3fe007485e3da2f9              # double 0.50088900000000003
	.quad	0x3f9d0a24463065f9              # double 0.028358999999999999
	.quad	0x3fdbc1df3300de4c              # double 0.43370799999999998
	.quad	0x3fe75d9e40c8472c              # double 0.73017799999999999
	.quad	0x3fe090afe60c38f3              # double 0.51766199999999996
	.quad	0x3fed69984a0e410b              # double 0.91913999999999996
	.quad	0x3fd53f0bae89eba7              # double 0.33197300000000002
	.quad	0x3fee7d0d0678c005              # double 0.95276499999999997
	.quad	0x3fd8299524bfd2e9              # double 0.37753799999999998
	.quad	0x3fd1ab0856e696a2              # double 0.27606399999999998
	.quad	0x3fd1efae7924af0c              # double 0.280254
	.quad	0x3fb3474107314ca9              # double 0.075305999999999998
	.quad	0x3fee7574f722e1ac              # double 0.95183799999999996
	.quad	0x3fa54ed2cbea4ebe              # double 0.041617000000000001
	.quad	0x3fefa3bbc6eb0b7c              # double 0.98873699999999997
	.quad	0x3fe3f9ebe9c88616              # double 0.62425799999999998
	.quad	0x3fe1529563a9f384              # double 0.54133100000000001
	.quad	0x3fe704ec636b0963              # double 0.71935099999999996
	.quad	0x3fb39702e6644d87              # double 0.076522999999999994
	.quad	0x3fe4af5771001d5c              # double 0.64640399999999998
	.quad	0x3fc48db0574b4070              # double 0.16057399999999999
	.quad	0x3fe624f6598e10cf              # double 0.69201199999999996
	.quad	0x3fe406ec17ebaf10              # double 0.62584499999999998
	.quad	0x3fda69d30270f388              # double 0.41270899999999999
	.quad	0x3fd06527a20578e6              # double 0.25617400000000001
	.quad	0x3fc3f4b1ee243569              # double 0.15590499999999999
	.quad	0x3fee10a350d2806b              # double 0.93953100000000001
	.quad	0x3fe396d6dc1a47aa              # double 0.61216300000000001
	.quad	0x3fe1eeb91b3f20a7              # double 0.56039099999999997
	.quad	0x3fefdffc5479d4d8              # double 0.99609199999999997
	.quad	0x3fe4529131ec0b56              # double 0.63507899999999995
	.quad	0x3fe77c7a398201cd              # double 0.73394499999999996
	.quad	0x3fe5c9be8ff327aa              # double 0.68087699999999995
	.quad	0x3fe2bd5347a5b0ff              # double 0.58561099999999999
	.quad	0x3fe754cfd08d4bad              # double 0.72910299999999995
	.quad	0x3fe2ad2dcb1465e9              # double 0.58364000000000005
	.quad	0x3fe996616b54e2b0              # double 0.79960699999999996
	.quad	0x3fd48372e6a76966              # double 0.320523
	.quad	0x3fd687c6327ed84d              # double 0.35203699999999999
	.quad	0x3fcf7d6b65a9a805              # double 0.24601500000000001
	.quad	0x3fc69fadafd11383              # double 0.17674799999999999
	.quad	0x3fd3103c8e25c811              # double 0.29786600000000002
	.quad	0x3fb4ebcc6c54bcf1              # double 0.081723000000000004
	.quad	0x3f8c2c1b10fd7e46              # double 0.013756000000000001
	.quad	0x3fec5db9841aac54              # double 0.88644100000000003
	.quad	0x3fe8025bfad29995              # double 0.75028799999999995
	.quad	0x3febdc5718eb8950              # double 0.87064699999999995
	.quad	0x3fe2b2d905c03361              # double 0.58433199999999996
	.quad	0x3fe64e4217d2849d              # double 0.69705300000000003
	.quad	0x3fc9486f049a9974              # double 0.197523
	.quad	0x3fb23315d701d9f5              # double 0.071092000000000002
	.quad	0x3fc80f9096bb98c8              # double 0.187975
	.quad	0x3fc0b80ecfa69be1              # double 0.13061700000000001
	.quad	0x3fea38bef8ceb357              # double 0.81942700000000002
	.quad	0x3fe010e23af31b15              # double 0.50206099999999998
	.quad	0x3fd37f62b6ae7d56              # double 0.30464999999999998
	.quad	0x3fd9bf76a2f48c2e              # double 0.40231099999999997
	.quad	0x3fea1bf5946c332f              # double 0.815913
	.quad	0x3fe5f7ff151e7536              # double 0.68652299999999999
	.quad	0x3fc6a67e846a5d6c              # double 0.176956
	.quad	0x3fdb3c74fb549f95              # double 0.42556500000000003
	.quad	0x3fe01f1ae2da554c              # double 0.50379700000000005
	.quad	0x3fd3ba83f4eca687              # double 0.30825900000000001
	.quad	0x3fe30efdc9c4da90              # double 0.59558
	.quad	0x3fe125e99e94ab1d              # double 0.53587799999999997
	.quad	0x3fc9dc4007570c56              # double 0.20203399999999999
	.quad	0x3fd8234a87e38eb0              # double 0.37715399999999999
	.quad	0x3fef709310129cbb              # double 0.98249200000000003
	.quad	0x3fd036199780baa6              # double 0.25330200000000003
	.quad	0x3fec902363b25700              # double 0.89259500000000003
	.quad	0x3fd315df6555c52e              # double 0.29820999999999998
	.quad	0x3fef58e432441feb              # double 0.97960100000000005
	.quad	0x3fea94940bbb1f25              # double 0.83063699999999996
	.quad	0x3febe6f0cfe15443              # double 0.87194099999999997
	.quad	0x3fd0aa3f034b0e1b              # double 0.26039099999999998
	.quad	0x3fe15f8b1572580c              # double 0.54291299999999998
	.quad	0x3fee447e49b1fab9              # double 0.94586099999999995
	.quad	0x3fefc111ada76d98              # double 0.99231800000000003
	.quad	0x3fd518a43bb40b35              # double 0.32962900000000001
	.quad	0x3fdd4ea077036c9c              # double 0.457924
	.quad	0x3fa76fb09203a323              # double 0.045774000000000002
	.quad	0x3fe37c99ae924f22              # double 0.60895999999999995
	.quad	0x3fedc0010c6f7a0b              # double 0.92968799999999996
	.quad	0x3fcb985ad538ac19              # double 0.215587
	.quad	0x3feb653a81dc0db2              # double 0.85610699999999995
	.quad	0x3fe5cdb37c99ae92              # double 0.68135999999999997
	.quad	0x3fd0dadb8348f53c              # double 0.26335799999999998
	.quad	0x3fe4d2d01c0ca601              # double 0.65073400000000003
	.quad	0x3fe9260f5e41d4b7              # double 0.78589600000000004
	.quad	0x3f93a860dcb9a9da              # double 0.019196999999999999
	.quad	0x3fea2e6644d87725              # double 0.818164
	.quad	0x3feb65471715c63b              # double 0.85611300000000001
	.quad	0x3fc9c6195464dc23              # double 0.20135800000000001
	.quad	0x3fed5a98676a7265              # double 0.91730900000000004
	.quad	0x3fe28856e696a26e              # double 0.57914299999999996
	.quad	0x3fe6b8561d4306e6              # double 0.71000200000000002
	.quad	0x3fe3b18548a9bcfd              # double 0.61541999999999997
	.quad	0x3fda0e12e83a109d              # double 0.407109
	.quad	0x3fd66aa8eb463498              # double 0.35026000000000002
	.quad	0x3fe636262cba732e              # double 0.69411
	.quad	0x3fe3b19c5a3e39f7              # double 0.61543099999999995
	.quad	0x3fef5834091c0874              # double 0.97951699999999997
	.quad	0x3fd410fd7e45803d              # double 0.31353700000000001
	.quad	0x3fe6b9a5a89b951c              # double 0.71016199999999996
	.quad	0x3feaed373affb04f              # double 0.84145700000000001
	.quad	0x3fe09d4d834091c1              # double 0.51920200000000005
	.quad	0x3fc1d46b26bf876a              # double 0.139295
	.quad	0x3fc8db163baba7b9              # double 0.194186
	.quad	0x3fb4fa9c12f09d8c              # double 0.081948999999999994
	.quad	0x3febc4a1f080303c              # double 0.86775299999999999
	.quad	0x3fe511d798d8a97a              # double 0.65842800000000001
	.quad	0x3fdf86e7e62dc6e3              # double 0.49260900000000002
	.quad	0x3fe435ed8d36b4c8              # double 0.63158300000000001
	.quad	0x3fea7ab53d640e9d              # double 0.82747899999999996
	.quad	0x3fda9b994e1a3f46              # double 0.41574699999999998
	.quad	0x3fe67eed45e9185d              # double 0.70299400000000001
	.quad	0x3fd5647baa9b499d              # double 0.334258
	.quad	0x3fdc666666666666              # double 0.44374999999999998
	.quad	0x3feabb62413db7f1              # double 0.83537399999999995
	.quad	0x3fd9bb5e0f7fcfc4              # double 0.402061
	.quad	0x3fd69552e2fbe33b              # double 0.35286400000000001
	.quad	0x3fcd0318b9346994              # double 0.226657
	.quad	0x3f9ec13b9f127f5f              # double 0.030034000000000002
	.quad	0x3fc3150dae3e6c4c              # double 0.14907999999999999
	.quad	0x3fac4bb1af3a14cf              # double 0.055265000000000002
	.quad	0x3fc6070b8cfbfc65              # double 0.17208999999999999
	.quad	0x3fe7901083dbc233              # double 0.73633599999999999
	.quad	0x3fdc3eccc46950fc              # double 0.44133299999999998
	.quad	0x3fd1fe8ee6b8305e              # double 0.28116200000000002
	.quad	0x3fd1167a95c853c1              # double 0.26699699999999998
	.quad	0x3fdc316e37154003              # double 0.44051699999999999
	.quad	0x3fe9dd1e53a81dc1              # double 0.80824200000000002
	.quad	0x3fdf245f5ad96a6a              # double 0.486595
	.quad	0x3fe96236c15d2d02              # double 0.79323900000000003
	.quad	0x3fea7fa7eb6bf445              # double 0.82808300000000001
	.quad	0x3fed3e63e8dda48b              # double 0.91386599999999996
	.quad	0x3fc7b213e3e29308              # double 0.18512200000000001
	.quad	0x3fe1b3a0407cc7d2              # double 0.55317700000000003
	.quad	0x3fe4d8750c1b9735              # double 0.65142299999999997
	.quad	0x3fca561d4306e5cd              # double 0.20575299999999999
	.quad	0x3fea598bf7f06706              # double 0.82343100000000002
	.quad	0x3feae5add9c27e95              # double 0.84053699999999998
	.quad	0x3fe7f3c2dadb8349              # double 0.748506
	.quad	0x3fe198b71b8aa002              # double 0.54989200000000005
	.quad	0x3fcc0dc33721d53d              # double 0.21917
	.quad	0x3fd01bb8c32a8c9c              # double 0.25169200000000003
	.quad	0x3fc5f11f926c7eae              # double 0.17142099999999999
	.quad	0x3fc50d6b228dc982              # double 0.16447200000000001
	.quad	0x3fe89e2bcf91a32b              # double 0.76930799999999999
	.quad	0x3fc0c67168f8e7de              # double 0.13105600000000001
	.quad	0x3fdc4e3bcd35a858              # double 0.44227499999999997
	.quad	0x3fd296312f4cf4a5              # double 0.29041699999999998
	.quad	0x3fe355dc4007570c              # double 0.60423099999999996
	.quad	0x3fe53d1244a6223e              # double 0.66370499999999999
	.quad	0x3fc4c5e2cdc011d3              # double 0.16228899999999999
	.quad	0x3fb0bf8fcd67fd3f              # double 0.065422999999999995
	.quad	0x3fc279702e6644d8              # double 0.14433099999999999
	.quad	0x3fd631bde82d7b63              # double 0.34678599999999998
	.quad	0x3fe53111f0c34c1b              # double 0.66224000000000005
	.quad	0x3fd2425f202107b8              # double 0.28530100000000003
	.quad	0x3feb80abf76a2f49              # double 0.85945700000000003
	.quad	0x3fd2a52263d816ad              # double 0.291329
	.quad	0x3fb4b49e01de2691              # double 0.080880999999999995
	.quad	0x3fcbec2480e8c8ac              # double 0.218144
	.quad	0x3fe6b65881a15550              # double 0.70975900000000003
	.quad	0x3fee0eeae9ee45c3              # double 0.93932099999999996
	.quad	0x3fecb25d4a5df224              # double 0.89677300000000004
	.quad	0x3fe87e5c91d14e3c              # double 0.76542500000000002
	.quad	0x3fd0224aada33bda              # double 0.25209300000000001
	.quad	0x3fe3db4245f5ad97              # double 0.62051500000000004
	.quad	0x3fe5dc0b9991361e              # double 0.68311100000000002
	.quad	0x3fe88de093532e7b              # double 0.76731899999999997
	.quad	0x3fd41e3a7daa4fca              # double 0.31434499999999999
	.quad	0x3fe3531b9b66f933              # double 0.60389499999999996
	.quad	0x3fe7b3743632c1f4              # double 0.74065599999999998
	.quad	0x3fee2821f2990f30              # double 0.94239899999999999
	.quad	0x3fe7f4d7add15f03              # double 0.74863800000000003
	.quad	0x3febcbf6e3f78bbd              # double 0.86864799999999998
	.quad	0x3fefc23fab10ba62              # double 0.99246199999999996
	.quad	0x3fe5f42fe82517e7              # double 0.68605799999999995
	.quad	0x3fefdcf2495e17e3              # double 0.99572099999999996
	.quad	0x3f838c5436b8f9b1              # double 0.0095449999999999996
	.quad	0x3fcc59ea57214f05              # double 0.221494
	.quad	0x3fdc34a87e38eb03              # double 0.44071399999999999
	.quad	0x3fdbbae03b3e9a70              # double 0.43328100000000003
	.quad	0x3fe456abde3fbbd8              # double 0.63558000000000003
	.quad	0x3fead0e991ff7165              # double 0.83800200000000002
	.quad	0x3fc1349be8ff327b              # double 0.13441800000000001
	.quad	0x3fec635610adcd2d              # double 0.88712599999999997
	.quad	0x3fcca9930be0ded3              # double 0.22392500000000001
	.quad	0x3feae85122318330              # double 0.84085900000000002
	.quad	0x3fcebb5e0f7fcfc4              # double 0.240093
	.quad	0x3fdd0229a5ebb774              # double 0.45325700000000002
	.quad	0x3fd5929ed3953dea              # double 0.33707399999999998
	.quad	0x3fee8c8472c0e7bc              # double 0.95465299999999997
	.quad	0x3fc6ea52ef911cf3              # double 0.17902599999999999
	.quad	0x3fdabbcb1cc96463              # double 0.41771200000000003
	.quad	0x3fce32873bc903ea              # double 0.23591699999999999
	.quad	0x3fe38c564f97edc8              # double 0.61088100000000001
	.quad	0x3fd618ac9f2fdb90              # double 0.34525600000000001
	.quad	0x3feaf8b3700474da              # double 0.84285900000000002
	.quad	0x3fe362d40aaeafab              # double 0.60581399999999996
	.quad	0x3fd4883ba3443d47              # double 0.32081500000000002
	.quad	0x3fe7fff79c842fa5              # double 0.749996
	.quad	0x3febb8cb8e086bdf              # double 0.86630799999999997
	.quad	0x3fef5d31337eb28e              # double 0.98012600000000005
	.quad	0x3fe2e04189374bc7              # double 0.58987500000000004
	.quad	0x3fd1c52a411c2a02              # double 0.27765899999999999
	.quad	0x3fda2a5e785b5b70              # double 0.40883599999999998
	.quad	0x3fe577c6759ab6d0              # double 0.670871
	.quad	0x3fc65271bcdbbe01              # double 0.17439099999999999
	.quad	0x3f97739f340d4dc6              # double 0.022901999999999999
	.quad	0x3fded65e4606748e              # double 0.48183399999999998
	.quad	0x3fec6f4384ba0e84              # double 0.88858199999999998
	.quad	0x3feb1eecbfb15b57              # double 0.84752499999999997
	.quad	0x3fee327674d16335              # double 0.94366000000000005
	.quad	0x3f9f5232d2bb2357              # double 0.030587
	.quad	0x3fdaf6b5d462c344              # double 0.42130800000000002
	.quad	0x3fdf6c82e019b0ab              # double 0.49099799999999999
	.quad	0x3fe01ea9a3d2d880              # double 0.50374300000000005
	.quad	0x3fe3d15ad106ee31              # double 0.61930600000000002
	.quad	0x3fc8768dfbd6a594              # double 0.19111800000000001
	.quad	0x3fbe2b8c75c4a83b              # double 0.117852
	.quad	0x3fe3ce5f7403dddb              # double 0.61894199999999999
	.quad	0x3fe8eddf00abf76a              # double 0.77903699999999998
	.quad	0x3fd1baba7b9170d6              # double 0.27702199999999999
	.quad	0x3fd9cc20d5629d84              # double 0.403084
	.quad	0x3f7f4c2b51bd61f6              # double 0.0076410000000000002
	.quad	0x3f7938151a437825              # double 0.0061570000000000001
	.quad	0x3fde33daf8df7a4e              # double 0.47191499999999997
	.quad	0x3fd54df8b1572581              # double 0.33288400000000001
	.quad	0x3fd06fb8f57f737e              # double 0.25681900000000002
	.quad	0x3fcf71f36262cba7              # double 0.24566499999999999
	.quad	0x3fcf4ec204f2ae08              # double 0.244591
	.quad	0x3fecb0a915379fa9              # double 0.89656499999999995
	.quad	0x3fb6c7eae5bc87db              # double 0.088987999999999998
	.quad	0x3fc5aca36199780c              # double 0.16933100000000001
	.quad	0x3fa721d53cddd6e0              # double 0.045179999999999998
	.quad	0x3fdafa48301a79ff              # double 0.42152600000000001
	.quad	0x3fef5441355475a3              # double 0.97903499999999998
	.quad	0x3feca86f8ad2567a              # double 0.89556100000000005
	.quad	0x3fd5325918a009f6              # double 0.33119799999999999
	.quad	0x3fd882e87d2c7b89              # double 0.38299
	.quad	0x3fdd24edf6124074              # double 0.45537899999999998
	.quad	0x3fe746e6d9be4cd7              # double 0.72740499999999997
	.quad	0x3fd25b8dc55000c9              # double 0.28683799999999998
	.quad	0x3fee230fcf80dc33              # double 0.94177999999999995
	.quad	0x3fe613986338b47c              # double 0.68989199999999995
	.quad	0x3fd3afc47e49b1fb              # double 0.30760300000000002
	.quad	0x3fd1acb4289118c2              # double 0.27616600000000002
	.quad	0x3fe0d349be8ff328              # double 0.52579200000000004
	.quad	0x3fe64cfaeff5c6c1              # double 0.69689699999999999
	.quad	0x3fe4bd35eb7457c1              # double 0.64809700000000003
	.quad	0x3feb2cffa7eb6bf4              # double 0.84924299999999997
	.quad	0x3fedfb02d59d55e7              # double 0.93689100000000003
	.quad	0x3fe9ceca686e7e63              # double 0.80649300000000002
	.quad	0x3febf008a697aede              # double 0.87305100000000002
	.quad	0x3fc0603d57796399              # double 0.127937
	.quad	0x3fe006c6583e8577              # double 0.50082700000000002
	.quad	0x3fe51ec7000431be              # double 0.66000700000000001
	.quad	0x3fece494d50ebaae              # double 0.90290300000000001
	.quad	0x3fcf7e45803cd142              # double 0.24604100000000001
	.quad	0x3fe2f2a9d627bf62              # double 0.59212200000000004
	.quad	0x3fe75feda6612839              # double 0.73046
	.quad	0x3fe3674080f98fa3              # double 0.60635399999999995
	.quad	0x3fd4e28aa433508f              # double 0.32632699999999998
	.quad	0x3fcd4623d0bfa094              # double 0.22870299999999999
	.quad	0x3fafd2849cb252ce              # double 0.062153
	.quad	0x3fd43f24d8fd5cb8              # double 0.31635400000000002
	.quad	0x3fac311622813448              # double 0.055062
	.quad	0x3fe74692f6e8294a              # double 0.72736500000000004
	.quad	0x3feaa2af5771001d              # double 0.83235899999999996
	.quad	0x3fe0dbb7b6bb1290              # double 0.52682099999999998
	.quad	0x3fe68841ede1198b              # double 0.70413300000000001
	.quad	0x3fe4cc48adeebb34              # double 0.64993699999999999
	.quad	0x3fe0a4cc6822ff09              # double 0.52011700000000005
	.quad	0x3fcebd1244a6223e              # double 0.240145
	.quad	0x3fe4ab3892ee84ad              # double 0.64590099999999995
	.quad	0x3fd6876188b1140a              # double 0.35201300000000002
	.quad	0x3fd4c36113404ea5              # double 0.32442500000000002
	.quad	0x3fe6d790752da986              # double 0.71381399999999995
	.quad	0x3fdc0142f61ed5ae              # double 0.43757699999999999
	.quad	0x3fec57eaa2a0a958              # double 0.88573199999999996
	.quad	0x3fd54573a797891e              # double 0.33236399999999999
	.quad	0x3fd4e3c536d655e3              # double 0.32640200000000003
	.quad	0x3fd10029f16b11c7              # double 0.26563500000000001
	.quad	0x3fc6e5471715c63b              # double 0.178872
	.quad	0x3fed604189374bc7              # double 0.91800000000000004
	.quad	0x3fe68e219652bd3c              # double 0.70484999999999998
	.quad	0x3fe648882f0e0a85              # double 0.69635400000000003
	.quad	0x3fec13c03bc4d22d              # double 0.87741100000000005
	.quad	0x3fe689fc6da44849              # double 0.70434399999999997
	.quad	0x3f9ceee0f3cb3e57              # double 0.028254999999999999
	.quad	0x3fd242edbb59ddc2              # double 0.28533500000000001
	.quad	0x3fe06c41dd1a21ea              # double 0.51321499999999998
	.quad	0x3fdf7c7c5260f5e4              # double 0.49197299999999999
	.quad	0x3fe900cf9e3864cb              # double 0.78134899999999996
	.quad	0x3fd53ef284167a96              # double 0.33196700000000001
	.quad	0x3feba055757d5a9f              # double 0.86332200000000003
	.quad	0x3fef4c144028e4fc              # double 0.97803700000000004
	.quad	0x3feeae147ae147ae              # double 0.95874999999999999
	.quad	0x3fd8ddd6e04c0592              # double 0.38854
	.quad	0x3fcf13ad5bee3d60              # double 0.242788
	.quad	0x3fec0f32378ab0c9              # double 0.87685500000000005
	.quad	0x3fe45c03361565c3              # double 0.63623200000000002
	.quad	0x3fb9207d4e09784f              # double 0.098152000000000003
	.quad	0x3fb5ae4f3343fa2b              # double 0.084691000000000002
	.quad	0x3f7ae81882adc4ca              # double 0.0065690000000000002
	.quad	0x3fc0cfaeff5c6c12              # double 0.13133800000000001
	.quad	0x3feb3c31df761cbd              # double 0.85109800000000002
	.quad	0x3fee3a908a265f0f              # double 0.94464899999999996
	.quad	0x3fd026dce39b456b              # double 0.25237199999999999
	.quad	0x3fdf7210be9424e6              # double 0.49133700000000002
	.quad	0x3fccc54bcf0b6b6e              # double 0.224771
	.quad	0x3fdc04577d955715              # double 0.43776500000000002
	.quad	0x3fee868123810e88              # double 0.95391899999999996
	.quad	0x3fd8e21101b00368              # double 0.38879799999999998
	.quad	0x3fdcf6d330941c82              # double 0.452565
	.quad	0x3fef3201040bfe3b              # double 0.97485399999999999
	.quad	0x3fb860bb2bba98ee              # double 0.095226000000000005
	.quad	0x3fb178c436fc1590              # double 0.068249000000000004
	.quad	0x3fdcb3f63c31df76              # double 0.44848399999999999
	.quad	0x3fee5323fee2c98e              # double 0.94764899999999996
	.quad	0x3f862c77574f722e              # double 0.010827
	.quad	0x3fd0cdee34fc610f              # double 0.262569
	.quad	0x3fe1eaf038e29f9d              # double 0.55992900000000001
	.quad	0x3fee8d10f51ac9b0              # double 0.95472000000000001
	.quad	0x3fe66b15f88fc936              # double 0.70057199999999997
	.quad	0x3fd37e02645e4e6a              # double 0.304566
	.quad	0x3fe93821af7d30ad              # double 0.78810199999999997
	.quad	0x3fc05375c8d9f905              # double 0.12754699999999999
	.quad	0x3fd248beb5b2d4d4              # double 0.28569
	.quad	0x3fd0bdbe3c105187              # double 0.26158100000000001
	.quad	0x3fdff65dbfceb789              # double 0.49941200000000002
	.quad	0x3fd886a8fc0d2c38              # double 0.38321899999999998
	.quad	0x3fdd50225742dcf4              # double 0.45801599999999998
	.quad	0x3fc2e82949a56580              # double 0.14771000000000001
	.quad	0x3fd228283d35eb74              # double 0.28370099999999998
	.quad	0x3f9aac96cc5fbf83              # double 0.026048999999999999
	.quad	0x3fea1b54195cc858              # double 0.81583600000000001
	.quad	0x3fb77e3d1cc100e7              # double 0.091770000000000004
	.quad	0x3fd9a08398a65493              # double 0.400422
	.quad	0x3fe8fa5093964a5a              # double 0.78055600000000003
	.quad	0x3fe454e8fb00bcbe              # double 0.63536499999999996
	.quad	0x3fd1b3a68b19a416              # double 0.27659
	.quad	0x3fe82bde3fbbd7b2              # double 0.755355
	.quad	0x3feb1b8cb8e086be              # double 0.847113
	.quad	0x3fde54f7a919695e              # double 0.47393600000000002
	.quad	0x3fe907f66e86c658              # double 0.78222199999999997
	.quad	0x3fe65e33269df97b              # double 0.69899900000000004
	.quad	0x3fe00bcdfefbf402              # double 0.50144100000000003
	.quad	0x3fbeaa2a0a958538              # double 0.119784
	.quad	0x3fe5efac6045baf5              # double 0.68550699999999998
	.quad	0x3f91832fcac8e68e              # double 0.017101999999999999
	.quad	0x3fcb4906034f3fd9              # double 0.21316599999999999
	.quad	0x3fdded2cbea4ebdd              # double 0.46760099999999999
	.quad	0x3fa6961c36976bc2              # double 0.044114
	.quad	0x3feff6922d948dc1              # double 0.99884899999999998
	.quad	0x3f900c0f01fb82c3              # double 0.015671000000000001
	.quad	0x3fd1653005814941              # double 0.27180100000000001
	.quad	0x3fc8851a86940358              # double 0.19156200000000001
	.quad	0x3fc45c810a569b17              # double 0.15907299999999999
	.quad	0x3feeba5a038194c0              # double 0.96024799999999999
	.quad	0x3fe448882f0e0a85              # double 0.63385400000000003
	.quad	0x3fe41142b302f72b              # double 0.62710699999999997
	.quad	0x3fed26e5471715c6              # double 0.91099799999999997
	.quad	0x3fdef0d413122b7c              # double 0.48344900000000002
	.quad	0x3fb839042d8c2a45              # double 0.094619999999999996
	.quad	0x3fe6636b09635611              # double 0.69963600000000004
	.quad	0x3fb398a65492ff4c              # double 0.076548000000000005
	.quad	0x3fc3058dde7a743a              # double 0.14860699999999999
	.quad	0x3fc0cce5f7403dde              # double 0.13125300000000001
	.quad	0x3fdb094a2b9d3cbc              # double 0.42244199999999998
	.quad	0x3f706bbdbe3c1052              # double 0.0040090000000000004
	.quad	0x3fb7a28bb0a2ca9b              # double 0.092324000000000003
	.quad	0x3fe83a4b5568e821              # double 0.75711600000000001
	.quad	0x3fd3c5479d4d8341              # double 0.30891600000000002
	.quad	0x3fe8cb72c5197a25              # double 0.77483500000000005
	.quad	0x3fdeb4cc25072086              # double 0.47978500000000002
	.quad	0x3fcba4b5568e820e              # double 0.21596399999999999
	.quad	0x3fe1d740c4156e26              # double 0.55752599999999997
	.quad	0x3fe3df56a7ac81d4              # double 0.62101300000000004
	.quad	0x3fe6c5f394b7b289              # double 0.71166399999999996
	.quad	0x3fef3549f94855da              # double 0.97525499999999998
	.quad	0x3fd43293d102bc73              # double 0.31558700000000001
	.quad	0x3fef504816f0068e              # double 0.97855000000000003
	.quad	0x3fc7e81450efdc9c              # double 0.18676999999999999
	.quad	0x3fc05cf67b1c0011              # double 0.12783700000000001
	.quad	0x3fe7e4f765fd8adb              # double 0.74670000000000003
	.quad	0x3fe7e2089e34330d              # double 0.74634199999999995
	.quad	0x3fb9460aa64c2f83              # double 0.098724999999999993
	.quad	0x3fe1dd65a14488c6              # double 0.55827599999999999
	.quad	0x3fed31c0010c6f7a              # double 0.912323
	.quad	0x3fd0307af20ea5b5              # double 0.25295899999999999
	.quad	0x3fe35651b0ccbc06              # double 0.60428700000000002
	.quad	0x3fe9d51d68c692f7              # double 0.80726500000000001
	.quad	0x3fc67967caea747e              # double 0.17558000000000001
	.quad	0x3fed1d3671ac14c6              # double 0.90981599999999996
	.quad	0x3fe2d3aa369fcf3e              # double 0.58833800000000003
	.quad	0x3fd8a732df505d10              # double 0.38520500000000002
	.quad	0x3fef79b34a44c7b0              # double 0.98360599999999998
	.quad	0x3fd3474538ef34d7              # double 0.30122500000000002
	.quad	0x3feea13c254a3c64              # double 0.95718199999999997
	.quad	0x3feb36ef8055fbb5              # double 0.85045599999999999
	.quad	0x3feb74c4cdfaca36              # double 0.85800399999999999
	.quad	0x3fc2fe931876188b              # double 0.148394
	.quad	0x3fd0fd7e45803cd1              # double 0.26547199999999999
	.quad	0x3fe09d12cadddf44              # double 0.51917400000000002
	.quad	0x3fe61dba908a265f              # double 0.69112899999999999
	.quad	0x3fe7530270f38822              # double 0.72888299999999995
	.quad	0x3fe48b502ababead              # double 0.64200599999999997
	.quad	0x3fd1027525460aa6              # double 0.26577499999999998
	.quad	0x3fd37b02d59d55e7              # double 0.30438300000000001
	.quad	0x3fdc449129888f86              # double 0.44168499999999999
	.quad	0x3fe9d6451b93037d              # double 0.80740599999999996
	.quad	0x3fe1d2b4d8ba40d9              # double 0.55697099999999999
	.quad	0x3fd75c358afc47e5              # double 0.36500300000000002
	.quad	0x3fcb206c8711d799              # double 0.211927
	.quad	0x3fe587db2b346131              # double 0.67283400000000004
	.quad	0x3fd20dbf0563ed0f              # double 0.28208899999999998
	.quad	0x3fee8bf1a5ca2984              # double 0.95458299999999995
	.quad	0x3fdbcb5fe542e558              # double 0.43428800000000001
	.quad	0x3feb4d0bb6ed6777              # double 0.853155
	.quad	0x3fe58611fd5885d3              # double 0.67261599999999999
	.quad	0x3fd042528ae74f2f              # double 0.254048
	.quad	0x3fd295b35b0bbf51              # double 0.29038700000000001
	.quad	0x3fe84b72c5197a25              # double 0.75921000000000005
	.quad	0x3fca7724fa8b4bf9              # double 0.206761
	.quad	0x3fe013b9f127f5e8              # double 0.50240799999999997
	.quad	0x3fe85360d0247022              # double 0.76017800000000002
	.quad	0x3fc7ec5f394b7b29              # double 0.18690100000000001
	.quad	0x3fd60663c74fb54a              # double 0.34414
	.quad	0x3fcc7e9531550ca2              # double 0.22261300000000001
	.quad	0x3fc0275ab7dc7ac0              # double 0.12620100000000001
	.quad	0x3fd4d8409e55c0fd              # double 0.32569900000000002
	.quad	0x3fea7e82517e77d5              # double 0.82794299999999998
	.quad	0x3fd6497fa5d28d00              # double 0.34823599999999999
	.quad	0x3fb00db2702a3487              # double 0.062709000000000001
	.quad	0x3fcdb84db9c7368b              # double 0.232187
	.quad	0x3fe6528f190d1740              # double 0.69757800000000003
	.quad	0x3fe4c2ce4649906d              # double 0.64878000000000002
	.quad	0x3fe979db22d0e560              # double 0.79612499999999997
	.quad	0x3fea302f72b45283              # double 0.81838200000000005
	.quad	0x3fe1b089a0275254              # double 0.55279999999999996
	.quad	0x3fe26598e10cf5b2              # double 0.57490200000000002
	.quad	0x3fd9fa7a85015c21              # double 0.40591300000000002
	.quad	0x3feeb1bbcf4e874d              # double 0.95919600000000004
	.quad	0x3fe27eb6bf444e0e              # double 0.57796800000000004
	.quad	0x3fb6b463497b7415              # double 0.088690000000000005
	.quad	0x3fca2ccb3a2595bc              # double 0.20449200000000001
	.quad	0x3fe129ed3953dea4              # double 0.53636799999999996
	.quad	0x3fbda847b24638c9              # double 0.11584899999999999
	.quad	0x3fdce5eedcc20d56              # double 0.45153399999999999
	.quad	0x3fdbb9170d62bf12              # double 0.433172
	.quad	0x3fdfc8f75536933a              # double 0.496641
	.quad	0x3fc4d8a116659d13              # double 0.16286100000000001
	.quad	0x3fdc1975f2cb6417              # double 0.439054
	.quad	0x3fe0c91f2dc2b0ea              # double 0.52455099999999999
	.quad	0x3fd5718eb8950764              # double 0.33505600000000002
	.quad	0x3fe1b93ccd0fe8ab              # double 0.55386199999999997
	.quad	0x3fd131055b899392              # double 0.26861699999999999
	.quad	0x3fead4046412cf10              # double 0.83838100000000004
	.quad	0x3fe2d00f776c4828              # double 0.58789800000000003
	.quad	0x3fe5562e09fe8683              # double 0.66676999999999997
	.quad	0x3fe5ba0c6b484d77              # double 0.67896100000000004
	.quad	0x3fe396fa82e87d2c              # double 0.61217999999999995
	.quad	0x3fe861672324c836              # double 0.76188999999999996
	.quad	0x3fdb4167a95c853c              # double 0.425867
	.quad	0x3feaf04577d95571              # double 0.84182999999999997
	.quad	0x3feea5a250f84018              # double 0.95771899999999998
	.quad	0x3fed073365881a15              # double 0.90712899999999996
	.quad	0x3fe553f5b5fa2270              # double 0.66649899999999995
	.quad	0x3fd34070329802c1              # double 0.30080800000000002
	.quad	0x3fe3c61d8622c450              # double 0.61793399999999998
	.quad	0x3fed9040bfe3b03e              # double 0.92385899999999999
	.quad	0x3fe5a4db163baba8              # double 0.67637400000000003
	.quad	0x3fe1ce0fc2eba27b              # double 0.55640400000000001
	.quad	0x3faded4a1ad6451c              # double 0.058451000000000003
	.quad	0x3fc97739f340d4dc              # double 0.19895099999999999
	.quad	0x3fed3a604e1e7104              # double 0.91337599999999996
	.quad	0x3fe66cf41f212d77              # double 0.70079999999999998
	.quad	0x3fe5b5aea3161a1e              # double 0.67842800000000003
	.quad	0x3fee1359791819d2              # double 0.93986199999999998
	.quad	0x3febc31593e5fb72              # double 0.867564
	.quad	0x3fb01d9f4d37c137              # double 0.062951999999999994
	.quad	0x3fda95cc857f3062              # double 0.41539300000000001
	.quad	0x3fd697396d0917d7              # double 0.35298000000000002
	.quad	0x3febbb0c4588a04d              # double 0.86658299999999999
	.quad	0x3fed3b05faebc409              # double 0.91345500000000002
	.quad	0x3f9ee2003ab862b2              # double 0.030158999999999998
	.quad	0x3fca36d22424a277              # double 0.20479800000000001
	.quad	0x3fd6c90c4dec1c1d              # double 0.35602099999999998
	.quad	0x3fe2e4d1a6506141              # double 0.59043199999999996
	.quad	0x3fd8af1886df82b2              # double 0.385687
	.quad	0x3fa792d1287c200c              # double 0.046042
	.quad	0x3feb65f0f5a1016d              # double 0.85619400000000001
	.quad	0x3feec1a8ac5c13fd              # double 0.96113999999999999
	.quad	0x3feaf46455eaee20              # double 0.84233299999999999
	.quad	0x3fc9af102363b257              # double 0.200655
	.quad	0x3fd476af89c5e6ff              # double 0.31974399999999997
	.quad	0x3fb61bd1ed9dfdac              # double 0.086361999999999994
	.quad	0x3fcb7e45803cd142              # double 0.21479100000000001
	.quad	0x3fec89289dadfb50              # double 0.89174299999999995
	.quad	0x3fe5b0c88a47ecff              # double 0.67783000000000004
	.quad	0x3f9777d0f1f57b42              # double 0.022918000000000001
	.quad	0x3fd8f3061c79b34a              # double 0.38983299999999999
	.quad	0x3fdfa8650e779208              # double 0.49465300000000001
	.quad	0x3fc993250b52439a              # double 0.19980300000000001
	.quad	0x3fc680b673c4f3ba              # double 0.17580299999999999
	.quad	0x3fd0b7bf1e8e6080              # double 0.26121499999999997
	.quad	0x3fcedd15f02c4d66              # double 0.241122
	.quad	0x3fcb07a6bd6e8af8              # double 0.211171
	.quad	0x3fce3e63e8dda48b              # double 0.23627899999999999
	.quad	0x3fc6517e77d523b3              # double 0.17436199999999999
	.quad	0x3fe46e71cda2b5a2              # double 0.63848199999999999
	.quad	0x3fdabf65dbfceb79              # double 0.41793200000000003
	.quad	0x3fe2eeb4e981387a              # double 0.59163900000000003
	.quad	0x3fe3a4873365881a              # double 0.61383399999999999
	.quad	0x3fd0cf7446f9b995              # double 0.26266200000000001
	.quad	0x3fe4830e3cd9a522              # double 0.64099799999999996
	.quad	0x3fe1ae7f6f4be836              # double 0.55255100000000001
	.quad	0x3fe87b00bcbe61d0              # double 0.765015
	.quad	0x3fead6eefa1e3eaf              # double 0.83873699999999995
	.quad	0x3fba6a875d56f32c              # double 0.103188
	.quad	0x3fee6006d0d4994a              # double 0.94922200000000001
	.quad	0x3fe90285ec3dab5c              # double 0.78155799999999997
	.quad	0x3f83415b1422ccb4              # double 0.0094020000000000006
	.quad	0x3fb974927913e814              # double 0.099434999999999995
	.quad	0x3fea9107faa044af              # double 0.83020400000000005
	.quad	0x3fc6961c36976bc2              # double 0.176456
	.quad	0x3fd97b84db9c7369              # double 0.39816400000000002
	.quad	0x3fc5c7607c4199fe              # double 0.17014699999999999
	.quad	0x3fe753c148344c38              # double 0.72897400000000001
	.quad	0x3fc6ca25529fe005              # double 0.17804400000000001
	.quad	0x3fdfd1394317acc5              # double 0.497145
	.quad	0x3fdebdf8f4730404              # double 0.48034500000000002
	.quad	0x3fe9365668c26139              # double 0.787883
	.quad	0x3fdbac6cdaf4adbc              # double 0.43239899999999998
	.quad	0x3fdc7a24894c447c              # double 0.44495499999999999
	.quad	0x3fe703c6c97d8cf4              # double 0.71921100000000004
	.quad	0x3fd472d1aeb3dd12              # double 0.31950800000000001
	.quad	0x3fdd6bf01322f273              # double 0.45971299999999998
	.quad	0x3fdbd199bb2788db              # double 0.434668
	.quad	0x3feda81dc0db2703              # double 0.92677200000000004
	.quad	0x3fe3a3d4f15e7c8d              # double 0.61374899999999999
	.quad	0x3fee47a5b0ff10ed              # double 0.94624600000000003
	.quad	0x3fea944ed6fda837              # double 0.83060400000000001
	.quad	0x3fe420642396073e              # double 0.62895400000000001
	.quad	0x3fe647219220ff54              # double 0.696183
	.quad	0x3fdfa4d6e47dc37a              # double 0.49443599999999999
	.quad	0x3fdcb3aeee957471              # double 0.448467
	.quad	0x3f73f8db4890928a              # double 0.0048760000000000001
	.quad	0x3fcbb7f9d6f112fd              # double 0.21655199999999999
	.quad	0x3fe4d6191148fda0              # double 0.65113500000000002
	.quad	0x3fd2723aafff36ac              # double 0.28822199999999998
	.quad	0x3fdc38c111ada76e              # double 0.44096400000000002
	.quad	0x3fb305a708ede54b              # double 0.074304999999999996
	.quad	0x3fe1e3cb81733227              # double 0.55905700000000003
	.quad	0x3fcef77f27fe4bcb              # double 0.241928
	.quad	0x3fe167e414e7ee91              # double 0.54393199999999997
	.quad	0x3fe7b821af7d30ad              # double 0.74122699999999997
	.quad	0x3fdde11dbca9691a              # double 0.46686499999999997
	.quad	0x3fe7289b951c5c57              # double 0.72370699999999999
	.quad	0x3fe149d16fc9bc77              # double 0.54026099999999999
	.quad	0x3fecc68cac4b4d05              # double 0.89923699999999995
	.quad	0x3fb2e008e9b38d61              # double 0.073731000000000005
	.quad	0x3fef5657fb69984a              # double 0.97928999999999999
	.quad	0x3fee9c4545846e8f              # double 0.95657599999999998
	.quad	0x3feab16c1e364bec              # double 0.83415799999999995
	.quad	0x3fe29a3b14a90471              # double 0.58132700000000004
	.quad	0x3feb899392189bd8              # double 0.86054399999999998
	.quad	0x3fe29c475e6362a6              # double 0.58157700000000001
	.quad	0x3fb261bf37b8d3f2              # double 0.071804000000000007
	.quad	0x3fe4b47a5b0ff10f              # double 0.64703100000000002
	.quad	0x3fc097fa5d28d003              # double 0.129638
	.quad	0x3fc315e7c8d19589              # double 0.14910599999999999
	.quad	0x3fe4c17225b749ae              # double 0.64861400000000002
	.quad	0x3fb25cc426351def              # double 0.071728
	.quad	0x3fb0e7ff583a53b9              # double 0.066040000000000001
	.quad	0x3fe5e03d57796399              # double 0.68362299999999998
	.quad	0x3fec6a4a8c154c98              # double 0.88797499999999996
	.quad	0x3fe33e553ac4f7ec              # double 0.60135899999999998
	.quad	0x3fdc09bf9c62a1b6              # double 0.43809500000000001
	.quad	0x3fed211a975afaf8              # double 0.91029099999999996
	.quad	0x3feb1c1f85d744f6              # double 0.84718300000000002
	.quad	0x3f9d851654d61b2a              # double 0.028827999999999999
	.quad	0x3fdf5ef62f9ca5be              # double 0.49017100000000002
	.quad	0x3feb286b59146e4c              # double 0.84868399999999999
	.quad	0x3fd8749f0e4da09d              # double 0.38211800000000001
	.quad	0x3fc9d590c0ad03da              # double 0.20183000000000001
	.quad	0x3fbda5a89b951c5c              # double 0.115809
	.quad	0x3fe97f2a172abef0              # double 0.79677299999999995
	.quad	0x3fe015421c044285              # double 0.50259500000000001
	.quad	0x3fe5833e78e1932d              # double 0.67227099999999995
	.quad	0x3fe4441355475a32              # double 0.63331000000000004
	.quad	0x3fdbc78a6dacabc5              # double 0.434054
	.quad	0x3fd38a4c1ebc83a9              # double 0.30531599999999998
	.quad	0x3fe47a5b0ff10ecb              # double 0.63993599999999995
	.quad	0x3fd797aeddce7cd0              # double 0.36863299999999999
	.quad	0x3feb64c51116a8b9              # double 0.85605100000000001
	.quad	0x3fe59ef30a4e379b              # double 0.67565299999999995
	.quad	0x3fdeaac96cc5fbf8              # double 0.47917399999999999
	.quad	0x3fe224f440af1cb9              # double 0.56701100000000004
	.quad	0x3fe81ae924f227d0              # double 0.75328499999999998
	.quad	0x3fb895f2452c59fb              # double 0.096037999999999998
	.quad	0x3fd02b884406c00e              # double 0.25265700000000002
	.quad	0x3fd26fc158fb43d9              # double 0.28807100000000002
	.quad	0x3fefcc7f34938583              # double 0.99371299999999995
	.quad	0x3fd83b14a90470a8              # double 0.378606
	.quad	0x3fd63b4f61672325              # double 0.34737000000000001
	.quad	0x3fe09ea78af3e469              # double 0.51936700000000002
	.quad	0x3fd8191dde37585c              # double 0.37653300000000001
	.quad	0x3fe90b4bf8fcd680              # double 0.78262900000000002
	.quad	0x3fc02fd75e2046c7              # double 0.12645999999999999
	.quad	0x3fd985c67dfe32a0              # double 0.39878999999999998
	.quad	0x3fe082363b256ffc              # double 0.51589499999999999
	.quad	0x3fd302645e4e69f0              # double 0.29702099999999998
	.quad	0x3fee93bc0a06e9ff              # double 0.95553399999999999
	.quad	0x3fbc22467be553ac              # double 0.109898
	.quad	0x3fcc12c6ac215b9a              # double 0.21932299999999999
	.quad	0x3fe9b1dd5d3dc8b8              # double 0.80296199999999995
	.quad	0x3fe55c4651f3e89b              # double 0.66751400000000005
	.quad	0x3fe03fc2224edf61              # double 0.50778299999999998
	.quad	0x3fe7d22ea0fd3b2a              # double 0.74440700000000004
	.quad	0x3fe692513b5bf6a1              # double 0.70536100000000002
	.quad	0x3fe1ab27cbf6e3f8              # double 0.55214300000000005
	.quad	0x3fd909aed56b0100              # double 0.39121600000000001
	.quad	0x3fea2acd9e83e426              # double 0.81772500000000004
	.quad	0x3fac176577531db4              # double 0.054865999999999998
	.quad	0x3febf21f6cacd185              # double 0.87330600000000003
	.quad	0x3feb7164c729f59d              # double 0.85759200000000002
	.quad	0x3fed478854cdb7ae              # double 0.91498199999999996
	.quad	0x3fecf304039abf34              # double 0.90466500000000005
	.quad	0x3fef6957470eb24a              # double 0.98160899999999995
	.quad	0x3fd68e8a71de69ad              # double 0.35244999999999999
	.quad	0x3fec662dc6e2a800              # double 0.88747299999999996
	.quad	0x3fe3d3f39d1b2e5a              # double 0.61962300000000003
	.quad	0x3fbe15a8deb0fadf              # double 0.117518
	.quad	0x3fe641e7967caea7              # double 0.69554499999999997
	.quad	0x3fd37b5f1bef49cf              # double 0.30440499999999998
	.quad	0x3fdfc753e707e176              # double 0.49654100000000001
	.quad	0x3febb397dd00f777              # double 0.86567300000000003
	.quad	0x3fe1a9930be0ded3              # double 0.55195000000000005
	.quad	0x3f907f23cc8de2ac              # double 0.016109999999999999
	.quad	0x3fcafe718a86d71f              # double 0.21088999999999999
	.quad	0x3fe7b8561d4306e6              # double 0.74125200000000002
	.quad	0x3feaa74c09c3ce21              # double 0.83292200000000005
	.quad	0x3febf1151611ba3d              # double 0.87317900000000004
	.quad	0x3fe12a53fc0096ff              # double 0.53641700000000003
	.quad	0x3fea4de3b8a19c9d              # double 0.82200799999999996
	.quad	0x3fd3af5771001d5c              # double 0.30757699999999999
	.quad	0x3fd68509bf9c62a2              # double 0.35187000000000002
	.quad	0x3fef05f06f694467              # double 0.96947499999999997
	.quad	0x3f9c8754f3775b81              # double 0.027859999999999999
	.quad	0x3fe57911cf355cd9              # double 0.67102899999999999
	.quad	0x3fd1a1f4b1ee2435              # double 0.27550999999999998
	.quad	0x3fecf73e24febd0a              # double 0.90518100000000001
	.quad	0x3f7f0c34c1a8ac5c              # double 0.0075799999999999999
	.quad	0x3fd159ee88df3733              # double 0.27111400000000002
	.quad	0x3fcd1897a67a52ac              # double 0.22731299999999999
	.quad	0x3fe5ea26e5471716              # double 0.68483300000000003
	.quad	0x3fdeaf5fd47bedb7              # double 0.47945399999999999
	.quad	0x3f9aab474107314d              # double 0.026044000000000001
	.quad	0x3fe4b5c39bcba301              # double 0.64718799999999999
	.quad	0x3fe27c6759ab6d01              # double 0.57768600000000003
	.quad	0x3fe92f89c5e6ff7e              # double 0.787053
	.quad	0x3fdbf30a4e379b78              # double 0.43670900000000001
	.quad	0x3fec917b5286b591              # double 0.89275899999999997
	.quad	0x3f93c9eecbfb15b5              # double 0.019324999999999998
	.quad	0x3fe91b691212513b              # double 0.78459599999999996
	.quad	0x3fe3a9de8b3b3205              # double 0.61448599999999998
	.quad	0x3fe6570a3d70a3d7              # double 0.698125
	.quad	0x3fe1e92f6e82949a              # double 0.55971499999999996
	.quad	0x3fe8b83cf2cf95d5              # double 0.77249000000000001
	.quad	0x3fd60c069e7fb268              # double 0.34448400000000001
	.quad	0x3fee5d13d74d594f              # double 0.94886199999999998
	.quad	0x3fe73191dde37586              # double 0.72480100000000003
	.quad	0x3fed59ddc1e7967d              # double 0.91722000000000004
	.quad	0x3fc09cf56eac8605              # double 0.12978999999999999
	.quad	0x3fa0b49e01de2691              # double 0.032627999999999997
	.quad	0x3fd4d76ab5807fed              # double 0.32564799999999999
	.quad	0x3fe0787ad080b674              # double 0.51470700000000003
	.quad	0x3fe86fe2e6ea8544              # double 0.76365799999999994
	.quad	0x3fe11524bfd2e947              # double 0.53383100000000006
	.quad	0x3fddb08dd1e53a82              # double 0.46390100000000001
	.quad	0x3fe21973d9ec7000              # double 0.56560699999999997
	.quad	0x3fba6a4441787054              # double 0.103184
	.quad	0x3fe0a5f633ce63a6              # double 0.52025900000000003
	.quad	0x3fe5f0e2c12ad81b              # double 0.68565500000000001
	.quad	0x3fda7214f0520d13              # double 0.413213
	.quad	0x3fe40e432441fea8              # double 0.62674099999999999
	.quad	0x3fe6b04ee7c49fd8              # double 0.70902200000000004
	.quad	0x3fd3c0db2702a348              # double 0.30864599999999998
	.quad	0x3feb5a16616b54e3              # double 0.85474700000000003
	.quad	0x3fd73ce63a5c1c61              # double 0.36309200000000003
	.quad	0x3fcb647baa9b499d              # double 0.214004
	.quad	0x3fe24cb5bb384fd3              # double 0.57186400000000004
	.quad	0x3fea045132f87ad1              # double 0.81302700000000006
	.quad	0x3fe3c61f9f01b867              # double 0.61793500000000001
	.quad	0x3fe619008205ff1e              # double 0.69055200000000005
	.quad	0x3fe40b49e01de269              # double 0.62637799999999999
	.quad	0x3fe4b6a619da9c99              # double 0.64729599999999998
	.quad	0x3fea89656eefa1e4              # double 0.829272
	.quad	0x3fd0a027525460aa              # double 0.25977499999999998
	.quad	0x3fe0f00ef1348b22              # double 0.529304
	.quad	0x3fd18c586876e1df              # double 0.27419100000000002
	.quad	0x3fd5bc23315d701e              # double 0.33960800000000002
	.quad	0x3fc232a0663c74fb              # double 0.14216999999999999
	.quad	0x3fad000c9539b888              # double 0.056640999999999997
	.quad	0x3fe4b2441fea8113              # double 0.64676100000000003
	.quad	0x3fe2ced6fda836eb              # double 0.58774899999999997
	.quad	0x3fd92491afc04c8c              # double 0.39285700000000001
	.quad	0x3fdd6a1e81cb46bb              # double 0.45960200000000001
	.quad	0x3fefa2b9d3cbc48f              # double 0.98861399999999999
	.quad	0x3fef1357603925bb              # double 0.97111099999999994
	.quad	0x3fcd201040bfe3b0              # double 0.22754099999999999
	.quad	0x3fe1ea37ac3eb7cc              # double 0.55984100000000003
	.quad	0x3fec7496aad1d042              # double 0.88923200000000002
	.quad	0x3fc70be9424e5929              # double 0.18005099999999999
	.quad	0x3fe92600b0292817              # double 0.78588899999999995
	.quad	0x3fce59ea57214f05              # double 0.237119
	.quad	0x3fdc55f3519bd406              # double 0.44274599999999997
	.quad	0x3fee74fb549f9485              # double 0.95177999999999996
	.quad	0x3fe46d7e889c1b54              # double 0.63836599999999999
	.quad	0x3fe118d25edd0529              # double 0.53427999999999998
	.quad	0x3fe1d0374ff865d8              # double 0.55666700000000002
	.quad	0x3fd078183f91e647              # double 0.25733
	.quad	0x3fd82f405f6ba062              # double 0.377884
	.quad	0x3fea8754f3775b81              # double 0.82901999999999998
	.quad	0x3fe6bad5bee3d5fe              # double 0.71030700000000002
	.quad	0x3fe8a00c0f01fb83              # double 0.76953700000000003
	.quad	0x3fe3bdad7518b0d1              # double 0.61690400000000001
	.quad	0x3fd5e9856a37ac3f              # double 0.34237800000000002
	.quad	0x3fee4c985f06f694              # double 0.94684999999999996
	.quad	0x3fd04dec1c1d6cf8              # double 0.25475599999999998
	.quad	0x3feec028e4fb97bb              # double 0.96095699999999995
	.quad	0x3fea4bbe4473cd57              # double 0.82174599999999998
	.quad	0x3fdfaa582dbe7f2c              # double 0.49477199999999999
	.quad	0x3fa69531550ca1cf              # double 0.044107
	.quad	0x3fea98d25edd0529              # double 0.83115499999999998
	.quad	0x3fe56abde3fbbd7b              # double 0.66927999999999999
	.quad	0x3fb0b0e1b4bb5e0f              # double 0.065198999999999993
	.quad	0x3fc68765ba6efc37              # double 0.176007
	.quad	0x3fe4925785f8d2e5              # double 0.64286399999999999
	.quad	0x3fe8adcf4623d0c0              # double 0.77121700000000004
	.quad	0x3fc5054ac29bf163              # double 0.16422400000000001
	.quad	0x3fd159a30984e400              # double 0.271096
	.quad	0x3fee0d1fa333764f              # double 0.93910199999999999
	.quad	0x3fce28b2a6b0d951              # double 0.23561699999999999
	.quad	0x3fd960999dcb5782              # double 0.39652100000000001
	.quad	0x3fe9fa6defc7a398              # double 0.81181999999999999
	.quad	0x3fcb918a009f6230              # double 0.21537899999999999
	.quad	0x3fe38b69552e2fbe              # double 0.61076799999999998
	.quad	0x3fe07b0f6ad70e6f              # double 0.51502199999999998
	.quad	0x3fe55b0ff10ecb75              # double 0.66736600000000001
	.quad	0x3fd94ece9a2c6690              # double 0.39543499999999998
	.quad	0x3fdeb224aada33be              # double 0.47962300000000002
	.quad	0x3fde06317268d328              # double 0.46912799999999999
	.quad	0x3fe3121ab4b72c52              # double 0.59596000000000005
	.quad	0x3fb5f23465625a68              # double 0.085726999999999998
	.quad	0x3fe187b56b873797              # double 0.54781599999999997
	.quad	0x3feb069e7fb267c7              # double 0.84455800000000003
	.quad	0x3fe2ca90470a808d              # double 0.58722700000000005
	.quad	0x3fbdb9d7fd82773e              # double 0.116117
	.quad	0x3fe1fa99fa11a976              # double 0.56184100000000003
	.quad	0x3fe50d4562e09fe8              # double 0.65786999999999995
	.quad	0x3fe0b9e8c47a17f4              # double 0.52269399999999999
	.quad	0x3fce17d2849cb253              # double 0.23510200000000001
	.quad	0x3fdbcf0b6b6e0d24              # double 0.43451200000000001
	.quad	0x3f7830e3cd9a5226              # double 0.0059059999999999998
	.quad	0x3fd5934efcbd5561              # double 0.33711600000000003
	.quad	0x3fdefc9795b35b0c              # double 0.48416700000000001
	.quad	0x3fecedaa92e62132              # double 0.90401200000000004
	.quad	0x3fcd21b3aeee9574              # double 0.22759099999999999
	.quad	0x3fd47939a7c17a89              # double 0.31989899999999999
	.quad	0x3fd9ff151e75360d              # double 0.406194
	.quad	0x3fe7980b242070b9              # double 0.73731000000000002
	.quad	0x3fd21040bfe3b03e              # double 0.28224199999999999
	.quad	0x3faa5d074213a0c7              # double 0.051491000000000002
	.quad	0x3fe97533f42352eb              # double 0.79555699999999996
	.quad	0x3fd7daa4fca42aed              # double 0.37272
	.quad	0x3fe05436b8f9b131              # double 0.51027999999999996
	.quad	0x3fb6e28672756862              # double 0.089394000000000001
	.quad	0x3fe6d568e820e62a              # double 0.71355100000000005
	.quad	0x3feca80cf9e3864d              # double 0.89551400000000003
	.quad	0x3fb8e8427418d691              # double 0.097294000000000005
	.quad	0x3fe555cd91eeaa6d              # double 0.66672399999999998
	.quad	0x3feb17bfa4c61d86              # double 0.84664899999999998
	.quad	0x3fca3fcc9ea9a3d3              # double 0.205072
	.quad	0x3fe88405b39e279e              # double 0.76611600000000002
	.quad	0x3f33879c4113c686              # double 2.9799999999999998E-4
	.quad	0x3feb54e8fb00bcbe              # double 0.85411499999999996
	.quad	0x3fe923e7d135115a              # double 0.78563300000000003
	.quad	0x3fd0549b62c77575              # double 0.255164
	.quad	0x3fde9df1172ef0ae              # double 0.47838999999999998
	.quad	0x3fe78b28522ea0fd              # double 0.73573699999999997
	.quad	0x3fe4dfa658c4bd34              # double 0.65230100000000002
	.quad	0x3fe2ccd0fe8ab4fa              # double 0.58750199999999997
	.quad	0x3fdf5970b49e01de              # double 0.48983399999999999
	.quad	0x3fea2b020c49ba5e              # double 0.81774999999999998
	.quad	0x3fe2d855970b49e0              # double 0.58890799999999999
	.quad	0x3fc239bcba301217              # double 0.14238700000000001
	.quad	0x3fba02a77a2cecc8              # double 0.101603
	.quad	0x3fe5a4bba12b5e53              # double 0.67635900000000004
	.quad	0x3fe5796bfca85cab              # double 0.671072
	.quad	0x3fe8927913e81451              # double 0.76788000000000001
	.quad	0x3fe6c8387df5cf25              # double 0.71194100000000005
	.quad	0x3fe28c5004fb1184              # double 0.57962800000000003
	.quad	0x3fec671044f1a198              # double 0.88758099999999995
	.quad	0x3fefcaf2d7f950b9              # double 0.99352399999999996
	.quad	0x3fe94ef459d9902a              # double 0.79088800000000004
	.quad	0x3fe51bae46cfc82a              # double 0.65962900000000002
	.quad	0x3fe1c9b62c77574f              # double 0.55587299999999995
	.quad	0x3fd4bafd976ff3ae              # double 0.32391300000000001
	.quad	0x3f8d744f5d35653d              # double 0.014382000000000001
	.quad	0x3fe2e887a8d64d7f              # double 0.59088499999999999
	.quad	0x3fe0d8b1dd5d3dc9              # double 0.52645200000000003
	.quad	0x3fdc202d9cf13cef              # double 0.43946400000000002
	.quad	0x3fceb0292817763e              # double 0.23975099999999999
	.quad	0x3fec3671ac14c661              # double 0.88164600000000004
	.quad	0x3f899cbee807bbb6              # double 0.012506
	.quad	0x3fab3fa6defc7a3a              # double 0.053220000000000003
	.quad	0x3febb66d7a56de33              # double 0.86601899999999998
	.quad	0x3feb8cb6c7a7c9de              # double 0.860927
	.quad	0x3fd3e264e48626f6              # double 0.310693
	.quad	0x3fe99bc77143393b              # double 0.80026600000000003
	.quad	0x3fe16e6106ab14ec              # double 0.54472399999999999
	.quad	0x3fb3cd35a858793e              # double 0.077350000000000002
	.quad	0x3fdfd4cfd08d4bad              # double 0.49736399999999997
	.quad	0x3fea248f96e15875              # double 0.81696299999999999
	.quad	0x3feb913836a832ba              # double 0.86147700000000005
	.quad	0x3fe83762d83c6c98              # double 0.75676100000000002
	.quad	0x3feab3700474d9c7              # double 0.83440400000000003
	.quad	0x3fe073eab367a0f9              # double 0.51415
	.quad	0x3fde321a2e7f6f4c              # double 0.47180800000000001
	.quad	0x3fdae8a2ec28b2a7              # double 0.42044900000000002
	.quad	0x3fb0a18bd66277c4              # double 0.064964999999999995
	.quad	0x3f9a7d6733ebbfd7              # double 0.025869
	.quad	0x3fe7996fa82e87d3              # double 0.73748000000000002
	.quad	0x3fb1e6256366d7a5              # double 0.069917999999999994
	.quad	0x3fe3cb35f3d7d391              # double 0.61855599999999999
	.quad	0x3fee5946c332f017              # double 0.94839799999999996
	.quad	0x3fe1b93682730c67              # double 0.55385899999999999
	.quad	0x3fad98bf7f06705d              # double 0.057806000000000003
	.quad	0x3fc3d29dc725c3df              # double 0.154865
	.quad	0x3fe93c297bfa4c62              # double 0.78859400000000002
	.quad	0x3f8ad5bee3d5fdce              # double 0.013103
	.quad	0x3fdfd35eb7457c0b              # double 0.497276
	.quad	0x3fee5e28aa433509              # double 0.948994
	.quad	0x3fd4ebc83a96d4c3              # double 0.32689099999999999
	.quad	0x3fd767f0aa21a71a              # double 0.36571900000000002
	.quad	0x3fef2517e77d523b              # double 0.97327799999999997
	.quad	0x3fef0dfdef8487ba              # double 0.97045800000000004
	.quad	0x3fd802f2f9873ffb              # double 0.37518000000000001
	.quad	0x3fdcfd2a62aa1944              # double 0.45295200000000002
	.quad	0x3fd3b734b51372a4              # double 0.30805700000000003
	.quad	0x3fd4b606b7aa25d9              # double 0.32361000000000001
	.quad	0x3fc578a2a90cd424              # double 0.167744
	.quad	0x3fc255432873bc90              # double 0.14322699999999999
	.quad	0x3fe0682949a56580              # double 0.51271500000000003
	.quad	0x3fe96887a8d64d7f              # double 0.79400999999999999
	.quad	0x3fd91409a2403148              # double 0.39184799999999997
	.quad	0x3fc8b46bacf74470              # double 0.19300600000000001
	.quad	0x3fa706705c896dd2              # double 0.044970999999999997
	.quad	0x3fcc39d5e4a38327              # double 0.22051499999999999
	.quad	0x3fed5dfa871a3b15              # double 0.91772200000000004
	.quad	0x3fed52bf5515054b              # double 0.91635100000000003
	.quad	0x3fc5a250f840181e              # double 0.169016
	.quad	0x3feb2bc5154866a1              # double 0.84909299999999999
	.quad	0x3fcddcf893faf428              # double 0.23330600000000001
	.quad	0x3fc45892684cf074              # double 0.15895300000000001
	.quad	0x3fb13a71151611ba              # double 0.067297999999999997
	.quad	0x3fe0664b2314013f              # double 0.51248700000000003
	.quad	0x3fcda74c09c3ce21              # double 0.23166800000000001
	.quad	0x3fc051b93037d630              # double 0.127494
	.quad	0x3fe97cf80dc33722              # double 0.79650500000000002
	.quad	0x3fcd0aed99cbee80              # double 0.22689599999999999
	.quad	0x3fd1ec3116228134              # double 0.28004099999999998
	.quad	0x3fcd9b2c40d0aaa8              # double 0.231298
	.quad	0x3fee7f3061c79b35              # double 0.95302600000000004
	.quad	0x3fd16d04e618ce2d              # double 0.27227899999999999
	.quad	0x3febb9da16616b55              # double 0.86643700000000001
	.quad	0x3fef09f623076c05              # double 0.96996599999999999
	.quad	0x3fd08b8ae31d712a              # double 0.258517
	.quad	0x3fb5cc857f3061c8              # double 0.085152000000000005
	.quad	0x3fd851654d61b2a2              # double 0.37996799999999997
	.quad	0x3fef98e757928e0d              # double 0.98741500000000004
	.quad	0x3fd8e996312f4cf5              # double 0.38925700000000002
	.quad	0x3fe18f10a99b6f5d              # double 0.54871400000000004
	.quad	0x3fdcb463497b7415              # double 0.44851000000000002
	.quad	0x3fd9db5d894812be              # double 0.40401399999999998
	.quad	0x3fe04163779e9d0f              # double 0.50798200000000004
	.quad	0x3fd901a36e2eb1c4              # double 0.39072499999999999
	.quad	0x3fddb990afe60c39              # double 0.464451
	.quad	0x3fc7abda0dfdef85              # double 0.18493200000000001
	.quad	0x3fac12cf0f9d2bf5              # double 0.054830999999999998
	.quad	0x3fc3fcf3dc054ef4              # double 0.15615699999999999
	.quad	0x3fe025269595feda              # double 0.50453499999999996
	.quad	0x3fbc69f8c21e1d21              # double 0.11099199999999999
	.quad	0x3fd17a95c853c148              # double 0.27310699999999999
	.quad	0x3f99c9d5a187a4a5              # double 0.025184000000000002
	.quad	0x3feb92a305532618              # double 0.86165000000000003
	.quad	0x3fe880abf76a2f49              # double 0.76570700000000003
	.quad	0x3fd74d940789613d              # double 0.36410999999999999
	.quad	0x3fd4a087ca643cc0              # double 0.32229799999999997
	.quad	0x3fbafd21ff2e48e9              # double 0.105425
	.quad	0x3fe5d7214f0520d1              # double 0.68251099999999998
	.quad	0x3fe5647baa9b499d              # double 0.668516
	.quad	0x3fc27685985ad539              # double 0.14424200000000001
	.quad	0x3fe6840e1719f7f9              # double 0.70362000000000002
	.quad	0x3fe2409a24031487              # double 0.57038599999999995
	.quad	0x3fe0b7fbefd00714              # double 0.52245900000000001
	.quad	0x3fc1bbadc0980b24              # double 0.13854
	.quad	0x3fb106cca2db61bb              # double 0.06651
	.quad	0x3feab6f19934efcc              # double 0.83483200000000001
	.quad	0x3fd7584f4c6e6d9c              # double 0.36476500000000001
	.quad	0x3f79ff4fd6d7e88a              # double 0.0063470000000000002
	.quad	0x3fd9f50e34762952              # double 0.405582
	.quad	0x3fb33c2dadb8348f              # double 0.075136999999999995
	.quad	0x3fb03f811f4f50a0              # double 0.063468999999999998
	.quad	0x3fe97398e9707182              # double 0.79536099999999998
	.quad	0x3fedef262888b546              # double 0.93544300000000002
	.quad	0x3fdfc2224edf6124              # double 0.496224
	.quad	0x3fe13882278d0cc3              # double 0.53814799999999996
	.quad	0x3fd57589efd86a90              # double 0.33529900000000001
	.quad	0x3fea927d45a5fc7e              # double 0.83038199999999995
	.quad	0x3feb812dfd694ccb              # double 0.85951900000000003
	.quad	0x3fe858127b2cc708              # double 0.76075099999999996
	.quad	0x3fbe4e5929670197              # double 0.118383
	.quad	0x3fd7b584b1ab0857              # double 0.37045400000000001
	.quad	0x3fe53630a91537a0              # double 0.66286500000000004
	.quad	0x3fc19a1fd1569f49              # double 0.137516
	.quad	0x3fe9fc9795b35b0c              # double 0.81208400000000002
	.quad	0x3fc4de5d18090b41              # double 0.16303599999999999
	.quad	0x3f7cbff47735c183              # double 0.0070190000000000001
	.quad	0x3fd4ae89eba6aca8              # double 0.32315300000000002
	.quad	0x3fc65a2d72ffd1dd              # double 0.174627
	.quad	0x3feebd76ee73e682              # double 0.96062800000000004
	.quad	0x3fdcf0f16f4384ba              # double 0.452206
	.quad	0x3fe046c764adff82              # double 0.50863999999999998
	.quad	0x3fd41f57b41bfbdf              # double 0.314413
	.quad	0x3fe1b83cf2cf95d5              # double 0.55374000000000001
	.quad	0x3fe833d8e0008638              # double 0.75632900000000003
	.quad	0x3fc41eeed8904f6e              # double 0.157194
	.quad	0x3fc5965b20b8066c              # double 0.168651
	.quad	0x3fe0ea7ce0fc2eba              # double 0.52862399999999998
	.quad	0x3fd97a743a647fdc              # double 0.39809899999999998
	.quad	0x3fe8fc6fbd273d5c              # double 0.78081500000000003
	.quad	0x3feac3a860dcb9aa              # double 0.83638400000000002
	.quad	0x3fbc0f12c27a6373              # double 0.10960499999999999
	.quad	0x3fe25bf8b9baa151              # double 0.57372699999999999
	.quad	0x3fe83b0813cab820              # double 0.75720600000000004
	.quad	0x3fde28c36da87a07              # double 0.47123799999999999
	.quad	0x3fe181bc98a222d5              # double 0.54708699999999999
	.quad	0x3fe62e0c17657753              # double 0.69312099999999999
	.quad	0x3fd4adff822bbecb              # double 0.32312000000000002
	.quad	0x3fe8e91ea78af3e4              # double 0.77845699999999995
	.quad	0x3fd11cffeb074a77              # double 0.26739499999999999
	.quad	0x3fd6dc9c4da9003f              # double 0.357215
	.quad	0x3feb8887229e9079              # double 0.86041599999999996
	.quad	0x3fd101c4fc1df330              # double 0.265733
	.quad	0x3fe18982cb20fb22              # double 0.54803599999999997
	.quad	0x3fec04ad794a6eb9              # double 0.87557099999999999
	.quad	0x3fb27c9de0503750              # double 0.072214
	.quad	0x3fd3cf893faf4278              # double 0.30954199999999998
	.quad	0x3fe0ff7be121ee67              # double 0.53118699999999996
	.quad	0x3feb4cec41dd1a22              # double 0.85314000000000001
	.quad	0x3fb87a398201cd60              # double 0.095615000000000005
	.quad	0x3fd9d6b228dc981c              # double 0.403729
	.quad	0x3fd9253543aeab7a              # double 0.39289600000000002
	.quad	0x3fd5eb78897e9963              # double 0.342497
	.quad	0x3fc79c9d5a187a4a              # double 0.18446699999999999
	.quad	0x3fd6144cbe1eb420              # double 0.34498899999999999
	.quad	0x3fc68f6cefed6345              # double 0.17625199999999999
	.quad	0x3fed4aff6d330942              # double 0.91540500000000002
	.quad	0x3fea47baa9b499d0              # double 0.82125599999999999
	.quad	0x3fe895ee136e71ce              # double 0.76830200000000004
	.quad	0x3fe83a0620ab7132              # double 0.75708299999999995
	.quad	0x3fe87fbacb428912              # double 0.76559200000000005
	.quad	0x3fec3152f3c2dadc              # double 0.88102100000000005
	.quad	0x3fee7891e215336e              # double 0.95221800000000001
	.quad	0x3fea78f47304039b              # double 0.82726500000000003
	.quad	0x3fd454f7a919695e              # double 0.31768600000000002
	.quad	0x3fe8b9fba450acc1              # double 0.77270300000000003
	.quad	0x3fef4898f605ab3b              # double 0.97761200000000003
	.quad	0x3fcf0614163779ea              # double 0.24237300000000001
	.quad	0x3feffa7221858bc6              # double 0.99932200000000004
	.quad	0x3fd41f81a5870da6              # double 0.31442300000000001
	.quad	0x3fe3bcf4e874c900              # double 0.61681600000000003
	.quad	0x3fd8da2b5a20ddc6              # double 0.38831599999999999
	.quad	0x3fc2e6a76965f527              # double 0.14766399999999999
	.quad	0x3fe911ba3ca7503c              # double 0.78341400000000005
	.quad	0x3fc85b749adc8fb8              # double 0.19029099999999999
	.quad	0x3fda594f26aec072              # double 0.41170099999999998
	.quad	0x3fef4ac083126e98              # double 0.97787500000000004
	.quad	0x3fe759cae21101b0              # double 0.729711
	.quad	0x3fca16d6dc1a47aa              # double 0.203822
	.quad	0x3fd7feb4a66559f7              # double 0.374921
	.quad	0x3f9a0b1bbcf4e875              # double 0.025433000000000001
	.quad	0x3fd27f993d5347a6              # double 0.28903800000000002
	.quad	0x3fef7c9795b35b0c              # double 0.98395900000000002
	.quad	0x3fe0eea854477ff1              # double 0.52913299999999996
	.quad	0x3fba940357a35504              # double 0.103821
	.quad	0x3fd7fb7e90ff9724              # double 0.37472499999999997
	.quad	0x3fed45c13fd0d068              # double 0.91476500000000005
	.quad	0x3fe32b3edd8b60f2              # double 0.59902900000000003
	.quad	0x3fb44f8f8a4c1ebd              # double 0.079339000000000007
	.quad	0x3fbe60807357e671              # double 0.11866
	.quad	0x3fe7c5e6ff7dfa01              # double 0.74290800000000001
	.quad	0x3fd27b7414a4d2b3              # double 0.28878500000000001
	.quad	0x3fe436a619da9c99              # double 0.63167099999999998
	.quad	0x3fe93d89ce4a7b4e              # double 0.78876199999999996
	.quad	0x3fe8788b9778572a              # double 0.76471500000000003
	.quad	0x3fcee6299524bfd3              # double 0.241399
	.quad	0x3fec98bd66277c46              # double 0.89364500000000002
	.quad	0x3fdd2b1b36bd2b6f              # double 0.45575599999999999
	.quad	0x3fea653005814941              # double 0.82485200000000003
	.quad	0x3fec0be9424e5929              # double 0.87645399999999996
	.quad	0x3fed7496aad1d042              # double 0.92048200000000002
	.quad	0x3fced594f26aec07              # double 0.240893
	.quad	0x3fb56cd6c2efd439              # double 0.083692000000000003
	.quad	0x3fd7cca2db61bb06              # double 0.371865
	.quad	0x3fe544bf4cb1897a              # double 0.66464199999999996
	.quad	0x3f44b599aa60913a              # double 6.3199999999999997E-4
	.quad	0x3fd3d51f81a5870e              # double 0.30988300000000002
	.quad	0x3fd35f0b28522ea1              # double 0.302676
	.quad	0x3fdd6cca2db61bb0              # double 0.45976499999999998
	.quad	0x3fe4f0eb24a6a876              # double 0.65440900000000002
	.quad	0x3fdc39085f4a1273              # double 0.44098100000000001
	.quad	0x3fedc0fa9c12f09e              # double 0.92980700000000005
	.quad	0x3fe7cd39da16616b              # double 0.74380199999999996
	.quad	0x3fbc97635e74299e              # double 0.11168500000000001
	.quad	0x3fe264ead0c3d252              # double 0.57481899999999997
	.quad	0x3fe9d5193708aac9              # double 0.80726299999999995
	.quad	0x3fe39e81cb46bacf              # double 0.61309899999999995
	.quad	0x3fd45d13d74d594f              # double 0.31818099999999999
	.quad	0x3fe99da9c99285a9              # double 0.80049599999999999
	.quad	0x3fec491afc04c8bd              # double 0.88392400000000004
	.quad	0x3fda4efcbd556085              # double 0.41107100000000002
	.quad	0x3fa25cc426351def              # double 0.035864
	.quad	0x3fd97c4199fe4367              # double 0.39820899999999998
	.quad	0x3fe0fb4c3c18b503              # double 0.53067600000000004
	.quad	0x3fded55e6bc621b8              # double 0.48177300000000001
	.quad	0x3fc9ca42aed13943              # double 0.201485
	.quad	0x3fe9315b573eab36              # double 0.78727499999999995
	.quad	0x3fe8e71cda2b5a21              # double 0.77821200000000001
	.quad	0x3fe6109d0635a427              # double 0.68952800000000003
	.quad	0x3fe25abe27179bfe              # double 0.573577
	.quad	0x3fe73e0157eed45f              # double 0.72631900000000005
	.quad	0x3fda2fe82517e77d              # double 0.40917399999999998
	.quad	0x3fcf7c88e79aae6d              # double 0.24598800000000001
	.quad	0x3fe98c8abd5dc400              # double 0.79840599999999995
	.quad	0x3feda76534373f31              # double 0.92668399999999995
	.quad	0x3fd08e10cf5b1c86              # double 0.25867099999999998
	.quad	0x3fc943419e300150              # double 0.19736500000000001
	.quad	0x3feb40181e03f706              # double 0.85157400000000005
	.quad	0x3fe705ab3aabcd79              # double 0.71944200000000003
	.quad	0x3fb2bb98c7e28241              # double 0.073175000000000004
	.quad	0x3fece3b8a19c9d5a              # double 0.90279799999999999
	.quad	0x3fe9cc144028e4fc              # double 0.80616200000000004
	.quad	0x3fe6bb46fdeb52ca              # double 0.71036100000000002
	.quad	0x3feda60f5e41d4b7              # double 0.92652100000000004
	.quad	0x3fe996d6dc1a47aa              # double 0.79966300000000001
	.quad	0x3fc09d1f601797cc              # double 0.12979499999999999
	.quad	0x3fe29697f1f9ad00              # double 0.58088300000000004
	.quad	0x3fe0ba96d4c33b54              # double 0.52277700000000005
	.quad	0x3fe608aefb2aae29              # double 0.68855999999999995
	.quad	0x3fe33ed959a30985              # double 0.60142200000000001
	.quad	0x3fe473cb3e5753a4              # double 0.63913500000000001
	.quad	0x3fc6ab1d4f9c1f86              # double 0.177097
	.quad	0x3fe6437e6f71a7e3              # double 0.695739
	.quad	0x3fd8a22706d50657              # double 0.38489699999999999
	.quad	0x3fed9bb6aa4b9885              # double 0.92525800000000002
	.quad	0x3fc8dfdef8487b9a              # double 0.194332
	.quad	0x3fc0fb7e90ff9724              # double 0.13267499999999999
	.quad	0x3fbf14db59578a2b              # double 0.12141200000000001
	.quad	0x3fc7c2e33eff1950              # double 0.18563499999999999
	.quad	0x3fec4e7685985ad5              # double 0.88457799999999998
	.quad	0x3fe343914f483cb0              # double 0.60199800000000003
	.quad	0x3fde4755ffe6d58d              # double 0.47310400000000002
	.quad	0x3febfb139c94f69d              # double 0.87439900000000004
	.quad	0x3fd7b30b5aa71583              # double 0.37030299999999999
	.quad	0x3fbd10f51ac9afe2              # double 0.11354
	.quad	0x3fb7f10ecb74ddf8              # double 0.093521999999999994
	.quad	0x3fe2a5c5f7c6759b              # double 0.58273600000000003
	.quad	0x3fb0ad8a116659d1              # double 0.065147999999999998
	.quad	0x3fe10c7192ea52f0              # double 0.53276900000000005
	.quad	0x3fbe9e3c968943e1              # double 0.119602
	.quad	0x3fef8d2806af46aa              # double 0.985981
	.quad	0x3fed4e3de6149c6f              # double 0.91580099999999998
	.quad	0x3fe8192ea52ef912              # double 0.75307400000000002
	.quad	0x3fe90370cdc8754f              # double 0.78166999999999998
	.quad	0x3fe22ddbdb5d8948              # double 0.56809799999999999
	.quad	0x3fd4fd08d4bad7d8              # double 0.32794400000000001
	.quad	0x3fe0c5a1cac08312              # double 0.52412499999999995
	.quad	0x3fdff5e84f09528f              # double 0.49938399999999999
	.quad	0x3fe30ed80a17b0f7              # double 0.59556200000000004
	.quad	0x3fdaab0c88a47ed0              # double 0.41669
	.quad	0x3fcd8cc9a77e5eab              # double 0.23085900000000001
	.quad	0x3fda8954a7f8012e              # double 0.414632
	.quad	0x3fedd0a88effe2a4              # double 0.93172100000000002
	.quad	0x3fe4eb3fe9fadafd              # double 0.65371699999999999
	.quad	0x3fef1e7d9988d2a2              # double 0.972472
	.quad	0x3feeb239a38fbca1              # double 0.95925599999999999
	.quad	0x3fe285058dde7a74              # double 0.57873799999999997
	.quad	0x3fd7635610adcd2d              # double 0.36543799999999999
	.quad	0x3fe30d2e514c22ee              # double 0.59535899999999997
	.quad	0x3fd70a393ee5eedd              # double 0.35999900000000001
	.quad	0x3fee3df090f733a9              # double 0.94506100000000004
	.quad	0x3fd2723ee1bd1eda              # double 0.28822300000000001
	.quad	0x3fe8ac1094a2b9d4              # double 0.77100400000000002
	.quad	0x3fe44b1465e89225              # double 0.63416499999999998
	.quad	0x3fed82a5614df8b1              # double 0.92219799999999996
	.quad	0x3fef2235b4edb2f6              # double 0.97292599999999996
	.quad	0x3fd4127f5e84f095              # double 0.31362899999999999
	.quad	0x3fe77ec3547e0696              # double 0.73422399999999999
	.quad	0x3fb9bf487fcb923a              # double 0.100575
	.quad	0x3fc30763a1900820              # double 0.14866299999999999
	.quad	0x3fc4fa8b4bf8fcd6              # double 0.16389599999999999
	.quad	0x3fdf4877681669cf              # double 0.48879800000000001
	.quad	0x3fd4013660e51d26              # double 0.31257400000000002
	.quad	0x3fdb31db445ed4a2              # double 0.42491800000000002
	.quad	0x3fee4b945308bb90              # double 0.94672599999999996
	.quad	0x3fdec1eff9f87f02              # double 0.48058699999999999
	.quad	0x3fdb534bd76ee73e              # double 0.42695899999999998
	.quad	0x3fee507852f7f499              # double 0.94732300000000003
	.quad	0x3fdd3f1843c3a42f              # double 0.45697599999999999
	.quad	0x3fe3759ccfaeff5c              # double 0.60810699999999995
	.quad	0x3fec9a2a4db163bb              # double 0.89381900000000003
	.quad	0x3fdb729f59ccfaf0              # double 0.428871
	.quad	0x3feec7a7c9de0503              # double 0.96187199999999994
	.quad	0x3fe496bb98c7e282              # double 0.64339999999999997
	.quad	0x3fe363ae2541d8e8              # double 0.60591799999999996
	.quad	0x3fe067b1c0010c6f              # double 0.51265799999999995
	.quad	0x3fb8d2b2bfdb4cc2              # double 0.096964999999999995
	.quad	0x3f9667f90d9d7775              # double 0.021881000000000001
	.quad	0x3fdb036c9c0a8d22              # double 0.42208400000000001
	.quad	0x3feb814727dcbddc              # double 0.85953100000000004
	.quad	0x3fe54ebbba55d1c4              # double 0.66586100000000004
	.quad	0x3fdae2b063e07a29              # double 0.42008600000000001
	.quad	0x3fe707570c564f98              # double 0.71964600000000001
	.quad	0x3fe9446f9b994e1a              # double 0.78960399999999997
	.quad	0x3fd809528f190d17              # double 0.37556899999999999
	.quad	0x3f8cb790fb65668c              # double 0.014022
	.quad	0x3fdd5f676ea4228a              # double 0.45894800000000002
	.quad	0x3fc652b4d8ba40d9              # double 0.174399
	.quad	0x3feb996d8f4f93bc              # double 0.86247899999999999
	.quad	0x3fa396d0917d6b66              # double 0.038260000000000002
	.quad	0x3fccafee6fb4c3c2              # double 0.22411900000000001
	.quad	0x3fe03b9496249a13              # double 0.50727299999999997
	.quad	0x3fe59103c8e25c81              # double 0.673952
	.quad	0x3fecdf1172ef0ae5              # double 0.90222999999999998
	.quad	0x3fd727631b584b1b              # double 0.36177900000000002
	.quad	0x3fef9e2bcf91a32b              # double 0.98805799999999999
	.quad	0x3fea6e75ff609dd0              # double 0.82598400000000005
	.quad	0x3fe92fbe33acd5b7              # double 0.78707800000000006
	.quad	0x3fa456b441bb8c33              # double 0.039724000000000002
	.quad	0x3fea8e66cb10342b              # double 0.82988300000000004
	.quad	0x3fe3229845dc8323              # double 0.59797299999999998
	.quad	0x3fea7e889c1b5419              # double 0.82794599999999996
	.quad	0x3fe911f4f50a02b8              # double 0.78344199999999997
	.quad	0x3fdf5109070fbeba              # double 0.48932100000000001
	.quad	0x3fef2b81f969e3c9              # double 0.97406099999999995
	.quad	0x3f9a098915bdd767              # double 0.025427000000000002
	.quad	0x3fd1f42bb6672fba              # double 0.280528
	.quad	0x3fc7810624dd2f1b              # double 0.18362500000000001
	.quad	0x3fedfeb4a66559f7              # double 0.93734200000000001
	.quad	0x3fe457be9856a37b              # double 0.63571100000000003
	.quad	0x3fd624a276b7ed42              # double 0.34598600000000002
	.quad	0x3fc3ae7924af0bf2              # double 0.15376200000000001
	.quad	0x3fe2c710cb295e9e              # double 0.58679999999999999
	.quad	0x3feb3e63e8dda48b              # double 0.85136599999999996
	.quad	0x3fdf3d145d851655              # double 0.48810300000000001
	.quad	0x3fe63a732df505d1              # double 0.694635
	.quad	0x3fc2b6ae7d566cf4              # double 0.1462
	.quad	0x3fe76be596c82e02              # double 0.73192100000000004
	.quad	0x3fe727525460aa65              # double 0.72355000000000003
	.quad	0x3fdf73929ed3953e              # double 0.491429
	.quad	0x3fe54a5bd944aa54              # double 0.665327
	.quad	0x3fc15cb790fb6567              # double 0.13564200000000001
	.size	.L__constant_100x100xf64, 80000

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	108                             # 0x6c
	.quad	115                             # 0x73
	.quad	166                             # 0xa6
	.quad	171                             # 0xab
	.quad	222                             # 0xde
	.quad	227                             # 0xe3
	.quad	280                             # 0x118
	.quad	285                             # 0x11d
	.quad	341                             # 0x155
	.quad	347                             # 0x15b
	.quad	403                             # 0x193
	.quad	410                             # 0x19a
	.quad	463                             # 0x1cf
	.quad	469                             # 0x1d5
	.quad	524                             # 0x20c
	.quad	532                             # 0x214
	.quad	585                             # 0x249
	.quad	595                             # 0x253
	.quad	650                             # 0x28a
	.quad	652                             # 0x28c
	.quad	710                             # 0x2c6
	.quad	715                             # 0x2cb
	.quad	769                             # 0x301
	.quad	776                             # 0x308
	.quad	828                             # 0x33c
	.quad	833                             # 0x341
	.quad	891                             # 0x37b
	.quad	901                             # 0x385
	.quad	957                             # 0x3bd
	.quad	965                             # 0x3c5
	.quad	1019                            # 0x3fb
	.quad	1024                            # 0x400
	.quad	1077                            # 0x435
	.quad	1085                            # 0x43d
	.quad	1136                            # 0x470
	.quad	1141                            # 0x475
	.quad	1193                            # 0x4a9
	.quad	1201                            # 0x4b1
	.quad	1254                            # 0x4e6
	.quad	1259                            # 0x4eb
	.quad	1310                            # 0x51e
	.quad	1313                            # 0x521
	.quad	1368                            # 0x558
	.quad	1375                            # 0x55f
	.quad	1426                            # 0x592
	.quad	1431                            # 0x597
	.quad	1485                            # 0x5cd
	.quad	1490                            # 0x5d2
	.quad	1543                            # 0x607
	.quad	1550                            # 0x60e
	.quad	1603                            # 0x643
	.quad	1610                            # 0x64a
	.quad	1661                            # 0x67d
	.quad	1668                            # 0x684
	.quad	1721                            # 0x6b9
	.quad	1733                            # 0x6c5
	.quad	1787                            # 0x6fb
	.quad	1795                            # 0x703
	.quad	1848                            # 0x738
	.quad	1858                            # 0x742
	.quad	1912                            # 0x778
	.quad	1916                            # 0x77c
	.quad	1969                            # 0x7b1
	.quad	1978                            # 0x7ba
	.quad	2033                            # 0x7f1
	.quad	2036                            # 0x7f4
	.quad	2092                            # 0x82c
	.quad	2097                            # 0x831
	.quad	2153                            # 0x869
	.quad	2158                            # 0x86e
	.quad	2213                            # 0x8a5
	.quad	2218                            # 0x8aa
	.quad	2269                            # 0x8dd
	.quad	2279                            # 0x8e7
	.quad	2330                            # 0x91a
	.quad	2338                            # 0x922
	.quad	2396                            # 0x95c
	.quad	2402                            # 0x962
	.quad	2454                            # 0x996
	.quad	2461                            # 0x99d
	.quad	2518                            # 0x9d6
	.quad	2526                            # 0x9de
	.quad	2579                            # 0xa13
	.quad	2585                            # 0xa19
	.quad	2635                            # 0xa4b
	.quad	2643                            # 0xa53
	.quad	2701                            # 0xa8d
	.quad	2705                            # 0xa91
	.quad	2758                            # 0xac6
	.quad	2764                            # 0xacc
	.quad	2818                            # 0xb02
	.quad	2828                            # 0xb0c
	.quad	2882                            # 0xb42
	.quad	2886                            # 0xb46
	.quad	2940                            # 0xb7c
	.quad	2943                            # 0xb7f
	.quad	2995                            # 0xbb3
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	19                              # 0x13
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	93                              # 0x5d
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	73                              # 0x49
	.quad	96                              # 0x60
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	88                              # 0x58
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	53                              # 0x35
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	72                              # 0x48
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	66                              # 0x42
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	49                              # 0x31
	.quad	67                              # 0x43
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	48                              # 0x30
	.quad	67                              # 0x43
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	94                              # 0x5e
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	77                              # 0x4d
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	71                              # 0x47
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	85                              # 0x55
	.quad	89                              # 0x59
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	77                              # 0x4d
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	86                              # 0x56
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	75                              # 0x4b
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	89                              # 0x59
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	20                              # 0x14
	.quad	39                              # 0x27
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	69                              # 0x45
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	16                              # 0x10
	.quad	36                              # 0x24
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	35                              # 0x23
	.quad	64                              # 0x40
	.quad	93                              # 0x5d
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	50                              # 0x32
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	59                              # 0x3b
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
